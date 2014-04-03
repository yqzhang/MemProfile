	.file	"cfgrtl.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cfgrtl.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	basic_block_for_insn,8,8
	.comm	label_value_list,8,8
	.comm	tail_recursion_label_list,8,8
	.type	can_delete_note_p, @function
can_delete_note_p:
.LFB2:
	.file 1 "cfgrtl.c"
	.loc 1 89 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# note, note
	.loc 1 90 0
	movq	-8(%rbp), %rax	# note, tmp64
	movl	40(%rax), %eax	# note_2(D)->fld[4].rtint, D.14692
	.loc 1 91 0
	cmpl	$-99, %eax	#, D.14692
	je	.L2	#,
	.loc 1 91 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# note, tmp65
	movl	40(%rax), %eax	# note_2(D)->fld[4].rtint, D.14692
	cmpl	$-80, %eax	#, D.14692
	jne	.L3	#,
.L2:
	.loc 1 91 0 discriminator 1
	movl	$1, %eax	#, iftmp.0
	jmp	.L4	#
.L3:
	.loc 1 91 0 discriminator 3
	movl	$0, %eax	#, iftmp.0
.L4:
	.loc 1 92 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	can_delete_note_p, .-can_delete_note_p
	.type	can_delete_label_p, @function
can_delete_label_p:
.LFB3:
	.loc 1 99 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# label, label
	.loc 1 100 0
	movq	-8(%rbp), %rax	# label, tmp71
	movzbl	3(%rax), %eax	# *label_2(D), D.14693
	andl	$16, %eax	#, D.14693
	.loc 1 104 0
	testb	%al, %al	# D.14693
	jne	.L7	#,
	.loc 1 102 0
	movq	-8(%rbp), %rax	# label, tmp72
	movq	56(%rax), %rax	# label_2(D)->fld[6].rtstr, D.14694
	testq	%rax, %rax	# D.14694
	jne	.L7	#,
	.loc 1 103 0
	movq	cfun(%rip), %rax	# cfun, cfun.2
	movq	16(%rax), %rax	# cfun.2_6->expr, D.14695
	movq	32(%rax), %rax	# _7->x_forced_labels, D.14696
	movq	-8(%rbp), %rdx	# label, tmp73
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# D.14696,
	call	in_expr_list_p	#
	testl	%eax, %eax	# D.14697
	jne	.L7	#,
	.loc 1 104 0
	movq	label_value_list(%rip), %rax	# label_value_list, label_value_list.3
	movq	-8(%rbp), %rdx	# label, tmp74
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# label_value_list.3,
	call	in_expr_list_p	#
	testl	%eax, %eax	# D.14697
	jne	.L7	#,
	.loc 1 104 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.1
	jmp	.L8	#
.L7:
	.loc 1 104 0 discriminator 1
	movl	$0, %eax	#, iftmp.1
.L8:
	.loc 1 105 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	can_delete_label_p, .-can_delete_label_p
	.section	.rodata
.LC0:
	.string	"cfgrtl.c"
	.text
	.globl	delete_insn
	.type	delete_insn, @function
delete_insn:
.LFB4:
	.loc 1 112 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# insn, insn
	.loc 1 113 0
	movq	-72(%rbp), %rax	# insn, tmp93
	movq	24(%rax), %rax	# insn_4(D)->fld[2].rtx, tmp94
	movq	%rax, -40(%rbp)	# tmp94, next
	.loc 1 115 0
	movb	$1, -53(%rbp)	#, really_delete
	.loc 1 117 0
	movq	-72(%rbp), %rax	# insn, tmp95
	movzwl	(%rax), %eax	# insn_4(D)->code, D.14698
	cmpw	$36, %ax	#, D.14698
	jne	.L11	#,
	.loc 1 122 0
	movq	-72(%rbp), %rax	# insn, tmp96
	movq	%rax, %rdi	# tmp96,
	call	can_delete_label_p	#
	testl	%eax, %eax	# D.14699
	jne	.L12	#,
.LBB2:
	.loc 1 124 0
	movq	-72(%rbp), %rax	# insn, tmp97
	movq	56(%rax), %rax	# insn_4(D)->fld[6].rtstr, tmp98
	movq	%rax, -32(%rbp)	# tmp98, name
	.loc 1 126 0
	movb	$0, -53(%rbp)	#, really_delete
	.loc 1 127 0
	movq	-72(%rbp), %rax	# insn, tmp99
	movw	$37, (%rax)	#, insn_4(D)->code
	.loc 1 128 0
	movq	-72(%rbp), %rax	# insn, tmp100
	movl	$-88, 40(%rax)	#, insn_4(D)->fld[4].rtint
	.loc 1 129 0
	movq	-72(%rbp), %rax	# insn, tmp101
	movq	-32(%rbp), %rdx	# name, tmp102
	movq	%rdx, 32(%rax)	# tmp102, insn_4(D)->fld[3].rtstr
.L12:
.LBE2:
	.loc 1 132 0
	movq	cfun(%rip), %rax	# cfun, cfun.4
	leaq	176(%rax), %rdx	#, D.14700
	movq	-72(%rbp), %rax	# insn, tmp103
	movq	%rdx, %rsi	# D.14700,
	movq	%rax, %rdi	# tmp103,
	call	remove_node_from_expr_list	#
.L11:
	.loc 1 135 0
	cmpb	$0, -53(%rbp)	#, really_delete
	je	.L13	#,
	.loc 1 138 0
	movq	-72(%rbp), %rax	# insn, tmp104
	movzbl	3(%rax), %eax	# *insn_4(D), D.14701
	andl	$8, %eax	#, D.14701
	testb	%al, %al	# D.14701
	je	.L14	#,
	.loc 1 139 0
	movl	$__FUNCTION__.12456, %edx	#,
	movl	$139, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L14:
	.loc 1 140 0
	movq	-72(%rbp), %rax	# insn, tmp105
	movq	%rax, %rdi	# tmp105,
	call	remove_insn	#
	.loc 1 141 0
	movq	-72(%rbp), %rax	# insn, tmp106
	movzbl	3(%rax), %edx	# insn_4(D)->volatil, tmp109
	orl	$8, %edx	#, tmp110
	movb	%dl, 3(%rax)	# tmp110, insn_4(D)->volatil
.L13:
	.loc 1 146 0
	movq	-72(%rbp), %rax	# insn, tmp111
	movzwl	(%rax), %eax	# insn_4(D)->code, D.14698
	cmpw	$33, %ax	#, D.14698
	jne	.L15	#,
	.loc 1 147 0
	movq	-72(%rbp), %rax	# insn, tmp112
	movq	64(%rax), %rax	# insn_4(D)->fld[7].rtx, D.14702
	testq	%rax, %rax	# D.14702
	je	.L15	#,
	.loc 1 148 0
	movq	-72(%rbp), %rax	# insn, tmp113
	movq	64(%rax), %rax	# insn_4(D)->fld[7].rtx, D.14702
	movzwl	(%rax), %eax	# _17->code, D.14698
	cmpw	$36, %ax	#, D.14698
	jne	.L15	#,
	.loc 1 149 0
	movq	-72(%rbp), %rax	# insn, tmp114
	movq	64(%rax), %rax	# insn_4(D)->fld[7].rtx, D.14702
	movl	32(%rax), %edx	# _19->fld[3].rtint, D.14699
	subl	$1, %edx	#, D.14699
	movl	%edx, 32(%rax)	# D.14699, _19->fld[3].rtint
	jmp	.L16	#
.L15:
	.loc 1 152 0
	movq	-72(%rbp), %rax	# insn, tmp115
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	find_reg_note	#
	movq	%rax, -24(%rbp)	# tmp116, note
	cmpq	$0, -24(%rbp)	#, note
	je	.L16	#,
	.loc 1 153 0
	movq	-24(%rbp), %rax	# note, tmp117
	movq	8(%rax), %rax	# note_22->fld[0].rtx, D.14702
	movzwl	(%rax), %eax	# _23->code, D.14698
	cmpw	$36, %ax	#, D.14698
	jne	.L16	#,
	.loc 1 154 0
	movq	-24(%rbp), %rax	# note, tmp118
	movq	8(%rax), %rax	# note_22->fld[0].rtx, D.14702
	movl	32(%rax), %edx	# _25->fld[3].rtint, D.14699
	subl	$1, %edx	#, D.14699
	movl	%edx, 32(%rax)	# D.14699, _25->fld[3].rtint
.L16:
	.loc 1 156 0
	movq	-72(%rbp), %rax	# insn, tmp119
	movzwl	(%rax), %eax	# insn_4(D)->code, D.14698
	cmpw	$33, %ax	#, D.14698
	jne	.L17	#,
	.loc 1 157 0
	movq	-72(%rbp), %rax	# insn, tmp120
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, D.14702
	movzwl	(%rax), %eax	# _29->code, D.14698
	cmpw	$44, %ax	#, D.14698
	je	.L18	#,
	.loc 1 158 0
	movq	-72(%rbp), %rax	# insn, tmp121
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, D.14702
	movzwl	(%rax), %eax	# _31->code, D.14698
	cmpw	$45, %ax	#, D.14698
	jne	.L17	#,
.L18:
.LBB3:
	.loc 1 160 0
	movq	-72(%rbp), %rax	# insn, tmp122
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, tmp123
	movq	%rax, -16(%rbp)	# tmp123, pat
	.loc 1 161 0
	movq	-72(%rbp), %rax	# insn, tmp124
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, D.14702
	movzwl	(%rax), %eax	# _34->code, D.14698
	cmpw	$45, %ax	#, D.14698
	sete	%al	#, D.14703
	movzbl	%al, %eax	# D.14703, tmp125
	movl	%eax, -48(%rbp)	# tmp125, diff_vec_p
	.loc 1 162 0
	movq	-16(%rbp), %rax	# pat, tmp126
	movl	-48(%rbp), %edx	# diff_vec_p, tmp128
	movslq	%edx, %rdx	# tmp128, tmp127
	movq	8(%rax,%rdx,8), %rax	# pat_33->fld[diff_vec_p_37].rtvec, D.14704
	movl	(%rax), %eax	# _38->num_elem, tmp129
	movl	%eax, -44(%rbp)	# tmp129, len
	.loc 1 165 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L19	#
.L21:
.LBB4:
	.loc 1 167 0
	movq	-16(%rbp), %rax	# pat, tmp130
	movl	-48(%rbp), %edx	# diff_vec_p, tmp132
	movslq	%edx, %rdx	# tmp132, tmp131
	movq	8(%rax,%rdx,8), %rax	# pat_33->fld[diff_vec_p_37].rtvec, D.14704
	movl	-52(%rbp), %edx	# i, tmp134
	movslq	%edx, %rdx	# tmp134, tmp133
	movq	8(%rax,%rdx,8), %rax	# _41->elem, D.14702
	movq	8(%rax), %rax	# _42->fld[0].rtx, tmp135
	movq	%rax, -8(%rbp)	# tmp135, label
	.loc 1 172 0
	movq	-8(%rbp), %rax	# label, tmp136
	movzwl	(%rax), %eax	# label_43->code, D.14698
	cmpw	$37, %ax	#, D.14698
	je	.L20	#,
	.loc 1 173 0
	movq	-8(%rbp), %rax	# label, tmp137
	movl	32(%rax), %eax	# label_43->fld[3].rtint, D.14699
	leal	-1(%rax), %edx	#, D.14699
	movq	-8(%rbp), %rax	# label, tmp138
	movl	%edx, 32(%rax)	# D.14699, label_43->fld[3].rtint
.L20:
.LBE4:
	.loc 1 165 0
	addl	$1, -52(%rbp)	#, i
.L19:
	.loc 1 165 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# i, tmp139
	cmpl	-44(%rbp), %eax	# len, tmp139
	jl	.L21	#,
.L17:
.LBE3:
	.loc 1 177 0 is_stmt 1
	movq	-40(%rbp), %rax	# next, D.14705
	.loc 1 178 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	delete_insn, .-delete_insn
	.globl	delete_insn_chain
	.type	delete_insn_chain, @function
delete_insn_chain:
.LFB5:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# start, start
	movq	%rsi, -32(%rbp)	# finish, finish
.L28:
	.loc 1 194 0
	movq	-24(%rbp), %rax	# start, tmp61
	movq	24(%rax), %rax	# start_1->fld[2].rtx, tmp62
	movq	%rax, -8(%rbp)	# tmp62, next
	.loc 1 195 0
	movq	-24(%rbp), %rax	# start, tmp63
	movzwl	(%rax), %eax	# start_1->code, D.14707
	cmpw	$37, %ax	#, D.14707
	jne	.L24	#,
	.loc 1 195 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# start, tmp64
	movq	%rax, %rdi	# tmp64,
	call	can_delete_note_p	#
	testl	%eax, %eax	# D.14708
	jne	.L24	#,
	jmp	.L25	#
.L24:
	.loc 1 198 0 is_stmt 1
	movq	-24(%rbp), %rax	# start, tmp65
	movq	%rax, %rdi	# tmp65,
	call	delete_insn	#
	movq	%rax, -8(%rbp)	# tmp66, next
.L25:
	.loc 1 200 0
	movq	-24(%rbp), %rax	# start, tmp67
	cmpq	-32(%rbp), %rax	# finish, tmp67
	jne	.L26	#,
	.loc 1 201 0
	jmp	.L29	#
.L26:
	.loc 1 202 0
	movq	-8(%rbp), %rax	# next, tmp68
	movq	%rax, -24(%rbp)	# tmp68, start
	.loc 1 203 0
	jmp	.L28	#
.L29:
	.loc 1 204 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	delete_insn_chain, .-delete_insn_chain
	.globl	create_basic_block_structure
	.type	create_basic_block_structure, @function
create_basic_block_structure:
.LFB6:
	.loc 1 217 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# index, index
	movq	%rsi, -32(%rbp)	# head, head
	movq	%rdx, -40(%rbp)	# end, end
	movq	%rcx, -48(%rbp)	# bb_note, bb_note
	.loc 1 220 0
	cmpq	$0, -48(%rbp)	#, bb_note
	je	.L31	#,
	.loc 1 221 0
	movq	-48(%rbp), %rax	# bb_note, tmp71
	movzbl	3(%rax), %eax	# *bb_note_12(D), D.14709
	andl	$64, %eax	#, D.14709
	testb	%al, %al	# D.14709
	jne	.L31	#,
	.loc 1 222 0
	movq	-48(%rbp), %rax	# bb_note, tmp72
	movq	32(%rax), %rax	# bb_note_12(D)->fld[3].bb, tmp73
	movq	%rax, -16(%rbp)	# tmp73, bb
	cmpq	$0, -16(%rbp)	#, bb
	je	.L31	#,
	.loc 1 223 0
	movq	-16(%rbp), %rax	# bb, tmp74
	movq	80(%rax), %rax	# bb_15->aux, D.14710
	testq	%rax, %rax	# D.14710
	jne	.L31	#,
.LBB5:
	.loc 1 229 0
	movq	-32(%rbp), %rax	# head, tmp75
	movzwl	(%rax), %eax	# head_17(D)->code, D.14711
	cmpw	$36, %ax	#, D.14711
	jne	.L32	#,
	.loc 1 230 0
	movq	-32(%rbp), %rax	# head, tmp76
	movq	%rax, -8(%rbp)	# tmp76, after
	jmp	.L33	#
.L32:
	.loc 1 233 0
	movq	-32(%rbp), %rax	# head, tmp77
	movq	16(%rax), %rax	# head_17(D)->fld[1].rtx, tmp78
	movq	%rax, -8(%rbp)	# tmp78, after
	.loc 1 234 0
	movq	-48(%rbp), %rax	# bb_note, tmp79
	movq	%rax, -32(%rbp)	# tmp79, head
.L33:
	.loc 1 237 0
	movq	-8(%rbp), %rax	# after, tmp80
	cmpq	-48(%rbp), %rax	# bb_note, tmp80
	je	.L34	#,
	.loc 1 237 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# after, tmp81
	movq	24(%rax), %rax	# after_11->fld[2].rtx, D.14712
	cmpq	-48(%rbp), %rax	# bb_note, D.14712
	je	.L34	#,
	.loc 1 238 0 is_stmt 1
	movq	-8(%rbp), %rdx	# after, tmp82
	movq	-48(%rbp), %rcx	# bb_note, tmp83
	movq	-48(%rbp), %rax	# bb_note, tmp84
	movq	%rcx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	reorder_insns	#
.LBE5:
	.loc 1 224 0
	jmp	.L35	#
.L34:
	jmp	.L35	#
.L31:
	.loc 1 244 0
	call	alloc_block	#
	movq	%rax, -16(%rbp)	# tmp85, bb
	.loc 1 246 0
	cmpq	$0, -32(%rbp)	#, head
	jne	.L36	#,
	.loc 1 246 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, end
	jne	.L36	#,
	.loc 1 248 0 is_stmt 1
	call	get_last_insn	#
	.loc 1 247 0
	movq	%rax, %rsi	# D.14712,
	movl	$-80, %edi	#,
	call	emit_note_after	#
	movq	%rax, -48(%rbp)	# tmp86, bb_note
	movq	-48(%rbp), %rax	# bb_note, tmp87
	movq	%rax, -40(%rbp)	# tmp87, end
	movq	-40(%rbp), %rax	# end, tmp88
	movq	%rax, -32(%rbp)	# tmp88, head
	jmp	.L37	#
.L36:
	.loc 1 249 0
	movq	-32(%rbp), %rax	# head, tmp89
	movzwl	(%rax), %eax	# head_17(D)->code, D.14711
	cmpw	$36, %ax	#, D.14711
	jne	.L38	#,
	.loc 1 249 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, end
	je	.L38	#,
	.loc 1 251 0 is_stmt 1
	movq	-32(%rbp), %rax	# head, tmp90
	movq	%rax, %rsi	# tmp90,
	movl	$-80, %edi	#,
	call	emit_note_after	#
	movq	%rax, -48(%rbp)	# tmp91, bb_note
	.loc 1 252 0
	movq	-32(%rbp), %rax	# head, tmp92
	cmpq	-40(%rbp), %rax	# end, tmp92
	jne	.L39	#,
	.loc 1 253 0
	movq	-48(%rbp), %rax	# bb_note, tmp93
	movq	%rax, -40(%rbp)	# tmp93, end
	.loc 1 252 0
	jmp	.L37	#
.L39:
	.loc 1 252 0 is_stmt 0 discriminator 1
	jmp	.L37	#
.L38:
	.loc 1 257 0 is_stmt 1
	movq	-32(%rbp), %rax	# head, tmp94
	movq	%rax, %rsi	# tmp94,
	movl	$-80, %edi	#,
	call	emit_note_before	#
	movq	%rax, -48(%rbp)	# tmp95, bb_note
	.loc 1 258 0
	movq	-48(%rbp), %rax	# bb_note, tmp96
	movq	%rax, -32(%rbp)	# tmp96, head
	.loc 1 259 0
	cmpq	$0, -40(%rbp)	#, end
	jne	.L37	#,
	.loc 1 260 0
	movq	-32(%rbp), %rax	# head, tmp97
	movq	%rax, -40(%rbp)	# tmp97, end
.L37:
	.loc 1 263 0
	movq	-48(%rbp), %rax	# bb_note, tmp98
	movq	-16(%rbp), %rdx	# bb, tmp99
	movq	%rdx, 32(%rax)	# tmp99, bb_note_8->fld[3].bb
.L35:
	.loc 1 267 0
	movq	-40(%rbp), %rax	# end, tmp100
	movq	24(%rax), %rax	# end_6->fld[2].rtx, D.14712
	cmpq	-48(%rbp), %rax	# bb_note, D.14712
	jne	.L40	#,
	.loc 1 268 0
	movq	-48(%rbp), %rax	# bb_note, tmp101
	movq	%rax, -40(%rbp)	# tmp101, end
.L40:
	.loc 1 270 0
	movq	-16(%rbp), %rax	# bb, tmp102
	movq	-32(%rbp), %rdx	# head, tmp103
	movq	%rdx, (%rax)	# tmp103, bb_10->head
	.loc 1 271 0
	movq	-16(%rbp), %rax	# bb, tmp104
	movq	-40(%rbp), %rdx	# end, tmp105
	movq	%rdx, 8(%rax)	# tmp105, bb_10->end
	.loc 1 272 0
	movq	-16(%rbp), %rax	# bb, tmp106
	movl	-20(%rbp), %edx	# index, tmp107
	movl	%edx, 88(%rax)	# tmp107, bb_10->index
	.loc 1 273 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.5
	movl	-20(%rbp), %edx	# index, tmp109
	movslq	%edx, %rdx	# tmp109, tmp108
	leaq	4(%rdx), %rcx	#, tmp110
	movq	-16(%rbp), %rdx	# bb, tmp111
	movq	%rdx, (%rax,%rcx,8)	# tmp111, basic_block_info.5_38->data.bb
	.loc 1 274 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.6
	testq	%rax, %rax	# basic_block_for_insn.6
	je	.L41	#,
	.loc 1 275 0
	movq	-16(%rbp), %rax	# bb, tmp112
	movq	%rax, %rdi	# tmp112,
	call	update_bb_for_insn	#
.L41:
	.loc 1 279 0
	movq	-16(%rbp), %rax	# bb, tmp113
	movq	-16(%rbp), %rdx	# bb, tmp114
	movq	%rdx, 80(%rax)	# tmp114, bb_10->aux
	.loc 1 281 0
	movq	-16(%rbp), %rax	# bb, D.14713
	.loc 1 282 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	create_basic_block_structure, .-create_basic_block_structure
	.globl	create_basic_block
	.type	create_basic_block, @function
create_basic_block:
.LFB7:
	.loc 1 293 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# index, index
	movq	%rsi, -48(%rbp)	# head, head
	movq	%rdx, -56(%rbp)	# end, end
	.loc 1 298 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.7
	addl	$1, %eax	#, n_basic_blocks.8
	movl	%eax, n_basic_blocks(%rip)	# n_basic_blocks.8, n_basic_blocks
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.9
	movslq	%eax, %rdx	# n_basic_blocks.9, D.14714
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.10
	movq	%rdx, %rsi	# D.14714,
	movq	%rax, %rdi	# basic_block_info.10,
	call	varray_grow	#
	movq	%rax, basic_block_info(%rip)	# basic_block_info.11, basic_block_info
	.loc 1 303 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.12
	subl	$1, %eax	#, tmp71
	movl	%eax, -20(%rbp)	# tmp71, i
	jmp	.L44	#
.L45:
.LBB6:
	.loc 1 305 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.13
	movl	-20(%rbp), %edx	# i, tmp72
	subl	$1, %edx	#, D.14715
	movslq	%edx, %rdx	# D.14715, tmp73
	addq	$4, %rdx	#, tmp74
	movq	(%rax,%rdx,8), %rax	# basic_block_info.13_11->data.bb, tmp75
	movq	%rax, -16(%rbp)	# tmp75, tmp
	.loc 1 307 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.14
	movl	-20(%rbp), %edx	# i, tmp77
	movslq	%edx, %rdx	# tmp77, tmp76
	leaq	4(%rdx), %rcx	#, tmp78
	movq	-16(%rbp), %rdx	# tmp, tmp79
	movq	%rdx, (%rax,%rcx,8)	# tmp79, basic_block_info.14_14->data.bb
	.loc 1 308 0 discriminator 2
	movq	-16(%rbp), %rax	# tmp, tmp80
	movl	-20(%rbp), %edx	# i, tmp81
	movl	%edx, 88(%rax)	# tmp81, tmp_13->index
.LBE6:
	.loc 1 303 0 discriminator 2
	subl	$1, -20(%rbp)	#, i
.L44:
	.loc 1 303 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp82
	cmpl	-36(%rbp), %eax	# index, tmp82
	jg	.L45	#,
	.loc 1 311 0 is_stmt 1
	movq	-56(%rbp), %rdx	# end, tmp83
	movq	-48(%rbp), %rsi	# head, tmp84
	movl	-36(%rbp), %eax	# index, tmp85
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp85,
	call	create_basic_block_structure	#
	movq	%rax, -8(%rbp)	# tmp86, bb
	.loc 1 312 0
	movq	-8(%rbp), %rax	# bb, tmp87
	movq	$0, 80(%rax)	#, bb_18->aux
	.loc 1 313 0
	movq	-8(%rbp), %rax	# bb, D.14716
	.loc 1 314 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	create_basic_block, .-create_basic_block
	.globl	flow_delete_block_noexpunge
	.type	flow_delete_block_noexpunge, @function
flow_delete_block_noexpunge:
.LFB8:
	.loc 1 327 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# b, b
	.loc 1 328 0
	movl	$0, -28(%rbp)	#, deleted_handler
	.loc 1 338 0
	movq	-40(%rbp), %rax	# b, tmp74
	movq	(%rax), %rax	# b_4(D)->head, tmp75
	movq	%rax, -16(%rbp)	# tmp75, insn
	.loc 1 340 0
	movq	-40(%rbp), %rax	# b, tmp76
	movq	8(%rax), %rdx	# b_4(D)->end, D.14717
	movq	-16(%rbp), %rax	# insn, tmp77
	movq	%rdx, %rsi	# D.14717,
	movq	%rax, %rdi	# tmp77,
	call	never_reached_warning	#
	.loc 1 342 0
	movq	-16(%rbp), %rax	# insn, tmp78
	movzwl	(%rax), %eax	# insn_5->code, D.14718
	cmpw	$36, %ax	#, D.14718
	jne	.L48	#,
	.loc 1 343 0
	movq	-16(%rbp), %rax	# insn, tmp79
	movq	%rax, %rdi	# tmp79,
	call	maybe_remove_eh_handler	#
.L48:
	.loc 1 346 0
	movq	-40(%rbp), %rax	# b, tmp80
	movq	8(%rax), %rax	# b_4(D)->end, tmp81
	movq	%rax, -24(%rbp)	# tmp81, end
	.loc 1 347 0
	movq	-24(%rbp), %rax	# end, tmp82
	movzwl	(%rax), %eax	# end_8->code, D.14718
	cmpw	$33, %ax	#, D.14718
	jne	.L49	#,
	.loc 1 348 0
	movq	-24(%rbp), %rax	# end, tmp83
	movq	64(%rax), %rax	# end_8->fld[7].rtx, tmp84
	movq	%rax, -8(%rbp)	# tmp84, tmp
	cmpq	$0, -8(%rbp)	#, tmp
	je	.L49	#,
	.loc 1 349 0
	movq	-8(%rbp), %rax	# tmp, tmp85
	movq	24(%rax), %rax	# tmp_10->fld[2].rtx, tmp86
	movq	%rax, -8(%rbp)	# tmp86, tmp
	cmpq	$0, -8(%rbp)	#, tmp
	je	.L49	#,
	.loc 1 350 0
	movq	-8(%rbp), %rax	# tmp, tmp87
	movzwl	(%rax), %eax	# tmp_11->code, D.14718
	cmpw	$33, %ax	#, D.14718
	jne	.L49	#,
	.loc 1 351 0
	movq	-8(%rbp), %rax	# tmp, tmp88
	movq	32(%rax), %rax	# tmp_11->fld[3].rtx, D.14717
	movzwl	(%rax), %eax	# _13->code, D.14718
	cmpw	$44, %ax	#, D.14718
	je	.L50	#,
	.loc 1 352 0
	movq	-8(%rbp), %rax	# tmp, tmp89
	movq	32(%rax), %rax	# tmp_11->fld[3].rtx, D.14717
	movzwl	(%rax), %eax	# _15->code, D.14718
	cmpw	$45, %ax	#, D.14718
	jne	.L49	#,
.L50:
	.loc 1 353 0
	movq	-8(%rbp), %rax	# tmp, tmp90
	movq	%rax, -24(%rbp)	# tmp90, end
.L49:
	.loc 1 356 0
	movq	-24(%rbp), %rax	# end, tmp91
	movq	%rax, %rdi	# tmp91,
	call	next_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp92, tmp
	.loc 1 357 0
	cmpq	$0, -8(%rbp)	#, tmp
	je	.L51	#,
	.loc 1 357 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tmp, tmp93
	movzwl	(%rax), %eax	# tmp_18->code, D.14718
	cmpw	$35, %ax	#, D.14718
	jne	.L51	#,
	.loc 1 358 0 is_stmt 1
	movq	-8(%rbp), %rax	# tmp, tmp94
	movq	%rax, -24(%rbp)	# tmp94, end
.L51:
	.loc 1 361 0
	movq	-40(%rbp), %rax	# b, tmp95
	movq	$0, (%rax)	#, b_4(D)->head
	.loc 1 362 0
	movq	-24(%rbp), %rdx	# end, tmp96
	movq	-16(%rbp), %rax	# insn, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	delete_insn_chain	#
	.loc 1 366 0
	jmp	.L52	#
.L53:
	.loc 1 367 0
	movq	-40(%rbp), %rax	# b, tmp98
	movq	32(%rax), %rax	# b_4(D)->pred, D.14719
	movq	%rax, %rdi	# D.14719,
	call	remove_edge	#
.L52:
	.loc 1 366 0 discriminator 1
	movq	-40(%rbp), %rax	# b, tmp99
	movq	32(%rax), %rax	# b_4(D)->pred, D.14719
	testq	%rax, %rax	# D.14719
	jne	.L53	#,
	.loc 1 368 0
	jmp	.L54	#
.L55:
	.loc 1 369 0
	movq	-40(%rbp), %rax	# b, tmp100
	movq	40(%rax), %rax	# b_4(D)->succ, D.14719
	movq	%rax, %rdi	# D.14719,
	call	remove_edge	#
.L54:
	.loc 1 368 0 discriminator 1
	movq	-40(%rbp), %rax	# b, tmp101
	movq	40(%rax), %rax	# b_4(D)->succ, D.14719
	testq	%rax, %rax	# D.14719
	jne	.L55	#,
	.loc 1 371 0
	movq	-40(%rbp), %rax	# b, tmp102
	movq	$0, 32(%rax)	#, b_4(D)->pred
	.loc 1 372 0
	movq	-40(%rbp), %rax	# b, tmp103
	movq	$0, 40(%rax)	#, b_4(D)->succ
	.loc 1 374 0
	movl	-28(%rbp), %eax	# deleted_handler, D.14720
	.loc 1 375 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	flow_delete_block_noexpunge, .-flow_delete_block_noexpunge
	.globl	flow_delete_block
	.type	flow_delete_block, @function
flow_delete_block:
.LFB9:
	.loc 1 380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# b, b
	.loc 1 381 0
	movq	-24(%rbp), %rax	# b, tmp61
	movq	%rax, %rdi	# tmp61,
	call	flow_delete_block_noexpunge	#
	movl	%eax, -4(%rbp)	# tmp62, deleted_handler
	.loc 1 384 0
	movq	-24(%rbp), %rax	# b, tmp63
	movq	%rax, %rdi	# tmp63,
	call	expunge_block	#
	.loc 1 386 0
	movl	-4(%rbp), %eax	# deleted_handler, D.14721
	.loc 1 387 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	flow_delete_block, .-flow_delete_block
	.section	.rodata
.LC1:
	.string	"basic_block_for_insn"
	.text
	.globl	compute_bb_for_insn
	.type	compute_bb_for_insn, @function
compute_bb_for_insn:
.LFB10:
	.loc 1 395 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# max, max
	.loc 1 398 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.15
	testq	%rax, %rax	# basic_block_for_insn.15
	je	.L60	#,
	.loc 1 399 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.16
	testq	%rax, %rax	# basic_block_for_insn.16
	je	.L60	#,
	.loc 1 399 0 is_stmt 0 discriminator 1
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.17
	movq	%rax, %rdi	# basic_block_for_insn.17,
	call	free	#
	movq	$0, basic_block_for_insn(%rip)	#, basic_block_for_insn
.L60:
	.loc 1 401 0 is_stmt 1
	movl	-36(%rbp), %eax	# max, tmp69
	cltq
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14722,
	call	varray_init	#
	movq	%rax, basic_block_for_insn(%rip)	# basic_block_for_insn.18, basic_block_for_insn
	.loc 1 403 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L61	#
.L66:
.LBB7:
	.loc 1 405 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.19
	movl	-28(%rbp), %edx	# i, tmp71
	movslq	%edx, %rdx	# tmp71, tmp70
	addq	$4, %rdx	#, tmp72
	movq	(%rax,%rdx,8), %rax	# basic_block_info.19_11->data.bb, tmp73
	movq	%rax, -16(%rbp)	# tmp73, bb
	.loc 1 406 0
	movq	-16(%rbp), %rax	# bb, tmp74
	movq	8(%rax), %rax	# bb_12->end, tmp75
	movq	%rax, -8(%rbp)	# tmp75, end
	.loc 1 409 0
	movq	-16(%rbp), %rax	# bb, tmp76
	movq	(%rax), %rax	# bb_12->head, tmp77
	movq	%rax, -24(%rbp)	# tmp77, insn
.L65:
	.loc 1 411 0
	movq	-24(%rbp), %rax	# insn, tmp78
	movl	8(%rax), %eax	# insn_2->fld[0].rtint, D.14723
	cmpl	-36(%rbp), %eax	# max, D.14723
	jge	.L62	#,
	.loc 1 412 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.20
	movq	-24(%rbp), %rdx	# insn, tmp79
	movl	8(%rdx), %edx	# insn_2->fld[0].rtint, D.14723
	movslq	%edx, %rdx	# D.14723, tmp80
	leaq	4(%rdx), %rcx	#, tmp81
	movq	-16(%rbp), %rdx	# bb, tmp82
	movq	%rdx, (%rax,%rcx,8)	# tmp82, basic_block_for_insn.20_16->data.bb
.L62:
	.loc 1 414 0
	movq	-24(%rbp), %rax	# insn, tmp83
	cmpq	-8(%rbp), %rax	# end, tmp83
	jne	.L63	#,
	.loc 1 415 0
	nop
.LBE7:
	.loc 1 403 0
	addl	$1, -28(%rbp)	#, i
	jmp	.L61	#
.L63:
.LBB8:
	.loc 1 409 0
	movq	-24(%rbp), %rax	# insn, tmp84
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp85
	movq	%rax, -24(%rbp)	# tmp85, insn
	.loc 1 416 0
	jmp	.L65	#
.L61:
.LBE8:
	.loc 1 403 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.21
	cmpl	%eax, -28(%rbp)	# n_basic_blocks.21, i
	jl	.L66	#,
	.loc 1 418 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	compute_bb_for_insn, .-compute_bb_for_insn
	.globl	free_bb_for_insn
	.type	free_bb_for_insn, @function
free_bb_for_insn:
.LFB11:
	.loc 1 424 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 425 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.22
	testq	%rax, %rax	# basic_block_for_insn.22
	je	.L68	#,
	.loc 1 426 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.23
	testq	%rax, %rax	# basic_block_for_insn.23
	je	.L68	#,
	.loc 1 426 0 is_stmt 0 discriminator 1
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.24
	movq	%rax, %rdi	# basic_block_for_insn.24,
	call	free	#
	movq	$0, basic_block_for_insn(%rip)	#, basic_block_for_insn
.L68:
	.loc 1 428 0 is_stmt 1
	movq	$0, basic_block_for_insn(%rip)	#, basic_block_for_insn
	.loc 1 429 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	free_bb_for_insn, .-free_bb_for_insn
	.globl	update_bb_for_insn
	.type	update_bb_for_insn, @function
update_bb_for_insn:
.LFB12:
	.loc 1 436 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# bb, bb
	.loc 1 439 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.25
	testq	%rax, %rax	# basic_block_for_insn.25
	jne	.L70	#,
	.loc 1 440 0
	jmp	.L69	#
.L70:
	.loc 1 442 0
	movq	-24(%rbp), %rax	# bb, tmp61
	movq	(%rax), %rax	# bb_3(D)->head, tmp62
	movq	%rax, -8(%rbp)	# tmp62, insn
.L73:
	.loc 1 444 0
	movq	-24(%rbp), %rdx	# bb, tmp63
	movq	-8(%rbp), %rax	# insn, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	set_block_for_insn	#
	.loc 1 445 0
	movq	-24(%rbp), %rax	# bb, tmp65
	movq	8(%rax), %rax	# bb_3(D)->end, D.14725
	cmpq	-8(%rbp), %rax	# insn, D.14725
	jne	.L72	#,
	.loc 1 446 0
	jmp	.L69	#
.L72:
	.loc 1 442 0
	movq	-8(%rbp), %rax	# insn, tmp66
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp67
	movq	%rax, -8(%rbp)	# tmp67, insn
	.loc 1 447 0
	jmp	.L73	#
.L69:
	.loc 1 448 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	update_bb_for_insn, .-update_bb_for_insn
	.globl	set_block_for_insn
	.type	set_block_for_insn, @function
set_block_for_insn:
.LFB13:
	.loc 1 456 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# bb, bb
	.loc 1 457 0
	movq	-24(%rbp), %rax	# insn, tmp67
	movl	8(%rax), %eax	# insn_1(D)->fld[0].rtint, D.14726
	cltq
	movq	%rax, -16(%rbp)	# tmp68, uid
	.loc 1 459 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.26
	movq	(%rax), %rax	# basic_block_for_insn.26_4->num_elements, D.14727
	cmpq	-16(%rbp), %rax	# uid, D.14727
	ja	.L75	#,
.LBB9:
	.loc 1 462 0
	movq	-16(%rbp), %rax	# uid, tmp69
	addq	$7, %rax	#, D.14727
	shrq	$3, %rax	#, D.14727
	movq	%rax, %rdx	# D.14727, D.14727
	movq	-16(%rbp), %rax	# uid, tmp73
	addq	%rdx, %rax	# D.14727, tmp72
	movq	%rax, -8(%rbp)	# tmp72, new_size
	.loc 1 464 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.27
	movq	-8(%rbp), %rdx	# new_size, tmp74
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# basic_block_for_insn.27,
	call	varray_grow	#
	movq	%rax, basic_block_for_insn(%rip)	# basic_block_for_insn.28, basic_block_for_insn
.L75:
.LBE9:
	.loc 1 467 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.29
	movq	-16(%rbp), %rdx	# uid, tmp76
	leaq	4(%rdx), %rcx	#, tmp75
	movq	-32(%rbp), %rdx	# bb, tmp77
	movq	%rdx, (%rax,%rcx,8)	# tmp77, basic_block_for_insn.29_11->data.bb
	.loc 1 468 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	set_block_for_insn, .-set_block_for_insn
	.globl	split_block
	.type	split_block, @function
split_block:
.LFB14:
	.loc 1 479 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# bb, bb
	movq	%rsi, -112(%rbp)	# insn, insn
	.loc 1 485 0
	movq	-104(%rbp), %rax	# bb, tmp146
	movq	8(%rax), %rax	# bb_3(D)->end, D.14729
	cmpq	-112(%rbp), %rax	# insn, D.14729
	jne	.L77	#,
	.loc 1 486 0
	movl	$0, %eax	#, D.14728
	jmp	.L78	#
.L77:
	.loc 1 489 0
	movq	-104(%rbp), %rax	# bb, tmp147
	movq	8(%rax), %rdx	# bb_3(D)->end, D.14729
	movq	-112(%rbp), %rax	# insn, tmp148
	movq	24(%rax), %rax	# insn_5(D)->fld[2].rtx, D.14729
	movq	-104(%rbp), %rcx	# bb, tmp149
	movl	88(%rcx), %ecx	# bb_3(D)->index, D.14730
	addl	$1, %ecx	#, D.14730
	movq	%rax, %rsi	# D.14729,
	movl	%ecx, %edi	# D.14730,
	call	create_basic_block	#
	movq	%rax, -80(%rbp)	# tmp150, new_bb
	.loc 1 490 0
	movq	-104(%rbp), %rax	# bb, tmp151
	movq	96(%rax), %rdx	# bb_3(D)->count, D.14731
	movq	-80(%rbp), %rax	# new_bb, tmp152
	movq	%rdx, 96(%rax)	# D.14731, new_bb_11->count
	.loc 1 491 0
	movq	-104(%rbp), %rax	# bb, tmp153
	movl	104(%rax), %edx	# bb_3(D)->frequency, D.14730
	movq	-80(%rbp), %rax	# new_bb, tmp154
	movl	%edx, 104(%rax)	# D.14730, new_bb_11->frequency
	.loc 1 492 0
	movq	-104(%rbp), %rax	# bb, tmp155
	movl	92(%rax), %edx	# bb_3(D)->loop_depth, D.14730
	movq	-80(%rbp), %rax	# new_bb, tmp156
	movl	%edx, 92(%rax)	# D.14730, new_bb_11->loop_depth
	.loc 1 493 0
	movq	-104(%rbp), %rax	# bb, tmp157
	movq	-112(%rbp), %rdx	# insn, tmp158
	movq	%rdx, 8(%rax)	# tmp158, bb_3(D)->end
	.loc 1 496 0
	movq	-104(%rbp), %rax	# bb, tmp159
	movq	40(%rax), %rdx	# bb_3(D)->succ, D.14732
	movq	-80(%rbp), %rax	# new_bb, tmp160
	movq	%rdx, 40(%rax)	# D.14732, new_bb_11->succ
	.loc 1 497 0
	movq	-104(%rbp), %rax	# bb, tmp161
	movq	$0, 40(%rax)	#, bb_3(D)->succ
	.loc 1 498 0
	movq	-80(%rbp), %rax	# new_bb, tmp162
	movq	40(%rax), %rax	# new_bb_11->succ, tmp163
	movq	%rax, -88(%rbp)	# tmp163, e
	jmp	.L79	#
.L80:
	.loc 1 499 0 discriminator 2
	movq	-88(%rbp), %rax	# e, tmp164
	movq	-80(%rbp), %rdx	# new_bb, tmp165
	movq	%rdx, 16(%rax)	# tmp165, e_1->src
	.loc 1 498 0 discriminator 2
	movq	-88(%rbp), %rax	# e, tmp166
	movq	8(%rax), %rax	# e_1->succ_next, tmp167
	movq	%rax, -88(%rbp)	# tmp167, e
.L79:
	.loc 1 498 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, e
	jne	.L80	#,
	.loc 1 501 0 is_stmt 1
	movq	-80(%rbp), %rcx	# new_bb, tmp168
	movq	-104(%rbp), %rax	# bb, tmp169
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp168,
	movq	%rax, %rdi	# tmp169,
	call	make_single_succ_edge	#
	movq	%rax, -72(%rbp)	# tmp170, new_edge
	.loc 1 503 0
	movq	-104(%rbp), %rax	# bb, tmp171
	movq	64(%rax), %rax	# bb_3(D)->global_live_at_start, D.14733
	testq	%rax, %rax	# D.14733
	je	.L81	#,
.LBB10:
	.loc 1 505 0
	movq	$flow_obstack, -64(%rbp)	#, __h
.LBB11:
	movq	-64(%rbp), %rax	# __h, tmp172
	movq	%rax, -56(%rbp)	# tmp172, __o
	movl	$24, -96(%rbp)	#, __len
	movq	-56(%rbp), %rax	# __o, tmp173
	movq	32(%rax), %rax	# __o_21->chunk_limit, D.14734
	movq	%rax, %rdx	# D.14734, D.14731
	movq	-56(%rbp), %rax	# __o, tmp174
	movq	24(%rax), %rax	# __o_21->next_free, D.14734
	subq	%rax, %rdx	# D.14731, D.14731
	movl	-96(%rbp), %eax	# __len, tmp175
	cltq
	cmpq	%rax, %rdx	# D.14731, D.14731
	jge	.L82	#,
	.loc 1 505 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %edx	# __len, tmp176
	movq	-56(%rbp), %rax	# __o, tmp177
	movl	%edx, %esi	# tmp176,
	movq	%rax, %rdi	# tmp177,
	call	_obstack_newchunk	#
.L82:
	.loc 1 505 0 discriminator 2
	movq	-56(%rbp), %rax	# __o, tmp178
	movq	24(%rax), %rdx	# __o_21->next_free, D.14734
	movl	-96(%rbp), %eax	# __len, tmp179
	cltq
	addq	%rax, %rdx	# D.14735, D.14734
	movq	-56(%rbp), %rax	# __o, tmp180
	movq	%rdx, 24(%rax)	# D.14734, __o_21->next_free
.LBE11:
.LBB12:
	movq	-64(%rbp), %rax	# __h, tmp181
	movq	%rax, -48(%rbp)	# tmp181, __o1
	movq	-48(%rbp), %rax	# __o1, tmp182
	movq	16(%rax), %rax	# __o1_32->object_base, tmp183
	movq	%rax, -40(%rbp)	# tmp183, value
	movq	-48(%rbp), %rax	# __o1, tmp184
	movq	24(%rax), %rax	# __o1_32->next_free, D.14734
	cmpq	-40(%rbp), %rax	# value, D.14734
	jne	.L83	#,
	.loc 1 505 0 discriminator 1
	movq	-48(%rbp), %rax	# __o1, tmp185
	movzbl	80(%rax), %edx	# __o1_32->maybe_empty_object, tmp188
	orl	$2, %edx	#, tmp189
	movb	%dl, 80(%rax)	# tmp189, __o1_32->maybe_empty_object
.L83:
	.loc 1 505 0 discriminator 2
	movq	-48(%rbp), %rax	# __o1, tmp190
	movq	24(%rax), %rax	# __o1_32->next_free, D.14734
	movq	%rax, %rdx	# D.14734, D.14731
	movq	-48(%rbp), %rax	# __o1, tmp191
	movl	48(%rax), %eax	# __o1_32->alignment_mask, D.14730
	cltq
	addq	%rax, %rdx	# D.14731, D.14731
	movq	-48(%rbp), %rax	# __o1, tmp192
	movl	48(%rax), %eax	# __o1_32->alignment_mask, D.14730
	notl	%eax	# D.14730
	cltq
	andq	%rdx, %rax	# D.14731, D.14731
	movq	%rax, %rdx	# D.14731, D.14734
	movq	-48(%rbp), %rax	# __o1, tmp193
	movq	%rdx, 24(%rax)	# D.14734, __o1_32->next_free
	movq	-48(%rbp), %rax	# __o1, tmp194
	movq	24(%rax), %rax	# __o1_32->next_free, D.14734
	movq	%rax, %rdx	# D.14734, D.14731
	movq	-48(%rbp), %rax	# __o1, tmp195
	movq	8(%rax), %rax	# __o1_32->chunk, D.14736
	movq	%rdx, %rcx	# D.14731, D.14731
	subq	%rax, %rcx	# D.14731, D.14731
	movq	-48(%rbp), %rax	# __o1, tmp196
	movq	32(%rax), %rax	# __o1_32->chunk_limit, D.14734
	movq	%rax, %rdx	# D.14734, D.14731
	movq	-48(%rbp), %rax	# __o1, tmp197
	movq	8(%rax), %rax	# __o1_32->chunk, D.14736
	subq	%rax, %rdx	# D.14731, D.14731
	movq	%rdx, %rax	# D.14731, D.14731
	cmpq	%rax, %rcx	# D.14731, D.14731
	jle	.L84	#,
	.loc 1 505 0 discriminator 1
	movq	-48(%rbp), %rax	# __o1, tmp198
	movq	32(%rax), %rdx	# __o1_32->chunk_limit, D.14734
	movq	-48(%rbp), %rax	# __o1, tmp199
	movq	%rdx, 24(%rax)	# D.14734, __o1_32->next_free
.L84:
	.loc 1 505 0 discriminator 2
	movq	-48(%rbp), %rax	# __o1, tmp200
	movq	24(%rax), %rdx	# __o1_32->next_free, D.14734
	movq	-48(%rbp), %rax	# __o1, tmp201
	movq	%rdx, 16(%rax)	# D.14734, __o1_32->object_base
	movq	-40(%rbp), %rax	# value, D.14737
.LBE12:
.LBE10:
	movq	%rax, %rdi	# D.14737,
	call	bitmap_initialize	#
	movq	-80(%rbp), %rdx	# new_bb, tmp202
	movq	%rax, 64(%rdx)	# D.14733, new_bb_11->global_live_at_start
.LBB13:
	.loc 1 506 0 is_stmt 1 discriminator 2
	movq	$flow_obstack, -32(%rbp)	#, __h
.LBB14:
	movq	-32(%rbp), %rax	# __h, tmp203
	movq	%rax, -24(%rbp)	# tmp203, __o
	movl	$24, -92(%rbp)	#, __len
	movq	-24(%rbp), %rax	# __o, tmp204
	movq	32(%rax), %rax	# __o_61->chunk_limit, D.14734
	movq	%rax, %rdx	# D.14734, D.14731
	movq	-24(%rbp), %rax	# __o, tmp205
	movq	24(%rax), %rax	# __o_61->next_free, D.14734
	subq	%rax, %rdx	# D.14731, D.14731
	movl	-92(%rbp), %eax	# __len, tmp206
	cltq
	cmpq	%rax, %rdx	# D.14731, D.14731
	jge	.L85	#,
	.loc 1 506 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %edx	# __len, tmp207
	movq	-24(%rbp), %rax	# __o, tmp208
	movl	%edx, %esi	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	_obstack_newchunk	#
.L85:
	.loc 1 506 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp209
	movq	24(%rax), %rdx	# __o_61->next_free, D.14734
	movl	-92(%rbp), %eax	# __len, tmp210
	cltq
	addq	%rax, %rdx	# D.14735, D.14734
	movq	-24(%rbp), %rax	# __o, tmp211
	movq	%rdx, 24(%rax)	# D.14734, __o_61->next_free
.LBE14:
.LBB15:
	movq	-32(%rbp), %rax	# __h, tmp212
	movq	%rax, -16(%rbp)	# tmp212, __o1
	movq	-16(%rbp), %rax	# __o1, tmp213
	movq	16(%rax), %rax	# __o1_72->object_base, tmp214
	movq	%rax, -8(%rbp)	# tmp214, value
	movq	-16(%rbp), %rax	# __o1, tmp215
	movq	24(%rax), %rax	# __o1_72->next_free, D.14734
	cmpq	-8(%rbp), %rax	# value, D.14734
	jne	.L86	#,
	.loc 1 506 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp216
	movzbl	80(%rax), %edx	# __o1_72->maybe_empty_object, tmp219
	orl	$2, %edx	#, tmp220
	movb	%dl, 80(%rax)	# tmp220, __o1_72->maybe_empty_object
.L86:
	.loc 1 506 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp221
	movq	24(%rax), %rax	# __o1_72->next_free, D.14734
	movq	%rax, %rdx	# D.14734, D.14731
	movq	-16(%rbp), %rax	# __o1, tmp222
	movl	48(%rax), %eax	# __o1_72->alignment_mask, D.14730
	cltq
	addq	%rax, %rdx	# D.14731, D.14731
	movq	-16(%rbp), %rax	# __o1, tmp223
	movl	48(%rax), %eax	# __o1_72->alignment_mask, D.14730
	notl	%eax	# D.14730
	cltq
	andq	%rdx, %rax	# D.14731, D.14731
	movq	%rax, %rdx	# D.14731, D.14734
	movq	-16(%rbp), %rax	# __o1, tmp224
	movq	%rdx, 24(%rax)	# D.14734, __o1_72->next_free
	movq	-16(%rbp), %rax	# __o1, tmp225
	movq	24(%rax), %rax	# __o1_72->next_free, D.14734
	movq	%rax, %rdx	# D.14734, D.14731
	movq	-16(%rbp), %rax	# __o1, tmp226
	movq	8(%rax), %rax	# __o1_72->chunk, D.14736
	movq	%rdx, %rcx	# D.14731, D.14731
	subq	%rax, %rcx	# D.14731, D.14731
	movq	-16(%rbp), %rax	# __o1, tmp227
	movq	32(%rax), %rax	# __o1_72->chunk_limit, D.14734
	movq	%rax, %rdx	# D.14734, D.14731
	movq	-16(%rbp), %rax	# __o1, tmp228
	movq	8(%rax), %rax	# __o1_72->chunk, D.14736
	subq	%rax, %rdx	# D.14731, D.14731
	movq	%rdx, %rax	# D.14731, D.14731
	cmpq	%rax, %rcx	# D.14731, D.14731
	jle	.L87	#,
	.loc 1 506 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp229
	movq	32(%rax), %rdx	# __o1_72->chunk_limit, D.14734
	movq	-16(%rbp), %rax	# __o1, tmp230
	movq	%rdx, 24(%rax)	# D.14734, __o1_72->next_free
.L87:
	.loc 1 506 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp231
	movq	24(%rax), %rdx	# __o1_72->next_free, D.14734
	movq	-16(%rbp), %rax	# __o1, tmp232
	movq	%rdx, 16(%rax)	# D.14734, __o1_72->object_base
	movq	-8(%rbp), %rax	# value, D.14737
.LBE15:
.LBE13:
	movq	%rax, %rdi	# D.14737,
	call	bitmap_initialize	#
	movq	-80(%rbp), %rdx	# new_bb, tmp233
	movq	%rax, 72(%rdx)	# D.14733, new_bb_11->global_live_at_end
	.loc 1 507 0 is_stmt 1 discriminator 2
	movq	-104(%rbp), %rax	# bb, tmp234
	movq	72(%rax), %rdx	# bb_3(D)->global_live_at_end, D.14733
	movq	-80(%rbp), %rax	# new_bb, tmp235
	movq	72(%rax), %rax	# new_bb_11->global_live_at_end, D.14733
	movq	%rdx, %rsi	# D.14733,
	movq	%rax, %rdi	# D.14733,
	call	bitmap_copy	#
	.loc 1 514 0 discriminator 2
	movq	-104(%rbp), %rax	# bb, tmp236
	movq	72(%rax), %rdx	# bb_3(D)->global_live_at_end, D.14733
	movq	-80(%rbp), %rax	# new_bb, tmp237
	movq	64(%rax), %rax	# new_bb_11->global_live_at_start, D.14733
	movq	%rdx, %rsi	# D.14733,
	movq	%rax, %rdi	# D.14733,
	call	bitmap_copy	#
	.loc 1 515 0 discriminator 2
	movq	-80(%rbp), %rax	# new_bb, tmp238
	movq	64(%rax), %rsi	# new_bb_11->global_live_at_start, D.14733
	movq	-80(%rbp), %rax	# new_bb, tmp239
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp239,
	call	propagate_block	#
	.loc 1 516 0 discriminator 2
	movq	-80(%rbp), %rax	# new_bb, tmp240
	movq	64(%rax), %rdx	# new_bb_11->global_live_at_start, D.14733
	movq	-104(%rbp), %rax	# bb, tmp241
	movq	72(%rax), %rax	# bb_3(D)->global_live_at_end, D.14733
	movq	%rdx, %rsi	# D.14733,
	movq	%rax, %rdi	# D.14733,
	call	bitmap_copy	#
.L81:
	.loc 1 520 0
	movq	-72(%rbp), %rax	# new_edge, D.14728
.L78:
	.loc 1 521 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	split_block, .-split_block
	.globl	merge_blocks_nomove
	.type	merge_blocks_nomove, @function
merge_blocks_nomove:
.LFB15:
	.loc 1 529 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# a, a
	movq	%rsi, -96(%rbp)	# b, b
	.loc 1 530 0
	movq	-96(%rbp), %rax	# b, tmp74
	movq	(%rax), %rax	# b_17(D)->head, tmp75
	movq	%rax, -64(%rbp)	# tmp75, b_head
	movq	-96(%rbp), %rax	# b, tmp76
	movq	8(%rax), %rax	# b_17(D)->end, tmp77
	movq	%rax, -8(%rbp)	# tmp77, b_end
	movq	-88(%rbp), %rax	# a, tmp78
	movq	8(%rax), %rax	# a_20(D)->end, tmp79
	movq	%rax, -56(%rbp)	# tmp79, a_end
	.loc 1 531 0
	movq	$0, -48(%rbp)	#, del_first
	movq	$0, -40(%rbp)	#, del_last
	.loc 1 532 0
	movl	$0, -68(%rbp)	#, b_empty
	.loc 1 536 0
	movq	-64(%rbp), %rax	# b_head, tmp80
	movzwl	(%rax), %eax	# b_head_18->code, D.14738
	cmpw	$36, %ax	#, D.14738
	jne	.L89	#,
	.loc 1 540 0
	movq	-64(%rbp), %rax	# b_head, tmp81
	cmpq	-8(%rbp), %rax	# b_end, tmp81
	jne	.L90	#,
	.loc 1 541 0
	movl	$1, -68(%rbp)	#, b_empty
.L90:
	.loc 1 543 0
	movq	-64(%rbp), %rax	# b_head, tmp82
	movq	%rax, -40(%rbp)	# tmp82, del_last
	movq	-40(%rbp), %rax	# del_last, tmp83
	movq	%rax, -48(%rbp)	# tmp83, del_first
	.loc 1 544 0
	movq	-64(%rbp), %rax	# b_head, tmp84
	movq	24(%rax), %rax	# b_head_18->fld[2].rtx, tmp85
	movq	%rax, -64(%rbp)	# tmp85, b_head
.L89:
	.loc 1 549 0
	movq	-64(%rbp), %rax	# b_head, tmp86
	movzwl	(%rax), %eax	# b_head_1->code, D.14738
	cmpw	$37, %ax	#, D.14738
	jne	.L91	#,
	.loc 1 549 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# b_head, tmp87
	movl	40(%rax), %eax	# b_head_1->fld[4].rtint, D.14739
	cmpl	$-80, %eax	#, D.14739
	jne	.L91	#,
	.loc 1 551 0 is_stmt 1
	movq	-64(%rbp), %rax	# b_head, tmp88
	cmpq	-8(%rbp), %rax	# b_end, tmp88
	jne	.L92	#,
	.loc 1 552 0
	movl	$1, -68(%rbp)	#, b_empty
.L92:
	.loc 1 553 0
	cmpq	$0, -40(%rbp)	#, del_last
	jne	.L93	#,
	.loc 1 554 0
	movq	-64(%rbp), %rax	# b_head, tmp89
	movq	%rax, -48(%rbp)	# tmp89, del_first
.L93:
	.loc 1 556 0
	movq	-64(%rbp), %rax	# b_head, tmp90
	movq	%rax, -40(%rbp)	# tmp90, del_last
	.loc 1 557 0
	movq	-64(%rbp), %rax	# b_head, tmp91
	movq	24(%rax), %rax	# b_head_1->fld[2].rtx, tmp92
	movq	%rax, -64(%rbp)	# tmp92, b_head
.L91:
	.loc 1 561 0
	movq	-56(%rbp), %rax	# a_end, tmp93
	movzwl	(%rax), %eax	# a_end_21->code, D.14738
	cmpw	$33, %ax	#, D.14738
	jne	.L94	#,
.LBB16:
	.loc 1 565 0
	movq	-56(%rbp), %rax	# a_end, tmp94
	movq	16(%rax), %rax	# a_end_21->fld[1].rtx, tmp95
	movq	%rax, -24(%rbp)	# tmp95, prev
.L96:
	.loc 1 566 0
	movq	-24(%rbp), %rax	# prev, tmp96
	movzwl	(%rax), %eax	# prev_15->code, D.14738
	cmpw	$37, %ax	#, D.14738
	jne	.L95	#,
	.loc 1 567 0
	movq	-24(%rbp), %rax	# prev, tmp97
	movl	40(%rax), %eax	# prev_15->fld[4].rtint, D.14739
	cmpl	$-80, %eax	#, D.14739
	je	.L95	#,
	.loc 1 568 0
	movq	-88(%rbp), %rax	# a, tmp98
	movq	(%rax), %rax	# a_20(D)->head, D.14740
	cmpq	-24(%rbp), %rax	# prev, D.14740
	je	.L95	#,
	.loc 1 565 0
	movq	-24(%rbp), %rax	# prev, tmp99
	movq	16(%rax), %rax	# prev_15->fld[1].rtx, tmp100
	movq	%rax, -24(%rbp)	# tmp100, prev
	.loc 1 571 0
	jmp	.L96	#
.L95:
	movq	-56(%rbp), %rax	# a_end, tmp101
	movq	%rax, -48(%rbp)	# tmp101, del_first
	.loc 1 587 0
	movq	-48(%rbp), %rax	# del_first, tmp102
	movq	16(%rax), %rax	# del_first_42->fld[1].rtx, tmp103
	movq	%rax, -56(%rbp)	# tmp103, a_end
.LBE16:
	jmp	.L97	#
.L94:
	.loc 1 589 0
	movq	-56(%rbp), %rax	# a_end, tmp104
	movq	24(%rax), %rax	# a_end_21->fld[2].rtx, D.14740
	movzwl	(%rax), %eax	# _44->code, D.14738
	cmpw	$35, %ax	#, D.14738
	jne	.L97	#,
	.loc 1 590 0
	movq	-56(%rbp), %rax	# a_end, tmp105
	movq	24(%rax), %rax	# a_end_21->fld[2].rtx, tmp106
	movq	%rax, -48(%rbp)	# tmp106, del_first
	.loc 1 596 0
	jmp	.L98	#
.L97:
	jmp	.L98	#
.L99:
	.loc 1 597 0
	movq	-88(%rbp), %rax	# a, tmp107
	movq	40(%rax), %rax	# a_20(D)->succ, D.14741
	movq	%rax, %rdi	# D.14741,
	call	remove_edge	#
.L98:
	.loc 1 596 0 discriminator 1
	movq	-88(%rbp), %rax	# a, tmp108
	movq	40(%rax), %rax	# a_20(D)->succ, D.14741
	testq	%rax, %rax	# D.14741
	jne	.L99	#,
	.loc 1 600 0
	movq	-96(%rbp), %rax	# b, tmp109
	movq	40(%rax), %rax	# b_17(D)->succ, tmp110
	movq	%rax, -32(%rbp)	# tmp110, e
	jmp	.L100	#
.L101:
	.loc 1 601 0 discriminator 2
	movq	-32(%rbp), %rax	# e, tmp111
	movq	-88(%rbp), %rdx	# a, tmp112
	movq	%rdx, 16(%rax)	# tmp112, e_14->src
	.loc 1 600 0 discriminator 2
	movq	-32(%rbp), %rax	# e, tmp113
	movq	8(%rax), %rax	# e_14->succ_next, tmp114
	movq	%rax, -32(%rbp)	# tmp114, e
.L100:
	.loc 1 600 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e
	jne	.L101	#,
	.loc 1 602 0 is_stmt 1
	movq	-96(%rbp), %rax	# b, tmp115
	movq	40(%rax), %rdx	# b_17(D)->succ, D.14741
	movq	-88(%rbp), %rax	# a, tmp116
	movq	%rdx, 40(%rax)	# D.14741, a_20(D)->succ
	.loc 1 605 0
	movq	-96(%rbp), %rax	# b, tmp117
	movq	$0, 40(%rax)	#, b_17(D)->succ
	movq	-96(%rbp), %rax	# b, tmp118
	movq	40(%rax), %rdx	# b_17(D)->succ, D.14741
	movq	-96(%rbp), %rax	# b, tmp119
	movq	%rdx, 32(%rax)	# D.14741, b_17(D)->pred
	.loc 1 606 0
	movq	-96(%rbp), %rax	# b, tmp120
	movq	72(%rax), %rdx	# b_17(D)->global_live_at_end, D.14742
	movq	-88(%rbp), %rax	# a, tmp121
	movq	%rdx, 72(%rax)	# D.14742, a_20(D)->global_live_at_end
	.loc 1 608 0
	movq	-96(%rbp), %rax	# b, tmp122
	movq	%rax, %rdi	# tmp122,
	call	expunge_block	#
	.loc 1 612 0
	movq	-40(%rbp), %rdx	# del_last, tmp123
	movq	-48(%rbp), %rax	# del_first, tmp124
	movq	%rdx, %rsi	# tmp123,
	movq	%rax, %rdi	# tmp124,
	call	delete_insn_chain	#
	.loc 1 615 0
	cmpl	$0, -68(%rbp)	#, b_empty
	jne	.L102	#,
	.loc 1 617 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.30
	testq	%rax, %rax	# basic_block_for_insn.30
	je	.L103	#,
.LBB17:
	.loc 1 621 0
	movq	-56(%rbp), %rax	# a_end, tmp125
	movq	%rax, -16(%rbp)	# tmp125, x
	jmp	.L104	#
.L105:
	.loc 1 622 0 discriminator 2
	movq	-88(%rbp), %rdx	# a, tmp126
	movq	-16(%rbp), %rax	# x, tmp127
	movq	%rdx, %rsi	# tmp126,
	movq	%rax, %rdi	# tmp127,
	call	set_block_for_insn	#
	.loc 1 621 0 discriminator 2
	movq	-16(%rbp), %rax	# x, tmp128
	movq	24(%rax), %rax	# x_16->fld[2].rtx, tmp129
	movq	%rax, -16(%rbp)	# tmp129, x
.L104:
	.loc 1 621 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# x, tmp130
	cmpq	-8(%rbp), %rax	# b_end, tmp130
	jne	.L105	#,
	.loc 1 624 0 is_stmt 1
	movq	-88(%rbp), %rdx	# a, tmp131
	movq	-8(%rbp), %rax	# b_end, tmp132
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	set_block_for_insn	#
.L103:
.LBE17:
	.loc 1 627 0
	movq	-8(%rbp), %rax	# b_end, tmp133
	movq	%rax, -56(%rbp)	# tmp133, a_end
.L102:
	.loc 1 630 0
	movq	-88(%rbp), %rax	# a, tmp134
	movq	-56(%rbp), %rdx	# a_end, tmp135
	movq	%rdx, 8(%rax)	# tmp135, a_20(D)->end
	.loc 1 631 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	merge_blocks_nomove, .-merge_blocks_nomove
	.globl	block_label
	.type	block_label, @function
block_label:
.LFB16:
	.loc 1 639 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# block, block
	.loc 1 640 0
	cmpq	$entry_exit_blocks+112, -24(%rbp)	#, block
	jne	.L107	#,
	.loc 1 641 0
	movl	$0, %eax	#, D.14743
	jmp	.L108	#
.L107:
	.loc 1 643 0
	movq	-24(%rbp), %rax	# block, tmp68
	movq	(%rax), %rax	# block_2(D)->head, D.14744
	movzwl	(%rax), %eax	# _4->code, D.14745
	cmpw	$36, %ax	#, D.14745
	je	.L109	#,
	.loc 1 645 0
	movq	-24(%rbp), %rax	# block, tmp69
	movq	(%rax), %rbx	# block_2(D)->head, D.14744
	call	gen_label_rtx	#
	movq	%rbx, %rsi	# D.14744,
	movq	%rax, %rdi	# D.14744,
	call	emit_label_before	#
	movq	-24(%rbp), %rdx	# block, tmp70
	movq	%rax, (%rdx)	# D.14744, block_2(D)->head
	.loc 1 646 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.31
	testq	%rax, %rax	# basic_block_for_insn.31
	je	.L109	#,
	.loc 1 647 0
	movq	-24(%rbp), %rax	# block, tmp71
	movq	(%rax), %rax	# block_2(D)->head, D.14744
	movq	-24(%rbp), %rdx	# block, tmp72
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# D.14744,
	call	set_block_for_insn	#
.L109:
	.loc 1 650 0
	movq	-24(%rbp), %rax	# block, tmp73
	movq	(%rax), %rax	# block_2(D)->head, D.14743
.L108:
	.loc 1 651 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	block_label, .-block_label
	.section	.rodata
.LC2:
	.string	"Removing jump %i.\n"
	.align 8
.LC3:
	.string	"Redirecting jump %i from %i to %i.\n"
.LC4:
	.string	"Replacing insn %i by jump %i\n"
	.text
	.type	try_redirect_by_replacing_jump, @function
try_redirect_by_replacing_jump:
.LFB17:
	.loc 1 662 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# e, e
	movq	%rsi, -96(%rbp)	# target, target
	.loc 1 663 0
	movq	-88(%rbp), %rax	# e, tmp119
	movq	16(%rax), %rax	# e_6(D)->src, tmp120
	movq	%rax, -56(%rbp)	# tmp120, src
	.loc 1 664 0
	movq	-56(%rbp), %rax	# src, tmp121
	movq	8(%rax), %rax	# src_7->end, tmp122
	movq	%rax, -48(%rbp)	# tmp122, insn
	.loc 1 667 0
	movl	$0, -68(%rbp)	#, fallthru
	.loc 1 670 0
	movq	-56(%rbp), %rax	# src, tmp123
	movq	40(%rax), %rax	# src_7->succ, tmp124
	movq	%rax, -64(%rbp)	# tmp124, tmp
	jmp	.L111	#
.L114:
	.loc 1 671 0
	movq	-64(%rbp), %rax	# tmp, tmp125
	movq	24(%rax), %rax	# tmp_1->dest, D.14747
	cmpq	-96(%rbp), %rax	# target, D.14747
	je	.L112	#,
	.loc 1 671 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# tmp, tmp126
	cmpq	-88(%rbp), %rax	# e, tmp126
	je	.L112	#,
	.loc 1 672 0 is_stmt 1
	jmp	.L113	#
.L112:
	.loc 1 670 0
	movq	-64(%rbp), %rax	# tmp, tmp127
	movq	8(%rax), %rax	# tmp_1->succ_next, tmp128
	movq	%rax, -64(%rbp)	# tmp128, tmp
.L111:
	.loc 1 670 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, tmp
	jne	.L114	#,
.L113:
	.loc 1 674 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, tmp
	jne	.L115	#,
	.loc 1 674 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# insn, tmp129
	movq	%rax, %rdi	# tmp129,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.14748
	jne	.L116	#,
.L115:
	.loc 1 675 0 is_stmt 1
	movl	$0, %eax	#, D.14746
	jmp	.L117	#
.L116:
	.loc 1 678 0
	movq	-48(%rbp), %rax	# insn, tmp130
	movzwl	(%rax), %eax	# insn_8->code, D.14749
	movzwl	%ax, %eax	# D.14749, D.14748
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14750
	cmpb	$105, %al	#, D.14750
	jne	.L118	#,
	.loc 1 678 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# insn, tmp132
	movq	32(%rax), %rax	# insn_8->fld[3].rtx, D.14751
	movzwl	(%rax), %eax	# _18->code, D.14749
	cmpw	$47, %ax	#, D.14749
	jne	.L119	#,
	.loc 1 678 0 discriminator 3
	movq	-48(%rbp), %rax	# insn, tmp133
	movq	32(%rax), %rax	# insn_8->fld[3].rtx, iftmp.33
	jmp	.L121	#
.L119:
	.loc 1 678 0 discriminator 4
	movq	-48(%rbp), %rax	# insn, tmp134
	movq	32(%rax), %rdx	# insn_8->fld[3].rtx, D.14751
	movq	-48(%rbp), %rax	# insn, tmp135
	movq	%rdx, %rsi	# D.14751,
	movq	%rax, %rdi	# tmp135,
	call	single_set_2	#
	jmp	.L121	#
.L118:
	.loc 1 678 0 discriminator 2
	movl	$0, %eax	#, iftmp.32
.L121:
	.loc 1 678 0 discriminator 5
	movq	%rax, -40(%rbp)	# iftmp.32, set
	.loc 1 679 0 is_stmt 1 discriminator 5
	cmpq	$0, -40(%rbp)	#, set
	je	.L122	#,
	.loc 1 679 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# set, tmp136
	movq	%rax, %rdi	# tmp136,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14748
	je	.L123	#,
.L122:
	.loc 1 680 0 is_stmt 1
	movl	$0, %eax	#, D.14746
	jmp	.L117	#
.L123:
	.loc 1 684 0
	movq	-48(%rbp), %rax	# insn, tmp137
	movq	%rax, -32(%rbp)	# tmp137, kill_from
	.loc 1 691 0
	movq	-96(%rbp), %rdx	# target, tmp138
	movq	-56(%rbp), %rax	# src, tmp139
	movq	%rdx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	can_fallthru	#
	testb	%al, %al	# D.14746
	je	.L124	#,
	.loc 1 693 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.34
	testq	%rax, %rax	# rtl_dump_file.34
	je	.L125	#,
	.loc 1 694 0
	movq	-48(%rbp), %rax	# insn, tmp140
	movl	8(%rax), %edx	# insn_8->fld[0].rtint, D.14748
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.35
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.35,
	movl	$0, %eax	#,
	call	fprintf	#
.L125:
	.loc 1 695 0
	movl	$1, -68(%rbp)	#, fallthru
	.loc 1 698 0
	movq	-96(%rbp), %rax	# target, tmp141
	movq	(%rax), %rax	# target_12(D)->head, D.14751
	movq	16(%rax), %rdx	# _33->fld[1].rtx, D.14751
	movq	-32(%rbp), %rax	# kill_from, tmp142
	movq	%rdx, %rsi	# D.14751,
	movq	%rax, %rdi	# tmp142,
	call	delete_insn_chain	#
	jmp	.L126	#
.L124:
	.loc 1 702 0
	movq	-48(%rbp), %rax	# insn, tmp143
	movq	%rax, %rdi	# tmp143,
	call	simplejump_p	#
	testl	%eax, %eax	# D.14748
	je	.L127	#,
	.loc 1 704 0
	movq	-88(%rbp), %rax	# e, tmp144
	movq	24(%rax), %rax	# e_6(D)->dest, D.14747
	cmpq	-96(%rbp), %rax	# target, D.14747
	jne	.L128	#,
	.loc 1 705 0
	movl	$0, %eax	#, D.14746
	jmp	.L117	#
.L128:
	.loc 1 706 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.36
	testq	%rax, %rax	# rtl_dump_file.36
	je	.L129	#,
	.loc 1 707 0
	movq	-96(%rbp), %rax	# target, tmp145
	movl	88(%rax), %esi	# target_12(D)->index, D.14748
	.loc 1 708 0
	movq	-88(%rbp), %rax	# e, tmp146
	movq	24(%rax), %rax	# e_6(D)->dest, D.14747
	.loc 1 707 0
	movl	88(%rax), %ecx	# _40->index, D.14748
	movq	-48(%rbp), %rax	# insn, tmp147
	movl	8(%rax), %edx	# insn_8->fld[0].rtint, D.14748
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.37
	movl	%esi, %r8d	# D.14748,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.37,
	movl	$0, %eax	#,
	call	fprintf	#
.L129:
	.loc 1 709 0
	movq	-96(%rbp), %rax	# target, tmp148
	movq	%rax, %rdi	# tmp148,
	call	block_label	#
	movq	%rax, %rcx	#, D.14751
	movq	-48(%rbp), %rax	# insn, tmp149
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.14751,
	movq	%rax, %rdi	# tmp149,
	call	redirect_jump	#
	testl	%eax, %eax	# D.14748
	jne	.L126	#,
	.loc 1 711 0
	cmpq	$entry_exit_blocks+112, -96(%rbp)	#, target
	jne	.L130	#,
	.loc 1 712 0
	movl	$0, %eax	#, D.14746
	jmp	.L117	#
.L130:
	.loc 1 713 0
	movl	$__FUNCTION__.12598, %edx	#,
	movl	$713, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L127:
	.loc 1 718 0
	cmpq	$entry_exit_blocks+112, -96(%rbp)	#, target
	jne	.L131	#,
	.loc 1 719 0
	movl	$0, %eax	#, D.14746
	jmp	.L117	#
.L131:
.LBB18:
	.loc 1 724 0
	movq	-96(%rbp), %rax	# target, tmp150
	movq	%rax, %rdi	# tmp150,
	call	block_label	#
	movq	%rax, -24(%rbp)	# tmp151, target_label
	.loc 1 727 0
	movq	-24(%rbp), %rax	# target_label, tmp152
	movq	%rax, %rdi	# tmp152,
	call	gen_jump	#
	movq	-48(%rbp), %rdx	# insn, tmp153
	movq	%rdx, %rsi	# tmp153,
	movq	%rax, %rdi	# D.14751,
	call	emit_jump_insn_after	#
	.loc 1 728 0
	movq	-56(%rbp), %rax	# src, tmp154
	movq	8(%rax), %rax	# src_7->end, D.14751
	movq	-24(%rbp), %rdx	# target_label, tmp155
	movq	%rdx, 64(%rax)	# tmp155, _50->fld[7].rtx
	.loc 1 729 0
	movq	-24(%rbp), %rax	# target_label, tmp156
	movl	32(%rax), %eax	# target_label_48->fld[3].rtint, D.14748
	leal	1(%rax), %edx	#, D.14748
	movq	-24(%rbp), %rax	# target_label, tmp157
	movl	%edx, 32(%rax)	# D.14748, target_label_48->fld[3].rtint
	.loc 1 730 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.38
	testq	%rax, %rax	# rtl_dump_file.38
	je	.L132	#,
	.loc 1 732 0
	movq	-56(%rbp), %rax	# src, tmp158
	movq	8(%rax), %rax	# src_7->end, D.14751
	.loc 1 731 0
	movl	8(%rax), %ecx	# _54->fld[0].rtint, D.14748
	movq	-48(%rbp), %rax	# insn, tmp159
	movl	8(%rax), %edx	# insn_8->fld[0].rtint, D.14748
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.39
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.39,
	movl	$0, %eax	#,
	call	fprintf	#
.L132:
	.loc 1 735 0
	movq	-48(%rbp), %rdx	# insn, tmp160
	movq	-32(%rbp), %rax	# kill_from, tmp161
	movq	%rdx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	delete_insn_chain	#
	.loc 1 740 0
	movq	-48(%rbp), %rax	# insn, tmp162
	movq	64(%rax), %rax	# insn_8->fld[7].rtx, tmp163
	movq	%rax, -16(%rbp)	# tmp163, tmp
	cmpq	$0, -16(%rbp)	#, tmp
	je	.L133	#,
	.loc 1 741 0
	movq	-16(%rbp), %rax	# tmp, tmp164
	movq	24(%rax), %rax	# tmp_58->fld[2].rtx, tmp165
	movq	%rax, -16(%rbp)	# tmp165, tmp
	cmpq	$0, -16(%rbp)	#, tmp
	je	.L133	#,
	.loc 1 742 0
	movq	-16(%rbp), %rax	# tmp, tmp166
	movzwl	(%rax), %eax	# tmp_59->code, D.14749
	cmpw	$33, %ax	#, D.14749
	jne	.L133	#,
	.loc 1 743 0
	movq	-16(%rbp), %rax	# tmp, tmp167
	movq	32(%rax), %rax	# tmp_59->fld[3].rtx, D.14751
	movzwl	(%rax), %eax	# _61->code, D.14749
	cmpw	$44, %ax	#, D.14749
	je	.L134	#,
	.loc 1 744 0
	movq	-16(%rbp), %rax	# tmp, tmp168
	movq	32(%rax), %rax	# tmp_59->fld[3].rtx, D.14751
	movzwl	(%rax), %eax	# _63->code, D.14749
	cmpw	$45, %ax	#, D.14749
	jne	.L133	#,
.L134:
	.loc 1 746 0
	movq	-48(%rbp), %rax	# insn, tmp169
	movq	64(%rax), %rax	# insn_8->fld[7].rtx, D.14751
	movq	-16(%rbp), %rdx	# tmp, tmp170
	movq	%rdx, %rsi	# tmp170,
	movq	%rax, %rdi	# D.14751,
	call	delete_insn_chain	#
.L133:
	.loc 1 749 0
	movq	-56(%rbp), %rax	# src, tmp171
	movq	8(%rax), %rax	# src_7->end, D.14751
	movq	%rax, %rdi	# D.14751,
	call	next_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp172, barrier
	.loc 1 750 0
	cmpq	$0, -8(%rbp)	#, barrier
	je	.L135	#,
	.loc 1 750 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# barrier, tmp173
	movzwl	(%rax), %eax	# barrier_67->code, D.14749
	cmpw	$35, %ax	#, D.14749
	je	.L126	#,
.L135:
	.loc 1 751 0 is_stmt 1
	movq	-56(%rbp), %rax	# src, tmp174
	movq	8(%rax), %rax	# src_7->end, D.14751
	movq	%rax, %rdi	# D.14751,
	call	emit_barrier_after	#
.LBE18:
	.loc 1 755 0
	jmp	.L136	#
.L126:
	jmp	.L136	#
.L137:
	.loc 1 756 0
	movq	-56(%rbp), %rax	# src, tmp175
	movq	40(%rax), %rax	# src_7->succ, D.14752
	movq	%rax, %rdi	# D.14752,
	call	remove_edge	#
.L136:
	.loc 1 755 0 discriminator 1
	movq	-56(%rbp), %rax	# src, tmp176
	movq	40(%rax), %rax	# src_7->succ, D.14752
	movq	8(%rax), %rax	# _70->succ_next, D.14752
	testq	%rax, %rax	# D.14752
	jne	.L137	#,
	.loc 1 757 0
	movq	-56(%rbp), %rax	# src, tmp177
	movq	40(%rax), %rax	# src_7->succ, tmp178
	movq	%rax, -88(%rbp)	# tmp178, e
	.loc 1 758 0
	cmpl	$0, -68(%rbp)	#, fallthru
	je	.L138	#,
	.loc 1 759 0
	movq	-88(%rbp), %rax	# e, tmp179
	movl	$1, 48(%rax)	#, e_73->flags
	jmp	.L139	#
.L138:
	.loc 1 761 0
	movq	-88(%rbp), %rax	# e, tmp180
	movl	$0, 48(%rax)	#, e_73->flags
.L139:
	.loc 1 763 0
	movq	-88(%rbp), %rax	# e, tmp181
	movl	$10000, 52(%rax)	#, e_73->probability
	.loc 1 764 0
	movq	-56(%rbp), %rax	# src, tmp182
	movq	96(%rax), %rdx	# src_7->count, D.14753
	movq	-88(%rbp), %rax	# e, tmp183
	movq	%rdx, 56(%rax)	# D.14753, e_73->count
	.loc 1 768 0
	jmp	.L140	#
.L142:
	.loc 1 770 0
	movq	-88(%rbp), %rax	# e, tmp184
	movq	16(%rax), %rax	# e_73->src, D.14747
	movq	8(%rax), %rax	# _81->end, D.14751
	movq	%rax, %rdi	# D.14751,
	call	delete_insn	#
.L140:
	.loc 1 768 0 discriminator 1
	movq	-88(%rbp), %rax	# e, tmp185
	movq	16(%rax), %rax	# e_73->src, D.14747
	movq	8(%rax), %rax	# _75->end, D.14751
	movzwl	(%rax), %eax	# _76->code, D.14749
	cmpw	$37, %ax	#, D.14749
	jne	.L141	#,
	.loc 1 769 0
	movq	-88(%rbp), %rax	# e, tmp186
	movq	16(%rax), %rax	# e_73->src, D.14747
	movq	8(%rax), %rax	# _78->end, D.14751
	movl	40(%rax), %eax	# _79->fld[4].rtint, D.14748
	testl	%eax, %eax	# D.14748
	jns	.L142	#,
.L141:
	.loc 1 772 0
	movq	-88(%rbp), %rax	# e, tmp187
	movq	24(%rax), %rax	# e_73->dest, D.14747
	cmpq	-96(%rbp), %rax	# target, D.14747
	je	.L143	#,
	.loc 1 773 0
	movq	-96(%rbp), %rdx	# target, tmp188
	movq	-88(%rbp), %rax	# e, tmp189
	movq	%rdx, %rsi	# tmp188,
	movq	%rax, %rdi	# tmp189,
	call	redirect_edge_succ	#
.L143:
	.loc 1 775 0
	movl	$1, %eax	#, D.14746
.L117:
	.loc 1 776 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	try_redirect_by_replacing_jump, .-try_redirect_by_replacing_jump
	.type	last_loop_beg_note, @function
last_loop_beg_note:
.LFB18:
	.loc 1 789 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 790 0
	movq	-24(%rbp), %rax	# insn, tmp64
	movq	%rax, -8(%rbp)	# tmp64, last
	.loc 1 792 0
	movq	-24(%rbp), %rax	# insn, tmp65
	movq	24(%rax), %rax	# insn_4(D)->fld[2].rtx, tmp66
	movq	%rax, -24(%rbp)	# tmp66, insn
	jmp	.L145	#
.L148:
	.loc 1 795 0
	movq	-24(%rbp), %rax	# insn, tmp67
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.14758
	cmpl	$-96, %eax	#, D.14758
	jne	.L146	#,
	.loc 1 796 0
	movq	-24(%rbp), %rax	# insn, tmp68
	movq	%rax, -8(%rbp)	# tmp68, last
.L146:
	.loc 1 794 0
	movq	-24(%rbp), %rax	# insn, tmp69
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp70
	movq	%rax, -24(%rbp)	# tmp70, insn
.L145:
	.loc 1 792 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	je	.L147	#,
	.loc 1 792 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# insn, tmp71
	movzwl	(%rax), %eax	# insn_1->code, D.14757
	cmpw	$37, %ax	#, D.14757
	jne	.L147	#,
	.loc 1 793 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp72
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.14758
	cmpl	$-80, %eax	#, D.14758
	jne	.L148	#,
.L147:
	.loc 1 798 0
	movq	-8(%rbp), %rax	# last, D.14759
	.loc 1 799 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	last_loop_beg_note, .-last_loop_beg_note
	.section	.rodata
.LC5:
	.string	"Edge %i->%i redirected to %i\n"
	.text
	.globl	redirect_edge_and_branch
	.type	redirect_edge_and_branch, @function
redirect_edge_and_branch:
.LFB19:
	.loc 1 815 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# e, e
	movq	%rsi, -96(%rbp)	# target, target
	.loc 1 817 0
	movq	-88(%rbp), %rax	# e, tmp126
	movq	24(%rax), %rax	# e_7(D)->dest, D.14761
	movq	(%rax), %rax	# _8->head, tmp127
	movq	%rax, -56(%rbp)	# tmp127, old_label
	.loc 1 818 0
	movq	-88(%rbp), %rax	# e, tmp128
	movq	16(%rax), %rax	# e_7(D)->src, tmp129
	movq	%rax, -48(%rbp)	# tmp129, src
	.loc 1 819 0
	movq	-48(%rbp), %rax	# src, tmp130
	movq	8(%rax), %rax	# src_10->end, tmp131
	movq	%rax, -40(%rbp)	# tmp131, insn
	.loc 1 821 0
	movq	-88(%rbp), %rax	# e, tmp132
	movl	48(%rax), %eax	# e_7(D)->flags, D.14762
	andl	$12, %eax	#, D.14762
	testl	%eax, %eax	# D.14762
	je	.L151	#,
	.loc 1 822 0
	movl	$0, %eax	#, D.14760
	jmp	.L152	#
.L151:
	.loc 1 824 0
	movq	-96(%rbp), %rdx	# target, tmp133
	movq	-88(%rbp), %rax	# e, tmp134
	movq	%rdx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	try_redirect_by_replacing_jump	#
	testb	%al, %al	# D.14760
	je	.L153	#,
	.loc 1 825 0
	movl	$1, %eax	#, D.14760
	jmp	.L152	#
.L153:
	.loc 1 830 0
	movq	-88(%rbp), %rax	# e, tmp135
	movq	24(%rax), %rax	# e_7(D)->dest, D.14761
	cmpq	-96(%rbp), %rax	# target, D.14761
	jne	.L154	#,
	.loc 1 831 0
	movl	$0, %eax	#, D.14760
	jmp	.L152	#
.L154:
	.loc 1 834 0
	movq	-88(%rbp), %rax	# e, tmp136
	movl	48(%rax), %eax	# e_7(D)->flags, D.14762
	andl	$1, %eax	#, D.14762
	testl	%eax, %eax	# D.14762
	je	.L155	#,
	.loc 1 835 0
	movl	$0, %eax	#, D.14760
	jmp	.L152	#
.L155:
	.loc 1 836 0
	movq	-40(%rbp), %rax	# insn, tmp137
	movzwl	(%rax), %eax	# insn_11->code, D.14763
	cmpw	$33, %ax	#, D.14763
	je	.L156	#,
	.loc 1 837 0
	movl	$0, %eax	#, D.14760
	jmp	.L152	#
.L156:
	.loc 1 840 0
	movq	-40(%rbp), %rax	# insn, tmp138
	movq	64(%rax), %rax	# insn_11->fld[7].rtx, tmp139
	movq	%rax, -32(%rbp)	# tmp139, tmp
	cmpq	$0, -32(%rbp)	#, tmp
	je	.L157	#,
	.loc 1 841 0
	movq	-32(%rbp), %rax	# tmp, tmp140
	movq	24(%rax), %rax	# tmp_25->fld[2].rtx, tmp141
	movq	%rax, -32(%rbp)	# tmp141, tmp
	cmpq	$0, -32(%rbp)	#, tmp
	je	.L157	#,
	.loc 1 842 0
	movq	-32(%rbp), %rax	# tmp, tmp142
	movzwl	(%rax), %eax	# tmp_26->code, D.14763
	cmpw	$33, %ax	#, D.14763
	jne	.L157	#,
	.loc 1 843 0
	movq	-32(%rbp), %rax	# tmp, tmp143
	movq	32(%rax), %rax	# tmp_26->fld[3].rtx, D.14764
	movzwl	(%rax), %eax	# _28->code, D.14763
	cmpw	$44, %ax	#, D.14763
	je	.L158	#,
	.loc 1 844 0
	movq	-32(%rbp), %rax	# tmp, tmp144
	movq	32(%rax), %rax	# tmp_26->fld[3].rtx, D.14764
	movzwl	(%rax), %eax	# _30->code, D.14763
	cmpw	$45, %ax	#, D.14763
	jne	.L157	#,
.L158:
.LBB19:
	.loc 1 848 0
	movq	-96(%rbp), %rax	# target, tmp145
	movq	%rax, %rdi	# tmp145,
	call	block_label	#
	movq	%rax, -24(%rbp)	# tmp146, new_label
	.loc 1 850 0
	cmpq	$entry_exit_blocks+112, -96(%rbp)	#, target
	jne	.L159	#,
	.loc 1 851 0
	movl	$0, %eax	#, D.14760
	jmp	.L152	#
.L159:
	.loc 1 852 0
	movq	-32(%rbp), %rax	# tmp, tmp147
	movq	32(%rax), %rax	# tmp_26->fld[3].rtx, D.14764
	movzwl	(%rax), %eax	# _34->code, D.14763
	cmpw	$44, %ax	#, D.14763
	jne	.L160	#,
	.loc 1 853 0
	movq	-32(%rbp), %rax	# tmp, tmp148
	movq	32(%rax), %rax	# tmp_26->fld[3].rtx, D.14764
	movq	8(%rax), %rax	# _36->fld[0].rtvec, tmp149
	movq	%rax, -64(%rbp)	# tmp149, vec
	jmp	.L161	#
.L160:
	.loc 1 855 0
	movq	-32(%rbp), %rax	# tmp, tmp150
	movq	32(%rax), %rax	# tmp_26->fld[3].rtx, D.14764
	movq	16(%rax), %rax	# _38->fld[1].rtvec, tmp151
	movq	%rax, -64(%rbp)	# tmp151, vec
.L161:
	.loc 1 857 0
	movq	-64(%rbp), %rax	# vec, tmp152
	movl	(%rax), %eax	# vec_1->num_elem, D.14762
	subl	$1, %eax	#, tmp153
	movl	%eax, -68(%rbp)	# tmp153, j
	jmp	.L162	#
.L166:
	.loc 1 858 0
	movq	-64(%rbp), %rax	# vec, tmp154
	movl	-68(%rbp), %edx	# j, tmp156
	movslq	%edx, %rdx	# tmp156, tmp155
	movq	8(%rax,%rdx,8), %rax	# vec_1->elem, D.14764
	movq	8(%rax), %rax	# _42->fld[0].rtx, D.14764
	cmpq	-56(%rbp), %rax	# old_label, D.14764
	jne	.L163	#,
	.loc 1 860 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.41
	andl	$33554432, %eax	#, D.14762
	testl	%eax, %eax	# D.14762
	je	.L164	#,
	.loc 1 860 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.40
	jmp	.L165	#
.L164:
	.loc 1 860 0 discriminator 2
	movl	$4, %eax	#, iftmp.40
.L165:
	.loc 1 860 0 discriminator 3
	movq	-24(%rbp), %rdx	# new_label, tmp157
	movl	%eax, %esi	# iftmp.40,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	-64(%rbp), %rdx	# vec, tmp158
	movl	-68(%rbp), %ecx	# j, tmp160
	movslq	%ecx, %rcx	# tmp160, tmp159
	movq	%rax, 8(%rdx,%rcx,8)	# D.14764, vec_1->elem
	.loc 1 861 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# old_label, tmp161
	movl	32(%rax), %eax	# old_label_9->fld[3].rtint, D.14762
	leal	-1(%rax), %edx	#, D.14762
	movq	-56(%rbp), %rax	# old_label, tmp162
	movl	%edx, 32(%rax)	# D.14762, old_label_9->fld[3].rtint
	.loc 1 862 0 discriminator 3
	movq	-24(%rbp), %rax	# new_label, tmp163
	movl	32(%rax), %eax	# new_label_32->fld[3].rtint, D.14762
	leal	1(%rax), %edx	#, D.14762
	movq	-24(%rbp), %rax	# new_label, tmp164
	movl	%edx, 32(%rax)	# D.14762, new_label_32->fld[3].rtint
.L163:
	.loc 1 857 0
	subl	$1, -68(%rbp)	#, j
.L162:
	.loc 1 857 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, j
	jns	.L166	#,
	.loc 1 866 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp165
	movzwl	(%rax), %eax	# insn_11->code, D.14763
	movzwl	%ax, %eax	# D.14763, D.14762
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14765
	cmpb	$105, %al	#, D.14765
	jne	.L167	#,
	.loc 1 866 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp167
	movq	32(%rax), %rax	# insn_11->fld[3].rtx, D.14764
	movzwl	(%rax), %eax	# _57->code, D.14763
	cmpw	$47, %ax	#, D.14763
	jne	.L168	#,
	.loc 1 866 0 discriminator 3
	movq	-40(%rbp), %rax	# insn, tmp168
	movq	32(%rax), %rax	# insn_11->fld[3].rtx, iftmp.43
	jmp	.L170	#
.L168:
	.loc 1 866 0 discriminator 4
	movq	-40(%rbp), %rax	# insn, tmp169
	movq	32(%rax), %rdx	# insn_11->fld[3].rtx, D.14764
	movq	-40(%rbp), %rax	# insn, tmp170
	movq	%rdx, %rsi	# D.14764,
	movq	%rax, %rdi	# tmp170,
	call	single_set_2	#
	jmp	.L170	#
.L167:
	.loc 1 866 0 discriminator 2
	movl	$0, %eax	#, iftmp.42
.L170:
	.loc 1 866 0 discriminator 5
	movq	%rax, -32(%rbp)	# iftmp.42, tmp
	cmpq	$0, -32(%rbp)	#, tmp
	je	.L171	#,
	.loc 1 867 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmp, tmp171
	movq	8(%rax), %rdx	# tmp_64->fld[0].rtx, D.14764
	movq	global_rtl(%rip), %rax	# global_rtl, D.14764
	cmpq	%rax, %rdx	# D.14764, D.14764
	jne	.L171	#,
	.loc 1 868 0
	movq	-32(%rbp), %rax	# tmp, tmp172
	movq	16(%rax), %rax	# tmp_64->fld[1].rtx, D.14764
	movzwl	(%rax), %eax	# _67->code, D.14763
	cmpw	$72, %ax	#, D.14763
	jne	.L171	#,
	.loc 1 869 0
	movq	-32(%rbp), %rax	# tmp, tmp173
	movq	16(%rax), %rax	# tmp_64->fld[1].rtx, D.14764
	movq	24(%rax), %rax	# _69->fld[2].rtx, D.14764
	movzwl	(%rax), %eax	# _70->code, D.14763
	cmpw	$67, %ax	#, D.14763
	jne	.L171	#,
	.loc 1 870 0
	movq	-32(%rbp), %rax	# tmp, tmp174
	movq	16(%rax), %rax	# tmp_64->fld[1].rtx, D.14764
	movq	24(%rax), %rax	# _72->fld[2].rtx, D.14764
	movq	8(%rax), %rax	# _73->fld[0].rtx, D.14764
	cmpq	-56(%rbp), %rax	# old_label, D.14764
	jne	.L171	#,
	.loc 1 872 0
	movq	-32(%rbp), %rax	# tmp, tmp175
	movq	16(%rax), %rbx	# tmp_64->fld[1].rtx, D.14764
	movq	-24(%rbp), %rax	# new_label, tmp176
	movq	%rax, %rdx	# tmp176,
	movl	$0, %esi	#,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, 24(%rbx)	# D.14764, _75->fld[2].rtx
	.loc 1 874 0
	movq	-56(%rbp), %rax	# old_label, tmp177
	movl	32(%rax), %eax	# old_label_9->fld[3].rtint, D.14762
	leal	-1(%rax), %edx	#, D.14762
	movq	-56(%rbp), %rax	# old_label, tmp178
	movl	%edx, 32(%rax)	# D.14762, old_label_9->fld[3].rtint
	.loc 1 875 0
	movq	-24(%rbp), %rax	# new_label, tmp179
	movl	32(%rax), %eax	# new_label_32->fld[3].rtint, D.14762
	leal	1(%rax), %edx	#, D.14762
	movq	-24(%rbp), %rax	# new_label, tmp180
	movl	%edx, 32(%rax)	# D.14762, new_label_32->fld[3].rtint
.LBE19:
	.loc 1 845 0
	jmp	.L172	#
.L171:
	jmp	.L172	#
.L157:
	.loc 1 883 0
	movq	-40(%rbp), %rax	# insn, tmp181
	movq	%rax, %rdi	# tmp181,
	call	computed_jump_p	#
	testl	%eax, %eax	# D.14762
	jne	.L173	#,
	.loc 1 885 0
	movq	-40(%rbp), %rax	# insn, tmp182
	movq	%rax, %rdi	# tmp182,
	call	returnjump_p	#
	testl	%eax, %eax	# D.14762
	je	.L174	#,
.L173:
	.loc 1 886 0
	movl	$0, %eax	#, D.14760
	jmp	.L152	#
.L174:
	.loc 1 889 0
	movq	-40(%rbp), %rax	# insn, tmp183
	movq	64(%rax), %rax	# insn_11->fld[7].rtx, D.14764
	cmpq	-56(%rbp), %rax	# old_label, D.14764
	je	.L175	#,
	.loc 1 890 0
	movl	$__FUNCTION__.12629, %edx	#,
	movl	$890, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L175:
	.loc 1 895 0
	movq	-96(%rbp), %rax	# target, tmp184
	movq	%rax, %rdi	# tmp184,
	call	block_label	#
	movq	%rax, %rcx	#, D.14764
	movq	-40(%rbp), %rax	# insn, tmp185
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.14764,
	movq	%rax, %rdi	# tmp185,
	call	redirect_jump	#
	testl	%eax, %eax	# D.14762
	jne	.L172	#,
	.loc 1 897 0
	cmpq	$entry_exit_blocks+112, -96(%rbp)	#, target
	jne	.L176	#,
	.loc 1 898 0
	movl	$0, %eax	#, D.14760
	jmp	.L152	#
.L176:
	.loc 1 899 0
	movl	$__FUNCTION__.12629, %edx	#,
	movl	$899, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L172:
	.loc 1 903 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.44
	testq	%rax, %rax	# rtl_dump_file.44
	je	.L177	#,
	.loc 1 904 0
	movq	-96(%rbp), %rax	# target, tmp186
	movl	88(%rax), %esi	# target_15(D)->index, D.14762
	.loc 1 905 0
	movq	-88(%rbp), %rax	# e, tmp187
	movq	24(%rax), %rax	# e_7(D)->dest, D.14761
	.loc 1 904 0
	movl	88(%rax), %ecx	# _90->index, D.14762
	.loc 1 905 0
	movq	-88(%rbp), %rax	# e, tmp188
	movq	16(%rax), %rax	# e_7(D)->src, D.14761
	.loc 1 904 0
	movl	88(%rax), %edx	# _92->index, D.14762
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.45
	movl	%esi, %r8d	# D.14762,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.45,
	movl	$0, %eax	#,
	call	fprintf	#
.L177:
	.loc 1 907 0
	movq	-88(%rbp), %rax	# e, tmp189
	movq	24(%rax), %rax	# e_7(D)->dest, D.14761
	cmpq	-96(%rbp), %rax	# target, D.14761
	je	.L178	#,
	.loc 1 908 0
	movq	-96(%rbp), %rdx	# target, tmp190
	movq	-88(%rbp), %rax	# e, tmp191
	movq	%rdx, %rsi	# tmp190,
	movq	%rax, %rdi	# tmp191,
	call	redirect_edge_succ_nodup	#
.L178:
	.loc 1 910 0
	movl	$1, %eax	#, D.14760
.L152:
	.loc 1 911 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	redirect_edge_and_branch, .-redirect_edge_and_branch
	.type	force_nonfallthru_and_redirect, @function
force_nonfallthru_and_redirect:
.LFB20:
	.loc 1 920 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)	# e, e
	movq	%rsi, -160(%rbp)	# target, target
	.loc 1 921 0
	movq	$0, -128(%rbp)	#, new_bb
	.loc 1 925 0
	movq	-152(%rbp), %rax	# e, tmp193
	movl	48(%rax), %eax	# e_6(D)->flags, D.14767
	andl	$2, %eax	#, D.14767
	testl	%eax, %eax	# D.14767
	je	.L180	#,
	.loc 1 926 0
	movl	$__FUNCTION__.12638, %edx	#,
	movl	$926, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L180:
	.loc 1 927 0
	movq	-152(%rbp), %rax	# e, tmp194
	movl	48(%rax), %eax	# e_6(D)->flags, D.14767
	andl	$1, %eax	#, D.14767
	testl	%eax, %eax	# D.14767
	jne	.L181	#,
	.loc 1 928 0
	movl	$__FUNCTION__.12638, %edx	#,
	movl	$928, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L181:
	.loc 1 929 0
	movq	-152(%rbp), %rax	# e, tmp195
	movq	16(%rax), %rax	# e_6(D)->src, D.14768
	cmpq	$entry_exit_blocks, %rax	#, D.14768
	jne	.L182	#,
.LBB20:
	.loc 1 934 0
	movq	-152(%rbp), %rax	# e, tmp196
	movq	24(%rax), %rax	# e_6(D)->dest, D.14768
	movq	(%rax), %rax	# _12->head, D.14769
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.14769,
	movl	$0, %edi	#,
	call	create_basic_block	#
	movq	%rax, -104(%rbp)	# tmp197, bb
	.loc 1 938 0
	movq	-152(%rbp), %rax	# e, tmp198
	movq	-104(%rbp), %rdx	# bb, tmp199
	movq	%rdx, 16(%rax)	# tmp199, e_6(D)->src
	.loc 1 939 0
	movq	-152(%rbp), %rax	# e, tmp200
	movq	56(%rax), %rdx	# e_6(D)->count, D.14770
	movq	-104(%rbp), %rax	# bb, tmp201
	movq	%rdx, 96(%rax)	# D.14770, bb_14->count
	.loc 1 940 0
	movq	-152(%rbp), %rax	# e, tmp202
	movq	16(%rax), %rax	# e_6(D)->src, D.14768
	movl	104(%rax), %edx	# _16->frequency, D.14767
	movq	-152(%rbp), %rax	# e, tmp203
	movl	52(%rax), %eax	# e_6(D)->probability, D.14767
	imull	%edx, %eax	# D.14767, D.14767
	leal	5000(%rax), %ecx	#, D.14767
	movl	$1759218605, %edx	#, tmp205
	movl	%ecx, %eax	# D.14767, tmp341
	imull	%edx	# tmp205
	sarl	$12, %edx	#, tmp206
	movl	%ecx, %eax	# D.14767, tmp207
	sarl	$31, %eax	#, tmp207
	subl	%eax, %edx	# tmp207, D.14767
	movq	-104(%rbp), %rax	# bb, tmp208
	movl	%edx, 104(%rax)	# D.14767, bb_14->frequency
	.loc 1 941 0
	movq	-104(%rbp), %rax	# bb, tmp209
	movl	$0, 92(%rax)	#, bb_14->loop_depth
	.loc 1 942 0
	movq	$entry_exit_blocks+40, -112(%rbp)	#, pe1
	jmp	.L183	#
.L186:
	.loc 1 943 0
	movq	-112(%rbp), %rax	# pe1, tmp210
	movq	(%rax), %rax	# *pe1_4, D.14771
	cmpq	-152(%rbp), %rax	# e, D.14771
	jne	.L184	#,
	.loc 1 945 0
	movq	-152(%rbp), %rax	# e, tmp211
	movq	8(%rax), %rdx	# e_6(D)->succ_next, D.14771
	movq	-112(%rbp), %rax	# pe1, tmp212
	movq	%rdx, (%rax)	# D.14771, *pe1_4
	.loc 1 946 0
	jmp	.L185	#
.L184:
	.loc 1 942 0
	movq	-112(%rbp), %rax	# pe1, tmp213
	movq	(%rax), %rax	# *pe1_4, D.14771
	addq	$8, %rax	#, tmp214
	movq	%rax, -112(%rbp)	# tmp214, pe1
.L183:
	.loc 1 942 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# pe1, tmp215
	movq	(%rax), %rax	# *pe1_4, D.14771
	testq	%rax, %rax	# D.14771
	jne	.L186	#,
.L185:
	.loc 1 948 0 is_stmt 1
	movq	-152(%rbp), %rax	# e, tmp216
	movq	$0, 8(%rax)	#, e_6(D)->succ_next
	.loc 1 949 0
	movq	-104(%rbp), %rax	# bb, tmp217
	movq	-152(%rbp), %rdx	# e, tmp218
	movq	%rdx, 40(%rax)	# tmp218, bb_14->succ
	.loc 1 950 0
	movq	-104(%rbp), %rax	# bb, tmp219
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp219,
	movl	$entry_exit_blocks, %edi	#,
	call	make_single_succ_edge	#
.L182:
.LBE20:
	.loc 1 953 0
	movq	-152(%rbp), %rax	# e, tmp220
	movq	16(%rax), %rax	# e_6(D)->src, D.14768
	movq	40(%rax), %rax	# _28->succ, D.14771
	movq	8(%rax), %rax	# _29->succ_next, D.14771
	testq	%rax, %rax	# D.14771
	je	.L187	#,
	.loc 1 958 0
	movq	-152(%rbp), %rax	# e, tmp221
	movq	16(%rax), %rax	# e_6(D)->src, D.14768
	movq	8(%rax), %rax	# _31->end, D.14769
	movq	%rax, %rdi	# D.14769,
	call	last_loop_beg_note	#
	movq	%rax, -120(%rbp)	# tmp222, note
	.loc 1 959 0
	movq	-120(%rbp), %rax	# note, tmp223
	movq	24(%rax), %rax	# note_33->fld[2].rtx, tmp224
	movq	%rax, -120(%rbp)	# tmp224, note
	.loc 1 962 0
	cmpq	$0, -120(%rbp)	#, note
	je	.L188	#,
	.loc 1 963 0
	movq	-120(%rbp), %rax	# note, tmp225
	movzwl	(%rax), %eax	# note_34->code, D.14772
	cmpw	$36, %ax	#, D.14772
	jne	.L188	#,
	.loc 1 964 0
	movq	-120(%rbp), %rax	# note, tmp226
	movq	24(%rax), %rax	# note_34->fld[2].rtx, D.14769
	testq	%rax, %rax	# D.14769
	je	.L188	#,
	.loc 1 965 0
	movq	-120(%rbp), %rax	# note, tmp227
	movq	24(%rax), %rax	# note_34->fld[2].rtx, D.14769
	movzwl	(%rax), %eax	# _37->code, D.14772
	cmpw	$33, %ax	#, D.14772
	jne	.L188	#,
	.loc 1 966 0
	movq	-120(%rbp), %rax	# note, tmp228
	movq	24(%rax), %rax	# note_34->fld[2].rtx, D.14769
	movq	32(%rax), %rax	# _39->fld[3].rtx, D.14769
	movzwl	(%rax), %eax	# _40->code, D.14772
	cmpw	$45, %ax	#, D.14772
	je	.L189	#,
	.loc 1 967 0
	movq	-120(%rbp), %rax	# note, tmp229
	movq	24(%rax), %rax	# note_34->fld[2].rtx, D.14769
	movq	32(%rax), %rax	# _42->fld[3].rtx, D.14769
	movzwl	(%rax), %eax	# _43->code, D.14772
	cmpw	$44, %ax	#, D.14772
	jne	.L188	#,
.L189:
	.loc 1 968 0
	movq	-120(%rbp), %rax	# note, tmp230
	movq	24(%rax), %rax	# note_34->fld[2].rtx, D.14769
	movq	24(%rax), %rax	# _45->fld[2].rtx, tmp231
	movq	%rax, -120(%rbp)	# tmp231, note
.L188:
	.loc 1 970 0
	movq	-152(%rbp), %rax	# e, tmp232
	movq	16(%rax), %rax	# e_6(D)->src, D.14768
	movl	88(%rax), %eax	# _47->index, D.14767
	leal	1(%rax), %ecx	#, D.14767
	movq	-120(%rbp), %rax	# note, tmp233
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp233,
	movl	%ecx, %edi	# D.14767,
	call	create_basic_block	#
	movq	%rax, -136(%rbp)	# tmp234, jump_block
	.loc 1 971 0
	movq	-152(%rbp), %rax	# e, tmp235
	movq	56(%rax), %rdx	# e_6(D)->count, D.14770
	movq	-136(%rbp), %rax	# jump_block, tmp236
	movq	%rdx, 96(%rax)	# D.14770, jump_block_50->count
	.loc 1 972 0
	movq	-152(%rbp), %rax	# e, tmp237
	movq	16(%rax), %rax	# e_6(D)->src, D.14768
	movl	104(%rax), %edx	# _52->frequency, D.14767
	movq	-152(%rbp), %rax	# e, tmp238
	movl	52(%rax), %eax	# e_6(D)->probability, D.14767
	imull	%edx, %eax	# D.14767, D.14767
	leal	5000(%rax), %ecx	#, D.14767
	movl	$1759218605, %edx	#, tmp240
	movl	%ecx, %eax	# D.14767, tmp342
	imull	%edx	# tmp240
	sarl	$12, %edx	#, tmp241
	movl	%ecx, %eax	# D.14767, tmp242
	sarl	$31, %eax	#, tmp242
	subl	%eax, %edx	# tmp242, D.14767
	movq	-136(%rbp), %rax	# jump_block, tmp243
	movl	%edx, 104(%rax)	# D.14767, jump_block_50->frequency
	.loc 1 973 0
	movq	-160(%rbp), %rax	# target, tmp244
	movl	92(%rax), %edx	# target_58(D)->loop_depth, D.14767
	movq	-136(%rbp), %rax	# jump_block, tmp245
	movl	%edx, 92(%rax)	# D.14767, jump_block_50->loop_depth
	.loc 1 975 0
	movq	-160(%rbp), %rax	# target, tmp246
	movq	64(%rax), %rax	# target_58(D)->global_live_at_start, D.14773
	testq	%rax, %rax	# D.14773
	je	.L190	#,
.LBB21:
	.loc 1 978 0
	movq	$flow_obstack, -96(%rbp)	#, __h
.LBB22:
	movq	-96(%rbp), %rax	# __h, tmp247
	movq	%rax, -88(%rbp)	# tmp247, __o
	movl	$24, -144(%rbp)	#, __len
	movq	-88(%rbp), %rax	# __o, tmp248
	movq	32(%rax), %rax	# __o_62->chunk_limit, D.14774
	movq	%rax, %rdx	# D.14774, D.14770
	movq	-88(%rbp), %rax	# __o, tmp249
	movq	24(%rax), %rax	# __o_62->next_free, D.14774
	subq	%rax, %rdx	# D.14770, D.14770
	movl	-144(%rbp), %eax	# __len, tmp250
	cltq
	cmpq	%rax, %rdx	# D.14770, D.14770
	jge	.L191	#,
	.loc 1 978 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %edx	# __len, tmp251
	movq	-88(%rbp), %rax	# __o, tmp252
	movl	%edx, %esi	# tmp251,
	movq	%rax, %rdi	# tmp252,
	call	_obstack_newchunk	#
.L191:
	.loc 1 978 0 discriminator 2
	movq	-88(%rbp), %rax	# __o, tmp253
	movq	24(%rax), %rdx	# __o_62->next_free, D.14774
	movl	-144(%rbp), %eax	# __len, tmp254
	cltq
	addq	%rax, %rdx	# D.14775, D.14774
	movq	-88(%rbp), %rax	# __o, tmp255
	movq	%rdx, 24(%rax)	# D.14774, __o_62->next_free
.LBE22:
.LBB23:
	movq	-96(%rbp), %rax	# __h, tmp256
	movq	%rax, -80(%rbp)	# tmp256, __o1
	movq	-80(%rbp), %rax	# __o1, tmp257
	movq	16(%rax), %rax	# __o1_73->object_base, tmp258
	movq	%rax, -72(%rbp)	# tmp258, value
	movq	-80(%rbp), %rax	# __o1, tmp259
	movq	24(%rax), %rax	# __o1_73->next_free, D.14774
	cmpq	-72(%rbp), %rax	# value, D.14774
	jne	.L192	#,
	.loc 1 978 0 discriminator 1
	movq	-80(%rbp), %rax	# __o1, tmp260
	movzbl	80(%rax), %edx	# __o1_73->maybe_empty_object, tmp263
	orl	$2, %edx	#, tmp264
	movb	%dl, 80(%rax)	# tmp264, __o1_73->maybe_empty_object
.L192:
	.loc 1 978 0 discriminator 2
	movq	-80(%rbp), %rax	# __o1, tmp265
	movq	24(%rax), %rax	# __o1_73->next_free, D.14774
	movq	%rax, %rdx	# D.14774, D.14770
	movq	-80(%rbp), %rax	# __o1, tmp266
	movl	48(%rax), %eax	# __o1_73->alignment_mask, D.14767
	cltq
	addq	%rax, %rdx	# D.14770, D.14770
	movq	-80(%rbp), %rax	# __o1, tmp267
	movl	48(%rax), %eax	# __o1_73->alignment_mask, D.14767
	notl	%eax	# D.14767
	cltq
	andq	%rdx, %rax	# D.14770, D.14770
	movq	%rax, %rdx	# D.14770, D.14774
	movq	-80(%rbp), %rax	# __o1, tmp268
	movq	%rdx, 24(%rax)	# D.14774, __o1_73->next_free
	movq	-80(%rbp), %rax	# __o1, tmp269
	movq	24(%rax), %rax	# __o1_73->next_free, D.14774
	movq	%rax, %rdx	# D.14774, D.14770
	movq	-80(%rbp), %rax	# __o1, tmp270
	movq	8(%rax), %rax	# __o1_73->chunk, D.14776
	movq	%rdx, %rcx	# D.14770, D.14770
	subq	%rax, %rcx	# D.14770, D.14770
	movq	-80(%rbp), %rax	# __o1, tmp271
	movq	32(%rax), %rax	# __o1_73->chunk_limit, D.14774
	movq	%rax, %rdx	# D.14774, D.14770
	movq	-80(%rbp), %rax	# __o1, tmp272
	movq	8(%rax), %rax	# __o1_73->chunk, D.14776
	subq	%rax, %rdx	# D.14770, D.14770
	movq	%rdx, %rax	# D.14770, D.14770
	cmpq	%rax, %rcx	# D.14770, D.14770
	jle	.L193	#,
	.loc 1 978 0 discriminator 1
	movq	-80(%rbp), %rax	# __o1, tmp273
	movq	32(%rax), %rdx	# __o1_73->chunk_limit, D.14774
	movq	-80(%rbp), %rax	# __o1, tmp274
	movq	%rdx, 24(%rax)	# D.14774, __o1_73->next_free
.L193:
	.loc 1 978 0 discriminator 2
	movq	-80(%rbp), %rax	# __o1, tmp275
	movq	24(%rax), %rdx	# __o1_73->next_free, D.14774
	movq	-80(%rbp), %rax	# __o1, tmp276
	movq	%rdx, 16(%rax)	# D.14774, __o1_73->object_base
	movq	-72(%rbp), %rax	# value, D.14777
.LBE23:
.LBE21:
	movq	%rax, %rdi	# D.14777,
	call	bitmap_initialize	#
	movq	-136(%rbp), %rdx	# jump_block, tmp277
	movq	%rax, 64(%rdx)	# D.14773, jump_block_50->global_live_at_start
.LBB24:
	.loc 1 980 0 is_stmt 1 discriminator 2
	movq	$flow_obstack, -64(%rbp)	#, __h
.LBB25:
	movq	-64(%rbp), %rax	# __h, tmp278
	movq	%rax, -56(%rbp)	# tmp278, __o
	movl	$24, -140(%rbp)	#, __len
	movq	-56(%rbp), %rax	# __o, tmp279
	movq	32(%rax), %rax	# __o_102->chunk_limit, D.14774
	movq	%rax, %rdx	# D.14774, D.14770
	movq	-56(%rbp), %rax	# __o, tmp280
	movq	24(%rax), %rax	# __o_102->next_free, D.14774
	subq	%rax, %rdx	# D.14770, D.14770
	movl	-140(%rbp), %eax	# __len, tmp281
	cltq
	cmpq	%rax, %rdx	# D.14770, D.14770
	jge	.L194	#,
	.loc 1 980 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %edx	# __len, tmp282
	movq	-56(%rbp), %rax	# __o, tmp283
	movl	%edx, %esi	# tmp282,
	movq	%rax, %rdi	# tmp283,
	call	_obstack_newchunk	#
.L194:
	.loc 1 980 0 discriminator 2
	movq	-56(%rbp), %rax	# __o, tmp284
	movq	24(%rax), %rdx	# __o_102->next_free, D.14774
	movl	-140(%rbp), %eax	# __len, tmp285
	cltq
	addq	%rax, %rdx	# D.14775, D.14774
	movq	-56(%rbp), %rax	# __o, tmp286
	movq	%rdx, 24(%rax)	# D.14774, __o_102->next_free
.LBE25:
.LBB26:
	movq	-64(%rbp), %rax	# __h, tmp287
	movq	%rax, -48(%rbp)	# tmp287, __o1
	movq	-48(%rbp), %rax	# __o1, tmp288
	movq	16(%rax), %rax	# __o1_113->object_base, tmp289
	movq	%rax, -40(%rbp)	# tmp289, value
	movq	-48(%rbp), %rax	# __o1, tmp290
	movq	24(%rax), %rax	# __o1_113->next_free, D.14774
	cmpq	-40(%rbp), %rax	# value, D.14774
	jne	.L195	#,
	.loc 1 980 0 discriminator 1
	movq	-48(%rbp), %rax	# __o1, tmp291
	movzbl	80(%rax), %edx	# __o1_113->maybe_empty_object, tmp294
	orl	$2, %edx	#, tmp295
	movb	%dl, 80(%rax)	# tmp295, __o1_113->maybe_empty_object
.L195:
	.loc 1 980 0 discriminator 2
	movq	-48(%rbp), %rax	# __o1, tmp296
	movq	24(%rax), %rax	# __o1_113->next_free, D.14774
	movq	%rax, %rdx	# D.14774, D.14770
	movq	-48(%rbp), %rax	# __o1, tmp297
	movl	48(%rax), %eax	# __o1_113->alignment_mask, D.14767
	cltq
	addq	%rax, %rdx	# D.14770, D.14770
	movq	-48(%rbp), %rax	# __o1, tmp298
	movl	48(%rax), %eax	# __o1_113->alignment_mask, D.14767
	notl	%eax	# D.14767
	cltq
	andq	%rdx, %rax	# D.14770, D.14770
	movq	%rax, %rdx	# D.14770, D.14774
	movq	-48(%rbp), %rax	# __o1, tmp299
	movq	%rdx, 24(%rax)	# D.14774, __o1_113->next_free
	movq	-48(%rbp), %rax	# __o1, tmp300
	movq	24(%rax), %rax	# __o1_113->next_free, D.14774
	movq	%rax, %rdx	# D.14774, D.14770
	movq	-48(%rbp), %rax	# __o1, tmp301
	movq	8(%rax), %rax	# __o1_113->chunk, D.14776
	movq	%rdx, %rcx	# D.14770, D.14770
	subq	%rax, %rcx	# D.14770, D.14770
	movq	-48(%rbp), %rax	# __o1, tmp302
	movq	32(%rax), %rax	# __o1_113->chunk_limit, D.14774
	movq	%rax, %rdx	# D.14774, D.14770
	movq	-48(%rbp), %rax	# __o1, tmp303
	movq	8(%rax), %rax	# __o1_113->chunk, D.14776
	subq	%rax, %rdx	# D.14770, D.14770
	movq	%rdx, %rax	# D.14770, D.14770
	cmpq	%rax, %rcx	# D.14770, D.14770
	jle	.L196	#,
	.loc 1 980 0 discriminator 1
	movq	-48(%rbp), %rax	# __o1, tmp304
	movq	32(%rax), %rdx	# __o1_113->chunk_limit, D.14774
	movq	-48(%rbp), %rax	# __o1, tmp305
	movq	%rdx, 24(%rax)	# D.14774, __o1_113->next_free
.L196:
	.loc 1 980 0 discriminator 2
	movq	-48(%rbp), %rax	# __o1, tmp306
	movq	24(%rax), %rdx	# __o1_113->next_free, D.14774
	movq	-48(%rbp), %rax	# __o1, tmp307
	movq	%rdx, 16(%rax)	# D.14774, __o1_113->object_base
	movq	-40(%rbp), %rax	# value, D.14777
.LBE26:
.LBE24:
	movq	%rax, %rdi	# D.14777,
	call	bitmap_initialize	#
	movq	-136(%rbp), %rdx	# jump_block, tmp308
	movq	%rax, 72(%rdx)	# D.14773, jump_block_50->global_live_at_end
	.loc 1 981 0 is_stmt 1 discriminator 2
	movq	-160(%rbp), %rax	# target, tmp309
	movq	64(%rax), %rdx	# target_58(D)->global_live_at_start, D.14773
	movq	-136(%rbp), %rax	# jump_block, tmp310
	movq	64(%rax), %rax	# jump_block_50->global_live_at_start, D.14773
	movq	%rdx, %rsi	# D.14773,
	movq	%rax, %rdi	# D.14773,
	call	bitmap_copy	#
	.loc 1 983 0 discriminator 2
	movq	-160(%rbp), %rax	# target, tmp311
	movq	64(%rax), %rdx	# target_58(D)->global_live_at_start, D.14773
	movq	-136(%rbp), %rax	# jump_block, tmp312
	movq	72(%rax), %rax	# jump_block_50->global_live_at_end, D.14773
	movq	%rdx, %rsi	# D.14773,
	movq	%rax, %rdi	# D.14773,
	call	bitmap_copy	#
.L190:
	.loc 1 988 0
	movq	-152(%rbp), %rax	# e, tmp313
	movq	16(%rax), %rax	# e_6(D)->src, D.14768
	movq	-136(%rbp), %rcx	# jump_block, tmp314
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp314,
	movq	%rax, %rdi	# D.14768,
	call	make_edge	#
	movq	%rax, -32(%rbp)	# tmp315, new_edge
	.loc 1 989 0
	movq	-152(%rbp), %rax	# e, tmp316
	movl	52(%rax), %edx	# e_6(D)->probability, D.14767
	movq	-32(%rbp), %rax	# new_edge, tmp317
	movl	%edx, 52(%rax)	# D.14767, new_edge_146->probability
	.loc 1 990 0
	movq	-152(%rbp), %rax	# e, tmp318
	movq	56(%rax), %rdx	# e_6(D)->count, D.14770
	movq	-32(%rbp), %rax	# new_edge, tmp319
	movq	%rdx, 56(%rax)	# D.14770, new_edge_146->count
	.loc 1 993 0
	movq	-136(%rbp), %rdx	# jump_block, tmp320
	movq	-152(%rbp), %rax	# e, tmp321
	movq	%rdx, %rsi	# tmp320,
	movq	%rax, %rdi	# tmp321,
	call	redirect_edge_pred	#
	.loc 1 994 0
	movq	-152(%rbp), %rax	# e, tmp322
	movl	$10000, 52(%rax)	#, e_6(D)->probability
	.loc 1 996 0
	movq	-136(%rbp), %rax	# jump_block, tmp323
	movq	%rax, -128(%rbp)	# tmp323, new_bb
	jmp	.L197	#
.L187:
	.loc 1 999 0
	movq	-152(%rbp), %rax	# e, tmp324
	movq	16(%rax), %rax	# e_6(D)->src, tmp325
	movq	%rax, -136(%rbp)	# tmp325, jump_block
.L197:
	.loc 1 1001 0
	movq	-152(%rbp), %rax	# e, tmp326
	movl	48(%rax), %eax	# e_6(D)->flags, D.14767
	andl	$-2, %eax	#, D.14767
	movl	%eax, %edx	# D.14767, D.14767
	movq	-152(%rbp), %rax	# e, tmp327
	movl	%edx, 48(%rax)	# D.14767, e_6(D)->flags
	.loc 1 1002 0
	cmpq	$entry_exit_blocks+112, -160(%rbp)	#, target
	jne	.L198	#,
	.loc 1 1004 0
	call	ix86_can_use_return_insn_p	#
	testl	%eax, %eax	# D.14767
	je	.L199	#,
	.loc 1 1005 0
	movq	-136(%rbp), %rax	# jump_block, tmp328
	movq	8(%rax), %rbx	# jump_block_1->end, D.14769
	call	gen_return	#
	movq	%rbx, %rsi	# D.14769,
	movq	%rax, %rdi	# D.14769,
	call	emit_jump_insn_after	#
	jmp	.L200	#
.L199:
	.loc 1 1007 0
	movl	$__FUNCTION__.12638, %edx	#,
	movl	$1007, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L198:
.LBB27:
	.loc 1 1011 0
	movq	-160(%rbp), %rax	# target, tmp329
	movq	%rax, %rdi	# tmp329,
	call	block_label	#
	movq	%rax, -24(%rbp)	# tmp330, label
	.loc 1 1012 0
	movq	-136(%rbp), %rax	# jump_block, tmp331
	movq	8(%rax), %rbx	# jump_block_1->end, D.14769
	movq	-24(%rbp), %rax	# label, tmp332
	movq	%rax, %rdi	# tmp332,
	call	gen_jump	#
	movq	%rbx, %rsi	# D.14769,
	movq	%rax, %rdi	# D.14769,
	call	emit_jump_insn_after	#
	.loc 1 1013 0
	movq	-136(%rbp), %rax	# jump_block, tmp333
	movq	8(%rax), %rax	# jump_block_1->end, D.14769
	movq	-24(%rbp), %rdx	# label, tmp334
	movq	%rdx, 64(%rax)	# tmp334, _159->fld[7].rtx
	.loc 1 1014 0
	movq	-24(%rbp), %rax	# label, tmp335
	movl	32(%rax), %eax	# label_156->fld[3].rtint, D.14767
	leal	1(%rax), %edx	#, D.14767
	movq	-24(%rbp), %rax	# label, tmp336
	movl	%edx, 32(%rax)	# D.14767, label_156->fld[3].rtint
.L200:
.LBE27:
	.loc 1 1017 0
	movq	-136(%rbp), %rax	# jump_block, tmp337
	movq	8(%rax), %rax	# jump_block_1->end, D.14769
	movq	%rax, %rdi	# D.14769,
	call	emit_barrier_after	#
	.loc 1 1018 0
	movq	-160(%rbp), %rdx	# target, tmp338
	movq	-152(%rbp), %rax	# e, tmp339
	movq	%rdx, %rsi	# tmp338,
	movq	%rax, %rdi	# tmp339,
	call	redirect_edge_succ_nodup	#
	.loc 1 1020 0
	movq	-128(%rbp), %rax	# new_bb, D.14778
	.loc 1 1021 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	force_nonfallthru_and_redirect, .-force_nonfallthru_and_redirect
	.globl	force_nonfallthru
	.type	force_nonfallthru, @function
force_nonfallthru:
.LFB21:
	.loc 1 1030 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# e, e
	.loc 1 1031 0
	movq	-8(%rbp), %rax	# e, tmp62
	movq	24(%rax), %rdx	# e_1(D)->dest, D.14779
	movq	-8(%rbp), %rax	# e, tmp63
	movq	%rdx, %rsi	# D.14779,
	movq	%rax, %rdi	# tmp63,
	call	force_nonfallthru_and_redirect	#
	.loc 1 1032 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	force_nonfallthru, .-force_nonfallthru
	.globl	redirect_edge_and_branch_force
	.type	redirect_edge_and_branch_force, @function
redirect_edge_and_branch_force:
.LFB22:
	.loc 1 1042 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# e, e
	movq	%rsi, -16(%rbp)	# target, target
	.loc 1 1043 0
	movq	-16(%rbp), %rdx	# target, tmp63
	movq	-8(%rbp), %rax	# e, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	redirect_edge_and_branch	#
	testb	%al, %al	# D.14782
	jne	.L205	#,
	.loc 1 1044 0
	movq	-8(%rbp), %rax	# e, tmp65
	movq	24(%rax), %rax	# e_2(D)->dest, D.14783
	cmpq	-16(%rbp), %rax	# target, D.14783
	jne	.L206	#,
.L205:
	.loc 1 1045 0
	movl	$0, %eax	#, D.14781
	jmp	.L207	#
.L206:
	.loc 1 1049 0
	movq	-16(%rbp), %rdx	# target, tmp66
	movq	-8(%rbp), %rax	# e, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	force_nonfallthru_and_redirect	#
.L207:
	.loc 1 1050 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	redirect_edge_and_branch_force, .-redirect_edge_and_branch_force
	.globl	tidy_fallthru_edge
	.type	tidy_fallthru_edge, @function
tidy_fallthru_edge:
.LFB23:
	.loc 1 1059 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# e, e
	movq	%rsi, -48(%rbp)	# b, b
	movq	%rdx, -56(%rbp)	# c, c
	.loc 1 1072 0
	movq	-48(%rbp), %rax	# b, tmp78
	movq	8(%rax), %rax	# b_3(D)->end, D.14784
	movq	%rax, %rdi	# D.14784,
	call	next_real_insn	#
	movq	%rax, %rbx	#, D.14784
	movq	-56(%rbp), %rax	# c, tmp79
	movq	(%rax), %rax	# c_6(D)->head, D.14784
	movq	16(%rax), %rax	# _7->fld[1].rtx, D.14784
	movq	%rax, %rdi	# D.14784,
	call	next_real_insn	#
	cmpq	%rax, %rbx	# D.14784, D.14784
	je	.L209	#,
	.loc 1 1073 0
	jmp	.L208	#
.L209:
	.loc 1 1078 0
	movq	-48(%rbp), %rax	# b, tmp80
	movq	8(%rax), %rax	# b_3(D)->end, tmp81
	movq	%rax, -24(%rbp)	# tmp81, q
	.loc 1 1079 0
	movq	-24(%rbp), %rax	# q, tmp82
	movzwl	(%rax), %eax	# q_10->code, D.14785
	cmpw	$33, %ax	#, D.14785
	jne	.L211	#,
	.loc 1 1080 0
	movq	-24(%rbp), %rax	# q, tmp83
	movq	%rax, %rdi	# tmp83,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.14786
	je	.L211	#,
	.loc 1 1081 0
	movq	-24(%rbp), %rax	# q, tmp84
	movq	%rax, %rdi	# tmp84,
	call	any_uncondjump_p	#
	testl	%eax, %eax	# D.14786
	jne	.L212	#,
	.loc 1 1082 0
	movq	-48(%rbp), %rax	# b, tmp85
	movq	40(%rax), %rax	# b_3(D)->succ, D.14787
	cmpq	-40(%rbp), %rax	# e, D.14787
	jne	.L211	#,
	.loc 1 1082 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# e, tmp86
	movq	8(%rax), %rax	# e_15(D)->succ_next, D.14787
	testq	%rax, %rax	# D.14787
	jne	.L211	#,
.L212:
	.loc 1 1091 0 is_stmt 1
	movq	-24(%rbp), %rax	# q, tmp87
	movq	16(%rax), %rax	# q_10->fld[1].rtx, tmp88
	movq	%rax, -24(%rbp)	# tmp88, q
	.loc 1 1095 0
	jmp	.L213	#
.L214:
	.loc 1 1096 0
	movq	-24(%rbp), %rax	# q, tmp89
	movq	16(%rax), %rax	# q_1->fld[1].rtx, tmp90
	movq	%rax, -24(%rbp)	# tmp90, q
.L213:
	.loc 1 1095 0 discriminator 1
	movq	-24(%rbp), %rax	# q, tmp91
	movzwl	(%rax), %eax	# q_1->code, D.14785
	cmpw	$37, %ax	#, D.14785
	jne	.L211	#,
	.loc 1 1095 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# q, tmp92
	movl	40(%rax), %eax	# q_1->fld[4].rtint, D.14786
	testl	%eax, %eax	# D.14786
	jns	.L214	#,
.L211:
	.loc 1 1100 0 is_stmt 1
	movq	-56(%rbp), %rax	# c, tmp93
	movq	(%rax), %rax	# c_6(D)->head, D.14784
	movq	16(%rax), %rax	# _21->fld[1].rtx, D.14784
	cmpq	-24(%rbp), %rax	# q, D.14784
	je	.L215	#,
	.loc 1 1101 0
	movq	-56(%rbp), %rax	# c, tmp94
	movq	(%rax), %rax	# c_6(D)->head, D.14784
	movq	16(%rax), %rdx	# _23->fld[1].rtx, D.14784
	movq	-24(%rbp), %rax	# q, tmp95
	movq	24(%rax), %rax	# q_2->fld[2].rtx, D.14784
	movq	%rdx, %rsi	# D.14784,
	movq	%rax, %rdi	# D.14784,
	call	delete_insn_chain	#
.L215:
	.loc 1 1103 0
	movq	-40(%rbp), %rax	# e, tmp96
	movl	48(%rax), %eax	# e_15(D)->flags, D.14786
	orl	$1, %eax	#, D.14786
	movl	%eax, %edx	# D.14786, D.14786
	movq	-40(%rbp), %rax	# e, tmp97
	movl	%edx, 48(%rax)	# D.14786, e_15(D)->flags
.L208:
	.loc 1 1104 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	tidy_fallthru_edge, .-tidy_fallthru_edge
	.globl	tidy_fallthru_edges
	.type	tidy_fallthru_edges, @function
tidy_fallthru_edges:
.LFB24:
	.loc 1 1113 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1116 0
	movl	$1, -28(%rbp)	#, i
	jmp	.L217	#
.L220:
.LBB28:
	.loc 1 1118 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.46
	movl	-28(%rbp), %edx	# i, tmp71
	subl	$1, %edx	#, D.14788
	movslq	%edx, %rdx	# D.14788, tmp72
	addq	$4, %rdx	#, tmp73
	movq	(%rax,%rdx,8), %rax	# basic_block_info.46_4->data.bb, tmp74
	movq	%rax, -24(%rbp)	# tmp74, b
	.loc 1 1119 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.47
	movl	-28(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, tmp75
	addq	$4, %rdx	#, tmp77
	movq	(%rax,%rdx,8), %rax	# basic_block_info.47_7->data.bb, tmp78
	movq	%rax, -16(%rbp)	# tmp78, c
	.loc 1 1134 0
	movq	-24(%rbp), %rax	# b, tmp79
	movq	40(%rax), %rax	# b_6->succ, tmp80
	movq	%rax, -8(%rbp)	# tmp80, s
	cmpq	$0, -8(%rbp)	#, s
	je	.L218	#,
	.loc 1 1135 0
	movq	-8(%rbp), %rax	# s, tmp81
	movl	48(%rax), %eax	# s_9->flags, D.14788
	andl	$14, %eax	#, D.14788
	testl	%eax, %eax	# D.14788
	jne	.L218	#,
	.loc 1 1136 0
	movq	-8(%rbp), %rax	# s, tmp82
	movq	8(%rax), %rax	# s_9->succ_next, D.14789
	testq	%rax, %rax	# D.14789
	jne	.L218	#,
	.loc 1 1137 0
	movq	-8(%rbp), %rax	# s, tmp83
	movq	24(%rax), %rax	# s_9->dest, D.14790
	cmpq	-16(%rbp), %rax	# c, D.14790
	jne	.L218	#,
	.loc 1 1139 0
	movq	-24(%rbp), %rax	# b, tmp84
	movq	8(%rax), %rax	# b_6->end, D.14791
	movzwl	(%rax), %eax	# _14->code, D.14792
	cmpw	$33, %ax	#, D.14792
	jne	.L219	#,
	.loc 1 1140 0
	movq	-24(%rbp), %rax	# b, tmp85
	movq	8(%rax), %rax	# b_6->end, D.14791
	movq	%rax, %rdi	# D.14791,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.14788
	je	.L218	#,
.L219:
	.loc 1 1141 0
	movq	-16(%rbp), %rdx	# c, tmp86
	movq	-24(%rbp), %rcx	# b, tmp87
	movq	-8(%rbp), %rax	# s, tmp88
	movq	%rcx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	tidy_fallthru_edge	#
.L218:
.LBE28:
	.loc 1 1116 0
	addl	$1, -28(%rbp)	#, i
.L217:
	.loc 1 1116 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.48
	cmpl	%eax, -28(%rbp)	# n_basic_blocks.48, i
	jl	.L220	#,
	.loc 1 1143 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	tidy_fallthru_edges, .-tidy_fallthru_edges
	.type	back_edge_of_syntactic_loop_p, @function
back_edge_of_syntactic_loop_p:
.LFB25:
	.loc 1 1151 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# bb1, bb1
	movq	%rsi, -32(%rbp)	# bb2, bb2
	.loc 1 1153 0
	movl	$0, -12(%rbp)	#, count
	.loc 1 1155 0
	movq	-24(%rbp), %rax	# bb1, tmp69
	movl	88(%rax), %edx	# bb1_6(D)->index, D.14794
	movq	-32(%rbp), %rax	# bb2, tmp70
	movl	88(%rax), %eax	# bb2_8(D)->index, D.14794
	cmpl	%eax, %edx	# D.14794, D.14794
	jle	.L222	#,
	.loc 1 1156 0
	movl	$0, %eax	#, D.14793
	jmp	.L223	#
.L222:
	.loc 1 1157 0
	movq	-24(%rbp), %rax	# bb1, tmp71
	movl	88(%rax), %edx	# bb1_6(D)->index, D.14794
	movq	-32(%rbp), %rax	# bb2, tmp72
	movl	88(%rax), %eax	# bb2_8(D)->index, D.14794
	cmpl	%eax, %edx	# D.14794, D.14794
	jne	.L224	#,
	.loc 1 1158 0
	movl	$1, %eax	#, D.14793
	jmp	.L223	#
.L224:
	.loc 1 1160 0
	movq	-24(%rbp), %rax	# bb1, tmp73
	movq	8(%rax), %rax	# bb1_6(D)->end, tmp74
	movq	%rax, -8(%rbp)	# tmp74, insn
	jmp	.L225	#
.L229:
	.loc 1 1162 0
	movq	-8(%rbp), %rax	# insn, tmp75
	movzwl	(%rax), %eax	# insn_1->code, D.14796
	cmpw	$37, %ax	#, D.14796
	jne	.L226	#,
	.loc 1 1164 0
	movq	-8(%rbp), %rax	# insn, tmp76
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.14794
	cmpl	$-96, %eax	#, D.14794
	jne	.L227	#,
	.loc 1 1165 0
	addl	$1, -12(%rbp)	#, count
	jmp	.L226	#
.L227:
	.loc 1 1166 0
	movq	-8(%rbp), %rax	# insn, tmp77
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.14794
	cmpl	$-95, %eax	#, D.14794
	jne	.L226	#,
	.loc 1 1167 0
	subl	$1, -12(%rbp)	#, count
.L226:
	.loc 1 1161 0
	movq	-8(%rbp), %rax	# insn, tmp78
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp79
	movq	%rax, -8(%rbp)	# tmp79, insn
.L225:
	.loc 1 1160 0 discriminator 1
	movq	-32(%rbp), %rax	# bb2, tmp80
	movq	(%rax), %rax	# bb2_8(D)->head, D.14795
	cmpq	-8(%rbp), %rax	# insn, D.14795
	je	.L228	#,
	.loc 1 1160 0 is_stmt 0 discriminator 2
	cmpl	$0, -12(%rbp)	#, count
	jns	.L229	#,
.L228:
	.loc 1 1170 0 is_stmt 1
	movl	-12(%rbp), %eax	# count, tmp82
	notl	%eax	# tmp81
	shrl	$31, %eax	#, tmp83
.L223:
	.loc 1 1171 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	back_edge_of_syntactic_loop_p, .-back_edge_of_syntactic_loop_p
	.globl	split_edge
	.type	split_edge, @function
split_edge:
.LFB26:
	.loc 1 1183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -120(%rbp)	# edge_in, edge_in
	.loc 1 1189 0
	movq	-120(%rbp), %rax	# edge_in, tmp181
	movl	48(%rax), %eax	# edge_in_4(D)->flags, D.14797
	andl	$2, %eax	#, D.14797
	testl	%eax, %eax	# D.14797
	je	.L231	#,
	.loc 1 1190 0
	movl	$__FUNCTION__.12699, %edx	#,
	movl	$1190, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L231:
	.loc 1 1194 0
	movq	-120(%rbp), %rax	# edge_in, tmp182
	movl	48(%rax), %eax	# edge_in_4(D)->flags, D.14797
	andl	$1, %eax	#, D.14797
	testl	%eax, %eax	# D.14797
	jne	.L232	#,
.LBB29:
	.loc 1 1198 0
	movq	-120(%rbp), %rax	# edge_in, tmp183
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movq	32(%rax), %rax	# _9->pred, tmp184
	movq	%rax, -88(%rbp)	# tmp184, e
	jmp	.L233	#
.L236:
	.loc 1 1199 0
	movq	-88(%rbp), %rax	# e, tmp185
	movl	48(%rax), %eax	# e_2->flags, D.14797
	andl	$1, %eax	#, D.14797
	testl	%eax, %eax	# D.14797
	je	.L234	#,
	.loc 1 1200 0
	jmp	.L235	#
.L234:
	.loc 1 1198 0
	movq	-88(%rbp), %rax	# e, tmp186
	movq	(%rax), %rax	# e_2->pred_next, tmp187
	movq	%rax, -88(%rbp)	# tmp187, e
.L233:
	.loc 1 1198 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, e
	jne	.L236	#,
.L235:
	.loc 1 1202 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, e
	je	.L232	#,
	.loc 1 1203 0
	movq	-88(%rbp), %rax	# e, tmp188
	movq	%rax, %rdi	# tmp188,
	call	force_nonfallthru	#
.L232:
.LBE29:
	.loc 1 1224 0
	movq	-120(%rbp), %rax	# edge_in, tmp189
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	cmpq	$entry_exit_blocks+112, %rax	#, D.14798
	je	.L237	#,
	.loc 1 1225 0
	movq	-120(%rbp), %rax	# edge_in, tmp190
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movq	(%rax), %rax	# _15->head, D.14799
	movq	16(%rax), %rax	# _16->fld[1].rtx, D.14799
	testq	%rax, %rax	# D.14799
	je	.L237	#,
	.loc 1 1226 0
	movq	-120(%rbp), %rax	# edge_in, tmp191
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movq	(%rax), %rax	# _18->head, D.14799
	movq	16(%rax), %rax	# _19->fld[1].rtx, D.14799
	movzwl	(%rax), %eax	# _20->code, D.14800
	cmpw	$37, %ax	#, D.14800
	jne	.L237	#,
	.loc 1 1227 0
	movq	-120(%rbp), %rax	# edge_in, tmp192
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movq	(%rax), %rax	# _22->head, D.14799
	movq	16(%rax), %rax	# _23->fld[1].rtx, D.14799
	movl	40(%rax), %eax	# _24->fld[4].rtint, D.14797
	cmpl	$-96, %eax	#, D.14797
	jne	.L237	#,
	.loc 1 1229 0
	movq	-120(%rbp), %rax	# edge_in, tmp193
	movq	16(%rax), %rdx	# edge_in_4(D)->src, D.14798
	movq	-120(%rbp), %rax	# edge_in, tmp194
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movq	%rdx, %rsi	# D.14798,
	movq	%rax, %rdi	# D.14798,
	call	back_edge_of_syntactic_loop_p	#
	xorl	$1, %eax	#, D.14801
	testb	%al, %al	# D.14801
	je	.L237	#,
	.loc 1 1230 0
	movq	-120(%rbp), %rax	# edge_in, tmp195
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movq	(%rax), %rax	# _30->head, D.14799
	movq	16(%rax), %rax	# _31->fld[1].rtx, tmp196
	movq	%rax, -96(%rbp)	# tmp196, before
	jmp	.L238	#
.L237:
	.loc 1 1231 0
	movq	-120(%rbp), %rax	# edge_in, tmp197
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	cmpq	$entry_exit_blocks+112, %rax	#, D.14798
	je	.L239	#,
	.loc 1 1232 0
	movq	-120(%rbp), %rax	# edge_in, tmp198
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movq	(%rax), %rax	# _34->head, tmp199
	movq	%rax, -96(%rbp)	# tmp199, before
	jmp	.L238	#
.L239:
	.loc 1 1234 0
	movq	$0, -96(%rbp)	#, before
.L238:
	.loc 1 1236 0
	movq	-120(%rbp), %rax	# edge_in, tmp200
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	cmpq	$entry_exit_blocks+112, %rax	#, D.14798
	je	.L240	#,
	.loc 1 1237 0
	movq	-120(%rbp), %rax	# edge_in, tmp201
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	.loc 1 1236 0
	movl	88(%rax), %eax	# _38->index, iftmp.49
	jmp	.L241	#
.L240:
	.loc 1 1236 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, iftmp.49
.L241:
	.loc 1 1236 0 discriminator 2
	movq	-96(%rbp), %rcx	# before, tmp202
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp202,
	movl	%eax, %edi	# iftmp.49,
	call	create_basic_block	#
	movq	%rax, -80(%rbp)	# tmp203, bb
	.loc 1 1238 0 is_stmt 1 discriminator 2
	movq	-120(%rbp), %rax	# edge_in, tmp204
	movq	56(%rax), %rdx	# edge_in_4(D)->count, D.14802
	movq	-80(%rbp), %rax	# bb, tmp205
	movq	%rdx, 96(%rax)	# D.14802, bb_41->count
	.loc 1 1239 0 discriminator 2
	movq	-120(%rbp), %rax	# edge_in, tmp206
	movq	16(%rax), %rax	# edge_in_4(D)->src, D.14798
	movl	104(%rax), %edx	# _43->frequency, D.14797
	movq	-120(%rbp), %rax	# edge_in, tmp207
	movl	52(%rax), %eax	# edge_in_4(D)->probability, D.14797
	imull	%edx, %eax	# D.14797, D.14797
	leal	5000(%rax), %ecx	#, D.14797
	movl	$1759218605, %edx	#, tmp209
	movl	%ecx, %eax	# D.14797, tmp291
	imull	%edx	# tmp209
	sarl	$12, %edx	#, tmp210
	movl	%ecx, %eax	# D.14797, tmp211
	sarl	$31, %eax	#, tmp211
	subl	%eax, %edx	# tmp211, D.14797
	movq	-80(%rbp), %rax	# bb, tmp212
	movl	%edx, 104(%rax)	# D.14797, bb_41->frequency
	.loc 1 1240 0 discriminator 2
	movq	-120(%rbp), %rax	# edge_in, tmp213
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movl	92(%rax), %edx	# _49->loop_depth, D.14797
	movq	-80(%rbp), %rax	# bb, tmp214
	movl	%edx, 92(%rax)	# D.14797, bb_41->loop_depth
	.loc 1 1243 0 discriminator 2
	movq	-120(%rbp), %rax	# edge_in, tmp215
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movq	64(%rax), %rax	# _51->global_live_at_start, D.14803
	testq	%rax, %rax	# D.14803
	je	.L242	#,
.LBB30:
	.loc 1 1245 0
	movq	$flow_obstack, -72(%rbp)	#, __h
.LBB31:
	movq	-72(%rbp), %rax	# __h, tmp216
	movq	%rax, -64(%rbp)	# tmp216, __o
	movl	$24, -104(%rbp)	#, __len
	movq	-64(%rbp), %rax	# __o, tmp217
	movq	32(%rax), %rax	# __o_54->chunk_limit, D.14804
	movq	%rax, %rdx	# D.14804, D.14802
	movq	-64(%rbp), %rax	# __o, tmp218
	movq	24(%rax), %rax	# __o_54->next_free, D.14804
	subq	%rax, %rdx	# D.14802, D.14802
	movl	-104(%rbp), %eax	# __len, tmp219
	cltq
	cmpq	%rax, %rdx	# D.14802, D.14802
	jge	.L243	#,
	.loc 1 1245 0 is_stmt 0 discriminator 1
	movl	-104(%rbp), %edx	# __len, tmp220
	movq	-64(%rbp), %rax	# __o, tmp221
	movl	%edx, %esi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	_obstack_newchunk	#
.L243:
	.loc 1 1245 0 discriminator 2
	movq	-64(%rbp), %rax	# __o, tmp222
	movq	24(%rax), %rdx	# __o_54->next_free, D.14804
	movl	-104(%rbp), %eax	# __len, tmp223
	cltq
	addq	%rax, %rdx	# D.14805, D.14804
	movq	-64(%rbp), %rax	# __o, tmp224
	movq	%rdx, 24(%rax)	# D.14804, __o_54->next_free
.LBE31:
.LBB32:
	movq	-72(%rbp), %rax	# __h, tmp225
	movq	%rax, -56(%rbp)	# tmp225, __o1
	movq	-56(%rbp), %rax	# __o1, tmp226
	movq	16(%rax), %rax	# __o1_65->object_base, tmp227
	movq	%rax, -48(%rbp)	# tmp227, value
	movq	-56(%rbp), %rax	# __o1, tmp228
	movq	24(%rax), %rax	# __o1_65->next_free, D.14804
	cmpq	-48(%rbp), %rax	# value, D.14804
	jne	.L244	#,
	.loc 1 1245 0 discriminator 1
	movq	-56(%rbp), %rax	# __o1, tmp229
	movzbl	80(%rax), %edx	# __o1_65->maybe_empty_object, tmp232
	orl	$2, %edx	#, tmp233
	movb	%dl, 80(%rax)	# tmp233, __o1_65->maybe_empty_object
.L244:
	.loc 1 1245 0 discriminator 2
	movq	-56(%rbp), %rax	# __o1, tmp234
	movq	24(%rax), %rax	# __o1_65->next_free, D.14804
	movq	%rax, %rdx	# D.14804, D.14802
	movq	-56(%rbp), %rax	# __o1, tmp235
	movl	48(%rax), %eax	# __o1_65->alignment_mask, D.14797
	cltq
	addq	%rax, %rdx	# D.14802, D.14802
	movq	-56(%rbp), %rax	# __o1, tmp236
	movl	48(%rax), %eax	# __o1_65->alignment_mask, D.14797
	notl	%eax	# D.14797
	cltq
	andq	%rdx, %rax	# D.14802, D.14802
	movq	%rax, %rdx	# D.14802, D.14804
	movq	-56(%rbp), %rax	# __o1, tmp237
	movq	%rdx, 24(%rax)	# D.14804, __o1_65->next_free
	movq	-56(%rbp), %rax	# __o1, tmp238
	movq	24(%rax), %rax	# __o1_65->next_free, D.14804
	movq	%rax, %rdx	# D.14804, D.14802
	movq	-56(%rbp), %rax	# __o1, tmp239
	movq	8(%rax), %rax	# __o1_65->chunk, D.14806
	movq	%rdx, %rcx	# D.14802, D.14802
	subq	%rax, %rcx	# D.14802, D.14802
	movq	-56(%rbp), %rax	# __o1, tmp240
	movq	32(%rax), %rax	# __o1_65->chunk_limit, D.14804
	movq	%rax, %rdx	# D.14804, D.14802
	movq	-56(%rbp), %rax	# __o1, tmp241
	movq	8(%rax), %rax	# __o1_65->chunk, D.14806
	subq	%rax, %rdx	# D.14802, D.14802
	movq	%rdx, %rax	# D.14802, D.14802
	cmpq	%rax, %rcx	# D.14802, D.14802
	jle	.L245	#,
	.loc 1 1245 0 discriminator 1
	movq	-56(%rbp), %rax	# __o1, tmp242
	movq	32(%rax), %rdx	# __o1_65->chunk_limit, D.14804
	movq	-56(%rbp), %rax	# __o1, tmp243
	movq	%rdx, 24(%rax)	# D.14804, __o1_65->next_free
.L245:
	.loc 1 1245 0 discriminator 2
	movq	-56(%rbp), %rax	# __o1, tmp244
	movq	24(%rax), %rdx	# __o1_65->next_free, D.14804
	movq	-56(%rbp), %rax	# __o1, tmp245
	movq	%rdx, 16(%rax)	# D.14804, __o1_65->object_base
	movq	-48(%rbp), %rax	# value, D.14807
.LBE32:
.LBE30:
	movq	%rax, %rdi	# D.14807,
	call	bitmap_initialize	#
	movq	-80(%rbp), %rdx	# bb, tmp246
	movq	%rax, 64(%rdx)	# D.14803, bb_41->global_live_at_start
.LBB33:
	.loc 1 1246 0 is_stmt 1 discriminator 2
	movq	$flow_obstack, -40(%rbp)	#, __h
.LBB34:
	movq	-40(%rbp), %rax	# __h, tmp247
	movq	%rax, -32(%rbp)	# tmp247, __o
	movl	$24, -100(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp248
	movq	32(%rax), %rax	# __o_94->chunk_limit, D.14804
	movq	%rax, %rdx	# D.14804, D.14802
	movq	-32(%rbp), %rax	# __o, tmp249
	movq	24(%rax), %rax	# __o_94->next_free, D.14804
	subq	%rax, %rdx	# D.14802, D.14802
	movl	-100(%rbp), %eax	# __len, tmp250
	cltq
	cmpq	%rax, %rdx	# D.14802, D.14802
	jge	.L246	#,
	.loc 1 1246 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %edx	# __len, tmp251
	movq	-32(%rbp), %rax	# __o, tmp252
	movl	%edx, %esi	# tmp251,
	movq	%rax, %rdi	# tmp252,
	call	_obstack_newchunk	#
.L246:
	.loc 1 1246 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp253
	movq	24(%rax), %rdx	# __o_94->next_free, D.14804
	movl	-100(%rbp), %eax	# __len, tmp254
	cltq
	addq	%rax, %rdx	# D.14805, D.14804
	movq	-32(%rbp), %rax	# __o, tmp255
	movq	%rdx, 24(%rax)	# D.14804, __o_94->next_free
.LBE34:
.LBB35:
	movq	-40(%rbp), %rax	# __h, tmp256
	movq	%rax, -24(%rbp)	# tmp256, __o1
	movq	-24(%rbp), %rax	# __o1, tmp257
	movq	16(%rax), %rax	# __o1_105->object_base, tmp258
	movq	%rax, -16(%rbp)	# tmp258, value
	movq	-24(%rbp), %rax	# __o1, tmp259
	movq	24(%rax), %rax	# __o1_105->next_free, D.14804
	cmpq	-16(%rbp), %rax	# value, D.14804
	jne	.L247	#,
	.loc 1 1246 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp260
	movzbl	80(%rax), %edx	# __o1_105->maybe_empty_object, tmp263
	orl	$2, %edx	#, tmp264
	movb	%dl, 80(%rax)	# tmp264, __o1_105->maybe_empty_object
.L247:
	.loc 1 1246 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp265
	movq	24(%rax), %rax	# __o1_105->next_free, D.14804
	movq	%rax, %rdx	# D.14804, D.14802
	movq	-24(%rbp), %rax	# __o1, tmp266
	movl	48(%rax), %eax	# __o1_105->alignment_mask, D.14797
	cltq
	addq	%rax, %rdx	# D.14802, D.14802
	movq	-24(%rbp), %rax	# __o1, tmp267
	movl	48(%rax), %eax	# __o1_105->alignment_mask, D.14797
	notl	%eax	# D.14797
	cltq
	andq	%rdx, %rax	# D.14802, D.14802
	movq	%rax, %rdx	# D.14802, D.14804
	movq	-24(%rbp), %rax	# __o1, tmp268
	movq	%rdx, 24(%rax)	# D.14804, __o1_105->next_free
	movq	-24(%rbp), %rax	# __o1, tmp269
	movq	24(%rax), %rax	# __o1_105->next_free, D.14804
	movq	%rax, %rdx	# D.14804, D.14802
	movq	-24(%rbp), %rax	# __o1, tmp270
	movq	8(%rax), %rax	# __o1_105->chunk, D.14806
	movq	%rdx, %rcx	# D.14802, D.14802
	subq	%rax, %rcx	# D.14802, D.14802
	movq	-24(%rbp), %rax	# __o1, tmp271
	movq	32(%rax), %rax	# __o1_105->chunk_limit, D.14804
	movq	%rax, %rdx	# D.14804, D.14802
	movq	-24(%rbp), %rax	# __o1, tmp272
	movq	8(%rax), %rax	# __o1_105->chunk, D.14806
	subq	%rax, %rdx	# D.14802, D.14802
	movq	%rdx, %rax	# D.14802, D.14802
	cmpq	%rax, %rcx	# D.14802, D.14802
	jle	.L248	#,
	.loc 1 1246 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp273
	movq	32(%rax), %rdx	# __o1_105->chunk_limit, D.14804
	movq	-24(%rbp), %rax	# __o1, tmp274
	movq	%rdx, 24(%rax)	# D.14804, __o1_105->next_free
.L248:
	.loc 1 1246 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp275
	movq	24(%rax), %rdx	# __o1_105->next_free, D.14804
	movq	-24(%rbp), %rax	# __o1, tmp276
	movq	%rdx, 16(%rax)	# D.14804, __o1_105->object_base
	movq	-16(%rbp), %rax	# value, D.14807
.LBE35:
.LBE33:
	movq	%rax, %rdi	# D.14807,
	call	bitmap_initialize	#
	movq	-80(%rbp), %rdx	# bb, tmp277
	movq	%rax, 72(%rdx)	# D.14803, bb_41->global_live_at_end
	.loc 1 1247 0 is_stmt 1 discriminator 2
	movq	-120(%rbp), %rax	# edge_in, tmp278
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movq	64(%rax), %rdx	# _133->global_live_at_start, D.14803
	movq	-80(%rbp), %rax	# bb, tmp279
	movq	64(%rax), %rax	# bb_41->global_live_at_start, D.14803
	movq	%rdx, %rsi	# D.14803,
	movq	%rax, %rdi	# D.14803,
	call	bitmap_copy	#
	.loc 1 1249 0 discriminator 2
	movq	-120(%rbp), %rax	# edge_in, tmp280
	movq	24(%rax), %rax	# edge_in_4(D)->dest, D.14798
	movq	64(%rax), %rdx	# _136->global_live_at_start, D.14803
	movq	-80(%rbp), %rax	# bb, tmp281
	movq	72(%rax), %rax	# bb_41->global_live_at_end, D.14803
	movq	%rdx, %rsi	# D.14803,
	movq	%rax, %rdi	# D.14803,
	call	bitmap_copy	#
.L242:
	.loc 1 1253 0
	movq	-120(%rbp), %rax	# edge_in, tmp282
	movq	24(%rax), %rcx	# edge_in_4(D)->dest, D.14798
	movq	-80(%rbp), %rax	# bb, tmp283
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.14798,
	movq	%rax, %rdi	# tmp283,
	call	make_single_succ_edge	#
	movq	%rax, -8(%rbp)	# tmp284, edge_out
	.loc 1 1257 0
	movq	-120(%rbp), %rax	# edge_in, tmp285
	movl	48(%rax), %eax	# edge_in_4(D)->flags, D.14797
	andl	$1, %eax	#, D.14797
	testl	%eax, %eax	# D.14797
	jne	.L249	#,
	.loc 1 1259 0
	movq	-80(%rbp), %rdx	# bb, tmp286
	movq	-120(%rbp), %rax	# edge_in, tmp287
	movq	%rdx, %rsi	# tmp286,
	movq	%rax, %rdi	# tmp287,
	call	redirect_edge_and_branch	#
	xorl	$1, %eax	#, D.14801
	testb	%al, %al	# D.14801
	je	.L250	#,
	.loc 1 1260 0
	movl	$__FUNCTION__.12699, %edx	#,
	movl	$1260, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L249:
	.loc 1 1263 0
	movq	-80(%rbp), %rdx	# bb, tmp288
	movq	-120(%rbp), %rax	# edge_in, tmp289
	movq	%rdx, %rsi	# tmp288,
	movq	%rax, %rdi	# tmp289,
	call	redirect_edge_succ	#
.L250:
	.loc 1 1265 0
	movq	-80(%rbp), %rax	# bb, D.14808
	.loc 1 1266 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	split_edge, .-split_edge
	.globl	insert_insn_on_edge
	.type	insert_insn_on_edge, @function
insert_insn_on_edge:
.LFB27:
	.loc 1 1276 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pattern, pattern
	movq	%rsi, -16(%rbp)	# e, e
	.loc 1 1279 0
	movq	-16(%rbp), %rax	# e, tmp70
	movl	48(%rax), %eax	# e_1(D)->flags, D.14809
	andl	$2, %eax	#, D.14809
	testl	%eax, %eax	# D.14809
	je	.L253	#,
	.loc 1 1279 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp71
	movq	16(%rax), %rax	# e_1(D)->src, D.14810
	movq	40(%rax), %rax	# _4->succ, D.14811
	movq	8(%rax), %rax	# _5->succ_next, D.14811
	testq	%rax, %rax	# D.14811
	je	.L253	#,
	movq	-16(%rbp), %rax	# e, tmp72
	movq	24(%rax), %rax	# e_1(D)->dest, D.14810
	movq	32(%rax), %rax	# _7->pred, D.14811
	movq	(%rax), %rax	# _8->pred_next, D.14811
	testq	%rax, %rax	# D.14811
	je	.L253	#,
	.loc 1 1280 0 is_stmt 1
	movl	$__FUNCTION__.12722, %edx	#,
	movl	$1280, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L253:
	.loc 1 1282 0
	movq	-16(%rbp), %rax	# e, tmp73
	movq	32(%rax), %rax	# e_1(D)->insns, D.14812
	testq	%rax, %rax	# D.14812
	jne	.L254	#,
	.loc 1 1283 0
	call	start_sequence	#
	jmp	.L255	#
.L254:
	.loc 1 1285 0
	movq	-16(%rbp), %rax	# e, tmp74
	movq	32(%rax), %rax	# e_1(D)->insns, D.14812
	movq	%rax, %rdi	# D.14812,
	call	push_to_sequence	#
.L255:
	.loc 1 1287 0
	movq	-8(%rbp), %rax	# pattern, tmp75
	movq	%rax, %rdi	# tmp75,
	call	emit_insn	#
	.loc 1 1289 0
	call	get_insns	#
	movq	-16(%rbp), %rdx	# e, tmp76
	movq	%rax, 32(%rdx)	# D.14812, e_1(D)->insns
	.loc 1 1290 0
	call	end_sequence	#
	.loc 1 1291 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	insert_insn_on_edge, .-insert_insn_on_edge
	.type	commit_one_edge_insertion, @function
commit_one_edge_insertion:
.LFB28:
	.loc 1 1298 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# e, e
	.loc 1 1299 0
	movq	$0, -48(%rbp)	#, before
	movq	$0, -40(%rbp)	#, after
	.loc 1 1303 0
	movq	-56(%rbp), %rax	# e, tmp89
	movq	32(%rax), %rax	# e_14(D)->insns, tmp90
	movq	%rax, -8(%rbp)	# tmp90, insns
	.loc 1 1304 0
	movq	-56(%rbp), %rax	# e, tmp91
	movq	$0, 32(%rax)	#, e_14(D)->insns
	.loc 1 1308 0
	movq	-56(%rbp), %rax	# e, tmp92
	movq	24(%rax), %rax	# e_14(D)->dest, D.14813
	movq	32(%rax), %rax	# _16->pred, D.14814
	movq	(%rax), %rax	# _17->pred_next, D.14814
	testq	%rax, %rax	# D.14814
	jne	.L257	#,
	.loc 1 1309 0
	movq	-56(%rbp), %rax	# e, tmp93
	movq	24(%rax), %rax	# e_14(D)->dest, D.14813
	cmpq	$entry_exit_blocks+112, %rax	#, D.14813
	je	.L257	#,
	.loc 1 1311 0
	movq	-56(%rbp), %rax	# e, tmp94
	movq	24(%rax), %rax	# e_14(D)->dest, tmp95
	movq	%rax, -16(%rbp)	# tmp95, bb
	.loc 1 1315 0
	movq	-16(%rbp), %rax	# bb, tmp96
	movq	(%rax), %rax	# bb_20->head, tmp97
	movq	%rax, -32(%rbp)	# tmp97, tmp
	.loc 1 1316 0
	movq	-32(%rbp), %rax	# tmp, tmp98
	movzwl	(%rax), %eax	# tmp_21->code, D.14815
	cmpw	$36, %ax	#, D.14815
	jne	.L258	#,
	.loc 1 1317 0
	movq	-32(%rbp), %rax	# tmp, tmp99
	movq	24(%rax), %rax	# tmp_21->fld[2].rtx, tmp100
	movq	%rax, -32(%rbp)	# tmp100, tmp
.L258:
	.loc 1 1318 0
	movq	-32(%rbp), %rax	# tmp, tmp101
	movzwl	(%rax), %eax	# tmp_8->code, D.14815
	cmpw	$37, %ax	#, D.14815
	jne	.L259	#,
	.loc 1 1318 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmp, tmp102
	movl	40(%rax), %eax	# tmp_8->fld[4].rtint, D.14816
	cmpl	$-80, %eax	#, D.14816
	jne	.L259	#,
	.loc 1 1319 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmp, tmp103
	movq	24(%rax), %rax	# tmp_8->fld[2].rtx, tmp104
	movq	%rax, -32(%rbp)	# tmp104, tmp
.L259:
	.loc 1 1320 0
	movq	-16(%rbp), %rax	# bb, tmp105
	movq	(%rax), %rax	# bb_20->head, D.14817
	cmpq	-32(%rbp), %rax	# tmp, D.14817
	jne	.L260	#,
	.loc 1 1321 0
	movq	-32(%rbp), %rax	# tmp, tmp106
	movq	%rax, -48(%rbp)	# tmp106, before
	.loc 1 1320 0
	jmp	.L262	#
.L260:
	.loc 1 1323 0
	movq	-32(%rbp), %rax	# tmp, tmp107
	movq	16(%rax), %rax	# tmp_9->fld[1].rtx, tmp108
	movq	%rax, -40(%rbp)	# tmp108, after
	.loc 1 1320 0
	jmp	.L262	#
.L257:
	.loc 1 1328 0
	movq	-56(%rbp), %rax	# e, tmp109
	movl	48(%rax), %eax	# e_14(D)->flags, D.14816
	andl	$2, %eax	#, D.14816
	testl	%eax, %eax	# D.14816
	jne	.L263	#,
	.loc 1 1329 0
	movq	-56(%rbp), %rax	# e, tmp110
	movq	16(%rax), %rax	# e_14(D)->src, D.14813
	movq	40(%rax), %rax	# _32->succ, D.14814
	movq	8(%rax), %rax	# _33->succ_next, D.14814
	testq	%rax, %rax	# D.14814
	jne	.L263	#,
	.loc 1 1330 0
	movq	-56(%rbp), %rax	# e, tmp111
	movq	16(%rax), %rax	# e_14(D)->src, D.14813
	cmpq	$entry_exit_blocks, %rax	#, D.14813
	je	.L263	#,
	.loc 1 1332 0
	movq	-56(%rbp), %rax	# e, tmp112
	movq	16(%rax), %rax	# e_14(D)->src, tmp113
	movq	%rax, -16(%rbp)	# tmp113, bb
	.loc 1 1340 0
	movq	-16(%rbp), %rax	# bb, tmp114
	movq	8(%rax), %rax	# bb_36->end, D.14817
	movzwl	(%rax), %eax	# _37->code, D.14815
	cmpw	$33, %ax	#, D.14815
	jne	.L264	#,
	.loc 1 1341 0
	movq	-16(%rbp), %rax	# bb, tmp115
	movq	8(%rax), %rax	# bb_36->end, tmp116
	movq	%rax, -48(%rbp)	# tmp116, before
	jmp	.L265	#
.L267:
	.loc 1 1344 0
	movq	-48(%rbp), %rax	# before, tmp117
	movq	16(%rax), %rax	# before_2->fld[1].rtx, tmp118
	movq	%rax, -48(%rbp)	# tmp118, before
.L265:
	.loc 1 1342 0 discriminator 1
	movq	-48(%rbp), %rax	# before, tmp119
	movq	16(%rax), %rax	# before_2->fld[1].rtx, D.14817
	movzwl	(%rax), %eax	# _40->code, D.14815
	.loc 1 1341 0 discriminator 1
	cmpw	$37, %ax	#, D.14815
	jne	.L266	#,
	.loc 1 1343 0
	movq	-48(%rbp), %rax	# before, tmp120
	movq	16(%rax), %rax	# before_2->fld[1].rtx, D.14817
	movl	40(%rax), %eax	# _42->fld[4].rtint, D.14816
	cmpl	$-96, %eax	#, D.14816
	je	.L267	#,
	.loc 1 1340 0
	jmp	.L262	#
.L264:
	.loc 1 1349 0
	movq	-56(%rbp), %rax	# e, tmp121
	movl	48(%rax), %eax	# e_14(D)->flags, D.14816
	andl	$1, %eax	#, D.14816
	testl	%eax, %eax	# D.14816
	jne	.L268	#,
	.loc 1 1350 0
	movl	$__FUNCTION__.12735, %edx	#,
	movl	$1350, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L268:
	.loc 1 1352 0
	movq	-16(%rbp), %rax	# bb, tmp122
	movq	8(%rax), %rax	# bb_36->end, tmp123
	movq	%rax, -40(%rbp)	# tmp123, after
	.loc 1 1340 0
	jmp	.L262	#
.L266:
	jmp	.L262	#
.L263:
	.loc 1 1359 0
	movq	-56(%rbp), %rax	# e, tmp124
	movq	%rax, %rdi	# tmp124,
	call	split_edge	#
	movq	%rax, -16(%rbp)	# tmp125, bb
	.loc 1 1360 0
	movq	-16(%rbp), %rax	# bb, tmp126
	movq	8(%rax), %rax	# bb_48->end, tmp127
	movq	%rax, -40(%rbp)	# tmp127, after
.L262:
	.loc 1 1365 0
	cmpq	$0, -48(%rbp)	#, before
	je	.L269	#,
	.loc 1 1367 0
	movq	-48(%rbp), %rdx	# before, tmp128
	movq	-8(%rbp), %rax	# insns, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	emit_insns_before	#
	.loc 1 1368 0
	movq	-48(%rbp), %rax	# before, tmp130
	movq	%rax, %rdi	# tmp130,
	call	prev_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp131, last
	jmp	.L270	#
.L269:
	.loc 1 1371 0
	movq	-40(%rbp), %rdx	# after, tmp132
	movq	-8(%rbp), %rax	# insns, tmp133
	movq	%rdx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	emit_insns_after	#
	movq	%rax, -24(%rbp)	# tmp134, last
.L270:
	.loc 1 1373 0
	movq	-24(%rbp), %rax	# last, tmp135
	movq	%rax, %rdi	# tmp135,
	call	returnjump_p	#
	testl	%eax, %eax	# D.14816
	je	.L271	#,
	.loc 1 1380 0
	movq	-16(%rbp), %rax	# bb, tmp136
	movq	40(%rax), %rax	# bb_11->succ, tmp137
	movq	%rax, -56(%rbp)	# tmp137, e
	.loc 1 1381 0
	movq	-56(%rbp), %rax	# e, tmp138
	movq	24(%rax), %rax	# e_53->dest, D.14813
	cmpq	$entry_exit_blocks+112, %rax	#, D.14813
	jne	.L272	#,
	.loc 1 1382 0
	movq	-56(%rbp), %rax	# e, tmp139
	movq	8(%rax), %rax	# e_53->succ_next, D.14814
	testq	%rax, %rax	# D.14814
	jne	.L272	#,
	.loc 1 1383 0
	movq	-56(%rbp), %rax	# e, tmp140
	movl	48(%rax), %eax	# e_53->flags, D.14816
	andl	$1, %eax	#, D.14816
	testl	%eax, %eax	# D.14816
	jne	.L273	#,
.L272:
	.loc 1 1384 0
	movl	$__FUNCTION__.12735, %edx	#,
	movl	$1384, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L273:
	.loc 1 1386 0
	movq	-56(%rbp), %rax	# e, tmp141
	movl	48(%rax), %eax	# e_53->flags, D.14816
	andl	$-2, %eax	#, D.14816
	movl	%eax, %edx	# D.14816, D.14816
	movq	-56(%rbp), %rax	# e, tmp142
	movl	%edx, 48(%rax)	# D.14816, e_53->flags
	.loc 1 1387 0
	movq	-24(%rbp), %rax	# last, tmp143
	movq	%rax, %rdi	# tmp143,
	call	emit_barrier_after	#
	.loc 1 1389 0
	cmpq	$0, -48(%rbp)	#, before
	je	.L275	#,
	.loc 1 1390 0
	movq	-48(%rbp), %rax	# before, tmp144
	movq	%rax, %rdi	# tmp144,
	call	delete_insn	#
	jmp	.L275	#
.L271:
	.loc 1 1392 0
	movq	-24(%rbp), %rax	# last, tmp145
	movzwl	(%rax), %eax	# last_10->code, D.14815
	cmpw	$33, %ax	#, D.14815
	jne	.L275	#,
	.loc 1 1393 0
	movl	$__FUNCTION__.12735, %edx	#,
	movl	$1393, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L275:
	.loc 1 1395 0
	movq	-16(%rbp), %rax	# bb, tmp146
	movq	%rax, %rdi	# tmp146,
	call	find_sub_basic_blocks	#
	.loc 1 1396 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	commit_one_edge_insertion, .-commit_one_edge_insertion
	.globl	commit_edge_insertions
	.type	commit_edge_insertions, @function
commit_edge_insertions:
.LFB29:
	.loc 1 1402 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1410 0
	movl	$-1, -28(%rbp)	#, i
	.loc 1 1411 0
	movq	$entry_exit_blocks, -24(%rbp)	#, bb
.L282:
.LBB36:
	.loc 1 1416 0
	movq	-24(%rbp), %rax	# bb, tmp62
	movq	40(%rax), %rax	# bb_2->succ, tmp63
	movq	%rax, -16(%rbp)	# tmp63, e
	jmp	.L277	#
.L279:
	.loc 1 1418 0
	movq	-16(%rbp), %rax	# e, tmp64
	movq	8(%rax), %rax	# e_3->succ_next, tmp65
	movq	%rax, -8(%rbp)	# tmp65, next
	.loc 1 1419 0
	movq	-16(%rbp), %rax	# e, tmp66
	movq	32(%rax), %rax	# e_3->insns, D.14818
	testq	%rax, %rax	# D.14818
	je	.L278	#,
	.loc 1 1420 0
	movq	-16(%rbp), %rax	# e, tmp67
	movq	%rax, %rdi	# tmp67,
	call	commit_one_edge_insertion	#
.L278:
	.loc 1 1416 0
	movq	-8(%rbp), %rax	# next, tmp68
	movq	%rax, -16(%rbp)	# tmp68, e
.L277:
	.loc 1 1416 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L279	#,
	.loc 1 1423 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.50
	cmpl	%eax, -28(%rbp)	# n_basic_blocks.50, i
	jl	.L280	#,
	.loc 1 1424 0
	jmp	.L283	#
.L280:
	.loc 1 1425 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.51
	movl	-28(%rbp), %edx	# i, tmp70
	movslq	%edx, %rdx	# tmp70, tmp69
	addq	$4, %rdx	#, tmp71
	movq	(%rax,%rdx,8), %rax	# basic_block_info.51_12->data.bb, tmp72
	movq	%rax, -24(%rbp)	# tmp72, bb
.LBE36:
	.loc 1 1426 0
	jmp	.L282	#
.L283:
	.loc 1 1427 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	commit_edge_insertions, .-commit_edge_insertions
	.section	.rodata
	.align 8
.LC6:
	.string	";; Basic block %d, loop depth %d, count "
.LC7:
	.string	"%ld"
.LC8:
	.string	";; Predecessors: "
.LC9:
	.string	";; Registers live at start:"
.LC10:
	.string	";; Registers live at end:"
.LC11:
	.string	";; Successors: "
	.text
	.globl	dump_bb
	.type	dump_bb, @function
dump_bb:
.LFB30:
	.loc 1 1435 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# bb, bb
	movq	%rsi, -48(%rbp)	# outf, outf
	.loc 1 1440 0
	movq	-40(%rbp), %rax	# bb, tmp65
	movl	92(%rax), %ecx	# bb_4(D)->loop_depth, D.14819
	movq	-40(%rbp), %rax	# bb, tmp66
	movl	88(%rax), %edx	# bb_4(D)->index, D.14819
	movq	-48(%rbp), %rax	# outf, tmp67
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp67,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1442 0
	movq	-40(%rbp), %rax	# bb, tmp68
	movq	96(%rax), %rdx	# bb_4(D)->count, D.14820
	movq	-48(%rbp), %rax	# outf, tmp69
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp69,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1443 0
	movq	-48(%rbp), %rax	# outf, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$10, %edi	#,
	call	_IO_putc	#
	.loc 1 1445 0
	movq	-48(%rbp), %rax	# outf, tmp71
	movq	%rax, %rcx	# tmp71,
	movl	$17, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	.loc 1 1446 0
	movq	-40(%rbp), %rax	# bb, tmp72
	movq	32(%rax), %rax	# bb_4(D)->pred, tmp73
	movq	%rax, -16(%rbp)	# tmp73, e
	jmp	.L285	#
.L286:
	.loc 1 1447 0 discriminator 2
	movq	-16(%rbp), %rcx	# e, tmp74
	movq	-48(%rbp), %rax	# outf, tmp75
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	dump_edge_info	#
	.loc 1 1446 0 discriminator 2
	movq	-16(%rbp), %rax	# e, tmp76
	movq	(%rax), %rax	# e_2->pred_next, tmp77
	movq	%rax, -16(%rbp)	# tmp77, e
.L285:
	.loc 1 1446 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L286	#,
	.loc 1 1448 0 is_stmt 1
	movq	-48(%rbp), %rax	# outf, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	$10, %edi	#,
	call	_IO_putc	#
	.loc 1 1450 0
	movq	-48(%rbp), %rax	# outf, tmp79
	movq	%rax, %rcx	# tmp79,
	movl	$27, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
	.loc 1 1451 0
	movq	-40(%rbp), %rax	# bb, tmp80
	movq	64(%rax), %rax	# bb_4(D)->global_live_at_start, D.14821
	movq	-48(%rbp), %rdx	# outf, tmp81
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# D.14821,
	call	dump_regset	#
	.loc 1 1452 0
	movq	-48(%rbp), %rax	# outf, tmp82
	movq	%rax, %rsi	# tmp82,
	movl	$10, %edi	#,
	call	_IO_putc	#
	.loc 1 1454 0
	movq	-40(%rbp), %rax	# bb, tmp83
	movq	(%rax), %rax	# bb_4(D)->head, tmp84
	movq	%rax, -24(%rbp)	# tmp84, insn
	movq	-40(%rbp), %rax	# bb, tmp85
	movq	8(%rax), %rax	# bb_4(D)->end, D.14822
	movq	24(%rax), %rax	# _13->fld[2].rtx, tmp86
	movq	%rax, -8(%rbp)	# tmp86, last
	jmp	.L287	#
.L288:
	.loc 1 1456 0
	movq	-24(%rbp), %rdx	# insn, tmp87
	movq	-48(%rbp), %rax	# outf, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	print_rtl_single	#
	.loc 1 1455 0
	movq	-24(%rbp), %rax	# insn, tmp89
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp90
	movq	%rax, -24(%rbp)	# tmp90, insn
.L287:
	.loc 1 1454 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp91
	cmpq	-8(%rbp), %rax	# last, tmp91
	jne	.L288	#,
	.loc 1 1458 0
	movq	-48(%rbp), %rax	# outf, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$25, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
	.loc 1 1459 0
	movq	-40(%rbp), %rax	# bb, tmp93
	movq	72(%rax), %rax	# bb_4(D)->global_live_at_end, D.14821
	movq	-48(%rbp), %rdx	# outf, tmp94
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# D.14821,
	call	dump_regset	#
	.loc 1 1460 0
	movq	-48(%rbp), %rax	# outf, tmp95
	movq	%rax, %rsi	# tmp95,
	movl	$10, %edi	#,
	call	_IO_putc	#
	.loc 1 1462 0
	movq	-48(%rbp), %rax	# outf, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 1463 0
	movq	-40(%rbp), %rax	# bb, tmp97
	movq	40(%rax), %rax	# bb_4(D)->succ, tmp98
	movq	%rax, -16(%rbp)	# tmp98, e
	jmp	.L289	#
.L290:
	.loc 1 1464 0 discriminator 2
	movq	-16(%rbp), %rcx	# e, tmp99
	movq	-48(%rbp), %rax	# outf, tmp100
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	dump_edge_info	#
	.loc 1 1463 0 discriminator 2
	movq	-16(%rbp), %rax	# e, tmp101
	movq	8(%rax), %rax	# e_3->succ_next, tmp102
	movq	%rax, -16(%rbp)	# tmp102, e
.L289:
	.loc 1 1463 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L290	#,
	.loc 1 1465 0 is_stmt 1
	movq	-48(%rbp), %rax	# outf, tmp103
	movq	%rax, %rsi	# tmp103,
	movl	$10, %edi	#,
	call	_IO_putc	#
	.loc 1 1466 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	dump_bb, .-dump_bb
	.globl	debug_bb
	.type	debug_bb, @function
debug_bb:
.LFB31:
	.loc 1 1471 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# bb, bb
	.loc 1 1472 0
	movq	stderr(%rip), %rdx	# stderr, stderr.52
	movq	-8(%rbp), %rax	# bb, tmp60
	movq	%rdx, %rsi	# stderr.52,
	movq	%rax, %rdi	# tmp60,
	call	dump_bb	#
	.loc 1 1473 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	debug_bb, .-debug_bb
	.globl	debug_bb_n
	.type	debug_bb_n, @function
debug_bb_n:
.LFB32:
	.loc 1 1478 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# n, n
	.loc 1 1479 0
	movq	stderr(%rip), %rdx	# stderr, stderr.53
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.54
	movl	-4(%rbp), %ecx	# n, tmp63
	movslq	%ecx, %rcx	# tmp63, tmp62
	addq	$4, %rcx	#, tmp64
	movq	(%rax,%rcx,8), %rax	# basic_block_info.54_2->data.bb, D.14829
	movq	%rdx, %rsi	# stderr.53,
	movq	%rax, %rdi	# D.14829,
	call	dump_bb	#
	.loc 1 1480 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	debug_bb_n, .-debug_bb_n
	.section	.rodata
.LC12:
	.string	"(nil)\n"
	.align 8
.LC13:
	.string	";; Start of basic block %d, registers live:"
	.align 8
.LC14:
	.string	";; Insn is not within a basic block\n"
	.align 8
.LC15:
	.string	";; Insn is in multiple basic blocks\n"
	.align 8
.LC16:
	.string	";; End of basic block %d, registers live:\n"
	.align 8
.LC17:
	.string	"\n;; Insns in epilogue delay list:\n\n"
	.text
	.globl	print_rtl_with_bb
	.type	print_rtl_with_bb, @function
print_rtl_with_bb:
.LFB33:
	.loc 1 1489 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# outf, outf
	movq	%rsi, -96(%rbp)	# rtx_first, rtx_first
	.loc 1 1492 0
	cmpq	$0, -96(%rbp)	#, rtx_first
	jne	.L294	#,
	.loc 1 1493 0
	movq	-88(%rbp), %rax	# outf, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	fwrite	#
	jmp	.L295	#
.L294:
.LBB37:
	.loc 1 1498 0
	call	get_max_uid	#
	movl	%eax, -64(%rbp)	# tmp113, max_uid
	.loc 1 1500 0
	movl	-64(%rbp), %eax	# max_uid, tmp114
	cltq
	.loc 1 1499 0
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14830,
	call	xcalloc	#
	movq	%rax, -40(%rbp)	# tmp115, start
	.loc 1 1502 0
	movl	-64(%rbp), %eax	# max_uid, tmp116
	cltq
	.loc 1 1501 0
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14830,
	call	xcalloc	#
	movq	%rax, -32(%rbp)	# tmp117, end
	.loc 1 1504 0
	movl	-64(%rbp), %eax	# max_uid, tmp118
	cltq
	.loc 1 1503 0
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.14830,
	call	xcalloc	#
	movq	%rax, -24(%rbp)	# tmp119, in_bb_p
	.loc 1 1506 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.55
	subl	$1, %eax	#, tmp120
	movl	%eax, -72(%rbp)	# tmp120, i
	jmp	.L296	#
.L302:
.LBB38:
	.loc 1 1508 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.56
	movl	-72(%rbp), %edx	# i, tmp122
	movslq	%edx, %rdx	# tmp122, tmp121
	addq	$4, %rdx	#, tmp123
	movq	(%rax,%rdx,8), %rax	# basic_block_info.56_17->data.bb, tmp124
	movq	%rax, -16(%rbp)	# tmp124, bb
	.loc 1 1511 0
	movq	-16(%rbp), %rax	# bb, tmp125
	movq	(%rax), %rax	# bb_18->head, D.14831
	movl	8(%rax), %eax	# _19->fld[0].rtint, D.14832
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14830
	movq	-40(%rbp), %rax	# start, tmp126
	addq	%rax, %rdx	# tmp126, D.14833
	movq	-16(%rbp), %rax	# bb, tmp127
	movq	%rax, (%rdx)	# tmp127, *_23
	.loc 1 1512 0
	movq	-16(%rbp), %rax	# bb, tmp128
	movq	8(%rax), %rax	# bb_18->end, D.14831
	movl	8(%rax), %eax	# _24->fld[0].rtint, D.14832
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14830
	movq	-32(%rbp), %rax	# end, tmp129
	addq	%rax, %rdx	# tmp129, D.14833
	movq	-16(%rbp), %rax	# bb, tmp130
	movq	%rax, (%rdx)	# tmp130, *_28
	.loc 1 1513 0
	movq	-16(%rbp), %rax	# bb, tmp131
	movq	(%rax), %rax	# bb_18->head, tmp132
	movq	%rax, -48(%rbp)	# tmp132, x
	jmp	.L297	#
.L301:
.LBB39:
	.loc 1 1515 0
	movl	$2, -68(%rbp)	#, state
	.loc 1 1517 0
	movq	-48(%rbp), %rax	# x, tmp133
	movl	8(%rax), %eax	# x_4->fld[0].rtint, D.14832
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14830
	movq	-24(%rbp), %rax	# in_bb_p, tmp134
	addq	%rdx, %rax	# D.14830, D.14834
	movl	(%rax), %eax	# *_34, D.14835
	testl	%eax, %eax	# D.14835
	jne	.L298	#,
	.loc 1 1518 0
	movl	$1, -68(%rbp)	#, state
.L298:
	.loc 1 1519 0
	movq	-48(%rbp), %rax	# x, tmp135
	movl	8(%rax), %eax	# x_4->fld[0].rtint, D.14832
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14830
	movq	-24(%rbp), %rax	# in_bb_p, tmp136
	addq	%rax, %rdx	# tmp136, D.14834
	movl	-68(%rbp), %eax	# state, tmp137
	movl	%eax, (%rdx)	# tmp137, *_40
	.loc 1 1521 0
	movq	-16(%rbp), %rax	# bb, tmp138
	movq	8(%rax), %rax	# bb_18->end, D.14831
	cmpq	-48(%rbp), %rax	# x, D.14831
	jne	.L299	#,
	.loc 1 1522 0
	jmp	.L300	#
.L299:
.LBE39:
	.loc 1 1513 0
	movq	-48(%rbp), %rax	# x, tmp139
	movq	24(%rax), %rax	# x_4->fld[2].rtx, tmp140
	movq	%rax, -48(%rbp)	# tmp140, x
.L297:
	.loc 1 1513 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, x
	jne	.L301	#,
.L300:
.LBE38:
	.loc 1 1506 0 is_stmt 1
	subl	$1, -72(%rbp)	#, i
.L296:
	.loc 1 1506 0 is_stmt 0 discriminator 1
	cmpl	$0, -72(%rbp)	#, i
	jns	.L302	#,
	.loc 1 1526 0 is_stmt 1
	movq	-96(%rbp), %rax	# rtx_first, tmp141
	movq	%rax, -56(%rbp)	# tmp141, tmp_rtx
	jmp	.L303	#
.L309:
.LBB40:
	.loc 1 1531 0
	movq	-56(%rbp), %rax	# tmp_rtx, tmp142
	movl	8(%rax), %eax	# tmp_rtx_1->fld[0].rtint, D.14832
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14830
	movq	-40(%rbp), %rax	# start, tmp143
	addq	%rdx, %rax	# D.14830, D.14833
	movq	(%rax), %rax	# *_48, tmp144
	movq	%rax, -8(%rbp)	# tmp144, bb
	cmpq	$0, -8(%rbp)	#, bb
	je	.L304	#,
	.loc 1 1533 0
	movq	-8(%rbp), %rax	# bb, tmp145
	movl	88(%rax), %edx	# bb_49->index, D.14832
	movq	-88(%rbp), %rax	# outf, tmp146
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp146,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1535 0
	movq	-8(%rbp), %rax	# bb, tmp147
	movq	64(%rax), %rax	# bb_49->global_live_at_start, D.14836
	movq	-88(%rbp), %rdx	# outf, tmp148
	movq	%rdx, %rsi	# tmp148,
	movq	%rax, %rdi	# D.14836,
	call	dump_regset	#
	.loc 1 1536 0
	movq	-88(%rbp), %rax	# outf, tmp149
	movq	%rax, %rsi	# tmp149,
	movl	$10, %edi	#,
	call	_IO_putc	#
.L304:
	.loc 1 1539 0
	movq	-56(%rbp), %rax	# tmp_rtx, tmp150
	movl	8(%rax), %eax	# tmp_rtx_1->fld[0].rtint, D.14832
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14830
	movq	-24(%rbp), %rax	# in_bb_p, tmp151
	addq	%rdx, %rax	# D.14830, D.14834
	movl	(%rax), %eax	# *_55, D.14835
	testl	%eax, %eax	# D.14835
	jne	.L305	#,
	.loc 1 1540 0
	movq	-56(%rbp), %rax	# tmp_rtx, tmp152
	movzwl	(%rax), %eax	# tmp_rtx_1->code, D.14837
	cmpw	$37, %ax	#, D.14837
	je	.L305	#,
	.loc 1 1541 0
	movq	-56(%rbp), %rax	# tmp_rtx, tmp153
	movzwl	(%rax), %eax	# tmp_rtx_1->code, D.14837
	cmpw	$35, %ax	#, D.14837
	je	.L305	#,
	.loc 1 1542 0
	movq	-88(%rbp), %rax	# outf, tmp154
	movq	%rax, %rcx	# tmp154,
	movl	$36, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	jmp	.L306	#
.L305:
	.loc 1 1543 0
	movq	-56(%rbp), %rax	# tmp_rtx, tmp155
	movl	8(%rax), %eax	# tmp_rtx_1->fld[0].rtint, D.14832
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14830
	movq	-24(%rbp), %rax	# in_bb_p, tmp156
	addq	%rdx, %rax	# D.14830, D.14834
	movl	(%rax), %eax	# *_62, D.14835
	cmpl	$2, %eax	#, D.14835
	jne	.L306	#,
	.loc 1 1544 0
	movq	-88(%rbp), %rax	# outf, tmp157
	movq	%rax, %rcx	# tmp157,
	movl	$36, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
.L306:
	.loc 1 1546 0
	movq	-56(%rbp), %rdx	# tmp_rtx, tmp158
	movq	-88(%rbp), %rax	# outf, tmp159
	movq	%rdx, %rsi	# tmp158,
	movq	%rax, %rdi	# tmp159,
	call	print_rtl_single	#
	movl	%eax, -60(%rbp)	# tmp160, did_output
	.loc 1 1548 0
	movq	-56(%rbp), %rax	# tmp_rtx, tmp161
	movl	8(%rax), %eax	# tmp_rtx_1->fld[0].rtint, D.14832
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14830
	movq	-32(%rbp), %rax	# end, tmp162
	addq	%rdx, %rax	# D.14830, D.14833
	movq	(%rax), %rax	# *_68, tmp163
	movq	%rax, -8(%rbp)	# tmp163, bb
	cmpq	$0, -8(%rbp)	#, bb
	je	.L307	#,
	.loc 1 1550 0
	movq	-8(%rbp), %rax	# bb, tmp164
	movl	88(%rax), %edx	# bb_69->index, D.14832
	movq	-88(%rbp), %rax	# outf, tmp165
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp165,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1552 0
	movq	-8(%rbp), %rax	# bb, tmp166
	movq	72(%rax), %rax	# bb_69->global_live_at_end, D.14836
	movq	-88(%rbp), %rdx	# outf, tmp167
	movq	%rdx, %rsi	# tmp167,
	movq	%rax, %rdi	# D.14836,
	call	dump_regset	#
	.loc 1 1553 0
	movq	-88(%rbp), %rax	# outf, tmp168
	movq	%rax, %rsi	# tmp168,
	movl	$10, %edi	#,
	call	_IO_putc	#
.L307:
	.loc 1 1556 0
	cmpl	$0, -60(%rbp)	#, did_output
	je	.L308	#,
	.loc 1 1557 0
	movq	-88(%rbp), %rax	# outf, tmp169
	movq	%rax, %rsi	# tmp169,
	movl	$10, %edi	#,
	call	_IO_putc	#
.L308:
.LBE40:
	.loc 1 1526 0
	movq	-56(%rbp), %rax	# tmp_rtx, tmp170
	movq	24(%rax), %rax	# tmp_rtx_1->fld[2].rtx, tmp171
	movq	%rax, -56(%rbp)	# tmp171, tmp_rtx
.L303:
	.loc 1 1526 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, tmp_rtx
	jne	.L309	#,
	.loc 1 1560 0 is_stmt 1
	movq	-40(%rbp), %rax	# start, tmp172
	movq	%rax, %rdi	# tmp172,
	call	free	#
	.loc 1 1561 0
	movq	-32(%rbp), %rax	# end, tmp173
	movq	%rax, %rdi	# tmp173,
	call	free	#
	.loc 1 1562 0
	movq	-24(%rbp), %rax	# in_bb_p, tmp174
	movq	%rax, %rdi	# tmp174,
	call	free	#
.L295:
.LBE37:
	.loc 1 1565 0
	movq	cfun(%rip), %rax	# cfun, cfun.57
	movq	416(%rax), %rax	# cfun.57_73->epilogue_delay_list, D.14831
	testq	%rax, %rax	# D.14831
	je	.L293	#,
	.loc 1 1567 0
	movq	-88(%rbp), %rax	# outf, tmp175
	movq	%rax, %rcx	# tmp175,
	movl	$35, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC17, %edi	#,
	call	fwrite	#
	.loc 1 1568 0
	movq	cfun(%rip), %rax	# cfun, cfun.58
	movq	416(%rax), %rax	# cfun.58_75->epilogue_delay_list, tmp176
	movq	%rax, -56(%rbp)	# tmp176, tmp_rtx
	jmp	.L311	#
.L312:
	.loc 1 1570 0
	movq	-56(%rbp), %rax	# tmp_rtx, tmp177
	movq	8(%rax), %rdx	# tmp_rtx_2->fld[0].rtx, D.14831
	movq	-88(%rbp), %rax	# outf, tmp178
	movq	%rdx, %rsi	# D.14831,
	movq	%rax, %rdi	# tmp178,
	call	print_rtl_single	#
	.loc 1 1569 0
	movq	-56(%rbp), %rax	# tmp_rtx, tmp179
	movq	16(%rax), %rax	# tmp_rtx_2->fld[1].rtx, tmp180
	movq	%rax, -56(%rbp)	# tmp180, tmp_rtx
.L311:
	.loc 1 1568 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, tmp_rtx
	jne	.L312	#,
.L293:
	.loc 1 1572 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	print_rtl_with_bb, .-print_rtl_with_bb
	.globl	update_br_prob_note
	.type	update_br_prob_note, @function
update_br_prob_note:
.LFB34:
	.loc 1 1577 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# bb, bb
	.loc 1 1579 0
	movq	-24(%rbp), %rax	# bb, tmp79
	movq	8(%rax), %rax	# bb_3(D)->end, D.14844
	movzwl	(%rax), %eax	# _4->code, D.14845
	cmpw	$33, %ax	#, D.14845
	je	.L314	#,
	.loc 1 1580 0
	jmp	.L313	#
.L314:
	.loc 1 1581 0
	movq	-24(%rbp), %rax	# bb, tmp80
	movq	8(%rax), %rax	# bb_3(D)->end, D.14844
	movl	$0, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.14844,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp81, note
	.loc 1 1582 0
	cmpq	$0, -8(%rbp)	#, note
	je	.L316	#,
	.loc 1 1582 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# note, tmp82
	movq	8(%rax), %rax	# note_7->fld[0].rtx, D.14844
	movq	8(%rax), %rdx	# _8->fld[0].rtwint, D.14846
	movq	-24(%rbp), %rax	# bb, tmp83
	movq	40(%rax), %rax	# bb_3(D)->succ, D.14847
	movl	48(%rax), %eax	# _10->flags, D.14848
	andl	$1, %eax	#, D.14848
	testl	%eax, %eax	# D.14848
	je	.L317	#,
	movq	-24(%rbp), %rax	# bb, tmp84
	movq	40(%rax), %rax	# bb_3(D)->succ, D.14847
	movq	8(%rax), %rax	# _13->succ_next, iftmp.59
	jmp	.L318	#
.L317:
	.loc 1 1582 0 discriminator 2
	movq	-24(%rbp), %rax	# bb, tmp85
	movq	40(%rax), %rax	# bb_3(D)->succ, iftmp.59
.L318:
	.loc 1 1582 0 discriminator 3
	movl	52(%rax), %eax	# iftmp.59_1->probability, D.14848
	cltq
	cmpq	%rax, %rdx	# D.14846, D.14846
	jne	.L319	#,
.L316:
	.loc 1 1583 0 is_stmt 1
	jmp	.L313	#
.L319:
	.loc 1 1584 0
	movq	-24(%rbp), %rax	# bb, tmp86
	movq	40(%rax), %rax	# bb_3(D)->succ, D.14847
	movl	48(%rax), %eax	# _18->flags, D.14848
	andl	$1, %eax	#, D.14848
	testl	%eax, %eax	# D.14848
	je	.L320	#,
	.loc 1 1584 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bb, tmp87
	movq	40(%rax), %rax	# bb_3(D)->succ, D.14847
	movq	8(%rax), %rax	# _21->succ_next, iftmp.60
	jmp	.L321	#
.L320:
	.loc 1 1584 0 discriminator 2
	movq	-24(%rbp), %rax	# bb, tmp88
	movq	40(%rax), %rax	# bb_3(D)->succ, iftmp.60
.L321:
	.loc 1 1584 0 discriminator 3
	movl	52(%rax), %eax	# iftmp.60_2->probability, D.14848
	cltq
	movq	%rax, %rsi	# D.14846,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	-8(%rbp), %rdx	# note, tmp89
	movq	%rax, 8(%rdx)	# D.14844, note_7->fld[0].rtx
.L313:
	.loc 1 1585 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	update_br_prob_note, .-update_br_prob_note
	.section	.rodata
	.align 8
.LC18:
	.string	"end insn %d for block %d not found in the insn stream"
	.align 8
.LC19:
	.string	"insn %d is in multiple basic blocks (%d and %d)"
	.align 8
.LC20:
	.string	"head insn %d for block %d not found in the insn stream"
	.align 8
.LC21:
	.string	"verify_flow_info: Duplicate edge %i->%i"
	.align 8
.LC22:
	.string	"verify_flow_info: Incorrect blocks for fallthru %i->%i"
	.align 8
.LC23:
	.string	"verify_flow_info: Incorrect fallthru %i->%i"
	.align 8
.LC24:
	.string	"wrong insn in the fallthru edge"
	.align 8
.LC25:
	.string	"verify_flow_info: Basic block %d succ edge is corrupted"
.LC26:
	.string	"Predecessor: "
.LC27:
	.string	"\nSuccessor: "
	.align 8
.LC28:
	.string	"missing barrier after block %i"
	.align 8
.LC29:
	.string	"basic block %d pred edge is corrupted"
	.align 8
.LC30:
	.string	"insn %d inside basic block %d but block_for_insn is NULL"
	.align 8
.LC31:
	.string	"insn %d inside basic block %d but block_for_insn is %i"
	.align 8
.LC32:
	.string	"NOTE_INSN_BASIC_BLOCK is missing for block %d"
	.align 8
.LC33:
	.string	"NOTE_INSN_BASIC_BLOCK %d in middle of basic block %d"
.LC34:
	.string	"in basic block %d:"
	.align 8
.LC35:
	.string	"flow control insn inside a basic block"
	.align 8
.LC36:
	.string	"basic block %i edge lists are corrupted"
	.align 8
.LC37:
	.string	"basic blocks not numbered consecutively"
.LC38:
	.string	"insn outside basic block"
	.align 8
.LC39:
	.string	"return not followed by barrier"
	.align 8
.LC40:
	.string	"number of bb notes in insn chain (%d) != n_basic_blocks (%d)"
.LC41:
	.string	"verify_flow_info failed"
	.text
	.globl	verify_flow_info
	.type	verify_flow_info, @function
verify_flow_info:
.LFB35:
	.loc 1 1609 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	.loc 1 1610 0
	call	get_max_uid	#
	movl	%eax, -124(%rbp)	# tmp284, max_uid
	.loc 1 1611 0
	call	get_insns	#
	movq	%rax, -72(%rbp)	# tmp285, rtx_first
	.loc 1 1612 0
	call	get_last_insn	#
	movq	%rax, -120(%rbp)	# tmp286, last_head
	.loc 1 1616 0
	movl	$0, -132(%rbp)	#, err
	.loc 1 1618 0
	movl	-124(%rbp), %eax	# max_uid, tmp287
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14849,
	call	xcalloc	#
	movq	%rax, -64(%rbp)	# tmp288, bb_info
	.loc 1 1619 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.61
	addl	$2, %eax	#, D.14850
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14849,
	call	xcalloc	#
	movq	%rax, -56(%rbp)	# tmp289, last_visited
	.loc 1 1621 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.62
	addl	$2, %eax	#, D.14850
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14849,
	call	xcalloc	#
	movq	%rax, -48(%rbp)	# tmp290, edge_checksum
	.loc 1 1623 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.63
	subl	$1, %eax	#, tmp291
	movl	%eax, -144(%rbp)	# tmp291, i
	jmp	.L323	#
.L335:
.LBB41:
	.loc 1 1625 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.64
	movl	-144(%rbp), %edx	# i, tmp293
	movslq	%edx, %rdx	# tmp293, tmp292
	addq	$4, %rdx	#, tmp294
	movq	(%rax,%rdx,8), %rax	# basic_block_info.64_65->data.bb, tmp295
	movq	%rax, -40(%rbp)	# tmp295, bb
	.loc 1 1626 0
	movq	-40(%rbp), %rax	# bb, tmp296
	movq	(%rax), %rax	# bb_66->head, tmp297
	movq	%rax, -32(%rbp)	# tmp297, head
	.loc 1 1627 0
	movq	-40(%rbp), %rax	# bb, tmp298
	movq	8(%rax), %rax	# bb_66->end, tmp299
	movq	%rax, -24(%rbp)	# tmp299, end
	.loc 1 1630 0
	movq	-120(%rbp), %rax	# last_head, tmp300
	movq	%rax, -112(%rbp)	# tmp300, x
	jmp	.L324	#
.L327:
	.loc 1 1631 0
	movq	-112(%rbp), %rax	# x, tmp301
	cmpq	-24(%rbp), %rax	# end, tmp301
	jne	.L325	#,
	.loc 1 1632 0
	jmp	.L326	#
.L325:
	.loc 1 1630 0
	movq	-112(%rbp), %rax	# x, tmp302
	movq	16(%rax), %rax	# x_2->fld[1].rtx, tmp303
	movq	%rax, -112(%rbp)	# tmp303, x
.L324:
	.loc 1 1630 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, x
	jne	.L327	#,
.L326:
	.loc 1 1634 0 is_stmt 1
	cmpq	$0, -112(%rbp)	#, x
	jne	.L328	#,
	.loc 1 1636 0
	movq	-40(%rbp), %rax	# bb, tmp304
	movl	88(%rax), %edx	# bb_66->index, D.14850
	movq	-24(%rbp), %rax	# end, tmp305
	movl	8(%rax), %eax	# end_68->fld[0].rtint, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1638 0
	movl	$1, -132(%rbp)	#, err
	.loc 1 1643 0
	jmp	.L329	#
.L328:
	jmp	.L329	#
.L333:
	.loc 1 1648 0
	movq	-112(%rbp), %rax	# x, tmp306
	movl	8(%rax), %eax	# x_3->fld[0].rtint, D.14850
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14849
	movq	-64(%rbp), %rax	# bb_info, tmp307
	addq	%rdx, %rax	# D.14849, D.14851
	movq	(%rax), %rax	# *_77, D.14852
	testq	%rax, %rax	# D.14852
	je	.L330	#,
	.loc 1 1651 0
	movq	-112(%rbp), %rax	# x, tmp308
	movl	8(%rax), %eax	# x_3->fld[0].rtint, D.14850
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14849
	movq	-64(%rbp), %rax	# bb_info, tmp309
	addq	%rdx, %rax	# D.14849, D.14851
	movq	(%rax), %rax	# *_82, D.14852
	.loc 1 1650 0
	movl	88(%rax), %ecx	# _83->index, D.14850
	movq	-40(%rbp), %rax	# bb, tmp310
	movl	88(%rax), %edx	# bb_66->index, D.14850
	movq	-112(%rbp), %rax	# x, tmp311
	movl	8(%rax), %eax	# x_3->fld[0].rtint, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1652 0
	movl	$1, -132(%rbp)	#, err
.L330:
	.loc 1 1655 0
	movq	-112(%rbp), %rax	# x, tmp312
	movl	8(%rax), %eax	# x_3->fld[0].rtint, D.14850
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14849
	movq	-64(%rbp), %rax	# bb_info, tmp313
	addq	%rax, %rdx	# tmp313, D.14851
	movq	-40(%rbp), %rax	# bb, tmp314
	movq	%rax, (%rdx)	# tmp314, *_91
	.loc 1 1657 0
	movq	-112(%rbp), %rax	# x, tmp315
	cmpq	-32(%rbp), %rax	# head, tmp315
	jne	.L331	#,
	.loc 1 1658 0
	jmp	.L332	#
.L331:
	.loc 1 1643 0
	movq	-112(%rbp), %rax	# x, tmp316
	movq	16(%rax), %rax	# x_3->fld[1].rtx, tmp317
	movq	%rax, -112(%rbp)	# tmp317, x
.L329:
	.loc 1 1643 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, x
	jne	.L333	#,
.L332:
	.loc 1 1660 0 is_stmt 1
	cmpq	$0, -112(%rbp)	#, x
	jne	.L334	#,
	.loc 1 1662 0
	movq	-40(%rbp), %rax	# bb, tmp318
	movl	88(%rax), %edx	# bb_66->index, D.14850
	movq	-32(%rbp), %rax	# head, tmp319
	movl	8(%rax), %eax	# head_67->fld[0].rtint, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1664 0
	movl	$1, -132(%rbp)	#, err
.L334:
	.loc 1 1667 0
	movq	-112(%rbp), %rax	# x, tmp320
	movq	%rax, -120(%rbp)	# tmp320, last_head
.LBE41:
	.loc 1 1623 0
	subl	$1, -144(%rbp)	#, i
.L323:
	.loc 1 1623 0 is_stmt 0 discriminator 1
	cmpl	$0, -144(%rbp)	#, i
	jns	.L335	#,
	.loc 1 1671 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.65
	subl	$1, %eax	#, tmp321
	movl	%eax, -144(%rbp)	# tmp321, i
	jmp	.L336	#
.L372:
.LBB42:
	.loc 1 1673 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.66
	movl	-144(%rbp), %edx	# i, tmp323
	movslq	%edx, %rdx	# tmp323, tmp322
	addq	$4, %rdx	#, tmp324
	movq	(%rax,%rdx,8), %rax	# basic_block_info.66_100->data.bb, tmp325
	movq	%rax, -16(%rbp)	# tmp325, bb
	.loc 1 1674 0
	movl	$0, -128(%rbp)	#, has_fallthru
	.loc 1 1677 0
	movq	-16(%rbp), %rax	# bb, tmp326
	movq	40(%rax), %rax	# bb_101->succ, tmp327
	movq	%rax, -104(%rbp)	# tmp327, e
	jmp	.L337	#
.L347:
	.loc 1 1679 0
	movq	-104(%rbp), %rax	# e, tmp328
	movq	24(%rax), %rax	# e_43->dest, D.14852
	movl	88(%rax), %eax	# _104->index, D.14850
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rdx	#, D.14853
	movq	-56(%rbp), %rax	# last_visited, tmp329
	addq	%rdx, %rax	# D.14853, D.14851
	movq	(%rax), %rax	# *_109, D.14852
	cmpq	-16(%rbp), %rax	# bb, D.14852
	jne	.L338	#,
	.loc 1 1682 0
	movq	-104(%rbp), %rax	# e, tmp330
	movq	24(%rax), %rax	# e_43->dest, D.14852
	.loc 1 1681 0
	movl	88(%rax), %edx	# _111->index, D.14850
	.loc 1 1682 0
	movq	-104(%rbp), %rax	# e, tmp331
	movq	16(%rax), %rax	# e_43->src, D.14852
	.loc 1 1681 0
	movl	88(%rax), %eax	# _113->index, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1683 0
	movl	$1, -132(%rbp)	#, err
.L338:
	.loc 1 1686 0
	movq	-104(%rbp), %rax	# e, tmp332
	movq	24(%rax), %rax	# e_43->dest, D.14852
	movl	88(%rax), %eax	# _116->index, D.14850
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rdx	#, D.14853
	movq	-56(%rbp), %rax	# last_visited, tmp333
	addq	%rax, %rdx	# tmp333, D.14851
	movq	-16(%rbp), %rax	# bb, tmp334
	movq	%rax, (%rdx)	# tmp334, *_121
	.loc 1 1688 0
	movq	-104(%rbp), %rax	# e, tmp335
	movl	48(%rax), %eax	# e_43->flags, D.14850
	andl	$1, %eax	#, D.14850
	testl	%eax, %eax	# D.14850
	je	.L339	#,
	.loc 1 1689 0
	movl	$1, -128(%rbp)	#, has_fallthru
.L339:
	.loc 1 1691 0
	movq	-104(%rbp), %rax	# e, tmp336
	movl	48(%rax), %eax	# e_43->flags, D.14850
	andl	$1, %eax	#, D.14850
	testl	%eax, %eax	# D.14850
	je	.L340	#,
	.loc 1 1692 0
	movq	-104(%rbp), %rax	# e, tmp337
	movq	16(%rax), %rax	# e_43->src, D.14852
	cmpq	$entry_exit_blocks, %rax	#, D.14852
	je	.L340	#,
	.loc 1 1693 0
	movq	-104(%rbp), %rax	# e, tmp338
	movq	24(%rax), %rax	# e_43->dest, D.14852
	cmpq	$entry_exit_blocks+112, %rax	#, D.14852
	je	.L340	#,
.LBB43:
	.loc 1 1697 0
	movq	-104(%rbp), %rax	# e, tmp339
	movq	16(%rax), %rax	# e_43->src, D.14852
	movl	88(%rax), %eax	# _129->index, D.14850
	leal	1(%rax), %edx	#, D.14850
	movq	-104(%rbp), %rax	# e, tmp340
	movq	24(%rax), %rax	# e_43->dest, D.14852
	movl	88(%rax), %eax	# _132->index, D.14850
	cmpl	%eax, %edx	# D.14850, D.14850
	je	.L341	#,
	.loc 1 1701 0
	movq	-104(%rbp), %rax	# e, tmp341
	movq	24(%rax), %rax	# e_43->dest, D.14852
	.loc 1 1700 0
	movl	88(%rax), %edx	# _134->index, D.14850
	.loc 1 1701 0
	movq	-104(%rbp), %rax	# e, tmp342
	movq	16(%rax), %rax	# e_43->src, D.14852
	.loc 1 1700 0
	movl	88(%rax), %eax	# _136->index, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1702 0
	movl	$1, -132(%rbp)	#, err
	jmp	.L340	#
.L341:
	.loc 1 1705 0
	movq	-104(%rbp), %rax	# e, tmp343
	movq	16(%rax), %rax	# e_43->src, D.14852
	movq	8(%rax), %rax	# _139->end, D.14854
	movq	24(%rax), %rax	# _140->fld[2].rtx, tmp344
	movq	%rax, -96(%rbp)	# tmp344, insn
	jmp	.L342	#
.L345:
	.loc 1 1707 0
	movq	-96(%rbp), %rax	# insn, tmp345
	movzwl	(%rax), %eax	# insn_45->code, D.14855
	cmpw	$35, %ax	#, D.14855
	je	.L343	#,
	.loc 1 1709 0
	movq	-96(%rbp), %rax	# insn, tmp346
	movzwl	(%rax), %eax	# insn_45->code, D.14855
	movzwl	%ax, %eax	# D.14855, D.14850
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14856
	cmpb	$105, %al	#, D.14856
	jne	.L344	#,
.L343:
	.loc 1 1716 0
	movq	-104(%rbp), %rax	# e, tmp348
	movq	24(%rax), %rax	# e_43->dest, D.14852
	.loc 1 1715 0
	movl	88(%rax), %edx	# _149->index, D.14850
	.loc 1 1716 0
	movq	-104(%rbp), %rax	# e, tmp349
	movq	16(%rax), %rax	# e_43->src, D.14852
	.loc 1 1715 0
	movl	88(%rax), %eax	# _151->index, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1717 0
	movq	-96(%rbp), %rax	# insn, tmp350
	movl	$__FUNCTION__.12833, %r8d	#,
	movl	$1717, %ecx	#,
	movl	$.LC0, %edx	#,
	movq	%rax, %rsi	# tmp350,
	movl	$.LC24, %edi	#,
	call	_fatal_insn	#
.L344:
	.loc 1 1706 0
	movq	-96(%rbp), %rax	# insn, tmp351
	movq	24(%rax), %rax	# insn_45->fld[2].rtx, tmp352
	movq	%rax, -96(%rbp)	# tmp352, insn
.L342:
	.loc 1 1705 0 discriminator 1
	movq	-104(%rbp), %rax	# e, tmp353
	movq	24(%rax), %rax	# e_43->dest, D.14852
	movq	(%rax), %rax	# _142->head, D.14854
	cmpq	-96(%rbp), %rax	# insn, D.14854
	jne	.L345	#,
.L340:
.LBE43:
	.loc 1 1722 0
	movq	-104(%rbp), %rax	# e, tmp354
	movq	16(%rax), %rax	# e_43->src, D.14852
	cmpq	-16(%rbp), %rax	# bb, D.14852
	je	.L346	#,
	.loc 1 1724 0
	movq	-16(%rbp), %rax	# bb, tmp355
	movl	88(%rax), %eax	# bb_101->index, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1726 0
	movq	stderr(%rip), %rax	# stderr, stderr.67
	movq	%rax, %rcx	# stderr.67,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
	.loc 1 1727 0
	movq	stderr(%rip), %rax	# stderr, stderr.68
	movq	-104(%rbp), %rcx	# e, tmp356
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp356,
	movq	%rax, %rdi	# stderr.68,
	call	dump_edge_info	#
	.loc 1 1728 0
	movq	stderr(%rip), %rax	# stderr, stderr.69
	movq	%rax, %rcx	# stderr.69,
	movl	$12, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC27, %edi	#,
	call	fwrite	#
	.loc 1 1729 0
	movq	stderr(%rip), %rax	# stderr, stderr.70
	movq	-104(%rbp), %rcx	# e, tmp357
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp357,
	movq	%rax, %rdi	# stderr.70,
	call	dump_edge_info	#
	.loc 1 1730 0
	movq	stderr(%rip), %rax	# stderr, stderr.71
	movq	%rax, %rsi	# stderr.71,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1731 0
	movl	$1, -132(%rbp)	#, err
.L346:
	.loc 1 1734 0
	movq	-104(%rbp), %rax	# e, tmp358
	movq	24(%rax), %rax	# e_43->dest, D.14852
	movl	88(%rax), %eax	# _161->index, D.14850
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rdx	#, D.14853
	movq	-48(%rbp), %rax	# edge_checksum, tmp359
	addq	%rax, %rdx	# tmp359, D.14857
	movq	-104(%rbp), %rax	# e, tmp360
	movq	24(%rax), %rax	# e_43->dest, D.14852
	movl	88(%rax), %eax	# _167->index, D.14850
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rcx	#, D.14853
	movq	-48(%rbp), %rax	# edge_checksum, tmp361
	addq	%rcx, %rax	# D.14853, D.14857
	movq	(%rax), %rcx	# *_172, D.14849
	movq	-104(%rbp), %rax	# e, e.72
	addq	%rcx, %rax	# D.14849, D.14849
	movq	%rax, (%rdx)	# D.14849, *_166
	.loc 1 1677 0
	movq	-104(%rbp), %rax	# e, tmp362
	movq	8(%rax), %rax	# e_43->succ_next, tmp363
	movq	%rax, -104(%rbp)	# tmp363, e
.L337:
	.loc 1 1677 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, e
	jne	.L347	#,
	.loc 1 1737 0 is_stmt 1
	cmpl	$0, -128(%rbp)	#, has_fallthru
	jne	.L348	#,
.LBB44:
	.loc 1 1742 0
	movq	-16(%rbp), %rax	# bb, tmp364
	movq	8(%rax), %rax	# bb_101->end, tmp365
	movq	%rax, -88(%rbp)	# tmp365, insn
	jmp	.L349	#
.L352:
	.loc 1 1744 0
	cmpq	$0, -88(%rbp)	#, insn
	je	.L350	#,
	.loc 1 1745 0
	movq	-88(%rbp), %rax	# insn, tmp366
	movzwl	(%rax), %eax	# insn_46->code, D.14855
	cmpw	$37, %ax	#, D.14855
	jne	.L351	#,
	.loc 1 1746 0
	movq	-88(%rbp), %rax	# insn, tmp367
	movl	40(%rax), %eax	# insn_46->fld[4].rtint, D.14850
	cmpl	$-80, %eax	#, D.14850
	jne	.L351	#,
.L350:
	.loc 1 1748 0
	movq	-16(%rbp), %rax	# bb, tmp368
	movl	88(%rax), %eax	# bb_101->index, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1749 0
	movl	$1, -132(%rbp)	#, err
	.loc 1 1750 0
	jmp	.L348	#
.L351:
	.loc 1 1743 0
	movq	-88(%rbp), %rax	# insn, tmp369
	movq	24(%rax), %rax	# insn_46->fld[2].rtx, tmp370
	movq	%rax, -88(%rbp)	# tmp370, insn
.L349:
	.loc 1 1742 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, insn
	je	.L352	#,
	.loc 1 1742 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# insn, tmp371
	movzwl	(%rax), %eax	# insn_46->code, D.14855
	cmpw	$35, %ax	#, D.14855
	jne	.L352	#,
.L348:
.LBE44:
	.loc 1 1754 0 is_stmt 1
	movq	-16(%rbp), %rax	# bb, tmp372
	movq	32(%rax), %rax	# bb_101->pred, tmp373
	movq	%rax, -104(%rbp)	# tmp373, e
	jmp	.L353	#
.L355:
	.loc 1 1756 0
	movq	-104(%rbp), %rax	# e, tmp374
	movq	24(%rax), %rax	# e_44->dest, D.14852
	cmpq	-16(%rbp), %rax	# bb, D.14852
	je	.L354	#,
	.loc 1 1758 0
	movq	-16(%rbp), %rax	# bb, tmp375
	movl	88(%rax), %eax	# bb_101->index, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1759 0
	movq	stderr(%rip), %rax	# stderr, stderr.73
	movq	%rax, %rcx	# stderr.73,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
	.loc 1 1760 0
	movq	stderr(%rip), %rax	# stderr, stderr.74
	movq	-104(%rbp), %rcx	# e, tmp376
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp376,
	movq	%rax, %rdi	# stderr.74,
	call	dump_edge_info	#
	.loc 1 1761 0
	movq	stderr(%rip), %rax	# stderr, stderr.75
	movq	%rax, %rcx	# stderr.75,
	movl	$12, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC27, %edi	#,
	call	fwrite	#
	.loc 1 1762 0
	movq	stderr(%rip), %rax	# stderr, stderr.76
	movq	-104(%rbp), %rcx	# e, tmp377
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp377,
	movq	%rax, %rdi	# stderr.76,
	call	dump_edge_info	#
	.loc 1 1763 0
	movq	stderr(%rip), %rax	# stderr, stderr.77
	movq	%rax, %rsi	# stderr.77,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1764 0
	movl	$1, -132(%rbp)	#, err
.L354:
	.loc 1 1766 0
	movq	-104(%rbp), %rax	# e, tmp378
	movq	24(%rax), %rax	# e_44->dest, D.14852
	movl	88(%rax), %eax	# _193->index, D.14850
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rdx	#, D.14853
	movq	-48(%rbp), %rax	# edge_checksum, tmp379
	addq	%rax, %rdx	# tmp379, D.14857
	movq	-104(%rbp), %rax	# e, tmp380
	movq	24(%rax), %rax	# e_44->dest, D.14852
	movl	88(%rax), %eax	# _199->index, D.14850
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rcx	#, D.14853
	movq	-48(%rbp), %rax	# edge_checksum, tmp381
	addq	%rcx, %rax	# D.14853, D.14857
	movq	(%rax), %rcx	# *_204, D.14849
	movq	-104(%rbp), %rax	# e, e.78
	subq	%rax, %rcx	# e.78, D.14849
	movq	%rcx, %rax	# D.14849, D.14849
	movq	%rax, (%rdx)	# D.14849, *_198
	.loc 1 1754 0
	movq	-104(%rbp), %rax	# e, tmp382
	movq	(%rax), %rax	# e_44->pred_next, tmp383
	movq	%rax, -104(%rbp)	# tmp383, e
.L353:
	.loc 1 1754 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, e
	jne	.L355	#,
	.loc 1 1769 0 is_stmt 1
	movq	-16(%rbp), %rax	# bb, tmp384
	movq	(%rax), %rax	# bb_101->head, tmp385
	movq	%rax, -112(%rbp)	# tmp385, x
	jmp	.L356	#
.L360:
	.loc 1 1770 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.79
	testq	%rax, %rax	# basic_block_for_insn.79
	je	.L357	#,
	.loc 1 1770 0 is_stmt 0 discriminator 1
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.80
	movq	-112(%rbp), %rdx	# x, tmp386
	movl	8(%rdx), %edx	# x_4->fld[0].rtint, D.14850
	movslq	%edx, %rdx	# D.14850, tmp387
	addq	$4, %rdx	#, tmp388
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.80_213->data.bb, D.14852
	cmpq	-16(%rbp), %rax	# bb, D.14852
	je	.L357	#,
	.loc 1 1772 0 is_stmt 1
	movq	-112(%rbp), %rax	# x, tmp389
	movq	%rax, %rdi	# tmp389,
	call	debug_rtx	#
	.loc 1 1773 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.81
	movq	-112(%rbp), %rdx	# x, tmp390
	movl	8(%rdx), %edx	# x_4->fld[0].rtint, D.14850
	movslq	%edx, %rdx	# D.14850, tmp391
	addq	$4, %rdx	#, tmp392
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.81_216->data.bb, D.14852
	testq	%rax, %rax	# D.14852
	jne	.L358	#,
	.loc 1 1775 0
	movq	-16(%rbp), %rax	# bb, tmp393
	movl	88(%rax), %edx	# bb_101->index, D.14850
	movq	-112(%rbp), %rax	# x, tmp394
	movl	8(%rax), %eax	# x_4->fld[0].rtint, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L359	#
.L358:
	.loc 1 1780 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.82
	movq	-112(%rbp), %rdx	# x, tmp395
	movl	8(%rdx), %edx	# x_4->fld[0].rtint, D.14850
	movslq	%edx, %rdx	# D.14850, tmp396
	addq	$4, %rdx	#, tmp397
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.82_221->data.bb, D.14852
	.loc 1 1779 0
	movl	88(%rax), %ecx	# _223->index, D.14850
	movq	-16(%rbp), %rax	# bb, tmp398
	movl	88(%rax), %edx	# bb_101->index, D.14850
	movq	-112(%rbp), %rax	# x, tmp399
	movl	8(%rax), %eax	# x_4->fld[0].rtint, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L359:
	.loc 1 1782 0
	movl	$1, -132(%rbp)	#, err
.L357:
	.loc 1 1769 0
	movq	-112(%rbp), %rax	# x, tmp400
	movq	24(%rax), %rax	# x_4->fld[2].rtx, tmp401
	movq	%rax, -112(%rbp)	# tmp401, x
.L356:
	.loc 1 1769 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# bb, tmp402
	movq	8(%rax), %rax	# bb_101->end, D.14854
	movq	24(%rax), %rax	# _210->fld[2].rtx, D.14854
	cmpq	-112(%rbp), %rax	# x, D.14854
	jne	.L360	#,
	.loc 1 1788 0 is_stmt 1
	movq	-16(%rbp), %rax	# bb, tmp403
	movq	(%rax), %rax	# bb_101->head, tmp404
	movq	%rax, -112(%rbp)	# tmp404, x
	.loc 1 1789 0
	movq	-112(%rbp), %rax	# x, tmp405
	movzwl	(%rax), %eax	# x_229->code, D.14855
	cmpw	$36, %ax	#, D.14855
	jne	.L361	#,
	.loc 1 1791 0
	movq	-16(%rbp), %rax	# bb, tmp406
	movq	8(%rax), %rax	# bb_101->end, D.14854
	cmpq	-112(%rbp), %rax	# x, D.14854
	jne	.L362	#,
	.loc 1 1793 0
	movq	-16(%rbp), %rax	# bb, tmp407
	movl	88(%rax), %eax	# bb_101->index, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1795 0
	movl	$1, -132(%rbp)	#, err
.L362:
	.loc 1 1798 0
	movq	-112(%rbp), %rax	# x, tmp408
	movq	24(%rax), %rax	# x_229->fld[2].rtx, tmp409
	movq	%rax, -112(%rbp)	# tmp409, x
.L361:
	.loc 1 1801 0
	movq	-112(%rbp), %rax	# x, tmp410
	movzwl	(%rax), %eax	# x_5->code, D.14855
	cmpw	$37, %ax	#, D.14855
	jne	.L363	#,
	.loc 1 1801 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# x, tmp411
	movl	40(%rax), %eax	# x_5->fld[4].rtint, D.14850
	cmpl	$-80, %eax	#, D.14850
	jne	.L363	#,
	movq	-112(%rbp), %rax	# x, tmp412
	movq	32(%rax), %rax	# x_5->fld[3].bb, D.14852
	cmpq	-16(%rbp), %rax	# bb, D.14852
	je	.L364	#,
.L363:
	.loc 1 1803 0 is_stmt 1
	movq	-16(%rbp), %rax	# bb, tmp413
	movl	88(%rax), %eax	# bb_101->index, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1805 0
	movl	$1, -132(%rbp)	#, err
.L364:
	.loc 1 1808 0
	movq	-16(%rbp), %rax	# bb, tmp414
	movq	8(%rax), %rax	# bb_101->end, D.14854
	cmpq	-112(%rbp), %rax	# x, D.14854
	je	.L365	#,
	.loc 1 1812 0
	movq	-112(%rbp), %rax	# x, tmp415
	movq	24(%rax), %rax	# x_5->fld[2].rtx, tmp416
	movq	%rax, -112(%rbp)	# tmp416, x
	jmp	.L366	#
.L371:
	.loc 1 1814 0
	movq	-112(%rbp), %rax	# x, tmp417
	movzwl	(%rax), %eax	# x_6->code, D.14855
	cmpw	$37, %ax	#, D.14855
	jne	.L367	#,
	.loc 1 1814 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# x, tmp418
	movl	40(%rax), %eax	# x_6->fld[4].rtint, D.14850
	cmpl	$-80, %eax	#, D.14850
	jne	.L367	#,
	.loc 1 1816 0 is_stmt 1
	movq	-16(%rbp), %rax	# bb, tmp419
	movl	88(%rax), %edx	# bb_101->index, D.14850
	movq	-112(%rbp), %rax	# x, tmp420
	movl	8(%rax), %eax	# x_6->fld[0].rtint, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1818 0
	movl	$1, -132(%rbp)	#, err
.L367:
	.loc 1 1821 0
	movq	-16(%rbp), %rax	# bb, tmp421
	movq	8(%rax), %rax	# bb_101->end, D.14854
	cmpq	-112(%rbp), %rax	# x, D.14854
	jne	.L368	#,
	.loc 1 1822 0
	jmp	.L365	#
.L368:
	.loc 1 1824 0
	movq	-112(%rbp), %rax	# x, tmp422
	movzwl	(%rax), %eax	# x_6->code, D.14855
	cmpw	$33, %ax	#, D.14855
	je	.L369	#,
	.loc 1 1825 0
	movq	-112(%rbp), %rax	# x, tmp423
	movzwl	(%rax), %eax	# x_6->code, D.14855
	cmpw	$36, %ax	#, D.14855
	je	.L369	#,
	.loc 1 1826 0
	movq	-112(%rbp), %rax	# x, tmp424
	movzwl	(%rax), %eax	# x_6->code, D.14855
	cmpw	$35, %ax	#, D.14855
	jne	.L370	#,
.L369:
	.loc 1 1828 0
	movq	-16(%rbp), %rax	# bb, tmp425
	movl	88(%rax), %eax	# bb_101->index, D.14850
	movl	%eax, %esi	# D.14850,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1829 0
	movq	-112(%rbp), %rax	# x, tmp426
	movl	$__FUNCTION__.12833, %r8d	#,
	movl	$1829, %ecx	#,
	movl	$.LC0, %edx	#,
	movq	%rax, %rsi	# tmp426,
	movl	$.LC35, %edi	#,
	call	_fatal_insn	#
.L370:
	.loc 1 1812 0
	movq	-112(%rbp), %rax	# x, tmp427
	movq	24(%rax), %rax	# x_6->fld[2].rtx, tmp428
	movq	%rax, -112(%rbp)	# tmp428, x
.L366:
	.loc 1 1812 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, x
	jne	.L371	#,
.L365:
.LBE42:
	.loc 1 1671 0 is_stmt 1
	subl	$1, -144(%rbp)	#, i
.L336:
	.loc 1 1671 0 is_stmt 0 discriminator 1
	cmpl	$0, -144(%rbp)	#, i
	jns	.L372	#,
.LBB45:
	.loc 1 1838 0 is_stmt 1
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp429
	movq	%rax, -80(%rbp)	# tmp429, e
	jmp	.L373	#
.L374:
	.loc 1 1839 0 discriminator 2
	movq	-80(%rbp), %rax	# e, tmp430
	movq	24(%rax), %rax	# e_47->dest, D.14852
	movl	88(%rax), %eax	# _255->index, D.14850
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rdx	#, D.14853
	movq	-48(%rbp), %rax	# edge_checksum, tmp431
	addq	%rax, %rdx	# tmp431, D.14857
	movq	-80(%rbp), %rax	# e, tmp432
	movq	24(%rax), %rax	# e_47->dest, D.14852
	movl	88(%rax), %eax	# _261->index, D.14850
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rcx	#, D.14853
	movq	-48(%rbp), %rax	# edge_checksum, tmp433
	addq	%rcx, %rax	# D.14853, D.14857
	movq	(%rax), %rcx	# *_266, D.14849
	movq	-80(%rbp), %rax	# e, e.83
	addq	%rcx, %rax	# D.14849, D.14849
	movq	%rax, (%rdx)	# D.14849, *_260
	.loc 1 1838 0 discriminator 2
	movq	-80(%rbp), %rax	# e, tmp434
	movq	8(%rax), %rax	# e_47->succ_next, tmp435
	movq	%rax, -80(%rbp)	# tmp435, e
.L373:
	.loc 1 1838 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, e
	jne	.L374	#,
	.loc 1 1841 0 is_stmt 1
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, tmp436
	movq	%rax, -80(%rbp)	# tmp436, e
	jmp	.L375	#
.L376:
	.loc 1 1842 0 discriminator 2
	movq	-80(%rbp), %rax	# e, tmp437
	movq	24(%rax), %rax	# e_48->dest, D.14852
	movl	88(%rax), %eax	# _272->index, D.14850
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rdx	#, D.14853
	movq	-48(%rbp), %rax	# edge_checksum, tmp438
	addq	%rax, %rdx	# tmp438, D.14857
	movq	-80(%rbp), %rax	# e, tmp439
	movq	24(%rax), %rax	# e_48->dest, D.14852
	movl	88(%rax), %eax	# _278->index, D.14850
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rcx	#, D.14853
	movq	-48(%rbp), %rax	# edge_checksum, tmp440
	addq	%rcx, %rax	# D.14853, D.14857
	movq	(%rax), %rcx	# *_283, D.14849
	movq	-80(%rbp), %rax	# e, e.84
	subq	%rax, %rcx	# e.84, D.14849
	movq	%rcx, %rax	# D.14849, D.14849
	movq	%rax, (%rdx)	# D.14849, *_277
	.loc 1 1841 0 discriminator 2
	movq	-80(%rbp), %rax	# e, tmp441
	movq	(%rax), %rax	# e_48->pred_next, tmp442
	movq	%rax, -80(%rbp)	# tmp442, e
.L375:
	.loc 1 1841 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, e
	jne	.L376	#,
.LBE45:
	.loc 1 1845 0 is_stmt 1
	movl	$-2, -144(%rbp)	#, i
	jmp	.L377	#
.L379:
	.loc 1 1846 0
	movl	-144(%rbp), %eax	# i, tmp443
	cltq
	addq	$2, %rax	#, D.14853
	leaq	0(,%rax,8), %rdx	#, D.14853
	movq	-48(%rbp), %rax	# edge_checksum, tmp444
	addq	%rdx, %rax	# D.14853, D.14857
	movq	(%rax), %rax	# *_293, D.14849
	testq	%rax, %rax	# D.14849
	je	.L378	#,
	.loc 1 1848 0
	movl	-144(%rbp), %eax	# i, tmp445
	movl	%eax, %esi	# tmp445,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1849 0
	movl	$1, -132(%rbp)	#, err
.L378:
	.loc 1 1845 0
	addl	$1, -144(%rbp)	#, i
.L377:
	.loc 1 1845 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.85
	cmpl	%eax, -144(%rbp)	# n_basic_blocks.85, i
	jl	.L379	#,
	.loc 1 1852 0 is_stmt 1
	movl	$-1, -140(%rbp)	#, last_bb_num_seen
	.loc 1 1853 0
	movl	$0, -136(%rbp)	#, num_bb_notes
	.loc 1 1854 0
	movq	-72(%rbp), %rax	# rtx_first, tmp446
	movq	%rax, -112(%rbp)	# tmp446, x
	jmp	.L380	#
.L391:
	.loc 1 1856 0
	movq	-112(%rbp), %rax	# x, tmp447
	movzwl	(%rax), %eax	# x_9->code, D.14855
	cmpw	$37, %ax	#, D.14855
	jne	.L381	#,
	.loc 1 1856 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# x, tmp448
	movl	40(%rax), %eax	# x_9->fld[4].rtint, D.14850
	cmpl	$-80, %eax	#, D.14850
	jne	.L381	#,
.LBB46:
	.loc 1 1858 0 is_stmt 1
	movq	-112(%rbp), %rax	# x, tmp449
	movq	32(%rax), %rax	# x_9->fld[3].bb, tmp450
	movq	%rax, -8(%rbp)	# tmp450, bb
	.loc 1 1860 0
	addl	$1, -136(%rbp)	#, num_bb_notes
	.loc 1 1861 0
	movq	-8(%rbp), %rax	# bb, tmp451
	movl	88(%rax), %eax	# bb_302->index, D.14850
	movl	-140(%rbp), %edx	# last_bb_num_seen, tmp452
	addl	$1, %edx	#, D.14850
	cmpl	%edx, %eax	# D.14850, D.14850
	je	.L382	#,
	.loc 1 1862 0
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	internal_error	#
.L382:
	.loc 1 1864 0
	movq	-8(%rbp), %rax	# bb, tmp453
	movl	88(%rax), %eax	# bb_302->index, tmp454
	movl	%eax, -140(%rbp)	# tmp454, last_bb_num_seen
.L381:
.LBE46:
	.loc 1 1867 0
	movq	-112(%rbp), %rax	# x, tmp455
	movl	8(%rax), %eax	# x_9->fld[0].rtint, D.14850
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14849
	movq	-64(%rbp), %rax	# bb_info, tmp456
	addq	%rdx, %rax	# D.14849, D.14851
	movq	(%rax), %rax	# *_310, D.14852
	testq	%rax, %rax	# D.14852
	jne	.L383	#,
	.loc 1 1869 0
	movq	-112(%rbp), %rax	# x, tmp457
	movzwl	(%rax), %eax	# x_9->code, D.14855
	movzwl	%ax, %eax	# D.14855, D.14858
	cmpl	$36, %eax	#, D.14858
	je	.L385	#,
	cmpl	$37, %eax	#, D.14858
	je	.L395	#,
	cmpl	$35, %eax	#, D.14858
	je	.L395	#,
	jmp	.L394	#
.L385:
	.loc 1 1877 0
	movq	-112(%rbp), %rax	# x, tmp458
	movq	24(%rax), %rax	# x_9->fld[2].rtx, D.14854
	testq	%rax, %rax	# D.14854
	je	.L387	#,
	.loc 1 1878 0
	movq	-112(%rbp), %rax	# x, tmp459
	movq	24(%rax), %rax	# x_9->fld[2].rtx, D.14854
	movzwl	(%rax), %eax	# _315->code, D.14855
	cmpw	$33, %ax	#, D.14855
	jne	.L387	#,
	.loc 1 1879 0
	movq	-112(%rbp), %rax	# x, tmp460
	movq	24(%rax), %rax	# x_9->fld[2].rtx, D.14854
	movq	32(%rax), %rax	# _317->fld[3].rtx, D.14854
	movzwl	(%rax), %eax	# _318->code, D.14855
	cmpw	$45, %ax	#, D.14855
	je	.L388	#,
	.loc 1 1880 0
	movq	-112(%rbp), %rax	# x, tmp461
	movq	24(%rax), %rax	# x_9->fld[2].rtx, D.14854
	movq	32(%rax), %rax	# _320->fld[3].rtx, D.14854
	movzwl	(%rax), %eax	# _321->code, D.14855
	cmpw	$44, %ax	#, D.14855
	jne	.L387	#,
.L388:
	.loc 1 1881 0
	movq	-112(%rbp), %rax	# x, tmp462
	movq	24(%rax), %rax	# x_9->fld[2].rtx, tmp463
	movq	%rax, -112(%rbp)	# tmp463, x
	.loc 1 1884 0
	jmp	.L383	#
.L387:
	jmp	.L383	#
.L394:
	.loc 1 1887 0
	movq	-112(%rbp), %rax	# x, tmp464
	movl	$__FUNCTION__.12833, %r8d	#,
	movl	$1887, %ecx	#,
	movl	$.LC0, %edx	#,
	movq	%rax, %rsi	# tmp464,
	movl	$.LC38, %edi	#,
	call	_fatal_insn	#
.L395:
	.loc 1 1873 0
	nop
.L383:
	.loc 1 1891 0
	movq	-112(%rbp), %rax	# x, tmp465
	movzwl	(%rax), %eax	# x_8->code, D.14855
	movzwl	%ax, %eax	# D.14855, D.14850
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14856
	cmpb	$105, %al	#, D.14856
	jne	.L389	#,
	.loc 1 1892 0
	movq	-112(%rbp), %rax	# x, tmp467
	movzwl	(%rax), %eax	# x_8->code, D.14855
	cmpw	$33, %ax	#, D.14855
	jne	.L389	#,
	.loc 1 1893 0
	movq	-112(%rbp), %rax	# x, tmp468
	movq	%rax, %rdi	# tmp468,
	call	returnjump_p	#
	testl	%eax, %eax	# D.14850
	je	.L389	#,
	.loc 1 1893 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# x, tmp469
	movq	%rax, %rdi	# tmp469,
	call	condjump_p	#
	testl	%eax, %eax	# D.14850
	jne	.L389	#,
	.loc 1 1894 0 is_stmt 1
	movq	-112(%rbp), %rax	# x, tmp470
	movq	24(%rax), %rax	# x_8->fld[2].rtx, D.14854
	testq	%rax, %rax	# D.14854
	je	.L390	#,
	.loc 1 1894 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# x, tmp471
	movq	24(%rax), %rax	# x_8->fld[2].rtx, D.14854
	movzwl	(%rax), %eax	# _331->code, D.14855
	cmpw	$35, %ax	#, D.14855
	je	.L389	#,
.L390:
	.loc 1 1895 0 is_stmt 1
	movq	-112(%rbp), %rax	# x, tmp472
	movl	$__FUNCTION__.12833, %r8d	#,
	movl	$1895, %ecx	#,
	movl	$.LC0, %edx	#,
	movq	%rax, %rsi	# tmp472,
	movl	$.LC39, %edi	#,
	call	_fatal_insn	#
.L389:
	.loc 1 1854 0
	movq	-112(%rbp), %rax	# x, tmp473
	movq	24(%rax), %rax	# x_8->fld[2].rtx, tmp474
	movq	%rax, -112(%rbp)	# tmp474, x
.L380:
	.loc 1 1854 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, x
	jne	.L391	#,
	.loc 1 1898 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.86
	cmpl	%eax, -136(%rbp)	# n_basic_blocks.86, num_bb_notes
	je	.L392	#,
	.loc 1 1900 0
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.87
	movl	-136(%rbp), %eax	# num_bb_notes, tmp475
	movl	%eax, %esi	# tmp475,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	internal_error	#
.L392:
	.loc 1 1903 0
	cmpl	$0, -132(%rbp)	#, err
	je	.L393	#,
	.loc 1 1904 0
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	internal_error	#
.L393:
	.loc 1 1907 0
	movq	-64(%rbp), %rax	# bb_info, tmp476
	movq	%rax, %rdi	# tmp476,
	call	free	#
	.loc 1 1908 0
	movq	-56(%rbp), %rax	# last_visited, tmp477
	movq	%rax, %rdi	# tmp477,
	call	free	#
	.loc 1 1909 0
	movq	-48(%rbp), %rax	# edge_checksum, tmp478
	movq	%rax, %rdi	# tmp478,
	call	free	#
	.loc 1 1910 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	verify_flow_info, .-verify_flow_info
	.section	.rodata
.LC42:
	.string	"Purged edges from bb %i\n"
	.align 8
.LC43:
	.string	"Purged non-fallthru edges from bb %i\n"
	.text
	.globl	purge_dead_edges
	.type	purge_dead_edges, @function
purge_dead_edges:
.LFB36:
	.loc 1 1919 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# bb, bb
	.loc 1 1921 0
	movq	-88(%rbp), %rax	# bb, tmp138
	movq	8(%rax), %rax	# bb_15(D)->end, tmp139
	movq	%rax, -56(%rbp)	# tmp139, insn
	.loc 1 1922 0
	movb	$0, -65(%rbp)	#, purged
	.loc 1 1925 0
	movq	-56(%rbp), %rax	# insn, tmp140
	movzwl	(%rax), %eax	# insn_16->code, D.14884
	cmpw	$32, %ax	#, D.14884
	jne	.L397	#,
	.loc 1 1926 0
	movq	-56(%rbp), %rax	# insn, tmp141
	movl	$0, %edx	#,
	movl	$23, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	find_reg_note	#
	movq	%rax, -48(%rbp)	# tmp142, note
	cmpq	$0, -48(%rbp)	#, note
	je	.L397	#,
.LBB47:
	.loc 1 1930 0
	movq	-56(%rbp), %rax	# insn, tmp143
	movq	32(%rax), %rax	# insn_16->fld[3].rtx, D.14885
	movq	%rax, %rdi	# D.14885,
	call	may_trap_p	#
	testl	%eax, %eax	# D.14886
	je	.L398	#,
	.loc 1 1931 0
	movq	-56(%rbp), %rax	# insn, tmp144
	movq	%rax, %rdi	# tmp144,
	call	find_reg_equal_equiv_note	#
	movq	%rax, -40(%rbp)	# tmp145, eqnote
	cmpq	$0, -40(%rbp)	#, eqnote
	je	.L397	#,
	.loc 1 1932 0
	movq	-40(%rbp), %rax	# eqnote, tmp146
	movq	8(%rax), %rax	# eqnote_22->fld[0].rtx, D.14885
	movq	%rax, %rdi	# D.14885,
	call	may_trap_p	#
	testl	%eax, %eax	# D.14886
	jne	.L397	#,
.L398:
	.loc 1 1933 0
	movq	-48(%rbp), %rdx	# note, tmp147
	movq	-56(%rbp), %rax	# insn, tmp148
	movq	%rdx, %rsi	# tmp147,
	movq	%rax, %rdi	# tmp148,
	call	remove_note	#
.L397:
.LBE47:
	.loc 1 1938 0
	movq	-88(%rbp), %rax	# bb, tmp149
	movq	8(%rax), %rax	# bb_15(D)->end, D.14885
	movq	%rax, %rdi	# D.14885,
	call	can_throw_internal	#
	xorl	$1, %eax	#, D.14883
	testb	%al, %al	# D.14883
	je	.L399	#,
	.loc 1 1939 0
	movq	-88(%rbp), %rax	# bb, tmp150
	movq	40(%rax), %rax	# bb_15(D)->succ, tmp151
	movq	%rax, -64(%rbp)	# tmp151, e
	jmp	.L400	#
.L402:
	.loc 1 1941 0
	movq	-64(%rbp), %rax	# e, tmp152
	movq	8(%rax), %rax	# e_1->succ_next, tmp153
	movq	%rax, -32(%rbp)	# tmp153, next
	.loc 1 1942 0
	movq	-64(%rbp), %rax	# e, tmp154
	movl	48(%rax), %eax	# e_1->flags, D.14886
	andl	$8, %eax	#, D.14886
	testl	%eax, %eax	# D.14886
	je	.L401	#,
	.loc 1 1944 0
	movq	-64(%rbp), %rax	# e, tmp155
	movq	%rax, %rdi	# tmp155,
	call	remove_edge	#
	.loc 1 1945 0
	movb	$1, -65(%rbp)	#, purged
.L401:
	.loc 1 1939 0
	movq	-32(%rbp), %rax	# next, tmp156
	movq	%rax, -64(%rbp)	# tmp156, e
.L400:
	.loc 1 1939 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L402	#,
.L399:
	.loc 1 1949 0 is_stmt 1
	movq	-56(%rbp), %rax	# insn, tmp157
	movzwl	(%rax), %eax	# insn_16->code, D.14884
	cmpw	$33, %ax	#, D.14884
	jne	.L403	#,
.LBB48:
	.loc 1 1955 0
	movq	-56(%rbp), %rax	# insn, tmp158
	movq	%rax, %rdi	# tmp158,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.14886
	jne	.L404	#,
	.loc 1 1956 0
	movq	-56(%rbp), %rax	# insn, tmp159
	movq	%rax, %rdi	# tmp159,
	call	returnjump_p	#
	testl	%eax, %eax	# D.14886
	jne	.L404	#,
	.loc 1 1957 0
	movq	-56(%rbp), %rax	# insn, tmp160
	movq	%rax, %rdi	# tmp160,
	call	simplejump_p	#
	testl	%eax, %eax	# D.14886
	jne	.L404	#,
	.loc 1 1958 0
	movl	$0, %eax	#, D.14883
	jmp	.L405	#
.L404:
	.loc 1 1960 0
	movq	-88(%rbp), %rax	# bb, tmp161
	movq	40(%rax), %rax	# bb_15(D)->succ, tmp162
	movq	%rax, -64(%rbp)	# tmp162, e
	jmp	.L406	#
.L412:
	.loc 1 1962 0
	movq	-64(%rbp), %rax	# e, tmp163
	movq	8(%rax), %rax	# e_2->succ_next, tmp164
	movq	%rax, -32(%rbp)	# tmp164, next
	.loc 1 1967 0
	movq	-64(%rbp), %rax	# e, tmp165
	movl	48(%rax), %eax	# e_2->flags, D.14886
	andl	$-3, %eax	#, D.14886
	movl	%eax, %edx	# D.14886, D.14886
	movq	-64(%rbp), %rax	# e, tmp166
	movl	%edx, 48(%rax)	# D.14886, e_2->flags
	.loc 1 1970 0
	movq	-64(%rbp), %rax	# e, tmp167
	movl	48(%rax), %eax	# e_2->flags, D.14886
	andl	$1, %eax	#, D.14886
	testl	%eax, %eax	# D.14886
	je	.L407	#,
	.loc 1 1970 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# insn, tmp168
	movq	%rax, %rdi	# tmp168,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.14886
	je	.L407	#,
	.loc 1 1973 0 is_stmt 1
	jmp	.L408	#
.L407:
	.loc 1 1974 0
	movq	-64(%rbp), %rax	# e, tmp169
	movq	24(%rax), %rax	# e_2->dest, D.14887
	cmpq	$entry_exit_blocks+112, %rax	#, D.14887
	je	.L409	#,
	.loc 1 1975 0
	movq	-64(%rbp), %rax	# e, tmp170
	movq	24(%rax), %rax	# e_2->dest, D.14887
	movq	(%rax), %rdx	# _47->head, D.14885
	movq	-56(%rbp), %rax	# insn, tmp171
	movq	64(%rax), %rax	# insn_16->fld[7].rtx, D.14885
	cmpq	%rax, %rdx	# D.14885, D.14885
	jne	.L409	#,
	.loc 1 1978 0
	jmp	.L408	#
.L409:
	.loc 1 1979 0
	movq	-64(%rbp), %rax	# e, tmp172
	movq	24(%rax), %rax	# e_2->dest, D.14887
	cmpq	$entry_exit_blocks+112, %rax	#, D.14887
	jne	.L410	#,
	.loc 1 1979 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# insn, tmp173
	movq	%rax, %rdi	# tmp173,
	call	returnjump_p	#
	testl	%eax, %eax	# D.14886
	je	.L410	#,
	.loc 1 1982 0 is_stmt 1
	jmp	.L408	#
.L410:
	.loc 1 1983 0
	movq	-64(%rbp), %rax	# e, tmp174
	movl	48(%rax), %eax	# e_2->flags, D.14886
	andl	$8, %eax	#, D.14886
	testl	%eax, %eax	# D.14886
	je	.L411	#,
	.loc 1 1983 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# insn, tmp175
	movq	%rax, %rdi	# tmp175,
	call	can_throw_internal	#
	testb	%al, %al	# D.14883
	je	.L411	#,
	.loc 1 1986 0 is_stmt 1
	jmp	.L408	#
.L411:
	.loc 1 1989 0
	movb	$1, -65(%rbp)	#, purged
	.loc 1 1990 0
	movq	-64(%rbp), %rax	# e, tmp176
	movq	%rax, %rdi	# tmp176,
	call	remove_edge	#
.L408:
	.loc 1 1960 0
	movq	-32(%rbp), %rax	# next, tmp177
	movq	%rax, -64(%rbp)	# tmp177, e
.L406:
	.loc 1 1960 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L412	#,
	.loc 1 1993 0 is_stmt 1
	movq	-88(%rbp), %rax	# bb, tmp178
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	testq	%rax, %rax	# D.14888
	je	.L413	#,
	.loc 1 1993 0 is_stmt 0 discriminator 1
	movzbl	-65(%rbp), %eax	# purged, tmp179
	xorl	$1, %eax	#, D.14883
	testb	%al, %al	# D.14883
	je	.L414	#,
.L413:
	.loc 1 1994 0 is_stmt 1
	movl	$0, %eax	#, D.14883
	jmp	.L405	#
.L414:
	.loc 1 1996 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.88
	testq	%rax, %rax	# rtl_dump_file.88
	je	.L415	#,
	.loc 1 1997 0
	movq	-88(%rbp), %rax	# bb, tmp180
	movl	88(%rax), %edx	# bb_15(D)->index, D.14886
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.89
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.89,
	movl	$0, %eax	#,
	call	fprintf	#
.L415:
	.loc 1 1999 0
	movl	optimize(%rip), %eax	# optimize, optimize.90
	testl	%eax, %eax	# optimize.90
	jne	.L416	#,
	.loc 1 2000 0
	movzbl	-65(%rbp), %eax	# purged, D.14883
	jmp	.L405	#
.L416:
	.loc 1 2003 0
	movq	-88(%rbp), %rax	# bb, tmp181
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	movq	8(%rax), %rax	# _64->succ_next, D.14888
	testq	%rax, %rax	# D.14888
	jne	.L417	#,
	.loc 1 2005 0
	movq	-88(%rbp), %rax	# bb, tmp182
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	movl	$10000, 52(%rax)	#, _66->probability
	.loc 1 2006 0
	movq	-88(%rbp), %rax	# bb, tmp183
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	movq	-88(%rbp), %rdx	# bb, tmp184
	movq	96(%rdx), %rdx	# bb_15(D)->count, D.14889
	movq	%rdx, 56(%rax)	# D.14889, _67->count
	jmp	.L418	#
.L417:
	.loc 1 2010 0
	movq	-56(%rbp), %rax	# insn, tmp185
	movl	$0, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	find_reg_note	#
	movq	%rax, -24(%rbp)	# tmp186, note
	.loc 1 2011 0
	cmpq	$0, -24(%rbp)	#, note
	jne	.L419	#,
	.loc 1 2012 0
	movzbl	-65(%rbp), %eax	# purged, D.14883
	jmp	.L405	#
.L419:
	.loc 1 2014 0
	movq	-88(%rbp), %rax	# bb, tmp187
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	movl	48(%rax), %eax	# _71->flags, D.14886
	andl	$1, %eax	#, D.14886
	testl	%eax, %eax	# D.14886
	je	.L420	#,
	.loc 1 2014 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# bb, tmp188
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	movq	8(%rax), %rax	# _74->succ_next, iftmp.91
	jmp	.L421	#
.L420:
	.loc 1 2014 0 discriminator 2
	movq	-88(%rbp), %rax	# bb, tmp189
	movq	40(%rax), %rax	# bb_15(D)->succ, iftmp.91
.L421:
	.loc 1 2014 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.91, b
	.loc 1 2015 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# bb, tmp190
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	movl	48(%rax), %eax	# _78->flags, D.14886
	andl	$1, %eax	#, D.14886
	testl	%eax, %eax	# D.14886
	je	.L422	#,
	.loc 1 2015 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# bb, tmp191
	movq	40(%rax), %rax	# bb_15(D)->succ, iftmp.92
	jmp	.L423	#
.L422:
	.loc 1 2015 0 discriminator 2
	movq	-88(%rbp), %rax	# bb, tmp192
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	movq	8(%rax), %rax	# _82->succ_next, iftmp.92
.L423:
	.loc 1 2015 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.92, f
	.loc 1 2016 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# note, tmp193
	movq	8(%rax), %rax	# note_69->fld[0].rtx, D.14885
	movq	8(%rax), %rax	# _85->fld[0].rtwint, D.14889
	movl	%eax, %edx	# D.14889, D.14886
	movq	-16(%rbp), %rax	# b, tmp194
	movl	%edx, 52(%rax)	# D.14886, b_77->probability
	.loc 1 2017 0 discriminator 3
	movq	-16(%rbp), %rax	# b, tmp195
	movl	52(%rax), %eax	# b_77->probability, D.14886
	movl	$10000, %edx	#, tmp196
	subl	%eax, %edx	# D.14886, D.14886
	movq	-8(%rbp), %rax	# f, tmp197
	movl	%edx, 52(%rax)	# D.14886, f_84->probability
	.loc 1 2018 0 discriminator 3
	movq	-88(%rbp), %rax	# bb, tmp198
	movq	96(%rax), %rdx	# bb_15(D)->count, D.14889
	movq	-16(%rbp), %rax	# b, tmp199
	movl	52(%rax), %eax	# b_77->probability, D.14886
	cltq
	movq	%rdx, %rcx	# D.14889, D.14889
	imulq	%rax, %rcx	# D.14889, D.14889
	movabsq	$3777893186295716171, %rdx	#, tmp201
	movq	%rcx, %rax	# D.14889, tmp231
	imulq	%rdx	# tmp201
	sarq	$11, %rdx	#, tmp202
	movq	%rcx, %rax	# D.14889, tmp203
	sarq	$63, %rax	#, tmp203
	subq	%rax, %rdx	# tmp203, D.14889
	movq	-16(%rbp), %rax	# b, tmp204
	movq	%rdx, 56(%rax)	# D.14889, b_77->count
	.loc 1 2019 0 discriminator 3
	movq	-88(%rbp), %rax	# bb, tmp205
	movq	96(%rax), %rdx	# bb_15(D)->count, D.14889
	movq	-8(%rbp), %rax	# f, tmp206
	movl	52(%rax), %eax	# f_84->probability, D.14886
	cltq
	movq	%rdx, %rcx	# D.14889, D.14889
	imulq	%rax, %rcx	# D.14889, D.14889
	movabsq	$3777893186295716171, %rdx	#, tmp208
	movq	%rcx, %rax	# D.14889, tmp232
	imulq	%rdx	# tmp208
	sarq	$11, %rdx	#, tmp209
	movq	%rcx, %rax	# D.14889, tmp210
	sarq	$63, %rax	#, tmp210
	subq	%rax, %rdx	# tmp210, D.14889
	movq	-8(%rbp), %rax	# f, tmp211
	movq	%rdx, 56(%rax)	# D.14889, f_84->count
.L418:
	.loc 1 2022 0
	movzbl	-65(%rbp), %eax	# purged, D.14883
	jmp	.L405	#
.L403:
.LBE48:
	.loc 1 2030 0
	movq	-88(%rbp), %rax	# bb, tmp212
	movq	40(%rax), %rax	# bb_15(D)->succ, tmp213
	movq	%rax, -64(%rbp)	# tmp213, e
	jmp	.L424	#
.L426:
	.loc 1 2031 0
	movq	-64(%rbp), %rax	# e, tmp214
	movq	8(%rax), %rax	# e_3->succ_next, tmp215
	movq	%rax, -64(%rbp)	# tmp215, e
.L424:
	.loc 1 2030 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	je	.L425	#,
	.loc 1 2030 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# e, tmp216
	movl	48(%rax), %eax	# e_3->flags, D.14886
	andl	$15, %eax	#, D.14886
	testl	%eax, %eax	# D.14886
	jne	.L426	#,
.L425:
	.loc 1 2034 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L427	#,
	.loc 1 2035 0
	movzbl	-65(%rbp), %eax	# purged, D.14883
	jmp	.L405	#
.L427:
	.loc 1 2037 0
	movq	-88(%rbp), %rax	# bb, tmp217
	movq	40(%rax), %rax	# bb_15(D)->succ, tmp218
	movq	%rax, -64(%rbp)	# tmp218, e
	jmp	.L428	#
.L430:
	.loc 1 2039 0
	movq	-64(%rbp), %rax	# e, tmp219
	movq	8(%rax), %rax	# e_4->succ_next, tmp220
	movq	%rax, -32(%rbp)	# tmp220, next
	.loc 1 2040 0
	movq	-64(%rbp), %rax	# e, tmp221
	movl	48(%rax), %eax	# e_4->flags, D.14886
	andl	$1, %eax	#, D.14886
	testl	%eax, %eax	# D.14886
	jne	.L429	#,
	.loc 1 2041 0
	movq	-64(%rbp), %rax	# e, tmp222
	movq	%rax, %rdi	# tmp222,
	call	remove_edge	#
	movb	$1, -65(%rbp)	#, purged
.L429:
	.loc 1 2037 0
	movq	-32(%rbp), %rax	# next, tmp223
	movq	%rax, -64(%rbp)	# tmp223, e
.L428:
	.loc 1 2037 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L430	#,
	.loc 1 2044 0 is_stmt 1
	movq	-88(%rbp), %rax	# bb, tmp224
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	testq	%rax, %rax	# D.14888
	je	.L431	#,
	.loc 1 2044 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# bb, tmp225
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	movq	8(%rax), %rax	# _114->succ_next, D.14888
	testq	%rax, %rax	# D.14888
	je	.L432	#,
.L431:
	.loc 1 2045 0 is_stmt 1
	movl	$__FUNCTION__.12900, %edx	#,
	movl	$2045, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L432:
	.loc 1 2047 0
	movq	-88(%rbp), %rax	# bb, tmp226
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	movl	$10000, 52(%rax)	#, _116->probability
	.loc 1 2048 0
	movq	-88(%rbp), %rax	# bb, tmp227
	movq	40(%rax), %rax	# bb_15(D)->succ, D.14888
	movq	-88(%rbp), %rdx	# bb, tmp228
	movq	96(%rdx), %rdx	# bb_15(D)->count, D.14889
	movq	%rdx, 56(%rax)	# D.14889, _117->count
	.loc 1 2050 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.93
	testq	%rax, %rax	# rtl_dump_file.93
	je	.L433	#,
	.loc 1 2051 0
	movq	-88(%rbp), %rax	# bb, tmp229
	movl	88(%rax), %edx	# bb_15(D)->index, D.14886
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.94
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.94,
	movl	$0, %eax	#,
	call	fprintf	#
.L433:
	.loc 1 2053 0
	movzbl	-65(%rbp), %eax	# purged, D.14883
.L405:
	.loc 1 2054 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	purge_dead_edges, .-purge_dead_edges
	.globl	purge_all_dead_edges
	.type	purge_all_dead_edges, @function
purge_all_dead_edges:
.LFB37:
	.loc 1 2062 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# update_life_p, update_life_p
	.loc 1 2063 0
	movl	$0, -12(%rbp)	#, purged
	.loc 1 2064 0
	movq	$0, -8(%rbp)	#, blocks
	.loc 1 2066 0
	cmpl	$0, -36(%rbp)	#, update_life_p
	je	.L435	#,
	.loc 1 2068 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.95
	movl	%eax, %edi	# n_basic_blocks.96,
	call	sbitmap_alloc	#
	movq	%rax, -8(%rbp)	# tmp73, blocks
	.loc 1 2069 0
	movq	-8(%rbp), %rax	# blocks, tmp74
	movq	%rax, %rdi	# tmp74,
	call	sbitmap_zero	#
.L435:
	.loc 1 2072 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L436	#
.L438:
.LBB49:
	.loc 1 2074 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.97
	movl	-16(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, tmp75
	addq	$4, %rdx	#, tmp77
	movq	(%rax,%rdx,8), %rax	# basic_block_info.97_12->data.bb, D.14892
	movq	%rax, %rdi	# D.14892,
	call	purge_dead_edges	#
	movb	%al, -17(%rbp)	# tmp78, purged_here
	.loc 1 2076 0
	movzbl	-17(%rbp), %eax	# purged_here, D.14893
	orl	%eax, -12(%rbp)	# D.14893, purged
	.loc 1 2077 0
	cmpb	$0, -17(%rbp)	#, purged_here
	je	.L437	#,
	.loc 1 2077 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, update_life_p
	je	.L437	#,
	.loc 1 2078 0 is_stmt 1
	movl	-16(%rbp), %eax	# i, i.98
	shrl	$6, %eax	#, D.14894
	movq	-8(%rbp), %rdx	# blocks, tmp79
	movl	%eax, %ecx	# D.14894, tmp80
	addq	$2, %rcx	#, tmp81
	movq	(%rdx,%rcx,8), %rdx	# blocks_3->elms, D.14895
	movl	-16(%rbp), %ecx	# i, tmp82
	andl	$63, %ecx	#, D.14893
	movl	$1, %esi	#, tmp83
	salq	%cl, %rsi	# D.14893, D.14895
	movq	%rsi, %rcx	# D.14895, D.14895
	orq	%rdx, %rcx	# D.14895, D.14895
	movq	-8(%rbp), %rdx	# blocks, tmp84
	movl	%eax, %eax	# D.14894, tmp85
	addq	$2, %rax	#, tmp86
	movq	%rcx, (%rdx,%rax,8)	# D.14895, blocks_3->elms
.L437:
.LBE49:
	.loc 1 2072 0
	addl	$1, -16(%rbp)	#, i
.L436:
	.loc 1 2072 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.99
	cmpl	%eax, -16(%rbp)	# n_basic_blocks.99, i
	jl	.L438	#,
	.loc 1 2081 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, update_life_p
	je	.L439	#,
	.loc 1 2081 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, purged
	je	.L439	#,
	.loc 1 2082 0 is_stmt 1
	movq	-8(%rbp), %rax	# blocks, tmp87
	movl	$25, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	update_life_info	#
.L439:
	.loc 1 2086 0
	cmpl	$0, -36(%rbp)	#, update_life_p
	je	.L440	#,
	.loc 1 2087 0
	movq	-8(%rbp), %rax	# blocks, tmp88
	movq	%rax, %rdi	# tmp88,
	call	free	#
.L440:
	.loc 1 2088 0
	cmpl	$0, -12(%rbp)	#, purged
	setne	%al	#, D.14896
	.loc 1 2089 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	purge_all_dead_edges, .-purge_all_dead_edges
	.section	.rodata
	.type	__FUNCTION__.12456, @object
	.size	__FUNCTION__.12456, 12
__FUNCTION__.12456:
	.string	"delete_insn"
	.align 16
	.type	__FUNCTION__.12598, @object
	.size	__FUNCTION__.12598, 31
__FUNCTION__.12598:
	.string	"try_redirect_by_replacing_jump"
	.align 16
	.type	__FUNCTION__.12629, @object
	.size	__FUNCTION__.12629, 25
__FUNCTION__.12629:
	.string	"redirect_edge_and_branch"
	.align 16
	.type	__FUNCTION__.12638, @object
	.size	__FUNCTION__.12638, 31
__FUNCTION__.12638:
	.string	"force_nonfallthru_and_redirect"
	.type	__FUNCTION__.12699, @object
	.size	__FUNCTION__.12699, 11
__FUNCTION__.12699:
	.string	"split_edge"
	.align 16
	.type	__FUNCTION__.12722, @object
	.size	__FUNCTION__.12722, 20
__FUNCTION__.12722:
	.string	"insert_insn_on_edge"
	.align 16
	.type	__FUNCTION__.12735, @object
	.size	__FUNCTION__.12735, 26
__FUNCTION__.12735:
	.string	"commit_one_edge_insertion"
	.align 16
	.type	__FUNCTION__.12833, @object
	.size	__FUNCTION__.12833, 17
__FUNCTION__.12833:
	.string	"verify_flow_info"
	.align 16
	.type	__FUNCTION__.12900, @object
	.size	__FUNCTION__.12900, 17
__FUNCTION__.12900:
	.string	"purge_dead_edges"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "i386.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "machmode.h"
	.file 11 "real.h"
	.file 12 "obstack.h"
	.file 13 "hashtable.h"
	.file 14 "function.h"
	.file 15 "bitmap.h"
	.file 16 "basic-block.h"
	.file 17 "sbitmap.h"
	.file 18 "varray.h"
	.file 19 "regs.h"
	.file 20 "flags.h"
	.file 21 "output.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4276
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1009
	.byte	0x1
	.long	.LASF1010
	.long	.LASF1011
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
	.long	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x22d7
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
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0x22e7
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
	.long	.LASF717
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x9bb
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0xb7b
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0xbde
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0xc97
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0xc13
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0xc55
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0xe15
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x16ce
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0xfa4
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0xe3c
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0xe71
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0xeb4
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0xee9
	.byte	0
	.uleb128 0xc
	.long	0x1e3
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0xf
	.long	.LASF111
	.byte	0x4
	.byte	0x5
	.value	0x4b2
	.long	0x29b
	.uleb128 0x10
	.long	.LASF28
	.sleb128 0
	.uleb128 0x10
	.long	.LASF29
	.sleb128 1
	.uleb128 0x10
	.long	.LASF30
	.sleb128 2
	.uleb128 0x10
	.long	.LASF31
	.sleb128 3
	.uleb128 0x10
	.long	.LASF32
	.sleb128 4
	.uleb128 0x10
	.long	.LASF33
	.sleb128 5
	.uleb128 0x10
	.long	.LASF34
	.sleb128 6
	.uleb128 0x10
	.long	.LASF35
	.sleb128 7
	.uleb128 0x10
	.long	.LASF36
	.sleb128 8
	.uleb128 0x10
	.long	.LASF37
	.sleb128 9
	.uleb128 0x10
	.long	.LASF38
	.sleb128 10
	.uleb128 0x10
	.long	.LASF39
	.sleb128 11
	.uleb128 0x10
	.long	.LASF40
	.sleb128 12
	.uleb128 0x10
	.long	.LASF41
	.sleb128 13
	.uleb128 0x10
	.long	.LASF42
	.sleb128 14
	.uleb128 0x10
	.long	.LASF43
	.sleb128 15
	.uleb128 0x10
	.long	.LASF44
	.sleb128 16
	.uleb128 0x10
	.long	.LASF45
	.sleb128 17
	.uleb128 0x10
	.long	.LASF46
	.sleb128 18
	.uleb128 0x10
	.long	.LASF47
	.sleb128 19
	.uleb128 0x10
	.long	.LASF48
	.sleb128 20
	.uleb128 0x10
	.long	.LASF49
	.sleb128 21
	.uleb128 0x10
	.long	.LASF50
	.sleb128 22
	.uleb128 0x10
	.long	.LASF51
	.sleb128 23
	.uleb128 0x10
	.long	.LASF52
	.sleb128 24
	.uleb128 0x10
	.long	.LASF53
	.sleb128 25
	.byte	0
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1c
	.byte	0x5
	.value	0x683
	.long	0x304
	.uleb128 0x12
	.long	.LASF55
	.byte	0x5
	.value	0x684
	.long	0x1e3
	.byte	0
	.uleb128 0x12
	.long	.LASF56
	.byte	0x5
	.value	0x685
	.long	0x1e3
	.byte	0x4
	.uleb128 0x12
	.long	.LASF57
	.byte	0x5
	.value	0x686
	.long	0x1e3
	.byte	0x8
	.uleb128 0x12
	.long	.LASF58
	.byte	0x5
	.value	0x687
	.long	0x1e3
	.byte	0xc
	.uleb128 0x12
	.long	.LASF59
	.byte	0x5
	.value	0x688
	.long	0x1e3
	.byte	0x10
	.uleb128 0x12
	.long	.LASF60
	.byte	0x5
	.value	0x689
	.long	0x1e3
	.byte	0x14
	.uleb128 0x12
	.long	.LASF61
	.byte	0x5
	.value	0x68a
	.long	0x1e3
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.long	.LASF62
	.byte	0x5
	.value	0x68b
	.long	0x29b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF63
	.uleb128 0x14
	.byte	0x8
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF64
	.uleb128 0x7
	.long	.LASF65
	.byte	0x6
	.byte	0xd4
	.long	0x32b
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF66
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF67
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF68
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF69
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF70
	.uleb128 0x7
	.long	.LASF71
	.byte	0x7
	.byte	0x8c
	.long	0x319
	.uleb128 0x7
	.long	.LASF72
	.byte	0x7
	.byte	0x8d
	.long	0x319
	.uleb128 0x3
	.byte	0x8
	.long	0x36a
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF73
	.uleb128 0x7
	.long	.LASF74
	.byte	0x8
	.byte	0x30
	.long	0x37c
	.uleb128 0x4
	.long	.LASF75
	.byte	0xd8
	.byte	0x9
	.byte	0xf6
	.long	0x4fd
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0xf7
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0xfc
	.long	0x364
	.byte	0x8
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0xfd
	.long	0x364
	.byte	0x10
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0xfe
	.long	0x364
	.byte	0x18
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0xff
	.long	0x364
	.byte	0x20
	.uleb128 0x12
	.long	.LASF81
	.byte	0x9
	.value	0x100
	.long	0x364
	.byte	0x28
	.uleb128 0x12
	.long	.LASF82
	.byte	0x9
	.value	0x101
	.long	0x364
	.byte	0x30
	.uleb128 0x12
	.long	.LASF83
	.byte	0x9
	.value	0x102
	.long	0x364
	.byte	0x38
	.uleb128 0x12
	.long	.LASF84
	.byte	0x9
	.value	0x103
	.long	0x364
	.byte	0x40
	.uleb128 0x12
	.long	.LASF85
	.byte	0x9
	.value	0x105
	.long	0x364
	.byte	0x48
	.uleb128 0x12
	.long	.LASF86
	.byte	0x9
	.value	0x106
	.long	0x364
	.byte	0x50
	.uleb128 0x12
	.long	.LASF87
	.byte	0x9
	.value	0x107
	.long	0x364
	.byte	0x58
	.uleb128 0x12
	.long	.LASF88
	.byte	0x9
	.value	0x109
	.long	0x545
	.byte	0x60
	.uleb128 0x12
	.long	.LASF89
	.byte	0x9
	.value	0x10b
	.long	0x54b
	.byte	0x68
	.uleb128 0x12
	.long	.LASF90
	.byte	0x9
	.value	0x10d
	.long	0x1e3
	.byte	0x70
	.uleb128 0x12
	.long	.LASF91
	.byte	0x9
	.value	0x111
	.long	0x1e3
	.byte	0x74
	.uleb128 0x12
	.long	.LASF92
	.byte	0x9
	.value	0x113
	.long	0x34e
	.byte	0x78
	.uleb128 0x12
	.long	.LASF93
	.byte	0x9
	.value	0x117
	.long	0x339
	.byte	0x80
	.uleb128 0x12
	.long	.LASF94
	.byte	0x9
	.value	0x118
	.long	0x340
	.byte	0x82
	.uleb128 0x12
	.long	.LASF95
	.byte	0x9
	.value	0x119
	.long	0x551
	.byte	0x83
	.uleb128 0x12
	.long	.LASF96
	.byte	0x9
	.value	0x11d
	.long	0x561
	.byte	0x88
	.uleb128 0x12
	.long	.LASF97
	.byte	0x9
	.value	0x126
	.long	0x359
	.byte	0x90
	.uleb128 0x12
	.long	.LASF98
	.byte	0x9
	.value	0x12f
	.long	0x317
	.byte	0x98
	.uleb128 0x12
	.long	.LASF99
	.byte	0x9
	.value	0x130
	.long	0x317
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF100
	.byte	0x9
	.value	0x131
	.long	0x317
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF101
	.byte	0x9
	.value	0x132
	.long	0x317
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF102
	.byte	0x9
	.value	0x133
	.long	0x320
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF103
	.byte	0x9
	.value	0x135
	.long	0x1e3
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF104
	.byte	0x9
	.value	0x137
	.long	0x567
	.byte	0xc4
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x50d
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF1012
	.byte	0x9
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF105
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x545
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0xa2
	.long	0x545
	.byte	0
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0xa3
	.long	0x54b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0xa7
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x514
	.uleb128 0x3
	.byte	0x8
	.long	0x37c
	.uleb128 0x15
	.long	0x36a
	.long	0x561
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x50d
	.uleb128 0x15
	.long	0x36a
	.long	0x577
	.uleb128 0x16
	.long	0x1ea
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x57d
	.uleb128 0xc
	.long	0x36a
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF109
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF110
	.uleb128 0x18
	.long	.LASF112
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.long	0x705
	.uleb128 0x10
	.long	.LASF113
	.sleb128 0
	.uleb128 0x10
	.long	.LASF114
	.sleb128 1
	.uleb128 0x10
	.long	.LASF115
	.sleb128 2
	.uleb128 0x10
	.long	.LASF116
	.sleb128 3
	.uleb128 0x10
	.long	.LASF117
	.sleb128 4
	.uleb128 0x10
	.long	.LASF118
	.sleb128 5
	.uleb128 0x10
	.long	.LASF119
	.sleb128 6
	.uleb128 0x10
	.long	.LASF120
	.sleb128 7
	.uleb128 0x10
	.long	.LASF121
	.sleb128 8
	.uleb128 0x10
	.long	.LASF122
	.sleb128 9
	.uleb128 0x10
	.long	.LASF123
	.sleb128 10
	.uleb128 0x10
	.long	.LASF124
	.sleb128 11
	.uleb128 0x10
	.long	.LASF125
	.sleb128 12
	.uleb128 0x10
	.long	.LASF126
	.sleb128 13
	.uleb128 0x10
	.long	.LASF127
	.sleb128 14
	.uleb128 0x10
	.long	.LASF128
	.sleb128 15
	.uleb128 0x10
	.long	.LASF129
	.sleb128 16
	.uleb128 0x10
	.long	.LASF130
	.sleb128 17
	.uleb128 0x10
	.long	.LASF131
	.sleb128 18
	.uleb128 0x10
	.long	.LASF132
	.sleb128 19
	.uleb128 0x10
	.long	.LASF133
	.sleb128 20
	.uleb128 0x10
	.long	.LASF134
	.sleb128 21
	.uleb128 0x10
	.long	.LASF135
	.sleb128 22
	.uleb128 0x10
	.long	.LASF136
	.sleb128 23
	.uleb128 0x10
	.long	.LASF137
	.sleb128 24
	.uleb128 0x10
	.long	.LASF138
	.sleb128 25
	.uleb128 0x10
	.long	.LASF139
	.sleb128 26
	.uleb128 0x10
	.long	.LASF140
	.sleb128 27
	.uleb128 0x10
	.long	.LASF141
	.sleb128 28
	.uleb128 0x10
	.long	.LASF142
	.sleb128 29
	.uleb128 0x10
	.long	.LASF143
	.sleb128 30
	.uleb128 0x10
	.long	.LASF144
	.sleb128 31
	.uleb128 0x10
	.long	.LASF145
	.sleb128 32
	.uleb128 0x10
	.long	.LASF146
	.sleb128 33
	.uleb128 0x10
	.long	.LASF147
	.sleb128 34
	.uleb128 0x10
	.long	.LASF148
	.sleb128 35
	.uleb128 0x10
	.long	.LASF149
	.sleb128 36
	.uleb128 0x10
	.long	.LASF150
	.sleb128 37
	.uleb128 0x10
	.long	.LASF151
	.sleb128 38
	.uleb128 0x10
	.long	.LASF152
	.sleb128 39
	.uleb128 0x10
	.long	.LASF153
	.sleb128 40
	.uleb128 0x10
	.long	.LASF154
	.sleb128 41
	.uleb128 0x10
	.long	.LASF155
	.sleb128 42
	.uleb128 0x10
	.long	.LASF156
	.sleb128 43
	.uleb128 0x10
	.long	.LASF157
	.sleb128 44
	.uleb128 0x10
	.long	.LASF158
	.sleb128 45
	.uleb128 0x10
	.long	.LASF159
	.sleb128 46
	.uleb128 0x10
	.long	.LASF160
	.sleb128 47
	.uleb128 0x10
	.long	.LASF161
	.sleb128 48
	.uleb128 0x10
	.long	.LASF162
	.sleb128 49
	.uleb128 0x10
	.long	.LASF163
	.sleb128 50
	.uleb128 0x10
	.long	.LASF164
	.sleb128 51
	.uleb128 0x10
	.long	.LASF165
	.sleb128 52
	.uleb128 0x10
	.long	.LASF166
	.sleb128 53
	.uleb128 0x10
	.long	.LASF167
	.sleb128 54
	.uleb128 0x10
	.long	.LASF168
	.sleb128 55
	.uleb128 0x10
	.long	.LASF169
	.sleb128 56
	.uleb128 0x10
	.long	.LASF170
	.sleb128 57
	.uleb128 0x10
	.long	.LASF171
	.sleb128 58
	.uleb128 0x10
	.long	.LASF172
	.sleb128 59
	.byte	0
	.uleb128 0x18
	.long	.LASF173
	.byte	0x4
	.byte	0xa
	.byte	0x2c
	.long	0x74e
	.uleb128 0x10
	.long	.LASF174
	.sleb128 0
	.uleb128 0x10
	.long	.LASF175
	.sleb128 1
	.uleb128 0x10
	.long	.LASF176
	.sleb128 2
	.uleb128 0x10
	.long	.LASF177
	.sleb128 3
	.uleb128 0x10
	.long	.LASF178
	.sleb128 4
	.uleb128 0x10
	.long	.LASF179
	.sleb128 5
	.uleb128 0x10
	.long	.LASF180
	.sleb128 6
	.uleb128 0x10
	.long	.LASF181
	.sleb128 7
	.uleb128 0x10
	.long	.LASF182
	.sleb128 8
	.uleb128 0x10
	.long	.LASF183
	.sleb128 9
	.byte	0
	.uleb128 0x18
	.long	.LASF184
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x9bb
	.uleb128 0x10
	.long	.LASF185
	.sleb128 0
	.uleb128 0x10
	.long	.LASF186
	.sleb128 1
	.uleb128 0x10
	.long	.LASF187
	.sleb128 2
	.uleb128 0x10
	.long	.LASF188
	.sleb128 3
	.uleb128 0x10
	.long	.LASF189
	.sleb128 4
	.uleb128 0x10
	.long	.LASF190
	.sleb128 5
	.uleb128 0x10
	.long	.LASF191
	.sleb128 6
	.uleb128 0x10
	.long	.LASF192
	.sleb128 7
	.uleb128 0x10
	.long	.LASF193
	.sleb128 8
	.uleb128 0x10
	.long	.LASF194
	.sleb128 9
	.uleb128 0x10
	.long	.LASF195
	.sleb128 10
	.uleb128 0x10
	.long	.LASF196
	.sleb128 11
	.uleb128 0x10
	.long	.LASF197
	.sleb128 12
	.uleb128 0x10
	.long	.LASF198
	.sleb128 13
	.uleb128 0x10
	.long	.LASF199
	.sleb128 14
	.uleb128 0x10
	.long	.LASF200
	.sleb128 15
	.uleb128 0x10
	.long	.LASF201
	.sleb128 16
	.uleb128 0x10
	.long	.LASF202
	.sleb128 17
	.uleb128 0x10
	.long	.LASF203
	.sleb128 18
	.uleb128 0x10
	.long	.LASF204
	.sleb128 19
	.uleb128 0x10
	.long	.LASF205
	.sleb128 20
	.uleb128 0x10
	.long	.LASF206
	.sleb128 21
	.uleb128 0x10
	.long	.LASF207
	.sleb128 22
	.uleb128 0x10
	.long	.LASF208
	.sleb128 23
	.uleb128 0x10
	.long	.LASF209
	.sleb128 24
	.uleb128 0x10
	.long	.LASF210
	.sleb128 25
	.uleb128 0x10
	.long	.LASF211
	.sleb128 26
	.uleb128 0x10
	.long	.LASF212
	.sleb128 27
	.uleb128 0x10
	.long	.LASF213
	.sleb128 28
	.uleb128 0x10
	.long	.LASF214
	.sleb128 29
	.uleb128 0x10
	.long	.LASF215
	.sleb128 30
	.uleb128 0x10
	.long	.LASF216
	.sleb128 31
	.uleb128 0x10
	.long	.LASF217
	.sleb128 32
	.uleb128 0x10
	.long	.LASF218
	.sleb128 33
	.uleb128 0x10
	.long	.LASF219
	.sleb128 34
	.uleb128 0x10
	.long	.LASF220
	.sleb128 35
	.uleb128 0x10
	.long	.LASF221
	.sleb128 36
	.uleb128 0x10
	.long	.LASF222
	.sleb128 37
	.uleb128 0x10
	.long	.LASF223
	.sleb128 38
	.uleb128 0x10
	.long	.LASF224
	.sleb128 39
	.uleb128 0x10
	.long	.LASF225
	.sleb128 40
	.uleb128 0x10
	.long	.LASF226
	.sleb128 41
	.uleb128 0x10
	.long	.LASF227
	.sleb128 42
	.uleb128 0x10
	.long	.LASF228
	.sleb128 43
	.uleb128 0x10
	.long	.LASF229
	.sleb128 44
	.uleb128 0x10
	.long	.LASF230
	.sleb128 45
	.uleb128 0x10
	.long	.LASF231
	.sleb128 46
	.uleb128 0x10
	.long	.LASF232
	.sleb128 47
	.uleb128 0x10
	.long	.LASF233
	.sleb128 48
	.uleb128 0x10
	.long	.LASF234
	.sleb128 49
	.uleb128 0x10
	.long	.LASF235
	.sleb128 50
	.uleb128 0x10
	.long	.LASF236
	.sleb128 51
	.uleb128 0x10
	.long	.LASF237
	.sleb128 52
	.uleb128 0x10
	.long	.LASF238
	.sleb128 53
	.uleb128 0x10
	.long	.LASF239
	.sleb128 54
	.uleb128 0x10
	.long	.LASF240
	.sleb128 55
	.uleb128 0x10
	.long	.LASF241
	.sleb128 56
	.uleb128 0x10
	.long	.LASF242
	.sleb128 57
	.uleb128 0x10
	.long	.LASF243
	.sleb128 58
	.uleb128 0x10
	.long	.LASF244
	.sleb128 59
	.uleb128 0x10
	.long	.LASF245
	.sleb128 60
	.uleb128 0x10
	.long	.LASF246
	.sleb128 61
	.uleb128 0x10
	.long	.LASF247
	.sleb128 62
	.uleb128 0x10
	.long	.LASF248
	.sleb128 63
	.uleb128 0x10
	.long	.LASF249
	.sleb128 64
	.uleb128 0x10
	.long	.LASF250
	.sleb128 65
	.uleb128 0x10
	.long	.LASF251
	.sleb128 66
	.uleb128 0x10
	.long	.LASF252
	.sleb128 67
	.uleb128 0x10
	.long	.LASF253
	.sleb128 68
	.uleb128 0x10
	.long	.LASF254
	.sleb128 69
	.uleb128 0x10
	.long	.LASF255
	.sleb128 70
	.uleb128 0x10
	.long	.LASF256
	.sleb128 71
	.uleb128 0x10
	.long	.LASF257
	.sleb128 72
	.uleb128 0x10
	.long	.LASF258
	.sleb128 73
	.uleb128 0x10
	.long	.LASF259
	.sleb128 74
	.uleb128 0x10
	.long	.LASF260
	.sleb128 75
	.uleb128 0x10
	.long	.LASF261
	.sleb128 76
	.uleb128 0x10
	.long	.LASF262
	.sleb128 77
	.uleb128 0x10
	.long	.LASF263
	.sleb128 78
	.uleb128 0x10
	.long	.LASF264
	.sleb128 79
	.uleb128 0x10
	.long	.LASF265
	.sleb128 80
	.uleb128 0x10
	.long	.LASF266
	.sleb128 81
	.uleb128 0x10
	.long	.LASF267
	.sleb128 82
	.uleb128 0x10
	.long	.LASF268
	.sleb128 83
	.uleb128 0x10
	.long	.LASF269
	.sleb128 84
	.uleb128 0x10
	.long	.LASF270
	.sleb128 85
	.uleb128 0x10
	.long	.LASF271
	.sleb128 86
	.uleb128 0x10
	.long	.LASF272
	.sleb128 87
	.uleb128 0x10
	.long	.LASF273
	.sleb128 88
	.uleb128 0x10
	.long	.LASF274
	.sleb128 89
	.uleb128 0x10
	.long	.LASF275
	.sleb128 90
	.uleb128 0x10
	.long	.LASF276
	.sleb128 91
	.uleb128 0x10
	.long	.LASF277
	.sleb128 92
	.uleb128 0x10
	.long	.LASF278
	.sleb128 93
	.uleb128 0x10
	.long	.LASF279
	.sleb128 94
	.uleb128 0x10
	.long	.LASF280
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF281
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0xb57
	.uleb128 0x8
	.long	.LASF282
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
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF283
	.byte	0x4
	.byte	0x80
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF284
	.byte	0x4
	.byte	0x81
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF285
	.byte	0x4
	.byte	0x82
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF286
	.byte	0x4
	.byte	0x83
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF287
	.byte	0x4
	.byte	0x84
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF288
	.byte	0x4
	.byte	0x85
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF289
	.byte	0x4
	.byte	0x86
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF290
	.byte	0x4
	.byte	0x87
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF291
	.byte	0x4
	.byte	0x89
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF292
	.byte	0x4
	.byte	0x8a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF293
	.byte	0x4
	.byte	0x8b
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF294
	.byte	0x4
	.byte	0x8c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF295
	.byte	0x4
	.byte	0x8d
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF296
	.byte	0x4
	.byte	0x8e
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF297
	.byte	0x4
	.byte	0x8f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF298
	.byte	0x4
	.byte	0x90
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF299
	.byte	0x4
	.byte	0x92
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF300
	.byte	0x4
	.byte	0x93
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF301
	.byte	0x4
	.byte	0x94
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF302
	.byte	0x4
	.byte	0x95
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF303
	.byte	0x4
	.byte	0x96
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF304
	.byte	0x4
	.byte	0x97
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF305
	.byte	0x4
	.byte	0x98
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF306
	.byte	0x4
	.byte	0x99
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0xb7b
	.uleb128 0x1a
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x32b
	.byte	0
	.uleb128 0x12
	.long	.LASF307
	.byte	0x4
	.value	0x2cb
	.long	0x319
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF308
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0xbb0
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x9bb
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0xb57
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.byte	0x18
	.byte	0xb
	.byte	0x6b
	.long	0xbc3
	.uleb128 0x6
	.string	"r"
	.byte	0xb
	.byte	0x6c
	.long	0xbc3
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x319
	.long	0xbd3
	.uleb128 0x16
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF309
	.byte	0xb
	.byte	0x6d
	.long	0xbb0
	.uleb128 0x11
	.long	.LASF310
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0xc13
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x9bb
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0xbd3
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF311
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0xc55
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x9bb
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF312
	.byte	0x4
	.value	0x2ed
	.long	0x1e3
	.byte	0x20
	.uleb128 0x12
	.long	.LASF313
	.byte	0x4
	.value	0x2ee
	.long	0x577
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF314
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0xc97
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x9bb
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF315
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF316
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF317
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0xccc
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x9bb
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF318
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF319
	.byte	0x18
	.byte	0xc
	.byte	0xa1
	.long	0xcfd
	.uleb128 0x8
	.long	.LASF320
	.byte	0xc
	.byte	0xa3
	.long	0x364
	.byte	0
	.uleb128 0x8
	.long	.LASF321
	.byte	0xc
	.byte	0xa4
	.long	0xcfd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF322
	.byte	0xc
	.byte	0xa5
	.long	0x4fd
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xccc
	.uleb128 0x4
	.long	.LASF323
	.byte	0x58
	.byte	0xc
	.byte	0xa8
	.long	0xdb5
	.uleb128 0x8
	.long	.LASF324
	.byte	0xc
	.byte	0xaa
	.long	0x319
	.byte	0
	.uleb128 0x8
	.long	.LASF325
	.byte	0xc
	.byte	0xab
	.long	0xcfd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF326
	.byte	0xc
	.byte	0xac
	.long	0x364
	.byte	0x10
	.uleb128 0x8
	.long	.LASF327
	.byte	0xc
	.byte	0xad
	.long	0x364
	.byte	0x18
	.uleb128 0x8
	.long	.LASF328
	.byte	0xc
	.byte	0xae
	.long	0x364
	.byte	0x20
	.uleb128 0x8
	.long	.LASF329
	.byte	0xc
	.byte	0xaf
	.long	0x319
	.byte	0x28
	.uleb128 0x8
	.long	.LASF330
	.byte	0xc
	.byte	0xb0
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF331
	.byte	0xc
	.byte	0xb5
	.long	0xdc9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF332
	.byte	0xc
	.byte	0xb6
	.long	0xddf
	.byte	0x40
	.uleb128 0x8
	.long	.LASF333
	.byte	0xc
	.byte	0xb7
	.long	0x317
	.byte	0x48
	.uleb128 0x5
	.long	.LASF334
	.byte	0xc
	.byte	0xbd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF335
	.byte	0xc
	.byte	0xbe
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF336
	.byte	0xc
	.byte	0xc2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x1c
	.long	0xcfd
	.long	0xdc9
	.uleb128 0x1d
	.long	0x317
	.uleb128 0x1d
	.long	0x319
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xdb5
	.uleb128 0x1e
	.long	0xddf
	.uleb128 0x1d
	.long	0x317
	.uleb128 0x1d
	.long	0xcfd
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xdcf
	.uleb128 0x4
	.long	.LASF337
	.byte	0x10
	.byte	0xd
	.byte	0x1a
	.long	0xe0a
	.uleb128 0x6
	.string	"len"
	.byte	0xd
	.byte	0x1c
	.long	0x310
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xd
	.byte	0x1d
	.long	0xe0a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe10
	.uleb128 0xc
	.long	0x332
	.uleb128 0x11
	.long	.LASF338
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0xe3c
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x9bb
	.byte	0
	.uleb128 0x1a
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0xde5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF339
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0xe71
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x9bb
	.byte	0
	.uleb128 0x12
	.long	.LASF340
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF341
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF342
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0xea4
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x9bb
	.byte	0
	.uleb128 0x12
	.long	.LASF312
	.byte	0x4
	.value	0x331
	.long	0x1e3
	.byte	0x18
	.uleb128 0x1a
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0xea4
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.long	0x123
	.long	0xeb4
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF343
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0xee9
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x9bb
	.byte	0
	.uleb128 0x12
	.long	.LASF344
	.byte	0x4
	.value	0x372
	.long	0x1e3
	.byte	0x18
	.uleb128 0x12
	.long	.LASF345
	.byte	0x4
	.value	0x373
	.long	0xea4
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF346
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0xf82
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x9bb
	.byte	0
	.uleb128 0x1f
	.long	.LASF347
	.byte	0x4
	.value	0x3a7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF348
	.byte	0x4
	.value	0x3a8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF349
	.byte	0x4
	.value	0x3a9
	.long	0x310
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x12
	.long	.LASF350
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF351
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF352
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x12
	.long	.LASF353
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x12
	.long	.LASF354
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF355
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0xfa4
	.uleb128 0xa
	.long	.LASF356
	.byte	0x4
	.value	0x4d8
	.long	0x1e3
	.uleb128 0xa
	.long	.LASF313
	.byte	0x4
	.value	0x4d8
	.long	0x364
	.byte	0
	.uleb128 0x11
	.long	.LASF357
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x11b9
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x9bb
	.byte	0
	.uleb128 0x12
	.long	.LASF358
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF359
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF360
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF361
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x1a
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x310
	.byte	0x38
	.uleb128 0x1f
	.long	.LASF362
	.byte	0x4
	.value	0x4c1
	.long	0x310
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x310
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF363
	.byte	0x4
	.value	0x4c4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF364
	.byte	0x4
	.value	0x4c5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF365
	.byte	0x4
	.value	0x4c6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF366
	.byte	0x4
	.value	0x4c7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF367
	.byte	0x4
	.value	0x4c8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF368
	.byte	0x4
	.value	0x4c9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF369
	.byte	0x4
	.value	0x4ca
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF299
	.byte	0x4
	.value	0x4cc
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF300
	.byte	0x4
	.value	0x4cd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF301
	.byte	0x4
	.value	0x4ce
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF302
	.byte	0x4
	.value	0x4cf
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF303
	.byte	0x4
	.value	0x4d0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF304
	.byte	0x4
	.value	0x4d1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF305
	.byte	0x4
	.value	0x4d2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF370
	.byte	0x4
	.value	0x4d3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF371
	.byte	0x4
	.value	0x4d5
	.long	0x310
	.byte	0x40
	.uleb128 0x12
	.long	.LASF372
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF373
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF374
	.byte	0x4
	.value	0x4d8
	.long	0xf82
	.byte	0x58
	.uleb128 0x12
	.long	.LASF375
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF376
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF377
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF378
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF379
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF380
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x12
	.long	.LASF381
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x12
	.long	.LASF382
	.byte	0x4
	.value	0x4e0
	.long	0x319
	.byte	0x98
	.uleb128 0x12
	.long	.LASF383
	.byte	0x4
	.value	0x4e2
	.long	0x11be
	.byte	0xa0
	.byte	0
	.uleb128 0x21
	.long	.LASF501
	.uleb128 0x3
	.byte	0x8
	.long	0x11b9
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x11ee
	.uleb128 0x1f
	.long	.LASF371
	.byte	0x4
	.value	0x717
	.long	0x310
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF384
	.byte	0x4
	.value	0x717
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1216
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x74e
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x319
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x11c4
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1248
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x16c8
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
	.long	0x1e3
	.byte	0
	.uleb128 0x22
	.long	.LASF385
	.value	0x1b0
	.byte	0xe
	.byte	0xae
	.long	0x16c8
	.uleb128 0x6
	.string	"eh"
	.byte	0xe
	.byte	0xb0
	.long	0x2b2f
	.byte	0
	.uleb128 0x8
	.long	.LASF386
	.byte	0xe
	.byte	0xb1
	.long	0x2b3a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF387
	.byte	0xe
	.byte	0xb2
	.long	0x2b40
	.byte	0x10
	.uleb128 0x8
	.long	.LASF388
	.byte	0xe
	.byte	0xb3
	.long	0x2b46
	.byte	0x18
	.uleb128 0x8
	.long	.LASF389
	.byte	0xe
	.byte	0xb4
	.long	0x2b51
	.byte	0x20
	.uleb128 0x8
	.long	.LASF375
	.byte	0xe
	.byte	0xb9
	.long	0x577
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0xe
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF390
	.byte	0xe
	.byte	0xbf
	.long	0x16c8
	.byte	0x38
	.uleb128 0x8
	.long	.LASF391
	.byte	0xe
	.byte	0xc4
	.long	0x1e3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF392
	.byte	0xe
	.byte	0xc9
	.long	0x1e3
	.byte	0x44
	.uleb128 0x8
	.long	.LASF393
	.byte	0xe
	.byte	0xce
	.long	0x1e3
	.byte	0x48
	.uleb128 0x8
	.long	.LASF394
	.byte	0xe
	.byte	0xd2
	.long	0x1e3
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF395
	.byte	0xe
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF396
	.byte	0xe
	.byte	0xda
	.long	0x304
	.byte	0x58
	.uleb128 0x8
	.long	.LASF397
	.byte	0xe
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF398
	.byte	0xe
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF399
	.byte	0xe
	.byte	0xe7
	.long	0x577
	.byte	0x88
	.uleb128 0x8
	.long	.LASF400
	.byte	0xe
	.byte	0xeb
	.long	0x2b5c
	.byte	0x90
	.uleb128 0x8
	.long	.LASF401
	.byte	0xe
	.byte	0xee
	.long	0x1e3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF402
	.byte	0xe
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF403
	.byte	0xe
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF404
	.byte	0xe
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF405
	.byte	0xe
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF406
	.byte	0xe
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF407
	.byte	0xe
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x12
	.long	.LASF408
	.byte	0xe
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF409
	.byte	0xe
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x12
	.long	.LASF410
	.byte	0xe
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF411
	.byte	0xe
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x12
	.long	.LASF412
	.byte	0xe
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x12
	.long	.LASF413
	.byte	0xe
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x23
	.long	.LASF414
	.byte	0xe
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x23
	.long	.LASF415
	.byte	0xe
	.value	0x12f
	.long	0x319
	.value	0x108
	.uleb128 0x23
	.long	.LASF416
	.byte	0xe
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x23
	.long	.LASF417
	.byte	0xe
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x23
	.long	.LASF418
	.byte	0xe
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x23
	.long	.LASF419
	.byte	0xe
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x23
	.long	.LASF420
	.byte	0xe
	.value	0x148
	.long	0x310
	.value	0x130
	.uleb128 0x23
	.long	.LASF421
	.byte	0xe
	.value	0x14e
	.long	0x2468
	.value	0x138
	.uleb128 0x23
	.long	.LASF422
	.byte	0xe
	.value	0x151
	.long	0x2b67
	.value	0x140
	.uleb128 0x23
	.long	.LASF423
	.byte	0xe
	.value	0x154
	.long	0x1e3
	.value	0x148
	.uleb128 0x23
	.long	.LASF424
	.byte	0xe
	.value	0x157
	.long	0x1e3
	.value	0x14c
	.uleb128 0x23
	.long	.LASF425
	.byte	0xe
	.value	0x15d
	.long	0x1e3
	.value	0x150
	.uleb128 0x23
	.long	.LASF426
	.byte	0xe
	.value	0x161
	.long	0x29cb
	.value	0x158
	.uleb128 0x23
	.long	.LASF427
	.byte	0xe
	.value	0x164
	.long	0x1e3
	.value	0x160
	.uleb128 0x23
	.long	.LASF428
	.byte	0xe
	.value	0x165
	.long	0x1e3
	.value	0x164
	.uleb128 0x23
	.long	.LASF429
	.byte	0xe
	.value	0x167
	.long	0x317
	.value	0x168
	.uleb128 0x23
	.long	.LASF430
	.byte	0xe
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x23
	.long	.LASF431
	.byte	0xe
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x23
	.long	.LASF432
	.byte	0xe
	.value	0x16d
	.long	0x1e3
	.value	0x180
	.uleb128 0x23
	.long	.LASF433
	.byte	0xe
	.value	0x170
	.long	0x1e3
	.value	0x184
	.uleb128 0x23
	.long	.LASF434
	.byte	0xe
	.value	0x175
	.long	0x2b72
	.value	0x188
	.uleb128 0x23
	.long	.LASF435
	.byte	0xe
	.value	0x177
	.long	0x1e3
	.value	0x190
	.uleb128 0x23
	.long	.LASF436
	.byte	0xe
	.value	0x179
	.long	0x1e3
	.value	0x194
	.uleb128 0x23
	.long	.LASF437
	.byte	0xe
	.value	0x17c
	.long	0x2b7d
	.value	0x198
	.uleb128 0x23
	.long	.LASF438
	.byte	0xe
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x24
	.long	.LASF439
	.byte	0xe
	.value	0x188
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF440
	.byte	0xe
	.value	0x18c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF441
	.byte	0xe
	.value	0x18f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF442
	.byte	0xe
	.value	0x192
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF443
	.byte	0xe
	.value	0x195
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF444
	.byte	0xe
	.value	0x198
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF445
	.byte	0xe
	.value	0x19c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF446
	.byte	0xe
	.value	0x19f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF447
	.byte	0xe
	.value	0x1a3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF448
	.byte	0xe
	.value	0x1a7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF449
	.byte	0xe
	.value	0x1aa
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF450
	.byte	0xe
	.value	0x1ad
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF451
	.byte	0xe
	.value	0x1b2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF452
	.byte	0xe
	.value	0x1b6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF453
	.byte	0xe
	.value	0x1b9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF454
	.byte	0xe
	.value	0x1bd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF455
	.byte	0xe
	.value	0x1c1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF456
	.byte	0xe
	.value	0x1c5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF457
	.byte	0xe
	.value	0x1cb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF458
	.byte	0xe
	.value	0x1d4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF459
	.byte	0xe
	.value	0x1d7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF460
	.byte	0xe
	.value	0x1da
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF461
	.byte	0xe
	.value	0x1dd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF462
	.byte	0xe
	.value	0x1e0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1248
	.uleb128 0x11
	.long	.LASF463
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x1a52
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x9bb
	.byte	0
	.uleb128 0x12
	.long	.LASF464
	.byte	0x4
	.value	0x6df
	.long	0x577
	.byte	0x18
	.uleb128 0x12
	.long	.LASF465
	.byte	0x4
	.value	0x6e0
	.long	0x1e3
	.byte	0x20
	.uleb128 0x1a
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x310
	.byte	0x24
	.uleb128 0x12
	.long	.LASF359
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x1f
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF466
	.byte	0x4
	.value	0x6e5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF467
	.byte	0x4
	.value	0x6e6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF468
	.byte	0x4
	.value	0x6e7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF469
	.byte	0x4
	.value	0x6e8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF470
	.byte	0x4
	.value	0x6e9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF471
	.byte	0x4
	.value	0x6ea
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF472
	.byte	0x4
	.value	0x6eb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF348
	.byte	0x4
	.value	0x6ec
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF473
	.byte	0x4
	.value	0x6ee
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF474
	.byte	0x4
	.value	0x6ef
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF475
	.byte	0x4
	.value	0x6f0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF476
	.byte	0x4
	.value	0x6f1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF477
	.byte	0x4
	.value	0x6f2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF478
	.byte	0x4
	.value	0x6f3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF479
	.byte	0x4
	.value	0x6f4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF480
	.byte	0x4
	.value	0x6f5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF481
	.byte	0x4
	.value	0x6f7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF482
	.byte	0x4
	.value	0x6f8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF483
	.byte	0x4
	.value	0x6f9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF484
	.byte	0x4
	.value	0x6fa
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF485
	.byte	0x4
	.value	0x6fb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF486
	.byte	0x4
	.value	0x6fc
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF487
	.byte	0x4
	.value	0x6fd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF369
	.byte	0x4
	.value	0x6ff
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF488
	.byte	0x4
	.value	0x700
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF370
	.byte	0x4
	.value	0x701
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF489
	.byte	0x4
	.value	0x702
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF299
	.byte	0x4
	.value	0x705
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF300
	.byte	0x4
	.value	0x706
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF301
	.byte	0x4
	.value	0x707
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF302
	.byte	0x4
	.value	0x708
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF303
	.byte	0x4
	.value	0x709
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF304
	.byte	0x4
	.value	0x70a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF305
	.byte	0x4
	.value	0x70b
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF490
	.byte	0x4
	.value	0x70c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x1a
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x11ee
	.byte	0x38
	.uleb128 0x12
	.long	.LASF360
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF375
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF381
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF491
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x12
	.long	.LASF492
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF493
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF353
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF494
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF495
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF361
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x12
	.long	.LASF496
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x1a
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1216
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF497
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF498
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF499
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF500
	.byte	0x4
	.value	0x73b
	.long	0x319
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF383
	.byte	0x4
	.value	0x73d
	.long	0x1a57
	.byte	0xc8
	.byte	0
	.uleb128 0x21
	.long	.LASF502
	.uleb128 0x3
	.byte	0x8
	.long	0x1a52
	.uleb128 0xf
	.long	.LASF503
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x1ba3
	.uleb128 0x10
	.long	.LASF504
	.sleb128 0
	.uleb128 0x10
	.long	.LASF505
	.sleb128 1
	.uleb128 0x10
	.long	.LASF506
	.sleb128 2
	.uleb128 0x10
	.long	.LASF507
	.sleb128 3
	.uleb128 0x10
	.long	.LASF508
	.sleb128 4
	.uleb128 0x10
	.long	.LASF509
	.sleb128 5
	.uleb128 0x10
	.long	.LASF510
	.sleb128 6
	.uleb128 0x10
	.long	.LASF511
	.sleb128 7
	.uleb128 0x10
	.long	.LASF512
	.sleb128 8
	.uleb128 0x10
	.long	.LASF513
	.sleb128 9
	.uleb128 0x10
	.long	.LASF514
	.sleb128 10
	.uleb128 0x10
	.long	.LASF515
	.sleb128 11
	.uleb128 0x10
	.long	.LASF516
	.sleb128 12
	.uleb128 0x10
	.long	.LASF517
	.sleb128 13
	.uleb128 0x10
	.long	.LASF518
	.sleb128 14
	.uleb128 0x10
	.long	.LASF519
	.sleb128 15
	.uleb128 0x10
	.long	.LASF520
	.sleb128 16
	.uleb128 0x10
	.long	.LASF521
	.sleb128 17
	.uleb128 0x10
	.long	.LASF522
	.sleb128 18
	.uleb128 0x10
	.long	.LASF523
	.sleb128 19
	.uleb128 0x10
	.long	.LASF524
	.sleb128 20
	.uleb128 0x10
	.long	.LASF525
	.sleb128 21
	.uleb128 0x10
	.long	.LASF526
	.sleb128 22
	.uleb128 0x10
	.long	.LASF527
	.sleb128 23
	.uleb128 0x10
	.long	.LASF528
	.sleb128 24
	.uleb128 0x10
	.long	.LASF529
	.sleb128 25
	.uleb128 0x10
	.long	.LASF530
	.sleb128 26
	.uleb128 0x10
	.long	.LASF531
	.sleb128 27
	.uleb128 0x10
	.long	.LASF532
	.sleb128 28
	.uleb128 0x10
	.long	.LASF533
	.sleb128 29
	.uleb128 0x10
	.long	.LASF534
	.sleb128 30
	.uleb128 0x10
	.long	.LASF535
	.sleb128 31
	.uleb128 0x10
	.long	.LASF536
	.sleb128 32
	.uleb128 0x10
	.long	.LASF537
	.sleb128 33
	.uleb128 0x10
	.long	.LASF538
	.sleb128 34
	.uleb128 0x10
	.long	.LASF539
	.sleb128 35
	.uleb128 0x10
	.long	.LASF540
	.sleb128 36
	.uleb128 0x10
	.long	.LASF541
	.sleb128 37
	.uleb128 0x10
	.long	.LASF542
	.sleb128 38
	.uleb128 0x10
	.long	.LASF543
	.sleb128 39
	.uleb128 0x10
	.long	.LASF544
	.sleb128 40
	.uleb128 0x10
	.long	.LASF545
	.sleb128 41
	.uleb128 0x10
	.long	.LASF546
	.sleb128 42
	.uleb128 0x10
	.long	.LASF547
	.sleb128 43
	.uleb128 0x10
	.long	.LASF548
	.sleb128 44
	.uleb128 0x10
	.long	.LASF549
	.sleb128 45
	.uleb128 0x10
	.long	.LASF550
	.sleb128 46
	.uleb128 0x10
	.long	.LASF551
	.sleb128 47
	.uleb128 0x10
	.long	.LASF552
	.sleb128 48
	.uleb128 0x10
	.long	.LASF553
	.sleb128 49
	.uleb128 0x10
	.long	.LASF554
	.sleb128 50
	.uleb128 0x10
	.long	.LASF555
	.sleb128 51
	.byte	0
	.uleb128 0xf
	.long	.LASF556
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x1bf9
	.uleb128 0x10
	.long	.LASF557
	.sleb128 0
	.uleb128 0x10
	.long	.LASF558
	.sleb128 1
	.uleb128 0x10
	.long	.LASF559
	.sleb128 2
	.uleb128 0x10
	.long	.LASF560
	.sleb128 3
	.uleb128 0x10
	.long	.LASF561
	.sleb128 4
	.uleb128 0x10
	.long	.LASF562
	.sleb128 5
	.uleb128 0x10
	.long	.LASF563
	.sleb128 6
	.uleb128 0x10
	.long	.LASF564
	.sleb128 7
	.uleb128 0x10
	.long	.LASF565
	.sleb128 8
	.uleb128 0x10
	.long	.LASF566
	.sleb128 9
	.uleb128 0x10
	.long	.LASF567
	.sleb128 10
	.uleb128 0x10
	.long	.LASF568
	.sleb128 11
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF569
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0xf
	.long	.LASF570
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x1c3e
	.uleb128 0x10
	.long	.LASF571
	.sleb128 0
	.uleb128 0x10
	.long	.LASF572
	.sleb128 1
	.uleb128 0x10
	.long	.LASF573
	.sleb128 2
	.uleb128 0x10
	.long	.LASF574
	.sleb128 3
	.uleb128 0x10
	.long	.LASF575
	.sleb128 4
	.uleb128 0x10
	.long	.LASF576
	.sleb128 5
	.uleb128 0x10
	.long	.LASF577
	.sleb128 6
	.byte	0
	.uleb128 0x18
	.long	.LASF578
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x203a
	.uleb128 0x10
	.long	.LASF579
	.sleb128 0
	.uleb128 0x25
	.string	"NIL"
	.sleb128 1
	.uleb128 0x10
	.long	.LASF580
	.sleb128 2
	.uleb128 0x10
	.long	.LASF581
	.sleb128 3
	.uleb128 0x10
	.long	.LASF582
	.sleb128 4
	.uleb128 0x10
	.long	.LASF583
	.sleb128 5
	.uleb128 0x10
	.long	.LASF584
	.sleb128 6
	.uleb128 0x10
	.long	.LASF585
	.sleb128 7
	.uleb128 0x10
	.long	.LASF586
	.sleb128 8
	.uleb128 0x10
	.long	.LASF587
	.sleb128 9
	.uleb128 0x10
	.long	.LASF588
	.sleb128 10
	.uleb128 0x10
	.long	.LASF589
	.sleb128 11
	.uleb128 0x10
	.long	.LASF590
	.sleb128 12
	.uleb128 0x10
	.long	.LASF591
	.sleb128 13
	.uleb128 0x10
	.long	.LASF592
	.sleb128 14
	.uleb128 0x10
	.long	.LASF593
	.sleb128 15
	.uleb128 0x10
	.long	.LASF594
	.sleb128 16
	.uleb128 0x10
	.long	.LASF595
	.sleb128 17
	.uleb128 0x10
	.long	.LASF596
	.sleb128 18
	.uleb128 0x10
	.long	.LASF597
	.sleb128 19
	.uleb128 0x10
	.long	.LASF598
	.sleb128 20
	.uleb128 0x10
	.long	.LASF599
	.sleb128 21
	.uleb128 0x10
	.long	.LASF600
	.sleb128 22
	.uleb128 0x10
	.long	.LASF601
	.sleb128 23
	.uleb128 0x10
	.long	.LASF602
	.sleb128 24
	.uleb128 0x10
	.long	.LASF603
	.sleb128 25
	.uleb128 0x10
	.long	.LASF604
	.sleb128 26
	.uleb128 0x10
	.long	.LASF605
	.sleb128 27
	.uleb128 0x10
	.long	.LASF606
	.sleb128 28
	.uleb128 0x10
	.long	.LASF607
	.sleb128 29
	.uleb128 0x10
	.long	.LASF608
	.sleb128 30
	.uleb128 0x10
	.long	.LASF609
	.sleb128 31
	.uleb128 0x10
	.long	.LASF610
	.sleb128 32
	.uleb128 0x10
	.long	.LASF611
	.sleb128 33
	.uleb128 0x10
	.long	.LASF612
	.sleb128 34
	.uleb128 0x10
	.long	.LASF613
	.sleb128 35
	.uleb128 0x10
	.long	.LASF614
	.sleb128 36
	.uleb128 0x10
	.long	.LASF615
	.sleb128 37
	.uleb128 0x10
	.long	.LASF616
	.sleb128 38
	.uleb128 0x10
	.long	.LASF617
	.sleb128 39
	.uleb128 0x10
	.long	.LASF618
	.sleb128 40
	.uleb128 0x10
	.long	.LASF619
	.sleb128 41
	.uleb128 0x10
	.long	.LASF620
	.sleb128 42
	.uleb128 0x10
	.long	.LASF621
	.sleb128 43
	.uleb128 0x10
	.long	.LASF622
	.sleb128 44
	.uleb128 0x10
	.long	.LASF623
	.sleb128 45
	.uleb128 0x10
	.long	.LASF624
	.sleb128 46
	.uleb128 0x25
	.string	"SET"
	.sleb128 47
	.uleb128 0x25
	.string	"USE"
	.sleb128 48
	.uleb128 0x10
	.long	.LASF625
	.sleb128 49
	.uleb128 0x10
	.long	.LASF626
	.sleb128 50
	.uleb128 0x10
	.long	.LASF627
	.sleb128 51
	.uleb128 0x10
	.long	.LASF628
	.sleb128 52
	.uleb128 0x10
	.long	.LASF629
	.sleb128 53
	.uleb128 0x10
	.long	.LASF630
	.sleb128 54
	.uleb128 0x10
	.long	.LASF631
	.sleb128 55
	.uleb128 0x10
	.long	.LASF632
	.sleb128 56
	.uleb128 0x10
	.long	.LASF633
	.sleb128 57
	.uleb128 0x10
	.long	.LASF634
	.sleb128 58
	.uleb128 0x25
	.string	"PC"
	.sleb128 59
	.uleb128 0x10
	.long	.LASF635
	.sleb128 60
	.uleb128 0x25
	.string	"REG"
	.sleb128 61
	.uleb128 0x10
	.long	.LASF636
	.sleb128 62
	.uleb128 0x10
	.long	.LASF637
	.sleb128 63
	.uleb128 0x10
	.long	.LASF638
	.sleb128 64
	.uleb128 0x10
	.long	.LASF639
	.sleb128 65
	.uleb128 0x25
	.string	"MEM"
	.sleb128 66
	.uleb128 0x10
	.long	.LASF640
	.sleb128 67
	.uleb128 0x10
	.long	.LASF641
	.sleb128 68
	.uleb128 0x25
	.string	"CC0"
	.sleb128 69
	.uleb128 0x10
	.long	.LASF642
	.sleb128 70
	.uleb128 0x10
	.long	.LASF643
	.sleb128 71
	.uleb128 0x10
	.long	.LASF644
	.sleb128 72
	.uleb128 0x10
	.long	.LASF645
	.sleb128 73
	.uleb128 0x10
	.long	.LASF646
	.sleb128 74
	.uleb128 0x10
	.long	.LASF647
	.sleb128 75
	.uleb128 0x10
	.long	.LASF648
	.sleb128 76
	.uleb128 0x25
	.string	"NEG"
	.sleb128 77
	.uleb128 0x10
	.long	.LASF649
	.sleb128 78
	.uleb128 0x25
	.string	"DIV"
	.sleb128 79
	.uleb128 0x25
	.string	"MOD"
	.sleb128 80
	.uleb128 0x10
	.long	.LASF650
	.sleb128 81
	.uleb128 0x10
	.long	.LASF651
	.sleb128 82
	.uleb128 0x25
	.string	"AND"
	.sleb128 83
	.uleb128 0x25
	.string	"IOR"
	.sleb128 84
	.uleb128 0x25
	.string	"XOR"
	.sleb128 85
	.uleb128 0x25
	.string	"NOT"
	.sleb128 86
	.uleb128 0x10
	.long	.LASF652
	.sleb128 87
	.uleb128 0x10
	.long	.LASF653
	.sleb128 88
	.uleb128 0x10
	.long	.LASF654
	.sleb128 89
	.uleb128 0x10
	.long	.LASF655
	.sleb128 90
	.uleb128 0x10
	.long	.LASF656
	.sleb128 91
	.uleb128 0x10
	.long	.LASF657
	.sleb128 92
	.uleb128 0x10
	.long	.LASF658
	.sleb128 93
	.uleb128 0x10
	.long	.LASF659
	.sleb128 94
	.uleb128 0x10
	.long	.LASF660
	.sleb128 95
	.uleb128 0x10
	.long	.LASF661
	.sleb128 96
	.uleb128 0x10
	.long	.LASF662
	.sleb128 97
	.uleb128 0x10
	.long	.LASF663
	.sleb128 98
	.uleb128 0x10
	.long	.LASF664
	.sleb128 99
	.uleb128 0x10
	.long	.LASF665
	.sleb128 100
	.uleb128 0x10
	.long	.LASF666
	.sleb128 101
	.uleb128 0x25
	.string	"NE"
	.sleb128 102
	.uleb128 0x25
	.string	"EQ"
	.sleb128 103
	.uleb128 0x25
	.string	"GE"
	.sleb128 104
	.uleb128 0x25
	.string	"GT"
	.sleb128 105
	.uleb128 0x25
	.string	"LE"
	.sleb128 106
	.uleb128 0x25
	.string	"LT"
	.sleb128 107
	.uleb128 0x25
	.string	"GEU"
	.sleb128 108
	.uleb128 0x25
	.string	"GTU"
	.sleb128 109
	.uleb128 0x25
	.string	"LEU"
	.sleb128 110
	.uleb128 0x25
	.string	"LTU"
	.sleb128 111
	.uleb128 0x10
	.long	.LASF667
	.sleb128 112
	.uleb128 0x10
	.long	.LASF668
	.sleb128 113
	.uleb128 0x10
	.long	.LASF669
	.sleb128 114
	.uleb128 0x10
	.long	.LASF670
	.sleb128 115
	.uleb128 0x10
	.long	.LASF671
	.sleb128 116
	.uleb128 0x10
	.long	.LASF672
	.sleb128 117
	.uleb128 0x10
	.long	.LASF673
	.sleb128 118
	.uleb128 0x10
	.long	.LASF674
	.sleb128 119
	.uleb128 0x10
	.long	.LASF675
	.sleb128 120
	.uleb128 0x10
	.long	.LASF676
	.sleb128 121
	.uleb128 0x10
	.long	.LASF677
	.sleb128 122
	.uleb128 0x10
	.long	.LASF678
	.sleb128 123
	.uleb128 0x10
	.long	.LASF679
	.sleb128 124
	.uleb128 0x10
	.long	.LASF680
	.sleb128 125
	.uleb128 0x25
	.string	"FIX"
	.sleb128 126
	.uleb128 0x10
	.long	.LASF681
	.sleb128 127
	.uleb128 0x10
	.long	.LASF682
	.sleb128 128
	.uleb128 0x25
	.string	"ABS"
	.sleb128 129
	.uleb128 0x10
	.long	.LASF683
	.sleb128 130
	.uleb128 0x25
	.string	"FFS"
	.sleb128 131
	.uleb128 0x10
	.long	.LASF684
	.sleb128 132
	.uleb128 0x10
	.long	.LASF685
	.sleb128 133
	.uleb128 0x10
	.long	.LASF686
	.sleb128 134
	.uleb128 0x10
	.long	.LASF687
	.sleb128 135
	.uleb128 0x10
	.long	.LASF688
	.sleb128 136
	.uleb128 0x10
	.long	.LASF689
	.sleb128 137
	.uleb128 0x10
	.long	.LASF690
	.sleb128 138
	.uleb128 0x10
	.long	.LASF691
	.sleb128 139
	.uleb128 0x10
	.long	.LASF692
	.sleb128 140
	.uleb128 0x10
	.long	.LASF693
	.sleb128 141
	.uleb128 0x10
	.long	.LASF694
	.sleb128 142
	.uleb128 0x10
	.long	.LASF695
	.sleb128 143
	.uleb128 0x10
	.long	.LASF696
	.sleb128 144
	.uleb128 0x10
	.long	.LASF697
	.sleb128 145
	.uleb128 0x10
	.long	.LASF698
	.sleb128 146
	.uleb128 0x10
	.long	.LASF699
	.sleb128 147
	.uleb128 0x10
	.long	.LASF700
	.sleb128 148
	.uleb128 0x10
	.long	.LASF701
	.sleb128 149
	.uleb128 0x10
	.long	.LASF702
	.sleb128 150
	.uleb128 0x10
	.long	.LASF703
	.sleb128 151
	.uleb128 0x25
	.string	"PHI"
	.sleb128 152
	.uleb128 0x10
	.long	.LASF704
	.sleb128 153
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x20bb
	.uleb128 0x5
	.long	.LASF705
	.byte	0x2
	.byte	0x47
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF706
	.byte	0x2
	.byte	0x49
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF707
	.byte	0x2
	.byte	0x4a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF708
	.byte	0x2
	.byte	0x4c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF709
	.byte	0x2
	.byte	0x4e
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF710
	.byte	0x2
	.byte	0x50
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF711
	.byte	0x2
	.byte	0x53
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF712
	.byte	0x2
	.byte	0x55
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF713
	.byte	0x2
	.byte	0x56
	.long	0x203a
	.uleb128 0x1b
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x210b
	.uleb128 0x8
	.long	.LASF714
	.byte	0x2
	.byte	0x5e
	.long	0x319
	.byte	0
	.uleb128 0x8
	.long	.LASF387
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF715
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF359
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF371
	.byte	0x2
	.byte	0x62
	.long	0x310
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF716
	.byte	0x2
	.byte	0x63
	.long	0x20c6
	.uleb128 0x26
	.long	.LASF718
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x21b1
	.uleb128 0x27
	.long	.LASF719
	.byte	0x2
	.byte	0x69
	.long	0x319
	.uleb128 0x27
	.long	.LASF720
	.byte	0x2
	.byte	0x6a
	.long	0x1e3
	.uleb128 0x27
	.long	.LASF721
	.byte	0x2
	.byte	0x6b
	.long	0x310
	.uleb128 0x27
	.long	.LASF722
	.byte	0x2
	.byte	0x6c
	.long	0x577
	.uleb128 0x28
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x27
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x27
	.long	.LASF723
	.byte	0x2
	.byte	0x6f
	.long	0x590
	.uleb128 0x27
	.long	.LASF724
	.byte	0x2
	.byte	0x70
	.long	0x20bb
	.uleb128 0x27
	.long	.LASF725
	.byte	0x2
	.byte	0x71
	.long	0x21b6
	.uleb128 0x27
	.long	.LASF726
	.byte	0x2
	.byte	0x72
	.long	0x21ed
	.uleb128 0x27
	.long	.LASF727
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x28
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x22c0
	.uleb128 0x27
	.long	.LASF728
	.byte	0x2
	.byte	0x75
	.long	0x22c6
	.byte	0
	.uleb128 0x21
	.long	.LASF729
	.uleb128 0x3
	.byte	0x8
	.long	0x21b1
	.uleb128 0x4
	.long	.LASF730
	.byte	0x18
	.byte	0xf
	.byte	0x34
	.long	0x21ed
	.uleb128 0x8
	.long	.LASF731
	.byte	0xf
	.byte	0x35
	.long	0x2522
	.byte	0
	.uleb128 0x8
	.long	.LASF732
	.byte	0xf
	.byte	0x36
	.long	0x2522
	.byte	0x8
	.uleb128 0x8
	.long	.LASF733
	.byte	0xf
	.byte	0x37
	.long	0x310
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x21bc
	.uleb128 0x4
	.long	.LASF734
	.byte	0x70
	.byte	0x10
	.byte	0xae
	.long	0x22c0
	.uleb128 0x8
	.long	.LASF735
	.byte	0x10
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0x10
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF736
	.byte	0x10
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF737
	.byte	0x10
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF738
	.byte	0x10
	.byte	0xb7
	.long	0x2952
	.byte	0x20
	.uleb128 0x8
	.long	.LASF739
	.byte	0x10
	.byte	0xb7
	.long	0x2952
	.byte	0x28
	.uleb128 0x8
	.long	.LASF740
	.byte	0x10
	.byte	0xbc
	.long	0x28bd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF741
	.byte	0x10
	.byte	0xc0
	.long	0x28bd
	.byte	0x38
	.uleb128 0x8
	.long	.LASF742
	.byte	0x10
	.byte	0xc6
	.long	0x28bd
	.byte	0x40
	.uleb128 0x8
	.long	.LASF743
	.byte	0x10
	.byte	0xc8
	.long	0x28bd
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x10
	.byte	0xcb
	.long	0x317
	.byte	0x50
	.uleb128 0x8
	.long	.LASF744
	.byte	0x10
	.byte	0xce
	.long	0x1e3
	.byte	0x58
	.uleb128 0x8
	.long	.LASF745
	.byte	0x10
	.byte	0xd1
	.long	0x1e3
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF746
	.byte	0x10
	.byte	0xd4
	.long	0x28c8
	.byte	0x60
	.uleb128 0x8
	.long	.LASF747
	.byte	0x10
	.byte	0xd7
	.long	0x1e3
	.byte	0x68
	.uleb128 0x8
	.long	.LASF748
	.byte	0x10
	.byte	0xda
	.long	0x1e3
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x21f3
	.uleb128 0x3
	.byte	0x8
	.long	0x210b
	.uleb128 0x7
	.long	.LASF749
	.byte	0x2
	.byte	0x76
	.long	0x2116
	.uleb128 0x15
	.long	0x22cc
	.long	0x22e7
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2d
	.long	0x22f7
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF750
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0x23b9
	.uleb128 0x10
	.long	.LASF751
	.sleb128 1
	.uleb128 0x10
	.long	.LASF752
	.sleb128 2
	.uleb128 0x10
	.long	.LASF753
	.sleb128 3
	.uleb128 0x10
	.long	.LASF754
	.sleb128 4
	.uleb128 0x10
	.long	.LASF755
	.sleb128 5
	.uleb128 0x10
	.long	.LASF756
	.sleb128 6
	.uleb128 0x10
	.long	.LASF757
	.sleb128 7
	.uleb128 0x10
	.long	.LASF758
	.sleb128 8
	.uleb128 0x10
	.long	.LASF759
	.sleb128 9
	.uleb128 0x10
	.long	.LASF760
	.sleb128 10
	.uleb128 0x10
	.long	.LASF761
	.sleb128 11
	.uleb128 0x10
	.long	.LASF762
	.sleb128 12
	.uleb128 0x10
	.long	.LASF763
	.sleb128 13
	.uleb128 0x10
	.long	.LASF764
	.sleb128 14
	.uleb128 0x10
	.long	.LASF765
	.sleb128 15
	.uleb128 0x10
	.long	.LASF766
	.sleb128 16
	.uleb128 0x10
	.long	.LASF767
	.sleb128 17
	.uleb128 0x10
	.long	.LASF768
	.sleb128 18
	.uleb128 0x10
	.long	.LASF769
	.sleb128 19
	.uleb128 0x10
	.long	.LASF770
	.sleb128 20
	.uleb128 0x10
	.long	.LASF771
	.sleb128 21
	.uleb128 0x10
	.long	.LASF772
	.sleb128 22
	.uleb128 0x10
	.long	.LASF773
	.sleb128 23
	.uleb128 0x10
	.long	.LASF774
	.sleb128 24
	.uleb128 0x10
	.long	.LASF775
	.sleb128 25
	.uleb128 0x10
	.long	.LASF776
	.sleb128 26
	.uleb128 0x10
	.long	.LASF777
	.sleb128 27
	.uleb128 0x10
	.long	.LASF778
	.sleb128 28
	.uleb128 0x10
	.long	.LASF779
	.sleb128 29
	.uleb128 0x10
	.long	.LASF780
	.sleb128 30
	.byte	0
	.uleb128 0xf
	.long	.LASF781
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0x2468
	.uleb128 0x10
	.long	.LASF782
	.sleb128 -100
	.uleb128 0x10
	.long	.LASF783
	.sleb128 -99
	.uleb128 0x10
	.long	.LASF784
	.sleb128 -98
	.uleb128 0x10
	.long	.LASF785
	.sleb128 -97
	.uleb128 0x10
	.long	.LASF786
	.sleb128 -96
	.uleb128 0x10
	.long	.LASF787
	.sleb128 -95
	.uleb128 0x10
	.long	.LASF788
	.sleb128 -94
	.uleb128 0x10
	.long	.LASF789
	.sleb128 -93
	.uleb128 0x10
	.long	.LASF790
	.sleb128 -92
	.uleb128 0x10
	.long	.LASF791
	.sleb128 -91
	.uleb128 0x10
	.long	.LASF792
	.sleb128 -90
	.uleb128 0x10
	.long	.LASF793
	.sleb128 -89
	.uleb128 0x10
	.long	.LASF794
	.sleb128 -88
	.uleb128 0x10
	.long	.LASF795
	.sleb128 -87
	.uleb128 0x10
	.long	.LASF796
	.sleb128 -86
	.uleb128 0x10
	.long	.LASF797
	.sleb128 -85
	.uleb128 0x10
	.long	.LASF798
	.sleb128 -84
	.uleb128 0x10
	.long	.LASF799
	.sleb128 -83
	.uleb128 0x10
	.long	.LASF800
	.sleb128 -82
	.uleb128 0x10
	.long	.LASF801
	.sleb128 -81
	.uleb128 0x10
	.long	.LASF802
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF803
	.sleb128 -79
	.uleb128 0x10
	.long	.LASF804
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xf
	.long	.LASF805
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0x24c4
	.uleb128 0x10
	.long	.LASF806
	.sleb128 0
	.uleb128 0x10
	.long	.LASF807
	.sleb128 1
	.uleb128 0x10
	.long	.LASF808
	.sleb128 2
	.uleb128 0x10
	.long	.LASF809
	.sleb128 3
	.uleb128 0x10
	.long	.LASF810
	.sleb128 4
	.uleb128 0x10
	.long	.LASF811
	.sleb128 5
	.uleb128 0x10
	.long	.LASF812
	.sleb128 6
	.uleb128 0x10
	.long	.LASF813
	.sleb128 7
	.uleb128 0x10
	.long	.LASF814
	.sleb128 8
	.uleb128 0x10
	.long	.LASF815
	.sleb128 9
	.uleb128 0x10
	.long	.LASF816
	.sleb128 10
	.uleb128 0x10
	.long	.LASF817
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF818
	.byte	0x28
	.byte	0xf
	.byte	0x2b
	.long	0x2501
	.uleb128 0x8
	.long	.LASF819
	.byte	0xf
	.byte	0x2d
	.long	0x2501
	.byte	0
	.uleb128 0x8
	.long	.LASF321
	.byte	0xf
	.byte	0x2e
	.long	0x2501
	.byte	0x8
	.uleb128 0x8
	.long	.LASF733
	.byte	0xf
	.byte	0x2f
	.long	0x310
	.byte	0x10
	.uleb128 0x8
	.long	.LASF820
	.byte	0xf
	.byte	0x30
	.long	0x2507
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x24c4
	.uleb128 0x15
	.long	0x32b
	.long	0x2517
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF821
	.byte	0xf
	.byte	0x31
	.long	0x24c4
	.uleb128 0x3
	.byte	0x8
	.long	0x2517
	.uleb128 0x7
	.long	.LASF822
	.byte	0xf
	.byte	0x39
	.long	0x21ed
	.uleb128 0x4
	.long	.LASF823
	.byte	0x18
	.byte	0x11
	.byte	0x1f
	.long	0x2570
	.uleb128 0x8
	.long	.LASF824
	.byte	0x11
	.byte	0x21
	.long	0x310
	.byte	0
	.uleb128 0x8
	.long	.LASF359
	.byte	0x11
	.byte	0x22
	.long	0x310
	.byte	0x4
	.uleb128 0x8
	.long	.LASF825
	.byte	0x11
	.byte	0x23
	.long	0x310
	.byte	0x8
	.uleb128 0x8
	.long	.LASF826
	.byte	0x11
	.byte	0x24
	.long	0x2570
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.long	0x32b
	.long	0x2580
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF827
	.byte	0x11
	.byte	0x25
	.long	0x258b
	.uleb128 0x3
	.byte	0x8
	.long	0x2533
	.uleb128 0x4
	.long	.LASF828
	.byte	0x10
	.byte	0x12
	.byte	0x24
	.long	0x25b6
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
	.long	0x310
	.byte	0x8
	.byte	0
	.uleb128 0x26
	.long	.LASF829
	.byte	0x10
	.byte	0x12
	.byte	0x3a
	.long	0x269b
	.uleb128 0x28
	.string	"c"
	.byte	0x12
	.byte	0x3b
	.long	0x551
	.uleb128 0x28
	.string	"uc"
	.byte	0x12
	.byte	0x3c
	.long	0x269b
	.uleb128 0x28
	.string	"s"
	.byte	0x12
	.byte	0x3d
	.long	0x26ab
	.uleb128 0x28
	.string	"us"
	.byte	0x12
	.byte	0x3e
	.long	0x26bb
	.uleb128 0x28
	.string	"i"
	.byte	0x12
	.byte	0x3f
	.long	0x26cb
	.uleb128 0x28
	.string	"u"
	.byte	0x12
	.byte	0x40
	.long	0x26db
	.uleb128 0x28
	.string	"l"
	.byte	0x12
	.byte	0x41
	.long	0x26eb
	.uleb128 0x28
	.string	"ul"
	.byte	0x12
	.byte	0x42
	.long	0x2570
	.uleb128 0x27
	.long	.LASF830
	.byte	0x12
	.byte	0x43
	.long	0x26eb
	.uleb128 0x27
	.long	.LASF831
	.byte	0x12
	.byte	0x44
	.long	0x2570
	.uleb128 0x27
	.long	.LASF832
	.byte	0x12
	.byte	0x45
	.long	0x26fb
	.uleb128 0x27
	.long	.LASF833
	.byte	0x12
	.byte	0x46
	.long	0x270b
	.uleb128 0x28
	.string	"rtx"
	.byte	0x12
	.byte	0x47
	.long	0x271b
	.uleb128 0x27
	.long	.LASF10
	.byte	0x12
	.byte	0x48
	.long	0x272b
	.uleb128 0x27
	.long	.LASF15
	.byte	0x12
	.byte	0x49
	.long	0x273b
	.uleb128 0x27
	.long	.LASF822
	.byte	0x12
	.byte	0x4a
	.long	0x274b
	.uleb128 0x27
	.long	.LASF834
	.byte	0x12
	.byte	0x4b
	.long	0x275b
	.uleb128 0x28
	.string	"reg"
	.byte	0x12
	.byte	0x4c
	.long	0x2776
	.uleb128 0x27
	.long	.LASF835
	.byte	0x12
	.byte	0x4d
	.long	0x281d
	.uleb128 0x28
	.string	"bb"
	.byte	0x12
	.byte	0x4e
	.long	0x282d
	.uleb128 0x28
	.string	"te"
	.byte	0x12
	.byte	0x4f
	.long	0x283d
	.byte	0
	.uleb128 0x15
	.long	0x332
	.long	0x26ab
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x347
	.long	0x26bb
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x339
	.long	0x26cb
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x1e3
	.long	0x26db
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x310
	.long	0x26eb
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x319
	.long	0x26fb
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x317
	.long	0x270b
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x364
	.long	0x271b
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x38
	.long	0x272b
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xf8
	.long	0x273b
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x12e
	.long	0x274b
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x21ed
	.long	0x275b
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x276b
	.long	0x276b
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2771
	.uleb128 0x21
	.long	.LASF836
	.uleb128 0x15
	.long	0x2786
	.long	0x2786
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x278c
	.uleb128 0x4
	.long	.LASF837
	.byte	0x2c
	.byte	0x13
	.byte	0x2d
	.long	0x281d
	.uleb128 0x8
	.long	.LASF838
	.byte	0x13
	.byte	0x2f
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF839
	.byte	0x13
	.byte	0x30
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF840
	.byte	0x13
	.byte	0x31
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF841
	.byte	0x13
	.byte	0x34
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF842
	.byte	0x13
	.byte	0x37
	.long	0x1e3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF843
	.byte	0x13
	.byte	0x38
	.long	0x1e3
	.byte	0x14
	.uleb128 0x8
	.long	.LASF844
	.byte	0x13
	.byte	0x39
	.long	0x1e3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF845
	.byte	0x13
	.byte	0x3a
	.long	0x1e3
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF846
	.byte	0x13
	.byte	0x3b
	.long	0x1e3
	.byte	0x20
	.uleb128 0x8
	.long	.LASF847
	.byte	0x13
	.byte	0x3c
	.long	0x1e3
	.byte	0x24
	.uleb128 0x8
	.long	.LASF848
	.byte	0x13
	.byte	0x3d
	.long	0x36a
	.byte	0x28
	.byte	0
	.uleb128 0x15
	.long	0x2591
	.long	0x282d
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x22c0
	.long	0x283d
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x284d
	.long	0x284d
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2853
	.uleb128 0x21
	.long	.LASF849
	.uleb128 0x7
	.long	.LASF850
	.byte	0x12
	.byte	0x50
	.long	0x25b6
	.uleb128 0x4
	.long	.LASF851
	.byte	0x30
	.byte	0x12
	.byte	0x53
	.long	0x28ac
	.uleb128 0x8
	.long	.LASF852
	.byte	0x12
	.byte	0x54
	.long	0x320
	.byte	0
	.uleb128 0x8
	.long	.LASF853
	.byte	0x12
	.byte	0x55
	.long	0x320
	.byte	0x8
	.uleb128 0x8
	.long	.LASF854
	.byte	0x12
	.byte	0x57
	.long	0x320
	.byte	0x10
	.uleb128 0x8
	.long	.LASF375
	.byte	0x12
	.byte	0x58
	.long	0x577
	.byte	0x18
	.uleb128 0x8
	.long	.LASF855
	.byte	0x12
	.byte	0x59
	.long	0x2858
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF856
	.byte	0x12
	.byte	0x5a
	.long	0x28b7
	.uleb128 0x3
	.byte	0x8
	.long	0x2863
	.uleb128 0x7
	.long	.LASF857
	.byte	0x10
	.byte	0x21
	.long	0x2528
	.uleb128 0x7
	.long	.LASF858
	.byte	0x10
	.byte	0x74
	.long	0x319
	.uleb128 0x4
	.long	.LASF859
	.byte	0x40
	.byte	0x10
	.byte	0x77
	.long	0x294c
	.uleb128 0x8
	.long	.LASF860
	.byte	0x10
	.byte	0x79
	.long	0x294c
	.byte	0
	.uleb128 0x8
	.long	.LASF861
	.byte	0x10
	.byte	0x79
	.long	0x294c
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x10
	.byte	0x7c
	.long	0x22c0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF862
	.byte	0x10
	.byte	0x7c
	.long	0x22c0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF863
	.byte	0x10
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x10
	.byte	0x82
	.long	0x317
	.byte	0x28
	.uleb128 0x8
	.long	.LASF748
	.byte	0x10
	.byte	0x84
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF864
	.byte	0x10
	.byte	0x85
	.long	0x1e3
	.byte	0x34
	.uleb128 0x8
	.long	.LASF746
	.byte	0x10
	.byte	0x86
	.long	0x28c8
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x28d3
	.uleb128 0x7
	.long	.LASF865
	.byte	0x10
	.byte	0x88
	.long	0x294c
	.uleb128 0x7
	.long	.LASF847
	.byte	0x10
	.byte	0xdb
	.long	0x22c0
	.uleb128 0x3
	.byte	0x8
	.long	0x2952
	.uleb128 0xf
	.long	.LASF866
	.byte	0x4
	.byte	0x10
	.value	0x223
	.long	0x298e
	.uleb128 0x10
	.long	.LASF867
	.sleb128 0
	.uleb128 0x10
	.long	.LASF868
	.sleb128 1
	.uleb128 0x10
	.long	.LASF869
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF870
	.byte	0x18
	.byte	0xe
	.byte	0x16
	.long	0x29cb
	.uleb128 0x8
	.long	.LASF871
	.byte	0xe
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF872
	.byte	0xe
	.byte	0x19
	.long	0x590
	.byte	0x8
	.uleb128 0x8
	.long	.LASF873
	.byte	0xe
	.byte	0x1a
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF819
	.byte	0xe
	.byte	0x1b
	.long	0x29cb
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x298e
	.uleb128 0x4
	.long	.LASF874
	.byte	0x20
	.byte	0xe
	.byte	0x23
	.long	0x2a0e
	.uleb128 0x8
	.long	.LASF731
	.byte	0xe
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF875
	.byte	0xe
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF876
	.byte	0xe
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF819
	.byte	0xe
	.byte	0x28
	.long	0x2a0e
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x29d1
	.uleb128 0x3
	.byte	0x8
	.long	0xd03
	.uleb128 0x4
	.long	.LASF877
	.byte	0x58
	.byte	0xe
	.byte	0x35
	.long	0x2ac3
	.uleb128 0x8
	.long	.LASF878
	.byte	0xe
	.byte	0x39
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF879
	.byte	0xe
	.byte	0x3c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF880
	.byte	0xe
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF881
	.byte	0xe
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF876
	.byte	0xe
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF874
	.byte	0xe
	.byte	0x4f
	.long	0x2a0e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF882
	.byte	0xe
	.byte	0x53
	.long	0x1e3
	.byte	0x28
	.uleb128 0x8
	.long	.LASF883
	.byte	0xe
	.byte	0x57
	.long	0x1e3
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF884
	.byte	0xe
	.byte	0x58
	.long	0x577
	.byte	0x30
	.uleb128 0x8
	.long	.LASF885
	.byte	0xe
	.byte	0x5e
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF886
	.byte	0xe
	.byte	0x63
	.long	0x2ac3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF887
	.byte	0xe
	.byte	0x67
	.long	0x1c00
	.byte	0x48
	.uleb128 0x8
	.long	.LASF888
	.byte	0xe
	.byte	0x6b
	.long	0x2468
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x332
	.uleb128 0x4
	.long	.LASF889
	.byte	0x30
	.byte	0xe
	.byte	0x77
	.long	0x2b2a
	.uleb128 0x8
	.long	.LASF890
	.byte	0xe
	.byte	0x7b
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF891
	.byte	0xe
	.byte	0x8c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF892
	.byte	0xe
	.byte	0x92
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF893
	.byte	0xe
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF894
	.byte	0xe
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF895
	.byte	0xe
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF896
	.byte	0xe
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x21
	.long	.LASF897
	.uleb128 0x3
	.byte	0x8
	.long	0x2b2a
	.uleb128 0x21
	.long	.LASF898
	.uleb128 0x3
	.byte	0x8
	.long	0x2b35
	.uleb128 0x3
	.byte	0x8
	.long	0x2ac9
	.uleb128 0x3
	.byte	0x8
	.long	0x2a1a
	.uleb128 0x21
	.long	.LASF899
	.uleb128 0x3
	.byte	0x8
	.long	0x2b4c
	.uleb128 0x21
	.long	.LASF900
	.uleb128 0x3
	.byte	0x8
	.long	0x2b57
	.uleb128 0x21
	.long	.LASF901
	.uleb128 0x3
	.byte	0x8
	.long	0x2b62
	.uleb128 0x21
	.long	.LASF902
	.uleb128 0x3
	.byte	0x8
	.long	0x2b6d
	.uleb128 0x21
	.long	.LASF903
	.uleb128 0x3
	.byte	0x8
	.long	0x2b78
	.uleb128 0x29
	.long	.LASF904
	.byte	0x1
	.byte	0x57
	.long	0x1e3
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bb3
	.uleb128 0x2a
	.long	.LASF906
	.byte	0x1
	.byte	0x58
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF905
	.byte	0x1
	.byte	0x61
	.long	0x1e3
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2be3
	.uleb128 0x2a
	.long	.LASF907
	.byte	0x1
	.byte	0x62
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF913
	.byte	0x1
	.byte	0x6e
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cdf
	.uleb128 0x2a
	.long	.LASF908
	.byte	0x1
	.byte	0x6f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF819
	.byte	0x1
	.byte	0x71
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF906
	.byte	0x1
	.byte	0x72
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF909
	.byte	0x1
	.byte	0x73
	.long	0x1bf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x2e
	.long	.LASF943
	.long	0x2cef
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12456
	.uleb128 0x2f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x2c75
	.uleb128 0x2d
	.long	.LASF375
	.byte	0x1
	.byte	0x7c
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x30
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.byte	0xa0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF910
	.byte	0x1
	.byte	0xa1
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.byte	0xa2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2d
	.long	.LASF907
	.byte	0x1
	.byte	0xa7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x2cef
	.uleb128 0x16
	.long	0x1ea
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.long	0x2cdf
	.uleb128 0x32
	.long	.LASF921
	.byte	0x1
	.byte	0xb8
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d3c
	.uleb128 0x2a
	.long	.LASF911
	.byte	0x1
	.byte	0xb9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF912
	.byte	0x1
	.byte	0xb9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF819
	.byte	0x1
	.byte	0xbb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF914
	.byte	0x1
	.byte	0xd6
	.long	0x295d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dc3
	.uleb128 0x2a
	.long	.LASF744
	.byte	0x1
	.byte	0xd7
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF735
	.byte	0x1
	.byte	0xd8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"end"
	.byte	0x1
	.byte	0xd8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF915
	.byte	0x1
	.byte	0xd8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.byte	0xda
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2d
	.long	.LASF916
	.byte	0x1
	.byte	0xe3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF917
	.byte	0x1
	.value	0x122
	.long	0x295d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e50
	.uleb128 0x35
	.long	.LASF744
	.byte	0x1
	.value	0x123
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF735
	.byte	0x1
	.value	0x124
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.string	"end"
	.byte	0x1
	.value	0x124
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x126
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x127
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x37
	.string	"tmp"
	.byte	0x1
	.value	0x131
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF918
	.byte	0x1
	.value	0x145
	.long	0x1e3
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ebc
	.uleb128 0x36
	.string	"b"
	.byte	0x1
	.value	0x146
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF919
	.byte	0x1
	.value	0x148
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.long	.LASF908
	.byte	0x1
	.value	0x149
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.value	0x149
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.string	"tmp"
	.byte	0x1
	.value	0x149
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF920
	.byte	0x1
	.value	0x17a
	.long	0x1e3
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2efb
	.uleb128 0x36
	.string	"b"
	.byte	0x1
	.value	0x17b
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF919
	.byte	0x1
	.value	0x17d
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.long	.LASF922
	.byte	0x1
	.value	0x189
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f68
	.uleb128 0x36
	.string	"max"
	.byte	0x1
	.value	0x18a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x18c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x195
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.value	0x196
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF908
	.byte	0x1
	.value	0x197
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LASF1013
	.byte	0x1
	.value	0x1a7
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.long	.LASF923
	.byte	0x1
	.value	0x1b2
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fbe
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x1b3
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF908
	.byte	0x1
	.value	0x1b5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF924
	.byte	0x1
	.value	0x1c5
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x302a
	.uleb128 0x35
	.long	.LASF908
	.byte	0x1
	.value	0x1c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x1c7
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"uid"
	.byte	0x1
	.value	0x1c9
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x38
	.long	.LASF925
	.byte	0x1
	.value	0x1ce
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF926
	.byte	0x1
	.value	0x1dc
	.long	0x2952
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x31ac
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x1dd
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.long	.LASF908
	.byte	0x1
	.value	0x1de
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x38
	.long	.LASF927
	.byte	0x1
	.value	0x1e0
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x38
	.long	.LASF928
	.byte	0x1
	.value	0x1e1
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x37
	.string	"e"
	.byte	0x1
	.value	0x1e2
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x3125
	.uleb128 0x37
	.string	"__h"
	.byte	0x1
	.value	0x1f9
	.long	0x2a14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x30f4
	.uleb128 0x37
	.string	"__o"
	.byte	0x1
	.value	0x1f9
	.long	0x2a14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF929
	.byte	0x1
	.value	0x1f9
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x30
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x38
	.long	.LASF930
	.byte	0x1
	.value	0x1f9
	.long	0x2a14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF341
	.byte	0x1
	.value	0x1f9
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x37
	.string	"__h"
	.byte	0x1
	.value	0x1fa
	.long	0x2a14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x317a
	.uleb128 0x37
	.string	"__o"
	.byte	0x1
	.value	0x1fa
	.long	0x2a14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF929
	.byte	0x1
	.value	0x1fa
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x30
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x38
	.long	.LASF930
	.byte	0x1
	.value	0x1fa
	.long	0x2a14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	.LASF341
	.byte	0x1
	.value	0x1fa
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF931
	.byte	0x1
	.value	0x20f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3295
	.uleb128 0x36
	.string	"a"
	.byte	0x1
	.value	0x210
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.string	"b"
	.byte	0x1
	.value	0x210
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x38
	.long	.LASF932
	.byte	0x1
	.value	0x212
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.long	.LASF933
	.byte	0x1
	.value	0x212
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF934
	.byte	0x1
	.value	0x212
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF935
	.byte	0x1
	.value	0x213
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF936
	.byte	0x1
	.value	0x213
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF937
	.byte	0x1
	.value	0x214
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x37
	.string	"e"
	.byte	0x1
	.value	0x215
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x3275
	.uleb128 0x38
	.long	.LASF321
	.byte	0x1
	.value	0x233
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x30
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x37
	.string	"x"
	.byte	0x1
	.value	0x26b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF938
	.byte	0x1
	.value	0x27d
	.long	0x2d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x32c7
	.uleb128 0x35
	.long	.LASF26
	.byte	0x1
	.value	0x27e
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3c
	.long	.LASF939
	.byte	0x1
	.value	0x293
	.long	0x1bf9
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x33b7
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x294
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF940
	.byte	0x1
	.value	0x295
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x37
	.string	"src"
	.byte	0x1
	.value	0x297
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF908
	.byte	0x1
	.value	0x298
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF941
	.byte	0x1
	.value	0x298
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"tmp"
	.byte	0x1
	.value	0x299
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.string	"set"
	.byte	0x1
	.value	0x29a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF942
	.byte	0x1
	.value	0x29b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.long	.LASF943
	.long	0x33c7
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12598
	.uleb128 0x30
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x38
	.long	.LASF944
	.byte	0x1
	.value	0x2d4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF945
	.byte	0x1
	.value	0x2d5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.string	"tmp"
	.byte	0x1
	.value	0x2d5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x33c7
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.long	0x33b7
	.uleb128 0x3d
	.long	.LASF946
	.byte	0x1
	.value	0x313
	.long	0x2d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x340d
	.uleb128 0x35
	.long	.LASF908
	.byte	0x1
	.value	0x314
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF875
	.byte	0x1
	.value	0x316
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF947
	.byte	0x1
	.value	0x32c
	.long	0x1bf9
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x34dd
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x32d
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF940
	.byte	0x1
	.value	0x32e
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x37
	.string	"tmp"
	.byte	0x1
	.value	0x330
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF948
	.byte	0x1
	.value	0x331
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.string	"src"
	.byte	0x1
	.value	0x332
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF908
	.byte	0x1
	.value	0x333
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF943
	.long	0x34ed
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12629
	.uleb128 0x30
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x37
	.string	"vec"
	.byte	0x1
	.value	0x34e
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.string	"j"
	.byte	0x1
	.value	0x34f
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x38
	.long	.LASF949
	.byte	0x1
	.value	0x350
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x34ed
	.uleb128 0x16
	.long	0x1ea
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x34dd
	.uleb128 0x3c
	.long	.LASF950
	.byte	0x1
	.value	0x395
	.long	0x295d
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x36f5
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x396
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x35
	.long	.LASF940
	.byte	0x1
	.value	0x397
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x38
	.long	.LASF951
	.byte	0x1
	.value	0x399
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x38
	.long	.LASF927
	.byte	0x1
	.value	0x399
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x38
	.long	.LASF906
	.byte	0x1
	.value	0x39a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x38
	.long	.LASF928
	.byte	0x1
	.value	0x39b
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF943
	.long	0x36f5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12638
	.uleb128 0x2f
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x35b9
	.uleb128 0x37
	.string	"pe1"
	.byte	0x1
	.value	0x3a5
	.long	0x2968
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x3a6
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2f
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x3647
	.uleb128 0x37
	.string	"__h"
	.byte	0x1
	.value	0x3d2
	.long	0x2a14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x3614
	.uleb128 0x37
	.string	"__o"
	.byte	0x1
	.value	0x3d2
	.long	0x2a14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x38
	.long	.LASF929
	.byte	0x1
	.value	0x3d2
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x30
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x38
	.long	.LASF930
	.byte	0x1
	.value	0x3d2
	.long	0x2a14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x38
	.long	.LASF341
	.byte	0x1
	.value	0x3d2
	.long	0x317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x36d3
	.uleb128 0x37
	.string	"__h"
	.byte	0x1
	.value	0x3d4
	.long	0x2a14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x36a2
	.uleb128 0x37
	.string	"__o"
	.byte	0x1
	.value	0x3d4
	.long	0x2a14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF929
	.byte	0x1
	.value	0x3d4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x30
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x38
	.long	.LASF930
	.byte	0x1
	.value	0x3d4
	.long	0x2a14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF341
	.byte	0x1
	.value	0x3d4
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x38
	.long	.LASF907
	.byte	0x1
	.value	0x3f3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x33b7
	.uleb128 0x34
	.long	.LASF952
	.byte	0x1
	.value	0x404
	.long	0x295d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x372a
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x405
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF953
	.byte	0x1
	.value	0x40f
	.long	0x295d
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3769
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x410
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF940
	.byte	0x1
	.value	0x411
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x39
	.long	.LASF954
	.byte	0x1
	.value	0x420
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x37bd
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x421
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.string	"b"
	.byte	0x1
	.value	0x422
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.string	"c"
	.byte	0x1
	.value	0x422
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.string	"q"
	.byte	0x1
	.value	0x424
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x39
	.long	.LASF955
	.byte	0x1
	.value	0x458
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3822
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x45a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x37
	.string	"b"
	.byte	0x1
	.value	0x45e
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.string	"c"
	.byte	0x1
	.value	0x45f
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x460
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF956
	.byte	0x1
	.value	0x47d
	.long	0x1bf9
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3881
	.uleb128 0x36
	.string	"bb1"
	.byte	0x1
	.value	0x47e
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"bb2"
	.byte	0x1
	.value	0x47e
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF908
	.byte	0x1
	.value	0x480
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF746
	.byte	0x1
	.value	0x481
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x34
	.long	.LASF957
	.byte	0x1
	.value	0x49d
	.long	0x295d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a2c
	.uleb128 0x35
	.long	.LASF958
	.byte	0x1
	.value	0x49e
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x4a0
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x38
	.long	.LASF959
	.byte	0x1
	.value	0x4a1
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF960
	.byte	0x1
	.value	0x4a2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF943
	.long	0x3a3c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12699
	.uleb128 0x2f
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x3918
	.uleb128 0x37
	.string	"e"
	.byte	0x1
	.value	0x4ac
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2f
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x39a5
	.uleb128 0x37
	.string	"__h"
	.byte	0x1
	.value	0x4dd
	.long	0x2a14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x3973
	.uleb128 0x37
	.string	"__o"
	.byte	0x1
	.value	0x4dd
	.long	0x2a14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.long	.LASF929
	.byte	0x1
	.value	0x4dd
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x30
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x38
	.long	.LASF930
	.byte	0x1
	.value	0x4dd
	.long	0x2a14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF341
	.byte	0x1
	.value	0x4dd
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x37
	.string	"__h"
	.byte	0x1
	.value	0x4de
	.long	0x2a14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x39fa
	.uleb128 0x37
	.string	"__o"
	.byte	0x1
	.value	0x4de
	.long	0x2a14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF929
	.byte	0x1
	.value	0x4de
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x30
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x38
	.long	.LASF930
	.byte	0x1
	.value	0x4de
	.long	0x2a14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF341
	.byte	0x1
	.value	0x4de
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x3a3c
	.uleb128 0x16
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	0x3a2c
	.uleb128 0x39
	.long	.LASF961
	.byte	0x1
	.value	0x4f9
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a8f
	.uleb128 0x35
	.long	.LASF962
	.byte	0x1
	.value	0x4fa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x4fb
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF943
	.long	0x3a8f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12722
	.byte	0
	.uleb128 0xc
	.long	0x567
	.uleb128 0x3e
	.long	.LASF1014
	.byte	0x1
	.value	0x510
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b2d
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x511
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF960
	.byte	0x1
	.value	0x513
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF916
	.byte	0x1
	.value	0x513
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF863
	.byte	0x1
	.value	0x513
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.string	"tmp"
	.byte	0x1
	.value	0x513
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF875
	.byte	0x1
	.value	0x513
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x514
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF943
	.long	0x3b3d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12735
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x3b3d
	.uleb128 0x16
	.long	0x1ea
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.long	0x3b2d
	.uleb128 0x39
	.long	.LASF963
	.byte	0x1
	.value	0x579
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3baa
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x57b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x57c
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x37
	.string	"e"
	.byte	0x1
	.value	0x586
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	.LASF819
	.byte	0x1
	.value	0x586
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF964
	.byte	0x1
	.value	0x598
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c11
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x599
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF965
	.byte	0x1
	.value	0x59a
	.long	0x3c11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF908
	.byte	0x1
	.value	0x59c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF875
	.byte	0x1
	.value	0x59d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.string	"e"
	.byte	0x1
	.value	0x59e
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x371
	.uleb128 0x39
	.long	.LASF966
	.byte	0x1
	.value	0x5bd
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c44
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x5be
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF967
	.byte	0x1
	.value	0x5c4
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c70
	.uleb128 0x36
	.string	"n"
	.byte	0x1
	.value	0x5c5
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.long	.LASF968
	.byte	0x1
	.value	0x5ce
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dbf
	.uleb128 0x35
	.long	.LASF965
	.byte	0x1
	.value	0x5cf
	.long	0x3c11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF969
	.byte	0x1
	.value	0x5d0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x38
	.long	.LASF970
	.byte	0x1
	.value	0x5d2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x5d8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF971
	.byte	0x4
	.byte	0x1
	.value	0x5d9
	.long	0x3cfd
	.uleb128 0x10
	.long	.LASF972
	.sleb128 0
	.uleb128 0x10
	.long	.LASF973
	.sleb128 1
	.uleb128 0x10
	.long	.LASF974
	.sleb128 2
	.byte	0
	.uleb128 0x38
	.long	.LASF975
	.byte	0x1
	.value	0x5da
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.long	.LASF911
	.byte	0x1
	.value	0x5db
	.long	0x3dbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.value	0x5dd
	.long	0x3dbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF976
	.byte	0x1
	.value	0x5df
	.long	0x3dc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x3d8d
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x5e4
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"x"
	.byte	0x1
	.value	0x5e5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x38
	.long	.LASF977
	.byte	0x1
	.value	0x5eb
	.long	0x3cdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x38
	.long	.LASF978
	.byte	0x1
	.value	0x5f8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x5f9
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x295d
	.uleb128 0x3
	.byte	0x8
	.long	0x3cdd
	.uleb128 0x39
	.long	.LASF979
	.byte	0x1
	.value	0x627
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e07
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x628
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF906
	.byte	0x1
	.value	0x62a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF980
	.byte	0x1
	.value	0x648
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ff4
	.uleb128 0x38
	.long	.LASF975
	.byte	0x1
	.value	0x64a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x38
	.long	.LASF969
	.byte	0x1
	.value	0x64b
	.long	0x3ff4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.long	.LASF981
	.byte	0x1
	.value	0x64c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x38
	.long	.LASF982
	.byte	0x1
	.value	0x64d
	.long	0x3dbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.long	.LASF983
	.byte	0x1
	.value	0x64d
	.long	0x3dbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF984
	.byte	0x1
	.value	0x64e
	.long	0x3ff9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.string	"x"
	.byte	0x1
	.value	0x64f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x650
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x38
	.long	.LASF985
	.byte	0x1
	.value	0x650
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x38
	.long	.LASF986
	.byte	0x1
	.value	0x650
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0x650
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2e
	.long	.LASF943
	.long	0x400f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12833
	.uleb128 0x2f
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x3f25
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x659
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF735
	.byte	0x1
	.value	0x65a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.value	0x65b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2f
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x3faf
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x689
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	.LASF987
	.byte	0x1
	.value	0x68a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x37
	.string	"e"
	.byte	0x1
	.value	0x68b
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x3f8c
	.uleb128 0x38
	.long	.LASF908
	.byte	0x1
	.value	0x69f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x30
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x38
	.long	.LASF908
	.byte	0x1
	.value	0x6cb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x3fd3
	.uleb128 0x37
	.string	"e"
	.byte	0x1
	.value	0x72c
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x30
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x37
	.string	"bb"
	.byte	0x1
	.value	0x742
	.long	0x295d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x2d
	.uleb128 0x3
	.byte	0x8
	.long	0x320
	.uleb128 0x15
	.long	0x36a
	.long	0x400f
	.uleb128 0x16
	.long	0x1ea
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	0x3fff
	.uleb128 0x34
	.long	.LASF988
	.byte	0x1
	.value	0x77d
	.long	0x1bf9
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x4105
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x77e
	.long	0x295d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x37
	.string	"e"
	.byte	0x1
	.value	0x780
	.long	0x2952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.long	.LASF819
	.byte	0x1
	.value	0x780
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF908
	.byte	0x1
	.value	0x781
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF906
	.byte	0x1
	.value	0x781
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF989
	.byte	0x1
	.value	0x782
	.long	0x1bf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x2e
	.long	.LASF943
	.long	0x4105
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12900
	.uleb128 0x2f
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x40c9
	.uleb128 0x38
	.long	.LASF990
	.byte	0x1
	.value	0x788
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x30
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x38
	.long	.LASF906
	.byte	0x1
	.value	0x79f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.string	"b"
	.byte	0x1
	.value	0x7a0
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"f"
	.byte	0x1
	.value	0x7a0
	.long	0x2952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x3fff
	.uleb128 0x34
	.long	.LASF991
	.byte	0x1
	.value	0x80c
	.long	0x1bf9
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4188
	.uleb128 0x35
	.long	.LASF992
	.byte	0x1
	.value	0x80d
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x80f
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	.LASF989
	.byte	0x1
	.value	0x80f
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LASF993
	.byte	0x1
	.value	0x810
	.long	0x2580
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x38
	.long	.LASF994
	.byte	0x1
	.value	0x81a
	.long	0x1bf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	.LASF995
	.byte	0x5
	.byte	0x62
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF996
	.byte	0x8
	.byte	0xaa
	.long	0x54b
	.uleb128 0x15
	.long	0x36a
	.long	0x41ae
	.uleb128 0x16
	.long	0x1ea
	.byte	0x98
	.byte	0
	.uleb128 0x3f
	.long	.LASF997
	.byte	0x2
	.byte	0x3f
	.long	0x41b9
	.uleb128 0xc
	.long	0x419e
	.uleb128 0x15
	.long	0x2d
	.long	0x41ce
	.uleb128 0x16
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0x40
	.long	.LASF998
	.byte	0x2
	.value	0x652
	.long	0x41be
	.uleb128 0x3f
	.long	.LASF999
	.byte	0x10
	.byte	0xe4
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1000
	.byte	0x10
	.byte	0xec
	.long	0x28ac
	.uleb128 0x41
	.long	.LASF1001
	.byte	0x1
	.byte	0x48
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	label_value_list
	.uleb128 0x41
	.long	.LASF1002
	.byte	0x1
	.byte	0x49
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	tail_recursion_label_list
	.uleb128 0x3f
	.long	.LASF1003
	.byte	0x10
	.byte	0xf8
	.long	0xd03
	.uleb128 0x15
	.long	0x21f3
	.long	0x4235
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.long	.LASF1004
	.byte	0x10
	.value	0x116
	.long	0x4225
	.uleb128 0x41
	.long	.LASF1005
	.byte	0x1
	.byte	0x43
	.long	0x28ac
	.uleb128 0x9
	.byte	0x3
	.quad	basic_block_for_insn
	.uleb128 0x3f
	.long	.LASF1006
	.byte	0x14
	.byte	0x3d
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1007
	.byte	0x15
	.value	0x1cb
	.long	0x3c11
	.uleb128 0x40
	.long	.LASF1008
	.byte	0xe
	.value	0x1e4
	.long	0x16c8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x20
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF272:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF544:
	.string	"TI_UV16QI_TYPE"
.LASF193:
	.string	"BUILT_IN_CONJ"
.LASF433:
	.string	"profile_label_no"
.LASF722:
	.string	"rtstr"
.LASF559:
	.string	"itk_unsigned_char"
.LASF783:
	.string	"NOTE_INSN_DELETED"
.LASF239:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF104:
	.string	"_unused2"
.LASF651:
	.string	"UMOD"
.LASF705:
	.string	"min_align"
.LASF189:
	.string	"BUILT_IN_FABSF"
.LASF90:
	.string	"_fileno"
.LASF190:
	.string	"BUILT_IN_FABSL"
.LASF829:
	.string	"varray_data_tag"
.LASF35:
	.string	"AD_REGS"
.LASF731:
	.string	"first"
.LASF551:
	.string	"TI_V2SI_TYPE"
.LASF427:
	.string	"inlinable"
.LASF459:
	.string	"uses_const_pool"
.LASF512:
	.string	"TI_UINTSI_TYPE"
.LASF692:
	.string	"CONSTANT_P_RTX"
.LASF357:
	.string	"tree_type"
.LASF819:
	.string	"next"
.LASF26:
	.string	"block"
.LASF569:
	.string	"_Bool"
.LASF965:
	.string	"outf"
.LASF721:
	.string	"rtuint"
.LASF999:
	.string	"n_basic_blocks"
.LASF487:
	.string	"pure_flag"
.LASF725:
	.string	"rt_cselib"
.LASF595:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF432:
	.string	"inl_max_label_num"
.LASF655:
	.string	"LSHIFTRT"
.LASF1010:
	.string	"cfgrtl.c"
.LASF16:
	.string	"common"
.LASF273:
	.string	"BUILT_IN_EH_RETURN"
.LASF589:
	.string	"MATCH_PAR_DUP"
.LASF95:
	.string	"_shortbuf"
.LASF1011:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF650:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF511:
	.string	"TI_UINTHI_TYPE"
.LASF449:
	.string	"contains_functions"
.LASF212:
	.string	"BUILT_IN_STRCPY"
.LASF972:
	.string	"NOT_IN_BB"
.LASF583:
	.string	"MATCH_OPERAND"
.LASF531:
	.string	"TI_VOID_TYPE"
.LASF170:
	.string	"CCFPmode"
.LASF275:
	.string	"BUILT_IN_VARARGS_START"
.LASF316:
	.string	"imag"
.LASF111:
	.string	"reg_class"
.LASF633:
	.string	"CONST_STRING"
.LASF672:
	.string	"UNLE"
.LASF39:
	.string	"LEGACY_REGS"
.LASF710:
	.string	"max_after_base"
.LASF315:
	.string	"real"
.LASF518:
	.string	"TI_NULL_POINTER"
.LASF673:
	.string	"UNLT"
.LASF355:
	.string	"fragment_chain"
.LASF311:
	.string	"tree_string"
.LASF364:
	.string	"no_force_blk_flag"
.LASF993:
	.string	"blocks"
.LASF354:
	.string	"fragment_origin"
.LASF900:
	.string	"initial_value_struct"
.LASF547:
	.string	"TI_V4SI_TYPE"
.LASF252:
	.string	"BUILT_IN_FWRITE"
.LASF864:
	.string	"probability"
.LASF142:
	.string	"CTImode"
.LASF76:
	.string	"_flags"
.LASF370:
	.string	"user_align"
.LASF478:
	.string	"static_dtor_flag"
.LASF312:
	.string	"length"
.LASF501:
	.string	"lang_type"
.LASF486:
	.string	"built_in_class"
.LASF71:
	.string	"__off_t"
.LASF924:
	.string	"set_block_for_insn"
.LASF469:
	.string	"inline_flag"
.LASF521:
	.string	"TI_BITSIZE_ZERO"
.LASF228:
	.string	"BUILT_IN_COSF"
.LASF140:
	.string	"CSImode"
.LASF41:
	.string	"FP_TOP_REG"
.LASF231:
	.string	"BUILT_IN_COSL"
.LASF694:
	.string	"VEC_MERGE"
.LASF796:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF430:
	.string	"original_decl_initial"
.LASF96:
	.string	"_lock"
.LASF831:
	.string	"uhint"
.LASF627:
	.string	"RETURN"
.LASF202:
	.string	"BUILT_IN_BZERO"
.LASF930:
	.string	"__o1"
.LASF832:
	.string	"generic"
.LASF235:
	.string	"BUILT_IN_ARGS_INFO"
.LASF1004:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF176:
	.string	"MODE_FLOAT"
.LASF208:
	.string	"BUILT_IN_MEMCMP"
.LASF250:
	.string	"BUILT_IN_FPUTC"
.LASF242:
	.string	"BUILT_IN_RETURN"
.LASF290:
	.string	"unused_0"
.LASF306:
	.string	"unused_1"
.LASF509:
	.string	"TI_INTTI_TYPE"
.LASF251:
	.string	"BUILT_IN_FPUTS"
.LASF714:
	.string	"alias"
.LASF939:
	.string	"try_redirect_by_replacing_jump"
.LASF711:
	.string	"offset_unsigned"
.LASF146:
	.string	"V2SImode"
.LASF257:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF456:
	.string	"stdarg"
.LASF417:
	.string	"x_trampoline_list"
.LASF954:
	.string	"tidy_fallthru_edge"
.LASF361:
	.string	"attributes"
.LASF528:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF36:
	.string	"Q_REGS"
.LASF614:
	.string	"CODE_LABEL"
.LASF258:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF141:
	.string	"CDImode"
.LASF620:
	.string	"UNSPEC"
.LASF224:
	.string	"BUILT_IN_SIN"
.LASF283:
	.string	"side_effects_flag"
.LASF534:
	.string	"TI_PTRDIFF_TYPE"
.LASF789:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF616:
	.string	"COND_EXEC"
.LASF630:
	.string	"CONST_INT"
.LASF974:
	.string	"IN_MULTIPLE_BB"
.LASF626:
	.string	"CALL"
.LASF61:
	.string	"maybe_vaarg"
.LASF438:
	.string	"epilogue_delay_list"
.LASF489:
	.string	"uninlinable"
.LASF148:
	.string	"V4QImode"
.LASF605:
	.string	"ATTR"
.LASF271:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF746:
	.string	"count"
.LASF723:
	.string	"rttype"
.LASF983:
	.string	"last_visited"
.LASF30:
	.string	"DREG"
.LASF344:
	.string	"complexity"
.LASF736:
	.string	"head_tree"
.LASF48:
	.string	"FLOAT_SSE_REGS"
.LASF813:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF358:
	.string	"values"
.LASF308:
	.string	"tree_int_cst"
.LASF779:
	.string	"REG_ALWAYS_RETURN"
.LASF227:
	.string	"BUILT_IN_SINF"
.LASF147:
	.string	"V2DImode"
.LASF903:
	.string	"language_function"
.LASF747:
	.string	"frequency"
.LASF230:
	.string	"BUILT_IN_SINL"
.LASF287:
	.string	"readonly_flag"
.LASF856:
	.string	"varray_type"
.LASF716:
	.string	"mem_attrs"
.LASF82:
	.string	"_IO_write_end"
.LASF760:
	.string	"REG_UNUSED"
.LASF598:
	.string	"DEFINE_DELAY"
.LASF648:
	.string	"MINUS"
.LASF414:
	.string	"x_clobber_return_insn"
.LASF33:
	.string	"SIREG"
.LASF989:
	.string	"purged"
.LASF836:
	.string	"sched_info_tag"
.LASF207:
	.string	"BUILT_IN_MEMCPY"
.LASF638:
	.string	"STRICT_LOW_PART"
.LASF888:
	.string	"x_regno_reg_rtx"
.LASF929:
	.string	"__len"
.LASF580:
	.string	"INCLUDE"
.LASF971:
	.string	"bb_state"
.LASF809:
	.string	"GR_FRAME_POINTER"
.LASF282:
	.string	"chain"
.LASF744:
	.string	"index"
.LASF843:
	.string	"freq"
.LASF676:
	.string	"ZERO_EXTEND"
.LASF236:
	.string	"BUILT_IN_CONSTANT_P"
.LASF679:
	.string	"FLOAT_TRUNCATE"
.LASF895:
	.string	"x_forced_labels"
.LASF262:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF398:
	.string	"internal_arg_pointer"
.LASF463:
	.string	"tree_decl"
.LASF806:
	.string	"GR_PC"
.LASF32:
	.string	"BREG"
.LASF915:
	.string	"bb_note"
.LASF157:
	.string	"V2SFmode"
.LASF850:
	.string	"varray_data"
.LASF902:
	.string	"machine_function"
.LASF680:
	.string	"FLOAT"
.LASF981:
	.string	"last_head"
.LASF772:
	.string	"REG_EH_CONTEXT"
.LASF112:
	.string	"machine_mode"
.LASF969:
	.string	"rtx_first"
.LASF325:
	.string	"chunk"
.LASF728:
	.string	"rtmem"
.LASF426:
	.string	"fixup_var_refs_queue"
.LASF689:
	.string	"RANGE_REG"
.LASF726:
	.string	"rtbit"
.LASF818:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF119:
	.string	"TImode"
.LASF665:
	.string	"PRE_MODIFY"
.LASF441:
	.string	"returns_pointer"
.LASF309:
	.string	"realvaluetype"
.LASF678:
	.string	"FLOAT_EXTEND"
.LASF205:
	.string	"BUILT_IN_INDEX"
.LASF840:
	.string	"last_note_uid"
.LASF386:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF784:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF117:
	.string	"SImode"
.LASF622:
	.string	"ADDR_VEC"
.LASF898:
	.string	"stmt_status"
.LASF158:
	.string	"V2DFmode"
.LASF704:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF296:
	.string	"protected_flag"
.LASF956:
	.string	"back_edge_of_syntactic_loop_p"
.LASF24:
	.string	"type"
.LASF60:
	.string	"sse_regno"
.LASF988:
	.string	"purge_dead_edges"
.LASF733:
	.string	"indx"
.LASF434:
	.string	"machine"
.LASF641:
	.string	"SYMBOL_REF"
.LASF782:
	.string	"NOTE_INSN_BIAS"
.LASF145:
	.string	"V2HImode"
.LASF502:
	.string	"lang_decl"
.LASF957:
	.string	"split_edge"
.LASF804:
	.string	"NOTE_INSN_MAX"
.LASF893:
	.string	"x_saveregs_value"
.LASF349:
	.string	"block_num"
.LASF931:
	.string	"merge_blocks_nomove"
.LASF594:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF646:
	.string	"COMPARE"
.LASF674:
	.string	"LTGT"
.LASF987:
	.string	"has_fallthru"
.LASF343:
	.string	"tree_exp"
.LASF935:
	.string	"del_first"
.LASF946:
	.string	"last_loop_beg_note"
.LASF329:
	.string	"temp"
.LASF873:
	.string	"unsignedp"
.LASF686:
	.string	"HIGH"
.LASF643:
	.string	"QUEUED"
.LASF37:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF118:
	.string	"DImode"
.LASF319:
	.string	"_obstack_chunk"
.LASF185:
	.string	"BUILT_IN_ALLOCA"
.LASF826:
	.string	"elms"
.LASF828:
	.string	"const_equiv_data"
.LASF400:
	.string	"hard_reg_initial_vals"
.LASF891:
	.string	"x_inhibit_defer_pop"
.LASF565:
	.string	"itk_unsigned_long"
.LASF89:
	.string	"_chain"
.LASF664:
	.string	"POST_INC"
.LASF964:
	.string	"dump_bb"
.LASF514:
	.string	"TI_UINTTI_TYPE"
.LASF945:
	.string	"barrier"
.LASF477:
	.string	"static_ctor_flag"
.LASF131:
	.string	"TFmode"
.LASF244:
	.string	"BUILT_IN_LONGJMP"
.LASF67:
	.string	"unsigned char"
.LASF901:
	.string	"temp_slot"
.LASF42:
	.string	"FP_SECOND_REG"
.LASF288:
	.string	"unsigned_flag"
.LASF491:
	.string	"arguments"
.LASF399:
	.string	"cannot_inline"
.LASF1012:
	.string	"_IO_lock_t"
.LASF533:
	.string	"TI_CONST_PTR_TYPE"
.LASF383:
	.string	"lang_specific"
.LASF324:
	.string	"chunk_size"
.LASF926:
	.string	"split_block"
.LASF847:
	.string	"basic_block"
.LASF114:
	.string	"BImode"
.LASF382:
	.string	"alias_set"
.LASF759:
	.string	"REG_NO_CONFLICT"
.LASF128:
	.string	"SFmode"
.LASF508:
	.string	"TI_INTDI_TYPE"
.LASF388:
	.string	"emit"
.LASF367:
	.string	"packed_flag"
.LASF186:
	.string	"BUILT_IN_ABS"
.LASF310:
	.string	"tree_real_cst"
.LASF611:
	.string	"JUMP_INSN"
.LASF741:
	.string	"cond_local_set"
.LASF940:
	.string	"target"
.LASF561:
	.string	"itk_unsigned_short"
.LASF865:
	.string	"edge"
.LASF196:
	.string	"BUILT_IN_CREAL"
.LASF180:
	.string	"MODE_COMPLEX_FLOAT"
.LASF949:
	.string	"new_label"
.LASF727:
	.string	"rttree"
.LASF468:
	.string	"regdecl_flag"
.LASF937:
	.string	"b_empty"
.LASF192:
	.string	"BUILT_IN_IMAXABS"
.LASF1013:
	.string	"free_bb_for_insn"
.LASF201:
	.string	"BUILT_IN_CIMAGL"
.LASF839:
	.string	"last_uid"
.LASF326:
	.string	"object_base"
.LASF781:
	.string	"insn_note"
.LASF800:
	.string	"NOTE_INSN_RANGE_END"
.LASF593:
	.string	"DEFINE_SPLIT"
.LASF448:
	.string	"has_nonlocal_goto"
.LASF462:
	.string	"arg_pointer_save_area_init"
.LASF261:
	.string	"BUILT_IN_ISGREATER"
.LASF245:
	.string	"BUILT_IN_TRAP"
.LASF632:
	.string	"CONST_VECTOR"
.LASF590:
	.string	"MATCH_INSN"
.LASF307:
	.string	"high"
.LASF950:
	.string	"force_nonfallthru_and_redirect"
.LASF550:
	.string	"TI_V4HI_TYPE"
.LASF408:
	.string	"x_save_expr_regs"
.LASF129:
	.string	"DFmode"
.LASF44:
	.string	"SSE_REGS"
.LASF858:
	.string	"gcov_type"
.LASF65:
	.string	"size_t"
.LASF624:
	.string	"PREFETCH"
.LASF53:
	.string	"LIM_REG_CLASSES"
.LASF52:
	.string	"ALL_REGS"
.LASF391:
	.string	"pops_args"
.LASF123:
	.string	"PSImode"
.LASF410:
	.string	"x_rtl_expr_chain"
.LASF211:
	.string	"BUILT_IN_STRNCAT"
.LASF437:
	.string	"language"
.LASF572:
	.string	"SSIZETYPE"
.LASF718:
	.string	"rtunion_def"
.LASF264:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF604:
	.string	"DEFINE_ATTR"
.LASF573:
	.string	"USIZETYPE"
.LASF606:
	.string	"SET_ATTR"
.LASF137:
	.string	"TCmode"
.LASF402:
	.string	"x_nonlocal_labels"
.LASF681:
	.string	"UNSIGNED_FLOAT"
.LASF771:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF729:
	.string	"cselib_val_struct"
.LASF803:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF81:
	.string	"_IO_write_ptr"
.LASF322:
	.string	"contents"
.LASF653:
	.string	"ROTATE"
.LASF246:
	.string	"BUILT_IN_PREFETCH"
.LASF739:
	.string	"succ"
.LASF842:
	.string	"refs"
.LASF677:
	.string	"TRUNCATE"
.LASF764:
	.string	"REG_DEP_ANTI"
.LASF134:
	.string	"SCmode"
.LASF947:
	.string	"redirect_edge_and_branch"
.LASF980:
	.string	"verify_flow_info"
.LASF998:
	.string	"global_rtl"
.LASF389:
	.string	"varasm"
.LASF556:
	.string	"integer_type_kind"
.LASF124:
	.string	"PDImode"
.LASF785:
	.string	"NOTE_INSN_BLOCK_END"
.LASF525:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF822:
	.string	"bitmap"
.LASF431:
	.string	"inl_last_parm_insn"
.LASF794:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF997:
	.string	"rtx_class"
.LASF379:
	.string	"main_variant"
.LASF748:
	.string	"flags"
.LASF517:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF530:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF285:
	.string	"addressable_flag"
.LASF608:
	.string	"EQ_ATTR"
.LASF293:
	.string	"static_flag"
.LASF527:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF167:
	.string	"CCGOCmode"
.LASF639:
	.string	"CONCAT"
.LASF222:
	.string	"BUILT_IN_STRRCHR"
.LASF860:
	.string	"pred_next"
.LASF359:
	.string	"size"
.LASF546:
	.string	"TI_V16SF_TYPE"
.LASF707:
	.string	"min_after_vec"
.LASF526:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF74:
	.string	"FILE"
.LASF645:
	.string	"COND"
.LASF823:
	.string	"simple_bitmap_def"
.LASF177:
	.string	"MODE_PARTIAL_INT"
.LASF418:
	.string	"x_parm_birth_insn"
.LASF916:
	.string	"after"
.LASF420:
	.string	"x_max_parm_reg"
.LASF203:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF135:
	.string	"DCmode"
.LASF596:
	.string	"DEFINE_COMBINE"
.LASF1009:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF532:
	.string	"TI_PTR_TYPE"
.LASF412:
	.string	"x_tail_recursion_reentry"
.LASF968:
	.string	"print_rtl_with_bb"
.LASF22:
	.string	"identifier"
.LASF654:
	.string	"ASHIFTRT"
.LASF165:
	.string	"CCmode"
.LASF274:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF266:
	.string	"BUILT_IN_ISUNORDERED"
.LASF737:
	.string	"end_tree"
.LASF43:
	.string	"FLOAT_REGS"
.LASF787:
	.string	"NOTE_INSN_LOOP_END"
.LASF163:
	.string	"V16SFmode"
.LASF1001:
	.string	"label_value_list"
.LASF698:
	.string	"SS_PLUS"
.LASF493:
	.string	"initial"
.LASF801:
	.string	"NOTE_INSN_LIVE"
.LASF601:
	.string	"DEFINE_COND_EXEC"
.LASF85:
	.string	"_IO_save_base"
.LASF571:
	.string	"SIZETYPE"
.LASF910:
	.string	"diff_vec_p"
.LASF870:
	.string	"var_refs_queue"
.LASF892:
	.string	"x_stack_pointer_delta"
.LASF597:
	.string	"DEFINE_EXPAND"
.LASF451:
	.string	"is_thunk"
.LASF853:
	.string	"elements_used"
.LASF154:
	.string	"V8SImode"
.LASF404:
	.string	"x_nonlocal_goto_handler_labels"
.LASF610:
	.string	"INSN"
.LASF720:
	.string	"rtint"
.LASF276:
	.string	"BUILT_IN_STDARG_START"
.LASF483:
	.string	"comdat_flag"
.LASF640:
	.string	"LABEL_REF"
.LASF513:
	.string	"TI_UINTDI_TYPE"
.LASF763:
	.string	"REG_LABEL"
.LASF984:
	.string	"edge_checksum"
.LASF523:
	.string	"TI_BITSIZE_UNIT"
.LASF761:
	.string	"REG_CC_SETTER"
.LASF979:
	.string	"update_br_prob_note"
.LASF849:
	.string	"elt_list"
.LASF852:
	.string	"num_elements"
.LASF751:
	.string	"REG_DEAD"
.LASF791:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF99:
	.string	"__pad2"
.LASF754:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF857:
	.string	"regset"
.LASF17:
	.string	"int_cst"
.LASF917:
	.string	"create_basic_block"
.LASF909:
	.string	"really_delete"
.LASF529:
	.string	"TI_DOUBLE_TYPE"
.LASF868:
	.string	"UPDATE_LIFE_GLOBAL"
.LASF317:
	.string	"tree_vector"
.LASF166:
	.string	"CCGCmode"
.LASF743:
	.string	"global_live_at_end"
.LASF25:
	.string	"list"
.LASF636:
	.string	"SCRATCH"
.LASF152:
	.string	"V8QImode"
.LASF824:
	.string	"n_bits"
.LASF155:
	.string	"V8DImode"
.LASF183:
	.string	"MAX_MODE_CLASS"
.LASF567:
	.string	"itk_unsigned_long_long"
.LASF922:
	.string	"compute_bb_for_insn"
.LASF675:
	.string	"SIGN_EXTEND"
.LASF443:
	.string	"calls_setjmp"
.LASF944:
	.string	"target_label"
.LASF341:
	.string	"value"
.LASF697:
	.string	"VEC_DUPLICATE"
.LASF982:
	.string	"bb_info"
.LASF405:
	.string	"x_nonlocal_goto_stack_level"
.LASF106:
	.string	"_next"
.LASF218:
	.string	"BUILT_IN_STRPBRK"
.LASF387:
	.string	"expr"
.LASF797:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF356:
	.string	"address"
.LASF928:
	.string	"new_edge"
.LASF331:
	.string	"chunkfun"
.LASF247:
	.string	"BUILT_IN_PUTCHAR"
.LASF403:
	.string	"x_nonlocal_goto_handler_slots"
.LASF161:
	.string	"V8SFmode"
.LASF908:
	.string	"insn"
.LASF237:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF34:
	.string	"DIREG"
.LASF762:
	.string	"REG_CC_USER"
.LASF619:
	.string	"ASM_OPERANDS"
.LASF423:
	.string	"x_temp_slot_level"
.LASF376:
	.string	"minval"
.LASF421:
	.string	"x_parm_reg_stack_loc"
.LASF169:
	.string	"CCZmode"
.LASF788:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF38:
	.string	"INDEX_REGS"
.LASF591:
	.string	"DEFINE_INSN"
.LASF505:
	.string	"TI_INTQI_TYPE"
.LASF353:
	.string	"abstract_origin"
.LASF777:
	.string	"REG_NON_LOCAL_GOTO"
.LASF623:
	.string	"ADDR_DIFF_VEC"
.LASF766:
	.string	"REG_BR_PROB"
.LASF758:
	.string	"REG_NONNEG"
.LASF453:
	.string	"profile"
.LASF685:
	.string	"ZERO_EXTRACT"
.LASF830:
	.string	"hint"
.LASF618:
	.string	"ASM_INPUT"
.LASF337:
	.string	"ht_identifier"
.LASF668:
	.string	"ORDERED"
.LASF162:
	.string	"V8DFmode"
.LASF872:
	.string	"promoted_mode"
.LASF494:
	.string	"assembler_name"
.LASF538:
	.string	"TI_UV4SI_TYPE"
.LASF365:
	.string	"needs_constructing_flag"
.LASF682:
	.string	"UNSIGNED_FIX"
.LASF471:
	.string	"virtual_flag"
.LASF440:
	.string	"returns_pcc_struct"
.LASF215:
	.string	"BUILT_IN_STRNCMP"
.LASF740:
	.string	"local_set"
.LASF314:
	.string	"tree_complex"
.LASF613:
	.string	"BARRIER"
.LASF905:
	.string	"can_delete_label_p"
.LASF58:
	.string	"sse_words"
.LASF40:
	.string	"GENERAL_REGS"
.LASF612:
	.string	"CALL_INSN"
.LASF996:
	.string	"stderr"
.LASF485:
	.string	"no_limit_stack"
.LASF492:
	.string	"result"
.LASF607:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF375:
	.string	"name"
.LASF582:
	.string	"INSN_LIST"
.LASF107:
	.string	"_sbuf"
.LASF690:
	.string	"RANGE_VAR"
.LASF848:
	.string	"changes_mode"
.LASF87:
	.string	"_IO_save_end"
.LASF175:
	.string	"MODE_INT"
.LASF854:
	.string	"element_size"
.LASF18:
	.string	"real_cst"
.LASF395:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF346:
	.string	"tree_block"
.LASF57:
	.string	"regno"
.LASF519:
	.string	"TI_SIZE_ZERO"
.LASF814:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF889:
	.string	"expr_status"
.LASF963:
	.string	"commit_edge_insertions"
.LASF351:
	.string	"subblocks"
.LASF447:
	.string	"has_nonlocal_label"
.LASF560:
	.string	"itk_short"
.LASF209:
	.string	"BUILT_IN_MEMSET"
.LASF691:
	.string	"RANGE_LIVE"
.LASF890:
	.string	"x_pending_stack_adjust"
.LASF392:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF835:
	.string	"const_equiv"
.LASF369:
	.string	"pointer_depth"
.LASF313:
	.string	"pointer"
.LASF280:
	.string	"END_BUILTINS"
.LASF581:
	.string	"EXPR_LIST"
.LASF574:
	.string	"BITSIZETYPE"
.LASF811:
	.string	"GR_ARG_POINTER"
.LASF27:
	.string	"sizetype"
.LASF47:
	.string	"FP_SECOND_SSE_REGS"
.LASF700:
	.string	"SS_MINUS"
.LASF986:
	.string	"num_bb_notes"
.LASF587:
	.string	"MATCH_PARALLEL"
.LASF150:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF281:
	.string	"tree_common"
.LASF753:
	.string	"REG_EQUIV"
.LASF380:
	.string	"binfo"
.LASF522:
	.string	"TI_BITSIZE_ONE"
.LASF68:
	.string	"short unsigned int"
.LASF69:
	.string	"signed char"
.LASF516:
	.string	"TI_INTEGER_ONE"
.LASF586:
	.string	"MATCH_OPERATOR"
.LASF774:
	.string	"REG_SAVE_NOTE"
.LASF911:
	.string	"start"
.LASF658:
	.string	"SMAX"
.LASF340:
	.string	"purpose"
.LASF419:
	.string	"x_last_parm_insn"
.LASF506:
	.string	"TI_INTHI_TYPE"
.LASF851:
	.string	"varray_head_tag"
.LASF732:
	.string	"current"
.LASF372:
	.string	"pointer_to"
.LASF919:
	.string	"deleted_handler"
.LASF480:
	.string	"weak_flag"
.LASF882:
	.string	"x_cur_insn_uid"
.LASF342:
	.string	"tree_vec"
.LASF896:
	.string	"x_pending_chain"
.LASF464:
	.string	"filename"
.LASF951:
	.string	"jump_block"
.LASF702:
	.string	"SS_TRUNCATE"
.LASF767:
	.string	"REG_EXEC_COUNT"
.LASF255:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF428:
	.string	"no_debugging_symbols"
.LASF259:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF706:
	.string	"base_after_vec"
.LASF72:
	.string	"__off64_t"
.LASF555:
	.string	"TI_MAX"
.LASF151:
	.string	"V4DImode"
.LASF335:
	.string	"maybe_empty_object"
.LASF292:
	.string	"nothrow_flag"
.LASF79:
	.string	"_IO_read_base"
.LASF50:
	.string	"INT_SSE_REGS"
.LASF97:
	.string	"_offset"
.LASF20:
	.string	"string"
.LASF812:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF884:
	.string	"x_last_filename"
.LASF765:
	.string	"REG_DEP_OUTPUT"
.LASF977:
	.string	"state"
.LASF84:
	.string	"_IO_buf_end"
.LASF374:
	.string	"symtab"
.LASF600:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF701:
	.string	"US_MINUS"
.LASF540:
	.string	"TI_UV8QI_TYPE"
.LASF397:
	.string	"return_rtx"
.LASF46:
	.string	"FP_TOP_SSE_REGS"
.LASF497:
	.string	"saved_tree"
.LASF684:
	.string	"SIGN_EXTRACT"
.LASF496:
	.string	"live_range_rtl"
.LASF8:
	.string	"integrated"
.LASF845:
	.string	"live_length"
.LASF625:
	.string	"CLOBBER"
.LASF378:
	.string	"next_variant"
.LASF859:
	.string	"edge_def"
.LASF103:
	.string	"_mode"
.LASF181:
	.string	"MODE_VECTOR_INT"
.LASF80:
	.string	"_IO_write_base"
.LASF769:
	.string	"REG_SAVE_AREA"
.LASF693:
	.string	"CALL_PLACEHOLDER"
.LASF385:
	.string	"function"
.LASF219:
	.string	"BUILT_IN_STRSPN"
.LASF159:
	.string	"V4SFmode"
.LASF452:
	.string	"instrument_entry_exit"
.LASF510:
	.string	"TI_UINTQI_TYPE"
.LASF415:
	.string	"x_frame_offset"
.LASF238:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF360:
	.string	"size_unit"
.LASF254:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF647:
	.string	"PLUS"
.LASF206:
	.string	"BUILT_IN_RINDEX"
.LASF914:
	.string	"create_basic_block_structure"
.LASF663:
	.string	"POST_DEC"
.LASF820:
	.string	"bits"
.LASF116:
	.string	"HImode"
.LASF749:
	.string	"rtunion"
.LASF790:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF867:
	.string	"UPDATE_LIFE_LOCAL"
.LASF179:
	.string	"MODE_COMPLEX_INT"
.LASF897:
	.string	"eh_status"
.LASF874:
	.string	"sequence_stack"
.LASF64:
	.string	"long int"
.LASF816:
	.string	"GR_VIRTUAL_CFA"
.LASF1000:
	.string	"basic_block_info"
.LASF755:
	.string	"REG_WAS_0"
.LASF504:
	.string	"TI_ERROR_MARK"
.LASF776:
	.string	"REG_NORETURN"
.LASF105:
	.string	"_IO_marker"
.LASF941:
	.string	"kill_from"
.LASF130:
	.string	"XFmode"
.LASF442:
	.string	"needs_context"
.LASF775:
	.string	"REG_MAYBE_DEAD"
.LASF320:
	.string	"limit"
.LASF160:
	.string	"V4DFmode"
.LASF973:
	.string	"IN_ONE_BB"
.LASF4:
	.string	"unchanging"
.LASF475:
	.string	"defer_output"
.LASF552:
	.string	"TI_V2SF_TYPE"
.LASF978:
	.string	"did_output"
.LASF750:
	.string	"reg_note"
.LASF446:
	.string	"calls_eh_return"
.LASF991:
	.string	"purge_all_dead_edges"
.LASF907:
	.string	"label"
.LASF425:
	.string	"x_target_temp_slot_level"
.LASF393:
	.string	"pretend_args_size"
.LASF381:
	.string	"context"
.LASF1006:
	.string	"optimize"
.LASF578:
	.string	"rtx_code"
.LASF62:
	.string	"CUMULATIVE_ARGS"
.LASF962:
	.string	"pattern"
.LASF875:
	.string	"last"
.LASF503:
	.string	"tree_index"
.LASF455:
	.string	"varargs"
.LASF1007:
	.string	"rtl_dump_file"
.LASF347:
	.string	"handler_block_flag"
.LASF488:
	.string	"non_addressable"
.LASF31:
	.string	"CREG"
.LASF270:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF958:
	.string	"edge_in"
.LASF457:
	.string	"x_whole_function_mode_p"
.LASF330:
	.string	"alignment_mask"
.LASF621:
	.string	"UNSPEC_VOLATILE"
.LASF577:
	.string	"TYPE_KIND_LAST"
.LASF934:
	.string	"a_end"
.LASF217:
	.string	"BUILT_IN_STRSTR"
.LASF474:
	.string	"common_flag"
.LASF332:
	.string	"freefun"
.LASF793:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF66:
	.string	"long unsigned int"
.LASF482:
	.string	"no_instrument_function_entry_exit"
.LASF289:
	.string	"asm_written_flag"
.LASF11:
	.string	"rtx_def"
.LASF268:
	.string	"BUILT_IN_DWARF_CFA"
.LASF952:
	.string	"force_nonfallthru"
.LASF126:
	.string	"HFmode"
.LASF253:
	.string	"BUILT_IN_FPRINTF"
.LASF284:
	.string	"constant_flag"
.LASF225:
	.string	"BUILT_IN_COS"
.LASF628:
	.string	"TRAP_IF"
.LASF923:
	.string	"update_bb_for_insn"
.LASF297:
	.string	"bounded_flag"
.LASF844:
	.string	"deaths"
.LASF773:
	.string	"REG_EH_REGION"
.LASF545:
	.string	"TI_V4SF_TYPE"
.LASF339:
	.string	"tree_list"
.LASF932:
	.string	"b_head"
.LASF756:
	.string	"REG_RETVAL"
.LASF138:
	.string	"CQImode"
.LASF73:
	.string	"char"
.LASF439:
	.string	"returns_struct"
.LASF136:
	.string	"XCmode"
.LASF413:
	.string	"x_arg_pointer_save_area"
.LASF265:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF955:
	.string	"tidy_fallthru_edges"
.LASF29:
	.string	"AREG"
.LASF184:
	.string	"built_in_function"
.LASF411:
	.string	"x_tail_recursion_label"
.LASF719:
	.string	"rtwint"
.LASF327:
	.string	"next_free"
.LASF484:
	.string	"malloc_flag"
.LASF841:
	.string	"sets"
.LASF83:
	.string	"_IO_buf_base"
.LASF656:
	.string	"ROTATERT"
.LASF557:
	.string	"itk_char"
.LASF362:
	.string	"precision"
.LASF642:
	.string	"ADDRESSOF"
.LASF942:
	.string	"fallthru"
.LASF778:
	.string	"REG_SETJMP"
.LASF144:
	.string	"V2QImode"
.LASF199:
	.string	"BUILT_IN_CIMAG"
.LASF240:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF878:
	.string	"x_reg_rtx_no"
.LASF122:
	.string	"PHImode"
.LASF78:
	.string	"_IO_read_end"
.LASF366:
	.string	"transparent_union_flag"
.LASF871:
	.string	"modified"
.LASF887:
	.string	"regno_decl"
.LASF570:
	.string	"size_type_kind"
.LASF837:
	.string	"reg_info_def"
.LASF143:
	.string	"COImode"
.LASF661:
	.string	"PRE_DEC"
.LASF869:
	.string	"UPDATE_LIFE_GLOBAL_RM_NOTES"
.LASF953:
	.string	"redirect_edge_and_branch_force"
.LASF75:
	.string	"_IO_FILE"
.LASF792:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF976:
	.string	"in_bb_p"
.LASF810:
	.string	"GR_HARD_FRAME_POINTER"
.LASF371:
	.string	"align"
.LASF688:
	.string	"RANGE_INFO"
.LASF742:
	.string	"global_live_at_start"
.LASF267:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF445:
	.string	"calls_alloca"
.LASF912:
	.string	"finish"
.LASF524:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF424:
	.string	"x_var_temp_slot_level"
.LASF174:
	.string	"MODE_RANDOM"
.LASF699:
	.string	"US_PLUS"
.LASF959:
	.string	"edge_out"
.LASF164:
	.string	"BLKmode"
.LASF133:
	.string	"HCmode"
.LASF543:
	.string	"TI_UV2SF_TYPE"
.LASF549:
	.string	"TI_V8QI_TYPE"
.LASF554:
	.string	"TI_MAIN_IDENTIFIER"
.LASF216:
	.string	"BUILT_IN_STRLEN"
.LASF409:
	.string	"x_stack_slot_list"
.LASF696:
	.string	"VEC_CONCAT"
.LASF461:
	.string	"uses_eh_lsda"
.LASF234:
	.string	"BUILT_IN_NEXT_ARG"
.LASF98:
	.string	"__pad1"
.LASF100:
	.string	"__pad3"
.LASF101:
	.string	"__pad4"
.LASF102:
	.string	"__pad5"
.LASF768:
	.string	"REG_NOALIAS"
.LASF472:
	.string	"ignored_flag"
.LASF609:
	.string	"ATTR_FLAG"
.LASF171:
	.string	"CCFPUmode"
.LASF752:
	.string	"REG_INC"
.LASF599:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF966:
	.string	"debug_bb"
.LASF827:
	.string	"sbitmap"
.LASF479:
	.string	"artificial_flag"
.LASF927:
	.string	"new_bb"
.LASF416:
	.string	"x_context_display"
.LASF88:
	.string	"_markers"
.LASF108:
	.string	"_pos"
.LASF603:
	.string	"ADDRESS"
.LASF863:
	.string	"insns"
.LASF278:
	.string	"BUILT_IN_VA_COPY"
.LASF429:
	.string	"original_arg_vector"
.LASF21:
	.string	"complex"
.LASF336:
	.string	"alloc_failed"
.LASF1005:
	.string	"basic_block_for_insn"
.LASF833:
	.string	"cptr"
.LASF407:
	.string	"x_return_label"
.LASF918:
	.string	"flow_delete_block_noexpunge"
.LASF352:
	.string	"supercontext"
.LASF279:
	.string	"BUILT_IN_EXPECT"
.LASF377:
	.string	"maxval"
.LASF576:
	.string	"UBITSIZETYPE"
.LASF537:
	.string	"TI_UV4SF_TYPE"
.LASF846:
	.string	"calls_crossed"
.LASF703:
	.string	"US_TRUNCATE"
.LASF220:
	.string	"BUILT_IN_STRCSPN"
.LASF553:
	.string	"TI_V16QI_TYPE"
.LASF56:
	.string	"nregs"
.LASF566:
	.string	"itk_long_long"
.LASF660:
	.string	"UMAX"
.LASF45:
	.string	"MMX_REGS"
.LASF745:
	.string	"loop_depth"
.LASF712:
	.string	"scale"
.LASF465:
	.string	"linenum"
.LASF115:
	.string	"QImode"
.LASF960:
	.string	"before"
.LASF730:
	.string	"bitmap_head_def"
.LASF995:
	.string	"target_flags"
.LASF855:
	.string	"data"
.LASF808:
	.string	"GR_STACK_POINTER"
.LASF904:
	.string	"can_delete_note_p"
.LASF920:
	.string	"flow_delete_block"
.LASF187:
	.string	"BUILT_IN_LABS"
.LASF127:
	.string	"TQFmode"
.LASF735:
	.string	"head"
.LASF286:
	.string	"volatile_flag"
.LASF55:
	.string	"words"
.LASF210:
	.string	"BUILT_IN_STRCAT"
.LASF226:
	.string	"BUILT_IN_SQRTF"
.LASF709:
	.string	"min_after_base"
.LASF229:
	.string	"BUILT_IN_SQRTL"
.LASF834:
	.string	"sched"
.LASF563:
	.string	"itk_unsigned_int"
.LASF384:
	.string	"off_align"
.LASF458:
	.string	"x_dont_save_pending_sizes_p"
.LASF54:
	.string	"ix86_args"
.LASF328:
	.string	"chunk_limit"
.LASF805:
	.string	"global_rtl_index"
.LASF204:
	.string	"BUILT_IN_FFS"
.LASF291:
	.string	"used_flag"
.LASF249:
	.string	"BUILT_IN_PRINTF"
.LASF28:
	.string	"NO_REGS"
.LASF1008:
	.string	"cfun"
.LASF548:
	.string	"TI_V8HI_TYPE"
.LASF394:
	.string	"outgoing_args_size"
.LASF120:
	.string	"OImode"
.LASF295:
	.string	"private_flag"
.LASF256:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF825:
	.string	"bytes"
.LASF299:
	.string	"lang_flag_0"
.LASF300:
	.string	"lang_flag_1"
.LASF301:
	.string	"lang_flag_2"
.LASF302:
	.string	"lang_flag_3"
.LASF303:
	.string	"lang_flag_4"
.LASF304:
	.string	"lang_flag_5"
.LASF305:
	.string	"lang_flag_6"
.LASF490:
	.string	"lang_flag_7"
.LASF817:
	.string	"GR_MAX"
.LASF500:
	.string	"pointer_alias_set"
.LASF695:
	.string	"VEC_SELECT"
.LASF191:
	.string	"BUILT_IN_LLABS"
.LASF541:
	.string	"TI_UV4HI_TYPE"
.LASF435:
	.string	"stack_alignment_needed"
.LASF345:
	.string	"operands"
.LASF877:
	.string	"emit_status"
.LASF338:
	.string	"tree_identifier"
.LASF182:
	.string	"MODE_VECTOR_FLOAT"
.LASF666:
	.string	"POST_MODIFY"
.LASF990:
	.string	"eqnote"
.LASF838:
	.string	"first_uid"
.LASF232:
	.string	"BUILT_IN_SAVEREGS"
.LASF194:
	.string	"BUILT_IN_CONJF"
.LASF770:
	.string	"REG_BR_PRED"
.LASF195:
	.string	"BUILT_IN_CONJL"
.LASF592:
	.string	"DEFINE_PEEPHOLE"
.LASF109:
	.string	"long long unsigned int"
.LASF799:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF715:
	.string	"offset"
.LASF713:
	.string	"addr_diff_vec_flags"
.LASF93:
	.string	"_cur_column"
.LASF992:
	.string	"update_life_p"
.LASF588:
	.string	"MATCH_OP_DUP"
.LASF602:
	.string	"SEQUENCE"
.LASF334:
	.string	"use_extra_arg"
.LASF125:
	.string	"QFmode"
.LASF1002:
	.string	"tail_recursion_label_list"
.LASF495:
	.string	"section_name"
.LASF396:
	.string	"args_info"
.LASF454:
	.string	"limit_stack"
.LASF629:
	.string	"RESX"
.LASF985:
	.string	"last_bb_num_seen"
.LASF862:
	.string	"dest"
.LASF617:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF515:
	.string	"TI_INTEGER_ZERO"
.LASF86:
	.string	"_IO_backup_base"
.LASF667:
	.string	"UNORDERED"
.LASF172:
	.string	"MAX_MACHINE_MODE"
.LASF77:
	.string	"_IO_read_ptr"
.LASF562:
	.string	"itk_int"
.LASF233:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF51:
	.string	"FLOAT_INT_SSE_REGS"
.LASF294:
	.string	"public_flag"
.LASF634:
	.string	"CONST"
.LASF886:
	.string	"regno_pointer_align"
.LASF683:
	.string	"SQRT"
.LASF363:
	.string	"string_flag"
.LASF807:
	.string	"GR_CC0"
.LASF173:
	.string	"mode_class"
.LASF994:
	.string	"purged_here"
.LASF649:
	.string	"MULT"
.LASF178:
	.string	"MODE_CC"
.LASF350:
	.string	"vars"
.LASF584:
	.string	"MATCH_SCRATCH"
.LASF121:
	.string	"PQImode"
.LASF961:
	.string	"insert_insn_on_edge"
.LASF153:
	.string	"V8HImode"
.LASF671:
	.string	"UNGT"
.LASF422:
	.string	"x_temp_slots"
.LASF507:
	.string	"TI_INTSI_TYPE"
.LASF200:
	.string	"BUILT_IN_CIMAGF"
.LASF467:
	.string	"nonlocal_flag"
.LASF92:
	.string	"_old_offset"
.LASF298:
	.string	"deprecated_flag"
.LASF1003:
	.string	"flow_obstack"
.LASF975:
	.string	"max_uid"
.LASF637:
	.string	"SUBREG"
.LASF368:
	.string	"restrict_flag"
.LASF444:
	.string	"calls_longjmp"
.LASF156:
	.string	"V16QImode"
.LASF323:
	.string	"obstack"
.LASF188:
	.string	"BUILT_IN_FABS"
.LASF23:
	.string	"decl"
.LASF110:
	.string	"long long int"
.LASF542:
	.string	"TI_UV2SI_TYPE"
.LASF498:
	.string	"inlined_fns"
.LASF568:
	.string	"itk_none"
.LASF757:
	.string	"REG_LIBCALL"
.LASF91:
	.string	"_flags2"
.LASF575:
	.string	"SBITSIZETYPE"
.LASF132:
	.string	"QCmode"
.LASF635:
	.string	"VALUE"
.LASF615:
	.string	"NOTE"
.LASF936:
	.string	"del_last"
.LASF59:
	.string	"sse_nregs"
.LASF659:
	.string	"UMIN"
.LASF539:
	.string	"TI_UV8HI_TYPE"
.LASF263:
	.string	"BUILT_IN_ISLESS"
.LASF221:
	.string	"BUILT_IN_STRCHR"
.LASF277:
	.string	"BUILT_IN_VA_END"
.LASF734:
	.string	"basic_block_def"
.LASF967:
	.string	"debug_bb_n"
.LASF373:
	.string	"reference_to"
.LASF899:
	.string	"varasm_status"
.LASF241:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF876:
	.string	"sequence_rtl_expr"
.LASF786:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF821:
	.string	"bitmap_element"
.LASF401:
	.string	"x_function_call_count"
.LASF139:
	.string	"CHImode"
.LASF197:
	.string	"BUILT_IN_CREALF"
.LASF802:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF348:
	.string	"abstract_flag"
.LASF198:
	.string	"BUILT_IN_CREALL"
.LASF481:
	.string	"non_addr_const_p"
.LASF318:
	.string	"elements"
.LASF885:
	.string	"regno_pointer_align_length"
.LASF880:
	.string	"x_first_insn"
.LASF558:
	.string	"itk_signed_char"
.LASF894:
	.string	"x_apply_args_value"
.LASF49:
	.string	"FLOAT_INT_REGS"
.LASF913:
	.string	"delete_insn"
.LASF631:
	.string	"CONST_DOUBLE"
.LASF243:
	.string	"BUILT_IN_SETJMP"
.LASF260:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF564:
	.string	"itk_long"
.LASF168:
	.string	"CCNOmode"
.LASF149:
	.string	"V4HImode"
.LASF948:
	.string	"old_label"
.LASF669:
	.string	"UNEQ"
.LASF652:
	.string	"ASHIFT"
.LASF536:
	.string	"TI_VOID_LIST_NODE"
.LASF657:
	.string	"SMIN"
.LASF943:
	.string	"__FUNCTION__"
.LASF644:
	.string	"IF_THEN_ELSE"
.LASF470:
	.string	"bit_field_flag"
.LASF248:
	.string	"BUILT_IN_PUTS"
.LASF473:
	.string	"in_system_header_flag"
.LASF476:
	.string	"transparent_union"
.LASF938:
	.string	"block_label"
.LASF579:
	.string	"UNKNOWN"
.LASF798:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF390:
	.string	"outer"
.LASF499:
	.string	"vindex"
.LASF333:
	.string	"extra_arg"
.LASF585:
	.string	"MATCH_DUP"
.LASF795:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF883:
	.string	"x_last_linenum"
.LASF63:
	.string	"unsigned int"
.LASF1014:
	.string	"commit_one_edge_insertion"
.LASF717:
	.string	"tree_node"
.LASF906:
	.string	"note"
.LASF406:
	.string	"x_cleanup_label"
.LASF662:
	.string	"PRE_INC"
.LASF933:
	.string	"b_end"
.LASF213:
	.string	"BUILT_IN_STRNCPY"
.LASF708:
	.string	"max_after_vec"
.LASF670:
	.string	"UNGE"
.LASF970:
	.string	"tmp_rtx"
.LASF879:
	.string	"x_first_label_num"
.LASF466:
	.string	"external_flag"
.LASF70:
	.string	"short int"
.LASF738:
	.string	"pred"
.LASF460:
	.string	"uses_pic_offset_table"
.LASF450:
	.string	"has_computed_jump"
.LASF223:
	.string	"BUILT_IN_SQRT"
.LASF881:
	.string	"x_last_insn"
.LASF321:
	.string	"prev"
.LASF94:
	.string	"_vtable_offset"
.LASF269:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF436:
	.string	"preferred_stack_boundary"
.LASF925:
	.string	"new_size"
.LASF113:
	.string	"VOIDmode"
.LASF780:
	.string	"REG_VTABLE_REF"
.LASF724:
	.string	"rt_addr_diff_vec_flags"
.LASF535:
	.string	"TI_VA_LIST_TYPE"
.LASF921:
	.string	"delete_insn_chain"
.LASF815:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF687:
	.string	"LO_SUM"
.LASF866:
	.string	"update_life_extent"
.LASF214:
	.string	"BUILT_IN_STRCMP"
.LASF520:
	.string	"TI_SIZE_ONE"
.LASF861:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
