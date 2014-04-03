	.file	"cse.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cse.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	max_reg
	.comm	max_reg,4,4
	.local	max_insn_uid
	.comm	max_insn_uid,4,4
	.local	max_qty
	.comm	max_qty,4,4
	.local	next_qty
	.comm	next_qty,4,4
	.local	qty_table
	.comm	qty_table,8,8
	.local	prev_insn
	.comm	prev_insn,8,8
	.local	this_insn
	.comm	this_insn,8,8
	.local	reg_eqv_table
	.comm	reg_eqv_table,8,8
	.local	cse_reg_info_free_list
	.comm	cse_reg_info_free_list,8,8
	.local	cse_reg_info_used_list
	.comm	cse_reg_info_used_list,8,8
	.local	cse_reg_info_used_list_end
	.comm	cse_reg_info_used_list_end,8,8
	.local	reg_hash
	.comm	reg_hash,1024,32
	.local	cached_regno
	.comm	cached_regno,4,4
	.local	cached_cse_reg_info
	.comm	cached_cse_reg_info,8,8
	.local	hard_regs_in_table
	.comm	hard_regs_in_table,8,8
	.local	cse_basic_block_start
	.comm	cse_basic_block_start,4,4
	.local	cse_basic_block_end
	.comm	cse_basic_block_end,4,4
	.local	uid_cuid
	.comm	uid_cuid,8,8
	.local	max_uid
	.comm	max_uid,4,4
	.local	cse_altered
	.comm	cse_altered,4,4
	.local	cse_jumps_altered
	.comm	cse_jumps_altered,4,4
	.local	recorded_label_ref
	.comm	recorded_label_ref,4,4
	.local	do_not_record
	.comm	do_not_record,4,4
	.local	hash_arg_in_memory
	.comm	hash_arg_in_memory,4,4
	.local	table
	.comm	table,256,32
	.local	free_element_chain
	.comm	free_element_chain,8,8
	.local	n_elements_made
	.comm	n_elements_made,4,4
	.local	max_elements_made
	.comm	max_elements_made,4,4
	.local	last_jump_equiv_class
	.comm	last_jump_equiv_class,8,8
	.local	constant_pool_entries_cost
	.comm	constant_pool_entries_cost,4,4
	.section	.rodata
.LC0:
	.string	"Equivalence chain for "
.LC1:
	.string	": \n"
	.text
	.globl	dump_class
	.type	dump_class, @function
dump_class:
.LFB2:
	.file 1 "cse.c"
	.loc 1 700 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# classp, classp
	.loc 1 703 0
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movq	%rax, %rcx	# stderr.0,
	movl	$22, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
	.loc 1 704 0
	movq	-24(%rbp), %rax	# classp, tmp66
	movq	(%rax), %rdx	# classp_3(D)->exp, D.22198
	movq	stderr(%rip), %rax	# stderr, stderr.1
	movq	%rdx, %rsi	# D.22198,
	movq	%rax, %rdi	# stderr.1,
	call	print_rtl	#
	.loc 1 705 0
	movq	stderr(%rip), %rax	# stderr, stderr.2
	movq	%rax, %rcx	# stderr.2,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
	.loc 1 707 0
	movq	-24(%rbp), %rax	# classp, tmp67
	movq	48(%rax), %rax	# classp_3(D)->first_same_value, tmp68
	movq	%rax, -8(%rbp)	# tmp68, elt
	jmp	.L2	#
.L3:
	.loc 1 709 0 discriminator 2
	movq	-8(%rbp), %rax	# elt, tmp69
	movq	(%rax), %rdx	# elt_1->exp, D.22198
	movq	stderr(%rip), %rax	# stderr, stderr.3
	movq	%rdx, %rsi	# D.22198,
	movq	%rax, %rdi	# stderr.3,
	call	print_rtl	#
	.loc 1 710 0 discriminator 2
	movq	stderr(%rip), %rax	# stderr, stderr.4
	movq	%rax, %rsi	# stderr.4,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 707 0 discriminator 2
	movq	-8(%rbp), %rax	# elt, tmp70
	movq	32(%rax), %rax	# elt_1->next_same_value, tmp71
	movq	%rax, -8(%rbp)	# tmp71, elt
.L2:
	.loc 1 707 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, elt
	jne	.L3	#,
	.loc 1 712 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	dump_class, .-dump_class
	.type	approx_reg_cost_1, @function
approx_reg_cost_1:
.LFB3:
	.loc 1 720 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# xp, xp
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 721 0
	movq	-24(%rbp), %rax	# xp, tmp64
	movq	(%rax), %rax	# *xp_1(D), tmp65
	movq	%rax, -16(%rbp)	# tmp65, x
	.loc 1 722 0
	movq	-32(%rbp), %rax	# data, tmp66
	movq	%rax, -8(%rbp)	# tmp66, set
	.loc 1 724 0
	cmpq	$0, -16(%rbp)	#, x
	je	.L5	#,
	.loc 1 724 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# x, tmp67
	movzwl	(%rax), %eax	# x_2->code, D.22201
	cmpw	$61, %ax	#, D.22201
	jne	.L5	#,
	.loc 1 725 0 is_stmt 1
	movq	-16(%rbp), %rax	# x, tmp68
	movl	8(%rax), %eax	# x_2->fld[0].rtuint, D.22202
	movl	%eax, %edx	# D.22202, D.22203
	movq	-8(%rbp), %rax	# set, tmp69
	movl	%edx, %esi	# D.22203,
	movq	%rax, %rdi	# tmp69,
	call	bitmap_set_bit	#
.L5:
	.loc 1 726 0
	movl	$0, %eax	#, D.22203
	.loc 1 727 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	approx_reg_cost_1, .-approx_reg_cost_1
	.type	approx_reg_cost, @function
approx_reg_cost:
.LFB4:
	.loc 1 737 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# x, x
	.loc 1 740 0
	movl	$0, -80(%rbp)	#, cost
	.loc 1 741 0
	movl	$0, -76(%rbp)	#, hardregs
	.loc 1 743 0
	leaq	-32(%rbp), %rax	#, tmp76
	movq	%rax, %rdi	# tmp76,
	call	bitmap_initialize	#
	.loc 1 744 0
	leaq	-32(%rbp), %rdx	#, tmp77
	leaq	-88(%rbp), %rax	#, tmp78
	movl	$approx_reg_cost_1, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	for_each_rtx	#
.LBB2:
	.loc 1 746 0
	movq	-32(%rbp), %rax	# set.first, tmp79
	movq	%rax, -56(%rbp)	# tmp79, ptr_
	movl	$0, -64(%rbp)	#, indx_
	movl	$0, -72(%rbp)	#, bit_num_
	movl	$0, -68(%rbp)	#, word_num_
	jmp	.L8	#
.L10:
	.loc 1 746 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# ptr_, tmp80
	movq	(%rax), %rax	# ptr__14->next, tmp81
	movq	%rax, -56(%rbp)	# tmp81, ptr_
.L8:
	cmpq	$0, -56(%rbp)	#, ptr_
	je	.L9	#,
	.loc 1 746 0 discriminator 2
	movq	-56(%rbp), %rax	# ptr_, tmp82
	movl	16(%rax), %eax	# ptr__14->indx, D.22204
	cmpl	-64(%rbp), %eax	# indx_, D.22204
	jb	.L10	#,
.L9:
	.loc 1 746 0 discriminator 3
	cmpq	$0, -56(%rbp)	#, ptr_
	je	.L11	#,
	.loc 1 746 0 discriminator 1
	movq	-56(%rbp), %rax	# ptr_, tmp83
	movl	16(%rax), %eax	# ptr__14->indx, D.22204
	cmpl	-64(%rbp), %eax	# indx_, D.22204
	je	.L11	#,
	movl	$0, -72(%rbp)	#, bit_num_
	movl	$0, -68(%rbp)	#, word_num_
	jmp	.L12	#
.L11:
	.loc 1 746 0 discriminator 2
	jmp	.L12	#
.L26:
	.loc 1 746 0
	jmp	.L13	#
.L25:
.LBB3:
	.loc 1 746 0 discriminator 2
	movq	-56(%rbp), %rax	# ptr_, tmp84
	movl	-68(%rbp), %edx	# word_num_, tmp85
	addq	$2, %rdx	#, tmp86
	movq	8(%rax,%rdx,8), %rax	# ptr__15->bits, tmp87
	movq	%rax, -48(%rbp)	# tmp87, word_
	cmpq	$0, -48(%rbp)	#, word_
	je	.L14	#,
	.loc 1 746 0 discriminator 1
	jmp	.L15	#
.L24:
.LBB4:
	.loc 1 746 0 discriminator 2
	movl	-72(%rbp), %eax	# bit_num_, bit_num_.5
	movl	$1, %edx	#, tmp88
	movl	%eax, %ecx	# bit_num_.5, tmp107
	salq	%cl, %rdx	# tmp107, tmp89
	movq	%rdx, %rax	# tmp89, tmp89
	movq	%rax, -40(%rbp)	# tmp89, mask_
	movq	-40(%rbp), %rax	# mask_, tmp90
	movq	-48(%rbp), %rdx	# word_, tmp91
	andq	%rdx, %rax	# tmp91, D.22205
	testq	%rax, %rax	# D.22205
	je	.L16	#,
	.loc 1 746 0 discriminator 1
	movq	-40(%rbp), %rax	# mask_, tmp92
	notq	%rax	# D.22205
	andq	%rax, -48(%rbp)	# D.22205, word_
	movq	-56(%rbp), %rax	# ptr_, tmp93
	movl	16(%rax), %eax	# ptr__15->indx, D.22204
	leal	(%rax,%rax), %edx	#, D.22204
	movl	-68(%rbp), %eax	# word_num_, tmp94
	addl	%edx, %eax	# D.22204, D.22204
	sall	$6, %eax	#, D.22204
	movl	%eax, %edx	# D.22204, D.22204
	movl	-72(%rbp), %eax	# bit_num_, tmp95
	addl	%edx, %eax	# D.22204, D.22204
	movl	%eax, -60(%rbp)	# D.22204, i
	cmpl	$20, -60(%rbp)	#, i
	je	.L17	#,
	cmpl	$6, -60(%rbp)	#, i
	je	.L17	#,
	cmpl	$7, -60(%rbp)	#, i
	je	.L17	#,
	cmpl	$16, -60(%rbp)	#, i
	je	.L17	#,
	cmpl	$52, -60(%rbp)	#, i
	jle	.L18	#,
	.loc 1 746 0 discriminator 2
	cmpl	$57, -60(%rbp)	#, i
	jle	.L17	#,
.L18:
	.loc 1 746 0 discriminator 1
	cmpl	$52, -60(%rbp)	#, i
	jg	.L19	#,
	.loc 1 746 0 discriminator 2
	cmpl	$20, -60(%rbp)	#, i
	je	.L20	#,
	.loc 1 746 0 discriminator 1
	cmpl	$6, -60(%rbp)	#, i
	je	.L20	#,
	movl	-60(%rbp), %eax	# i, tmp97
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.22206
	testb	%al, %al	# D.22206
	jne	.L20	#,
	movl	-60(%rbp), %eax	# i, tmp99
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.22206
	testb	%al, %al	# D.22206
	je	.L19	#,
.L20:
	.loc 1 746 0 discriminator 2
	movl	-60(%rbp), %eax	# i, tmp101
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.22207
	testl	%eax, %eax	# D.22207
	jne	.L17	#,
.L19:
	.loc 1 746 0 discriminator 1
	cmpl	$52, -60(%rbp)	#, i
	jg	.L21	#,
	addl	$1, -76(%rbp)	#, hardregs
.L21:
	.loc 1 746 0 discriminator 2
	cmpl	$52, -60(%rbp)	#, i
	jg	.L22	#,
	.loc 1 746 0 discriminator 1
	movl	$2, %eax	#, iftmp.6
	jmp	.L23	#
.L22:
	.loc 1 746 0 discriminator 2
	movl	$1, %eax	#, iftmp.6
.L23:
	.loc 1 746 0 discriminator 3
	addl	%eax, -80(%rbp)	# iftmp.6, cost
.L17:
	.loc 1 746 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, word_
	jne	.L16	#,
	.loc 1 746 0 discriminator 1
	jmp	.L14	#
.L16:
.LBE4:
	.loc 1 746 0 discriminator 2
	addl	$1, -72(%rbp)	#, bit_num_
.L15:
	.loc 1 746 0 discriminator 1
	cmpl	$63, -72(%rbp)	#, bit_num_
	jbe	.L24	#,
.L14:
	.loc 1 746 0 discriminator 2
	movl	$0, -72(%rbp)	#, bit_num_
.LBE3:
	addl	$1, -68(%rbp)	#, word_num_
.L13:
	.loc 1 746 0 discriminator 1
	cmpl	$1, -68(%rbp)	#, word_num_
	jbe	.L25	#,
	.loc 1 746 0 discriminator 3
	movl	$0, -68(%rbp)	#, word_num_
	movq	-56(%rbp), %rax	# ptr_, tmp102
	movq	(%rax), %rax	# ptr__15->next, tmp103
	movq	%rax, -56(%rbp)	# tmp103, ptr_
.L12:
	.loc 1 746 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, ptr_
	jne	.L26	#,
.LBE2:
	.loc 1 758 0 is_stmt 1
	leaq	-32(%rbp), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	bitmap_clear	#
	.loc 1 759 0
	cmpl	$0, -76(%rbp)	#, hardregs
	jne	.L27	#,
	.loc 1 759 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# cost, iftmp.7
	jmp	.L28	#
.L27:
	.loc 1 759 0 discriminator 2
	movl	$2147483647, %eax	#, iftmp.7
.L28:
	.loc 1 760 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	approx_reg_cost, .-approx_reg_cost
	.type	preferrable, @function
preferrable:
.LFB5:
	.loc 1 769 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# cost_a, cost_a
	movl	%esi, -8(%rbp)	# regcost_a, regcost_a
	movl	%edx, -12(%rbp)	# cost_b, cost_b
	movl	%ecx, -16(%rbp)	# regcost_b, regcost_b
	.loc 1 772 0
	movl	-4(%rbp), %eax	# cost_a, tmp61
	cmpl	-12(%rbp), %eax	# cost_b, tmp61
	je	.L31	#,
	.loc 1 774 0
	cmpl	$2147483647, -4(%rbp)	#, cost_a
	jne	.L32	#,
	.loc 1 775 0
	movl	$1, %eax	#, D.22209
	jmp	.L33	#
.L32:
	.loc 1 776 0
	cmpl	$2147483647, -12(%rbp)	#, cost_b
	jne	.L31	#,
	.loc 1 777 0
	movl	$-1, %eax	#, D.22209
	jmp	.L33	#
.L31:
	.loc 1 781 0
	movl	-8(%rbp), %eax	# regcost_a, tmp62
	cmpl	-16(%rbp), %eax	# regcost_b, tmp62
	je	.L34	#,
	.loc 1 783 0
	cmpl	$2147483647, -8(%rbp)	#, regcost_a
	jne	.L35	#,
	.loc 1 784 0
	movl	$1, %eax	#, D.22209
	jmp	.L33	#
.L35:
	.loc 1 785 0
	cmpl	$2147483647, -16(%rbp)	#, regcost_b
	jne	.L34	#,
	.loc 1 786 0
	movl	$-1, %eax	#, D.22209
	jmp	.L33	#
.L34:
	.loc 1 790 0
	movl	-4(%rbp), %eax	# cost_a, tmp63
	cmpl	-12(%rbp), %eax	# cost_b, tmp63
	je	.L36	#,
	.loc 1 791 0
	movl	-12(%rbp), %eax	# cost_b, tmp64
	movl	-4(%rbp), %edx	# cost_a, tmp65
	subl	%eax, %edx	# tmp64, D.22209
	movl	%edx, %eax	# D.22209, D.22209
	jmp	.L33	#
.L36:
	.loc 1 793 0
	movl	-8(%rbp), %eax	# regcost_a, tmp66
	cmpl	-16(%rbp), %eax	# regcost_b, tmp66
	je	.L37	#,
	.loc 1 794 0
	movl	-16(%rbp), %eax	# regcost_b, tmp67
	movl	-8(%rbp), %edx	# regcost_a, tmp68
	subl	%eax, %edx	# tmp67, D.22209
	movl	%edx, %eax	# D.22209, D.22209
	jmp	.L33	#
.L37:
	.loc 1 795 0
	movl	$0, %eax	#, D.22209
.L33:
	.loc 1 796 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	preferrable, .-preferrable
	.type	notreg_cost, @function
notreg_cost:
.LFB6:
	.loc 1 805 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	movl	%esi, -12(%rbp)	# outer, outer
	.loc 1 806 0
	movq	-8(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_2(D)->code, D.22210
	.loc 1 816 0
	cmpw	$63, %ax	#, D.22210
	jne	.L39	#,
	.loc 1 807 0
	movq	-8(%rbp), %rax	# x, tmp82
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.22211
	movzwl	(%rax), %eax	# _4->code, D.22210
	cmpw	$61, %ax	#, D.22210
	jne	.L39	#,
	.loc 1 808 0
	movq	-8(%rbp), %rax	# x, tmp83
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.22212
	movzbl	%al, %eax	# D.22212, D.22213
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22214
	cmpl	$1, %eax	#, D.22214
	jne	.L39	#,
	.loc 1 809 0
	movq	-8(%rbp), %rax	# x, tmp85
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.22211
	movzbl	2(%rax), %eax	# _9->mode, D.22212
	movzbl	%al, %eax	# D.22212, D.22213
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22214
	cmpl	$1, %eax	#, D.22214
	jne	.L39	#,
	.loc 1 810 0
	movq	-8(%rbp), %rax	# x, tmp87
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.22212
	movzbl	%al, %eax	# D.22212, D.22213
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22212
	.loc 1 811 0
	movq	-8(%rbp), %rax	# x, tmp89
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.22211
	movzbl	2(%rax), %eax	# _16->mode, D.22212
	movzbl	%al, %eax	# D.22212, D.22213
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22212
	.loc 1 810 0
	cmpb	%al, %dl	# D.22212, D.22212
	jae	.L39	#,
	.loc 1 812 0
	movq	-8(%rbp), %rax	# x, tmp91
	movq	%rax, %rdi	# tmp91,
	call	subreg_lowpart_p	#
	testl	%eax, %eax	# D.22213
	jne	.L40	#,
.L39:
	.loc 1 816 0 discriminator 1
	movl	-12(%rbp), %edx	# outer, tmp92
	movq	-8(%rbp), %rax	# x, tmp93
	movl	%edx, %esi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	rtx_cost	#
	addl	%eax, %eax	# iftmp.8
	jmp	.L41	#
.L40:
	.loc 1 816 0 is_stmt 0
	movl	$0, %eax	#, iftmp.8
.L41:
	.loc 1 817 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	notreg_cost, .-notreg_cost
	.globl	rtx_cost
	.type	rtx_cost, @function
rtx_cost:
.LFB7:
	.loc 1 828 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# x, x
	movl	%esi, -92(%rbp)	# outer_code, outer_code
	.loc 1 834 0
	cmpq	$0, -88(%rbp)	#, x
	jne	.L44	#,
	.loc 1 835 0
	movl	$0, %eax	#, D.22215
	jmp	.L45	#
.L44:
	.loc 1 840 0
	movq	-88(%rbp), %rax	# x, tmp347
	movzwl	(%rax), %eax	# x_19(D)->code, D.22216
	movzwl	%ax, %eax	# D.22216, tmp348
	movl	%eax, -64(%rbp)	# tmp348, code
	.loc 1 841 0
	movl	-64(%rbp), %eax	# code, code
	cmpl	$78, %eax	#, code
	je	.L47	#,
	cmpl	$78, %eax	#, code
	ja	.L48	#,
	cmpl	$48, %eax	#, code
	je	.L49	#,
	jmp	.L46	#
.L48:
	cmpl	$82, %eax	#, code
	ja	.L46	#,
	jmp	.L119	#
.L47:
	.loc 1 846 0
	movq	-88(%rbp), %rax	# x, tmp350
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _23->code, D.22216
	cmpw	$54, %ax	#, D.22216
	jne	.L51	#,
	.loc 1 847 0
	movq	-88(%rbp), %rax	# x, tmp351
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movq	8(%rax), %rax	# _25->fld[0].rtwint, D.22218
	movq	%rax, %rdi	# D.22219,
	call	exact_log2_wide	#
	testl	%eax, %eax	# D.22215
	js	.L51	#,
	.loc 1 848 0
	movl	$2, -72(%rbp)	#, total
	.loc 1 851 0
	jmp	.L53	#
.L51:
	.loc 1 850 0
	movl	$20, -72(%rbp)	#, total
	.loc 1 851 0
	jmp	.L53	#
.L119:
	.loc 1 856 0
	movl	$28, -72(%rbp)	#, total
	.loc 1 857 0
	jmp	.L53	#
.L49:
	.loc 1 860 0
	movl	$0, -72(%rbp)	#, total
	.loc 1 861 0
	jmp	.L53	#
.L46:
	.loc 1 863 0
	movl	$4, -72(%rbp)	#, total
.L53:
	.loc 1 866 0
	movl	-64(%rbp), %eax	# code, tmp353
	subl	$54, %eax	#, tmp352
	cmpl	$67, %eax	#, tmp352
	ja	.L120	#,
	movl	%eax, %eax	# tmp352, tmp354
	movq	.L56(,%rax,8), %rax	#, tmp355
	jmp	*%rax	# tmp355
	.section	.rodata
	.align 8
	.align 4
.L56:
	.quad	.L55
	.quad	.L57
	.quad	.L120
	.quad	.L120
	.quad	.L55
	.quad	.L120
	.quad	.L120
	.quad	.L58
	.quad	.L120
	.quad	.L59
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L55
	.quad	.L55
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L60
	.quad	.L61
	.quad	.L62
	.quad	.L63
	.quad	.L64
	.quad	.L64
	.quad	.L64
	.quad	.L64
	.quad	.L61
	.quad	.L61
	.quad	.L61
	.quad	.L62
	.quad	.L65
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L66
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L67
	.quad	.L68
	.text
.L58:
	.loc 1 869 0
	movl	$0, %eax	#, D.22215
	jmp	.L45	#
.L59:
	.loc 1 874 0
	movq	-88(%rbp), %rax	# x, tmp356
	movzbl	2(%rax), %edx	# x_19(D)->mode, D.22220
	movq	-88(%rbp), %rax	# x, tmp357
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzbl	2(%rax), %eax	# _36->mode, D.22220
	cmpb	%al, %dl	# D.22220, D.22220
	je	.L69	#,
	.loc 1 874 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp358
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	cmpb	$3, %al	#, D.22220
	je	.L70	#,
	movq	-88(%rbp), %rax	# x, tmp359
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	cmpb	$4, %al	#, D.22220
	je	.L70	#,
	movq	-88(%rbp), %rax	# x, tmp360
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	cmpb	$2, %al	#, D.22220
	jne	.L71	#,
	.loc 1 874 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.9
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	jne	.L70	#,
	.loc 1 874 0 discriminator 1
	movl	x86_partial_reg_stall(%rip), %edx	# x86_partial_reg_stall, x86_partial_reg_stall.10
	movl	ix86_cpu(%rip), %eax	# ix86_cpu, ix86_cpu.11
	movl	%eax, %ecx	# ix86_cpu.12, tmp486
	sarl	%cl, %edx	# tmp486, D.22215
	movl	%edx, %eax	# D.22215, D.22215
	andl	$1, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	je	.L70	#,
.L71:
	movq	-88(%rbp), %rax	# x, tmp361
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	cmpb	$5, %al	#, D.22220
	jne	.L72	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.13
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	je	.L72	#,
.L70:
	.loc 1 874 0 discriminator 2
	movq	-88(%rbp), %rax	# x, tmp362
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzbl	2(%rax), %eax	# _51->mode, D.22220
	cmpb	$3, %al	#, D.22220
	je	.L69	#,
	.loc 1 874 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp363
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzbl	2(%rax), %eax	# _53->mode, D.22220
	cmpb	$4, %al	#, D.22220
	je	.L69	#,
	movq	-88(%rbp), %rax	# x, tmp364
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	cmpb	$2, %al	#, D.22220
	jne	.L73	#,
	.loc 1 874 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.14
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	jne	.L69	#,
	.loc 1 874 0 discriminator 1
	movl	x86_partial_reg_stall(%rip), %edx	# x86_partial_reg_stall, x86_partial_reg_stall.15
	movl	ix86_cpu(%rip), %eax	# ix86_cpu, ix86_cpu.16
	movl	%eax, %ecx	# ix86_cpu.17, tmp488
	sarl	%cl, %edx	# tmp488, D.22215
	movl	%edx, %eax	# D.22215, D.22215
	andl	$1, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	je	.L69	#,
.L73:
	movq	-88(%rbp), %rax	# x, tmp365
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzbl	2(%rax), %eax	# _63->mode, D.22220
	cmpb	$5, %al	#, D.22220
	jne	.L72	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.18
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	jne	.L69	#,
.L72:
	.loc 1 875 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp366
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	movzbl	%al, %eax	# D.22220, D.22215
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22220
	movzbl	%al, %eax	# D.22220, D.22215
	movl	target_flags(%rip), %edx	# target_flags, target_flags.20
	andl	$33554432, %edx	#, D.22215
	testl	%edx, %edx	# D.22215
	je	.L74	#,
	.loc 1 875 0 is_stmt 0 discriminator 1
	movl	$8, %esi	#, iftmp.19
	jmp	.L75	#
.L74:
	.loc 1 875 0 discriminator 2
	movl	$4, %esi	#, iftmp.19
.L75:
	.loc 1 875 0 discriminator 3
	cltd
	idivl	%esi	# iftmp.19
	addl	$2, %eax	#, D.22215
	sall	$2, %eax	#, D.22215
	jmp	.L45	#
.L69:
	.loc 1 877 0 is_stmt 1
	jmp	.L76	#
.L68:
	.loc 1 880 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.21
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	je	.L77	#,
	.loc 1 880 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp370
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	cmpb	$5, %al	#, D.22220
	jne	.L77	#,
	movq	-88(%rbp), %rax	# x, tmp371
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzbl	2(%rax), %eax	# _81->mode, D.22220
	cmpb	$4, %al	#, D.22220
	jne	.L77	#,
	movl	$1, -72(%rbp)	#, total
	jmp	.L78	#
.L77:
	.loc 1 880 0 discriminator 2
	movl	x86_zero_extend_with_and(%rip), %edx	# x86_zero_extend_with_and, x86_zero_extend_with_and.23
	movl	ix86_cpu(%rip), %eax	# ix86_cpu, ix86_cpu.24
	movl	%eax, %ecx	# ix86_cpu.25, tmp491
	sarl	%cl, %edx	# tmp491, D.22215
	movl	%edx, %eax	# D.22215, D.22215
	andl	$1, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	je	.L79	#,
	.loc 1 880 0 discriminator 1
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.26
	movl	(%rax), %eax	# ix86_cost.26_89->add, D.22215
	sall	$2, %eax	#, iftmp.22
	jmp	.L80	#
.L79:
	.loc 1 880 0 discriminator 2
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.27
	movl	32(%rax), %eax	# ix86_cost.27_92->movzx, D.22215
	sall	$2, %eax	#, iftmp.22
.L80:
	.loc 1 880 0 discriminator 3
	movl	%eax, -72(%rbp)	# iftmp.22, total
	jmp	.L78	#
.L67:
	.loc 1 880 0
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.28
	movl	28(%rax), %eax	# ix86_cost.28_96->movsx, D.22215
	sall	$2, %eax	#, tmp372
	movl	%eax, -72(%rbp)	# tmp372, total
	jmp	.L78	#
.L65:
	movq	-88(%rbp), %rax	# x, tmp373
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _99->code, D.22216
	cmpw	$54, %ax	#, D.22216
	jne	.L66	#,
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp374
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzbl	2(%rax), %eax	# _101->mode, D.22220
	cmpb	$5, %al	#, D.22220
	jne	.L81	#,
	.loc 1 880 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.29
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	je	.L66	#,
.L81:
.LBB5:
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp375
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movq	8(%rax), %rax	# _105->fld[0].rtwint, tmp376
	movq	%rax, -48(%rbp)	# tmp376, value
	cmpq	$1, -48(%rbp)	#, value
	jne	.L82	#,
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.30
	movl	(%rax), %eax	# ix86_cost.30_107->add, D.22215
	sall	$2, %eax	#, tmp377
	movl	%eax, -72(%rbp)	# tmp377, total
	jmp	.L78	#
.L82:
	.loc 1 880 0 discriminator 2
	cmpq	$2, -48(%rbp)	#, value
	je	.L83	#,
	cmpq	$3, -48(%rbp)	#, value
	jne	.L66	#,
.L83:
	.loc 1 880 0 discriminator 1
	movl	x86_decompose_lea(%rip), %edx	# x86_decompose_lea, x86_decompose_lea.31
	movl	ix86_cpu(%rip), %eax	# ix86_cpu, ix86_cpu.32
	movl	%eax, %ecx	# ix86_cpu.33, tmp493
	sarl	%cl, %edx	# tmp493, D.22215
	movl	%edx, %eax	# D.22215, D.22215
	andl	$1, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	jne	.L66	#,
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.34
	movl	4(%rax), %edx	# ix86_cost.34_115->lea, D.22215
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.35
	movl	12(%rax), %eax	# ix86_cost.35_117->shift_const, D.22215
	cmpl	%eax, %edx	# D.22215, D.22215
	jg	.L66	#,
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.36
	movl	4(%rax), %eax	# ix86_cost.36_119->lea, D.22215
	sall	$2, %eax	#, tmp378
	movl	%eax, -72(%rbp)	# tmp378, total
	jmp	.L78	#
.L66:
.LBE5:
	.loc 1 880 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.37
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	jne	.L84	#,
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp379
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzbl	2(%rax), %eax	# _124->mode, D.22220
	cmpb	$5, %al	#, D.22220
	jne	.L84	#,
	movq	-88(%rbp), %rax	# x, tmp380
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _126->code, D.22216
	cmpw	$54, %ax	#, D.22216
	jne	.L85	#,
	movq	-88(%rbp), %rax	# x, tmp381
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movq	8(%rax), %rax	# _128->fld[0].rtwint, D.22218
	cmpq	$32, %rax	#, D.22218
	jle	.L86	#,
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.38
	movl	12(%rax), %eax	# ix86_cost.38_130->shift_const, D.22215
	addl	$2, %eax	#, D.22215
	sall	$2, %eax	#, tmp382
	movl	%eax, -72(%rbp)	# tmp382, total
	jmp	.L78	#
.L86:
	.loc 1 880 0 discriminator 2
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.39
	movl	12(%rax), %eax	# ix86_cost.39_134->shift_const, D.22215
	sall	$3, %eax	#, tmp383
	movl	%eax, -72(%rbp)	# tmp383, total
	jmp	.L78	#
.L85:
	movq	-88(%rbp), %rax	# x, tmp384
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _137->code, D.22216
	cmpw	$83, %ax	#, D.22216
	jne	.L87	#,
	.loc 1 880 0 discriminator 1
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.40
	movl	8(%rax), %eax	# ix86_cost.40_139->shift_var, D.22215
	sall	$3, %eax	#, tmp385
	movl	%eax, -72(%rbp)	# tmp385, total
	jmp	.L78	#
.L87:
	.loc 1 880 0 discriminator 2
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.41
	movl	8(%rax), %edx	# ix86_cost.41_142->shift_var, D.22215
	movl	%edx, %eax	# D.22215, tmp386
	addl	%eax, %eax	# tmp386
	addl	%edx, %eax	# D.22215, tmp386
	sall	$3, %eax	#, tmp387
	addl	$8, %eax	#, tmp388
	movl	%eax, -72(%rbp)	# tmp388, total
	jmp	.L78	#
.L84:
	movq	-88(%rbp), %rax	# x, tmp389
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _146->code, D.22216
	cmpw	$54, %ax	#, D.22216
	jne	.L88	#,
	.loc 1 880 0 discriminator 1
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.42
	movl	12(%rax), %eax	# ix86_cost.42_148->shift_const, D.22215
	sall	$2, %eax	#, tmp390
	movl	%eax, -72(%rbp)	# tmp390, total
	jmp	.L78	#
.L88:
	.loc 1 880 0 discriminator 2
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.43
	movl	8(%rax), %eax	# ix86_cost.43_151->shift_var, D.22215
	sall	$2, %eax	#, tmp391
	movl	%eax, -72(%rbp)	# tmp391, total
	jmp	.L78	#
.L63:
	.loc 1 880 0
	movq	-88(%rbp), %rax	# x, tmp392
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _154->code, D.22216
	cmpw	$54, %ax	#, D.22216
	jne	.L89	#,
.LBB6:
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp393
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movq	8(%rax), %rax	# _156->fld[0].rtwint, D.22218
	movq	%rax, -56(%rbp)	# D.22218, value
	movl	$0, -68(%rbp)	#, nbits
	jmp	.L90	#
.L91:
	.loc 1 880 0 discriminator 2
	addl	$1, -68(%rbp)	#, nbits
	shrq	-56(%rbp)	# value
.L90:
	.loc 1 880 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, value
	jne	.L91	#,
	.loc 1 880 0 discriminator 3
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.44
	movl	16(%rax), %edx	# ix86_cost.44_162->mult_init, D.22215
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.45
	movl	20(%rax), %eax	# ix86_cost.45_164->mult_bit, D.22215
	imull	-68(%rbp), %eax	# nbits, D.22215
	addl	%edx, %eax	# D.22215, D.22215
	sall	$2, %eax	#, tmp394
	movl	%eax, -72(%rbp)	# tmp394, total
	jmp	.L78	#
.L89:
.LBE6:
	.loc 1 880 0 discriminator 2
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.46
	movl	16(%rax), %ecx	# ix86_cost.46_169->mult_init, D.22215
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.47
	movl	20(%rax), %edx	# ix86_cost.47_171->mult_bit, D.22215
	movl	%edx, %eax	# D.22215, tmp395
	sall	$3, %eax	#, tmp396
	subl	%edx, %eax	# D.22215, D.22215
	addl	%ecx, %eax	# D.22215, D.22215
	sall	$2, %eax	#, tmp397
	movl	%eax, -72(%rbp)	# tmp397, total
	jmp	.L78	#
.L64:
	.loc 1 880 0
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.48
	movl	24(%rax), %eax	# ix86_cost.48_176->divide, D.22215
	sall	$2, %eax	#, tmp398
	movl	%eax, -72(%rbp)	# tmp398, total
	jmp	.L78	#
.L60:
	movl	x86_decompose_lea(%rip), %edx	# x86_decompose_lea, x86_decompose_lea.49
	movl	ix86_cpu(%rip), %eax	# ix86_cpu, ix86_cpu.50
	movl	%eax, %ecx	# ix86_cpu.51, tmp495
	sarl	%cl, %edx	# tmp495, D.22215
	movl	%edx, %eax	# D.22215, D.22215
	andl	$1, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	jne	.L61	#,
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp399
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	movzbl	%al, %eax	# D.22220, D.22215
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22221
	cmpl	$1, %eax	#, D.22221
	je	.L92	#,
	.loc 1 880 0 discriminator 2
	movq	-88(%rbp), %rax	# x, tmp401
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	movzbl	%al, %eax	# D.22220, D.22215
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22221
	cmpl	$3, %eax	#, D.22221
	je	.L92	#,
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp403
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	movzbl	%al, %eax	# D.22220, D.22215
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22221
	cmpl	$5, %eax	#, D.22221
	je	.L92	#,
	movq	-88(%rbp), %rax	# x, tmp405
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	movzbl	%al, %eax	# D.22220, D.22215
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22221
	cmpl	$7, %eax	#, D.22221
	jne	.L61	#,
.L92:
	movq	-88(%rbp), %rax	# x, tmp407
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	movzbl	%al, %eax	# D.22220, D.22215
	cltq
	movzwl	mode_bitsize(%rax,%rax), %edx	# mode_bitsize, D.22216
	movl	target_flags(%rip), %eax	# target_flags, target_flags.53
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	je	.L93	#,
	movl	$5, %eax	#, iftmp.52
	jmp	.L94	#
.L93:
	.loc 1 880 0 discriminator 2
	movl	$4, %eax	#, iftmp.52
.L94:
	.loc 1 880 0 discriminator 3
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22216
	cmpw	%ax, %dx	# D.22216, D.22216
	ja	.L61	#,
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp410
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzwl	(%rax), %eax	# _204->code, D.22216
	cmpw	$75, %ax	#, D.22216
	jne	.L95	#,
	movq	-88(%rbp), %rax	# x, tmp411
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movq	8(%rax), %rax	# _206->fld[0].rtx, D.22217
	movzwl	(%rax), %eax	# _207->code, D.22216
	cmpw	$78, %ax	#, D.22216
	jne	.L95	#,
	movq	-88(%rbp), %rax	# x, tmp412
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movq	8(%rax), %rax	# _209->fld[0].rtx, D.22217
	movq	16(%rax), %rax	# _210->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _211->code, D.22216
	cmpw	$54, %ax	#, D.22216
	jne	.L95	#,
	movq	-88(%rbp), %rax	# x, tmp413
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _213->code, D.22216
	cmpw	$67, %ax	#, D.22216
	je	.L96	#,
	.loc 1 880 0 discriminator 2
	movq	-88(%rbp), %rax	# x, tmp414
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _215->code, D.22216
	cmpw	$68, %ax	#, D.22216
	je	.L96	#,
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp415
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _217->code, D.22216
	cmpw	$54, %ax	#, D.22216
	je	.L96	#,
	movq	-88(%rbp), %rax	# x, tmp416
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _219->code, D.22216
	cmpw	$55, %ax	#, D.22216
	je	.L96	#,
	movq	-88(%rbp), %rax	# x, tmp417
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _221->code, D.22216
	cmpw	$58, %ax	#, D.22216
	je	.L96	#,
	movq	-88(%rbp), %rax	# x, tmp418
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _223->code, D.22216
	cmpw	$134, %ax	#, D.22216
	je	.L96	#,
	movq	-88(%rbp), %rax	# x, tmp419
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _225->code, D.22216
	cmpw	$56, %ax	#, D.22216
	je	.L96	#,
	movq	-88(%rbp), %rax	# x, tmp420
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _227->code, D.22216
	cmpw	$140, %ax	#, D.22216
	jne	.L95	#,
.L96:
.LBB7:
	movq	-88(%rbp), %rax	# x, tmp421
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movq	8(%rax), %rax	# _229->fld[0].rtx, D.22217
	movq	16(%rax), %rax	# _230->fld[1].rtx, D.22217
	movq	8(%rax), %rax	# _231->fld[0].rtwint, tmp422
	movq	%rax, -40(%rbp)	# tmp422, val
	cmpq	$2, -40(%rbp)	#, val
	je	.L97	#,
	.loc 1 880 0 discriminator 2
	cmpq	$4, -40(%rbp)	#, val
	je	.L97	#,
	.loc 1 880 0 discriminator 1
	cmpq	$8, -40(%rbp)	#, val
	jne	.L98	#,
.L97:
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.54
	movl	4(%rax), %eax	# ix86_cost.54_233->lea, D.22215
	leal	0(,%rax,4), %ebx	#, D.22215
	movq	-88(%rbp), %rax	# x, tmp423
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movq	16(%rax), %rax	# _236->fld[1].rtx, D.22217
	movl	-92(%rbp), %edx	# outer_code, tmp424
	movl	%edx, %esi	# tmp424,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	addl	%eax, %ebx	# D.22215, D.22215
	movq	-88(%rbp), %rax	# x, tmp425
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movq	8(%rax), %rax	# _241->fld[0].rtx, D.22217
	movq	8(%rax), %rax	# _242->fld[0].rtx, D.22217
	movl	-92(%rbp), %edx	# outer_code, tmp426
	movl	%edx, %esi	# tmp426,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	addl	%eax, %ebx	# D.22215, D.22215
	movq	-88(%rbp), %rax	# x, tmp427
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movl	-92(%rbp), %edx	# outer_code, tmp428
	movl	%edx, %esi	# tmp428,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	addl	%ebx, %eax	# D.22215, D.22215
	jmp	.L45	#
.L98:
.LBE7:
	jmp	.L61	#
.L95:
	.loc 1 880 0 discriminator 2
	movq	-88(%rbp), %rax	# x, tmp429
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzwl	(%rax), %eax	# _249->code, D.22216
	cmpw	$78, %ax	#, D.22216
	jne	.L99	#,
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp430
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movq	16(%rax), %rax	# _251->fld[1].rtx, D.22217
	movzwl	(%rax), %eax	# _252->code, D.22216
	cmpw	$54, %ax	#, D.22216
	jne	.L99	#,
.LBB8:
	movq	-88(%rbp), %rax	# x, tmp431
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movq	16(%rax), %rax	# _254->fld[1].rtx, D.22217
	movq	8(%rax), %rax	# _255->fld[0].rtwint, tmp432
	movq	%rax, -32(%rbp)	# tmp432, val
	cmpq	$2, -32(%rbp)	#, val
	je	.L100	#,
	.loc 1 880 0 discriminator 2
	cmpq	$4, -32(%rbp)	#, val
	je	.L100	#,
	.loc 1 880 0 discriminator 1
	cmpq	$8, -32(%rbp)	#, val
	jne	.L101	#,
.L100:
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.55
	movl	4(%rax), %eax	# ix86_cost.55_257->lea, D.22215
	leal	0(,%rax,4), %ebx	#, D.22215
	movq	-88(%rbp), %rax	# x, tmp433
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movq	8(%rax), %rax	# _260->fld[0].rtx, D.22217
	movl	-92(%rbp), %edx	# outer_code, tmp434
	movl	%edx, %esi	# tmp434,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	addl	%eax, %ebx	# D.22215, D.22215
	movq	-88(%rbp), %rax	# x, tmp435
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movl	-92(%rbp), %edx	# outer_code, tmp436
	movl	%edx, %esi	# tmp436,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	addl	%ebx, %eax	# D.22215, D.22215
	jmp	.L45	#
.L101:
.LBE8:
	jmp	.L61	#
.L99:
	.loc 1 880 0 discriminator 2
	movq	-88(%rbp), %rax	# x, tmp437
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzwl	(%rax), %eax	# _267->code, D.22216
	cmpw	$75, %ax	#, D.22216
	jne	.L61	#,
	.loc 1 880 0 discriminator 1
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.56
	movl	4(%rax), %eax	# ix86_cost.56_269->lea, D.22215
	leal	0(,%rax,4), %ebx	#, D.22215
	movq	-88(%rbp), %rax	# x, tmp438
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movq	8(%rax), %rax	# _272->fld[0].rtx, D.22217
	movl	-92(%rbp), %edx	# outer_code, tmp439
	movl	%edx, %esi	# tmp439,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	addl	%eax, %ebx	# D.22215, D.22215
	movq	-88(%rbp), %rax	# x, tmp440
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movq	16(%rax), %rax	# _276->fld[1].rtx, D.22217
	movl	-92(%rbp), %edx	# outer_code, tmp441
	movl	%edx, %esi	# tmp441,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	addl	%eax, %ebx	# D.22215, D.22215
	movq	-88(%rbp), %rax	# x, tmp442
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movl	-92(%rbp), %edx	# outer_code, tmp443
	movl	%edx, %esi	# tmp443,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	addl	%ebx, %eax	# D.22215, D.22215
	jmp	.L45	#
.L61:
	.loc 1 880 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.57
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	jne	.L62	#,
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp444
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	cmpb	$5, %al	#, D.22220
	jne	.L62	#,
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.58
	movl	(%rax), %eax	# ix86_cost.58_286->add, D.22215
	leal	0(,%rax,8), %ebx	#, D.22215
	movq	-88(%rbp), %rax	# x, tmp445
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movl	-92(%rbp), %edx	# outer_code, tmp446
	movl	%edx, %esi	# tmp446,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	movl	%eax, %edx	#, D.22215
	movq	-88(%rbp), %rax	# x, tmp447
	movq	8(%rax), %rax	# x_19(D)->fld[0].rtx, D.22217
	movzbl	2(%rax), %eax	# _291->mode, D.22220
	cmpb	$5, %al	#, D.22220
	setne	%al	#, D.22222
	movzbl	%al, %eax	# D.22222, D.22215
	movl	%eax, %ecx	# D.22215, tmp497
	sall	%cl, %edx	# tmp497, D.22215
	movl	%edx, %eax	# D.22215, D.22215
	addl	%eax, %ebx	# D.22215, D.22215
	movq	-88(%rbp), %rax	# x, tmp448
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movl	-92(%rbp), %edx	# outer_code, tmp449
	movl	%edx, %esi	# tmp449,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	movl	%eax, %edx	#, D.22215
	movq	-88(%rbp), %rax	# x, tmp450
	movq	16(%rax), %rax	# x_19(D)->fld[1].rtx, D.22217
	movzbl	2(%rax), %eax	# _299->mode, D.22220
	cmpb	$5, %al	#, D.22220
	setne	%al	#, D.22222
	movzbl	%al, %eax	# D.22222, D.22215
	movl	%eax, %ecx	# D.22215, tmp499
	sall	%cl, %edx	# tmp499, D.22215
	movl	%edx, %eax	# D.22215, D.22215
	addl	%ebx, %eax	# D.22215, D.22215
	jmp	.L45	#
.L62:
	.loc 1 880 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.59
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	jne	.L102	#,
	.loc 1 880 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp451
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	cmpb	$5, %al	#, D.22220
	jne	.L102	#,
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.60
	movl	(%rax), %eax	# ix86_cost.60_308->add, D.22215
	sall	$3, %eax	#, tmp452
	movl	%eax, -72(%rbp)	# tmp452, total
	jmp	.L78	#
.L102:
	.loc 1 880 0 discriminator 2
	movq	ix86_cost(%rip), %rax	# ix86_cost, ix86_cost.61
	movl	(%rax), %eax	# ix86_cost.61_311->add, D.22215
	sall	$2, %eax	#, tmp453
	movl	%eax, -72(%rbp)	# tmp453, total
	nop
.L78:
	.loc 1 880 0 discriminator 1
	jmp	.L76	#
.L55:
	.loc 1 883 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.62
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	je	.L103	#,
	.loc 1 883 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp454
	movq	%rax, %rdi	# tmp454,
	call	x86_64_sign_extended_value	#
	testl	%eax, %eax	# D.22215
	jne	.L103	#,
	movl	$3, %eax	#, D.22215
	jmp	.L45	#
.L103:
	.loc 1 883 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.63
	andl	$33554432, %eax	#, D.22215
	testl	%eax, %eax	# D.22215
	je	.L104	#,
	.loc 1 883 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp455
	movq	%rax, %rdi	# tmp455,
	call	x86_64_zero_extended_value	#
	testl	%eax, %eax	# D.22215
	jne	.L104	#,
	movl	$2, %eax	#, D.22215
	jmp	.L45	#
.L104:
	.loc 1 883 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.65
	testl	%eax, %eax	# flag_pic.65
	je	.L105	#,
	.loc 1 883 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp456
	movzwl	(%rax), %eax	# x_19(D)->code, D.22216
	cmpw	$68, %ax	#, D.22216
	je	.L106	#,
	.loc 1 883 0 discriminator 4
	movq	-88(%rbp), %rax	# x, tmp457
	movzwl	(%rax), %eax	# x_19(D)->code, D.22216
	cmpw	$67, %ax	#, D.22216
	je	.L106	#,
	.loc 1 883 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp458
	movzwl	(%rax), %eax	# x_19(D)->code, D.22216
	cmpw	$58, %ax	#, D.22216
	jne	.L105	#,
	movq	-88(%rbp), %rax	# x, tmp459
	movq	%rax, %rdi	# tmp459,
	call	symbolic_reference_mentioned_p	#
	testl	%eax, %eax	# D.22215
	je	.L105	#,
.L106:
	.loc 1 883 0 discriminator 3
	movl	$1, %eax	#, iftmp.64
	jmp	.L107	#
.L105:
	.loc 1 883 0 discriminator 2
	movl	$0, %eax	#, iftmp.64
.L107:
	.loc 1 883 0 discriminator 5
	jmp	.L45	#
.L57:
.LBB9:
	.loc 1 883 0
	movq	-88(%rbp), %rax	# x, tmp460
	movzbl	2(%rax), %eax	# x_19(D)->mode, D.22220
	testb	%al, %al	# D.22220
	jne	.L108	#,
	.loc 1 883 0 discriminator 1
	movl	$0, %eax	#, D.22215
	jmp	.L45	#
.L108:
	.loc 1 883 0 discriminator 2
	movq	-88(%rbp), %rax	# x, tmp461
	movq	%rax, %rdi	# tmp461,
	call	standard_80387_constant_p	#
	movl	%eax, -60(%rbp)	# tmp462, code
	cmpl	$1, -60(%rbp)	#, code
	je	.L109	#,
	.loc 1 883 0 discriminator 1
	cmpl	$2, -60(%rbp)	#, code
	jne	.L110	#,
	movl	$2, %eax	#, iftmp.67
	jmp	.L112	#
.L110:
	.loc 1 883 0 discriminator 2
	movl	$3, %eax	#, iftmp.67
	jmp	.L45	#
.L109:
	movl	$1, %eax	#, iftmp.66
.L112:
	.loc 1 883 0 discriminator 3
	jmp	.L45	#
.L120:
.LBE9:
	.loc 1 890 0 is_stmt 1
	nop
.L76:
	.loc 1 896 0
	movl	-64(%rbp), %eax	# code, code.68
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp464
	movq	%rax, -24(%rbp)	# tmp464, fmt
	.loc 1 897 0
	movl	-64(%rbp), %eax	# code, code.69
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22220
	movzbl	%al, %eax	# D.22220, D.22215
	subl	$1, %eax	#, tmp466
	movl	%eax, -80(%rbp)	# tmp466, i
	jmp	.L113	#
.L118:
	.loc 1 898 0
	movl	-80(%rbp), %eax	# i, tmp467
	movslq	%eax, %rdx	# tmp467, D.22223
	movq	-24(%rbp), %rax	# fmt, tmp468
	addq	%rdx, %rax	# D.22223, D.22224
	movzbl	(%rax), %eax	# *_345, D.22225
	cmpb	$101, %al	#, D.22225
	jne	.L114	#,
	.loc 1 899 0
	movq	-88(%rbp), %rax	# x, tmp469
	movl	-80(%rbp), %edx	# i, tmp471
	movslq	%edx, %rdx	# tmp471, tmp470
	movq	8(%rax,%rdx,8), %rax	# x_19(D)->fld[i_1].rtx, D.22217
	movl	-64(%rbp), %edx	# code, tmp472
	movl	%edx, %esi	# tmp472,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	addl	%eax, -72(%rbp)	# D.22215, total
	jmp	.L115	#
.L114:
	.loc 1 900 0
	movl	-80(%rbp), %eax	# i, tmp473
	movslq	%eax, %rdx	# tmp473, D.22223
	movq	-24(%rbp), %rax	# fmt, tmp474
	addq	%rdx, %rax	# D.22223, D.22224
	movzbl	(%rax), %eax	# *_351, D.22225
	cmpb	$69, %al	#, D.22225
	jne	.L115	#,
	.loc 1 901 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L116	#
.L117:
	.loc 1 902 0 discriminator 2
	movq	-88(%rbp), %rax	# x, tmp475
	movl	-80(%rbp), %edx	# i, tmp477
	movslq	%edx, %rdx	# tmp477, tmp476
	movq	8(%rax,%rdx,8), %rax	# x_19(D)->fld[i_1].rtvec, D.22226
	movl	-76(%rbp), %edx	# j, tmp479
	movslq	%edx, %rdx	# tmp479, tmp478
	movq	8(%rax,%rdx,8), %rax	# _356->elem, D.22217
	movl	-64(%rbp), %edx	# code, tmp480
	movl	%edx, %esi	# tmp480,
	movq	%rax, %rdi	# D.22217,
	call	rtx_cost	#
	addl	%eax, -72(%rbp)	# D.22215, total
	.loc 1 901 0 discriminator 2
	addl	$1, -76(%rbp)	#, j
.L116:
	.loc 1 901 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp481
	movl	-80(%rbp), %edx	# i, tmp483
	movslq	%edx, %rdx	# tmp483, tmp482
	movq	8(%rax,%rdx,8), %rax	# x_19(D)->fld[i_1].rtvec, D.22226
	movl	(%rax), %eax	# _354->num_elem, D.22215
	cmpl	-76(%rbp), %eax	# j, D.22215
	jg	.L117	#,
.L115:
	.loc 1 897 0 is_stmt 1
	subl	$1, -80(%rbp)	#, i
.L113:
	.loc 1 897 0 is_stmt 0 discriminator 1
	cmpl	$0, -80(%rbp)	#, i
	jns	.L118	#,
	.loc 1 904 0 is_stmt 1
	movl	-72(%rbp), %eax	# total, D.22215
.L45:
	.loc 1 905 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	rtx_cost, .-rtx_cost
	.globl	address_cost
	.type	address_cost, @function
address_cost:
.LFB8:
	.loc 1 914 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 920 0
	movq	-8(%rbp), %rax	# x, tmp65
	movzwl	(%rax), %eax	# x_2(D)->code, D.22229
	cmpw	$70, %ax	#, D.22229
	jne	.L122	#,
	.loc 1 920 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp66
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.22230
	movzwl	(%rax), %eax	# _4->code, D.22229
	cmpw	$61, %ax	#, D.22229
	jne	.L122	#,
	.loc 1 921 0 is_stmt 1
	movl	$-1, %eax	#, D.22228
	jmp	.L123	#
.L122:
	.loc 1 927 0
	movq	-8(%rbp), %rdx	# x, tmp67
	movl	-12(%rbp), %eax	# mode, tmp68
	movq	%rdx, %rsi	# tmp67,
	movl	%eax, %edi	# tmp68,
	call	memory_address_p	#
	testl	%eax, %eax	# D.22228
	jne	.L124	#,
	.loc 1 928 0
	movl	$1000, %eax	#, D.22228
	jmp	.L123	#
.L124:
	.loc 1 930 0
	movq	-8(%rbp), %rax	# x, tmp69
	movq	%rax, %rdi	# tmp69,
	call	ix86_address_cost	#
.L123:
	.loc 1 934 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	address_cost, .-address_cost
	.type	get_cse_reg_info, @function
get_cse_reg_info:
.LFB9:
	.loc 1 940 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# regno, regno
	.loc 1 941 0
	movl	-20(%rbp), %eax	# regno, tmp71
	shrl	$7, %eax	#, D.22231
	xorl	-20(%rbp), %eax	# regno, D.22231
	andl	$127, %eax	#, D.22231
	movl	%eax, %eax	# D.22231, tmp72
	salq	$3, %rax	#, tmp73
	addq	$reg_hash, %rax	#, tmp74
	movq	%rax, -8(%rbp)	# tmp74, hash_head
	.loc 1 944 0
	movq	-8(%rbp), %rax	# hash_head, tmp75
	movq	(%rax), %rax	# *hash_head_8, tmp76
	movq	%rax, -16(%rbp)	# tmp76, p
	jmp	.L126	#
.L129:
	.loc 1 945 0
	movq	-16(%rbp), %rax	# p, tmp77
	movl	16(%rax), %eax	# p_1->regno, D.22231
	cmpl	-20(%rbp), %eax	# regno, D.22231
	jne	.L127	#,
	.loc 1 946 0
	jmp	.L128	#
.L127:
	.loc 1 944 0
	movq	-16(%rbp), %rax	# p, tmp78
	movq	(%rax), %rax	# p_1->hash_next, tmp79
	movq	%rax, -16(%rbp)	# tmp79, p
.L126:
	.loc 1 944 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L129	#,
.L128:
	.loc 1 948 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L130	#,
	.loc 1 951 0
	movq	cse_reg_info_free_list(%rip), %rax	# cse_reg_info_free_list, cse_reg_info_free_list.70
	testq	%rax, %rax	# cse_reg_info_free_list.70
	je	.L131	#,
	.loc 1 953 0
	movq	cse_reg_info_free_list(%rip), %rax	# cse_reg_info_free_list, tmp80
	movq	%rax, -16(%rbp)	# tmp80, p
	.loc 1 954 0
	movq	-16(%rbp), %rax	# p, tmp81
	movq	8(%rax), %rax	# p_13->next, cse_reg_info_free_list.71
	movq	%rax, cse_reg_info_free_list(%rip)	# cse_reg_info_free_list.71, cse_reg_info_free_list
	jmp	.L132	#
.L131:
	.loc 1 957 0
	movl	$32, %edi	#,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp82, p
.L132:
	.loc 1 960 0
	movq	-8(%rbp), %rax	# hash_head, tmp83
	movq	(%rax), %rdx	# *hash_head_8, D.22232
	movq	-16(%rbp), %rax	# p, tmp84
	movq	%rdx, (%rax)	# D.22232, p_2->hash_next
	.loc 1 961 0
	movq	-8(%rbp), %rax	# hash_head, tmp85
	movq	-16(%rbp), %rdx	# p, tmp86
	movq	%rdx, (%rax)	# tmp86, *hash_head_8
	.loc 1 964 0
	movq	-16(%rbp), %rax	# p, tmp87
	movl	$1, 24(%rax)	#, p_2->reg_tick
	.loc 1 965 0
	movq	-16(%rbp), %rax	# p, tmp88
	movl	$-1, 28(%rax)	#, p_2->reg_in_table
	.loc 1 966 0
	movl	-20(%rbp), %edx	# regno, regno.72
	movq	-16(%rbp), %rax	# p, tmp89
	movl	%edx, 20(%rax)	# regno.72, p_2->reg_qty
	.loc 1 967 0
	movq	-16(%rbp), %rax	# p, tmp90
	movl	-20(%rbp), %edx	# regno, tmp91
	movl	%edx, 16(%rax)	# tmp91, p_2->regno
	.loc 1 968 0
	movq	cse_reg_info_used_list(%rip), %rdx	# cse_reg_info_used_list, cse_reg_info_used_list.73
	movq	-16(%rbp), %rax	# p, tmp92
	movq	%rdx, 8(%rax)	# cse_reg_info_used_list.73, p_2->next
	.loc 1 969 0
	movq	-16(%rbp), %rax	# p, tmp93
	movq	%rax, cse_reg_info_used_list(%rip)	# tmp93, cse_reg_info_used_list
	.loc 1 970 0
	movq	cse_reg_info_used_list_end(%rip), %rax	# cse_reg_info_used_list_end, cse_reg_info_used_list_end.74
	testq	%rax, %rax	# cse_reg_info_used_list_end.74
	jne	.L130	#,
	.loc 1 971 0
	movq	-16(%rbp), %rax	# p, tmp94
	movq	%rax, cse_reg_info_used_list_end(%rip)	# tmp94, cse_reg_info_used_list_end
.L130:
	.loc 1 976 0
	movl	-20(%rbp), %eax	# regno, tmp95
	movl	%eax, cached_regno(%rip)	# tmp95, cached_regno
	.loc 1 977 0
	movq	-16(%rbp), %rax	# p, tmp96
	movq	%rax, cached_cse_reg_info(%rip)	# tmp96, cached_cse_reg_info
	.loc 1 979 0
	movq	-16(%rbp), %rax	# p, D.22232
	.loc 1 980 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_cse_reg_info, .-get_cse_reg_info
	.type	new_basic_block, @function
new_basic_block:
.LFB10:
	.loc 1 987 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 990 0
	movl	max_reg(%rip), %eax	# max_reg, max_reg.75
	movl	%eax, next_qty(%rip)	# max_reg.75, next_qty
	.loc 1 994 0
	movl	$1024, %edx	#,
	movl	$0, %esi	#,
	movl	$reg_hash, %edi	#,
	call	memset	#
	.loc 1 996 0
	movq	cse_reg_info_used_list(%rip), %rax	# cse_reg_info_used_list, cse_reg_info_used_list.76
	testq	%rax, %rax	# cse_reg_info_used_list.76
	je	.L135	#,
	.loc 1 998 0
	movq	cse_reg_info_used_list_end(%rip), %rax	# cse_reg_info_used_list_end, cse_reg_info_used_list_end.77
	movq	cse_reg_info_free_list(%rip), %rdx	# cse_reg_info_free_list, cse_reg_info_free_list.78
	movq	%rdx, 8(%rax)	# cse_reg_info_free_list.78, cse_reg_info_used_list_end.77_5->next
	.loc 1 999 0
	movq	cse_reg_info_used_list(%rip), %rax	# cse_reg_info_used_list, cse_reg_info_used_list.79
	movq	%rax, cse_reg_info_free_list(%rip)	# cse_reg_info_used_list.79, cse_reg_info_free_list
	.loc 1 1000 0
	movq	$0, cse_reg_info_used_list_end(%rip)	#, cse_reg_info_used_list_end
	movq	cse_reg_info_used_list_end(%rip), %rax	# cse_reg_info_used_list_end, cse_reg_info_used_list_end.80
	movq	%rax, cse_reg_info_used_list(%rip)	# cse_reg_info_used_list_end.80, cse_reg_info_used_list
.L135:
	.loc 1 1002 0
	movq	$0, cached_cse_reg_info(%rip)	#, cached_cse_reg_info
	.loc 1 1004 0
	movq	$0, hard_regs_in_table(%rip)	#, hard_regs_in_table
	.loc 1 1009 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L136	#
.L140:
.LBB10:
	.loc 1 1013 0
	movl	-20(%rbp), %eax	# i, tmp68
	cltq
	movq	table(,%rax,8), %rax	# table, tmp69
	movq	%rax, -8(%rbp)	# tmp69, first
	.loc 1 1014 0
	cmpq	$0, -8(%rbp)	#, first
	je	.L137	#,
.LBB11:
	.loc 1 1016 0
	movq	-8(%rbp), %rax	# first, tmp70
	movq	%rax, -16(%rbp)	# tmp70, last
	.loc 1 1018 0
	movl	-20(%rbp), %eax	# i, tmp72
	cltq
	movq	$0, table(,%rax,8)	#, table
	.loc 1 1020 0
	jmp	.L138	#
.L139:
	.loc 1 1021 0
	movq	-16(%rbp), %rax	# last, tmp73
	movq	16(%rax), %rax	# last_2->next_same_hash, tmp74
	movq	%rax, -16(%rbp)	# tmp74, last
.L138:
	.loc 1 1020 0 discriminator 1
	movq	-16(%rbp), %rax	# last, tmp75
	movq	16(%rax), %rax	# last_2->next_same_hash, D.22233
	testq	%rax, %rax	# D.22233
	jne	.L139	#,
	.loc 1 1026 0
	movq	free_element_chain(%rip), %rdx	# free_element_chain, free_element_chain.81
	movq	-16(%rbp), %rax	# last, tmp76
	movq	%rdx, 16(%rax)	# free_element_chain.81, last_2->next_same_hash
	.loc 1 1027 0
	movq	-8(%rbp), %rax	# first, tmp77
	movq	%rax, free_element_chain(%rip)	# tmp77, free_element_chain
.L137:
.LBE11:
.LBE10:
	.loc 1 1009 0
	addl	$1, -20(%rbp)	#, i
.L136:
	.loc 1 1009 0 is_stmt 0 discriminator 1
	cmpl	$31, -20(%rbp)	#, i
	jle	.L140	#,
	.loc 1 1031 0 is_stmt 1
	movq	$0, prev_insn(%rip)	#, prev_insn
	.loc 1 1036 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	new_basic_block, .-new_basic_block
	.section	.rodata
.LC2:
	.string	"cse.c"
	.text
	.type	make_new_qty, @function
make_new_qty:
.LFB11:
	.loc 1 1045 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# reg, reg
	movl	%esi, -40(%rbp)	# mode, mode
	.loc 1 1050 0
	movl	next_qty(%rip), %edx	# next_qty, next_qty.82
	movl	max_qty(%rip), %eax	# max_qty, max_qty.83
	cmpl	%eax, %edx	# max_qty.83, next_qty.82
	jl	.L142	#,
	.loc 1 1051 0
	movl	$__FUNCTION__.11645, %edx	#,
	movl	$1051, %esi	#,
	movl	$.LC2, %edi	#,
	call	fancy_abort	#
.L142:
	.loc 1 1053 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.85
	cmpl	%eax, -36(%rbp)	# cached_regno.85, reg
	jne	.L143	#,
	.loc 1 1053 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.86
	testq	%rax, %rax	# cached_cse_reg_info.86
	jne	.L144	#,
.L143:
	.loc 1 1053 0 discriminator 1
	movl	-36(%rbp), %eax	# reg, tmp75
	movl	%eax, %edi	# tmp75,
	call	get_cse_reg_info	#
	jmp	.L145	#
.L144:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.84
.L145:
	.loc 1 1053 0 discriminator 3
	movl	next_qty(%rip), %edx	# next_qty, next_qty.87
	leal	1(%rdx), %ecx	#, next_qty.89
	movl	%ecx, next_qty(%rip)	# next_qty.89, next_qty
	movl	%edx, 20(%rax)	# next_qty.88, iftmp.84_1->reg_qty
	movl	20(%rax), %eax	# iftmp.84_1->reg_qty, tmp76
	movl	%eax, -20(%rbp)	# tmp76, q
	.loc 1 1054 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.90
	movl	-20(%rbp), %eax	# q, tmp77
	movslq	%eax, %rdx	# tmp77, D.22234
	movq	%rdx, %rax	# D.22234, tmp78
	addq	%rax, %rax	# tmp78
	addq	%rdx, %rax	# D.22234, tmp78
	salq	$4, %rax	#, tmp79
	addq	%rcx, %rax	# qty_table.90, tmp80
	movq	%rax, -16(%rbp)	# tmp80, ent
	.loc 1 1055 0 discriminator 3
	movq	-16(%rbp), %rax	# ent, tmp81
	movl	-36(%rbp), %edx	# reg, tmp82
	movl	%edx, 28(%rax)	# tmp82, ent_16->first_reg
	.loc 1 1056 0 discriminator 3
	movq	-16(%rbp), %rax	# ent, tmp83
	movl	-36(%rbp), %edx	# reg, tmp84
	movl	%edx, 32(%rax)	# tmp84, ent_16->last_reg
	.loc 1 1057 0 discriminator 3
	movq	-16(%rbp), %rax	# ent, tmp85
	movl	-40(%rbp), %edx	# mode, tmp86
	movl	%edx, 36(%rax)	# tmp86, ent_16->mode
	.loc 1 1058 0 discriminator 3
	movq	-16(%rbp), %rax	# ent, tmp87
	movq	$0, 8(%rax)	#, ent_16->const_insn
	movq	-16(%rbp), %rax	# ent, tmp88
	movq	8(%rax), %rdx	# ent_16->const_insn, D.22235
	movq	-16(%rbp), %rax	# ent, tmp89
	movq	%rdx, (%rax)	# D.22235, ent_16->const_rtx
	.loc 1 1059 0 discriminator 3
	movq	-16(%rbp), %rax	# ent, tmp90
	movl	$0, 40(%rax)	#, ent_16->comparison_code
	.loc 1 1061 0 discriminator 3
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.91
	movl	-36(%rbp), %edx	# reg, D.22234
	salq	$3, %rdx	#, D.22234
	addq	%rdx, %rax	# D.22234, tmp91
	movq	%rax, -8(%rbp)	# tmp91, eqv
	.loc 1 1062 0 discriminator 3
	movq	-8(%rbp), %rax	# eqv, tmp92
	movl	$-1, 4(%rax)	#, eqv_22->prev
	movq	-8(%rbp), %rax	# eqv, tmp93
	movl	4(%rax), %edx	# eqv_22->prev, D.22236
	movq	-8(%rbp), %rax	# eqv, tmp94
	movl	%edx, (%rax)	# D.22236, eqv_22->next
	.loc 1 1063 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	make_new_qty, .-make_new_qty
	.type	make_regs_eqv, @function
make_regs_eqv:
.LFB12:
	.loc 1 1071 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# new, new
	movl	%esi, -40(%rbp)	# old, old
	.loc 1 1073 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.93
	cmpl	%eax, -40(%rbp)	# cached_regno.93, old
	jne	.L147	#,
	.loc 1 1073 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.94
	testq	%rax, %rax	# cached_cse_reg_info.94
	jne	.L148	#,
.L147:
	.loc 1 1073 0 discriminator 1
	movl	-40(%rbp), %eax	# old, tmp177
	movl	%eax, %edi	# tmp177,
	call	get_cse_reg_info	#
	jmp	.L149	#
.L148:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.92
.L149:
	.loc 1 1073 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.92_2->reg_qty, tmp178
	movl	%eax, -16(%rbp)	# tmp178, q
	.loc 1 1076 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.95
	movl	-16(%rbp), %eax	# q, tmp179
	movslq	%eax, %rdx	# tmp179, D.22238
	movq	%rdx, %rax	# D.22238, tmp180
	addq	%rax, %rax	# tmp180
	addq	%rdx, %rax	# D.22238, tmp180
	salq	$4, %rax	#, tmp181
	addq	%rcx, %rax	# qty_table.95, tmp182
	movq	%rax, -8(%rbp)	# tmp182, ent
	.loc 1 1079 0 discriminator 3
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.97
	cmpl	%eax, -40(%rbp)	# cached_regno.97, old
	jne	.L150	#,
	.loc 1 1079 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.98
	testq	%rax, %rax	# cached_cse_reg_info.98
	jne	.L151	#,
.L150:
	.loc 1 1079 0 discriminator 1
	movl	-40(%rbp), %eax	# old, tmp183
	movl	%eax, %edi	# tmp183,
	call	get_cse_reg_info	#
	jmp	.L152	#
.L151:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.96
.L152:
	.loc 1 1079 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.96_3->reg_qty, D.22239
	movl	-40(%rbp), %eax	# old, old.99
	cmpl	%eax, %edx	# old.99, D.22239
	jne	.L153	#,
	.loc 1 1080 0 is_stmt 1
	movl	$__FUNCTION__.11654, %edx	#,
	movl	$1080, %esi	#,
	movl	$.LC2, %edi	#,
	call	fancy_abort	#
.L153:
	.loc 1 1082 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.101
	cmpl	%eax, -36(%rbp)	# cached_regno.101, new
	jne	.L154	#,
	.loc 1 1082 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.102
	testq	%rax, %rax	# cached_cse_reg_info.102
	jne	.L155	#,
.L154:
	.loc 1 1082 0 discriminator 1
	movl	-36(%rbp), %eax	# new, tmp184
	movl	%eax, %edi	# tmp184,
	call	get_cse_reg_info	#
	jmp	.L156	#
.L155:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.100
.L156:
	.loc 1 1082 0 discriminator 3
	movl	-16(%rbp), %edx	# q, tmp185
	movl	%edx, 20(%rax)	# tmp185, iftmp.100_4->reg_qty
	.loc 1 1083 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# ent, tmp186
	movl	28(%rax), %eax	# ent_14->first_reg, tmp187
	movl	%eax, -12(%rbp)	# tmp187, firstr
	.loc 1 1084 0 discriminator 3
	movq	-8(%rbp), %rax	# ent, tmp188
	movl	32(%rax), %eax	# ent_14->last_reg, tmp189
	movl	%eax, -20(%rbp)	# tmp189, lastr
	.loc 1 1090 0 discriminator 3
	cmpl	$52, -12(%rbp)	#, firstr
	ja	.L157	#,
	.loc 1 1090 0 is_stmt 0 discriminator 1
	cmpl	$20, -12(%rbp)	#, firstr
	je	.L158	#,
	cmpl	$6, -12(%rbp)	#, firstr
	je	.L158	#,
	movl	-12(%rbp), %eax	# firstr, tmp190
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.22240
	testb	%al, %al	# D.22240
	jne	.L158	#,
	movl	-12(%rbp), %eax	# firstr, tmp191
	movzbl	global_regs(%rax), %eax	# global_regs, D.22240
	testb	%al, %al	# D.22240
	jne	.L158	#,
.L157:
	.loc 1 1095 0 is_stmt 1
	cmpl	$52, -36(%rbp)	#, new
	ja	.L159	#,
	.loc 1 1095 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# new, tmp192
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.22241
	testl	%eax, %eax	# D.22241
	je	.L158	#,
.L159:
	.loc 1 1096 0 is_stmt 1
	cmpl	$52, -36(%rbp)	#, new
	ja	.L160	#,
	.loc 1 1096 0 is_stmt 0 discriminator 1
	cmpl	$20, -36(%rbp)	#, new
	je	.L161	#,
	cmpl	$6, -36(%rbp)	#, new
	je	.L161	#,
	movl	-36(%rbp), %eax	# new, tmp193
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.22240
	testb	%al, %al	# D.22240
	jne	.L161	#,
	movl	-36(%rbp), %eax	# new, tmp194
	movzbl	global_regs(%rax), %eax	# global_regs, D.22240
	testb	%al, %al	# D.22240
	jne	.L161	#,
.L160:
	.loc 1 1097 0 is_stmt 1
	cmpl	$52, -36(%rbp)	#, new
	jbe	.L158	#,
	.loc 1 1098 0
	cmpl	$52, -12(%rbp)	#, firstr
	jbe	.L161	#,
	.loc 1 1099 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.103
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.104
	movl	-36(%rbp), %ecx	# new, tmp195
	addq	$4, %rcx	#, tmp196
	movq	(%rax,%rcx,8), %rax	# reg_n_info.104_34->data.reg, D.22242
	movl	4(%rax), %eax	# _35->last_uid, D.22239
	cltq
	salq	$2, %rax	#, D.22238
	addq	%rdx, %rax	# uid_cuid.103, D.22243
	movl	(%rax), %edx	# *_39, D.22239
	movl	cse_basic_block_end(%rip), %eax	# cse_basic_block_end, cse_basic_block_end.105
	cmpl	%eax, %edx	# cse_basic_block_end.105, D.22239
	jg	.L162	#,
	.loc 1 1100 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.106
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.107
	movl	-36(%rbp), %ecx	# new, tmp197
	addq	$4, %rcx	#, tmp198
	movq	(%rax,%rcx,8), %rax	# reg_n_info.107_43->data.reg, D.22242
	movl	(%rax), %eax	# _44->first_uid, D.22239
	cltq
	salq	$2, %rax	#, D.22238
	addq	%rdx, %rax	# uid_cuid.106, D.22243
	movl	(%rax), %edx	# *_48, D.22239
	.loc 1 1101 0
	movl	cse_basic_block_start(%rip), %eax	# cse_basic_block_start, cse_basic_block_start.108
	.loc 1 1100 0
	cmpl	%eax, %edx	# cse_basic_block_start.108, D.22239
	jge	.L158	#,
.L162:
	.loc 1 1102 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.109
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.110
	movl	-36(%rbp), %ecx	# new, tmp199
	addq	$4, %rcx	#, tmp200
	movq	(%rax,%rcx,8), %rax	# reg_n_info.110_52->data.reg, D.22242
	movl	4(%rax), %eax	# _53->last_uid, D.22239
	cltq
	salq	$2, %rax	#, D.22238
	addq	%rdx, %rax	# uid_cuid.109, D.22243
	movl	(%rax), %edx	# *_57, D.22239
	.loc 1 1103 0
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.111
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.112
	movl	-12(%rbp), %esi	# firstr, tmp201
	addq	$4, %rsi	#, tmp202
	movq	(%rax,%rsi,8), %rax	# reg_n_info.112_60->data.reg, D.22242
	movl	4(%rax), %eax	# _61->last_uid, D.22239
	cltq
	salq	$2, %rax	#, D.22238
	addq	%rcx, %rax	# uid_cuid.111, D.22243
	movl	(%rax), %eax	# *_65, D.22239
	.loc 1 1102 0
	cmpl	%eax, %edx	# D.22239, D.22239
	jle	.L158	#,
.L161:
	.loc 1 1105 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.113
	movl	-12(%rbp), %edx	# firstr, D.22238
	salq	$3, %rdx	#, D.22238
	addq	%rax, %rdx	# reg_eqv_table.113, D.22244
	movl	-36(%rbp), %eax	# new, new.114
	movl	%eax, 4(%rdx)	# new.114, _70->prev
	.loc 1 1106 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.115
	movl	-36(%rbp), %edx	# new, D.22238
	salq	$3, %rdx	#, D.22238
	addq	%rax, %rdx	# reg_eqv_table.115, D.22244
	movl	-12(%rbp), %eax	# firstr, firstr.116
	movl	%eax, (%rdx)	# firstr.116, _75->next
	.loc 1 1107 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.117
	movl	-36(%rbp), %edx	# new, D.22238
	salq	$3, %rdx	#, D.22238
	addq	%rdx, %rax	# D.22238, D.22244
	movl	$-1, 4(%rax)	#, _80->prev
	.loc 1 1108 0
	movq	-8(%rbp), %rax	# ent, tmp203
	movl	-36(%rbp), %edx	# new, tmp204
	movl	%edx, 28(%rax)	# tmp204, ent_14->first_reg
	jmp	.L146	#
.L158:
	.loc 1 1116 0
	jmp	.L164	#
.L167:
	.loc 1 1119 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.118
	movl	-20(%rbp), %edx	# lastr, D.22238
	salq	$3, %rdx	#, D.22238
	addq	%rdx, %rax	# D.22238, D.22244
	movl	4(%rax), %eax	# _92->prev, D.22239
	movl	%eax, -20(%rbp)	# D.22239, lastr
.L164:
	.loc 1 1116 0 discriminator 1
	cmpl	$52, -20(%rbp)	#, lastr
	ja	.L165	#,
	.loc 1 1116 0 is_stmt 0 discriminator 2
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.119
	movl	-20(%rbp), %edx	# lastr, D.22238
	salq	$3, %rdx	#, D.22238
	addq	%rdx, %rax	# D.22238, D.22244
	movl	4(%rax), %eax	# _84->prev, D.22239
	testl	%eax, %eax	# D.22239
	js	.L165	#,
	.loc 1 1117 0 is_stmt 1
	movl	-20(%rbp), %eax	# lastr, tmp205
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.22241
	testl	%eax, %eax	# D.22241
	je	.L166	#,
	.loc 1 1117 0 is_stmt 0 discriminator 1
	cmpl	$20, -20(%rbp)	#, lastr
	je	.L165	#,
	cmpl	$6, -20(%rbp)	#, lastr
	je	.L165	#,
	movl	-20(%rbp), %eax	# lastr, tmp206
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.22240
	testb	%al, %al	# D.22240
	jne	.L165	#,
	movl	-20(%rbp), %eax	# lastr, tmp207
	movzbl	global_regs(%rax), %eax	# global_regs, D.22240
	testb	%al, %al	# D.22240
	jne	.L165	#,
.L166:
	.loc 1 1118 0 is_stmt 1
	cmpl	$52, -36(%rbp)	#, new
	ja	.L167	#,
.L165:
	.loc 1 1120 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.120
	movl	-36(%rbp), %edx	# new, D.22238
	salq	$3, %rdx	#, D.22238
	addq	%rax, %rdx	# reg_eqv_table.120, D.22244
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.121
	movl	-20(%rbp), %ecx	# lastr, D.22238
	salq	$3, %rcx	#, D.22238
	addq	%rcx, %rax	# D.22238, D.22244
	movl	(%rax), %eax	# _102->next, D.22239
	movl	%eax, (%rdx)	# D.22239, _98->next
	.loc 1 1121 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.122
	movl	-20(%rbp), %edx	# lastr, D.22238
	salq	$3, %rdx	#, D.22238
	addq	%rdx, %rax	# D.22238, D.22244
	movl	(%rax), %eax	# _107->next, D.22239
	testl	%eax, %eax	# D.22239
	js	.L168	#,
	.loc 1 1122 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.123
	movq	reg_eqv_table(%rip), %rdx	# reg_eqv_table, reg_eqv_table.124
	movl	-20(%rbp), %ecx	# lastr, D.22238
	salq	$3, %rcx	#, D.22238
	addq	%rcx, %rdx	# D.22238, D.22244
	movl	(%rdx), %edx	# _113->next, D.22239
	movslq	%edx, %rdx	# D.22239, D.22238
	salq	$3, %rdx	#, D.22238
	addq	%rax, %rdx	# reg_eqv_table.123, D.22244
	movl	-36(%rbp), %eax	# new, new.125
	movl	%eax, 4(%rdx)	# new.125, _117->prev
	jmp	.L169	#
.L168:
	.loc 1 1124 0
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.126
	movl	-16(%rbp), %eax	# q, tmp208
	movslq	%eax, %rdx	# tmp208, D.22238
	movq	%rdx, %rax	# D.22238, tmp209
	addq	%rax, %rax	# tmp209
	addq	%rdx, %rax	# D.22238, tmp209
	salq	$4, %rax	#, tmp210
	leaq	(%rcx,%rax), %rdx	#, D.22245
	movl	-36(%rbp), %eax	# new, tmp211
	movl	%eax, 32(%rdx)	# tmp211, _122->last_reg
.L169:
	.loc 1 1125 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.127
	movl	-20(%rbp), %edx	# lastr, D.22238
	salq	$3, %rdx	#, D.22238
	addq	%rax, %rdx	# reg_eqv_table.127, D.22244
	movl	-36(%rbp), %eax	# new, new.128
	movl	%eax, (%rdx)	# new.128, _126->next
	.loc 1 1126 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.129
	movl	-36(%rbp), %edx	# new, D.22238
	salq	$3, %rdx	#, D.22238
	addq	%rax, %rdx	# reg_eqv_table.129, D.22244
	movl	-20(%rbp), %eax	# lastr, lastr.130
	movl	%eax, 4(%rdx)	# lastr.130, _131->prev
.L146:
	.loc 1 1128 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	make_regs_eqv, .-make_regs_eqv
	.type	delete_reg_equiv, @function
delete_reg_equiv:
.LFB13:
	.loc 1 1135 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# reg, reg
	.loc 1 1137 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.132
	cmpl	%eax, -36(%rbp)	# cached_regno.132, reg
	jne	.L171	#,
	.loc 1 1137 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.133
	testq	%rax, %rax	# cached_cse_reg_info.133
	jne	.L172	#,
.L171:
	.loc 1 1137 0 discriminator 1
	movl	-36(%rbp), %eax	# reg, tmp88
	movl	%eax, %edi	# tmp88,
	call	get_cse_reg_info	#
	jmp	.L173	#
.L172:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.131
.L173:
	.loc 1 1137 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.131_1->reg_qty, tmp89
	movl	%eax, -20(%rbp)	# tmp89, q
	.loc 1 1141 0 is_stmt 1 discriminator 3
	movl	-36(%rbp), %eax	# reg, reg.134
	cmpl	-20(%rbp), %eax	# q, reg.134
	jne	.L174	#,
	.loc 1 1142 0
	jmp	.L170	#
.L174:
	.loc 1 1144 0
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.135
	movl	-20(%rbp), %eax	# q, tmp90
	movslq	%eax, %rdx	# tmp90, D.22246
	movq	%rdx, %rax	# D.22246, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# D.22246, tmp91
	salq	$4, %rax	#, tmp92
	addq	%rcx, %rax	# qty_table.135, tmp93
	movq	%rax, -8(%rbp)	# tmp93, ent
	.loc 1 1146 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.136
	movl	-36(%rbp), %edx	# reg, D.22246
	salq	$3, %rdx	#, D.22246
	addq	%rdx, %rax	# D.22246, D.22247
	movl	4(%rax), %eax	# _17->prev, tmp94
	movl	%eax, -16(%rbp)	# tmp94, p
	.loc 1 1147 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.137
	movl	-36(%rbp), %edx	# reg, D.22246
	salq	$3, %rdx	#, D.22246
	addq	%rdx, %rax	# D.22246, D.22247
	movl	(%rax), %eax	# _22->next, tmp95
	movl	%eax, -12(%rbp)	# tmp95, n
	.loc 1 1149 0
	cmpl	$-1, -12(%rbp)	#, n
	je	.L176	#,
	.loc 1 1150 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.138
	movl	-12(%rbp), %edx	# n, tmp96
	movslq	%edx, %rdx	# tmp96, D.22246
	salq	$3, %rdx	#, D.22246
	addq	%rax, %rdx	# reg_eqv_table.138, D.22247
	movl	-16(%rbp), %eax	# p, tmp97
	movl	%eax, 4(%rdx)	# tmp97, _27->prev
	jmp	.L177	#
.L176:
	.loc 1 1152 0
	movl	-16(%rbp), %edx	# p, p.139
	movq	-8(%rbp), %rax	# ent, tmp98
	movl	%edx, 32(%rax)	# p.139, ent_13->last_reg
.L177:
	.loc 1 1153 0
	cmpl	$-1, -16(%rbp)	#, p
	je	.L178	#,
	.loc 1 1154 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.140
	movl	-16(%rbp), %edx	# p, tmp99
	movslq	%edx, %rdx	# tmp99, D.22246
	salq	$3, %rdx	#, D.22246
	addq	%rax, %rdx	# reg_eqv_table.140, D.22247
	movl	-12(%rbp), %eax	# n, tmp100
	movl	%eax, (%rdx)	# tmp100, _32->next
	jmp	.L179	#
.L178:
	.loc 1 1156 0
	movl	-12(%rbp), %edx	# n, n.141
	movq	-8(%rbp), %rax	# ent, tmp101
	movl	%edx, 28(%rax)	# n.141, ent_13->first_reg
.L179:
	.loc 1 1158 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.143
	cmpl	%eax, -36(%rbp)	# cached_regno.143, reg
	jne	.L180	#,
	.loc 1 1158 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.144
	testq	%rax, %rax	# cached_cse_reg_info.144
	jne	.L181	#,
.L180:
	.loc 1 1158 0 discriminator 1
	movl	-36(%rbp), %eax	# reg, tmp102
	movl	%eax, %edi	# tmp102,
	call	get_cse_reg_info	#
	jmp	.L182	#
.L181:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.142
.L182:
	.loc 1 1158 0 discriminator 3
	movl	-36(%rbp), %edx	# reg, reg.145
	movl	%edx, 20(%rax)	# reg.145, iftmp.142_2->reg_qty
.L170:
	.loc 1 1159 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	delete_reg_equiv, .-delete_reg_equiv
	.type	mention_regs, @function
mention_regs:
.LFB14:
	.loc 1 1176 0
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
	.loc 1 1180 0
	movl	$0, -48(%rbp)	#, changed
	.loc 1 1182 0
	cmpq	$0, -72(%rbp)	#, x
	jne	.L184	#,
	.loc 1 1183 0
	movl	$0, %eax	#, D.22248
	jmp	.L185	#
.L184:
	.loc 1 1185 0
	movq	-72(%rbp), %rax	# x, tmp200
	movzwl	(%rax), %eax	# x_34(D)->code, D.22249
	movzwl	%ax, %eax	# D.22249, tmp201
	movl	%eax, -40(%rbp)	# tmp201, code
	.loc 1 1186 0
	cmpl	$61, -40(%rbp)	#, code
	jne	.L186	#,
.LBB12:
	.loc 1 1188 0
	movq	-72(%rbp), %rax	# x, tmp202
	movl	8(%rax), %eax	# x_34(D)->fld[0].rtuint, tmp203
	movl	%eax, -36(%rbp)	# tmp203, regno
	.loc 1 1190 0
	cmpl	$52, -36(%rbp)	#, regno
	ja	.L187	#,
	.loc 1 1190 0 is_stmt 0 discriminator 1
	cmpl	$7, -36(%rbp)	#, regno
	jbe	.L188	#,
	.loc 1 1191 0 is_stmt 1
	cmpl	$15, -36(%rbp)	#, regno
	jbe	.L189	#,
.L188:
	.loc 1 1191 0 is_stmt 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jbe	.L190	#,
	.loc 1 1191 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L189	#,
.L190:
	.loc 1 1191 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jbe	.L191	#,
	.loc 1 1191 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jbe	.L189	#,
.L191:
	.loc 1 1191 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jbe	.L192	#,
	.loc 1 1191 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	ja	.L192	#,
.L189:
	movq	-72(%rbp), %rax	# x, tmp204
	movzbl	2(%rax), %eax	# x_34(D)->mode, D.22250
	movzbl	%al, %eax	# D.22250, D.22248
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22251
	.loc 1 1190 0 is_stmt 1 discriminator 1
	cmpl	$5, %eax	#, D.22251
	je	.L193	#,
	.loc 1 1191 0
	movq	-72(%rbp), %rax	# x, tmp206
	movzbl	2(%rax), %eax	# x_34(D)->mode, D.22250
	movzbl	%al, %eax	# D.22250, D.22248
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22251
	cmpl	$6, %eax	#, D.22251
	jne	.L194	#,
.L193:
	.loc 1 1190 0 discriminator 3
	movl	$2, %eax	#, iftmp.148
	jmp	.L196	#
.L194:
	.loc 1 1190 0 is_stmt 0
	movl	$1, %eax	#, iftmp.148
	jmp	.L196	#
.L192:
	.loc 1 1191 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp208
	movzbl	2(%rax), %eax	# x_34(D)->mode, D.22250
	.loc 1 1190 0 discriminator 2
	cmpb	$18, %al	#, D.22250
	jne	.L197	#,
	.loc 1 1191 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.151
	andl	$33554432, %eax	#, D.22248
	.loc 1 1190 0 discriminator 6
	testl	%eax, %eax	# D.22248
	je	.L198	#,
	.loc 1 1190 0 is_stmt 0 discriminator 8
	movl	$2, %eax	#, iftmp.150
	jmp	.L209	#
.L198:
	.loc 1 1190 0 discriminator 9
	movl	$3, %eax	#, iftmp.150
	jmp	.L209	#
.L197:
	.loc 1 1191 0 is_stmt 1 discriminator 7
	movq	-72(%rbp), %rax	# x, tmp209
	movzbl	2(%rax), %eax	# x_34(D)->mode, D.22250
	.loc 1 1190 0 discriminator 7
	cmpb	$24, %al	#, D.22250
	jne	.L201	#,
	.loc 1 1191 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.154
	andl	$33554432, %eax	#, D.22248
	.loc 1 1190 0 discriminator 10
	testl	%eax, %eax	# D.22248
	je	.L202	#,
	.loc 1 1190 0 is_stmt 0 discriminator 11
	movl	$4, %eax	#, iftmp.153
	jmp	.L209	#
.L202:
	.loc 1 1190 0 discriminator 12
	movl	$6, %eax	#, iftmp.153
	jmp	.L209	#
.L201:
	.loc 1 1191 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp210
	movzbl	2(%rax), %eax	# x_34(D)->mode, D.22250
	movzbl	%al, %eax	# D.22250, D.22248
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22250
	movzbl	%al, %edx	# D.22250, D.22248
	movl	target_flags(%rip), %eax	# target_flags, target_flags.156
	andl	$33554432, %eax	#, D.22248
	testl	%eax, %eax	# D.22248
	je	.L205	#,
	.loc 1 1191 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.155
	jmp	.L206	#
.L205:
	.loc 1 1191 0 discriminator 2
	movl	$4, %eax	#, iftmp.155
.L206:
	.loc 1 1191 0 discriminator 3
	addl	%edx, %eax	# D.22248, D.22248
	subl	$1, %eax	#, D.22248
	movl	target_flags(%rip), %edx	# target_flags, target_flags.158
	andl	$33554432, %edx	#, D.22248
	testl	%edx, %edx	# D.22248
	je	.L207	#,
	.loc 1 1191 0 discriminator 1
	movl	$8, %ecx	#, iftmp.157
	jmp	.L208	#
.L207:
	.loc 1 1191 0 discriminator 2
	movl	$4, %ecx	#, iftmp.157
.L208:
	.loc 1 1191 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.157
.L196:
	jmp	.L209	#
.L187:
	.loc 1 1190 0 is_stmt 1 discriminator 2
	movl	$1, %eax	#, iftmp.146
.L209:
	.loc 1 1189 0
	movl	-36(%rbp), %edx	# regno, tmp217
	addl	%edx, %eax	# tmp217, tmp216
	movl	%eax, -32(%rbp)	# tmp216, endregno
	.loc 1 1194 0
	movl	-36(%rbp), %eax	# regno, tmp218
	movl	%eax, -44(%rbp)	# tmp218, i
	jmp	.L210	#
.L227:
	.loc 1 1196 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.160
	cmpl	%eax, -44(%rbp)	# cached_regno.160, i
	jne	.L211	#,
	.loc 1 1196 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.161
	testq	%rax, %rax	# cached_cse_reg_info.161
	jne	.L212	#,
.L211:
	.loc 1 1196 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp219
	movl	%eax, %edi	# tmp219,
	call	get_cse_reg_info	#
	jmp	.L213	#
.L212:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.159
.L213:
	.loc 1 1196 0 discriminator 3
	movl	28(%rax), %eax	# iftmp.159_19->reg_in_table, D.22248
	testl	%eax, %eax	# D.22248
	js	.L214	#,
	.loc 1 1196 0 discriminator 1
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.163
	cmpl	%eax, -44(%rbp)	# cached_regno.163, i
	jne	.L215	#,
	.loc 1 1196 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.164
	testq	%rax, %rax	# cached_cse_reg_info.164
	jne	.L216	#,
.L215:
	.loc 1 1196 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp220
	movl	%eax, %edi	# tmp220,
	call	get_cse_reg_info	#
	jmp	.L217	#
.L216:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.162
.L217:
	.loc 1 1196 0 discriminator 3
	movl	28(%rax), %ebx	# iftmp.162_20->reg_in_table, D.22248
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.166
	cmpl	%eax, -44(%rbp)	# cached_regno.166, i
	jne	.L218	#,
	.loc 1 1196 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.167
	testq	%rax, %rax	# cached_cse_reg_info.167
	jne	.L219	#,
.L218:
	.loc 1 1196 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp221
	movl	%eax, %edi	# tmp221,
	call	get_cse_reg_info	#
	jmp	.L220	#
.L219:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.165
.L220:
	.loc 1 1196 0 discriminator 3
	movl	24(%rax), %eax	# iftmp.165_21->reg_tick, D.22248
	cmpl	%eax, %ebx	# D.22248, D.22248
	je	.L214	#,
	.loc 1 1197 0 is_stmt 1
	movl	-44(%rbp), %eax	# i, tmp222
	movl	%eax, %edi	# tmp222,
	call	remove_invalid_refs	#
.L214:
	.loc 1 1199 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.169
	cmpl	%eax, -44(%rbp)	# cached_regno.169, i
	jne	.L221	#,
	.loc 1 1199 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.170
	testq	%rax, %rax	# cached_cse_reg_info.170
	jne	.L222	#,
.L221:
	.loc 1 1199 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp223
	movl	%eax, %edi	# tmp223,
	call	get_cse_reg_info	#
	movq	%rax, %rbx	#, iftmp.168
	jmp	.L223	#
.L222:
	movq	cached_cse_reg_info(%rip), %rbx	# cached_cse_reg_info, iftmp.168
.L223:
	.loc 1 1199 0 discriminator 3
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.172
	cmpl	%eax, -44(%rbp)	# cached_regno.172, i
	jne	.L224	#,
	.loc 1 1199 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.173
	testq	%rax, %rax	# cached_cse_reg_info.173
	jne	.L225	#,
.L224:
	.loc 1 1199 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp224
	movl	%eax, %edi	# tmp224,
	call	get_cse_reg_info	#
	jmp	.L226	#
.L225:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.171
.L226:
	.loc 1 1199 0 discriminator 3
	movl	24(%rax), %eax	# iftmp.171_23->reg_tick, D.22248
	movl	%eax, 28(%rbx)	# D.22248, iftmp.168_22->reg_in_table
	.loc 1 1194 0 is_stmt 1 discriminator 3
	addl	$1, -44(%rbp)	#, i
.L210:
	.loc 1 1194 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp225
	cmpl	-32(%rbp), %eax	# endregno, tmp225
	jb	.L227	#,
	.loc 1 1202 0 is_stmt 1
	movl	$0, %eax	#, D.22248
	jmp	.L185	#
.L186:
.LBE12:
	.loc 1 1208 0
	cmpl	$63, -40(%rbp)	#, code
	jne	.L228	#,
	.loc 1 1208 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp226
	movq	8(%rax), %rax	# x_34(D)->fld[0].rtx, D.22252
	movzwl	(%rax), %eax	# _108->code, D.22249
	cmpw	$61, %ax	#, D.22249
	jne	.L228	#,
	.loc 1 1209 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp227
	movq	8(%rax), %rax	# x_34(D)->fld[0].rtx, D.22252
	movl	8(%rax), %eax	# _110->fld[0].rtuint, D.22253
	cmpl	$52, %eax	#, D.22253
	jbe	.L228	#,
.LBB13:
	.loc 1 1211 0
	movq	-72(%rbp), %rax	# x, tmp228
	movq	8(%rax), %rax	# x_34(D)->fld[0].rtx, D.22252
	movl	8(%rax), %eax	# _112->fld[0].rtuint, tmp229
	movl	%eax, -28(%rbp)	# tmp229, i
	.loc 1 1213 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.175
	cmpl	%eax, -28(%rbp)	# cached_regno.175, i
	jne	.L229	#,
	.loc 1 1213 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.176
	testq	%rax, %rax	# cached_cse_reg_info.176
	jne	.L230	#,
.L229:
	.loc 1 1213 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp230
	movl	%eax, %edi	# tmp230,
	call	get_cse_reg_info	#
	jmp	.L231	#
.L230:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.174
.L231:
	.loc 1 1213 0 discriminator 3
	movl	28(%rax), %eax	# iftmp.174_24->reg_in_table, D.22248
	testl	%eax, %eax	# D.22248
	js	.L232	#,
	.loc 1 1213 0 discriminator 1
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.178
	cmpl	%eax, -28(%rbp)	# cached_regno.178, i
	jne	.L233	#,
	.loc 1 1213 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.179
	testq	%rax, %rax	# cached_cse_reg_info.179
	jne	.L234	#,
.L233:
	.loc 1 1213 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp231
	movl	%eax, %edi	# tmp231,
	call	get_cse_reg_info	#
	jmp	.L235	#
.L234:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.177
.L235:
	.loc 1 1213 0 discriminator 3
	movl	28(%rax), %ebx	# iftmp.177_25->reg_in_table, D.22248
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.181
	cmpl	%eax, -28(%rbp)	# cached_regno.181, i
	jne	.L236	#,
	.loc 1 1213 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.182
	testq	%rax, %rax	# cached_cse_reg_info.182
	jne	.L237	#,
.L236:
	.loc 1 1213 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp232
	movl	%eax, %edi	# tmp232,
	call	get_cse_reg_info	#
	jmp	.L238	#
.L237:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.180
.L238:
	.loc 1 1213 0 discriminator 3
	movl	24(%rax), %eax	# iftmp.180_26->reg_tick, D.22248
	cmpl	%eax, %ebx	# D.22248, D.22248
	je	.L232	#,
	.loc 1 1219 0 is_stmt 1
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.184
	cmpl	%eax, -28(%rbp)	# cached_regno.184, i
	jne	.L239	#,
	.loc 1 1219 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.185
	testq	%rax, %rax	# cached_cse_reg_info.185
	jne	.L240	#,
.L239:
	.loc 1 1219 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp233
	movl	%eax, %edi	# tmp233,
	call	get_cse_reg_info	#
	jmp	.L241	#
.L240:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.183
.L241:
	.loc 1 1219 0 discriminator 3
	movl	28(%rax), %ebx	# iftmp.183_27->reg_in_table, D.22248
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.187
	cmpl	%eax, -28(%rbp)	# cached_regno.187, i
	jne	.L242	#,
	.loc 1 1219 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.188
	testq	%rax, %rax	# cached_cse_reg_info.188
	jne	.L243	#,
.L242:
	.loc 1 1219 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp234
	movl	%eax, %edi	# tmp234,
	call	get_cse_reg_info	#
	jmp	.L244	#
.L243:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.186
.L244:
	.loc 1 1219 0 discriminator 3
	movl	24(%rax), %eax	# iftmp.186_28->reg_tick, D.22248
	subl	$1, %eax	#, D.22248
	cmpl	%eax, %ebx	# D.22248, D.22248
	je	.L245	#,
	.loc 1 1220 0 is_stmt 1
	movl	-28(%rbp), %eax	# i, tmp235
	movl	%eax, %edi	# tmp235,
	call	remove_invalid_refs	#
	jmp	.L232	#
.L245:
	.loc 1 1222 0
	movq	-72(%rbp), %rax	# x, tmp236
	movzbl	2(%rax), %eax	# x_34(D)->mode, D.22250
	movzbl	%al, %edx	# D.22250, D.22254
	movq	-72(%rbp), %rax	# x, tmp237
	movl	16(%rax), %ecx	# x_34(D)->fld[1].rtuint, D.22253
	movl	-28(%rbp), %eax	# i, tmp238
	movl	%ecx, %esi	# D.22253,
	movl	%eax, %edi	# tmp238,
	call	remove_invalid_subreg_refs	#
.L232:
	.loc 1 1225 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.190
	cmpl	%eax, -28(%rbp)	# cached_regno.190, i
	jne	.L246	#,
	.loc 1 1225 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.191
	testq	%rax, %rax	# cached_cse_reg_info.191
	jne	.L247	#,
.L246:
	.loc 1 1225 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp239
	movl	%eax, %edi	# tmp239,
	call	get_cse_reg_info	#
	movq	%rax, %rbx	#, iftmp.189
	jmp	.L248	#
.L247:
	movq	cached_cse_reg_info(%rip), %rbx	# cached_cse_reg_info, iftmp.189
.L248:
	.loc 1 1225 0 discriminator 3
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.193
	cmpl	%eax, -28(%rbp)	# cached_regno.193, i
	jne	.L249	#,
	.loc 1 1225 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.194
	testq	%rax, %rax	# cached_cse_reg_info.194
	jne	.L250	#,
.L249:
	.loc 1 1225 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp240
	movl	%eax, %edi	# tmp240,
	call	get_cse_reg_info	#
	jmp	.L251	#
.L250:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.192
.L251:
	.loc 1 1225 0 discriminator 3
	movl	24(%rax), %eax	# iftmp.192_30->reg_tick, D.22248
	movl	%eax, 28(%rbx)	# D.22248, iftmp.189_29->reg_in_table
	.loc 1 1226 0 is_stmt 1 discriminator 3
	movl	$0, %eax	#, D.22248
	jmp	.L185	#
.L228:
.LBE13:
	.loc 1 1239 0
	cmpl	$74, -40(%rbp)	#, code
	je	.L252	#,
	.loc 1 1239 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# code, code.195
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22255
	cmpb	$60, %al	#, D.22255
	jne	.L253	#,
.L252:
	.loc 1 1241 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp242
	movq	8(%rax), %rax	# x_34(D)->fld[0].rtx, D.22252
	movzwl	(%rax), %eax	# _155->code, D.22249
	cmpw	$61, %ax	#, D.22249
	jne	.L254	#,
	.loc 1 1242 0
	movq	-72(%rbp), %rax	# x, tmp243
	movq	8(%rax), %rax	# x_34(D)->fld[0].rtx, D.22252
	movl	8(%rax), %edx	# _157->fld[0].rtuint, D.22253
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.197
	cmpl	%eax, %edx	# cached_regno.197, D.22253
	jne	.L255	#,
	.loc 1 1242 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.198
	testq	%rax, %rax	# cached_cse_reg_info.198
	jne	.L256	#,
.L255:
	.loc 1 1242 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp244
	movq	8(%rax), %rax	# x_34(D)->fld[0].rtx, D.22252
	movl	8(%rax), %eax	# _162->fld[0].rtuint, D.22253
	movl	%eax, %edi	# D.22253,
	call	get_cse_reg_info	#
	jmp	.L257	#
.L256:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.196
.L257:
	.loc 1 1242 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.196_31->reg_qty, D.22248
	movq	-72(%rbp), %rax	# x, tmp245
	movq	8(%rax), %rax	# x_34(D)->fld[0].rtx, D.22252
	movl	8(%rax), %eax	# _166->fld[0].rtuint, D.22253
	cmpl	%eax, %edx	# D.22248, D.22248
	jne	.L254	#,
	.loc 1 1243 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp246
	movq	8(%rax), %rax	# x_34(D)->fld[0].rtx, D.22252
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22252,
	call	insert_regs	#
	testl	%eax, %eax	# D.22248
	je	.L254	#,
	.loc 1 1245 0
	movq	-72(%rbp), %rax	# x, tmp247
	movq	8(%rax), %rax	# x_34(D)->fld[0].rtx, D.22252
	movq	%rax, %rdi	# D.22252,
	call	rehash_using_reg	#
	.loc 1 1246 0
	movl	$1, -48(%rbp)	#, changed
.L254:
	.loc 1 1249 0
	movq	-72(%rbp), %rax	# x, tmp248
	movq	16(%rax), %rax	# x_34(D)->fld[1].rtx, D.22252
	movzwl	(%rax), %eax	# _173->code, D.22249
	cmpw	$61, %ax	#, D.22249
	jne	.L253	#,
	.loc 1 1250 0
	movq	-72(%rbp), %rax	# x, tmp249
	movq	16(%rax), %rax	# x_34(D)->fld[1].rtx, D.22252
	movl	8(%rax), %edx	# _175->fld[0].rtuint, D.22253
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.200
	cmpl	%eax, %edx	# cached_regno.200, D.22253
	jne	.L258	#,
	.loc 1 1250 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.201
	testq	%rax, %rax	# cached_cse_reg_info.201
	jne	.L259	#,
.L258:
	.loc 1 1250 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp250
	movq	16(%rax), %rax	# x_34(D)->fld[1].rtx, D.22252
	movl	8(%rax), %eax	# _180->fld[0].rtuint, D.22253
	movl	%eax, %edi	# D.22253,
	call	get_cse_reg_info	#
	jmp	.L260	#
.L259:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.199
.L260:
	.loc 1 1250 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.199_32->reg_qty, D.22248
	movq	-72(%rbp), %rax	# x, tmp251
	movq	16(%rax), %rax	# x_34(D)->fld[1].rtx, D.22252
	movl	8(%rax), %eax	# _184->fld[0].rtuint, D.22253
	cmpl	%eax, %edx	# D.22248, D.22248
	jne	.L253	#,
	.loc 1 1251 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp252
	movq	16(%rax), %rax	# x_34(D)->fld[1].rtx, D.22252
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22252,
	call	insert_regs	#
	testl	%eax, %eax	# D.22248
	je	.L253	#,
	.loc 1 1253 0
	movq	-72(%rbp), %rax	# x, tmp253
	movq	16(%rax), %rax	# x_34(D)->fld[1].rtx, D.22252
	movq	%rax, %rdi	# D.22252,
	call	rehash_using_reg	#
	.loc 1 1254 0
	movl	$1, -48(%rbp)	#, changed
.L253:
	.loc 1 1258 0
	movl	-40(%rbp), %eax	# code, code.202
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp255
	movq	%rax, -24(%rbp)	# tmp255, fmt
	.loc 1 1259 0
	movl	-40(%rbp), %eax	# code, code.203
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22250
	movzbl	%al, %eax	# D.22250, D.22248
	subl	$1, %eax	#, tmp257
	movl	%eax, -56(%rbp)	# tmp257, i
	jmp	.L261	#
.L266:
	.loc 1 1260 0
	movl	-56(%rbp), %eax	# i, tmp258
	movslq	%eax, %rdx	# tmp258, D.22256
	movq	-24(%rbp), %rax	# fmt, tmp259
	addq	%rdx, %rax	# D.22256, D.22257
	movzbl	(%rax), %eax	# *_198, D.22255
	cmpb	$101, %al	#, D.22255
	jne	.L262	#,
	.loc 1 1261 0
	movq	-72(%rbp), %rax	# x, tmp260
	movl	-56(%rbp), %edx	# i, tmp262
	movslq	%edx, %rdx	# tmp262, tmp261
	movq	8(%rax,%rdx,8), %rax	# x_34(D)->fld[i_1].rtx, D.22252
	movq	%rax, %rdi	# D.22252,
	call	mention_regs	#
	orl	%eax, -48(%rbp)	# D.22248, changed
	jmp	.L263	#
.L262:
	.loc 1 1262 0
	movl	-56(%rbp), %eax	# i, tmp263
	movslq	%eax, %rdx	# tmp263, D.22256
	movq	-24(%rbp), %rax	# fmt, tmp264
	addq	%rdx, %rax	# D.22256, D.22257
	movzbl	(%rax), %eax	# *_204, D.22255
	cmpb	$69, %al	#, D.22255
	jne	.L263	#,
	.loc 1 1263 0
	movl	$0, -52(%rbp)	#, j
	jmp	.L264	#
.L265:
	.loc 1 1264 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp265
	movl	-56(%rbp), %edx	# i, tmp267
	movslq	%edx, %rdx	# tmp267, tmp266
	movq	8(%rax,%rdx,8), %rax	# x_34(D)->fld[i_1].rtvec, D.22258
	movl	-52(%rbp), %edx	# j, tmp269
	movslq	%edx, %rdx	# tmp269, tmp268
	movq	8(%rax,%rdx,8), %rax	# _209->elem, D.22252
	movq	%rax, %rdi	# D.22252,
	call	mention_regs	#
	orl	%eax, -48(%rbp)	# D.22248, changed
	.loc 1 1263 0 discriminator 2
	addl	$1, -52(%rbp)	#, j
.L264:
	.loc 1 1263 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp270
	movl	-56(%rbp), %edx	# i, tmp272
	movslq	%edx, %rdx	# tmp272, tmp271
	movq	8(%rax,%rdx,8), %rax	# x_34(D)->fld[i_1].rtvec, D.22258
	movl	(%rax), %eax	# _207->num_elem, D.22248
	cmpl	-52(%rbp), %eax	# j, D.22248
	jg	.L265	#,
.L263:
	.loc 1 1259 0 is_stmt 1
	subl	$1, -56(%rbp)	#, i
.L261:
	.loc 1 1259 0 is_stmt 0 discriminator 1
	cmpl	$0, -56(%rbp)	#, i
	jns	.L266	#,
	.loc 1 1266 0 is_stmt 1
	movl	-48(%rbp), %eax	# changed, D.22248
.L185:
	.loc 1 1267 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	mention_regs, .-mention_regs
	.type	insert_regs, @function
insert_regs:
.LFB15:
	.loc 1 1284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# classp, classp
	movl	%edx, -52(%rbp)	# modified, modified
	.loc 1 1285 0
	movq	-40(%rbp), %rax	# x, tmp120
	movzwl	(%rax), %eax	# x_10(D)->code, D.22260
	cmpw	$61, %ax	#, D.22260
	jne	.L268	#,
.LBB14:
	.loc 1 1287 0
	movq	-40(%rbp), %rax	# x, tmp121
	movl	8(%rax), %eax	# x_10(D)->fld[0].rtuint, tmp122
	movl	%eax, -32(%rbp)	# tmp122, regno
	.loc 1 1293 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.205
	cmpl	%eax, -32(%rbp)	# cached_regno.205, regno
	jne	.L269	#,
	.loc 1 1293 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.206
	testq	%rax, %rax	# cached_cse_reg_info.206
	jne	.L270	#,
.L269:
	.loc 1 1293 0 discriminator 1
	movl	-32(%rbp), %eax	# regno, tmp123
	movl	%eax, %edi	# tmp123,
	call	get_cse_reg_info	#
	jmp	.L271	#
.L270:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.204
.L271:
	.loc 1 1293 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.204_2->reg_qty, D.22259
	movl	-32(%rbp), %eax	# regno, regno.207
	cmpl	%eax, %edx	# regno.207, D.22259
	setne	%al	#, D.22261
	movzbl	%al, %eax	# D.22261, tmp124
	movl	%eax, -28(%rbp)	# tmp124, qty_valid
	.loc 1 1294 0 is_stmt 1 discriminator 3
	cmpl	$0, -28(%rbp)	#, qty_valid
	je	.L272	#,
.LBB15:
	.loc 1 1296 0
	movq	qty_table(%rip), %rbx	# qty_table, qty_table.208
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.210
	cmpl	%eax, -32(%rbp)	# cached_regno.210, regno
	jne	.L273	#,
	.loc 1 1296 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.211
	testq	%rax, %rax	# cached_cse_reg_info.211
	jne	.L274	#,
.L273:
	.loc 1 1296 0 discriminator 1
	movl	-32(%rbp), %eax	# regno, tmp125
	movl	%eax, %edi	# tmp125,
	call	get_cse_reg_info	#
	jmp	.L275	#
.L274:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.209
.L275:
	.loc 1 1296 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.209_3->reg_qty, D.22259
	movslq	%eax, %rdx	# D.22259, D.22262
	movq	%rdx, %rax	# D.22262, tmp126
	addq	%rax, %rax	# tmp126
	addq	%rdx, %rax	# D.22262, tmp126
	salq	$4, %rax	#, tmp127
	addq	%rbx, %rax	# qty_table.208, tmp128
	movq	%rax, -24(%rbp)	# tmp128, ent
	.loc 1 1298 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# ent, tmp129
	movl	36(%rax), %edx	# ent_29->mode, D.22263
	movq	-40(%rbp), %rax	# x, tmp130
	movzbl	2(%rax), %eax	# x_10(D)->mode, D.22264
	movzbl	%al, %eax	# D.22264, D.22265
	cmpl	%eax, %edx	# D.22265, D.22263
	je	.L272	#,
	.loc 1 1299 0
	movl	$0, %eax	#, D.22259
	jmp	.L276	#
.L272:
.LBE15:
	.loc 1 1302 0
	cmpl	$0, -52(%rbp)	#, modified
	jne	.L277	#,
	.loc 1 1302 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, qty_valid
	jne	.L278	#,
.L277:
	.loc 1 1304 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, classp
	je	.L279	#,
	.loc 1 1305 0
	movq	-48(%rbp), %rax	# classp, tmp131
	movq	48(%rax), %rax	# classp_36(D)->first_same_value, tmp132
	movq	%rax, -48(%rbp)	# tmp132, classp
	jmp	.L280	#
.L282:
	.loc 1 1308 0
	movq	-48(%rbp), %rax	# classp, tmp133
	movq	(%rax), %rax	# classp_1->exp, D.22266
	movzwl	(%rax), %eax	# _38->code, D.22260
	cmpw	$61, %ax	#, D.22260
	jne	.L281	#,
	.loc 1 1309 0
	movq	-48(%rbp), %rax	# classp, tmp134
	movq	(%rax), %rax	# classp_1->exp, D.22266
	movzbl	2(%rax), %edx	# _40->mode, D.22264
	movq	-40(%rbp), %rax	# x, tmp135
	movzbl	2(%rax), %eax	# x_10(D)->mode, D.22264
	cmpb	%al, %dl	# D.22264, D.22264
	jne	.L281	#,
	.loc 1 1311 0
	movq	-48(%rbp), %rax	# classp, tmp136
	movq	(%rax), %rax	# classp_1->exp, D.22266
	movl	8(%rax), %edx	# _43->fld[0].rtuint, D.22265
	movl	-32(%rbp), %eax	# regno, tmp137
	movl	%edx, %esi	# D.22265,
	movl	%eax, %edi	# tmp137,
	call	make_regs_eqv	#
	.loc 1 1312 0
	movl	$1, %eax	#, D.22259
	jmp	.L276	#
.L281:
	.loc 1 1307 0
	movq	-48(%rbp), %rax	# classp, tmp138
	movq	32(%rax), %rax	# classp_1->next_same_value, tmp139
	movq	%rax, -48(%rbp)	# tmp139, classp
.L280:
	.loc 1 1305 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, classp
	jne	.L282	#,
.L279:
	.loc 1 1324 0
	cmpl	$0, -52(%rbp)	#, modified
	jne	.L283	#,
	.loc 1 1325 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.213
	cmpl	%eax, -32(%rbp)	# cached_regno.213, regno
	jne	.L284	#,
	.loc 1 1325 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.214
	testq	%rax, %rax	# cached_cse_reg_info.214
	jne	.L285	#,
.L284:
	.loc 1 1325 0 discriminator 1
	movl	-32(%rbp), %eax	# regno, tmp140
	movl	%eax, %edi	# tmp140,
	call	get_cse_reg_info	#
	jmp	.L286	#
.L285:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.212
.L286:
	.loc 1 1325 0 discriminator 3
	movl	28(%rax), %eax	# iftmp.212_5->reg_in_table, D.22259
	testl	%eax, %eax	# D.22259
	js	.L283	#,
	.loc 1 1326 0 is_stmt 1
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.216
	cmpl	%eax, -32(%rbp)	# cached_regno.216, regno
	jne	.L287	#,
	.loc 1 1326 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.217
	testq	%rax, %rax	# cached_cse_reg_info.217
	jne	.L288	#,
.L287:
	.loc 1 1326 0 discriminator 1
	movl	-32(%rbp), %eax	# regno, tmp141
	movl	%eax, %edi	# tmp141,
	call	get_cse_reg_info	#
	jmp	.L289	#
.L288:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.215
.L289:
	.loc 1 1326 0 discriminator 3
	movl	24(%rax), %ebx	# iftmp.215_6->reg_tick, D.22259
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.219
	cmpl	%eax, -32(%rbp)	# cached_regno.219, regno
	jne	.L290	#,
	.loc 1 1326 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.220
	testq	%rax, %rax	# cached_cse_reg_info.220
	jne	.L291	#,
.L290:
	.loc 1 1326 0 discriminator 1
	movl	-32(%rbp), %eax	# regno, tmp142
	movl	%eax, %edi	# tmp142,
	call	get_cse_reg_info	#
	jmp	.L292	#
.L291:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.218
.L292:
	.loc 1 1326 0 discriminator 3
	movl	28(%rax), %eax	# iftmp.218_7->reg_in_table, D.22259
	addl	$1, %eax	#, D.22259
	cmpl	%eax, %ebx	# D.22259, D.22259
	jne	.L283	#,
	.loc 1 1327 0 is_stmt 1
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.222
	cmpl	%eax, -32(%rbp)	# cached_regno.222, regno
	jne	.L293	#,
	.loc 1 1327 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.223
	testq	%rax, %rax	# cached_cse_reg_info.223
	jne	.L294	#,
.L293:
	.loc 1 1327 0 discriminator 1
	movl	-32(%rbp), %eax	# regno, tmp143
	movl	%eax, %edi	# tmp143,
	call	get_cse_reg_info	#
	jmp	.L295	#
.L294:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.221
.L295:
	.loc 1 1327 0 discriminator 3
	movl	24(%rax), %edx	# iftmp.221_8->reg_tick, D.22259
	addl	$1, %edx	#, D.22259
	movl	%edx, 24(%rax)	# D.22259, iftmp.221_8->reg_tick
.L283:
	.loc 1 1328 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp144
	movzbl	2(%rax), %eax	# x_10(D)->mode, D.22264
	movzbl	%al, %edx	# D.22264, D.22263
	movl	-32(%rbp), %eax	# regno, tmp145
	movl	%edx, %esi	# D.22263,
	movl	%eax, %edi	# tmp145,
	call	make_new_qty	#
	.loc 1 1329 0
	movl	$1, %eax	#, D.22259
	jmp	.L276	#
.L278:
	.loc 1 1332 0
	movl	$0, %eax	#, D.22259
	jmp	.L276	#
.L268:
.LBE14:
	.loc 1 1341 0
	movq	-40(%rbp), %rax	# x, tmp146
	movzwl	(%rax), %eax	# x_10(D)->code, D.22260
	cmpw	$63, %ax	#, D.22260
	jne	.L296	#,
	.loc 1 1341 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp147
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22266
	movzwl	(%rax), %eax	# _73->code, D.22260
	cmpw	$61, %ax	#, D.22260
	jne	.L296	#,
	.loc 1 1342 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp148
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22266
	movl	8(%rax), %edx	# _75->fld[0].rtuint, D.22265
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.225
	cmpl	%eax, %edx	# cached_regno.225, D.22265
	jne	.L297	#,
	.loc 1 1342 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.226
	testq	%rax, %rax	# cached_cse_reg_info.226
	jne	.L298	#,
.L297:
	.loc 1 1342 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp149
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22266
	movl	8(%rax), %eax	# _80->fld[0].rtuint, D.22265
	movl	%eax, %edi	# D.22265,
	call	get_cse_reg_info	#
	jmp	.L299	#
.L298:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.224
.L299:
	.loc 1 1342 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.224_9->reg_qty, D.22259
	movq	-40(%rbp), %rax	# x, tmp150
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22266
	movl	8(%rax), %eax	# _84->fld[0].rtuint, D.22265
	cmpl	%eax, %edx	# D.22259, D.22259
	jne	.L296	#,
	.loc 1 1344 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp151
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22266
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22266,
	call	insert_regs	#
	.loc 1 1345 0
	movq	-40(%rbp), %rax	# x, tmp152
	movq	%rax, %rdi	# tmp152,
	call	mention_regs	#
	.loc 1 1346 0
	movl	$1, %eax	#, D.22259
	jmp	.L276	#
.L296:
	.loc 1 1349 0
	movq	-40(%rbp), %rax	# x, tmp153
	movq	%rax, %rdi	# tmp153,
	call	mention_regs	#
.L276:
	.loc 1 1350 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	insert_regs, .-insert_regs
	.type	remove_from_table, @function
remove_from_table:
.LFB16:
	.loc 1 1363 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# elt, elt
	movl	%esi, -60(%rbp)	# hash, hash
	.loc 1 1364 0
	cmpq	$0, -56(%rbp)	#, elt
	jne	.L301	#,
	.loc 1 1365 0
	jmp	.L300	#
.L301:
	.loc 1 1368 0
	movq	-56(%rbp), %rax	# elt, tmp67
	movq	$0, 48(%rax)	#, elt_4(D)->first_same_value
.LBB16:
	.loc 1 1373 0
	movq	-56(%rbp), %rax	# elt, tmp68
	movq	40(%rax), %rax	# elt_4(D)->prev_same_value, tmp69
	movq	%rax, -32(%rbp)	# tmp69, prev
	.loc 1 1374 0
	movq	-56(%rbp), %rax	# elt, tmp70
	movq	32(%rax), %rax	# elt_4(D)->next_same_value, tmp71
	movq	%rax, -48(%rbp)	# tmp71, next
	.loc 1 1376 0
	cmpq	$0, -48(%rbp)	#, next
	je	.L303	#,
	.loc 1 1377 0
	movq	-48(%rbp), %rax	# next, tmp72
	movq	-32(%rbp), %rdx	# prev, tmp73
	movq	%rdx, 40(%rax)	# tmp73, next_6->prev_same_value
.L303:
	.loc 1 1379 0
	cmpq	$0, -32(%rbp)	#, prev
	je	.L304	#,
	.loc 1 1380 0
	movq	-32(%rbp), %rax	# prev, tmp74
	movq	-48(%rbp), %rdx	# next, tmp75
	movq	%rdx, 32(%rax)	# tmp75, prev_5->next_same_value
	jmp	.L305	#
.L304:
.LBB17:
	.loc 1 1383 0
	movq	-48(%rbp), %rax	# next, tmp76
	movq	%rax, -24(%rbp)	# tmp76, newfirst
	.loc 1 1384 0
	jmp	.L306	#
.L307:
	.loc 1 1386 0
	movq	-48(%rbp), %rax	# next, tmp77
	movq	-24(%rbp), %rdx	# newfirst, tmp78
	movq	%rdx, 48(%rax)	# tmp78, next_2->first_same_value
	.loc 1 1387 0
	movq	-48(%rbp), %rax	# next, tmp79
	movq	32(%rax), %rax	# next_2->next_same_value, tmp80
	movq	%rax, -48(%rbp)	# tmp80, next
.L306:
	.loc 1 1384 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, next
	jne	.L307	#,
.L305:
.LBE17:
.LBE16:
.LBB18:
	.loc 1 1395 0
	movq	-56(%rbp), %rax	# elt, tmp81
	movq	24(%rax), %rax	# elt_4(D)->prev_same_hash, tmp82
	movq	%rax, -16(%rbp)	# tmp82, prev
	.loc 1 1396 0
	movq	-56(%rbp), %rax	# elt, tmp83
	movq	16(%rax), %rax	# elt_4(D)->next_same_hash, tmp84
	movq	%rax, -8(%rbp)	# tmp84, next
	.loc 1 1398 0
	cmpq	$0, -8(%rbp)	#, next
	je	.L308	#,
	.loc 1 1399 0
	movq	-8(%rbp), %rax	# next, tmp85
	movq	-16(%rbp), %rdx	# prev, tmp86
	movq	%rdx, 24(%rax)	# tmp86, next_10->prev_same_hash
.L308:
	.loc 1 1401 0
	cmpq	$0, -16(%rbp)	#, prev
	je	.L309	#,
	.loc 1 1402 0
	movq	-16(%rbp), %rax	# prev, tmp87
	movq	-8(%rbp), %rdx	# next, tmp88
	movq	%rdx, 16(%rax)	# tmp88, prev_9->next_same_hash
	jmp	.L310	#
.L309:
	.loc 1 1403 0
	movl	-60(%rbp), %eax	# hash, tmp89
	movq	table(,%rax,8), %rax	# table, D.22267
	cmpq	-56(%rbp), %rax	# elt, D.22267
	jne	.L311	#,
	.loc 1 1404 0
	movl	-60(%rbp), %eax	# hash, tmp90
	movq	-8(%rbp), %rdx	# next, tmp91
	movq	%rdx, table(,%rax,8)	# tmp91, table
	jmp	.L310	#
.L311:
	.loc 1 1411 0
	movl	$0, -60(%rbp)	#, hash
	jmp	.L312	#
.L314:
	.loc 1 1412 0
	movl	-60(%rbp), %eax	# hash, tmp92
	movq	table(,%rax,8), %rax	# table, D.22267
	cmpq	-56(%rbp), %rax	# elt, D.22267
	jne	.L313	#,
	.loc 1 1413 0
	movl	-60(%rbp), %eax	# hash, tmp93
	movq	-8(%rbp), %rdx	# next, tmp94
	movq	%rdx, table(,%rax,8)	# tmp94, table
.L313:
	.loc 1 1411 0
	addl	$1, -60(%rbp)	#, hash
.L312:
	.loc 1 1411 0 is_stmt 0 discriminator 1
	cmpl	$31, -60(%rbp)	#, hash
	jbe	.L314	#,
.L310:
.LBE18:
	.loc 1 1419 0 is_stmt 1
	movq	-56(%rbp), %rax	# elt, tmp95
	movq	56(%rax), %rax	# elt_4(D)->related_value, D.22267
	testq	%rax, %rax	# D.22267
	je	.L315	#,
	.loc 1 1419 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# elt, tmp96
	movq	56(%rax), %rax	# elt_4(D)->related_value, D.22267
	cmpq	-56(%rbp), %rax	# elt, D.22267
	je	.L315	#,
.LBB19:
	.loc 1 1421 0 is_stmt 1
	movq	-56(%rbp), %rax	# elt, tmp97
	movq	56(%rax), %rax	# elt_4(D)->related_value, tmp98
	movq	%rax, -40(%rbp)	# tmp98, p
	.loc 1 1423 0
	jmp	.L316	#
.L317:
	.loc 1 1424 0
	movq	-40(%rbp), %rax	# p, tmp99
	movq	56(%rax), %rax	# p_3->related_value, tmp100
	movq	%rax, -40(%rbp)	# tmp100, p
.L316:
	.loc 1 1423 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp101
	movq	56(%rax), %rax	# p_3->related_value, D.22267
	cmpq	-56(%rbp), %rax	# elt, D.22267
	jne	.L317	#,
	.loc 1 1425 0
	movq	-56(%rbp), %rax	# elt, tmp102
	movq	56(%rax), %rdx	# elt_4(D)->related_value, D.22267
	movq	-40(%rbp), %rax	# p, tmp103
	movq	%rdx, 56(%rax)	# D.22267, p_3->related_value
	.loc 1 1426 0
	movq	-40(%rbp), %rax	# p, tmp104
	movq	56(%rax), %rax	# p_3->related_value, D.22267
	cmpq	-40(%rbp), %rax	# p, D.22267
	jne	.L315	#,
	.loc 1 1427 0
	movq	-40(%rbp), %rax	# p, tmp105
	movq	$0, 56(%rax)	#, p_3->related_value
.L315:
.LBE19:
	.loc 1 1431 0
	movq	free_element_chain(%rip), %rdx	# free_element_chain, free_element_chain.227
	movq	-56(%rbp), %rax	# elt, tmp106
	movq	%rdx, 16(%rax)	# free_element_chain.227, elt_4(D)->next_same_hash
	.loc 1 1432 0
	movq	-56(%rbp), %rax	# elt, tmp107
	movq	%rax, free_element_chain(%rip)	# tmp107, free_element_chain
.L300:
	.loc 1 1433 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	remove_from_table, .-remove_from_table
	.type	lookup, @function
lookup:
.LFB17:
	.loc 1 1449 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movl	%esi, -28(%rbp)	# hash, hash
	movl	%edx, -32(%rbp)	# mode, mode
	.loc 1 1452 0
	movl	-28(%rbp), %eax	# hash, tmp69
	movq	table(,%rax,8), %rax	# table, tmp70
	movq	%rax, -8(%rbp)	# tmp70, p
	jmp	.L319	#
.L324:
	.loc 1 1453 0
	movq	-8(%rbp), %rax	# p, tmp71
	movl	72(%rax), %eax	# p_1->mode, D.22269
	cmpl	-32(%rbp), %eax	# mode, D.22269
	jne	.L320	#,
	.loc 1 1453 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp72
	movq	(%rax), %rax	# p_1->exp, D.22270
	cmpq	-24(%rbp), %rax	# x, D.22270
	jne	.L321	#,
	movq	-24(%rbp), %rax	# x, tmp73
	movzwl	(%rax), %eax	# x_8(D)->code, D.22271
	cmpw	$61, %ax	#, D.22271
	je	.L322	#,
.L321:
	.loc 1 1454 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp74
	movzwl	(%rax), %eax	# x_8(D)->code, D.22271
	cmpw	$61, %ax	#, D.22271
	setne	%al	#, D.22272
	movzbl	%al, %edx	# D.22272, D.22273
	movq	-8(%rbp), %rax	# p, tmp75
	movq	(%rax), %rsi	# p_1->exp, D.22270
	movq	-24(%rbp), %rax	# x, tmp76
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp76,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22273
	je	.L320	#,
.L322:
	.loc 1 1455 0
	movq	-8(%rbp), %rax	# p, D.22268
	jmp	.L323	#
.L320:
	.loc 1 1452 0
	movq	-8(%rbp), %rax	# p, tmp77
	movq	16(%rax), %rax	# p_1->next_same_hash, tmp78
	movq	%rax, -8(%rbp)	# tmp78, p
.L319:
	.loc 1 1452 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L324	#,
	.loc 1 1457 0 is_stmt 1
	movl	$0, %eax	#, D.22268
.L323:
	.loc 1 1458 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	lookup, .-lookup
	.type	lookup_for_remove, @function
lookup_for_remove:
.LFB18:
	.loc 1 1468 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movl	%esi, -28(%rbp)	# hash, hash
	movl	%edx, -32(%rbp)	# mode, mode
	.loc 1 1471 0
	movq	-24(%rbp), %rax	# x, tmp70
	movzwl	(%rax), %eax	# x_4(D)->code, D.22275
	cmpw	$61, %ax	#, D.22275
	jne	.L326	#,
.LBB20:
	.loc 1 1473 0
	movq	-24(%rbp), %rax	# x, tmp71
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, tmp72
	movl	%eax, -12(%rbp)	# tmp72, regno
	.loc 1 1477 0
	movl	-28(%rbp), %eax	# hash, tmp73
	movq	table(,%rax,8), %rax	# table, tmp74
	movq	%rax, -8(%rbp)	# tmp74, p
	jmp	.L327	#
.L330:
	.loc 1 1478 0
	movq	-8(%rbp), %rax	# p, tmp75
	movq	(%rax), %rax	# p_1->exp, D.22276
	movzwl	(%rax), %eax	# _9->code, D.22275
	cmpw	$61, %ax	#, D.22275
	jne	.L328	#,
	.loc 1 1479 0
	movq	-8(%rbp), %rax	# p, tmp76
	movq	(%rax), %rax	# p_1->exp, D.22276
	movl	8(%rax), %eax	# _11->fld[0].rtuint, D.22277
	cmpl	-12(%rbp), %eax	# regno, D.22277
	jne	.L328	#,
	.loc 1 1480 0
	movq	-8(%rbp), %rax	# p, D.22274
	jmp	.L329	#
.L328:
	.loc 1 1477 0
	movq	-8(%rbp), %rax	# p, tmp77
	movq	16(%rax), %rax	# p_1->next_same_hash, tmp78
	movq	%rax, -8(%rbp)	# tmp78, p
.L327:
	.loc 1 1477 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L330	#,
.LBE20:
	jmp	.L331	#
.L326:
	.loc 1 1484 0 is_stmt 1
	movl	-28(%rbp), %eax	# hash, tmp79
	movq	table(,%rax,8), %rax	# table, tmp80
	movq	%rax, -8(%rbp)	# tmp80, p
	jmp	.L332	#
.L335:
	.loc 1 1485 0
	movq	-8(%rbp), %rax	# p, tmp81
	movl	72(%rax), %eax	# p_2->mode, D.22278
	cmpl	-32(%rbp), %eax	# mode, D.22278
	jne	.L333	#,
	.loc 1 1485 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp82
	movq	(%rax), %rax	# p_2->exp, D.22276
	cmpq	-24(%rbp), %rax	# x, D.22276
	je	.L334	#,
	movq	-8(%rbp), %rax	# p, tmp83
	movq	(%rax), %rsi	# p_2->exp, D.22276
	movq	-24(%rbp), %rax	# x, tmp84
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp84,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22279
	je	.L333	#,
.L334:
	.loc 1 1486 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, D.22274
	jmp	.L329	#
.L333:
	.loc 1 1484 0
	movq	-8(%rbp), %rax	# p, tmp85
	movq	16(%rax), %rax	# p_2->next_same_hash, tmp86
	movq	%rax, -8(%rbp)	# tmp86, p
.L332:
	.loc 1 1484 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L335	#,
.L331:
	.loc 1 1489 0 is_stmt 1
	movl	$0, %eax	#, D.22274
.L329:
	.loc 1 1490 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	lookup_for_remove, .-lookup_for_remove
	.type	lookup_as_function, @function
lookup_as_function:
.LFB19:
	.loc 1 1499 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# code, code
	.loc 1 1501 0
	movq	-40(%rbp), %rax	# x, tmp82
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.22281
	movzbl	%al, %ebx	# D.22281, D.22282
	movq	-40(%rbp), %rax	# x, tmp83
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	safe_hash	#
	andl	$31, %eax	#, D.22283
	movl	%eax, %ecx	# D.22283, D.22283
	.loc 1 1500 0
	movq	-40(%rbp), %rax	# x, tmp84
	movl	%ebx, %edx	# D.22282,
	movl	%ecx, %esi	# D.22283,
	movq	%rax, %rdi	# tmp84,
	call	lookup	#
	movq	%rax, -24(%rbp)	# tmp85, p
	.loc 1 1506 0
	cmpq	$0, -24(%rbp)	#, p
	jne	.L337	#,
	.loc 1 1506 0 is_stmt 0 discriminator 1
	cmpl	$54, -44(%rbp)	#, code
	jne	.L337	#,
	.loc 1 1507 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp86
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.22281
	movzbl	%al, %eax	# D.22281, D.22284
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22281
	movl	word_mode(%rip), %eax	# word_mode, word_mode.228
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22281
	cmpb	%al, %dl	# D.22281, D.22281
	jae	.L337	#,
	.loc 1 1509 0
	movq	-40(%rbp), %rax	# x, tmp89
	movq	%rax, %rdi	# tmp89,
	call	copy_rtx	#
	movq	%rax, -40(%rbp)	# tmp90, x
	.loc 1 1510 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.230
	movl	%eax, %edx	# word_mode.230, D.22281
	movq	-40(%rbp), %rax	# x, tmp91
	movb	%dl, 2(%rax)	# D.22281, x_17->mode
	.loc 1 1511 0
	movl	word_mode(%rip), %ebx	# word_mode, word_mode.231
	movq	-40(%rbp), %rax	# x, tmp92
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	safe_hash	#
	andl	$31, %eax	#, D.22283
	movl	%eax, %ecx	# D.22283, D.22283
	movq	-40(%rbp), %rax	# x, tmp93
	movl	%ebx, %edx	# word_mode.231,
	movl	%ecx, %esi	# D.22283,
	movq	%rax, %rdi	# tmp93,
	call	lookup	#
	movq	%rax, -24(%rbp)	# tmp94, p
.L337:
	.loc 1 1514 0
	cmpq	$0, -24(%rbp)	#, p
	jne	.L338	#,
	.loc 1 1515 0
	movl	$0, %eax	#, D.22280
	jmp	.L339	#
.L338:
	.loc 1 1517 0
	movq	-24(%rbp), %rax	# p, tmp95
	movq	48(%rax), %rax	# p_1->first_same_value, tmp96
	movq	%rax, -24(%rbp)	# tmp96, p
	jmp	.L340	#
.L342:
	.loc 1 1518 0
	movq	-24(%rbp), %rax	# p, tmp97
	movq	(%rax), %rax	# p_2->exp, D.22285
	movzwl	(%rax), %eax	# _26->code, D.22286
	movzwl	%ax, %eax	# D.22286, D.22283
	cmpl	-44(%rbp), %eax	# code, D.22283
	jne	.L341	#,
	.loc 1 1520 0
	movq	-24(%rbp), %rax	# p, tmp98
	movq	(%rax), %rsi	# p_2->exp, D.22285
	movq	-24(%rbp), %rax	# p, tmp99
	movq	(%rax), %rax	# p_2->exp, D.22285
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22285,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22284
	je	.L341	#,
	.loc 1 1521 0
	movq	-24(%rbp), %rax	# p, tmp100
	movq	(%rax), %rax	# p_2->exp, D.22280
	jmp	.L339	#
.L341:
	.loc 1 1517 0
	movq	-24(%rbp), %rax	# p, tmp101
	movq	32(%rax), %rax	# p_2->next_same_value, tmp102
	movq	%rax, -24(%rbp)	# tmp102, p
.L340:
	.loc 1 1517 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, p
	jne	.L342	#,
	.loc 1 1523 0 is_stmt 1
	movl	$0, %eax	#, D.22280
.L339:
	.loc 1 1524 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	lookup_as_function, .-lookup_as_function
	.type	insert, @function
insert:
.LFB20:
	.loc 1 1559 0
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
	movq	%rdi, -136(%rbp)	# x, x
	movq	%rsi, -144(%rbp)	# classp, classp
	movl	%edx, -148(%rbp)	# hash, hash
	movl	%ecx, -152(%rbp)	# mode, mode
	.loc 1 1564 0
	movq	-136(%rbp), %rax	# x, tmp247
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$61, %ax	#, D.22287
	jne	.L344	#,
	.loc 1 1564 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp248
	movl	8(%rax), %edx	# x_26(D)->fld[0].rtuint, D.22288
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.233
	cmpl	%eax, %edx	# cached_regno.233, D.22288
	jne	.L345	#,
	.loc 1 1564 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.234
	testq	%rax, %rax	# cached_cse_reg_info.234
	jne	.L346	#,
.L345:
	.loc 1 1564 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp249
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22288
	movl	%eax, %edi	# D.22288,
	call	get_cse_reg_info	#
	jmp	.L347	#
.L346:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.232
.L347:
	.loc 1 1564 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.232_9->reg_qty, D.22289
	movq	-136(%rbp), %rax	# x, tmp250
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22288
	cmpl	%eax, %edx	# D.22289, D.22289
	jne	.L344	#,
	.loc 1 1565 0 is_stmt 1
	movl	$__FUNCTION__.11753, %edx	#,
	movl	$1565, %esi	#,
	movl	$.LC2, %edi	#,
	call	fancy_abort	#
.L344:
	.loc 1 1568 0
	movq	-136(%rbp), %rax	# x, tmp251
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$61, %ax	#, D.22287
	jne	.L348	#,
	.loc 1 1568 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp252
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22288
	cmpl	$52, %eax	#, D.22288
	ja	.L348	#,
.LBB21:
	.loc 1 1570 0 is_stmt 1
	movq	-136(%rbp), %rax	# x, tmp253
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, tmp254
	movl	%eax, -116(%rbp)	# tmp254, regno
	.loc 1 1571 0
	cmpl	$7, -116(%rbp)	#, regno
	jbe	.L349	#,
	.loc 1 1571 0 is_stmt 0 discriminator 1
	cmpl	$15, -116(%rbp)	#, regno
	jbe	.L350	#,
.L349:
	.loc 1 1571 0 discriminator 2
	cmpl	$20, -116(%rbp)	#, regno
	jbe	.L351	#,
	.loc 1 1571 0 discriminator 1
	cmpl	$28, -116(%rbp)	#, regno
	jbe	.L350	#,
.L351:
	.loc 1 1571 0 discriminator 2
	cmpl	$44, -116(%rbp)	#, regno
	jbe	.L352	#,
	.loc 1 1571 0 discriminator 1
	cmpl	$52, -116(%rbp)	#, regno
	jbe	.L350	#,
.L352:
	.loc 1 1571 0 discriminator 2
	cmpl	$28, -116(%rbp)	#, regno
	jbe	.L353	#,
	.loc 1 1571 0 discriminator 1
	cmpl	$36, -116(%rbp)	#, regno
	ja	.L353	#,
.L350:
	movq	-136(%rbp), %rax	# x, tmp255
	movzbl	2(%rax), %eax	# x_26(D)->mode, D.22290
	movzbl	%al, %eax	# D.22290, D.22289
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22291
	cmpl	$5, %eax	#, D.22291
	je	.L354	#,
	.loc 1 1571 0 discriminator 4
	movq	-136(%rbp), %rax	# x, tmp257
	movzbl	2(%rax), %eax	# x_26(D)->mode, D.22290
	movzbl	%al, %eax	# D.22290, D.22289
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22291
	cmpl	$6, %eax	#, D.22291
	jne	.L355	#,
.L354:
	.loc 1 1571 0 discriminator 3
	movl	$2, %eax	#, iftmp.236
	jmp	.L357	#
.L355:
	.loc 1 1571 0 discriminator 1
	movl	$1, %eax	#, iftmp.236
	jmp	.L357	#
.L353:
	.loc 1 1571 0 discriminator 2
	movq	-136(%rbp), %rax	# x, tmp259
	movzbl	2(%rax), %eax	# x_26(D)->mode, D.22290
	cmpb	$18, %al	#, D.22290
	jne	.L358	#,
	.loc 1 1571 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.239
	andl	$33554432, %eax	#, D.22289
	testl	%eax, %eax	# D.22289
	je	.L359	#,
	.loc 1 1571 0 discriminator 9
	movl	$2, %eax	#, iftmp.238
	jmp	.L357	#
.L359:
	.loc 1 1571 0 discriminator 10
	movl	$3, %eax	#, iftmp.238
	jmp	.L357	#
.L358:
	.loc 1 1571 0 discriminator 8
	movq	-136(%rbp), %rax	# x, tmp260
	movzbl	2(%rax), %eax	# x_26(D)->mode, D.22290
	cmpb	$24, %al	#, D.22290
	jne	.L362	#,
	.loc 1 1571 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.242
	andl	$33554432, %eax	#, D.22289
	testl	%eax, %eax	# D.22289
	je	.L363	#,
	.loc 1 1571 0 discriminator 13
	movl	$4, %eax	#, iftmp.241
	jmp	.L357	#
.L363:
	.loc 1 1571 0 discriminator 14
	movl	$6, %eax	#, iftmp.241
	jmp	.L357	#
.L362:
	.loc 1 1571 0 discriminator 12
	movq	-136(%rbp), %rax	# x, tmp261
	movzbl	2(%rax), %eax	# x_26(D)->mode, D.22290
	movzbl	%al, %eax	# D.22290, D.22289
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22290
	movzbl	%al, %edx	# D.22290, D.22289
	movl	target_flags(%rip), %eax	# target_flags, target_flags.244
	andl	$33554432, %eax	#, D.22289
	testl	%eax, %eax	# D.22289
	je	.L366	#,
	.loc 1 1571 0 discriminator 1
	movl	$8, %eax	#, iftmp.243
	jmp	.L367	#
.L366:
	.loc 1 1571 0 discriminator 2
	movl	$4, %eax	#, iftmp.243
.L367:
	.loc 1 1571 0 discriminator 3
	addl	%edx, %eax	# D.22289, D.22289
	subl	$1, %eax	#, D.22289
	movl	target_flags(%rip), %edx	# target_flags, target_flags.246
	andl	$33554432, %edx	#, D.22289
	testl	%edx, %edx	# D.22289
	je	.L368	#,
	.loc 1 1571 0 discriminator 1
	movl	$8, %ebx	#, iftmp.245
	jmp	.L369	#
.L368:
	.loc 1 1571 0 discriminator 2
	movl	$4, %ebx	#, iftmp.245
.L369:
	.loc 1 1571 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.245
.L357:
	.loc 1 1571 0 discriminator 6
	movl	-116(%rbp), %edx	# regno, tmp268
	addl	%edx, %eax	# tmp268, tmp267
	movl	%eax, -112(%rbp)	# tmp267, endregno
	.loc 1 1574 0 is_stmt 1 discriminator 6
	movl	-116(%rbp), %eax	# regno, tmp269
	movl	%eax, -120(%rbp)	# tmp269, i
	jmp	.L370	#
.L371:
	.loc 1 1575 0 discriminator 2
	movl	-120(%rbp), %eax	# i, i.247
	movl	$1, %edx	#, tmp270
	movl	%eax, %ecx	# i.247, tmp430
	salq	%cl, %rdx	# tmp430, D.22292
	movq	hard_regs_in_table(%rip), %rax	# hard_regs_in_table, hard_regs_in_table.248
	orq	%rdx, %rax	# D.22292, hard_regs_in_table.249
	movq	%rax, hard_regs_in_table(%rip)	# hard_regs_in_table.249, hard_regs_in_table
	.loc 1 1574 0 discriminator 2
	addl	$1, -120(%rbp)	#, i
.L370:
	.loc 1 1574 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax	# i, tmp271
	cmpl	-112(%rbp), %eax	# endregno, tmp271
	jb	.L371	#,
.L348:
.LBE21:
	.loc 1 1580 0 is_stmt 1
	movq	free_element_chain(%rip), %rax	# free_element_chain, tmp272
	movq	%rax, -96(%rbp)	# tmp272, elt
	.loc 1 1581 0
	cmpq	$0, -96(%rbp)	#, elt
	je	.L372	#,
	.loc 1 1582 0
	movq	-96(%rbp), %rax	# elt, tmp273
	movq	16(%rax), %rax	# elt_86->next_same_hash, free_element_chain.250
	movq	%rax, free_element_chain(%rip)	# free_element_chain.250, free_element_chain
	jmp	.L373	#
.L372:
	.loc 1 1585 0
	movl	n_elements_made(%rip), %eax	# n_elements_made, n_elements_made.251
	addl	$1, %eax	#, n_elements_made.252
	movl	%eax, n_elements_made(%rip)	# n_elements_made.252, n_elements_made
	.loc 1 1586 0
	movl	$80, %edi	#,
	call	xmalloc	#
	movq	%rax, -96(%rbp)	# tmp274, elt
.L373:
	.loc 1 1589 0
	movq	-96(%rbp), %rax	# elt, tmp275
	movq	-136(%rbp), %rdx	# x, tmp276
	movq	%rdx, (%rax)	# tmp276, elt_2->exp
	.loc 1 1590 0
	movq	-96(%rbp), %rax	# elt, tmp277
	movq	$0, 8(%rax)	#, elt_2->canon_exp
	.loc 1 1591 0
	movq	-136(%rbp), %rax	# x, tmp278
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$61, %ax	#, D.22287
	je	.L374	#,
	.loc 1 1591 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp279
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp279,
	call	notreg_cost	#
	jmp	.L375	#
.L374:
	.loc 1 1591 0 discriminator 2
	movl	$0, %eax	#, iftmp.253
.L375:
	.loc 1 1591 0 discriminator 3
	movq	-96(%rbp), %rdx	# elt, tmp280
	movl	%eax, 64(%rdx)	# iftmp.253, elt_2->cost
	.loc 1 1592 0 is_stmt 1 discriminator 3
	movq	-136(%rbp), %rax	# x, tmp281
	movq	%rax, %rdi	# tmp281,
	call	approx_reg_cost	#
	movq	-96(%rbp), %rdx	# elt, tmp282
	movl	%eax, 68(%rdx)	# D.22289, elt_2->regcost
	.loc 1 1593 0 discriminator 3
	movq	-96(%rbp), %rax	# elt, tmp283
	movq	$0, 32(%rax)	#, elt_2->next_same_value
	.loc 1 1594 0 discriminator 3
	movq	-96(%rbp), %rax	# elt, tmp284
	movq	$0, 40(%rax)	#, elt_2->prev_same_value
	.loc 1 1595 0 discriminator 3
	movl	-148(%rbp), %eax	# hash, tmp285
	movq	table(,%rax,8), %rdx	# table, D.22293
	movq	-96(%rbp), %rax	# elt, tmp286
	movq	%rdx, 16(%rax)	# D.22293, elt_2->next_same_hash
	.loc 1 1596 0 discriminator 3
	movq	-96(%rbp), %rax	# elt, tmp287
	movq	$0, 24(%rax)	#, elt_2->prev_same_hash
	.loc 1 1597 0 discriminator 3
	movq	-96(%rbp), %rax	# elt, tmp288
	movq	$0, 56(%rax)	#, elt_2->related_value
	.loc 1 1598 0 discriminator 3
	movq	-96(%rbp), %rax	# elt, tmp289
	movb	$0, 76(%rax)	#, elt_2->in_memory
	.loc 1 1599 0 discriminator 3
	movq	-96(%rbp), %rax	# elt, tmp290
	movl	-152(%rbp), %edx	# mode, tmp291
	movl	%edx, 72(%rax)	# tmp291, elt_2->mode
	.loc 1 1600 0 discriminator 3
	movq	-136(%rbp), %rax	# x, tmp292
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	.loc 1 1606 0 discriminator 3
	cmpw	$67, %ax	#, D.22287
	je	.L376	#,
	.loc 1 1600 0
	movq	-136(%rbp), %rax	# x, tmp293
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$68, %ax	#, D.22287
	je	.L376	#,
	.loc 1 1600 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp294
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$54, %ax	#, D.22287
	je	.L376	#,
	movq	-136(%rbp), %rax	# x, tmp295
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$55, %ax	#, D.22287
	je	.L376	#,
	movq	-136(%rbp), %rax	# x, tmp296
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$58, %ax	#, D.22287
	je	.L376	#,
	movq	-136(%rbp), %rax	# x, tmp297
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$134, %ax	#, D.22287
	je	.L376	#,
	movq	-136(%rbp), %rax	# x, tmp298
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$56, %ax	#, D.22287
	je	.L376	#,
	movq	-136(%rbp), %rax	# x, tmp299
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$140, %ax	#, D.22287
	je	.L376	#,
	.loc 1 1603 0 is_stmt 1
	movq	-136(%rbp), %rax	# x, tmp300
	movzbl	3(%rax), %eax	# *x_26(D), D.22290
	andl	$4, %eax	#, D.22290
	testb	%al, %al	# D.22290
	je	.L377	#,
	.loc 1 1604 0
	movq	-136(%rbp), %rax	# x, tmp301
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$61, %ax	#, D.22287
	jne	.L377	#,
	.loc 1 1605 0
	movq	-136(%rbp), %rax	# x, tmp302
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22288
	cmpl	$52, %eax	#, D.22288
	ja	.L376	#,
.L377:
	.loc 1 1606 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22294
	cmpq	-136(%rbp), %rax	# x, D.22294
	je	.L376	#,
	.loc 1 1606 0 is_stmt 0 discriminator 2
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22294
	cmpq	-136(%rbp), %rax	# x, D.22294
	je	.L376	#,
	.loc 1 1606 0 discriminator 1
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22294
	cmpq	-136(%rbp), %rax	# x, D.22294
	jne	.L378	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22295
	testb	%al, %al	# D.22295
	jne	.L376	#,
.L378:
	.loc 1 1606 0 discriminator 2
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22294
	cmpq	-136(%rbp), %rax	# x, D.22294
	je	.L376	#,
	.loc 1 1606 0 discriminator 1
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22294
	cmpq	-136(%rbp), %rax	# x, D.22294
	je	.L376	#,
	movq	-136(%rbp), %rax	# x, tmp303
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$75, %ax	#, D.22287
	jne	.L379	#,
	movq	-136(%rbp), %rax	# x, tmp304
	movq	16(%rax), %rax	# x_26(D)->fld[1].rtx, D.22294
	movzwl	(%rax), %eax	# _117->code, D.22287
	cmpw	$54, %ax	#, D.22287
	jne	.L379	#,
	movq	-136(%rbp), %rax	# x, tmp305
	movq	8(%rax), %rdx	# x_26(D)->fld[0].rtx, D.22294
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22294
	cmpq	%rax, %rdx	# D.22294, D.22294
	je	.L376	#,
	movq	-136(%rbp), %rax	# x, tmp306
	movq	8(%rax), %rdx	# x_26(D)->fld[0].rtx, D.22294
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22294
	cmpq	%rax, %rdx	# D.22294, D.22294
	je	.L376	#,
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22294
	cmpq	-136(%rbp), %rax	# x, D.22294
	jne	.L380	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22295
	testb	%al, %al	# D.22295
	jne	.L376	#,
.L380:
	.loc 1 1606 0 discriminator 2
	movq	-136(%rbp), %rax	# x, tmp307
	movq	8(%rax), %rdx	# x_26(D)->fld[0].rtx, D.22294
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22294
	cmpq	%rax, %rdx	# D.22294, D.22294
	je	.L376	#,
	.loc 1 1606 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp308
	movq	8(%rax), %rdx	# x_26(D)->fld[0].rtx, D.22294
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22294
	cmpq	%rax, %rdx	# D.22294, D.22294
	je	.L376	#,
.L379:
	.loc 1 1606 0 discriminator 2
	movq	-136(%rbp), %rax	# x, tmp309
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$70, %ax	#, D.22287
	jne	.L381	#,
.L376:
	.loc 1 1606 0 discriminator 1
	movl	$1, %eax	#, iftmp.254
	jmp	.L382	#
.L381:
	movl	$0, %eax	#, iftmp.254
.L382:
	.loc 1 1600 0 is_stmt 1
	movl	%eax, %edx	# iftmp.254, D.22295
	movq	-96(%rbp), %rax	# elt, tmp310
	movb	%dl, 77(%rax)	# D.22295, elt_2->is_const
	.loc 1 1608 0
	movl	-148(%rbp), %eax	# hash, tmp311
	movq	table(,%rax,8), %rax	# table, D.22293
	testq	%rax, %rax	# D.22293
	je	.L383	#,
	.loc 1 1609 0
	movl	-148(%rbp), %eax	# hash, tmp312
	movq	table(,%rax,8), %rax	# table, D.22293
	movq	-96(%rbp), %rdx	# elt, tmp313
	movq	%rdx, 24(%rax)	# tmp313, _134->prev_same_hash
.L383:
	.loc 1 1610 0
	movl	-148(%rbp), %eax	# hash, tmp314
	movq	-96(%rbp), %rdx	# elt, tmp315
	movq	%rdx, table(,%rax,8)	# tmp315, table
	.loc 1 1613 0
	cmpq	$0, -144(%rbp)	#, classp
	je	.L384	#,
	.loc 1 1615 0
	movq	-144(%rbp), %rax	# classp, tmp316
	movq	48(%rax), %rax	# classp_135(D)->first_same_value, tmp317
	movq	%rax, -144(%rbp)	# tmp317, classp
	.loc 1 1616 0
	movq	-144(%rbp), %rax	# classp, tmp318
	movl	68(%rax), %ecx	# classp_136->regcost, D.22289
	movq	-144(%rbp), %rax	# classp, tmp319
	movl	64(%rax), %edx	# classp_136->cost, D.22289
	movq	-96(%rbp), %rax	# elt, tmp320
	movl	68(%rax), %esi	# elt_2->regcost, D.22289
	movq	-96(%rbp), %rax	# elt, tmp321
	movl	64(%rax), %eax	# elt_2->cost, D.22289
	movl	%eax, %edi	# D.22289,
	call	preferrable	#
	testl	%eax, %eax	# D.22289
	jns	.L385	#,
.LBB22:
	.loc 1 1620 0
	movq	-96(%rbp), %rax	# elt, tmp322
	movq	-144(%rbp), %rdx	# classp, tmp323
	movq	%rdx, 32(%rax)	# tmp323, elt_2->next_same_value
	.loc 1 1621 0
	movq	-144(%rbp), %rax	# classp, tmp324
	movq	-96(%rbp), %rdx	# elt, tmp325
	movq	%rdx, 40(%rax)	# tmp325, classp_136->prev_same_value
	.loc 1 1622 0
	movq	-96(%rbp), %rax	# elt, tmp326
	movq	-96(%rbp), %rdx	# elt, tmp327
	movq	%rdx, 48(%rax)	# tmp327, elt_2->first_same_value
	.loc 1 1624 0
	movq	-144(%rbp), %rax	# classp, tmp328
	movq	%rax, -88(%rbp)	# tmp328, p
	jmp	.L386	#
.L387:
	.loc 1 1625 0 discriminator 2
	movq	-88(%rbp), %rax	# p, tmp329
	movq	-96(%rbp), %rdx	# elt, tmp330
	movq	%rdx, 48(%rax)	# tmp330, p_4->first_same_value
	.loc 1 1624 0 discriminator 2
	movq	-88(%rbp), %rax	# p, tmp331
	movq	32(%rax), %rax	# p_4->next_same_value, tmp332
	movq	%rax, -88(%rbp)	# tmp332, p
.L386:
	.loc 1 1624 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, p
	jne	.L387	#,
.LBE22:
	jmp	.L393	#
.L385:
.LBB23:
	.loc 1 1633 0 is_stmt 1
	movq	-144(%rbp), %rax	# classp, tmp333
	movq	%rax, -80(%rbp)	# tmp333, p
	jmp	.L389	#
.L391:
	.loc 1 1634 0
	movq	-48(%rbp), %rax	# next, tmp334
	movq	%rax, -80(%rbp)	# tmp334, p
.L389:
	.loc 1 1633 0 discriminator 1
	movq	-80(%rbp), %rax	# p, tmp335
	movq	32(%rax), %rax	# p_5->next_same_value, tmp336
	movq	%rax, -48(%rbp)	# tmp336, next
	cmpq	$0, -48(%rbp)	#, next
	je	.L390	#,
	.loc 1 1633 0 is_stmt 0 discriminator 2
	movq	-96(%rbp), %rax	# elt, tmp337
	movl	68(%rax), %ecx	# elt_2->regcost, D.22289
	movq	-96(%rbp), %rax	# elt, tmp338
	movl	64(%rax), %edx	# elt_2->cost, D.22289
	movq	-48(%rbp), %rax	# next, tmp339
	movl	68(%rax), %esi	# next_145->regcost, D.22289
	movq	-48(%rbp), %rax	# next, tmp340
	movl	64(%rax), %eax	# next_145->cost, D.22289
	movl	%eax, %edi	# D.22289,
	call	preferrable	#
	testl	%eax, %eax	# D.22289
	js	.L391	#,
.L390:
	.loc 1 1637 0 is_stmt 1
	movq	-96(%rbp), %rax	# elt, tmp341
	movq	-48(%rbp), %rdx	# next, tmp342
	movq	%rdx, 32(%rax)	# tmp342, elt_2->next_same_value
	.loc 1 1638 0
	cmpq	$0, -48(%rbp)	#, next
	je	.L392	#,
	.loc 1 1639 0
	movq	-48(%rbp), %rax	# next, tmp343
	movq	-96(%rbp), %rdx	# elt, tmp344
	movq	%rdx, 40(%rax)	# tmp344, next_145->prev_same_value
.L392:
	.loc 1 1641 0
	movq	-96(%rbp), %rax	# elt, tmp345
	movq	-80(%rbp), %rdx	# p, tmp346
	movq	%rdx, 40(%rax)	# tmp346, elt_2->prev_same_value
	.loc 1 1642 0
	movq	-80(%rbp), %rax	# p, tmp347
	movq	-96(%rbp), %rdx	# elt, tmp348
	movq	%rdx, 32(%rax)	# tmp348, p_5->next_same_value
	.loc 1 1643 0
	movq	-96(%rbp), %rax	# elt, tmp349
	movq	-144(%rbp), %rdx	# classp, tmp350
	movq	%rdx, 48(%rax)	# tmp350, elt_2->first_same_value
	jmp	.L393	#
.L384:
.LBE23:
	.loc 1 1647 0
	movq	-96(%rbp), %rax	# elt, tmp351
	movq	-96(%rbp), %rdx	# elt, tmp352
	movq	%rdx, 48(%rax)	# tmp352, elt_2->first_same_value
.L393:
	.loc 1 1664 0
	movq	-96(%rbp), %rax	# elt, tmp353
	movzbl	77(%rax), %eax	# elt_2->is_const, D.22295
	testb	%al, %al	# D.22295
	je	.L394	#,
	.loc 1 1664 0 is_stmt 0 discriminator 1
	cmpq	$0, -144(%rbp)	#, classp
	je	.L394	#,
	movq	-144(%rbp), %rax	# classp, tmp354
	movq	(%rax), %rax	# classp_1->exp, D.22294
	movzwl	(%rax), %eax	# _153->code, D.22287
	cmpw	$61, %ax	#, D.22287
	jne	.L394	#,
	.loc 1 1665 0 is_stmt 1
	movq	-136(%rbp), %rax	# x, tmp355
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$61, %ax	#, D.22287
	je	.L394	#,
.LBB24:
	.loc 1 1667 0
	movq	-144(%rbp), %rax	# classp, tmp356
	movq	(%rax), %rax	# classp_1->exp, D.22294
	movl	8(%rax), %edx	# _156->fld[0].rtuint, D.22288
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.256
	cmpl	%eax, %edx	# cached_regno.256, D.22288
	jne	.L395	#,
	.loc 1 1667 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.257
	testq	%rax, %rax	# cached_cse_reg_info.257
	jne	.L396	#,
.L395:
	.loc 1 1667 0 discriminator 1
	movq	-144(%rbp), %rax	# classp, tmp357
	movq	(%rax), %rax	# classp_1->exp, D.22294
	movl	8(%rax), %eax	# _161->fld[0].rtuint, D.22288
	movl	%eax, %edi	# D.22288,
	call	get_cse_reg_info	#
	jmp	.L397	#
.L396:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.255
.L397:
	.loc 1 1667 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.255_20->reg_qty, tmp358
	movl	%eax, -108(%rbp)	# tmp358, exp_q
	.loc 1 1668 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.258
	movl	-108(%rbp), %eax	# exp_q, tmp359
	movslq	%eax, %rdx	# tmp359, D.22292
	movq	%rdx, %rax	# D.22292, tmp360
	addq	%rax, %rax	# tmp360
	addq	%rdx, %rax	# D.22292, tmp360
	salq	$4, %rax	#, tmp361
	addq	%rcx, %rax	# qty_table.258, tmp362
	movq	%rax, -40(%rbp)	# tmp362, exp_ent
	.loc 1 1670 0 discriminator 3
	movq	-40(%rbp), %rax	# exp_ent, tmp363
	movl	36(%rax), %eax	# exp_ent_168->mode, D.22296
	movq	-136(%rbp), %rdx	# x, tmp364
	movq	%rdx, %rsi	# tmp364,
	movl	%eax, %edi	# D.22296,
	call	gen_lowpart_if_possible	#
	movq	-40(%rbp), %rdx	# exp_ent, tmp365
	movq	%rax, (%rdx)	# D.22294, exp_ent_168->const_rtx
	.loc 1 1671 0 discriminator 3
	movq	this_insn(%rip), %rdx	# this_insn, this_insn.259
	movq	-40(%rbp), %rax	# exp_ent, tmp366
	movq	%rdx, 8(%rax)	# this_insn.259, exp_ent_168->const_insn
.LBE24:
	.loc 1 1666 0 discriminator 3
	jmp	.L398	#
.L394:
	.loc 1 1674 0
	movq	-136(%rbp), %rax	# x, tmp367
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$61, %ax	#, D.22287
	jne	.L399	#,
	.loc 1 1675 0
	cmpq	$0, -144(%rbp)	#, classp
	je	.L399	#,
	.loc 1 1676 0
	movq	qty_table(%rip), %rbx	# qty_table, qty_table.260
	movq	-136(%rbp), %rax	# x, tmp368
	movl	8(%rax), %edx	# x_26(D)->fld[0].rtuint, D.22288
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.262
	cmpl	%eax, %edx	# cached_regno.262, D.22288
	jne	.L400	#,
	.loc 1 1676 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.263
	testq	%rax, %rax	# cached_cse_reg_info.263
	jne	.L401	#,
.L400:
	.loc 1 1676 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp369
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22288
	movl	%eax, %edi	# D.22288,
	call	get_cse_reg_info	#
	jmp	.L402	#
.L401:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.261
.L402:
	.loc 1 1676 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.261_21->reg_qty, D.22289
	movslq	%eax, %rdx	# D.22289, D.22292
	movq	%rdx, %rax	# D.22292, tmp370
	addq	%rax, %rax	# tmp370
	addq	%rdx, %rax	# D.22292, tmp370
	salq	$4, %rax	#, tmp371
	addq	%rbx, %rax	# qty_table.260, D.22297
	movq	(%rax), %rax	# _183->const_rtx, D.22294
	testq	%rax, %rax	# D.22294
	jne	.L399	#,
	.loc 1 1677 0 is_stmt 1
	movq	-96(%rbp), %rax	# elt, tmp372
	movzbl	77(%rax), %eax	# elt_2->is_const, D.22295
	testb	%al, %al	# D.22295
	jne	.L399	#,
.LBB25:
	.loc 1 1681 0
	movq	-144(%rbp), %rax	# classp, tmp373
	movq	%rax, -72(%rbp)	# tmp373, p
	jmp	.L403	#
.L409:
	.loc 1 1683 0
	movq	-72(%rbp), %rax	# p, tmp374
	movzbl	77(%rax), %eax	# p_6->is_const, D.22295
	testb	%al, %al	# D.22295
	je	.L404	#,
	.loc 1 1683 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p, tmp375
	movq	(%rax), %rax	# p_6->exp, D.22294
	movzwl	(%rax), %eax	# _188->code, D.22287
	cmpw	$61, %ax	#, D.22287
	je	.L404	#,
.LBB26:
	.loc 1 1685 0 is_stmt 1
	movq	-136(%rbp), %rax	# x, tmp376
	movl	8(%rax), %edx	# x_26(D)->fld[0].rtuint, D.22288
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.265
	cmpl	%eax, %edx	# cached_regno.265, D.22288
	jne	.L405	#,
	.loc 1 1685 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.266
	testq	%rax, %rax	# cached_cse_reg_info.266
	jne	.L406	#,
.L405:
	.loc 1 1685 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp377
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22288
	movl	%eax, %edi	# D.22288,
	call	get_cse_reg_info	#
	jmp	.L407	#
.L406:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.264
.L407:
	.loc 1 1685 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.264_22->reg_qty, tmp378
	movl	%eax, -104(%rbp)	# tmp378, x_q
	.loc 1 1686 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.267
	movl	-104(%rbp), %eax	# x_q, tmp379
	movslq	%eax, %rdx	# tmp379, D.22292
	movq	%rdx, %rax	# D.22292, tmp380
	addq	%rax, %rax	# tmp380
	addq	%rdx, %rax	# D.22292, tmp380
	salq	$4, %rax	#, tmp381
	addq	%rcx, %rax	# qty_table.267, tmp382
	movq	%rax, -32(%rbp)	# tmp382, x_ent
	.loc 1 1689 0 discriminator 3
	movq	-72(%rbp), %rax	# p, tmp383
	movq	(%rax), %rdx	# p_6->exp, D.22294
	movq	-136(%rbp), %rax	# x, tmp384
	movzbl	2(%rax), %eax	# x_26(D)->mode, D.22290
	movzbl	%al, %eax	# D.22290, D.22296
	movq	%rdx, %rsi	# D.22294,
	movl	%eax, %edi	# D.22296,
	call	gen_lowpart_if_possible	#
	movq	-32(%rbp), %rdx	# x_ent, tmp385
	movq	%rax, (%rdx)	# D.22294, x_ent_200->const_rtx
	.loc 1 1690 0 discriminator 3
	movq	this_insn(%rip), %rdx	# this_insn, this_insn.268
	movq	-32(%rbp), %rax	# x_ent, tmp386
	movq	%rdx, 8(%rax)	# this_insn.268, x_ent_200->const_insn
	.loc 1 1691 0 discriminator 3
	jmp	.L408	#
.L404:
.LBE26:
	.loc 1 1681 0
	movq	-72(%rbp), %rax	# p, tmp387
	movq	32(%rax), %rax	# p_6->next_same_value, tmp388
	movq	%rax, -72(%rbp)	# tmp388, p
.L403:
	.loc 1 1681 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, p
	jne	.L409	#,
.L408:
.LBE25:
	.loc 1 1678 0 is_stmt 1
	jmp	.L398	#
.L399:
	.loc 1 1696 0
	movq	-136(%rbp), %rax	# x, tmp389
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$61, %ax	#, D.22287
	jne	.L398	#,
	.loc 1 1697 0
	movq	qty_table(%rip), %rbx	# qty_table, qty_table.269
	movq	-136(%rbp), %rax	# x, tmp390
	movl	8(%rax), %edx	# x_26(D)->fld[0].rtuint, D.22288
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.271
	cmpl	%eax, %edx	# cached_regno.271, D.22288
	jne	.L410	#,
	.loc 1 1697 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.272
	testq	%rax, %rax	# cached_cse_reg_info.272
	jne	.L411	#,
.L410:
	.loc 1 1697 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp391
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22288
	movl	%eax, %edi	# D.22288,
	call	get_cse_reg_info	#
	jmp	.L412	#
.L411:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.270
.L412:
	.loc 1 1697 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.270_23->reg_qty, D.22289
	movslq	%eax, %rdx	# D.22289, D.22292
	movq	%rdx, %rax	# D.22292, tmp392
	addq	%rax, %rax	# tmp392
	addq	%rdx, %rax	# D.22292, tmp392
	salq	$4, %rax	#, tmp393
	addq	%rbx, %rax	# qty_table.269, D.22297
	movq	(%rax), %rax	# _218->const_rtx, D.22294
	testq	%rax, %rax	# D.22294
	je	.L398	#,
	.loc 1 1698 0 is_stmt 1
	movq	-136(%rbp), %rax	# x, tmp394
	movzbl	2(%rax), %eax	# x_26(D)->mode, D.22290
	movzbl	%al, %ebx	# D.22290, D.22288
	movq	qty_table(%rip), %r12	# qty_table, qty_table.273
	movq	-136(%rbp), %rax	# x, tmp395
	movl	8(%rax), %edx	# x_26(D)->fld[0].rtuint, D.22288
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.275
	cmpl	%eax, %edx	# cached_regno.275, D.22288
	jne	.L413	#,
	.loc 1 1698 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.276
	testq	%rax, %rax	# cached_cse_reg_info.276
	jne	.L414	#,
.L413:
	.loc 1 1698 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp396
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22288
	movl	%eax, %edi	# D.22288,
	call	get_cse_reg_info	#
	jmp	.L415	#
.L414:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.274
.L415:
	.loc 1 1698 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.274_24->reg_qty, D.22289
	movslq	%eax, %rdx	# D.22289, D.22292
	movq	%rdx, %rax	# D.22292, tmp397
	addq	%rax, %rax	# tmp397
	addq	%rdx, %rax	# D.22292, tmp397
	salq	$4, %rax	#, tmp398
	addq	%r12, %rax	# qty_table.273, D.22297
	movl	36(%rax), %eax	# _232->mode, D.22296
	cmpl	%eax, %ebx	# D.22296, D.22288
	jne	.L398	#,
	.loc 1 1699 0 is_stmt 1
	movq	qty_table(%rip), %rbx	# qty_table, qty_table.277
	movq	-136(%rbp), %rax	# x, tmp399
	movl	8(%rax), %edx	# x_26(D)->fld[0].rtuint, D.22288
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.279
	cmpl	%eax, %edx	# cached_regno.279, D.22288
	jne	.L416	#,
	.loc 1 1699 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.280
	testq	%rax, %rax	# cached_cse_reg_info.280
	jne	.L417	#,
.L416:
	.loc 1 1699 0 discriminator 1
	movq	-136(%rbp), %rax	# x, tmp400
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22288
	movl	%eax, %edi	# D.22288,
	call	get_cse_reg_info	#
	jmp	.L418	#
.L417:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.278
.L418:
	.loc 1 1699 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.278_25->reg_qty, D.22289
	movslq	%eax, %rdx	# D.22289, D.22292
	movq	%rdx, %rax	# D.22292, tmp401
	addq	%rax, %rax	# tmp401
	addq	%rdx, %rax	# D.22292, tmp401
	salq	$4, %rax	#, tmp402
	leaq	(%rbx,%rax), %rdx	#, D.22297
	movq	this_insn(%rip), %rax	# this_insn, this_insn.281
	movq	%rax, 8(%rdx)	# this_insn.281, _244->const_insn
.L398:
	.loc 1 1704 0 is_stmt 1
	movq	-136(%rbp), %rax	# x, tmp403
	movzwl	(%rax), %eax	# x_26(D)->code, D.22287
	cmpw	$58, %ax	#, D.22287
	jne	.L419	#,
.LBB27:
	.loc 1 1706 0
	movq	-136(%rbp), %rax	# x, tmp404
	movq	%rax, %rdi	# tmp404,
	call	get_related_value	#
	movq	%rax, -24(%rbp)	# tmp405, subexp
	.loc 1 1710 0
	cmpq	$0, -24(%rbp)	#, subexp
	je	.L419	#,
	.loc 1 1713 0
	movl	-152(%rbp), %edx	# mode, tmp406
	movq	-24(%rbp), %rax	# subexp, tmp407
	movl	%edx, %esi	# tmp406,
	movq	%rax, %rdi	# tmp407,
	call	safe_hash	#
	andl	$31, %eax	#, tmp408
	movl	%eax, -100(%rbp)	# tmp408, subhash
	.loc 1 1714 0
	movl	-152(%rbp), %edx	# mode, tmp409
	movl	-100(%rbp), %ecx	# subhash, tmp410
	movq	-24(%rbp), %rax	# subexp, tmp411
	movl	%ecx, %esi	# tmp410,
	movq	%rax, %rdi	# tmp411,
	call	lookup	#
	movq	%rax, -64(%rbp)	# tmp412, subelt
	.loc 1 1715 0
	cmpq	$0, -64(%rbp)	#, subelt
	jne	.L420	#,
	.loc 1 1716 0
	movl	-152(%rbp), %ecx	# mode, tmp413
	movl	-100(%rbp), %edx	# subhash, tmp414
	movq	-24(%rbp), %rax	# subexp, tmp415
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp415,
	call	insert	#
	movq	%rax, -64(%rbp)	# tmp416, subelt
.L420:
	.loc 1 1718 0
	movq	-64(%rbp), %rax	# subelt, tmp417
	movq	56(%rax), %rax	# subelt_7->related_value, D.22293
	testq	%rax, %rax	# D.22293
	jne	.L421	#,
	.loc 1 1719 0
	movq	-64(%rbp), %rax	# subelt, tmp418
	movq	-64(%rbp), %rdx	# subelt, tmp419
	movq	%rdx, 56(%rax)	# tmp419, subelt_7->related_value
.L421:
	.loc 1 1721 0
	movq	-64(%rbp), %rax	# subelt, tmp420
	movq	%rax, -56(%rbp)	# tmp420, subelt_prev
	.loc 1 1722 0
	jmp	.L422	#
.L423:
	.loc 1 1723 0
	movq	-56(%rbp), %rax	# subelt_prev, tmp421
	movq	56(%rax), %rax	# subelt_prev_8->related_value, tmp422
	movq	%rax, -56(%rbp)	# tmp422, subelt_prev
.L422:
	.loc 1 1722 0 discriminator 1
	movq	-56(%rbp), %rax	# subelt_prev, tmp423
	movq	56(%rax), %rax	# subelt_prev_8->related_value, D.22293
	cmpq	-64(%rbp), %rax	# subelt, D.22293
	jne	.L423	#,
	.loc 1 1726 0
	movq	-56(%rbp), %rax	# subelt_prev, tmp424
	movq	56(%rax), %rdx	# subelt_prev_8->related_value, D.22293
	movq	-96(%rbp), %rax	# elt, tmp425
	movq	%rdx, 56(%rax)	# D.22293, elt_2->related_value
	.loc 1 1727 0
	movq	-56(%rbp), %rax	# subelt_prev, tmp426
	movq	-96(%rbp), %rdx	# elt, tmp427
	movq	%rdx, 56(%rax)	# tmp427, subelt_prev_8->related_value
.L419:
.LBE27:
	.loc 1 1731 0
	movq	-96(%rbp), %rax	# elt, D.22293
	.loc 1 1732 0
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	insert, .-insert
	.type	merge_equiv_classes, @function
merge_equiv_classes:
.LFB21:
	.loc 1 1746 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# class1, class1
	movq	%rsi, -64(%rbp)	# class2, class2
	.loc 1 1750 0
	movq	-56(%rbp), %rax	# class1, tmp88
	movq	48(%rax), %rax	# class1_7(D)->first_same_value, tmp89
	movq	%rax, -56(%rbp)	# tmp89, class1
	.loc 1 1751 0
	movq	-64(%rbp), %rax	# class2, tmp90
	movq	48(%rax), %rax	# class2_9(D)->first_same_value, tmp91
	movq	%rax, -64(%rbp)	# tmp91, class2
	.loc 1 1754 0
	movq	-56(%rbp), %rax	# class1, tmp92
	cmpq	-64(%rbp), %rax	# class2, tmp92
	jne	.L426	#,
	.loc 1 1755 0
	jmp	.L425	#
.L426:
	.loc 1 1757 0
	movq	-64(%rbp), %rax	# class2, tmp93
	movq	%rax, -32(%rbp)	# tmp93, elt
	jmp	.L428	#
.L443:
.LBB28:
	.loc 1 1760 0
	movq	-32(%rbp), %rax	# elt, tmp94
	movq	(%rax), %rax	# elt_1->exp, tmp95
	movq	%rax, -24(%rbp)	# tmp95, exp
	.loc 1 1761 0
	movq	-32(%rbp), %rax	# elt, tmp96
	movl	72(%rax), %eax	# elt_1->mode, tmp97
	movl	%eax, -36(%rbp)	# tmp97, mode
	.loc 1 1763 0
	movq	-32(%rbp), %rax	# elt, tmp98
	movq	32(%rax), %rax	# elt_1->next_same_value, tmp99
	movq	%rax, -16(%rbp)	# tmp99, next
	.loc 1 1768 0
	movq	-24(%rbp), %rax	# exp, tmp100
	movzwl	(%rax), %eax	# exp_12->code, D.22298
	cmpw	$61, %ax	#, D.22298
	je	.L429	#,
	.loc 1 1768 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rsi	# exp, tmp101
	movq	-24(%rbp), %rax	# exp, tmp102
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp102,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22299
	je	.L430	#,
.L429:
	.loc 1 1770 0 is_stmt 1
	movl	$0, hash_arg_in_memory(%rip)	#, hash_arg_in_memory
	.loc 1 1771 0
	movq	-24(%rbp), %rax	# exp, tmp103
	movzwl	(%rax), %eax	# exp_12->code, D.22298
	cmpw	$61, %ax	#, D.22298
	jne	.L431	#,
	.loc 1 1771 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# exp, tmp104
	movl	8(%rax), %eax	# exp_12->fld[0].rtuint, D.22300
	cmpl	$52, %eax	#, D.22300
	jbe	.L431	#,
	movq	-24(%rbp), %rax	# exp, tmp105
	movl	8(%rax), %edx	# exp_12->fld[0].rtuint, D.22300
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.284
	cmpl	%eax, %edx	# cached_regno.284, D.22300
	jne	.L432	#,
	.loc 1 1771 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.285
	testq	%rax, %rax	# cached_cse_reg_info.285
	jne	.L433	#,
.L432:
	.loc 1 1771 0 discriminator 1
	movq	-24(%rbp), %rax	# exp, tmp106
	movl	8(%rax), %eax	# exp_12->fld[0].rtuint, D.22300
	movl	%eax, %edi	# D.22300,
	call	get_cse_reg_info	#
	jmp	.L434	#
.L433:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.283
.L434:
	.loc 1 1771 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.283_4->reg_qty, D.22299
	andl	$31, %eax	#, iftmp.282
	jmp	.L435	#
.L431:
	.loc 1 1771 0 discriminator 2
	movl	-36(%rbp), %edx	# mode, tmp107
	movq	-24(%rbp), %rax	# exp, tmp108
	movl	%edx, %esi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.282
.L435:
	.loc 1 1771 0 discriminator 3
	movl	%eax, -40(%rbp)	# iftmp.282, hash
	.loc 1 1773 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# exp, tmp109
	movzwl	(%rax), %eax	# exp_12->code, D.22298
	cmpw	$61, %ax	#, D.22298
	jne	.L436	#,
	.loc 1 1774 0
	movq	-24(%rbp), %rax	# exp, tmp110
	movl	8(%rax), %eax	# exp_12->fld[0].rtuint, D.22300
	movl	%eax, %edi	# D.22300,
	call	delete_reg_equiv	#
.L436:
	.loc 1 1776 0
	movl	-40(%rbp), %edx	# hash, tmp111
	movq	-32(%rbp), %rax	# elt, tmp112
	movl	%edx, %esi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	remove_from_table	#
	.loc 1 1778 0
	movq	-56(%rbp), %rcx	# class1, tmp113
	movq	-24(%rbp), %rax	# exp, tmp114
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	insert_regs	#
	testl	%eax, %eax	# D.22299
	je	.L437	#,
	.loc 1 1780 0
	movq	-24(%rbp), %rax	# exp, tmp115
	movq	%rax, %rdi	# tmp115,
	call	rehash_using_reg	#
	.loc 1 1781 0
	movq	-24(%rbp), %rax	# exp, tmp116
	movzwl	(%rax), %eax	# exp_12->code, D.22298
	cmpw	$61, %ax	#, D.22298
	jne	.L438	#,
	.loc 1 1781 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# exp, tmp117
	movl	8(%rax), %eax	# exp_12->fld[0].rtuint, D.22300
	cmpl	$52, %eax	#, D.22300
	jbe	.L438	#,
	movq	-24(%rbp), %rax	# exp, tmp118
	movl	8(%rax), %edx	# exp_12->fld[0].rtuint, D.22300
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.288
	cmpl	%eax, %edx	# cached_regno.288, D.22300
	jne	.L439	#,
	.loc 1 1781 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.289
	testq	%rax, %rax	# cached_cse_reg_info.289
	jne	.L440	#,
.L439:
	.loc 1 1781 0 discriminator 1
	movq	-24(%rbp), %rax	# exp, tmp119
	movl	8(%rax), %eax	# exp_12->fld[0].rtuint, D.22300
	movl	%eax, %edi	# D.22300,
	call	get_cse_reg_info	#
	jmp	.L441	#
.L440:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.287
.L441:
	.loc 1 1781 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.287_6->reg_qty, D.22299
	andl	$31, %eax	#, iftmp.286
	jmp	.L442	#
.L438:
	.loc 1 1781 0 discriminator 2
	movl	-36(%rbp), %edx	# mode, tmp120
	movq	-24(%rbp), %rax	# exp, tmp121
	movl	%edx, %esi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.286
.L442:
	.loc 1 1781 0 discriminator 3
	movl	%eax, -40(%rbp)	# iftmp.286, hash
.L437:
	.loc 1 1783 0 is_stmt 1
	movl	-36(%rbp), %ecx	# mode, tmp122
	movl	-40(%rbp), %edx	# hash, tmp123
	movq	-56(%rbp), %rsi	# class1, tmp124
	movq	-24(%rbp), %rax	# exp, tmp125
	movq	%rax, %rdi	# tmp125,
	call	insert	#
	movq	%rax, -8(%rbp)	# tmp126, new
	.loc 1 1784 0
	movl	hash_arg_in_memory(%rip), %eax	# hash_arg_in_memory, hash_arg_in_memory.290
	movl	%eax, %edx	# hash_arg_in_memory.290, D.22301
	movq	-8(%rbp), %rax	# new, tmp127
	movb	%dl, 76(%rax)	# D.22301, new_48->in_memory
.L430:
.LBE28:
	.loc 1 1757 0
	movq	-16(%rbp), %rax	# next, tmp128
	movq	%rax, -32(%rbp)	# tmp128, elt
.L428:
	.loc 1 1757 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, elt
	jne	.L443	#,
.L425:
	.loc 1 1787 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	merge_equiv_classes, .-merge_equiv_classes
	.type	flush_hash_table, @function
flush_hash_table:
.LFB22:
	.loc 1 1793 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1797 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L445	#
.L450:
	.loc 1 1798 0
	movl	-12(%rbp), %eax	# i, tmp65
	cltq
	movq	table(,%rax,8), %rax	# table, tmp66
	movq	%rax, -8(%rbp)	# tmp66, p
	jmp	.L446	#
.L449:
	.loc 1 1802 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	(%rax), %rax	# p_2->exp, D.22302
	movzwl	(%rax), %eax	# _5->code, D.22303
	cmpw	$61, %ax	#, D.22303
	jne	.L447	#,
	.loc 1 1803 0
	movq	-8(%rbp), %rax	# p, tmp68
	movl	72(%rax), %edx	# p_2->mode, D.22304
	movq	-8(%rbp), %rax	# p, tmp69
	movq	(%rax), %rax	# p_2->exp, D.22302
	movl	%edx, %esi	# D.22304,
	movq	%rax, %rdi	# D.22302,
	call	invalidate	#
	jmp	.L448	#
.L447:
	.loc 1 1805 0
	movl	-12(%rbp), %edx	# i, i.291
	movq	-8(%rbp), %rax	# p, tmp70
	movl	%edx, %esi	# i.291,
	movq	%rax, %rdi	# tmp70,
	call	remove_from_table	#
.L448:
	.loc 1 1798 0
	movl	-12(%rbp), %eax	# i, tmp72
	cltq
	movq	table(,%rax,8), %rax	# table, tmp73
	movq	%rax, -8(%rbp)	# tmp73, p
.L446:
	.loc 1 1798 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L449	#,
	.loc 1 1797 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L445:
	.loc 1 1797 0 is_stmt 0 discriminator 1
	cmpl	$31, -12(%rbp)	#, i
	jle	.L450	#,
	.loc 1 1807 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	flush_hash_table, .-flush_hash_table
	.type	check_dependence, @function
check_dependence:
.LFB23:
	.loc 1 1820 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 1821 0
	movq	-32(%rbp), %rax	# data, tmp67
	movq	%rax, -8(%rbp)	# tmp67, d
	.loc 1 1822 0
	movq	-24(%rbp), %rax	# x, tmp68
	movq	(%rax), %rax	# *x_4(D), D.22306
	testq	%rax, %rax	# D.22306
	je	.L452	#,
	.loc 1 1822 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp69
	movq	(%rax), %rax	# *x_4(D), D.22306
	movzwl	(%rax), %eax	# _6->code, D.22307
	cmpw	$66, %ax	#, D.22307
	jne	.L452	#,
	.loc 1 1823 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp70
	movq	(%rax), %rdx	# *x_4(D), D.22306
	movq	-8(%rbp), %rax	# d, tmp71
	movl	(%rax), %esi	# d_3->mode, D.22308
	movq	-8(%rbp), %rax	# d, tmp72
	movq	8(%rax), %rax	# d_3->exp, D.22306
	movl	$cse_rtx_varies_p, %ecx	#,
	movq	%rax, %rdi	# D.22306,
	call	true_dependence	#
	jmp	.L453	#
.L452:
	.loc 1 1825 0
	movl	$0, %eax	#, D.22305
.L453:
	.loc 1 1826 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	check_dependence, .-check_dependence
	.type	invalidate, @function
invalidate:
.LFB24:
	.loc 1 1844 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# x, x
	movl	%esi, -124(%rbp)	# full_mode, full_mode
	.loc 1 1848 0
	movq	-120(%rbp), %rax	# x, tmp192
	movzwl	(%rax), %eax	# x_29(D)->code, D.22309
	movzwl	%ax, %eax	# D.22309, D.22310
	cmpl	$61, %eax	#, D.22310
	je	.L456	#,
	cmpl	$61, %eax	#, D.22310
	ja	.L457	#,
	cmpl	$3, %eax	#, D.22310
	je	.L458	#,
	cmpl	$39, %eax	#, D.22310
	je	.L459	#,
	jmp	.L455	#
.L457:
	cmpl	$63, %eax	#, D.22310
	je	.L460	#,
	cmpl	$66, %eax	#, D.22310
	je	.L461	#,
	jmp	.L455	#
.L456:
.LBB29:
	.loc 1 1856 0
	movq	-120(%rbp), %rax	# x, tmp193
	movl	8(%rax), %eax	# x_29(D)->fld[0].rtuint, tmp194
	movl	%eax, -96(%rbp)	# tmp194, regno
	.loc 1 1857 0
	movq	-120(%rbp), %rax	# x, tmp195
	movzwl	(%rax), %eax	# x_29(D)->code, D.22309
	cmpw	$61, %ax	#, D.22309
	jne	.L462	#,
	.loc 1 1857 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# x, tmp196
	movl	8(%rax), %eax	# x_29(D)->fld[0].rtuint, D.22310
	cmpl	$52, %eax	#, D.22310
	jbe	.L462	#,
	movq	-120(%rbp), %rax	# x, tmp197
	movl	8(%rax), %edx	# x_29(D)->fld[0].rtuint, D.22310
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.294
	cmpl	%eax, %edx	# cached_regno.294, D.22310
	jne	.L463	#,
	.loc 1 1857 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.295
	testq	%rax, %rax	# cached_cse_reg_info.295
	jne	.L464	#,
.L463:
	.loc 1 1857 0 discriminator 1
	movq	-120(%rbp), %rax	# x, tmp198
	movl	8(%rax), %eax	# x_29(D)->fld[0].rtuint, D.22310
	movl	%eax, %edi	# D.22310,
	call	get_cse_reg_info	#
	jmp	.L465	#
.L464:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.293
.L465:
	.loc 1 1857 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.293_10->reg_qty, D.22311
	andl	$31, %eax	#, iftmp.292
	jmp	.L466	#
.L462:
	.loc 1 1857 0 discriminator 2
	movq	-120(%rbp), %rax	# x, tmp199
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.22312
	movzbl	%al, %edx	# D.22312, D.22313
	movq	-120(%rbp), %rax	# x, tmp200
	movl	%edx, %esi	# D.22313,
	movq	%rax, %rdi	# tmp200,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.292
.L466:
	.loc 1 1857 0 discriminator 3
	movl	%eax, -104(%rbp)	# iftmp.292, hash
	.loc 1 1868 0 is_stmt 1 discriminator 3
	movl	-96(%rbp), %eax	# regno, tmp201
	movl	%eax, %edi	# tmp201,
	call	delete_reg_equiv	#
	.loc 1 1869 0 discriminator 3
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.297
	cmpl	%eax, -96(%rbp)	# cached_regno.297, regno
	jne	.L467	#,
	.loc 1 1869 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.298
	testq	%rax, %rax	# cached_cse_reg_info.298
	jne	.L468	#,
.L467:
	.loc 1 1869 0 discriminator 1
	movl	-96(%rbp), %eax	# regno, tmp202
	movl	%eax, %edi	# tmp202,
	call	get_cse_reg_info	#
	jmp	.L469	#
.L468:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.296
.L469:
	.loc 1 1869 0 discriminator 3
	movl	24(%rax), %edx	# iftmp.296_11->reg_tick, D.22311
	addl	$1, %edx	#, D.22311
	movl	%edx, 24(%rax)	# D.22311, iftmp.296_11->reg_tick
	.loc 1 1871 0 is_stmt 1 discriminator 3
	cmpl	$52, -96(%rbp)	#, regno
	jbe	.L470	#,
.LBB30:
	.loc 1 1877 0
	jmp	.L471	#
.L472:
	.loc 1 1878 0
	movl	-104(%rbp), %edx	# hash, tmp203
	movq	-56(%rbp), %rax	# elt, tmp204
	movl	%edx, %esi	# tmp203,
	movq	%rax, %rdi	# tmp204,
	call	remove_from_table	#
.L471:
	.loc 1 1877 0 discriminator 1
	movq	-120(%rbp), %rax	# x, tmp205
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.22312
	movzbl	%al, %edx	# D.22312, D.22313
	movl	-104(%rbp), %ecx	# hash, tmp206
	movq	-120(%rbp), %rax	# x, tmp207
	movl	%ecx, %esi	# tmp206,
	movq	%rax, %rdi	# tmp207,
	call	lookup_for_remove	#
	movq	%rax, -56(%rbp)	# tmp208, elt
	cmpq	$0, -56(%rbp)	#, elt
	jne	.L472	#,
.LBE30:
	jmp	.L473	#
.L470:
.LBB31:
	.loc 1 1883 0
	movl	-96(%rbp), %eax	# regno, regno.299
	movl	$1, %edx	#, tmp209
	movl	%eax, %ecx	# regno.299, tmp287
	salq	%cl, %rdx	# tmp287, D.22314
	movq	hard_regs_in_table(%rip), %rax	# hard_regs_in_table, hard_regs_in_table.300
	andq	%rdx, %rax	# D.22314, D.22314
	.loc 1 1882 0
	movq	%rax, -72(%rbp)	# D.22314, in_table
	.loc 1 1885 0
	cmpl	$7, -96(%rbp)	#, regno
	jbe	.L474	#,
	.loc 1 1885 0 is_stmt 0 discriminator 1
	cmpl	$15, -96(%rbp)	#, regno
	jbe	.L475	#,
.L474:
	.loc 1 1885 0 discriminator 2
	cmpl	$20, -96(%rbp)	#, regno
	jbe	.L476	#,
	.loc 1 1885 0 discriminator 1
	cmpl	$28, -96(%rbp)	#, regno
	jbe	.L475	#,
.L476:
	.loc 1 1885 0 discriminator 2
	cmpl	$44, -96(%rbp)	#, regno
	jbe	.L477	#,
	.loc 1 1885 0 discriminator 1
	cmpl	$52, -96(%rbp)	#, regno
	jbe	.L475	#,
.L477:
	.loc 1 1885 0 discriminator 2
	cmpl	$28, -96(%rbp)	#, regno
	jbe	.L478	#,
	.loc 1 1885 0 discriminator 1
	cmpl	$36, -96(%rbp)	#, regno
	ja	.L478	#,
.L475:
	movq	-120(%rbp), %rax	# x, tmp210
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.22312
	movzbl	%al, %eax	# D.22312, D.22311
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22315
	cmpl	$5, %eax	#, D.22315
	je	.L479	#,
	.loc 1 1885 0 discriminator 4
	movq	-120(%rbp), %rax	# x, tmp212
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.22312
	movzbl	%al, %eax	# D.22312, D.22311
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22315
	cmpl	$6, %eax	#, D.22315
	jne	.L480	#,
.L479:
	.loc 1 1885 0 discriminator 3
	movl	$2, %eax	#, iftmp.302
	jmp	.L482	#
.L480:
	.loc 1 1885 0 discriminator 1
	movl	$1, %eax	#, iftmp.302
	jmp	.L482	#
.L478:
	.loc 1 1885 0 discriminator 2
	movq	-120(%rbp), %rax	# x, tmp214
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.22312
	cmpb	$18, %al	#, D.22312
	jne	.L483	#,
	.loc 1 1885 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.305
	andl	$33554432, %eax	#, D.22311
	testl	%eax, %eax	# D.22311
	je	.L484	#,
	.loc 1 1885 0 discriminator 8
	movl	$2, %eax	#, iftmp.304
	jmp	.L482	#
.L484:
	.loc 1 1885 0 discriminator 9
	movl	$3, %eax	#, iftmp.304
	jmp	.L482	#
.L483:
	.loc 1 1885 0 discriminator 7
	movq	-120(%rbp), %rax	# x, tmp215
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.22312
	cmpb	$24, %al	#, D.22312
	jne	.L487	#,
	.loc 1 1885 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.308
	andl	$33554432, %eax	#, D.22311
	testl	%eax, %eax	# D.22311
	je	.L488	#,
	.loc 1 1885 0 discriminator 12
	movl	$4, %eax	#, iftmp.307
	jmp	.L482	#
.L488:
	.loc 1 1885 0 discriminator 13
	movl	$6, %eax	#, iftmp.307
	jmp	.L482	#
.L487:
	.loc 1 1885 0 discriminator 11
	movq	-120(%rbp), %rax	# x, tmp216
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.22312
	movzbl	%al, %eax	# D.22312, D.22311
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22312
	movzbl	%al, %edx	# D.22312, D.22311
	movl	target_flags(%rip), %eax	# target_flags, target_flags.310
	andl	$33554432, %eax	#, D.22311
	testl	%eax, %eax	# D.22311
	je	.L491	#,
	.loc 1 1885 0 discriminator 1
	movl	$8, %eax	#, iftmp.309
	jmp	.L492	#
.L491:
	.loc 1 1885 0 discriminator 2
	movl	$4, %eax	#, iftmp.309
.L492:
	.loc 1 1885 0 discriminator 3
	addl	%edx, %eax	# D.22311, D.22311
	subl	$1, %eax	#, D.22311
	movl	target_flags(%rip), %edx	# target_flags, target_flags.312
	andl	$33554432, %edx	#, D.22311
	testl	%edx, %edx	# D.22311
	je	.L493	#,
	.loc 1 1885 0 discriminator 1
	movl	$8, %ebx	#, iftmp.311
	jmp	.L494	#
.L493:
	.loc 1 1885 0 discriminator 2
	movl	$4, %ebx	#, iftmp.311
.L494:
	.loc 1 1885 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.311
.L482:
	.loc 1 1884 0 is_stmt 1
	movl	-96(%rbp), %edx	# regno, tmp223
	addl	%edx, %eax	# tmp223, tmp222
	movl	%eax, -92(%rbp)	# tmp222, endregno
	.loc 1 1889 0
	movl	-96(%rbp), %eax	# regno, regno.313
	movl	$1, %edx	#, tmp224
	movl	%eax, %ecx	# regno.313, tmp290
	salq	%cl, %rdx	# tmp290, D.22314
	movq	%rdx, %rax	# D.22314, D.22314
	notq	%rax	# D.22314
	movq	%rax, %rdx	# D.22314, D.22314
	movq	hard_regs_in_table(%rip), %rax	# hard_regs_in_table, hard_regs_in_table.314
	andq	%rdx, %rax	# D.22314, hard_regs_in_table.315
	movq	%rax, hard_regs_in_table(%rip)	# hard_regs_in_table.315, hard_regs_in_table
	.loc 1 1891 0
	movl	-96(%rbp), %eax	# regno, tmp228
	addl	$1, %eax	#, tmp227
	movl	%eax, -100(%rbp)	# tmp227, rn
	jmp	.L495	#
.L499:
	.loc 1 1893 0
	movl	-100(%rbp), %eax	# rn, rn.316
	movl	$1, %edx	#, tmp229
	movl	%eax, %ecx	# rn.316, tmp292
	salq	%cl, %rdx	# tmp292, D.22314
	movq	hard_regs_in_table(%rip), %rax	# hard_regs_in_table, hard_regs_in_table.317
	andq	%rax, %rdx	# hard_regs_in_table.317, D.22314
	movq	-72(%rbp), %rax	# in_table, in_table.318
	orq	%rdx, %rax	# D.22314, D.22314
	movq	%rax, -72(%rbp)	# D.22314, in_table
	.loc 1 1894 0
	movl	-100(%rbp), %eax	# rn, rn.319
	movl	$1, %edx	#, tmp230
	movl	%eax, %ecx	# rn.319, tmp294
	salq	%cl, %rdx	# tmp294, D.22314
	movq	%rdx, %rax	# D.22314, D.22314
	notq	%rax	# D.22314
	movq	%rax, %rdx	# D.22314, D.22314
	movq	hard_regs_in_table(%rip), %rax	# hard_regs_in_table, hard_regs_in_table.320
	andq	%rdx, %rax	# D.22314, hard_regs_in_table.321
	movq	%rax, hard_regs_in_table(%rip)	# hard_regs_in_table.321, hard_regs_in_table
	.loc 1 1895 0
	movl	-100(%rbp), %eax	# rn, tmp231
	movl	%eax, %edi	# tmp231,
	call	delete_reg_equiv	#
	.loc 1 1896 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.323
	cmpl	%eax, -100(%rbp)	# cached_regno.323, rn
	jne	.L496	#,
	.loc 1 1896 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.324
	testq	%rax, %rax	# cached_cse_reg_info.324
	jne	.L497	#,
.L496:
	.loc 1 1896 0 discriminator 1
	movl	-100(%rbp), %eax	# rn, tmp232
	movl	%eax, %edi	# tmp232,
	call	get_cse_reg_info	#
	jmp	.L498	#
.L497:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.322
.L498:
	.loc 1 1896 0 discriminator 3
	movl	24(%rax), %edx	# iftmp.322_20->reg_tick, D.22311
	addl	$1, %edx	#, D.22311
	movl	%edx, 24(%rax)	# D.22311, iftmp.322_20->reg_tick
	.loc 1 1891 0 is_stmt 1 discriminator 3
	addl	$1, -100(%rbp)	#, rn
.L495:
	.loc 1 1891 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %eax	# rn, tmp233
	cmpl	-92(%rbp), %eax	# endregno, tmp233
	jb	.L499	#,
	.loc 1 1899 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, in_table
	je	.L473	#,
	.loc 1 1900 0
	movl	$0, -104(%rbp)	#, hash
	jmp	.L500	#
.L527:
	.loc 1 1901 0
	movl	-104(%rbp), %eax	# hash, tmp234
	movq	table(,%rax,8), %rax	# table, tmp235
	movq	%rax, -64(%rbp)	# tmp235, p
	jmp	.L501	#
.L526:
	.loc 1 1903 0
	movq	-64(%rbp), %rax	# p, tmp236
	movq	16(%rax), %rax	# p_8->next_same_hash, tmp237
	movq	%rax, -48(%rbp)	# tmp237, next
	.loc 1 1905 0
	movq	-64(%rbp), %rax	# p, tmp238
	movq	(%rax), %rax	# p_8->exp, D.22316
	movzwl	(%rax), %eax	# _131->code, D.22309
	cmpw	$61, %ax	#, D.22309
	jne	.L502	#,
	.loc 1 1906 0
	movq	-64(%rbp), %rax	# p, tmp239
	movq	(%rax), %rax	# p_8->exp, D.22316
	movl	8(%rax), %eax	# _133->fld[0].rtuint, D.22310
	cmpl	$52, %eax	#, D.22310
	jbe	.L503	#,
.L502:
	.loc 1 1907 0
	jmp	.L504	#
.L503:
	.loc 1 1909 0
	movq	-64(%rbp), %rax	# p, tmp240
	movq	(%rax), %rax	# p_8->exp, D.22316
	movl	8(%rax), %eax	# _135->fld[0].rtuint, tmp241
	movl	%eax, -88(%rbp)	# tmp241, tregno
	.loc 1 1911 0
	cmpl	$7, -88(%rbp)	#, tregno
	jbe	.L505	#,
	.loc 1 1911 0 is_stmt 0 discriminator 1
	cmpl	$15, -88(%rbp)	#, tregno
	jbe	.L506	#,
.L505:
	.loc 1 1911 0 discriminator 2
	cmpl	$20, -88(%rbp)	#, tregno
	jbe	.L507	#,
	.loc 1 1911 0 discriminator 1
	cmpl	$28, -88(%rbp)	#, tregno
	jbe	.L506	#,
.L507:
	.loc 1 1911 0 discriminator 2
	cmpl	$44, -88(%rbp)	#, tregno
	jbe	.L508	#,
	.loc 1 1911 0 discriminator 1
	cmpl	$52, -88(%rbp)	#, tregno
	jbe	.L506	#,
.L508:
	.loc 1 1911 0 discriminator 2
	cmpl	$28, -88(%rbp)	#, tregno
	jbe	.L509	#,
	.loc 1 1911 0 discriminator 1
	cmpl	$36, -88(%rbp)	#, tregno
	ja	.L509	#,
.L506:
	movq	-64(%rbp), %rax	# p, tmp242
	movq	(%rax), %rax	# p_8->exp, D.22316
	movzbl	2(%rax), %eax	# _170->mode, D.22312
	movzbl	%al, %eax	# D.22312, D.22311
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22315
	cmpl	$5, %eax	#, D.22315
	je	.L510	#,
	.loc 1 1911 0 discriminator 4
	movq	-64(%rbp), %rax	# p, tmp244
	movq	(%rax), %rax	# p_8->exp, D.22316
	movzbl	2(%rax), %eax	# _174->mode, D.22312
	movzbl	%al, %eax	# D.22312, D.22311
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22315
	cmpl	$6, %eax	#, D.22315
	jne	.L511	#,
.L510:
	.loc 1 1911 0 discriminator 3
	movl	$2, %eax	#, iftmp.326
	jmp	.L513	#
.L511:
	.loc 1 1911 0 discriminator 1
	movl	$1, %eax	#, iftmp.326
	jmp	.L513	#
.L509:
	.loc 1 1911 0 discriminator 2
	movq	-64(%rbp), %rax	# p, tmp246
	movq	(%rax), %rax	# p_8->exp, D.22316
	movzbl	2(%rax), %eax	# _137->mode, D.22312
	cmpb	$18, %al	#, D.22312
	jne	.L514	#,
	.loc 1 1911 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.329
	andl	$33554432, %eax	#, D.22311
	testl	%eax, %eax	# D.22311
	je	.L515	#,
	.loc 1 1911 0 discriminator 9
	movl	$2, %eax	#, iftmp.328
	jmp	.L513	#
.L515:
	.loc 1 1911 0 discriminator 10
	movl	$3, %eax	#, iftmp.328
	jmp	.L513	#
.L514:
	.loc 1 1911 0 discriminator 8
	movq	-64(%rbp), %rax	# p, tmp247
	movq	(%rax), %rax	# p_8->exp, D.22316
	movzbl	2(%rax), %eax	# _144->mode, D.22312
	cmpb	$24, %al	#, D.22312
	jne	.L518	#,
	.loc 1 1911 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.332
	andl	$33554432, %eax	#, D.22311
	testl	%eax, %eax	# D.22311
	je	.L519	#,
	.loc 1 1911 0 discriminator 13
	movl	$4, %eax	#, iftmp.331
	jmp	.L513	#
.L519:
	.loc 1 1911 0 discriminator 14
	movl	$6, %eax	#, iftmp.331
	jmp	.L513	#
.L518:
	.loc 1 1911 0 discriminator 12
	movq	-64(%rbp), %rax	# p, tmp248
	movq	(%rax), %rax	# p_8->exp, D.22316
	movzbl	2(%rax), %eax	# _151->mode, D.22312
	movzbl	%al, %eax	# D.22312, D.22311
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22312
	movzbl	%al, %edx	# D.22312, D.22311
	movl	target_flags(%rip), %eax	# target_flags, target_flags.334
	andl	$33554432, %eax	#, D.22311
	testl	%eax, %eax	# D.22311
	je	.L522	#,
	.loc 1 1911 0 discriminator 1
	movl	$8, %eax	#, iftmp.333
	jmp	.L523	#
.L522:
	.loc 1 1911 0 discriminator 2
	movl	$4, %eax	#, iftmp.333
.L523:
	.loc 1 1911 0 discriminator 3
	addl	%edx, %eax	# D.22311, D.22311
	subl	$1, %eax	#, D.22311
	movl	target_flags(%rip), %edx	# target_flags, target_flags.336
	andl	$33554432, %edx	#, D.22311
	testl	%edx, %edx	# D.22311
	je	.L524	#,
	.loc 1 1911 0 discriminator 1
	movl	$8, %ebx	#, iftmp.335
	jmp	.L525	#
.L524:
	.loc 1 1911 0 discriminator 2
	movl	$4, %ebx	#, iftmp.335
.L525:
	.loc 1 1911 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.335
.L513:
	.loc 1 1911 0 discriminator 6
	movl	-88(%rbp), %edx	# tregno, tmp255
	addl	%edx, %eax	# tmp255, tmp254
	movl	%eax, -84(%rbp)	# tmp254, tendregno
	.loc 1 1912 0 is_stmt 1 discriminator 6
	movl	-84(%rbp), %eax	# tendregno, tmp256
	cmpl	-96(%rbp), %eax	# regno, tmp256
	jbe	.L504	#,
	.loc 1 1912 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# tregno, tmp257
	cmpl	-92(%rbp), %eax	# endregno, tmp257
	jae	.L504	#,
	.loc 1 1913 0 is_stmt 1
	movl	-104(%rbp), %edx	# hash, tmp258
	movq	-64(%rbp), %rax	# p, tmp259
	movl	%edx, %esi	# tmp258,
	movq	%rax, %rdi	# tmp259,
	call	remove_from_table	#
.L504:
	.loc 1 1901 0
	movq	-48(%rbp), %rax	# next, tmp260
	movq	%rax, -64(%rbp)	# tmp260, p
.L501:
	.loc 1 1901 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, p
	jne	.L526	#,
	.loc 1 1900 0 is_stmt 1
	addl	$1, -104(%rbp)	#, hash
.L500:
	.loc 1 1900 0 is_stmt 0 discriminator 1
	cmpl	$31, -104(%rbp)	#, hash
	jbe	.L527	#,
.L473:
.LBE31:
.LBE29:
	.loc 1 1917 0 is_stmt 1
	jmp	.L454	#
.L460:
	.loc 1 1920 0
	movq	-120(%rbp), %rax	# x, tmp261
	movq	8(%rax), %rax	# x_29(D)->fld[0].rtx, D.22316
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22316,
	call	invalidate	#
	.loc 1 1921 0
	jmp	.L454	#
.L459:
	.loc 1 1924 0
	movq	-120(%rbp), %rax	# x, tmp262
	movq	8(%rax), %rax	# x_29(D)->fld[0].rtvec, D.22317
	movl	(%rax), %eax	# _185->num_elem, D.22311
	subl	$1, %eax	#, tmp263
	movl	%eax, -108(%rbp)	# tmp263, i
	jmp	.L529	#
.L530:
	.loc 1 1925 0 discriminator 2
	movq	-120(%rbp), %rax	# x, tmp264
	movq	8(%rax), %rax	# x_29(D)->fld[0].rtvec, D.22317
	movl	-108(%rbp), %edx	# i, tmp266
	movslq	%edx, %rdx	# tmp266, tmp265
	movq	8(%rax,%rdx,8), %rax	# _188->elem, D.22316
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22316,
	call	invalidate	#
	.loc 1 1924 0 discriminator 2
	subl	$1, -108(%rbp)	#, i
.L529:
	.loc 1 1924 0 is_stmt 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, i
	jns	.L530	#,
	.loc 1 1926 0 is_stmt 1
	jmp	.L454	#
.L458:
	.loc 1 1931 0
	movq	-120(%rbp), %rax	# x, tmp267
	movq	8(%rax), %rax	# x_29(D)->fld[0].rtx, D.22316
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22316,
	call	invalidate	#
	.loc 1 1932 0
	jmp	.L454	#
.L461:
	.loc 1 1937 0
	movq	-120(%rbp), %rax	# x, tmp268
	movq	%rax, %rdi	# tmp268,
	call	canon_rtx	#
	movq	%rax, -120(%rbp)	# tmp269, x
	.loc 1 1941 0
	cmpl	$0, -124(%rbp)	#, full_mode
	jne	.L531	#,
	.loc 1 1942 0
	movq	-120(%rbp), %rax	# x, tmp270
	movzbl	2(%rax), %eax	# x_192->mode, D.22312
	movzbl	%al, %eax	# D.22312, tmp271
	movl	%eax, -124(%rbp)	# tmp271, full_mode
.L531:
	.loc 1 1944 0
	movl	$0, -108(%rbp)	#, i
	jmp	.L532	#
.L538:
.LBB32:
	.loc 1 1948 0
	movl	-108(%rbp), %eax	# i, tmp273
	cltq
	movq	table(,%rax,8), %rax	# table, tmp274
	movq	%rax, -80(%rbp)	# tmp274, p
	jmp	.L533	#
.L537:
	.loc 1 1950 0
	movq	-80(%rbp), %rax	# p, tmp275
	movq	16(%rax), %rax	# p_4->next_same_hash, tmp276
	movq	%rax, -40(%rbp)	# tmp276, next
	.loc 1 1951 0
	movq	-80(%rbp), %rax	# p, tmp277
	movzbl	76(%rax), %eax	# p_4->in_memory, D.22318
	testb	%al, %al	# D.22318
	je	.L534	#,
.LBB33:
	.loc 1 1959 0
	movq	-80(%rbp), %rax	# p, tmp278
	movq	8(%rax), %rax	# p_4->canon_exp, D.22316
	testq	%rax, %rax	# D.22316
	jne	.L535	#,
	.loc 1 1960 0
	movq	-80(%rbp), %rax	# p, tmp279
	movq	(%rax), %rax	# p_4->exp, D.22316
	movq	%rax, %rdi	# D.22316,
	call	canon_rtx	#
	movq	-80(%rbp), %rdx	# p, tmp280
	movq	%rax, 8(%rdx)	# D.22316, p_4->canon_exp
.L535:
	.loc 1 1961 0
	movq	-120(%rbp), %rax	# x, tmp281
	movq	%rax, -24(%rbp)	# tmp281, d.exp
	.loc 1 1962 0
	movl	-124(%rbp), %eax	# full_mode, tmp282
	movl	%eax, -32(%rbp)	# tmp282, d.mode
	.loc 1 1963 0
	movq	-80(%rbp), %rax	# p, tmp283
	leaq	8(%rax), %rcx	#, D.22319
	leaq	-32(%rbp), %rax	#, tmp284
	movq	%rax, %rdx	# tmp284,
	movl	$check_dependence, %esi	#,
	movq	%rcx, %rdi	# D.22319,
	call	for_each_rtx	#
	testl	%eax, %eax	# D.22311
	je	.L534	#,
	.loc 1 1964 0
	movl	-108(%rbp), %edx	# i, i.337
	movq	-80(%rbp), %rax	# p, tmp285
	movl	%edx, %esi	# i.337,
	movq	%rax, %rdi	# tmp285,
	call	remove_from_table	#
.L534:
.LBE33:
	.loc 1 1948 0
	movq	-40(%rbp), %rax	# next, tmp286
	movq	%rax, -80(%rbp)	# tmp286, p
.L533:
	.loc 1 1948 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, p
	jne	.L537	#,
.LBE32:
	.loc 1 1944 0 is_stmt 1
	addl	$1, -108(%rbp)	#, i
.L532:
	.loc 1 1944 0 is_stmt 0 discriminator 1
	cmpl	$31, -108(%rbp)	#, i
	jle	.L538	#,
	.loc 1 1968 0 is_stmt 1
	jmp	.L454	#
.L455:
	.loc 1 1971 0
	movl	$__FUNCTION__.11861, %edx	#,
	movl	$1971, %esi	#,
	movl	$.LC2, %edi	#,
	call	fancy_abort	#
.L454:
	.loc 1 1973 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	invalidate, .-invalidate
	.type	remove_invalid_refs, @function
remove_invalid_refs:
.LFB25:
	.loc 1 1983 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# regno, regno
	.loc 1 1987 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L540	#
.L544:
	.loc 1 1988 0
	movl	-20(%rbp), %eax	# i, tmp64
	movq	table(,%rax,8), %rax	# table, tmp65
	movq	%rax, -16(%rbp)	# tmp65, p
	jmp	.L541	#
.L543:
	.loc 1 1990 0
	movq	-16(%rbp), %rax	# p, tmp66
	movq	16(%rax), %rax	# p_2->next_same_hash, tmp67
	movq	%rax, -8(%rbp)	# tmp67, next
	.loc 1 1991 0
	movq	-16(%rbp), %rax	# p, tmp68
	movq	(%rax), %rax	# p_2->exp, D.22321
	movzwl	(%rax), %eax	# _6->code, D.22322
	cmpw	$61, %ax	#, D.22322
	je	.L542	#,
	.loc 1 1992 0
	movq	-16(%rbp), %rax	# p, tmp69
	movq	(%rax), %rdx	# p_2->exp, D.22321
	movl	-36(%rbp), %eax	# regno, tmp70
	leal	1(%rax), %esi	#, D.22323
	movl	-36(%rbp), %eax	# regno, tmp71
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp71,
	call	refers_to_regno_p	#
	testl	%eax, %eax	# D.22324
	je	.L542	#,
	.loc 1 1993 0
	movl	-20(%rbp), %edx	# i, tmp72
	movq	-16(%rbp), %rax	# p, tmp73
	movl	%edx, %esi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	remove_from_table	#
.L542:
	.loc 1 1988 0
	movq	-8(%rbp), %rax	# next, tmp74
	movq	%rax, -16(%rbp)	# tmp74, p
.L541:
	.loc 1 1988 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L543	#,
	.loc 1 1987 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L540:
	.loc 1 1987 0 is_stmt 0 discriminator 1
	cmpl	$31, -20(%rbp)	#, i
	jbe	.L544	#,
	.loc 1 1995 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	remove_invalid_refs, .-remove_invalid_refs
	.type	remove_invalid_subreg_refs, @function
remove_invalid_subreg_refs:
.LFB26:
	.loc 1 2004 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# regno, regno
	movl	%esi, -40(%rbp)	# offset, offset
	movl	%edx, -44(%rbp)	# mode, mode
	.loc 1 2007 0
	movl	-44(%rbp), %eax	# mode, mode.338
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22325
	movzbl	%al, %edx	# D.22325, D.22326
	movl	-40(%rbp), %eax	# offset, tmp81
	addl	%edx, %eax	# D.22326, D.22326
	subl	$1, %eax	#, tmp82
	movl	%eax, -28(%rbp)	# tmp82, end
	.loc 1 2009 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L546	#
.L551:
	.loc 1 2010 0
	movl	-32(%rbp), %eax	# i, tmp83
	movq	table(,%rax,8), %rax	# table, tmp84
	movq	%rax, -24(%rbp)	# tmp84, p
	jmp	.L547	#
.L550:
.LBB34:
	.loc 1 2012 0
	movq	-24(%rbp), %rax	# p, tmp85
	movq	(%rax), %rax	# p_2->exp, tmp86
	movq	%rax, -16(%rbp)	# tmp86, exp
	.loc 1 2013 0
	movq	-24(%rbp), %rax	# p, tmp87
	movq	16(%rax), %rax	# p_2->next_same_hash, tmp88
	movq	%rax, -8(%rbp)	# tmp88, next
	.loc 1 2015 0
	movq	-16(%rbp), %rax	# exp, tmp89
	movzwl	(%rax), %eax	# exp_12->code, D.22327
	cmpw	$61, %ax	#, D.22327
	je	.L548	#,
	.loc 1 2016 0
	movq	-16(%rbp), %rax	# exp, tmp90
	movzwl	(%rax), %eax	# exp_12->code, D.22327
	cmpw	$63, %ax	#, D.22327
	jne	.L549	#,
	.loc 1 2017 0
	movq	-16(%rbp), %rax	# exp, tmp91
	movq	8(%rax), %rax	# exp_12->fld[0].rtx, D.22328
	movzwl	(%rax), %eax	# _16->code, D.22327
	cmpw	$61, %ax	#, D.22327
	jne	.L549	#,
	.loc 1 2018 0
	movq	-16(%rbp), %rax	# exp, tmp92
	movq	8(%rax), %rax	# exp_12->fld[0].rtx, D.22328
	movl	8(%rax), %eax	# _18->fld[0].rtuint, D.22326
	cmpl	-36(%rbp), %eax	# regno, D.22326
	jne	.L549	#,
	.loc 1 2019 0
	movq	-16(%rbp), %rax	# exp, tmp93
	movl	16(%rax), %edx	# exp_12->fld[1].rtuint, D.22326
	.loc 1 2020 0
	movq	-16(%rbp), %rax	# exp, tmp94
	movzbl	2(%rax), %eax	# exp_12->mode, D.22325
	movzbl	%al, %eax	# D.22325, D.22329
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22325
	movzbl	%al, %eax	# D.22325, D.22326
	addl	%edx, %eax	# D.22326, D.22326
	subl	$1, %eax	#, D.22326
	.loc 1 2019 0
	cmpl	-40(%rbp), %eax	# offset, D.22326
	jb	.L548	#,
	.loc 1 2021 0
	movq	-16(%rbp), %rax	# exp, tmp96
	movl	16(%rax), %eax	# exp_12->fld[1].rtuint, D.22326
	cmpl	-28(%rbp), %eax	# end, D.22326
	ja	.L548	#,
.L549:
	.loc 1 2022 0
	movq	-24(%rbp), %rax	# p, tmp97
	movq	(%rax), %rdx	# p_2->exp, D.22328
	movl	-36(%rbp), %eax	# regno, tmp98
	leal	1(%rax), %esi	#, D.22326
	movl	-36(%rbp), %eax	# regno, tmp99
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp99,
	call	refers_to_regno_p	#
	testl	%eax, %eax	# D.22329
	je	.L548	#,
	.loc 1 2023 0
	movl	-32(%rbp), %edx	# i, tmp100
	movq	-24(%rbp), %rax	# p, tmp101
	movl	%edx, %esi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	remove_from_table	#
.L548:
.LBE34:
	.loc 1 2010 0
	movq	-8(%rbp), %rax	# next, tmp102
	movq	%rax, -24(%rbp)	# tmp102, p
.L547:
	.loc 1 2010 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, p
	jne	.L550	#,
	.loc 1 2009 0 is_stmt 1
	addl	$1, -32(%rbp)	#, i
.L546:
	.loc 1 2009 0 is_stmt 0 discriminator 1
	cmpl	$31, -32(%rbp)	#, i
	jbe	.L551	#,
	.loc 1 2025 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	remove_invalid_subreg_refs, .-remove_invalid_subreg_refs
	.type	rehash_using_reg, @function
rehash_using_reg:
.LFB27:
	.loc 1 2035 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# x, x
	.loc 1 2040 0
	movq	-56(%rbp), %rax	# x, tmp99
	movzwl	(%rax), %eax	# x_7(D)->code, D.22330
	cmpw	$63, %ax	#, D.22330
	jne	.L553	#,
	.loc 1 2041 0
	movq	-56(%rbp), %rax	# x, tmp100
	movq	8(%rax), %rax	# x_7(D)->fld[0].rtx, tmp101
	movq	%rax, -56(%rbp)	# tmp101, x
.L553:
	.loc 1 2046 0
	movq	-56(%rbp), %rax	# x, tmp102
	movzwl	(%rax), %eax	# x_1->code, D.22330
	cmpw	$61, %ax	#, D.22330
	jne	.L554	#,
	.loc 1 2047 0
	movq	-56(%rbp), %rax	# x, tmp103
	movl	8(%rax), %edx	# x_1->fld[0].rtuint, D.22331
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.340
	cmpl	%eax, %edx	# cached_regno.340, D.22331
	jne	.L555	#,
	.loc 1 2047 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.341
	testq	%rax, %rax	# cached_cse_reg_info.341
	jne	.L556	#,
.L555:
	.loc 1 2047 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp104
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, D.22331
	movl	%eax, %edi	# D.22331,
	call	get_cse_reg_info	#
	jmp	.L557	#
.L556:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.339
.L557:
	.loc 1 2047 0 discriminator 3
	movl	28(%rax), %eax	# iftmp.339_4->reg_in_table, D.22332
	testl	%eax, %eax	# D.22332
	js	.L554	#,
	.loc 1 2048 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp105
	movl	8(%rax), %edx	# x_1->fld[0].rtuint, D.22331
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.343
	cmpl	%eax, %edx	# cached_regno.343, D.22331
	jne	.L558	#,
	.loc 1 2048 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.344
	testq	%rax, %rax	# cached_cse_reg_info.344
	jne	.L559	#,
.L558:
	.loc 1 2048 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp106
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, D.22331
	movl	%eax, %edi	# D.22331,
	call	get_cse_reg_info	#
	jmp	.L560	#
.L559:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.342
.L560:
	.loc 1 2048 0 discriminator 3
	movl	28(%rax), %ebx	# iftmp.342_5->reg_in_table, D.22332
	movq	-56(%rbp), %rax	# x, tmp107
	movl	8(%rax), %edx	# x_1->fld[0].rtuint, D.22331
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.346
	cmpl	%eax, %edx	# cached_regno.346, D.22331
	jne	.L561	#,
	.loc 1 2048 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.347
	testq	%rax, %rax	# cached_cse_reg_info.347
	jne	.L562	#,
.L561:
	.loc 1 2048 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp108
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, D.22331
	movl	%eax, %edi	# D.22331,
	call	get_cse_reg_info	#
	jmp	.L563	#
.L562:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.345
.L563:
	.loc 1 2048 0 discriminator 3
	movl	24(%rax), %eax	# iftmp.345_6->reg_tick, D.22332
	cmpl	%eax, %ebx	# D.22332, D.22332
	je	.L564	#,
.L554:
	.loc 1 2049 0 is_stmt 1
	jmp	.L552	#
.L564:
	.loc 1 2055 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L566	#
.L574:
	.loc 1 2056 0
	movl	-40(%rbp), %eax	# i, tmp109
	movq	table(,%rax,8), %rax	# table, tmp110
	movq	%rax, -32(%rbp)	# tmp110, p
	jmp	.L567	#
.L573:
	.loc 1 2058 0
	movq	-32(%rbp), %rax	# p, tmp111
	movq	16(%rax), %rax	# p_3->next_same_hash, tmp112
	movq	%rax, -24(%rbp)	# tmp112, next
	.loc 1 2059 0
	movq	-32(%rbp), %rax	# p, tmp113
	movq	(%rax), %rax	# p_3->exp, D.22333
	movzwl	(%rax), %eax	# _35->code, D.22330
	cmpw	$61, %ax	#, D.22330
	je	.L568	#,
	.loc 1 2059 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp114
	movq	(%rax), %rdx	# p_3->exp, D.22333
	movq	-56(%rbp), %rax	# x, tmp115
	movq	%rdx, %rsi	# D.22333,
	movq	%rax, %rdi	# tmp115,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.22332
	je	.L568	#,
	.loc 1 2060 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp116
	movq	(%rax), %rsi	# p_3->exp, D.22333
	movq	-32(%rbp), %rax	# p, tmp117
	movq	(%rax), %rax	# p_3->exp, D.22333
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22333,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22332
	je	.L568	#,
	.loc 1 2061 0
	movq	-32(%rbp), %rax	# p, tmp118
	movl	72(%rax), %edx	# p_3->mode, D.22334
	movq	-32(%rbp), %rax	# p, tmp119
	movq	(%rax), %rax	# p_3->exp, D.22333
	movl	%edx, %esi	# D.22334,
	movq	%rax, %rdi	# D.22333,
	call	safe_hash	#
	andl	$31, %eax	#, tmp120
	movl	%eax, -36(%rbp)	# tmp120, hash
	movl	-36(%rbp), %eax	# hash, tmp121
	cmpl	-40(%rbp), %eax	# i, tmp121
	je	.L568	#,
	.loc 1 2063 0
	movq	-32(%rbp), %rax	# p, tmp122
	movq	16(%rax), %rax	# p_3->next_same_hash, D.22335
	testq	%rax, %rax	# D.22335
	je	.L569	#,
	.loc 1 2064 0
	movq	-32(%rbp), %rax	# p, tmp123
	movq	16(%rax), %rax	# p_3->next_same_hash, D.22335
	movq	-32(%rbp), %rdx	# p, tmp124
	movq	24(%rdx), %rdx	# p_3->prev_same_hash, D.22335
	movq	%rdx, 24(%rax)	# D.22335, _47->prev_same_hash
.L569:
	.loc 1 2066 0
	movq	-32(%rbp), %rax	# p, tmp125
	movq	24(%rax), %rax	# p_3->prev_same_hash, D.22335
	testq	%rax, %rax	# D.22335
	je	.L570	#,
	.loc 1 2067 0
	movq	-32(%rbp), %rax	# p, tmp126
	movq	24(%rax), %rax	# p_3->prev_same_hash, D.22335
	movq	-32(%rbp), %rdx	# p, tmp127
	movq	16(%rdx), %rdx	# p_3->next_same_hash, D.22335
	movq	%rdx, 16(%rax)	# D.22335, _50->next_same_hash
	jmp	.L571	#
.L570:
	.loc 1 2069 0
	movq	-32(%rbp), %rax	# p, tmp128
	movq	16(%rax), %rdx	# p_3->next_same_hash, D.22335
	movl	-40(%rbp), %eax	# i, tmp129
	movq	%rdx, table(,%rax,8)	# D.22335, table
.L571:
	.loc 1 2071 0
	movl	-36(%rbp), %eax	# hash, tmp130
	movq	table(,%rax,8), %rdx	# table, D.22335
	movq	-32(%rbp), %rax	# p, tmp131
	movq	%rdx, 16(%rax)	# D.22335, p_3->next_same_hash
	.loc 1 2072 0
	movq	-32(%rbp), %rax	# p, tmp132
	movq	$0, 24(%rax)	#, p_3->prev_same_hash
	.loc 1 2073 0
	movl	-36(%rbp), %eax	# hash, tmp133
	movq	table(,%rax,8), %rax	# table, D.22335
	testq	%rax, %rax	# D.22335
	je	.L572	#,
	.loc 1 2074 0
	movl	-36(%rbp), %eax	# hash, tmp134
	movq	table(,%rax,8), %rax	# table, D.22335
	movq	-32(%rbp), %rdx	# p, tmp135
	movq	%rdx, 24(%rax)	# tmp135, _55->prev_same_hash
.L572:
	.loc 1 2075 0
	movl	-36(%rbp), %eax	# hash, tmp136
	movq	-32(%rbp), %rdx	# p, tmp137
	movq	%rdx, table(,%rax,8)	# tmp137, table
.L568:
	.loc 1 2056 0
	movq	-24(%rbp), %rax	# next, tmp138
	movq	%rax, -32(%rbp)	# tmp138, p
.L567:
	.loc 1 2056 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, p
	jne	.L573	#,
	.loc 1 2055 0 is_stmt 1
	addl	$1, -40(%rbp)	#, i
.L566:
	.loc 1 2055 0 is_stmt 0 discriminator 1
	cmpl	$31, -40(%rbp)	#, i
	jbe	.L574	#,
.L552:
	.loc 1 2078 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	rehash_using_reg, .-rehash_using_reg
	.type	invalidate_for_call, @function
invalidate_for_call:
.LFB28:
	.loc 1 2085 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2090 0
	movl	$0, -40(%rbp)	#, in_table
	.loc 1 2097 0
	movl	$0, -52(%rbp)	#, regno
	jmp	.L576	#
.L585:
	.loc 1 2098 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.348
	movl	-52(%rbp), %eax	# regno, regno.349
	movl	%eax, %ecx	# regno.349, tmp154
	shrq	%cl, %rdx	# tmp154, D.22336
	movq	%rdx, %rax	# D.22336, D.22336
	andl	$1, %eax	#, D.22336
	testq	%rax, %rax	# D.22336
	je	.L577	#,
	.loc 1 2100 0
	movl	-52(%rbp), %eax	# regno, tmp123
	movl	%eax, %edi	# tmp123,
	call	delete_reg_equiv	#
	.loc 1 2101 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.351
	cmpl	%eax, -52(%rbp)	# cached_regno.351, regno
	jne	.L578	#,
	.loc 1 2101 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.352
	testq	%rax, %rax	# cached_cse_reg_info.352
	jne	.L579	#,
.L578:
	.loc 1 2101 0 discriminator 1
	movl	-52(%rbp), %eax	# regno, tmp124
	movl	%eax, %edi	# tmp124,
	call	get_cse_reg_info	#
	jmp	.L580	#
.L579:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.350
.L580:
	.loc 1 2101 0 discriminator 3
	movl	24(%rax), %eax	# iftmp.350_7->reg_tick, D.22337
	testl	%eax, %eax	# D.22337
	js	.L581	#,
	.loc 1 2102 0 is_stmt 1
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.354
	cmpl	%eax, -52(%rbp)	# cached_regno.354, regno
	jne	.L582	#,
	.loc 1 2102 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.355
	testq	%rax, %rax	# cached_cse_reg_info.355
	jne	.L583	#,
.L582:
	.loc 1 2102 0 discriminator 1
	movl	-52(%rbp), %eax	# regno, tmp125
	movl	%eax, %edi	# tmp125,
	call	get_cse_reg_info	#
	jmp	.L584	#
.L583:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.353
.L584:
	.loc 1 2102 0 discriminator 3
	movl	24(%rax), %edx	# iftmp.353_8->reg_tick, D.22337
	addl	$1, %edx	#, D.22337
	movl	%edx, 24(%rax)	# D.22337, iftmp.353_8->reg_tick
.L581:
	.loc 1 2104 0 is_stmt 1
	movq	hard_regs_in_table(%rip), %rdx	# hard_regs_in_table, hard_regs_in_table.356
	movl	-52(%rbp), %eax	# regno, regno.357
	movl	%eax, %ecx	# regno.357, tmp156
	shrq	%cl, %rdx	# tmp156, D.22336
	movq	%rdx, %rax	# D.22336, D.22336
	andl	$1, %eax	#, D.22336
	testq	%rax, %rax	# D.22336
	setne	%al	#, D.22338
	movzbl	%al, %eax	# D.22338, D.22337
	orl	%eax, -40(%rbp)	# D.22337, in_table
.L577:
	.loc 1 2097 0
	addl	$1, -52(%rbp)	#, regno
.L576:
	.loc 1 2097 0 is_stmt 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, regno
	jbe	.L585	#,
	.loc 1 2111 0 is_stmt 1
	cmpl	$0, -40(%rbp)	#, in_table
	je	.L575	#,
	.loc 1 2112 0
	movl	$0, -44(%rbp)	#, hash
	jmp	.L587	#
.L617:
	.loc 1 2113 0
	movl	-44(%rbp), %eax	# hash, tmp126
	movq	table(,%rax,8), %rax	# table, tmp127
	movq	%rax, -32(%rbp)	# tmp127, p
	jmp	.L588	#
.L616:
	.loc 1 2115 0
	movq	-32(%rbp), %rax	# p, tmp128
	movq	16(%rax), %rax	# p_4->next_same_hash, tmp129
	movq	%rax, -24(%rbp)	# tmp129, next
	.loc 1 2117 0
	movq	-32(%rbp), %rax	# p, tmp130
	movq	(%rax), %rax	# p_4->exp, D.22339
	movzwl	(%rax), %eax	# _45->code, D.22340
	cmpw	$61, %ax	#, D.22340
	jne	.L589	#,
	.loc 1 2118 0
	movq	-32(%rbp), %rax	# p, tmp131
	movq	(%rax), %rax	# p_4->exp, D.22339
	movl	8(%rax), %eax	# _47->fld[0].rtuint, D.22341
	cmpl	$52, %eax	#, D.22341
	jbe	.L590	#,
.L589:
	.loc 1 2119 0
	jmp	.L591	#
.L590:
	.loc 1 2121 0
	movq	-32(%rbp), %rax	# p, tmp132
	movq	(%rax), %rax	# p_4->exp, D.22339
	movl	8(%rax), %eax	# _49->fld[0].rtuint, tmp133
	movl	%eax, -52(%rbp)	# tmp133, regno
	.loc 1 2122 0
	cmpl	$7, -52(%rbp)	#, regno
	jbe	.L592	#,
	.loc 1 2122 0 is_stmt 0 discriminator 1
	cmpl	$15, -52(%rbp)	#, regno
	jbe	.L593	#,
.L592:
	.loc 1 2122 0 discriminator 2
	cmpl	$20, -52(%rbp)	#, regno
	jbe	.L594	#,
	.loc 1 2122 0 discriminator 1
	cmpl	$28, -52(%rbp)	#, regno
	jbe	.L593	#,
.L594:
	.loc 1 2122 0 discriminator 2
	cmpl	$44, -52(%rbp)	#, regno
	jbe	.L595	#,
	.loc 1 2122 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, regno
	jbe	.L593	#,
.L595:
	.loc 1 2122 0 discriminator 2
	cmpl	$28, -52(%rbp)	#, regno
	jbe	.L596	#,
	.loc 1 2122 0 discriminator 1
	cmpl	$36, -52(%rbp)	#, regno
	ja	.L596	#,
.L593:
	movq	-32(%rbp), %rax	# p, tmp134
	movq	(%rax), %rax	# p_4->exp, D.22339
	movzbl	2(%rax), %eax	# _84->mode, D.22342
	movzbl	%al, %eax	# D.22342, D.22337
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22343
	cmpl	$5, %eax	#, D.22343
	je	.L597	#,
	.loc 1 2122 0 discriminator 4
	movq	-32(%rbp), %rax	# p, tmp136
	movq	(%rax), %rax	# p_4->exp, D.22339
	movzbl	2(%rax), %eax	# _88->mode, D.22342
	movzbl	%al, %eax	# D.22342, D.22337
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22343
	cmpl	$6, %eax	#, D.22343
	jne	.L598	#,
.L597:
	.loc 1 2122 0 discriminator 3
	movl	$2, %eax	#, iftmp.359
	jmp	.L600	#
.L598:
	.loc 1 2122 0 discriminator 1
	movl	$1, %eax	#, iftmp.359
	jmp	.L600	#
.L596:
	.loc 1 2122 0 discriminator 2
	movq	-32(%rbp), %rax	# p, tmp138
	movq	(%rax), %rax	# p_4->exp, D.22339
	movzbl	2(%rax), %eax	# _51->mode, D.22342
	cmpb	$18, %al	#, D.22342
	jne	.L601	#,
	.loc 1 2122 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.362
	andl	$33554432, %eax	#, D.22337
	testl	%eax, %eax	# D.22337
	je	.L602	#,
	.loc 1 2122 0 discriminator 9
	movl	$2, %eax	#, iftmp.361
	jmp	.L600	#
.L602:
	.loc 1 2122 0 discriminator 10
	movl	$3, %eax	#, iftmp.361
	jmp	.L600	#
.L601:
	.loc 1 2122 0 discriminator 8
	movq	-32(%rbp), %rax	# p, tmp139
	movq	(%rax), %rax	# p_4->exp, D.22339
	movzbl	2(%rax), %eax	# _58->mode, D.22342
	cmpb	$24, %al	#, D.22342
	jne	.L605	#,
	.loc 1 2122 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.365
	andl	$33554432, %eax	#, D.22337
	testl	%eax, %eax	# D.22337
	je	.L606	#,
	.loc 1 2122 0 discriminator 13
	movl	$4, %eax	#, iftmp.364
	jmp	.L600	#
.L606:
	.loc 1 2122 0 discriminator 14
	movl	$6, %eax	#, iftmp.364
	jmp	.L600	#
.L605:
	.loc 1 2122 0 discriminator 12
	movq	-32(%rbp), %rax	# p, tmp140
	movq	(%rax), %rax	# p_4->exp, D.22339
	movzbl	2(%rax), %eax	# _65->mode, D.22342
	movzbl	%al, %eax	# D.22342, D.22337
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22342
	movzbl	%al, %edx	# D.22342, D.22337
	movl	target_flags(%rip), %eax	# target_flags, target_flags.367
	andl	$33554432, %eax	#, D.22337
	testl	%eax, %eax	# D.22337
	je	.L609	#,
	.loc 1 2122 0 discriminator 1
	movl	$8, %eax	#, iftmp.366
	jmp	.L610	#
.L609:
	.loc 1 2122 0 discriminator 2
	movl	$4, %eax	#, iftmp.366
.L610:
	.loc 1 2122 0 discriminator 3
	addl	%edx, %eax	# D.22337, D.22337
	subl	$1, %eax	#, D.22337
	movl	target_flags(%rip), %edx	# target_flags, target_flags.369
	andl	$33554432, %edx	#, D.22337
	testl	%edx, %edx	# D.22337
	je	.L611	#,
	.loc 1 2122 0 discriminator 1
	movl	$8, %ebx	#, iftmp.368
	jmp	.L612	#
.L611:
	.loc 1 2122 0 discriminator 2
	movl	$4, %ebx	#, iftmp.368
.L612:
	.loc 1 2122 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.368
.L600:
	.loc 1 2122 0 discriminator 6
	movl	-52(%rbp), %edx	# regno, tmp147
	addl	%edx, %eax	# tmp147, tmp146
	movl	%eax, -36(%rbp)	# tmp146, endregno
	.loc 1 2124 0 is_stmt 1 discriminator 6
	movl	-52(%rbp), %eax	# regno, tmp148
	movl	%eax, -48(%rbp)	# tmp148, i
	jmp	.L613	#
.L615:
	.loc 1 2125 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.370
	movl	-48(%rbp), %eax	# i, i.371
	movl	%eax, %ecx	# i.371, tmp159
	shrq	%cl, %rdx	# tmp159, D.22336
	movq	%rdx, %rax	# D.22336, D.22336
	andl	$1, %eax	#, D.22336
	testq	%rax, %rax	# D.22336
	je	.L614	#,
	.loc 1 2127 0
	movl	-44(%rbp), %edx	# hash, tmp149
	movq	-32(%rbp), %rax	# p, tmp150
	movl	%edx, %esi	# tmp149,
	movq	%rax, %rdi	# tmp150,
	call	remove_from_table	#
	.loc 1 2128 0
	jmp	.L591	#
.L614:
	.loc 1 2124 0
	addl	$1, -48(%rbp)	#, i
.L613:
	.loc 1 2124 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp151
	cmpl	-36(%rbp), %eax	# endregno, tmp151
	jb	.L615	#,
.L591:
	.loc 1 2113 0 is_stmt 1
	movq	-24(%rbp), %rax	# next, tmp152
	movq	%rax, -32(%rbp)	# tmp152, p
.L588:
	.loc 1 2113 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, p
	jne	.L616	#,
	.loc 1 2112 0 is_stmt 1
	addl	$1, -44(%rbp)	#, hash
.L587:
	.loc 1 2112 0 is_stmt 0 discriminator 1
	cmpl	$31, -44(%rbp)	#, hash
	jbe	.L617	#,
.L575:
	.loc 1 2131 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	invalidate_for_call, .-invalidate_for_call
	.type	use_related_value, @function
use_related_value:
.LFB29:
	.loc 1 2143 0
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
	movq	%rsi, -80(%rbp)	# elt, elt
	.loc 1 2144 0
	movq	$0, -56(%rbp)	#, relt
	.loc 1 2152 0
	cmpq	$0, -80(%rbp)	#, elt
	je	.L619	#,
	.loc 1 2152 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# elt, tmp77
	movq	56(%rax), %rax	# elt_8(D)->related_value, D.22345
	testq	%rax, %rax	# D.22345
	je	.L619	#,
	.loc 1 2153 0 is_stmt 1
	movq	-80(%rbp), %rax	# elt, tmp78
	movq	%rax, -56(%rbp)	# tmp78, relt
	jmp	.L620	#
.L619:
	.loc 1 2154 0
	cmpq	$0, -80(%rbp)	#, elt
	jne	.L620	#,
	.loc 1 2154 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp79
	movzwl	(%rax), %eax	# x_11(D)->code, D.22346
	cmpw	$58, %ax	#, D.22346
	jne	.L620	#,
.LBB35:
	.loc 1 2156 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp80
	movq	%rax, %rdi	# tmp80,
	call	get_related_value	#
	movq	%rax, -32(%rbp)	# tmp81, subexp
	.loc 1 2157 0
	cmpq	$0, -32(%rbp)	#, subexp
	je	.L620	#,
	.loc 1 2160 0
	movq	-32(%rbp), %rax	# subexp, tmp82
	movzbl	2(%rax), %eax	# subexp_13->mode, D.22347
	.loc 1 2158 0
	movzbl	%al, %ebx	# D.22347, D.22348
	.loc 1 2159 0
	movq	-32(%rbp), %rax	# subexp, tmp83
	movzbl	2(%rax), %eax	# subexp_13->mode, D.22347
	movzbl	%al, %edx	# D.22347, D.22348
	movq	-32(%rbp), %rax	# subexp, tmp84
	movl	%edx, %esi	# D.22348,
	movq	%rax, %rdi	# tmp84,
	call	safe_hash	#
	.loc 1 2158 0
	andl	$31, %eax	#, D.22349
	movl	%eax, %ecx	# D.22349, D.22349
	movq	-32(%rbp), %rax	# subexp, tmp85
	movl	%ebx, %edx	# D.22348,
	movl	%ecx, %esi	# D.22349,
	movq	%rax, %rdi	# tmp85,
	call	lookup	#
	movq	%rax, -56(%rbp)	# tmp86, relt
.L620:
.LBE35:
	.loc 1 2163 0
	cmpq	$0, -56(%rbp)	#, relt
	jne	.L621	#,
	.loc 1 2164 0
	movl	$0, %eax	#, D.22344
	jmp	.L622	#
.L621:
	.loc 1 2169 0
	movq	-56(%rbp), %rax	# relt, tmp87
	movq	%rax, -48(%rbp)	# tmp87, p
.L630:
	.loc 1 2181 0
	movq	-48(%rbp), %rax	# p, tmp88
	movq	(%rax), %rdx	# p_2->exp, D.22350
	movq	-72(%rbp), %rax	# x, tmp89
	movq	%rdx, %rsi	# D.22350,
	movq	%rax, %rdi	# tmp89,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22351
	je	.L623	#,
	.loc 1 2182 0
	movq	$0, -40(%rbp)	#, q
	jmp	.L624	#
.L623:
	.loc 1 2184 0
	movq	-48(%rbp), %rax	# p, tmp90
	movq	48(%rax), %rax	# p_2->first_same_value, tmp91
	movq	%rax, -40(%rbp)	# tmp91, q
	jmp	.L625	#
.L627:
	.loc 1 2185 0
	movq	-40(%rbp), %rax	# q, tmp92
	movq	(%rax), %rax	# q_4->exp, D.22350
	movzwl	(%rax), %eax	# _27->code, D.22346
	cmpw	$61, %ax	#, D.22346
	jne	.L626	#,
	.loc 1 2186 0
	jmp	.L624	#
.L626:
	.loc 1 2184 0
	movq	-40(%rbp), %rax	# q, tmp93
	movq	32(%rax), %rax	# q_4->next_same_value, tmp94
	movq	%rax, -40(%rbp)	# tmp94, q
.L625:
	.loc 1 2184 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, q
	jne	.L627	#,
.L624:
	.loc 1 2188 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, q
	je	.L628	#,
	.loc 1 2189 0
	jmp	.L629	#
.L628:
	.loc 1 2191 0
	movq	-48(%rbp), %rax	# p, tmp95
	movq	56(%rax), %rax	# p_2->related_value, tmp96
	movq	%rax, -48(%rbp)	# tmp96, p
	.loc 1 2196 0
	movq	-48(%rbp), %rax	# p, tmp97
	cmpq	-56(%rbp), %rax	# relt, tmp97
	je	.L629	#,
	.loc 1 2196 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, p
	je	.L629	#,
	.loc 1 2198 0 is_stmt 1
	jmp	.L630	#
.L629:
	.loc 1 2200 0
	cmpq	$0, -40(%rbp)	#, q
	jne	.L631	#,
	.loc 1 2201 0
	movl	$0, %eax	#, D.22344
	jmp	.L622	#
.L631:
	.loc 1 2203 0
	movq	-72(%rbp), %rax	# x, tmp98
	movq	%rax, %rdi	# tmp98,
	call	get_integer_term	#
	movq	%rax, %rbx	#, D.22352
	movq	-48(%rbp), %rax	# p, tmp99
	movq	(%rax), %rax	# p_3->exp, D.22350
	movq	%rax, %rdi	# D.22350,
	call	get_integer_term	#
	subq	%rax, %rbx	# D.22352, tmp100
	movq	%rbx, %rax	# tmp100, tmp100
	movq	%rax, -24(%rbp)	# tmp100, offset
	.loc 1 2205 0
	movq	-40(%rbp), %rax	# q, tmp101
	movq	(%rax), %rax	# q_5->exp, D.22350
	movq	-24(%rbp), %rdx	# offset, tmp102
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# D.22350,
	call	plus_constant_wide	#
.L622:
	.loc 1 2206 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	use_related_value, .-use_related_value
	.type	canon_hash_string, @function
canon_hash_string:
.LFB30:
	.loc 1 2212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# ps, ps
	.loc 1 2213 0
	movl	$0, -12(%rbp)	#, hash
	.loc 1 2214 0
	movq	-24(%rbp), %rax	# ps, tmp65
	movq	%rax, -8(%rbp)	# tmp65, p
	.loc 1 2216 0
	cmpq	$0, -8(%rbp)	#, p
	je	.L633	#,
	.loc 1 2217 0
	jmp	.L634	#
.L635:
	.loc 1 2218 0
	movq	-8(%rbp), %rax	# p, p.380
	leaq	1(%rax), %rdx	#, tmp66
	movq	%rdx, -8(%rbp)	# tmp66, p
	movzbl	(%rax), %eax	# *p.380_8, D.22353
	movzbl	%al, %eax	# D.22353, D.22354
	addl	%eax, -12(%rbp)	# D.22354, hash
.L634:
	.loc 1 2217 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp67
	movzbl	(%rax), %eax	# *p_3, D.22353
	testb	%al, %al	# D.22353
	jne	.L635	#,
.L633:
	.loc 1 2220 0
	movl	-12(%rbp), %eax	# hash, D.22354
	.loc 1 2221 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	canon_hash_string, .-canon_hash_string
	.type	canon_hash, @function
canon_hash:
.LFB31:
	.loc 1 2240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# x, x
	movl	%esi, -108(%rbp)	# mode, mode
	.loc 1 2242 0
	movl	$0, -76(%rbp)	#, hash
.L638:
	.loc 1 2248 0
	cmpq	$0, -104(%rbp)	#, x
	jne	.L639	#,
	.loc 1 2249 0
	movl	-76(%rbp), %eax	# hash, D.22355
	jmp	.L640	#
.L639:
	.loc 1 2251 0
	movq	-104(%rbp), %rax	# x, tmp268
	movzwl	(%rax), %eax	# x_1->code, D.22356
	movzwl	%ax, %eax	# D.22356, tmp269
	movl	%eax, -72(%rbp)	# tmp269, code
	.loc 1 2252 0
	movl	-72(%rbp), %eax	# code, tmp271
	subl	$41, %eax	#, tmp270
	cmpl	$60, %eax	#, tmp270
	ja	.L702	#,
	movl	%eax, %eax	# tmp270, tmp272
	movq	.L643(,%rax,8), %rax	#, tmp273
	jmp	*%rax	# tmp273
	.section	.rodata
	.align 8
	.align 4
.L643:
	.quad	.L642
	.quad	.L702
	.quad	.L644
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L645
	.quad	.L702
	.quad	.L644
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L646
	.quad	.L647
	.quad	.L648
	.quad	.L702
	.quad	.L702
	.quad	.L644
	.quad	.L702
	.quad	.L649
	.quad	.L702
	.quad	.L650
	.quad	.L702
	.quad	.L702
	.quad	.L651
	.quad	.L652
	.quad	.L653
	.quad	.L644
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L702
	.quad	.L644
	.quad	.L644
	.quad	.L644
	.quad	.L644
	.quad	.L644
	.quad	.L644
	.text
.L649:
.LBB36:
	.loc 1 2256 0
	movq	-104(%rbp), %rax	# x, tmp274
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, tmp275
	movl	%eax, -68(%rbp)	# tmp275, regno
	.loc 1 2271 0
	cmpl	$52, -68(%rbp)	#, regno
	jbe	.L654	#,
	.loc 1 2272 0
	movb	$1, -85(%rbp)	#, record
	jmp	.L655	#
.L654:
	.loc 1 2273 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22357
	cmpq	-104(%rbp), %rax	# x, D.22357
	je	.L656	#,
	.loc 1 2274 0
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22357
	cmpq	-104(%rbp), %rax	# x, D.22357
	je	.L656	#,
	.loc 1 2275 0
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22357
	cmpq	-104(%rbp), %rax	# x, D.22357
	je	.L656	#,
	.loc 1 2276 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22357
	cmpq	-104(%rbp), %rax	# x, D.22357
	je	.L656	#,
	.loc 1 2277 0
	movq	pic_offset_table_rtx(%rip), %rax	# pic_offset_table_rtx, pic_offset_table_rtx.372
	cmpq	%rax, -104(%rbp)	# pic_offset_table_rtx.372, x
	jne	.L657	#,
.L656:
	.loc 1 2278 0
	movb	$1, -85(%rbp)	#, record
	jmp	.L655	#
.L657:
	.loc 1 2279 0
	movl	-68(%rbp), %eax	# regno, tmp276
	movzbl	global_regs(%rax), %eax	# global_regs, D.22358
	testb	%al, %al	# D.22358
	je	.L658	#,
	.loc 1 2280 0
	movb	$0, -85(%rbp)	#, record
	jmp	.L655	#
.L658:
	.loc 1 2281 0
	movl	-68(%rbp), %eax	# regno, tmp277
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.22358
	testb	%al, %al	# D.22358
	je	.L659	#,
	.loc 1 2282 0
	movb	$1, -85(%rbp)	#, record
	jmp	.L655	#
.L659:
	.loc 1 2283 0
	movq	-104(%rbp), %rax	# x, tmp278
	movzbl	2(%rax), %eax	# x_1->mode, D.22359
	movzbl	%al, %eax	# D.22359, D.22360
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22361
	cmpl	$4, %eax	#, D.22361
	jne	.L660	#,
	.loc 1 2284 0
	movb	$1, -85(%rbp)	#, record
	jmp	.L655	#
.L660:
	.loc 1 2286 0
	movb	$0, -85(%rbp)	#, record
.L655:
	.loc 1 2292 0
	movzbl	-85(%rbp), %eax	# record, tmp280
	xorl	$1, %eax	#, D.22362
	testb	%al, %al	# D.22362
	je	.L661	#,
	.loc 1 2294 0
	movl	$1, do_not_record(%rip)	#, do_not_record
	.loc 1 2295 0
	movl	$0, %eax	#, D.22355
	jmp	.L640	#
.L661:
	.loc 1 2298 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.374
	cmpl	%eax, -68(%rbp)	# cached_regno.374, regno
	jne	.L662	#,
	.loc 1 2298 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.375
	testq	%rax, %rax	# cached_cse_reg_info.375
	jne	.L663	#,
.L662:
	.loc 1 2298 0 discriminator 1
	movl	-68(%rbp), %eax	# regno, tmp281
	movl	%eax, %edi	# tmp281,
	call	get_cse_reg_info	#
	jmp	.L664	#
.L663:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.373
.L664:
	.loc 1 2298 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.373_18->reg_qty, D.22360
	movl	%eax, %edx	# D.22360, D.22355
	movl	-76(%rbp), %eax	# hash, tmp282
	addl	%edx, %eax	# D.22355, D.22355
	addl	$7808, %eax	#, tmp283
	movl	%eax, -76(%rbp)	# tmp283, hash
	.loc 1 2299 0 is_stmt 1 discriminator 3
	movl	-76(%rbp), %eax	# hash, D.22355
	jmp	.L640	#
.L650:
.LBE36:
	.loc 1 2307 0
	movq	-104(%rbp), %rax	# x, tmp284
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movzwl	(%rax), %eax	# _54->code, D.22356
	cmpw	$61, %ax	#, D.22356
	jne	.L665	#,
	.loc 1 2310 0
	movq	-104(%rbp), %rax	# x, tmp285
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movl	8(%rax), %ecx	# _56->fld[0].rtuint, D.22355
	.loc 1 2311 0
	movq	-104(%rbp), %rax	# x, tmp286
	movl	16(%rax), %eax	# x_1->fld[1].rtuint, D.22355
	movl	target_flags(%rip), %edx	# target_flags, target_flags.377
	andl	$33554432, %edx	#, D.22360
	testl	%edx, %edx	# D.22360
	je	.L666	#,
	.loc 1 2311 0 is_stmt 0 discriminator 1
	movl	$8, %esi	#, iftmp.376
	jmp	.L667	#
.L666:
	.loc 1 2311 0 discriminator 2
	movl	$4, %esi	#, iftmp.376
.L667:
	.loc 1 2311 0 discriminator 3
	movl	$0, %edx	#, tmp288
	divl	%esi	# iftmp.376
	leal	(%rcx,%rax), %edx	#, D.22355
	.loc 1 2309 0 is_stmt 1 discriminator 3
	movl	-76(%rbp), %eax	# hash, tmp289
	addl	%edx, %eax	# D.22355, D.22355
	addl	$8064, %eax	#, tmp290
	movl	%eax, -76(%rbp)	# tmp290, hash
	.loc 1 2312 0 discriminator 3
	movl	-76(%rbp), %eax	# hash, D.22355
	jmp	.L640	#
.L665:
	.loc 1 2314 0
	jmp	.L668	#
.L646:
.LBB37:
	.loc 1 2319 0
	movq	-104(%rbp), %rax	# x, tmp291
	movq	8(%rax), %rax	# x_1->fld[0].rtwint, D.22363
	movq	%rax, -56(%rbp)	# D.22363, tem
	.loc 1 2320 0
	movq	-56(%rbp), %rax	# tem, tmp292
	movl	%eax, %edx	# tmp292, D.22355
	movl	-108(%rbp), %eax	# mode, tmp293
	addl	%eax, %edx	# tmp293, D.22355
	movl	-76(%rbp), %eax	# hash, tmp294
	addl	%edx, %eax	# D.22355, D.22355
	addl	$6912, %eax	#, tmp295
	movl	%eax, -76(%rbp)	# tmp295, hash
	.loc 1 2321 0
	movl	-76(%rbp), %eax	# hash, D.22355
	jmp	.L640	#
.L647:
.LBE37:
	.loc 1 2327 0
	movq	-104(%rbp), %rax	# x, tmp296
	movzbl	2(%rax), %eax	# x_1->mode, D.22359
	movzbl	%al, %edx	# D.22359, D.22355
	movl	-72(%rbp), %eax	# code, tmp297
	addl	%edx, %eax	# D.22355, D.22355
	addl	%eax, -76(%rbp)	# D.22355, hash
	.loc 1 2328 0
	movq	-104(%rbp), %rax	# x, tmp298
	movzbl	2(%rax), %eax	# x_1->mode, D.22359
	testb	%al, %al	# D.22359
	je	.L669	#,
	.loc 1 2329 0
	movl	$2, -84(%rbp)	#, i
	jmp	.L670	#
.L671:
.LBB38:
	.loc 1 2331 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp299
	movl	-84(%rbp), %edx	# i, tmp301
	movslq	%edx, %rdx	# tmp301, tmp300
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_3].rtwint, D.22363
	movq	%rax, -48(%rbp)	# D.22363, tem
	.loc 1 2332 0 discriminator 2
	movq	-48(%rbp), %rax	# tem, tmp302
	addl	%eax, -76(%rbp)	# D.22355, hash
.LBE38:
	.loc 1 2329 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L670:
	.loc 1 2329 0 is_stmt 0 discriminator 1
	movzbl	rtx_length+55(%rip), %eax	# rtx_length, D.22359
	movzbl	%al, %eax	# D.22359, D.22360
	cmpl	-84(%rbp), %eax	# i, D.22360
	jg	.L671	#,
	jmp	.L672	#
.L669:
	.loc 1 2335 0 is_stmt 1
	movq	-104(%rbp), %rax	# x, tmp303
	movq	16(%rax), %rax	# x_1->fld[1].rtwint, D.22363
	movl	%eax, %edx	# D.22363, D.22355
	.loc 1 2336 0
	movq	-104(%rbp), %rax	# x, tmp304
	movq	24(%rax), %rax	# x_1->fld[2].rtwint, D.22363
	addl	%edx, %eax	# D.22355, D.22355
	.loc 1 2335 0
	addl	%eax, -76(%rbp)	# D.22355, hash
.L672:
	.loc 1 2337 0
	movl	-76(%rbp), %eax	# hash, D.22355
	jmp	.L640	#
.L648:
.LBB39:
	.loc 1 2344 0
	movq	-104(%rbp), %rax	# x, tmp305
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.22364
	movl	(%rax), %eax	# _95->num_elem, tmp306
	movl	%eax, -64(%rbp)	# tmp306, units
	.loc 1 2346 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L673	#
.L674:
	.loc 1 2348 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp307
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.22364
	movl	-84(%rbp), %edx	# i, tmp309
	movslq	%edx, %rdx	# tmp309, tmp308
	movq	8(%rax,%rdx,8), %rax	# _98->elem, tmp310
	movq	%rax, -40(%rbp)	# tmp310, elt
	.loc 1 2349 0 discriminator 2
	movq	-40(%rbp), %rax	# elt, tmp311
	movzbl	2(%rax), %eax	# elt_99->mode, D.22359
	movzbl	%al, %edx	# D.22359, D.22365
	movq	-40(%rbp), %rax	# elt, tmp312
	movl	%edx, %esi	# D.22365,
	movq	%rax, %rdi	# tmp312,
	call	canon_hash	#
	addl	%eax, -76(%rbp)	# D.22355, hash
	.loc 1 2346 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L673:
	.loc 1 2346 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp313
	cmpl	-64(%rbp), %eax	# units, tmp313
	jl	.L674	#,
	.loc 1 2352 0 is_stmt 1
	movl	-76(%rbp), %eax	# hash, D.22355
	jmp	.L640	#
.L652:
.LBE39:
	.loc 1 2357 0
	movq	-104(%rbp), %rax	# x, tmp314
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movl	%eax, %edx	# D.22363, D.22355
	movl	-76(%rbp), %eax	# hash, tmp315
	addl	%edx, %eax	# D.22355, D.22355
	addl	$8576, %eax	#, tmp316
	movl	%eax, -76(%rbp)	# tmp316, hash
	.loc 1 2358 0
	movl	-76(%rbp), %eax	# hash, D.22355
	jmp	.L640	#
.L653:
	.loc 1 2361 0
	movq	-104(%rbp), %rax	# x, tmp317
	movq	8(%rax), %rax	# x_1->fld[0].rtstr, D.22366
	movl	%eax, %edx	# D.22363, D.22355
	movl	-76(%rbp), %eax	# hash, tmp318
	addl	%edx, %eax	# D.22355, D.22355
	addl	$8704, %eax	#, tmp319
	movl	%eax, -76(%rbp)	# tmp319, hash
	.loc 1 2362 0
	movl	-76(%rbp), %eax	# hash, D.22355
	jmp	.L640	#
.L651:
	.loc 1 2367 0
	movq	-104(%rbp), %rax	# x, tmp320
	movzbl	3(%rax), %eax	# *x_1, D.22359
	andl	$8, %eax	#, D.22359
	testb	%al, %al	# D.22359
	jne	.L675	#,
	.loc 1 2367 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp321
	movzbl	2(%rax), %eax	# x_1->mode, D.22359
	cmpb	$51, %al	#, D.22359
	jne	.L676	#,
.L675:
	.loc 1 2369 0 is_stmt 1
	movl	$1, do_not_record(%rip)	#, do_not_record
	.loc 1 2370 0
	movl	$0, %eax	#, D.22355
	jmp	.L640	#
.L676:
	.loc 1 2372 0
	movq	-104(%rbp), %rax	# x, tmp322
	movzbl	3(%rax), %eax	# *x_1, D.22359
	andl	$4, %eax	#, D.22359
	testb	%al, %al	# D.22359
	je	.L677	#,
	.loc 1 2372 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp323
	movq	8(%rax), %rdx	# x_1->fld[0].rtx, D.22357
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L677	#,
	movq	-104(%rbp), %rax	# x, tmp324
	movq	8(%rax), %rdx	# x_1->fld[0].rtx, D.22357
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L677	#,
	movq	-104(%rbp), %rax	# x, tmp325
	movq	8(%rax), %rdx	# x_1->fld[0].rtx, D.22357
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	jne	.L678	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22358
	testb	%al, %al	# D.22358
	jne	.L677	#,
.L678:
	.loc 1 2372 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp326
	movq	8(%rax), %rdx	# x_1->fld[0].rtx, D.22357
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L677	#,
	.loc 1 2372 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp327
	movq	8(%rax), %rdx	# x_1->fld[0].rtx, D.22357
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L677	#,
	movq	-104(%rbp), %rax	# x, tmp328
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movzwl	(%rax), %eax	# _134->code, D.22356
	cmpw	$75, %ax	#, D.22356
	jne	.L679	#,
	movq	-104(%rbp), %rax	# x, tmp329
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movq	16(%rax), %rax	# _136->fld[1].rtx, D.22357
	movzwl	(%rax), %eax	# _137->code, D.22356
	cmpw	$54, %ax	#, D.22356
	jne	.L679	#,
	movq	-104(%rbp), %rax	# x, tmp330
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movq	8(%rax), %rdx	# _139->fld[0].rtx, D.22357
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L677	#,
	movq	-104(%rbp), %rax	# x, tmp331
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movq	8(%rax), %rdx	# _142->fld[0].rtx, D.22357
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L677	#,
	movq	-104(%rbp), %rax	# x, tmp332
	movq	8(%rax), %rdx	# x_1->fld[0].rtx, D.22357
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	jne	.L680	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22358
	testb	%al, %al	# D.22358
	jne	.L677	#,
.L680:
	.loc 1 2372 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp333
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movq	8(%rax), %rdx	# _148->fld[0].rtx, D.22357
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L677	#,
	.loc 1 2372 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp334
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movq	8(%rax), %rdx	# _151->fld[0].rtx, D.22357
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L677	#,
.L679:
	.loc 1 2372 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp335
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movzwl	(%rax), %eax	# _154->code, D.22356
	cmpw	$70, %ax	#, D.22356
	jne	.L681	#,
.L677:
	.loc 1 2374 0 is_stmt 1
	movl	$1, hash_arg_in_memory(%rip)	#, hash_arg_in_memory
.L681:
	.loc 1 2378 0
	addl	$66, -76(%rbp)	#, hash
	.loc 1 2379 0
	movq	-104(%rbp), %rax	# x, tmp336
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp337
	movq	%rax, -104(%rbp)	# tmp337, x
	.loc 1 2380 0
	jmp	.L638	#
.L645:
	.loc 1 2387 0
	movq	-104(%rbp), %rax	# x, tmp338
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movzwl	(%rax), %eax	# _159->code, D.22356
	cmpw	$66, %ax	#, D.22356
	jne	.L682	#,
	.loc 1 2388 0
	movq	-104(%rbp), %rax	# x, tmp339
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.22357
	movzbl	3(%rax), %eax	# *_161, D.22359
	andl	$8, %eax	#, D.22359
	testb	%al, %al	# D.22359
	jne	.L682	#,
	.loc 1 2390 0
	addl	$48, -76(%rbp)	#, hash
	.loc 1 2391 0
	movq	-104(%rbp), %rax	# x, tmp340
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp341
	movq	%rax, -104(%rbp)	# tmp341, x
	.loc 1 2393 0
	movq	-104(%rbp), %rax	# x, tmp342
	movzbl	3(%rax), %eax	# *x_165, D.22359
	andl	$4, %eax	#, D.22359
	testb	%al, %al	# D.22359
	je	.L683	#,
	.loc 1 2393 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp343
	movq	8(%rax), %rdx	# x_165->fld[0].rtx, D.22357
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L683	#,
	movq	-104(%rbp), %rax	# x, tmp344
	movq	8(%rax), %rdx	# x_165->fld[0].rtx, D.22357
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L683	#,
	movq	-104(%rbp), %rax	# x, tmp345
	movq	8(%rax), %rdx	# x_165->fld[0].rtx, D.22357
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	jne	.L684	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22358
	testb	%al, %al	# D.22358
	jne	.L683	#,
.L684:
	.loc 1 2393 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp346
	movq	8(%rax), %rdx	# x_165->fld[0].rtx, D.22357
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L683	#,
	.loc 1 2393 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp347
	movq	8(%rax), %rdx	# x_165->fld[0].rtx, D.22357
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L683	#,
	movq	-104(%rbp), %rax	# x, tmp348
	movq	8(%rax), %rax	# x_165->fld[0].rtx, D.22357
	movzwl	(%rax), %eax	# _179->code, D.22356
	cmpw	$75, %ax	#, D.22356
	jne	.L685	#,
	movq	-104(%rbp), %rax	# x, tmp349
	movq	8(%rax), %rax	# x_165->fld[0].rtx, D.22357
	movq	16(%rax), %rax	# _181->fld[1].rtx, D.22357
	movzwl	(%rax), %eax	# _182->code, D.22356
	cmpw	$54, %ax	#, D.22356
	jne	.L685	#,
	movq	-104(%rbp), %rax	# x, tmp350
	movq	8(%rax), %rax	# x_165->fld[0].rtx, D.22357
	movq	8(%rax), %rdx	# _184->fld[0].rtx, D.22357
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L683	#,
	movq	-104(%rbp), %rax	# x, tmp351
	movq	8(%rax), %rax	# x_165->fld[0].rtx, D.22357
	movq	8(%rax), %rdx	# _187->fld[0].rtx, D.22357
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L683	#,
	movq	-104(%rbp), %rax	# x, tmp352
	movq	8(%rax), %rdx	# x_165->fld[0].rtx, D.22357
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	jne	.L686	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22358
	testb	%al, %al	# D.22358
	jne	.L683	#,
.L686:
	.loc 1 2393 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp353
	movq	8(%rax), %rax	# x_165->fld[0].rtx, D.22357
	movq	8(%rax), %rdx	# _193->fld[0].rtx, D.22357
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L683	#,
	.loc 1 2393 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp354
	movq	8(%rax), %rax	# x_165->fld[0].rtx, D.22357
	movq	8(%rax), %rdx	# _196->fld[0].rtx, D.22357
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22357
	cmpq	%rax, %rdx	# D.22357, D.22357
	je	.L683	#,
.L685:
	.loc 1 2393 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp355
	movq	8(%rax), %rax	# x_165->fld[0].rtx, D.22357
	movzwl	(%rax), %eax	# _199->code, D.22356
	cmpw	$70, %ax	#, D.22356
	jne	.L687	#,
.L683:
	.loc 1 2394 0 is_stmt 1
	movl	$1, hash_arg_in_memory(%rip)	#, hash_arg_in_memory
.L687:
	.loc 1 2398 0
	addl	$66, -76(%rbp)	#, hash
	.loc 1 2399 0
	movq	-104(%rbp), %rax	# x, tmp356
	movq	8(%rax), %rax	# x_165->fld[0].rtx, tmp357
	movq	%rax, -104(%rbp)	# tmp357, x
	.loc 1 2400 0
	jmp	.L638	#
.L682:
	.loc 1 2402 0
	jmp	.L668	#
.L644:
	.loc 1 2414 0
	movl	$1, do_not_record(%rip)	#, do_not_record
	.loc 1 2415 0
	movl	$0, %eax	#, D.22355
	jmp	.L640	#
.L642:
	.loc 1 2418 0
	movq	-104(%rbp), %rax	# x, tmp358
	movzbl	3(%rax), %eax	# *x_1, D.22359
	andl	$8, %eax	#, D.22359
	testb	%al, %al	# D.22359
	je	.L688	#,
	.loc 1 2420 0
	movl	$1, do_not_record(%rip)	#, do_not_record
	.loc 1 2421 0
	movl	$0, %eax	#, D.22355
	jmp	.L640	#
.L688:
	.loc 1 2426 0
	movq	-104(%rbp), %rax	# x, tmp359
	movzbl	2(%rax), %eax	# x_1->mode, D.22359
	movzbl	%al, %edx	# D.22359, D.22355
	movl	-72(%rbp), %eax	# code, tmp360
	leal	(%rdx,%rax), %ebx	#, D.22355
	.loc 1 2427 0
	movq	-104(%rbp), %rax	# x, tmp361
	movq	8(%rax), %rax	# x_1->fld[0].rtstr, D.22366
	movq	%rax, %rdi	# D.22366,
	call	canon_hash_string	#
	addl	%eax, %ebx	# D.22355, D.22355
	.loc 1 2428 0
	movq	-104(%rbp), %rax	# x, tmp362
	movq	16(%rax), %rax	# x_1->fld[1].rtstr, D.22366
	movq	%rax, %rdi	# D.22366,
	call	canon_hash_string	#
	leal	(%rbx,%rax), %edx	#, D.22355
	.loc 1 2429 0
	movq	-104(%rbp), %rax	# x, tmp363
	movl	24(%rax), %eax	# x_1->fld[2].rtint, D.22360
	addl	%edx, %eax	# D.22355, D.22355
	.loc 1 2426 0
	addl	%eax, -76(%rbp)	# D.22355, hash
	.loc 1 2431 0
	movq	-104(%rbp), %rax	# x, tmp364
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.22364
	movl	(%rax), %eax	# _220->num_elem, D.22360
	testl	%eax, %eax	# D.22360
	je	.L689	#,
	.loc 1 2433 0
	movl	$1, -84(%rbp)	#, i
	jmp	.L690	#
.L691:
	.loc 1 2436 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp365
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.22364
	movl	-84(%rbp), %edx	# i, tmp367
	movslq	%edx, %rdx	# tmp367, tmp366
	movq	8(%rax,%rdx,8), %rax	# _225->elem, D.22357
	movzbl	2(%rax), %eax	# _226->mode, D.22359
	.loc 1 2435 0 discriminator 2
	movzbl	%al, %edx	# D.22359, D.22365
	movq	-104(%rbp), %rax	# x, tmp368
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.22364
	movl	-84(%rbp), %ecx	# i, tmp370
	movslq	%ecx, %rcx	# tmp370, tmp369
	movq	8(%rax,%rcx,8), %rax	# _229->elem, D.22357
	movl	%edx, %esi	# D.22365,
	movq	%rax, %rdi	# D.22357,
	call	canon_hash	#
	movl	%eax, %ebx	#, D.22355
	.loc 1 2437 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp371
	movq	40(%rax), %rax	# x_1->fld[4].rtvec, D.22364
	movl	-84(%rbp), %edx	# i, tmp373
	movslq	%edx, %rdx	# tmp373, tmp372
	movq	8(%rax,%rdx,8), %rax	# _232->elem, D.22357
	movq	8(%rax), %rax	# _233->fld[0].rtstr, D.22366
	movq	%rax, %rdi	# D.22366,
	call	canon_hash_string	#
	addl	%ebx, %eax	# D.22355, D.22355
	.loc 1 2435 0 discriminator 2
	addl	%eax, -76(%rbp)	# D.22355, hash
	.loc 1 2433 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L690:
	.loc 1 2433 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp374
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.22364
	movl	(%rax), %eax	# _223->num_elem, D.22360
	cmpl	-84(%rbp), %eax	# i, D.22360
	jg	.L691	#,
	.loc 1 2441 0 is_stmt 1
	movq	-104(%rbp), %rax	# x, tmp375
	movq	40(%rax), %rax	# x_1->fld[4].rtvec, D.22364
	movq	8(%rax), %rax	# _239->elem, D.22357
	movq	8(%rax), %rax	# _240->fld[0].rtstr, D.22366
	movq	%rax, %rdi	# D.22366,
	call	canon_hash_string	#
	addl	%eax, -76(%rbp)	# D.22355, hash
	.loc 1 2442 0
	movq	-104(%rbp), %rax	# x, tmp376
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.22364
	movq	8(%rax), %rax	# _244->elem, tmp377
	movq	%rax, -104(%rbp)	# tmp377, x
	.loc 1 2443 0
	movq	-104(%rbp), %rax	# x, tmp378
	movzbl	2(%rax), %eax	# x_245->mode, D.22359
	movzbl	%al, %eax	# D.22359, tmp379
	movl	%eax, -108(%rbp)	# tmp379, mode
	.loc 1 2444 0
	jmp	.L638	#
.L689:
	.loc 1 2447 0
	movl	-76(%rbp), %eax	# hash, D.22355
	jmp	.L640	#
.L702:
	.loc 1 2452 0
	nop
.L668:
	.loc 1 2455 0
	movl	-72(%rbp), %eax	# code, code.378
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22359
	movzbl	%al, %eax	# D.22359, D.22360
	subl	$1, %eax	#, tmp381
	movl	%eax, -84(%rbp)	# tmp381, i
	.loc 1 2456 0
	movq	-104(%rbp), %rax	# x, tmp382
	movzbl	2(%rax), %eax	# x_1->mode, D.22359
	movzbl	%al, %edx	# D.22359, D.22355
	movl	-72(%rbp), %eax	# code, tmp383
	addl	%edx, %eax	# D.22355, D.22355
	addl	%eax, -76(%rbp)	# D.22355, hash
	.loc 1 2457 0
	movl	-72(%rbp), %eax	# code, code.379
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp385
	movq	%rax, -32(%rbp)	# tmp385, fmt
	.loc 1 2458 0
	jmp	.L692	#
.L701:
	.loc 1 2460 0
	movl	-84(%rbp), %eax	# i, tmp386
	movslq	%eax, %rdx	# tmp386, D.22367
	movq	-32(%rbp), %rax	# fmt, tmp387
	addq	%rdx, %rax	# D.22367, D.22366
	movzbl	(%rax), %eax	# *_260, D.22358
	cmpb	$101, %al	#, D.22358
	jne	.L693	#,
.LBB40:
	.loc 1 2462 0
	movq	-104(%rbp), %rax	# x, tmp388
	movl	-84(%rbp), %edx	# i, tmp390
	movslq	%edx, %rdx	# tmp390, tmp389
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_6].rtx, tmp391
	movq	%rax, -24(%rbp)	# tmp391, tem
	.loc 1 2467 0
	cmpl	$0, -84(%rbp)	#, i
	jne	.L694	#,
	.loc 1 2469 0
	movq	-24(%rbp), %rax	# tem, tmp392
	movq	%rax, -104(%rbp)	# tmp392, x
	.loc 1 2470 0
	jmp	.L638	#
.L694:
	.loc 1 2472 0
	movq	-24(%rbp), %rax	# tem, tmp393
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp393,
	call	canon_hash	#
	addl	%eax, -76(%rbp)	# D.22355, hash
.LBE40:
	jmp	.L695	#
.L693:
	.loc 1 2474 0
	movl	-84(%rbp), %eax	# i, tmp394
	movslq	%eax, %rdx	# tmp394, D.22367
	movq	-32(%rbp), %rax	# fmt, tmp395
	addq	%rdx, %rax	# D.22367, D.22366
	movzbl	(%rax), %eax	# *_267, D.22358
	cmpb	$69, %al	#, D.22358
	jne	.L696	#,
	.loc 1 2475 0
	movl	$0, -80(%rbp)	#, j
	jmp	.L697	#
.L698:
	.loc 1 2476 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp396
	movl	-84(%rbp), %edx	# i, tmp398
	movslq	%edx, %rdx	# tmp398, tmp397
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_6].rtvec, D.22364
	movl	-80(%rbp), %edx	# j, tmp400
	movslq	%edx, %rdx	# tmp400, tmp399
	movq	8(%rax,%rdx,8), %rax	# _272->elem, D.22357
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22357,
	call	canon_hash	#
	addl	%eax, -76(%rbp)	# D.22355, hash
	.loc 1 2475 0 discriminator 2
	addl	$1, -80(%rbp)	#, j
.L697:
	.loc 1 2475 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp401
	movl	-84(%rbp), %edx	# i, tmp403
	movslq	%edx, %rdx	# tmp403, tmp402
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_6].rtvec, D.22364
	movl	(%rax), %eax	# _270->num_elem, D.22360
	cmpl	-80(%rbp), %eax	# j, D.22360
	jg	.L698	#,
	jmp	.L695	#
.L696:
	.loc 1 2477 0 is_stmt 1
	movl	-84(%rbp), %eax	# i, tmp404
	movslq	%eax, %rdx	# tmp404, D.22367
	movq	-32(%rbp), %rax	# fmt, tmp405
	addq	%rdx, %rax	# D.22367, D.22366
	movzbl	(%rax), %eax	# *_278, D.22358
	cmpb	$115, %al	#, D.22358
	jne	.L699	#,
	.loc 1 2478 0
	movq	-104(%rbp), %rax	# x, tmp406
	movl	-84(%rbp), %edx	# i, tmp408
	movslq	%edx, %rdx	# tmp408, tmp407
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_6].rtstr, D.22366
	movq	%rax, %rdi	# D.22366,
	call	canon_hash_string	#
	addl	%eax, -76(%rbp)	# D.22355, hash
	jmp	.L695	#
.L699:
	.loc 1 2479 0
	movl	-84(%rbp), %eax	# i, tmp409
	movslq	%eax, %rdx	# tmp409, D.22367
	movq	-32(%rbp), %rax	# fmt, tmp410
	addq	%rdx, %rax	# D.22367, D.22366
	movzbl	(%rax), %eax	# *_284, D.22358
	cmpb	$105, %al	#, D.22358
	jne	.L700	#,
.LBB41:
	.loc 1 2481 0
	movq	-104(%rbp), %rax	# x, tmp411
	movl	-84(%rbp), %edx	# i, tmp413
	movslq	%edx, %rdx	# tmp413, tmp412
	movl	8(%rax,%rdx,8), %eax	# x_1->fld[i_6].rtint, D.22360
	movl	%eax, -60(%rbp)	# D.22360, tem
	.loc 1 2482 0
	movl	-60(%rbp), %eax	# tem, tmp414
	addl	%eax, -76(%rbp)	# tmp414, hash
.LBE41:
	jmp	.L695	#
.L700:
	.loc 1 2484 0
	movl	-84(%rbp), %eax	# i, tmp415
	movslq	%eax, %rdx	# tmp415, D.22367
	movq	-32(%rbp), %rax	# fmt, tmp416
	addq	%rdx, %rax	# D.22367, D.22366
	movzbl	(%rax), %eax	# *_290, D.22358
	cmpb	$48, %al	#, D.22358
	je	.L695	#,
	.loc 1 2484 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp417
	movslq	%eax, %rdx	# tmp417, D.22367
	movq	-32(%rbp), %rax	# fmt, tmp418
	addq	%rdx, %rax	# D.22367, D.22366
	movzbl	(%rax), %eax	# *_293, D.22358
	cmpb	$116, %al	#, D.22358
	je	.L695	#,
	.loc 1 2488 0 is_stmt 1
	movl	$__FUNCTION__.11999, %edx	#,
	movl	$2488, %esi	#,
	movl	$.LC2, %edi	#,
	call	fancy_abort	#
.L695:
	.loc 1 2458 0
	subl	$1, -84(%rbp)	#, i
.L692:
	.loc 1 2458 0 is_stmt 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, i
	jns	.L701	#,
	.loc 1 2490 0 is_stmt 1
	movl	-76(%rbp), %eax	# hash, D.22355
.L640:
	.loc 1 2491 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	canon_hash, .-canon_hash
	.type	safe_hash, @function
safe_hash:
.LFB32:
	.loc 1 2499 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movl	%esi, -28(%rbp)	# mode, mode
	.loc 1 2500 0
	movl	do_not_record(%rip), %eax	# do_not_record, tmp61
	movl	%eax, -12(%rbp)	# tmp61, save_do_not_record
	.loc 1 2501 0
	movl	hash_arg_in_memory(%rip), %eax	# hash_arg_in_memory, tmp62
	movl	%eax, -8(%rbp)	# tmp62, save_hash_arg_in_memory
	.loc 1 2502 0
	movl	-28(%rbp), %edx	# mode, tmp63
	movq	-24(%rbp), %rax	# x, tmp64
	movl	%edx, %esi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	canon_hash	#
	movl	%eax, -4(%rbp)	# tmp65, hash
	.loc 1 2503 0
	movl	-8(%rbp), %eax	# save_hash_arg_in_memory, tmp66
	movl	%eax, hash_arg_in_memory(%rip)	# tmp66, hash_arg_in_memory
	.loc 1 2504 0
	movl	-12(%rbp), %eax	# save_do_not_record, tmp67
	movl	%eax, do_not_record(%rip)	# tmp67, do_not_record
	.loc 1 2505 0
	movl	-4(%rbp), %eax	# hash, D.22368
	.loc 1 2506 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	safe_hash, .-safe_hash
	.type	exp_equiv_p, @function
exp_equiv_p:
.LFB33:
	.loc 1 2528 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# x, x
	movq	%rsi, -96(%rbp)	# y, y
	movl	%edx, -100(%rbp)	# validate, validate
	movl	%ecx, -104(%rbp)	# equal_values, equal_values
	.loc 1 2535 0
	movq	-88(%rbp), %rax	# x, tmp271
	cmpq	-96(%rbp), %rax	# y, tmp271
	jne	.L706	#,
	.loc 1 2535 0 is_stmt 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, validate
	jne	.L706	#,
	.loc 1 2536 0 is_stmt 1
	movl	$1, %eax	#, D.22369
	jmp	.L707	#
.L706:
	.loc 1 2537 0
	cmpq	$0, -88(%rbp)	#, x
	je	.L708	#,
	.loc 1 2537 0 is_stmt 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, y
	jne	.L709	#,
.L708:
	.loc 1 2538 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp272
	cmpq	-96(%rbp), %rax	# y, tmp272
	sete	%al	#, D.22376
	movzbl	%al, %eax	# D.22376, D.22369
	jmp	.L707	#
.L709:
	.loc 1 2540 0
	movq	-88(%rbp), %rax	# x, tmp273
	movzwl	(%rax), %eax	# x_26(D)->code, D.22370
	movzwl	%ax, %eax	# D.22370, tmp274
	movl	%eax, -60(%rbp)	# tmp274, code
	.loc 1 2541 0
	movq	-96(%rbp), %rax	# y, tmp275
	movzwl	(%rax), %eax	# y_27(D)->code, D.22370
	movzwl	%ax, %eax	# D.22370, D.22371
	cmpl	-60(%rbp), %eax	# code, D.22371
	je	.L710	#,
	.loc 1 2543 0
	cmpl	$0, -104(%rbp)	#, equal_values
	jne	.L711	#,
	.loc 1 2544 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L711:
	.loc 1 2548 0
	movq	-88(%rbp), %rax	# x, tmp276
	movzwl	(%rax), %eax	# x_26(D)->code, D.22370
	cmpw	$67, %ax	#, D.22370
	je	.L712	#,
	.loc 1 2548 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# x, tmp277
	movzwl	(%rax), %eax	# x_26(D)->code, D.22370
	cmpw	$68, %ax	#, D.22370
	je	.L712	#,
	.loc 1 2548 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp278
	movzwl	(%rax), %eax	# x_26(D)->code, D.22370
	cmpw	$54, %ax	#, D.22370
	je	.L712	#,
	movq	-88(%rbp), %rax	# x, tmp279
	movzwl	(%rax), %eax	# x_26(D)->code, D.22370
	cmpw	$55, %ax	#, D.22370
	je	.L712	#,
	movq	-88(%rbp), %rax	# x, tmp280
	movzwl	(%rax), %eax	# x_26(D)->code, D.22370
	cmpw	$58, %ax	#, D.22370
	je	.L712	#,
	movq	-88(%rbp), %rax	# x, tmp281
	movzwl	(%rax), %eax	# x_26(D)->code, D.22370
	cmpw	$134, %ax	#, D.22370
	je	.L712	#,
	movq	-88(%rbp), %rax	# x, tmp282
	movzwl	(%rax), %eax	# x_26(D)->code, D.22370
	cmpw	$56, %ax	#, D.22370
	je	.L712	#,
	movq	-88(%rbp), %rax	# x, tmp283
	movzwl	(%rax), %eax	# x_26(D)->code, D.22370
	cmpw	$140, %ax	#, D.22370
	jne	.L713	#,
.L712:
	movq	-96(%rbp), %rax	# y, tmp284
	movzwl	(%rax), %eax	# y_27(D)->code, D.22370
	cmpw	$61, %ax	#, D.22370
	jne	.L713	#,
	.loc 1 2549 0 is_stmt 1
	movq	-96(%rbp), %rax	# y, tmp285
	movl	8(%rax), %edx	# y_27(D)->fld[0].rtuint, D.22371
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.382
	cmpl	%eax, %edx	# cached_regno.382, D.22371
	jne	.L714	#,
	.loc 1 2549 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.383
	testq	%rax, %rax	# cached_cse_reg_info.383
	jne	.L715	#,
.L714:
	.loc 1 2549 0 discriminator 1
	movq	-96(%rbp), %rax	# y, tmp286
	movl	8(%rax), %eax	# y_27(D)->fld[0].rtuint, D.22371
	movl	%eax, %edi	# D.22371,
	call	get_cse_reg_info	#
	jmp	.L716	#
.L715:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.381
.L716:
	.loc 1 2549 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.381_6->reg_qty, D.22369
	movq	-96(%rbp), %rax	# y, tmp287
	movl	8(%rax), %eax	# y_27(D)->fld[0].rtuint, D.22371
	cmpl	%eax, %edx	# D.22369, D.22369
	je	.L713	#,
.LBB42:
	.loc 1 2551 0 is_stmt 1
	movq	-96(%rbp), %rax	# y, tmp288
	movl	8(%rax), %edx	# y_27(D)->fld[0].rtuint, D.22371
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.385
	cmpl	%eax, %edx	# cached_regno.385, D.22371
	jne	.L717	#,
	.loc 1 2551 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.386
	testq	%rax, %rax	# cached_cse_reg_info.386
	jne	.L718	#,
.L717:
	.loc 1 2551 0 discriminator 1
	movq	-96(%rbp), %rax	# y, tmp289
	movl	8(%rax), %eax	# y_27(D)->fld[0].rtuint, D.22371
	movl	%eax, %edi	# D.22371,
	call	get_cse_reg_info	#
	jmp	.L719	#
.L718:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.384
.L719:
	.loc 1 2551 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.384_7->reg_qty, tmp290
	movl	%eax, -56(%rbp)	# tmp290, y_q
	.loc 1 2552 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.387
	movl	-56(%rbp), %eax	# y_q, tmp291
	movslq	%eax, %rdx	# tmp291, D.22372
	movq	%rdx, %rax	# D.22372, tmp292
	addq	%rax, %rax	# tmp292
	addq	%rdx, %rax	# D.22372, tmp292
	salq	$4, %rax	#, tmp293
	addq	%rcx, %rax	# qty_table.387, tmp294
	movq	%rax, -40(%rbp)	# tmp294, y_ent
	.loc 1 2554 0 discriminator 3
	movq	-96(%rbp), %rax	# y, tmp295
	movzbl	2(%rax), %eax	# y_27(D)->mode, D.22373
	movzbl	%al, %edx	# D.22373, D.22371
	movq	-40(%rbp), %rax	# y_ent, tmp296
	movl	36(%rax), %eax	# y_ent_64->mode, D.22374
	cmpl	%eax, %edx	# D.22374, D.22371
	jne	.L713	#,
	.loc 1 2555 0
	movq	-40(%rbp), %rax	# y_ent, tmp297
	movq	(%rax), %rdx	# y_ent_64->const_rtx, D.22375
	movq	-88(%rbp), %rax	# x, tmp298
	movq	%rdx, %rsi	# D.22375,
	movq	%rax, %rdi	# tmp298,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22369
	je	.L713	#,
	.loc 1 2556 0
	cmpl	$0, -100(%rbp)	#, validate
	je	.L720	#,
	.loc 1 2556 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# y, tmp299
	movl	8(%rax), %edx	# y_27(D)->fld[0].rtuint, D.22371
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.389
	cmpl	%eax, %edx	# cached_regno.389, D.22371
	jne	.L721	#,
	.loc 1 2556 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.390
	testq	%rax, %rax	# cached_cse_reg_info.390
	jne	.L722	#,
.L721:
	.loc 1 2556 0 discriminator 1
	movq	-96(%rbp), %rax	# y, tmp300
	movl	8(%rax), %eax	# y_27(D)->fld[0].rtuint, D.22371
	movl	%eax, %edi	# D.22371,
	call	get_cse_reg_info	#
	jmp	.L723	#
.L722:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.388
.L723:
	.loc 1 2556 0 discriminator 3
	movl	28(%rax), %ebx	# iftmp.388_8->reg_in_table, D.22369
	movq	-96(%rbp), %rax	# y, tmp301
	movl	8(%rax), %edx	# y_27(D)->fld[0].rtuint, D.22371
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.392
	cmpl	%eax, %edx	# cached_regno.392, D.22371
	jne	.L724	#,
	.loc 1 2556 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.393
	testq	%rax, %rax	# cached_cse_reg_info.393
	jne	.L725	#,
.L724:
	.loc 1 2556 0 discriminator 1
	movq	-96(%rbp), %rax	# y, tmp302
	movl	8(%rax), %eax	# y_27(D)->fld[0].rtuint, D.22371
	movl	%eax, %edi	# D.22371,
	call	get_cse_reg_info	#
	jmp	.L726	#
.L725:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.391
.L726:
	.loc 1 2556 0 discriminator 3
	movl	24(%rax), %eax	# iftmp.391_9->reg_tick, D.22369
	cmpl	%eax, %ebx	# D.22369, D.22369
	jne	.L713	#,
.L720:
	.loc 1 2557 0 is_stmt 1
	movl	$1, %eax	#, D.22369
	jmp	.L707	#
.L713:
.LBE42:
	.loc 1 2560 0
	movq	-96(%rbp), %rax	# y, tmp303
	movzwl	(%rax), %eax	# y_27(D)->code, D.22370
	cmpw	$67, %ax	#, D.22370
	je	.L727	#,
	.loc 1 2560 0 is_stmt 0 discriminator 2
	movq	-96(%rbp), %rax	# y, tmp304
	movzwl	(%rax), %eax	# y_27(D)->code, D.22370
	cmpw	$68, %ax	#, D.22370
	je	.L727	#,
	.loc 1 2560 0 discriminator 1
	movq	-96(%rbp), %rax	# y, tmp305
	movzwl	(%rax), %eax	# y_27(D)->code, D.22370
	cmpw	$54, %ax	#, D.22370
	je	.L727	#,
	movq	-96(%rbp), %rax	# y, tmp306
	movzwl	(%rax), %eax	# y_27(D)->code, D.22370
	cmpw	$55, %ax	#, D.22370
	je	.L727	#,
	movq	-96(%rbp), %rax	# y, tmp307
	movzwl	(%rax), %eax	# y_27(D)->code, D.22370
	cmpw	$58, %ax	#, D.22370
	je	.L727	#,
	movq	-96(%rbp), %rax	# y, tmp308
	movzwl	(%rax), %eax	# y_27(D)->code, D.22370
	cmpw	$134, %ax	#, D.22370
	je	.L727	#,
	movq	-96(%rbp), %rax	# y, tmp309
	movzwl	(%rax), %eax	# y_27(D)->code, D.22370
	cmpw	$56, %ax	#, D.22370
	je	.L727	#,
	movq	-96(%rbp), %rax	# y, tmp310
	movzwl	(%rax), %eax	# y_27(D)->code, D.22370
	cmpw	$140, %ax	#, D.22370
	jne	.L728	#,
.L727:
	cmpl	$61, -60(%rbp)	#, code
	jne	.L728	#,
	.loc 1 2561 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp311
	movl	8(%rax), %edx	# x_26(D)->fld[0].rtuint, D.22371
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.395
	cmpl	%eax, %edx	# cached_regno.395, D.22371
	jne	.L729	#,
	.loc 1 2561 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.396
	testq	%rax, %rax	# cached_cse_reg_info.396
	jne	.L730	#,
.L729:
	.loc 1 2561 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp312
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22371
	movl	%eax, %edi	# D.22371,
	call	get_cse_reg_info	#
	jmp	.L731	#
.L730:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.394
.L731:
	.loc 1 2561 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.394_10->reg_qty, D.22369
	movq	-88(%rbp), %rax	# x, tmp313
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22371
	cmpl	%eax, %edx	# D.22369, D.22369
	je	.L728	#,
.LBB43:
	.loc 1 2563 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp314
	movl	8(%rax), %edx	# x_26(D)->fld[0].rtuint, D.22371
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.398
	cmpl	%eax, %edx	# cached_regno.398, D.22371
	jne	.L732	#,
	.loc 1 2563 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.399
	testq	%rax, %rax	# cached_cse_reg_info.399
	jne	.L733	#,
.L732:
	.loc 1 2563 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp315
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22371
	movl	%eax, %edi	# D.22371,
	call	get_cse_reg_info	#
	jmp	.L734	#
.L733:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.397
.L734:
	.loc 1 2563 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.397_11->reg_qty, tmp316
	movl	%eax, -52(%rbp)	# tmp316, x_q
	.loc 1 2564 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.400
	movl	-52(%rbp), %eax	# x_q, tmp317
	movslq	%eax, %rdx	# tmp317, D.22372
	movq	%rdx, %rax	# D.22372, tmp318
	addq	%rax, %rax	# tmp318
	addq	%rdx, %rax	# D.22372, tmp318
	salq	$4, %rax	#, tmp319
	addq	%rcx, %rax	# qty_table.400, tmp320
	movq	%rax, -32(%rbp)	# tmp320, x_ent
	.loc 1 2566 0 discriminator 3
	movq	-88(%rbp), %rax	# x, tmp321
	movzbl	2(%rax), %eax	# x_26(D)->mode, D.22373
	movzbl	%al, %edx	# D.22373, D.22371
	movq	-32(%rbp), %rax	# x_ent, tmp322
	movl	36(%rax), %eax	# x_ent_112->mode, D.22374
	cmpl	%eax, %edx	# D.22374, D.22371
	jne	.L728	#,
	.loc 1 2567 0
	movq	-32(%rbp), %rax	# x_ent, tmp323
	movq	(%rax), %rdx	# x_ent_112->const_rtx, D.22375
	movq	-96(%rbp), %rax	# y, tmp324
	movq	%rdx, %rsi	# D.22375,
	movq	%rax, %rdi	# tmp324,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22369
	je	.L728	#,
	.loc 1 2568 0
	movl	$1, %eax	#, D.22369
	jmp	.L707	#
.L728:
.LBE43:
	.loc 1 2571 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L710:
	.loc 1 2575 0
	movq	-88(%rbp), %rax	# x, tmp325
	movzbl	2(%rax), %edx	# x_26(D)->mode, D.22373
	movq	-96(%rbp), %rax	# y, tmp326
	movzbl	2(%rax), %eax	# y_27(D)->mode, D.22373
	cmpb	%al, %dl	# D.22373, D.22373
	je	.L735	#,
	.loc 1 2576 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L735:
	.loc 1 2578 0
	movl	-60(%rbp), %eax	# code, tmp328
	subl	$41, %eax	#, tmp327
	cmpl	$62, %eax	#, tmp327
	ja	.L817	#,
	movl	%eax, %eax	# tmp327, tmp329
	movq	.L738(,%rax,8), %rax	#, tmp330
	jmp	*%rax	# tmp330
	.section	.rodata
	.align 8
	.align 4
.L738:
	.quad	.L737
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L739
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L739
	.quad	.L817
	.quad	.L740
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L741
	.quad	.L742
	.quad	.L739
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L743
	.quad	.L817
	.quad	.L817
	.quad	.L743
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L743
	.quad	.L743
	.quad	.L743
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L743
	.quad	.L743
	.text
.L739:
	.loc 1 2583 0
	movq	-88(%rbp), %rax	# x, tmp331
	cmpq	-96(%rbp), %rax	# y, tmp331
	sete	%al	#, D.22376
	movzbl	%al, %eax	# D.22376, D.22369
	jmp	.L707	#
.L741:
	.loc 1 2586 0
	movq	-88(%rbp), %rax	# x, tmp332
	movq	8(%rax), %rdx	# x_26(D)->fld[0].rtx, D.22375
	movq	-96(%rbp), %rax	# y, tmp333
	movq	8(%rax), %rax	# y_27(D)->fld[0].rtx, D.22375
	cmpq	%rax, %rdx	# D.22375, D.22375
	sete	%al	#, D.22376
	movzbl	%al, %eax	# D.22376, D.22369
	jmp	.L707	#
.L742:
	.loc 1 2589 0
	movq	-88(%rbp), %rax	# x, tmp334
	movq	8(%rax), %rdx	# x_26(D)->fld[0].rtstr, D.22377
	movq	-96(%rbp), %rax	# y, tmp335
	movq	8(%rax), %rax	# y_27(D)->fld[0].rtstr, D.22377
	cmpq	%rax, %rdx	# D.22377, D.22377
	sete	%al	#, D.22376
	movzbl	%al, %eax	# D.22376, D.22369
	jmp	.L707	#
.L740:
.LBB44:
	.loc 1 2593 0
	movq	-96(%rbp), %rax	# y, tmp336
	movl	8(%rax), %eax	# y_27(D)->fld[0].rtuint, tmp337
	movl	%eax, -48(%rbp)	# tmp337, regno
	.loc 1 2595 0
	cmpl	$52, -48(%rbp)	#, regno
	ja	.L744	#,
	.loc 1 2595 0 is_stmt 0 discriminator 1
	cmpl	$7, -48(%rbp)	#, regno
	jbe	.L745	#,
	.loc 1 2596 0 is_stmt 1
	cmpl	$15, -48(%rbp)	#, regno
	jbe	.L746	#,
.L745:
	.loc 1 2596 0 is_stmt 0 discriminator 2
	cmpl	$20, -48(%rbp)	#, regno
	jbe	.L747	#,
	.loc 1 2596 0 discriminator 1
	cmpl	$28, -48(%rbp)	#, regno
	jbe	.L746	#,
.L747:
	.loc 1 2596 0 discriminator 2
	cmpl	$44, -48(%rbp)	#, regno
	jbe	.L748	#,
	.loc 1 2596 0 discriminator 1
	cmpl	$52, -48(%rbp)	#, regno
	jbe	.L746	#,
.L748:
	.loc 1 2596 0 discriminator 2
	cmpl	$28, -48(%rbp)	#, regno
	jbe	.L749	#,
	.loc 1 2596 0 discriminator 1
	cmpl	$36, -48(%rbp)	#, regno
	ja	.L749	#,
.L746:
	movq	-96(%rbp), %rax	# y, tmp338
	movzbl	2(%rax), %eax	# y_27(D)->mode, D.22373
	movzbl	%al, %eax	# D.22373, D.22369
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22378
	.loc 1 2595 0 is_stmt 1 discriminator 1
	cmpl	$5, %eax	#, D.22378
	je	.L750	#,
	.loc 1 2596 0
	movq	-96(%rbp), %rax	# y, tmp340
	movzbl	2(%rax), %eax	# y_27(D)->mode, D.22373
	movzbl	%al, %eax	# D.22373, D.22369
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22378
	cmpl	$6, %eax	#, D.22378
	jne	.L751	#,
.L750:
	.loc 1 2595 0 discriminator 3
	movl	$2, %eax	#, iftmp.403
	jmp	.L753	#
.L751:
	.loc 1 2595 0 is_stmt 0
	movl	$1, %eax	#, iftmp.403
	jmp	.L753	#
.L749:
	.loc 1 2596 0 is_stmt 1 discriminator 2
	movq	-96(%rbp), %rax	# y, tmp342
	movzbl	2(%rax), %eax	# y_27(D)->mode, D.22373
	.loc 1 2595 0 discriminator 2
	cmpb	$18, %al	#, D.22373
	jne	.L754	#,
	.loc 1 2596 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.406
	andl	$33554432, %eax	#, D.22369
	.loc 1 2595 0 discriminator 6
	testl	%eax, %eax	# D.22369
	je	.L755	#,
	.loc 1 2595 0 is_stmt 0 discriminator 8
	movl	$2, %eax	#, iftmp.405
	jmp	.L766	#
.L755:
	.loc 1 2595 0 discriminator 9
	movl	$3, %eax	#, iftmp.405
	jmp	.L766	#
.L754:
	.loc 1 2596 0 is_stmt 1 discriminator 7
	movq	-96(%rbp), %rax	# y, tmp343
	movzbl	2(%rax), %eax	# y_27(D)->mode, D.22373
	.loc 1 2595 0 discriminator 7
	cmpb	$24, %al	#, D.22373
	jne	.L758	#,
	.loc 1 2596 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.409
	andl	$33554432, %eax	#, D.22369
	.loc 1 2595 0 discriminator 10
	testl	%eax, %eax	# D.22369
	je	.L759	#,
	.loc 1 2595 0 is_stmt 0 discriminator 11
	movl	$4, %eax	#, iftmp.408
	jmp	.L766	#
.L759:
	.loc 1 2595 0 discriminator 12
	movl	$6, %eax	#, iftmp.408
	jmp	.L766	#
.L758:
	.loc 1 2596 0 is_stmt 1
	movq	-96(%rbp), %rax	# y, tmp344
	movzbl	2(%rax), %eax	# y_27(D)->mode, D.22373
	movzbl	%al, %eax	# D.22373, D.22369
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22373
	movzbl	%al, %edx	# D.22373, D.22369
	movl	target_flags(%rip), %eax	# target_flags, target_flags.411
	andl	$33554432, %eax	#, D.22369
	testl	%eax, %eax	# D.22369
	je	.L762	#,
	.loc 1 2596 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.410
	jmp	.L763	#
.L762:
	.loc 1 2596 0 discriminator 2
	movl	$4, %eax	#, iftmp.410
.L763:
	.loc 1 2596 0 discriminator 3
	addl	%edx, %eax	# D.22369, D.22369
	subl	$1, %eax	#, D.22369
	movl	target_flags(%rip), %edx	# target_flags, target_flags.413
	andl	$33554432, %edx	#, D.22369
	testl	%edx, %edx	# D.22369
	je	.L764	#,
	.loc 1 2596 0 discriminator 1
	movl	$8, %ebx	#, iftmp.412
	jmp	.L765	#
.L764:
	.loc 1 2596 0 discriminator 2
	movl	$4, %ebx	#, iftmp.412
.L765:
	.loc 1 2596 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.412
.L753:
	jmp	.L766	#
.L744:
	.loc 1 2595 0 is_stmt 1 discriminator 2
	movl	$1, %eax	#, iftmp.401
.L766:
	.loc 1 2594 0
	movl	-48(%rbp), %edx	# regno, tmp351
	addl	%edx, %eax	# tmp351, tmp350
	movl	%eax, -44(%rbp)	# tmp350, endregno
	.loc 1 2603 0
	movq	-88(%rbp), %rax	# x, tmp352
	movl	8(%rax), %edx	# x_26(D)->fld[0].rtuint, D.22371
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.415
	cmpl	%eax, %edx	# cached_regno.415, D.22371
	jne	.L767	#,
	.loc 1 2603 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.416
	testq	%rax, %rax	# cached_cse_reg_info.416
	jne	.L768	#,
.L767:
	.loc 1 2603 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp353
	movl	8(%rax), %eax	# x_26(D)->fld[0].rtuint, D.22371
	movl	%eax, %edi	# D.22371,
	call	get_cse_reg_info	#
	jmp	.L769	#
.L768:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.414
.L769:
	.loc 1 2603 0 discriminator 3
	movl	20(%rax), %ebx	# iftmp.414_21->reg_qty, D.22369
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.418
	cmpl	%eax, -48(%rbp)	# cached_regno.418, regno
	jne	.L770	#,
	.loc 1 2603 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.419
	testq	%rax, %rax	# cached_cse_reg_info.419
	jne	.L771	#,
.L770:
	.loc 1 2603 0 discriminator 1
	movl	-48(%rbp), %eax	# regno, tmp354
	movl	%eax, %edi	# tmp354,
	call	get_cse_reg_info	#
	jmp	.L772	#
.L771:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.417
.L772:
	.loc 1 2603 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.417_22->reg_qty, D.22369
	cmpl	%eax, %ebx	# D.22369, D.22369
	je	.L773	#,
	.loc 1 2604 0 is_stmt 1
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L773:
	.loc 1 2606 0
	cmpl	$0, -100(%rbp)	#, validate
	jne	.L774	#,
	.loc 1 2607 0
	movl	$1, %eax	#, D.22369
	jmp	.L707	#
.L774:
	.loc 1 2609 0
	movl	-48(%rbp), %eax	# regno, tmp355
	movl	%eax, -64(%rbp)	# tmp355, i
	jmp	.L775	#
.L783:
	.loc 1 2610 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.421
	cmpl	%eax, -64(%rbp)	# cached_regno.421, i
	jne	.L776	#,
	.loc 1 2610 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.422
	testq	%rax, %rax	# cached_cse_reg_info.422
	jne	.L777	#,
.L776:
	.loc 1 2610 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp356
	movl	%eax, %edi	# tmp356,
	call	get_cse_reg_info	#
	jmp	.L778	#
.L777:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.420
.L778:
	.loc 1 2610 0 discriminator 3
	movl	28(%rax), %ebx	# iftmp.420_23->reg_in_table, D.22369
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.424
	cmpl	%eax, -64(%rbp)	# cached_regno.424, i
	jne	.L779	#,
	.loc 1 2610 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.425
	testq	%rax, %rax	# cached_cse_reg_info.425
	jne	.L780	#,
.L779:
	.loc 1 2610 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp357
	movl	%eax, %edi	# tmp357,
	call	get_cse_reg_info	#
	jmp	.L781	#
.L780:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.423
.L781:
	.loc 1 2610 0 discriminator 3
	movl	24(%rax), %eax	# iftmp.423_24->reg_tick, D.22369
	cmpl	%eax, %ebx	# D.22369, D.22369
	je	.L782	#,
	.loc 1 2611 0 is_stmt 1
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L782:
	.loc 1 2609 0
	addl	$1, -64(%rbp)	#, i
.L775:
	.loc 1 2609 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp358
	cmpl	-44(%rbp), %eax	# endregno, tmp358
	jb	.L783	#,
	.loc 1 2613 0 is_stmt 1
	movl	$1, %eax	#, D.22369
	jmp	.L707	#
.L743:
.LBE44:
	.loc 1 2624 0
	movq	-96(%rbp), %rax	# y, tmp359
	movq	8(%rax), %rsi	# y_27(D)->fld[0].rtx, D.22375
	movq	-88(%rbp), %rax	# x, tmp360
	movq	8(%rax), %rax	# x_26(D)->fld[0].rtx, D.22375
	movl	-104(%rbp), %ecx	# equal_values, tmp361
	movl	-100(%rbp), %edx	# validate, tmp362
	movq	%rax, %rdi	# D.22375,
	call	exp_equiv_p	#
	.loc 1 2627 0
	testl	%eax, %eax	# D.22369
	je	.L784	#,
	.loc 1 2625 0
	movq	-96(%rbp), %rax	# y, tmp363
	movq	16(%rax), %rsi	# y_27(D)->fld[1].rtx, D.22375
	movq	-88(%rbp), %rax	# x, tmp364
	movq	16(%rax), %rax	# x_26(D)->fld[1].rtx, D.22375
	movl	-104(%rbp), %ecx	# equal_values, tmp365
	movl	-100(%rbp), %edx	# validate, tmp366
	movq	%rax, %rdi	# D.22375,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22369
	jne	.L785	#,
.L784:
	.loc 1 2627 0 discriminator 1
	movq	-96(%rbp), %rax	# y, tmp367
	movq	16(%rax), %rsi	# y_27(D)->fld[1].rtx, D.22375
	movq	-88(%rbp), %rax	# x, tmp368
	movq	8(%rax), %rax	# x_26(D)->fld[0].rtx, D.22375
	movl	-104(%rbp), %ecx	# equal_values, tmp369
	movl	-100(%rbp), %edx	# validate, tmp370
	movq	%rax, %rdi	# D.22375,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22369
	je	.L786	#,
	.loc 1 2629 0
	movq	-96(%rbp), %rax	# y, tmp371
	movq	8(%rax), %rsi	# y_27(D)->fld[0].rtx, D.22375
	movq	-88(%rbp), %rax	# x, tmp372
	movq	16(%rax), %rax	# x_26(D)->fld[1].rtx, D.22375
	movl	-104(%rbp), %ecx	# equal_values, tmp373
	movl	-100(%rbp), %edx	# validate, tmp374
	movq	%rax, %rdi	# D.22375,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22369
	je	.L786	#,
.L785:
	.loc 1 2627 0
	movl	$1, %eax	#, iftmp.426
	jmp	.L787	#
.L786:
	.loc 1 2627 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.426
.L787:
	.loc 1 2624 0 is_stmt 1
	jmp	.L707	#
.L737:
	.loc 1 2637 0
	movq	-88(%rbp), %rax	# x, tmp375
	movzbl	3(%rax), %eax	# *x_26(D), D.22373
	andl	$8, %eax	#, D.22373
	testb	%al, %al	# D.22373
	jne	.L788	#,
	.loc 1 2637 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# y, tmp376
	movzbl	3(%rax), %eax	# *y_27(D), D.22373
	andl	$8, %eax	#, D.22373
	testb	%al, %al	# D.22373
	je	.L789	#,
.L788:
	.loc 1 2638 0 is_stmt 1
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L789:
	.loc 1 2640 0
	movq	-88(%rbp), %rax	# x, tmp377
	movzbl	2(%rax), %edx	# x_26(D)->mode, D.22373
	movq	-96(%rbp), %rax	# y, tmp378
	movzbl	2(%rax), %eax	# y_27(D)->mode, D.22373
	cmpb	%al, %dl	# D.22373, D.22373
	jne	.L790	#,
	.loc 1 2641 0
	movq	-96(%rbp), %rax	# y, tmp379
	movq	8(%rax), %rdx	# y_27(D)->fld[0].rtstr, D.22377
	movq	-88(%rbp), %rax	# x, tmp380
	movq	8(%rax), %rax	# x_26(D)->fld[0].rtstr, D.22377
	movq	%rdx, %rsi	# D.22377,
	movq	%rax, %rdi	# D.22377,
	call	strcmp	#
	testl	%eax, %eax	# D.22369
	jne	.L790	#,
	.loc 1 2642 0
	movq	-96(%rbp), %rax	# y, tmp381
	movq	16(%rax), %rdx	# y_27(D)->fld[1].rtstr, D.22377
	movq	-88(%rbp), %rax	# x, tmp382
	movq	16(%rax), %rax	# x_26(D)->fld[1].rtstr, D.22377
	movq	%rdx, %rsi	# D.22377,
	movq	%rax, %rdi	# D.22377,
	call	strcmp	#
	testl	%eax, %eax	# D.22369
	jne	.L790	#,
	.loc 1 2644 0
	movq	-88(%rbp), %rax	# x, tmp383
	movl	24(%rax), %edx	# x_26(D)->fld[2].rtint, D.22369
	movq	-96(%rbp), %rax	# y, tmp384
	movl	24(%rax), %eax	# y_27(D)->fld[2].rtint, D.22369
	cmpl	%eax, %edx	# D.22369, D.22369
	jne	.L790	#,
	.loc 1 2645 0
	movq	-88(%rbp), %rax	# x, tmp385
	movq	32(%rax), %rax	# x_26(D)->fld[3].rtvec, D.22379
	movl	(%rax), %edx	# _233->num_elem, D.22369
	movq	-96(%rbp), %rax	# y, tmp386
	movq	32(%rax), %rax	# y_27(D)->fld[3].rtvec, D.22379
	movl	(%rax), %eax	# _235->num_elem, D.22369
	cmpl	%eax, %edx	# D.22369, D.22369
	je	.L791	#,
.L790:
	.loc 1 2646 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L791:
	.loc 1 2648 0
	movq	-88(%rbp), %rax	# x, tmp387
	movq	32(%rax), %rax	# x_26(D)->fld[3].rtvec, D.22379
	movl	(%rax), %eax	# _237->num_elem, D.22369
	testl	%eax, %eax	# D.22369
	je	.L792	#,
	.loc 1 2650 0
	movq	-88(%rbp), %rax	# x, tmp388
	movq	32(%rax), %rax	# x_26(D)->fld[3].rtvec, D.22379
	movl	(%rax), %eax	# _239->num_elem, D.22369
	subl	$1, %eax	#, tmp389
	movl	%eax, -72(%rbp)	# tmp389, i
	jmp	.L793	#
.L796:
	.loc 1 2652 0
	movq	-96(%rbp), %rax	# y, tmp390
	movq	32(%rax), %rax	# y_27(D)->fld[3].rtvec, D.22379
	.loc 1 2651 0
	movl	-72(%rbp), %edx	# i, tmp392
	movslq	%edx, %rdx	# tmp392, tmp391
	movq	8(%rax,%rdx,8), %rsi	# _242->elem, D.22375
	movq	-88(%rbp), %rax	# x, tmp393
	movq	32(%rax), %rax	# x_26(D)->fld[3].rtvec, D.22379
	movl	-72(%rbp), %edx	# i, tmp395
	movslq	%edx, %rdx	# tmp395, tmp394
	movq	8(%rax,%rdx,8), %rax	# _244->elem, D.22375
	movl	-104(%rbp), %ecx	# equal_values, tmp396
	movl	-100(%rbp), %edx	# validate, tmp397
	movq	%rax, %rdi	# D.22375,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22369
	je	.L794	#,
	.loc 1 2655 0
	movq	-96(%rbp), %rax	# y, tmp398
	movq	40(%rax), %rax	# y_27(D)->fld[4].rtvec, D.22379
	movl	-72(%rbp), %edx	# i, tmp400
	movslq	%edx, %rdx	# tmp400, tmp399
	movq	8(%rax,%rdx,8), %rax	# _247->elem, D.22375
	.loc 1 2654 0
	movq	8(%rax), %rdx	# _248->fld[0].rtstr, D.22377
	movq	-88(%rbp), %rax	# x, tmp401
	movq	40(%rax), %rax	# x_26(D)->fld[4].rtvec, D.22379
	movl	-72(%rbp), %ecx	# i, tmp403
	movslq	%ecx, %rcx	# tmp403, tmp402
	movq	8(%rax,%rcx,8), %rax	# _250->elem, D.22375
	movq	8(%rax), %rax	# _251->fld[0].rtstr, D.22377
	movq	%rdx, %rsi	# D.22377,
	movq	%rax, %rdi	# D.22377,
	call	strcmp	#
	testl	%eax, %eax	# D.22369
	je	.L795	#,
.L794:
	.loc 1 2656 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L795:
	.loc 1 2650 0
	subl	$1, -72(%rbp)	#, i
.L793:
	.loc 1 2650 0 is_stmt 0 discriminator 1
	cmpl	$0, -72(%rbp)	#, i
	jns	.L796	#,
.L792:
	.loc 1 2659 0 is_stmt 1
	movl	$1, %eax	#, D.22369
	jmp	.L707	#
.L817:
	.loc 1 2662 0
	nop
	.loc 1 2668 0
	movl	-60(%rbp), %eax	# code, code.427
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp405
	movq	%rax, -24(%rbp)	# tmp405, fmt
	.loc 1 2669 0
	movl	-60(%rbp), %eax	# code, code.428
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22373
	movzbl	%al, %eax	# D.22373, D.22369
	subl	$1, %eax	#, tmp407
	movl	%eax, -72(%rbp)	# tmp407, i
	jmp	.L797	#
.L815:
	.loc 1 2671 0
	movl	-72(%rbp), %eax	# i, tmp408
	movslq	%eax, %rdx	# tmp408, D.22380
	movq	-24(%rbp), %rax	# fmt, tmp409
	addq	%rdx, %rax	# D.22380, D.22377
	movzbl	(%rax), %eax	# *_266, D.22381
	movsbl	%al, %eax	# D.22381, D.22369
	cmpl	$105, %eax	#, D.22369
	je	.L799	#,
	cmpl	$105, %eax	#, D.22369
	jg	.L800	#,
	cmpl	$69, %eax	#, D.22369
	je	.L801	#,
	cmpl	$101, %eax	#, D.22369
	je	.L802	#,
	cmpl	$48, %eax	#, D.22369
	je	.L818	#,
	jmp	.L798	#
.L800:
	cmpl	$116, %eax	#, D.22369
	je	.L818	#,
	cmpl	$119, %eax	#, D.22369
	je	.L804	#,
	cmpl	$115, %eax	#, D.22369
	je	.L805	#,
	jmp	.L798	#
.L802:
	.loc 1 2674 0
	movq	-96(%rbp), %rax	# y, tmp410
	movl	-72(%rbp), %edx	# i, tmp412
	movslq	%edx, %rdx	# tmp412, tmp411
	movq	8(%rax,%rdx,8), %rsi	# y_27(D)->fld[i_2].rtx, D.22375
	movq	-88(%rbp), %rax	# x, tmp413
	movl	-72(%rbp), %edx	# i, tmp415
	movslq	%edx, %rdx	# tmp415, tmp414
	movq	8(%rax,%rdx,8), %rax	# x_26(D)->fld[i_2].rtx, D.22375
	movl	-104(%rbp), %ecx	# equal_values, tmp416
	movl	-100(%rbp), %edx	# validate, tmp417
	movq	%rax, %rdi	# D.22375,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22369
	jne	.L806	#,
	.loc 1 2675 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L806:
	.loc 1 2676 0
	jmp	.L807	#
.L801:
	.loc 1 2679 0
	movq	-88(%rbp), %rax	# x, tmp418
	movl	-72(%rbp), %edx	# i, tmp420
	movslq	%edx, %rdx	# tmp420, tmp419
	movq	8(%rax,%rdx,8), %rax	# x_26(D)->fld[i_2].rtvec, D.22379
	movl	(%rax), %ecx	# _273->num_elem, D.22369
	movq	-96(%rbp), %rax	# y, tmp421
	movl	-72(%rbp), %edx	# i, tmp423
	movslq	%edx, %rdx	# tmp423, tmp422
	movq	8(%rax,%rdx,8), %rax	# y_27(D)->fld[i_2].rtvec, D.22379
	movl	(%rax), %eax	# _275->num_elem, D.22369
	cmpl	%eax, %ecx	# D.22369, D.22369
	je	.L808	#,
	.loc 1 2680 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L808:
	.loc 1 2681 0
	movl	$0, -68(%rbp)	#, j
	jmp	.L809	#
.L811:
	.loc 1 2682 0
	movq	-96(%rbp), %rax	# y, tmp424
	movl	-72(%rbp), %edx	# i, tmp426
	movslq	%edx, %rdx	# tmp426, tmp425
	movq	8(%rax,%rdx,8), %rax	# y_27(D)->fld[i_2].rtvec, D.22379
	movl	-68(%rbp), %edx	# j, tmp428
	movslq	%edx, %rdx	# tmp428, tmp427
	movq	8(%rax,%rdx,8), %rsi	# _281->elem, D.22375
	movq	-88(%rbp), %rax	# x, tmp429
	movl	-72(%rbp), %edx	# i, tmp431
	movslq	%edx, %rdx	# tmp431, tmp430
	movq	8(%rax,%rdx,8), %rax	# x_26(D)->fld[i_2].rtvec, D.22379
	movl	-68(%rbp), %edx	# j, tmp433
	movslq	%edx, %rdx	# tmp433, tmp432
	movq	8(%rax,%rdx,8), %rax	# _283->elem, D.22375
	movl	-104(%rbp), %ecx	# equal_values, tmp434
	movl	-100(%rbp), %edx	# validate, tmp435
	movq	%rax, %rdi	# D.22375,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22369
	jne	.L810	#,
	.loc 1 2684 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L810:
	.loc 1 2681 0
	addl	$1, -68(%rbp)	#, j
.L809:
	.loc 1 2681 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp436
	movl	-72(%rbp), %edx	# i, tmp438
	movslq	%edx, %rdx	# tmp438, tmp437
	movq	8(%rax,%rdx,8), %rax	# x_26(D)->fld[i_2].rtvec, D.22379
	movl	(%rax), %eax	# _279->num_elem, D.22369
	cmpl	-68(%rbp), %eax	# j, D.22369
	jg	.L811	#,
	.loc 1 2685 0 is_stmt 1
	jmp	.L807	#
.L805:
	.loc 1 2688 0
	movq	-96(%rbp), %rax	# y, tmp439
	movl	-72(%rbp), %edx	# i, tmp441
	movslq	%edx, %rdx	# tmp441, tmp440
	movq	8(%rax,%rdx,8), %rdx	# y_27(D)->fld[i_2].rtstr, D.22377
	movq	-88(%rbp), %rax	# x, tmp442
	movl	-72(%rbp), %ecx	# i, tmp444
	movslq	%ecx, %rcx	# tmp444, tmp443
	movq	8(%rax,%rcx,8), %rax	# x_26(D)->fld[i_2].rtstr, D.22377
	movq	%rdx, %rsi	# D.22377,
	movq	%rax, %rdi	# D.22377,
	call	strcmp	#
	testl	%eax, %eax	# D.22369
	je	.L812	#,
	.loc 1 2689 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L812:
	.loc 1 2690 0
	jmp	.L807	#
.L799:
	.loc 1 2693 0
	movq	-88(%rbp), %rax	# x, tmp445
	movl	-72(%rbp), %edx	# i, tmp447
	movslq	%edx, %rdx	# tmp447, tmp446
	movl	8(%rax,%rdx,8), %ecx	# x_26(D)->fld[i_2].rtint, D.22369
	movq	-96(%rbp), %rax	# y, tmp448
	movl	-72(%rbp), %edx	# i, tmp450
	movslq	%edx, %rdx	# tmp450, tmp449
	movl	8(%rax,%rdx,8), %eax	# y_27(D)->fld[i_2].rtint, D.22369
	cmpl	%eax, %ecx	# D.22369, D.22369
	je	.L813	#,
	.loc 1 2694 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L813:
	.loc 1 2695 0
	jmp	.L807	#
.L804:
	.loc 1 2698 0
	movq	-88(%rbp), %rax	# x, tmp451
	movl	-72(%rbp), %edx	# i, tmp453
	movslq	%edx, %rdx	# tmp453, tmp452
	movq	8(%rax,%rdx,8), %rcx	# x_26(D)->fld[i_2].rtwint, D.22382
	movq	-96(%rbp), %rax	# y, tmp454
	movl	-72(%rbp), %edx	# i, tmp456
	movslq	%edx, %rdx	# tmp456, tmp455
	movq	8(%rax,%rdx,8), %rax	# y_27(D)->fld[i_2].rtwint, D.22382
	cmpq	%rax, %rcx	# D.22382, D.22382
	je	.L814	#,
	.loc 1 2699 0
	movl	$0, %eax	#, D.22369
	jmp	.L707	#
.L814:
	.loc 1 2700 0
	jmp	.L807	#
.L798:
	.loc 1 2707 0
	movl	$__FUNCTION__.12061, %edx	#,
	movl	$2707, %esi	#,
	movl	$.LC2, %edi	#,
	call	fancy_abort	#
.L818:
	.loc 1 2704 0
	nop
.L807:
	.loc 1 2669 0
	subl	$1, -72(%rbp)	#, i
.L797:
	.loc 1 2669 0 is_stmt 0 discriminator 1
	cmpl	$0, -72(%rbp)	#, i
	jns	.L815	#,
	.loc 1 2711 0 is_stmt 1
	movl	$1, %eax	#, D.22369
.L707:
	.loc 1 2712 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	exp_equiv_p, .-exp_equiv_p
	.type	cse_rtx_varies_p, @function
cse_rtx_varies_p:
.LFB34:
	.loc 1 2722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movl	%esi, -60(%rbp)	# from_alias, from_alias
	.loc 1 2727 0
	movq	-56(%rbp), %rax	# x, tmp170
	movzwl	(%rax), %eax	# x_10(D)->code, D.22385
	cmpw	$61, %ax	#, D.22385
	jne	.L820	#,
	.loc 1 2728 0
	movq	-56(%rbp), %rax	# x, tmp171
	movl	8(%rax), %edx	# x_10(D)->fld[0].rtuint, D.22386
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.430
	cmpl	%eax, %edx	# cached_regno.430, D.22386
	jne	.L821	#,
	.loc 1 2728 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.431
	testq	%rax, %rax	# cached_cse_reg_info.431
	jne	.L822	#,
.L821:
	.loc 1 2728 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp172
	movl	8(%rax), %eax	# x_10(D)->fld[0].rtuint, D.22386
	movl	%eax, %edi	# D.22386,
	call	get_cse_reg_info	#
	jmp	.L823	#
.L822:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.429
.L823:
	.loc 1 2728 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.429_1->reg_qty, D.22384
	movq	-56(%rbp), %rax	# x, tmp173
	movl	8(%rax), %eax	# x_10(D)->fld[0].rtuint, D.22386
	cmpl	%eax, %edx	# D.22384, D.22384
	je	.L820	#,
.LBB45:
	.loc 1 2730 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp174
	movl	8(%rax), %edx	# x_10(D)->fld[0].rtuint, D.22386
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.433
	cmpl	%eax, %edx	# cached_regno.433, D.22386
	jne	.L824	#,
	.loc 1 2730 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.434
	testq	%rax, %rax	# cached_cse_reg_info.434
	jne	.L825	#,
.L824:
	.loc 1 2730 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp175
	movl	8(%rax), %eax	# x_10(D)->fld[0].rtuint, D.22386
	movl	%eax, %edi	# D.22386,
	call	get_cse_reg_info	#
	jmp	.L826	#
.L825:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.432
.L826:
	.loc 1 2730 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.432_2->reg_qty, tmp176
	movl	%eax, -48(%rbp)	# tmp176, x_q
	.loc 1 2731 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.435
	movl	-48(%rbp), %eax	# x_q, tmp177
	movslq	%eax, %rdx	# tmp177, D.22387
	movq	%rdx, %rax	# D.22387, tmp178
	addq	%rax, %rax	# tmp178
	addq	%rdx, %rax	# D.22387, tmp178
	salq	$4, %rax	#, tmp179
	addq	%rcx, %rax	# qty_table.435, tmp180
	movq	%rax, -32(%rbp)	# tmp180, x_ent
	.loc 1 2733 0 discriminator 3
	movq	-56(%rbp), %rax	# x, tmp181
	movzbl	2(%rax), %eax	# x_10(D)->mode, D.22388
	movzbl	%al, %edx	# D.22388, D.22386
	movq	-32(%rbp), %rax	# x_ent, tmp182
	movl	36(%rax), %eax	# x_ent_31->mode, D.22389
	cmpl	%eax, %edx	# D.22389, D.22386
	jne	.L820	#,
	.loc 1 2734 0
	movq	-32(%rbp), %rax	# x_ent, tmp183
	movq	(%rax), %rax	# x_ent_31->const_rtx, D.22390
	testq	%rax, %rax	# D.22390
	je	.L820	#,
	.loc 1 2735 0
	movl	$0, %eax	#, D.22384
	jmp	.L827	#
.L820:
.LBE45:
	.loc 1 2738 0
	movq	-56(%rbp), %rax	# x, tmp184
	movzwl	(%rax), %eax	# x_10(D)->code, D.22385
	cmpw	$75, %ax	#, D.22385
	jne	.L828	#,
	.loc 1 2739 0
	movq	-56(%rbp), %rax	# x, tmp185
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22390
	movzwl	(%rax), %eax	# _38->code, D.22385
	cmpw	$54, %ax	#, D.22385
	jne	.L828	#,
	.loc 1 2740 0
	movq	-56(%rbp), %rax	# x, tmp186
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movzwl	(%rax), %eax	# _40->code, D.22385
	cmpw	$61, %ax	#, D.22385
	jne	.L828	#,
	.loc 1 2741 0
	movq	-56(%rbp), %rax	# x, tmp187
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movl	8(%rax), %edx	# _42->fld[0].rtuint, D.22386
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.437
	cmpl	%eax, %edx	# cached_regno.437, D.22386
	jne	.L829	#,
	.loc 1 2741 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.438
	testq	%rax, %rax	# cached_cse_reg_info.438
	jne	.L830	#,
.L829:
	.loc 1 2741 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp188
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movl	8(%rax), %eax	# _47->fld[0].rtuint, D.22386
	movl	%eax, %edi	# D.22386,
	call	get_cse_reg_info	#
	jmp	.L831	#
.L830:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.436
.L831:
	.loc 1 2741 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.436_4->reg_qty, D.22384
	movq	-56(%rbp), %rax	# x, tmp189
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movl	8(%rax), %eax	# _51->fld[0].rtuint, D.22386
	cmpl	%eax, %edx	# D.22384, D.22384
	je	.L828	#,
.LBB46:
	.loc 1 2743 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp190
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movl	8(%rax), %edx	# _54->fld[0].rtuint, D.22386
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.440
	cmpl	%eax, %edx	# cached_regno.440, D.22386
	jne	.L832	#,
	.loc 1 2743 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.441
	testq	%rax, %rax	# cached_cse_reg_info.441
	jne	.L833	#,
.L832:
	.loc 1 2743 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp191
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movl	8(%rax), %eax	# _59->fld[0].rtuint, D.22386
	movl	%eax, %edi	# D.22386,
	call	get_cse_reg_info	#
	jmp	.L834	#
.L833:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.439
.L834:
	.loc 1 2743 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.439_5->reg_qty, tmp192
	movl	%eax, -44(%rbp)	# tmp192, x0_q
	.loc 1 2744 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.442
	movl	-44(%rbp), %eax	# x0_q, tmp193
	movslq	%eax, %rdx	# tmp193, D.22387
	movq	%rdx, %rax	# D.22387, tmp194
	addq	%rax, %rax	# tmp194
	addq	%rdx, %rax	# D.22387, tmp194
	salq	$4, %rax	#, tmp195
	addq	%rcx, %rax	# qty_table.442, tmp196
	movq	%rax, -24(%rbp)	# tmp196, x0_ent
	.loc 1 2746 0 discriminator 3
	movq	-56(%rbp), %rax	# x, tmp197
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movzbl	2(%rax), %eax	# _67->mode, D.22388
	movzbl	%al, %edx	# D.22388, D.22386
	movq	-24(%rbp), %rax	# x0_ent, tmp198
	movl	36(%rax), %eax	# x0_ent_66->mode, D.22389
	cmpl	%eax, %edx	# D.22389, D.22386
	jne	.L828	#,
	.loc 1 2747 0
	movq	-24(%rbp), %rax	# x0_ent, tmp199
	movq	(%rax), %rax	# x0_ent_66->const_rtx, D.22390
	testq	%rax, %rax	# D.22390
	je	.L828	#,
	.loc 1 2748 0
	movl	$0, %eax	#, D.22384
	jmp	.L827	#
.L828:
.LBE46:
	.loc 1 2756 0
	movq	-56(%rbp), %rax	# x, tmp200
	movzwl	(%rax), %eax	# x_10(D)->code, D.22385
	cmpw	$75, %ax	#, D.22385
	jne	.L835	#,
	.loc 1 2757 0
	movq	-56(%rbp), %rax	# x, tmp201
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movzwl	(%rax), %eax	# _74->code, D.22385
	cmpw	$61, %ax	#, D.22385
	jne	.L835	#,
	.loc 1 2758 0
	movq	-56(%rbp), %rax	# x, tmp202
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22390
	movzwl	(%rax), %eax	# _76->code, D.22385
	cmpw	$61, %ax	#, D.22385
	jne	.L835	#,
	.loc 1 2759 0
	movq	-56(%rbp), %rax	# x, tmp203
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movl	8(%rax), %edx	# _78->fld[0].rtuint, D.22386
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.444
	cmpl	%eax, %edx	# cached_regno.444, D.22386
	jne	.L836	#,
	.loc 1 2759 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.445
	testq	%rax, %rax	# cached_cse_reg_info.445
	jne	.L837	#,
.L836:
	.loc 1 2759 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp204
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movl	8(%rax), %eax	# _83->fld[0].rtuint, D.22386
	movl	%eax, %edi	# D.22386,
	call	get_cse_reg_info	#
	jmp	.L838	#
.L837:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.443
.L838:
	.loc 1 2759 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.443_6->reg_qty, D.22384
	movq	-56(%rbp), %rax	# x, tmp205
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movl	8(%rax), %eax	# _87->fld[0].rtuint, D.22386
	cmpl	%eax, %edx	# D.22384, D.22384
	je	.L835	#,
	.loc 1 2760 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp206
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22390
	movl	8(%rax), %edx	# _90->fld[0].rtuint, D.22386
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.447
	cmpl	%eax, %edx	# cached_regno.447, D.22386
	jne	.L839	#,
	.loc 1 2760 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.448
	testq	%rax, %rax	# cached_cse_reg_info.448
	jne	.L840	#,
.L839:
	.loc 1 2760 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp207
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22390
	movl	8(%rax), %eax	# _95->fld[0].rtuint, D.22386
	movl	%eax, %edi	# D.22386,
	call	get_cse_reg_info	#
	jmp	.L841	#
.L840:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.446
.L841:
	.loc 1 2760 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.446_7->reg_qty, D.22384
	movq	-56(%rbp), %rax	# x, tmp208
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22390
	movl	8(%rax), %eax	# _99->fld[0].rtuint, D.22386
	cmpl	%eax, %edx	# D.22384, D.22384
	je	.L835	#,
.LBB47:
	.loc 1 2762 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp209
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movl	8(%rax), %edx	# _102->fld[0].rtuint, D.22386
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.450
	cmpl	%eax, %edx	# cached_regno.450, D.22386
	jne	.L842	#,
	.loc 1 2762 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.451
	testq	%rax, %rax	# cached_cse_reg_info.451
	jne	.L843	#,
.L842:
	.loc 1 2762 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp210
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movl	8(%rax), %eax	# _107->fld[0].rtuint, D.22386
	movl	%eax, %edi	# D.22386,
	call	get_cse_reg_info	#
	jmp	.L844	#
.L843:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.449
.L844:
	.loc 1 2762 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.449_8->reg_qty, tmp211
	movl	%eax, -40(%rbp)	# tmp211, x0_q
	.loc 1 2763 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# x, tmp212
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22390
	movl	8(%rax), %edx	# _111->fld[0].rtuint, D.22386
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.453
	cmpl	%eax, %edx	# cached_regno.453, D.22386
	jne	.L845	#,
	.loc 1 2763 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.454
	testq	%rax, %rax	# cached_cse_reg_info.454
	jne	.L846	#,
.L845:
	.loc 1 2763 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp213
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22390
	movl	8(%rax), %eax	# _116->fld[0].rtuint, D.22386
	movl	%eax, %edi	# D.22386,
	call	get_cse_reg_info	#
	jmp	.L847	#
.L846:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.452
.L847:
	.loc 1 2763 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.452_9->reg_qty, tmp214
	movl	%eax, -36(%rbp)	# tmp214, x1_q
	.loc 1 2764 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.455
	movl	-40(%rbp), %eax	# x0_q, tmp215
	movslq	%eax, %rdx	# tmp215, D.22387
	movq	%rdx, %rax	# D.22387, tmp216
	addq	%rax, %rax	# tmp216
	addq	%rdx, %rax	# D.22387, tmp216
	salq	$4, %rax	#, tmp217
	addq	%rcx, %rax	# qty_table.455, tmp218
	movq	%rax, -16(%rbp)	# tmp218, x0_ent
	.loc 1 2765 0 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.456
	movl	-36(%rbp), %eax	# x1_q, tmp219
	movslq	%eax, %rdx	# tmp219, D.22387
	movq	%rdx, %rax	# D.22387, tmp220
	addq	%rax, %rax	# tmp220
	addq	%rdx, %rax	# D.22387, tmp220
	salq	$4, %rax	#, tmp221
	addq	%rcx, %rax	# qty_table.456, tmp222
	movq	%rax, -8(%rbp)	# tmp222, x1_ent
	.loc 1 2767 0 discriminator 3
	movq	-56(%rbp), %rax	# x, tmp223
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22390
	movzbl	2(%rax), %eax	# _128->mode, D.22388
	movzbl	%al, %edx	# D.22388, D.22386
	movq	-16(%rbp), %rax	# x0_ent, tmp224
	movl	36(%rax), %eax	# x0_ent_123->mode, D.22389
	cmpl	%eax, %edx	# D.22389, D.22386
	jne	.L835	#,
	.loc 1 2768 0
	movq	-16(%rbp), %rax	# x0_ent, tmp225
	movq	(%rax), %rax	# x0_ent_123->const_rtx, D.22390
	testq	%rax, %rax	# D.22390
	je	.L835	#,
	.loc 1 2769 0
	movq	-56(%rbp), %rax	# x, tmp226
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22390
	movzbl	2(%rax), %eax	# _133->mode, D.22388
	movzbl	%al, %edx	# D.22388, D.22386
	movq	-8(%rbp), %rax	# x1_ent, tmp227
	movl	36(%rax), %eax	# x1_ent_127->mode, D.22389
	cmpl	%eax, %edx	# D.22389, D.22386
	jne	.L835	#,
	.loc 1 2770 0
	movq	-8(%rbp), %rax	# x1_ent, tmp228
	movq	(%rax), %rax	# x1_ent_127->const_rtx, D.22390
	testq	%rax, %rax	# D.22390
	je	.L835	#,
	.loc 1 2771 0
	movl	$0, %eax	#, D.22384
	jmp	.L827	#
.L835:
.LBE47:
	.loc 1 2774 0
	movl	-60(%rbp), %edx	# from_alias, tmp229
	movq	-56(%rbp), %rax	# x, tmp230
	movl	%edx, %esi	# tmp229,
	movq	%rax, %rdi	# tmp230,
	call	rtx_varies_p	#
.L827:
	.loc 1 2775 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	cse_rtx_varies_p, .-cse_rtx_varies_p
	.type	canon_reg, @function
canon_reg:
.LFB35:
	.loc 1 2792 0
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
	movq	%rsi, -80(%rbp)	# insn, insn
	.loc 1 2797 0
	cmpq	$0, -72(%rbp)	#, x
	jne	.L849	#,
	.loc 1 2798 0
	movq	-72(%rbp), %rax	# x, D.22391
	jmp	.L850	#
.L849:
	.loc 1 2800 0
	movq	-72(%rbp), %rax	# x, tmp120
	movzwl	(%rax), %eax	# x_9(D)->code, D.22392
	movzwl	%ax, %eax	# D.22392, tmp121
	movl	%eax, -56(%rbp)	# tmp121, code
	.loc 1 2801 0
	movl	-56(%rbp), %eax	# code, tmp123
	subl	$44, %eax	#, tmp122
	cmpl	$25, %eax	#, tmp122
	ja	.L879	#,
	movl	%eax, %eax	# tmp122, tmp124
	movq	.L853(,%rax,8), %rax	#, tmp125
	jmp	*%rax	# tmp125
	.section	.rodata
	.align 8
	.align 4
.L853:
	.quad	.L852
	.quad	.L852
	.quad	.L879
	.quad	.L879
	.quad	.L879
	.quad	.L879
	.quad	.L879
	.quad	.L879
	.quad	.L879
	.quad	.L879
	.quad	.L852
	.quad	.L852
	.quad	.L852
	.quad	.L879
	.quad	.L852
	.quad	.L852
	.quad	.L879
	.quad	.L854
	.quad	.L879
	.quad	.L879
	.quad	.L879
	.quad	.L879
	.quad	.L879
	.quad	.L852
	.quad	.L852
	.quad	.L852
	.text
.L852:
	.loc 1 2813 0
	movq	-72(%rbp), %rax	# x, D.22391
	jmp	.L850	#
.L854:
.LBB48:
	.loc 1 2826 0
	movq	-72(%rbp), %rax	# x, tmp126
	movl	8(%rax), %eax	# x_9(D)->fld[0].rtuint, D.22393
	cmpl	$52, %eax	#, D.22393
	jbe	.L855	#,
	.loc 1 2827 0
	movq	-72(%rbp), %rax	# x, tmp127
	movl	8(%rax), %edx	# x_9(D)->fld[0].rtuint, D.22393
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.458
	cmpl	%eax, %edx	# cached_regno.458, D.22393
	jne	.L856	#,
	.loc 1 2827 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.459
	testq	%rax, %rax	# cached_cse_reg_info.459
	jne	.L857	#,
.L856:
	.loc 1 2827 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp128
	movl	8(%rax), %eax	# x_9(D)->fld[0].rtuint, D.22393
	movl	%eax, %edi	# D.22393,
	call	get_cse_reg_info	#
	jmp	.L858	#
.L857:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.457
.L858:
	.loc 1 2827 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.457_4->reg_qty, D.22394
	movq	-72(%rbp), %rax	# x, tmp129
	movl	8(%rax), %eax	# x_9(D)->fld[0].rtuint, D.22393
	cmpl	%eax, %edx	# D.22394, D.22394
	jne	.L859	#,
.L855:
	.loc 1 2828 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, D.22391
	jmp	.L850	#
.L859:
	.loc 1 2830 0
	movq	-72(%rbp), %rax	# x, tmp130
	movl	8(%rax), %edx	# x_9(D)->fld[0].rtuint, D.22393
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.461
	cmpl	%eax, %edx	# cached_regno.461, D.22393
	jne	.L860	#,
	.loc 1 2830 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.462
	testq	%rax, %rax	# cached_cse_reg_info.462
	jne	.L861	#,
.L860:
	.loc 1 2830 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp131
	movl	8(%rax), %eax	# x_9(D)->fld[0].rtuint, D.22393
	movl	%eax, %edi	# D.22393,
	call	get_cse_reg_info	#
	jmp	.L862	#
.L861:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.460
.L862:
	.loc 1 2830 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.460_5->reg_qty, tmp132
	movl	%eax, -52(%rbp)	# tmp132, q
	.loc 1 2831 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.463
	movl	-52(%rbp), %eax	# q, tmp133
	movslq	%eax, %rdx	# tmp133, D.22395
	movq	%rdx, %rax	# D.22395, tmp134
	addq	%rax, %rax	# tmp134
	addq	%rdx, %rax	# D.22395, tmp134
	salq	$4, %rax	#, tmp135
	addq	%rcx, %rax	# qty_table.463, tmp136
	movq	%rax, -40(%rbp)	# tmp136, ent
	.loc 1 2832 0 discriminator 3
	movq	-40(%rbp), %rax	# ent, tmp137
	movl	28(%rax), %eax	# ent_34->first_reg, D.22393
	movl	%eax, -48(%rbp)	# D.22393, first
	.loc 1 2834 0 discriminator 3
	cmpl	$52, -48(%rbp)	#, first
	jle	.L863	#,
	.loc 1 2833 0
	movq	cfun(%rip), %rax	# cfun, cfun.465
	movq	24(%rax), %rax	# cfun.465_37->emit, D.22396
	movq	80(%rax), %rax	# _38->x_regno_reg_rtx, D.22397
	movl	-48(%rbp), %edx	# first, tmp138
	movslq	%edx, %rdx	# tmp138, D.22395
	salq	$3, %rdx	#, D.22395
	addq	%rdx, %rax	# D.22395, D.22397
	.loc 1 2834 0
	movq	(%rax), %rax	# *_42, iftmp.464
	jmp	.L864	#
.L863:
	.loc 1 2834 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# first, tmp140
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.22398
	.loc 1 2835 0 is_stmt 1 discriminator 1
	testl	%eax, %eax	# D.22398
	je	.L865	#,
	movq	-40(%rbp), %rax	# ent, tmp141
	movl	36(%rax), %eax	# ent_34->mode, D.22399
	movl	-48(%rbp), %edx	# first, tmp142
	movl	%edx, %esi	# tmp142,
	movl	%eax, %edi	# D.22399,
	call	gen_rtx_REG	#
	jmp	.L864	#
.L865:
	.loc 1 2835 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# x, iftmp.466
.L864:
	.loc 1 2833 0 is_stmt 1
	jmp	.L850	#
.L879:
.LBE48:
	.loc 1 2839 0
	nop
	.loc 1 2842 0
	movl	-56(%rbp), %eax	# code, code.467
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp144
	movq	%rax, -32(%rbp)	# tmp144, fmt
	.loc 1 2843 0
	movl	-56(%rbp), %eax	# code, code.468
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22400
	movzbl	%al, %eax	# D.22400, D.22394
	subl	$1, %eax	#, tmp146
	movl	%eax, -64(%rbp)	# tmp146, i
	jmp	.L867	#
.L877:
.LBB49:
	.loc 1 2847 0
	movl	-64(%rbp), %eax	# i, tmp147
	movslq	%eax, %rdx	# tmp147, D.22401
	movq	-32(%rbp), %rax	# fmt, tmp148
	addq	%rdx, %rax	# D.22401, D.22402
	movzbl	(%rax), %eax	# *_58, D.22403
	cmpb	$101, %al	#, D.22403
	jne	.L868	#,
.LBB50:
	.loc 1 2849 0
	movq	-72(%rbp), %rax	# x, tmp149
	movl	-64(%rbp), %edx	# i, tmp151
	movslq	%edx, %rdx	# tmp151, tmp150
	movq	8(%rax,%rdx,8), %rax	# x_9(D)->fld[i_1].rtx, D.22404
	movq	-80(%rbp), %rdx	# insn, tmp152
	movq	%rdx, %rsi	# tmp152,
	movq	%rax, %rdi	# D.22404,
	call	canon_reg	#
	movq	%rax, -24(%rbp)	# tmp153, new
	.loc 1 2854 0
	cmpq	$0, -80(%rbp)	#, insn
	je	.L869	#,
	.loc 1 2854 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, new
	je	.L869	#,
	.loc 1 2855 0 is_stmt 1
	movq	-24(%rbp), %rax	# new, tmp154
	movzwl	(%rax), %eax	# new_62->code, D.22392
	cmpw	$61, %ax	#, D.22392
	jne	.L869	#,
	.loc 1 2855 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp155
	movl	-64(%rbp), %edx	# i, tmp157
	movslq	%edx, %rdx	# tmp157, tmp156
	movq	8(%rax,%rdx,8), %rax	# x_9(D)->fld[i_1].rtx, D.22404
	movzwl	(%rax), %eax	# _64->code, D.22392
	cmpw	$61, %ax	#, D.22392
	jne	.L869	#,
	.loc 1 2856 0 is_stmt 1
	movq	-24(%rbp), %rax	# new, tmp158
	movl	8(%rax), %eax	# new_62->fld[0].rtuint, D.22393
	.loc 1 2857 0
	cmpl	$52, %eax	#, D.22393
	setbe	%cl	#, D.22405
	movq	-72(%rbp), %rax	# x, tmp159
	movl	-64(%rbp), %edx	# i, tmp161
	movslq	%edx, %rdx	# tmp161, tmp160
	movq	8(%rax,%rdx,8), %rax	# x_9(D)->fld[i_1].rtx, D.22404
	movl	8(%rax), %eax	# _68->fld[0].rtuint, D.22393
	cmpl	$52, %eax	#, D.22393
	setbe	%al	#, D.22405
	xorl	%ecx, %eax	# D.22405, D.22405
	.loc 1 2856 0
	testb	%al, %al	# D.22405
	jne	.L870	#,
	.loc 1 2858 0
	movq	-80(%rbp), %rax	# insn, tmp162
	movl	40(%rax), %eax	# insn_61(D)->fld[4].rtint, D.22394
	testl	%eax, %eax	# D.22394
	js	.L871	#,
	.loc 1 2858 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# insn, tmp163
	movl	40(%rax), %eax	# insn_61(D)->fld[4].rtint, iftmp.469
	jmp	.L872	#
.L871:
	.loc 1 2858 0 discriminator 2
	movq	-80(%rbp), %rax	# insn, tmp164
	movq	%rax, %rdi	# tmp164,
	call	recog_memoized_1	#
.L872:
	.loc 1 2858 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.469, insn_code
	cmpl	$0, -44(%rbp)	#, insn_code
	js	.L870	#,
	.loc 1 2859 0 is_stmt 1
	movl	-44(%rbp), %eax	# insn_code, tmp166
	movslq	%eax, %rdx	# tmp166, tmp165
	movq	%rdx, %rax	# tmp165, tmp167
	salq	$2, %rax	#, tmp167
	addq	%rdx, %rax	# tmp165, tmp167
	salq	$3, %rax	#, tmp168
	addq	$insn_data+32, %rax	#, tmp169
	movzbl	1(%rax), %eax	# insn_data[insn_code_75].n_dups, D.22403
	testb	%al, %al	# D.22403
	jle	.L869	#,
.L870:
	.loc 1 2860 0
	movl	-64(%rbp), %eax	# i, tmp171
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp172
	movq	-72(%rbp), %rax	# x, tmp174
	addq	%rdx, %rax	# tmp172, tmp173
	leaq	8(%rax), %rsi	#, D.22397
	movq	-24(%rbp), %rdx	# new, tmp175
	movq	-80(%rbp), %rax	# insn, tmp176
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp176,
	call	validate_change	#
	jmp	.L874	#
.L869:
	.loc 1 2862 0
	movq	-72(%rbp), %rax	# x, tmp177
	movl	-64(%rbp), %edx	# i, tmp179
	movslq	%edx, %rdx	# tmp179, tmp178
	movq	-24(%rbp), %rcx	# new, tmp180
	movq	%rcx, 8(%rax,%rdx,8)	# tmp180, x_9(D)->fld[i_1].rtx
.LBE50:
	jmp	.L874	#
.L868:
	.loc 1 2864 0
	movl	-64(%rbp), %eax	# i, tmp181
	movslq	%eax, %rdx	# tmp181, D.22401
	movq	-32(%rbp), %rax	# fmt, tmp182
	addq	%rdx, %rax	# D.22401, D.22402
	movzbl	(%rax), %eax	# *_79, D.22403
	cmpb	$69, %al	#, D.22403
	jne	.L874	#,
	.loc 1 2865 0
	movl	$0, -60(%rbp)	#, j
	jmp	.L875	#
.L876:
	.loc 1 2866 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp183
	movl	-64(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, tmp184
	movq	8(%rax,%rdx,8), %rbx	# x_9(D)->fld[i_1].rtvec, D.22406
	movq	-72(%rbp), %rax	# x, tmp186
	movl	-64(%rbp), %edx	# i, tmp188
	movslq	%edx, %rdx	# tmp188, tmp187
	movq	8(%rax,%rdx,8), %rax	# x_9(D)->fld[i_1].rtvec, D.22406
	movl	-60(%rbp), %edx	# j, tmp190
	movslq	%edx, %rdx	# tmp190, tmp189
	movq	8(%rax,%rdx,8), %rax	# _85->elem, D.22404
	movq	-80(%rbp), %rdx	# insn, tmp191
	movq	%rdx, %rsi	# tmp191,
	movq	%rax, %rdi	# D.22404,
	call	canon_reg	#
	movl	-60(%rbp), %edx	# j, tmp193
	movslq	%edx, %rdx	# tmp193, tmp192
	movq	%rax, 8(%rbx,%rdx,8)	# D.22404, _84->elem
	.loc 1 2865 0 discriminator 2
	addl	$1, -60(%rbp)	#, j
.L875:
	.loc 1 2865 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp194
	movl	-64(%rbp), %edx	# i, tmp196
	movslq	%edx, %rdx	# tmp196, tmp195
	movq	8(%rax,%rdx,8), %rax	# x_9(D)->fld[i_1].rtvec, D.22406
	movl	(%rax), %eax	# _82->num_elem, D.22394
	cmpl	-60(%rbp), %eax	# j, D.22394
	jg	.L876	#,
.L874:
.LBE49:
	.loc 1 2843 0 is_stmt 1
	subl	$1, -64(%rbp)	#, i
.L867:
	.loc 1 2843 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, i
	jns	.L877	#,
	.loc 1 2869 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, D.22391
.L850:
	.loc 1 2870 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	canon_reg, .-canon_reg
	.type	find_best_addr, @function
find_best_addr:
.LFB36:
	.loc 1 2893 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)	# insn, insn
	movq	%rsi, -176(%rbp)	# loc, loc
	movl	%edx, -180(%rbp)	# mode, mode
	.loc 1 2895 0
	movq	-176(%rbp), %rax	# loc, tmp195
	movq	(%rax), %rax	# *loc_42(D), tmp196
	movq	%rax, -88(%rbp)	# tmp196, addr
	.loc 1 2898 0
	movl	$1, -148(%rbp)	#, found_better
	.loc 1 2900 0
	movl	do_not_record(%rip), %eax	# do_not_record, tmp197
	movl	%eax, -124(%rbp)	# tmp197, save_do_not_record
	.loc 1 2901 0
	movl	hash_arg_in_memory(%rip), %eax	# hash_arg_in_memory, tmp198
	movl	%eax, -120(%rbp)	# tmp198, save_hash_arg_in_memory
	.loc 1 2915 0
	movq	-88(%rbp), %rax	# addr, tmp199
	movzwl	(%rax), %eax	# addr_43->code, D.22407
	cmpw	$75, %ax	#, D.22407
	jne	.L881	#,
	.loc 1 2916 0
	movq	-88(%rbp), %rax	# addr, tmp200
	movq	8(%rax), %rax	# addr_43->fld[0].rtx, D.22408
	movzwl	(%rax), %eax	# _48->code, D.22407
	cmpw	$61, %ax	#, D.22407
	jne	.L881	#,
	.loc 1 2917 0
	movq	-88(%rbp), %rax	# addr, tmp201
	movq	16(%rax), %rax	# addr_43->fld[1].rtx, D.22408
	movzwl	(%rax), %eax	# _50->code, D.22407
	cmpw	$54, %ax	#, D.22407
	jne	.L881	#,
	.loc 1 2918 0
	movq	-88(%rbp), %rax	# addr, tmp202
	movq	8(%rax), %rax	# addr_43->fld[0].rtx, D.22408
	movl	8(%rax), %eax	# _52->fld[0].rtuint, D.22409
	movl	%eax, -116(%rbp)	# D.22409, regno
	.loc 1 2920 0
	cmpl	$20, -116(%rbp)	#, regno
	je	.L882	#,
	.loc 1 2919 0
	cmpl	$6, -116(%rbp)	#, regno
	je	.L882	#,
	.loc 1 2920 0
	cmpl	$16, -116(%rbp)	#, regno
	jne	.L883	#,
.L882:
	.loc 1 2920 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.470
	jmp	.L884	#
.L883:
	.loc 1 2920 0 discriminator 2
	movl	$0, %eax	#, iftmp.470
.L884:
	.loc 1 2918 0 is_stmt 1
	testl	%eax, %eax	# iftmp.470
	jne	.L885	#,
.L881:
	.loc 1 2921 0
	movq	-88(%rbp), %rax	# addr, tmp203
	movzwl	(%rax), %eax	# addr_43->code, D.22407
	cmpw	$61, %ax	#, D.22407
	jne	.L886	#,
	.loc 1 2922 0
	movq	-88(%rbp), %rax	# addr, tmp204
	movl	8(%rax), %eax	# addr_43->fld[0].rtuint, D.22409
	movl	%eax, -116(%rbp)	# D.22409, regno
	.loc 1 2924 0
	cmpl	$20, -116(%rbp)	#, regno
	je	.L887	#,
	.loc 1 2923 0
	cmpl	$6, -116(%rbp)	#, regno
	je	.L887	#,
	.loc 1 2924 0
	cmpl	$16, -116(%rbp)	#, regno
	jne	.L888	#,
.L887:
	.loc 1 2924 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.471
	jmp	.L889	#
.L888:
	.loc 1 2924 0 discriminator 2
	movl	$0, %eax	#, iftmp.471
.L889:
	.loc 1 2922 0 is_stmt 1
	testl	%eax, %eax	# iftmp.471
	jne	.L885	#,
.L886:
	.loc 1 2925 0
	movq	-88(%rbp), %rax	# addr, tmp205
	movzwl	(%rax), %eax	# addr_43->code, D.22407
	cmpw	$70, %ax	#, D.22407
	je	.L885	#,
	.loc 1 2926 0
	movq	-88(%rbp), %rax	# addr, tmp206
	movzwl	(%rax), %eax	# addr_43->code, D.22407
	cmpw	$67, %ax	#, D.22407
	je	.L885	#,
	.loc 1 2926 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# addr, tmp207
	movzwl	(%rax), %eax	# addr_43->code, D.22407
	cmpw	$68, %ax	#, D.22407
	je	.L885	#,
	movq	-88(%rbp), %rax	# addr, tmp208
	movzwl	(%rax), %eax	# addr_43->code, D.22407
	cmpw	$54, %ax	#, D.22407
	je	.L885	#,
	movq	-88(%rbp), %rax	# addr, tmp209
	movzwl	(%rax), %eax	# addr_43->code, D.22407
	cmpw	$58, %ax	#, D.22407
	je	.L885	#,
	movq	-88(%rbp), %rax	# addr, tmp210
	movzwl	(%rax), %eax	# addr_43->code, D.22407
	cmpw	$55, %ax	#, D.22407
	jne	.L890	#,
.L885:
	.loc 1 2927 0 is_stmt 1
	jmp	.L880	#
.L890:
	.loc 1 2933 0
	movq	-88(%rbp), %rax	# addr, tmp211
	movzwl	(%rax), %eax	# addr_43->code, D.22407
	cmpw	$61, %ax	#, D.22407
	je	.L892	#,
.LBB51:
	.loc 1 2935 0
	movq	-88(%rbp), %rax	# addr, tmp212
	movq	%rax, %rdi	# tmp212,
	call	copy_rtx	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22408,
	call	fold_rtx	#
	movq	%rax, -48(%rbp)	# tmp213, folded
	.loc 1 2936 0
	movl	-180(%rbp), %edx	# mode, tmp214
	movq	-48(%rbp), %rax	# folded, tmp215
	movl	%edx, %esi	# tmp214,
	movq	%rax, %rdi	# tmp215,
	call	address_cost	#
	movl	%eax, -112(%rbp)	# tmp216, addr_folded_cost
	.loc 1 2937 0
	movl	-180(%rbp), %edx	# mode, tmp217
	movq	-88(%rbp), %rax	# addr, tmp218
	movl	%edx, %esi	# tmp217,
	movq	%rax, %rdi	# tmp218,
	call	address_cost	#
	movl	%eax, -108(%rbp)	# tmp219, addr_cost
	.loc 1 2939 0
	movl	-112(%rbp), %eax	# addr_folded_cost, tmp220
	cmpl	-108(%rbp), %eax	# addr_cost, tmp220
	jl	.L893	#,
	.loc 1 2940 0
	movl	-112(%rbp), %eax	# addr_folded_cost, tmp221
	cmpl	-108(%rbp), %eax	# addr_cost, tmp221
	jne	.L892	#,
	.loc 1 2943 0
	movq	-48(%rbp), %rax	# folded, tmp222
	movl	$66, %esi	#,
	movq	%rax, %rdi	# tmp222,
	call	rtx_cost	#
	movl	%eax, %ebx	#, D.22410
	movq	-88(%rbp), %rax	# addr, tmp223
	movl	$66, %esi	#,
	movq	%rax, %rdi	# tmp223,
	call	rtx_cost	#
	cmpl	%eax, %ebx	# D.22410, D.22410
	jg	.L893	#,
	.loc 1 2944 0
	movq	-48(%rbp), %rax	# folded, tmp224
	movq	%rax, %rdi	# tmp224,
	call	approx_reg_cost	#
	movl	%eax, %ebx	#, D.22410
	movq	-88(%rbp), %rax	# addr, tmp225
	movq	%rax, %rdi	# tmp225,
	call	approx_reg_cost	#
	cmpl	%eax, %ebx	# D.22410, D.22410
	jge	.L892	#,
.L893:
	.loc 1 2945 0
	movq	-48(%rbp), %rdx	# folded, tmp226
	movq	-176(%rbp), %rsi	# loc, tmp227
	movq	-168(%rbp), %rax	# insn, tmp228
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp228,
	call	validate_change	#
	testl	%eax, %eax	# D.22410
	je	.L892	#,
	.loc 1 2946 0
	movq	-48(%rbp), %rax	# folded, tmp229
	movq	%rax, -88(%rbp)	# tmp229, addr
.L892:
.LBE51:
	.loc 1 2952 0
	movl	$0, do_not_record(%rip)	#, do_not_record
	.loc 1 2953 0
	movq	-88(%rbp), %rax	# addr, tmp230
	movzwl	(%rax), %eax	# addr_1->code, D.22407
	cmpw	$61, %ax	#, D.22407
	jne	.L894	#,
	.loc 1 2953 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# addr, tmp231
	movl	8(%rax), %eax	# addr_1->fld[0].rtuint, D.22409
	cmpl	$52, %eax	#, D.22409
	jbe	.L894	#,
	movq	-88(%rbp), %rax	# addr, tmp232
	movl	8(%rax), %edx	# addr_1->fld[0].rtuint, D.22409
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.474
	cmpl	%eax, %edx	# cached_regno.474, D.22409
	jne	.L895	#,
	.loc 1 2953 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.475
	testq	%rax, %rax	# cached_cse_reg_info.475
	jne	.L896	#,
.L895:
	.loc 1 2953 0 discriminator 1
	movq	-88(%rbp), %rax	# addr, tmp233
	movl	8(%rax), %eax	# addr_1->fld[0].rtuint, D.22409
	movl	%eax, %edi	# D.22409,
	call	get_cse_reg_info	#
	jmp	.L897	#
.L896:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.473
.L897:
	.loc 1 2953 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.473_31->reg_qty, D.22410
	andl	$31, %eax	#, iftmp.472
	jmp	.L898	#
.L894:
	.loc 1 2953 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.477
	andl	$33554432, %eax	#, D.22410
	testl	%eax, %eax	# D.22410
	je	.L899	#,
	.loc 1 2953 0 discriminator 1
	movl	$5, %eax	#, iftmp.476
	jmp	.L900	#
.L899:
	.loc 1 2953 0 discriminator 2
	movl	$4, %eax	#, iftmp.476
.L900:
	.loc 1 2953 0 discriminator 3
	movq	-88(%rbp), %rdx	# addr, tmp234
	movl	%eax, %esi	# iftmp.476,
	movq	%rdx, %rdi	# tmp234,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.472
.L898:
	movl	%eax, -104(%rbp)	# iftmp.472, hash
	.loc 1 2954 0 is_stmt 1 discriminator 3
	movl	do_not_record(%rip), %eax	# do_not_record, tmp235
	movl	%eax, -100(%rbp)	# tmp235, addr_volatile
	.loc 1 2955 0 discriminator 3
	movl	-124(%rbp), %eax	# save_do_not_record, tmp236
	movl	%eax, do_not_record(%rip)	# tmp236, do_not_record
	.loc 1 2956 0 discriminator 3
	movl	-120(%rbp), %eax	# save_hash_arg_in_memory, tmp237
	movl	%eax, hash_arg_in_memory(%rip)	# tmp237, hash_arg_in_memory
	.loc 1 2958 0 discriminator 3
	cmpl	$0, -100(%rbp)	#, addr_volatile
	je	.L901	#,
	.loc 1 2959 0
	jmp	.L880	#
.L901:
	.loc 1 2961 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.479
	andl	$33554432, %eax	#, D.22410
	testl	%eax, %eax	# D.22410
	je	.L902	#,
	.loc 1 2961 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.478
	jmp	.L903	#
.L902:
	.loc 1 2961 0 discriminator 2
	movl	$4, %eax	#, iftmp.478
.L903:
	.loc 1 2961 0 discriminator 3
	movl	-104(%rbp), %esi	# hash, tmp238
	movq	-88(%rbp), %rcx	# addr, tmp239
	movl	%eax, %edx	# iftmp.478,
	movq	%rcx, %rdi	# tmp239,
	call	lookup	#
	movq	%rax, -40(%rbp)	# tmp240, elt
	.loc 1 2979 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, elt
	je	.L904	#,
	.loc 1 2986 0
	movq	-40(%rbp), %rax	# elt, tmp241
	movq	48(%rax), %rax	# elt_104->first_same_value, tmp242
	movq	%rax, -80(%rbp)	# tmp242, p
	jmp	.L905	#
.L906:
	.loc 1 2987 0 discriminator 2
	movq	-80(%rbp), %rax	# p, tmp243
	movb	$0, 78(%rax)	#, p_2->flag
	.loc 1 2986 0 discriminator 2
	movq	-80(%rbp), %rax	# p, tmp244
	movq	32(%rax), %rax	# p_2->next_same_value, tmp245
	movq	%rax, -80(%rbp)	# tmp245, p
.L905:
	.loc 1 2986 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, p
	jne	.L906	#,
	.loc 1 2989 0 is_stmt 1
	jmp	.L907	#
.L914:
.LBB52:
	.loc 1 2991 0
	movq	-176(%rbp), %rax	# loc, tmp246
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movl	-180(%rbp), %edx	# mode, tmp247
	movl	%edx, %esi	# tmp247,
	movq	%rax, %rdi	# D.22408,
	call	address_cost	#
	movl	%eax, -144(%rbp)	# tmp248, best_addr_cost
	.loc 1 2992 0
	movq	-40(%rbp), %rax	# elt, tmp249
	movl	64(%rax), %eax	# elt_104->cost, D.22410
	addl	$1, %eax	#, D.22410
	sarl	%eax	# tmp250
	movl	%eax, -140(%rbp)	# tmp250, best_rtx_cost
	.loc 1 2994 0
	movq	-40(%rbp), %rax	# elt, tmp251
	movq	%rax, -72(%rbp)	# tmp251, best_elt
	.loc 1 2996 0
	movl	$0, -148(%rbp)	#, found_better
	.loc 1 2997 0
	movq	-40(%rbp), %rax	# elt, tmp252
	movq	48(%rax), %rax	# elt_104->first_same_value, tmp253
	movq	%rax, -80(%rbp)	# tmp253, p
	jmp	.L908	#
.L912:
	.loc 1 2998 0
	movq	-80(%rbp), %rax	# p, tmp254
	movzbl	78(%rax), %eax	# p_3->flag, D.22411
	testb	%al, %al	# D.22411
	jne	.L909	#,
	.loc 1 3000 0
	movq	-80(%rbp), %rax	# p, tmp255
	movq	(%rax), %rax	# p_3->exp, D.22408
	movzwl	(%rax), %eax	# _116->code, D.22407
	cmpw	$61, %ax	#, D.22407
	je	.L910	#,
	.loc 1 3001 0
	movq	-80(%rbp), %rax	# p, tmp256
	movq	(%rax), %rsi	# p_3->exp, D.22408
	movq	-80(%rbp), %rax	# p, tmp257
	movq	(%rax), %rax	# p_3->exp, D.22408
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22408,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22410
	je	.L909	#,
.L910:
	.loc 1 3002 0
	movq	-80(%rbp), %rax	# p, tmp258
	movq	(%rax), %rax	# p_3->exp, D.22408
	movl	-180(%rbp), %edx	# mode, tmp259
	movl	%edx, %esi	# tmp259,
	movq	%rax, %rdi	# D.22408,
	call	address_cost	#
	movl	%eax, -96(%rbp)	# tmp260, exp_cost
	movl	-96(%rbp), %eax	# exp_cost, tmp261
	cmpl	-144(%rbp), %eax	# best_addr_cost, tmp261
	jl	.L911	#,
	.loc 1 3003 0
	movl	-96(%rbp), %eax	# exp_cost, tmp262
	cmpl	-144(%rbp), %eax	# best_addr_cost, tmp262
	jne	.L909	#,
	.loc 1 3004 0
	movq	-80(%rbp), %rax	# p, tmp263
	movl	64(%rax), %eax	# p_3->cost, D.22410
	addl	$1, %eax	#, D.22410
	sarl	%eax	# D.22410
	cmpl	-140(%rbp), %eax	# best_rtx_cost, D.22410
	jle	.L909	#,
.L911:
	.loc 1 3006 0
	movl	$1, -148(%rbp)	#, found_better
	.loc 1 3007 0
	movl	-96(%rbp), %eax	# exp_cost, tmp264
	movl	%eax, -144(%rbp)	# tmp264, best_addr_cost
	.loc 1 3008 0
	movq	-80(%rbp), %rax	# p, tmp265
	movl	64(%rax), %eax	# p_3->cost, D.22410
	addl	$1, %eax	#, D.22410
	sarl	%eax	# tmp266
	movl	%eax, -140(%rbp)	# tmp266, best_rtx_cost
	.loc 1 3009 0
	movq	-80(%rbp), %rax	# p, tmp267
	movq	%rax, -72(%rbp)	# tmp267, best_elt
.L909:
	.loc 1 2997 0
	movq	-80(%rbp), %rax	# p, tmp268
	movq	32(%rax), %rax	# p_3->next_same_value, tmp269
	movq	%rax, -80(%rbp)	# tmp269, p
.L908:
	.loc 1 2997 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, p
	jne	.L912	#,
	.loc 1 3013 0 is_stmt 1
	cmpl	$0, -148(%rbp)	#, found_better
	je	.L907	#,
	.loc 1 3015 0
	movq	-72(%rbp), %rax	# best_elt, tmp270
	movq	(%rax), %rax	# best_elt_18->exp, D.22408
	movq	%rax, %rdi	# D.22408,
	call	copy_rtx	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22408,
	call	canon_reg	#
	movq	%rax, %rdx	#, D.22408
	movq	-176(%rbp), %rsi	# loc, tmp271
	movq	-168(%rbp), %rax	# insn, tmp272
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp272,
	call	validate_change	#
	testl	%eax, %eax	# D.22410
	je	.L913	#,
	.loc 1 3018 0
	jmp	.L880	#
.L913:
	.loc 1 3020 0
	movq	-72(%rbp), %rax	# best_elt, tmp273
	movb	$1, 78(%rax)	#, best_elt_18->flag
.L907:
.LBE52:
	.loc 1 2989 0 discriminator 1
	cmpl	$0, -148(%rbp)	#, found_better
	jne	.L914	#,
.L904:
	.loc 1 3034 0
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.480
	testl	%eax, %eax	# flag_expensive_optimizations.480
	je	.L880	#,
	.loc 1 3035 0
	movq	-176(%rbp), %rax	# loc, tmp274
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movzwl	(%rax), %eax	# _138->code, D.22407
	movzwl	%ax, %eax	# D.22407, D.22410
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22411
	cmpb	$50, %al	#, D.22411
	je	.L915	#,
	.loc 1 3036 0
	movq	-176(%rbp), %rax	# loc, tmp276
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movzwl	(%rax), %eax	# _142->code, D.22407
	movzwl	%ax, %eax	# D.22407, D.22410
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22411
	cmpb	$99, %al	#, D.22411
	jne	.L880	#,
.L915:
	.loc 1 3037 0
	movq	-176(%rbp), %rax	# loc, tmp278
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movq	8(%rax), %rax	# _146->fld[0].rtx, D.22408
	movzwl	(%rax), %eax	# _147->code, D.22407
	cmpw	$61, %ax	#, D.22407
	jne	.L880	#,
	.loc 1 3038 0
	movq	-176(%rbp), %rax	# loc, tmp279
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movq	16(%rax), %rax	# _149->fld[1].rtx, D.22408
	movzwl	(%rax), %eax	# _150->code, D.22407
	cmpw	$54, %ax	#, D.22407
	jne	.L880	#,
.LBB53:
	.loc 1 3040 0
	movq	-176(%rbp), %rax	# loc, tmp280
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movq	16(%rax), %rax	# _152->fld[1].rtx, tmp281
	movq	%rax, -32(%rbp)	# tmp281, c
	.loc 1 3042 0
	movl	$0, do_not_record(%rip)	#, do_not_record
	.loc 1 3043 0
	movq	-176(%rbp), %rax	# loc, tmp282
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movq	8(%rax), %rax	# _154->fld[0].rtx, D.22408
	movzwl	(%rax), %eax	# _155->code, D.22407
	cmpw	$61, %ax	#, D.22407
	jne	.L916	#,
	.loc 1 3043 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# loc, tmp283
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movq	8(%rax), %rax	# _157->fld[0].rtx, D.22408
	movl	8(%rax), %eax	# _158->fld[0].rtuint, D.22409
	cmpl	$52, %eax	#, D.22409
	jbe	.L916	#,
	movq	-176(%rbp), %rax	# loc, tmp284
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movq	8(%rax), %rax	# _160->fld[0].rtx, D.22408
	movl	8(%rax), %edx	# _161->fld[0].rtuint, D.22409
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.483
	cmpl	%eax, %edx	# cached_regno.483, D.22409
	jne	.L917	#,
	.loc 1 3043 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.484
	testq	%rax, %rax	# cached_cse_reg_info.484
	jne	.L918	#,
.L917:
	.loc 1 3043 0 discriminator 1
	movq	-176(%rbp), %rax	# loc, tmp285
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movq	8(%rax), %rax	# _166->fld[0].rtx, D.22408
	movl	8(%rax), %eax	# _167->fld[0].rtuint, D.22409
	movl	%eax, %edi	# D.22409,
	call	get_cse_reg_info	#
	jmp	.L919	#
.L918:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.482
.L919:
	.loc 1 3043 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.482_35->reg_qty, D.22410
	andl	$31, %eax	#, iftmp.481
	jmp	.L920	#
.L916:
	.loc 1 3043 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.486
	andl	$33554432, %eax	#, D.22410
	testl	%eax, %eax	# D.22410
	je	.L921	#,
	.loc 1 3043 0 discriminator 1
	movl	$5, %eax	#, iftmp.485
	jmp	.L922	#
.L921:
	.loc 1 3043 0 discriminator 2
	movl	$4, %eax	#, iftmp.485
.L922:
	.loc 1 3043 0 discriminator 3
	movq	-176(%rbp), %rdx	# loc, tmp286
	movq	(%rdx), %rdx	# *loc_42(D), D.22408
	movq	8(%rdx), %rdx	# _177->fld[0].rtx, D.22408
	movl	%eax, %esi	# iftmp.485,
	movq	%rdx, %rdi	# D.22408,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.481
.L920:
	movl	%eax, -104(%rbp)	# iftmp.481, hash
	.loc 1 3044 0 is_stmt 1 discriminator 3
	movl	-124(%rbp), %eax	# save_do_not_record, tmp287
	movl	%eax, do_not_record(%rip)	# tmp287, do_not_record
	.loc 1 3045 0 discriminator 3
	movl	-120(%rbp), %eax	# save_hash_arg_in_memory, tmp288
	movl	%eax, hash_arg_in_memory(%rip)	# tmp288, hash_arg_in_memory
	.loc 1 3047 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.488
	andl	$33554432, %eax	#, D.22410
	testl	%eax, %eax	# D.22410
	je	.L923	#,
	.loc 1 3047 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.487
	jmp	.L924	#
.L923:
	.loc 1 3047 0 discriminator 2
	movl	$4, %eax	#, iftmp.487
.L924:
	.loc 1 3047 0 discriminator 3
	movq	-176(%rbp), %rdx	# loc, tmp289
	movq	(%rdx), %rdx	# *loc_42(D), D.22408
	movq	8(%rdx), %rcx	# _186->fld[0].rtx, D.22408
	movl	-104(%rbp), %esi	# hash, tmp290
	movl	%eax, %edx	# iftmp.487,
	movq	%rcx, %rdi	# D.22408,
	call	lookup	#
	movq	%rax, -40(%rbp)	# tmp291, elt
	.loc 1 3048 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, elt
	jne	.L925	#,
	.loc 1 3049 0
	jmp	.L880	#
.L925:
	.loc 1 3056 0
	movq	-40(%rbp), %rax	# elt, tmp292
	movq	48(%rax), %rax	# elt_188->first_same_value, tmp293
	movq	%rax, -80(%rbp)	# tmp293, p
	jmp	.L926	#
.L927:
	.loc 1 3057 0 discriminator 2
	movq	-80(%rbp), %rax	# p, tmp294
	movb	$0, 78(%rax)	#, p_4->flag
	.loc 1 3056 0 discriminator 2
	movq	-80(%rbp), %rax	# p, tmp295
	movq	32(%rax), %rax	# p_4->next_same_value, tmp296
	movq	%rax, -80(%rbp)	# tmp296, p
.L926:
	.loc 1 3056 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, p
	jne	.L927	#,
	.loc 1 3059 0 is_stmt 1
	jmp	.L928	#
.L944:
.LBB54:
	.loc 1 3061 0
	movq	-176(%rbp), %rax	# loc, tmp297
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movl	-180(%rbp), %edx	# mode, tmp298
	movl	%edx, %esi	# tmp298,
	movq	%rax, %rdi	# D.22408,
	call	address_cost	#
	movl	%eax, -136(%rbp)	# tmp299, best_addr_cost
	.loc 1 3062 0
	movq	-176(%rbp), %rax	# loc, tmp300
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movzwl	(%rax), %eax	# _193->code, D.22407
	cmpw	$61, %ax	#, D.22407
	je	.L929	#,
	.loc 1 3062 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# loc, tmp301
	movq	(%rax), %rax	# *loc_42(D), D.22408
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.22408,
	call	notreg_cost	#
	addl	$1, %eax	#, D.22410
	sarl	%eax	# iftmp.489
	jmp	.L930	#
.L929:
	.loc 1 3062 0 discriminator 2
	movl	$0, %eax	#, iftmp.489
.L930:
	.loc 1 3062 0 discriminator 3
	movl	%eax, -132(%rbp)	# iftmp.489, best_rtx_cost
	.loc 1 3063 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# elt, tmp302
	movq	%rax, -64(%rbp)	# tmp302, best_elt
	.loc 1 3064 0 discriminator 3
	movq	-176(%rbp), %rax	# loc, tmp303
	movq	(%rax), %rax	# *loc_42(D), tmp304
	movq	%rax, -56(%rbp)	# tmp304, best_rtx
	.loc 1 3073 0 discriminator 3
	movl	$0, -148(%rbp)	#, found_better
	.loc 1 3074 0 discriminator 3
	movq	-40(%rbp), %rax	# elt, tmp305
	movq	48(%rax), %rax	# elt_188->first_same_value, tmp306
	movq	%rax, -80(%rbp)	# tmp306, p
	movl	$0, -128(%rbp)	#, count
	jmp	.L931	#
.L942:
	.loc 1 3077 0
	movq	-80(%rbp), %rax	# p, tmp307
	movzbl	78(%rax), %eax	# p_5->flag, D.22411
	testb	%al, %al	# D.22411
	jne	.L932	#,
	.loc 1 3078 0
	movq	-80(%rbp), %rax	# p, tmp308
	movq	(%rax), %rax	# p_5->exp, D.22408
	movzwl	(%rax), %eax	# _207->code, D.22407
	cmpw	$61, %ax	#, D.22407
	je	.L933	#,
	.loc 1 3079 0
	movq	-80(%rbp), %rax	# p, tmp309
	movq	(%rax), %rsi	# p_5->exp, D.22408
	movq	-80(%rbp), %rax	# p, tmp310
	movq	(%rax), %rax	# p_5->exp, D.22408
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22408,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22410
	je	.L932	#,
.L933:
.LBB55:
	.loc 1 3081 0
	movq	-80(%rbp), %rax	# p, tmp311
	movq	(%rax), %rdx	# p_5->exp, D.22408
	movl	target_flags(%rip), %eax	# target_flags, target_flags.491
	andl	$33554432, %eax	#, D.22410
	testl	%eax, %eax	# D.22410
	je	.L934	#,
	.loc 1 3081 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.490
	jmp	.L935	#
.L934:
	.loc 1 3081 0 discriminator 2
	movl	$4, %eax	#, iftmp.490
.L935:
	.loc 1 3081 0 discriminator 3
	movq	-176(%rbp), %rcx	# loc, tmp312
	movq	(%rcx), %rcx	# *loc_42(D), D.22408
	movzwl	(%rcx), %ecx	# _217->code, D.22407
	movzwl	%cx, %edi	# D.22407, D.22412
	movq	-32(%rbp), %rcx	# c, tmp313
	movl	%eax, %esi	# iftmp.490,
	call	simplify_gen_binary	#
	movq	%rax, -24(%rbp)	# tmp314, new
	.loc 1 3084 0 is_stmt 1 discriminator 3
	movl	-180(%rbp), %edx	# mode, tmp315
	movq	-24(%rbp), %rax	# new, tmp316
	movl	%edx, %esi	# tmp315,
	movq	%rax, %rdi	# tmp316,
	call	address_cost	#
	movl	%eax, -92(%rbp)	# tmp317, new_cost
	.loc 1 3086 0 discriminator 3
	movl	-92(%rbp), %eax	# new_cost, tmp318
	cmpl	-136(%rbp), %eax	# best_addr_cost, tmp318
	jl	.L936	#,
	.loc 1 3087 0
	movl	-92(%rbp), %eax	# new_cost, tmp319
	cmpl	-136(%rbp), %eax	# best_addr_cost, tmp319
	jne	.L932	#,
	.loc 1 3088 0
	movq	-24(%rbp), %rax	# new, tmp320
	movzwl	(%rax), %eax	# new_220->code, D.22407
	cmpw	$61, %ax	#, D.22407
	je	.L937	#,
	.loc 1 3088 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# new, tmp321
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp321,
	call	notreg_cost	#
	addl	$1, %eax	#, D.22410
	sarl	%eax	# iftmp.492
	jmp	.L938	#
.L937:
	.loc 1 3088 0 discriminator 2
	movl	$0, %eax	#, iftmp.492
.L938:
	.loc 1 3088 0 discriminator 3
	cmpl	-132(%rbp), %eax	# best_rtx_cost, iftmp.492
	jle	.L932	#,
.L936:
	.loc 1 3090 0 is_stmt 1
	movl	$1, -148(%rbp)	#, found_better
	.loc 1 3091 0
	movl	-92(%rbp), %eax	# new_cost, tmp322
	movl	%eax, -136(%rbp)	# tmp322, best_addr_cost
	.loc 1 3092 0
	movq	-24(%rbp), %rax	# new, tmp323
	movzwl	(%rax), %eax	# new_220->code, D.22407
	cmpw	$61, %ax	#, D.22407
	je	.L939	#,
	.loc 1 3092 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# new, tmp324
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp324,
	call	notreg_cost	#
	addl	$1, %eax	#, D.22410
	sarl	%eax	# iftmp.493
	jmp	.L940	#
.L939:
	.loc 1 3092 0 discriminator 2
	movl	$0, %eax	#, iftmp.493
.L940:
	.loc 1 3092 0 discriminator 3
	movl	%eax, -132(%rbp)	# iftmp.493, best_rtx_cost
	.loc 1 3093 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# p, tmp325
	movq	%rax, -64(%rbp)	# tmp325, best_elt
	.loc 1 3094 0 discriminator 3
	movq	-24(%rbp), %rax	# new, tmp326
	movq	%rax, -56(%rbp)	# tmp326, best_rtx
.L932:
.LBE55:
	.loc 1 3076 0
	movq	-80(%rbp), %rax	# p, tmp327
	movq	32(%rax), %rax	# p_5->next_same_value, tmp328
	movq	%rax, -80(%rbp)	# tmp328, p
	addl	$1, -128(%rbp)	#, count
.L931:
	.loc 1 3074 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, p
	je	.L941	#,
	.loc 1 3075 0
	cmpl	$31, -128(%rbp)	#, count
	jle	.L942	#,
.L941:
	.loc 1 3098 0
	cmpl	$0, -148(%rbp)	#, found_better
	je	.L928	#,
	.loc 1 3100 0
	movq	-56(%rbp), %rax	# best_rtx, tmp329
	movq	%rax, %rdi	# tmp329,
	call	copy_rtx	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22408,
	call	canon_reg	#
	movq	%rax, %rdx	#, D.22408
	movq	-176(%rbp), %rsi	# loc, tmp330
	movq	-168(%rbp), %rax	# insn, tmp331
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp331,
	call	validate_change	#
	testl	%eax, %eax	# D.22410
	je	.L943	#,
	.loc 1 3103 0
	jmp	.L880	#
.L943:
	.loc 1 3105 0
	movq	-64(%rbp), %rax	# best_elt, tmp332
	movb	$1, 78(%rax)	#, best_elt_24->flag
.L928:
.LBE54:
	.loc 1 3059 0 discriminator 1
	cmpl	$0, -148(%rbp)	#, found_better
	jne	.L944	#,
.L880:
.LBE53:
	.loc 1 3110 0
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	find_best_addr, .-find_best_addr
	.type	find_comparison_args, @function
find_comparison_args:
.LFB37:
	.loc 1 3129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# code, code
	movq	%rsi, -80(%rbp)	# parg1, parg1
	movq	%rdx, -88(%rbp)	# parg2, parg2
	movq	%rcx, -96(%rbp)	# pmode1, pmode1
	movq	%r8, -104(%rbp)	# pmode2, pmode2
	.loc 1 3132 0
	movq	-80(%rbp), %rax	# parg1, tmp171
	movq	(%rax), %rax	# *parg1_15(D), tmp172
	movq	%rax, -48(%rbp)	# tmp172, arg1
	movq	-88(%rbp), %rax	# parg2, tmp173
	movq	(%rax), %rax	# *parg2_17(D), tmp174
	movq	%rax, -40(%rbp)	# tmp174, arg2
	.loc 1 3136 0
	jmp	.L946	#
.L971:
.LBB56:
	.loc 1 3139 0
	movq	$0, -32(%rbp)	#, x
	.loc 1 3140 0
	movl	$0, -60(%rbp)	#, reverse_code
	.loc 1 3141 0
	movq	$0, -24(%rbp)	#, p
	.loc 1 3148 0
	movq	-48(%rbp), %rax	# arg1, tmp175
	movzwl	(%rax), %eax	# arg1_5->code, D.22416
	cmpw	$74, %ax	#, D.22416
	jne	.L947	#,
	.loc 1 3148 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.22415
	cmpq	-40(%rbp), %rax	# arg2, D.22415
	jne	.L947	#,
	.loc 1 3149 0 is_stmt 1
	movq	-48(%rbp), %rax	# arg1, tmp176
	movq	%rax, -32(%rbp)	# tmp176, x
	jmp	.L948	#
.L947:
	.loc 1 3154 0
	movq	-48(%rbp), %rax	# arg1, tmp177
	movzwl	(%rax), %eax	# arg1_5->code, D.22416
	movzwl	%ax, %eax	# D.22416, D.22414
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22417
	cmpb	$60, %al	#, D.22417
	jne	.L948	#,
	.loc 1 3156 0
	cmpl	$102, -68(%rbp)	#, code
	jne	.L949	#,
	.loc 1 3165 0
	movq	-48(%rbp), %rax	# arg1, tmp179
	movq	%rax, -32(%rbp)	# tmp179, x
	jmp	.L948	#
.L949:
	.loc 1 3166 0
	cmpl	$103, -68(%rbp)	#, code
	jne	.L948	#,
	.loc 1 3175 0
	movq	-48(%rbp), %rax	# arg1, tmp180
	movq	%rax, -32(%rbp)	# tmp180, x
	movl	$1, -60(%rbp)	#, reverse_code
.L948:
	.loc 1 3184 0
	cmpq	$0, -32(%rbp)	#, x
	jne	.L950	#,
	.loc 1 3188 0
	movq	-48(%rbp), %rax	# arg1, tmp181
	movzbl	2(%rax), %eax	# arg1_5->mode, D.22413
	.loc 1 3187 0
	movzbl	%al, %ebx	# D.22413, D.22418
	movq	-48(%rbp), %rax	# arg1, tmp182
	movzbl	2(%rax), %eax	# arg1_5->mode, D.22413
	movzbl	%al, %edx	# D.22413, D.22418
	movq	-48(%rbp), %rax	# arg1, tmp183
	movl	%edx, %esi	# D.22418,
	movq	%rax, %rdi	# tmp183,
	call	safe_hash	#
	andl	$31, %eax	#, D.22419
	movl	%eax, %ecx	# D.22419, D.22419
	movq	-48(%rbp), %rax	# arg1, tmp184
	movl	%ebx, %edx	# D.22418,
	movl	%ecx, %esi	# D.22419,
	movq	%rax, %rdi	# tmp184,
	call	lookup	#
	movq	%rax, -24(%rbp)	# tmp185, p
.L950:
	.loc 1 3189 0
	cmpq	$0, -24(%rbp)	#, p
	je	.L951	#,
	.loc 1 3191 0
	movq	-24(%rbp), %rax	# p, tmp186
	movq	48(%rax), %rax	# p_12->first_same_value, tmp187
	movq	%rax, -24(%rbp)	# tmp187, p
	.loc 1 3201 0
	movq	-24(%rbp), %rax	# p, tmp188
	movzbl	77(%rax), %eax	# p_42->is_const, D.22417
	testb	%al, %al	# D.22417
	je	.L951	#,
	.loc 1 3202 0
	jmp	.L952	#
.L951:
	.loc 1 3205 0
	jmp	.L953	#
.L966:
.LBB57:
	.loc 1 3207 0
	movq	-24(%rbp), %rax	# p, tmp189
	movq	(%rax), %rax	# p_14->exp, D.22415
	movzbl	2(%rax), %eax	# _44->mode, D.22413
	movzbl	%al, %eax	# D.22413, tmp190
	movl	%eax, -56(%rbp)	# tmp190, inner_mode
	.loc 1 3210 0
	movq	-24(%rbp), %rax	# p, tmp191
	movq	(%rax), %rsi	# p_14->exp, D.22415
	movq	-24(%rbp), %rax	# p, tmp192
	movq	(%rax), %rax	# p_14->exp, D.22415
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22415,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22414
	jne	.L954	#,
	.loc 1 3211 0
	jmp	.L955	#
.L954:
	.loc 1 3213 0
	movq	-24(%rbp), %rax	# p, tmp193
	movq	(%rax), %rax	# p_14->exp, D.22415
	movzwl	(%rax), %eax	# _50->code, D.22416
	cmpw	$74, %ax	#, D.22416
	je	.L956	#,
	.loc 1 3221 0
	cmpl	$102, -68(%rbp)	#, code
	je	.L957	#,
	.loc 1 3222 0
	cmpl	$107, -68(%rbp)	#, code
	jne	.L958	#,
	.loc 1 3223 0
	movl	-56(%rbp), %eax	# inner_mode, inner_mode.494
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22420
	cmpl	$1, %eax	#, D.22420
	jne	.L958	#,
	.loc 1 3224 0
	movl	-56(%rbp), %eax	# inner_mode, inner_mode.495
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22416
	cmpw	$64, %ax	#, D.22416
	ja	.L958	#,
	.loc 1 3228 0
	movl	-56(%rbp), %eax	# inner_mode, inner_mode.496
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22416
	movzwl	%ax, %eax	# D.22416, D.22414
	subl	$1, %eax	#, D.22414
	.loc 1 3226 0
	movl	$1, %edx	#, tmp197
	movl	%eax, %ecx	# D.22414, tmp258
	sarq	%cl, %rdx	# tmp258, D.22421
	movq	%rdx, %rax	# D.22421, D.22421
	andl	$1, %eax	#, D.22421
	testq	%rax, %rax	# D.22421
	je	.L958	#,
.L957:
	.loc 1 3236 0
	movq	-24(%rbp), %rax	# p, tmp198
	movq	(%rax), %rax	# p_14->exp, D.22415
	movzwl	(%rax), %eax	# _62->code, D.22416
	movzwl	%ax, %eax	# D.22416, D.22414
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22417
	cmpb	$60, %al	#, D.22417
	jne	.L958	#,
.L956:
	.loc 1 3238 0
	movq	-24(%rbp), %rax	# p, tmp200
	movq	(%rax), %rax	# p_14->exp, tmp201
	movq	%rax, -32(%rbp)	# tmp201, x
	.loc 1 3239 0
	jmp	.L959	#
.L958:
	.loc 1 3241 0
	cmpl	$103, -68(%rbp)	#, code
	je	.L960	#,
	.loc 1 3242 0
	cmpl	$104, -68(%rbp)	#, code
	jne	.L961	#,
	.loc 1 3243 0
	movl	-56(%rbp), %eax	# inner_mode, inner_mode.497
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22420
	cmpl	$1, %eax	#, D.22420
	jne	.L961	#,
	.loc 1 3244 0
	movl	-56(%rbp), %eax	# inner_mode, inner_mode.498
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22416
	cmpw	$64, %ax	#, D.22416
	ja	.L961	#,
	.loc 1 3248 0
	movl	-56(%rbp), %eax	# inner_mode, inner_mode.499
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22416
	movzwl	%ax, %eax	# D.22416, D.22414
	subl	$1, %eax	#, D.22414
	.loc 1 3246 0
	movl	$1, %edx	#, tmp205
	movl	%eax, %ecx	# D.22414, tmp260
	sarq	%cl, %rdx	# tmp260, D.22421
	movq	%rdx, %rax	# D.22421, D.22421
	andl	$1, %eax	#, D.22421
	testq	%rax, %rax	# D.22421
	je	.L961	#,
.L960:
	.loc 1 3256 0
	movq	-24(%rbp), %rax	# p, tmp206
	movq	(%rax), %rax	# p_14->exp, D.22415
	movzwl	(%rax), %eax	# _76->code, D.22416
	movzwl	%ax, %eax	# D.22416, D.22414
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22417
	cmpb	$60, %al	#, D.22417
	jne	.L961	#,
	.loc 1 3258 0
	movl	$1, -60(%rbp)	#, reverse_code
	.loc 1 3259 0
	movq	-24(%rbp), %rax	# p, tmp208
	movq	(%rax), %rax	# p_14->exp, tmp209
	movq	%rax, -32(%rbp)	# tmp209, x
	.loc 1 3260 0
	jmp	.L959	#
.L961:
	.loc 1 3265 0
	movq	-24(%rbp), %rax	# p, tmp210
	movq	(%rax), %rdx	# p_14->exp, D.22415
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	.loc 1 3265 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp211
	movq	(%rax), %rdx	# p_14->exp, D.22415
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	movq	-24(%rbp), %rax	# p, tmp212
	movq	(%rax), %rdx	# p_14->exp, D.22415
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	movq	-24(%rbp), %rax	# p, tmp213
	movq	(%rax), %rdx	# p_14->exp, D.22415
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	movq	-24(%rbp), %rax	# p, tmp214
	movq	(%rax), %rax	# p_14->exp, D.22415
	movzwl	(%rax), %eax	# _90->code, D.22416
	cmpw	$75, %ax	#, D.22416
	jne	.L963	#,
	movq	-24(%rbp), %rax	# p, tmp215
	movq	(%rax), %rax	# p_14->exp, D.22415
	movq	16(%rax), %rax	# _92->fld[1].rtx, D.22415
	movzwl	(%rax), %eax	# _93->code, D.22416
	cmpw	$54, %ax	#, D.22416
	jne	.L963	#,
	movq	-24(%rbp), %rax	# p, tmp216
	movq	(%rax), %rax	# p_14->exp, D.22415
	movq	8(%rax), %rdx	# _95->fld[0].rtx, D.22415
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	movq	-24(%rbp), %rax	# p, tmp217
	movq	(%rax), %rax	# p_14->exp, D.22415
	movq	8(%rax), %rdx	# _98->fld[0].rtx, D.22415
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	movq	-24(%rbp), %rax	# p, tmp218
	movq	(%rax), %rdx	# p_14->exp, D.22415
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	jne	.L964	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22417
	testb	%al, %al	# D.22417
	jne	.L962	#,
.L964:
	.loc 1 3265 0 discriminator 2
	movq	-24(%rbp), %rax	# p, tmp219
	movq	(%rax), %rax	# p_14->exp, D.22415
	movq	8(%rax), %rdx	# _104->fld[0].rtx, D.22415
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	.loc 1 3265 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp220
	movq	(%rax), %rax	# p_14->exp, D.22415
	movq	8(%rax), %rdx	# _107->fld[0].rtx, D.22415
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
.L963:
	.loc 1 3265 0 discriminator 2
	movq	-24(%rbp), %rax	# p, tmp221
	movq	(%rax), %rdx	# p_14->exp, D.22415
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	.loc 1 3265 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp222
	movq	(%rax), %rdx	# p_14->exp, D.22415
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	movq	-24(%rbp), %rax	# p, tmp223
	movq	(%rax), %rdx	# p_14->exp, D.22415
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	movq	-24(%rbp), %rax	# p, tmp224
	movq	(%rax), %rax	# p_14->exp, D.22415
	movzwl	(%rax), %eax	# _116->code, D.22416
	cmpw	$75, %ax	#, D.22416
	jne	.L965	#,
	movq	-24(%rbp), %rax	# p, tmp225
	movq	(%rax), %rax	# p_14->exp, D.22415
	movq	16(%rax), %rax	# _118->fld[1].rtx, D.22415
	movzwl	(%rax), %eax	# _119->code, D.22416
	cmpw	$54, %ax	#, D.22416
	jne	.L965	#,
	movq	-24(%rbp), %rax	# p, tmp226
	movq	(%rax), %rax	# p_14->exp, D.22415
	movq	8(%rax), %rdx	# _121->fld[0].rtx, D.22415
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	movq	-24(%rbp), %rax	# p, tmp227
	movq	(%rax), %rax	# p_14->exp, D.22415
	movq	8(%rax), %rdx	# _124->fld[0].rtx, D.22415
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
	movq	-24(%rbp), %rax	# p, tmp228
	movq	(%rax), %rax	# p_14->exp, D.22415
	movq	8(%rax), %rdx	# _127->fld[0].rtx, D.22415
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	je	.L962	#,
.L965:
	.loc 1 3265 0 discriminator 2
	movq	-24(%rbp), %rax	# p, tmp229
	movq	(%rax), %rax	# p_14->exp, D.22415
	movzwl	(%rax), %eax	# _130->code, D.22416
	cmpw	$70, %ax	#, D.22416
	jne	.L955	#,
.L962:
	.loc 1 3267 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp230
	movq	(%rax), %rax	# p_14->exp, tmp231
	movq	%rax, -48(%rbp)	# tmp231, arg1
	.loc 1 3268 0
	nop
.L955:
.LBE57:
	.loc 1 3205 0
	movq	-24(%rbp), %rax	# p, tmp232
	movq	32(%rax), %rax	# p_14->next_same_value, tmp233
	movq	%rax, -24(%rbp)	# tmp233, p
.L953:
	.loc 1 3205 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, p
	jne	.L966	#,
.L959:
	.loc 1 3274 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, x
	jne	.L967	#,
	.loc 1 3275 0
	jmp	.L952	#
.L967:
	.loc 1 3280 0
	cmpl	$0, -60(%rbp)	#, reverse_code
	je	.L968	#,
.LBB58:
	.loc 1 3282 0
	movq	-32(%rbp), %rax	# x, tmp234
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp234,
	call	reversed_comparison_code	#
	movl	%eax, -52(%rbp)	# tmp235, reversed
	.loc 1 3283 0
	cmpl	$0, -52(%rbp)	#, reversed
	jne	.L969	#,
	.loc 1 3284 0
	jmp	.L952	#
.L969:
	.loc 1 3285 0
	movl	-52(%rbp), %eax	# reversed, tmp236
	movl	%eax, -68(%rbp)	# tmp236, code
.LBE58:
	jmp	.L970	#
.L968:
	.loc 1 3287 0
	movq	-32(%rbp), %rax	# x, tmp237
	movzwl	(%rax), %eax	# x_9->code, D.22416
	movzwl	%ax, %eax	# D.22416, D.22414
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22417
	cmpb	$60, %al	#, D.22417
	jne	.L970	#,
	.loc 1 3288 0
	movq	-32(%rbp), %rax	# x, tmp239
	movzwl	(%rax), %eax	# x_9->code, D.22416
	movzwl	%ax, %eax	# D.22416, tmp240
	movl	%eax, -68(%rbp)	# tmp240, code
.L970:
	.loc 1 3289 0
	movq	-32(%rbp), %rax	# x, tmp241
	movq	8(%rax), %rax	# x_9->fld[0].rtx, tmp242
	movq	%rax, -48(%rbp)	# tmp242, arg1
	movq	-32(%rbp), %rax	# x, tmp243
	movq	16(%rax), %rax	# x_9->fld[1].rtx, tmp244
	movq	%rax, -40(%rbp)	# tmp244, arg2
.L946:
.LBE56:
	.loc 1 3136 0 discriminator 1
	movq	-48(%rbp), %rax	# arg1, tmp245
	movzbl	2(%rax), %eax	# arg1_5->mode, D.22413
	movzbl	%al, %eax	# D.22413, D.22414
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.22415
	cmpq	-40(%rbp), %rax	# arg2, D.22415
	je	.L971	#,
.L952:
	.loc 1 3294 0
	movq	-48(%rbp), %rax	# arg1, tmp247
	movzbl	2(%rax), %eax	# arg1_6->mode, D.22413
	movzbl	%al, %edx	# D.22413, D.22418
	movq	-96(%rbp), %rax	# pmode1, tmp248
	movl	%edx, (%rax)	# D.22418, *pmode1_146(D)
	movq	-40(%rbp), %rax	# arg2, tmp249
	movzbl	2(%rax), %eax	# arg2_7->mode, D.22413
	movzbl	%al, %edx	# D.22413, D.22418
	movq	-104(%rbp), %rax	# pmode2, tmp250
	movl	%edx, (%rax)	# D.22418, *pmode2_149(D)
	.loc 1 3295 0
	movq	-48(%rbp), %rax	# arg1, tmp251
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp251,
	call	fold_rtx	#
	movq	-80(%rbp), %rdx	# parg1, tmp252
	movq	%rax, (%rdx)	# D.22415, *parg1_15(D)
	movq	-40(%rbp), %rax	# arg2, tmp253
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp253,
	call	fold_rtx	#
	movq	-88(%rbp), %rdx	# parg2, tmp254
	movq	%rax, (%rdx)	# D.22415, *parg2_17(D)
	.loc 1 3297 0
	movl	-68(%rbp), %eax	# code, D.22422
	.loc 1 3298 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	find_comparison_args, .-find_comparison_args
	.type	fold_rtx, @function
fold_rtx:
.LFB38:
	.loc 1 3317 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$520, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -520(%rbp)	# x, x
	movq	%rsi, -528(%rbp)	# insn, insn
	.loc 1 3322 0
	movq	$0, -400(%rbp)	#, new
	.loc 1 3323 0
	movl	$0, -488(%rbp)	#, copied
	.loc 1 3324 0
	movl	$0, -484(%rbp)	#, must_swap
	.loc 1 3340 0
	cmpq	$0, -520(%rbp)	#, x
	jne	.L974	#,
	.loc 1 3341 0
	movq	-520(%rbp), %rax	# x, D.22423
	jmp	.L1257	#
.L974:
	.loc 1 3343 0
	movq	-520(%rbp), %rax	# x, tmp904
	movzbl	2(%rax), %eax	# x_118(D)->mode, D.22424
	movzbl	%al, %eax	# D.22424, tmp905
	movl	%eax, -472(%rbp)	# tmp905, mode
	.loc 1 3344 0
	movq	-520(%rbp), %rax	# x, tmp906
	movzwl	(%rax), %eax	# x_118(D)->code, D.22425
	movzwl	%ax, %eax	# D.22425, tmp907
	movl	%eax, -496(%rbp)	# tmp907, code
	.loc 1 3345 0
	movl	-496(%rbp), %eax	# code, tmp909
	subl	$3, %eax	#, tmp908
	cmpl	$83, %eax	#, tmp908
	ja	.L1258	#,
	movl	%eax, %eax	# tmp908, tmp910
	movq	.L978(,%rax,8), %rax	#, tmp911
	jmp	*%rax	# tmp911
	.section	.rodata
	.align 8
	.align 4
.L978:
	.quad	.L977
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L979
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L980
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L977
	.quad	.L977
	.quad	.L977
	.quad	.L1258
	.quad	.L977
	.quad	.L981
	.quad	.L1258
	.quad	.L977
	.quad	.L1258
	.quad	.L982
	.quad	.L1258
	.quad	.L1258
	.quad	.L983
	.quad	.L977
	.quad	.L977
	.quad	.L1258
	.quad	.L977
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L984
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L1258
	.quad	.L984
	.text
.L977:
	.loc 1 3362 0
	movq	-520(%rbp), %rax	# x, D.22423
	jmp	.L1257	#
.L981:
	.loc 1 3373 0
	cmpq	$0, -528(%rbp)	#, insn
	je	.L985	#,
	.loc 1 3373 0 is_stmt 0 discriminator 1
	movq	-528(%rbp), %rax	# insn, tmp912
	movzwl	(%rax), %eax	# insn_125(D)->code, D.22425
	cmpw	$33, %ax	#, D.22425
	jne	.L985	#,
.LBB59:
	.loc 1 3375 0 is_stmt 1
	movq	-528(%rbp), %rax	# insn, tmp913
	movq	%rax, %rdi	# tmp913,
	call	next_nonnote_insn	#
	movq	%rax, -248(%rbp)	# tmp914, next
	.loc 1 3377 0
	cmpq	$0, -248(%rbp)	#, next
	je	.L985	#,
	.loc 1 3377 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rax	# next, tmp915
	movzwl	(%rax), %eax	# next_127->code, D.22425
	cmpw	$36, %ax	#, D.22425
	jne	.L985	#,
	.loc 1 3378 0 is_stmt 1
	movq	-248(%rbp), %rax	# next, tmp916
	movq	24(%rax), %rax	# next_127->fld[2].rtx, D.22426
	testq	%rax, %rax	# D.22426
	je	.L985	#,
	.loc 1 3379 0
	movq	-248(%rbp), %rax	# next, tmp917
	movq	24(%rax), %rax	# next_127->fld[2].rtx, D.22426
	movzwl	(%rax), %eax	# _130->code, D.22425
	cmpw	$33, %ax	#, D.22425
	jne	.L985	#,
	.loc 1 3380 0
	movq	-248(%rbp), %rax	# next, tmp918
	movq	24(%rax), %rax	# next_127->fld[2].rtx, D.22426
	movq	32(%rax), %rax	# _132->fld[3].rtx, D.22426
	movzwl	(%rax), %eax	# _133->code, D.22425
	cmpw	$44, %ax	#, D.22425
	je	.L986	#,
	.loc 1 3381 0
	movq	-248(%rbp), %rax	# next, tmp919
	movq	24(%rax), %rax	# next_127->fld[2].rtx, D.22426
	movq	32(%rax), %rax	# _135->fld[3].rtx, D.22426
	movzwl	(%rax), %eax	# _136->code, D.22425
	cmpw	$45, %ax	#, D.22425
	jne	.L985	#,
.L986:
	.loc 1 3382 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.501
	andl	$33554432, %eax	#, D.22427
	testl	%eax, %eax	# D.22427
	je	.L987	#,
	.loc 1 3382 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.500
	jmp	.L988	#
.L987:
	.loc 1 3382 0 discriminator 2
	movl	$4, %eax	#, iftmp.500
.L988:
	.loc 1 3382 0 discriminator 3
	movq	-248(%rbp), %rdx	# next, tmp920
	movl	%eax, %esi	# iftmp.500,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	jmp	.L1257	#
.L985:
.LBE59:
	.loc 1 3384 0 is_stmt 1
	jmp	.L989	#
.L982:
	.loc 1 3388 0
	movq	-520(%rbp), %rax	# x, tmp921
	movl	$54, %esi	#,
	movq	%rax, %rdi	# tmp921,
	call	lookup_as_function	#
	movq	%rax, -400(%rbp)	# tmp922, new
	cmpq	$0, -400(%rbp)	#, new
	jne	.L990	#,
	.loc 1 3389 0
	movq	-520(%rbp), %rax	# x, tmp923
	movl	$55, %esi	#,
	movq	%rax, %rdi	# tmp923,
	call	lookup_as_function	#
	movq	%rax, -400(%rbp)	# tmp924, new
	cmpq	$0, -400(%rbp)	#, new
	je	.L991	#,
.L990:
	.loc 1 3390 0
	movq	-400(%rbp), %rax	# new, D.22423
	jmp	.L1257	#
.L991:
	.loc 1 3400 0
	movl	-472(%rbp), %eax	# mode, mode.502
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22424
	movq	-520(%rbp), %rax	# x, tmp926
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movzbl	2(%rax), %eax	# _147->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22427
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22424
	cmpb	%al, %dl	# D.22424, D.22424
	jbe	.L992	#,
.LBB60:
	.loc 1 3402 0
	movq	-520(%rbp), %rax	# x, tmp928
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movzbl	2(%rax), %eax	# _151->mode, D.22424
	movzbl	%al, %eax	# D.22424, tmp929
	movl	%eax, -468(%rbp)	# tmp929, imode
	.loc 1 3405 0
	movl	-472(%rbp), %eax	# mode, mode.503
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22424
	movzbl	%al, %edx	# D.22424, D.22427
	movl	target_flags(%rip), %eax	# target_flags, target_flags.505
	andl	$33554432, %eax	#, D.22427
	testl	%eax, %eax	# D.22427
	je	.L993	#,
	.loc 1 3405 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.504
	jmp	.L994	#
.L993:
	.loc 1 3405 0 discriminator 2
	movl	$4, %eax	#, iftmp.504
.L994:
	.loc 1 3405 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.504, D.22427
	jg	.L995	#,
	.loc 1 3406 0 is_stmt 1
	movl	-468(%rbp), %eax	# imode, imode.506
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22424
	movzbl	%al, %edx	# D.22424, D.22427
	movl	target_flags(%rip), %eax	# target_flags, target_flags.508
	andl	$33554432, %eax	#, D.22427
	testl	%eax, %eax	# D.22427
	je	.L996	#,
	.loc 1 3406 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.507
	jmp	.L997	#
.L996:
	.loc 1 3406 0 discriminator 2
	movl	$4, %eax	#, iftmp.507
.L997:
	.loc 1 3406 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.507, D.22427
	jg	.L995	#,
	.loc 1 3407 0 is_stmt 1
	movq	-520(%rbp), %rax	# x, tmp932
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _168->code, D.22425
	cmpw	$61, %ax	#, D.22425
	jne	.L998	#,
	.loc 1 3407 0 is_stmt 0 discriminator 1
	movq	-520(%rbp), %rax	# x, tmp933
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movl	8(%rax), %eax	# _170->fld[0].rtuint, D.22428
	cmpl	$52, %eax	#, D.22428
	jbe	.L998	#,
	movq	-520(%rbp), %rax	# x, tmp934
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movl	8(%rax), %edx	# _172->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.511
	cmpl	%eax, %edx	# cached_regno.511, D.22428
	jne	.L999	#,
	.loc 1 3407 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.512
	testq	%rax, %rax	# cached_cse_reg_info.512
	jne	.L1000	#,
.L999:
	.loc 1 3407 0 discriminator 1
	movq	-520(%rbp), %rax	# x, tmp935
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movl	8(%rax), %eax	# _177->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1001	#
.L1000:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.510
.L1001:
	.loc 1 3407 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.510_67->reg_qty, D.22427
	andl	$31, %eax	#, iftmp.509
	jmp	.L1002	#
.L998:
	.loc 1 3407 0 discriminator 2
	movq	-520(%rbp), %rax	# x, tmp936
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movl	-468(%rbp), %edx	# imode, tmp937
	movl	%edx, %esi	# tmp937,
	movq	%rax, %rdi	# D.22426,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.509
.L1002:
	.loc 1 3407 0 discriminator 3
	movq	-520(%rbp), %rdx	# x, tmp938
	movq	8(%rdx), %rcx	# x_118(D)->fld[0].rtx, D.22426
	movl	-468(%rbp), %edx	# imode, tmp939
	movl	%eax, %esi	# iftmp.509,
	movq	%rcx, %rdi	# D.22426,
	call	lookup	#
	movq	%rax, -368(%rbp)	# tmp940, elt
	cmpq	$0, -368(%rbp)	#, elt
	je	.L995	#,
	.loc 1 3409 0 is_stmt 1
	movq	-368(%rbp), %rax	# elt, tmp941
	movq	48(%rax), %rax	# elt_187->first_same_value, tmp942
	movq	%rax, -368(%rbp)	# tmp942, elt
	jmp	.L1003	#
.L1007:
	.loc 1 3411 0
	movq	-368(%rbp), %rax	# elt, tmp943
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movzwl	(%rax), %eax	# _189->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1004	#,
	.loc 1 3411 0 is_stmt 0 discriminator 1
	movq	-368(%rbp), %rax	# elt, tmp944
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movzwl	(%rax), %eax	# _191->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1004	#,
	movq	-368(%rbp), %rax	# elt, tmp945
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movzwl	(%rax), %eax	# _193->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1004	#,
	movq	-368(%rbp), %rax	# elt, tmp946
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movzwl	(%rax), %eax	# _195->code, D.22425
	cmpw	$55, %ax	#, D.22425
	je	.L1004	#,
	movq	-368(%rbp), %rax	# elt, tmp947
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movzwl	(%rax), %eax	# _197->code, D.22425
	cmpw	$58, %ax	#, D.22425
	je	.L1004	#,
	movq	-368(%rbp), %rax	# elt, tmp948
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movzwl	(%rax), %eax	# _199->code, D.22425
	cmpw	$134, %ax	#, D.22425
	je	.L1004	#,
	movq	-368(%rbp), %rax	# elt, tmp949
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movzwl	(%rax), %eax	# _201->code, D.22425
	cmpw	$56, %ax	#, D.22425
	je	.L1004	#,
	movq	-368(%rbp), %rax	# elt, tmp950
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movzwl	(%rax), %eax	# _203->code, D.22425
	cmpw	$140, %ax	#, D.22425
	jne	.L1005	#,
.L1004:
	.loc 1 3412 0 is_stmt 1
	movq	-368(%rbp), %rax	# elt, tmp951
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movzbl	2(%rax), %eax	# _205->mode, D.22424
	testb	%al, %al	# D.22424
	jne	.L1005	#,
	.loc 1 3413 0
	movq	-368(%rbp), %rax	# elt, tmp952
	movq	(%rax), %rax	# elt_40->exp, D.22423
	jmp	.L1257	#
.L1005:
	.loc 1 3415 0
	movq	-368(%rbp), %rax	# elt, tmp953
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movzwl	(%rax), %eax	# _208->code, D.22425
	cmpw	$63, %ax	#, D.22425
	jne	.L1006	#,
	.loc 1 3416 0
	movq	-368(%rbp), %rax	# elt, tmp954
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movq	8(%rax), %rax	# _210->fld[0].rtx, D.22426
	movzbl	2(%rax), %eax	# _211->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22428
	cmpl	-472(%rbp), %eax	# mode, D.22428
	jne	.L1006	#,
	.loc 1 3417 0
	movq	-368(%rbp), %rax	# elt, tmp955
	movq	(%rax), %rsi	# elt_40->exp, D.22426
	movq	-368(%rbp), %rax	# elt, tmp956
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22426,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22427
	je	.L1006	#,
	.loc 1 3418 0
	movq	-368(%rbp), %rax	# elt, tmp957
	movq	(%rax), %rax	# elt_40->exp, D.22426
	movq	8(%rax), %rax	# _217->fld[0].rtx, D.22426
	movq	%rax, %rdi	# D.22426,
	call	copy_rtx	#
	jmp	.L1257	#
.L1006:
	.loc 1 3409 0
	movq	-368(%rbp), %rax	# elt, tmp958
	movq	32(%rax), %rax	# elt_40->next_same_value, tmp959
	movq	%rax, -368(%rbp)	# tmp959, elt
.L1003:
	.loc 1 3409 0 is_stmt 0 discriminator 1
	cmpq	$0, -368(%rbp)	#, elt
	jne	.L1007	#,
.L995:
	.loc 1 3421 0 is_stmt 1
	movq	-520(%rbp), %rax	# x, D.22423
	jmp	.L1257	#
.L992:
.LBE60:
	.loc 1 3428 0
	movq	-520(%rbp), %rax	# x, tmp960
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movq	-528(%rbp), %rdx	# insn, tmp961
	movq	%rdx, %rsi	# tmp961,
	movq	%rax, %rdi	# D.22426,
	call	fold_rtx	#
	movq	%rax, -416(%rbp)	# folded_arg0.513, folded_arg0
	.loc 1 3429 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.514
	movq	%rax, %rdi	# folded_arg0.514,
	call	equiv_constant	#
	movq	%rax, -392(%rbp)	# tmp962, const_arg0
	.loc 1 3430 0
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1008	#,
	.loc 1 3431 0
	movq	-392(%rbp), %rax	# const_arg0, tmp963
	movq	%rax, -416(%rbp)	# tmp963, folded_arg0
.L1008:
	.loc 1 3433 0
	movq	-520(%rbp), %rax	# x, tmp964
	movq	8(%rax), %rdx	# x_118(D)->fld[0].rtx, D.22426
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.515
	cmpq	%rax, %rdx	# folded_arg0.515, D.22426
	je	.L1009	#,
	.loc 1 3435 0
	movq	-520(%rbp), %rax	# x, tmp965
	movl	16(%rax), %ecx	# x_118(D)->fld[1].rtuint, D.22428
	.loc 1 3436 0
	movq	-520(%rbp), %rax	# x, tmp966
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movzbl	2(%rax), %eax	# _229->mode, D.22424
	.loc 1 3435 0
	movzbl	%al, %edx	# D.22424, D.22429
	movq	-416(%rbp), %rsi	# folded_arg0, folded_arg0.516
	movl	-472(%rbp), %eax	# mode, tmp967
	movl	%eax, %edi	# tmp967,
	call	simplify_subreg	#
	movq	%rax, -400(%rbp)	# tmp968, new
	.loc 1 3437 0
	cmpq	$0, -400(%rbp)	#, new
	je	.L1009	#,
	.loc 1 3438 0
	movq	-400(%rbp), %rax	# new, D.22423
	jmp	.L1257	#
.L1009:
	.loc 1 3456 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.517
	movzwl	(%rax), %eax	# folded_arg0.517_235->code, D.22425
	cmpw	$61, %ax	#, D.22425
	jne	.L1010	#,
	.loc 1 3457 0
	movl	-472(%rbp), %eax	# mode, mode.518
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22424
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.519
	movzbl	2(%rax), %eax	# folded_arg0.519_239->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22427
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22424
	cmpb	%al, %dl	# D.22424, D.22424
	jae	.L1010	#,
	.loc 1 3458 0
	movq	-520(%rbp), %rax	# x, tmp971
	movq	%rax, %rdi	# tmp971,
	call	subreg_lowpart_p	#
	testl	%eax, %eax	# D.22427
	je	.L1010	#,
.LBB61:
	.loc 1 3466 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.520
	movzbl	2(%rax), %eax	# folded_arg0.520_244->mode, D.22424
	.loc 1 3464 0
	movzbl	%al, %ebx	# D.22424, D.22429
	.loc 1 3465 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.522
	movzwl	(%rax), %eax	# folded_arg0.522_247->code, D.22425
	.loc 1 3464 0
	cmpw	$61, %ax	#, D.22425
	jne	.L1011	#,
	.loc 1 3465 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.523
	movl	8(%rax), %eax	# folded_arg0.523_249->fld[0].rtuint, D.22428
	cmpl	$52, %eax	#, D.22428
	jbe	.L1011	#,
	.loc 1 3465 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.525
	movl	8(%rax), %edx	# folded_arg0.525_251->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.526
	cmpl	%eax, %edx	# cached_regno.526, D.22428
	jne	.L1012	#,
	.loc 1 3465 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.527
	testq	%rax, %rax	# cached_cse_reg_info.527
	jne	.L1013	#,
.L1012:
	.loc 1 3465 0 discriminator 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.528
	movl	8(%rax), %eax	# folded_arg0.528_256->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1014	#
.L1013:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.524
.L1014:
	.loc 1 3465 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.524_69->reg_qty, D.22427
	.loc 1 3464 0 is_stmt 1 discriminator 3
	andl	$31, %eax	#, iftmp.521
	jmp	.L1015	#
.L1011:
	.loc 1 3465 0 discriminator 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.529
	movzbl	2(%rax), %eax	# folded_arg0.529_262->mode, D.22424
	movzbl	%al, %edx	# D.22424, D.22429
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.530
	movl	%edx, %esi	# D.22429,
	movq	%rax, %rdi	# folded_arg0.530,
	call	canon_hash	#
	.loc 1 3464 0 discriminator 1
	andl	$31, %eax	#, iftmp.521
.L1015:
	.loc 1 3464 0 is_stmt 0 discriminator 2
	movq	-416(%rbp), %rcx	# folded_arg0, folded_arg0.531
	movl	%ebx, %edx	# D.22429,
	movl	%eax, %esi	# iftmp.521,
	movq	%rcx, %rdi	# folded_arg0.531,
	call	lookup	#
	movq	%rax, -360(%rbp)	# tmp972, elt
	.loc 1 3468 0 is_stmt 1 discriminator 2
	cmpq	$0, -360(%rbp)	#, elt
	je	.L1016	#,
	.loc 1 3469 0
	movq	-360(%rbp), %rax	# elt, tmp973
	movq	48(%rax), %rax	# elt_269->first_same_value, tmp974
	movq	%rax, -360(%rbp)	# tmp974, elt
	.loc 1 3471 0
	jmp	.L1017	#
.L1016:
	jmp	.L1017	#
.L1039:
.LBB62:
	.loc 1 3473 0
	movq	-360(%rbp), %rax	# elt, tmp975
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzwl	(%rax), %eax	# _271->code, D.22425
	movzwl	%ax, %eax	# D.22425, tmp976
	movl	%eax, -464(%rbp)	# tmp976, eltcode
	.loc 1 3476 0
	movq	-360(%rbp), %rax	# elt, tmp977
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzwl	(%rax), %eax	# _274->code, D.22425
	movzwl	%ax, %eax	# D.22425, D.22427
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22430
	cmpb	$49, %al	#, D.22430
	jne	.L1018	#,
	.loc 1 3477 0
	movq	-360(%rbp), %rax	# elt, tmp979
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzwl	(%rax), %eax	# _278->code, D.22425
	cmpw	$120, %ax	#, D.22425
	je	.L1018	#,
	.loc 1 3478 0
	movq	-360(%rbp), %rax	# elt, tmp980
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzwl	(%rax), %eax	# _280->code, D.22425
	cmpw	$121, %ax	#, D.22425
	je	.L1018	#,
	.loc 1 3479 0
	movq	-360(%rbp), %rax	# elt, tmp981
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _282->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _283->code, D.22425
	cmpw	$63, %ax	#, D.22425
	jne	.L1018	#,
	.loc 1 3480 0
	movq	-360(%rbp), %rax	# elt, tmp982
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _285->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _286->fld[0].rtx, D.22426
	movzbl	2(%rax), %eax	# _287->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22428
	cmpl	-472(%rbp), %eax	# mode, D.22428
	jne	.L1018	#,
	.loc 1 3481 0
	movl	-472(%rbp), %eax	# mode, mode.532
	cltq
	movl	mode_class(,%rax,4), %edx	# mode_class, D.22431
	.loc 1 3482 0
	movq	-360(%rbp), %rax	# elt, tmp984
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _292->fld[0].rtx, D.22426
	movzbl	2(%rax), %eax	# _293->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22427
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22431
	.loc 1 3481 0
	cmpl	%eax, %edx	# D.22431, D.22431
	jne	.L1018	#,
.LBB63:
	.loc 1 3484 0
	movq	-360(%rbp), %rax	# elt, tmp986
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _297->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _298->fld[0].rtx, tmp987
	movq	%rax, -352(%rbp)	# tmp987, op0
	.loc 1 3486 0
	movq	-352(%rbp), %rax	# op0, tmp988
	movzwl	(%rax), %eax	# op0_299->code, D.22425
	cmpw	$61, %ax	#, D.22425
	je	.L1019	#,
	.loc 1 3486 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# op0, tmp989
	movzwl	(%rax), %eax	# op0_299->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1019	#,
	movq	-352(%rbp), %rax	# op0, tmp990
	movzwl	(%rax), %eax	# op0_299->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1019	#,
	movq	-352(%rbp), %rax	# op0, tmp991
	movzwl	(%rax), %eax	# op0_299->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1019	#,
	movq	-352(%rbp), %rax	# op0, tmp992
	movzwl	(%rax), %eax	# op0_299->code, D.22425
	cmpw	$55, %ax	#, D.22425
	je	.L1019	#,
	movq	-352(%rbp), %rax	# op0, tmp993
	movzwl	(%rax), %eax	# op0_299->code, D.22425
	cmpw	$58, %ax	#, D.22425
	je	.L1019	#,
	movq	-352(%rbp), %rax	# op0, tmp994
	movzwl	(%rax), %eax	# op0_299->code, D.22425
	cmpw	$134, %ax	#, D.22425
	je	.L1019	#,
	movq	-352(%rbp), %rax	# op0, tmp995
	movzwl	(%rax), %eax	# op0_299->code, D.22425
	cmpw	$56, %ax	#, D.22425
	je	.L1019	#,
	movq	-352(%rbp), %rax	# op0, tmp996
	movzwl	(%rax), %eax	# op0_299->code, D.22425
	cmpw	$140, %ax	#, D.22425
	je	.L1019	#,
	.loc 1 3487 0 is_stmt 1
	movq	-352(%rbp), %rax	# op0, tmp997
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp997,
	call	fold_rtx	#
	movq	%rax, -352(%rbp)	# tmp998, op0
.L1019:
	.loc 1 3489 0
	movq	-352(%rbp), %rax	# op0, tmp999
	movq	%rax, %rdi	# tmp999,
	call	equiv_constant	#
	movq	%rax, -352(%rbp)	# tmp1000, op0
	.loc 1 3490 0
	cmpq	$0, -352(%rbp)	#, op0
	je	.L1020	#,
	.loc 1 3491 0
	movq	-360(%rbp), %rax	# elt, tmp1001
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzwl	(%rax), %eax	# _311->code, D.22425
	movzwl	%ax, %eax	# D.22425, D.22432
	movl	-472(%rbp), %ecx	# mode, tmp1002
	movq	-352(%rbp), %rdx	# op0, tmp1003
	movl	-472(%rbp), %esi	# mode, tmp1004
	movl	%eax, %edi	# D.22432,
	call	simplify_unary_operation	#
	movq	%rax, -400(%rbp)	# tmp1005, new
.LBE63:
	.loc 1 3483 0
	jmp	.L1021	#
.L1020:
	jmp	.L1021	#
.L1018:
	.loc 1 3494 0
	movq	-360(%rbp), %rax	# elt, tmp1006
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzwl	(%rax), %eax	# _315->code, D.22425
	movzwl	%ax, %eax	# D.22425, D.22427
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22430
	cmpb	$50, %al	#, D.22430
	je	.L1022	#,
	.loc 1 3495 0
	movq	-360(%rbp), %rax	# elt, tmp1008
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzwl	(%rax), %eax	# _319->code, D.22425
	movzwl	%ax, %eax	# D.22425, D.22427
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22430
	cmpb	$99, %al	#, D.22430
	jne	.L1023	#,
.L1022:
	.loc 1 3496 0
	cmpl	$79, -464(%rbp)	#, eltcode
	je	.L1023	#,
	.loc 1 3496 0 is_stmt 0 discriminator 1
	cmpl	$80, -464(%rbp)	#, eltcode
	je	.L1023	#,
	.loc 1 3497 0 is_stmt 1
	cmpl	$81, -464(%rbp)	#, eltcode
	je	.L1023	#,
	.loc 1 3497 0 is_stmt 0 discriminator 1
	cmpl	$82, -464(%rbp)	#, eltcode
	je	.L1023	#,
	.loc 1 3498 0 is_stmt 1
	cmpl	$89, -464(%rbp)	#, eltcode
	je	.L1023	#,
	.loc 1 3498 0 is_stmt 0 discriminator 1
	cmpl	$90, -464(%rbp)	#, eltcode
	je	.L1023	#,
	.loc 1 3499 0 is_stmt 1
	cmpl	$88, -464(%rbp)	#, eltcode
	je	.L1023	#,
	.loc 1 3499 0 is_stmt 0 discriminator 1
	cmpl	$91, -464(%rbp)	#, eltcode
	je	.L1023	#,
	.loc 1 3500 0 is_stmt 1
	movq	-360(%rbp), %rax	# elt, tmp1010
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _323->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _324->code, D.22425
	cmpw	$63, %ax	#, D.22425
	jne	.L1024	#,
	.loc 1 3501 0
	movq	-360(%rbp), %rax	# elt, tmp1011
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _326->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _327->fld[0].rtx, D.22426
	movzbl	2(%rax), %eax	# _328->mode, D.22424
	.loc 1 3502 0
	movzbl	%al, %eax	# D.22424, D.22428
	.loc 1 3501 0
	cmpl	-472(%rbp), %eax	# mode, D.22428
	je	.L1025	#,
.L1024:
	.loc 1 3503 0
	movq	-360(%rbp), %rax	# elt, tmp1012
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _331->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _332->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1025	#,
	.loc 1 3503 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# elt, tmp1013
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _334->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _335->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1025	#,
	movq	-360(%rbp), %rax	# elt, tmp1014
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _337->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _338->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1025	#,
	movq	-360(%rbp), %rax	# elt, tmp1015
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _340->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _341->code, D.22425
	cmpw	$55, %ax	#, D.22425
	je	.L1025	#,
	movq	-360(%rbp), %rax	# elt, tmp1016
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _343->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _344->code, D.22425
	cmpw	$58, %ax	#, D.22425
	je	.L1025	#,
	movq	-360(%rbp), %rax	# elt, tmp1017
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _346->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _347->code, D.22425
	cmpw	$134, %ax	#, D.22425
	je	.L1025	#,
	movq	-360(%rbp), %rax	# elt, tmp1018
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _349->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _350->code, D.22425
	cmpw	$56, %ax	#, D.22425
	je	.L1025	#,
	movq	-360(%rbp), %rax	# elt, tmp1019
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _352->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _353->code, D.22425
	cmpw	$140, %ax	#, D.22425
	jne	.L1023	#,
.L1025:
	.loc 1 3504 0 is_stmt 1
	movq	-360(%rbp), %rax	# elt, tmp1020
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rax	# _355->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _356->code, D.22425
	cmpw	$63, %ax	#, D.22425
	jne	.L1026	#,
	.loc 1 3505 0
	movq	-360(%rbp), %rax	# elt, tmp1021
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rax	# _358->fld[1].rtx, D.22426
	movq	8(%rax), %rax	# _359->fld[0].rtx, D.22426
	movzbl	2(%rax), %eax	# _360->mode, D.22424
	.loc 1 3506 0
	movzbl	%al, %eax	# D.22424, D.22428
	.loc 1 3505 0
	cmpl	-472(%rbp), %eax	# mode, D.22428
	je	.L1027	#,
.L1026:
	.loc 1 3507 0
	movq	-360(%rbp), %rax	# elt, tmp1022
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rax	# _363->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _364->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1027	#,
	.loc 1 3507 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# elt, tmp1023
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rax	# _366->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _367->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1027	#,
	movq	-360(%rbp), %rax	# elt, tmp1024
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rax	# _369->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _370->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1027	#,
	movq	-360(%rbp), %rax	# elt, tmp1025
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rax	# _372->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _373->code, D.22425
	cmpw	$55, %ax	#, D.22425
	je	.L1027	#,
	movq	-360(%rbp), %rax	# elt, tmp1026
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rax	# _375->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _376->code, D.22425
	cmpw	$58, %ax	#, D.22425
	je	.L1027	#,
	movq	-360(%rbp), %rax	# elt, tmp1027
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rax	# _378->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _379->code, D.22425
	cmpw	$134, %ax	#, D.22425
	je	.L1027	#,
	movq	-360(%rbp), %rax	# elt, tmp1028
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rax	# _381->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _382->code, D.22425
	cmpw	$56, %ax	#, D.22425
	je	.L1027	#,
	movq	-360(%rbp), %rax	# elt, tmp1029
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rax	# _384->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _385->code, D.22425
	cmpw	$140, %ax	#, D.22425
	jne	.L1023	#,
.L1027:
.LBB64:
	.loc 1 3509 0 is_stmt 1
	movq	-360(%rbp), %rax	# elt, tmp1030
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rdx	# _387->fld[0].rtx, D.22426
	movl	-472(%rbp), %eax	# mode, tmp1031
	movq	%rdx, %rsi	# D.22426,
	movl	%eax, %edi	# tmp1031,
	call	gen_lowpart_common	#
	movq	%rax, -344(%rbp)	# tmp1032, op0
	.loc 1 3510 0
	movq	-360(%rbp), %rax	# elt, tmp1033
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	16(%rax), %rdx	# _390->fld[1].rtx, D.22426
	movl	-472(%rbp), %eax	# mode, tmp1034
	movq	%rdx, %rsi	# D.22426,
	movl	%eax, %edi	# tmp1034,
	call	gen_lowpart_common	#
	movq	%rax, -336(%rbp)	# tmp1035, op1
	.loc 1 3512 0
	cmpq	$0, -344(%rbp)	#, op0
	je	.L1028	#,
	.loc 1 3512 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# op0, tmp1036
	movzwl	(%rax), %eax	# op0_389->code, D.22425
	cmpw	$61, %ax	#, D.22425
	je	.L1028	#,
	movq	-344(%rbp), %rax	# op0, tmp1037
	movzwl	(%rax), %eax	# op0_389->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1028	#,
	movq	-344(%rbp), %rax	# op0, tmp1038
	movzwl	(%rax), %eax	# op0_389->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1028	#,
	movq	-344(%rbp), %rax	# op0, tmp1039
	movzwl	(%rax), %eax	# op0_389->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1028	#,
	movq	-344(%rbp), %rax	# op0, tmp1040
	movzwl	(%rax), %eax	# op0_389->code, D.22425
	cmpw	$55, %ax	#, D.22425
	je	.L1028	#,
	movq	-344(%rbp), %rax	# op0, tmp1041
	movzwl	(%rax), %eax	# op0_389->code, D.22425
	cmpw	$58, %ax	#, D.22425
	je	.L1028	#,
	movq	-344(%rbp), %rax	# op0, tmp1042
	movzwl	(%rax), %eax	# op0_389->code, D.22425
	cmpw	$134, %ax	#, D.22425
	je	.L1028	#,
	movq	-344(%rbp), %rax	# op0, tmp1043
	movzwl	(%rax), %eax	# op0_389->code, D.22425
	cmpw	$56, %ax	#, D.22425
	je	.L1028	#,
	movq	-344(%rbp), %rax	# op0, tmp1044
	movzwl	(%rax), %eax	# op0_389->code, D.22425
	cmpw	$140, %ax	#, D.22425
	je	.L1028	#,
	.loc 1 3513 0 is_stmt 1
	movq	-344(%rbp), %rax	# op0, tmp1045
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1045,
	call	fold_rtx	#
	movq	%rax, -344(%rbp)	# tmp1046, op0
.L1028:
	.loc 1 3515 0
	cmpq	$0, -344(%rbp)	#, op0
	je	.L1029	#,
	.loc 1 3516 0
	movq	-344(%rbp), %rax	# op0, tmp1047
	movq	%rax, %rdi	# tmp1047,
	call	equiv_constant	#
	movq	%rax, -344(%rbp)	# tmp1048, op0
.L1029:
	.loc 1 3518 0
	cmpq	$0, -336(%rbp)	#, op1
	je	.L1030	#,
	.loc 1 3518 0 is_stmt 0 discriminator 1
	movq	-336(%rbp), %rax	# op1, tmp1049
	movzwl	(%rax), %eax	# op1_392->code, D.22425
	cmpw	$61, %ax	#, D.22425
	je	.L1030	#,
	movq	-336(%rbp), %rax	# op1, tmp1050
	movzwl	(%rax), %eax	# op1_392->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1030	#,
	movq	-336(%rbp), %rax	# op1, tmp1051
	movzwl	(%rax), %eax	# op1_392->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1030	#,
	movq	-336(%rbp), %rax	# op1, tmp1052
	movzwl	(%rax), %eax	# op1_392->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1030	#,
	movq	-336(%rbp), %rax	# op1, tmp1053
	movzwl	(%rax), %eax	# op1_392->code, D.22425
	cmpw	$55, %ax	#, D.22425
	je	.L1030	#,
	movq	-336(%rbp), %rax	# op1, tmp1054
	movzwl	(%rax), %eax	# op1_392->code, D.22425
	cmpw	$58, %ax	#, D.22425
	je	.L1030	#,
	movq	-336(%rbp), %rax	# op1, tmp1055
	movzwl	(%rax), %eax	# op1_392->code, D.22425
	cmpw	$134, %ax	#, D.22425
	je	.L1030	#,
	movq	-336(%rbp), %rax	# op1, tmp1056
	movzwl	(%rax), %eax	# op1_392->code, D.22425
	cmpw	$56, %ax	#, D.22425
	je	.L1030	#,
	movq	-336(%rbp), %rax	# op1, tmp1057
	movzwl	(%rax), %eax	# op1_392->code, D.22425
	cmpw	$140, %ax	#, D.22425
	je	.L1030	#,
	.loc 1 3519 0 is_stmt 1
	movq	-336(%rbp), %rax	# op1, tmp1058
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1058,
	call	fold_rtx	#
	movq	%rax, -336(%rbp)	# tmp1059, op1
.L1030:
	.loc 1 3521 0
	cmpq	$0, -336(%rbp)	#, op1
	je	.L1031	#,
	.loc 1 3522 0
	movq	-336(%rbp), %rax	# op1, tmp1060
	movq	%rax, %rdi	# tmp1060,
	call	equiv_constant	#
	movq	%rax, -336(%rbp)	# tmp1061, op1
.L1031:
	.loc 1 3528 0
	cmpq	$0, -344(%rbp)	#, op0
	je	.L1032	#,
	.loc 1 3528 0 is_stmt 0 discriminator 1
	cmpq	$0, -336(%rbp)	#, op1
	je	.L1032	#,
	.loc 1 3529 0 is_stmt 1
	movq	-360(%rbp), %rax	# elt, tmp1062
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzwl	(%rax), %eax	# _415->code, D.22425
	cmpw	$87, %ax	#, D.22425
	jne	.L1032	#,
	.loc 1 3530 0
	movq	-336(%rbp), %rax	# op1, tmp1063
	movzwl	(%rax), %eax	# op1_47->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1032	#,
	.loc 1 3531 0
	movq	-336(%rbp), %rax	# op1, tmp1064
	movq	8(%rax), %rdx	# op1_47->fld[0].rtwint, D.22433
	movl	-472(%rbp), %eax	# mode, mode.533
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22425
	movzwl	%ax, %eax	# D.22425, D.22433
	cmpq	%rax, %rdx	# D.22433, D.22433
	jl	.L1032	#,
	.loc 1 3533 0
	movq	-336(%rbp), %rax	# op1, tmp1066
	movq	8(%rax), %rdx	# op1_47->fld[0].rtwint, D.22433
	movq	-360(%rbp), %rax	# elt, tmp1067
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzbl	2(%rax), %eax	# _423->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22427
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22425
	movzwl	%ax, %eax	# D.22425, D.22433
	cmpq	%rax, %rdx	# D.22433, D.22433
	jge	.L1033	#,
	.loc 1 3539 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp1069
	movq	%rax, -400(%rbp)	# tmp1069, new
	.loc 1 3533 0
	jmp	.L1035	#
.L1033:
	.loc 1 3543 0
	movq	$0, -400(%rbp)	#, new
	.loc 1 3533 0
	jmp	.L1035	#
.L1032:
	.loc 1 3545 0
	cmpq	$0, -344(%rbp)	#, op0
	je	.L1035	#,
	.loc 1 3545 0 is_stmt 0 discriminator 1
	cmpq	$0, -336(%rbp)	#, op1
	je	.L1035	#,
	.loc 1 3546 0 is_stmt 1
	movq	-360(%rbp), %rax	# elt, tmp1070
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzwl	(%rax), %eax	# _430->code, D.22425
	movzwl	%ax, %eax	# D.22425, D.22432
	movq	-336(%rbp), %rcx	# op1, tmp1071
	movq	-344(%rbp), %rdx	# op0, tmp1072
	movl	-472(%rbp), %esi	# mode, tmp1073
	movl	%eax, %edi	# D.22432,
	call	simplify_binary_operation	#
	movq	%rax, -400(%rbp)	# tmp1074, new
.LBE64:
	.loc 1 3508 0
	jmp	.L1021	#
.L1035:
	jmp	.L1021	#
.L1023:
	.loc 1 3550 0
	movq	-360(%rbp), %rax	# elt, tmp1075
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movzwl	(%rax), %eax	# _434->code, D.22425
	cmpw	$63, %ax	#, D.22425
	jne	.L1021	#,
	.loc 1 3551 0
	movq	-360(%rbp), %rax	# elt, tmp1076
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _436->fld[0].rtx, D.22426
	movzbl	2(%rax), %eax	# _437->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22428
	cmpl	-472(%rbp), %eax	# mode, D.22428
	jne	.L1021	#,
	.loc 1 3552 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.534
	movzbl	2(%rax), %eax	# folded_arg0.534_440->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22427
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22424
	.loc 1 3553 0
	movzbl	%al, %edx	# D.22424, D.22427
	movl	target_flags(%rip), %eax	# target_flags, target_flags.536
	andl	$33554432, %eax	#, D.22427
	testl	%eax, %eax	# D.22427
	je	.L1036	#,
	.loc 1 3553 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.535
	jmp	.L1037	#
.L1036:
	.loc 1 3553 0 discriminator 2
	movl	$4, %eax	#, iftmp.535
.L1037:
	.loc 1 3552 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.535, D.22427
	jg	.L1021	#,
	.loc 1 3554 0
	movq	-360(%rbp), %rax	# elt, tmp1078
	movq	(%rax), %rsi	# elt_42->exp, D.22426
	movq	-360(%rbp), %rax	# elt, tmp1079
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22426,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22427
	je	.L1021	#,
	.loc 1 3555 0
	movq	-360(%rbp), %rax	# elt, tmp1080
	movq	(%rax), %rax	# elt_42->exp, D.22426
	movq	8(%rax), %rax	# _452->fld[0].rtx, D.22426
	movq	%rax, %rdi	# D.22426,
	call	copy_rtx	#
	movq	%rax, -400(%rbp)	# tmp1081, new
.L1021:
	.loc 1 3557 0
	cmpq	$0, -400(%rbp)	#, new
	je	.L1038	#,
	.loc 1 3558 0
	movq	-400(%rbp), %rax	# new, D.22423
	jmp	.L1257	#
.L1038:
.LBE62:
	.loc 1 3471 0
	movq	-360(%rbp), %rax	# elt, tmp1082
	movq	32(%rax), %rax	# elt_42->next_same_value, tmp1083
	movq	%rax, -360(%rbp)	# tmp1083, elt
.L1017:
	.loc 1 3471 0 is_stmt 0 discriminator 1
	cmpq	$0, -360(%rbp)	#, elt
	jne	.L1039	#,
.L1010:
.LBE61:
	.loc 1 3562 0 is_stmt 1
	movq	-520(%rbp), %rax	# x, D.22423
	jmp	.L1257	#
.L984:
	.loc 1 3568 0
	movq	-520(%rbp), %rax	# x, tmp1084
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movl	-496(%rbp), %edx	# code, tmp1085
	movl	%edx, %esi	# tmp1085,
	movq	%rax, %rdi	# D.22426,
	call	lookup_as_function	#
	movq	%rax, -400(%rbp)	# tmp1086, new
	.loc 1 3569 0
	cmpq	$0, -400(%rbp)	#, new
	je	.L1040	#,
	.loc 1 3570 0
	movq	-400(%rbp), %rax	# new, tmp1087
	movq	8(%rax), %rax	# new_460->fld[0].rtx, D.22426
	movq	%rax, %rdi	# D.22426,
	call	copy_rtx	#
	movq	-528(%rbp), %rdx	# insn, tmp1088
	movq	%rdx, %rsi	# tmp1088,
	movq	%rax, %rdi	# D.22426,
	call	fold_rtx	#
	jmp	.L1257	#
.L1040:
	.loc 1 3571 0
	jmp	.L989	#
.L983:
	.loc 1 3577 0
	cmpq	$0, -528(%rbp)	#, insn
	je	.L1041	#,
	.loc 1 3578 0
	movq	-520(%rbp), %rax	# x, tmp1089
	movzbl	2(%rax), %eax	# x_118(D)->mode, D.22424
	movzbl	%al, %edx	# D.22424, D.22429
	movq	-520(%rbp), %rax	# x, tmp1090
	leaq	8(%rax), %rcx	#, D.22434
	movq	-528(%rbp), %rax	# insn, tmp1091
	movq	%rcx, %rsi	# D.22434,
	movq	%rax, %rdi	# tmp1091,
	call	find_best_addr	#
.L1041:
.LBB65:
	.loc 1 3583 0
	movq	-520(%rbp), %rax	# x, tmp1092
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22426,
	call	fold_rtx	#
	movq	%rax, -328(%rbp)	# tmp1093, addr
	.loc 1 3584 0
	movq	$0, -320(%rbp)	#, base
	.loc 1 3585 0
	movq	$0, -312(%rbp)	#, offset
	.loc 1 3587 0
	movq	-328(%rbp), %rax	# addr, tmp1094
	movzwl	(%rax), %eax	# addr_468->code, D.22425
	cmpw	$61, %ax	#, D.22425
	jne	.L1042	#,
	.loc 1 3588 0
	movq	-328(%rbp), %rax	# addr, tmp1095
	movl	8(%rax), %edx	# addr_468->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.538
	cmpl	%eax, %edx	# cached_regno.538, D.22428
	jne	.L1043	#,
	.loc 1 3588 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.539
	testq	%rax, %rax	# cached_cse_reg_info.539
	jne	.L1044	#,
.L1043:
	.loc 1 3588 0 discriminator 1
	movq	-328(%rbp), %rax	# addr, tmp1096
	movl	8(%rax), %eax	# addr_468->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1045	#
.L1044:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.537
.L1045:
	.loc 1 3588 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.537_71->reg_qty, D.22427
	movq	-328(%rbp), %rax	# addr, tmp1097
	movl	8(%rax), %eax	# addr_468->fld[0].rtuint, D.22428
	cmpl	%eax, %edx	# D.22427, D.22427
	je	.L1042	#,
.LBB66:
	.loc 1 3590 0 is_stmt 1
	movq	-328(%rbp), %rax	# addr, tmp1098
	movl	8(%rax), %edx	# addr_468->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.541
	cmpl	%eax, %edx	# cached_regno.541, D.22428
	jne	.L1046	#,
	.loc 1 3590 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.542
	testq	%rax, %rax	# cached_cse_reg_info.542
	jne	.L1047	#,
.L1046:
	.loc 1 3590 0 discriminator 1
	movq	-328(%rbp), %rax	# addr, tmp1099
	movl	8(%rax), %eax	# addr_468->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1048	#
.L1047:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.540
.L1048:
	.loc 1 3590 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.540_72->reg_qty, tmp1100
	movl	%eax, -460(%rbp)	# tmp1100, addr_q
	.loc 1 3591 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.543
	movl	-460(%rbp), %eax	# addr_q, tmp1101
	movslq	%eax, %rdx	# tmp1101, D.22435
	movq	%rdx, %rax	# D.22435, tmp1102
	addq	%rax, %rax	# tmp1102
	addq	%rdx, %rax	# D.22435, tmp1102
	salq	$4, %rax	#, tmp1103
	addq	%rcx, %rax	# qty_table.543, tmp1104
	movq	%rax, -240(%rbp)	# tmp1104, addr_ent
	.loc 1 3593 0 discriminator 3
	movq	-328(%rbp), %rax	# addr, tmp1105
	movzbl	2(%rax), %eax	# addr_468->mode, D.22424
	movzbl	%al, %edx	# D.22424, D.22428
	movq	-240(%rbp), %rax	# addr_ent, tmp1106
	movl	36(%rax), %eax	# addr_ent_491->mode, D.22429
	cmpl	%eax, %edx	# D.22429, D.22428
	jne	.L1042	#,
	.loc 1 3594 0
	movq	-240(%rbp), %rax	# addr_ent, tmp1107
	movq	(%rax), %rax	# addr_ent_491->const_rtx, D.22426
	testq	%rax, %rax	# D.22426
	je	.L1042	#,
	.loc 1 3595 0
	movq	-240(%rbp), %rax	# addr_ent, tmp1108
	movq	(%rax), %rax	# addr_ent_491->const_rtx, tmp1109
	movq	%rax, -328(%rbp)	# tmp1109, addr
.L1042:
.LBE66:
	.loc 1 3599 0
	movq	-328(%rbp), %rax	# addr, tmp1110
	movzwl	(%rax), %eax	# addr_48->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1049	#,
	.loc 1 3599 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# addr, tmp1111
	movzwl	(%rax), %eax	# addr_48->code, D.22425
	cmpw	$67, %ax	#, D.22425
	jne	.L1050	#,
.L1049:
	.loc 1 3600 0 is_stmt 1
	movq	-328(%rbp), %rax	# addr, tmp1112
	movq	%rax, -320(%rbp)	# tmp1112, base
	jmp	.L1051	#
.L1050:
	.loc 1 3601 0
	movq	-328(%rbp), %rax	# addr, tmp1113
	movzwl	(%rax), %eax	# addr_48->code, D.22425
	cmpw	$58, %ax	#, D.22425
	jne	.L1052	#,
	.loc 1 3601 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# addr, tmp1114
	movq	8(%rax), %rax	# addr_48->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _500->code, D.22425
	cmpw	$75, %ax	#, D.22425
	jne	.L1052	#,
	.loc 1 3602 0 is_stmt 1
	movq	-328(%rbp), %rax	# addr, tmp1115
	movq	8(%rax), %rax	# addr_48->fld[0].rtx, D.22426
	movq	16(%rax), %rax	# _502->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _503->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1052	#,
	.loc 1 3604 0
	movq	-328(%rbp), %rax	# addr, tmp1116
	movq	8(%rax), %rax	# addr_48->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _505->fld[0].rtx, tmp1117
	movq	%rax, -320(%rbp)	# tmp1117, base
	.loc 1 3605 0
	movq	-328(%rbp), %rax	# addr, tmp1118
	movq	8(%rax), %rax	# addr_48->fld[0].rtx, D.22426
	movq	16(%rax), %rax	# _507->fld[1].rtx, D.22426
	movq	8(%rax), %rax	# _508->fld[0].rtwint, tmp1119
	movq	%rax, -312(%rbp)	# tmp1119, offset
	jmp	.L1051	#
.L1052:
	.loc 1 3607 0
	movq	-328(%rbp), %rax	# addr, tmp1120
	movzwl	(%rax), %eax	# addr_48->code, D.22425
	cmpw	$135, %ax	#, D.22425
	jne	.L1053	#,
	.loc 1 3608 0
	movq	-328(%rbp), %rax	# addr, tmp1121
	movq	16(%rax), %rax	# addr_48->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _511->code, D.22425
	cmpw	$68, %ax	#, D.22425
	jne	.L1053	#,
	.loc 1 3609 0
	movq	-328(%rbp), %rax	# addr, tmp1122
	movq	16(%rax), %rax	# addr_48->fld[1].rtx, tmp1123
	movq	%rax, -320(%rbp)	# tmp1123, base
	jmp	.L1051	#
.L1053:
	.loc 1 3610 0
	movq	-328(%rbp), %rax	# addr, tmp1124
	movzwl	(%rax), %eax	# addr_48->code, D.22425
	cmpw	$70, %ax	#, D.22425
	jne	.L1051	#,
	.loc 1 3611 0
	movq	-328(%rbp), %rdx	# addr, tmp1125
	movq	-520(%rbp), %rax	# x, tmp1126
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1126,
	call	change_address	#
	jmp	.L1257	#
.L1051:
	.loc 1 3615 0
	cmpq	$0, -320(%rbp)	#, base
	je	.L1054	#,
	.loc 1 3615 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rax	# base, tmp1127
	movzwl	(%rax), %eax	# base_49->code, D.22425
	cmpw	$68, %ax	#, D.22425
	jne	.L1054	#,
	.loc 1 3616 0 is_stmt 1
	movq	-320(%rbp), %rax	# base, tmp1128
	movzbl	3(%rax), %eax	# *base_49, D.22424
	andl	$4, %eax	#, D.22424
	testb	%al, %al	# D.22424
	je	.L1054	#,
.LBB67:
	.loc 1 3618 0
	movq	-320(%rbp), %rax	# base, tmp1129
	movq	%rax, %rdi	# tmp1129,
	call	get_pool_constant	#
	movq	%rax, -232(%rbp)	# tmp1130, constant
	.loc 1 3619 0
	movq	-320(%rbp), %rax	# base, tmp1131
	movq	%rax, %rdi	# tmp1131,
	call	get_pool_mode	#
	movl	%eax, -456(%rbp)	# tmp1132, const_mode
	.loc 1 3622 0
	movq	-232(%rbp), %rax	# constant, tmp1133
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1055	#,
	.loc 1 3622 0 is_stmt 0 discriminator 2
	movq	-232(%rbp), %rax	# constant, tmp1134
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1055	#,
	.loc 1 3622 0 discriminator 1
	movq	-232(%rbp), %rax	# constant, tmp1135
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1055	#,
	movq	-232(%rbp), %rax	# constant, tmp1136
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$55, %ax	#, D.22425
	je	.L1055	#,
	movq	-232(%rbp), %rax	# constant, tmp1137
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$58, %ax	#, D.22425
	je	.L1055	#,
	movq	-232(%rbp), %rax	# constant, tmp1138
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$134, %ax	#, D.22425
	je	.L1055	#,
	movq	-232(%rbp), %rax	# constant, tmp1139
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$56, %ax	#, D.22425
	je	.L1055	#,
	movq	-232(%rbp), %rax	# constant, tmp1140
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$140, %ax	#, D.22425
	jne	.L1056	#,
.L1055:
	movq	-232(%rbp), %rax	# constant, tmp1141
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1056	#,
	.loc 1 3623 0 is_stmt 1
	movq	-232(%rbp), %rax	# constant, tmp1142
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$61, %ax	#, D.22425
	je	.L1057	#,
	.loc 1 3623 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# constant, tmp1143
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp1143,
	call	notreg_cost	#
	jmp	.L1058	#
.L1057:
	.loc 1 3623 0 discriminator 2
	movl	$0, %eax	#, iftmp.544
.L1058:
	.loc 1 3623 0 discriminator 3
	movl	%eax, constant_pool_entries_cost(%rip)	# iftmp.544, constant_pool_entries_cost
.L1056:
	.loc 1 3626 0 is_stmt 1
	cmpq	$0, -312(%rbp)	#, offset
	jne	.L1059	#,
	.loc 1 3626 0 is_stmt 0 discriminator 1
	movl	-472(%rbp), %eax	# mode, tmp1144
	cmpl	-456(%rbp), %eax	# const_mode, tmp1144
	jne	.L1059	#,
	.loc 1 3627 0 is_stmt 1
	movq	-232(%rbp), %rax	# constant, D.22423
	jmp	.L1257	#
.L1059:
	.loc 1 3634 0
	movq	-232(%rbp), %rax	# constant, tmp1145
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1060	#,
	.loc 1 3634 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# constant, tmp1146
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1060	#,
	movq	-232(%rbp), %rax	# constant, tmp1147
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1060	#,
	movq	-232(%rbp), %rax	# constant, tmp1148
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$55, %ax	#, D.22425
	je	.L1060	#,
	movq	-232(%rbp), %rax	# constant, tmp1149
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$58, %ax	#, D.22425
	je	.L1060	#,
	movq	-232(%rbp), %rax	# constant, tmp1150
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$134, %ax	#, D.22425
	je	.L1060	#,
	movq	-232(%rbp), %rax	# constant, tmp1151
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$56, %ax	#, D.22425
	je	.L1060	#,
	movq	-232(%rbp), %rax	# constant, tmp1152
	movzwl	(%rax), %eax	# constant_520->code, D.22425
	cmpw	$140, %ax	#, D.22425
	je	.L1060	#,
	.loc 1 3635 0 is_stmt 1
	movq	-520(%rbp), %rax	# x, D.22423
	jmp	.L1257	#
.L1060:
	.loc 1 3637 0
	movl	-472(%rbp), %eax	# mode, mode.545
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22431
	cmpl	$1, %eax	#, D.22431
	jne	.L1061	#,
	.loc 1 3638 0
	movl	-472(%rbp), %eax	# mode, mode.546
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22424
	movzbl	%al, %edx	# D.22424, D.22427
	movl	target_flags(%rip), %eax	# target_flags, target_flags.548
	andl	$33554432, %eax	#, D.22427
	testl	%eax, %eax	# D.22427
	je	.L1062	#,
	.loc 1 3638 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.547
	jmp	.L1063	#
.L1062:
	.loc 1 3638 0 discriminator 2
	movl	$4, %eax	#, iftmp.547
.L1063:
	.loc 1 3638 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.547, D.22427
	jne	.L1061	#,
	.loc 1 3639 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.550
	andl	$33554432, %eax	#, D.22427
	testl	%eax, %eax	# D.22427
	je	.L1064	#,
	.loc 1 3639 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.549
	jmp	.L1065	#
.L1064:
	.loc 1 3639 0 discriminator 2
	movl	$4, %ebx	#, iftmp.549
.L1065:
	.loc 1 3639 0 discriminator 3
	movq	-312(%rbp), %rax	# offset, tmp1155
	cqto
	idivq	%rbx	# iftmp.549
	movq	%rdx, %rcx	# tmp1156, tmp1156
	movq	%rcx, %rax	# tmp1156, D.22433
	testq	%rax, %rax	# D.22433
	jne	.L1061	#,
	.loc 1 3641 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.552
	andl	$33554432, %eax	#, D.22427
	testl	%eax, %eax	# D.22427
	je	.L1066	#,
	.loc 1 3641 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.551
	jmp	.L1067	#
.L1066:
	.loc 1 3641 0 discriminator 2
	movl	$4, %ebx	#, iftmp.551
.L1067:
	.loc 1 3641 0 discriminator 3
	movq	-312(%rbp), %rax	# offset, tmp1160
	cqto
	idivq	%rbx	# iftmp.551
	.loc 1 3640 0 is_stmt 1 discriminator 3
	movl	%eax, %esi	# D.22433, D.22428
	movl	-456(%rbp), %edx	# const_mode, tmp1161
	movq	-232(%rbp), %rax	# constant, tmp1162
	movl	%edx, %ecx	# tmp1161,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp1162,
	call	operand_subword	#
	movq	%rax, -224(%rbp)	# tmp1163, new
	cmpq	$0, -224(%rbp)	#, new
	je	.L1061	#,
	.loc 1 3643 0
	movq	-224(%rbp), %rax	# new, D.22423
	jmp	.L1257	#
.L1061:
	.loc 1 3645 0
	cmpq	$0, -312(%rbp)	#, offset
	jne	.L1054	#,
	.loc 1 3648 0
	movq	-232(%rbp), %rdx	# constant, tmp1164
	movl	-472(%rbp), %eax	# mode, tmp1165
	movq	%rdx, %rsi	# tmp1164,
	movl	%eax, %edi	# tmp1165,
	call	gen_lowpart_if_possible	#
	movq	%rax, -224(%rbp)	# tmp1166, new
	cmpq	$0, -224(%rbp)	#, new
	je	.L1054	#,
	.loc 1 3649 0
	movq	-224(%rbp), %rax	# new, D.22423
	jmp	.L1257	#
.L1054:
.LBE67:
	.loc 1 3654 0
	cmpq	$0, -320(%rbp)	#, base
	je	.L1068	#,
	.loc 1 3654 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rax	# base, tmp1167
	movzwl	(%rax), %eax	# base_49->code, D.22425
	cmpw	$67, %ax	#, D.22425
	jne	.L1068	#,
.LBB68:
	.loc 1 3656 0 is_stmt 1
	movq	-320(%rbp), %rax	# base, tmp1168
	movq	8(%rax), %rax	# base_49->fld[0].rtx, tmp1169
	movq	%rax, -216(%rbp)	# tmp1169, label
	.loc 1 3657 0
	movq	-216(%rbp), %rax	# label, tmp1170
	movq	24(%rax), %rax	# label_569->fld[2].rtx, tmp1171
	movq	%rax, -208(%rbp)	# tmp1171, table_insn
	.loc 1 3659 0
	cmpq	$0, -208(%rbp)	#, table_insn
	je	.L1069	#,
	.loc 1 3659 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# table_insn, tmp1172
	movzwl	(%rax), %eax	# table_insn_570->code, D.22425
	cmpw	$33, %ax	#, D.22425
	jne	.L1069	#,
	.loc 1 3660 0 is_stmt 1
	movq	-208(%rbp), %rax	# table_insn, tmp1173
	movq	32(%rax), %rax	# table_insn_570->fld[3].rtx, D.22426
	movzwl	(%rax), %eax	# _572->code, D.22425
	cmpw	$44, %ax	#, D.22425
	jne	.L1069	#,
.LBB69:
	.loc 1 3662 0
	movq	-208(%rbp), %rax	# table_insn, tmp1174
	movq	32(%rax), %rax	# table_insn_570->fld[3].rtx, tmp1175
	movq	%rax, -200(%rbp)	# tmp1175, table
	.loc 1 3664 0
	cmpq	$0, -312(%rbp)	#, offset
	js	.L1069	#,
	.loc 1 3665 0
	movq	-200(%rbp), %rax	# table, tmp1176
	movzbl	2(%rax), %eax	# table_574->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22427
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22424
	movzbl	%al, %ebx	# D.22424, D.22433
	movq	-312(%rbp), %rax	# offset, tmp1180
	cqto
	idivq	%rbx	# D.22433
	movq	%rax, %rdx	# tmp1178, D.22433
	.loc 1 3666 0
	movq	-200(%rbp), %rax	# table, tmp1181
	movq	8(%rax), %rax	# table_574->fld[0].rtvec, D.22436
	movl	(%rax), %eax	# _580->num_elem, D.22427
	cltq
	.loc 1 3665 0
	cmpq	%rax, %rdx	# D.22433, D.22433
	jge	.L1069	#,
	.loc 1 3667 0
	movq	-200(%rbp), %rax	# table, tmp1182
	movq	8(%rax), %rcx	# table_574->fld[0].rtvec, D.22436
	movq	-200(%rbp), %rax	# table, tmp1183
	movzbl	2(%rax), %eax	# table_574->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22427
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22424
	movzbl	%al, %ebx	# D.22424, D.22433
	movq	-312(%rbp), %rax	# offset, tmp1187
	cqto
	idivq	%rbx	# D.22433
	movq	8(%rcx,%rax,8), %rax	# _583->elem, D.22423
	jmp	.L1257	#
.L1069:
.LBE69:
	.loc 1 3670 0
	cmpq	$0, -208(%rbp)	#, table_insn
	je	.L1068	#,
	.loc 1 3670 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# table_insn, tmp1188
	movzwl	(%rax), %eax	# table_insn_570->code, D.22425
	cmpw	$33, %ax	#, D.22425
	jne	.L1068	#,
	.loc 1 3671 0 is_stmt 1
	movq	-208(%rbp), %rax	# table_insn, tmp1189
	movq	32(%rax), %rax	# table_insn_570->fld[3].rtx, D.22426
	movzwl	(%rax), %eax	# _591->code, D.22425
	cmpw	$45, %ax	#, D.22425
	jne	.L1068	#,
.LBB70:
	.loc 1 3673 0
	movq	-208(%rbp), %rax	# table_insn, tmp1190
	movq	32(%rax), %rax	# table_insn_570->fld[3].rtx, tmp1191
	movq	%rax, -192(%rbp)	# tmp1191, table
	.loc 1 3675 0
	cmpq	$0, -312(%rbp)	#, offset
	js	.L1068	#,
	.loc 1 3676 0
	movq	-192(%rbp), %rax	# table, tmp1192
	movzbl	2(%rax), %eax	# table_593->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22427
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22424
	movzbl	%al, %ebx	# D.22424, D.22433
	movq	-312(%rbp), %rax	# offset, tmp1196
	cqto
	idivq	%rbx	# D.22433
	movq	%rax, %rdx	# tmp1194, D.22433
	.loc 1 3677 0
	movq	-192(%rbp), %rax	# table, tmp1197
	movq	16(%rax), %rax	# table_593->fld[1].rtvec, D.22436
	movl	(%rax), %eax	# _599->num_elem, D.22427
	cltq
	.loc 1 3676 0
	cmpq	%rax, %rdx	# D.22433, D.22433
	jge	.L1068	#,
	.loc 1 3679 0
	movq	-192(%rbp), %rax	# table, tmp1198
	movzbl	2(%rax), %eax	# table_593->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22427
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22424
	movzbl	%al, %ebx	# D.22424, D.22433
	movq	-312(%rbp), %rax	# offset, tmp1202
	cqto
	idivq	%rbx	# D.22433
	movq	%rax, -312(%rbp)	# tmp1200, offset
	.loc 1 3680 0
	movq	-192(%rbp), %rax	# table, tmp1203
	movq	8(%rax), %rcx	# table_593->fld[0].rtx, D.22426
	movq	-192(%rbp), %rax	# table, tmp1204
	movq	16(%rax), %rax	# table_593->fld[1].rtvec, D.22436
	movq	-312(%rbp), %rdx	# offset, tmp1205
	movq	8(%rax,%rdx,8), %rdx	# _608->elem, D.22426
	movl	target_flags(%rip), %eax	# target_flags, target_flags.554
	andl	$33554432, %eax	#, D.22427
	testl	%eax, %eax	# D.22427
	je	.L1070	#,
	.loc 1 3680 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.553
	jmp	.L1071	#
.L1070:
	.loc 1 3680 0 discriminator 2
	movl	$4, %eax	#, iftmp.553
.L1071:
	.loc 1 3680 0 discriminator 3
	movl	%eax, %esi	# iftmp.553,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -400(%rbp)	# tmp1206, new
	.loc 1 3683 0 is_stmt 1 discriminator 3
	movq	-192(%rbp), %rax	# table, tmp1207
	movzbl	2(%rax), %eax	# table_593->mode, D.22424
	movzbl	%al, %edx	# D.22424, D.22428
	movl	target_flags(%rip), %eax	# target_flags, target_flags.556
	andl	$33554432, %eax	#, D.22427
	testl	%eax, %eax	# D.22427
	je	.L1072	#,
	.loc 1 3683 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.555
	jmp	.L1073	#
.L1072:
	.loc 1 3683 0 discriminator 2
	movl	$4, %eax	#, iftmp.555
.L1073:
	.loc 1 3683 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.555, D.22428
	je	.L1074	#,
	.loc 1 3684 0 is_stmt 1
	movq	-192(%rbp), %rax	# table, tmp1208
	movzbl	2(%rax), %eax	# table_593->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22429
	movq	-400(%rbp), %rdx	# new, tmp1209
	movl	%eax, %esi	# D.22429,
	movl	$122, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, -400(%rbp)	# tmp1210, new
.L1074:
	.loc 1 3694 0
	movq	-400(%rbp), %rax	# new, tmp1211
	movzbl	2(%rax), %eax	# new_16->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22429
	movq	-400(%rbp), %rdx	# new, tmp1212
	movl	%eax, %esi	# D.22429,
	movl	$58, %edi	#,
	call	gen_rtx_fmt_e	#
	jmp	.L1257	#
.L1068:
.LBE70:
.LBE68:
	.loc 1 3699 0
	movq	-520(%rbp), %rax	# x, D.22423
	jmp	.L1257	#
.L980:
.LBE65:
	.loc 1 3704 0
	movq	-520(%rbp), %rax	# x, tmp1213
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _628->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _629->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1075	#,
	.loc 1 3704 0 is_stmt 0 discriminator 1
	movq	-520(%rbp), %rax	# x, tmp1214
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _631->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _632->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1075	#,
	movq	-520(%rbp), %rax	# x, tmp1215
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _634->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _635->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1075	#,
	movq	-520(%rbp), %rax	# x, tmp1216
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _637->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _638->code, D.22425
	cmpw	$55, %ax	#, D.22425
	je	.L1075	#,
	movq	-520(%rbp), %rax	# x, tmp1217
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _640->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _641->code, D.22425
	cmpw	$58, %ax	#, D.22425
	je	.L1075	#,
	movq	-520(%rbp), %rax	# x, tmp1218
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _643->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _644->code, D.22425
	cmpw	$134, %ax	#, D.22425
	je	.L1075	#,
	movq	-520(%rbp), %rax	# x, tmp1219
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _646->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _647->code, D.22425
	cmpw	$56, %ax	#, D.22425
	je	.L1075	#,
	movq	-520(%rbp), %rax	# x, tmp1220
	movq	8(%rax), %rax	# x_118(D)->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _649->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _650->code, D.22425
	cmpw	$140, %ax	#, D.22425
	jne	.L1076	#,
.L1075:
	.loc 1 3705 0 is_stmt 1
	movq	-520(%rbp), %rax	# x, D.22423
	jmp	.L1257	#
.L1076:
	.loc 1 3706 0
	jmp	.L989	#
.L979:
	.loc 1 3710 0
	movq	-520(%rbp), %rax	# x, tmp1221
	movq	32(%rax), %rax	# x_118(D)->fld[3].rtvec, D.22436
	movl	(%rax), %eax	# _653->num_elem, D.22427
	subl	$1, %eax	#, tmp1222
	movl	%eax, -492(%rbp)	# tmp1222, i
	jmp	.L1077	#
.L1078:
	.loc 1 3712 0 discriminator 2
	movq	-520(%rbp), %rax	# x, tmp1223
	movq	32(%rax), %rax	# x_118(D)->fld[3].rtvec, D.22436
	.loc 1 3711 0 discriminator 2
	movl	-492(%rbp), %edx	# i, tmp1225
	movslq	%edx, %rdx	# tmp1225, tmp1224
	movq	8(%rax,%rdx,8), %rax	# _656->elem, D.22426
	movq	-528(%rbp), %rdx	# insn, tmp1226
	movq	%rdx, %rsi	# tmp1226,
	movq	%rax, %rdi	# D.22426,
	call	fold_rtx	#
	movq	%rax, %rdx	#, D.22426
	movq	-520(%rbp), %rax	# x, tmp1227
	movq	32(%rax), %rax	# x_118(D)->fld[3].rtvec, D.22436
	movl	-492(%rbp), %ecx	# i, tmp1229
	movslq	%ecx, %rcx	# tmp1229, tmp1228
	salq	$3, %rcx	#, tmp1230
	addq	%rcx, %rax	# tmp1230, tmp1231
	leaq	8(%rax), %rsi	#, D.22434
	movq	-528(%rbp), %rax	# insn, tmp1232
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp1232,
	call	validate_change	#
	.loc 1 3710 0 discriminator 2
	subl	$1, -492(%rbp)	#, i
.L1077:
	.loc 1 3710 0 is_stmt 0 discriminator 1
	cmpl	$0, -492(%rbp)	#, i
	jns	.L1078	#,
	.loc 1 3713 0 is_stmt 1
	jmp	.L989	#
.L1258:
	.loc 1 3716 0
	nop
.L989:
	.loc 1 3719 0
	movq	$0, -392(%rbp)	#, const_arg0
	.loc 1 3720 0
	movq	$0, -384(%rbp)	#, const_arg1
	.loc 1 3721 0
	movq	$0, -376(%rbp)	#, const_arg2
	.loc 1 3722 0
	movl	$0, -500(%rbp)	#, mode_arg0
	.loc 1 3727 0
	movl	-496(%rbp), %eax	# code, code.557
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp1234
	movq	%rax, -184(%rbp)	# tmp1234, fmt
	.loc 1 3728 0
	movl	-496(%rbp), %eax	# code, code.558
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22424
	movzbl	%al, %eax	# D.22424, D.22427
	subl	$1, %eax	#, tmp1236
	movl	%eax, -492(%rbp)	# tmp1236, i
	jmp	.L1079	#
.L1118:
	.loc 1 3729 0
	movl	-492(%rbp), %eax	# i, tmp1237
	movslq	%eax, %rdx	# tmp1237, D.22437
	movq	-184(%rbp), %rax	# fmt, tmp1238
	addq	%rdx, %rax	# D.22437, D.22438
	movzbl	(%rax), %eax	# *_672, D.22430
	cmpb	$101, %al	#, D.22430
	jne	.L1105	#,
.LBB71:
	.loc 1 3731 0
	movq	-520(%rbp), %rax	# x, tmp1239
	movl	-492(%rbp), %edx	# i, tmp1241
	movslq	%edx, %rdx	# tmp1241, tmp1240
	movq	8(%rax,%rdx,8), %rax	# x_3->fld[i_8].rtx, tmp1242
	movq	%rax, -176(%rbp)	# tmp1242, arg
	.loc 1 3732 0
	movq	-176(%rbp), %rax	# arg, tmp1243
	movq	%rax, -304(%rbp)	# tmp1243, folded_arg
	movq	$0, -296(%rbp)	#, const_arg
	.loc 1 3733 0
	movq	-176(%rbp), %rax	# arg, tmp1244
	movzbl	2(%rax), %eax	# arg_674->mode, D.22424
	movzbl	%al, %eax	# D.22424, tmp1245
	movl	%eax, -452(%rbp)	# tmp1245, mode_arg
	.loc 1 3739 0
	movq	-176(%rbp), %rax	# arg, tmp1246
	movzwl	(%rax), %eax	# arg_674->code, D.22425
	movzwl	%ax, %eax	# D.22425, D.22428
	subl	$54, %eax	#, tmp1247
	cmpl	$14, %eax	#, tmp1247
	ja	.L1081	#,
	movl	%eax, %eax	# tmp1247, tmp1248
	movq	.L1083(,%rax,8), %rax	#, tmp1249
	jmp	*%rax	# tmp1249
	.section	.rodata
	.align 8
	.align 4
.L1083:
	.quad	.L1082
	.quad	.L1082
	.quad	.L1082
	.quad	.L1081
	.quad	.L1082
	.quad	.L1081
	.quad	.L1081
	.quad	.L1084
	.quad	.L1081
	.quad	.L1081
	.quad	.L1081
	.quad	.L1081
	.quad	.L1081
	.quad	.L1082
	.quad	.L1082
	.text
.L1084:
	.loc 1 3744 0
	movq	-176(%rbp), %rax	# arg, tmp1250
	movl	8(%rax), %edx	# arg_674->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.560
	cmpl	%eax, %edx	# cached_regno.560, D.22428
	jne	.L1085	#,
	.loc 1 3744 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.561
	testq	%rax, %rax	# cached_cse_reg_info.561
	jne	.L1086	#,
.L1085:
	.loc 1 3744 0 discriminator 1
	movq	-176(%rbp), %rax	# arg, tmp1251
	movl	8(%rax), %eax	# arg_674->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1087	#
.L1086:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.559
.L1087:
	.loc 1 3744 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.559_79->reg_qty, D.22427
	movq	-176(%rbp), %rax	# arg, tmp1252
	movl	8(%rax), %eax	# arg_674->fld[0].rtuint, D.22428
	cmpl	%eax, %edx	# D.22427, D.22427
	je	.L1088	#,
.LBB72:
	.loc 1 3746 0 is_stmt 1
	movq	-176(%rbp), %rax	# arg, tmp1253
	movl	8(%rax), %edx	# arg_674->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.563
	cmpl	%eax, %edx	# cached_regno.563, D.22428
	jne	.L1089	#,
	.loc 1 3746 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.564
	testq	%rax, %rax	# cached_cse_reg_info.564
	jne	.L1090	#,
.L1089:
	.loc 1 3746 0 discriminator 1
	movq	-176(%rbp), %rax	# arg, tmp1254
	movl	8(%rax), %eax	# arg_674->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1091	#
.L1090:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.562
.L1091:
	.loc 1 3746 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.562_80->reg_qty, tmp1255
	movl	%eax, -448(%rbp)	# tmp1255, arg_q
	.loc 1 3747 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.565
	movl	-448(%rbp), %eax	# arg_q, tmp1256
	movslq	%eax, %rdx	# tmp1256, D.22435
	movq	%rdx, %rax	# D.22435, tmp1257
	addq	%rax, %rax	# tmp1257
	addq	%rdx, %rax	# D.22435, tmp1257
	salq	$4, %rax	#, tmp1258
	addq	%rcx, %rax	# qty_table.565, tmp1259
	movq	%rax, -168(%rbp)	# tmp1259, arg_ent
	.loc 1 3749 0 discriminator 3
	movq	-168(%rbp), %rax	# arg_ent, tmp1260
	movq	(%rax), %rax	# arg_ent_700->const_rtx, D.22426
	testq	%rax, %rax	# D.22426
	je	.L1088	#,
	.loc 1 3750 0
	movq	-168(%rbp), %rax	# arg_ent, tmp1261
	movq	(%rax), %rax	# arg_ent_700->const_rtx, D.22426
	movzwl	(%rax), %eax	# _702->code, D.22425
	cmpw	$61, %ax	#, D.22425
	je	.L1088	#,
	.loc 1 3751 0
	movq	-168(%rbp), %rax	# arg_ent, tmp1262
	movq	(%rax), %rax	# arg_ent_700->const_rtx, D.22426
	movzwl	(%rax), %eax	# _704->code, D.22425
	cmpw	$75, %ax	#, D.22425
	je	.L1088	#,
	.loc 1 3753 0
	movq	-168(%rbp), %rax	# arg_ent, tmp1263
	movq	(%rax), %rdx	# arg_ent_700->const_rtx, D.22426
	movq	-176(%rbp), %rax	# arg, tmp1264
	movzbl	2(%rax), %eax	# arg_674->mode, D.22424
	movzbl	%al, %eax	# D.22424, D.22429
	movq	%rdx, %rsi	# D.22426,
	movl	%eax, %edi	# D.22429,
	call	gen_lowpart_if_possible	#
	movq	%rax, -296(%rbp)	# tmp1265, const_arg
.LBE72:
	.loc 1 3756 0
	jmp	.L1092	#
.L1088:
	jmp	.L1092	#
.L1082:
	.loc 1 3764 0
	movq	-176(%rbp), %rax	# arg, tmp1266
	movq	%rax, -296(%rbp)	# tmp1266, const_arg
	.loc 1 3765 0
	jmp	.L1092	#
.L1081:
	.loc 1 3776 0
	movq	-528(%rbp), %rdx	# insn, tmp1267
	movq	-176(%rbp), %rax	# arg, tmp1268
	movq	%rdx, %rsi	# tmp1267,
	movq	%rax, %rdi	# tmp1268,
	call	fold_rtx	#
	movq	%rax, -304(%rbp)	# tmp1269, folded_arg
	.loc 1 3777 0
	movq	-304(%rbp), %rax	# folded_arg, tmp1270
	movq	%rax, %rdi	# tmp1270,
	call	equiv_constant	#
	movq	%rax, -296(%rbp)	# tmp1271, const_arg
.L1092:
	.loc 1 3782 0
	movl	-492(%rbp), %eax	# i, i
	cmpl	$1, %eax	#, i
	je	.L1094	#,
	cmpl	$2, %eax	#, i
	je	.L1095	#,
	testl	%eax, %eax	# i
	jne	.L1093	#,
	.loc 1 3785 0
	movq	-304(%rbp), %rax	# folded_arg, tmp1273
	movq	%rax, -416(%rbp)	# tmp1273, folded_arg0
	.loc 1 3786 0
	movq	-296(%rbp), %rax	# const_arg, tmp1274
	movq	%rax, -392(%rbp)	# tmp1274, const_arg0
	.loc 1 3787 0
	movl	-452(%rbp), %eax	# mode_arg, tmp1275
	movl	%eax, -500(%rbp)	# tmp1275, mode_arg0
	.loc 1 3788 0
	jmp	.L1093	#
.L1094:
	.loc 1 3790 0
	movq	-304(%rbp), %rax	# folded_arg, tmp1276
	movq	%rax, -408(%rbp)	# tmp1276, folded_arg1
	.loc 1 3791 0
	movq	-296(%rbp), %rax	# const_arg, tmp1277
	movq	%rax, -384(%rbp)	# tmp1277, const_arg1
	.loc 1 3792 0
	jmp	.L1093	#
.L1095:
	.loc 1 3794 0
	movq	-296(%rbp), %rax	# const_arg, tmp1278
	movq	%rax, -376(%rbp)	# tmp1278, const_arg2
	.loc 1 3795 0
	nop
.L1093:
	.loc 1 3800 0
	cmpq	$0, -296(%rbp)	#, const_arg
	je	.L1097	#,
	.loc 1 3800 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rax	# const_arg, tmp1279
	cmpq	-304(%rbp), %rax	# folded_arg, tmp1279
	je	.L1097	#,
	.loc 1 3801 0 is_stmt 1
	movq	-296(%rbp), %rax	# const_arg, tmp1280
	movzwl	(%rax), %eax	# const_arg_53->code, D.22425
	cmpw	$61, %ax	#, D.22425
	je	.L1098	#,
	.loc 1 3801 0 is_stmt 0 discriminator 1
	movl	-496(%rbp), %edx	# code, tmp1281
	movq	-296(%rbp), %rax	# const_arg, tmp1282
	movl	%edx, %esi	# tmp1281,
	movq	%rax, %rdi	# tmp1282,
	call	notreg_cost	#
	movl	%eax, %ebx	#, iftmp.566
	jmp	.L1099	#
.L1098:
	.loc 1 3801 0 discriminator 2
	movl	$0, %ebx	#, iftmp.566
.L1099:
	.loc 1 3801 0 discriminator 3
	movq	-304(%rbp), %rax	# folded_arg, tmp1283
	movzwl	(%rax), %eax	# folded_arg_51->code, D.22425
	cmpw	$61, %ax	#, D.22425
	je	.L1100	#,
	.loc 1 3801 0 discriminator 1
	movl	-496(%rbp), %edx	# code, tmp1284
	movq	-304(%rbp), %rax	# folded_arg, tmp1285
	movl	%edx, %esi	# tmp1284,
	movq	%rax, %rdi	# tmp1285,
	call	notreg_cost	#
	jmp	.L1101	#
.L1100:
	.loc 1 3801 0 discriminator 2
	movl	$0, %eax	#, iftmp.567
.L1101:
	.loc 1 3801 0 discriminator 3
	cmpl	%eax, %ebx	# iftmp.567, iftmp.566
	jle	.L1102	#,
.L1097:
	.loc 1 3802 0 is_stmt 1
	movq	-304(%rbp), %rax	# folded_arg, tmp1286
	movq	%rax, -288(%rbp)	# tmp1286, cheap_arg
	movq	-296(%rbp), %rax	# const_arg, tmp1287
	movq	%rax, -280(%rbp)	# tmp1287, expensive_arg
	jmp	.L1103	#
.L1102:
	.loc 1 3804 0
	movq	-296(%rbp), %rax	# const_arg, tmp1288
	movq	%rax, -288(%rbp)	# tmp1288, cheap_arg
	movq	-304(%rbp), %rax	# folded_arg, tmp1289
	movq	%rax, -280(%rbp)	# tmp1289, expensive_arg
.L1103:
	.loc 1 3812 0
	movq	-520(%rbp), %rax	# x, tmp1290
	movl	-492(%rbp), %edx	# i, tmp1292
	movslq	%edx, %rdx	# tmp1292, tmp1291
	movq	8(%rax,%rdx,8), %rax	# x_3->fld[i_8].rtx, D.22426
	cmpq	-288(%rbp), %rax	# cheap_arg, D.22426
	je	.L1105	#,
	.loc 1 3815 0
	cmpq	$0, -528(%rbp)	#, insn
	jne	.L1106	#,
	.loc 1 3815 0 is_stmt 0 discriminator 1
	cmpl	$0, -488(%rbp)	#, copied
	jne	.L1106	#,
	.loc 1 3817 0 is_stmt 1
	movq	-520(%rbp), %rax	# x, tmp1293
	movq	%rax, %rdi	# tmp1293,
	call	copy_rtx	#
	movq	%rax, -520(%rbp)	# tmp1294, x
	.loc 1 3818 0
	movl	$1, -488(%rbp)	#, copied
.L1106:
	.loc 1 3822 0
	movq	-288(%rbp), %rax	# cheap_arg, tmp1295
	movq	%rax, -32(%rbp)	# tmp1295, replacements
	.loc 1 3823 0
	movq	-280(%rbp), %rax	# expensive_arg, tmp1296
	movq	%rax, -24(%rbp)	# tmp1296, replacements
	.loc 1 3825 0
	movl	$0, -480(%rbp)	#, j
	jmp	.L1107	#
.L1117:
.LBB73:
	.loc 1 3827 0
	movq	-520(%rbp), %rax	# x, tmp1297
	movl	-492(%rbp), %edx	# i, tmp1299
	movslq	%edx, %rdx	# tmp1299, tmp1298
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_8].rtx, D.22426
	movzwl	(%rax), %eax	# _731->code, D.22425
	cmpw	$61, %ax	#, D.22425
	je	.L1108	#,
	.loc 1 3827 0 is_stmt 0 discriminator 1
	movq	-520(%rbp), %rax	# x, tmp1300
	movl	-492(%rbp), %edx	# i, tmp1302
	movslq	%edx, %rdx	# tmp1302, tmp1301
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_8].rtx, D.22426
	movl	-496(%rbp), %edx	# code, tmp1303
	movl	%edx, %esi	# tmp1303,
	movq	%rax, %rdi	# D.22426,
	call	notreg_cost	#
	jmp	.L1109	#
.L1108:
	.loc 1 3827 0 discriminator 2
	movl	$0, %eax	#, iftmp.568
.L1109:
	.loc 1 3827 0 discriminator 3
	movl	%eax, -444(%rbp)	# iftmp.568, old_cost
	.loc 1 3828 0 is_stmt 1 discriminator 3
	movl	-480(%rbp), %eax	# j, tmp1305
	cltq
	movq	-32(%rbp,%rax,8), %rax	# replacements, D.22426
	movzwl	(%rax), %eax	# _737->code, D.22425
	cmpw	$61, %ax	#, D.22425
	je	.L1110	#,
	.loc 1 3828 0 is_stmt 0 discriminator 1
	movl	-480(%rbp), %eax	# j, tmp1307
	cltq
	movq	-32(%rbp,%rax,8), %rax	# replacements, D.22426
	movl	-496(%rbp), %edx	# code, tmp1308
	movl	%edx, %esi	# tmp1308,
	movq	%rax, %rdi	# D.22426,
	call	notreg_cost	#
	jmp	.L1111	#
.L1110:
	.loc 1 3828 0 discriminator 2
	movl	$0, %eax	#, iftmp.569
.L1111:
	.loc 1 3828 0 discriminator 3
	movl	%eax, -440(%rbp)	# iftmp.569, new_cost
	.loc 1 3832 0 is_stmt 1 discriminator 3
	movl	-440(%rbp), %eax	# new_cost, tmp1309
	cmpl	-444(%rbp), %eax	# old_cost, tmp1309
	jg	.L1112	#,
	.loc 1 3833 0
	movl	-440(%rbp), %eax	# new_cost, tmp1310
	cmpl	-444(%rbp), %eax	# old_cost, tmp1310
	jne	.L1113	#,
	.loc 1 3833 0 is_stmt 0 discriminator 1
	movq	-520(%rbp), %rax	# x, tmp1311
	movl	-492(%rbp), %edx	# i, tmp1313
	movslq	%edx, %rdx	# tmp1313, tmp1312
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_8].rtx, D.22426
	movzwl	(%rax), %eax	# _743->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1112	#,
	movq	-520(%rbp), %rax	# x, tmp1314
	movl	-492(%rbp), %edx	# i, tmp1316
	movslq	%edx, %rdx	# tmp1316, tmp1315
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_8].rtx, D.22426
	movzwl	(%rax), %eax	# _745->code, D.22425
	cmpw	$68, %ax	#, D.22425
	je	.L1112	#,
	movq	-520(%rbp), %rax	# x, tmp1317
	movl	-492(%rbp), %edx	# i, tmp1319
	movslq	%edx, %rdx	# tmp1319, tmp1318
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_8].rtx, D.22426
	movzwl	(%rax), %eax	# _747->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1112	#,
	movq	-520(%rbp), %rax	# x, tmp1320
	movl	-492(%rbp), %edx	# i, tmp1322
	movslq	%edx, %rdx	# tmp1322, tmp1321
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_8].rtx, D.22426
	movzwl	(%rax), %eax	# _749->code, D.22425
	cmpw	$55, %ax	#, D.22425
	je	.L1112	#,
	movq	-520(%rbp), %rax	# x, tmp1323
	movl	-492(%rbp), %edx	# i, tmp1325
	movslq	%edx, %rdx	# tmp1325, tmp1324
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_8].rtx, D.22426
	movzwl	(%rax), %eax	# _751->code, D.22425
	cmpw	$58, %ax	#, D.22425
	je	.L1112	#,
	movq	-520(%rbp), %rax	# x, tmp1326
	movl	-492(%rbp), %edx	# i, tmp1328
	movslq	%edx, %rdx	# tmp1328, tmp1327
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_8].rtx, D.22426
	movzwl	(%rax), %eax	# _753->code, D.22425
	cmpw	$134, %ax	#, D.22425
	je	.L1112	#,
	movq	-520(%rbp), %rax	# x, tmp1329
	movl	-492(%rbp), %edx	# i, tmp1331
	movslq	%edx, %rdx	# tmp1331, tmp1330
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_8].rtx, D.22426
	movzwl	(%rax), %eax	# _755->code, D.22425
	cmpw	$56, %ax	#, D.22425
	je	.L1112	#,
	movq	-520(%rbp), %rax	# x, tmp1332
	movl	-492(%rbp), %edx	# i, tmp1334
	movslq	%edx, %rdx	# tmp1334, tmp1333
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_8].rtx, D.22426
	movzwl	(%rax), %eax	# _757->code, D.22425
	cmpw	$140, %ax	#, D.22425
	je	.L1112	#,
.L1113:
	.loc 1 3836 0 is_stmt 1
	movl	-480(%rbp), %eax	# j, tmp1336
	cltq
	movq	-32(%rbp,%rax,8), %rdx	# replacements, D.22426
	movl	-492(%rbp), %eax	# i, tmp1338
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp1339
	movq	-520(%rbp), %rax	# x, tmp1341
	addq	%rcx, %rax	# tmp1339, tmp1340
	leaq	8(%rax), %rsi	#, D.22434
	movq	-528(%rbp), %rax	# insn, tmp1342
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp1342,
	call	validate_change	#
	testl	%eax, %eax	# D.22427
	je	.L1114	#,
	.loc 1 3837 0
	jmp	.L1112	#
.L1114:
	.loc 1 3839 0
	cmpl	$102, -496(%rbp)	#, code
	je	.L1115	#,
	.loc 1 3839 0 is_stmt 0 discriminator 1
	cmpl	$103, -496(%rbp)	#, code
	je	.L1115	#,
	movl	-496(%rbp), %eax	# code, code.570
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22430
	cmpb	$99, %al	#, D.22430
	je	.L1115	#,
	.loc 1 3840 0 is_stmt 1
	cmpl	$119, -496(%rbp)	#, code
	je	.L1115	#,
	.loc 1 3840 0 is_stmt 0 discriminator 1
	cmpl	$114, -496(%rbp)	#, code
	je	.L1115	#,
	cmpl	$113, -496(%rbp)	#, code
	je	.L1115	#,
	.loc 1 3841 0 is_stmt 1
	cmpl	$112, -496(%rbp)	#, code
	jne	.L1116	#,
.L1115:
	.loc 1 3843 0
	movl	$1, %eax	#, tmp1344
	subl	-492(%rbp), %eax	# i, D.22427
	movl	%eax, %edx	# D.22427, D.22427
	movq	-520(%rbp), %rax	# x, tmp1345
	movslq	%edx, %rdx	# D.22427, tmp1346
	movq	8(%rax,%rdx,8), %rdx	# x_1->fld[_764].rtx, D.22426
	movl	-492(%rbp), %eax	# i, tmp1348
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp1349
	movq	-520(%rbp), %rax	# x, tmp1351
	addq	%rcx, %rax	# tmp1349, tmp1350
	leaq	8(%rax), %rsi	#, D.22434
	movq	-528(%rbp), %rax	# insn, tmp1352
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp1352,
	call	validate_change	#
	.loc 1 3844 0
	movl	-480(%rbp), %eax	# j, tmp1354
	cltq
	movq	-32(%rbp,%rax,8), %rdx	# replacements, D.22426
	movl	$1, %eax	#, tmp1355
	subl	-492(%rbp), %eax	# i, D.22427
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp1357
	movq	-520(%rbp), %rax	# x, tmp1359
	addq	%rcx, %rax	# tmp1357, tmp1358
	leaq	8(%rax), %rsi	#, D.22434
	movq	-528(%rbp), %rax	# insn, tmp1360
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp1360,
	call	validate_change	#
	.loc 1 3846 0
	call	apply_change_group	#
	testl	%eax, %eax	# D.22427
	je	.L1116	#,
.LBB74:
	.loc 1 3852 0
	movq	-520(%rbp), %rax	# x, tmp1361
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp1362
	movq	%rax, -160(%rbp)	# tmp1362, tem
	movq	-520(%rbp), %rax	# x, tmp1363
	movq	16(%rax), %rdx	# x_1->fld[1].rtx, D.22426
	movq	-520(%rbp), %rax	# x, tmp1364
	movq	%rdx, 8(%rax)	# D.22426, x_1->fld[0].rtx
	.loc 1 3853 0
	movq	-520(%rbp), %rax	# x, tmp1365
	movq	-160(%rbp), %rdx	# tem, tmp1366
	movq	%rdx, 16(%rax)	# tmp1366, x_1->fld[1].rtx
	.loc 1 3854 0
	movl	$1, -484(%rbp)	#, must_swap
	.loc 1 3855 0
	jmp	.L1112	#
.L1116:
.LBE74:
.LBE73:
	.loc 1 3825 0
	addl	$1, -480(%rbp)	#, j
.L1107:
	.loc 1 3825 0 is_stmt 0 discriminator 1
	cmpl	$1, -480(%rbp)	#, j
	jg	.L1112	#,
	.loc 1 3825 0 discriminator 2
	movl	-480(%rbp), %eax	# j, tmp1368
	cltq
	movq	-32(%rbp,%rax,8), %rax	# replacements, D.22426
	testq	%rax, %rax	# D.22426
	jne	.L1117	#,
.L1112:
.L1105:
.LBE71:
	.loc 1 3728 0 is_stmt 1
	subl	$1, -492(%rbp)	#, i
.L1079:
	.loc 1 3728 0 is_stmt 0 discriminator 1
	cmpl	$0, -492(%rbp)	#, i
	jns	.L1118	#,
	.loc 1 3873 0 is_stmt 1
	cmpl	$103, -496(%rbp)	#, code
	je	.L1119	#,
	.loc 1 3873 0 is_stmt 0 discriminator 1
	cmpl	$102, -496(%rbp)	#, code
	je	.L1119	#,
	movl	-496(%rbp), %eax	# code, code.571
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22430
	cmpb	$99, %al	#, D.22430
	je	.L1119	#,
	.loc 1 3874 0 is_stmt 1
	cmpl	$119, -496(%rbp)	#, code
	je	.L1119	#,
	.loc 1 3874 0 is_stmt 0 discriminator 1
	cmpl	$114, -496(%rbp)	#, code
	je	.L1119	#,
	cmpl	$113, -496(%rbp)	#, code
	je	.L1119	#,
	.loc 1 3875 0 is_stmt 1
	cmpl	$112, -496(%rbp)	#, code
	jne	.L1120	#,
.L1119:
	.loc 1 3877 0
	cmpl	$0, -484(%rbp)	#, must_swap
	jne	.L1121	#,
	.loc 1 3877 0 is_stmt 0 discriminator 1
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1120	#,
	.loc 1 3878 0 is_stmt 1
	cmpq	$0, -384(%rbp)	#, const_arg1
	je	.L1121	#,
	.loc 1 3879 0
	movq	-392(%rbp), %rax	# const_arg0, tmp1372
	movzwl	(%rax), %eax	# const_arg0_28->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1120	#,
	.loc 1 3880 0
	movq	-384(%rbp), %rax	# const_arg1, tmp1373
	movzwl	(%rax), %eax	# const_arg1_34->code, D.22425
	cmpw	$54, %ax	#, D.22425
	je	.L1120	#,
.L1121:
.LBB75:
	.loc 1 3882 0
	movq	-520(%rbp), %rax	# x, tmp1374
	movq	8(%rax), %rax	# x_3->fld[0].rtx, tmp1375
	movq	%rax, -152(%rbp)	# tmp1375, tem
	.loc 1 3884 0
	cmpq	$0, -528(%rbp)	#, insn
	jne	.L1122	#,
	.loc 1 3884 0 is_stmt 0 discriminator 1
	cmpl	$0, -488(%rbp)	#, copied
	jne	.L1122	#,
	.loc 1 3886 0 is_stmt 1
	movq	-520(%rbp), %rax	# x, tmp1376
	movq	%rax, %rdi	# tmp1376,
	call	copy_rtx	#
	movq	%rax, -520(%rbp)	# tmp1377, x
	.loc 1 3887 0
	movl	$1, -488(%rbp)	#, copied
.L1122:
	.loc 1 3890 0
	movq	-520(%rbp), %rax	# x, tmp1378
	movq	16(%rax), %rdx	# x_4->fld[1].rtx, D.22426
	movq	-520(%rbp), %rax	# x, tmp1379
	leaq	8(%rax), %rsi	#, D.22434
	movq	-528(%rbp), %rax	# insn, tmp1380
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp1380,
	call	validate_change	#
	.loc 1 3891 0
	movq	-520(%rbp), %rax	# x, tmp1381
	leaq	16(%rax), %rsi	#, D.22434
	movq	-152(%rbp), %rdx	# tem, tmp1382
	movq	-528(%rbp), %rax	# insn, tmp1383
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp1383,
	call	validate_change	#
	.loc 1 3892 0
	call	apply_change_group	#
	testl	%eax, %eax	# D.22427
	je	.L1120	#,
	.loc 1 3894 0
	movq	-392(%rbp), %rax	# const_arg0, tmp1384
	movq	%rax, -152(%rbp)	# tmp1384, tem
	movq	-384(%rbp), %rax	# const_arg1, tmp1385
	movq	%rax, -392(%rbp)	# tmp1385, const_arg0
	movq	-152(%rbp), %rax	# tem, tmp1386
	movq	%rax, -384(%rbp)	# tmp1386, const_arg1
	.loc 1 3895 0
	movq	-416(%rbp), %rax	# folded_arg0, tmp1387
	movq	%rax, -152(%rbp)	# tmp1387, tem
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.572
	movq	%rax, -416(%rbp)	# folded_arg1.572, folded_arg0
	movq	-152(%rbp), %rax	# tem, tmp1388
	movq	%rax, -408(%rbp)	# tmp1388, folded_arg1
.L1120:
.LBE75:
	.loc 1 3902 0
	movl	-496(%rbp), %eax	# code, code.573
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22430
	movsbl	%al, %eax	# D.22430, D.22427
	subl	$49, %eax	#, tmp1390
	cmpl	$71, %eax	#, tmp1390
	ja	.L1123	#,
	movl	%eax, %eax	# tmp1390, tmp1391
	movq	.L1125(,%rax,8), %rax	#, tmp1392
	jmp	*%rax	# tmp1392
	.section	.rodata
	.align 8
	.align 4
.L1125:
	.quad	.L1124
	.quad	.L1126
	.quad	.L1127
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1128
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1127
	.quad	.L1126
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1129
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1123
	.quad	.L1130
	.text
.L1124:
.LBB76:
	.loc 1 3906 0
	movl	$0, -476(%rbp)	#, is_const
	.loc 1 3910 0
	cmpl	$121, -496(%rbp)	#, code
	je	.L1131	#,
	.loc 1 3910 0 is_stmt 0 discriminator 1
	cmpl	$120, -496(%rbp)	#, code
	jne	.L1132	#,
.L1131:
	.loc 1 3911 0 is_stmt 1
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.574
	testl	%eax, %eax	# mode_arg0.574
	jne	.L1132	#,
	.loc 1 3912 0
	jmp	.L1123	#
.L1132:
	.loc 1 3916 0
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1133	#,
	.loc 1 3916 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# const_arg0, tmp1393
	movzwl	(%rax), %eax	# const_arg0_29->code, D.22425
	cmpw	$58, %ax	#, D.22425
	jne	.L1133	#,
	.loc 1 3917 0 is_stmt 1
	movl	$1, -476(%rbp)	#, is_const
	movq	-392(%rbp), %rax	# const_arg0, tmp1394
	movq	8(%rax), %rax	# const_arg0_29->fld[0].rtx, tmp1395
	movq	%rax, -392(%rbp)	# tmp1395, const_arg0
.L1133:
	.loc 1 3919 0
	movl	-500(%rbp), %edx	# mode_arg0, mode_arg0.575
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1134	#,
	.loc 1 3919 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# const_arg0, iftmp.576
	jmp	.L1135	#
.L1134:
	.loc 1 3919 0 discriminator 2
	movq	-416(%rbp), %rax	# folded_arg0, iftmp.576
.L1135:
	.loc 1 3919 0 discriminator 3
	movl	-472(%rbp), %esi	# mode, tmp1396
	movl	-496(%rbp), %edi	# code, tmp1397
	movl	%edx, %ecx	# mode_arg0.575,
	movq	%rax, %rdx	# iftmp.576,
	call	simplify_unary_operation	#
	movq	%rax, -400(%rbp)	# tmp1398, new
	.loc 1 3922 0 is_stmt 1 discriminator 3
	cmpq	$0, -400(%rbp)	#, new
	je	.L1136	#,
	.loc 1 3922 0 is_stmt 0 discriminator 1
	cmpl	$0, -476(%rbp)	#, is_const
	je	.L1136	#,
	.loc 1 3923 0 is_stmt 1
	movq	-400(%rbp), %rdx	# new, tmp1399
	movl	-472(%rbp), %eax	# mode, tmp1400
	movl	%eax, %esi	# tmp1400,
	movl	$58, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, -400(%rbp)	# tmp1401, new
.LBE76:
	.loc 1 3925 0
	jmp	.L1123	#
.L1136:
	jmp	.L1123	#
.L1128:
	.loc 1 3933 0
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1137	#,
	.loc 1 3933 0 is_stmt 0 discriminator 1
	cmpq	$0, -384(%rbp)	#, const_arg1
	jne	.L1138	#,
.L1137:
.LBB77:
	.loc 1 3936 0 is_stmt 1
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, tmp1402
	movq	%rax, -144(%rbp)	# tmp1402, true_rtx
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp1403
	movq	%rax, -136(%rbp)	# tmp1403, false_rtx
	.loc 1 3948 0
	leaq	-32(%rbp), %rdi	#, tmp1404
	leaq	-500(%rbp), %rcx	#, tmp1405
	leaq	-408(%rbp), %rdx	#, tmp1406
	leaq	-416(%rbp), %rsi	#, tmp1407
	movl	-496(%rbp), %eax	# code, tmp1408
	movq	%rdi, %r8	# tmp1404,
	movl	%eax, %edi	# tmp1408,
	call	find_comparison_args	#
	movl	%eax, -496(%rbp)	# tmp1409, code
	.loc 1 3950 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.577
	movq	%rax, %rdi	# folded_arg0.577,
	call	equiv_constant	#
	movq	%rax, -392(%rbp)	# tmp1410, const_arg0
	.loc 1 3951 0
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.578
	movq	%rax, %rdi	# folded_arg1.578,
	call	equiv_constant	#
	movq	%rax, -384(%rbp)	# tmp1411, const_arg1
	.loc 1 3957 0
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.579
	testl	%eax, %eax	# mode_arg0.579
	je	.L1123	#,
	.loc 1 3957 0 is_stmt 0 discriminator 1
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.580
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22431
	cmpl	$4, %eax	#, D.22431
	je	.L1123	#,
	.loc 1 3963 0 is_stmt 1
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1140	#,
	.loc 1 3963 0 is_stmt 0 discriminator 1
	cmpq	$0, -384(%rbp)	#, const_arg1
	jne	.L1141	#,
.L1140:
	.loc 1 3968 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.22426
	cmpq	-384(%rbp), %rax	# const_arg1, D.22426
	jne	.L1142	#,
	.loc 1 3969 0
	movq	global_rtl+24(%rip), %rdx	# global_rtl, D.22426
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.582
	cmpq	%rax, %rdx	# folded_arg0.582, D.22426
	je	.L1143	#,
	.loc 1 3969 0 is_stmt 0 discriminator 1
	movq	global_rtl+32(%rip), %rdx	# global_rtl, D.22426
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.583
	cmpq	%rax, %rdx	# folded_arg0.583, D.22426
	je	.L1143	#,
	movq	global_rtl+56(%rip), %rdx	# global_rtl, D.22426
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.584
	cmpq	%rax, %rdx	# folded_arg0.584, D.22426
	je	.L1143	#,
	movq	global_rtl+48(%rip), %rdx	# global_rtl, D.22426
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.585
	cmpq	%rax, %rdx	# folded_arg0.585, D.22426
	je	.L1143	#,
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.586
	movzwl	(%rax), %eax	# folded_arg0.586_828->code, D.22425
	cmpw	$75, %ax	#, D.22425
	jne	.L1144	#,
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.587
	movq	16(%rax), %rax	# folded_arg0.587_830->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _831->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1144	#,
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.588
	movq	8(%rax), %rdx	# folded_arg0.588_833->fld[0].rtx, D.22426
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	je	.L1143	#,
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.589
	movq	8(%rax), %rdx	# folded_arg0.589_836->fld[0].rtx, D.22426
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	je	.L1143	#,
	movq	global_rtl+40(%rip), %rdx	# global_rtl, D.22426
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.590
	cmpq	%rax, %rdx	# folded_arg0.590, D.22426
	jne	.L1145	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22430
	testb	%al, %al	# D.22430
	jne	.L1143	#,
.L1145:
	.loc 1 3969 0 discriminator 2
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.591
	movq	8(%rax), %rdx	# folded_arg0.591_842->fld[0].rtx, D.22426
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	je	.L1143	#,
	.loc 1 3969 0 discriminator 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.592
	movq	8(%rax), %rdx	# folded_arg0.592_845->fld[0].rtx, D.22426
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	je	.L1143	#,
.L1144:
	.loc 1 3969 0 discriminator 2
	movq	global_rtl+16(%rip), %rdx	# global_rtl, D.22426
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.593
	cmpq	%rax, %rdx	# folded_arg0.593, D.22426
	je	.L1143	#,
	.loc 1 3969 0 discriminator 1
	movq	global_rtl+64(%rip), %rdx	# global_rtl, D.22426
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.594
	cmpq	%rax, %rdx	# folded_arg0.594, D.22426
	je	.L1143	#,
	movq	global_rtl+72(%rip), %rdx	# global_rtl, D.22426
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.595
	cmpq	%rax, %rdx	# folded_arg0.595, D.22426
	je	.L1143	#,
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.596
	movzwl	(%rax), %eax	# folded_arg0.596_854->code, D.22425
	cmpw	$75, %ax	#, D.22425
	jne	.L1146	#,
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.597
	movq	16(%rax), %rax	# folded_arg0.597_856->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _857->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1146	#,
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.598
	movq	8(%rax), %rdx	# folded_arg0.598_859->fld[0].rtx, D.22426
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	je	.L1143	#,
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.599
	movq	8(%rax), %rdx	# folded_arg0.599_862->fld[0].rtx, D.22426
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	je	.L1143	#,
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.600
	movq	8(%rax), %rdx	# folded_arg0.600_865->fld[0].rtx, D.22426
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	je	.L1143	#,
.L1146:
	.loc 1 3969 0 discriminator 2
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.601
	movzwl	(%rax), %eax	# folded_arg0.601_868->code, D.22425
	cmpw	$70, %ax	#, D.22425
	je	.L1143	#,
	.loc 1 3974 0 is_stmt 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.602
	movzwl	(%rax), %eax	# folded_arg0.602_870->code, D.22425
	cmpw	$67, %ax	#, D.22425
	je	.L1143	#,
	.loc 1 3975 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.603
	movzwl	(%rax), %eax	# folded_arg0.603_872->code, D.22425
	cmpw	$58, %ax	#, D.22425
	jne	.L1142	#,
.L1143:
	.loc 1 3977 0
	cmpl	$103, -496(%rbp)	#, code
	jne	.L1147	#,
	.loc 1 3978 0
	movq	-136(%rbp), %rax	# false_rtx, D.22423
	jmp	.L1257	#
.L1147:
	.loc 1 3979 0
	cmpl	$102, -496(%rbp)	#, code
	jne	.L1142	#,
	.loc 1 3980 0
	movq	-144(%rbp), %rax	# true_rtx, D.22423
	jmp	.L1257	#
.L1142:
	.loc 1 3985 0
	movq	-416(%rbp), %rdx	# folded_arg0, folded_arg0.604
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.605
	cmpq	%rax, %rdx	# folded_arg1.605, folded_arg0.604
	je	.L1149	#,
	.loc 1 3986 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.606
	movzwl	(%rax), %eax	# folded_arg0.606_878->code, D.22425
	cmpw	$61, %ax	#, D.22425
	jne	.L1150	#,
	.loc 1 3987 0
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.607
	movzwl	(%rax), %eax	# folded_arg1.607_880->code, D.22425
	cmpw	$61, %ax	#, D.22425
	jne	.L1150	#,
	.loc 1 3988 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.609
	movl	8(%rax), %edx	# folded_arg0.609_882->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.610
	cmpl	%eax, %edx	# cached_regno.610, D.22428
	jne	.L1151	#,
	.loc 1 3988 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.611
	testq	%rax, %rax	# cached_cse_reg_info.611
	jne	.L1152	#,
.L1151:
	.loc 1 3988 0 discriminator 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.612
	movl	8(%rax), %eax	# folded_arg0.612_887->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1153	#
.L1152:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.608
.L1153:
	.loc 1 3988 0 discriminator 3
	movl	20(%rax), %ebx	# iftmp.608_86->reg_qty, D.22427
	.loc 1 3989 0 is_stmt 1 discriminator 3
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.614
	movl	8(%rax), %edx	# folded_arg1.614_891->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.615
	cmpl	%eax, %edx	# cached_regno.615, D.22428
	jne	.L1154	#,
	.loc 1 3989 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.616
	testq	%rax, %rax	# cached_cse_reg_info.616
	jne	.L1155	#,
.L1154:
	.loc 1 3989 0 discriminator 1
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.617
	movl	8(%rax), %eax	# folded_arg1.617_896->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1156	#
.L1155:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.613
.L1156:
	.loc 1 3989 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.613_87->reg_qty, D.22427
	.loc 1 3988 0 is_stmt 1 discriminator 3
	cmpl	%eax, %ebx	# D.22427, D.22427
	je	.L1149	#,
.L1150:
	.loc 1 3990 0
	movl	-500(%rbp), %ebx	# mode_arg0, mode_arg0.618
	.loc 1 3991 0
	movl	-500(%rbp), %edx	# mode_arg0, mode_arg0.619
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.620
	movl	%edx, %esi	# mode_arg0.619,
	movq	%rax, %rdi	# folded_arg0.620,
	call	safe_hash	#
	.loc 1 3990 0
	andl	$31, %eax	#, D.22428
	movl	%eax, %ecx	# D.22428, D.22428
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.621
	movl	%ebx, %edx	# mode_arg0.618,
	movl	%ecx, %esi	# D.22428,
	movq	%rax, %rdi	# folded_arg0.621,
	call	lookup	#
	movq	%rax, -128(%rbp)	# tmp1413, p0
	cmpq	$0, -128(%rbp)	#, p0
	je	.L1157	#,
	.loc 1 3993 0
	movl	-500(%rbp), %ebx	# mode_arg0, mode_arg0.622
	.loc 1 3994 0
	movl	-500(%rbp), %edx	# mode_arg0, mode_arg0.623
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.624
	movl	%edx, %esi	# mode_arg0.623,
	movq	%rax, %rdi	# folded_arg1.624,
	call	safe_hash	#
	.loc 1 3993 0
	andl	$31, %eax	#, D.22428
	movl	%eax, %ecx	# D.22428, D.22428
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.625
	movl	%ebx, %edx	# mode_arg0.622,
	movl	%ecx, %esi	# D.22428,
	movq	%rax, %rdi	# folded_arg1.625,
	call	lookup	#
	movq	%rax, -120(%rbp)	# tmp1414, p1
	cmpq	$0, -120(%rbp)	#, p1
	je	.L1157	#,
	.loc 1 3996 0
	movq	-128(%rbp), %rax	# p0, tmp1415
	movq	48(%rax), %rdx	# p0_906->first_same_value, D.22439
	movq	-120(%rbp), %rax	# p1, tmp1416
	movq	48(%rax), %rax	# p1_913->first_same_value, D.22439
	cmpq	%rax, %rdx	# D.22439, D.22439
	jne	.L1157	#,
.L1149:
	.loc 1 4000 0
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.626
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22431
	.loc 1 3999 0
	cmpl	$2, %eax	#, D.22431
	je	.L1158	#,
	.loc 1 4000 0
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.628
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22431
	cmpl	$6, %eax	#, D.22431
	je	.L1158	#,
	.loc 1 4000 0 is_stmt 0 discriminator 1
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.630
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22431
	cmpl	$8, %eax	#, D.22431
	jne	.L1159	#,
.L1158:
	.loc 1 4001 0 is_stmt 1
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.632
	testl	%eax, %eax	# flag_unsafe_math_optimizations.632
	je	.L1160	#,
.L1159:
	.loc 1 4005 0
	cmpl	$103, -496(%rbp)	#, code
	je	.L1161	#,
	.loc 1 4002 0
	cmpl	$106, -496(%rbp)	#, code
	je	.L1161	#,
	.loc 1 4002 0 is_stmt 0 discriminator 1
	cmpl	$104, -496(%rbp)	#, code
	je	.L1161	#,
	.loc 1 4003 0 is_stmt 1
	cmpl	$110, -496(%rbp)	#, code
	je	.L1161	#,
	.loc 1 4003 0 is_stmt 0 discriminator 1
	cmpl	$108, -496(%rbp)	#, code
	je	.L1161	#,
	cmpl	$114, -496(%rbp)	#, code
	je	.L1161	#,
	.loc 1 4004 0 is_stmt 1
	cmpl	$117, -496(%rbp)	#, code
	je	.L1161	#,
	.loc 1 4004 0 is_stmt 0 discriminator 1
	cmpl	$115, -496(%rbp)	#, code
	je	.L1161	#,
	cmpl	$113, -496(%rbp)	#, code
	jne	.L1162	#,
.L1161:
	.loc 1 4005 0 is_stmt 1 discriminator 1
	movq	-144(%rbp), %rax	# true_rtx, iftmp.633
	jmp	.L1163	#
.L1162:
	.loc 1 4005 0 is_stmt 0
	movq	-136(%rbp), %rax	# false_rtx, iftmp.633
.L1163:
	.loc 1 4002 0 is_stmt 1
	jmp	.L1257	#
.L1160:
	.loc 1 4007 0
	cmpl	$114, -496(%rbp)	#, code
	je	.L1164	#,
	.loc 1 4007 0 is_stmt 0 discriminator 1
	cmpl	$117, -496(%rbp)	#, code
	je	.L1164	#,
	cmpl	$115, -496(%rbp)	#, code
	jne	.L1165	#,
.L1164:
	.loc 1 4008 0 is_stmt 1
	movq	-144(%rbp), %rax	# true_rtx, D.22423
	jmp	.L1257	#
.L1165:
	.loc 1 4009 0
	cmpl	$119, -496(%rbp)	#, code
	je	.L1166	#,
	.loc 1 4009 0 is_stmt 0 discriminator 1
	cmpl	$107, -496(%rbp)	#, code
	je	.L1166	#,
	cmpl	$105, -496(%rbp)	#, code
	jne	.L1167	#,
.L1166:
	.loc 1 4010 0 is_stmt 1
	movq	-136(%rbp), %rax	# false_rtx, D.22423
	jmp	.L1257	#
.L1167:
	.loc 1 4009 0 discriminator 1
	jmp	.L1141	#
.L1157:
	.loc 1 4016 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.634
	movzwl	(%rax), %eax	# folded_arg0.634_916->code, D.22425
	cmpw	$61, %ax	#, D.22425
	jne	.L1141	#,
.LBB78:
	.loc 1 4018 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.636
	movl	8(%rax), %edx	# folded_arg0.636_918->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.637
	cmpl	%eax, %edx	# cached_regno.637, D.22428
	jne	.L1168	#,
	.loc 1 4018 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.638
	testq	%rax, %rax	# cached_cse_reg_info.638
	jne	.L1169	#,
.L1168:
	.loc 1 4018 0 discriminator 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.639
	movl	8(%rax), %eax	# folded_arg0.639_923->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1170	#
.L1169:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.635
.L1170:
	.loc 1 4018 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.635_89->reg_qty, tmp1420
	movl	%eax, -436(%rbp)	# tmp1420, qty
	.loc 1 4020 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.641
	movl	8(%rax), %edx	# folded_arg0.641_927->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.642
	cmpl	%eax, %edx	# cached_regno.642, D.22428
	jne	.L1171	#,
	.loc 1 4020 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.643
	testq	%rax, %rax	# cached_cse_reg_info.643
	jne	.L1172	#,
.L1171:
	.loc 1 4020 0 discriminator 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.644
	movl	8(%rax), %eax	# folded_arg0.644_932->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1173	#
.L1172:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.640
.L1173:
	.loc 1 4020 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.640_90->reg_qty, D.22427
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.645
	movl	8(%rax), %eax	# folded_arg0.645_936->fld[0].rtuint, D.22428
	cmpl	%eax, %edx	# D.22427, D.22427
	je	.L1141	#,
.LBB79:
	.loc 1 4022 0 is_stmt 1
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.646
	movl	-436(%rbp), %eax	# qty, tmp1421
	movslq	%eax, %rdx	# tmp1421, D.22435
	movq	%rdx, %rax	# D.22435, tmp1422
	addq	%rax, %rax	# tmp1422
	addq	%rdx, %rax	# D.22435, tmp1422
	salq	$4, %rax	#, tmp1423
	addq	%rcx, %rax	# qty_table.646, tmp1424
	movq	%rax, -112(%rbp)	# tmp1424, ent
	.loc 1 4024 0
	movq	-112(%rbp), %rax	# ent, tmp1425
	movl	40(%rax), %eax	# ent_942->comparison_code, D.22432
	movl	-496(%rbp), %edx	# code, tmp1426
	movl	%edx, %esi	# tmp1426,
	movl	%eax, %edi	# D.22432,
	call	comparison_dominates_p	#
	testl	%eax, %eax	# D.22427
	jne	.L1174	#,
	.loc 1 4025 0
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.647
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22431
	cmpl	$2, %eax	#, D.22431
	je	.L1141	#,
	.loc 1 4025 0 is_stmt 0 discriminator 1
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.649
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22431
	cmpl	$6, %eax	#, D.22431
	je	.L1141	#,
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.651
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22431
	cmpl	$8, %eax	#, D.22431
	je	.L1141	#,
	.loc 1 4026 0 is_stmt 1
	movl	-496(%rbp), %eax	# code, tmp1430
	movl	%eax, %edi	# tmp1430,
	call	reverse_condition	#
	movl	%eax, %edx	#, D.22432
	movq	-112(%rbp), %rax	# ent, tmp1431
	movl	40(%rax), %eax	# ent_942->comparison_code, D.22432
	movl	%edx, %esi	# D.22432,
	movl	%eax, %edi	# D.22432,
	call	comparison_dominates_p	#
	testl	%eax, %eax	# D.22427
	je	.L1141	#,
.L1174:
	.loc 1 4028 0
	movq	-408(%rbp), %rdx	# folded_arg1, folded_arg1.653
	movq	-112(%rbp), %rax	# ent, tmp1432
	movq	16(%rax), %rax	# ent_942->comparison_const, D.22426
	movq	%rdx, %rsi	# folded_arg1.653,
	movq	%rax, %rdi	# D.22426,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22427
	jne	.L1175	#,
	.loc 1 4029 0
	cmpq	$0, -384(%rbp)	#, const_arg1
	je	.L1176	#,
	.loc 1 4030 0
	movq	-112(%rbp), %rax	# ent, tmp1433
	movq	16(%rax), %rax	# ent_942->comparison_const, D.22426
	movq	-384(%rbp), %rdx	# const_arg1, tmp1434
	movq	%rdx, %rsi	# tmp1434,
	movq	%rax, %rdi	# D.22426,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22427
	jne	.L1175	#,
.L1176:
	.loc 1 4032 0
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.654
	movzwl	(%rax), %eax	# folded_arg1.654_962->code, D.22425
	cmpw	$61, %ax	#, D.22425
	jne	.L1141	#,
	.loc 1 4033 0
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.656
	movl	8(%rax), %edx	# folded_arg1.656_964->fld[0].rtuint, D.22428
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.657
	cmpl	%eax, %edx	# cached_regno.657, D.22428
	jne	.L1177	#,
	.loc 1 4033 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.658
	testq	%rax, %rax	# cached_cse_reg_info.658
	jne	.L1178	#,
.L1177:
	.loc 1 4033 0 discriminator 1
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.659
	movl	8(%rax), %eax	# folded_arg1.659_969->fld[0].rtuint, D.22428
	movl	%eax, %edi	# D.22428,
	call	get_cse_reg_info	#
	jmp	.L1179	#
.L1178:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.655
.L1179:
	.loc 1 4033 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.655_91->reg_qty, D.22427
	movq	-112(%rbp), %rax	# ent, tmp1435
	movl	24(%rax), %eax	# ent_942->comparison_qty, D.22427
	cmpl	%eax, %edx	# D.22427, D.22427
	jne	.L1141	#,
.L1175:
	.loc 1 4034 0 is_stmt 1
	movq	-112(%rbp), %rax	# ent, tmp1436
	movl	40(%rax), %eax	# ent_942->comparison_code, D.22432
	movl	-496(%rbp), %edx	# code, tmp1437
	movl	%edx, %esi	# tmp1437,
	movl	%eax, %edi	# D.22432,
	call	comparison_dominates_p	#
	.loc 1 4035 0
	testl	%eax, %eax	# D.22427
	je	.L1180	#,
	.loc 1 4035 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# true_rtx, iftmp.660
	jmp	.L1181	#
.L1180:
	.loc 1 4035 0 discriminator 2
	movq	-136(%rbp), %rax	# false_rtx, iftmp.660
.L1181:
	.loc 1 4034 0 is_stmt 1
	jmp	.L1257	#
.L1141:
.L1138:
.LBE79:
.LBE78:
.LBE77:
	.loc 1 4045 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.22426
	cmpq	-384(%rbp), %rax	# const_arg1, D.22426
	jne	.L1182	#,
.LBB80:
	.loc 1 4047 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.661
	movl	$84, %esi	#,
	movq	%rax, %rdi	# folded_arg0.661,
	call	lookup_as_function	#
	movq	%rax, -104(%rbp)	# tmp1438, y
	.loc 1 4050 0
	cmpq	$0, -104(%rbp)	#, y
	je	.L1182	#,
	.loc 1 4051 0
	movq	-104(%rbp), %rax	# y, tmp1439
	movq	16(%rax), %rax	# y_996->fld[1].rtx, D.22426
	movq	%rax, %rdi	# D.22426,
	call	equiv_constant	#
	movq	%rax, -96(%rbp)	# tmp1440, inner_const
	cmpq	$0, -96(%rbp)	#, inner_const
	je	.L1182	#,
	.loc 1 4052 0
	movq	-96(%rbp), %rax	# inner_const, tmp1441
	movzwl	(%rax), %eax	# inner_const_998->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1182	#,
	.loc 1 4053 0
	movq	-96(%rbp), %rax	# inner_const, tmp1442
	movq	8(%rax), %rax	# inner_const_998->fld[0].rtwint, D.22433
	testq	%rax, %rax	# D.22433
	je	.L1182	#,
.LBB81:
	.loc 1 4055 0
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.662
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22425
	movzwl	%ax, %eax	# D.22425, D.22427
	subl	$1, %eax	#, tmp1444
	movl	%eax, -432(%rbp)	# tmp1444, sign_bitnum
	.loc 1 4057 0
	cmpl	$64, -432(%rbp)	#, sign_bitnum
	jg	.L1183	#,
	.loc 1 4057 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# inner_const, tmp1445
	movq	8(%rax), %rdx	# inner_const_998->fld[0].rtwint, D.22433
	movl	-432(%rbp), %eax	# sign_bitnum, tmp1446
	movl	%eax, %ecx	# tmp1446, tmp1551
	sarq	%cl, %rdx	# tmp1551, D.22433
	movq	%rdx, %rax	# D.22433, D.22433
	andl	$1, %eax	#, D.22433
	testq	%rax, %rax	# D.22433
	je	.L1183	#,
	.loc 1 4057 0 discriminator 3
	movl	$1, %eax	#, iftmp.664
	jmp	.L1184	#
.L1183:
	.loc 1 4057 0 discriminator 2
	movl	$0, %eax	#, iftmp.664
.L1184:
	.loc 1 4056 0 is_stmt 1
	movl	%eax, -428(%rbp)	# iftmp.664, has_sign
	.loc 1 4059 0
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, tmp1447
	movq	%rax, -88(%rbp)	# tmp1447, true_rtx
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp1448
	movq	%rax, -80(%rbp)	# tmp1448, false_rtx
	.loc 1 4070 0
	movl	-496(%rbp), %eax	# code, tmp1450
	subl	$102, %eax	#, tmp1449
	cmpl	$5, %eax	#, tmp1449
	ja	.L1259	#,
	movl	%eax, %eax	# tmp1449, tmp1451
	movq	.L1187(,%rax,8), %rax	#, tmp1452
	jmp	*%rax	# tmp1452
	.section	.rodata
	.align 8
	.align 4
.L1187:
	.quad	.L1186
	.quad	.L1188
	.quad	.L1189
	.quad	.L1189
	.quad	.L1190
	.quad	.L1190
	.text
.L1188:
	.loc 1 4073 0
	movq	-80(%rbp), %rax	# false_rtx, D.22423
	jmp	.L1257	#
.L1186:
	.loc 1 4075 0
	movq	-88(%rbp), %rax	# true_rtx, D.22423
	jmp	.L1257	#
.L1190:
	.loc 1 4077 0
	cmpl	$0, -428(%rbp)	#, has_sign
	je	.L1191	#,
	.loc 1 4078 0
	movq	-88(%rbp), %rax	# true_rtx, D.22423
	jmp	.L1257	#
.L1191:
	.loc 1 4079 0
	jmp	.L1182	#
.L1189:
	.loc 1 4081 0
	cmpl	$0, -428(%rbp)	#, has_sign
	je	.L1192	#,
	.loc 1 4082 0
	movq	-80(%rbp), %rax	# false_rtx, D.22423
	jmp	.L1257	#
.L1192:
	.loc 1 4083 0
	jmp	.L1182	#
.L1259:
	.loc 1 4085 0
	nop
.L1182:
.LBE81:
.LBE80:
	.loc 1 4090 0
	cmpq	$0, -384(%rbp)	#, const_arg1
	je	.L1193	#,
	.loc 1 4090 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rcx	# const_arg1, iftmp.665
	jmp	.L1194	#
.L1193:
	.loc 1 4090 0 discriminator 2
	movq	-408(%rbp), %rcx	# folded_arg1, iftmp.665
.L1194:
	.loc 1 4090 0 discriminator 3
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1195	#,
	.loc 1 4090 0 discriminator 4
	movq	-392(%rbp), %rdx	# const_arg0, iftmp.666
	jmp	.L1196	#
.L1195:
	.loc 1 4090 0 discriminator 5
	movq	-416(%rbp), %rdx	# folded_arg0, iftmp.666
.L1196:
	.loc 1 4091 0 is_stmt 1 discriminator 6
	movl	-500(%rbp), %eax	# mode_arg0, mode_arg0.668
	.loc 1 4090 0 discriminator 6
	testl	%eax, %eax	# mode_arg0.668
	jne	.L1197	#,
	.loc 1 4093 0
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1198	#,
	.loc 1 4093 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# const_arg0, iftmp.670
	jmp	.L1199	#
.L1198:
	.loc 1 4093 0 discriminator 2
	movq	-416(%rbp), %rax	# folded_arg0, iftmp.670
.L1199:
	.loc 1 4093 0 discriminator 3
	movzbl	2(%rax), %eax	# iftmp.670_98->mode, D.22424
	.loc 1 4090 0 is_stmt 1 discriminator 3
	testb	%al, %al	# D.22424
	je	.L1200	#,
	.loc 1 4097 0
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1201	#,
	.loc 1 4097 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# const_arg0, iftmp.671
	jmp	.L1202	#
.L1201:
	.loc 1 4097 0 discriminator 2
	movq	-416(%rbp), %rax	# folded_arg0, iftmp.671
.L1202:
	.loc 1 4097 0 discriminator 1
	movzbl	2(%rax), %eax	# iftmp.671_99->mode, D.22424
	.loc 1 4090 0 is_stmt 1 discriminator 1
	movzbl	%al, %eax	# D.22424, iftmp.669
	jmp	.L1206	#
.L1200:
	.loc 1 4100 0
	cmpq	$0, -384(%rbp)	#, const_arg1
	je	.L1204	#,
	.loc 1 4100 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# const_arg1, iftmp.672
	jmp	.L1205	#
.L1204:
	.loc 1 4100 0 discriminator 2
	movq	-408(%rbp), %rax	# folded_arg1, iftmp.672
.L1205:
	.loc 1 4100 0 discriminator 3
	movzbl	2(%rax), %eax	# iftmp.672_100->mode, D.22424
	.loc 1 4090 0 is_stmt 1 discriminator 3
	movzbl	%al, %eax	# D.22424, iftmp.669
	jmp	.L1206	#
.L1197:
	.loc 1 4090 0 is_stmt 0 discriminator 7
	movl	-500(%rbp), %eax	# mode_arg0, iftmp.667
.L1206:
	.loc 1 4090 0 discriminator 8
	movl	-496(%rbp), %edi	# code, tmp1453
	movl	%eax, %esi	# iftmp.667,
	call	simplify_relational_operation	#
	movq	%rax, -400(%rbp)	# tmp1454, new
	.loc 1 4115 0 is_stmt 1 discriminator 8
	jmp	.L1123	#
.L1126:
	.loc 1 4119 0
	movl	-496(%rbp), %eax	# code, tmp1456
	subl	$75, %eax	#, tmp1455
	cmpl	$20, %eax	#, tmp1455
	ja	.L1260	#,
	movl	%eax, %eax	# tmp1455, tmp1457
	movq	.L1209(,%rax,8), %rax	#, tmp1458
	jmp	*%rax	# tmp1458
	.section	.rodata
	.align 8
	.align 4
.L1209:
	.quad	.L1208
	.quad	.L1210
	.quad	.L1260
	.quad	.L1211
	.quad	.L1211
	.quad	.L1260
	.quad	.L1211
	.quad	.L1260
	.quad	.L1211
	.quad	.L1211
	.quad	.L1211
	.quad	.L1260
	.quad	.L1211
	.quad	.L1260
	.quad	.L1211
	.quad	.L1211
	.quad	.L1260
	.quad	.L1211
	.quad	.L1211
	.quad	.L1211
	.quad	.L1211
	.text
.L1208:
	.loc 1 4126 0
	cmpq	$0, -384(%rbp)	#, const_arg1
	je	.L1212	#,
	.loc 1 4126 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# const_arg1, tmp1459
	movzwl	(%rax), %eax	# const_arg1_35->code, D.22425
	cmpw	$67, %ax	#, D.22425
	jne	.L1212	#,
.LBB82:
	.loc 1 4129 0 is_stmt 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.674
	movzwl	(%rax), %eax	# folded_arg0.674_1038->code, D.22425
	.loc 1 4130 0
	cmpw	$76, %ax	#, D.22425
	je	.L1213	#,
	.loc 1 4130 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.675
	movl	$76, %esi	#,
	movq	%rax, %rdi	# folded_arg0.675,
	call	lookup_as_function	#
	jmp	.L1214	#
.L1213:
	.loc 1 4130 0 discriminator 2
	movq	-416(%rbp), %rax	# folded_arg0, iftmp.673
.L1214:
	.loc 1 4128 0 is_stmt 1
	movq	%rax, -72(%rbp)	# iftmp.673, y
	.loc 1 4132 0
	cmpq	$0, -72(%rbp)	#, y
	je	.L1215	#,
	.loc 1 4132 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# y, tmp1460
	movq	16(%rax), %rax	# y_1043->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _1044->code, D.22425
	cmpw	$67, %ax	#, D.22425
	jne	.L1215	#,
	.loc 1 4133 0 is_stmt 1
	movq	-72(%rbp), %rax	# y, tmp1461
	movq	16(%rax), %rax	# y_1043->fld[1].rtx, D.22426
	movq	8(%rax), %rdx	# _1046->fld[0].rtx, D.22426
	movq	-384(%rbp), %rax	# const_arg1, tmp1462
	movq	8(%rax), %rax	# const_arg1_35->fld[0].rtx, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	jne	.L1215	#,
	.loc 1 4134 0
	movq	-72(%rbp), %rax	# y, tmp1463
	movq	8(%rax), %rax	# y_1043->fld[0].rtx, D.22423
	jmp	.L1257	#
.L1215:
	.loc 1 4137 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.677
	movzwl	(%rax), %eax	# folded_arg0.677_1050->code, D.22425
	.loc 1 4138 0
	cmpw	$58, %ax	#, D.22425
	je	.L1216	#,
	.loc 1 4138 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.678
	movl	$58, %esi	#,
	movq	%rax, %rdi	# folded_arg0.678,
	call	lookup_as_function	#
	jmp	.L1217	#
.L1216:
	.loc 1 4138 0 discriminator 2
	movq	-416(%rbp), %rax	# folded_arg0, iftmp.676
.L1217:
	.loc 1 4137 0 is_stmt 1
	movq	%rax, -72(%rbp)	# iftmp.676, y
	cmpq	$0, -72(%rbp)	#, y
	je	.L1212	#,
	.loc 1 4139 0
	movq	-72(%rbp), %rax	# y, tmp1464
	movq	8(%rax), %rax	# y_1055->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _1056->code, D.22425
	cmpw	$76, %ax	#, D.22425
	jne	.L1212	#,
	.loc 1 4140 0
	movq	-72(%rbp), %rax	# y, tmp1465
	movq	8(%rax), %rax	# y_1055->fld[0].rtx, D.22426
	movq	16(%rax), %rax	# _1058->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _1059->code, D.22425
	cmpw	$67, %ax	#, D.22425
	jne	.L1212	#,
	.loc 1 4141 0
	movq	-72(%rbp), %rax	# y, tmp1466
	movq	8(%rax), %rax	# y_1055->fld[0].rtx, D.22426
	movq	16(%rax), %rax	# _1061->fld[1].rtx, D.22426
	movq	8(%rax), %rdx	# _1062->fld[0].rtx, D.22426
	movq	-384(%rbp), %rax	# const_arg1, tmp1467
	movq	8(%rax), %rax	# const_arg1_35->fld[0].rtx, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	jne	.L1212	#,
	.loc 1 4142 0
	movq	-72(%rbp), %rax	# y, tmp1468
	movq	8(%rax), %rax	# y_1055->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _1065->fld[0].rtx, D.22423
	jmp	.L1257	#
.L1212:
.LBE82:
	.loc 1 4146 0
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1218	#,
	.loc 1 4146 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# const_arg0, tmp1469
	movzwl	(%rax), %eax	# const_arg0_29->code, D.22425
	cmpw	$67, %ax	#, D.22425
	jne	.L1218	#,
.LBB83:
	.loc 1 4149 0 is_stmt 1
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.680
	movzwl	(%rax), %eax	# folded_arg1.680_1068->code, D.22425
	.loc 1 4150 0
	cmpw	$76, %ax	#, D.22425
	je	.L1219	#,
	.loc 1 4150 0 is_stmt 0 discriminator 1
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.681
	movl	$76, %esi	#,
	movq	%rax, %rdi	# folded_arg1.681,
	call	lookup_as_function	#
	jmp	.L1220	#
.L1219:
	.loc 1 4150 0 discriminator 2
	movq	-408(%rbp), %rax	# folded_arg1, iftmp.679
.L1220:
	.loc 1 4148 0 is_stmt 1
	movq	%rax, -64(%rbp)	# iftmp.679, y
	.loc 1 4152 0
	cmpq	$0, -64(%rbp)	#, y
	je	.L1221	#,
	.loc 1 4152 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# y, tmp1470
	movq	16(%rax), %rax	# y_1073->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _1074->code, D.22425
	cmpw	$67, %ax	#, D.22425
	jne	.L1221	#,
	.loc 1 4153 0 is_stmt 1
	movq	-64(%rbp), %rax	# y, tmp1471
	movq	16(%rax), %rax	# y_1073->fld[1].rtx, D.22426
	movq	8(%rax), %rdx	# _1076->fld[0].rtx, D.22426
	movq	-392(%rbp), %rax	# const_arg0, tmp1472
	movq	8(%rax), %rax	# const_arg0_29->fld[0].rtx, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	jne	.L1221	#,
	.loc 1 4154 0
	movq	-64(%rbp), %rax	# y, tmp1473
	movq	8(%rax), %rax	# y_1073->fld[0].rtx, D.22423
	jmp	.L1257	#
.L1221:
	.loc 1 4157 0
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.683
	movzwl	(%rax), %eax	# folded_arg1.683_1080->code, D.22425
	.loc 1 4158 0
	cmpw	$58, %ax	#, D.22425
	je	.L1222	#,
	.loc 1 4158 0 is_stmt 0 discriminator 1
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.684
	movl	$58, %esi	#,
	movq	%rax, %rdi	# folded_arg1.684,
	call	lookup_as_function	#
	jmp	.L1223	#
.L1222:
	.loc 1 4158 0 discriminator 2
	movq	-408(%rbp), %rax	# folded_arg1, iftmp.682
.L1223:
	.loc 1 4157 0 is_stmt 1
	movq	%rax, -64(%rbp)	# iftmp.682, y
	cmpq	$0, -64(%rbp)	#, y
	je	.L1218	#,
	.loc 1 4159 0
	movq	-64(%rbp), %rax	# y, tmp1474
	movq	8(%rax), %rax	# y_1085->fld[0].rtx, D.22426
	movzwl	(%rax), %eax	# _1086->code, D.22425
	cmpw	$76, %ax	#, D.22425
	jne	.L1218	#,
	.loc 1 4160 0
	movq	-64(%rbp), %rax	# y, tmp1475
	movq	8(%rax), %rax	# y_1085->fld[0].rtx, D.22426
	movq	16(%rax), %rax	# _1088->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _1089->code, D.22425
	cmpw	$67, %ax	#, D.22425
	jne	.L1218	#,
	.loc 1 4161 0
	movq	-64(%rbp), %rax	# y, tmp1476
	movq	8(%rax), %rax	# y_1085->fld[0].rtx, D.22426
	movq	16(%rax), %rax	# _1091->fld[1].rtx, D.22426
	movq	8(%rax), %rdx	# _1092->fld[0].rtx, D.22426
	movq	-392(%rbp), %rax	# const_arg0, tmp1477
	movq	8(%rax), %rax	# const_arg0_29->fld[0].rtx, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	jne	.L1218	#,
	.loc 1 4162 0
	movq	-64(%rbp), %rax	# y, tmp1478
	movq	8(%rax), %rax	# y_1085->fld[0].rtx, D.22426
	movq	8(%rax), %rax	# _1095->fld[0].rtx, D.22423
	jmp	.L1257	#
.L1218:
.LBE83:
	.loc 1 4175 0
	cmpq	$0, -384(%rbp)	#, const_arg1
	je	.L1224	#,
	.loc 1 4175 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# const_arg1, tmp1479
	movzwl	(%rax), %eax	# const_arg1_35->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1224	#,
	.loc 1 4176 0 is_stmt 1
	movq	-384(%rbp), %rax	# const_arg1, tmp1480
	movq	8(%rax), %rax	# const_arg1_35->fld[0].rtwint, D.22433
	testq	%rax, %rax	# D.22433
	jns	.L1224	#,
	.loc 1 4184 0
	movq	-384(%rbp), %rax	# const_arg1, tmp1481
	movq	8(%rax), %rdx	# const_arg1_35->fld[0].rtwint, D.22433
	movabsq	$-9223372036854775808, %rax	#, tmp1482
	cmpq	%rax, %rdx	# tmp1482, D.22433
	je	.L1224	#,
	.loc 1 4186 0
	movq	-408(%rbp), %rax	# folded_arg1, folded_arg1.685
	movzwl	(%rax), %eax	# folded_arg1.685_1100->code, D.22425
	cmpw	$61, %ax	#, D.22425
	jne	.L1224	#,
.LBB84:
	.loc 1 4188 0
	movq	-384(%rbp), %rax	# const_arg1, tmp1483
	movq	8(%rax), %rax	# const_arg1_35->fld[0].rtwint, D.22433
	negq	%rax	# D.22433
	movq	%rax, %rsi	# D.22433,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -56(%rbp)	# tmp1484, new_const
	.loc 1 4190 0
	movl	-472(%rbp), %edx	# mode, tmp1485
	movq	-56(%rbp), %rax	# new_const, tmp1486
	movl	%edx, %esi	# tmp1485,
	movq	%rax, %rdi	# tmp1486,
	call	safe_hash	#
	andl	$31, %eax	#, D.22428
	movl	%eax, %ecx	# D.22428, D.22428
	.loc 1 4189 0
	movl	-472(%rbp), %edx	# mode, tmp1487
	movq	-56(%rbp), %rax	# new_const, tmp1488
	movl	%ecx, %esi	# D.22428,
	movq	%rax, %rdi	# tmp1488,
	call	lookup	#
	movq	%rax, -272(%rbp)	# tmp1489, p
	.loc 1 4193 0
	cmpq	$0, -272(%rbp)	#, p
	je	.L1224	#,
	.loc 1 4194 0
	movq	-272(%rbp), %rax	# p, tmp1490
	movq	48(%rax), %rax	# p_1107->first_same_value, tmp1491
	movq	%rax, -272(%rbp)	# tmp1491, p
	jmp	.L1225	#
.L1227:
	.loc 1 4195 0
	movq	-272(%rbp), %rax	# p, tmp1492
	movq	(%rax), %rax	# p_58->exp, D.22426
	movzwl	(%rax), %eax	# _1109->code, D.22425
	cmpw	$61, %ax	#, D.22425
	jne	.L1226	#,
	.loc 1 4196 0
	movq	-272(%rbp), %rax	# p, tmp1493
	movq	(%rax), %rax	# p_58->exp, D.22426
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22426,
	call	canon_reg	#
	movq	%rax, %rcx	#, D.22426
	movq	-416(%rbp), %rdx	# folded_arg0, folded_arg0.686
	movl	-472(%rbp), %eax	# mode, tmp1494
	movl	%eax, %esi	# tmp1494,
	movl	$76, %edi	#,
	call	simplify_gen_binary	#
	jmp	.L1257	#
.L1226:
	.loc 1 4194 0
	movq	-272(%rbp), %rax	# p, tmp1495
	movq	32(%rax), %rax	# p_58->next_same_value, tmp1496
	movq	%rax, -272(%rbp)	# tmp1496, p
.L1225:
	.loc 1 4194 0 is_stmt 0 discriminator 1
	cmpq	$0, -272(%rbp)	#, p
	jne	.L1227	#,
.L1224:
.LBE84:
	.loc 1 4199 0 is_stmt 1
	jmp	.L1211	#
.L1210:
	.loc 1 4204 0
	cmpq	$0, -384(%rbp)	#, const_arg1
	je	.L1211	#,
	.loc 1 4204 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# const_arg1, tmp1497
	movzwl	(%rax), %eax	# const_arg1_35->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1211	#,
.LBB85:
	.loc 1 4206 0 is_stmt 1
	movq	-520(%rbp), %rax	# x, tmp1498
	movq	8(%rax), %rax	# x_5->fld[0].rtx, D.22426
	movl	$75, %esi	#,
	movq	%rax, %rdi	# D.22426,
	call	lookup_as_function	#
	movq	%rax, -48(%rbp)	# tmp1499, y
	.loc 1 4207 0
	cmpq	$0, -48(%rbp)	#, y
	je	.L1211	#,
	.loc 1 4207 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# y, tmp1500
	movq	16(%rax), %rax	# y_1118->fld[1].rtx, D.22426
	movzwl	(%rax), %eax	# _1119->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1211	#,
	.loc 1 4208 0 is_stmt 1
	movq	-384(%rbp), %rax	# const_arg1, tmp1501
	movq	8(%rax), %rax	# const_arg1_35->fld[0].rtwint, D.22433
	negq	%rax	# D.22433
	movq	%rax, %rbx	# D.22433, D.22433
	movq	-48(%rbp), %rax	# y, tmp1502
	movq	%rax, %rdi	# tmp1502,
	call	copy_rtx	#
	movq	%rbx, %rsi	# D.22433,
	movq	%rax, %rdi	# D.22426,
	call	plus_constant_wide	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22426,
	call	fold_rtx	#
	jmp	.L1257	#
.L1211:
.LBE85:
	.loc 1 4227 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.687
	movzwl	(%rax), %eax	# folded_arg0.687_1126->code, D.22425
	cmpw	$61, %ax	#, D.22425
	jne	.L1228	#,
	.loc 1 4228 0
	cmpq	$0, -384(%rbp)	#, const_arg1
	je	.L1228	#,
	.loc 1 4228 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# const_arg1, tmp1503
	movzwl	(%rax), %eax	# const_arg1_35->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1228	#,
.LBB86:
	.loc 1 4231 0 is_stmt 1
	cmpl	$87, -496(%rbp)	#, code
	je	.L1229	#,
	.loc 1 4231 0 is_stmt 0 discriminator 2
	cmpl	$89, -496(%rbp)	#, code
	je	.L1229	#,
	.loc 1 4231 0 discriminator 1
	cmpl	$90, -496(%rbp)	#, code
	jne	.L1230	#,
.L1229:
	movl	$1, %eax	#, iftmp.688
	jmp	.L1231	#
.L1230:
	.loc 1 4231 0 discriminator 3
	movl	$0, %eax	#, iftmp.688
.L1231:
	.loc 1 4230 0 is_stmt 1
	movl	%eax, -424(%rbp)	# iftmp.688, is_shift
	.loc 1 4232 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.689
	movl	-496(%rbp), %edx	# code, tmp1504
	movl	%edx, %esi	# tmp1504,
	movq	%rax, %rdi	# folded_arg0.689,
	call	lookup_as_function	#
	movq	%rax, -264(%rbp)	# tmp1505, y
	.loc 1 4237 0
	cmpq	$0, -264(%rbp)	#, y
	je	.L1232	#,
	.loc 1 4239 0
	movq	-264(%rbp), %rax	# y, tmp1506
	movq	16(%rax), %rax	# y_1133->fld[1].rtx, D.22426
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22426,
	call	fold_rtx	#
	.loc 1 4238 0
	movq	%rax, %rdi	# D.22426,
	call	equiv_constant	#
	movq	%rax, -40(%rbp)	# tmp1507, inner_const
	cmpq	$0, -40(%rbp)	#, inner_const
	je	.L1232	#,
	.loc 1 4240 0
	movq	-40(%rbp), %rax	# inner_const, tmp1508
	movzwl	(%rax), %eax	# inner_const_1136->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1232	#,
	.loc 1 4246 0
	movq	-264(%rbp), %rax	# y, tmp1509
	movq	8(%rax), %rdx	# y_1133->fld[0].rtx, D.22426
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.690
	cmpq	%rax, %rdx	# folded_arg0.690, D.22426
	je	.L1232	#,
	.loc 1 4269 0
	cmpl	$78, -496(%rbp)	#, code
	je	.L1233	#,
	.loc 1 4269 0 is_stmt 0 discriminator 1
	cmpl	$79, -496(%rbp)	#, code
	je	.L1233	#,
	cmpl	$81, -496(%rbp)	#, code
	je	.L1233	#,
	cmpl	$0, -424(%rbp)	#, is_shift
	jne	.L1234	#,
	.loc 1 4270 0 is_stmt 1
	cmpl	$75, -496(%rbp)	#, code
	je	.L1234	#,
	.loc 1 4270 0 is_stmt 0 discriminator 1
	cmpl	$76, -496(%rbp)	#, code
	je	.L1234	#,
	.loc 1 4269 0 is_stmt 1
	movl	-496(%rbp), %eax	# code, iftmp.692
	jmp	.L1236	#
.L1234:
	.loc 1 4269 0 is_stmt 0 discriminator 3
	movl	$75, %eax	#, iftmp.692
	jmp	.L1236	#
.L1233:
	.loc 1 4269 0 discriminator 2
	movl	$78, %eax	#, iftmp.691
.L1236:
	.loc 1 4269 0 discriminator 5
	movl	%eax, -420(%rbp)	# iftmp.691, associate_code
	.loc 1 4272 0 is_stmt 1 discriminator 5
	movq	-40(%rbp), %rcx	# inner_const, tmp1510
	movq	-384(%rbp), %rdx	# const_arg1, tmp1511
	movl	-472(%rbp), %esi	# mode, tmp1512
	movl	-420(%rbp), %eax	# associate_code, tmp1513
	movl	%eax, %edi	# tmp1513,
	call	simplify_binary_operation	#
	movq	%rax, -256(%rbp)	# tmp1514, new_const
	.loc 1 4275 0 discriminator 5
	cmpq	$0, -256(%rbp)	#, new_const
	jne	.L1237	#,
	.loc 1 4276 0
	jmp	.L1232	#
.L1237:
	.loc 1 4284 0
	cmpl	$0, -424(%rbp)	#, is_shift
	je	.L1238	#,
	.loc 1 4284 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# new_const, tmp1515
	movzwl	(%rax), %eax	# new_const_1145->code, D.22425
	cmpw	$54, %ax	#, D.22425
	jne	.L1238	#,
	.loc 1 4285 0 is_stmt 1
	movq	-256(%rbp), %rax	# new_const, tmp1516
	movq	8(%rax), %rdx	# new_const_1145->fld[0].rtwint, D.22433
	movl	-472(%rbp), %eax	# mode, mode.693
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22425
	movzwl	%ax, %eax	# D.22425, D.22433
	cmpq	%rax, %rdx	# D.22433, D.22433
	jl	.L1238	#,
	.loc 1 4289 0
	cmpl	$89, -496(%rbp)	#, code
	jne	.L1239	#,
	.loc 1 4290 0
	movl	-472(%rbp), %eax	# mode, mode.694
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22425
	movzwl	%ax, %eax	# D.22425, D.22427
	subl	$1, %eax	#, D.22427
	cltq
	movq	%rax, %rsi	# D.22433,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -256(%rbp)	# tmp1519, new_const
	jmp	.L1238	#
.L1239:
	.loc 1 4292 0
	jmp	.L1232	#
.L1238:
	.loc 1 4295 0
	movq	-264(%rbp), %rax	# y, tmp1520
	movq	8(%rax), %rax	# y_1133->fld[0].rtx, D.22426
	movq	%rax, %rdi	# D.22426,
	call	copy_rtx	#
	movq	%rax, -264(%rbp)	# tmp1521, y
	.loc 1 4301 0
	movq	-416(%rbp), %rax	# folded_arg0, folded_arg0.695
	movq	-264(%rbp), %rdx	# y, tmp1522
	movq	%rdx, %rsi	# tmp1522,
	movq	%rax, %rdi	# folded_arg0.695,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.22427
	jne	.L1240	#,
	.loc 1 4302 0
	movq	-528(%rbp), %rdx	# insn, tmp1523
	movq	-264(%rbp), %rax	# y, tmp1524
	movq	%rdx, %rsi	# tmp1523,
	movq	%rax, %rdi	# tmp1524,
	call	fold_rtx	#
	movq	%rax, -264(%rbp)	# tmp1525, y
.L1240:
	.loc 1 4304 0
	movq	-256(%rbp), %rcx	# new_const, tmp1526
	movq	-264(%rbp), %rdx	# y, tmp1527
	movl	-472(%rbp), %esi	# mode, tmp1528
	movl	-496(%rbp), %eax	# code, tmp1529
	movl	%eax, %edi	# tmp1529,
	call	simplify_gen_binary	#
	jmp	.L1257	#
.L1228:
.LBE86:
	.loc 1 4306 0
	jmp	.L1232	#
.L1260:
	.loc 1 4309 0
	nop
.L1232:
	.loc 1 4312 0
	cmpq	$0, -384(%rbp)	#, const_arg1
	je	.L1241	#,
	.loc 1 4312 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rdx	# const_arg1, iftmp.696
	jmp	.L1242	#
.L1241:
	.loc 1 4312 0 discriminator 2
	movq	-408(%rbp), %rdx	# folded_arg1, iftmp.696
.L1242:
	.loc 1 4312 0 discriminator 3
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1243	#,
	.loc 1 4312 0 discriminator 4
	movq	-392(%rbp), %rax	# const_arg0, iftmp.697
	jmp	.L1244	#
.L1243:
	.loc 1 4312 0 discriminator 5
	movq	-416(%rbp), %rax	# folded_arg0, iftmp.697
.L1244:
	.loc 1 4312 0 discriminator 6
	movl	-472(%rbp), %esi	# mode, tmp1530
	movl	-496(%rbp), %edi	# code, tmp1531
	movq	%rdx, %rcx	# iftmp.696,
	movq	%rax, %rdx	# iftmp.697,
	call	simplify_binary_operation	#
	movq	%rax, -400(%rbp)	# tmp1532, new
	.loc 1 4315 0 is_stmt 1 discriminator 6
	jmp	.L1123	#
.L1129:
	.loc 1 4319 0
	cmpl	$135, -496(%rbp)	#, code
	jne	.L1245	#,
	.loc 1 4319 0 is_stmt 0 discriminator 1
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1245	#,
	.loc 1 4320 0 is_stmt 1
	movq	-392(%rbp), %rax	# const_arg0, tmp1533
	movzwl	(%rax), %eax	# const_arg0_29->code, D.22425
	cmpw	$134, %ax	#, D.22425
	jne	.L1245	#,
	.loc 1 4321 0
	movq	-392(%rbp), %rax	# const_arg0, tmp1534
	movq	8(%rax), %rax	# const_arg0_29->fld[0].rtx, D.22426
	movq	-384(%rbp), %rdx	# const_arg1, tmp1535
	movq	%rdx, %rsi	# tmp1535,
	movq	%rax, %rdi	# D.22426,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22427
	je	.L1245	#,
	.loc 1 4322 0
	movq	-384(%rbp), %rax	# const_arg1, D.22423
	jmp	.L1257	#
.L1245:
	.loc 1 4323 0
	jmp	.L1123	#
.L1127:
	.loc 1 4327 0
	cmpq	$0, -376(%rbp)	#, const_arg2
	jne	.L1246	#,
	.loc 1 4327 0 is_stmt 0 discriminator 1
	movq	-520(%rbp), %rax	# x, tmp1536
	movq	24(%rax), %rcx	# x_5->fld[2].rtx, iftmp.698
	jmp	.L1247	#
.L1246:
	.loc 1 4327 0 discriminator 2
	movq	-376(%rbp), %rcx	# const_arg2, iftmp.698
.L1247:
	.loc 1 4327 0 discriminator 3
	cmpq	$0, -384(%rbp)	#, const_arg1
	je	.L1248	#,
	.loc 1 4327 0 discriminator 4
	movq	-384(%rbp), %rdx	# const_arg1, iftmp.699
	jmp	.L1249	#
.L1248:
	.loc 1 4327 0 discriminator 5
	movq	-408(%rbp), %rdx	# folded_arg1, iftmp.699
.L1249:
	.loc 1 4327 0 discriminator 6
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1250	#,
	.loc 1 4327 0 discriminator 7
	movq	-392(%rbp), %rax	# const_arg0, iftmp.700
	jmp	.L1251	#
.L1250:
	.loc 1 4327 0 discriminator 8
	movq	-416(%rbp), %rax	# folded_arg0, iftmp.700
.L1251:
	.loc 1 4327 0 discriminator 9
	movl	-500(%rbp), %r10d	# mode_arg0, mode_arg0.701
	movl	-472(%rbp), %esi	# mode, tmp1537
	movl	-496(%rbp), %edi	# code, tmp1538
	movq	%rcx, %r9	# iftmp.698,
	movq	%rdx, %r8	# iftmp.699,
	movq	%rax, %rcx	# iftmp.700,
	movl	%r10d, %edx	# mode_arg0.701,
	call	simplify_ternary_operation	#
	movq	%rax, -400(%rbp)	# tmp1539, new
	.loc 1 4331 0 is_stmt 1 discriminator 9
	jmp	.L1123	#
.L1130:
	.loc 1 4335 0
	cmpl	$140, -496(%rbp)	#, code
	jne	.L1252	#,
	.loc 1 4336 0
	cmpq	$0, -392(%rbp)	#, const_arg0
	je	.L1253	#,
	.loc 1 4336 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, iftmp.702
	jmp	.L1254	#
.L1253:
	.loc 1 4336 0 discriminator 2
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.702
.L1254:
	.loc 1 4336 0 discriminator 3
	jmp	.L1257	#
.L1252:
	.loc 1 4337 0 is_stmt 1
	nop
.L1123:
	.loc 1 4340 0
	cmpq	$0, -400(%rbp)	#, new
	je	.L1255	#,
	.loc 1 4340 0 is_stmt 0 discriminator 1
	movq	-400(%rbp), %rax	# new, iftmp.703
	jmp	.L1256	#
.L1255:
	.loc 1 4340 0 discriminator 2
	movq	-520(%rbp), %rax	# x, iftmp.703
.L1256:
.L1257:
	.loc 1 4341 0 is_stmt 1
	addq	$520, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	fold_rtx, .-fold_rtx
	.type	equiv_constant, @function
equiv_constant:
.LFB39:
	.loc 1 4349 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# x, x
	.loc 1 4350 0
	movq	-56(%rbp), %rax	# x, tmp122
	movzwl	(%rax), %eax	# x_6(D)->code, D.22444
	cmpw	$61, %ax	#, D.22444
	jne	.L1262	#,
	.loc 1 4351 0
	movq	-56(%rbp), %rax	# x, tmp123
	movl	8(%rax), %edx	# x_6(D)->fld[0].rtuint, D.22445
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.705
	cmpl	%eax, %edx	# cached_regno.705, D.22445
	jne	.L1263	#,
	.loc 1 4351 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.706
	testq	%rax, %rax	# cached_cse_reg_info.706
	jne	.L1264	#,
.L1263:
	.loc 1 4351 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp124
	movl	8(%rax), %eax	# x_6(D)->fld[0].rtuint, D.22445
	movl	%eax, %edi	# D.22445,
	call	get_cse_reg_info	#
	jmp	.L1265	#
.L1264:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.704
.L1265:
	.loc 1 4351 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.704_3->reg_qty, D.22446
	movq	-56(%rbp), %rax	# x, tmp125
	movl	8(%rax), %eax	# x_6(D)->fld[0].rtuint, D.22445
	cmpl	%eax, %edx	# D.22446, D.22446
	je	.L1262	#,
.LBB87:
	.loc 1 4353 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp126
	movl	8(%rax), %edx	# x_6(D)->fld[0].rtuint, D.22445
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.708
	cmpl	%eax, %edx	# cached_regno.708, D.22445
	jne	.L1266	#,
	.loc 1 4353 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.709
	testq	%rax, %rax	# cached_cse_reg_info.709
	jne	.L1267	#,
.L1266:
	.loc 1 4353 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp127
	movl	8(%rax), %eax	# x_6(D)->fld[0].rtuint, D.22445
	movl	%eax, %edi	# D.22445,
	call	get_cse_reg_info	#
	jmp	.L1268	#
.L1267:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.707
.L1268:
	.loc 1 4353 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.707_4->reg_qty, tmp128
	movl	%eax, -36(%rbp)	# tmp128, x_q
	.loc 1 4354 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.710
	movl	-36(%rbp), %eax	# x_q, tmp129
	movslq	%eax, %rdx	# tmp129, D.22447
	movq	%rdx, %rax	# D.22447, tmp130
	addq	%rax, %rax	# tmp130
	addq	%rdx, %rax	# D.22447, tmp130
	salq	$4, %rax	#, tmp131
	addq	%rcx, %rax	# qty_table.710, tmp132
	movq	%rax, -24(%rbp)	# tmp132, x_ent
	.loc 1 4356 0 discriminator 3
	movq	-24(%rbp), %rax	# x_ent, tmp133
	movq	(%rax), %rax	# x_ent_27->const_rtx, D.22448
	testq	%rax, %rax	# D.22448
	je	.L1262	#,
	.loc 1 4357 0
	movq	-24(%rbp), %rax	# x_ent, tmp134
	movq	(%rax), %rdx	# x_ent_27->const_rtx, D.22448
	movq	-56(%rbp), %rax	# x, tmp135
	movzbl	2(%rax), %eax	# x_6(D)->mode, D.22449
	movzbl	%al, %eax	# D.22449, D.22450
	movq	%rdx, %rsi	# D.22448,
	movl	%eax, %edi	# D.22450,
	call	gen_lowpart_if_possible	#
	movq	%rax, -56(%rbp)	# tmp136, x
.L1262:
.LBE87:
	.loc 1 4360 0
	cmpq	$0, -56(%rbp)	#, x
	je	.L1269	#,
	.loc 1 4360 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp137
	movzwl	(%rax), %eax	# x_1->code, D.22444
	cmpw	$67, %ax	#, D.22444
	je	.L1269	#,
	movq	-56(%rbp), %rax	# x, tmp138
	movzwl	(%rax), %eax	# x_1->code, D.22444
	cmpw	$68, %ax	#, D.22444
	je	.L1269	#,
	movq	-56(%rbp), %rax	# x, tmp139
	movzwl	(%rax), %eax	# x_1->code, D.22444
	cmpw	$54, %ax	#, D.22444
	je	.L1269	#,
	movq	-56(%rbp), %rax	# x, tmp140
	movzwl	(%rax), %eax	# x_1->code, D.22444
	cmpw	$55, %ax	#, D.22444
	je	.L1269	#,
	movq	-56(%rbp), %rax	# x, tmp141
	movzwl	(%rax), %eax	# x_1->code, D.22444
	cmpw	$58, %ax	#, D.22444
	je	.L1269	#,
	movq	-56(%rbp), %rax	# x, tmp142
	movzwl	(%rax), %eax	# x_1->code, D.22444
	cmpw	$134, %ax	#, D.22444
	je	.L1269	#,
	movq	-56(%rbp), %rax	# x, tmp143
	movzwl	(%rax), %eax	# x_1->code, D.22444
	cmpw	$56, %ax	#, D.22444
	je	.L1269	#,
	movq	-56(%rbp), %rax	# x, tmp144
	movzwl	(%rax), %eax	# x_1->code, D.22444
	cmpw	$140, %ax	#, D.22444
	jne	.L1270	#,
.L1269:
	.loc 1 4361 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, D.22443
	jmp	.L1271	#
.L1270:
	.loc 1 4368 0
	movq	-56(%rbp), %rax	# x, tmp145
	movzwl	(%rax), %eax	# x_1->code, D.22444
	cmpw	$66, %ax	#, D.22444
	jne	.L1272	#,
.LBB88:
	.loc 1 4372 0
	movq	-56(%rbp), %rax	# x, tmp146
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	fold_rtx	#
	movq	%rax, -56(%rbp)	# tmp147, x
	.loc 1 4373 0
	movq	-56(%rbp), %rax	# x, tmp148
	movzwl	(%rax), %eax	# x_42->code, D.22444
	cmpw	$67, %ax	#, D.22444
	je	.L1273	#,
	.loc 1 4373 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp149
	movzwl	(%rax), %eax	# x_42->code, D.22444
	cmpw	$68, %ax	#, D.22444
	je	.L1273	#,
	movq	-56(%rbp), %rax	# x, tmp150
	movzwl	(%rax), %eax	# x_42->code, D.22444
	cmpw	$54, %ax	#, D.22444
	je	.L1273	#,
	movq	-56(%rbp), %rax	# x, tmp151
	movzwl	(%rax), %eax	# x_42->code, D.22444
	cmpw	$55, %ax	#, D.22444
	je	.L1273	#,
	movq	-56(%rbp), %rax	# x, tmp152
	movzwl	(%rax), %eax	# x_42->code, D.22444
	cmpw	$58, %ax	#, D.22444
	je	.L1273	#,
	movq	-56(%rbp), %rax	# x, tmp153
	movzwl	(%rax), %eax	# x_42->code, D.22444
	cmpw	$134, %ax	#, D.22444
	je	.L1273	#,
	movq	-56(%rbp), %rax	# x, tmp154
	movzwl	(%rax), %eax	# x_42->code, D.22444
	cmpw	$56, %ax	#, D.22444
	je	.L1273	#,
	movq	-56(%rbp), %rax	# x, tmp155
	movzwl	(%rax), %eax	# x_42->code, D.22444
	cmpw	$140, %ax	#, D.22444
	jne	.L1274	#,
.L1273:
	.loc 1 4374 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, D.22443
	jmp	.L1271	#
.L1274:
	.loc 1 4376 0
	movq	-56(%rbp), %rax	# x, tmp156
	movzbl	2(%rax), %eax	# x_42->mode, D.22449
	movzbl	%al, %ebx	# D.22449, D.22450
	movq	-56(%rbp), %rax	# x, tmp157
	movzbl	2(%rax), %eax	# x_42->mode, D.22449
	movzbl	%al, %edx	# D.22449, D.22450
	movq	-56(%rbp), %rax	# x, tmp158
	movl	%edx, %esi	# D.22450,
	movq	%rax, %rdi	# tmp158,
	call	safe_hash	#
	andl	$31, %eax	#, D.22445
	movl	%eax, %ecx	# D.22445, D.22445
	movq	-56(%rbp), %rax	# x, tmp159
	movl	%ebx, %edx	# D.22450,
	movl	%ecx, %esi	# D.22445,
	movq	%rax, %rdi	# tmp159,
	call	lookup	#
	movq	%rax, -32(%rbp)	# tmp160, elt
	.loc 1 4377 0
	cmpq	$0, -32(%rbp)	#, elt
	jne	.L1275	#,
	.loc 1 4378 0
	movl	$0, %eax	#, D.22443
	jmp	.L1271	#
.L1275:
	.loc 1 4380 0
	movq	-32(%rbp), %rax	# elt, tmp161
	movq	48(%rax), %rax	# elt_57->first_same_value, tmp162
	movq	%rax, -32(%rbp)	# tmp162, elt
	jmp	.L1276	#
.L1279:
	.loc 1 4381 0
	movq	-32(%rbp), %rax	# elt, tmp163
	movzbl	77(%rax), %eax	# elt_2->is_const, D.22451
	testb	%al, %al	# D.22451
	je	.L1277	#,
	.loc 1 4381 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# elt, tmp164
	movq	(%rax), %rax	# elt_2->exp, D.22448
	movzwl	(%rax), %eax	# _61->code, D.22444
	cmpw	$67, %ax	#, D.22444
	je	.L1278	#,
	movq	-32(%rbp), %rax	# elt, tmp165
	movq	(%rax), %rax	# elt_2->exp, D.22448
	movzwl	(%rax), %eax	# _63->code, D.22444
	cmpw	$68, %ax	#, D.22444
	je	.L1278	#,
	movq	-32(%rbp), %rax	# elt, tmp166
	movq	(%rax), %rax	# elt_2->exp, D.22448
	movzwl	(%rax), %eax	# _65->code, D.22444
	cmpw	$54, %ax	#, D.22444
	je	.L1278	#,
	movq	-32(%rbp), %rax	# elt, tmp167
	movq	(%rax), %rax	# elt_2->exp, D.22448
	movzwl	(%rax), %eax	# _67->code, D.22444
	cmpw	$55, %ax	#, D.22444
	je	.L1278	#,
	movq	-32(%rbp), %rax	# elt, tmp168
	movq	(%rax), %rax	# elt_2->exp, D.22448
	movzwl	(%rax), %eax	# _69->code, D.22444
	cmpw	$58, %ax	#, D.22444
	je	.L1278	#,
	movq	-32(%rbp), %rax	# elt, tmp169
	movq	(%rax), %rax	# elt_2->exp, D.22448
	movzwl	(%rax), %eax	# _71->code, D.22444
	cmpw	$134, %ax	#, D.22444
	je	.L1278	#,
	movq	-32(%rbp), %rax	# elt, tmp170
	movq	(%rax), %rax	# elt_2->exp, D.22448
	movzwl	(%rax), %eax	# _73->code, D.22444
	cmpw	$56, %ax	#, D.22444
	je	.L1278	#,
	movq	-32(%rbp), %rax	# elt, tmp171
	movq	(%rax), %rax	# elt_2->exp, D.22448
	movzwl	(%rax), %eax	# _75->code, D.22444
	cmpw	$140, %ax	#, D.22444
	jne	.L1277	#,
.L1278:
	.loc 1 4382 0 is_stmt 1
	movq	-32(%rbp), %rax	# elt, tmp172
	movq	(%rax), %rax	# elt_2->exp, D.22443
	jmp	.L1271	#
.L1277:
	.loc 1 4380 0
	movq	-32(%rbp), %rax	# elt, tmp173
	movq	32(%rax), %rax	# elt_2->next_same_value, tmp174
	movq	%rax, -32(%rbp)	# tmp174, elt
.L1276:
	.loc 1 4380 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, elt
	jne	.L1279	#,
.L1272:
.LBE88:
	.loc 1 4385 0 is_stmt 1
	movl	$0, %eax	#, D.22443
.L1271:
	.loc 1 4386 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	equiv_constant, .-equiv_constant
	.globl	gen_lowpart_if_possible
	.type	gen_lowpart_if_possible, @function
gen_lowpart_if_possible:
.LFB40:
	.loc 1 4401 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# mode, mode
	movq	%rsi, -48(%rbp)	# x, x
	.loc 1 4402 0
	movq	-48(%rbp), %rdx	# x, tmp65
	movl	-36(%rbp), %eax	# mode, tmp66
	movq	%rdx, %rsi	# tmp65,
	movl	%eax, %edi	# tmp66,
	call	gen_lowpart_common	#
	movq	%rax, -16(%rbp)	# tmp67, result
	.loc 1 4404 0
	cmpq	$0, -16(%rbp)	#, result
	je	.L1281	#,
	.loc 1 4405 0
	movq	-16(%rbp), %rax	# result, D.22452
	jmp	.L1282	#
.L1281:
	.loc 1 4406 0
	movq	-48(%rbp), %rax	# x, tmp68
	movzwl	(%rax), %eax	# x_3(D)->code, D.22453
	cmpw	$66, %ax	#, D.22453
	jne	.L1283	#,
.LBB89:
	.loc 1 4409 0
	movl	$0, -20(%rbp)	#, offset
	.loc 1 4421 0
	movl	-20(%rbp), %eax	# offset, tmp69
	movslq	%eax, %rdx	# tmp69, D.22454
	movl	-36(%rbp), %esi	# mode, tmp70
	movq	-48(%rbp), %rax	# x, tmp71
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp71,
	call	adjust_address_1	#
	movq	%rax, -8(%rbp)	# tmp72, new
	.loc 1 4422 0
	movq	-8(%rbp), %rax	# new, tmp73
	movq	8(%rax), %rdx	# new_9->fld[0].rtx, D.22455
	movl	-36(%rbp), %eax	# mode, tmp74
	movq	%rdx, %rsi	# D.22455,
	movl	%eax, %edi	# tmp74,
	call	memory_address_p	#
	testl	%eax, %eax	# D.22456
	jne	.L1284	#,
	.loc 1 4423 0
	movl	$0, %eax	#, D.22452
	jmp	.L1282	#
.L1284:
	.loc 1 4425 0
	movq	-8(%rbp), %rax	# new, D.22452
	jmp	.L1282	#
.L1283:
.LBE89:
	.loc 1 4428 0
	movl	$0, %eax	#, D.22452
.L1282:
	.loc 1 4429 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	gen_lowpart_if_possible, .-gen_lowpart_if_possible
	.type	record_jump_equiv, @function
record_jump_equiv:
.LFB41:
	.loc 1 4446 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# insn, insn
	movl	%esi, -60(%rbp)	# taken, taken
	.loc 1 4451 0
	movl	$0, -28(%rbp)	#, reversed_nonequality
	.loc 1 4455 0
	movq	-56(%rbp), %rax	# insn, tmp84
	movq	%rax, %rdi	# tmp84,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.22457
	jne	.L1286	#,
	.loc 1 4456 0
	jmp	.L1285	#
.L1286:
	.loc 1 4457 0
	movq	-56(%rbp), %rax	# insn, tmp85
	movq	%rax, %rdi	# tmp85,
	call	pc_set	#
	movq	%rax, -8(%rbp)	# tmp86, set
	.loc 1 4460 0
	cmpl	$0, -60(%rbp)	#, taken
	je	.L1288	#,
	.loc 1 4461 0
	movq	-8(%rbp), %rax	# set, tmp87
	movq	16(%rax), %rax	# set_7->fld[1].rtx, D.22458
	movq	24(%rax), %rdx	# _9->fld[2].rtx, D.22458
	movq	global_rtl(%rip), %rax	# global_rtl, D.22458
	cmpq	%rax, %rdx	# D.22458, D.22458
	sete	%al	#, D.22459
	movzbl	%al, %eax	# D.22459, tmp88
	movl	%eax, -40(%rbp)	# tmp88, cond_known_true
	jmp	.L1289	#
.L1288:
	.loc 1 4463 0
	movq	-8(%rbp), %rax	# set, tmp89
	movq	16(%rax), %rax	# set_7->fld[1].rtx, D.22458
	movq	16(%rax), %rdx	# _14->fld[1].rtx, D.22458
	movq	global_rtl(%rip), %rax	# global_rtl, D.22458
	cmpq	%rax, %rdx	# D.22458, D.22458
	sete	%al	#, D.22459
	movzbl	%al, %eax	# D.22459, tmp90
	movl	%eax, -40(%rbp)	# tmp90, cond_known_true
.L1289:
	.loc 1 4468 0
	movq	-8(%rbp), %rax	# set, tmp91
	movq	16(%rax), %rax	# set_7->fld[1].rtx, D.22458
	movq	8(%rax), %rax	# _19->fld[0].rtx, D.22458
	movzwl	(%rax), %eax	# _20->code, D.22460
	movzwl	%ax, %eax	# D.22460, tmp92
	movl	%eax, -32(%rbp)	# tmp92, code
	.loc 1 4469 0
	movq	-8(%rbp), %rax	# set, tmp93
	movq	16(%rax), %rax	# set_7->fld[1].rtx, D.22458
	movq	8(%rax), %rax	# _23->fld[0].rtx, D.22458
	movq	8(%rax), %rax	# _24->fld[0].rtx, D.22458
	movq	-56(%rbp), %rdx	# insn, tmp94
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# D.22458,
	call	fold_rtx	#
	movq	%rax, -24(%rbp)	# op0.721, op0
	.loc 1 4470 0
	movq	-8(%rbp), %rax	# set, tmp95
	movq	16(%rax), %rax	# set_7->fld[1].rtx, D.22458
	movq	8(%rax), %rax	# _27->fld[0].rtx, D.22458
	movq	16(%rax), %rax	# _28->fld[1].rtx, D.22458
	movq	-56(%rbp), %rdx	# insn, tmp96
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# D.22458,
	call	fold_rtx	#
	movq	%rax, -16(%rbp)	# op1.722, op1
	.loc 1 4472 0
	leaq	-44(%rbp), %rdi	#, tmp97
	leaq	-48(%rbp), %rcx	#, tmp98
	leaq	-16(%rbp), %rdx	#, tmp99
	leaq	-24(%rbp), %rsi	#, tmp100
	movl	-32(%rbp), %eax	# code, tmp101
	movq	%rdi, %r8	# tmp97,
	movl	%eax, %edi	# tmp101,
	call	find_comparison_args	#
	movl	%eax, -32(%rbp)	# tmp102, code
	.loc 1 4473 0
	cmpl	$0, -40(%rbp)	#, cond_known_true
	jne	.L1290	#,
	.loc 1 4475 0
	movq	-16(%rbp), %rdx	# op1, op1.723
	movq	-24(%rbp), %rsi	# op0, op0.724
	movq	-56(%rbp), %rcx	# insn, tmp103
	movl	-32(%rbp), %eax	# code, tmp104
	movl	%eax, %edi	# tmp104,
	call	reversed_comparison_code_parts	#
	movl	%eax, -32(%rbp)	# tmp105, code
	.loc 1 4478 0
	cmpl	$0, -32(%rbp)	#, code
	jne	.L1290	#,
	.loc 1 4479 0
	jmp	.L1285	#
.L1290:
	.loc 1 4483 0
	movl	-48(%rbp), %eax	# mode0, tmp106
	movl	%eax, -36(%rbp)	# tmp106, mode
	.loc 1 4484 0
	movl	-44(%rbp), %eax	# mode1, mode1.725
	testl	%eax, %eax	# mode1.725
	je	.L1291	#,
	.loc 1 4485 0
	movl	-44(%rbp), %eax	# mode1, tmp107
	movl	%eax, -36(%rbp)	# tmp107, mode
.L1291:
	.loc 1 4487 0
	movq	-16(%rbp), %rcx	# op1, op1.726
	movq	-24(%rbp), %rdx	# op0, op0.727
	movl	-28(%rbp), %edi	# reversed_nonequality, tmp108
	movl	-36(%rbp), %esi	# mode, tmp109
	movl	-32(%rbp), %eax	# code, tmp110
	movl	%edi, %r8d	# tmp108,
	movl	%eax, %edi	# tmp110,
	call	record_jump_cond	#
.L1285:
	.loc 1 4488 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	record_jump_equiv, .-record_jump_equiv
	.type	record_jump_cond, @function
record_jump_cond:
.LFB42:
	.loc 1 4501 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movl	%edi, -100(%rbp)	# code, code
	movl	%esi, -104(%rbp)	# mode, mode
	movq	%rdx, -112(%rbp)	# op0, op0
	movq	%rcx, -120(%rbp)	# op1, op1
	movl	%r8d, -124(%rbp)	# reversed_nonequality, reversed_nonequality
	.loc 1 4512 0
	cmpl	$103, -100(%rbp)	#, code
	jne	.L1294	#,
	.loc 1 4512 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp239
	movzwl	(%rax), %eax	# op0_31(D)->code, D.22461
	cmpw	$63, %ax	#, D.22461
	jne	.L1294	#,
	.loc 1 4513 0 is_stmt 1
	movq	-112(%rbp), %rax	# op0, tmp240
	movzbl	2(%rax), %eax	# op0_31(D)->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22462
	.loc 1 4514 0
	movq	-112(%rbp), %rax	# op0, tmp242
	movq	8(%rax), %rax	# op0_31(D)->fld[0].rtx, D.22464
	movzbl	2(%rax), %eax	# _36->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22462
	.loc 1 4513 0
	cmpb	%al, %dl	# D.22462, D.22462
	jbe	.L1294	#,
.LBB90:
	.loc 1 4516 0
	movq	-112(%rbp), %rax	# op0, tmp244
	movq	8(%rax), %rax	# op0_31(D)->fld[0].rtx, D.22464
	movzbl	2(%rax), %eax	# _40->mode, D.22462
	movzbl	%al, %eax	# D.22462, tmp245
	movl	%eax, -84(%rbp)	# tmp245, inner_mode
	.loc 1 4517 0
	movq	-120(%rbp), %rdx	# op1, tmp246
	movl	-84(%rbp), %eax	# inner_mode, tmp247
	movq	%rdx, %rsi	# tmp246,
	movl	%eax, %edi	# tmp247,
	call	gen_lowpart_if_possible	#
	movq	%rax, -40(%rbp)	# tmp248, tem
	.loc 1 4519 0
	cmpq	$0, -40(%rbp)	#, tem
	jne	.L1295	#,
	.loc 1 4519 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rcx	# op1, tmp249
	movl	-84(%rbp), %eax	# inner_mode, tmp250
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp249,
	movl	%eax, %edi	# tmp250,
	call	gen_rtx_SUBREG	#
	jmp	.L1296	#
.L1295:
	.loc 1 4519 0 discriminator 2
	movq	-40(%rbp), %rax	# tem, iftmp.728
.L1296:
	.loc 1 4519 0 discriminator 3
	movq	-112(%rbp), %rdx	# op0, tmp251
	movq	8(%rdx), %rdx	# op0_31(D)->fld[0].rtx, D.22464
	movl	-124(%rbp), %ecx	# reversed_nonequality, tmp252
	movl	-104(%rbp), %esi	# mode, tmp253
	movl	-100(%rbp), %edi	# code, tmp254
	movl	%ecx, %r8d	# tmp252,
	movq	%rax, %rcx	# iftmp.728,
	call	record_jump_cond	#
.L1294:
.LBE90:
	.loc 1 4524 0 is_stmt 1
	cmpl	$103, -100(%rbp)	#, code
	jne	.L1297	#,
	.loc 1 4524 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp255
	movzwl	(%rax), %eax	# op1_43(D)->code, D.22461
	cmpw	$63, %ax	#, D.22461
	jne	.L1297	#,
	.loc 1 4525 0 is_stmt 1
	movq	-120(%rbp), %rax	# op1, tmp256
	movzbl	2(%rax), %eax	# op1_43(D)->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22462
	.loc 1 4526 0
	movq	-120(%rbp), %rax	# op1, tmp258
	movq	8(%rax), %rax	# op1_43(D)->fld[0].rtx, D.22464
	movzbl	2(%rax), %eax	# _54->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22462
	.loc 1 4525 0
	cmpb	%al, %dl	# D.22462, D.22462
	jbe	.L1297	#,
.LBB91:
	.loc 1 4528 0
	movq	-120(%rbp), %rax	# op1, tmp260
	movq	8(%rax), %rax	# op1_43(D)->fld[0].rtx, D.22464
	movzbl	2(%rax), %eax	# _58->mode, D.22462
	movzbl	%al, %eax	# D.22462, tmp261
	movl	%eax, -80(%rbp)	# tmp261, inner_mode
	.loc 1 4529 0
	movq	-112(%rbp), %rdx	# op0, tmp262
	movl	-80(%rbp), %eax	# inner_mode, tmp263
	movq	%rdx, %rsi	# tmp262,
	movl	%eax, %edi	# tmp263,
	call	gen_lowpart_if_possible	#
	movq	%rax, -32(%rbp)	# tmp264, tem
	.loc 1 4531 0
	cmpq	$0, -32(%rbp)	#, tem
	jne	.L1298	#,
	.loc 1 4531 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rcx	# op0, tmp265
	movl	-80(%rbp), %eax	# inner_mode, tmp266
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp265,
	movl	%eax, %edi	# tmp266,
	call	gen_rtx_SUBREG	#
	jmp	.L1299	#
.L1298:
	.loc 1 4531 0 discriminator 2
	movq	-32(%rbp), %rax	# tem, iftmp.729
.L1299:
	.loc 1 4531 0 discriminator 3
	movq	-120(%rbp), %rdx	# op1, tmp267
	movq	8(%rdx), %rdx	# op1_43(D)->fld[0].rtx, D.22464
	movl	-124(%rbp), %ecx	# reversed_nonequality, tmp268
	movl	-104(%rbp), %esi	# mode, tmp269
	movl	-100(%rbp), %edi	# code, tmp270
	movl	%ecx, %r8d	# tmp268,
	movq	%rax, %rcx	# iftmp.729,
	call	record_jump_cond	#
.L1297:
.LBE91:
	.loc 1 4543 0 is_stmt 1
	cmpl	$102, -100(%rbp)	#, code
	jne	.L1300	#,
	.loc 1 4543 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp271
	movzwl	(%rax), %eax	# op0_31(D)->code, D.22461
	cmpw	$63, %ax	#, D.22461
	jne	.L1300	#,
	.loc 1 4544 0 is_stmt 1
	movq	-112(%rbp), %rax	# op0, tmp272
	movq	%rax, %rdi	# tmp272,
	call	subreg_lowpart_p	#
	testl	%eax, %eax	# D.22463
	je	.L1300	#,
	.loc 1 4545 0
	movq	-112(%rbp), %rax	# op0, tmp273
	movzbl	2(%rax), %eax	# op0_31(D)->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22462
	.loc 1 4546 0
	movq	-112(%rbp), %rax	# op0, tmp275
	movq	8(%rax), %rax	# op0_31(D)->fld[0].rtx, D.22464
	movzbl	2(%rax), %eax	# _70->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22462
	.loc 1 4545 0
	cmpb	%al, %dl	# D.22462, D.22462
	jae	.L1300	#,
.LBB92:
	.loc 1 4548 0
	movq	-112(%rbp), %rax	# op0, tmp277
	movq	8(%rax), %rax	# op0_31(D)->fld[0].rtx, D.22464
	movzbl	2(%rax), %eax	# _74->mode, D.22462
	movzbl	%al, %eax	# D.22462, tmp278
	movl	%eax, -76(%rbp)	# tmp278, inner_mode
	.loc 1 4549 0
	movq	-120(%rbp), %rdx	# op1, tmp279
	movl	-76(%rbp), %eax	# inner_mode, tmp280
	movq	%rdx, %rsi	# tmp279,
	movl	%eax, %edi	# tmp280,
	call	gen_lowpart_if_possible	#
	movq	%rax, -24(%rbp)	# tmp281, tem
	.loc 1 4551 0
	cmpq	$0, -24(%rbp)	#, tem
	jne	.L1301	#,
	.loc 1 4551 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rcx	# op1, tmp282
	movl	-76(%rbp), %eax	# inner_mode, tmp283
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp282,
	movl	%eax, %edi	# tmp283,
	call	gen_rtx_SUBREG	#
	jmp	.L1302	#
.L1301:
	.loc 1 4551 0 discriminator 2
	movq	-24(%rbp), %rax	# tem, iftmp.730
.L1302:
	.loc 1 4551 0 discriminator 3
	movq	-112(%rbp), %rdx	# op0, tmp284
	movq	8(%rdx), %rdx	# op0_31(D)->fld[0].rtx, D.22464
	movl	-124(%rbp), %ecx	# reversed_nonequality, tmp285
	movl	-104(%rbp), %esi	# mode, tmp286
	movl	-100(%rbp), %edi	# code, tmp287
	movl	%ecx, %r8d	# tmp285,
	movq	%rax, %rcx	# iftmp.730,
	call	record_jump_cond	#
.L1300:
.LBE92:
	.loc 1 4556 0 is_stmt 1
	cmpl	$102, -100(%rbp)	#, code
	jne	.L1303	#,
	.loc 1 4556 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp288
	movzwl	(%rax), %eax	# op1_43(D)->code, D.22461
	cmpw	$63, %ax	#, D.22461
	jne	.L1303	#,
	.loc 1 4557 0 is_stmt 1
	movq	-120(%rbp), %rax	# op1, tmp289
	movq	%rax, %rdi	# tmp289,
	call	subreg_lowpart_p	#
	testl	%eax, %eax	# D.22463
	je	.L1303	#,
	.loc 1 4558 0
	movq	-120(%rbp), %rax	# op1, tmp290
	movzbl	2(%rax), %eax	# op1_43(D)->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22462
	.loc 1 4559 0
	movq	-120(%rbp), %rax	# op1, tmp292
	movq	8(%rax), %rax	# op1_43(D)->fld[0].rtx, D.22464
	movzbl	2(%rax), %eax	# _86->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22462
	.loc 1 4558 0
	cmpb	%al, %dl	# D.22462, D.22462
	jae	.L1303	#,
.LBB93:
	.loc 1 4561 0
	movq	-120(%rbp), %rax	# op1, tmp294
	movq	8(%rax), %rax	# op1_43(D)->fld[0].rtx, D.22464
	movzbl	2(%rax), %eax	# _90->mode, D.22462
	movzbl	%al, %eax	# D.22462, tmp295
	movl	%eax, -72(%rbp)	# tmp295, inner_mode
	.loc 1 4562 0
	movq	-112(%rbp), %rdx	# op0, tmp296
	movl	-72(%rbp), %eax	# inner_mode, tmp297
	movq	%rdx, %rsi	# tmp296,
	movl	%eax, %edi	# tmp297,
	call	gen_lowpart_if_possible	#
	movq	%rax, -16(%rbp)	# tmp298, tem
	.loc 1 4564 0
	cmpq	$0, -16(%rbp)	#, tem
	jne	.L1304	#,
	.loc 1 4564 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rcx	# op0, tmp299
	movl	-72(%rbp), %eax	# inner_mode, tmp300
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp299,
	movl	%eax, %edi	# tmp300,
	call	gen_rtx_SUBREG	#
	jmp	.L1305	#
.L1304:
	.loc 1 4564 0 discriminator 2
	movq	-16(%rbp), %rax	# tem, iftmp.731
.L1305:
	.loc 1 4564 0 discriminator 3
	movq	-120(%rbp), %rdx	# op1, tmp301
	movq	8(%rdx), %rdx	# op1_43(D)->fld[0].rtx, D.22464
	movl	-124(%rbp), %ecx	# reversed_nonequality, tmp302
	movl	-104(%rbp), %esi	# mode, tmp303
	movl	-100(%rbp), %edi	# code, tmp304
	movl	%ecx, %r8d	# tmp302,
	movq	%rax, %rcx	# iftmp.731,
	call	record_jump_cond	#
.L1303:
.LBE93:
	.loc 1 4571 0 is_stmt 1
	movl	$0, do_not_record(%rip)	#, do_not_record
	.loc 1 4572 0
	movl	$0, hash_arg_in_memory(%rip)	#, hash_arg_in_memory
	.loc 1 4573 0
	movq	-112(%rbp), %rax	# op0, tmp305
	movzwl	(%rax), %eax	# op0_31(D)->code, D.22461
	cmpw	$61, %ax	#, D.22461
	jne	.L1306	#,
	.loc 1 4573 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp306
	movl	8(%rax), %eax	# op0_31(D)->fld[0].rtuint, D.22465
	cmpl	$52, %eax	#, D.22465
	jbe	.L1306	#,
	movq	-112(%rbp), %rax	# op0, tmp307
	movl	8(%rax), %edx	# op0_31(D)->fld[0].rtuint, D.22465
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.734
	cmpl	%eax, %edx	# cached_regno.734, D.22465
	jne	.L1307	#,
	.loc 1 4573 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.735
	testq	%rax, %rax	# cached_cse_reg_info.735
	jne	.L1308	#,
.L1307:
	.loc 1 4573 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp308
	movl	8(%rax), %eax	# op0_31(D)->fld[0].rtuint, D.22465
	movl	%eax, %edi	# D.22465,
	call	get_cse_reg_info	#
	jmp	.L1309	#
.L1308:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.733
.L1309:
	.loc 1 4573 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.733_15->reg_qty, D.22463
	andl	$31, %eax	#, iftmp.732
	jmp	.L1310	#
.L1306:
	.loc 1 4573 0 discriminator 2
	movl	-104(%rbp), %edx	# mode, tmp309
	movq	-112(%rbp), %rax	# op0, tmp310
	movl	%edx, %esi	# tmp309,
	movq	%rax, %rdi	# tmp310,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.732
.L1310:
	.loc 1 4573 0 discriminator 3
	movl	%eax, -92(%rbp)	# iftmp.732, op0_hash
	.loc 1 4574 0 is_stmt 1 discriminator 3
	movl	hash_arg_in_memory(%rip), %eax	# hash_arg_in_memory, tmp311
	movl	%eax, -68(%rbp)	# tmp311, op0_in_memory
	.loc 1 4576 0 discriminator 3
	movl	do_not_record(%rip), %eax	# do_not_record, do_not_record.736
	testl	%eax, %eax	# do_not_record.736
	je	.L1311	#,
	.loc 1 4577 0
	jmp	.L1293	#
.L1311:
	.loc 1 4579 0
	movl	$0, do_not_record(%rip)	#, do_not_record
	.loc 1 4580 0
	movl	$0, hash_arg_in_memory(%rip)	#, hash_arg_in_memory
	.loc 1 4581 0
	movq	-120(%rbp), %rax	# op1, tmp312
	movzwl	(%rax), %eax	# op1_43(D)->code, D.22461
	cmpw	$61, %ax	#, D.22461
	jne	.L1313	#,
	.loc 1 4581 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp313
	movl	8(%rax), %eax	# op1_43(D)->fld[0].rtuint, D.22465
	cmpl	$52, %eax	#, D.22465
	jbe	.L1313	#,
	movq	-120(%rbp), %rax	# op1, tmp314
	movl	8(%rax), %edx	# op1_43(D)->fld[0].rtuint, D.22465
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.739
	cmpl	%eax, %edx	# cached_regno.739, D.22465
	jne	.L1314	#,
	.loc 1 4581 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.740
	testq	%rax, %rax	# cached_cse_reg_info.740
	jne	.L1315	#,
.L1314:
	.loc 1 4581 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp315
	movl	8(%rax), %eax	# op1_43(D)->fld[0].rtuint, D.22465
	movl	%eax, %edi	# D.22465,
	call	get_cse_reg_info	#
	jmp	.L1316	#
.L1315:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.738
.L1316:
	.loc 1 4581 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.738_17->reg_qty, D.22463
	andl	$31, %eax	#, iftmp.737
	jmp	.L1317	#
.L1313:
	.loc 1 4581 0 discriminator 2
	movl	-104(%rbp), %edx	# mode, tmp316
	movq	-120(%rbp), %rax	# op1, tmp317
	movl	%edx, %esi	# tmp316,
	movq	%rax, %rdi	# tmp317,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.737
.L1317:
	.loc 1 4581 0 discriminator 3
	movl	%eax, -88(%rbp)	# iftmp.737, op1_hash
	.loc 1 4582 0 is_stmt 1 discriminator 3
	movl	hash_arg_in_memory(%rip), %eax	# hash_arg_in_memory, tmp318
	movl	%eax, -64(%rbp)	# tmp318, op1_in_memory
	.loc 1 4584 0 discriminator 3
	movl	do_not_record(%rip), %eax	# do_not_record, do_not_record.741
	testl	%eax, %eax	# do_not_record.741
	je	.L1318	#,
	.loc 1 4585 0
	jmp	.L1293	#
.L1318:
	.loc 1 4588 0
	movl	-104(%rbp), %edx	# mode, tmp319
	movl	-92(%rbp), %ecx	# op0_hash, tmp320
	movq	-112(%rbp), %rax	# op0, tmp321
	movl	%ecx, %esi	# tmp320,
	movq	%rax, %rdi	# tmp321,
	call	lookup	#
	movq	%rax, -56(%rbp)	# tmp322, op0_elt
	.loc 1 4589 0
	movl	-104(%rbp), %edx	# mode, tmp323
	movl	-88(%rbp), %ecx	# op1_hash, tmp324
	movq	-120(%rbp), %rax	# op1, tmp325
	movl	%ecx, %esi	# tmp324,
	movq	%rax, %rdi	# tmp325,
	call	lookup	#
	movq	%rax, -48(%rbp)	# tmp326, op1_elt
	.loc 1 4593 0
	cmpq	$0, -56(%rbp)	#, op0_elt
	je	.L1319	#,
	.loc 1 4593 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, op1_elt
	je	.L1319	#,
	.loc 1 4594 0 is_stmt 1
	movq	-56(%rbp), %rax	# op0_elt, tmp327
	movq	48(%rax), %rdx	# op0_elt_129->first_same_value, D.22466
	movq	-48(%rbp), %rax	# op1_elt, tmp328
	movq	48(%rax), %rax	# op1_elt_130->first_same_value, D.22466
	cmpq	%rax, %rdx	# D.22466, D.22466
	je	.L1320	#,
.L1319:
	.loc 1 4595 0
	movq	-112(%rbp), %rax	# op0, tmp329
	cmpq	-120(%rbp), %rax	# op1, tmp329
	je	.L1320	#,
	.loc 1 4595 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rdx	# op1, tmp330
	movq	-112(%rbp), %rax	# op0, tmp331
	movq	%rdx, %rsi	# tmp330,
	movq	%rax, %rdi	# tmp331,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22463
	je	.L1321	#,
.L1320:
	.loc 1 4596 0 is_stmt 1
	jmp	.L1293	#
.L1321:
	.loc 1 4604 0
	cmpl	$103, -100(%rbp)	#, code
	jne	.L1322	#,
	.loc 1 4604 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp332
	movzbl	2(%rax), %eax	# op0_31(D)->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22467
	cmpl	$2, %eax	#, D.22467
	je	.L1322	#,
	movq	-112(%rbp), %rax	# op0, tmp334
	movzbl	2(%rax), %eax	# op0_31(D)->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22467
	cmpl	$6, %eax	#, D.22467
	je	.L1322	#,
	movq	-112(%rbp), %rax	# op0, tmp336
	movzbl	2(%rax), %eax	# op0_31(D)->mode, D.22462
	movzbl	%al, %eax	# D.22462, D.22463
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22467
	cmpl	$8, %eax	#, D.22467
	jne	.L1323	#,
.L1322:
.LBB94:
	.loc 1 4613 0 is_stmt 1
	movq	-120(%rbp), %rax	# op1, tmp338
	movzwl	(%rax), %eax	# op1_43(D)->code, D.22461
	cmpw	$61, %ax	#, D.22461
	je	.L1324	#,
	.loc 1 4614 0
	movq	-120(%rbp), %rax	# op1, tmp339
	movq	%rax, %rdi	# tmp339,
	call	equiv_constant	#
	movq	%rax, -120(%rbp)	# tmp340, op1
.L1324:
	.loc 1 4616 0
	cmpl	$0, -124(%rbp)	#, reversed_nonequality
	je	.L1325	#,
	.loc 1 4616 0 is_stmt 0 discriminator 1
	movl	-104(%rbp), %eax	# mode, mode.742
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22467
	cmpl	$2, %eax	#, D.22467
	je	.L1326	#,
	movl	-104(%rbp), %eax	# mode, mode.743
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22467
	cmpl	$6, %eax	#, D.22467
	je	.L1326	#,
	movl	-104(%rbp), %eax	# mode, mode.744
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22467
	cmpl	$8, %eax	#, D.22467
	je	.L1326	#,
.L1325:
	.loc 1 4617 0 is_stmt 1
	movq	-112(%rbp), %rax	# op0, tmp344
	movzwl	(%rax), %eax	# op0_31(D)->code, D.22461
	cmpw	$61, %ax	#, D.22461
	jne	.L1326	#,
	.loc 1 4617 0 is_stmt 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, op1
	jne	.L1327	#,
.L1326:
	.loc 1 4618 0 is_stmt 1
	jmp	.L1293	#
.L1327:
	.loc 1 4622 0
	cmpq	$0, -56(%rbp)	#, op0_elt
	jne	.L1328	#,
	.loc 1 4624 0
	movq	-112(%rbp), %rax	# op0, tmp345
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp345,
	call	insert_regs	#
	testl	%eax, %eax	# D.22463
	je	.L1329	#,
	.loc 1 4626 0
	movq	-112(%rbp), %rax	# op0, tmp346
	movq	%rax, %rdi	# tmp346,
	call	rehash_using_reg	#
	.loc 1 4627 0
	movq	-112(%rbp), %rax	# op0, tmp347
	movzwl	(%rax), %eax	# op0_31(D)->code, D.22461
	cmpw	$61, %ax	#, D.22461
	jne	.L1330	#,
	.loc 1 4627 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp348
	movl	8(%rax), %eax	# op0_31(D)->fld[0].rtuint, D.22465
	cmpl	$52, %eax	#, D.22465
	jbe	.L1330	#,
	movq	-112(%rbp), %rax	# op0, tmp349
	movl	8(%rax), %edx	# op0_31(D)->fld[0].rtuint, D.22465
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.747
	cmpl	%eax, %edx	# cached_regno.747, D.22465
	jne	.L1331	#,
	.loc 1 4627 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.748
	testq	%rax, %rax	# cached_cse_reg_info.748
	jne	.L1332	#,
.L1331:
	.loc 1 4627 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp350
	movl	8(%rax), %eax	# op0_31(D)->fld[0].rtuint, D.22465
	movl	%eax, %edi	# D.22465,
	call	get_cse_reg_info	#
	jmp	.L1333	#
.L1332:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.746
.L1333:
	.loc 1 4627 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.746_19->reg_qty, D.22463
	andl	$31, %eax	#, iftmp.745
	jmp	.L1334	#
.L1330:
	.loc 1 4627 0 discriminator 2
	movl	-104(%rbp), %edx	# mode, tmp351
	movq	-112(%rbp), %rax	# op0, tmp352
	movl	%edx, %esi	# tmp351,
	movq	%rax, %rdi	# tmp352,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.745
.L1334:
	.loc 1 4627 0 discriminator 3
	movl	%eax, -92(%rbp)	# iftmp.745, op0_hash
	.loc 1 4632 0 is_stmt 1 discriminator 3
	movq	-120(%rbp), %rax	# op1, tmp353
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$67, %ax	#, D.22461
	je	.L1329	#,
	.loc 1 4632 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp354
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$68, %ax	#, D.22461
	je	.L1329	#,
	movq	-120(%rbp), %rax	# op1, tmp355
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$54, %ax	#, D.22461
	je	.L1329	#,
	movq	-120(%rbp), %rax	# op1, tmp356
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$55, %ax	#, D.22461
	je	.L1329	#,
	movq	-120(%rbp), %rax	# op1, tmp357
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$58, %ax	#, D.22461
	je	.L1329	#,
	movq	-120(%rbp), %rax	# op1, tmp358
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$134, %ax	#, D.22461
	je	.L1329	#,
	movq	-120(%rbp), %rax	# op1, tmp359
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$56, %ax	#, D.22461
	je	.L1329	#,
	movq	-120(%rbp), %rax	# op1, tmp360
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$140, %ax	#, D.22461
	je	.L1329	#,
	.loc 1 4633 0 is_stmt 1
	movq	-120(%rbp), %rax	# op1, tmp361
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$61, %ax	#, D.22461
	jne	.L1335	#,
	.loc 1 4633 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp362
	movl	8(%rax), %eax	# op1_1->fld[0].rtuint, D.22465
	cmpl	$52, %eax	#, D.22465
	jbe	.L1335	#,
	movq	-120(%rbp), %rax	# op1, tmp363
	movl	8(%rax), %edx	# op1_1->fld[0].rtuint, D.22465
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.751
	cmpl	%eax, %edx	# cached_regno.751, D.22465
	jne	.L1336	#,
	.loc 1 4633 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.752
	testq	%rax, %rax	# cached_cse_reg_info.752
	jne	.L1337	#,
.L1336:
	.loc 1 4633 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp364
	movl	8(%rax), %eax	# op1_1->fld[0].rtuint, D.22465
	movl	%eax, %edi	# D.22465,
	call	get_cse_reg_info	#
	jmp	.L1338	#
.L1337:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.750
.L1338:
	.loc 1 4633 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.750_21->reg_qty, D.22463
	andl	$31, %eax	#, iftmp.749
	jmp	.L1339	#
.L1335:
	.loc 1 4633 0 discriminator 2
	movl	-104(%rbp), %edx	# mode, tmp365
	movq	-120(%rbp), %rax	# op1, tmp366
	movl	%edx, %esi	# tmp365,
	movq	%rax, %rdi	# tmp366,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.749
.L1339:
	.loc 1 4633 0 discriminator 3
	movl	%eax, -88(%rbp)	# iftmp.749, op1_hash
.L1329:
	.loc 1 4636 0 is_stmt 1
	movl	-104(%rbp), %ecx	# mode, tmp367
	movl	-92(%rbp), %edx	# op0_hash, tmp368
	movq	-112(%rbp), %rax	# op0, tmp369
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp369,
	call	insert	#
	movq	%rax, -56(%rbp)	# tmp370, op0_elt
	.loc 1 4637 0
	movl	-68(%rbp), %eax	# op0_in_memory, tmp371
	movl	%eax, %edx	# tmp371, D.22468
	movq	-56(%rbp), %rax	# op0_elt, tmp372
	movb	%dl, 76(%rax)	# D.22468, op0_elt_223->in_memory
.L1328:
	.loc 1 4640 0
	movq	-112(%rbp), %rax	# op0, tmp373
	movl	8(%rax), %edx	# op0_31(D)->fld[0].rtuint, D.22465
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.754
	cmpl	%eax, %edx	# cached_regno.754, D.22465
	jne	.L1340	#,
	.loc 1 4640 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.755
	testq	%rax, %rax	# cached_cse_reg_info.755
	jne	.L1341	#,
.L1340:
	.loc 1 4640 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp374
	movl	8(%rax), %eax	# op0_31(D)->fld[0].rtuint, D.22465
	movl	%eax, %edi	# D.22465,
	call	get_cse_reg_info	#
	jmp	.L1342	#
.L1341:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.753
.L1342:
	.loc 1 4640 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.753_22->reg_qty, tmp375
	movl	%eax, -60(%rbp)	# tmp375, qty
	.loc 1 4641 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.756
	movl	-60(%rbp), %eax	# qty, tmp376
	movslq	%eax, %rdx	# tmp376, D.22469
	movq	%rdx, %rax	# D.22469, tmp377
	addq	%rax, %rax	# tmp377
	addq	%rdx, %rax	# D.22469, tmp377
	salq	$4, %rax	#, tmp378
	addq	%rcx, %rax	# qty_table.756, tmp379
	movq	%rax, -8(%rbp)	# tmp379, ent
	.loc 1 4643 0 discriminator 3
	movq	-8(%rbp), %rax	# ent, tmp380
	movl	-100(%rbp), %edx	# code, tmp381
	movl	%edx, 40(%rax)	# tmp381, ent_235->comparison_code
	.loc 1 4644 0 discriminator 3
	movq	-120(%rbp), %rax	# op1, tmp382
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$61, %ax	#, D.22461
	jne	.L1343	#,
	.loc 1 4647 0
	movl	-104(%rbp), %edx	# mode, tmp383
	movl	-88(%rbp), %ecx	# op1_hash, tmp384
	movq	-120(%rbp), %rax	# op1, tmp385
	movl	%ecx, %esi	# tmp384,
	movq	%rax, %rdi	# tmp385,
	call	lookup	#
	movq	%rax, -48(%rbp)	# tmp386, op1_elt
	.loc 1 4650 0
	cmpq	$0, -48(%rbp)	#, op1_elt
	jne	.L1344	#,
	.loc 1 4652 0
	movq	-120(%rbp), %rax	# op1, tmp387
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp387,
	call	insert_regs	#
	testl	%eax, %eax	# D.22463
	je	.L1345	#,
	.loc 1 4654 0
	movq	-120(%rbp), %rax	# op1, tmp388
	movq	%rax, %rdi	# tmp388,
	call	rehash_using_reg	#
	.loc 1 4655 0
	movq	-120(%rbp), %rax	# op1, tmp389
	movzwl	(%rax), %eax	# op1_1->code, D.22461
	cmpw	$61, %ax	#, D.22461
	jne	.L1346	#,
	.loc 1 4655 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp390
	movl	8(%rax), %eax	# op1_1->fld[0].rtuint, D.22465
	cmpl	$52, %eax	#, D.22465
	jbe	.L1346	#,
	movq	-120(%rbp), %rax	# op1, tmp391
	movl	8(%rax), %edx	# op1_1->fld[0].rtuint, D.22465
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.759
	cmpl	%eax, %edx	# cached_regno.759, D.22465
	jne	.L1347	#,
	.loc 1 4655 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.760
	testq	%rax, %rax	# cached_cse_reg_info.760
	jne	.L1348	#,
.L1347:
	.loc 1 4655 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp392
	movl	8(%rax), %eax	# op1_1->fld[0].rtuint, D.22465
	movl	%eax, %edi	# D.22465,
	call	get_cse_reg_info	#
	jmp	.L1349	#
.L1348:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.758
.L1349:
	.loc 1 4655 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.758_24->reg_qty, D.22463
	andl	$31, %eax	#, iftmp.757
	jmp	.L1350	#
.L1346:
	.loc 1 4655 0 discriminator 2
	movl	-104(%rbp), %edx	# mode, tmp393
	movq	-120(%rbp), %rax	# op1, tmp394
	movl	%edx, %esi	# tmp393,
	movq	%rax, %rdi	# tmp394,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.757
.L1350:
	.loc 1 4655 0 discriminator 3
	movl	%eax, -88(%rbp)	# iftmp.757, op1_hash
.L1345:
	.loc 1 4658 0 is_stmt 1
	movl	-104(%rbp), %ecx	# mode, tmp395
	movl	-88(%rbp), %edx	# op1_hash, tmp396
	movq	-120(%rbp), %rax	# op1, tmp397
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp397,
	call	insert	#
	movq	%rax, -48(%rbp)	# tmp398, op1_elt
	.loc 1 4659 0
	movl	-64(%rbp), %eax	# op1_in_memory, tmp399
	movl	%eax, %edx	# tmp399, D.22468
	movq	-48(%rbp), %rax	# op1_elt, tmp400
	movb	%dl, 76(%rax)	# D.22468, op1_elt_253->in_memory
.L1344:
	.loc 1 4662 0
	movq	-8(%rbp), %rax	# ent, tmp401
	movq	$0, 16(%rax)	#, ent_235->comparison_const
	.loc 1 4663 0
	movq	-120(%rbp), %rax	# op1, tmp402
	movl	8(%rax), %edx	# op1_1->fld[0].rtuint, D.22465
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.762
	cmpl	%eax, %edx	# cached_regno.762, D.22465
	jne	.L1351	#,
	.loc 1 4663 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.763
	testq	%rax, %rax	# cached_cse_reg_info.763
	jne	.L1352	#,
.L1351:
	.loc 1 4663 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp403
	movl	8(%rax), %eax	# op1_1->fld[0].rtuint, D.22465
	movl	%eax, %edi	# D.22465,
	call	get_cse_reg_info	#
	jmp	.L1353	#
.L1352:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.761
.L1353:
	.loc 1 4663 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.761_25->reg_qty, D.22463
	movq	-8(%rbp), %rax	# ent, tmp404
	movl	%edx, 24(%rax)	# D.22463, ent_235->comparison_qty
	.loc 1 4671 0 is_stmt 1 discriminator 3
	jmp	.L1293	#
.L1343:
	.loc 1 4667 0
	movq	-8(%rbp), %rax	# ent, tmp405
	movq	-120(%rbp), %rdx	# op1, tmp406
	movq	%rdx, 16(%rax)	# tmp406, ent_235->comparison_const
	.loc 1 4668 0
	movq	-8(%rbp), %rax	# ent, tmp407
	movl	$-1, 24(%rax)	#, ent_235->comparison_qty
	.loc 1 4671 0
	jmp	.L1293	#
.L1323:
.LBE94:
	.loc 1 4677 0
	cmpq	$0, -56(%rbp)	#, op0_elt
	jne	.L1355	#,
	.loc 1 4679 0
	movq	-112(%rbp), %rax	# op0, tmp408
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp408,
	call	insert_regs	#
	testl	%eax, %eax	# D.22463
	je	.L1356	#,
	.loc 1 4681 0
	movq	-112(%rbp), %rax	# op0, tmp409
	movq	%rax, %rdi	# tmp409,
	call	rehash_using_reg	#
	.loc 1 4682 0
	movq	-112(%rbp), %rax	# op0, tmp410
	movzwl	(%rax), %eax	# op0_31(D)->code, D.22461
	cmpw	$61, %ax	#, D.22461
	jne	.L1357	#,
	.loc 1 4682 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp411
	movl	8(%rax), %eax	# op0_31(D)->fld[0].rtuint, D.22465
	cmpl	$52, %eax	#, D.22465
	jbe	.L1357	#,
	movq	-112(%rbp), %rax	# op0, tmp412
	movl	8(%rax), %edx	# op0_31(D)->fld[0].rtuint, D.22465
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.766
	cmpl	%eax, %edx	# cached_regno.766, D.22465
	jne	.L1358	#,
	.loc 1 4682 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.767
	testq	%rax, %rax	# cached_cse_reg_info.767
	jne	.L1359	#,
.L1358:
	.loc 1 4682 0 discriminator 1
	movq	-112(%rbp), %rax	# op0, tmp413
	movl	8(%rax), %eax	# op0_31(D)->fld[0].rtuint, D.22465
	movl	%eax, %edi	# D.22465,
	call	get_cse_reg_info	#
	jmp	.L1360	#
.L1359:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.765
.L1360:
	.loc 1 4682 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.765_27->reg_qty, D.22463
	andl	$31, %eax	#, iftmp.764
	jmp	.L1361	#
.L1357:
	.loc 1 4682 0 discriminator 2
	movl	-104(%rbp), %edx	# mode, tmp414
	movq	-112(%rbp), %rax	# op0, tmp415
	movl	%edx, %esi	# tmp414,
	movq	%rax, %rdi	# tmp415,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.764
.L1361:
	.loc 1 4682 0 discriminator 3
	movl	%eax, -92(%rbp)	# iftmp.764, op0_hash
.L1356:
	.loc 1 4685 0 is_stmt 1
	movl	-104(%rbp), %ecx	# mode, tmp416
	movl	-92(%rbp), %edx	# op0_hash, tmp417
	movq	-112(%rbp), %rax	# op0, tmp418
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp418,
	call	insert	#
	movq	%rax, -56(%rbp)	# tmp419, op0_elt
	.loc 1 4686 0
	movl	-68(%rbp), %eax	# op0_in_memory, tmp420
	movl	%eax, %edx	# tmp420, D.22468
	movq	-56(%rbp), %rax	# op0_elt, tmp421
	movb	%dl, 76(%rax)	# D.22468, op0_elt_158->in_memory
.L1355:
	.loc 1 4689 0
	cmpq	$0, -48(%rbp)	#, op1_elt
	jne	.L1362	#,
	.loc 1 4691 0
	movq	-120(%rbp), %rax	# op1, tmp422
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp422,
	call	insert_regs	#
	testl	%eax, %eax	# D.22463
	je	.L1363	#,
	.loc 1 4693 0
	movq	-120(%rbp), %rax	# op1, tmp423
	movq	%rax, %rdi	# tmp423,
	call	rehash_using_reg	#
	.loc 1 4694 0
	movq	-120(%rbp), %rax	# op1, tmp424
	movzwl	(%rax), %eax	# op1_43(D)->code, D.22461
	cmpw	$61, %ax	#, D.22461
	jne	.L1364	#,
	.loc 1 4694 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp425
	movl	8(%rax), %eax	# op1_43(D)->fld[0].rtuint, D.22465
	cmpl	$52, %eax	#, D.22465
	jbe	.L1364	#,
	movq	-120(%rbp), %rax	# op1, tmp426
	movl	8(%rax), %edx	# op1_43(D)->fld[0].rtuint, D.22465
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.770
	cmpl	%eax, %edx	# cached_regno.770, D.22465
	jne	.L1365	#,
	.loc 1 4694 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.771
	testq	%rax, %rax	# cached_cse_reg_info.771
	jne	.L1366	#,
.L1365:
	.loc 1 4694 0 discriminator 1
	movq	-120(%rbp), %rax	# op1, tmp427
	movl	8(%rax), %eax	# op1_43(D)->fld[0].rtuint, D.22465
	movl	%eax, %edi	# D.22465,
	call	get_cse_reg_info	#
	jmp	.L1367	#
.L1366:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.769
.L1367:
	.loc 1 4694 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.769_29->reg_qty, D.22463
	andl	$31, %eax	#, iftmp.768
	jmp	.L1368	#
.L1364:
	.loc 1 4694 0 discriminator 2
	movl	-104(%rbp), %edx	# mode, tmp428
	movq	-120(%rbp), %rax	# op1, tmp429
	movl	%edx, %esi	# tmp428,
	movq	%rax, %rdi	# tmp429,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.768
.L1368:
	.loc 1 4694 0 discriminator 3
	movl	%eax, -88(%rbp)	# iftmp.768, op1_hash
.L1363:
	.loc 1 4697 0 is_stmt 1
	movl	-104(%rbp), %ecx	# mode, tmp430
	movl	-88(%rbp), %edx	# op1_hash, tmp431
	movq	-120(%rbp), %rax	# op1, tmp432
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp432,
	call	insert	#
	movq	%rax, -48(%rbp)	# tmp433, op1_elt
	.loc 1 4698 0
	movl	-64(%rbp), %eax	# op1_in_memory, tmp434
	movl	%eax, %edx	# tmp434, D.22468
	movq	-48(%rbp), %rax	# op1_elt, tmp435
	movb	%dl, 76(%rax)	# D.22468, op1_elt_175->in_memory
.L1362:
	.loc 1 4701 0
	movq	-48(%rbp), %rdx	# op1_elt, tmp436
	movq	-56(%rbp), %rax	# op0_elt, tmp437
	movq	%rdx, %rsi	# tmp436,
	movq	%rax, %rdi	# tmp437,
	call	merge_equiv_classes	#
	.loc 1 4702 0
	movq	-56(%rbp), %rax	# op0_elt, tmp438
	movq	%rax, last_jump_equiv_class(%rip)	# tmp438, last_jump_equiv_class
.L1293:
	.loc 1 4703 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	record_jump_cond, .-record_jump_cond
	.type	cse_insn, @function
cse_insn:
.LFB43:
	.loc 1 4752 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$632, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -632(%rbp)	# insn, insn
	movq	%rsi, -640(%rbp)	# libcall_insn, libcall_insn
	.loc 1 4753 0
	movq	-632(%rbp), %rax	# insn, tmp1454
	movq	32(%rax), %rax	# insn_210(D)->fld[3].rtx, tmp1455
	movq	%rax, -264(%rbp)	# tmp1455, x
	.loc 1 4756 0
	movl	$0, -608(%rbp)	#, n_sets
	.loc 1 4764 0
	movq	$0, -464(%rbp)	#, src_eqv
	.loc 1 4765 0
	movq	$0, -456(%rbp)	#, src_eqv_elt
	.loc 1 4766 0
	movl	$0, -604(%rbp)	#, src_eqv_volatile
	.loc 1 4767 0
	movl	$0, -600(%rbp)	#, src_eqv_in_memory
	.loc 1 4768 0
	movl	$0, -596(%rbp)	#, src_eqv_hash
	.loc 1 4770 0
	movq	$0, -448(%rbp)	#, sets
	.loc 1 4772 0
	movq	-632(%rbp), %rax	# insn, tmp1456
	movq	%rax, this_insn(%rip)	# tmp1456, this_insn
	.loc 1 4779 0
	movq	-632(%rbp), %rax	# insn, tmp1457
	movzwl	(%rax), %eax	# insn_210(D)->code, D.22470
	cmpw	$34, %ax	#, D.22470
	jne	.L1370	#,
	.loc 1 4781 0
	movq	-632(%rbp), %rax	# insn, tmp1458
	movq	64(%rax), %rax	# insn_210(D)->fld[7].rtx, tmp1459
	movq	%rax, -472(%rbp)	# tmp1459, tem
	jmp	.L1371	#
.L1373:
	.loc 1 4783 0
	movq	-472(%rbp), %rax	# tem, tmp1460
	movq	8(%rax), %rax	# tem_14->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _221->code, D.22470
	cmpw	$49, %ax	#, D.22470
	jne	.L1372	#,
	.loc 1 4784 0
	movq	-472(%rbp), %rax	# tem, tmp1461
	movq	8(%rax), %rax	# tem_14->fld[0].rtx, D.22471
	movq	8(%rax), %rax	# _223->fld[0].rtx, D.22471
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22471,
	call	invalidate	#
.L1372:
	.loc 1 4785 0
	movq	-472(%rbp), %rax	# tem, tmp1462
	movq	8(%rax), %rax	# tem_14->fld[0].rtx, D.22471
	movq	-632(%rbp), %rdx	# insn, tmp1463
	movq	%rdx, %rsi	# tmp1463,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	movq	-472(%rbp), %rdx	# tem, tmp1464
	movq	%rax, 8(%rdx)	# D.22471, tem_14->fld[0].rtx
	.loc 1 4781 0
	movq	-472(%rbp), %rax	# tem, tmp1465
	movq	16(%rax), %rax	# tem_14->fld[1].rtx, tmp1466
	movq	%rax, -472(%rbp)	# tmp1466, tem
.L1371:
	.loc 1 4781 0 is_stmt 0 discriminator 1
	cmpq	$0, -472(%rbp)	#, tem
	jne	.L1373	#,
.L1370:
	.loc 1 4789 0 is_stmt 1
	movq	-264(%rbp), %rax	# x, tmp1467
	movzwl	(%rax), %eax	# x_211->code, D.22470
	cmpw	$47, %ax	#, D.22470
	jne	.L1374	#,
	.loc 1 4791 0
	movl	$16, %eax	#, tmp2890
	subq	$1, %rax	#, tmp1468
	addq	$95, %rax	#, tmp1469
	movl	$16, %ebx	#, tmp2891
	movl	$0, %edx	#, tmp1472
	divq	%rbx	# tmp2891
	imulq	$16, %rax, %rax	#, tmp1471, tmp1473
	subq	%rax, %rsp	# tmp1473,
	movq	%rsp, %rax	#, tmp1474
	addq	$15, %rax	#, tmp1475
	shrq	$4, %rax	#, tmp1476
	salq	$4, %rax	#, tmp1477
	movq	%rax, -448(%rbp)	# tmp1477, sets
	.loc 1 4792 0
	movq	-448(%rbp), %rax	# sets, tmp1478
	movq	-264(%rbp), %rdx	# x, tmp1479
	movq	%rdx, (%rax)	# tmp1479, sets_229->rtl
	.loc 1 4801 0
	movq	-264(%rbp), %rax	# x, tmp1480
	movq	8(%rax), %rdx	# x_211->fld[0].rtx, D.22471
	movq	global_rtl(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	jne	.L1375	#,
	.loc 1 4802 0
	movq	-264(%rbp), %rax	# x, tmp1481
	movq	16(%rax), %rax	# x_211->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _232->code, D.22470
	cmpw	$67, %ax	#, D.22470
	jne	.L1375	#,
	.loc 1 4802 0 is_stmt 0 discriminator 1
	nop
	jmp	.L1378	#
.L1375:
	.loc 1 4812 0 is_stmt 1
	movq	-264(%rbp), %rax	# x, tmp1482
	movq	16(%rax), %rax	# x_211->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _234->code, D.22470
	cmpw	$50, %ax	#, D.22470
	jne	.L1377	#,
	.loc 1 4814 0
	movq	-264(%rbp), %rax	# x, tmp1483
	movq	16(%rax), %rax	# x_211->fld[1].rtx, D.22471
	movq	-632(%rbp), %rdx	# insn, tmp1484
	movq	%rdx, %rsi	# tmp1484,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	.loc 1 4815 0
	call	apply_change_group	#
	.loc 1 4816 0
	movq	-264(%rbp), %rax	# x, tmp1485
	movq	16(%rax), %rax	# x_211->fld[1].rtx, D.22471
	movq	-632(%rbp), %rdx	# insn, tmp1486
	movq	%rdx, %rsi	# tmp1486,
	movq	%rax, %rdi	# D.22471,
	call	fold_rtx	#
	.loc 1 4817 0
	movq	-264(%rbp), %rax	# x, tmp1487
	movq	8(%rax), %rax	# x_211->fld[0].rtx, D.22471
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22471,
	call	invalidate	#
	jmp	.L1378	#
.L1377:
	.loc 1 4820 0
	movl	$1, -608(%rbp)	#, n_sets
	jmp	.L1378	#
.L1374:
	.loc 1 4822 0
	movq	-264(%rbp), %rax	# x, tmp1488
	movzwl	(%rax), %eax	# x_211->code, D.22470
	cmpw	$39, %ax	#, D.22470
	jne	.L1379	#,
.LBB95:
	.loc 1 4824 0
	movq	-264(%rbp), %rax	# x, tmp1489
	movq	8(%rax), %rax	# x_211->fld[0].rtvec, D.22472
	movl	(%rax), %eax	# _241->num_elem, tmp1490
	movl	%eax, -524(%rbp)	# tmp1490, lim
	.loc 1 4826 0
	movl	-524(%rbp), %eax	# lim, tmp1491
	movslq	%eax, %rdx	# tmp1491, D.22473
	movq	%rdx, %rax	# D.22473, tmp1492
	salq	$2, %rax	#, tmp1492
	addq	%rdx, %rax	# D.22473, tmp1492
	salq	$4, %rax	#, tmp1493
	leaq	15(%rax), %rdx	#, tmp1494
	movl	$16, %eax	#, tmp2892
	subq	$1, %rax	#, tmp1495
	addq	%rdx, %rax	# tmp1494, tmp1496
	movl	$16, %ebx	#, tmp2893
	movl	$0, %edx	#, tmp1499
	divq	%rbx	# tmp2893
	imulq	$16, %rax, %rax	#, tmp1498, tmp1500
	subq	%rax, %rsp	# tmp1500,
	movq	%rsp, %rax	#, tmp1501
	addq	$15, %rax	#, tmp1502
	shrq	$4, %rax	#, tmp1503
	salq	$4, %rax	#, tmp1504
	movq	%rax, -448(%rbp)	# tmp1504, sets
	.loc 1 4839 0
	movl	$0, -612(%rbp)	#, i
	jmp	.L1380	#
.L1385:
.LBB96:
	.loc 1 4841 0
	movq	-264(%rbp), %rax	# x, tmp1505
	movq	8(%rax), %rax	# x_211->fld[0].rtvec, D.22472
	movl	-612(%rbp), %edx	# i, tmp1507
	movslq	%edx, %rdx	# tmp1507, tmp1506
	movq	8(%rax,%rdx,8), %rax	# _247->elem, tmp1508
	movq	%rax, -256(%rbp)	# tmp1508, y
	.loc 1 4842 0
	movq	-256(%rbp), %rax	# y, tmp1509
	movzwl	(%rax), %eax	# y_248->code, D.22470
	cmpw	$49, %ax	#, D.22470
	jne	.L1381	#,
.LBB97:
	.loc 1 4844 0
	movq	-256(%rbp), %rax	# y, tmp1510
	movq	8(%rax), %rax	# y_248->fld[0].rtx, tmp1511
	movq	%rax, -248(%rbp)	# tmp1511, clobbered
	.loc 1 4846 0
	movq	-248(%rbp), %rax	# clobbered, tmp1512
	movzwl	(%rax), %eax	# clobbered_250->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1382	#,
	.loc 1 4847 0
	movq	-248(%rbp), %rax	# clobbered, tmp1513
	movzwl	(%rax), %eax	# clobbered_250->code, D.22470
	cmpw	$63, %ax	#, D.22470
	jne	.L1383	#,
.L1382:
	.loc 1 4848 0
	movq	-248(%rbp), %rax	# clobbered, tmp1514
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1514,
	call	invalidate	#
	jmp	.L1381	#
.L1383:
	.loc 1 4849 0
	movq	-248(%rbp), %rax	# clobbered, tmp1515
	movzwl	(%rax), %eax	# clobbered_250->code, D.22470
	cmpw	$64, %ax	#, D.22470
	je	.L1384	#,
	.loc 1 4850 0
	movq	-248(%rbp), %rax	# clobbered, tmp1516
	movzwl	(%rax), %eax	# clobbered_250->code, D.22470
	cmpw	$133, %ax	#, D.22470
	jne	.L1381	#,
.L1384:
	.loc 1 4851 0
	movq	-248(%rbp), %rax	# clobbered, tmp1517
	movzbl	2(%rax), %eax	# clobbered_250->mode, D.22474
	movzbl	%al, %edx	# D.22474, D.22475
	movq	-248(%rbp), %rax	# clobbered, tmp1518
	movq	8(%rax), %rax	# clobbered_250->fld[0].rtx, D.22471
	movl	%edx, %esi	# D.22475,
	movq	%rax, %rdi	# D.22471,
	call	invalidate	#
.L1381:
.LBE97:
.LBE96:
	.loc 1 4839 0
	addl	$1, -612(%rbp)	#, i
.L1380:
	.loc 1 4839 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp1519
	cmpl	-524(%rbp), %eax	# lim, tmp1519
	jl	.L1385	#,
	.loc 1 4855 0 is_stmt 1
	movl	$0, -612(%rbp)	#, i
	jmp	.L1386	#
.L1396:
.LBB98:
	.loc 1 4857 0
	movq	-264(%rbp), %rax	# x, tmp1520
	movq	8(%rax), %rax	# x_211->fld[0].rtvec, D.22472
	movl	-612(%rbp), %edx	# i, tmp1522
	movslq	%edx, %rdx	# tmp1522, tmp1521
	movq	8(%rax,%rdx,8), %rax	# _260->elem, tmp1523
	movq	%rax, -240(%rbp)	# tmp1523, y
	.loc 1 4858 0
	movq	-240(%rbp), %rax	# y, tmp1524
	movzwl	(%rax), %eax	# y_261->code, D.22470
	cmpw	$47, %ax	#, D.22470
	jne	.L1387	#,
	.loc 1 4862 0
	movq	-240(%rbp), %rax	# y, tmp1525
	movq	16(%rax), %rax	# y_261->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _263->code, D.22470
	cmpw	$50, %ax	#, D.22470
	jne	.L1388	#,
	.loc 1 4864 0
	movq	-240(%rbp), %rax	# y, tmp1526
	movq	16(%rax), %rax	# y_261->fld[1].rtx, D.22471
	movq	-632(%rbp), %rdx	# insn, tmp1527
	movq	%rdx, %rsi	# tmp1527,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	.loc 1 4865 0
	call	apply_change_group	#
	.loc 1 4866 0
	movq	-240(%rbp), %rax	# y, tmp1528
	movq	16(%rax), %rax	# y_261->fld[1].rtx, D.22471
	movq	-632(%rbp), %rdx	# insn, tmp1529
	movq	%rdx, %rsi	# tmp1529,
	movq	%rax, %rdi	# D.22471,
	call	fold_rtx	#
	.loc 1 4867 0
	movq	-240(%rbp), %rax	# y, tmp1530
	movq	8(%rax), %rax	# y_261->fld[0].rtx, D.22471
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22471,
	call	invalidate	#
	jmp	.L1391	#
.L1388:
	.loc 1 4869 0
	movq	-240(%rbp), %rax	# y, tmp1531
	movq	8(%rax), %rdx	# y_261->fld[0].rtx, D.22471
	movq	global_rtl(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	jne	.L1390	#,
	.loc 1 4870 0
	movq	-240(%rbp), %rax	# y, tmp1532
	movq	16(%rax), %rax	# y_261->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _270->code, D.22470
	cmpw	$67, %ax	#, D.22470
	jne	.L1390	#,
	.loc 1 4870 0 is_stmt 0 discriminator 1
	nop
	jmp	.L1391	#
.L1390:
	.loc 1 4873 0 is_stmt 1
	movl	-608(%rbp), %eax	# n_sets, n_sets.772
	leal	1(%rax), %edx	#, tmp1533
	movl	%edx, -608(%rbp)	# tmp1533, n_sets
	movslq	%eax, %rdx	# n_sets.772, D.22473
	movq	%rdx, %rax	# D.22473, tmp1534
	salq	$2, %rax	#, tmp1534
	addq	%rdx, %rax	# D.22473, tmp1534
	salq	$4, %rax	#, tmp1535
	movq	%rax, %rdx	# tmp1534, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1536
	addq	%rax, %rdx	# tmp1536, D.22476
	movq	-240(%rbp), %rax	# y, tmp1537
	movq	%rax, (%rdx)	# tmp1537, _276->rtl
	jmp	.L1391	#
.L1387:
	.loc 1 4875 0
	movq	-240(%rbp), %rax	# y, tmp1538
	movzwl	(%rax), %eax	# y_261->code, D.22470
	cmpw	$49, %ax	#, D.22470
	jne	.L1392	#,
	.loc 1 4880 0
	movq	-240(%rbp), %rax	# y, tmp1539
	movq	8(%rax), %rax	# y_261->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _278->code, D.22470
	cmpw	$66, %ax	#, D.22470
	jne	.L1391	#,
	.loc 1 4881 0
	movq	-240(%rbp), %rax	# y, tmp1540
	movq	8(%rax), %rax	# y_261->fld[0].rtx, D.22471
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	jmp	.L1391	#
.L1392:
	.loc 1 4883 0
	movq	-240(%rbp), %rax	# y, tmp1541
	movzwl	(%rax), %eax	# y_261->code, D.22470
	cmpw	$48, %ax	#, D.22470
	jne	.L1394	#,
	.loc 1 4884 0
	movq	-240(%rbp), %rax	# y, tmp1542
	movq	8(%rax), %rax	# y_261->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _282->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1395	#,
	.loc 1 4885 0 discriminator 1
	movq	-240(%rbp), %rax	# y, tmp1543
	movq	8(%rax), %rax	# y_261->fld[0].rtx, D.22471
	movl	8(%rax), %eax	# _284->fld[0].rtuint, D.22477
	.loc 1 4884 0 discriminator 1
	cmpl	$52, %eax	#, D.22477
	jbe	.L1394	#,
.L1395:
	.loc 1 4886 0
	movq	-240(%rbp), %rax	# y, tmp1544
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1544,
	call	canon_reg	#
	jmp	.L1391	#
.L1394:
	.loc 1 4887 0
	movq	-240(%rbp), %rax	# y, tmp1545
	movzwl	(%rax), %eax	# y_261->code, D.22470
	cmpw	$50, %ax	#, D.22470
	jne	.L1391	#,
	.loc 1 4891 0
	movq	-632(%rbp), %rdx	# insn, tmp1546
	movq	-240(%rbp), %rax	# y, tmp1547
	movq	%rdx, %rsi	# tmp1546,
	movq	%rax, %rdi	# tmp1547,
	call	canon_reg	#
	.loc 1 4892 0
	call	apply_change_group	#
	.loc 1 4893 0
	movq	-632(%rbp), %rdx	# insn, tmp1548
	movq	-240(%rbp), %rax	# y, tmp1549
	movq	%rdx, %rsi	# tmp1548,
	movq	%rax, %rdi	# tmp1549,
	call	fold_rtx	#
.L1391:
.LBE98:
	.loc 1 4855 0
	addl	$1, -612(%rbp)	#, i
.L1386:
	.loc 1 4855 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp1550
	cmpl	-524(%rbp), %eax	# lim, tmp1550
	jl	.L1396	#,
.LBE95:
	jmp	.L1378	#
.L1379:
	.loc 1 4897 0 is_stmt 1
	movq	-264(%rbp), %rax	# x, tmp1551
	movzwl	(%rax), %eax	# x_211->code, D.22470
	cmpw	$49, %ax	#, D.22470
	jne	.L1397	#,
	.loc 1 4899 0
	movq	-264(%rbp), %rax	# x, tmp1552
	movq	8(%rax), %rax	# x_211->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _289->code, D.22470
	cmpw	$66, %ax	#, D.22470
	jne	.L1378	#,
	.loc 1 4900 0
	movq	-264(%rbp), %rax	# x, tmp1553
	movq	8(%rax), %rax	# x_211->fld[0].rtx, D.22471
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	jmp	.L1378	#
.L1397:
	.loc 1 4904 0
	movq	-264(%rbp), %rax	# x, tmp1554
	movzwl	(%rax), %eax	# x_211->code, D.22470
	cmpw	$48, %ax	#, D.22470
	jne	.L1399	#,
	.loc 1 4905 0
	movq	-264(%rbp), %rax	# x, tmp1555
	movq	8(%rax), %rax	# x_211->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _293->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1400	#,
	.loc 1 4906 0 discriminator 1
	movq	-264(%rbp), %rax	# x, tmp1556
	movq	8(%rax), %rax	# x_211->fld[0].rtx, D.22471
	movl	8(%rax), %eax	# _295->fld[0].rtuint, D.22477
	.loc 1 4905 0 discriminator 1
	cmpl	$52, %eax	#, D.22477
	jbe	.L1399	#,
.L1400:
	.loc 1 4907 0
	movq	-264(%rbp), %rax	# x, tmp1557
	movq	8(%rax), %rax	# x_211->fld[0].rtx, D.22471
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	jmp	.L1378	#
.L1399:
	.loc 1 4908 0
	movq	-264(%rbp), %rax	# x, tmp1558
	movzwl	(%rax), %eax	# x_211->code, D.22470
	cmpw	$50, %ax	#, D.22470
	jne	.L1378	#,
	.loc 1 4911 0
	movq	-632(%rbp), %rdx	# insn, tmp1559
	movq	-264(%rbp), %rax	# x, tmp1560
	movq	%rdx, %rsi	# tmp1559,
	movq	%rax, %rdi	# tmp1560,
	call	canon_reg	#
	.loc 1 4912 0
	call	apply_change_group	#
	.loc 1 4913 0
	movq	-632(%rbp), %rdx	# insn, tmp1561
	movq	-264(%rbp), %rax	# x, tmp1562
	movq	%rdx, %rsi	# tmp1561,
	movq	%rax, %rdi	# tmp1562,
	call	fold_rtx	#
.L1378:
	.loc 1 4920 0
	cmpl	$1, -608(%rbp)	#, n_sets
	jne	.L1401	#,
	.loc 1 4920 0 is_stmt 0 discriminator 1
	movq	-632(%rbp), %rax	# insn, tmp1563
	movq	56(%rax), %rax	# insn_210(D)->fld[6].rtx, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1401	#,
	.loc 1 4921 0 is_stmt 1
	movq	-632(%rbp), %rax	# insn, tmp1564
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp1564,
	call	find_reg_note	#
	movq	%rax, -472(%rbp)	# tmp1565, tem
	cmpq	$0, -472(%rbp)	#, tem
	je	.L1401	#,
	.loc 1 4922 0
	movq	-448(%rbp), %rax	# sets, tmp1566
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	16(%rax), %rdx	# _301->fld[1].rtx, D.22471
	movq	-472(%rbp), %rax	# tem, tmp1567
	movq	8(%rax), %rax	# tem_300->fld[0].rtx, D.22471
	movq	%rdx, %rsi	# D.22471,
	movq	%rax, %rdi	# D.22471,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1402	#,
	.loc 1 4923 0
	movq	-448(%rbp), %rax	# sets, tmp1568
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	8(%rax), %rax	# _305->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _306->code, D.22470
	cmpw	$64, %ax	#, D.22470
	jne	.L1401	#,
.L1402:
	.loc 1 4925 0
	movq	-472(%rbp), %rax	# tem, tmp1569
	movq	8(%rax), %rax	# tem_300->fld[0].rtx, D.22471
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	movq	-632(%rbp), %rdx	# insn, tmp1570
	movq	%rdx, %rsi	# tmp1570,
	movq	%rax, %rdi	# D.22471,
	call	fold_rtx	#
	movq	%rax, -464(%rbp)	# tmp1571, src_eqv
	.loc 1 4926 0
	movq	-472(%rbp), %rax	# tem, tmp1572
	movq	-464(%rbp), %rdx	# src_eqv, tmp1573
	movq	%rdx, 8(%rax)	# tmp1573, tem_300->fld[0].rtx
.L1401:
	.loc 1 4939 0
	movl	$0, -612(%rbp)	#, i
	jmp	.L1403	#
.L1415:
.LBB99:
	.loc 1 4941 0
	movl	-612(%rbp), %eax	# i, tmp1574
	movslq	%eax, %rdx	# tmp1574, D.22473
	movq	%rdx, %rax	# D.22473, tmp1575
	salq	$2, %rax	#, tmp1575
	addq	%rdx, %rax	# D.22473, tmp1575
	salq	$4, %rax	#, tmp1576
	movq	%rax, %rdx	# tmp1575, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1577
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _314->rtl, D.22471
	movq	8(%rax), %rax	# _315->fld[0].rtx, tmp1578
	movq	%rax, -440(%rbp)	# tmp1578, dest
	.loc 1 4942 0
	movl	-612(%rbp), %eax	# i, tmp1579
	movslq	%eax, %rdx	# tmp1579, D.22473
	movq	%rdx, %rax	# D.22473, tmp1580
	salq	$2, %rax	#, tmp1580
	addq	%rdx, %rax	# D.22473, tmp1580
	salq	$4, %rax	#, tmp1581
	movq	%rax, %rdx	# tmp1580, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1582
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _319->rtl, D.22471
	movq	16(%rax), %rax	# _320->fld[1].rtx, tmp1583
	movq	%rax, -232(%rbp)	# tmp1583, src
	.loc 1 4943 0
	movq	-632(%rbp), %rdx	# insn, tmp1584
	movq	-232(%rbp), %rax	# src, tmp1585
	movq	%rdx, %rsi	# tmp1584,
	movq	%rax, %rdi	# tmp1585,
	call	canon_reg	#
	movq	%rax, -224(%rbp)	# tmp1586, new
	.loc 1 4946 0
	movl	-612(%rbp), %eax	# i, tmp1587
	movslq	%eax, %rdx	# tmp1587, D.22473
	movq	%rdx, %rax	# D.22473, tmp1588
	salq	$2, %rax	#, tmp1588
	addq	%rdx, %rax	# D.22473, tmp1588
	salq	$4, %rax	#, tmp1589
	movq	%rax, %rdx	# tmp1588, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1590
	addq	%rax, %rdx	# tmp1590, D.22476
	movq	-232(%rbp), %rax	# src, tmp1591
	movq	%rax, 56(%rdx)	# tmp1591, _325->orig_src
	.loc 1 4947 0
	movq	-224(%rbp), %rax	# new, tmp1592
	movzwl	(%rax), %eax	# new_322->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1404	#,
	.loc 1 4947 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# src, tmp1593
	movzwl	(%rax), %eax	# src_321->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1404	#,
	.loc 1 4948 0 is_stmt 1
	movq	-224(%rbp), %rax	# new, tmp1594
	movl	8(%rax), %eax	# new_322->fld[0].rtuint, D.22477
	.loc 1 4949 0
	cmpl	$52, %eax	#, D.22477
	setbe	%dl	#, D.22479
	movq	-232(%rbp), %rax	# src, tmp1595
	movl	8(%rax), %eax	# src_321->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	setbe	%al	#, D.22479
	xorl	%edx, %eax	# D.22479, D.22479
	.loc 1 4948 0
	testb	%al, %al	# D.22479
	jne	.L1405	#,
.L1404:
	.loc 1 4950 0
	movq	-632(%rbp), %rax	# insn, tmp1596
	movl	40(%rax), %eax	# insn_210(D)->fld[4].rtint, D.22478
	testl	%eax, %eax	# D.22478
	js	.L1406	#,
	.loc 1 4950 0 is_stmt 0 discriminator 1
	movq	-632(%rbp), %rax	# insn, tmp1597
	movl	40(%rax), %eax	# insn_210(D)->fld[4].rtint, iftmp.773
	jmp	.L1407	#
.L1406:
	.loc 1 4950 0 discriminator 2
	movq	-632(%rbp), %rax	# insn, tmp1598
	movq	%rax, %rdi	# tmp1598,
	call	recog_memoized_1	#
.L1407:
	.loc 1 4950 0 discriminator 3
	movl	%eax, -520(%rbp)	# iftmp.773, insn_code
	cmpl	$0, -520(%rbp)	#, insn_code
	js	.L1405	#,
	.loc 1 4951 0 is_stmt 1
	movl	-520(%rbp), %eax	# insn_code, tmp1600
	movslq	%eax, %rdx	# tmp1600, tmp1599
	movq	%rdx, %rax	# tmp1599, tmp1601
	salq	$2, %rax	#, tmp1601
	addq	%rdx, %rax	# tmp1599, tmp1601
	salq	$3, %rax	#, tmp1602
	addq	$insn_data+32, %rax	#, tmp1603
	movzbl	1(%rax), %eax	# insn_data[insn_code_336].n_dups, D.22480
	testb	%al, %al	# D.22480
	jle	.L1408	#,
.L1405:
	.loc 1 4952 0
	movl	-612(%rbp), %eax	# i, tmp1604
	movslq	%eax, %rdx	# tmp1604, D.22473
	movq	%rdx, %rax	# D.22473, tmp1605
	salq	$2, %rax	#, tmp1605
	addq	%rdx, %rax	# D.22473, tmp1605
	salq	$4, %rax	#, tmp1606
	movq	%rax, %rdx	# tmp1605, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1607
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _344->rtl, D.22471
	leaq	16(%rax), %rsi	#, D.22481
	movq	-224(%rbp), %rdx	# new, tmp1608
	movq	-632(%rbp), %rax	# insn, tmp1609
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp1609,
	call	validate_change	#
	jmp	.L1409	#
.L1408:
	.loc 1 4954 0
	movl	-612(%rbp), %eax	# i, tmp1610
	movslq	%eax, %rdx	# tmp1610, D.22473
	movq	%rdx, %rax	# D.22473, tmp1611
	salq	$2, %rax	#, tmp1611
	addq	%rdx, %rax	# D.22473, tmp1611
	salq	$4, %rax	#, tmp1612
	movq	%rax, %rdx	# tmp1611, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1613
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _340->rtl, D.22471
	movq	-224(%rbp), %rdx	# new, tmp1614
	movq	%rdx, 16(%rax)	# tmp1614, _341->fld[1].rtx
.L1409:
	.loc 1 4956 0
	movq	-440(%rbp), %rax	# dest, tmp1615
	movzwl	(%rax), %eax	# dest_316->code, D.22470
	cmpw	$133, %ax	#, D.22470
	je	.L1410	#,
	.loc 1 4956 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# dest, tmp1616
	movzwl	(%rax), %eax	# dest_316->code, D.22470
	cmpw	$132, %ax	#, D.22470
	jne	.L1411	#,
.L1410:
	.loc 1 4958 0 is_stmt 1
	movq	-440(%rbp), %rax	# dest, tmp1617
	movq	16(%rax), %rax	# dest_316->fld[1].rtx, D.22471
	movq	-632(%rbp), %rdx	# insn, tmp1618
	movq	%rdx, %rsi	# tmp1618,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	movq	%rax, %rdx	#, D.22471
	movq	-440(%rbp), %rax	# dest, tmp1619
	leaq	16(%rax), %rsi	#, D.22481
	movq	-632(%rbp), %rax	# insn, tmp1620
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp1620,
	call	validate_change	#
	.loc 1 4960 0
	movq	-440(%rbp), %rax	# dest, tmp1621
	movq	24(%rax), %rax	# dest_316->fld[2].rtx, D.22471
	movq	-632(%rbp), %rdx	# insn, tmp1622
	movq	%rdx, %rsi	# tmp1622,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	movq	%rax, %rdx	#, D.22471
	movq	-440(%rbp), %rax	# dest, tmp1623
	leaq	24(%rax), %rsi	#, D.22481
	movq	-632(%rbp), %rax	# insn, tmp1624
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp1624,
	call	validate_change	#
	.loc 1 4964 0
	jmp	.L1412	#
.L1411:
	jmp	.L1412	#
.L1413:
	.loc 1 4967 0
	movq	-440(%rbp), %rax	# dest, tmp1625
	movq	8(%rax), %rax	# dest_43->fld[0].rtx, tmp1626
	movq	%rax, -440(%rbp)	# tmp1626, dest
.L1412:
	.loc 1 4964 0 discriminator 1
	movq	-440(%rbp), %rax	# dest, tmp1627
	movzwl	(%rax), %eax	# dest_43->code, D.22470
	cmpw	$63, %ax	#, D.22470
	je	.L1413	#,
	.loc 1 4964 0 is_stmt 0 discriminator 2
	movq	-440(%rbp), %rax	# dest, tmp1628
	movzwl	(%rax), %eax	# dest_43->code, D.22470
	cmpw	$64, %ax	#, D.22470
	je	.L1413	#,
	.loc 1 4965 0 is_stmt 1
	movq	-440(%rbp), %rax	# dest, tmp1629
	movzwl	(%rax), %eax	# dest_43->code, D.22470
	cmpw	$133, %ax	#, D.22470
	je	.L1413	#,
	.loc 1 4966 0
	movq	-440(%rbp), %rax	# dest, tmp1630
	movzwl	(%rax), %eax	# dest_43->code, D.22470
	cmpw	$132, %ax	#, D.22470
	je	.L1413	#,
	.loc 1 4969 0
	movq	-440(%rbp), %rax	# dest, tmp1631
	movzwl	(%rax), %eax	# dest_43->code, D.22470
	cmpw	$66, %ax	#, D.22470
	jne	.L1414	#,
	.loc 1 4970 0
	movq	-632(%rbp), %rdx	# insn, tmp1632
	movq	-440(%rbp), %rax	# dest, tmp1633
	movq	%rdx, %rsi	# tmp1632,
	movq	%rax, %rdi	# tmp1633,
	call	canon_reg	#
.L1414:
.LBE99:
	.loc 1 4939 0
	addl	$1, -612(%rbp)	#, i
.L1403:
	.loc 1 4939 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp1634
	cmpl	-608(%rbp), %eax	# n_sets, tmp1634
	jl	.L1415	#,
	.loc 1 4981 0 is_stmt 1
	call	apply_change_group	#
	.loc 1 4990 0
	movl	$0, -612(%rbp)	#, i
	jmp	.L1416	#
.L1630:
.LBB100:
	.loc 1 4994 0
	movq	$0, -408(%rbp)	#, elt
	.loc 1 4997 0
	movq	$0, -384(%rbp)	#, src_const
	.loc 1 4998 0
	movq	$0, -376(%rbp)	#, src_related
	.loc 1 4999 0
	movq	$0, -368(%rbp)	#, src_const_elt
	.loc 1 5000 0
	movl	$2147483647, -592(%rbp)	#, src_cost
	.loc 1 5001 0
	movl	$2147483647, -588(%rbp)	#, src_eqv_cost
	.loc 1 5002 0
	movl	$2147483647, -584(%rbp)	#, src_folded_cost
	.loc 1 5003 0
	movl	$2147483647, -580(%rbp)	#, src_related_cost
	.loc 1 5004 0
	movl	$2147483647, -576(%rbp)	#, src_elt_cost
	.loc 1 5005 0
	movl	$2147483647, -572(%rbp)	#, src_regcost
	.loc 1 5006 0
	movl	$2147483647, -568(%rbp)	#, src_eqv_regcost
	.loc 1 5007 0
	movl	$2147483647, -564(%rbp)	#, src_folded_regcost
	.loc 1 5008 0
	movl	$2147483647, -560(%rbp)	#, src_related_regcost
	.loc 1 5009 0
	movl	$2147483647, -556(%rbp)	#, src_elt_regcost
	.loc 1 5012 0
	movl	$0, -552(%rbp)	#, src_folded_force_flag
	.loc 1 5014 0
	movl	-612(%rbp), %eax	# i, tmp1635
	movslq	%eax, %rdx	# tmp1635, D.22473
	movq	%rdx, %rax	# D.22473, tmp1636
	salq	$2, %rax	#, tmp1636
	addq	%rdx, %rax	# D.22473, tmp1636
	salq	$4, %rax	#, tmp1637
	movq	%rax, %rdx	# tmp1636, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1638
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _380->rtl, D.22471
	movq	8(%rax), %rax	# _381->fld[0].rtx, tmp1639
	movq	%rax, -424(%rbp)	# tmp1639, dest
	.loc 1 5015 0
	movl	-612(%rbp), %eax	# i, tmp1640
	movslq	%eax, %rdx	# tmp1640, D.22473
	movq	%rdx, %rax	# D.22473, tmp1641
	salq	$2, %rax	#, tmp1641
	addq	%rdx, %rax	# D.22473, tmp1641
	salq	$4, %rax	#, tmp1642
	movq	%rax, %rdx	# tmp1641, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1643
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _385->rtl, D.22471
	movq	16(%rax), %rax	# _386->fld[1].rtx, tmp1644
	movq	%rax, -432(%rbp)	# tmp1644, src
	.loc 1 5021 0
	movq	-432(%rbp), %rax	# src, tmp1645
	movzbl	2(%rax), %eax	# src_387->mode, D.22474
	testb	%al, %al	# D.22474
	jne	.L1417	#,
	.loc 1 5021 0 is_stmt 0 discriminator 1
	movq	-424(%rbp), %rax	# dest, tmp1646
	movzbl	2(%rax), %eax	# dest_382->mode, D.22474
	movzbl	%al, %eax	# D.22474, iftmp.774
	jmp	.L1418	#
.L1417:
	.loc 1 5021 0 discriminator 2
	movq	-432(%rbp), %rax	# src, tmp1647
	movzbl	2(%rax), %eax	# src_387->mode, D.22474
	movzbl	%al, %eax	# D.22474, iftmp.774
.L1418:
	.loc 1 5021 0 discriminator 3
	movl	%eax, -516(%rbp)	# iftmp.774, mode
	.loc 1 5022 0 is_stmt 1 discriminator 3
	movl	-612(%rbp), %eax	# i, tmp1648
	movslq	%eax, %rdx	# tmp1648, D.22473
	movq	%rdx, %rax	# D.22473, tmp1649
	salq	$2, %rax	#, tmp1649
	addq	%rdx, %rax	# D.22473, tmp1649
	salq	$4, %rax	#, tmp1650
	movq	%rax, %rdx	# tmp1649, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1651
	addq	%rax, %rdx	# tmp1651, D.22476
	movl	-516(%rbp), %eax	# mode, tmp1652
	movl	%eax, 44(%rdx)	# tmp1652, _396->mode
	.loc 1 5024 0 discriminator 3
	cmpq	$0, -464(%rbp)	#, src_eqv
	je	.L1419	#,
.LBB101:
	.loc 1 5026 0
	movl	-516(%rbp), %eax	# mode, tmp1653
	movl	%eax, -548(%rbp)	# tmp1653, eqvmode
	.loc 1 5027 0
	movq	-424(%rbp), %rax	# dest, tmp1654
	movzwl	(%rax), %eax	# dest_382->code, D.22470
	cmpw	$64, %ax	#, D.22470
	jne	.L1420	#,
	.loc 1 5028 0
	movq	-424(%rbp), %rax	# dest, tmp1655
	movq	8(%rax), %rax	# dest_382->fld[0].rtx, D.22471
	movq	8(%rax), %rax	# _399->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _400->mode, D.22474
	movzbl	%al, %eax	# D.22474, tmp1656
	movl	%eax, -548(%rbp)	# tmp1656, eqvmode
.L1420:
	.loc 1 5029 0
	movl	$0, do_not_record(%rip)	#, do_not_record
	.loc 1 5030 0
	movl	$0, hash_arg_in_memory(%rip)	#, hash_arg_in_memory
	.loc 1 5031 0
	movq	-464(%rbp), %rax	# src_eqv, tmp1657
	movzwl	(%rax), %eax	# src_eqv_23->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1421	#,
	.loc 1 5031 0 is_stmt 0 discriminator 1
	movq	-464(%rbp), %rax	# src_eqv, tmp1658
	movl	8(%rax), %eax	# src_eqv_23->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1421	#,
	movq	-464(%rbp), %rax	# src_eqv, tmp1659
	movl	8(%rax), %edx	# src_eqv_23->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.777
	cmpl	%eax, %edx	# cached_regno.777, D.22477
	jne	.L1422	#,
	.loc 1 5031 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.778
	testq	%rax, %rax	# cached_cse_reg_info.778
	jne	.L1423	#,
.L1422:
	.loc 1 5031 0 discriminator 1
	movq	-464(%rbp), %rax	# src_eqv, tmp1660
	movl	8(%rax), %eax	# src_eqv_23->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1424	#
.L1423:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.776
.L1424:
	.loc 1 5031 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.776_144->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.775
	jmp	.L1425	#
.L1421:
	.loc 1 5031 0 discriminator 2
	movl	-548(%rbp), %edx	# eqvmode, tmp1661
	movq	-464(%rbp), %rax	# src_eqv, tmp1662
	movl	%edx, %esi	# tmp1661,
	movq	%rax, %rdi	# tmp1662,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.775
.L1425:
	.loc 1 5031 0 discriminator 3
	movl	%eax, -596(%rbp)	# iftmp.775, src_eqv_hash
	.loc 1 5035 0 is_stmt 1 discriminator 3
	movl	do_not_record(%rip), %eax	# do_not_record, do_not_record.779
	testl	%eax, %eax	# do_not_record.779
	jne	.L1426	#,
	.loc 1 5036 0
	movl	-548(%rbp), %edx	# eqvmode, tmp1663
	movl	-596(%rbp), %ecx	# src_eqv_hash, tmp1664
	movq	-464(%rbp), %rax	# src_eqv, tmp1665
	movl	%ecx, %esi	# tmp1664,
	movq	%rax, %rdi	# tmp1665,
	call	lookup	#
	movq	%rax, -456(%rbp)	# tmp1666, src_eqv_elt
.L1426:
	.loc 1 5038 0
	movl	do_not_record(%rip), %eax	# do_not_record, tmp1667
	movl	%eax, -604(%rbp)	# tmp1667, src_eqv_volatile
	.loc 1 5039 0
	movl	hash_arg_in_memory(%rip), %eax	# hash_arg_in_memory, tmp1668
	movl	%eax, -600(%rbp)	# tmp1668, src_eqv_in_memory
.L1419:
.LBE101:
	.loc 1 5045 0
	movq	-424(%rbp), %rax	# dest, tmp1669
	movzwl	(%rax), %eax	# dest_382->code, D.22470
	cmpw	$64, %ax	#, D.22470
	jne	.L1427	#,
	.loc 1 5046 0
	movq	$0, -392(%rbp)	#, src_eqv_here
	jmp	.L1428	#
.L1427:
	.loc 1 5048 0
	movq	-464(%rbp), %rax	# src_eqv, tmp1670
	movq	%rax, -392(%rbp)	# tmp1670, src_eqv_here
.L1428:
	.loc 1 5052 0
	movq	-632(%rbp), %rdx	# insn, tmp1671
	movq	-432(%rbp), %rax	# src, tmp1672
	movq	%rdx, %rsi	# tmp1671,
	movq	%rax, %rdi	# tmp1672,
	call	fold_rtx	#
	movq	%rax, -416(%rbp)	# tmp1673, src_folded
	.loc 1 5081 0
	movl	$0, do_not_record(%rip)	#, do_not_record
	.loc 1 5082 0
	movl	$0, hash_arg_in_memory(%rip)	#, hash_arg_in_memory
	.loc 1 5084 0
	movl	-612(%rbp), %eax	# i, tmp1674
	movslq	%eax, %rdx	# tmp1674, D.22473
	movq	%rdx, %rax	# D.22473, tmp1675
	salq	$2, %rax	#, tmp1675
	addq	%rdx, %rax	# D.22473, tmp1675
	salq	$4, %rax	#, tmp1676
	movq	%rax, %rdx	# tmp1675, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1677
	addq	%rax, %rdx	# tmp1677, D.22476
	movq	-432(%rbp), %rax	# src, tmp1678
	movq	%rax, 8(%rdx)	# tmp1678, _427->src
	.loc 1 5085 0
	movl	-612(%rbp), %eax	# i, tmp1679
	movslq	%eax, %rdx	# tmp1679, D.22473
	movq	%rdx, %rax	# D.22473, tmp1680
	salq	$2, %rax	#, tmp1680
	addq	%rdx, %rax	# D.22473, tmp1680
	salq	$4, %rax	#, tmp1681
	movq	%rax, %rdx	# tmp1680, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1682
	leaq	(%rdx,%rax), %rbx	#, D.22476
	movq	-432(%rbp), %rax	# src, tmp1683
	movzwl	(%rax), %eax	# src_387->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1429	#,
	.loc 1 5085 0 is_stmt 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp1684
	movl	8(%rax), %eax	# src_387->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1429	#,
	movq	-432(%rbp), %rax	# src, tmp1685
	movl	8(%rax), %edx	# src_387->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.782
	cmpl	%eax, %edx	# cached_regno.782, D.22477
	jne	.L1430	#,
	.loc 1 5085 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.783
	testq	%rax, %rax	# cached_cse_reg_info.783
	jne	.L1431	#,
.L1430:
	.loc 1 5085 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp1686
	movl	8(%rax), %eax	# src_387->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1432	#
.L1431:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.781
.L1432:
	.loc 1 5085 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.781_146->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.780
	jmp	.L1433	#
.L1429:
	.loc 1 5085 0 discriminator 2
	movl	-516(%rbp), %edx	# mode, tmp1687
	movq	-432(%rbp), %rax	# src, tmp1688
	movl	%edx, %esi	# tmp1687,
	movq	%rax, %rdi	# tmp1688,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.780
.L1433:
	.loc 1 5085 0 discriminator 3
	movl	%eax, 24(%rbx)	# iftmp.780, _430->src_hash
	.loc 1 5086 0 is_stmt 1 discriminator 3
	movl	-612(%rbp), %eax	# i, tmp1689
	movslq	%eax, %rdx	# tmp1689, D.22473
	movq	%rdx, %rax	# D.22473, tmp1690
	salq	$2, %rax	#, tmp1690
	addq	%rdx, %rax	# D.22473, tmp1690
	salq	$4, %rax	#, tmp1691
	movq	%rax, %rdx	# tmp1690, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1692
	addq	%rax, %rdx	# tmp1692, D.22476
	movl	do_not_record(%rip), %eax	# do_not_record, do_not_record.784
	movb	%al, 41(%rdx)	# D.22480, _446->src_volatile
	.loc 1 5087 0 discriminator 3
	movl	-612(%rbp), %eax	# i, tmp1693
	movslq	%eax, %rdx	# tmp1693, D.22473
	movq	%rdx, %rax	# D.22473, tmp1694
	salq	$2, %rax	#, tmp1694
	addq	%rdx, %rax	# D.22473, tmp1694
	salq	$4, %rax	#, tmp1695
	movq	%rax, %rdx	# tmp1694, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1696
	addq	%rax, %rdx	# tmp1696, D.22476
	movl	hash_arg_in_memory(%rip), %eax	# hash_arg_in_memory, hash_arg_in_memory.785
	movb	%al, 40(%rdx)	# D.22480, _451->src_in_memory
	.loc 1 5096 0 discriminator 3
	movq	-432(%rbp), %rax	# src, tmp1697
	movzwl	(%rax), %eax	# src_387->code, D.22470
	cmpw	$66, %ax	#, D.22470
	jne	.L1434	#,
	.loc 1 5097 0
	movq	-632(%rbp), %rax	# insn, tmp1698
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp1698,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22471
	je	.L1434	#,
	.loc 1 5098 0
	movq	-424(%rbp), %rax	# dest, tmp1699
	movzwl	(%rax), %eax	# dest_382->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1434	#,
	.loc 1 5099 0
	movq	-424(%rbp), %rax	# dest, tmp1700
	movl	8(%rax), %eax	# dest_382->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1434	#,
	.loc 1 5100 0
	movl	-612(%rbp), %eax	# i, tmp1701
	movslq	%eax, %rdx	# tmp1701, D.22473
	movq	%rdx, %rax	# D.22473, tmp1702
	salq	$2, %rax	#, tmp1702
	addq	%rdx, %rax	# D.22473, tmp1702
	salq	$4, %rax	#, tmp1703
	movq	%rax, %rdx	# tmp1702, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1704
	addq	%rdx, %rax	# D.22473, D.22476
	movb	$1, 41(%rax)	#, _460->src_volatile
.L1434:
	.loc 1 5132 0
	movl	-612(%rbp), %eax	# i, tmp1705
	movslq	%eax, %rdx	# tmp1705, D.22473
	movq	%rdx, %rax	# D.22473, tmp1706
	salq	$2, %rax	#, tmp1706
	addq	%rdx, %rax	# D.22473, tmp1706
	salq	$4, %rax	#, tmp1707
	movq	%rax, %rdx	# tmp1706, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1708
	addq	%rdx, %rax	# D.22473, D.22476
	movzbl	41(%rax), %eax	# _463->src_volatile, D.22480
	testb	%al, %al	# D.22480
	jne	.L1435	#,
	.loc 1 5133 0
	movl	-612(%rbp), %eax	# i, tmp1709
	movslq	%eax, %rdx	# tmp1709, D.22473
	movq	%rdx, %rax	# D.22473, tmp1710
	salq	$2, %rax	#, tmp1710
	addq	%rdx, %rax	# D.22473, tmp1710
	salq	$4, %rax	#, tmp1711
	movq	%rax, %rdx	# tmp1710, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1712
	addq	%rdx, %rax	# D.22473, D.22476
	movl	24(%rax), %ecx	# _467->src_hash, D.22477
	movl	-516(%rbp), %edx	# mode, tmp1713
	movq	-432(%rbp), %rax	# src, tmp1714
	movl	%ecx, %esi	# D.22477,
	movq	%rax, %rdi	# tmp1714,
	call	lookup	#
	movq	%rax, -408(%rbp)	# tmp1715, elt
.L1435:
	.loc 1 5135 0
	movl	-612(%rbp), %eax	# i, tmp1716
	movslq	%eax, %rdx	# tmp1716, D.22473
	movq	%rdx, %rax	# D.22473, tmp1717
	salq	$2, %rax	#, tmp1717
	addq	%rdx, %rax	# D.22473, tmp1717
	salq	$4, %rax	#, tmp1718
	movq	%rax, %rdx	# tmp1717, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1719
	addq	%rax, %rdx	# tmp1719, D.22476
	movq	-408(%rbp), %rax	# elt, tmp1720
	movq	%rax, 16(%rdx)	# tmp1720, _472->src_elt
	.loc 1 5137 0
	cmpq	$0, -408(%rbp)	#, elt
	je	.L1436	#,
	.loc 1 5137 0 is_stmt 0 discriminator 1
	cmpq	$0, -392(%rbp)	#, src_eqv_here
	je	.L1436	#,
	cmpq	$0, -456(%rbp)	#, src_eqv_elt
	je	.L1436	#,
	.loc 1 5139 0 is_stmt 1
	movq	-408(%rbp), %rax	# elt, tmp1721
	movq	48(%rax), %rdx	# elt_56->first_same_value, D.22482
	movq	-456(%rbp), %rax	# src_eqv_elt, tmp1722
	movq	48(%rax), %rax	# src_eqv_elt_25->first_same_value, D.22482
	cmpq	%rax, %rdx	# D.22482, D.22482
	je	.L1437	#,
	.loc 1 5143 0
	movq	-456(%rbp), %rdx	# src_eqv_elt, tmp1723
	movq	-408(%rbp), %rax	# elt, tmp1724
	movq	%rdx, %rsi	# tmp1723,
	movq	%rax, %rdi	# tmp1724,
	call	merge_equiv_classes	#
	.loc 1 5144 0
	movq	-464(%rbp), %rax	# src_eqv, tmp1725
	movzwl	(%rax), %eax	# src_eqv_23->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1438	#,
	.loc 1 5144 0 is_stmt 0 discriminator 1
	movq	-464(%rbp), %rax	# src_eqv, tmp1726
	movl	8(%rax), %eax	# src_eqv_23->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1438	#,
	movq	-464(%rbp), %rax	# src_eqv, tmp1727
	movl	8(%rax), %edx	# src_eqv_23->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.788
	cmpl	%eax, %edx	# cached_regno.788, D.22477
	jne	.L1439	#,
	.loc 1 5144 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.789
	testq	%rax, %rax	# cached_cse_reg_info.789
	jne	.L1440	#,
.L1439:
	.loc 1 5144 0 discriminator 1
	movq	-464(%rbp), %rax	# src_eqv, tmp1728
	movl	8(%rax), %eax	# src_eqv_23->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1441	#
.L1440:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.787
.L1441:
	.loc 1 5144 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.787_148->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.786
	jmp	.L1442	#
.L1438:
	.loc 1 5144 0 discriminator 2
	movq	-408(%rbp), %rax	# elt, tmp1729
	movl	72(%rax), %edx	# elt_56->mode, D.22475
	movq	-464(%rbp), %rax	# src_eqv, tmp1730
	movl	%edx, %esi	# D.22475,
	movq	%rax, %rdi	# tmp1730,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.786
.L1442:
	.loc 1 5144 0 discriminator 3
	movl	%eax, -596(%rbp)	# iftmp.786, src_eqv_hash
	.loc 1 5145 0 is_stmt 1 discriminator 3
	movq	-408(%rbp), %rax	# elt, tmp1731
	movl	72(%rax), %edx	# elt_56->mode, D.22475
	movl	-596(%rbp), %ecx	# src_eqv_hash, tmp1732
	movq	-464(%rbp), %rax	# src_eqv, tmp1733
	movl	%ecx, %esi	# tmp1732,
	movq	%rax, %rdi	# tmp1733,
	call	lookup	#
	movq	%rax, -456(%rbp)	# tmp1734, src_eqv_elt
.L1437:
	.loc 1 5148 0
	movq	$0, -392(%rbp)	#, src_eqv_here
	jmp	.L1443	#
.L1436:
	.loc 1 5151 0
	cmpq	$0, -456(%rbp)	#, src_eqv_elt
	je	.L1443	#,
	.loc 1 5152 0
	movq	-456(%rbp), %rax	# src_eqv_elt, tmp1735
	movq	%rax, -408(%rbp)	# tmp1735, elt
.L1443:
	.loc 1 5158 0
	cmpq	$0, -408(%rbp)	#, elt
	je	.L1444	#,
	.loc 1 5159 0
	movq	-408(%rbp), %rax	# elt, tmp1736
	movq	48(%rax), %rax	# elt_57->first_same_value, tmp1737
	movq	%rax, -400(%rbp)	# tmp1737, p
	jmp	.L1445	#
.L1447:
	.loc 1 5160 0
	movq	-400(%rbp), %rax	# p, tmp1738
	movzbl	77(%rax), %eax	# p_65->is_const, D.22480
	testb	%al, %al	# D.22480
	je	.L1446	#,
	.loc 1 5162 0
	movq	-400(%rbp), %rax	# p, tmp1739
	movq	(%rax), %rax	# p_65->exp, tmp1740
	movq	%rax, -384(%rbp)	# tmp1740, src_const
	.loc 1 5163 0
	movq	-408(%rbp), %rax	# elt, tmp1741
	movq	%rax, -368(%rbp)	# tmp1741, src_const_elt
	.loc 1 5164 0
	jmp	.L1444	#
.L1446:
	.loc 1 5159 0
	movq	-400(%rbp), %rax	# p, tmp1742
	movq	32(%rax), %rax	# p_65->next_same_value, tmp1743
	movq	%rax, -400(%rbp)	# tmp1743, p
.L1445:
	.loc 1 5159 0 is_stmt 0 discriminator 1
	cmpq	$0, -400(%rbp)	#, p
	jne	.L1447	#,
.L1444:
	.loc 1 5167 0 is_stmt 1
	cmpq	$0, -384(%rbp)	#, src_const
	jne	.L1448	#,
	.loc 1 5168 0
	movq	-416(%rbp), %rax	# src_folded, tmp1744
	movzwl	(%rax), %eax	# src_folded_424->code, D.22470
	cmpw	$67, %ax	#, D.22470
	je	.L1449	#,
	.loc 1 5168 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# src_folded, tmp1745
	movzwl	(%rax), %eax	# src_folded_424->code, D.22470
	cmpw	$68, %ax	#, D.22470
	je	.L1449	#,
	movq	-416(%rbp), %rax	# src_folded, tmp1746
	movzwl	(%rax), %eax	# src_folded_424->code, D.22470
	cmpw	$54, %ax	#, D.22470
	je	.L1449	#,
	movq	-416(%rbp), %rax	# src_folded, tmp1747
	movzwl	(%rax), %eax	# src_folded_424->code, D.22470
	cmpw	$55, %ax	#, D.22470
	je	.L1449	#,
	movq	-416(%rbp), %rax	# src_folded, tmp1748
	movzwl	(%rax), %eax	# src_folded_424->code, D.22470
	cmpw	$58, %ax	#, D.22470
	je	.L1449	#,
	movq	-416(%rbp), %rax	# src_folded, tmp1749
	movzwl	(%rax), %eax	# src_folded_424->code, D.22470
	cmpw	$134, %ax	#, D.22470
	je	.L1449	#,
	movq	-416(%rbp), %rax	# src_folded, tmp1750
	movzwl	(%rax), %eax	# src_folded_424->code, D.22470
	cmpw	$56, %ax	#, D.22470
	je	.L1449	#,
	movq	-416(%rbp), %rax	# src_folded, tmp1751
	movzwl	(%rax), %eax	# src_folded_424->code, D.22470
	cmpw	$140, %ax	#, D.22470
	je	.L1449	#,
	.loc 1 5172 0 is_stmt 1
	movq	-416(%rbp), %rax	# src_folded, tmp1752
	movzwl	(%rax), %eax	# src_folded_424->code, D.22470
	cmpw	$76, %ax	#, D.22470
	jne	.L1448	#,
	.loc 1 5173 0
	movq	-416(%rbp), %rax	# src_folded, tmp1753
	movq	8(%rax), %rax	# src_folded_424->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _508->code, D.22470
	cmpw	$67, %ax	#, D.22470
	jne	.L1448	#,
	.loc 1 5174 0
	movq	-416(%rbp), %rax	# src_folded, tmp1754
	movq	16(%rax), %rax	# src_folded_424->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _510->code, D.22470
	cmpw	$67, %ax	#, D.22470
	jne	.L1448	#,
.L1449:
	.loc 1 5175 0
	movq	-416(%rbp), %rax	# src_folded, tmp1755
	movq	%rax, -384(%rbp)	# tmp1755, src_const
	movq	-408(%rbp), %rax	# elt, tmp1756
	movq	%rax, -368(%rbp)	# tmp1756, src_const_elt
	jmp	.L1450	#
.L1448:
	.loc 1 5176 0
	cmpq	$0, -384(%rbp)	#, src_const
	jne	.L1450	#,
	.loc 1 5176 0 is_stmt 0 discriminator 1
	cmpq	$0, -392(%rbp)	#, src_eqv_here
	je	.L1450	#,
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1757
	movzwl	(%rax), %eax	# src_eqv_here_68->code, D.22470
	cmpw	$67, %ax	#, D.22470
	je	.L1451	#,
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1758
	movzwl	(%rax), %eax	# src_eqv_here_68->code, D.22470
	cmpw	$68, %ax	#, D.22470
	je	.L1451	#,
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1759
	movzwl	(%rax), %eax	# src_eqv_here_68->code, D.22470
	cmpw	$54, %ax	#, D.22470
	je	.L1451	#,
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1760
	movzwl	(%rax), %eax	# src_eqv_here_68->code, D.22470
	cmpw	$55, %ax	#, D.22470
	je	.L1451	#,
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1761
	movzwl	(%rax), %eax	# src_eqv_here_68->code, D.22470
	cmpw	$58, %ax	#, D.22470
	je	.L1451	#,
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1762
	movzwl	(%rax), %eax	# src_eqv_here_68->code, D.22470
	cmpw	$134, %ax	#, D.22470
	je	.L1451	#,
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1763
	movzwl	(%rax), %eax	# src_eqv_here_68->code, D.22470
	cmpw	$56, %ax	#, D.22470
	je	.L1451	#,
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1764
	movzwl	(%rax), %eax	# src_eqv_here_68->code, D.22470
	cmpw	$140, %ax	#, D.22470
	jne	.L1450	#,
.L1451:
	.loc 1 5177 0 is_stmt 1
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1765
	movq	%rax, -384(%rbp)	# tmp1765, src_const
	movq	-456(%rbp), %rax	# src_eqv_elt, tmp1766
	movq	%rax, -368(%rbp)	# tmp1766, src_const_elt
.L1450:
	.loc 1 5181 0
	cmpq	$0, -384(%rbp)	#, src_const
	je	.L1452	#,
	.loc 1 5181 0 is_stmt 0 discriminator 1
	cmpq	$0, -368(%rbp)	#, src_const_elt
	jne	.L1452	#,
	.loc 1 5183 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp1767
	movslq	%eax, %rdx	# tmp1767, D.22473
	movq	%rdx, %rax	# D.22473, tmp1768
	salq	$2, %rax	#, tmp1768
	addq	%rdx, %rax	# D.22473, tmp1768
	salq	$4, %rax	#, tmp1769
	movq	%rax, %rdx	# tmp1768, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1770
	leaq	(%rdx,%rax), %rbx	#, D.22476
	movq	-384(%rbp), %rax	# src_const, tmp1771
	movzwl	(%rax), %eax	# src_const_73->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1453	#,
	.loc 1 5183 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# src_const, tmp1772
	movl	8(%rax), %eax	# src_const_73->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1453	#,
	movq	-384(%rbp), %rax	# src_const, tmp1773
	movl	8(%rax), %edx	# src_const_73->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.792
	cmpl	%eax, %edx	# cached_regno.792, D.22477
	jne	.L1454	#,
	.loc 1 5183 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.793
	testq	%rax, %rax	# cached_cse_reg_info.793
	jne	.L1455	#,
.L1454:
	.loc 1 5183 0 discriminator 1
	movq	-384(%rbp), %rax	# src_const, tmp1774
	movl	8(%rax), %eax	# src_const_73->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1456	#
.L1455:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.791
.L1456:
	.loc 1 5183 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.791_150->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.790
	jmp	.L1457	#
.L1453:
	.loc 1 5183 0 discriminator 2
	movl	-516(%rbp), %edx	# mode, tmp1775
	movq	-384(%rbp), %rax	# src_const, tmp1776
	movl	%edx, %esi	# tmp1775,
	movq	%rax, %rdi	# tmp1776,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.790
.L1457:
	.loc 1 5183 0 discriminator 3
	movl	%eax, 64(%rbx)	# iftmp.790, _526->src_const_hash
	.loc 1 5184 0 is_stmt 1 discriminator 3
	movl	-612(%rbp), %eax	# i, tmp1777
	movslq	%eax, %rdx	# tmp1777, D.22473
	movq	%rdx, %rax	# D.22473, tmp1778
	salq	$2, %rax	#, tmp1778
	addq	%rdx, %rax	# D.22473, tmp1778
	salq	$4, %rax	#, tmp1779
	movq	%rax, %rdx	# tmp1778, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1780
	addq	%rdx, %rax	# D.22473, D.22476
	movl	64(%rax), %ecx	# _542->src_const_hash, D.22477
	movl	-516(%rbp), %edx	# mode, tmp1781
	movq	-384(%rbp), %rax	# src_const, tmp1782
	movl	%ecx, %esi	# D.22477,
	movq	%rax, %rdi	# tmp1782,
	call	lookup	#
	movq	%rax, -368(%rbp)	# tmp1783, src_const_elt
.L1452:
	.loc 1 5187 0
	movl	-612(%rbp), %eax	# i, tmp1784
	movslq	%eax, %rdx	# tmp1784, D.22473
	movq	%rdx, %rax	# D.22473, tmp1785
	salq	$2, %rax	#, tmp1785
	addq	%rdx, %rax	# D.22473, tmp1785
	salq	$4, %rax	#, tmp1786
	movq	%rax, %rdx	# tmp1785, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1787
	addq	%rax, %rdx	# tmp1787, D.22476
	movq	-384(%rbp), %rax	# src_const, tmp1788
	movq	%rax, 48(%rdx)	# tmp1788, _547->src_const
	.loc 1 5188 0
	movl	-612(%rbp), %eax	# i, tmp1789
	movslq	%eax, %rdx	# tmp1789, D.22473
	movq	%rdx, %rax	# D.22473, tmp1790
	salq	$2, %rax	#, tmp1790
	addq	%rdx, %rax	# D.22473, tmp1790
	salq	$4, %rax	#, tmp1791
	movq	%rax, %rdx	# tmp1790, D.22473
	movq	-448(%rbp), %rax	# sets, tmp1792
	addq	%rax, %rdx	# tmp1792, D.22476
	movq	-368(%rbp), %rax	# src_const_elt, tmp1793
	movq	%rax, 72(%rdx)	# tmp1793, _550->src_const_elt
	.loc 1 5193 0
	cmpq	$0, -368(%rbp)	#, src_const_elt
	je	.L1458	#,
	.loc 1 5193 0 is_stmt 0 discriminator 1
	cmpq	$0, -408(%rbp)	#, elt
	je	.L1458	#,
	.loc 1 5194 0 is_stmt 1
	movq	-368(%rbp), %rax	# src_const_elt, tmp1794
	movq	48(%rax), %rdx	# src_const_elt_88->first_same_value, D.22482
	movq	-408(%rbp), %rax	# elt, tmp1795
	movq	48(%rax), %rax	# elt_57->first_same_value, D.22482
	cmpq	%rax, %rdx	# D.22482, D.22482
	je	.L1458	#,
	.loc 1 5195 0
	movq	-368(%rbp), %rdx	# src_const_elt, tmp1796
	movq	-408(%rbp), %rax	# elt, tmp1797
	movq	%rdx, %rsi	# tmp1796,
	movq	%rax, %rdi	# tmp1797,
	call	merge_equiv_classes	#
	jmp	.L1459	#
.L1458:
	.loc 1 5196 0
	cmpq	$0, -368(%rbp)	#, src_const_elt
	je	.L1459	#,
	.loc 1 5196 0 is_stmt 0 discriminator 1
	cmpq	$0, -408(%rbp)	#, elt
	jne	.L1459	#,
	.loc 1 5197 0 is_stmt 1
	movq	-368(%rbp), %rax	# src_const_elt, tmp1798
	movq	%rax, -408(%rbp)	# tmp1798, elt
.L1459:
	.loc 1 5201 0
	cmpq	$0, -384(%rbp)	#, src_const
	je	.L1460	#,
	.loc 1 5202 0
	movq	-384(%rbp), %rax	# src_const, tmp1799
	movzwl	(%rax), %eax	# src_const_73->code, D.22470
	cmpw	$58, %ax	#, D.22470
	je	.L1461	#,
	.loc 1 5203 0
	cmpq	$0, -368(%rbp)	#, src_const_elt
	je	.L1460	#,
	.loc 1 5203 0 is_stmt 0 discriminator 1
	movq	-368(%rbp), %rax	# src_const_elt, tmp1800
	movq	56(%rax), %rax	# src_const_elt_88->related_value, D.22482
	testq	%rax, %rax	# D.22482
	je	.L1460	#,
.L1461:
	.loc 1 5205 0 is_stmt 1
	movq	-368(%rbp), %rdx	# src_const_elt, tmp1801
	movq	-384(%rbp), %rax	# src_const, tmp1802
	movq	%rdx, %rsi	# tmp1801,
	movq	%rax, %rdi	# tmp1802,
	call	use_related_value	#
	movq	%rax, -376(%rbp)	# tmp1803, src_related
	.loc 1 5206 0
	cmpq	$0, -376(%rbp)	#, src_related
	je	.L1460	#,
.LBB102:
	.loc 1 5209 0
	movq	-376(%rbp), %rax	# src_related, tmp1804
	movzwl	(%rax), %eax	# src_related_556->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1462	#,
	.loc 1 5209 0 is_stmt 0 discriminator 1
	movq	-376(%rbp), %rax	# src_related, tmp1805
	movl	8(%rax), %eax	# src_related_556->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1462	#,
	movq	-376(%rbp), %rax	# src_related, tmp1806
	movl	8(%rax), %edx	# src_related_556->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.796
	cmpl	%eax, %edx	# cached_regno.796, D.22477
	jne	.L1463	#,
	.loc 1 5209 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.797
	testq	%rax, %rax	# cached_cse_reg_info.797
	jne	.L1464	#,
.L1463:
	.loc 1 5209 0 discriminator 1
	movq	-376(%rbp), %rax	# src_related, tmp1807
	movl	8(%rax), %eax	# src_related_556->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1465	#
.L1464:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.795
.L1465:
	.loc 1 5209 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.795_152->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.794
	jmp	.L1466	#
.L1462:
	.loc 1 5209 0 discriminator 2
	movl	-516(%rbp), %edx	# mode, tmp1808
	movq	-376(%rbp), %rax	# src_related, tmp1809
	movl	%edx, %esi	# tmp1808,
	movq	%rax, %rdi	# tmp1809,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.794
.L1466:
	.loc 1 5208 0 is_stmt 1
	movl	-516(%rbp), %edx	# mode, tmp1810
	movq	-376(%rbp), %rcx	# src_related, tmp1811
	movl	%eax, %esi	# iftmp.794,
	movq	%rcx, %rdi	# tmp1811,
	call	lookup	#
	movq	%rax, -216(%rbp)	# tmp1812, src_related_elt
	.loc 1 5210 0
	cmpq	$0, -216(%rbp)	#, src_related_elt
	je	.L1467	#,
	.loc 1 5210 0 is_stmt 0 discriminator 1
	cmpq	$0, -408(%rbp)	#, elt
	je	.L1467	#,
	.loc 1 5212 0 is_stmt 1
	movq	-408(%rbp), %rax	# elt, tmp1813
	movq	48(%rax), %rdx	# elt_58->first_same_value, D.22482
	.loc 1 5213 0
	movq	-216(%rbp), %rax	# src_related_elt, tmp1814
	movq	48(%rax), %rax	# src_related_elt_570->first_same_value, D.22482
	.loc 1 5212 0
	cmpq	%rax, %rdx	# D.22482, D.22482
	je	.L1468	#,
	.loc 1 5217 0
	movq	-216(%rbp), %rdx	# src_related_elt, tmp1815
	movq	-408(%rbp), %rax	# elt, tmp1816
	movq	%rdx, %rsi	# tmp1815,
	movq	%rax, %rdi	# tmp1816,
	call	merge_equiv_classes	#
.L1468:
	.loc 1 5219 0
	movq	$0, -376(%rbp)	#, src_related
	.loc 1 5220 0
	movq	$0, -216(%rbp)	#, src_related_elt
	jmp	.L1460	#
.L1467:
	.loc 1 5222 0
	cmpq	$0, -216(%rbp)	#, src_related_elt
	je	.L1460	#,
	.loc 1 5222 0 is_stmt 0 discriminator 1
	cmpq	$0, -408(%rbp)	#, elt
	jne	.L1460	#,
	.loc 1 5223 0 is_stmt 1
	movq	-216(%rbp), %rax	# src_related_elt, tmp1817
	movq	%rax, -408(%rbp)	# tmp1817, elt
.L1460:
.LBE102:
	.loc 1 5230 0
	cmpq	$0, -384(%rbp)	#, src_const
	je	.L1469	#,
	.loc 1 5230 0 is_stmt 0 discriminator 1
	cmpq	$0, -376(%rbp)	#, src_related
	jne	.L1469	#,
	movq	-384(%rbp), %rax	# src_const, tmp1818
	movzwl	(%rax), %eax	# src_const_73->code, D.22470
	cmpw	$54, %ax	#, D.22470
	jne	.L1469	#,
	.loc 1 5231 0 is_stmt 1
	movl	-516(%rbp), %eax	# mode, mode.798
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22483
	cmpl	$1, %eax	#, D.22483
	jne	.L1469	#,
	.loc 1 5232 0
	movl	-516(%rbp), %eax	# mode, mode.799
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22470
	movzwl	%ax, %edx	# D.22470, D.22478
	movl	target_flags(%rip), %eax	# target_flags, target_flags.801
	andl	$33554432, %eax	#, D.22478
	testl	%eax, %eax	# D.22478
	je	.L1470	#,
	.loc 1 5232 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.800
	jmp	.L1471	#
.L1470:
	.loc 1 5232 0 discriminator 2
	movl	$32, %eax	#, iftmp.800
.L1471:
	.loc 1 5232 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.800, D.22478
	jge	.L1469	#,
.LBB103:
	.loc 1 5236 0 is_stmt 1
	movl	-516(%rbp), %eax	# mode, mode.802
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.22474
	movzbl	%al, %eax	# D.22474, tmp1822
	movl	%eax, -544(%rbp)	# tmp1822, wider_mode
	jmp	.L1472	#
.L1485:
.LBB104:
	.loc 1 5242 0
	movq	-384(%rbp), %rax	# src_const, tmp1823
	movzwl	(%rax), %eax	# src_const_73->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1473	#,
	.loc 1 5242 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# src_const, tmp1824
	movl	8(%rax), %eax	# src_const_73->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1473	#,
	movq	-384(%rbp), %rax	# src_const, tmp1825
	movl	8(%rax), %edx	# src_const_73->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.805
	cmpl	%eax, %edx	# cached_regno.805, D.22477
	jne	.L1474	#,
	.loc 1 5242 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.806
	testq	%rax, %rax	# cached_cse_reg_info.806
	jne	.L1475	#,
.L1474:
	.loc 1 5242 0 discriminator 1
	movq	-384(%rbp), %rax	# src_const, tmp1826
	movl	8(%rax), %eax	# src_const_73->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1476	#
.L1475:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.804
.L1476:
	.loc 1 5242 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.804_155->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.803
	jmp	.L1477	#
.L1473:
	.loc 1 5242 0 discriminator 2
	movl	-544(%rbp), %edx	# wider_mode, tmp1827
	movq	-384(%rbp), %rax	# src_const, tmp1828
	movl	%edx, %esi	# tmp1827,
	movq	%rax, %rdi	# tmp1828,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.803
.L1477:
	.loc 1 5241 0 is_stmt 1
	movl	-544(%rbp), %edx	# wider_mode, tmp1829
	movq	-384(%rbp), %rcx	# src_const, tmp1830
	movl	%eax, %esi	# iftmp.803,
	movq	%rcx, %rdi	# tmp1830,
	call	lookup	#
	movq	%rax, -360(%rbp)	# tmp1831, const_elt
	.loc 1 5244 0
	cmpq	$0, -360(%rbp)	#, const_elt
	jne	.L1478	#,
	.loc 1 5245 0
	jmp	.L1479	#
.L1478:
	.loc 1 5247 0
	movq	-360(%rbp), %rax	# const_elt, tmp1832
	movq	48(%rax), %rax	# const_elt_609->first_same_value, tmp1833
	movq	%rax, -360(%rbp)	# tmp1833, const_elt
	jmp	.L1480	#
.L1482:
	.loc 1 5249 0
	movq	-360(%rbp), %rax	# const_elt, tmp1834
	movq	(%rax), %rax	# const_elt_121->exp, D.22471
	movzwl	(%rax), %eax	# _611->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1481	#,
	.loc 1 5251 0
	movq	-360(%rbp), %rax	# const_elt, tmp1835
	movq	(%rax), %rdx	# const_elt_121->exp, D.22471
	movl	-516(%rbp), %eax	# mode, tmp1836
	movq	%rdx, %rsi	# D.22471,
	movl	%eax, %edi	# tmp1836,
	call	gen_lowpart_if_possible	#
	movq	%rax, -376(%rbp)	# tmp1837, src_related
	.loc 1 5253 0
	jmp	.L1479	#
.L1481:
	.loc 1 5248 0
	movq	-360(%rbp), %rax	# const_elt, tmp1838
	movq	32(%rax), %rax	# const_elt_121->next_same_value, tmp1839
	movq	%rax, -360(%rbp)	# tmp1839, const_elt
.L1480:
	.loc 1 5247 0 discriminator 1
	cmpq	$0, -360(%rbp)	#, const_elt
	jne	.L1482	#,
.L1479:
.LBE104:
	.loc 1 5239 0
	movl	-544(%rbp), %eax	# wider_mode, wider_mode.807
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.22474
	movzbl	%al, %eax	# D.22474, tmp1841
	movl	%eax, -544(%rbp)	# tmp1841, wider_mode
.L1472:
	.loc 1 5237 0
	movl	-544(%rbp), %eax	# wider_mode, wider_mode.808
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22470
	movzwl	%ax, %edx	# D.22470, D.22478
	movl	target_flags(%rip), %eax	# target_flags, target_flags.810
	andl	$33554432, %eax	#, D.22478
	testl	%eax, %eax	# D.22478
	je	.L1483	#,
	.loc 1 5237 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.809
	jmp	.L1484	#
.L1483:
	.loc 1 5237 0 discriminator 2
	movl	$32, %eax	#, iftmp.809
.L1484:
	.loc 1 5236 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.809, D.22478
	jg	.L1469	#,
	.loc 1 5238 0
	cmpq	$0, -376(%rbp)	#, src_related
	je	.L1485	#,
.L1469:
.LBE103:
	.loc 1 5264 0
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.811
	testl	%eax, %eax	# flag_expensive_optimizations.811
	je	.L1486	#,
	.loc 1 5264 0 is_stmt 0 discriminator 1
	cmpq	$0, -376(%rbp)	#, src_related
	jne	.L1486	#,
	.loc 1 5265 0 is_stmt 1
	movq	-432(%rbp), %rax	# src, tmp1843
	movzwl	(%rax), %eax	# src_387->code, D.22470
	cmpw	$83, %ax	#, D.22470
	jne	.L1486	#,
	.loc 1 5265 0 is_stmt 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp1844
	movq	16(%rax), %rax	# src_387->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _621->code, D.22470
	cmpw	$54, %ax	#, D.22470
	jne	.L1486	#,
	.loc 1 5266 0 is_stmt 1
	movl	-516(%rbp), %eax	# mode, mode.812
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	movzbl	%al, %edx	# D.22474, D.22478
	movl	target_flags(%rip), %eax	# target_flags, target_flags.814
	andl	$33554432, %eax	#, D.22478
	testl	%eax, %eax	# D.22478
	je	.L1487	#,
	.loc 1 5266 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.813
	jmp	.L1488	#
.L1487:
	.loc 1 5266 0 discriminator 2
	movl	$4, %eax	#, iftmp.813
.L1488:
	.loc 1 5266 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.813, D.22478
	jge	.L1486	#,
.LBB105:
	.loc 1 5269 0 is_stmt 1
	movq	-432(%rbp), %rax	# src, tmp1846
	movq	16(%rax), %rax	# src_387->fld[1].rtx, D.22471
	movq	%rax, %rcx	# D.22471,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$83, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -208(%rbp)	# tmp1847, new_and
	.loc 1 5271 0
	movl	-516(%rbp), %eax	# mode, mode.815
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.22474
	movzbl	%al, %eax	# D.22474, tmp1849
	movl	%eax, -540(%rbp)	# tmp1849, tmode
	jmp	.L1489	#
.L1503:
.LBB106:
	.loc 1 5275 0
	movq	-432(%rbp), %rax	# src, tmp1850
	movq	8(%rax), %rdx	# src_387->fld[0].rtx, D.22471
	movl	-540(%rbp), %eax	# tmode, tmp1851
	movq	%rdx, %rsi	# D.22471,
	movl	%eax, %edi	# tmp1851,
	call	gen_lowpart_if_possible	#
	movq	%rax, -200(%rbp)	# tmp1852, inner
	.loc 1 5278 0
	cmpq	$0, -200(%rbp)	#, inner
	je	.L1490	#,
	.loc 1 5280 0
	movl	-540(%rbp), %eax	# tmode, tmp1853
	movl	%eax, %edx	# tmp1853, D.22474
	movq	-208(%rbp), %rax	# new_and, tmp1854
	movb	%dl, 2(%rax)	# D.22474, new_and_631->mode
	.loc 1 5281 0
	movq	-208(%rbp), %rax	# new_and, tmp1855
	movq	-200(%rbp), %rdx	# inner, tmp1856
	movq	%rdx, 8(%rax)	# tmp1856, new_and_631->fld[0].rtx
	.loc 1 5282 0
	movq	-208(%rbp), %rax	# new_and, tmp1857
	movzwl	(%rax), %eax	# new_and_631->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1491	#,
	.loc 1 5282 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# new_and, tmp1858
	movl	8(%rax), %eax	# new_and_631->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1491	#,
	movq	-208(%rbp), %rax	# new_and, tmp1859
	movl	8(%rax), %edx	# new_and_631->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.818
	cmpl	%eax, %edx	# cached_regno.818, D.22477
	jne	.L1492	#,
	.loc 1 5282 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.819
	testq	%rax, %rax	# cached_cse_reg_info.819
	jne	.L1493	#,
.L1492:
	.loc 1 5282 0 discriminator 1
	movq	-208(%rbp), %rax	# new_and, tmp1860
	movl	8(%rax), %eax	# new_and_631->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1494	#
.L1493:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.817
.L1494:
	.loc 1 5282 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.817_159->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.816
	jmp	.L1495	#
.L1491:
	.loc 1 5282 0 discriminator 2
	movl	-540(%rbp), %edx	# tmode, tmp1861
	movq	-208(%rbp), %rax	# new_and, tmp1862
	movl	%edx, %esi	# tmp1861,
	movq	%rax, %rdi	# tmp1862,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.816
.L1495:
	.loc 1 5282 0 discriminator 3
	movl	-540(%rbp), %edx	# tmode, tmp1863
	movq	-208(%rbp), %rcx	# new_and, tmp1864
	movl	%eax, %esi	# iftmp.816,
	movq	%rcx, %rdi	# tmp1864,
	call	lookup	#
	movq	%rax, -352(%rbp)	# tmp1865, larger_elt
	.loc 1 5283 0 is_stmt 1 discriminator 3
	cmpq	$0, -352(%rbp)	#, larger_elt
	jne	.L1496	#,
	.loc 1 5284 0
	jmp	.L1490	#
.L1496:
	.loc 1 5286 0
	movq	-352(%rbp), %rax	# larger_elt, tmp1866
	movq	48(%rax), %rax	# larger_elt_658->first_same_value, tmp1867
	movq	%rax, -352(%rbp)	# tmp1867, larger_elt
	jmp	.L1497	#
.L1500:
	.loc 1 5288 0
	movq	-352(%rbp), %rax	# larger_elt, tmp1868
	movq	(%rax), %rax	# larger_elt_123->exp, D.22471
	movzwl	(%rax), %eax	# _660->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1498	#,
	.loc 1 5291 0
	movq	-352(%rbp), %rax	# larger_elt, tmp1869
	movq	(%rax), %rdx	# larger_elt_123->exp, D.22471
	movl	-516(%rbp), %eax	# mode, tmp1870
	movq	%rdx, %rsi	# D.22471,
	movl	%eax, %edi	# tmp1870,
	call	gen_lowpart_if_possible	#
	movq	%rax, -376(%rbp)	# tmp1871, src_related
	.loc 1 5292 0
	jmp	.L1499	#
.L1498:
	.loc 1 5287 0
	movq	-352(%rbp), %rax	# larger_elt, tmp1872
	movq	32(%rax), %rax	# larger_elt_123->next_same_value, tmp1873
	movq	%rax, -352(%rbp)	# tmp1873, larger_elt
.L1497:
	.loc 1 5286 0 discriminator 1
	cmpq	$0, -352(%rbp)	#, larger_elt
	jne	.L1500	#,
.L1499:
	.loc 1 5295 0
	cmpq	$0, -376(%rbp)	#, src_related
	je	.L1490	#,
	.loc 1 5296 0
	jmp	.L1486	#
.L1490:
.LBE106:
	.loc 1 5273 0
	movl	-540(%rbp), %eax	# tmode, tmode.820
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.22474
	movzbl	%al, %eax	# D.22474, tmp1875
	movl	%eax, -540(%rbp)	# tmp1875, tmode
.L1489:
	.loc 1 5272 0
	movl	-540(%rbp), %eax	# tmode, tmode.821
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	movzbl	%al, %edx	# D.22474, D.22478
	movl	target_flags(%rip), %eax	# target_flags, target_flags.823
	andl	$33554432, %eax	#, D.22478
	testl	%eax, %eax	# D.22478
	je	.L1501	#,
	.loc 1 5272 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.822
	jmp	.L1502	#
.L1501:
	.loc 1 5272 0 discriminator 2
	movl	$4, %eax	#, iftmp.822
.L1502:
	.loc 1 5271 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.822, D.22478
	jle	.L1503	#,
.L1486:
.LBE105:
	.loc 1 5347 0
	movq	-432(%rbp), %rax	# src, tmp1877
	cmpq	-416(%rbp), %rax	# src_folded, tmp1877
	jne	.L1504	#,
	.loc 1 5348 0
	movq	$0, -416(%rbp)	#, src_folded
.L1504:
	.loc 1 5361 0
	cmpq	$0, -408(%rbp)	#, elt
	je	.L1505	#,
	.loc 1 5362 0
	movq	-408(%rbp), %rax	# elt, tmp1878
	movq	48(%rax), %rax	# elt_59->first_same_value, tmp1879
	movq	%rax, -408(%rbp)	# tmp1879, elt
.L1505:
	.loc 1 5363 0
	movq	-408(%rbp), %rax	# elt, tmp1880
	movq	%rax, -400(%rbp)	# tmp1880, p
	jmp	.L1506	#
.L1515:
.LBB107:
	.loc 1 5365 0
	movq	-400(%rbp), %rax	# p, tmp1881
	movq	(%rax), %rax	# p_66->exp, D.22471
	movzwl	(%rax), %eax	# _671->code, D.22470
	movzwl	%ax, %eax	# D.22470, tmp1882
	movl	%eax, -512(%rbp)	# tmp1882, code
	.loc 1 5370 0
	cmpl	$61, -512(%rbp)	#, code
	je	.L1507	#,
	.loc 1 5370 0 is_stmt 0 discriminator 1
	movq	-400(%rbp), %rax	# p, tmp1883
	movq	(%rax), %rsi	# p_66->exp, D.22471
	movq	-400(%rbp), %rax	# p, tmp1884
	movq	(%rax), %rax	# p_66->exp, D.22471
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22471,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22478
	jne	.L1507	#,
	.loc 1 5371 0 is_stmt 1
	jmp	.L1508	#
.L1507:
	.loc 1 5375 0
	cmpl	$63, -512(%rbp)	#, code
	jne	.L1509	#,
	.loc 1 5376 0
	movq	-400(%rbp), %rax	# p, tmp1885
	movq	(%rax), %rax	# p_66->exp, D.22471
	movzbl	2(%rax), %eax	# _677->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22474
	.loc 1 5377 0
	movq	-400(%rbp), %rax	# p, tmp1887
	movq	(%rax), %rax	# p_66->exp, D.22471
	movq	8(%rax), %rax	# _681->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _682->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	.loc 1 5376 0
	cmpb	%al, %dl	# D.22474, D.22474
	jbe	.L1509	#,
	.loc 1 5378 0
	cmpq	$0, -432(%rbp)	#, src
	je	.L1510	#,
	.loc 1 5379 0
	movq	-432(%rbp), %rax	# src, tmp1889
	movzwl	(%rax), %eax	# src_46->code, D.22470
	cmpw	$63, %ax	#, D.22470
	jne	.L1510	#,
	.loc 1 5380 0
	movq	-432(%rbp), %rax	# src, tmp1890
	movzbl	2(%rax), %edx	# src_46->mode, D.22474
	movq	-400(%rbp), %rax	# p, tmp1891
	movq	(%rax), %rax	# p_66->exp, D.22471
	movzbl	2(%rax), %eax	# _688->mode, D.22474
	cmpb	%al, %dl	# D.22474, D.22474
	jne	.L1510	#,
	.loc 1 5381 0
	movq	-432(%rbp), %rax	# src, tmp1892
	movq	8(%rax), %rax	# src_46->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _690->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22474
	.loc 1 5382 0
	movq	-400(%rbp), %rax	# p, tmp1894
	movq	(%rax), %rax	# p_66->exp, D.22471
	movq	8(%rax), %rax	# _694->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _695->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	.loc 1 5378 0
	cmpb	%al, %dl	# D.22474, D.22474
	jb	.L1509	#,
.L1510:
	.loc 1 5383 0
	jmp	.L1508	#
.L1509:
	.loc 1 5385 0
	cmpq	$0, -432(%rbp)	#, src
	je	.L1511	#,
	.loc 1 5385 0 is_stmt 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp1896
	movzwl	(%rax), %eax	# src_46->code, D.22470
	movzwl	%ax, %eax	# D.22470, D.22477
	cmpl	-512(%rbp), %eax	# code, D.22477
	jne	.L1511	#,
	movq	-400(%rbp), %rax	# p, tmp1897
	movq	(%rax), %rdx	# p_66->exp, D.22471
	movq	-432(%rbp), %rax	# src, tmp1898
	movq	%rdx, %rsi	# D.22471,
	movq	%rax, %rdi	# tmp1898,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1511	#,
	.loc 1 5386 0 is_stmt 1
	movq	$0, -432(%rbp)	#, src
	jmp	.L1512	#
.L1511:
	.loc 1 5387 0
	cmpq	$0, -416(%rbp)	#, src_folded
	je	.L1513	#,
	.loc 1 5387 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# src_folded, tmp1899
	movzwl	(%rax), %eax	# src_folded_53->code, D.22470
	movzwl	%ax, %eax	# D.22470, D.22477
	cmpl	-512(%rbp), %eax	# code, D.22477
	jne	.L1513	#,
	.loc 1 5388 0 is_stmt 1
	movq	-400(%rbp), %rax	# p, tmp1900
	movq	(%rax), %rdx	# p_66->exp, D.22471
	movq	-416(%rbp), %rax	# src_folded, tmp1901
	movq	%rdx, %rsi	# D.22471,
	movq	%rax, %rdi	# tmp1901,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1513	#,
	.loc 1 5389 0
	movq	$0, -416(%rbp)	#, src_folded
	jmp	.L1512	#
.L1513:
	.loc 1 5390 0
	cmpq	$0, -392(%rbp)	#, src_eqv_here
	je	.L1514	#,
	.loc 1 5390 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1902
	movzwl	(%rax), %eax	# src_eqv_here_71->code, D.22470
	movzwl	%ax, %eax	# D.22470, D.22477
	cmpl	-512(%rbp), %eax	# code, D.22477
	jne	.L1514	#,
	.loc 1 5391 0 is_stmt 1
	movq	-400(%rbp), %rax	# p, tmp1903
	movq	(%rax), %rdx	# p_66->exp, D.22471
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1904
	movq	%rdx, %rsi	# D.22471,
	movq	%rax, %rdi	# tmp1904,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1514	#,
	.loc 1 5392 0
	movq	$0, -392(%rbp)	#, src_eqv_here
	jmp	.L1512	#
.L1514:
	.loc 1 5393 0
	cmpq	$0, -376(%rbp)	#, src_related
	je	.L1512	#,
	.loc 1 5393 0 is_stmt 0 discriminator 1
	movq	-376(%rbp), %rax	# src_related, tmp1905
	movzwl	(%rax), %eax	# src_related_85->code, D.22470
	movzwl	%ax, %eax	# D.22470, D.22477
	cmpl	-512(%rbp), %eax	# code, D.22477
	jne	.L1512	#,
	.loc 1 5394 0 is_stmt 1
	movq	-400(%rbp), %rax	# p, tmp1906
	movq	(%rax), %rdx	# p_66->exp, D.22471
	movq	-376(%rbp), %rax	# src_related, tmp1907
	movq	%rdx, %rsi	# D.22471,
	movq	%rax, %rdi	# tmp1907,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1512	#,
	.loc 1 5395 0
	movq	$0, -376(%rbp)	#, src_related
.L1512:
	.loc 1 5400 0
	movq	-424(%rbp), %rax	# dest, tmp1908
	movzwl	(%rax), %eax	# dest_382->code, D.22470
	movzwl	%ax, %eax	# D.22470, D.22477
	cmpl	-512(%rbp), %eax	# code, D.22477
	jne	.L1508	#,
	.loc 1 5400 0 is_stmt 0 discriminator 1
	movq	-400(%rbp), %rax	# p, tmp1909
	movq	(%rax), %rax	# p_66->exp, D.22471
	movq	-424(%rbp), %rdx	# dest, tmp1910
	movq	%rdx, %rsi	# tmp1910,
	movq	%rax, %rdi	# D.22471,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1508	#,
	.loc 1 5401 0 is_stmt 1
	movq	-424(%rbp), %rax	# dest, tmp1911
	movq	%rax, -376(%rbp)	# tmp1911, src_related
.L1508:
.LBE107:
	.loc 1 5363 0
	movq	-400(%rbp), %rax	# p, tmp1912
	movq	32(%rax), %rax	# p_66->next_same_value, tmp1913
	movq	%rax, -400(%rbp)	# tmp1913, p
.L1506:
	.loc 1 5363 0 is_stmt 0 discriminator 1
	cmpq	$0, -400(%rbp)	#, p
	jne	.L1515	#,
	.loc 1 5410 0 is_stmt 1
	cmpq	$0, -432(%rbp)	#, src
	je	.L1516	#,
	.loc 1 5412 0
	movq	-424(%rbp), %rdx	# dest, tmp1914
	movq	-432(%rbp), %rax	# src, tmp1915
	movq	%rdx, %rsi	# tmp1914,
	movq	%rax, %rdi	# tmp1915,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1517	#,
	.loc 1 5413 0
	movl	$-1, -572(%rbp)	#, src_regcost
	movl	-572(%rbp), %eax	# src_regcost, tmp1916
	movl	%eax, -592(%rbp)	# tmp1916, src_cost
	jmp	.L1516	#
.L1517:
	.loc 1 5416 0
	movq	-432(%rbp), %rax	# src, tmp1917
	movzwl	(%rax), %eax	# src_46->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1518	#,
	.loc 1 5416 0 is_stmt 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp1918
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp1918,
	call	notreg_cost	#
	jmp	.L1519	#
.L1518:
	.loc 1 5416 0 discriminator 2
	movl	$0, %eax	#, iftmp.824
.L1519:
	.loc 1 5416 0 discriminator 3
	movl	%eax, -592(%rbp)	# iftmp.824, src_cost
	.loc 1 5417 0 is_stmt 1 discriminator 3
	movq	-432(%rbp), %rax	# src, tmp1919
	movq	%rax, %rdi	# tmp1919,
	call	approx_reg_cost	#
	movl	%eax, -572(%rbp)	# tmp1920, src_regcost
.L1516:
	.loc 1 5421 0
	cmpq	$0, -392(%rbp)	#, src_eqv_here
	je	.L1520	#,
	.loc 1 5423 0
	movq	-424(%rbp), %rdx	# dest, tmp1921
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1922
	movq	%rdx, %rsi	# tmp1921,
	movq	%rax, %rdi	# tmp1922,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1521	#,
	.loc 1 5424 0
	movl	$-1, -568(%rbp)	#, src_eqv_regcost
	movl	-568(%rbp), %eax	# src_eqv_regcost, tmp1923
	movl	%eax, -588(%rbp)	# tmp1923, src_eqv_cost
	jmp	.L1520	#
.L1521:
	.loc 1 5427 0
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1924
	movzwl	(%rax), %eax	# src_eqv_here_71->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1522	#,
	.loc 1 5427 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1925
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp1925,
	call	notreg_cost	#
	jmp	.L1523	#
.L1522:
	.loc 1 5427 0 discriminator 2
	movl	$0, %eax	#, iftmp.825
.L1523:
	.loc 1 5427 0 discriminator 3
	movl	%eax, -588(%rbp)	# iftmp.825, src_eqv_cost
	.loc 1 5428 0 is_stmt 1 discriminator 3
	movq	-392(%rbp), %rax	# src_eqv_here, tmp1926
	movq	%rax, %rdi	# tmp1926,
	call	approx_reg_cost	#
	movl	%eax, -568(%rbp)	# tmp1927, src_eqv_regcost
.L1520:
	.loc 1 5432 0
	cmpq	$0, -416(%rbp)	#, src_folded
	je	.L1524	#,
	.loc 1 5434 0
	movq	-424(%rbp), %rdx	# dest, tmp1928
	movq	-416(%rbp), %rax	# src_folded, tmp1929
	movq	%rdx, %rsi	# tmp1928,
	movq	%rax, %rdi	# tmp1929,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1525	#,
	.loc 1 5435 0
	movl	$-1, -564(%rbp)	#, src_folded_regcost
	movl	-564(%rbp), %eax	# src_folded_regcost, tmp1930
	movl	%eax, -584(%rbp)	# tmp1930, src_folded_cost
	jmp	.L1524	#
.L1525:
	.loc 1 5438 0
	movq	-416(%rbp), %rax	# src_folded, tmp1931
	movzwl	(%rax), %eax	# src_folded_53->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1526	#,
	.loc 1 5438 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# src_folded, tmp1932
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp1932,
	call	notreg_cost	#
	jmp	.L1527	#
.L1526:
	.loc 1 5438 0 discriminator 2
	movl	$0, %eax	#, iftmp.826
.L1527:
	.loc 1 5438 0 discriminator 3
	movl	%eax, -584(%rbp)	# iftmp.826, src_folded_cost
	.loc 1 5439 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# src_folded, tmp1933
	movq	%rax, %rdi	# tmp1933,
	call	approx_reg_cost	#
	movl	%eax, -564(%rbp)	# tmp1934, src_folded_regcost
.L1524:
	.loc 1 5443 0
	cmpq	$0, -376(%rbp)	#, src_related
	je	.L1528	#,
	.loc 1 5445 0
	movq	-424(%rbp), %rdx	# dest, tmp1935
	movq	-376(%rbp), %rax	# src_related, tmp1936
	movq	%rdx, %rsi	# tmp1935,
	movq	%rax, %rdi	# tmp1936,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1529	#,
	.loc 1 5446 0
	movl	$-1, -560(%rbp)	#, src_related_regcost
	movl	-560(%rbp), %eax	# src_related_regcost, tmp1937
	movl	%eax, -580(%rbp)	# tmp1937, src_related_cost
	jmp	.L1528	#
.L1529:
	.loc 1 5449 0
	movq	-376(%rbp), %rax	# src_related, tmp1938
	movzwl	(%rax), %eax	# src_related_85->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1530	#,
	.loc 1 5449 0 is_stmt 0 discriminator 1
	movq	-376(%rbp), %rax	# src_related, tmp1939
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp1939,
	call	notreg_cost	#
	jmp	.L1531	#
.L1530:
	.loc 1 5449 0 discriminator 2
	movl	$0, %eax	#, iftmp.827
.L1531:
	.loc 1 5449 0 discriminator 3
	movl	%eax, -580(%rbp)	# iftmp.827, src_related_cost
	.loc 1 5450 0 is_stmt 1 discriminator 3
	movq	-376(%rbp), %rax	# src_related, tmp1940
	movq	%rax, %rdi	# tmp1940,
	call	approx_reg_cost	#
	movl	%eax, -560(%rbp)	# tmp1941, src_related_regcost
.L1528:
	.loc 1 5456 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.22471
	cmpq	-424(%rbp), %rax	# dest, D.22471
	jne	.L1532	#,
	.loc 1 5456 0 is_stmt 0 discriminator 1
	cmpq	$0, -384(%rbp)	#, src_const
	je	.L1532	#,
	movq	-384(%rbp), %rax	# src_const, tmp1942
	movzwl	(%rax), %eax	# src_const_73->code, D.22470
	cmpw	$67, %ax	#, D.22470
	jne	.L1532	#,
	.loc 1 5457 0 is_stmt 1
	movq	-384(%rbp), %rax	# src_const, tmp1943
	movq	%rax, -416(%rbp)	# tmp1943, src_folded
	movl	$-1, -564(%rbp)	#, src_folded_regcost
	movl	-564(%rbp), %eax	# src_folded_regcost, tmp1944
	movl	%eax, -584(%rbp)	# tmp1944, src_folded_cost
.LBB108:
	.loc 1 5466 0
	jmp	.L1533	#
.L1532:
	jmp	.L1533	#
.L1535:
	.loc 1 5468 0
	movq	-408(%rbp), %rax	# elt, tmp1945
	movq	32(%rax), %rax	# elt_62->next_same_value, tmp1946
	movq	%rax, -408(%rbp)	# tmp1946, elt
.L1533:
	.loc 1 5466 0 discriminator 1
	cmpq	$0, -408(%rbp)	#, elt
	je	.L1534	#,
	.loc 1 5466 0 is_stmt 0 discriminator 2
	movq	-408(%rbp), %rax	# elt, tmp1947
	movq	(%rax), %rax	# elt_62->exp, D.22471
	movzwl	(%rax), %eax	# _762->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1534	#,
	.loc 1 5467 0 is_stmt 1
	movq	-408(%rbp), %rax	# elt, tmp1948
	movq	(%rax), %rsi	# elt_62->exp, D.22471
	movq	-408(%rbp), %rax	# elt, tmp1949
	movq	(%rax), %rax	# elt_62->exp, D.22471
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22471,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22478
	je	.L1535	#,
.L1534:
	.loc 1 5473 0
	cmpq	$0, -408(%rbp)	#, elt
	je	.L1536	#,
	.loc 1 5474 0
	movq	-408(%rbp), %rax	# elt, tmp1950
	movq	(%rax), %rax	# elt_62->exp, D.22471
	movzwl	(%rax), %eax	# _768->code, D.22470
	cmpw	$63, %ax	#, D.22470
	jne	.L1536	#,
	.loc 1 5475 0
	movq	-408(%rbp), %rax	# elt, tmp1951
	movq	(%rax), %rax	# elt_62->exp, D.22471
	movzbl	2(%rax), %eax	# _770->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22474
	.loc 1 5476 0
	movq	-408(%rbp), %rax	# elt, tmp1953
	movq	(%rax), %rax	# elt_62->exp, D.22471
	movq	8(%rax), %rax	# _774->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _775->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	.loc 1 5475 0
	cmpb	%al, %dl	# D.22474, D.22474
	jbe	.L1536	#,
	.loc 1 5479 0
	cmpq	$0, -432(%rbp)	#, src
	je	.L1537	#,
	.loc 1 5480 0
	movq	-432(%rbp), %rax	# src, tmp1955
	movzwl	(%rax), %eax	# src_46->code, D.22470
	cmpw	$63, %ax	#, D.22470
	jne	.L1537	#,
	.loc 1 5481 0
	movq	-432(%rbp), %rax	# src, tmp1956
	movzbl	2(%rax), %edx	# src_46->mode, D.22474
	movq	-408(%rbp), %rax	# elt, tmp1957
	movq	(%rax), %rax	# elt_62->exp, D.22471
	movzbl	2(%rax), %eax	# _781->mode, D.22474
	cmpb	%al, %dl	# D.22474, D.22474
	jne	.L1537	#,
	.loc 1 5482 0
	movq	-432(%rbp), %rax	# src, tmp1958
	movq	8(%rax), %rax	# src_46->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _783->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22474
	.loc 1 5483 0
	movq	-408(%rbp), %rax	# elt, tmp1960
	movq	(%rax), %rax	# elt_62->exp, D.22471
	movq	8(%rax), %rax	# _787->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _788->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	.loc 1 5479 0
	cmpb	%al, %dl	# D.22474, D.22474
	jb	.L1536	#,
.L1537:
	.loc 1 5485 0
	movq	-408(%rbp), %rax	# elt, tmp1962
	movq	32(%rax), %rax	# elt_62->next_same_value, tmp1963
	movq	%rax, -408(%rbp)	# tmp1963, elt
	.loc 1 5486 0
	jmp	.L1538	#
.L1536:
	.loc 1 5489 0
	cmpq	$0, -408(%rbp)	#, elt
	je	.L1539	#,
	.loc 1 5491 0
	movq	-408(%rbp), %rax	# elt, tmp1964
	movl	64(%rax), %eax	# elt_62->cost, tmp1965
	movl	%eax, -576(%rbp)	# tmp1965, src_elt_cost
	.loc 1 5492 0
	movq	-408(%rbp), %rax	# elt, tmp1966
	movl	68(%rax), %eax	# elt_62->regcost, tmp1967
	movl	%eax, -556(%rbp)	# tmp1967, src_elt_regcost
.L1539:
	.loc 1 5498 0
	cmpq	$0, -416(%rbp)	#, src_folded
	je	.L1540	#,
	.loc 1 5499 0
	movl	-572(%rbp), %ecx	# src_regcost, tmp1968
	movl	-592(%rbp), %edx	# src_cost, tmp1969
	movl	-564(%rbp), %esi	# src_folded_regcost, tmp1970
	movl	-584(%rbp), %eax	# src_folded_cost, tmp1971
	movl	%eax, %edi	# tmp1971,
	call	preferrable	#
	testl	%eax, %eax	# D.22478
	jg	.L1540	#,
	.loc 1 5501 0
	movl	-568(%rbp), %ecx	# src_eqv_regcost, tmp1972
	movl	-588(%rbp), %edx	# src_eqv_cost, tmp1973
	movl	-564(%rbp), %esi	# src_folded_regcost, tmp1974
	movl	-584(%rbp), %eax	# src_folded_cost, tmp1975
	movl	%eax, %edi	# tmp1975,
	call	preferrable	#
	testl	%eax, %eax	# D.22478
	jg	.L1540	#,
	.loc 1 5503 0
	movl	-560(%rbp), %ecx	# src_related_regcost, tmp1976
	movl	-580(%rbp), %edx	# src_related_cost, tmp1977
	movl	-564(%rbp), %esi	# src_folded_regcost, tmp1978
	movl	-584(%rbp), %eax	# src_folded_cost, tmp1979
	movl	%eax, %edi	# tmp1979,
	call	preferrable	#
	testl	%eax, %eax	# D.22478
	jg	.L1540	#,
	.loc 1 5505 0
	movl	-556(%rbp), %ecx	# src_elt_regcost, tmp1980
	movl	-576(%rbp), %edx	# src_elt_cost, tmp1981
	movl	-564(%rbp), %esi	# src_folded_regcost, tmp1982
	movl	-584(%rbp), %eax	# src_folded_cost, tmp1983
	movl	%eax, %edi	# tmp1983,
	call	preferrable	#
	testl	%eax, %eax	# D.22478
	jg	.L1540	#,
	.loc 1 5508 0
	movq	-416(%rbp), %rax	# src_folded, tmp1984
	movq	%rax, -344(%rbp)	# tmp1984, trial
	movl	$2147483647, -584(%rbp)	#, src_folded_cost
	.loc 1 5509 0
	cmpl	$0, -552(%rbp)	#, src_folded_force_flag
	je	.L1541	#,
	.loc 1 5510 0
	movq	-344(%rbp), %rdx	# trial, tmp1985
	movl	-516(%rbp), %eax	# mode, tmp1986
	movq	%rdx, %rsi	# tmp1985,
	movl	%eax, %edi	# tmp1986,
	call	force_const_mem	#
	movq	%rax, -344(%rbp)	# tmp1987, trial
	.loc 1 5509 0
	jmp	.L1542	#
.L1541:
	.loc 1 5509 0 is_stmt 0 discriminator 1
	jmp	.L1542	#
.L1540:
	.loc 1 5512 0 is_stmt 1
	cmpq	$0, -432(%rbp)	#, src
	je	.L1543	#,
	.loc 1 5513 0
	movl	-568(%rbp), %ecx	# src_eqv_regcost, tmp1988
	movl	-588(%rbp), %edx	# src_eqv_cost, tmp1989
	movl	-572(%rbp), %esi	# src_regcost, tmp1990
	movl	-592(%rbp), %eax	# src_cost, tmp1991
	movl	%eax, %edi	# tmp1991,
	call	preferrable	#
	testl	%eax, %eax	# D.22478
	jg	.L1543	#,
	.loc 1 5515 0
	movl	-560(%rbp), %ecx	# src_related_regcost, tmp1992
	movl	-580(%rbp), %edx	# src_related_cost, tmp1993
	movl	-572(%rbp), %esi	# src_regcost, tmp1994
	movl	-592(%rbp), %eax	# src_cost, tmp1995
	movl	%eax, %edi	# tmp1995,
	call	preferrable	#
	testl	%eax, %eax	# D.22478
	jg	.L1543	#,
	.loc 1 5517 0
	movl	-556(%rbp), %ecx	# src_elt_regcost, tmp1996
	movl	-576(%rbp), %edx	# src_elt_cost, tmp1997
	movl	-572(%rbp), %esi	# src_regcost, tmp1998
	movl	-592(%rbp), %eax	# src_cost, tmp1999
	movl	%eax, %edi	# tmp1999,
	call	preferrable	#
	testl	%eax, %eax	# D.22478
	jg	.L1543	#,
	.loc 1 5519 0
	movq	-432(%rbp), %rax	# src, tmp2000
	movq	%rax, -344(%rbp)	# tmp2000, trial
	movl	$2147483647, -592(%rbp)	#, src_cost
	jmp	.L1542	#
.L1543:
	.loc 1 5520 0
	cmpq	$0, -392(%rbp)	#, src_eqv_here
	je	.L1544	#,
	.loc 1 5521 0
	movl	-560(%rbp), %ecx	# src_related_regcost, tmp2001
	movl	-580(%rbp), %edx	# src_related_cost, tmp2002
	movl	-568(%rbp), %esi	# src_eqv_regcost, tmp2003
	movl	-588(%rbp), %eax	# src_eqv_cost, tmp2004
	movl	%eax, %edi	# tmp2004,
	call	preferrable	#
	testl	%eax, %eax	# D.22478
	jg	.L1544	#,
	.loc 1 5523 0
	movl	-556(%rbp), %ecx	# src_elt_regcost, tmp2005
	movl	-576(%rbp), %edx	# src_elt_cost, tmp2006
	movl	-568(%rbp), %esi	# src_eqv_regcost, tmp2007
	movl	-588(%rbp), %eax	# src_eqv_cost, tmp2008
	movl	%eax, %edi	# tmp2008,
	call	preferrable	#
	testl	%eax, %eax	# D.22478
	jg	.L1544	#,
	.loc 1 5525 0
	movq	-392(%rbp), %rax	# src_eqv_here, tmp2009
	movq	%rax, %rdi	# tmp2009,
	call	copy_rtx	#
	movq	%rax, -344(%rbp)	# tmp2010, trial
	movl	$2147483647, -588(%rbp)	#, src_eqv_cost
	jmp	.L1542	#
.L1544:
	.loc 1 5526 0
	cmpq	$0, -376(%rbp)	#, src_related
	je	.L1545	#,
	.loc 1 5527 0
	movl	-556(%rbp), %ecx	# src_elt_regcost, tmp2011
	movl	-576(%rbp), %edx	# src_elt_cost, tmp2012
	movl	-560(%rbp), %esi	# src_related_regcost, tmp2013
	movl	-580(%rbp), %eax	# src_related_cost, tmp2014
	movl	%eax, %edi	# tmp2014,
	call	preferrable	#
	testl	%eax, %eax	# D.22478
	jg	.L1545	#,
	.loc 1 5529 0
	movq	-376(%rbp), %rax	# src_related, tmp2015
	movq	%rax, %rdi	# tmp2015,
	call	copy_rtx	#
	movq	%rax, -344(%rbp)	# tmp2016, trial
	movl	$2147483647, -580(%rbp)	#, src_related_cost
	jmp	.L1542	#
.L1545:
	.loc 1 5532 0
	movq	-408(%rbp), %rax	# elt, tmp2017
	movq	(%rax), %rax	# elt_62->exp, D.22471
	movq	%rax, %rdi	# D.22471,
	call	copy_rtx	#
	movq	%rax, -344(%rbp)	# tmp2018, trial
	.loc 1 5533 0
	movq	-408(%rbp), %rax	# elt, tmp2019
	movq	32(%rax), %rax	# elt_62->next_same_value, tmp2020
	movq	%rax, -408(%rbp)	# tmp2020, elt
	.loc 1 5534 0
	movl	$2147483647, -576(%rbp)	#, src_elt_cost
.L1542:
	.loc 1 5546 0
	cmpl	$1, -608(%rbp)	#, n_sets
	jne	.L1546	#,
	.loc 1 5546 0 is_stmt 0 discriminator 1
	movq	global_rtl(%rip), %rax	# global_rtl, D.22471
	cmpq	-424(%rbp), %rax	# dest, D.22471
	jne	.L1546	#,
	.loc 1 5547 0 is_stmt 1
	movq	global_rtl(%rip), %rax	# global_rtl, D.22471
	cmpq	-344(%rbp), %rax	# trial, D.22471
	je	.L1547	#,
	.loc 1 5548 0
	movq	-344(%rbp), %rax	# trial, tmp2021
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$67, %ax	#, D.22470
	jne	.L1546	#,
	.loc 1 5549 0
	movq	-632(%rbp), %rax	# insn, tmp2022
	movq	%rax, %rdi	# tmp2022,
	call	condjump_p	#
	testl	%eax, %eax	# D.22478
	jne	.L1546	#,
.L1547:
	.loc 1 5551 0
	movl	-612(%rbp), %eax	# i, tmp2023
	movslq	%eax, %rdx	# tmp2023, D.22473
	movq	%rdx, %rax	# D.22473, tmp2024
	salq	$2, %rax	#, tmp2024
	addq	%rdx, %rax	# D.22473, tmp2024
	salq	$4, %rax	#, tmp2025
	movq	%rax, %rdx	# tmp2024, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2026
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _824->rtl, D.22471
	movq	-344(%rbp), %rdx	# trial, tmp2027
	movq	%rdx, 16(%rax)	# tmp2027, _825->fld[1].rtx
	.loc 1 5552 0
	movl	$1, cse_jumps_altered(%rip)	#, cse_jumps_altered
	.loc 1 5553 0
	jmp	.L1548	#
.L1546:
	.loc 1 5557 0
	movl	-612(%rbp), %eax	# i, tmp2028
	movslq	%eax, %rdx	# tmp2028, D.22473
	movq	%rdx, %rax	# D.22473, tmp2029
	salq	$2, %rax	#, tmp2029
	addq	%rdx, %rax	# D.22473, tmp2029
	salq	$4, %rax	#, tmp2030
	movq	%rax, %rdx	# tmp2029, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2031
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _828->rtl, D.22471
	leaq	16(%rax), %rsi	#, D.22481
	movq	-344(%rbp), %rdx	# trial, tmp2032
	movq	-632(%rbp), %rax	# insn, tmp2033
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp2033,
	call	validate_change	#
	testl	%eax, %eax	# D.22478
	je	.L1549	#,
	.loc 1 5562 0
	cmpq	$0, -640(%rbp)	#, libcall_insn
	je	.L1550	#,
	.loc 1 5563 0
	movl	-612(%rbp), %eax	# i, tmp2034
	movslq	%eax, %rdx	# tmp2034, D.22473
	movq	%rdx, %rax	# D.22473, tmp2035
	salq	$2, %rax	#, tmp2035
	addq	%rdx, %rax	# D.22473, tmp2035
	salq	$4, %rax	#, tmp2036
	movq	%rax, %rdx	# tmp2035, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2037
	addq	%rdx, %rax	# D.22473, D.22476
	movq	56(%rax), %rax	# _835->orig_src, D.22471
	movzwl	(%rax), %eax	# _836->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1551	#,
	.loc 1 5564 0
	movl	-612(%rbp), %eax	# i, tmp2038
	movslq	%eax, %rdx	# tmp2038, D.22473
	movq	%rdx, %rax	# D.22473, tmp2039
	salq	$2, %rax	#, tmp2039
	addq	%rdx, %rax	# D.22473, tmp2039
	salq	$4, %rax	#, tmp2040
	movq	%rax, %rdx	# tmp2039, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2041
	addq	%rdx, %rax	# D.22473, D.22476
	movq	56(%rax), %rax	# _840->orig_src, D.22471
	movzwl	(%rax), %eax	# _841->code, D.22470
	cmpw	$63, %ax	#, D.22470
	je	.L1551	#,
	.loc 1 5565 0
	movl	-612(%rbp), %eax	# i, tmp2042
	movslq	%eax, %rdx	# tmp2042, D.22473
	movq	%rdx, %rax	# D.22473, tmp2043
	salq	$2, %rax	#, tmp2043
	addq	%rdx, %rax	# D.22473, tmp2043
	salq	$4, %rax	#, tmp2044
	movq	%rax, %rdx	# tmp2043, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2045
	addq	%rdx, %rax	# D.22473, D.22476
	movq	56(%rax), %rax	# _845->orig_src, D.22471
	movzwl	(%rax), %eax	# _846->code, D.22470
	cmpw	$66, %ax	#, D.22470
	jne	.L1550	#,
.L1551:
	.loc 1 5567 0
	movl	-612(%rbp), %eax	# i, tmp2046
	movslq	%eax, %rdx	# tmp2046, D.22473
	movq	%rdx, %rax	# D.22473, tmp2047
	salq	$2, %rax	#, tmp2047
	addq	%rdx, %rax	# D.22473, tmp2047
	salq	$4, %rax	#, tmp2048
	movq	%rax, %rdx	# tmp2047, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2049
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _850->rtl, D.22471
	.loc 1 5566 0
	movq	16(%rax), %rax	# _851->fld[1].rtx, D.22471
	movq	-632(%rbp), %rdx	# insn, tmp2050
	movq	%rdx, %rsi	# tmp2050,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	movq	%rax, %rsi	#, D.22471
	movl	-612(%rbp), %eax	# i, tmp2051
	movslq	%eax, %rdx	# tmp2051, D.22473
	movq	%rdx, %rax	# D.22473, tmp2052
	salq	$2, %rax	#, tmp2052
	addq	%rdx, %rax	# D.22473, tmp2052
	salq	$4, %rax	#, tmp2053
	movq	%rax, %rdx	# tmp2052, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2054
	addq	%rdx, %rax	# D.22473, D.22476
	movq	56(%rax), %rcx	# _856->orig_src, D.22471
	movq	-640(%rbp), %rax	# libcall_insn, tmp2055
	movq	56(%rax), %rax	# libcall_insn_832(D)->fld[6].rtx, D.22471
	movq	%rsi, %rdx	# D.22471,
	movq	%rcx, %rsi	# D.22471,
	movq	%rax, %rdi	# D.22471,
	call	replace_rtx	#
.L1550:
	.loc 1 5573 0
	movl	-612(%rbp), %eax	# i, tmp2056
	movslq	%eax, %rdx	# tmp2056, D.22473
	movq	%rdx, %rax	# D.22473, tmp2057
	salq	$2, %rax	#, tmp2057
	addq	%rdx, %rax	# D.22473, tmp2057
	salq	$4, %rax	#, tmp2058
	movq	%rax, %rdx	# tmp2057, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2059
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _861->rtl, D.22471
	.loc 1 5572 0
	movq	16(%rax), %rax	# _862->fld[1].rtx, D.22471
	movq	-632(%rbp), %rdx	# insn, tmp2060
	movq	%rdx, %rsi	# tmp2060,
	movq	%rax, %rdi	# D.22471,
	call	canon_reg	#
	movq	%rax, %rsi	#, D.22471
	movl	-612(%rbp), %eax	# i, tmp2061
	movslq	%eax, %rdx	# tmp2061, D.22473
	movq	%rdx, %rax	# D.22473, tmp2062
	salq	$2, %rax	#, tmp2062
	addq	%rdx, %rax	# D.22473, tmp2062
	salq	$4, %rax	#, tmp2063
	movq	%rax, %rdx	# tmp2062, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2064
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _867->rtl, D.22471
	leaq	16(%rax), %rdi	#, D.22481
	movq	-632(%rbp), %rax	# insn, tmp2065
	movl	$1, %ecx	#,
	movq	%rsi, %rdx	# D.22471,
	movq	%rdi, %rsi	# D.22481,
	movq	%rax, %rdi	# tmp2065,
	call	validate_change	#
	.loc 1 5575 0
	call	apply_change_group	#
	.loc 1 5576 0
	jmp	.L1548	#
.L1549:
	.loc 1 5584 0
	movl	constant_pool_entries_cost(%rip), %eax	# constant_pool_entries_cost, constant_pool_entries_cost.828
	testl	%eax, %eax	# constant_pool_entries_cost.828
	je	.L1538	#,
	.loc 1 5585 0
	movq	-344(%rbp), %rax	# trial, tmp2066
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$67, %ax	#, D.22470
	je	.L1552	#,
	.loc 1 5585 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# trial, tmp2067
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$68, %ax	#, D.22470
	je	.L1552	#,
	movq	-344(%rbp), %rax	# trial, tmp2068
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$54, %ax	#, D.22470
	je	.L1552	#,
	movq	-344(%rbp), %rax	# trial, tmp2069
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$55, %ax	#, D.22470
	je	.L1552	#,
	movq	-344(%rbp), %rax	# trial, tmp2070
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$58, %ax	#, D.22470
	je	.L1552	#,
	movq	-344(%rbp), %rax	# trial, tmp2071
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$134, %ax	#, D.22470
	je	.L1552	#,
	movq	-344(%rbp), %rax	# trial, tmp2072
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$56, %ax	#, D.22470
	je	.L1552	#,
	movq	-344(%rbp), %rax	# trial, tmp2073
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$140, %ax	#, D.22470
	jne	.L1538	#,
.L1552:
	.loc 1 5589 0 is_stmt 1
	movq	-344(%rbp), %rax	# trial, tmp2074
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$58, %ax	#, D.22470
	jne	.L1553	#,
	.loc 1 5590 0 discriminator 1
	movq	-344(%rbp), %rax	# trial, tmp2075
	movq	8(%rax), %rax	# trial_125->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _880->code, D.22470
	.loc 1 5589 0 discriminator 1
	cmpw	$122, %ax	#, D.22470
	je	.L1538	#,
.L1553:
	.loc 1 5592 0
	movq	-344(%rbp), %rax	# trial, tmp2076
	movzwl	(%rax), %eax	# trial_125->code, D.22470
	cmpw	$58, %ax	#, D.22470
	jne	.L1554	#,
	.loc 1 5593 0
	movq	-344(%rbp), %rax	# trial, tmp2077
	movq	8(%rax), %rax	# trial_125->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _883->code, D.22470
	cmpw	$76, %ax	#, D.22470
	jne	.L1554	#,
	.loc 1 5594 0
	movq	-344(%rbp), %rax	# trial, tmp2078
	movq	8(%rax), %rax	# trial_125->fld[0].rtx, D.22471
	movq	8(%rax), %rax	# _885->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _886->code, D.22470
	cmpw	$67, %ax	#, D.22470
	jne	.L1554	#,
	.loc 1 5595 0
	movq	-344(%rbp), %rax	# trial, tmp2079
	movq	8(%rax), %rax	# trial_125->fld[0].rtx, D.22471
	movq	16(%rax), %rax	# _888->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _889->code, D.22470
	.loc 1 5592 0
	cmpw	$67, %ax	#, D.22470
	je	.L1538	#,
.L1554:
	.loc 1 5596 0
	cmpq	$0, -416(%rbp)	#, src_folded
	je	.L1555	#,
	.loc 1 5597 0
	movq	-416(%rbp), %rax	# src_folded, tmp2080
	movzwl	(%rax), %eax	# src_folded_54->code, D.22470
	cmpw	$66, %ax	#, D.22470
	je	.L1538	#,
	.loc 1 5598 0
	cmpl	$0, -552(%rbp)	#, src_folded_force_flag
	jne	.L1538	#,
.L1555:
	.loc 1 5599 0
	movl	-516(%rbp), %eax	# mode, mode.829
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22483
	cmpl	$4, %eax	#, D.22483
	je	.L1538	#,
	.loc 1 5600 0
	cmpl	$0, -516(%rbp)	#, mode
	je	.L1538	#,
	.loc 1 5602 0
	movl	$1, -552(%rbp)	#, src_folded_force_flag
	.loc 1 5603 0
	movq	-344(%rbp), %rax	# trial, tmp2082
	movq	%rax, -416(%rbp)	# tmp2082, src_folded
	.loc 1 5604 0
	movl	constant_pool_entries_cost(%rip), %eax	# constant_pool_entries_cost, tmp2083
	movl	%eax, -584(%rbp)	# tmp2083, src_folded_cost
.LBE108:
	.loc 1 5606 0
	jmp	.L1532	#
.L1538:
	jmp	.L1532	#
.L1548:
	.loc 1 5608 0
	movl	-612(%rbp), %eax	# i, tmp2084
	movslq	%eax, %rdx	# tmp2084, D.22473
	movq	%rdx, %rax	# D.22473, tmp2085
	salq	$2, %rax	#, tmp2085
	addq	%rdx, %rax	# D.22473, tmp2085
	salq	$4, %rax	#, tmp2086
	movq	%rax, %rdx	# tmp2085, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2087
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _899->rtl, D.22471
	movq	16(%rax), %rax	# _900->fld[1].rtx, tmp2088
	movq	%rax, -432(%rbp)	# tmp2088, src
	.loc 1 5616 0
	movq	-424(%rbp), %rax	# dest, tmp2089
	movzwl	(%rax), %eax	# dest_382->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1556	#,
	.loc 1 5617 0
	movq	-424(%rbp), %rax	# dest, tmp2090
	movl	8(%rax), %edx	# dest_382->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.831
	cmpl	%eax, %edx	# cached_regno.831, D.22477
	jne	.L1557	#,
	.loc 1 5617 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.832
	testq	%rax, %rax	# cached_cse_reg_info.832
	jne	.L1558	#,
.L1557:
	.loc 1 5617 0 discriminator 1
	movq	-424(%rbp), %rax	# dest, tmp2091
	movl	8(%rax), %eax	# dest_382->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1559	#
.L1558:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.830
.L1559:
	.loc 1 5617 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.830_165->reg_qty, D.22478
	movq	-424(%rbp), %rax	# dest, tmp2092
	movl	8(%rax), %eax	# dest_382->fld[0].rtuint, D.22477
	cmpl	%eax, %edx	# D.22478, D.22478
	je	.L1556	#,
.LBB109:
	.loc 1 5619 0 is_stmt 1
	movq	-424(%rbp), %rax	# dest, tmp2093
	movl	8(%rax), %edx	# dest_382->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.834
	cmpl	%eax, %edx	# cached_regno.834, D.22477
	jne	.L1560	#,
	.loc 1 5619 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.835
	testq	%rax, %rax	# cached_cse_reg_info.835
	jne	.L1561	#,
.L1560:
	.loc 1 5619 0 discriminator 1
	movq	-424(%rbp), %rax	# dest, tmp2094
	movl	8(%rax), %eax	# dest_382->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1562	#
.L1561:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.833
.L1562:
	.loc 1 5619 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.833_166->reg_qty, tmp2095
	movl	%eax, -508(%rbp)	# tmp2095, dest_q
	.loc 1 5620 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.836
	movl	-508(%rbp), %eax	# dest_q, tmp2096
	movslq	%eax, %rdx	# tmp2096, D.22473
	movq	%rdx, %rax	# D.22473, tmp2097
	addq	%rax, %rax	# tmp2097
	addq	%rdx, %rax	# D.22473, tmp2097
	salq	$4, %rax	#, tmp2098
	addq	%rcx, %rax	# qty_table.836, tmp2099
	movq	%rax, -192(%rbp)	# tmp2099, dest_ent
	.loc 1 5622 0 discriminator 3
	movq	-192(%rbp), %rax	# dest_ent, tmp2100
	movl	36(%rax), %edx	# dest_ent_922->mode, D.22475
	movq	-424(%rbp), %rax	# dest, tmp2101
	movzbl	2(%rax), %eax	# dest_382->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22477
	cmpl	%eax, %edx	# D.22477, D.22475
	jne	.L1556	#,
	.loc 1 5623 0
	movq	-192(%rbp), %rax	# dest_ent, tmp2102
	movl	28(%rax), %edx	# dest_ent_922->first_reg, D.22477
	movq	-424(%rbp), %rax	# dest, tmp2103
	movl	8(%rax), %eax	# dest_382->fld[0].rtuint, D.22477
	cmpl	%eax, %edx	# D.22477, D.22477
	je	.L1556	#,
	.loc 1 5624 0
	movq	-432(%rbp), %rax	# src, tmp2104
	movzwl	(%rax), %eax	# src_901->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1556	#,
	.loc 1 5624 0 is_stmt 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp2105
	movl	8(%rax), %edx	# src_901->fld[0].rtuint, D.22477
	movq	-424(%rbp), %rax	# dest, tmp2106
	movl	8(%rax), %eax	# dest_382->fld[0].rtuint, D.22477
	cmpl	%eax, %edx	# D.22477, D.22477
	jne	.L1556	#,
	.loc 1 5627 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2107
	movslq	%eax, %rdx	# tmp2107, D.22473
	movq	%rdx, %rax	# D.22473, tmp2108
	salq	$2, %rax	#, tmp2108
	addq	%rdx, %rax	# D.22473, tmp2108
	salq	$4, %rax	#, tmp2109
	movq	%rax, %rdx	# tmp2108, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2110
	addq	%rdx, %rax	# D.22473, D.22476
	movq	8(%rax), %rax	# _933->src, D.22471
	movzwl	(%rax), %eax	# _934->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1563	#,
	.loc 1 5628 0
	movl	-612(%rbp), %eax	# i, tmp2111
	movslq	%eax, %rdx	# tmp2111, D.22473
	movq	%rdx, %rax	# D.22473, tmp2112
	salq	$2, %rax	#, tmp2112
	addq	%rdx, %rax	# D.22473, tmp2112
	salq	$4, %rax	#, tmp2113
	movq	%rax, %rdx	# tmp2112, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2114
	addq	%rdx, %rax	# D.22473, D.22476
	movq	8(%rax), %rax	# _938->src, D.22471
	movl	8(%rax), %eax	# _939->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1556	#,
.L1563:
	.loc 1 5629 0
	movq	-424(%rbp), %rax	# dest, tmp2115
	movzwl	(%rax), %eax	# dest_382->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1564	#,
	.loc 1 5629 0 is_stmt 0 discriminator 1
	movq	-424(%rbp), %rax	# dest, tmp2116
	movl	8(%rax), %eax	# dest_382->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1556	#,
.L1564:
.LBB110:
	.loc 1 5633 0 is_stmt 1
	movq	-432(%rbp), %rax	# src, tmp2117
	movl	8(%rax), %edx	# src_901->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.838
	cmpl	%eax, %edx	# cached_regno.838, D.22477
	jne	.L1565	#,
	.loc 1 5633 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.839
	testq	%rax, %rax	# cached_cse_reg_info.839
	jne	.L1566	#,
.L1565:
	.loc 1 5633 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp2118
	movl	8(%rax), %eax	# src_901->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1567	#
.L1566:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.837
.L1567:
	.loc 1 5633 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.837_167->reg_qty, tmp2119
	movl	%eax, -504(%rbp)	# tmp2119, src_q
	.loc 1 5634 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.840
	movl	-504(%rbp), %eax	# src_q, tmp2120
	movslq	%eax, %rdx	# tmp2120, D.22473
	movq	%rdx, %rax	# D.22473, tmp2121
	addq	%rax, %rax	# tmp2121
	addq	%rdx, %rax	# D.22473, tmp2121
	salq	$4, %rax	#, tmp2122
	addq	%rcx, %rax	# qty_table.840, tmp2123
	movq	%rax, -184(%rbp)	# tmp2123, src_ent
	.loc 1 5635 0 discriminator 3
	movq	-184(%rbp), %rax	# src_ent, tmp2124
	movl	28(%rax), %eax	# src_ent_953->first_reg, D.22477
	movl	%eax, -500(%rbp)	# D.22477, first
	.loc 1 5638 0 discriminator 3
	cmpl	$52, -500(%rbp)	#, first
	jle	.L1568	#,
	.loc 1 5638 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.842
	movq	24(%rax), %rax	# cfun.842_956->emit, D.22484
	movq	80(%rax), %rax	# _957->x_regno_reg_rtx, D.22481
	movl	-500(%rbp), %edx	# first, tmp2125
	movslq	%edx, %rdx	# tmp2125, D.22473
	salq	$3, %rdx	#, D.22473
	addq	%rdx, %rax	# D.22473, D.22481
	movq	(%rax), %rax	# *_961, iftmp.841
	jmp	.L1569	#
.L1568:
	.loc 1 5638 0 discriminator 2
	movq	-432(%rbp), %rax	# src, tmp2126
	movzbl	2(%rax), %eax	# src_901->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22475
	movl	-500(%rbp), %edx	# first, tmp2127
	movl	%edx, %esi	# tmp2127,
	movl	%eax, %edi	# D.22475,
	call	gen_rtx_REG	#
.L1569:
	.loc 1 5636 0 is_stmt 1
	movq	%rax, -176(%rbp)	# iftmp.841, new_src
	.loc 1 5643 0
	movl	-612(%rbp), %eax	# i, tmp2128
	movslq	%eax, %rdx	# tmp2128, D.22473
	movq	%rdx, %rax	# D.22473, tmp2129
	salq	$2, %rax	#, tmp2129
	addq	%rdx, %rax	# D.22473, tmp2129
	salq	$4, %rax	#, tmp2130
	movq	%rax, %rdx	# tmp2129, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2131
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _969->rtl, D.22471
	leaq	16(%rax), %rsi	#, D.22481
	movq	-176(%rbp), %rdx	# new_src, tmp2132
	movq	-632(%rbp), %rax	# insn, tmp2133
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp2133,
	call	validate_change	#
	testl	%eax, %eax	# D.22478
	je	.L1556	#,
	.loc 1 5645 0
	movq	-176(%rbp), %rax	# new_src, tmp2134
	movq	%rax, -432(%rbp)	# tmp2134, src
	.loc 1 5649 0
	cmpq	$0, -384(%rbp)	#, src_const
	je	.L1556	#,
	.loc 1 5649 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# src_const, tmp2135
	movzwl	(%rax), %eax	# src_const_73->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1570	#,
	movq	-384(%rbp), %rax	# src_const, tmp2136
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp2136,
	call	notreg_cost	#
	movl	%eax, %ebx	#, iftmp.843
	jmp	.L1571	#
.L1570:
	.loc 1 5649 0 discriminator 2
	movl	$0, %ebx	#, iftmp.843
.L1571:
	.loc 1 5649 0 discriminator 3
	movq	-432(%rbp), %rax	# src, tmp2137
	movzwl	(%rax), %eax	# src_973->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1572	#,
	.loc 1 5649 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp2138
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp2138,
	call	notreg_cost	#
	jmp	.L1573	#
.L1572:
	.loc 1 5649 0 discriminator 2
	movl	$0, %eax	#, iftmp.844
.L1573:
	.loc 1 5649 0 discriminator 3
	cmpl	%eax, %ebx	# iftmp.844, iftmp.843
	jge	.L1556	#,
	.loc 1 5650 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2139
	movslq	%eax, %rdx	# tmp2139, D.22473
	movq	%rdx, %rax	# D.22473, tmp2140
	salq	$2, %rax	#, tmp2140
	addq	%rdx, %rax	# D.22473, tmp2140
	salq	$4, %rax	#, tmp2141
	movq	%rax, %rdx	# tmp2140, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2142
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _982->rtl, D.22471
	leaq	16(%rax), %rsi	#, D.22481
	movq	-384(%rbp), %rdx	# src_const, tmp2143
	movq	-632(%rbp), %rax	# insn, tmp2144
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp2144,
	call	validate_change	#
	testl	%eax, %eax	# D.22478
	je	.L1556	#,
	.loc 1 5652 0
	movq	-384(%rbp), %rax	# src_const, tmp2145
	movq	%rax, -432(%rbp)	# tmp2145, src
.L1556:
.LBE110:
.LBE109:
	.loc 1 5658 0
	movl	-612(%rbp), %eax	# i, tmp2146
	movslq	%eax, %rdx	# tmp2146, D.22473
	movq	%rdx, %rax	# D.22473, tmp2147
	salq	$2, %rax	#, tmp2147
	addq	%rdx, %rax	# D.22473, tmp2147
	salq	$4, %rax	#, tmp2148
	movq	%rax, %rdx	# tmp2147, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2149
	addq	%rdx, %rax	# D.22473, D.22476
	movq	8(%rax), %rax	# _989->src, D.22471
	cmpq	-432(%rbp), %rax	# src, D.22471
	je	.L1574	#,
	.loc 1 5660 0
	movl	$1, cse_altered(%rip)	#, cse_altered
	.loc 1 5661 0
	movl	$0, do_not_record(%rip)	#, do_not_record
	.loc 1 5662 0
	movl	$0, hash_arg_in_memory(%rip)	#, hash_arg_in_memory
	.loc 1 5663 0
	movl	-612(%rbp), %eax	# i, tmp2150
	movslq	%eax, %rdx	# tmp2150, D.22473
	movq	%rdx, %rax	# D.22473, tmp2151
	salq	$2, %rax	#, tmp2151
	addq	%rdx, %rax	# D.22473, tmp2151
	salq	$4, %rax	#, tmp2152
	movq	%rax, %rdx	# tmp2151, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2153
	addq	%rax, %rdx	# tmp2153, D.22476
	movq	-432(%rbp), %rax	# src, tmp2154
	movq	%rax, 8(%rdx)	# tmp2154, _993->src
	.loc 1 5664 0
	movl	-612(%rbp), %eax	# i, tmp2155
	movslq	%eax, %rdx	# tmp2155, D.22473
	movq	%rdx, %rax	# D.22473, tmp2156
	salq	$2, %rax	#, tmp2156
	addq	%rdx, %rax	# D.22473, tmp2156
	salq	$4, %rax	#, tmp2157
	movq	%rax, %rdx	# tmp2156, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2158
	leaq	(%rdx,%rax), %rbx	#, D.22476
	movq	-432(%rbp), %rax	# src, tmp2159
	movzwl	(%rax), %eax	# src_47->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1575	#,
	.loc 1 5664 0 is_stmt 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp2160
	movl	8(%rax), %eax	# src_47->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1575	#,
	movq	-432(%rbp), %rax	# src, tmp2161
	movl	8(%rax), %edx	# src_47->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.847
	cmpl	%eax, %edx	# cached_regno.847, D.22477
	jne	.L1576	#,
	.loc 1 5664 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.848
	testq	%rax, %rax	# cached_cse_reg_info.848
	jne	.L1577	#,
.L1576:
	.loc 1 5664 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp2162
	movl	8(%rax), %eax	# src_47->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1578	#
.L1577:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.846
.L1578:
	.loc 1 5664 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.846_172->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.845
	jmp	.L1579	#
.L1575:
	.loc 1 5664 0 discriminator 2
	movl	-516(%rbp), %edx	# mode, tmp2163
	movq	-432(%rbp), %rax	# src, tmp2164
	movl	%edx, %esi	# tmp2163,
	movq	%rax, %rdi	# tmp2164,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.845
.L1579:
	.loc 1 5664 0 discriminator 3
	movl	%eax, 24(%rbx)	# iftmp.845, _996->src_hash
	.loc 1 5665 0 is_stmt 1 discriminator 3
	movl	-612(%rbp), %eax	# i, tmp2165
	movslq	%eax, %rdx	# tmp2165, D.22473
	movq	%rdx, %rax	# D.22473, tmp2166
	salq	$2, %rax	#, tmp2166
	addq	%rdx, %rax	# D.22473, tmp2166
	salq	$4, %rax	#, tmp2167
	movq	%rax, %rdx	# tmp2166, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2168
	addq	%rax, %rdx	# tmp2168, D.22476
	movl	do_not_record(%rip), %eax	# do_not_record, do_not_record.849
	movb	%al, 41(%rdx)	# D.22480, _1012->src_volatile
	.loc 1 5666 0 discriminator 3
	movl	-612(%rbp), %eax	# i, tmp2169
	movslq	%eax, %rdx	# tmp2169, D.22473
	movq	%rdx, %rax	# D.22473, tmp2170
	salq	$2, %rax	#, tmp2170
	addq	%rdx, %rax	# D.22473, tmp2170
	salq	$4, %rax	#, tmp2171
	movq	%rax, %rdx	# tmp2170, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2172
	addq	%rax, %rdx	# tmp2172, D.22476
	movl	hash_arg_in_memory(%rip), %eax	# hash_arg_in_memory, hash_arg_in_memory.850
	movb	%al, 40(%rdx)	# D.22480, _1017->src_in_memory
	.loc 1 5667 0 discriminator 3
	movl	-612(%rbp), %eax	# i, tmp2173
	movslq	%eax, %rdx	# tmp2173, D.22473
	movq	%rdx, %rax	# D.22473, tmp2174
	salq	$2, %rax	#, tmp2174
	addq	%rdx, %rax	# D.22473, tmp2174
	salq	$4, %rax	#, tmp2175
	movq	%rax, %rdx	# tmp2174, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2176
	leaq	(%rdx,%rax), %rbx	#, D.22476
	movl	-612(%rbp), %eax	# i, tmp2177
	movslq	%eax, %rdx	# tmp2177, D.22473
	movq	%rdx, %rax	# D.22473, tmp2178
	salq	$2, %rax	#, tmp2178
	addq	%rdx, %rax	# D.22473, tmp2178
	salq	$4, %rax	#, tmp2179
	movq	%rax, %rdx	# tmp2178, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2180
	addq	%rdx, %rax	# D.22473, D.22476
	movl	24(%rax), %ecx	# _1025->src_hash, D.22477
	movl	-516(%rbp), %edx	# mode, tmp2181
	movq	-432(%rbp), %rax	# src, tmp2182
	movl	%ecx, %esi	# D.22477,
	movq	%rax, %rdi	# tmp2182,
	call	lookup	#
	movq	%rax, 16(%rbx)	# D.22482, _1022->src_elt
.L1574:
	.loc 1 5680 0
	cmpl	$1, -608(%rbp)	#, n_sets
	jne	.L1580	#,
	.loc 1 5680 0 is_stmt 0 discriminator 1
	cmpq	$0, -384(%rbp)	#, src_const
	je	.L1580	#,
	movq	-424(%rbp), %rax	# dest, tmp2183
	movzwl	(%rax), %eax	# dest_382->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1580	#,
	.loc 1 5681 0 is_stmt 1
	movq	-384(%rbp), %rax	# src_const, tmp2184
	movzwl	(%rax), %eax	# src_const_73->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1580	#,
	.loc 1 5682 0
	movq	-384(%rbp), %rax	# src_const, tmp2185
	movzwl	(%rax), %eax	# src_const_73->code, D.22470
	cmpw	$58, %ax	#, D.22470
	jne	.L1581	#,
	.loc 1 5683 0
	movq	-384(%rbp), %rax	# src_const, tmp2186
	movq	8(%rax), %rax	# src_const_73->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _1031->code, D.22470
	cmpw	$76, %ax	#, D.22470
	jne	.L1581	#,
	.loc 1 5684 0
	movq	-384(%rbp), %rax	# src_const, tmp2187
	movq	8(%rax), %rax	# src_const_73->fld[0].rtx, D.22471
	movq	8(%rax), %rax	# _1033->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _1034->code, D.22470
	cmpw	$67, %ax	#, D.22470
	jne	.L1581	#,
	.loc 1 5685 0
	movq	-384(%rbp), %rax	# src_const, tmp2188
	movq	8(%rax), %rax	# src_const_73->fld[0].rtx, D.22471
	movq	16(%rax), %rax	# _1036->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _1037->code, D.22470
	.loc 1 5682 0
	cmpw	$67, %ax	#, D.22470
	je	.L1580	#,
.L1581:
	.loc 1 5688 0
	movq	-384(%rbp), %rax	# src_const, tmp2189
	movq	%rax, %rdi	# tmp2189,
	call	copy_rtx	#
	movq	%rax, -384(%rbp)	# tmp2190, src_const
	.loc 1 5692 0
	movq	-384(%rbp), %rdx	# src_const, tmp2191
	movq	-632(%rbp), %rax	# insn, tmp2192
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp2192,
	call	set_unique_reg_note	#
	.loc 1 5705 0
	movq	-424(%rbp), %rax	# dest, tmp2193
	movl	8(%rax), %edx	# dest_382->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.852
	cmpl	%eax, %edx	# cached_regno.852, D.22477
	jne	.L1582	#,
	.loc 1 5705 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.853
	testq	%rax, %rax	# cached_cse_reg_info.853
	jne	.L1583	#,
.L1582:
	.loc 1 5705 0 discriminator 1
	movq	-424(%rbp), %rax	# dest, tmp2194
	movl	8(%rax), %eax	# dest_382->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1584	#
.L1583:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.851
.L1584:
	.loc 1 5705 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.851_173->reg_qty, D.22478
	movq	-424(%rbp), %rax	# dest, tmp2195
	movl	8(%rax), %eax	# dest_382->fld[0].rtuint, D.22477
	cmpl	%eax, %edx	# D.22478, D.22478
	je	.L1580	#,
.LBB111:
	.loc 1 5707 0 is_stmt 1
	movq	-424(%rbp), %rax	# dest, tmp2196
	movl	8(%rax), %edx	# dest_382->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.855
	cmpl	%eax, %edx	# cached_regno.855, D.22477
	jne	.L1585	#,
	.loc 1 5707 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.856
	testq	%rax, %rax	# cached_cse_reg_info.856
	jne	.L1586	#,
.L1585:
	.loc 1 5707 0 discriminator 1
	movq	-424(%rbp), %rax	# dest, tmp2197
	movl	8(%rax), %eax	# dest_382->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1587	#
.L1586:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.854
.L1587:
	.loc 1 5707 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.854_174->reg_qty, tmp2198
	movl	%eax, -496(%rbp)	# tmp2198, dest_q
	.loc 1 5708 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.857
	movl	-496(%rbp), %eax	# dest_q, tmp2199
	movslq	%eax, %rdx	# tmp2199, D.22473
	movq	%rdx, %rax	# D.22473, tmp2200
	addq	%rax, %rax	# tmp2200
	addq	%rdx, %rax	# D.22473, tmp2200
	salq	$4, %rax	#, tmp2201
	addq	%rcx, %rax	# qty_table.857, tmp2202
	movq	%rax, -168(%rbp)	# tmp2202, dest_ent
	.loc 1 5710 0 discriminator 3
	movq	-168(%rbp), %rax	# dest_ent, tmp2203
	movq	(%rax), %rdx	# dest_ent_1059->const_rtx, D.22471
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	jne	.L1580	#,
.LBB112:
	.loc 1 5713 0
	movq	-632(%rbp), %rax	# insn, tmp2204
	movl	$0, %edx	#,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp2204,
	call	find_reg_note	#
	movq	%rax, -160(%rbp)	# tmp2205, note
	.loc 1 5714 0
	movq	-168(%rbp), %rax	# dest_ent, tmp2206
	movq	8(%rax), %rax	# dest_ent_1059->const_insn, tmp2207
	movq	%rax, -152(%rbp)	# tmp2207, const_insn
	.loc 1 5716 0
	movq	-152(%rbp), %rax	# const_insn, tmp2208
	movzwl	(%rax), %eax	# const_insn_1063->code, D.22470
	movzwl	%ax, %eax	# D.22470, D.22478
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22480
	cmpb	$105, %al	#, D.22480
	jne	.L1588	#,
	.loc 1 5716 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# const_insn, tmp2210
	movq	32(%rax), %rax	# const_insn_1063->fld[3].rtx, D.22471
	movzwl	(%rax), %eax	# _1067->code, D.22470
	cmpw	$47, %ax	#, D.22470
	jne	.L1589	#,
	.loc 1 5716 0 discriminator 3
	movq	-152(%rbp), %rax	# const_insn, tmp2211
	movq	32(%rax), %rax	# const_insn_1063->fld[3].rtx, iftmp.859
	jmp	.L1591	#
.L1589:
	.loc 1 5716 0 discriminator 4
	movq	-152(%rbp), %rax	# const_insn, tmp2212
	movq	32(%rax), %rdx	# const_insn_1063->fld[3].rtx, D.22471
	movq	-152(%rbp), %rax	# const_insn, tmp2213
	movq	%rdx, %rsi	# D.22471,
	movq	%rax, %rdi	# tmp2213,
	call	single_set_2	#
	jmp	.L1591	#
.L1588:
	.loc 1 5716 0 discriminator 2
	movl	$0, %eax	#, iftmp.858
.L1591:
	.loc 1 5716 0 discriminator 5
	movq	%rax, -472(%rbp)	# iftmp.858, tem
	cmpq	$0, -472(%rbp)	#, tem
	je	.L1580	#,
	.loc 1 5717 0 is_stmt 1
	movq	-472(%rbp), %rax	# tem, tmp2214
	movq	8(%rax), %rax	# tem_1074->fld[0].rtx, D.22471
	movq	-424(%rbp), %rdx	# dest, tmp2215
	movq	%rdx, %rsi	# tmp2215,
	movq	%rax, %rdi	# D.22471,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1580	#,
	.loc 1 5719 0
	cmpq	$0, -160(%rbp)	#, note
	je	.L1592	#,
	.loc 1 5720 0
	movq	-160(%rbp), %rax	# note, tmp2216
	movq	-152(%rbp), %rdx	# const_insn, tmp2217
	movq	%rdx, 8(%rax)	# tmp2217, note_1062->fld[0].rtx
	jmp	.L1580	#
.L1592:
	.loc 1 5723 0
	movq	-632(%rbp), %rax	# insn, tmp2218
	movq	56(%rax), %rdx	# insn_3->fld[6].rtx, D.22471
	movq	-152(%rbp), %rax	# const_insn, tmp2219
	movq	%rdx, %rcx	# D.22471,
	movq	%rax, %rdx	# tmp2219,
	movl	$5, %esi	#,
	movl	$4, %edi	#,
	call	gen_rtx_fmt_ue	#
	movq	-632(%rbp), %rdx	# insn, tmp2220
	movq	%rax, 56(%rdx)	# D.22471, insn_3->fld[6].rtx
.L1580:
.LBE112:
.LBE111:
	.loc 1 5731 0
	movl	$0, do_not_record(%rip)	#, do_not_record
	.loc 1 5735 0
	jmp	.L1593	#
.L1594:
	.loc 1 5739 0
	movq	-424(%rbp), %rax	# dest, tmp2221
	movq	8(%rax), %rax	# dest_48->fld[0].rtx, tmp2222
	movq	%rax, -424(%rbp)	# tmp2222, dest
.L1593:
	.loc 1 5735 0 discriminator 1
	movq	-424(%rbp), %rax	# dest, tmp2223
	movzwl	(%rax), %eax	# dest_48->code, D.22470
	cmpw	$132, %ax	#, D.22470
	je	.L1594	#,
	.loc 1 5736 0
	movq	-424(%rbp), %rax	# dest, tmp2224
	movzwl	(%rax), %eax	# dest_48->code, D.22470
	cmpw	$133, %ax	#, D.22470
	je	.L1594	#,
	.loc 1 5737 0
	movq	-424(%rbp), %rax	# dest, tmp2225
	movzwl	(%rax), %eax	# dest_48->code, D.22470
	cmpw	$63, %ax	#, D.22470
	je	.L1594	#,
	.loc 1 5738 0
	movq	-424(%rbp), %rax	# dest, tmp2226
	movzwl	(%rax), %eax	# dest_48->code, D.22470
	cmpw	$64, %ax	#, D.22470
	je	.L1594	#,
	.loc 1 5741 0
	movl	-612(%rbp), %eax	# i, tmp2227
	movslq	%eax, %rdx	# tmp2227, D.22473
	movq	%rdx, %rax	# D.22473, tmp2228
	salq	$2, %rax	#, tmp2228
	addq	%rdx, %rax	# D.22473, tmp2228
	salq	$4, %rax	#, tmp2229
	movq	%rax, %rdx	# tmp2228, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2230
	addq	%rax, %rdx	# tmp2230, D.22476
	movq	-424(%rbp), %rax	# dest, tmp2231
	movq	%rax, 32(%rdx)	# tmp2231, _1085->inner_dest
	.loc 1 5743 0
	movq	-424(%rbp), %rax	# dest, tmp2232
	movzwl	(%rax), %eax	# dest_48->code, D.22470
	cmpw	$66, %ax	#, D.22470
	jne	.L1595	#,
.LBB113:
	.loc 1 5747 0
	movq	-424(%rbp), %rax	# dest, tmp2233
	movq	8(%rax), %rax	# dest_48->fld[0].rtx, tmp2234
	movq	%rax, -144(%rbp)	# tmp2234, addr
	.loc 1 5748 0
	movq	-144(%rbp), %rax	# addr, tmp2235
	movzwl	(%rax), %eax	# addr_1087->code, D.22470
	movzwl	%ax, %eax	# D.22470, D.22478
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22480
	cmpb	$97, %al	#, D.22480
	jne	.L1596	#,
	.loc 1 5749 0
	movq	-144(%rbp), %rax	# addr, tmp2237
	movq	8(%rax), %rdx	# addr_1087->fld[0].rtx, D.22471
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	jne	.L1596	#,
	.loc 1 5750 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.861
	andl	$33554432, %eax	#, D.22478
	testl	%eax, %eax	# D.22478
	je	.L1597	#,
	.loc 1 5750 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.860
	jmp	.L1598	#
.L1597:
	.loc 1 5750 0 discriminator 2
	movl	$4, %eax	#, iftmp.860
.L1598:
	.loc 1 5750 0 discriminator 3
	movq	global_rtl+16(%rip), %rdx	# global_rtl, D.22471
	movl	%eax, %esi	# iftmp.860,
	movq	%rdx, %rdi	# D.22471,
	call	invalidate	#
.L1596:
	.loc 1 5752 0 is_stmt 1
	movq	-632(%rbp), %rdx	# insn, tmp2238
	movq	-424(%rbp), %rax	# dest, tmp2239
	movq	%rdx, %rsi	# tmp2238,
	movq	%rax, %rdi	# tmp2239,
	call	fold_rtx	#
	movq	%rax, -424(%rbp)	# tmp2240, dest
.L1595:
.LBE113:
	.loc 1 5759 0
	movl	-612(%rbp), %eax	# i, tmp2241
	movslq	%eax, %rdx	# tmp2241, D.22473
	movq	%rdx, %rax	# D.22473, tmp2242
	salq	$2, %rax	#, tmp2242
	addq	%rdx, %rax	# D.22473, tmp2242
	salq	$4, %rax	#, tmp2243
	movq	%rax, %rdx	# tmp2242, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2244
	leaq	(%rdx,%rax), %rbx	#, D.22476
	movq	-424(%rbp), %rax	# dest, tmp2245
	movzwl	(%rax), %eax	# dest_49->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1599	#,
	.loc 1 5759 0 is_stmt 0 discriminator 1
	movq	-424(%rbp), %rax	# dest, tmp2246
	movl	8(%rax), %eax	# dest_49->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1599	#,
	movq	-424(%rbp), %rax	# dest, tmp2247
	movl	8(%rax), %edx	# dest_49->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.864
	cmpl	%eax, %edx	# cached_regno.864, D.22477
	jne	.L1600	#,
	.loc 1 5759 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.865
	testq	%rax, %rax	# cached_cse_reg_info.865
	jne	.L1601	#,
.L1600:
	.loc 1 5759 0 discriminator 1
	movq	-424(%rbp), %rax	# dest, tmp2248
	movl	8(%rax), %eax	# dest_49->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1602	#
.L1601:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.863
.L1602:
	.loc 1 5759 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.863_179->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.862
	jmp	.L1603	#
.L1599:
	.loc 1 5759 0 discriminator 2
	movl	-516(%rbp), %edx	# mode, tmp2249
	movq	-424(%rbp), %rax	# dest, tmp2250
	movl	%edx, %esi	# tmp2249,
	movq	%rax, %rdi	# tmp2250,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.862
.L1603:
	.loc 1 5759 0 discriminator 3
	movl	%eax, 28(%rbx)	# iftmp.862, _1101->dest_hash
	.loc 1 5765 0 is_stmt 1 discriminator 3
	movl	-612(%rbp), %eax	# i, tmp2251
	movslq	%eax, %rdx	# tmp2251, D.22473
	movq	%rdx, %rax	# D.22473, tmp2252
	salq	$2, %rax	#, tmp2252
	addq	%rdx, %rax	# D.22473, tmp2252
	salq	$4, %rax	#, tmp2253
	movq	%rax, %rdx	# tmp2252, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2254
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1117->rtl, D.22471
	movq	8(%rax), %rax	# _1118->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _1119->code, D.22470
	cmpw	$133, %ax	#, D.22470
	je	.L1604	#,
	.loc 1 5766 0
	movl	-612(%rbp), %eax	# i, tmp2255
	movslq	%eax, %rdx	# tmp2255, D.22473
	movq	%rdx, %rax	# D.22473, tmp2256
	salq	$2, %rax	#, tmp2256
	addq	%rdx, %rax	# D.22473, tmp2256
	salq	$4, %rax	#, tmp2257
	movq	%rax, %rdx	# tmp2256, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2258
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1123->rtl, D.22471
	movq	8(%rax), %rax	# _1124->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _1125->code, D.22470
	cmpw	$132, %ax	#, D.22470
	jne	.L1605	#,
.L1604:
.LBB114:
	.loc 1 5768 0
	movl	-612(%rbp), %eax	# i, tmp2259
	movslq	%eax, %rdx	# tmp2259, D.22473
	movq	%rdx, %rax	# D.22473, tmp2260
	salq	$2, %rax	#, tmp2260
	addq	%rdx, %rax	# D.22473, tmp2260
	salq	$4, %rax	#, tmp2261
	movq	%rax, %rdx	# tmp2260, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2262
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1165->rtl, D.22471
	movq	8(%rax), %rax	# _1166->fld[0].rtx, D.22471
	movq	16(%rax), %rax	# _1167->fld[1].rtx, tmp2263
	movq	%rax, -128(%rbp)	# tmp2263, width
	.loc 1 5770 0
	cmpq	$0, -384(%rbp)	#, src_const
	je	.L1606	#,
	.loc 1 5770 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# src_const, tmp2264
	movzwl	(%rax), %eax	# src_const_74->code, D.22470
	cmpw	$54, %ax	#, D.22470
	jne	.L1606	#,
	.loc 1 5771 0 is_stmt 1
	movq	-128(%rbp), %rax	# width, tmp2265
	movzwl	(%rax), %eax	# width_1168->code, D.22470
	cmpw	$54, %ax	#, D.22470
	jne	.L1606	#,
	.loc 1 5772 0
	movq	-128(%rbp), %rax	# width, tmp2266
	movq	8(%rax), %rax	# width_1168->fld[0].rtwint, D.22485
	cmpq	$63, %rax	#, D.22485
	jg	.L1606	#,
	.loc 1 5773 0
	movq	-384(%rbp), %rax	# src_const, tmp2267
	movq	8(%rax), %rdx	# src_const_74->fld[0].rtwint, D.22485
	.loc 1 5774 0
	movq	-128(%rbp), %rax	# width, tmp2268
	movq	8(%rax), %rax	# width_1168->fld[0].rtwint, D.22485
	movq	$-1, %rsi	#, tmp2269
	movl	%eax, %ecx	# D.22478, tmp2897
	salq	%cl, %rsi	# tmp2897, D.22485
	movq	%rsi, %rax	# D.22485, D.22485
	andq	%rdx, %rax	# D.22485, D.22485
	.loc 1 5773 0
	testq	%rax, %rax	# D.22485
	jne	.L1606	#,
	.loc 1 5773 0 is_stmt 0 discriminator 1
	nop
.LBE114:
	.loc 1 5767 0 is_stmt 1 discriminator 1
	jmp	.L1608	#
.L1606:
.LBB115:
	.loc 1 5784 0
	movl	-612(%rbp), %eax	# i, tmp2270
	movslq	%eax, %rdx	# tmp2270, D.22473
	movq	%rdx, %rax	# D.22473, tmp2271
	salq	$2, %rax	#, tmp2271
	addq	%rdx, %rax	# D.22473, tmp2271
	salq	$4, %rax	#, tmp2272
	movq	%rax, %rdx	# tmp2271, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2273
	addq	%rdx, %rax	# D.22473, D.22476
	movq	$0, 16(%rax)	#, _1179->src_elt
	.loc 1 5785 0
	movl	-612(%rbp), %eax	# i, tmp2274
	movslq	%eax, %rdx	# tmp2274, D.22473
	movq	%rdx, %rax	# D.22473, tmp2275
	salq	$2, %rax	#, tmp2275
	addq	%rdx, %rax	# D.22473, tmp2275
	salq	$4, %rax	#, tmp2276
	movq	%rax, %rdx	# tmp2275, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2277
	addq	%rdx, %rax	# D.22473, D.22476
	movb	$1, 41(%rax)	#, _1182->src_volatile
	.loc 1 5786 0
	movq	$0, -464(%rbp)	#, src_eqv
	.loc 1 5787 0
	movq	$0, -456(%rbp)	#, src_eqv_elt
.LBE115:
	.loc 1 5767 0
	jmp	.L1608	#
.L1605:
	.loc 1 5793 0
	cmpl	$1, -608(%rbp)	#, n_sets
	jne	.L1609	#,
	.loc 1 5793 0 is_stmt 0 discriminator 1
	movq	global_rtl(%rip), %rax	# global_rtl, D.22471
	cmpq	-424(%rbp), %rax	# dest, D.22471
	jne	.L1609	#,
	movq	global_rtl(%rip), %rax	# global_rtl, D.22471
	cmpq	-432(%rbp), %rax	# src, D.22471
	jne	.L1609	#,
	.loc 1 5796 0 is_stmt 1
	movq	-632(%rbp), %rax	# insn, tmp2278
	movq	%rax, %rdi	# tmp2278,
	call	delete_insn	#
	.loc 1 5797 0
	movl	$1, cse_jumps_altered(%rip)	#, cse_jumps_altered
	.loc 1 5799 0
	movl	-612(%rbp), %eax	# i, tmp2279
	movslq	%eax, %rdx	# tmp2279, D.22473
	movq	%rdx, %rax	# D.22473, tmp2280
	salq	$2, %rax	#, tmp2280
	addq	%rdx, %rax	# D.22473, tmp2280
	salq	$4, %rax	#, tmp2281
	movq	%rax, %rdx	# tmp2280, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2282
	addq	%rdx, %rax	# D.22473, D.22476
	movq	$0, (%rax)	#, _1131->rtl
	jmp	.L1608	#
.L1609:
	.loc 1 5804 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.22471
	cmpq	-424(%rbp), %rax	# dest, D.22471
	jne	.L1610	#,
	.loc 1 5804 0 is_stmt 0 discriminator 1
	movq	-432(%rbp), %rax	# src, tmp2283
	movzwl	(%rax), %eax	# src_47->code, D.22470
	cmpw	$67, %ax	#, D.22470
	jne	.L1610	#,
	.loc 1 5807 0 is_stmt 1
	movq	-632(%rbp), %rax	# insn, tmp2284
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1611	#,
	.loc 1 5808 0
	movq	-632(%rbp), %rax	# insn, tmp2285
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, D.22471
	movzwl	(%rax), %eax	# _1135->code, D.22470
	cmpw	$35, %ax	#, D.22470
	je	.L1612	#,
.L1611:
	.loc 1 5809 0
	movq	-632(%rbp), %rax	# insn, tmp2286
	movq	%rax, %rdi	# tmp2286,
	call	emit_barrier_after	#
.L1612:
	.loc 1 5818 0
	cmpl	$1, -608(%rbp)	#, n_sets
	jne	.L1613	#,
.LBB116:
	.loc 1 5820 0
	movq	-432(%rbp), %rax	# src, tmp2287
	movq	8(%rax), %rax	# src_47->fld[0].rtx, D.22471
	movq	%rax, %rdi	# D.22471,
	call	gen_jump	#
	movq	-632(%rbp), %rdx	# insn, tmp2288
	movq	%rdx, %rsi	# tmp2288,
	movq	%rax, %rdi	# D.22471,
	call	emit_jump_insn_before	#
	movq	%rax, -136(%rbp)	# tmp2289, new
	.loc 1 5822 0
	movq	-432(%rbp), %rax	# src, tmp2290
	movq	8(%rax), %rdx	# src_47->fld[0].rtx, D.22471
	movq	-136(%rbp), %rax	# new, tmp2291
	movq	%rdx, 64(%rax)	# D.22471, new_1139->fld[7].rtx
	.loc 1 5823 0
	movq	-432(%rbp), %rax	# src, tmp2292
	movq	8(%rax), %rax	# src_47->fld[0].rtx, D.22471
	movl	32(%rax), %edx	# _1141->fld[3].rtint, D.22478
	addl	$1, %edx	#, D.22478
	movl	%edx, 32(%rax)	# D.22478, _1141->fld[3].rtint
	.loc 1 5824 0
	movq	-136(%rbp), %rax	# new, tmp2293
	movq	%rax, -632(%rbp)	# tmp2293, insn
	.loc 1 5827 0
	movq	-632(%rbp), %rax	# insn, tmp2294
	movq	24(%rax), %rax	# insn_1144->fld[2].rtx, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1614	#,
	.loc 1 5828 0
	movq	-632(%rbp), %rax	# insn, tmp2295
	movq	24(%rax), %rax	# insn_1144->fld[2].rtx, D.22471
	movzwl	(%rax), %eax	# _1146->code, D.22470
	cmpw	$35, %ax	#, D.22470
	je	.L1615	#,
.L1614:
	.loc 1 5829 0
	movq	-632(%rbp), %rax	# insn, tmp2296
	movq	%rax, %rdi	# tmp2296,
	call	emit_barrier_after	#
.LBE116:
	jmp	.L1616	#
.L1615:
	jmp	.L1616	#
.L1613:
	.loc 1 5832 0
	movq	-632(%rbp), %rax	# insn, tmp2297
	movl	$-1, 40(%rax)	#, insn_3->fld[4].rtint
.L1616:
	.loc 1 5834 0
	movq	-632(%rbp), %rax	# insn, tmp2298
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp2298,
	call	never_reached_warning	#
	.loc 1 5839 0
	movl	$1, cse_jumps_altered(%rip)	#, cse_jumps_altered
	.loc 1 5840 0
	movl	-612(%rbp), %eax	# i, tmp2299
	movslq	%eax, %rdx	# tmp2299, D.22473
	movq	%rdx, %rax	# D.22473, tmp2300
	salq	$2, %rax	#, tmp2300
	addq	%rdx, %rax	# D.22473, tmp2300
	salq	$4, %rax	#, tmp2301
	movq	%rax, %rdx	# tmp2300, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2302
	addq	%rdx, %rax	# D.22473, D.22476
	movq	$0, (%rax)	#, _1150->rtl
	jmp	.L1608	#
.L1610:
	.loc 1 5846 0
	movl	do_not_record(%rip), %eax	# do_not_record, do_not_record.866
	testl	%eax, %eax	# do_not_record.866
	je	.L1608	#,
	.loc 1 5848 0
	movq	-424(%rbp), %rax	# dest, tmp2303
	movzwl	(%rax), %eax	# dest_49->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1617	#,
	.loc 1 5848 0 is_stmt 0 discriminator 1
	movq	-424(%rbp), %rax	# dest, tmp2304
	movzwl	(%rax), %eax	# dest_49->code, D.22470
	cmpw	$63, %ax	#, D.22470
	jne	.L1618	#,
.L1617:
	.loc 1 5849 0 is_stmt 1
	movq	-424(%rbp), %rax	# dest, tmp2305
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp2305,
	call	invalidate	#
	jmp	.L1619	#
.L1618:
	.loc 1 5850 0
	movq	-424(%rbp), %rax	# dest, tmp2306
	movzwl	(%rax), %eax	# dest_49->code, D.22470
	cmpw	$66, %ax	#, D.22470
	jne	.L1620	#,
	.loc 1 5854 0
	cmpq	$0, -640(%rbp)	#, libcall_insn
	je	.L1621	#,
	.loc 1 5854 0 is_stmt 0 discriminator 1
	movq	-632(%rbp), %rax	# insn, tmp2307
	cmpq	-640(%rbp), %rax	# libcall_insn, tmp2307
	jne	.L1619	#,
.L1621:
	.loc 1 5855 0 is_stmt 1
	movq	-424(%rbp), %rax	# dest, tmp2308
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp2308,
	call	invalidate	#
	jmp	.L1619	#
.L1620:
	.loc 1 5857 0
	movq	-424(%rbp), %rax	# dest, tmp2309
	movzwl	(%rax), %eax	# dest_49->code, D.22470
	cmpw	$64, %ax	#, D.22470
	je	.L1623	#,
	.loc 1 5858 0
	movq	-424(%rbp), %rax	# dest, tmp2310
	movzwl	(%rax), %eax	# dest_49->code, D.22470
	cmpw	$133, %ax	#, D.22470
	jne	.L1619	#,
.L1623:
	.loc 1 5859 0
	movq	-424(%rbp), %rax	# dest, tmp2311
	movzbl	2(%rax), %eax	# dest_49->mode, D.22474
	movzbl	%al, %edx	# D.22474, D.22475
	movq	-424(%rbp), %rax	# dest, tmp2312
	movq	8(%rax), %rax	# dest_49->fld[0].rtx, D.22471
	movl	%edx, %esi	# D.22475,
	movq	%rax, %rdi	# D.22471,
	call	invalidate	#
.L1619:
	.loc 1 5860 0
	movl	-612(%rbp), %eax	# i, tmp2313
	movslq	%eax, %rdx	# tmp2313, D.22473
	movq	%rdx, %rax	# D.22473, tmp2314
	salq	$2, %rax	#, tmp2314
	addq	%rdx, %rax	# D.22473, tmp2314
	salq	$4, %rax	#, tmp2315
	movq	%rax, %rdx	# tmp2314, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2316
	addq	%rdx, %rax	# D.22473, D.22476
	movq	$0, (%rax)	#, _1162->rtl
.L1608:
	.loc 1 5863 0
	movl	-612(%rbp), %eax	# i, tmp2317
	movslq	%eax, %rdx	# tmp2317, D.22473
	movq	%rdx, %rax	# D.22473, tmp2318
	salq	$2, %rax	#, tmp2318
	addq	%rdx, %rax	# D.22473, tmp2318
	salq	$4, %rax	#, tmp2319
	movq	%rax, %rdx	# tmp2318, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2320
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1187->rtl, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1624	#,
	.loc 1 5863 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2321
	movslq	%eax, %rdx	# tmp2321, D.22473
	movq	%rdx, %rax	# D.22473, tmp2322
	salq	$2, %rax	#, tmp2322
	addq	%rdx, %rax	# D.22473, tmp2322
	salq	$4, %rax	#, tmp2323
	movq	%rax, %rdx	# tmp2322, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2324
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1191->rtl, D.22471
	movq	8(%rax), %rax	# _1192->fld[0].rtx, D.22471
	cmpq	-424(%rbp), %rax	# dest, D.22471
	je	.L1624	#,
	.loc 1 5864 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2325
	movslq	%eax, %rdx	# tmp2325, D.22473
	movq	%rdx, %rax	# D.22473, tmp2326
	salq	$2, %rax	#, tmp2326
	addq	%rdx, %rax	# D.22473, tmp2326
	salq	$4, %rax	#, tmp2327
	movq	%rax, %rdx	# tmp2326, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2328
	leaq	(%rdx,%rax), %rbx	#, D.22476
	movl	-612(%rbp), %eax	# i, tmp2329
	movslq	%eax, %rdx	# tmp2329, D.22473
	movq	%rdx, %rax	# D.22473, tmp2330
	salq	$2, %rax	#, tmp2330
	addq	%rdx, %rax	# D.22473, tmp2330
	salq	$4, %rax	#, tmp2331
	movq	%rax, %rdx	# tmp2330, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2332
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1199->rtl, D.22471
	movq	8(%rax), %rax	# _1200->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _1201->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1625	#,
	.loc 1 5864 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2333
	movslq	%eax, %rdx	# tmp2333, D.22473
	movq	%rdx, %rax	# D.22473, tmp2334
	salq	$2, %rax	#, tmp2334
	addq	%rdx, %rax	# D.22473, tmp2334
	salq	$4, %rax	#, tmp2335
	movq	%rax, %rdx	# tmp2334, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2336
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1205->rtl, D.22471
	movq	8(%rax), %rax	# _1206->fld[0].rtx, D.22471
	movl	8(%rax), %eax	# _1207->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1625	#,
	movl	-612(%rbp), %eax	# i, tmp2337
	movslq	%eax, %rdx	# tmp2337, D.22473
	movq	%rdx, %rax	# D.22473, tmp2338
	salq	$2, %rax	#, tmp2338
	addq	%rdx, %rax	# D.22473, tmp2338
	salq	$4, %rax	#, tmp2339
	movq	%rax, %rdx	# tmp2338, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2340
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1211->rtl, D.22471
	movq	8(%rax), %rax	# _1212->fld[0].rtx, D.22471
	movl	8(%rax), %edx	# _1213->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.869
	cmpl	%eax, %edx	# cached_regno.869, D.22477
	jne	.L1626	#,
	.loc 1 5864 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.870
	testq	%rax, %rax	# cached_cse_reg_info.870
	jne	.L1627	#,
.L1626:
	.loc 1 5864 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2341
	movslq	%eax, %rdx	# tmp2341, D.22473
	movq	%rdx, %rax	# D.22473, tmp2342
	salq	$2, %rax	#, tmp2342
	addq	%rdx, %rax	# D.22473, tmp2342
	salq	$4, %rax	#, tmp2343
	movq	%rax, %rdx	# tmp2342, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2344
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1220->rtl, D.22471
	movq	8(%rax), %rax	# _1221->fld[0].rtx, D.22471
	movl	8(%rax), %eax	# _1222->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1628	#
.L1627:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.868
.L1628:
	.loc 1 5864 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.868_181->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.867
	jmp	.L1629	#
.L1625:
	.loc 1 5864 0 discriminator 2
	movl	-612(%rbp), %eax	# i, tmp2345
	movslq	%eax, %rdx	# tmp2345, D.22473
	movq	%rdx, %rax	# D.22473, tmp2346
	salq	$2, %rax	#, tmp2346
	addq	%rdx, %rax	# D.22473, tmp2346
	salq	$4, %rax	#, tmp2347
	movq	%rax, %rdx	# tmp2346, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2348
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1230->rtl, D.22471
	movq	8(%rax), %rax	# _1231->fld[0].rtx, D.22471
	movl	-516(%rbp), %edx	# mode, tmp2349
	movl	%edx, %esi	# tmp2349,
	movq	%rax, %rdi	# D.22471,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.867
.L1629:
	.loc 1 5864 0 discriminator 3
	movl	%eax, 28(%rbx)	# iftmp.867, _1196->dest_hash
.L1624:
.LBE100:
	.loc 1 4990 0 is_stmt 1
	addl	$1, -612(%rbp)	#, i
.L1416:
	.loc 1 4990 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2350
	cmpl	-608(%rbp), %eax	# n_sets, tmp2350
	jl	.L1630	#,
	.loc 1 5891 0 is_stmt 1
	cmpq	$0, -464(%rbp)	#, src_eqv
	je	.L1631	#,
	.loc 1 5891 0 is_stmt 0 discriminator 1
	cmpq	$0, -456(%rbp)	#, src_eqv_elt
	jne	.L1631	#,
	movq	-448(%rbp), %rax	# sets, tmp2351
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1631	#,
	cmpl	$0, -604(%rbp)	#, src_eqv_volatile
	jne	.L1631	#,
	.loc 1 5892 0 is_stmt 1
	movq	-448(%rbp), %rax	# sets, tmp2352
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	8(%rax), %rdx	# _1238->fld[0].rtx, D.22471
	movq	-464(%rbp), %rax	# src_eqv, tmp2353
	movq	%rdx, %rsi	# D.22471,
	movq	%rax, %rdi	# tmp2353,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	jne	.L1631	#,
.LBB117:
	.loc 1 5895 0
	movq	-448(%rbp), %rax	# sets, tmp2354
	movq	16(%rax), %rax	# sets_42->src_elt, tmp2355
	movq	%rax, -336(%rbp)	# tmp2355, classp
	.loc 1 5896 0
	movq	-448(%rbp), %rax	# sets, tmp2356
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	8(%rax), %rax	# _1242->fld[0].rtx, tmp2357
	movq	%rax, -120(%rbp)	# tmp2357, dest
	.loc 1 5897 0
	movq	-120(%rbp), %rax	# dest, tmp2358
	movzbl	2(%rax), %eax	# dest_1243->mode, D.22474
	movzbl	%al, %eax	# D.22474, tmp2359
	movl	%eax, -536(%rbp)	# tmp2359, eqvmode
	.loc 1 5899 0
	movq	-120(%rbp), %rax	# dest, tmp2360
	movzwl	(%rax), %eax	# dest_1243->code, D.22470
	cmpw	$64, %ax	#, D.22470
	jne	.L1632	#,
	.loc 1 5901 0
	movq	-120(%rbp), %rax	# dest, tmp2361
	movq	8(%rax), %rax	# dest_1243->fld[0].rtx, D.22471
	movq	8(%rax), %rax	# _1247->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _1248->mode, D.22474
	movzbl	%al, %eax	# D.22474, tmp2362
	movl	%eax, -536(%rbp)	# tmp2362, eqvmode
	.loc 1 5902 0
	movq	$0, -336(%rbp)	#, classp
.L1632:
	.loc 1 5904 0
	movq	-336(%rbp), %rcx	# classp, tmp2363
	movq	-464(%rbp), %rax	# src_eqv, tmp2364
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp2363,
	movq	%rax, %rdi	# tmp2364,
	call	insert_regs	#
	testl	%eax, %eax	# D.22478
	je	.L1633	#,
	.loc 1 5906 0
	movq	-464(%rbp), %rax	# src_eqv, tmp2365
	movq	%rax, %rdi	# tmp2365,
	call	rehash_using_reg	#
	.loc 1 5907 0
	movq	-464(%rbp), %rax	# src_eqv, tmp2366
	movzwl	(%rax), %eax	# src_eqv_23->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1634	#,
	.loc 1 5907 0 is_stmt 0 discriminator 1
	movq	-464(%rbp), %rax	# src_eqv, tmp2367
	movl	8(%rax), %eax	# src_eqv_23->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1634	#,
	movq	-464(%rbp), %rax	# src_eqv, tmp2368
	movl	8(%rax), %edx	# src_eqv_23->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.873
	cmpl	%eax, %edx	# cached_regno.873, D.22477
	jne	.L1635	#,
	.loc 1 5907 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.874
	testq	%rax, %rax	# cached_cse_reg_info.874
	jne	.L1636	#,
.L1635:
	.loc 1 5907 0 discriminator 1
	movq	-464(%rbp), %rax	# src_eqv, tmp2369
	movl	8(%rax), %eax	# src_eqv_23->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1637	#
.L1636:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.872
.L1637:
	.loc 1 5907 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.872_183->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.871
	jmp	.L1638	#
.L1634:
	.loc 1 5907 0 discriminator 2
	movl	-536(%rbp), %edx	# eqvmode, tmp2370
	movq	-464(%rbp), %rax	# src_eqv, tmp2371
	movl	%edx, %esi	# tmp2370,
	movq	%rax, %rdi	# tmp2371,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.871
.L1638:
	.loc 1 5907 0 discriminator 3
	movl	%eax, -596(%rbp)	# iftmp.871, src_eqv_hash
.L1633:
	.loc 1 5909 0 is_stmt 1
	movl	-536(%rbp), %ecx	# eqvmode, tmp2372
	movl	-596(%rbp), %edx	# src_eqv_hash, tmp2373
	movq	-336(%rbp), %rsi	# classp, tmp2374
	movq	-464(%rbp), %rax	# src_eqv, tmp2375
	movq	%rax, %rdi	# tmp2375,
	call	insert	#
	movq	%rax, -112(%rbp)	# tmp2376, elt
	.loc 1 5910 0
	movl	-600(%rbp), %eax	# src_eqv_in_memory, tmp2377
	movl	%eax, %edx	# tmp2377, D.22480
	movq	-112(%rbp), %rax	# elt, tmp2378
	movb	%dl, 76(%rax)	# D.22480, elt_1267->in_memory
	.loc 1 5911 0
	movq	-112(%rbp), %rax	# elt, tmp2379
	movq	%rax, -456(%rbp)	# tmp2379, src_eqv_elt
	.loc 1 5916 0
	movl	$0, -612(%rbp)	#, i
	jmp	.L1639	#
.L1641:
	.loc 1 5917 0
	movl	-612(%rbp), %eax	# i, tmp2380
	movslq	%eax, %rdx	# tmp2380, D.22473
	movq	%rdx, %rax	# D.22473, tmp2381
	salq	$2, %rax	#, tmp2381
	addq	%rdx, %rax	# D.22473, tmp2381
	salq	$4, %rax	#, tmp2382
	movq	%rax, %rdx	# tmp2381, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2383
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1273->rtl, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1640	#,
	.loc 1 5917 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2384
	movslq	%eax, %rdx	# tmp2384, D.22473
	movq	%rdx, %rax	# D.22473, tmp2385
	salq	$2, %rax	#, tmp2385
	addq	%rdx, %rax	# D.22473, tmp2385
	salq	$4, %rax	#, tmp2386
	movq	%rax, %rdx	# tmp2385, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2387
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rax	# _1277->src_elt, D.22482
	testq	%rax, %rax	# D.22482
	jne	.L1640	#,
	.loc 1 5918 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2388
	movslq	%eax, %rdx	# tmp2388, D.22473
	movq	%rdx, %rax	# D.22473, tmp2389
	salq	$2, %rax	#, tmp2389
	addq	%rdx, %rax	# D.22473, tmp2389
	salq	$4, %rax	#, tmp2390
	movq	%rax, %rdx	# tmp2389, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2391
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1281->rtl, D.22471
	movq	16(%rax), %rax	# _1282->fld[1].rtx, D.22471
	movq	-464(%rbp), %rdx	# src_eqv, tmp2392
	movq	%rdx, %rsi	# tmp2392,
	movq	%rax, %rdi	# D.22471,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1640	#,
	.loc 1 5919 0
	movl	-612(%rbp), %eax	# i, tmp2393
	movslq	%eax, %rdx	# tmp2393, D.22473
	movq	%rdx, %rax	# D.22473, tmp2394
	salq	$2, %rax	#, tmp2394
	addq	%rdx, %rax	# D.22473, tmp2394
	salq	$4, %rax	#, tmp2395
	movq	%rax, %rdx	# tmp2394, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2396
	addq	%rax, %rdx	# tmp2396, D.22476
	movq	-456(%rbp), %rax	# src_eqv_elt, tmp2397
	movq	%rax, 16(%rdx)	# tmp2397, _1287->src_elt
.L1640:
	.loc 1 5916 0
	addl	$1, -612(%rbp)	#, i
.L1639:
	.loc 1 5916 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2398
	cmpl	-608(%rbp), %eax	# n_sets, tmp2398
	jl	.L1641	#,
.L1631:
.LBE117:
	.loc 1 5922 0 is_stmt 1
	movl	$0, -612(%rbp)	#, i
	jmp	.L1642	#
.L1657:
	.loc 1 5923 0
	movl	-612(%rbp), %eax	# i, tmp2399
	movslq	%eax, %rdx	# tmp2399, D.22473
	movq	%rdx, %rax	# D.22473, tmp2400
	salq	$2, %rax	#, tmp2400
	addq	%rdx, %rax	# D.22473, tmp2400
	salq	$4, %rax	#, tmp2401
	movq	%rax, %rdx	# tmp2400, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2402
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1292->rtl, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1643	#,
	.loc 1 5923 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2403
	movslq	%eax, %rdx	# tmp2403, D.22473
	movq	%rdx, %rax	# D.22473, tmp2404
	salq	$2, %rax	#, tmp2404
	addq	%rdx, %rax	# D.22473, tmp2404
	salq	$4, %rax	#, tmp2405
	movq	%rax, %rdx	# tmp2404, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2406
	addq	%rdx, %rax	# D.22473, D.22476
	movzbl	41(%rax), %eax	# _1296->src_volatile, D.22480
	testb	%al, %al	# D.22480
	jne	.L1643	#,
	.loc 1 5924 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2407
	movslq	%eax, %rdx	# tmp2407, D.22473
	movq	%rdx, %rax	# D.22473, tmp2408
	salq	$2, %rax	#, tmp2408
	addq	%rdx, %rax	# D.22473, tmp2408
	salq	$4, %rax	#, tmp2409
	movq	%rax, %rdx	# tmp2408, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2410
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1300->rtl, D.22471
	movq	8(%rax), %rcx	# _1301->fld[0].rtx, D.22471
	movl	-612(%rbp), %eax	# i, tmp2411
	movslq	%eax, %rdx	# tmp2411, D.22473
	movq	%rdx, %rax	# D.22473, tmp2412
	salq	$2, %rax	#, tmp2412
	addq	%rdx, %rax	# D.22473, tmp2412
	salq	$4, %rax	#, tmp2413
	movq	%rax, %rdx	# tmp2412, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2414
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1305->rtl, D.22471
	movq	16(%rax), %rax	# _1306->fld[1].rtx, D.22471
	movq	%rcx, %rsi	# D.22471,
	movq	%rax, %rdi	# D.22471,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	jne	.L1643	#,
	.loc 1 5926 0
	movl	-612(%rbp), %eax	# i, tmp2415
	movslq	%eax, %rdx	# tmp2415, D.22473
	movq	%rdx, %rax	# D.22473, tmp2416
	salq	$2, %rax	#, tmp2416
	addq	%rdx, %rax	# D.22473, tmp2416
	salq	$4, %rax	#, tmp2417
	movq	%rax, %rdx	# tmp2416, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2418
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1311->rtl, D.22471
	movq	8(%rax), %rax	# _1312->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _1313->code, D.22470
	cmpw	$64, %ax	#, D.22470
	jne	.L1644	#,
	.loc 1 5933 0
	movl	-612(%rbp), %eax	# i, tmp2419
	movslq	%eax, %rdx	# tmp2419, D.22473
	movq	%rdx, %rax	# D.22473, tmp2420
	salq	$2, %rax	#, tmp2420
	addq	%rdx, %rax	# D.22473, tmp2420
	salq	$4, %rax	#, tmp2421
	movq	%rax, %rdx	# tmp2420, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2422
	addq	%rax, %rdx	# tmp2422, D.22476
	movq	-456(%rbp), %rax	# src_eqv_elt, tmp2423
	movq	%rax, 16(%rdx)	# tmp2423, _1317->src_elt
	.loc 1 5934 0
	movl	-612(%rbp), %eax	# i, tmp2424
	movslq	%eax, %rdx	# tmp2424, D.22473
	movq	%rdx, %rax	# D.22473, tmp2425
	salq	$2, %rax	#, tmp2425
	addq	%rdx, %rax	# D.22473, tmp2425
	salq	$4, %rax	#, tmp2426
	movq	%rax, %rdx	# tmp2425, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2427
	addq	%rax, %rdx	# tmp2427, D.22476
	movl	-596(%rbp), %eax	# src_eqv_hash, tmp2428
	movl	%eax, 24(%rdx)	# tmp2428, _1320->src_hash
	jmp	.L1645	#
.L1644:
.LBB118:
	.loc 1 5940 0
	movq	-456(%rbp), %rax	# src_eqv_elt, tmp2429
	movq	%rax, -328(%rbp)	# tmp2429, classp
	.loc 1 5941 0
	movl	-612(%rbp), %eax	# i, tmp2430
	movslq	%eax, %rdx	# tmp2430, D.22473
	movq	%rdx, %rax	# D.22473, tmp2431
	salq	$2, %rax	#, tmp2431
	addq	%rdx, %rax	# D.22473, tmp2431
	salq	$4, %rax	#, tmp2432
	movq	%rax, %rdx	# tmp2431, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2433
	addq	%rdx, %rax	# D.22473, D.22476
	movq	8(%rax), %rax	# _1324->src, tmp2434
	movq	%rax, -104(%rbp)	# tmp2434, src
	.loc 1 5942 0
	movl	-612(%rbp), %eax	# i, tmp2435
	movslq	%eax, %rdx	# tmp2435, D.22473
	movq	%rdx, %rax	# D.22473, tmp2436
	salq	$2, %rax	#, tmp2436
	addq	%rdx, %rax	# D.22473, tmp2436
	salq	$4, %rax	#, tmp2437
	movq	%rax, %rdx	# tmp2436, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2438
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1328->rtl, D.22471
	movq	8(%rax), %rax	# _1329->fld[0].rtx, tmp2439
	movq	%rax, -96(%rbp)	# tmp2439, dest
	.loc 1 5944 0
	movq	-104(%rbp), %rax	# src, tmp2440
	movzbl	2(%rax), %eax	# src_1325->mode, D.22474
	testb	%al, %al	# D.22474
	jne	.L1646	#,
	.loc 1 5944 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# dest, tmp2441
	movzbl	2(%rax), %eax	# dest_1330->mode, D.22474
	movzbl	%al, %eax	# D.22474, iftmp.875
	jmp	.L1647	#
.L1646:
	.loc 1 5944 0 discriminator 2
	movq	-104(%rbp), %rax	# src, tmp2442
	movzbl	2(%rax), %eax	# src_1325->mode, D.22474
	movzbl	%al, %eax	# D.22474, iftmp.875
.L1647:
	.loc 1 5943 0 is_stmt 1
	movl	%eax, -492(%rbp)	# iftmp.875, mode
	.loc 1 5946 0
	movl	-612(%rbp), %eax	# i, tmp2443
	movslq	%eax, %rdx	# tmp2443, D.22473
	movq	%rdx, %rax	# D.22473, tmp2444
	salq	$2, %rax	#, tmp2444
	addq	%rdx, %rax	# D.22473, tmp2444
	salq	$4, %rax	#, tmp2445
	movq	%rax, %rdx	# tmp2444, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2446
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rax	# _1339->src_elt, D.22482
	testq	%rax, %rax	# D.22482
	jne	.L1648	#,
	.loc 1 5951 0
	movq	-632(%rbp), %rax	# insn, tmp2447
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp2447,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22471
	jne	.L1649	#,
.LBB119:
	.loc 1 5958 0
	movq	-328(%rbp), %rcx	# classp, tmp2448
	movq	-104(%rbp), %rax	# src, tmp2449
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp2448,
	movq	%rax, %rdi	# tmp2449,
	call	insert_regs	#
	testl	%eax, %eax	# D.22478
	je	.L1650	#,
	.loc 1 5960 0
	movq	-104(%rbp), %rax	# src, tmp2450
	movq	%rax, %rdi	# tmp2450,
	call	rehash_using_reg	#
	.loc 1 5961 0
	movl	-612(%rbp), %eax	# i, tmp2451
	movslq	%eax, %rdx	# tmp2451, D.22473
	movq	%rdx, %rax	# D.22473, tmp2452
	salq	$2, %rax	#, tmp2452
	addq	%rdx, %rax	# D.22473, tmp2452
	salq	$4, %rax	#, tmp2453
	movq	%rax, %rdx	# tmp2452, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2454
	leaq	(%rdx,%rax), %rbx	#, D.22476
	movq	-104(%rbp), %rax	# src, tmp2455
	movzwl	(%rax), %eax	# src_1325->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1651	#,
	.loc 1 5961 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# src, tmp2456
	movl	8(%rax), %eax	# src_1325->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1651	#,
	movq	-104(%rbp), %rax	# src, tmp2457
	movl	8(%rax), %edx	# src_1325->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.878
	cmpl	%eax, %edx	# cached_regno.878, D.22477
	jne	.L1652	#,
	.loc 1 5961 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.879
	testq	%rax, %rax	# cached_cse_reg_info.879
	jne	.L1653	#,
.L1652:
	.loc 1 5961 0 discriminator 1
	movq	-104(%rbp), %rax	# src, tmp2458
	movl	8(%rax), %eax	# src_1325->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1654	#
.L1653:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.877
.L1654:
	.loc 1 5961 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.877_186->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.876
	jmp	.L1655	#
.L1651:
	.loc 1 5961 0 discriminator 2
	movl	-492(%rbp), %edx	# mode, tmp2459
	movq	-104(%rbp), %rax	# src, tmp2460
	movl	%edx, %esi	# tmp2459,
	movq	%rax, %rdi	# tmp2460,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.876
.L1655:
	.loc 1 5961 0 discriminator 3
	movl	%eax, 24(%rbx)	# iftmp.876, _1345->src_hash
.L1650:
	.loc 1 5963 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2461
	movslq	%eax, %rdx	# tmp2461, D.22473
	movq	%rdx, %rax	# D.22473, tmp2462
	salq	$2, %rax	#, tmp2462
	addq	%rdx, %rax	# D.22473, tmp2462
	salq	$4, %rax	#, tmp2463
	movq	%rax, %rdx	# tmp2462, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2464
	addq	%rdx, %rax	# D.22473, D.22476
	movl	24(%rax), %edx	# _1361->src_hash, D.22477
	movl	-492(%rbp), %ecx	# mode, tmp2465
	movq	-328(%rbp), %rsi	# classp, tmp2466
	movq	-104(%rbp), %rax	# src, tmp2467
	movq	%rax, %rdi	# tmp2467,
	call	insert	#
	movq	%rax, -88(%rbp)	# tmp2468, elt
	.loc 1 5964 0
	movl	-612(%rbp), %eax	# i, tmp2469
	movslq	%eax, %rdx	# tmp2469, D.22473
	movq	%rdx, %rax	# D.22473, tmp2470
	salq	$2, %rax	#, tmp2470
	addq	%rdx, %rax	# D.22473, tmp2470
	salq	$4, %rax	#, tmp2471
	movq	%rax, %rdx	# tmp2470, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2472
	addq	%rdx, %rax	# D.22473, D.22476
	movzbl	40(%rax), %edx	# _1366->src_in_memory, D.22480
	movq	-88(%rbp), %rax	# elt, tmp2473
	movb	%dl, 76(%rax)	# D.22480, elt_1363->in_memory
	.loc 1 5965 0
	movl	-612(%rbp), %eax	# i, tmp2474
	movslq	%eax, %rdx	# tmp2474, D.22473
	movq	%rdx, %rax	# D.22473, tmp2475
	salq	$2, %rax	#, tmp2475
	addq	%rdx, %rax	# D.22473, tmp2475
	salq	$4, %rax	#, tmp2476
	movq	%rax, %rdx	# tmp2475, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2477
	addq	%rax, %rdx	# tmp2477, D.22476
	movq	-88(%rbp), %rax	# elt, tmp2478
	movq	%rax, -328(%rbp)	# tmp2478, classp
	movq	-328(%rbp), %rax	# classp, tmp2479
	movq	%rax, 16(%rdx)	# tmp2479, _1370->src_elt
.LBE119:
	jmp	.L1648	#
.L1649:
	.loc 1 5968 0
	movl	-612(%rbp), %eax	# i, tmp2480
	movslq	%eax, %rdx	# tmp2480, D.22473
	movq	%rdx, %rax	# D.22473, tmp2481
	salq	$2, %rax	#, tmp2481
	addq	%rdx, %rax	# D.22473, tmp2481
	salq	$4, %rax	#, tmp2482
	movq	%rax, %rdx	# tmp2481, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2483
	addq	%rax, %rdx	# tmp2483, D.22476
	movq	-328(%rbp), %rax	# classp, tmp2484
	movq	%rax, 16(%rdx)	# tmp2484, _1374->src_elt
.L1648:
	.loc 1 5970 0
	movl	-612(%rbp), %eax	# i, tmp2485
	movslq	%eax, %rdx	# tmp2485, D.22473
	movq	%rdx, %rax	# D.22473, tmp2486
	salq	$2, %rax	#, tmp2486
	addq	%rdx, %rax	# D.22473, tmp2486
	salq	$4, %rax	#, tmp2487
	movq	%rax, %rdx	# tmp2486, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2488
	addq	%rdx, %rax	# D.22473, D.22476
	movq	48(%rax), %rax	# _1377->src_const, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1645	#,
	.loc 1 5970 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2489
	movslq	%eax, %rdx	# tmp2489, D.22473
	movq	%rdx, %rax	# D.22473, tmp2490
	salq	$2, %rax	#, tmp2490
	addq	%rdx, %rax	# D.22473, tmp2490
	salq	$4, %rax	#, tmp2491
	movq	%rax, %rdx	# tmp2490, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2492
	addq	%rdx, %rax	# D.22473, D.22476
	movq	72(%rax), %rax	# _1381->src_const_elt, D.22482
	testq	%rax, %rax	# D.22482
	jne	.L1645	#,
	.loc 1 5971 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2493
	movslq	%eax, %rdx	# tmp2493, D.22473
	movq	%rdx, %rax	# D.22473, tmp2494
	salq	$2, %rax	#, tmp2494
	addq	%rdx, %rax	# D.22473, tmp2494
	salq	$4, %rax	#, tmp2495
	movq	%rax, %rdx	# tmp2494, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2496
	addq	%rdx, %rax	# D.22473, D.22476
	movq	48(%rax), %rax	# _1385->src_const, D.22471
	cmpq	-104(%rbp), %rax	# src, D.22471
	je	.L1645	#,
	.loc 1 5972 0
	movl	-612(%rbp), %eax	# i, tmp2497
	movslq	%eax, %rdx	# tmp2497, D.22473
	movq	%rdx, %rax	# D.22473, tmp2498
	salq	$2, %rax	#, tmp2498
	addq	%rdx, %rax	# D.22473, tmp2498
	salq	$4, %rax	#, tmp2499
	movq	%rax, %rdx	# tmp2498, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2500
	addq	%rdx, %rax	# D.22473, D.22476
	movq	48(%rax), %rax	# _1389->src_const, D.22471
	movq	-104(%rbp), %rdx	# src, tmp2501
	movq	%rdx, %rsi	# tmp2501,
	movq	%rax, %rdi	# D.22471,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	jne	.L1645	#,
	.loc 1 5973 0
	movl	-612(%rbp), %eax	# i, tmp2502
	movslq	%eax, %rdx	# tmp2502, D.22473
	movq	%rdx, %rax	# D.22473, tmp2503
	salq	$2, %rax	#, tmp2503
	addq	%rdx, %rax	# D.22473, tmp2503
	salq	$4, %rax	#, tmp2504
	movq	%rax, %rdx	# tmp2503, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2505
	leaq	(%rdx,%rax), %rbx	#, D.22476
	.loc 1 5974 0
	movl	-612(%rbp), %eax	# i, tmp2506
	movslq	%eax, %rdx	# tmp2506, D.22473
	movq	%rdx, %rax	# D.22473, tmp2507
	salq	$2, %rax	#, tmp2507
	addq	%rdx, %rax	# D.22473, tmp2507
	salq	$4, %rax	#, tmp2508
	movq	%rax, %rdx	# tmp2507, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2509
	addq	%rdx, %rax	# D.22473, D.22476
	.loc 1 5973 0
	movl	64(%rax), %edi	# _1397->src_const_hash, D.22477
	movl	-612(%rbp), %eax	# i, tmp2510
	movslq	%eax, %rdx	# tmp2510, D.22473
	movq	%rdx, %rax	# D.22473, tmp2511
	salq	$2, %rax	#, tmp2511
	addq	%rdx, %rax	# D.22473, tmp2511
	salq	$4, %rax	#, tmp2512
	movq	%rax, %rdx	# tmp2511, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2513
	addq	%rdx, %rax	# D.22473, D.22476
	movq	48(%rax), %rax	# _1401->src_const, D.22471
	movl	-492(%rbp), %edx	# mode, tmp2514
	movq	-328(%rbp), %rsi	# classp, tmp2515
	movl	%edx, %ecx	# tmp2514,
	movl	%edi, %edx	# D.22477,
	movq	%rax, %rdi	# D.22471,
	call	insert	#
	movq	%rax, 16(%rbx)	# D.22482, _1394->src_elt
.LBE118:
	.loc 1 5926 0
	jmp	.L1656	#
.L1645:
	jmp	.L1656	#
.L1643:
	.loc 1 5977 0
	movl	-612(%rbp), %eax	# i, tmp2516
	movslq	%eax, %rdx	# tmp2516, D.22473
	movq	%rdx, %rax	# D.22473, tmp2517
	salq	$2, %rax	#, tmp2517
	addq	%rdx, %rax	# D.22473, tmp2517
	salq	$4, %rax	#, tmp2518
	movq	%rax, %rdx	# tmp2517, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2519
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rax	# _1406->src_elt, D.22482
	testq	%rax, %rax	# D.22482
	jne	.L1656	#,
	.loc 1 5981 0
	movl	-612(%rbp), %eax	# i, tmp2520
	movslq	%eax, %rdx	# tmp2520, D.22473
	movq	%rdx, %rax	# D.22473, tmp2521
	salq	$2, %rax	#, tmp2521
	addq	%rdx, %rax	# D.22473, tmp2521
	salq	$4, %rax	#, tmp2522
	movq	%rax, %rdx	# tmp2521, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2523
	addq	%rax, %rdx	# tmp2523, D.22476
	movq	-456(%rbp), %rax	# src_eqv_elt, tmp2524
	movq	%rax, 16(%rdx)	# tmp2524, _1410->src_elt
.L1656:
	.loc 1 5922 0
	addl	$1, -612(%rbp)	#, i
.L1642:
	.loc 1 5922 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2525
	cmpl	-608(%rbp), %eax	# n_sets, tmp2525
	jl	.L1657	#,
	.loc 1 5983 0 is_stmt 1
	movq	-264(%rbp), %rax	# x, tmp2526
	movq	%rax, %rdi	# tmp2526,
	call	invalidate_from_clobbers	#
	.loc 1 5988 0
	movq	-632(%rbp), %rax	# insn, tmp2527
	movzwl	(%rax), %eax	# insn_3->code, D.22470
	cmpw	$34, %ax	#, D.22470
	jne	.L1658	#,
	.loc 1 5990 0
	movq	-632(%rbp), %rax	# insn, tmp2528
	movzbl	3(%rax), %eax	# *insn_3, D.22474
	andl	$4, %eax	#, D.22474
	testb	%al, %al	# D.22474
	jne	.L1659	#,
	.loc 1 5991 0
	call	invalidate_memory	#
.L1659:
	.loc 1 5992 0
	call	invalidate_for_call	#
.L1658:
	.loc 1 6000 0
	movl	$0, -612(%rbp)	#, i
	jmp	.L1660	#
.L1668:
	.loc 1 6001 0
	movl	-612(%rbp), %eax	# i, tmp2529
	movslq	%eax, %rdx	# tmp2529, D.22473
	movq	%rdx, %rax	# D.22473, tmp2530
	salq	$2, %rax	#, tmp2530
	addq	%rdx, %rax	# D.22473, tmp2530
	salq	$4, %rax	#, tmp2531
	movq	%rax, %rdx	# tmp2530, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2532
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1418->rtl, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1661	#,
.LBB120:
	.loc 1 6005 0
	movl	-612(%rbp), %eax	# i, tmp2533
	movslq	%eax, %rdx	# tmp2533, D.22473
	movq	%rdx, %rax	# D.22473, tmp2534
	salq	$2, %rax	#, tmp2534
	addq	%rdx, %rax	# D.22473, tmp2534
	salq	$4, %rax	#, tmp2535
	movq	%rax, %rdx	# tmp2534, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2536
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1422->rtl, D.22471
	movq	8(%rax), %rax	# _1423->fld[0].rtx, tmp2537
	movq	%rax, -80(%rbp)	# tmp2537, dest
	.loc 1 6011 0
	movq	-80(%rbp), %rax	# dest, tmp2538
	movzwl	(%rax), %eax	# dest_1424->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1662	#,
	.loc 1 6011 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# dest, tmp2539
	movzwl	(%rax), %eax	# dest_1424->code, D.22470
	cmpw	$63, %ax	#, D.22470
	jne	.L1663	#,
.L1662:
	.loc 1 6012 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp2540
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp2540,
	call	invalidate	#
	jmp	.L1661	#
.L1663:
	.loc 1 6013 0
	movq	-80(%rbp), %rax	# dest, tmp2541
	movzwl	(%rax), %eax	# dest_1424->code, D.22470
	cmpw	$66, %ax	#, D.22470
	jne	.L1664	#,
	.loc 1 6017 0
	cmpq	$0, -640(%rbp)	#, libcall_insn
	je	.L1665	#,
	.loc 1 6017 0 is_stmt 0 discriminator 1
	movq	-632(%rbp), %rax	# insn, tmp2542
	cmpq	-640(%rbp), %rax	# libcall_insn, tmp2542
	jne	.L1661	#,
.L1665:
	.loc 1 6018 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp2543
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp2543,
	call	invalidate	#
	jmp	.L1661	#
.L1664:
	.loc 1 6020 0
	movq	-80(%rbp), %rax	# dest, tmp2544
	movzwl	(%rax), %eax	# dest_1424->code, D.22470
	cmpw	$64, %ax	#, D.22470
	je	.L1667	#,
	.loc 1 6021 0
	movq	-80(%rbp), %rax	# dest, tmp2545
	movzwl	(%rax), %eax	# dest_1424->code, D.22470
	cmpw	$133, %ax	#, D.22470
	jne	.L1661	#,
.L1667:
	.loc 1 6022 0
	movq	-80(%rbp), %rax	# dest, tmp2546
	movzbl	2(%rax), %eax	# dest_1424->mode, D.22474
	movzbl	%al, %edx	# D.22474, D.22475
	movq	-80(%rbp), %rax	# dest, tmp2547
	movq	8(%rax), %rax	# dest_1424->fld[0].rtx, D.22471
	movl	%edx, %esi	# D.22475,
	movq	%rax, %rdi	# D.22471,
	call	invalidate	#
.L1661:
.LBE120:
	.loc 1 6000 0
	addl	$1, -612(%rbp)	#, i
.L1660:
	.loc 1 6000 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2548
	cmpl	-608(%rbp), %eax	# n_sets, tmp2548
	jl	.L1668	#,
	.loc 1 6026 0 is_stmt 1
	movq	-632(%rbp), %rax	# insn, tmp2549
	movzwl	(%rax), %eax	# insn_3->code, D.22470
	cmpw	$32, %ax	#, D.22470
	jne	.L1669	#,
	.loc 1 6027 0
	movq	-632(%rbp), %rax	# insn, tmp2550
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.22471
	movzwl	(%rax), %eax	# _1435->code, D.22470
	cmpw	$41, %ax	#, D.22470
	jne	.L1669	#,
	.loc 1 6028 0
	movq	-632(%rbp), %rax	# insn, tmp2551
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.22471
	movzbl	3(%rax), %eax	# *_1437, D.22474
	andl	$8, %eax	#, D.22474
	testb	%al, %al	# D.22474
	je	.L1669	#,
	.loc 1 6029 0
	call	flush_hash_table	#
.L1669:
	.loc 1 6039 0
	movl	$0, -612(%rbp)	#, i
	jmp	.L1670	#
.L1705:
	.loc 1 6041 0
	movl	-612(%rbp), %eax	# i, tmp2552
	movslq	%eax, %rdx	# tmp2552, D.22473
	movq	%rdx, %rax	# D.22473, tmp2553
	salq	$2, %rax	#, tmp2553
	addq	%rdx, %rax	# D.22473, tmp2553
	salq	$4, %rax	#, tmp2554
	movq	%rax, %rdx	# tmp2553, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2555
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1443->rtl, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1671	#,
.LBB121:
	.loc 1 6043 0
	movl	-612(%rbp), %eax	# i, tmp2556
	movslq	%eax, %rdx	# tmp2556, D.22473
	movq	%rdx, %rax	# D.22473, tmp2557
	salq	$2, %rax	#, tmp2557
	addq	%rdx, %rax	# D.22473, tmp2557
	salq	$4, %rax	#, tmp2558
	movq	%rax, %rdx	# tmp2557, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2559
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1447->rtl, D.22471
	movq	8(%rax), %rax	# _1448->fld[0].rtx, tmp2560
	movq	%rax, -72(%rbp)	# tmp2560, x
	.loc 1 6045 0
	movq	-72(%rbp), %rax	# x, tmp2561
	movzwl	(%rax), %eax	# x_1449->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1672	#,
	.loc 1 6046 0
	movq	-72(%rbp), %rax	# x, tmp2562
	movq	%rax, %rdi	# tmp2562,
	call	mention_regs	#
	jmp	.L1671	#
.L1672:
.LBB122:
	.loc 1 6061 0
	movq	-72(%rbp), %rax	# x, tmp2563
	movl	8(%rax), %eax	# x_1449->fld[0].rtuint, tmp2564
	movl	%eax, -488(%rbp)	# tmp2564, regno
	.loc 1 6063 0
	cmpl	$52, -488(%rbp)	#, regno
	ja	.L1673	#,
	.loc 1 6063 0 is_stmt 0 discriminator 1
	cmpl	$7, -488(%rbp)	#, regno
	jbe	.L1674	#,
	.loc 1 6064 0 is_stmt 1
	cmpl	$15, -488(%rbp)	#, regno
	jbe	.L1675	#,
.L1674:
	.loc 1 6064 0 is_stmt 0 discriminator 2
	cmpl	$20, -488(%rbp)	#, regno
	jbe	.L1676	#,
	.loc 1 6064 0 discriminator 1
	cmpl	$28, -488(%rbp)	#, regno
	jbe	.L1675	#,
.L1676:
	.loc 1 6064 0 discriminator 2
	cmpl	$44, -488(%rbp)	#, regno
	jbe	.L1677	#,
	.loc 1 6064 0 discriminator 1
	cmpl	$52, -488(%rbp)	#, regno
	jbe	.L1675	#,
.L1677:
	.loc 1 6064 0 discriminator 2
	cmpl	$28, -488(%rbp)	#, regno
	jbe	.L1678	#,
	.loc 1 6064 0 discriminator 1
	cmpl	$36, -488(%rbp)	#, regno
	ja	.L1678	#,
.L1675:
	movq	-72(%rbp), %rax	# x, tmp2565
	movzbl	2(%rax), %eax	# x_1449->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22483
	.loc 1 6063 0 is_stmt 1 discriminator 1
	cmpl	$5, %eax	#, D.22483
	je	.L1679	#,
	.loc 1 6064 0
	movq	-72(%rbp), %rax	# x, tmp2567
	movzbl	2(%rax), %eax	# x_1449->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22483
	cmpl	$6, %eax	#, D.22483
	jne	.L1680	#,
.L1679:
	.loc 1 6063 0 discriminator 3
	movl	$2, %eax	#, iftmp.882
	jmp	.L1682	#
.L1680:
	.loc 1 6063 0 is_stmt 0
	movl	$1, %eax	#, iftmp.882
	jmp	.L1682	#
.L1678:
	.loc 1 6064 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp2569
	movzbl	2(%rax), %eax	# x_1449->mode, D.22474
	.loc 1 6063 0 discriminator 2
	cmpb	$18, %al	#, D.22474
	jne	.L1683	#,
	.loc 1 6064 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.885
	andl	$33554432, %eax	#, D.22478
	.loc 1 6063 0 discriminator 6
	testl	%eax, %eax	# D.22478
	je	.L1684	#,
	.loc 1 6063 0 is_stmt 0 discriminator 8
	movl	$2, %eax	#, iftmp.884
	jmp	.L1695	#
.L1684:
	.loc 1 6063 0 discriminator 9
	movl	$3, %eax	#, iftmp.884
	jmp	.L1695	#
.L1683:
	.loc 1 6064 0 is_stmt 1 discriminator 7
	movq	-72(%rbp), %rax	# x, tmp2570
	movzbl	2(%rax), %eax	# x_1449->mode, D.22474
	.loc 1 6063 0 discriminator 7
	cmpb	$24, %al	#, D.22474
	jne	.L1687	#,
	.loc 1 6064 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.888
	andl	$33554432, %eax	#, D.22478
	.loc 1 6063 0 discriminator 10
	testl	%eax, %eax	# D.22478
	je	.L1688	#,
	.loc 1 6063 0 is_stmt 0 discriminator 11
	movl	$4, %eax	#, iftmp.887
	jmp	.L1695	#
.L1688:
	.loc 1 6063 0 discriminator 12
	movl	$6, %eax	#, iftmp.887
	jmp	.L1695	#
.L1687:
	.loc 1 6064 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp2571
	movzbl	2(%rax), %eax	# x_1449->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	movzbl	%al, %edx	# D.22474, D.22478
	movl	target_flags(%rip), %eax	# target_flags, target_flags.890
	andl	$33554432, %eax	#, D.22478
	testl	%eax, %eax	# D.22478
	je	.L1691	#,
	.loc 1 6064 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.889
	jmp	.L1692	#
.L1691:
	.loc 1 6064 0 discriminator 2
	movl	$4, %eax	#, iftmp.889
.L1692:
	.loc 1 6064 0 discriminator 3
	addl	%edx, %eax	# D.22478, D.22478
	subl	$1, %eax	#, D.22478
	movl	target_flags(%rip), %edx	# target_flags, target_flags.892
	andl	$33554432, %edx	#, D.22478
	testl	%edx, %edx	# D.22478
	je	.L1693	#,
	.loc 1 6064 0 discriminator 1
	movl	$8, %ebx	#, iftmp.891
	jmp	.L1694	#
.L1693:
	.loc 1 6064 0 discriminator 2
	movl	$4, %ebx	#, iftmp.891
.L1694:
	.loc 1 6064 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.891
.L1682:
	jmp	.L1695	#
.L1673:
	.loc 1 6063 0 is_stmt 1 discriminator 2
	movl	$1, %eax	#, iftmp.880
.L1695:
	.loc 1 6062 0
	movl	-488(%rbp), %edx	# regno, tmp2578
	addl	%edx, %eax	# tmp2578, tmp2577
	movl	%eax, -484(%rbp)	# tmp2577, endregno
	.loc 1 6067 0
	movl	-488(%rbp), %eax	# regno, tmp2579
	movl	%eax, -532(%rbp)	# tmp2579, i
	jmp	.L1696	#
.L1704:
	.loc 1 6069 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.894
	cmpl	%eax, -532(%rbp)	# cached_regno.894, i
	jne	.L1697	#,
	.loc 1 6069 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.895
	testq	%rax, %rax	# cached_cse_reg_info.895
	jne	.L1698	#,
.L1697:
	.loc 1 6069 0 discriminator 1
	movl	-532(%rbp), %eax	# i, tmp2580
	movl	%eax, %edi	# tmp2580,
	call	get_cse_reg_info	#
	jmp	.L1699	#
.L1698:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.893
.L1699:
	.loc 1 6069 0 discriminator 3
	movl	28(%rax), %eax	# iftmp.893_196->reg_in_table, D.22478
	testl	%eax, %eax	# D.22478
	js	.L1700	#,
	.loc 1 6071 0 is_stmt 1
	movl	-532(%rbp), %eax	# i, tmp2581
	movl	%eax, %edi	# tmp2581,
	call	remove_invalid_refs	#
	.loc 1 6072 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.897
	cmpl	%eax, -532(%rbp)	# cached_regno.897, i
	jne	.L1701	#,
	.loc 1 6072 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.898
	testq	%rax, %rax	# cached_cse_reg_info.898
	jne	.L1702	#,
.L1701:
	.loc 1 6072 0 discriminator 1
	movl	-532(%rbp), %eax	# i, tmp2582
	movl	%eax, %edi	# tmp2582,
	call	get_cse_reg_info	#
	jmp	.L1703	#
.L1702:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.896
.L1703:
	.loc 1 6072 0 discriminator 3
	movl	$-1, 28(%rax)	#, iftmp.896_197->reg_in_table
.L1700:
	.loc 1 6067 0 is_stmt 1
	addl	$1, -532(%rbp)	#, i
.L1696:
	.loc 1 6067 0 is_stmt 0 discriminator 1
	movl	-532(%rbp), %eax	# i, tmp2583
	cmpl	-484(%rbp), %eax	# endregno, tmp2583
	jb	.L1704	#,
.L1671:
.LBE122:
.LBE121:
	.loc 1 6039 0 is_stmt 1
	addl	$1, -612(%rbp)	#, i
.L1670:
	.loc 1 6039 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2584
	cmpl	-608(%rbp), %eax	# n_sets, tmp2584
	jl	.L1705	#,
	.loc 1 6082 0 is_stmt 1
	movl	$0, -612(%rbp)	#, i
	jmp	.L1706	#
.L1716:
	.loc 1 6083 0
	movl	-612(%rbp), %eax	# i, tmp2585
	movslq	%eax, %rdx	# tmp2585, D.22473
	movq	%rdx, %rax	# D.22473, tmp2586
	salq	$2, %rax	#, tmp2586
	addq	%rdx, %rax	# D.22473, tmp2586
	salq	$4, %rax	#, tmp2587
	movq	%rax, %rdx	# tmp2586, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2588
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1509->rtl, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1707	#,
	.loc 1 6085 0
	movl	-612(%rbp), %eax	# i, tmp2589
	movslq	%eax, %rdx	# tmp2589, D.22473
	movq	%rdx, %rax	# D.22473, tmp2590
	salq	$2, %rax	#, tmp2590
	addq	%rdx, %rax	# D.22473, tmp2590
	salq	$4, %rax	#, tmp2591
	movq	%rax, %rdx	# tmp2590, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2592
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rax	# _1513->src_elt, D.22482
	testq	%rax, %rax	# D.22482
	je	.L1707	#,
	.loc 1 6085 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2593
	movslq	%eax, %rdx	# tmp2593, D.22473
	movq	%rdx, %rax	# D.22473, tmp2594
	salq	$2, %rax	#, tmp2594
	addq	%rdx, %rax	# D.22473, tmp2594
	salq	$4, %rax	#, tmp2595
	movq	%rax, %rdx	# tmp2594, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2596
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rax	# _1517->src_elt, D.22482
	movq	48(%rax), %rax	# _1518->first_same_value, D.22482
	testq	%rax, %rax	# D.22482
	jne	.L1707	#,
.LBB123:
	.loc 1 6089 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2597
	movslq	%eax, %rdx	# tmp2597, D.22473
	movq	%rdx, %rax	# D.22473, tmp2598
	salq	$2, %rax	#, tmp2598
	addq	%rdx, %rax	# D.22473, tmp2598
	salq	$4, %rax	#, tmp2599
	movq	%rax, %rdx	# tmp2598, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2600
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rax	# _1522->src_elt, tmp2601
	movq	%rax, -320(%rbp)	# tmp2601, elt
	.loc 1 6091 0
	jmp	.L1708	#
.L1710:
	.loc 1 6092 0
	movq	-320(%rbp), %rax	# elt, tmp2602
	movq	40(%rax), %rax	# elt_130->prev_same_value, tmp2603
	movq	%rax, -320(%rbp)	# tmp2603, elt
.L1708:
	.loc 1 6091 0 discriminator 1
	cmpq	$0, -320(%rbp)	#, elt
	je	.L1709	#,
	.loc 1 6091 0 is_stmt 0 discriminator 2
	movq	-320(%rbp), %rax	# elt, tmp2604
	movq	40(%rax), %rax	# elt_130->prev_same_value, D.22482
	testq	%rax, %rax	# D.22482
	jne	.L1710	#,
.L1709:
	.loc 1 6094 0 is_stmt 1
	jmp	.L1711	#
.L1713:
	.loc 1 6095 0
	movq	-320(%rbp), %rax	# elt, tmp2605
	movq	32(%rax), %rax	# elt_131->next_same_value, tmp2606
	movq	%rax, -320(%rbp)	# tmp2606, elt
.L1711:
	.loc 1 6094 0 discriminator 1
	cmpq	$0, -320(%rbp)	#, elt
	je	.L1712	#,
	.loc 1 6094 0 is_stmt 0 discriminator 2
	movq	-320(%rbp), %rax	# elt, tmp2607
	movq	48(%rax), %rax	# elt_131->first_same_value, D.22482
	testq	%rax, %rax	# D.22482
	je	.L1713	#,
.L1712:
	.loc 1 6096 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2608
	movslq	%eax, %rdx	# tmp2608, D.22473
	movq	%rdx, %rax	# D.22473, tmp2609
	salq	$2, %rax	#, tmp2609
	addq	%rdx, %rax	# D.22473, tmp2609
	salq	$4, %rax	#, tmp2610
	movq	%rax, %rdx	# tmp2609, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2611
	addq	%rax, %rdx	# tmp2611, D.22476
	cmpq	$0, -320(%rbp)	#, elt
	je	.L1714	#,
	.loc 1 6096 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rax	# elt, tmp2612
	movq	48(%rax), %rax	# elt_131->first_same_value, iftmp.899
	jmp	.L1715	#
.L1714:
	.loc 1 6096 0 discriminator 2
	movl	$0, %eax	#, iftmp.899
.L1715:
	.loc 1 6096 0 discriminator 3
	movq	%rax, 16(%rdx)	# iftmp.899, _1530->src_elt
.L1707:
.LBE123:
	.loc 1 6082 0 is_stmt 1
	addl	$1, -612(%rbp)	#, i
.L1706:
	.loc 1 6082 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2613
	cmpl	-608(%rbp), %eax	# n_sets, tmp2613
	jl	.L1716	#,
	.loc 1 6102 0 is_stmt 1
	movl	$0, -612(%rbp)	#, i
	jmp	.L1717	#
.L1762:
	.loc 1 6103 0
	movl	-612(%rbp), %eax	# i, tmp2614
	movslq	%eax, %rdx	# tmp2614, D.22473
	movq	%rdx, %rax	# D.22473, tmp2615
	salq	$2, %rax	#, tmp2615
	addq	%rdx, %rax	# D.22473, tmp2615
	salq	$4, %rax	#, tmp2616
	movq	%rax, %rdx	# tmp2615, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2617
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1537->rtl, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1718	#,
.LBB124:
	.loc 1 6105 0
	movl	-612(%rbp), %eax	# i, tmp2618
	movslq	%eax, %rdx	# tmp2618, D.22473
	movq	%rdx, %rax	# D.22473, tmp2619
	salq	$2, %rax	#, tmp2619
	addq	%rdx, %rax	# D.22473, tmp2619
	salq	$4, %rax	#, tmp2620
	movq	%rax, %rdx	# tmp2619, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2621
	addq	%rdx, %rax	# D.22473, D.22476
	movq	(%rax), %rax	# _1541->rtl, D.22471
	movq	8(%rax), %rax	# _1542->fld[0].rtx, tmp2622
	movq	%rax, -312(%rbp)	# tmp2622, dest
	.loc 1 6106 0
	movl	-612(%rbp), %eax	# i, tmp2623
	movslq	%eax, %rdx	# tmp2623, D.22473
	movq	%rdx, %rax	# D.22473, tmp2624
	salq	$2, %rax	#, tmp2624
	addq	%rdx, %rax	# D.22473, tmp2624
	salq	$4, %rax	#, tmp2625
	movq	%rax, %rdx	# tmp2624, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2626
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1546->inner_dest, tmp2627
	movq	%rax, -64(%rbp)	# tmp2627, inner_dest
	.loc 1 6112 0
	movl	flag_float_store(%rip), %eax	# flag_float_store, flag_float_store.900
	testl	%eax, %eax	# flag_float_store.900
	je	.L1719	#,
	.loc 1 6113 0
	movq	-312(%rbp), %rax	# dest, tmp2628
	movzwl	(%rax), %eax	# dest_1543->code, D.22470
	cmpw	$66, %ax	#, D.22470
	jne	.L1719	#,
	.loc 1 6114 0
	movq	-312(%rbp), %rax	# dest, tmp2629
	movzbl	2(%rax), %eax	# dest_1543->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22483
	cmpl	$2, %eax	#, D.22483
	je	.L1720	#,
	.loc 1 6114 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# dest, tmp2631
	movzbl	2(%rax), %eax	# dest_1543->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22483
	cmpl	$6, %eax	#, D.22483
	je	.L1720	#,
	movq	-312(%rbp), %rax	# dest, tmp2633
	movzbl	2(%rax), %eax	# dest_1543->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22483
	cmpl	$8, %eax	#, D.22483
	je	.L1720	#,
.L1719:
	.loc 1 6118 0 is_stmt 1
	movq	-312(%rbp), %rax	# dest, tmp2635
	movzbl	2(%rax), %eax	# dest_1543->mode, D.22474
	cmpb	$51, %al	#, D.22474
	je	.L1720	#,
	.loc 1 6123 0
	cmpq	$0, -640(%rbp)	#, libcall_insn
	jne	.L1720	#,
	.loc 1 6126 0
	movl	-612(%rbp), %eax	# i, tmp2636
	movslq	%eax, %rdx	# tmp2636, D.22473
	movq	%rdx, %rax	# D.22473, tmp2637
	salq	$2, %rax	#, tmp2637
	addq	%rdx, %rax	# D.22473, tmp2637
	salq	$4, %rax	#, tmp2638
	movq	%rax, %rdx	# tmp2637, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2639
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rax	# _1562->src_elt, D.22482
	testq	%rax, %rax	# D.22482
	je	.L1720	#,
	.loc 1 6132 0
	movq	-312(%rbp), %rax	# dest, tmp2640
	movzwl	(%rax), %eax	# dest_1543->code, D.22470
	cmpw	$63, %ax	#, D.22470
	jne	.L1721	#,
	.loc 1 6133 0
	movq	-312(%rbp), %rax	# dest, tmp2641
	movzbl	2(%rax), %eax	# dest_1543->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22474
	.loc 1 6134 0
	movq	-312(%rbp), %rax	# dest, tmp2643
	movq	8(%rax), %rax	# dest_1543->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _1568->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	.loc 1 6133 0
	cmpb	%al, %dl	# D.22474, D.22474
	jbe	.L1721	#,
	.loc 1 6135 0
	movl	-612(%rbp), %eax	# i, tmp2645
	movslq	%eax, %rdx	# tmp2645, D.22473
	movq	%rdx, %rax	# D.22473, tmp2646
	salq	$2, %rax	#, tmp2646
	addq	%rdx, %rax	# D.22473, tmp2646
	salq	$4, %rax	#, tmp2647
	movq	%rax, %rdx	# tmp2646, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2648
	addq	%rdx, %rax	# D.22473, D.22476
	movq	8(%rax), %rax	# _1574->src, D.22471
	movzwl	(%rax), %eax	# _1575->code, D.22470
	cmpw	$120, %ax	#, D.22470
	je	.L1720	#,
	.loc 1 6136 0
	movl	-612(%rbp), %eax	# i, tmp2649
	movslq	%eax, %rdx	# tmp2649, D.22473
	movq	%rdx, %rax	# D.22473, tmp2650
	salq	$2, %rax	#, tmp2650
	addq	%rdx, %rax	# D.22473, tmp2650
	salq	$4, %rax	#, tmp2651
	movq	%rax, %rdx	# tmp2650, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2652
	addq	%rdx, %rax	# D.22473, D.22476
	movq	8(%rax), %rax	# _1579->src, D.22471
	movzwl	(%rax), %eax	# _1580->code, D.22470
	cmpw	$121, %ax	#, D.22470
	jne	.L1721	#,
.L1720:
	.loc 1 6137 0
	jmp	.L1718	#
.L1721:
	.loc 1 6142 0
	movq	-312(%rbp), %rax	# dest, tmp2653
	movzwl	(%rax), %eax	# dest_1543->code, D.22470
	cmpw	$64, %ax	#, D.22470
	jne	.L1722	#,
	.loc 1 6143 0
	movq	-312(%rbp), %rax	# dest, tmp2654
	movq	8(%rax), %rax	# dest_1543->fld[0].rtx, D.22471
	movq	8(%rax), %rax	# _1583->fld[0].rtx, tmp2655
	movq	%rax, -312(%rbp)	# tmp2655, dest
.L1722:
	.loc 1 6145 0
	movq	-312(%rbp), %rax	# dest, tmp2656
	movzwl	(%rax), %eax	# dest_132->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1723	#,
	.loc 1 6145 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# dest, tmp2657
	movzwl	(%rax), %eax	# dest_132->code, D.22470
	cmpw	$63, %ax	#, D.22470
	jne	.L1724	#,
.L1723:
	.loc 1 6147 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2658
	movslq	%eax, %rdx	# tmp2658, D.22473
	movq	%rdx, %rax	# D.22473, tmp2659
	salq	$2, %rax	#, tmp2659
	addq	%rdx, %rax	# D.22473, tmp2659
	salq	$4, %rax	#, tmp2660
	movq	%rax, %rdx	# tmp2659, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2661
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rcx	# _1589->src_elt, D.22482
	movq	-312(%rbp), %rax	# dest, tmp2662
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.22482,
	movq	%rax, %rdi	# tmp2662,
	call	insert_regs	#
	testl	%eax, %eax	# D.22478
	je	.L1724	#,
	.loc 1 6151 0
	movq	-312(%rbp), %rax	# dest, tmp2663
	movq	%rax, %rdi	# tmp2663,
	call	rehash_using_reg	#
	.loc 1 6152 0
	movl	-612(%rbp), %eax	# i, tmp2664
	movslq	%eax, %rdx	# tmp2664, D.22473
	movq	%rdx, %rax	# D.22473, tmp2665
	salq	$2, %rax	#, tmp2665
	addq	%rdx, %rax	# D.22473, tmp2665
	salq	$4, %rax	#, tmp2666
	movq	%rax, %rdx	# tmp2665, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2667
	leaq	(%rdx,%rax), %rbx	#, D.22476
	movq	-312(%rbp), %rax	# dest, tmp2668
	movzwl	(%rax), %eax	# dest_132->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1725	#,
	.loc 1 6152 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# dest, tmp2669
	movl	8(%rax), %eax	# dest_132->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1725	#,
	movq	-312(%rbp), %rax	# dest, tmp2670
	movl	8(%rax), %edx	# dest_132->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.903
	cmpl	%eax, %edx	# cached_regno.903, D.22477
	jne	.L1726	#,
	.loc 1 6152 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.904
	testq	%rax, %rax	# cached_cse_reg_info.904
	jne	.L1727	#,
.L1726:
	.loc 1 6152 0 discriminator 1
	movq	-312(%rbp), %rax	# dest, tmp2671
	movl	8(%rax), %eax	# dest_132->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1728	#
.L1727:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.902
.L1728:
	.loc 1 6152 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.902_200->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.901
	jmp	.L1729	#
.L1725:
	.loc 1 6152 0 discriminator 2
	movq	-312(%rbp), %rax	# dest, tmp2672
	movzbl	2(%rax), %eax	# dest_132->mode, D.22474
	movzbl	%al, %edx	# D.22474, D.22475
	movq	-312(%rbp), %rax	# dest, tmp2673
	movl	%edx, %esi	# D.22475,
	movq	%rax, %rdi	# tmp2673,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.901
.L1729:
	.loc 1 6152 0 discriminator 3
	movl	%eax, 28(%rbx)	# iftmp.901, _1594->dest_hash
.L1724:
	.loc 1 6155 0 is_stmt 1
	movq	-64(%rbp), %rax	# inner_dest, tmp2674
	movzwl	(%rax), %eax	# inner_dest_1547->code, D.22470
	cmpw	$66, %ax	#, D.22470
	jne	.L1730	#,
	.loc 1 6156 0
	movq	-64(%rbp), %rax	# inner_dest, tmp2675
	movq	8(%rax), %rax	# inner_dest_1547->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _1611->code, D.22470
	cmpw	$70, %ax	#, D.22470
	jne	.L1730	#,
	.loc 1 6162 0
	movq	-312(%rbp), %rax	# dest, tmp2676
	movzbl	2(%rax), %eax	# dest_132->mode, D.22474
	movzbl	%al, %ecx	# D.22474, D.22475
	movl	-612(%rbp), %eax	# i, tmp2677
	movslq	%eax, %rdx	# tmp2677, D.22473
	movq	%rdx, %rax	# D.22473, tmp2678
	salq	$2, %rax	#, tmp2678
	addq	%rdx, %rax	# D.22473, tmp2678
	salq	$4, %rax	#, tmp2679
	movq	%rax, %rdx	# tmp2678, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2680
	addq	%rdx, %rax	# D.22473, D.22476
	movl	28(%rax), %edx	# _1617->dest_hash, D.22477
	movq	-312(%rbp), %rax	# dest, tmp2681
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp2681,
	call	insert	#
	movq	%rax, -304(%rbp)	# tmp2682, elt
	jmp	.L1731	#
.L1730:
	.loc 1 6165 0
	movq	-312(%rbp), %rax	# dest, tmp2683
	movzbl	2(%rax), %eax	# dest_132->mode, D.22474
	.loc 1 6164 0
	movzbl	%al, %ecx	# D.22474, D.22475
	.loc 1 6165 0
	movl	-612(%rbp), %eax	# i, tmp2684
	movslq	%eax, %rdx	# tmp2684, D.22473
	movq	%rdx, %rax	# D.22473, tmp2685
	salq	$2, %rax	#, tmp2685
	addq	%rdx, %rax	# D.22473, tmp2685
	salq	$4, %rax	#, tmp2686
	movq	%rax, %rdx	# tmp2685, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2687
	addq	%rdx, %rax	# D.22473, D.22476
	.loc 1 6164 0
	movl	28(%rax), %edi	# _1624->dest_hash, D.22477
	movl	-612(%rbp), %eax	# i, tmp2688
	movslq	%eax, %rdx	# tmp2688, D.22473
	movq	%rdx, %rax	# D.22473, tmp2689
	salq	$2, %rax	#, tmp2689
	addq	%rdx, %rax	# D.22473, tmp2689
	salq	$4, %rax	#, tmp2690
	movq	%rax, %rdx	# tmp2689, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2691
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rsi	# _1628->src_elt, D.22482
	movq	-312(%rbp), %rax	# dest, tmp2692
	movl	%edi, %edx	# D.22477,
	movq	%rax, %rdi	# tmp2692,
	call	insert	#
	movq	%rax, -304(%rbp)	# tmp2693, elt
.L1731:
	.loc 1 6167 0
	movl	-612(%rbp), %eax	# i, tmp2694
	movslq	%eax, %rdx	# tmp2694, D.22473
	movq	%rdx, %rax	# D.22473, tmp2695
	salq	$2, %rax	#, tmp2695
	addq	%rdx, %rax	# D.22473, tmp2695
	salq	$4, %rax	#, tmp2696
	movq	%rax, %rdx	# tmp2695, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2697
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1633->inner_dest, D.22471
	movzwl	(%rax), %eax	# _1634->code, D.22470
	.loc 1 6168 0
	cmpw	$66, %ax	#, D.22470
	jne	.L1732	#,
	.loc 1 6168 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2698
	movslq	%eax, %rdx	# tmp2698, D.22473
	movq	%rdx, %rax	# D.22473, tmp2699
	salq	$2, %rax	#, tmp2699
	addq	%rdx, %rax	# D.22473, tmp2699
	salq	$4, %rax	#, tmp2700
	movq	%rax, %rdx	# tmp2699, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2701
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1638->inner_dest, D.22471
	movzbl	3(%rax), %eax	# *_1639, D.22474
	andl	$4, %eax	#, D.22474
	testb	%al, %al	# D.22474
	je	.L1733	#,
	.loc 1 6169 0 is_stmt 1
	movl	-612(%rbp), %eax	# i, tmp2702
	movslq	%eax, %rdx	# tmp2702, D.22473
	movq	%rdx, %rax	# D.22473, tmp2703
	salq	$2, %rax	#, tmp2703
	addq	%rdx, %rax	# D.22473, tmp2703
	salq	$4, %rax	#, tmp2704
	movq	%rax, %rdx	# tmp2703, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2705
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1644->inner_dest, D.22471
	movq	8(%rax), %rdx	# _1645->fld[0].rtx, D.22471
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	je	.L1733	#,
	.loc 1 6169 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2706
	movslq	%eax, %rdx	# tmp2706, D.22473
	movq	%rdx, %rax	# D.22473, tmp2707
	salq	$2, %rax	#, tmp2707
	addq	%rdx, %rax	# D.22473, tmp2707
	salq	$4, %rax	#, tmp2708
	movq	%rax, %rdx	# tmp2707, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2709
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1650->inner_dest, D.22471
	movq	8(%rax), %rdx	# _1651->fld[0].rtx, D.22471
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	je	.L1733	#,
	movl	-612(%rbp), %eax	# i, tmp2710
	movslq	%eax, %rdx	# tmp2710, D.22473
	movq	%rdx, %rax	# D.22473, tmp2711
	salq	$2, %rax	#, tmp2711
	addq	%rdx, %rax	# D.22473, tmp2711
	salq	$4, %rax	#, tmp2712
	movq	%rax, %rdx	# tmp2711, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2713
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1656->inner_dest, D.22471
	movq	8(%rax), %rdx	# _1657->fld[0].rtx, D.22471
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	jne	.L1734	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22480
	testb	%al, %al	# D.22480
	jne	.L1733	#,
.L1734:
	.loc 1 6169 0 discriminator 2
	movl	-612(%rbp), %eax	# i, tmp2714
	movslq	%eax, %rdx	# tmp2714, D.22473
	movq	%rdx, %rax	# D.22473, tmp2715
	salq	$2, %rax	#, tmp2715
	addq	%rdx, %rax	# D.22473, tmp2715
	salq	$4, %rax	#, tmp2716
	movq	%rax, %rdx	# tmp2715, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2717
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1663->inner_dest, D.22471
	movq	8(%rax), %rdx	# _1664->fld[0].rtx, D.22471
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	je	.L1733	#,
	.loc 1 6169 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2718
	movslq	%eax, %rdx	# tmp2718, D.22473
	movq	%rdx, %rax	# D.22473, tmp2719
	salq	$2, %rax	#, tmp2719
	addq	%rdx, %rax	# D.22473, tmp2719
	salq	$4, %rax	#, tmp2720
	movq	%rax, %rdx	# tmp2719, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2721
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1669->inner_dest, D.22471
	movq	8(%rax), %rdx	# _1670->fld[0].rtx, D.22471
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	je	.L1733	#,
	movl	-612(%rbp), %eax	# i, tmp2722
	movslq	%eax, %rdx	# tmp2722, D.22473
	movq	%rdx, %rax	# D.22473, tmp2723
	salq	$2, %rax	#, tmp2723
	addq	%rdx, %rax	# D.22473, tmp2723
	salq	$4, %rax	#, tmp2724
	movq	%rax, %rdx	# tmp2723, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2725
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1675->inner_dest, D.22471
	movq	8(%rax), %rax	# _1676->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _1677->code, D.22470
	cmpw	$75, %ax	#, D.22470
	jne	.L1735	#,
	movl	-612(%rbp), %eax	# i, tmp2726
	movslq	%eax, %rdx	# tmp2726, D.22473
	movq	%rdx, %rax	# D.22473, tmp2727
	salq	$2, %rax	#, tmp2727
	addq	%rdx, %rax	# D.22473, tmp2727
	salq	$4, %rax	#, tmp2728
	movq	%rax, %rdx	# tmp2727, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2729
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1681->inner_dest, D.22471
	movq	8(%rax), %rax	# _1682->fld[0].rtx, D.22471
	movq	16(%rax), %rax	# _1683->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _1684->code, D.22470
	cmpw	$54, %ax	#, D.22470
	jne	.L1735	#,
	movl	-612(%rbp), %eax	# i, tmp2730
	movslq	%eax, %rdx	# tmp2730, D.22473
	movq	%rdx, %rax	# D.22473, tmp2731
	salq	$2, %rax	#, tmp2731
	addq	%rdx, %rax	# D.22473, tmp2731
	salq	$4, %rax	#, tmp2732
	movq	%rax, %rdx	# tmp2731, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2733
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1688->inner_dest, D.22471
	movq	8(%rax), %rax	# _1689->fld[0].rtx, D.22471
	movq	8(%rax), %rdx	# _1690->fld[0].rtx, D.22471
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	je	.L1733	#,
	movl	-612(%rbp), %eax	# i, tmp2734
	movslq	%eax, %rdx	# tmp2734, D.22473
	movq	%rdx, %rax	# D.22473, tmp2735
	salq	$2, %rax	#, tmp2735
	addq	%rdx, %rax	# D.22473, tmp2735
	salq	$4, %rax	#, tmp2736
	movq	%rax, %rdx	# tmp2735, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2737
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1695->inner_dest, D.22471
	movq	8(%rax), %rax	# _1696->fld[0].rtx, D.22471
	movq	8(%rax), %rdx	# _1697->fld[0].rtx, D.22471
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	je	.L1733	#,
	movl	-612(%rbp), %eax	# i, tmp2738
	movslq	%eax, %rdx	# tmp2738, D.22473
	movq	%rdx, %rax	# D.22473, tmp2739
	salq	$2, %rax	#, tmp2739
	addq	%rdx, %rax	# D.22473, tmp2739
	salq	$4, %rax	#, tmp2740
	movq	%rax, %rdx	# tmp2739, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2741
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1702->inner_dest, D.22471
	movq	8(%rax), %rdx	# _1703->fld[0].rtx, D.22471
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	jne	.L1736	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22480
	testb	%al, %al	# D.22480
	jne	.L1733	#,
.L1736:
	.loc 1 6169 0 discriminator 2
	movl	-612(%rbp), %eax	# i, tmp2742
	movslq	%eax, %rdx	# tmp2742, D.22473
	movq	%rdx, %rax	# D.22473, tmp2743
	salq	$2, %rax	#, tmp2743
	addq	%rdx, %rax	# D.22473, tmp2743
	salq	$4, %rax	#, tmp2744
	movq	%rax, %rdx	# tmp2743, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2745
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1709->inner_dest, D.22471
	movq	8(%rax), %rax	# _1710->fld[0].rtx, D.22471
	movq	8(%rax), %rdx	# _1711->fld[0].rtx, D.22471
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	je	.L1733	#,
	.loc 1 6169 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2746
	movslq	%eax, %rdx	# tmp2746, D.22473
	movq	%rdx, %rax	# D.22473, tmp2747
	salq	$2, %rax	#, tmp2747
	addq	%rdx, %rax	# D.22473, tmp2747
	salq	$4, %rax	#, tmp2748
	movq	%rax, %rdx	# tmp2747, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2749
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1716->inner_dest, D.22471
	movq	8(%rax), %rax	# _1717->fld[0].rtx, D.22471
	movq	8(%rax), %rdx	# _1718->fld[0].rtx, D.22471
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	je	.L1733	#,
.L1735:
	.loc 1 6169 0 discriminator 2
	movl	-612(%rbp), %eax	# i, tmp2750
	movslq	%eax, %rdx	# tmp2750, D.22473
	movq	%rdx, %rax	# D.22473, tmp2751
	salq	$2, %rax	#, tmp2751
	addq	%rdx, %rax	# D.22473, tmp2751
	salq	$4, %rax	#, tmp2752
	movq	%rax, %rdx	# tmp2751, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2753
	addq	%rdx, %rax	# D.22473, D.22476
	movq	32(%rax), %rax	# _1723->inner_dest, D.22471
	movq	8(%rax), %rax	# _1724->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _1725->code, D.22470
	cmpw	$70, %ax	#, D.22470
	jne	.L1732	#,
.L1733:
	.loc 1 6168 0 is_stmt 1 discriminator 3
	movl	$1, %eax	#, iftmp.905
	jmp	.L1737	#
.L1732:
	.loc 1 6168 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.905
.L1737:
	.loc 1 6167 0 is_stmt 1
	movl	%eax, %edx	# iftmp.905, D.22480
	movq	-304(%rbp), %rax	# elt, tmp2754
	movb	%dl, 76(%rax)	# D.22480, elt_133->in_memory
	.loc 1 6187 0
	movq	-312(%rbp), %rax	# dest, tmp2755
	movzwl	(%rax), %eax	# dest_132->code, D.22470
	cmpw	$63, %ax	#, D.22470
	jne	.L1718	#,
	.loc 1 6188 0
	movq	-312(%rbp), %rax	# dest, tmp2756
	movq	8(%rax), %rax	# dest_132->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _1731->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	subl	$1, %eax	#, D.22478
	.loc 1 6189 0
	movl	target_flags(%rip), %edx	# target_flags, target_flags.907
	andl	$33554432, %edx	#, D.22478
	testl	%edx, %edx	# D.22478
	je	.L1738	#,
	.loc 1 6189 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.906
	jmp	.L1739	#
.L1738:
	.loc 1 6189 0 discriminator 2
	movl	$4, %ebx	#, iftmp.906
.L1739:
	.loc 1 6189 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.906
	movl	%eax, %ecx	# tmp2758, D.22478
	.loc 1 6190 0 is_stmt 1 discriminator 3
	movq	-312(%rbp), %rax	# dest, tmp2760
	movzbl	2(%rax), %eax	# dest_132->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	subl	$1, %eax	#, D.22478
	movl	target_flags(%rip), %edx	# target_flags, target_flags.909
	andl	$33554432, %edx	#, D.22478
	testl	%edx, %edx	# D.22478
	je	.L1740	#,
	.loc 1 6190 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.908
	jmp	.L1741	#
.L1740:
	.loc 1 6190 0 discriminator 2
	movl	$4, %ebx	#, iftmp.908
.L1741:
	.loc 1 6190 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.908
	.loc 1 6188 0 is_stmt 1 discriminator 3
	cmpl	%eax, %ecx	# D.22478, D.22478
	jne	.L1718	#,
	.loc 1 6191 0
	movq	-312(%rbp), %rax	# dest, tmp2764
	movzbl	2(%rax), %eax	# dest_132->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22474
	.loc 1 6192 0
	movq	-312(%rbp), %rax	# dest, tmp2766
	movq	8(%rax), %rax	# dest_132->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _1755->mode, D.22474
	movzbl	%al, %eax	# D.22474, D.22478
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22474
	.loc 1 6191 0
	cmpb	%al, %dl	# D.22474, D.22474
	jb	.L1718	#,
	.loc 1 6193 0
	movl	-612(%rbp), %eax	# i, tmp2768
	movslq	%eax, %rdx	# tmp2768, D.22473
	movq	%rdx, %rax	# D.22473, tmp2769
	salq	$2, %rax	#, tmp2769
	addq	%rdx, %rax	# D.22473, tmp2769
	salq	$4, %rax	#, tmp2770
	movq	%rax, %rdx	# tmp2769, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2771
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rax	# _1761->src_elt, D.22482
	testq	%rax, %rax	# D.22482
	je	.L1718	#,
.LBB125:
	.loc 1 6195 0
	movq	-312(%rbp), %rax	# dest, tmp2772
	movq	8(%rax), %rax	# dest_132->fld[0].rtx, D.22471
	movzbl	2(%rax), %eax	# _1763->mode, D.22474
	movzbl	%al, %eax	# D.22474, tmp2773
	movl	%eax, -480(%rbp)	# tmp2773, new_mode
	.loc 1 6196 0
	movq	$0, -288(%rbp)	#, classp
	.loc 1 6198 0
	movl	-612(%rbp), %eax	# i, tmp2774
	movslq	%eax, %rdx	# tmp2774, D.22473
	movq	%rdx, %rax	# D.22473, tmp2775
	salq	$2, %rax	#, tmp2775
	addq	%rdx, %rax	# D.22473, tmp2775
	salq	$4, %rax	#, tmp2776
	movq	%rax, %rdx	# tmp2775, D.22473
	movq	-448(%rbp), %rax	# sets, tmp2777
	addq	%rdx, %rax	# D.22473, D.22476
	movq	16(%rax), %rax	# _1769->src_elt, D.22482
	movq	48(%rax), %rax	# _1770->first_same_value, tmp2778
	movq	%rax, -296(%rbp)	# tmp2778, elt
	jmp	.L1742	#
.L1761:
.LBB126:
	.loc 1 6201 0
	movq	$0, -280(%rbp)	#, new_src
	.loc 1 6206 0
	movq	-296(%rbp), %rax	# elt, tmp2779
	movq	(%rax), %rax	# elt_134->exp, D.22471
	movzwl	(%rax), %eax	# _1773->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1743	#,
	.loc 1 6207 0
	movq	-296(%rbp), %rax	# elt, tmp2780
	movq	(%rax), %rsi	# elt_134->exp, D.22471
	movq	-296(%rbp), %rax	# elt, tmp2781
	movq	(%rax), %rax	# elt_134->exp, D.22471
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22471,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22478
	jne	.L1743	#,
	.loc 1 6208 0
	jmp	.L1744	#
.L1743:
	.loc 1 6210 0
	movq	-296(%rbp), %rax	# elt, tmp2782
	movq	(%rax), %rdx	# elt_134->exp, D.22471
	movl	-480(%rbp), %eax	# new_mode, tmp2783
	movq	%rdx, %rsi	# D.22471,
	movl	%eax, %edi	# tmp2783,
	call	gen_lowpart_if_possible	#
	movq	%rax, -280(%rbp)	# tmp2784, new_src
	.loc 1 6211 0
	cmpq	$0, -280(%rbp)	#, new_src
	jne	.L1745	#,
	.loc 1 6212 0
	movq	-296(%rbp), %rax	# elt, tmp2785
	movq	(%rax), %rcx	# elt_134->exp, D.22471
	movl	-480(%rbp), %eax	# new_mode, tmp2786
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.22471,
	movl	%eax, %edi	# tmp2786,
	call	gen_rtx_SUBREG	#
	movq	%rax, -280(%rbp)	# tmp2787, new_src
.L1745:
	.loc 1 6214 0
	movq	-280(%rbp), %rax	# new_src, tmp2788
	movzwl	(%rax), %eax	# new_src_138->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1746	#,
	.loc 1 6214 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# new_src, tmp2789
	movl	8(%rax), %eax	# new_src_138->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1746	#,
	movq	-280(%rbp), %rax	# new_src, tmp2790
	movl	8(%rax), %edx	# new_src_138->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.912
	cmpl	%eax, %edx	# cached_regno.912, D.22477
	jne	.L1747	#,
	.loc 1 6214 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.913
	testq	%rax, %rax	# cached_cse_reg_info.913
	jne	.L1748	#,
.L1747:
	.loc 1 6214 0 discriminator 1
	movq	-280(%rbp), %rax	# new_src, tmp2791
	movl	8(%rax), %eax	# new_src_138->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1749	#
.L1748:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.911
.L1749:
	.loc 1 6214 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.911_205->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.910
	jmp	.L1750	#
.L1746:
	.loc 1 6214 0 discriminator 2
	movl	-480(%rbp), %edx	# new_mode, tmp2792
	movq	-280(%rbp), %rax	# new_src, tmp2793
	movl	%edx, %esi	# tmp2792,
	movq	%rax, %rdi	# tmp2793,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.910
.L1750:
	.loc 1 6214 0 discriminator 3
	movl	%eax, -528(%rbp)	# iftmp.910, src_hash
	.loc 1 6215 0 is_stmt 1 discriminator 3
	movl	-480(%rbp), %edx	# new_mode, tmp2794
	movl	-528(%rbp), %ecx	# src_hash, tmp2795
	movq	-280(%rbp), %rax	# new_src, tmp2796
	movl	%ecx, %esi	# tmp2795,
	movq	%rax, %rdi	# tmp2796,
	call	lookup	#
	movq	%rax, -272(%rbp)	# tmp2797, src_elt
	.loc 1 6219 0 discriminator 3
	cmpq	$0, -272(%rbp)	#, src_elt
	jne	.L1751	#,
	.loc 1 6221 0
	movq	-288(%rbp), %rcx	# classp, tmp2798
	movq	-280(%rbp), %rax	# new_src, tmp2799
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp2798,
	movq	%rax, %rdi	# tmp2799,
	call	insert_regs	#
	testl	%eax, %eax	# D.22478
	je	.L1752	#,
	.loc 1 6223 0
	movq	-280(%rbp), %rax	# new_src, tmp2800
	movq	%rax, %rdi	# tmp2800,
	call	rehash_using_reg	#
	.loc 1 6224 0
	movq	-280(%rbp), %rax	# new_src, tmp2801
	movzwl	(%rax), %eax	# new_src_138->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1753	#,
	.loc 1 6224 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# new_src, tmp2802
	movl	8(%rax), %eax	# new_src_138->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1753	#,
	movq	-280(%rbp), %rax	# new_src, tmp2803
	movl	8(%rax), %edx	# new_src_138->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.916
	cmpl	%eax, %edx	# cached_regno.916, D.22477
	jne	.L1754	#,
	.loc 1 6224 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.917
	testq	%rax, %rax	# cached_cse_reg_info.917
	jne	.L1755	#,
.L1754:
	.loc 1 6224 0 discriminator 1
	movq	-280(%rbp), %rax	# new_src, tmp2804
	movl	8(%rax), %eax	# new_src_138->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1756	#
.L1755:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.915
.L1756:
	.loc 1 6224 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.915_207->reg_qty, D.22478
	andl	$31, %eax	#, iftmp.914
	jmp	.L1757	#
.L1753:
	.loc 1 6224 0 discriminator 2
	movl	-480(%rbp), %edx	# new_mode, tmp2805
	movq	-280(%rbp), %rax	# new_src, tmp2806
	movl	%edx, %esi	# tmp2805,
	movq	%rax, %rdi	# tmp2806,
	call	canon_hash	#
	andl	$31, %eax	#, iftmp.914
.L1757:
	.loc 1 6224 0 discriminator 3
	movl	%eax, -528(%rbp)	# iftmp.914, src_hash
.L1752:
	.loc 1 6226 0 is_stmt 1
	movl	-480(%rbp), %ecx	# new_mode, tmp2807
	movl	-528(%rbp), %edx	# src_hash, tmp2808
	movq	-288(%rbp), %rsi	# classp, tmp2809
	movq	-280(%rbp), %rax	# new_src, tmp2810
	movq	%rax, %rdi	# tmp2810,
	call	insert	#
	movq	%rax, -272(%rbp)	# tmp2811, src_elt
	.loc 1 6227 0
	movq	-296(%rbp), %rax	# elt, tmp2812
	movzbl	76(%rax), %edx	# elt_134->in_memory, D.22480
	movq	-272(%rbp), %rax	# src_elt, tmp2813
	movb	%dl, 76(%rax)	# D.22480, src_elt_1812->in_memory
	jmp	.L1758	#
.L1751:
	.loc 1 6229 0
	cmpq	$0, -288(%rbp)	#, classp
	je	.L1758	#,
	.loc 1 6229 0 is_stmt 0 discriminator 1
	movq	-272(%rbp), %rax	# src_elt, tmp2814
	movq	48(%rax), %rax	# src_elt_1796->first_same_value, D.22482
	cmpq	-288(%rbp), %rax	# classp, D.22482
	je	.L1758	#,
	.loc 1 6232 0 is_stmt 1
	movq	-288(%rbp), %rdx	# classp, tmp2815
	movq	-272(%rbp), %rax	# src_elt, tmp2816
	movq	%rdx, %rsi	# tmp2815,
	movq	%rax, %rdi	# tmp2816,
	call	merge_equiv_classes	#
.L1758:
	.loc 1 6234 0
	movq	-272(%rbp), %rax	# src_elt, tmp2817
	movq	48(%rax), %rax	# src_elt_140->first_same_value, tmp2818
	movq	%rax, -288(%rbp)	# tmp2818, classp
	.loc 1 6236 0
	jmp	.L1759	#
.L1760:
	.loc 1 6239 0
	movq	-288(%rbp), %rax	# classp, tmp2819
	movq	32(%rax), %rax	# classp_135->next_same_value, tmp2820
	movq	%rax, -288(%rbp)	# tmp2820, classp
.L1759:
	.loc 1 6236 0 discriminator 1
	cmpq	$0, -288(%rbp)	#, classp
	je	.L1744	#,
	.loc 1 6237 0
	movq	-288(%rbp), %rax	# classp, tmp2821
	movq	(%rax), %rax	# classp_135->exp, D.22471
	movzwl	(%rax), %eax	# _1816->code, D.22470
	cmpw	$61, %ax	#, D.22470
	je	.L1744	#,
	.loc 1 6238 0
	movq	-288(%rbp), %rax	# classp, tmp2822
	movq	(%rax), %rsi	# classp_135->exp, D.22471
	movq	-288(%rbp), %rax	# classp, tmp2823
	movq	(%rax), %rax	# classp_135->exp, D.22471
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22471,
	call	exp_equiv_p	#
	testl	%eax, %eax	# D.22478
	je	.L1760	#,
.L1744:
.LBE126:
	.loc 1 6199 0
	movq	-296(%rbp), %rax	# elt, tmp2824
	movq	32(%rax), %rax	# elt_134->next_same_value, tmp2825
	movq	%rax, -296(%rbp)	# tmp2825, elt
.L1742:
	.loc 1 6198 0 discriminator 1
	cmpq	$0, -296(%rbp)	#, elt
	jne	.L1761	#,
.L1718:
.LBE125:
.LBE124:
	.loc 1 6102 0
	addl	$1, -612(%rbp)	#, i
.L1717:
	.loc 1 6102 0 is_stmt 0 discriminator 1
	movl	-612(%rbp), %eax	# i, tmp2826
	cmpl	-608(%rbp), %eax	# n_sets, tmp2826
	jl	.L1762	#,
	.loc 1 6261 0 is_stmt 1
	cmpl	$1, -608(%rbp)	#, n_sets
	jne	.L1763	#,
	.loc 1 6261 0 is_stmt 0 discriminator 1
	movq	-448(%rbp), %rax	# sets, tmp2827
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	testq	%rax, %rax	# D.22471
	je	.L1763	#,
	movq	-448(%rbp), %rax	# sets, tmp2828
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	8(%rax), %rax	# _1825->fld[0].rtx, D.22471
	movzwl	(%rax), %eax	# _1826->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1763	#,
	.loc 1 6262 0 is_stmt 1
	movq	-632(%rbp), %rax	# insn, tmp2829
	movq	16(%rax), %rax	# insn_3->fld[1].rtx, D.22471
	movq	24(%rax), %rax	# _1828->fld[2].rtx, D.22471
	cmpq	-632(%rbp), %rax	# insn, D.22471
	jne	.L1763	#,
	.loc 1 6263 0
	movq	-448(%rbp), %rax	# sets, tmp2830
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	16(%rax), %rax	# _1830->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _1831->code, D.22470
	cmpw	$61, %ax	#, D.22470
	jne	.L1763	#,
	.loc 1 6264 0
	movq	-448(%rbp), %rax	# sets, tmp2831
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	16(%rax), %rax	# _1833->fld[1].rtx, D.22471
	movl	8(%rax), %eax	# _1834->fld[0].rtuint, D.22477
	cmpl	$52, %eax	#, D.22477
	jbe	.L1763	#,
	.loc 1 6265 0
	movq	-448(%rbp), %rax	# sets, tmp2832
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	16(%rax), %rax	# _1836->fld[1].rtx, D.22471
	movl	8(%rax), %edx	# _1837->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.919
	cmpl	%eax, %edx	# cached_regno.919, D.22477
	jne	.L1764	#,
	.loc 1 6265 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.920
	testq	%rax, %rax	# cached_cse_reg_info.920
	jne	.L1765	#,
.L1764:
	.loc 1 6265 0 discriminator 1
	movq	-448(%rbp), %rax	# sets, tmp2833
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	16(%rax), %rax	# _1842->fld[1].rtx, D.22471
	movl	8(%rax), %eax	# _1843->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1766	#
.L1765:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.918
.L1766:
	.loc 1 6265 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.918_208->reg_qty, D.22478
	movq	-448(%rbp), %rax	# sets, tmp2834
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	16(%rax), %rax	# _1847->fld[1].rtx, D.22471
	movl	8(%rax), %eax	# _1848->fld[0].rtuint, D.22477
	cmpl	%eax, %edx	# D.22478, D.22478
	je	.L1763	#,
.LBB127:
	.loc 1 6267 0 is_stmt 1
	movq	-448(%rbp), %rax	# sets, tmp2835
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	16(%rax), %rax	# _1851->fld[1].rtx, D.22471
	movl	8(%rax), %edx	# _1852->fld[0].rtuint, D.22477
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.922
	cmpl	%eax, %edx	# cached_regno.922, D.22477
	jne	.L1767	#,
	.loc 1 6267 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.923
	testq	%rax, %rax	# cached_cse_reg_info.923
	jne	.L1768	#,
.L1767:
	.loc 1 6267 0 discriminator 1
	movq	-448(%rbp), %rax	# sets, tmp2836
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	16(%rax), %rax	# _1857->fld[1].rtx, D.22471
	movl	8(%rax), %eax	# _1858->fld[0].rtuint, D.22477
	movl	%eax, %edi	# D.22477,
	call	get_cse_reg_info	#
	jmp	.L1769	#
.L1768:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.921
.L1769:
	.loc 1 6267 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.921_209->reg_qty, tmp2837
	movl	%eax, -476(%rbp)	# tmp2837, src_q
	.loc 1 6268 0 is_stmt 1 discriminator 3
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.924
	movl	-476(%rbp), %eax	# src_q, tmp2838
	movslq	%eax, %rdx	# tmp2838, D.22473
	movq	%rdx, %rax	# D.22473, tmp2839
	addq	%rax, %rax	# tmp2839
	addq	%rdx, %rax	# D.22473, tmp2839
	salq	$4, %rax	#, tmp2840
	addq	%rcx, %rax	# qty_table.924, tmp2841
	movq	%rax, -56(%rbp)	# tmp2841, src_ent
	.loc 1 6270 0 discriminator 3
	movq	-56(%rbp), %rax	# src_ent, tmp2842
	movl	28(%rax), %edx	# src_ent_1865->first_reg, D.22477
	movq	-448(%rbp), %rax	# sets, tmp2843
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	8(%rax), %rax	# _1867->fld[0].rtx, D.22471
	movl	8(%rax), %eax	# _1868->fld[0].rtuint, D.22477
	cmpl	%eax, %edx	# D.22477, D.22477
	jne	.L1763	#,
	.loc 1 6271 0
	movq	-632(%rbp), %rax	# insn, tmp2844
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp2844,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22471
	jne	.L1763	#,
.LBB128:
	.loc 1 6273 0
	movq	-632(%rbp), %rax	# insn, tmp2845
	movq	%rax, %rdi	# tmp2845,
	call	prev_nonnote_insn	#
	movq	%rax, -48(%rbp)	# tmp2846, prev
	.loc 1 6287 0
	cmpq	$0, -48(%rbp)	#, prev
	je	.L1763	#,
	.loc 1 6287 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# prev, tmp2847
	movzwl	(%rax), %eax	# prev_1871->code, D.22470
	cmpw	$32, %ax	#, D.22470
	jne	.L1763	#,
	.loc 1 6288 0 is_stmt 1
	movq	-48(%rbp), %rax	# prev, tmp2848
	movq	32(%rax), %rax	# prev_1871->fld[3].rtx, D.22471
	movzwl	(%rax), %eax	# _1873->code, D.22470
	cmpw	$47, %ax	#, D.22470
	jne	.L1763	#,
	.loc 1 6289 0
	movq	-48(%rbp), %rax	# prev, tmp2849
	movq	32(%rax), %rax	# prev_1871->fld[3].rtx, D.22471
	movq	8(%rax), %rdx	# _1875->fld[0].rtx, D.22471
	movq	-448(%rbp), %rax	# sets, tmp2850
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	16(%rax), %rax	# _1877->fld[1].rtx, D.22471
	cmpq	%rax, %rdx	# D.22471, D.22471
	jne	.L1763	#,
	.loc 1 6290 0
	movq	-48(%rbp), %rax	# prev, tmp2851
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp2851,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22471
	jne	.L1763	#,
.LBB129:
	.loc 1 6292 0
	movq	-448(%rbp), %rax	# sets, tmp2852
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	8(%rax), %rax	# _1880->fld[0].rtx, tmp2853
	movq	%rax, -40(%rbp)	# tmp2853, dest
	.loc 1 6293 0
	movq	-448(%rbp), %rax	# sets, tmp2854
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	movq	16(%rax), %rax	# _1882->fld[1].rtx, tmp2855
	movq	%rax, -32(%rbp)	# tmp2855, src
	.loc 1 6296 0
	movq	-48(%rbp), %rax	# prev, tmp2856
	movq	32(%rax), %rax	# prev_1871->fld[3].rtx, D.22471
	leaq	8(%rax), %rsi	#, D.22481
	movq	-40(%rbp), %rdx	# dest, tmp2857
	movq	-48(%rbp), %rax	# prev, tmp2858
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp2858,
	call	validate_change	#
	.loc 1 6297 0
	movq	-448(%rbp), %rax	# sets, tmp2859
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	leaq	8(%rax), %rsi	#, D.22481
	movq	-32(%rbp), %rdx	# src, tmp2860
	movq	-632(%rbp), %rax	# insn, tmp2861
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp2861,
	call	validate_change	#
	.loc 1 6298 0
	movq	-448(%rbp), %rax	# sets, tmp2862
	movq	(%rax), %rax	# sets_42->rtl, D.22471
	leaq	16(%rax), %rsi	#, D.22481
	movq	-40(%rbp), %rdx	# dest, tmp2863
	movq	-632(%rbp), %rax	# insn, tmp2864
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp2864,
	call	validate_change	#
	.loc 1 6299 0
	call	apply_change_group	#
	.loc 1 6303 0
	movq	-48(%rbp), %rax	# prev, tmp2865
	movl	$0, %edx	#,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp2865,
	call	find_reg_note	#
	movq	%rax, -24(%rbp)	# tmp2866, note
	.loc 1 6304 0
	cmpq	$0, -24(%rbp)	#, note
	je	.L1770	#,
	.loc 1 6305 0
	movq	-24(%rbp), %rdx	# note, tmp2867
	movq	-48(%rbp), %rax	# prev, tmp2868
	movq	%rdx, %rsi	# tmp2867,
	movq	%rax, %rdi	# tmp2868,
	call	remove_note	#
.L1770:
	.loc 1 6307 0
	movq	-632(%rbp), %rax	# insn, tmp2869
	movl	$0, %edx	#,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp2869,
	call	find_reg_note	#
	movq	%rax, -24(%rbp)	# tmp2870, note
	.loc 1 6308 0
	cmpq	$0, -24(%rbp)	#, note
	je	.L1771	#,
	.loc 1 6310 0
	movq	-24(%rbp), %rdx	# note, tmp2871
	movq	-632(%rbp), %rax	# insn, tmp2872
	movq	%rdx, %rsi	# tmp2871,
	movq	%rax, %rdi	# tmp2872,
	call	remove_note	#
	.loc 1 6311 0
	movq	-48(%rbp), %rax	# prev, tmp2873
	movq	56(%rax), %rdx	# prev_1871->fld[6].rtx, D.22471
	movq	-24(%rbp), %rax	# note, tmp2874
	movq	%rdx, 16(%rax)	# D.22471, note_1891->fld[1].rtx
	.loc 1 6312 0
	movq	-48(%rbp), %rax	# prev, tmp2875
	movq	-24(%rbp), %rdx	# note, tmp2876
	movq	%rdx, 56(%rax)	# tmp2876, prev_1871->fld[6].rtx
.L1771:
	.loc 1 6319 0
	movq	-632(%rbp), %rax	# insn, tmp2877
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp2877,
	call	find_reg_note	#
	movq	%rax, -24(%rbp)	# tmp2878, note
	.loc 1 6320 0
	cmpq	$0, -24(%rbp)	#, note
	je	.L1763	#,
	.loc 1 6321 0
	movq	-24(%rbp), %rax	# note, tmp2879
	movq	8(%rax), %rdx	# note_1893->fld[0].rtx, D.22471
	movq	-40(%rbp), %rax	# dest, tmp2880
	movq	%rdx, %rsi	# D.22471,
	movq	%rax, %rdi	# tmp2880,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.22478
	jne	.L1772	#,
	.loc 1 6322 0
	movq	-24(%rbp), %rax	# note, tmp2881
	movq	8(%rax), %rdx	# note_1893->fld[0].rtx, D.22471
	movq	-32(%rbp), %rax	# src, tmp2882
	movq	%rdx, %rsi	# D.22471,
	movq	%rax, %rdi	# tmp2882,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22478
	je	.L1763	#,
.L1772:
	.loc 1 6323 0
	movq	-24(%rbp), %rdx	# note, tmp2883
	movq	-632(%rbp), %rax	# insn, tmp2884
	movq	%rdx, %rsi	# tmp2883,
	movq	%rax, %rdi	# tmp2884,
	call	remove_note	#
.L1763:
.LBE129:
.LBE128:
.LBE127:
	.loc 1 6331 0
	movq	$0, last_jump_equiv_class(%rip)	#, last_jump_equiv_class
	.loc 1 6332 0
	movq	-632(%rbp), %rax	# insn, tmp2885
	movzwl	(%rax), %eax	# insn_3->code, D.22470
	cmpw	$33, %ax	#, D.22470
	jne	.L1773	#,
	.loc 1 6333 0
	cmpl	$1, -608(%rbp)	#, n_sets
	jne	.L1773	#,
	.loc 1 6333 0 is_stmt 0 discriminator 1
	movq	-264(%rbp), %rax	# x, tmp2886
	movzwl	(%rax), %eax	# x_211->code, D.22470
	cmpw	$47, %ax	#, D.22470
	jne	.L1773	#,
	.loc 1 6334 0 is_stmt 1
	movq	-264(%rbp), %rax	# x, tmp2887
	movq	16(%rax), %rax	# x_211->fld[1].rtx, D.22471
	movzwl	(%rax), %eax	# _1900->code, D.22470
	cmpw	$72, %ax	#, D.22470
	jne	.L1773	#,
	.loc 1 6335 0
	movq	-632(%rbp), %rax	# insn, tmp2888
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp2888,
	call	record_jump_equiv	#
.L1773:
	.loc 1 6351 0
	movq	-632(%rbp), %rax	# insn, tmp2889
	movq	%rax, prev_insn(%rip)	# tmp2889, prev_insn
	.loc 1 6352 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	cse_insn, .-cse_insn
	.type	invalidate_memory, @function
invalidate_memory:
.LFB44:
	.loc 1 6358 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 6362 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L1775	#
.L1779:
	.loc 1 6363 0
	movl	-20(%rbp), %eax	# i, tmp62
	cltq
	movq	table(,%rax,8), %rax	# table, tmp63
	movq	%rax, -16(%rbp)	# tmp63, p
	jmp	.L1776	#
.L1778:
	.loc 1 6365 0
	movq	-16(%rbp), %rax	# p, tmp64
	movq	16(%rax), %rax	# p_2->next_same_hash, tmp65
	movq	%rax, -8(%rbp)	# tmp65, next
	.loc 1 6366 0
	movq	-16(%rbp), %rax	# p, tmp66
	movzbl	76(%rax), %eax	# p_2->in_memory, D.22487
	testb	%al, %al	# D.22487
	je	.L1777	#,
	.loc 1 6367 0
	movl	-20(%rbp), %edx	# i, i.925
	movq	-16(%rbp), %rax	# p, tmp67
	movl	%edx, %esi	# i.925,
	movq	%rax, %rdi	# tmp67,
	call	remove_from_table	#
.L1777:
	.loc 1 6363 0
	movq	-8(%rbp), %rax	# next, tmp68
	movq	%rax, -16(%rbp)	# tmp68, p
.L1776:
	.loc 1 6363 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L1778	#,
	.loc 1 6362 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L1775:
	.loc 1 6362 0 is_stmt 0 discriminator 1
	cmpl	$31, -20(%rbp)	#, i
	jle	.L1779	#,
	.loc 1 6369 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	invalidate_memory, .-invalidate_memory
	.type	addr_affects_sp_p, @function
addr_affects_sp_p:
.LFB45:
	.loc 1 6377 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# addr, addr
	.loc 1 6378 0
	movq	-8(%rbp), %rax	# addr, tmp80
	movzwl	(%rax), %eax	# addr_4(D)->code, D.22489
	movzwl	%ax, %eax	# D.22489, D.22488
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22490
	cmpb	$97, %al	#, D.22490
	jne	.L1781	#,
	.loc 1 6379 0
	movq	-8(%rbp), %rax	# addr, tmp82
	movq	8(%rax), %rax	# addr_4(D)->fld[0].rtx, D.22491
	movzwl	(%rax), %eax	# _8->code, D.22489
	cmpw	$61, %ax	#, D.22489
	jne	.L1781	#,
	.loc 1 6380 0
	movq	-8(%rbp), %rax	# addr, tmp83
	movq	8(%rax), %rax	# addr_4(D)->fld[0].rtx, D.22491
	movl	8(%rax), %eax	# _10->fld[0].rtuint, D.22492
	cmpl	$7, %eax	#, D.22492
	jne	.L1781	#,
	.loc 1 6382 0
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.927
	cmpl	$7, %eax	#, cached_regno.927
	jne	.L1782	#,
	.loc 1 6382 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.928
	testq	%rax, %rax	# cached_cse_reg_info.928
	jne	.L1783	#,
.L1782:
	.loc 1 6382 0 discriminator 1
	movl	$7, %edi	#,
	call	get_cse_reg_info	#
	jmp	.L1784	#
.L1783:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.926
.L1784:
	.loc 1 6382 0 discriminator 3
	movl	24(%rax), %eax	# iftmp.926_1->reg_tick, D.22488
	testl	%eax, %eax	# D.22488
	js	.L1785	#,
	.loc 1 6383 0 is_stmt 1
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.930
	cmpl	$7, %eax	#, cached_regno.930
	jne	.L1786	#,
	.loc 1 6383 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.931
	testq	%rax, %rax	# cached_cse_reg_info.931
	jne	.L1787	#,
.L1786:
	.loc 1 6383 0 discriminator 1
	movl	$7, %edi	#,
	call	get_cse_reg_info	#
	jmp	.L1788	#
.L1787:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.929
.L1788:
	.loc 1 6383 0 discriminator 3
	movl	24(%rax), %edx	# iftmp.929_2->reg_tick, D.22488
	addl	$1, %edx	#, D.22488
	movl	%edx, 24(%rax)	# D.22488, iftmp.929_2->reg_tick
.L1785:
	.loc 1 6386 0 is_stmt 1
	movq	hard_regs_in_table(%rip), %rax	# hard_regs_in_table, hard_regs_in_table.932
	andl	$128, %eax	#, D.22493
	testq	%rax, %rax	# D.22493
	je	.L1789	#,
	.loc 1 6387 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22491
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22491,
	call	invalidate	#
.L1789:
	.loc 1 6389 0
	movl	$1, %eax	#, D.22488
	jmp	.L1790	#
.L1781:
	.loc 1 6392 0
	movl	$0, %eax	#, D.22488
.L1790:
	.loc 1 6393 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	addr_affects_sp_p, .-addr_affects_sp_p
	.type	invalidate_from_clobbers, @function
invalidate_from_clobbers:
.LFB46:
	.loc 1 6405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 6406 0
	movq	-40(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_2(D)->code, D.22494
	cmpw	$49, %ax	#, D.22494
	jne	.L1792	#,
.LBB130:
	.loc 1 6408 0
	movq	-40(%rbp), %rax	# x, tmp82
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, tmp83
	movq	%rax, -24(%rbp)	# tmp83, ref
	.loc 1 6409 0
	cmpq	$0, -24(%rbp)	#, ref
	je	.L1793	#,
	.loc 1 6411 0
	movq	-24(%rbp), %rax	# ref, tmp84
	movzwl	(%rax), %eax	# ref_4->code, D.22494
	cmpw	$61, %ax	#, D.22494
	je	.L1794	#,
	.loc 1 6411 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ref, tmp85
	movzwl	(%rax), %eax	# ref_4->code, D.22494
	cmpw	$63, %ax	#, D.22494
	je	.L1794	#,
	.loc 1 6412 0 is_stmt 1
	movq	-24(%rbp), %rax	# ref, tmp86
	movzwl	(%rax), %eax	# ref_4->code, D.22494
	cmpw	$66, %ax	#, D.22494
	jne	.L1795	#,
.L1794:
	.loc 1 6413 0
	movq	-24(%rbp), %rax	# ref, tmp87
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	invalidate	#
	jmp	.L1793	#
.L1795:
	.loc 1 6414 0
	movq	-24(%rbp), %rax	# ref, tmp88
	movzwl	(%rax), %eax	# ref_4->code, D.22494
	cmpw	$64, %ax	#, D.22494
	je	.L1796	#,
	.loc 1 6415 0
	movq	-24(%rbp), %rax	# ref, tmp89
	movzwl	(%rax), %eax	# ref_4->code, D.22494
	cmpw	$133, %ax	#, D.22494
	jne	.L1793	#,
.L1796:
	.loc 1 6416 0
	movq	-24(%rbp), %rax	# ref, tmp90
	movzbl	2(%rax), %eax	# ref_4->mode, D.22495
	movzbl	%al, %edx	# D.22495, D.22496
	movq	-24(%rbp), %rax	# ref, tmp91
	movq	8(%rax), %rax	# ref_4->fld[0].rtx, D.22497
	movl	%edx, %esi	# D.22496,
	movq	%rax, %rdi	# D.22497,
	call	invalidate	#
.LBE130:
	jmp	.L1791	#
.L1793:
	jmp	.L1791	#
.L1792:
	.loc 1 6419 0
	movq	-40(%rbp), %rax	# x, tmp92
	movzwl	(%rax), %eax	# x_2(D)->code, D.22494
	cmpw	$39, %ax	#, D.22494
	jne	.L1791	#,
.LBB131:
	.loc 1 6422 0
	movq	-40(%rbp), %rax	# x, tmp93
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtvec, D.22498
	movl	(%rax), %eax	# _14->num_elem, D.22499
	subl	$1, %eax	#, tmp94
	movl	%eax, -28(%rbp)	# tmp94, i
	jmp	.L1798	#
.L1803:
.LBB132:
	.loc 1 6424 0
	movq	-40(%rbp), %rax	# x, tmp95
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtvec, D.22498
	movl	-28(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, tmp96
	movq	8(%rax,%rdx,8), %rax	# _17->elem, tmp98
	movq	%rax, -16(%rbp)	# tmp98, y
	.loc 1 6425 0
	movq	-16(%rbp), %rax	# y, tmp99
	movzwl	(%rax), %eax	# y_18->code, D.22494
	cmpw	$49, %ax	#, D.22494
	jne	.L1799	#,
.LBB133:
	.loc 1 6427 0
	movq	-16(%rbp), %rax	# y, tmp100
	movq	8(%rax), %rax	# y_18->fld[0].rtx, tmp101
	movq	%rax, -8(%rbp)	# tmp101, ref
	.loc 1 6428 0
	movq	-8(%rbp), %rax	# ref, tmp102
	movzwl	(%rax), %eax	# ref_20->code, D.22494
	cmpw	$61, %ax	#, D.22494
	je	.L1800	#,
	.loc 1 6428 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ref, tmp103
	movzwl	(%rax), %eax	# ref_20->code, D.22494
	cmpw	$63, %ax	#, D.22494
	je	.L1800	#,
	.loc 1 6429 0 is_stmt 1
	movq	-8(%rbp), %rax	# ref, tmp104
	movzwl	(%rax), %eax	# ref_20->code, D.22494
	cmpw	$66, %ax	#, D.22494
	jne	.L1801	#,
.L1800:
	.loc 1 6430 0
	movq	-8(%rbp), %rax	# ref, tmp105
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	invalidate	#
	jmp	.L1799	#
.L1801:
	.loc 1 6431 0
	movq	-8(%rbp), %rax	# ref, tmp106
	movzwl	(%rax), %eax	# ref_20->code, D.22494
	cmpw	$64, %ax	#, D.22494
	je	.L1802	#,
	.loc 1 6432 0
	movq	-8(%rbp), %rax	# ref, tmp107
	movzwl	(%rax), %eax	# ref_20->code, D.22494
	cmpw	$133, %ax	#, D.22494
	jne	.L1799	#,
.L1802:
	.loc 1 6433 0
	movq	-8(%rbp), %rax	# ref, tmp108
	movzbl	2(%rax), %eax	# ref_20->mode, D.22495
	movzbl	%al, %edx	# D.22495, D.22496
	movq	-8(%rbp), %rax	# ref, tmp109
	movq	8(%rax), %rax	# ref_20->fld[0].rtx, D.22497
	movl	%edx, %esi	# D.22496,
	movq	%rax, %rdi	# D.22497,
	call	invalidate	#
.L1799:
.LBE133:
.LBE132:
	.loc 1 6422 0
	subl	$1, -28(%rbp)	#, i
.L1798:
	.loc 1 6422 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, i
	jns	.L1803	#,
.L1791:
.LBE131:
	.loc 1 6437 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	invalidate_from_clobbers, .-invalidate_from_clobbers
	.type	cse_process_notes, @function
cse_process_notes:
.LFB47:
	.loc 1 6452 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# object, object
	.loc 1 6453 0
	movq	-56(%rbp), %rax	# x, tmp122
	movzwl	(%rax), %eax	# x_5(D)->code, D.22501
	movzwl	%ax, %eax	# D.22501, tmp123
	movl	%eax, -36(%rbp)	# tmp123, code
	.loc 1 6454 0
	movl	-36(%rbp), %eax	# code, code.933
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp125
	movq	%rax, -32(%rbp)	# tmp125, fmt
	.loc 1 6457 0
	movl	-36(%rbp), %eax	# code, tmp127
	subl	$3, %eax	#, tmp126
	cmpl	$132, %eax	#, tmp126
	ja	.L1828	#,
	movl	%eax, %eax	# tmp126, tmp128
	movq	.L1807(,%rax,8), %rax	#, tmp129
	jmp	*%rax	# tmp129
	.section	.rodata
	.align 8
	.align 4
.L1807:
	.quad	.L1806
	.quad	.L1806
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1808
	.quad	.L1808
	.quad	.L1808
	.quad	.L1828
	.quad	.L1808
	.quad	.L1808
	.quad	.L1828
	.quad	.L1809
	.quad	.L1828
	.quad	.L1810
	.quad	.L1828
	.quad	.L1828
	.quad	.L1811
	.quad	.L1808
	.quad	.L1808
	.quad	.L1808
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1810
	.quad	.L1810
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1828
	.quad	.L1808
	.text
.L1808:
	.loc 1 6468 0
	movq	-56(%rbp), %rax	# x, D.22500
	jmp	.L1812	#
.L1811:
	.loc 1 6471 0
	movq	-56(%rbp), %rax	# x, tmp130
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.22502
	movq	-56(%rbp), %rdx	# x, tmp131
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# D.22502,
	call	cse_process_notes	#
	movq	%rax, %rdx	#, D.22502
	movq	-56(%rbp), %rax	# x, tmp132
	leaq	8(%rax), %rsi	#, D.22503
	movq	-56(%rbp), %rax	# x, tmp133
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp133,
	call	validate_change	#
	.loc 1 6473 0
	movq	-56(%rbp), %rax	# x, D.22500
	jmp	.L1812	#
.L1806:
	.loc 1 6477 0
	movq	-56(%rbp), %rax	# x, tmp134
	movzbl	2(%rax), %eax	# x_5(D)->mode, D.22504
	cmpb	$4, %al	#, D.22504
	jne	.L1813	#,
	.loc 1 6478 0
	movq	-56(%rbp), %rax	# x, tmp135
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.22502
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22502,
	call	cse_process_notes	#
	movq	-56(%rbp), %rdx	# x, tmp136
	movq	%rax, 8(%rdx)	# D.22502, x_5(D)->fld[0].rtx
.L1813:
	.loc 1 6479 0
	movq	-56(%rbp), %rax	# x, tmp137
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.22502
	testq	%rax, %rax	# D.22502
	je	.L1814	#,
	.loc 1 6480 0
	movq	-56(%rbp), %rax	# x, tmp138
	movq	16(%rax), %rax	# x_5(D)->fld[1].rtx, D.22502
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22502,
	call	cse_process_notes	#
	movq	-56(%rbp), %rdx	# x, tmp139
	movq	%rax, 16(%rdx)	# D.22502, x_5(D)->fld[1].rtx
.L1814:
	.loc 1 6481 0
	movq	-56(%rbp), %rax	# x, D.22500
	jmp	.L1812	#
.L1810:
.LBB134:
	.loc 1 6487 0
	movq	-56(%rbp), %rax	# x, tmp140
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, D.22502
	movq	-64(%rbp), %rdx	# object, tmp141
	movq	%rdx, %rsi	# tmp141,
	movq	%rax, %rdi	# D.22502,
	call	cse_process_notes	#
	movq	%rax, -24(%rbp)	# tmp142, new
	.loc 1 6490 0
	movq	-24(%rbp), %rax	# new, tmp143
	movzbl	2(%rax), %eax	# new_24->mode, D.22504
	testb	%al, %al	# D.22504
	je	.L1815	#,
	.loc 1 6491 0
	movq	-56(%rbp), %rax	# x, tmp144
	leaq	8(%rax), %rsi	#, D.22503
	movq	-24(%rbp), %rdx	# new, tmp145
	movq	-64(%rbp), %rax	# object, tmp146
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp146,
	call	validate_change	#
.L1815:
	.loc 1 6492 0
	movq	-56(%rbp), %rax	# x, D.22500
	jmp	.L1812	#
.L1809:
.LBE134:
	.loc 1 6496 0
	movq	-56(%rbp), %rax	# x, tmp147
	movl	8(%rax), %edx	# x_5(D)->fld[0].rtuint, D.22505
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.935
	cmpl	%eax, %edx	# cached_regno.935, D.22505
	jne	.L1816	#,
	.loc 1 6496 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.936
	testq	%rax, %rax	# cached_cse_reg_info.936
	jne	.L1817	#,
.L1816:
	.loc 1 6496 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp148
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.22505
	movl	%eax, %edi	# D.22505,
	call	get_cse_reg_info	#
	jmp	.L1818	#
.L1817:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.934
.L1818:
	.loc 1 6496 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.934_3->reg_qty, tmp149
	movl	%eax, -40(%rbp)	# tmp149, i
	.loc 1 6499 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# x, tmp150
	movl	8(%rax), %edx	# x_5(D)->fld[0].rtuint, D.22505
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.938
	cmpl	%eax, %edx	# cached_regno.938, D.22505
	jne	.L1819	#,
	.loc 1 6499 0 is_stmt 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.939
	testq	%rax, %rax	# cached_cse_reg_info.939
	jne	.L1820	#,
.L1819:
	.loc 1 6499 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp151
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.22505
	movl	%eax, %edi	# D.22505,
	call	get_cse_reg_info	#
	jmp	.L1821	#
.L1820:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.937
.L1821:
	.loc 1 6499 0 discriminator 3
	movl	20(%rax), %edx	# iftmp.937_4->reg_qty, D.22506
	movq	-56(%rbp), %rax	# x, tmp152
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.22505
	cmpl	%eax, %edx	# D.22506, D.22506
	je	.L1822	#,
.LBB135:
	.loc 1 6501 0 is_stmt 1
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.940
	movl	-40(%rbp), %eax	# i, tmp153
	movslq	%eax, %rdx	# tmp153, D.22507
	movq	%rdx, %rax	# D.22507, tmp154
	addq	%rax, %rax	# tmp154
	addq	%rdx, %rax	# D.22507, tmp154
	salq	$4, %rax	#, tmp155
	addq	%rcx, %rax	# qty_table.940, tmp156
	movq	%rax, -16(%rbp)	# tmp156, ent
	.loc 1 6503 0
	movq	-16(%rbp), %rax	# ent, tmp157
	movq	(%rax), %rax	# ent_47->const_rtx, D.22502
	testq	%rax, %rax	# D.22502
	je	.L1822	#,
	.loc 1 6504 0
	movq	-16(%rbp), %rax	# ent, tmp158
	movq	(%rax), %rax	# ent_47->const_rtx, D.22502
	movzwl	(%rax), %eax	# _49->code, D.22501
	cmpw	$67, %ax	#, D.22501
	je	.L1823	#,
	.loc 1 6504 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ent, tmp159
	movq	(%rax), %rax	# ent_47->const_rtx, D.22502
	movzwl	(%rax), %eax	# _51->code, D.22501
	cmpw	$68, %ax	#, D.22501
	je	.L1823	#,
	movq	-16(%rbp), %rax	# ent, tmp160
	movq	(%rax), %rax	# ent_47->const_rtx, D.22502
	movzwl	(%rax), %eax	# _53->code, D.22501
	cmpw	$54, %ax	#, D.22501
	je	.L1823	#,
	movq	-16(%rbp), %rax	# ent, tmp161
	movq	(%rax), %rax	# ent_47->const_rtx, D.22502
	movzwl	(%rax), %eax	# _55->code, D.22501
	cmpw	$55, %ax	#, D.22501
	je	.L1823	#,
	movq	-16(%rbp), %rax	# ent, tmp162
	movq	(%rax), %rax	# ent_47->const_rtx, D.22502
	movzwl	(%rax), %eax	# _57->code, D.22501
	cmpw	$58, %ax	#, D.22501
	je	.L1823	#,
	movq	-16(%rbp), %rax	# ent, tmp163
	movq	(%rax), %rax	# ent_47->const_rtx, D.22502
	movzwl	(%rax), %eax	# _59->code, D.22501
	cmpw	$134, %ax	#, D.22501
	je	.L1823	#,
	movq	-16(%rbp), %rax	# ent, tmp164
	movq	(%rax), %rax	# ent_47->const_rtx, D.22502
	movzwl	(%rax), %eax	# _61->code, D.22501
	cmpw	$56, %ax	#, D.22501
	je	.L1823	#,
	movq	-16(%rbp), %rax	# ent, tmp165
	movq	(%rax), %rax	# ent_47->const_rtx, D.22502
	movzwl	(%rax), %eax	# _63->code, D.22501
	cmpw	$140, %ax	#, D.22501
	je	.L1823	#,
	.loc 1 6505 0 is_stmt 1
	movq	-16(%rbp), %rax	# ent, tmp166
	movq	(%rax), %rax	# ent_47->const_rtx, D.22502
	movzwl	(%rax), %eax	# _65->code, D.22501
	cmpw	$61, %ax	#, D.22501
	jne	.L1822	#,
.L1823:
.LBB136:
	.loc 1 6507 0
	movq	-16(%rbp), %rax	# ent, tmp167
	movq	(%rax), %rdx	# ent_47->const_rtx, D.22502
	movq	-56(%rbp), %rax	# x, tmp168
	movzbl	2(%rax), %eax	# x_5(D)->mode, D.22504
	movzbl	%al, %eax	# D.22504, D.22508
	movq	%rdx, %rsi	# D.22502,
	movl	%eax, %edi	# D.22508,
	call	gen_lowpart_if_possible	#
	movq	%rax, -8(%rbp)	# tmp169, new
	.loc 1 6508 0
	cmpq	$0, -8(%rbp)	#, new
	je	.L1822	#,
	.loc 1 6509 0
	movq	-8(%rbp), %rax	# new, D.22500
	jmp	.L1812	#
.L1822:
.LBE136:
.LBE135:
	.loc 1 6514 0
	movq	-56(%rbp), %rax	# x, tmp170
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	canon_reg	#
	jmp	.L1812	#
.L1828:
	.loc 1 6517 0
	nop
	.loc 1 6520 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L1824	#
.L1826:
	.loc 1 6521 0
	movl	-40(%rbp), %eax	# i, tmp171
	movslq	%eax, %rdx	# tmp171, D.22509
	movq	-32(%rbp), %rax	# fmt, tmp172
	addq	%rdx, %rax	# D.22509, D.22510
	movzbl	(%rax), %eax	# *_78, D.22511
	cmpb	$101, %al	#, D.22511
	jne	.L1825	#,
	.loc 1 6522 0
	movq	-56(%rbp), %rax	# x, tmp173
	movl	-40(%rbp), %edx	# i, tmp175
	movslq	%edx, %rdx	# tmp175, tmp174
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_1].rtx, D.22502
	movq	-64(%rbp), %rdx	# object, tmp176
	movq	%rdx, %rsi	# tmp176,
	movq	%rax, %rdi	# D.22502,
	call	cse_process_notes	#
	movq	%rax, %rdx	#, D.22502
	movl	-40(%rbp), %eax	# i, tmp178
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp179
	movq	-56(%rbp), %rax	# x, tmp181
	addq	%rcx, %rax	# tmp179, tmp180
	leaq	8(%rax), %rsi	#, D.22503
	movq	-64(%rbp), %rax	# object, tmp182
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp182,
	call	validate_change	#
.L1825:
	.loc 1 6520 0
	addl	$1, -40(%rbp)	#, i
.L1824:
	.loc 1 6520 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# code, code.941
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22504
	movzbl	%al, %eax	# D.22504, D.22506
	cmpl	-40(%rbp), %eax	# i, D.22506
	jg	.L1826	#,
	.loc 1 6525 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, D.22500
.L1812:
	.loc 1 6526 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	cse_process_notes, .-cse_process_notes
	.type	cse_around_loop, @function
cse_around_loop:
.LFB48:
	.loc 1 6545 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# loop_start, loop_start
	.loc 1 6552 0
	movq	-40(%rbp), %rax	# loop_start, tmp117
	movq	16(%rax), %rax	# loop_start_5(D)->fld[1].rtx, tmp118
	movq	%rax, -16(%rbp)	# tmp118, insn
	jmp	.L1830	#
.L1832:
	.loc 1 6554 0
	movq	-16(%rbp), %rax	# insn, tmp119
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp120
	movq	%rax, -16(%rbp)	# tmp120, insn
.L1830:
	.loc 1 6552 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, insn
	je	.L1831	#,
	.loc 1 6553 0
	movq	-16(%rbp), %rax	# insn, tmp121
	movzwl	(%rax), %eax	# insn_1->code, D.22512
	cmpw	$37, %ax	#, D.22512
	jne	.L1831	#,
	.loc 1 6553 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp122
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.22513
	testl	%eax, %eax	# D.22513
	jns	.L1832	#,
.L1831:
	.loc 1 6557 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, insn
	je	.L1833	#,
	.loc 1 6558 0
	movq	-16(%rbp), %rax	# insn, tmp123
	movzwl	(%rax), %eax	# insn_1->code, D.22512
	cmpw	$37, %ax	#, D.22512
	jne	.L1833	#,
	.loc 1 6559 0
	movq	-16(%rbp), %rax	# insn, tmp124
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.22513
	cmpl	$-96, %eax	#, D.22513
	je	.L1834	#,
.L1833:
	.loc 1 6560 0
	jmp	.L1829	#
.L1834:
	.loc 1 6566 0
	movq	last_jump_equiv_class(%rip), %rax	# last_jump_equiv_class, last_jump_equiv_class.942
	testq	%rax, %rax	# last_jump_equiv_class.942
	je	.L1836	#,
	.loc 1 6567 0
	movq	last_jump_equiv_class(%rip), %rax	# last_jump_equiv_class, last_jump_equiv_class.943
	movq	48(%rax), %rax	# last_jump_equiv_class.943_13->first_same_value, tmp125
	movq	%rax, -8(%rbp)	# tmp125, p
	jmp	.L1837	#
.L1842:
	.loc 1 6570 0
	movq	-8(%rbp), %rax	# p, tmp126
	movq	(%rax), %rax	# p_4->exp, D.22514
	movzwl	(%rax), %eax	# _15->code, D.22512
	cmpw	$66, %ax	#, D.22512
	je	.L1838	#,
	.loc 1 6570 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp127
	movq	(%rax), %rax	# p_4->exp, D.22514
	movzwl	(%rax), %eax	# _17->code, D.22512
	cmpw	$61, %ax	#, D.22512
	je	.L1838	#,
	.loc 1 6571 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp128
	movq	(%rax), %rax	# p_4->exp, D.22514
	movzwl	(%rax), %eax	# _19->code, D.22512
	cmpw	$63, %ax	#, D.22512
	jne	.L1839	#,
	.loc 1 6572 0
	movq	-8(%rbp), %rax	# p, tmp129
	movq	(%rax), %rax	# p_4->exp, D.22514
	movq	8(%rax), %rax	# _21->fld[0].rtx, D.22514
	movzwl	(%rax), %eax	# _22->code, D.22512
	cmpw	$61, %ax	#, D.22512
	jne	.L1839	#,
.L1838:
	.loc 1 6573 0
	movq	-8(%rbp), %rax	# p, tmp130
	movq	(%rax), %rax	# p_4->exp, D.22514
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22514,
	call	invalidate	#
	jmp	.L1840	#
.L1839:
	.loc 1 6574 0
	movq	-8(%rbp), %rax	# p, tmp131
	movq	(%rax), %rax	# p_4->exp, D.22514
	movzwl	(%rax), %eax	# _24->code, D.22512
	cmpw	$64, %ax	#, D.22512
	je	.L1841	#,
	.loc 1 6575 0
	movq	-8(%rbp), %rax	# p, tmp132
	movq	(%rax), %rax	# p_4->exp, D.22514
	movzwl	(%rax), %eax	# _26->code, D.22512
	cmpw	$133, %ax	#, D.22512
	jne	.L1840	#,
.L1841:
	.loc 1 6576 0
	movq	-8(%rbp), %rax	# p, tmp133
	movq	(%rax), %rax	# p_4->exp, D.22514
	movzbl	2(%rax), %eax	# _28->mode, D.22515
	movzbl	%al, %edx	# D.22515, D.22516
	movq	-8(%rbp), %rax	# p, tmp134
	movq	(%rax), %rax	# p_4->exp, D.22514
	movq	8(%rax), %rax	# _31->fld[0].rtx, D.22514
	movl	%edx, %esi	# D.22516,
	movq	%rax, %rdi	# D.22514,
	call	invalidate	#
.L1840:
	.loc 1 6568 0
	movq	-8(%rbp), %rax	# p, tmp135
	movq	32(%rax), %rax	# p_4->next_same_value, tmp136
	movq	%rax, -8(%rbp)	# tmp136, p
.L1837:
	.loc 1 6567 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L1842	#,
.L1836:
	.loc 1 6591 0
	movq	-40(%rbp), %rax	# loop_start, tmp137
	movq	24(%rax), %rax	# loop_start_5(D)->fld[2].rtx, tmp138
	movq	%rax, -16(%rbp)	# tmp138, insn
	jmp	.L1843	#
.L1851:
	.loc 1 6598 0
	movq	-16(%rbp), %rax	# insn, tmp139
	movzwl	(%rax), %eax	# insn_2->code, D.22512
	movzwl	%ax, %eax	# D.22512, D.22513
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22517
	cmpb	$105, %al	#, D.22517
	jne	.L1844	#,
	.loc 1 6599 0
	movq	-16(%rbp), %rax	# insn, tmp141
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.22514
	movzwl	(%rax), %eax	# _45->code, D.22512
	cmpw	$47, %ax	#, D.22512
	je	.L1845	#,
	.loc 1 6600 0
	movq	-16(%rbp), %rax	# insn, tmp142
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.22514
	movzwl	(%rax), %eax	# _47->code, D.22512
	cmpw	$49, %ax	#, D.22512
	jne	.L1844	#,
.L1845:
	.loc 1 6601 0
	movq	-16(%rbp), %rax	# insn, tmp143
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.22514
	movq	-40(%rbp), %rdx	# loop_start, tmp144
	movq	-16(%rbp), %rcx	# insn, tmp145
	movq	%rcx, %rsi	# tmp145,
	movq	%rax, %rdi	# D.22514,
	call	cse_set_around_loop	#
	jmp	.L1846	#
.L1844:
	.loc 1 6602 0
	movq	-16(%rbp), %rax	# insn, tmp146
	movzwl	(%rax), %eax	# insn_2->code, D.22512
	movzwl	%ax, %eax	# D.22512, D.22513
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22517
	cmpb	$105, %al	#, D.22517
	jne	.L1846	#,
	.loc 1 6602 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp148
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.22514
	movzwl	(%rax), %eax	# _53->code, D.22512
	cmpw	$39, %ax	#, D.22512
	jne	.L1846	#,
	.loc 1 6603 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp149
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.22514
	movq	8(%rax), %rax	# _55->fld[0].rtvec, D.22518
	movl	(%rax), %eax	# _56->num_elem, D.22513
	subl	$1, %eax	#, tmp150
	movl	%eax, -20(%rbp)	# tmp150, i
	jmp	.L1847	#
.L1850:
	.loc 1 6604 0
	movq	-16(%rbp), %rax	# insn, tmp151
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.22514
	movq	8(%rax), %rax	# _59->fld[0].rtvec, D.22518
	movl	-20(%rbp), %edx	# i, tmp153
	movslq	%edx, %rdx	# tmp153, tmp152
	movq	8(%rax,%rdx,8), %rax	# _60->elem, D.22514
	movzwl	(%rax), %eax	# _61->code, D.22512
	cmpw	$47, %ax	#, D.22512
	je	.L1848	#,
	.loc 1 6605 0
	movq	-16(%rbp), %rax	# insn, tmp154
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.22514
	movq	8(%rax), %rax	# _63->fld[0].rtvec, D.22518
	movl	-20(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, tmp155
	movq	8(%rax,%rdx,8), %rax	# _64->elem, D.22514
	movzwl	(%rax), %eax	# _65->code, D.22512
	cmpw	$49, %ax	#, D.22512
	jne	.L1849	#,
.L1848:
	.loc 1 6606 0
	movq	-16(%rbp), %rax	# insn, tmp157
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.22514
	movq	8(%rax), %rax	# _67->fld[0].rtvec, D.22518
	movl	-20(%rbp), %edx	# i, tmp159
	movslq	%edx, %rdx	# tmp159, tmp158
	movq	8(%rax,%rdx,8), %rax	# _68->elem, D.22514
	movq	-40(%rbp), %rdx	# loop_start, tmp160
	movq	-16(%rbp), %rcx	# insn, tmp161
	movq	%rcx, %rsi	# tmp161,
	movq	%rax, %rdi	# D.22514,
	call	cse_set_around_loop	#
.L1849:
	.loc 1 6603 0
	subl	$1, -20(%rbp)	#, i
.L1847:
	.loc 1 6603 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L1850	#,
.L1846:
	.loc 1 6596 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp162
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp163
	movq	%rax, -16(%rbp)	# tmp163, insn
.L1843:
	.loc 1 6592 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp164
	movzwl	(%rax), %eax	# insn_2->code, D.22512
	.loc 1 6591 0 discriminator 1
	cmpw	$34, %ax	#, D.22512
	je	.L1829	#,
	.loc 1 6592 0
	movq	-16(%rbp), %rax	# insn, tmp165
	movzwl	(%rax), %eax	# insn_2->code, D.22512
	cmpw	$36, %ax	#, D.22512
	je	.L1829	#,
	.loc 1 6593 0
	movq	-16(%rbp), %rax	# insn, tmp166
	movl	8(%rax), %edx	# insn_2->fld[0].rtint, D.22513
	movl	max_insn_uid(%rip), %eax	# max_insn_uid, max_insn_uid.944
	cmpl	%eax, %edx	# max_insn_uid.944, D.22513
	jge	.L1829	#,
	.loc 1 6594 0
	movq	-16(%rbp), %rax	# insn, tmp167
	movzwl	(%rax), %eax	# insn_2->code, D.22512
	cmpw	$37, %ax	#, D.22512
	jne	.L1851	#,
	.loc 1 6595 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp168
	movl	40(%rax), %eax	# insn_2->fld[4].rtint, D.22513
	.loc 1 6594 0 discriminator 1
	cmpl	$-95, %eax	#, D.22513
	jne	.L1851	#,
.L1829:
	.loc 1 6609 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	cse_around_loop, .-cse_around_loop
	.type	invalidate_skipped_set, @function
invalidate_skipped_set:
.LFB49:
	.loc 1 6619 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# dest, dest
	movq	%rsi, -32(%rbp)	# set, set
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 6620 0
	movq	-24(%rbp), %rax	# dest, tmp71
	movzwl	(%rax), %eax	# dest_1(D)->code, D.22519
	movzwl	%ax, %eax	# D.22519, tmp72
	movl	%eax, -4(%rbp)	# tmp72, code
	.loc 1 6622 0
	cmpl	$66, -4(%rbp)	#, code
	jne	.L1853	#,
	.loc 1 6623 0
	movq	-24(%rbp), %rax	# dest, tmp73
	movq	%rax, %rdi	# tmp73,
	call	addr_affects_sp_p	#
	testl	%eax, %eax	# D.22520
	jne	.L1853	#,
	.loc 1 6629 0
	movq	-24(%rbp), %rax	# dest, tmp74
	movzbl	3(%rax), %eax	# *dest_1(D), D.22521
	andl	$16, %eax	#, D.22521
	testb	%al, %al	# D.22521
	jne	.L1854	#,
	.loc 1 6629 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# dest, tmp75
	movzbl	2(%rax), %eax	# dest_1(D)->mode, D.22521
	cmpb	$51, %al	#, D.22521
	je	.L1854	#,
	.loc 1 6630 0 is_stmt 1
	movq	-24(%rbp), %rax	# dest, tmp76
	movq	8(%rax), %rax	# dest_1(D)->fld[0].rtx, D.22522
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22522,
	call	cse_rtx_varies_p	#
	testl	%eax, %eax	# D.22520
	je	.L1853	#,
.L1854:
	.loc 1 6632 0
	call	invalidate_memory	#
	.loc 1 6633 0
	jmp	.L1852	#
.L1853:
	.loc 1 6636 0
	movq	-32(%rbp), %rax	# set, tmp77
	movzwl	(%rax), %eax	# set_10(D)->code, D.22519
	cmpw	$49, %ax	#, D.22519
	je	.L1856	#,
	.loc 1 6640 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.22522
	cmpq	-24(%rbp), %rax	# dest, D.22522
	jne	.L1857	#,
.L1856:
	.loc 1 6641 0
	jmp	.L1852	#
.L1857:
	.loc 1 6643 0
	cmpl	$64, -4(%rbp)	#, code
	je	.L1858	#,
	.loc 1 6643 0 is_stmt 0 discriminator 1
	cmpl	$133, -4(%rbp)	#, code
	jne	.L1859	#,
.L1858:
	.loc 1 6644 0 is_stmt 1
	movq	-24(%rbp), %rax	# dest, tmp78
	movzbl	2(%rax), %eax	# dest_1(D)->mode, D.22521
	movzbl	%al, %edx	# D.22521, D.22523
	movq	-24(%rbp), %rax	# dest, tmp79
	movq	8(%rax), %rax	# dest_1(D)->fld[0].rtx, D.22522
	movl	%edx, %esi	# D.22523,
	movq	%rax, %rdi	# D.22522,
	call	invalidate	#
	jmp	.L1852	#
.L1859:
	.loc 1 6645 0
	cmpl	$61, -4(%rbp)	#, code
	je	.L1860	#,
	.loc 1 6645 0 is_stmt 0 discriminator 1
	cmpl	$63, -4(%rbp)	#, code
	je	.L1860	#,
	cmpl	$66, -4(%rbp)	#, code
	jne	.L1852	#,
.L1860:
	.loc 1 6646 0 is_stmt 1
	movq	-24(%rbp), %rax	# dest, tmp80
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	invalidate	#
.L1852:
	.loc 1 6647 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	invalidate_skipped_set, .-invalidate_skipped_set
	.type	invalidate_skipped_block, @function
invalidate_skipped_block:
.LFB50:
	.loc 1 6656 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# start, start
	.loc 1 6659 0
	movq	-24(%rbp), %rax	# start, tmp68
	movq	%rax, -8(%rbp)	# tmp68, insn
	jmp	.L1862	#
.L1868:
	.loc 1 6662 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movzwl	(%rax), %eax	# insn_1->code, D.22524
	movzwl	%ax, %eax	# D.22524, D.22525
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22526
	cmpb	$105, %al	#, D.22526
	je	.L1863	#,
	.loc 1 6663 0
	jmp	.L1864	#
.L1863:
	.loc 1 6665 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movzwl	(%rax), %eax	# insn_1->code, D.22524
	cmpw	$34, %ax	#, D.22524
	jne	.L1865	#,
	.loc 1 6667 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movzbl	3(%rax), %eax	# *insn_1, D.22527
	andl	$4, %eax	#, D.22527
	testb	%al, %al	# D.22527
	jne	.L1866	#,
	.loc 1 6668 0
	call	invalidate_memory	#
.L1866:
	.loc 1 6669 0
	call	invalidate_for_call	#
.L1865:
	.loc 1 6672 0
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.22528
	movq	%rax, %rdi	# D.22528,
	call	invalidate_from_clobbers	#
	.loc 1 6673 0
	movq	-8(%rbp), %rax	# insn, tmp74
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.22528
	movl	$0, %edx	#,
	movl	$invalidate_skipped_set, %esi	#,
	movq	%rax, %rdi	# D.22528,
	call	note_stores	#
.L1864:
	.loc 1 6660 0
	movq	-8(%rbp), %rax	# insn, tmp75
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp76
	movq	%rax, -8(%rbp)	# tmp76, insn
.L1862:
	.loc 1 6659 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	je	.L1861	#,
	.loc 1 6659 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# insn, tmp77
	movzwl	(%rax), %eax	# insn_1->code, D.22524
	cmpw	$36, %ax	#, D.22524
	jne	.L1868	#,
.L1861:
	.loc 1 6675 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	invalidate_skipped_block, .-invalidate_skipped_block
	.type	cse_check_loop_start, @function
cse_check_loop_start:
.LFB51:
	.loc 1 6686 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# set, set
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 6687 0
	movq	-40(%rbp), %rax	# data, tmp67
	movq	%rax, -8(%rbp)	# tmp67, cse_check_loop_start_value
	.loc 1 6689 0
	movq	-8(%rbp), %rax	# cse_check_loop_start_value, tmp68
	movq	(%rax), %rax	# *cse_check_loop_start_value_2, D.22529
	testq	%rax, %rax	# D.22529
	je	.L1870	#,
	.loc 1 6690 0
	movq	-24(%rbp), %rax	# x, tmp69
	movzwl	(%rax), %eax	# x_4(D)->code, D.22530
	cmpw	$69, %ax	#, D.22530
	je	.L1870	#,
	.loc 1 6690 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp70
	movzwl	(%rax), %eax	# x_4(D)->code, D.22530
	cmpw	$59, %ax	#, D.22530
	jne	.L1871	#,
.L1870:
	.loc 1 6691 0 is_stmt 1
	jmp	.L1869	#
.L1871:
	.loc 1 6693 0
	movq	-24(%rbp), %rax	# x, tmp71
	movzwl	(%rax), %eax	# x_4(D)->code, D.22530
	cmpw	$66, %ax	#, D.22530
	jne	.L1873	#,
	.loc 1 6693 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# cse_check_loop_start_value, tmp72
	movq	(%rax), %rax	# *cse_check_loop_start_value_2, D.22529
	movzwl	(%rax), %eax	# _8->code, D.22530
	cmpw	$66, %ax	#, D.22530
	je	.L1874	#,
.L1873:
	.loc 1 6694 0 is_stmt 1
	movq	-8(%rbp), %rax	# cse_check_loop_start_value, tmp73
	movq	(%rax), %rdx	# *cse_check_loop_start_value_2, D.22529
	movq	-24(%rbp), %rax	# x, tmp74
	movq	%rdx, %rsi	# D.22529,
	movq	%rax, %rdi	# tmp74,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.22531
	je	.L1869	#,
.L1874:
	.loc 1 6695 0
	movq	-8(%rbp), %rax	# cse_check_loop_start_value, tmp75
	movq	$0, (%rax)	#, *cse_check_loop_start_value_2
.L1869:
	.loc 1 6696 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	cse_check_loop_start, .-cse_check_loop_start
	.type	cse_set_around_loop, @function
cse_set_around_loop:
.LFB52:
	.loc 1 6720 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# x, x
	movq	%rsi, -96(%rbp)	# insn, insn
	movq	%rdx, -104(%rbp)	# loop_start, loop_start
	.loc 1 6725 0
	movq	-88(%rbp), %rax	# x, tmp153
	movzwl	(%rax), %eax	# x_10(D)->code, D.22532
	cmpw	$47, %ax	#, D.22532
	jne	.L1876	#,
	.loc 1 6726 0
	movq	-88(%rbp), %rax	# x, tmp154
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movzwl	(%rax), %eax	# _12->code, D.22532
	cmpw	$59, %ax	#, D.22532
	je	.L1876	#,
	.loc 1 6726 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp155
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movzwl	(%rax), %eax	# _14->code, D.22532
	cmpw	$69, %ax	#, D.22532
	je	.L1876	#,
	.loc 1 6727 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp156
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22533
	movzwl	(%rax), %eax	# _16->code, D.22532
	cmpw	$61, %ax	#, D.22532
	je	.L1876	#,
	.loc 1 6731 0
	movq	-88(%rbp), %rax	# x, tmp157
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movzbl	2(%rax), %eax	# _18->mode, D.22534
	.loc 1 6729 0
	movzbl	%al, %ebx	# D.22534, D.22535
	.loc 1 6730 0
	movq	-88(%rbp), %rax	# x, tmp158
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22533
	movzwl	(%rax), %eax	# _21->code, D.22532
	.loc 1 6729 0
	cmpw	$61, %ax	#, D.22532
	jne	.L1877	#,
	.loc 1 6730 0
	movq	-88(%rbp), %rax	# x, tmp159
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22533
	movl	8(%rax), %eax	# _23->fld[0].rtuint, D.22536
	cmpl	$52, %eax	#, D.22536
	jbe	.L1877	#,
	.loc 1 6730 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp160
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22533
	movl	8(%rax), %edx	# _25->fld[0].rtuint, D.22536
	movl	cached_regno(%rip), %eax	# cached_regno, cached_regno.947
	cmpl	%eax, %edx	# cached_regno.947, D.22536
	jne	.L1878	#,
	.loc 1 6730 0 discriminator 2
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, cached_cse_reg_info.948
	testq	%rax, %rax	# cached_cse_reg_info.948
	jne	.L1879	#,
.L1878:
	.loc 1 6730 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp161
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22533
	movl	8(%rax), %eax	# _30->fld[0].rtuint, D.22536
	movl	%eax, %edi	# D.22536,
	call	get_cse_reg_info	#
	jmp	.L1880	#
.L1879:
	movq	cached_cse_reg_info(%rip), %rax	# cached_cse_reg_info, iftmp.946
.L1880:
	.loc 1 6730 0 discriminator 3
	movl	20(%rax), %eax	# iftmp.946_5->reg_qty, D.22537
	.loc 1 6729 0 is_stmt 1 discriminator 3
	andl	$31, %eax	#, iftmp.945
	jmp	.L1881	#
.L1877:
	.loc 1 6730 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp162
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movzbl	2(%rax), %eax	# _36->mode, D.22534
	movzbl	%al, %edx	# D.22534, D.22535
	movq	-88(%rbp), %rax	# x, tmp163
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22533
	movl	%edx, %esi	# D.22535,
	movq	%rax, %rdi	# D.22533,
	call	canon_hash	#
	.loc 1 6729 0 discriminator 1
	andl	$31, %eax	#, iftmp.945
.L1881:
	.loc 1 6729 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rdx	# x, tmp164
	movq	16(%rdx), %rcx	# x_10(D)->fld[1].rtx, D.22533
	movl	%ebx, %edx	# D.22535,
	movl	%eax, %esi	# iftmp.945,
	movq	%rcx, %rdi	# D.22533,
	call	lookup	#
	movq	%rax, -56(%rbp)	# tmp165, src_elt
	.loc 1 6733 0 is_stmt 1 discriminator 2
	cmpq	$0, -56(%rbp)	#, src_elt
	je	.L1876	#,
	.loc 1 6734 0
	movq	-56(%rbp), %rax	# src_elt, tmp166
	movq	48(%rax), %rax	# src_elt_43->first_same_value, tmp167
	movq	%rax, -56(%rbp)	# tmp167, src_elt
	jmp	.L1882	#
.L1900:
	.loc 1 6736 0
	movq	-56(%rbp), %rax	# src_elt, tmp168
	movq	(%rax), %rax	# src_elt_1->exp, D.22533
	movzwl	(%rax), %eax	# _45->code, D.22532
	cmpw	$61, %ax	#, D.22532
	jne	.L1883	#,
	.loc 1 6736 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# src_elt, tmp169
	movq	(%rax), %rax	# src_elt_1->exp, D.22533
	movzbl	3(%rax), %eax	# *_47, D.22534
	andl	$16, %eax	#, D.22534
	testb	%al, %al	# D.22534
	je	.L1883	#,
	.loc 1 6737 0 is_stmt 1
	movq	-56(%rbp), %rax	# src_elt, tmp170
	movq	(%rax), %rax	# src_elt_1->exp, D.22533
	movzwl	(%rax), %eax	# _50->code, D.22532
	cmpw	$61, %ax	#, D.22532
	je	.L1884	#,
	.loc 1 6737 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# src_elt, tmp171
	movq	(%rax), %rax	# src_elt_1->exp, D.22533
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.22533,
	call	notreg_cost	#
	movl	%eax, %ebx	#, iftmp.949
	jmp	.L1885	#
.L1884:
	.loc 1 6737 0 discriminator 2
	movl	$0, %ebx	#, iftmp.949
.L1885:
	.loc 1 6737 0 discriminator 3
	movq	-88(%rbp), %rax	# x, tmp172
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22533
	movzwl	(%rax), %eax	# _55->code, D.22532
	cmpw	$61, %ax	#, D.22532
	je	.L1886	#,
	.loc 1 6737 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp173
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, D.22533
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.22533,
	call	notreg_cost	#
	jmp	.L1887	#
.L1886:
	.loc 1 6737 0 discriminator 2
	movl	$0, %eax	#, iftmp.950
.L1887:
	.loc 1 6737 0 discriminator 3
	cmpl	%eax, %ebx	# iftmp.950, iftmp.949
	jge	.L1883	#,
.LBB137:
	.loc 1 6745 0 is_stmt 1
	movq	-104(%rbp), %rax	# loop_start, tmp174
	movq	%rax, %rdi	# tmp174,
	call	prev_nonnote_insn	#
	movq	%rax, -48(%rbp)	# tmp175, p
	jmp	.L1888	#
.L1899:
	.loc 1 6749 0
	movq	-48(%rbp), %rax	# p, tmp176
	movzwl	(%rax), %eax	# p_2->code, D.22532
	movzwl	%ax, %eax	# D.22532, D.22537
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22538
	cmpb	$105, %al	#, D.22538
	jne	.L1889	#,
	.loc 1 6749 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# p, tmp178
	movq	32(%rax), %rax	# p_2->fld[3].rtx, D.22533
	movzwl	(%rax), %eax	# _67->code, D.22532
	cmpw	$47, %ax	#, D.22532
	jne	.L1890	#,
	.loc 1 6749 0 discriminator 3
	movq	-48(%rbp), %rax	# p, tmp179
	movq	32(%rax), %rax	# p_2->fld[3].rtx, iftmp.952
	jmp	.L1892	#
.L1890:
	.loc 1 6749 0 discriminator 4
	movq	-48(%rbp), %rax	# p, tmp180
	movq	32(%rax), %rdx	# p_2->fld[3].rtx, D.22533
	movq	-48(%rbp), %rax	# p, tmp181
	movq	%rdx, %rsi	# D.22533,
	movq	%rax, %rdi	# tmp181,
	call	single_set_2	#
	jmp	.L1892	#
.L1889:
	.loc 1 6749 0 discriminator 2
	movl	$0, %eax	#, iftmp.951
.L1892:
	.loc 1 6749 0 discriminator 5
	movq	%rax, -32(%rbp)	# iftmp.951, set
	cmpq	$0, -32(%rbp)	#, set
	je	.L1893	#,
	.loc 1 6750 0 is_stmt 1
	movq	-32(%rbp), %rax	# set, tmp182
	movq	8(%rax), %rax	# set_74->fld[0].rtx, D.22533
	movzwl	(%rax), %eax	# _75->code, D.22532
	cmpw	$61, %ax	#, D.22532
	jne	.L1893	#,
	.loc 1 6751 0
	movq	-32(%rbp), %rax	# set, tmp183
	movq	8(%rax), %rax	# set_74->fld[0].rtx, D.22533
	movzbl	2(%rax), %eax	# _77->mode, D.22534
	movzbl	%al, %edx	# D.22534, D.22536
	movq	-56(%rbp), %rax	# src_elt, tmp184
	movl	72(%rax), %eax	# src_elt_1->mode, D.22535
	cmpl	%eax, %edx	# D.22535, D.22536
	jne	.L1893	#,
	.loc 1 6752 0
	movq	-88(%rbp), %rax	# x, tmp185
	movq	16(%rax), %rdx	# x_10(D)->fld[1].rtx, D.22533
	movq	-32(%rbp), %rax	# set, tmp186
	movq	16(%rax), %rax	# set_74->fld[1].rtx, D.22533
	movq	%rdx, %rsi	# D.22533,
	movq	%rax, %rdi	# D.22533,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22537
	je	.L1893	#,
.LBB138:
	.loc 1 6760 0
	movq	-88(%rbp), %rax	# x, tmp187
	movq	16(%rax), %rax	# x_10(D)->fld[1].rtx, cse_check_loop_start_value.953
	movq	%rax, -64(%rbp)	# cse_check_loop_start_value.953, cse_check_loop_start_value
	.loc 1 6761 0
	movq	-48(%rbp), %rax	# p, tmp188
	movq	%rax, -40(%rbp)	# tmp188, q
	jmp	.L1894	#
.L1896:
	.loc 1 6762 0
	movq	-40(%rbp), %rax	# q, tmp189
	movzwl	(%rax), %eax	# q_3->code, D.22532
	movzwl	%ax, %eax	# D.22532, D.22537
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22538
	cmpb	$105, %al	#, D.22538
	jne	.L1895	#,
	.loc 1 6763 0
	movq	-40(%rbp), %rax	# q, tmp191
	movq	32(%rax), %rax	# q_3->fld[3].rtx, D.22533
	leaq	-64(%rbp), %rdx	#, tmp192
	movl	$cse_check_loop_start, %esi	#,
	movq	%rax, %rdi	# D.22533,
	call	note_stores	#
.L1895:
	.loc 1 6761 0
	movq	-40(%rbp), %rax	# q, tmp193
	movq	24(%rax), %rax	# q_3->fld[2].rtx, tmp194
	movq	%rax, -40(%rbp)	# tmp194, q
.L1894:
	.loc 1 6761 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# q, tmp195
	cmpq	-104(%rbp), %rax	# loop_start, tmp195
	jne	.L1896	#,
	.loc 1 6770 0 is_stmt 1
	movq	-64(%rbp), %rax	# cse_check_loop_start_value, cse_check_loop_start_value.954
	testq	%rax, %rax	# cse_check_loop_start_value.954
	je	.L1897	#,
	.loc 1 6771 0
	movq	-56(%rbp), %rax	# src_elt, tmp196
	movq	(%rax), %rdx	# src_elt_1->exp, D.22533
	movq	-88(%rbp), %rax	# x, tmp197
	leaq	16(%rax), %rsi	#, D.22539
	movq	-96(%rbp), %rax	# insn, tmp198
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp198,
	call	validate_change	#
	testl	%eax, %eax	# D.22537
	je	.L1897	#,
.LBB139:
	.loc 1 6779 0
	call	max_reg_num	#
	movl	%eax, -68(%rbp)	# tmp199, nregs
	.loc 1 6781 0
	movq	-32(%rbp), %rax	# set, tmp200
	movq	8(%rax), %rdx	# set_74->fld[0].rtx, D.22533
	movq	-56(%rbp), %rax	# src_elt, tmp201
	movq	(%rax), %rax	# src_elt_1->exp, D.22533
	.loc 1 6780 0
	movq	%rdx, %rsi	# D.22533,
	movq	%rax, %rdi	# D.22533,
	call	gen_move_insn	#
	movq	%rax, -24(%rbp)	# tmp202, move
	.loc 1 6782 0
	call	max_reg_num	#
	cmpl	-68(%rbp), %eax	# nregs, D.22537
	je	.L1898	#,
	.loc 1 6784 0
	movq	-32(%rbp), %rax	# set, tmp203
	movq	16(%rax), %rdx	# set_74->fld[1].rtx, D.22533
	movq	-88(%rbp), %rax	# x, tmp204
	leaq	16(%rax), %rsi	#, D.22539
	movq	-96(%rbp), %rax	# insn, tmp205
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp205,
	call	validate_change	#
	testl	%eax, %eax	# D.22537
	jne	.L1897	#,
	.loc 1 6786 0
	movl	$__FUNCTION__.12690, %edx	#,
	movl	$6786, %esi	#,
	movl	$.LC2, %edi	#,
	call	fancy_abort	#
.L1898:
	.loc 1 6789 0
	movq	-48(%rbp), %rdx	# p, tmp206
	movq	-24(%rbp), %rax	# move, tmp207
	movq	%rdx, %rsi	# tmp206,
	movq	%rax, %rdi	# tmp207,
	call	emit_insn_after	#
.L1897:
.LBE139:
	.loc 1 6791 0
	nop
	jmp	.L1883	#
.L1893:
.LBE138:
	.loc 1 6748 0
	movq	-48(%rbp), %rax	# p, tmp208
	movq	%rax, %rdi	# tmp208,
	call	prev_nonnote_insn	#
	movq	%rax, -48(%rbp)	# tmp209, p
.L1888:
	.loc 1 6745 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, p
	je	.L1883	#,
	.loc 1 6746 0
	movq	-48(%rbp), %rax	# p, tmp210
	movzwl	(%rax), %eax	# p_2->code, D.22532
	cmpw	$34, %ax	#, D.22532
	je	.L1883	#,
	.loc 1 6747 0
	movq	-48(%rbp), %rax	# p, tmp211
	movzwl	(%rax), %eax	# p_2->code, D.22532
	cmpw	$36, %ax	#, D.22532
	jne	.L1899	#,
.L1883:
.LBE137:
	.loc 1 6735 0
	movq	-56(%rbp), %rax	# src_elt, tmp212
	movq	32(%rax), %rax	# src_elt_1->next_same_value, tmp213
	movq	%rax, -56(%rbp)	# tmp213, src_elt
.L1882:
	.loc 1 6734 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, src_elt
	jne	.L1900	#,
.L1876:
	.loc 1 6797 0
	movq	-88(%rbp), %rax	# x, tmp214
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movq	%rax, %rdi	# D.22533,
	call	addr_affects_sp_p	#
	.loc 1 6801 0
	movq	-88(%rbp), %rax	# x, tmp215
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movzwl	(%rax), %eax	# _107->code, D.22532
	cmpw	$61, %ax	#, D.22532
	je	.L1901	#,
	.loc 1 6801 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp216
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movzwl	(%rax), %eax	# _109->code, D.22532
	cmpw	$63, %ax	#, D.22532
	je	.L1901	#,
	.loc 1 6802 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp217
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movzwl	(%rax), %eax	# _111->code, D.22532
	cmpw	$66, %ax	#, D.22532
	jne	.L1902	#,
.L1901:
	.loc 1 6803 0
	movq	-88(%rbp), %rax	# x, tmp218
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22533,
	call	invalidate	#
	jmp	.L1875	#
.L1902:
	.loc 1 6804 0
	movq	-88(%rbp), %rax	# x, tmp219
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movzwl	(%rax), %eax	# _113->code, D.22532
	cmpw	$64, %ax	#, D.22532
	je	.L1904	#,
	.loc 1 6805 0
	movq	-88(%rbp), %rax	# x, tmp220
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movzwl	(%rax), %eax	# _115->code, D.22532
	cmpw	$133, %ax	#, D.22532
	jne	.L1875	#,
.L1904:
	.loc 1 6806 0
	movq	-88(%rbp), %rax	# x, tmp221
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movzbl	2(%rax), %eax	# _117->mode, D.22534
	movzbl	%al, %edx	# D.22534, D.22535
	movq	-88(%rbp), %rax	# x, tmp222
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.22533
	movq	8(%rax), %rax	# _120->fld[0].rtx, D.22533
	movl	%edx, %esi	# D.22535,
	movq	%rax, %rdi	# D.22533,
	call	invalidate	#
.L1875:
	.loc 1 6807 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	cse_set_around_loop, .-cse_set_around_loop
	.globl	cse_end_of_basic_block
	.type	cse_end_of_basic_block, @function
cse_end_of_basic_block:
.LFB53:
	.loc 1 6830 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# insn, insn
	movq	%rsi, -80(%rbp)	# data, data
	movl	%edx, -84(%rbp)	# follow_jumps, follow_jumps
	movl	%ecx, -88(%rbp)	# after_loop, after_loop
	movl	%r8d, -92(%rbp)	# skip_blocks, skip_blocks
	.loc 1 6831 0
	movq	-72(%rbp), %rax	# insn, tmp155
	movq	%rax, -32(%rbp)	# tmp155, p
	.loc 1 6832 0
	movl	$0, -56(%rbp)	#, nsets
	.loc 1 6833 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.955
	movq	-72(%rbp), %rax	# insn, tmp156
	movl	8(%rax), %eax	# insn_26(D)->fld[0].rtint, D.22540
	cltq
	salq	$2, %rax	#, D.22541
	addq	%rdx, %rax	# uid_cuid.955, D.22542
	movl	(%rax), %eax	# *_33, tmp157
	movl	%eax, -52(%rbp)	# tmp157, low_cuid
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.956
	movq	-72(%rbp), %rax	# insn, tmp158
	movl	8(%rax), %eax	# insn_26(D)->fld[0].rtint, D.22540
	cltq
	salq	$2, %rax	#, D.22541
	addq	%rdx, %rax	# uid_cuid.956, D.22542
	movl	(%rax), %eax	# *_39, tmp159
	movl	%eax, -48(%rbp)	# tmp159, high_cuid
	.loc 1 6834 0
	movq	-72(%rbp), %rax	# insn, tmp160
	movzwl	(%rax), %eax	# insn_26(D)->code, D.22543
	movzwl	%ax, %eax	# D.22543, D.22540
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22544
	cmpb	$105, %al	#, D.22544
	je	.L1906	#,
	.loc 1 6834 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# insn, tmp162
	movq	%rax, %rdi	# tmp162,
	call	next_real_insn	#
	jmp	.L1907	#
.L1906:
	.loc 1 6834 0 discriminator 2
	movq	-72(%rbp), %rax	# insn, iftmp.957
.L1907:
	.loc 1 6834 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.957, next
	.loc 1 6835 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# data, tmp163
	movl	24(%rax), %eax	# data_47(D)->path_size, tmp164
	movl	%eax, -44(%rbp)	# tmp164, path_size
	.loc 1 6836 0 discriminator 3
	movl	$0, -40(%rbp)	#, path_entry
	.loc 1 6843 0 discriminator 3
	jmp	.L1908	#
.L1911:
	.loc 1 6845 0
	movl	-44(%rbp), %eax	# path_size, tmp165
	leal	-1(%rax), %edx	#, D.22540
	movq	-80(%rbp), %rax	# data, tmp166
	movslq	%edx, %rdx	# D.22540, tmp167
	addq	$2, %rdx	#, tmp168
	salq	$4, %rdx	#, tmp169
	addq	%rdx, %rax	# tmp169, tmp170
	movl	8(%rax), %eax	# data_47(D)->path[_50].status, D.22545
	cmpl	$1, %eax	#, D.22545
	je	.L1909	#,
	.loc 1 6847 0
	movl	-44(%rbp), %eax	# path_size, tmp171
	leal	-1(%rax), %edx	#, D.22540
	movq	-80(%rbp), %rax	# data, tmp172
	movslq	%edx, %rdx	# D.22540, tmp173
	addq	$2, %rdx	#, tmp174
	salq	$4, %rdx	#, tmp175
	addq	%rdx, %rax	# tmp175, tmp176
	movl	$1, 8(%rax)	#, data_47(D)->path[_52].status
	.loc 1 6848 0
	jmp	.L1910	#
.L1909:
	.loc 1 6851 0
	subl	$1, -44(%rbp)	#, path_size
.L1908:
	.loc 1 6843 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, path_size
	jg	.L1911	#,
.L1910:
	.loc 1 6860 0
	movq	-72(%rbp), %rax	# insn, tmp177
	movzbl	2(%rax), %eax	# insn_26(D)->mode, D.22546
	cmpb	$2, %al	#, D.22546
	jne	.L1912	#,
	.loc 1 6861 0
	movl	$0, -92(%rbp)	#, skip_blocks
	movl	-92(%rbp), %eax	# skip_blocks, tmp178
	movl	%eax, -84(%rbp)	# tmp178, follow_jumps
	.loc 1 6864 0
	jmp	.L1913	#
.L1912:
	jmp	.L1913	#
.L1947:
	.loc 1 6879 0
	cmpl	$0, -88(%rbp)	#, after_loop
	jne	.L1914	#,
	.loc 1 6879 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp179
	movzwl	(%rax), %eax	# p_5->code, D.22543
	cmpw	$37, %ax	#, D.22543
	jne	.L1914	#,
	.loc 1 6880 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp180
	movl	40(%rax), %eax	# p_5->fld[4].rtint, D.22540
	cmpl	$-95, %eax	#, D.22540
	jne	.L1914	#,
	.loc 1 6881 0
	jmp	.L1915	#
.L1914:
	.loc 1 6886 0
	movq	-32(%rbp), %rax	# p, tmp181
	movq	16(%rax), %rax	# p_5->fld[1].rtx, D.22547
	testq	%rax, %rax	# D.22547
	je	.L1916	#,
	.loc 1 6886 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp182
	movq	16(%rax), %rax	# p_5->fld[1].rtx, D.22547
	movzwl	(%rax), %eax	# _64->code, D.22543
	cmpw	$34, %ax	#, D.22543
	jne	.L1916	#,
	.loc 1 6887 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp183
	movq	16(%rax), %rax	# p_5->fld[1].rtx, D.22547
	movl	$0, %edx	#,
	movl	$28, %esi	#,
	movq	%rax, %rdi	# D.22547,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22547
	je	.L1916	#,
	.loc 1 6888 0
	jmp	.L1915	#
.L1916:
	.loc 1 6892 0
	movq	-32(%rbp), %rax	# p, tmp184
	movzwl	(%rax), %eax	# p_5->code, D.22543
	movzwl	%ax, %eax	# D.22543, D.22540
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22544
	cmpb	$105, %al	#, D.22544
	jne	.L1917	#,
	.loc 1 6892 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp186
	movq	32(%rax), %rax	# p_5->fld[3].rtx, D.22547
	movzwl	(%rax), %eax	# _71->code, D.22543
	cmpw	$39, %ax	#, D.22543
	jne	.L1917	#,
	.loc 1 6893 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp187
	movq	32(%rax), %rax	# p_5->fld[3].rtx, D.22547
	movq	8(%rax), %rax	# _73->fld[0].rtvec, D.22548
	movl	(%rax), %eax	# _74->num_elem, D.22540
	addl	%eax, -56(%rbp)	# D.22540, nsets
	jmp	.L1918	#
.L1917:
	.loc 1 6894 0
	movq	-32(%rbp), %rax	# p, tmp188
	movzwl	(%rax), %eax	# p_5->code, D.22543
	cmpw	$37, %ax	#, D.22543
	je	.L1918	#,
	.loc 1 6895 0
	addl	$1, -56(%rbp)	#, nsets
.L1918:
	.loc 1 6900 0
	movq	-32(%rbp), %rax	# p, tmp189
	movl	8(%rax), %edx	# p_5->fld[0].rtint, D.22540
	movl	max_uid(%rip), %eax	# max_uid, max_uid.958
	cmpl	%eax, %edx	# max_uid.958, D.22540
	jg	.L1919	#,
	.loc 1 6900 0 is_stmt 0 discriminator 1
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.959
	movq	-32(%rbp), %rax	# p, tmp190
	movl	8(%rax), %eax	# p_5->fld[0].rtint, D.22540
	cltq
	salq	$2, %rax	#, D.22541
	addq	%rdx, %rax	# uid_cuid.959, D.22542
	movl	(%rax), %eax	# *_85, D.22540
	cmpl	-48(%rbp), %eax	# high_cuid, D.22540
	jle	.L1919	#,
	.loc 1 6901 0 is_stmt 1
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.960
	movq	-32(%rbp), %rax	# p, tmp191
	movl	8(%rax), %eax	# p_5->fld[0].rtint, D.22540
	cltq
	salq	$2, %rax	#, D.22541
	addq	%rdx, %rax	# uid_cuid.960, D.22542
	movl	(%rax), %eax	# *_91, tmp192
	movl	%eax, -48(%rbp)	# tmp192, high_cuid
.L1919:
	.loc 1 6902 0
	movq	-32(%rbp), %rax	# p, tmp193
	movl	8(%rax), %edx	# p_5->fld[0].rtint, D.22540
	movl	max_uid(%rip), %eax	# max_uid, max_uid.961
	cmpl	%eax, %edx	# max_uid.961, D.22540
	jg	.L1920	#,
	.loc 1 6902 0 is_stmt 0 discriminator 1
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.962
	movq	-32(%rbp), %rax	# p, tmp194
	movl	8(%rax), %eax	# p_5->fld[0].rtint, D.22540
	cltq
	salq	$2, %rax	#, D.22541
	addq	%rdx, %rax	# uid_cuid.962, D.22542
	movl	(%rax), %eax	# *_99, D.22540
	cmpl	-52(%rbp), %eax	# low_cuid, D.22540
	jge	.L1920	#,
	.loc 1 6903 0 is_stmt 1
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.963
	movq	-32(%rbp), %rax	# p, tmp195
	movl	8(%rax), %eax	# p_5->fld[0].rtint, D.22540
	cltq
	salq	$2, %rax	#, D.22541
	addq	%rdx, %rax	# uid_cuid.963, D.22542
	movl	(%rax), %eax	# *_105, tmp196
	movl	%eax, -52(%rbp)	# tmp196, low_cuid
.L1920:
	.loc 1 6907 0
	movl	-40(%rbp), %eax	# path_entry, tmp197
	cmpl	-44(%rbp), %eax	# path_size, tmp197
	jge	.L1921	#,
	.loc 1 6907 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# data, tmp198
	movl	-40(%rbp), %edx	# path_entry, tmp200
	movslq	%edx, %rdx	# tmp200, tmp199
	addq	$2, %rdx	#, tmp201
	salq	$4, %rdx	#, tmp202
	addq	%rdx, %rax	# tmp202, tmp203
	movq	(%rax), %rax	# data_47(D)->path[path_entry_20].branch, D.22547
	cmpq	-32(%rbp), %rax	# p, D.22547
	jne	.L1921	#,
	.loc 1 6909 0 is_stmt 1
	movq	-80(%rbp), %rax	# data, tmp204
	movl	-40(%rbp), %edx	# path_entry, tmp206
	movslq	%edx, %rdx	# tmp206, tmp205
	addq	$2, %rdx	#, tmp207
	salq	$4, %rdx	#, tmp208
	addq	%rdx, %rax	# tmp208, tmp209
	movl	8(%rax), %eax	# data_47(D)->path[path_entry_20].status, D.22545
	cmpl	$1, %eax	#, D.22545
	je	.L1922	#,
	.loc 1 6910 0
	movq	-32(%rbp), %rax	# p, tmp210
	movq	64(%rax), %rax	# p_5->fld[7].rtx, tmp211
	movq	%rax, -32(%rbp)	# tmp211, p
.L1922:
	.loc 1 6913 0
	addl	$1, -40(%rbp)	#, path_entry
	jmp	.L1923	#
.L1921:
	.loc 1 6926 0
	cmpl	$0, -84(%rbp)	#, follow_jumps
	jne	.L1924	#,
	.loc 1 6926 0 is_stmt 0 discriminator 2
	cmpl	$0, -92(%rbp)	#, skip_blocks
	je	.L1923	#,
.L1924:
	.loc 1 6926 0 discriminator 1
	cmpl	$8, -44(%rbp)	#, path_size
	jg	.L1923	#,
	.loc 1 6927 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp212
	movzwl	(%rax), %eax	# p_5->code, D.22543
	cmpw	$33, %ax	#, D.22543
	jne	.L1923	#,
	.loc 1 6928 0
	movq	-32(%rbp), %rax	# p, tmp213
	movq	32(%rax), %rax	# p_5->fld[3].rtx, D.22547
	movzwl	(%rax), %eax	# _112->code, D.22543
	cmpw	$47, %ax	#, D.22543
	jne	.L1923	#,
	.loc 1 6929 0
	movq	-32(%rbp), %rax	# p, tmp214
	movq	32(%rax), %rax	# p_5->fld[3].rtx, D.22547
	movq	16(%rax), %rax	# _114->fld[1].rtx, D.22547
	movzwl	(%rax), %eax	# _115->code, D.22543
	cmpw	$72, %ax	#, D.22543
	jne	.L1923	#,
	.loc 1 6930 0
	movq	-32(%rbp), %rax	# p, tmp215
	movq	64(%rax), %rax	# p_5->fld[7].rtx, D.22547
	testq	%rax, %rax	# D.22547
	je	.L1923	#,
	.loc 1 6931 0
	movq	-32(%rbp), %rax	# p, tmp216
	movq	64(%rax), %rax	# p_5->fld[7].rtx, D.22547
	movl	32(%rax), %eax	# _118->fld[3].rtint, D.22540
	cmpl	$1, %eax	#, D.22540
	jne	.L1923	#,
	.loc 1 6932 0
	movq	-32(%rbp), %rax	# p, tmp217
	movq	64(%rax), %rax	# p_5->fld[7].rtx, D.22547
	movq	24(%rax), %rax	# _120->fld[2].rtx, D.22547
	testq	%rax, %rax	# D.22547
	je	.L1923	#,
	.loc 1 6934 0
	movq	-32(%rbp), %rax	# p, tmp218
	movq	64(%rax), %rax	# p_5->fld[7].rtx, D.22547
	movq	16(%rax), %rax	# _122->fld[1].rtx, tmp219
	movq	%rax, -24(%rbp)	# tmp219, q
	jmp	.L1925	#
.L1929:
	.loc 1 6935 0
	movq	-24(%rbp), %rax	# q, tmp220
	movzwl	(%rax), %eax	# q_6->code, D.22543
	cmpw	$37, %ax	#, D.22543
	jne	.L1926	#,
	.loc 1 6936 0
	movq	-24(%rbp), %rax	# q, tmp221
	movl	40(%rax), %eax	# q_6->fld[4].rtint, D.22540
	cmpl	$-95, %eax	#, D.22540
	je	.L1926	#,
	.loc 1 6937 0
	movq	-24(%rbp), %rax	# q, tmp222
	movq	16(%rax), %rax	# q_6->fld[1].rtx, D.22547
	testq	%rax, %rax	# D.22547
	je	.L1927	#,
	.loc 1 6937 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# q, tmp223
	movq	16(%rax), %rax	# q_6->fld[1].rtx, D.22547
	movzwl	(%rax), %eax	# _127->code, D.22543
	cmpw	$34, %ax	#, D.22543
	jne	.L1927	#,
	.loc 1 6938 0 is_stmt 1
	movq	-24(%rbp), %rax	# q, tmp224
	movq	16(%rax), %rax	# q_6->fld[1].rtx, D.22547
	movl	$0, %edx	#,
	movl	$28, %esi	#,
	movq	%rax, %rdi	# D.22547,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22547
	je	.L1927	#,
.L1926:
	.loc 1 6939 0
	movq	-24(%rbp), %rax	# q, tmp225
	movzwl	(%rax), %eax	# q_6->code, D.22543
	cmpw	$36, %ax	#, D.22543
	jne	.L1928	#,
	.loc 1 6939 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# q, tmp226
	movl	32(%rax), %eax	# q_6->fld[3].rtint, D.22540
	testl	%eax, %eax	# D.22540
	jne	.L1928	#,
.L1927:
	.loc 1 6934 0 is_stmt 1
	movq	-24(%rbp), %rax	# q, tmp227
	movq	16(%rax), %rax	# q_6->fld[1].rtx, tmp228
	movq	%rax, -24(%rbp)	# tmp228, q
.L1925:
	.loc 1 6934 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, q
	jne	.L1929	#,
.L1928:
	.loc 1 6944 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, follow_jumps
	je	.L1930	#,
	.loc 1 6944 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, q
	je	.L1930	#,
	movq	-24(%rbp), %rax	# q, tmp229
	movzwl	(%rax), %eax	# q_6->code, D.22543
	cmpw	$35, %ax	#, D.22543
	jne	.L1930	#,
	.loc 1 6948 0 is_stmt 1
	movq	-24(%rbp), %rax	# q, tmp230
	movq	%rax, %rdi	# tmp230,
	call	next_real_insn	#
	cmpq	-8(%rbp), %rax	# next, D.22547
	jne	.L1931	#,
	.loc 1 6950 0
	movq	-32(%rbp), %rax	# p, tmp231
	movq	24(%rax), %rax	# p_5->fld[2].rtx, tmp232
	movq	%rax, -32(%rbp)	# tmp232, p
	.loc 1 6951 0
	jmp	.L1913	#
.L1931:
	.loc 1 6955 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L1932	#
.L1935:
	.loc 1 6956 0
	movq	-80(%rbp), %rax	# data, tmp233
	movl	-36(%rbp), %edx	# i, tmp235
	movslq	%edx, %rdx	# tmp235, tmp234
	addq	$2, %rdx	#, tmp236
	salq	$4, %rdx	#, tmp237
	addq	%rdx, %rax	# tmp237, tmp238
	movq	(%rax), %rax	# data_47(D)->path[i_21].branch, D.22547
	cmpq	-32(%rbp), %rax	# p, D.22547
	jne	.L1933	#,
	.loc 1 6957 0
	jmp	.L1934	#
.L1933:
	.loc 1 6955 0
	addl	$1, -36(%rbp)	#, i
.L1932:
	.loc 1 6955 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp239
	cmpl	-40(%rbp), %eax	# path_entry, tmp239
	jl	.L1935	#,
.L1934:
	.loc 1 6959 0 is_stmt 1
	movl	-36(%rbp), %eax	# i, tmp240
	cmpl	-40(%rbp), %eax	# path_entry, tmp240
	je	.L1936	#,
	.loc 1 6960 0
	jmp	.L1915	#
.L1936:
	.loc 1 6962 0
	movq	-80(%rbp), %rax	# data, tmp241
	movl	-40(%rbp), %edx	# path_entry, tmp243
	movslq	%edx, %rdx	# tmp243, tmp242
	addq	$2, %rdx	#, tmp244
	salq	$4, %rdx	#, tmp245
	addq	%rax, %rdx	# tmp241, tmp246
	movq	-32(%rbp), %rax	# p, tmp247
	movq	%rax, (%rdx)	# tmp247, data_47(D)->path[path_entry_20].branch
	.loc 1 6963 0
	movl	-40(%rbp), %eax	# path_entry, path_entry.964
	leal	1(%rax), %edx	#, tmp248
	movl	%edx, -40(%rbp)	# tmp248, path_entry
	movq	-80(%rbp), %rdx	# data, tmp249
	cltq
	addq	$2, %rax	#, tmp251
	salq	$4, %rax	#, tmp252
	addq	%rdx, %rax	# tmp249, tmp253
	movl	$0, 8(%rax)	#, data_47(D)->path[path_entry.964_140].status
	.loc 1 6969 0
	movl	-40(%rbp), %eax	# path_entry, tmp254
	movl	%eax, -44(%rbp)	# tmp254, path_size
	.loc 1 6971 0
	movq	-32(%rbp), %rax	# p, tmp255
	movq	64(%rax), %rax	# p_5->fld[7].rtx, tmp256
	movq	%rax, -32(%rbp)	# tmp256, p
	.loc 1 6973 0
	movq	-32(%rbp), %rax	# p, tmp257
	movq	24(%rax), %rax	# p_143->fld[2].rtx, D.22547
	movb	$2, 2(%rax)	#, _144->mode
	jmp	.L1923	#
.L1930:
	.loc 1 6976 0
	cmpl	$0, -92(%rbp)	#, skip_blocks
	je	.L1923	#,
	.loc 1 6976 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, q
	je	.L1923	#,
	movq	-24(%rbp), %rax	# q, tmp258
	movzwl	(%rax), %eax	# q_6->code, D.22543
	cmpw	$36, %ax	#, D.22543
	je	.L1923	#,
.LBB140:
	.loc 1 6980 0 is_stmt 1
	movq	-24(%rbp), %rax	# q, tmp259
	movq	%rax, %rdi	# tmp259,
	call	next_real_insn	#
	cmpq	-8(%rbp), %rax	# next, D.22547
	jne	.L1937	#,
	.loc 1 6982 0
	movq	-32(%rbp), %rax	# p, tmp260
	movq	24(%rax), %rax	# p_5->fld[2].rtx, tmp261
	movq	%rax, -32(%rbp)	# tmp261, p
	.loc 1 6983 0
	jmp	.L1913	#
.L1937:
	.loc 1 6986 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L1938	#
.L1941:
	.loc 1 6987 0
	movq	-80(%rbp), %rax	# data, tmp262
	movl	-36(%rbp), %edx	# i, tmp264
	movslq	%edx, %rdx	# tmp264, tmp263
	addq	$2, %rdx	#, tmp265
	salq	$4, %rdx	#, tmp266
	addq	%rdx, %rax	# tmp266, tmp267
	movq	(%rax), %rax	# data_47(D)->path[i_22].branch, D.22547
	cmpq	-32(%rbp), %rax	# p, D.22547
	jne	.L1939	#,
	.loc 1 6988 0
	jmp	.L1940	#
.L1939:
	.loc 1 6986 0
	addl	$1, -36(%rbp)	#, i
.L1938:
	.loc 1 6986 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp268
	cmpl	-40(%rbp), %eax	# path_entry, tmp268
	jl	.L1941	#,
.L1940:
	.loc 1 6990 0 is_stmt 1
	movl	-36(%rbp), %eax	# i, tmp269
	cmpl	-40(%rbp), %eax	# path_entry, tmp269
	je	.L1942	#,
	.loc 1 6991 0
	jmp	.L1915	#
.L1942:
	.loc 1 6995 0
	movq	-32(%rbp), %rax	# p, tmp270
	movq	24(%rax), %rax	# p_5->fld[2].rtx, tmp271
	movq	%rax, -16(%rbp)	# tmp271, tmp
	jmp	.L1943	#
.L1946:
	.loc 1 6996 0
	movq	-16(%rbp), %rax	# tmp, tmp272
	movzwl	(%rax), %eax	# tmp_24->code, D.22543
	cmpw	$36, %ax	#, D.22543
	jne	.L1944	#,
	.loc 1 6997 0
	jmp	.L1945	#
.L1944:
	.loc 1 6995 0
	movq	-16(%rbp), %rax	# tmp, tmp273
	movq	24(%rax), %rax	# tmp_24->fld[2].rtx, tmp274
	movq	%rax, -16(%rbp)	# tmp274, tmp
.L1943:
	.loc 1 6995 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, tmp
	je	.L1945	#,
	.loc 1 6995 0 discriminator 2
	movq	-16(%rbp), %rax	# tmp, tmp275
	cmpq	-24(%rbp), %rax	# q, tmp275
	jne	.L1946	#,
.L1945:
	.loc 1 6999 0 is_stmt 1
	movq	-16(%rbp), %rax	# tmp, tmp276
	cmpq	-24(%rbp), %rax	# q, tmp276
	jne	.L1923	#,
	.loc 1 7001 0
	movq	-80(%rbp), %rax	# data, tmp277
	movl	-40(%rbp), %edx	# path_entry, tmp279
	movslq	%edx, %rdx	# tmp279, tmp278
	addq	$2, %rdx	#, tmp280
	salq	$4, %rdx	#, tmp281
	addq	%rax, %rdx	# tmp277, tmp282
	movq	-32(%rbp), %rax	# p, tmp283
	movq	%rax, (%rdx)	# tmp283, data_47(D)->path[path_entry_20].branch
	.loc 1 7002 0
	movl	-40(%rbp), %eax	# path_entry, path_entry.965
	leal	1(%rax), %edx	#, tmp284
	movl	%edx, -40(%rbp)	# tmp284, path_entry
	movq	-80(%rbp), %rdx	# data, tmp285
	cltq
	addq	$2, %rax	#, tmp287
	salq	$4, %rax	#, tmp288
	addq	%rdx, %rax	# tmp285, tmp289
	movl	$2, 8(%rax)	#, data_47(D)->path[path_entry.965_154].status
	.loc 1 7004 0
	movl	-40(%rbp), %eax	# path_entry, tmp290
	movl	%eax, -44(%rbp)	# tmp290, path_size
	.loc 1 7006 0
	movq	-32(%rbp), %rax	# p, tmp291
	movq	64(%rax), %rax	# p_5->fld[7].rtx, tmp292
	movq	%rax, -32(%rbp)	# tmp292, p
	.loc 1 7008 0
	movq	-32(%rbp), %rax	# p, tmp293
	movq	24(%rax), %rax	# p_157->fld[2].rtx, D.22547
	movb	$2, 2(%rax)	#, _158->mode
.L1923:
.LBE140:
	.loc 1 7012 0
	movq	-32(%rbp), %rax	# p, tmp294
	movq	24(%rax), %rax	# p_4->fld[2].rtx, tmp295
	movq	%rax, -32(%rbp)	# tmp295, p
.L1913:
	.loc 1 6864 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, p
	je	.L1915	#,
	.loc 1 6864 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# p, tmp296
	movzwl	(%rax), %eax	# p_5->code, D.22543
	cmpw	$36, %ax	#, D.22543
	jne	.L1947	#,
.L1915:
	.loc 1 7015 0 is_stmt 1
	movq	-80(%rbp), %rax	# data, tmp297
	movl	-52(%rbp), %edx	# low_cuid, tmp298
	movl	%edx, (%rax)	# tmp298, data_47(D)->low_cuid
	.loc 1 7016 0
	movq	-80(%rbp), %rax	# data, tmp299
	movl	-48(%rbp), %edx	# high_cuid, tmp300
	movl	%edx, 4(%rax)	# tmp300, data_47(D)->high_cuid
	.loc 1 7017 0
	movq	-80(%rbp), %rax	# data, tmp301
	movl	-56(%rbp), %edx	# nsets, tmp302
	movl	%edx, 8(%rax)	# tmp302, data_47(D)->nsets
	.loc 1 7018 0
	movq	-80(%rbp), %rax	# data, tmp303
	movq	-32(%rbp), %rdx	# p, tmp304
	movq	%rdx, 16(%rax)	# tmp304, data_47(D)->last
	.loc 1 7022 0
	movl	-44(%rbp), %eax	# path_size, tmp308
	subl	$1, %eax	#, tmp307
	movl	%eax, -36(%rbp)	# tmp307, i
	jmp	.L1948	#
.L1951:
	.loc 1 7023 0
	movq	-80(%rbp), %rax	# data, tmp309
	movl	-36(%rbp), %edx	# i, tmp311
	movslq	%edx, %rdx	# tmp311, tmp310
	addq	$2, %rdx	#, tmp312
	salq	$4, %rdx	#, tmp313
	addq	%rdx, %rax	# tmp313, tmp314
	movl	8(%rax), %eax	# data_47(D)->path[i_23].status, D.22545
	cmpl	$1, %eax	#, D.22545
	je	.L1949	#,
	.loc 1 7024 0
	jmp	.L1950	#
.L1949:
	.loc 1 7022 0
	subl	$1, -36(%rbp)	#, i
.L1948:
	.loc 1 7022 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L1951	#,
.L1950:
	.loc 1 7026 0 is_stmt 1
	cmpl	$-1, -36(%rbp)	#, i
	jne	.L1952	#,
	.loc 1 7027 0
	movq	-80(%rbp), %rax	# data, tmp315
	movl	$0, 24(%rax)	#, data_47(D)->path_size
	jmp	.L1953	#
.L1952:
	.loc 1 7029 0
	movq	-80(%rbp), %rax	# data, tmp316
	movl	-44(%rbp), %edx	# path_size, tmp317
	movl	%edx, 24(%rax)	# tmp317, data_47(D)->path_size
.L1953:
	.loc 1 7032 0
	movq	-80(%rbp), %rax	# data, tmp318
	movl	-44(%rbp), %edx	# path_size, tmp320
	movslq	%edx, %rdx	# tmp320, tmp319
	addq	$2, %rdx	#, tmp321
	salq	$4, %rdx	#, tmp322
	addq	%rdx, %rax	# tmp322, tmp323
	movq	$0, (%rax)	#, data_47(D)->path[path_size_18].branch
	.loc 1 7033 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	cse_end_of_basic_block, .-cse_end_of_basic_block
	.section	.rodata
	.align 8
.LC3:
	.string	";; Processing block from %d to %d, %d sets.\n"
	.text
	.globl	cse_main
	.type	cse_main, @function
cse_main:
.LFB54:
	.loc 1 7051 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$256, %rsp	#,
	movq	%rdi, -232(%rbp)	# f, f
	movl	%esi, -236(%rbp)	# nregs, nregs
	movl	%edx, -240(%rbp)	# after_loop, after_loop
	movq	%rcx, -248(%rbp)	# file, file
	.loc 1 7053 0
	movq	-232(%rbp), %rax	# f, tmp121
	movq	%rax, -208(%rbp)	# tmp121, insn
	.loc 1 7056 0
	movl	$0, cse_jumps_altered(%rip)	#, cse_jumps_altered
	.loc 1 7057 0
	movl	$0, recorded_label_ref(%rip)	#, recorded_label_ref
	.loc 1 7058 0
	movl	$0, constant_pool_entries_cost(%rip)	#, constant_pool_entries_cost
	.loc 1 7059 0
	movl	$0, -168(%rbp)	#, val.path_size
	.loc 1 7061 0
	call	init_recog	#
	.loc 1 7062 0
	call	init_alias_analysis	#
	.loc 1 7064 0
	movl	-236(%rbp), %eax	# nregs, tmp122
	movl	%eax, max_reg(%rip)	# tmp122, max_reg
	.loc 1 7066 0
	call	get_max_uid	#
	movl	%eax, max_insn_uid(%rip)	# max_insn_uid.966, max_insn_uid
	.loc 1 7069 0
	movl	-236(%rbp), %eax	# nregs, tmp123
	cltq
	salq	$3, %rax	#, D.22549
	movq	%rax, %rdi	# D.22549,
	call	xmalloc	#
	.loc 1 7068 0
	movq	%rax, reg_eqv_table(%rip)	# reg_eqv_table.967, reg_eqv_table
	.loc 1 7080 0
	movl	$0, n_elements_made(%rip)	#, n_elements_made
	.loc 1 7084 0
	call	get_max_uid	#
	movl	%eax, max_uid(%rip)	# max_uid.968, max_uid
	.loc 1 7085 0
	movl	max_uid(%rip), %eax	# max_uid, max_uid.969
	addl	$1, %eax	#, D.22550
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.22549,
	call	xcalloc	#
	movq	%rax, uid_cuid(%rip)	# uid_cuid.970, uid_cuid
	.loc 1 7093 0
	movq	-232(%rbp), %rax	# f, tmp126
	movq	%rax, -208(%rbp)	# tmp126, insn
	movl	$0, -216(%rbp)	#, i
	jmp	.L1955	#
.L1959:
	.loc 1 7095 0
	movq	-208(%rbp), %rax	# insn, tmp127
	movzwl	(%rax), %eax	# insn_1->code, D.22551
	cmpw	$37, %ax	#, D.22551
	jne	.L1956	#,
	.loc 1 7096 0
	movq	-208(%rbp), %rax	# insn, tmp128
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.22550
	testl	%eax, %eax	# D.22550
	jns	.L1957	#,
.L1956:
	.loc 1 7097 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.971
	movq	-208(%rbp), %rax	# insn, tmp129
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.22550
	cltq
	salq	$2, %rax	#, D.22549
	addq	%rax, %rdx	# D.22549, D.22552
	addl	$1, -216(%rbp)	#, i
	movl	-216(%rbp), %eax	# i, tmp130
	movl	%eax, (%rdx)	# tmp130, *_35
	jmp	.L1958	#
.L1957:
	.loc 1 7100 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.972
	movq	-208(%rbp), %rax	# insn, tmp131
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.22550
	cltq
	salq	$2, %rax	#, D.22549
	addq	%rax, %rdx	# D.22549, D.22552
	movl	-216(%rbp), %eax	# i, tmp132
	movl	%eax, (%rdx)	# tmp132, *_30
.L1958:
	.loc 1 7093 0
	movq	-208(%rbp), %rax	# insn, tmp133
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp134
	movq	%rax, -208(%rbp)	# tmp134, insn
.L1955:
	.loc 1 7093 0 is_stmt 0 discriminator 1
	cmpq	$0, -208(%rbp)	#, insn
	jne	.L1959	#,
	.loc 1 7103 0 is_stmt 1
	call	ggc_push_context	#
	.loc 1 7108 0
	movq	-232(%rbp), %rax	# f, tmp135
	movq	%rax, -208(%rbp)	# tmp135, insn
	.loc 1 7109 0
	jmp	.L1960	#
.L1973:
	.loc 1 7111 0
	movl	$0, cse_altered(%rip)	#, cse_altered
	.loc 1 7112 0
	movl	flag_cse_skip_blocks(%rip), %edi	# flag_cse_skip_blocks, flag_cse_skip_blocks.973
	movl	flag_cse_follow_jumps(%rip), %edx	# flag_cse_follow_jumps, flag_cse_follow_jumps.974
	movl	-240(%rbp), %ecx	# after_loop, tmp136
	leaq	-192(%rbp), %rsi	#, tmp137
	movq	-208(%rbp), %rax	# insn, tmp138
	movl	%edi, %r8d	# flag_cse_skip_blocks.973,
	movq	%rax, %rdi	# tmp138,
	call	cse_end_of_basic_block	#
	.loc 1 7116 0
	movl	-184(%rbp), %eax	# val.nsets, D.22550
	testl	%eax, %eax	# D.22550
	je	.L1961	#,
	.loc 1 7116 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# insn, tmp139
	movzbl	2(%rax), %eax	# insn_4->mode, D.22553
	cmpb	$2, %al	#, D.22553
	jne	.L1962	#,
.L1961:
	.loc 1 7118 0 is_stmt 1
	movq	-208(%rbp), %rax	# insn, tmp140
	movb	$0, 2(%rax)	#, insn_4->mode
	.loc 1 7119 0
	movq	-176(%rbp), %rax	# val.last, D.22554
	testq	%rax, %rax	# D.22554
	je	.L1963	#,
	.loc 1 7119 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# val.last, D.22554
	movq	24(%rax), %rax	# _74->fld[2].rtx, iftmp.975
	jmp	.L1964	#
.L1963:
	.loc 1 7119 0 discriminator 2
	movl	$0, %eax	#, iftmp.975
.L1964:
	.loc 1 7119 0 discriminator 3
	movq	%rax, -208(%rbp)	# iftmp.975, insn
	.loc 1 7120 0 is_stmt 1 discriminator 3
	movl	$0, -168(%rbp)	#, val.path_size
	.loc 1 7121 0 discriminator 3
	jmp	.L1960	#
.L1962:
	.loc 1 7124 0
	movl	-192(%rbp), %eax	# val.low_cuid, cse_basic_block_start.976
	movl	%eax, cse_basic_block_start(%rip)	# cse_basic_block_start.976, cse_basic_block_start
	.loc 1 7125 0
	movl	-188(%rbp), %eax	# val.high_cuid, cse_basic_block_end.977
	movl	%eax, cse_basic_block_end(%rip)	# cse_basic_block_end.977, cse_basic_block_end
	.loc 1 7126 0
	movl	-184(%rbp), %eax	# val.nsets, D.22550
	addl	%eax, %eax	# max_qty.978
	movl	%eax, max_qty(%rip)	# max_qty.978, max_qty
	.loc 1 7128 0
	cmpq	$0, -248(%rbp)	#, file
	je	.L1965	#,
	.loc 1 7129 0
	movl	-184(%rbp), %ecx	# val.nsets, D.22550
	.loc 1 7130 0
	movq	-176(%rbp), %rax	# val.last, D.22554
	.loc 1 7129 0
	testq	%rax, %rax	# D.22554
	je	.L1966	#,
	.loc 1 7130 0
	movq	-176(%rbp), %rax	# val.last, D.22554
	.loc 1 7129 0
	movl	8(%rax), %eax	# _51->fld[0].rtint, iftmp.979
	jmp	.L1967	#
.L1966:
	.loc 1 7129 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.979
.L1967:
	.loc 1 7129 0 discriminator 2
	movq	-208(%rbp), %rdx	# insn, tmp141
	movl	8(%rdx), %edx	# insn_4->fld[0].rtint, D.22550
	movq	-248(%rbp), %rdi	# file, tmp142
	movl	%ecx, %r8d	# D.22550,
	movl	%eax, %ecx	# iftmp.979,
	movl	$.LC3, %esi	#,
	movl	$0, %eax	#,
	call	fnotice	#
.L1965:
	.loc 1 7135 0 is_stmt 1
	movl	max_qty(%rip), %eax	# max_qty, max_qty.980
	cmpl	$499, %eax	#, max_qty.980
	jg	.L1968	#,
	.loc 1 7136 0
	movl	$500, max_qty(%rip)	#, max_qty
.L1968:
	.loc 1 7138 0
	movl	max_qty(%rip), %edx	# max_qty, max_qty.981
	movl	max_reg(%rip), %eax	# max_reg, max_reg.982
	addl	%edx, %eax	# max_qty.981, max_qty.983
	movl	%eax, max_qty(%rip)	# max_qty.983, max_qty
	.loc 1 7143 0
	movl	-168(%rbp), %eax	# val.path_size, D.22550
	testl	%eax, %eax	# D.22550
	jle	.L1969	#,
	.loc 1 7144 0
	movq	-176(%rbp), %rsi	# val.last, D.22554
	leaq	-192(%rbp), %rax	#, tmp143
	leaq	32(%rax), %rdx	#, tmp144
	movq	-208(%rbp), %rax	# insn, tmp145
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp145,
	call	cse_basic_block	#
	jmp	.L1970	#
.L1969:
.LBB141:
	.loc 1 7147 0
	movl	cse_jumps_altered(%rip), %eax	# cse_jumps_altered, tmp146
	movl	%eax, -212(%rbp)	# tmp146, old_cse_jumps_altered
	.loc 1 7153 0
	movl	$0, cse_jumps_altered(%rip)	#, cse_jumps_altered
	.loc 1 7154 0
	cmpl	$0, -240(%rbp)	#, after_loop
	sete	%al	#, D.22555
	movzbl	%al, %edx	# D.22555, D.22550
	movq	-176(%rbp), %rsi	# val.last, D.22554
	leaq	-192(%rbp), %rax	#, tmp147
	leaq	32(%rax), %rdi	#, tmp148
	movq	-208(%rbp), %rax	# insn, tmp149
	movl	%edx, %ecx	# D.22550,
	movq	%rdi, %rdx	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	cse_basic_block	#
	movq	%rax, -200(%rbp)	# tmp150, temp
	.loc 1 7155 0
	movl	cse_jumps_altered(%rip), %eax	# cse_jumps_altered, cse_jumps_altered.984
	testl	%eax, %eax	# cse_jumps_altered.984
	je	.L1971	#,
	.loc 1 7156 0
	movl	flag_cse_follow_jumps(%rip), %eax	# flag_cse_follow_jumps, flag_cse_follow_jumps.985
	testl	%eax, %eax	# flag_cse_follow_jumps.985
	jne	.L1972	#,
	.loc 1 7156 0 is_stmt 0 discriminator 1
	movl	flag_cse_skip_blocks(%rip), %eax	# flag_cse_skip_blocks, flag_cse_skip_blocks.986
	testl	%eax, %eax	# flag_cse_skip_blocks.986
	jne	.L1972	#,
.L1971:
	.loc 1 7157 0 is_stmt 1
	movq	-200(%rbp), %rax	# temp, tmp151
	movq	%rax, -208(%rbp)	# tmp151, insn
.L1972:
	.loc 1 7159 0
	movl	cse_jumps_altered(%rip), %eax	# cse_jumps_altered, cse_jumps_altered.987
	orl	-212(%rbp), %eax	# old_cse_jumps_altered, cse_jumps_altered.988
	movl	%eax, cse_jumps_altered(%rip)	# cse_jumps_altered.988, cse_jumps_altered
.L1970:
.LBE141:
	.loc 1 7162 0
	movl	cse_altered(%rip), %eax	# cse_altered, cse_altered.989
	testl	%eax, %eax	# cse_altered.989
	je	.L1960	#,
	.loc 1 7163 0
	call	ggc_collect	#
.L1960:
	.loc 1 7109 0 discriminator 1
	cmpq	$0, -208(%rbp)	#, insn
	jne	.L1973	#,
	.loc 1 7170 0
	call	ggc_pop_context	#
	.loc 1 7172 0
	movl	max_elements_made(%rip), %edx	# max_elements_made, max_elements_made.990
	movl	n_elements_made(%rip), %eax	# n_elements_made, n_elements_made.991
	cmpl	%eax, %edx	# n_elements_made.991, max_elements_made.990
	jge	.L1974	#,
	.loc 1 7173 0
	movl	n_elements_made(%rip), %eax	# n_elements_made, n_elements_made.992
	movl	%eax, max_elements_made(%rip)	# n_elements_made.992, max_elements_made
.L1974:
	.loc 1 7176 0
	call	end_alias_analysis	#
	.loc 1 7177 0
	movq	uid_cuid(%rip), %rax	# uid_cuid, uid_cuid.993
	movq	%rax, %rdi	# uid_cuid.993,
	call	free	#
	.loc 1 7178 0
	movq	reg_eqv_table(%rip), %rax	# reg_eqv_table, reg_eqv_table.994
	movq	%rax, %rdi	# reg_eqv_table.994,
	call	free	#
	.loc 1 7180 0
	movl	cse_jumps_altered(%rip), %eax	# cse_jumps_altered, cse_jumps_altered.996
	testl	%eax, %eax	# cse_jumps_altered.996
	jne	.L1975	#,
	.loc 1 7180 0 is_stmt 0 discriminator 2
	movl	recorded_label_ref(%rip), %eax	# recorded_label_ref, recorded_label_ref.997
	testl	%eax, %eax	# recorded_label_ref.997
	je	.L1976	#,
.L1975:
	.loc 1 7180 0 discriminator 1
	movl	$1, %eax	#, iftmp.995
	jmp	.L1977	#
.L1976:
	.loc 1 7180 0 discriminator 3
	movl	$0, %eax	#, iftmp.995
.L1977:
	.loc 1 7181 0 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	cse_main, .-cse_main
	.type	cse_basic_block, @function
cse_basic_block:
.LFB55:
	.loc 1 7196 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$272, %rsp	#,
	movq	%rdi, -248(%rbp)	# from, from
	movq	%rsi, -256(%rbp)	# to, to
	movq	%rdx, -264(%rbp)	# next_branch, next_branch
	movl	%ecx, -268(%rbp)	# around_loop, around_loop
	.loc 1 7198 0
	movl	$0, -240(%rbp)	#, to_usage
	.loc 1 7199 0
	movq	$0, -216(%rbp)	#, libcall_insn
	.loc 1 7200 0
	movl	$0, -236(%rbp)	#, num_insns
	.loc 1 7206 0
	movl	max_qty(%rip), %edx	# max_qty, max_qty.998
	movl	max_reg(%rip), %eax	# max_reg, max_reg.999
	subl	%eax, %edx	# max_reg.999, D.22558
	movl	%edx, %eax	# D.22558, D.22558
	movslq	%eax, %rdx	# D.22558, D.22559
	movq	%rdx, %rax	# D.22559, tmp146
	addq	%rax, %rax	# tmp146
	addq	%rdx, %rax	# D.22559, tmp146
	salq	$4, %rax	#, tmp147
	movq	%rax, %rdi	# D.22559,
	call	xmalloc	#
	movq	%rax, qty_table(%rip)	# qty_table.1000, qty_table
	.loc 1 7208 0
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.1001
	movl	max_reg(%rip), %eax	# max_reg, max_reg.1002
	movslq	%eax, %rdx	# max_reg.1002, D.22559
	movq	%rdx, %rax	# D.22559, tmp149
	addq	%rax, %rax	# tmp149
	addq	%rdx, %rax	# D.22559, tmp149
	salq	$4, %rax	#, tmp150
	negq	%rax	# D.22560
	addq	%rcx, %rax	# qty_table.1001, qty_table.1003
	movq	%rax, qty_table(%rip)	# qty_table.1003, qty_table
	.loc 1 7210 0
	call	new_basic_block	#
	.loc 1 7213 0
	cmpq	$0, -256(%rbp)	#, to
	je	.L1980	#,
	.loc 1 7213 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# to, tmp151
	movzwl	(%rax), %eax	# to_37(D)->code, D.22561
	cmpw	$36, %ax	#, D.22561
	jne	.L1980	#,
	.loc 1 7214 0 is_stmt 1
	movq	-256(%rbp), %rax	# to, tmp152
	movl	32(%rax), %eax	# to_37(D)->fld[3].rtint, D.22558
	leal	1(%rax), %edx	#, D.22558
	movq	-256(%rbp), %rax	# to, tmp153
	movl	%edx, 32(%rax)	# D.22558, to_37(D)->fld[3].rtint
.L1980:
	.loc 1 7216 0
	movq	-248(%rbp), %rax	# from, tmp154
	movq	%rax, -224(%rbp)	# tmp154, insn
	jmp	.L1981	#
.L2003:
.LBB142:
	.loc 1 7218 0
	movq	-224(%rbp), %rax	# insn, tmp155
	movzwl	(%rax), %eax	# insn_8->code, D.22561
	movzwl	%ax, %eax	# D.22561, tmp156
	movl	%eax, -232(%rbp)	# tmp156, code
	.loc 1 7229 0
	cmpl	$37, -232(%rbp)	#, code
	je	.L1982	#,
	.loc 1 7229 0 is_stmt 0 discriminator 1
	movl	-236(%rbp), %eax	# num_insns, num_insns.1004
	leal	1(%rax), %edx	#, tmp157
	movl	%edx, -236(%rbp)	# tmp157, num_insns
	cmpl	$1000, %eax	#, num_insns.1004
	jle	.L1982	#,
	.loc 1 7231 0 is_stmt 1
	call	flush_hash_table	#
	.loc 1 7232 0
	movl	$0, -236(%rbp)	#, num_insns
.L1982:
	.loc 1 7237 0
	movq	-264(%rbp), %rax	# next_branch, tmp158
	movq	(%rax), %rax	# next_branch_5->branch, D.22562
	cmpq	-224(%rbp), %rax	# insn, D.22562
	jne	.L1983	#,
.LBB143:
	.loc 1 7239 0
	movq	-264(%rbp), %rax	# next_branch, next_branch.1005
	leaq	16(%rax), %rdx	#, tmp159
	movq	%rdx, -264(%rbp)	# tmp159, next_branch
	movl	8(%rax), %eax	# next_branch.1005_50->status, tmp160
	movl	%eax, -228(%rbp)	# tmp160, status
	.loc 1 7240 0
	cmpl	$1, -228(%rbp)	#, status
	je	.L1983	#,
	.loc 1 7242 0
	cmpl	$0, -228(%rbp)	#, status
	jne	.L1984	#,
	.loc 1 7243 0
	movq	-224(%rbp), %rax	# insn, tmp161
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp161,
	call	record_jump_equiv	#
	jmp	.L1985	#
.L1984:
	.loc 1 7245 0
	movq	-224(%rbp), %rax	# insn, tmp162
	movq	24(%rax), %rax	# insn_8->fld[2].rtx, D.22562
	movq	%rax, %rdi	# D.22562,
	call	invalidate_skipped_block	#
.L1985:
	.loc 1 7252 0
	movq	-224(%rbp), %rax	# insn, tmp163
	movq	%rax, prev_insn(%rip)	# tmp163, prev_insn
	.loc 1 7253 0
	movq	-224(%rbp), %rax	# insn, tmp164
	movq	64(%rax), %rax	# insn_8->fld[7].rtx, tmp165
	movq	%rax, -224(%rbp)	# tmp165, insn
	.loc 1 7254 0
	jmp	.L1986	#
.L1983:
.LBE143:
	.loc 1 7258 0
	movq	-224(%rbp), %rax	# insn, tmp166
	movzbl	2(%rax), %eax	# insn_8->mode, D.22563
	cmpb	$2, %al	#, D.22563
	jne	.L1987	#,
	.loc 1 7259 0
	movq	-224(%rbp), %rax	# insn, tmp167
	movb	$0, 2(%rax)	#, insn_8->mode
.L1987:
	.loc 1 7261 0
	movl	-232(%rbp), %eax	# code, code.1006
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22564
	cmpb	$105, %al	#, D.22564
	jne	.L1988	#,
.LBB144:
	.loc 1 7268 0
	movq	-224(%rbp), %rax	# insn, tmp169
	movq	56(%rax), %rax	# insn_8->fld[6].rtx, D.22562
	testq	%rax, %rax	# D.22562
	je	.L1989	#,
	.loc 1 7269 0
	movq	-224(%rbp), %rax	# insn, tmp170
	movq	56(%rax), %rax	# insn_8->fld[6].rtx, D.22562
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22562,
	call	cse_process_notes	#
	movq	-224(%rbp), %rdx	# insn, tmp171
	movq	%rax, 56(%rdx)	# D.22562, insn_8->fld[6].rtx
.L1989:
	.loc 1 7277 0
	movq	-224(%rbp), %rax	# insn, tmp172
	movq	56(%rax), %rax	# insn_8->fld[6].rtx, D.22562
	testq	%rax, %rax	# D.22562
	je	.L1990	#,
	.loc 1 7279 0
	movq	-224(%rbp), %rax	# insn, tmp173
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp173,
	call	find_reg_note	#
	movq	%rax, -208(%rbp)	# tmp174, p
	cmpq	$0, -208(%rbp)	#, p
	je	.L1991	#,
	.loc 1 7280 0
	movq	-208(%rbp), %rax	# p, tmp175
	movq	8(%rax), %rax	# p_62->fld[0].rtx, tmp176
	movq	%rax, -216(%rbp)	# tmp176, libcall_insn
	jmp	.L1990	#
.L1991:
	.loc 1 7281 0
	movq	-224(%rbp), %rax	# insn, tmp177
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp177,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22562
	je	.L1990	#,
	.loc 1 7282 0
	movq	$0, -216(%rbp)	#, libcall_insn
.L1990:
	.loc 1 7285 0
	movq	-216(%rbp), %rdx	# libcall_insn, tmp178
	movq	-224(%rbp), %rax	# insn, tmp179
	movq	%rdx, %rsi	# tmp178,
	movq	%rax, %rdi	# tmp179,
	call	cse_insn	#
	.loc 1 7289 0
	movq	-224(%rbp), %rax	# insn, tmp180
	movzwl	(%rax), %eax	# insn_8->code, D.22561
	cmpw	$32, %ax	#, D.22561
	jne	.L1988	#,
	.loc 1 7289 0 is_stmt 0 discriminator 1
	movl	recorded_label_ref(%rip), %eax	# recorded_label_ref, recorded_label_ref.1007
	testl	%eax, %eax	# recorded_label_ref.1007
	jne	.L1988	#,
	.loc 1 7290 0 is_stmt 1
	movq	-224(%rbp), %rax	# insn, tmp181
	leaq	32(%rax), %rcx	#, D.22565
	movq	-224(%rbp), %rax	# insn, tmp182
	movq	%rax, %rdx	# tmp182,
	movl	$check_for_label_ref, %esi	#,
	movq	%rcx, %rdi	# D.22565,
	call	for_each_rtx	#
	testl	%eax, %eax	# D.22558
	je	.L1988	#,
	.loc 1 7292 0
	movl	$1, recorded_label_ref(%rip)	#, recorded_label_ref
.L1988:
.LBE144:
	.loc 1 7300 0
	movq	-224(%rbp), %rax	# insn, tmp183
	movq	%rax, %rdi	# tmp183,
	call	any_uncondjump_p	#
	testl	%eax, %eax	# D.22558
	je	.L1992	#,
	.loc 1 7302 0
	cmpq	$0, -256(%rbp)	#, to
	jne	.L1993	#,
	.loc 1 7304 0
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.1008
	movl	max_reg(%rip), %eax	# max_reg, max_reg.1009
	movslq	%eax, %rdx	# max_reg.1009, D.22559
	movq	%rdx, %rax	# D.22559, tmp184
	addq	%rax, %rax	# tmp184
	addq	%rdx, %rax	# D.22559, tmp184
	salq	$4, %rax	#, tmp185
	addq	%rcx, %rax	# qty_table.1008, D.22566
	movq	%rax, %rdi	# D.22566,
	call	free	#
	.loc 1 7305 0
	movl	$0, %eax	#, D.22557
	jmp	.L1994	#
.L1993:
	.loc 1 7308 0
	movq	-224(%rbp), %rax	# insn, tmp186
	movq	64(%rax), %rax	# insn_8->fld[7].rtx, D.22562
	cmpq	-256(%rbp), %rax	# to, D.22562
	jne	.L1995	#,
	.loc 1 7309 0
	movl	$1, -240(%rbp)	#, to_usage
.L1995:
	.loc 1 7316 0
	movq	-256(%rbp), %rax	# to, tmp187
	movzbl	3(%rax), %eax	# *to_2, D.22563
	andl	$8, %eax	#, D.22563
	testb	%al, %al	# D.22563
	je	.L1996	#,
	.loc 1 7317 0
	jmp	.L1997	#
.L1996:
	.loc 1 7319 0
	movq	-256(%rbp), %rax	# to, tmp188
	movq	16(%rax), %rax	# to_2->fld[1].rtx, tmp189
	movq	%rax, -224(%rbp)	# tmp189, insn
.L1992:
	.loc 1 7328 0
	cmpq	$0, -256(%rbp)	#, to
	je	.L1986	#,
	.loc 1 7328 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# insn, tmp190
	movq	24(%rax), %rax	# insn_6->fld[2].rtx, D.22562
	cmpq	-256(%rbp), %rax	# to, D.22562
	jne	.L1986	#,
	.loc 1 7329 0 is_stmt 1
	movq	-256(%rbp), %rax	# to, tmp191
	movzwl	(%rax), %eax	# to_2->code, D.22561
	cmpw	$36, %ax	#, D.22561
	jne	.L1986	#,
	.loc 1 7329 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# to, tmp192
	movl	32(%rax), %eax	# to_2->fld[3].rtint, D.22558
	leal	-1(%rax), %edx	#, D.22558
	movq	-256(%rbp), %rax	# to, tmp193
	movl	%edx, 32(%rax)	# D.22558, to_2->fld[3].rtint
	movq	-256(%rbp), %rax	# to, tmp194
	movl	32(%rax), %eax	# to_2->fld[3].rtint, D.22558
	cmpl	-240(%rbp), %eax	# to_usage, D.22558
	jne	.L1986	#,
.LBB145:
	.loc 1 7334 0 is_stmt 1
	movq	-256(%rbp), %rax	# to, tmp195
	movq	24(%rax), %rax	# to_2->fld[2].rtx, tmp196
	movq	%rax, -224(%rbp)	# tmp196, insn
	.loc 1 7337 0
	cmpq	$0, -224(%rbp)	#, insn
	jne	.L1998	#,
	.loc 1 7339 0
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.1010
	movl	max_reg(%rip), %eax	# max_reg, max_reg.1011
	movslq	%eax, %rdx	# max_reg.1011, D.22559
	movq	%rdx, %rax	# D.22559, tmp197
	addq	%rax, %rax	# tmp197
	addq	%rdx, %rax	# D.22559, tmp197
	salq	$4, %rax	#, tmp198
	addq	%rcx, %rax	# qty_table.1010, D.22566
	movq	%rax, %rdi	# D.22566,
	call	free	#
	.loc 1 7340 0
	movl	$0, %eax	#, D.22557
	jmp	.L1994	#
.L1998:
	.loc 1 7345 0
	movq	-256(%rbp), %rax	# to, tmp199
	movq	%rax, %rdi	# tmp199,
	call	prev_nonnote_insn	#
	movq	%rax, -200(%rbp)	# tmp200, prev
	.loc 1 7346 0
	cmpq	$0, -200(%rbp)	#, prev
	je	.L2000	#,
	.loc 1 7346 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# prev, tmp201
	movzwl	(%rax), %eax	# prev_94->code, D.22561
	cmpw	$35, %ax	#, D.22561
	jne	.L2000	#,
	.loc 1 7348 0 is_stmt 1
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.1012
	movl	max_reg(%rip), %eax	# max_reg, max_reg.1013
	movslq	%eax, %rdx	# max_reg.1013, D.22559
	movq	%rdx, %rax	# D.22559, tmp202
	addq	%rax, %rax	# tmp202
	addq	%rdx, %rax	# D.22559, tmp202
	salq	$4, %rax	#, tmp203
	addq	%rcx, %rax	# qty_table.1012, D.22566
	movq	%rax, %rdi	# D.22566,
	call	free	#
	.loc 1 7349 0
	movq	-224(%rbp), %rax	# insn, D.22557
	jmp	.L1994	#
.L2000:
	.loc 1 7354 0
	movl	$0, -240(%rbp)	#, to_usage
	.loc 1 7355 0
	movl	$0, -168(%rbp)	#, val.path_size
	.loc 1 7356 0
	leaq	-192(%rbp), %rsi	#, tmp204
	movq	-224(%rbp), %rax	# insn, tmp205
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp205,
	call	cse_end_of_basic_block	#
	.loc 1 7362 0
	movl	-184(%rbp), %eax	# val.nsets, D.22558
	leal	(%rax,%rax), %edx	#, D.22558
	movl	next_qty(%rip), %eax	# next_qty, next_qty.1014
	addl	%eax, %edx	# next_qty.1014, D.22558
	movl	max_qty(%rip), %eax	# max_qty, max_qty.1015
	cmpl	%eax, %edx	# max_qty.1015, D.22558
	jg	.L1997	#,
	.loc 1 7365 0
	movl	-192(%rbp), %eax	# val.low_cuid, cse_basic_block_start.1016
	movl	%eax, cse_basic_block_start(%rip)	# cse_basic_block_start.1016, cse_basic_block_start
	.loc 1 7366 0
	movl	-188(%rbp), %eax	# val.high_cuid, cse_basic_block_end.1017
	movl	%eax, cse_basic_block_end(%rip)	# cse_basic_block_end.1017, cse_basic_block_end
	.loc 1 7367 0
	movq	-176(%rbp), %rax	# val.last, tmp206
	movq	%rax, -256(%rbp)	# tmp206, to
	.loc 1 7370 0
	cmpq	$0, -256(%rbp)	#, to
	je	.L2002	#,
	.loc 1 7370 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# to, tmp207
	movzwl	(%rax), %eax	# to_110->code, D.22561
	cmpw	$36, %ax	#, D.22561
	jne	.L2002	#,
	.loc 1 7371 0 is_stmt 1
	movq	-256(%rbp), %rax	# to, tmp208
	movl	32(%rax), %eax	# to_110->fld[3].rtint, D.22558
	leal	1(%rax), %edx	#, D.22558
	movq	-256(%rbp), %rax	# to, tmp209
	movl	%edx, 32(%rax)	# D.22558, to_110->fld[3].rtint
.L2002:
	.loc 1 7374 0
	movq	-224(%rbp), %rax	# insn, tmp210
	movq	16(%rax), %rax	# insn_87->fld[1].rtx, tmp211
	movq	%rax, -224(%rbp)	# tmp211, insn
.L1986:
.LBE145:
.LBE142:
	.loc 1 7216 0
	movq	-224(%rbp), %rax	# insn, tmp212
	movq	24(%rax), %rax	# insn_7->fld[2].rtx, tmp213
	movq	%rax, -224(%rbp)	# tmp213, insn
.L1981:
	.loc 1 7216 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# insn, tmp214
	cmpq	-256(%rbp), %rax	# to, tmp214
	jne	.L2003	#,
.L1997:
	.loc 1 7378 0 is_stmt 1
	movl	next_qty(%rip), %edx	# next_qty, next_qty.1018
	movl	max_qty(%rip), %eax	# max_qty, max_qty.1019
	cmpl	%eax, %edx	# max_qty.1019, next_qty.1018
	jle	.L2004	#,
	.loc 1 7379 0
	movl	$__FUNCTION__.12771, %edx	#,
	movl	$7379, %esi	#,
	movl	$.LC2, %edi	#,
	call	fancy_abort	#
.L2004:
	.loc 1 7386 0
	movq	-256(%rbp), %rax	# to, tmp215
	movq	%rax, %rdi	# tmp215,
	call	prev_nonnote_insn	#
	movq	%rax, -224(%rbp)	# tmp216, insn
	.loc 1 7387 0
	movl	cse_jumps_altered(%rip), %eax	# cse_jumps_altered, cse_jumps_altered.1020
	testl	%eax, %eax	# cse_jumps_altered.1020
	je	.L2005	#,
	.loc 1 7388 0
	movl	flag_cse_follow_jumps(%rip), %eax	# flag_cse_follow_jumps, flag_cse_follow_jumps.1021
	testl	%eax, %eax	# flag_cse_follow_jumps.1021
	jne	.L2006	#,
	.loc 1 7388 0 is_stmt 0 discriminator 1
	movl	flag_cse_skip_blocks(%rip), %eax	# flag_cse_skip_blocks, flag_cse_skip_blocks.1022
	testl	%eax, %eax	# flag_cse_skip_blocks.1022
	jne	.L2006	#,
.L2005:
	.loc 1 7389 0 is_stmt 1
	cmpl	$0, -268(%rbp)	#, around_loop
	je	.L2006	#,
	.loc 1 7389 0 is_stmt 0 discriminator 1
	cmpq	$0, -256(%rbp)	#, to
	je	.L2006	#,
	.loc 1 7390 0 is_stmt 1
	movq	-256(%rbp), %rax	# to, tmp217
	movzwl	(%rax), %eax	# to_2->code, D.22561
	cmpw	$37, %ax	#, D.22561
	jne	.L2006	#,
	.loc 1 7390 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# to, tmp218
	movl	40(%rax), %eax	# to_2->fld[4].rtint, D.22558
	cmpl	$-95, %eax	#, D.22558
	jne	.L2006	#,
	.loc 1 7391 0 is_stmt 1
	movq	-224(%rbp), %rax	# insn, tmp219
	movzwl	(%rax), %eax	# insn_118->code, D.22561
	cmpw	$33, %ax	#, D.22561
	jne	.L2006	#,
	.loc 1 7392 0
	movq	-224(%rbp), %rax	# insn, tmp220
	movq	64(%rax), %rax	# insn_118->fld[7].rtx, D.22562
	testq	%rax, %rax	# D.22562
	je	.L2006	#,
	.loc 1 7393 0
	movq	-224(%rbp), %rax	# insn, tmp221
	movq	64(%rax), %rax	# insn_118->fld[7].rtx, D.22562
	movl	32(%rax), %eax	# _127->fld[3].rtint, D.22558
	cmpl	$1, %eax	#, D.22558
	jne	.L2006	#,
	.loc 1 7394 0
	movq	-224(%rbp), %rax	# insn, tmp222
	movq	64(%rax), %rax	# insn_118->fld[7].rtx, D.22562
	movq	%rax, %rdi	# D.22562,
	call	cse_around_loop	#
.L2006:
	.loc 1 7396 0
	movq	qty_table(%rip), %rcx	# qty_table, qty_table.1023
	movl	max_reg(%rip), %eax	# max_reg, max_reg.1024
	movslq	%eax, %rdx	# max_reg.1024, D.22559
	movq	%rdx, %rax	# D.22559, tmp223
	addq	%rax, %rax	# tmp223
	addq	%rdx, %rax	# D.22559, tmp223
	salq	$4, %rax	#, tmp224
	addq	%rcx, %rax	# qty_table.1023, D.22566
	movq	%rax, %rdi	# D.22566,
	call	free	#
	.loc 1 7398 0
	cmpq	$0, -256(%rbp)	#, to
	je	.L2007	#,
	.loc 1 7398 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# to, tmp225
	movq	24(%rax), %rax	# to_2->fld[2].rtx, iftmp.1025
	jmp	.L2008	#
.L2007:
	.loc 1 7398 0 discriminator 2
	movl	$0, %eax	#, iftmp.1025
.L2008:
.L1994:
	.loc 1 7399 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	cse_basic_block, .-cse_basic_block
	.type	check_for_label_ref, @function
check_for_label_ref:
.LFB56:
	.loc 1 7408 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# rtl, rtl
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 7409 0
	movq	-32(%rbp), %rax	# data, tmp76
	movq	%rax, -8(%rbp)	# tmp76, insn
	.loc 1 7415 0
	movq	-24(%rbp), %rax	# rtl, tmp77
	movq	(%rax), %rax	# *rtl_4(D), D.22567
	movzwl	(%rax), %eax	# _5->code, D.22568
	.loc 1 7419 0
	cmpw	$67, %ax	#, D.22568
	jne	.L2010	#,
	.loc 1 7416 0
	movq	-24(%rbp), %rax	# rtl, tmp78
	movq	(%rax), %rax	# *rtl_4(D), D.22567
	movzbl	3(%rax), %eax	# *_7, D.22569
	andl	$8, %eax	#, D.22569
	testb	%al, %al	# D.22569
	jne	.L2010	#,
	.loc 1 7417 0
	movq	-24(%rbp), %rax	# rtl, tmp79
	movq	(%rax), %rax	# *rtl_4(D), D.22567
	movq	8(%rax), %rax	# _10->fld[0].rtx, D.22567
	movzwl	(%rax), %eax	# _11->code, D.22568
	cmpw	$36, %ax	#, D.22568
	jne	.L2010	#,
	.loc 1 7418 0
	movq	-24(%rbp), %rax	# rtl, tmp80
	movq	(%rax), %rax	# *rtl_4(D), D.22567
	movq	8(%rax), %rax	# _13->fld[0].rtx, D.22567
	movl	8(%rax), %eax	# _14->fld[0].rtint, D.22570
	testl	%eax, %eax	# D.22570
	je	.L2010	#,
	.loc 1 7419 0
	movq	-24(%rbp), %rax	# rtl, tmp81
	movq	(%rax), %rax	# *rtl_4(D), D.22567
	movq	8(%rax), %rdx	# _16->fld[0].rtx, D.22567
	movq	-8(%rbp), %rax	# insn, tmp82
	movl	$13, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22567
	jne	.L2010	#,
	.loc 1 7419 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.1026
	jmp	.L2011	#
.L2010:
	.loc 1 7419 0 discriminator 1
	movl	$0, %eax	#, iftmp.1026
.L2011:
	.loc 1 7420 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	check_for_label_ref, .-check_for_label_ref
	.type	count_reg_usage, @function
count_reg_usage:
.LFB57:
	.loc 1 7436 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# counts, counts
	movq	%rdx, -56(%rbp)	# dest, dest
	movl	%ecx, -60(%rbp)	# incr, incr
	.loc 1 7441 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L2014	#,
	.loc 1 7442 0
	jmp	.L2013	#
.L2014:
	.loc 1 7444 0
	movq	-40(%rbp), %rax	# x, tmp105
	movzwl	(%rax), %eax	# x_4(D)->code, D.22571
	movzwl	%ax, %eax	# D.22571, tmp106
	movl	%eax, -12(%rbp)	# tmp106, code
	movl	-12(%rbp), %eax	# code, tmp108
	subl	$3, %eax	#, tmp107
	cmpl	$66, %eax	#, tmp107
	ja	.L2039	#,
	movl	%eax, %eax	# tmp107, tmp109
	movq	.L2018(,%rax,8), %rax	#, tmp110
	jmp	*%rax	# tmp110
	.section	.rodata
	.align 8
	.align 4
.L2018:
	.quad	.L2017
	.quad	.L2017
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2019
	.quad	.L2019
	.quad	.L2020
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2021
	.quad	.L2039
	.quad	.L2022
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2040
	.quad	.L2040
	.quad	.L2040
	.quad	.L2039
	.quad	.L2040
	.quad	.L2040
	.quad	.L2039
	.quad	.L2024
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2039
	.quad	.L2040
	.quad	.L2040
	.quad	.L2040
	.text
.L2024:
	.loc 1 7447 0
	movq	-40(%rbp), %rax	# x, tmp111
	cmpq	-56(%rbp), %rax	# dest, tmp111
	je	.L2025	#,
	.loc 1 7448 0
	movq	-40(%rbp), %rax	# x, tmp112
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.22572
	movl	%eax, %eax	# D.22572, D.22573
	leaq	0(,%rax,4), %rdx	#, D.22573
	movq	-48(%rbp), %rax	# counts, tmp113
	addq	%rax, %rdx	# tmp113, D.22574
	movq	-40(%rbp), %rax	# x, tmp114
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.22572
	movl	%eax, %eax	# D.22572, D.22573
	leaq	0(,%rax,4), %rcx	#, D.22573
	movq	-48(%rbp), %rax	# counts, tmp115
	addq	%rcx, %rax	# D.22573, D.22574
	movl	(%rax), %ecx	# *_16, D.22575
	movl	-60(%rbp), %eax	# incr, tmp116
	addl	%ecx, %eax	# D.22575, D.22575
	movl	%eax, (%rdx)	# D.22575, *_12
	.loc 1 7449 0
	jmp	.L2013	#
.L2025:
	jmp	.L2013	#
.L2022:
	.loc 1 7464 0
	movq	-40(%rbp), %rax	# x, tmp117
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.22576
	movzwl	(%rax), %eax	# _20->code, D.22571
	cmpw	$66, %ax	#, D.22571
	jne	.L2026	#,
	.loc 1 7465 0
	movq	-40(%rbp), %rax	# x, tmp118
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.22576
	movq	8(%rax), %rax	# _22->fld[0].rtx, D.22576
	movl	-60(%rbp), %edx	# incr, tmp119
	movq	-48(%rbp), %rsi	# counts, tmp120
	movl	%edx, %ecx	# tmp119,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.22576,
	call	count_reg_usage	#
	.loc 1 7466 0
	jmp	.L2013	#
.L2026:
	jmp	.L2013	#
.L2021:
	.loc 1 7470 0
	movq	-40(%rbp), %rax	# x, tmp121
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.22576
	movzwl	(%rax), %eax	# _24->code, D.22571
	cmpw	$61, %ax	#, D.22571
	je	.L2027	#,
	.loc 1 7471 0
	movq	-40(%rbp), %rax	# x, tmp122
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.22576
	movl	-60(%rbp), %edx	# incr, tmp123
	movq	-48(%rbp), %rsi	# counts, tmp124
	movl	%edx, %ecx	# tmp123,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.22576,
	call	count_reg_usage	#
.L2027:
	.loc 1 7480 0
	movq	-40(%rbp), %rax	# x, tmp125
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.22576
	movq	%rax, %rdi	# D.22576,
	call	side_effects_p	#
	.loc 1 7479 0
	testl	%eax, %eax	# D.22575
	jne	.L2028	#,
	.loc 1 7479 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp126
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, iftmp.1027
	jmp	.L2029	#
.L2028:
	.loc 1 7479 0 discriminator 2
	movl	$0, %eax	#, iftmp.1027
.L2029:
	.loc 1 7479 0 discriminator 3
	movq	-40(%rbp), %rdx	# x, tmp127
	movq	16(%rdx), %rdi	# x_4(D)->fld[1].rtx, D.22576
	movl	-60(%rbp), %edx	# incr, tmp128
	movq	-48(%rbp), %rsi	# counts, tmp129
	movl	%edx, %ecx	# tmp128,
	movq	%rax, %rdx	# iftmp.1027,
	call	count_reg_usage	#
	.loc 1 7482 0 is_stmt 1 discriminator 3
	jmp	.L2013	#
.L2020:
	.loc 1 7485 0
	movq	-40(%rbp), %rax	# x, tmp130
	movq	64(%rax), %rax	# x_4(D)->fld[7].rtx, D.22576
	movl	-60(%rbp), %edx	# incr, tmp131
	movq	-48(%rbp), %rsi	# counts, tmp132
	movl	%edx, %ecx	# tmp131,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.22576,
	call	count_reg_usage	#
.L2019:
	.loc 1 7490 0
	movq	-40(%rbp), %rax	# x, tmp133
	movq	32(%rax), %rax	# x_4(D)->fld[3].rtx, D.22576
	movl	-60(%rbp), %edx	# incr, tmp134
	movq	-48(%rbp), %rsi	# counts, tmp135
	movl	%edx, %ecx	# tmp134,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.22576,
	call	count_reg_usage	#
	.loc 1 7495 0
	movq	-40(%rbp), %rax	# x, tmp136
	movq	56(%rax), %rax	# x_4(D)->fld[6].rtx, D.22576
	movl	-60(%rbp), %edx	# incr, tmp137
	movq	-48(%rbp), %rsi	# counts, tmp138
	movl	%edx, %ecx	# tmp137,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.22576,
	call	count_reg_usage	#
	.loc 1 7496 0
	jmp	.L2013	#
.L2017:
	.loc 1 7500 0
	movq	-40(%rbp), %rax	# x, tmp139
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.22577
	cmpb	$4, %al	#, D.22577
	je	.L2030	#,
	.loc 1 7501 0
	movq	-40(%rbp), %rax	# x, tmp140
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.22577
	cmpb	$8, %al	#, D.22577
	je	.L2031	#,
	.loc 1 7501 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp141
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.22576
	movzwl	(%rax), %eax	# _37->code, D.22571
	cmpw	$48, %ax	#, D.22571
	jne	.L2031	#,
.L2030:
	.loc 1 7502 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp142
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.22576
	movl	-60(%rbp), %edx	# incr, tmp143
	movq	-48(%rbp), %rsi	# counts, tmp144
	movl	%edx, %ecx	# tmp143,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.22576,
	call	count_reg_usage	#
.L2031:
	.loc 1 7503 0
	movq	-40(%rbp), %rax	# x, tmp145
	movq	16(%rax), %rax	# x_4(D)->fld[1].rtx, D.22576
	movl	-60(%rbp), %edx	# incr, tmp146
	movq	-48(%rbp), %rsi	# counts, tmp147
	movl	%edx, %ecx	# tmp146,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.22576,
	call	count_reg_usage	#
	.loc 1 7504 0
	jmp	.L2013	#
.L2039:
	.loc 1 7507 0
	nop
	.loc 1 7510 0
	movl	-12(%rbp), %eax	# code, code.1028
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp149
	movq	%rax, -8(%rbp)	# tmp149, fmt
	.loc 1 7511 0
	movl	-12(%rbp), %eax	# code, code.1029
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22577
	movzbl	%al, %eax	# D.22577, D.22575
	subl	$1, %eax	#, tmp151
	movl	%eax, -20(%rbp)	# tmp151, i
	jmp	.L2032	#
.L2037:
	.loc 1 7513 0
	movl	-20(%rbp), %eax	# i, tmp152
	movslq	%eax, %rdx	# tmp152, D.22578
	movq	-8(%rbp), %rax	# fmt, tmp153
	addq	%rdx, %rax	# D.22578, D.22579
	movzbl	(%rax), %eax	# *_48, D.22580
	cmpb	$101, %al	#, D.22580
	jne	.L2033	#,
	.loc 1 7514 0
	movq	-40(%rbp), %rax	# x, tmp154
	movl	-20(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, tmp155
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.22576
	movl	-60(%rbp), %ecx	# incr, tmp157
	movq	-56(%rbp), %rdx	# dest, tmp158
	movq	-48(%rbp), %rsi	# counts, tmp159
	movq	%rax, %rdi	# D.22576,
	call	count_reg_usage	#
	jmp	.L2034	#
.L2033:
	.loc 1 7515 0
	movl	-20(%rbp), %eax	# i, tmp160
	movslq	%eax, %rdx	# tmp160, D.22578
	movq	-8(%rbp), %rax	# fmt, tmp161
	addq	%rdx, %rax	# D.22578, D.22579
	movzbl	(%rax), %eax	# *_52, D.22580
	cmpb	$69, %al	#, D.22580
	jne	.L2034	#,
	.loc 1 7516 0
	movq	-40(%rbp), %rax	# x, tmp162
	movl	-20(%rbp), %edx	# i, tmp164
	movslq	%edx, %rdx	# tmp164, tmp163
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.22581
	movl	(%rax), %eax	# _54->num_elem, D.22575
	subl	$1, %eax	#, tmp165
	movl	%eax, -16(%rbp)	# tmp165, j
	jmp	.L2035	#
.L2036:
	.loc 1 7517 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp166
	movl	-20(%rbp), %edx	# i, tmp168
	movslq	%edx, %rdx	# tmp168, tmp167
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.22581
	movl	-16(%rbp), %edx	# j, tmp170
	movslq	%edx, %rdx	# tmp170, tmp169
	movq	8(%rax,%rdx,8), %rax	# _57->elem, D.22576
	movl	-60(%rbp), %ecx	# incr, tmp171
	movq	-56(%rbp), %rdx	# dest, tmp172
	movq	-48(%rbp), %rsi	# counts, tmp173
	movq	%rax, %rdi	# D.22576,
	call	count_reg_usage	#
	.loc 1 7516 0 discriminator 2
	subl	$1, -16(%rbp)	#, j
.L2035:
	.loc 1 7516 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L2036	#,
.L2034:
	.loc 1 7511 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L2032:
	.loc 1 7511 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L2037	#,
	jmp	.L2013	#
.L2040:
	.loc 1 7459 0 is_stmt 1
	nop
.L2013:
	.loc 1 7519 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	count_reg_usage, .-count_reg_usage
	.type	set_live_p, @function
set_live_p:
.LFB58:
	.loc 1 7527 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# set, set
	movq	%rsi, -16(%rbp)	# insn, insn
	movq	%rdx, -24(%rbp)	# counts, counts
	.loc 1 7532 0
	movq	-8(%rbp), %rax	# set, tmp77
	movq	%rax, %rdi	# tmp77,
	call	set_noop_p	#
	testl	%eax, %eax	# D.22583
	jne	.L2042	#,
	.loc 1 7543 0
	movq	-8(%rbp), %rax	# set, tmp78
	movq	8(%rax), %rax	# set_2(D)->fld[0].rtx, D.22584
	movzwl	(%rax), %eax	# _4->code, D.22585
	cmpw	$61, %ax	#, D.22585
	jne	.L2043	#,
	.loc 1 7544 0
	movq	-8(%rbp), %rax	# set, tmp79
	movq	8(%rax), %rax	# set_2(D)->fld[0].rtx, D.22584
	movl	8(%rax), %eax	# _6->fld[0].rtuint, D.22586
	cmpl	$52, %eax	#, D.22586
	jbe	.L2043	#,
	.loc 1 7545 0
	movq	-8(%rbp), %rax	# set, tmp80
	movq	8(%rax), %rax	# set_2(D)->fld[0].rtx, D.22584
	movl	8(%rax), %eax	# _8->fld[0].rtuint, D.22586
	movl	%eax, %eax	# D.22586, D.22587
	leaq	0(,%rax,4), %rdx	#, D.22587
	movq	-24(%rbp), %rax	# counts, tmp81
	addq	%rdx, %rax	# D.22587, D.22588
	movl	(%rax), %eax	# *_13, D.22583
	testl	%eax, %eax	# D.22583
	jne	.L2043	#,
	.loc 1 7546 0
	movq	-8(%rbp), %rax	# set, tmp82
	movq	16(%rax), %rax	# set_2(D)->fld[1].rtx, D.22584
	movq	%rax, %rdi	# D.22584,
	call	side_effects_p	#
	testl	%eax, %eax	# D.22583
	jne	.L2043	#,
	.loc 1 7551 0
	movq	-8(%rbp), %rax	# set, tmp83
	movq	8(%rax), %rdx	# set_2(D)->fld[0].rtx, D.22584
	movq	cfun(%rip), %rax	# cfun, cfun.1030
	movq	128(%rax), %rax	# cfun.1030_18->internal_arg_pointer, D.22584
	cmpq	%rax, %rdx	# D.22584, D.22584
	jne	.L2042	#,
.L2043:
	.loc 1 7552 0
	movl	$1, %eax	#, D.22582
	jmp	.L2044	#
.L2042:
	.loc 1 7553 0
	movl	$0, %eax	#, D.22582
.L2044:
	.loc 1 7554 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	set_live_p, .-set_live_p
	.type	insn_live_p, @function
insn_live_p:
.LFB59:
	.loc 1 7562 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# counts, counts
	.loc 1 7564 0
	movq	-24(%rbp), %rax	# insn, tmp75
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.22590
	movzwl	(%rax), %eax	# _4->code, D.22591
	cmpw	$47, %ax	#, D.22591
	jne	.L2046	#,
	.loc 1 7565 0
	movq	-24(%rbp), %rax	# insn, tmp76
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.22590
	movq	-32(%rbp), %rdx	# counts, tmp77
	movq	-24(%rbp), %rcx	# insn, tmp78
	movq	%rcx, %rsi	# tmp78,
	movq	%rax, %rdi	# D.22590,
	call	set_live_p	#
	jmp	.L2047	#
.L2046:
	.loc 1 7566 0
	movq	-24(%rbp), %rax	# insn, tmp79
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.22590
	movzwl	(%rax), %eax	# _9->code, D.22591
	cmpw	$39, %ax	#, D.22591
	jne	.L2048	#,
	.loc 1 7568 0
	movq	-24(%rbp), %rax	# insn, tmp80
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.22590
	movq	8(%rax), %rax	# _11->fld[0].rtvec, D.22592
	movl	(%rax), %eax	# _12->num_elem, D.22593
	subl	$1, %eax	#, tmp81
	movl	%eax, -12(%rbp)	# tmp81, i
	jmp	.L2049	#
.L2052:
.LBB146:
	.loc 1 7570 0
	movq	-24(%rbp), %rax	# insn, tmp82
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.22590
	movq	8(%rax), %rax	# _15->fld[0].rtvec, D.22592
	movl	-12(%rbp), %edx	# i, tmp84
	movslq	%edx, %rdx	# tmp84, tmp83
	movq	8(%rax,%rdx,8), %rax	# _16->elem, tmp85
	movq	%rax, -8(%rbp)	# tmp85, elt
	.loc 1 7572 0
	movq	-8(%rbp), %rax	# elt, tmp86
	movzwl	(%rax), %eax	# elt_17->code, D.22591
	cmpw	$47, %ax	#, D.22591
	jne	.L2050	#,
	.loc 1 7574 0
	movq	-32(%rbp), %rdx	# counts, tmp87
	movq	-24(%rbp), %rcx	# insn, tmp88
	movq	-8(%rbp), %rax	# elt, tmp89
	movq	%rcx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	set_live_p	#
	testb	%al, %al	# D.22589
	je	.L2051	#,
	.loc 1 7575 0
	movl	$1, %eax	#, D.22589
	jmp	.L2047	#
.L2050:
	.loc 1 7577 0
	movq	-8(%rbp), %rax	# elt, tmp90
	movzwl	(%rax), %eax	# elt_17->code, D.22591
	cmpw	$49, %ax	#, D.22591
	je	.L2051	#,
	.loc 1 7577 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# elt, tmp91
	movzwl	(%rax), %eax	# elt_17->code, D.22591
	cmpw	$48, %ax	#, D.22591
	je	.L2051	#,
	.loc 1 7578 0 is_stmt 1
	movl	$1, %eax	#, D.22589
	jmp	.L2047	#
.L2051:
.LBE146:
	.loc 1 7568 0
	subl	$1, -12(%rbp)	#, i
.L2049:
	.loc 1 7568 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, i
	jns	.L2052	#,
	.loc 1 7580 0 is_stmt 1
	movl	$0, %eax	#, D.22589
	jmp	.L2047	#
.L2048:
	.loc 1 7583 0
	movl	$1, %eax	#, D.22589
.L2047:
	.loc 1 7584 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	insn_live_p, .-insn_live_p
	.type	dead_libcall_p, @function
dead_libcall_p:
.LFB60:
	.loc 1 7591 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 7598 0
	movq	-40(%rbp), %rax	# insn, tmp73
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	find_reg_note	#
	movq	%rax, -16(%rbp)	# tmp74, note
	.loc 1 7599 0
	cmpq	$0, -16(%rbp)	#, note
	je	.L2054	#,
.LBB147:
	.loc 1 7601 0
	movq	-40(%rbp), %rax	# insn, tmp75
	movzwl	(%rax), %eax	# insn_5(D)->code, D.22595
	movzwl	%ax, %eax	# D.22595, D.22596
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22597
	cmpb	$105, %al	#, D.22597
	jne	.L2055	#,
	.loc 1 7601 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp77
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, D.22598
	movzwl	(%rax), %eax	# _10->code, D.22595
	cmpw	$47, %ax	#, D.22595
	jne	.L2056	#,
	.loc 1 7601 0 discriminator 3
	movq	-40(%rbp), %rax	# insn, tmp78
	movq	32(%rax), %rax	# insn_5(D)->fld[3].rtx, iftmp.1032
	jmp	.L2058	#
.L2056:
	.loc 1 7601 0 discriminator 4
	movq	-40(%rbp), %rax	# insn, tmp79
	movq	32(%rax), %rdx	# insn_5(D)->fld[3].rtx, D.22598
	movq	-40(%rbp), %rax	# insn, tmp80
	movq	%rdx, %rsi	# D.22598,
	movq	%rax, %rdi	# tmp80,
	call	single_set_2	#
	jmp	.L2058	#
.L2055:
	.loc 1 7601 0 discriminator 2
	movl	$0, %eax	#, iftmp.1031
.L2058:
	.loc 1 7601 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.1031, set
	.loc 1 7602 0 is_stmt 1 discriminator 5
	movq	-16(%rbp), %rax	# note, tmp81
	movq	8(%rax), %rax	# note_6->fld[0].rtx, D.22598
	movq	%rax, %rdi	# D.22598,
	call	simplify_rtx	#
	movq	%rax, -24(%rbp)	# tmp82, new
	.loc 1 7604 0 discriminator 5
	cmpq	$0, -24(%rbp)	#, new
	jne	.L2059	#,
	.loc 1 7605 0
	movq	-16(%rbp), %rax	# note, tmp83
	movq	8(%rax), %rax	# note_6->fld[0].rtx, tmp84
	movq	%rax, -24(%rbp)	# tmp84, new
.L2059:
	.loc 1 7607 0
	cmpq	$0, -8(%rbp)	#, set
	je	.L2054	#,
	.loc 1 7607 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# set, tmp85
	leaq	16(%rax), %rsi	#, D.22599
	movq	-24(%rbp), %rdx	# new, tmp86
	movq	-40(%rbp), %rax	# insn, tmp87
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp87,
	call	validate_change	#
	testl	%eax, %eax	# D.22596
	je	.L2054	#,
	.loc 1 7609 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp88
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	find_reg_note	#
	movq	%rax, %rdx	#, D.22598
	movq	-40(%rbp), %rax	# insn, tmp89
	movq	%rdx, %rsi	# D.22598,
	movq	%rax, %rdi	# tmp89,
	call	remove_note	#
	.loc 1 7610 0
	movl	$1, %eax	#, D.22594
	jmp	.L2060	#
.L2054:
.LBE147:
	.loc 1 7613 0
	movl	$0, %eax	#, D.22594
.L2060:
	.loc 1 7614 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	dead_libcall_p, .-dead_libcall_p
	.globl	delete_trivially_dead_insns
	.type	delete_trivially_dead_insns, @function
delete_trivially_dead_insns:
.LFB61:
	.loc 1 7629 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# insns, insns
	movl	%esi, -76(%rbp)	# nreg, nreg
	movl	%edx, -80(%rbp)	# preserve_basic_blocks, preserve_basic_blocks
	.loc 1 7633 0
	movl	$0, -48(%rbp)	#, in_libcall
	movl	$0, -44(%rbp)	#, dead_libcall
	.loc 1 7637 0
	movl	-76(%rbp), %eax	# nreg, tmp79
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.22600,
	call	xcalloc	#
	movq	%rax, -24(%rbp)	# tmp80, counts
	.loc 1 7638 0
	movq	-72(%rbp), %rax	# insns, tmp81
	movq	%rax, %rdi	# tmp81,
	call	next_real_insn	#
	movq	%rax, -32(%rbp)	# tmp82, insn
	jmp	.L2062	#
.L2063:
	.loc 1 7639 0 discriminator 2
	movq	-24(%rbp), %rsi	# counts, tmp83
	movq	-32(%rbp), %rax	# insn, tmp84
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp84,
	call	count_reg_usage	#
	.loc 1 7638 0 discriminator 2
	movq	-32(%rbp), %rax	# insn, tmp85
	movq	%rax, %rdi	# tmp85,
	call	next_real_insn	#
	movq	%rax, -32(%rbp)	# tmp86, insn
.L2062:
	.loc 1 7638 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	jne	.L2063	#,
	.loc 1 7648 0 is_stmt 1
	call	get_last_insn	#
	movq	%rax, -32(%rbp)	# tmp87, insn
	.loc 1 7649 0
	movq	-32(%rbp), %rax	# insn, tmp88
	movzwl	(%rax), %eax	# insn_30->code, D.22601
	movzwl	%ax, %eax	# D.22601, D.22602
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22603
	cmpb	$105, %al	#, D.22603
	je	.L2064	#,
	.loc 1 7650 0
	movq	-32(%rbp), %rax	# insn, tmp90
	movq	%rax, %rdi	# tmp90,
	call	prev_real_insn	#
	movq	%rax, -32(%rbp)	# tmp91, insn
.L2064:
	.loc 1 7652 0
	cmpl	$0, -80(%rbp)	#, preserve_basic_blocks
	jne	.L2065	#,
	.loc 1 7653 0
	jmp	.L2066	#
.L2072:
.LBB148:
	.loc 1 7655 0
	movl	$0, -40(%rbp)	#, live_insn
	.loc 1 7657 0
	movq	-32(%rbp), %rax	# insn, tmp92
	movq	%rax, %rdi	# tmp92,
	call	prev_real_insn	#
	movq	%rax, -16(%rbp)	# tmp93, prev
	.loc 1 7664 0
	movq	-32(%rbp), %rax	# insn, tmp94
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22604
	je	.L2067	#,
	.loc 1 7666 0
	movl	$1, -48(%rbp)	#, in_libcall
	.loc 1 7667 0
	movl	$1, -40(%rbp)	#, live_insn
	.loc 1 7668 0
	movq	-32(%rbp), %rax	# insn, tmp95
	movq	%rax, %rdi	# tmp95,
	call	dead_libcall_p	#
	movzbl	%al, %eax	# D.22605, tmp96
	movl	%eax, -44(%rbp)	# tmp96, dead_libcall
	jmp	.L2068	#
.L2067:
	.loc 1 7670 0
	cmpl	$0, -48(%rbp)	#, in_libcall
	je	.L2069	#,
	.loc 1 7671 0
	cmpl	$0, -44(%rbp)	#, dead_libcall
	sete	%al	#, D.22605
	movzbl	%al, %eax	# D.22605, tmp97
	movl	%eax, -40(%rbp)	# tmp97, live_insn
	jmp	.L2068	#
.L2069:
	.loc 1 7673 0
	movq	-24(%rbp), %rdx	# counts, tmp98
	movq	-32(%rbp), %rax	# insn, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	insn_live_p	#
	movzbl	%al, %eax	# D.22605, tmp100
	movl	%eax, -40(%rbp)	# tmp100, live_insn
.L2068:
	.loc 1 7678 0
	cmpl	$0, -40(%rbp)	#, live_insn
	jne	.L2070	#,
	.loc 1 7680 0
	movq	-24(%rbp), %rsi	# counts, tmp101
	movq	-32(%rbp), %rax	# insn, tmp102
	movl	$-1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp102,
	call	count_reg_usage	#
	.loc 1 7681 0
	movq	-32(%rbp), %rax	# insn, tmp103
	movq	%rax, %rdi	# tmp103,
	call	delete_related_insns	#
.L2070:
	.loc 1 7684 0
	movq	-32(%rbp), %rax	# insn, tmp104
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22604
	je	.L2071	#,
	.loc 1 7686 0
	movl	$0, -48(%rbp)	#, in_libcall
	.loc 1 7687 0
	movl	$0, -44(%rbp)	#, dead_libcall
.L2071:
.LBE148:
	.loc 1 7653 0
	movq	-16(%rbp), %rax	# prev, tmp105
	movq	%rax, -32(%rbp)	# tmp105, insn
.L2066:
	.loc 1 7653 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	jne	.L2072	#,
	jmp	.L2073	#
.L2065:
	.loc 1 7691 0 is_stmt 1
	movl	$0, -52(%rbp)	#, i
	jmp	.L2074	#
.L2083:
	.loc 1 7692 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.1033
	movl	-52(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	addq	$4, %rdx	#, tmp108
	movq	(%rax,%rdx,8), %rax	# basic_block_info.1033_53->data.bb, tmp109
	movq	%rax, -8(%rbp)	# tmp109, bb
	movq	-8(%rbp), %rax	# bb, tmp110
	movq	8(%rax), %rax	# bb_54->end, tmp111
	movq	%rax, -32(%rbp)	# tmp111, insn
	jmp	.L2075	#
.L2082:
.LBB149:
	.loc 1 7694 0
	movl	$0, -36(%rbp)	#, live_insn
	.loc 1 7696 0
	movq	-32(%rbp), %rax	# insn, tmp112
	movq	16(%rax), %rax	# insn_4->fld[1].rtx, tmp113
	movq	%rax, -16(%rbp)	# tmp113, prev
	.loc 1 7697 0
	movq	-32(%rbp), %rax	# insn, tmp114
	movzwl	(%rax), %eax	# insn_4->code, D.22601
	movzwl	%ax, %eax	# D.22601, D.22602
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22603
	cmpb	$105, %al	#, D.22603
	je	.L2076	#,
	.loc 1 7698 0
	jmp	.L2077	#
.L2076:
	.loc 1 7705 0
	movq	-32(%rbp), %rax	# insn, tmp116
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22604
	je	.L2078	#,
	.loc 1 7707 0
	movl	$1, -48(%rbp)	#, in_libcall
	.loc 1 7708 0
	movl	$1, -36(%rbp)	#, live_insn
	.loc 1 7709 0
	movq	-32(%rbp), %rax	# insn, tmp117
	movq	%rax, %rdi	# tmp117,
	call	dead_libcall_p	#
	movzbl	%al, %eax	# D.22605, tmp118
	movl	%eax, -44(%rbp)	# tmp118, dead_libcall
	jmp	.L2079	#
.L2078:
	.loc 1 7711 0
	cmpl	$0, -48(%rbp)	#, in_libcall
	je	.L2080	#,
	.loc 1 7712 0
	cmpl	$0, -44(%rbp)	#, dead_libcall
	sete	%al	#, D.22605
	movzbl	%al, %eax	# D.22605, tmp119
	movl	%eax, -36(%rbp)	# tmp119, live_insn
	jmp	.L2079	#
.L2080:
	.loc 1 7714 0
	movq	-24(%rbp), %rdx	# counts, tmp120
	movq	-32(%rbp), %rax	# insn, tmp121
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	insn_live_p	#
	movzbl	%al, %eax	# D.22605, tmp122
	movl	%eax, -36(%rbp)	# tmp122, live_insn
.L2079:
	.loc 1 7719 0
	cmpl	$0, -36(%rbp)	#, live_insn
	jne	.L2081	#,
	.loc 1 7721 0
	movq	-24(%rbp), %rsi	# counts, tmp123
	movq	-32(%rbp), %rax	# insn, tmp124
	movl	$-1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp124,
	call	count_reg_usage	#
	.loc 1 7722 0
	movq	-32(%rbp), %rax	# insn, tmp125
	movq	%rax, %rdi	# tmp125,
	call	delete_insn	#
.L2081:
	.loc 1 7725 0
	movq	-32(%rbp), %rax	# insn, tmp126
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22604
	je	.L2077	#,
	.loc 1 7727 0
	movl	$0, -48(%rbp)	#, in_libcall
	.loc 1 7728 0
	movl	$0, -44(%rbp)	#, dead_libcall
.L2077:
.LBE149:
	.loc 1 7692 0
	movq	-16(%rbp), %rax	# prev, tmp127
	movq	%rax, -32(%rbp)	# tmp127, insn
.L2075:
	.loc 1 7692 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bb, tmp128
	movq	(%rax), %rax	# bb_54->head, D.22604
	cmpq	-32(%rbp), %rax	# insn, D.22604
	jne	.L2082	#,
	.loc 1 7691 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L2074:
	.loc 1 7691 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.1034
	cmpl	%eax, -52(%rbp)	# n_basic_blocks.1034, i
	jl	.L2083	#,
.L2073:
	.loc 1 7733 0 is_stmt 1
	movq	-24(%rbp), %rax	# counts, tmp129
	movq	%rax, %rdi	# tmp129,
	call	free	#
	.loc 1 7734 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	delete_trivially_dead_insns, .-delete_trivially_dead_insns
	.section	.rodata
	.type	__FUNCTION__.11645, @object
	.size	__FUNCTION__.11645, 13
__FUNCTION__.11645:
	.string	"make_new_qty"
	.type	__FUNCTION__.11654, @object
	.size	__FUNCTION__.11654, 14
__FUNCTION__.11654:
	.string	"make_regs_eqv"
	.type	__FUNCTION__.11753, @object
	.size	__FUNCTION__.11753, 7
__FUNCTION__.11753:
	.string	"insert"
	.type	__FUNCTION__.11861, @object
	.size	__FUNCTION__.11861, 11
__FUNCTION__.11861:
	.string	"invalidate"
	.type	__FUNCTION__.11999, @object
	.size	__FUNCTION__.11999, 11
__FUNCTION__.11999:
	.string	"canon_hash"
	.type	__FUNCTION__.12061, @object
	.size	__FUNCTION__.12061, 12
__FUNCTION__.12061:
	.string	"exp_equiv_p"
	.align 16
	.type	__FUNCTION__.12690, @object
	.size	__FUNCTION__.12690, 20
__FUNCTION__.12690:
	.string	"cse_set_around_loop"
	.align 16
	.type	__FUNCTION__.12771, @object
	.size	__FUNCTION__.12771, 16
__FUNCTION__.12771:
	.string	"cse_basic_block"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "i386.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "machmode.h"
	.file 10 "bitmap.h"
	.file 11 "basic-block.h"
	.file 12 "varray.h"
	.file 13 "regs.h"
	.file 14 "hard-reg-set.h"
	.file 15 "recog.h"
	.file 16 "function.h"
	.file 17 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5db0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF985
	.byte	0x1
	.long	.LASF986
	.long	.LASF987
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
	.long	0x436
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x436
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xf0a
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
	.long	0x283
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xf1a
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
	.long	.LASF988
	.uleb128 0x4
	.long	.LASF16
	.byte	0xa0
	.byte	0x4
	.byte	0x35
	.long	0x27e
	.uleb128 0x6
	.string	"add"
	.byte	0x4
	.byte	0x36
	.long	0x27e
	.byte	0
	.uleb128 0x6
	.string	"lea"
	.byte	0x4
	.byte	0x37
	.long	0x27e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0x38
	.long	0x27e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0x39
	.long	0x27e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.byte	0x3a
	.long	0x27e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0x3b
	.long	0x27e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.byte	0x3c
	.long	0x27e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.long	0x283
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.byte	0x3e
	.long	0x283
	.byte	0x20
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x3f
	.long	0x27e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0x40
	.long	0x27e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0x42
	.long	0x27e
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.byte	0x43
	.long	0x2a1
	.byte	0x30
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.byte	0x46
	.long	0x2a6
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.byte	0x48
	.long	0x27e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.byte	0x49
	.long	0x2ab
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.byte	0x4b
	.long	0x2b0
	.byte	0x58
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.byte	0x4d
	.long	0x27e
	.byte	0x64
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.byte	0x4e
	.long	0x2c5
	.byte	0x68
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.byte	0x50
	.long	0x2ca
	.byte	0x70
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.byte	0x52
	.long	0x27e
	.byte	0x78
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.byte	0x53
	.long	0x2cf
	.byte	0x7c
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.byte	0x55
	.long	0x2d4
	.byte	0x88
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.byte	0x57
	.long	0x27e
	.byte	0x94
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.byte	0x59
	.long	0x27e
	.byte	0x98
	.uleb128 0x8
	.long	.LASF40
	.byte	0x4
	.byte	0x5a
	.long	0x27e
	.byte	0x9c
	.byte	0
	.uleb128 0xa
	.long	0x283
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.long	0x283
	.long	0x29a
	.uleb128 0xd
	.long	0x29a
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF41
	.uleb128 0xa
	.long	0x28a
	.uleb128 0xa
	.long	0x28a
	.uleb128 0xa
	.long	0x28a
	.uleb128 0xa
	.long	0x28a
	.uleb128 0xc
	.long	0x283
	.long	0x2c5
	.uleb128 0xd
	.long	0x29a
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0x2b5
	.uleb128 0xa
	.long	0x2b5
	.uleb128 0xa
	.long	0x28a
	.uleb128 0xa
	.long	0x28a
	.uleb128 0xf
	.long	.LASF50
	.byte	0x4
	.byte	0x4
	.value	0x18b
	.long	0x317
	.uleb128 0x10
	.long	.LASF42
	.sleb128 0
	.uleb128 0x10
	.long	.LASF43
	.sleb128 1
	.uleb128 0x10
	.long	.LASF44
	.sleb128 2
	.uleb128 0x10
	.long	.LASF45
	.sleb128 3
	.uleb128 0x10
	.long	.LASF46
	.sleb128 4
	.uleb128 0x10
	.long	.LASF47
	.sleb128 5
	.uleb128 0x10
	.long	.LASF48
	.sleb128 6
	.uleb128 0x10
	.long	.LASF49
	.sleb128 7
	.byte	0
	.uleb128 0xf
	.long	.LASF51
	.byte	0x4
	.byte	0x4
	.value	0x4b2
	.long	0x3c1
	.uleb128 0x10
	.long	.LASF52
	.sleb128 0
	.uleb128 0x10
	.long	.LASF53
	.sleb128 1
	.uleb128 0x10
	.long	.LASF54
	.sleb128 2
	.uleb128 0x10
	.long	.LASF55
	.sleb128 3
	.uleb128 0x10
	.long	.LASF56
	.sleb128 4
	.uleb128 0x10
	.long	.LASF57
	.sleb128 5
	.uleb128 0x10
	.long	.LASF58
	.sleb128 6
	.uleb128 0x10
	.long	.LASF59
	.sleb128 7
	.uleb128 0x10
	.long	.LASF60
	.sleb128 8
	.uleb128 0x10
	.long	.LASF61
	.sleb128 9
	.uleb128 0x10
	.long	.LASF62
	.sleb128 10
	.uleb128 0x10
	.long	.LASF63
	.sleb128 11
	.uleb128 0x10
	.long	.LASF64
	.sleb128 12
	.uleb128 0x10
	.long	.LASF65
	.sleb128 13
	.uleb128 0x10
	.long	.LASF66
	.sleb128 14
	.uleb128 0x10
	.long	.LASF67
	.sleb128 15
	.uleb128 0x10
	.long	.LASF68
	.sleb128 16
	.uleb128 0x10
	.long	.LASF69
	.sleb128 17
	.uleb128 0x10
	.long	.LASF70
	.sleb128 18
	.uleb128 0x10
	.long	.LASF71
	.sleb128 19
	.uleb128 0x10
	.long	.LASF72
	.sleb128 20
	.uleb128 0x10
	.long	.LASF73
	.sleb128 21
	.uleb128 0x10
	.long	.LASF74
	.sleb128 22
	.uleb128 0x10
	.long	.LASF75
	.sleb128 23
	.uleb128 0x10
	.long	.LASF76
	.sleb128 24
	.uleb128 0x10
	.long	.LASF77
	.sleb128 25
	.byte	0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x1c
	.byte	0x4
	.value	0x683
	.long	0x42a
	.uleb128 0x12
	.long	.LASF79
	.byte	0x4
	.value	0x684
	.long	0x283
	.byte	0
	.uleb128 0x12
	.long	.LASF80
	.byte	0x4
	.value	0x685
	.long	0x283
	.byte	0x4
	.uleb128 0x12
	.long	.LASF81
	.byte	0x4
	.value	0x686
	.long	0x283
	.byte	0x8
	.uleb128 0x12
	.long	.LASF82
	.byte	0x4
	.value	0x687
	.long	0x283
	.byte	0xc
	.uleb128 0x12
	.long	.LASF83
	.byte	0x4
	.value	0x688
	.long	0x283
	.byte	0x10
	.uleb128 0x12
	.long	.LASF84
	.byte	0x4
	.value	0x689
	.long	0x283
	.byte	0x14
	.uleb128 0x12
	.long	.LASF85
	.byte	0x4
	.value	0x68a
	.long	0x283
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.long	.LASF86
	.byte	0x4
	.value	0x68b
	.long	0x3c1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF87
	.uleb128 0x14
	.byte	0x8
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF88
	.uleb128 0x7
	.long	.LASF89
	.byte	0x5
	.byte	0xd4
	.long	0x451
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF90
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF91
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF92
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF93
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF94
	.uleb128 0x7
	.long	.LASF95
	.byte	0x6
	.byte	0x8c
	.long	0x43f
	.uleb128 0x7
	.long	.LASF96
	.byte	0x6
	.byte	0x8d
	.long	0x43f
	.uleb128 0x3
	.byte	0x8
	.long	0x490
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF97
	.uleb128 0x7
	.long	.LASF98
	.byte	0x7
	.byte	0x30
	.long	0x4a2
	.uleb128 0x4
	.long	.LASF99
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x623
	.uleb128 0x8
	.long	.LASF100
	.byte	0x8
	.byte	0xf7
	.long	0x283
	.byte	0
	.uleb128 0x8
	.long	.LASF101
	.byte	0x8
	.byte	0xfc
	.long	0x48a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF102
	.byte	0x8
	.byte	0xfd
	.long	0x48a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF103
	.byte	0x8
	.byte	0xfe
	.long	0x48a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF104
	.byte	0x8
	.byte	0xff
	.long	0x48a
	.byte	0x20
	.uleb128 0x12
	.long	.LASF105
	.byte	0x8
	.value	0x100
	.long	0x48a
	.byte	0x28
	.uleb128 0x12
	.long	.LASF106
	.byte	0x8
	.value	0x101
	.long	0x48a
	.byte	0x30
	.uleb128 0x12
	.long	.LASF107
	.byte	0x8
	.value	0x102
	.long	0x48a
	.byte	0x38
	.uleb128 0x12
	.long	.LASF108
	.byte	0x8
	.value	0x103
	.long	0x48a
	.byte	0x40
	.uleb128 0x12
	.long	.LASF109
	.byte	0x8
	.value	0x105
	.long	0x48a
	.byte	0x48
	.uleb128 0x12
	.long	.LASF110
	.byte	0x8
	.value	0x106
	.long	0x48a
	.byte	0x50
	.uleb128 0x12
	.long	.LASF111
	.byte	0x8
	.value	0x107
	.long	0x48a
	.byte	0x58
	.uleb128 0x12
	.long	.LASF112
	.byte	0x8
	.value	0x109
	.long	0x65b
	.byte	0x60
	.uleb128 0x12
	.long	.LASF113
	.byte	0x8
	.value	0x10b
	.long	0x661
	.byte	0x68
	.uleb128 0x12
	.long	.LASF114
	.byte	0x8
	.value	0x10d
	.long	0x283
	.byte	0x70
	.uleb128 0x12
	.long	.LASF115
	.byte	0x8
	.value	0x111
	.long	0x283
	.byte	0x74
	.uleb128 0x12
	.long	.LASF116
	.byte	0x8
	.value	0x113
	.long	0x474
	.byte	0x78
	.uleb128 0x12
	.long	.LASF117
	.byte	0x8
	.value	0x117
	.long	0x45f
	.byte	0x80
	.uleb128 0x12
	.long	.LASF118
	.byte	0x8
	.value	0x118
	.long	0x466
	.byte	0x82
	.uleb128 0x12
	.long	.LASF119
	.byte	0x8
	.value	0x119
	.long	0x667
	.byte	0x83
	.uleb128 0x12
	.long	.LASF120
	.byte	0x8
	.value	0x11d
	.long	0x677
	.byte	0x88
	.uleb128 0x12
	.long	.LASF121
	.byte	0x8
	.value	0x126
	.long	0x47f
	.byte	0x90
	.uleb128 0x12
	.long	.LASF122
	.byte	0x8
	.value	0x12f
	.long	0x43d
	.byte	0x98
	.uleb128 0x12
	.long	.LASF123
	.byte	0x8
	.value	0x130
	.long	0x43d
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF124
	.byte	0x8
	.value	0x131
	.long	0x43d
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF125
	.byte	0x8
	.value	0x132
	.long	0x43d
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF126
	.byte	0x8
	.value	0x133
	.long	0x446
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF127
	.byte	0x8
	.value	0x135
	.long	0x283
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF128
	.byte	0x8
	.value	0x137
	.long	0x67d
	.byte	0xc4
	.byte	0
	.uleb128 0x15
	.long	.LASF989
	.byte	0x8
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF129
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x65b
	.uleb128 0x8
	.long	.LASF130
	.byte	0x8
	.byte	0xa2
	.long	0x65b
	.byte	0
	.uleb128 0x8
	.long	.LASF131
	.byte	0x8
	.byte	0xa3
	.long	0x661
	.byte	0x8
	.uleb128 0x8
	.long	.LASF132
	.byte	0x8
	.byte	0xa7
	.long	0x283
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x62a
	.uleb128 0x3
	.byte	0x8
	.long	0x4a2
	.uleb128 0xc
	.long	0x490
	.long	0x677
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x623
	.uleb128 0xc
	.long	0x490
	.long	0x68d
	.uleb128 0xd
	.long	0x29a
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x693
	.uleb128 0xa
	.long	0x490
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF133
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF134
	.uleb128 0x3
	.byte	0x8
	.long	0x283
	.uleb128 0x3
	.byte	0x8
	.long	0x6b2
	.uleb128 0x16
	.uleb128 0x17
	.long	.LASF135
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x828
	.uleb128 0x10
	.long	.LASF136
	.sleb128 0
	.uleb128 0x10
	.long	.LASF137
	.sleb128 1
	.uleb128 0x10
	.long	.LASF138
	.sleb128 2
	.uleb128 0x10
	.long	.LASF139
	.sleb128 3
	.uleb128 0x10
	.long	.LASF140
	.sleb128 4
	.uleb128 0x10
	.long	.LASF141
	.sleb128 5
	.uleb128 0x10
	.long	.LASF142
	.sleb128 6
	.uleb128 0x10
	.long	.LASF143
	.sleb128 7
	.uleb128 0x10
	.long	.LASF144
	.sleb128 8
	.uleb128 0x10
	.long	.LASF145
	.sleb128 9
	.uleb128 0x10
	.long	.LASF146
	.sleb128 10
	.uleb128 0x10
	.long	.LASF147
	.sleb128 11
	.uleb128 0x10
	.long	.LASF148
	.sleb128 12
	.uleb128 0x10
	.long	.LASF149
	.sleb128 13
	.uleb128 0x10
	.long	.LASF150
	.sleb128 14
	.uleb128 0x10
	.long	.LASF151
	.sleb128 15
	.uleb128 0x10
	.long	.LASF152
	.sleb128 16
	.uleb128 0x10
	.long	.LASF153
	.sleb128 17
	.uleb128 0x10
	.long	.LASF154
	.sleb128 18
	.uleb128 0x10
	.long	.LASF155
	.sleb128 19
	.uleb128 0x10
	.long	.LASF156
	.sleb128 20
	.uleb128 0x10
	.long	.LASF157
	.sleb128 21
	.uleb128 0x10
	.long	.LASF158
	.sleb128 22
	.uleb128 0x10
	.long	.LASF159
	.sleb128 23
	.uleb128 0x10
	.long	.LASF160
	.sleb128 24
	.uleb128 0x10
	.long	.LASF161
	.sleb128 25
	.uleb128 0x10
	.long	.LASF162
	.sleb128 26
	.uleb128 0x10
	.long	.LASF163
	.sleb128 27
	.uleb128 0x10
	.long	.LASF164
	.sleb128 28
	.uleb128 0x10
	.long	.LASF165
	.sleb128 29
	.uleb128 0x10
	.long	.LASF166
	.sleb128 30
	.uleb128 0x10
	.long	.LASF167
	.sleb128 31
	.uleb128 0x10
	.long	.LASF168
	.sleb128 32
	.uleb128 0x10
	.long	.LASF169
	.sleb128 33
	.uleb128 0x10
	.long	.LASF170
	.sleb128 34
	.uleb128 0x10
	.long	.LASF171
	.sleb128 35
	.uleb128 0x10
	.long	.LASF172
	.sleb128 36
	.uleb128 0x10
	.long	.LASF173
	.sleb128 37
	.uleb128 0x10
	.long	.LASF174
	.sleb128 38
	.uleb128 0x10
	.long	.LASF175
	.sleb128 39
	.uleb128 0x10
	.long	.LASF176
	.sleb128 40
	.uleb128 0x10
	.long	.LASF177
	.sleb128 41
	.uleb128 0x10
	.long	.LASF178
	.sleb128 42
	.uleb128 0x10
	.long	.LASF179
	.sleb128 43
	.uleb128 0x10
	.long	.LASF180
	.sleb128 44
	.uleb128 0x10
	.long	.LASF181
	.sleb128 45
	.uleb128 0x10
	.long	.LASF182
	.sleb128 46
	.uleb128 0x10
	.long	.LASF183
	.sleb128 47
	.uleb128 0x10
	.long	.LASF184
	.sleb128 48
	.uleb128 0x10
	.long	.LASF185
	.sleb128 49
	.uleb128 0x10
	.long	.LASF186
	.sleb128 50
	.uleb128 0x10
	.long	.LASF187
	.sleb128 51
	.uleb128 0x10
	.long	.LASF188
	.sleb128 52
	.uleb128 0x10
	.long	.LASF189
	.sleb128 53
	.uleb128 0x10
	.long	.LASF190
	.sleb128 54
	.uleb128 0x10
	.long	.LASF191
	.sleb128 55
	.uleb128 0x10
	.long	.LASF192
	.sleb128 56
	.uleb128 0x10
	.long	.LASF193
	.sleb128 57
	.uleb128 0x10
	.long	.LASF194
	.sleb128 58
	.uleb128 0x10
	.long	.LASF195
	.sleb128 59
	.byte	0
	.uleb128 0x17
	.long	.LASF196
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x871
	.uleb128 0x10
	.long	.LASF197
	.sleb128 0
	.uleb128 0x10
	.long	.LASF198
	.sleb128 1
	.uleb128 0x10
	.long	.LASF199
	.sleb128 2
	.uleb128 0x10
	.long	.LASF200
	.sleb128 3
	.uleb128 0x10
	.long	.LASF201
	.sleb128 4
	.uleb128 0x10
	.long	.LASF202
	.sleb128 5
	.uleb128 0x10
	.long	.LASF203
	.sleb128 6
	.uleb128 0x10
	.long	.LASF204
	.sleb128 7
	.uleb128 0x10
	.long	.LASF205
	.sleb128 8
	.uleb128 0x10
	.long	.LASF206
	.sleb128 9
	.byte	0
	.uleb128 0x17
	.long	.LASF207
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xc6d
	.uleb128 0x10
	.long	.LASF208
	.sleb128 0
	.uleb128 0x18
	.string	"NIL"
	.sleb128 1
	.uleb128 0x10
	.long	.LASF209
	.sleb128 2
	.uleb128 0x10
	.long	.LASF210
	.sleb128 3
	.uleb128 0x10
	.long	.LASF211
	.sleb128 4
	.uleb128 0x10
	.long	.LASF212
	.sleb128 5
	.uleb128 0x10
	.long	.LASF213
	.sleb128 6
	.uleb128 0x10
	.long	.LASF214
	.sleb128 7
	.uleb128 0x10
	.long	.LASF215
	.sleb128 8
	.uleb128 0x10
	.long	.LASF216
	.sleb128 9
	.uleb128 0x10
	.long	.LASF217
	.sleb128 10
	.uleb128 0x10
	.long	.LASF218
	.sleb128 11
	.uleb128 0x10
	.long	.LASF219
	.sleb128 12
	.uleb128 0x10
	.long	.LASF220
	.sleb128 13
	.uleb128 0x10
	.long	.LASF221
	.sleb128 14
	.uleb128 0x10
	.long	.LASF222
	.sleb128 15
	.uleb128 0x10
	.long	.LASF223
	.sleb128 16
	.uleb128 0x10
	.long	.LASF224
	.sleb128 17
	.uleb128 0x10
	.long	.LASF225
	.sleb128 18
	.uleb128 0x10
	.long	.LASF226
	.sleb128 19
	.uleb128 0x10
	.long	.LASF227
	.sleb128 20
	.uleb128 0x10
	.long	.LASF228
	.sleb128 21
	.uleb128 0x10
	.long	.LASF229
	.sleb128 22
	.uleb128 0x10
	.long	.LASF230
	.sleb128 23
	.uleb128 0x10
	.long	.LASF231
	.sleb128 24
	.uleb128 0x10
	.long	.LASF232
	.sleb128 25
	.uleb128 0x10
	.long	.LASF233
	.sleb128 26
	.uleb128 0x10
	.long	.LASF234
	.sleb128 27
	.uleb128 0x10
	.long	.LASF235
	.sleb128 28
	.uleb128 0x10
	.long	.LASF236
	.sleb128 29
	.uleb128 0x10
	.long	.LASF237
	.sleb128 30
	.uleb128 0x10
	.long	.LASF238
	.sleb128 31
	.uleb128 0x10
	.long	.LASF239
	.sleb128 32
	.uleb128 0x10
	.long	.LASF240
	.sleb128 33
	.uleb128 0x10
	.long	.LASF241
	.sleb128 34
	.uleb128 0x10
	.long	.LASF242
	.sleb128 35
	.uleb128 0x10
	.long	.LASF243
	.sleb128 36
	.uleb128 0x10
	.long	.LASF244
	.sleb128 37
	.uleb128 0x10
	.long	.LASF245
	.sleb128 38
	.uleb128 0x10
	.long	.LASF246
	.sleb128 39
	.uleb128 0x10
	.long	.LASF247
	.sleb128 40
	.uleb128 0x10
	.long	.LASF248
	.sleb128 41
	.uleb128 0x10
	.long	.LASF249
	.sleb128 42
	.uleb128 0x10
	.long	.LASF250
	.sleb128 43
	.uleb128 0x10
	.long	.LASF251
	.sleb128 44
	.uleb128 0x10
	.long	.LASF252
	.sleb128 45
	.uleb128 0x10
	.long	.LASF253
	.sleb128 46
	.uleb128 0x18
	.string	"SET"
	.sleb128 47
	.uleb128 0x18
	.string	"USE"
	.sleb128 48
	.uleb128 0x10
	.long	.LASF254
	.sleb128 49
	.uleb128 0x10
	.long	.LASF255
	.sleb128 50
	.uleb128 0x10
	.long	.LASF256
	.sleb128 51
	.uleb128 0x10
	.long	.LASF257
	.sleb128 52
	.uleb128 0x10
	.long	.LASF258
	.sleb128 53
	.uleb128 0x10
	.long	.LASF259
	.sleb128 54
	.uleb128 0x10
	.long	.LASF260
	.sleb128 55
	.uleb128 0x10
	.long	.LASF261
	.sleb128 56
	.uleb128 0x10
	.long	.LASF262
	.sleb128 57
	.uleb128 0x10
	.long	.LASF263
	.sleb128 58
	.uleb128 0x18
	.string	"PC"
	.sleb128 59
	.uleb128 0x10
	.long	.LASF264
	.sleb128 60
	.uleb128 0x18
	.string	"REG"
	.sleb128 61
	.uleb128 0x10
	.long	.LASF265
	.sleb128 62
	.uleb128 0x10
	.long	.LASF266
	.sleb128 63
	.uleb128 0x10
	.long	.LASF267
	.sleb128 64
	.uleb128 0x10
	.long	.LASF268
	.sleb128 65
	.uleb128 0x18
	.string	"MEM"
	.sleb128 66
	.uleb128 0x10
	.long	.LASF269
	.sleb128 67
	.uleb128 0x10
	.long	.LASF270
	.sleb128 68
	.uleb128 0x18
	.string	"CC0"
	.sleb128 69
	.uleb128 0x10
	.long	.LASF271
	.sleb128 70
	.uleb128 0x10
	.long	.LASF272
	.sleb128 71
	.uleb128 0x10
	.long	.LASF273
	.sleb128 72
	.uleb128 0x10
	.long	.LASF274
	.sleb128 73
	.uleb128 0x10
	.long	.LASF275
	.sleb128 74
	.uleb128 0x10
	.long	.LASF276
	.sleb128 75
	.uleb128 0x10
	.long	.LASF277
	.sleb128 76
	.uleb128 0x18
	.string	"NEG"
	.sleb128 77
	.uleb128 0x10
	.long	.LASF278
	.sleb128 78
	.uleb128 0x18
	.string	"DIV"
	.sleb128 79
	.uleb128 0x18
	.string	"MOD"
	.sleb128 80
	.uleb128 0x10
	.long	.LASF279
	.sleb128 81
	.uleb128 0x10
	.long	.LASF280
	.sleb128 82
	.uleb128 0x18
	.string	"AND"
	.sleb128 83
	.uleb128 0x18
	.string	"IOR"
	.sleb128 84
	.uleb128 0x18
	.string	"XOR"
	.sleb128 85
	.uleb128 0x18
	.string	"NOT"
	.sleb128 86
	.uleb128 0x10
	.long	.LASF281
	.sleb128 87
	.uleb128 0x10
	.long	.LASF282
	.sleb128 88
	.uleb128 0x10
	.long	.LASF283
	.sleb128 89
	.uleb128 0x10
	.long	.LASF284
	.sleb128 90
	.uleb128 0x10
	.long	.LASF285
	.sleb128 91
	.uleb128 0x10
	.long	.LASF286
	.sleb128 92
	.uleb128 0x10
	.long	.LASF287
	.sleb128 93
	.uleb128 0x10
	.long	.LASF288
	.sleb128 94
	.uleb128 0x10
	.long	.LASF289
	.sleb128 95
	.uleb128 0x10
	.long	.LASF290
	.sleb128 96
	.uleb128 0x10
	.long	.LASF291
	.sleb128 97
	.uleb128 0x10
	.long	.LASF292
	.sleb128 98
	.uleb128 0x10
	.long	.LASF293
	.sleb128 99
	.uleb128 0x10
	.long	.LASF294
	.sleb128 100
	.uleb128 0x10
	.long	.LASF295
	.sleb128 101
	.uleb128 0x18
	.string	"NE"
	.sleb128 102
	.uleb128 0x18
	.string	"EQ"
	.sleb128 103
	.uleb128 0x18
	.string	"GE"
	.sleb128 104
	.uleb128 0x18
	.string	"GT"
	.sleb128 105
	.uleb128 0x18
	.string	"LE"
	.sleb128 106
	.uleb128 0x18
	.string	"LT"
	.sleb128 107
	.uleb128 0x18
	.string	"GEU"
	.sleb128 108
	.uleb128 0x18
	.string	"GTU"
	.sleb128 109
	.uleb128 0x18
	.string	"LEU"
	.sleb128 110
	.uleb128 0x18
	.string	"LTU"
	.sleb128 111
	.uleb128 0x10
	.long	.LASF296
	.sleb128 112
	.uleb128 0x10
	.long	.LASF297
	.sleb128 113
	.uleb128 0x10
	.long	.LASF298
	.sleb128 114
	.uleb128 0x10
	.long	.LASF299
	.sleb128 115
	.uleb128 0x10
	.long	.LASF300
	.sleb128 116
	.uleb128 0x10
	.long	.LASF301
	.sleb128 117
	.uleb128 0x10
	.long	.LASF302
	.sleb128 118
	.uleb128 0x10
	.long	.LASF303
	.sleb128 119
	.uleb128 0x10
	.long	.LASF304
	.sleb128 120
	.uleb128 0x10
	.long	.LASF305
	.sleb128 121
	.uleb128 0x10
	.long	.LASF306
	.sleb128 122
	.uleb128 0x10
	.long	.LASF307
	.sleb128 123
	.uleb128 0x10
	.long	.LASF308
	.sleb128 124
	.uleb128 0x10
	.long	.LASF309
	.sleb128 125
	.uleb128 0x18
	.string	"FIX"
	.sleb128 126
	.uleb128 0x10
	.long	.LASF310
	.sleb128 127
	.uleb128 0x10
	.long	.LASF311
	.sleb128 128
	.uleb128 0x18
	.string	"ABS"
	.sleb128 129
	.uleb128 0x10
	.long	.LASF312
	.sleb128 130
	.uleb128 0x18
	.string	"FFS"
	.sleb128 131
	.uleb128 0x10
	.long	.LASF313
	.sleb128 132
	.uleb128 0x10
	.long	.LASF314
	.sleb128 133
	.uleb128 0x10
	.long	.LASF315
	.sleb128 134
	.uleb128 0x10
	.long	.LASF316
	.sleb128 135
	.uleb128 0x10
	.long	.LASF317
	.sleb128 136
	.uleb128 0x10
	.long	.LASF318
	.sleb128 137
	.uleb128 0x10
	.long	.LASF319
	.sleb128 138
	.uleb128 0x10
	.long	.LASF320
	.sleb128 139
	.uleb128 0x10
	.long	.LASF321
	.sleb128 140
	.uleb128 0x10
	.long	.LASF322
	.sleb128 141
	.uleb128 0x10
	.long	.LASF323
	.sleb128 142
	.uleb128 0x10
	.long	.LASF324
	.sleb128 143
	.uleb128 0x10
	.long	.LASF325
	.sleb128 144
	.uleb128 0x10
	.long	.LASF326
	.sleb128 145
	.uleb128 0x10
	.long	.LASF327
	.sleb128 146
	.uleb128 0x10
	.long	.LASF328
	.sleb128 147
	.uleb128 0x10
	.long	.LASF329
	.sleb128 148
	.uleb128 0x10
	.long	.LASF330
	.sleb128 149
	.uleb128 0x10
	.long	.LASF331
	.sleb128 150
	.uleb128 0x10
	.long	.LASF332
	.sleb128 151
	.uleb128 0x18
	.string	"PHI"
	.sleb128 152
	.uleb128 0x10
	.long	.LASF333
	.sleb128 153
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xcee
	.uleb128 0x5
	.long	.LASF334
	.byte	0x2
	.byte	0x47
	.long	0x436
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF335
	.byte	0x2
	.byte	0x49
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF336
	.byte	0x2
	.byte	0x4a
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF337
	.byte	0x2
	.byte	0x4c
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF338
	.byte	0x2
	.byte	0x4e
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF339
	.byte	0x2
	.byte	0x50
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF340
	.byte	0x2
	.byte	0x53
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF341
	.byte	0x2
	.byte	0x55
	.long	0x436
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF342
	.byte	0x2
	.byte	0x56
	.long	0xc6d
	.uleb128 0x19
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xd3e
	.uleb128 0x8
	.long	.LASF343
	.byte	0x2
	.byte	0x5e
	.long	0x43f
	.byte	0
	.uleb128 0x8
	.long	.LASF344
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF345
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF346
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF347
	.byte	0x2
	.byte	0x62
	.long	0x436
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF348
	.byte	0x2
	.byte	0x63
	.long	0xcf9
	.uleb128 0x1a
	.long	.LASF448
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xde4
	.uleb128 0x1b
	.long	.LASF349
	.byte	0x2
	.byte	0x69
	.long	0x43f
	.uleb128 0x1b
	.long	.LASF350
	.byte	0x2
	.byte	0x6a
	.long	0x283
	.uleb128 0x1b
	.long	.LASF351
	.byte	0x2
	.byte	0x6b
	.long	0x436
	.uleb128 0x1b
	.long	.LASF352
	.byte	0x2
	.byte	0x6c
	.long	0x68d
	.uleb128 0x1c
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1b
	.long	.LASF353
	.byte	0x2
	.byte	0x6f
	.long	0x6b3
	.uleb128 0x1b
	.long	.LASF354
	.byte	0x2
	.byte	0x70
	.long	0xcee
	.uleb128 0x1b
	.long	.LASF355
	.byte	0x2
	.byte	0x71
	.long	0xde9
	.uleb128 0x1b
	.long	.LASF356
	.byte	0x2
	.byte	0x72
	.long	0xe20
	.uleb128 0x1b
	.long	.LASF357
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1c
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xef3
	.uleb128 0x1b
	.long	.LASF358
	.byte	0x2
	.byte	0x75
	.long	0xef9
	.byte	0
	.uleb128 0x1d
	.long	.LASF457
	.uleb128 0x3
	.byte	0x8
	.long	0xde4
	.uleb128 0x4
	.long	.LASF359
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xe20
	.uleb128 0x8
	.long	.LASF360
	.byte	0xa
	.byte	0x35
	.long	0x149c
	.byte	0
	.uleb128 0x8
	.long	.LASF361
	.byte	0xa
	.byte	0x36
	.long	0x149c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF362
	.byte	0xa
	.byte	0x37
	.long	0x436
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xdef
	.uleb128 0x4
	.long	.LASF363
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xef3
	.uleb128 0x8
	.long	.LASF364
	.byte	0xb
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0xb
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF365
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF366
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF367
	.byte	0xb
	.byte	0xb7
	.long	0x1558
	.byte	0x20
	.uleb128 0x8
	.long	.LASF368
	.byte	0xb
	.byte	0xb7
	.long	0x1558
	.byte	0x28
	.uleb128 0x8
	.long	.LASF369
	.byte	0xb
	.byte	0xbc
	.long	0x14c3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF370
	.byte	0xb
	.byte	0xc0
	.long	0x14c3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF371
	.byte	0xb
	.byte	0xc6
	.long	0x14c3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF372
	.byte	0xb
	.byte	0xc8
	.long	0x14c3
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x43d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF373
	.byte	0xb
	.byte	0xce
	.long	0x283
	.byte	0x58
	.uleb128 0x8
	.long	.LASF374
	.byte	0xb
	.byte	0xd1
	.long	0x283
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF375
	.byte	0xb
	.byte	0xd4
	.long	0x14ce
	.byte	0x60
	.uleb128 0x8
	.long	.LASF376
	.byte	0xb
	.byte	0xd7
	.long	0x283
	.byte	0x68
	.uleb128 0x8
	.long	.LASF377
	.byte	0xb
	.byte	0xda
	.long	0x283
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe26
	.uleb128 0x3
	.byte	0x8
	.long	0xd3e
	.uleb128 0x7
	.long	.LASF378
	.byte	0x2
	.byte	0x76
	.long	0xd49
	.uleb128 0xc
	.long	0xeff
	.long	0xf1a
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x2d
	.long	0xf2a
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF379
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xfec
	.uleb128 0x10
	.long	.LASF380
	.sleb128 1
	.uleb128 0x10
	.long	.LASF381
	.sleb128 2
	.uleb128 0x10
	.long	.LASF382
	.sleb128 3
	.uleb128 0x10
	.long	.LASF383
	.sleb128 4
	.uleb128 0x10
	.long	.LASF384
	.sleb128 5
	.uleb128 0x10
	.long	.LASF385
	.sleb128 6
	.uleb128 0x10
	.long	.LASF386
	.sleb128 7
	.uleb128 0x10
	.long	.LASF387
	.sleb128 8
	.uleb128 0x10
	.long	.LASF388
	.sleb128 9
	.uleb128 0x10
	.long	.LASF389
	.sleb128 10
	.uleb128 0x10
	.long	.LASF390
	.sleb128 11
	.uleb128 0x10
	.long	.LASF391
	.sleb128 12
	.uleb128 0x10
	.long	.LASF392
	.sleb128 13
	.uleb128 0x10
	.long	.LASF393
	.sleb128 14
	.uleb128 0x10
	.long	.LASF394
	.sleb128 15
	.uleb128 0x10
	.long	.LASF395
	.sleb128 16
	.uleb128 0x10
	.long	.LASF396
	.sleb128 17
	.uleb128 0x10
	.long	.LASF397
	.sleb128 18
	.uleb128 0x10
	.long	.LASF398
	.sleb128 19
	.uleb128 0x10
	.long	.LASF399
	.sleb128 20
	.uleb128 0x10
	.long	.LASF400
	.sleb128 21
	.uleb128 0x10
	.long	.LASF401
	.sleb128 22
	.uleb128 0x10
	.long	.LASF402
	.sleb128 23
	.uleb128 0x10
	.long	.LASF403
	.sleb128 24
	.uleb128 0x10
	.long	.LASF404
	.sleb128 25
	.uleb128 0x10
	.long	.LASF405
	.sleb128 26
	.uleb128 0x10
	.long	.LASF406
	.sleb128 27
	.uleb128 0x10
	.long	.LASF407
	.sleb128 28
	.uleb128 0x10
	.long	.LASF408
	.sleb128 29
	.uleb128 0x10
	.long	.LASF409
	.sleb128 30
	.byte	0
	.uleb128 0xf
	.long	.LASF410
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0x109b
	.uleb128 0x10
	.long	.LASF411
	.sleb128 -100
	.uleb128 0x10
	.long	.LASF412
	.sleb128 -99
	.uleb128 0x10
	.long	.LASF413
	.sleb128 -98
	.uleb128 0x10
	.long	.LASF414
	.sleb128 -97
	.uleb128 0x10
	.long	.LASF415
	.sleb128 -96
	.uleb128 0x10
	.long	.LASF416
	.sleb128 -95
	.uleb128 0x10
	.long	.LASF417
	.sleb128 -94
	.uleb128 0x10
	.long	.LASF418
	.sleb128 -93
	.uleb128 0x10
	.long	.LASF419
	.sleb128 -92
	.uleb128 0x10
	.long	.LASF420
	.sleb128 -91
	.uleb128 0x10
	.long	.LASF421
	.sleb128 -90
	.uleb128 0x10
	.long	.LASF422
	.sleb128 -89
	.uleb128 0x10
	.long	.LASF423
	.sleb128 -88
	.uleb128 0x10
	.long	.LASF424
	.sleb128 -87
	.uleb128 0x10
	.long	.LASF425
	.sleb128 -86
	.uleb128 0x10
	.long	.LASF426
	.sleb128 -85
	.uleb128 0x10
	.long	.LASF427
	.sleb128 -84
	.uleb128 0x10
	.long	.LASF428
	.sleb128 -83
	.uleb128 0x10
	.long	.LASF429
	.sleb128 -82
	.uleb128 0x10
	.long	.LASF430
	.sleb128 -81
	.uleb128 0x10
	.long	.LASF431
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF432
	.sleb128 -79
	.uleb128 0x10
	.long	.LASF433
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xf
	.long	.LASF434
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0x10f7
	.uleb128 0x10
	.long	.LASF435
	.sleb128 0
	.uleb128 0x10
	.long	.LASF436
	.sleb128 1
	.uleb128 0x10
	.long	.LASF437
	.sleb128 2
	.uleb128 0x10
	.long	.LASF438
	.sleb128 3
	.uleb128 0x10
	.long	.LASF439
	.sleb128 4
	.uleb128 0x10
	.long	.LASF440
	.sleb128 5
	.uleb128 0x10
	.long	.LASF441
	.sleb128 6
	.uleb128 0x10
	.long	.LASF442
	.sleb128 7
	.uleb128 0x10
	.long	.LASF443
	.sleb128 8
	.uleb128 0x10
	.long	.LASF444
	.sleb128 9
	.uleb128 0x10
	.long	.LASF445
	.sleb128 10
	.uleb128 0x10
	.long	.LASF446
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF447
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0x111c
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x436
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	.LASF449
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0x1201
	.uleb128 0x1c
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x667
	.uleb128 0x1c
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0x1201
	.uleb128 0x1c
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0x1211
	.uleb128 0x1c
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0x1221
	.uleb128 0x1c
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0x1231
	.uleb128 0x1c
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0x1241
	.uleb128 0x1c
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0x1251
	.uleb128 0x1c
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0x1261
	.uleb128 0x1b
	.long	.LASF450
	.byte	0xc
	.byte	0x43
	.long	0x1251
	.uleb128 0x1b
	.long	.LASF451
	.byte	0xc
	.byte	0x44
	.long	0x1261
	.uleb128 0x1b
	.long	.LASF452
	.byte	0xc
	.byte	0x45
	.long	0x1271
	.uleb128 0x1b
	.long	.LASF453
	.byte	0xc
	.byte	0x46
	.long	0x1281
	.uleb128 0x1c
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0x1291
	.uleb128 0x1b
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0x12a1
	.uleb128 0x1b
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0x12b1
	.uleb128 0x1b
	.long	.LASF454
	.byte	0xc
	.byte	0x4a
	.long	0x12c1
	.uleb128 0x1b
	.long	.LASF455
	.byte	0xc
	.byte	0x4b
	.long	0x12d1
	.uleb128 0x1c
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0x12ec
	.uleb128 0x1b
	.long	.LASF456
	.byte	0xc
	.byte	0x4d
	.long	0x1393
	.uleb128 0x1c
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0x13a3
	.uleb128 0x1c
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0x13b3
	.byte	0
	.uleb128 0xc
	.long	0x458
	.long	0x1211
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x46d
	.long	0x1221
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x45f
	.long	0x1231
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x283
	.long	0x1241
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x436
	.long	0x1251
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x43f
	.long	0x1261
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x451
	.long	0x1271
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x43d
	.long	0x1281
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x48a
	.long	0x1291
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x38
	.long	0x12a1
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0xf8
	.long	0x12b1
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x12e
	.long	0x12c1
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0xe20
	.long	0x12d1
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x12e1
	.long	0x12e1
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12e7
	.uleb128 0x1d
	.long	.LASF458
	.uleb128 0xc
	.long	0x12fc
	.long	0x12fc
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1302
	.uleb128 0x4
	.long	.LASF459
	.byte	0x2c
	.byte	0xd
	.byte	0x2d
	.long	0x1393
	.uleb128 0x8
	.long	.LASF460
	.byte	0xd
	.byte	0x2f
	.long	0x283
	.byte	0
	.uleb128 0x8
	.long	.LASF461
	.byte	0xd
	.byte	0x30
	.long	0x283
	.byte	0x4
	.uleb128 0x8
	.long	.LASF462
	.byte	0xd
	.byte	0x31
	.long	0x283
	.byte	0x8
	.uleb128 0x8
	.long	.LASF463
	.byte	0xd
	.byte	0x34
	.long	0x283
	.byte	0xc
	.uleb128 0x8
	.long	.LASF464
	.byte	0xd
	.byte	0x37
	.long	0x283
	.byte	0x10
	.uleb128 0x8
	.long	.LASF465
	.byte	0xd
	.byte	0x38
	.long	0x283
	.byte	0x14
	.uleb128 0x8
	.long	.LASF466
	.byte	0xd
	.byte	0x39
	.long	0x283
	.byte	0x18
	.uleb128 0x8
	.long	.LASF467
	.byte	0xd
	.byte	0x3a
	.long	0x283
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF468
	.byte	0xd
	.byte	0x3b
	.long	0x283
	.byte	0x20
	.uleb128 0x8
	.long	.LASF469
	.byte	0xd
	.byte	0x3c
	.long	0x283
	.byte	0x24
	.uleb128 0x8
	.long	.LASF470
	.byte	0xd
	.byte	0x3d
	.long	0x490
	.byte	0x28
	.byte	0
	.uleb128 0xc
	.long	0x10f7
	.long	0x13a3
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0xef3
	.long	0x13b3
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x13c3
	.long	0x13c3
	.uleb128 0xd
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13c9
	.uleb128 0x1d
	.long	.LASF471
	.uleb128 0x7
	.long	.LASF472
	.byte	0xc
	.byte	0x50
	.long	0x111c
	.uleb128 0x4
	.long	.LASF473
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x1422
	.uleb128 0x8
	.long	.LASF474
	.byte	0xc
	.byte	0x54
	.long	0x446
	.byte	0
	.uleb128 0x8
	.long	.LASF475
	.byte	0xc
	.byte	0x55
	.long	0x446
	.byte	0x8
	.uleb128 0x8
	.long	.LASF476
	.byte	0xc
	.byte	0x57
	.long	0x446
	.byte	0x10
	.uleb128 0x8
	.long	.LASF477
	.byte	0xc
	.byte	0x58
	.long	0x68d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF478
	.byte	0xc
	.byte	0x59
	.long	0x13ce
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF479
	.byte	0xc
	.byte	0x5a
	.long	0x142d
	.uleb128 0x3
	.byte	0x8
	.long	0x13d9
	.uleb128 0x7
	.long	.LASF480
	.byte	0xe
	.byte	0x29
	.long	0x451
	.uleb128 0x4
	.long	.LASF481
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x147b
	.uleb128 0x8
	.long	.LASF482
	.byte	0xa
	.byte	0x2d
	.long	0x147b
	.byte	0
	.uleb128 0x8
	.long	.LASF483
	.byte	0xa
	.byte	0x2e
	.long	0x147b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF362
	.byte	0xa
	.byte	0x2f
	.long	0x436
	.byte	0x10
	.uleb128 0x8
	.long	.LASF484
	.byte	0xa
	.byte	0x30
	.long	0x1481
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x143e
	.uleb128 0xc
	.long	0x451
	.long	0x1491
	.uleb128 0xd
	.long	0x29a
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF485
	.byte	0xa
	.byte	0x31
	.long	0x143e
	.uleb128 0x3
	.byte	0x8
	.long	0x1491
	.uleb128 0x7
	.long	.LASF486
	.byte	0xa
	.byte	0x39
	.long	0xdef
	.uleb128 0x7
	.long	.LASF454
	.byte	0xa
	.byte	0x39
	.long	0xe20
	.uleb128 0x7
	.long	.LASF487
	.byte	0xb
	.byte	0x1f
	.long	0x14a2
	.uleb128 0x7
	.long	.LASF488
	.byte	0xb
	.byte	0x21
	.long	0x14ad
	.uleb128 0x7
	.long	.LASF489
	.byte	0xb
	.byte	0x74
	.long	0x43f
	.uleb128 0x4
	.long	.LASF490
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x1552
	.uleb128 0x8
	.long	.LASF491
	.byte	0xb
	.byte	0x79
	.long	0x1552
	.byte	0
	.uleb128 0x8
	.long	.LASF492
	.byte	0xb
	.byte	0x79
	.long	0x1552
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xef3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF493
	.byte	0xb
	.byte	0x7c
	.long	0xef3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF494
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x43d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF377
	.byte	0xb
	.byte	0x84
	.long	0x283
	.byte	0x30
	.uleb128 0x8
	.long	.LASF495
	.byte	0xb
	.byte	0x85
	.long	0x283
	.byte	0x34
	.uleb128 0x8
	.long	.LASF375
	.byte	0xb
	.byte	0x86
	.long	0x14ce
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x14d9
	.uleb128 0x7
	.long	.LASF496
	.byte	0xb
	.byte	0x88
	.long	0x1552
	.uleb128 0x7
	.long	.LASF469
	.byte	0xb
	.byte	0xdb
	.long	0xef3
	.uleb128 0x7
	.long	.LASF497
	.byte	0xf
	.byte	0xd4
	.long	0x1579
	.uleb128 0x3
	.byte	0x8
	.long	0x157f
	.uleb128 0x1e
	.long	0x283
	.long	0x1593
	.uleb128 0x1f
	.long	0x2d
	.uleb128 0x1f
	.long	0x6b3
	.byte	0
	.uleb128 0x7
	.long	.LASF498
	.byte	0xf
	.byte	0xd6
	.long	0x159e
	.uleb128 0x3
	.byte	0x8
	.long	0x15a4
	.uleb128 0x1e
	.long	0x2d
	.long	0x15b4
	.uleb128 0x1f
	.long	0x2d
	.uleb128 0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF499
	.byte	0x18
	.byte	0xf
	.byte	0xd8
	.long	0x1600
	.uleb128 0x8
	.long	.LASF500
	.byte	0xf
	.byte	0xda
	.long	0x1600
	.byte	0
	.uleb128 0x8
	.long	.LASF501
	.byte	0xf
	.byte	0xdc
	.long	0x1605
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1
	.byte	0xf
	.byte	0xde
	.long	0x160a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x10
	.uleb128 0x8
	.long	.LASF502
	.byte	0xf
	.byte	0xe0
	.long	0x693
	.byte	0x12
	.uleb128 0x8
	.long	.LASF503
	.byte	0xf
	.byte	0xe2
	.long	0x693
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	0x156e
	.uleb128 0xa
	.long	0x68d
	.uleb128 0xa
	.long	0x436
	.uleb128 0x4
	.long	.LASF504
	.byte	0x28
	.byte	0xf
	.byte	0xec
	.long	0x167c
	.uleb128 0x8
	.long	.LASF477
	.byte	0xf
	.byte	0xee
	.long	0x1605
	.byte	0
	.uleb128 0x8
	.long	.LASF505
	.byte	0xf
	.byte	0xef
	.long	0x6ac
	.byte	0x8
	.uleb128 0x8
	.long	.LASF506
	.byte	0xf
	.byte	0xf0
	.long	0x167c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF507
	.byte	0xf
	.byte	0xf1
	.long	0x1681
	.byte	0x18
	.uleb128 0x8
	.long	.LASF508
	.byte	0xf
	.byte	0xf3
	.long	0x693
	.byte	0x20
	.uleb128 0x8
	.long	.LASF509
	.byte	0xf
	.byte	0xf4
	.long	0x693
	.byte	0x21
	.uleb128 0x8
	.long	.LASF510
	.byte	0xf
	.byte	0xf5
	.long	0x693
	.byte	0x22
	.uleb128 0x8
	.long	.LASF511
	.byte	0xf
	.byte	0xf6
	.long	0x693
	.byte	0x23
	.byte	0
	.uleb128 0xa
	.long	0x1593
	.uleb128 0xa
	.long	0x1686
	.uleb128 0x3
	.byte	0x8
	.long	0x168c
	.uleb128 0xa
	.long	0x15b4
	.uleb128 0x4
	.long	.LASF512
	.byte	0x18
	.byte	0x10
	.byte	0x16
	.long	0x16ce
	.uleb128 0x8
	.long	.LASF513
	.byte	0x10
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF514
	.byte	0x10
	.byte	0x19
	.long	0x6b3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF515
	.byte	0x10
	.byte	0x1a
	.long	0x283
	.byte	0xc
	.uleb128 0x8
	.long	.LASF482
	.byte	0x10
	.byte	0x1b
	.long	0x16ce
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1691
	.uleb128 0x4
	.long	.LASF516
	.byte	0x20
	.byte	0x10
	.byte	0x23
	.long	0x1711
	.uleb128 0x8
	.long	.LASF360
	.byte	0x10
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF517
	.byte	0x10
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF518
	.byte	0x10
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF482
	.byte	0x10
	.byte	0x28
	.long	0x1711
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x16d4
	.uleb128 0x4
	.long	.LASF519
	.byte	0x58
	.byte	0x10
	.byte	0x35
	.long	0x17c0
	.uleb128 0x8
	.long	.LASF520
	.byte	0x10
	.byte	0x39
	.long	0x283
	.byte	0
	.uleb128 0x8
	.long	.LASF521
	.byte	0x10
	.byte	0x3c
	.long	0x283
	.byte	0x4
	.uleb128 0x8
	.long	.LASF522
	.byte	0x10
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF523
	.byte	0x10
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF518
	.byte	0x10
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF516
	.byte	0x10
	.byte	0x4f
	.long	0x1711
	.byte	0x20
	.uleb128 0x8
	.long	.LASF524
	.byte	0x10
	.byte	0x53
	.long	0x283
	.byte	0x28
	.uleb128 0x8
	.long	.LASF525
	.byte	0x10
	.byte	0x57
	.long	0x283
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF526
	.byte	0x10
	.byte	0x58
	.long	0x68d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF527
	.byte	0x10
	.byte	0x5e
	.long	0x283
	.byte	0x38
	.uleb128 0x8
	.long	.LASF528
	.byte	0x10
	.byte	0x63
	.long	0x17c0
	.byte	0x40
	.uleb128 0x8
	.long	.LASF529
	.byte	0x10
	.byte	0x67
	.long	0x17c6
	.byte	0x48
	.uleb128 0x8
	.long	.LASF530
	.byte	0x10
	.byte	0x6b
	.long	0x109b
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x458
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF531
	.byte	0x30
	.byte	0x10
	.byte	0x77
	.long	0x182d
	.uleb128 0x8
	.long	.LASF532
	.byte	0x10
	.byte	0x7b
	.long	0x283
	.byte	0
	.uleb128 0x8
	.long	.LASF533
	.byte	0x10
	.byte	0x8c
	.long	0x283
	.byte	0x4
	.uleb128 0x8
	.long	.LASF534
	.byte	0x10
	.byte	0x92
	.long	0x283
	.byte	0x8
	.uleb128 0x8
	.long	.LASF535
	.byte	0x10
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF536
	.byte	0x10
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF537
	.byte	0x10
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF538
	.byte	0x10
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x21
	.long	.LASF539
	.value	0x1b0
	.byte	0x10
	.byte	0xae
	.long	0x1cad
	.uleb128 0x6
	.string	"eh"
	.byte	0x10
	.byte	0xb0
	.long	0x1cb2
	.byte	0
	.uleb128 0x8
	.long	.LASF540
	.byte	0x10
	.byte	0xb1
	.long	0x1cbd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF344
	.byte	0x10
	.byte	0xb2
	.long	0x1cc3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF541
	.byte	0x10
	.byte	0xb3
	.long	0x1cc9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF542
	.byte	0x10
	.byte	0xb4
	.long	0x1cd4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF477
	.byte	0x10
	.byte	0xb9
	.long	0x68d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF543
	.byte	0x10
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF544
	.byte	0x10
	.byte	0xbf
	.long	0x1cda
	.byte	0x38
	.uleb128 0x8
	.long	.LASF545
	.byte	0x10
	.byte	0xc4
	.long	0x283
	.byte	0x40
	.uleb128 0x8
	.long	.LASF546
	.byte	0x10
	.byte	0xc9
	.long	0x283
	.byte	0x44
	.uleb128 0x8
	.long	.LASF547
	.byte	0x10
	.byte	0xce
	.long	0x283
	.byte	0x48
	.uleb128 0x8
	.long	.LASF548
	.byte	0x10
	.byte	0xd2
	.long	0x283
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF549
	.byte	0x10
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF550
	.byte	0x10
	.byte	0xda
	.long	0x42a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF551
	.byte	0x10
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF552
	.byte	0x10
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF553
	.byte	0x10
	.byte	0xe7
	.long	0x68d
	.byte	0x88
	.uleb128 0x8
	.long	.LASF554
	.byte	0x10
	.byte	0xeb
	.long	0x1ce5
	.byte	0x90
	.uleb128 0x8
	.long	.LASF555
	.byte	0x10
	.byte	0xee
	.long	0x283
	.byte	0x98
	.uleb128 0x8
	.long	.LASF556
	.byte	0x10
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF557
	.byte	0x10
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF558
	.byte	0x10
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF559
	.byte	0x10
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF560
	.byte	0x10
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF561
	.byte	0x10
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x12
	.long	.LASF562
	.byte	0x10
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF563
	.byte	0x10
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x12
	.long	.LASF564
	.byte	0x10
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF565
	.byte	0x10
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x12
	.long	.LASF566
	.byte	0x10
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x12
	.long	.LASF567
	.byte	0x10
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x22
	.long	.LASF568
	.byte	0x10
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x22
	.long	.LASF569
	.byte	0x10
	.value	0x12f
	.long	0x43f
	.value	0x108
	.uleb128 0x22
	.long	.LASF570
	.byte	0x10
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x22
	.long	.LASF571
	.byte	0x10
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x22
	.long	.LASF572
	.byte	0x10
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x22
	.long	.LASF573
	.byte	0x10
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x22
	.long	.LASF574
	.byte	0x10
	.value	0x148
	.long	0x436
	.value	0x130
	.uleb128 0x22
	.long	.LASF575
	.byte	0x10
	.value	0x14e
	.long	0x109b
	.value	0x138
	.uleb128 0x22
	.long	.LASF576
	.byte	0x10
	.value	0x151
	.long	0x1cf0
	.value	0x140
	.uleb128 0x22
	.long	.LASF577
	.byte	0x10
	.value	0x154
	.long	0x283
	.value	0x148
	.uleb128 0x22
	.long	.LASF578
	.byte	0x10
	.value	0x157
	.long	0x283
	.value	0x14c
	.uleb128 0x22
	.long	.LASF579
	.byte	0x10
	.value	0x15d
	.long	0x283
	.value	0x150
	.uleb128 0x22
	.long	.LASF580
	.byte	0x10
	.value	0x161
	.long	0x16ce
	.value	0x158
	.uleb128 0x22
	.long	.LASF581
	.byte	0x10
	.value	0x164
	.long	0x283
	.value	0x160
	.uleb128 0x22
	.long	.LASF582
	.byte	0x10
	.value	0x165
	.long	0x283
	.value	0x164
	.uleb128 0x22
	.long	.LASF583
	.byte	0x10
	.value	0x167
	.long	0x43d
	.value	0x168
	.uleb128 0x22
	.long	.LASF584
	.byte	0x10
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x22
	.long	.LASF585
	.byte	0x10
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x22
	.long	.LASF586
	.byte	0x10
	.value	0x16d
	.long	0x283
	.value	0x180
	.uleb128 0x22
	.long	.LASF587
	.byte	0x10
	.value	0x170
	.long	0x283
	.value	0x184
	.uleb128 0x22
	.long	.LASF588
	.byte	0x10
	.value	0x175
	.long	0x1cfb
	.value	0x188
	.uleb128 0x22
	.long	.LASF589
	.byte	0x10
	.value	0x177
	.long	0x283
	.value	0x190
	.uleb128 0x22
	.long	.LASF590
	.byte	0x10
	.value	0x179
	.long	0x283
	.value	0x194
	.uleb128 0x22
	.long	.LASF591
	.byte	0x10
	.value	0x17c
	.long	0x1d06
	.value	0x198
	.uleb128 0x22
	.long	.LASF592
	.byte	0x10
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x23
	.long	.LASF593
	.byte	0x10
	.value	0x188
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF594
	.byte	0x10
	.value	0x18c
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF595
	.byte	0x10
	.value	0x18f
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF596
	.byte	0x10
	.value	0x192
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF597
	.byte	0x10
	.value	0x195
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF598
	.byte	0x10
	.value	0x198
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF599
	.byte	0x10
	.value	0x19c
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF600
	.byte	0x10
	.value	0x19f
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF601
	.byte	0x10
	.value	0x1a3
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF602
	.byte	0x10
	.value	0x1a7
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF603
	.byte	0x10
	.value	0x1aa
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF604
	.byte	0x10
	.value	0x1ad
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF605
	.byte	0x10
	.value	0x1b2
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF606
	.byte	0x10
	.value	0x1b6
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF607
	.byte	0x10
	.value	0x1b9
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF608
	.byte	0x10
	.value	0x1bd
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF609
	.byte	0x10
	.value	0x1c1
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF610
	.byte	0x10
	.value	0x1c5
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF611
	.byte	0x10
	.value	0x1cb
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF612
	.byte	0x10
	.value	0x1d4
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF613
	.byte	0x10
	.value	0x1d7
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF614
	.byte	0x10
	.value	0x1da
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF615
	.byte	0x10
	.value	0x1dd
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x23
	.long	.LASF616
	.byte	0x10
	.value	0x1e0
	.long	0x436
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1d
	.long	.LASF617
	.uleb128 0x3
	.byte	0x8
	.long	0x1cad
	.uleb128 0x1d
	.long	.LASF618
	.uleb128 0x3
	.byte	0x8
	.long	0x1cb8
	.uleb128 0x3
	.byte	0x8
	.long	0x17cc
	.uleb128 0x3
	.byte	0x8
	.long	0x1717
	.uleb128 0x1d
	.long	.LASF619
	.uleb128 0x3
	.byte	0x8
	.long	0x1ccf
	.uleb128 0x3
	.byte	0x8
	.long	0x182d
	.uleb128 0x1d
	.long	.LASF620
	.uleb128 0x3
	.byte	0x8
	.long	0x1ce0
	.uleb128 0x1d
	.long	.LASF621
	.uleb128 0x3
	.byte	0x8
	.long	0x1ceb
	.uleb128 0x1d
	.long	.LASF622
	.uleb128 0x3
	.byte	0x8
	.long	0x1cf6
	.uleb128 0x1d
	.long	.LASF623
	.uleb128 0x3
	.byte	0x8
	.long	0x1d01
	.uleb128 0x4
	.long	.LASF624
	.byte	0x30
	.byte	0x1
	.byte	0xf2
	.long	0x1d79
	.uleb128 0x8
	.long	.LASF625
	.byte	0x1
	.byte	0xf4
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF626
	.byte	0x1
	.byte	0xf5
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF627
	.byte	0x1
	.byte	0xf6
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF628
	.byte	0x1
	.byte	0xf7
	.long	0x283
	.byte	0x18
	.uleb128 0x8
	.long	.LASF629
	.byte	0x1
	.byte	0xf8
	.long	0x436
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF630
	.byte	0x1
	.byte	0xf8
	.long	0x436
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1
	.byte	0x1
	.byte	0xf9
	.long	0x6b3
	.byte	0x24
	.uleb128 0x8
	.long	.LASF631
	.byte	0x1
	.byte	0xfa
	.long	0x871
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF632
	.byte	0x8
	.byte	0x1
	.value	0x11f
	.long	0x1da1
	.uleb128 0x12
	.long	.LASF482
	.byte	0x1
	.value	0x121
	.long	0x283
	.byte	0
	.uleb128 0x12
	.long	.LASF483
	.byte	0x1
	.value	0x121
	.long	0x283
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.long	.LASF633
	.byte	0x20
	.byte	0x1
	.value	0x127
	.long	0x1dfd
	.uleb128 0x12
	.long	.LASF634
	.byte	0x1
	.value	0x12a
	.long	0x1dfd
	.byte	0
	.uleb128 0x12
	.long	.LASF482
	.byte	0x1
	.value	0x12d
	.long	0x1dfd
	.byte	0x8
	.uleb128 0x12
	.long	.LASF81
	.byte	0x1
	.value	0x130
	.long	0x436
	.byte	0x10
	.uleb128 0x12
	.long	.LASF635
	.byte	0x1
	.value	0x133
	.long	0x283
	.byte	0x14
	.uleb128 0x12
	.long	.LASF636
	.byte	0x1
	.value	0x137
	.long	0x283
	.byte	0x18
	.uleb128 0x12
	.long	.LASF637
	.byte	0x1
	.value	0x13d
	.long	0x283
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1da1
	.uleb128 0x11
	.long	.LASF638
	.byte	0x50
	.byte	0x1
	.value	0x1bc
	.long	0x1ec7
	.uleb128 0x24
	.string	"exp"
	.byte	0x1
	.value	0x1be
	.long	0x2d
	.byte	0
	.uleb128 0x12
	.long	.LASF639
	.byte	0x1
	.value	0x1bf
	.long	0x2d
	.byte	0x8
	.uleb128 0x12
	.long	.LASF640
	.byte	0x1
	.value	0x1c0
	.long	0x1ec7
	.byte	0x10
	.uleb128 0x12
	.long	.LASF641
	.byte	0x1
	.value	0x1c1
	.long	0x1ec7
	.byte	0x18
	.uleb128 0x12
	.long	.LASF642
	.byte	0x1
	.value	0x1c2
	.long	0x1ec7
	.byte	0x20
	.uleb128 0x12
	.long	.LASF643
	.byte	0x1
	.value	0x1c3
	.long	0x1ec7
	.byte	0x28
	.uleb128 0x12
	.long	.LASF644
	.byte	0x1
	.value	0x1c4
	.long	0x1ec7
	.byte	0x30
	.uleb128 0x12
	.long	.LASF645
	.byte	0x1
	.value	0x1c5
	.long	0x1ec7
	.byte	0x38
	.uleb128 0x12
	.long	.LASF646
	.byte	0x1
	.value	0x1c6
	.long	0x283
	.byte	0x40
	.uleb128 0x12
	.long	.LASF647
	.byte	0x1
	.value	0x1c7
	.long	0x283
	.byte	0x44
	.uleb128 0x12
	.long	.LASF1
	.byte	0x1
	.value	0x1c8
	.long	0x6b3
	.byte	0x48
	.uleb128 0x12
	.long	.LASF648
	.byte	0x1
	.value	0x1c9
	.long	0x490
	.byte	0x4c
	.uleb128 0x12
	.long	.LASF649
	.byte	0x1
	.value	0x1ca
	.long	0x490
	.byte	0x4d
	.uleb128 0x12
	.long	.LASF650
	.byte	0x1
	.value	0x1cb
	.long	0x490
	.byte	0x4e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e03
	.uleb128 0xf
	.long	.LASF651
	.byte	0x4
	.byte	0x1
	.value	0x244
	.long	0x1eed
	.uleb128 0x10
	.long	.LASF652
	.sleb128 0
	.uleb128 0x10
	.long	.LASF653
	.sleb128 1
	.uleb128 0x10
	.long	.LASF654
	.sleb128 2
	.byte	0
	.uleb128 0x11
	.long	.LASF655
	.byte	0x10
	.byte	0x1
	.value	0x23d
	.long	0x1f15
	.uleb128 0x12
	.long	.LASF656
	.byte	0x1
	.value	0x240
	.long	0x2d
	.byte	0
	.uleb128 0x12
	.long	.LASF657
	.byte	0x1
	.value	0x244
	.long	0x1ecd
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF658
	.byte	0xc0
	.byte	0x1
	.value	0x230
	.long	0x1f71
	.uleb128 0x12
	.long	.LASF659
	.byte	0x1
	.value	0x233
	.long	0x283
	.byte	0
	.uleb128 0x12
	.long	.LASF660
	.byte	0x1
	.value	0x235
	.long	0x283
	.byte	0x4
	.uleb128 0x12
	.long	.LASF661
	.byte	0x1
	.value	0x237
	.long	0x283
	.byte	0x8
	.uleb128 0x12
	.long	.LASF517
	.byte	0x1
	.value	0x239
	.long	0x2d
	.byte	0x10
	.uleb128 0x12
	.long	.LASF662
	.byte	0x1
	.value	0x23b
	.long	0x283
	.byte	0x18
	.uleb128 0x12
	.long	.LASF663
	.byte	0x1
	.value	0x245
	.long	0x1f71
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.long	0x1eed
	.long	0x1f81
	.uleb128 0xd
	.long	0x29a
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.long	.LASF664
	.byte	0x10
	.byte	0x1
	.value	0x712
	.long	0x1fa9
	.uleb128 0x12
	.long	.LASF1
	.byte	0x1
	.value	0x714
	.long	0x6b3
	.byte	0
	.uleb128 0x24
	.string	"exp"
	.byte	0x1
	.value	0x715
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x25
	.string	"set"
	.byte	0x50
	.byte	0x1
	.value	0x126d
	.long	0x2060
	.uleb128 0x24
	.string	"rtl"
	.byte	0x1
	.value	0x1270
	.long	0x2d
	.byte	0
	.uleb128 0x24
	.string	"src"
	.byte	0x1
	.value	0x1272
	.long	0x2d
	.byte	0x8
	.uleb128 0x12
	.long	.LASF665
	.byte	0x1
	.value	0x1274
	.long	0x1ec7
	.byte	0x10
	.uleb128 0x12
	.long	.LASF666
	.byte	0x1
	.value	0x1276
	.long	0x436
	.byte	0x18
	.uleb128 0x12
	.long	.LASF667
	.byte	0x1
	.value	0x1278
	.long	0x436
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF668
	.byte	0x1
	.value	0x127a
	.long	0x2d
	.byte	0x20
	.uleb128 0x12
	.long	.LASF669
	.byte	0x1
	.value	0x127c
	.long	0x490
	.byte	0x28
	.uleb128 0x12
	.long	.LASF670
	.byte	0x1
	.value	0x127f
	.long	0x490
	.byte	0x29
	.uleb128 0x12
	.long	.LASF1
	.byte	0x1
	.value	0x1281
	.long	0x6b3
	.byte	0x2c
	.uleb128 0x12
	.long	.LASF671
	.byte	0x1
	.value	0x1283
	.long	0x2d
	.byte	0x30
	.uleb128 0x12
	.long	.LASF672
	.byte	0x1
	.value	0x1285
	.long	0x2d
	.byte	0x38
	.uleb128 0x12
	.long	.LASF673
	.byte	0x1
	.value	0x1287
	.long	0x436
	.byte	0x40
	.uleb128 0x12
	.long	.LASF674
	.byte	0x1
	.value	0x1289
	.long	0x1ec7
	.byte	0x48
	.byte	0
	.uleb128 0x26
	.long	.LASF894
	.byte	0x1
	.value	0x2ba
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x209d
	.uleb128 0x27
	.long	.LASF675
	.byte	0x1
	.value	0x2bb
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x2bd
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF676
	.byte	0x1
	.value	0x2cd
	.long	0x283
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x20f9
	.uleb128 0x2a
	.string	"xp"
	.byte	0x1
	.value	0x2ce
	.long	0x109b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF478
	.byte	0x1
	.value	0x2cf
	.long	0x43d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x2d1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x2d2
	.long	0x14c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF677
	.byte	0x1
	.value	0x2df
	.long	0x283
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x21fb
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x2e0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x2e2
	.long	0x14b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x2e3
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.long	.LASF646
	.byte	0x1
	.value	0x2e4
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF678
	.byte	0x1
	.value	0x2e5
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2b
	.long	.LASF679
	.byte	0x1
	.value	0x2ea
	.long	0x149c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF680
	.byte	0x1
	.value	0x2ea
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF681
	.byte	0x1
	.value	0x2ea
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF682
	.byte	0x1
	.value	0x2ea
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2b
	.long	.LASF683
	.byte	0x1
	.value	0x2ea
	.long	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2b
	.long	.LASF684
	.byte	0x1
	.value	0x2ea
	.long	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF685
	.byte	0x1
	.value	0x2ff
	.long	0x283
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x225a
	.uleb128 0x27
	.long	.LASF686
	.byte	0x1
	.value	0x300
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF687
	.byte	0x1
	.value	0x300
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF688
	.byte	0x1
	.value	0x300
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF689
	.byte	0x1
	.value	0x300
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF690
	.byte	0x1
	.value	0x322
	.long	0x283
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2299
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x323
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF544
	.byte	0x1
	.value	0x324
	.long	0x871
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2e
	.long	.LASF695
	.byte	0x1
	.value	0x339
	.long	0x283
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x23fc
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x33a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF691
	.byte	0x1
	.value	0x33b
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x33d
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x33d
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x33e
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x33f
	.long	0x68d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF692
	.byte	0x1
	.value	0x340
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF743
	.byte	0x1
	.value	0x370
	.quad	.L78
	.uleb128 0x30
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x2359
	.uleb128 0x2b
	.long	.LASF693
	.byte	0x1
	.value	0x370
	.long	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x30
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x238f
	.uleb128 0x2b
	.long	.LASF693
	.byte	0x1
	.value	0x370
	.long	0x451
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF694
	.byte	0x1
	.value	0x370
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x30
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x23b4
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x370
	.long	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x30
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x23d9
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x370
	.long	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x373
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF696
	.byte	0x1
	.value	0x38f
	.long	0x283
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x243b
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x390
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x391
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x29
	.long	.LASF697
	.byte	0x1
	.value	0x3aa
	.long	0x1dfd
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2489
	.uleb128 0x27
	.long	.LASF81
	.byte	0x1
	.value	0x3ab
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF698
	.byte	0x1
	.value	0x3ad
	.long	0x2489
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x3ae
	.long	0x1dfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1dfd
	.uleb128 0x31
	.long	.LASF699
	.byte	0x1
	.value	0x3da
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x24fd
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x3dc
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2b
	.long	.LASF360
	.byte	0x1
	.value	0x3f3
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2b
	.long	.LASF517
	.byte	0x1
	.value	0x3f8
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF700
	.byte	0x1
	.value	0x412
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2578
	.uleb128 0x2a
	.string	"reg"
	.byte	0x1
	.value	0x413
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x414
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x416
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x417
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"eqv"
	.byte	0x1
	.value	0x418
	.long	0x257e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF704
	.long	0x2594
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11645
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1d0c
	.uleb128 0x3
	.byte	0x8
	.long	0x1d79
	.uleb128 0xc
	.long	0x490
	.long	0x2594
	.uleb128 0xd
	.long	0x29a
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.long	0x2584
	.uleb128 0x31
	.long	.LASF701
	.byte	0x1
	.value	0x42d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2623
	.uleb128 0x2a
	.string	"new"
	.byte	0x1
	.value	0x42e
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"old"
	.byte	0x1
	.value	0x42e
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF702
	.byte	0x1
	.value	0x430
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF703
	.byte	0x1
	.value	0x430
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x431
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x432
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF704
	.long	0x2633
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11654
	.byte	0
	.uleb128 0xc
	.long	0x490
	.long	0x2633
	.uleb128 0xd
	.long	0x29a
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.long	0x2623
	.uleb128 0x31
	.long	.LASF705
	.byte	0x1
	.value	0x46d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x269c
	.uleb128 0x2a
	.string	"reg"
	.byte	0x1
	.value	0x46e
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x470
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x471
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x472
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0x472
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x29
	.long	.LASF706
	.byte	0x1
	.value	0x496
	.long	0x283
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2776
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x497
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x499
	.long	0x871
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x49a
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x49a
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x49b
	.long	0x68d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF707
	.byte	0x1
	.value	0x49c
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x2756
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x1
	.value	0x4a4
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF708
	.byte	0x1
	.value	0x4a5
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x4a8
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x2c
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x4bb
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF709
	.byte	0x1
	.value	0x500
	.long	0x283
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2816
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x501
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF675
	.byte	0x1
	.value	0x502
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF513
	.byte	0x1
	.value	0x503
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x1
	.value	0x507
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF710
	.byte	0x1
	.value	0x508
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x510
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF711
	.byte	0x1
	.value	0x550
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x28fd
	.uleb128 0x2a
	.string	"elt"
	.byte	0x1
	.value	0x551
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF712
	.byte	0x1
	.value	0x552
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x28a9
	.uleb128 0x2b
	.long	.LASF483
	.byte	0x1
	.value	0x55d
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x55e
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2b
	.long	.LASF713
	.byte	0x1
	.value	0x567
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x28dd
	.uleb128 0x2b
	.long	.LASF483
	.byte	0x1
	.value	0x573
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x574
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x58d
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF714
	.byte	0x1
	.value	0x5a5
	.long	0x1ec7
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2958
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x5a6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF712
	.byte	0x1
	.value	0x5a7
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x5a8
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x5aa
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF715
	.byte	0x1
	.value	0x5b8
	.long	0x1ec7
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x29d4
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x5b9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF712
	.byte	0x1
	.value	0x5ba
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x5bb
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x5bd
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x1
	.value	0x5c1
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF716
	.byte	0x1
	.value	0x5d8
	.long	0x2d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a20
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x5d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x5da
	.long	0x871
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x5dc
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.long	.LASF717
	.byte	0x1
	.value	0x612
	.long	0x1ec7
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c1a
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x613
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.long	.LASF675
	.byte	0x1
	.value	0x614
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF712
	.byte	0x1
	.value	0x615
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x616
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x618
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.long	.LASF704
	.long	0x2c2a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11753
	.uleb128 0x30
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x2ae7
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x1
	.value	0x622
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.long	.LASF708
	.byte	0x1
	.value	0x623
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x624
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x30
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x2b0b
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x653
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x30
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x2b3e
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x65f
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x65f
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x30
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x2b73
	.uleb128 0x2b
	.long	.LASF718
	.byte	0x1
	.value	0x683
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.long	.LASF719
	.byte	0x1
	.value	0x684
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x30
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x2bc8
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x68f
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x28
	.string	"x_q"
	.byte	0x1
	.value	0x695
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF720
	.byte	0x1
	.value	0x696
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2b
	.long	.LASF721
	.byte	0x1
	.value	0x6aa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF722
	.byte	0x1
	.value	0x6ab
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.long	.LASF723
	.byte	0x1
	.value	0x6ac
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF724
	.byte	0x1
	.value	0x6ac
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x490
	.long	0x2c2a
	.uleb128 0xd
	.long	0x29a
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.long	0x2c1a
	.uleb128 0x31
	.long	.LASF725
	.byte	0x1
	.value	0x6d0
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cda
	.uleb128 0x27
	.long	.LASF726
	.byte	0x1
	.value	0x6d1
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF727
	.byte	0x1
	.value	0x6d1
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x6d3
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x6d3
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x6d3
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2b
	.long	.LASF712
	.byte	0x1
	.value	0x6df
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"exp"
	.byte	0x1
	.value	0x6e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF1
	.byte	0x1
	.value	0x6e1
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF728
	.byte	0x1
	.value	0x700
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d13
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x702
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x703
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF729
	.byte	0x1
	.value	0x719
	.long	0x283
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d5f
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x71a
	.long	0x109b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF478
	.byte	0x1
	.value	0x71b
	.long	0x43d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0x71d
	.long	0x2d5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1f81
	.uleb128 0x31
	.long	.LASF730
	.byte	0x1
	.value	0x731
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2eeb
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x732
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.long	.LASF731
	.byte	0x1
	.value	0x733
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x735
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x736
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.long	.LASF704
	.long	0x2efb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11861
	.uleb128 0x30
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x2eaa
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x1
	.value	0x740
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF712
	.byte	0x1
	.value	0x741
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x2e2b
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x753
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2c
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2b
	.long	.LASF732
	.byte	0x1
	.value	0x75a
	.long	0x43f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF708
	.byte	0x1
	.value	0x75c
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.long	.LASF733
	.byte	0x1
	.value	0x75e
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	.LASF734
	.byte	0x1
	.value	0x75e
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x28
	.string	"rn"
	.byte	0x1
	.value	0x75e
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x75f
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x75f
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x79a
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0x7a1
	.long	0x1f81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x490
	.long	0x2efb
	.uleb128 0xd
	.long	0x29a
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.long	0x2eeb
	.uleb128 0x31
	.long	.LASF735
	.byte	0x1
	.value	0x7bd
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f57
	.uleb128 0x27
	.long	.LASF81
	.byte	0x1
	.value	0x7be
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x7c0
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x7c1
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x7c1
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF736
	.byte	0x1
	.value	0x7d0
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ffc
	.uleb128 0x27
	.long	.LASF81
	.byte	0x1
	.value	0x7d1
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF345
	.byte	0x1
	.value	0x7d2
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x7d3
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x7d5
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x7d6
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x7d6
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"end"
	.byte	0x1
	.value	0x7d7
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x28
	.string	"exp"
	.byte	0x1
	.value	0x7dc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF737
	.byte	0x1
	.value	0x7f1
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x3061
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x7f2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x7f4
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x7f5
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x7f5
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF712
	.byte	0x1
	.value	0x7f6
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x31
	.long	.LASF738
	.byte	0x1
	.value	0x824
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x30e6
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x1
	.value	0x826
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LASF708
	.byte	0x1
	.value	0x826
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x827
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF712
	.byte	0x1
	.value	0x828
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x829
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x829
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF732
	.byte	0x1
	.value	0x82a
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x29
	.long	.LASF739
	.byte	0x1
	.value	0x85c
	.long	0x2d
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3181
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x85d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"elt"
	.byte	0x1
	.value	0x85e
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF740
	.byte	0x1
	.value	0x860
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x861
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x861
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF345
	.byte	0x1
	.value	0x862
	.long	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2b
	.long	.LASF721
	.byte	0x1
	.value	0x86c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF741
	.byte	0x1
	.value	0x8a2
	.long	0x436
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x31ce
	.uleb128 0x2a
	.string	"ps"
	.byte	0x1
	.value	0x8a3
	.long	0x68d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF712
	.byte	0x1
	.value	0x8a5
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x8a6
	.long	0x31ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x31d4
	.uleb128 0xa
	.long	0x458
	.uleb128 0x29
	.long	.LASF742
	.byte	0x1
	.value	0x8bd
	.long	0x436
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x3385
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x8be
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x8bf
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x8c1
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x8c1
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF712
	.byte	0x1
	.value	0x8c2
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x8c3
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x8c4
	.long	0x68d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF744
	.byte	0x1
	.value	0x8c7
	.quad	.L638
	.uleb128 0x32
	.long	.LASF704
	.long	0x3385
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11999
	.uleb128 0x30
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x32bd
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x1
	.value	0x8d0
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LASF745
	.byte	0x1
	.value	0x8d1
	.long	0x338a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.byte	0
	.uleb128 0x30
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x32e3
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x90f
	.long	0x451
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x30
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x3308
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x91b
	.long	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x30
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x333d
	.uleb128 0x2b
	.long	.LASF746
	.byte	0x1
	.value	0x925
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x926
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x30
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x3362
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x99e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2c
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x9b1
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x2eeb
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF747
	.uleb128 0x29
	.long	.LASF748
	.byte	0x1
	.value	0x9c0
	.long	0x436
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x33fd
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x9c1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x9c2
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LASF749
	.byte	0x1
	.value	0x9c4
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF750
	.byte	0x1
	.value	0x9c5
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF712
	.byte	0x1
	.value	0x9c6
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF751
	.byte	0x1
	.value	0x9dc
	.long	0x283
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x3552
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x9dd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.value	0x9dd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF752
	.byte	0x1
	.value	0x9de
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.long	.LASF753
	.byte	0x1
	.value	0x9df
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x9e1
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x9e1
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x9e2
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x9e3
	.long	0x68d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF704
	.long	0x3562
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12061
	.uleb128 0x30
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x34de
	.uleb128 0x28
	.string	"y_q"
	.byte	0x1
	.value	0x9f7
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF754
	.byte	0x1
	.value	0x9f8
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x30
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x3513
	.uleb128 0x28
	.string	"x_q"
	.byte	0x1
	.value	0xa03
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LASF720
	.byte	0x1
	.value	0xa04
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x1
	.value	0xa21
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF708
	.byte	0x1
	.value	0xa22
	.long	0x436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xa25
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x490
	.long	0x3562
	.uleb128 0xd
	.long	0x29a
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.long	0x3552
	.uleb128 0x29
	.long	.LASF755
	.byte	0x1
	.value	0xa9f
	.long	0x283
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x365e
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0xaa0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF756
	.byte	0x1
	.value	0xaa1
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x35db
	.uleb128 0x28
	.string	"x_q"
	.byte	0x1
	.value	0xaaa
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF720
	.byte	0x1
	.value	0xaab
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x30
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x360f
	.uleb128 0x2b
	.long	.LASF757
	.byte	0x1
	.value	0xab7
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF758
	.byte	0x1
	.value	0xab8
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2c
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2b
	.long	.LASF757
	.byte	0x1
	.value	0xaca
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF759
	.byte	0x1
	.value	0xacb
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF758
	.byte	0x1
	.value	0xacc
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF760
	.byte	0x1
	.value	0xacd
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF761
	.byte	0x1
	.value	0xae5
	.long	0x2d
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x375e
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0xae6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF762
	.byte	0x1
	.value	0xae7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xae9
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0xaea
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xaeb
	.long	0x68d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x370d
	.uleb128 0x2b
	.long	.LASF360
	.byte	0x1
	.value	0xb01
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0xb02
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0xb03
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2c
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xb1d
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xb21
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF763
	.byte	0x1
	.value	0xb22
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF764
	.byte	0x1
	.value	0xb49
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3987
	.uleb128 0x27
	.long	.LASF762
	.byte	0x1
	.value	0xb4a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2a
	.string	"loc"
	.byte	0x1
	.value	0xb4b
	.long	0x109b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0xb4c
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0xb4e
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF765
	.byte	0x1
	.value	0xb4f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0xb51
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF766
	.byte	0x1
	.value	0xb52
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2b
	.long	.LASF749
	.byte	0x1
	.value	0xb54
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.long	.LASF750
	.byte	0x1
	.value	0xb55
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.long	.LASF767
	.byte	0x1
	.value	0xb56
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x1
	.value	0xb57
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.long	.LASF712
	.byte	0x1
	.value	0xb58
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x387e
	.uleb128 0x2b
	.long	.LASF768
	.byte	0x1
	.value	0xb77
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF769
	.byte	0x1
	.value	0xb78
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF770
	.byte	0x1
	.value	0xb79
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x30
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x38d4
	.uleb128 0x2b
	.long	.LASF771
	.byte	0x1
	.value	0xbaf
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF772
	.byte	0x1
	.value	0xbb0
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.long	.LASF773
	.byte	0x1
	.value	0xbb1
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF774
	.byte	0x1
	.value	0xbb2
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2c
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.value	0xbe0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x2b
	.long	.LASF771
	.byte	0x1
	.value	0xbf5
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.long	.LASF772
	.byte	0x1
	.value	0xbf6
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2b
	.long	.LASF774
	.byte	0x1
	.value	0xbf7
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF775
	.byte	0x1
	.value	0xbf8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF375
	.byte	0x1
	.value	0xbf9
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xc09
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF776
	.byte	0x1
	.value	0xc0b
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF777
	.byte	0x1
	.value	0xc35
	.long	0x871
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a9c
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0xc36
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.long	.LASF778
	.byte	0x1
	.value	0xc37
	.long	0x109b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF779
	.byte	0x1
	.value	0xc37
	.long	0x109b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF780
	.byte	0x1
	.value	0xc38
	.long	0x3a9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF781
	.byte	0x1
	.value	0xc38
	.long	0x3a9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF782
	.byte	0x1
	.value	0xc3a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF783
	.byte	0x1
	.value	0xc3a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0xc43
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF784
	.byte	0x1
	.value	0xc44
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0xc45
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x3a78
	.uleb128 0x2b
	.long	.LASF785
	.byte	0x1
	.value	0xc87
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2c
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x2b
	.long	.LASF786
	.byte	0x1
	.value	0xcd2
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x6b3
	.uleb128 0x29
	.long	.LASF787
	.byte	0x1
	.value	0xcf2
	.long	0x2d
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x418d
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0xcf3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x27
	.long	.LASF762
	.byte	0x1
	.value	0xcf4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0xcf6
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2b
	.long	.LASF1
	.byte	0x1
	.value	0xcf7
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xcf8
	.long	0x68d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xcf9
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -508
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xcfa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2b
	.long	.LASF788
	.byte	0x1
	.value	0xcfb
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x2b
	.long	.LASF789
	.byte	0x1
	.value	0xcfc
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -500
	.uleb128 0x2b
	.long	.LASF790
	.byte	0x1
	.value	0xcff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2b
	.long	.LASF791
	.byte	0x1
	.value	0xd00
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2b
	.long	.LASF792
	.byte	0x1
	.value	0xd04
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2b
	.long	.LASF793
	.byte	0x1
	.value	0xd05
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2b
	.long	.LASF794
	.byte	0x1
	.value	0xd06
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2b
	.long	.LASF795
	.byte	0x1
	.value	0xd0a
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x2f
	.long	.LASF796
	.byte	0x1
	.value	0x1077
	.quad	.L1211
	.uleb128 0x30
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x3be6
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0xd2f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x30
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.long	0x3c1c
	.uleb128 0x2b
	.long	.LASF797
	.byte	0x1
	.value	0xd4a
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -484
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0xd4b
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0
	.uleb128 0x30
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0x3cbc
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0xd84
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2c
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x2b
	.long	.LASF798
	.byte	0x1
	.value	0xd91
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x30
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.long	0x3c88
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.value	0xd9c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.byte	0
	.uleb128 0x2c
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.value	0xdb5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x28
	.string	"op1"
	.byte	0x1
	.value	0xdb6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.long	0x3df8
	.uleb128 0x2b
	.long	.LASF765
	.byte	0x1
	.value	0xdff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2b
	.long	.LASF799
	.byte	0x1
	.value	0xe00
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2b
	.long	.LASF345
	.byte	0x1
	.value	0xe01
	.long	0x43f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x30
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.long	0x3d37
	.uleb128 0x2b
	.long	.LASF800
	.byte	0x1
	.value	0xe06
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x2b
	.long	.LASF801
	.byte	0x1
	.value	0xe07
	.long	0x2578
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x30
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.long	0x3d7d
	.uleb128 0x2b
	.long	.LASF802
	.byte	0x1
	.value	0xe22
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2b
	.long	.LASF803
	.byte	0x1
	.value	0xe23
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xe24
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x2c
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.uleb128 0x2b
	.long	.LASF804
	.byte	0x1
	.value	0xe48
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2b
	.long	.LASF805
	.byte	0x1
	.value	0xe49
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x30
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.long	0x3dd4
	.uleb128 0x2b
	.long	.LASF806
	.byte	0x1
	.value	0xe4e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x2c
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x2b
	.long	.LASF806
	.byte	0x1
	.value	0xe59
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x3f15
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.value	0xe93
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.long	.LASF807
	.byte	0x1
	.value	0xe94
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2b
	.long	.LASF808
	.byte	0x1
	.value	0xe94
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2b
	.long	.LASF809
	.byte	0x1
	.value	0xe95
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x2b
	.long	.LASF810
	.byte	0x1
	.value	0xe96
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2b
	.long	.LASF811
	.byte	0x1
	.value	0xe96
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2b
	.long	.LASF812
	.byte	0x1
	.value	0xe97
	.long	0x418d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xe98
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x30
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.long	0x3ec0
	.uleb128 0x2b
	.long	.LASF813
	.byte	0x1
	.value	0xea2
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x2b
	.long	.LASF814
	.byte	0x1
	.value	0xea3
	.long	0x2578
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x2c
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x2b
	.long	.LASF815
	.byte	0x1
	.value	0xef3
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x2b
	.long	.LASF776
	.byte	0x1
	.value	0xef4
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x2c
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0xf0a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x3f3b
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0xf2a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x30
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x3f61
	.uleb128 0x2b
	.long	.LASF649
	.byte	0x1
	.value	0xf42
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.byte	0
	.uleb128 0x30
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x4008
	.uleb128 0x28
	.string	"p0"
	.byte	0x1
	.value	0xf5f
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"p1"
	.byte	0x1
	.value	0xf5f
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.long	.LASF816
	.byte	0x1
	.value	0xf60
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF817
	.byte	0x1
	.value	0xf60
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.long	.LASF818
	.byte	0x1
	.value	0xf61
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x28
	.string	"qty"
	.byte	0x1
	.value	0xfb2
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x2c
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0xfb6
	.long	0x2578
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.long	0x408e
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0xfcf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF819
	.byte	0x1
	.value	0xfd0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x2b
	.long	.LASF820
	.byte	0x1
	.value	0xfd7
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2b
	.long	.LASF821
	.byte	0x1
	.value	0xfd8
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x2b
	.long	.LASF816
	.byte	0x1
	.value	0xfdb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	.LASF817
	.byte	0x1
	.value	0xfdb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.long	0x40b2
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x1020
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x30
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.long	0x40d6
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x1034
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x30
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.long	0x410a
	.uleb128 0x2b
	.long	.LASF822
	.byte	0x1
	.value	0x105c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x105d
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x30
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0x412d
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x106e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2c
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x2b
	.long	.LASF823
	.byte	0x1
	.value	0x1086
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x1088
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2b
	.long	.LASF819
	.byte	0x1
	.value	0x1089
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF824
	.byte	0x1
	.value	0x108a
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x2b
	.long	.LASF822
	.byte	0x1
	.value	0x108b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x2d
	.long	0x419d
	.uleb128 0xd
	.long	0x29a
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.long	.LASF825
	.byte	0x1
	.value	0x10fb
	.long	0x2d
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x4223
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x10fc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.long	0x4201
	.uleb128 0x28
	.string	"x_q"
	.byte	0x1
	.value	0x1101
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF720
	.byte	0x1
	.value	0x1102
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2c
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x1112
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF826
	.byte	0x1
	.value	0x112e
	.long	0x2d
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x42a1
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x112f
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1130
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF827
	.byte	0x1
	.value	0x1132
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x2b
	.long	.LASF345
	.byte	0x1
	.value	0x1139
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x113a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF828
	.byte	0x1
	.value	0x115b
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4367
	.uleb128 0x27
	.long	.LASF762
	.byte	0x1
	.value	0x115c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF651
	.byte	0x1
	.value	0x115d
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.long	.LASF829
	.byte	0x1
	.value	0x115f
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.value	0x1160
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"op1"
	.byte	0x1
	.value	0x1160
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1161
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF1
	.byte	0x1
	.value	0x1162
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF830
	.byte	0x1
	.value	0x1162
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x1
	.value	0x1162
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF832
	.byte	0x1
	.value	0x1163
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x1164
	.long	0x871
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.long	.LASF833
	.byte	0x1
	.value	0x1190
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x453a
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x1191
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x1192
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.string	"op0"
	.byte	0x1
	.value	0x1193
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.string	"op1"
	.byte	0x1
	.value	0x1193
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.long	.LASF832
	.byte	0x1
	.value	0x1194
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.long	.LASF834
	.byte	0x1
	.value	0x1196
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.long	.LASF835
	.byte	0x1
	.value	0x1196
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	.LASF836
	.byte	0x1
	.value	0x1197
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LASF837
	.byte	0x1
	.value	0x1197
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF838
	.byte	0x1
	.value	0x1198
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF839
	.byte	0x1
	.value	0x1198
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.long	0x4469
	.uleb128 0x2b
	.long	.LASF785
	.byte	0x1
	.value	0x11a4
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x11a5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x30
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.long	0x449e
	.uleb128 0x2b
	.long	.LASF785
	.byte	0x1
	.value	0x11b0
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x11b1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x30
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.long	0x44d3
	.uleb128 0x2b
	.long	.LASF785
	.byte	0x1
	.value	0x11c4
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x11c5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x30
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x4508
	.uleb128 0x2b
	.long	.LASF785
	.byte	0x1
	.value	0x11d1
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x11d2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x11fe
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"qty"
	.byte	0x1
	.value	0x11ff
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF840
	.byte	0x1
	.value	0x128d
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dcf
	.uleb128 0x27
	.long	.LASF762
	.byte	0x1
	.value	0x128e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x27
	.long	.LASF841
	.byte	0x1
	.value	0x128f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x1291
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1292
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -628
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x1293
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x2b
	.long	.LASF842
	.byte	0x1
	.value	0x1294
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x2b
	.long	.LASF843
	.byte	0x1
	.value	0x129c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x2b
	.long	.LASF844
	.byte	0x1
	.value	0x129d
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x2b
	.long	.LASF845
	.byte	0x1
	.value	0x129e
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -620
	.uleb128 0x2b
	.long	.LASF846
	.byte	0x1
	.value	0x129f
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x2b
	.long	.LASF847
	.byte	0x1
	.value	0x12a0
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -612
	.uleb128 0x2b
	.long	.LASF463
	.byte	0x1
	.value	0x12a2
	.long	0x4dcf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x30
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.long	0x46a0
	.uleb128 0x28
	.string	"lim"
	.byte	0x1
	.value	0x12d8
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0x30
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.long	0x467f
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x12e9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2c
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x2b
	.long	.LASF848
	.byte	0x1
	.value	0x12ec
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x12f9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.long	0x46f6
	.uleb128 0x2b
	.long	.LASF493
	.byte	0x1
	.value	0x134d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x134e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x134f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2b
	.long	.LASF763
	.byte	0x1
	.value	0x1350
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.byte	0
	.uleb128 0x30
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x4af4
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x1380
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2b
	.long	.LASF493
	.byte	0x1
	.value	0x1380
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x2b
	.long	.LASF849
	.byte	0x1
	.value	0x1381
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x1382
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1382
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2b
	.long	.LASF1
	.byte	0x1
	.value	0x1383
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x2b
	.long	.LASF850
	.byte	0x1
	.value	0x1384
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2b
	.long	.LASF671
	.byte	0x1
	.value	0x1385
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2b
	.long	.LASF851
	.byte	0x1
	.value	0x1386
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2b
	.long	.LASF674
	.byte	0x1
	.value	0x1387
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2b
	.long	.LASF852
	.byte	0x1
	.value	0x1388
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x2b
	.long	.LASF853
	.byte	0x1
	.value	0x1389
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x2b
	.long	.LASF854
	.byte	0x1
	.value	0x138a
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x2b
	.long	.LASF855
	.byte	0x1
	.value	0x138b
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x2b
	.long	.LASF856
	.byte	0x1
	.value	0x138c
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x2b
	.long	.LASF857
	.byte	0x1
	.value	0x138d
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x2b
	.long	.LASF858
	.byte	0x1
	.value	0x138e
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x2b
	.long	.LASF859
	.byte	0x1
	.value	0x138f
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -580
	.uleb128 0x2b
	.long	.LASF860
	.byte	0x1
	.value	0x1390
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2b
	.long	.LASF861
	.byte	0x1
	.value	0x1391
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x2b
	.long	.LASF862
	.byte	0x1
	.value	0x1394
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x30
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.long	0x487f
	.uleb128 0x2b
	.long	.LASF863
	.byte	0x1
	.value	0x13a2
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.byte	0
	.uleb128 0x30
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.long	0x48a5
	.uleb128 0x2b
	.long	.LASF864
	.byte	0x1
	.value	0x1458
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x30
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.long	0x48ed
	.uleb128 0x2b
	.long	.LASF865
	.byte	0x1
	.value	0x1472
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x2c
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.uleb128 0x2b
	.long	.LASF866
	.byte	0x1
	.value	0x1479
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.long	0x4955
	.uleb128 0x2b
	.long	.LASF867
	.byte	0x1
	.value	0x1494
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x2b
	.long	.LASF868
	.byte	0x1
	.value	0x1495
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2c
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.uleb128 0x2b
	.long	.LASF869
	.byte	0x1
	.value	0x149b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2b
	.long	.LASF870
	.byte	0x1
	.value	0x149c
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.long	0x497b
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x14f5
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.byte	0
	.uleb128 0x30
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.long	0x49a1
	.uleb128 0x2b
	.long	.LASF871
	.byte	0x1
	.value	0x1557
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.byte	0
	.uleb128 0x30
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.long	0x4a29
	.uleb128 0x2b
	.long	.LASF872
	.byte	0x1
	.value	0x15f3
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x2b
	.long	.LASF873
	.byte	0x1
	.value	0x15f4
	.long	0x2578
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.uleb128 0x2b
	.long	.LASF874
	.byte	0x1
	.value	0x1601
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2b
	.long	.LASF875
	.byte	0x1
	.value	0x1602
	.long	0x2578
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.long	.LASF360
	.byte	0x1
	.value	0x1603
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x2b
	.long	.LASF876
	.byte	0x1
	.value	0x1604
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.long	0x4a91
	.uleb128 0x2b
	.long	.LASF872
	.byte	0x1
	.value	0x164b
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2b
	.long	.LASF873
	.byte	0x1
	.value	0x164c
	.long	0x2578
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.uleb128 0x2b
	.long	.LASF877
	.byte	0x1
	.value	0x1651
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.long	.LASF626
	.byte	0x1
	.value	0x1652
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.long	0x4ab7
	.uleb128 0x2b
	.long	.LASF765
	.byte	0x1
	.value	0x1673
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0
	.long	0x4ad1
	.uleb128 0x2b
	.long	.LASF878
	.byte	0x1
	.value	0x1688
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x2c
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x16bc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.long	0x4b4a
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x1706
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF675
	.byte	0x1
	.value	0x1707
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2b
	.long	.LASF493
	.byte	0x1
	.value	0x1708
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.long	.LASF863
	.byte	0x1
	.value	0x1709
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.byte	0
	.uleb128 0x30
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.long	0x4bc2
	.uleb128 0x2b
	.long	.LASF675
	.byte	0x1
	.value	0x1734
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x1735
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF493
	.byte	0x1
	.value	0x1736
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF1
	.byte	0x1
	.value	0x1737
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -508
	.uleb128 0x2c
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x1741
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.long	0x4be8
	.uleb128 0x2b
	.long	.LASF493
	.byte	0x1
	.value	0x1775
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x30
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.long	0x4c4c
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x179b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x1
	.value	0x17ad
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x2b
	.long	.LASF708
	.byte	0x1
	.value	0x17ae
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -500
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x17b1
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.long	0x4c72
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x17c9
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.byte	0
	.uleb128 0x30
	.quad	.LBB124
	.quad	.LBE124-.LBB124
	.long	0x4d3c
	.uleb128 0x2b
	.long	.LASF493
	.byte	0x1
	.value	0x17d9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2b
	.long	.LASF668
	.byte	0x1
	.value	0x17da
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x17db
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2c
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.uleb128 0x2b
	.long	.LASF879
	.byte	0x1
	.value	0x1833
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x1834
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2b
	.long	.LASF675
	.byte	0x1
	.value	0x1834
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2c
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.uleb128 0x2b
	.long	.LASF876
	.byte	0x1
	.value	0x1839
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2b
	.long	.LASF666
	.byte	0x1
	.value	0x183a
	.long	0x436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x2b
	.long	.LASF665
	.byte	0x1
	.value	0x183b
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.uleb128 0x2b
	.long	.LASF874
	.byte	0x1
	.value	0x187b
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x2b
	.long	.LASF875
	.byte	0x1
	.value	0x187c
	.long	0x2578
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.uleb128 0x2b
	.long	.LASF483
	.byte	0x1
	.value	0x1881
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.uleb128 0x2b
	.long	.LASF493
	.byte	0x1
	.value	0x1894
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x1895
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF877
	.byte	0x1
	.value	0x1896
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1fa9
	.uleb128 0x31
	.long	.LASF880
	.byte	0x1
	.value	0x18d5
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e1d
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x18d7
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x18d8
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x18d8
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF881
	.byte	0x1
	.value	0x18e7
	.long	0x283
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e4f
	.uleb128 0x27
	.long	.LASF765
	.byte	0x1
	.value	0x18e8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF882
	.byte	0x1
	.value	0x1903
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x4eff
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1904
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.quad	.LBB130
	.quad	.LBE130-.LBB130
	.long	0x4e9f
	.uleb128 0x28
	.string	"ref"
	.byte	0x1
	.value	0x1908
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2c
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1915
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x1918
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.uleb128 0x28
	.string	"ref"
	.byte	0x1
	.value	0x191b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF883
	.byte	0x1
	.value	0x1931
	.long	0x2d
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fd2
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1932
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF884
	.byte	0x1
	.value	0x1933
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x1935
	.long	0x871
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x1936
	.long	0x68d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1937
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.quad	.LBB134
	.quad	.LBE134-.LBB134
	.long	0x4f8f
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x1957
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2c
	.quad	.LBB135
	.quad	.LBE135-.LBB135
	.uleb128 0x28
	.string	"ent"
	.byte	0x1
	.value	0x1965
	.long	0x2578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.quad	.LBB136
	.quad	.LBE136-.LBB136
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x196b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF885
	.byte	0x1
	.value	0x198f
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x5029
	.uleb128 0x27
	.long	.LASF886
	.byte	0x1
	.value	0x1990
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF762
	.byte	0x1
	.value	0x1992
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1993
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1994
	.long	0x1ec7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF887
	.byte	0x1
	.value	0x19d7
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x5084
	.uleb128 0x27
	.long	.LASF493
	.byte	0x1
	.value	0x19d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"set"
	.byte	0x1
	.value	0x19d8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF478
	.byte	0x1
	.value	0x19da
	.long	0x43d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x19dc
	.long	0x871
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF888
	.byte	0x1
	.value	0x19fe
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x50c1
	.uleb128 0x27
	.long	.LASF889
	.byte	0x1
	.value	0x19ff
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF762
	.byte	0x1
	.value	0x1a01
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF890
	.byte	0x1
	.value	0x1a1a
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x511a
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1a1b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"set"
	.byte	0x1
	.value	0x1a1c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF478
	.byte	0x1
	.value	0x1a1d
	.long	0x43d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF891
	.byte	0x1
	.value	0x1a1f
	.long	0x109b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF892
	.byte	0x1
	.value	0x1a3c
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x5218
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1a3d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF762
	.byte	0x1
	.value	0x1a3e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF886
	.byte	0x1
	.value	0x1a3f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF665
	.byte	0x1
	.value	0x1a41
	.long	0x1ec7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF704
	.long	0x5218
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12690
	.uleb128 0x2c
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1a53
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1a53
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x1a67
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF891
	.byte	0x1
	.value	0x1a68
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.uleb128 0x2b
	.long	.LASF80
	.byte	0x1
	.value	0x1a7b
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LASF893
	.byte	0x1
	.value	0x1a7c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x67d
	.uleb128 0x26
	.long	.LASF895
	.byte	0x1
	.value	0x1aa8
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x5330
	.uleb128 0x27
	.long	.LASF762
	.byte	0x1
	.value	0x1aa9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF478
	.byte	0x1
	.value	0x1aaa
	.long	0x5330
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF896
	.byte	0x1
	.value	0x1aab
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.long	.LASF897
	.byte	0x1
	.value	0x1aac
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF898
	.byte	0x1
	.value	0x1aad
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1aaf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x1aaf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF661
	.byte	0x1
	.value	0x1ab0
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF659
	.byte	0x1
	.value	0x1ab1
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LASF660
	.byte	0x1
	.value	0x1ab1
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF482
	.byte	0x1
	.value	0x1ab2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF662
	.byte	0x1
	.value	0x1ab3
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF899
	.byte	0x1
	.value	0x1ab4
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1ab5
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.quad	.LBB140
	.quad	.LBE140-.LBB140
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x1b42
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1f15
	.uleb128 0x2e
	.long	.LASF900
	.byte	0x1
	.value	0x1b86
	.long	0x283
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x53f7
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1b87
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x27
	.long	.LASF80
	.byte	0x1
	.value	0x1b88
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x27
	.long	.LASF897
	.byte	0x1
	.value	0x1b89
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x27
	.long	.LASF901
	.byte	0x1
	.value	0x1b8a
	.long	0x53f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x1b8c
	.long	0x1f15
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF762
	.byte	0x1
	.value	0x1b8d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1b8e
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2c
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.uleb128 0x2b
	.long	.LASF902
	.byte	0x1
	.value	0x1beb
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2b
	.long	.LASF903
	.byte	0x1
	.value	0x1bec
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x497
	.uleb128 0x29
	.long	.LASF904
	.byte	0x1
	.value	0x1c18
	.long	0x2d
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x5550
	.uleb128 0x27
	.long	.LASF905
	.byte	0x1
	.value	0x1c19
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2a
	.string	"to"
	.byte	0x1
	.value	0x1c19
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x27
	.long	.LASF906
	.byte	0x1
	.value	0x1c1a
	.long	0x5550
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x27
	.long	.LASF907
	.byte	0x1
	.value	0x1c1b
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2b
	.long	.LASF762
	.byte	0x1
	.value	0x1c1d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2b
	.long	.LASF908
	.byte	0x1
	.value	0x1c1e
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2b
	.long	.LASF841
	.byte	0x1
	.value	0x1c1f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2b
	.long	.LASF909
	.byte	0x1
	.value	0x1c20
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x32
	.long	.LASF704
	.long	0x5566
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12771
	.uleb128 0x2c
	.quad	.LBB142
	.quad	.LBE142-.LBB142
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x1c32
	.long	0x871
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x30
	.quad	.LBB143
	.quad	.LBE143-.LBB143
	.long	0x54f8
	.uleb128 0x2b
	.long	.LASF657
	.byte	0x1
	.value	0x1c47
	.long	0x1ecd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x30
	.quad	.LBB144
	.quad	.LBE144-.LBB144
	.long	0x551c
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1c5f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x2c
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x1ca3
	.long	0x1f15
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF483
	.byte	0x1
	.value	0x1ca4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1eed
	.uleb128 0xc
	.long	0x490
	.long	0x5566
	.uleb128 0xd
	.long	0x29a
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.long	0x5556
	.uleb128 0x29
	.long	.LASF910
	.byte	0x1
	.value	0x1ced
	.long	0x283
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x55bb
	.uleb128 0x2a
	.string	"rtl"
	.byte	0x1
	.value	0x1cee
	.long	0x109b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF478
	.byte	0x1
	.value	0x1cef
	.long	0x43d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF762
	.byte	0x1
	.value	0x1cf1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF911
	.byte	0x1
	.value	0x1d07
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x564e
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1d08
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF912
	.byte	0x1
	.value	0x1d09
	.long	0x6a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF493
	.byte	0x1
	.value	0x1d0a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF913
	.byte	0x1
	.value	0x1d0b
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.value	0x1d0d
	.long	0x871
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x1d0e
	.long	0x68d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1d0f
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x1d0f
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF914
	.byte	0x1
	.value	0x1d63
	.long	0x338a
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x569e
	.uleb128 0x2a
	.string	"set"
	.byte	0x1
	.value	0x1d64
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF762
	.byte	0x1
	.value	0x1d65
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF912
	.byte	0x1
	.value	0x1d66
	.long	0x6a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.long	.LASF915
	.byte	0x1
	.value	0x1d87
	.long	0x338a
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x570d
	.uleb128 0x27
	.long	.LASF762
	.byte	0x1
	.value	0x1d88
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF912
	.byte	0x1
	.value	0x1d89
	.long	0x6a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1d8b
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.quad	.LBB146
	.quad	.LBE146-.LBB146
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x1d92
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF916
	.byte	0x1
	.value	0x1da5
	.long	0x338a
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x577e
	.uleb128 0x27
	.long	.LASF762
	.byte	0x1
	.value	0x1da6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF877
	.byte	0x1
	.value	0x1da8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.quad	.LBB147
	.quad	.LBE147-.LBB147
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1db1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x1db2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF917
	.byte	0x1
	.value	0x1dc9
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x587a
	.uleb128 0x27
	.long	.LASF494
	.byte	0x1
	.value	0x1dca
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF918
	.byte	0x1
	.value	0x1dcb
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.long	.LASF919
	.byte	0x1
	.value	0x1dcc
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF912
	.byte	0x1
	.value	0x1dce
	.long	0x6a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF762
	.byte	0x1
	.value	0x1dcf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF483
	.byte	0x1
	.value	0x1dcf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1dd0
	.long	0x283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LASF920
	.byte	0x1
	.value	0x1dd1
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF921
	.byte	0x1
	.value	0x1dd1
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x1dd2
	.long	0x1563
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB148
	.quad	.LBE148-.LBB148
	.long	0x5858
	.uleb128 0x2b
	.long	.LASF922
	.byte	0x1
	.value	0x1de7
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2c
	.quad	.LBB149
	.quad	.LBE149-.LBB149
	.uleb128 0x2b
	.long	.LASF922
	.byte	0x1
	.value	0x1e0e
	.long	0x283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF923
	.byte	0x1
	.byte	0xc8
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	max_reg
	.uleb128 0x35
	.long	.LASF924
	.byte	0x1
	.byte	0xcd
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	max_insn_uid
	.uleb128 0x35
	.long	.LASF925
	.byte	0x1
	.byte	0xd2
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	max_qty
	.uleb128 0x35
	.long	.LASF926
	.byte	0x1
	.byte	0xd7
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	next_qty
	.uleb128 0x35
	.long	.LASF927
	.byte	0x1
	.byte	0xfe
	.long	0x2578
	.uleb128 0x9
	.byte	0x3
	.quad	qty_table
	.uleb128 0x2b
	.long	.LASF928
	.byte	0x1
	.value	0x110
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	prev_insn
	.uleb128 0x2b
	.long	.LASF929
	.byte	0x1
	.value	0x114
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	this_insn
	.uleb128 0x2b
	.long	.LASF930
	.byte	0x1
	.value	0x125
	.long	0x257e
	.uleb128 0x9
	.byte	0x3
	.quad	reg_eqv_table
	.uleb128 0x2b
	.long	.LASF931
	.byte	0x1
	.value	0x141
	.long	0x1dfd
	.uleb128 0x9
	.byte	0x3
	.quad	cse_reg_info_free_list
	.uleb128 0x2b
	.long	.LASF932
	.byte	0x1
	.value	0x144
	.long	0x1dfd
	.uleb128 0x9
	.byte	0x3
	.quad	cse_reg_info_used_list
	.uleb128 0x2b
	.long	.LASF933
	.byte	0x1
	.value	0x145
	.long	0x1dfd
	.uleb128 0x9
	.byte	0x3
	.quad	cse_reg_info_used_list_end
	.uleb128 0xc
	.long	0x1dfd
	.long	0x5977
	.uleb128 0xd
	.long	0x29a
	.byte	0x7f
	.byte	0
	.uleb128 0x2b
	.long	.LASF934
	.byte	0x1
	.value	0x14b
	.long	0x5967
	.uleb128 0x9
	.byte	0x3
	.quad	reg_hash
	.uleb128 0x2b
	.long	.LASF935
	.byte	0x1
	.value	0x152
	.long	0x436
	.uleb128 0x9
	.byte	0x3
	.quad	cached_regno
	.uleb128 0x2b
	.long	.LASF936
	.byte	0x1
	.value	0x153
	.long	0x1dfd
	.uleb128 0x9
	.byte	0x3
	.quad	cached_cse_reg_info
	.uleb128 0x2b
	.long	.LASF937
	.byte	0x1
	.value	0x15a
	.long	0x1433
	.uleb128 0x9
	.byte	0x3
	.quad	hard_regs_in_table
	.uleb128 0x2b
	.long	.LASF938
	.byte	0x1
	.value	0x15e
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	cse_basic_block_start
	.uleb128 0x2b
	.long	.LASF939
	.byte	0x1
	.value	0x162
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	cse_basic_block_end
	.uleb128 0x2b
	.long	.LASF940
	.byte	0x1
	.value	0x168
	.long	0x6a6
	.uleb128 0x9
	.byte	0x3
	.quad	uid_cuid
	.uleb128 0x2b
	.long	.LASF941
	.byte	0x1
	.value	0x16b
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	max_uid
	.uleb128 0x2b
	.long	.LASF942
	.byte	0x1
	.value	0x174
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	cse_altered
	.uleb128 0x2b
	.long	.LASF943
	.byte	0x1
	.value	0x179
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	cse_jumps_altered
	.uleb128 0x2b
	.long	.LASF944
	.byte	0x1
	.value	0x17d
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	recorded_label_ref
	.uleb128 0x2b
	.long	.LASF945
	.byte	0x1
	.value	0x183
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	do_not_record
	.uleb128 0x2b
	.long	.LASF946
	.byte	0x1
	.value	0x18e
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	hash_arg_in_memory
	.uleb128 0xc
	.long	0x1ec7
	.long	0x5aa5
	.uleb128 0xd
	.long	0x29a
	.byte	0x1f
	.byte	0
	.uleb128 0x2b
	.long	.LASF806
	.byte	0x1
	.value	0x20d
	.long	0x5a95
	.uleb128 0x9
	.byte	0x3
	.quad	table
	.uleb128 0x2b
	.long	.LASF947
	.byte	0x1
	.value	0x212
	.long	0x1ec7
	.uleb128 0x9
	.byte	0x3
	.quad	free_element_chain
	.uleb128 0x2b
	.long	.LASF948
	.byte	0x1
	.value	0x216
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	n_elements_made
	.uleb128 0x2b
	.long	.LASF949
	.byte	0x1
	.value	0x21b
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	max_elements_made
	.uleb128 0x2b
	.long	.LASF950
	.byte	0x1
	.value	0x221
	.long	0x1ec7
	.uleb128 0x9
	.byte	0x3
	.quad	last_jump_equiv_class
	.uleb128 0x2b
	.long	.LASF951
	.byte	0x1
	.value	0x228
	.long	0x283
	.uleb128 0x9
	.byte	0x3
	.quad	constant_pool_entries_cost
	.uleb128 0x36
	.long	.LASF952
	.byte	0x4
	.byte	0x5e
	.long	0x5b34
	.uleb128 0x3
	.byte	0x8
	.long	0x5b3a
	.uleb128 0xa
	.long	0x139
	.uleb128 0x36
	.long	.LASF953
	.byte	0x4
	.byte	0x62
	.long	0x283
	.uleb128 0x36
	.long	.LASF954
	.byte	0x4
	.byte	0xd3
	.long	0x27e
	.uleb128 0x36
	.long	.LASF955
	.byte	0x4
	.byte	0xd6
	.long	0x27e
	.uleb128 0x36
	.long	.LASF956
	.byte	0x4
	.byte	0xe0
	.long	0x27e
	.uleb128 0x37
	.long	.LASF957
	.byte	0x4
	.value	0x19c
	.long	0x2d9
	.uleb128 0xc
	.long	0x317
	.long	0x5b87
	.uleb128 0xd
	.long	0x29a
	.byte	0x34
	.byte	0
	.uleb128 0x37
	.long	.LASF958
	.byte	0x4
	.value	0xc3a
	.long	0x5b93
	.uleb128 0xa
	.long	0x5b77
	.uleb128 0x36
	.long	.LASF959
	.byte	0x7
	.byte	0xaa
	.long	0x661
	.uleb128 0xc
	.long	0x828
	.long	0x5bb3
	.uleb128 0xd
	.long	0x29a
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF196
	.byte	0x9
	.byte	0x34
	.long	0x5bbe
	.uleb128 0xa
	.long	0x5ba3
	.uleb128 0xc
	.long	0x458
	.long	0x5bd3
	.uleb128 0xd
	.long	0x29a
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF960
	.byte	0x9
	.byte	0x50
	.long	0x5bde
	.uleb128 0xa
	.long	0x5bc3
	.uleb128 0xc
	.long	0x45f
	.long	0x5bf3
	.uleb128 0xd
	.long	0x29a
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF961
	.byte	0x9
	.byte	0x60
	.long	0x5bfe
	.uleb128 0xa
	.long	0x5be3
	.uleb128 0x36
	.long	.LASF962
	.byte	0x9
	.byte	0x7b
	.long	0x5c0e
	.uleb128 0xa
	.long	0x5bc3
	.uleb128 0x36
	.long	.LASF963
	.byte	0x9
	.byte	0xa4
	.long	0x6b3
	.uleb128 0xc
	.long	0x458
	.long	0x5c2e
	.uleb128 0xd
	.long	0x29a
	.byte	0x98
	.byte	0
	.uleb128 0x36
	.long	.LASF964
	.byte	0x2
	.byte	0x36
	.long	0x5c39
	.uleb128 0xa
	.long	0x5c1e
	.uleb128 0xc
	.long	0x68d
	.long	0x5c4e
	.uleb128 0xd
	.long	0x29a
	.byte	0x98
	.byte	0
	.uleb128 0x36
	.long	.LASF965
	.byte	0x2
	.byte	0x3c
	.long	0x5c59
	.uleb128 0xa
	.long	0x5c3e
	.uleb128 0xc
	.long	0x490
	.long	0x5c6e
	.uleb128 0xd
	.long	0x29a
	.byte	0x98
	.byte	0
	.uleb128 0x36
	.long	.LASF966
	.byte	0x2
	.byte	0x3f
	.long	0x5c79
	.uleb128 0xa
	.long	0x5c5e
	.uleb128 0xc
	.long	0x2d
	.long	0x5c8e
	.uleb128 0xd
	.long	0x29a
	.byte	0x80
	.byte	0
	.uleb128 0x37
	.long	.LASF967
	.byte	0x2
	.value	0x611
	.long	0x5c7e
	.uleb128 0x37
	.long	.LASF968
	.byte	0x2
	.value	0x617
	.long	0x2d
	.uleb128 0xc
	.long	0x2d
	.long	0x5cbc
	.uleb128 0xd
	.long	0x29a
	.byte	0x2
	.uleb128 0xd
	.long	0x29a
	.byte	0x3a
	.byte	0
	.uleb128 0x37
	.long	.LASF969
	.byte	0x2
	.value	0x619
	.long	0x5ca6
	.uleb128 0xc
	.long	0x2d
	.long	0x5cd8
	.uleb128 0xd
	.long	0x29a
	.byte	0xa
	.byte	0
	.uleb128 0x37
	.long	.LASF970
	.byte	0x2
	.value	0x652
	.long	0x5cc8
	.uleb128 0x37
	.long	.LASF971
	.byte	0x2
	.value	0x660
	.long	0x2d
	.uleb128 0x36
	.long	.LASF972
	.byte	0xd
	.byte	0x41
	.long	0x1422
	.uleb128 0xc
	.long	0x490
	.long	0x5d0b
	.uleb128 0xd
	.long	0x29a
	.byte	0x34
	.byte	0
	.uleb128 0x37
	.long	.LASF973
	.byte	0xe
	.value	0x18b
	.long	0x5cfb
	.uleb128 0x37
	.long	.LASF974
	.byte	0xe
	.value	0x1b0
	.long	0x5cfb
	.uleb128 0x37
	.long	.LASF975
	.byte	0xe
	.value	0x1b9
	.long	0x1433
	.uleb128 0x36
	.long	.LASF976
	.byte	0xb
	.byte	0xe4
	.long	0x283
	.uleb128 0x36
	.long	.LASF977
	.byte	0xb
	.byte	0xec
	.long	0x1422
	.uleb128 0x36
	.long	.LASF978
	.byte	0x11
	.byte	0xfe
	.long	0x283
	.uleb128 0x37
	.long	.LASF979
	.byte	0x11
	.value	0x121
	.long	0x283
	.uleb128 0x37
	.long	.LASF980
	.byte	0x11
	.value	0x126
	.long	0x283
	.uleb128 0x37
	.long	.LASF981
	.byte	0x11
	.value	0x12a
	.long	0x283
	.uleb128 0x37
	.long	.LASF982
	.byte	0x11
	.value	0x15a
	.long	0x283
	.uleb128 0x37
	.long	.LASF983
	.byte	0x11
	.value	0x1c8
	.long	0x283
	.uleb128 0xc
	.long	0x160f
	.long	0x5d97
	.uleb128 0x38
	.byte	0
	.uleb128 0x36
	.long	.LASF504
	.byte	0xf
	.byte	0xf9
	.long	0x5da2
	.uleb128 0xa
	.long	0x5d8c
	.uleb128 0x37
	.long	.LASF984
	.byte	0x10
	.value	0x1e4
	.long	0x1cda
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x21
	.byte	0
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB114-.Ltext0
	.quad	.LBE114-.Ltext0
	.quad	.LBB115-.Ltext0
	.quad	.LBE115-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF395:
	.string	"REG_BR_PROB"
.LASF425:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF587:
	.string	"profile_label_no"
.LASF692:
	.string	"total"
.LASF352:
	.string	"rtstr"
.LASF412:
	.string	"NOTE_INSN_DELETED"
.LASF737:
	.string	"rehash_using_reg"
.LASF128:
	.string	"_unused2"
.LASF280:
	.string	"UMOD"
.LASF334:
	.string	"min_align"
.LASF114:
	.string	"_fileno"
.LASF880:
	.string	"invalidate_memory"
.LASF449:
	.string	"varray_data_tag"
.LASF639:
	.string	"canon_exp"
.LASF918:
	.string	"nreg"
.LASF59:
	.string	"AD_REGS"
.LASF360:
	.string	"first"
.LASF770:
	.string	"addr_cost"
.LASF581:
	.string	"inlinable"
.LASF613:
	.string	"uses_const_pool"
.LASF847:
	.string	"src_eqv_hash"
.LASF926:
	.string	"next_qty"
.LASF812:
	.string	"replacements"
.LASF321:
	.string	"CONSTANT_P_RTX"
.LASF667:
	.string	"dest_hash"
.LASF747:
	.string	"_Bool"
.LASF351:
	.string	"rtuint"
.LASF976:
	.string	"n_basic_blocks"
.LASF355:
	.string	"rt_cselib"
.LASF655:
	.string	"branch_path"
.LASF224:
	.string	"DEFINE_PEEPHOLE2"
.LASF938:
	.string	"cse_basic_block_start"
.LASF12:
	.string	"rtvec_def"
.LASF586:
	.string	"inl_max_label_num"
.LASF973:
	.string	"fixed_regs"
.LASF284:
	.string	"LSHIFTRT"
.LASF709:
	.string	"insert_regs"
.LASF218:
	.string	"MATCH_PAR_DUP"
.LASF119:
	.string	"_shortbuf"
.LASF987:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF279:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF787:
	.string	"fold_rtx"
.LASF962:
	.string	"mode_wider_mode"
.LASF830:
	.string	"mode0"
.LASF764:
	.string	"find_best_addr"
.LASF212:
	.string	"MATCH_OPERAND"
.LASF521:
	.string	"x_first_label_num"
.LASF193:
	.string	"CCFPmode"
.LASF742:
	.string	"canon_hash"
.LASF51:
	.string	"reg_class"
.LASF301:
	.string	"UNLE"
.LASF63:
	.string	"LEGACY_REGS"
.LASF911:
	.string	"count_reg_usage"
.LASF339:
	.string	"max_after_base"
.LASF909:
	.string	"num_insns"
.LASF302:
	.string	"UNLT"
.LASF614:
	.string	"uses_pic_offset_table"
.LASF620:
	.string	"initial_value_struct"
.LASF495:
	.string	"probability"
.LASF732:
	.string	"in_table"
.LASF165:
	.string	"CTImode"
.LASF100:
	.string	"_flags"
.LASF482:
	.string	"next"
.LASF978:
	.string	"flag_float_store"
.LASF687:
	.string	"regcost_a"
.LASF689:
	.string	"regcost_b"
.LASF95:
	.string	"__off_t"
.LASF710:
	.string	"qty_valid"
.LASF912:
	.string	"counts"
.LASF712:
	.string	"hash"
.LASF28:
	.string	"int_store"
.LASF942:
	.string	"cse_altered"
.LASF947:
	.string	"free_element_chain"
.LASF746:
	.string	"units"
.LASF751:
	.string	"exp_equiv_p"
.LASF163:
	.string	"CSImode"
.LASF65:
	.string	"FP_TOP_REG"
.LASF323:
	.string	"VEC_MERGE"
.LASF584:
	.string	"original_decl_initial"
.LASF758:
	.string	"x0_ent"
.LASF736:
	.string	"remove_invalid_subreg_refs"
.LASF517:
	.string	"last"
.LASF120:
	.string	"_lock"
.LASF641:
	.string	"prev_same_hash"
.LASF451:
	.string	"uhint"
.LASF256:
	.string	"RETURN"
.LASF624:
	.string	"qty_table_elem"
.LASF714:
	.string	"lookup"
.LASF511:
	.string	"output_format"
.LASF452:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF504:
	.string	"insn_data"
.LASF858:
	.string	"src_eqv_regcost"
.LASF199:
	.string	"MODE_FLOAT"
.LASF665:
	.string	"src_elt"
.LASF343:
	.string	"alias"
.LASF922:
	.string	"live_insn"
.LASF340:
	.string	"offset_unsigned"
.LASF656:
	.string	"branch"
.LASF169:
	.string	"V2SImode"
.LASF610:
	.string	"stdarg"
.LASF571:
	.string	"x_trampoline_list"
.LASF767:
	.string	"addr_volatile"
.LASF786:
	.string	"reversed"
.LASF60:
	.string	"Q_REGS"
.LASF243:
	.string	"CODE_LABEL"
.LASF164:
	.string	"CDImode"
.LASF249:
	.string	"UNSPEC"
.LASF29:
	.string	"fp_move"
.LASF17:
	.string	"shift_var"
.LASF242:
	.string	"BARRIER"
.LASF713:
	.string	"newfirst"
.LASF418:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF245:
	.string	"COND_EXEC"
.LASF814:
	.string	"arg_ent"
.LASF259:
	.string	"CONST_INT"
.LASF766:
	.string	"found_better"
.LASF255:
	.string	"CALL"
.LASF85:
	.string	"maybe_vaarg"
.LASF592:
	.string	"epilogue_delay_list"
.LASF171:
	.string	"V4QImode"
.LASF234:
	.string	"ATTR"
.LASF375:
	.string	"count"
.LASF353:
	.string	"rttype"
.LASF884:
	.string	"object"
.LASF965:
	.string	"rtx_format"
.LASF54:
	.string	"DREG"
.LASF365:
	.string	"head_tree"
.LASF72:
	.string	"FLOAT_SSE_REGS"
.LASF442:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF875:
	.string	"src_ent"
.LASF170:
	.string	"V2DImode"
.LASF561:
	.string	"x_return_label"
.LASF46:
	.string	"PROCESSOR_K6"
.LASF479:
	.string	"varray_type"
.LASF348:
	.string	"mem_attrs"
.LASF106:
	.string	"_IO_write_end"
.LASF389:
	.string	"REG_UNUSED"
.LASF227:
	.string	"DEFINE_DELAY"
.LASF819:
	.string	"inner_const"
.LASF277:
	.string	"MINUS"
.LASF568:
	.string	"x_clobber_return_insn"
.LASF57:
	.string	"SIREG"
.LASF26:
	.string	"movzbl_load"
.LASF458:
	.string	"sched_info_tag"
.LASF267:
	.string	"STRICT_LOW_PART"
.LASF209:
	.string	"INCLUDE"
.LASF438:
	.string	"GR_FRAME_POINTER"
.LASF373:
	.string	"index"
.LASF465:
	.string	"freq"
.LASF305:
	.string	"ZERO_EXTEND"
.LASF308:
	.string	"FLOAT_TRUNCATE"
.LASF537:
	.string	"x_forced_labels"
.LASF552:
	.string	"internal_arg_pointer"
.LASF703:
	.string	"firstr"
.LASF435:
	.string	"GR_PC"
.LASF708:
	.string	"endregno"
.LASF923:
	.string	"max_reg"
.LASF56:
	.string	"BREG"
.LASF180:
	.string	"V2SFmode"
.LASF472:
	.string	"varray_data"
.LASF622:
	.string	"machine_function"
.LASF309:
	.string	"FLOAT"
.LASF401:
	.string	"REG_EH_CONTEXT"
.LASF135:
	.string	"machine_mode"
.LASF734:
	.string	"tendregno"
.LASF358:
	.string	"rtmem"
.LASF580:
	.string	"fixup_var_refs_queue"
.LASF318:
	.string	"RANGE_REG"
.LASF39:
	.string	"prefetch_block"
.LASF481:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF142:
	.string	"TImode"
.LASF951:
	.string	"constant_pool_entries_cost"
.LASF294:
	.string	"PRE_MODIFY"
.LASF839:
	.string	"op1_elt"
.LASF698:
	.string	"hash_head"
.LASF595:
	.string	"returns_pointer"
.LASF913:
	.string	"incr"
.LASF843:
	.string	"src_eqv"
.LASF825:
	.string	"equiv_constant"
.LASF307:
	.string	"FLOAT_EXTEND"
.LASF462:
	.string	"last_note_uid"
.LASF540:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF27:
	.string	"int_load"
.LASF800:
	.string	"addr_q"
.LASF140:
	.string	"SImode"
.LASF251:
	.string	"ADDR_VEC"
.LASF31:
	.string	"fp_store"
.LASF618:
	.string	"stmt_status"
.LASF958:
	.string	"regclass_map"
.LASF181:
	.string	"V2DFmode"
.LASF690:
	.string	"notreg_cost"
.LASF333:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF637:
	.string	"reg_in_table"
.LASF347:
	.string	"align"
.LASF84:
	.string	"sse_regno"
.LASF362:
	.string	"indx"
.LASF872:
	.string	"dest_q"
.LASF588:
	.string	"machine"
.LASF924:
	.string	"max_insn_uid"
.LASF270:
	.string	"SYMBOL_REF"
.LASF411:
	.string	"NOTE_INSN_BIAS"
.LASF937:
	.string	"hard_regs_in_table"
.LASF963:
	.string	"word_mode"
.LASF433:
	.string	"NOTE_INSN_MAX"
.LASF535:
	.string	"x_saveregs_value"
.LASF796:
	.string	"from_plus"
.LASF948:
	.string	"n_elements_made"
.LASF35:
	.string	"sse_move"
.LASF223:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF731:
	.string	"full_mode"
.LASF275:
	.string	"COMPARE"
.LASF303:
	.string	"LTGT"
.LASF774:
	.string	"best_elt"
.LASF903:
	.string	"temp"
.LASF515:
	.string	"unsignedp"
.LASF315:
	.string	"HIGH"
.LASF272:
	.string	"QUEUED"
.LASF25:
	.string	"move_ratio"
.LASF61:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF141:
	.string	"DImode"
.LASF910:
	.string	"check_for_label_ref"
.LASF902:
	.string	"old_cse_jumps_altered"
.LASF677:
	.string	"approx_reg_cost"
.LASF447:
	.string	"const_equiv_data"
.LASF554:
	.string	"hard_reg_initial_vals"
.LASF533:
	.string	"x_inhibit_defer_pop"
.LASF113:
	.string	"_chain"
.LASF863:
	.string	"eqvmode"
.LASF921:
	.string	"dead_libcall"
.LASF293:
	.string	"POST_INC"
.LASF42:
	.string	"PROCESSOR_I386"
.LASF771:
	.string	"best_addr_cost"
.LASF740:
	.string	"relt"
.LASF154:
	.string	"TFmode"
.LASF91:
	.string	"unsigned char"
.LASF621:
	.string	"temp_slot"
.LASF66:
	.string	"FP_SECOND_REG"
.LASF538:
	.string	"x_pending_chain"
.LASF553:
	.string	"cannot_inline"
.LASF905:
	.string	"from"
.LASF961:
	.string	"mode_bitsize"
.LASF989:
	.string	"_IO_lock_t"
.LASF722:
	.string	"subhash"
.LASF803:
	.string	"const_mode"
.LASF940:
	.string	"uid_cuid"
.LASF48:
	.string	"PROCESSOR_PENTIUM4"
.LASF469:
	.string	"basic_block"
.LASF137:
	.string	"BImode"
.LASF291:
	.string	"PRE_INC"
.LASF388:
	.string	"REG_NO_CONFLICT"
.LASF151:
	.string	"SFmode"
.LASF541:
	.string	"emit"
.LASF820:
	.string	"sign_bitnum"
.LASF505:
	.string	"output"
.LASF240:
	.string	"JUMP_INSN"
.LASF370:
	.string	"cond_local_set"
.LASF49:
	.string	"PROCESSOR_max"
.LASF496:
	.string	"edge"
.LASF866:
	.string	"const_elt"
.LASF497:
	.string	"insn_operand_predicate_fn"
.LASF203:
	.string	"MODE_COMPLEX_FLOAT"
.LASF357:
	.string	"rttree"
.LASF657:
	.string	"status"
.LASF891:
	.string	"cse_check_loop_start_value"
.LASF681:
	.string	"bit_num_"
.LASF410:
	.string	"insn_note"
.LASF507:
	.string	"operand"
.LASF429:
	.string	"NOTE_INSN_RANGE_END"
.LASF222:
	.string	"DEFINE_SPLIT"
.LASF602:
	.string	"has_nonlocal_goto"
.LASF616:
	.string	"arg_pointer_save_area_init"
.LASF261:
	.string	"CONST_VECTOR"
.LASF219:
	.string	"MATCH_INSN"
.LASF562:
	.string	"x_save_expr_regs"
.LASF152:
	.string	"DFmode"
.LASF68:
	.string	"SSE_REGS"
.LASF489:
	.string	"gcov_type"
.LASF954:
	.string	"x86_zero_extend_with_and"
.LASF89:
	.string	"size_t"
.LASF253:
	.string	"PREFETCH"
.LASF30:
	.string	"fp_load"
.LASF77:
	.string	"LIM_REG_CLASSES"
.LASF76:
	.string	"ALL_REGS"
.LASF545:
	.string	"pops_args"
.LASF146:
	.string	"PSImode"
.LASF846:
	.string	"src_eqv_in_memory"
.LASF564:
	.string	"x_rtl_expr_chain"
.LASF317:
	.string	"RANGE_INFO"
.LASF38:
	.string	"mmxsse_to_integer"
.LASF873:
	.string	"dest_ent"
.LASF957:
	.string	"ix86_cpu"
.LASF448:
	.string	"rtunion_def"
.LASF654:
	.string	"AROUND"
.LASF233:
	.string	"DEFINE_ATTR"
.LASF235:
	.string	"SET_ATTR"
.LASF160:
	.string	"TCmode"
.LASF556:
	.string	"x_nonlocal_labels"
.LASF720:
	.string	"x_ent"
.LASF756:
	.string	"from_alias"
.LASF310:
	.string	"UNSIGNED_FLOAT"
.LASF400:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF457:
	.string	"cselib_val_struct"
.LASF834:
	.string	"op0_hash"
.LASF432:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF105:
	.string	"_IO_write_ptr"
.LASF282:
	.string	"ROTATE"
.LASF368:
	.string	"succ"
.LASF749:
	.string	"save_do_not_record"
.LASF464:
	.string	"refs"
.LASF879:
	.string	"new_mode"
.LASF693:
	.string	"value"
.LASF306:
	.string	"TRUNCATE"
.LASF393:
	.string	"REG_DEP_ANTI"
.LASF157:
	.string	"SCmode"
.LASF964:
	.string	"rtx_length"
.LASF925:
	.string	"max_qty"
.LASF970:
	.string	"global_rtl"
.LASF443:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF670:
	.string	"src_volatile"
.LASF147:
	.string	"PDImode"
.LASF414:
	.string	"NOTE_INSN_BLOCK_END"
.LASF744:
	.string	"repeat"
.LASF454:
	.string	"bitmap"
.LASF678:
	.string	"hardregs"
.LASF423:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF966:
	.string	"rtx_class"
.LASF377:
	.string	"flags"
.LASF530:
	.string	"x_regno_reg_rtx"
.LASF210:
	.string	"EXPR_LIST"
.LASF237:
	.string	"EQ_ATTR"
.LASF190:
	.string	"CCGOCmode"
.LASF268:
	.string	"CONCAT"
.LASF43:
	.string	"PROCESSOR_I486"
.LASF491:
	.string	"pred_next"
.LASF336:
	.string	"min_after_vec"
.LASF935:
	.string	"cached_regno"
.LASF738:
	.string	"invalidate_for_call"
.LASF730:
	.string	"invalidate"
.LASF98:
	.string	"FILE"
.LASF274:
	.string	"COND"
.LASF653:
	.string	"NOT_TAKEN"
.LASF200:
	.string	"MODE_PARTIAL_INT"
.LASF572:
	.string	"x_parm_birth_insn"
.LASF857:
	.string	"src_regcost"
.LASF815:
	.string	"old_cost"
.LASF574:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF158:
	.string	"DCmode"
.LASF686:
	.string	"cost_a"
.LASF688:
	.string	"cost_b"
.LASF691:
	.string	"outer_code"
.LASF225:
	.string	"DEFINE_COMBINE"
.LASF817:
	.string	"false_rtx"
.LASF985:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF566:
	.string	"x_tail_recursion_reentry"
.LASF283:
	.string	"ASHIFTRT"
.LASF188:
	.string	"CCmode"
.LASF44:
	.string	"PROCESSOR_PENTIUM"
.LASF861:
	.string	"src_elt_regcost"
.LASF366:
	.string	"end_tree"
.LASF67:
	.string	"FLOAT_REGS"
.LASF416:
	.string	"NOTE_INSN_LOOP_END"
.LASF672:
	.string	"orig_src"
.LASF631:
	.string	"comparison_code"
.LASF934:
	.string	"reg_hash"
.LASF186:
	.string	"V16SFmode"
.LASF816:
	.string	"true_rtx"
.LASF430:
	.string	"NOTE_INSN_LIVE"
.LASF230:
	.string	"DEFINE_COND_EXEC"
.LASF109:
	.string	"_IO_save_base"
.LASF983:
	.string	"flag_pic"
.LASF765:
	.string	"addr"
.LASF728:
	.string	"flush_hash_table"
.LASF512:
	.string	"var_refs_queue"
.LASF534:
	.string	"x_stack_pointer_delta"
.LASF226:
	.string	"DEFINE_EXPAND"
.LASF605:
	.string	"is_thunk"
.LASF679:
	.string	"ptr_"
.LASF475:
	.string	"elements_used"
.LASF177:
	.string	"V8SImode"
.LASF558:
	.string	"x_nonlocal_goto_handler_labels"
.LASF871:
	.string	"trial"
.LASF239:
	.string	"INSN"
.LASF350:
	.string	"rtint"
.LASF36:
	.string	"sse_load"
.LASF949:
	.string	"max_elements_made"
.LASF269:
	.string	"LABEL_REF"
.LASF850:
	.string	"src_eqv_here"
.LASF392:
	.string	"REG_LABEL"
.LASF725:
	.string	"merge_equiv_classes"
.LASF471:
	.string	"elt_list"
.LASF844:
	.string	"src_eqv_elt"
.LASF380:
	.string	"REG_DEAD"
.LASF901:
	.string	"file"
.LASF760:
	.string	"x1_ent"
.LASF420:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF123:
	.string	"__pad2"
.LASF960:
	.string	"mode_size"
.LASF741:
	.string	"canon_hash_string"
.LASF383:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF488:
	.string	"regset"
.LASF916:
	.string	"dead_libcall_p"
.LASF503:
	.string	"eliminable"
.LASF189:
	.string	"CCGCmode"
.LASF372:
	.string	"global_live_at_end"
.LASF975:
	.string	"regs_invalidated_by_call"
.LASF876:
	.string	"new_src"
.LASF265:
	.string	"SCRATCH"
.LASF175:
	.string	"V8QImode"
.LASF628:
	.string	"comparison_qty"
.LASF178:
	.string	"V8DImode"
.LASF206:
	.string	"MAX_MODE_CLASS"
.LASF972:
	.string	"reg_n_info"
.LASF955:
	.string	"x86_partial_reg_stall"
.LASF682:
	.string	"word_num_"
.LASF801:
	.string	"addr_ent"
.LASF739:
	.string	"use_related_value"
.LASF304:
	.string	"SIGN_EXTEND"
.LASF706:
	.string	"mention_regs"
.LASF597:
	.string	"calls_setjmp"
.LASF945:
	.string	"do_not_record"
.LASF632:
	.string	"reg_eqv_elem"
.LASF967:
	.string	"const_int_rtx"
.LASF848:
	.string	"clobbered"
.LASF326:
	.string	"VEC_DUPLICATE"
.LASF486:
	.string	"bitmap_head"
.LASF559:
	.string	"x_nonlocal_goto_stack_level"
.LASF130:
	.string	"_next"
.LASF895:
	.string	"cse_end_of_basic_block"
.LASF981:
	.string	"flag_expensive_optimizations"
.LASF906:
	.string	"next_branch"
.LASF510:
	.string	"n_alternatives"
.LASF645:
	.string	"related_value"
.LASF859:
	.string	"src_folded_regcost"
.LASF344:
	.string	"expr"
.LASF426:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF860:
	.string	"src_related_regcost"
.LASF668:
	.string	"inner_dest"
.LASF673:
	.string	"src_const_hash"
.LASF888:
	.string	"invalidate_skipped_block"
.LASF929:
	.string	"this_insn"
.LASF557:
	.string	"x_nonlocal_goto_handler_slots"
.LASF184:
	.string	"V8SFmode"
.LASF651:
	.string	"taken"
.LASF762:
	.string	"insn"
.LASF58:
	.string	"DIREG"
.LASF792:
	.string	"const_arg0"
.LASF391:
	.string	"REG_CC_USER"
.LASF248:
	.string	"ASM_OPERANDS"
.LASF278:
	.string	"MULT"
.LASF779:
	.string	"parg2"
.LASF577:
	.string	"x_temp_slot_level"
.LASF192:
	.string	"CCZmode"
.LASF417:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF62:
	.string	"INDEX_REGS"
.LASF50:
	.string	"processor_type"
.LASF874:
	.string	"src_q"
.LASF790:
	.string	"folded_arg0"
.LASF791:
	.string	"folded_arg1"
.LASF680:
	.string	"indx_"
.LASF603:
	.string	"contains_functions"
.LASF745:
	.string	"record"
.LASF733:
	.string	"tregno"
.LASF542:
	.string	"varasm"
.LASF406:
	.string	"REG_NON_LOCAL_GOTO"
.LASF627:
	.string	"comparison_const"
.LASF252:
	.string	"ADDR_DIFF_VEC"
.LASF633:
	.string	"cse_reg_info"
.LASF705:
	.string	"delete_reg_equiv"
.LASF626:
	.string	"const_insn"
.LASF607:
	.string	"profile"
.LASF501:
	.string	"constraint"
.LASF660:
	.string	"high_cuid"
.LASF314:
	.string	"ZERO_EXTRACT"
.LASF450:
	.string	"hint"
.LASF247:
	.string	"ASM_INPUT"
.LASF297:
	.string	"ORDERED"
.LASF185:
	.string	"V8DFmode"
.LASF661:
	.string	"nsets"
.LASF514:
	.string	"promoted_mode"
.LASF474:
	.string	"num_elements"
.LASF311:
	.string	"UNSIGNED_FIX"
.LASF594:
	.string	"returns_pcc_struct"
.LASF829:
	.string	"cond_known_true"
.LASF19:
	.string	"mult_init"
.LASF16:
	.string	"processor_costs"
.LASF82:
	.string	"sse_words"
.LASF856:
	.string	"src_elt_cost"
.LASF64:
	.string	"GENERAL_REGS"
.LASF979:
	.string	"flag_cse_follow_jumps"
.LASF959:
	.string	"stderr"
.LASF827:
	.string	"result"
.LASF477:
	.string	"name"
.LASF211:
	.string	"INSN_LIST"
.LASF131:
	.string	"_sbuf"
.LASF319:
	.string	"RANGE_VAR"
.LASF470:
	.string	"changes_mode"
.LASF743:
	.string	"egress_rtx_costs"
.LASF111:
	.string	"_IO_save_end"
.LASF198:
	.string	"MODE_INT"
.LASF476:
	.string	"element_size"
.LASF549:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF81:
	.string	"regno"
.LASF531:
	.string	"expr_status"
.LASF644:
	.string	"first_same_value"
.LASF809:
	.string	"mode_arg"
.LASF601:
	.string	"has_nonlocal_label"
.LASF982:
	.string	"flag_unsafe_math_optimizations"
.LASF320:
	.string	"RANGE_LIVE"
.LASF532:
	.string	"x_pending_stack_adjust"
.LASF168:
	.string	"V2HImode"
.LASF546:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF456:
	.string	"const_equiv"
.LASF893:
	.string	"move"
.LASF941:
	.string	"max_uid"
.LASF933:
	.string	"cse_reg_info_used_list_end"
.LASF702:
	.string	"lastr"
.LASF716:
	.string	"lookup_as_function"
.LASF461:
	.string	"last_uid"
.LASF354:
	.string	"rt_addr_diff_vec_flags"
.LASF440:
	.string	"GR_ARG_POINTER"
.LASF864:
	.string	"src_related_elt"
.LASF41:
	.string	"sizetype"
.LASF931:
	.string	"cse_reg_info_free_list"
.LASF71:
	.string	"FP_SECOND_SSE_REGS"
.LASF329:
	.string	"SS_MINUS"
.LASF699:
	.string	"new_basic_block"
.LASF953:
	.string	"target_flags"
.LASF216:
	.string	"MATCH_PARALLEL"
.LASF173:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF927:
	.string	"qty_table"
.LASF382:
	.string	"REG_EQUIV"
.LASF907:
	.string	"around_loop"
.LASF92:
	.string	"short unsigned int"
.LASF93:
	.string	"signed char"
.LASF215:
	.string	"MATCH_OPERATOR"
.LASF889:
	.string	"start"
.LASF789:
	.string	"must_swap"
.LASF473:
	.string	"varray_head_tag"
.LASF361:
	.string	"current"
.LASF805:
	.string	"table_insn"
.LASF356:
	.string	"rtbit"
.LASF573:
	.string	"x_last_parm_insn"
.LASF499:
	.string	"insn_operand_data"
.LASF862:
	.string	"src_folded_force_flag"
.LASF331:
	.string	"SS_TRUNCATE"
.LASF396:
	.string	"REG_EXEC_COUNT"
.LASF932:
	.string	"cse_reg_info_used_list"
.LASF882:
	.string	"invalidate_from_clobbers"
.LASF582:
	.string	"no_debugging_symbols"
.LASF969:
	.string	"const_tiny_rtx"
.LASF883:
	.string	"cse_process_notes"
.LASF335:
	.string	"base_after_vec"
.LASF220:
	.string	"DEFINE_INSN"
.LASF785:
	.string	"inner_mode"
.LASF96:
	.string	"__off64_t"
.LASF630:
	.string	"last_reg"
.LASF174:
	.string	"V4DImode"
.LASF374:
	.string	"loop_depth"
.LASF946:
	.string	"hash_arg_in_memory"
.LASF103:
	.string	"_IO_read_base"
.LASF74:
	.string	"INT_SSE_REGS"
.LASF802:
	.string	"constant"
.LASF753:
	.string	"equal_values"
.LASF121:
	.string	"_offset"
.LASF441:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF526:
	.string	"x_last_filename"
.LASF394:
	.string	"REG_DEP_OUTPUT"
.LASF108:
	.string	"_IO_buf_end"
.LASF229:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF669:
	.string	"src_in_memory"
.LASF330:
	.string	"US_MINUS"
.LASF735:
	.string	"remove_invalid_refs"
.LASF719:
	.string	"exp_ent"
.LASF648:
	.string	"in_memory"
.LASF663:
	.string	"path"
.LASF551:
	.string	"return_rtx"
.LASF70:
	.string	"FP_TOP_SSE_REGS"
.LASF313:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF467:
	.string	"live_length"
.LASF254:
	.string	"CLOBBER"
.LASF832:
	.string	"reversed_nonequality"
.LASF490:
	.string	"edge_def"
.LASF127:
	.string	"_mode"
.LASF37:
	.string	"sse_store"
.LASF204:
	.string	"MODE_VECTOR_INT"
.LASF104:
	.string	"_IO_write_base"
.LASF398:
	.string	"REG_SAVE_AREA"
.LASF729:
	.string	"check_dependence"
.LASF322:
	.string	"CALL_PLACEHOLDER"
.LASF539:
	.string	"function"
.LASF182:
	.string	"V4SFmode"
.LASF647:
	.string	"regcost"
.LASF822:
	.string	"new_const"
.LASF606:
	.string	"instrument_entry_exit"
.LASF569:
	.string	"x_frame_offset"
.LASF867:
	.string	"tmode"
.LASF276:
	.string	"PLUS"
.LASF292:
	.string	"POST_DEC"
.LASF484:
	.string	"bits"
.LASF139:
	.string	"HImode"
.LASF378:
	.string	"rtunion"
.LASF419:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF202:
	.string	"MODE_COMPLEX_INT"
.LASF617:
	.string	"eh_status"
.LASF775:
	.string	"best_rtx"
.LASF950:
	.string	"last_jump_equiv_class"
.LASF516:
	.string	"sequence_stack"
.LASF88:
	.string	"long int"
.LASF445:
	.string	"GR_VIRTUAL_CFA"
.LASF977:
	.string	"basic_block_info"
.LASF384:
	.string	"REG_WAS_0"
.LASF754:
	.string	"y_ent"
.LASF727:
	.string	"class2"
.LASF755:
	.string	"cse_rtx_varies_p"
.LASF405:
	.string	"REG_NORETURN"
.LASF129:
	.string	"_IO_marker"
.LASF24:
	.string	"large_insn"
.LASF711:
	.string	"remove_from_table"
.LASF153:
	.string	"XFmode"
.LASF596:
	.string	"needs_context"
.LASF404:
	.string	"REG_MAYBE_DEAD"
.LASF650:
	.string	"flag"
.LASF183:
	.string	"V4DFmode"
.LASF752:
	.string	"validate"
.LASF4:
	.string	"unchanging"
.LASF930:
	.string	"reg_eqv_table"
.LASF886:
	.string	"loop_start"
.LASF379:
	.string	"reg_note"
.LASF600:
	.string	"calls_eh_return"
.LASF804:
	.string	"label"
.LASF579:
	.string	"x_target_temp_slot_level"
.LASF509:
	.string	"n_dups"
.LASF547:
	.string	"pretend_args_size"
.LASF207:
	.string	"rtx_code"
.LASF86:
	.string	"CUMULATIVE_ARGS"
.LASF928:
	.string	"prev_insn"
.LASF502:
	.string	"strict_low"
.LASF20:
	.string	"mult_bit"
.LASF671:
	.string	"src_const"
.LASF609:
	.string	"varargs"
.LASF697:
	.string	"get_cse_reg_info"
.LASF769:
	.string	"addr_folded_cost"
.LASF658:
	.string	"cse_basic_block_data"
.LASF675:
	.string	"classp"
.LASF55:
	.string	"CREG"
.LASF646:
	.string	"cost"
.LASF611:
	.string	"x_whole_function_mode_p"
.LASF208:
	.string	"UNKNOWN"
.LASF250:
	.string	"UNSPEC_VOLATILE"
.LASF625:
	.string	"const_rtx"
.LASF638:
	.string	"table_elt"
.LASF623:
	.string	"language_function"
.LASF422:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF90:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF18:
	.string	"shift_const"
.LASF696:
	.string	"address_cost"
.LASF694:
	.string	"nbits"
.LASF149:
	.string	"HFmode"
.LASF636:
	.string	"reg_tick"
.LASF585:
	.string	"inl_last_parm_insn"
.LASF257:
	.string	"TRAP_IF"
.LASF899:
	.string	"path_entry"
.LASF784:
	.string	"reverse_code"
.LASF841:
	.string	"libcall_insn"
.LASF466:
	.string	"deaths"
.LASF402:
	.string	"REG_EH_REGION"
.LASF575:
	.string	"x_parm_reg_stack_loc"
.LASF508:
	.string	"n_operands"
.LASF385:
	.string	"REG_RETVAL"
.LASF161:
	.string	"CQImode"
.LASF659:
	.string	"low_cuid"
.LASF701:
	.string	"make_regs_eqv"
.LASF952:
	.string	"ix86_cost"
.LASF971:
	.string	"pic_offset_table_rtx"
.LASF97:
	.string	"char"
.LASF593:
	.string	"returns_struct"
.LASF159:
	.string	"XCmode"
.LASF567:
	.string	"x_arg_pointer_save_area"
.LASF53:
	.string	"AREG"
.LASF684:
	.string	"mask_"
.LASF717:
	.string	"insert"
.LASF565:
	.string	"x_tail_recursion_label"
.LASF806:
	.string	"table"
.LASF107:
	.string	"_IO_buf_base"
.LASF591:
	.string	"language"
.LASF285:
	.string	"ROTATERT"
.LASF640:
	.string	"next_same_hash"
.LASF894:
	.string	"dump_class"
.LASF520:
	.string	"x_reg_rtx_no"
.LASF629:
	.string	"first_reg"
.LASF271:
	.string	"ADDRESSOF"
.LASF904:
	.string	"cse_basic_block"
.LASF407:
	.string	"REG_SETJMP"
.LASF167:
	.string	"V2QImode"
.LASF413:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF145:
	.string	"PHImode"
.LASF102:
	.string	"_IO_read_end"
.LASF513:
	.string	"modified"
.LASF529:
	.string	"regno_decl"
.LASF459:
	.string	"reg_info_def"
.LASF166:
	.string	"COImode"
.LASF290:
	.string	"PRE_DEC"
.LASF500:
	.string	"predicate"
.LASF763:
	.string	"insn_code"
.LASF99:
	.string	"_IO_FILE"
.LASF421:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF439:
	.string	"GR_HARD_FRAME_POINTER"
.LASF390:
	.string	"REG_CC_SETTER"
.LASF599:
	.string	"calls_alloca"
.LASF32:
	.string	"mmx_move"
.LASF824:
	.string	"associate_code"
.LASF578:
	.string	"x_var_temp_slot_level"
.LASF197:
	.string	"MODE_RANDOM"
.LASF328:
	.string	"US_PLUS"
.LASF797:
	.string	"imode"
.LASF187:
	.string	"BLKmode"
.LASF852:
	.string	"src_cost"
.LASF795:
	.string	"mode_arg0"
.LASF818:
	.string	"mode_arg1"
.LASF156:
	.string	"HCmode"
.LASF842:
	.string	"n_sets"
.LASF840:
	.string	"cse_insn"
.LASF700:
	.string	"make_new_qty"
.LASF487:
	.string	"regset_head"
.LASF881:
	.string	"addr_affects_sp_p"
.LASF854:
	.string	"src_folded_cost"
.LASF262:
	.string	"CONST_STRING"
.LASF325:
	.string	"VEC_CONCAT"
.LASF346:
	.string	"size"
.LASF776:
	.string	"new_cost"
.LASF122:
	.string	"__pad1"
.LASF124:
	.string	"__pad3"
.LASF125:
	.string	"__pad4"
.LASF126:
	.string	"__pad5"
.LASF397:
	.string	"REG_NOALIAS"
.LASF238:
	.string	"ATTR_FLAG"
.LASF194:
	.string	"CCFPUmode"
.LASF381:
	.string	"REG_INC"
.LASF228:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF897:
	.string	"after_loop"
.LASF723:
	.string	"subelt"
.LASF685:
	.string	"preferrable"
.LASF939:
	.string	"cse_basic_block_end"
.LASF570:
	.string	"x_context_display"
.LASF833:
	.string	"record_jump_cond"
.LASF524:
	.string	"x_cur_insn_uid"
.LASF112:
	.string	"_markers"
.LASF132:
	.string	"_pos"
.LASF232:
	.string	"ADDRESS"
.LASF494:
	.string	"insns"
.LASF944:
	.string	"recorded_label_ref"
.LASF583:
	.string	"original_arg_vector"
.LASF896:
	.string	"follow_jumps"
.LASF47:
	.string	"PROCESSOR_ATHLON"
.LASF615:
	.string	"uses_eh_lsda"
.LASF870:
	.string	"larger_elt"
.LASF453:
	.string	"cptr"
.LASF782:
	.string	"arg1"
.LASF783:
	.string	"arg2"
.LASF359:
	.string	"bitmap_head_def"
.LASF506:
	.string	"genfun"
.LASF914:
	.string	"set_live_p"
.LASF813:
	.string	"arg_q"
.LASF707:
	.string	"changed"
.LASF468:
	.string	"calls_crossed"
.LASF332:
	.string	"US_TRUNCATE"
.LASF666:
	.string	"src_hash"
.LASF823:
	.string	"is_shift"
.LASF434:
	.string	"global_rtl_index"
.LASF908:
	.string	"to_usage"
.LASF80:
	.string	"nregs"
.LASF327:
	.string	"SS_PLUS"
.LASF289:
	.string	"UMAX"
.LASF69:
	.string	"MMX_REGS"
.LASF341:
	.string	"scale"
.LASF138:
	.string	"QImode"
.LASF851:
	.string	"src_related"
.LASF868:
	.string	"new_and"
.LASF718:
	.string	"exp_q"
.LASF793:
	.string	"const_arg1"
.LASF794:
	.string	"const_arg2"
.LASF478:
	.string	"data"
.LASF437:
	.string	"GR_STACK_POINTER"
.LASF837:
	.string	"op1_in_memory"
.LASF757:
	.string	"x0_q"
.LASF150:
	.string	"TQFmode"
.LASF683:
	.string	"word_"
.LASF364:
	.string	"head"
.LASF943:
	.string	"cse_jumps_altered"
.LASF45:
	.string	"PROCESSOR_PENTIUMPRO"
.LASF79:
	.string	"words"
.LASF338:
	.string	"min_after_base"
.LASF455:
	.string	"sched"
.LASF612:
	.string	"x_dont_save_pending_sizes_p"
.LASF78:
	.string	"ix86_args"
.LASF892:
	.string	"cse_set_around_loop"
.LASF890:
	.string	"cse_check_loop_start"
.LASF878:
	.string	"width"
.LASF799:
	.string	"base"
.LASF52:
	.string	"NO_REGS"
.LASF984:
	.string	"cfun"
.LASF773:
	.string	"exp_cost"
.LASF781:
	.string	"pmode2"
.LASF548:
	.string	"outgoing_args_size"
.LASF724:
	.string	"subelt_prev"
.LASF143:
	.string	"OImode"
.LASF403:
	.string	"REG_SAVE_NOTE"
.LASF664:
	.string	"check_dependence_data"
.LASF287:
	.string	"SMAX"
.LASF446:
	.string	"GR_MAX"
.LASF324:
	.string	"VEC_SELECT"
.LASF387:
	.string	"REG_NONNEG"
.LASF589:
	.string	"stack_alignment_needed"
.LASF849:
	.string	"src_folded"
.LASF519:
	.string	"emit_status"
.LASF205:
	.string	"MODE_VECTOR_FLOAT"
.LASF772:
	.string	"best_rtx_cost"
.LASF295:
	.string	"POST_MODIFY"
.LASF807:
	.string	"folded_arg"
.LASF399:
	.string	"REG_BR_PRED"
.LASF221:
	.string	"DEFINE_PEEPHOLE"
.LASF133:
	.string	"long long unsigned int"
.LASF428:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF345:
	.string	"offset"
.LASF649:
	.string	"is_const"
.LASF342:
	.string	"addr_diff_vec_flags"
.LASF117:
	.string	"_cur_column"
.LASF217:
	.string	"MATCH_OP_DUP"
.LASF231:
	.string	"SEQUENCE"
.LASF810:
	.string	"cheap_arg"
.LASF148:
	.string	"QFmode"
.LASF750:
	.string	"save_hash_arg_in_memory"
.LASF828:
	.string	"record_jump_equiv"
.LASF463:
	.string	"sets"
.LASF855:
	.string	"src_related_cost"
.LASF40:
	.string	"simultaneous_prefetches"
.LASF550:
	.string	"args_info"
.LASF634:
	.string	"hash_next"
.LASF608:
	.string	"limit_stack"
.LASF258:
	.string	"RESX"
.LASF493:
	.string	"dest"
.LASF246:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF22:
	.string	"movsx"
.LASF110:
	.string	"_IO_backup_base"
.LASF296:
	.string	"UNORDERED"
.LASF715:
	.string	"lookup_for_remove"
.LASF195:
	.string	"MAX_MACHINE_MODE"
.LASF101:
	.string	"_IO_read_ptr"
.LASF838:
	.string	"op0_elt"
.LASF956:
	.string	"x86_decompose_lea"
.LASF371:
	.string	"global_live_at_start"
.LASF75:
	.string	"FLOAT_INT_SSE_REGS"
.LASF213:
	.string	"MATCH_SCRATCH"
.LASF263:
	.string	"CONST"
.LASF528:
	.string	"regno_pointer_align"
.LASF312:
	.string	"SQRT"
.LASF821:
	.string	"has_sign"
.LASF635:
	.string	"reg_qty"
.LASF831:
	.string	"mode1"
.LASF436:
	.string	"GR_CC0"
.LASF919:
	.string	"preserve_basic_blocks"
.LASF196:
	.string	"mode_class"
.LASF900:
	.string	"cse_main"
.LASF201:
	.string	"MODE_CC"
.LASF674:
	.string	"src_const_elt"
.LASF369:
	.string	"local_set"
.LASF986:
	.string	"cse.c"
.LASF144:
	.string	"PQImode"
.LASF518:
	.string	"sequence_rtl_expr"
.LASF869:
	.string	"inner"
.LASF695:
	.string	"rtx_cost"
.LASF176:
	.string	"V8HImode"
.LASF33:
	.string	"mmx_load"
.LASF676:
	.string	"approx_reg_cost_1"
.LASF576:
	.string	"x_temp_slots"
.LASF759:
	.string	"x1_q"
.LASF780:
	.string	"pmode1"
.LASF563:
	.string	"x_stack_slot_list"
.LASF116:
	.string	"_old_offset"
.LASF241:
	.string	"CALL_INSN"
.LASF887:
	.string	"invalidate_skipped_set"
.LASF917:
	.string	"delete_trivially_dead_insns"
.LASF266:
	.string	"SUBREG"
.LASF598:
	.string	"calls_longjmp"
.LASF179:
	.string	"V16QImode"
.LASF408:
	.string	"REG_ALWAYS_RETURN"
.LASF811:
	.string	"expensive_arg"
.LASF543:
	.string	"decl"
.LASF134:
	.string	"long long int"
.LASF386:
	.string	"REG_LIBCALL"
.LASF115:
	.string	"_flags2"
.LASF155:
	.string	"QCmode"
.LASF264:
	.string	"VALUE"
.LASF244:
	.string	"NOTE"
.LASF865:
	.string	"wider_mode"
.LASF83:
	.string	"sse_nregs"
.LASF288:
	.string	"UMIN"
.LASF214:
	.string	"MATCH_DUP"
.LASF480:
	.string	"HARD_REG_ELT_TYPE"
.LASF936:
	.string	"cached_cse_reg_info"
.LASF768:
	.string	"folded"
.LASF363:
	.string	"basic_block_def"
.LASF21:
	.string	"divide"
.LASF662:
	.string	"path_size"
.LASF748:
	.string	"safe_hash"
.LASF34:
	.string	"mmx_store"
.LASF778:
	.string	"parg1"
.LASF619:
	.string	"varasm_status"
.LASF7:
	.string	"used"
.LASF652:
	.string	"TAKEN"
.LASF415:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF915:
	.string	"insn_live_p"
.LASF485:
	.string	"bitmap_element"
.LASF555:
	.string	"x_function_call_count"
.LASF920:
	.string	"in_libcall"
.LASF162:
	.string	"CHImode"
.LASF431:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF236:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF788:
	.string	"copied"
.LASF527:
	.string	"regno_pointer_align_length"
.LASF522:
	.string	"x_first_insn"
.LASF536:
	.string	"x_apply_args_value"
.LASF974:
	.string	"global_regs"
.LASF73:
	.string	"FLOAT_INT_REGS"
.LASF260:
	.string	"CONST_DOUBLE"
.LASF826:
	.string	"gen_lowpart_if_possible"
.LASF460:
	.string	"first_uid"
.LASF777:
	.string	"find_comparison_args"
.LASF191:
	.string	"CCNOmode"
.LASF172:
	.string	"V4HImode"
.LASF721:
	.string	"subexp"
.LASF726:
	.string	"class1"
.LASF298:
	.string	"UNEQ"
.LASF281:
	.string	"ASHIFT"
.LASF286:
	.string	"SMIN"
.LASF704:
	.string	"__FUNCTION__"
.LASF273:
	.string	"IF_THEN_ELSE"
.LASF836:
	.string	"op0_in_memory"
.LASF980:
	.string	"flag_cse_skip_blocks"
.LASF761:
	.string	"canon_reg"
.LASF427:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF544:
	.string	"outer"
.LASF424:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF525:
	.string	"x_last_linenum"
.LASF87:
	.string	"unsigned int"
.LASF853:
	.string	"src_eqv_cost"
.LASF988:
	.string	"tree_node"
.LASF877:
	.string	"note"
.LASF560:
	.string	"x_cleanup_label"
.LASF898:
	.string	"skip_blocks"
.LASF337:
	.string	"max_after_vec"
.LASF808:
	.string	"const_arg"
.LASF299:
	.string	"UNGE"
.LASF885:
	.string	"cse_around_loop"
.LASF94:
	.string	"short int"
.LASF367:
	.string	"pred"
.LASF300:
	.string	"UNGT"
.LASF23:
	.string	"movzx"
.LASF604:
	.string	"has_computed_jump"
.LASF523:
	.string	"x_last_insn"
.LASF643:
	.string	"prev_same_value"
.LASF483:
	.string	"prev"
.LASF118:
	.string	"_vtable_offset"
.LASF798:
	.string	"eltcode"
.LASF968:
	.string	"const_true_rtx"
.LASF498:
	.string	"insn_gen_fn"
.LASF590:
	.string	"preferred_stack_boundary"
.LASF136:
	.string	"VOIDmode"
.LASF409:
	.string	"REG_VTABLE_REF"
.LASF835:
	.string	"op1_hash"
.LASF444:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF316:
	.string	"LO_SUM"
.LASF376:
	.string	"frequency"
.LASF349:
	.string	"rtwint"
.LASF642:
	.string	"next_same_value"
.LASF845:
	.string	"src_eqv_volatile"
.LASF492:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
