	.file	"gcse.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 gcse.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	gcse_file
	.comm	gcse_file,8,8
	.local	run_jump_opt_after_gcse
	.comm	run_jump_opt_after_gcse,4,4
	.local	debug_stderr
	.comm	debug_stderr,8,8
	.local	gcse_obstack
	.comm	gcse_obstack,88,32
	.local	can_copy_p
	.comm	can_copy_p,59,32
	.local	can_copy_init_p
	.comm	can_copy_init_p,4,4
	.local	expr_hash_table_size
	.comm	expr_hash_table_size,4,4
	.local	expr_hash_table
	.comm	expr_hash_table,8,8
	.local	set_hash_table_size
	.comm	set_hash_table_size,4,4
	.local	set_hash_table
	.comm	set_hash_table,8,8
	.local	uid_cuid
	.comm	uid_cuid,8,8
	.local	max_uid
	.comm	max_uid,4,4
	.local	max_cuid
	.comm	max_cuid,4,4
	.local	cuid_insn
	.comm	cuid_insn,8,8
	.local	max_gcse_regno
	.comm	max_gcse_regno,4,4
	.local	n_exprs
	.comm	n_exprs,4,4
	.local	n_sets
	.comm	n_sets,4,4
	.local	reg_set_table
	.comm	reg_set_table,8,8
	.local	reg_set_table_size
	.comm	reg_set_table_size,4,4
	.local	pre_ldst_mems
	.comm	pre_ldst_mems,8,8
	.local	reg_set_bitmap
	.comm	reg_set_bitmap,8,8
	.local	reg_set_in_block
	.comm	reg_set_in_block,8,8
	.local	modify_mem_list
	.comm	modify_mem_list,8,8
	.comm	modify_mem_list_set,8,8
	.local	canon_modify_mem_list
	.comm	canon_modify_mem_list,8,8
	.comm	canon_modify_mem_list_set,8,8
	.local	bytes_used
	.comm	bytes_used,4,4
	.local	gcse_subst_count
	.comm	gcse_subst_count,4,4
	.local	gcse_create_count
	.comm	gcse_create_count,4,4
	.local	const_prop_count
	.comm	const_prop_count,4,4
	.local	copy_prop_count
	.comm	copy_prop_count,4,4
	.local	rd_kill
	.comm	rd_kill,8,8
	.local	rd_gen
	.comm	rd_gen,8,8
	.local	reaching_defs
	.comm	reaching_defs,8,8
	.local	rd_out
	.comm	rd_out,8,8
	.local	ae_kill
	.comm	ae_kill,8,8
	.local	ae_gen
	.comm	ae_gen,8,8
	.local	ae_in
	.comm	ae_in,8,8
	.local	ae_out
	.comm	ae_out,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"GCSE disabled: %d > 1000 basic blocks and %d >= 20 edges/basic block"
	.align 8
.LC1:
	.string	"GCSE disabled: %d basic blocks and %d registers"
.LC2:
	.string	"GCSE pass %d\n\n"
.LC3:
	.string	"GCSE of %s: %d basic blocks, "
.LC4:
	.string	"es"
.LC5:
	.string	""
.LC6:
	.string	"%d pass%s, %d bytes\n\n"
	.text
	.globl	gcse_main
	.type	gcse_main, @function
gcse_main:
.LFB2:
	.file 1 "gcse.c"
	.loc 1 711 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# f, f
	movq	%rsi, -96(%rbp)	# file, file
	.loc 1 726 0
	movq	cfun(%rip), %rax	# cfun, cfun.0
	movzbl	424(%rax), %eax	# *cfun.0_10, D.19045
	andl	$16, %eax	#, D.19045
	testb	%al, %al	# D.19045
	je	.L2	#,
	.loc 1 727 0
	movl	$0, %eax	#, D.19044
	jmp	.L3	#
.L2:
	.loc 1 730 0
	movl	$0, run_jump_opt_after_gcse(%rip)	#, run_jump_opt_after_gcse
	.loc 1 733 0
	movq	stderr(%rip), %rax	# stderr, stderr.1
	movq	%rax, debug_stderr(%rip)	# stderr.1, debug_stderr
	.loc 1 734 0
	movq	-96(%rbp), %rax	# file, tmp147
	movq	%rax, gcse_file(%rip)	# tmp147, gcse_file
	.loc 1 738 0
	call	max_reg_num	#
	movl	%eax, max_gcse_regno(%rip)	# max_gcse_regno.2, max_gcse_regno
	.loc 1 740 0
	cmpq	$0, -96(%rbp)	#, file
	je	.L4	#,
	.loc 1 741 0
	movq	-96(%rbp), %rax	# file, tmp148
	movq	%rax, %rdi	# tmp148,
	call	dump_flow_info	#
.L4:
	.loc 1 743 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp149
	movl	%eax, -64(%rbp)	# tmp149, orig_bb_count
	.loc 1 745 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.3
	cmpl	$1, %eax	#, n_basic_blocks.3
	jg	.L5	#,
	.loc 1 746 0
	movl	$0, %eax	#, D.19044
	jmp	.L3	#
.L5:
	.loc 1 756 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.4
	cmpl	$1000, %eax	#, n_basic_blocks.4
	jle	.L6	#,
	.loc 1 756 0 is_stmt 0 discriminator 1
	movl	n_edges(%rip), %eax	# n_edges, n_edges.5
	movl	n_basic_blocks(%rip), %ebx	# n_basic_blocks, n_basic_blocks.6
	cltd
	idivl	%ebx	# n_basic_blocks.6
	cmpl	$19, %eax	#, D.19044
	jle	.L6	#,
	.loc 1 758 0 is_stmt 1
	movl	warn_disabled_optimization(%rip), %eax	# warn_disabled_optimization, warn_disabled_optimization.7
	testl	%eax, %eax	# warn_disabled_optimization.7
	je	.L7	#,
	.loc 1 759 0
	movl	n_edges(%rip), %eax	# n_edges, n_edges.8
	movl	n_basic_blocks(%rip), %ebx	# n_basic_blocks, n_basic_blocks.9
	cltd
	idivl	%ebx	# n_basic_blocks.9
	movl	%eax, %edx	# tmp152, D.19044
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.10
	movl	%eax, %esi	# n_basic_blocks.10,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L7:
	.loc 1 761 0
	movl	$0, %eax	#, D.19044
	jmp	.L3	#
.L6:
	.loc 1 767 0
	movl	max_gcse_regno(%rip), %eax	# max_gcse_regno, max_gcse_regno.11
	addl	$63, %eax	#, D.19046
	shrl	$6, %eax	#, D.19046
	movl	%eax, %edx	# D.19046, D.19046
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.12
	imull	%edx, %eax	# D.19046, D.19046
	.loc 1 768 0
	movl	%eax, %eax	# D.19046, D.19047
	leaq	0(,%rax,8), %rdx	#, D.19047
	movq	compiler_params(%rip), %rax	# compiler_params, compiler_params.14
	addq	$96, %rax	#, D.19048
	movl	8(%rax), %eax	# _40->value, D.19044
	cltq
	.loc 1 766 0
	cmpq	%rax, %rdx	# D.19047, D.19047
	jbe	.L8	#,
	.loc 1 770 0
	movl	warn_disabled_optimization(%rip), %eax	# warn_disabled_optimization, warn_disabled_optimization.15
	testl	%eax, %eax	# warn_disabled_optimization.15
	je	.L9	#,
	.loc 1 771 0
	movl	max_gcse_regno(%rip), %edx	# max_gcse_regno, max_gcse_regno.16
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.17
	movl	%eax, %esi	# n_basic_blocks.17,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L9:
	.loc 1 774 0
	movl	$0, %eax	#, D.19044
	jmp	.L3	#
.L8:
	.loc 1 778 0
	movl	can_copy_init_p(%rip), %eax	# can_copy_init_p, can_copy_init_p.18
	testl	%eax, %eax	# can_copy_init_p.18
	jne	.L10	#,
	.loc 1 780 0
	call	compute_can_copy	#
	.loc 1 781 0
	movl	$1, can_copy_init_p(%rip)	#, can_copy_init_p
.L10:
	.loc 1 784 0
	movl	$gcse_obstack, %edi	#,
	call	gcc_obstack_init	#
	.loc 1 785 0
	movl	$0, bytes_used(%rip)	#, bytes_used
	.loc 1 788 0
	call	init_alias_analysis	#
	.loc 1 798 0
	movl	max_gcse_regno(%rip), %eax	# max_gcse_regno, max_gcse_regno.19
	movl	%eax, %edi	# max_gcse_regno.20,
	call	alloc_reg_set_mem	#
	.loc 1 799 0
	movq	-88(%rbp), %rax	# f, tmp154
	movq	%rax, %rdi	# tmp154,
	call	compute_sets	#
	.loc 1 801 0
	movl	$0, -72(%rbp)	#, pass
	.loc 1 802 0
	movl	bytes_used(%rip), %eax	# bytes_used, tmp155
	movl	%eax, -60(%rbp)	# tmp155, initial_bytes_used
	.loc 1 803 0
	movl	$0, -68(%rbp)	#, max_pass_bytes
	.loc 1 804 0
	movl	$1, %edi	#,
	call	gcse_alloc	#
	movq	%rax, -56(%rbp)	# tmp156, gcse_obstack_bottom
	.loc 1 805 0
	movl	$1, -76(%rbp)	#, changed
	.loc 1 806 0
	jmp	.L11	#
.L22:
	.loc 1 808 0
	movl	$0, -76(%rbp)	#, changed
	.loc 1 809 0
	cmpq	$0, -96(%rbp)	#, file
	je	.L12	#,
	.loc 1 810 0
	movl	-72(%rbp), %eax	# pass, tmp157
	leal	1(%rax), %edx	#, D.19044
	movq	-96(%rbp), %rax	# file, tmp158
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp158,
	movl	$0, %eax	#,
	call	fprintf	#
.L12:
	.loc 1 814 0
	movl	-60(%rbp), %eax	# initial_bytes_used, tmp159
	movl	%eax, bytes_used(%rip)	# tmp159, bytes_used
	.loc 1 817 0
	call	max_reg_num	#
	movl	%eax, max_gcse_regno(%rip)	# max_gcse_regno.21, max_gcse_regno
	.loc 1 819 0
	movq	-88(%rbp), %rax	# f, tmp160
	movq	%rax, %rdi	# tmp160,
	call	alloc_gcse_mem	#
	.loc 1 823 0
	movl	-72(%rbp), %eax	# pass, tmp161
	addl	$1, %eax	#, D.19044
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.19044,
	call	one_cprop_pass	#
	movl	%eax, -76(%rbp)	# tmp162, changed
	.loc 1 825 0
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.22
	testl	%eax, %eax	# optimize_size.22
	je	.L13	#,
	.loc 1 826 0
	movl	-72(%rbp), %eax	# pass, tmp163
	addl	$1, %eax	#, D.19044
	movl	%eax, %edi	# D.19044,
	call	one_classic_gcse_pass	#
	orl	%eax, -76(%rbp)	# D.19044, changed
	jmp	.L14	#
.L13:
	.loc 1 829 0
	movl	-72(%rbp), %eax	# pass, tmp164
	addl	$1, %eax	#, D.19044
	movl	%eax, %edi	# D.19044,
	call	one_pre_gcse_pass	#
	orl	%eax, -76(%rbp)	# D.19044, changed
	.loc 1 833 0
	cmpl	$0, -76(%rbp)	#, changed
	je	.L15	#,
	.loc 1 835 0
	call	free_modify_mem_tables	#
	.loc 1 837 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.23
	cltq
	sall	$3, %eax	#, D.19046
	movl	%eax, %edi	# D.19046,
	call	gmalloc	#
	movq	%rax, modify_mem_list(%rip)	# modify_mem_list.24, modify_mem_list
	.loc 1 839 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.25
	cltq
	sall	$3, %eax	#, D.19046
	movl	%eax, %edi	# D.19046,
	call	gmalloc	#
	movq	%rax, canon_modify_mem_list(%rip)	# canon_modify_mem_list.26, canon_modify_mem_list
	.loc 1 840 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.27
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19047
	movq	modify_mem_list(%rip), %rax	# modify_mem_list, modify_mem_list.28
	movl	$0, %esi	#,
	movq	%rax, %rdi	# modify_mem_list.28,
	call	memset	#
	.loc 1 841 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.29
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19047
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.30
	movl	$0, %esi	#,
	movq	%rax, %rdi	# canon_modify_mem_list.30,
	call	memset	#
	.loc 1 842 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp165
	movl	%eax, -64(%rbp)	# tmp165, orig_bb_count
.L15:
	.loc 1 844 0
	call	free_reg_set_mem	#
	.loc 1 845 0
	call	max_reg_num	#
	movl	%eax, %edi	# D.19044,
	call	alloc_reg_set_mem	#
	.loc 1 846 0
	movq	-88(%rbp), %rax	# f, tmp166
	movq	%rax, %rdi	# tmp166,
	call	compute_sets	#
	.loc 1 847 0
	movl	$1, run_jump_opt_after_gcse(%rip)	#, run_jump_opt_after_gcse
.L14:
	.loc 1 850 0
	movl	bytes_used(%rip), %eax	# bytes_used, bytes_used.31
	cmpl	%eax, -68(%rbp)	# bytes_used.31, max_pass_bytes
	jge	.L16	#,
	.loc 1 851 0
	movl	bytes_used(%rip), %eax	# bytes_used, tmp167
	movl	%eax, -68(%rbp)	# tmp167, max_pass_bytes
.L16:
	.loc 1 857 0
	call	free_gcse_mem	#
	.loc 1 864 0
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.32
	testl	%eax, %eax	# optimize_size.32
	je	.L17	#,
	.loc 1 866 0
	call	max_reg_num	#
	movl	%eax, max_gcse_regno(%rip)	# max_gcse_regno.33, max_gcse_regno
	.loc 1 867 0
	movq	-88(%rbp), %rax	# f, tmp168
	movq	%rax, %rdi	# tmp168,
	call	alloc_gcse_mem	#
	.loc 1 868 0
	call	one_code_hoisting_pass	#
	orl	%eax, -76(%rbp)	# D.19044, changed
	.loc 1 869 0
	call	free_gcse_mem	#
	.loc 1 871 0
	movl	bytes_used(%rip), %eax	# bytes_used, bytes_used.34
	cmpl	%eax, -68(%rbp)	# bytes_used.34, max_pass_bytes
	jge	.L17	#,
	.loc 1 872 0
	movl	bytes_used(%rip), %eax	# bytes_used, tmp169
	movl	%eax, -68(%rbp)	# tmp169, max_pass_bytes
.L17:
	.loc 1 875 0
	cmpq	$0, -96(%rbp)	#, file
	je	.L18	#,
	.loc 1 877 0
	movq	-96(%rbp), %rax	# file, tmp170
	movq	%rax, %rsi	# tmp170,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 878 0
	movq	-96(%rbp), %rax	# file, tmp171
	movq	%rax, %rdi	# tmp171,
	call	fflush	#
.L18:
.LBB2:
	.loc 1 881 0
	movq	$gcse_obstack, -48(%rbp)	#, __o
	movq	-56(%rbp), %rax	# gcse_obstack_bottom, tmp172
	movq	%rax, -40(%rbp)	# tmp172, __obj
	movq	-48(%rbp), %rax	# __o, tmp173
	movq	8(%rax), %rax	# __o_101->chunk, D.19049
	cmpq	-40(%rbp), %rax	# __obj, D.19049
	jae	.L19	#,
	.loc 1 881 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# __o, tmp174
	movq	32(%rax), %rax	# __o_101->chunk_limit, D.19050
	cmpq	-40(%rbp), %rax	# __obj, D.19050
	jbe	.L19	#,
	movq	-48(%rbp), %rax	# __o, tmp175
	movq	-40(%rbp), %rdx	# __obj, tmp176
	movq	%rdx, 16(%rax)	# tmp176, __o_101->object_base
	movq	-48(%rbp), %rax	# __o, tmp177
	movq	16(%rax), %rdx	# __o_101->object_base, D.19050
	movq	-48(%rbp), %rax	# __o, tmp178
	movq	%rdx, 24(%rax)	# D.19050, __o_101->next_free
	jmp	.L20	#
.L19:
	.loc 1 881 0 discriminator 2
	movq	-40(%rbp), %rdx	# __obj, tmp179
	movq	-48(%rbp), %rax	# __o, tmp180
	movq	%rdx, %rsi	# tmp179,
	movq	%rax, %rdi	# tmp180,
	call	obstack_free	#
.L20:
.LBE2:
	.loc 1 882 0 is_stmt 1
	addl	$1, -72(%rbp)	#, pass
.L11:
	.loc 1 806 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, changed
	je	.L21	#,
	.loc 1 806 0 is_stmt 0 discriminator 2
	movq	compiler_params(%rip), %rax	# compiler_params, compiler_params.35
	addq	$120, %rax	#, D.19048
	movl	8(%rax), %eax	# _57->value, D.19044
	cmpl	-72(%rbp), %eax	# pass, D.19044
	jg	.L22	#,
.L21:
	.loc 1 888 0 is_stmt 1
	call	max_reg_num	#
	movl	%eax, max_gcse_regno(%rip)	# max_gcse_regno.36, max_gcse_regno
	.loc 1 889 0
	movq	-88(%rbp), %rax	# f, tmp181
	movq	%rax, %rdi	# tmp181,
	call	alloc_gcse_mem	#
	.loc 1 891 0
	movl	-72(%rbp), %eax	# pass, tmp182
	addl	$1, %eax	#, D.19044
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.19044,
	call	one_cprop_pass	#
	.loc 1 892 0
	call	free_gcse_mem	#
	.loc 1 894 0
	cmpq	$0, -96(%rbp)	#, file
	je	.L23	#,
	.loc 1 896 0
	movl	n_basic_blocks(%rip), %ecx	# n_basic_blocks, n_basic_blocks.37
	.loc 1 897 0
	movq	cfun(%rip), %rax	# cfun, cfun.38
	.loc 1 896 0
	movq	40(%rax), %rdx	# cfun.38_111->name, D.19051
	movq	-96(%rbp), %rax	# file, tmp183
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp183,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 898 0
	cmpl	$1, -72(%rbp)	#, pass
	jle	.L24	#,
	.loc 1 898 0 is_stmt 0 discriminator 1
	movl	$.LC4, %eax	#, iftmp.39
	jmp	.L25	#
.L24:
	.loc 1 898 0 discriminator 2
	movl	$.LC5, %eax	#, iftmp.39
.L25:
	.loc 1 898 0 discriminator 3
	movl	-68(%rbp), %ecx	# max_pass_bytes, tmp184
	movl	-72(%rbp), %edx	# pass, tmp185
	movq	-96(%rbp), %rdi	# file, tmp186
	movl	%ecx, %r8d	# tmp184,
	movq	%rax, %rcx	# iftmp.39,
	movl	$.LC6, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
.L23:
.LBB3:
	.loc 1 902 0 is_stmt 1
	movq	$gcse_obstack, -32(%rbp)	#, __o
	movq	$0, -24(%rbp)	#, __obj
	movq	-32(%rbp), %rax	# __o, tmp187
	movq	8(%rax), %rax	# __o_115->chunk, D.19049
	cmpq	-24(%rbp), %rax	# __obj, D.19049
	jae	.L26	#,
	.loc 1 902 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# __o, tmp188
	movq	32(%rax), %rax	# __o_115->chunk_limit, D.19050
	cmpq	-24(%rbp), %rax	# __obj, D.19050
	jbe	.L26	#,
	movq	-32(%rbp), %rax	# __o, tmp189
	movq	-24(%rbp), %rdx	# __obj, tmp190
	movq	%rdx, 16(%rax)	# tmp190, __o_115->object_base
	movq	-32(%rbp), %rax	# __o, tmp191
	movq	16(%rax), %rdx	# __o_115->object_base, D.19050
	movq	-32(%rbp), %rax	# __o, tmp192
	movq	%rdx, 24(%rax)	# D.19050, __o_115->next_free
	jmp	.L27	#
.L26:
	.loc 1 902 0 discriminator 2
	movq	-24(%rbp), %rdx	# __obj, tmp193
	movq	-32(%rbp), %rax	# __o, tmp194
	movq	%rdx, %rsi	# tmp193,
	movq	%rax, %rdi	# tmp194,
	call	obstack_free	#
.L27:
.LBE3:
	.loc 1 903 0 is_stmt 1
	call	free_reg_set_mem	#
	.loc 1 905 0
	call	end_alias_analysis	#
	.loc 1 906 0
	call	max_reg_num	#
	cltq
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19047,
	call	allocate_reg_info	#
	.loc 1 912 0
	movl	run_jump_opt_after_gcse(%rip), %eax	# run_jump_opt_after_gcse, D.19044
.L3:
	.loc 1 913 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	gcse_main, .-gcse_main
	.type	compute_can_copy, @function
compute_can_copy:
.LFB3:
	.loc 1 921 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 926 0
	movl	$59, %edx	#,
	movl	$0, %esi	#,
	movl	$can_copy_p, %edi	#,
	call	memset	#
	.loc 1 928 0
	call	start_sequence	#
	.loc 1 929 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L29	#
.L33:
	.loc 1 930 0
	movl	-20(%rbp), %eax	# i, tmp65
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.19059
	cmpl	$4, %eax	#, D.19059
	jne	.L30	#,
	.loc 1 935 0
	movl	-20(%rbp), %eax	# i, i.40
	movl	$58, %esi	#,
	movl	%eax, %edi	# i.40,
	call	gen_rtx_REG	#
	movq	%rax, -16(%rbp)	# tmp66, reg
	.loc 1 936 0
	movq	-16(%rbp), %rdx	# reg, tmp67
	movq	-16(%rbp), %rax	# reg, tmp68
	movq	%rdx, %rcx	# tmp67,
	movq	%rax, %rdx	# tmp68,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.19060,
	call	emit_insn	#
	movq	%rax, -8(%rbp)	# tmp69, insn
	.loc 1 937 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.19060
	movq	-8(%rbp), %rcx	# insn, tmp71
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp71,
	movq	%rax, %rdi	# D.19060,
	call	recog	#
	testl	%eax, %eax	# D.19061
	js	.L32	#,
	.loc 1 938 0
	movl	-20(%rbp), %eax	# i, tmp73
	cltq
	movb	$1, can_copy_p(%rax)	#, can_copy_p
	jmp	.L32	#
.L30:
	.loc 1 942 0
	movl	-20(%rbp), %eax	# i, tmp75
	cltq
	movb	$1, can_copy_p(%rax)	#, can_copy_p
.L32:
	.loc 1 929 0
	addl	$1, -20(%rbp)	#, i
.L29:
	.loc 1 929 0 is_stmt 0 discriminator 1
	cmpl	$58, -20(%rbp)	#, i
	jle	.L33	#,
	.loc 1 944 0 is_stmt 1
	call	end_sequence	#
	.loc 1 945 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	compute_can_copy, .-compute_can_copy
	.type	gmalloc, @function
gmalloc:
.LFB4:
	.loc 1 952 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# size, size
	.loc 1 953 0
	movl	bytes_used(%rip), %eax	# bytes_used, bytes_used.41
	movl	%eax, %edx	# bytes_used.41, bytes_used.42
	movl	-4(%rbp), %eax	# size, tmp66
	addl	%edx, %eax	# bytes_used.42, D.19062
	movl	%eax, bytes_used(%rip)	# bytes_used.43, bytes_used
	.loc 1 954 0
	movl	-4(%rbp), %eax	# size, D.19063
	movq	%rax, %rdi	# D.19063,
	call	xmalloc	#
	.loc 1 955 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	gmalloc, .-gmalloc
	.type	grealloc, @function
grealloc:
.LFB5:
	.loc 1 965 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ptr, ptr
	movl	%esi, -12(%rbp)	# size, size
	.loc 1 966 0
	movl	-12(%rbp), %edx	# size, D.19065
	movq	-8(%rbp), %rax	# ptr, tmp62
	movq	%rdx, %rsi	# D.19065,
	movq	%rax, %rdi	# tmp62,
	call	xrealloc	#
	.loc 1 967 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	grealloc, .-grealloc
	.type	gcse_alloc, @function
gcse_alloc:
.LFB6:
	.loc 1 976 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# size, size
.LBB4:
	.loc 1 977 0
	movq	$gcse_obstack, -32(%rbp)	#, __h
.LBB5:
	movq	-32(%rbp), %rax	# __h, tmp94
	movq	%rax, -24(%rbp)	# tmp94, __o
	movq	-56(%rbp), %rax	# size, tmp95
	movl	%eax, -36(%rbp)	# tmp95, __len
	movq	-24(%rbp), %rax	# __o, tmp96
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.19067
	movq	%rax, %rdx	# D.19067, D.19068
	movq	-24(%rbp), %rax	# __o, tmp97
	movq	24(%rax), %rax	# __o_2->next_free, D.19067
	subq	%rax, %rdx	# D.19068, D.19068
	movl	-36(%rbp), %eax	# __len, tmp98
	cltq
	cmpq	%rax, %rdx	# D.19068, D.19068
	jge	.L39	#,
	.loc 1 977 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %edx	# __len, tmp99
	movq	-24(%rbp), %rax	# __o, tmp100
	movl	%edx, %esi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	_obstack_newchunk	#
.L39:
	.loc 1 977 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp101
	movq	24(%rax), %rdx	# __o_2->next_free, D.19067
	movl	-36(%rbp), %eax	# __len, tmp102
	cltq
	addq	%rax, %rdx	# D.19069, D.19067
	movq	-24(%rbp), %rax	# __o, tmp103
	movq	%rdx, 24(%rax)	# D.19067, __o_2->next_free
.LBE5:
.LBB6:
	movq	-32(%rbp), %rax	# __h, tmp104
	movq	%rax, -16(%rbp)	# tmp104, __o1
	movq	-16(%rbp), %rax	# __o1, tmp105
	movq	16(%rax), %rax	# __o1_14->object_base, tmp106
	movq	%rax, -8(%rbp)	# tmp106, value
	movq	-16(%rbp), %rax	# __o1, tmp107
	movq	24(%rax), %rax	# __o1_14->next_free, D.19067
	cmpq	-8(%rbp), %rax	# value, D.19067
	jne	.L40	#,
	.loc 1 977 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp108
	movzbl	80(%rax), %edx	# __o1_14->maybe_empty_object, tmp111
	orl	$2, %edx	#, tmp112
	movb	%dl, 80(%rax)	# tmp112, __o1_14->maybe_empty_object
.L40:
	.loc 1 977 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp113
	movq	24(%rax), %rax	# __o1_14->next_free, D.19067
	movq	%rax, %rdx	# D.19067, D.19068
	movq	-16(%rbp), %rax	# __o1, tmp114
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.19070
	cltq
	addq	%rax, %rdx	# D.19068, D.19068
	movq	-16(%rbp), %rax	# __o1, tmp115
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.19070
	notl	%eax	# D.19070
	cltq
	andq	%rdx, %rax	# D.19068, D.19068
	movq	%rax, %rdx	# D.19068, D.19067
	movq	-16(%rbp), %rax	# __o1, tmp116
	movq	%rdx, 24(%rax)	# D.19067, __o1_14->next_free
	movq	-16(%rbp), %rax	# __o1, tmp117
	movq	24(%rax), %rax	# __o1_14->next_free, D.19067
	movq	%rax, %rdx	# D.19067, D.19068
	movq	-16(%rbp), %rax	# __o1, tmp118
	movq	8(%rax), %rax	# __o1_14->chunk, D.19071
	movq	%rdx, %rcx	# D.19068, D.19068
	subq	%rax, %rcx	# D.19068, D.19068
	movq	-16(%rbp), %rax	# __o1, tmp119
	movq	32(%rax), %rax	# __o1_14->chunk_limit, D.19067
	movq	%rax, %rdx	# D.19067, D.19068
	movq	-16(%rbp), %rax	# __o1, tmp120
	movq	8(%rax), %rax	# __o1_14->chunk, D.19071
	subq	%rax, %rdx	# D.19068, D.19068
	movq	%rdx, %rax	# D.19068, D.19068
	cmpq	%rax, %rcx	# D.19068, D.19068
	jle	.L41	#,
	.loc 1 977 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp121
	movq	32(%rax), %rdx	# __o1_14->chunk_limit, D.19067
	movq	-16(%rbp), %rax	# __o1, tmp122
	movq	%rdx, 24(%rax)	# D.19067, __o1_14->next_free
.L41:
	.loc 1 977 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp123
	movq	24(%rax), %rdx	# __o1_14->next_free, D.19067
	movq	-16(%rbp), %rax	# __o1, tmp124
	movq	%rdx, 16(%rax)	# D.19067, __o1_14->object_base
	movq	-8(%rbp), %rax	# value, D.19072
.LBE6:
.LBE4:
	.loc 1 978 0 is_stmt 1 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	gcse_alloc, .-gcse_alloc
	.type	alloc_gcse_mem, @function
alloc_gcse_mem:
.LFB7:
	.loc 1 988 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 996 0
	call	get_max_uid	#
	movl	%eax, max_uid(%rip)	# max_uid.44, max_uid
	.loc 1 997 0
	movl	max_uid(%rip), %eax	# max_uid, max_uid.45
	addl	$1, %eax	#, D.19073
	sall	$2, %eax	#, D.19074
	movl	%eax, -12(%rbp)	# D.19074, n
	.loc 1 998 0
	movl	-12(%rbp), %eax	# n, n.46
	movl	%eax, %edi	# n.46,
	call	gmalloc	#
	movq	%rax, uid_cuid(%rip)	# uid_cuid.47, uid_cuid
	.loc 1 999 0
	movl	-12(%rbp), %eax	# n, tmp126
	movslq	%eax, %rdx	# tmp126, D.19075
	movq	uid_cuid(%rip), %rax	# uid_cuid, uid_cuid.48
	movl	$0, %esi	#,
	movq	%rax, %rdi	# uid_cuid.48,
	call	memset	#
	.loc 1 1000 0
	movq	-24(%rbp), %rax	# f, tmp127
	movq	%rax, -8(%rbp)	# tmp127, insn
	movl	$0, -16(%rbp)	#, i
	jmp	.L44	#
.L47:
	.loc 1 1002 0
	movq	-8(%rbp), %rax	# insn, tmp128
	movzwl	(%rax), %eax	# insn_5->code, D.19076
	movzwl	%ax, %eax	# D.19076, D.19073
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19077
	cmpb	$105, %al	#, D.19077
	jne	.L45	#,
	.loc 1 1003 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.49
	movq	-8(%rbp), %rax	# insn, tmp130
	movl	8(%rax), %eax	# insn_5->fld[0].rtint, D.19073
	cltq
	salq	$2, %rax	#, D.19075
	leaq	(%rdx,%rax), %rcx	#, D.19078
	movl	-16(%rbp), %eax	# i, i.50
	leal	1(%rax), %edx	#, tmp131
	movl	%edx, -16(%rbp)	# tmp131, i
	movl	%eax, (%rcx)	# i.50, *_27
	jmp	.L46	#
.L45:
	.loc 1 1005 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.51
	movq	-8(%rbp), %rax	# insn, tmp132
	movl	8(%rax), %eax	# insn_5->fld[0].rtint, D.19073
	cltq
	salq	$2, %rax	#, D.19075
	addq	%rax, %rdx	# D.19075, D.19078
	movl	-16(%rbp), %eax	# i, tmp133
	movl	%eax, (%rdx)	# tmp133, *_34
.L46:
	.loc 1 1000 0
	movq	-8(%rbp), %rax	# insn, tmp134
	movq	24(%rax), %rax	# insn_5->fld[2].rtx, tmp135
	movq	%rax, -8(%rbp)	# tmp135, insn
.L44:
	.loc 1 1000 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L47	#,
	.loc 1 1010 0 is_stmt 1
	movl	-16(%rbp), %eax	# i, tmp136
	movl	%eax, max_cuid(%rip)	# tmp136, max_cuid
	.loc 1 1011 0
	movl	max_cuid(%rip), %eax	# max_cuid, max_cuid.52
	addl	$1, %eax	#, D.19073
	sall	$3, %eax	#, D.19074
	movl	%eax, -12(%rbp)	# D.19074, n
	.loc 1 1012 0
	movl	-12(%rbp), %eax	# n, n.53
	movl	%eax, %edi	# n.53,
	call	gmalloc	#
	movq	%rax, cuid_insn(%rip)	# cuid_insn.54, cuid_insn
	.loc 1 1013 0
	movl	-12(%rbp), %eax	# n, tmp137
	movslq	%eax, %rdx	# tmp137, D.19075
	movq	cuid_insn(%rip), %rax	# cuid_insn, cuid_insn.55
	movl	$0, %esi	#,
	movq	%rax, %rdi	# cuid_insn.55,
	call	memset	#
	.loc 1 1014 0
	movq	-24(%rbp), %rax	# f, tmp138
	movq	%rax, -8(%rbp)	# tmp138, insn
	movl	$0, -16(%rbp)	#, i
	jmp	.L48	#
.L50:
	.loc 1 1015 0
	movq	-8(%rbp), %rax	# insn, tmp139
	movzwl	(%rax), %eax	# insn_6->code, D.19076
	movzwl	%ax, %eax	# D.19076, D.19073
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19077
	cmpb	$105, %al	#, D.19077
	jne	.L49	#,
	.loc 1 1016 0
	movq	cuid_insn(%rip), %rcx	# cuid_insn, cuid_insn.56
	movl	-16(%rbp), %eax	# i, i.57
	leal	1(%rax), %edx	#, tmp141
	movl	%edx, -16(%rbp)	# tmp141, i
	cltq
	salq	$3, %rax	#, D.19075
	leaq	(%rcx,%rax), %rdx	#, D.19079
	movq	-8(%rbp), %rax	# insn, tmp142
	movq	%rax, (%rdx)	# tmp142, *_55
.L49:
	.loc 1 1014 0
	movq	-8(%rbp), %rax	# insn, tmp143
	movq	24(%rax), %rax	# insn_6->fld[2].rtx, tmp144
	movq	%rax, -8(%rbp)	# tmp144, insn
.L48:
	.loc 1 1014 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L50	#,
	.loc 1 1019 0 is_stmt 1
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.19080,
	call	bitmap_initialize	#
	movq	%rax, reg_set_bitmap(%rip)	# reg_set_bitmap.58, reg_set_bitmap
	.loc 1 1022 0
	movl	max_gcse_regno(%rip), %edx	# max_gcse_regno, max_gcse_regno.59
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.60
	movl	%edx, %esi	# max_gcse_regno.59,
	movl	%eax, %edi	# n_basic_blocks.61,
	call	sbitmap_vector_alloc	#
	movq	%rax, reg_set_in_block(%rip)	# reg_set_in_block.62, reg_set_in_block
	.loc 1 1026 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.63
	cltq
	sall	$3, %eax	#, D.19081
	movl	%eax, %edi	# D.19081,
	call	gmalloc	#
	movq	%rax, modify_mem_list(%rip)	# modify_mem_list.64, modify_mem_list
	.loc 1 1027 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.65
	cltq
	sall	$3, %eax	#, D.19081
	movl	%eax, %edi	# D.19081,
	call	gmalloc	#
	movq	%rax, canon_modify_mem_list(%rip)	# canon_modify_mem_list.66, canon_modify_mem_list
	.loc 1 1028 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.67
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19075
	movq	modify_mem_list(%rip), %rax	# modify_mem_list, modify_mem_list.68
	movl	$0, %esi	#,
	movq	%rax, %rdi	# modify_mem_list.68,
	call	memset	#
	.loc 1 1029 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.69
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19075
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.70
	movl	$0, %esi	#,
	movq	%rax, %rdi	# canon_modify_mem_list.70,
	call	memset	#
	.loc 1 1030 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.19080,
	call	bitmap_initialize	#
	movq	%rax, modify_mem_list_set(%rip)	# modify_mem_list_set.71, modify_mem_list_set
	.loc 1 1031 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.19080,
	call	bitmap_initialize	#
	movq	%rax, canon_modify_mem_list_set(%rip)	# canon_modify_mem_list_set.72, canon_modify_mem_list_set
	.loc 1 1032 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	alloc_gcse_mem, .-alloc_gcse_mem
	.type	free_gcse_mem, @function
free_gcse_mem:
.LFB8:
	.loc 1 1038 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1039 0
	movq	uid_cuid(%rip), %rax	# uid_cuid, uid_cuid.73
	movq	%rax, %rdi	# uid_cuid.73,
	call	free	#
	.loc 1 1040 0
	movq	cuid_insn(%rip), %rax	# cuid_insn, cuid_insn.74
	movq	%rax, %rdi	# cuid_insn.74,
	call	free	#
	.loc 1 1042 0
	movq	reg_set_bitmap(%rip), %rax	# reg_set_bitmap, reg_set_bitmap.75
	testq	%rax, %rax	# reg_set_bitmap.75
	je	.L52	#,
	.loc 1 1042 0 is_stmt 0 discriminator 1
	movq	reg_set_bitmap(%rip), %rax	# reg_set_bitmap, reg_set_bitmap.76
	movq	%rax, %rdi	# reg_set_bitmap.76,
	call	bitmap_clear	#
	movq	reg_set_bitmap(%rip), %rax	# reg_set_bitmap, reg_set_bitmap.77
	movq	%rax, %rdi	# reg_set_bitmap.77,
	call	free	#
	movq	$0, reg_set_bitmap(%rip)	#, reg_set_bitmap
.L52:
	.loc 1 1044 0 is_stmt 1
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.78
	movq	%rax, %rdi	# reg_set_in_block.78,
	call	free	#
	.loc 1 1045 0
	call	free_modify_mem_tables	#
	.loc 1 1046 0
	movq	modify_mem_list_set(%rip), %rax	# modify_mem_list_set, modify_mem_list_set.79
	testq	%rax, %rax	# modify_mem_list_set.79
	je	.L53	#,
	.loc 1 1046 0 is_stmt 0 discriminator 1
	movq	modify_mem_list_set(%rip), %rax	# modify_mem_list_set, modify_mem_list_set.80
	movq	%rax, %rdi	# modify_mem_list_set.80,
	call	bitmap_clear	#
	movq	modify_mem_list_set(%rip), %rax	# modify_mem_list_set, modify_mem_list_set.81
	movq	%rax, %rdi	# modify_mem_list_set.81,
	call	free	#
	movq	$0, modify_mem_list_set(%rip)	#, modify_mem_list_set
.L53:
	.loc 1 1047 0 is_stmt 1
	movq	canon_modify_mem_list_set(%rip), %rax	# canon_modify_mem_list_set, canon_modify_mem_list_set.82
	testq	%rax, %rax	# canon_modify_mem_list_set.82
	je	.L51	#,
	.loc 1 1047 0 is_stmt 0 discriminator 1
	movq	canon_modify_mem_list_set(%rip), %rax	# canon_modify_mem_list_set, canon_modify_mem_list_set.83
	movq	%rax, %rdi	# canon_modify_mem_list_set.83,
	call	bitmap_clear	#
	movq	canon_modify_mem_list_set(%rip), %rax	# canon_modify_mem_list_set, canon_modify_mem_list_set.84
	movq	%rax, %rdi	# canon_modify_mem_list_set.84,
	call	free	#
	movq	$0, canon_modify_mem_list_set(%rip)	#, canon_modify_mem_list_set
.L51:
	.loc 1 1048 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	free_gcse_mem, .-free_gcse_mem
	.type	get_bitmap_width, @function
get_bitmap_width:
.LFB9:
	.loc 1 1072 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, -24(%rbp)	# x, x
	movl	%edx, -28(%rbp)	# y, y
	.loc 1 1076 0
	movq	$10485760, -16(%rbp)	#, max_bitmap_memory
	.loc 1 1080 0
	movl	-20(%rbp), %eax	# n, tmp73
	imull	-24(%rbp), %eax	# x, D.19082
	cltq
	salq	$3, %rax	#, tmp74
	movq	%rax, -8(%rbp)	# tmp74, column_size
	.loc 1 1084 0
	movl	-28(%rbp), %eax	# y, y.85
	addl	$63, %eax	#, D.19084
	shrl	$6, %eax	#, D.19084
	movl	%eax, %eax	# D.19084, D.19083
	imulq	-8(%rbp), %rax	# column_size, D.19083
	cmpq	-16(%rbp), %rax	# max_bitmap_memory, D.19083
	ja	.L56	#,
	.loc 1 1085 0
	movl	-28(%rbp), %eax	# y, D.19082
	jmp	.L57	#
.L56:
	.loc 1 1089 0
	movq	-8(%rbp), %rax	# column_size, tmp75
	movq	-16(%rbp), %rdx	# max_bitmap_memory, tmp76
	addq	%rdx, %rax	# tmp76, D.19083
	subq	$1, %rax	#, D.19083
	.loc 1 1090 0
	movl	$0, %edx	#, tmp78
	divq	-8(%rbp)	# column_size
	.loc 1 1089 0
	sall	$6, %eax	#, D.19085
.L57:
	.loc 1 1091 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_bitmap_width, .-get_bitmap_width
	.type	compute_local_properties, @function
compute_local_properties:
.LFB10:
	.loc 1 1127 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# transp, transp
	movq	%rsi, -64(%rbp)	# comp, comp
	movq	%rdx, -72(%rbp)	# antloc, antloc
	movl	%ecx, -76(%rbp)	# setp, setp
	.loc 1 1132 0
	cmpq	$0, -56(%rbp)	#, transp
	je	.L59	#,
	.loc 1 1134 0
	cmpl	$0, -76(%rbp)	#, setp
	je	.L60	#,
	.loc 1 1135 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.86
	movl	%eax, %edx	# n_basic_blocks.86, n_basic_blocks.87
	movq	-56(%rbp), %rax	# transp, tmp121
	movl	%edx, %esi	# n_basic_blocks.87,
	movq	%rax, %rdi	# tmp121,
	call	sbitmap_vector_zero	#
	jmp	.L59	#
.L60:
	.loc 1 1137 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.88
	movl	%eax, %edx	# n_basic_blocks.88, n_basic_blocks.89
	movq	-56(%rbp), %rax	# transp, tmp122
	movl	%edx, %esi	# n_basic_blocks.89,
	movq	%rax, %rdi	# tmp122,
	call	sbitmap_vector_ones	#
.L59:
	.loc 1 1140 0
	cmpq	$0, -64(%rbp)	#, comp
	je	.L61	#,
	.loc 1 1141 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.90
	movl	%eax, %edx	# n_basic_blocks.90, n_basic_blocks.91
	movq	-64(%rbp), %rax	# comp, tmp123
	movl	%edx, %esi	# n_basic_blocks.91,
	movq	%rax, %rdi	# tmp123,
	call	sbitmap_vector_zero	#
.L61:
	.loc 1 1142 0
	cmpq	$0, -72(%rbp)	#, antloc
	je	.L62	#,
	.loc 1 1143 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.92
	movl	%eax, %edx	# n_basic_blocks.92, n_basic_blocks.93
	movq	-72(%rbp), %rax	# antloc, tmp124
	movl	%edx, %esi	# n_basic_blocks.93,
	movq	%rax, %rdi	# tmp124,
	call	sbitmap_vector_zero	#
.L62:
	.loc 1 1148 0
	cmpl	$0, -76(%rbp)	#, setp
	je	.L63	#,
	.loc 1 1148 0 is_stmt 0 discriminator 1
	movl	set_hash_table_size(%rip), %eax	# set_hash_table_size, iftmp.94
	jmp	.L64	#
.L63:
	.loc 1 1148 0 discriminator 2
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, iftmp.94
.L64:
	.loc 1 1148 0 discriminator 3
	movl	%eax, -32(%rbp)	# iftmp.94, hash_table_size
	.loc 1 1149 0 is_stmt 1 discriminator 3
	cmpl	$0, -76(%rbp)	#, setp
	je	.L65	#,
	.loc 1 1149 0 is_stmt 0 discriminator 1
	movq	set_hash_table(%rip), %rax	# set_hash_table, iftmp.95
	jmp	.L66	#
.L65:
	.loc 1 1149 0 discriminator 2
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, iftmp.95
.L66:
	.loc 1 1149 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.95, hash_table
	.loc 1 1151 0 is_stmt 1 discriminator 3
	movl	$0, -36(%rbp)	#, i
	jmp	.L67	#
.L77:
.LBB7:
	.loc 1 1155 0
	movl	-36(%rbp), %eax	# i, D.19087
	leaq	0(,%rax,8), %rdx	#, D.19087
	movq	-8(%rbp), %rax	# hash_table, tmp125
	addq	%rdx, %rax	# D.19087, D.19088
	movq	(%rax), %rax	# *_28, tmp126
	movq	%rax, -24(%rbp)	# tmp126, expr
	jmp	.L68	#
.L76:
.LBB8:
	.loc 1 1157 0
	movq	-24(%rbp), %rax	# expr, tmp127
	movl	8(%rax), %eax	# expr_2->bitmap_index, tmp128
	movl	%eax, -28(%rbp)	# tmp128, indx
	.loc 1 1163 0
	cmpq	$0, -56(%rbp)	#, transp
	je	.L69	#,
	.loc 1 1164 0
	movq	-24(%rbp), %rax	# expr, tmp129
	movq	(%rax), %rax	# expr_2->expr, D.19089
	movl	-76(%rbp), %ecx	# setp, tmp130
	movq	-56(%rbp), %rdx	# transp, tmp131
	movl	-28(%rbp), %esi	# indx, tmp132
	movq	%rax, %rdi	# D.19089,
	call	compute_transp	#
.L69:
	.loc 1 1168 0
	cmpq	$0, -72(%rbp)	#, antloc
	je	.L70	#,
	.loc 1 1169 0
	movq	-24(%rbp), %rax	# expr, tmp133
	movq	24(%rax), %rax	# expr_2->antic_occr, tmp134
	movq	%rax, -16(%rbp)	# tmp134, occr
	jmp	.L71	#
.L72:
	.loc 1 1171 0 discriminator 2
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.96
	movq	-16(%rbp), %rdx	# occr, tmp135
	movq	8(%rdx), %rdx	# occr_3->insn, D.19089
	movl	8(%rdx), %edx	# _34->fld[0].rtint, D.19090
	movslq	%edx, %rdx	# D.19090, tmp136
	addq	$4, %rdx	#, tmp137
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.96_33->data.bb, D.19091
	movl	88(%rax), %eax	# _36->index, D.19090
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19087
	movq	-72(%rbp), %rax	# antloc, tmp138
	addq	%rdx, %rax	# D.19087, D.19092
	movq	(%rax), %rdx	# *_40, D.19093
	movl	-28(%rbp), %eax	# indx, indx.97
	shrl	$6, %eax	#, D.19094
	movq	basic_block_for_insn(%rip), %rcx	# basic_block_for_insn, basic_block_for_insn.98
	movq	-16(%rbp), %rsi	# occr, tmp139
	movq	8(%rsi), %rsi	# occr_3->insn, D.19089
	movl	8(%rsi), %esi	# _45->fld[0].rtint, D.19090
	movslq	%esi, %rsi	# D.19090, tmp140
	addq	$4, %rsi	#, tmp141
	movq	(%rcx,%rsi,8), %rcx	# basic_block_for_insn.98_44->data.bb, D.19091
	movl	88(%rcx), %ecx	# _47->index, D.19090
	movslq	%ecx, %rcx	# D.19090, D.19087
	leaq	0(,%rcx,8), %rsi	#, D.19087
	movq	-72(%rbp), %rcx	# antloc, tmp142
	addq	%rsi, %rcx	# D.19087, D.19092
	movq	(%rcx), %rcx	# *_51, D.19093
	movl	%eax, %esi	# D.19094, tmp143
	addq	$2, %rsi	#, tmp144
	movq	(%rcx,%rsi,8), %rsi	# _52->elms, D.19087
	movl	-28(%rbp), %ecx	# indx, tmp145
	andl	$63, %ecx	#, D.19090
	movl	$1, %edi	#, tmp146
	salq	%cl, %rdi	# D.19090, D.19087
	movq	%rdi, %rcx	# D.19087, D.19087
	orq	%rsi, %rcx	# D.19087, D.19087
	movl	%eax, %eax	# D.19094, tmp147
	addq	$2, %rax	#, tmp148
	movq	%rcx, (%rdx,%rax,8)	# D.19087, _41->elms
	.loc 1 1175 0 discriminator 2
	movq	-16(%rbp), %rax	# occr, tmp149
	movb	$0, 16(%rax)	#, occr_3->deleted_p
	.loc 1 1169 0 discriminator 2
	movq	-16(%rbp), %rax	# occr, tmp150
	movq	(%rax), %rax	# occr_3->next, tmp151
	movq	%rax, -16(%rbp)	# tmp151, occr
.L71:
	.loc 1 1169 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, occr
	jne	.L72	#,
.L70:
	.loc 1 1180 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, comp
	je	.L73	#,
	.loc 1 1181 0
	movq	-24(%rbp), %rax	# expr, tmp152
	movq	32(%rax), %rax	# expr_2->avail_occr, tmp153
	movq	%rax, -16(%rbp)	# tmp153, occr
	jmp	.L74	#
.L75:
	.loc 1 1183 0 discriminator 2
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.99
	movq	-16(%rbp), %rdx	# occr, tmp154
	movq	8(%rdx), %rdx	# occr_4->insn, D.19089
	movl	8(%rdx), %edx	# _60->fld[0].rtint, D.19090
	movslq	%edx, %rdx	# D.19090, tmp155
	addq	$4, %rdx	#, tmp156
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.99_59->data.bb, D.19091
	movl	88(%rax), %eax	# _62->index, D.19090
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19087
	movq	-64(%rbp), %rax	# comp, tmp157
	addq	%rdx, %rax	# D.19087, D.19092
	movq	(%rax), %rdx	# *_66, D.19093
	movl	-28(%rbp), %eax	# indx, indx.100
	shrl	$6, %eax	#, D.19094
	movq	basic_block_for_insn(%rip), %rcx	# basic_block_for_insn, basic_block_for_insn.101
	movq	-16(%rbp), %rsi	# occr, tmp158
	movq	8(%rsi), %rsi	# occr_4->insn, D.19089
	movl	8(%rsi), %esi	# _71->fld[0].rtint, D.19090
	movslq	%esi, %rsi	# D.19090, tmp159
	addq	$4, %rsi	#, tmp160
	movq	(%rcx,%rsi,8), %rcx	# basic_block_for_insn.101_70->data.bb, D.19091
	movl	88(%rcx), %ecx	# _73->index, D.19090
	movslq	%ecx, %rcx	# D.19090, D.19087
	leaq	0(,%rcx,8), %rsi	#, D.19087
	movq	-64(%rbp), %rcx	# comp, tmp161
	addq	%rsi, %rcx	# D.19087, D.19092
	movq	(%rcx), %rcx	# *_77, D.19093
	movl	%eax, %esi	# D.19094, tmp162
	addq	$2, %rsi	#, tmp163
	movq	(%rcx,%rsi,8), %rsi	# _78->elms, D.19087
	movl	-28(%rbp), %ecx	# indx, tmp164
	andl	$63, %ecx	#, D.19090
	movl	$1, %edi	#, tmp165
	salq	%cl, %rdi	# D.19090, D.19087
	movq	%rdi, %rcx	# D.19087, D.19087
	orq	%rsi, %rcx	# D.19087, D.19087
	movl	%eax, %eax	# D.19094, tmp166
	addq	$2, %rax	#, tmp167
	movq	%rcx, (%rdx,%rax,8)	# D.19087, _67->elms
	.loc 1 1187 0 discriminator 2
	movq	-16(%rbp), %rax	# occr, tmp168
	movb	$0, 17(%rax)	#, occr_4->copied_p
	.loc 1 1181 0 discriminator 2
	movq	-16(%rbp), %rax	# occr, tmp169
	movq	(%rax), %rax	# occr_4->next, tmp170
	movq	%rax, -16(%rbp)	# tmp170, occr
.L74:
	.loc 1 1181 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, occr
	jne	.L75	#,
.L73:
	.loc 1 1192 0 is_stmt 1
	movq	-24(%rbp), %rax	# expr, tmp171
	movq	$0, 40(%rax)	#, expr_2->reaching_reg
.LBE8:
	.loc 1 1155 0
	movq	-24(%rbp), %rax	# expr, tmp172
	movq	16(%rax), %rax	# expr_2->next_same_hash, tmp173
	movq	%rax, -24(%rbp)	# tmp173, expr
.L68:
	.loc 1 1155 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, expr
	jne	.L76	#,
.LBE7:
	.loc 1 1151 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L67:
	.loc 1 1151 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp174
	cmpl	-32(%rbp), %eax	# hash_table_size, tmp174
	jb	.L77	#,
	.loc 1 1195 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	compute_local_properties, .-compute_local_properties
	.local	reg_set_obstack
	.comm	reg_set_obstack,88,32
	.type	alloc_reg_set_mem, @function
alloc_reg_set_mem:
.LFB11:
	.loc 1 1207 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n_regs, n_regs
	.loc 1 1210 0
	movl	-20(%rbp), %eax	# n_regs, tmp66
	addl	$100, %eax	#, reg_set_table_size.102
	movl	%eax, reg_set_table_size(%rip)	# reg_set_table_size.102, reg_set_table_size
	.loc 1 1211 0
	movl	reg_set_table_size(%rip), %eax	# reg_set_table_size, reg_set_table_size.103
	cltq
	sall	$3, %eax	#, tmp67
	movl	%eax, -4(%rbp)	# tmp67, n
	.loc 1 1212 0
	movl	-4(%rbp), %eax	# n, tmp68
	movl	%eax, %edi	# tmp68,
	call	gmalloc	#
	movq	%rax, reg_set_table(%rip)	# reg_set_table.104, reg_set_table
	.loc 1 1213 0
	movl	-4(%rbp), %edx	# n, D.19095
	movq	reg_set_table(%rip), %rax	# reg_set_table, reg_set_table.105
	movl	$0, %esi	#,
	movq	%rax, %rdi	# reg_set_table.105,
	call	memset	#
	.loc 1 1215 0
	movl	$reg_set_obstack, %edi	#,
	call	gcc_obstack_init	#
	.loc 1 1216 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	alloc_reg_set_mem, .-alloc_reg_set_mem
	.type	free_reg_set_mem, @function
free_reg_set_mem:
.LFB12:
	.loc 1 1220 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1221 0
	movq	reg_set_table(%rip), %rax	# reg_set_table, reg_set_table.106
	movq	%rax, %rdi	# reg_set_table.106,
	call	free	#
.LBB9:
	.loc 1 1222 0
	movq	$reg_set_obstack, -16(%rbp)	#, __o
	movq	$0, -8(%rbp)	#, __obj
	movq	-16(%rbp), %rax	# __o, tmp63
	movq	8(%rax), %rax	# __o_2->chunk, D.19097
	cmpq	-8(%rbp), %rax	# __obj, D.19097
	jae	.L80	#,
	.loc 1 1222 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp64
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.19098
	cmpq	-8(%rbp), %rax	# __obj, D.19098
	jbe	.L80	#,
	movq	-16(%rbp), %rax	# __o, tmp65
	movq	-8(%rbp), %rdx	# __obj, tmp66
	movq	%rdx, 16(%rax)	# tmp66, __o_2->object_base
	movq	-16(%rbp), %rax	# __o, tmp67
	movq	16(%rax), %rdx	# __o_2->object_base, D.19098
	movq	-16(%rbp), %rax	# __o, tmp68
	movq	%rdx, 24(%rax)	# D.19098, __o_2->next_free
	jmp	.L79	#
.L80:
	.loc 1 1222 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp69
	movq	-16(%rbp), %rax	# __o, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	obstack_free	#
.L79:
.LBE9:
	.loc 1 1223 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	free_reg_set_mem, .-free_reg_set_mem
	.type	record_one_set, @function
record_one_set:
.LFB13:
	.loc 1 1231 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# regno, regno
	movq	%rsi, -64(%rbp)	# insn, insn
	.loc 1 1236 0
	movl	reg_set_table_size(%rip), %eax	# reg_set_table_size, reg_set_table_size.107
	cmpl	%eax, -52(%rbp)	# reg_set_table_size.107, regno
	jl	.L83	#,
.LBB10:
	.loc 1 1238 0
	movl	-52(%rbp), %eax	# regno, tmp124
	addl	$100, %eax	#, tmp123
	movl	%eax, -48(%rbp)	# tmp123, new_size
	.loc 1 1241 0
	movl	-48(%rbp), %eax	# new_size, tmp125
	cltq
	leal	0(,%rax,8), %edx	#, D.19100
	movq	reg_set_table(%rip), %rax	# reg_set_table, reg_set_table.108
	movl	%edx, %esi	# D.19100,
	movq	%rax, %rdi	# reg_set_table.108,
	call	grealloc	#
	movq	%rax, reg_set_table(%rip)	# reg_set_table.109, reg_set_table
	.loc 1 1244 0
	movl	reg_set_table_size(%rip), %eax	# reg_set_table_size, reg_set_table_size.110
	movl	-48(%rbp), %edx	# new_size, tmp126
	subl	%eax, %edx	# reg_set_table_size.110, D.19101
	movl	%edx, %eax	# D.19101, D.19101
	.loc 1 1243 0
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19099
	movq	reg_set_table(%rip), %rax	# reg_set_table, reg_set_table.111
	movl	reg_set_table_size(%rip), %ecx	# reg_set_table_size, reg_set_table_size.112
	movslq	%ecx, %rcx	# reg_set_table_size.112, D.19099
	salq	$3, %rcx	#, D.19099
	addq	%rcx, %rax	# D.19099, D.19102
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19102,
	call	memset	#
	.loc 1 1245 0
	movl	-48(%rbp), %eax	# new_size, tmp127
	movl	%eax, reg_set_table_size(%rip)	# tmp127, reg_set_table_size
.L83:
.LBE10:
.LBB11:
	.loc 1 1248 0
	movq	$reg_set_obstack, -40(%rbp)	#, __h
.LBB12:
	movq	-40(%rbp), %rax	# __h, tmp128
	movq	%rax, -32(%rbp)	# tmp128, __o
	movl	$16, -44(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp129
	movq	32(%rax), %rax	# __o_19->chunk_limit, D.19103
	movq	%rax, %rdx	# D.19103, D.19104
	movq	-32(%rbp), %rax	# __o, tmp130
	movq	24(%rax), %rax	# __o_19->next_free, D.19103
	subq	%rax, %rdx	# D.19104, D.19104
	movl	-44(%rbp), %eax	# __len, tmp131
	cltq
	cmpq	%rax, %rdx	# D.19104, D.19104
	jge	.L84	#,
	.loc 1 1248 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp132
	movq	-32(%rbp), %rax	# __o, tmp133
	movl	%edx, %esi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	_obstack_newchunk	#
.L84:
	.loc 1 1248 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp134
	movq	24(%rax), %rdx	# __o_19->next_free, D.19103
	movl	-44(%rbp), %eax	# __len, tmp135
	cltq
	addq	%rax, %rdx	# D.19105, D.19103
	movq	-32(%rbp), %rax	# __o, tmp136
	movq	%rdx, 24(%rax)	# D.19103, __o_19->next_free
.LBE12:
.LBB13:
	movq	-40(%rbp), %rax	# __h, tmp137
	movq	%rax, -24(%rbp)	# tmp137, __o1
	movq	-24(%rbp), %rax	# __o1, tmp138
	movq	16(%rax), %rax	# __o1_30->object_base, tmp139
	movq	%rax, -16(%rbp)	# tmp139, value
	movq	-24(%rbp), %rax	# __o1, tmp140
	movq	24(%rax), %rax	# __o1_30->next_free, D.19103
	cmpq	-16(%rbp), %rax	# value, D.19103
	jne	.L85	#,
	.loc 1 1248 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp141
	movzbl	80(%rax), %edx	# __o1_30->maybe_empty_object, tmp144
	orl	$2, %edx	#, tmp145
	movb	%dl, 80(%rax)	# tmp145, __o1_30->maybe_empty_object
.L85:
	.loc 1 1248 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp146
	movq	24(%rax), %rax	# __o1_30->next_free, D.19103
	movq	%rax, %rdx	# D.19103, D.19104
	movq	-24(%rbp), %rax	# __o1, tmp147
	movl	48(%rax), %eax	# __o1_30->alignment_mask, D.19101
	cltq
	addq	%rax, %rdx	# D.19104, D.19104
	movq	-24(%rbp), %rax	# __o1, tmp148
	movl	48(%rax), %eax	# __o1_30->alignment_mask, D.19101
	notl	%eax	# D.19101
	cltq
	andq	%rdx, %rax	# D.19104, D.19104
	movq	%rax, %rdx	# D.19104, D.19103
	movq	-24(%rbp), %rax	# __o1, tmp149
	movq	%rdx, 24(%rax)	# D.19103, __o1_30->next_free
	movq	-24(%rbp), %rax	# __o1, tmp150
	movq	24(%rax), %rax	# __o1_30->next_free, D.19103
	movq	%rax, %rdx	# D.19103, D.19104
	movq	-24(%rbp), %rax	# __o1, tmp151
	movq	8(%rax), %rax	# __o1_30->chunk, D.19106
	movq	%rdx, %rcx	# D.19104, D.19104
	subq	%rax, %rcx	# D.19104, D.19104
	movq	-24(%rbp), %rax	# __o1, tmp152
	movq	32(%rax), %rax	# __o1_30->chunk_limit, D.19103
	movq	%rax, %rdx	# D.19103, D.19104
	movq	-24(%rbp), %rax	# __o1, tmp153
	movq	8(%rax), %rax	# __o1_30->chunk, D.19106
	subq	%rax, %rdx	# D.19104, D.19104
	movq	%rdx, %rax	# D.19104, D.19104
	cmpq	%rax, %rcx	# D.19104, D.19104
	jle	.L86	#,
	.loc 1 1248 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp154
	movq	32(%rax), %rdx	# __o1_30->chunk_limit, D.19103
	movq	-24(%rbp), %rax	# __o1, tmp155
	movq	%rdx, 24(%rax)	# D.19103, __o1_30->next_free
.L86:
	.loc 1 1248 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp156
	movq	24(%rax), %rdx	# __o1_30->next_free, D.19103
	movq	-24(%rbp), %rax	# __o1, tmp157
	movq	%rdx, 16(%rax)	# D.19103, __o1_30->object_base
	movq	-16(%rbp), %rax	# value, D.19102
.LBE13:
.LBE11:
	movq	%rax, -8(%rbp)	# new_reg_info.113, new_reg_info
	.loc 1 1250 0 is_stmt 1 discriminator 2
	movl	bytes_used(%rip), %eax	# bytes_used, bytes_used.114
	addl	$16, %eax	#, D.19107
	movl	%eax, bytes_used(%rip)	# bytes_used.116, bytes_used
	.loc 1 1251 0 discriminator 2
	movq	-8(%rbp), %rax	# new_reg_info, tmp158
	movq	-64(%rbp), %rdx	# insn, tmp159
	movq	%rdx, 8(%rax)	# tmp159, new_reg_info_57->insn
	.loc 1 1252 0 discriminator 2
	movq	reg_set_table(%rip), %rax	# reg_set_table, reg_set_table.117
	movl	-52(%rbp), %edx	# regno, tmp160
	movslq	%edx, %rdx	# tmp160, D.19099
	salq	$3, %rdx	#, D.19099
	addq	%rdx, %rax	# D.19099, D.19108
	movq	(%rax), %rdx	# *_66, D.19109
	movq	-8(%rbp), %rax	# new_reg_info, tmp161
	movq	%rdx, (%rax)	# D.19109, new_reg_info_57->next
	.loc 1 1253 0 discriminator 2
	movq	reg_set_table(%rip), %rax	# reg_set_table, reg_set_table.118
	movl	-52(%rbp), %edx	# regno, tmp162
	movslq	%edx, %rdx	# tmp162, D.19099
	salq	$3, %rdx	#, D.19099
	addq	%rax, %rdx	# reg_set_table.118, D.19108
	movq	-8(%rbp), %rax	# new_reg_info, tmp163
	movq	%rax, (%rdx)	# tmp163, *_71
	.loc 1 1254 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	record_one_set, .-record_one_set
	.type	record_set_info, @function
record_set_info:
.LFB14:
	.loc 1 1264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# dest, dest
	movq	%rsi, -32(%rbp)	# setter, setter
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 1265 0
	movq	-40(%rbp), %rax	# data, tmp63
	movq	%rax, -8(%rbp)	# tmp63, record_set_insn
	.loc 1 1267 0
	movq	-24(%rbp), %rax	# dest, tmp64
	movzwl	(%rax), %eax	# dest_3(D)->code, D.19110
	cmpw	$61, %ax	#, D.19110
	jne	.L87	#,
	.loc 1 1267 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# dest, tmp65
	movl	8(%rax), %eax	# dest_3(D)->fld[0].rtuint, D.19111
	cmpl	$52, %eax	#, D.19111
	jbe	.L87	#,
	.loc 1 1268 0 is_stmt 1
	movq	-24(%rbp), %rax	# dest, tmp66
	movl	8(%rax), %eax	# dest_3(D)->fld[0].rtuint, D.19111
	movq	-8(%rbp), %rdx	# record_set_insn, tmp67
	movq	%rdx, %rsi	# tmp67,
	movl	%eax, %edi	# D.19112,
	call	record_one_set	#
.L87:
	.loc 1 1269 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	record_set_info, .-record_set_info
	.type	compute_sets, @function
compute_sets:
.LFB15:
	.loc 1 1279 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1282 0
	movq	-24(%rbp), %rax	# f, tmp63
	movq	%rax, -8(%rbp)	# tmp63, insn
	jmp	.L90	#
.L92:
	.loc 1 1283 0
	movq	-8(%rbp), %rax	# insn, tmp64
	movzwl	(%rax), %eax	# insn_1->code, D.19113
	movzwl	%ax, %eax	# D.19113, D.19114
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19115
	cmpb	$105, %al	#, D.19115
	jne	.L91	#,
	.loc 1 1284 0
	movq	-8(%rbp), %rax	# insn, tmp66
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.19116
	movq	-8(%rbp), %rdx	# insn, tmp67
	movl	$record_set_info, %esi	#,
	movq	%rax, %rdi	# D.19116,
	call	note_stores	#
.L91:
	.loc 1 1282 0
	movq	-8(%rbp), %rax	# insn, tmp68
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp69
	movq	%rax, -8(%rbp)	# tmp69, insn
.L90:
	.loc 1 1282 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L92	#,
	.loc 1 1285 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	compute_sets, .-compute_sets
	.local	reg_avail_info
	.comm	reg_avail_info,8,8
	.local	current_bb
	.comm	current_bb,4,4
	.type	want_to_gcse_p, @function
want_to_gcse_p:
.LFB16:
	.loc 1 1310 0
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
	.loc 1 1312 0
	movl	$0, -24(%rbp)	#, num_clobbers
	.loc 1 1315 0
	movq	-40(%rbp), %rax	# x, tmp88
	movzwl	(%rax), %eax	# x_3(D)->code, D.19118
	movzwl	%ax, %eax	# D.19118, D.19119
	subl	$50, %eax	#, tmp89
	cmpl	$13, %eax	#, tmp89
	ja	.L106	#,
	movl	%eax, %eax	# tmp89, tmp90
	movq	.L96(,%rax,8), %rax	#, tmp91
	jmp	*%rax	# tmp91
	.section	.rodata
	.align 8
	.align 4
.L96:
	.quad	.L95
	.quad	.L106
	.quad	.L106
	.quad	.L106
	.quad	.L95
	.quad	.L95
	.quad	.L95
	.quad	.L106
	.quad	.L106
	.quad	.L106
	.quad	.L106
	.quad	.L95
	.quad	.L106
	.quad	.L95
	.text
.L95:
	.loc 1 1323 0
	movl	$0, %eax	#, D.19117
	jmp	.L104	#
.L106:
	.loc 1 1326 0
	nop
	.loc 1 1330 0
	movq	-40(%rbp), %rax	# x, tmp92
	movzbl	2(%rax), %eax	# x_3(D)->mode, D.19120
	movzbl	%al, %edx	# D.19120, D.19121
	movq	-40(%rbp), %rax	# x, tmp93
	movl	%edx, %esi	# D.19121,
	movq	%rax, %rdi	# tmp93,
	call	general_operand	#
	testl	%eax, %eax	# D.19117
	je	.L98	#,
	.loc 1 1331 0
	movl	$1, %eax	#, D.19117
	jmp	.L104	#
.L98:
	.loc 1 1332 0
	movq	-40(%rbp), %rax	# x, tmp94
	movzbl	2(%rax), %eax	# x_3(D)->mode, D.19120
	testb	%al, %al	# D.19120
	jne	.L99	#,
	.loc 1 1333 0
	movl	$0, %eax	#, D.19117
	jmp	.L104	#
.L99:
	.loc 1 1337 0
	movq	test_insn.12084(%rip), %rax	# test_insn, test_insn.119
	testq	%rax, %rax	# test_insn.119
	jne	.L100	#,
	.loc 1 1340 0
	movq	const_int_rtx+512(%rip), %rbx	# const_int_rtx, D.19122
	movl	word_mode(%rip), %eax	# word_mode, word_mode.120
	movl	$106, %esi	#,
	movl	%eax, %edi	# word_mode.120,
	call	gen_rtx_REG	#
	movq	%rbx, %rcx	# D.19122,
	movq	%rax, %rdx	# D.19122,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.19122,
	call	make_insn_raw	#
	movq	%rax, test_insn.12084(%rip)	# test_insn.121, test_insn
	.loc 1 1344 0
	movq	test_insn.12084(%rip), %rdx	# test_insn, test_insn.122
	movq	test_insn.12084(%rip), %rax	# test_insn, test_insn.123
	movq	$0, 16(%rax)	#, test_insn.123_20->fld[1].rtx
	movq	16(%rax), %rax	# test_insn.123_20->fld[1].rtx, D.19122
	movq	%rax, 24(%rdx)	# D.19122, test_insn.122_19->fld[2].rtx
	.loc 1 1345 0
	movl	$1, %esi	#,
	movl	$test_insn.12084, %edi	#,
	call	ggc_add_rtx_root	#
.L100:
	.loc 1 1350 0
	movq	test_insn.12084(%rip), %rax	# test_insn, test_insn.124
	movq	32(%rax), %rax	# test_insn.124_22->fld[3].rtx, D.19122
	movq	8(%rax), %rax	# _23->fld[0].rtx, D.19122
	movq	-40(%rbp), %rdx	# x, tmp95
	movzbl	2(%rdx), %edx	# x_3(D)->mode, D.19120
	movb	%dl, 2(%rax)	# D.19120, _24->mode
	.loc 1 1351 0
	movq	test_insn.12084(%rip), %rax	# test_insn, test_insn.125
	movq	32(%rax), %rax	# test_insn.125_26->fld[3].rtx, D.19122
	movq	-40(%rbp), %rdx	# x, tmp96
	movq	%rdx, 16(%rax)	# tmp96, _27->fld[1].rtx
	.loc 1 1352 0
	movq	test_insn.12084(%rip), %rcx	# test_insn, test_insn.127
	movq	test_insn.12084(%rip), %rax	# test_insn, test_insn.128
	movq	32(%rax), %rax	# test_insn.128_29->fld[3].rtx, D.19122
	.loc 1 1353 0
	leaq	-24(%rbp), %rdx	#, tmp97
	movq	%rcx, %rsi	# test_insn.127,
	movq	%rax, %rdi	# D.19122,
	call	recog	#
	movl	%eax, -20(%rbp)	# tmp98, icode
	cmpl	$0, -20(%rbp)	#, icode
	js	.L101	#,
	.loc 1 1353 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# num_clobbers, num_clobbers.129
	testl	%eax, %eax	# num_clobbers.129
	je	.L102	#,
	.loc 1 1353 0 discriminator 4
	movl	-20(%rbp), %eax	# icode, tmp99
	movl	%eax, %edi	# tmp99,
	call	added_clobbers_hard_reg_p	#
	testl	%eax, %eax	# D.19117
	jne	.L101	#,
.L102:
	.loc 1 1353 0 discriminator 3
	movl	$1, %eax	#, iftmp.126
	jmp	.L103	#
.L101:
	.loc 1 1353 0 discriminator 2
	movl	$0, %eax	#, iftmp.126
.L103:
.L104:
	.loc 1 1354 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	want_to_gcse_p, .-want_to_gcse_p
	.type	oprs_unchanged_p, @function
oprs_unchanged_p:
.LFB17:
	.loc 1 1364 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# insn, insn
	movl	%edx, -52(%rbp)	# avail_p, avail_p
	.loc 1 1369 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L108	#,
	.loc 1 1370 0
	movl	$1, %eax	#, D.19123
	jmp	.L109	#
.L108:
	.loc 1 1372 0
	movq	-40(%rbp), %rax	# x, tmp113
	movzwl	(%rax), %eax	# x_4(D)->code, D.19124
	movzwl	%ax, %eax	# D.19124, tmp114
	movl	%eax, -20(%rbp)	# tmp114, code
	.loc 1 1373 0
	movl	-20(%rbp), %eax	# code, tmp116
	subl	$44, %eax	#, tmp115
	cmpl	$57, %eax	#, tmp115
	ja	.L128	#,
	movl	%eax, %eax	# tmp115, tmp117
	movq	.L112(,%rax,8), %rax	#, tmp118
	jmp	*%rax	# tmp118
	.section	.rodata
	.align 8
	.align 4
.L112:
	.quad	.L111
	.quad	.L111
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L128
	.quad	.L111
	.quad	.L111
	.quad	.L128
	.quad	.L113
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L114
	.quad	.L111
	.quad	.L111
	.quad	.L111
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L128
	.quad	.L115
	.quad	.L115
	.quad	.L115
	.quad	.L115
	.quad	.L115
	.quad	.L115
	.text
.L113:
.LBB14:
	.loc 1 1377 0
	movq	reg_avail_info(%rip), %rcx	# reg_avail_info, reg_avail_info.130
	movq	-40(%rbp), %rax	# x, tmp119
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.19125
	movl	%eax, %edx	# D.19125, D.19126
	movq	%rdx, %rax	# D.19126, tmp120
	addq	%rax, %rax	# tmp120
	addq	%rdx, %rax	# D.19126, tmp120
	salq	$2, %rax	#, tmp121
	addq	%rcx, %rax	# reg_avail_info.130, tmp122
	movq	%rax, -16(%rbp)	# tmp122, info
	.loc 1 1379 0
	movq	-16(%rbp), %rax	# info, tmp123
	movl	(%rax), %edx	# info_12->last_bb, D.19123
	movl	current_bb(%rip), %eax	# current_bb, current_bb.131
	cmpl	%eax, %edx	# current_bb.131, D.19123
	je	.L116	#,
	.loc 1 1380 0
	movl	$1, %eax	#, D.19123
	jmp	.L109	#
.L116:
	.loc 1 1381 0
	cmpl	$0, -52(%rbp)	#, avail_p
	je	.L117	#,
	.loc 1 1382 0
	movq	-16(%rbp), %rax	# info, tmp124
	movl	8(%rax), %edx	# info_12->last_set, D.19123
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.132
	movq	-48(%rbp), %rax	# insn, tmp125
	movl	8(%rax), %eax	# insn_19(D)->fld[0].rtint, D.19123
	cltq
	salq	$2, %rax	#, D.19126
	addq	%rcx, %rax	# uid_cuid.132, D.19127
	movl	(%rax), %eax	# *_23, D.19123
	cmpl	%eax, %edx	# D.19123, D.19123
	setl	%al	#, D.19128
	movzbl	%al, %eax	# D.19128, D.19123
	jmp	.L109	#
.L117:
	.loc 1 1384 0
	movq	-16(%rbp), %rax	# info, tmp126
	movl	4(%rax), %edx	# info_12->first_set, D.19123
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.133
	movq	-48(%rbp), %rax	# insn, tmp127
	movl	8(%rax), %eax	# insn_19(D)->fld[0].rtint, D.19123
	cltq
	salq	$2, %rax	#, D.19126
	addq	%rcx, %rax	# uid_cuid.133, D.19127
	movl	(%rax), %eax	# *_32, D.19123
	cmpl	%eax, %edx	# D.19123, D.19123
	setge	%al	#, D.19128
	movzbl	%al, %eax	# D.19128, D.19123
	jmp	.L109	#
.L114:
.LBE14:
	.loc 1 1388 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.134
	movq	-48(%rbp), %rax	# insn, tmp128
	movl	8(%rax), %eax	# insn_19(D)->fld[0].rtint, D.19123
	cltq
	salq	$2, %rax	#, D.19126
	addq	%rdx, %rax	# uid_cuid.134, D.19127
	movl	(%rax), %esi	# *_40, D.19123
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.135
	movl	current_bb(%rip), %edx	# current_bb, current_bb.136
	movslq	%edx, %rdx	# current_bb.136, tmp129
	addq	$4, %rdx	#, tmp130
	movq	(%rax,%rdx,8), %rax	# basic_block_info.135_42->data.bb, D.19129
	movl	-52(%rbp), %ecx	# avail_p, tmp131
	movq	-40(%rbp), %rdx	# x, tmp132
	movq	%rax, %rdi	# D.19129,
	call	load_killed_in_block_p	#
	testl	%eax, %eax	# D.19123
	je	.L118	#,
	.loc 1 1390 0
	movl	$0, %eax	#, D.19123
	jmp	.L109	#
.L118:
	.loc 1 1392 0
	movq	-40(%rbp), %rax	# x, tmp133
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.19130
	movl	-52(%rbp), %edx	# avail_p, tmp134
	movq	-48(%rbp), %rcx	# insn, tmp135
	movq	%rcx, %rsi	# tmp135,
	movq	%rax, %rdi	# D.19130,
	call	oprs_unchanged_p	#
	jmp	.L109	#
.L115:
	.loc 1 1400 0
	movl	$0, %eax	#, D.19123
	jmp	.L109	#
.L111:
	.loc 1 1412 0
	movl	$1, %eax	#, D.19123
	jmp	.L109	#
.L128:
	.loc 1 1415 0
	nop
	.loc 1 1418 0
	movl	-20(%rbp), %eax	# code, code.137
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19131
	movzbl	%al, %eax	# D.19131, D.19123
	subl	$1, %eax	#, tmp137
	movl	%eax, -28(%rbp)	# tmp137, i
	movl	-20(%rbp), %eax	# code, code.138
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp139
	movq	%rax, -8(%rbp)	# tmp139, fmt
	jmp	.L119	#
.L126:
	.loc 1 1420 0
	movl	-28(%rbp), %eax	# i, tmp140
	movslq	%eax, %rdx	# tmp140, D.19132
	movq	-8(%rbp), %rax	# fmt, tmp141
	addq	%rdx, %rax	# D.19132, D.19133
	movzbl	(%rax), %eax	# *_58, D.19134
	cmpb	$101, %al	#, D.19134
	jne	.L120	#,
	.loc 1 1425 0
	cmpl	$0, -28(%rbp)	#, i
	jne	.L121	#,
	.loc 1 1426 0
	movq	-40(%rbp), %rax	# x, tmp142
	movl	-28(%rbp), %edx	# i, tmp144
	movslq	%edx, %rdx	# tmp144, tmp143
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.19130
	movl	-52(%rbp), %edx	# avail_p, tmp145
	movq	-48(%rbp), %rcx	# insn, tmp146
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# D.19130,
	call	oprs_unchanged_p	#
	jmp	.L109	#
.L121:
	.loc 1 1428 0
	movq	-40(%rbp), %rax	# x, tmp147
	movl	-28(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, tmp148
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.19130
	movl	-52(%rbp), %edx	# avail_p, tmp150
	movq	-48(%rbp), %rcx	# insn, tmp151
	movq	%rcx, %rsi	# tmp151,
	movq	%rax, %rdi	# D.19130,
	call	oprs_unchanged_p	#
	testl	%eax, %eax	# D.19123
	jne	.L122	#,
	.loc 1 1429 0
	movl	$0, %eax	#, D.19123
	jmp	.L109	#
.L120:
	.loc 1 1431 0
	movl	-28(%rbp), %eax	# i, tmp152
	movslq	%eax, %rdx	# tmp152, D.19132
	movq	-8(%rbp), %rax	# fmt, tmp153
	addq	%rdx, %rax	# D.19132, D.19133
	movzbl	(%rax), %eax	# *_66, D.19134
	cmpb	$69, %al	#, D.19134
	jne	.L122	#,
	.loc 1 1432 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L123	#
.L125:
	.loc 1 1433 0
	movq	-40(%rbp), %rax	# x, tmp154
	movl	-28(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, tmp155
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.19135
	movl	-24(%rbp), %edx	# j, tmp158
	movslq	%edx, %rdx	# tmp158, tmp157
	movq	8(%rax,%rdx,8), %rax	# _71->elem, D.19130
	movl	-52(%rbp), %edx	# avail_p, tmp159
	movq	-48(%rbp), %rcx	# insn, tmp160
	movq	%rcx, %rsi	# tmp160,
	movq	%rax, %rdi	# D.19130,
	call	oprs_unchanged_p	#
	testl	%eax, %eax	# D.19123
	jne	.L124	#,
	.loc 1 1434 0
	movl	$0, %eax	#, D.19123
	jmp	.L109	#
.L124:
	.loc 1 1432 0
	addl	$1, -24(%rbp)	#, j
.L123:
	.loc 1 1432 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp161
	movl	-28(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, tmp162
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.19135
	movl	(%rax), %eax	# _69->num_elem, D.19123
	cmpl	-24(%rbp), %eax	# j, D.19123
	jg	.L125	#,
.L122:
	.loc 1 1418 0 is_stmt 1
	subl	$1, -28(%rbp)	#, i
.L119:
	.loc 1 1418 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, i
	jns	.L126	#,
	.loc 1 1437 0 is_stmt 1
	movl	$1, %eax	#, D.19123
.L109:
	.loc 1 1438 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	oprs_unchanged_p, .-oprs_unchanged_p
	.local	gcse_mems_conflict_p
	.comm	gcse_mems_conflict_p,4,4
	.local	gcse_mem_operand
	.comm	gcse_mem_operand,8,8
	.type	mems_conflict_for_gcse_p, @function
mems_conflict_for_gcse_p:
.LFB18:
	.loc 1 1459 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# dest, dest
	movq	%rsi, -16(%rbp)	# setter, setter
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 1460 0
	jmp	.L130	#
.L131:
	.loc 1 1464 0
	movq	-8(%rbp), %rax	# dest, tmp71
	movq	8(%rax), %rax	# dest_1->fld[0].rtx, tmp72
	movq	%rax, -8(%rbp)	# tmp72, dest
.L130:
	.loc 1 1460 0 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp73
	movzwl	(%rax), %eax	# dest_1->code, D.19136
	cmpw	$63, %ax	#, D.19136
	je	.L131	#,
	.loc 1 1461 0
	movq	-8(%rbp), %rax	# dest, tmp74
	movzwl	(%rax), %eax	# dest_1->code, D.19136
	cmpw	$133, %ax	#, D.19136
	je	.L131	#,
	.loc 1 1462 0
	movq	-8(%rbp), %rax	# dest, tmp75
	movzwl	(%rax), %eax	# dest_1->code, D.19136
	cmpw	$132, %ax	#, D.19136
	je	.L131	#,
	.loc 1 1463 0
	movq	-8(%rbp), %rax	# dest, tmp76
	movzwl	(%rax), %eax	# dest_1->code, D.19136
	cmpw	$64, %ax	#, D.19136
	je	.L131	#,
	.loc 1 1469 0
	movq	-8(%rbp), %rax	# dest, tmp77
	movzwl	(%rax), %eax	# dest_1->code, D.19136
	cmpw	$66, %ax	#, D.19136
	je	.L132	#,
	.loc 1 1470 0
	jmp	.L129	#
.L132:
	.loc 1 1475 0
	movq	gcse_mem_operand(%rip), %rax	# gcse_mem_operand, gcse_mem_operand.139
	cmpq	%rax, -8(%rbp)	# gcse_mem_operand.139, dest
	jne	.L134	#,
	.loc 1 1475 0 is_stmt 0 discriminator 1
	movq	pre_ldst_mems(%rip), %rax	# pre_ldst_mems, pre_ldst_mems.140
	testq	%rax, %rax	# pre_ldst_mems.140
	je	.L134	#,
	.loc 1 1477 0 is_stmt 1
	movq	-8(%rbp), %rax	# dest, tmp78
	movq	%rax, %rdi	# tmp78,
	call	find_rtx_in_ldst	#
	testq	%rax, %rax	# D.19137
	jne	.L135	#,
	.loc 1 1478 0
	movl	$1, gcse_mems_conflict_p(%rip)	#, gcse_mems_conflict_p
	.loc 1 1479 0
	jmp	.L129	#
.L135:
	jmp	.L129	#
.L134:
	.loc 1 1482 0
	movq	gcse_mem_operand(%rip), %rdx	# gcse_mem_operand, gcse_mem_operand.141
	movq	-8(%rbp), %rax	# dest, tmp79
	movzbl	2(%rax), %eax	# dest_1->mode, D.19138
	movzbl	%al, %esi	# D.19138, D.19139
	movq	-8(%rbp), %rax	# dest, tmp80
	movl	$rtx_addr_varies_p, %ecx	#,
	movq	%rax, %rdi	# tmp80,
	call	true_dependence	#
	testl	%eax, %eax	# D.19140
	je	.L129	#,
	.loc 1 1484 0
	movl	$1, gcse_mems_conflict_p(%rip)	#, gcse_mems_conflict_p
.L129:
	.loc 1 1485 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	mems_conflict_for_gcse_p, .-mems_conflict_for_gcse_p
	.type	load_killed_in_block_p, @function
load_killed_in_block_p:
.LFB19:
	.loc 1 1501 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# bb, bb
	movl	%esi, -28(%rbp)	# uid_limit, uid_limit
	movq	%rdx, -40(%rbp)	# x, x
	movl	%ecx, -32(%rbp)	# avail_p, avail_p
	.loc 1 1502 0
	movq	modify_mem_list(%rip), %rdx	# modify_mem_list, modify_mem_list.142
	movq	-24(%rbp), %rax	# bb, tmp83
	movl	88(%rax), %eax	# bb_4(D)->index, D.19141
	cltq
	salq	$3, %rax	#, D.19142
	addq	%rdx, %rax	# modify_mem_list.142, D.19143
	movq	(%rax), %rax	# *_8, tmp84
	movq	%rax, -16(%rbp)	# tmp84, list_entry
	.loc 1 1503 0
	jmp	.L137	#
.L144:
.LBB15:
	.loc 1 1507 0
	cmpl	$0, -32(%rbp)	#, avail_p
	je	.L138	#,
	.loc 1 1508 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.143
	movq	-16(%rbp), %rax	# list_entry, tmp85
	movq	8(%rax), %rax	# list_entry_1->fld[0].rtx, D.19144
	movl	8(%rax), %eax	# _12->fld[0].rtint, D.19141
	cltq
	salq	$2, %rax	#, D.19142
	addq	%rdx, %rax	# uid_cuid.143, D.19145
	movl	(%rax), %eax	# *_16, D.19141
	cmpl	-28(%rbp), %eax	# uid_limit, D.19141
	jl	.L139	#,
.L138:
	.loc 1 1509 0
	cmpl	$0, -32(%rbp)	#, avail_p
	jne	.L140	#,
	.loc 1 1510 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.144
	movq	-16(%rbp), %rax	# list_entry, tmp86
	movq	8(%rax), %rax	# list_entry_1->fld[0].rtx, D.19144
	movl	8(%rax), %eax	# _20->fld[0].rtint, D.19141
	cltq
	salq	$2, %rax	#, D.19142
	addq	%rdx, %rax	# uid_cuid.144, D.19145
	movl	(%rax), %eax	# *_24, D.19141
	cmpl	-28(%rbp), %eax	# uid_limit, D.19141
	jle	.L140	#,
.L139:
	.loc 1 1512 0
	movq	-16(%rbp), %rax	# list_entry, tmp87
	movq	16(%rax), %rax	# list_entry_1->fld[1].rtx, tmp88
	movq	%rax, -16(%rbp)	# tmp88, list_entry
	.loc 1 1513 0
	jmp	.L137	#
.L140:
	.loc 1 1516 0
	movq	-16(%rbp), %rax	# list_entry, tmp89
	movq	8(%rax), %rax	# list_entry_1->fld[0].rtx, tmp90
	movq	%rax, -8(%rbp)	# tmp90, setter
	.loc 1 1521 0
	movq	-8(%rbp), %rax	# setter, tmp91
	movzwl	(%rax), %eax	# setter_26->code, D.19146
	cmpw	$34, %ax	#, D.19146
	jne	.L141	#,
	.loc 1 1522 0
	movl	$1, %eax	#, D.19141
	jmp	.L142	#
.L141:
	.loc 1 1529 0
	movq	-40(%rbp), %rax	# x, tmp92
	movq	%rax, gcse_mem_operand(%rip)	# tmp92, gcse_mem_operand
	.loc 1 1530 0
	movl	$0, gcse_mems_conflict_p(%rip)	#, gcse_mems_conflict_p
	.loc 1 1531 0
	movq	-8(%rbp), %rax	# setter, tmp93
	movq	32(%rax), %rax	# setter_26->fld[3].rtx, D.19144
	movl	$0, %edx	#,
	movl	$mems_conflict_for_gcse_p, %esi	#,
	movq	%rax, %rdi	# D.19144,
	call	note_stores	#
	.loc 1 1532 0
	movl	gcse_mems_conflict_p(%rip), %eax	# gcse_mems_conflict_p, gcse_mems_conflict_p.145
	testl	%eax, %eax	# gcse_mems_conflict_p.145
	je	.L143	#,
	.loc 1 1533 0
	movl	$1, %eax	#, D.19141
	jmp	.L142	#
.L143:
	.loc 1 1534 0
	movq	-16(%rbp), %rax	# list_entry, tmp94
	movq	16(%rax), %rax	# list_entry_1->fld[1].rtx, tmp95
	movq	%rax, -16(%rbp)	# tmp95, list_entry
.L137:
.LBE15:
	.loc 1 1503 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, list_entry
	jne	.L144	#,
	.loc 1 1536 0
	movl	$0, %eax	#, D.19141
.L142:
	.loc 1 1537 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	load_killed_in_block_p, .-load_killed_in_block_p
	.type	oprs_anticipatable_p, @function
oprs_anticipatable_p:
.LFB20:
	.loc 1 1545 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# insn, insn
	.loc 1 1546 0
	movq	-16(%rbp), %rcx	# insn, tmp61
	movq	-8(%rbp), %rax	# x, tmp62
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	oprs_unchanged_p	#
	.loc 1 1547 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	oprs_anticipatable_p, .-oprs_anticipatable_p
	.type	oprs_available_p, @function
oprs_available_p:
.LFB21:
	.loc 1 1555 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# insn, insn
	.loc 1 1556 0
	movq	-16(%rbp), %rcx	# insn, tmp61
	movq	-8(%rbp), %rax	# x, tmp62
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	oprs_unchanged_p	#
	.loc 1 1557 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	oprs_available_p, .-oprs_available_p
	.type	hash_expr, @function
hash_expr:
.LFB22:
	.loc 1 1573 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movl	%esi, -28(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# do_not_record_p, do_not_record_p
	movl	%ecx, -32(%rbp)	# hash_table_size, hash_table_size
	.loc 1 1576 0
	movq	-40(%rbp), %rax	# do_not_record_p, tmp62
	movl	$0, (%rax)	#, *do_not_record_p_1(D)
	.loc 1 1578 0
	movq	-40(%rbp), %rdx	# do_not_record_p, tmp63
	movl	-28(%rbp), %ecx	# mode, tmp64
	movq	-24(%rbp), %rax	# x, tmp65
	movl	%ecx, %esi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	hash_expr_1	#
	movl	%eax, -4(%rbp)	# tmp66, hash
	.loc 1 1579 0
	movl	-32(%rbp), %ecx	# hash_table_size, hash_table_size.146
	movl	-4(%rbp), %eax	# hash, tmp67
	movl	$0, %edx	#, tmp68
	divl	%ecx	# hash_table_size.146
	movl	%edx, %eax	# tmp68, D.19149
	.loc 1 1580 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	hash_expr, .-hash_expr
	.type	hash_string_1, @function
hash_string_1:
.LFB23:
	.loc 1 1587 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# ps, ps
	.loc 1 1588 0
	movl	$0, -12(%rbp)	#, hash
	.loc 1 1589 0
	movq	-24(%rbp), %rax	# ps, tmp65
	movq	%rax, -8(%rbp)	# tmp65, p
	.loc 1 1591 0
	cmpq	$0, -8(%rbp)	#, p
	je	.L152	#,
	.loc 1 1592 0
	jmp	.L153	#
.L154:
	.loc 1 1593 0
	movq	-8(%rbp), %rax	# p, p.151
	leaq	1(%rax), %rdx	#, tmp66
	movq	%rdx, -8(%rbp)	# tmp66, p
	movzbl	(%rax), %eax	# *p.151_8, D.19150
	movzbl	%al, %eax	# D.19150, D.19151
	addl	%eax, -12(%rbp)	# D.19151, hash
.L153:
	.loc 1 1592 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp67
	movzbl	(%rax), %eax	# *p_3, D.19150
	testb	%al, %al	# D.19150
	jne	.L154	#,
.L152:
	.loc 1 1595 0
	movl	-12(%rbp), %eax	# hash, D.19151
	.loc 1 1596 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	hash_string_1, .-hash_string_1
	.section	.rodata
.LC7:
	.string	"gcse.c"
	.text
	.type	hash_expr_1, @function
hash_expr_1:
.LFB24:
	.loc 1 1605 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# x, x
	movl	%esi, -76(%rbp)	# mode, mode
	movq	%rdx, -88(%rbp)	# do_not_record_p, do_not_record_p
	.loc 1 1607 0
	movl	$0, -56(%rbp)	#, hash
	.loc 1 1615 0
	cmpq	$0, -72(%rbp)	#, x
	jne	.L157	#,
	.loc 1 1616 0
	movl	-56(%rbp), %eax	# hash, D.19152
	jmp	.L158	#
.L157:
	.loc 1 1619 0
	movq	-72(%rbp), %rax	# x, tmp171
	movzwl	(%rax), %eax	# x_1->code, D.19153
	movzwl	%ax, %eax	# D.19153, tmp172
	movl	%eax, -48(%rbp)	# tmp172, code
	.loc 1 1620 0
	movl	-48(%rbp), %eax	# code, tmp174
	subl	$41, %eax	#, tmp173
	cmpl	$58, %eax	#, tmp173
	ja	.L197	#,
	movl	%eax, %eax	# tmp173, tmp175
	movq	.L161(,%rax,8), %rax	#, tmp176
	jmp	*%rax	# tmp176
	.section	.rodata
	.align 8
	.align 4
.L161:
	.quad	.L160
	.quad	.L197
	.quad	.L162
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L162
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L163
	.quad	.L164
	.quad	.L165
	.quad	.L197
	.quad	.L197
	.quad	.L162
	.quad	.L197
	.quad	.L166
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L167
	.quad	.L168
	.quad	.L169
	.quad	.L162
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L162
	.quad	.L162
	.quad	.L162
	.quad	.L162
	.text
.L166:
	.loc 1 1623 0
	movq	-72(%rbp), %rax	# x, tmp177
	movl	8(%rax), %edx	# x_1->fld[0].rtuint, D.19152
	movl	-56(%rbp), %eax	# hash, tmp178
	addl	%edx, %eax	# D.19152, D.19152
	addl	$7808, %eax	#, tmp179
	movl	%eax, -56(%rbp)	# tmp179, hash
	.loc 1 1624 0
	movl	-56(%rbp), %eax	# hash, D.19152
	jmp	.L158	#
.L163:
	.loc 1 1628 0
	movq	-72(%rbp), %rax	# x, tmp180
	movq	8(%rax), %rax	# x_1->fld[0].rtwint, D.19154
	movl	%eax, %edx	# D.19154, D.19152
	movl	-76(%rbp), %eax	# mode, tmp181
	addl	%eax, %edx	# tmp181, D.19152
	.loc 1 1627 0
	movl	-56(%rbp), %eax	# hash, tmp182
	addl	%edx, %eax	# D.19152, D.19152
	addl	$6912, %eax	#, tmp183
	movl	%eax, -56(%rbp)	# tmp183, hash
	.loc 1 1629 0
	movl	-56(%rbp), %eax	# hash, D.19152
	jmp	.L158	#
.L164:
	.loc 1 1634 0
	movq	-72(%rbp), %rax	# x, tmp184
	movzbl	2(%rax), %eax	# x_1->mode, D.19155
	movzbl	%al, %edx	# D.19155, D.19152
	movl	-48(%rbp), %eax	# code, tmp185
	addl	%edx, %eax	# D.19152, D.19152
	addl	%eax, -56(%rbp)	# D.19152, hash
	.loc 1 1635 0
	movq	-72(%rbp), %rax	# x, tmp186
	movzbl	2(%rax), %eax	# x_1->mode, D.19155
	testb	%al, %al	# D.19155
	je	.L170	#,
	.loc 1 1636 0
	movl	$2, -64(%rbp)	#, i
	jmp	.L171	#
.L172:
	.loc 1 1637 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp187
	movl	-64(%rbp), %edx	# i, tmp189
	movslq	%edx, %rdx	# tmp189, tmp188
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_3].rtwint, D.19154
	addl	%eax, -56(%rbp)	# D.19152, hash
	.loc 1 1636 0 discriminator 2
	addl	$1, -64(%rbp)	#, i
.L171:
	.loc 1 1636 0 is_stmt 0 discriminator 1
	movzbl	rtx_length+55(%rip), %eax	# rtx_length, D.19155
	movzbl	%al, %eax	# D.19155, D.19156
	cmpl	-64(%rbp), %eax	# i, D.19156
	jg	.L172	#,
	jmp	.L173	#
.L170:
	.loc 1 1639 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp190
	movq	16(%rax), %rax	# x_1->fld[1].rtwint, D.19154
	movl	%eax, %edx	# D.19154, D.19152
	.loc 1 1640 0
	movq	-72(%rbp), %rax	# x, tmp191
	movq	24(%rax), %rax	# x_1->fld[2].rtwint, D.19154
	addl	%edx, %eax	# D.19152, D.19152
	.loc 1 1639 0
	addl	%eax, -56(%rbp)	# D.19152, hash
.L173:
	.loc 1 1641 0
	movl	-56(%rbp), %eax	# hash, D.19152
	jmp	.L158	#
.L165:
.LBB16:
	.loc 1 1648 0
	movq	-72(%rbp), %rax	# x, tmp192
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.19157
	movl	(%rax), %eax	# _55->num_elem, tmp193
	movl	%eax, -44(%rbp)	# tmp193, units
	.loc 1 1650 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L174	#
.L175:
	.loc 1 1652 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp194
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.19157
	movl	-64(%rbp), %edx	# i, tmp196
	movslq	%edx, %rdx	# tmp196, tmp195
	movq	8(%rax,%rdx,8), %rax	# _58->elem, tmp197
	movq	%rax, -32(%rbp)	# tmp197, elt
	.loc 1 1653 0 discriminator 2
	movq	-32(%rbp), %rax	# elt, tmp198
	movzbl	2(%rax), %eax	# elt_59->mode, D.19155
	movzbl	%al, %ecx	# D.19155, D.19158
	movq	-88(%rbp), %rdx	# do_not_record_p, tmp199
	movq	-32(%rbp), %rax	# elt, tmp200
	movl	%ecx, %esi	# D.19158,
	movq	%rax, %rdi	# tmp200,
	call	hash_expr_1	#
	addl	%eax, -56(%rbp)	# D.19152, hash
	.loc 1 1650 0 discriminator 2
	addl	$1, -64(%rbp)	#, i
.L174:
	.loc 1 1650 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp201
	cmpl	-44(%rbp), %eax	# units, tmp201
	jl	.L175	#,
	.loc 1 1656 0 is_stmt 1
	movl	-56(%rbp), %eax	# hash, D.19152
	jmp	.L158	#
.L168:
.LBE16:
	.loc 1 1664 0
	movq	-72(%rbp), %rax	# x, tmp202
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.19159
	movl	48(%rax), %eax	# _67->fld[5].rtint, D.19156
	.loc 1 1663 0
	movl	%eax, %edx	# D.19156, D.19152
	movl	-56(%rbp), %eax	# hash, tmp203
	addl	%edx, %eax	# D.19152, D.19152
	addl	$8576, %eax	#, tmp204
	movl	%eax, -56(%rbp)	# tmp204, hash
	.loc 1 1665 0
	movl	-56(%rbp), %eax	# hash, D.19152
	jmp	.L158	#
.L169:
.LBB17:
	.loc 1 1674 0
	movl	$0, -52(%rbp)	#, h
	.loc 1 1675 0
	movq	-72(%rbp), %rax	# x, tmp205
	movq	8(%rax), %rax	# x_1->fld[0].rtstr, tmp206
	movq	%rax, -40(%rbp)	# tmp206, p
	.loc 1 1677 0
	jmp	.L176	#
.L177:
	.loc 1 1678 0
	movl	-52(%rbp), %eax	# h, tmp207
	sall	$7, %eax	#, D.19152
	movl	%eax, %ecx	# D.19152, D.19152
	movq	-40(%rbp), %rax	# p, p.147
	leaq	1(%rax), %rdx	#, tmp208
	movq	%rdx, -40(%rbp)	# tmp208, p
	movzbl	(%rax), %eax	# *p.147_77, D.19155
	movzbl	%al, %eax	# D.19155, D.19152
	addl	%ecx, %eax	# D.19152, D.19152
	addl	%eax, -52(%rbp)	# D.19152, h
.L176:
	.loc 1 1677 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp209
	movzbl	(%rax), %eax	# *p_17, D.19155
	testb	%al, %al	# D.19155
	jne	.L177	#,
	.loc 1 1680 0
	movl	-56(%rbp), %eax	# hash, tmp210
	movl	-52(%rbp), %edx	# h, tmp211
	addl	%edx, %eax	# tmp211, D.19152
	addl	$8704, %eax	#, tmp212
	movl	%eax, -56(%rbp)	# tmp212, hash
	.loc 1 1681 0
	movl	-56(%rbp), %eax	# hash, D.19152
	jmp	.L158	#
.L167:
.LBE17:
	.loc 1 1685 0
	movq	-72(%rbp), %rax	# x, tmp213
	movzbl	3(%rax), %eax	# *x_1, D.19155
	andl	$8, %eax	#, D.19155
	testb	%al, %al	# D.19155
	je	.L178	#,
	.loc 1 1687 0
	movq	-88(%rbp), %rax	# do_not_record_p, tmp214
	movl	$1, (%rax)	#, *do_not_record_p_62(D)
	.loc 1 1688 0
	movl	$0, %eax	#, D.19152
	jmp	.L158	#
.L178:
	.loc 1 1691 0
	addl	$66, -56(%rbp)	#, hash
	.loc 1 1692 0
	movq	-72(%rbp), %rax	# x, tmp215
	movq	16(%rax), %rax	# x_1->fld[1].rtmem, D.19160
	testq	%rax, %rax	# D.19160
	je	.L179	#,
	.loc 1 1692 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp216
	movq	16(%rax), %rax	# x_1->fld[1].rtmem, D.19160
	movq	(%rax), %rax	# _91->alias, D.19154
	jmp	.L180	#
.L179:
	.loc 1 1692 0 discriminator 2
	movl	$0, %eax	#, iftmp.148
.L180:
	.loc 1 1692 0 discriminator 3
	addl	%eax, -56(%rbp)	# iftmp.148, hash
	.loc 1 1693 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# x, tmp217
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp218
	movq	%rax, -72(%rbp)	# tmp218, x
	.loc 1 1694 0 discriminator 3
	jmp	.L157	#
.L162:
	.loc 1 1704 0
	movq	-88(%rbp), %rax	# do_not_record_p, tmp219
	movl	$1, (%rax)	#, *do_not_record_p_62(D)
	.loc 1 1705 0
	movl	$0, %eax	#, D.19152
	jmp	.L158	#
.L160:
	.loc 1 1708 0
	movq	-72(%rbp), %rax	# x, tmp220
	movzbl	3(%rax), %eax	# *x_1, D.19155
	andl	$8, %eax	#, D.19155
	testb	%al, %al	# D.19155
	je	.L181	#,
	.loc 1 1710 0
	movq	-88(%rbp), %rax	# do_not_record_p, tmp221
	movl	$1, (%rax)	#, *do_not_record_p_62(D)
	.loc 1 1711 0
	movl	$0, %eax	#, D.19152
	jmp	.L158	#
.L181:
	.loc 1 1716 0
	movq	-72(%rbp), %rax	# x, tmp222
	movzbl	2(%rax), %eax	# x_1->mode, D.19155
	movzbl	%al, %edx	# D.19155, D.19152
	movl	-48(%rbp), %eax	# code, tmp223
	leal	(%rdx,%rax), %ebx	#, D.19152
	.loc 1 1717 0
	movq	-72(%rbp), %rax	# x, tmp224
	movq	8(%rax), %rax	# x_1->fld[0].rtstr, D.19161
	movq	%rax, %rdi	# D.19161,
	call	hash_string_1	#
	addl	%eax, %ebx	# D.19152, D.19152
	.loc 1 1718 0
	movq	-72(%rbp), %rax	# x, tmp225
	movq	16(%rax), %rax	# x_1->fld[1].rtstr, D.19161
	movq	%rax, %rdi	# D.19161,
	call	hash_string_1	#
	leal	(%rbx,%rax), %edx	#, D.19152
	.loc 1 1719 0
	movq	-72(%rbp), %rax	# x, tmp226
	movl	24(%rax), %eax	# x_1->fld[2].rtint, D.19156
	addl	%edx, %eax	# D.19152, D.19152
	.loc 1 1716 0
	addl	%eax, -56(%rbp)	# D.19152, hash
	.loc 1 1721 0
	movq	-72(%rbp), %rax	# x, tmp227
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.19157
	movl	(%rax), %eax	# _114->num_elem, D.19156
	testl	%eax, %eax	# D.19156
	je	.L182	#,
	.loc 1 1723 0
	movl	$1, -64(%rbp)	#, i
	jmp	.L183	#
.L184:
	.loc 1 1726 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp228
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.19157
	movl	-64(%rbp), %edx	# i, tmp230
	movslq	%edx, %rdx	# tmp230, tmp229
	movq	8(%rax,%rdx,8), %rax	# _119->elem, D.19159
	movzbl	2(%rax), %eax	# _120->mode, D.19155
	.loc 1 1725 0 discriminator 2
	movzbl	%al, %ecx	# D.19155, D.19158
	movq	-72(%rbp), %rax	# x, tmp231
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.19157
	movl	-64(%rbp), %edx	# i, tmp233
	movslq	%edx, %rdx	# tmp233, tmp232
	movq	8(%rax,%rdx,8), %rax	# _123->elem, D.19159
	movq	-88(%rbp), %rdx	# do_not_record_p, tmp234
	movl	%ecx, %esi	# D.19158,
	movq	%rax, %rdi	# D.19159,
	call	hash_expr_1	#
	movl	%eax, %ebx	#, D.19152
	.loc 1 1728 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp235
	movq	40(%rax), %rax	# x_1->fld[4].rtvec, D.19157
	movl	-64(%rbp), %edx	# i, tmp237
	movslq	%edx, %rdx	# tmp237, tmp236
	movq	8(%rax,%rdx,8), %rax	# _126->elem, D.19159
	movq	8(%rax), %rax	# _127->fld[0].rtstr, D.19161
	movq	%rax, %rdi	# D.19161,
	call	hash_string_1	#
	addl	%ebx, %eax	# D.19152, D.19152
	.loc 1 1725 0 discriminator 2
	addl	%eax, -56(%rbp)	# D.19152, hash
	.loc 1 1723 0 discriminator 2
	addl	$1, -64(%rbp)	#, i
.L183:
	.loc 1 1723 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp238
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.19157
	movl	(%rax), %eax	# _117->num_elem, D.19156
	cmpl	-64(%rbp), %eax	# i, D.19156
	jg	.L184	#,
	.loc 1 1732 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp239
	movq	40(%rax), %rax	# x_1->fld[4].rtvec, D.19157
	movq	8(%rax), %rax	# _133->elem, D.19159
	movq	8(%rax), %rax	# _134->fld[0].rtstr, D.19161
	movq	%rax, %rdi	# D.19161,
	call	hash_string_1	#
	addl	%eax, -56(%rbp)	# D.19152, hash
	.loc 1 1733 0
	movq	-72(%rbp), %rax	# x, tmp240
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.19157
	movq	8(%rax), %rax	# _138->elem, tmp241
	movq	%rax, -72(%rbp)	# tmp241, x
	.loc 1 1734 0
	movq	-72(%rbp), %rax	# x, tmp242
	movzbl	2(%rax), %eax	# x_139->mode, D.19155
	movzbl	%al, %eax	# D.19155, tmp243
	movl	%eax, -76(%rbp)	# tmp243, mode
	.loc 1 1735 0
	jmp	.L157	#
.L182:
	.loc 1 1737 0
	movl	-56(%rbp), %eax	# hash, D.19152
	jmp	.L158	#
.L197:
	.loc 1 1741 0
	nop
	.loc 1 1744 0
	movq	-72(%rbp), %rax	# x, tmp244
	movzbl	2(%rax), %eax	# x_1->mode, D.19155
	movzbl	%al, %edx	# D.19155, D.19152
	movl	-48(%rbp), %eax	# code, tmp245
	addl	%edx, %eax	# D.19152, D.19152
	addl	%eax, -56(%rbp)	# D.19152, hash
	.loc 1 1745 0
	movl	-48(%rbp), %eax	# code, code.149
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19155
	movzbl	%al, %eax	# D.19155, D.19156
	subl	$1, %eax	#, tmp247
	movl	%eax, -64(%rbp)	# tmp247, i
	movl	-48(%rbp), %eax	# code, code.150
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp249
	movq	%rax, -24(%rbp)	# tmp249, fmt
	jmp	.L185	#
.L195:
	.loc 1 1747 0
	movl	-64(%rbp), %eax	# i, tmp250
	movslq	%eax, %rdx	# tmp250, D.19162
	movq	-24(%rbp), %rax	# fmt, tmp251
	addq	%rdx, %rax	# D.19162, D.19161
	movzbl	(%rax), %eax	# *_154, D.19163
	cmpb	$101, %al	#, D.19163
	jne	.L186	#,
	.loc 1 1752 0
	cmpl	$0, -64(%rbp)	#, i
	jne	.L187	#,
	.loc 1 1754 0
	movq	-72(%rbp), %rax	# x, tmp252
	movl	-64(%rbp), %edx	# i, tmp254
	movslq	%edx, %rdx	# tmp254, tmp253
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_6].rtx, tmp255
	movq	%rax, -72(%rbp)	# tmp255, x
	.loc 1 1755 0
	jmp	.L157	#
.L187:
	.loc 1 1758 0
	movq	-72(%rbp), %rax	# x, tmp256
	movl	-64(%rbp), %edx	# i, tmp258
	movslq	%edx, %rdx	# tmp258, tmp257
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_6].rtx, D.19159
	movq	-88(%rbp), %rdx	# do_not_record_p, tmp259
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19159,
	call	hash_expr_1	#
	addl	%eax, -56(%rbp)	# D.19152, hash
	.loc 1 1759 0
	movq	-88(%rbp), %rax	# do_not_record_p, tmp260
	movl	(%rax), %eax	# *do_not_record_p_62(D), D.19156
	testl	%eax, %eax	# D.19156
	je	.L188	#,
	.loc 1 1760 0
	movl	$0, %eax	#, D.19152
	jmp	.L158	#
.L186:
	.loc 1 1763 0
	movl	-64(%rbp), %eax	# i, tmp261
	movslq	%eax, %rdx	# tmp261, D.19162
	movq	-24(%rbp), %rax	# fmt, tmp262
	addq	%rdx, %rax	# D.19162, D.19161
	movzbl	(%rax), %eax	# *_163, D.19163
	cmpb	$69, %al	#, D.19163
	jne	.L189	#,
	.loc 1 1764 0
	movl	$0, -60(%rbp)	#, j
	jmp	.L190	#
.L192:
	.loc 1 1766 0
	movq	-72(%rbp), %rax	# x, tmp263
	movl	-64(%rbp), %edx	# i, tmp265
	movslq	%edx, %rdx	# tmp265, tmp264
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_6].rtvec, D.19157
	movl	-60(%rbp), %edx	# j, tmp267
	movslq	%edx, %rdx	# tmp267, tmp266
	movq	8(%rax,%rdx,8), %rax	# _168->elem, D.19159
	movq	-88(%rbp), %rdx	# do_not_record_p, tmp268
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19159,
	call	hash_expr_1	#
	addl	%eax, -56(%rbp)	# D.19152, hash
	.loc 1 1767 0
	movq	-88(%rbp), %rax	# do_not_record_p, tmp269
	movl	(%rax), %eax	# *do_not_record_p_62(D), D.19156
	testl	%eax, %eax	# D.19156
	je	.L191	#,
	.loc 1 1768 0
	movl	$0, %eax	#, D.19152
	jmp	.L158	#
.L191:
	.loc 1 1764 0
	addl	$1, -60(%rbp)	#, j
.L190:
	.loc 1 1764 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp270
	movl	-64(%rbp), %edx	# i, tmp272
	movslq	%edx, %rdx	# tmp272, tmp271
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_6].rtvec, D.19157
	movl	(%rax), %eax	# _166->num_elem, D.19156
	cmpl	-60(%rbp), %eax	# j, D.19156
	jg	.L192	#,
	jmp	.L188	#
.L189:
	.loc 1 1771 0 is_stmt 1
	movl	-64(%rbp), %eax	# i, tmp273
	movslq	%eax, %rdx	# tmp273, D.19162
	movq	-24(%rbp), %rax	# fmt, tmp274
	addq	%rdx, %rax	# D.19162, D.19161
	movzbl	(%rax), %eax	# *_176, D.19163
	cmpb	$115, %al	#, D.19163
	jne	.L193	#,
	.loc 1 1772 0
	movq	-72(%rbp), %rax	# x, tmp275
	movl	-64(%rbp), %edx	# i, tmp277
	movslq	%edx, %rdx	# tmp277, tmp276
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_6].rtstr, D.19161
	movq	%rax, %rdi	# D.19161,
	call	hash_string_1	#
	addl	%eax, -56(%rbp)	# D.19152, hash
	jmp	.L188	#
.L193:
	.loc 1 1773 0
	movl	-64(%rbp), %eax	# i, tmp278
	movslq	%eax, %rdx	# tmp278, D.19162
	movq	-24(%rbp), %rax	# fmt, tmp279
	addq	%rdx, %rax	# D.19162, D.19161
	movzbl	(%rax), %eax	# *_182, D.19163
	cmpb	$105, %al	#, D.19163
	jne	.L194	#,
	.loc 1 1774 0
	movq	-72(%rbp), %rax	# x, tmp280
	movl	-64(%rbp), %edx	# i, tmp282
	movslq	%edx, %rdx	# tmp282, tmp281
	movl	8(%rax,%rdx,8), %eax	# x_1->fld[i_6].rtint, D.19156
	addl	%eax, -56(%rbp)	# D.19152, hash
	jmp	.L188	#
.L194:
	.loc 1 1776 0
	movl	$__FUNCTION__.12223, %edx	#,
	movl	$1776, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L188:
	.loc 1 1745 0
	subl	$1, -64(%rbp)	#, i
.L185:
	.loc 1 1745 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, i
	jns	.L195	#,
	.loc 1 1779 0 is_stmt 1
	movl	-56(%rbp), %eax	# hash, D.19152
.L158:
	.loc 1 1780 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	hash_expr_1, .-hash_expr_1
	.type	hash_set, @function
hash_set:
.LFB25:
	.loc 1 1793 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# regno, regno
	movl	%esi, -24(%rbp)	# hash_table_size, hash_table_size
	.loc 1 1796 0
	movl	-20(%rbp), %eax	# regno, tmp62
	movl	%eax, -4(%rbp)	# tmp62, hash
	.loc 1 1797 0
	movl	-24(%rbp), %ecx	# hash_table_size, hash_table_size.152
	movl	-4(%rbp), %eax	# hash, tmp63
	movl	$0, %edx	#, tmp64
	divl	%ecx	# hash_table_size.152
	movl	%edx, %eax	# tmp64, D.19165
	.loc 1 1798 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	hash_set, .-hash_set
	.type	expr_equiv_p, @function
expr_equiv_p:
.LFB26:
	.loc 1 1806 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# y, y
	.loc 1 1811 0
	movq	-40(%rbp), %rax	# x, tmp162
	cmpq	-48(%rbp), %rax	# y, tmp162
	jne	.L201	#,
	.loc 1 1812 0
	movl	$1, %eax	#, D.19166
	jmp	.L202	#
.L201:
	.loc 1 1814 0
	cmpq	$0, -40(%rbp)	#, x
	je	.L203	#,
	.loc 1 1814 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, y
	jne	.L204	#,
.L203:
	.loc 1 1815 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp163
	cmpq	-48(%rbp), %rax	# y, tmp163
	sete	%al	#, D.19170
	movzbl	%al, %eax	# D.19170, D.19166
	jmp	.L202	#
.L204:
	.loc 1 1817 0
	movq	-40(%rbp), %rax	# x, tmp164
	movzwl	(%rax), %eax	# x_8(D)->code, D.19167
	movzwl	%ax, %eax	# D.19167, tmp165
	movl	%eax, -12(%rbp)	# tmp165, code
	.loc 1 1818 0
	movq	-48(%rbp), %rax	# y, tmp166
	movzwl	(%rax), %eax	# y_9(D)->code, D.19167
	movzwl	%ax, %eax	# D.19167, D.19168
	cmpl	-12(%rbp), %eax	# code, D.19168
	je	.L205	#,
	.loc 1 1819 0
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L205:
	.loc 1 1822 0
	movq	-40(%rbp), %rax	# x, tmp167
	movzbl	2(%rax), %edx	# x_8(D)->mode, D.19169
	movq	-48(%rbp), %rax	# y, tmp168
	movzbl	2(%rax), %eax	# y_9(D)->mode, D.19169
	cmpb	%al, %dl	# D.19169, D.19169
	je	.L206	#,
	.loc 1 1823 0
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L206:
	.loc 1 1825 0
	movl	-12(%rbp), %eax	# code, tmp170
	subl	$41, %eax	#, tmp169
	cmpl	$62, %eax	#, tmp169
	ja	.L255	#,
	movl	%eax, %eax	# tmp169, tmp171
	movq	.L209(,%rax,8), %rax	#, tmp172
	jmp	*%rax	# tmp172
	.section	.rodata
	.align 8
	.align 4
.L209:
	.quad	.L208
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L210
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L211
	.quad	.L255
	.quad	.L212
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L213
	.quad	.L214
	.quad	.L215
	.quad	.L211
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L216
	.quad	.L255
	.quad	.L255
	.quad	.L216
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L216
	.quad	.L216
	.quad	.L216
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L216
	.quad	.L216
	.text
.L211:
	.loc 1 1829 0
	movq	-40(%rbp), %rax	# x, tmp173
	cmpq	-48(%rbp), %rax	# y, tmp173
	sete	%al	#, D.19170
	movzbl	%al, %eax	# D.19170, D.19166
	jmp	.L202	#
.L210:
	.loc 1 1832 0
	movq	-40(%rbp), %rax	# x, tmp174
	movq	8(%rax), %rdx	# x_8(D)->fld[0].rtwint, D.19171
	movq	-48(%rbp), %rax	# y, tmp175
	movq	8(%rax), %rax	# y_9(D)->fld[0].rtwint, D.19171
	cmpq	%rax, %rdx	# D.19171, D.19171
	sete	%al	#, D.19170
	movzbl	%al, %eax	# D.19170, D.19166
	jmp	.L202	#
.L214:
	.loc 1 1835 0
	movq	-40(%rbp), %rax	# x, tmp176
	movq	8(%rax), %rdx	# x_8(D)->fld[0].rtx, D.19172
	movq	-48(%rbp), %rax	# y, tmp177
	movq	8(%rax), %rax	# y_9(D)->fld[0].rtx, D.19172
	cmpq	%rax, %rdx	# D.19172, D.19172
	sete	%al	#, D.19170
	movzbl	%al, %eax	# D.19170, D.19166
	jmp	.L202	#
.L215:
	.loc 1 1838 0
	movq	-40(%rbp), %rax	# x, tmp178
	movq	8(%rax), %rdx	# x_8(D)->fld[0].rtstr, D.19173
	movq	-48(%rbp), %rax	# y, tmp179
	movq	8(%rax), %rax	# y_9(D)->fld[0].rtstr, D.19173
	cmpq	%rax, %rdx	# D.19173, D.19173
	sete	%al	#, D.19170
	movzbl	%al, %eax	# D.19170, D.19166
	jmp	.L202	#
.L212:
	.loc 1 1841 0
	movq	-40(%rbp), %rax	# x, tmp180
	movl	8(%rax), %edx	# x_8(D)->fld[0].rtuint, D.19168
	movq	-48(%rbp), %rax	# y, tmp181
	movl	8(%rax), %eax	# y_9(D)->fld[0].rtuint, D.19168
	cmpl	%eax, %edx	# D.19168, D.19168
	sete	%al	#, D.19170
	movzbl	%al, %eax	# D.19170, D.19166
	jmp	.L202	#
.L213:
	.loc 1 1847 0
	movq	-40(%rbp), %rax	# x, tmp182
	movq	16(%rax), %rax	# x_8(D)->fld[1].rtmem, D.19174
	testq	%rax, %rax	# D.19174
	je	.L217	#,
	.loc 1 1847 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp183
	movq	16(%rax), %rax	# x_8(D)->fld[1].rtmem, D.19174
	movq	(%rax), %rdx	# _38->alias, iftmp.153
	jmp	.L218	#
.L217:
	.loc 1 1847 0 discriminator 2
	movl	$0, %edx	#, iftmp.153
.L218:
	.loc 1 1847 0 discriminator 3
	movq	-48(%rbp), %rax	# y, tmp184
	movq	16(%rax), %rax	# y_9(D)->fld[1].rtmem, D.19174
	testq	%rax, %rax	# D.19174
	je	.L219	#,
	.loc 1 1847 0 discriminator 1
	movq	-48(%rbp), %rax	# y, tmp185
	movq	16(%rax), %rax	# y_9(D)->fld[1].rtmem, D.19174
	movq	(%rax), %rax	# _42->alias, iftmp.154
	jmp	.L220	#
.L219:
	.loc 1 1847 0 discriminator 2
	movl	$0, %eax	#, iftmp.154
.L220:
	.loc 1 1847 0 discriminator 3
	cmpq	%rax, %rdx	# iftmp.154, iftmp.153
	je	.L221	#,
	.loc 1 1848 0 is_stmt 1
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L221:
	.loc 1 1849 0
	jmp	.L222	#
.L216:
	.loc 1 1859 0
	movq	-48(%rbp), %rax	# y, tmp186
	movq	8(%rax), %rdx	# y_9(D)->fld[0].rtx, D.19172
	movq	-40(%rbp), %rax	# x, tmp187
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.19172
	movq	%rdx, %rsi	# D.19172,
	movq	%rax, %rdi	# D.19172,
	call	expr_equiv_p	#
	.loc 1 1861 0
	testl	%eax, %eax	# D.19166
	je	.L223	#,
	.loc 1 1860 0
	movq	-48(%rbp), %rax	# y, tmp188
	movq	16(%rax), %rdx	# y_9(D)->fld[1].rtx, D.19172
	movq	-40(%rbp), %rax	# x, tmp189
	movq	16(%rax), %rax	# x_8(D)->fld[1].rtx, D.19172
	movq	%rdx, %rsi	# D.19172,
	movq	%rax, %rdi	# D.19172,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19166
	jne	.L224	#,
.L223:
	.loc 1 1861 0 discriminator 1
	movq	-48(%rbp), %rax	# y, tmp190
	movq	16(%rax), %rdx	# y_9(D)->fld[1].rtx, D.19172
	movq	-40(%rbp), %rax	# x, tmp191
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.19172
	movq	%rdx, %rsi	# D.19172,
	movq	%rax, %rdi	# D.19172,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19166
	je	.L225	#,
	.loc 1 1862 0
	movq	-48(%rbp), %rax	# y, tmp192
	movq	8(%rax), %rdx	# y_9(D)->fld[0].rtx, D.19172
	movq	-40(%rbp), %rax	# x, tmp193
	movq	16(%rax), %rax	# x_8(D)->fld[1].rtx, D.19172
	movq	%rdx, %rsi	# D.19172,
	movq	%rax, %rdi	# D.19172,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19166
	je	.L225	#,
.L224:
	.loc 1 1861 0
	movl	$1, %eax	#, iftmp.155
	jmp	.L226	#
.L225:
	.loc 1 1861 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.155
.L226:
	.loc 1 1859 0 is_stmt 1
	jmp	.L202	#
.L208:
	.loc 1 1869 0
	movq	-40(%rbp), %rax	# x, tmp194
	movzbl	3(%rax), %eax	# *x_8(D), D.19169
	andl	$8, %eax	#, D.19169
	testb	%al, %al	# D.19169
	jne	.L227	#,
	.loc 1 1869 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# y, tmp195
	movzbl	3(%rax), %eax	# *y_9(D), D.19169
	andl	$8, %eax	#, D.19169
	testb	%al, %al	# D.19169
	je	.L228	#,
.L227:
	.loc 1 1870 0 is_stmt 1
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L228:
	.loc 1 1872 0
	movq	-40(%rbp), %rax	# x, tmp196
	movzbl	2(%rax), %edx	# x_8(D)->mode, D.19169
	movq	-48(%rbp), %rax	# y, tmp197
	movzbl	2(%rax), %eax	# y_9(D)->mode, D.19169
	cmpb	%al, %dl	# D.19169, D.19169
	jne	.L229	#,
	.loc 1 1873 0
	movq	-48(%rbp), %rax	# y, tmp198
	movq	8(%rax), %rdx	# y_9(D)->fld[0].rtstr, D.19173
	movq	-40(%rbp), %rax	# x, tmp199
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtstr, D.19173
	movq	%rdx, %rsi	# D.19173,
	movq	%rax, %rdi	# D.19173,
	call	strcmp	#
	testl	%eax, %eax	# D.19166
	jne	.L229	#,
	.loc 1 1874 0
	movq	-48(%rbp), %rax	# y, tmp200
	movq	16(%rax), %rdx	# y_9(D)->fld[1].rtstr, D.19173
	movq	-40(%rbp), %rax	# x, tmp201
	movq	16(%rax), %rax	# x_8(D)->fld[1].rtstr, D.19173
	movq	%rdx, %rsi	# D.19173,
	movq	%rax, %rdi	# D.19173,
	call	strcmp	#
	testl	%eax, %eax	# D.19166
	jne	.L229	#,
	.loc 1 1876 0
	movq	-40(%rbp), %rax	# x, tmp202
	movl	24(%rax), %edx	# x_8(D)->fld[2].rtint, D.19166
	movq	-48(%rbp), %rax	# y, tmp203
	movl	24(%rax), %eax	# y_9(D)->fld[2].rtint, D.19166
	cmpl	%eax, %edx	# D.19166, D.19166
	jne	.L229	#,
	.loc 1 1877 0
	movq	-40(%rbp), %rax	# x, tmp204
	movq	32(%rax), %rax	# x_8(D)->fld[3].rtvec, D.19175
	movl	(%rax), %edx	# _75->num_elem, D.19166
	movq	-48(%rbp), %rax	# y, tmp205
	movq	32(%rax), %rax	# y_9(D)->fld[3].rtvec, D.19175
	movl	(%rax), %eax	# _77->num_elem, D.19166
	cmpl	%eax, %edx	# D.19166, D.19166
	je	.L230	#,
.L229:
	.loc 1 1878 0
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L230:
	.loc 1 1880 0
	movq	-40(%rbp), %rax	# x, tmp206
	movq	32(%rax), %rax	# x_8(D)->fld[3].rtvec, D.19175
	movl	(%rax), %eax	# _79->num_elem, D.19166
	testl	%eax, %eax	# D.19166
	je	.L231	#,
	.loc 1 1882 0
	movq	-40(%rbp), %rax	# x, tmp207
	movq	32(%rax), %rax	# x_8(D)->fld[3].rtvec, D.19175
	movl	(%rax), %eax	# _81->num_elem, D.19166
	subl	$1, %eax	#, tmp208
	movl	%eax, -20(%rbp)	# tmp208, i
	jmp	.L232	#
.L235:
	.loc 1 1884 0
	movq	-48(%rbp), %rax	# y, tmp209
	movq	32(%rax), %rax	# y_9(D)->fld[3].rtvec, D.19175
	.loc 1 1883 0
	movl	-20(%rbp), %edx	# i, tmp211
	movslq	%edx, %rdx	# tmp211, tmp210
	movq	8(%rax,%rdx,8), %rdx	# _84->elem, D.19172
	movq	-40(%rbp), %rax	# x, tmp212
	movq	32(%rax), %rax	# x_8(D)->fld[3].rtvec, D.19175
	movl	-20(%rbp), %ecx	# i, tmp214
	movslq	%ecx, %rcx	# tmp214, tmp213
	movq	8(%rax,%rcx,8), %rax	# _86->elem, D.19172
	movq	%rdx, %rsi	# D.19172,
	movq	%rax, %rdi	# D.19172,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19166
	je	.L233	#,
	.loc 1 1886 0
	movq	-48(%rbp), %rax	# y, tmp215
	movq	40(%rax), %rax	# y_9(D)->fld[4].rtvec, D.19175
	movl	-20(%rbp), %edx	# i, tmp217
	movslq	%edx, %rdx	# tmp217, tmp216
	movq	8(%rax,%rdx,8), %rax	# _89->elem, D.19172
	.loc 1 1885 0
	movq	8(%rax), %rdx	# _90->fld[0].rtstr, D.19173
	movq	-40(%rbp), %rax	# x, tmp218
	movq	40(%rax), %rax	# x_8(D)->fld[4].rtvec, D.19175
	movl	-20(%rbp), %ecx	# i, tmp220
	movslq	%ecx, %rcx	# tmp220, tmp219
	movq	8(%rax,%rcx,8), %rax	# _92->elem, D.19172
	movq	8(%rax), %rax	# _93->fld[0].rtstr, D.19173
	movq	%rdx, %rsi	# D.19173,
	movq	%rax, %rdi	# D.19173,
	call	strcmp	#
	testl	%eax, %eax	# D.19166
	je	.L234	#,
.L233:
	.loc 1 1887 0
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L234:
	.loc 1 1882 0
	subl	$1, -20(%rbp)	#, i
.L232:
	.loc 1 1882 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L235	#,
.L231:
	.loc 1 1890 0 is_stmt 1
	movl	$1, %eax	#, D.19166
	jmp	.L202	#
.L255:
	.loc 1 1893 0
	nop
.L222:
	.loc 1 1899 0
	movl	-12(%rbp), %eax	# code, code.156
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp222
	movq	%rax, -8(%rbp)	# tmp222, fmt
	.loc 1 1900 0
	movl	-12(%rbp), %eax	# code, code.157
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19169
	movzbl	%al, %eax	# D.19169, D.19166
	subl	$1, %eax	#, tmp224
	movl	%eax, -20(%rbp)	# tmp224, i
	jmp	.L236	#
.L254:
	.loc 1 1902 0
	movl	-20(%rbp), %eax	# i, tmp225
	movslq	%eax, %rdx	# tmp225, D.19176
	movq	-8(%rbp), %rax	# fmt, tmp226
	addq	%rdx, %rax	# D.19176, D.19173
	movzbl	(%rax), %eax	# *_108, D.19177
	movsbl	%al, %eax	# D.19177, D.19166
	cmpl	$101, %eax	#, D.19166
	je	.L238	#,
	cmpl	$101, %eax	#, D.19166
	jg	.L239	#,
	cmpl	$48, %eax	#, D.19166
	je	.L256	#,
	cmpl	$69, %eax	#, D.19166
	je	.L241	#,
	jmp	.L237	#
.L239:
	cmpl	$115, %eax	#, D.19166
	je	.L242	#,
	cmpl	$119, %eax	#, D.19166
	je	.L243	#,
	cmpl	$105, %eax	#, D.19166
	je	.L244	#,
	jmp	.L237	#
.L238:
	.loc 1 1905 0
	movq	-48(%rbp), %rax	# y, tmp227
	movl	-20(%rbp), %edx	# i, tmp229
	movslq	%edx, %rdx	# tmp229, tmp228
	movq	8(%rax,%rdx,8), %rdx	# y_9(D)->fld[i_2].rtx, D.19172
	movq	-40(%rbp), %rax	# x, tmp230
	movl	-20(%rbp), %ecx	# i, tmp232
	movslq	%ecx, %rcx	# tmp232, tmp231
	movq	8(%rax,%rcx,8), %rax	# x_8(D)->fld[i_2].rtx, D.19172
	movq	%rdx, %rsi	# D.19172,
	movq	%rax, %rdi	# D.19172,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19166
	jne	.L245	#,
	.loc 1 1906 0
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L245:
	.loc 1 1907 0
	jmp	.L246	#
.L241:
	.loc 1 1910 0
	movq	-40(%rbp), %rax	# x, tmp233
	movl	-20(%rbp), %edx	# i, tmp235
	movslq	%edx, %rdx	# tmp235, tmp234
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_2].rtvec, D.19175
	movl	(%rax), %ecx	# _115->num_elem, D.19166
	movq	-48(%rbp), %rax	# y, tmp236
	movl	-20(%rbp), %edx	# i, tmp238
	movslq	%edx, %rdx	# tmp238, tmp237
	movq	8(%rax,%rdx,8), %rax	# y_9(D)->fld[i_2].rtvec, D.19175
	movl	(%rax), %eax	# _117->num_elem, D.19166
	cmpl	%eax, %ecx	# D.19166, D.19166
	je	.L247	#,
	.loc 1 1911 0
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L247:
	.loc 1 1912 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L248	#
.L250:
	.loc 1 1913 0
	movq	-48(%rbp), %rax	# y, tmp239
	movl	-20(%rbp), %edx	# i, tmp241
	movslq	%edx, %rdx	# tmp241, tmp240
	movq	8(%rax,%rdx,8), %rax	# y_9(D)->fld[i_2].rtvec, D.19175
	movl	-16(%rbp), %edx	# j, tmp243
	movslq	%edx, %rdx	# tmp243, tmp242
	movq	8(%rax,%rdx,8), %rdx	# _123->elem, D.19172
	movq	-40(%rbp), %rax	# x, tmp244
	movl	-20(%rbp), %ecx	# i, tmp246
	movslq	%ecx, %rcx	# tmp246, tmp245
	movq	8(%rax,%rcx,8), %rax	# x_8(D)->fld[i_2].rtvec, D.19175
	movl	-16(%rbp), %ecx	# j, tmp248
	movslq	%ecx, %rcx	# tmp248, tmp247
	movq	8(%rax,%rcx,8), %rax	# _125->elem, D.19172
	movq	%rdx, %rsi	# D.19172,
	movq	%rax, %rdi	# D.19172,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19166
	jne	.L249	#,
	.loc 1 1914 0
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L249:
	.loc 1 1912 0
	addl	$1, -16(%rbp)	#, j
.L248:
	.loc 1 1912 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp249
	movl	-20(%rbp), %edx	# i, tmp251
	movslq	%edx, %rdx	# tmp251, tmp250
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_2].rtvec, D.19175
	movl	(%rax), %eax	# _121->num_elem, D.19166
	cmpl	-16(%rbp), %eax	# j, D.19166
	jg	.L250	#,
	.loc 1 1915 0 is_stmt 1
	jmp	.L246	#
.L242:
	.loc 1 1918 0
	movq	-48(%rbp), %rax	# y, tmp252
	movl	-20(%rbp), %edx	# i, tmp254
	movslq	%edx, %rdx	# tmp254, tmp253
	movq	8(%rax,%rdx,8), %rdx	# y_9(D)->fld[i_2].rtstr, D.19173
	movq	-40(%rbp), %rax	# x, tmp255
	movl	-20(%rbp), %ecx	# i, tmp257
	movslq	%ecx, %rcx	# tmp257, tmp256
	movq	8(%rax,%rcx,8), %rax	# x_8(D)->fld[i_2].rtstr, D.19173
	movq	%rdx, %rsi	# D.19173,
	movq	%rax, %rdi	# D.19173,
	call	strcmp	#
	testl	%eax, %eax	# D.19166
	je	.L251	#,
	.loc 1 1919 0
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L251:
	.loc 1 1920 0
	jmp	.L246	#
.L244:
	.loc 1 1923 0
	movq	-40(%rbp), %rax	# x, tmp258
	movl	-20(%rbp), %edx	# i, tmp260
	movslq	%edx, %rdx	# tmp260, tmp259
	movl	8(%rax,%rdx,8), %ecx	# x_8(D)->fld[i_2].rtint, D.19166
	movq	-48(%rbp), %rax	# y, tmp261
	movl	-20(%rbp), %edx	# i, tmp263
	movslq	%edx, %rdx	# tmp263, tmp262
	movl	8(%rax,%rdx,8), %eax	# y_9(D)->fld[i_2].rtint, D.19166
	cmpl	%eax, %ecx	# D.19166, D.19166
	je	.L252	#,
	.loc 1 1924 0
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L252:
	.loc 1 1925 0
	jmp	.L246	#
.L243:
	.loc 1 1928 0
	movq	-40(%rbp), %rax	# x, tmp264
	movl	-20(%rbp), %edx	# i, tmp266
	movslq	%edx, %rdx	# tmp266, tmp265
	movq	8(%rax,%rdx,8), %rcx	# x_8(D)->fld[i_2].rtwint, D.19171
	movq	-48(%rbp), %rax	# y, tmp267
	movl	-20(%rbp), %edx	# i, tmp269
	movslq	%edx, %rdx	# tmp269, tmp268
	movq	8(%rax,%rdx,8), %rax	# y_9(D)->fld[i_2].rtwint, D.19171
	cmpq	%rax, %rcx	# D.19171, D.19171
	je	.L253	#,
	.loc 1 1929 0
	movl	$0, %eax	#, D.19166
	jmp	.L202	#
.L253:
	.loc 1 1930 0
	jmp	.L246	#
.L237:
	.loc 1 1936 0
	movl	$__FUNCTION__.12271, %edx	#,
	movl	$1936, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L256:
	.loc 1 1933 0
	nop
.L246:
	.loc 1 1900 0
	subl	$1, -20(%rbp)	#, i
.L236:
	.loc 1 1900 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L254	#,
	.loc 1 1940 0 is_stmt 1
	movl	$1, %eax	#, D.19166
.L202:
	.loc 1 1941 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	expr_equiv_p, .-expr_equiv_p
	.type	insert_expr_in_table, @function
insert_expr_in_table:
.LFB27:
	.loc 1 1959 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# x, x
	movl	%esi, -76(%rbp)	# mode, mode
	movq	%rdx, -88(%rbp)	# insn, insn
	movl	%ecx, -80(%rbp)	# antic_p, antic_p
	movl	%r8d, -92(%rbp)	# avail_p, avail_p
	.loc 1 1962 0
	movq	$0, -32(%rbp)	#, last_expr
	.loc 1 1964 0
	movq	$0, -8(%rbp)	#, last_occr
	.loc 1 1966 0
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.158
	movl	%eax, %ecx	# expr_hash_table_size.158, expr_hash_table_size.159
	leaq	-52(%rbp), %rdx	#, tmp111
	movl	-76(%rbp), %esi	# mode, tmp112
	movq	-72(%rbp), %rax	# x, tmp113
	movq	%rax, %rdi	# tmp113,
	call	hash_expr	#
	movl	%eax, -44(%rbp)	# tmp114, hash
	.loc 1 1971 0
	movl	-52(%rbp), %eax	# do_not_record_p, do_not_record_p.160
	testl	%eax, %eax	# do_not_record_p.160
	jne	.L257	#,
	.loc 1 1974 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.161
	movl	-44(%rbp), %edx	# hash, D.19179
	salq	$3, %rdx	#, D.19179
	addq	%rdx, %rax	# D.19179, D.19180
	movq	(%rax), %rax	# *_22, tmp115
	movq	%rax, -40(%rbp)	# tmp115, cur_expr
	.loc 1 1975 0
	movl	$0, -48(%rbp)	#, found
	.loc 1 1977 0
	jmp	.L260	#
.L262:
	.loc 1 1981 0
	movq	-40(%rbp), %rax	# cur_expr, tmp116
	movq	%rax, -32(%rbp)	# tmp116, last_expr
	.loc 1 1982 0
	movq	-40(%rbp), %rax	# cur_expr, tmp117
	movq	16(%rax), %rax	# cur_expr_3->next_same_hash, tmp118
	movq	%rax, -40(%rbp)	# tmp118, cur_expr
.L260:
	.loc 1 1977 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, cur_expr
	je	.L261	#,
	.loc 1 1977 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# cur_expr, tmp119
	movq	(%rax), %rax	# cur_expr_3->expr, D.19181
	movq	-72(%rbp), %rdx	# x, tmp120
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# D.19181,
	call	expr_equiv_p	#
	movl	%eax, -48(%rbp)	# tmp121, found
	cmpl	$0, -48(%rbp)	#, found
	je	.L262	#,
.L261:
	.loc 1 1985 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, found
	jne	.L263	#,
	.loc 1 1987 0
	movl	$48, %edi	#,
	call	gcse_alloc	#
	movq	%rax, -40(%rbp)	# tmp122, cur_expr
	.loc 1 1988 0
	movl	bytes_used(%rip), %eax	# bytes_used, bytes_used.162
	addl	$48, %eax	#, D.19182
	movl	%eax, bytes_used(%rip)	# bytes_used.164, bytes_used
	.loc 1 1989 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.165
	movl	-44(%rbp), %edx	# hash, D.19179
	salq	$3, %rdx	#, D.19179
	addq	%rdx, %rax	# D.19179, D.19180
	movq	(%rax), %rax	# *_37, D.19183
	testq	%rax, %rax	# D.19183
	jne	.L264	#,
	.loc 1 1991 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.166
	movl	-44(%rbp), %edx	# hash, D.19179
	salq	$3, %rdx	#, D.19179
	addq	%rax, %rdx	# expr_hash_table.166, D.19180
	movq	-40(%rbp), %rax	# cur_expr, tmp123
	movq	%rax, (%rdx)	# tmp123, *_42
	jmp	.L265	#
.L264:
	.loc 1 1994 0
	movq	-32(%rbp), %rax	# last_expr, tmp124
	movq	-40(%rbp), %rdx	# cur_expr, tmp125
	movq	%rdx, 16(%rax)	# tmp125, last_expr_5->next_same_hash
.L265:
	.loc 1 1997 0
	movq	-40(%rbp), %rax	# cur_expr, tmp126
	movq	-72(%rbp), %rdx	# x, tmp127
	movq	%rdx, (%rax)	# tmp127, cur_expr_29->expr
	.loc 1 1998 0
	movl	n_exprs(%rip), %eax	# n_exprs, n_exprs.167
	leal	1(%rax), %edx	#, n_exprs.169
	movl	%edx, n_exprs(%rip)	# n_exprs.169, n_exprs
	movq	-40(%rbp), %rdx	# cur_expr, tmp128
	movl	%eax, 8(%rdx)	# n_exprs.168, cur_expr_29->bitmap_index
	.loc 1 1999 0
	movq	-40(%rbp), %rax	# cur_expr, tmp129
	movq	$0, 16(%rax)	#, cur_expr_29->next_same_hash
	.loc 1 2000 0
	movq	-40(%rbp), %rax	# cur_expr, tmp130
	movq	$0, 24(%rax)	#, cur_expr_29->antic_occr
	.loc 1 2001 0
	movq	-40(%rbp), %rax	# cur_expr, tmp131
	movq	$0, 32(%rax)	#, cur_expr_29->avail_occr
.L263:
	.loc 1 2005 0
	cmpl	$0, -80(%rbp)	#, antic_p
	je	.L266	#,
	.loc 1 2007 0
	movq	-40(%rbp), %rax	# cur_expr, tmp132
	movq	24(%rax), %rax	# cur_expr_4->antic_occr, tmp133
	movq	%rax, -24(%rbp)	# tmp133, antic_occr
	.loc 1 2010 0
	jmp	.L267	#
.L269:
	.loc 1 2014 0
	movq	-24(%rbp), %rax	# antic_occr, tmp134
	movq	%rax, -8(%rbp)	# tmp134, last_occr
	.loc 1 2015 0
	movq	-24(%rbp), %rax	# antic_occr, tmp135
	movq	(%rax), %rax	# antic_occr_6->next, tmp136
	movq	%rax, -24(%rbp)	# tmp136, antic_occr
.L267:
	.loc 1 2010 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, antic_occr
	je	.L268	#,
	.loc 1 2010 0 is_stmt 0 discriminator 2
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.170
	movq	-24(%rbp), %rdx	# antic_occr, tmp137
	movq	8(%rdx), %rdx	# antic_occr_6->insn, D.19181
	movl	8(%rdx), %edx	# _49->fld[0].rtint, D.19184
	movslq	%edx, %rdx	# D.19184, tmp138
	addq	$4, %rdx	#, tmp139
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.170_48->data.bb, D.19185
	movl	88(%rax), %ecx	# _51->index, D.19184
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.171
	movq	-88(%rbp), %rdx	# insn, tmp140
	movl	8(%rdx), %edx	# insn_54(D)->fld[0].rtint, D.19184
	movslq	%edx, %rdx	# D.19184, tmp141
	addq	$4, %rdx	#, tmp142
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.171_53->data.bb, D.19185
	movl	88(%rax), %eax	# _56->index, D.19184
	cmpl	%eax, %ecx	# D.19184, D.19184
	jne	.L269	#,
.L268:
	.loc 1 2018 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, antic_occr
	jne	.L266	#,
	.loc 1 2026 0
	movl	$24, %edi	#,
	call	gcse_alloc	#
	movq	%rax, -24(%rbp)	# tmp143, antic_occr
	.loc 1 2027 0
	movl	bytes_used(%rip), %eax	# bytes_used, bytes_used.172
	addl	$24, %eax	#, D.19182
	movl	%eax, bytes_used(%rip)	# bytes_used.174, bytes_used
	.loc 1 2029 0
	movq	-40(%rbp), %rax	# cur_expr, tmp144
	movq	24(%rax), %rax	# cur_expr_4->antic_occr, D.19186
	testq	%rax, %rax	# D.19186
	jne	.L270	#,
	.loc 1 2030 0
	movq	-40(%rbp), %rax	# cur_expr, tmp145
	movq	-24(%rbp), %rdx	# antic_occr, tmp146
	movq	%rdx, 24(%rax)	# tmp146, cur_expr_4->antic_occr
	jmp	.L271	#
.L270:
	.loc 1 2032 0
	movq	-8(%rbp), %rax	# last_occr, tmp147
	movq	-24(%rbp), %rdx	# antic_occr, tmp148
	movq	%rdx, (%rax)	# tmp148, last_occr_8->next
.L271:
	.loc 1 2034 0
	movq	-24(%rbp), %rax	# antic_occr, tmp149
	movq	-88(%rbp), %rdx	# insn, tmp150
	movq	%rdx, 8(%rax)	# tmp150, antic_occr_60->insn
	.loc 1 2035 0
	movq	-24(%rbp), %rax	# antic_occr, tmp151
	movq	$0, (%rax)	#, antic_occr_60->next
.L266:
	.loc 1 2039 0
	cmpl	$0, -92(%rbp)	#, avail_p
	je	.L257	#,
	.loc 1 2041 0
	movq	-40(%rbp), %rax	# cur_expr, tmp152
	movq	32(%rax), %rax	# cur_expr_4->avail_occr, tmp153
	movq	%rax, -16(%rbp)	# tmp153, avail_occr
	.loc 1 2044 0
	jmp	.L273	#
.L275:
	.loc 1 2048 0
	movq	-16(%rbp), %rax	# avail_occr, tmp154
	movq	%rax, -8(%rbp)	# tmp154, last_occr
	.loc 1 2049 0
	movq	-16(%rbp), %rax	# avail_occr, tmp155
	movq	(%rax), %rax	# avail_occr_7->next, tmp156
	movq	%rax, -16(%rbp)	# tmp156, avail_occr
.L273:
	.loc 1 2044 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, avail_occr
	je	.L274	#,
	.loc 1 2044 0 is_stmt 0 discriminator 2
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.175
	movq	-16(%rbp), %rdx	# avail_occr, tmp157
	movq	8(%rdx), %rdx	# avail_occr_7->insn, D.19181
	movl	8(%rdx), %edx	# _69->fld[0].rtint, D.19184
	movslq	%edx, %rdx	# D.19184, tmp158
	addq	$4, %rdx	#, tmp159
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.175_68->data.bb, D.19185
	movl	88(%rax), %ecx	# _71->index, D.19184
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.176
	movq	-88(%rbp), %rdx	# insn, tmp160
	movl	8(%rdx), %edx	# insn_54(D)->fld[0].rtint, D.19184
	movslq	%edx, %rdx	# D.19184, tmp161
	addq	$4, %rdx	#, tmp162
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.176_73->data.bb, D.19185
	movl	88(%rax), %eax	# _75->index, D.19184
	cmpl	%eax, %ecx	# D.19184, D.19184
	jne	.L275	#,
.L274:
	.loc 1 2052 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, avail_occr
	je	.L276	#,
	.loc 1 2057 0
	movq	-16(%rbp), %rax	# avail_occr, tmp163
	movq	-88(%rbp), %rdx	# insn, tmp164
	movq	%rdx, 8(%rax)	# tmp164, avail_occr_7->insn
	jmp	.L257	#
.L276:
	.loc 1 2061 0
	movl	$24, %edi	#,
	call	gcse_alloc	#
	movq	%rax, -16(%rbp)	# tmp165, avail_occr
	.loc 1 2062 0
	movl	bytes_used(%rip), %eax	# bytes_used, bytes_used.177
	addl	$24, %eax	#, D.19182
	movl	%eax, bytes_used(%rip)	# bytes_used.179, bytes_used
	.loc 1 2065 0
	movq	-40(%rbp), %rax	# cur_expr, tmp166
	movq	32(%rax), %rax	# cur_expr_4->avail_occr, D.19186
	testq	%rax, %rax	# D.19186
	jne	.L277	#,
	.loc 1 2066 0
	movq	-40(%rbp), %rax	# cur_expr, tmp167
	movq	-16(%rbp), %rdx	# avail_occr, tmp168
	movq	%rdx, 32(%rax)	# tmp168, cur_expr_4->avail_occr
	jmp	.L278	#
.L277:
	.loc 1 2068 0
	movq	-8(%rbp), %rax	# last_occr, tmp169
	movq	-16(%rbp), %rdx	# avail_occr, tmp170
	movq	%rdx, (%rax)	# tmp170, last_occr_10->next
.L278:
	.loc 1 2070 0
	movq	-16(%rbp), %rax	# avail_occr, tmp171
	movq	-88(%rbp), %rdx	# insn, tmp172
	movq	%rdx, 8(%rax)	# tmp172, avail_occr_79->insn
	.loc 1 2071 0
	movq	-16(%rbp), %rax	# avail_occr, tmp173
	movq	$0, (%rax)	#, avail_occr_79->next
.L257:
	.loc 1 2074 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	insert_expr_in_table, .-insert_expr_in_table
	.type	insert_set_in_table, @function
insert_set_in_table:
.LFB28:
	.loc 1 2085 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# insn, insn
	.loc 1 2088 0
	movq	$0, -24(%rbp)	#, last_expr
	.loc 1 2089 0
	movq	$0, -8(%rbp)	#, last_occr
	.loc 1 2091 0
	movq	-56(%rbp), %rax	# x, tmp103
	movzwl	(%rax), %eax	# x_10(D)->code, D.19187
	cmpw	$47, %ax	#, D.19187
	jne	.L280	#,
	.loc 1 2092 0
	movq	-56(%rbp), %rax	# x, tmp104
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.19188
	movzwl	(%rax), %eax	# _12->code, D.19187
	cmpw	$61, %ax	#, D.19187
	je	.L281	#,
.L280:
	.loc 1 2093 0
	movl	$__FUNCTION__.12309, %edx	#,
	movl	$2093, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L281:
	.loc 1 2095 0
	movl	set_hash_table_size(%rip), %eax	# set_hash_table_size, set_hash_table_size.180
	movl	%eax, %edx	# set_hash_table_size.180, set_hash_table_size.181
	movq	-56(%rbp), %rax	# x, tmp105
	movq	8(%rax), %rax	# x_10(D)->fld[0].rtx, D.19188
	movl	8(%rax), %eax	# _16->fld[0].rtuint, D.19189
	movl	%edx, %esi	# set_hash_table_size.181,
	movl	%eax, %edi	# D.19190,
	call	hash_set	#
	movl	%eax, -36(%rbp)	# tmp106, hash
	.loc 1 2097 0
	movq	set_hash_table(%rip), %rax	# set_hash_table, set_hash_table.182
	movl	-36(%rbp), %edx	# hash, D.19191
	salq	$3, %rdx	#, D.19191
	addq	%rdx, %rax	# D.19191, D.19192
	movq	(%rax), %rax	# *_23, tmp107
	movq	%rax, -32(%rbp)	# tmp107, cur_expr
	.loc 1 2098 0
	movl	$0, -40(%rbp)	#, found
	.loc 1 2100 0
	jmp	.L282	#
.L284:
	.loc 1 2104 0
	movq	-32(%rbp), %rax	# cur_expr, tmp108
	movq	%rax, -24(%rbp)	# tmp108, last_expr
	.loc 1 2105 0
	movq	-32(%rbp), %rax	# cur_expr, tmp109
	movq	16(%rax), %rax	# cur_expr_3->next_same_hash, tmp110
	movq	%rax, -32(%rbp)	# tmp110, cur_expr
.L282:
	.loc 1 2100 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, cur_expr
	je	.L283	#,
	.loc 1 2100 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# cur_expr, tmp111
	movq	(%rax), %rax	# cur_expr_3->expr, D.19188
	movq	-56(%rbp), %rdx	# x, tmp112
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# D.19188,
	call	expr_equiv_p	#
	movl	%eax, -40(%rbp)	# tmp113, found
	cmpl	$0, -40(%rbp)	#, found
	je	.L284	#,
.L283:
	.loc 1 2108 0 is_stmt 1
	cmpl	$0, -40(%rbp)	#, found
	jne	.L285	#,
	.loc 1 2110 0
	movl	$48, %edi	#,
	call	gcse_alloc	#
	movq	%rax, -32(%rbp)	# tmp114, cur_expr
	.loc 1 2111 0
	movl	bytes_used(%rip), %eax	# bytes_used, bytes_used.183
	addl	$48, %eax	#, D.19193
	movl	%eax, bytes_used(%rip)	# bytes_used.185, bytes_used
	.loc 1 2112 0
	movq	set_hash_table(%rip), %rax	# set_hash_table, set_hash_table.186
	movl	-36(%rbp), %edx	# hash, D.19191
	salq	$3, %rdx	#, D.19191
	addq	%rdx, %rax	# D.19191, D.19192
	movq	(%rax), %rax	# *_38, D.19194
	testq	%rax, %rax	# D.19194
	jne	.L286	#,
	.loc 1 2114 0
	movq	set_hash_table(%rip), %rax	# set_hash_table, set_hash_table.187
	movl	-36(%rbp), %edx	# hash, D.19191
	salq	$3, %rdx	#, D.19191
	addq	%rax, %rdx	# set_hash_table.187, D.19192
	movq	-32(%rbp), %rax	# cur_expr, tmp115
	movq	%rax, (%rdx)	# tmp115, *_43
	jmp	.L287	#
.L286:
	.loc 1 2117 0
	movq	-24(%rbp), %rax	# last_expr, tmp116
	movq	-32(%rbp), %rdx	# cur_expr, tmp117
	movq	%rdx, 16(%rax)	# tmp117, last_expr_5->next_same_hash
.L287:
	.loc 1 2122 0
	movq	-56(%rbp), %rax	# x, tmp118
	movq	%rax, %rdi	# tmp118,
	call	copy_rtx	#
	movq	-32(%rbp), %rdx	# cur_expr, tmp119
	movq	%rax, (%rdx)	# D.19188, cur_expr_30->expr
	.loc 1 2123 0
	movl	n_sets(%rip), %eax	# n_sets, n_sets.188
	leal	1(%rax), %edx	#, n_sets.190
	movl	%edx, n_sets(%rip)	# n_sets.190, n_sets
	movq	-32(%rbp), %rdx	# cur_expr, tmp120
	movl	%eax, 8(%rdx)	# n_sets.189, cur_expr_30->bitmap_index
	.loc 1 2124 0
	movq	-32(%rbp), %rax	# cur_expr, tmp121
	movq	$0, 16(%rax)	#, cur_expr_30->next_same_hash
	.loc 1 2125 0
	movq	-32(%rbp), %rax	# cur_expr, tmp122
	movq	$0, 24(%rax)	#, cur_expr_30->antic_occr
	.loc 1 2126 0
	movq	-32(%rbp), %rax	# cur_expr, tmp123
	movq	$0, 32(%rax)	#, cur_expr_30->avail_occr
.L285:
	.loc 1 2130 0
	movq	-32(%rbp), %rax	# cur_expr, tmp124
	movq	32(%rax), %rax	# cur_expr_4->avail_occr, tmp125
	movq	%rax, -16(%rbp)	# tmp125, cur_occr
	.loc 1 2133 0
	jmp	.L288	#
.L290:
	.loc 1 2137 0
	movq	-16(%rbp), %rax	# cur_occr, tmp126
	movq	%rax, -8(%rbp)	# tmp126, last_occr
	.loc 1 2138 0
	movq	-16(%rbp), %rax	# cur_occr, tmp127
	movq	(%rax), %rax	# cur_occr_6->next, tmp128
	movq	%rax, -16(%rbp)	# tmp128, cur_occr
.L288:
	.loc 1 2133 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, cur_occr
	je	.L289	#,
	.loc 1 2133 0 is_stmt 0 discriminator 2
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.191
	movq	-16(%rbp), %rdx	# cur_occr, tmp129
	movq	8(%rdx), %rdx	# cur_occr_6->insn, D.19188
	movl	8(%rdx), %edx	# _50->fld[0].rtint, D.19190
	movslq	%edx, %rdx	# D.19190, tmp130
	addq	$4, %rdx	#, tmp131
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.191_49->data.bb, D.19195
	movl	88(%rax), %ecx	# _52->index, D.19190
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.192
	movq	-64(%rbp), %rdx	# insn, tmp132
	movl	8(%rdx), %edx	# insn_55(D)->fld[0].rtint, D.19190
	movslq	%edx, %rdx	# D.19190, tmp133
	addq	$4, %rdx	#, tmp134
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.192_54->data.bb, D.19195
	movl	88(%rax), %eax	# _57->index, D.19190
	cmpl	%eax, %ecx	# D.19190, D.19190
	jne	.L290	#,
.L289:
	.loc 1 2141 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, cur_occr
	je	.L291	#,
	.loc 1 2145 0
	movq	-16(%rbp), %rax	# cur_occr, tmp135
	movq	-64(%rbp), %rdx	# insn, tmp136
	movq	%rdx, 8(%rax)	# tmp136, cur_occr_6->insn
	jmp	.L279	#
.L291:
	.loc 1 2149 0
	movl	$24, %edi	#,
	call	gcse_alloc	#
	movq	%rax, -16(%rbp)	# tmp137, cur_occr
	.loc 1 2150 0
	movl	bytes_used(%rip), %eax	# bytes_used, bytes_used.193
	addl	$24, %eax	#, D.19193
	movl	%eax, bytes_used(%rip)	# bytes_used.195, bytes_used
	.loc 1 2153 0
	movq	-32(%rbp), %rax	# cur_expr, tmp138
	movq	32(%rax), %rax	# cur_expr_4->avail_occr, D.19196
	testq	%rax, %rax	# D.19196
	jne	.L293	#,
	.loc 1 2154 0
	movq	-32(%rbp), %rax	# cur_expr, tmp139
	movq	-16(%rbp), %rdx	# cur_occr, tmp140
	movq	%rdx, 32(%rax)	# tmp140, cur_expr_4->avail_occr
	jmp	.L294	#
.L293:
	.loc 1 2156 0
	movq	-8(%rbp), %rax	# last_occr, tmp141
	movq	-16(%rbp), %rdx	# cur_occr, tmp142
	movq	%rdx, (%rax)	# tmp142, last_occr_7->next
.L294:
	.loc 1 2158 0
	movq	-16(%rbp), %rax	# cur_occr, tmp143
	movq	-64(%rbp), %rdx	# insn, tmp144
	movq	%rdx, 8(%rax)	# tmp144, cur_occr_61->insn
	.loc 1 2159 0
	movq	-16(%rbp), %rax	# cur_occr, tmp145
	movq	$0, (%rax)	#, cur_occr_61->next
.L279:
	.loc 1 2161 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	insert_set_in_table, .-insert_set_in_table
	.type	hash_scan_set, @function
hash_scan_set:
.LFB29:
	.loc 1 2171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# pat, pat
	movq	%rsi, -64(%rbp)	# insn, insn
	movl	%edx, -68(%rbp)	# set_p, set_p
	.loc 1 2172 0
	movq	-56(%rbp), %rax	# pat, tmp123
	movq	16(%rax), %rax	# pat_5(D)->fld[1].rtx, tmp124
	movq	%rax, -32(%rbp)	# tmp124, src
	.loc 1 2173 0
	movq	-56(%rbp), %rax	# pat, tmp125
	movq	8(%rax), %rax	# pat_5(D)->fld[0].rtx, tmp126
	movq	%rax, -24(%rbp)	# tmp126, dest
	.loc 1 2176 0
	movq	-32(%rbp), %rax	# src, tmp127
	movzwl	(%rax), %eax	# src_6->code, D.19197
	cmpw	$50, %ax	#, D.19197
	jne	.L296	#,
	.loc 1 2177 0
	movq	-64(%rbp), %rdx	# insn, tmp128
	movq	-32(%rbp), %rax	# src, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	hash_scan_call	#
	jmp	.L295	#
.L296:
	.loc 1 2179 0
	movq	-24(%rbp), %rax	# dest, tmp130
	movzwl	(%rax), %eax	# dest_7->code, D.19197
	cmpw	$61, %ax	#, D.19197
	jne	.L295	#,
.LBB18:
	.loc 1 2181 0
	movq	-24(%rbp), %rax	# dest, tmp131
	movl	8(%rax), %eax	# dest_7->fld[0].rtuint, tmp132
	movl	%eax, -44(%rbp)	# tmp132, regno
	.loc 1 2186 0
	cmpl	$0, -68(%rbp)	#, set_p
	je	.L298	#,
	.loc 1 2186 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# insn, tmp133
	movq	%rax, %rdi	# tmp133,
	call	find_reg_equal_equiv_note	#
	movq	%rax, -16(%rbp)	# tmp134, note
	cmpq	$0, -16(%rbp)	#, note
	je	.L298	#,
	.loc 1 2187 0 is_stmt 1
	movq	-16(%rbp), %rax	# note, tmp135
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.19198
	movzwl	(%rax), %eax	# _14->code, D.19197
	cmpw	$67, %ax	#, D.19197
	je	.L299	#,
	.loc 1 2187 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# note, tmp136
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.19198
	movzwl	(%rax), %eax	# _16->code, D.19197
	cmpw	$68, %ax	#, D.19197
	je	.L299	#,
	movq	-16(%rbp), %rax	# note, tmp137
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.19198
	movzwl	(%rax), %eax	# _18->code, D.19197
	cmpw	$54, %ax	#, D.19197
	je	.L299	#,
	movq	-16(%rbp), %rax	# note, tmp138
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.19198
	movzwl	(%rax), %eax	# _20->code, D.19197
	cmpw	$55, %ax	#, D.19197
	je	.L299	#,
	movq	-16(%rbp), %rax	# note, tmp139
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.19198
	movzwl	(%rax), %eax	# _22->code, D.19197
	cmpw	$58, %ax	#, D.19197
	je	.L299	#,
	movq	-16(%rbp), %rax	# note, tmp140
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.19198
	movzwl	(%rax), %eax	# _24->code, D.19197
	cmpw	$134, %ax	#, D.19197
	je	.L299	#,
	movq	-16(%rbp), %rax	# note, tmp141
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.19198
	movzwl	(%rax), %eax	# _26->code, D.19197
	cmpw	$56, %ax	#, D.19197
	je	.L299	#,
	movq	-16(%rbp), %rax	# note, tmp142
	movq	8(%rax), %rax	# note_13->fld[0].rtx, D.19198
	movzwl	(%rax), %eax	# _28->code, D.19197
	cmpw	$140, %ax	#, D.19197
	jne	.L298	#,
.L299:
	.loc 1 2188 0 is_stmt 1
	movq	-16(%rbp), %rax	# note, tmp143
	movq	8(%rax), %rax	# note_13->fld[0].rtx, tmp144
	movq	%rax, -32(%rbp)	# tmp144, src
	movq	-32(%rbp), %rdx	# src, tmp145
	movq	-24(%rbp), %rax	# dest, tmp146
	movq	%rdx, %rcx	# tmp145,
	movq	%rax, %rdx	# tmp146,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -56(%rbp)	# tmp147, pat
.L298:
	.loc 1 2191 0
	cmpl	$0, -68(%rbp)	#, set_p
	jne	.L300	#,
	.loc 1 2192 0
	cmpl	$52, -44(%rbp)	#, regno
	jbe	.L300	#,
	.loc 1 2194 0
	movq	-24(%rbp), %rax	# dest, tmp148
	movzbl	2(%rax), %eax	# dest_7->mode, D.19199
	movzbl	%al, %eax	# D.19199, D.19200
	movl	%eax, %eax	# D.19200, tmp149
	movzbl	can_copy_p(%rax), %eax	# can_copy_p, D.19201
	testb	%al, %al	# D.19201
	je	.L300	#,
	.loc 1 2198 0
	movq	-64(%rbp), %rax	# insn, tmp150
	movq	%rax, %rdi	# tmp150,
	call	can_throw_internal	#
	xorl	$1, %eax	#, D.19202
	testb	%al, %al	# D.19202
	je	.L300	#,
	.loc 1 2200 0
	movq	-32(%rbp), %rax	# src, tmp151
	movq	%rax, %rdi	# tmp151,
	call	want_to_gcse_p	#
	testl	%eax, %eax	# D.19203
	je	.L300	#,
	.loc 1 2202 0
	movq	-56(%rbp), %rax	# pat, tmp152
	movq	%rax, %rdi	# tmp152,
	call	set_noop_p	#
	testl	%eax, %eax	# D.19203
	jne	.L300	#,
	.loc 1 2208 0
	movq	-64(%rbp), %rax	# insn, tmp153
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp153,
	call	find_reg_note	#
	movq	%rax, -16(%rbp)	# tmp154, note
	cmpq	$0, -16(%rbp)	#, note
	je	.L301	#,
	.loc 1 2209 0
	movq	-16(%rbp), %rax	# note, tmp155
	movq	8(%rax), %rax	# note_39->fld[0].rtx, D.19198
	movzwl	(%rax), %eax	# _40->code, D.19197
	cmpw	$66, %ax	#, D.19197
	je	.L300	#,
.L301:
.LBB19:
	.loc 1 2214 0
	movq	-64(%rbp), %rdx	# insn, tmp156
	movq	-32(%rbp), %rax	# src, tmp157
	movq	%rdx, %rsi	# tmp156,
	movq	%rax, %rdi	# tmp157,
	call	oprs_anticipatable_p	#
	testl	%eax, %eax	# D.19203
	je	.L302	#,
	.loc 1 2214 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# insn, tmp158
	movzwl	(%rax), %eax	# insn_9(D)->code, D.19197
	movzwl	%ax, %eax	# D.19197, D.19203
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19201
	cmpb	$105, %al	#, D.19201
	jne	.L302	#,
	.loc 1 2214 0 discriminator 3
	movq	-64(%rbp), %rax	# insn, tmp160
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.19198
	movzwl	(%rax), %eax	# _46->code, D.19197
	cmpw	$47, %ax	#, D.19197
	jne	.L303	#,
	.loc 1 2214 0 discriminator 5
	movq	-64(%rbp), %rax	# insn, tmp161
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.19198
	testq	%rax, %rax	# D.19198
	jne	.L304	#,
	jmp	.L302	#
.L303:
	.loc 1 2214 0 discriminator 6
	movq	-64(%rbp), %rax	# insn, tmp162
	movq	32(%rax), %rdx	# insn_9(D)->fld[3].rtx, D.19198
	movq	-64(%rbp), %rax	# insn, tmp163
	movq	%rdx, %rsi	# D.19198,
	movq	%rax, %rdi	# tmp163,
	call	single_set_2	#
	testq	%rax, %rax	# D.19198
	je	.L302	#,
.L304:
	.loc 1 2214 0 discriminator 7
	movl	$1, %eax	#, iftmp.196
	jmp	.L305	#
.L302:
	.loc 1 2214 0 discriminator 2
	movl	$0, %eax	#, iftmp.196
.L305:
	.loc 1 2214 0 discriminator 8
	movl	%eax, -40(%rbp)	# iftmp.196, antic_p
	.loc 1 2219 0 is_stmt 1 discriminator 8
	movq	-64(%rbp), %rdx	# insn, tmp164
	movq	-32(%rbp), %rax	# src, tmp165
	movq	%rdx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp165,
	call	oprs_available_p	#
	.loc 1 2220 0 discriminator 8
	testl	%eax, %eax	# D.19203
	je	.L306	#,
	.loc 1 2220 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# insn, tmp166
	movzwl	(%rax), %eax	# insn_9(D)->code, D.19197
	cmpw	$33, %ax	#, D.19197
	je	.L306	#,
	.loc 1 2220 0 discriminator 3
	movl	$1, %eax	#, iftmp.197
	jmp	.L307	#
.L306:
	.loc 1 2220 0 discriminator 2
	movl	$0, %eax	#, iftmp.197
.L307:
	.loc 1 2219 0 is_stmt 1
	movl	%eax, -36(%rbp)	# iftmp.197, avail_p
	.loc 1 2222 0
	movq	-24(%rbp), %rax	# dest, tmp167
	movzbl	2(%rax), %eax	# dest_7->mode, D.19199
	movzbl	%al, %esi	# D.19199, D.19204
	movl	-36(%rbp), %edi	# avail_p, tmp168
	movl	-40(%rbp), %ecx	# antic_p, tmp169
	movq	-64(%rbp), %rdx	# insn, tmp170
	movq	-32(%rbp), %rax	# src, tmp171
	movl	%edi, %r8d	# tmp168,
	movq	%rax, %rdi	# tmp171,
	call	insert_expr_in_table	#
.LBE19:
	.loc 1 2210 0
	jmp	.L295	#
.L300:
	.loc 1 2226 0
	cmpl	$0, -68(%rbp)	#, set_p
	je	.L295	#,
	.loc 1 2227 0
	cmpl	$52, -44(%rbp)	#, regno
	jbe	.L295	#,
	.loc 1 2228 0
	movq	-32(%rbp), %rax	# src, tmp172
	movzwl	(%rax), %eax	# src_2->code, D.19197
	cmpw	$61, %ax	#, D.19197
	jne	.L308	#,
	.loc 1 2229 0
	movq	-32(%rbp), %rax	# src, tmp173
	movl	8(%rax), %eax	# src_2->fld[0].rtuint, D.19200
	cmpl	$52, %eax	#, D.19200
	jbe	.L308	#,
	.loc 1 2230 0
	movq	-24(%rbp), %rax	# dest, tmp174
	movzbl	2(%rax), %eax	# dest_7->mode, D.19199
	movzbl	%al, %eax	# D.19199, D.19200
	movl	%eax, %eax	# D.19200, tmp175
	movzbl	can_copy_p(%rax), %eax	# can_copy_p, D.19201
	testb	%al, %al	# D.19201
	je	.L308	#,
	.loc 1 2231 0
	movq	-32(%rbp), %rax	# src, tmp176
	movl	8(%rax), %eax	# src_2->fld[0].rtuint, D.19200
	cmpl	-44(%rbp), %eax	# regno, D.19200
	jne	.L309	#,
.L308:
	.loc 1 2232 0
	movq	-32(%rbp), %rax	# src, tmp177
	movzwl	(%rax), %eax	# src_2->code, D.19197
	cmpw	$67, %ax	#, D.19197
	je	.L309	#,
	.loc 1 2232 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# src, tmp178
	movzwl	(%rax), %eax	# src_2->code, D.19197
	cmpw	$68, %ax	#, D.19197
	je	.L309	#,
	movq	-32(%rbp), %rax	# src, tmp179
	movzwl	(%rax), %eax	# src_2->code, D.19197
	cmpw	$54, %ax	#, D.19197
	je	.L309	#,
	movq	-32(%rbp), %rax	# src, tmp180
	movzwl	(%rax), %eax	# src_2->code, D.19197
	cmpw	$55, %ax	#, D.19197
	je	.L309	#,
	movq	-32(%rbp), %rax	# src, tmp181
	movzwl	(%rax), %eax	# src_2->code, D.19197
	cmpw	$58, %ax	#, D.19197
	je	.L309	#,
	movq	-32(%rbp), %rax	# src, tmp182
	movzwl	(%rax), %eax	# src_2->code, D.19197
	cmpw	$134, %ax	#, D.19197
	je	.L309	#,
	movq	-32(%rbp), %rax	# src, tmp183
	movzwl	(%rax), %eax	# src_2->code, D.19197
	cmpw	$56, %ax	#, D.19197
	je	.L309	#,
	movq	-32(%rbp), %rax	# src, tmp184
	movzwl	(%rax), %eax	# src_2->code, D.19197
	cmpw	$140, %ax	#, D.19197
	jne	.L295	#,
.L309:
	.loc 1 2236 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.198
	movq	basic_block_for_insn(%rip), %rdx	# basic_block_for_insn, basic_block_for_insn.199
	movq	-64(%rbp), %rcx	# insn, tmp185
	movl	8(%rcx), %ecx	# insn_9(D)->fld[0].rtint, D.19203
	movslq	%ecx, %rcx	# D.19203, tmp186
	addq	$4, %rcx	#, tmp187
	movq	(%rdx,%rcx,8), %rdx	# basic_block_for_insn.199_76->data.bb, D.19205
	movl	88(%rdx), %edx	# _78->index, D.19203
	movslq	%edx, %rdx	# D.19203, tmp188
	addq	$4, %rdx	#, tmp189
	movq	(%rax,%rdx,8), %rax	# basic_block_info.198_75->data.bb, D.19205
	movq	8(%rax), %rax	# _80->end, D.19198
	cmpq	-64(%rbp), %rax	# insn, D.19198
	je	.L310	#,
	.loc 1 2237 0
	movq	-64(%rbp), %rax	# insn, tmp190
	movq	%rax, %rdi	# tmp190,
	call	next_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp191, tmp
	cmpq	$0, -8(%rbp)	#, tmp
	je	.L295	#,
	.loc 1 2238 0
	movq	-8(%rbp), %rdx	# tmp, tmp192
	movq	-56(%rbp), %rax	# pat, tmp193
	movq	%rdx, %rsi	# tmp192,
	movq	%rax, %rdi	# tmp193,
	call	oprs_available_p	#
	testl	%eax, %eax	# D.19203
	je	.L295	#,
.L310:
	.loc 1 2239 0
	movq	-64(%rbp), %rdx	# insn, tmp194
	movq	-56(%rbp), %rax	# pat, tmp195
	movq	%rdx, %rsi	# tmp194,
	movq	%rax, %rdi	# tmp195,
	call	insert_set_in_table	#
.L295:
.LBE18:
	.loc 1 2241 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	hash_scan_set, .-hash_scan_set
	.type	hash_scan_clobber, @function
hash_scan_clobber:
.LFB30:
	.loc 1 2246 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# insn, insn
	.loc 1 2248 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	hash_scan_clobber, .-hash_scan_clobber
	.type	hash_scan_call, @function
hash_scan_call:
.LFB31:
	.loc 1 2253 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# insn, insn
	.loc 1 2255 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	hash_scan_call, .-hash_scan_call
	.type	hash_scan_insn, @function
hash_scan_insn:
.LFB32:
	.loc 1 2275 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movl	%esi, -44(%rbp)	# set_p, set_p
	movl	%edx, -48(%rbp)	# in_libcall_block, in_libcall_block
	.loc 1 2276 0
	movq	-40(%rbp), %rax	# insn, tmp69
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, tmp70
	movq	%rax, -16(%rbp)	# tmp70, pat
	.loc 1 2279 0
	cmpl	$0, -48(%rbp)	#, in_libcall_block
	je	.L314	#,
	.loc 1 2280 0
	jmp	.L313	#
.L314:
	.loc 1 2285 0
	movq	-16(%rbp), %rax	# pat, tmp71
	movzwl	(%rax), %eax	# pat_3->code, D.19206
	cmpw	$47, %ax	#, D.19206
	jne	.L316	#,
	.loc 1 2286 0
	movl	-44(%rbp), %edx	# set_p, tmp72
	movq	-40(%rbp), %rcx	# insn, tmp73
	movq	-16(%rbp), %rax	# pat, tmp74
	movq	%rcx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	hash_scan_set	#
	jmp	.L313	#
.L316:
	.loc 1 2287 0
	movq	-16(%rbp), %rax	# pat, tmp75
	movzwl	(%rax), %eax	# pat_3->code, D.19206
	cmpw	$39, %ax	#, D.19206
	jne	.L317	#,
	.loc 1 2288 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L318	#
.L322:
.LBB20:
	.loc 1 2290 0
	movq	-16(%rbp), %rax	# pat, tmp76
	movq	8(%rax), %rax	# pat_3->fld[0].rtvec, D.19207
	movl	-20(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, tmp77
	movq	8(%rax,%rdx,8), %rax	# _11->elem, tmp79
	movq	%rax, -8(%rbp)	# tmp79, x
	.loc 1 2292 0
	movq	-8(%rbp), %rax	# x, tmp80
	movzwl	(%rax), %eax	# x_12->code, D.19206
	cmpw	$47, %ax	#, D.19206
	jne	.L319	#,
	.loc 1 2293 0
	movl	-44(%rbp), %edx	# set_p, tmp81
	movq	-40(%rbp), %rcx	# insn, tmp82
	movq	-8(%rbp), %rax	# x, tmp83
	movq	%rcx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	hash_scan_set	#
	jmp	.L320	#
.L319:
	.loc 1 2294 0
	movq	-8(%rbp), %rax	# x, tmp84
	movzwl	(%rax), %eax	# x_12->code, D.19206
	cmpw	$49, %ax	#, D.19206
	jne	.L321	#,
	.loc 1 2295 0
	movq	-40(%rbp), %rdx	# insn, tmp85
	movq	-8(%rbp), %rax	# x, tmp86
	movq	%rdx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	hash_scan_clobber	#
	jmp	.L320	#
.L321:
	.loc 1 2296 0
	movq	-8(%rbp), %rax	# x, tmp87
	movzwl	(%rax), %eax	# x_12->code, D.19206
	cmpw	$50, %ax	#, D.19206
	jne	.L320	#,
	.loc 1 2297 0
	movq	-40(%rbp), %rdx	# insn, tmp88
	movq	-8(%rbp), %rax	# x, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	hash_scan_call	#
.L320:
.LBE20:
	.loc 1 2288 0
	addl	$1, -20(%rbp)	#, i
.L318:
	.loc 1 2288 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# pat, tmp90
	movq	8(%rax), %rax	# pat_3->fld[0].rtvec, D.19207
	movl	(%rax), %eax	# _9->num_elem, D.19208
	cmpl	-20(%rbp), %eax	# i, D.19208
	jg	.L322	#,
	jmp	.L313	#
.L317:
	.loc 1 2300 0 is_stmt 1
	movq	-16(%rbp), %rax	# pat, tmp91
	movzwl	(%rax), %eax	# pat_3->code, D.19206
	cmpw	$49, %ax	#, D.19206
	jne	.L323	#,
	.loc 1 2301 0
	movq	-40(%rbp), %rdx	# insn, tmp92
	movq	-16(%rbp), %rax	# pat, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	hash_scan_clobber	#
	jmp	.L313	#
.L323:
	.loc 1 2302 0
	movq	-16(%rbp), %rax	# pat, tmp94
	movzwl	(%rax), %eax	# pat_3->code, D.19206
	cmpw	$50, %ax	#, D.19206
	jne	.L313	#,
	.loc 1 2303 0
	movq	-40(%rbp), %rdx	# insn, tmp95
	movq	-16(%rbp), %rax	# pat, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	hash_scan_call	#
.L313:
	.loc 1 2304 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	hash_scan_insn, .-hash_scan_insn
	.section	.rodata
	.align 8
.LC8:
	.string	"%s hash table (%d buckets, %d entries)\n"
.LC9:
	.string	"Index %d (hash value %d)\n  "
	.text
	.type	dump_hash_table, @function
dump_hash_table:
.LFB33:
	.loc 1 2312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# file, file
	movq	%rsi, -48(%rbp)	# name, name
	movq	%rdx, -56(%rbp)	# table, table
	movl	%ecx, -60(%rbp)	# table_size, table_size
	movl	%r8d, -64(%rbp)	# total_size, total_size
	.loc 1 2320 0
	movl	-64(%rbp), %eax	# total_size, tmp87
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.19209,
	call	xcalloc	#
	movq	%rax, -16(%rbp)	# tmp88, flat_table
	.loc 1 2321 0
	movl	-64(%rbp), %eax	# total_size, tmp89
	cltq
	salq	$2, %rax	#, D.19209
	movq	%rax, %rdi	# D.19209,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp90, hash_val
	.loc 1 2323 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L325	#
.L328:
	.loc 1 2324 0
	movl	-28(%rbp), %eax	# i, tmp91
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19209
	movq	-56(%rbp), %rax	# table, tmp92
	addq	%rdx, %rax	# D.19209, D.19210
	movq	(%rax), %rax	# *_15, tmp93
	movq	%rax, -24(%rbp)	# tmp93, expr
	jmp	.L326	#
.L327:
	.loc 1 2326 0 discriminator 2
	movq	-24(%rbp), %rax	# expr, tmp94
	movl	8(%rax), %eax	# expr_3->bitmap_index, D.19211
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19209
	movq	-16(%rbp), %rax	# flat_table, tmp95
	addq	%rax, %rdx	# tmp95, D.19210
	movq	-24(%rbp), %rax	# expr, tmp96
	movq	%rax, (%rdx)	# tmp96, *_20
	.loc 1 2327 0 discriminator 2
	movq	-24(%rbp), %rax	# expr, tmp97
	movl	8(%rax), %eax	# expr_3->bitmap_index, D.19211
	cltq
	leaq	0(,%rax,4), %rdx	#, D.19209
	movq	-8(%rbp), %rax	# hash_val, tmp98
	addq	%rax, %rdx	# tmp98, D.19212
	movl	-28(%rbp), %eax	# i, i.200
	movl	%eax, (%rdx)	# i.200, *_24
	.loc 1 2324 0 discriminator 2
	movq	-24(%rbp), %rax	# expr, tmp99
	movq	16(%rax), %rax	# expr_3->next_same_hash, tmp100
	movq	%rax, -24(%rbp)	# tmp100, expr
.L326:
	.loc 1 2324 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, expr
	jne	.L327	#,
	.loc 1 2323 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L325:
	.loc 1 2323 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp101
	cmpl	-60(%rbp), %eax	# table_size, tmp101
	jl	.L328	#,
	.loc 1 2330 0 is_stmt 1
	movl	-64(%rbp), %esi	# total_size, tmp102
	movl	-60(%rbp), %ecx	# table_size, tmp103
	movq	-48(%rbp), %rdx	# name, tmp104
	movq	-40(%rbp), %rax	# file, tmp105
	movl	%esi, %r8d	# tmp102,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2333 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L329	#
.L331:
	.loc 1 2334 0
	movl	-28(%rbp), %eax	# i, tmp106
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19209
	movq	-16(%rbp), %rax	# flat_table, tmp107
	addq	%rdx, %rax	# D.19209, D.19210
	movq	(%rax), %rax	# *_33, D.19213
	testq	%rax, %rax	# D.19213
	je	.L330	#,
	.loc 1 2336 0
	movl	-28(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19209
	movq	-16(%rbp), %rax	# flat_table, tmp109
	addq	%rdx, %rax	# D.19209, D.19210
	movq	(%rax), %rax	# *_37, tmp110
	movq	%rax, -24(%rbp)	# tmp110, expr
	.loc 1 2338 0
	movl	-28(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,4), %rdx	#, D.19209
	movq	-8(%rbp), %rax	# hash_val, tmp112
	addq	%rdx, %rax	# D.19209, D.19212
	.loc 1 2337 0
	movl	(%rax), %ecx	# *_41, D.19214
	movq	-24(%rbp), %rax	# expr, tmp113
	movl	8(%rax), %edx	# expr_38->bitmap_index, D.19211
	movq	-40(%rbp), %rax	# file, tmp114
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp114,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2339 0
	movq	-24(%rbp), %rax	# expr, tmp115
	movq	(%rax), %rdx	# expr_38->expr, D.19215
	movq	-40(%rbp), %rax	# file, tmp116
	movq	%rdx, %rsi	# D.19215,
	movq	%rax, %rdi	# tmp116,
	call	print_rtl	#
	.loc 1 2340 0
	movq	-40(%rbp), %rax	# file, tmp117
	movq	%rax, %rsi	# tmp117,
	movl	$10, %edi	#,
	call	fputc	#
.L330:
	.loc 1 2333 0
	addl	$1, -28(%rbp)	#, i
.L329:
	.loc 1 2333 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp118
	cmpl	-64(%rbp), %eax	# total_size, tmp118
	jl	.L331	#,
	.loc 1 2343 0 is_stmt 1
	movq	-40(%rbp), %rax	# file, tmp119
	movq	%rax, %rsi	# tmp119,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 2345 0
	movq	-16(%rbp), %rax	# flat_table, tmp120
	movq	%rax, %rdi	# tmp120,
	call	free	#
	.loc 1 2346 0
	movq	-8(%rbp), %rax	# hash_val, tmp121
	movq	%rax, %rdi	# tmp121,
	call	free	#
	.loc 1 2347 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	dump_hash_table, .-dump_hash_table
	.type	record_last_reg_set_info, @function
record_last_reg_set_info:
.LFB34:
	.loc 1 2367 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# regno, regno
	.loc 1 2368 0
	movq	reg_avail_info(%rip), %rcx	# reg_avail_info, reg_avail_info.201
	movl	-28(%rbp), %eax	# regno, tmp88
	movslq	%eax, %rdx	# tmp88, D.19218
	movq	%rdx, %rax	# D.19218, tmp89
	addq	%rax, %rax	# tmp89
	addq	%rdx, %rax	# D.19218, tmp89
	salq	$2, %rax	#, tmp90
	addq	%rcx, %rax	# reg_avail_info.201, tmp91
	movq	%rax, -8(%rbp)	# tmp91, info
	.loc 1 2369 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.202
	movq	-24(%rbp), %rax	# insn, tmp92
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.19219
	cltq
	salq	$2, %rax	#, D.19218
	addq	%rdx, %rax	# uid_cuid.202, D.19220
	movl	(%rax), %eax	# *_11, tmp93
	movl	%eax, -12(%rbp)	# tmp93, cuid
	.loc 1 2371 0
	movq	-8(%rbp), %rax	# info, tmp94
	movl	-12(%rbp), %edx	# cuid, tmp95
	movl	%edx, 8(%rax)	# tmp95, info_5->last_set
	.loc 1 2372 0
	movq	-8(%rbp), %rax	# info, tmp96
	movl	(%rax), %edx	# info_5->last_bb, D.19219
	movl	current_bb(%rip), %eax	# current_bb, current_bb.203
	cmpl	%eax, %edx	# current_bb.203, D.19219
	je	.L332	#,
	.loc 1 2374 0
	movl	current_bb(%rip), %edx	# current_bb, current_bb.204
	movq	-8(%rbp), %rax	# info, tmp97
	movl	%edx, (%rax)	# current_bb.204, info_5->last_bb
	.loc 1 2375 0
	movq	-8(%rbp), %rax	# info, tmp98
	movl	-12(%rbp), %edx	# cuid, tmp99
	movl	%edx, 4(%rax)	# tmp99, info_5->first_set
	.loc 1 2376 0
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.205
	movl	current_bb(%rip), %edx	# current_bb, current_bb.206
	movslq	%edx, %rdx	# current_bb.206, D.19218
	salq	$3, %rdx	#, D.19218
	addq	%rdx, %rax	# D.19218, D.19221
	movq	(%rax), %rdx	# *_20, D.19222
	movl	-28(%rbp), %eax	# regno, regno.207
	shrl	$6, %eax	#, D.19223
	movq	reg_set_in_block(%rip), %rcx	# reg_set_in_block, reg_set_in_block.208
	movl	current_bb(%rip), %esi	# current_bb, current_bb.209
	movslq	%esi, %rsi	# current_bb.209, D.19218
	salq	$3, %rsi	#, D.19218
	addq	%rsi, %rcx	# D.19218, D.19221
	movq	(%rcx), %rcx	# *_28, D.19222
	movl	%eax, %esi	# D.19223, tmp100
	addq	$2, %rsi	#, tmp101
	movq	(%rcx,%rsi,8), %rsi	# _29->elms, D.19218
	movl	-28(%rbp), %ecx	# regno, tmp102
	andl	$63, %ecx	#, D.19219
	movl	$1, %edi	#, tmp103
	salq	%cl, %rdi	# D.19219, D.19218
	movq	%rdi, %rcx	# D.19218, D.19218
	orq	%rsi, %rcx	# D.19218, D.19218
	movl	%eax, %eax	# D.19223, tmp104
	addq	$2, %rax	#, tmp105
	movq	%rcx, (%rdx,%rax,8)	# D.19218, _21->elms
.L332:
	.loc 1 2378 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	record_last_reg_set_info, .-record_last_reg_set_info
	.type	canon_list_insert, @function
canon_list_insert:
.LFB35:
	.loc 1 2390 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# dest, dest
	movq	%rsi, -64(%rbp)	# unused1, unused1
	movq	%rdx, -72(%rbp)	# v_insn, v_insn
	.loc 1 2394 0
	jmp	.L335	#
.L336:
	.loc 1 2398 0
	movq	-56(%rbp), %rax	# dest, tmp89
	movq	8(%rax), %rax	# dest_1->fld[0].rtx, tmp90
	movq	%rax, -56(%rbp)	# tmp90, dest
.L335:
	.loc 1 2394 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp91
	movzwl	(%rax), %eax	# dest_1->code, D.19224
	cmpw	$63, %ax	#, D.19224
	je	.L336	#,
	.loc 1 2395 0
	movq	-56(%rbp), %rax	# dest, tmp92
	movzwl	(%rax), %eax	# dest_1->code, D.19224
	cmpw	$133, %ax	#, D.19224
	je	.L336	#,
	.loc 1 2396 0
	movq	-56(%rbp), %rax	# dest, tmp93
	movzwl	(%rax), %eax	# dest_1->code, D.19224
	cmpw	$132, %ax	#, D.19224
	je	.L336	#,
	.loc 1 2397 0
	movq	-56(%rbp), %rax	# dest, tmp94
	movzwl	(%rax), %eax	# dest_1->code, D.19224
	cmpw	$64, %ax	#, D.19224
	je	.L336	#,
	.loc 1 2404 0
	movq	-56(%rbp), %rax	# dest, tmp95
	movzwl	(%rax), %eax	# dest_1->code, D.19224
	cmpw	$66, %ax	#, D.19224
	je	.L337	#,
	.loc 1 2405 0
	jmp	.L334	#
.L337:
	.loc 1 2407 0
	movq	-56(%rbp), %rax	# dest, tmp96
	movq	8(%rax), %rax	# dest_1->fld[0].rtx, D.19225
	movq	%rax, %rdi	# D.19225,
	call	get_addr	#
	movq	%rax, -32(%rbp)	# tmp97, dest_addr
	.loc 1 2408 0
	movq	-32(%rbp), %rax	# dest_addr, tmp98
	movq	%rax, %rdi	# tmp98,
	call	canon_rtx	#
	movq	%rax, -32(%rbp)	# tmp99, dest_addr
	.loc 1 2409 0
	movq	-72(%rbp), %rax	# v_insn, tmp100
	movq	%rax, -24(%rbp)	# tmp100, insn
	.loc 1 2410 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.210
	movq	-24(%rbp), %rdx	# insn, tmp101
	movl	8(%rdx), %edx	# insn_12->fld[0].rtint, D.19226
	movslq	%edx, %rdx	# D.19226, tmp102
	addq	$4, %rdx	#, tmp103
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.210_13->data.bb, D.19227
	movl	88(%rax), %eax	# _15->index, tmp104
	movl	%eax, -36(%rbp)	# tmp104, bb
	.loc 1 2412 0
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.211
	movl	-36(%rbp), %edx	# bb, tmp105
	movslq	%edx, %rdx	# tmp105, D.19228
	salq	$3, %rdx	#, D.19228
	leaq	(%rax,%rdx), %rbx	#, D.19229
	.loc 1 2413 0
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.212
	movl	-36(%rbp), %edx	# bb, tmp106
	movslq	%edx, %rdx	# tmp106, D.19228
	salq	$3, %rdx	#, D.19228
	addq	%rdx, %rax	# D.19228, D.19229
	movq	(%rax), %rdx	# *_24, D.19225
	movq	-32(%rbp), %rax	# dest_addr, tmp107
	movq	%rax, %rsi	# tmp107,
	movl	$0, %edi	#,
	call	alloc_EXPR_LIST	#
	.loc 1 2412 0
	movq	%rax, (%rbx)	# D.19225, *_20
	.loc 1 2414 0
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.213
	movl	-36(%rbp), %edx	# bb, tmp108
	movslq	%edx, %rdx	# tmp108, D.19228
	salq	$3, %rdx	#, D.19228
	leaq	(%rax,%rdx), %rbx	#, D.19229
	.loc 1 2415 0
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.214
	movl	-36(%rbp), %edx	# bb, tmp109
	movslq	%edx, %rdx	# tmp109, D.19228
	salq	$3, %rdx	#, D.19228
	addq	%rdx, %rax	# D.19228, D.19229
	movq	(%rax), %rdx	# *_34, D.19225
	movq	-56(%rbp), %rax	# dest, tmp110
	movq	%rax, %rsi	# tmp110,
	movl	$0, %edi	#,
	call	alloc_EXPR_LIST	#
	.loc 1 2414 0
	movq	%rax, (%rbx)	# D.19225, *_30
	.loc 1 2416 0
	movq	canon_modify_mem_list_set(%rip), %rax	# canon_modify_mem_list_set, canon_modify_mem_list_set.215
	movl	-36(%rbp), %edx	# bb, tmp111
	movl	%edx, %esi	# tmp111,
	movq	%rax, %rdi	# canon_modify_mem_list_set.215,
	call	bitmap_set_bit	#
.L334:
	.loc 1 2417 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	canon_list_insert, .-canon_list_insert
	.type	record_last_mem_set_info, @function
record_last_mem_set_info:
.LFB36:
	.loc 1 2426 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 2427 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.216
	movq	-40(%rbp), %rdx	# insn, tmp86
	movl	8(%rdx), %edx	# insn_2(D)->fld[0].rtint, D.19230
	movslq	%edx, %rdx	# D.19230, tmp87
	addq	$4, %rdx	#, tmp88
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.216_1->data.bb, D.19231
	movl	88(%rax), %eax	# _4->index, tmp89
	movl	%eax, -20(%rbp)	# tmp89, bb
	.loc 1 2431 0
	movq	modify_mem_list(%rip), %rax	# modify_mem_list, modify_mem_list.217
	movl	-20(%rbp), %edx	# bb, tmp90
	movslq	%edx, %rdx	# tmp90, D.19232
	salq	$3, %rdx	#, D.19232
	leaq	(%rax,%rdx), %rbx	#, D.19233
	movq	modify_mem_list(%rip), %rax	# modify_mem_list, modify_mem_list.218
	movl	-20(%rbp), %edx	# bb, tmp91
	movslq	%edx, %rdx	# tmp91, D.19232
	salq	$3, %rdx	#, D.19232
	addq	%rdx, %rax	# D.19232, D.19233
	movq	(%rax), %rdx	# *_13, D.19234
	movq	-40(%rbp), %rax	# insn, tmp92
	movq	%rdx, %rsi	# D.19234,
	movq	%rax, %rdi	# tmp92,
	call	alloc_INSN_LIST	#
	movq	%rax, (%rbx)	# D.19234, *_9
	.loc 1 2432 0
	movq	modify_mem_list_set(%rip), %rax	# modify_mem_list_set, modify_mem_list_set.219
	movl	-20(%rbp), %edx	# bb, tmp93
	movl	%edx, %esi	# tmp93,
	movq	%rax, %rdi	# modify_mem_list_set.219,
	call	bitmap_set_bit	#
	.loc 1 2434 0
	movq	-40(%rbp), %rax	# insn, tmp94
	movzwl	(%rax), %eax	# insn_2(D)->code, D.19235
	cmpw	$34, %ax	#, D.19235
	jne	.L340	#,
	.loc 1 2439 0
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.220
	movl	-20(%rbp), %edx	# bb, tmp95
	movslq	%edx, %rdx	# tmp95, D.19232
	salq	$3, %rdx	#, D.19232
	leaq	(%rax,%rdx), %rbx	#, D.19233
	.loc 1 2440 0
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.221
	movl	-20(%rbp), %edx	# bb, tmp96
	movslq	%edx, %rdx	# tmp96, D.19232
	salq	$3, %rdx	#, D.19232
	addq	%rdx, %rax	# D.19232, D.19233
	movq	(%rax), %rdx	# *_25, D.19234
	movq	-40(%rbp), %rax	# insn, tmp97
	movq	%rdx, %rsi	# D.19234,
	movq	%rax, %rdi	# tmp97,
	call	alloc_INSN_LIST	#
	.loc 1 2439 0
	movq	%rax, (%rbx)	# D.19234, *_21
	.loc 1 2441 0
	movq	canon_modify_mem_list_set(%rip), %rax	# canon_modify_mem_list_set, canon_modify_mem_list_set.222
	movl	-20(%rbp), %edx	# bb, tmp98
	movl	%edx, %esi	# tmp98,
	movq	%rax, %rdi	# canon_modify_mem_list_set.222,
	call	bitmap_set_bit	#
	jmp	.L339	#
.L340:
	.loc 1 2444 0
	movq	-40(%rbp), %rax	# insn, tmp99
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.19234
	movq	-40(%rbp), %rdx	# insn, tmp100
	movl	$canon_list_insert, %esi	#,
	movq	%rax, %rdi	# D.19234,
	call	note_stores	#
.L339:
	.loc 1 2445 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	record_last_mem_set_info, .-record_last_mem_set_info
	.type	record_last_set_info, @function
record_last_set_info:
.LFB37:
	.loc 1 2455 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# dest, dest
	movq	%rsi, -32(%rbp)	# setter, setter
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 2456 0
	movq	-40(%rbp), %rax	# data, tmp67
	movq	%rax, -8(%rbp)	# tmp67, last_set_insn
	.loc 1 2458 0
	movq	-24(%rbp), %rax	# dest, tmp68
	movzwl	(%rax), %eax	# dest_4(D)->code, D.19236
	cmpw	$63, %ax	#, D.19236
	jne	.L343	#,
	.loc 1 2459 0
	movq	-24(%rbp), %rax	# dest, tmp69
	movq	8(%rax), %rax	# dest_4(D)->fld[0].rtx, tmp70
	movq	%rax, -24(%rbp)	# tmp70, dest
.L343:
	.loc 1 2461 0
	movq	-24(%rbp), %rax	# dest, tmp71
	movzwl	(%rax), %eax	# dest_1->code, D.19236
	cmpw	$61, %ax	#, D.19236
	jne	.L344	#,
	.loc 1 2462 0
	movq	-24(%rbp), %rax	# dest, tmp72
	movl	8(%rax), %eax	# dest_1->fld[0].rtuint, D.19237
	movl	%eax, %edx	# D.19237, D.19238
	movq	-8(%rbp), %rax	# last_set_insn, tmp73
	movl	%edx, %esi	# D.19238,
	movq	%rax, %rdi	# tmp73,
	call	record_last_reg_set_info	#
	jmp	.L342	#
.L344:
	.loc 1 2463 0
	movq	-24(%rbp), %rax	# dest, tmp74
	movzwl	(%rax), %eax	# dest_1->code, D.19236
	cmpw	$66, %ax	#, D.19236
	jne	.L342	#,
	.loc 1 2465 0
	movq	-24(%rbp), %rax	# dest, tmp75
	movzbl	2(%rax), %eax	# dest_1->mode, D.19239
	movzbl	%al, %edx	# D.19239, D.19240
	movq	-24(%rbp), %rax	# dest, tmp76
	movl	%edx, %esi	# D.19240,
	movq	%rax, %rdi	# tmp76,
	call	push_operand	#
	testl	%eax, %eax	# D.19238
	jne	.L342	#,
	.loc 1 2466 0
	movq	-8(%rbp), %rax	# last_set_insn, tmp77
	movq	%rax, %rdi	# tmp77,
	call	record_last_mem_set_info	#
.L342:
	.loc 1 2467 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	record_last_set_info, .-record_last_set_info
	.type	compute_hash_table, @function
compute_hash_table:
.LFB38:
	.loc 1 2489 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# set_p, set_p
	.loc 1 2496 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.223
	movl	%eax, %edx	# n_basic_blocks.223, n_basic_blocks.224
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.225
	movl	%edx, %esi	# n_basic_blocks.224,
	movq	%rax, %rdi	# reg_set_in_block.225,
	call	sbitmap_vector_zero	#
	.loc 1 2499 0
	call	clear_modify_mem_tables	#
	.loc 1 2502 0
	movl	max_gcse_regno(%rip), %edx	# max_gcse_regno, max_gcse_regno.226
	movl	%edx, %eax	# max_gcse_regno.226, tmp107
	addl	%eax, %eax	# tmp107
	addl	%edx, %eax	# max_gcse_regno.226, tmp107
	sall	$2, %eax	#, tmp108
	movl	%eax, %edi	# D.19241,
	call	gmalloc	#
	.loc 1 2501 0
	movq	%rax, reg_avail_info(%rip)	# reg_avail_info.227, reg_avail_info
	.loc 1 2504 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L347	#
.L348:
	.loc 1 2505 0 discriminator 2
	movq	reg_avail_info(%rip), %rcx	# reg_avail_info, reg_avail_info.228
	movl	-20(%rbp), %edx	# i, D.19242
	movq	%rdx, %rax	# D.19242, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# D.19242, tmp109
	salq	$2, %rax	#, tmp110
	addq	%rcx, %rax	# reg_avail_info.228, D.19243
	movl	$-1, (%rax)	#, _19->last_bb
	.loc 1 2504 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L347:
	.loc 1 2504 0 is_stmt 0 discriminator 1
	movl	max_gcse_regno(%rip), %eax	# max_gcse_regno, max_gcse_regno.229
	cmpl	%eax, -20(%rbp)	# max_gcse_regno.229, i
	jb	.L348	#,
	.loc 1 2507 0 is_stmt 1
	movl	$0, current_bb(%rip)	#, current_bb
	jmp	.L349	#
.L366:
.LBB21:
	.loc 1 2518 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.230
	movl	current_bb(%rip), %edx	# current_bb, current_bb.231
	movslq	%edx, %rdx	# current_bb.231, tmp111
	addq	$4, %rdx	#, tmp112
	movq	(%rax,%rdx,8), %rax	# basic_block_info.230_23->data.bb, D.19244
	movq	(%rax), %rax	# _25->head, tmp113
	movq	%rax, -8(%rbp)	# tmp113, insn
	jmp	.L350	#
.L359:
	.loc 1 2522 0
	movq	-8(%rbp), %rax	# insn, tmp114
	movzwl	(%rax), %eax	# insn_2->code, D.19246
	movzwl	%ax, %eax	# D.19246, D.19247
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19248
	cmpb	$105, %al	#, D.19248
	je	.L351	#,
	.loc 1 2523 0
	jmp	.L352	#
.L351:
	.loc 1 2525 0
	movq	-8(%rbp), %rax	# insn, tmp116
	movzwl	(%rax), %eax	# insn_2->code, D.19246
	cmpw	$34, %ax	#, D.19246
	jne	.L353	#,
.LBB22:
	.loc 1 2527 0
	movb	$0, -21(%rbp)	#, clobbers_all
	.loc 1 2534 0
	movl	$0, -16(%rbp)	#, regno
	jmp	.L354	#
.L357:
	.loc 1 2535 0
	cmpb	$0, -21(%rbp)	#, clobbers_all
	jne	.L355	#,
	.loc 1 2536 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.232
	movl	-16(%rbp), %eax	# regno, regno.233
	movl	%eax, %ecx	# regno.233, tmp141
	shrq	%cl, %rdx	# tmp141, D.19242
	movq	%rdx, %rax	# D.19242, D.19242
	andl	$1, %eax	#, D.19242
	testq	%rax, %rax	# D.19242
	je	.L356	#,
.L355:
	.loc 1 2537 0
	movl	-16(%rbp), %edx	# regno, regno.234
	movq	-8(%rbp), %rax	# insn, tmp117
	movl	%edx, %esi	# regno.234,
	movq	%rax, %rdi	# tmp117,
	call	record_last_reg_set_info	#
.L356:
	.loc 1 2534 0
	addl	$1, -16(%rbp)	#, regno
.L354:
	.loc 1 2534 0 is_stmt 0 discriminator 1
	cmpl	$52, -16(%rbp)	#, regno
	jbe	.L357	#,
	.loc 1 2539 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, tmp118
	movq	%rax, %rdi	# tmp118,
	call	mark_call	#
.L353:
.LBE22:
	.loc 1 2542 0
	movq	-8(%rbp), %rax	# insn, tmp119
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.19245
	movq	-8(%rbp), %rdx	# insn, tmp120
	movl	$record_last_set_info, %esi	#,
	movq	%rax, %rdi	# D.19245,
	call	note_stores	#
.L352:
	.loc 1 2520 0
	movq	-8(%rbp), %rax	# insn, tmp121
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp122
	movq	%rax, -8(%rbp)	# tmp122, insn
.L350:
	.loc 1 2518 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	je	.L358	#,
	.loc 1 2519 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.235
	movl	current_bb(%rip), %edx	# current_bb, current_bb.236
	movslq	%edx, %rdx	# current_bb.236, tmp123
	addq	$4, %rdx	#, tmp124
	movq	(%rax,%rdx,8), %rax	# basic_block_info.235_27->data.bb, D.19244
	movq	8(%rax), %rax	# _29->end, D.19245
	movq	24(%rax), %rax	# _30->fld[2].rtx, D.19245
	cmpq	-8(%rbp), %rax	# insn, D.19245
	jne	.L359	#,
.L358:
	.loc 1 2547 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.237
	movl	current_bb(%rip), %edx	# current_bb, current_bb.238
	movslq	%edx, %rdx	# current_bb.238, tmp125
	addq	$4, %rdx	#, tmp126
	movq	(%rax,%rdx,8), %rax	# basic_block_info.237_46->data.bb, D.19244
	movq	(%rax), %rax	# _48->head, tmp127
	movq	%rax, -8(%rbp)	# tmp127, insn
	movl	$0, -12(%rbp)	#, in_libcall_block
	jmp	.L360	#
.L365:
	.loc 1 2550 0
	movq	-8(%rbp), %rax	# insn, tmp128
	movzwl	(%rax), %eax	# insn_3->code, D.19246
	movzwl	%ax, %eax	# D.19246, D.19247
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19248
	cmpb	$105, %al	#, D.19248
	jne	.L361	#,
	.loc 1 2552 0
	movq	-8(%rbp), %rax	# insn, tmp130
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	find_reg_note	#
	testq	%rax, %rax	# D.19245
	je	.L362	#,
	.loc 1 2553 0
	movl	$1, -12(%rbp)	#, in_libcall_block
	jmp	.L363	#
.L362:
	.loc 1 2554 0
	cmpl	$0, -36(%rbp)	#, set_p
	je	.L363	#,
	.loc 1 2554 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp131
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	find_reg_note	#
	testq	%rax, %rax	# D.19245
	je	.L363	#,
	.loc 1 2555 0 is_stmt 1
	movl	$0, -12(%rbp)	#, in_libcall_block
.L363:
	.loc 1 2556 0
	movl	-12(%rbp), %edx	# in_libcall_block, tmp132
	movl	-36(%rbp), %ecx	# set_p, tmp133
	movq	-8(%rbp), %rax	# insn, tmp134
	movl	%ecx, %esi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	hash_scan_insn	#
	.loc 1 2557 0
	cmpl	$0, -36(%rbp)	#, set_p
	jne	.L361	#,
	.loc 1 2557 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp135
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	find_reg_note	#
	testq	%rax, %rax	# D.19245
	je	.L361	#,
	.loc 1 2558 0 is_stmt 1
	movl	$0, -12(%rbp)	#, in_libcall_block
.L361:
	.loc 1 2549 0
	movq	-8(%rbp), %rax	# insn, tmp136
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp137
	movq	%rax, -8(%rbp)	# tmp137, insn
.L360:
	.loc 1 2547 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	je	.L364	#,
	.loc 1 2548 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.239
	movl	current_bb(%rip), %edx	# current_bb, current_bb.240
	movslq	%edx, %rdx	# current_bb.240, tmp138
	addq	$4, %rdx	#, tmp139
	movq	(%rax,%rdx,8), %rax	# basic_block_info.239_51->data.bb, D.19244
	movq	8(%rax), %rax	# _53->end, D.19245
	movq	24(%rax), %rax	# _54->fld[2].rtx, D.19245
	cmpq	-8(%rbp), %rax	# insn, D.19245
	jne	.L365	#,
.L364:
.LBE21:
	.loc 1 2507 0
	movl	current_bb(%rip), %eax	# current_bb, current_bb.241
	addl	$1, %eax	#, current_bb.242
	movl	%eax, current_bb(%rip)	# current_bb.242, current_bb
.L349:
	.loc 1 2507 0 is_stmt 0 discriminator 1
	movl	current_bb(%rip), %edx	# current_bb, current_bb.243
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.244
	cmpl	%eax, %edx	# n_basic_blocks.244, current_bb.243
	jl	.L366	#,
	.loc 1 2562 0 is_stmt 1
	movq	reg_avail_info(%rip), %rax	# reg_avail_info, reg_avail_info.245
	movq	%rax, %rdi	# reg_avail_info.245,
	call	free	#
	.loc 1 2563 0
	movq	$0, reg_avail_info(%rip)	#, reg_avail_info
	.loc 1 2564 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	compute_hash_table, .-compute_hash_table
	.type	alloc_set_hash_table, @function
alloc_set_hash_table:
.LFB39:
	.loc 1 2573 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n_insns, n_insns
	.loc 1 2576 0
	movl	-20(%rbp), %eax	# n_insns, tmp68
	leal	3(%rax), %edx	#, tmp70
	testl	%eax, %eax	# tmp69
	cmovs	%edx, %eax	# tmp70,, tmp69
	sarl	$2, %eax	#, tmp71
	movl	%eax, set_hash_table_size(%rip)	# set_hash_table_size.246, set_hash_table_size
	.loc 1 2577 0
	movl	set_hash_table_size(%rip), %eax	# set_hash_table_size, set_hash_table_size.247
	cmpl	$10, %eax	#, set_hash_table_size.247
	ja	.L368	#,
	.loc 1 2578 0
	movl	$11, set_hash_table_size(%rip)	#, set_hash_table_size
.L368:
	.loc 1 2583 0
	movl	set_hash_table_size(%rip), %eax	# set_hash_table_size, set_hash_table_size.248
	orl	$1, %eax	#, set_hash_table_size.249
	movl	%eax, set_hash_table_size(%rip)	# set_hash_table_size.249, set_hash_table_size
	.loc 1 2584 0
	movl	set_hash_table_size(%rip), %eax	# set_hash_table_size, set_hash_table_size.250
	sall	$3, %eax	#, D.19250
	movl	%eax, -4(%rbp)	# D.19250, n
	.loc 1 2585 0
	movl	-4(%rbp), %eax	# n, n.251
	movl	%eax, %edi	# n.251,
	call	gmalloc	#
	movq	%rax, set_hash_table(%rip)	# set_hash_table.252, set_hash_table
	.loc 1 2586 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	alloc_set_hash_table, .-alloc_set_hash_table
	.type	free_set_hash_table, @function
free_set_hash_table:
.LFB40:
	.loc 1 2592 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2593 0
	movq	set_hash_table(%rip), %rax	# set_hash_table, set_hash_table.253
	movq	%rax, %rdi	# set_hash_table.253,
	call	free	#
	.loc 1 2594 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	free_set_hash_table, .-free_set_hash_table
	.type	compute_set_hash_table, @function
compute_set_hash_table:
.LFB41:
	.loc 1 2600 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2602 0
	movl	$0, n_sets(%rip)	#, n_sets
	.loc 1 2603 0
	movl	set_hash_table_size(%rip), %eax	# set_hash_table_size, set_hash_table_size.254
	movl	%eax, %eax	# set_hash_table_size.254, D.19251
	leaq	0(,%rax,8), %rdx	#, D.19251
	movq	set_hash_table(%rip), %rax	# set_hash_table, set_hash_table.255
	movl	$0, %esi	#,
	movq	%rax, %rdi	# set_hash_table.255,
	call	memset	#
	.loc 1 2606 0
	movl	$1, %edi	#,
	call	compute_hash_table	#
	.loc 1 2607 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	compute_set_hash_table, .-compute_set_hash_table
	.type	alloc_expr_hash_table, @function
alloc_expr_hash_table:
.LFB42:
	.loc 1 2616 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n_insns, n_insns
	.loc 1 2619 0
	movl	-20(%rbp), %eax	# n_insns, tmp67
	shrl	%eax	# expr_hash_table_size.256
	movl	%eax, expr_hash_table_size(%rip)	# expr_hash_table_size.256, expr_hash_table_size
	.loc 1 2621 0
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.257
	cmpl	$10, %eax	#, expr_hash_table_size.257
	ja	.L372	#,
	.loc 1 2622 0
	movl	$11, expr_hash_table_size(%rip)	#, expr_hash_table_size
.L372:
	.loc 1 2627 0
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.258
	orl	$1, %eax	#, expr_hash_table_size.259
	movl	%eax, expr_hash_table_size(%rip)	# expr_hash_table_size.259, expr_hash_table_size
	.loc 1 2628 0
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.260
	sall	$3, %eax	#, D.19252
	movl	%eax, -4(%rbp)	# D.19252, n
	.loc 1 2629 0
	movl	-4(%rbp), %eax	# n, n.261
	movl	%eax, %edi	# n.261,
	call	gmalloc	#
	movq	%rax, expr_hash_table(%rip)	# expr_hash_table.262, expr_hash_table
	.loc 1 2630 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	alloc_expr_hash_table, .-alloc_expr_hash_table
	.type	free_expr_hash_table, @function
free_expr_hash_table:
.LFB43:
	.loc 1 2636 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2637 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.263
	movq	%rax, %rdi	# expr_hash_table.263,
	call	free	#
	.loc 1 2638 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	free_expr_hash_table, .-free_expr_hash_table
	.type	compute_expr_hash_table, @function
compute_expr_hash_table:
.LFB44:
	.loc 1 2644 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2646 0
	movl	$0, n_exprs(%rip)	#, n_exprs
	.loc 1 2647 0
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.264
	movl	%eax, %eax	# expr_hash_table_size.264, D.19253
	leaq	0(,%rax,8), %rdx	#, D.19253
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.265
	movl	$0, %esi	#,
	movq	%rax, %rdi	# expr_hash_table.265,
	call	memset	#
	.loc 1 2650 0
	movl	$0, %edi	#,
	call	compute_hash_table	#
	.loc 1 2651 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	compute_expr_hash_table, .-compute_expr_hash_table
	.type	lookup_expr, @function
lookup_expr:
.LFB45:
	.loc 1 2661 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pat, pat
	.loc 1 2663 0
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.266
	movl	%eax, %ecx	# expr_hash_table_size.266, expr_hash_table_size.267
	movq	-24(%rbp), %rax	# pat, tmp72
	movzbl	2(%rax), %eax	# pat_5(D)->mode, D.19255
	movzbl	%al, %esi	# D.19255, D.19256
	leaq	-16(%rbp), %rdx	#, tmp73
	movq	-24(%rbp), %rax	# pat, tmp74
	movq	%rax, %rdi	# tmp74,
	call	hash_expr	#
	movl	%eax, -12(%rbp)	# tmp75, hash
	.loc 1 2667 0
	movl	-16(%rbp), %eax	# do_not_record_p, do_not_record_p.268
	testl	%eax, %eax	# do_not_record_p.268
	je	.L376	#,
	.loc 1 2668 0
	movl	$0, %eax	#, D.19254
	jmp	.L381	#
.L376:
	.loc 1 2670 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.269
	movl	-12(%rbp), %edx	# hash, D.19257
	salq	$3, %rdx	#, D.19257
	addq	%rdx, %rax	# D.19257, D.19258
	movq	(%rax), %rax	# *_14, tmp76
	movq	%rax, -8(%rbp)	# tmp76, expr
	.loc 1 2672 0
	jmp	.L378	#
.L380:
	.loc 1 2673 0
	movq	-8(%rbp), %rax	# expr, tmp77
	movq	16(%rax), %rax	# expr_1->next_same_hash, tmp78
	movq	%rax, -8(%rbp)	# tmp78, expr
.L378:
	.loc 1 2672 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, expr
	je	.L379	#,
	.loc 1 2672 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# expr, tmp79
	movq	(%rax), %rax	# expr_1->expr, D.19259
	movq	-24(%rbp), %rdx	# pat, tmp80
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# D.19259,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19260
	je	.L380	#,
.L379:
	.loc 1 2675 0 is_stmt 1
	movq	-8(%rbp), %rax	# expr, D.19254
.L381:
	.loc 1 2676 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	lookup_expr, .-lookup_expr
	.type	lookup_set, @function
lookup_set:
.LFB46:
	.loc 1 2686 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# regno, regno
	movq	%rsi, -32(%rbp)	# pat, pat
	.loc 1 2687 0
	movl	set_hash_table_size(%rip), %eax	# set_hash_table_size, set_hash_table_size.270
	movl	%eax, %edx	# set_hash_table_size.270, set_hash_table_size.271
	movl	-20(%rbp), %eax	# regno, regno.272
	movl	%edx, %esi	# set_hash_table_size.271,
	movl	%eax, %edi	# regno.272,
	call	hash_set	#
	movl	%eax, -12(%rbp)	# tmp73, hash
	.loc 1 2690 0
	movq	set_hash_table(%rip), %rax	# set_hash_table, set_hash_table.273
	movl	-12(%rbp), %edx	# hash, D.19261
	salq	$3, %rdx	#, D.19261
	addq	%rdx, %rax	# D.19261, D.19262
	movq	(%rax), %rax	# *_12, tmp74
	movq	%rax, -8(%rbp)	# tmp74, expr
	.loc 1 2692 0
	cmpq	$0, -32(%rbp)	#, pat
	je	.L383	#,
	.loc 1 2694 0
	jmp	.L384	#
.L386:
	.loc 1 2695 0
	movq	-8(%rbp), %rax	# expr, tmp75
	movq	16(%rax), %rax	# expr_1->next_same_hash, tmp76
	movq	%rax, -8(%rbp)	# tmp76, expr
.L384:
	.loc 1 2694 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, expr
	je	.L385	#,
	.loc 1 2694 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# expr, tmp77
	movq	(%rax), %rax	# expr_1->expr, D.19263
	movq	-32(%rbp), %rdx	# pat, tmp78
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# D.19263,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19264
	je	.L386	#,
	jmp	.L385	#
.L383:
	.loc 1 2699 0 is_stmt 1
	jmp	.L387	#
.L388:
	.loc 1 2700 0
	movq	-8(%rbp), %rax	# expr, tmp79
	movq	16(%rax), %rax	# expr_2->next_same_hash, tmp80
	movq	%rax, -8(%rbp)	# tmp80, expr
.L387:
	.loc 1 2699 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, expr
	je	.L385	#,
	.loc 1 2699 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# expr, tmp81
	movq	(%rax), %rax	# expr_2->expr, D.19263
	movq	8(%rax), %rax	# _18->fld[0].rtx, D.19263
	movl	8(%rax), %eax	# _19->fld[0].rtuint, D.19265
	cmpl	-20(%rbp), %eax	# regno, D.19265
	jne	.L388	#,
.L385:
	.loc 1 2703 0 is_stmt 1
	movq	-8(%rbp), %rax	# expr, D.19266
	.loc 1 2704 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	lookup_set, .-lookup_set
	.type	next_set, @function
next_set:
.LFB47:
	.loc 1 2712 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# regno, regno
	movq	%rsi, -16(%rbp)	# expr, expr
.L392:
	.loc 1 2714 0 discriminator 1
	movq	-16(%rbp), %rax	# expr, tmp64
	movq	16(%rax), %rax	# expr_1->next_same_hash, tmp65
	movq	%rax, -16(%rbp)	# tmp65, expr
	.loc 1 2715 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, expr
	je	.L391	#,
	movq	-16(%rbp), %rax	# expr, tmp66
	movq	(%rax), %rax	# expr_3->expr, D.19267
	movq	8(%rax), %rax	# _4->fld[0].rtx, D.19267
	movl	8(%rax), %eax	# _5->fld[0].rtuint, D.19268
	cmpl	-4(%rbp), %eax	# regno, D.19268
	jne	.L392	#,
.L391:
	.loc 1 2717 0
	movq	-16(%rbp), %rax	# expr, D.19269
	.loc 1 2718 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	next_set, .-next_set
	.type	free_insn_expr_list_list, @function
free_insn_expr_list_list:
.LFB48:
	.loc 1 2726 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# listp, listp
	.loc 1 2729 0
	movq	-24(%rbp), %rax	# listp, tmp60
	movq	(%rax), %rax	# *listp_2(D), tmp61
	movq	%rax, -16(%rbp)	# tmp61, list
	jmp	.L395	#
.L398:
	.loc 1 2731 0
	movq	-16(%rbp), %rax	# list, tmp62
	movq	16(%rax), %rax	# list_1->fld[1].rtx, tmp63
	movq	%rax, -8(%rbp)	# tmp63, next
	.loc 1 2732 0
	movq	-16(%rbp), %rax	# list, tmp64
	movzwl	(%rax), %eax	# list_1->code, D.19270
	cmpw	$3, %ax	#, D.19270
	jne	.L396	#,
	.loc 1 2733 0
	movq	-16(%rbp), %rax	# list, tmp65
	movq	%rax, %rdi	# tmp65,
	call	free_EXPR_LIST_node	#
	jmp	.L397	#
.L396:
	.loc 1 2735 0
	movq	-16(%rbp), %rax	# list, tmp66
	movq	%rax, %rdi	# tmp66,
	call	free_INSN_LIST_node	#
.L397:
	.loc 1 2729 0
	movq	-8(%rbp), %rax	# next, tmp67
	movq	%rax, -16(%rbp)	# tmp67, list
.L395:
	.loc 1 2729 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, list
	jne	.L398	#,
	.loc 1 2738 0 is_stmt 1
	movq	-24(%rbp), %rax	# listp, tmp68
	movq	$0, (%rax)	#, *listp_2(D)
	.loc 1 2739 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	free_insn_expr_list_list, .-free_insn_expr_list_list
	.type	clear_modify_mem_tables, @function
clear_modify_mem_tables:
.LFB49:
	.loc 1 2744 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
.LBB23:
	.loc 1 2747 0
	movq	modify_mem_list_set(%rip), %rax	# modify_mem_list_set, modify_mem_list_set.274
	movq	(%rax), %rax	# modify_mem_list_set.274_23->first, tmp91
	movq	%rax, -48(%rbp)	# tmp91, ptr_
	movl	$0, -60(%rbp)	#, indx_
	movl	$0, -76(%rbp)	#, bit_num_
	movl	$0, -72(%rbp)	#, word_num_
	jmp	.L400	#
.L402:
	.loc 1 2747 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ptr_, tmp92
	movq	(%rax), %rax	# ptr__1->next, tmp93
	movq	%rax, -48(%rbp)	# tmp93, ptr_
.L400:
	cmpq	$0, -48(%rbp)	#, ptr_
	je	.L401	#,
	.loc 1 2747 0 discriminator 2
	movq	-48(%rbp), %rax	# ptr_, tmp94
	movl	16(%rax), %eax	# ptr__1->indx, D.19271
	cmpl	-60(%rbp), %eax	# indx_, D.19271
	jb	.L402	#,
.L401:
	.loc 1 2747 0 discriminator 3
	cmpq	$0, -48(%rbp)	#, ptr_
	je	.L403	#,
	.loc 1 2747 0 discriminator 1
	movq	-48(%rbp), %rax	# ptr_, tmp95
	movl	16(%rax), %eax	# ptr__1->indx, D.19271
	cmpl	-60(%rbp), %eax	# indx_, D.19271
	je	.L403	#,
	movl	$0, -76(%rbp)	#, bit_num_
	movl	$0, -72(%rbp)	#, word_num_
	jmp	.L404	#
.L403:
	.loc 1 2747 0 discriminator 2
	jmp	.L404	#
.L411:
	.loc 1 2747 0
	jmp	.L405	#
.L410:
.LBB24:
	.loc 1 2747 0 discriminator 2
	movq	-48(%rbp), %rax	# ptr_, tmp96
	movl	-72(%rbp), %edx	# word_num_, tmp97
	addq	$2, %rdx	#, tmp98
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp99
	movq	%rax, -40(%rbp)	# tmp99, word_
	cmpq	$0, -40(%rbp)	#, word_
	je	.L406	#,
	.loc 1 2747 0 discriminator 1
	jmp	.L407	#
.L409:
.LBB25:
	.loc 1 2747 0 discriminator 2
	movl	-76(%rbp), %eax	# bit_num_, bit_num_.275
	movl	$1, %edx	#, tmp100
	movl	%eax, %ecx	# bit_num_.275, tmp132
	salq	%cl, %rdx	# tmp132, tmp101
	movq	%rdx, %rax	# tmp101, tmp101
	movq	%rax, -16(%rbp)	# tmp101, mask_
	movq	-16(%rbp), %rax	# mask_, tmp102
	movq	-40(%rbp), %rdx	# word_, tmp103
	andq	%rdx, %rax	# tmp103, D.19272
	testq	%rax, %rax	# D.19272
	je	.L408	#,
	.loc 1 2747 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp104
	notq	%rax	# D.19272
	andq	%rax, -40(%rbp)	# D.19272, word_
	movq	-48(%rbp), %rax	# ptr_, tmp105
	movl	16(%rax), %eax	# ptr__2->indx, D.19271
	leal	(%rax,%rax), %edx	#, D.19271
	movl	-72(%rbp), %eax	# word_num_, tmp106
	addl	%edx, %eax	# D.19271, D.19271
	sall	$6, %eax	#, D.19271
	movl	%eax, %edx	# D.19271, D.19271
	movl	-76(%rbp), %eax	# bit_num_, tmp107
	addl	%edx, %eax	# D.19271, D.19271
	movl	%eax, -56(%rbp)	# D.19271, i
	movq	modify_mem_list(%rip), %rax	# modify_mem_list, modify_mem_list.276
	movl	-56(%rbp), %edx	# i, tmp108
	movslq	%edx, %rdx	# tmp108, D.19272
	salq	$3, %rdx	#, D.19272
	addq	%rdx, %rax	# D.19272, D.19273
	movq	%rax, %rdi	# D.19273,
	call	free_INSN_LIST_list	#
	cmpq	$0, -40(%rbp)	#, word_
	jne	.L408	#,
	jmp	.L406	#
.L408:
.LBE25:
	.loc 1 2747 0 discriminator 2
	addl	$1, -76(%rbp)	#, bit_num_
.L407:
	.loc 1 2747 0 discriminator 1
	cmpl	$63, -76(%rbp)	#, bit_num_
	jbe	.L409	#,
.L406:
	.loc 1 2747 0 discriminator 2
	movl	$0, -76(%rbp)	#, bit_num_
.LBE24:
	addl	$1, -72(%rbp)	#, word_num_
.L405:
	.loc 1 2747 0 discriminator 1
	cmpl	$1, -72(%rbp)	#, word_num_
	jbe	.L410	#,
	.loc 1 2747 0 discriminator 3
	movl	$0, -72(%rbp)	#, word_num_
	movq	-48(%rbp), %rax	# ptr_, tmp109
	movq	(%rax), %rax	# ptr__2->next, tmp110
	movq	%rax, -48(%rbp)	# tmp110, ptr_
.L404:
	.loc 1 2747 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, ptr_
	jne	.L411	#,
.LBE23:
	.loc 1 2749 0 is_stmt 1
	movq	modify_mem_list_set(%rip), %rax	# modify_mem_list_set, modify_mem_list_set.277
	movq	%rax, %rdi	# modify_mem_list_set.277,
	call	bitmap_clear	#
.LBB26:
	.loc 1 2751 0
	movq	canon_modify_mem_list_set(%rip), %rax	# canon_modify_mem_list_set, canon_modify_mem_list_set.278
	movq	(%rax), %rax	# canon_modify_mem_list_set.278_55->first, tmp111
	movq	%rax, -32(%rbp)	# tmp111, ptr_
	movl	$0, -52(%rbp)	#, indx_
	movl	$0, -68(%rbp)	#, bit_num_
	movl	$0, -64(%rbp)	#, word_num_
	jmp	.L412	#
.L414:
	.loc 1 2751 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp112
	movq	(%rax), %rax	# ptr__12->next, tmp113
	movq	%rax, -32(%rbp)	# tmp113, ptr_
.L412:
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L413	#,
	.loc 1 2751 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp114
	movl	16(%rax), %eax	# ptr__12->indx, D.19271
	cmpl	-52(%rbp), %eax	# indx_, D.19271
	jb	.L414	#,
.L413:
	.loc 1 2751 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, ptr_
	je	.L415	#,
	.loc 1 2751 0 discriminator 1
	movq	-32(%rbp), %rax	# ptr_, tmp115
	movl	16(%rax), %eax	# ptr__12->indx, D.19271
	cmpl	-52(%rbp), %eax	# indx_, D.19271
	je	.L415	#,
	movl	$0, -68(%rbp)	#, bit_num_
	movl	$0, -64(%rbp)	#, word_num_
	jmp	.L416	#
.L415:
	.loc 1 2751 0 discriminator 2
	jmp	.L416	#
.L423:
	.loc 1 2751 0
	jmp	.L417	#
.L422:
.LBB27:
	.loc 1 2751 0 discriminator 2
	movq	-32(%rbp), %rax	# ptr_, tmp116
	movl	-64(%rbp), %edx	# word_num_, tmp117
	addq	$2, %rdx	#, tmp118
	movq	8(%rax,%rdx,8), %rax	# ptr__13->bits, tmp119
	movq	%rax, -24(%rbp)	# tmp119, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L418	#,
	.loc 1 2751 0 discriminator 1
	jmp	.L419	#
.L421:
.LBB28:
	.loc 1 2751 0 discriminator 2
	movl	-68(%rbp), %eax	# bit_num_, bit_num_.279
	movl	$1, %edx	#, tmp120
	movl	%eax, %ecx	# bit_num_.279, tmp135
	salq	%cl, %rdx	# tmp135, tmp121
	movq	%rdx, %rax	# tmp121, tmp121
	movq	%rax, -8(%rbp)	# tmp121, mask_
	movq	-8(%rbp), %rax	# mask_, tmp122
	movq	-24(%rbp), %rdx	# word_, tmp123
	andq	%rdx, %rax	# tmp123, D.19272
	testq	%rax, %rax	# D.19272
	je	.L420	#,
	.loc 1 2751 0 discriminator 1
	movq	-8(%rbp), %rax	# mask_, tmp124
	notq	%rax	# D.19272
	andq	%rax, -24(%rbp)	# D.19272, word_
	movq	-32(%rbp), %rax	# ptr_, tmp125
	movl	16(%rax), %eax	# ptr__13->indx, D.19271
	leal	(%rax,%rax), %edx	#, D.19271
	movl	-64(%rbp), %eax	# word_num_, tmp126
	addl	%edx, %eax	# D.19271, D.19271
	sall	$6, %eax	#, D.19271
	movl	%eax, %edx	# D.19271, D.19271
	movl	-68(%rbp), %eax	# bit_num_, tmp127
	addl	%edx, %eax	# D.19271, D.19271
	movl	%eax, -56(%rbp)	# D.19271, i
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.280
	movl	-56(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, D.19272
	salq	$3, %rdx	#, D.19272
	addq	%rdx, %rax	# D.19272, D.19273
	movq	%rax, %rdi	# D.19273,
	call	free_insn_expr_list_list	#
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L420	#,
	jmp	.L418	#
.L420:
.LBE28:
	.loc 1 2751 0 discriminator 2
	addl	$1, -68(%rbp)	#, bit_num_
.L419:
	.loc 1 2751 0 discriminator 1
	cmpl	$63, -68(%rbp)	#, bit_num_
	jbe	.L421	#,
.L418:
	.loc 1 2751 0 discriminator 2
	movl	$0, -68(%rbp)	#, bit_num_
.LBE27:
	addl	$1, -64(%rbp)	#, word_num_
.L417:
	.loc 1 2751 0 discriminator 1
	cmpl	$1, -64(%rbp)	#, word_num_
	jbe	.L422	#,
	.loc 1 2751 0 discriminator 3
	movl	$0, -64(%rbp)	#, word_num_
	movq	-32(%rbp), %rax	# ptr_, tmp129
	movq	(%rax), %rax	# ptr__13->next, tmp130
	movq	%rax, -32(%rbp)	# tmp130, ptr_
.L416:
	.loc 1 2751 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ptr_
	jne	.L423	#,
.LBE26:
	.loc 1 2754 0 is_stmt 1
	movq	canon_modify_mem_list_set(%rip), %rax	# canon_modify_mem_list_set, canon_modify_mem_list_set.281
	movq	%rax, %rdi	# canon_modify_mem_list_set.281,
	call	bitmap_clear	#
	.loc 1 2755 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	clear_modify_mem_tables, .-clear_modify_mem_tables
	.type	free_modify_mem_tables, @function
free_modify_mem_tables:
.LFB50:
	.loc 1 2761 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2762 0
	call	clear_modify_mem_tables	#
	.loc 1 2763 0
	movq	modify_mem_list(%rip), %rax	# modify_mem_list, modify_mem_list.282
	movq	%rax, %rdi	# modify_mem_list.282,
	call	free	#
	.loc 1 2764 0
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.283
	movq	%rax, %rdi	# canon_modify_mem_list.283,
	call	free	#
	.loc 1 2765 0
	movq	$0, modify_mem_list(%rip)	#, modify_mem_list
	.loc 1 2766 0
	movq	$0, canon_modify_mem_list(%rip)	#, canon_modify_mem_list
	.loc 1 2767 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	free_modify_mem_tables, .-free_modify_mem_tables
	.type	reset_opr_set_tables, @function
reset_opr_set_tables:
.LFB51:
	.loc 1 2774 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2777 0
	movq	reg_set_bitmap(%rip), %rax	# reg_set_bitmap, reg_set_bitmap.284
	movq	%rax, %rdi	# reg_set_bitmap.284,
	call	bitmap_clear	#
	.loc 1 2782 0
	call	clear_modify_mem_tables	#
	.loc 1 2783 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	reset_opr_set_tables, .-reset_opr_set_tables
	.type	oprs_not_set_p, @function
oprs_not_set_p:
.LFB52:
	.loc 1 2791 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# insn, insn
	.loc 1 2796 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L427	#,
	.loc 1 2797 0
	movl	$1, %eax	#, D.19274
	jmp	.L428	#
.L427:
	.loc 1 2799 0
	movq	-40(%rbp), %rax	# x, tmp96
	movzwl	(%rax), %eax	# x_4(D)->code, D.19275
	movzwl	%ax, %eax	# D.19275, tmp97
	movl	%eax, -12(%rbp)	# tmp97, code
	.loc 1 2800 0
	movl	-12(%rbp), %eax	# code, tmp99
	subl	$44, %eax	#, tmp98
	cmpl	$25, %eax	#, tmp98
	ja	.L444	#,
	movl	%eax, %eax	# tmp98, tmp100
	movq	.L431(,%rax,8), %rax	#, tmp101
	jmp	*%rax	# tmp101
	.section	.rodata
	.align 8
	.align 4
.L431:
	.quad	.L430
	.quad	.L430
	.quad	.L444
	.quad	.L444
	.quad	.L444
	.quad	.L444
	.quad	.L444
	.quad	.L444
	.quad	.L444
	.quad	.L444
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L444
	.quad	.L430
	.quad	.L430
	.quad	.L444
	.quad	.L432
	.quad	.L444
	.quad	.L444
	.quad	.L444
	.quad	.L444
	.quad	.L433
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.text
.L430:
	.loc 1 2812 0
	movl	$1, %eax	#, D.19274
	jmp	.L428	#
.L433:
	.loc 1 2816 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.285
	movq	-48(%rbp), %rax	# insn, tmp102
	movl	8(%rax), %eax	# insn_10(D)->fld[0].rtint, D.19274
	cltq
	salq	$2, %rax	#, D.19276
	addq	%rdx, %rax	# uid_cuid.285, D.19277
	.loc 1 2815 0
	movl	(%rax), %esi	# *_14, D.19274
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.286
	movq	-48(%rbp), %rdx	# insn, tmp103
	movl	8(%rdx), %edx	# insn_10(D)->fld[0].rtint, D.19274
	movslq	%edx, %rdx	# D.19274, tmp104
	addq	$4, %rdx	#, tmp105
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.286_16->data.bb, D.19278
	movq	-40(%rbp), %rdx	# x, tmp106
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19278,
	call	load_killed_in_block_p	#
	testl	%eax, %eax	# D.19274
	je	.L434	#,
	.loc 1 2817 0
	movl	$0, %eax	#, D.19274
	jmp	.L428	#
.L434:
	.loc 1 2819 0
	movq	-40(%rbp), %rax	# x, tmp107
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.19279
	movq	-48(%rbp), %rdx	# insn, tmp108
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# D.19279,
	call	oprs_not_set_p	#
	jmp	.L428	#
.L432:
	.loc 1 2822 0
	movq	-40(%rbp), %rax	# x, tmp109
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.19280
	movl	%eax, %edx	# D.19280, D.19274
	movq	reg_set_bitmap(%rip), %rax	# reg_set_bitmap, reg_set_bitmap.287
	movl	%edx, %esi	# D.19274,
	movq	%rax, %rdi	# reg_set_bitmap.287,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.19274
	sete	%al	#, D.19281
	movzbl	%al, %eax	# D.19281, D.19274
	jmp	.L428	#
.L444:
	.loc 1 2825 0
	nop
	.loc 1 2828 0
	movl	-12(%rbp), %eax	# code, code.288
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19282
	movzbl	%al, %eax	# D.19282, D.19274
	subl	$1, %eax	#, tmp111
	movl	%eax, -20(%rbp)	# tmp111, i
	movl	-12(%rbp), %eax	# code, code.289
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp113
	movq	%rax, -8(%rbp)	# tmp113, fmt
	jmp	.L435	#
.L442:
	.loc 1 2830 0
	movl	-20(%rbp), %eax	# i, tmp114
	movslq	%eax, %rdx	# tmp114, D.19283
	movq	-8(%rbp), %rax	# fmt, tmp115
	addq	%rdx, %rax	# D.19283, D.19284
	movzbl	(%rax), %eax	# *_36, D.19285
	cmpb	$101, %al	#, D.19285
	jne	.L436	#,
	.loc 1 2835 0
	cmpl	$0, -20(%rbp)	#, i
	jne	.L437	#,
	.loc 1 2836 0
	movq	-40(%rbp), %rax	# x, tmp116
	movl	-20(%rbp), %edx	# i, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.19279
	movq	-48(%rbp), %rdx	# insn, tmp119
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# D.19279,
	call	oprs_not_set_p	#
	jmp	.L428	#
.L437:
	.loc 1 2838 0
	movq	-40(%rbp), %rax	# x, tmp120
	movl	-20(%rbp), %edx	# i, tmp122
	movslq	%edx, %rdx	# tmp122, tmp121
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.19279
	movq	-48(%rbp), %rdx	# insn, tmp123
	movq	%rdx, %rsi	# tmp123,
	movq	%rax, %rdi	# D.19279,
	call	oprs_not_set_p	#
	testl	%eax, %eax	# D.19274
	jne	.L438	#,
	.loc 1 2839 0
	movl	$0, %eax	#, D.19274
	jmp	.L428	#
.L436:
	.loc 1 2841 0
	movl	-20(%rbp), %eax	# i, tmp124
	movslq	%eax, %rdx	# tmp124, D.19283
	movq	-8(%rbp), %rax	# fmt, tmp125
	addq	%rdx, %rax	# D.19283, D.19284
	movzbl	(%rax), %eax	# *_44, D.19285
	cmpb	$69, %al	#, D.19285
	jne	.L438	#,
	.loc 1 2842 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L439	#
.L441:
	.loc 1 2843 0
	movq	-40(%rbp), %rax	# x, tmp126
	movl	-20(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, tmp127
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.19286
	movl	-16(%rbp), %edx	# j, tmp130
	movslq	%edx, %rdx	# tmp130, tmp129
	movq	8(%rax,%rdx,8), %rax	# _49->elem, D.19279
	movq	-48(%rbp), %rdx	# insn, tmp131
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# D.19279,
	call	oprs_not_set_p	#
	testl	%eax, %eax	# D.19274
	jne	.L440	#,
	.loc 1 2844 0
	movl	$0, %eax	#, D.19274
	jmp	.L428	#
.L440:
	.loc 1 2842 0
	addl	$1, -16(%rbp)	#, j
.L439:
	.loc 1 2842 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp132
	movl	-20(%rbp), %edx	# i, tmp134
	movslq	%edx, %rdx	# tmp134, tmp133
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.19286
	movl	(%rax), %eax	# _47->num_elem, D.19274
	cmpl	-16(%rbp), %eax	# j, D.19274
	jg	.L441	#,
.L438:
	.loc 1 2828 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L435:
	.loc 1 2828 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L442	#,
	.loc 1 2847 0 is_stmt 1
	movl	$1, %eax	#, D.19274
.L428:
	.loc 1 2848 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	oprs_not_set_p, .-oprs_not_set_p
	.type	mark_call, @function
mark_call:
.LFB53:
	.loc 1 2855 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2856 0
	movq	-8(%rbp), %rax	# insn, tmp61
	movzbl	3(%rax), %eax	# *insn_1(D), D.19287
	andl	$4, %eax	#, D.19287
	testb	%al, %al	# D.19287
	jne	.L445	#,
	.loc 1 2857 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	%rax, %rdi	# tmp62,
	call	record_last_mem_set_info	#
.L445:
	.loc 1 2858 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	mark_call, .-mark_call
	.type	mark_set, @function
mark_set:
.LFB54:
	.loc 1 2865 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pat, pat
	movq	%rsi, -32(%rbp)	# insn, insn
	.loc 1 2866 0
	movq	-24(%rbp), %rax	# pat, tmp70
	movq	8(%rax), %rax	# pat_2(D)->fld[0].rtx, tmp71
	movq	%rax, -8(%rbp)	# tmp71, dest
	.loc 1 2868 0
	jmp	.L448	#
.L449:
	.loc 1 2872 0
	movq	-8(%rbp), %rax	# dest, tmp72
	movq	8(%rax), %rax	# dest_1->fld[0].rtx, tmp73
	movq	%rax, -8(%rbp)	# tmp73, dest
.L448:
	.loc 1 2868 0 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp74
	movzwl	(%rax), %eax	# dest_1->code, D.19288
	cmpw	$63, %ax	#, D.19288
	je	.L449	#,
	.loc 1 2869 0
	movq	-8(%rbp), %rax	# dest, tmp75
	movzwl	(%rax), %eax	# dest_1->code, D.19288
	cmpw	$133, %ax	#, D.19288
	je	.L449	#,
	.loc 1 2870 0
	movq	-8(%rbp), %rax	# dest, tmp76
	movzwl	(%rax), %eax	# dest_1->code, D.19288
	cmpw	$132, %ax	#, D.19288
	je	.L449	#,
	.loc 1 2871 0
	movq	-8(%rbp), %rax	# dest, tmp77
	movzwl	(%rax), %eax	# dest_1->code, D.19288
	cmpw	$64, %ax	#, D.19288
	je	.L449	#,
	.loc 1 2874 0
	movq	-8(%rbp), %rax	# dest, tmp78
	movzwl	(%rax), %eax	# dest_1->code, D.19288
	cmpw	$61, %ax	#, D.19288
	jne	.L450	#,
	.loc 1 2875 0
	movq	-8(%rbp), %rax	# dest, tmp79
	movl	8(%rax), %eax	# dest_1->fld[0].rtuint, D.19289
	movl	%eax, %edx	# D.19289, D.19290
	movq	reg_set_bitmap(%rip), %rax	# reg_set_bitmap, reg_set_bitmap.290
	movl	%edx, %esi	# D.19290,
	movq	%rax, %rdi	# reg_set_bitmap.290,
	call	bitmap_set_bit	#
	jmp	.L451	#
.L450:
	.loc 1 2876 0
	movq	-8(%rbp), %rax	# dest, tmp80
	movzwl	(%rax), %eax	# dest_1->code, D.19288
	cmpw	$66, %ax	#, D.19288
	jne	.L451	#,
	.loc 1 2877 0
	movq	-32(%rbp), %rax	# insn, tmp81
	movq	%rax, %rdi	# tmp81,
	call	record_last_mem_set_info	#
.L451:
	.loc 1 2879 0
	movq	-24(%rbp), %rax	# pat, tmp82
	movq	16(%rax), %rax	# pat_2(D)->fld[1].rtx, D.19291
	movzwl	(%rax), %eax	# _14->code, D.19288
	cmpw	$50, %ax	#, D.19288
	jne	.L447	#,
	.loc 1 2880 0
	movq	-32(%rbp), %rax	# insn, tmp83
	movq	%rax, %rdi	# tmp83,
	call	mark_call	#
.L447:
	.loc 1 2881 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	mark_set, .-mark_set
	.type	mark_clobber, @function
mark_clobber:
.LFB55:
	.loc 1 2888 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pat, pat
	movq	%rsi, -32(%rbp)	# insn, insn
	.loc 1 2889 0
	movq	-24(%rbp), %rax	# pat, tmp65
	movq	8(%rax), %rax	# pat_2(D)->fld[0].rtx, tmp66
	movq	%rax, -8(%rbp)	# tmp66, clob
	.loc 1 2891 0
	jmp	.L454	#
.L455:
	.loc 1 2892 0
	movq	-8(%rbp), %rax	# clob, tmp67
	movq	8(%rax), %rax	# clob_1->fld[0].rtx, tmp68
	movq	%rax, -8(%rbp)	# tmp68, clob
.L454:
	.loc 1 2891 0 discriminator 1
	movq	-8(%rbp), %rax	# clob, tmp69
	movzwl	(%rax), %eax	# clob_1->code, D.19292
	cmpw	$63, %ax	#, D.19292
	je	.L455	#,
	.loc 1 2891 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# clob, tmp70
	movzwl	(%rax), %eax	# clob_1->code, D.19292
	cmpw	$64, %ax	#, D.19292
	je	.L455	#,
	.loc 1 2894 0 is_stmt 1
	movq	-8(%rbp), %rax	# clob, tmp71
	movzwl	(%rax), %eax	# clob_1->code, D.19292
	cmpw	$61, %ax	#, D.19292
	jne	.L456	#,
	.loc 1 2895 0
	movq	-8(%rbp), %rax	# clob, tmp72
	movl	8(%rax), %eax	# clob_1->fld[0].rtuint, D.19293
	movl	%eax, %edx	# D.19293, D.19294
	movq	reg_set_bitmap(%rip), %rax	# reg_set_bitmap, reg_set_bitmap.291
	movl	%edx, %esi	# D.19294,
	movq	%rax, %rdi	# reg_set_bitmap.291,
	call	bitmap_set_bit	#
	jmp	.L453	#
.L456:
	.loc 1 2897 0
	movq	-32(%rbp), %rax	# insn, tmp73
	movq	%rax, %rdi	# tmp73,
	call	record_last_mem_set_info	#
.L453:
	.loc 1 2898 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	mark_clobber, .-mark_clobber
	.type	mark_oprs_set, @function
mark_oprs_set:
.LFB56:
	.loc 1 2906 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 2907 0
	movq	-40(%rbp), %rax	# insn, tmp69
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, tmp70
	movq	%rax, -16(%rbp)	# tmp70, pat
	.loc 1 2910 0
	movq	-16(%rbp), %rax	# pat, tmp71
	movzwl	(%rax), %eax	# pat_3->code, D.19295
	cmpw	$47, %ax	#, D.19295
	jne	.L459	#,
	.loc 1 2911 0
	movq	-40(%rbp), %rdx	# insn, tmp72
	movq	-16(%rbp), %rax	# pat, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	mark_set	#
	jmp	.L458	#
.L459:
	.loc 1 2912 0
	movq	-16(%rbp), %rax	# pat, tmp74
	movzwl	(%rax), %eax	# pat_3->code, D.19295
	cmpw	$39, %ax	#, D.19295
	jne	.L461	#,
	.loc 1 2913 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L462	#
.L466:
.LBB29:
	.loc 1 2915 0
	movq	-16(%rbp), %rax	# pat, tmp75
	movq	8(%rax), %rax	# pat_3->fld[0].rtvec, D.19296
	movl	-20(%rbp), %edx	# i, tmp77
	movslq	%edx, %rdx	# tmp77, tmp76
	movq	8(%rax,%rdx,8), %rax	# _9->elem, tmp78
	movq	%rax, -8(%rbp)	# tmp78, x
	.loc 1 2917 0
	movq	-8(%rbp), %rax	# x, tmp79
	movzwl	(%rax), %eax	# x_10->code, D.19295
	cmpw	$47, %ax	#, D.19295
	jne	.L463	#,
	.loc 1 2918 0
	movq	-40(%rbp), %rdx	# insn, tmp80
	movq	-8(%rbp), %rax	# x, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	mark_set	#
	jmp	.L464	#
.L463:
	.loc 1 2919 0
	movq	-8(%rbp), %rax	# x, tmp82
	movzwl	(%rax), %eax	# x_10->code, D.19295
	cmpw	$49, %ax	#, D.19295
	jne	.L465	#,
	.loc 1 2920 0
	movq	-40(%rbp), %rdx	# insn, tmp83
	movq	-8(%rbp), %rax	# x, tmp84
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	mark_clobber	#
	jmp	.L464	#
.L465:
	.loc 1 2921 0
	movq	-8(%rbp), %rax	# x, tmp85
	movzwl	(%rax), %eax	# x_10->code, D.19295
	cmpw	$50, %ax	#, D.19295
	jne	.L464	#,
	.loc 1 2922 0
	movq	-40(%rbp), %rax	# insn, tmp86
	movq	%rax, %rdi	# tmp86,
	call	mark_call	#
.L464:
.LBE29:
	.loc 1 2913 0
	addl	$1, -20(%rbp)	#, i
.L462:
	.loc 1 2913 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# pat, tmp87
	movq	8(%rax), %rax	# pat_3->fld[0].rtvec, D.19296
	movl	(%rax), %eax	# _7->num_elem, D.19297
	cmpl	-20(%rbp), %eax	# i, D.19297
	jg	.L466	#,
	jmp	.L458	#
.L461:
	.loc 1 2925 0 is_stmt 1
	movq	-16(%rbp), %rax	# pat, tmp88
	movzwl	(%rax), %eax	# pat_3->code, D.19295
	cmpw	$49, %ax	#, D.19295
	jne	.L467	#,
	.loc 1 2926 0
	movq	-40(%rbp), %rdx	# insn, tmp89
	movq	-16(%rbp), %rax	# pat, tmp90
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	mark_clobber	#
	jmp	.L458	#
.L467:
	.loc 1 2927 0
	movq	-16(%rbp), %rax	# pat, tmp91
	movzwl	(%rax), %eax	# pat_3->code, D.19295
	cmpw	$50, %ax	#, D.19295
	jne	.L458	#,
	.loc 1 2928 0
	movq	-40(%rbp), %rax	# insn, tmp92
	movq	%rax, %rdi	# tmp92,
	call	mark_call	#
.L458:
	.loc 1 2929 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	mark_oprs_set, .-mark_oprs_set
	.type	alloc_rd_mem, @function
alloc_rd_mem:
.LFB57:
	.loc 1 2939 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# n_blocks, n_blocks
	movl	%esi, -8(%rbp)	# n_insns, n_insns
	.loc 1 2940 0
	movl	-8(%rbp), %edx	# n_insns, n_insns.292
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.293
	movl	%edx, %esi	# n_insns.292,
	movl	%eax, %edi	# n_blocks.293,
	call	sbitmap_vector_alloc	#
	movq	%rax, rd_kill(%rip)	# rd_kill.294, rd_kill
	.loc 1 2941 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.295
	movl	%eax, %edx	# n_basic_blocks.295, n_basic_blocks.296
	movq	rd_kill(%rip), %rax	# rd_kill, rd_kill.297
	movl	%edx, %esi	# n_basic_blocks.296,
	movq	%rax, %rdi	# rd_kill.297,
	call	sbitmap_vector_zero	#
	.loc 1 2943 0
	movl	-8(%rbp), %edx	# n_insns, n_insns.298
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.299
	movl	%edx, %esi	# n_insns.298,
	movl	%eax, %edi	# n_blocks.299,
	call	sbitmap_vector_alloc	#
	movq	%rax, rd_gen(%rip)	# rd_gen.300, rd_gen
	.loc 1 2944 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.301
	movl	%eax, %edx	# n_basic_blocks.301, n_basic_blocks.302
	movq	rd_gen(%rip), %rax	# rd_gen, rd_gen.303
	movl	%edx, %esi	# n_basic_blocks.302,
	movq	%rax, %rdi	# rd_gen.303,
	call	sbitmap_vector_zero	#
	.loc 1 2946 0
	movl	-8(%rbp), %edx	# n_insns, n_insns.304
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.305
	movl	%edx, %esi	# n_insns.304,
	movl	%eax, %edi	# n_blocks.305,
	call	sbitmap_vector_alloc	#
	movq	%rax, reaching_defs(%rip)	# reaching_defs.306, reaching_defs
	.loc 1 2947 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.307
	movl	%eax, %edx	# n_basic_blocks.307, n_basic_blocks.308
	movq	reaching_defs(%rip), %rax	# reaching_defs, reaching_defs.309
	movl	%edx, %esi	# n_basic_blocks.308,
	movq	%rax, %rdi	# reaching_defs.309,
	call	sbitmap_vector_zero	#
	.loc 1 2949 0
	movl	-8(%rbp), %edx	# n_insns, n_insns.310
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.311
	movl	%edx, %esi	# n_insns.310,
	movl	%eax, %edi	# n_blocks.311,
	call	sbitmap_vector_alloc	#
	movq	%rax, rd_out(%rip)	# rd_out.312, rd_out
	.loc 1 2950 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.313
	movl	%eax, %edx	# n_basic_blocks.313, n_basic_blocks.314
	movq	rd_out(%rip), %rax	# rd_out, rd_out.315
	movl	%edx, %esi	# n_basic_blocks.314,
	movq	%rax, %rdi	# rd_out.315,
	call	sbitmap_vector_zero	#
	.loc 1 2951 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	alloc_rd_mem, .-alloc_rd_mem
	.type	free_rd_mem, @function
free_rd_mem:
.LFB58:
	.loc 1 2957 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2958 0
	movq	rd_kill(%rip), %rax	# rd_kill, rd_kill.316
	movq	%rax, %rdi	# rd_kill.316,
	call	free	#
	.loc 1 2959 0
	movq	rd_gen(%rip), %rax	# rd_gen, rd_gen.317
	movq	%rax, %rdi	# rd_gen.317,
	call	free	#
	.loc 1 2960 0
	movq	reaching_defs(%rip), %rax	# reaching_defs, reaching_defs.318
	movq	%rax, %rdi	# reaching_defs.318,
	call	free	#
	.loc 1 2961 0
	movq	rd_out(%rip), %rax	# rd_out, rd_out.319
	movq	%rax, %rdi	# rd_out.319,
	call	free	#
	.loc 1 2962 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	free_rd_mem, .-free_rd_mem
	.type	handle_rd_kill_set, @function
handle_rd_kill_set:
.LFB59:
	.loc 1 2971 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# regno, regno
	movq	%rdx, -40(%rbp)	# bb, bb
	.loc 1 2974 0
	movq	reg_set_table(%rip), %rax	# reg_set_table, reg_set_table.320
	movl	-28(%rbp), %edx	# regno, tmp104
	movslq	%edx, %rdx	# tmp104, D.19298
	salq	$3, %rdx	#, D.19298
	addq	%rdx, %rax	# D.19298, D.19299
	movq	(%rax), %rax	# *_6, tmp105
	movq	%rax, -8(%rbp)	# tmp105, this_reg
	jmp	.L471	#
.L473:
	.loc 1 2975 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.321
	movq	-8(%rbp), %rdx	# this_reg, tmp106
	movq	8(%rdx), %rdx	# this_reg_1->insn, D.19300
	movl	8(%rdx), %edx	# _9->fld[0].rtint, D.19301
	movslq	%edx, %rdx	# D.19301, tmp107
	addq	$4, %rdx	#, tmp108
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.321_8->data.bb, D.19302
	movl	88(%rax), %ecx	# _11->index, D.19301
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.322
	movq	-24(%rbp), %rdx	# insn, tmp109
	movl	8(%rdx), %edx	# insn_14(D)->fld[0].rtint, D.19301
	movslq	%edx, %rdx	# D.19301, tmp110
	addq	$4, %rdx	#, tmp111
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.322_13->data.bb, D.19302
	movl	88(%rax), %eax	# _16->index, D.19301
	cmpl	%eax, %ecx	# D.19301, D.19301
	je	.L472	#,
	.loc 1 2976 0
	movq	rd_kill(%rip), %rdx	# rd_kill, rd_kill.323
	movq	-40(%rbp), %rax	# bb, tmp112
	movl	88(%rax), %eax	# bb_19(D)->index, D.19301
	cltq
	salq	$3, %rax	#, D.19298
	addq	%rdx, %rax	# rd_kill.323, D.19303
	movq	(%rax), %rdx	# *_23, D.19304
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.324
	movq	-8(%rbp), %rax	# this_reg, tmp113
	movq	8(%rax), %rax	# this_reg_1->insn, D.19300
	movl	8(%rax), %eax	# _26->fld[0].rtint, D.19301
	cltq
	salq	$2, %rax	#, D.19298
	addq	%rcx, %rax	# uid_cuid.324, D.19305
	movl	(%rax), %eax	# *_30, D.19301
	shrl	$6, %eax	#, D.19306
	movq	rd_kill(%rip), %rsi	# rd_kill, rd_kill.325
	movq	-40(%rbp), %rcx	# bb, tmp114
	movl	88(%rcx), %ecx	# bb_19(D)->index, D.19301
	movslq	%ecx, %rcx	# D.19301, D.19298
	salq	$3, %rcx	#, D.19298
	addq	%rsi, %rcx	# rd_kill.325, D.19303
	movq	(%rcx), %rcx	# *_38, D.19304
	movl	%eax, %esi	# D.19306, tmp115
	addq	$2, %rsi	#, tmp116
	movq	(%rcx,%rsi,8), %rsi	# _39->elms, D.19298
	movq	uid_cuid(%rip), %rdi	# uid_cuid, uid_cuid.326
	movq	-8(%rbp), %rcx	# this_reg, tmp117
	movq	8(%rcx), %rcx	# this_reg_1->insn, D.19300
	movl	8(%rcx), %ecx	# _42->fld[0].rtint, D.19301
	movslq	%ecx, %rcx	# D.19301, D.19298
	salq	$2, %rcx	#, D.19298
	addq	%rdi, %rcx	# uid_cuid.326, D.19305
	movl	(%rcx), %ecx	# *_46, D.19301
	andl	$63, %ecx	#, D.19301
	movl	$1, %edi	#, tmp118
	salq	%cl, %rdi	# D.19301, D.19298
	movq	%rdi, %rcx	# D.19298, D.19298
	orq	%rsi, %rcx	# D.19298, D.19298
	movl	%eax, %eax	# D.19306, tmp119
	addq	$2, %rax	#, tmp120
	movq	%rcx, (%rdx,%rax,8)	# D.19298, _24->elms
.L472:
	.loc 1 2974 0
	movq	-8(%rbp), %rax	# this_reg, tmp121
	movq	(%rax), %rax	# this_reg_1->next, tmp122
	movq	%rax, -8(%rbp)	# tmp122, this_reg
.L471:
	.loc 1 2974 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, this_reg
	jne	.L473	#,
	.loc 1 2977 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	handle_rd_kill_set, .-handle_rd_kill_set
	.type	compute_kill_rd, @function
compute_kill_rd:
.LFB60:
	.loc 1 2983 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 2996 0
	movl	$0, -36(%rbp)	#, bb
	jmp	.L475	#
.L488:
	.loc 1 2997 0
	movl	$0, -32(%rbp)	#, cuid
	jmp	.L476	#
.L487:
	.loc 1 2998 0
	movq	rd_gen(%rip), %rax	# rd_gen, rd_gen.327
	movl	-36(%rbp), %edx	# bb, tmp109
	movslq	%edx, %rdx	# tmp109, D.19307
	salq	$3, %rdx	#, D.19307
	addq	%rdx, %rax	# D.19307, D.19308
	movq	(%rax), %rax	# *_12, D.19309
	movl	-32(%rbp), %edx	# cuid, cuid.328
	shrl	$6, %edx	#, D.19310
	movl	%edx, %edx	# D.19310, tmp110
	addq	$2, %rdx	#, tmp111
	movq	(%rax,%rdx,8), %rdx	# _13->elms, D.19307
	movl	-32(%rbp), %eax	# cuid, tmp112
	andl	$63, %eax	#, D.19311
	movl	%eax, %ecx	# D.19311, tmp147
	shrq	%cl, %rdx	# tmp147, D.19307
	movq	%rdx, %rax	# D.19307, D.19307
	andl	$1, %eax	#, D.19307
	testq	%rax, %rax	# D.19307
	je	.L477	#,
.LBB30:
	.loc 1 3000 0
	movq	cuid_insn(%rip), %rax	# cuid_insn, cuid_insn.329
	movl	-32(%rbp), %edx	# cuid, tmp113
	movslq	%edx, %rdx	# tmp113, D.19307
	salq	$3, %rdx	#, D.19307
	addq	%rdx, %rax	# D.19307, D.19312
	movq	(%rax), %rax	# *_23, tmp114
	movq	%rax, -16(%rbp)	# tmp114, insn
	.loc 1 3001 0
	movq	-16(%rbp), %rax	# insn, tmp115
	movq	32(%rax), %rax	# insn_24->fld[3].rtx, tmp116
	movq	%rax, -8(%rbp)	# tmp116, pat
	.loc 1 3003 0
	movq	-16(%rbp), %rax	# insn, tmp117
	movzwl	(%rax), %eax	# insn_24->code, D.19313
	cmpw	$34, %ax	#, D.19313
	jne	.L478	#,
	.loc 1 3005 0
	movl	$0, -28(%rbp)	#, regno
	jmp	.L479	#
.L481:
	.loc 1 3006 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.330
	movl	-28(%rbp), %eax	# regno, regno.331
	movl	%eax, %ecx	# regno.331, tmp149
	shrq	%cl, %rdx	# tmp149, D.19307
	movq	%rdx, %rax	# D.19307, D.19307
	andl	$1, %eax	#, D.19307
	testq	%rax, %rax	# D.19307
	je	.L480	#,
	.loc 1 3007 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.332
	movl	-36(%rbp), %edx	# bb, tmp119
	movslq	%edx, %rdx	# tmp119, tmp118
	addq	$4, %rdx	#, tmp120
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.332_32->data.bb, D.19314
	movl	-28(%rbp), %ecx	# regno, regno.333
	movq	-16(%rbp), %rax	# insn, tmp121
	movl	%ecx, %esi	# regno.333,
	movq	%rax, %rdi	# tmp121,
	call	handle_rd_kill_set	#
.L480:
	.loc 1 3005 0
	addl	$1, -28(%rbp)	#, regno
.L479:
	.loc 1 3005 0 is_stmt 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, regno
	jbe	.L481	#,
.L478:
	.loc 1 3010 0 is_stmt 1
	movq	-8(%rbp), %rax	# pat, tmp122
	movzwl	(%rax), %eax	# pat_25->code, D.19313
	cmpw	$39, %ax	#, D.19313
	jne	.L482	#,
	.loc 1 3012 0
	movq	-8(%rbp), %rax	# pat, tmp123
	movq	8(%rax), %rax	# pat_25->fld[0].rtvec, D.19315
	movl	(%rax), %eax	# _37->num_elem, D.19311
	subl	$1, %eax	#, tmp124
	movl	%eax, -24(%rbp)	# tmp124, i
	jmp	.L483	#
.L486:
.LBB31:
	.loc 1 3014 0
	movq	-8(%rbp), %rax	# pat, tmp125
	movq	8(%rax), %rax	# pat_25->fld[0].rtvec, D.19315
	movl	-24(%rbp), %edx	# i, tmp127
	movslq	%edx, %rdx	# tmp127, tmp126
	movq	8(%rax,%rdx,8), %rax	# _40->elem, D.19316
	movzwl	(%rax), %eax	# _41->code, D.19313
	movzwl	%ax, %eax	# D.19313, tmp128
	movl	%eax, -20(%rbp)	# tmp128, code
	.loc 1 3016 0
	cmpl	$47, -20(%rbp)	#, code
	je	.L484	#,
	.loc 1 3016 0 is_stmt 0 discriminator 1
	cmpl	$49, -20(%rbp)	#, code
	jne	.L485	#,
.L484:
	.loc 1 3017 0 is_stmt 1
	movq	-8(%rbp), %rax	# pat, tmp129
	movq	8(%rax), %rax	# pat_25->fld[0].rtvec, D.19315
	movl	-24(%rbp), %edx	# i, tmp131
	movslq	%edx, %rdx	# tmp131, tmp130
	movq	8(%rax,%rdx,8), %rax	# _44->elem, D.19316
	movq	8(%rax), %rax	# _45->fld[0].rtx, D.19316
	movzwl	(%rax), %eax	# _46->code, D.19313
	cmpw	$61, %ax	#, D.19313
	jne	.L485	#,
	.loc 1 3020 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.334
	.loc 1 3018 0
	movl	-36(%rbp), %edx	# bb, tmp133
	movslq	%edx, %rdx	# tmp133, tmp132
	addq	$4, %rdx	#, tmp134
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.334_48->data.bb, D.19314
	.loc 1 3019 0
	movq	-8(%rbp), %rax	# pat, tmp135
	movq	8(%rax), %rax	# pat_25->fld[0].rtvec, D.19315
	movl	-24(%rbp), %ecx	# i, tmp137
	movslq	%ecx, %rcx	# tmp137, tmp136
	movq	8(%rax,%rcx,8), %rax	# _50->elem, D.19316
	movq	8(%rax), %rax	# _51->fld[0].rtx, D.19316
	movl	8(%rax), %eax	# _52->fld[0].rtuint, D.19310
	.loc 1 3018 0
	movl	%eax, %ecx	# D.19310, D.19311
	movq	-16(%rbp), %rax	# insn, tmp138
	movl	%ecx, %esi	# D.19311,
	movq	%rax, %rdi	# tmp138,
	call	handle_rd_kill_set	#
.L485:
.LBE31:
	.loc 1 3012 0
	subl	$1, -24(%rbp)	#, i
.L483:
	.loc 1 3012 0 is_stmt 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, i
	jns	.L486	#,
	jmp	.L477	#
.L482:
	.loc 1 3023 0 is_stmt 1
	movq	-8(%rbp), %rax	# pat, tmp139
	movzwl	(%rax), %eax	# pat_25->code, D.19313
	cmpw	$47, %ax	#, D.19313
	jne	.L477	#,
	.loc 1 3023 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pat, tmp140
	movq	8(%rax), %rax	# pat_25->fld[0].rtx, D.19316
	movzwl	(%rax), %eax	# _57->code, D.19313
	cmpw	$61, %ax	#, D.19313
	jne	.L477	#,
	.loc 1 3026 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.335
	movl	-36(%rbp), %edx	# bb, tmp142
	movslq	%edx, %rdx	# tmp142, tmp141
	addq	$4, %rdx	#, tmp143
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.335_59->data.bb, D.19314
	movq	-8(%rbp), %rax	# pat, tmp144
	movq	8(%rax), %rax	# pat_25->fld[0].rtx, D.19316
	movl	8(%rax), %eax	# _61->fld[0].rtuint, D.19310
	movl	%eax, %ecx	# D.19310, D.19311
	movq	-16(%rbp), %rax	# insn, tmp145
	movl	%ecx, %esi	# D.19311,
	movq	%rax, %rdi	# tmp145,
	call	handle_rd_kill_set	#
.L477:
.LBE30:
	.loc 1 2997 0
	addl	$1, -32(%rbp)	#, cuid
.L476:
	.loc 1 2997 0 is_stmt 0 discriminator 1
	movl	max_cuid(%rip), %eax	# max_cuid, max_cuid.336
	cmpl	%eax, -32(%rbp)	# max_cuid.336, cuid
	jl	.L487	#,
	.loc 1 2996 0 is_stmt 1
	addl	$1, -36(%rbp)	#, bb
.L475:
	.loc 1 2996 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.337
	cmpl	%eax, -36(%rbp)	# n_basic_blocks.337, bb
	jl	.L488	#,
	.loc 1 3028 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	compute_kill_rd, .-compute_kill_rd
	.section	.rodata
	.align 8
.LC10:
	.string	"reaching def computation: %d passes\n"
	.text
	.type	compute_rd, @function
compute_rd:
.LFB61:
	.loc 1 3037 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 3040 0
	movl	$0, -12(%rbp)	#, bb
	jmp	.L490	#
.L491:
	.loc 1 3041 0 discriminator 2
	movq	rd_gen(%rip), %rax	# rd_gen, rd_gen.338
	movl	-12(%rbp), %edx	# bb, tmp100
	movslq	%edx, %rdx	# tmp100, D.19317
	salq	$3, %rdx	#, D.19317
	addq	%rdx, %rax	# D.19317, D.19318
	movq	(%rax), %rdx	# *_11, D.19319
	movq	rd_out(%rip), %rax	# rd_out, rd_out.339
	movl	-12(%rbp), %ecx	# bb, tmp101
	movslq	%ecx, %rcx	# tmp101, D.19317
	salq	$3, %rcx	#, D.19317
	addq	%rcx, %rax	# D.19317, D.19318
	movq	(%rax), %rax	# *_16, D.19319
	movq	%rdx, %rsi	# D.19319,
	movq	%rax, %rdi	# D.19319,
	call	sbitmap_copy	#
	.loc 1 3040 0 discriminator 2
	addl	$1, -12(%rbp)	#, bb
.L490:
	.loc 1 3040 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.340
	cmpl	%eax, -12(%rbp)	# n_basic_blocks.340, bb
	jl	.L491	#,
	.loc 1 3043 0 is_stmt 1
	movl	$0, -4(%rbp)	#, passes
	.loc 1 3044 0
	movl	$1, -8(%rbp)	#, changed
	.loc 1 3045 0
	jmp	.L492	#
.L495:
	.loc 1 3047 0
	movl	$0, -8(%rbp)	#, changed
	.loc 1 3048 0
	movl	$0, -12(%rbp)	#, bb
	jmp	.L493	#
.L494:
	.loc 1 3050 0 discriminator 2
	movq	rd_out(%rip), %rcx	# rd_out, rd_out.341
	movq	reaching_defs(%rip), %rax	# reaching_defs, reaching_defs.342
	movl	-12(%rbp), %edx	# bb, tmp102
	movslq	%edx, %rdx	# tmp102, D.19317
	salq	$3, %rdx	#, D.19317
	addq	%rdx, %rax	# D.19317, D.19318
	movq	(%rax), %rax	# *_28, D.19319
	movl	-12(%rbp), %edx	# bb, tmp103
	movq	%rcx, %rsi	# rd_out.341,
	movq	%rax, %rdi	# D.19319,
	call	sbitmap_union_of_preds	#
	.loc 1 3052 0 discriminator 2
	movq	rd_kill(%rip), %rax	# rd_kill, rd_kill.343
	movl	-12(%rbp), %edx	# bb, tmp104
	movslq	%edx, %rdx	# tmp104, D.19317
	salq	$3, %rdx	#, D.19317
	addq	%rdx, %rax	# D.19317, D.19318
	.loc 1 3051 0 discriminator 2
	movq	(%rax), %rcx	# *_33, D.19319
	.loc 1 3052 0 discriminator 2
	movq	reaching_defs(%rip), %rax	# reaching_defs, reaching_defs.344
	movl	-12(%rbp), %edx	# bb, tmp105
	movslq	%edx, %rdx	# tmp105, D.19317
	salq	$3, %rdx	#, D.19317
	addq	%rdx, %rax	# D.19317, D.19318
	.loc 1 3051 0 discriminator 2
	movq	(%rax), %rdx	# *_38, D.19319
	movq	rd_gen(%rip), %rax	# rd_gen, rd_gen.345
	movl	-12(%rbp), %esi	# bb, tmp106
	movslq	%esi, %rsi	# tmp106, D.19317
	salq	$3, %rsi	#, D.19317
	addq	%rsi, %rax	# D.19317, D.19318
	movq	(%rax), %rsi	# *_43, D.19319
	movq	rd_out(%rip), %rax	# rd_out, rd_out.346
	movl	-12(%rbp), %edi	# bb, tmp107
	movslq	%edi, %rdi	# tmp107, D.19317
	salq	$3, %rdi	#, D.19317
	addq	%rdi, %rax	# D.19317, D.19318
	movq	(%rax), %rax	# *_48, D.19319
	movq	%rax, %rdi	# D.19319,
	call	sbitmap_union_of_diff	#
	orl	%eax, -8(%rbp)	# D.19320, changed
	.loc 1 3048 0 discriminator 2
	addl	$1, -12(%rbp)	#, bb
.L493:
	.loc 1 3048 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.347
	cmpl	%eax, -12(%rbp)	# n_basic_blocks.347, bb
	jl	.L494	#,
	.loc 1 3054 0 is_stmt 1
	addl	$1, -4(%rbp)	#, passes
.L492:
	.loc 1 3045 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, changed
	jne	.L495	#,
	.loc 1 3057 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.348
	testq	%rax, %rax	# gcse_file.348
	je	.L489	#,
	.loc 1 3058 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.349
	movl	-4(%rbp), %edx	# passes, tmp108
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# gcse_file.349,
	movl	$0, %eax	#,
	call	fprintf	#
.L489:
	.loc 1 3059 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	compute_rd, .-compute_rd
	.type	alloc_avail_expr_mem, @function
alloc_avail_expr_mem:
.LFB62:
	.loc 1 3068 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# n_blocks, n_blocks
	movl	%esi, -8(%rbp)	# n_exprs, n_exprs
	.loc 1 3069 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.350
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.351
	movl	%edx, %esi	# n_exprs.350,
	movl	%eax, %edi	# n_blocks.351,
	call	sbitmap_vector_alloc	#
	movq	%rax, ae_kill(%rip)	# ae_kill.352, ae_kill
	.loc 1 3070 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.353
	movl	%eax, %edx	# n_basic_blocks.353, n_basic_blocks.354
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.355
	movl	%edx, %esi	# n_basic_blocks.354,
	movq	%rax, %rdi	# ae_kill.355,
	call	sbitmap_vector_zero	#
	.loc 1 3072 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.356
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.357
	movl	%edx, %esi	# n_exprs.356,
	movl	%eax, %edi	# n_blocks.357,
	call	sbitmap_vector_alloc	#
	movq	%rax, ae_gen(%rip)	# ae_gen.358, ae_gen
	.loc 1 3073 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.359
	movl	%eax, %edx	# n_basic_blocks.359, n_basic_blocks.360
	movq	ae_gen(%rip), %rax	# ae_gen, ae_gen.361
	movl	%edx, %esi	# n_basic_blocks.360,
	movq	%rax, %rdi	# ae_gen.361,
	call	sbitmap_vector_zero	#
	.loc 1 3075 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.362
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.363
	movl	%edx, %esi	# n_exprs.362,
	movl	%eax, %edi	# n_blocks.363,
	call	sbitmap_vector_alloc	#
	movq	%rax, ae_in(%rip)	# ae_in.364, ae_in
	.loc 1 3076 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.365
	movl	%eax, %edx	# n_basic_blocks.365, n_basic_blocks.366
	movq	ae_in(%rip), %rax	# ae_in, ae_in.367
	movl	%edx, %esi	# n_basic_blocks.366,
	movq	%rax, %rdi	# ae_in.367,
	call	sbitmap_vector_zero	#
	.loc 1 3078 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.368
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.369
	movl	%edx, %esi	# n_exprs.368,
	movl	%eax, %edi	# n_blocks.369,
	call	sbitmap_vector_alloc	#
	movq	%rax, ae_out(%rip)	# ae_out.370, ae_out
	.loc 1 3079 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.371
	movl	%eax, %edx	# n_basic_blocks.371, n_basic_blocks.372
	movq	ae_out(%rip), %rax	# ae_out, ae_out.373
	movl	%edx, %esi	# n_basic_blocks.372,
	movq	%rax, %rdi	# ae_out.373,
	call	sbitmap_vector_zero	#
	.loc 1 3080 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	alloc_avail_expr_mem, .-alloc_avail_expr_mem
	.type	free_avail_expr_mem, @function
free_avail_expr_mem:
.LFB63:
	.loc 1 3084 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3085 0
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.374
	movq	%rax, %rdi	# ae_kill.374,
	call	free	#
	.loc 1 3086 0
	movq	ae_gen(%rip), %rax	# ae_gen, ae_gen.375
	movq	%rax, %rdi	# ae_gen.375,
	call	free	#
	.loc 1 3087 0
	movq	ae_in(%rip), %rax	# ae_in, ae_in.376
	movq	%rax, %rdi	# ae_in.376,
	call	free	#
	.loc 1 3088 0
	movq	ae_out(%rip), %rax	# ae_out, ae_out.377
	movq	%rax, %rdi	# ae_out.377,
	call	free	#
	.loc 1 3089 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	free_avail_expr_mem, .-free_avail_expr_mem
	.type	compute_ae_gen, @function
compute_ae_gen:
.LFB64:
	.loc 1 3095 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3104 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L500	#
.L505:
	.loc 1 3105 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.378
	movl	-20(%rbp), %edx	# i, D.19322
	salq	$3, %rdx	#, D.19322
	addq	%rdx, %rax	# D.19322, D.19323
	movq	(%rax), %rax	# *_9, tmp92
	movq	%rax, -16(%rbp)	# tmp92, expr
	jmp	.L501	#
.L504:
	.loc 1 3106 0
	movq	-16(%rbp), %rax	# expr, tmp93
	movq	32(%rax), %rax	# expr_2->avail_occr, tmp94
	movq	%rax, -8(%rbp)	# tmp94, occr
	jmp	.L502	#
.L503:
	.loc 1 3107 0 discriminator 2
	movq	ae_gen(%rip), %rcx	# ae_gen, ae_gen.379
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.380
	movq	-8(%rbp), %rdx	# occr, tmp95
	movq	8(%rdx), %rdx	# occr_3->insn, D.19324
	movl	8(%rdx), %edx	# _14->fld[0].rtint, D.19325
	movslq	%edx, %rdx	# D.19325, tmp96
	addq	$4, %rdx	#, tmp97
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.380_13->data.bb, D.19326
	movl	88(%rax), %eax	# _16->index, D.19325
	cltq
	salq	$3, %rax	#, D.19322
	addq	%rcx, %rax	# ae_gen.379, D.19327
	movq	(%rax), %rdx	# *_20, D.19328
	movq	-16(%rbp), %rax	# expr, tmp98
	movl	8(%rax), %eax	# expr_2->bitmap_index, D.19325
	shrl	$6, %eax	#, D.19329
	movq	ae_gen(%rip), %rdi	# ae_gen, ae_gen.381
	movq	basic_block_for_insn(%rip), %rcx	# basic_block_for_insn, basic_block_for_insn.382
	movq	-8(%rbp), %rsi	# occr, tmp99
	movq	8(%rsi), %rsi	# occr_3->insn, D.19324
	movl	8(%rsi), %esi	# _27->fld[0].rtint, D.19325
	movslq	%esi, %rsi	# D.19325, tmp100
	addq	$4, %rsi	#, tmp101
	movq	(%rcx,%rsi,8), %rcx	# basic_block_for_insn.382_26->data.bb, D.19326
	movl	88(%rcx), %ecx	# _29->index, D.19325
	movslq	%ecx, %rcx	# D.19325, D.19322
	salq	$3, %rcx	#, D.19322
	addq	%rdi, %rcx	# ae_gen.381, D.19327
	movq	(%rcx), %rcx	# *_33, D.19328
	movl	%eax, %esi	# D.19329, tmp102
	addq	$2, %rsi	#, tmp103
	movq	(%rcx,%rsi,8), %rsi	# _34->elms, D.19322
	movq	-16(%rbp), %rcx	# expr, tmp104
	movl	8(%rcx), %ecx	# expr_2->bitmap_index, D.19325
	andl	$63, %ecx	#, D.19325
	movl	$1, %edi	#, tmp105
	salq	%cl, %rdi	# D.19325, D.19322
	movq	%rdi, %rcx	# D.19322, D.19322
	orq	%rsi, %rcx	# D.19322, D.19322
	movl	%eax, %eax	# D.19329, tmp106
	addq	$2, %rax	#, tmp107
	movq	%rcx, (%rdx,%rax,8)	# D.19322, _21->elms
	.loc 1 3106 0 discriminator 2
	movq	-8(%rbp), %rax	# occr, tmp108
	movq	(%rax), %rax	# occr_3->next, tmp109
	movq	%rax, -8(%rbp)	# tmp109, occr
.L502:
	.loc 1 3106 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, occr
	jne	.L503	#,
	.loc 1 3105 0 is_stmt 1
	movq	-16(%rbp), %rax	# expr, tmp110
	movq	16(%rax), %rax	# expr_2->next_same_hash, tmp111
	movq	%rax, -16(%rbp)	# tmp111, expr
.L501:
	.loc 1 3105 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, expr
	jne	.L504	#,
	.loc 1 3104 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L500:
	.loc 1 3104 0 is_stmt 0 discriminator 1
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.383
	cmpl	%eax, -20(%rbp)	# expr_hash_table_size.383, i
	jb	.L505	#,
	.loc 1 3108 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	compute_ae_gen, .-compute_ae_gen
	.type	expr_killed_p, @function
expr_killed_p:
.LFB65:
	.loc 1 3116 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# bb, bb
	.loc 1 3121 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L507	#,
	.loc 1 3122 0
	movl	$1, %eax	#, D.19330
	jmp	.L508	#
.L507:
	.loc 1 3124 0
	movq	-40(%rbp), %rax	# x, tmp98
	movzwl	(%rax), %eax	# x_4(D)->code, D.19331
	movzwl	%ax, %eax	# D.19331, tmp99
	movl	%eax, -12(%rbp)	# tmp99, code
	.loc 1 3125 0
	movl	-12(%rbp), %eax	# code, tmp101
	subl	$44, %eax	#, tmp100
	cmpl	$25, %eax	#, tmp100
	ja	.L524	#,
	movl	%eax, %eax	# tmp100, tmp102
	movq	.L511(,%rax,8), %rax	#, tmp103
	jmp	*%rax	# tmp103
	.section	.rodata
	.align 8
	.align 4
.L511:
	.quad	.L510
	.quad	.L510
	.quad	.L524
	.quad	.L524
	.quad	.L524
	.quad	.L524
	.quad	.L524
	.quad	.L524
	.quad	.L524
	.quad	.L524
	.quad	.L510
	.quad	.L510
	.quad	.L510
	.quad	.L524
	.quad	.L510
	.quad	.L510
	.quad	.L524
	.quad	.L512
	.quad	.L524
	.quad	.L524
	.quad	.L524
	.quad	.L524
	.quad	.L513
	.quad	.L510
	.quad	.L510
	.quad	.L510
	.text
.L512:
	.loc 1 3128 0
	movq	reg_set_in_block(%rip), %rdx	# reg_set_in_block, reg_set_in_block.384
	movq	-48(%rbp), %rax	# bb, tmp104
	movl	88(%rax), %eax	# bb_9(D)->index, D.19330
	cltq
	salq	$3, %rax	#, D.19332
	addq	%rdx, %rax	# reg_set_in_block.384, D.19333
	movq	(%rax), %rax	# *_13, D.19334
	movq	-40(%rbp), %rdx	# x, tmp105
	movl	8(%rdx), %edx	# x_4(D)->fld[0].rtuint, D.19335
	shrl	$6, %edx	#, D.19335
	movl	%edx, %edx	# D.19335, tmp106
	addq	$2, %rdx	#, tmp107
	movq	(%rax,%rdx,8), %rdx	# _14->elms, D.19332
	movq	-40(%rbp), %rax	# x, tmp108
	movl	8(%rax), %eax	# x_4(D)->fld[0].rtuint, D.19335
	andl	$63, %eax	#, D.19330
	movl	%eax, %ecx	# D.19330, tmp140
	shrq	%cl, %rdx	# tmp140, D.19332
	movq	%rdx, %rax	# D.19332, D.19332
	andl	$1, %eax	#, D.19330
	jmp	.L508	#
.L513:
	.loc 1 3131 0
	call	get_max_uid	#
	leal	1(%rax), %esi	#, D.19330
	movq	-40(%rbp), %rdx	# x, tmp109
	movq	-48(%rbp), %rax	# bb, tmp110
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp110,
	call	load_killed_in_block_p	#
	testl	%eax, %eax	# D.19330
	je	.L514	#,
	.loc 1 3132 0
	movl	$1, %eax	#, D.19330
	jmp	.L508	#
.L514:
	.loc 1 3134 0
	movq	-40(%rbp), %rax	# x, tmp111
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.19336
	movq	-48(%rbp), %rdx	# bb, tmp112
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# D.19336,
	call	expr_killed_p	#
	jmp	.L508	#
.L510:
	.loc 1 3146 0
	movl	$0, %eax	#, D.19330
	jmp	.L508	#
.L524:
	.loc 1 3149 0
	nop
	.loc 1 3152 0
	movl	-12(%rbp), %eax	# code, code.385
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19337
	movzbl	%al, %eax	# D.19337, D.19330
	subl	$1, %eax	#, tmp114
	movl	%eax, -20(%rbp)	# tmp114, i
	movl	-12(%rbp), %eax	# code, code.386
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp116
	movq	%rax, -8(%rbp)	# tmp116, fmt
	jmp	.L515	#
.L522:
	.loc 1 3154 0
	movl	-20(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, D.19338
	movq	-8(%rbp), %rax	# fmt, tmp118
	addq	%rdx, %rax	# D.19338, D.19339
	movzbl	(%rax), %eax	# *_38, D.19340
	cmpb	$101, %al	#, D.19340
	jne	.L516	#,
	.loc 1 3159 0
	cmpl	$0, -20(%rbp)	#, i
	jne	.L517	#,
	.loc 1 3160 0
	movq	-40(%rbp), %rax	# x, tmp119
	movl	-20(%rbp), %edx	# i, tmp121
	movslq	%edx, %rdx	# tmp121, tmp120
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.19336
	movq	-48(%rbp), %rdx	# bb, tmp122
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# D.19336,
	call	expr_killed_p	#
	jmp	.L508	#
.L517:
	.loc 1 3161 0
	movq	-40(%rbp), %rax	# x, tmp123
	movl	-20(%rbp), %edx	# i, tmp125
	movslq	%edx, %rdx	# tmp125, tmp124
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.19336
	movq	-48(%rbp), %rdx	# bb, tmp126
	movq	%rdx, %rsi	# tmp126,
	movq	%rax, %rdi	# D.19336,
	call	expr_killed_p	#
	testl	%eax, %eax	# D.19330
	je	.L518	#,
	.loc 1 3162 0
	movl	$1, %eax	#, D.19330
	jmp	.L508	#
.L516:
	.loc 1 3164 0
	movl	-20(%rbp), %eax	# i, tmp127
	movslq	%eax, %rdx	# tmp127, D.19338
	movq	-8(%rbp), %rax	# fmt, tmp128
	addq	%rdx, %rax	# D.19338, D.19339
	movzbl	(%rax), %eax	# *_46, D.19340
	cmpb	$69, %al	#, D.19340
	jne	.L518	#,
	.loc 1 3165 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L519	#
.L521:
	.loc 1 3166 0
	movq	-40(%rbp), %rax	# x, tmp129
	movl	-20(%rbp), %edx	# i, tmp131
	movslq	%edx, %rdx	# tmp131, tmp130
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.19341
	movl	-16(%rbp), %edx	# j, tmp133
	movslq	%edx, %rdx	# tmp133, tmp132
	movq	8(%rax,%rdx,8), %rax	# _51->elem, D.19336
	movq	-48(%rbp), %rdx	# bb, tmp134
	movq	%rdx, %rsi	# tmp134,
	movq	%rax, %rdi	# D.19336,
	call	expr_killed_p	#
	testl	%eax, %eax	# D.19330
	je	.L520	#,
	.loc 1 3167 0
	movl	$1, %eax	#, D.19330
	jmp	.L508	#
.L520:
	.loc 1 3165 0
	addl	$1, -16(%rbp)	#, j
.L519:
	.loc 1 3165 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp135
	movl	-20(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, tmp136
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.19341
	movl	(%rax), %eax	# _49->num_elem, D.19330
	cmpl	-16(%rbp), %eax	# j, D.19330
	jg	.L521	#,
.L518:
	.loc 1 3152 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L515:
	.loc 1 3152 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L522	#,
	.loc 1 3170 0 is_stmt 1
	movl	$0, %eax	#, D.19330
.L508:
	.loc 1 3171 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	expr_killed_p, .-expr_killed_p
	.type	compute_ae_kill, @function
compute_ae_kill:
.LFB66:
	.loc 1 3178 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ae_gen, ae_gen
	movq	%rsi, -32(%rbp)	# ae_kill, ae_kill
	.loc 1 3183 0
	movl	$0, -16(%rbp)	#, bb
	jmp	.L526	#
.L533:
	.loc 1 3184 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L527	#
.L532:
	.loc 1 3185 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.387
	movl	-12(%rbp), %edx	# i, D.19342
	salq	$3, %rdx	#, D.19342
	addq	%rdx, %rax	# D.19342, D.19343
	movq	(%rax), %rax	# *_11, tmp97
	movq	%rax, -8(%rbp)	# tmp97, expr
	jmp	.L528	#
.L531:
	.loc 1 3188 0
	movl	-16(%rbp), %eax	# bb, tmp98
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19342
	movq	-24(%rbp), %rax	# ae_gen, tmp99
	addq	%rdx, %rax	# D.19342, D.19344
	movq	(%rax), %rax	# *_16, D.19345
	movq	-8(%rbp), %rdx	# expr, tmp100
	movl	8(%rdx), %edx	# expr_3->bitmap_index, D.19346
	shrl	$6, %edx	#, D.19347
	movl	%edx, %edx	# D.19347, tmp101
	addq	$2, %rdx	#, tmp102
	movq	(%rax,%rdx,8), %rdx	# _17->elms, D.19342
	movq	-8(%rbp), %rax	# expr, tmp103
	movl	8(%rax), %eax	# expr_3->bitmap_index, D.19346
	andl	$63, %eax	#, D.19346
	movl	%eax, %ecx	# D.19346, tmp122
	shrq	%cl, %rdx	# tmp122, D.19342
	movq	%rdx, %rax	# D.19342, D.19342
	andl	$1, %eax	#, D.19342
	testq	%rax, %rax	# D.19342
	je	.L529	#,
	.loc 1 3189 0
	jmp	.L530	#
.L529:
	.loc 1 3191 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.388
	movl	-16(%rbp), %edx	# bb, tmp105
	movslq	%edx, %rdx	# tmp105, tmp104
	addq	$4, %rdx	#, tmp106
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.388_26->data.bb, D.19348
	movq	-8(%rbp), %rax	# expr, tmp107
	movq	(%rax), %rax	# expr_3->expr, D.19349
	movq	%rdx, %rsi	# D.19348,
	movq	%rax, %rdi	# D.19349,
	call	expr_killed_p	#
	testl	%eax, %eax	# D.19346
	je	.L530	#,
	.loc 1 3192 0
	movl	-16(%rbp), %eax	# bb, tmp108
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19342
	movq	-32(%rbp), %rax	# ae_kill, tmp109
	addq	%rdx, %rax	# D.19342, D.19344
	movq	(%rax), %rdx	# *_33, D.19345
	movq	-8(%rbp), %rax	# expr, tmp110
	movl	8(%rax), %eax	# expr_3->bitmap_index, D.19346
	shrl	$6, %eax	#, D.19347
	movl	-16(%rbp), %ecx	# bb, tmp111
	movslq	%ecx, %rcx	# tmp111, D.19342
	leaq	0(,%rcx,8), %rsi	#, D.19342
	movq	-32(%rbp), %rcx	# ae_kill, tmp112
	addq	%rsi, %rcx	# D.19342, D.19344
	movq	(%rcx), %rcx	# *_40, D.19345
	movl	%eax, %esi	# D.19347, tmp113
	addq	$2, %rsi	#, tmp114
	movq	(%rcx,%rsi,8), %rsi	# _41->elms, D.19342
	movq	-8(%rbp), %rcx	# expr, tmp115
	movl	8(%rcx), %ecx	# expr_3->bitmap_index, D.19346
	andl	$63, %ecx	#, D.19346
	movl	$1, %edi	#, tmp116
	salq	%cl, %rdi	# D.19346, D.19342
	movq	%rdi, %rcx	# D.19342, D.19342
	orq	%rsi, %rcx	# D.19342, D.19342
	movl	%eax, %eax	# D.19347, tmp117
	addq	$2, %rax	#, tmp118
	movq	%rcx, (%rdx,%rax,8)	# D.19342, _34->elms
.L530:
	.loc 1 3185 0
	movq	-8(%rbp), %rax	# expr, tmp119
	movq	16(%rax), %rax	# expr_3->next_same_hash, tmp120
	movq	%rax, -8(%rbp)	# tmp120, expr
.L528:
	.loc 1 3185 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, expr
	jne	.L531	#,
	.loc 1 3184 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L527:
	.loc 1 3184 0 is_stmt 0 discriminator 1
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.389
	cmpl	%eax, -12(%rbp)	# expr_hash_table_size.389, i
	jb	.L532	#,
	.loc 1 3183 0 is_stmt 1
	addl	$1, -16(%rbp)	#, bb
.L526:
	.loc 1 3183 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.390
	cmpl	%eax, -16(%rbp)	# n_basic_blocks.390, bb
	jl	.L533	#,
	.loc 1 3194 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	compute_ae_kill, .-compute_ae_kill
	.type	expr_reaches_here_p_work, @function
expr_reaches_here_p_work:
.LFB67:
	.loc 1 3221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# occr, occr
	movq	%rsi, -32(%rbp)	# expr, expr
	movq	%rdx, -40(%rbp)	# bb, bb
	movl	%ecx, -44(%rbp)	# check_self_loop, check_self_loop
	movq	%r8, -56(%rbp)	# visited, visited
	.loc 1 3224 0
	movq	-40(%rbp), %rax	# bb, tmp132
	movq	32(%rax), %rax	# bb_3(D)->pred, tmp133
	movq	%rax, -16(%rbp)	# tmp133, pred
	jmp	.L535	#
.L543:
.LBB32:
	.loc 1 3226 0
	movq	-16(%rbp), %rax	# pred, tmp134
	movq	16(%rax), %rax	# pred_1->src, tmp135
	movq	%rax, -8(%rbp)	# tmp135, pred_bb
	.loc 1 3228 0
	movq	-8(%rbp), %rax	# pred_bb, tmp136
	movl	88(%rax), %eax	# pred_bb_5->index, D.19350
	movslq	%eax, %rdx	# D.19350, D.19351
	movq	-56(%rbp), %rax	# visited, tmp137
	addq	%rdx, %rax	# D.19351, D.19352
	movzbl	(%rax), %eax	# *_9, D.19353
	testb	%al, %al	# D.19353
	jne	.L536	#,
	.loc 1 3231 0
	movq	-8(%rbp), %rax	# pred_bb, tmp138
	cmpq	-40(%rbp), %rax	# bb, tmp138
	jne	.L537	#,
	.loc 1 3234 0
	cmpl	$0, -44(%rbp)	#, check_self_loop
	je	.L538	#,
	.loc 1 3235 0
	movq	ae_gen(%rip), %rdx	# ae_gen, ae_gen.391
	movq	-8(%rbp), %rax	# pred_bb, tmp139
	movl	88(%rax), %eax	# pred_bb_5->index, D.19350
	cltq
	salq	$3, %rax	#, D.19354
	addq	%rdx, %rax	# ae_gen.391, D.19355
	movq	(%rax), %rax	# *_16, D.19356
	movq	-32(%rbp), %rdx	# expr, tmp140
	movl	8(%rdx), %edx	# expr_18(D)->bitmap_index, D.19350
	shrl	$6, %edx	#, D.19357
	movl	%edx, %edx	# D.19357, tmp141
	addq	$2, %rdx	#, tmp142
	movq	(%rax,%rdx,8), %rdx	# _17->elms, D.19354
	movq	-32(%rbp), %rax	# expr, tmp143
	movl	8(%rax), %eax	# expr_18(D)->bitmap_index, D.19350
	andl	$63, %eax	#, D.19350
	movl	%eax, %ecx	# D.19350, tmp179
	shrq	%cl, %rdx	# tmp179, D.19354
	movq	%rdx, %rax	# D.19354, D.19354
	andl	$1, %eax	#, D.19354
	testq	%rax, %rax	# D.19354
	je	.L538	#,
	.loc 1 3236 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.392
	movq	-24(%rbp), %rdx	# occr, tmp144
	movq	8(%rdx), %rdx	# occr_28(D)->insn, D.19358
	movl	8(%rdx), %edx	# _29->fld[0].rtint, D.19350
	movslq	%edx, %rdx	# D.19350, tmp145
	addq	$4, %rdx	#, tmp146
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.392_27->data.bb, D.19359
	movl	88(%rax), %edx	# _31->index, D.19350
	movq	-8(%rbp), %rax	# pred_bb, tmp147
	movl	88(%rax), %eax	# pred_bb_5->index, D.19350
	cmpl	%eax, %edx	# D.19350, D.19350
	jne	.L538	#,
	.loc 1 3237 0
	movl	$1, %eax	#, D.19350
	jmp	.L539	#
.L538:
	.loc 1 3239 0
	movq	-8(%rbp), %rax	# pred_bb, tmp148
	movl	88(%rax), %eax	# pred_bb_5->index, D.19350
	movslq	%eax, %rdx	# D.19350, D.19351
	movq	-56(%rbp), %rax	# visited, tmp149
	addq	%rdx, %rax	# D.19351, D.19352
	movb	$1, (%rax)	#, *_37
	jmp	.L536	#
.L537:
	.loc 1 3243 0
	movq	ae_kill(%rip), %rdx	# ae_kill, ae_kill.393
	movq	-8(%rbp), %rax	# pred_bb, tmp150
	movl	88(%rax), %eax	# pred_bb_5->index, D.19350
	cltq
	salq	$3, %rax	#, D.19354
	addq	%rdx, %rax	# ae_kill.393, D.19355
	movq	(%rax), %rax	# *_42, D.19356
	movq	-32(%rbp), %rdx	# expr, tmp151
	movl	8(%rdx), %edx	# expr_18(D)->bitmap_index, D.19350
	shrl	$6, %edx	#, D.19357
	movl	%edx, %edx	# D.19357, tmp152
	addq	$2, %rdx	#, tmp153
	movq	(%rax,%rdx,8), %rdx	# _43->elms, D.19354
	movq	-32(%rbp), %rax	# expr, tmp154
	movl	8(%rax), %eax	# expr_18(D)->bitmap_index, D.19350
	andl	$63, %eax	#, D.19350
	movl	%eax, %ecx	# D.19350, tmp181
	shrq	%cl, %rdx	# tmp181, D.19354
	movq	%rdx, %rax	# D.19354, D.19354
	andl	$1, %eax	#, D.19354
	testq	%rax, %rax	# D.19354
	je	.L540	#,
	.loc 1 3244 0
	movq	-8(%rbp), %rax	# pred_bb, tmp155
	movl	88(%rax), %eax	# pred_bb_5->index, D.19350
	movslq	%eax, %rdx	# D.19350, D.19351
	movq	-56(%rbp), %rax	# visited, tmp156
	addq	%rdx, %rax	# D.19351, D.19352
	movb	$1, (%rax)	#, *_54
	jmp	.L536	#
.L540:
	.loc 1 3247 0
	movq	ae_gen(%rip), %rdx	# ae_gen, ae_gen.394
	movq	-8(%rbp), %rax	# pred_bb, tmp157
	movl	88(%rax), %eax	# pred_bb_5->index, D.19350
	cltq
	salq	$3, %rax	#, D.19354
	addq	%rdx, %rax	# ae_gen.394, D.19355
	movq	(%rax), %rax	# *_59, D.19356
	movq	-32(%rbp), %rdx	# expr, tmp158
	movl	8(%rdx), %edx	# expr_18(D)->bitmap_index, D.19350
	shrl	$6, %edx	#, D.19357
	movl	%edx, %edx	# D.19357, tmp159
	addq	$2, %rdx	#, tmp160
	movq	(%rax,%rdx,8), %rdx	# _60->elms, D.19354
	movq	-32(%rbp), %rax	# expr, tmp161
	movl	8(%rax), %eax	# expr_18(D)->bitmap_index, D.19350
	andl	$63, %eax	#, D.19350
	movl	%eax, %ecx	# D.19350, tmp183
	shrq	%cl, %rdx	# tmp183, D.19354
	movq	%rdx, %rax	# D.19354, D.19354
	andl	$1, %eax	#, D.19354
	testq	%rax, %rax	# D.19354
	je	.L541	#,
	.loc 1 3252 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.395
	movq	-24(%rbp), %rdx	# occr, tmp162
	movq	8(%rdx), %rdx	# occr_28(D)->insn, D.19358
	movl	8(%rdx), %edx	# _70->fld[0].rtint, D.19350
	movslq	%edx, %rdx	# D.19350, tmp163
	addq	$4, %rdx	#, tmp164
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.395_69->data.bb, D.19359
	movl	88(%rax), %edx	# _72->index, D.19350
	movq	-8(%rbp), %rax	# pred_bb, tmp165
	movl	88(%rax), %eax	# pred_bb_5->index, D.19350
	cmpl	%eax, %edx	# D.19350, D.19350
	jne	.L542	#,
	.loc 1 3253 0
	movl	$1, %eax	#, D.19350
	jmp	.L539	#
.L542:
	.loc 1 3255 0
	movq	-8(%rbp), %rax	# pred_bb, tmp166
	movl	88(%rax), %eax	# pred_bb_5->index, D.19350
	movslq	%eax, %rdx	# D.19350, D.19351
	movq	-56(%rbp), %rax	# visited, tmp167
	addq	%rdx, %rax	# D.19351, D.19352
	movb	$1, (%rax)	#, *_78
	jmp	.L536	#
.L541:
	.loc 1 3261 0
	movq	-8(%rbp), %rax	# pred_bb, tmp168
	movl	88(%rax), %eax	# pred_bb_5->index, D.19350
	movslq	%eax, %rdx	# D.19350, D.19351
	movq	-56(%rbp), %rax	# visited, tmp169
	addq	%rdx, %rax	# D.19351, D.19352
	movb	$1, (%rax)	#, *_81
	.loc 1 3262 0
	movq	-56(%rbp), %rdi	# visited, tmp170
	movl	-44(%rbp), %ecx	# check_self_loop, tmp171
	movq	-8(%rbp), %rdx	# pred_bb, tmp172
	movq	-32(%rbp), %rsi	# expr, tmp173
	movq	-24(%rbp), %rax	# occr, tmp174
	movq	%rdi, %r8	# tmp170,
	movq	%rax, %rdi	# tmp174,
	call	expr_reaches_here_p_work	#
	testl	%eax, %eax	# D.19350
	je	.L536	#,
	.loc 1 3265 0
	movl	$1, %eax	#, D.19350
	jmp	.L539	#
.L536:
.LBE32:
	.loc 1 3224 0
	movq	-16(%rbp), %rax	# pred, tmp175
	movq	(%rax), %rax	# pred_1->pred_next, tmp176
	movq	%rax, -16(%rbp)	# tmp176, pred
.L535:
	.loc 1 3224 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, pred
	jne	.L543	#,
	.loc 1 3270 0 is_stmt 1
	movl	$0, %eax	#, D.19350
.L539:
	.loc 1 3271 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	expr_reaches_here_p_work, .-expr_reaches_here_p_work
	.type	expr_reaches_here_p, @function
expr_reaches_here_p:
.LFB68:
	.loc 1 3282 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# occr, occr
	movq	%rsi, -32(%rbp)	# expr, expr
	movq	%rdx, -40(%rbp)	# bb, bb
	movl	%ecx, -44(%rbp)	# check_self_loop, check_self_loop
	.loc 1 3284 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.396
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.19360,
	call	xcalloc	#
	movq	%rax, -8(%rbp)	# tmp63, visited
	.loc 1 3286 0
	movq	-8(%rbp), %rdi	# visited, tmp64
	movl	-44(%rbp), %ecx	# check_self_loop, tmp65
	movq	-40(%rbp), %rdx	# bb, tmp66
	movq	-32(%rbp), %rsi	# expr, tmp67
	movq	-24(%rbp), %rax	# occr, tmp68
	movq	%rdi, %r8	# tmp64,
	movq	%rax, %rdi	# tmp68,
	call	expr_reaches_here_p_work	#
	movl	%eax, -12(%rbp)	# tmp69, rval
	.loc 1 3288 0
	movq	-8(%rbp), %rax	# visited, tmp70
	movq	%rax, %rdi	# tmp70,
	call	free	#
	.loc 1 3289 0
	movl	-12(%rbp), %eax	# rval, D.19361
	.loc 1 3290 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	expr_reaches_here_p, .-expr_reaches_here_p
	.type	computing_insn, @function
computing_insn:
.LFB69:
	.loc 1 3301 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# expr, expr
	movq	%rsi, -48(%rbp)	# insn, insn
	.loc 1 3302 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.397
	movq	-48(%rbp), %rdx	# insn, tmp90
	movl	8(%rdx), %edx	# insn_10(D)->fld[0].rtint, D.19363
	movslq	%edx, %rdx	# D.19363, tmp91
	addq	$4, %rdx	#, tmp92
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.397_9->data.bb, tmp93
	movq	%rax, -8(%rbp)	# tmp93, bb
	.loc 1 3304 0
	movq	-40(%rbp), %rax	# expr, tmp94
	movq	32(%rax), %rax	# expr_13(D)->avail_occr, D.19364
	movq	(%rax), %rax	# _14->next, D.19364
	testq	%rax, %rax	# D.19364
	jne	.L547	#,
	.loc 1 3306 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.398
	movq	-40(%rbp), %rdx	# expr, tmp95
	movq	32(%rdx), %rdx	# expr_13(D)->avail_occr, D.19364
	movq	8(%rdx), %rdx	# _17->insn, D.19365
	movl	8(%rdx), %edx	# _18->fld[0].rtint, D.19363
	movslq	%edx, %rdx	# D.19363, tmp96
	addq	$4, %rdx	#, tmp97
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.398_16->data.bb, D.19366
	cmpq	-8(%rbp), %rax	# bb, D.19366
	jne	.L548	#,
	.loc 1 3309 0
	movl	$0, %eax	#, D.19362
	jmp	.L549	#
.L548:
	.loc 1 3313 0
	movq	-40(%rbp), %rax	# expr, tmp98
	movq	32(%rax), %rax	# expr_13(D)->avail_occr, D.19364
	movq	8(%rax), %rax	# _22->insn, D.19362
	jmp	.L549	#
.L547:
.LBB33:
	.loc 1 3321 0
	movq	$0, -16(%rbp)	#, insn_computes_expr
	.loc 1 3322 0
	movl	$0, -28(%rbp)	#, can_reach
	.loc 1 3324 0
	movq	-40(%rbp), %rax	# expr, tmp99
	movq	32(%rax), %rax	# expr_13(D)->avail_occr, tmp100
	movq	%rax, -24(%rbp)	# tmp100, occr
	jmp	.L550	#
.L556:
	.loc 1 3326 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.399
	movq	-24(%rbp), %rdx	# occr, tmp101
	movq	8(%rdx), %rdx	# occr_1->insn, D.19365
	movl	8(%rdx), %edx	# _28->fld[0].rtint, D.19363
	movslq	%edx, %rdx	# D.19363, tmp102
	addq	$4, %rdx	#, tmp103
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.399_27->data.bb, D.19366
	cmpq	-8(%rbp), %rax	# bb, D.19366
	jne	.L551	#,
	.loc 1 3332 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.400
	movq	-48(%rbp), %rax	# insn, tmp104
	movl	8(%rax), %eax	# insn_10(D)->fld[0].rtint, D.19363
	cltq
	salq	$2, %rax	#, D.19367
	addq	%rdx, %rax	# uid_cuid.400, D.19368
	movl	(%rax), %edx	# *_35, D.19363
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.401
	movq	-24(%rbp), %rax	# occr, tmp105
	movq	8(%rax), %rax	# occr_1->insn, D.19365
	movl	8(%rax), %eax	# _38->fld[0].rtint, D.19363
	cltq
	salq	$2, %rax	#, D.19367
	addq	%rcx, %rax	# uid_cuid.401, D.19368
	movl	(%rax), %eax	# *_42, D.19363
	cmpl	%eax, %edx	# D.19363, D.19363
	jge	.L554	#,
	.loc 1 3333 0
	movq	-8(%rbp), %rdx	# bb, tmp106
	movq	-40(%rbp), %rsi	# expr, tmp107
	movq	-24(%rbp), %rax	# occr, tmp108
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp108,
	call	expr_reaches_here_p	#
	testl	%eax, %eax	# D.19363
	je	.L554	#,
	.loc 1 3335 0
	addl	$1, -28(%rbp)	#, can_reach
	.loc 1 3336 0
	cmpl	$1, -28(%rbp)	#, can_reach
	jle	.L553	#,
	.loc 1 3337 0
	movl	$0, %eax	#, D.19362
	jmp	.L549	#
.L553:
	.loc 1 3339 0
	movq	-24(%rbp), %rax	# occr, tmp109
	movq	8(%rax), %rax	# occr_1->insn, tmp110
	movq	%rax, -16(%rbp)	# tmp110, insn_computes_expr
	jmp	.L554	#
.L551:
	.loc 1 3342 0
	movq	-8(%rbp), %rdx	# bb, tmp111
	movq	-40(%rbp), %rsi	# expr, tmp112
	movq	-24(%rbp), %rax	# occr, tmp113
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp113,
	call	expr_reaches_here_p	#
	testl	%eax, %eax	# D.19363
	je	.L554	#,
	.loc 1 3344 0
	addl	$1, -28(%rbp)	#, can_reach
	.loc 1 3345 0
	cmpl	$1, -28(%rbp)	#, can_reach
	jle	.L555	#,
	.loc 1 3346 0
	movl	$0, %eax	#, D.19362
	jmp	.L549	#
.L555:
	.loc 1 3348 0
	movq	-24(%rbp), %rax	# occr, tmp114
	movq	8(%rax), %rax	# occr_1->insn, tmp115
	movq	%rax, -16(%rbp)	# tmp115, insn_computes_expr
.L554:
	.loc 1 3324 0
	movq	-24(%rbp), %rax	# occr, tmp116
	movq	(%rax), %rax	# occr_1->next, tmp117
	movq	%rax, -24(%rbp)	# tmp117, occr
.L550:
	.loc 1 3324 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, occr
	jne	.L556	#,
	.loc 1 3352 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, insn_computes_expr
	jne	.L557	#,
	.loc 1 3353 0
	movl	$__FUNCTION__.12714, %edx	#,
	movl	$3353, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L557:
	.loc 1 3355 0
	movq	-16(%rbp), %rax	# insn_computes_expr, D.19362
.L549:
.LBE33:
	.loc 1 3357 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	computing_insn, .-computing_insn
	.type	def_reaches_here_p, @function
def_reaches_here_p:
.LFB70:
	.loc 1 3365 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# def_insn, def_insn
	.loc 1 3368 0
	movq	reaching_defs(%rip), %rcx	# reaching_defs, reaching_defs.402
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.403
	movq	-24(%rbp), %rdx	# insn, tmp119
	movl	8(%rdx), %edx	# insn_5(D)->fld[0].rtint, D.19369
	movslq	%edx, %rdx	# D.19369, tmp120
	addq	$4, %rdx	#, tmp121
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.403_4->data.bb, D.19370
	movl	88(%rax), %eax	# _7->index, D.19369
	cltq
	salq	$3, %rax	#, D.19371
	addq	%rcx, %rax	# reaching_defs.402, D.19372
	movq	(%rax), %rax	# *_11, D.19373
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.404
	movq	-32(%rbp), %rdx	# def_insn, tmp122
	movl	8(%rdx), %edx	# def_insn_14(D)->fld[0].rtint, D.19369
	movslq	%edx, %rdx	# D.19369, D.19371
	salq	$2, %rdx	#, D.19371
	addq	%rcx, %rdx	# uid_cuid.404, D.19374
	movl	(%rdx), %edx	# *_18, D.19369
	shrl	$6, %edx	#, D.19375
	movl	%edx, %edx	# D.19375, tmp123
	addq	$2, %rdx	#, tmp124
	movq	(%rax,%rdx,8), %rdx	# _12->elms, D.19371
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.405
	movq	-32(%rbp), %rax	# def_insn, tmp125
	movl	8(%rax), %eax	# def_insn_14(D)->fld[0].rtint, D.19369
	cltq
	salq	$2, %rax	#, D.19371
	addq	%rcx, %rax	# uid_cuid.405, D.19374
	movl	(%rax), %eax	# *_27, D.19369
	andl	$63, %eax	#, D.19369
	movl	%eax, %ecx	# D.19369, tmp146
	shrq	%cl, %rdx	# tmp146, D.19371
	movq	%rdx, %rax	# D.19371, D.19371
	andl	$1, %eax	#, D.19371
	testq	%rax, %rax	# D.19371
	je	.L559	#,
	.loc 1 3369 0
	movl	$1, %eax	#, D.19369
	jmp	.L560	#
.L559:
	.loc 1 3371 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.406
	movq	-24(%rbp), %rdx	# insn, tmp126
	movl	8(%rdx), %edx	# insn_5(D)->fld[0].rtint, D.19369
	movslq	%edx, %rdx	# D.19369, tmp127
	addq	$4, %rdx	#, tmp128
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.406_33->data.bb, D.19370
	movl	88(%rax), %ecx	# _35->index, D.19369
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.407
	movq	-32(%rbp), %rdx	# def_insn, tmp129
	movl	8(%rdx), %edx	# def_insn_14(D)->fld[0].rtint, D.19369
	movslq	%edx, %rdx	# D.19369, tmp130
	addq	$4, %rdx	#, tmp131
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.407_37->data.bb, D.19370
	movl	88(%rax), %eax	# _39->index, D.19369
	cmpl	%eax, %ecx	# D.19369, D.19369
	jne	.L561	#,
	.loc 1 3373 0
	movq	uid_cuid(%rip), %rdx	# uid_cuid, uid_cuid.408
	movq	-32(%rbp), %rax	# def_insn, tmp132
	movl	8(%rax), %eax	# def_insn_14(D)->fld[0].rtint, D.19369
	cltq
	salq	$2, %rax	#, D.19371
	addq	%rdx, %rax	# uid_cuid.408, D.19374
	movl	(%rax), %edx	# *_45, D.19369
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.409
	movq	-24(%rbp), %rax	# insn, tmp133
	movl	8(%rax), %eax	# insn_5(D)->fld[0].rtint, D.19369
	cltq
	salq	$2, %rax	#, D.19371
	addq	%rcx, %rax	# uid_cuid.409, D.19374
	movl	(%rax), %eax	# *_51, D.19369
	cmpl	%eax, %edx	# D.19369, D.19369
	jge	.L562	#,
	.loc 1 3375 0
	movq	-32(%rbp), %rax	# def_insn, tmp134
	movq	32(%rax), %rax	# def_insn_14(D)->fld[3].rtx, D.19376
	movzwl	(%rax), %eax	# _53->code, D.19377
	cmpw	$39, %ax	#, D.19377
	jne	.L563	#,
	.loc 1 3376 0
	movl	$1, %eax	#, D.19369
	jmp	.L560	#
.L563:
	.loc 1 3377 0
	movq	-32(%rbp), %rax	# def_insn, tmp135
	movq	32(%rax), %rax	# def_insn_14(D)->fld[3].rtx, D.19376
	movzwl	(%rax), %eax	# _56->code, D.19377
	cmpw	$49, %ax	#, D.19377
	jne	.L564	#,
	.loc 1 3378 0
	movq	-32(%rbp), %rax	# def_insn, tmp136
	movq	32(%rax), %rax	# def_insn_14(D)->fld[3].rtx, D.19376
	movq	8(%rax), %rax	# _58->fld[0].rtx, tmp137
	movq	%rax, -8(%rbp)	# tmp137, reg
	jmp	.L565	#
.L564:
	.loc 1 3379 0
	movq	-32(%rbp), %rax	# def_insn, tmp138
	movq	32(%rax), %rax	# def_insn_14(D)->fld[3].rtx, D.19376
	movzwl	(%rax), %eax	# _60->code, D.19377
	cmpw	$47, %ax	#, D.19377
	jne	.L566	#,
	.loc 1 3380 0
	movq	-32(%rbp), %rax	# def_insn, tmp139
	movq	32(%rax), %rax	# def_insn_14(D)->fld[3].rtx, D.19376
	movq	8(%rax), %rax	# _62->fld[0].rtx, tmp140
	movq	%rax, -8(%rbp)	# tmp140, reg
	jmp	.L565	#
.L566:
	.loc 1 3382 0
	movl	$__FUNCTION__.12720, %edx	#,
	movl	$3382, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L565:
	.loc 1 3384 0
	movq	-32(%rbp), %rax	# def_insn, tmp141
	movq	24(%rax), %rcx	# def_insn_14(D)->fld[2].rtx, D.19376
	movq	-24(%rbp), %rdx	# insn, tmp142
	movq	-8(%rbp), %rax	# reg, tmp143
	movq	%rcx, %rsi	# D.19376,
	movq	%rax, %rdi	# tmp143,
	call	reg_set_between_p	#
	testl	%eax, %eax	# D.19369
	sete	%al	#, D.19378
	movzbl	%al, %eax	# D.19378, D.19369
	jmp	.L560	#
.L562:
	.loc 1 3387 0
	movl	$0, %eax	#, D.19369
	jmp	.L560	#
.L561:
	.loc 1 3390 0
	movl	$0, %eax	#, D.19369
.L560:
	.loc 1 3391 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	def_reaches_here_p, .-def_reaches_here_p
	.type	can_disregard_other_sets, @function
can_disregard_other_sets:
.LFB71:
	.loc 1 3404 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# addr_this_reg, addr_this_reg
	movq	%rsi, -32(%rbp)	# insn, insn
	movl	%edx, -36(%rbp)	# for_combine, for_combine
	.loc 1 3405 0
	movl	$0, -12(%rbp)	#, number_of_reaching_defs
	.loc 1 3408 0
	movq	-24(%rbp), %rax	# addr_this_reg, tmp84
	movq	(%rax), %rax	# *addr_this_reg_6(D), tmp85
	movq	%rax, -8(%rbp)	# tmp85, this_reg
	jmp	.L568	#
.L576:
	.loc 1 3409 0
	movq	-8(%rbp), %rax	# this_reg, tmp86
	movq	8(%rax), %rdx	# this_reg_3->insn, D.19380
	movq	-32(%rbp), %rax	# insn, tmp87
	movq	%rdx, %rsi	# D.19380,
	movq	%rax, %rdi	# tmp87,
	call	def_reaches_here_p	#
	testl	%eax, %eax	# D.19379
	je	.L569	#,
	.loc 1 3411 0
	addl	$1, -12(%rbp)	#, number_of_reaching_defs
	.loc 1 3413 0
	movq	-8(%rbp), %rax	# this_reg, tmp88
	movq	8(%rax), %rax	# this_reg_3->insn, D.19380
	movq	32(%rax), %rax	# _12->fld[3].rtx, D.19380
	movzwl	(%rax), %eax	# _13->code, D.19381
	cmpw	$39, %ax	#, D.19381
	jne	.L570	#,
	.loc 1 3414 0
	movl	$0, %eax	#, D.19379
	jmp	.L571	#
.L570:
	.loc 1 3416 0
	cmpl	$0, -36(%rbp)	#, for_combine
	jne	.L572	#,
	.loc 1 3417 0
	movq	-8(%rbp), %rax	# this_reg, tmp89
	movq	8(%rax), %rax	# this_reg_3->insn, D.19380
	movq	32(%rax), %rax	# _17->fld[3].rtx, D.19380
	movzwl	(%rax), %eax	# _18->code, D.19381
	cmpw	$49, %ax	#, D.19381
	je	.L573	#,
	.loc 1 3419 0
	movq	-32(%rbp), %rax	# insn, tmp90
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.19380
	.loc 1 3418 0
	movq	16(%rax), %rdx	# _20->fld[1].rtx, D.19380
	movq	-8(%rbp), %rax	# this_reg, tmp91
	movq	8(%rax), %rax	# this_reg_3->insn, D.19380
	movq	32(%rax), %rax	# _22->fld[3].rtx, D.19380
	movq	16(%rax), %rax	# _23->fld[1].rtx, D.19380
	movq	%rdx, %rsi	# D.19380,
	movq	%rax, %rdi	# D.19380,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.19379
	jne	.L572	#,
.L573:
	.loc 1 3421 0
	movl	$0, %eax	#, D.19379
	jmp	.L571	#
.L572:
	.loc 1 3423 0
	cmpl	$1, -12(%rbp)	#, number_of_reaching_defs
	jle	.L574	#,
	.loc 1 3429 0
	movq	-8(%rbp), %rax	# this_reg, tmp92
	movq	8(%rax), %rax	# this_reg_3->insn, D.19380
	movq	32(%rax), %rax	# _27->fld[3].rtx, D.19380
	movzwl	(%rax), %eax	# _28->code, D.19381
	cmpw	$49, %ax	#, D.19381
	jne	.L575	#,
	.loc 1 3430 0
	movl	$0, %eax	#, D.19379
	jmp	.L571	#
.L575:
	.loc 1 3432 0
	movq	-32(%rbp), %rax	# insn, tmp93
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.19380
	.loc 1 3431 0
	movq	16(%rax), %rdx	# _31->fld[1].rtx, D.19380
	movq	-8(%rbp), %rax	# this_reg, tmp94
	movq	8(%rax), %rax	# this_reg_3->insn, D.19380
	movq	32(%rax), %rax	# _33->fld[3].rtx, D.19380
	movq	16(%rax), %rax	# _34->fld[1].rtx, D.19380
	movq	%rdx, %rsi	# D.19380,
	movq	%rax, %rdi	# D.19380,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.19379
	jne	.L574	#,
	.loc 1 3433 0
	movl	$0, %eax	#, D.19379
	jmp	.L571	#
.L574:
	.loc 1 3436 0
	movq	-24(%rbp), %rax	# addr_this_reg, tmp95
	movq	-8(%rbp), %rdx	# this_reg, tmp96
	movq	%rdx, (%rax)	# tmp96, *addr_this_reg_6(D)
.L569:
	.loc 1 3408 0
	movq	-8(%rbp), %rax	# this_reg, tmp97
	movq	(%rax), %rax	# this_reg_3->next, tmp98
	movq	%rax, -8(%rbp)	# tmp98, this_reg
.L568:
	.loc 1 3408 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, this_reg
	jne	.L576	#,
	.loc 1 3439 0 is_stmt 1
	movl	-12(%rbp), %eax	# number_of_reaching_defs, D.19379
.L571:
	.loc 1 3440 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	can_disregard_other_sets, .-can_disregard_other_sets
	.section	.rodata
	.align 8
.LC11:
	.string	"GCSE: Replacing the source in insn %d with"
.LC12:
	.string	"from"
.LC13:
	.string	"set in"
.LC14:
	.string	" reg %d %s insn %d\n"
	.align 8
.LC15:
	.string	"GCSE: Creating insn %d to copy value of reg %d"
.LC16:
	.string	", computed in insn %d,\n"
	.align 8
.LC17:
	.string	"      into newly allocated reg %d\n"
	.align 8
.LC18:
	.string	"GCSE: Replacing the source in insn %d with reg %d "
.LC19:
	.string	"set in insn %d\n"
	.text
	.type	handle_avail_expr, @function
handle_avail_expr:
.LFB72:
	.loc 1 3451 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# insn, insn
	movq	%rsi, -96(%rbp)	# expr, expr
	.loc 1 3456 0
	movl	$0, -60(%rbp)	#, changed
	.loc 1 3460 0
	movq	-88(%rbp), %rdx	# insn, tmp137
	movq	-96(%rbp), %rax	# expr, tmp138
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	computing_insn	#
	movq	%rax, -32(%rbp)	# tmp139, insn_computes_expr
	.loc 1 3461 0
	cmpq	$0, -32(%rbp)	#, insn_computes_expr
	jne	.L578	#,
	.loc 1 3462 0
	movl	$0, %eax	#, D.19382
	jmp	.L598	#
.L578:
	.loc 1 3463 0
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp140
	movzwl	(%rax), %eax	# insn_computes_expr_13->code, D.19383
	movzwl	%ax, %eax	# D.19383, D.19382
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19384
	cmpb	$105, %al	#, D.19384
	jne	.L580	#,
	.loc 1 3463 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp142
	movq	32(%rax), %rax	# insn_computes_expr_13->fld[3].rtx, D.19385
	movzwl	(%rax), %eax	# _18->code, D.19383
	cmpw	$47, %ax	#, D.19383
	jne	.L581	#,
	.loc 1 3463 0 discriminator 3
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp143
	movq	32(%rax), %rax	# insn_computes_expr_13->fld[3].rtx, iftmp.411
	jmp	.L583	#
.L581:
	.loc 1 3463 0 discriminator 4
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp144
	movq	32(%rax), %rdx	# insn_computes_expr_13->fld[3].rtx, D.19385
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp145
	movq	%rdx, %rsi	# D.19385,
	movq	%rax, %rdi	# tmp145,
	call	single_set_2	#
	jmp	.L583	#
.L580:
	.loc 1 3463 0 discriminator 2
	movl	$0, %eax	#, iftmp.410
.L583:
	.loc 1 3463 0 discriminator 5
	movq	%rax, -24(%rbp)	# iftmp.410, expr_set
	.loc 1 3464 0 is_stmt 1 discriminator 5
	cmpq	$0, -24(%rbp)	#, expr_set
	jne	.L584	#,
	.loc 1 3465 0
	movl	$__FUNCTION__.12743, %edx	#,
	movl	$3465, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L584:
	.loc 1 3467 0
	movl	$0, -68(%rbp)	#, found_setting
	.loc 1 3468 0
	movl	$0, -64(%rbp)	#, use_src
	.loc 1 3473 0
	movq	-24(%rbp), %rax	# expr_set, tmp146
	movq	16(%rax), %rax	# expr_set_25->fld[1].rtx, D.19385
	movzwl	(%rax), %eax	# _28->code, D.19383
	cmpw	$61, %ax	#, D.19383
	jne	.L585	#,
.LBB34:
	.loc 1 3478 0
	movq	-24(%rbp), %rax	# expr_set, tmp147
	movq	16(%rax), %rax	# expr_set_25->fld[1].rtx, D.19385
	.loc 1 3477 0
	movl	8(%rax), %eax	# _30->fld[0].rtuint, tmp148
	movl	%eax, -56(%rbp)	# tmp148, regnum_for_replacing
	.loc 1 3482 0
	movl	max_gcse_regno(%rip), %eax	# max_gcse_regno, max_gcse_regno.412
	cmpl	%eax, -56(%rbp)	# max_gcse_regno.412, regnum_for_replacing
	jae	.L586	#,
	.loc 1 3485 0
	movq	reg_set_table(%rip), %rax	# reg_set_table, reg_set_table.413
	movl	-56(%rbp), %edx	# regnum_for_replacing, D.19386
	salq	$3, %rdx	#, D.19386
	addq	%rdx, %rax	# D.19386, D.19387
	movq	(%rax), %rax	# *_36, this_reg.414
	movq	%rax, -48(%rbp)	# this_reg.414, this_reg
	.loc 1 3486 0
	movq	-48(%rbp), %rax	# this_reg, this_reg.415
	movq	(%rax), %rax	# this_reg.415_38->next, D.19388
	.loc 1 3485 0
	testq	%rax, %rax	# D.19388
	je	.L586	#,
	.loc 1 3487 0
	movq	-88(%rbp), %rcx	# insn, tmp149
	leaq	-48(%rbp), %rax	#, tmp150
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp149,
	movq	%rax, %rdi	# tmp150,
	call	can_disregard_other_sets	#
	testl	%eax, %eax	# D.19382
	je	.L585	#,
.L586:
	.loc 1 3489 0
	movl	$1, -64(%rbp)	#, use_src
	.loc 1 3490 0
	movl	$1, -68(%rbp)	#, found_setting
.L585:
.LBE34:
	.loc 1 3494 0
	cmpl	$0, -68(%rbp)	#, found_setting
	jne	.L587	#,
.LBB35:
	.loc 1 3497 0
	movq	-24(%rbp), %rax	# expr_set, tmp151
	movq	8(%rax), %rax	# expr_set_25->fld[0].rtx, D.19385
	.loc 1 3496 0
	movl	8(%rax), %eax	# _43->fld[0].rtuint, tmp152
	movl	%eax, -52(%rbp)	# tmp152, regnum_for_replacing
	.loc 1 3500 0
	movl	max_gcse_regno(%rip), %eax	# max_gcse_regno, max_gcse_regno.416
	cmpl	%eax, -52(%rbp)	# max_gcse_regno.416, regnum_for_replacing
	jb	.L588	#,
	.loc 1 3501 0
	movl	$__FUNCTION__.12743, %edx	#,
	movl	$3501, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L588:
	.loc 1 3503 0
	movq	reg_set_table(%rip), %rax	# reg_set_table, reg_set_table.417
	movl	-52(%rbp), %edx	# regnum_for_replacing, D.19386
	salq	$3, %rdx	#, D.19386
	addq	%rdx, %rax	# D.19386, D.19387
	movq	(%rax), %rax	# *_49, this_reg.418
	movq	%rax, -48(%rbp)	# this_reg.418, this_reg
	.loc 1 3507 0
	movq	-48(%rbp), %rax	# this_reg, this_reg.419
	movq	(%rax), %rax	# this_reg.419_51->next, D.19388
	testq	%rax, %rax	# D.19388
	je	.L589	#,
	.loc 1 3508 0
	movq	-88(%rbp), %rcx	# insn, tmp153
	leaq	-48(%rbp), %rax	#, tmp154
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp153,
	movq	%rax, %rdi	# tmp154,
	call	can_disregard_other_sets	#
	testl	%eax, %eax	# D.19382
	je	.L587	#,
.L589:
	.loc 1 3509 0
	movl	$1, -68(%rbp)	#, found_setting
.L587:
.LBE35:
	.loc 1 3512 0
	cmpl	$0, -68(%rbp)	#, found_setting
	je	.L590	#,
	.loc 1 3514 0
	movq	-88(%rbp), %rax	# insn, tmp155
	movq	32(%rax), %rax	# insn_12(D)->fld[3].rtx, tmp156
	movq	%rax, -16(%rbp)	# tmp156, pat
	.loc 1 3515 0
	cmpl	$0, -64(%rbp)	#, use_src
	je	.L591	#,
	.loc 1 3516 0
	movq	-24(%rbp), %rax	# expr_set, tmp157
	movq	16(%rax), %rax	# expr_set_25->fld[1].rtx, tmp158
	movq	%rax, -40(%rbp)	# tmp158, to
	jmp	.L592	#
.L591:
	.loc 1 3518 0
	movq	-24(%rbp), %rax	# expr_set, tmp159
	movq	8(%rax), %rax	# expr_set_25->fld[0].rtx, tmp160
	movq	%rax, -40(%rbp)	# tmp160, to
.L592:
	.loc 1 3519 0
	movq	-16(%rbp), %rax	# pat, tmp161
	leaq	16(%rax), %rsi	#, D.19389
	movq	-40(%rbp), %rdx	# to, tmp162
	movq	-88(%rbp), %rax	# insn, tmp163
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp163,
	call	validate_change	#
	movl	%eax, -60(%rbp)	# tmp164, changed
	.loc 1 3523 0
	cmpl	$0, -60(%rbp)	#, changed
	je	.L596	#,
	.loc 1 3525 0
	movl	gcse_subst_count(%rip), %eax	# gcse_subst_count, gcse_subst_count.420
	addl	$1, %eax	#, gcse_subst_count.421
	movl	%eax, gcse_subst_count(%rip)	# gcse_subst_count.421, gcse_subst_count
	.loc 1 3526 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.422
	testq	%rax, %rax	# gcse_file.422
	je	.L596	#,
	.loc 1 3528 0
	movq	-88(%rbp), %rax	# insn, tmp165
	movl	8(%rax), %edx	# insn_12(D)->fld[0].rtint, D.19382
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.423
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# gcse_file.423,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3530 0
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp166
	movl	8(%rax), %ecx	# insn_computes_expr_13->fld[0].rtint, D.19382
	cmpl	$0, -64(%rbp)	#, use_src
	je	.L594	#,
	.loc 1 3530 0 is_stmt 0 discriminator 1
	movl	$.LC12, %eax	#, iftmp.424
	jmp	.L595	#
.L594:
	.loc 1 3530 0 discriminator 2
	movl	$.LC13, %eax	#, iftmp.424
.L595:
	.loc 1 3530 0 discriminator 3
	movq	-40(%rbp), %rdx	# to, tmp167
	movl	8(%rdx), %edx	# to_1->fld[0].rtuint, D.19390
	movq	gcse_file(%rip), %rdi	# gcse_file, gcse_file.425
	movl	%ecx, %r8d	# D.19382,
	movq	%rax, %rcx	# iftmp.424,
	movl	$.LC14, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L596	#
.L590:
.LBB36:
	.loc 1 3546 0 is_stmt 1
	movq	-24(%rbp), %rax	# expr_set, tmp168
	movq	8(%rax), %rax	# expr_set_25->fld[0].rtx, D.19385
	movzbl	2(%rax), %eax	# _70->mode, D.19391
	movzbl	%al, %eax	# D.19391, D.19392
	movl	%eax, %edi	# D.19392,
	call	gen_reg_rtx	#
	movq	%rax, -40(%rbp)	# tmp169, to
	.loc 1 3552 0
	movq	-24(%rbp), %rax	# expr_set, tmp170
	movq	8(%rax), %rdx	# expr_set_25->fld[0].rtx, D.19385
	movq	-40(%rbp), %rax	# to, tmp171
	movq	%rdx, %rcx	# D.19385,
	movq	%rax, %rdx	# tmp171,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-32(%rbp), %rdx	# insn_computes_expr, tmp172
	movq	%rdx, %rsi	# tmp172,
	movq	%rax, %rdi	# D.19385,
	call	emit_insn_after	#
	movq	%rax, -8(%rbp)	# tmp173, new_insn
	.loc 1 3557 0
	movq	-40(%rbp), %rax	# to, tmp174
	movl	8(%rax), %eax	# to_73->fld[0].rtuint, D.19390
	movq	-8(%rbp), %rdx	# new_insn, tmp175
	movq	%rdx, %rsi	# tmp175,
	movl	%eax, %edi	# D.19382,
	call	record_one_set	#
	.loc 1 3559 0
	movl	gcse_create_count(%rip), %eax	# gcse_create_count, gcse_create_count.426
	addl	$1, %eax	#, gcse_create_count.427
	movl	%eax, gcse_create_count(%rip)	# gcse_create_count.427, gcse_create_count
	.loc 1 3560 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.428
	testq	%rax, %rax	# gcse_file.428
	je	.L597	#,
	.loc 1 3564 0
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp176
	movq	24(%rax), %rax	# insn_computes_expr_13->fld[2].rtx, D.19385
	movq	32(%rax), %rax	# _82->fld[3].rtx, D.19385
	movq	16(%rax), %rax	# _83->fld[1].rtx, D.19385
	.loc 1 3562 0
	movl	8(%rax), %ecx	# _84->fld[0].rtuint, D.19390
	.loc 1 3563 0
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp177
	movq	24(%rax), %rax	# insn_computes_expr_13->fld[2].rtx, D.19385
	.loc 1 3562 0
	movl	8(%rax), %edx	# _86->fld[0].rtint, D.19382
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.429
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# gcse_file.429,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3565 0
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp178
	movl	8(%rax), %edx	# insn_computes_expr_13->fld[0].rtint, D.19382
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.430
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# gcse_file.430,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3567 0
	movq	-40(%rbp), %rax	# to, tmp179
	movl	8(%rax), %edx	# to_73->fld[0].rtuint, D.19390
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.431
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# gcse_file.431,
	movl	$0, %eax	#,
	call	fprintf	#
.L597:
	.loc 1 3571 0
	movq	-88(%rbp), %rax	# insn, tmp180
	movq	32(%rax), %rax	# insn_12(D)->fld[3].rtx, tmp181
	movq	%rax, -16(%rbp)	# tmp181, pat
	.loc 1 3575 0
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp182
	movq	24(%rax), %rax	# insn_computes_expr_13->fld[2].rtx, D.19385
	movq	32(%rax), %rax	# _94->fld[3].rtx, D.19385
	.loc 1 3574 0
	movq	8(%rax), %rdx	# _95->fld[0].rtx, D.19385
	movq	-16(%rbp), %rax	# pat, tmp183
	leaq	16(%rax), %rsi	#, D.19389
	movq	-88(%rbp), %rax	# insn, tmp184
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp184,
	call	validate_change	#
	movl	%eax, -60(%rbp)	# tmp185, changed
	.loc 1 3581 0
	cmpl	$0, -60(%rbp)	#, changed
	je	.L596	#,
	.loc 1 3583 0
	movl	gcse_subst_count(%rip), %eax	# gcse_subst_count, gcse_subst_count.432
	addl	$1, %eax	#, gcse_subst_count.433
	movl	%eax, gcse_subst_count(%rip)	# gcse_subst_count.433, gcse_subst_count
	.loc 1 3584 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.434
	testq	%rax, %rax	# gcse_file.434
	je	.L596	#,
	.loc 1 3589 0
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp186
	movq	24(%rax), %rax	# insn_computes_expr_13->fld[2].rtx, D.19385
	movq	32(%rax), %rax	# _102->fld[3].rtx, D.19385
	movq	8(%rax), %rax	# _103->fld[0].rtx, D.19385
	.loc 1 3586 0
	movl	8(%rax), %ecx	# _104->fld[0].rtuint, D.19390
	movq	-88(%rbp), %rax	# insn, tmp187
	movl	8(%rax), %edx	# insn_12(D)->fld[0].rtint, D.19382
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.435
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# gcse_file.435,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3591 0
	movq	-32(%rbp), %rax	# insn_computes_expr, tmp188
	movl	8(%rax), %edx	# insn_computes_expr_13->fld[0].rtint, D.19382
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.436
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# gcse_file.436,
	movl	$0, %eax	#,
	call	fprintf	#
.L596:
.LBE36:
	.loc 1 3597 0
	movl	-60(%rbp), %eax	# changed, D.19382
.L598:
	.loc 1 3598 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	handle_avail_expr, .-handle_avail_expr
	.type	classic_gcse, @function
classic_gcse:
.LFB73:
	.loc 1 3607 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 3613 0
	movl	$0, -36(%rbp)	#, changed
	.loc 1 3614 0
	movl	$1, -40(%rbp)	#, bb
	jmp	.L600	#
.L606:
	.loc 1 3618 0
	call	reset_opr_set_tables	#
	.loc 1 3620 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.437
	movl	-40(%rbp), %edx	# bb, tmp97
	movslq	%edx, %rdx	# tmp97, tmp96
	addq	$4, %rdx	#, tmp98
	movq	(%rax,%rdx,8), %rax	# basic_block_info.437_9->data.bb, D.19402
	movq	(%rax), %rax	# _10->head, tmp99
	movq	%rax, -32(%rbp)	# tmp99, insn
	jmp	.L601	#
.L605:
	.loc 1 3625 0
	movq	-32(%rbp), %rax	# insn, tmp100
	movzwl	(%rax), %eax	# insn_5->code, D.19404
	cmpw	$32, %ax	#, D.19404
	jne	.L602	#,
	.loc 1 3626 0
	movq	-32(%rbp), %rax	# insn, tmp101
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, D.19403
	movzwl	(%rax), %eax	# _17->code, D.19404
	cmpw	$47, %ax	#, D.19404
	jne	.L602	#,
	.loc 1 3627 0
	movq	-32(%rbp), %rax	# insn, tmp102
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, D.19403
	movq	8(%rax), %rax	# _19->fld[0].rtx, D.19403
	movzwl	(%rax), %eax	# _20->code, D.19404
	cmpw	$61, %ax	#, D.19404
	jne	.L602	#,
	.loc 1 3628 0
	movq	-32(%rbp), %rax	# insn, tmp103
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, D.19403
	movq	8(%rax), %rax	# _22->fld[0].rtx, D.19403
	movl	8(%rax), %eax	# _23->fld[0].rtuint, D.19405
	cmpl	$52, %eax	#, D.19405
	jbe	.L602	#,
.LBB37:
	.loc 1 3630 0
	movq	-32(%rbp), %rax	# insn, tmp104
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, tmp105
	movq	%rax, -24(%rbp)	# tmp105, pat
	.loc 1 3631 0
	movq	-24(%rbp), %rax	# pat, tmp106
	movq	16(%rax), %rax	# pat_25->fld[1].rtx, tmp107
	movq	%rax, -16(%rbp)	# tmp107, src
	.loc 1 3634 0
	movq	-16(%rbp), %rax	# src, tmp108
	movq	%rax, %rdi	# tmp108,
	call	want_to_gcse_p	#
	testl	%eax, %eax	# D.19406
	je	.L602	#,
	.loc 1 3636 0
	movq	-16(%rbp), %rax	# src, tmp109
	movq	%rax, %rdi	# tmp109,
	call	lookup_expr	#
	movq	%rax, -8(%rbp)	# tmp110, expr
	cmpq	$0, -8(%rbp)	#, expr
	je	.L602	#,
	.loc 1 3639 0
	movq	ae_in(%rip), %rax	# ae_in, ae_in.438
	movl	-40(%rbp), %edx	# bb, tmp111
	movslq	%edx, %rdx	# tmp111, D.19407
	salq	$3, %rdx	#, D.19407
	addq	%rdx, %rax	# D.19407, D.19408
	movq	(%rax), %rax	# *_32, D.19409
	movq	-8(%rbp), %rdx	# expr, tmp112
	movl	8(%rdx), %edx	# expr_28->bitmap_index, D.19406
	shrl	$6, %edx	#, D.19405
	movl	%edx, %edx	# D.19405, tmp113
	addq	$2, %rdx	#, tmp114
	movq	(%rax,%rdx,8), %rdx	# _33->elms, D.19407
	movq	-8(%rbp), %rax	# expr, tmp115
	movl	8(%rax), %eax	# expr_28->bitmap_index, D.19406
	andl	$63, %eax	#, D.19406
	movl	%eax, %ecx	# D.19406, tmp130
	shrq	%cl, %rdx	# tmp130, D.19407
	movq	%rdx, %rax	# D.19407, D.19407
	andl	$1, %eax	#, D.19407
	testq	%rax, %rax	# D.19407
	je	.L602	#,
	.loc 1 3642 0
	movq	-32(%rbp), %rdx	# insn, tmp116
	movq	-16(%rbp), %rax	# src, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	oprs_not_set_p	#
	testl	%eax, %eax	# D.19406
	je	.L602	#,
	.loc 1 3643 0
	movq	-8(%rbp), %rdx	# expr, tmp118
	movq	-32(%rbp), %rax	# insn, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	handle_avail_expr	#
	orl	%eax, -36(%rbp)	# D.19406, changed
.L602:
.LBE37:
	.loc 1 3648 0
	movq	-32(%rbp), %rax	# insn, tmp120
	movzwl	(%rax), %eax	# insn_5->code, D.19404
	movzwl	%ax, %eax	# D.19404, D.19406
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19410
	cmpb	$105, %al	#, D.19410
	jne	.L603	#,
	.loc 1 3649 0
	movq	-32(%rbp), %rax	# insn, tmp122
	movq	%rax, %rdi	# tmp122,
	call	mark_oprs_set	#
.L603:
	.loc 1 3622 0
	movq	-32(%rbp), %rax	# insn, tmp123
	movq	24(%rax), %rax	# insn_5->fld[2].rtx, tmp124
	movq	%rax, -32(%rbp)	# tmp124, insn
.L601:
	.loc 1 3620 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	je	.L604	#,
	.loc 1 3621 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.439
	movl	-40(%rbp), %edx	# bb, tmp126
	movslq	%edx, %rdx	# tmp126, tmp125
	addq	$4, %rdx	#, tmp127
	movq	(%rax,%rdx,8), %rax	# basic_block_info.439_12->data.bb, D.19402
	movq	8(%rax), %rax	# _13->end, D.19403
	movq	24(%rax), %rax	# _14->fld[2].rtx, D.19403
	cmpq	-32(%rbp), %rax	# insn, D.19403
	jne	.L605	#,
.L604:
	.loc 1 3614 0
	addl	$1, -40(%rbp)	#, bb
.L600:
	.loc 1 3614 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.440
	cmpl	%eax, -40(%rbp)	# n_basic_blocks.440, bb
	jl	.L606	#,
	.loc 1 3653 0 is_stmt 1
	movl	-36(%rbp), %eax	# changed, D.19406
	.loc 1 3654 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	classic_gcse, .-classic_gcse
	.section	.rodata
.LC20:
	.string	"Expression"
	.align 8
.LC21:
	.string	"GCSE of %s, pass %d: %d bytes needed, %d substs,"
.LC22:
	.string	"%d insns created\n"
	.text
	.type	one_classic_gcse_pass, @function
one_classic_gcse_pass:
.LFB74:
	.loc 1 3663 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# pass, pass
	.loc 1 3664 0
	movl	$0, -4(%rbp)	#, changed
	.loc 1 3666 0
	movl	$0, gcse_subst_count(%rip)	#, gcse_subst_count
	.loc 1 3667 0
	movl	$0, gcse_create_count(%rip)	#, gcse_create_count
	.loc 1 3669 0
	movl	max_cuid(%rip), %eax	# max_cuid, max_cuid.441
	movl	%eax, %edi	# max_cuid.442,
	call	alloc_expr_hash_table	#
	.loc 1 3670 0
	movl	max_cuid(%rip), %edx	# max_cuid, max_cuid.443
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.444
	movl	%edx, %esi	# max_cuid.443,
	movl	%eax, %edi	# n_basic_blocks.444,
	call	alloc_rd_mem	#
	.loc 1 3671 0
	call	compute_expr_hash_table	#
	.loc 1 3672 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.445
	testq	%rax, %rax	# gcse_file.445
	je	.L609	#,
	.loc 1 3673 0
	movl	n_exprs(%rip), %esi	# n_exprs, n_exprs.446
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.447
	movl	%eax, %ecx	# expr_hash_table_size.447, expr_hash_table_size.448
	movq	expr_hash_table(%rip), %rdx	# expr_hash_table, expr_hash_table.449
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.450
	movl	%esi, %r8d	# n_exprs.446,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# gcse_file.450,
	call	dump_hash_table	#
.L609:
	.loc 1 3676 0
	movl	n_exprs(%rip), %eax	# n_exprs, n_exprs.451
	testl	%eax, %eax	# n_exprs.451
	jle	.L610	#,
	.loc 1 3678 0
	call	compute_kill_rd	#
	.loc 1 3679 0
	call	compute_rd	#
	.loc 1 3680 0
	movl	n_exprs(%rip), %edx	# n_exprs, n_exprs.452
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.453
	movl	%edx, %esi	# n_exprs.452,
	movl	%eax, %edi	# n_basic_blocks.453,
	call	alloc_avail_expr_mem	#
	.loc 1 3681 0
	call	compute_ae_gen	#
	.loc 1 3682 0
	movq	ae_kill(%rip), %rdx	# ae_kill, ae_kill.454
	movq	ae_gen(%rip), %rax	# ae_gen, ae_gen.455
	movq	%rdx, %rsi	# ae_kill.454,
	movq	%rax, %rdi	# ae_gen.455,
	call	compute_ae_kill	#
	.loc 1 3683 0
	movq	ae_in(%rip), %rcx	# ae_in, ae_in.456
	movq	ae_out(%rip), %rdx	# ae_out, ae_out.457
	movq	ae_kill(%rip), %rsi	# ae_kill, ae_kill.458
	movq	ae_gen(%rip), %rax	# ae_gen, ae_gen.459
	movq	%rax, %rdi	# ae_gen.459,
	call	compute_available	#
	.loc 1 3684 0
	call	classic_gcse	#
	movl	%eax, -4(%rbp)	# tmp89, changed
	.loc 1 3685 0
	call	free_avail_expr_mem	#
.L610:
	.loc 1 3688 0
	call	free_rd_mem	#
	.loc 1 3689 0
	call	free_expr_hash_table	#
	.loc 1 3691 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.460
	testq	%rax, %rax	# gcse_file.460
	je	.L611	#,
	.loc 1 3693 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.461
	movq	%rax, %rsi	# gcse_file.461,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 3694 0
	movl	gcse_subst_count(%rip), %edi	# gcse_subst_count, gcse_subst_count.462
	movl	bytes_used(%rip), %esi	# bytes_used, bytes_used.463
	.loc 1 3695 0
	movq	cfun(%rip), %rax	# cfun, cfun.464
	.loc 1 3694 0
	movq	40(%rax), %rdx	# cfun.464_27->name, D.19411
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.465
	movl	-20(%rbp), %ecx	# pass, tmp90
	movl	%edi, %r9d	# gcse_subst_count.462,
	movl	%esi, %r8d	# bytes_used.463,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# gcse_file.465,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3696 0
	movl	gcse_create_count(%rip), %edx	# gcse_create_count, gcse_create_count.466
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.467
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# gcse_file.467,
	movl	$0, %eax	#,
	call	fprintf	#
.L611:
	.loc 1 3699 0
	movl	-4(%rbp), %eax	# changed, D.19412
	.loc 1 3700 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	one_classic_gcse_pass, .-one_classic_gcse_pass
	.local	cprop_pavloc
	.comm	cprop_pavloc,8,8
	.local	cprop_absaltered
	.comm	cprop_absaltered,8,8
	.local	cprop_avin
	.comm	cprop_avin,8,8
	.local	cprop_avout
	.comm	cprop_avout,8,8
	.type	alloc_cprop_mem, @function
alloc_cprop_mem:
.LFB75:
	.loc 1 3718 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# n_blocks, n_blocks
	movl	%esi, -8(%rbp)	# n_sets, n_sets
	.loc 1 3719 0
	movl	-8(%rbp), %edx	# n_sets, n_sets.468
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.469
	movl	%edx, %esi	# n_sets.468,
	movl	%eax, %edi	# n_blocks.469,
	call	sbitmap_vector_alloc	#
	movq	%rax, cprop_pavloc(%rip)	# cprop_pavloc.470, cprop_pavloc
	.loc 1 3720 0
	movl	-8(%rbp), %edx	# n_sets, n_sets.471
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.472
	movl	%edx, %esi	# n_sets.471,
	movl	%eax, %edi	# n_blocks.472,
	call	sbitmap_vector_alloc	#
	movq	%rax, cprop_absaltered(%rip)	# cprop_absaltered.473, cprop_absaltered
	.loc 1 3722 0
	movl	-8(%rbp), %edx	# n_sets, n_sets.474
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.475
	movl	%edx, %esi	# n_sets.474,
	movl	%eax, %edi	# n_blocks.475,
	call	sbitmap_vector_alloc	#
	movq	%rax, cprop_avin(%rip)	# cprop_avin.476, cprop_avin
	.loc 1 3723 0
	movl	-8(%rbp), %edx	# n_sets, n_sets.477
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.478
	movl	%edx, %esi	# n_sets.477,
	movl	%eax, %edi	# n_blocks.478,
	call	sbitmap_vector_alloc	#
	movq	%rax, cprop_avout(%rip)	# cprop_avout.479, cprop_avout
	.loc 1 3724 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	alloc_cprop_mem, .-alloc_cprop_mem
	.type	free_cprop_mem, @function
free_cprop_mem:
.LFB76:
	.loc 1 3730 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3731 0
	movq	cprop_pavloc(%rip), %rax	# cprop_pavloc, cprop_pavloc.480
	movq	%rax, %rdi	# cprop_pavloc.480,
	call	free	#
	.loc 1 3732 0
	movq	cprop_absaltered(%rip), %rax	# cprop_absaltered, cprop_absaltered.481
	movq	%rax, %rdi	# cprop_absaltered.481,
	call	free	#
	.loc 1 3733 0
	movq	cprop_avin(%rip), %rax	# cprop_avin, cprop_avin.482
	movq	%rax, %rdi	# cprop_avin.482,
	call	free	#
	.loc 1 3734 0
	movq	cprop_avout(%rip), %rax	# cprop_avout, cprop_avout.483
	movq	%rax, %rdi	# cprop_avout.483,
	call	free	#
	.loc 1 3735 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	free_cprop_mem, .-free_cprop_mem
	.type	compute_transp, @function
compute_transp:
.LFB77:
	.loc 1 3749 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# x, x
	movl	%esi, -76(%rbp)	# indx, indx
	movq	%rdx, -88(%rbp)	# bmap, bmap
	movl	%ecx, -80(%rbp)	# set_p, set_p
.L616:
	.loc 1 3759 0
	cmpq	$0, -72(%rbp)	#, x
	jne	.L617	#,
	.loc 1 3760 0
	jmp	.L615	#
.L617:
	.loc 1 3762 0
	movq	-72(%rbp), %rax	# x, tmp261
	movzwl	(%rax), %eax	# x_1->code, D.19416
	movzwl	%ax, %eax	# D.19416, tmp262
	movl	%eax, -44(%rbp)	# tmp262, code
	.loc 1 3763 0
	movl	-44(%rbp), %eax	# code, tmp264
	subl	$44, %eax	#, tmp263
	cmpl	$25, %eax	#, tmp263
	ja	.L657	#,
	movl	%eax, %eax	# tmp263, tmp265
	movq	.L621(,%rax,8), %rax	#, tmp266
	jmp	*%rax	# tmp266
	.section	.rodata
	.align 8
	.align 4
.L621:
	.quad	.L658
	.quad	.L658
	.quad	.L657
	.quad	.L657
	.quad	.L657
	.quad	.L657
	.quad	.L657
	.quad	.L657
	.quad	.L657
	.quad	.L657
	.quad	.L658
	.quad	.L658
	.quad	.L658
	.quad	.L657
	.quad	.L658
	.quad	.L658
	.quad	.L657
	.quad	.L622
	.quad	.L657
	.quad	.L657
	.quad	.L657
	.quad	.L657
	.quad	.L623
	.quad	.L658
	.quad	.L658
	.quad	.L658
	.text
.L622:
	.loc 1 3766 0
	cmpl	$0, -80(%rbp)	#, set_p
	je	.L624	#,
	.loc 1 3768 0
	movq	-72(%rbp), %rax	# x, tmp267
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, D.19417
	cmpl	$52, %eax	#, D.19417
	ja	.L625	#,
	.loc 1 3770 0
	movl	$0, -56(%rbp)	#, bb
	jmp	.L626	#
.L628:
	.loc 1 3771 0
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.484
	movl	-56(%rbp), %edx	# bb, tmp268
	movslq	%edx, %rdx	# tmp268, D.19418
	salq	$3, %rdx	#, D.19418
	addq	%rdx, %rax	# D.19418, D.19419
	movq	(%rax), %rax	# *_20, D.19420
	movq	-72(%rbp), %rdx	# x, tmp269
	movl	8(%rdx), %edx	# x_1->fld[0].rtuint, D.19417
	shrl	$6, %edx	#, D.19417
	movl	%edx, %edx	# D.19417, tmp270
	addq	$2, %rdx	#, tmp271
	movq	(%rax,%rdx,8), %rdx	# _21->elms, D.19418
	movq	-72(%rbp), %rax	# x, tmp272
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, D.19417
	andl	$63, %eax	#, D.19421
	movl	%eax, %ecx	# D.19421, tmp422
	shrq	%cl, %rdx	# tmp422, D.19418
	movq	%rdx, %rax	# D.19418, D.19418
	andl	$1, %eax	#, D.19418
	testq	%rax, %rax	# D.19418
	je	.L627	#,
	.loc 1 3772 0
	movl	-56(%rbp), %eax	# bb, tmp273
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19418
	movq	-88(%rbp), %rax	# bmap, tmp274
	addq	%rdx, %rax	# D.19418, D.19419
	movq	(%rax), %rdx	# *_33, D.19420
	movl	-76(%rbp), %eax	# indx, indx.485
	shrl	$6, %eax	#, D.19417
	movl	-56(%rbp), %ecx	# bb, tmp275
	movslq	%ecx, %rcx	# tmp275, D.19418
	leaq	0(,%rcx,8), %rsi	#, D.19418
	movq	-88(%rbp), %rcx	# bmap, tmp276
	addq	%rsi, %rcx	# D.19418, D.19419
	movq	(%rcx), %rcx	# *_40, D.19420
	movl	%eax, %esi	# D.19417, tmp277
	addq	$2, %rsi	#, tmp278
	movq	(%rcx,%rsi,8), %rsi	# _41->elms, D.19418
	movl	-76(%rbp), %ecx	# indx, tmp279
	andl	$63, %ecx	#, D.19421
	movl	$1, %edi	#, tmp280
	salq	%cl, %rdi	# D.19421, D.19418
	movq	%rdi, %rcx	# D.19418, D.19418
	orq	%rsi, %rcx	# D.19418, D.19418
	movl	%eax, %eax	# D.19417, tmp281
	addq	$2, %rax	#, tmp282
	movq	%rcx, (%rdx,%rax,8)	# D.19418, _34->elms
.L627:
	.loc 1 3770 0
	addl	$1, -56(%rbp)	#, bb
.L626:
	.loc 1 3770 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.486
	cmpl	%eax, -56(%rbp)	# n_basic_blocks.486, bb
	jl	.L628	#,
	.loc 1 3795 0 is_stmt 1
	jmp	.L615	#
.L625:
	.loc 1 3776 0
	movq	reg_set_table(%rip), %rdx	# reg_set_table, reg_set_table.487
	movq	-72(%rbp), %rax	# x, tmp283
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, D.19417
	movl	%eax, %eax	# D.19417, D.19418
	salq	$3, %rax	#, D.19418
	addq	%rdx, %rax	# reg_set_table.487, D.19422
	movq	(%rax), %rax	# *_51, tmp284
	movq	%rax, -40(%rbp)	# tmp284, r
	jmp	.L630	#
.L631:
	.loc 1 3777 0 discriminator 2
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.488
	movq	-40(%rbp), %rdx	# r, tmp285
	movq	8(%rdx), %rdx	# r_7->insn, D.19423
	movl	8(%rdx), %edx	# _54->fld[0].rtint, D.19421
	movslq	%edx, %rdx	# D.19421, tmp286
	addq	$4, %rdx	#, tmp287
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.488_53->data.bb, D.19424
	movl	88(%rax), %eax	# _56->index, D.19421
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19418
	movq	-88(%rbp), %rax	# bmap, tmp288
	addq	%rdx, %rax	# D.19418, D.19419
	movq	(%rax), %rdx	# *_60, D.19420
	movl	-76(%rbp), %eax	# indx, indx.489
	shrl	$6, %eax	#, D.19417
	movq	basic_block_for_insn(%rip), %rcx	# basic_block_for_insn, basic_block_for_insn.490
	movq	-40(%rbp), %rsi	# r, tmp289
	movq	8(%rsi), %rsi	# r_7->insn, D.19423
	movl	8(%rsi), %esi	# _65->fld[0].rtint, D.19421
	movslq	%esi, %rsi	# D.19421, tmp290
	addq	$4, %rsi	#, tmp291
	movq	(%rcx,%rsi,8), %rcx	# basic_block_for_insn.490_64->data.bb, D.19424
	movl	88(%rcx), %ecx	# _67->index, D.19421
	movslq	%ecx, %rcx	# D.19421, D.19418
	leaq	0(,%rcx,8), %rsi	#, D.19418
	movq	-88(%rbp), %rcx	# bmap, tmp292
	addq	%rsi, %rcx	# D.19418, D.19419
	movq	(%rcx), %rcx	# *_71, D.19420
	movl	%eax, %esi	# D.19417, tmp293
	addq	$2, %rsi	#, tmp294
	movq	(%rcx,%rsi,8), %rsi	# _72->elms, D.19418
	movl	-76(%rbp), %ecx	# indx, tmp295
	andl	$63, %ecx	#, D.19421
	movl	$1, %edi	#, tmp296
	salq	%cl, %rdi	# D.19421, D.19418
	movq	%rdi, %rcx	# D.19418, D.19418
	orq	%rsi, %rcx	# D.19418, D.19418
	movl	%eax, %eax	# D.19417, tmp297
	addq	$2, %rax	#, tmp298
	movq	%rcx, (%rdx,%rax,8)	# D.19418, _61->elms
	.loc 1 3776 0 discriminator 2
	movq	-40(%rbp), %rax	# r, tmp299
	movq	(%rax), %rax	# r_7->next, tmp300
	movq	%rax, -40(%rbp)	# tmp300, r
.L630:
	.loc 1 3776 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, r
	jne	.L631	#,
	.loc 1 3795 0 is_stmt 1
	jmp	.L615	#
.L624:
	.loc 1 3782 0
	movq	-72(%rbp), %rax	# x, tmp301
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, D.19417
	cmpl	$52, %eax	#, D.19417
	ja	.L632	#,
	.loc 1 3784 0
	movl	$0, -56(%rbp)	#, bb
	jmp	.L633	#
.L635:
	.loc 1 3785 0
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.491
	movl	-56(%rbp), %edx	# bb, tmp302
	movslq	%edx, %rdx	# tmp302, D.19418
	salq	$3, %rdx	#, D.19418
	addq	%rdx, %rax	# D.19418, D.19419
	movq	(%rax), %rax	# *_84, D.19420
	movq	-72(%rbp), %rdx	# x, tmp303
	movl	8(%rdx), %edx	# x_1->fld[0].rtuint, D.19417
	shrl	$6, %edx	#, D.19417
	movl	%edx, %edx	# D.19417, tmp304
	addq	$2, %rdx	#, tmp305
	movq	(%rax,%rdx,8), %rdx	# _85->elms, D.19418
	movq	-72(%rbp), %rax	# x, tmp306
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, D.19417
	andl	$63, %eax	#, D.19421
	movl	%eax, %ecx	# D.19421, tmp426
	shrq	%cl, %rdx	# tmp426, D.19418
	movq	%rdx, %rax	# D.19418, D.19418
	andl	$1, %eax	#, D.19418
	testq	%rax, %rax	# D.19418
	je	.L634	#,
	.loc 1 3786 0
	movl	-56(%rbp), %eax	# bb, tmp307
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19418
	movq	-88(%rbp), %rax	# bmap, tmp308
	addq	%rdx, %rax	# D.19418, D.19419
	movq	(%rax), %rdx	# *_96, D.19420
	movl	-76(%rbp), %eax	# indx, indx.492
	shrl	$6, %eax	#, D.19417
	movl	-56(%rbp), %ecx	# bb, tmp309
	movslq	%ecx, %rcx	# tmp309, D.19418
	leaq	0(,%rcx,8), %rsi	#, D.19418
	movq	-88(%rbp), %rcx	# bmap, tmp310
	addq	%rsi, %rcx	# D.19418, D.19419
	movq	(%rcx), %rcx	# *_102, D.19420
	movl	%eax, %esi	# D.19417, tmp311
	addq	$2, %rsi	#, tmp312
	movq	(%rcx,%rsi,8), %rsi	# _103->elms, D.19418
	movl	-76(%rbp), %ecx	# indx, tmp313
	andl	$63, %ecx	#, D.19421
	movl	$1, %edi	#, tmp314
	salq	%cl, %rdi	# D.19421, D.19418
	movq	%rdi, %rcx	# D.19418, D.19418
	notq	%rcx	# D.19418
	andq	%rsi, %rcx	# D.19418, D.19418
	movl	%eax, %eax	# D.19417, tmp315
	addq	$2, %rax	#, tmp316
	movq	%rcx, (%rdx,%rax,8)	# D.19418, _97->elms
.L634:
	.loc 1 3784 0
	addl	$1, -56(%rbp)	#, bb
.L633:
	.loc 1 3784 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.493
	cmpl	%eax, -56(%rbp)	# n_basic_blocks.493, bb
	jl	.L635	#,
	.loc 1 3795 0 is_stmt 1
	jmp	.L615	#
.L632:
	.loc 1 3790 0
	movq	reg_set_table(%rip), %rdx	# reg_set_table, reg_set_table.494
	movq	-72(%rbp), %rax	# x, tmp317
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, D.19417
	movl	%eax, %eax	# D.19417, D.19418
	salq	$3, %rax	#, D.19418
	addq	%rdx, %rax	# reg_set_table.494, D.19422
	movq	(%rax), %rax	# *_114, tmp318
	movq	%rax, -40(%rbp)	# tmp318, r
	jmp	.L636	#
.L637:
	.loc 1 3791 0 discriminator 2
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.495
	movq	-40(%rbp), %rdx	# r, tmp319
	movq	8(%rdx), %rdx	# r_8->insn, D.19423
	movl	8(%rdx), %edx	# _117->fld[0].rtint, D.19421
	movslq	%edx, %rdx	# D.19421, tmp320
	addq	$4, %rdx	#, tmp321
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.495_116->data.bb, D.19424
	movl	88(%rax), %eax	# _119->index, D.19421
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19418
	movq	-88(%rbp), %rax	# bmap, tmp322
	addq	%rdx, %rax	# D.19418, D.19419
	movq	(%rax), %rdx	# *_123, D.19420
	movl	-76(%rbp), %eax	# indx, indx.496
	shrl	$6, %eax	#, D.19417
	movq	basic_block_for_insn(%rip), %rcx	# basic_block_for_insn, basic_block_for_insn.497
	movq	-40(%rbp), %rsi	# r, tmp323
	movq	8(%rsi), %rsi	# r_8->insn, D.19423
	movl	8(%rsi), %esi	# _128->fld[0].rtint, D.19421
	movslq	%esi, %rsi	# D.19421, tmp324
	addq	$4, %rsi	#, tmp325
	movq	(%rcx,%rsi,8), %rcx	# basic_block_for_insn.497_127->data.bb, D.19424
	movl	88(%rcx), %ecx	# _130->index, D.19421
	movslq	%ecx, %rcx	# D.19421, D.19418
	leaq	0(,%rcx,8), %rsi	#, D.19418
	movq	-88(%rbp), %rcx	# bmap, tmp326
	addq	%rsi, %rcx	# D.19418, D.19419
	movq	(%rcx), %rcx	# *_134, D.19420
	movl	%eax, %esi	# D.19417, tmp327
	addq	$2, %rsi	#, tmp328
	movq	(%rcx,%rsi,8), %rsi	# _135->elms, D.19418
	movl	-76(%rbp), %ecx	# indx, tmp329
	andl	$63, %ecx	#, D.19421
	movl	$1, %edi	#, tmp330
	salq	%cl, %rdi	# D.19421, D.19418
	movq	%rdi, %rcx	# D.19418, D.19418
	notq	%rcx	# D.19418
	andq	%rsi, %rcx	# D.19418, D.19418
	movl	%eax, %eax	# D.19417, tmp331
	addq	$2, %rax	#, tmp332
	movq	%rcx, (%rdx,%rax,8)	# D.19418, _124->elms
	.loc 1 3790 0 discriminator 2
	movq	-40(%rbp), %rax	# r, tmp333
	movq	(%rax), %rax	# r_8->next, tmp334
	movq	%rax, -40(%rbp)	# tmp334, r
.L636:
	.loc 1 3790 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, r
	jne	.L637	#,
	.loc 1 3795 0 is_stmt 1
	jmp	.L615	#
.L623:
	.loc 1 3798 0
	movl	$0, -56(%rbp)	#, bb
	jmp	.L638	#
.L648:
.LBB38:
	.loc 1 3800 0
	movq	canon_modify_mem_list(%rip), %rax	# canon_modify_mem_list, canon_modify_mem_list.498
	movl	-56(%rbp), %edx	# bb, tmp335
	movslq	%edx, %rdx	# tmp335, D.19418
	salq	$3, %rdx	#, D.19418
	addq	%rdx, %rax	# D.19418, D.19425
	movq	(%rax), %rax	# *_147, tmp336
	movq	%rax, -32(%rbp)	# tmp336, list_entry
	.loc 1 3802 0
	jmp	.L639	#
.L647:
.LBB39:
	.loc 1 3806 0
	movq	-32(%rbp), %rax	# list_entry, tmp337
	movq	8(%rax), %rax	# list_entry_9->fld[0].rtx, D.19423
	movzwl	(%rax), %eax	# _149->code, D.19416
	cmpw	$34, %ax	#, D.19416
	jne	.L640	#,
	.loc 1 3808 0
	cmpl	$0, -80(%rbp)	#, set_p
	je	.L641	#,
	.loc 1 3809 0
	movl	-56(%rbp), %eax	# bb, tmp338
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19418
	movq	-88(%rbp), %rax	# bmap, tmp339
	addq	%rdx, %rax	# D.19418, D.19419
	movq	(%rax), %rdx	# *_153, D.19420
	movl	-76(%rbp), %eax	# indx, indx.499
	shrl	$6, %eax	#, D.19417
	movl	-56(%rbp), %ecx	# bb, tmp340
	movslq	%ecx, %rcx	# tmp340, D.19418
	leaq	0(,%rcx,8), %rsi	#, D.19418
	movq	-88(%rbp), %rcx	# bmap, tmp341
	addq	%rsi, %rcx	# D.19418, D.19419
	movq	(%rcx), %rcx	# *_159, D.19420
	movl	%eax, %esi	# D.19417, tmp342
	addq	$2, %rsi	#, tmp343
	movq	(%rcx,%rsi,8), %rsi	# _160->elms, D.19418
	movl	-76(%rbp), %ecx	# indx, tmp344
	andl	$63, %ecx	#, D.19421
	movl	$1, %edi	#, tmp345
	salq	%cl, %rdi	# D.19421, D.19418
	movq	%rdi, %rcx	# D.19418, D.19418
	orq	%rsi, %rcx	# D.19418, D.19418
	movl	%eax, %eax	# D.19417, tmp346
	addq	$2, %rax	#, tmp347
	movq	%rcx, (%rdx,%rax,8)	# D.19418, _154->elms
	.loc 1 3812 0
	jmp	.L643	#
.L641:
	.loc 1 3811 0
	movl	-56(%rbp), %eax	# bb, tmp348
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19418
	movq	-88(%rbp), %rax	# bmap, tmp349
	addq	%rdx, %rax	# D.19418, D.19419
	movq	(%rax), %rdx	# *_167, D.19420
	movl	-76(%rbp), %eax	# indx, indx.500
	shrl	$6, %eax	#, D.19417
	movl	-56(%rbp), %ecx	# bb, tmp350
	movslq	%ecx, %rcx	# tmp350, D.19418
	leaq	0(,%rcx,8), %rsi	#, D.19418
	movq	-88(%rbp), %rcx	# bmap, tmp351
	addq	%rsi, %rcx	# D.19418, D.19419
	movq	(%rcx), %rcx	# *_173, D.19420
	movl	%eax, %esi	# D.19417, tmp352
	addq	$2, %rsi	#, tmp353
	movq	(%rcx,%rsi,8), %rsi	# _174->elms, D.19418
	movl	-76(%rbp), %ecx	# indx, tmp354
	andl	$63, %ecx	#, D.19421
	movl	$1, %edi	#, tmp355
	salq	%cl, %rdi	# D.19421, D.19418
	movq	%rdi, %rcx	# D.19418, D.19418
	notq	%rcx	# D.19418
	andq	%rsi, %rcx	# D.19418, D.19418
	movl	%eax, %eax	# D.19417, tmp356
	addq	$2, %rax	#, tmp357
	movq	%rcx, (%rdx,%rax,8)	# D.19418, _168->elms
	.loc 1 3812 0
	jmp	.L643	#
.L640:
	.loc 1 3817 0
	movq	-32(%rbp), %rax	# list_entry, tmp358
	movq	8(%rax), %rax	# list_entry_9->fld[0].rtx, tmp359
	movq	%rax, -24(%rbp)	# tmp359, dest
	.loc 1 3818 0
	movq	-32(%rbp), %rax	# list_entry, tmp360
	movq	16(%rax), %rax	# list_entry_9->fld[1].rtx, tmp361
	movq	%rax, -32(%rbp)	# tmp361, list_entry
	.loc 1 3819 0
	movq	-32(%rbp), %rax	# list_entry, tmp362
	movq	8(%rax), %rax	# list_entry_181->fld[0].rtx, tmp363
	movq	%rax, -16(%rbp)	# tmp363, dest_addr
	.loc 1 3821 0
	movq	-24(%rbp), %rax	# dest, tmp364
	movzbl	2(%rax), %eax	# dest_180->mode, D.19426
	movzbl	%al, %esi	# D.19426, D.19427
	movq	-72(%rbp), %rcx	# x, tmp365
	movq	-16(%rbp), %rdx	# dest_addr, tmp366
	movq	-24(%rbp), %rax	# dest, tmp367
	movl	$rtx_addr_varies_p, %r8d	#,
	movq	%rax, %rdi	# tmp367,
	call	canon_true_dependence	#
	testl	%eax, %eax	# D.19421
	je	.L644	#,
	.loc 1 3824 0
	cmpl	$0, -80(%rbp)	#, set_p
	je	.L645	#,
	.loc 1 3825 0
	movl	-56(%rbp), %eax	# bb, tmp368
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19418
	movq	-88(%rbp), %rax	# bmap, tmp369
	addq	%rdx, %rax	# D.19418, D.19419
	movq	(%rax), %rdx	# *_188, D.19420
	movl	-76(%rbp), %eax	# indx, indx.501
	shrl	$6, %eax	#, D.19417
	movl	-56(%rbp), %ecx	# bb, tmp370
	movslq	%ecx, %rcx	# tmp370, D.19418
	leaq	0(,%rcx,8), %rsi	#, D.19418
	movq	-88(%rbp), %rcx	# bmap, tmp371
	addq	%rsi, %rcx	# D.19418, D.19419
	movq	(%rcx), %rcx	# *_194, D.19420
	movl	%eax, %esi	# D.19417, tmp372
	addq	$2, %rsi	#, tmp373
	movq	(%rcx,%rsi,8), %rsi	# _195->elms, D.19418
	movl	-76(%rbp), %ecx	# indx, tmp374
	andl	$63, %ecx	#, D.19421
	movl	$1, %edi	#, tmp375
	salq	%cl, %rdi	# D.19421, D.19418
	movq	%rdi, %rcx	# D.19418, D.19418
	orq	%rsi, %rcx	# D.19418, D.19418
	movl	%eax, %eax	# D.19417, tmp376
	addq	$2, %rax	#, tmp377
	movq	%rcx, (%rdx,%rax,8)	# D.19418, _189->elms
	.loc 1 3828 0
	jmp	.L643	#
.L645:
	.loc 1 3827 0
	movl	-56(%rbp), %eax	# bb, tmp378
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19418
	movq	-88(%rbp), %rax	# bmap, tmp379
	addq	%rdx, %rax	# D.19418, D.19419
	movq	(%rax), %rdx	# *_202, D.19420
	movl	-76(%rbp), %eax	# indx, indx.502
	shrl	$6, %eax	#, D.19417
	movl	-56(%rbp), %ecx	# bb, tmp380
	movslq	%ecx, %rcx	# tmp380, D.19418
	leaq	0(,%rcx,8), %rsi	#, D.19418
	movq	-88(%rbp), %rcx	# bmap, tmp381
	addq	%rsi, %rcx	# D.19418, D.19419
	movq	(%rcx), %rcx	# *_208, D.19420
	movl	%eax, %esi	# D.19417, tmp382
	addq	$2, %rsi	#, tmp383
	movq	(%rcx,%rsi,8), %rsi	# _209->elms, D.19418
	movl	-76(%rbp), %ecx	# indx, tmp384
	andl	$63, %ecx	#, D.19421
	movl	$1, %edi	#, tmp385
	salq	%cl, %rdi	# D.19421, D.19418
	movq	%rdi, %rcx	# D.19418, D.19418
	notq	%rcx	# D.19418
	andq	%rsi, %rcx	# D.19418, D.19418
	movl	%eax, %eax	# D.19417, tmp386
	addq	$2, %rax	#, tmp387
	movq	%rcx, (%rdx,%rax,8)	# D.19418, _203->elms
	.loc 1 3828 0
	jmp	.L643	#
.L644:
	.loc 1 3830 0
	movq	-32(%rbp), %rax	# list_entry, tmp388
	movq	16(%rax), %rax	# list_entry_181->fld[1].rtx, tmp389
	movq	%rax, -32(%rbp)	# tmp389, list_entry
.L639:
.LBE39:
	.loc 1 3802 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, list_entry
	jne	.L647	#,
.L643:
.LBE38:
	.loc 1 3798 0
	addl	$1, -56(%rbp)	#, bb
.L638:
	.loc 1 3798 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.503
	cmpl	%eax, -56(%rbp)	# n_basic_blocks.503, bb
	jl	.L648	#,
	.loc 1 3834 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp390
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp391
	movq	%rax, -72(%rbp)	# tmp391, x
	.loc 1 3835 0
	jmp	.L616	#
.L657:
	.loc 1 3850 0
	nop
	.loc 1 3853 0
	movl	-44(%rbp), %eax	# code, code.504
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19426
	movzbl	%al, %eax	# D.19426, D.19421
	subl	$1, %eax	#, tmp393
	movl	%eax, -52(%rbp)	# tmp393, i
	movl	-44(%rbp), %eax	# code, code.505
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp395
	movq	%rax, -8(%rbp)	# tmp395, fmt
	jmp	.L649	#
.L655:
	.loc 1 3855 0
	movl	-52(%rbp), %eax	# i, tmp396
	movslq	%eax, %rdx	# tmp396, D.19428
	movq	-8(%rbp), %rax	# fmt, tmp397
	addq	%rdx, %rax	# D.19428, D.19429
	movzbl	(%rax), %eax	# *_225, D.19430
	cmpb	$101, %al	#, D.19430
	jne	.L650	#,
	.loc 1 3860 0
	cmpl	$0, -52(%rbp)	#, i
	jne	.L651	#,
	.loc 1 3862 0
	movq	-72(%rbp), %rax	# x, tmp398
	movl	-52(%rbp), %edx	# i, tmp400
	movslq	%edx, %rdx	# tmp400, tmp399
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_5].rtx, tmp401
	movq	%rax, -72(%rbp)	# tmp401, x
	.loc 1 3863 0
	jmp	.L616	#
.L651:
	.loc 1 3866 0
	movq	-72(%rbp), %rax	# x, tmp402
	movl	-52(%rbp), %edx	# i, tmp404
	movslq	%edx, %rdx	# tmp404, tmp403
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_5].rtx, D.19423
	movl	-80(%rbp), %ecx	# set_p, tmp405
	movq	-88(%rbp), %rdx	# bmap, tmp406
	movl	-76(%rbp), %esi	# indx, tmp407
	movq	%rax, %rdi	# D.19423,
	call	compute_transp	#
	jmp	.L652	#
.L650:
	.loc 1 3868 0
	movl	-52(%rbp), %eax	# i, tmp408
	movslq	%eax, %rdx	# tmp408, D.19428
	movq	-8(%rbp), %rax	# fmt, tmp409
	addq	%rdx, %rax	# D.19428, D.19429
	movzbl	(%rax), %eax	# *_230, D.19430
	cmpb	$69, %al	#, D.19430
	jne	.L652	#,
	.loc 1 3869 0
	movl	$0, -48(%rbp)	#, j
	jmp	.L653	#
.L654:
	.loc 1 3870 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp410
	movl	-52(%rbp), %edx	# i, tmp412
	movslq	%edx, %rdx	# tmp412, tmp411
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_5].rtvec, D.19431
	movl	-48(%rbp), %edx	# j, tmp414
	movslq	%edx, %rdx	# tmp414, tmp413
	movq	8(%rax,%rdx,8), %rax	# _235->elem, D.19423
	movl	-80(%rbp), %ecx	# set_p, tmp415
	movq	-88(%rbp), %rdx	# bmap, tmp416
	movl	-76(%rbp), %esi	# indx, tmp417
	movq	%rax, %rdi	# D.19423,
	call	compute_transp	#
	.loc 1 3869 0 discriminator 2
	addl	$1, -48(%rbp)	#, j
.L653:
	.loc 1 3869 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp418
	movl	-52(%rbp), %edx	# i, tmp420
	movslq	%edx, %rdx	# tmp420, tmp419
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_5].rtvec, D.19431
	movl	(%rax), %eax	# _233->num_elem, D.19421
	cmpl	-48(%rbp), %eax	# j, D.19421
	jg	.L654	#,
.L652:
	.loc 1 3853 0 is_stmt 1
	subl	$1, -52(%rbp)	#, i
.L649:
	.loc 1 3853 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, i
	jns	.L655	#,
	jmp	.L615	#
.L658:
	.loc 1 3847 0 is_stmt 1
	nop
.L615:
	.loc 1 3872 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	compute_transp, .-compute_transp
	.type	compute_cprop_data, @function
compute_cprop_data:
.LFB78:
	.loc 1 3879 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3880 0
	movq	cprop_pavloc(%rip), %rsi	# cprop_pavloc, cprop_pavloc.506
	movq	cprop_absaltered(%rip), %rax	# cprop_absaltered, cprop_absaltered.507
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# cprop_absaltered.507,
	call	compute_local_properties	#
	.loc 1 3881 0
	movq	cprop_avin(%rip), %rcx	# cprop_avin, cprop_avin.508
	movq	cprop_avout(%rip), %rdx	# cprop_avout, cprop_avout.509
	movq	cprop_absaltered(%rip), %rsi	# cprop_absaltered, cprop_absaltered.510
	movq	cprop_pavloc(%rip), %rax	# cprop_pavloc, cprop_pavloc.511
	movq	%rax, %rdi	# cprop_pavloc.511,
	call	compute_available	#
	.loc 1 3883 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	compute_cprop_data, .-compute_cprop_data
	.local	reg_use_table
	.comm	reg_use_table,64,32
	.local	reg_use_count
	.comm	reg_use_count,4,4
	.type	find_used_regs, @function
find_used_regs:
.LFB79:
	.loc 1 3908 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# xptr, xptr
	movq	%rsi, -48(%rbp)	# data, data
	.loc 1 3912 0
	movq	-40(%rbp), %rax	# xptr, tmp80
	movq	(%rax), %rax	# *xptr_4(D), tmp81
	movq	%rax, -16(%rbp)	# tmp81, x
.L661:
	.loc 1 3917 0
	cmpq	$0, -16(%rbp)	#, x
	jne	.L662	#,
	.loc 1 3918 0
	jmp	.L660	#
.L662:
	.loc 1 3920 0
	movq	-16(%rbp), %rax	# x, tmp82
	movzwl	(%rax), %eax	# x_3->code, D.19432
	movzwl	%ax, %eax	# D.19432, tmp83
	movl	%eax, -20(%rbp)	# tmp83, code
	.loc 1 3921 0
	movq	-16(%rbp), %rax	# x, tmp84
	movzwl	(%rax), %eax	# x_3->code, D.19432
	cmpw	$61, %ax	#, D.19432
	jne	.L664	#,
	.loc 1 3923 0
	movl	reg_use_count(%rip), %eax	# reg_use_count, reg_use_count.512
	cmpl	$8, %eax	#, reg_use_count.512
	jne	.L665	#,
	.loc 1 3924 0
	jmp	.L660	#
.L665:
	.loc 1 3926 0
	movl	reg_use_count(%rip), %eax	# reg_use_count, reg_use_count.513
	cltq
	movq	-16(%rbp), %rdx	# x, tmp86
	movq	%rdx, reg_use_table(,%rax,8)	# tmp86, reg_use_table[reg_use_count.513_10].reg_rtx
	.loc 1 3927 0
	movl	reg_use_count(%rip), %eax	# reg_use_count, reg_use_count.514
	addl	$1, %eax	#, reg_use_count.515
	movl	%eax, reg_use_count(%rip)	# reg_use_count.515, reg_use_count
.L664:
	.loc 1 3932 0
	movl	-20(%rbp), %eax	# code, code.516
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19433
	movzbl	%al, %eax	# D.19433, D.19434
	subl	$1, %eax	#, tmp88
	movl	%eax, -28(%rbp)	# tmp88, i
	movl	-20(%rbp), %eax	# code, code.517
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp90
	movq	%rax, -8(%rbp)	# tmp90, fmt
	jmp	.L666	#
.L672:
	.loc 1 3934 0
	movl	-28(%rbp), %eax	# i, tmp91
	movslq	%eax, %rdx	# tmp91, D.19435
	movq	-8(%rbp), %rax	# fmt, tmp92
	addq	%rdx, %rax	# D.19435, D.19436
	movzbl	(%rax), %eax	# *_20, D.19437
	cmpb	$101, %al	#, D.19437
	jne	.L667	#,
	.loc 1 3939 0
	cmpl	$0, -28(%rbp)	#, i
	jne	.L668	#,
	.loc 1 3941 0
	movq	-16(%rbp), %rax	# x, tmp93
	movq	8(%rax), %rax	# x_3->fld[0].rtx, tmp94
	movq	%rax, -16(%rbp)	# tmp94, x
	.loc 1 3942 0
	jmp	.L661	#
.L668:
	.loc 1 3945 0
	movl	-28(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp97
	movq	-16(%rbp), %rax	# x, tmp99
	addq	%rdx, %rax	# tmp97, tmp98
	leaq	8(%rax), %rdx	#, D.19438
	movq	-48(%rbp), %rax	# data, tmp100
	movq	%rax, %rsi	# tmp100,
	movq	%rdx, %rdi	# D.19438,
	call	find_used_regs	#
	jmp	.L669	#
.L667:
	.loc 1 3947 0
	movl	-28(%rbp), %eax	# i, tmp101
	movslq	%eax, %rdx	# tmp101, D.19435
	movq	-8(%rbp), %rax	# fmt, tmp102
	addq	%rdx, %rax	# D.19435, D.19436
	movzbl	(%rax), %eax	# *_26, D.19437
	cmpb	$69, %al	#, D.19437
	jne	.L669	#,
	.loc 1 3948 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L670	#
.L671:
	.loc 1 3949 0 discriminator 2
	movq	-16(%rbp), %rax	# x, tmp103
	movl	-28(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, tmp104
	movq	8(%rax,%rdx,8), %rax	# x_3->fld[i_1].rtvec, D.19439
	movl	-24(%rbp), %edx	# j, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	salq	$3, %rdx	#, tmp108
	addq	%rdx, %rax	# tmp108, tmp109
	leaq	8(%rax), %rdx	#, D.19438
	movq	-48(%rbp), %rax	# data, tmp110
	movq	%rax, %rsi	# tmp110,
	movq	%rdx, %rdi	# D.19438,
	call	find_used_regs	#
	.loc 1 3948 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L670:
	.loc 1 3948 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# x, tmp111
	movl	-28(%rbp), %edx	# i, tmp113
	movslq	%edx, %rdx	# tmp113, tmp112
	movq	8(%rax,%rdx,8), %rax	# x_3->fld[i_1].rtvec, D.19439
	movl	(%rax), %eax	# _29->num_elem, D.19434
	cmpl	-24(%rbp), %eax	# j, D.19434
	jg	.L671	#,
.L669:
	.loc 1 3932 0 is_stmt 1
	subl	$1, -28(%rbp)	#, i
.L666:
	.loc 1 3932 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, i
	jns	.L672	#,
.L660:
	.loc 1 3951 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	find_used_regs, .-find_used_regs
	.type	try_replace_reg, @function
try_replace_reg:
.LFB80:
	.loc 1 3959 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# from, from
	movq	%rsi, -48(%rbp)	# to, to
	movq	%rdx, -56(%rbp)	# insn, insn
	.loc 1 3960 0
	movq	-56(%rbp), %rax	# insn, tmp79
	movq	%rax, %rdi	# tmp79,
	call	find_reg_equal_equiv_note	#
	movq	%rax, -24(%rbp)	# tmp80, note
	.loc 1 3961 0
	movq	$0, -16(%rbp)	#, src
	.loc 1 3962 0
	movl	$0, -28(%rbp)	#, success
	.loc 1 3963 0
	movq	-56(%rbp), %rax	# insn, tmp81
	movzwl	(%rax), %eax	# insn_6(D)->code, D.19440
	movzwl	%ax, %eax	# D.19440, D.19441
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19442
	cmpb	$105, %al	#, D.19442
	jne	.L674	#,
	.loc 1 3963 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# insn, tmp83
	movq	32(%rax), %rax	# insn_6(D)->fld[3].rtx, D.19443
	movzwl	(%rax), %eax	# _13->code, D.19440
	cmpw	$47, %ax	#, D.19440
	jne	.L675	#,
	.loc 1 3963 0 discriminator 3
	movq	-56(%rbp), %rax	# insn, tmp84
	movq	32(%rax), %rax	# insn_6(D)->fld[3].rtx, iftmp.519
	jmp	.L677	#
.L675:
	.loc 1 3963 0 discriminator 4
	movq	-56(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rdx	# insn_6(D)->fld[3].rtx, D.19443
	movq	-56(%rbp), %rax	# insn, tmp86
	movq	%rdx, %rsi	# D.19443,
	movq	%rax, %rdi	# tmp86,
	call	single_set_2	#
	jmp	.L677	#
.L674:
	.loc 1 3963 0 discriminator 2
	movl	$0, %eax	#, iftmp.518
.L677:
	.loc 1 3963 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.518, set
	.loc 1 3965 0 is_stmt 1 discriminator 5
	movq	-56(%rbp), %rdx	# insn, tmp87
	movq	-48(%rbp), %rcx	# to, tmp88
	movq	-40(%rbp), %rax	# from, tmp89
	movq	%rcx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	validate_replace_src	#
	movl	%eax, -28(%rbp)	# tmp90, success
	.loc 1 3970 0 discriminator 5
	cmpl	$0, -28(%rbp)	#, success
	jne	.L678	#,
	.loc 1 3970 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, set
	je	.L678	#,
	.loc 1 3972 0 is_stmt 1
	movq	-8(%rbp), %rax	# set, tmp91
	movq	16(%rax), %rax	# set_20->fld[1].rtx, D.19443
	movq	-48(%rbp), %rdx	# to, tmp92
	movq	-40(%rbp), %rcx	# from, tmp93
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.19443,
	call	simplify_replace_rtx	#
	movq	%rax, -16(%rbp)	# tmp94, src
	.loc 1 3974 0
	movq	-8(%rbp), %rax	# set, tmp95
	movq	16(%rax), %rdx	# set_20->fld[1].rtx, D.19443
	movq	-16(%rbp), %rax	# src, tmp96
	movq	%rdx, %rsi	# D.19443,
	movq	%rax, %rdi	# tmp96,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.19441
	jne	.L678	#,
	.loc 1 3975 0
	movq	-8(%rbp), %rax	# set, tmp97
	leaq	16(%rax), %rsi	#, D.19444
	movq	-16(%rbp), %rdx	# src, tmp98
	movq	-56(%rbp), %rax	# insn, tmp99
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp99,
	call	validate_change	#
	testl	%eax, %eax	# D.19441
	je	.L678	#,
	.loc 1 3976 0
	movl	$1, -28(%rbp)	#, success
.L678:
	.loc 1 3981 0
	cmpl	$0, -28(%rbp)	#, success
	jne	.L679	#,
	.loc 1 3981 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, note
	jne	.L679	#,
	cmpq	$0, -8(%rbp)	#, set
	je	.L679	#,
	.loc 1 3982 0 is_stmt 1
	movq	-16(%rbp), %rax	# src, tmp100
	movq	%rax, %rdi	# tmp100,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.19443
	movq	-56(%rbp), %rax	# insn, tmp101
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	set_unique_reg_note	#
	movq	%rax, -24(%rbp)	# tmp102, note
	jmp	.L680	#
.L679:
	.loc 1 3986 0
	cmpq	$0, -24(%rbp)	#, note
	je	.L680	#,
	.loc 1 3987 0
	movq	-24(%rbp), %rax	# note, tmp103
	movq	8(%rax), %rax	# note_7->fld[0].rtx, D.19443
	movq	-48(%rbp), %rdx	# to, tmp104
	movq	-40(%rbp), %rcx	# from, tmp105
	movq	%rcx, %rsi	# tmp105,
	movq	%rax, %rdi	# D.19443,
	call	simplify_replace_rtx	#
	movq	-24(%rbp), %rdx	# note, tmp106
	movq	%rax, 8(%rdx)	# D.19443, note_7->fld[0].rtx
.L680:
	.loc 1 3993 0
	cmpq	$0, -24(%rbp)	#, note
	je	.L681	#,
	.loc 1 3993 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# note, tmp107
	movq	8(%rax), %rax	# note_1->fld[0].rtx, D.19443
	movzwl	(%rax), %eax	# _35->code, D.19440
	cmpw	$61, %ax	#, D.19440
	jne	.L681	#,
	.loc 1 3994 0 is_stmt 1
	movq	-24(%rbp), %rdx	# note, tmp108
	movq	-56(%rbp), %rax	# insn, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	remove_note	#
.L681:
	.loc 1 3996 0
	movl	-28(%rbp), %eax	# success, D.19441
	.loc 1 3997 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	try_replace_reg, .-try_replace_reg
	.type	find_avail_set, @function
find_avail_set:
.LFB81:
	.loc 1 4006 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# regno, regno
	movq	%rsi, -48(%rbp)	# insn, insn
	.loc 1 4009 0
	movq	$0, -24(%rbp)	#, set1
.L694:
.LBB40:
	.loc 1 4023 0
	movl	-36(%rbp), %eax	# regno, regno.520
	movl	$0, %esi	#,
	movl	%eax, %edi	# regno.520,
	call	lookup_set	#
	movq	%rax, -16(%rbp)	# tmp94, set
	.loc 1 4027 0
	jmp	.L684	#
.L687:
	.loc 1 4029 0
	movq	cprop_avin(%rip), %rcx	# cprop_avin, cprop_avin.521
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.522
	movq	-48(%rbp), %rdx	# insn, tmp95
	movl	8(%rdx), %edx	# insn_12(D)->fld[0].rtint, D.19445
	movslq	%edx, %rdx	# D.19445, tmp96
	addq	$4, %rdx	#, tmp97
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.522_11->data.bb, D.19446
	movl	88(%rax), %eax	# _14->index, D.19445
	cltq
	salq	$3, %rax	#, D.19447
	addq	%rcx, %rax	# cprop_avin.521, D.19448
	movq	(%rax), %rax	# *_18, D.19449
	movq	-16(%rbp), %rdx	# set, tmp98
	movl	8(%rdx), %edx	# set_5->bitmap_index, D.19445
	shrl	$6, %edx	#, D.19450
	movl	%edx, %edx	# D.19450, tmp99
	addq	$2, %rdx	#, tmp100
	movq	(%rax,%rdx,8), %rdx	# _19->elms, D.19447
	movq	-16(%rbp), %rax	# set, tmp101
	movl	8(%rax), %eax	# set_5->bitmap_index, D.19445
	andl	$63, %eax	#, D.19445
	movl	%eax, %ecx	# D.19445, tmp122
	shrq	%cl, %rdx	# tmp122, D.19447
	movq	%rdx, %rax	# D.19447, D.19447
	andl	$1, %eax	#, D.19447
	testq	%rax, %rax	# D.19447
	je	.L685	#,
	.loc 1 4030 0
	jmp	.L686	#
.L685:
	.loc 1 4031 0
	movl	-36(%rbp), %eax	# regno, regno.523
	movq	-16(%rbp), %rdx	# set, tmp102
	movq	%rdx, %rsi	# tmp102,
	movl	%eax, %edi	# regno.523,
	call	next_set	#
	movq	%rax, -16(%rbp)	# tmp103, set
.L684:
	.loc 1 4027 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, set
	jne	.L687	#,
.L686:
	.loc 1 4036 0
	cmpq	$0, -16(%rbp)	#, set
	jne	.L688	#,
	.loc 1 4037 0
	jmp	.L689	#
.L688:
	.loc 1 4039 0
	movq	-16(%rbp), %rax	# set, tmp104
	movq	(%rax), %rax	# set_5->expr, D.19451
	movzwl	(%rax), %eax	# _30->code, D.19452
	cmpw	$47, %ax	#, D.19452
	je	.L690	#,
	.loc 1 4040 0
	movl	$__FUNCTION__.12869, %edx	#,
	movl	$4040, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L690:
	.loc 1 4042 0
	movq	-16(%rbp), %rax	# set, tmp105
	movq	(%rax), %rax	# set_5->expr, D.19451
	movq	16(%rax), %rax	# _32->fld[1].rtx, tmp106
	movq	%rax, -8(%rbp)	# tmp106, src
	.loc 1 4051 0
	movq	-8(%rbp), %rax	# src, tmp107
	movzwl	(%rax), %eax	# src_33->code, D.19452
	cmpw	$67, %ax	#, D.19452
	je	.L691	#,
	.loc 1 4051 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# src, tmp108
	movzwl	(%rax), %eax	# src_33->code, D.19452
	cmpw	$68, %ax	#, D.19452
	je	.L691	#,
	movq	-8(%rbp), %rax	# src, tmp109
	movzwl	(%rax), %eax	# src_33->code, D.19452
	cmpw	$54, %ax	#, D.19452
	je	.L691	#,
	movq	-8(%rbp), %rax	# src, tmp110
	movzwl	(%rax), %eax	# src_33->code, D.19452
	cmpw	$55, %ax	#, D.19452
	je	.L691	#,
	movq	-8(%rbp), %rax	# src, tmp111
	movzwl	(%rax), %eax	# src_33->code, D.19452
	cmpw	$58, %ax	#, D.19452
	je	.L691	#,
	movq	-8(%rbp), %rax	# src, tmp112
	movzwl	(%rax), %eax	# src_33->code, D.19452
	cmpw	$134, %ax	#, D.19452
	je	.L691	#,
	movq	-8(%rbp), %rax	# src, tmp113
	movzwl	(%rax), %eax	# src_33->code, D.19452
	cmpw	$56, %ax	#, D.19452
	je	.L691	#,
	movq	-8(%rbp), %rax	# src, tmp114
	movzwl	(%rax), %eax	# src_33->code, D.19452
	cmpw	$140, %ax	#, D.19452
	je	.L691	#,
	movq	-48(%rbp), %rdx	# insn, tmp115
	movq	-8(%rbp), %rax	# src, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	oprs_not_set_p	#
	testl	%eax, %eax	# D.19445
	je	.L692	#,
.L691:
	.loc 1 4052 0 is_stmt 1
	movq	-16(%rbp), %rax	# set, tmp117
	movq	%rax, -24(%rbp)	# tmp117, set1
.L692:
	.loc 1 4056 0
	movq	-8(%rbp), %rax	# src, tmp118
	movzwl	(%rax), %eax	# src_33->code, D.19452
	cmpw	$61, %ax	#, D.19452
	je	.L693	#,
	.loc 1 4057 0
	jmp	.L689	#
.L693:
	.loc 1 4061 0
	movq	-8(%rbp), %rax	# src, tmp119
	movl	8(%rax), %eax	# src_33->fld[0].rtuint, D.19450
	movl	%eax, -36(%rbp)	# D.19450, regno
.LBE40:
	.loc 1 4062 0
	jmp	.L694	#
.L689:
	.loc 1 4066 0
	movq	-24(%rbp), %rax	# set1, D.19453
	.loc 1 4067 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	find_avail_set, .-find_avail_set
	.section	.rodata
	.align 8
.LC23:
	.string	"CONST-PROP: Replacing reg %d in insn %d with constant "
	.text
	.type	cprop_jump, @function
cprop_jump:
.LFB82:
	.loc 1 4080 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# bb, bb
	movq	%rsi, -32(%rbp)	# insn, insn
	movq	%rdx, -40(%rbp)	# from, from
	movq	%rcx, -48(%rbp)	# src, src
	.loc 1 4081 0
	movq	-32(%rbp), %rax	# insn, tmp77
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, tmp78
	movq	%rax, -16(%rbp)	# tmp78, set
	.loc 1 4082 0
	movq	-16(%rbp), %rax	# set, tmp79
	movq	16(%rax), %rax	# set_3->fld[1].rtx, D.19455
	movq	-48(%rbp), %rdx	# src, tmp80
	movq	-40(%rbp), %rcx	# from, tmp81
	movq	%rcx, %rsi	# tmp81,
	movq	%rax, %rdi	# D.19455,
	call	simplify_replace_rtx	#
	movq	%rax, -8(%rbp)	# tmp82, new
	.loc 1 4086 0
	movq	-16(%rbp), %rax	# set, tmp83
	movq	16(%rax), %rdx	# set_3->fld[1].rtx, D.19455
	movq	-8(%rbp), %rax	# new, tmp84
	movq	%rdx, %rsi	# D.19455,
	movq	%rax, %rdi	# tmp84,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.19454
	je	.L697	#,
	.loc 1 4087 0
	movl	$0, %eax	#, D.19454
	jmp	.L698	#
.L697:
	.loc 1 4090 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.19455
	cmpq	-8(%rbp), %rax	# new, D.19455
	jne	.L699	#,
	.loc 1 4091 0
	movq	-32(%rbp), %rax	# insn, tmp85
	movq	%rax, %rdi	# tmp85,
	call	delete_insn	#
	jmp	.L700	#
.L699:
	.loc 1 4094 0
	movq	-16(%rbp), %rax	# set, tmp86
	leaq	16(%rax), %rsi	#, D.19456
	movq	-8(%rbp), %rdx	# new, tmp87
	movq	-32(%rbp), %rax	# insn, tmp88
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp88,
	call	validate_change	#
	testl	%eax, %eax	# D.19454
	jne	.L701	#,
	.loc 1 4095 0
	movl	$0, %eax	#, D.19454
	jmp	.L698	#
.L701:
	.loc 1 4100 0
	movq	-16(%rbp), %rax	# set, tmp89
	movq	16(%rax), %rax	# set_3->fld[1].rtx, D.19455
	movzwl	(%rax), %eax	# _15->code, D.19457
	cmpw	$67, %ax	#, D.19457
	jne	.L700	#,
	.loc 1 4101 0
	movq	-32(%rbp), %rax	# insn, tmp90
	movq	%rax, %rdi	# tmp90,
	call	emit_barrier_after	#
.L700:
	.loc 1 4104 0
	movl	$1, run_jump_opt_after_gcse(%rip)	#, run_jump_opt_after_gcse
	.loc 1 4106 0
	movl	const_prop_count(%rip), %eax	# const_prop_count, const_prop_count.524
	addl	$1, %eax	#, const_prop_count.525
	movl	%eax, const_prop_count(%rip)	# const_prop_count.525, const_prop_count
	.loc 1 4107 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.526
	testq	%rax, %rax	# gcse_file.526
	je	.L702	#,
	.loc 1 4109 0
	movq	-32(%rbp), %rax	# insn, tmp91
	movl	8(%rax), %ecx	# insn_2(D)->fld[0].rtint, D.19454
	movq	-40(%rbp), %rax	# from, tmp92
	movl	8(%rax), %edx	# from_5(D)->fld[0].rtuint, D.19458
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.527
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# gcse_file.527,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 4112 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.528
	movq	-48(%rbp), %rdx	# src, tmp93
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# gcse_file.528,
	call	print_rtl	#
	.loc 1 4113 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.529
	movq	%rax, %rsi	# gcse_file.529,
	movl	$10, %edi	#,
	call	fputc	#
.L702:
	.loc 1 4115 0
	movq	-24(%rbp), %rax	# bb, tmp94
	movq	%rax, %rdi	# tmp94,
	call	purge_dead_edges	#
	.loc 1 4117 0
	movl	$1, %eax	#, D.19454
.L698:
	.loc 1 4118 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	cprop_jump, .-cprop_jump
	.section	.rodata
	.align 8
.LC24:
	.string	"CONST-PROP: Replacing reg %d in "
.LC25:
	.string	"insn %d with constant "
	.align 8
.LC26:
	.string	"COPY-PROP: Replacing reg %d in insn %d"
.LC27:
	.string	" with reg %d\n"
	.text
	.type	cprop_insn, @function
cprop_insn:
.LFB83:
	.loc 1 4159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# bb, bb
	movq	%rsi, -64(%rbp)	# insn, insn
	movl	%edx, -68(%rbp)	# alter_jumps, alter_jumps
	.loc 1 4161 0
	movl	$0, -48(%rbp)	#, changed
	.loc 1 4164 0
	movq	-64(%rbp), %rax	# insn, tmp111
	movzwl	(%rax), %eax	# insn_7(D)->code, D.19461
	movzwl	%ax, %eax	# D.19461, D.19460
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19462
	cmpb	$105, %al	#, D.19462
	je	.L704	#,
	.loc 1 4165 0
	movl	$0, %eax	#, D.19460
	jmp	.L705	#
.L704:
	.loc 1 4167 0
	movl	$0, reg_use_count(%rip)	#, reg_use_count
	.loc 1 4168 0
	movq	-64(%rbp), %rax	# insn, tmp113
	addq	$32, %rax	#, D.19463
	movl	$0, %edx	#,
	movl	$find_used_regs, %esi	#,
	movq	%rax, %rdi	# D.19463,
	call	note_uses	#
	.loc 1 4170 0
	movq	-64(%rbp), %rax	# insn, tmp114
	movq	%rax, %rdi	# tmp114,
	call	find_reg_equal_equiv_note	#
	movq	%rax, -32(%rbp)	# tmp115, note
	.loc 1 4173 0
	cmpq	$0, -32(%rbp)	#, note
	je	.L706	#,
	.loc 1 4174 0
	movq	-32(%rbp), %rax	# note, tmp116
	addq	$8, %rax	#, D.19463
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19463,
	call	find_used_regs	#
.L706:
	.loc 1 4176 0
	movq	$reg_use_table, -40(%rbp)	#, reg_used
	jmp	.L707	#
.L718:
.LBB41:
	.loc 1 4179 0
	movq	-40(%rbp), %rax	# reg_used, tmp117
	movq	(%rax), %rax	# reg_used_1->reg_rtx, D.19464
	movl	8(%rax), %eax	# _17->fld[0].rtuint, tmp118
	movl	%eax, -44(%rbp)	# tmp118, regno
	.loc 1 4185 0
	movl	max_gcse_regno(%rip), %eax	# max_gcse_regno, max_gcse_regno.530
	cmpl	%eax, -44(%rbp)	# max_gcse_regno.530, regno
	jb	.L708	#,
	.loc 1 4186 0
	jmp	.L709	#
.L708:
	.loc 1 4190 0
	movq	-40(%rbp), %rax	# reg_used, tmp119
	movq	(%rax), %rax	# reg_used_1->reg_rtx, D.19464
	movq	-64(%rbp), %rdx	# insn, tmp120
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# D.19464,
	call	oprs_not_set_p	#
	testl	%eax, %eax	# D.19460
	jne	.L710	#,
	.loc 1 4191 0
	jmp	.L709	#
.L710:
	.loc 1 4195 0
	movl	-44(%rbp), %eax	# regno, regno.531
	movq	-64(%rbp), %rdx	# insn, tmp121
	movq	%rdx, %rsi	# tmp121,
	movl	%eax, %edi	# regno.531,
	call	find_avail_set	#
	movq	%rax, -24(%rbp)	# tmp122, set
	.loc 1 4196 0
	cmpq	$0, -24(%rbp)	#, set
	jne	.L711	#,
	.loc 1 4197 0
	jmp	.L709	#
.L711:
	.loc 1 4199 0
	movq	-24(%rbp), %rax	# set, tmp123
	movq	(%rax), %rax	# set_23->expr, tmp124
	movq	%rax, -16(%rbp)	# tmp124, pat
	.loc 1 4201 0
	movq	-16(%rbp), %rax	# pat, tmp125
	movzwl	(%rax), %eax	# pat_24->code, D.19461
	cmpw	$47, %ax	#, D.19461
	je	.L712	#,
	.loc 1 4202 0
	movl	$__FUNCTION__.12892, %edx	#,
	movl	$4202, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L712:
	.loc 1 4204 0
	movq	-16(%rbp), %rax	# pat, tmp126
	movq	16(%rax), %rax	# pat_24->fld[1].rtx, tmp127
	movq	%rax, -8(%rbp)	# tmp127, src
	.loc 1 4207 0
	movq	-8(%rbp), %rax	# src, tmp128
	movzwl	(%rax), %eax	# src_26->code, D.19461
	cmpw	$67, %ax	#, D.19461
	je	.L713	#,
	.loc 1 4207 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# src, tmp129
	movzwl	(%rax), %eax	# src_26->code, D.19461
	cmpw	$68, %ax	#, D.19461
	je	.L713	#,
	movq	-8(%rbp), %rax	# src, tmp130
	movzwl	(%rax), %eax	# src_26->code, D.19461
	cmpw	$54, %ax	#, D.19461
	je	.L713	#,
	movq	-8(%rbp), %rax	# src, tmp131
	movzwl	(%rax), %eax	# src_26->code, D.19461
	cmpw	$55, %ax	#, D.19461
	je	.L713	#,
	movq	-8(%rbp), %rax	# src, tmp132
	movzwl	(%rax), %eax	# src_26->code, D.19461
	cmpw	$58, %ax	#, D.19461
	je	.L713	#,
	movq	-8(%rbp), %rax	# src, tmp133
	movzwl	(%rax), %eax	# src_26->code, D.19461
	cmpw	$134, %ax	#, D.19461
	je	.L713	#,
	movq	-8(%rbp), %rax	# src, tmp134
	movzwl	(%rax), %eax	# src_26->code, D.19461
	cmpw	$56, %ax	#, D.19461
	je	.L713	#,
	movq	-8(%rbp), %rax	# src, tmp135
	movzwl	(%rax), %eax	# src_26->code, D.19461
	cmpw	$140, %ax	#, D.19461
	jne	.L714	#,
.L713:
	.loc 1 4210 0 is_stmt 1
	movq	-64(%rbp), %rax	# insn, tmp136
	movzwl	(%rax), %eax	# insn_7(D)->code, D.19461
	cmpw	$32, %ax	#, D.19461
	jne	.L715	#,
	.loc 1 4211 0
	movq	-40(%rbp), %rax	# reg_used, tmp137
	movq	(%rax), %rax	# reg_used_1->reg_rtx, D.19464
	movq	-64(%rbp), %rdx	# insn, tmp138
	movq	-8(%rbp), %rcx	# src, tmp139
	movq	%rcx, %rsi	# tmp139,
	movq	%rax, %rdi	# D.19464,
	call	try_replace_reg	#
	testl	%eax, %eax	# D.19460
	je	.L715	#,
	.loc 1 4213 0
	movl	$1, -48(%rbp)	#, changed
	.loc 1 4214 0
	movl	const_prop_count(%rip), %eax	# const_prop_count, const_prop_count.532
	addl	$1, %eax	#, const_prop_count.533
	movl	%eax, const_prop_count(%rip)	# const_prop_count.533, const_prop_count
	.loc 1 4215 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.534
	testq	%rax, %rax	# gcse_file.534
	je	.L716	#,
	.loc 1 4217 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.535
	movl	-44(%rbp), %edx	# regno, tmp140
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# gcse_file.535,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 4219 0
	movq	-64(%rbp), %rax	# insn, tmp141
	movl	8(%rax), %edx	# insn_7(D)->fld[0].rtint, D.19460
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.536
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# gcse_file.536,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 4221 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.537
	movq	-8(%rbp), %rdx	# src, tmp142
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# gcse_file.537,
	call	print_rtl	#
	.loc 1 4222 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.538
	movq	%rax, %rsi	# gcse_file.538,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 4215 0
	jmp	.L717	#
.L716:
	.loc 1 4215 0 is_stmt 0 discriminator 1
	jmp	.L717	#
.L715:
	.loc 1 4235 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, alter_jumps
	je	.L717	#,
	.loc 1 4236 0
	movq	-64(%rbp), %rax	# insn, tmp143
	movzwl	(%rax), %eax	# insn_7(D)->code, D.19461
	cmpw	$33, %ax	#, D.19461
	jne	.L717	#,
	.loc 1 4237 0
	movq	-64(%rbp), %rax	# insn, tmp144
	movq	%rax, %rdi	# tmp144,
	call	condjump_p	#
	testl	%eax, %eax	# D.19460
	je	.L717	#,
	.loc 1 4238 0
	movq	-64(%rbp), %rax	# insn, tmp145
	movq	%rax, %rdi	# tmp145,
	call	simplejump_p	#
	testl	%eax, %eax	# D.19460
	jne	.L717	#,
	.loc 1 4239 0
	movq	-40(%rbp), %rax	# reg_used, tmp146
	movq	(%rax), %rdx	# reg_used_1->reg_rtx, D.19464
	movq	-8(%rbp), %rcx	# src, tmp147
	movq	-64(%rbp), %rsi	# insn, tmp148
	movq	-56(%rbp), %rax	# bb, tmp149
	movq	%rax, %rdi	# tmp149,
	call	cprop_jump	#
	orl	%eax, -48(%rbp)	# D.19460, changed
	.loc 1 4210 0
	jmp	.L709	#
.L717:
	jmp	.L709	#
.L714:
	.loc 1 4257 0
	movq	-8(%rbp), %rax	# src, tmp150
	movzwl	(%rax), %eax	# src_26->code, D.19461
	cmpw	$61, %ax	#, D.19461
	jne	.L709	#,
	.loc 1 4258 0
	movq	-8(%rbp), %rax	# src, tmp151
	movl	8(%rax), %eax	# src_26->fld[0].rtuint, D.19465
	cmpl	$52, %eax	#, D.19465
	jbe	.L709	#,
	.loc 1 4259 0
	movq	-8(%rbp), %rax	# src, tmp152
	movl	8(%rax), %eax	# src_26->fld[0].rtuint, D.19465
	cmpl	-44(%rbp), %eax	# regno, D.19465
	je	.L709	#,
	.loc 1 4261 0
	movq	-40(%rbp), %rax	# reg_used, tmp153
	movq	(%rax), %rax	# reg_used_1->reg_rtx, D.19464
	movq	-64(%rbp), %rdx	# insn, tmp154
	movq	-8(%rbp), %rcx	# src, tmp155
	movq	%rcx, %rsi	# tmp155,
	movq	%rax, %rdi	# D.19464,
	call	try_replace_reg	#
	testl	%eax, %eax	# D.19460
	je	.L709	#,
	.loc 1 4263 0
	movl	$1, -48(%rbp)	#, changed
	.loc 1 4264 0
	movl	copy_prop_count(%rip), %eax	# copy_prop_count, copy_prop_count.539
	addl	$1, %eax	#, copy_prop_count.540
	movl	%eax, copy_prop_count(%rip)	# copy_prop_count.540, copy_prop_count
	.loc 1 4265 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.541
	testq	%rax, %rax	# gcse_file.541
	je	.L709	#,
	.loc 1 4267 0
	movq	-64(%rbp), %rax	# insn, tmp156
	movl	8(%rax), %ecx	# insn_7(D)->fld[0].rtint, D.19460
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.542
	movl	-44(%rbp), %edx	# regno, tmp157
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# gcse_file.542,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 4269 0
	movq	-8(%rbp), %rax	# src, tmp158
	movl	8(%rax), %edx	# src_26->fld[0].rtuint, D.19465
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.543
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# gcse_file.543,
	movl	$0, %eax	#,
	call	fprintf	#
.L709:
.LBE41:
	.loc 1 4177 0
	addq	$8, -40(%rbp)	#, reg_used
	movl	reg_use_count(%rip), %eax	# reg_use_count, reg_use_count.544
	subl	$1, %eax	#, reg_use_count.545
	movl	%eax, reg_use_count(%rip)	# reg_use_count.545, reg_use_count
.L707:
	.loc 1 4176 0 discriminator 1
	movl	reg_use_count(%rip), %eax	# reg_use_count, reg_use_count.546
	testl	%eax, %eax	# reg_use_count.546
	jg	.L718	#,
	.loc 1 4281 0
	movl	-48(%rbp), %eax	# changed, D.19460
.L705:
	.loc 1 4282 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	cprop_insn, .-cprop_insn
	.type	cprop, @function
cprop:
.LFB84:
	.loc 1 4290 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# alter_jumps, alter_jumps
	.loc 1 4296 0
	movl	$0, -12(%rbp)	#, changed
	.loc 1 4297 0
	movl	$1, -16(%rbp)	#, bb
	jmp	.L720	#
.L725:
	.loc 1 4301 0
	call	reset_opr_set_tables	#
	.loc 1 4303 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.547
	movl	-16(%rbp), %edx	# bb, tmp78
	movslq	%edx, %rdx	# tmp78, tmp77
	addq	$4, %rdx	#, tmp79
	movq	(%rax,%rdx,8), %rax	# basic_block_info.547_9->data.bb, D.19470
	movq	(%rax), %rax	# _10->head, tmp80
	movq	%rax, -8(%rbp)	# tmp80, insn
	jmp	.L721	#
.L724:
	.loc 1 4306 0
	movq	-8(%rbp), %rax	# insn, tmp81
	movzwl	(%rax), %eax	# insn_5->code, D.19472
	movzwl	%ax, %eax	# D.19472, D.19473
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19474
	cmpb	$105, %al	#, D.19474
	jne	.L722	#,
	.loc 1 4308 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.548
	movl	-16(%rbp), %edx	# bb, tmp84
	movslq	%edx, %rdx	# tmp84, tmp83
	addq	$4, %rdx	#, tmp85
	movq	(%rax,%rdx,8), %rax	# basic_block_info.548_19->data.bb, D.19470
	movl	-20(%rbp), %edx	# alter_jumps, tmp86
	movq	-8(%rbp), %rcx	# insn, tmp87
	movq	%rcx, %rsi	# tmp87,
	movq	%rax, %rdi	# D.19470,
	call	cprop_insn	#
	orl	%eax, -12(%rbp)	# D.19473, changed
	.loc 1 4313 0
	movq	-8(%rbp), %rax	# insn, tmp88
	movzwl	(%rax), %eax	# insn_5->code, D.19472
	cmpw	$37, %ax	#, D.19472
	je	.L722	#,
	.loc 1 4314 0
	movq	-8(%rbp), %rax	# insn, tmp89
	movq	%rax, %rdi	# tmp89,
	call	mark_oprs_set	#
.L722:
	.loc 1 4305 0
	movq	-8(%rbp), %rax	# insn, tmp90
	movq	24(%rax), %rax	# insn_5->fld[2].rtx, tmp91
	movq	%rax, -8(%rbp)	# tmp91, insn
.L721:
	.loc 1 4303 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	je	.L723	#,
	.loc 1 4304 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.549
	movl	-16(%rbp), %edx	# bb, tmp93
	movslq	%edx, %rdx	# tmp93, tmp92
	addq	$4, %rdx	#, tmp94
	movq	(%rax,%rdx,8), %rax	# basic_block_info.549_12->data.bb, D.19470
	movq	8(%rax), %rax	# _13->end, D.19471
	movq	24(%rax), %rax	# _14->fld[2].rtx, D.19471
	cmpq	-8(%rbp), %rax	# insn, D.19471
	jne	.L724	#,
.L723:
	.loc 1 4297 0
	addl	$1, -16(%rbp)	#, bb
.L720:
	.loc 1 4297 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.550
	cmpl	%eax, -16(%rbp)	# n_basic_blocks.550, bb
	jl	.L725	#,
	.loc 1 4318 0 is_stmt 1
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.551
	testq	%rax, %rax	# gcse_file.551
	je	.L726	#,
	.loc 1 4319 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.552
	movq	%rax, %rsi	# gcse_file.552,
	movl	$10, %edi	#,
	call	fputc	#
.L726:
	.loc 1 4321 0
	movl	-12(%rbp), %eax	# changed, D.19473
	.loc 1 4322 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	cprop, .-cprop
	.section	.rodata
.LC28:
	.string	"SET"
	.align 8
.LC29:
	.string	"CPROP of %s, pass %d: %d bytes needed, "
	.align 8
.LC30:
	.string	"%d const props, %d copy props\n\n"
	.text
	.type	one_cprop_pass, @function
one_cprop_pass:
.LFB85:
	.loc 1 4332 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# pass, pass
	movl	%esi, -24(%rbp)	# alter_jumps, alter_jumps
	.loc 1 4333 0
	movl	$0, -4(%rbp)	#, changed
	.loc 1 4335 0
	movl	$0, const_prop_count(%rip)	#, const_prop_count
	.loc 1 4336 0
	movl	$0, copy_prop_count(%rip)	#, copy_prop_count
	.loc 1 4338 0
	movl	max_cuid(%rip), %eax	# max_cuid, max_cuid.553
	movl	%eax, %edi	# max_cuid.553,
	call	alloc_set_hash_table	#
	.loc 1 4339 0
	call	compute_set_hash_table	#
	.loc 1 4340 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.554
	testq	%rax, %rax	# gcse_file.554
	je	.L729	#,
	.loc 1 4341 0
	movl	n_sets(%rip), %esi	# n_sets, n_sets.555
	movl	set_hash_table_size(%rip), %eax	# set_hash_table_size, set_hash_table_size.556
	movl	%eax, %ecx	# set_hash_table_size.556, set_hash_table_size.557
	movq	set_hash_table(%rip), %rdx	# set_hash_table, set_hash_table.558
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.559
	movl	%esi, %r8d	# n_sets.555,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# gcse_file.559,
	call	dump_hash_table	#
.L729:
	.loc 1 4343 0
	movl	n_sets(%rip), %eax	# n_sets, n_sets.560
	testl	%eax, %eax	# n_sets.560
	jle	.L730	#,
	.loc 1 4345 0
	movl	n_sets(%rip), %edx	# n_sets, n_sets.561
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.562
	movl	%edx, %esi	# n_sets.561,
	movl	%eax, %edi	# n_basic_blocks.562,
	call	alloc_cprop_mem	#
	.loc 1 4346 0
	call	compute_cprop_data	#
	.loc 1 4347 0
	movl	-24(%rbp), %eax	# alter_jumps, tmp79
	movl	%eax, %edi	# tmp79,
	call	cprop	#
	movl	%eax, -4(%rbp)	# tmp80, changed
	.loc 1 4348 0
	call	free_cprop_mem	#
.L730:
	.loc 1 4351 0
	call	free_set_hash_table	#
	.loc 1 4353 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.563
	testq	%rax, %rax	# gcse_file.563
	je	.L731	#,
	.loc 1 4355 0
	movl	bytes_used(%rip), %esi	# bytes_used, bytes_used.564
	.loc 1 4356 0
	movq	cfun(%rip), %rax	# cfun, cfun.565
	.loc 1 4355 0
	movq	40(%rax), %rdx	# cfun.565_17->name, D.19475
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.566
	movl	-20(%rbp), %ecx	# pass, tmp81
	movl	%esi, %r8d	# bytes_used.564,
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# gcse_file.566,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 4357 0
	movl	copy_prop_count(%rip), %ecx	# copy_prop_count, copy_prop_count.567
	movl	const_prop_count(%rip), %edx	# const_prop_count, const_prop_count.568
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.569
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# gcse_file.569,
	movl	$0, %eax	#,
	call	fprintf	#
.L731:
	.loc 1 4361 0
	movl	-4(%rbp), %eax	# changed, D.19476
	.loc 1 4362 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	one_cprop_pass, .-one_cprop_pass
	.local	transp
	.comm	transp,8,8
	.local	transpout
	.comm	transpout,8,8
	.local	comp
	.comm	comp,8,8
	.local	antloc
	.comm	antloc,8,8
	.local	pre_optimal
	.comm	pre_optimal,8,8
	.local	pre_redundant
	.comm	pre_redundant,8,8
	.local	pre_insert_map
	.comm	pre_insert_map,8,8
	.local	pre_delete_map
	.comm	pre_delete_map,8,8
	.local	edge_list
	.comm	edge_list,8,8
	.local	pre_redundant_insns
	.comm	pre_redundant_insns,8,8
	.type	alloc_pre_mem, @function
alloc_pre_mem:
.LFB86:
	.loc 1 4405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# n_blocks, n_blocks
	movl	%esi, -8(%rbp)	# n_exprs, n_exprs
	.loc 1 4406 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.570
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.571
	movl	%edx, %esi	# n_exprs.570,
	movl	%eax, %edi	# n_blocks.571,
	call	sbitmap_vector_alloc	#
	movq	%rax, transp(%rip)	# transp.572, transp
	.loc 1 4407 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.573
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.574
	movl	%edx, %esi	# n_exprs.573,
	movl	%eax, %edi	# n_blocks.574,
	call	sbitmap_vector_alloc	#
	movq	%rax, comp(%rip)	# comp.575, comp
	.loc 1 4408 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.576
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.577
	movl	%edx, %esi	# n_exprs.576,
	movl	%eax, %edi	# n_blocks.577,
	call	sbitmap_vector_alloc	#
	movq	%rax, antloc(%rip)	# antloc.578, antloc
	.loc 1 4410 0
	movq	$0, pre_optimal(%rip)	#, pre_optimal
	.loc 1 4411 0
	movq	$0, pre_redundant(%rip)	#, pre_redundant
	.loc 1 4412 0
	movq	$0, pre_insert_map(%rip)	#, pre_insert_map
	.loc 1 4413 0
	movq	$0, pre_delete_map(%rip)	#, pre_delete_map
	.loc 1 4414 0
	movq	$0, ae_in(%rip)	#, ae_in
	.loc 1 4415 0
	movq	$0, ae_out(%rip)	#, ae_out
	.loc 1 4416 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.579
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.580
	movl	%edx, %esi	# n_exprs.579,
	movl	%eax, %edi	# n_blocks.580,
	call	sbitmap_vector_alloc	#
	movq	%rax, ae_kill(%rip)	# ae_kill.581, ae_kill
	.loc 1 4419 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	alloc_pre_mem, .-alloc_pre_mem
	.type	free_pre_mem, @function
free_pre_mem:
.LFB87:
	.loc 1 4425 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4426 0
	movq	transp(%rip), %rax	# transp, transp.582
	movq	%rax, %rdi	# transp.582,
	call	free	#
	.loc 1 4427 0
	movq	comp(%rip), %rax	# comp, comp.583
	movq	%rax, %rdi	# comp.583,
	call	free	#
	.loc 1 4431 0
	movq	pre_optimal(%rip), %rax	# pre_optimal, pre_optimal.584
	testq	%rax, %rax	# pre_optimal.584
	je	.L735	#,
	.loc 1 4432 0
	movq	pre_optimal(%rip), %rax	# pre_optimal, pre_optimal.585
	movq	%rax, %rdi	# pre_optimal.585,
	call	free	#
.L735:
	.loc 1 4433 0
	movq	pre_redundant(%rip), %rax	# pre_redundant, pre_redundant.586
	testq	%rax, %rax	# pre_redundant.586
	je	.L736	#,
	.loc 1 4434 0
	movq	pre_redundant(%rip), %rax	# pre_redundant, pre_redundant.587
	movq	%rax, %rdi	# pre_redundant.587,
	call	free	#
.L736:
	.loc 1 4435 0
	movq	pre_insert_map(%rip), %rax	# pre_insert_map, pre_insert_map.588
	testq	%rax, %rax	# pre_insert_map.588
	je	.L737	#,
	.loc 1 4436 0
	movq	pre_insert_map(%rip), %rax	# pre_insert_map, pre_insert_map.589
	movq	%rax, %rdi	# pre_insert_map.589,
	call	free	#
.L737:
	.loc 1 4437 0
	movq	pre_delete_map(%rip), %rax	# pre_delete_map, pre_delete_map.590
	testq	%rax, %rax	# pre_delete_map.590
	je	.L738	#,
	.loc 1 4438 0
	movq	pre_delete_map(%rip), %rax	# pre_delete_map, pre_delete_map.591
	movq	%rax, %rdi	# pre_delete_map.591,
	call	free	#
.L738:
	.loc 1 4439 0
	movq	ae_in(%rip), %rax	# ae_in, ae_in.592
	testq	%rax, %rax	# ae_in.592
	je	.L739	#,
	.loc 1 4440 0
	movq	ae_in(%rip), %rax	# ae_in, ae_in.593
	movq	%rax, %rdi	# ae_in.593,
	call	free	#
.L739:
	.loc 1 4441 0
	movq	ae_out(%rip), %rax	# ae_out, ae_out.594
	testq	%rax, %rax	# ae_out.594
	je	.L740	#,
	.loc 1 4442 0
	movq	ae_out(%rip), %rax	# ae_out, ae_out.595
	movq	%rax, %rdi	# ae_out.595,
	call	free	#
.L740:
	.loc 1 4444 0
	movq	$0, comp(%rip)	#, comp
	movq	comp(%rip), %rax	# comp, comp.596
	movq	%rax, transp(%rip)	# comp.596, transp
	.loc 1 4445 0
	movq	$0, pre_delete_map(%rip)	#, pre_delete_map
	movq	pre_delete_map(%rip), %rax	# pre_delete_map, pre_delete_map.597
	movq	%rax, pre_insert_map(%rip)	# pre_delete_map.597, pre_insert_map
	movq	pre_insert_map(%rip), %rax	# pre_insert_map, pre_insert_map.598
	movq	%rax, pre_redundant(%rip)	# pre_insert_map.598, pre_redundant
	movq	pre_redundant(%rip), %rax	# pre_redundant, pre_redundant.599
	movq	%rax, pre_optimal(%rip)	# pre_redundant.599, pre_optimal
	.loc 1 4446 0
	movq	$0, ae_out(%rip)	#, ae_out
	movq	ae_out(%rip), %rax	# ae_out, ae_out.600
	movq	%rax, ae_in(%rip)	# ae_out.600, ae_in
	.loc 1 4447 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	free_pre_mem, .-free_pre_mem
	.type	compute_pre_data, @function
compute_pre_data:
.LFB88:
	.loc 1 4453 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 4458 0
	movq	antloc(%rip), %rdx	# antloc, antloc.601
	movq	comp(%rip), %rsi	# comp, comp.602
	movq	transp(%rip), %rax	# transp, transp.603
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# transp.603,
	call	compute_local_properties	#
	.loc 1 4459 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.604
	movl	%eax, %edx	# n_basic_blocks.604, n_basic_blocks.605
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.606
	movl	%edx, %esi	# n_basic_blocks.605,
	movq	%rax, %rdi	# ae_kill.606,
	call	sbitmap_vector_zero	#
	.loc 1 4462 0
	movl	n_exprs(%rip), %eax	# n_exprs, n_exprs.607
	movl	%eax, %edi	# n_exprs.608,
	call	sbitmap_alloc	#
	movq	%rax, -8(%rbp)	# tmp141, trapping_expr
	.loc 1 4463 0
	movq	-8(%rbp), %rax	# trapping_expr, tmp142
	movq	%rax, %rdi	# tmp142,
	call	sbitmap_zero	#
	.loc 1 4464 0
	movl	$0, -28(%rbp)	#, ui
	jmp	.L742	#
.L746:
.LBB42:
	.loc 1 4467 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.609
	movl	-28(%rbp), %edx	# ui, D.19480
	salq	$3, %rdx	#, D.19480
	addq	%rdx, %rax	# D.19480, D.19481
	movq	(%rax), %rax	# *_19, tmp143
	movq	%rax, -24(%rbp)	# tmp143, e
	jmp	.L743	#
.L745:
	.loc 1 4468 0
	movq	-24(%rbp), %rax	# e, tmp144
	movq	(%rax), %rax	# e_3->expr, D.19482
	movq	%rax, %rdi	# D.19482,
	call	may_trap_p	#
	testl	%eax, %eax	# D.19483
	je	.L744	#,
	.loc 1 4469 0
	movq	-24(%rbp), %rax	# e, tmp145
	movl	8(%rax), %eax	# e_3->bitmap_index, D.19483
	shrl	$6, %eax	#, D.19484
	movq	-8(%rbp), %rdx	# trapping_expr, tmp146
	movl	%eax, %ecx	# D.19484, tmp147
	addq	$2, %rcx	#, tmp148
	movq	(%rdx,%rcx,8), %rsi	# trapping_expr_13->elms, D.19480
	movq	-24(%rbp), %rdx	# e, tmp149
	movl	8(%rdx), %edx	# e_3->bitmap_index, D.19483
	andl	$63, %edx	#, D.19483
	movl	$1, %edi	#, tmp150
	movl	%edx, %ecx	# D.19483, tmp176
	salq	%cl, %rdi	# tmp176, D.19480
	movq	%rdi, %rdx	# D.19480, D.19480
	orq	%rdx, %rsi	# D.19480, D.19480
	movq	%rsi, %rcx	# D.19480, D.19480
	movq	-8(%rbp), %rdx	# trapping_expr, tmp151
	movl	%eax, %eax	# D.19484, tmp152
	addq	$2, %rax	#, tmp153
	movq	%rcx, (%rdx,%rax,8)	# D.19480, trapping_expr_13->elms
.L744:
	.loc 1 4467 0
	movq	-24(%rbp), %rax	# e, tmp154
	movq	16(%rax), %rax	# e_3->next_same_hash, tmp155
	movq	%rax, -24(%rbp)	# tmp155, e
.L743:
	.loc 1 4467 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, e
	jne	.L745	#,
.LBE42:
	.loc 1 4464 0 is_stmt 1
	addl	$1, -28(%rbp)	#, ui
.L742:
	.loc 1 4464 0 is_stmt 0 discriminator 1
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.610
	cmpl	%eax, -28(%rbp)	# expr_hash_table_size.610, ui
	jb	.L746	#,
	.loc 1 4478 0 is_stmt 1
	movl	$0, -32(%rbp)	#, i
	jmp	.L747	#
.L752:
.LBB43:
	.loc 1 4486 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.611
	movl	-32(%rbp), %edx	# i, tmp157
	movslq	%edx, %rdx	# tmp157, tmp156
	addq	$4, %rdx	#, tmp158
	movq	(%rax,%rdx,8), %rax	# basic_block_info.611_35->data.bb, D.19485
	movq	32(%rax), %rax	# _36->pred, tmp159
	movq	%rax, -16(%rbp)	# tmp159, e
	jmp	.L748	#
.L751:
	.loc 1 4487 0
	movq	-16(%rbp), %rax	# e, tmp160
	movl	48(%rax), %eax	# e_4->flags, D.19483
	andl	$2, %eax	#, D.19483
	testl	%eax, %eax	# D.19483
	je	.L749	#,
	.loc 1 4489 0
	movq	antloc(%rip), %rax	# antloc, antloc.612
	movl	-32(%rbp), %edx	# i, tmp161
	movslq	%edx, %rdx	# tmp161, D.19480
	salq	$3, %rdx	#, D.19480
	addq	%rdx, %rax	# D.19480, D.19486
	movq	(%rax), %rcx	# *_43, D.19487
	movq	antloc(%rip), %rax	# antloc, antloc.613
	movl	-32(%rbp), %edx	# i, tmp162
	movslq	%edx, %rdx	# tmp162, D.19480
	salq	$3, %rdx	#, D.19480
	addq	%rdx, %rax	# D.19480, D.19486
	movq	(%rax), %rax	# *_48, D.19487
	movq	-8(%rbp), %rdx	# trapping_expr, tmp163
	movq	%rcx, %rsi	# D.19487,
	movq	%rax, %rdi	# D.19487,
	call	sbitmap_difference	#
	.loc 1 4490 0
	movq	transp(%rip), %rax	# transp, transp.614
	movl	-32(%rbp), %edx	# i, tmp164
	movslq	%edx, %rdx	# tmp164, D.19480
	salq	$3, %rdx	#, D.19480
	addq	%rdx, %rax	# D.19480, D.19486
	movq	(%rax), %rcx	# *_53, D.19487
	movq	transp(%rip), %rax	# transp, transp.615
	movl	-32(%rbp), %edx	# i, tmp165
	movslq	%edx, %rdx	# tmp165, D.19480
	salq	$3, %rdx	#, D.19480
	addq	%rdx, %rax	# D.19480, D.19486
	movq	(%rax), %rax	# *_58, D.19487
	movq	-8(%rbp), %rdx	# trapping_expr, tmp166
	movq	%rcx, %rsi	# D.19487,
	movq	%rax, %rdi	# D.19487,
	call	sbitmap_difference	#
	.loc 1 4491 0
	jmp	.L750	#
.L749:
	.loc 1 4486 0
	movq	-16(%rbp), %rax	# e, tmp167
	movq	(%rax), %rax	# e_4->pred_next, tmp168
	movq	%rax, -16(%rbp)	# tmp168, e
.L748:
	.loc 1 4486 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L751	#,
.L750:
	.loc 1 4494 0 is_stmt 1
	movq	comp(%rip), %rax	# comp, comp.616
	movl	-32(%rbp), %edx	# i, tmp169
	movslq	%edx, %rdx	# tmp169, D.19480
	salq	$3, %rdx	#, D.19480
	addq	%rdx, %rax	# D.19480, D.19486
	movq	(%rax), %rdx	# *_64, D.19487
	movq	transp(%rip), %rax	# transp, transp.617
	movl	-32(%rbp), %ecx	# i, tmp170
	movslq	%ecx, %rcx	# tmp170, D.19480
	salq	$3, %rcx	#, D.19480
	addq	%rcx, %rax	# D.19480, D.19486
	movq	(%rax), %rcx	# *_69, D.19487
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.618
	movl	-32(%rbp), %esi	# i, tmp171
	movslq	%esi, %rsi	# tmp171, D.19480
	salq	$3, %rsi	#, D.19480
	addq	%rsi, %rax	# D.19480, D.19486
	movq	(%rax), %rax	# *_74, D.19487
	movq	%rcx, %rsi	# D.19487,
	movq	%rax, %rdi	# D.19487,
	call	sbitmap_a_or_b	#
	.loc 1 4495 0
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.619
	movl	-32(%rbp), %edx	# i, tmp172
	movslq	%edx, %rdx	# tmp172, D.19480
	salq	$3, %rdx	#, D.19480
	addq	%rdx, %rax	# D.19480, D.19486
	movq	(%rax), %rdx	# *_79, D.19487
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.620
	movl	-32(%rbp), %ecx	# i, tmp173
	movslq	%ecx, %rcx	# tmp173, D.19480
	salq	$3, %rcx	#, D.19480
	addq	%rcx, %rax	# D.19480, D.19486
	movq	(%rax), %rax	# *_84, D.19487
	movq	%rdx, %rsi	# D.19487,
	movq	%rax, %rdi	# D.19487,
	call	sbitmap_not	#
.LBE43:
	.loc 1 4478 0
	addl	$1, -32(%rbp)	#, i
.L747:
	.loc 1 4478 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.621
	cmpl	%eax, -32(%rbp)	# n_basic_blocks.621, i
	jl	.L752	#,
	.loc 1 4498 0 is_stmt 1
	movq	ae_kill(%rip), %r8	# ae_kill, ae_kill.622
	movq	antloc(%rip), %rdi	# antloc, antloc.623
	movq	comp(%rip), %rcx	# comp, comp.624
	movq	transp(%rip), %rdx	# transp, transp.625
	movl	n_exprs(%rip), %esi	# n_exprs, n_exprs.626
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.627
	movq	$pre_delete_map, 8(%rsp)	#,
	movq	$pre_insert_map, (%rsp)	#,
	movq	%r8, %r9	# ae_kill.622,
	movq	%rdi, %r8	# antloc.623,
	movq	%rax, %rdi	# gcse_file.627,
	call	pre_edge_lcm	#
	movq	%rax, edge_list(%rip)	# edge_list.628, edge_list
	.loc 1 4500 0
	movq	antloc(%rip), %rax	# antloc, antloc.629
	movq	%rax, %rdi	# antloc.629,
	call	free	#
	.loc 1 4501 0
	movq	$0, antloc(%rip)	#, antloc
	.loc 1 4502 0
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.630
	movq	%rax, %rdi	# ae_kill.630,
	call	free	#
	.loc 1 4503 0
	movq	$0, ae_kill(%rip)	#, ae_kill
	.loc 1 4504 0
	movq	-8(%rbp), %rax	# trapping_expr, tmp174
	movq	%rax, %rdi	# tmp174,
	call	free	#
	.loc 1 4505 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	compute_pre_data, .-compute_pre_data
	.type	pre_expr_reaches_here_p_work, @function
pre_expr_reaches_here_p_work:
.LFB89:
	.loc 1 4528 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# occr_bb, occr_bb
	movq	%rsi, -32(%rbp)	# expr, expr
	movq	%rdx, -40(%rbp)	# bb, bb
	movq	%rcx, -48(%rbp)	# visited, visited
	.loc 1 4531 0
	movq	-40(%rbp), %rax	# bb, tmp104
	movq	32(%rax), %rax	# bb_3(D)->pred, tmp105
	movq	%rax, -16(%rbp)	# tmp105, pred
	jmp	.L754	#
.L760:
.LBB44:
	.loc 1 4533 0
	movq	-16(%rbp), %rax	# pred, tmp106
	movq	16(%rax), %rax	# pred_1->src, tmp107
	movq	%rax, -8(%rbp)	# tmp107, pred_bb
	.loc 1 4535 0
	movq	-16(%rbp), %rax	# pred, tmp108
	movq	16(%rax), %rax	# pred_1->src, D.19489
	cmpq	$entry_exit_blocks, %rax	#, D.19489
	je	.L755	#,
	.loc 1 4537 0
	movq	-8(%rbp), %rax	# pred_bb, tmp109
	movl	88(%rax), %eax	# pred_bb_5->index, D.19488
	movslq	%eax, %rdx	# D.19488, D.19490
	movq	-48(%rbp), %rax	# visited, tmp110
	addq	%rdx, %rax	# D.19490, D.19491
	movzbl	(%rax), %eax	# *_10, D.19492
	testb	%al, %al	# D.19492
	jne	.L755	#,
	.loc 1 4541 0
	movq	comp(%rip), %rdx	# comp, comp.631
	movq	-8(%rbp), %rax	# pred_bb, tmp111
	movl	88(%rax), %eax	# pred_bb_5->index, D.19488
	cltq
	salq	$3, %rax	#, D.19493
	addq	%rdx, %rax	# comp.631, D.19494
	movq	(%rax), %rax	# *_16, D.19495
	movq	-32(%rbp), %rdx	# expr, tmp112
	movl	8(%rdx), %edx	# expr_18(D)->bitmap_index, D.19488
	shrl	$6, %edx	#, D.19496
	movl	%edx, %edx	# D.19496, tmp113
	addq	$2, %rdx	#, tmp114
	movq	(%rax,%rdx,8), %rdx	# _17->elms, D.19493
	movq	-32(%rbp), %rax	# expr, tmp115
	movl	8(%rax), %eax	# expr_18(D)->bitmap_index, D.19488
	andl	$63, %eax	#, D.19488
	movl	%eax, %ecx	# D.19488, tmp136
	shrq	%cl, %rdx	# tmp136, D.19493
	movq	%rdx, %rax	# D.19493, D.19493
	andl	$1, %eax	#, D.19493
	testq	%rax, %rax	# D.19493
	je	.L756	#,
	.loc 1 4546 0
	movq	-24(%rbp), %rax	# occr_bb, tmp116
	cmpq	-8(%rbp), %rax	# pred_bb, tmp116
	jne	.L757	#,
	.loc 1 4547 0
	movl	$1, %eax	#, D.19488
	jmp	.L758	#
.L757:
	.loc 1 4549 0
	movq	-8(%rbp), %rax	# pred_bb, tmp117
	movl	88(%rax), %eax	# pred_bb_5->index, D.19488
	movslq	%eax, %rdx	# D.19488, D.19490
	movq	-48(%rbp), %rax	# visited, tmp118
	addq	%rdx, %rax	# D.19490, D.19491
	movb	$1, (%rax)	#, *_31
	jmp	.L755	#
.L756:
	.loc 1 4552 0
	movq	transp(%rip), %rdx	# transp, transp.632
	movq	-8(%rbp), %rax	# pred_bb, tmp119
	movl	88(%rax), %eax	# pred_bb_5->index, D.19488
	cltq
	salq	$3, %rax	#, D.19493
	addq	%rdx, %rax	# transp.632, D.19494
	movq	(%rax), %rax	# *_36, D.19495
	movq	-32(%rbp), %rdx	# expr, tmp120
	movl	8(%rdx), %edx	# expr_18(D)->bitmap_index, D.19488
	shrl	$6, %edx	#, D.19496
	movl	%edx, %edx	# D.19496, tmp121
	addq	$2, %rdx	#, tmp122
	movq	(%rax,%rdx,8), %rdx	# _37->elms, D.19493
	movq	-32(%rbp), %rax	# expr, tmp123
	movl	8(%rax), %eax	# expr_18(D)->bitmap_index, D.19488
	andl	$63, %eax	#, D.19488
	movl	%eax, %ecx	# D.19488, tmp138
	shrq	%cl, %rdx	# tmp138, D.19493
	movq	%rdx, %rax	# D.19493, D.19493
	andl	$1, %eax	#, D.19493
	testq	%rax, %rax	# D.19493
	jne	.L759	#,
	.loc 1 4553 0
	movq	-8(%rbp), %rax	# pred_bb, tmp124
	movl	88(%rax), %eax	# pred_bb_5->index, D.19488
	movslq	%eax, %rdx	# D.19488, D.19490
	movq	-48(%rbp), %rax	# visited, tmp125
	addq	%rdx, %rax	# D.19490, D.19491
	movb	$1, (%rax)	#, *_48
	jmp	.L755	#
.L759:
	.loc 1 4558 0
	movq	-8(%rbp), %rax	# pred_bb, tmp126
	movl	88(%rax), %eax	# pred_bb_5->index, D.19488
	movslq	%eax, %rdx	# D.19488, D.19490
	movq	-48(%rbp), %rax	# visited, tmp127
	addq	%rdx, %rax	# D.19490, D.19491
	movb	$1, (%rax)	#, *_51
	.loc 1 4559 0
	movq	-48(%rbp), %rcx	# visited, tmp128
	movq	-8(%rbp), %rdx	# pred_bb, tmp129
	movq	-32(%rbp), %rsi	# expr, tmp130
	movq	-24(%rbp), %rax	# occr_bb, tmp131
	movq	%rax, %rdi	# tmp131,
	call	pre_expr_reaches_here_p_work	#
	testl	%eax, %eax	# D.19488
	je	.L755	#,
	.loc 1 4560 0
	movl	$1, %eax	#, D.19488
	jmp	.L758	#
.L755:
.LBE44:
	.loc 1 4531 0
	movq	-16(%rbp), %rax	# pred, tmp132
	movq	(%rax), %rax	# pred_1->pred_next, tmp133
	movq	%rax, -16(%rbp)	# tmp133, pred
.L754:
	.loc 1 4531 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, pred
	jne	.L760	#,
	.loc 1 4565 0 is_stmt 1
	movl	$0, %eax	#, D.19488
.L758:
	.loc 1 4566 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	pre_expr_reaches_here_p_work, .-pre_expr_reaches_here_p_work
	.type	pre_expr_reaches_here_p, @function
pre_expr_reaches_here_p:
.LFB90:
	.loc 1 4576 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# occr_bb, occr_bb
	movq	%rsi, -32(%rbp)	# expr, expr
	movq	%rdx, -40(%rbp)	# bb, bb
	.loc 1 4578 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.633
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.19497,
	call	xcalloc	#
	movq	%rax, -8(%rbp)	# tmp63, visited
	.loc 1 4580 0
	movq	-8(%rbp), %rcx	# visited, tmp64
	movq	-40(%rbp), %rdx	# bb, tmp65
	movq	-32(%rbp), %rsi	# expr, tmp66
	movq	-24(%rbp), %rax	# occr_bb, tmp67
	movq	%rax, %rdi	# tmp67,
	call	pre_expr_reaches_here_p_work	#
	movl	%eax, -12(%rbp)	# tmp68, rval
	.loc 1 4582 0
	movq	-8(%rbp), %rax	# visited, tmp69
	movq	%rax, %rdi	# tmp69,
	call	free	#
	.loc 1 4583 0
	movl	-12(%rbp), %eax	# rval, D.19498
	.loc 1 4584 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	pre_expr_reaches_here_p, .-pre_expr_reaches_here_p
	.type	process_insert_insn, @function
process_insert_insn:
.LFB91:
	.loc 1 4594 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# expr, expr
	.loc 1 4595 0
	movq	-40(%rbp), %rax	# expr, tmp68
	movq	40(%rax), %rax	# expr_1(D)->reaching_reg, tmp69
	movq	%rax, -24(%rbp)	# tmp69, reg
	.loc 1 4596 0
	movq	-40(%rbp), %rax	# expr, tmp70
	movq	(%rax), %rax	# expr_1(D)->expr, D.19499
	movq	%rax, %rdi	# D.19499,
	call	copy_rtx	#
	movq	%rax, -16(%rbp)	# tmp71, exp
	.loc 1 4599 0
	call	start_sequence	#
	.loc 1 4603 0
	movq	-24(%rbp), %rax	# reg, tmp72
	movzbl	2(%rax), %eax	# reg_2->mode, D.19500
	movzbl	%al, %edx	# D.19500, D.19501
	movq	-16(%rbp), %rax	# exp, tmp73
	movl	%edx, %esi	# D.19501,
	movq	%rax, %rdi	# tmp73,
	call	general_operand	#
	testl	%eax, %eax	# D.19502
	je	.L764	#,
	.loc 1 4604 0
	movq	-16(%rbp), %rdx	# exp, tmp74
	movq	-24(%rbp), %rax	# reg, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	emit_move_insn	#
	jmp	.L765	#
.L764:
	.loc 1 4609 0
	movq	-16(%rbp), %rdx	# exp, tmp76
	movq	-24(%rbp), %rax	# reg, tmp77
	movq	%rdx, %rcx	# tmp76,
	movq	%rax, %rdx	# tmp77,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.19499,
	call	emit_insn	#
	movq	%rax, %rdi	# D.19499,
	call	insn_invalid_p	#
	testl	%eax, %eax	# D.19502
	je	.L765	#,
	.loc 1 4610 0
	movl	$__FUNCTION__.12972, %edx	#,
	movl	$4610, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L765:
	.loc 1 4612 0
	call	gen_sequence	#
	movq	%rax, -8(%rbp)	# tmp78, pat
	.loc 1 4613 0
	call	end_sequence	#
	.loc 1 4615 0
	movq	-8(%rbp), %rax	# pat, D.19503
	.loc 1 4616 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	process_insert_insn, .-process_insert_insn
	.section	.rodata
	.align 8
.LC31:
	.string	"PRE/HOIST: end of bb %d, insn %d, "
	.align 8
.LC32:
	.string	"copying expression %d to reg %d\n"
	.text
	.type	insert_insn_end_bb, @function
insert_insn_end_bb:
.LFB92:
	.loc 1 4631 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# expr, expr
	movq	%rsi, -64(%rbp)	# bb, bb
	movl	%edx, -68(%rbp)	# pre, pre
	.loc 1 4632 0
	movq	-64(%rbp), %rax	# bb, tmp155
	movq	8(%rax), %rax	# bb_5(D)->end, tmp156
	movq	%rax, -40(%rbp)	# tmp156, insn
	.loc 1 4634 0
	movq	-56(%rbp), %rax	# expr, tmp157
	movq	40(%rax), %rax	# expr_7(D)->reaching_reg, tmp158
	movq	%rax, -24(%rbp)	# tmp158, reg
	.loc 1 4635 0
	movq	-24(%rbp), %rax	# reg, tmp159
	movl	8(%rax), %eax	# reg_8->fld[0].rtuint, D.19504
	movl	%eax, -44(%rbp)	# D.19504, regno
	.loc 1 4639 0
	movq	-56(%rbp), %rax	# expr, tmp160
	movq	%rax, %rdi	# tmp160,
	call	process_insert_insn	#
	movq	%rax, -16(%rbp)	# tmp161, pat
	.loc 1 4645 0
	movq	-40(%rbp), %rax	# insn, tmp162
	movzwl	(%rax), %eax	# insn_6->code, D.19505
	cmpw	$33, %ax	#, D.19505
	je	.L768	#,
	.loc 1 4646 0
	movq	-40(%rbp), %rax	# insn, tmp163
	movzwl	(%rax), %eax	# insn_6->code, D.19505
	cmpw	$32, %ax	#, D.19505
	jne	.L769	#,
	.loc 1 4647 0
	movq	-64(%rbp), %rax	# bb, tmp164
	movq	40(%rax), %rax	# bb_5(D)->succ, D.19506
	movq	8(%rax), %rax	# _14->succ_next, D.19506
	testq	%rax, %rax	# D.19506
	jne	.L768	#,
	.loc 1 4647 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# bb, tmp165
	movq	40(%rax), %rax	# bb_5(D)->succ, D.19506
	movl	48(%rax), %eax	# _16->flags, D.19507
	andl	$2, %eax	#, D.19507
	testl	%eax, %eax	# D.19507
	je	.L769	#,
.L768:
	.loc 1 4655 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp166
	movzwl	(%rax), %eax	# insn_6->code, D.19505
	cmpw	$32, %ax	#, D.19505
	jne	.L770	#,
	.loc 1 4655 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, pre
	je	.L770	#,
	.loc 1 4656 0 is_stmt 1
	movq	antloc(%rip), %rdx	# antloc, antloc.634
	movq	-64(%rbp), %rax	# bb, tmp167
	movl	88(%rax), %eax	# bb_5(D)->index, D.19507
	cltq
	salq	$3, %rax	#, D.19508
	addq	%rdx, %rax	# antloc.634, D.19509
	movq	(%rax), %rax	# *_67, D.19510
	movq	-56(%rbp), %rdx	# expr, tmp168
	movl	8(%rdx), %edx	# expr_7(D)->bitmap_index, D.19507
	shrl	$6, %edx	#, D.19504
	movl	%edx, %edx	# D.19504, tmp169
	addq	$2, %rdx	#, tmp170
	movq	(%rax,%rdx,8), %rdx	# _68->elms, D.19508
	movq	-56(%rbp), %rax	# expr, tmp171
	movl	8(%rax), %eax	# expr_7(D)->bitmap_index, D.19507
	andl	$63, %eax	#, D.19507
	movl	%eax, %ecx	# D.19507, tmp232
	shrq	%cl, %rdx	# tmp232, D.19508
	movq	%rdx, %rax	# D.19508, D.19508
	andl	$1, %eax	#, D.19508
	testq	%rax, %rax	# D.19508
	jne	.L770	#,
	.loc 1 4657 0
	movq	transp(%rip), %rdx	# transp, transp.635
	movq	-64(%rbp), %rax	# bb, tmp172
	movl	88(%rax), %eax	# bb_5(D)->index, D.19507
	cltq
	salq	$3, %rax	#, D.19508
	addq	%rdx, %rax	# transp.635, D.19509
	movq	(%rax), %rax	# *_81, D.19510
	movq	-56(%rbp), %rdx	# expr, tmp173
	movl	8(%rdx), %edx	# expr_7(D)->bitmap_index, D.19507
	shrl	$6, %edx	#, D.19504
	movl	%edx, %edx	# D.19504, tmp174
	addq	$2, %rdx	#, tmp175
	movq	(%rax,%rdx,8), %rdx	# _82->elms, D.19508
	movq	-56(%rbp), %rax	# expr, tmp176
	movl	8(%rax), %eax	# expr_7(D)->bitmap_index, D.19507
	andl	$63, %eax	#, D.19507
	movl	%eax, %ecx	# D.19507, tmp234
	shrq	%cl, %rdx	# tmp234, D.19508
	movq	%rdx, %rax	# D.19508, D.19508
	andl	$1, %eax	#, D.19508
	testq	%rax, %rax	# D.19508
	jne	.L770	#,
	.loc 1 4658 0
	movl	$__FUNCTION__.12984, %edx	#,
	movl	$4658, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L770:
	.loc 1 4663 0
	movq	-40(%rbp), %rax	# insn, tmp177
	movq	32(%rax), %rax	# insn_6->fld[3].rtx, D.19511
	movzwl	(%rax), %eax	# _91->code, D.19505
	cmpw	$44, %ax	#, D.19505
	je	.L771	#,
	.loc 1 4664 0
	movq	-40(%rbp), %rax	# insn, tmp178
	movq	32(%rax), %rax	# insn_6->fld[3].rtx, D.19511
	movzwl	(%rax), %eax	# _93->code, D.19505
	cmpw	$45, %ax	#, D.19505
	jne	.L772	#,
.L771:
	.loc 1 4665 0
	movq	-40(%rbp), %rax	# insn, tmp179
	movq	%rax, %rdi	# tmp179,
	call	prev_real_insn	#
	movq	%rax, -40(%rbp)	# tmp180, insn
.L772:
	.loc 1 4683 0
	movq	-40(%rbp), %rdx	# insn, tmp181
	movq	-16(%rbp), %rax	# pat, tmp182
	movq	%rdx, %rsi	# tmp181,
	movq	%rax, %rdi	# tmp182,
	call	emit_insn_before	#
	movq	%rax, -32(%rbp)	# tmp183, new_insn
	jmp	.L773	#
.L769:
	.loc 1 4688 0
	movq	-40(%rbp), %rax	# insn, tmp184
	movzwl	(%rax), %eax	# insn_6->code, D.19505
	cmpw	$34, %ax	#, D.19505
	jne	.L774	#,
	.loc 1 4689 0
	movq	-64(%rbp), %rax	# bb, tmp185
	movq	40(%rax), %rax	# bb_5(D)->succ, D.19506
	movq	8(%rax), %rax	# _20->succ_next, D.19506
	testq	%rax, %rax	# D.19506
	jne	.L775	#,
	.loc 1 4689 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# bb, tmp186
	movq	40(%rax), %rax	# bb_5(D)->succ, D.19506
	movl	48(%rax), %eax	# _22->flags, D.19507
	andl	$2, %eax	#, D.19507
	testl	%eax, %eax	# D.19507
	je	.L774	#,
.L775:
	.loc 1 4700 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, pre
	je	.L776	#,
	.loc 1 4701 0
	movq	antloc(%rip), %rdx	# antloc, antloc.636
	movq	-64(%rbp), %rax	# bb, tmp187
	movl	88(%rax), %eax	# bb_5(D)->index, D.19507
	cltq
	salq	$3, %rax	#, D.19508
	addq	%rdx, %rax	# antloc.636, D.19509
	movq	(%rax), %rax	# *_30, D.19510
	movq	-56(%rbp), %rdx	# expr, tmp188
	movl	8(%rdx), %edx	# expr_7(D)->bitmap_index, D.19507
	shrl	$6, %edx	#, D.19504
	movl	%edx, %edx	# D.19504, tmp189
	addq	$2, %rdx	#, tmp190
	movq	(%rax,%rdx,8), %rdx	# _31->elms, D.19508
	movq	-56(%rbp), %rax	# expr, tmp191
	movl	8(%rax), %eax	# expr_7(D)->bitmap_index, D.19507
	andl	$63, %eax	#, D.19507
	movl	%eax, %ecx	# D.19507, tmp236
	shrq	%cl, %rdx	# tmp236, D.19508
	movq	%rdx, %rax	# D.19508, D.19508
	andl	$1, %eax	#, D.19508
	testq	%rax, %rax	# D.19508
	jne	.L776	#,
	.loc 1 4702 0
	movq	transp(%rip), %rdx	# transp, transp.637
	movq	-64(%rbp), %rax	# bb, tmp192
	movl	88(%rax), %eax	# bb_5(D)->index, D.19507
	cltq
	salq	$3, %rax	#, D.19508
	addq	%rdx, %rax	# transp.637, D.19509
	movq	(%rax), %rax	# *_44, D.19510
	movq	-56(%rbp), %rdx	# expr, tmp193
	movl	8(%rdx), %edx	# expr_7(D)->bitmap_index, D.19507
	shrl	$6, %edx	#, D.19504
	movl	%edx, %edx	# D.19504, tmp194
	addq	$2, %rdx	#, tmp195
	movq	(%rax,%rdx,8), %rdx	# _45->elms, D.19508
	movq	-56(%rbp), %rax	# expr, tmp196
	movl	8(%rax), %eax	# expr_7(D)->bitmap_index, D.19507
	andl	$63, %eax	#, D.19507
	movl	%eax, %ecx	# D.19507, tmp238
	shrq	%cl, %rdx	# tmp238, D.19508
	movq	%rdx, %rax	# D.19508, D.19508
	andl	$1, %eax	#, D.19508
	testq	%rax, %rax	# D.19508
	jne	.L776	#,
	.loc 1 4703 0
	movl	$__FUNCTION__.12984, %edx	#,
	movl	$4703, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L776:
	.loc 1 4708 0
	movq	-64(%rbp), %rax	# bb, tmp197
	movq	(%rax), %rdx	# bb_5(D)->head, D.19511
	movq	-40(%rbp), %rax	# insn, tmp198
	movq	%rdx, %rsi	# D.19511,
	movq	%rax, %rdi	# tmp198,
	call	find_first_parameter_load	#
	movq	%rax, -40(%rbp)	# tmp199, insn
	.loc 1 4718 0
	jmp	.L777	#
.L778:
	.loc 1 4720 0
	movq	-40(%rbp), %rax	# insn, tmp200
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp201
	movq	%rax, -40(%rbp)	# tmp201, insn
.L777:
	.loc 1 4718 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp202
	movzwl	(%rax), %eax	# insn_2->code, D.19505
	cmpw	$36, %ax	#, D.19505
	je	.L778	#,
	.loc 1 4719 0
	movq	-40(%rbp), %rax	# insn, tmp203
	movzwl	(%rax), %eax	# insn_2->code, D.19505
	cmpw	$37, %ax	#, D.19505
	jne	.L779	#,
	.loc 1 4719 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp204
	movl	40(%rax), %eax	# insn_2->fld[4].rtint, D.19507
	cmpl	$-80, %eax	#, D.19507
	je	.L778	#,
.L779:
	.loc 1 4722 0 is_stmt 1
	movq	-40(%rbp), %rdx	# insn, tmp205
	movq	-16(%rbp), %rax	# pat, tmp206
	movq	%rdx, %rsi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	emit_insn_before	#
	movq	%rax, -32(%rbp)	# tmp207, new_insn
	jmp	.L773	#
.L774:
	.loc 1 4725 0
	movq	-40(%rbp), %rdx	# insn, tmp208
	movq	-16(%rbp), %rax	# pat, tmp209
	movq	%rdx, %rsi	# tmp208,
	movq	%rax, %rdi	# tmp209,
	call	emit_insn_after	#
	movq	%rax, -32(%rbp)	# tmp210, new_insn
.L773:
	.loc 1 4730 0
	movq	-16(%rbp), %rax	# pat, tmp211
	movzwl	(%rax), %eax	# pat_11->code, D.19505
	cmpw	$24, %ax	#, D.19505
	jne	.L780	#,
	.loc 1 4732 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L781	#
.L783:
.LBB45:
	.loc 1 4734 0
	movq	-16(%rbp), %rax	# pat, tmp212
	movq	8(%rax), %rax	# pat_11->fld[0].rtvec, D.19512
	movl	-48(%rbp), %edx	# i, tmp214
	movslq	%edx, %rdx	# tmp214, tmp213
	movq	8(%rax,%rdx,8), %rax	# _101->elem, tmp215
	movq	%rax, -8(%rbp)	# tmp215, insn
	.loc 1 4735 0
	movq	-8(%rbp), %rax	# insn, tmp216
	movzwl	(%rax), %eax	# insn_102->code, D.19505
	movzwl	%ax, %eax	# D.19505, D.19507
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19513
	cmpb	$105, %al	#, D.19513
	jne	.L782	#,
	.loc 1 4736 0
	movq	-8(%rbp), %rax	# insn, tmp218
	movq	32(%rax), %rax	# insn_102->fld[3].rtx, D.19511
	movq	-32(%rbp), %rdx	# new_insn, tmp219
	movq	%rdx, %rsi	# tmp219,
	movq	%rax, %rdi	# D.19511,
	call	add_label_notes	#
.L782:
	.loc 1 4738 0
	movq	-8(%rbp), %rax	# insn, tmp220
	movq	32(%rax), %rax	# insn_102->fld[3].rtx, D.19511
	movq	-8(%rbp), %rdx	# insn, tmp221
	movl	$record_set_info, %esi	#,
	movq	%rax, %rdi	# D.19511,
	call	note_stores	#
.LBE45:
	.loc 1 4732 0
	addl	$1, -48(%rbp)	#, i
.L781:
	.loc 1 4732 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# pat, tmp222
	movq	8(%rax), %rax	# pat_11->fld[0].rtvec, D.19512
	movl	(%rax), %eax	# _99->num_elem, D.19507
	cmpl	-48(%rbp), %eax	# i, D.19507
	jg	.L783	#,
	jmp	.L784	#
.L780:
	.loc 1 4743 0 is_stmt 1
	movq	-32(%rbp), %rdx	# new_insn, tmp223
	movq	-16(%rbp), %rax	# pat, tmp224
	movq	%rdx, %rsi	# tmp223,
	movq	%rax, %rdi	# tmp224,
	call	add_label_notes	#
	.loc 1 4746 0
	movq	-32(%rbp), %rdx	# new_insn, tmp225
	movl	-44(%rbp), %eax	# regno, tmp226
	movq	%rdx, %rsi	# tmp225,
	movl	%eax, %edi	# tmp226,
	call	record_one_set	#
.L784:
	.loc 1 4749 0
	movl	gcse_create_count(%rip), %eax	# gcse_create_count, gcse_create_count.638
	addl	$1, %eax	#, gcse_create_count.639
	movl	%eax, gcse_create_count(%rip)	# gcse_create_count.639, gcse_create_count
	.loc 1 4751 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.640
	testq	%rax, %rax	# gcse_file.640
	je	.L767	#,
	.loc 1 4753 0
	movq	-32(%rbp), %rax	# new_insn, tmp227
	movl	8(%rax), %ecx	# new_insn_3->fld[0].rtint, D.19507
	movq	-64(%rbp), %rax	# bb, tmp228
	movl	88(%rax), %edx	# bb_5(D)->index, D.19507
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.641
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# gcse_file.641,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 4755 0
	movq	-56(%rbp), %rax	# expr, tmp229
	movl	8(%rax), %edx	# expr_7(D)->bitmap_index, D.19507
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.642
	movl	-44(%rbp), %ecx	# regno, tmp230
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# gcse_file.642,
	movl	$0, %eax	#,
	call	fprintf	#
.L767:
	.loc 1 4758 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	insert_insn_end_bb, .-insert_insn_end_bb
	.section	.rodata
.LC33:
	.string	"PRE/HOIST: edge (%d,%d), "
.LC34:
	.string	"copy expression %d\n"
	.text
	.type	pre_edge_insert, @function
pre_edge_insert:
.LFB93:
	.loc 1 4767 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# edge_list, edge_list
	movq	%rsi, -112(%rbp)	# index_map, index_map
	.loc 1 4768 0
	movl	$0, -72(%rbp)	#, did_insert
	.loc 1 4774 0
	movq	pre_insert_map(%rip), %rax	# pre_insert_map, pre_insert_map.643
	movq	(%rax), %rax	# *pre_insert_map.643_14, D.19516
	movl	4(%rax), %eax	# _15->size, D.19517
	movl	%eax, -64(%rbp)	# D.19517, set_size
	.loc 1 4775 0
	movq	-104(%rbp), %rax	# edge_list, tmp143
	movl	4(%rax), %eax	# edge_list_18(D)->num_edges, tmp144
	movl	%eax, -60(%rbp)	# tmp144, num_edges
	.loc 1 4776 0
	movl	n_exprs(%rip), %eax	# n_exprs, n_exprs.644
	movl	%eax, %edx	# n_exprs.644, n_exprs.645
	movl	-60(%rbp), %eax	# num_edges, num_edges.646
	movl	%edx, %esi	# n_exprs.645,
	movl	%eax, %edi	# num_edges.646,
	call	sbitmap_vector_alloc	#
	movq	%rax, -40(%rbp)	# tmp145, inserted
	.loc 1 4777 0
	movl	-60(%rbp), %edx	# num_edges, num_edges.647
	movq	-40(%rbp), %rax	# inserted, tmp146
	movl	%edx, %esi	# num_edges.647,
	movq	%rax, %rdi	# tmp146,
	call	sbitmap_vector_zero	#
	.loc 1 4779 0
	movl	$0, -84(%rbp)	#, e
	jmp	.L787	#
.L801:
.LBB46:
	.loc 1 4782 0
	movq	-104(%rbp), %rax	# edge_list, tmp147
	movq	8(%rax), %rax	# edge_list_18(D)->index_to_edge, D.19518
	movl	-84(%rbp), %edx	# e, tmp148
	movslq	%edx, %rdx	# tmp148, D.19519
	salq	$3, %rdx	#, D.19519
	addq	%rdx, %rax	# D.19519, D.19518
	movq	(%rax), %rax	# *_29, D.19520
	movq	16(%rax), %rax	# _30->src, tmp149
	movq	%rax, -32(%rbp)	# tmp149, bb
	.loc 1 4784 0
	movl	$0, -68(%rbp)	#, indx
	movl	-68(%rbp), %eax	# indx, tmp150
	movl	%eax, -80(%rbp)	# tmp150, i
	jmp	.L788	#
.L800:
.LBB47:
	.loc 1 4786 0
	movq	pre_insert_map(%rip), %rax	# pre_insert_map, pre_insert_map.648
	movl	-84(%rbp), %edx	# e, tmp151
	movslq	%edx, %rdx	# tmp151, D.19519
	salq	$3, %rdx	#, D.19519
	addq	%rdx, %rax	# D.19519, D.19521
	movq	(%rax), %rax	# *_37, D.19516
	movl	-80(%rbp), %edx	# i, tmp153
	movslq	%edx, %rdx	# tmp153, tmp152
	addq	$2, %rdx	#, tmp154
	movq	(%rax,%rdx,8), %rax	# _38->elms, tmp155
	movq	%rax, -56(%rbp)	# tmp155, insert
	.loc 1 4788 0
	movl	-68(%rbp), %eax	# indx, tmp156
	movl	%eax, -76(%rbp)	# tmp156, j
	jmp	.L789	#
.L799:
	.loc 1 4789 0
	movq	-56(%rbp), %rax	# insert, tmp157
	andl	$1, %eax	#, D.19519
	testq	%rax, %rax	# D.19519
	je	.L790	#,
	.loc 1 4789 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# j, tmp158
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19519
	movq	-112(%rbp), %rax	# index_map, tmp159
	addq	%rdx, %rax	# D.19519, D.19522
	movq	(%rax), %rax	# *_46, D.19523
	movq	40(%rax), %rax	# _47->reaching_reg, D.19524
	testq	%rax, %rax	# D.19524
	je	.L790	#,
.LBB48:
	.loc 1 4791 0 is_stmt 1
	movl	-76(%rbp), %eax	# j, tmp160
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19519
	movq	-112(%rbp), %rax	# index_map, tmp161
	addq	%rdx, %rax	# D.19519, D.19522
	movq	(%rax), %rax	# *_51, tmp162
	movq	%rax, -24(%rbp)	# tmp162, expr
	.loc 1 4795 0
	movq	-24(%rbp), %rax	# expr, tmp163
	movq	24(%rax), %rax	# expr_52->antic_occr, tmp164
	movq	%rax, -48(%rbp)	# tmp164, occr
	jmp	.L791	#
.L797:
	.loc 1 4797 0
	movq	-48(%rbp), %rax	# occr, tmp165
	movzbl	16(%rax), %eax	# occr_12->deleted_p, D.19525
	testb	%al, %al	# D.19525
	jne	.L792	#,
	.loc 1 4798 0
	jmp	.L793	#
.L792:
	.loc 1 4802 0
	movl	-84(%rbp), %eax	# e, tmp166
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19519
	movq	-40(%rbp), %rax	# inserted, tmp167
	addq	%rdx, %rax	# D.19519, D.19521
	movq	(%rax), %rax	# *_57, D.19516
	movl	-76(%rbp), %edx	# j, j.649
	shrl	$6, %edx	#, D.19517
	movl	%edx, %edx	# D.19517, tmp168
	addq	$2, %rdx	#, tmp169
	movq	(%rax,%rdx,8), %rdx	# _58->elms, D.19519
	movl	-76(%rbp), %eax	# j, tmp170
	andl	$63, %eax	#, D.19526
	movl	%eax, %ecx	# D.19526, tmp205
	shrq	%cl, %rdx	# tmp205, D.19519
	movq	%rdx, %rax	# D.19519, D.19519
	andl	$1, %eax	#, D.19519
	testq	%rax, %rax	# D.19519
	jne	.L793	#,
.LBB49:
	.loc 1 4805 0
	movq	-104(%rbp), %rax	# edge_list, tmp171
	movq	8(%rax), %rax	# edge_list_18(D)->index_to_edge, D.19518
	movl	-84(%rbp), %edx	# e, tmp172
	movslq	%edx, %rdx	# tmp172, D.19519
	salq	$3, %rdx	#, D.19519
	addq	%rdx, %rax	# D.19519, D.19518
	movq	(%rax), %rax	# *_68, tmp173
	movq	%rax, -16(%rbp)	# tmp173, eg
	.loc 1 4814 0
	movq	-16(%rbp), %rax	# eg, tmp174
	movl	48(%rax), %eax	# eg_69->flags, D.19526
	andl	$2, %eax	#, D.19526
	testl	%eax, %eax	# D.19526
	je	.L794	#,
	.loc 1 4815 0
	movl	-76(%rbp), %eax	# j, tmp175
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19519
	movq	-112(%rbp), %rax	# index_map, tmp176
	addq	%rdx, %rax	# D.19519, D.19522
	movq	(%rax), %rax	# *_74, D.19523
	movq	-32(%rbp), %rcx	# bb, tmp177
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp177,
	movq	%rax, %rdi	# D.19523,
	call	insert_insn_end_bb	#
	jmp	.L795	#
.L794:
	.loc 1 4818 0
	movl	-76(%rbp), %eax	# j, tmp178
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19519
	movq	-112(%rbp), %rax	# index_map, tmp179
	addq	%rdx, %rax	# D.19519, D.19522
	movq	(%rax), %rax	# *_78, D.19523
	movq	%rax, %rdi	# D.19523,
	call	process_insert_insn	#
	movq	%rax, -8(%rbp)	# tmp180, insn
	.loc 1 4819 0
	movq	-16(%rbp), %rdx	# eg, tmp181
	movq	-8(%rbp), %rax	# insn, tmp182
	movq	%rdx, %rsi	# tmp181,
	movq	%rax, %rdi	# tmp182,
	call	insert_insn_on_edge	#
.L795:
	.loc 1 4822 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.650
	testq	%rax, %rax	# gcse_file.650
	je	.L796	#,
	.loc 1 4826 0
	movq	-104(%rbp), %rax	# edge_list, tmp183
	movq	8(%rax), %rax	# edge_list_18(D)->index_to_edge, D.19518
	movl	-84(%rbp), %edx	# e, tmp184
	movslq	%edx, %rdx	# tmp184, D.19519
	salq	$3, %rdx	#, D.19519
	addq	%rdx, %rax	# D.19519, D.19518
	movq	(%rax), %rax	# *_85, D.19520
	movq	24(%rax), %rax	# _86->dest, D.19527
	.loc 1 4824 0
	movl	88(%rax), %ecx	# _87->index, D.19526
	movq	-32(%rbp), %rax	# bb, tmp185
	movl	88(%rax), %edx	# bb_31->index, D.19526
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.651
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# gcse_file.651,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 4827 0
	movq	-24(%rbp), %rax	# expr, tmp186
	movl	8(%rax), %edx	# expr_52->bitmap_index, D.19526
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.652
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# gcse_file.652,
	movl	$0, %eax	#,
	call	fprintf	#
.L796:
	.loc 1 4831 0
	movq	-24(%rbp), %rax	# expr, tmp187
	movq	%rax, %rdi	# tmp187,
	call	update_ld_motion_stores	#
	.loc 1 4832 0
	movl	-84(%rbp), %eax	# e, tmp188
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19519
	movq	-40(%rbp), %rax	# inserted, tmp189
	addq	%rdx, %rax	# D.19519, D.19521
	movq	(%rax), %rdx	# *_95, D.19516
	movl	-76(%rbp), %eax	# j, j.653
	shrl	$6, %eax	#, D.19517
	movl	-84(%rbp), %ecx	# e, tmp190
	movslq	%ecx, %rcx	# tmp190, D.19519
	leaq	0(,%rcx,8), %rsi	#, D.19519
	movq	-40(%rbp), %rcx	# inserted, tmp191
	addq	%rsi, %rcx	# D.19519, D.19521
	movq	(%rcx), %rcx	# *_101, D.19516
	movl	%eax, %esi	# D.19517, tmp192
	addq	$2, %rsi	#, tmp193
	movq	(%rcx,%rsi,8), %rsi	# _102->elms, D.19519
	movl	-76(%rbp), %ecx	# j, tmp194
	andl	$63, %ecx	#, D.19526
	movl	$1, %edi	#, tmp195
	salq	%cl, %rdi	# D.19526, D.19519
	movq	%rdi, %rcx	# D.19519, D.19519
	orq	%rsi, %rcx	# D.19519, D.19519
	movl	%eax, %eax	# D.19517, tmp196
	addq	$2, %rax	#, tmp197
	movq	%rcx, (%rdx,%rax,8)	# D.19519, _96->elms
	.loc 1 4833 0
	movl	$1, -72(%rbp)	#, did_insert
	.loc 1 4834 0
	movl	gcse_create_count(%rip), %eax	# gcse_create_count, gcse_create_count.654
	addl	$1, %eax	#, gcse_create_count.655
	movl	%eax, gcse_create_count(%rip)	# gcse_create_count.655, gcse_create_count
.L793:
.LBE49:
	.loc 1 4795 0
	movq	-48(%rbp), %rax	# occr, tmp198
	movq	(%rax), %rax	# occr_12->next, tmp199
	movq	%rax, -48(%rbp)	# tmp199, occr
.L791:
	.loc 1 4795 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, occr
	jne	.L797	#,
.L790:
.LBE48:
	.loc 1 4788 0 is_stmt 1
	addl	$1, -76(%rbp)	#, j
	shrq	-56(%rbp)	# insert
.L789:
	.loc 1 4788 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, insert
	je	.L798	#,
	.loc 1 4788 0 discriminator 2
	movl	n_exprs(%rip), %eax	# n_exprs, n_exprs.656
	cmpl	%eax, -76(%rbp)	# n_exprs.656, j
	jl	.L799	#,
.L798:
.LBE47:
	.loc 1 4784 0 is_stmt 1
	addl	$1, -80(%rbp)	#, i
	movl	-68(%rbp), %eax	# indx, indx.657
	addl	$64, %eax	#, D.19517
	movl	%eax, -68(%rbp)	# D.19517, indx
.L788:
	.loc 1 4784 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# i, tmp200
	cmpl	-64(%rbp), %eax	# set_size, tmp200
	jl	.L800	#,
.LBE46:
	.loc 1 4779 0 is_stmt 1
	addl	$1, -84(%rbp)	#, e
.L787:
	.loc 1 4779 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# e, tmp201
	cmpl	-60(%rbp), %eax	# num_edges, tmp201
	jl	.L801	#,
	.loc 1 4841 0 is_stmt 1
	movq	-40(%rbp), %rax	# inserted, tmp202
	movq	%rax, %rdi	# tmp202,
	call	free	#
	.loc 1 4842 0
	movl	-72(%rbp), %eax	# did_insert, D.19526
	.loc 1 4843 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	pre_edge_insert, .-pre_edge_insert
	.section	.rodata
	.align 8
.LC35:
	.string	"PRE: bb %d, insn %d, copy expression %d in insn %d to reg %d\n"
	.text
	.type	pre_insert_copy_insn, @function
pre_insert_copy_insn:
.LFB94:
	.loc 1 4851 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# expr, expr
	movq	%rsi, -48(%rbp)	# insn, insn
	.loc 1 4852 0
	movq	-40(%rbp), %rax	# expr, tmp80
	movq	40(%rax), %rax	# expr_3(D)->reaching_reg, tmp81
	movq	%rax, -24(%rbp)	# tmp81, reg
	.loc 1 4853 0
	movq	-24(%rbp), %rax	# reg, tmp82
	movl	8(%rax), %eax	# reg_4->fld[0].rtuint, D.19530
	movl	%eax, -32(%rbp)	# D.19530, regno
	.loc 1 4854 0
	movq	-40(%rbp), %rax	# expr, tmp83
	movl	8(%rax), %eax	# expr_3(D)->bitmap_index, tmp84
	movl	%eax, -28(%rbp)	# tmp84, indx
	.loc 1 4855 0
	movq	-48(%rbp), %rax	# insn, tmp85
	movzwl	(%rax), %eax	# insn_8(D)->code, D.19531
	movzwl	%ax, %eax	# D.19531, D.19532
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19533
	cmpb	$105, %al	#, D.19533
	jne	.L804	#,
	.loc 1 4855 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# insn, tmp87
	movq	32(%rax), %rax	# insn_8(D)->fld[3].rtx, D.19534
	movzwl	(%rax), %eax	# _12->code, D.19531
	cmpw	$47, %ax	#, D.19531
	jne	.L805	#,
	.loc 1 4855 0 discriminator 3
	movq	-48(%rbp), %rax	# insn, tmp88
	movq	32(%rax), %rax	# insn_8(D)->fld[3].rtx, iftmp.659
	jmp	.L807	#
.L805:
	.loc 1 4855 0 discriminator 4
	movq	-48(%rbp), %rax	# insn, tmp89
	movq	32(%rax), %rdx	# insn_8(D)->fld[3].rtx, D.19534
	movq	-48(%rbp), %rax	# insn, tmp90
	movq	%rdx, %rsi	# D.19534,
	movq	%rax, %rdi	# tmp90,
	call	single_set_2	#
	jmp	.L807	#
.L804:
	.loc 1 4855 0 discriminator 2
	movl	$0, %eax	#, iftmp.658
.L807:
	.loc 1 4855 0 discriminator 5
	movq	%rax, -16(%rbp)	# iftmp.658, set
	.loc 1 4858 0 is_stmt 1 discriminator 5
	cmpq	$0, -16(%rbp)	#, set
	jne	.L808	#,
	.loc 1 4859 0
	movl	$__FUNCTION__.13032, %edx	#,
	movl	$4859, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L808:
	.loc 1 4861 0
	movq	-16(%rbp), %rax	# set, tmp91
	movq	8(%rax), %rdx	# set_19->fld[0].rtx, D.19534
	movq	-24(%rbp), %rax	# reg, tmp92
	movq	%rdx, %rsi	# D.19534,
	movq	%rax, %rdi	# tmp92,
	call	gen_move_insn	#
	movq	-48(%rbp), %rdx	# insn, tmp93
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.19534,
	call	emit_insn_after	#
	movq	%rax, -8(%rbp)	# tmp94, new_insn
	.loc 1 4864 0
	movq	-8(%rbp), %rdx	# new_insn, tmp95
	movl	-32(%rbp), %eax	# regno, tmp96
	movq	%rdx, %rsi	# tmp95,
	movl	%eax, %edi	# tmp96,
	call	record_one_set	#
	.loc 1 4866 0
	movl	gcse_create_count(%rip), %eax	# gcse_create_count, gcse_create_count.660
	addl	$1, %eax	#, gcse_create_count.661
	movl	%eax, gcse_create_count(%rip)	# gcse_create_count.661, gcse_create_count
	.loc 1 4868 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.662
	testq	%rax, %rax	# gcse_file.662
	je	.L809	#,
	.loc 1 4869 0
	movq	-48(%rbp), %rax	# insn, tmp97
	movl	8(%rax), %r8d	# insn_8(D)->fld[0].rtint, D.19532
	movq	-8(%rbp), %rax	# new_insn, tmp98
	movl	8(%rax), %ecx	# new_insn_22->fld[0].rtint, D.19532
	.loc 1 4871 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.663
	movq	-48(%rbp), %rdx	# insn, tmp99
	movl	8(%rdx), %edx	# insn_8(D)->fld[0].rtint, D.19532
	movslq	%edx, %rdx	# D.19532, tmp100
	addq	$4, %rdx	#, tmp101
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.663_28->data.bb, D.19535
	.loc 1 4869 0
	movl	88(%rax), %edx	# _30->index, D.19532
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.664
	movl	-28(%rbp), %edi	# indx, tmp102
	movl	-32(%rbp), %esi	# regno, tmp103
	movl	%esi, (%rsp)	# tmp103,
	movl	%r8d, %r9d	# D.19532,
	movl	%edi, %r8d	# tmp102,
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# gcse_file.664,
	movl	$0, %eax	#,
	call	fprintf	#
.L809:
	.loc 1 4873 0
	movq	-40(%rbp), %rax	# expr, tmp104
	movq	%rax, %rdi	# tmp104,
	call	update_ld_motion_stores	#
	.loc 1 4874 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	pre_insert_copy_insn, .-pre_insert_copy_insn
	.type	pre_insert_copies, @function
pre_insert_copies:
.LFB95:
	.loc 1 4881 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 4893 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L811	#
.L826:
	.loc 1 4894 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.665
	movl	-36(%rbp), %edx	# i, D.19537
	salq	$3, %rdx	#, D.19537
	addq	%rdx, %rax	# D.19537, D.19538
	movq	(%rax), %rax	# *_10, tmp95
	movq	%rax, -32(%rbp)	# tmp95, expr
	jmp	.L812	#
.L825:
	.loc 1 4901 0
	movq	-32(%rbp), %rax	# expr, tmp96
	movq	40(%rax), %rax	# expr_2->reaching_reg, D.19539
	testq	%rax, %rax	# D.19539
	jne	.L813	#,
	.loc 1 4902 0
	jmp	.L814	#
.L813:
	.loc 1 4904 0
	movq	-32(%rbp), %rax	# expr, tmp97
	movq	24(%rax), %rax	# expr_2->antic_occr, tmp98
	movq	%rax, -24(%rbp)	# tmp98, occr
	jmp	.L815	#
.L824:
	.loc 1 4906 0
	movq	-24(%rbp), %rax	# occr, tmp99
	movzbl	16(%rax), %eax	# occr_3->deleted_p, D.19540
	testb	%al, %al	# D.19540
	jne	.L816	#,
	.loc 1 4907 0
	jmp	.L817	#
.L816:
	.loc 1 4909 0
	movq	-32(%rbp), %rax	# expr, tmp100
	movq	32(%rax), %rax	# expr_2->avail_occr, tmp101
	movq	%rax, -16(%rbp)	# tmp101, avail
	jmp	.L818	#
.L823:
.LBB50:
	.loc 1 4911 0
	movq	-16(%rbp), %rax	# avail, tmp102
	movq	8(%rax), %rax	# avail_4->insn, tmp103
	movq	%rax, -8(%rbp)	# tmp103, insn
	.loc 1 4914 0
	movq	-16(%rbp), %rax	# avail, tmp104
	movzbl	17(%rax), %eax	# avail_4->copied_p, D.19540
	testb	%al, %al	# D.19540
	je	.L819	#,
	.loc 1 4915 0
	jmp	.L820	#
.L819:
	.loc 1 4918 0
	movq	pre_redundant_insns(%rip), %rax	# pre_redundant_insns, pre_redundant_insns.666
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.667
	movq	-8(%rbp), %rdx	# insn, tmp105
	movl	8(%rdx), %edx	# insn_16->fld[0].rtint, D.19541
	movslq	%edx, %rdx	# D.19541, D.19537
	salq	$2, %rdx	#, D.19537
	addq	%rcx, %rdx	# uid_cuid.667, D.19542
	movl	(%rdx), %edx	# *_23, D.19541
	shrl	$6, %edx	#, D.19543
	movl	%edx, %edx	# D.19543, tmp106
	addq	$2, %rdx	#, tmp107
	movq	(%rax,%rdx,8), %rdx	# pre_redundant_insns.666_18->elms, D.19537
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.668
	movq	-8(%rbp), %rax	# insn, tmp108
	movl	8(%rax), %eax	# insn_16->fld[0].rtint, D.19541
	cltq
	salq	$2, %rax	#, D.19537
	addq	%rcx, %rax	# uid_cuid.668, D.19542
	movl	(%rax), %eax	# *_32, D.19541
	andl	$63, %eax	#, D.19541
	movl	%eax, %ecx	# D.19541, tmp126
	shrq	%cl, %rdx	# tmp126, D.19537
	movq	%rdx, %rax	# D.19537, D.19537
	andl	$1, %eax	#, D.19537
	testq	%rax, %rax	# D.19537
	je	.L821	#,
	.loc 1 4919 0
	jmp	.L820	#
.L821:
	.loc 1 4924 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.669
	movq	-24(%rbp), %rdx	# occr, tmp109
	movq	8(%rdx), %rdx	# occr_3->insn, D.19539
	movl	8(%rdx), %edx	# _38->fld[0].rtint, D.19541
	.loc 1 4922 0
	movslq	%edx, %rdx	# D.19541, tmp110
	addq	$4, %rdx	#, tmp111
	movq	(%rax,%rdx,8), %rdx	# basic_block_for_insn.669_37->data.bb, D.19544
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.670
	movq	-16(%rbp), %rcx	# avail, tmp112
	movq	8(%rcx), %rcx	# avail_4->insn, D.19539
	movl	8(%rcx), %ecx	# _42->fld[0].rtint, D.19541
	movslq	%ecx, %rcx	# D.19541, tmp113
	addq	$4, %rcx	#, tmp114
	movq	(%rax,%rcx,8), %rax	# basic_block_for_insn.670_41->data.bb, D.19544
	movq	-32(%rbp), %rcx	# expr, tmp115
	movq	%rcx, %rsi	# tmp115,
	movq	%rax, %rdi	# D.19544,
	call	pre_expr_reaches_here_p	#
	testl	%eax, %eax	# D.19541
	jne	.L822	#,
	.loc 1 4925 0
	jmp	.L820	#
.L822:
	.loc 1 4928 0
	movq	-8(%rbp), %rdx	# insn, tmp116
	movq	-32(%rbp), %rax	# expr, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	pre_insert_copy_insn	#
	.loc 1 4929 0
	movq	-16(%rbp), %rax	# avail, tmp118
	movb	$1, 17(%rax)	#, avail_4->copied_p
.L820:
.LBE50:
	.loc 1 4909 0
	movq	-16(%rbp), %rax	# avail, tmp119
	movq	(%rax), %rax	# avail_4->next, tmp120
	movq	%rax, -16(%rbp)	# tmp120, avail
.L818:
	.loc 1 4909 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, avail
	jne	.L823	#,
.L817:
	.loc 1 4904 0 is_stmt 1
	movq	-24(%rbp), %rax	# occr, tmp121
	movq	(%rax), %rax	# occr_3->next, tmp122
	movq	%rax, -24(%rbp)	# tmp122, occr
.L815:
	.loc 1 4904 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, occr
	jne	.L824	#,
.L814:
	.loc 1 4894 0 is_stmt 1
	movq	-32(%rbp), %rax	# expr, tmp123
	movq	16(%rax), %rax	# expr_2->next_same_hash, tmp124
	movq	%rax, -32(%rbp)	# tmp124, expr
.L812:
	.loc 1 4894 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, expr
	jne	.L825	#,
	.loc 1 4893 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L811:
	.loc 1 4893 0 is_stmt 0 discriminator 1
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.671
	cmpl	%eax, -36(%rbp)	# expr_hash_table_size.671, i
	jb	.L826	#,
	.loc 1 4933 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	pre_insert_copies, .-pre_insert_copies
	.section	.rodata
	.align 8
.LC36:
	.string	"PRE: redundant insn %d (expression %d) in "
.LC37:
	.string	"bb %d, reaching reg is %d\n"
	.text
	.type	pre_delete, @function
pre_delete:
.LFB96:
	.loc 1 4944 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 4950 0
	movl	$0, -48(%rbp)	#, changed
	.loc 1 4951 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L828	#
.L841:
	.loc 1 4952 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.672
	movl	-52(%rbp), %edx	# i, D.19545
	salq	$3, %rdx	#, D.19545
	addq	%rdx, %rax	# D.19545, D.19546
	movq	(%rax), %rax	# *_17, tmp125
	movq	%rax, -40(%rbp)	# tmp125, expr
	jmp	.L829	#
.L840:
.LBB51:
	.loc 1 4954 0
	movq	-40(%rbp), %rax	# expr, tmp126
	movl	8(%rax), %eax	# expr_7->bitmap_index, tmp127
	movl	%eax, -44(%rbp)	# tmp127, indx
	.loc 1 4959 0
	movq	-40(%rbp), %rax	# expr, tmp128
	movq	24(%rax), %rax	# expr_7->antic_occr, tmp129
	movq	%rax, -32(%rbp)	# tmp129, occr
	jmp	.L830	#
.L839:
.LBB52:
	.loc 1 4961 0
	movq	-32(%rbp), %rax	# occr, tmp130
	movq	8(%rax), %rax	# occr_8->insn, tmp131
	movq	%rax, -24(%rbp)	# tmp131, insn
	.loc 1 4963 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.673
	movq	-24(%rbp), %rdx	# insn, tmp132
	movl	8(%rdx), %edx	# insn_21->fld[0].rtint, D.19547
	movslq	%edx, %rdx	# D.19547, tmp133
	addq	$4, %rdx	#, tmp134
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.673_22->data.bb, tmp135
	movq	%rax, -16(%rbp)	# tmp135, bb
	.loc 1 4965 0
	movq	pre_delete_map(%rip), %rdx	# pre_delete_map, pre_delete_map.674
	movq	-16(%rbp), %rax	# bb, tmp136
	movl	88(%rax), %eax	# bb_24->index, D.19547
	cltq
	salq	$3, %rax	#, D.19545
	addq	%rdx, %rax	# pre_delete_map.674, D.19548
	movq	(%rax), %rax	# *_29, D.19549
	movl	-44(%rbp), %edx	# indx, indx.675
	shrl	$6, %edx	#, D.19550
	movl	%edx, %edx	# D.19550, tmp137
	addq	$2, %rdx	#, tmp138
	movq	(%rax,%rdx,8), %rdx	# _30->elms, D.19545
	movl	-44(%rbp), %eax	# indx, tmp139
	andl	$63, %eax	#, D.19547
	movl	%eax, %ecx	# D.19547, tmp170
	shrq	%cl, %rdx	# tmp170, D.19545
	movq	%rdx, %rax	# D.19545, D.19545
	andl	$1, %eax	#, D.19545
	testq	%rax, %rax	# D.19545
	je	.L831	#,
	.loc 1 4967 0
	movq	-24(%rbp), %rax	# insn, tmp140
	movzwl	(%rax), %eax	# insn_21->code, D.19551
	movzwl	%ax, %eax	# D.19551, D.19547
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19552
	cmpb	$105, %al	#, D.19552
	jne	.L832	#,
	.loc 1 4967 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp142
	movq	32(%rax), %rax	# insn_21->fld[3].rtx, D.19553
	movzwl	(%rax), %eax	# _40->code, D.19551
	cmpw	$47, %ax	#, D.19551
	jne	.L833	#,
	.loc 1 4967 0 discriminator 3
	movq	-24(%rbp), %rax	# insn, tmp143
	movq	32(%rax), %rax	# insn_21->fld[3].rtx, iftmp.677
	jmp	.L835	#
.L833:
	.loc 1 4967 0 discriminator 4
	movq	-24(%rbp), %rax	# insn, tmp144
	movq	32(%rax), %rdx	# insn_21->fld[3].rtx, D.19553
	movq	-24(%rbp), %rax	# insn, tmp145
	movq	%rdx, %rsi	# D.19553,
	movq	%rax, %rdi	# tmp145,
	call	single_set_2	#
	jmp	.L835	#
.L832:
	.loc 1 4967 0 discriminator 2
	movl	$0, %eax	#, iftmp.676
.L835:
	.loc 1 4967 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.676, set
	.loc 1 4968 0 is_stmt 1 discriminator 5
	cmpq	$0, -8(%rbp)	#, set
	jne	.L836	#,
	.loc 1 4969 0
	movl	$__FUNCTION__.13065, %edx	#,
	movl	$4969, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L836:
	.loc 1 4974 0
	movq	-40(%rbp), %rax	# expr, tmp146
	movq	40(%rax), %rax	# expr_7->reaching_reg, D.19553
	testq	%rax, %rax	# D.19553
	jne	.L837	#,
	.loc 1 4976 0
	movq	-8(%rbp), %rax	# set, tmp147
	movq	8(%rax), %rax	# set_47->fld[0].rtx, D.19553
	movzbl	2(%rax), %eax	# _49->mode, D.19554
	movzbl	%al, %eax	# D.19554, D.19555
	movl	%eax, %edi	# D.19555,
	call	gen_reg_rtx	#
	movq	-40(%rbp), %rdx	# expr, tmp148
	movq	%rax, 40(%rdx)	# D.19553, expr_7->reaching_reg
.L837:
	.loc 1 4985 0
	movq	-40(%rbp), %rax	# expr, tmp149
	movq	40(%rax), %rdx	# expr_7->reaching_reg, D.19553
	movq	-8(%rbp), %rax	# set, tmp150
	leaq	16(%rax), %rsi	#, D.19556
	movq	-24(%rbp), %rax	# insn, tmp151
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp151,
	call	validate_change	#
	testl	%eax, %eax	# D.19547
	je	.L838	#,
	.loc 1 4988 0
	movq	-32(%rbp), %rax	# occr, tmp152
	movb	$1, 16(%rax)	#, occr_8->deleted_p
	.loc 1 4989 0
	movq	pre_redundant_insns(%rip), %rdx	# pre_redundant_insns, pre_redundant_insns.678
	movq	uid_cuid(%rip), %rcx	# uid_cuid, uid_cuid.679
	movq	-24(%rbp), %rax	# insn, tmp153
	movl	8(%rax), %eax	# insn_21->fld[0].rtint, D.19547
	cltq
	salq	$2, %rax	#, D.19545
	addq	%rcx, %rax	# uid_cuid.679, D.19557
	movl	(%rax), %eax	# *_61, D.19547
	shrl	$6, %eax	#, D.19550
	movq	pre_redundant_insns(%rip), %rcx	# pre_redundant_insns, pre_redundant_insns.680
	movl	%eax, %esi	# D.19550, tmp154
	addq	$2, %rsi	#, tmp155
	movq	(%rcx,%rsi,8), %rsi	# pre_redundant_insns.680_65->elms, D.19545
	movq	uid_cuid(%rip), %rdi	# uid_cuid, uid_cuid.681
	movq	-24(%rbp), %rcx	# insn, tmp156
	movl	8(%rcx), %ecx	# insn_21->fld[0].rtint, D.19547
	movslq	%ecx, %rcx	# D.19547, D.19545
	salq	$2, %rcx	#, D.19545
	addq	%rdi, %rcx	# uid_cuid.681, D.19557
	movl	(%rcx), %ecx	# *_71, D.19547
	andl	$63, %ecx	#, D.19547
	movl	$1, %edi	#, tmp157
	salq	%cl, %rdi	# D.19547, D.19545
	movq	%rdi, %rcx	# D.19545, D.19545
	orq	%rsi, %rcx	# D.19545, D.19545
	movl	%eax, %eax	# D.19550, tmp158
	addq	$2, %rax	#, tmp159
	movq	%rcx, (%rdx,%rax,8)	# D.19545, pre_redundant_insns.678_56->elms
	.loc 1 4990 0
	movl	$1, -48(%rbp)	#, changed
	.loc 1 4991 0
	movl	gcse_subst_count(%rip), %eax	# gcse_subst_count, gcse_subst_count.682
	addl	$1, %eax	#, gcse_subst_count.683
	movl	%eax, gcse_subst_count(%rip)	# gcse_subst_count.683, gcse_subst_count
.L838:
	.loc 1 4994 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.684
	testq	%rax, %rax	# gcse_file.684
	je	.L831	#,
	.loc 1 4996 0
	movq	-24(%rbp), %rax	# insn, tmp160
	movl	8(%rax), %edx	# insn_21->fld[0].rtint, D.19547
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.685
	movl	-44(%rbp), %ecx	# indx, tmp161
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# gcse_file.685,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 5000 0
	movq	-40(%rbp), %rax	# expr, tmp162
	movq	40(%rax), %rax	# expr_7->reaching_reg, D.19553
	.loc 1 4999 0
	movl	8(%rax), %ecx	# _82->fld[0].rtuint, D.19550
	movq	-16(%rbp), %rax	# bb, tmp163
	movl	88(%rax), %edx	# bb_24->index, D.19547
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.686
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# gcse_file.686,
	movl	$0, %eax	#,
	call	fprintf	#
.L831:
.LBE52:
	.loc 1 4959 0
	movq	-32(%rbp), %rax	# occr, tmp164
	movq	(%rax), %rax	# occr_8->next, tmp165
	movq	%rax, -32(%rbp)	# tmp165, occr
.L830:
	.loc 1 4959 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, occr
	jne	.L839	#,
.LBE51:
	.loc 1 4952 0 is_stmt 1
	movq	-40(%rbp), %rax	# expr, tmp166
	movq	16(%rax), %rax	# expr_7->next_same_hash, tmp167
	movq	%rax, -40(%rbp)	# tmp167, expr
.L829:
	.loc 1 4952 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, expr
	jne	.L840	#,
	.loc 1 4951 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L828:
	.loc 1 4951 0 is_stmt 0 discriminator 1
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.687
	cmpl	%eax, -52(%rbp)	# expr_hash_table_size.687, i
	jb	.L841	#,
	.loc 1 5006 0 is_stmt 1
	movl	-48(%rbp), %eax	# changed, D.19547
	.loc 1 5007 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	pre_delete, .-pre_delete
	.type	pre_gcse, @function
pre_gcse:
.LFB97:
	.loc 1 5031 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 5040 0
	movl	n_exprs(%rip), %eax	# n_exprs, n_exprs.688
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.19560,
	call	xcalloc	#
	movq	%rax, -8(%rbp)	# tmp78, index_map
	.loc 1 5041 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L844	#
.L847:
	.loc 1 5042 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.689
	movl	-28(%rbp), %edx	# i, D.19560
	salq	$3, %rdx	#, D.19560
	addq	%rdx, %rax	# D.19560, D.19561
	movq	(%rax), %rax	# *_12, tmp79
	movq	%rax, -16(%rbp)	# tmp79, expr
	jmp	.L845	#
.L846:
	.loc 1 5043 0 discriminator 2
	movq	-16(%rbp), %rax	# expr, tmp80
	movl	8(%rax), %eax	# expr_3->bitmap_index, D.19562
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19560
	movq	-8(%rbp), %rax	# index_map, tmp81
	addq	%rax, %rdx	# tmp81, D.19561
	movq	-16(%rbp), %rax	# expr, tmp82
	movq	%rax, (%rdx)	# tmp82, *_17
	.loc 1 5042 0 discriminator 2
	movq	-16(%rbp), %rax	# expr, tmp83
	movq	16(%rax), %rax	# expr_3->next_same_hash, tmp84
	movq	%rax, -16(%rbp)	# tmp84, expr
.L845:
	.loc 1 5042 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, expr
	jne	.L846	#,
	.loc 1 5041 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L844:
	.loc 1 5041 0 is_stmt 0 discriminator 1
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.690
	cmpl	%eax, -28(%rbp)	# expr_hash_table_size.690, i
	jb	.L847	#,
	.loc 1 5046 0 is_stmt 1
	movl	max_cuid(%rip), %eax	# max_cuid, max_cuid.691
	movl	%eax, %edi	# max_cuid.692,
	call	sbitmap_alloc	#
	movq	%rax, pre_redundant_insns(%rip)	# pre_redundant_insns.693, pre_redundant_insns
	.loc 1 5047 0
	movq	pre_redundant_insns(%rip), %rax	# pre_redundant_insns, pre_redundant_insns.694
	movq	%rax, %rdi	# pre_redundant_insns.694,
	call	sbitmap_zero	#
	.loc 1 5054 0
	call	pre_delete	#
	movl	%eax, -24(%rbp)	# tmp85, changed
	.loc 1 5056 0
	movq	edge_list(%rip), %rax	# edge_list, edge_list.695
	movq	-8(%rbp), %rdx	# index_map, tmp86
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# edge_list.695,
	call	pre_edge_insert	#
	movl	%eax, -20(%rbp)	# tmp87, did_insert
	.loc 1 5060 0
	call	pre_insert_copies	#
	.loc 1 5061 0
	cmpl	$0, -20(%rbp)	#, did_insert
	je	.L848	#,
	.loc 1 5063 0
	call	commit_edge_insertions	#
	.loc 1 5064 0
	movl	$1, -24(%rbp)	#, changed
.L848:
	.loc 1 5067 0
	movq	-8(%rbp), %rax	# index_map, tmp88
	movq	%rax, %rdi	# tmp88,
	call	free	#
	.loc 1 5068 0
	movq	pre_redundant_insns(%rip), %rax	# pre_redundant_insns, pre_redundant_insns.696
	movq	%rax, %rdi	# pre_redundant_insns.696,
	call	free	#
	.loc 1 5069 0
	movl	-24(%rbp), %eax	# changed, D.19562
	.loc 1 5070 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	pre_gcse, .-pre_gcse
	.section	.rodata
	.align 8
.LC38:
	.string	"\nPRE GCSE of %s, pass %d: %d bytes needed, "
.LC39:
	.string	"%d substs, %d insns created\n"
	.text
	.type	one_pre_gcse_pass, @function
one_pre_gcse_pass:
.LFB98:
	.loc 1 5079 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# pass, pass
	.loc 1 5080 0
	movl	$0, -4(%rbp)	#, changed
	.loc 1 5082 0
	movl	$0, gcse_subst_count(%rip)	#, gcse_subst_count
	.loc 1 5083 0
	movl	$0, gcse_create_count(%rip)	#, gcse_create_count
	.loc 1 5085 0
	movl	max_cuid(%rip), %eax	# max_cuid, max_cuid.697
	movl	%eax, %edi	# max_cuid.698,
	call	alloc_expr_hash_table	#
	.loc 1 5086 0
	call	add_noreturn_fake_exit_edges	#
	.loc 1 5087 0
	movl	flag_gcse_lm(%rip), %eax	# flag_gcse_lm, flag_gcse_lm.699
	testl	%eax, %eax	# flag_gcse_lm.699
	je	.L851	#,
	.loc 1 5088 0
	call	compute_ld_motion_mems	#
.L851:
	.loc 1 5090 0
	call	compute_expr_hash_table	#
	.loc 1 5091 0
	call	trim_ld_motion_mems	#
	.loc 1 5092 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.700
	testq	%rax, %rax	# gcse_file.700
	je	.L852	#,
	.loc 1 5093 0
	movl	n_exprs(%rip), %esi	# n_exprs, n_exprs.701
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.702
	movl	%eax, %ecx	# expr_hash_table_size.702, expr_hash_table_size.703
	movq	expr_hash_table(%rip), %rdx	# expr_hash_table, expr_hash_table.704
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.705
	movl	%esi, %r8d	# n_exprs.701,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# gcse_file.705,
	call	dump_hash_table	#
.L852:
	.loc 1 5096 0
	movl	n_exprs(%rip), %eax	# n_exprs, n_exprs.706
	testl	%eax, %eax	# n_exprs.706
	jle	.L853	#,
	.loc 1 5098 0
	movl	n_exprs(%rip), %edx	# n_exprs, n_exprs.707
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.708
	movl	%edx, %esi	# n_exprs.707,
	movl	%eax, %edi	# n_basic_blocks.708,
	call	alloc_pre_mem	#
	.loc 1 5099 0
	call	compute_pre_data	#
	.loc 1 5100 0
	call	pre_gcse	#
	orl	%eax, -4(%rbp)	# D.19563, changed
	.loc 1 5101 0
	movq	edge_list(%rip), %rax	# edge_list, edge_list.709
	movq	%rax, %rdi	# edge_list.709,
	call	free_edge_list	#
	.loc 1 5102 0
	call	free_pre_mem	#
.L853:
	.loc 1 5105 0
	call	free_ldst_mems	#
	.loc 1 5106 0
	call	remove_fake_edges	#
	.loc 1 5107 0
	call	free_expr_hash_table	#
	.loc 1 5109 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.710
	testq	%rax, %rax	# gcse_file.710
	je	.L854	#,
	.loc 1 5111 0
	movl	bytes_used(%rip), %esi	# bytes_used, bytes_used.711
	.loc 1 5112 0
	movq	cfun(%rip), %rax	# cfun, cfun.712
	.loc 1 5111 0
	movq	40(%rax), %rdx	# cfun.712_20->name, D.19564
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.713
	movl	-20(%rbp), %ecx	# pass, tmp83
	movl	%esi, %r8d	# bytes_used.711,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# gcse_file.713,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 5113 0
	movl	gcse_create_count(%rip), %ecx	# gcse_create_count, gcse_create_count.714
	movl	gcse_subst_count(%rip), %edx	# gcse_subst_count, gcse_subst_count.715
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.716
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# gcse_file.716,
	movl	$0, %eax	#,
	call	fprintf	#
.L854:
	.loc 1 5117 0
	movl	-4(%rbp), %eax	# changed, D.19563
	.loc 1 5118 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	one_pre_gcse_pass, .-one_pre_gcse_pass
	.type	add_label_notes, @function
add_label_notes:
.LFB99:
	.loc 1 5136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# insn, insn
	.loc 1 5137 0
	movq	-40(%rbp), %rax	# x, tmp85
	movzwl	(%rax), %eax	# x_3(D)->code, D.19567
	movzwl	%ax, %eax	# D.19567, tmp86
	movl	%eax, -12(%rbp)	# tmp86, code
	.loc 1 5141 0
	cmpl	$67, -12(%rbp)	#, code
	jne	.L857	#,
	.loc 1 5141 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp87
	movzbl	3(%rax), %eax	# *x_3(D), D.19568
	andl	$8, %eax	#, D.19568
	testb	%al, %al	# D.19568
	jne	.L857	#,
	.loc 1 5149 0 is_stmt 1
	movq	-48(%rbp), %rax	# insn, tmp88
	movq	56(%rax), %rdx	# insn_8(D)->fld[6].rtx, D.19569
	movq	-40(%rbp), %rax	# x, tmp89
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.19569
	movq	%rdx, %rcx	# D.19569,
	movq	%rax, %rdx	# D.19569,
	movl	$13, %esi	#,
	movl	$4, %edi	#,
	call	gen_rtx_fmt_ue	#
	movq	-48(%rbp), %rdx	# insn, tmp90
	movq	%rax, 56(%rdx)	# D.19569, insn_8(D)->fld[6].rtx
	.loc 1 5151 0
	movq	-40(%rbp), %rax	# x, tmp91
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.19569
	movzwl	(%rax), %eax	# _12->code, D.19567
	cmpw	$36, %ax	#, D.19567
	jne	.L858	#,
	.loc 1 5152 0
	movq	-40(%rbp), %rax	# x, tmp92
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.19569
	movl	32(%rax), %edx	# _14->fld[3].rtint, D.19570
	addl	$1, %edx	#, D.19570
	movl	%edx, 32(%rax)	# D.19570, _14->fld[3].rtint
	.loc 1 5153 0
	jmp	.L856	#
.L858:
	jmp	.L856	#
.L857:
	.loc 1 5156 0
	movl	-12(%rbp), %eax	# code, code.717
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19568
	movzbl	%al, %eax	# D.19568, D.19570
	subl	$1, %eax	#, tmp94
	movl	%eax, -20(%rbp)	# tmp94, i
	movl	-12(%rbp), %eax	# code, code.718
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp96
	movq	%rax, -8(%rbp)	# tmp96, fmt
	jmp	.L860	#
.L865:
	.loc 1 5158 0
	movl	-20(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, D.19571
	movq	-8(%rbp), %rax	# fmt, tmp98
	addq	%rdx, %rax	# D.19571, D.19572
	movzbl	(%rax), %eax	# *_24, D.19573
	cmpb	$101, %al	#, D.19573
	jne	.L861	#,
	.loc 1 5159 0
	movq	-40(%rbp), %rax	# x, tmp99
	movl	-20(%rbp), %edx	# i, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	movq	8(%rax,%rdx,8), %rax	# x_3(D)->fld[i_1].rtx, D.19569
	movq	-48(%rbp), %rdx	# insn, tmp102
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# D.19569,
	call	add_label_notes	#
	jmp	.L862	#
.L861:
	.loc 1 5160 0
	movl	-20(%rbp), %eax	# i, tmp103
	movslq	%eax, %rdx	# tmp103, D.19571
	movq	-8(%rbp), %rax	# fmt, tmp104
	addq	%rdx, %rax	# D.19571, D.19572
	movzbl	(%rax), %eax	# *_28, D.19573
	cmpb	$69, %al	#, D.19573
	jne	.L862	#,
	.loc 1 5161 0
	movq	-40(%rbp), %rax	# x, tmp105
	movl	-20(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	movq	8(%rax,%rdx,8), %rax	# x_3(D)->fld[i_1].rtvec, D.19574
	movl	(%rax), %eax	# _30->num_elem, D.19570
	subl	$1, %eax	#, tmp108
	movl	%eax, -16(%rbp)	# tmp108, j
	jmp	.L863	#
.L864:
	.loc 1 5162 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp109
	movl	-20(%rbp), %edx	# i, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	movq	8(%rax,%rdx,8), %rax	# x_3(D)->fld[i_1].rtvec, D.19574
	movl	-16(%rbp), %edx	# j, tmp113
	movslq	%edx, %rdx	# tmp113, tmp112
	movq	8(%rax,%rdx,8), %rax	# _33->elem, D.19569
	movq	-48(%rbp), %rdx	# insn, tmp114
	movq	%rdx, %rsi	# tmp114,
	movq	%rax, %rdi	# D.19569,
	call	add_label_notes	#
	.loc 1 5161 0 discriminator 2
	subl	$1, -16(%rbp)	#, j
.L863:
	.loc 1 5161 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L864	#,
.L862:
	.loc 1 5156 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L860:
	.loc 1 5156 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L865	#,
.L856:
	.loc 1 5164 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	add_label_notes, .-add_label_notes
	.type	compute_transpout, @function
compute_transpout:
.LFB100:
	.loc 1 5181 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 5186 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.719
	movl	%eax, %edx	# n_basic_blocks.719, n_basic_blocks.720
	movq	transpout(%rip), %rax	# transpout, transpout.721
	movl	%edx, %esi	# n_basic_blocks.720,
	movq	%rax, %rdi	# transpout.721,
	call	sbitmap_vector_ones	#
	.loc 1 5188 0
	movl	$0, -16(%rbp)	#, bb
	jmp	.L867	#
.L876:
	.loc 1 5193 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.722
	movl	-16(%rbp), %edx	# bb, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	addq	$4, %rdx	#, tmp102
	movq	(%rax,%rdx,8), %rax	# basic_block_info.722_9->data.bb, D.19575
	movq	8(%rax), %rax	# _10->end, D.19576
	movzwl	(%rax), %eax	# _11->code, D.19577
	cmpw	$34, %ax	#, D.19577
	je	.L868	#,
	.loc 1 5194 0
	jmp	.L869	#
.L868:
	.loc 1 5196 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L870	#
.L875:
	.loc 1 5197 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.723
	movl	-12(%rbp), %edx	# i, D.19578
	salq	$3, %rdx	#, D.19578
	addq	%rdx, %rax	# D.19578, D.19579
	movq	(%rax), %rax	# *_18, tmp103
	movq	%rax, -8(%rbp)	# tmp103, expr
	jmp	.L871	#
.L874:
	.loc 1 5198 0
	movq	-8(%rbp), %rax	# expr, tmp104
	movq	(%rax), %rax	# expr_3->expr, D.19576
	movzwl	(%rax), %eax	# _20->code, D.19577
	cmpw	$66, %ax	#, D.19577
	jne	.L872	#,
	.loc 1 5200 0
	movq	-8(%rbp), %rax	# expr, tmp105
	movq	(%rax), %rax	# expr_3->expr, D.19576
	movq	8(%rax), %rax	# _22->fld[0].rtx, D.19576
	movzwl	(%rax), %eax	# _23->code, D.19577
	cmpw	$68, %ax	#, D.19577
	jne	.L873	#,
	.loc 1 5201 0
	movq	-8(%rbp), %rax	# expr, tmp106
	movq	(%rax), %rax	# expr_3->expr, D.19576
	movq	8(%rax), %rax	# _25->fld[0].rtx, D.19576
	movzbl	3(%rax), %eax	# *_26, D.19580
	andl	$4, %eax	#, D.19580
	testb	%al, %al	# D.19580
	je	.L873	#,
	.loc 1 5202 0
	jmp	.L872	#
.L873:
	.loc 1 5207 0
	movq	transpout(%rip), %rax	# transpout, transpout.724
	movl	-16(%rbp), %edx	# bb, tmp107
	movslq	%edx, %rdx	# tmp107, D.19578
	salq	$3, %rdx	#, D.19578
	addq	%rdx, %rax	# D.19578, D.19581
	movq	(%rax), %rdx	# *_32, D.19582
	movq	-8(%rbp), %rax	# expr, tmp108
	movl	8(%rax), %eax	# expr_3->bitmap_index, D.19583
	shrl	$6, %eax	#, D.19584
	movq	transpout(%rip), %rcx	# transpout, transpout.725
	movl	-16(%rbp), %esi	# bb, tmp109
	movslq	%esi, %rsi	# tmp109, D.19578
	salq	$3, %rsi	#, D.19578
	addq	%rsi, %rcx	# D.19578, D.19581
	movq	(%rcx), %rcx	# *_40, D.19582
	movl	%eax, %esi	# D.19584, tmp110
	addq	$2, %rsi	#, tmp111
	movq	(%rcx,%rsi,8), %rsi	# _41->elms, D.19578
	movq	-8(%rbp), %rcx	# expr, tmp112
	movl	8(%rcx), %ecx	# expr_3->bitmap_index, D.19583
	andl	$63, %ecx	#, D.19583
	movl	$1, %edi	#, tmp113
	salq	%cl, %rdi	# D.19583, D.19578
	movq	%rdi, %rcx	# D.19578, D.19578
	notq	%rcx	# D.19578
	andq	%rsi, %rcx	# D.19578, D.19578
	movl	%eax, %eax	# D.19584, tmp114
	addq	$2, %rax	#, tmp115
	movq	%rcx, (%rdx,%rax,8)	# D.19578, _33->elms
.L872:
	.loc 1 5197 0
	movq	-8(%rbp), %rax	# expr, tmp116
	movq	16(%rax), %rax	# expr_3->next_same_hash, tmp117
	movq	%rax, -8(%rbp)	# tmp117, expr
.L871:
	.loc 1 5197 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, expr
	jne	.L874	#,
	.loc 1 5196 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L870:
	.loc 1 5196 0 is_stmt 0 discriminator 1
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.726
	cmpl	%eax, -12(%rbp)	# expr_hash_table_size.726, i
	jb	.L875	#,
.L869:
	.loc 1 5188 0 is_stmt 1
	addl	$1, -16(%rbp)	#, bb
.L867:
	.loc 1 5188 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.727
	cmpl	%eax, -16(%rbp)	# n_basic_blocks.727, bb
	jl	.L876	#,
	.loc 1 5210 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	compute_transpout, .-compute_transpout
	.type	invalidate_nonnull_info, @function
invalidate_nonnull_info:
.LFB101:
	.loc 1 5225 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# setter, setter
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 5227 0
	movq	-40(%rbp), %rax	# data, tmp104
	movq	%rax, -8(%rbp)	# tmp104, npi
	.loc 1 5229 0
	jmp	.L878	#
.L879:
	.loc 1 5230 0
	movq	-24(%rbp), %rax	# x, tmp105
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp106
	movq	%rax, -24(%rbp)	# tmp106, x
.L878:
	.loc 1 5229 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp107
	movzwl	(%rax), %eax	# x_1->code, D.19585
	cmpw	$63, %ax	#, D.19585
	je	.L879	#,
	.loc 1 5233 0
	movq	-24(%rbp), %rax	# x, tmp108
	movzwl	(%rax), %eax	# x_1->code, D.19585
	cmpw	$61, %ax	#, D.19585
	jne	.L880	#,
	.loc 1 5234 0
	movq	-24(%rbp), %rax	# x, tmp109
	movl	8(%rax), %edx	# x_1->fld[0].rtuint, D.19586
	movq	-8(%rbp), %rax	# npi, tmp110
	movl	4(%rax), %eax	# npi_3->min_reg, D.19586
	cmpl	%eax, %edx	# D.19586, D.19586
	jb	.L880	#,
	.loc 1 5235 0
	movq	-24(%rbp), %rax	# x, tmp111
	movl	8(%rax), %edx	# x_1->fld[0].rtuint, D.19586
	movq	-8(%rbp), %rax	# npi, tmp112
	movl	8(%rax), %eax	# npi_3->max_reg, D.19586
	cmpl	%eax, %edx	# D.19586, D.19586
	jb	.L881	#,
.L880:
	.loc 1 5236 0
	jmp	.L877	#
.L881:
	.loc 1 5238 0
	movq	-24(%rbp), %rax	# x, tmp113
	movl	8(%rax), %edx	# x_1->fld[0].rtuint, D.19586
	movq	-8(%rbp), %rax	# npi, tmp114
	movl	4(%rax), %eax	# npi_3->min_reg, D.19586
	subl	%eax, %edx	# D.19586, tmp115
	movl	%edx, %eax	# tmp115, tmp115
	movl	%eax, -12(%rbp)	# tmp115, regno
	.loc 1 5240 0
	movq	-8(%rbp), %rax	# npi, tmp116
	movq	16(%rax), %rdx	# npi_3->nonnull_local, D.19587
	movq	-8(%rbp), %rax	# npi, tmp117
	movl	(%rax), %eax	# npi_3->current_block, D.19588
	cltq
	salq	$3, %rax	#, D.19589
	addq	%rdx, %rax	# D.19587, D.19587
	movq	(%rax), %rdx	# *_19, D.19590
	movl	-12(%rbp), %eax	# regno, tmp118
	shrl	$6, %eax	#, D.19586
	movq	-8(%rbp), %rcx	# npi, tmp119
	movq	16(%rcx), %rsi	# npi_3->nonnull_local, D.19587
	movq	-8(%rbp), %rcx	# npi, tmp120
	movl	(%rcx), %ecx	# npi_3->current_block, D.19588
	movslq	%ecx, %rcx	# D.19588, D.19589
	salq	$3, %rcx	#, D.19589
	addq	%rsi, %rcx	# D.19587, D.19587
	movq	(%rcx), %rcx	# *_26, D.19590
	movl	%eax, %esi	# D.19586, tmp121
	addq	$2, %rsi	#, tmp122
	movq	(%rcx,%rsi,8), %rsi	# _27->elms, D.19589
	movl	-12(%rbp), %ecx	# regno, regno.728
	andl	$63, %ecx	#, D.19588
	movl	$1, %edi	#, tmp123
	salq	%cl, %rdi	# D.19588, D.19589
	movq	%rdi, %rcx	# D.19589, D.19589
	notq	%rcx	# D.19589
	andq	%rsi, %rcx	# D.19589, D.19589
	movl	%eax, %eax	# D.19586, tmp124
	addq	$2, %rax	#, tmp125
	movq	%rcx, (%rdx,%rax,8)	# D.19589, _20->elms
	.loc 1 5241 0
	movq	-8(%rbp), %rax	# npi, tmp126
	movq	24(%rax), %rdx	# npi_3->nonnull_killed, D.19587
	movq	-8(%rbp), %rax	# npi, tmp127
	movl	(%rax), %eax	# npi_3->current_block, D.19588
	cltq
	salq	$3, %rax	#, D.19589
	addq	%rdx, %rax	# D.19587, D.19587
	movq	(%rax), %rdx	# *_38, D.19590
	movl	-12(%rbp), %eax	# regno, tmp128
	shrl	$6, %eax	#, D.19586
	movq	-8(%rbp), %rcx	# npi, tmp129
	movq	24(%rcx), %rsi	# npi_3->nonnull_killed, D.19587
	movq	-8(%rbp), %rcx	# npi, tmp130
	movl	(%rcx), %ecx	# npi_3->current_block, D.19588
	movslq	%ecx, %rcx	# D.19588, D.19589
	salq	$3, %rcx	#, D.19589
	addq	%rsi, %rcx	# D.19587, D.19587
	movq	(%rcx), %rcx	# *_45, D.19590
	movl	%eax, %esi	# D.19586, tmp131
	addq	$2, %rsi	#, tmp132
	movq	(%rcx,%rsi,8), %rsi	# _46->elms, D.19589
	movl	-12(%rbp), %ecx	# regno, regno.729
	andl	$63, %ecx	#, D.19588
	movl	$1, %edi	#, tmp133
	salq	%cl, %rdi	# D.19588, D.19589
	movq	%rdi, %rcx	# D.19589, D.19589
	orq	%rsi, %rcx	# D.19589, D.19589
	movl	%eax, %eax	# D.19586, tmp134
	addq	$2, %rax	#, tmp135
	movq	%rcx, (%rdx,%rax,8)	# D.19589, _39->elms
.L877:
	.loc 1 5242 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	invalidate_nonnull_info, .-invalidate_nonnull_info
	.type	delete_null_pointer_checks_1, @function
delete_null_pointer_checks_1:
.LFB102:
	.loc 1 5255 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# block_reg, block_reg
	movq	%rsi, -112(%rbp)	# nonnull_avin, nonnull_avin
	movq	%rdx, -120(%rbp)	# nonnull_avout, nonnull_avout
	movq	%rcx, -128(%rbp)	# npi, npi
	.loc 1 5258 0
	movq	-128(%rbp), %rax	# npi, tmp189
	movq	16(%rax), %rax	# npi_7(D)->nonnull_local, tmp190
	movq	%rax, -64(%rbp)	# tmp190, nonnull_local
	.loc 1 5259 0
	movq	-128(%rbp), %rax	# npi, tmp191
	movq	24(%rax), %rax	# npi_7(D)->nonnull_killed, tmp192
	movq	%rax, -56(%rbp)	# tmp192, nonnull_killed
	.loc 1 5269 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.730
	movl	%eax, %edx	# n_basic_blocks.730, n_basic_blocks.731
	movq	-64(%rbp), %rax	# nonnull_local, tmp193
	movl	%edx, %esi	# n_basic_blocks.731,
	movq	%rax, %rdi	# tmp193,
	call	sbitmap_vector_zero	#
	.loc 1 5270 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.732
	movl	%eax, %edx	# n_basic_blocks.732, n_basic_blocks.733
	movq	-56(%rbp), %rax	# nonnull_killed, tmp194
	movl	%edx, %esi	# n_basic_blocks.733,
	movq	%rax, %rdi	# tmp194,
	call	sbitmap_vector_zero	#
	.loc 1 5272 0
	movl	$0, -88(%rbp)	#, current_block
	jmp	.L884	#
.L895:
.LBB53:
	.loc 1 5277 0
	movq	-128(%rbp), %rax	# npi, tmp195
	movl	-88(%rbp), %edx	# current_block, tmp196
	movl	%edx, (%rax)	# tmp196, npi_7(D)->current_block
	.loc 1 5281 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.734
	movl	-88(%rbp), %edx	# current_block, tmp198
	movslq	%edx, %rdx	# tmp198, tmp197
	addq	$4, %rdx	#, tmp199
	movq	(%rax,%rdx,8), %rax	# basic_block_info.734_16->data.bb, D.19591
	movq	8(%rax), %rax	# _17->end, D.19592
	movq	24(%rax), %rax	# _18->fld[2].rtx, tmp200
	movq	%rax, -48(%rbp)	# tmp200, stop_insn
	.loc 1 5282 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.735
	movl	-88(%rbp), %edx	# current_block, tmp202
	movslq	%edx, %rdx	# tmp202, tmp201
	addq	$4, %rdx	#, tmp203
	movq	(%rax,%rdx,8), %rax	# basic_block_info.735_20->data.bb, D.19591
	movq	(%rax), %rax	# _21->head, tmp204
	movq	%rax, -72(%rbp)	# tmp204, insn
	jmp	.L885	#
.L894:
.LBB54:
	.loc 1 5290 0
	movq	-72(%rbp), %rax	# insn, tmp205
	movzwl	(%rax), %eax	# insn_3->code, D.19593
	movzwl	%ax, %eax	# D.19593, D.19594
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19595
	cmpb	$105, %al	#, D.19595
	je	.L886	#,
	.loc 1 5291 0
	jmp	.L887	#
.L886:
	.loc 1 5296 0
	movq	-72(%rbp), %rax	# insn, tmp207
	movzwl	(%rax), %eax	# insn_3->code, D.19593
	movzwl	%ax, %eax	# D.19593, D.19594
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19595
	cmpb	$105, %al	#, D.19595
	jne	.L888	#,
	.loc 1 5296 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# insn, tmp209
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.19592
	movzwl	(%rax), %eax	# _29->code, D.19593
	cmpw	$47, %ax	#, D.19593
	jne	.L889	#,
	.loc 1 5296 0 discriminator 3
	movq	-72(%rbp), %rax	# insn, tmp210
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, iftmp.737
	jmp	.L891	#
.L889:
	.loc 1 5296 0 discriminator 4
	movq	-72(%rbp), %rax	# insn, tmp211
	movq	32(%rax), %rdx	# insn_3->fld[3].rtx, D.19592
	movq	-72(%rbp), %rax	# insn, tmp212
	movq	%rdx, %rsi	# D.19592,
	movq	%rax, %rdi	# tmp212,
	call	single_set_2	#
	jmp	.L891	#
.L888:
	.loc 1 5296 0 discriminator 2
	movl	$0, %eax	#, iftmp.736
.L891:
	.loc 1 5296 0 discriminator 5
	movq	%rax, -40(%rbp)	# iftmp.736, set
	.loc 1 5297 0 is_stmt 1 discriminator 5
	cmpq	$0, -40(%rbp)	#, set
	jne	.L892	#,
	.loc 1 5299 0
	movq	-72(%rbp), %rax	# insn, tmp213
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.19592
	movq	-128(%rbp), %rdx	# npi, tmp214
	movl	$invalidate_nonnull_info, %esi	#,
	movq	%rax, %rdi	# D.19592,
	call	note_stores	#
	.loc 1 5300 0
	jmp	.L887	#
.L892:
	.loc 1 5306 0
	movq	-40(%rbp), %rax	# set, tmp215
	movq	16(%rax), %rax	# set_36->fld[1].rtx, D.19592
	movzwl	(%rax), %eax	# _38->code, D.19593
	cmpw	$66, %ax	#, D.19593
	jne	.L893	#,
	.loc 1 5307 0
	movq	-40(%rbp), %rax	# set, tmp216
	movq	16(%rax), %rax	# set_36->fld[1].rtx, D.19592
	movq	8(%rax), %rax	# _40->fld[0].rtx, tmp217
	movq	%rax, -32(%rbp)	# tmp217, reg
	movq	-32(%rbp), %rax	# reg, tmp218
	movzwl	(%rax), %eax	# reg_41->code, D.19593
	cmpw	$61, %ax	#, D.19593
	jne	.L893	#,
	.loc 1 5308 0
	movq	-32(%rbp), %rax	# reg, tmp219
	movl	8(%rax), %edx	# reg_41->fld[0].rtuint, D.19596
	movq	-128(%rbp), %rax	# npi, tmp220
	movl	4(%rax), %eax	# npi_7(D)->min_reg, D.19596
	cmpl	%eax, %edx	# D.19596, D.19596
	jb	.L893	#,
	.loc 1 5309 0
	movq	-32(%rbp), %rax	# reg, tmp221
	movl	8(%rax), %edx	# reg_41->fld[0].rtuint, D.19596
	movq	-128(%rbp), %rax	# npi, tmp222
	movl	8(%rax), %eax	# npi_7(D)->max_reg, D.19596
	cmpl	%eax, %edx	# D.19596, D.19596
	jae	.L893	#,
	.loc 1 5310 0
	movl	-88(%rbp), %eax	# current_block, tmp223
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19597
	movq	-64(%rbp), %rax	# nonnull_local, tmp224
	addq	%rdx, %rax	# D.19597, D.19598
	movq	(%rax), %rdx	# *_49, D.19599
	movq	-32(%rbp), %rax	# reg, tmp225
	movl	8(%rax), %ecx	# reg_41->fld[0].rtuint, D.19596
	movq	-128(%rbp), %rax	# npi, tmp226
	movl	4(%rax), %eax	# npi_7(D)->min_reg, D.19596
	subl	%eax, %ecx	# D.19596, D.19596
	movl	%ecx, %eax	# D.19596, D.19596
	shrl	$6, %eax	#, D.19596
	movl	-88(%rbp), %ecx	# current_block, tmp227
	movslq	%ecx, %rcx	# tmp227, D.19597
	leaq	0(,%rcx,8), %rsi	#, D.19597
	movq	-64(%rbp), %rcx	# nonnull_local, tmp228
	addq	%rsi, %rcx	# D.19597, D.19598
	movq	(%rcx), %rcx	# *_57, D.19599
	movl	%eax, %esi	# D.19596, tmp229
	addq	$2, %rsi	#, tmp230
	movq	(%rcx,%rsi,8), %rsi	# _58->elms, D.19597
	movq	-32(%rbp), %rcx	# reg, tmp231
	movl	8(%rcx), %edi	# reg_41->fld[0].rtuint, D.19596
	movq	-128(%rbp), %rcx	# npi, tmp232
	movl	4(%rcx), %ecx	# npi_7(D)->min_reg, D.19596
	subl	%ecx, %edi	# D.19596, D.19596
	movl	%edi, %ecx	# D.19596, D.19596
	andl	$63, %ecx	#, D.19594
	movl	$1, %edi	#, tmp233
	salq	%cl, %rdi	# D.19594, D.19597
	movq	%rdi, %rcx	# D.19597, D.19597
	orq	%rsi, %rcx	# D.19597, D.19597
	movl	%eax, %eax	# D.19596, tmp234
	addq	$2, %rax	#, tmp235
	movq	%rcx, (%rdx,%rax,8)	# D.19597, _50->elms
.L893:
	.loc 1 5314 0
	movq	-72(%rbp), %rax	# insn, tmp236
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.19592
	movq	-128(%rbp), %rdx	# npi, tmp237
	movl	$invalidate_nonnull_info, %esi	#,
	movq	%rax, %rdi	# D.19592,
	call	note_stores	#
	.loc 1 5319 0
	movq	-40(%rbp), %rax	# set, tmp238
	movq	8(%rax), %rax	# set_36->fld[0].rtx, D.19592
	movzwl	(%rax), %eax	# _68->code, D.19593
	cmpw	$66, %ax	#, D.19593
	jne	.L887	#,
	.loc 1 5320 0
	movq	-40(%rbp), %rax	# set, tmp239
	movq	8(%rax), %rax	# set_36->fld[0].rtx, D.19592
	movq	8(%rax), %rax	# _70->fld[0].rtx, tmp240
	movq	%rax, -32(%rbp)	# tmp240, reg
	movq	-32(%rbp), %rax	# reg, tmp241
	movzwl	(%rax), %eax	# reg_71->code, D.19593
	cmpw	$61, %ax	#, D.19593
	jne	.L887	#,
	.loc 1 5321 0
	movq	-32(%rbp), %rax	# reg, tmp242
	movl	8(%rax), %edx	# reg_71->fld[0].rtuint, D.19596
	movq	-128(%rbp), %rax	# npi, tmp243
	movl	4(%rax), %eax	# npi_7(D)->min_reg, D.19596
	cmpl	%eax, %edx	# D.19596, D.19596
	jb	.L887	#,
	.loc 1 5322 0
	movq	-32(%rbp), %rax	# reg, tmp244
	movl	8(%rax), %edx	# reg_71->fld[0].rtuint, D.19596
	movq	-128(%rbp), %rax	# npi, tmp245
	movl	8(%rax), %eax	# npi_7(D)->max_reg, D.19596
	cmpl	%eax, %edx	# D.19596, D.19596
	jae	.L887	#,
	.loc 1 5323 0
	movl	-88(%rbp), %eax	# current_block, tmp246
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19597
	movq	-64(%rbp), %rax	# nonnull_local, tmp247
	addq	%rdx, %rax	# D.19597, D.19598
	movq	(%rax), %rdx	# *_79, D.19599
	movq	-32(%rbp), %rax	# reg, tmp248
	movl	8(%rax), %ecx	# reg_71->fld[0].rtuint, D.19596
	movq	-128(%rbp), %rax	# npi, tmp249
	movl	4(%rax), %eax	# npi_7(D)->min_reg, D.19596
	subl	%eax, %ecx	# D.19596, D.19596
	movl	%ecx, %eax	# D.19596, D.19596
	shrl	$6, %eax	#, D.19596
	movl	-88(%rbp), %ecx	# current_block, tmp250
	movslq	%ecx, %rcx	# tmp250, D.19597
	leaq	0(,%rcx,8), %rsi	#, D.19597
	movq	-64(%rbp), %rcx	# nonnull_local, tmp251
	addq	%rsi, %rcx	# D.19597, D.19598
	movq	(%rcx), %rcx	# *_87, D.19599
	movl	%eax, %esi	# D.19596, tmp252
	addq	$2, %rsi	#, tmp253
	movq	(%rcx,%rsi,8), %rsi	# _88->elms, D.19597
	movq	-32(%rbp), %rcx	# reg, tmp254
	movl	8(%rcx), %edi	# reg_71->fld[0].rtuint, D.19596
	movq	-128(%rbp), %rcx	# npi, tmp255
	movl	4(%rcx), %ecx	# npi_7(D)->min_reg, D.19596
	subl	%ecx, %edi	# D.19596, D.19596
	movl	%edi, %ecx	# D.19596, D.19596
	andl	$63, %ecx	#, D.19594
	movl	$1, %edi	#, tmp256
	salq	%cl, %rdi	# D.19594, D.19597
	movq	%rdi, %rcx	# D.19597, D.19597
	orq	%rsi, %rcx	# D.19597, D.19597
	movl	%eax, %eax	# D.19596, tmp257
	addq	$2, %rax	#, tmp258
	movq	%rcx, (%rdx,%rax,8)	# D.19597, _80->elms
.L887:
.LBE54:
	.loc 1 5284 0
	movq	-72(%rbp), %rax	# insn, tmp259
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp260
	movq	%rax, -72(%rbp)	# tmp260, insn
.L885:
	.loc 1 5282 0 discriminator 1
	movq	-72(%rbp), %rax	# insn, tmp261
	cmpq	-48(%rbp), %rax	# stop_insn, tmp261
	jne	.L894	#,
.LBE53:
	.loc 1 5272 0
	addl	$1, -88(%rbp)	#, current_block
.L884:
	.loc 1 5272 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.738
	cmpl	%eax, -88(%rbp)	# n_basic_blocks.738, current_block
	jl	.L895	#,
	.loc 1 5330 0 is_stmt 1
	movq	-112(%rbp), %rcx	# nonnull_avin, tmp262
	movq	-120(%rbp), %rdx	# nonnull_avout, tmp263
	movq	-56(%rbp), %rsi	# nonnull_killed, tmp264
	movq	-64(%rbp), %rax	# nonnull_local, tmp265
	movq	%rax, %rdi	# tmp265,
	call	compute_available	#
	.loc 1 5335 0
	movl	$0, -92(%rbp)	#, bb
	jmp	.L896	#
.L908:
.LBB55:
	.loc 1 5337 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.739
	movl	-92(%rbp), %edx	# bb, tmp267
	movslq	%edx, %rdx	# tmp267, tmp266
	addq	$4, %rdx	#, tmp268
	movq	(%rax,%rdx,8), %rax	# basic_block_info.739_103->data.bb, D.19591
	movq	8(%rax), %rax	# _104->end, tmp269
	movq	%rax, -24(%rbp)	# tmp269, last_insn
	.loc 1 5344 0
	movl	-92(%rbp), %eax	# bb, tmp270
	cltq
	leaq	0(,%rax,4), %rdx	#, D.19597
	movq	-104(%rbp), %rax	# block_reg, tmp271
	addq	%rdx, %rax	# D.19597, D.19600
	movl	(%rax), %edx	# *_109, D.19596
	movq	-128(%rbp), %rax	# npi, tmp272
	movl	4(%rax), %eax	# npi_7(D)->min_reg, D.19596
	cmpl	%eax, %edx	# D.19596, D.19596
	jb	.L897	#,
	.loc 1 5345 0
	movl	-92(%rbp), %eax	# bb, tmp273
	cltq
	leaq	0(,%rax,4), %rdx	#, D.19597
	movq	-104(%rbp), %rax	# block_reg, tmp274
	addq	%rdx, %rax	# D.19597, D.19600
	movl	(%rax), %edx	# *_114, D.19596
	movq	-128(%rbp), %rax	# npi, tmp275
	movl	8(%rax), %eax	# npi_7(D)->max_reg, D.19596
	cmpl	%eax, %edx	# D.19596, D.19596
	jb	.L898	#,
.L897:
	.loc 1 5346 0
	jmp	.L907	#
.L898:
	.loc 1 5349 0
	leaq	-80(%rbp), %rdx	#, tmp276
	movq	-24(%rbp), %rax	# last_insn, tmp277
	movq	%rdx, %rsi	# tmp276,
	movq	%rax, %rdi	# tmp277,
	call	get_condition	#
	movq	%rax, -16(%rbp)	# tmp278, condition
	.loc 1 5352 0
	cmpq	$0, -16(%rbp)	#, condition
	jne	.L900	#,
	.loc 1 5353 0
	jmp	.L907	#
.L900:
	.loc 1 5356 0
	movl	-92(%rbp), %eax	# bb, tmp279
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19597
	movq	-120(%rbp), %rax	# nonnull_avout, tmp280
	addq	%rdx, %rax	# D.19597, D.19598
	movq	(%rax), %rax	# *_120, D.19599
	movl	-92(%rbp), %edx	# bb, tmp281
	movslq	%edx, %rdx	# tmp281, D.19597
	leaq	0(,%rdx,4), %rcx	#, D.19597
	movq	-104(%rbp), %rdx	# block_reg, tmp282
	addq	%rcx, %rdx	# D.19597, D.19600
	movl	(%rdx), %ecx	# *_124, D.19596
	movq	-128(%rbp), %rdx	# npi, tmp283
	movl	4(%rdx), %edx	# npi_7(D)->min_reg, D.19596
	subl	%edx, %ecx	# D.19596, D.19596
	movl	%ecx, %edx	# D.19596, D.19596
	shrl	$6, %edx	#, D.19596
	movl	%edx, %edx	# D.19596, tmp284
	addq	$2, %rdx	#, tmp285
	movq	(%rax,%rdx,8), %rdx	# _121->elms, D.19597
	movl	-92(%rbp), %eax	# bb, tmp286
	cltq
	leaq	0(,%rax,4), %rcx	#, D.19597
	movq	-104(%rbp), %rax	# block_reg, tmp287
	addq	%rcx, %rax	# D.19597, D.19600
	movl	(%rax), %ecx	# *_132, D.19596
	movq	-128(%rbp), %rax	# npi, tmp288
	movl	4(%rax), %eax	# npi_7(D)->min_reg, D.19596
	subl	%eax, %ecx	# D.19596, D.19596
	movl	%ecx, %eax	# D.19596, D.19596
	andl	$63, %eax	#, D.19594
	movl	%eax, %ecx	# D.19594, tmp313
	shrq	%cl, %rdx	# tmp313, D.19597
	movq	%rdx, %rax	# D.19597, D.19597
	andl	$1, %eax	#, D.19597
	testq	%rax, %rax	# D.19597
	jne	.L901	#,
	.loc 1 5357 0
	jmp	.L907	#
.L901:
	.loc 1 5361 0
	movq	-80(%rbp), %rax	# earliest, earliest.740
	cmpq	-24(%rbp), %rax	# last_insn, earliest.740
	jne	.L902	#,
	.loc 1 5362 0
	movl	$1, -84(%rbp)	#, compare_and_branch
	jmp	.L903	#
.L902:
	.loc 1 5363 0
	movq	-24(%rbp), %rax	# last_insn, tmp289
	movq	%rax, %rdi	# tmp289,
	call	prev_nonnote_insn	#
	movq	-80(%rbp), %rdx	# earliest, earliest.741
	cmpq	%rdx, %rax	# earliest.741, D.19592
	jne	.L904	#,
	.loc 1 5364 0
	movl	$2, -84(%rbp)	#, compare_and_branch
	jmp	.L903	#
.L904:
	.loc 1 5366 0
	jmp	.L907	#
.L903:
	.loc 1 5370 0
	movq	-16(%rbp), %rax	# condition, tmp290
	movzwl	(%rax), %eax	# condition_117->code, D.19593
	cmpw	$102, %ax	#, D.19593
	jne	.L905	#,
.LBB56:
	.loc 1 5374 0
	movq	-24(%rbp), %rax	# last_insn, tmp291
	movq	64(%rax), %rax	# last_insn_105->fld[7].rtx, D.19592
	movq	%rax, %rdi	# D.19592,
	call	gen_jump	#
	movq	-24(%rbp), %rdx	# last_insn, tmp292
	movq	%rdx, %rsi	# tmp292,
	movq	%rax, %rdi	# D.19592,
	call	emit_jump_insn_before	#
	movq	%rax, -8(%rbp)	# tmp293, new_jump
	.loc 1 5376 0
	movq	-24(%rbp), %rax	# last_insn, tmp294
	movq	64(%rax), %rdx	# last_insn_105->fld[7].rtx, D.19592
	movq	-8(%rbp), %rax	# new_jump, tmp295
	movq	%rdx, 64(%rax)	# D.19592, new_jump_148->fld[7].rtx
	.loc 1 5377 0
	movq	-8(%rbp), %rax	# new_jump, tmp296
	movq	64(%rax), %rax	# new_jump_148->fld[7].rtx, D.19592
	movl	32(%rax), %edx	# _150->fld[3].rtint, D.19594
	addl	$1, %edx	#, D.19594
	movl	%edx, 32(%rax)	# D.19594, _150->fld[3].rtint
	.loc 1 5378 0
	movq	-8(%rbp), %rax	# new_jump, tmp297
	movq	%rax, %rdi	# tmp297,
	call	emit_barrier_after	#
.L905:
.LBE56:
	.loc 1 5381 0
	movq	-24(%rbp), %rax	# last_insn, tmp298
	movq	%rax, %rdi	# tmp298,
	call	delete_insn	#
	.loc 1 5382 0
	cmpl	$2, -84(%rbp)	#, compare_and_branch
	jne	.L906	#,
	.loc 1 5383 0
	movq	-80(%rbp), %rax	# earliest, earliest.742
	movq	%rax, %rdi	# earliest.742,
	call	delete_insn	#
.L906:
	.loc 1 5384 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.743
	movl	-92(%rbp), %edx	# bb, tmp300
	movslq	%edx, %rdx	# tmp300, tmp299
	addq	$4, %rdx	#, tmp301
	movq	(%rax,%rdx,8), %rax	# basic_block_info.743_154->data.bb, D.19591
	movq	%rax, %rdi	# D.19591,
	call	purge_dead_edges	#
	.loc 1 5389 0
	movl	-92(%rbp), %eax	# bb, tmp302
	cltq
	leaq	0(,%rax,4), %rdx	#, D.19597
	movq	-104(%rbp), %rax	# block_reg, tmp303
	addq	%rdx, %rax	# D.19597, D.19600
	movl	$0, (%rax)	#, *_158
.L907:
.LBE55:
	.loc 1 5335 0
	addl	$1, -92(%rbp)	#, bb
.L896:
	.loc 1 5335 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.744
	cmpl	%eax, -92(%rbp)	# n_basic_blocks.744, bb
	jl	.L908	#,
	.loc 1 5391 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	delete_null_pointer_checks_1, .-delete_null_pointer_checks_1
	.globl	delete_null_pointer_checks
	.type	delete_null_pointer_checks, @function
delete_null_pointer_checks:
.LFB103:
	.loc 1 5420 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)	# f, f
	.loc 1 5430 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.745
	cmpl	$1, %eax	#, n_basic_blocks.745
	jg	.L910	#,
	.loc 1 5431 0
	jmp	.L909	#
.L910:
	.loc 1 5441 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.746
	cmpl	$1000, %eax	#, n_basic_blocks.746
	jle	.L912	#,
	.loc 1 5441 0 is_stmt 0 discriminator 1
	movl	n_edges(%rip), %eax	# n_edges, n_edges.747
	movl	n_basic_blocks(%rip), %ebx	# n_basic_blocks, n_basic_blocks.748
	cltd
	idivl	%ebx	# n_basic_blocks.748
	cmpl	$19, %eax	#, D.19601
	jle	.L912	#,
	.loc 1 5442 0 is_stmt 1
	jmp	.L909	#
.L912:
	.loc 1 5446 0
	call	max_reg_num	#
	movl	%eax, -112(%rbp)	# tmp109, max_reg
	.loc 1 5447 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.749
	movl	-112(%rbp), %edx	# max_reg, tmp110
	movl	%eax, %esi	# n_basic_blocks.749,
	movl	$4, %edi	#,
	call	get_bitmap_width	#
	movl	%eax, -108(%rbp)	# tmp111, regs_per_pass
	.loc 1 5450 0
	movl	-108(%rbp), %edx	# regs_per_pass, regs_per_pass.750
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.751
	movl	%edx, %esi	# regs_per_pass.750,
	movl	%eax, %edi	# n_basic_blocks.752,
	call	sbitmap_vector_alloc	#
	movq	%rax, -32(%rbp)	# D.19602, npi.nonnull_local
	.loc 1 5451 0
	movl	-108(%rbp), %edx	# regs_per_pass, regs_per_pass.753
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.754
	movl	%edx, %esi	# regs_per_pass.753,
	movl	%eax, %edi	# n_basic_blocks.755,
	call	sbitmap_vector_alloc	#
	movq	%rax, -24(%rbp)	# D.19602, npi.nonnull_killed
	.loc 1 5452 0
	movl	-108(%rbp), %edx	# regs_per_pass, regs_per_pass.756
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.757
	movl	%edx, %esi	# regs_per_pass.756,
	movl	%eax, %edi	# n_basic_blocks.758,
	call	sbitmap_vector_alloc	#
	movq	%rax, -96(%rbp)	# tmp112, nonnull_avin
	.loc 1 5453 0
	movl	-108(%rbp), %edx	# regs_per_pass, regs_per_pass.759
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.760
	movl	%edx, %esi	# regs_per_pass.759,
	movl	%eax, %edi	# n_basic_blocks.761,
	call	sbitmap_vector_alloc	#
	movq	%rax, -88(%rbp)	# tmp113, nonnull_avout
	.loc 1 5458 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.762
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.19603,
	call	xcalloc	#
	movq	%rax, -80(%rbp)	# tmp114, block_reg
	.loc 1 5459 0
	movl	$0, -120(%rbp)	#, bb
	jmp	.L913	#
.L922:
.LBB57:
	.loc 1 5461 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.763
	movl	-120(%rbp), %edx	# bb, tmp116
	movslq	%edx, %rdx	# tmp116, tmp115
	addq	$4, %rdx	#, tmp117
	movq	(%rax,%rdx,8), %rax	# basic_block_info.763_32->data.bb, D.19604
	movq	8(%rax), %rax	# _33->end, tmp118
	movq	%rax, -72(%rbp)	# tmp118, last_insn
	.loc 1 5465 0
	movq	-72(%rbp), %rax	# last_insn, tmp119
	movzwl	(%rax), %eax	# last_insn_34->code, D.19605
	cmpw	$33, %ax	#, D.19605
	jne	.L914	#,
	.loc 1 5466 0
	movq	-72(%rbp), %rax	# last_insn, tmp120
	movq	%rax, %rdi	# tmp120,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.19601
	je	.L914	#,
	.loc 1 5467 0
	movq	-72(%rbp), %rax	# last_insn, tmp121
	movq	%rax, %rdi	# tmp121,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.19601
	jne	.L915	#,
.L914:
	.loc 1 5468 0
	jmp	.L921	#
.L915:
	.loc 1 5471 0
	leaq	-104(%rbp), %rdx	#, tmp122
	movq	-72(%rbp), %rax	# last_insn, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	get_condition	#
	movq	%rax, -64(%rbp)	# tmp124, condition
	.loc 1 5475 0
	cmpq	$0, -64(%rbp)	#, condition
	je	.L917	#,
	.loc 1 5476 0
	movq	-64(%rbp), %rax	# condition, tmp125
	movzwl	(%rax), %eax	# condition_38->code, D.19605
	cmpw	$102, %ax	#, D.19605
	je	.L918	#,
	.loc 1 5476 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# condition, tmp126
	movzwl	(%rax), %eax	# condition_38->code, D.19605
	cmpw	$103, %ax	#, D.19605
	jne	.L917	#,
.L918:
	.loc 1 5477 0 is_stmt 1
	movq	-64(%rbp), %rax	# condition, tmp127
	movq	16(%rax), %rax	# condition_38->fld[1].rtx, D.19606
	movzwl	(%rax), %eax	# _41->code, D.19605
	cmpw	$54, %ax	#, D.19605
	jne	.L917	#,
	.loc 1 5478 0
	movq	-64(%rbp), %rax	# condition, tmp128
	movq	16(%rax), %rdx	# condition_38->fld[1].rtx, D.19606
	.loc 1 5479 0
	movq	-64(%rbp), %rax	# condition, tmp129
	movq	8(%rax), %rax	# condition_38->fld[0].rtx, D.19606
	movzbl	2(%rax), %eax	# _44->mode, D.19607
	movzbl	%al, %eax	# D.19607, D.19601
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.19606
	.loc 1 5478 0
	cmpq	%rax, %rdx	# D.19606, D.19606
	je	.L919	#,
.L917:
	.loc 1 5480 0
	jmp	.L921	#
.L919:
	.loc 1 5483 0
	movq	-64(%rbp), %rax	# condition, tmp131
	movq	8(%rax), %rax	# condition_38->fld[0].rtx, tmp132
	movq	%rax, -56(%rbp)	# tmp132, reg
	.loc 1 5484 0
	movq	-56(%rbp), %rax	# reg, tmp133
	movzwl	(%rax), %eax	# reg_48->code, D.19605
	cmpw	$61, %ax	#, D.19605
	je	.L920	#,
	.loc 1 5485 0
	jmp	.L921	#
.L920:
	.loc 1 5487 0
	movl	-120(%rbp), %eax	# bb, tmp134
	cltq
	leaq	0(,%rax,4), %rdx	#, D.19603
	movq	-80(%rbp), %rax	# block_reg, tmp135
	addq	%rax, %rdx	# tmp135, D.19608
	movq	-56(%rbp), %rax	# reg, tmp136
	movl	8(%rax), %eax	# reg_48->fld[0].rtuint, D.19609
	movl	%eax, (%rdx)	# D.19609, *_52
.L921:
.LBE57:
	.loc 1 5459 0
	addl	$1, -120(%rbp)	#, bb
.L913:
	.loc 1 5459 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.764
	cmpl	%eax, -120(%rbp)	# n_basic_blocks.764, bb
	jl	.L922	#,
	.loc 1 5491 0 is_stmt 1
	movl	$53, -116(%rbp)	#, reg
	jmp	.L923	#
.L924:
	.loc 1 5493 0 discriminator 2
	movl	-116(%rbp), %eax	# reg, reg.765
	movl	%eax, -44(%rbp)	# reg.765, npi.min_reg
	.loc 1 5494 0 discriminator 2
	movl	-108(%rbp), %eax	# regs_per_pass, tmp137
	movl	-116(%rbp), %edx	# reg, tmp138
	addl	%eax, %edx	# tmp137, D.19601
	movl	-112(%rbp), %eax	# max_reg, tmp139
	cmpl	%eax, %edx	# tmp139, D.19601
	cmovle	%edx, %eax	# D.19601,, D.19601
	movl	%eax, -40(%rbp)	# D.19609, npi.max_reg
	.loc 1 5495 0 discriminator 2
	leaq	-48(%rbp), %rcx	#, tmp140
	movq	-88(%rbp), %rdx	# nonnull_avout, tmp141
	movq	-96(%rbp), %rsi	# nonnull_avin, tmp142
	movq	-80(%rbp), %rax	# block_reg, tmp143
	movq	%rax, %rdi	# tmp143,
	call	delete_null_pointer_checks_1	#
	.loc 1 5491 0 discriminator 2
	movl	-108(%rbp), %eax	# regs_per_pass, tmp144
	addl	%eax, -116(%rbp)	# tmp144, reg
.L923:
	.loc 1 5491 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# reg, tmp145
	cmpl	-112(%rbp), %eax	# max_reg, tmp145
	jl	.L924	#,
	.loc 1 5500 0 is_stmt 1
	movq	-80(%rbp), %rax	# block_reg, tmp146
	movq	%rax, %rdi	# tmp146,
	call	free	#
	.loc 1 5503 0
	movq	-32(%rbp), %rax	# npi.nonnull_local, D.19602
	movq	%rax, %rdi	# D.19602,
	call	free	#
	.loc 1 5504 0
	movq	-24(%rbp), %rax	# npi.nonnull_killed, D.19602
	movq	%rax, %rdi	# D.19602,
	call	free	#
	.loc 1 5505 0
	movq	-96(%rbp), %rax	# nonnull_avin, tmp147
	movq	%rax, %rdi	# tmp147,
	call	free	#
	.loc 1 5506 0
	movq	-88(%rbp), %rax	# nonnull_avout, tmp148
	movq	%rax, %rdi	# tmp148,
	call	free	#
.L909:
	.loc 1 5507 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	delete_null_pointer_checks, .-delete_null_pointer_checks
	.local	hoist_vbein
	.comm	hoist_vbein,8,8
	.local	hoist_vbeout
	.comm	hoist_vbeout,8,8
	.local	hoist_exprs
	.comm	hoist_exprs,8,8
	.local	dominators
	.comm	dominators,8,8
	.type	alloc_code_hoist_mem, @function
alloc_code_hoist_mem:
.LFB104:
	.loc 1 5533 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# n_blocks, n_blocks
	movl	%esi, -8(%rbp)	# n_exprs, n_exprs
	.loc 1 5534 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.766
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.767
	movl	%edx, %esi	# n_exprs.766,
	movl	%eax, %edi	# n_blocks.767,
	call	sbitmap_vector_alloc	#
	movq	%rax, antloc(%rip)	# antloc.768, antloc
	.loc 1 5535 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.769
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.770
	movl	%edx, %esi	# n_exprs.769,
	movl	%eax, %edi	# n_blocks.770,
	call	sbitmap_vector_alloc	#
	movq	%rax, transp(%rip)	# transp.771, transp
	.loc 1 5536 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.772
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.773
	movl	%edx, %esi	# n_exprs.772,
	movl	%eax, %edi	# n_blocks.773,
	call	sbitmap_vector_alloc	#
	movq	%rax, comp(%rip)	# comp.774, comp
	.loc 1 5538 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.775
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.776
	movl	%edx, %esi	# n_exprs.775,
	movl	%eax, %edi	# n_blocks.776,
	call	sbitmap_vector_alloc	#
	movq	%rax, hoist_vbein(%rip)	# hoist_vbein.777, hoist_vbein
	.loc 1 5539 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.778
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.779
	movl	%edx, %esi	# n_exprs.778,
	movl	%eax, %edi	# n_blocks.779,
	call	sbitmap_vector_alloc	#
	movq	%rax, hoist_vbeout(%rip)	# hoist_vbeout.780, hoist_vbeout
	.loc 1 5540 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.781
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.782
	movl	%edx, %esi	# n_exprs.781,
	movl	%eax, %edi	# n_blocks.782,
	call	sbitmap_vector_alloc	#
	movq	%rax, hoist_exprs(%rip)	# hoist_exprs.783, hoist_exprs
	.loc 1 5541 0
	movl	-8(%rbp), %edx	# n_exprs, n_exprs.784
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.785
	movl	%edx, %esi	# n_exprs.784,
	movl	%eax, %edi	# n_blocks.785,
	call	sbitmap_vector_alloc	#
	movq	%rax, transpout(%rip)	# transpout.786, transpout
	.loc 1 5543 0
	movl	-4(%rbp), %edx	# n_blocks, n_blocks.787
	movl	-4(%rbp), %eax	# n_blocks, n_blocks.788
	movl	%edx, %esi	# n_blocks.787,
	movl	%eax, %edi	# n_blocks.788,
	call	sbitmap_vector_alloc	#
	movq	%rax, dominators(%rip)	# dominators.789, dominators
	.loc 1 5544 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	alloc_code_hoist_mem, .-alloc_code_hoist_mem
	.type	free_code_hoist_mem, @function
free_code_hoist_mem:
.LFB105:
	.loc 1 5550 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5551 0
	movq	antloc(%rip), %rax	# antloc, antloc.790
	movq	%rax, %rdi	# antloc.790,
	call	free	#
	.loc 1 5552 0
	movq	transp(%rip), %rax	# transp, transp.791
	movq	%rax, %rdi	# transp.791,
	call	free	#
	.loc 1 5553 0
	movq	comp(%rip), %rax	# comp, comp.792
	movq	%rax, %rdi	# comp.792,
	call	free	#
	.loc 1 5555 0
	movq	hoist_vbein(%rip), %rax	# hoist_vbein, hoist_vbein.793
	movq	%rax, %rdi	# hoist_vbein.793,
	call	free	#
	.loc 1 5556 0
	movq	hoist_vbeout(%rip), %rax	# hoist_vbeout, hoist_vbeout.794
	movq	%rax, %rdi	# hoist_vbeout.794,
	call	free	#
	.loc 1 5557 0
	movq	hoist_exprs(%rip), %rax	# hoist_exprs, hoist_exprs.795
	movq	%rax, %rdi	# hoist_exprs.795,
	call	free	#
	.loc 1 5558 0
	movq	transpout(%rip), %rax	# transpout, transpout.796
	movq	%rax, %rdi	# transpout.796,
	call	free	#
	.loc 1 5560 0
	movq	dominators(%rip), %rax	# dominators, dominators.797
	movq	%rax, %rdi	# dominators.797,
	call	free	#
	.loc 1 5561 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	free_code_hoist_mem, .-free_code_hoist_mem
	.section	.rodata
	.align 8
.LC40:
	.string	"hoisting vbeinout computation: %d passes\n"
	.text
	.type	compute_code_hoist_vbeinout, @function
compute_code_hoist_vbeinout:
.LFB106:
	.loc 1 5570 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 5573 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.798
	movl	%eax, %edx	# n_basic_blocks.798, n_basic_blocks.799
	movq	hoist_vbeout(%rip), %rax	# hoist_vbeout, hoist_vbeout.800
	movl	%edx, %esi	# n_basic_blocks.799,
	movq	%rax, %rdi	# hoist_vbeout.800,
	call	sbitmap_vector_zero	#
	.loc 1 5574 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.801
	movl	%eax, %edx	# n_basic_blocks.801, n_basic_blocks.802
	movq	hoist_vbein(%rip), %rax	# hoist_vbein, hoist_vbein.803
	movl	%edx, %esi	# n_basic_blocks.802,
	movq	%rax, %rdi	# hoist_vbein.803,
	call	sbitmap_vector_zero	#
	.loc 1 5576 0
	movl	$0, -4(%rbp)	#, passes
	.loc 1 5577 0
	movl	$1, -8(%rbp)	#, changed
	.loc 1 5579 0
	jmp	.L929	#
.L933:
	.loc 1 5581 0
	movl	$0, -8(%rbp)	#, changed
	.loc 1 5585 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.804
	subl	$1, %eax	#, tmp97
	movl	%eax, -12(%rbp)	# tmp97, bb
	jmp	.L930	#
.L932:
	.loc 1 5588 0
	movq	transp(%rip), %rax	# transp, transp.805
	movl	-12(%rbp), %edx	# bb, tmp98
	movslq	%edx, %rdx	# tmp98, D.19610
	salq	$3, %rdx	#, D.19610
	addq	%rdx, %rax	# D.19610, D.19611
	.loc 1 5587 0
	movq	(%rax), %rcx	# *_19, D.19612
	.loc 1 5588 0
	movq	hoist_vbeout(%rip), %rax	# hoist_vbeout, hoist_vbeout.806
	movl	-12(%rbp), %edx	# bb, tmp99
	movslq	%edx, %rdx	# tmp99, D.19610
	salq	$3, %rdx	#, D.19610
	addq	%rdx, %rax	# D.19610, D.19611
	.loc 1 5587 0
	movq	(%rax), %rdx	# *_24, D.19612
	movq	antloc(%rip), %rax	# antloc, antloc.807
	movl	-12(%rbp), %esi	# bb, tmp100
	movslq	%esi, %rsi	# tmp100, D.19610
	salq	$3, %rsi	#, D.19610
	addq	%rsi, %rax	# D.19610, D.19611
	movq	(%rax), %rsi	# *_29, D.19612
	movq	hoist_vbein(%rip), %rax	# hoist_vbein, hoist_vbein.808
	movl	-12(%rbp), %edi	# bb, tmp101
	movslq	%edi, %rdi	# tmp101, D.19610
	salq	$3, %rdi	#, D.19610
	addq	%rdi, %rax	# D.19610, D.19611
	movq	(%rax), %rax	# *_34, D.19612
	movq	%rax, %rdi	# D.19612,
	call	sbitmap_a_or_b_and_c	#
	orl	%eax, -8(%rbp)	# D.19613, changed
	.loc 1 5589 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.809
	subl	$1, %eax	#, D.19613
	cmpl	-12(%rbp), %eax	# bb, D.19613
	je	.L931	#,
	.loc 1 5590 0
	movq	hoist_vbein(%rip), %rcx	# hoist_vbein, hoist_vbein.810
	movq	hoist_vbeout(%rip), %rax	# hoist_vbeout, hoist_vbeout.811
	movl	-12(%rbp), %edx	# bb, tmp102
	movslq	%edx, %rdx	# tmp102, D.19610
	salq	$3, %rdx	#, D.19610
	addq	%rdx, %rax	# D.19610, D.19611
	movq	(%rax), %rax	# *_44, D.19612
	movl	-12(%rbp), %edx	# bb, tmp103
	movq	%rcx, %rsi	# hoist_vbein.810,
	movq	%rax, %rdi	# D.19612,
	call	sbitmap_intersection_of_succs	#
.L931:
	.loc 1 5585 0
	subl	$1, -12(%rbp)	#, bb
.L930:
	.loc 1 5585 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, bb
	jns	.L932	#,
	.loc 1 5593 0 is_stmt 1
	addl	$1, -4(%rbp)	#, passes
.L929:
	.loc 1 5579 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, changed
	jne	.L933	#,
	.loc 1 5596 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.812
	testq	%rax, %rax	# gcse_file.812
	je	.L928	#,
	.loc 1 5597 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.813
	movl	-4(%rbp), %edx	# passes, tmp104
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# gcse_file.813,
	movl	$0, %eax	#,
	call	fprintf	#
.L928:
	.loc 1 5598 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	compute_code_hoist_vbeinout, .-compute_code_hoist_vbeinout
	.type	compute_code_hoist_data, @function
compute_code_hoist_data:
.LFB107:
	.loc 1 5604 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5605 0
	movq	antloc(%rip), %rdx	# antloc, antloc.814
	movq	comp(%rip), %rsi	# comp, comp.815
	movq	transp(%rip), %rax	# transp, transp.816
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# transp.816,
	call	compute_local_properties	#
	.loc 1 5606 0
	call	compute_transpout	#
	.loc 1 5607 0
	call	compute_code_hoist_vbeinout	#
	.loc 1 5608 0
	movq	dominators(%rip), %rax	# dominators, dominators.817
	movl	$0, %edx	#,
	movq	%rax, %rsi	# dominators.817,
	movl	$0, %edi	#,
	call	calculate_dominance_info	#
	.loc 1 5609 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.818
	testq	%rax, %rax	# gcse_file.818
	je	.L935	#,
	.loc 1 5610 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.819
	movq	%rax, %rsi	# gcse_file.819,
	movl	$10, %edi	#,
	call	fputc	#
.L935:
	.loc 1 5611 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	compute_code_hoist_data, .-compute_code_hoist_data
	.type	hoist_expr_reaches_here_p, @function
hoist_expr_reaches_here_p:
.LFB108:
	.loc 1 5632 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# expr_bb, expr_bb
	movl	%esi, -44(%rbp)	# expr_index, expr_index
	movq	%rdx, -56(%rbp)	# bb, bb
	movq	%rcx, -64(%rbp)	# visited, visited
	.loc 1 5634 0
	movl	$0, -20(%rbp)	#, visited_allocated_locally
	.loc 1 5637 0
	cmpq	$0, -64(%rbp)	#, visited
	jne	.L938	#,
	.loc 1 5639 0
	movl	$1, -20(%rbp)	#, visited_allocated_locally
	.loc 1 5640 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.820
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.19615,
	call	xcalloc	#
	movq	%rax, -64(%rbp)	# tmp97, visited
.L938:
	.loc 1 5643 0
	movq	-56(%rbp), %rax	# bb, tmp98
	movq	32(%rax), %rax	# bb_10(D)->pred, tmp99
	movq	%rax, -16(%rbp)	# tmp99, pred
	jmp	.L939	#
.L946:
.LBB58:
	.loc 1 5645 0
	movq	-16(%rbp), %rax	# pred, tmp100
	movq	16(%rax), %rax	# pred_2->src, tmp101
	movq	%rax, -8(%rbp)	# tmp101, pred_bb
	.loc 1 5647 0
	movq	-16(%rbp), %rax	# pred, tmp102
	movq	16(%rax), %rax	# pred_2->src, D.19616
	cmpq	$entry_exit_blocks, %rax	#, D.19616
	jne	.L940	#,
	.loc 1 5648 0
	jmp	.L941	#
.L940:
	.loc 1 5649 0
	movq	-8(%rbp), %rax	# pred_bb, tmp103
	movl	88(%rax), %eax	# pred_bb_12->index, D.19617
	movslq	%eax, %rdx	# D.19617, D.19618
	movq	-64(%rbp), %rax	# visited, tmp104
	addq	%rdx, %rax	# D.19618, D.19619
	movzbl	(%rax), %eax	# *_16, D.19620
	testb	%al, %al	# D.19620
	je	.L942	#,
	.loc 1 5650 0
	jmp	.L943	#
.L942:
	.loc 1 5653 0
	movq	comp(%rip), %rdx	# comp, comp.821
	movq	-8(%rbp), %rax	# pred_bb, tmp105
	movl	88(%rax), %eax	# pred_bb_12->index, D.19617
	cltq
	salq	$3, %rax	#, D.19615
	addq	%rdx, %rax	# comp.821, D.19621
	movq	(%rax), %rax	# *_22, D.19622
	movl	-44(%rbp), %edx	# expr_index, expr_index.822
	shrl	$6, %edx	#, D.19623
	movl	%edx, %edx	# D.19623, tmp106
	addq	$2, %rdx	#, tmp107
	movq	(%rax,%rdx,8), %rdx	# _23->elms, D.19615
	movl	-44(%rbp), %eax	# expr_index, tmp108
	andl	$63, %eax	#, D.19617
	movl	%eax, %ecx	# D.19617, tmp124
	shrq	%cl, %rdx	# tmp124, D.19615
	movq	%rdx, %rax	# D.19615, D.19615
	andl	$1, %eax	#, D.19615
	testq	%rax, %rax	# D.19615
	je	.L944	#,
	.loc 1 5654 0
	jmp	.L941	#
.L944:
	.loc 1 5655 0
	movq	transp(%rip), %rdx	# transp, transp.823
	movq	-8(%rbp), %rax	# pred_bb, tmp109
	movl	88(%rax), %eax	# pred_bb_12->index, D.19617
	cltq
	salq	$3, %rax	#, D.19615
	addq	%rdx, %rax	# transp.823, D.19621
	movq	(%rax), %rax	# *_35, D.19622
	movl	-44(%rbp), %edx	# expr_index, expr_index.824
	shrl	$6, %edx	#, D.19623
	movl	%edx, %edx	# D.19623, tmp110
	addq	$2, %rdx	#, tmp111
	movq	(%rax,%rdx,8), %rdx	# _36->elms, D.19615
	movl	-44(%rbp), %eax	# expr_index, tmp112
	andl	$63, %eax	#, D.19617
	movl	%eax, %ecx	# D.19617, tmp126
	shrq	%cl, %rdx	# tmp126, D.19615
	movq	%rdx, %rax	# D.19615, D.19615
	andl	$1, %eax	#, D.19615
	testq	%rax, %rax	# D.19615
	jne	.L945	#,
	.loc 1 5656 0
	jmp	.L941	#
.L945:
	.loc 1 5661 0
	movq	-8(%rbp), %rax	# pred_bb, tmp113
	movl	88(%rax), %eax	# pred_bb_12->index, D.19617
	movslq	%eax, %rdx	# D.19617, D.19618
	movq	-64(%rbp), %rax	# visited, tmp114
	addq	%rdx, %rax	# D.19618, D.19619
	movb	$1, (%rax)	#, *_45
	.loc 1 5662 0
	movq	-64(%rbp), %rcx	# visited, tmp115
	movq	-8(%rbp), %rdx	# pred_bb, tmp116
	movl	-44(%rbp), %esi	# expr_index, tmp117
	movq	-40(%rbp), %rax	# expr_bb, tmp118
	movq	%rax, %rdi	# tmp118,
	call	hoist_expr_reaches_here_p	#
	testl	%eax, %eax	# D.19617
	jne	.L943	#,
	.loc 1 5664 0
	jmp	.L941	#
.L943:
.LBE58:
	.loc 1 5643 0
	movq	-16(%rbp), %rax	# pred, tmp119
	movq	(%rax), %rax	# pred_2->pred_next, tmp120
	movq	%rax, -16(%rbp)	# tmp120, pred
.L939:
	.loc 1 5643 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, pred
	jne	.L946	#,
.L941:
	.loc 1 5667 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, visited_allocated_locally
	je	.L947	#,
	.loc 1 5668 0
	movq	-64(%rbp), %rax	# visited, tmp121
	movq	%rax, %rdi	# tmp121,
	call	free	#
.L947:
	.loc 1 5670 0
	cmpq	$0, -16(%rbp)	#, pred
	sete	%al	#, D.19624
	movzbl	%al, %eax	# D.19624, D.19617
	.loc 1 5671 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	hoist_expr_reaches_here_p, .-hoist_expr_reaches_here_p
	.type	hoist_code, @function
hoist_code:
.LFB109:
	.loc 1 5677 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	.loc 1 5683 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.825
	movl	%eax, %edx	# n_basic_blocks.825, n_basic_blocks.826
	movq	hoist_exprs(%rip), %rax	# hoist_exprs, hoist_exprs.827
	movl	%edx, %esi	# n_basic_blocks.826,
	movq	%rax, %rdi	# hoist_exprs.827,
	call	sbitmap_vector_zero	#
	.loc 1 5688 0
	movl	n_exprs(%rip), %eax	# n_exprs, n_exprs.828
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.19625,
	call	xcalloc	#
	movq	%rax, -32(%rbp)	# tmp223, index_map
	.loc 1 5689 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L950	#
.L953:
	.loc 1 5690 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.829
	movl	-64(%rbp), %edx	# i, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19626
	movq	(%rax), %rax	# *_28, tmp224
	movq	%rax, -48(%rbp)	# tmp224, expr
	jmp	.L951	#
.L952:
	.loc 1 5691 0 discriminator 2
	movq	-48(%rbp), %rax	# expr, tmp225
	movl	8(%rax), %eax	# expr_7->bitmap_index, D.19627
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19625
	movq	-32(%rbp), %rax	# index_map, tmp226
	addq	%rax, %rdx	# tmp226, D.19626
	movq	-48(%rbp), %rax	# expr, tmp227
	movq	%rax, (%rdx)	# tmp227, *_33
	.loc 1 5690 0 discriminator 2
	movq	-48(%rbp), %rax	# expr, tmp228
	movq	16(%rax), %rax	# expr_7->next_same_hash, tmp229
	movq	%rax, -48(%rbp)	# tmp229, expr
.L951:
	.loc 1 5690 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, expr
	jne	.L952	#,
	.loc 1 5689 0 is_stmt 1
	addl	$1, -64(%rbp)	#, i
.L950:
	.loc 1 5689 0 is_stmt 0 discriminator 1
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.830
	cmpl	%eax, -64(%rbp)	# expr_hash_table_size.830, i
	jb	.L953	#,
	.loc 1 5695 0 is_stmt 1
	movl	$0, -72(%rbp)	#, bb
	jmp	.L954	#
.L985:
.LBB59:
	.loc 1 5697 0
	movl	$0, -60(%rbp)	#, found
	.loc 1 5702 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L955	#
.L963:
.LBB60:
	.loc 1 5704 0
	movl	$0, -52(%rbp)	#, hoistable
	.loc 1 5706 0
	movq	hoist_vbeout(%rip), %rax	# hoist_vbeout, hoist_vbeout.831
	movl	-72(%rbp), %edx	# bb, tmp230
	movslq	%edx, %rdx	# tmp230, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19628
	movq	(%rax), %rax	# *_50, D.19629
	movl	-64(%rbp), %edx	# i, tmp231
	shrl	$6, %edx	#, D.19630
	movl	%edx, %edx	# D.19630, tmp232
	addq	$2, %rdx	#, tmp233
	movq	(%rax,%rdx,8), %rdx	# _51->elms, D.19625
	movl	-64(%rbp), %eax	# i, i.832
	andl	$63, %eax	#, D.19627
	movl	%eax, %ecx	# D.19627, tmp312
	shrq	%cl, %rdx	# tmp312, D.19625
	movq	%rdx, %rax	# D.19625, D.19625
	andl	$1, %eax	#, D.19625
	testq	%rax, %rax	# D.19625
	je	.L956	#,
	.loc 1 5706 0 is_stmt 0 discriminator 1
	movq	transpout(%rip), %rax	# transpout, transpout.833
	movl	-72(%rbp), %edx	# bb, tmp234
	movslq	%edx, %rdx	# tmp234, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19628
	movq	(%rax), %rax	# *_61, D.19629
	movl	-64(%rbp), %edx	# i, tmp235
	shrl	$6, %edx	#, D.19630
	movl	%edx, %edx	# D.19630, tmp236
	addq	$2, %rdx	#, tmp237
	movq	(%rax,%rdx,8), %rdx	# _62->elms, D.19625
	movl	-64(%rbp), %eax	# i, i.834
	andl	$63, %eax	#, D.19627
	movl	%eax, %ecx	# D.19627, tmp314
	shrq	%cl, %rdx	# tmp314, D.19625
	movq	%rdx, %rax	# D.19625, D.19625
	andl	$1, %eax	#, D.19625
	testq	%rax, %rax	# D.19625
	je	.L956	#,
	.loc 1 5711 0 is_stmt 1
	movl	$0, -68(%rbp)	#, dominated
	jmp	.L957	#
.L962:
	.loc 1 5714 0
	movl	-72(%rbp), %eax	# bb, tmp238
	cmpl	-68(%rbp), %eax	# dominated, tmp238
	je	.L958	#,
	.loc 1 5715 0
	movq	dominators(%rip), %rax	# dominators, dominators.835
	movl	-68(%rbp), %edx	# dominated, tmp239
	movslq	%edx, %rdx	# tmp239, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19628
	movq	(%rax), %rax	# *_74, D.19629
	movl	-72(%rbp), %edx	# bb, bb.836
	shrl	$6, %edx	#, D.19630
	movl	%edx, %edx	# D.19630, tmp240
	addq	$2, %rdx	#, tmp241
	movq	(%rax,%rdx,8), %rdx	# _75->elms, D.19625
	movl	-72(%rbp), %eax	# bb, tmp242
	andl	$63, %eax	#, D.19627
	movl	%eax, %ecx	# D.19627, tmp316
	shrq	%cl, %rdx	# tmp316, D.19625
	movq	%rdx, %rax	# D.19625, D.19625
	andl	$1, %eax	#, D.19625
	testq	%rax, %rax	# D.19625
	jne	.L959	#,
.L958:
	.loc 1 5716 0
	jmp	.L960	#
.L959:
	.loc 1 5721 0
	movq	antloc(%rip), %rax	# antloc, antloc.837
	movl	-68(%rbp), %edx	# dominated, tmp243
	movslq	%edx, %rdx	# tmp243, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19628
	movq	(%rax), %rax	# *_85, D.19629
	movl	-64(%rbp), %edx	# i, tmp244
	shrl	$6, %edx	#, D.19630
	movl	%edx, %edx	# D.19630, tmp245
	addq	$2, %rdx	#, tmp246
	movq	(%rax,%rdx,8), %rdx	# _86->elms, D.19625
	movl	-64(%rbp), %eax	# i, i.838
	andl	$63, %eax	#, D.19627
	movl	%eax, %ecx	# D.19627, tmp318
	shrq	%cl, %rdx	# tmp318, D.19625
	movq	%rdx, %rax	# D.19625, D.19625
	andl	$1, %eax	#, D.19625
	testq	%rax, %rax	# D.19625
	jne	.L961	#,
	.loc 1 5722 0
	jmp	.L960	#
.L961:
	.loc 1 5730 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.839
	.loc 1 5729 0
	movl	-68(%rbp), %edx	# dominated, tmp248
	movslq	%edx, %rdx	# tmp248, tmp247
	addq	$4, %rdx	#, tmp249
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.839_93->data.bb, D.19631
	movl	-64(%rbp), %esi	# i, i.840
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.841
	movl	-72(%rbp), %ecx	# bb, tmp251
	movslq	%ecx, %rcx	# tmp251, tmp250
	addq	$4, %rcx	#, tmp252
	movq	(%rax,%rcx,8), %rax	# basic_block_info.841_96->data.bb, D.19631
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19631,
	call	hoist_expr_reaches_here_p	#
	testl	%eax, %eax	# D.19627
	je	.L960	#,
	.loc 1 5731 0
	addl	$1, -52(%rbp)	#, hoistable
.L960:
	.loc 1 5711 0
	addl	$1, -68(%rbp)	#, dominated
.L957:
	.loc 1 5711 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.842
	cmpl	%eax, -68(%rbp)	# n_basic_blocks.842, dominated
	jl	.L962	#,
	.loc 1 5744 0 is_stmt 1
	cmpl	$1, -52(%rbp)	#, hoistable
	jle	.L956	#,
	.loc 1 5746 0
	movq	hoist_exprs(%rip), %rax	# hoist_exprs, hoist_exprs.843
	movl	-72(%rbp), %edx	# bb, tmp253
	movslq	%edx, %rdx	# tmp253, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19628
	movq	(%rax), %rdx	# *_104, D.19629
	movl	-64(%rbp), %eax	# i, tmp254
	shrl	$6, %eax	#, D.19630
	movq	hoist_exprs(%rip), %rcx	# hoist_exprs, hoist_exprs.844
	movl	-72(%rbp), %esi	# bb, tmp255
	movslq	%esi, %rsi	# tmp255, D.19625
	salq	$3, %rsi	#, D.19625
	addq	%rsi, %rcx	# D.19625, D.19628
	movq	(%rcx), %rcx	# *_110, D.19629
	movl	%eax, %esi	# D.19630, tmp256
	addq	$2, %rsi	#, tmp257
	movq	(%rcx,%rsi,8), %rsi	# _111->elms, D.19625
	movl	-64(%rbp), %ecx	# i, i.845
	andl	$63, %ecx	#, D.19627
	movl	$1, %edi	#, tmp258
	salq	%cl, %rdi	# D.19627, D.19625
	movq	%rdi, %rcx	# D.19625, D.19625
	orq	%rsi, %rcx	# D.19625, D.19625
	movl	%eax, %eax	# D.19630, tmp259
	addq	$2, %rax	#, tmp260
	movq	%rcx, (%rdx,%rax,8)	# D.19625, _105->elms
	.loc 1 5747 0
	movl	$1, -60(%rbp)	#, found
.L956:
.LBE60:
	.loc 1 5702 0
	addl	$1, -64(%rbp)	#, i
.L955:
	.loc 1 5702 0 is_stmt 0 discriminator 1
	movq	hoist_vbeout(%rip), %rax	# hoist_vbeout, hoist_vbeout.846
	movl	-72(%rbp), %edx	# bb, tmp261
	movslq	%edx, %rdx	# tmp261, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19628
	movq	(%rax), %rax	# *_43, D.19629
	movl	(%rax), %eax	# _44->n_bits, D.19630
	cmpl	-64(%rbp), %eax	# i, D.19630
	ja	.L963	#,
	.loc 1 5753 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, found
	jne	.L964	#,
	.loc 1 5754 0
	jmp	.L965	#
.L964:
	.loc 1 5757 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L966	#
.L984:
	.loc 1 5761 0
	movl	$0, -56(%rbp)	#, insn_inserted_p
	.loc 1 5764 0
	movq	hoist_vbeout(%rip), %rax	# hoist_vbeout, hoist_vbeout.847
	movl	-72(%rbp), %edx	# bb, tmp262
	movslq	%edx, %rdx	# tmp262, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19628
	movq	(%rax), %rax	# *_130, D.19629
	movl	-64(%rbp), %edx	# i, tmp263
	shrl	$6, %edx	#, D.19630
	movl	%edx, %edx	# D.19630, tmp264
	addq	$2, %rdx	#, tmp265
	movq	(%rax,%rdx,8), %rdx	# _131->elms, D.19625
	movl	-64(%rbp), %eax	# i, i.848
	andl	$63, %eax	#, D.19627
	movl	%eax, %ecx	# D.19627, tmp321
	shrq	%cl, %rdx	# tmp321, D.19625
	movq	%rdx, %rax	# D.19625, D.19625
	andl	$1, %eax	#, D.19625
	testq	%rax, %rax	# D.19625
	je	.L967	#,
	.loc 1 5769 0
	movl	$0, -68(%rbp)	#, dominated
	jmp	.L968	#
.L983:
	.loc 1 5772 0
	movl	-72(%rbp), %eax	# bb, tmp266
	cmpl	-68(%rbp), %eax	# dominated, tmp266
	je	.L969	#,
	.loc 1 5773 0
	movq	dominators(%rip), %rax	# dominators, dominators.849
	movl	-68(%rbp), %edx	# dominated, tmp267
	movslq	%edx, %rdx	# tmp267, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19628
	movq	(%rax), %rax	# *_143, D.19629
	movl	-72(%rbp), %edx	# bb, bb.850
	shrl	$6, %edx	#, D.19630
	movl	%edx, %edx	# D.19630, tmp268
	addq	$2, %rdx	#, tmp269
	movq	(%rax,%rdx,8), %rdx	# _144->elms, D.19625
	movl	-72(%rbp), %eax	# bb, tmp270
	andl	$63, %eax	#, D.19627
	movl	%eax, %ecx	# D.19627, tmp323
	shrq	%cl, %rdx	# tmp323, D.19625
	movq	%rdx, %rax	# D.19625, D.19625
	andl	$1, %eax	#, D.19625
	testq	%rax, %rax	# D.19625
	jne	.L970	#,
.L969:
	.loc 1 5774 0
	jmp	.L971	#
.L970:
	.loc 1 5779 0
	movq	antloc(%rip), %rax	# antloc, antloc.851
	movl	-68(%rbp), %edx	# dominated, tmp271
	movslq	%edx, %rdx	# tmp271, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19628
	movq	(%rax), %rax	# *_154, D.19629
	movl	-64(%rbp), %edx	# i, tmp272
	shrl	$6, %edx	#, D.19630
	movl	%edx, %edx	# D.19630, tmp273
	addq	$2, %rdx	#, tmp274
	movq	(%rax,%rdx,8), %rdx	# _155->elms, D.19625
	movl	-64(%rbp), %eax	# i, i.852
	andl	$63, %eax	#, D.19627
	movl	%eax, %ecx	# D.19627, tmp325
	shrq	%cl, %rdx	# tmp325, D.19625
	movq	%rdx, %rax	# D.19625, D.19625
	andl	$1, %eax	#, D.19625
	testq	%rax, %rax	# D.19625
	jne	.L972	#,
	.loc 1 5780 0
	jmp	.L971	#
.L972:
	.loc 1 5788 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.853
	.loc 1 5787 0
	movl	-68(%rbp), %edx	# dominated, tmp276
	movslq	%edx, %rdx	# tmp276, tmp275
	addq	$4, %rdx	#, tmp277
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.853_162->data.bb, D.19631
	movl	-64(%rbp), %esi	# i, i.854
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.855
	movl	-72(%rbp), %ecx	# bb, tmp279
	movslq	%ecx, %rcx	# tmp279, tmp278
	addq	$4, %rcx	#, tmp280
	movq	(%rax,%rcx,8), %rax	# basic_block_info.855_165->data.bb, D.19631
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19631,
	call	hoist_expr_reaches_here_p	#
	testl	%eax, %eax	# D.19627
	je	.L971	#,
.LBB61:
	.loc 1 5790 0
	movl	-64(%rbp), %eax	# i, D.19625
	leaq	0(,%rax,8), %rdx	#, D.19625
	movq	-32(%rbp), %rax	# index_map, tmp281
	addq	%rdx, %rax	# D.19625, D.19626
	movq	(%rax), %rax	# *_170, tmp282
	movq	%rax, -24(%rbp)	# tmp282, expr
	.loc 1 5791 0
	movq	-24(%rbp), %rax	# expr, tmp283
	movq	24(%rax), %rax	# expr_171->antic_occr, tmp284
	movq	%rax, -40(%rbp)	# tmp284, occr
	.loc 1 5796 0
	jmp	.L973	#
.L975:
	.loc 1 5797 0
	movq	-40(%rbp), %rax	# occr, tmp285
	movq	(%rax), %rax	# occr_14->next, tmp286
	movq	%rax, -40(%rbp)	# tmp286, occr
.L973:
	.loc 1 5796 0 discriminator 1
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.856
	movq	-40(%rbp), %rdx	# occr, tmp287
	movq	8(%rdx), %rdx	# occr_14->insn, D.19632
	movl	8(%rdx), %edx	# _174->fld[0].rtint, D.19627
	movslq	%edx, %rdx	# D.19627, tmp288
	addq	$4, %rdx	#, tmp289
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.856_173->data.bb, D.19631
	movl	88(%rax), %eax	# _176->index, D.19627
	cmpl	-68(%rbp), %eax	# dominated, D.19627
	je	.L974	#,
	.loc 1 5796 0 is_stmt 0 discriminator 2
	cmpq	$0, -40(%rbp)	#, occr
	jne	.L975	#,
.L974:
	.loc 1 5800 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, occr
	jne	.L976	#,
	.loc 1 5801 0
	movl	$__FUNCTION__.13252, %edx	#,
	movl	$5801, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L976:
	.loc 1 5803 0
	movq	-40(%rbp), %rax	# occr, tmp290
	movq	8(%rax), %rax	# occr_14->insn, tmp291
	movq	%rax, -16(%rbp)	# tmp291, insn
	.loc 1 5805 0
	movq	-16(%rbp), %rax	# insn, tmp292
	movzwl	(%rax), %eax	# insn_179->code, D.19633
	movzwl	%ax, %eax	# D.19633, D.19627
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19634
	cmpb	$105, %al	#, D.19634
	jne	.L977	#,
	.loc 1 5805 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp294
	movq	32(%rax), %rax	# insn_179->fld[3].rtx, D.19632
	movzwl	(%rax), %eax	# _183->code, D.19633
	cmpw	$47, %ax	#, D.19633
	jne	.L978	#,
	.loc 1 5805 0 discriminator 3
	movq	-16(%rbp), %rax	# insn, tmp295
	movq	32(%rax), %rax	# insn_179->fld[3].rtx, iftmp.858
	jmp	.L980	#
.L978:
	.loc 1 5805 0 discriminator 4
	movq	-16(%rbp), %rax	# insn, tmp296
	movq	32(%rax), %rdx	# insn_179->fld[3].rtx, D.19632
	movq	-16(%rbp), %rax	# insn, tmp297
	movq	%rdx, %rsi	# D.19632,
	movq	%rax, %rdi	# tmp297,
	call	single_set_2	#
	jmp	.L980	#
.L977:
	.loc 1 5805 0 discriminator 2
	movl	$0, %eax	#, iftmp.857
.L980:
	.loc 1 5805 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.857, set
	.loc 1 5806 0 is_stmt 1 discriminator 5
	cmpq	$0, -8(%rbp)	#, set
	jne	.L981	#,
	.loc 1 5807 0
	movl	$__FUNCTION__.13252, %edx	#,
	movl	$5807, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L981:
	.loc 1 5812 0
	movq	-24(%rbp), %rax	# expr, tmp298
	movq	40(%rax), %rax	# expr_171->reaching_reg, D.19632
	testq	%rax, %rax	# D.19632
	jne	.L982	#,
	.loc 1 5814 0
	movq	-8(%rbp), %rax	# set, tmp299
	movq	8(%rax), %rax	# set_190->fld[0].rtx, D.19632
	movzbl	2(%rax), %eax	# _192->mode, D.19635
	movzbl	%al, %eax	# D.19635, D.19636
	movl	%eax, %edi	# D.19636,
	call	gen_reg_rtx	#
	movq	-24(%rbp), %rdx	# expr, tmp300
	movq	%rax, 40(%rdx)	# D.19632, expr_171->reaching_reg
.L982:
	.loc 1 5824 0
	movq	-24(%rbp), %rax	# expr, tmp301
	movq	40(%rax), %rdx	# expr_171->reaching_reg, D.19632
	movq	-8(%rbp), %rax	# set, tmp302
	leaq	16(%rax), %rsi	#, D.19637
	movq	-16(%rbp), %rax	# insn, tmp303
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp303,
	call	validate_change	#
	testl	%eax, %eax	# D.19627
	je	.L971	#,
	.loc 1 5827 0
	movq	-40(%rbp), %rax	# occr, tmp304
	movb	$1, 16(%rax)	#, occr_14->deleted_p
	.loc 1 5828 0
	cmpl	$0, -56(%rbp)	#, insn_inserted_p
	jne	.L971	#,
	.loc 1 5831 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.859
	.loc 1 5830 0
	movl	-72(%rbp), %edx	# bb, tmp306
	movslq	%edx, %rdx	# tmp306, tmp305
	addq	$4, %rdx	#, tmp307
	movq	(%rax,%rdx,8), %rcx	# basic_block_info.859_199->data.bb, D.19631
	movl	-64(%rbp), %eax	# i, D.19625
	leaq	0(,%rax,8), %rdx	#, D.19625
	movq	-32(%rbp), %rax	# index_map, tmp308
	addq	%rdx, %rax	# D.19625, D.19626
	movq	(%rax), %rax	# *_203, D.19638
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.19631,
	movq	%rax, %rdi	# D.19638,
	call	insert_insn_end_bb	#
	.loc 1 5832 0
	movl	$1, -56(%rbp)	#, insn_inserted_p
.L971:
.LBE61:
	.loc 1 5769 0
	addl	$1, -68(%rbp)	#, dominated
.L968:
	.loc 1 5769 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.860
	cmpl	%eax, -68(%rbp)	# n_basic_blocks.860, dominated
	jl	.L983	#,
.L967:
	.loc 1 5757 0 is_stmt 1
	addl	$1, -64(%rbp)	#, i
.L966:
	.loc 1 5757 0 is_stmt 0 discriminator 1
	movq	hoist_exprs(%rip), %rax	# hoist_exprs, hoist_exprs.861
	movl	-72(%rbp), %edx	# bb, tmp309
	movslq	%edx, %rdx	# tmp309, D.19625
	salq	$3, %rdx	#, D.19625
	addq	%rdx, %rax	# D.19625, D.19628
	movq	(%rax), %rax	# *_123, D.19629
	movl	(%rax), %eax	# _124->n_bits, D.19630
	cmpl	-64(%rbp), %eax	# i, D.19630
	ja	.L984	#,
.L965:
.LBE59:
	.loc 1 5695 0 is_stmt 1
	addl	$1, -72(%rbp)	#, bb
.L954:
	.loc 1 5695 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.862
	cmpl	%eax, -72(%rbp)	# n_basic_blocks.862, bb
	jl	.L985	#,
	.loc 1 5841 0 is_stmt 1
	movq	-32(%rbp), %rax	# index_map, tmp310
	movq	%rax, %rdi	# tmp310,
	call	free	#
	.loc 1 5842 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	hoist_code, .-hoist_code
	.section	.rodata
.LC41:
	.string	"Code Hosting Expressions"
	.text
	.type	one_code_hoisting_pass, @function
one_code_hoisting_pass:
.LFB110:
	.loc 1 5850 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 5851 0
	movl	$0, -4(%rbp)	#, changed
	.loc 1 5853 0
	movl	max_cuid(%rip), %eax	# max_cuid, max_cuid.863
	movl	%eax, %edi	# max_cuid.864,
	call	alloc_expr_hash_table	#
	.loc 1 5854 0
	call	compute_expr_hash_table	#
	.loc 1 5855 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.865
	testq	%rax, %rax	# gcse_file.865
	je	.L987	#,
	.loc 1 5856 0
	movl	n_exprs(%rip), %esi	# n_exprs, n_exprs.866
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.867
	movl	%eax, %ecx	# expr_hash_table_size.867, expr_hash_table_size.868
	movq	expr_hash_table(%rip), %rdx	# expr_hash_table, expr_hash_table.869
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.870
	movl	%esi, %r8d	# n_exprs.866,
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# gcse_file.870,
	call	dump_hash_table	#
.L987:
	.loc 1 5859 0
	movl	n_exprs(%rip), %eax	# n_exprs, n_exprs.871
	testl	%eax, %eax	# n_exprs.871
	jle	.L988	#,
	.loc 1 5861 0
	movl	n_exprs(%rip), %edx	# n_exprs, n_exprs.872
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.873
	movl	%edx, %esi	# n_exprs.872,
	movl	%eax, %edi	# n_basic_blocks.873,
	call	alloc_code_hoist_mem	#
	.loc 1 5862 0
	call	compute_code_hoist_data	#
	.loc 1 5863 0
	call	hoist_code	#
	.loc 1 5864 0
	call	free_code_hoist_mem	#
.L988:
	.loc 1 5867 0
	call	free_expr_hash_table	#
	.loc 1 5869 0
	movl	-4(%rbp), %eax	# changed, D.19639
	.loc 1 5870 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	one_code_hoisting_pass, .-one_code_hoisting_pass
	.type	ldst_entry, @function
ldst_entry:
.LFB111:
	.loc 1 5903 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 5906 0
	call	first_ls_expr	#
	movq	%rax, -8(%rbp)	# tmp64, ptr
	jmp	.L991	#
.L994:
	.loc 1 5907 0
	movq	-8(%rbp), %rax	# ptr, tmp65
	movq	8(%rax), %rax	# ptr_1->pattern, D.19641
	movq	-24(%rbp), %rdx	# x, tmp66
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# D.19641,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19642
	je	.L992	#,
	.loc 1 5908 0
	jmp	.L993	#
.L992:
	.loc 1 5906 0
	movq	-8(%rbp), %rax	# ptr, tmp67
	movq	%rax, %rdi	# tmp67,
	call	next_ls_expr	#
	movq	%rax, -8(%rbp)	# tmp68, ptr
.L991:
	.loc 1 5906 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L994	#,
.L993:
	.loc 1 5910 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L995	#,
	.loc 1 5912 0
	movl	$64, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp69, ptr
	.loc 1 5914 0
	movq	pre_ldst_mems(%rip), %rdx	# pre_ldst_mems, pre_ldst_mems.874
	movq	-8(%rbp), %rax	# ptr, tmp70
	movq	%rdx, 32(%rax)	# pre_ldst_mems.874, ptr_8->next
	.loc 1 5915 0
	movq	-8(%rbp), %rax	# ptr, tmp71
	movq	$0, (%rax)	#, ptr_8->expr
	.loc 1 5916 0
	movq	-8(%rbp), %rax	# ptr, tmp72
	movq	-24(%rbp), %rdx	# x, tmp73
	movq	%rdx, 8(%rax)	# tmp73, ptr_8->pattern
	.loc 1 5917 0
	movq	-8(%rbp), %rax	# ptr, tmp74
	movq	$0, 16(%rax)	#, ptr_8->loads
	.loc 1 5918 0
	movq	-8(%rbp), %rax	# ptr, tmp75
	movq	$0, 24(%rax)	#, ptr_8->stores
	.loc 1 5919 0
	movq	-8(%rbp), %rax	# ptr, tmp76
	movq	$0, 56(%rax)	#, ptr_8->reaching_reg
	.loc 1 5920 0
	movq	-8(%rbp), %rax	# ptr, tmp77
	movl	$0, 40(%rax)	#, ptr_8->invalid
	.loc 1 5921 0
	movq	-8(%rbp), %rax	# ptr, tmp78
	movl	$0, 44(%rax)	#, ptr_8->index
	.loc 1 5922 0
	movq	-8(%rbp), %rax	# ptr, tmp79
	movl	$0, 48(%rax)	#, ptr_8->hash_index
	.loc 1 5923 0
	movq	-8(%rbp), %rax	# ptr, tmp80
	movq	%rax, pre_ldst_mems(%rip)	# tmp80, pre_ldst_mems
.L995:
	.loc 1 5926 0
	movq	-8(%rbp), %rax	# ptr, D.19643
	.loc 1 5927 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	ldst_entry, .-ldst_entry
	.type	free_ldst_entry, @function
free_ldst_entry:
.LFB112:
	.loc 1 5934 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ptr, ptr
	.loc 1 5935 0
	movq	-8(%rbp), %rax	# ptr, tmp61
	addq	$16, %rax	#, D.19644
	movq	%rax, %rdi	# D.19644,
	call	free_INSN_LIST_list	#
	.loc 1 5936 0
	movq	-8(%rbp), %rax	# ptr, tmp62
	addq	$24, %rax	#, D.19644
	movq	%rax, %rdi	# D.19644,
	call	free_INSN_LIST_list	#
	.loc 1 5938 0
	movq	-8(%rbp), %rax	# ptr, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free	#
	.loc 1 5939 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	free_ldst_entry, .-free_ldst_entry
	.type	free_ldst_mems, @function
free_ldst_mems:
.LFB113:
	.loc 1 5945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 5946 0
	jmp	.L999	#
.L1000:
.LBB62:
	.loc 1 5948 0
	movq	pre_ldst_mems(%rip), %rax	# pre_ldst_mems, tmp62
	movq	%rax, -8(%rbp)	# tmp62, tmp
	.loc 1 5950 0
	movq	pre_ldst_mems(%rip), %rax	# pre_ldst_mems, pre_ldst_mems.875
	movq	32(%rax), %rax	# pre_ldst_mems.875_3->next, pre_ldst_mems.876
	movq	%rax, pre_ldst_mems(%rip)	# pre_ldst_mems.876, pre_ldst_mems
	.loc 1 5952 0
	movq	-8(%rbp), %rax	# tmp, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free_ldst_entry	#
.L999:
.LBE62:
	.loc 1 5946 0 discriminator 1
	movq	pre_ldst_mems(%rip), %rax	# pre_ldst_mems, pre_ldst_mems.877
	testq	%rax, %rax	# pre_ldst_mems.877
	jne	.L1000	#,
	.loc 1 5955 0
	movq	$0, pre_ldst_mems(%rip)	#, pre_ldst_mems
	.loc 1 5956 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	free_ldst_mems, .-free_ldst_mems
	.section	.rodata
.LC42:
	.string	"LDST list: \n"
.LC43:
	.string	"  Pattern (%3d): "
.LC44:
	.string	"\n\t Loads : "
.LC45:
	.string	"(nil)"
.LC46:
	.string	"\n\tStores : "
.LC47:
	.string	"\n\n"
	.text
	.type	print_ldst_list, @function
print_ldst_list:
.LFB114:
	.loc 1 5963 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	.loc 1 5966 0
	movq	-24(%rbp), %rax	# file, tmp65
	movq	%rax, %rcx	# tmp65,
	movl	$12, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC42, %edi	#,
	call	fwrite	#
	.loc 1 5968 0
	call	first_ls_expr	#
	movq	%rax, -8(%rbp)	# tmp66, ptr
	jmp	.L1002	#
.L1007:
	.loc 1 5970 0
	movq	-8(%rbp), %rax	# ptr, tmp67
	movl	44(%rax), %edx	# ptr_1->index, D.19645
	movq	-24(%rbp), %rax	# file, tmp68
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp68,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 5972 0
	movq	-8(%rbp), %rax	# ptr, tmp69
	movq	8(%rax), %rdx	# ptr_1->pattern, D.19646
	movq	-24(%rbp), %rax	# file, tmp70
	movq	%rdx, %rsi	# D.19646,
	movq	%rax, %rdi	# tmp70,
	call	print_rtl	#
	.loc 1 5974 0
	movq	-24(%rbp), %rax	# file, tmp71
	movq	%rax, %rcx	# tmp71,
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC44, %edi	#,
	call	fwrite	#
	.loc 1 5976 0
	movq	-8(%rbp), %rax	# ptr, tmp72
	movq	16(%rax), %rax	# ptr_1->loads, D.19646
	testq	%rax, %rax	# D.19646
	je	.L1003	#,
	.loc 1 5977 0
	movq	-8(%rbp), %rax	# ptr, tmp73
	movq	16(%rax), %rdx	# ptr_1->loads, D.19646
	movq	-24(%rbp), %rax	# file, tmp74
	movq	%rdx, %rsi	# D.19646,
	movq	%rax, %rdi	# tmp74,
	call	print_rtl	#
	jmp	.L1004	#
.L1003:
	.loc 1 5979 0
	movq	-24(%rbp), %rax	# file, tmp75
	movq	%rax, %rcx	# tmp75,
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC45, %edi	#,
	call	fwrite	#
.L1004:
	.loc 1 5981 0
	movq	-24(%rbp), %rax	# file, tmp76
	movq	%rax, %rcx	# tmp76,
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC46, %edi	#,
	call	fwrite	#
	.loc 1 5983 0
	movq	-8(%rbp), %rax	# ptr, tmp77
	movq	24(%rax), %rax	# ptr_1->stores, D.19646
	testq	%rax, %rax	# D.19646
	je	.L1005	#,
	.loc 1 5984 0
	movq	-8(%rbp), %rax	# ptr, tmp78
	movq	24(%rax), %rdx	# ptr_1->stores, D.19646
	movq	-24(%rbp), %rax	# file, tmp79
	movq	%rdx, %rsi	# D.19646,
	movq	%rax, %rdi	# tmp79,
	call	print_rtl	#
	jmp	.L1006	#
.L1005:
	.loc 1 5986 0
	movq	-24(%rbp), %rax	# file, tmp80
	movq	%rax, %rcx	# tmp80,
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC45, %edi	#,
	call	fwrite	#
.L1006:
	.loc 1 5988 0
	movq	-24(%rbp), %rax	# file, tmp81
	movq	%rax, %rcx	# tmp81,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC47, %edi	#,
	call	fwrite	#
	.loc 1 5968 0
	movq	-8(%rbp), %rax	# ptr, tmp82
	movq	%rax, %rdi	# tmp82,
	call	next_ls_expr	#
	movq	%rax, -8(%rbp)	# tmp83, ptr
.L1002:
	.loc 1 5968 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L1007	#,
	.loc 1 5991 0 is_stmt 1
	movq	-24(%rbp), %rax	# file, tmp84
	movq	%rax, %rsi	# tmp84,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 5992 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	print_ldst_list, .-print_ldst_list
	.type	find_rtx_in_ldst, @function
find_rtx_in_ldst:
.LFB115:
	.loc 1 5999 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 6002 0
	movq	pre_ldst_mems(%rip), %rax	# pre_ldst_mems, tmp64
	movq	%rax, -8(%rbp)	# tmp64, ptr
	jmp	.L1009	#
.L1012:
	.loc 1 6003 0
	movq	-8(%rbp), %rax	# ptr, tmp65
	movq	8(%rax), %rax	# ptr_1->pattern, D.19654
	movq	-24(%rbp), %rdx	# x, tmp66
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# D.19654,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19655
	je	.L1010	#,
	.loc 1 6003 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp67
	movl	40(%rax), %eax	# ptr_1->invalid, D.19655
	testl	%eax, %eax	# D.19655
	jne	.L1010	#,
	.loc 1 6004 0 is_stmt 1
	movq	-8(%rbp), %rax	# ptr, D.19653
	jmp	.L1011	#
.L1010:
	.loc 1 6002 0
	movq	-8(%rbp), %rax	# ptr, tmp68
	movq	32(%rax), %rax	# ptr_1->next, tmp69
	movq	%rax, -8(%rbp)	# tmp69, ptr
.L1009:
	.loc 1 6002 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L1012	#,
	.loc 1 6006 0 is_stmt 1
	movl	$0, %eax	#, D.19653
.L1011:
	.loc 1 6007 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	find_rtx_in_ldst, .-find_rtx_in_ldst
	.type	enumerate_ldsts, @function
enumerate_ldsts:
.LFB116:
	.loc 1 6013 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 6015 0
	movl	$0, -12(%rbp)	#, n
	.loc 1 6017 0
	movq	pre_ldst_mems(%rip), %rax	# pre_ldst_mems, tmp62
	movq	%rax, -8(%rbp)	# tmp62, ptr
	jmp	.L1014	#
.L1015:
	.loc 1 6018 0 discriminator 2
	movl	-12(%rbp), %eax	# n, n.878
	leal	1(%rax), %edx	#, tmp63
	movl	%edx, -12(%rbp)	# tmp63, n
	movq	-8(%rbp), %rdx	# ptr, tmp64
	movl	%eax, 44(%rdx)	# n.878, ptr_1->index
	.loc 1 6017 0 discriminator 2
	movq	-8(%rbp), %rax	# ptr, tmp65
	movq	32(%rax), %rax	# ptr_1->next, tmp66
	movq	%rax, -8(%rbp)	# tmp66, ptr
.L1014:
	.loc 1 6017 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L1015	#,
	.loc 1 6020 0 is_stmt 1
	movl	-12(%rbp), %eax	# n, D.19656
	.loc 1 6021 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	enumerate_ldsts, .-enumerate_ldsts
	.type	first_ls_expr, @function
first_ls_expr:
.LFB117:
	.loc 1 6027 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 6028 0
	movq	pre_ldst_mems(%rip), %rax	# pre_ldst_mems, D.19657
	.loc 1 6029 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	first_ls_expr, .-first_ls_expr
	.type	next_ls_expr, @function
next_ls_expr:
.LFB118:
	.loc 1 6036 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# ptr, ptr
	.loc 1 6037 0
	movq	-8(%rbp), %rax	# ptr, tmp61
	movq	32(%rax), %rax	# ptr_1(D)->next, D.19658
	.loc 1 6038 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	next_ls_expr, .-next_ls_expr
	.type	simple_mem, @function
simple_mem:
.LFB119:
	.loc 1 6049 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 6050 0
	movq	-8(%rbp), %rax	# x, tmp67
	movzwl	(%rax), %eax	# x_2(D)->code, D.19660
	cmpw	$66, %ax	#, D.19660
	je	.L1022	#,
	.loc 1 6051 0
	movl	$0, %eax	#, D.19659
	jmp	.L1023	#
.L1022:
	.loc 1 6053 0
	movq	-8(%rbp), %rax	# x, tmp68
	movzbl	3(%rax), %eax	# *x_2(D), D.19661
	andl	$8, %eax	#, D.19661
	testb	%al, %al	# D.19661
	je	.L1024	#,
	.loc 1 6054 0
	movl	$0, %eax	#, D.19659
	jmp	.L1023	#
.L1024:
	.loc 1 6056 0
	movq	-8(%rbp), %rax	# x, tmp69
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.19661
	cmpb	$51, %al	#, D.19661
	jne	.L1025	#,
	.loc 1 6057 0
	movl	$0, %eax	#, D.19659
	jmp	.L1023	#
.L1025:
	.loc 1 6059 0
	movq	-8(%rbp), %rax	# x, tmp70
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.19662
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19662,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.19659
	jne	.L1026	#,
	.loc 1 6060 0
	movl	$1, %eax	#, D.19659
	jmp	.L1023	#
.L1026:
	.loc 1 6062 0
	movl	$0, %eax	#, D.19659
.L1023:
	.loc 1 6063 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	simple_mem, .-simple_mem
	.type	invalidate_any_buried_refs, @function
invalidate_any_buried_refs:
.LFB120:
	.loc 1 6076 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 6082 0
	movq	-40(%rbp), %rax	# x, tmp78
	movzwl	(%rax), %eax	# x_3(D)->code, D.19663
	cmpw	$66, %ax	#, D.19663
	jne	.L1028	#,
	.loc 1 6082 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp79
	movq	%rax, %rdi	# tmp79,
	call	simple_mem	#
	testl	%eax, %eax	# D.19664
	je	.L1028	#,
	.loc 1 6084 0 is_stmt 1
	movq	-40(%rbp), %rax	# x, tmp80
	movq	%rax, %rdi	# tmp80,
	call	ldst_entry	#
	movq	%rax, -16(%rbp)	# tmp81, ptr
	.loc 1 6085 0
	movq	-16(%rbp), %rax	# ptr, tmp82
	movl	$1, 40(%rax)	#, ptr_6->invalid
.L1028:
	.loc 1 6089 0
	movq	-40(%rbp), %rax	# x, tmp83
	movzwl	(%rax), %eax	# x_3(D)->code, D.19663
	movzwl	%ax, %eax	# D.19663, D.19664
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp85
	movq	%rax, -8(%rbp)	# tmp85, fmt
	.loc 1 6091 0
	movq	-40(%rbp), %rax	# x, tmp86
	movzwl	(%rax), %eax	# x_3(D)->code, D.19663
	movzwl	%ax, %eax	# D.19663, D.19664
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19665
	movzbl	%al, %eax	# D.19665, D.19664
	subl	$1, %eax	#, tmp88
	movl	%eax, -24(%rbp)	# tmp88, i
	jmp	.L1029	#
.L1034:
	.loc 1 6093 0
	movl	-24(%rbp), %eax	# i, tmp89
	movslq	%eax, %rdx	# tmp89, D.19666
	movq	-8(%rbp), %rax	# fmt, tmp90
	addq	%rdx, %rax	# D.19666, D.19667
	movzbl	(%rax), %eax	# *_16, D.19668
	cmpb	$101, %al	#, D.19668
	jne	.L1030	#,
	.loc 1 6094 0
	movq	-40(%rbp), %rax	# x, tmp91
	movl	-24(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, tmp92
	movq	8(%rax,%rdx,8), %rax	# x_3(D)->fld[i_1].rtx, D.19669
	movq	%rax, %rdi	# D.19669,
	call	invalidate_any_buried_refs	#
	jmp	.L1031	#
.L1030:
	.loc 1 6095 0
	movl	-24(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, D.19666
	movq	-8(%rbp), %rax	# fmt, tmp95
	addq	%rdx, %rax	# D.19666, D.19667
	movzbl	(%rax), %eax	# *_20, D.19668
	cmpb	$69, %al	#, D.19668
	jne	.L1031	#,
	.loc 1 6096 0
	movq	-40(%rbp), %rax	# x, tmp96
	movl	-24(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, tmp97
	movq	8(%rax,%rdx,8), %rax	# x_3(D)->fld[i_1].rtvec, D.19670
	movl	(%rax), %eax	# _22->num_elem, D.19664
	subl	$1, %eax	#, tmp99
	movl	%eax, -20(%rbp)	# tmp99, j
	jmp	.L1032	#
.L1033:
	.loc 1 6097 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp100
	movl	-24(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, tmp101
	movq	8(%rax,%rdx,8), %rax	# x_3(D)->fld[i_1].rtvec, D.19670
	movl	-20(%rbp), %edx	# j, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	movq	8(%rax,%rdx,8), %rax	# _25->elem, D.19669
	movq	%rax, %rdi	# D.19669,
	call	invalidate_any_buried_refs	#
	.loc 1 6096 0 discriminator 2
	subl	$1, -20(%rbp)	#, j
.L1032:
	.loc 1 6096 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, j
	jns	.L1033	#,
.L1031:
	.loc 1 6091 0 is_stmt 1
	subl	$1, -24(%rbp)	#, i
.L1029:
	.loc 1 6091 0 is_stmt 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, i
	jns	.L1034	#,
	.loc 1 6099 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	invalidate_any_buried_refs, .-invalidate_any_buried_refs
	.type	compute_ld_motion_mems, @function
compute_ld_motion_mems:
.LFB121:
	.loc 1 6109 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 6114 0
	movq	$0, pre_ldst_mems(%rip)	#, pre_ldst_mems
	.loc 1 6116 0
	movl	$0, -36(%rbp)	#, bb
	jmp	.L1036	#
.L1048:
	.loc 1 6118 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.879
	movl	-36(%rbp), %edx	# bb, tmp86
	movslq	%edx, %rdx	# tmp86, tmp85
	addq	$4, %rdx	#, tmp87
	movq	(%rax,%rdx,8), %rax	# basic_block_info.879_5->data.bb, D.19671
	movq	(%rax), %rax	# _6->head, tmp88
	movq	%rax, -32(%rbp)	# tmp88, insn
	jmp	.L1037	#
.L1047:
	.loc 1 6122 0
	movq	-32(%rbp), %rax	# insn, tmp89
	movzwl	(%rax), %eax	# insn_2->code, D.19673
	movzwl	%ax, %eax	# D.19673, D.19674
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19675
	cmpb	$105, %al	#, D.19675
	jne	.L1038	#,
	.loc 1 6124 0
	movq	-32(%rbp), %rax	# insn, tmp91
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.19672
	movzwl	(%rax), %eax	# _15->code, D.19673
	cmpw	$47, %ax	#, D.19673
	jne	.L1039	#,
.LBB63:
	.loc 1 6126 0
	movq	-32(%rbp), %rax	# insn, tmp92
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.19672
	movq	16(%rax), %rax	# _17->fld[1].rtx, tmp93
	movq	%rax, -24(%rbp)	# tmp93, src
	.loc 1 6127 0
	movq	-32(%rbp), %rax	# insn, tmp94
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.19672
	movq	8(%rax), %rax	# _19->fld[0].rtx, tmp95
	movq	%rax, -16(%rbp)	# tmp95, dest
	.loc 1 6130 0
	movq	-24(%rbp), %rax	# src, tmp96
	movzwl	(%rax), %eax	# src_18->code, D.19673
	cmpw	$66, %ax	#, D.19673
	jne	.L1040	#,
	.loc 1 6130 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# src, tmp97
	movq	%rax, %rdi	# tmp97,
	call	simple_mem	#
	testl	%eax, %eax	# D.19674
	je	.L1040	#,
	.loc 1 6132 0 is_stmt 1
	movq	-24(%rbp), %rax	# src, tmp98
	movq	%rax, %rdi	# tmp98,
	call	ldst_entry	#
	movq	%rax, -8(%rbp)	# tmp99, ptr
	.loc 1 6133 0
	movq	-16(%rbp), %rax	# dest, tmp100
	movzwl	(%rax), %eax	# dest_20->code, D.19673
	cmpw	$61, %ax	#, D.19673
	jne	.L1041	#,
	.loc 1 6134 0
	movq	-8(%rbp), %rax	# ptr, tmp101
	movq	16(%rax), %rdx	# ptr_23->loads, D.19672
	movq	-32(%rbp), %rax	# insn, tmp102
	movq	%rdx, %rsi	# D.19672,
	movq	%rax, %rdi	# tmp102,
	call	alloc_INSN_LIST	#
	movq	-8(%rbp), %rdx	# ptr, tmp103
	movq	%rax, 16(%rdx)	# D.19672, ptr_23->loads
	.loc 1 6133 0
	jmp	.L1043	#
.L1041:
	.loc 1 6136 0
	movq	-8(%rbp), %rax	# ptr, tmp104
	movl	$1, 40(%rax)	#, ptr_23->invalid
	.loc 1 6133 0
	jmp	.L1043	#
.L1040:
	.loc 1 6141 0
	movq	-24(%rbp), %rax	# src, tmp105
	movq	%rax, %rdi	# tmp105,
	call	invalidate_any_buried_refs	#
.L1043:
	.loc 1 6148 0
	movq	-16(%rbp), %rax	# dest, tmp106
	movzwl	(%rax), %eax	# dest_20->code, D.19673
	cmpw	$66, %ax	#, D.19673
	jne	.L1044	#,
	.loc 1 6148 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# dest, tmp107
	movq	%rax, %rdi	# tmp107,
	call	simple_mem	#
	testl	%eax, %eax	# D.19674
	je	.L1044	#,
	.loc 1 6150 0 is_stmt 1
	movq	-16(%rbp), %rax	# dest, tmp108
	movq	%rax, %rdi	# tmp108,
	call	ldst_entry	#
	movq	%rax, -8(%rbp)	# tmp109, ptr
	.loc 1 6152 0
	movq	-24(%rbp), %rax	# src, tmp110
	movzwl	(%rax), %eax	# src_18->code, D.19673
	cmpw	$66, %ax	#, D.19673
	je	.L1045	#,
	.loc 1 6153 0
	movq	-24(%rbp), %rax	# src, tmp111
	movzwl	(%rax), %eax	# src_18->code, D.19673
	cmpw	$41, %ax	#, D.19673
	je	.L1045	#,
	.loc 1 6154 0
	movq	-8(%rbp), %rax	# ptr, tmp112
	movq	24(%rax), %rdx	# ptr_29->stores, D.19672
	movq	-32(%rbp), %rax	# insn, tmp113
	movq	%rdx, %rsi	# D.19672,
	movq	%rax, %rdi	# tmp113,
	call	alloc_INSN_LIST	#
	movq	-8(%rbp), %rdx	# ptr, tmp114
	movq	%rax, 24(%rdx)	# D.19672, ptr_29->stores
	jmp	.L1044	#
.L1045:
	.loc 1 6156 0
	movq	-8(%rbp), %rax	# ptr, tmp115
	movl	$1, 40(%rax)	#, ptr_29->invalid
.LBE63:
	jmp	.L1038	#
.L1044:
	jmp	.L1038	#
.L1039:
	.loc 1 6160 0
	movq	-32(%rbp), %rax	# insn, tmp116
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.19672
	movq	%rax, %rdi	# D.19672,
	call	invalidate_any_buried_refs	#
.L1038:
	.loc 1 6120 0
	movq	-32(%rbp), %rax	# insn, tmp117
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp118
	movq	%rax, -32(%rbp)	# tmp118, insn
.L1037:
	.loc 1 6118 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	je	.L1046	#,
	.loc 1 6119 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.880
	movl	-36(%rbp), %edx	# bb, tmp120
	movslq	%edx, %rdx	# tmp120, tmp119
	addq	$4, %rdx	#, tmp121
	movq	(%rax,%rdx,8), %rax	# basic_block_info.880_8->data.bb, D.19671
	movq	8(%rax), %rax	# _9->end, D.19672
	movq	24(%rax), %rax	# _10->fld[2].rtx, D.19672
	cmpq	-32(%rbp), %rax	# insn, D.19672
	jne	.L1047	#,
.L1046:
	.loc 1 6116 0
	addl	$1, -36(%rbp)	#, bb
.L1036:
	.loc 1 6116 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.881
	cmpl	%eax, -36(%rbp)	# n_basic_blocks.881, bb
	jl	.L1048	#,
	.loc 1 6164 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	compute_ld_motion_mems, .-compute_ld_motion_mems
	.type	trim_ld_motion_mems, @function
trim_ld_motion_mems:
.LFB122:
	.loc 1 6171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 6172 0
	movq	$0, -24(%rbp)	#, last
	.loc 1 6173 0
	call	first_ls_expr	#
	movq	%rax, -16(%rbp)	# tmp73, ptr
	.loc 1 6175 0
	jmp	.L1050	#
.L1061:
.LBB64:
	.loc 1 6177 0
	movq	-16(%rbp), %rax	# ptr, tmp74
	movl	40(%rax), %eax	# ptr_3->invalid, tmp75
	movl	%eax, -32(%rbp)	# tmp75, del
	.loc 1 6178 0
	movq	$0, -8(%rbp)	#, expr
	.loc 1 6181 0
	cmpl	$0, -32(%rbp)	#, del
	jne	.L1051	#,
.LBB65:
	.loc 1 6185 0
	movl	$1, -32(%rbp)	#, del
	.loc 1 6187 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L1052	#
.L1057:
	.loc 1 6189 0
	movq	expr_hash_table(%rip), %rax	# expr_hash_table, expr_hash_table.882
	movl	-28(%rbp), %edx	# i, D.19676
	salq	$3, %rdx	#, D.19676
	addq	%rdx, %rax	# D.19676, D.19677
	movq	(%rax), %rax	# *_21, tmp76
	movq	%rax, -8(%rbp)	# tmp76, expr
	jmp	.L1053	#
.L1056:
	.loc 1 6192 0
	movq	-16(%rbp), %rax	# ptr, tmp77
	movq	8(%rax), %rdx	# ptr_3->pattern, D.19678
	movq	-8(%rbp), %rax	# expr, tmp78
	movq	(%rax), %rax	# expr_7->expr, D.19678
	movq	%rdx, %rsi	# D.19678,
	movq	%rax, %rdi	# D.19678,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19679
	je	.L1054	#,
	.loc 1 6194 0
	movl	$0, -32(%rbp)	#, del
	.loc 1 6195 0
	jmp	.L1055	#
.L1054:
	.loc 1 6191 0
	movq	-8(%rbp), %rax	# expr, tmp79
	movq	16(%rax), %rax	# expr_7->next_same_hash, tmp80
	movq	%rax, -8(%rbp)	# tmp80, expr
.L1053:
	.loc 1 6189 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, expr
	jne	.L1056	#,
.L1055:
	.loc 1 6187 0
	addl	$1, -28(%rbp)	#, i
.L1052:
	.loc 1 6187 0 is_stmt 0 discriminator 1
	movl	expr_hash_table_size(%rip), %eax	# expr_hash_table_size, expr_hash_table_size.883
	cmpl	%eax, -28(%rbp)	# expr_hash_table_size.883, i
	jae	.L1051	#,
	.loc 1 6187 0 discriminator 2
	cmpl	$0, -32(%rbp)	#, del
	jne	.L1057	#,
.L1051:
.LBE65:
	.loc 1 6200 0 is_stmt 1
	cmpl	$0, -32(%rbp)	#, del
	je	.L1058	#,
	.loc 1 6202 0
	cmpq	$0, -24(%rbp)	#, last
	je	.L1059	#,
	.loc 1 6204 0
	movq	-16(%rbp), %rax	# ptr, tmp81
	movq	32(%rax), %rdx	# ptr_3->next, D.19680
	movq	-24(%rbp), %rax	# last, tmp82
	movq	%rdx, 32(%rax)	# D.19680, last_1->next
	.loc 1 6205 0
	movq	-16(%rbp), %rax	# ptr, tmp83
	movq	%rax, %rdi	# tmp83,
	call	free_ldst_entry	#
	.loc 1 6206 0
	movq	-24(%rbp), %rax	# last, tmp84
	movq	32(%rax), %rax	# last_1->next, tmp85
	movq	%rax, -16(%rbp)	# tmp85, ptr
	jmp	.L1050	#
.L1059:
	.loc 1 6210 0
	movq	pre_ldst_mems(%rip), %rax	# pre_ldst_mems, pre_ldst_mems.884
	movq	32(%rax), %rax	# pre_ldst_mems.884_31->next, pre_ldst_mems.885
	movq	%rax, pre_ldst_mems(%rip)	# pre_ldst_mems.885, pre_ldst_mems
	.loc 1 6211 0
	movq	-16(%rbp), %rax	# ptr, tmp86
	movq	%rax, %rdi	# tmp86,
	call	free_ldst_entry	#
	.loc 1 6212 0
	movq	pre_ldst_mems(%rip), %rax	# pre_ldst_mems, tmp87
	movq	%rax, -16(%rbp)	# tmp87, ptr
	jmp	.L1050	#
.L1058:
	.loc 1 6218 0
	movq	-16(%rbp), %rax	# ptr, tmp88
	movq	%rax, -24(%rbp)	# tmp88, last
	.loc 1 6219 0
	movq	-16(%rbp), %rax	# ptr, tmp89
	movq	-8(%rbp), %rdx	# expr, tmp90
	movq	%rdx, (%rax)	# tmp90, ptr_3->expr
	.loc 1 6220 0
	movq	-16(%rbp), %rax	# ptr, tmp91
	movq	32(%rax), %rax	# ptr_3->next, tmp92
	movq	%rax, -16(%rbp)	# tmp92, ptr
.L1050:
.LBE64:
	.loc 1 6175 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, ptr
	jne	.L1061	#,
	.loc 1 6225 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.886
	testq	%rax, %rax	# gcse_file.886
	je	.L1049	#,
	.loc 1 6225 0 is_stmt 0 discriminator 1
	movq	pre_ldst_mems(%rip), %rax	# pre_ldst_mems, pre_ldst_mems.887
	testq	%rax, %rax	# pre_ldst_mems.887
	je	.L1049	#,
	.loc 1 6226 0 is_stmt 1
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.888
	movq	%rax, %rdi	# gcse_file.888,
	call	print_ldst_list	#
.L1049:
	.loc 1 6227 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	trim_ld_motion_mems, .-trim_ld_motion_mems
	.section	.rodata
	.align 8
.LC48:
	.string	"PRE:  store updated with reaching reg "
.LC49:
	.string	":\n\t"
	.text
	.type	update_ld_motion_stores, @function
update_ld_motion_stores:
.LFB123:
	.loc 1 6239 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# expr, expr
	.loc 1 6242 0
	movq	-72(%rbp), %rax	# expr, tmp73
	movq	(%rax), %rax	# expr_2(D)->expr, D.19681
	movq	%rax, %rdi	# D.19681,
	call	find_rtx_in_ldst	#
	movq	%rax, -56(%rbp)	# tmp74, mem_ptr
	cmpq	$0, -56(%rbp)	#, mem_ptr
	je	.L1063	#,
.LBB66:
	.loc 1 6252 0
	movq	-56(%rbp), %rax	# mem_ptr, tmp75
	movq	24(%rax), %rax	# mem_ptr_4->stores, tmp76
	movq	%rax, -64(%rbp)	# tmp76, list
	.loc 1 6254 0
	jmp	.L1065	#
.L1069:
.LBB67:
	.loc 1 6256 0
	movq	-64(%rbp), %rax	# list, tmp77
	movq	8(%rax), %rax	# list_1->fld[0].rtx, tmp78
	movq	%rax, -48(%rbp)	# tmp78, insn
	.loc 1 6257 0
	movq	-48(%rbp), %rax	# insn, tmp79
	movq	32(%rax), %rax	# insn_6->fld[3].rtx, tmp80
	movq	%rax, -40(%rbp)	# tmp80, pat
	.loc 1 6258 0
	movq	-40(%rbp), %rax	# pat, tmp81
	movq	16(%rax), %rax	# pat_7->fld[1].rtx, tmp82
	movq	%rax, -32(%rbp)	# tmp82, src
	.loc 1 6259 0
	movq	-72(%rbp), %rax	# expr, tmp83
	movq	40(%rax), %rax	# expr_2(D)->reaching_reg, tmp84
	movq	%rax, -24(%rbp)	# tmp84, reg
	.loc 1 6263 0
	movq	-72(%rbp), %rax	# expr, tmp85
	movq	40(%rax), %rax	# expr_2(D)->reaching_reg, D.19681
	cmpq	-32(%rbp), %rax	# src, D.19681
	jne	.L1066	#,
	.loc 1 6264 0
	jmp	.L1067	#
.L1066:
	.loc 1 6266 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.889
	testq	%rax, %rax	# gcse_file.889
	je	.L1068	#,
	.loc 1 6268 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.890
	movq	%rax, %rcx	# gcse_file.890,
	movl	$38, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC48, %edi	#,
	call	fwrite	#
	.loc 1 6269 0
	movq	-72(%rbp), %rax	# expr, tmp86
	movq	40(%rax), %rdx	# expr_2(D)->reaching_reg, D.19681
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.891
	movq	%rdx, %rsi	# D.19681,
	movq	%rax, %rdi	# gcse_file.891,
	call	print_rtl	#
	.loc 1 6270 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.892
	movq	%rax, %rcx	# gcse_file.892,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC49, %edi	#,
	call	fwrite	#
	.loc 1 6271 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.893
	movq	-48(%rbp), %rcx	# insn, tmp87
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp87,
	movq	%rax, %rdi	# gcse_file.893,
	call	print_inline_rtx	#
	.loc 1 6272 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.894
	movq	%rax, %rsi	# gcse_file.894,
	movl	$10, %edi	#,
	call	fputc	#
.L1068:
	.loc 1 6275 0
	movq	-40(%rbp), %rax	# pat, tmp88
	movq	16(%rax), %rdx	# pat_7->fld[1].rtx, D.19681
	movq	-24(%rbp), %rax	# reg, tmp89
	movq	%rdx, %rsi	# D.19681,
	movq	%rax, %rdi	# tmp89,
	call	gen_move_insn	#
	movq	%rax, -16(%rbp)	# tmp90, copy
	.loc 1 6276 0
	movq	-48(%rbp), %rdx	# insn, tmp91
	movq	-16(%rbp), %rax	# copy, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	emit_insn_before	#
	movq	%rax, -8(%rbp)	# tmp93, new
	.loc 1 6277 0
	movq	-24(%rbp), %rax	# reg, tmp94
	movl	8(%rax), %eax	# reg_9->fld[0].rtuint, D.19682
	movq	-8(%rbp), %rdx	# new, tmp95
	movq	%rdx, %rsi	# tmp95,
	movl	%eax, %edi	# D.19683,
	call	record_one_set	#
	.loc 1 6278 0
	movq	-40(%rbp), %rax	# pat, tmp96
	movq	-24(%rbp), %rdx	# reg, tmp97
	movq	%rdx, 16(%rax)	# tmp97, pat_7->fld[1].rtx
	.loc 1 6281 0
	movq	-48(%rbp), %rax	# insn, tmp98
	movl	$-1, 40(%rax)	#, insn_6->fld[4].rtint
	.loc 1 6282 0
	movl	gcse_create_count(%rip), %eax	# gcse_create_count, gcse_create_count.895
	addl	$1, %eax	#, gcse_create_count.896
	movl	%eax, gcse_create_count(%rip)	# gcse_create_count.896, gcse_create_count
.L1067:
.LBE67:
	.loc 1 6254 0
	movq	-64(%rbp), %rax	# list, tmp99
	movq	16(%rax), %rax	# list_1->fld[1].rtx, tmp100
	movq	%rax, -64(%rbp)	# tmp100, list
.L1065:
	.loc 1 6254 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, list
	jne	.L1069	#,
.L1063:
.LBE66:
	.loc 1 6285 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	update_ld_motion_stores, .-update_ld_motion_stores
	.local	regvec
	.comm	regvec,8,8
	.local	st_antloc
	.comm	st_antloc,8,8
	.local	num_stores
	.comm	num_stores,4,4
	.type	reg_set_info, @function
reg_set_info:
.LFB124:
	.loc 1 6305 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# dest, dest
	movq	%rsi, -16(%rbp)	# setter, setter
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 6306 0
	movq	-8(%rbp), %rax	# dest, tmp73
	movzwl	(%rax), %eax	# dest_2(D)->code, D.19686
	cmpw	$63, %ax	#, D.19686
	jne	.L1071	#,
	.loc 1 6307 0
	movq	-8(%rbp), %rax	# dest, tmp74
	movq	8(%rax), %rax	# dest_2(D)->fld[0].rtx, tmp75
	movq	%rax, -8(%rbp)	# tmp75, dest
.L1071:
	.loc 1 6309 0
	movq	-8(%rbp), %rax	# dest, tmp76
	movzwl	(%rax), %eax	# dest_1->code, D.19686
	cmpw	$61, %ax	#, D.19686
	jne	.L1070	#,
	.loc 1 6310 0
	movq	regvec(%rip), %rax	# regvec, regvec.897
	movq	(%rax), %rdx	# *regvec.897_6, D.19687
	movq	-8(%rbp), %rax	# dest, tmp77
	movl	8(%rax), %eax	# dest_1->fld[0].rtuint, D.19688
	shrl	$6, %eax	#, D.19688
	movq	regvec(%rip), %rcx	# regvec, regvec.898
	movq	(%rcx), %rcx	# *regvec.898_10, D.19687
	movl	%eax, %esi	# D.19688, tmp78
	addq	$2, %rsi	#, tmp79
	movq	(%rcx,%rsi,8), %rsi	# _11->elms, D.19689
	movq	-8(%rbp), %rcx	# dest, tmp80
	movl	8(%rcx), %ecx	# dest_1->fld[0].rtuint, D.19688
	andl	$63, %ecx	#, D.19690
	movl	$1, %edi	#, tmp81
	salq	%cl, %rdi	# D.19690, D.19689
	movq	%rdi, %rcx	# D.19689, D.19689
	orq	%rsi, %rcx	# D.19689, D.19689
	movl	%eax, %eax	# D.19688, tmp82
	addq	$2, %rax	#, tmp83
	movq	%rcx, (%rdx,%rax,8)	# D.19689, _7->elms
.L1070:
	.loc 1 6311 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	reg_set_info, .-reg_set_info
	.type	store_ops_ok, @function
store_ops_ok:
.LFB125:
	.loc 1 6320 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# bb, bb
.L1074:
	.loc 1 6328 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L1075	#,
	.loc 1 6329 0
	movl	$1, %eax	#, D.19691
	jmp	.L1076	#
.L1075:
	.loc 1 6331 0
	movq	-40(%rbp), %rax	# x, tmp92
	movzwl	(%rax), %eax	# x_1->code, D.19692
	movzwl	%ax, %eax	# D.19692, tmp93
	movl	%eax, -20(%rbp)	# tmp93, code
	.loc 1 6332 0
	movl	-20(%rbp), %eax	# code, tmp95
	subl	$44, %eax	#, tmp94
	cmpl	$55, %eax	#, tmp94
	ja	.L1093	#,
	movl	%eax, %eax	# tmp94, tmp96
	movq	.L1079(,%rax,8), %rax	#, tmp97
	jmp	*%rax	# tmp97
	.section	.rodata
	.align 8
	.align 4
.L1079:
	.quad	.L1078
	.quad	.L1078
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1078
	.quad	.L1078
	.quad	.L1078
	.quad	.L1093
	.quad	.L1078
	.quad	.L1078
	.quad	.L1093
	.quad	.L1080
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1081
	.quad	.L1078
	.quad	.L1078
	.quad	.L1078
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1093
	.quad	.L1082
	.quad	.L1082
	.quad	.L1082
	.quad	.L1082
	.text
.L1080:
	.loc 1 6337 0
	movq	reg_set_in_block(%rip), %rdx	# reg_set_in_block, reg_set_in_block.899
	movq	-48(%rbp), %rax	# bb, tmp98
	movl	88(%rax), %eax	# bb_10(D)->index, D.19691
	cltq
	salq	$3, %rax	#, D.19693
	addq	%rdx, %rax	# reg_set_in_block.899, D.19694
	movq	(%rax), %rax	# *_14, D.19695
	movq	-40(%rbp), %rdx	# x, tmp99
	movl	8(%rdx), %edx	# x_1->fld[0].rtuint, D.19696
	shrl	$6, %edx	#, D.19696
	movl	%edx, %edx	# D.19696, tmp100
	addq	$2, %rdx	#, tmp101
	movq	(%rax,%rdx,8), %rdx	# _15->elms, D.19693
	movq	-40(%rbp), %rax	# x, tmp102
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, D.19696
	andl	$63, %eax	#, D.19691
	movl	%eax, %ecx	# D.19691, tmp131
	shrq	%cl, %rdx	# tmp131, D.19693
	movq	%rdx, %rax	# D.19693, D.19693
	andl	$1, %eax	#, D.19691
	jmp	.L1076	#
.L1081:
	.loc 1 6340 0
	movq	-40(%rbp), %rax	# x, tmp103
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp104
	movq	%rax, -40(%rbp)	# tmp104, x
	.loc 1 6341 0
	jmp	.L1074	#
.L1082:
	.loc 1 6347 0
	movl	$0, %eax	#, D.19691
	jmp	.L1076	#
.L1078:
	.loc 1 6359 0
	movl	$1, %eax	#, D.19691
	jmp	.L1076	#
.L1093:
	.loc 1 6362 0
	nop
	.loc 1 6365 0
	movl	-20(%rbp), %eax	# code, code.900
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19697
	movzbl	%al, %eax	# D.19697, D.19691
	subl	$1, %eax	#, tmp106
	movl	%eax, -28(%rbp)	# tmp106, i
	.loc 1 6366 0
	movl	-20(%rbp), %eax	# code, code.901
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp108
	movq	%rax, -16(%rbp)	# tmp108, fmt
	.loc 1 6368 0
	jmp	.L1083	#
.L1091:
	.loc 1 6370 0
	movl	-28(%rbp), %eax	# i, tmp109
	movslq	%eax, %rdx	# tmp109, D.19698
	movq	-16(%rbp), %rax	# fmt, tmp110
	addq	%rdx, %rax	# D.19698, D.19699
	movzbl	(%rax), %eax	# *_35, D.19700
	cmpb	$101, %al	#, D.19700
	jne	.L1084	#,
.LBB68:
	.loc 1 6372 0
	movq	-40(%rbp), %rax	# x, tmp111
	movl	-28(%rbp), %edx	# i, tmp113
	movslq	%edx, %rdx	# tmp113, tmp112
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtx, tmp114
	movq	%rax, -8(%rbp)	# tmp114, tem
	.loc 1 6377 0
	cmpl	$0, -28(%rbp)	#, i
	jne	.L1085	#,
	.loc 1 6379 0
	movq	-8(%rbp), %rax	# tem, tmp115
	movq	%rax, -40(%rbp)	# tmp115, x
	.loc 1 6380 0
	jmp	.L1074	#
.L1085:
	.loc 1 6383 0
	movq	-48(%rbp), %rdx	# bb, tmp116
	movq	-8(%rbp), %rax	# tem, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	store_ops_ok	#
	testl	%eax, %eax	# D.19691
	jne	.L1086	#,
	.loc 1 6384 0
	movl	$0, %eax	#, D.19691
	jmp	.L1076	#
.L1086:
.LBE68:
	jmp	.L1087	#
.L1084:
	.loc 1 6386 0
	movl	-28(%rbp), %eax	# i, tmp118
	movslq	%eax, %rdx	# tmp118, D.19698
	movq	-16(%rbp), %rax	# fmt, tmp119
	addq	%rdx, %rax	# D.19698, D.19699
	movzbl	(%rax), %eax	# *_42, D.19700
	cmpb	$69, %al	#, D.19700
	jne	.L1087	#,
.LBB69:
	.loc 1 6390 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L1088	#
.L1090:
	.loc 1 6392 0
	movq	-40(%rbp), %rax	# x, tmp120
	movl	-28(%rbp), %edx	# i, tmp122
	movslq	%edx, %rdx	# tmp122, tmp121
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.19701
	movl	-24(%rbp), %edx	# j, tmp124
	movslq	%edx, %rdx	# tmp124, tmp123
	movq	8(%rax,%rdx,8), %rax	# _47->elem, D.19702
	movq	-48(%rbp), %rdx	# bb, tmp125
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# D.19702,
	call	store_ops_ok	#
	testl	%eax, %eax	# D.19691
	jne	.L1089	#,
	.loc 1 6393 0
	movl	$0, %eax	#, D.19691
	jmp	.L1076	#
.L1089:
	.loc 1 6390 0
	addl	$1, -24(%rbp)	#, j
.L1088:
	.loc 1 6390 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp126
	movl	-28(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, tmp127
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.19701
	movl	(%rax), %eax	# _45->num_elem, D.19691
	cmpl	-24(%rbp), %eax	# j, D.19691
	jg	.L1090	#,
.L1087:
.LBE69:
	.loc 1 6368 0 is_stmt 1
	subl	$1, -28(%rbp)	#, i
.L1083:
	.loc 1 6368 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, i
	jns	.L1091	#,
	.loc 1 6398 0 is_stmt 1
	movl	$1, %eax	#, D.19691
.L1076:
	.loc 1 6399 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	store_ops_ok, .-store_ops_ok
	.type	find_moveable_store, @function
find_moveable_store:
.LFB126:
	.loc 1 6406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 6408 0
	movq	-24(%rbp), %rax	# insn, tmp72
	movq	32(%rax), %rax	# insn_1(D)->fld[3].rtx, tmp73
	movq	%rax, -16(%rbp)	# tmp73, dest
	.loc 1 6410 0
	movq	-16(%rbp), %rax	# dest, tmp74
	movzwl	(%rax), %eax	# dest_2->code, D.19703
	cmpw	$47, %ax	#, D.19703
	jne	.L1095	#,
	.loc 1 6411 0
	movq	-16(%rbp), %rax	# dest, tmp75
	movq	16(%rax), %rax	# dest_2->fld[1].rtx, D.19704
	movzwl	(%rax), %eax	# _4->code, D.19703
	cmpw	$41, %ax	#, D.19703
	jne	.L1096	#,
.L1095:
	.loc 1 6412 0
	jmp	.L1094	#
.L1096:
	.loc 1 6414 0
	movq	-16(%rbp), %rax	# dest, tmp76
	movq	8(%rax), %rax	# dest_2->fld[0].rtx, tmp77
	movq	%rax, -16(%rbp)	# tmp77, dest
	.loc 1 6416 0
	movq	-16(%rbp), %rax	# dest, tmp78
	movzwl	(%rax), %eax	# dest_6->code, D.19703
	cmpw	$66, %ax	#, D.19703
	jne	.L1098	#,
	.loc 1 6416 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# dest, tmp79
	movzbl	3(%rax), %eax	# *dest_6, D.19705
	andl	$8, %eax	#, D.19705
	testb	%al, %al	# D.19705
	jne	.L1098	#,
	.loc 1 6417 0 is_stmt 1
	movq	-16(%rbp), %rax	# dest, tmp80
	movzbl	2(%rax), %eax	# dest_6->mode, D.19705
	cmpb	$51, %al	#, D.19705
	jne	.L1099	#,
.L1098:
	.loc 1 6418 0
	jmp	.L1094	#
.L1099:
	.loc 1 6420 0
	movq	-16(%rbp), %rax	# dest, tmp81
	movq	8(%rax), %rax	# dest_6->fld[0].rtx, D.19704
	movzwl	(%rax), %eax	# _11->code, D.19703
	cmpw	$68, %ax	#, D.19703
	je	.L1100	#,
	.loc 1 6421 0
	jmp	.L1094	#
.L1100:
	.loc 1 6423 0
	movq	-16(%rbp), %rax	# dest, tmp82
	movq	8(%rax), %rax	# dest_6->fld[0].rtx, D.19704
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19704,
	call	rtx_varies_p	#
	testl	%eax, %eax	# D.19706
	je	.L1101	#,
	.loc 1 6424 0
	jmp	.L1094	#
.L1101:
	.loc 1 6426 0
	movq	-16(%rbp), %rax	# dest, tmp83
	movq	%rax, %rdi	# tmp83,
	call	ldst_entry	#
	movq	%rax, -8(%rbp)	# tmp84, ptr
	.loc 1 6427 0
	movq	-8(%rbp), %rax	# ptr, tmp85
	movq	24(%rax), %rdx	# ptr_15->stores, D.19704
	movq	-24(%rbp), %rax	# insn, tmp86
	movq	%rdx, %rsi	# D.19704,
	movq	%rax, %rdi	# tmp86,
	call	alloc_INSN_LIST	#
	movq	-8(%rbp), %rdx	# ptr, tmp87
	movq	%rax, 24(%rdx)	# D.19704, ptr_15->stores
.L1094:
	.loc 1 6428 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	find_moveable_store, .-find_moveable_store
	.section	.rodata
.LC50:
	.string	"Store Motion Expressions.\n"
	.text
	.type	compute_store_table, @function
compute_store_table:
.LFB127:
	.loc 1 6435 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 6440 0
	call	max_reg_num	#
	movl	%eax, max_gcse_regno(%rip)	# max_gcse_regno.902, max_gcse_regno
	.loc 1 6442 0
	movl	max_gcse_regno(%rip), %edx	# max_gcse_regno, max_gcse_regno.903
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.904
	movl	%edx, %esi	# max_gcse_regno.903,
	movl	%eax, %edi	# n_basic_blocks.905,
	call	sbitmap_vector_alloc	#
	movq	%rax, reg_set_in_block(%rip)	# reg_set_in_block.906, reg_set_in_block
	.loc 1 6444 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.907
	movl	%eax, %edx	# n_basic_blocks.907, n_basic_blocks.908
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.909
	movl	%edx, %esi	# n_basic_blocks.908,
	movq	%rax, %rdi	# reg_set_in_block.909,
	call	sbitmap_vector_zero	#
	.loc 1 6445 0
	movq	$0, pre_ldst_mems(%rip)	#, pre_ldst_mems
	.loc 1 6448 0
	movl	$0, -28(%rbp)	#, bb
	jmp	.L1103	#
.L1114:
	.loc 1 6450 0
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.910
	movl	-28(%rbp), %edx	# bb, tmp109
	movslq	%edx, %rdx	# tmp109, D.19708
	salq	$3, %rdx	#, D.19708
	addq	%rdx, %rax	# D.19708, regvec.911
	movq	%rax, regvec(%rip)	# regvec.911, regvec
	.loc 1 6451 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.912
	movl	-28(%rbp), %edx	# bb, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	addq	$4, %rdx	#, tmp112
	movq	(%rax,%rdx,8), %rax	# basic_block_info.912_19->data.bb, D.19709
	movq	8(%rax), %rax	# _20->end, tmp113
	movq	%rax, -16(%rbp)	# tmp113, insn
	jmp	.L1104	#
.L1113:
	.loc 1 6456 0
	movq	-16(%rbp), %rax	# insn, tmp114
	movzwl	(%rax), %eax	# insn_3->code, D.19711
	movzwl	%ax, %eax	# D.19711, D.19707
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19712
	cmpb	$105, %al	#, D.19712
	je	.L1105	#,
	.loc 1 6457 0
	jmp	.L1106	#
.L1105:
	.loc 1 6459 0
	movq	-16(%rbp), %rax	# insn, tmp116
	movzwl	(%rax), %eax	# insn_3->code, D.19711
	cmpw	$34, %ax	#, D.19711
	jne	.L1107	#,
.LBB70:
	.loc 1 6461 0
	movb	$0, -29(%rbp)	#, clobbers_all
	.loc 1 6468 0
	movl	$0, -24(%rbp)	#, regno
	jmp	.L1108	#
.L1111:
	.loc 1 6469 0
	cmpb	$0, -29(%rbp)	#, clobbers_all
	jne	.L1109	#,
	.loc 1 6470 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.913
	movl	-24(%rbp), %eax	# regno, regno.914
	movl	%eax, %ecx	# regno.914, tmp138
	shrq	%cl, %rdx	# tmp138, D.19708
	movq	%rdx, %rax	# D.19708, D.19708
	andl	$1, %eax	#, D.19708
	testq	%rax, %rax	# D.19708
	je	.L1110	#,
.L1109:
	.loc 1 6471 0
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.915
	movl	-28(%rbp), %edx	# bb, tmp117
	movslq	%edx, %rdx	# tmp117, D.19708
	salq	$3, %rdx	#, D.19708
	addq	%rdx, %rax	# D.19708, D.19713
	movq	(%rax), %rdx	# *_39, D.19714
	movl	-24(%rbp), %eax	# regno, tmp118
	shrl	$6, %eax	#, D.19715
	movq	reg_set_in_block(%rip), %rcx	# reg_set_in_block, reg_set_in_block.916
	movl	-28(%rbp), %esi	# bb, tmp119
	movslq	%esi, %rsi	# tmp119, D.19708
	salq	$3, %rsi	#, D.19708
	addq	%rsi, %rcx	# D.19708, D.19713
	movq	(%rcx), %rcx	# *_45, D.19714
	movl	%eax, %esi	# D.19715, tmp120
	addq	$2, %rsi	#, tmp121
	movq	(%rcx,%rsi,8), %rsi	# _46->elms, D.19708
	movl	-24(%rbp), %ecx	# regno, regno.917
	andl	$63, %ecx	#, D.19707
	movl	$1, %edi	#, tmp122
	salq	%cl, %rdi	# D.19707, D.19708
	movq	%rdi, %rcx	# D.19708, D.19708
	orq	%rsi, %rcx	# D.19708, D.19708
	movl	%eax, %eax	# D.19715, tmp123
	addq	$2, %rax	#, tmp124
	movq	%rcx, (%rdx,%rax,8)	# D.19708, _40->elms
.L1110:
	.loc 1 6468 0
	addl	$1, -24(%rbp)	#, regno
.L1108:
	.loc 1 6468 0 is_stmt 0 discriminator 1
	cmpl	$52, -24(%rbp)	#, regno
	jbe	.L1111	#,
.L1107:
.LBE70:
	.loc 1 6474 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp125
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, tmp126
	movq	%rax, -8(%rbp)	# tmp126, pat
	.loc 1 6475 0
	movq	-8(%rbp), %rax	# pat, tmp127
	movl	$0, %edx	#,
	movl	$reg_set_info, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	note_stores	#
	.loc 1 6478 0
	movq	-8(%rbp), %rax	# pat, tmp128
	movzwl	(%rax), %eax	# pat_53->code, D.19711
	cmpw	$47, %ax	#, D.19711
	jne	.L1106	#,
	.loc 1 6479 0
	movq	-16(%rbp), %rax	# insn, tmp129
	movq	%rax, %rdi	# tmp129,
	call	find_moveable_store	#
.L1106:
	.loc 1 6453 0
	movq	-16(%rbp), %rax	# insn, tmp130
	movq	16(%rax), %rax	# insn_3->fld[1].rtx, tmp131
	movq	%rax, -16(%rbp)	# tmp131, insn
.L1104:
	.loc 1 6451 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, insn
	je	.L1112	#,
	.loc 1 6452 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.918
	movl	-28(%rbp), %edx	# bb, tmp133
	movslq	%edx, %rdx	# tmp133, tmp132
	addq	$4, %rdx	#, tmp134
	movq	(%rax,%rdx,8), %rax	# basic_block_info.918_22->data.bb, D.19709
	movq	(%rax), %rax	# _23->head, D.19710
	movq	16(%rax), %rax	# _24->fld[1].rtx, D.19710
	cmpq	-16(%rbp), %rax	# insn, D.19710
	jne	.L1113	#,
.L1112:
	.loc 1 6448 0
	addl	$1, -28(%rbp)	#, bb
.L1103:
	.loc 1 6448 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.919
	cmpl	%eax, -28(%rbp)	# n_basic_blocks.919, bb
	jl	.L1114	#,
	.loc 1 6483 0 is_stmt 1
	call	enumerate_ldsts	#
	movl	%eax, -20(%rbp)	# tmp135, ret
	.loc 1 6485 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.920
	testq	%rax, %rax	# gcse_file.920
	je	.L1115	#,
	.loc 1 6487 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.921
	movq	%rax, %rcx	# gcse_file.921,
	movl	$26, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC50, %edi	#,
	call	fwrite	#
	.loc 1 6488 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.922
	movq	%rax, %rdi	# gcse_file.922,
	call	print_ldst_list	#
.L1115:
	.loc 1 6491 0
	movl	-20(%rbp), %eax	# ret, D.19707
	.loc 1 6492 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	compute_store_table, .-compute_store_table
	.type	load_kills_store, @function
load_kills_store:
.LFB128:
	.loc 1 6499 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# store_pattern, store_pattern
	.loc 1 6500 0
	movq	-8(%rbp), %rax	# x, tmp64
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.19718
	movzbl	%al, %esi	# D.19718, D.19719
	movq	-16(%rbp), %rdx	# store_pattern, tmp65
	movq	-8(%rbp), %rax	# x, tmp66
	movl	$rtx_addr_varies_p, %ecx	#,
	movq	%rax, %rdi	# tmp66,
	call	true_dependence	#
	testl	%eax, %eax	# D.19717
	je	.L1118	#,
	.loc 1 6501 0
	movl	$1, %eax	#, D.19717
	jmp	.L1119	#
.L1118:
	.loc 1 6502 0
	movl	$0, %eax	#, D.19717
.L1119:
	.loc 1 6503 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	load_kills_store, .-load_kills_store
	.type	find_loads, @function
find_loads:
.LFB129:
	.loc 1 6511 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# store_pattern, store_pattern
	.loc 1 6514 0
	movl	$0, -12(%rbp)	#, ret
	.loc 1 6516 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L1121	#,
	.loc 1 6517 0
	movl	$0, %eax	#, D.19720
	jmp	.L1122	#
.L1121:
	.loc 1 6519 0
	movq	-40(%rbp), %rax	# x, tmp83
	movzwl	(%rax), %eax	# x_9(D)->code, D.19721
	cmpw	$47, %ax	#, D.19721
	jne	.L1123	#,
	.loc 1 6520 0
	movq	-40(%rbp), %rax	# x, tmp84
	movq	16(%rax), %rax	# x_9(D)->fld[1].rtx, tmp85
	movq	%rax, -40(%rbp)	# tmp85, x
.L1123:
	.loc 1 6522 0
	movq	-40(%rbp), %rax	# x, tmp86
	movzwl	(%rax), %eax	# x_1->code, D.19721
	cmpw	$66, %ax	#, D.19721
	jne	.L1124	#,
	.loc 1 6524 0
	movq	-48(%rbp), %rdx	# store_pattern, tmp87
	movq	-40(%rbp), %rax	# x, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	load_kills_store	#
	testl	%eax, %eax	# D.19720
	je	.L1124	#,
	.loc 1 6525 0
	movl	$1, %eax	#, D.19720
	jmp	.L1122	#
.L1124:
	.loc 1 6529 0
	movq	-40(%rbp), %rax	# x, tmp89
	movzwl	(%rax), %eax	# x_1->code, D.19721
	movzwl	%ax, %eax	# D.19721, D.19720
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp91
	movq	%rax, -8(%rbp)	# tmp91, fmt
	.loc 1 6531 0
	movq	-40(%rbp), %rax	# x, tmp92
	movzwl	(%rax), %eax	# x_1->code, D.19721
	movzwl	%ax, %eax	# D.19721, D.19720
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.19722
	movzbl	%al, %eax	# D.19722, D.19720
	subl	$1, %eax	#, tmp94
	movl	%eax, -20(%rbp)	# tmp94, i
	jmp	.L1125	#
.L1131:
	.loc 1 6533 0
	movl	-20(%rbp), %eax	# i, tmp95
	movslq	%eax, %rdx	# tmp95, D.19723
	movq	-8(%rbp), %rax	# fmt, tmp96
	addq	%rdx, %rax	# D.19723, D.19724
	movzbl	(%rax), %eax	# *_26, D.19725
	cmpb	$101, %al	#, D.19725
	jne	.L1126	#,
	.loc 1 6534 0
	movq	-40(%rbp), %rax	# x, tmp97
	movl	-20(%rbp), %edx	# i, tmp99
	movslq	%edx, %rdx	# tmp99, tmp98
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtx, D.19726
	movq	-48(%rbp), %rdx	# store_pattern, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# D.19726,
	call	find_loads	#
	orl	%eax, -12(%rbp)	# D.19720, ret
	jmp	.L1127	#
.L1126:
	.loc 1 6535 0
	movl	-20(%rbp), %eax	# i, tmp101
	movslq	%eax, %rdx	# tmp101, D.19723
	movq	-8(%rbp), %rax	# fmt, tmp102
	addq	%rdx, %rax	# D.19723, D.19724
	movzbl	(%rax), %eax	# *_32, D.19725
	cmpb	$69, %al	#, D.19725
	jne	.L1127	#,
	.loc 1 6536 0
	movq	-40(%rbp), %rax	# x, tmp103
	movl	-20(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, tmp104
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.19727
	movl	(%rax), %eax	# _34->num_elem, D.19720
	subl	$1, %eax	#, tmp106
	movl	%eax, -16(%rbp)	# tmp106, j
	jmp	.L1128	#
.L1129:
	.loc 1 6537 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp107
	movl	-20(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, tmp108
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_2].rtvec, D.19727
	movl	-16(%rbp), %edx	# j, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	movq	8(%rax,%rdx,8), %rax	# _37->elem, D.19726
	movq	-48(%rbp), %rdx	# store_pattern, tmp112
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# D.19726,
	call	find_loads	#
	orl	%eax, -12(%rbp)	# D.19720, ret
	.loc 1 6536 0 discriminator 2
	subl	$1, -16(%rbp)	#, j
.L1128:
	.loc 1 6536 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, j
	jns	.L1129	#,
.L1127:
	.loc 1 6531 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L1125:
	.loc 1 6531 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	js	.L1130	#,
	.loc 1 6531 0 discriminator 2
	cmpl	$0, -12(%rbp)	#, ret
	je	.L1131	#,
.L1130:
	.loc 1 6539 0 is_stmt 1
	movl	-12(%rbp), %eax	# ret, D.19720
.L1122:
	.loc 1 6540 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	find_loads, .-find_loads
	.type	store_killed_in_insn, @function
store_killed_in_insn:
.LFB130:
	.loc 1 6548 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# insn, insn
	.loc 1 6549 0
	movq	-32(%rbp), %rax	# insn, tmp79
	movzwl	(%rax), %eax	# insn_3(D)->code, D.19729
	movzwl	%ax, %eax	# D.19729, D.19728
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.19730
	cmpb	$105, %al	#, D.19730
	je	.L1133	#,
	.loc 1 6550 0
	movl	$0, %eax	#, D.19728
	jmp	.L1134	#
.L1133:
	.loc 1 6552 0
	movq	-32(%rbp), %rax	# insn, tmp81
	movzwl	(%rax), %eax	# insn_3(D)->code, D.19729
	cmpw	$34, %ax	#, D.19729
	jne	.L1135	#,
	.loc 1 6556 0
	movq	-32(%rbp), %rax	# insn, tmp82
	movzbl	3(%rax), %eax	# *insn_3(D), D.19731
	andl	$4, %eax	#, D.19731
	testb	%al, %al	# D.19731
	je	.L1136	#,
	.loc 1 6556 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# insn, tmp83
	movq	%rax, %rdi	# tmp83,
	call	pure_call_p	#
	testl	%eax, %eax	# D.19728
	je	.L1137	#,
.L1136:
	.loc 1 6556 0 discriminator 1
	movl	$1, %eax	#, iftmp.923
	jmp	.L1138	#
.L1137:
	.loc 1 6556 0 discriminator 3
	movl	$0, %eax	#, iftmp.923
.L1138:
	.loc 1 6556 0 discriminator 4
	jmp	.L1134	#
.L1135:
	.loc 1 6559 0 is_stmt 1
	movq	-32(%rbp), %rax	# insn, tmp84
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.19732
	movzwl	(%rax), %eax	# _15->code, D.19729
	cmpw	$47, %ax	#, D.19729
	jne	.L1139	#,
.LBB71:
	.loc 1 6561 0
	movq	-32(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, tmp86
	movq	%rax, -8(%rbp)	# tmp86, pat
	.loc 1 6563 0
	movq	-8(%rbp), %rax	# pat, tmp87
	movq	8(%rax), %rax	# pat_17->fld[0].rtx, D.19732
	movzwl	(%rax), %eax	# _18->code, D.19729
	cmpw	$66, %ax	#, D.19729
	jne	.L1140	#,
	.loc 1 6563 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pat, tmp88
	movq	8(%rax), %rax	# pat_17->fld[0].rtx, D.19732
	movq	-24(%rbp), %rdx	# x, tmp89
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# D.19732,
	call	expr_equiv_p	#
	testl	%eax, %eax	# D.19728
	jne	.L1140	#,
	.loc 1 6565 0 is_stmt 1
	movq	-8(%rbp), %rax	# pat, tmp90
	movq	8(%rax), %rax	# pat_17->fld[0].rtx, D.19732
	movq	-24(%rbp), %rdx	# x, tmp91
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# D.19732,
	call	find_loads	#
	testl	%eax, %eax	# D.19728
	je	.L1140	#,
	.loc 1 6566 0
	movl	$1, %eax	#, D.19728
	jmp	.L1134	#
.L1140:
	.loc 1 6567 0
	movq	-8(%rbp), %rax	# pat, tmp92
	movq	16(%rax), %rax	# pat_17->fld[1].rtx, D.19732
	movq	-24(%rbp), %rdx	# x, tmp93
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.19732,
	call	find_loads	#
	jmp	.L1134	#
.L1139:
.LBE71:
	.loc 1 6570 0
	movq	-32(%rbp), %rax	# insn, tmp94
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.19732
	movq	-24(%rbp), %rdx	# x, tmp95
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# D.19732,
	call	find_loads	#
.L1134:
	.loc 1 6571 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	store_killed_in_insn, .-store_killed_in_insn
	.type	store_killed_after, @function
store_killed_after:
.LFB131:
	.loc 1 6580 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# insn, insn
	movq	%rdx, -40(%rbp)	# bb, bb
	.loc 1 6581 0
	movq	-40(%rbp), %rax	# bb, tmp65
	movq	8(%rax), %rax	# bb_3(D)->end, tmp66
	movq	%rax, -8(%rbp)	# tmp66, last
	.loc 1 6583 0
	movq	-32(%rbp), %rax	# insn, tmp67
	cmpq	-8(%rbp), %rax	# last, tmp67
	jne	.L1142	#,
	.loc 1 6584 0
	movl	$0, %eax	#, D.19733
	jmp	.L1143	#
.L1142:
	.loc 1 6591 0
	movq	-24(%rbp), %rax	# x, tmp68
	movq	8(%rax), %rax	# x_7(D)->fld[0].rtx, D.19734
	movq	-40(%rbp), %rdx	# bb, tmp69
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# D.19734,
	call	store_ops_ok	#
	testl	%eax, %eax	# D.19733
	jne	.L1144	#,
	.loc 1 6592 0
	movl	$1, %eax	#, D.19733
	jmp	.L1143	#
.L1144:
	.loc 1 6594 0
	jmp	.L1145	#
.L1148:
	.loc 1 6595 0
	movq	-32(%rbp), %rdx	# insn, tmp70
	movq	-24(%rbp), %rax	# x, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	store_killed_in_insn	#
	testl	%eax, %eax	# D.19733
	je	.L1146	#,
	.loc 1 6596 0
	movl	$1, %eax	#, D.19733
	jmp	.L1143	#
.L1146:
	.loc 1 6594 0
	movq	-32(%rbp), %rax	# insn, tmp72
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp73
	movq	%rax, -32(%rbp)	# tmp73, insn
.L1145:
	.loc 1 6594 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	je	.L1147	#,
	.loc 1 6594 0 discriminator 2
	movq	-8(%rbp), %rax	# last, tmp74
	movq	24(%rax), %rax	# last_4->fld[2].rtx, D.19734
	cmpq	-32(%rbp), %rax	# insn, D.19734
	jne	.L1148	#,
.L1147:
	.loc 1 6598 0 is_stmt 1
	movl	$0, %eax	#, D.19733
.L1143:
	.loc 1 6599 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	store_killed_after, .-store_killed_after
	.type	store_killed_before, @function
store_killed_before:
.LFB132:
	.loc 1 6607 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# insn, insn
	movq	%rdx, -40(%rbp)	# bb, bb
	.loc 1 6608 0
	movq	-40(%rbp), %rax	# bb, tmp65
	movq	(%rax), %rax	# bb_3(D)->head, tmp66
	movq	%rax, -8(%rbp)	# tmp66, first
	.loc 1 6610 0
	movq	-32(%rbp), %rax	# insn, tmp67
	cmpq	-8(%rbp), %rax	# first, tmp67
	jne	.L1150	#,
	.loc 1 6611 0
	movq	-32(%rbp), %rdx	# insn, tmp68
	movq	-24(%rbp), %rax	# x, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	store_killed_in_insn	#
	jmp	.L1151	#
.L1150:
	.loc 1 6618 0
	movq	-24(%rbp), %rax	# x, tmp70
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.19736
	movq	-40(%rbp), %rdx	# bb, tmp71
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# D.19736,
	call	store_ops_ok	#
	testl	%eax, %eax	# D.19735
	jne	.L1152	#,
	.loc 1 6619 0
	movl	$1, %eax	#, D.19735
	jmp	.L1151	#
.L1152:
	.loc 1 6621 0
	jmp	.L1153	#
.L1156:
	.loc 1 6622 0
	movq	-32(%rbp), %rdx	# insn, tmp72
	movq	-24(%rbp), %rax	# x, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	store_killed_in_insn	#
	testl	%eax, %eax	# D.19735
	je	.L1154	#,
	.loc 1 6623 0
	movl	$1, %eax	#, D.19735
	jmp	.L1151	#
.L1154:
	.loc 1 6621 0
	movq	-32(%rbp), %rax	# insn, tmp74
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp75
	movq	%rax, -32(%rbp)	# tmp75, insn
.L1153:
	.loc 1 6621 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	je	.L1155	#,
	.loc 1 6621 0 discriminator 2
	movq	-8(%rbp), %rax	# first, tmp76
	movq	16(%rax), %rax	# first_4->fld[1].rtx, D.19736
	cmpq	-32(%rbp), %rax	# insn, D.19736
	jne	.L1156	#,
.L1155:
	.loc 1 6625 0 is_stmt 1
	movl	$0, %eax	#, D.19735
.L1151:
	.loc 1 6626 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	store_killed_before, .-store_killed_before
	.section	.rodata
.LC51:
	.string	"Removing redundant store:\n"
	.align 8
.LC52:
	.string	"ST_avail and ST_antic (shown under loads..)\n"
.LC53:
	.string	"st_antloc"
.LC54:
	.string	"st_kill"
.LC55:
	.string	"Transpt"
.LC56:
	.string	"st_avloc"
	.text
	.type	build_store_vectors, @function
build_store_vectors:
.LFB133:
	.loc 1 6636 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 6644 0
	movl	num_stores(%rip), %eax	# num_stores, num_stores.924
	movl	%eax, %edx	# num_stores.924, num_stores.925
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.926
	movl	%edx, %esi	# num_stores.925,
	movl	%eax, %edi	# n_basic_blocks.927,
	call	sbitmap_vector_alloc	#
	movq	%rax, ae_gen(%rip)	# ae_gen.928, ae_gen
	.loc 1 6645 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.929
	movl	%eax, %edx	# n_basic_blocks.929, n_basic_blocks.930
	movq	ae_gen(%rip), %rax	# ae_gen, ae_gen.931
	movl	%edx, %esi	# n_basic_blocks.930,
	movq	%rax, %rdi	# ae_gen.931,
	call	sbitmap_vector_zero	#
	.loc 1 6647 0
	movl	num_stores(%rip), %eax	# num_stores, num_stores.932
	movl	%eax, %edx	# num_stores.932, num_stores.933
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.934
	movl	%edx, %esi	# num_stores.933,
	movl	%eax, %edi	# n_basic_blocks.935,
	call	sbitmap_vector_alloc	#
	movq	%rax, st_antloc(%rip)	# st_antloc.936, st_antloc
	.loc 1 6648 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.937
	movl	%eax, %edx	# n_basic_blocks.937, n_basic_blocks.938
	movq	st_antloc(%rip), %rax	# st_antloc, st_antloc.939
	movl	%edx, %esi	# n_basic_blocks.938,
	movq	%rax, %rdi	# st_antloc.939,
	call	sbitmap_vector_zero	#
	.loc 1 6650 0
	call	first_ls_expr	#
	movq	%rax, -40(%rbp)	# tmp231, ptr
	jmp	.L1158	#
.L1169:
.LBB72:
	.loc 1 6654 0
	movq	-40(%rbp), %rax	# ptr, tmp232
	movq	24(%rax), %rax	# ptr_3->stores, store_list.940
	movq	%rax, -56(%rbp)	# store_list.940, store_list
	.loc 1 6655 0
	movq	-40(%rbp), %rax	# ptr, tmp233
	movq	$0, 24(%rax)	#, ptr_3->stores
	.loc 1 6657 0
	movq	-56(%rbp), %rax	# store_list, tmp234
	movq	%rax, -48(%rbp)	# tmp234, st
	jmp	.L1159	#
.L1168:
	.loc 1 6659 0
	movq	-48(%rbp), %rax	# st, tmp235
	movq	8(%rax), %rax	# st_2->fld[0].rtx, tmp236
	movq	%rax, -24(%rbp)	# tmp236, insn
	.loc 1 6660 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.941
	movq	-24(%rbp), %rdx	# insn, tmp237
	movl	8(%rdx), %edx	# insn_25->fld[0].rtint, D.19737
	movslq	%edx, %rdx	# D.19737, tmp238
	addq	$4, %rdx	#, tmp239
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.941_26->data.bb, tmp240
	movq	%rax, -16(%rbp)	# tmp240, bb
	.loc 1 6662 0
	movq	-40(%rbp), %rax	# ptr, tmp241
	movq	8(%rax), %rax	# ptr_3->pattern, D.19738
	movq	-16(%rbp), %rdx	# bb, tmp242
	movq	-24(%rbp), %rcx	# insn, tmp243
	movq	%rcx, %rsi	# tmp243,
	movq	%rax, %rdi	# D.19738,
	call	store_killed_after	#
	testl	%eax, %eax	# D.19737
	jne	.L1160	#,
	.loc 1 6669 0
	movq	ae_gen(%rip), %rdx	# ae_gen, ae_gen.942
	movq	-16(%rbp), %rax	# bb, tmp244
	movl	88(%rax), %eax	# bb_28->index, D.19737
	cltq
	salq	$3, %rax	#, D.19739
	addq	%rdx, %rax	# ae_gen.942, D.19740
	movq	(%rax), %rax	# *_35, D.19741
	movq	-40(%rbp), %rdx	# ptr, tmp245
	movl	44(%rdx), %edx	# ptr_3->index, D.19737
	shrl	$6, %edx	#, D.19742
	movl	%edx, %edx	# D.19742, tmp246
	addq	$2, %rdx	#, tmp247
	movq	(%rax,%rdx,8), %rdx	# _36->elms, D.19739
	movq	-40(%rbp), %rax	# ptr, tmp248
	movl	44(%rax), %eax	# ptr_3->index, D.19737
	andl	$63, %eax	#, D.19737
	movl	%eax, %ecx	# D.19737, tmp328
	shrq	%cl, %rdx	# tmp328, D.19739
	movq	%rdx, %rax	# D.19739, D.19739
	andl	$1, %eax	#, D.19739
	testq	%rax, %rax	# D.19739
	je	.L1161	#,
.LBB73:
	.loc 1 6673 0
	movq	-40(%rbp), %rax	# ptr, tmp249
	movq	24(%rax), %rax	# ptr_3->stores, tmp250
	movq	%rax, -32(%rbp)	# tmp250, st
	jmp	.L1162	#
.L1165:
	.loc 1 6674 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.943
	movq	-32(%rbp), %rdx	# st, tmp251
	movq	8(%rdx), %rdx	# st_5->fld[0].rtx, D.19738
	movl	8(%rdx), %edx	# _47->fld[0].rtint, D.19737
	movslq	%edx, %rdx	# D.19737, tmp252
	addq	$4, %rdx	#, tmp253
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.943_46->data.bb, D.19743
	cmpq	-16(%rbp), %rax	# bb, D.19743
	jne	.L1163	#,
	.loc 1 6675 0
	jmp	.L1164	#
.L1163:
	.loc 1 6673 0
	movq	-32(%rbp), %rax	# st, tmp254
	movq	16(%rax), %rax	# st_5->fld[1].rtx, tmp255
	movq	%rax, -32(%rbp)	# tmp255, st
.L1162:
	.loc 1 6673 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, st
	jne	.L1165	#,
.L1164:
	.loc 1 6676 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, st
	je	.L1161	#,
.LBB74:
	.loc 1 6678 0
	movq	-40(%rbp), %rax	# ptr, tmp256
	movq	8(%rax), %rax	# ptr_3->pattern, D.19738
	movzbl	2(%rax), %eax	# _51->mode, D.19744
	movzbl	%al, %eax	# D.19744, D.19745
	movl	%eax, %edi	# D.19745,
	call	gen_reg_rtx	#
	movq	%rax, -8(%rbp)	# tmp257, r
	.loc 1 6679 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.944
	testq	%rax, %rax	# gcse_file.944
	je	.L1166	#,
	.loc 1 6680 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.945
	movq	%rax, %rcx	# gcse_file.945,
	movl	$26, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC51, %edi	#,
	call	fwrite	#
.L1166:
	.loc 1 6681 0
	movq	-32(%rbp), %rax	# st, tmp258
	movq	8(%rax), %rcx	# st_5->fld[0].rtx, D.19738
	movq	-16(%rbp), %rdx	# bb, tmp259
	movq	-8(%rbp), %rax	# r, tmp260
	movq	%rcx, %rsi	# D.19738,
	movq	%rax, %rdi	# tmp260,
	call	replace_store_insn	#
	.loc 1 6682 0
	movq	-32(%rbp), %rax	# st, tmp261
	movq	-24(%rbp), %rdx	# insn, tmp262
	movq	%rdx, 8(%rax)	# tmp262, st_5->fld[0].rtx
	.loc 1 6683 0
	jmp	.L1167	#
.L1161:
.LBE74:
.LBE73:
	.loc 1 6686 0
	movq	ae_gen(%rip), %rdx	# ae_gen, ae_gen.946
	movq	-16(%rbp), %rax	# bb, tmp263
	movl	88(%rax), %eax	# bb_28->index, D.19737
	cltq
	salq	$3, %rax	#, D.19739
	addq	%rdx, %rax	# ae_gen.946, D.19740
	movq	(%rax), %rdx	# *_62, D.19741
	movq	-40(%rbp), %rax	# ptr, tmp264
	movl	44(%rax), %eax	# ptr_3->index, D.19737
	shrl	$6, %eax	#, D.19742
	movq	ae_gen(%rip), %rsi	# ae_gen, ae_gen.947
	movq	-16(%rbp), %rcx	# bb, tmp265
	movl	88(%rcx), %ecx	# bb_28->index, D.19737
	movslq	%ecx, %rcx	# D.19737, D.19739
	salq	$3, %rcx	#, D.19739
	addq	%rsi, %rcx	# ae_gen.947, D.19740
	movq	(%rcx), %rcx	# *_71, D.19741
	movl	%eax, %esi	# D.19742, tmp266
	addq	$2, %rsi	#, tmp267
	movq	(%rcx,%rsi,8), %rsi	# _72->elms, D.19739
	movq	-40(%rbp), %rcx	# ptr, tmp268
	movl	44(%rcx), %ecx	# ptr_3->index, D.19737
	andl	$63, %ecx	#, D.19737
	movl	$1, %edi	#, tmp269
	salq	%cl, %rdi	# D.19737, D.19739
	movq	%rdi, %rcx	# D.19739, D.19739
	orq	%rsi, %rcx	# D.19739, D.19739
	movl	%eax, %eax	# D.19742, tmp270
	addq	$2, %rax	#, tmp271
	movq	%rcx, (%rdx,%rax,8)	# D.19739, _63->elms
	.loc 1 6687 0
	movq	-40(%rbp), %rax	# ptr, tmp272
	movq	24(%rax), %rdx	# ptr_3->stores, D.19738
	movq	-24(%rbp), %rax	# insn, tmp273
	movq	%rdx, %rsi	# D.19738,
	movq	%rax, %rdi	# tmp273,
	call	alloc_INSN_LIST	#
	movq	-40(%rbp), %rdx	# ptr, tmp274
	movq	%rax, 24(%rdx)	# D.19738, ptr_3->stores
.L1160:
	.loc 1 6691 0
	movq	-40(%rbp), %rax	# ptr, tmp275
	movq	8(%rax), %rax	# ptr_3->pattern, D.19738
	movq	-16(%rbp), %rdx	# bb, tmp276
	movq	-24(%rbp), %rcx	# insn, tmp277
	movq	%rcx, %rsi	# tmp277,
	movq	%rax, %rdi	# D.19738,
	call	store_killed_before	#
	testl	%eax, %eax	# D.19737
	jne	.L1167	#,
	.loc 1 6693 0
	movq	st_antloc(%rip), %rcx	# st_antloc, st_antloc.948
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.949
	movq	-24(%rbp), %rdx	# insn, tmp278
	movl	8(%rdx), %edx	# insn_25->fld[0].rtint, D.19737
	movslq	%edx, %rdx	# D.19737, tmp279
	addq	$4, %rdx	#, tmp280
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.949_83->data.bb, D.19743
	movl	88(%rax), %eax	# _85->index, D.19737
	cltq
	salq	$3, %rax	#, D.19739
	addq	%rcx, %rax	# st_antloc.948, D.19740
	movq	(%rax), %rdx	# *_89, D.19741
	movq	-40(%rbp), %rax	# ptr, tmp281
	movl	44(%rax), %eax	# ptr_3->index, D.19737
	shrl	$6, %eax	#, D.19742
	movq	st_antloc(%rip), %rdi	# st_antloc, st_antloc.950
	movq	basic_block_for_insn(%rip), %rcx	# basic_block_for_insn, basic_block_for_insn.951
	movq	-24(%rbp), %rsi	# insn, tmp282
	movl	8(%rsi), %esi	# insn_25->fld[0].rtint, D.19737
	movslq	%esi, %rsi	# D.19737, tmp283
	addq	$4, %rsi	#, tmp284
	movq	(%rcx,%rsi,8), %rcx	# basic_block_for_insn.951_95->data.bb, D.19743
	movl	88(%rcx), %ecx	# _97->index, D.19737
	movslq	%ecx, %rcx	# D.19737, D.19739
	salq	$3, %rcx	#, D.19739
	addq	%rdi, %rcx	# st_antloc.950, D.19740
	movq	(%rcx), %rcx	# *_101, D.19741
	movl	%eax, %esi	# D.19742, tmp285
	addq	$2, %rsi	#, tmp286
	movq	(%rcx,%rsi,8), %rsi	# _102->elms, D.19739
	movq	-40(%rbp), %rcx	# ptr, tmp287
	movl	44(%rcx), %ecx	# ptr_3->index, D.19737
	andl	$63, %ecx	#, D.19737
	movl	$1, %edi	#, tmp288
	salq	%cl, %rdi	# D.19737, D.19739
	movq	%rdi, %rcx	# D.19739, D.19739
	orq	%rsi, %rcx	# D.19739, D.19739
	movl	%eax, %eax	# D.19742, tmp289
	addq	$2, %rax	#, tmp290
	movq	%rcx, (%rdx,%rax,8)	# D.19739, _90->elms
	.loc 1 6694 0
	movq	-40(%rbp), %rax	# ptr, tmp291
	movq	16(%rax), %rdx	# ptr_3->loads, D.19738
	movq	-24(%rbp), %rax	# insn, tmp292
	movq	%rdx, %rsi	# D.19738,
	movq	%rax, %rdi	# tmp292,
	call	alloc_INSN_LIST	#
	movq	-40(%rbp), %rdx	# ptr, tmp293
	movq	%rax, 16(%rdx)	# D.19738, ptr_3->loads
.L1167:
	.loc 1 6657 0
	movq	-48(%rbp), %rax	# st, tmp294
	movq	16(%rax), %rax	# st_2->fld[1].rtx, tmp295
	movq	%rax, -48(%rbp)	# tmp295, st
.L1159:
	.loc 1 6657 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, st
	jne	.L1168	#,
	.loc 1 6700 0 is_stmt 1
	leaq	-56(%rbp), %rax	#, tmp296
	movq	%rax, %rdi	# tmp296,
	call	free_INSN_LIST_list	#
.LBE72:
	.loc 1 6650 0
	movq	-40(%rbp), %rax	# ptr, tmp297
	movq	%rax, %rdi	# tmp297,
	call	next_ls_expr	#
	movq	%rax, -40(%rbp)	# tmp298, ptr
.L1158:
	.loc 1 6650 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, ptr
	jne	.L1169	#,
	.loc 1 6703 0 is_stmt 1
	movl	num_stores(%rip), %eax	# num_stores, num_stores.952
	movl	%eax, %edx	# num_stores.952, num_stores.953
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.954
	movl	%edx, %esi	# num_stores.953,
	movl	%eax, %edi	# n_basic_blocks.955,
	call	sbitmap_vector_alloc	#
	movq	%rax, ae_kill(%rip)	# ae_kill.956, ae_kill
	.loc 1 6704 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.957
	movl	%eax, %edx	# n_basic_blocks.957, n_basic_blocks.958
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.959
	movl	%edx, %esi	# n_basic_blocks.958,
	movq	%rax, %rdi	# ae_kill.959,
	call	sbitmap_vector_zero	#
	.loc 1 6706 0
	movl	num_stores(%rip), %eax	# num_stores, num_stores.960
	movl	%eax, %edx	# num_stores.960, num_stores.961
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.962
	movl	%edx, %esi	# num_stores.961,
	movl	%eax, %edi	# n_basic_blocks.963,
	call	sbitmap_vector_alloc	#
	movq	%rax, transp(%rip)	# transp.964, transp
	.loc 1 6707 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.965
	movl	%eax, %edx	# n_basic_blocks.965, n_basic_blocks.966
	movq	transp(%rip), %rax	# transp, transp.967
	movl	%edx, %esi	# n_basic_blocks.966,
	movq	%rax, %rdi	# transp.967,
	call	sbitmap_vector_zero	#
	.loc 1 6709 0
	call	first_ls_expr	#
	movq	%rax, -40(%rbp)	# tmp299, ptr
	jmp	.L1170	#
.L1175:
	.loc 1 6710 0
	movl	$0, -60(%rbp)	#, b
	jmp	.L1171	#
.L1174:
	.loc 1 6712 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.968
	movl	-60(%rbp), %edx	# b, tmp301
	movslq	%edx, %rdx	# tmp301, tmp300
	addq	$4, %rdx	#, tmp302
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.968_131->data.bb, D.19743
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.969
	movl	-60(%rbp), %ecx	# b, tmp304
	movslq	%ecx, %rcx	# tmp304, tmp303
	addq	$4, %rcx	#, tmp305
	movq	(%rax,%rcx,8), %rax	# basic_block_info.969_133->data.bb, D.19743
	movq	(%rax), %rcx	# _134->head, D.19738
	movq	-40(%rbp), %rax	# ptr, tmp306
	movq	8(%rax), %rax	# ptr_4->pattern, D.19738
	movq	%rcx, %rsi	# D.19738,
	movq	%rax, %rdi	# D.19738,
	call	store_killed_after	#
	testl	%eax, %eax	# D.19737
	je	.L1172	#,
	.loc 1 6730 0
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.970
	movl	-60(%rbp), %edx	# b, tmp307
	movslq	%edx, %rdx	# tmp307, D.19739
	salq	$3, %rdx	#, D.19739
	addq	%rdx, %rax	# D.19739, D.19740
	movq	(%rax), %rdx	# *_141, D.19741
	movq	-40(%rbp), %rax	# ptr, tmp308
	movl	44(%rax), %eax	# ptr_4->index, D.19737
	shrl	$6, %eax	#, D.19742
	movq	ae_kill(%rip), %rcx	# ae_kill, ae_kill.971
	movl	-60(%rbp), %esi	# b, tmp309
	movslq	%esi, %rsi	# tmp309, D.19739
	salq	$3, %rsi	#, D.19739
	addq	%rsi, %rcx	# D.19739, D.19740
	movq	(%rcx), %rcx	# *_149, D.19741
	movl	%eax, %esi	# D.19742, tmp310
	addq	$2, %rsi	#, tmp311
	movq	(%rcx,%rsi,8), %rsi	# _150->elms, D.19739
	movq	-40(%rbp), %rcx	# ptr, tmp312
	movl	44(%rcx), %ecx	# ptr_4->index, D.19737
	andl	$63, %ecx	#, D.19737
	movl	$1, %edi	#, tmp313
	salq	%cl, %rdi	# D.19737, D.19739
	movq	%rdi, %rcx	# D.19739, D.19739
	orq	%rsi, %rcx	# D.19739, D.19739
	movl	%eax, %eax	# D.19742, tmp314
	addq	$2, %rax	#, tmp315
	movq	%rcx, (%rdx,%rax,8)	# D.19739, _142->elms
	jmp	.L1173	#
.L1172:
	.loc 1 6733 0
	movq	transp(%rip), %rax	# transp, transp.972
	movl	-60(%rbp), %edx	# b, tmp316
	movslq	%edx, %rdx	# tmp316, D.19739
	salq	$3, %rdx	#, D.19739
	addq	%rdx, %rax	# D.19739, D.19740
	movq	(%rax), %rdx	# *_159, D.19741
	movq	-40(%rbp), %rax	# ptr, tmp317
	movl	44(%rax), %eax	# ptr_4->index, D.19737
	shrl	$6, %eax	#, D.19742
	movq	transp(%rip), %rcx	# transp, transp.973
	movl	-60(%rbp), %esi	# b, tmp318
	movslq	%esi, %rsi	# tmp318, D.19739
	salq	$3, %rsi	#, D.19739
	addq	%rsi, %rcx	# D.19739, D.19740
	movq	(%rcx), %rcx	# *_167, D.19741
	movl	%eax, %esi	# D.19742, tmp319
	addq	$2, %rsi	#, tmp320
	movq	(%rcx,%rsi,8), %rsi	# _168->elms, D.19739
	movq	-40(%rbp), %rcx	# ptr, tmp321
	movl	44(%rcx), %ecx	# ptr_4->index, D.19737
	andl	$63, %ecx	#, D.19737
	movl	$1, %edi	#, tmp322
	salq	%cl, %rdi	# D.19737, D.19739
	movq	%rdi, %rcx	# D.19739, D.19739
	orq	%rsi, %rcx	# D.19739, D.19739
	movl	%eax, %eax	# D.19742, tmp323
	addq	$2, %rax	#, tmp324
	movq	%rcx, (%rdx,%rax,8)	# D.19739, _160->elms
.L1173:
	.loc 1 6710 0
	addl	$1, -60(%rbp)	#, b
.L1171:
	.loc 1 6710 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.974
	cmpl	%eax, -60(%rbp)	# n_basic_blocks.974, b
	jl	.L1174	#,
	.loc 1 6709 0 is_stmt 1
	movq	-40(%rbp), %rax	# ptr, tmp325
	movq	%rax, %rdi	# tmp325,
	call	next_ls_expr	#
	movq	%rax, -40(%rbp)	# tmp326, ptr
.L1170:
	.loc 1 6709 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, ptr
	jne	.L1175	#,
	.loc 1 6740 0 is_stmt 1
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.975
	testq	%rax, %rax	# gcse_file.975
	je	.L1157	#,
	.loc 1 6742 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.976
	movq	%rax, %rcx	# gcse_file.976,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC52, %edi	#,
	call	fwrite	#
	.loc 1 6743 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.977
	movq	%rax, %rdi	# gcse_file.977,
	call	print_ldst_list	#
	.loc 1 6744 0
	movl	n_basic_blocks(%rip), %ecx	# n_basic_blocks, n_basic_blocks.978
	movq	st_antloc(%rip), %rdx	# st_antloc, st_antloc.979
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.980
	movl	%ecx, %r8d	# n_basic_blocks.978,
	movq	%rdx, %rcx	# st_antloc.979,
	movl	$.LC5, %edx	#,
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# gcse_file.980,
	call	dump_sbitmap_vector	#
	.loc 1 6745 0
	movl	n_basic_blocks(%rip), %ecx	# n_basic_blocks, n_basic_blocks.981
	movq	ae_kill(%rip), %rdx	# ae_kill, ae_kill.982
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.983
	movl	%ecx, %r8d	# n_basic_blocks.981,
	movq	%rdx, %rcx	# ae_kill.982,
	movl	$.LC5, %edx	#,
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# gcse_file.983,
	call	dump_sbitmap_vector	#
	.loc 1 6746 0
	movl	n_basic_blocks(%rip), %ecx	# n_basic_blocks, n_basic_blocks.984
	movq	transp(%rip), %rdx	# transp, transp.985
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.986
	movl	%ecx, %r8d	# n_basic_blocks.984,
	movq	%rdx, %rcx	# transp.985,
	movl	$.LC5, %edx	#,
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# gcse_file.986,
	call	dump_sbitmap_vector	#
	.loc 1 6747 0
	movl	n_basic_blocks(%rip), %ecx	# n_basic_blocks, n_basic_blocks.987
	movq	ae_gen(%rip), %rdx	# ae_gen, ae_gen.988
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.989
	movl	%ecx, %r8d	# n_basic_blocks.987,
	movq	%rdx, %rcx	# ae_gen.988,
	movl	$.LC5, %edx	#,
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# gcse_file.989,
	call	dump_sbitmap_vector	#
.L1157:
	.loc 1 6749 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	build_store_vectors, .-build_store_vectors
	.section	.rodata
	.align 8
.LC57:
	.string	"STORE_MOTION  insert store at start of BB %d:\n"
	.text
	.type	insert_insn_start_bb, @function
insert_insn_start_bb:
.LFB134:
	.loc 1 6758 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# bb, bb
	.loc 1 6760 0
	movq	-32(%rbp), %rax	# bb, tmp69
	movq	(%rax), %rax	# bb_4(D)->head, D.19752
	movq	16(%rax), %rax	# _5->fld[1].rtx, tmp70
	movq	%rax, -16(%rbp)	# tmp70, prev
	.loc 1 6761 0
	movq	-32(%rbp), %rax	# bb, tmp71
	movq	(%rax), %rax	# bb_4(D)->head, tmp72
	movq	%rax, -8(%rbp)	# tmp72, before
	.loc 1 6762 0
	jmp	.L1178	#
.L1182:
	.loc 1 6764 0
	movq	-8(%rbp), %rax	# before, tmp73
	movzwl	(%rax), %eax	# before_3->code, D.19753
	cmpw	$36, %ax	#, D.19753
	je	.L1179	#,
	.loc 1 6765 0
	movq	-8(%rbp), %rax	# before, tmp74
	movzwl	(%rax), %eax	# before_3->code, D.19753
	cmpw	$37, %ax	#, D.19753
	jne	.L1180	#,
	.loc 1 6766 0
	movq	-8(%rbp), %rax	# before, tmp75
	movl	40(%rax), %eax	# before_3->fld[4].rtint, D.19754
	cmpl	$-80, %eax	#, D.19754
	jne	.L1180	#,
.L1179:
	.loc 1 6768 0
	movq	-8(%rbp), %rax	# before, tmp76
	movq	%rax, -16(%rbp)	# tmp76, prev
	.loc 1 6769 0
	movq	-32(%rbp), %rax	# bb, tmp77
	movq	8(%rax), %rax	# bb_4(D)->end, D.19752
	cmpq	-16(%rbp), %rax	# prev, D.19752
	jne	.L1181	#,
	.loc 1 6770 0
	jmp	.L1180	#
.L1181:
	.loc 1 6771 0
	movq	-8(%rbp), %rax	# before, tmp78
	movq	24(%rax), %rax	# before_3->fld[2].rtx, tmp79
	movq	%rax, -8(%rbp)	# tmp79, before
.L1178:
	.loc 1 6762 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, before
	jne	.L1182	#,
.L1180:
	.loc 1 6774 0
	movq	-16(%rbp), %rdx	# prev, tmp80
	movq	-24(%rbp), %rax	# insn, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	emit_insn_after	#
	movq	%rax, -24(%rbp)	# tmp82, insn
	.loc 1 6776 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.990
	testq	%rax, %rax	# gcse_file.990
	je	.L1177	#,
	.loc 1 6778 0
	movq	-32(%rbp), %rax	# bb, tmp83
	movl	88(%rax), %edx	# bb_4(D)->index, D.19754
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.991
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# gcse_file.991,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 6780 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.992
	movq	-24(%rbp), %rcx	# insn, tmp84
	movl	$6, %edx	#,
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# gcse_file.992,
	call	print_inline_rtx	#
	.loc 1 6781 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.993
	movq	%rax, %rsi	# gcse_file.993,
	movl	$10, %edi	#,
	call	fputc	#
.L1177:
	.loc 1 6783 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	insert_insn_start_bb, .-insert_insn_start_bb
	.section	.rodata
	.align 8
.LC58:
	.string	"STORE_MOTION  insert insn on edge (%d, %d):\n"
	.text
	.type	insert_store, @function
insert_store:
.LFB135:
	.loc 1 6793 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# expr, expr
	movq	%rsi, -64(%rbp)	# e, e
	.loc 1 6800 0
	movq	-56(%rbp), %rax	# expr, tmp113
	movq	56(%rax), %rax	# expr_4(D)->reaching_reg, D.19757
	testq	%rax, %rax	# D.19757
	jne	.L1185	#,
	.loc 1 6801 0
	movl	$0, %eax	#, D.19756
	jmp	.L1186	#
.L1185:
	.loc 1 6803 0
	movq	-56(%rbp), %rax	# expr, tmp114
	movq	56(%rax), %rax	# expr_4(D)->reaching_reg, tmp115
	movq	%rax, -24(%rbp)	# tmp115, reg
	.loc 1 6804 0
	movq	-56(%rbp), %rax	# expr, tmp116
	movq	8(%rax), %rax	# expr_4(D)->pattern, D.19757
	movq	-24(%rbp), %rdx	# reg, tmp117
	movq	%rdx, %rsi	# tmp117,
	movq	%rax, %rdi	# D.19757,
	call	gen_move_insn	#
	movq	%rax, -16(%rbp)	# tmp118, insn
	.loc 1 6809 0
	movq	-64(%rbp), %rax	# e, tmp119
	movq	24(%rax), %rax	# e_10(D)->dest, tmp120
	movq	%rax, -8(%rbp)	# tmp120, bb
	.loc 1 6810 0
	movq	-64(%rbp), %rax	# e, tmp121
	movq	24(%rax), %rax	# e_10(D)->dest, D.19758
	movq	32(%rax), %rax	# _12->pred, tmp122
	movq	%rax, -32(%rbp)	# tmp122, tmp
	jmp	.L1187	#
.L1191:
.LBB75:
	.loc 1 6812 0
	movq	-32(%rbp), %rax	# tmp, tmp123
	movq	24(%rax), %rdx	# tmp_1->dest, D.19758
	movq	-32(%rbp), %rax	# tmp, tmp124
	movq	16(%rax), %rcx	# tmp_1->src, D.19758
	movq	edge_list(%rip), %rax	# edge_list, edge_list.994
	movq	%rcx, %rsi	# D.19758,
	movq	%rax, %rdi	# edge_list.994,
	call	find_edge_index	#
	movl	%eax, -40(%rbp)	# tmp125, index
	.loc 1 6813 0
	cmpl	$-1, -40(%rbp)	#, index
	jne	.L1188	#,
	.loc 1 6814 0
	movl	$__FUNCTION__.13517, %edx	#,
	movl	$6814, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L1188:
	.loc 1 6815 0
	movq	pre_insert_map(%rip), %rax	# pre_insert_map, pre_insert_map.995
	movl	-40(%rbp), %edx	# index, tmp126
	movslq	%edx, %rdx	# tmp126, D.19759
	salq	$3, %rdx	#, D.19759
	addq	%rdx, %rax	# D.19759, D.19760
	movq	(%rax), %rax	# *_21, D.19761
	movq	-56(%rbp), %rdx	# expr, tmp127
	movl	44(%rdx), %edx	# expr_4(D)->index, D.19756
	shrl	$6, %edx	#, D.19762
	movl	%edx, %edx	# D.19762, tmp128
	addq	$2, %rdx	#, tmp129
	movq	(%rax,%rdx,8), %rdx	# _22->elms, D.19759
	movq	-56(%rbp), %rax	# expr, tmp130
	movl	44(%rax), %eax	# expr_4(D)->index, D.19756
	andl	$63, %eax	#, D.19756
	movl	%eax, %ecx	# D.19756, tmp161
	shrq	%cl, %rdx	# tmp161, D.19759
	movq	%rdx, %rax	# D.19759, D.19759
	andl	$1, %eax	#, D.19759
	testq	%rax, %rax	# D.19759
	jne	.L1189	#,
	.loc 1 6816 0
	jmp	.L1190	#
.L1189:
.LBE75:
	.loc 1 6810 0
	movq	-32(%rbp), %rax	# tmp, tmp131
	movq	(%rax), %rax	# tmp_1->pred_next, tmp132
	movq	%rax, -32(%rbp)	# tmp132, tmp
.L1187:
	.loc 1 6810 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, tmp
	jne	.L1191	#,
.L1190:
	.loc 1 6821 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, tmp
	jne	.L1192	#,
	.loc 1 6821 0 is_stmt 0 discriminator 1
	cmpq	$entry_exit_blocks+112, -8(%rbp)	#, bb
	je	.L1192	#,
	.loc 1 6823 0 is_stmt 1
	movq	-64(%rbp), %rax	# e, tmp133
	movq	24(%rax), %rax	# e_10(D)->dest, D.19758
	movq	32(%rax), %rax	# _32->pred, tmp134
	movq	%rax, -32(%rbp)	# tmp134, tmp
	jmp	.L1193	#
.L1194:
.LBB76:
	.loc 1 6825 0 discriminator 2
	movq	-32(%rbp), %rax	# tmp, tmp135
	movq	24(%rax), %rdx	# tmp_2->dest, D.19758
	movq	-32(%rbp), %rax	# tmp, tmp136
	movq	16(%rax), %rcx	# tmp_2->src, D.19758
	movq	edge_list(%rip), %rax	# edge_list, edge_list.996
	movq	%rcx, %rsi	# D.19758,
	movq	%rax, %rdi	# edge_list.996,
	call	find_edge_index	#
	movl	%eax, -36(%rbp)	# tmp137, index
	.loc 1 6826 0 discriminator 2
	movq	pre_insert_map(%rip), %rax	# pre_insert_map, pre_insert_map.997
	movl	-36(%rbp), %edx	# index, tmp138
	movslq	%edx, %rdx	# tmp138, D.19759
	salq	$3, %rdx	#, D.19759
	addq	%rdx, %rax	# D.19759, D.19760
	movq	(%rax), %rdx	# *_41, D.19761
	movq	-56(%rbp), %rax	# expr, tmp139
	movl	44(%rax), %eax	# expr_4(D)->index, D.19756
	shrl	$6, %eax	#, D.19762
	movq	pre_insert_map(%rip), %rcx	# pre_insert_map, pre_insert_map.998
	movl	-36(%rbp), %esi	# index, tmp140
	movslq	%esi, %rsi	# tmp140, D.19759
	salq	$3, %rsi	#, D.19759
	addq	%rsi, %rcx	# D.19759, D.19760
	movq	(%rcx), %rcx	# *_49, D.19761
	movl	%eax, %esi	# D.19762, tmp141
	addq	$2, %rsi	#, tmp142
	movq	(%rcx,%rsi,8), %rsi	# _50->elms, D.19759
	movq	-56(%rbp), %rcx	# expr, tmp143
	movl	44(%rcx), %ecx	# expr_4(D)->index, D.19756
	andl	$63, %ecx	#, D.19756
	movl	$1, %edi	#, tmp144
	salq	%cl, %rdi	# D.19756, D.19759
	movq	%rdi, %rcx	# D.19759, D.19759
	notq	%rcx	# D.19759
	andq	%rsi, %rcx	# D.19759, D.19759
	movl	%eax, %eax	# D.19762, tmp145
	addq	$2, %rax	#, tmp146
	movq	%rcx, (%rdx,%rax,8)	# D.19759, _42->elms
.LBE76:
	.loc 1 6823 0 discriminator 2
	movq	-32(%rbp), %rax	# tmp, tmp147
	movq	(%rax), %rax	# tmp_2->pred_next, tmp148
	movq	%rax, -32(%rbp)	# tmp148, tmp
.L1193:
	.loc 1 6823 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, tmp
	jne	.L1194	#,
	.loc 1 6828 0 is_stmt 1
	movq	-8(%rbp), %rdx	# bb, tmp149
	movq	-16(%rbp), %rax	# insn, tmp150
	movq	%rdx, %rsi	# tmp149,
	movq	%rax, %rdi	# tmp150,
	call	insert_insn_start_bb	#
	.loc 1 6829 0
	movl	$0, %eax	#, D.19756
	jmp	.L1186	#
.L1192:
	.loc 1 6834 0
	movq	-64(%rbp), %rax	# e, tmp151
	movl	48(%rax), %eax	# e_10(D)->flags, D.19756
	andl	$2, %eax	#, D.19756
	testl	%eax, %eax	# D.19756
	je	.L1195	#,
	.loc 1 6836 0
	movq	-8(%rbp), %rdx	# bb, tmp152
	movq	-16(%rbp), %rax	# insn, tmp153
	movq	%rdx, %rsi	# tmp152,
	movq	%rax, %rdi	# tmp153,
	call	insert_insn_start_bb	#
	.loc 1 6837 0
	movl	$0, %eax	#, D.19756
	jmp	.L1186	#
.L1195:
	.loc 1 6840 0
	movq	-64(%rbp), %rdx	# e, tmp154
	movq	-16(%rbp), %rax	# insn, tmp155
	movq	%rdx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp155,
	call	insert_insn_on_edge	#
	.loc 1 6842 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.999
	testq	%rax, %rax	# gcse_file.999
	je	.L1196	#,
	.loc 1 6845 0
	movq	-64(%rbp), %rax	# e, tmp156
	movq	24(%rax), %rax	# e_10(D)->dest, D.19758
	.loc 1 6844 0
	movl	88(%rax), %ecx	# _63->index, D.19756
	.loc 1 6845 0
	movq	-64(%rbp), %rax	# e, tmp157
	movq	16(%rax), %rax	# e_10(D)->src, D.19758
	.loc 1 6844 0
	movl	88(%rax), %edx	# _65->index, D.19756
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1000
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# gcse_file.1000,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 6846 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1001
	movq	-16(%rbp), %rcx	# insn, tmp158
	movl	$6, %edx	#,
	movq	%rcx, %rsi	# tmp158,
	movq	%rax, %rdi	# gcse_file.1001,
	call	print_inline_rtx	#
	.loc 1 6847 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1002
	movq	%rax, %rsi	# gcse_file.1002,
	movl	$10, %edi	#,
	call	fputc	#
.L1196:
	.loc 1 6850 0
	movl	$1, %eax	#, D.19756
.L1186:
	.loc 1 6851 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	insert_store, .-insert_store
	.section	.rodata
	.align 8
.LC59:
	.string	"STORE_MOTION  delete insn in BB %d:\n      "
	.align 8
.LC60:
	.string	"\nSTORE MOTION  replaced with insn:\n      "
	.text
	.type	replace_store_insn, @function
replace_store_insn:
.LFB136:
	.loc 1 6859 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# reg, reg
	movq	%rsi, -32(%rbp)	# del, del
	movq	%rdx, -40(%rbp)	# bb, bb
	.loc 1 6862 0
	movq	-32(%rbp), %rax	# del, tmp68
	movq	32(%rax), %rax	# del_1(D)->fld[3].rtx, D.19764
	movq	16(%rax), %rdx	# _2->fld[1].rtx, D.19764
	movq	-24(%rbp), %rax	# reg, tmp69
	movq	%rdx, %rsi	# D.19764,
	movq	%rax, %rdi	# tmp69,
	call	gen_move_insn	#
	movq	%rax, -8(%rbp)	# tmp70, insn
	.loc 1 6863 0
	movq	-32(%rbp), %rdx	# del, tmp71
	movq	-8(%rbp), %rax	# insn, tmp72
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	emit_insn_after	#
	movq	%rax, -8(%rbp)	# tmp73, insn
	.loc 1 6865 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1003
	testq	%rax, %rax	# gcse_file.1003
	je	.L1198	#,
	.loc 1 6867 0
	movq	-40(%rbp), %rax	# bb, tmp74
	movl	88(%rax), %edx	# bb_8(D)->index, D.19765
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1004
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# gcse_file.1004,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 6869 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1005
	movq	-32(%rbp), %rcx	# del, tmp75
	movl	$6, %edx	#,
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# gcse_file.1005,
	call	print_inline_rtx	#
	.loc 1 6870 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1006
	movq	%rax, %rcx	# gcse_file.1006,
	movl	$41, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC60, %edi	#,
	call	fwrite	#
	.loc 1 6871 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1007
	movq	-8(%rbp), %rcx	# insn, tmp76
	movl	$6, %edx	#,
	movq	%rcx, %rsi	# tmp76,
	movq	%rax, %rdi	# gcse_file.1007,
	call	print_inline_rtx	#
	.loc 1 6872 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1008
	movq	%rax, %rsi	# gcse_file.1008,
	movl	$10, %edi	#,
	call	fputc	#
.L1198:
	.loc 1 6875 0
	movq	-32(%rbp), %rax	# del, tmp77
	movq	%rax, %rdi	# tmp77,
	call	delete_insn	#
	.loc 1 6876 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	replace_store_insn, .-replace_store_insn
	.type	delete_store, @function
delete_store:
.LFB137:
	.loc 1 6886 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# expr, expr
	movq	%rsi, -48(%rbp)	# bb, bb
	.loc 1 6889 0
	movq	-40(%rbp), %rax	# expr, tmp67
	movq	56(%rax), %rax	# expr_2(D)->reaching_reg, D.19768
	testq	%rax, %rax	# D.19768
	jne	.L1200	#,
	.loc 1 6890 0
	movq	-40(%rbp), %rax	# expr, tmp68
	movq	8(%rax), %rax	# expr_2(D)->pattern, D.19768
	movzbl	2(%rax), %eax	# _4->mode, D.19769
	movzbl	%al, %eax	# D.19769, D.19770
	movl	%eax, %edi	# D.19770,
	call	gen_reg_rtx	#
	movq	-40(%rbp), %rdx	# expr, tmp69
	movq	%rax, 56(%rdx)	# D.19768, expr_2(D)->reaching_reg
.L1200:
	.loc 1 6895 0
	movq	-40(%rbp), %rax	# expr, tmp70
	movq	56(%rax), %rax	# expr_2(D)->reaching_reg, tmp71
	movq	%rax, -16(%rbp)	# tmp71, reg
	.loc 1 6897 0
	movq	-40(%rbp), %rax	# expr, tmp72
	movq	24(%rax), %rax	# expr_2(D)->stores, tmp73
	movq	%rax, -24(%rbp)	# tmp73, i
	jmp	.L1201	#
.L1204:
	.loc 1 6899 0
	movq	-24(%rbp), %rax	# i, tmp74
	movq	8(%rax), %rax	# i_1->fld[0].rtx, tmp75
	movq	%rax, -8(%rbp)	# tmp75, del
	.loc 1 6900 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.1009
	movq	-8(%rbp), %rdx	# del, tmp76
	movl	8(%rdx), %edx	# del_10->fld[0].rtint, D.19771
	movslq	%edx, %rdx	# D.19771, tmp77
	addq	$4, %rdx	#, tmp78
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.1009_11->data.bb, D.19772
	cmpq	-48(%rbp), %rax	# bb, D.19772
	jne	.L1202	#,
	.loc 1 6904 0
	movq	-48(%rbp), %rdx	# bb, tmp79
	movq	-8(%rbp), %rcx	# del, tmp80
	movq	-16(%rbp), %rax	# reg, tmp81
	movq	%rcx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	replace_store_insn	#
	.loc 1 6905 0
	jmp	.L1199	#
.L1202:
	.loc 1 6897 0
	movq	-24(%rbp), %rax	# i, tmp82
	movq	16(%rax), %rax	# i_1->fld[1].rtx, tmp83
	movq	%rax, -24(%rbp)	# tmp83, i
.L1201:
	.loc 1 6897 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, i
	jne	.L1204	#,
.L1199:
	.loc 1 6908 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	delete_store, .-delete_store
	.type	free_store_memory, @function
free_store_memory:
.LFB138:
	.loc 1 6914 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 6915 0
	call	free_ldst_mems	#
	.loc 1 6917 0
	movq	ae_gen(%rip), %rax	# ae_gen, ae_gen.1010
	testq	%rax, %rax	# ae_gen.1010
	je	.L1206	#,
	.loc 1 6918 0
	movq	ae_gen(%rip), %rax	# ae_gen, ae_gen.1011
	movq	%rax, %rdi	# ae_gen.1011,
	call	free	#
.L1206:
	.loc 1 6919 0
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.1012
	testq	%rax, %rax	# ae_kill.1012
	je	.L1207	#,
	.loc 1 6920 0
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.1013
	movq	%rax, %rdi	# ae_kill.1013,
	call	free	#
.L1207:
	.loc 1 6921 0
	movq	transp(%rip), %rax	# transp, transp.1014
	testq	%rax, %rax	# transp.1014
	je	.L1208	#,
	.loc 1 6922 0
	movq	transp(%rip), %rax	# transp, transp.1015
	movq	%rax, %rdi	# transp.1015,
	call	free	#
.L1208:
	.loc 1 6923 0
	movq	st_antloc(%rip), %rax	# st_antloc, st_antloc.1016
	testq	%rax, %rax	# st_antloc.1016
	je	.L1209	#,
	.loc 1 6924 0
	movq	st_antloc(%rip), %rax	# st_antloc, st_antloc.1017
	movq	%rax, %rdi	# st_antloc.1017,
	call	free	#
.L1209:
	.loc 1 6925 0
	movq	pre_insert_map(%rip), %rax	# pre_insert_map, pre_insert_map.1018
	testq	%rax, %rax	# pre_insert_map.1018
	je	.L1210	#,
	.loc 1 6926 0
	movq	pre_insert_map(%rip), %rax	# pre_insert_map, pre_insert_map.1019
	movq	%rax, %rdi	# pre_insert_map.1019,
	call	free	#
.L1210:
	.loc 1 6927 0
	movq	pre_delete_map(%rip), %rax	# pre_delete_map, pre_delete_map.1020
	testq	%rax, %rax	# pre_delete_map.1020
	je	.L1211	#,
	.loc 1 6928 0
	movq	pre_delete_map(%rip), %rax	# pre_delete_map, pre_delete_map.1021
	movq	%rax, %rdi	# pre_delete_map.1021,
	call	free	#
.L1211:
	.loc 1 6929 0
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.1022
	testq	%rax, %rax	# reg_set_in_block.1022
	je	.L1212	#,
	.loc 1 6930 0
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.1023
	movq	%rax, %rdi	# reg_set_in_block.1023,
	call	free	#
.L1212:
	.loc 1 6932 0
	movq	$0, st_antloc(%rip)	#, st_antloc
	movq	st_antloc(%rip), %rax	# st_antloc, st_antloc.1024
	movq	%rax, transp(%rip)	# st_antloc.1024, transp
	movq	transp(%rip), %rax	# transp, transp.1025
	movq	%rax, ae_kill(%rip)	# transp.1025, ae_kill
	movq	ae_kill(%rip), %rax	# ae_kill, ae_kill.1026
	movq	%rax, ae_gen(%rip)	# ae_kill.1026, ae_gen
	.loc 1 6933 0
	movq	$0, reg_set_in_block(%rip)	#, reg_set_in_block
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.1027
	movq	%rax, pre_delete_map(%rip)	# reg_set_in_block.1027, pre_delete_map
	movq	pre_delete_map(%rip), %rax	# pre_delete_map, pre_delete_map.1028
	movq	%rax, pre_insert_map(%rip)	# pre_delete_map.1028, pre_insert_map
	.loc 1 6934 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	free_store_memory, .-free_store_memory
	.section	.rodata
.LC61:
	.string	"before store motion\n"
	.text
	.type	store_motion, @function
store_motion:
.LFB139:
	.loc 1 6941 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 6944 0
	movl	$0, -12(%rbp)	#, update_flow
	.loc 1 6946 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1029
	testq	%rax, %rax	# gcse_file.1029
	je	.L1214	#,
	.loc 1 6948 0
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1030
	movq	%rax, %rcx	# gcse_file.1030,
	movl	$20, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC61, %edi	#,
	call	fwrite	#
	.loc 1 6949 0
	call	get_insns	#
	movq	%rax, %rdx	#, D.19773
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1031
	movq	%rdx, %rsi	# D.19773,
	movq	%rax, %rdi	# gcse_file.1031,
	call	print_rtl	#
.L1214:
	.loc 1 6953 0
	call	init_alias_analysis	#
	.loc 1 6956 0
	call	compute_store_table	#
	movl	%eax, num_stores(%rip)	# num_stores.1032, num_stores
	.loc 1 6957 0
	movl	num_stores(%rip), %eax	# num_stores, num_stores.1033
	testl	%eax, %eax	# num_stores.1033
	jne	.L1215	#,
	.loc 1 6959 0
	movq	reg_set_in_block(%rip), %rax	# reg_set_in_block, reg_set_in_block.1034
	movq	%rax, %rdi	# reg_set_in_block.1034,
	call	free	#
	.loc 1 6960 0
	call	end_alias_analysis	#
	.loc 1 6961 0
	jmp	.L1213	#
.L1215:
	.loc 1 6965 0
	call	add_noreturn_fake_exit_edges	#
	.loc 1 6966 0
	call	build_store_vectors	#
	.loc 1 6968 0
	movq	ae_kill(%rip), %r8	# ae_kill, ae_kill.1035
	movq	st_antloc(%rip), %rdi	# st_antloc, st_antloc.1036
	movq	ae_gen(%rip), %rcx	# ae_gen, ae_gen.1037
	movq	transp(%rip), %rdx	# transp, transp.1038
	movl	num_stores(%rip), %esi	# num_stores, num_stores.1039
	movq	gcse_file(%rip), %rax	# gcse_file, gcse_file.1040
	movq	$pre_delete_map, 8(%rsp)	#,
	movq	$pre_insert_map, (%rsp)	#,
	movq	%r8, %r9	# ae_kill.1035,
	movq	%rdi, %r8	# st_antloc.1036,
	movq	%rax, %rdi	# gcse_file.1040,
	call	pre_edge_rev_lcm	#
	movq	%rax, edge_list(%rip)	# edge_list.1041, edge_list
	.loc 1 6973 0
	call	first_ls_expr	#
	movq	%rax, -8(%rbp)	# tmp112, ptr
	jmp	.L1217	#
.L1224:
	.loc 1 6975 0
	movl	$0, -16(%rbp)	#, x
	jmp	.L1218	#
.L1220:
	.loc 1 6976 0
	movq	pre_delete_map(%rip), %rax	# pre_delete_map, pre_delete_map.1042
	movl	-16(%rbp), %edx	# x, tmp113
	movslq	%edx, %rdx	# tmp113, D.19774
	salq	$3, %rdx	#, D.19774
	addq	%rdx, %rax	# D.19774, D.19775
	movq	(%rax), %rax	# *_28, D.19776
	movq	-8(%rbp), %rdx	# ptr, tmp114
	movl	44(%rdx), %edx	# ptr_3->index, D.19777
	shrl	$6, %edx	#, D.19778
	movl	%edx, %edx	# D.19778, tmp115
	addq	$2, %rdx	#, tmp116
	movq	(%rax,%rdx,8), %rdx	# _29->elms, D.19774
	movq	-8(%rbp), %rax	# ptr, tmp117
	movl	44(%rax), %eax	# ptr_3->index, D.19777
	andl	$63, %eax	#, D.19777
	movl	%eax, %ecx	# D.19777, tmp132
	shrq	%cl, %rdx	# tmp132, D.19774
	movq	%rdx, %rax	# D.19774, D.19774
	andl	$1, %eax	#, D.19774
	testq	%rax, %rax	# D.19774
	je	.L1219	#,
	.loc 1 6977 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.1043
	movl	-16(%rbp), %edx	# x, tmp119
	movslq	%edx, %rdx	# tmp119, tmp118
	addq	$4, %rdx	#, tmp120
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.1043_38->data.bb, D.19779
	movq	-8(%rbp), %rax	# ptr, tmp121
	movq	%rdx, %rsi	# D.19779,
	movq	%rax, %rdi	# tmp121,
	call	delete_store	#
.L1219:
	.loc 1 6975 0
	addl	$1, -16(%rbp)	#, x
.L1218:
	.loc 1 6975 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.1044
	cmpl	%eax, -16(%rbp)	# n_basic_blocks.1044, x
	jl	.L1220	#,
	.loc 1 6979 0 is_stmt 1
	movl	$0, -16(%rbp)	#, x
	jmp	.L1221	#
.L1223:
	.loc 1 6980 0
	movq	pre_insert_map(%rip), %rax	# pre_insert_map, pre_insert_map.1045
	movl	-16(%rbp), %edx	# x, tmp122
	movslq	%edx, %rdx	# tmp122, D.19774
	salq	$3, %rdx	#, D.19774
	addq	%rdx, %rax	# D.19774, D.19775
	movq	(%rax), %rax	# *_47, D.19776
	movq	-8(%rbp), %rdx	# ptr, tmp123
	movl	44(%rdx), %edx	# ptr_3->index, D.19777
	shrl	$6, %edx	#, D.19778
	movl	%edx, %edx	# D.19778, tmp124
	addq	$2, %rdx	#, tmp125
	movq	(%rax,%rdx,8), %rdx	# _48->elms, D.19774
	movq	-8(%rbp), %rax	# ptr, tmp126
	movl	44(%rax), %eax	# ptr_3->index, D.19777
	andl	$63, %eax	#, D.19777
	movl	%eax, %ecx	# D.19777, tmp134
	shrq	%cl, %rdx	# tmp134, D.19774
	movq	%rdx, %rax	# D.19774, D.19774
	andl	$1, %eax	#, D.19774
	testq	%rax, %rax	# D.19774
	je	.L1222	#,
	.loc 1 6981 0
	movq	edge_list(%rip), %rax	# edge_list, edge_list.1046
	movq	8(%rax), %rax	# edge_list.1046_57->index_to_edge, D.19780
	movl	-16(%rbp), %edx	# x, tmp127
	movslq	%edx, %rdx	# tmp127, D.19774
	salq	$3, %rdx	#, D.19774
	addq	%rdx, %rax	# D.19774, D.19780
	movq	(%rax), %rdx	# *_61, D.19781
	movq	-8(%rbp), %rax	# ptr, tmp128
	movq	%rdx, %rsi	# D.19781,
	movq	%rax, %rdi	# tmp128,
	call	insert_store	#
	orl	%eax, -12(%rbp)	# D.19777, update_flow
.L1222:
	.loc 1 6979 0
	addl	$1, -16(%rbp)	#, x
.L1221:
	.loc 1 6979 0 is_stmt 0 discriminator 1
	movq	edge_list(%rip), %rax	# edge_list, edge_list.1047
	movl	4(%rax), %eax	# edge_list.1047_42->num_edges, D.19777
	cmpl	-16(%rbp), %eax	# x, D.19777
	jg	.L1223	#,
	.loc 1 6973 0 is_stmt 1
	movq	-8(%rbp), %rax	# ptr, tmp129
	movq	%rax, %rdi	# tmp129,
	call	next_ls_expr	#
	movq	%rax, -8(%rbp)	# tmp130, ptr
.L1217:
	.loc 1 6973 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L1224	#,
	.loc 1 6984 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, update_flow
	je	.L1225	#,
	.loc 1 6985 0
	call	commit_edge_insertions	#
.L1225:
	.loc 1 6987 0
	call	free_store_memory	#
	.loc 1 6988 0
	movq	edge_list(%rip), %rax	# edge_list, edge_list.1048
	movq	%rax, %rdi	# edge_list.1048,
	call	free_edge_list	#
	.loc 1 6989 0
	call	remove_fake_edges	#
	.loc 1 6990 0
	call	end_alias_analysis	#
.L1213:
	.loc 1 6991 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	store_motion, .-store_motion
	.local	test_insn.12084
	.comm	test_insn.12084,8,8
	.section	.rodata
	.type	__FUNCTION__.12223, @object
	.size	__FUNCTION__.12223, 12
__FUNCTION__.12223:
	.string	"hash_expr_1"
	.type	__FUNCTION__.12271, @object
	.size	__FUNCTION__.12271, 13
__FUNCTION__.12271:
	.string	"expr_equiv_p"
	.align 16
	.type	__FUNCTION__.12309, @object
	.size	__FUNCTION__.12309, 20
__FUNCTION__.12309:
	.string	"insert_set_in_table"
	.type	__FUNCTION__.12714, @object
	.size	__FUNCTION__.12714, 15
__FUNCTION__.12714:
	.string	"computing_insn"
	.align 16
	.type	__FUNCTION__.12720, @object
	.size	__FUNCTION__.12720, 19
__FUNCTION__.12720:
	.string	"def_reaches_here_p"
	.align 16
	.type	__FUNCTION__.12743, @object
	.size	__FUNCTION__.12743, 18
__FUNCTION__.12743:
	.string	"handle_avail_expr"
	.type	__FUNCTION__.12869, @object
	.size	__FUNCTION__.12869, 15
__FUNCTION__.12869:
	.string	"find_avail_set"
	.type	__FUNCTION__.12892, @object
	.size	__FUNCTION__.12892, 11
__FUNCTION__.12892:
	.string	"cprop_insn"
	.align 16
	.type	__FUNCTION__.12972, @object
	.size	__FUNCTION__.12972, 20
__FUNCTION__.12972:
	.string	"process_insert_insn"
	.align 16
	.type	__FUNCTION__.12984, @object
	.size	__FUNCTION__.12984, 19
__FUNCTION__.12984:
	.string	"insert_insn_end_bb"
	.align 16
	.type	__FUNCTION__.13032, @object
	.size	__FUNCTION__.13032, 21
__FUNCTION__.13032:
	.string	"pre_insert_copy_insn"
	.type	__FUNCTION__.13065, @object
	.size	__FUNCTION__.13065, 11
__FUNCTION__.13065:
	.string	"pre_delete"
	.type	__FUNCTION__.13252, @object
	.size	__FUNCTION__.13252, 11
__FUNCTION__.13252:
	.string	"hoist_code"
	.type	__FUNCTION__.13517, @object
	.size	__FUNCTION__.13517, 13
__FUNCTION__.13517:
	.string	"insert_store"
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
	.file 15 "sbitmap.h"
	.file 16 "function.h"
	.file 17 "obstack.h"
	.file 18 "params.h"
	.file 19 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x62d7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF980
	.byte	0x1
	.long	.LASF981
	.long	.LASF982
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
	.long	0x266
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xd43
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
	.long	0xd53
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
	.long	.LASF983
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF100
	.byte	0x4
	.byte	0x4
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
	.uleb128 0xe
	.long	.LASF43
	.byte	0x1c
	.byte	0x4
	.value	0x683
	.long	0x25a
	.uleb128 0xf
	.long	.LASF44
	.byte	0x4
	.value	0x684
	.long	0x139
	.byte	0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x4
	.value	0x685
	.long	0x139
	.byte	0x4
	.uleb128 0xf
	.long	.LASF46
	.byte	0x4
	.value	0x686
	.long	0x139
	.byte	0x8
	.uleb128 0xf
	.long	.LASF47
	.byte	0x4
	.value	0x687
	.long	0x139
	.byte	0xc
	.uleb128 0xf
	.long	.LASF48
	.byte	0x4
	.value	0x688
	.long	0x139
	.byte	0x10
	.uleb128 0xf
	.long	.LASF49
	.byte	0x4
	.value	0x689
	.long	0x139
	.byte	0x14
	.uleb128 0xf
	.long	.LASF50
	.byte	0x4
	.value	0x68a
	.long	0x139
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF51
	.byte	0x4
	.value	0x68b
	.long	0x1f1
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF52
	.uleb128 0x11
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x7
	.long	.LASF54
	.byte	0x5
	.byte	0xd4
	.long	0x281
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF56
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF57
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF58
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF59
	.uleb128 0x7
	.long	.LASF60
	.byte	0x6
	.byte	0x8c
	.long	0x26f
	.uleb128 0x7
	.long	.LASF61
	.byte	0x6
	.byte	0x8d
	.long	0x26f
	.uleb128 0x3
	.byte	0x8
	.long	0x2c0
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF62
	.uleb128 0x7
	.long	.LASF63
	.byte	0x7
	.byte	0x30
	.long	0x2d2
	.uleb128 0x4
	.long	.LASF64
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x453
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0xf7
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0xfc
	.long	0x2ba
	.byte	0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0xfd
	.long	0x2ba
	.byte	0x10
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0xfe
	.long	0x2ba
	.byte	0x18
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0xff
	.long	0x2ba
	.byte	0x20
	.uleb128 0xf
	.long	.LASF70
	.byte	0x8
	.value	0x100
	.long	0x2ba
	.byte	0x28
	.uleb128 0xf
	.long	.LASF71
	.byte	0x8
	.value	0x101
	.long	0x2ba
	.byte	0x30
	.uleb128 0xf
	.long	.LASF72
	.byte	0x8
	.value	0x102
	.long	0x2ba
	.byte	0x38
	.uleb128 0xf
	.long	.LASF73
	.byte	0x8
	.value	0x103
	.long	0x2ba
	.byte	0x40
	.uleb128 0xf
	.long	.LASF74
	.byte	0x8
	.value	0x105
	.long	0x2ba
	.byte	0x48
	.uleb128 0xf
	.long	.LASF75
	.byte	0x8
	.value	0x106
	.long	0x2ba
	.byte	0x50
	.uleb128 0xf
	.long	.LASF76
	.byte	0x8
	.value	0x107
	.long	0x2ba
	.byte	0x58
	.uleb128 0xf
	.long	.LASF77
	.byte	0x8
	.value	0x109
	.long	0x49b
	.byte	0x60
	.uleb128 0xf
	.long	.LASF78
	.byte	0x8
	.value	0x10b
	.long	0x4a1
	.byte	0x68
	.uleb128 0xf
	.long	.LASF79
	.byte	0x8
	.value	0x10d
	.long	0x139
	.byte	0x70
	.uleb128 0xf
	.long	.LASF80
	.byte	0x8
	.value	0x111
	.long	0x139
	.byte	0x74
	.uleb128 0xf
	.long	.LASF81
	.byte	0x8
	.value	0x113
	.long	0x2a4
	.byte	0x78
	.uleb128 0xf
	.long	.LASF82
	.byte	0x8
	.value	0x117
	.long	0x28f
	.byte	0x80
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x118
	.long	0x296
	.byte	0x82
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x119
	.long	0x4a7
	.byte	0x83
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x11d
	.long	0x4b7
	.byte	0x88
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x126
	.long	0x2af
	.byte	0x90
	.uleb128 0xf
	.long	.LASF87
	.byte	0x8
	.value	0x12f
	.long	0x26d
	.byte	0x98
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.value	0x130
	.long	0x26d
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x131
	.long	0x26d
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF90
	.byte	0x8
	.value	0x132
	.long	0x26d
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF91
	.byte	0x8
	.value	0x133
	.long	0x276
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF92
	.byte	0x8
	.value	0x135
	.long	0x139
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x8
	.value	0x137
	.long	0x4bd
	.byte	0xc4
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x463
	.uleb128 0x13
	.long	0x140
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.long	.LASF984
	.byte	0x8
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF94
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x49b
	.uleb128 0x8
	.long	.LASF95
	.byte	0x8
	.byte	0xa2
	.long	0x49b
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x8
	.byte	0xa3
	.long	0x4a1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF97
	.byte	0x8
	.byte	0xa7
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x46a
	.uleb128 0x3
	.byte	0x8
	.long	0x2d2
	.uleb128 0x12
	.long	0x2c0
	.long	0x4b7
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x463
	.uleb128 0x12
	.long	0x2c0
	.long	0x4cd
	.uleb128 0x13
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4d3
	.uleb128 0x15
	.long	0x2c0
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF98
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF99
	.uleb128 0x3
	.byte	0x8
	.long	0x139
	.uleb128 0x16
	.long	.LASF101
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x661
	.uleb128 0xd
	.long	.LASF102
	.sleb128 0
	.uleb128 0xd
	.long	.LASF103
	.sleb128 1
	.uleb128 0xd
	.long	.LASF104
	.sleb128 2
	.uleb128 0xd
	.long	.LASF105
	.sleb128 3
	.uleb128 0xd
	.long	.LASF106
	.sleb128 4
	.uleb128 0xd
	.long	.LASF107
	.sleb128 5
	.uleb128 0xd
	.long	.LASF108
	.sleb128 6
	.uleb128 0xd
	.long	.LASF109
	.sleb128 7
	.uleb128 0xd
	.long	.LASF110
	.sleb128 8
	.uleb128 0xd
	.long	.LASF111
	.sleb128 9
	.uleb128 0xd
	.long	.LASF112
	.sleb128 10
	.uleb128 0xd
	.long	.LASF113
	.sleb128 11
	.uleb128 0xd
	.long	.LASF114
	.sleb128 12
	.uleb128 0xd
	.long	.LASF115
	.sleb128 13
	.uleb128 0xd
	.long	.LASF116
	.sleb128 14
	.uleb128 0xd
	.long	.LASF117
	.sleb128 15
	.uleb128 0xd
	.long	.LASF118
	.sleb128 16
	.uleb128 0xd
	.long	.LASF119
	.sleb128 17
	.uleb128 0xd
	.long	.LASF120
	.sleb128 18
	.uleb128 0xd
	.long	.LASF121
	.sleb128 19
	.uleb128 0xd
	.long	.LASF122
	.sleb128 20
	.uleb128 0xd
	.long	.LASF123
	.sleb128 21
	.uleb128 0xd
	.long	.LASF124
	.sleb128 22
	.uleb128 0xd
	.long	.LASF125
	.sleb128 23
	.uleb128 0xd
	.long	.LASF126
	.sleb128 24
	.uleb128 0xd
	.long	.LASF127
	.sleb128 25
	.uleb128 0xd
	.long	.LASF128
	.sleb128 26
	.uleb128 0xd
	.long	.LASF129
	.sleb128 27
	.uleb128 0xd
	.long	.LASF130
	.sleb128 28
	.uleb128 0xd
	.long	.LASF131
	.sleb128 29
	.uleb128 0xd
	.long	.LASF132
	.sleb128 30
	.uleb128 0xd
	.long	.LASF133
	.sleb128 31
	.uleb128 0xd
	.long	.LASF134
	.sleb128 32
	.uleb128 0xd
	.long	.LASF135
	.sleb128 33
	.uleb128 0xd
	.long	.LASF136
	.sleb128 34
	.uleb128 0xd
	.long	.LASF137
	.sleb128 35
	.uleb128 0xd
	.long	.LASF138
	.sleb128 36
	.uleb128 0xd
	.long	.LASF139
	.sleb128 37
	.uleb128 0xd
	.long	.LASF140
	.sleb128 38
	.uleb128 0xd
	.long	.LASF141
	.sleb128 39
	.uleb128 0xd
	.long	.LASF142
	.sleb128 40
	.uleb128 0xd
	.long	.LASF143
	.sleb128 41
	.uleb128 0xd
	.long	.LASF144
	.sleb128 42
	.uleb128 0xd
	.long	.LASF145
	.sleb128 43
	.uleb128 0xd
	.long	.LASF146
	.sleb128 44
	.uleb128 0xd
	.long	.LASF147
	.sleb128 45
	.uleb128 0xd
	.long	.LASF148
	.sleb128 46
	.uleb128 0xd
	.long	.LASF149
	.sleb128 47
	.uleb128 0xd
	.long	.LASF150
	.sleb128 48
	.uleb128 0xd
	.long	.LASF151
	.sleb128 49
	.uleb128 0xd
	.long	.LASF152
	.sleb128 50
	.uleb128 0xd
	.long	.LASF153
	.sleb128 51
	.uleb128 0xd
	.long	.LASF154
	.sleb128 52
	.uleb128 0xd
	.long	.LASF155
	.sleb128 53
	.uleb128 0xd
	.long	.LASF156
	.sleb128 54
	.uleb128 0xd
	.long	.LASF157
	.sleb128 55
	.uleb128 0xd
	.long	.LASF158
	.sleb128 56
	.uleb128 0xd
	.long	.LASF159
	.sleb128 57
	.uleb128 0xd
	.long	.LASF160
	.sleb128 58
	.uleb128 0xd
	.long	.LASF161
	.sleb128 59
	.byte	0
	.uleb128 0x16
	.long	.LASF162
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x6aa
	.uleb128 0xd
	.long	.LASF163
	.sleb128 0
	.uleb128 0xd
	.long	.LASF164
	.sleb128 1
	.uleb128 0xd
	.long	.LASF165
	.sleb128 2
	.uleb128 0xd
	.long	.LASF166
	.sleb128 3
	.uleb128 0xd
	.long	.LASF167
	.sleb128 4
	.uleb128 0xd
	.long	.LASF168
	.sleb128 5
	.uleb128 0xd
	.long	.LASF169
	.sleb128 6
	.uleb128 0xd
	.long	.LASF170
	.sleb128 7
	.uleb128 0xd
	.long	.LASF171
	.sleb128 8
	.uleb128 0xd
	.long	.LASF172
	.sleb128 9
	.byte	0
	.uleb128 0x16
	.long	.LASF173
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xaa6
	.uleb128 0xd
	.long	.LASF174
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF175
	.sleb128 2
	.uleb128 0xd
	.long	.LASF176
	.sleb128 3
	.uleb128 0xd
	.long	.LASF177
	.sleb128 4
	.uleb128 0xd
	.long	.LASF178
	.sleb128 5
	.uleb128 0xd
	.long	.LASF179
	.sleb128 6
	.uleb128 0xd
	.long	.LASF180
	.sleb128 7
	.uleb128 0xd
	.long	.LASF181
	.sleb128 8
	.uleb128 0xd
	.long	.LASF182
	.sleb128 9
	.uleb128 0xd
	.long	.LASF183
	.sleb128 10
	.uleb128 0xd
	.long	.LASF184
	.sleb128 11
	.uleb128 0xd
	.long	.LASF185
	.sleb128 12
	.uleb128 0xd
	.long	.LASF186
	.sleb128 13
	.uleb128 0xd
	.long	.LASF187
	.sleb128 14
	.uleb128 0xd
	.long	.LASF188
	.sleb128 15
	.uleb128 0xd
	.long	.LASF189
	.sleb128 16
	.uleb128 0xd
	.long	.LASF190
	.sleb128 17
	.uleb128 0xd
	.long	.LASF191
	.sleb128 18
	.uleb128 0xd
	.long	.LASF192
	.sleb128 19
	.uleb128 0xd
	.long	.LASF193
	.sleb128 20
	.uleb128 0xd
	.long	.LASF194
	.sleb128 21
	.uleb128 0xd
	.long	.LASF195
	.sleb128 22
	.uleb128 0xd
	.long	.LASF196
	.sleb128 23
	.uleb128 0xd
	.long	.LASF197
	.sleb128 24
	.uleb128 0xd
	.long	.LASF198
	.sleb128 25
	.uleb128 0xd
	.long	.LASF199
	.sleb128 26
	.uleb128 0xd
	.long	.LASF200
	.sleb128 27
	.uleb128 0xd
	.long	.LASF201
	.sleb128 28
	.uleb128 0xd
	.long	.LASF202
	.sleb128 29
	.uleb128 0xd
	.long	.LASF203
	.sleb128 30
	.uleb128 0xd
	.long	.LASF204
	.sleb128 31
	.uleb128 0xd
	.long	.LASF205
	.sleb128 32
	.uleb128 0xd
	.long	.LASF206
	.sleb128 33
	.uleb128 0xd
	.long	.LASF207
	.sleb128 34
	.uleb128 0xd
	.long	.LASF208
	.sleb128 35
	.uleb128 0xd
	.long	.LASF209
	.sleb128 36
	.uleb128 0xd
	.long	.LASF210
	.sleb128 37
	.uleb128 0xd
	.long	.LASF211
	.sleb128 38
	.uleb128 0xd
	.long	.LASF212
	.sleb128 39
	.uleb128 0xd
	.long	.LASF213
	.sleb128 40
	.uleb128 0xd
	.long	.LASF214
	.sleb128 41
	.uleb128 0xd
	.long	.LASF215
	.sleb128 42
	.uleb128 0xd
	.long	.LASF216
	.sleb128 43
	.uleb128 0xd
	.long	.LASF217
	.sleb128 44
	.uleb128 0xd
	.long	.LASF218
	.sleb128 45
	.uleb128 0xd
	.long	.LASF219
	.sleb128 46
	.uleb128 0x17
	.string	"SET"
	.sleb128 47
	.uleb128 0x17
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF220
	.sleb128 49
	.uleb128 0xd
	.long	.LASF221
	.sleb128 50
	.uleb128 0xd
	.long	.LASF222
	.sleb128 51
	.uleb128 0xd
	.long	.LASF223
	.sleb128 52
	.uleb128 0xd
	.long	.LASF224
	.sleb128 53
	.uleb128 0xd
	.long	.LASF225
	.sleb128 54
	.uleb128 0xd
	.long	.LASF226
	.sleb128 55
	.uleb128 0xd
	.long	.LASF227
	.sleb128 56
	.uleb128 0xd
	.long	.LASF228
	.sleb128 57
	.uleb128 0xd
	.long	.LASF229
	.sleb128 58
	.uleb128 0x17
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF230
	.sleb128 60
	.uleb128 0x17
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF231
	.sleb128 62
	.uleb128 0xd
	.long	.LASF232
	.sleb128 63
	.uleb128 0xd
	.long	.LASF233
	.sleb128 64
	.uleb128 0xd
	.long	.LASF234
	.sleb128 65
	.uleb128 0x17
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF235
	.sleb128 67
	.uleb128 0xd
	.long	.LASF236
	.sleb128 68
	.uleb128 0x17
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF237
	.sleb128 70
	.uleb128 0xd
	.long	.LASF238
	.sleb128 71
	.uleb128 0xd
	.long	.LASF239
	.sleb128 72
	.uleb128 0xd
	.long	.LASF240
	.sleb128 73
	.uleb128 0xd
	.long	.LASF241
	.sleb128 74
	.uleb128 0xd
	.long	.LASF242
	.sleb128 75
	.uleb128 0xd
	.long	.LASF243
	.sleb128 76
	.uleb128 0x17
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF244
	.sleb128 78
	.uleb128 0x17
	.string	"DIV"
	.sleb128 79
	.uleb128 0x17
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF245
	.sleb128 81
	.uleb128 0xd
	.long	.LASF246
	.sleb128 82
	.uleb128 0x17
	.string	"AND"
	.sleb128 83
	.uleb128 0x17
	.string	"IOR"
	.sleb128 84
	.uleb128 0x17
	.string	"XOR"
	.sleb128 85
	.uleb128 0x17
	.string	"NOT"
	.sleb128 86
	.uleb128 0xd
	.long	.LASF247
	.sleb128 87
	.uleb128 0xd
	.long	.LASF248
	.sleb128 88
	.uleb128 0xd
	.long	.LASF249
	.sleb128 89
	.uleb128 0xd
	.long	.LASF250
	.sleb128 90
	.uleb128 0xd
	.long	.LASF251
	.sleb128 91
	.uleb128 0xd
	.long	.LASF252
	.sleb128 92
	.uleb128 0xd
	.long	.LASF253
	.sleb128 93
	.uleb128 0xd
	.long	.LASF254
	.sleb128 94
	.uleb128 0xd
	.long	.LASF255
	.sleb128 95
	.uleb128 0xd
	.long	.LASF256
	.sleb128 96
	.uleb128 0xd
	.long	.LASF257
	.sleb128 97
	.uleb128 0xd
	.long	.LASF258
	.sleb128 98
	.uleb128 0xd
	.long	.LASF259
	.sleb128 99
	.uleb128 0xd
	.long	.LASF260
	.sleb128 100
	.uleb128 0xd
	.long	.LASF261
	.sleb128 101
	.uleb128 0x17
	.string	"NE"
	.sleb128 102
	.uleb128 0x17
	.string	"EQ"
	.sleb128 103
	.uleb128 0x17
	.string	"GE"
	.sleb128 104
	.uleb128 0x17
	.string	"GT"
	.sleb128 105
	.uleb128 0x17
	.string	"LE"
	.sleb128 106
	.uleb128 0x17
	.string	"LT"
	.sleb128 107
	.uleb128 0x17
	.string	"GEU"
	.sleb128 108
	.uleb128 0x17
	.string	"GTU"
	.sleb128 109
	.uleb128 0x17
	.string	"LEU"
	.sleb128 110
	.uleb128 0x17
	.string	"LTU"
	.sleb128 111
	.uleb128 0xd
	.long	.LASF262
	.sleb128 112
	.uleb128 0xd
	.long	.LASF263
	.sleb128 113
	.uleb128 0xd
	.long	.LASF264
	.sleb128 114
	.uleb128 0xd
	.long	.LASF265
	.sleb128 115
	.uleb128 0xd
	.long	.LASF266
	.sleb128 116
	.uleb128 0xd
	.long	.LASF267
	.sleb128 117
	.uleb128 0xd
	.long	.LASF268
	.sleb128 118
	.uleb128 0xd
	.long	.LASF269
	.sleb128 119
	.uleb128 0xd
	.long	.LASF270
	.sleb128 120
	.uleb128 0xd
	.long	.LASF271
	.sleb128 121
	.uleb128 0xd
	.long	.LASF272
	.sleb128 122
	.uleb128 0xd
	.long	.LASF273
	.sleb128 123
	.uleb128 0xd
	.long	.LASF274
	.sleb128 124
	.uleb128 0xd
	.long	.LASF275
	.sleb128 125
	.uleb128 0x17
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF276
	.sleb128 127
	.uleb128 0xd
	.long	.LASF277
	.sleb128 128
	.uleb128 0x17
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF278
	.sleb128 130
	.uleb128 0x17
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF279
	.sleb128 132
	.uleb128 0xd
	.long	.LASF280
	.sleb128 133
	.uleb128 0xd
	.long	.LASF281
	.sleb128 134
	.uleb128 0xd
	.long	.LASF282
	.sleb128 135
	.uleb128 0xd
	.long	.LASF283
	.sleb128 136
	.uleb128 0xd
	.long	.LASF284
	.sleb128 137
	.uleb128 0xd
	.long	.LASF285
	.sleb128 138
	.uleb128 0xd
	.long	.LASF286
	.sleb128 139
	.uleb128 0xd
	.long	.LASF287
	.sleb128 140
	.uleb128 0xd
	.long	.LASF288
	.sleb128 141
	.uleb128 0xd
	.long	.LASF289
	.sleb128 142
	.uleb128 0xd
	.long	.LASF290
	.sleb128 143
	.uleb128 0xd
	.long	.LASF291
	.sleb128 144
	.uleb128 0xd
	.long	.LASF292
	.sleb128 145
	.uleb128 0xd
	.long	.LASF293
	.sleb128 146
	.uleb128 0xd
	.long	.LASF294
	.sleb128 147
	.uleb128 0xd
	.long	.LASF295
	.sleb128 148
	.uleb128 0xd
	.long	.LASF296
	.sleb128 149
	.uleb128 0xd
	.long	.LASF297
	.sleb128 150
	.uleb128 0xd
	.long	.LASF298
	.sleb128 151
	.uleb128 0x17
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF299
	.sleb128 153
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xb27
	.uleb128 0x5
	.long	.LASF300
	.byte	0x2
	.byte	0x47
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF301
	.byte	0x2
	.byte	0x49
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF302
	.byte	0x2
	.byte	0x4a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF303
	.byte	0x2
	.byte	0x4c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF304
	.byte	0x2
	.byte	0x4e
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF305
	.byte	0x2
	.byte	0x50
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF306
	.byte	0x2
	.byte	0x53
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF307
	.byte	0x2
	.byte	0x55
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF308
	.byte	0x2
	.byte	0x56
	.long	0xaa6
	.uleb128 0x18
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xb77
	.uleb128 0x8
	.long	.LASF309
	.byte	0x2
	.byte	0x5e
	.long	0x26f
	.byte	0
	.uleb128 0x8
	.long	.LASF310
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF311
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF312
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF313
	.byte	0x2
	.byte	0x62
	.long	0x266
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF314
	.byte	0x2
	.byte	0x63
	.long	0xb32
	.uleb128 0x19
	.long	.LASF414
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xc1d
	.uleb128 0x1a
	.long	.LASF315
	.byte	0x2
	.byte	0x69
	.long	0x26f
	.uleb128 0x1a
	.long	.LASF316
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x1a
	.long	.LASF317
	.byte	0x2
	.byte	0x6b
	.long	0x266
	.uleb128 0x1a
	.long	.LASF318
	.byte	0x2
	.byte	0x6c
	.long	0x4cd
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1a
	.long	.LASF319
	.byte	0x2
	.byte	0x6f
	.long	0x4ec
	.uleb128 0x1a
	.long	.LASF320
	.byte	0x2
	.byte	0x70
	.long	0xb27
	.uleb128 0x1a
	.long	.LASF321
	.byte	0x2
	.byte	0x71
	.long	0xc22
	.uleb128 0x1a
	.long	.LASF322
	.byte	0x2
	.byte	0x72
	.long	0xc59
	.uleb128 0x1a
	.long	.LASF323
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1b
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xd2c
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x2
	.byte	0x75
	.long	0xd32
	.byte	0
	.uleb128 0x1c
	.long	.LASF423
	.uleb128 0x3
	.byte	0x8
	.long	0xc1d
	.uleb128 0x4
	.long	.LASF325
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xc59
	.uleb128 0x8
	.long	.LASF326
	.byte	0xa
	.byte	0x35
	.long	0x12da
	.byte	0
	.uleb128 0x8
	.long	.LASF327
	.byte	0xa
	.byte	0x36
	.long	0x12da
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x37
	.long	0x266
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc28
	.uleb128 0x4
	.long	.LASF329
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xd2c
	.uleb128 0x8
	.long	.LASF330
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
	.long	.LASF331
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF333
	.byte	0xb
	.byte	0xb7
	.long	0x13ce
	.byte	0x20
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0xb7
	.long	0x13ce
	.byte	0x28
	.uleb128 0x8
	.long	.LASF335
	.byte	0xb
	.byte	0xbc
	.long	0x1339
	.byte	0x30
	.uleb128 0x8
	.long	.LASF336
	.byte	0xb
	.byte	0xc0
	.long	0x1339
	.byte	0x38
	.uleb128 0x8
	.long	.LASF337
	.byte	0xb
	.byte	0xc6
	.long	0x1339
	.byte	0x40
	.uleb128 0x8
	.long	.LASF338
	.byte	0xb
	.byte	0xc8
	.long	0x1339
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x26d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF339
	.byte	0xb
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF340
	.byte	0xb
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0xd4
	.long	0x1344
	.byte	0x60
	.uleb128 0x8
	.long	.LASF342
	.byte	0xb
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc5f
	.uleb128 0x3
	.byte	0x8
	.long	0xb77
	.uleb128 0x7
	.long	.LASF344
	.byte	0x2
	.byte	0x76
	.long	0xb82
	.uleb128 0x12
	.long	0xd38
	.long	0xd53
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2d
	.long	0xd63
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF345
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xe25
	.uleb128 0xd
	.long	.LASF346
	.sleb128 1
	.uleb128 0xd
	.long	.LASF347
	.sleb128 2
	.uleb128 0xd
	.long	.LASF348
	.sleb128 3
	.uleb128 0xd
	.long	.LASF349
	.sleb128 4
	.uleb128 0xd
	.long	.LASF350
	.sleb128 5
	.uleb128 0xd
	.long	.LASF351
	.sleb128 6
	.uleb128 0xd
	.long	.LASF352
	.sleb128 7
	.uleb128 0xd
	.long	.LASF353
	.sleb128 8
	.uleb128 0xd
	.long	.LASF354
	.sleb128 9
	.uleb128 0xd
	.long	.LASF355
	.sleb128 10
	.uleb128 0xd
	.long	.LASF356
	.sleb128 11
	.uleb128 0xd
	.long	.LASF357
	.sleb128 12
	.uleb128 0xd
	.long	.LASF358
	.sleb128 13
	.uleb128 0xd
	.long	.LASF359
	.sleb128 14
	.uleb128 0xd
	.long	.LASF360
	.sleb128 15
	.uleb128 0xd
	.long	.LASF361
	.sleb128 16
	.uleb128 0xd
	.long	.LASF362
	.sleb128 17
	.uleb128 0xd
	.long	.LASF363
	.sleb128 18
	.uleb128 0xd
	.long	.LASF364
	.sleb128 19
	.uleb128 0xd
	.long	.LASF365
	.sleb128 20
	.uleb128 0xd
	.long	.LASF366
	.sleb128 21
	.uleb128 0xd
	.long	.LASF367
	.sleb128 22
	.uleb128 0xd
	.long	.LASF368
	.sleb128 23
	.uleb128 0xd
	.long	.LASF369
	.sleb128 24
	.uleb128 0xd
	.long	.LASF370
	.sleb128 25
	.uleb128 0xd
	.long	.LASF371
	.sleb128 26
	.uleb128 0xd
	.long	.LASF372
	.sleb128 27
	.uleb128 0xd
	.long	.LASF373
	.sleb128 28
	.uleb128 0xd
	.long	.LASF374
	.sleb128 29
	.uleb128 0xd
	.long	.LASF375
	.sleb128 30
	.byte	0
	.uleb128 0xc
	.long	.LASF376
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xed4
	.uleb128 0xd
	.long	.LASF377
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF378
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF379
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF380
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF381
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF382
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF383
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF384
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF385
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF386
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF387
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF388
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF389
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF390
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF391
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF392
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF393
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF394
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF395
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF396
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF397
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF398
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF399
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xc
	.long	.LASF400
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xf30
	.uleb128 0xd
	.long	.LASF401
	.sleb128 0
	.uleb128 0xd
	.long	.LASF402
	.sleb128 1
	.uleb128 0xd
	.long	.LASF403
	.sleb128 2
	.uleb128 0xd
	.long	.LASF404
	.sleb128 3
	.uleb128 0xd
	.long	.LASF405
	.sleb128 4
	.uleb128 0xd
	.long	.LASF406
	.sleb128 5
	.uleb128 0xd
	.long	.LASF407
	.sleb128 6
	.uleb128 0xd
	.long	.LASF408
	.sleb128 7
	.uleb128 0xd
	.long	.LASF409
	.sleb128 8
	.uleb128 0xd
	.long	.LASF410
	.sleb128 9
	.uleb128 0xd
	.long	.LASF411
	.sleb128 10
	.uleb128 0xd
	.long	.LASF412
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF413
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0xf55
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
	.long	0x266
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF415
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0x103a
	.uleb128 0x1b
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x4a7
	.uleb128 0x1b
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0x103a
	.uleb128 0x1b
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0x104a
	.uleb128 0x1b
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0x105a
	.uleb128 0x1b
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0x106a
	.uleb128 0x1b
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0x107a
	.uleb128 0x1b
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0x108a
	.uleb128 0x1b
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0x109a
	.uleb128 0x1a
	.long	.LASF416
	.byte	0xc
	.byte	0x43
	.long	0x108a
	.uleb128 0x1a
	.long	.LASF417
	.byte	0xc
	.byte	0x44
	.long	0x109a
	.uleb128 0x1a
	.long	.LASF418
	.byte	0xc
	.byte	0x45
	.long	0x10aa
	.uleb128 0x1a
	.long	.LASF419
	.byte	0xc
	.byte	0x46
	.long	0x10ba
	.uleb128 0x1b
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0x10ca
	.uleb128 0x1a
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0x10da
	.uleb128 0x1a
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0x10ea
	.uleb128 0x1a
	.long	.LASF420
	.byte	0xc
	.byte	0x4a
	.long	0x10fa
	.uleb128 0x1a
	.long	.LASF421
	.byte	0xc
	.byte	0x4b
	.long	0x110a
	.uleb128 0x1b
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0x1125
	.uleb128 0x1a
	.long	.LASF422
	.byte	0xc
	.byte	0x4d
	.long	0x11cc
	.uleb128 0x1b
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0x11dc
	.uleb128 0x1b
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0x11ec
	.byte	0
	.uleb128 0x12
	.long	0x288
	.long	0x104a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x29d
	.long	0x105a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x28f
	.long	0x106a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x139
	.long	0x107a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x266
	.long	0x108a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x26f
	.long	0x109a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x281
	.long	0x10aa
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x26d
	.long	0x10ba
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2ba
	.long	0x10ca
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x38
	.long	0x10da
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xf8
	.long	0x10ea
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x12e
	.long	0x10fa
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xc59
	.long	0x110a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x111a
	.long	0x111a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1120
	.uleb128 0x1c
	.long	.LASF424
	.uleb128 0x12
	.long	0x1135
	.long	0x1135
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x113b
	.uleb128 0x4
	.long	.LASF425
	.byte	0x2c
	.byte	0xd
	.byte	0x2d
	.long	0x11cc
	.uleb128 0x8
	.long	.LASF426
	.byte	0xd
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF427
	.byte	0xd
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF428
	.byte	0xd
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF429
	.byte	0xd
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF430
	.byte	0xd
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF431
	.byte	0xd
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF432
	.byte	0xd
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF433
	.byte	0xd
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF434
	.byte	0xd
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF435
	.byte	0xd
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF436
	.byte	0xd
	.byte	0x3d
	.long	0x2c0
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.long	0xf30
	.long	0x11dc
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xd2c
	.long	0x11ec
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x11fc
	.long	0x11fc
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1202
	.uleb128 0x1c
	.long	.LASF437
	.uleb128 0x7
	.long	.LASF438
	.byte	0xc
	.byte	0x50
	.long	0xf55
	.uleb128 0x4
	.long	.LASF439
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x125b
	.uleb128 0x8
	.long	.LASF440
	.byte	0xc
	.byte	0x54
	.long	0x276
	.byte	0
	.uleb128 0x8
	.long	.LASF441
	.byte	0xc
	.byte	0x55
	.long	0x276
	.byte	0x8
	.uleb128 0x8
	.long	.LASF442
	.byte	0xc
	.byte	0x57
	.long	0x276
	.byte	0x10
	.uleb128 0x8
	.long	.LASF443
	.byte	0xc
	.byte	0x58
	.long	0x4cd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF444
	.byte	0xc
	.byte	0x59
	.long	0x1207
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF445
	.byte	0xc
	.byte	0x5a
	.long	0x1266
	.uleb128 0x3
	.byte	0x8
	.long	0x1212
	.uleb128 0x7
	.long	.LASF446
	.byte	0xe
	.byte	0x29
	.long	0x281
	.uleb128 0x15
	.long	0x4cd
	.uleb128 0x4
	.long	.LASF447
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x12b9
	.uleb128 0x8
	.long	.LASF448
	.byte	0xa
	.byte	0x2d
	.long	0x12b9
	.byte	0
	.uleb128 0x8
	.long	.LASF449
	.byte	0xa
	.byte	0x2e
	.long	0x12b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x2f
	.long	0x266
	.byte	0x10
	.uleb128 0x8
	.long	.LASF450
	.byte	0xa
	.byte	0x30
	.long	0x12bf
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x127c
	.uleb128 0x12
	.long	0x281
	.long	0x12cf
	.uleb128 0x13
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF451
	.byte	0xa
	.byte	0x31
	.long	0x127c
	.uleb128 0x3
	.byte	0x8
	.long	0x12cf
	.uleb128 0x7
	.long	.LASF420
	.byte	0xa
	.byte	0x39
	.long	0xc59
	.uleb128 0x4
	.long	.LASF452
	.byte	0x18
	.byte	0xf
	.byte	0x1f
	.long	0x1328
	.uleb128 0x8
	.long	.LASF453
	.byte	0xf
	.byte	0x21
	.long	0x266
	.byte	0
	.uleb128 0x8
	.long	.LASF312
	.byte	0xf
	.byte	0x22
	.long	0x266
	.byte	0x4
	.uleb128 0x8
	.long	.LASF454
	.byte	0xf
	.byte	0x23
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF455
	.byte	0xf
	.byte	0x24
	.long	0x109a
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF456
	.byte	0xf
	.byte	0x25
	.long	0x1333
	.uleb128 0x3
	.byte	0x8
	.long	0x12eb
	.uleb128 0x7
	.long	.LASF457
	.byte	0xb
	.byte	0x21
	.long	0x12e0
	.uleb128 0x7
	.long	.LASF458
	.byte	0xb
	.byte	0x74
	.long	0x26f
	.uleb128 0x4
	.long	.LASF459
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x13c8
	.uleb128 0x8
	.long	.LASF460
	.byte	0xb
	.byte	0x79
	.long	0x13c8
	.byte	0
	.uleb128 0x8
	.long	.LASF461
	.byte	0xb
	.byte	0x79
	.long	0x13c8
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xd2c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF462
	.byte	0xb
	.byte	0x7c
	.long	0xd2c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF463
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x26d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF464
	.byte	0xb
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0x86
	.long	0x1344
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x134f
	.uleb128 0x7
	.long	.LASF465
	.byte	0xb
	.byte	0x88
	.long	0x13c8
	.uleb128 0x7
	.long	.LASF435
	.byte	0xb
	.byte	0xdb
	.long	0xd2c
	.uleb128 0x3
	.byte	0x8
	.long	0x13ce
	.uleb128 0x3
	.byte	0x8
	.long	0x1328
	.uleb128 0xe
	.long	.LASF466
	.byte	0x10
	.byte	0xb
	.value	0x1f0
	.long	0x1425
	.uleb128 0xf
	.long	.LASF467
	.byte	0xb
	.value	0x1f2
	.long	0x139
	.byte	0
	.uleb128 0xf
	.long	.LASF468
	.byte	0xb
	.value	0x1f3
	.long	0x139
	.byte	0x4
	.uleb128 0xf
	.long	.LASF469
	.byte	0xb
	.value	0x1f4
	.long	0x13e4
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF470
	.byte	0x4
	.byte	0xb
	.value	0x2c1
	.long	0x143f
	.uleb128 0xd
	.long	.LASF471
	.sleb128 0
	.uleb128 0xd
	.long	.LASF472
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF473
	.byte	0x18
	.byte	0x10
	.byte	0x16
	.long	0x147c
	.uleb128 0x8
	.long	.LASF474
	.byte	0x10
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF475
	.byte	0x10
	.byte	0x19
	.long	0x4ec
	.byte	0x8
	.uleb128 0x8
	.long	.LASF476
	.byte	0x10
	.byte	0x1a
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF448
	.byte	0x10
	.byte	0x1b
	.long	0x147c
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x143f
	.uleb128 0x4
	.long	.LASF477
	.byte	0x20
	.byte	0x10
	.byte	0x23
	.long	0x14bf
	.uleb128 0x8
	.long	.LASF326
	.byte	0x10
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF478
	.byte	0x10
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF479
	.byte	0x10
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF448
	.byte	0x10
	.byte	0x28
	.long	0x14bf
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1482
	.uleb128 0x4
	.long	.LASF480
	.byte	0x58
	.byte	0x11
	.byte	0xa8
	.long	0x1577
	.uleb128 0x8
	.long	.LASF481
	.byte	0x11
	.byte	0xaa
	.long	0x26f
	.byte	0
	.uleb128 0x8
	.long	.LASF482
	.byte	0x11
	.byte	0xab
	.long	0x1c16
	.byte	0x8
	.uleb128 0x8
	.long	.LASF483
	.byte	0x11
	.byte	0xac
	.long	0x2ba
	.byte	0x10
	.uleb128 0x8
	.long	.LASF484
	.byte	0x11
	.byte	0xad
	.long	0x2ba
	.byte	0x18
	.uleb128 0x8
	.long	.LASF485
	.byte	0x11
	.byte	0xae
	.long	0x2ba
	.byte	0x20
	.uleb128 0x8
	.long	.LASF486
	.byte	0x11
	.byte	0xaf
	.long	0x26f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF487
	.byte	0x11
	.byte	0xb0
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF488
	.byte	0x11
	.byte	0xb5
	.long	0x1c30
	.byte	0x38
	.uleb128 0x8
	.long	.LASF489
	.byte	0x11
	.byte	0xb6
	.long	0x1c46
	.byte	0x40
	.uleb128 0x8
	.long	.LASF490
	.byte	0x11
	.byte	0xb7
	.long	0x26d
	.byte	0x48
	.uleb128 0x5
	.long	.LASF491
	.byte	0x11
	.byte	0xbd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF492
	.byte	0x11
	.byte	0xbe
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF493
	.byte	0x11
	.byte	0xc2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x14c5
	.uleb128 0x4
	.long	.LASF494
	.byte	0x58
	.byte	0x10
	.byte	0x35
	.long	0x1626
	.uleb128 0x8
	.long	.LASF495
	.byte	0x10
	.byte	0x39
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF496
	.byte	0x10
	.byte	0x3c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF497
	.byte	0x10
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF498
	.byte	0x10
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF479
	.byte	0x10
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF477
	.byte	0x10
	.byte	0x4f
	.long	0x14bf
	.byte	0x20
	.uleb128 0x8
	.long	.LASF499
	.byte	0x10
	.byte	0x53
	.long	0x139
	.byte	0x28
	.uleb128 0x8
	.long	.LASF500
	.byte	0x10
	.byte	0x57
	.long	0x139
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF501
	.byte	0x10
	.byte	0x58
	.long	0x4cd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF502
	.byte	0x10
	.byte	0x5e
	.long	0x139
	.byte	0x38
	.uleb128 0x8
	.long	.LASF503
	.byte	0x10
	.byte	0x63
	.long	0x1626
	.byte	0x40
	.uleb128 0x8
	.long	.LASF504
	.byte	0x10
	.byte	0x67
	.long	0x162c
	.byte	0x48
	.uleb128 0x8
	.long	.LASF505
	.byte	0x10
	.byte	0x6b
	.long	0xed4
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x288
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF506
	.byte	0x30
	.byte	0x10
	.byte	0x77
	.long	0x1693
	.uleb128 0x8
	.long	.LASF507
	.byte	0x10
	.byte	0x7b
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF508
	.byte	0x10
	.byte	0x8c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF509
	.byte	0x10
	.byte	0x92
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF510
	.byte	0x10
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF511
	.byte	0x10
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF512
	.byte	0x10
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF513
	.byte	0x10
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1d
	.long	.LASF514
	.value	0x1b0
	.byte	0x10
	.byte	0xae
	.long	0x1b13
	.uleb128 0x6
	.string	"eh"
	.byte	0x10
	.byte	0xb0
	.long	0x1b18
	.byte	0
	.uleb128 0x8
	.long	.LASF515
	.byte	0x10
	.byte	0xb1
	.long	0x1b23
	.byte	0x8
	.uleb128 0x8
	.long	.LASF310
	.byte	0x10
	.byte	0xb2
	.long	0x1b29
	.byte	0x10
	.uleb128 0x8
	.long	.LASF516
	.byte	0x10
	.byte	0xb3
	.long	0x1b2f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF517
	.byte	0x10
	.byte	0xb4
	.long	0x1b3a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF443
	.byte	0x10
	.byte	0xb9
	.long	0x4cd
	.byte	0x28
	.uleb128 0x8
	.long	.LASF518
	.byte	0x10
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF519
	.byte	0x10
	.byte	0xbf
	.long	0x1b40
	.byte	0x38
	.uleb128 0x8
	.long	.LASF520
	.byte	0x10
	.byte	0xc4
	.long	0x139
	.byte	0x40
	.uleb128 0x8
	.long	.LASF521
	.byte	0x10
	.byte	0xc9
	.long	0x139
	.byte	0x44
	.uleb128 0x8
	.long	.LASF522
	.byte	0x10
	.byte	0xce
	.long	0x139
	.byte	0x48
	.uleb128 0x8
	.long	.LASF523
	.byte	0x10
	.byte	0xd2
	.long	0x139
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF524
	.byte	0x10
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF525
	.byte	0x10
	.byte	0xda
	.long	0x25a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF526
	.byte	0x10
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF527
	.byte	0x10
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF528
	.byte	0x10
	.byte	0xe7
	.long	0x4cd
	.byte	0x88
	.uleb128 0x8
	.long	.LASF529
	.byte	0x10
	.byte	0xeb
	.long	0x1b4b
	.byte	0x90
	.uleb128 0x8
	.long	.LASF530
	.byte	0x10
	.byte	0xee
	.long	0x139
	.byte	0x98
	.uleb128 0x8
	.long	.LASF531
	.byte	0x10
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF532
	.byte	0x10
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF533
	.byte	0x10
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF534
	.byte	0x10
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF535
	.byte	0x10
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF536
	.byte	0x10
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0xf
	.long	.LASF537
	.byte	0x10
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0xf
	.long	.LASF538
	.byte	0x10
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0xf
	.long	.LASF539
	.byte	0x10
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF540
	.byte	0x10
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0xf
	.long	.LASF541
	.byte	0x10
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0xf
	.long	.LASF542
	.byte	0x10
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1e
	.long	.LASF543
	.byte	0x10
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1e
	.long	.LASF544
	.byte	0x10
	.value	0x12f
	.long	0x26f
	.value	0x108
	.uleb128 0x1e
	.long	.LASF545
	.byte	0x10
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1e
	.long	.LASF546
	.byte	0x10
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1e
	.long	.LASF547
	.byte	0x10
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1e
	.long	.LASF548
	.byte	0x10
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1e
	.long	.LASF549
	.byte	0x10
	.value	0x148
	.long	0x266
	.value	0x130
	.uleb128 0x1e
	.long	.LASF550
	.byte	0x10
	.value	0x14e
	.long	0xed4
	.value	0x138
	.uleb128 0x1e
	.long	.LASF551
	.byte	0x10
	.value	0x151
	.long	0x1b56
	.value	0x140
	.uleb128 0x1e
	.long	.LASF552
	.byte	0x10
	.value	0x154
	.long	0x139
	.value	0x148
	.uleb128 0x1e
	.long	.LASF553
	.byte	0x10
	.value	0x157
	.long	0x139
	.value	0x14c
	.uleb128 0x1e
	.long	.LASF554
	.byte	0x10
	.value	0x15d
	.long	0x139
	.value	0x150
	.uleb128 0x1e
	.long	.LASF555
	.byte	0x10
	.value	0x161
	.long	0x147c
	.value	0x158
	.uleb128 0x1e
	.long	.LASF556
	.byte	0x10
	.value	0x164
	.long	0x139
	.value	0x160
	.uleb128 0x1e
	.long	.LASF557
	.byte	0x10
	.value	0x165
	.long	0x139
	.value	0x164
	.uleb128 0x1e
	.long	.LASF558
	.byte	0x10
	.value	0x167
	.long	0x26d
	.value	0x168
	.uleb128 0x1e
	.long	.LASF559
	.byte	0x10
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1e
	.long	.LASF560
	.byte	0x10
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1e
	.long	.LASF561
	.byte	0x10
	.value	0x16d
	.long	0x139
	.value	0x180
	.uleb128 0x1e
	.long	.LASF562
	.byte	0x10
	.value	0x170
	.long	0x139
	.value	0x184
	.uleb128 0x1e
	.long	.LASF563
	.byte	0x10
	.value	0x175
	.long	0x1b61
	.value	0x188
	.uleb128 0x1e
	.long	.LASF564
	.byte	0x10
	.value	0x177
	.long	0x139
	.value	0x190
	.uleb128 0x1e
	.long	.LASF565
	.byte	0x10
	.value	0x179
	.long	0x139
	.value	0x194
	.uleb128 0x1e
	.long	.LASF566
	.byte	0x10
	.value	0x17c
	.long	0x1b6c
	.value	0x198
	.uleb128 0x1e
	.long	.LASF567
	.byte	0x10
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x1f
	.long	.LASF568
	.byte	0x10
	.value	0x188
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF569
	.byte	0x10
	.value	0x18c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF570
	.byte	0x10
	.value	0x18f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF571
	.byte	0x10
	.value	0x192
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF572
	.byte	0x10
	.value	0x195
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF573
	.byte	0x10
	.value	0x198
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF574
	.byte	0x10
	.value	0x19c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF575
	.byte	0x10
	.value	0x19f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF576
	.byte	0x10
	.value	0x1a3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF577
	.byte	0x10
	.value	0x1a7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF578
	.byte	0x10
	.value	0x1aa
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF579
	.byte	0x10
	.value	0x1ad
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF580
	.byte	0x10
	.value	0x1b2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF581
	.byte	0x10
	.value	0x1b6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF582
	.byte	0x10
	.value	0x1b9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF583
	.byte	0x10
	.value	0x1bd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF584
	.byte	0x10
	.value	0x1c1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF585
	.byte	0x10
	.value	0x1c5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF586
	.byte	0x10
	.value	0x1cb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF587
	.byte	0x10
	.value	0x1d4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF588
	.byte	0x10
	.value	0x1d7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF589
	.byte	0x10
	.value	0x1da
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF590
	.byte	0x10
	.value	0x1dd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF591
	.byte	0x10
	.value	0x1e0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1c
	.long	.LASF592
	.uleb128 0x3
	.byte	0x8
	.long	0x1b13
	.uleb128 0x1c
	.long	.LASF593
	.uleb128 0x3
	.byte	0x8
	.long	0x1b1e
	.uleb128 0x3
	.byte	0x8
	.long	0x1632
	.uleb128 0x3
	.byte	0x8
	.long	0x157d
	.uleb128 0x1c
	.long	.LASF594
	.uleb128 0x3
	.byte	0x8
	.long	0x1b35
	.uleb128 0x3
	.byte	0x8
	.long	0x1693
	.uleb128 0x1c
	.long	.LASF595
	.uleb128 0x3
	.byte	0x8
	.long	0x1b46
	.uleb128 0x1c
	.long	.LASF596
	.uleb128 0x3
	.byte	0x8
	.long	0x1b51
	.uleb128 0x1c
	.long	.LASF597
	.uleb128 0x3
	.byte	0x8
	.long	0x1b5c
	.uleb128 0x1c
	.long	.LASF598
	.uleb128 0x3
	.byte	0x8
	.long	0x1b67
	.uleb128 0x4
	.long	.LASF599
	.byte	0x18
	.byte	0x12
	.byte	0x2c
	.long	0x1ba3
	.uleb128 0x8
	.long	.LASF600
	.byte	0x12
	.byte	0x30
	.long	0x1277
	.byte	0
	.uleb128 0x8
	.long	.LASF601
	.byte	0x12
	.byte	0x32
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF602
	.byte	0x12
	.byte	0x34
	.long	0x1277
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF599
	.byte	0x12
	.byte	0x35
	.long	0x1b72
	.uleb128 0x16
	.long	.LASF603
	.byte	0x4
	.byte	0x12
	.byte	0x49
	.long	0x1be5
	.uleb128 0xd
	.long	.LASF604
	.sleb128 0
	.uleb128 0xd
	.long	.LASF605
	.sleb128 1
	.uleb128 0xd
	.long	.LASF606
	.sleb128 2
	.uleb128 0xd
	.long	.LASF607
	.sleb128 3
	.uleb128 0xd
	.long	.LASF608
	.sleb128 4
	.uleb128 0xd
	.long	.LASF609
	.sleb128 5
	.uleb128 0xd
	.long	.LASF610
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.long	.LASF611
	.byte	0x18
	.byte	0x11
	.byte	0xa1
	.long	0x1c16
	.uleb128 0x8
	.long	.LASF612
	.byte	0x11
	.byte	0xa3
	.long	0x2ba
	.byte	0
	.uleb128 0x8
	.long	.LASF449
	.byte	0x11
	.byte	0xa4
	.long	0x1c16
	.byte	0x8
	.uleb128 0x8
	.long	.LASF613
	.byte	0x11
	.byte	0xa5
	.long	0x453
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1be5
	.uleb128 0x20
	.long	0x1c16
	.long	0x1c30
	.uleb128 0x21
	.long	0x26d
	.uleb128 0x21
	.long	0x26f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1c1c
	.uleb128 0x22
	.long	0x1c46
	.uleb128 0x21
	.long	0x26d
	.uleb128 0x21
	.long	0x1c16
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1c36
	.uleb128 0xe
	.long	.LASF614
	.byte	0x8
	.byte	0x1
	.value	0x136
	.long	0x1c67
	.uleb128 0xf
	.long	.LASF615
	.byte	0x1
	.value	0x136
	.long	0x2d
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF310
	.byte	0x30
	.byte	0x1
	.value	0x13a
	.long	0x1cc3
	.uleb128 0xf
	.long	.LASF310
	.byte	0x1
	.value	0x13d
	.long	0x2d
	.byte	0
	.uleb128 0xf
	.long	.LASF616
	.byte	0x1
	.value	0x13f
	.long	0x139
	.byte	0x8
	.uleb128 0xf
	.long	.LASF617
	.byte	0x1
	.value	0x141
	.long	0x1cc3
	.byte	0x10
	.uleb128 0xf
	.long	.LASF618
	.byte	0x1
	.value	0x147
	.long	0x1d0b
	.byte	0x18
	.uleb128 0xf
	.long	.LASF619
	.byte	0x1
	.value	0x14c
	.long	0x1d0b
	.byte	0x20
	.uleb128 0xf
	.long	.LASF620
	.byte	0x1
	.value	0x150
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1c67
	.uleb128 0xe
	.long	.LASF621
	.byte	0x18
	.byte	0x1
	.value	0x157
	.long	0x1d0b
	.uleb128 0xf
	.long	.LASF448
	.byte	0x1
	.value	0x15a
	.long	0x1d0b
	.byte	0
	.uleb128 0xf
	.long	.LASF622
	.byte	0x1
	.value	0x15c
	.long	0x2d
	.byte	0x8
	.uleb128 0xf
	.long	.LASF623
	.byte	0x1
	.value	0x15e
	.long	0x2c0
	.byte	0x10
	.uleb128 0xf
	.long	.LASF624
	.byte	0x1
	.value	0x163
	.long	0x2c0
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1cc9
	.uleb128 0xe
	.long	.LASF625
	.byte	0x10
	.byte	0x1
	.value	0x1b6
	.long	0x1d39
	.uleb128 0xf
	.long	.LASF448
	.byte	0x1
	.value	0x1b9
	.long	0x1d39
	.byte	0
	.uleb128 0xf
	.long	.LASF622
	.byte	0x1
	.value	0x1bb
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1d11
	.uleb128 0x10
	.long	.LASF625
	.byte	0x1
	.value	0x1bc
	.long	0x1d11
	.uleb128 0xe
	.long	.LASF626
	.byte	0x40
	.byte	0x1
	.value	0x1d3
	.long	0x1dce
	.uleb128 0xf
	.long	.LASF310
	.byte	0x1
	.value	0x1d5
	.long	0x1cc3
	.byte	0
	.uleb128 0xf
	.long	.LASF627
	.byte	0x1
	.value	0x1d6
	.long	0x2d
	.byte	0x8
	.uleb128 0xf
	.long	.LASF628
	.byte	0x1
	.value	0x1d7
	.long	0x2d
	.byte	0x10
	.uleb128 0xf
	.long	.LASF629
	.byte	0x1
	.value	0x1d8
	.long	0x2d
	.byte	0x18
	.uleb128 0xf
	.long	.LASF448
	.byte	0x1
	.value	0x1d9
	.long	0x1dce
	.byte	0x20
	.uleb128 0xf
	.long	.LASF630
	.byte	0x1
	.value	0x1da
	.long	0x139
	.byte	0x28
	.uleb128 0xf
	.long	.LASF339
	.byte	0x1
	.value	0x1db
	.long	0x139
	.byte	0x2c
	.uleb128 0xf
	.long	.LASF631
	.byte	0x1
	.value	0x1dc
	.long	0x139
	.byte	0x30
	.uleb128 0xf
	.long	.LASF620
	.byte	0x1
	.value	0x1dd
	.long	0x2d
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1d4b
	.uleb128 0xe
	.long	.LASF632
	.byte	0x20
	.byte	0x1
	.value	0x21d
	.long	0x1e23
	.uleb128 0xf
	.long	.LASF633
	.byte	0x1
	.value	0x220
	.long	0x139
	.byte	0
	.uleb128 0xf
	.long	.LASF634
	.byte	0x1
	.value	0x222
	.long	0x266
	.byte	0x4
	.uleb128 0xf
	.long	.LASF635
	.byte	0x1
	.value	0x224
	.long	0x266
	.byte	0x8
	.uleb128 0xf
	.long	.LASF636
	.byte	0x1
	.value	0x225
	.long	0x13ea
	.byte	0x10
	.uleb128 0xf
	.long	.LASF637
	.byte	0x1
	.value	0x226
	.long	0x13ea
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.long	.LASF638
	.byte	0xc
	.byte	0x1
	.value	0x50d
	.long	0x1e58
	.uleb128 0xf
	.long	.LASF639
	.byte	0x1
	.value	0x50f
	.long	0x139
	.byte	0
	.uleb128 0xf
	.long	.LASF640
	.byte	0x1
	.value	0x510
	.long	0x139
	.byte	0x4
	.uleb128 0xf
	.long	.LASF641
	.byte	0x1
	.value	0x511
	.long	0x139
	.byte	0x8
	.byte	0
	.uleb128 0x23
	.long	.LASF985
	.byte	0x1
	.value	0x2c4
	.long	0x139
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f5d
	.uleb128 0x24
	.string	"f"
	.byte	0x1
	.value	0x2c5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF642
	.byte	0x1
	.value	0x2c6
	.long	0x1f5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x2c8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF644
	.byte	0x1
	.value	0x2c8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF645
	.byte	0x1
	.value	0x2ca
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF646
	.byte	0x1
	.value	0x2cc
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF647
	.byte	0x1
	.value	0x2ce
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF648
	.byte	0x1
	.value	0x2d3
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1f2c
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x371
	.long	0x1577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF649
	.byte	0x1
	.value	0x371
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x386
	.long	0x1577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF649
	.byte	0x1
	.value	0x386
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c7
	.uleb128 0x2a
	.long	.LASF655
	.byte	0x1
	.value	0x398
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fad
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x39a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x39c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x39c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF650
	.byte	0x1
	.value	0x3b6
	.long	0x2ba
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fdf
	.uleb128 0x25
	.long	.LASF312
	.byte	0x1
	.value	0x3b7
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF651
	.byte	0x1
	.value	0x3c2
	.long	0x2ba
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2020
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.value	0x3c3
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF312
	.byte	0x1
	.value	0x3c4
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.long	.LASF652
	.byte	0x1
	.value	0x3ce
	.long	0x2ba
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x20d8
	.uleb128 0x25
	.long	.LASF312
	.byte	0x1
	.value	0x3cf
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x28
	.string	"__h"
	.byte	0x1
	.value	0x3d1
	.long	0x1577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x20a6
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x3d1
	.long	0x1577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF653
	.byte	0x1
	.value	0x3d1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x26
	.long	.LASF654
	.byte	0x1
	.value	0x3d1
	.long	0x1577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF601
	.byte	0x1
	.value	0x3d1
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF656
	.byte	0x1
	.value	0x3da
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x212d
	.uleb128 0x24
	.string	"f"
	.byte	0x1
	.value	0x3db
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x3dd
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0x3dd
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x3de
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF734
	.byte	0x1
	.value	0x40d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF657
	.byte	0x1
	.value	0x42c
	.long	0x139
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x21af
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.value	0x42d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x42e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.value	0x42f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF658
	.byte	0x1
	.value	0x434
	.long	0x276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF659
	.byte	0x1
	.value	0x438
	.long	0x276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF660
	.byte	0x1
	.value	0x462
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x228a
	.uleb128 0x25
	.long	.LASF661
	.byte	0x1
	.value	0x463
	.long	0x13ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF662
	.byte	0x1
	.value	0x464
	.long	0x13ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF663
	.byte	0x1
	.value	0x465
	.long	0x13ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF664
	.byte	0x1
	.value	0x466
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x468
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF665
	.byte	0x1
	.value	0x468
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF666
	.byte	0x1
	.value	0x469
	.long	0x228a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x481
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x26
	.long	.LASF328
	.byte	0x1
	.value	0x485
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF621
	.byte	0x1
	.value	0x486
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1cc3
	.uleb128 0x2a
	.long	.LASF667
	.byte	0x1
	.value	0x4b5
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x22cb
	.uleb128 0x25
	.long	.LASF668
	.byte	0x1
	.value	0x4b6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0x4b8
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF669
	.byte	0x1
	.value	0x4c3
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x231a
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x4c6
	.long	0x1577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF649
	.byte	0x1
	.value	0x4c6
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF670
	.byte	0x1
	.value	0x4cc
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2412
	.uleb128 0x25
	.long	.LASF46
	.byte	0x1
	.value	0x4cd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x4ce
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF671
	.byte	0x1
	.value	0x4d1
	.long	0x1d39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x238c
	.uleb128 0x26
	.long	.LASF672
	.byte	0x1
	.value	0x4d6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x28
	.string	"__h"
	.byte	0x1
	.value	0x4e0
	.long	0x1577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x23e0
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x4e0
	.long	0x1577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF653
	.byte	0x1
	.value	0x4e0
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x26
	.long	.LASF654
	.byte	0x1
	.value	0x4e0
	.long	0x1577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF601
	.byte	0x1
	.value	0x4e0
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF673
	.byte	0x1
	.value	0x4ed
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x246d
	.uleb128 0x25
	.long	.LASF462
	.byte	0x1
	.value	0x4ee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF674
	.byte	0x1
	.value	0x4ee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF444
	.byte	0x1
	.value	0x4ef
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF675
	.byte	0x1
	.value	0x4f1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x4fd
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x24a8
	.uleb128 0x24
	.string	"f"
	.byte	0x1
	.value	0x4fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x500
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF677
	.byte	0x1
	.value	0x51c
	.long	0x139
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x250c
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x51d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF678
	.byte	0x1
	.value	0x51f
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	test_insn.12084
	.uleb128 0x26
	.long	.LASF679
	.byte	0x1
	.value	0x520
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF680
	.byte	0x1
	.value	0x521
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.long	.LASF681
	.byte	0x1
	.value	0x551
	.long	0x139
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x25b4
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x552
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x552
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF682
	.byte	0x1
	.value	0x553
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x555
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x555
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x556
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x557
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x26
	.long	.LASF683
	.byte	0x1
	.value	0x561
	.long	0x25b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e23
	.uleb128 0x2a
	.long	.LASF684
	.byte	0x1
	.value	0x5b0
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2606
	.uleb128 0x25
	.long	.LASF462
	.byte	0x1
	.value	0x5b1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF674
	.byte	0x1
	.value	0x5b1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF444
	.byte	0x1
	.value	0x5b2
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.long	.LASF685
	.byte	0x1
	.value	0x5d8
	.long	0x139
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2692
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x5d9
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF686
	.byte	0x1
	.value	0x5da
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x5db
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF682
	.byte	0x1
	.value	0x5dc
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF687
	.byte	0x1
	.value	0x5de
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x26
	.long	.LASF674
	.byte	0x1
	.value	0x5e1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF688
	.byte	0x1
	.value	0x607
	.long	0x139
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x26d1
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x608
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x608
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF689
	.byte	0x1
	.value	0x611
	.long	0x139
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2710
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x612
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x612
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF690
	.byte	0x1
	.value	0x620
	.long	0x266
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x277c
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x621
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF1
	.byte	0x1
	.value	0x622
	.long	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.long	.LASF691
	.byte	0x1
	.value	0x623
	.long	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF665
	.byte	0x1
	.value	0x624
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0x626
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF693
	.byte	0x1
	.value	0x631
	.long	0x266
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x27c9
	.uleb128 0x24
	.string	"ps"
	.byte	0x1
	.value	0x632
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0x634
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x635
	.long	0x27c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x27cf
	.uleb128 0x15
	.long	0x288
	.uleb128 0x2b
	.long	.LASF694
	.byte	0x1
	.value	0x641
	.long	0x266
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x28f3
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x642
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF1
	.byte	0x1
	.value	0x643
	.long	0x4ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x25
	.long	.LASF691
	.byte	0x1
	.value	0x644
	.long	0x4e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x646
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x646
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0x647
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x648
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x649
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF805
	.byte	0x1
	.value	0x652
	.quad	.L157
	.uleb128 0x2f
	.long	.LASF698
	.long	0x2903
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12223
	.uleb128 0x27
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x28c5
	.uleb128 0x26
	.long	.LASF695
	.byte	0x1
	.value	0x66d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"elt"
	.byte	0x1
	.value	0x66e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x28
	.string	"h"
	.byte	0x1
	.value	0x68a
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x68b
	.long	0x27c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x2903
	.uleb128 0x13
	.long	0x140
	.byte	0xb
	.byte	0
	.uleb128 0x15
	.long	0x28f3
	.uleb128 0x2d
	.long	.LASF696
	.byte	0x1
	.value	0x6fe
	.long	0x266
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2958
	.uleb128 0x25
	.long	.LASF46
	.byte	0x1
	.value	0x6ff
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF665
	.byte	0x1
	.value	0x700
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0x702
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF697
	.byte	0x1
	.value	0x70c
	.long	0x139
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x29e0
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x70d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.value	0x70d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x70f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x70f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x710
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x711
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF698
	.long	0x29f0
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12271
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x29f0
	.uleb128 0x13
	.long	0x140
	.byte	0xc
	.byte	0
	.uleb128 0x15
	.long	0x29e0
	.uleb128 0x2a
	.long	.LASF699
	.byte	0x1
	.value	0x7a2
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2adb
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x7a3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF1
	.byte	0x1
	.value	0x7a4
	.long	0x4ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x7a5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF700
	.byte	0x1
	.value	0x7a6
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF682
	.byte	0x1
	.value	0x7a6
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.long	.LASF701
	.byte	0x1
	.value	0x7a8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF691
	.byte	0x1
	.value	0x7a8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0x7a9
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF702
	.byte	0x1
	.value	0x7aa
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF703
	.byte	0x1
	.value	0x7aa
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF618
	.byte	0x1
	.value	0x7ab
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF619
	.byte	0x1
	.value	0x7ab
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF704
	.byte	0x1
	.value	0x7ac
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF705
	.byte	0x1
	.value	0x822
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b85
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x823
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x824
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF701
	.byte	0x1
	.value	0x826
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0x827
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF702
	.byte	0x1
	.value	0x828
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF703
	.byte	0x1
	.value	0x828
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF706
	.byte	0x1
	.value	0x829
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF704
	.byte	0x1
	.value	0x829
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF698
	.long	0x2b85
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12309
	.byte	0
	.uleb128 0x15
	.long	0x4bd
	.uleb128 0x2a
	.long	.LASF707
	.byte	0x1
	.value	0x878
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c66
	.uleb128 0x24
	.string	"pat"
	.byte	0x1
	.value	0x879
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x879
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF708
	.byte	0x1
	.value	0x87a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x87c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF462
	.byte	0x1
	.value	0x87d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF709
	.byte	0x1
	.value	0x87e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x885
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x886
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x26
	.long	.LASF700
	.byte	0x1
	.value	0x8a6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF682
	.byte	0x1
	.value	0x8ab
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF710
	.byte	0x1
	.value	0x8c4
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ca1
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x8c5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x8c5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF711
	.byte	0x1
	.value	0x8cb
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cdc
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x8cc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x8cc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF712
	.byte	0x1
	.value	0x8df
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d63
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x8e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF708
	.byte	0x1
	.value	0x8e1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF713
	.byte	0x1
	.value	0x8e2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x8e4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x8e5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x8f2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF714
	.byte	0x1
	.value	0x903
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e0a
	.uleb128 0x25
	.long	.LASF642
	.byte	0x1
	.value	0x904
	.long	0x1f5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF443
	.byte	0x1
	.value	0x905
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF715
	.byte	0x1
	.value	0x906
	.long	0x228a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF716
	.byte	0x1
	.value	0x907
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.long	.LASF717
	.byte	0x1
	.value	0x907
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x909
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF718
	.byte	0x1
	.value	0x90b
	.long	0x228a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF719
	.byte	0x1
	.value	0x90c
	.long	0x2e0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x90d
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x266
	.uleb128 0x30
	.long	.LASF720
	.byte	0x1
	.value	0x93c
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e6b
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x93d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF46
	.byte	0x1
	.value	0x93e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF683
	.byte	0x1
	.value	0x940
	.long	0x25b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF721
	.byte	0x1
	.value	0x941
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.long	.LASF722
	.byte	0x1
	.value	0x952
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ee6
	.uleb128 0x25
	.long	.LASF462
	.byte	0x1
	.value	0x953
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF723
	.byte	0x1
	.value	0x954
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF724
	.byte	0x1
	.value	0x955
	.long	0x26d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF725
	.byte	0x1
	.value	0x957
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x957
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x958
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2a
	.long	.LASF726
	.byte	0x1
	.value	0x978
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f22
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x979
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x97b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF727
	.byte	0x1
	.value	0x994
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f7d
	.uleb128 0x25
	.long	.LASF462
	.byte	0x1
	.value	0x995
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF674
	.byte	0x1
	.value	0x995
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF444
	.byte	0x1
	.value	0x996
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF728
	.byte	0x1
	.value	0x998
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF729
	.byte	0x1
	.value	0x9b7
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3018
	.uleb128 0x25
	.long	.LASF708
	.byte	0x1
	.value	0x9b8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x9ba
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x9cd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x9ce
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF713
	.byte	0x1
	.value	0x9cf
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x26
	.long	.LASF730
	.byte	0x1
	.value	0x9df
	.long	0x3018
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF731
	.uleb128 0x2a
	.long	.LASF732
	.byte	0x1
	.value	0xa0b
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x305a
	.uleb128 0x25
	.long	.LASF733
	.byte	0x1
	.value	0xa0c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0xa0e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF735
	.byte	0x1
	.value	0xa1f
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF736
	.byte	0x1
	.value	0xa27
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF737
	.byte	0x1
	.value	0xa36
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x30c9
	.uleb128 0x25
	.long	.LASF733
	.byte	0x1
	.value	0xa37
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0xa39
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF738
	.byte	0x1
	.value	0xa4b
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF739
	.byte	0x1
	.value	0xa53
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF740
	.byte	0x1
	.value	0xa63
	.long	0x1cc3
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x315c
	.uleb128 0x24
	.string	"pat"
	.byte	0x1
	.value	0xa64
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF691
	.byte	0x1
	.value	0xa66
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0xa67
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0xa69
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF741
	.byte	0x1
	.value	0xa7b
	.long	0x1cc3
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x31bb
	.uleb128 0x25
	.long	.LASF46
	.byte	0x1
	.value	0xa7c
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"pat"
	.byte	0x1
	.value	0xa7d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF692
	.byte	0x1
	.value	0xa7f
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0xa80
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF742
	.byte	0x1
	.value	0xa95
	.long	0x1cc3
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x31fc
	.uleb128 0x25
	.long	.LASF46
	.byte	0x1
	.value	0xa96
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0xa97
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF743
	.byte	0x1
	.value	0xaa4
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x3248
	.uleb128 0x25
	.long	.LASF744
	.byte	0x1
	.value	0xaa5
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF745
	.byte	0x1
	.value	0xaa7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF448
	.byte	0x1
	.value	0xaa7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF746
	.byte	0x1
	.value	0xab7
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x339f
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xab9
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x330b
	.uleb128 0x26
	.long	.LASF747
	.byte	0x1
	.value	0xabb
	.long	0x12da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF748
	.byte	0x1
	.value	0xabb
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF749
	.byte	0x1
	.value	0xabb
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF750
	.byte	0x1
	.value	0xabb
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x26
	.long	.LASF751
	.byte	0x1
	.value	0xabb
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x26
	.long	.LASF752
	.byte	0x1
	.value	0xabb
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x26
	.long	.LASF747
	.byte	0x1
	.value	0xabf
	.long	0x12da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF748
	.byte	0x1
	.value	0xabf
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF749
	.byte	0x1
	.value	0xabf
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF750
	.byte	0x1
	.value	0xabf
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x26
	.long	.LASF751
	.byte	0x1
	.value	0xabf
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x26
	.long	.LASF752
	.byte	0x1
	.value	0xabf
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF753
	.byte	0x1
	.value	0xac8
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF754
	.byte	0x1
	.value	0xad5
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF755
	.byte	0x1
	.value	0xae5
	.long	0x139
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x344a
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0xae6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xae6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xae8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xae8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0xae9
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xaea
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF756
	.byte	0x1
	.value	0xb25
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x3478
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xb26
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF757
	.byte	0x1
	.value	0xb2f
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x34c4
	.uleb128 0x24
	.string	"pat"
	.byte	0x1
	.value	0xb30
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xb30
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF462
	.byte	0x1
	.value	0xb32
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF758
	.byte	0x1
	.value	0xb46
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x3510
	.uleb128 0x24
	.string	"pat"
	.byte	0x1
	.value	0xb47
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xb47
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF759
	.byte	0x1
	.value	0xb49
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF760
	.byte	0x1
	.value	0xb58
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x3579
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xb59
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0xb5b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xb5c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0xb63
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF761
	.byte	0x1
	.value	0xb79
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x35b6
	.uleb128 0x25
	.long	.LASF762
	.byte	0x1
	.value	0xb7a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF733
	.byte	0x1
	.value	0xb7a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF763
	.byte	0x1
	.value	0xb8c
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF764
	.byte	0x1
	.value	0xb97
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x362a
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xb98
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF46
	.byte	0x1
	.value	0xb99
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xb9a
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF765
	.byte	0x1
	.value	0xb9c
	.long	0x1d39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF766
	.byte	0x1
	.value	0xba6
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x36d3
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0xba8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF721
	.byte	0x1
	.value	0xba8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0xba9
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xbaa
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0xbb8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0xbb9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0xbc6
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF767
	.byte	0x1
	.value	0xbdc
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x371e
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0xbde
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0xbde
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF768
	.byte	0x1
	.value	0xbde
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF769
	.byte	0x1
	.value	0xbfa
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x375b
	.uleb128 0x25
	.long	.LASF762
	.byte	0x1
	.value	0xbfb
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF770
	.byte	0x1
	.value	0xbfb
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF771
	.byte	0x1
	.value	0xc0b
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF772
	.byte	0x1
	.value	0xc16
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x37bf
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xc18
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0xc19
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF621
	.byte	0x1
	.value	0xc1a
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF773
	.byte	0x1
	.value	0xc29
	.long	0x139
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x3835
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0xc2a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xc2b
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xc2d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xc2d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0xc2e
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xc2f
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF774
	.byte	0x1
	.value	0xc68
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x389c
	.uleb128 0x25
	.long	.LASF775
	.byte	0x1
	.value	0xc69
	.long	0x13ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF776
	.byte	0x1
	.value	0xc69
	.long	0x13ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0xc6b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xc6c
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0xc6d
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF777
	.byte	0x1
	.value	0xc8f
	.long	0x139
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x393a
	.uleb128 0x25
	.long	.LASF621
	.byte	0x1
	.value	0xc90
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0xc91
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xc92
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF778
	.byte	0x1
	.value	0xc93
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF779
	.byte	0x1
	.value	0xc94
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF333
	.byte	0x1
	.value	0xc96
	.long	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x26
	.long	.LASF780
	.byte	0x1
	.value	0xc9a
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF781
	.byte	0x1
	.value	0xccd
	.long	0x139
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x39b6
	.uleb128 0x25
	.long	.LASF621
	.byte	0x1
	.value	0xcce
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0xccf
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xcd0
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF778
	.byte	0x1
	.value	0xcd1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF782
	.byte	0x1
	.value	0xcd3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF779
	.byte	0x1
	.value	0xcd4
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF783
	.byte	0x1
	.value	0xce2
	.long	0x2d
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a57
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0xce3
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xce4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0xce6
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF698
	.long	0x3a67
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12714
	.uleb128 0x29
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x26
	.long	.LASF621
	.byte	0x1
	.value	0xcf8
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF784
	.byte	0x1
	.value	0xcf9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF785
	.byte	0x1
	.value	0xcfa
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x3a67
	.uleb128 0x13
	.long	0x140
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.long	0x3a57
	.uleb128 0x2b
	.long	.LASF786
	.byte	0x1
	.value	0xd23
	.long	0x139
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x3acf
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xd24
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF787
	.byte	0x1
	.value	0xd24
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0xd26
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF698
	.long	0x3adf
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12720
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x3adf
	.uleb128 0x13
	.long	0x140
	.byte	0x12
	.byte	0
	.uleb128 0x15
	.long	0x3acf
	.uleb128 0x2b
	.long	.LASF788
	.byte	0x1
	.value	0xd48
	.long	0x139
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b52
	.uleb128 0x25
	.long	.LASF789
	.byte	0x1
	.value	0xd49
	.long	0x3b52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xd4a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF790
	.byte	0x1
	.value	0xd4b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF791
	.byte	0x1
	.value	0xd4d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF765
	.byte	0x1
	.value	0xd4e
	.long	0x1d39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1d39
	.uleb128 0x2b
	.long	.LASF792
	.byte	0x1
	.value	0xd78
	.long	0x139
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c95
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xd79
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0xd7a
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0xd7c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF784
	.byte	0x1
	.value	0xd7c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF793
	.byte	0x1
	.value	0xd7c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"to"
	.byte	0x1
	.value	0xd7d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF765
	.byte	0x1
	.value	0xd7e
	.long	0x1d39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF794
	.byte	0x1
	.value	0xd7f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF795
	.byte	0x1
	.value	0xd7f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0xd80
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF698
	.long	0x3ca5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12743
	.uleb128 0x27
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x3c4d
	.uleb128 0x26
	.long	.LASF796
	.byte	0x1
	.value	0xd95
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x27
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x3c73
	.uleb128 0x26
	.long	.LASF796
	.byte	0x1
	.value	0xda8
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x29
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x26
	.long	.LASF797
	.byte	0x1
	.value	0xdd8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x3ca5
	.uleb128 0x13
	.long	0x140
	.byte	0x11
	.byte	0
	.uleb128 0x15
	.long	0x3c95
	.uleb128 0x2b
	.long	.LASF798
	.byte	0x1
	.value	0xe16
	.long	0x139
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d38
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0xe18
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0xe18
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0xe19
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0xe2e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0xe2f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0xe30
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF799
	.byte	0x1
	.value	0xe4d
	.long	0x139
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d79
	.uleb128 0x25
	.long	.LASF644
	.byte	0x1
	.value	0xe4e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0xe50
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF800
	.byte	0x1
	.value	0xe84
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x3db6
	.uleb128 0x25
	.long	.LASF762
	.byte	0x1
	.value	0xe85
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF801
	.byte	0x1
	.value	0xe85
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF802
	.byte	0x1
	.value	0xe91
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF803
	.byte	0x1
	.value	0xea0
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ee3
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0xea1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF328
	.byte	0x1
	.value	0xea2
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x25
	.long	.LASF804
	.byte	0x1
	.value	0xea3
	.long	0x13ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF708
	.byte	0x1
	.value	0xea4
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0xea6
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xea6
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xea6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0xea7
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"r"
	.byte	0x1
	.value	0xea8
	.long	0x3ee3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xea9
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF805
	.byte	0x1
	.value	0xead
	.quad	.L616
	.uleb128 0x29
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x26
	.long	.LASF687
	.byte	0x1
	.value	0xed8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x26
	.long	.LASF462
	.byte	0x1
	.value	0xedc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF725
	.byte	0x1
	.value	0xedc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1d3f
	.uleb128 0x2c
	.long	.LASF806
	.byte	0x1
	.value	0xf26
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF807
	.byte	0x1
	.value	0xf41
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f95
	.uleb128 0x25
	.long	.LASF808
	.byte	0x1
	.value	0xf42
	.long	0xed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF444
	.byte	0x1
	.value	0xf43
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xf45
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xf45
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0xf46
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xf47
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0xf48
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF805
	.byte	0x1
	.value	0xf4c
	.quad	.L661
	.byte	0
	.uleb128 0x2b
	.long	.LASF809
	.byte	0x1
	.value	0xf75
	.long	0x139
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x4021
	.uleb128 0x25
	.long	.LASF810
	.byte	0x1
	.value	0xf76
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"to"
	.byte	0x1
	.value	0xf76
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xf76
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF709
	.byte	0x1
	.value	0xf78
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0xf79
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF811
	.byte	0x1
	.value	0xf7a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0xf7b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF812
	.byte	0x1
	.value	0xfa3
	.long	0x1cc3
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x40b4
	.uleb128 0x25
	.long	.LASF46
	.byte	0x1
	.value	0xfa4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xfa5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF813
	.byte	0x1
	.value	0xfa9
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF698
	.long	0x40b4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12869
	.uleb128 0x29
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0xfb6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0xfb7
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x3a57
	.uleb128 0x2b
	.long	.LASF814
	.byte	0x1
	.value	0xfeb
	.long	0x139
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x4135
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xfef
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0xfec
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF810
	.byte	0x1
	.value	0xfed
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"src"
	.byte	0x1
	.value	0xfee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0xff1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xff2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF815
	.byte	0x1
	.value	0x103b
	.long	0x139
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x4215
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x103c
	.long	0x13d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x103d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF816
	.byte	0x1
	.value	0x103e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF817
	.byte	0x1
	.value	0x1040
	.long	0x4215
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x1041
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF709
	.byte	0x1
	.value	0x1042
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF698
	.long	0x422b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12892
	.uleb128 0x29
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x1053
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x1054
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x1054
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1055
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1c4c
	.uleb128 0x12
	.long	0x2c0
	.long	0x422b
	.uleb128 0x13
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x15
	.long	0x421b
	.uleb128 0x2b
	.long	.LASF818
	.byte	0x1
	.value	0x10c0
	.long	0x139
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x428e
	.uleb128 0x25
	.long	.LASF816
	.byte	0x1
	.value	0x10c1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x10c3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x10c3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x10c4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF819
	.byte	0x1
	.value	0x10e9
	.long	0x139
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x42de
	.uleb128 0x25
	.long	.LASF644
	.byte	0x1
	.value	0x10ea
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF816
	.byte	0x1
	.value	0x10eb
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x10ed
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF820
	.byte	0x1
	.value	0x1133
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x431b
	.uleb128 0x25
	.long	.LASF762
	.byte	0x1
	.value	0x1134
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF770
	.byte	0x1
	.value	0x1134
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF821
	.byte	0x1
	.value	0x1148
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF822
	.byte	0x1
	.value	0x1164
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x43c0
	.uleb128 0x26
	.long	.LASF823
	.byte	0x1
	.value	0x1166
	.long	0x1328
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1167
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"ui"
	.byte	0x1
	.value	0x1168
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x43a0
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x1172
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x1180
	.long	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF824
	.byte	0x1
	.value	0x11ab
	.long	0x139
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x444e
	.uleb128 0x25
	.long	.LASF825
	.byte	0x1
	.value	0x11ac
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0x11ad
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x11ae
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF779
	.byte	0x1
	.value	0x11af
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF333
	.byte	0x1
	.value	0x11b1
	.long	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x26
	.long	.LASF780
	.byte	0x1
	.value	0x11b5
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF826
	.byte	0x1
	.value	0x11dc
	.long	0x139
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x44bb
	.uleb128 0x25
	.long	.LASF825
	.byte	0x1
	.value	0x11dd
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0x11de
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x11df
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF782
	.byte	0x1
	.value	0x11e1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF779
	.byte	0x1
	.value	0x11e2
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF827
	.byte	0x1
	.value	0x11f0
	.long	0x2d
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x452d
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0x11f1
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x11f3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"exp"
	.byte	0x1
	.value	0x11f4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x11f5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF698
	.long	0x452d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12972
	.byte	0
	.uleb128 0x15
	.long	0x4bd
	.uleb128 0x2a
	.long	.LASF828
	.byte	0x1
	.value	0x1213
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x460c
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0x1214
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x1215
	.long	0x13d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"pre"
	.byte	0x1
	.value	0x1216
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x1218
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF797
	.byte	0x1
	.value	0x1219
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x121a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x121b
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x121c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x121d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF698
	.long	0x460c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12984
	.uleb128 0x29
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x127e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x3acf
	.uleb128 0x2b
	.long	.LASF829
	.byte	0x1
	.value	0x129c
	.long	0x139
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x476e
	.uleb128 0x25
	.long	.LASF466
	.byte	0x1
	.value	0x129d
	.long	0x476e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.long	.LASF830
	.byte	0x1
	.value	0x129e
	.long	0x228a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x12a0
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x12a0
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x12a0
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF468
	.byte	0x1
	.value	0x12a0
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF831
	.byte	0x1
	.value	0x12a0
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF832
	.byte	0x1
	.value	0x12a0
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF833
	.byte	0x1
	.value	0x12a1
	.long	0x13ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x26
	.long	.LASF328
	.byte	0x1
	.value	0x12ad
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x12ae
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x26
	.long	.LASF834
	.byte	0x1
	.value	0x12b2
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x12b7
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF621
	.byte	0x1
	.value	0x12b8
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x12c4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"eg"
	.byte	0x1
	.value	0x12c5
	.long	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13f0
	.uleb128 0x2a
	.long	.LASF835
	.byte	0x1
	.value	0x12f0
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x480f
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0x12f1
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x12f2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x12f4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x12f5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF328
	.byte	0x1
	.value	0x12f6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x12f7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF797
	.byte	0x1
	.value	0x12f8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF698
	.long	0x481f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13032
	.byte	0
	.uleb128 0x12
	.long	0x2c0
	.long	0x481f
	.uleb128 0x13
	.long	0x140
	.byte	0x14
	.byte	0
	.uleb128 0x15
	.long	0x480f
	.uleb128 0x2a
	.long	.LASF836
	.byte	0x1
	.value	0x1310
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x489e
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1312
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x1313
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF621
	.byte	0x1
	.value	0x1314
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF837
	.byte	0x1
	.value	0x1315
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x132f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF838
	.byte	0x1
	.value	0x134f
	.long	0x139
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x496e
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1351
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x1352
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x1353
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF621
	.byte	0x1
	.value	0x1354
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF698
	.long	0x496e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13065
	.uleb128 0x29
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x26
	.long	.LASF328
	.byte	0x1
	.value	0x135a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x1361
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1362
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x1363
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x421b
	.uleb128 0x2b
	.long	.LASF839
	.byte	0x1
	.value	0x13a6
	.long	0x139
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x49df
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x13a8
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF832
	.byte	0x1
	.value	0x13a9
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x13a9
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF830
	.byte	0x1
	.value	0x13aa
	.long	0x228a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x13ab
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF840
	.byte	0x1
	.value	0x13d5
	.long	0x139
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a20
	.uleb128 0x25
	.long	.LASF644
	.byte	0x1
	.value	0x13d6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x13d8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF841
	.byte	0x1
	.value	0x140d
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a93
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x140e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x140f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x1411
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1412
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x1412
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x1413
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF842
	.byte	0x1
	.value	0x143c
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x4adc
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x143e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x143f
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x1440
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF843
	.byte	0x1
	.value	0x1465
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b44
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x1466
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF674
	.byte	0x1
	.value	0x1467
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF444
	.byte	0x1
	.value	0x1468
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x146a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"npi"
	.byte	0x1
	.value	0x146b
	.long	0x4b44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1dd4
	.uleb128 0x2a
	.long	.LASF844
	.byte	0x1
	.value	0x1481
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cbe
	.uleb128 0x25
	.long	.LASF845
	.byte	0x1
	.value	0x1483
	.long	0x2e0a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.long	.LASF846
	.byte	0x1
	.value	0x1484
	.long	0x13ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.long	.LASF847
	.byte	0x1
	.value	0x1485
	.long	0x13ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.string	"npi"
	.byte	0x1
	.value	0x1486
	.long	0x4b44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x1488
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.long	.LASF633
	.byte	0x1
	.value	0x1489
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF636
	.byte	0x1
	.value	0x148a
	.long	0x13ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF637
	.byte	0x1
	.value	0x148b
	.long	0x13ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0x4c4c
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x149a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF848
	.byte	0x1
	.value	0x149a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x14a6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x14a7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x26
	.long	.LASF849
	.byte	0x1
	.value	0x14d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF850
	.byte	0x1
	.value	0x14da
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF851
	.byte	0x1
	.value	0x14da
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF852
	.byte	0x1
	.value	0x14db
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x26
	.long	.LASF853
	.byte	0x1
	.value	0x14fc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF986
	.byte	0x1
	.value	0x152a
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dbb
	.uleb128 0x24
	.string	"f"
	.byte	0x1
	.value	0x152b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF846
	.byte	0x1
	.value	0x152d
	.long	0x13ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF847
	.byte	0x1
	.value	0x152d
	.long	0x13ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF845
	.byte	0x1
	.value	0x152e
	.long	0x2e0a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x152f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x1530
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x26
	.long	.LASF854
	.byte	0x1
	.value	0x1531
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x26
	.long	.LASF635
	.byte	0x1
	.value	0x1532
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"npi"
	.byte	0x1
	.value	0x1533
	.long	0x1dd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x26
	.long	.LASF849
	.byte	0x1
	.value	0x1555
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF850
	.byte	0x1
	.value	0x1556
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF851
	.byte	0x1
	.value	0x1556
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x1556
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF855
	.byte	0x1
	.value	0x159b
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x4df8
	.uleb128 0x25
	.long	.LASF762
	.byte	0x1
	.value	0x159c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF770
	.byte	0x1
	.value	0x159c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF856
	.byte	0x1
	.value	0x15ad
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF857
	.byte	0x1
	.value	0x15c1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e5d
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x15c3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x15c3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF768
	.byte	0x1
	.value	0x15c3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF858
	.byte	0x1
	.value	0x15e3
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF859
	.byte	0x1
	.value	0x15fb
	.long	0x139
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f16
	.uleb128 0x25
	.long	.LASF860
	.byte	0x1
	.value	0x15fc
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF861
	.byte	0x1
	.value	0x15fd
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x15fe
	.long	0x13d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF779
	.byte	0x1
	.value	0x15ff
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF333
	.byte	0x1
	.value	0x1601
	.long	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF862
	.byte	0x1
	.value	0x1602
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x26
	.long	.LASF780
	.byte	0x1
	.value	0x160d
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF863
	.byte	0x1
	.value	0x162c
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x5039
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x162e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF864
	.byte	0x1
	.value	0x162e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x162f
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF830
	.byte	0x1
	.value	0x1630
	.long	0x228a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x1631
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF698
	.long	0x5039
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13252
	.uleb128 0x29
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x26
	.long	.LASF701
	.byte	0x1
	.value	0x1641
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF865
	.byte	0x1
	.value	0x1642
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.long	0x4fe9
	.uleb128 0x26
	.long	.LASF866
	.byte	0x1
	.value	0x1648
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x29
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x169e
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF621
	.byte	0x1
	.value	0x169f
	.long	0x1d0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x16a0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x16a1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x421b
	.uleb128 0x2b
	.long	.LASF867
	.byte	0x1
	.value	0x16d9
	.long	0x139
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x5070
	.uleb128 0x26
	.long	.LASF643
	.byte	0x1
	.value	0x16db
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF868
	.byte	0x1
	.value	0x170d
	.long	0x1dce
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x50af
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x170e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x1710
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF869
	.byte	0x1
	.value	0x172c
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x50dd
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.value	0x172d
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF870
	.byte	0x1
	.value	0x1738
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x511d
	.uleb128 0x29
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x173c
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF871
	.byte	0x1
	.value	0x1749
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x515a
	.uleb128 0x25
	.long	.LASF642
	.byte	0x1
	.value	0x174a
	.long	0x1f5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x174c
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF872
	.byte	0x1
	.value	0x176d
	.long	0x1dce
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x5199
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x176e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x1770
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF873
	.byte	0x1
	.value	0x177c
	.long	0x139
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x51d8
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x177e
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0x177f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x32
	.long	.LASF987
	.byte	0x1
	.value	0x178a
	.long	0x1dce
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF874
	.byte	0x1
	.value	0x1792
	.long	0x1dce
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x5228
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.value	0x1793
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF875
	.byte	0x1
	.value	0x179f
	.long	0x139
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x5258
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x17a0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF876
	.byte	0x1
	.value	0x17ba
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x52bc
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x17bb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x17bd
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x17be
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x17be
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x17bf
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF877
	.byte	0x1
	.value	0x17dc
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x5337
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x17de
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x17df
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x17e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x17ee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF462
	.byte	0x1
	.value	0x17ef
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF878
	.byte	0x1
	.value	0x181a
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x53c3
	.uleb128 0x26
	.long	.LASF478
	.byte	0x1
	.value	0x181c
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x181d
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x28
	.string	"del"
	.byte	0x1
	.value	0x1821
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x1822
	.long	0x1cc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1827
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF879
	.byte	0x1
	.value	0x185d
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x5490
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0x185e
	.long	0x1cc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF880
	.byte	0x1
	.value	0x1860
	.long	0x1dce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x26
	.long	.LASF745
	.byte	0x1
	.value	0x186c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x1870
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x1871
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x1872
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x1873
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF881
	.byte	0x1
	.value	0x1874
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x1874
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF882
	.byte	0x1
	.value	0x189e
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x54dc
	.uleb128 0x25
	.long	.LASF462
	.byte	0x1
	.value	0x189f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF674
	.byte	0x1
	.value	0x189f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF444
	.byte	0x1
	.value	0x18a0
	.long	0x26d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.long	.LASF883
	.byte	0x1
	.value	0x18ad
	.long	0x139
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x5599
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x18ae
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x18af
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x18b1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x18b2
	.long	0x6aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x18b3
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF805
	.byte	0x1
	.value	0x18b6
	.quad	.L1074
	.uleb128 0x27
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.long	0x5579
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x18e4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x18f4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF884
	.byte	0x1
	.value	0x1904
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x55e5
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x1905
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x1907
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF462
	.byte	0x1
	.value	0x1908
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF885
	.byte	0x1
	.value	0x1922
	.long	0x139
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x5673
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x1924
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x1924
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x1925
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x1926
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x1926
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x26
	.long	.LASF730
	.byte	0x1
	.value	0x193d
	.long	0x3018
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF886
	.byte	0x1
	.value	0x1961
	.long	0x139
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x56b2
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x1962
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF887
	.byte	0x1
	.value	0x1962
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF888
	.byte	0x1
	.value	0x196d
	.long	0x139
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x5729
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x196e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF887
	.byte	0x1
	.value	0x196e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x1970
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1971
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x1971
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x1972
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.long	.LASF889
	.byte	0x1
	.value	0x1992
	.long	0x139
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x5789
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x1993
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x1993
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x19a1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF890
	.byte	0x1
	.value	0x19b1
	.long	0x139
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.long	0x57e5
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x19b2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x19b2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x19b3
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF478
	.byte	0x1
	.value	0x19b5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF891
	.byte	0x1
	.value	0x19cc
	.long	0x139
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x5841
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x19cd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x19cd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x19ce
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF326
	.byte	0x1
	.value	0x19d0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF892
	.byte	0x1
	.value	0x19eb
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x5909
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x19ed
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x19ee
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x19ef
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"st"
	.byte	0x1
	.value	0x19ef
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x19f0
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x26
	.long	.LASF893
	.byte	0x1
	.value	0x19fe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x28
	.string	"st"
	.byte	0x1
	.value	0x1a10
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x28
	.string	"r"
	.byte	0x1
	.value	0x1a16
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF894
	.byte	0x1
	.value	0x1a63
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x5963
	.uleb128 0x25
	.long	.LASF622
	.byte	0x1
	.value	0x1a64
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x1a65
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF449
	.byte	0x1
	.value	0x1a68
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF895
	.byte	0x1
	.value	0x1a69
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF896
	.byte	0x1
	.value	0x1a86
	.long	0x139
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a38
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0x1a87
	.long	0x1dce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x1a88
	.long	0x13ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x1a8a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x1a8a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x1a8b
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x1a8c
	.long	0x13ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF698
	.long	0x5a38
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13517
	.uleb128 0x27
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x5a16
	.uleb128 0x26
	.long	.LASF339
	.byte	0x1
	.value	0x1a9c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x29
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.uleb128 0x26
	.long	.LASF339
	.byte	0x1
	.value	0x1aa9
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x29e0
	.uleb128 0x2a
	.long	.LASF897
	.byte	0x1
	.value	0x1ac8
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a97
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0x1ac9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"del"
	.byte	0x1
	.value	0x1ac9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x1aca
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x1acc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF898
	.byte	0x1
	.value	0x1ae3
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x5afe
	.uleb128 0x25
	.long	.LASF310
	.byte	0x1
	.value	0x1ae4
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x1ae5
	.long	0x13d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x1ae7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1ae7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"del"
	.byte	0x1
	.value	0x1ae7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF899
	.byte	0x1
	.value	0x1b01
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF900
	.byte	0x1
	.value	0x1b1c
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b62
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x1b1e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x1b1f
	.long	0x1dce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF901
	.byte	0x1
	.value	0x1b20
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF902
	.byte	0x1
	.value	0x119
	.long	0x1f5d
	.uleb128 0x9
	.byte	0x3
	.quad	gcse_file
	.uleb128 0x26
	.long	.LASF903
	.byte	0x1
	.value	0x122
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	run_jump_opt_after_gcse
	.uleb128 0x26
	.long	.LASF904
	.byte	0x1
	.value	0x129
	.long	0x1f5d
	.uleb128 0x9
	.byte	0x3
	.quad	debug_stderr
	.uleb128 0x26
	.long	.LASF905
	.byte	0x1
	.value	0x12c
	.long	0x14c5
	.uleb128 0x9
	.byte	0x3
	.quad	gcse_obstack
	.uleb128 0x12
	.long	0x2c0
	.long	0x5bca
	.uleb128 0x13
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x26
	.long	.LASF906
	.byte	0x1
	.value	0x131
	.long	0x5bba
	.uleb128 0x9
	.byte	0x3
	.quad	can_copy_p
	.uleb128 0x26
	.long	.LASF907
	.byte	0x1
	.value	0x134
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	can_copy_init_p
	.uleb128 0x26
	.long	.LASF908
	.byte	0x1
	.value	0x170
	.long	0x266
	.uleb128 0x9
	.byte	0x3
	.quad	expr_hash_table_size
	.uleb128 0x26
	.long	.LASF909
	.byte	0x1
	.value	0x174
	.long	0x228a
	.uleb128 0x9
	.byte	0x3
	.quad	expr_hash_table
	.uleb128 0x26
	.long	.LASF910
	.byte	0x1
	.value	0x177
	.long	0x266
	.uleb128 0x9
	.byte	0x3
	.quad	set_hash_table_size
	.uleb128 0x26
	.long	.LASF911
	.byte	0x1
	.value	0x17b
	.long	0x228a
	.uleb128 0x9
	.byte	0x3
	.quad	set_hash_table
	.uleb128 0x26
	.long	.LASF912
	.byte	0x1
	.value	0x17f
	.long	0x4e6
	.uleb128 0x9
	.byte	0x3
	.quad	uid_cuid
	.uleb128 0x26
	.long	.LASF913
	.byte	0x1
	.value	0x182
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	max_uid
	.uleb128 0x26
	.long	.LASF914
	.byte	0x1
	.value	0x18c
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	max_cuid
	.uleb128 0x26
	.long	.LASF915
	.byte	0x1
	.value	0x18f
	.long	0xed4
	.uleb128 0x9
	.byte	0x3
	.quad	cuid_insn
	.uleb128 0x26
	.long	.LASF916
	.byte	0x1
	.value	0x197
	.long	0x266
	.uleb128 0x9
	.byte	0x3
	.quad	max_gcse_regno
	.uleb128 0x26
	.long	.LASF770
	.byte	0x1
	.value	0x19a
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	n_exprs
	.uleb128 0x26
	.long	.LASF801
	.byte	0x1
	.value	0x19d
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	n_sets
	.uleb128 0x26
	.long	.LASF917
	.byte	0x1
	.value	0x1be
	.long	0x5cfe
	.uleb128 0x9
	.byte	0x3
	.quad	reg_set_table
	.uleb128 0x3
	.byte	0x8
	.long	0x3ee3
	.uleb128 0x26
	.long	.LASF918
	.byte	0x1
	.value	0x1c3
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	reg_set_table_size
	.uleb128 0x26
	.long	.LASF919
	.byte	0x1
	.value	0x1e1
	.long	0x1dce
	.uleb128 0x9
	.byte	0x3
	.quad	pre_ldst_mems
	.uleb128 0x26
	.long	.LASF920
	.byte	0x1
	.value	0x1e6
	.long	0x1339
	.uleb128 0x9
	.byte	0x3
	.quad	reg_set_bitmap
	.uleb128 0x26
	.long	.LASF921
	.byte	0x1
	.value	0x1ed
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	reg_set_in_block
	.uleb128 0x26
	.long	.LASF922
	.byte	0x1
	.value	0x1f1
	.long	0xed4
	.uleb128 0x9
	.byte	0x3
	.quad	modify_mem_list
	.uleb128 0x26
	.long	.LASF923
	.byte	0x1
	.value	0x1f5
	.long	0xed4
	.uleb128 0x9
	.byte	0x3
	.quad	canon_modify_mem_list
	.uleb128 0x26
	.long	.LASF924
	.byte	0x1
	.value	0x1fc
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	bytes_used
	.uleb128 0x26
	.long	.LASF925
	.byte	0x1
	.value	0x1ff
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	gcse_subst_count
	.uleb128 0x26
	.long	.LASF926
	.byte	0x1
	.value	0x201
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	gcse_create_count
	.uleb128 0x26
	.long	.LASF927
	.byte	0x1
	.value	0x203
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	const_prop_count
	.uleb128 0x26
	.long	.LASF928
	.byte	0x1
	.value	0x205
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	copy_prop_count
	.uleb128 0x26
	.long	.LASF929
	.byte	0x1
	.value	0x216
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	rd_kill
	.uleb128 0x26
	.long	.LASF930
	.byte	0x1
	.value	0x216
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	rd_gen
	.uleb128 0x26
	.long	.LASF931
	.byte	0x1
	.value	0x216
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	reaching_defs
	.uleb128 0x26
	.long	.LASF932
	.byte	0x1
	.value	0x216
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	rd_out
	.uleb128 0x26
	.long	.LASF776
	.byte	0x1
	.value	0x219
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	ae_kill
	.uleb128 0x26
	.long	.LASF775
	.byte	0x1
	.value	0x219
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	ae_gen
	.uleb128 0x26
	.long	.LASF933
	.byte	0x1
	.value	0x219
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	ae_in
	.uleb128 0x26
	.long	.LASF934
	.byte	0x1
	.value	0x219
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	ae_out
	.uleb128 0x26
	.long	.LASF935
	.byte	0x1
	.value	0x4b2
	.long	0x14c5
	.uleb128 0x9
	.byte	0x3
	.quad	reg_set_obstack
	.uleb128 0x26
	.long	.LASF638
	.byte	0x1
	.value	0x514
	.long	0x25b4
	.uleb128 0x9
	.byte	0x3
	.quad	reg_avail_info
	.uleb128 0x26
	.long	.LASF936
	.byte	0x1
	.value	0x515
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	current_bb
	.uleb128 0x26
	.long	.LASF937
	.byte	0x1
	.value	0x5a3
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	gcse_mems_conflict_p
	.uleb128 0x26
	.long	.LASF938
	.byte	0x1
	.value	0x5a9
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	gcse_mem_operand
	.uleb128 0x26
	.long	.LASF939
	.byte	0x1
	.value	0xe79
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	cprop_pavloc
	.uleb128 0x26
	.long	.LASF940
	.byte	0x1
	.value	0xe7a
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	cprop_absaltered
	.uleb128 0x26
	.long	.LASF941
	.byte	0x1
	.value	0xe7d
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	cprop_avin
	.uleb128 0x26
	.long	.LASF942
	.byte	0x1
	.value	0xe7e
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	cprop_avout
	.uleb128 0x12
	.long	0x1c4c
	.long	0x5f7c
	.uleb128 0x13
	.long	0x140
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.long	.LASF943
	.byte	0x1
	.value	0xf34
	.long	0x5f6c
	.uleb128 0x9
	.byte	0x3
	.quad	reg_use_table
	.uleb128 0x26
	.long	.LASF944
	.byte	0x1
	.value	0xf37
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	reg_use_count
	.uleb128 0x26
	.long	.LASF661
	.byte	0x1
	.value	0x1110
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	transp
	.uleb128 0x26
	.long	.LASF945
	.byte	0x1
	.value	0x1115
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	transpout
	.uleb128 0x26
	.long	.LASF662
	.byte	0x1
	.value	0x1118
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	comp
	.uleb128 0x26
	.long	.LASF663
	.byte	0x1
	.value	0x111b
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	antloc
	.uleb128 0x26
	.long	.LASF946
	.byte	0x1
	.value	0x111f
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	pre_optimal
	.uleb128 0x26
	.long	.LASF947
	.byte	0x1
	.value	0x1122
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	pre_redundant
	.uleb128 0x26
	.long	.LASF948
	.byte	0x1
	.value	0x1125
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	pre_insert_map
	.uleb128 0x26
	.long	.LASF949
	.byte	0x1
	.value	0x1128
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	pre_delete_map
	.uleb128 0x26
	.long	.LASF466
	.byte	0x1
	.value	0x112b
	.long	0x476e
	.uleb128 0x9
	.byte	0x3
	.quad	edge_list
	.uleb128 0x26
	.long	.LASF950
	.byte	0x1
	.value	0x112e
	.long	0x1328
	.uleb128 0x9
	.byte	0x3
	.quad	pre_redundant_insns
	.uleb128 0x26
	.long	.LASF951
	.byte	0x1
	.value	0x1588
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	hoist_vbein
	.uleb128 0x26
	.long	.LASF952
	.byte	0x1
	.value	0x1589
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	hoist_vbeout
	.uleb128 0x26
	.long	.LASF953
	.byte	0x1
	.value	0x158c
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	hoist_exprs
	.uleb128 0x26
	.long	.LASF954
	.byte	0x1
	.value	0x158f
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	dominators
	.uleb128 0x26
	.long	.LASF955
	.byte	0x1
	.value	0x1893
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	regvec
	.uleb128 0x26
	.long	.LASF956
	.byte	0x1
	.value	0x1896
	.long	0x13ea
	.uleb128 0x9
	.byte	0x3
	.quad	st_antloc
	.uleb128 0x26
	.long	.LASF957
	.byte	0x1
	.value	0x1899
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	num_stores
	.uleb128 0x33
	.long	.LASF958
	.byte	0x7
	.byte	0xaa
	.long	0x4a1
	.uleb128 0x12
	.long	0x661
	.long	0x6139
	.uleb128 0x13
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x33
	.long	.LASF162
	.byte	0x9
	.byte	0x34
	.long	0x6144
	.uleb128 0x15
	.long	0x6129
	.uleb128 0x33
	.long	.LASF959
	.byte	0x9
	.byte	0xa4
	.long	0x4ec
	.uleb128 0x12
	.long	0x288
	.long	0x6164
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x33
	.long	.LASF960
	.byte	0x2
	.byte	0x36
	.long	0x616f
	.uleb128 0x15
	.long	0x6154
	.uleb128 0x12
	.long	0x4cd
	.long	0x6184
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x33
	.long	.LASF961
	.byte	0x2
	.byte	0x3c
	.long	0x618f
	.uleb128 0x15
	.long	0x6174
	.uleb128 0x12
	.long	0x2c0
	.long	0x61a4
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x33
	.long	.LASF962
	.byte	0x2
	.byte	0x3f
	.long	0x61af
	.uleb128 0x15
	.long	0x6194
	.uleb128 0x12
	.long	0x2d
	.long	0x61c4
	.uleb128 0x13
	.long	0x140
	.byte	0x80
	.byte	0
	.uleb128 0x34
	.long	.LASF963
	.byte	0x2
	.value	0x611
	.long	0x61b4
	.uleb128 0x12
	.long	0x2d
	.long	0x61e6
	.uleb128 0x13
	.long	0x140
	.byte	0x2
	.uleb128 0x13
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x34
	.long	.LASF964
	.byte	0x2
	.value	0x619
	.long	0x61d0
	.uleb128 0x12
	.long	0x2d
	.long	0x6202
	.uleb128 0x13
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x34
	.long	.LASF965
	.byte	0x2
	.value	0x652
	.long	0x61f2
	.uleb128 0x34
	.long	.LASF966
	.byte	0xe
	.value	0x1b9
	.long	0x126c
	.uleb128 0x33
	.long	.LASF967
	.byte	0x13
	.byte	0x41
	.long	0x139
	.uleb128 0x33
	.long	.LASF968
	.byte	0x13
	.byte	0xaa
	.long	0x139
	.uleb128 0x34
	.long	.LASF969
	.byte	0x13
	.value	0x272
	.long	0x139
	.uleb128 0x34
	.long	.LASF970
	.byte	0x13
	.value	0x276
	.long	0x139
	.uleb128 0x33
	.long	.LASF971
	.byte	0xb
	.byte	0xe4
	.long	0x139
	.uleb128 0x33
	.long	.LASF972
	.byte	0xb
	.byte	0xe8
	.long	0x139
	.uleb128 0x33
	.long	.LASF973
	.byte	0xb
	.byte	0xec
	.long	0x125b
	.uleb128 0x12
	.long	0xc5f
	.long	0x6279
	.uleb128 0x13
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.long	.LASF974
	.byte	0xb
	.value	0x116
	.long	0x6269
	.uleb128 0x34
	.long	.LASF975
	.byte	0xb
	.value	0x11a
	.long	0x125b
	.uleb128 0x34
	.long	.LASF976
	.byte	0x10
	.value	0x1e4
	.long	0x1b40
	.uleb128 0x33
	.long	.LASF977
	.byte	0x12
	.byte	0x3a
	.long	0x62a8
	.uleb128 0x3
	.byte	0x8
	.long	0x1ba3
	.uleb128 0x35
	.long	.LASF978
	.byte	0x1
	.value	0x1f2
	.long	0x12e0
	.uleb128 0x9
	.byte	0x3
	.quad	modify_mem_list_set
	.uleb128 0x35
	.long	.LASF979
	.byte	0x1
	.value	0x1f6
	.long	0x12e0
	.uleb128 0x9
	.byte	0x3
	.quad	canon_modify_mem_list_set
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x33
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
	.uleb128 0x34
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
.LASF361:
	.string	"REG_BR_PROB"
.LASF391:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF562:
	.string	"profile_label_no"
.LASF318:
	.string	"rtstr"
.LASF775:
	.string	"ae_gen"
.LASF378:
	.string	"NOTE_INSN_DELETED"
.LASF93:
	.string	"_unused2"
.LASF246:
	.string	"UMOD"
.LASF300:
	.string	"min_align"
.LASF946:
	.string	"pre_optimal"
.LASF79:
	.string	"_fileno"
.LASF415:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF812:
	.string	"find_avail_set"
.LASF621:
	.string	"occr"
.LASF947:
	.string	"pre_redundant"
.LASF710:
	.string	"hash_scan_clobber"
.LASF326:
	.string	"first"
.LASF556:
	.string	"inlinable"
.LASF652:
	.string	"gcse_alloc"
.LASF588:
	.string	"uses_const_pool"
.LASF878:
	.string	"trim_ld_motion_mems"
.LASF287:
	.string	"CONSTANT_P_RTX"
.LASF908:
	.string	"expr_hash_table_size"
.LASF800:
	.string	"alloc_cprop_mem"
.LASF824:
	.string	"pre_expr_reaches_here_p_work"
.LASF731:
	.string	"_Bool"
.LASF317:
	.string	"rtuint"
.LASF971:
	.string	"n_basic_blocks"
.LASF651:
	.string	"grealloc"
.LASF921:
	.string	"reg_set_in_block"
.LASF321:
	.string	"rt_cselib"
.LASF190:
	.string	"DEFINE_PEEPHOLE2"
.LASF791:
	.string	"number_of_reaching_defs"
.LASF12:
	.string	"rtvec_def"
.LASF561:
	.string	"inl_max_label_num"
.LASF693:
	.string	"hash_string_1"
.LASF250:
	.string	"LSHIFTRT"
.LASF776:
	.string	"ae_kill"
.LASF934:
	.string	"ae_out"
.LASF886:
	.string	"load_kills_store"
.LASF184:
	.string	"MATCH_PAR_DUP"
.LASF84:
	.string	"_shortbuf"
.LASF982:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF245:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF468:
	.string	"num_edges"
.LASF925:
	.string	"gcse_subst_count"
.LASF470:
	.string	"cdi_direction"
.LASF178:
	.string	"MATCH_OPERAND"
.LASF496:
	.string	"x_first_label_num"
.LASF159:
	.string	"CCFPmode"
.LASF790:
	.string	"for_combine"
.LASF894:
	.string	"insert_insn_start_bb"
.LASF100:
	.string	"reg_class"
.LASF267:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF305:
	.string	"max_after_base"
.LASF268:
	.string	"UNLT"
.LASF705:
	.string	"insert_set_in_table"
.LASF589:
	.string	"uses_pic_offset_table"
.LASF721:
	.string	"cuid"
.LASF595:
	.string	"initial_value_struct"
.LASF794:
	.string	"found_setting"
.LASF464:
	.string	"probability"
.LASF930:
	.string	"rd_gen"
.LASF131:
	.string	"CTImode"
.LASF65:
	.string	"_flags"
.LASF852:
	.string	"compare_and_branch"
.LASF448:
	.string	"next"
.LASF977:
	.string	"compiler_params"
.LASF60:
	.string	"__off_t"
.LASF759:
	.string	"clob"
.LASF692:
	.string	"hash"
.LASF862:
	.string	"visited_allocated_locally"
.LASF695:
	.string	"units"
.LASF129:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF606:
	.string	"PARAM_MAX_DELAY_SLOT_LIVE_SEARCH"
.LASF289:
	.string	"VEC_MERGE"
.LASF941:
	.string	"cprop_avin"
.LASF559:
	.string	"original_decl_initial"
.LASF869:
	.string	"free_ldst_entry"
.LASF644:
	.string	"pass"
.LASF847:
	.string	"nonnull_avout"
.LASF85:
	.string	"_lock"
.LASF417:
	.string	"uhint"
.LASF222:
	.string	"RETURN"
.LASF920:
	.string	"reg_set_bitmap"
.LASF654:
	.string	"__o1"
.LASF713:
	.string	"in_libcall_block"
.LASF418:
	.string	"generic"
.LASF943:
	.string	"reg_use_table"
.LASF974:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF165:
	.string	"MODE_FLOAT"
.LASF936:
	.string	"current_bb"
.LASF309:
	.string	"alias"
.LASF306:
	.string	"offset_unsigned"
.LASF135:
	.string	"V2SImode"
.LASF585:
	.string	"stdarg"
.LASF546:
	.string	"x_trampoline_list"
.LASF650:
	.string	"gmalloc"
.LASF889:
	.string	"store_killed_in_insn"
.LASF25:
	.string	"Q_REGS"
.LASF209:
	.string	"CODE_LABEL"
.LASF130:
	.string	"CDImode"
.LASF215:
	.string	"UNSPEC"
.LASF208:
	.string	"BARRIER"
.LASF384:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF211:
	.string	"COND_EXEC"
.LASF225:
	.string	"CONST_INT"
.LASF221:
	.string	"CALL"
.LASF50:
	.string	"maybe_vaarg"
.LASF567:
	.string	"epilogue_delay_list"
.LASF137:
	.string	"V4QImode"
.LASF200:
	.string	"ATTR"
.LASF341:
	.string	"count"
.LASF319:
	.string	"rttype"
.LASF961:
	.string	"rtx_format"
.LASF19:
	.string	"DREG"
.LASF952:
	.string	"hoist_vbeout"
.LASF331:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF408:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF769:
	.string	"alloc_avail_expr_mem"
.LASF136:
	.string	"V2DImode"
.LASF536:
	.string	"x_return_label"
.LASF445:
	.string	"varray_type"
.LASF314:
	.string	"mem_attrs"
.LASF71:
	.string	"_IO_write_end"
.LASF355:
	.string	"REG_UNUSED"
.LASF193:
	.string	"DEFINE_DELAY"
.LASF243:
	.string	"MINUS"
.LASF543:
	.string	"x_clobber_return_insn"
.LASF656:
	.string	"alloc_gcse_mem"
.LASF22:
	.string	"SIREG"
.LASF817:
	.string	"reg_used"
.LASF424:
	.string	"sched_info_tag"
.LASF233:
	.string	"STRICT_LOW_PART"
.LASF802:
	.string	"free_cprop_mem"
.LASF645:
	.string	"initial_bytes_used"
.LASF926:
	.string	"gcse_create_count"
.LASF653:
	.string	"__len"
.LASF620:
	.string	"reaching_reg"
.LASF175:
	.string	"INCLUDE"
.LASF404:
	.string	"GR_FRAME_POINTER"
.LASF827:
	.string	"process_insert_insn"
.LASF339:
	.string	"index"
.LASF431:
	.string	"freq"
.LASF271:
	.string	"ZERO_EXTEND"
.LASF274:
	.string	"FLOAT_TRUNCATE"
.LASF756:
	.string	"mark_call"
.LASF512:
	.string	"x_forced_labels"
.LASF740:
	.string	"lookup_expr"
.LASF527:
	.string	"internal_arg_pointer"
.LASF833:
	.string	"inserted"
.LASF401:
	.string	"GR_PC"
.LASF635:
	.string	"max_reg"
.LASF21:
	.string	"BREG"
.LASF146:
	.string	"V2SFmode"
.LASF438:
	.string	"varray_data"
.LASF597:
	.string	"machine_function"
.LASF275:
	.string	"FLOAT"
.LASF367:
	.string	"REG_EH_CONTEXT"
.LASF101:
	.string	"machine_mode"
.LASF599:
	.string	"param_info"
.LASF959:
	.string	"word_mode"
.LASF718:
	.string	"flat_table"
.LASF472:
	.string	"CDI_POST_DOMINATORS"
.LASF482:
	.string	"chunk"
.LASF324:
	.string	"rtmem"
.LASF681:
	.string	"oprs_unchanged_p"
.LASF555:
	.string	"fixup_var_refs_queue"
.LASF910:
	.string	"set_hash_table_size"
.LASF778:
	.string	"check_self_loop"
.LASF284:
	.string	"RANGE_REG"
.LASF322:
	.string	"rtbit"
.LASF447:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF108:
	.string	"TImode"
.LASF260:
	.string	"PRE_MODIFY"
.LASF570:
	.string	"returns_pointer"
.LASF691:
	.string	"do_not_record_p"
.LASF273:
	.string	"FLOAT_EXTEND"
.LASF428:
	.string	"last_note_uid"
.LASF515:
	.string	"stmt"
.LASF855:
	.string	"alloc_code_hoist_mem"
.LASF6:
	.string	"in_struct"
.LASF700:
	.string	"antic_p"
.LASF379:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF949:
	.string	"pre_delete_map"
.LASF106:
	.string	"SImode"
.LASF217:
	.string	"ADDR_VEC"
.LASF593:
	.string	"stmt_status"
.LASF688:
	.string	"oprs_anticipatable_p"
.LASF147:
	.string	"V2DFmode"
.LASF299:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF313:
	.string	"align"
.LASF49:
	.string	"sse_regno"
.LASF328:
	.string	"indx"
.LASF563:
	.string	"machine"
.LASF236:
	.string	"SYMBOL_REF"
.LASF673:
	.string	"record_set_info"
.LASF377:
	.string	"NOTE_INSN_BIAS"
.LASF707:
	.string	"hash_scan_set"
.LASF763:
	.string	"free_rd_mem"
.LASF948:
	.string	"pre_insert_map"
.LASF399:
	.string	"NOTE_INSN_MAX"
.LASF510:
	.string	"x_saveregs_value"
.LASF669:
	.string	"free_reg_set_mem"
.LASF189:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF241:
	.string	"COMPARE"
.LASF269:
	.string	"LTGT"
.LASF486:
	.string	"temp"
.LASF476:
	.string	"unsignedp"
.LASF916:
	.string	"max_gcse_regno"
.LASF281:
	.string	"HIGH"
.LASF238:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF107:
	.string	"DImode"
.LASF611:
	.string	"_obstack_chunk"
.LASF844:
	.string	"delete_null_pointer_checks_1"
.LASF455:
	.string	"elms"
.LASF676:
	.string	"compute_sets"
.LASF413:
	.string	"const_equiv_data"
.LASF529:
	.string	"hard_reg_initial_vals"
.LASF508:
	.string	"x_inhibit_defer_pop"
.LASF78:
	.string	"_chain"
.LASF683:
	.string	"info"
.LASF659:
	.string	"column_size"
.LASF259:
	.string	"POST_INC"
.LASF678:
	.string	"test_insn"
.LASF838:
	.string	"pre_delete"
.LASF858:
	.string	"compute_code_hoist_data"
.LASF758:
	.string	"mark_clobber"
.LASF120:
	.string	"TFmode"
.LASF614:
	.string	"reg_use"
.LASF712:
	.string	"hash_scan_insn"
.LASF56:
	.string	"unsigned char"
.LASF596:
	.string	"temp_slot"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF513:
	.string	"x_pending_chain"
.LASF966:
	.string	"regs_invalidated_by_call"
.LASF528:
	.string	"cannot_inline"
.LASF810:
	.string	"from"
.LASF984:
	.string	"_IO_lock_t"
.LASF912:
	.string	"uid_cuid"
.LASF481:
	.string	"chunk_size"
.LASF435:
	.string	"basic_block"
.LASF103:
	.string	"BImode"
.LASF257:
	.string	"PRE_INC"
.LASF354:
	.string	"REG_NO_CONFLICT"
.LASF117:
	.string	"SFmode"
.LASF516:
	.string	"emit"
.LASF737:
	.string	"alloc_expr_hash_table"
.LASF647:
	.string	"gcse_obstack_bottom"
.LASF206:
	.string	"JUMP_INSN"
.LASF914:
	.string	"max_cuid"
.LASF336:
	.string	"cond_local_set"
.LASF465:
	.string	"edge"
.LASF169:
	.string	"MODE_COMPLEX_FLOAT"
.LASF641:
	.string	"last_set"
.LASF323:
	.string	"rttree"
.LASF762:
	.string	"n_blocks"
.LASF628:
	.string	"loads"
.LASF749:
	.string	"bit_num_"
.LASF483:
	.string	"object_base"
.LASF376:
	.string	"insn_note"
.LASF395:
	.string	"NOTE_INSN_RANGE_END"
.LASF188:
	.string	"DEFINE_SPLIT"
.LASF577:
	.string	"has_nonlocal_goto"
.LASF591:
	.string	"arg_pointer_save_area_init"
.LASF602:
	.string	"help"
.LASF227:
	.string	"CONST_VECTOR"
.LASF185:
	.string	"MATCH_INSN"
.LASF837:
	.string	"avail"
.LASF854:
	.string	"regs_per_pass"
.LASF694:
	.string	"hash_expr_1"
.LASF537:
	.string	"x_save_expr_regs"
.LASF118:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF723:
	.string	"unused1"
.LASF458:
	.string	"gcov_type"
.LASF54:
	.string	"size_t"
.LASF219:
	.string	"PREFETCH"
.LASF753:
	.string	"free_modify_mem_tables"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF520:
	.string	"pops_args"
.LASF112:
	.string	"PSImode"
.LASF539:
	.string	"x_rtl_expr_chain"
.LASF865:
	.string	"insn_inserted_p"
.LASF283:
	.string	"RANGE_INFO"
.LASF661:
	.string	"transp"
.LASF764:
	.string	"handle_rd_kill_set"
.LASF414:
	.string	"rtunion_def"
.LASF898:
	.string	"delete_store"
.LASF199:
	.string	"DEFINE_ATTR"
.LASF201:
	.string	"SET_ATTR"
.LASF126:
	.string	"TCmode"
.LASF531:
	.string	"x_nonlocal_labels"
.LASF276:
	.string	"UNSIGNED_FLOAT"
.LASF366:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF423:
	.string	"cselib_val_struct"
.LASF864:
	.string	"dominated"
.LASF398:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF70:
	.string	"_IO_write_ptr"
.LASF760:
	.string	"mark_oprs_set"
.LASF613:
	.string	"contents"
.LASF248:
	.string	"ROTATE"
.LASF334:
	.string	"succ"
.LASF430:
	.string	"refs"
.LASF272:
	.string	"TRUNCATE"
.LASF359:
	.string	"REG_DEP_ANTI"
.LASF123:
	.string	"SCmode"
.LASF960:
	.string	"rtx_length"
.LASF965:
	.string	"global_rtl"
.LASF409:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF113:
	.string	"PDImode"
.LASF380:
	.string	"NOTE_INSN_BLOCK_END"
.LASF832:
	.string	"did_insert"
.LASF805:
	.string	"repeat"
.LASF420:
	.string	"bitmap"
.LASF389:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF962:
	.string	"rtx_class"
.LASF343:
	.string	"flags"
.LASF808:
	.string	"xptr"
.LASF505:
	.string	"x_regno_reg_rtx"
.LASF176:
	.string	"EXPR_LIST"
.LASF203:
	.string	"EQ_ATTR"
.LASF816:
	.string	"alter_jumps"
.LASF815:
	.string	"cprop_insn"
.LASF931:
	.string	"reaching_defs"
.LASF634:
	.string	"min_reg"
.LASF156:
	.string	"CCGOCmode"
.LASF234:
	.string	"CONCAT"
.LASF460:
	.string	"pred_next"
.LASF302:
	.string	"min_after_vec"
.LASF845:
	.string	"block_reg"
.LASF63:
	.string	"FILE"
.LASF727:
	.string	"record_last_set_info"
.LASF240:
	.string	"COND"
.LASF452:
	.string	"simple_bitmap_def"
.LASF166:
	.string	"MODE_PARTIAL_INT"
.LASF547:
	.string	"x_parm_birth_insn"
.LASF772:
	.string	"compute_ae_gen"
.LASF781:
	.string	"expr_reaches_here_p"
.LASF796:
	.string	"regnum_for_replacing"
.LASF549:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF124:
	.string	"DCmode"
.LASF829:
	.string	"pre_edge_insert"
.LASF774:
	.string	"compute_ae_kill"
.LASF191:
	.string	"DEFINE_COMBINE"
.LASF980:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF626:
	.string	"ls_expr"
.LASF907:
	.string	"can_copy_init_p"
.LASF541:
	.string	"x_tail_recursion_reentry"
.LASF857:
	.string	"compute_code_hoist_vbeinout"
.LASF249:
	.string	"ASHIFTRT"
.LASF768:
	.string	"passes"
.LASF746:
	.string	"clear_modify_mem_tables"
.LASF879:
	.string	"update_ld_motion_stores"
.LASF154:
	.string	"CCmode"
.LASF806:
	.string	"compute_cprop_data"
.LASF332:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF382:
	.string	"NOTE_INSN_LOOP_END"
.LASF152:
	.string	"V16SFmode"
.LASF690:
	.string	"hash_expr"
.LASF396:
	.string	"NOTE_INSN_LIVE"
.LASF196:
	.string	"DEFINE_COND_EXEC"
.LASF74:
	.string	"_IO_save_base"
.LASF473:
	.string	"var_refs_queue"
.LASF509:
	.string	"x_stack_pointer_delta"
.LASF843:
	.string	"invalidate_nonnull_info"
.LASF192:
	.string	"DEFINE_EXPAND"
.LASF744:
	.string	"listp"
.LASF580:
	.string	"is_thunk"
.LASF967:
	.string	"optimize_size"
.LASF747:
	.string	"ptr_"
.LASF441:
	.string	"elements_used"
.LASF143:
	.string	"V8SImode"
.LASF533:
	.string	"x_nonlocal_goto_handler_labels"
.LASF205:
	.string	"INSN"
.LASF316:
	.string	"rtint"
.LASF704:
	.string	"last_occr"
.LASF985:
	.string	"gcse_main"
.LASF951:
	.string	"hoist_vbein"
.LASF235:
	.string	"LABEL_REF"
.LASF919:
	.string	"pre_ldst_mems"
.LASF358:
	.string	"REG_LABEL"
.LASF637:
	.string	"nonnull_killed"
.LASF814:
	.string	"cprop_jump"
.LASF437:
	.string	"elt_list"
.LASF777:
	.string	"expr_reaches_here_p_work"
.LASF346:
	.string	"REG_DEAD"
.LASF642:
	.string	"file"
.LASF386:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF88:
	.string	"__pad2"
.LASF734:
	.string	"free_gcse_mem"
.LASF349:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF457:
	.string	"regset"
.LASF469:
	.string	"index_to_edge"
.LASF670:
	.string	"record_one_set"
.LASF658:
	.string	"max_bitmap_memory"
.LASF155:
	.string	"CCGCmode"
.LASF338:
	.string	"global_live_at_end"
.LASF877:
	.string	"compute_ld_motion_mems"
.LASF745:
	.string	"list"
.LASF231:
	.string	"SCRATCH"
.LASF141:
	.string	"V8QImode"
.LASF850:
	.string	"condition"
.LASF144:
	.string	"V8DImode"
.LASF172:
	.string	"MAX_MODE_CLASS"
.LASF835:
	.string	"pre_insert_copy_insn"
.LASF927:
	.string	"const_prop_count"
.LASF750:
	.string	"word_num_"
.LASF969:
	.string	"flag_gcse_lm"
.LASF675:
	.string	"record_set_insn"
.LASF270:
	.string	"SIGN_EXTEND"
.LASF572:
	.string	"calls_setjmp"
.LASF699:
	.string	"insert_expr_in_table"
.LASF601:
	.string	"value"
.LASF963:
	.string	"const_int_rtx"
.LASF640:
	.string	"first_set"
.LASF292:
	.string	"VEC_DUPLICATE"
.LASF534:
	.string	"x_nonlocal_goto_stack_level"
.LASF95:
	.string	"_next"
.LASF896:
	.string	"insert_store"
.LASF310:
	.string	"expr"
.LASF392:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF488:
	.string	"chunkfun"
.LASF851:
	.string	"earliest"
.LASF532:
	.string	"x_nonlocal_goto_handler_slots"
.LASF150:
	.string	"V8SFmode"
.LASF622:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF866:
	.string	"hoistable"
.LASF357:
	.string	"REG_CC_USER"
.LASF214:
	.string	"ASM_OPERANDS"
.LASF552:
	.string	"x_temp_slot_level"
.LASF720:
	.string	"record_last_reg_set_info"
.LASF158:
	.string	"CCZmode"
.LASF383:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF809:
	.string	"try_replace_reg"
.LASF27:
	.string	"INDEX_REGS"
.LASF748:
	.string	"indx_"
.LASF706:
	.string	"cur_occr"
.LASF578:
	.string	"contains_functions"
.LASF846:
	.string	"nonnull_avin"
.LASF517:
	.string	"varasm"
.LASF372:
	.string	"REG_NON_LOCAL_GOTO"
.LASF218:
	.string	"ADDR_DIFF_VEC"
.LASF848:
	.string	"stop_insn"
.LASF582:
	.string	"profile"
.LASF785:
	.string	"can_reach"
.LASF280:
	.string	"ZERO_EXTRACT"
.LASF416:
	.string	"hint"
.LASF213:
	.string	"ASM_INPUT"
.LASF263:
	.string	"ORDERED"
.LASF151:
	.string	"V8DFmode"
.LASF928:
	.string	"copy_prop_count"
.LASF475:
	.string	"promoted_mode"
.LASF665:
	.string	"hash_table_size"
.LASF918:
	.string	"reg_set_table_size"
.LASF876:
	.string	"invalidate_any_buried_refs"
.LASF440:
	.string	"num_elements"
.LASF277:
	.string	"UNSIGNED_FIX"
.LASF569:
	.string	"returns_pcc_struct"
.LASF701:
	.string	"found"
.LASF911:
	.string	"set_hash_table"
.LASF47:
	.string	"sse_words"
.LASF987:
	.string	"first_ls_expr"
.LASF799:
	.string	"one_classic_gcse_pass"
.LASF29:
	.string	"GENERAL_REGS"
.LASF819:
	.string	"one_cprop_pass"
.LASF958:
	.string	"stderr"
.LASF443:
	.string	"name"
.LASF904:
	.string	"debug_stderr"
.LASF177:
	.string	"INSN_LIST"
.LASF96:
	.string	"_sbuf"
.LASF285:
	.string	"RANGE_VAR"
.LASF436:
	.string	"changes_mode"
.LASF76:
	.string	"_IO_save_end"
.LASF164:
	.string	"MODE_INT"
.LASF442:
	.string	"element_size"
.LASF638:
	.string	"reg_avail_info"
.LASF524:
	.string	"arg_offset_rtx"
.LASF821:
	.string	"free_pre_mem"
.LASF2:
	.string	"jump"
.LASF46:
	.string	"regno"
.LASF506:
	.string	"expr_status"
.LASF605:
	.string	"PARAM_MAX_DELAY_SLOT_INSN_SEARCH"
.LASF730:
	.string	"clobbers_all"
.LASF576:
	.string	"has_nonlocal_label"
.LASF798:
	.string	"classic_gcse"
.LASF286:
	.string	"RANGE_LIVE"
.LASF507:
	.string	"x_pending_stack_adjust"
.LASF134:
	.string	"V2HImode"
.LASF521:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF603:
	.string	"compiler_param"
.LASF422:
	.string	"const_equiv"
.LASF913:
	.string	"max_uid"
.LASF901:
	.string	"update_flow"
.LASF887:
	.string	"store_pattern"
.LASF427:
	.string	"last_uid"
.LASF320:
	.string	"rt_addr_diff_vec_flags"
.LASF924:
	.string	"bytes_used"
.LASF406:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF295:
	.string	"SS_MINUS"
.LASF917:
	.string	"reg_set_table"
.LASF182:
	.string	"MATCH_PARALLEL"
.LASF139:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF724:
	.string	"v_insn"
.LASF935:
	.string	"reg_set_obstack"
.LASF348:
	.string	"REG_EQUIV"
.LASF797:
	.string	"new_insn"
.LASF770:
	.string	"n_exprs"
.LASF932:
	.string	"rd_out"
.LASF57:
	.string	"short unsigned int"
.LASF58:
	.string	"signed char"
.LASF181:
	.string	"MATCH_OPERATOR"
.LASF811:
	.string	"success"
.LASF646:
	.string	"max_pass_bytes"
.LASF439:
	.string	"varray_head_tag"
.LASF327:
	.string	"current"
.LASF657:
	.string	"get_bitmap_width"
.LASF499:
	.string	"x_cur_insn_uid"
.LASF548:
	.string	"x_last_parm_insn"
.LASF761:
	.string	"alloc_rd_mem"
.LASF662:
	.string	"comp"
.LASF297:
	.string	"SS_TRUNCATE"
.LASF362:
	.string	"REG_EXEC_COUNT"
.LASF671:
	.string	"new_reg_info"
.LASF557:
	.string	"no_debugging_symbols"
.LASF792:
	.string	"handle_avail_expr"
.LASF964:
	.string	"const_tiny_rtx"
.LASF301:
	.string	"base_after_vec"
.LASF186:
	.string	"DEFINE_INSN"
.LASF61:
	.string	"__off64_t"
.LASF714:
	.string	"dump_hash_table"
.LASF140:
	.string	"V4DImode"
.LASF492:
	.string	"maybe_empty_object"
.LASF340:
	.string	"loop_depth"
.LASF68:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF944:
	.string	"reg_use_count"
.LASF86:
	.string	"_offset"
.LASF766:
	.string	"compute_kill_rd"
.LASF407:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF501:
	.string	"x_last_filename"
.LASF360:
	.string	"REG_DEP_OUTPUT"
.LASF73:
	.string	"_IO_buf_end"
.LASF453:
	.string	"n_bits"
.LASF195:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF296:
	.string	"US_MINUS"
.LASF526:
	.string	"return_rtx"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF279:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF433:
	.string	"live_length"
.LASF970:
	.string	"flag_gcse_sm"
.LASF220:
	.string	"CLOBBER"
.LASF459:
	.string	"edge_def"
.LASF92:
	.string	"_mode"
.LASF170:
	.string	"MODE_VECTOR_INT"
.LASF69:
	.string	"_IO_write_base"
.LASF632:
	.string	"null_pointer_info"
.LASF364:
	.string	"REG_SAVE_AREA"
.LASF795:
	.string	"use_src"
.LASF288:
	.string	"CALL_PLACEHOLDER"
.LASF514:
	.string	"function"
.LASF148:
	.string	"V4SFmode"
.LASF663:
	.string	"antloc"
.LASF581:
	.string	"instrument_entry_exit"
.LASF853:
	.string	"new_jump"
.LASF544:
	.string	"x_frame_offset"
.LASF242:
	.string	"PLUS"
.LASF738:
	.string	"free_expr_hash_table"
.LASF728:
	.string	"last_set_insn"
.LASF258:
	.string	"POST_DEC"
.LASF450:
	.string	"bits"
.LASF105:
	.string	"HImode"
.LASF344:
	.string	"rtunion"
.LASF385:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF168:
	.string	"MODE_COMPLEX_INT"
.LASF592:
	.string	"eh_status"
.LASF477:
	.string	"sequence_stack"
.LASF53:
	.string	"long int"
.LASF411:
	.string	"GR_VIRTUAL_CFA"
.LASF773:
	.string	"expr_killed_p"
.LASF973:
	.string	"basic_block_info"
.LASF350:
	.string	"REG_WAS_0"
.LASF771:
	.string	"free_avail_expr_mem"
.LASF371:
	.string	"REG_NORETURN"
.LASF94:
	.string	"_IO_marker"
.LASF822:
	.string	"compute_pre_data"
.LASF119:
	.string	"XFmode"
.LASF571:
	.string	"needs_context"
.LASF370:
	.string	"REG_MAYBE_DEAD"
.LASF612:
	.string	"limit"
.LASF884:
	.string	"find_moveable_store"
.LASF149:
	.string	"V4DFmode"
.LASF826:
	.string	"pre_expr_reaches_here_p"
.LASF639:
	.string	"last_bb"
.LASF4:
	.string	"unchanging"
.LASF953:
	.string	"hoist_exprs"
.LASF345:
	.string	"reg_note"
.LASF575:
	.string	"calls_eh_return"
.LASF554:
	.string	"x_target_temp_slot_level"
.LASF803:
	.string	"compute_transp"
.LASF522:
	.string	"pretend_args_size"
.LASF979:
	.string	"canon_modify_mem_list_set"
.LASF173:
	.string	"rtx_code"
.LASF51:
	.string	"CUMULATIVE_ARGS"
.LASF627:
	.string	"pattern"
.LASF478:
	.string	"last"
.LASF584:
	.string	"varargs"
.LASF909:
	.string	"expr_hash_table"
.LASF619:
	.string	"avail_occr"
.LASF757:
	.string	"mark_set"
.LASF20:
	.string	"CREG"
.LASF717:
	.string	"total_size"
.LASF586:
	.string	"x_whole_function_mode_p"
.LASF174:
	.string	"UNKNOWN"
.LASF216:
	.string	"UNSPEC_VOLATILE"
.LASF598:
	.string	"language_function"
.LASF726:
	.string	"record_last_mem_set_info"
.LASF489:
	.string	"freefun"
.LASF388:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF55:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF655:
	.string	"compute_can_copy"
.LASF115:
	.string	"HFmode"
.LASF560:
	.string	"inl_last_parm_insn"
.LASF223:
	.string	"TRAP_IF"
.LASF636:
	.string	"nonnull_local"
.LASF432:
	.string	"deaths"
.LASF368:
	.string	"REG_EH_REGION"
.LASF856:
	.string	"free_code_hoist_mem"
.LASF550:
	.string	"x_parm_reg_stack_loc"
.LASF351:
	.string	"REG_RETVAL"
.LASF127:
	.string	"CQImode"
.LASF697:
	.string	"expr_equiv_p"
.LASF62:
	.string	"char"
.LASF568:
	.string	"returns_struct"
.LASF804:
	.string	"bmap"
.LASF125:
	.string	"XCmode"
.LASF542:
	.string	"x_arg_pointer_save_area"
.LASF733:
	.string	"n_insns"
.LASF18:
	.string	"AREG"
.LASF752:
	.string	"mask_"
.LASF834:
	.string	"insert"
.LASF540:
	.string	"x_tail_recursion_label"
.LASF890:
	.string	"store_killed_after"
.LASF715:
	.string	"table"
.LASF484:
	.string	"next_free"
.LASF741:
	.string	"lookup_set"
.LASF955:
	.string	"regvec"
.LASF72:
	.string	"_IO_buf_base"
.LASF566:
	.string	"language"
.LASF251:
	.string	"ROTATERT"
.LASF617:
	.string	"next_same_hash"
.LASF685:
	.string	"load_killed_in_block_p"
.LASF891:
	.string	"store_killed_before"
.LASF237:
	.string	"ADDRESSOF"
.LASF373:
	.string	"REG_SETJMP"
.LASF631:
	.string	"hash_index"
.LASF630:
	.string	"invalid"
.LASF825:
	.string	"occr_bb"
.LASF133:
	.string	"V2QImode"
.LASF487:
	.string	"alignment_mask"
.LASF495:
	.string	"x_reg_rtx_no"
.LASF111:
	.string	"PHImode"
.LASF67:
	.string	"_IO_read_end"
.LASF783:
	.string	"computing_insn"
.LASF474:
	.string	"modified"
.LASF883:
	.string	"store_ops_ok"
.LASF504:
	.string	"regno_decl"
.LASF480:
	.string	"obstack"
.LASF782:
	.string	"rval"
.LASF425:
	.string	"reg_info_def"
.LASF132:
	.string	"COImode"
.LASF256:
	.string	"PRE_DEC"
.LASF905:
	.string	"gcse_obstack"
.LASF633:
	.string	"current_block"
.LASF64:
	.string	"_IO_FILE"
.LASF387:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF405:
	.string	"GR_HARD_FRAME_POINTER"
.LASF356:
	.string	"REG_CC_SETTER"
.LASF574:
	.string	"calls_alloca"
.LASF981:
	.string	"gcse.c"
.LASF553:
	.string	"x_var_temp_slot_level"
.LASF163:
	.string	"MODE_RANDOM"
.LASF294:
	.string	"US_PLUS"
.LASF861:
	.string	"expr_index"
.LASF467:
	.string	"num_blocks"
.LASF153:
	.string	"BLKmode"
.LASF954:
	.string	"dominators"
.LASF122:
	.string	"HCmode"
.LASF801:
	.string	"n_sets"
.LASF779:
	.string	"visited"
.LASF880:
	.string	"mem_ptr"
.LASF732:
	.string	"alloc_set_hash_table"
.LASF893:
	.string	"store_list"
.LASF900:
	.string	"store_motion"
.LASF608:
	.string	"PARAM_MAX_GCSE_MEMORY"
.LASF228:
	.string	"CONST_STRING"
.LASF291:
	.string	"VEC_CONCAT"
.LASF312:
	.string	"size"
.LASF813:
	.string	"set1"
.LASF87:
	.string	"__pad1"
.LASF89:
	.string	"__pad3"
.LASF90:
	.string	"__pad4"
.LASF91:
	.string	"__pad5"
.LASF363:
	.string	"REG_NOALIAS"
.LASF204:
	.string	"ATTR_FLAG"
.LASF160:
	.string	"CCFPUmode"
.LASF823:
	.string	"trapping_expr"
.LASF347:
	.string	"REG_INC"
.LASF194:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF456:
	.string	"sbitmap"
.LASF545:
	.string	"x_context_display"
.LASF840:
	.string	"one_pre_gcse_pass"
.LASF875:
	.string	"simple_mem"
.LASF986:
	.string	"delete_null_pointer_checks"
.LASF77:
	.string	"_markers"
.LASF97:
	.string	"_pos"
.LASF674:
	.string	"setter"
.LASF198:
	.string	"ADDRESS"
.LASF463:
	.string	"insns"
.LASF820:
	.string	"alloc_pre_mem"
.LASF558:
	.string	"original_arg_vector"
.LASF786:
	.string	"def_reaches_here_p"
.LASF660:
	.string	"compute_local_properties"
.LASF874:
	.string	"next_ls_expr"
.LASF818:
	.string	"cprop"
.LASF493:
	.string	"alloc_failed"
.LASF975:
	.string	"basic_block_for_insn"
.LASF978:
	.string	"modify_mem_list_set"
.LASF590:
	.string	"uses_eh_lsda"
.LASF419:
	.string	"cptr"
.LASF950:
	.string	"pre_redundant_insns"
.LASF325:
	.string	"bitmap_head_def"
.LASF871:
	.string	"print_ldst_list"
.LASF643:
	.string	"changed"
.LASF434:
	.string	"calls_crossed"
.LASF298:
	.string	"US_TRUNCATE"
.LASF784:
	.string	"insn_computes_expr"
.LASF863:
	.string	"hoist_code"
.LASF719:
	.string	"hash_val"
.LASF623:
	.string	"deleted_p"
.LASF400:
	.string	"global_rtl_index"
.LASF624:
	.string	"copied_p"
.LASF45:
	.string	"nregs"
.LASF293:
	.string	"SS_PLUS"
.LASF255:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF307:
	.string	"scale"
.LASF104:
	.string	"QImode"
.LASF895:
	.string	"before"
.LASF666:
	.string	"hash_table"
.LASF648:
	.string	"orig_bb_count"
.LASF618:
	.string	"antic_occr"
.LASF444:
	.string	"data"
.LASF403:
	.string	"GR_STACK_POINTER"
.LASF882:
	.string	"reg_set_info"
.LASF789:
	.string	"addr_this_reg"
.LASF938:
	.string	"gcse_mem_operand"
.LASF116:
	.string	"TQFmode"
.LASF751:
	.string	"word_"
.LASF330:
	.string	"head"
.LASF765:
	.string	"this_reg"
.LASF899:
	.string	"free_store_memory"
.LASF44:
	.string	"words"
.LASF735:
	.string	"free_set_hash_table"
.LASF304:
	.string	"min_after_base"
.LASF649:
	.string	"__obj"
.LASF421:
	.string	"sched"
.LASF881:
	.string	"copy"
.LASF736:
	.string	"compute_set_hash_table"
.LASF587:
	.string	"x_dont_save_pending_sizes_p"
.LASF43:
	.string	"ix86_args"
.LASF972:
	.string	"n_edges"
.LASF942:
	.string	"cprop_avout"
.LASF968:
	.string	"warn_disabled_optimization"
.LASF485:
	.string	"chunk_limit"
.LASF945:
	.string	"transpout"
.LASF703:
	.string	"last_expr"
.LASF679:
	.string	"num_clobbers"
.LASF831:
	.string	"set_size"
.LASF17:
	.string	"NO_REGS"
.LASF976:
	.string	"cfun"
.LASF471:
	.string	"CDI_DOMINATORS"
.LASF523:
	.string	"outgoing_args_size"
.LASF109:
	.string	"OImode"
.LASF369:
	.string	"REG_SAVE_NOTE"
.LASF725:
	.string	"dest_addr"
.LASF454:
	.string	"bytes"
.LASF849:
	.string	"last_insn"
.LASF253:
	.string	"SMAX"
.LASF412:
	.string	"GR_MAX"
.LASF807:
	.string	"find_used_regs"
.LASF290:
	.string	"VEC_SELECT"
.LASF607:
	.string	"PARAM_MAX_PENDING_LIST_LENGTH"
.LASF625:
	.string	"reg_set"
.LASF353:
	.string	"REG_NONNEG"
.LASF564:
	.string	"stack_alignment_needed"
.LASF888:
	.string	"find_loads"
.LASF929:
	.string	"rd_kill"
.LASF494:
	.string	"emit_status"
.LASF836:
	.string	"pre_insert_copies"
.LASF171:
	.string	"MODE_VECTOR_FLOAT"
.LASF839:
	.string	"pre_gcse"
.LASF261:
	.string	"POST_MODIFY"
.LASF743:
	.string	"free_insn_expr_list_list"
.LASF870:
	.string	"free_ldst_mems"
.LASF956:
	.string	"st_antloc"
.LASF708:
	.string	"set_p"
.LASF365:
	.string	"REG_BR_PRED"
.LASF187:
	.string	"DEFINE_PEEPHOLE"
.LASF98:
	.string	"long long unsigned int"
.LASF394:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF311:
	.string	"offset"
.LASF308:
	.string	"addr_diff_vec_flags"
.LASF82:
	.string	"_cur_column"
.LASF183:
	.string	"MATCH_OP_DUP"
.LASF197:
	.string	"SEQUENCE"
.LASF491:
	.string	"use_extra_arg"
.LASF114:
	.string	"QFmode"
.LASF629:
	.string	"stores"
.LASF923:
	.string	"canon_modify_mem_list"
.LASF664:
	.string	"setp"
.LASF429:
	.string	"sets"
.LASF525:
	.string	"args_info"
.LASF610:
	.string	"LAST_PARAM"
.LASF583:
	.string	"limit_stack"
.LASF892:
	.string	"build_store_vectors"
.LASF224:
	.string	"RESX"
.LASF462:
	.string	"dest"
.LASF212:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF788:
	.string	"can_disregard_other_sets"
.LASF75:
	.string	"_IO_backup_base"
.LASF885:
	.string	"compute_store_table"
.LASF262:
	.string	"UNORDERED"
.LASF689:
	.string	"oprs_available_p"
.LASF161:
	.string	"MAX_MACHINE_MODE"
.LASF66:
	.string	"_IO_read_ptr"
.LASF867:
	.string	"one_code_hoisting_pass"
.LASF466:
	.string	"edge_list"
.LASF780:
	.string	"pred_bb"
.LASF722:
	.string	"canon_list_insert"
.LASF682:
	.string	"avail_p"
.LASF337:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF179:
	.string	"MATCH_SCRATCH"
.LASF229:
	.string	"CONST"
.LASF503:
	.string	"regno_pointer_align"
.LASF278:
	.string	"SQRT"
.LASF402:
	.string	"GR_CC0"
.LASF162:
	.string	"mode_class"
.LASF841:
	.string	"add_label_notes"
.LASF244:
	.string	"MULT"
.LASF167:
	.string	"MODE_CC"
.LASF335:
	.string	"local_set"
.LASF110:
	.string	"PQImode"
.LASF479:
	.string	"sequence_rtl_expr"
.LASF686:
	.string	"uid_limit"
.LASF702:
	.string	"cur_expr"
.LASF142:
	.string	"V8HImode"
.LASF551:
	.string	"x_temp_slots"
.LASF903:
	.string	"run_jump_opt_after_gcse"
.LASF538:
	.string	"x_stack_slot_list"
.LASF81:
	.string	"_old_offset"
.LASF933:
	.string	"ae_in"
.LASF207:
	.string	"CALL_INSN"
.LASF232:
	.string	"SUBREG"
.LASF680:
	.string	"icode"
.LASF573:
	.string	"calls_longjmp"
.LASF145:
	.string	"V16QImode"
.LASF739:
	.string	"compute_expr_hash_table"
.LASF374:
	.string	"REG_ALWAYS_RETURN"
.LASF518:
	.string	"decl"
.LASF99:
	.string	"long long int"
.LASF352:
	.string	"REG_LIBCALL"
.LASF716:
	.string	"table_size"
.LASF80:
	.string	"_flags2"
.LASF828:
	.string	"insert_insn_end_bb"
.LASF121:
	.string	"QCmode"
.LASF667:
	.string	"alloc_reg_set_mem"
.LASF230:
	.string	"VALUE"
.LASF210:
	.string	"NOTE"
.LASF873:
	.string	"enumerate_ldsts"
.LASF668:
	.string	"n_regs"
.LASF48:
	.string	"sse_nregs"
.LASF940:
	.string	"cprop_absaltered"
.LASF254:
	.string	"UMIN"
.LASF180:
	.string	"MATCH_DUP"
.LASF446:
	.string	"HARD_REG_ELT_TYPE"
.LASF329:
	.string	"basic_block_def"
.LASF600:
	.string	"option"
.LASF906:
	.string	"can_copy_p"
.LASF594:
	.string	"varasm_status"
.LASF7:
	.string	"used"
.LASF939:
	.string	"cprop_pavloc"
.LASF868:
	.string	"ldst_entry"
.LASF915:
	.string	"cuid_insn"
.LASF381:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF451:
	.string	"bitmap_element"
.LASF530:
	.string	"x_function_call_count"
.LASF128:
	.string	"CHImode"
.LASF397:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF202:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF787:
	.string	"def_insn"
.LASF502:
	.string	"regno_pointer_align_length"
.LASF497:
	.string	"x_first_insn"
.LASF511:
	.string	"x_apply_args_value"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF226:
	.string	"CONST_DOUBLE"
.LASF687:
	.string	"list_entry"
.LASF426:
	.string	"first_uid"
.LASF157:
	.string	"CCNOmode"
.LASF872:
	.string	"find_rtx_in_ldst"
.LASF138:
	.string	"V4HImode"
.LASF609:
	.string	"PARAM_MAX_GCSE_PASSES"
.LASF264:
	.string	"UNEQ"
.LASF247:
	.string	"ASHIFT"
.LASF252:
	.string	"SMIN"
.LASF698:
	.string	"__FUNCTION__"
.LASF239:
	.string	"IF_THEN_ELSE"
.LASF842:
	.string	"compute_transpout"
.LASF859:
	.string	"hoist_expr_reaches_here_p"
.LASF937:
	.string	"gcse_mems_conflict_p"
.LASF957:
	.string	"num_stores"
.LASF860:
	.string	"expr_bb"
.LASF393:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF519:
	.string	"outer"
.LASF490:
	.string	"extra_arg"
.LASF729:
	.string	"compute_hash_table"
.LASF390:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF500:
	.string	"x_last_linenum"
.LASF755:
	.string	"oprs_not_set_p"
.LASF52:
	.string	"unsigned int"
.LASF616:
	.string	"bitmap_index"
.LASF922:
	.string	"modify_mem_list"
.LASF983:
	.string	"tree_node"
.LASF897:
	.string	"replace_store_insn"
.LASF742:
	.string	"next_set"
.LASF709:
	.string	"note"
.LASF535:
	.string	"x_cleanup_label"
.LASF902:
	.string	"gcse_file"
.LASF677:
	.string	"want_to_gcse_p"
.LASF615:
	.string	"reg_rtx"
.LASF303:
	.string	"max_after_vec"
.LASF767:
	.string	"compute_rd"
.LASF265:
	.string	"UNGE"
.LASF711:
	.string	"hash_scan_call"
.LASF59:
	.string	"short int"
.LASF333:
	.string	"pred"
.LASF266:
	.string	"UNGT"
.LASF579:
	.string	"has_computed_jump"
.LASF498:
	.string	"x_last_insn"
.LASF684:
	.string	"mems_conflict_for_gcse_p"
.LASF449:
	.string	"prev"
.LASF83:
	.string	"_vtable_offset"
.LASF696:
	.string	"hash_set"
.LASF565:
	.string	"preferred_stack_boundary"
.LASF672:
	.string	"new_size"
.LASF102:
	.string	"VOIDmode"
.LASF375:
	.string	"REG_VTABLE_REF"
.LASF604:
	.string	"PARAM_MAX_INLINE_INSNS"
.LASF830:
	.string	"index_map"
.LASF793:
	.string	"expr_set"
.LASF410:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF282:
	.string	"LO_SUM"
.LASF342:
	.string	"frequency"
.LASF315:
	.string	"rtwint"
.LASF461:
	.string	"succ_next"
.LASF754:
	.string	"reset_opr_set_tables"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
