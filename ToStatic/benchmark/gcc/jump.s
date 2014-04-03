	.file	"jump.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 jump.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	rebuild_jump_labels
	.type	rebuild_jump_labels, @function
rebuild_jump_labels:
.LFB2:
	.file 1 "jump.c"
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 81 0
	movl	$0, -12(%rbp)	#, max_uid
	.loc 1 83 0
	movq	-24(%rbp), %rax	# f, tmp67
	movq	%rax, %rdi	# tmp67,
	call	init_label_info	#
	addl	$1, %eax	#, tmp68
	movl	%eax, -12(%rbp)	# tmp68, max_uid
	.loc 1 85 0
	movq	-24(%rbp), %rax	# f, tmp69
	movq	%rax, %rdi	# tmp69,
	call	mark_all_labels	#
	.loc 1 91 0
	movq	cfun(%rip), %rax	# cfun, cfun.0
	movq	16(%rax), %rax	# cfun.0_6->expr, D.13067
	movq	32(%rax), %rax	# _7->x_forced_labels, tmp70
	movq	%rax, -8(%rbp)	# tmp70, insn
	jmp	.L2	#
.L4:
	.loc 1 92 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movq	8(%rax), %rax	# insn_1->fld[0].rtx, D.13068
	movzwl	(%rax), %eax	# _9->code, D.13069
	cmpw	$36, %ax	#, D.13069
	jne	.L3	#,
	.loc 1 93 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movq	8(%rax), %rax	# insn_1->fld[0].rtx, D.13068
	movl	32(%rax), %edx	# _11->fld[3].rtint, D.13066
	addl	$1, %edx	#, D.13066
	movl	%edx, 32(%rax)	# D.13066, _11->fld[3].rtint
.L3:
	.loc 1 91 0
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp74
	movq	%rax, -8(%rbp)	# tmp74, insn
.L2:
	.loc 1 91 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L4	#,
	.loc 1 94 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	rebuild_jump_labels, .-rebuild_jump_labels
	.globl	cleanup_barriers
	.type	cleanup_barriers, @function
cleanup_barriers:
.LFB3:
	.loc 1 106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 108 0
	call	get_insns	#
	movq	%rax, -24(%rbp)	# tmp62, insn
	jmp	.L6	#
.L9:
	.loc 1 110 0
	movq	-24(%rbp), %rax	# insn, tmp63
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp64
	movq	%rax, -16(%rbp)	# tmp64, next
	.loc 1 111 0
	movq	-24(%rbp), %rax	# insn, tmp65
	movzwl	(%rax), %eax	# insn_1->code, D.13070
	cmpw	$35, %ax	#, D.13070
	jne	.L7	#,
	.loc 1 113 0
	movq	-24(%rbp), %rax	# insn, tmp66
	movq	%rax, %rdi	# tmp66,
	call	prev_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp67, prev
	.loc 1 114 0
	movq	-8(%rbp), %rax	# prev, tmp68
	movzwl	(%rax), %eax	# prev_5->code, D.13070
	cmpw	$35, %ax	#, D.13070
	jne	.L8	#,
	.loc 1 115 0
	movq	-24(%rbp), %rax	# insn, tmp69
	movq	%rax, %rdi	# tmp69,
	call	delete_barrier	#
	jmp	.L7	#
.L8:
	.loc 1 116 0
	movq	-24(%rbp), %rax	# insn, tmp70
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, D.13071
	cmpq	-8(%rbp), %rax	# prev, D.13071
	je	.L7	#,
	.loc 1 117 0
	movq	-8(%rbp), %rdx	# prev, tmp71
	movq	-24(%rbp), %rcx	# insn, tmp72
	movq	-24(%rbp), %rax	# insn, tmp73
	movq	%rcx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	reorder_insns	#
.L7:
	.loc 1 108 0
	movq	-16(%rbp), %rax	# next, tmp74
	movq	%rax, -24(%rbp)	# tmp74, insn
.L6:
	.loc 1 108 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L9	#,
	.loc 1 120 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	cleanup_barriers, .-cleanup_barriers
	.globl	copy_loop_headers
	.type	copy_loop_headers, @function
copy_loop_headers:
.LFB4:
	.loc 1 125 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	.loc 1 128 0
	movq	-40(%rbp), %rax	# f, tmp64
	movq	%rax, -32(%rbp)	# tmp64, insn
	jmp	.L11	#
.L13:
.LBB2:
	.loc 1 132 0
	movq	-32(%rbp), %rax	# insn, tmp65
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp66
	movq	%rax, -24(%rbp)	# tmp66, next
	.loc 1 138 0
	movq	-32(%rbp), %rax	# insn, tmp67
	movzwl	(%rax), %eax	# insn_1->code, D.13072
	cmpw	$37, %ax	#, D.13072
	jne	.L12	#,
	.loc 1 139 0
	movq	-32(%rbp), %rax	# insn, tmp68
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13073
	cmpl	$-96, %eax	#, D.13073
	jne	.L12	#,
	.loc 1 140 0
	movq	-32(%rbp), %rax	# insn, tmp69
	movq	%rax, %rdi	# tmp69,
	call	next_nonnote_insn	#
	movq	%rax, -16(%rbp)	# tmp70, temp1
	cmpq	$0, -16(%rbp)	#, temp1
	je	.L12	#,
	.loc 1 141 0
	movq	-16(%rbp), %rax	# temp1, tmp71
	movq	%rax, %rdi	# tmp71,
	call	any_uncondjump_p	#
	testl	%eax, %eax	# D.13073
	je	.L12	#,
	.loc 1 141 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# temp1, tmp72
	movq	%rax, %rdi	# tmp72,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.13073
	je	.L12	#,
	.loc 1 143 0 is_stmt 1
	movq	-32(%rbp), %rax	# insn, tmp73
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp74
	movq	%rax, -8(%rbp)	# tmp74, temp
	.loc 1 144 0
	movq	-32(%rbp), %rax	# insn, tmp75
	movq	%rax, %rdi	# tmp75,
	call	duplicate_loop_exit_test	#
	testl	%eax, %eax	# D.13073
	je	.L12	#,
	.loc 1 146 0
	movq	-8(%rbp), %rax	# temp, tmp76
	movq	24(%rax), %rax	# temp_11->fld[2].rtx, tmp77
	movq	%rax, -24(%rbp)	# tmp77, next
.L12:
.LBE2:
	.loc 1 128 0
	movq	-24(%rbp), %rax	# next, tmp78
	movq	%rax, -32(%rbp)	# tmp78, insn
.L11:
	.loc 1 128 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	jne	.L13	#,
	.loc 1 150 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	copy_loop_headers, .-copy_loop_headers
	.globl	purge_line_number_notes
	.type	purge_line_number_notes, @function
purge_line_number_notes:
.LFB5:
	.loc 1 155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 156 0
	movq	$0, -16(%rbp)	#, last_note
	.loc 1 163 0
	movq	-24(%rbp), %rax	# f, tmp66
	movq	%rax, -8(%rbp)	# tmp66, insn
	jmp	.L15	#
.L19:
	.loc 1 164 0
	movq	-8(%rbp), %rax	# insn, tmp67
	movzwl	(%rax), %eax	# insn_3->code, D.13074
	cmpw	$37, %ax	#, D.13074
	jne	.L16	#,
	.loc 1 166 0
	movq	-8(%rbp), %rax	# insn, tmp68
	movl	40(%rax), %eax	# insn_3->fld[4].rtint, D.13075
	cmpl	$-87, %eax	#, D.13075
	jne	.L17	#,
	.loc 1 169 0
	movq	$0, -16(%rbp)	#, last_note
	jmp	.L16	#
.L17:
	.loc 1 170 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movl	40(%rax), %eax	# insn_3->fld[4].rtint, D.13075
	testl	%eax, %eax	# D.13075
	js	.L16	#,
	.loc 1 173 0
	cmpq	$0, -16(%rbp)	#, last_note
	je	.L18	#,
	.loc 1 174 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movq	32(%rax), %rdx	# insn_3->fld[3].rtstr, D.13076
	movq	-16(%rbp), %rax	# last_note, tmp71
	movq	32(%rax), %rax	# last_note_2->fld[3].rtstr, D.13076
	cmpq	%rax, %rdx	# D.13076, D.13076
	jne	.L18	#,
	.loc 1 175 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movl	40(%rax), %edx	# insn_3->fld[4].rtint, D.13075
	movq	-16(%rbp), %rax	# last_note, tmp73
	movl	40(%rax), %eax	# last_note_2->fld[4].rtint, D.13075
	cmpl	%eax, %edx	# D.13075, D.13075
	jne	.L18	#,
	.loc 1 177 0
	movq	-8(%rbp), %rax	# insn, tmp74
	movq	%rax, %rdi	# tmp74,
	call	delete_related_insns	#
	.loc 1 178 0
	jmp	.L16	#
.L18:
	.loc 1 181 0
	movq	-8(%rbp), %rax	# insn, tmp75
	movq	%rax, -16(%rbp)	# tmp75, last_note
.L16:
	.loc 1 163 0
	movq	-8(%rbp), %rax	# insn, tmp76
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp77
	movq	%rax, -8(%rbp)	# tmp77, insn
.L15:
	.loc 1 163 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L19	#,
	.loc 1 184 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	purge_line_number_notes, .-purge_line_number_notes
	.type	init_label_info, @function
init_label_info:
.LFB6:
	.loc 1 192 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	.loc 1 193 0
	movl	$0, -28(%rbp)	#, largest_uid
	.loc 1 196 0
	movq	-40(%rbp), %rax	# f, tmp74
	movq	%rax, -24(%rbp)	# tmp74, insn
	jmp	.L21	#
.L30:
	.loc 1 198 0
	movq	-24(%rbp), %rax	# insn, tmp75
	movzwl	(%rax), %eax	# insn_3->code, D.13077
	cmpw	$36, %ax	#, D.13077
	jne	.L22	#,
	.loc 1 199 0
	movq	-24(%rbp), %rax	# insn, tmp76
	movzbl	3(%rax), %eax	# *insn_3, D.13078
	andl	$16, %eax	#, D.13078
	testb	%al, %al	# D.13078
	setne	%al	#, D.13079
	movzbl	%al, %edx	# D.13079, D.13080
	movq	-24(%rbp), %rax	# insn, tmp77
	movl	%edx, 32(%rax)	# D.13080, insn_3->fld[3].rtint
	jmp	.L23	#
.L22:
	.loc 1 200 0
	movq	-24(%rbp), %rax	# insn, tmp78
	movzwl	(%rax), %eax	# insn_3->code, D.13077
	cmpw	$33, %ax	#, D.13077
	jne	.L24	#,
	.loc 1 201 0
	movq	-24(%rbp), %rax	# insn, tmp79
	movq	$0, 64(%rax)	#, insn_3->fld[7].rtx
	jmp	.L23	#
.L24:
	.loc 1 202 0
	movq	-24(%rbp), %rax	# insn, tmp80
	movzwl	(%rax), %eax	# insn_3->code, D.13077
	cmpw	$32, %ax	#, D.13077
	je	.L25	#,
	.loc 1 202 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp81
	movzwl	(%rax), %eax	# insn_3->code, D.13077
	cmpw	$34, %ax	#, D.13077
	jne	.L23	#,
.L25:
.LBB3:
	.loc 1 206 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp82
	movq	56(%rax), %rax	# insn_3->fld[6].rtx, tmp83
	movq	%rax, -16(%rbp)	# tmp83, note
	jmp	.L26	#
.L28:
	.loc 1 208 0
	movq	-16(%rbp), %rax	# note, tmp84
	movq	16(%rax), %rax	# note_4->fld[1].rtx, tmp85
	movq	%rax, -8(%rbp)	# tmp85, next
	.loc 1 209 0
	movq	-16(%rbp), %rax	# note, tmp86
	movzbl	2(%rax), %eax	# note_4->mode, D.13078
	cmpb	$13, %al	#, D.13078
	jne	.L27	#,
	.loc 1 210 0
	movq	-24(%rbp), %rax	# insn, tmp87
	movq	32(%rax), %rdx	# insn_3->fld[3].rtx, D.13081
	movq	-16(%rbp), %rax	# note, tmp88
	movq	8(%rax), %rax	# note_4->fld[0].rtx, D.13081
	movq	%rdx, %rsi	# D.13081,
	movq	%rax, %rdi	# D.13081,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.13080
	jne	.L27	#,
	.loc 1 211 0
	movq	-16(%rbp), %rdx	# note, tmp89
	movq	-24(%rbp), %rax	# insn, tmp90
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	remove_note	#
.L27:
	.loc 1 206 0
	movq	-8(%rbp), %rax	# next, tmp91
	movq	%rax, -16(%rbp)	# tmp91, note
.L26:
	.loc 1 206 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, note
	jne	.L28	#,
.L23:
.LBE3:
	.loc 1 214 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp92
	movl	8(%rax), %eax	# insn_3->fld[0].rtint, D.13080
	cmpl	-28(%rbp), %eax	# largest_uid, D.13080
	jle	.L29	#,
	.loc 1 215 0
	movq	-24(%rbp), %rax	# insn, tmp93
	movl	8(%rax), %eax	# insn_3->fld[0].rtint, tmp94
	movl	%eax, -28(%rbp)	# tmp94, largest_uid
.L29:
	.loc 1 196 0
	movq	-24(%rbp), %rax	# insn, tmp95
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp96
	movq	%rax, -24(%rbp)	# tmp96, insn
.L21:
	.loc 1 196 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L30	#,
	.loc 1 218 0 is_stmt 1
	movl	-28(%rbp), %eax	# largest_uid, D.13080
	.loc 1 219 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	init_label_info, .-init_label_info
	.type	mark_all_labels, @function
mark_all_labels:
.LFB7:
	.loc 1 227 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	.loc 1 230 0
	movq	-40(%rbp), %rax	# f, tmp85
	movq	%rax, -32(%rbp)	# tmp85, insn
	jmp	.L33	#
.L37:
	.loc 1 231 0
	movq	-32(%rbp), %rax	# insn, tmp86
	movzwl	(%rax), %eax	# insn_1->code, D.13082
	movzwl	%ax, %eax	# D.13082, D.13083
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13084
	cmpb	$105, %al	#, D.13084
	jne	.L34	#,
	.loc 1 233 0
	movq	-32(%rbp), %rax	# insn, tmp88
	movzwl	(%rax), %eax	# insn_1->code, D.13082
	cmpw	$34, %ax	#, D.13082
	jne	.L35	#,
	.loc 1 234 0
	movq	-32(%rbp), %rax	# insn, tmp89
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.13085
	movzwl	(%rax), %eax	# _8->code, D.13082
	cmpw	$141, %ax	#, D.13082
	jne	.L35	#,
	.loc 1 236 0
	movq	-32(%rbp), %rax	# insn, tmp90
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.13085
	movq	8(%rax), %rax	# _10->fld[0].rtx, D.13085
	movq	%rax, %rdi	# D.13085,
	call	mark_all_labels	#
	.loc 1 237 0
	movq	-32(%rbp), %rax	# insn, tmp91
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.13085
	movq	16(%rax), %rax	# _12->fld[1].rtx, D.13085
	movq	%rax, %rdi	# D.13085,
	call	mark_all_labels	#
	.loc 1 238 0
	movq	-32(%rbp), %rax	# insn, tmp92
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.13085
	movq	24(%rax), %rax	# _14->fld[2].rtx, D.13085
	movq	%rax, %rdi	# D.13085,
	call	mark_all_labels	#
	.loc 1 242 0
	movq	-32(%rbp), %rax	# insn, tmp93
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.13085
	movq	32(%rax), %rax	# _16->fld[3].rtx, D.13085
	testq	%rax, %rax	# D.13085
	je	.L36	#,
.LBB4:
	.loc 1 244 0
	movq	-32(%rbp), %rax	# insn, tmp94
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.13085
	movq	32(%rax), %rax	# _18->fld[3].rtx, D.13085
	movq	%rax, %rdx	# D.13085,
	movl	$0, %esi	#,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, -24(%rbp)	# tmp95, label_ref
	.loc 1 246 0
	movq	-32(%rbp), %rcx	# insn, tmp96
	movq	-24(%rbp), %rax	# label_ref, tmp97
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	mark_jump_label	#
	.loc 1 247 0
	movq	-32(%rbp), %rax	# insn, tmp98
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.13085
	movq	-24(%rbp), %rdx	# label_ref, tmp99
	movq	8(%rdx), %rdx	# label_ref_20->fld[0].rtx, D.13085
	movq	%rdx, 32(%rax)	# D.13085, _21->fld[3].rtx
.LBE4:
	.loc 1 250 0
	jmp	.L34	#
.L36:
	jmp	.L34	#
.L35:
	.loc 1 253 0
	movq	-32(%rbp), %rax	# insn, tmp100
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.13085
	movq	-32(%rbp), %rcx	# insn, tmp101
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# D.13085,
	call	mark_jump_label	#
	.loc 1 254 0
	movq	-32(%rbp), %rax	# insn, tmp102
	movzbl	3(%rax), %eax	# *insn_1, D.13086
	andl	$8, %eax	#, D.13086
	testb	%al, %al	# D.13086
	jne	.L34	#,
	.loc 1 254 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# insn, tmp103
	movzwl	(%rax), %eax	# insn_1->code, D.13082
	cmpw	$33, %ax	#, D.13082
	jne	.L34	#,
	.loc 1 259 0 is_stmt 1
	movq	-32(%rbp), %rax	# insn, tmp104
	movq	64(%rax), %rax	# insn_1->fld[7].rtx, D.13085
	testq	%rax, %rax	# D.13085
	jne	.L34	#,
.LBB5:
	.loc 1 261 0
	movq	-32(%rbp), %rax	# insn, tmp105
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	find_reg_note	#
	movq	%rax, -16(%rbp)	# tmp106, label_note
	.loc 1 262 0
	cmpq	$0, -16(%rbp)	#, label_note
	je	.L34	#,
.LBB6:
	.loc 1 266 0
	movq	-16(%rbp), %rax	# label_note, tmp107
	movq	8(%rax), %rax	# label_note_28->fld[0].rtx, D.13085
	movq	%rax, %rdx	# D.13085,
	movl	$0, %esi	#,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, -8(%rbp)	# tmp108, label_ref
	.loc 1 269 0
	movq	-32(%rbp), %rcx	# insn, tmp109
	movq	-8(%rbp), %rax	# label_ref, tmp110
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	mark_jump_label	#
	.loc 1 270 0
	movq	-8(%rbp), %rax	# label_ref, tmp111
	movq	8(%rax), %rdx	# label_ref_30->fld[0].rtx, D.13085
	movq	-16(%rbp), %rax	# label_note, tmp112
	movq	%rdx, 8(%rax)	# D.13085, label_note_28->fld[0].rtx
	.loc 1 271 0
	movq	-16(%rbp), %rax	# label_note, tmp113
	movq	8(%rax), %rdx	# label_note_28->fld[0].rtx, D.13085
	movq	-32(%rbp), %rax	# insn, tmp114
	movq	%rdx, 64(%rax)	# D.13085, insn_1->fld[7].rtx
.L34:
.LBE6:
.LBE5:
	.loc 1 230 0
	movq	-32(%rbp), %rax	# insn, tmp115
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp116
	movq	%rax, -32(%rbp)	# tmp116, insn
.L33:
	.loc 1 230 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	jne	.L37	#,
	.loc 1 276 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mark_all_labels, .-mark_all_labels
	.section	.rodata
.LC0:
	.string	"jump.c"
	.text
	.type	duplicate_loop_exit_test, @function
duplicate_loop_exit_test:
.LFB8:
	.loc 1 292 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)	# loop_start, loop_start
	.loc 1 294 0
	movq	$0, -80(%rbp)	#, copy
	movq	$0, -72(%rbp)	#, first_copy
	.loc 1 295 0
	movl	$0, -120(%rbp)	#, num_insns
	.loc 1 296 0
	movq	-136(%rbp), %rax	# loop_start, tmp153
	movq	%rax, %rdi	# tmp153,
	call	next_nonnote_insn	#
	movq	64(%rax), %rax	# _27->fld[7].rtx, D.13088
	movq	24(%rax), %rax	# _28->fld[2].rtx, tmp154
	movq	%rax, -56(%rbp)	# tmp154, exitcode
	.loc 1 298 0
	call	max_reg_num	#
	movl	%eax, -116(%rbp)	# tmp155, max_reg
	.loc 1 299 0
	movq	$0, -64(%rbp)	#, reg_map
	.loc 1 317 0
	movq	-56(%rbp), %rax	# exitcode, tmp156
	movq	%rax, -112(%rbp)	# tmp156, insn
	jmp	.L39	#
.L56:
	.loc 1 323 0
	movq	-112(%rbp), %rax	# insn, tmp157
	movzwl	(%rax), %eax	# insn_1->code, D.13089
	movzwl	%ax, %eax	# D.13089, D.13090
	subl	$32, %eax	#, tmp158
	cmpl	$5, %eax	#, tmp158
	ja	.L96	#,
	movl	%eax, %eax	# tmp158, tmp159
	movq	.L42(,%rax,8), %rax	#, tmp160
	jmp	*%rax	# tmp160
	.section	.rodata
	.align 8
	.align 4
.L42:
	.quad	.L51
	.quad	.L51
	.quad	.L43
	.quad	.L96
	.quad	.L43
	.quad	.L44
	.text
.L43:
	.loc 1 327 0
	movl	$0, %eax	#, D.13087
	jmp	.L45	#
.L44:
	.loc 1 338 0
	movq	-112(%rbp), %rax	# insn, tmp161
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13087
	cmpl	$-96, %eax	#, D.13087
	je	.L46	#,
	.loc 1 339 0
	movq	-112(%rbp), %rax	# insn, tmp162
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13087
	cmpl	$-94, %eax	#, D.13087
	jne	.L47	#,
.L46:
	.loc 1 340 0
	movl	$0, %eax	#, D.13087
	jmp	.L45	#
.L47:
	.loc 1 342 0
	movl	optimize(%rip), %eax	# optimize, optimize.1
	cmpl	$1, %eax	#, optimize.1
	jg	.L48	#,
	.loc 1 343 0
	movq	-112(%rbp), %rax	# insn, tmp163
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13087
	cmpl	$-98, %eax	#, D.13087
	je	.L49	#,
	.loc 1 344 0
	movq	-112(%rbp), %rax	# insn, tmp164
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13087
	cmpl	$-97, %eax	#, D.13087
	jne	.L48	#,
.L49:
	.loc 1 349 0
	movl	$0, %eax	#, D.13087
	jmp	.L45	#
.L48:
	.loc 1 351 0
	jmp	.L50	#
.L52:
	.loc 1 357 0
	movq	-96(%rbp), %rdx	# p, tmp165
	movq	-112(%rbp), %rax	# insn, tmp166
	movq	%rdx, %rsi	# tmp165,
	movq	%rax, %rdi	# tmp166,
	call	remove_note	#
.L51:
	.loc 1 356 0 discriminator 1
	movq	-112(%rbp), %rax	# insn, tmp167
	movl	$0, %edx	#,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp167,
	call	find_reg_note	#
	movq	%rax, -96(%rbp)	# tmp168, p
	cmpq	$0, -96(%rbp)	#, p
	jne	.L52	#,
	.loc 1 358 0
	addl	$1, -120(%rbp)	#, num_insns
	cmpl	$20, -120(%rbp)	#, num_insns
	jg	.L53	#,
	.loc 1 359 0
	movq	-112(%rbp), %rax	# insn, tmp169
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp169,
	call	find_reg_note	#
	testq	%rax, %rax	# D.13088
	jne	.L53	#,
	.loc 1 360 0
	movq	-112(%rbp), %rax	# insn, tmp170
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	find_reg_note	#
	testq	%rax, %rax	# D.13088
	je	.L54	#,
.L53:
	.loc 1 361 0
	movl	$0, %eax	#, D.13087
	jmp	.L45	#
.L54:
	.loc 1 362 0
	jmp	.L50	#
.L96:
	.loc 1 364 0
	nop
.L50:
	.loc 1 321 0
	movq	-112(%rbp), %rax	# insn, tmp171
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp172
	movq	%rax, -112(%rbp)	# tmp172, insn
.L39:
	.loc 1 317 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, insn
	je	.L55	#,
	.loc 1 319 0
	movq	-112(%rbp), %rax	# insn, tmp173
	movzwl	(%rax), %eax	# insn_1->code, D.13089
	cmpw	$37, %ax	#, D.13089
	jne	.L56	#,
	.loc 1 320 0 discriminator 1
	movq	-112(%rbp), %rax	# insn, tmp174
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13087
	.loc 1 319 0 discriminator 1
	cmpl	$-95, %eax	#, D.13087
	jne	.L56	#,
.L55:
	.loc 1 369 0
	cmpq	$0, -112(%rbp)	#, insn
	jne	.L57	#,
	.loc 1 370 0
	movl	$0, %eax	#, D.13087
	jmp	.L45	#
.L57:
	.loc 1 372 0
	movq	-112(%rbp), %rax	# insn, tmp175
	movq	%rax, -48(%rbp)	# tmp175, lastexit
	.loc 1 376 0
	movq	-56(%rbp), %rax	# exitcode, tmp176
	movq	%rax, -112(%rbp)	# tmp176, insn
	jmp	.L58	#
.L70:
	.loc 1 377 0
	movq	-112(%rbp), %rax	# insn, tmp177
	movzwl	(%rax), %eax	# insn_2->code, D.13089
	cmpw	$32, %ax	#, D.13089
	jne	.L59	#,
	.loc 1 378 0
	movq	-112(%rbp), %rax	# insn, tmp178
	movzwl	(%rax), %eax	# insn_2->code, D.13089
	movzwl	%ax, %eax	# D.13089, D.13087
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13091
	cmpb	$105, %al	#, D.13091
	jne	.L60	#,
	.loc 1 378 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# insn, tmp180
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.13088
	movzwl	(%rax), %eax	# _58->code, D.13089
	cmpw	$47, %ax	#, D.13089
	jne	.L61	#,
	.loc 1 378 0 discriminator 3
	movq	-112(%rbp), %rax	# insn, tmp181
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, iftmp.3
	jmp	.L63	#
.L61:
	.loc 1 378 0 discriminator 4
	movq	-112(%rbp), %rax	# insn, tmp182
	movq	32(%rax), %rdx	# insn_2->fld[3].rtx, D.13088
	movq	-112(%rbp), %rax	# insn, tmp183
	movq	%rdx, %rsi	# D.13088,
	movq	%rax, %rdi	# tmp183,
	call	single_set_2	#
	jmp	.L63	#
.L60:
	.loc 1 378 0 discriminator 2
	movl	$0, %eax	#, iftmp.2
.L63:
	.loc 1 378 0 discriminator 5
	movq	%rax, -40(%rbp)	# iftmp.2, set
	cmpq	$0, -40(%rbp)	#, set
	je	.L59	#,
	.loc 1 379 0 is_stmt 1
	movq	-40(%rbp), %rax	# set, tmp184
	movq	8(%rax), %rax	# set_65->fld[0].rtx, tmp185
	movq	%rax, -104(%rbp)	# tmp185, reg
	movq	-104(%rbp), %rax	# reg, tmp186
	movzwl	(%rax), %eax	# reg_66->code, D.13089
	cmpw	$61, %ax	#, D.13089
	je	.L64	#,
	.loc 1 380 0
	movq	-104(%rbp), %rax	# reg, tmp187
	movzwl	(%rax), %eax	# reg_66->code, D.13089
	cmpw	$63, %ax	#, D.13089
	jne	.L59	#,
	.loc 1 381 0
	movq	-104(%rbp), %rax	# reg, tmp188
	movq	8(%rax), %rax	# reg_66->fld[0].rtx, tmp189
	movq	%rax, -104(%rbp)	# tmp189, reg
	movq	-104(%rbp), %rax	# reg, tmp190
	movzwl	(%rax), %eax	# reg_69->code, D.13089
	cmpw	$61, %ax	#, D.13089
	jne	.L59	#,
.L64:
	.loc 1 382 0
	movq	-104(%rbp), %rax	# reg, tmp191
	movl	8(%rax), %eax	# reg_4->fld[0].rtuint, D.13090
	cmpl	$52, %eax	#, D.13090
	jbe	.L59	#,
	.loc 1 383 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.4
	movq	-104(%rbp), %rdx	# reg, tmp192
	movl	8(%rdx), %edx	# reg_4->fld[0].rtuint, D.13090
	movl	%edx, %edx	# D.13090, tmp193
	addq	$4, %rdx	#, tmp194
	movq	(%rax,%rdx,8), %rax	# reg_n_info.4_72->data.reg, D.13092
	movl	(%rax), %edx	# _74->first_uid, D.13087
	movq	-112(%rbp), %rax	# insn, tmp195
	movl	8(%rax), %eax	# insn_2->fld[0].rtint, D.13087
	cmpl	%eax, %edx	# D.13087, D.13087
	jne	.L59	#,
	.loc 1 385 0
	movq	-112(%rbp), %rax	# insn, tmp196
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp197
	movq	%rax, -96(%rbp)	# tmp197, p
	jmp	.L65	#
.L68:
	.loc 1 386 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.5
	movq	-104(%rbp), %rdx	# reg, tmp198
	movl	8(%rdx), %edx	# reg_4->fld[0].rtuint, D.13090
	movl	%edx, %edx	# D.13090, tmp199
	addq	$4, %rdx	#, tmp200
	movq	(%rax,%rdx,8), %rax	# reg_n_info.5_78->data.reg, D.13092
	movl	4(%rax), %edx	# _80->last_uid, D.13087
	movq	-96(%rbp), %rax	# p, tmp201
	movl	8(%rax), %eax	# p_5->fld[0].rtint, D.13087
	cmpl	%eax, %edx	# D.13087, D.13087
	jne	.L66	#,
	.loc 1 387 0
	jmp	.L67	#
.L66:
	.loc 1 385 0
	movq	-96(%rbp), %rax	# p, tmp202
	movq	24(%rax), %rax	# p_5->fld[2].rtx, tmp203
	movq	%rax, -96(%rbp)	# tmp203, p
.L65:
	.loc 1 385 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# p, tmp204
	cmpq	-48(%rbp), %rax	# lastexit, tmp204
	jne	.L68	#,
.L67:
	.loc 1 389 0 is_stmt 1
	movq	-96(%rbp), %rax	# p, tmp205
	cmpq	-48(%rbp), %rax	# lastexit, tmp205
	je	.L59	#,
	.loc 1 393 0
	cmpq	$0, -64(%rbp)	#, reg_map
	jne	.L69	#,
	.loc 1 394 0
	movl	-116(%rbp), %eax	# max_reg, tmp206
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.13093,
	call	xcalloc	#
	movq	%rax, -64(%rbp)	# tmp207, reg_map
.L69:
	.loc 1 396 0
	movq	-104(%rbp), %rax	# reg, tmp208
	movzbl	3(%rax), %edx	# reg_4->in_struct, tmp211
	orl	$16, %edx	#, tmp212
	movb	%dl, 3(%rax)	# tmp212, reg_4->in_struct
	.loc 1 398 0
	movq	-104(%rbp), %rax	# reg, tmp213
	movl	8(%rax), %eax	# reg_4->fld[0].rtuint, D.13090
	movl	%eax, %eax	# D.13090, D.13093
	leaq	0(,%rax,8), %rdx	#, D.13093
	movq	-64(%rbp), %rax	# reg_map, tmp214
	leaq	(%rdx,%rax), %rbx	#, D.13094
	movq	-104(%rbp), %rax	# reg, tmp215
	movzbl	2(%rax), %eax	# reg_4->mode, D.13095
	movzbl	%al, %eax	# D.13095, D.13096
	movl	%eax, %edi	# D.13096,
	call	gen_reg_rtx	#
	movq	%rax, (%rbx)	# D.13088, *_89
.L59:
	.loc 1 376 0
	movq	-112(%rbp), %rax	# insn, tmp216
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp217
	movq	%rax, -112(%rbp)	# tmp217, insn
.L58:
	.loc 1 376 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# insn, tmp218
	cmpq	-48(%rbp), %rax	# lastexit, tmp218
	jne	.L70	#,
	.loc 1 401 0 is_stmt 1
	call	gen_label_rtx	#
	movq	%rax, -32(%rbp)	# tmp219, loop_pre_header_label
	.loc 1 404 0
	movq	-56(%rbp), %rax	# exitcode, tmp220
	movq	%rax, -112(%rbp)	# tmp220, insn
	jmp	.L71	#
.L91:
	.loc 1 406 0
	movq	-112(%rbp), %rax	# insn, tmp221
	movzwl	(%rax), %eax	# insn_3->code, D.13089
	movzwl	%ax, %eax	# D.13089, D.13090
	cmpl	$33, %eax	#, D.13090
	je	.L73	#,
	cmpl	$33, %eax	#, D.13090
	ja	.L74	#,
	cmpl	$32, %eax	#, D.13090
	je	.L75	#,
	jmp	.L72	#
.L74:
	cmpl	$35, %eax	#, D.13090
	je	.L76	#,
	cmpl	$37, %eax	#, D.13090
	je	.L77	#,
	jmp	.L72	#
.L76:
	.loc 1 409 0
	movq	-136(%rbp), %rax	# loop_start, tmp222
	movq	%rax, %rdi	# tmp222,
	call	emit_barrier_before	#
	movq	%rax, -80(%rbp)	# tmp223, copy
	.loc 1 410 0
	jmp	.L78	#
.L77:
	.loc 1 413 0
	movq	-112(%rbp), %rax	# insn, tmp224
	movl	40(%rax), %eax	# insn_3->fld[4].rtint, D.13087
	testl	%eax, %eax	# D.13087
	js	.L79	#,
	.loc 1 415 0
	movq	-112(%rbp), %rax	# insn, tmp225
	movl	40(%rax), %eax	# insn_3->fld[4].rtint, D.13087
	movq	-136(%rbp), %rdx	# loop_start, tmp226
	movq	%rdx, %rsi	# tmp226,
	movl	%eax, %edi	# D.13087,
	call	emit_note_before	#
	movq	%rax, -80(%rbp)	# tmp227, copy
	.loc 1 416 0
	movq	-112(%rbp), %rax	# insn, tmp228
	movq	32(%rax), %rdx	# insn_3->fld[3].rtstr, D.13097
	movq	-80(%rbp), %rax	# copy, tmp229
	movq	%rdx, 32(%rax)	# D.13097, copy_101->fld[3].rtstr
	.loc 1 418 0
	jmp	.L78	#
.L79:
	jmp	.L78	#
.L75:
	.loc 1 421 0
	movq	-112(%rbp), %rax	# insn, tmp230
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.13088
	movq	%rax, %rdi	# D.13088,
	call	copy_insn	#
	movq	-136(%rbp), %rdx	# loop_start, tmp231
	movq	%rdx, %rsi	# tmp231,
	movq	%rax, %rdi	# D.13088,
	call	emit_insn_before	#
	movq	%rax, -80(%rbp)	# tmp232, copy
	.loc 1 422 0
	cmpq	$0, -64(%rbp)	#, reg_map
	je	.L80	#,
	.loc 1 423 0
	movl	-116(%rbp), %edx	# max_reg, max_reg.6
	movq	-80(%rbp), %rax	# copy, tmp233
	movq	32(%rax), %rax	# copy_105->fld[3].rtx, D.13088
	movq	-64(%rbp), %rsi	# reg_map, tmp234
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.13088,
	call	replace_regs	#
.L80:
	.loc 1 425 0
	movq	-80(%rbp), %rax	# copy, tmp235
	movq	32(%rax), %rax	# copy_105->fld[3].rtx, D.13088
	movq	-80(%rbp), %rcx	# copy, tmp236
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp236,
	movq	%rax, %rdi	# D.13088,
	call	mark_jump_label	#
	.loc 1 429 0
	movq	-112(%rbp), %rax	# insn, tmp237
	movq	56(%rax), %rax	# insn_3->fld[6].rtx, tmp238
	movq	%rax, -88(%rbp)	# tmp238, link
	jmp	.L81	#
.L84:
	.loc 1 430 0
	movq	-88(%rbp), %rax	# link, tmp239
	movzbl	2(%rax), %eax	# link_6->mode, D.13095
	cmpb	$13, %al	#, D.13095
	je	.L82	#,
	.loc 1 432 0
	movq	-88(%rbp), %rax	# link, tmp240
	movzwl	(%rax), %eax	# link_6->code, D.13089
	cmpw	$3, %ax	#, D.13089
	jne	.L83	#,
	.loc 1 434 0
	movq	-80(%rbp), %rax	# copy, tmp241
	movq	56(%rax), %rcx	# copy_105->fld[6].rtx, D.13088
	movq	-88(%rbp), %rax	# link, tmp242
	movq	8(%rax), %rdx	# link_6->fld[0].rtx, D.13088
	movq	-88(%rbp), %rax	# link, tmp243
	movzbl	2(%rax), %eax	# link_6->mode, D.13095
	movzbl	%al, %eax	# D.13095, D.13096
	movl	%eax, %esi	# D.13096,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.13088,
	call	copy_insn_1	#
	movq	-80(%rbp), %rdx	# copy, tmp244
	movq	%rax, 56(%rdx)	# D.13088, copy_105->fld[6].rtx
	jmp	.L82	#
.L83:
	.loc 1 439 0
	movq	-80(%rbp), %rax	# copy, tmp245
	movq	56(%rax), %rcx	# copy_105->fld[6].rtx, D.13088
	movq	-88(%rbp), %rax	# link, tmp246
	movq	8(%rax), %rdx	# link_6->fld[0].rtx, D.13088
	movq	-88(%rbp), %rax	# link, tmp247
	movzbl	2(%rax), %eax	# link_6->mode, D.13095
	movzbl	%al, %eax	# D.13095, D.13096
	movl	%eax, %esi	# D.13096,
	movl	$4, %edi	#,
	call	gen_rtx_fmt_ue	#
	movq	%rax, %rdi	# D.13088,
	call	copy_insn_1	#
	movq	-80(%rbp), %rdx	# copy, tmp248
	movq	%rax, 56(%rdx)	# D.13088, copy_105->fld[6].rtx
.L82:
	.loc 1 429 0
	movq	-88(%rbp), %rax	# link, tmp249
	movq	16(%rax), %rax	# link_6->fld[1].rtx, tmp250
	movq	%rax, -88(%rbp)	# tmp250, link
.L81:
	.loc 1 429 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, link
	jne	.L84	#,
	.loc 1 444 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, reg_map
	je	.L85	#,
	.loc 1 444 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# copy, tmp251
	movq	56(%rax), %rax	# copy_105->fld[6].rtx, D.13088
	testq	%rax, %rax	# D.13088
	je	.L85	#,
	.loc 1 445 0 is_stmt 1
	movl	-116(%rbp), %edx	# max_reg, max_reg.7
	movq	-80(%rbp), %rax	# copy, tmp252
	movq	56(%rax), %rax	# copy_105->fld[6].rtx, D.13088
	movq	-64(%rbp), %rsi	# reg_map, tmp253
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.13088,
	call	replace_regs	#
	.loc 1 446 0
	jmp	.L78	#
.L85:
	jmp	.L78	#
.L73:
	.loc 1 449 0
	movq	-112(%rbp), %rax	# insn, tmp254
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.13088
	movq	%rax, %rdi	# D.13088,
	call	copy_insn	#
	movq	-136(%rbp), %rdx	# loop_start, tmp255
	movq	%rdx, %rsi	# tmp255,
	movq	%rax, %rdi	# D.13088,
	call	emit_jump_insn_before	#
	movq	%rax, -80(%rbp)	# tmp256, copy
	.loc 1 451 0
	cmpq	$0, -64(%rbp)	#, reg_map
	je	.L86	#,
	.loc 1 452 0
	movl	-116(%rbp), %edx	# max_reg, max_reg.8
	movq	-80(%rbp), %rax	# copy, tmp257
	movq	32(%rax), %rax	# copy_130->fld[3].rtx, D.13088
	movq	-64(%rbp), %rsi	# reg_map, tmp258
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.13088,
	call	replace_regs	#
.L86:
	.loc 1 453 0
	movq	-80(%rbp), %rax	# copy, tmp259
	movq	32(%rax), %rax	# copy_130->fld[3].rtx, D.13088
	movq	-80(%rbp), %rcx	# copy, tmp260
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp260,
	movq	%rax, %rdi	# D.13088,
	call	mark_jump_label	#
	.loc 1 454 0
	movq	-112(%rbp), %rax	# insn, tmp261
	movq	56(%rax), %rax	# insn_3->fld[6].rtx, D.13088
	testq	%rax, %rax	# D.13088
	je	.L87	#,
	.loc 1 456 0
	movq	-112(%rbp), %rax	# insn, tmp262
	movq	56(%rax), %rax	# insn_3->fld[6].rtx, D.13088
	movq	%rax, %rdi	# D.13088,
	call	copy_insn_1	#
	movq	-80(%rbp), %rdx	# copy, tmp263
	movq	%rax, 56(%rdx)	# D.13088, copy_130->fld[6].rtx
	.loc 1 457 0
	cmpq	$0, -64(%rbp)	#, reg_map
	je	.L87	#,
	.loc 1 458 0
	movl	-116(%rbp), %edx	# max_reg, max_reg.9
	movq	-80(%rbp), %rax	# copy, tmp264
	movq	56(%rax), %rax	# copy_130->fld[6].rtx, D.13088
	movq	-64(%rbp), %rsi	# reg_map, tmp265
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.13088,
	call	replace_regs	#
.L87:
	.loc 1 464 0
	movq	-80(%rbp), %rax	# copy, tmp266
	movq	%rax, %rdi	# tmp266,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.13087
	je	.L88	#,
.LBB7:
	.loc 1 466 0
	movq	-80(%rbp), %rax	# copy, tmp267
	movq	64(%rax), %rax	# copy_130->fld[7].rtx, tmp268
	movq	%rax, -24(%rbp)	# tmp268, label
	.loc 1 467 0
	cmpq	$0, -24(%rbp)	#, label
	je	.L88	#,
	.loc 1 471 0
	movq	-24(%rbp), %rax	# label, tmp269
	movq	%rax, %rdi	# tmp269,
	call	prev_nonnote_insn	#
	testq	%rax, %rax	# D.13088
	je	.L89	#,
	.loc 1 472 0
	movq	-24(%rbp), %rax	# label, tmp270
	movq	%rax, %rdi	# tmp270,
	call	prev_nonnote_insn	#
	movq	%rax, %rdi	# D.13088,
	call	prev_nonnote_insn	#
	movq	%rax, %rbx	#, D.13088
	.loc 1 473 0
	movq	-136(%rbp), %rax	# loop_start, tmp271
	movq	%rax, %rdi	# tmp271,
	call	next_nonnote_insn	#
	.loc 1 472 0
	cmpq	%rax, %rbx	# D.13088, D.13088
	jne	.L89	#,
	.loc 1 475 0
	movq	-80(%rbp), %rax	# copy, tmp272
	movl	$1, %edx	#,
	movl	$12, %esi	#,
	movq	%rax, %rdi	# tmp272,
	call	predict_insn_def	#
	.loc 1 478 0
	movq	-32(%rbp), %rcx	# loop_pre_header_label, tmp273
	movq	-80(%rbp), %rax	# copy, tmp274
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp273,
	movq	%rax, %rdi	# tmp274,
	call	redirect_jump	#
	jmp	.L88	#
.L89:
	.loc 1 481 0
	movq	-80(%rbp), %rax	# copy, tmp275
	movl	$0, %edx	#,
	movl	$12, %esi	#,
	movq	%rax, %rdi	# tmp275,
	call	predict_insn_def	#
.LBE7:
	.loc 1 484 0
	jmp	.L78	#
.L88:
	jmp	.L78	#
.L72:
	.loc 1 487 0
	movl	$__FUNCTION__.10866, %edx	#,
	movl	$487, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L78:
	.loc 1 492 0
	cmpq	$0, -72(%rbp)	#, first_copy
	jne	.L90	#,
	.loc 1 493 0
	movq	-80(%rbp), %rax	# copy, tmp276
	movq	%rax, -72(%rbp)	# tmp276, first_copy
.L90:
	.loc 1 404 0
	movq	-112(%rbp), %rax	# insn, tmp277
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp278
	movq	%rax, -112(%rbp)	# tmp278, insn
.L71:
	.loc 1 404 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# insn, tmp279
	cmpq	-48(%rbp), %rax	# lastexit, tmp279
	jne	.L91	#,
	.loc 1 498 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, copy
	je	.L92	#,
	.loc 1 498 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# copy, tmp280
	movzwl	(%rax), %eax	# copy_9->code, D.13089
	cmpw	$35, %ax	#, D.13089
	je	.L93	#,
.L92:
	.loc 1 500 0 is_stmt 1
	movq	-112(%rbp), %rax	# insn, tmp281
	movq	%rax, %rdi	# tmp281,
	call	get_label_after	#
	movq	%rax, %rdi	# D.13088,
	call	gen_jump	#
	movq	-136(%rbp), %rdx	# loop_start, tmp282
	movq	%rdx, %rsi	# tmp282,
	movq	%rax, %rdi	# D.13088,
	call	emit_jump_insn_before	#
	movq	%rax, -80(%rbp)	# tmp283, copy
	.loc 1 507 0
	cmpq	$0, -72(%rbp)	#, first_copy
	jne	.L94	#,
	.loc 1 508 0
	movq	-80(%rbp), %rax	# copy, tmp284
	movq	%rax, -72(%rbp)	# tmp284, first_copy
.L94:
	.loc 1 510 0
	movq	-80(%rbp), %rax	# copy, tmp285
	movq	32(%rax), %rax	# copy_150->fld[3].rtx, D.13088
	movq	-80(%rbp), %rcx	# copy, tmp286
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp286,
	movq	%rax, %rdi	# D.13088,
	call	mark_jump_label	#
	.loc 1 511 0
	movq	-136(%rbp), %rax	# loop_start, tmp287
	movq	%rax, %rdi	# tmp287,
	call	emit_barrier_before	#
.L93:
	.loc 1 514 0
	movq	-136(%rbp), %rdx	# loop_start, tmp288
	movq	-32(%rbp), %rax	# loop_pre_header_label, tmp289
	movq	%rdx, %rsi	# tmp288,
	movq	%rax, %rdi	# tmp289,
	call	emit_label_before	#
	.loc 1 519 0
	movl	-116(%rbp), %edx	# max_reg, max_reg.10
	movq	-80(%rbp), %rcx	# copy, tmp290
	movq	-72(%rbp), %rax	# first_copy, tmp291
	movq	%rcx, %rsi	# tmp290,
	movq	%rax, %rdi	# tmp291,
	call	reg_scan_update	#
	.loc 1 522 0
	movq	-56(%rbp), %rax	# exitcode, tmp292
	movq	%rax, %rsi	# tmp292,
	movl	$-93, %edi	#,
	call	emit_note_before	#
	.loc 1 524 0
	movq	-136(%rbp), %rax	# loop_start, tmp293
	movq	%rax, %rdi	# tmp293,
	call	next_nonnote_insn	#
	movq	%rax, %rdi	# D.13088,
	call	delete_related_insns	#
	.loc 1 527 0
	cmpq	$0, -64(%rbp)	#, reg_map
	je	.L95	#,
	.loc 1 528 0
	movq	-64(%rbp), %rax	# reg_map, tmp294
	movq	%rax, %rdi	# tmp294,
	call	free	#
.L95:
	.loc 1 530 0
	movl	$1, %eax	#, D.13087
.L45:
	.loc 1 531 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	duplicate_loop_exit_test, .-duplicate_loop_exit_test
	.globl	squeeze_notes
	.type	squeeze_notes, @function
squeeze_notes:
.LFB9:
	.loc 1 543 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)	# startp, startp
	movq	%rsi, -80(%rbp)	# endp, endp
	.loc 1 544 0
	movq	-72(%rbp), %rax	# startp, tmp71
	movq	(%rax), %rax	# *startp_8(D), tmp72
	movq	%rax, -56(%rbp)	# tmp72, start
	.loc 1 545 0
	movq	-80(%rbp), %rax	# endp, tmp73
	movq	(%rax), %rax	# *endp_10(D), tmp74
	movq	%rax, -32(%rbp)	# tmp74, end
	.loc 1 549 0
	movq	$0, -40(%rbp)	#, last
	.loc 1 550 0
	movq	-32(%rbp), %rax	# end, tmp75
	movq	24(%rax), %rax	# end_11->fld[2].rtx, tmp76
	movq	%rax, -24(%rbp)	# tmp76, past_end
	.loc 1 552 0
	movq	-56(%rbp), %rax	# start, tmp77
	movq	%rax, -48(%rbp)	# tmp77, insn
	jmp	.L98	#
.L104:
	.loc 1 554 0
	movq	-48(%rbp), %rax	# insn, tmp78
	movq	24(%rax), %rax	# insn_4->fld[2].rtx, tmp79
	movq	%rax, -16(%rbp)	# tmp79, next
	.loc 1 555 0
	movq	-48(%rbp), %rax	# insn, tmp80
	movzwl	(%rax), %eax	# insn_4->code, D.13101
	cmpw	$37, %ax	#, D.13101
	jne	.L99	#,
	.loc 1 556 0
	movq	-48(%rbp), %rax	# insn, tmp81
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.13102
	cmpl	$-97, %eax	#, D.13102
	je	.L100	#,
	.loc 1 557 0
	movq	-48(%rbp), %rax	# insn, tmp82
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.13102
	cmpl	$-98, %eax	#, D.13102
	je	.L100	#,
	.loc 1 558 0
	movq	-48(%rbp), %rax	# insn, tmp83
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.13102
	cmpl	$-96, %eax	#, D.13102
	je	.L100	#,
	.loc 1 559 0
	movq	-48(%rbp), %rax	# insn, tmp84
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.13102
	cmpl	$-95, %eax	#, D.13102
	je	.L100	#,
	.loc 1 560 0
	movq	-48(%rbp), %rax	# insn, tmp85
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.13102
	cmpl	$-94, %eax	#, D.13102
	je	.L100	#,
	.loc 1 561 0
	movq	-48(%rbp), %rax	# insn, tmp86
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.13102
	cmpl	$-93, %eax	#, D.13102
	jne	.L99	#,
.L100:
	.loc 1 563 0
	movq	-48(%rbp), %rax	# insn, tmp87
	cmpq	-56(%rbp), %rax	# start, tmp87
	jne	.L101	#,
	.loc 1 564 0
	movq	-16(%rbp), %rax	# next, tmp88
	movq	%rax, -56(%rbp)	# tmp88, start
	.loc 1 563 0
	jmp	.L103	#
.L101:
.LBB8:
	.loc 1 567 0
	movq	-48(%rbp), %rax	# insn, tmp89
	movq	16(%rax), %rax	# insn_4->fld[1].rtx, tmp90
	movq	%rax, -8(%rbp)	# tmp90, prev
	.loc 1 568 0
	movq	-56(%rbp), %rax	# start, tmp91
	movq	16(%rax), %rdx	# start_3->fld[1].rtx, D.13103
	movq	-48(%rbp), %rax	# insn, tmp92
	movq	%rdx, 16(%rax)	# D.13103, insn_4->fld[1].rtx
	.loc 1 569 0
	movq	-48(%rbp), %rax	# insn, tmp93
	movq	-56(%rbp), %rdx	# start, tmp94
	movq	%rdx, 24(%rax)	# tmp94, insn_4->fld[2].rtx
	.loc 1 570 0
	movq	-48(%rbp), %rax	# insn, tmp95
	movq	16(%rax), %rax	# insn_4->fld[1].rtx, D.13103
	movq	-48(%rbp), %rdx	# insn, tmp96
	movq	%rdx, 24(%rax)	# tmp96, _26->fld[2].rtx
	.loc 1 571 0
	movq	-48(%rbp), %rax	# insn, tmp97
	movq	24(%rax), %rax	# insn_4->fld[2].rtx, D.13103
	movq	-48(%rbp), %rdx	# insn, tmp98
	movq	%rdx, 16(%rax)	# tmp98, _27->fld[1].rtx
	.loc 1 572 0
	movq	-8(%rbp), %rax	# prev, tmp99
	movq	-16(%rbp), %rdx	# next, tmp100
	movq	%rdx, 24(%rax)	# tmp100, prev_24->fld[2].rtx
	.loc 1 573 0
	movq	-16(%rbp), %rax	# next, tmp101
	movq	-8(%rbp), %rdx	# prev, tmp102
	movq	%rdx, 16(%rax)	# tmp102, next_15->fld[1].rtx
.LBE8:
	.loc 1 563 0
	jmp	.L103	#
.L99:
	.loc 1 577 0
	movq	-48(%rbp), %rax	# insn, tmp103
	movq	%rax, -40(%rbp)	# tmp103, last
.L103:
	.loc 1 552 0
	movq	-16(%rbp), %rax	# next, tmp104
	movq	%rax, -48(%rbp)	# tmp104, insn
.L98:
	.loc 1 552 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# insn, tmp105
	cmpq	-24(%rbp), %rax	# past_end, tmp105
	jne	.L104	#,
	.loc 1 581 0 is_stmt 1
	movq	-56(%rbp), %rax	# start, tmp106
	cmpq	-24(%rbp), %rax	# past_end, tmp106
	jne	.L105	#,
	.loc 1 582 0
	movl	$1, %eax	#, D.13100
	jmp	.L106	#
.L105:
	.loc 1 584 0
	movq	-40(%rbp), %rax	# last, tmp107
	movq	%rax, -32(%rbp)	# tmp107, end
	.loc 1 586 0
	movq	-72(%rbp), %rax	# startp, tmp108
	movq	-56(%rbp), %rdx	# start, tmp109
	movq	%rdx, (%rax)	# tmp109, *startp_8(D)
	.loc 1 587 0
	movq	-80(%rbp), %rax	# endp, tmp110
	movq	-32(%rbp), %rdx	# end, tmp111
	movq	%rdx, (%rax)	# tmp111, *endp_10(D)
	.loc 1 588 0
	movl	$0, %eax	#, D.13100
.L106:
	.loc 1 589 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	squeeze_notes, .-squeeze_notes
	.globl	get_label_before
	.type	get_label_before, @function
get_label_before:
.LFB10:
	.loc 1 596 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 601 0
	movq	-24(%rbp), %rax	# insn, tmp62
	movq	%rax, %rdi	# tmp62,
	call	prev_nonnote_insn	#
	movq	%rax, -16(%rbp)	# tmp63, label
	.loc 1 603 0
	cmpq	$0, -16(%rbp)	#, label
	je	.L108	#,
	.loc 1 603 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# label, tmp64
	movzwl	(%rax), %eax	# label_3->code, D.13104
	cmpw	$36, %ax	#, D.13104
	je	.L109	#,
.L108:
.LBB9:
	.loc 1 605 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp65
	movq	16(%rax), %rax	# insn_2(D)->fld[1].rtx, tmp66
	movq	%rax, -8(%rbp)	# tmp66, prev
	.loc 1 607 0
	call	gen_label_rtx	#
	movq	%rax, -16(%rbp)	# tmp67, label
	.loc 1 608 0
	movq	-8(%rbp), %rdx	# prev, tmp68
	movq	-16(%rbp), %rax	# label, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	emit_label_after	#
	.loc 1 609 0
	movq	-16(%rbp), %rax	# label, tmp70
	movl	$0, 32(%rax)	#, label_6->fld[3].rtint
.L109:
.LBE9:
	.loc 1 611 0
	movq	-16(%rbp), %rax	# label, D.13105
	.loc 1 612 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	get_label_before, .-get_label_before
	.globl	get_label_after
	.type	get_label_after, @function
get_label_after:
.LFB11:
	.loc 1 619 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 624 0
	movq	-24(%rbp), %rax	# insn, tmp62
	movq	%rax, %rdi	# tmp62,
	call	next_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp63, label
	.loc 1 626 0
	cmpq	$0, -8(%rbp)	#, label
	je	.L112	#,
	.loc 1 626 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# label, tmp64
	movzwl	(%rax), %eax	# label_3->code, D.13106
	cmpw	$36, %ax	#, D.13106
	je	.L113	#,
.L112:
	.loc 1 628 0 is_stmt 1
	call	gen_label_rtx	#
	movq	%rax, -8(%rbp)	# tmp65, label
	.loc 1 629 0
	movq	-24(%rbp), %rdx	# insn, tmp66
	movq	-8(%rbp), %rax	# label, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	emit_label_after	#
	.loc 1 630 0
	movq	-8(%rbp), %rax	# label, tmp68
	movl	$0, 32(%rax)	#, label_5->fld[3].rtint
.L113:
	.loc 1 632 0
	movq	-8(%rbp), %rax	# label, D.13107
	.loc 1 633 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	get_label_after, .-get_label_after
	.globl	reversed_comparison_code_parts
	.type	reversed_comparison_code_parts, @function
reversed_comparison_code_parts:
.LFB12:
	.loc 1 645 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# code, code
	movq	%rsi, -64(%rbp)	# arg0, arg0
	movq	%rdx, -72(%rbp)	# arg1, arg1
	movq	%rcx, -80(%rbp)	# insn, insn
	.loc 1 649 0
	movl	-52(%rbp), %eax	# code, code.11
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13109
	cmpb	$60, %al	#, D.13109
	je	.L116	#,
	.loc 1 650 0
	movl	$0, %eax	#, D.13108
	jmp	.L117	#
.L116:
	.loc 1 652 0
	movq	-64(%rbp), %rax	# arg0, tmp91
	movzbl	2(%rax), %eax	# arg0_14(D)->mode, D.13110
	movzbl	%al, %eax	# D.13110, tmp92
	movl	%eax, -36(%rbp)	# tmp92, mode
	.loc 1 653 0
	cmpl	$0, -36(%rbp)	#, mode
	jne	.L118	#,
	.loc 1 654 0
	movq	-72(%rbp), %rax	# arg1, tmp93
	movzbl	2(%rax), %eax	# arg1_17(D)->mode, D.13110
	movzbl	%al, %eax	# D.13110, tmp94
	movl	%eax, -36(%rbp)	# tmp94, mode
.L118:
	.loc 1 660 0
	movl	-36(%rbp), %eax	# mode, mode.12
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13111
	cmpl	$4, %eax	#, D.13111
	jne	.L119	#,
	.loc 1 664 0
	cmpl	$57, -36(%rbp)	#, mode
	je	.L120	#,
	.loc 1 664 0 is_stmt 0 discriminator 1
	cmpl	$58, -36(%rbp)	#, mode
	je	.L120	#,
	movl	-52(%rbp), %eax	# code, tmp96
	movl	%eax, %edi	# tmp96,
	call	reverse_condition	#
	jmp	.L117	#
.L120:
	.loc 1 664 0 discriminator 2
	movl	-52(%rbp), %eax	# code, tmp97
	movl	%eax, %edi	# tmp97,
	call	reverse_condition_maybe_unordered	#
	jmp	.L117	#
.L119:
	.loc 1 671 0 is_stmt 1
	movl	-52(%rbp), %eax	# code, tmp99
	subl	$102, %eax	#, tmp98
	cmpl	$17, %eax	#, tmp98
	ja	.L139	#,
	movl	%eax, %eax	# tmp98, tmp100
	movq	.L124(,%rax,8), %rax	#, tmp101
	jmp	*%rax	# tmp101
	.section	.rodata
	.align 8
	.align 4
.L124:
	.quad	.L123
	.quad	.L123
	.quad	.L139
	.quad	.L139
	.quad	.L139
	.quad	.L139
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L123
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L126
	.quad	.L126
	.quad	.L126
	.quad	.L126
	.quad	.L125
	.text
.L123:
	.loc 1 682 0
	movl	-52(%rbp), %eax	# code, tmp102
	movl	%eax, %edi	# tmp102,
	call	reverse_condition	#
	jmp	.L117	#
.L125:
	.loc 1 689 0
	movl	-52(%rbp), %eax	# code, tmp103
	movl	%eax, %edi	# tmp103,
	call	reverse_condition_maybe_unordered	#
	jmp	.L117	#
.L126:
	.loc 1 695 0
	movl	$0, %eax	#, D.13108
	jmp	.L117	#
.L139:
	.loc 1 697 0
	nop
	.loc 1 702 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.14
	.loc 1 701 0
	testl	%eax, %eax	# flag_unsafe_math_optimizations.14
	je	.L127	#,
	.loc 1 703 0
	movl	-52(%rbp), %eax	# code, tmp104
	movl	%eax, %edi	# tmp104,
	call	reverse_condition	#
	jmp	.L117	#
.L127:
	.loc 1 705 0
	movl	-36(%rbp), %eax	# mode, mode.15
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13111
	cmpl	$4, %eax	#, D.13111
	jne	.L128	#,
.LBB10:
	.loc 1 716 0
	cmpq	$0, -80(%rbp)	#, insn
	jne	.L129	#,
	.loc 1 717 0
	movl	$0, %eax	#, D.13108
	jmp	.L117	#
.L129:
	.loc 1 719 0
	movq	-80(%rbp), %rax	# insn, tmp106
	movq	%rax, %rdi	# tmp106,
	call	prev_nonnote_insn	#
	movq	%rax, -32(%rbp)	# tmp107, prev
	jmp	.L130	#
.L135:
.LBB11:
	.loc 1 723 0
	movq	-32(%rbp), %rdx	# prev, tmp108
	movq	-64(%rbp), %rax	# arg0, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	set_of	#
	movq	%rax, -24(%rbp)	# tmp110, set
	.loc 1 724 0
	cmpq	$0, -24(%rbp)	#, set
	je	.L131	#,
	.loc 1 724 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# set, tmp111
	movzwl	(%rax), %eax	# set_36->code, D.13112
	cmpw	$47, %ax	#, D.13112
	jne	.L131	#,
	.loc 1 725 0 is_stmt 1
	movq	-24(%rbp), %rax	# set, tmp112
	movq	8(%rax), %rax	# set_36->fld[0].rtx, D.13113
	movq	-64(%rbp), %rdx	# arg0, tmp113
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# D.13113,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13114
	je	.L131	#,
.LBB12:
	.loc 1 727 0
	movq	-24(%rbp), %rax	# set, tmp114
	movq	16(%rax), %rax	# set_36->fld[1].rtx, tmp115
	movq	%rax, -16(%rbp)	# tmp115, src
	.loc 1 729 0
	movq	-16(%rbp), %rax	# src, tmp116
	movzwl	(%rax), %eax	# src_40->code, D.13112
	cmpw	$74, %ax	#, D.13112
	jne	.L132	#,
.LBB13:
	.loc 1 731 0
	movq	-16(%rbp), %rax	# src, tmp117
	movq	%rax, -8(%rbp)	# tmp117, comparison
	.loc 1 732 0
	movq	-16(%rbp), %rax	# src, tmp118
	movq	8(%rax), %rax	# src_40->fld[0].rtx, tmp119
	movq	%rax, -64(%rbp)	# tmp119, arg0
	.loc 1 733 0
	movq	-64(%rbp), %rax	# arg0, tmp120
	movzbl	2(%rax), %eax	# arg0_43->mode, D.13110
	movzbl	%al, %eax	# D.13110, tmp121
	movl	%eax, -36(%rbp)	# tmp121, mode
	.loc 1 734 0
	cmpl	$0, -36(%rbp)	#, mode
	jne	.L133	#,
	.loc 1 735 0
	movq	-8(%rbp), %rax	# comparison, tmp122
	movq	16(%rax), %rax	# comparison_42->fld[1].rtx, D.13113
	movzbl	2(%rax), %eax	# _46->mode, D.13110
	movzbl	%al, %eax	# D.13110, tmp123
	movl	%eax, -36(%rbp)	# tmp123, mode
	.loc 1 736 0
	jmp	.L128	#
.L133:
	jmp	.L128	#
.L132:
.LBE13:
	.loc 1 740 0
	movq	-16(%rbp), %rax	# src, tmp124
	movzwl	(%rax), %eax	# src_40->code, D.13112
	cmpw	$61, %ax	#, D.13112
	jne	.L131	#,
	.loc 1 742 0
	movq	-16(%rbp), %rax	# src, tmp125
	movq	%rax, -64(%rbp)	# tmp125, arg0
	.loc 1 743 0
	jmp	.L134	#
.L131:
.LBE12:
	.loc 1 748 0
	cmpq	$0, -24(%rbp)	#, set
	je	.L134	#,
	.loc 1 749 0
	movl	$0, %eax	#, D.13108
	jmp	.L117	#
.L134:
.LBE11:
	.loc 1 721 0
	movq	-32(%rbp), %rax	# prev, tmp126
	movq	%rax, %rdi	# tmp126,
	call	prev_nonnote_insn	#
	movq	%rax, -32(%rbp)	# tmp127, prev
.L130:
	.loc 1 719 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, prev
	je	.L128	#,
	.loc 1 720 0
	movq	-32(%rbp), %rax	# prev, tmp128
	movzwl	(%rax), %eax	# prev_7->code, D.13112
	cmpw	$36, %ax	#, D.13112
	jne	.L135	#,
.L128:
.LBE10:
	.loc 1 754 0
	movq	-64(%rbp), %rax	# arg0, tmp129
	movzwl	(%rax), %eax	# arg0_3->code, D.13112
	cmpw	$54, %ax	#, D.13112
	je	.L136	#,
	.loc 1 755 0
	movq	-64(%rbp), %rax	# arg0, tmp130
	movzbl	2(%rax), %eax	# arg0_3->mode, D.13110
	testb	%al, %al	# D.13110
	je	.L137	#,
	.loc 1 756 0
	movl	-36(%rbp), %eax	# mode, mode.16
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13111
	cmpl	$4, %eax	#, D.13111
	je	.L137	#,
	.loc 1 757 0
	movl	-36(%rbp), %eax	# mode, mode.17
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13111
	cmpl	$2, %eax	#, D.13111
	je	.L137	#,
	.loc 1 757 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# mode, mode.18
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13111
	cmpl	$6, %eax	#, D.13111
	je	.L137	#,
	movl	-36(%rbp), %eax	# mode, mode.19
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13111
	cmpl	$8, %eax	#, D.13111
	je	.L137	#,
.L136:
	.loc 1 758 0 is_stmt 1
	movl	-52(%rbp), %eax	# code, tmp135
	movl	%eax, %edi	# tmp135,
	call	reverse_condition	#
	jmp	.L117	#
.L137:
	.loc 1 760 0
	movl	$0, %eax	#, D.13108
.L117:
	.loc 1 761 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	reversed_comparison_code_parts, .-reversed_comparison_code_parts
	.globl	reversed_comparison_code
	.type	reversed_comparison_code, @function
reversed_comparison_code:
.LFB13:
	.loc 1 768 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# comparison, comparison
	movq	%rsi, -16(%rbp)	# insn, insn
	.loc 1 769 0
	movq	-8(%rbp), %rax	# comparison, tmp68
	movzwl	(%rax), %eax	# comparison_2(D)->code, D.13116
	movzwl	%ax, %eax	# D.13116, D.13117
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13118
	cmpb	$60, %al	#, D.13118
	je	.L141	#,
	.loc 1 770 0
	movl	$0, %eax	#, D.13115
	jmp	.L142	#
.L141:
	.loc 1 771 0
	movq	-8(%rbp), %rax	# comparison, tmp70
	movq	16(%rax), %rdx	# comparison_2(D)->fld[1].rtx, D.13119
	movq	-8(%rbp), %rax	# comparison, tmp71
	movq	8(%rax), %rsi	# comparison_2(D)->fld[0].rtx, D.13119
	movq	-8(%rbp), %rax	# comparison, tmp72
	movzwl	(%rax), %eax	# comparison_2(D)->code, D.13116
	movzwl	%ax, %eax	# D.13116, D.13115
	movq	-16(%rbp), %rcx	# insn, tmp73
	movl	%eax, %edi	# D.13115,
	call	reversed_comparison_code_parts	#
.L142:
	.loc 1 774 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	reversed_comparison_code, .-reversed_comparison_code
	.globl	reverse_condition
	.type	reverse_condition, @function
reverse_condition:
.LFB14:
	.loc 1 787 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 788 0
	movl	-4(%rbp), %eax	# code, tmp62
	subl	$102, %eax	#, tmp61
	cmpl	$17, %eax	#, tmp61
	ja	.L144	#,
	movl	%eax, %eax	# tmp61, tmp63
	movq	.L146(,%rax,8), %rax	#, tmp64
	jmp	*%rax	# tmp64
	.section	.rodata
	.align 8
	.align 4
.L146:
	.quad	.L145
	.quad	.L147
	.quad	.L148
	.quad	.L149
	.quad	.L150
	.quad	.L151
	.quad	.L152
	.quad	.L153
	.quad	.L154
	.quad	.L155
	.quad	.L156
	.quad	.L157
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.quad	.L158
	.text
.L147:
	.loc 1 791 0
	movl	$102, %eax	#, D.13120
	jmp	.L159	#
.L145:
	.loc 1 793 0
	movl	$103, %eax	#, D.13120
	jmp	.L159	#
.L149:
	.loc 1 795 0
	movl	$106, %eax	#, D.13120
	jmp	.L159	#
.L148:
	.loc 1 797 0
	movl	$107, %eax	#, D.13120
	jmp	.L159	#
.L151:
	.loc 1 799 0
	movl	$104, %eax	#, D.13120
	jmp	.L159	#
.L150:
	.loc 1 801 0
	movl	$105, %eax	#, D.13120
	jmp	.L159	#
.L153:
	.loc 1 803 0
	movl	$110, %eax	#, D.13120
	jmp	.L159	#
.L152:
	.loc 1 805 0
	movl	$111, %eax	#, D.13120
	jmp	.L159	#
.L155:
	.loc 1 807 0
	movl	$108, %eax	#, D.13120
	jmp	.L159	#
.L154:
	.loc 1 809 0
	movl	$109, %eax	#, D.13120
	jmp	.L159	#
.L156:
	.loc 1 811 0
	movl	$113, %eax	#, D.13120
	jmp	.L159	#
.L157:
	.loc 1 813 0
	movl	$112, %eax	#, D.13120
	jmp	.L159	#
.L158:
	.loc 1 821 0
	movl	$0, %eax	#, D.13120
	jmp	.L159	#
.L144:
	.loc 1 824 0
	movl	$__FUNCTION__.10950, %edx	#,
	movl	$824, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L159:
	.loc 1 826 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	reverse_condition, .-reverse_condition
	.globl	reverse_condition_maybe_unordered
	.type	reverse_condition_maybe_unordered, @function
reverse_condition_maybe_unordered:
.LFB15:
	.loc 1 835 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 840 0
	movl	-4(%rbp), %eax	# code, tmp62
	subl	$102, %eax	#, tmp61
	cmpl	$17, %eax	#, tmp61
	ja	.L161	#,
	movl	%eax, %eax	# tmp61, tmp63
	movq	.L163(,%rax,8), %rax	#, tmp64
	jmp	*%rax	# tmp64
	.section	.rodata
	.align 8
	.align 4
.L163:
	.quad	.L162
	.quad	.L164
	.quad	.L165
	.quad	.L166
	.quad	.L167
	.quad	.L168
	.quad	.L161
	.quad	.L161
	.quad	.L161
	.quad	.L161
	.quad	.L169
	.quad	.L170
	.quad	.L171
	.quad	.L172
	.quad	.L173
	.quad	.L174
	.quad	.L175
	.quad	.L176
	.text
.L164:
	.loc 1 843 0
	movl	$102, %eax	#, D.13121
	jmp	.L177	#
.L162:
	.loc 1 845 0
	movl	$103, %eax	#, D.13121
	jmp	.L177	#
.L166:
	.loc 1 847 0
	movl	$117, %eax	#, D.13121
	jmp	.L177	#
.L165:
	.loc 1 849 0
	movl	$118, %eax	#, D.13121
	jmp	.L177	#
.L168:
	.loc 1 851 0
	movl	$115, %eax	#, D.13121
	jmp	.L177	#
.L167:
	.loc 1 853 0
	movl	$116, %eax	#, D.13121
	jmp	.L177	#
.L176:
	.loc 1 855 0
	movl	$114, %eax	#, D.13121
	jmp	.L177	#
.L169:
	.loc 1 857 0
	movl	$113, %eax	#, D.13121
	jmp	.L177	#
.L170:
	.loc 1 859 0
	movl	$112, %eax	#, D.13121
	jmp	.L177	#
.L175:
	.loc 1 861 0
	movl	$104, %eax	#, D.13121
	jmp	.L177	#
.L174:
	.loc 1 863 0
	movl	$105, %eax	#, D.13121
	jmp	.L177	#
.L173:
	.loc 1 865 0
	movl	$106, %eax	#, D.13121
	jmp	.L177	#
.L172:
	.loc 1 867 0
	movl	$107, %eax	#, D.13121
	jmp	.L177	#
.L171:
	.loc 1 869 0
	movl	$119, %eax	#, D.13121
	jmp	.L177	#
.L161:
	.loc 1 872 0
	movl	$__FUNCTION__.10969, %edx	#,
	movl	$872, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L177:
	.loc 1 874 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	reverse_condition_maybe_unordered, .-reverse_condition_maybe_unordered
	.globl	swap_condition
	.type	swap_condition, @function
swap_condition:
.LFB16:
	.loc 1 882 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 883 0
	movl	-4(%rbp), %eax	# code, tmp62
	subl	$102, %eax	#, tmp61
	cmpl	$17, %eax	#, tmp61
	ja	.L179	#,
	movl	%eax, %eax	# tmp61, tmp63
	movq	.L181(,%rax,8), %rax	#, tmp64
	jmp	*%rax	# tmp64
	.section	.rodata
	.align 8
	.align 4
.L181:
	.quad	.L180
	.quad	.L180
	.quad	.L182
	.quad	.L183
	.quad	.L184
	.quad	.L185
	.quad	.L186
	.quad	.L187
	.quad	.L188
	.quad	.L189
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L190
	.quad	.L191
	.quad	.L192
	.quad	.L193
	.quad	.L180
	.text
.L180:
	.loc 1 891 0
	movl	-4(%rbp), %eax	# code, D.13122
	jmp	.L194	#
.L183:
	.loc 1 894 0
	movl	$107, %eax	#, D.13122
	jmp	.L194	#
.L182:
	.loc 1 896 0
	movl	$106, %eax	#, D.13122
	jmp	.L194	#
.L185:
	.loc 1 898 0
	movl	$105, %eax	#, D.13122
	jmp	.L194	#
.L184:
	.loc 1 900 0
	movl	$104, %eax	#, D.13122
	jmp	.L194	#
.L187:
	.loc 1 902 0
	movl	$111, %eax	#, D.13122
	jmp	.L194	#
.L186:
	.loc 1 904 0
	movl	$110, %eax	#, D.13122
	jmp	.L194	#
.L189:
	.loc 1 906 0
	movl	$109, %eax	#, D.13122
	jmp	.L194	#
.L188:
	.loc 1 908 0
	movl	$108, %eax	#, D.13122
	jmp	.L194	#
.L193:
	.loc 1 910 0
	movl	$116, %eax	#, D.13122
	jmp	.L194	#
.L192:
	.loc 1 912 0
	movl	$115, %eax	#, D.13122
	jmp	.L194	#
.L191:
	.loc 1 914 0
	movl	$118, %eax	#, D.13122
	jmp	.L194	#
.L190:
	.loc 1 916 0
	movl	$117, %eax	#, D.13122
	jmp	.L194	#
.L179:
	.loc 1 919 0
	movl	$__FUNCTION__.10992, %edx	#,
	movl	$919, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L194:
	.loc 1 921 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	swap_condition, .-swap_condition
	.globl	unsigned_condition
	.type	unsigned_condition, @function
unsigned_condition:
.LFB17:
	.loc 1 930 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 931 0
	movl	-4(%rbp), %eax	# code, tmp62
	subl	$102, %eax	#, tmp61
	cmpl	$9, %eax	#, tmp61
	ja	.L196	#,
	movl	%eax, %eax	# tmp61, tmp63
	movq	.L198(,%rax,8), %rax	#, tmp64
	jmp	*%rax	# tmp64
	.section	.rodata
	.align 8
	.align 4
.L198:
	.quad	.L197
	.quad	.L197
	.quad	.L199
	.quad	.L200
	.quad	.L201
	.quad	.L202
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.quad	.L197
	.text
.L197:
	.loc 1 939 0
	movl	-4(%rbp), %eax	# code, D.13123
	jmp	.L203	#
.L200:
	.loc 1 942 0
	movl	$109, %eax	#, D.13123
	jmp	.L203	#
.L199:
	.loc 1 944 0
	movl	$108, %eax	#, D.13123
	jmp	.L203	#
.L202:
	.loc 1 946 0
	movl	$111, %eax	#, D.13123
	jmp	.L203	#
.L201:
	.loc 1 948 0
	movl	$110, %eax	#, D.13123
	jmp	.L203	#
.L196:
	.loc 1 951 0
	movl	$__FUNCTION__.11007, %edx	#,
	movl	$951, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L203:
	.loc 1 953 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	unsigned_condition, .-unsigned_condition
	.globl	signed_condition
	.type	signed_condition, @function
signed_condition:
.LFB18:
	.loc 1 960 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 961 0
	movl	-4(%rbp), %eax	# code, tmp62
	subl	$102, %eax	#, tmp61
	cmpl	$9, %eax	#, tmp61
	ja	.L205	#,
	movl	%eax, %eax	# tmp61, tmp63
	movq	.L207(,%rax,8), %rax	#, tmp64
	jmp	*%rax	# tmp64
	.section	.rodata
	.align 8
	.align 4
.L207:
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L206
	.quad	.L208
	.quad	.L209
	.quad	.L210
	.quad	.L211
	.text
.L206:
	.loc 1 969 0
	movl	-4(%rbp), %eax	# code, D.13124
	jmp	.L212	#
.L209:
	.loc 1 972 0
	movl	$105, %eax	#, D.13124
	jmp	.L212	#
.L208:
	.loc 1 974 0
	movl	$104, %eax	#, D.13124
	jmp	.L212	#
.L211:
	.loc 1 976 0
	movl	$107, %eax	#, D.13124
	jmp	.L212	#
.L210:
	.loc 1 978 0
	movl	$106, %eax	#, D.13124
	jmp	.L212	#
.L205:
	.loc 1 981 0
	movl	$__FUNCTION__.11022, %edx	#,
	movl	$981, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L212:
	.loc 1 983 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	signed_condition, .-signed_condition
	.globl	comparison_dominates_p
	.type	comparison_dominates_p, @function
comparison_dominates_p:
.LFB19:
	.loc 1 991 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# code1, code1
	movl	%esi, -8(%rbp)	# code2, code2
	.loc 1 995 0
	cmpl	$0, -4(%rbp)	#, code1
	je	.L214	#,
	.loc 1 995 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, code2
	jne	.L215	#,
.L214:
	.loc 1 996 0 is_stmt 1
	movl	$0, %eax	#, D.13125
	jmp	.L216	#
.L215:
	.loc 1 998 0
	movl	-4(%rbp), %eax	# code1, tmp61
	cmpl	-8(%rbp), %eax	# code2, tmp61
	jne	.L217	#,
	.loc 1 999 0
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L217:
	.loc 1 1001 0
	movl	-4(%rbp), %eax	# code1, tmp63
	subl	$103, %eax	#, tmp62
	cmpl	$16, %eax	#, tmp62
	ja	.L253	#,
	movl	%eax, %eax	# tmp62, tmp64
	movq	.L220(,%rax,8), %rax	#, tmp65
	jmp	*%rax	# tmp65
	.section	.rodata
	.align 8
	.align 4
.L220:
	.quad	.L219
	.quad	.L221
	.quad	.L222
	.quad	.L221
	.quad	.L223
	.quad	.L253
	.quad	.L224
	.quad	.L253
	.quad	.L225
	.quad	.L226
	.quad	.L253
	.quad	.L227
	.quad	.L253
	.quad	.L228
	.quad	.L253
	.quad	.L229
	.quad	.L230
	.text
.L227:
	.loc 1 1004 0
	cmpl	$117, -8(%rbp)	#, code2
	je	.L231	#,
	.loc 1 1004 0 is_stmt 0 discriminator 1
	cmpl	$115, -8(%rbp)	#, code2
	jne	.L232	#,
.L231:
	.loc 1 1005 0 is_stmt 1
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L232:
	.loc 1 1006 0
	jmp	.L233	#
.L219:
	.loc 1 1009 0
	cmpl	$106, -8(%rbp)	#, code2
	je	.L234	#,
	.loc 1 1009 0 is_stmt 0 discriminator 1
	cmpl	$110, -8(%rbp)	#, code2
	je	.L234	#,
	cmpl	$104, -8(%rbp)	#, code2
	je	.L234	#,
	cmpl	$108, -8(%rbp)	#, code2
	je	.L234	#,
	.loc 1 1010 0 is_stmt 1
	cmpl	$113, -8(%rbp)	#, code2
	jne	.L235	#,
.L234:
	.loc 1 1011 0
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L235:
	.loc 1 1012 0
	jmp	.L233	#
.L229:
	.loc 1 1015 0
	cmpl	$117, -8(%rbp)	#, code2
	je	.L236	#,
	.loc 1 1015 0 is_stmt 0 discriminator 1
	cmpl	$102, -8(%rbp)	#, code2
	jne	.L237	#,
.L236:
	.loc 1 1016 0 is_stmt 1
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L237:
	.loc 1 1017 0
	jmp	.L233	#
.L223:
	.loc 1 1020 0
	cmpl	$106, -8(%rbp)	#, code2
	je	.L238	#,
	.loc 1 1020 0 is_stmt 0 discriminator 1
	cmpl	$102, -8(%rbp)	#, code2
	je	.L238	#,
	cmpl	$113, -8(%rbp)	#, code2
	je	.L238	#,
	cmpl	$119, -8(%rbp)	#, code2
	jne	.L239	#,
.L238:
	.loc 1 1021 0 is_stmt 1
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L239:
	.loc 1 1022 0
	jmp	.L233	#
.L228:
	.loc 1 1025 0
	cmpl	$115, -8(%rbp)	#, code2
	je	.L240	#,
	.loc 1 1025 0 is_stmt 0 discriminator 1
	cmpl	$102, -8(%rbp)	#, code2
	jne	.L241	#,
.L240:
	.loc 1 1026 0 is_stmt 1
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L241:
	.loc 1 1027 0
	jmp	.L233	#
.L222:
	.loc 1 1030 0
	cmpl	$104, -8(%rbp)	#, code2
	je	.L242	#,
	.loc 1 1030 0 is_stmt 0 discriminator 1
	cmpl	$102, -8(%rbp)	#, code2
	je	.L242	#,
	cmpl	$113, -8(%rbp)	#, code2
	je	.L242	#,
	cmpl	$119, -8(%rbp)	#, code2
	jne	.L243	#,
.L242:
	.loc 1 1031 0 is_stmt 1
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L243:
	.loc 1 1032 0
	jmp	.L233	#
.L221:
	.loc 1 1036 0
	cmpl	$113, -8(%rbp)	#, code2
	jne	.L244	#,
	.loc 1 1037 0
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L244:
	.loc 1 1038 0
	jmp	.L233	#
.L230:
	.loc 1 1041 0
	cmpl	$102, -8(%rbp)	#, code2
	je	.L245	#,
	.loc 1 1041 0 is_stmt 0 discriminator 1
	cmpl	$113, -8(%rbp)	#, code2
	jne	.L246	#,
.L245:
	.loc 1 1042 0 is_stmt 1
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L246:
	.loc 1 1043 0
	jmp	.L233	#
.L225:
	.loc 1 1046 0
	cmpl	$110, -8(%rbp)	#, code2
	je	.L247	#,
	.loc 1 1046 0 is_stmt 0 discriminator 1
	cmpl	$102, -8(%rbp)	#, code2
	jne	.L248	#,
.L247:
	.loc 1 1047 0 is_stmt 1
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L248:
	.loc 1 1048 0
	jmp	.L233	#
.L224:
	.loc 1 1051 0
	cmpl	$108, -8(%rbp)	#, code2
	je	.L249	#,
	.loc 1 1051 0 is_stmt 0 discriminator 1
	cmpl	$102, -8(%rbp)	#, code2
	jne	.L250	#,
.L249:
	.loc 1 1052 0 is_stmt 1
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L250:
	.loc 1 1053 0
	jmp	.L233	#
.L226:
	.loc 1 1056 0
	cmpl	$102, -8(%rbp)	#, code2
	je	.L251	#,
	.loc 1 1056 0 is_stmt 0 discriminator 1
	cmpl	$114, -8(%rbp)	#, code2
	je	.L251	#,
	cmpl	$117, -8(%rbp)	#, code2
	je	.L251	#,
	cmpl	$118, -8(%rbp)	#, code2
	je	.L251	#,
	.loc 1 1057 0 is_stmt 1
	cmpl	$115, -8(%rbp)	#, code2
	je	.L251	#,
	.loc 1 1057 0 is_stmt 0 discriminator 1
	cmpl	$116, -8(%rbp)	#, code2
	jne	.L252	#,
.L251:
	.loc 1 1058 0 is_stmt 1
	movl	$1, %eax	#, D.13125
	jmp	.L216	#
.L252:
	.loc 1 1059 0
	jmp	.L233	#
.L253:
	.loc 1 1062 0
	nop
.L233:
	.loc 1 1065 0
	movl	$0, %eax	#, D.13125
.L216:
	.loc 1 1066 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	comparison_dominates_p, .-comparison_dominates_p
	.globl	simplejump_p
	.type	simplejump_p, @function
simplejump_p:
.LFB20:
	.loc 1 1073 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 1074 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movzwl	(%rax), %eax	# insn_2(D)->code, D.13126
	.loc 1 1077 0
	cmpw	$33, %ax	#, D.13126
	jne	.L255	#,
	.loc 1 1075 0
	movq	-8(%rbp), %rax	# insn, tmp72
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.13127
	movzwl	(%rax), %eax	# _4->code, D.13126
	cmpw	$47, %ax	#, D.13126
	jne	.L255	#,
	.loc 1 1076 0
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.13127
	movq	8(%rax), %rax	# _6->fld[0].rtx, D.13127
	movzwl	(%rax), %eax	# _7->code, D.13126
	cmpw	$59, %ax	#, D.13126
	jne	.L255	#,
	.loc 1 1077 0
	movq	-8(%rbp), %rax	# insn, tmp74
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.13127
	movq	16(%rax), %rax	# _9->fld[1].rtx, D.13127
	movzwl	(%rax), %eax	# _10->code, D.13126
	cmpw	$67, %ax	#, D.13126
	jne	.L255	#,
	.loc 1 1077 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.20
	jmp	.L256	#
.L255:
	.loc 1 1077 0 discriminator 1
	movl	$0, %eax	#, iftmp.20
.L256:
	.loc 1 1078 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	simplejump_p, .-simplejump_p
	.globl	condjump_p
	.type	condjump_p, @function
condjump_p:
.LFB21:
	.loc 1 1089 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1090 0
	movq	-24(%rbp), %rax	# insn, tmp79
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, tmp80
	movq	%rax, -8(%rbp)	# tmp80, x
	.loc 1 1092 0
	movq	-8(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_4->code, D.13130
	cmpw	$47, %ax	#, D.13130
	jne	.L259	#,
	.loc 1 1093 0
	movq	-8(%rbp), %rax	# x, tmp82
	movq	8(%rax), %rax	# x_4->fld[0].rtx, D.13131
	movzwl	(%rax), %eax	# _6->code, D.13130
	cmpw	$59, %ax	#, D.13130
	je	.L260	#,
.L259:
	.loc 1 1094 0
	movl	$0, %eax	#, D.13129
	jmp	.L261	#
.L260:
	.loc 1 1096 0
	movq	-8(%rbp), %rax	# x, tmp83
	movq	16(%rax), %rax	# x_4->fld[1].rtx, tmp84
	movq	%rax, -8(%rbp)	# tmp84, x
	.loc 1 1097 0
	movq	-8(%rbp), %rax	# x, tmp85
	movzwl	(%rax), %eax	# x_8->code, D.13130
	cmpw	$67, %ax	#, D.13130
	jne	.L262	#,
	.loc 1 1098 0
	movl	$1, %eax	#, D.13129
	jmp	.L261	#
.L262:
	.loc 1 1100 0
	movq	-8(%rbp), %rax	# x, tmp86
	movzwl	(%rax), %eax	# x_8->code, D.13130
	.loc 1 1101 0
	cmpw	$72, %ax	#, D.13130
	jne	.L263	#,
	.loc 1 1101 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp87
	movq	24(%rax), %rax	# x_8->fld[2].rtx, D.13131
	movzwl	(%rax), %eax	# _12->code, D.13130
	cmpw	$59, %ax	#, D.13130
	jne	.L264	#,
	.loc 1 1102 0 is_stmt 1
	movq	-8(%rbp), %rax	# x, tmp88
	movq	16(%rax), %rax	# x_8->fld[1].rtx, D.13131
	movzwl	(%rax), %eax	# _14->code, D.13130
	cmpw	$67, %ax	#, D.13130
	je	.L265	#,
	.loc 1 1103 0
	movq	-8(%rbp), %rax	# x, tmp89
	movq	16(%rax), %rax	# x_8->fld[1].rtx, D.13131
	movzwl	(%rax), %eax	# _16->code, D.13130
	cmpw	$51, %ax	#, D.13130
	je	.L265	#,
.L264:
	.loc 1 1104 0
	movq	-8(%rbp), %rax	# x, tmp90
	movq	16(%rax), %rax	# x_8->fld[1].rtx, D.13131
	movzwl	(%rax), %eax	# _18->code, D.13130
	cmpw	$59, %ax	#, D.13130
	jne	.L263	#,
	.loc 1 1105 0
	movq	-8(%rbp), %rax	# x, tmp91
	movq	24(%rax), %rax	# x_8->fld[2].rtx, D.13131
	movzwl	(%rax), %eax	# _20->code, D.13130
	cmpw	$67, %ax	#, D.13130
	je	.L265	#,
	.loc 1 1106 0
	movq	-8(%rbp), %rax	# x, tmp92
	movq	24(%rax), %rax	# x_8->fld[2].rtx, D.13131
	movzwl	(%rax), %eax	# _22->code, D.13130
	cmpw	$51, %ax	#, D.13130
	jne	.L263	#,
.L265:
	.loc 1 1101 0
	movl	$1, %eax	#, iftmp.21
	jmp	.L266	#
.L263:
	.loc 1 1101 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.21
.L266:
.L261:
	.loc 1 1109 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	condjump_p, .-condjump_p
	.globl	condjump_in_parallel_p
	.type	condjump_in_parallel_p, @function
condjump_in_parallel_p:
.LFB22:
	.loc 1 1120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1121 0
	movq	-24(%rbp), %rax	# insn, tmp88
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, tmp89
	movq	%rax, -8(%rbp)	# tmp89, x
	.loc 1 1123 0
	movq	-8(%rbp), %rax	# x, tmp90
	movzwl	(%rax), %eax	# x_3->code, D.13133
	cmpw	$39, %ax	#, D.13133
	je	.L268	#,
	.loc 1 1124 0
	movl	$0, %eax	#, D.13132
	jmp	.L269	#
.L268:
	.loc 1 1126 0
	movq	-8(%rbp), %rax	# x, tmp91
	movq	8(%rax), %rax	# x_3->fld[0].rtvec, D.13134
	movq	8(%rax), %rax	# _6->elem, tmp92
	movq	%rax, -8(%rbp)	# tmp92, x
	.loc 1 1128 0
	movq	-8(%rbp), %rax	# x, tmp93
	movzwl	(%rax), %eax	# x_7->code, D.13133
	cmpw	$47, %ax	#, D.13133
	je	.L270	#,
	.loc 1 1129 0
	movl	$0, %eax	#, D.13132
	jmp	.L269	#
.L270:
	.loc 1 1130 0
	movq	-8(%rbp), %rax	# x, tmp94
	movq	8(%rax), %rax	# x_7->fld[0].rtx, D.13135
	movzwl	(%rax), %eax	# _10->code, D.13133
	cmpw	$59, %ax	#, D.13133
	je	.L271	#,
	.loc 1 1131 0
	movl	$0, %eax	#, D.13132
	jmp	.L269	#
.L271:
	.loc 1 1132 0
	movq	-8(%rbp), %rax	# x, tmp95
	movq	16(%rax), %rax	# x_7->fld[1].rtx, D.13135
	movzwl	(%rax), %eax	# _13->code, D.13133
	cmpw	$67, %ax	#, D.13133
	jne	.L272	#,
	.loc 1 1133 0
	movl	$1, %eax	#, D.13132
	jmp	.L269	#
.L272:
	.loc 1 1134 0
	movq	-8(%rbp), %rax	# x, tmp96
	movq	16(%rax), %rax	# x_7->fld[1].rtx, D.13135
	movzwl	(%rax), %eax	# _16->code, D.13133
	cmpw	$72, %ax	#, D.13133
	je	.L273	#,
	.loc 1 1135 0
	movl	$0, %eax	#, D.13132
	jmp	.L269	#
.L273:
	.loc 1 1136 0
	movq	-8(%rbp), %rax	# x, tmp97
	movq	16(%rax), %rax	# x_7->fld[1].rtx, D.13135
	movq	24(%rax), %rdx	# _19->fld[2].rtx, D.13135
	movq	global_rtl(%rip), %rax	# global_rtl, D.13135
	cmpq	%rax, %rdx	# D.13135, D.13135
	jne	.L274	#,
	.loc 1 1137 0
	movq	-8(%rbp), %rax	# x, tmp98
	movq	16(%rax), %rax	# x_7->fld[1].rtx, D.13135
	movq	16(%rax), %rax	# _22->fld[1].rtx, D.13135
	movzwl	(%rax), %eax	# _23->code, D.13133
	cmpw	$67, %ax	#, D.13133
	je	.L275	#,
	.loc 1 1138 0
	movq	-8(%rbp), %rax	# x, tmp99
	movq	16(%rax), %rax	# x_7->fld[1].rtx, D.13135
	movq	16(%rax), %rax	# _25->fld[1].rtx, D.13135
	movzwl	(%rax), %eax	# _26->code, D.13133
	cmpw	$51, %ax	#, D.13133
	jne	.L274	#,
.L275:
	.loc 1 1139 0
	movl	$1, %eax	#, D.13132
	jmp	.L269	#
.L274:
	.loc 1 1140 0
	movq	-8(%rbp), %rax	# x, tmp100
	movq	16(%rax), %rax	# x_7->fld[1].rtx, D.13135
	movq	16(%rax), %rdx	# _29->fld[1].rtx, D.13135
	movq	global_rtl(%rip), %rax	# global_rtl, D.13135
	cmpq	%rax, %rdx	# D.13135, D.13135
	jne	.L276	#,
	.loc 1 1141 0
	movq	-8(%rbp), %rax	# x, tmp101
	movq	16(%rax), %rax	# x_7->fld[1].rtx, D.13135
	movq	24(%rax), %rax	# _32->fld[2].rtx, D.13135
	movzwl	(%rax), %eax	# _33->code, D.13133
	cmpw	$67, %ax	#, D.13133
	je	.L277	#,
	.loc 1 1142 0
	movq	-8(%rbp), %rax	# x, tmp102
	movq	16(%rax), %rax	# x_7->fld[1].rtx, D.13135
	movq	24(%rax), %rax	# _35->fld[2].rtx, D.13135
	movzwl	(%rax), %eax	# _36->code, D.13133
	cmpw	$51, %ax	#, D.13133
	jne	.L276	#,
.L277:
	.loc 1 1143 0
	movl	$1, %eax	#, D.13132
	jmp	.L269	#
.L276:
	.loc 1 1144 0
	movl	$0, %eax	#, D.13132
.L269:
	.loc 1 1145 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	condjump_in_parallel_p, .-condjump_in_parallel_p
	.globl	pc_set
	.type	pc_set, @function
pc_set:
.LFB23:
	.loc 1 1152 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1154 0
	movq	-24(%rbp), %rax	# insn, tmp67
	movzwl	(%rax), %eax	# insn_3(D)->code, D.13137
	cmpw	$33, %ax	#, D.13137
	je	.L279	#,
	.loc 1 1155 0
	movl	$0, %eax	#, D.13136
	jmp	.L280	#
.L279:
	.loc 1 1156 0
	movq	-24(%rbp), %rax	# insn, tmp68
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, tmp69
	movq	%rax, -8(%rbp)	# tmp69, pat
	.loc 1 1160 0
	movq	-8(%rbp), %rax	# pat, tmp70
	movzwl	(%rax), %eax	# pat_6->code, D.13137
	cmpw	$39, %ax	#, D.13137
	jne	.L281	#,
	.loc 1 1161 0
	movq	-8(%rbp), %rax	# pat, tmp71
	movq	8(%rax), %rax	# pat_6->fld[0].rtvec, D.13138
	movq	8(%rax), %rax	# _8->elem, tmp72
	movq	%rax, -8(%rbp)	# tmp72, pat
.L281:
	.loc 1 1162 0
	movq	-8(%rbp), %rax	# pat, tmp73
	movzwl	(%rax), %eax	# pat_1->code, D.13137
	cmpw	$47, %ax	#, D.13137
	jne	.L282	#,
	.loc 1 1162 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pat, tmp74
	movq	8(%rax), %rax	# pat_1->fld[0].rtx, D.13139
	movzwl	(%rax), %eax	# _11->code, D.13137
	cmpw	$59, %ax	#, D.13137
	jne	.L282	#,
	.loc 1 1163 0 is_stmt 1
	movq	-8(%rbp), %rax	# pat, D.13136
	jmp	.L280	#
.L282:
	.loc 1 1165 0
	movl	$0, %eax	#, D.13136
.L280:
	.loc 1 1166 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	pc_set, .-pc_set
	.globl	any_uncondjump_p
	.type	any_uncondjump_p, @function
any_uncondjump_p:
.LFB24:
	.loc 1 1174 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1175 0
	movq	-24(%rbp), %rax	# insn, tmp63
	movq	%rax, %rdi	# tmp63,
	call	pc_set	#
	movq	%rax, -8(%rbp)	# tmp64, x
	.loc 1 1176 0
	cmpq	$0, -8(%rbp)	#, x
	jne	.L284	#,
	.loc 1 1177 0
	movl	$0, %eax	#, D.13140
	jmp	.L285	#
.L284:
	.loc 1 1178 0
	movq	-8(%rbp), %rax	# x, tmp65
	movq	16(%rax), %rax	# x_3->fld[1].rtx, D.13141
	movzwl	(%rax), %eax	# _5->code, D.13142
	cmpw	$67, %ax	#, D.13142
	je	.L286	#,
	.loc 1 1179 0
	movl	$0, %eax	#, D.13140
	jmp	.L285	#
.L286:
	.loc 1 1180 0
	movl	$1, %eax	#, D.13140
.L285:
	.loc 1 1181 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	any_uncondjump_p, .-any_uncondjump_p
	.globl	any_condjump_p
	.type	any_condjump_p, @function
any_condjump_p:
.LFB25:
	.loc 1 1193 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1194 0
	movq	-24(%rbp), %rax	# insn, tmp70
	movq	%rax, %rdi	# tmp70,
	call	pc_set	#
	movq	%rax, -8(%rbp)	# tmp71, x
	.loc 1 1197 0
	cmpq	$0, -8(%rbp)	#, x
	jne	.L288	#,
	.loc 1 1198 0
	movl	$0, %eax	#, D.13143
	jmp	.L289	#
.L288:
	.loc 1 1199 0
	movq	-8(%rbp), %rax	# x, tmp72
	movq	16(%rax), %rax	# x_4->fld[1].rtx, D.13144
	movzwl	(%rax), %eax	# _6->code, D.13145
	cmpw	$72, %ax	#, D.13145
	je	.L290	#,
	.loc 1 1200 0
	movl	$0, %eax	#, D.13143
	jmp	.L289	#
.L290:
	.loc 1 1202 0
	movq	-8(%rbp), %rax	# x, tmp73
	movq	16(%rax), %rax	# x_4->fld[1].rtx, D.13144
	movq	16(%rax), %rax	# _9->fld[1].rtx, D.13144
	movzwl	(%rax), %eax	# _10->code, D.13145
	movzwl	%ax, %eax	# D.13145, tmp74
	movl	%eax, -16(%rbp)	# tmp74, a
	.loc 1 1203 0
	movq	-8(%rbp), %rax	# x, tmp75
	movq	16(%rax), %rax	# x_4->fld[1].rtx, D.13144
	movq	24(%rax), %rax	# _13->fld[2].rtx, D.13144
	movzwl	(%rax), %eax	# _14->code, D.13145
	movzwl	%ax, %eax	# D.13145, tmp76
	movl	%eax, -12(%rbp)	# tmp76, b
	.loc 1 1206 0
	cmpl	$59, -12(%rbp)	#, b
	jne	.L291	#,
	.loc 1 1205 0
	cmpl	$67, -16(%rbp)	#, a
	je	.L292	#,
	.loc 1 1205 0 is_stmt 0 discriminator 1
	cmpl	$51, -16(%rbp)	#, a
	je	.L292	#,
.L291:
	.loc 1 1206 0 is_stmt 1 discriminator 1
	cmpl	$59, -16(%rbp)	#, a
	jne	.L293	#,
	.loc 1 1206 0 is_stmt 0 discriminator 2
	cmpl	$67, -12(%rbp)	#, b
	je	.L292	#,
	cmpl	$51, -12(%rbp)	#, b
	jne	.L293	#,
.L292:
	.loc 1 1206 0 discriminator 1
	movl	$1, %eax	#, iftmp.22
	jmp	.L294	#
.L293:
	.loc 1 1206 0 discriminator 3
	movl	$0, %eax	#, iftmp.22
.L294:
.L289:
	.loc 1 1207 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	any_condjump_p, .-any_condjump_p
	.globl	condjump_label
	.type	condjump_label, @function
condjump_label:
.LFB26:
	.loc 1 1214 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1215 0
	movq	-24(%rbp), %rax	# insn, tmp71
	movq	%rax, %rdi	# tmp71,
	call	pc_set	#
	movq	%rax, -8(%rbp)	# tmp72, x
	.loc 1 1217 0
	cmpq	$0, -8(%rbp)	#, x
	jne	.L296	#,
	.loc 1 1218 0
	movl	$0, %eax	#, D.13146
	jmp	.L297	#
.L296:
	.loc 1 1219 0
	movq	-8(%rbp), %rax	# x, tmp73
	movq	16(%rax), %rax	# x_3->fld[1].rtx, tmp74
	movq	%rax, -8(%rbp)	# tmp74, x
	.loc 1 1220 0
	movq	-8(%rbp), %rax	# x, tmp75
	movzwl	(%rax), %eax	# x_5->code, D.13147
	cmpw	$67, %ax	#, D.13147
	jne	.L298	#,
	.loc 1 1221 0
	movq	-8(%rbp), %rax	# x, D.13146
	jmp	.L297	#
.L298:
	.loc 1 1222 0
	movq	-8(%rbp), %rax	# x, tmp76
	movzwl	(%rax), %eax	# x_5->code, D.13147
	cmpw	$72, %ax	#, D.13147
	je	.L299	#,
	.loc 1 1223 0
	movl	$0, %eax	#, D.13146
	jmp	.L297	#
.L299:
	.loc 1 1224 0
	movq	-8(%rbp), %rax	# x, tmp77
	movq	24(%rax), %rdx	# x_5->fld[2].rtx, D.13148
	movq	global_rtl(%rip), %rax	# global_rtl, D.13148
	cmpq	%rax, %rdx	# D.13148, D.13148
	jne	.L300	#,
	.loc 1 1224 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp78
	movq	16(%rax), %rax	# x_5->fld[1].rtx, D.13148
	movzwl	(%rax), %eax	# _12->code, D.13147
	cmpw	$67, %ax	#, D.13147
	jne	.L300	#,
	.loc 1 1225 0 is_stmt 1
	movq	-8(%rbp), %rax	# x, tmp79
	movq	16(%rax), %rax	# x_5->fld[1].rtx, D.13146
	jmp	.L297	#
.L300:
	.loc 1 1226 0
	movq	-8(%rbp), %rax	# x, tmp80
	movq	16(%rax), %rdx	# x_5->fld[1].rtx, D.13148
	movq	global_rtl(%rip), %rax	# global_rtl, D.13148
	cmpq	%rax, %rdx	# D.13148, D.13148
	jne	.L301	#,
	.loc 1 1226 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp81
	movq	24(%rax), %rax	# x_5->fld[2].rtx, D.13148
	movzwl	(%rax), %eax	# _17->code, D.13147
	cmpw	$67, %ax	#, D.13147
	jne	.L301	#,
	.loc 1 1227 0 is_stmt 1
	movq	-8(%rbp), %rax	# x, tmp82
	movq	24(%rax), %rax	# x_5->fld[2].rtx, D.13146
	jmp	.L297	#
.L301:
	.loc 1 1228 0
	movl	$0, %eax	#, D.13146
.L297:
	.loc 1 1229 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	condjump_label, .-condjump_label
	.type	returnjump_p_1, @function
returnjump_p_1:
.LFB27:
	.loc 1 1237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# loc, loc
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 1238 0
	movq	-24(%rbp), %rax	# loc, tmp66
	movq	(%rax), %rax	# *loc_2(D), tmp67
	movq	%rax, -8(%rbp)	# tmp67, x
	.loc 1 1240 0
	cmpq	$0, -8(%rbp)	#, x
	je	.L303	#,
	.loc 1 1240 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp68
	movzwl	(%rax), %eax	# x_3->code, D.13149
	cmpw	$51, %ax	#, D.13149
	je	.L304	#,
	.loc 1 1241 0 is_stmt 1
	movq	-8(%rbp), %rax	# x, tmp69
	movzwl	(%rax), %eax	# x_3->code, D.13149
	cmpw	$47, %ax	#, D.13149
	jne	.L303	#,
	.loc 1 1241 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp70
	movzbl	3(%rax), %eax	# *x_3, D.13150
	andl	$1, %eax	#, D.13150
	testb	%al, %al	# D.13150
	je	.L303	#,
.L304:
	.loc 1 1240 0 is_stmt 1 discriminator 3
	movl	$1, %eax	#, iftmp.23
	jmp	.L305	#
.L303:
	.loc 1 1240 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.23
.L305:
	.loc 1 1242 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	returnjump_p_1, .-returnjump_p_1
	.globl	returnjump_p
	.type	returnjump_p, @function
returnjump_p:
.LFB28:
	.loc 1 1247 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 1248 0
	movq	-8(%rbp), %rax	# insn, tmp63
	movzwl	(%rax), %eax	# insn_2(D)->code, D.13153
	cmpw	$33, %ax	#, D.13153
	je	.L308	#,
	.loc 1 1249 0
	movl	$0, %eax	#, D.13152
	jmp	.L309	#
.L308:
	.loc 1 1250 0
	movq	-8(%rbp), %rax	# insn, tmp64
	addq	$32, %rax	#, D.13154
	movl	$0, %edx	#,
	movl	$returnjump_p_1, %esi	#,
	movq	%rax, %rdi	# D.13154,
	call	for_each_rtx	#
.L309:
	.loc 1 1251 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	returnjump_p, .-returnjump_p
	.globl	onlyjump_p
	.type	onlyjump_p, @function
onlyjump_p:
.LFB29:
	.loc 1 1259 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1262 0
	movq	-24(%rbp), %rax	# insn, tmp74
	movzwl	(%rax), %eax	# insn_4(D)->code, D.13156
	cmpw	$33, %ax	#, D.13156
	je	.L311	#,
	.loc 1 1263 0
	movl	$0, %eax	#, D.13155
	jmp	.L312	#
.L311:
	.loc 1 1265 0
	movq	-24(%rbp), %rax	# insn, tmp75
	movzwl	(%rax), %eax	# insn_4(D)->code, D.13156
	movzwl	%ax, %eax	# D.13156, D.13155
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13157
	cmpb	$105, %al	#, D.13157
	jne	.L313	#,
	.loc 1 1265 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp77
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, D.13158
	movzwl	(%rax), %eax	# _10->code, D.13156
	cmpw	$47, %ax	#, D.13156
	jne	.L314	#,
	.loc 1 1265 0 discriminator 3
	movq	-24(%rbp), %rax	# insn, tmp78
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, iftmp.25
	jmp	.L316	#
.L314:
	.loc 1 1265 0 discriminator 4
	movq	-24(%rbp), %rax	# insn, tmp79
	movq	32(%rax), %rdx	# insn_4(D)->fld[3].rtx, D.13158
	movq	-24(%rbp), %rax	# insn, tmp80
	movq	%rdx, %rsi	# D.13158,
	movq	%rax, %rdi	# tmp80,
	call	single_set_2	#
	jmp	.L316	#
.L313:
	.loc 1 1265 0 discriminator 2
	movl	$0, %eax	#, iftmp.24
.L316:
	.loc 1 1265 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.24, set
	.loc 1 1266 0 is_stmt 1 discriminator 5
	cmpq	$0, -8(%rbp)	#, set
	jne	.L317	#,
	.loc 1 1267 0
	movl	$0, %eax	#, D.13155
	jmp	.L312	#
.L317:
	.loc 1 1268 0
	movq	-8(%rbp), %rax	# set, tmp81
	movq	8(%rax), %rax	# set_17->fld[0].rtx, D.13158
	movzwl	(%rax), %eax	# _19->code, D.13156
	cmpw	$59, %ax	#, D.13156
	je	.L318	#,
	.loc 1 1269 0
	movl	$0, %eax	#, D.13155
	jmp	.L312	#
.L318:
	.loc 1 1270 0
	movq	-8(%rbp), %rax	# set, tmp82
	movq	16(%rax), %rax	# set_17->fld[1].rtx, D.13158
	movq	%rax, %rdi	# D.13158,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13155
	je	.L319	#,
	.loc 1 1271 0
	movl	$0, %eax	#, D.13155
	jmp	.L312	#
.L319:
	.loc 1 1273 0
	movl	$1, %eax	#, D.13155
.L312:
	.loc 1 1274 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	onlyjump_p, .-onlyjump_p
	.globl	follow_jumps
	.type	follow_jumps, @function
follow_jumps:
.LFB30:
	.loc 1 1344 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# label, label
	.loc 1 1347 0
	movq	-56(%rbp), %rax	# label, tmp79
	movq	%rax, -32(%rbp)	# tmp79, value
	.loc 1 1350 0
	movl	$0, -36(%rbp)	#, depth
	jmp	.L321	#
.L333:
.LBB14:
	.loc 1 1366 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.26
	testl	%eax, %eax	# reload_completed.26
	jne	.L322	#,
	.loc 1 1367 0
	movq	-32(%rbp), %rax	# value, tmp80
	movq	%rax, -24(%rbp)	# tmp80, tem
	jmp	.L323	#
.L327:
	.loc 1 1368 0
	movq	-24(%rbp), %rax	# tem, tmp81
	movzwl	(%rax), %eax	# tem_3->code, D.13160
	cmpw	$37, %ax	#, D.13160
	jne	.L324	#,
	.loc 1 1369 0
	movq	-24(%rbp), %rax	# tem, tmp82
	movl	40(%rax), %eax	# tem_3->fld[4].rtint, D.13162
	cmpl	$-96, %eax	#, D.13162
	je	.L325	#,
	.loc 1 1372 0
	movl	flag_test_coverage(%rip), %eax	# flag_test_coverage, flag_test_coverage.27
	testl	%eax, %eax	# flag_test_coverage.27
	je	.L324	#,
	.loc 1 1372 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tem, tmp83
	movl	40(%rax), %eax	# tem_3->fld[4].rtint, D.13162
	testl	%eax, %eax	# D.13162
	jle	.L324	#,
.L325:
	.loc 1 1373 0 is_stmt 1
	movq	-32(%rbp), %rax	# value, D.13159
	jmp	.L326	#
.L324:
	.loc 1 1367 0
	movq	-24(%rbp), %rax	# tem, tmp84
	movq	24(%rax), %rax	# tem_3->fld[2].rtx, tmp85
	movq	%rax, -24(%rbp)	# tmp85, tem
.L323:
	.loc 1 1367 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tem, tmp86
	cmpq	-16(%rbp), %rax	# insn, tmp86
	jne	.L327	#,
.L322:
	.loc 1 1376 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp87
	movq	64(%rax), %rax	# insn_8->fld[7].rtx, D.13161
	cmpq	-56(%rbp), %rax	# label, D.13161
	jne	.L328	#,
	.loc 1 1377 0
	movq	-56(%rbp), %rax	# label, D.13159
	jmp	.L326	#
.L328:
	.loc 1 1379 0
	movq	-16(%rbp), %rax	# insn, tmp88
	movq	64(%rax), %rax	# insn_8->fld[7].rtx, D.13161
	movq	%rax, %rdi	# D.13161,
	call	next_active_insn	#
	movq	%rax, -24(%rbp)	# tmp89, tem
	.loc 1 1380 0
	cmpq	$0, -24(%rbp)	#, tem
	je	.L329	#,
	.loc 1 1380 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tem, tmp90
	movq	32(%rax), %rax	# tem_28->fld[3].rtx, D.13161
	movzwl	(%rax), %eax	# _29->code, D.13160
	cmpw	$44, %ax	#, D.13160
	je	.L330	#,
	.loc 1 1381 0 is_stmt 1
	movq	-24(%rbp), %rax	# tem, tmp91
	movq	32(%rax), %rax	# tem_28->fld[3].rtx, D.13161
	movzwl	(%rax), %eax	# _31->code, D.13160
	cmpw	$45, %ax	#, D.13160
	je	.L330	#,
.L329:
	.loc 1 1384 0
	movq	-16(%rbp), %rax	# insn, tmp92
	movq	64(%rax), %rax	# insn_8->fld[7].rtx, tmp93
	movq	%rax, -32(%rbp)	# tmp93, value
.LBE14:
	.loc 1 1359 0
	addl	$1, -36(%rbp)	#, depth
.L321:
	.loc 1 1350 0 discriminator 1
	cmpl	$9, -36(%rbp)	#, depth
	jg	.L330	#,
	.loc 1 1352 0
	movq	-32(%rbp), %rax	# value, tmp94
	movq	%rax, %rdi	# tmp94,
	call	next_active_insn	#
	movq	%rax, -16(%rbp)	# tmp95, insn
	cmpq	$0, -16(%rbp)	#, insn
	je	.L330	#,
	.loc 1 1353 0
	movq	-16(%rbp), %rax	# insn, tmp96
	movzwl	(%rax), %eax	# insn_8->code, D.13160
	cmpw	$33, %ax	#, D.13160
	jne	.L330	#,
	.loc 1 1354 0
	movq	-16(%rbp), %rax	# insn, tmp97
	movq	64(%rax), %rax	# insn_8->fld[7].rtx, D.13161
	testq	%rax, %rax	# D.13161
	je	.L331	#,
	.loc 1 1354 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp98
	movq	%rax, %rdi	# tmp98,
	call	any_uncondjump_p	#
	testl	%eax, %eax	# D.13162
	je	.L331	#,
	.loc 1 1355 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp99
	movq	%rax, %rdi	# tmp99,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.13162
	jne	.L332	#,
.L331:
	.loc 1 1356 0
	movq	-16(%rbp), %rax	# insn, tmp100
	movq	32(%rax), %rax	# insn_8->fld[3].rtx, D.13161
	movzwl	(%rax), %eax	# _13->code, D.13160
	cmpw	$51, %ax	#, D.13160
	jne	.L330	#,
.L332:
	.loc 1 1357 0
	movq	-16(%rbp), %rax	# insn, tmp101
	movq	24(%rax), %rax	# insn_8->fld[2].rtx, tmp102
	movq	%rax, -8(%rbp)	# tmp102, next
	cmpq	$0, -8(%rbp)	#, next
	je	.L330	#,
	.loc 1 1358 0
	movq	-8(%rbp), %rax	# next, tmp103
	movzwl	(%rax), %eax	# next_15->code, D.13160
	cmpw	$35, %ax	#, D.13160
	je	.L333	#,
.L330:
	.loc 1 1386 0
	cmpl	$10, -36(%rbp)	#, depth
	jne	.L334	#,
	.loc 1 1387 0
	movq	-56(%rbp), %rax	# label, D.13159
	jmp	.L326	#
.L334:
	.loc 1 1388 0
	movq	-32(%rbp), %rax	# value, D.13159
.L326:
	.loc 1 1389 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	follow_jumps, .-follow_jumps
	.globl	mark_jump_label
	.type	mark_jump_label, @function
mark_jump_label:
.LFB31:
	.loc 1 1410 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# insn, insn
	movl	%edx, -52(%rbp)	# in_mem, in_mem
	.loc 1 1411 0
	movq	-40(%rbp), %rax	# x, tmp98
	movzwl	(%rax), %eax	# x_5(D)->code, D.13163
	movzwl	%ax, %eax	# D.13163, tmp99
	movl	%eax, -24(%rbp)	# tmp99, code
	.loc 1 1415 0
	movl	-24(%rbp), %eax	# code, tmp101
	subl	$44, %eax	#, tmp100
	cmpl	$25, %eax	#, tmp100
	ja	.L363	#,
	movl	%eax, %eax	# tmp100, tmp102
	movq	.L338(,%rax,8), %rax	#, tmp103
	jmp	*%rax	# tmp103
	.section	.rodata
	.align 8
	.align 4
.L338:
	.quad	.L337
	.quad	.L337
	.quad	.L363
	.quad	.L363
	.quad	.L363
	.quad	.L364
	.quad	.L364
	.quad	.L363
	.quad	.L363
	.quad	.L363
	.quad	.L364
	.quad	.L364
	.quad	.L363
	.quad	.L363
	.quad	.L363
	.quad	.L364
	.quad	.L363
	.quad	.L364
	.quad	.L363
	.quad	.L364
	.quad	.L363
	.quad	.L363
	.quad	.L340
	.quad	.L341
	.quad	.L342
	.quad	.L364
	.text
.L340:
	.loc 1 1428 0
	movl	$1, -52(%rbp)	#, in_mem
	.loc 1 1429 0
	jmp	.L344	#
.L342:
	.loc 1 1432 0
	cmpl	$0, -52(%rbp)	#, in_mem
	jne	.L345	#,
	.loc 1 1433 0
	jmp	.L335	#
.L345:
	.loc 1 1436 0
	movq	-40(%rbp), %rax	# x, tmp104
	movzbl	3(%rax), %eax	# *x_5(D), D.13164
	andl	$4, %eax	#, D.13164
	testb	%al, %al	# D.13164
	je	.L346	#,
	.loc 1 1437 0
	movq	-40(%rbp), %rax	# x, tmp105
	movq	%rax, %rdi	# tmp105,
	call	get_pool_constant	#
	movl	-52(%rbp), %edx	# in_mem, tmp106
	movq	-48(%rbp), %rcx	# insn, tmp107
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# D.13165,
	call	mark_jump_label	#
	.loc 1 1438 0
	jmp	.L344	#
.L346:
	jmp	.L344	#
.L341:
.LBB15:
	.loc 1 1442 0
	movq	-40(%rbp), %rax	# x, tmp108
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, tmp109
	movq	%rax, -16(%rbp)	# tmp109, label
	.loc 1 1446 0
	movq	-16(%rbp), %rax	# label, tmp110
	movzwl	(%rax), %eax	# label_14->code, D.13163
	cmpw	$37, %ax	#, D.13163
	jne	.L347	#,
	.loc 1 1447 0
	movq	-16(%rbp), %rax	# label, tmp111
	movl	40(%rax), %eax	# label_14->fld[4].rtint, D.13166
	cmpl	$-88, %eax	#, D.13166
	jne	.L347	#,
	.loc 1 1448 0
	jmp	.L344	#
.L347:
	.loc 1 1450 0
	movq	-16(%rbp), %rax	# label, tmp112
	movzwl	(%rax), %eax	# label_14->code, D.13163
	cmpw	$36, %ax	#, D.13163
	je	.L348	#,
	.loc 1 1451 0
	movl	$__FUNCTION__.11117, %edx	#,
	movl	$1451, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L348:
	.loc 1 1454 0
	movq	-40(%rbp), %rax	# x, tmp113
	movzbl	3(%rax), %eax	# *x_5(D), D.13164
	andl	$8, %eax	#, D.13164
	testb	%al, %al	# D.13164
	je	.L349	#,
	.loc 1 1455 0
	jmp	.L344	#
.L349:
	.loc 1 1457 0
	movq	-40(%rbp), %rax	# x, tmp114
	movq	-16(%rbp), %rdx	# label, tmp115
	movq	%rdx, 8(%rax)	# tmp115, x_5(D)->fld[0].rtx
	.loc 1 1458 0
	cmpq	$0, -48(%rbp)	#, insn
	je	.L350	#,
	.loc 1 1458 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# insn, tmp116
	movzbl	3(%rax), %eax	# *insn_13(D), D.13164
	andl	$8, %eax	#, D.13164
	testb	%al, %al	# D.13164
	jne	.L351	#,
.L350:
	.loc 1 1459 0 is_stmt 1
	movq	-16(%rbp), %rax	# label, tmp117
	movl	32(%rax), %eax	# label_14->fld[3].rtint, D.13166
	leal	1(%rax), %edx	#, D.13166
	movq	-16(%rbp), %rax	# label, tmp118
	movl	%edx, 32(%rax)	# D.13166, label_14->fld[3].rtint
.L351:
	.loc 1 1461 0
	cmpq	$0, -48(%rbp)	#, insn
	je	.L352	#,
	.loc 1 1463 0
	movq	-48(%rbp), %rax	# insn, tmp119
	movzwl	(%rax), %eax	# insn_13(D)->code, D.13163
	cmpw	$33, %ax	#, D.13163
	jne	.L353	#,
	.loc 1 1464 0
	movq	-48(%rbp), %rax	# insn, tmp120
	movq	-16(%rbp), %rdx	# label, tmp121
	movq	%rdx, 64(%rax)	# tmp121, insn_13(D)->fld[7].rtx
	jmp	.L352	#
.L353:
	.loc 1 1471 0
	movq	-16(%rbp), %rdx	# label, tmp122
	movq	-48(%rbp), %rax	# insn, tmp123
	movl	$13, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	find_reg_note	#
	testq	%rax, %rax	# D.13165
	jne	.L352	#,
	.loc 1 1472 0
	movq	-48(%rbp), %rax	# insn, tmp124
	movq	56(%rax), %rdx	# insn_13(D)->fld[6].rtx, D.13165
	movq	-16(%rbp), %rax	# label, tmp125
	movq	%rdx, %rcx	# D.13165,
	movq	%rax, %rdx	# tmp125,
	movl	$13, %esi	#,
	movl	$4, %edi	#,
	call	gen_rtx_fmt_ue	#
	movq	-48(%rbp), %rdx	# insn, tmp126
	movq	%rax, 56(%rdx)	# D.13165, insn_13(D)->fld[6].rtx
	.loc 1 1476 0
	jmp	.L335	#
.L352:
	jmp	.L335	#
.L337:
.LBE15:
	.loc 1 1483 0
	movq	-48(%rbp), %rax	# insn, tmp127
	movzbl	3(%rax), %eax	# *insn_13(D), D.13164
	andl	$8, %eax	#, D.13164
	testb	%al, %al	# D.13164
	jne	.L354	#,
.LBB16:
	.loc 1 1485 0
	cmpl	$45, -24(%rbp)	#, code
	sete	%al	#, D.13167
	movzbl	%al, %eax	# D.13167, tmp128
	movl	%eax, -20(%rbp)	# tmp128, eltnum
	.loc 1 1487 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L355	#
.L356:
	.loc 1 1488 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp129
	movl	-20(%rbp), %edx	# eltnum, tmp131
	movslq	%edx, %rdx	# tmp131, tmp130
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[eltnum_31].rtvec, D.13168
	movl	-32(%rbp), %edx	# i, tmp133
	movslq	%edx, %rdx	# tmp133, tmp132
	movq	8(%rax,%rdx,8), %rax	# _35->elem, D.13165
	movl	-52(%rbp), %edx	# in_mem, tmp134
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.13165,
	call	mark_jump_label	#
	.loc 1 1487 0 discriminator 2
	addl	$1, -32(%rbp)	#, i
.L355:
	.loc 1 1487 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp135
	movl	-20(%rbp), %edx	# eltnum, tmp137
	movslq	%edx, %rdx	# tmp137, tmp136
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[eltnum_31].rtvec, D.13168
	movl	(%rax), %eax	# _33->num_elem, D.13166
	cmpl	-32(%rbp), %eax	# i, D.13166
	jg	.L356	#,
.L354:
.LBE16:
	.loc 1 1490 0 is_stmt 1
	jmp	.L335	#
.L363:
	.loc 1 1493 0
	nop
.L344:
	.loc 1 1496 0
	movl	-24(%rbp), %eax	# code, code.28
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp139
	movq	%rax, -8(%rbp)	# tmp139, fmt
	.loc 1 1497 0
	movl	-24(%rbp), %eax	# code, code.29
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13164
	movzbl	%al, %eax	# D.13164, D.13166
	subl	$1, %eax	#, tmp141
	movl	%eax, -32(%rbp)	# tmp141, i
	jmp	.L357	#
.L362:
	.loc 1 1499 0
	movl	-32(%rbp), %eax	# i, tmp142
	movslq	%eax, %rdx	# tmp142, D.13169
	movq	-8(%rbp), %rax	# fmt, tmp143
	addq	%rdx, %rax	# D.13169, D.13170
	movzbl	(%rax), %eax	# *_45, D.13171
	cmpb	$101, %al	#, D.13171
	jne	.L358	#,
	.loc 1 1500 0
	movq	-40(%rbp), %rax	# x, tmp144
	movl	-32(%rbp), %edx	# i, tmp146
	movslq	%edx, %rdx	# tmp146, tmp145
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_3].rtx, D.13165
	movl	-52(%rbp), %edx	# in_mem, tmp147
	movq	-48(%rbp), %rcx	# insn, tmp148
	movq	%rcx, %rsi	# tmp148,
	movq	%rax, %rdi	# D.13165,
	call	mark_jump_label	#
	jmp	.L359	#
.L358:
	.loc 1 1501 0
	movl	-32(%rbp), %eax	# i, tmp149
	movslq	%eax, %rdx	# tmp149, D.13169
	movq	-8(%rbp), %rax	# fmt, tmp150
	addq	%rdx, %rax	# D.13169, D.13170
	movzbl	(%rax), %eax	# *_49, D.13171
	cmpb	$69, %al	#, D.13171
	jne	.L359	#,
.LBB17:
	.loc 1 1504 0
	movl	$0, -28(%rbp)	#, j
	jmp	.L360	#
.L361:
	.loc 1 1505 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp151
	movl	-32(%rbp), %edx	# i, tmp153
	movslq	%edx, %rdx	# tmp153, tmp152
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_3].rtvec, D.13168
	movl	-28(%rbp), %edx	# j, tmp155
	movslq	%edx, %rdx	# tmp155, tmp154
	movq	8(%rax,%rdx,8), %rax	# _54->elem, D.13165
	movl	-52(%rbp), %edx	# in_mem, tmp156
	movq	-48(%rbp), %rcx	# insn, tmp157
	movq	%rcx, %rsi	# tmp157,
	movq	%rax, %rdi	# D.13165,
	call	mark_jump_label	#
	.loc 1 1504 0 discriminator 2
	addl	$1, -28(%rbp)	#, j
.L360:
	.loc 1 1504 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp158
	movl	-32(%rbp), %edx	# i, tmp160
	movslq	%edx, %rdx	# tmp160, tmp159
	movq	8(%rax,%rdx,8), %rax	# x_5(D)->fld[i_3].rtvec, D.13168
	movl	(%rax), %eax	# _52->num_elem, D.13166
	cmpl	-28(%rbp), %eax	# j, D.13166
	jg	.L361	#,
.L359:
.LBE17:
	.loc 1 1497 0 is_stmt 1
	subl	$1, -32(%rbp)	#, i
.L357:
	.loc 1 1497 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, i
	jns	.L362	#,
	jmp	.L335	#
.L364:
	.loc 1 1425 0 is_stmt 1
	nop
.L335:
	.loc 1 1508 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	mark_jump_label, .-mark_jump_label
	.globl	delete_jump
	.type	delete_jump, @function
delete_jump:
.LFB32:
	.loc 1 1517 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1518 0
	movq	-24(%rbp), %rax	# insn, tmp69
	movzwl	(%rax), %eax	# insn_3(D)->code, D.13172
	movzwl	%ax, %eax	# D.13172, D.13173
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13174
	cmpb	$105, %al	#, D.13174
	jne	.L366	#,
	.loc 1 1518 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp71
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.13175
	movzwl	(%rax), %eax	# _7->code, D.13172
	cmpw	$47, %ax	#, D.13172
	jne	.L367	#,
	.loc 1 1518 0 discriminator 3
	movq	-24(%rbp), %rax	# insn, tmp72
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, iftmp.31
	jmp	.L369	#
.L367:
	.loc 1 1518 0 discriminator 4
	movq	-24(%rbp), %rax	# insn, tmp73
	movq	32(%rax), %rdx	# insn_3(D)->fld[3].rtx, D.13175
	movq	-24(%rbp), %rax	# insn, tmp74
	movq	%rdx, %rsi	# D.13175,
	movq	%rax, %rdi	# tmp74,
	call	single_set_2	#
	jmp	.L369	#
.L366:
	.loc 1 1518 0 discriminator 2
	movl	$0, %eax	#, iftmp.30
.L369:
	.loc 1 1518 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.30, set
	.loc 1 1520 0 is_stmt 1 discriminator 5
	cmpq	$0, -8(%rbp)	#, set
	je	.L365	#,
	.loc 1 1520 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# set, tmp75
	movq	8(%rax), %rax	# set_14->fld[0].rtx, D.13175
	movzwl	(%rax), %eax	# _15->code, D.13172
	cmpw	$59, %ax	#, D.13172
	jne	.L365	#,
	.loc 1 1521 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp76
	movq	%rax, %rdi	# tmp76,
	call	delete_computation	#
.L365:
	.loc 1 1522 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	delete_jump, .-delete_jump
	.globl	delete_barrier
	.type	delete_barrier, @function
delete_barrier:
.LFB33:
	.loc 1 1529 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 1530 0
	movq	-8(%rbp), %rax	# insn, tmp60
	movzwl	(%rax), %eax	# insn_1(D)->code, D.13176
	cmpw	$35, %ax	#, D.13176
	je	.L372	#,
	.loc 1 1531 0
	movl	$__FUNCTION__.11139, %edx	#,
	movl	$1531, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L372:
	.loc 1 1533 0
	movq	-8(%rbp), %rax	# insn, tmp61
	movq	%rax, %rdi	# tmp61,
	call	delete_insn	#
	.loc 1 1534 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	delete_barrier, .-delete_barrier
	.type	delete_prior_computation, @function
delete_prior_computation:
.LFB34:
	.loc 1 1544 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# note, note
	movq	%rsi, -96(%rbp)	# insn, insn
	.loc 1 1546 0
	movq	-88(%rbp), %rax	# note, tmp161
	movq	8(%rax), %rax	# note_22(D)->fld[0].rtx, tmp162
	movq	%rax, -40(%rbp)	# tmp162, reg
	.loc 1 1548 0
	movq	-96(%rbp), %rax	# insn, tmp163
	movq	%rax, %rdi	# tmp163,
	call	prev_nonnote_insn	#
	movq	%rax, -48(%rbp)	# tmp164, our_prev
	jmp	.L374	#
.L440:
.LBB18:
	.loc 1 1553 0
	movq	-48(%rbp), %rax	# our_prev, tmp165
	movq	32(%rax), %rax	# our_prev_1->fld[3].rtx, tmp166
	movq	%rax, -32(%rbp)	# tmp166, pat
	.loc 1 1557 0
	movq	-48(%rbp), %rax	# our_prev, tmp167
	movzwl	(%rax), %eax	# our_prev_1->code, D.13177
	cmpw	$34, %ax	#, D.13177
	jne	.L375	#,
	.loc 1 1558 0
	movq	-48(%rbp), %rax	# our_prev, tmp168
	movzbl	3(%rax), %eax	# *our_prev_1, D.13178
	andl	$4, %eax	#, D.13178
	testb	%al, %al	# D.13178
	je	.L373	#,
	.loc 1 1559 0
	movq	-32(%rbp), %rax	# pat, tmp169
	movzwl	(%rax), %eax	# pat_28->code, D.13177
	cmpw	$47, %ax	#, D.13177
	jne	.L373	#,
	.loc 1 1559 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# pat, tmp170
	movq	16(%rax), %rax	# pat_28->fld[1].rtx, D.13179
	movzwl	(%rax), %eax	# _33->code, D.13177
	cmpw	$50, %ax	#, D.13177
	jne	.L373	#,
.L375:
	.loc 1 1564 0 is_stmt 1
	movq	-32(%rbp), %rax	# pat, tmp171
	movzwl	(%rax), %eax	# pat_28->code, D.13177
	cmpw	$24, %ax	#, D.13177
	jne	.L377	#,
	.loc 1 1565 0
	jmp	.L373	#
.L377:
	.loc 1 1567 0
	movq	-32(%rbp), %rax	# pat, tmp172
	movzwl	(%rax), %eax	# pat_28->code, D.13177
	cmpw	$48, %ax	#, D.13177
	jne	.L378	#,
	.loc 1 1568 0
	movq	-32(%rbp), %rax	# pat, tmp173
	movq	8(%rax), %rax	# pat_28->fld[0].rtx, D.13179
	movzwl	(%rax), %eax	# _37->code, D.13177
	cmpw	$32, %ax	#, D.13177
	jne	.L378	#,
	.loc 1 1571 0
	jmp	.L373	#
.L378:
	.loc 1 1573 0
	movq	-32(%rbp), %rdx	# pat, tmp174
	movq	-40(%rbp), %rax	# reg, tmp175
	movq	%rdx, %rsi	# tmp174,
	movq	%rax, %rdi	# tmp175,
	call	reg_set_p	#
	testl	%eax, %eax	# D.13180
	je	.L379	#,
	.loc 1 1575 0
	movq	-32(%rbp), %rax	# pat, tmp176
	movq	%rax, %rdi	# tmp176,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13180
	je	.L380	#,
	.loc 1 1575 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# our_prev, tmp177
	movzwl	(%rax), %eax	# our_prev_1->code, D.13177
	cmpw	$34, %ax	#, D.13177
	je	.L380	#,
	.loc 1 1576 0 is_stmt 1
	jmp	.L373	#
.L380:
	.loc 1 1578 0
	movq	-32(%rbp), %rax	# pat, tmp178
	movzwl	(%rax), %eax	# pat_28->code, D.13177
	cmpw	$39, %ax	#, D.13177
	jne	.L381	#,
.LBB19:
	.loc 1 1585 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L382	#
.L385:
.LBB20:
	.loc 1 1587 0
	movq	-32(%rbp), %rax	# pat, tmp179
	movq	8(%rax), %rax	# pat_28->fld[0].rtvec, D.13181
	movl	-72(%rbp), %edx	# i, tmp181
	movslq	%edx, %rdx	# tmp181, tmp180
	movq	8(%rax,%rdx,8), %rax	# _46->elem, tmp182
	movq	%rax, -24(%rbp)	# tmp182, part
	.loc 1 1589 0
	movq	-24(%rbp), %rax	# part, tmp183
	movzwl	(%rax), %eax	# part_47->code, D.13177
	cmpw	$47, %ax	#, D.13177
	jne	.L383	#,
	.loc 1 1590 0
	movq	-24(%rbp), %rax	# part, tmp184
	movq	8(%rax), %rax	# part_47->fld[0].rtx, D.13179
	cmpq	-40(%rbp), %rax	# reg, D.13179
	je	.L383	#,
	.loc 1 1591 0
	jmp	.L384	#
.L383:
.LBE20:
	.loc 1 1585 0
	addl	$1, -72(%rbp)	#, i
.L382:
	.loc 1 1585 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# pat, tmp185
	movq	8(%rax), %rax	# pat_28->fld[0].rtvec, D.13181
	movl	(%rax), %eax	# _44->num_elem, D.13180
	cmpl	-72(%rbp), %eax	# i, D.13180
	jg	.L385	#,
.L384:
	.loc 1 1594 0 is_stmt 1
	movq	-32(%rbp), %rax	# pat, tmp186
	movq	8(%rax), %rax	# pat_28->fld[0].rtvec, D.13181
	movl	(%rax), %eax	# _51->num_elem, D.13180
	cmpl	-72(%rbp), %eax	# i, D.13180
	jne	.L386	#,
	.loc 1 1595 0
	movq	-48(%rbp), %rax	# our_prev, tmp187
	movq	%rax, %rdi	# tmp187,
	call	delete_computation	#
.LBE19:
	jmp	.L387	#
.L386:
	jmp	.L387	#
.L381:
	.loc 1 1597 0
	movq	-32(%rbp), %rax	# pat, tmp188
	movzwl	(%rax), %eax	# pat_28->code, D.13177
	cmpw	$47, %ax	#, D.13177
	jne	.L387	#,
	.loc 1 1598 0
	movq	-32(%rbp), %rax	# pat, tmp189
	movq	8(%rax), %rax	# pat_28->fld[0].rtx, D.13179
	movzwl	(%rax), %eax	# _54->code, D.13177
	cmpw	$61, %ax	#, D.13177
	jne	.L387	#,
.LBB21:
	.loc 1 1600 0
	movq	-32(%rbp), %rax	# pat, tmp190
	movq	8(%rax), %rax	# pat_28->fld[0].rtx, D.13179
	movl	8(%rax), %eax	# _56->fld[0].rtuint, D.13182
	movl	%eax, -64(%rbp)	# D.13182, dest_regno
	.loc 1 1605 0
	cmpl	$52, -64(%rbp)	#, dest_regno
	jg	.L388	#,
	.loc 1 1604 0
	cmpl	$7, -64(%rbp)	#, dest_regno
	jle	.L389	#,
	.loc 1 1604 0 is_stmt 0 discriminator 1
	cmpl	$15, -64(%rbp)	#, dest_regno
	jle	.L390	#,
.L389:
	.loc 1 1604 0 discriminator 2
	cmpl	$20, -64(%rbp)	#, dest_regno
	jle	.L391	#,
	.loc 1 1604 0 discriminator 1
	cmpl	$28, -64(%rbp)	#, dest_regno
	jle	.L390	#,
.L391:
	.loc 1 1604 0 discriminator 2
	cmpl	$44, -64(%rbp)	#, dest_regno
	jle	.L392	#,
	.loc 1 1604 0 discriminator 1
	cmpl	$52, -64(%rbp)	#, dest_regno
	jle	.L390	#,
.L392:
	.loc 1 1604 0 discriminator 2
	cmpl	$28, -64(%rbp)	#, dest_regno
	jle	.L393	#,
	.loc 1 1604 0 discriminator 1
	cmpl	$36, -64(%rbp)	#, dest_regno
	jg	.L393	#,
.L390:
	movq	-32(%rbp), %rax	# pat, tmp191
	movq	8(%rax), %rax	# pat_28->fld[0].rtx, D.13179
	movzbl	2(%rax), %eax	# _91->mode, D.13178
	movzbl	%al, %eax	# D.13178, D.13180
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13183
	cmpl	$5, %eax	#, D.13183
	je	.L394	#,
	.loc 1 1604 0 discriminator 2
	movq	-32(%rbp), %rax	# pat, tmp193
	movq	8(%rax), %rax	# pat_28->fld[0].rtx, D.13179
	movzbl	2(%rax), %eax	# _95->mode, D.13178
	movzbl	%al, %eax	# D.13178, D.13180
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13183
	cmpl	$6, %eax	#, D.13183
	jne	.L395	#,
.L394:
	.loc 1 1604 0 discriminator 1
	movl	$2, %eax	#, iftmp.34
	jmp	.L396	#
.L395:
	movl	$1, %eax	#, iftmp.34
.L396:
	.loc 1 1604 0 discriminator 3
	jmp	.L397	#
.L393:
	.loc 1 1604 0 discriminator 2
	movq	-32(%rbp), %rax	# pat, tmp195
	movq	8(%rax), %rax	# pat_28->fld[0].rtx, D.13179
	movzbl	2(%rax), %eax	# _59->mode, D.13178
	cmpb	$18, %al	#, D.13178
	jne	.L398	#,
	.loc 1 1604 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.37
	andl	$33554432, %eax	#, D.13180
	testl	%eax, %eax	# D.13180
	je	.L399	#,
	movl	$2, %eax	#, iftmp.36
	jmp	.L410	#
.L399:
	.loc 1 1604 0 discriminator 2
	movl	$3, %eax	#, iftmp.36
	jmp	.L410	#
.L398:
	movq	-32(%rbp), %rax	# pat, tmp196
	movq	8(%rax), %rax	# pat_28->fld[0].rtx, D.13179
	movzbl	2(%rax), %eax	# _66->mode, D.13178
	cmpb	$24, %al	#, D.13178
	jne	.L402	#,
	.loc 1 1604 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.40
	andl	$33554432, %eax	#, D.13180
	testl	%eax, %eax	# D.13180
	je	.L403	#,
	movl	$4, %eax	#, iftmp.39
	jmp	.L410	#
.L403:
	.loc 1 1604 0 discriminator 2
	movl	$6, %eax	#, iftmp.39
	jmp	.L410	#
.L402:
	movq	-32(%rbp), %rax	# pat, tmp197
	movq	8(%rax), %rax	# pat_28->fld[0].rtx, D.13179
	movzbl	2(%rax), %eax	# _73->mode, D.13178
	movzbl	%al, %eax	# D.13178, D.13180
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13178
	movzbl	%al, %edx	# D.13178, D.13180
	movl	target_flags(%rip), %eax	# target_flags, target_flags.42
	andl	$33554432, %eax	#, D.13180
	testl	%eax, %eax	# D.13180
	je	.L406	#,
	.loc 1 1604 0 discriminator 1
	movl	$8, %eax	#, iftmp.41
	jmp	.L407	#
.L406:
	.loc 1 1604 0 discriminator 2
	movl	$4, %eax	#, iftmp.41
.L407:
	.loc 1 1604 0 discriminator 3
	addl	%edx, %eax	# D.13180, D.13180
	subl	$1, %eax	#, D.13180
	movl	target_flags(%rip), %edx	# target_flags, target_flags.44
	andl	$33554432, %edx	#, D.13180
	testl	%edx, %edx	# D.13180
	je	.L408	#,
	.loc 1 1604 0 discriminator 1
	movl	$8, %ebx	#, iftmp.43
	jmp	.L409	#
.L408:
	.loc 1 1604 0 discriminator 2
	movl	$4, %ebx	#, iftmp.43
.L409:
	.loc 1 1604 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.43
.L397:
	jmp	.L410	#
.L388:
	.loc 1 1605 0 is_stmt 1 discriminator 1
	movl	$1, %eax	#, iftmp.32
.L410:
	.loc 1 1601 0
	movl	-64(%rbp), %edx	# dest_regno, tmp204
	addl	%edx, %eax	# tmp204, tmp203
	movl	%eax, -60(%rbp)	# tmp203, dest_endregno
	.loc 1 1606 0
	movq	-40(%rbp), %rax	# reg, tmp205
	movl	8(%rax), %eax	# reg_23->fld[0].rtuint, D.13182
	movl	%eax, -56(%rbp)	# D.13182, regno
	.loc 1 1610 0
	cmpl	$52, -56(%rbp)	#, regno
	jg	.L411	#,
	.loc 1 1610 0 is_stmt 0 discriminator 1
	cmpl	$7, -56(%rbp)	#, regno
	jle	.L412	#,
	cmpl	$15, -56(%rbp)	#, regno
	jle	.L413	#,
.L412:
	.loc 1 1610 0 discriminator 2
	cmpl	$20, -56(%rbp)	#, regno
	jle	.L414	#,
	.loc 1 1610 0 discriminator 1
	cmpl	$28, -56(%rbp)	#, regno
	jle	.L413	#,
.L414:
	.loc 1 1610 0 discriminator 2
	cmpl	$44, -56(%rbp)	#, regno
	jle	.L415	#,
	.loc 1 1610 0 discriminator 1
	cmpl	$52, -56(%rbp)	#, regno
	jle	.L413	#,
.L415:
	.loc 1 1610 0 discriminator 2
	cmpl	$28, -56(%rbp)	#, regno
	jle	.L416	#,
	.loc 1 1610 0 discriminator 1
	cmpl	$36, -56(%rbp)	#, regno
	jg	.L416	#,
.L413:
	movq	-40(%rbp), %rax	# reg, tmp206
	movzbl	2(%rax), %eax	# reg_23->mode, D.13178
	movzbl	%al, %eax	# D.13178, D.13180
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13183
	cmpl	$5, %eax	#, D.13183
	je	.L417	#,
	.loc 1 1610 0 discriminator 2
	movq	-40(%rbp), %rax	# reg, tmp208
	movzbl	2(%rax), %eax	# reg_23->mode, D.13178
	movzbl	%al, %eax	# D.13178, D.13180
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13183
	cmpl	$6, %eax	#, D.13183
	jne	.L418	#,
.L417:
	.loc 1 1610 0 discriminator 1
	movl	$2, %eax	#, iftmp.47
	jmp	.L419	#
.L418:
	movl	$1, %eax	#, iftmp.47
.L419:
	.loc 1 1610 0 discriminator 3
	jmp	.L420	#
.L416:
	.loc 1 1610 0 discriminator 2
	movq	-40(%rbp), %rax	# reg, tmp210
	movzbl	2(%rax), %eax	# reg_23->mode, D.13178
	cmpb	$18, %al	#, D.13178
	jne	.L421	#,
	.loc 1 1610 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.50
	andl	$33554432, %eax	#, D.13180
	testl	%eax, %eax	# D.13180
	je	.L422	#,
	movl	$2, %eax	#, iftmp.49
	jmp	.L433	#
.L422:
	.loc 1 1610 0 discriminator 2
	movl	$3, %eax	#, iftmp.49
	jmp	.L433	#
.L421:
	movq	-40(%rbp), %rax	# reg, tmp211
	movzbl	2(%rax), %eax	# reg_23->mode, D.13178
	cmpb	$24, %al	#, D.13178
	jne	.L425	#,
	.loc 1 1610 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.53
	andl	$33554432, %eax	#, D.13180
	testl	%eax, %eax	# D.13180
	je	.L426	#,
	movl	$4, %eax	#, iftmp.52
	jmp	.L433	#
.L426:
	.loc 1 1610 0 discriminator 2
	movl	$6, %eax	#, iftmp.52
	jmp	.L433	#
.L425:
	movq	-40(%rbp), %rax	# reg, tmp212
	movzbl	2(%rax), %eax	# reg_23->mode, D.13178
	movzbl	%al, %eax	# D.13178, D.13180
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13178
	movzbl	%al, %edx	# D.13178, D.13180
	movl	target_flags(%rip), %eax	# target_flags, target_flags.55
	andl	$33554432, %eax	#, D.13180
	testl	%eax, %eax	# D.13180
	je	.L429	#,
	.loc 1 1610 0 discriminator 1
	movl	$8, %eax	#, iftmp.54
	jmp	.L430	#
.L429:
	.loc 1 1610 0 discriminator 2
	movl	$4, %eax	#, iftmp.54
.L430:
	.loc 1 1610 0 discriminator 3
	addl	%edx, %eax	# D.13180, D.13180
	subl	$1, %eax	#, D.13180
	movl	target_flags(%rip), %edx	# target_flags, target_flags.57
	andl	$33554432, %edx	#, D.13180
	testl	%edx, %edx	# D.13180
	je	.L431	#,
	.loc 1 1610 0 discriminator 1
	movl	$8, %ecx	#, iftmp.56
	jmp	.L432	#
.L431:
	.loc 1 1610 0 discriminator 2
	movl	$4, %ecx	#, iftmp.56
.L432:
	.loc 1 1610 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.56
.L420:
	jmp	.L433	#
.L411:
	.loc 1 1610 0 discriminator 2
	movl	$1, %eax	#, iftmp.45
.L433:
	.loc 1 1607 0 is_stmt 1
	movl	-56(%rbp), %edx	# regno, tmp219
	addl	%edx, %eax	# tmp219, tmp218
	movl	%eax, -52(%rbp)	# tmp218, endregno
	.loc 1 1612 0
	movl	-64(%rbp), %eax	# dest_regno, tmp220
	cmpl	-56(%rbp), %eax	# regno, tmp220
	jl	.L434	#,
	.loc 1 1613 0
	movl	-60(%rbp), %eax	# dest_endregno, tmp221
	cmpl	-52(%rbp), %eax	# endregno, tmp221
	jg	.L434	#,
	.loc 1 1614 0
	movq	-48(%rbp), %rax	# our_prev, tmp222
	movq	%rax, %rdi	# tmp222,
	call	delete_computation	#
	jmp	.L387	#
.L434:
	.loc 1 1620 0
	movl	-64(%rbp), %eax	# dest_regno, tmp223
	cmpl	-56(%rbp), %eax	# regno, tmp223
	jg	.L387	#,
	.loc 1 1621 0
	movl	-60(%rbp), %eax	# dest_endregno, tmp224
	cmpl	-52(%rbp), %eax	# endregno, tmp224
	jl	.L387	#,
.LBB22:
	.loc 1 1626 0
	movq	-48(%rbp), %rax	# our_prev, tmp225
	movq	56(%rax), %rdx	# our_prev_1->fld[6].rtx, D.13179
	movq	-40(%rbp), %rax	# reg, tmp226
	movq	%rdx, %rcx	# D.13179,
	movq	%rax, %rdx	# tmp226,
	movl	$10, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-48(%rbp), %rdx	# our_prev, tmp227
	movq	%rax, 56(%rdx)	# D.13179, our_prev_1->fld[6].rtx
	.loc 1 1629 0
	movl	-64(%rbp), %eax	# dest_regno, tmp228
	movl	%eax, -68(%rbp)	# tmp228, i
	jmp	.L435	#
.L438:
	.loc 1 1630 0
	movl	-68(%rbp), %edx	# i, i.58
	movq	-48(%rbp), %rax	# our_prev, tmp229
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp229,
	call	find_regno_note	#
	testq	%rax, %rax	# D.13179
	jne	.L436	#,
	.loc 1 1631 0
	jmp	.L437	#
.L436:
	.loc 1 1629 0
	addl	$1, -68(%rbp)	#, i
.L435:
	.loc 1 1629 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp230
	cmpl	-60(%rbp), %eax	# dest_endregno, tmp230
	jl	.L438	#,
.L437:
	.loc 1 1633 0 is_stmt 1
	movl	-68(%rbp), %eax	# i, tmp231
	cmpl	-60(%rbp), %eax	# dest_endregno, tmp231
	jne	.L387	#,
	.loc 1 1634 0
	movq	-48(%rbp), %rax	# our_prev, tmp232
	movq	%rax, %rdi	# tmp232,
	call	delete_computation	#
.LBE22:
.LBE21:
	.loc 1 1638 0
	jmp	.L373	#
.L387:
	jmp	.L373	#
.L379:
	.loc 1 1644 0
	movq	-32(%rbp), %rdx	# pat, tmp233
	movq	-40(%rbp), %rax	# reg, tmp234
	movq	%rdx, %rsi	# tmp233,
	movq	%rax, %rdi	# tmp234,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.13180
	je	.L439	#,
	.loc 1 1646 0
	movq	-48(%rbp), %rax	# our_prev, tmp235
	movq	56(%rax), %rdx	# our_prev_1->fld[6].rtx, D.13179
	movq	-88(%rbp), %rax	# note, tmp236
	movq	%rdx, 16(%rax)	# D.13179, note_22(D)->fld[1].rtx
	.loc 1 1647 0
	movq	-48(%rbp), %rax	# our_prev, tmp237
	movq	-88(%rbp), %rdx	# note, tmp238
	movq	%rdx, 56(%rax)	# tmp238, our_prev_1->fld[6].rtx
	.loc 1 1648 0
	jmp	.L373	#
.L439:
.LBE18:
	.loc 1 1551 0
	movq	-48(%rbp), %rax	# our_prev, tmp239
	movq	%rax, %rdi	# tmp239,
	call	prev_nonnote_insn	#
	movq	%rax, -48(%rbp)	# tmp240, our_prev
.L374:
	.loc 1 1548 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, our_prev
	je	.L373	#,
	.loc 1 1549 0
	movq	-48(%rbp), %rax	# our_prev, tmp241
	movzwl	(%rax), %eax	# our_prev_1->code, D.13177
	cmpw	$32, %ax	#, D.13177
	je	.L440	#,
	.loc 1 1550 0
	movq	-48(%rbp), %rax	# our_prev, tmp242
	movzwl	(%rax), %eax	# our_prev_1->code, D.13177
	cmpw	$34, %ax	#, D.13177
	je	.L440	#,
.L373:
	.loc 1 1651 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	delete_prior_computation, .-delete_prior_computation
	.type	delete_computation, @function
delete_computation:
.LFB35:
	.loc 1 1669 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1696 0
	movq	-24(%rbp), %rax	# insn, tmp62
	movq	56(%rax), %rax	# insn_2(D)->fld[6].rtx, tmp63
	movq	%rax, -16(%rbp)	# tmp63, note
	jmp	.L442	#
.L446:
	.loc 1 1698 0
	movq	-16(%rbp), %rax	# note, tmp64
	movq	16(%rax), %rax	# note_1->fld[1].rtx, tmp65
	movq	%rax, -8(%rbp)	# tmp65, next
	.loc 1 1700 0
	movq	-16(%rbp), %rax	# note, tmp66
	movzbl	2(%rax), %eax	# note_1->mode, D.13184
	cmpb	$1, %al	#, D.13184
	jne	.L443	#,
	.loc 1 1702 0
	movq	-16(%rbp), %rax	# note, tmp67
	movq	8(%rax), %rax	# note_1->fld[0].rtx, D.13185
	movzwl	(%rax), %eax	# _6->code, D.13186
	cmpw	$61, %ax	#, D.13186
	je	.L444	#,
.L443:
	.loc 1 1703 0
	jmp	.L445	#
.L444:
	.loc 1 1705 0
	movq	-24(%rbp), %rdx	# insn, tmp68
	movq	-16(%rbp), %rax	# note, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	delete_prior_computation	#
.L445:
	.loc 1 1696 0
	movq	-8(%rbp), %rax	# next, tmp70
	movq	%rax, -16(%rbp)	# tmp70, note
.L442:
	.loc 1 1696 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, note
	jne	.L446	#,
	.loc 1 1708 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp71
	movq	%rax, %rdi	# tmp71,
	call	delete_related_insns	#
	.loc 1 1709 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	delete_computation, .-delete_computation
	.globl	delete_related_insns
	.type	delete_related_insns, @function
delete_related_insns:
.LFB36:
	.loc 1 1722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# insn, insn
	.loc 1 1723 0
	movq	-88(%rbp), %rax	# insn, tmp125
	movzwl	(%rax), %eax	# insn_11(D)->code, D.13188
	cmpw	$36, %ax	#, D.13188
	sete	%al	#, D.13189
	movzbl	%al, %eax	# D.13189, tmp126
	movl	%eax, -64(%rbp)	# tmp126, was_code_label
	.loc 1 1725 0
	movq	-88(%rbp), %rax	# insn, tmp127
	movq	24(%rax), %rax	# insn_11(D)->fld[2].rtx, tmp128
	movq	%rax, -40(%rbp)	# tmp128, next
	movq	-88(%rbp), %rax	# insn, tmp129
	movq	16(%rax), %rax	# insn_11(D)->fld[1].rtx, tmp130
	movq	%rax, -32(%rbp)	# tmp130, prev
	.loc 1 1727 0
	jmp	.L448	#
.L450:
	.loc 1 1728 0
	movq	-40(%rbp), %rax	# next, tmp131
	movq	24(%rax), %rax	# next_2->fld[2].rtx, tmp132
	movq	%rax, -40(%rbp)	# tmp132, next
.L448:
	.loc 1 1727 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, next
	je	.L449	#,
	.loc 1 1727 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# next, tmp133
	movzbl	3(%rax), %eax	# *next_2, D.13190
	andl	$8, %eax	#, D.13190
	testb	%al, %al	# D.13190
	jne	.L450	#,
.L449:
	.loc 1 1731 0 is_stmt 1
	movq	-88(%rbp), %rax	# insn, tmp134
	movzbl	3(%rax), %eax	# *insn_11(D), D.13190
	andl	$8, %eax	#, D.13190
	testb	%al, %al	# D.13190
	je	.L451	#,
	.loc 1 1732 0
	movq	-40(%rbp), %rax	# next, D.13187
	jmp	.L452	#
.L451:
	.loc 1 1734 0
	movq	-88(%rbp), %rax	# insn, tmp135
	movq	%rax, %rdi	# tmp135,
	call	delete_insn	#
	.loc 1 1739 0
	cmpq	$0, -40(%rbp)	#, next
	je	.L453	#,
	.loc 1 1739 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# next, tmp136
	movzwl	(%rax), %eax	# next_2->code, D.13188
	cmpw	$35, %ax	#, D.13188
	jne	.L453	#,
	.loc 1 1740 0 is_stmt 1
	movq	-40(%rbp), %rax	# next, tmp137
	movq	%rax, %rdi	# tmp137,
	call	delete_insn	#
.L453:
	.loc 1 1745 0
	movq	-88(%rbp), %rax	# insn, tmp138
	movzwl	(%rax), %eax	# insn_11(D)->code, D.13188
	cmpw	$33, %ax	#, D.13188
	jne	.L454	#,
	.loc 1 1745 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp139
	movq	64(%rax), %rax	# insn_11(D)->fld[7].rtx, D.13191
	testq	%rax, %rax	# D.13191
	je	.L454	#,
.LBB23:
	.loc 1 1747 0 is_stmt 1
	movq	-88(%rbp), %rax	# insn, tmp140
	movq	64(%rax), %rax	# insn_11(D)->fld[7].rtx, tmp141
	movq	%rax, -24(%rbp)	# tmp141, lab
	.loc 1 1749 0
	movq	-24(%rbp), %rax	# lab, tmp142
	movl	32(%rax), %eax	# lab_26->fld[3].rtint, D.13192
	testl	%eax, %eax	# D.13192
	jne	.L455	#,
	.loc 1 1754 0
	movq	-24(%rbp), %rax	# lab, tmp143
	movq	%rax, %rdi	# tmp143,
	call	delete_related_insns	#
	.loc 1 1760 0
	jmp	.L456	#
.L458:
	.loc 1 1761 0
	movq	-40(%rbp), %rax	# next, tmp144
	movq	24(%rax), %rax	# next_3->fld[2].rtx, tmp145
	movq	%rax, -40(%rbp)	# tmp145, next
.L456:
	.loc 1 1760 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, next
	je	.L457	#,
	.loc 1 1760 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# next, tmp146
	movzbl	3(%rax), %eax	# *next_3, D.13190
	andl	$8, %eax	#, D.13190
	testb	%al, %al	# D.13190
	jne	.L458	#,
.L457:
	.loc 1 1762 0 is_stmt 1
	movq	-40(%rbp), %rax	# next, D.13187
	jmp	.L452	#
.L455:
	.loc 1 1764 0
	movq	-24(%rbp), %rax	# lab, tmp147
	movq	%rax, %rdi	# tmp147,
	call	next_nonnote_insn	#
	movq	%rax, -16(%rbp)	# tmp148, lab_next
	cmpq	$0, -16(%rbp)	#, lab_next
	je	.L454	#,
	.loc 1 1765 0
	movq	-16(%rbp), %rax	# lab_next, tmp149
	movzwl	(%rax), %eax	# lab_next_32->code, D.13188
	cmpw	$33, %ax	#, D.13188
	jne	.L454	#,
	.loc 1 1766 0
	movq	-16(%rbp), %rax	# lab_next, tmp150
	movq	32(%rax), %rax	# lab_next_32->fld[3].rtx, D.13191
	movzwl	(%rax), %eax	# _34->code, D.13188
	cmpw	$44, %ax	#, D.13188
	je	.L459	#,
	.loc 1 1767 0
	movq	-16(%rbp), %rax	# lab_next, tmp151
	movq	32(%rax), %rax	# lab_next_32->fld[3].rtx, D.13191
	movzwl	(%rax), %eax	# _36->code, D.13188
	cmpw	$45, %ax	#, D.13188
	jne	.L454	#,
.L459:
	.loc 1 1773 0
	movq	-16(%rbp), %rax	# lab_next, tmp152
	movq	%rax, %rdi	# tmp152,
	call	delete_related_insns	#
.L454:
.LBE23:
	.loc 1 1779 0
	movq	-88(%rbp), %rax	# insn, tmp153
	movzwl	(%rax), %eax	# insn_11(D)->code, D.13188
	cmpw	$33, %ax	#, D.13188
	jne	.L460	#,
	.loc 1 1780 0
	movq	-88(%rbp), %rax	# insn, tmp154
	movq	32(%rax), %rax	# insn_11(D)->fld[3].rtx, D.13191
	movzwl	(%rax), %eax	# _39->code, D.13188
	cmpw	$44, %ax	#, D.13188
	je	.L461	#,
	.loc 1 1781 0
	movq	-88(%rbp), %rax	# insn, tmp155
	movq	32(%rax), %rax	# insn_11(D)->fld[3].rtx, D.13191
	movzwl	(%rax), %eax	# _41->code, D.13188
	cmpw	$45, %ax	#, D.13188
	jne	.L460	#,
.L461:
.LBB24:
	.loc 1 1783 0
	movq	-88(%rbp), %rax	# insn, tmp156
	movq	32(%rax), %rax	# insn_11(D)->fld[3].rtx, tmp157
	movq	%rax, -8(%rbp)	# tmp157, pat
	.loc 1 1784 0
	movq	-8(%rbp), %rax	# pat, tmp158
	movzwl	(%rax), %eax	# pat_43->code, D.13188
	cmpw	$45, %ax	#, D.13188
	sete	%al	#, D.13189
	movzbl	%al, %eax	# D.13189, tmp159
	movl	%eax, -60(%rbp)	# tmp159, diff_vec_p
	.loc 1 1785 0
	movq	-8(%rbp), %rax	# pat, tmp160
	movl	-60(%rbp), %edx	# diff_vec_p, tmp162
	movslq	%edx, %rdx	# tmp162, tmp161
	movq	8(%rax,%rdx,8), %rax	# pat_43->fld[diff_vec_p_46].rtvec, D.13193
	movl	(%rax), %eax	# _47->num_elem, tmp163
	movl	%eax, -56(%rbp)	# tmp163, len
	.loc 1 1787 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L462	#
.L464:
	.loc 1 1788 0
	movq	-8(%rbp), %rax	# pat, tmp164
	movl	-60(%rbp), %edx	# diff_vec_p, tmp166
	movslq	%edx, %rdx	# tmp166, tmp165
	movq	8(%rax,%rdx,8), %rax	# pat_43->fld[diff_vec_p_46].rtvec, D.13193
	movl	-68(%rbp), %edx	# i, tmp168
	movslq	%edx, %rdx	# tmp168, tmp167
	movq	8(%rax,%rdx,8), %rax	# _50->elem, D.13191
	movq	8(%rax), %rax	# _51->fld[0].rtx, D.13191
	movl	32(%rax), %eax	# _52->fld[3].rtint, D.13192
	testl	%eax, %eax	# D.13192
	jne	.L463	#,
	.loc 1 1789 0
	movq	-8(%rbp), %rax	# pat, tmp169
	movl	-60(%rbp), %edx	# diff_vec_p, tmp171
	movslq	%edx, %rdx	# tmp171, tmp170
	movq	8(%rax,%rdx,8), %rax	# pat_43->fld[diff_vec_p_46].rtvec, D.13193
	movl	-68(%rbp), %edx	# i, tmp173
	movslq	%edx, %rdx	# tmp173, tmp172
	movq	8(%rax,%rdx,8), %rax	# _54->elem, D.13191
	movq	8(%rax), %rax	# _55->fld[0].rtx, D.13191
	movq	%rax, %rdi	# D.13191,
	call	delete_related_insns	#
.L463:
	.loc 1 1787 0
	addl	$1, -68(%rbp)	#, i
.L462:
	.loc 1 1787 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp174
	cmpl	-56(%rbp), %eax	# len, tmp174
	jl	.L464	#,
	.loc 1 1790 0 is_stmt 1
	jmp	.L465	#
.L467:
	.loc 1 1791 0
	movq	-40(%rbp), %rax	# next, tmp175
	movq	24(%rax), %rax	# next_4->fld[2].rtx, tmp176
	movq	%rax, -40(%rbp)	# tmp176, next
.L465:
	.loc 1 1790 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, next
	je	.L466	#,
	.loc 1 1790 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# next, tmp177
	movzbl	3(%rax), %eax	# *next_4, D.13190
	andl	$8, %eax	#, D.13190
	testb	%al, %al	# D.13190
	jne	.L467	#,
.L466:
	.loc 1 1792 0 is_stmt 1
	movq	-40(%rbp), %rax	# next, D.13187
	jmp	.L452	#
.L460:
.LBE24:
	.loc 1 1796 0
	movq	-88(%rbp), %rax	# insn, tmp178
	movzwl	(%rax), %eax	# insn_11(D)->code, D.13188
	cmpw	$32, %ax	#, D.13188
	je	.L468	#,
	.loc 1 1796 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp179
	movzwl	(%rax), %eax	# insn_11(D)->code, D.13188
	cmpw	$34, %ax	#, D.13188
	jne	.L469	#,
.L468:
	.loc 1 1797 0 is_stmt 1
	movq	-88(%rbp), %rax	# insn, tmp180
	movq	56(%rax), %rax	# insn_11(D)->fld[6].rtx, tmp181
	movq	%rax, -48(%rbp)	# tmp181, note
	jmp	.L470	#
.L472:
	.loc 1 1798 0
	movq	-48(%rbp), %rax	# note, tmp182
	movzbl	2(%rax), %eax	# note_1->mode, D.13190
	cmpb	$13, %al	#, D.13190
	jne	.L471	#,
	.loc 1 1800 0
	movq	-48(%rbp), %rax	# note, tmp183
	movq	8(%rax), %rax	# note_1->fld[0].rtx, D.13191
	movzwl	(%rax), %eax	# _66->code, D.13188
	cmpw	$36, %ax	#, D.13188
	jne	.L471	#,
	.loc 1 1801 0
	movq	-48(%rbp), %rax	# note, tmp184
	movq	8(%rax), %rax	# note_1->fld[0].rtx, D.13191
	movl	32(%rax), %eax	# _68->fld[3].rtint, D.13192
	testl	%eax, %eax	# D.13192
	jne	.L471	#,
	.loc 1 1802 0
	movq	-48(%rbp), %rax	# note, tmp185
	movq	8(%rax), %rax	# note_1->fld[0].rtx, D.13191
	movq	%rax, %rdi	# D.13191,
	call	delete_related_insns	#
.L471:
	.loc 1 1797 0
	movq	-48(%rbp), %rax	# note, tmp186
	movq	16(%rax), %rax	# note_1->fld[1].rtx, tmp187
	movq	%rax, -48(%rbp)	# tmp187, note
.L470:
	.loc 1 1797 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, note
	jne	.L472	#,
.L469:
	.loc 1 1804 0 is_stmt 1
	jmp	.L473	#
.L475:
	.loc 1 1805 0
	movq	-32(%rbp), %rax	# prev, tmp188
	movq	16(%rax), %rax	# prev_8->fld[1].rtx, tmp189
	movq	%rax, -32(%rbp)	# tmp189, prev
.L473:
	.loc 1 1804 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, prev
	je	.L474	#,
	.loc 1 1804 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# prev, tmp190
	movzbl	3(%rax), %eax	# *prev_8, D.13190
	andl	$8, %eax	#, D.13190
	testb	%al, %al	# D.13190
	jne	.L475	#,
	.loc 1 1804 0 discriminator 1
	movq	-32(%rbp), %rax	# prev, tmp191
	movzwl	(%rax), %eax	# prev_8->code, D.13188
	cmpw	$37, %ax	#, D.13188
	je	.L475	#,
.L474:
	.loc 1 1811 0 is_stmt 1
	cmpl	$0, -64(%rbp)	#, was_code_label
	je	.L476	#,
	.loc 1 1812 0
	movq	-88(%rbp), %rax	# insn, tmp192
	movq	24(%rax), %rax	# insn_11(D)->fld[2].rtx, D.13191
	testq	%rax, %rax	# D.13191
	je	.L476	#,
	.loc 1 1813 0
	movq	-88(%rbp), %rax	# insn, tmp193
	movq	24(%rax), %rax	# insn_11(D)->fld[2].rtx, D.13191
	movzwl	(%rax), %eax	# _77->code, D.13188
	cmpw	$33, %ax	#, D.13188
	jne	.L476	#,
	.loc 1 1814 0
	movq	-88(%rbp), %rax	# insn, tmp194
	movq	24(%rax), %rax	# insn_11(D)->fld[2].rtx, D.13191
	movq	32(%rax), %rax	# _79->fld[3].rtx, D.13191
	movzwl	(%rax), %eax	# _80->code, D.13188
	cmpw	$44, %ax	#, D.13188
	je	.L477	#,
	.loc 1 1815 0
	movq	-88(%rbp), %rax	# insn, tmp195
	movq	24(%rax), %rax	# insn_11(D)->fld[2].rtx, D.13191
	movq	32(%rax), %rax	# _82->fld[3].rtx, D.13191
	movzwl	(%rax), %eax	# _83->code, D.13188
	cmpw	$45, %ax	#, D.13188
	jne	.L476	#,
.L477:
	.loc 1 1816 0
	movq	-88(%rbp), %rax	# insn, tmp196
	movq	24(%rax), %rax	# insn_11(D)->fld[2].rtx, D.13191
	movq	%rax, %rdi	# D.13191,
	call	delete_related_insns	#
	movq	%rax, -40(%rbp)	# tmp197, next
.L476:
	.loc 1 1820 0
	cmpl	$0, -64(%rbp)	#, was_code_label
	je	.L478	#,
	.loc 1 1820 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, prev
	je	.L478	#,
	movq	-32(%rbp), %rax	# prev, tmp198
	movzwl	(%rax), %eax	# prev_8->code, D.13188
	cmpw	$35, %ax	#, D.13188
	jne	.L478	#,
.LBB25:
	.loc 1 1823 0 is_stmt 1
	jmp	.L479	#
.L482:
	.loc 1 1828 0
	cmpl	$37, -52(%rbp)	#, code
	jne	.L480	#,
	.loc 1 1829 0
	movq	-40(%rbp), %rax	# next, tmp199
	movl	40(%rax), %eax	# next_6->fld[4].rtint, D.13192
	cmpl	$-91, %eax	#, D.13192
	je	.L480	#,
	.loc 1 1830 0
	movq	-40(%rbp), %rax	# next, tmp200
	movq	24(%rax), %rax	# next_6->fld[2].rtx, tmp201
	movq	%rax, -40(%rbp)	# tmp201, next
	jmp	.L479	#
.L480:
	.loc 1 1832 0
	cmpl	$36, -52(%rbp)	#, code
	jne	.L481	#,
	.loc 1 1832 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# next, tmp202
	movzbl	3(%rax), %eax	# *next_6, D.13190
	andl	$8, %eax	#, D.13190
	testb	%al, %al	# D.13190
	je	.L481	#,
	.loc 1 1833 0 is_stmt 1
	movq	-40(%rbp), %rax	# next, tmp203
	movq	24(%rax), %rax	# next_6->fld[2].rtx, tmp204
	movq	%rax, -40(%rbp)	# tmp204, next
	jmp	.L479	#
.L481:
	.loc 1 1839 0
	movq	-40(%rbp), %rax	# next, tmp205
	movq	%rax, %rdi	# tmp205,
	call	delete_related_insns	#
	movq	%rax, -40(%rbp)	# tmp206, next
.L479:
	.loc 1 1823 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, next
	je	.L478	#,
	.loc 1 1824 0
	movq	-40(%rbp), %rax	# next, tmp207
	movzwl	(%rax), %eax	# next_6->code, D.13188
	movzwl	%ax, %eax	# D.13188, tmp208
	movl	%eax, -52(%rbp)	# tmp208, code
	movl	-52(%rbp), %eax	# code, code.59
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13194
	cmpb	$105, %al	#, D.13194
	je	.L482	#,
	.loc 1 1825 0
	cmpl	$37, -52(%rbp)	#, code
	je	.L482	#,
	.loc 1 1825 0 is_stmt 0 discriminator 1
	cmpl	$35, -52(%rbp)	#, code
	je	.L482	#,
	.loc 1 1826 0 is_stmt 1
	cmpl	$36, -52(%rbp)	#, code
	jne	.L478	#,
	.loc 1 1826 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# next, tmp210
	movzbl	3(%rax), %eax	# *next_6, D.13190
	andl	$8, %eax	#, D.13190
	testb	%al, %al	# D.13190
	jne	.L482	#,
.L478:
.LBE25:
	.loc 1 1843 0 is_stmt 1
	movq	-40(%rbp), %rax	# next, D.13187
.L452:
	.loc 1 1844 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	delete_related_insns, .-delete_related_insns
	.globl	next_nondeleted_insn
	.type	next_nondeleted_insn, @function
next_nondeleted_insn:
.LFB37:
	.loc 1 1852 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 1853 0
	jmp	.L484	#
.L485:
	.loc 1 1854 0
	movq	-8(%rbp), %rax	# insn, tmp63
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp64
	movq	%rax, -8(%rbp)	# tmp64, insn
.L484:
	.loc 1 1853 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp65
	movzbl	3(%rax), %eax	# *insn_1, D.13195
	andl	$8, %eax	#, D.13195
	testb	%al, %al	# D.13195
	jne	.L485	#,
	.loc 1 1855 0
	movq	-8(%rbp), %rax	# insn, D.13196
	.loc 1 1856 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	next_nondeleted_insn, .-next_nondeleted_insn
	.globl	delete_for_peephole
	.type	delete_for_peephole, @function
delete_for_peephole:
.LFB38:
	.loc 1 1866 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# from, from
	movq	%rsi, -48(%rbp)	# to, to
	.loc 1 1867 0
	movq	-40(%rbp), %rax	# from, tmp60
	movq	%rax, -24(%rbp)	# tmp60, insn
.L492:
.LBB26:
	.loc 1 1871 0
	movq	-24(%rbp), %rax	# insn, tmp61
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp62
	movq	%rax, -16(%rbp)	# tmp62, next
	.loc 1 1872 0
	movq	-24(%rbp), %rax	# insn, tmp63
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp64
	movq	%rax, -8(%rbp)	# tmp64, prev
	.loc 1 1874 0
	movq	-24(%rbp), %rax	# insn, tmp65
	movzwl	(%rax), %eax	# insn_1->code, D.13197
	cmpw	$37, %ax	#, D.13197
	je	.L488	#,
	.loc 1 1876 0
	movq	-24(%rbp), %rax	# insn, tmp66
	movzbl	3(%rax), %edx	# insn_1->volatil, tmp69
	orl	$8, %edx	#, tmp70
	movb	%dl, 3(%rax)	# tmp70, insn_1->volatil
	.loc 1 1881 0
	cmpq	$0, -8(%rbp)	#, prev
	je	.L489	#,
	.loc 1 1882 0
	movq	-8(%rbp), %rax	# prev, tmp71
	movq	-16(%rbp), %rdx	# next, tmp72
	movq	%rdx, 24(%rax)	# tmp72, prev_5->fld[2].rtx
.L489:
	.loc 1 1884 0
	cmpq	$0, -16(%rbp)	#, next
	je	.L488	#,
	.loc 1 1885 0
	movq	-16(%rbp), %rax	# next, tmp73
	movq	-8(%rbp), %rdx	# prev, tmp74
	movq	%rdx, 16(%rax)	# tmp74, next_4->fld[1].rtx
.L488:
	.loc 1 1888 0
	movq	-24(%rbp), %rax	# insn, tmp75
	cmpq	-48(%rbp), %rax	# to, tmp75
	jne	.L490	#,
	.loc 1 1889 0
	jmp	.L493	#
.L490:
	.loc 1 1890 0
	movq	-16(%rbp), %rax	# next, tmp76
	movq	%rax, -24(%rbp)	# tmp76, insn
.LBE26:
	.loc 1 1891 0
	jmp	.L492	#
.L493:
	.loc 1 1897 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	delete_for_peephole, .-delete_for_peephole
	.section	.rodata
.LC1:
	.string	"will never be executed"
	.text
	.globl	never_reached_warning
	.type	never_reached_warning, @function
never_reached_warning:
.LFB39:
	.loc 1 1911 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# avoided_insn, avoided_insn
	movq	%rsi, -48(%rbp)	# finish, finish
	.loc 1 1913 0
	movq	$0, -8(%rbp)	#, a_line_note
	.loc 1 1914 0
	movl	$0, -28(%rbp)	#, two_avoided_lines
	movl	$0, -24(%rbp)	#, contains_insn
	movl	$0, -20(%rbp)	#, reached_end
	.loc 1 1916 0
	movl	warn_notreached(%rip), %eax	# warn_notreached, warn_notreached.60
	testl	%eax, %eax	# warn_notreached.60
	jne	.L495	#,
	.loc 1 1917 0
	jmp	.L494	#
.L495:
	.loc 1 1922 0
	movq	-40(%rbp), %rax	# avoided_insn, tmp72
	movq	%rax, -16(%rbp)	# tmp72, insn
	jmp	.L497	#
.L506:
	.loc 1 1924 0
	cmpq	$0, -48(%rbp)	#, finish
	jne	.L498	#,
	.loc 1 1924 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp73
	movzwl	(%rax), %eax	# insn_1->code, D.13198
	cmpw	$36, %ax	#, D.13198
	jne	.L498	#,
	.loc 1 1925 0 is_stmt 1
	jmp	.L499	#
.L498:
	.loc 1 1927 0
	movq	-16(%rbp), %rax	# insn, tmp74
	movzwl	(%rax), %eax	# insn_1->code, D.13198
	cmpw	$37, %ax	#, D.13198
	jne	.L500	#,
	.loc 1 1928 0
	movq	-16(%rbp), %rax	# insn, tmp75
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13199
	testl	%eax, %eax	# D.13199
	js	.L500	#,
	.loc 1 1930 0
	cmpq	$0, -8(%rbp)	#, a_line_note
	jne	.L501	#,
	.loc 1 1931 0
	movq	-16(%rbp), %rax	# insn, tmp76
	movq	%rax, -8(%rbp)	# tmp76, a_line_note
	.loc 1 1930 0
	jmp	.L503	#
.L501:
	.loc 1 1933 0
	movq	-8(%rbp), %rax	# a_line_note, tmp77
	movl	40(%rax), %edx	# a_line_note_4->fld[4].rtint, D.13199
	.loc 1 1934 0
	movq	-16(%rbp), %rax	# insn, tmp78
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.13199
	cmpl	%eax, %edx	# D.13199, D.13199
	setne	%al	#, D.13200
	movzbl	%al, %eax	# D.13200, D.13199
	.loc 1 1933 0
	orl	%eax, -28(%rbp)	# D.13199, two_avoided_lines
	.loc 1 1930 0
	jmp	.L503	#
.L500:
	.loc 1 1936 0
	movq	-16(%rbp), %rax	# insn, tmp79
	movzwl	(%rax), %eax	# insn_1->code, D.13198
	movzwl	%ax, %eax	# D.13198, D.13199
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13201
	cmpb	$105, %al	#, D.13201
	jne	.L503	#,
	.loc 1 1938 0
	cmpl	$0, -20(%rbp)	#, reached_end
	je	.L504	#,
	.loc 1 1939 0
	jmp	.L499	#
.L504:
	.loc 1 1940 0
	movl	$1, -24(%rbp)	#, contains_insn
.L503:
	.loc 1 1943 0
	movq	-16(%rbp), %rax	# insn, tmp81
	cmpq	-48(%rbp), %rax	# finish, tmp81
	jne	.L505	#,
	.loc 1 1944 0
	movl	$1, -20(%rbp)	#, reached_end
.L505:
	.loc 1 1922 0
	movq	-16(%rbp), %rax	# insn, tmp82
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp83
	movq	%rax, -16(%rbp)	# tmp83, insn
.L497:
	.loc 1 1922 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, insn
	jne	.L506	#,
.L499:
	.loc 1 1946 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, two_avoided_lines
	je	.L494	#,
	.loc 1 1946 0 is_stmt 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, contains_insn
	je	.L494	#,
	.loc 1 1947 0 is_stmt 1
	movq	-8(%rbp), %rax	# a_line_note, tmp84
	movl	40(%rax), %ecx	# a_line_note_4->fld[4].rtint, D.13199
	movq	-8(%rbp), %rax	# a_line_note, tmp85
	movq	32(%rax), %rax	# a_line_note_4->fld[3].rtstr, D.13202
	movl	$.LC1, %edx	#,
	movl	%ecx, %esi	# D.13199,
	movq	%rax, %rdi	# D.13202,
	movl	$0, %eax	#,
	call	warning_with_file_and_line	#
.L494:
	.loc 1 1950 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	never_reached_warning, .-never_reached_warning
	.type	redirect_exp_1, @function
redirect_exp_1:
.LFB40:
	.loc 1 1960 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# loc, loc
	movq	%rsi, -64(%rbp)	# olabel, olabel
	movq	%rdx, -72(%rbp)	# nlabel, nlabel
	movq	%rcx, -80(%rbp)	# insn, insn
	.loc 1 1961 0
	movq	-56(%rbp), %rax	# loc, tmp85
	movq	(%rax), %rax	# *loc_5(D), tmp86
	movq	%rax, -24(%rbp)	# tmp86, x
	.loc 1 1962 0
	movq	-24(%rbp), %rax	# x, tmp87
	movzwl	(%rax), %eax	# x_6->code, D.13204
	movzwl	%ax, %eax	# D.13204, tmp88
	movl	%eax, -28(%rbp)	# tmp88, code
	.loc 1 1966 0
	cmpl	$67, -28(%rbp)	#, code
	jne	.L508	#,
	.loc 1 1968 0
	movq	-24(%rbp), %rax	# x, tmp89
	movq	8(%rax), %rax	# x_6->fld[0].rtx, D.13205
	cmpq	-64(%rbp), %rax	# olabel, D.13205
	jne	.L509	#,
.LBB27:
	.loc 1 1971 0
	cmpq	$0, -72(%rbp)	#, nlabel
	je	.L510	#,
	.loc 1 1972 0
	movq	-72(%rbp), %rax	# nlabel, tmp90
	movq	%rax, %rdx	# tmp90,
	movl	$0, %esi	#,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, -16(%rbp)	# tmp91, n
	jmp	.L511	#
.L510:
	.loc 1 1974 0
	movl	$0, %esi	#,
	movl	$51, %edi	#,
	call	gen_rtx_fmt_	#
	movq	%rax, -16(%rbp)	# tmp92, n
.L511:
	.loc 1 1976 0
	movq	-16(%rbp), %rdx	# n, tmp93
	movq	-56(%rbp), %rsi	# loc, tmp94
	movq	-80(%rbp), %rax	# insn, tmp95
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp95,
	call	validate_change	#
	.loc 1 1977 0
	jmp	.L507	#
.L508:
.LBE27:
	.loc 1 1980 0
	cmpl	$51, -28(%rbp)	#, code
	jne	.L509	#,
	.loc 1 1980 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, olabel
	jne	.L509	#,
	.loc 1 1982 0 is_stmt 1
	movq	-72(%rbp), %rax	# nlabel, tmp96
	movq	%rax, %rdx	# tmp96,
	movl	$0, %esi	#,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, -24(%rbp)	# tmp97, x
	.loc 1 1983 0
	movq	-80(%rbp), %rax	# insn, tmp98
	addq	$32, %rax	#, D.13206
	cmpq	-56(%rbp), %rax	# loc, D.13206
	jne	.L513	#,
	.loc 1 1984 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.13205
	movq	-24(%rbp), %rdx	# x, tmp99
	movq	%rdx, %rcx	# tmp99,
	movq	%rax, %rdx	# D.13205,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -24(%rbp)	# tmp100, x
.L513:
	.loc 1 1985 0
	movq	-24(%rbp), %rdx	# x, tmp101
	movq	-56(%rbp), %rsi	# loc, tmp102
	movq	-80(%rbp), %rax	# insn, tmp103
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp103,
	call	validate_change	#
	.loc 1 1986 0
	jmp	.L507	#
.L509:
	.loc 1 1989 0
	cmpl	$47, -28(%rbp)	#, code
	jne	.L514	#,
	.loc 1 1989 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, nlabel
	jne	.L514	#,
	movq	-24(%rbp), %rax	# x, tmp104
	movq	8(%rax), %rdx	# x_6->fld[0].rtx, D.13205
	movq	global_rtl(%rip), %rax	# global_rtl, D.13205
	cmpq	%rax, %rdx	# D.13205, D.13205
	jne	.L514	#,
	.loc 1 1990 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp105
	movq	16(%rax), %rax	# x_6->fld[1].rtx, D.13205
	movzwl	(%rax), %eax	# _21->code, D.13204
	cmpw	$67, %ax	#, D.13204
	jne	.L514	#,
	.loc 1 1991 0
	movq	-24(%rbp), %rax	# x, tmp106
	movq	16(%rax), %rax	# x_6->fld[1].rtx, D.13205
	movq	8(%rax), %rax	# _23->fld[0].rtx, D.13205
	cmpq	-64(%rbp), %rax	# olabel, D.13205
	jne	.L514	#,
	.loc 1 1993 0
	movl	$0, %esi	#,
	movl	$51, %edi	#,
	call	gen_rtx_fmt_	#
	movq	%rax, %rdx	#, D.13205
	movq	-56(%rbp), %rsi	# loc, tmp107
	movq	-80(%rbp), %rax	# insn, tmp108
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp108,
	call	validate_change	#
	.loc 1 1994 0
	jmp	.L507	#
.L514:
	.loc 1 1997 0
	movl	-28(%rbp), %eax	# code, code.61
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp110
	movq	%rax, -8(%rbp)	# tmp110, fmt
	.loc 1 1998 0
	movl	-28(%rbp), %eax	# code, code.62
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13207
	movzbl	%al, %eax	# D.13207, D.13208
	subl	$1, %eax	#, tmp112
	movl	%eax, -36(%rbp)	# tmp112, i
	jmp	.L515	#
.L520:
	.loc 1 2000 0
	movl	-36(%rbp), %eax	# i, tmp113
	movslq	%eax, %rdx	# tmp113, D.13209
	movq	-8(%rbp), %rax	# fmt, tmp114
	addq	%rdx, %rax	# D.13209, D.13210
	movzbl	(%rax), %eax	# *_33, D.13211
	cmpb	$101, %al	#, D.13211
	jne	.L516	#,
	.loc 1 2001 0
	movl	-36(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp117
	movq	-24(%rbp), %rax	# x, tmp119
	addq	%rdx, %rax	# tmp117, tmp118
	leaq	8(%rax), %rdi	#, D.13206
	movq	-80(%rbp), %rcx	# insn, tmp120
	movq	-72(%rbp), %rdx	# nlabel, tmp121
	movq	-64(%rbp), %rax	# olabel, tmp122
	movq	%rax, %rsi	# tmp122,
	call	redirect_exp_1	#
	jmp	.L517	#
.L516:
	.loc 1 2002 0
	movl	-36(%rbp), %eax	# i, tmp123
	movslq	%eax, %rdx	# tmp123, D.13209
	movq	-8(%rbp), %rax	# fmt, tmp124
	addq	%rdx, %rax	# D.13209, D.13210
	movzbl	(%rax), %eax	# *_37, D.13211
	cmpb	$69, %al	#, D.13211
	jne	.L517	#,
.LBB28:
	.loc 1 2005 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L518	#
.L519:
	.loc 1 2006 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp125
	movl	-36(%rbp), %edx	# i, tmp127
	movslq	%edx, %rdx	# tmp127, tmp126
	movq	8(%rax,%rdx,8), %rax	# x_6->fld[i_2].rtvec, D.13212
	movl	-32(%rbp), %edx	# j, tmp129
	movslq	%edx, %rdx	# tmp129, tmp128
	salq	$3, %rdx	#, tmp130
	addq	%rdx, %rax	# tmp130, tmp131
	leaq	8(%rax), %rdi	#, D.13206
	movq	-80(%rbp), %rcx	# insn, tmp132
	movq	-72(%rbp), %rdx	# nlabel, tmp133
	movq	-64(%rbp), %rax	# olabel, tmp134
	movq	%rax, %rsi	# tmp134,
	call	redirect_exp_1	#
	.loc 1 2005 0 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L518:
	.loc 1 2005 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp135
	movl	-36(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, tmp136
	movq	8(%rax,%rdx,8), %rax	# x_6->fld[i_2].rtvec, D.13212
	movl	(%rax), %eax	# _40->num_elem, D.13208
	cmpl	-32(%rbp), %eax	# j, D.13208
	jg	.L519	#,
.L517:
.LBE28:
	.loc 1 1998 0 is_stmt 1
	subl	$1, -36(%rbp)	#, i
.L515:
	.loc 1 1998 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L520	#,
.L507:
	.loc 1 2009 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	redirect_exp_1, .-redirect_exp_1
	.type	redirect_exp, @function
redirect_exp:
.LFB41:
	.loc 1 2017 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# olabel, olabel
	movq	%rsi, -32(%rbp)	# nlabel, nlabel
	movq	%rdx, -40(%rbp)	# insn, insn
	.loc 1 2020 0
	movq	-40(%rbp), %rax	# insn, tmp66
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.13214
	movzwl	(%rax), %eax	# _4->code, D.13215
	cmpw	$39, %ax	#, D.13215
	jne	.L522	#,
	.loc 1 2021 0
	movq	-40(%rbp), %rax	# insn, tmp67
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.13214
	movq	8(%rax), %rax	# _6->fld[0].rtvec, D.13216
	addq	$8, %rax	#, tmp68
	movq	%rax, -8(%rbp)	# tmp68, loc
	jmp	.L523	#
.L522:
	.loc 1 2023 0
	movq	-40(%rbp), %rax	# insn, tmp72
	addq	$32, %rax	#, tmp71
	movq	%rax, -8(%rbp)	# tmp71, loc
.L523:
	.loc 1 2025 0
	movq	-40(%rbp), %rcx	# insn, tmp73
	movq	-32(%rbp), %rdx	# nlabel, tmp74
	movq	-24(%rbp), %rsi	# olabel, tmp75
	movq	-8(%rbp), %rax	# loc, tmp76
	movq	%rax, %rdi	# tmp76,
	call	redirect_exp_1	#
	.loc 1 2026 0
	call	num_validated_changes	#
	testl	%eax, %eax	# D.13213
	jne	.L524	#,
	.loc 1 2027 0
	movl	$0, %eax	#, D.13213
	jmp	.L525	#
.L524:
	.loc 1 2029 0
	call	apply_change_group	#
.L525:
	.loc 1 2030 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	redirect_exp, .-redirect_exp
	.globl	redirect_jump_1
	.type	redirect_jump_1, @function
redirect_jump_1:
.LFB42:
	.loc 1 2039 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# jump, jump
	movq	%rsi, -32(%rbp)	# nlabel, nlabel
	.loc 1 2040 0
	call	num_validated_changes	#
	movl	%eax, -12(%rbp)	# tmp68, ochanges
	.loc 1 2043 0
	movq	-24(%rbp), %rax	# jump, tmp69
	movq	32(%rax), %rax	# jump_3(D)->fld[3].rtx, D.13217
	movzwl	(%rax), %eax	# _4->code, D.13218
	cmpw	$39, %ax	#, D.13218
	jne	.L527	#,
	.loc 1 2044 0
	movq	-24(%rbp), %rax	# jump, tmp70
	movq	32(%rax), %rax	# jump_3(D)->fld[3].rtx, D.13217
	movq	8(%rax), %rax	# _6->fld[0].rtvec, D.13219
	addq	$8, %rax	#, tmp71
	movq	%rax, -8(%rbp)	# tmp71, loc
	jmp	.L528	#
.L527:
	.loc 1 2046 0
	movq	-24(%rbp), %rax	# jump, tmp75
	addq	$32, %rax	#, tmp74
	movq	%rax, -8(%rbp)	# tmp74, loc
.L528:
	.loc 1 2048 0
	movq	-24(%rbp), %rax	# jump, tmp76
	movq	64(%rax), %rsi	# jump_3(D)->fld[7].rtx, D.13217
	movq	-24(%rbp), %rcx	# jump, tmp77
	movq	-32(%rbp), %rdx	# nlabel, tmp78
	movq	-8(%rbp), %rax	# loc, tmp79
	movq	%rax, %rdi	# tmp79,
	call	redirect_exp_1	#
	.loc 1 2049 0
	call	num_validated_changes	#
	cmpl	-12(%rbp), %eax	# ochanges, D.13220
	setg	%al	#, D.13221
	movzbl	%al, %eax	# D.13221, D.13220
	.loc 1 2050 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	redirect_jump_1, .-redirect_jump_1
	.globl	redirect_jump
	.type	redirect_jump, @function
redirect_jump:
.LFB43:
	.loc 1 2066 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# jump, jump
	movq	%rsi, -32(%rbp)	# nlabel, nlabel
	movl	%edx, -36(%rbp)	# delete_unused, delete_unused
	.loc 1 2067 0
	movq	-24(%rbp), %rax	# jump, tmp73
	movq	64(%rax), %rax	# jump_2(D)->fld[7].rtx, tmp74
	movq	%rax, -8(%rbp)	# tmp74, olabel
	.loc 1 2069 0
	movq	-32(%rbp), %rax	# nlabel, tmp75
	cmpq	-8(%rbp), %rax	# olabel, tmp75
	jne	.L531	#,
	.loc 1 2070 0
	movl	$1, %eax	#, D.13222
	jmp	.L532	#
.L531:
	.loc 1 2072 0
	movq	-24(%rbp), %rdx	# jump, tmp76
	movq	-32(%rbp), %rcx	# nlabel, tmp77
	movq	-8(%rbp), %rax	# olabel, tmp78
	movq	%rcx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	redirect_exp	#
	testl	%eax, %eax	# D.13222
	jne	.L533	#,
	.loc 1 2073 0
	movl	$0, %eax	#, D.13222
	jmp	.L532	#
.L533:
	.loc 1 2075 0
	movq	-24(%rbp), %rax	# jump, tmp79
	movq	-32(%rbp), %rdx	# nlabel, tmp80
	movq	%rdx, 64(%rax)	# tmp80, jump_2(D)->fld[7].rtx
	.loc 1 2076 0
	cmpq	$0, -32(%rbp)	#, nlabel
	je	.L534	#,
	.loc 1 2077 0
	movq	-32(%rbp), %rax	# nlabel, tmp81
	movl	32(%rax), %eax	# nlabel_4(D)->fld[3].rtint, D.13222
	leal	1(%rax), %edx	#, D.13222
	movq	-32(%rbp), %rax	# nlabel, tmp82
	movl	%edx, 32(%rax)	# D.13222, nlabel_4(D)->fld[3].rtint
.L534:
	.loc 1 2081 0
	cmpq	$0, -8(%rbp)	#, olabel
	je	.L535	#,
	.loc 1 2081 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, nlabel
	je	.L535	#,
	.loc 1 2082 0 is_stmt 1
	movq	-8(%rbp), %rax	# olabel, tmp83
	movq	24(%rax), %rax	# olabel_3->fld[2].rtx, D.13223
	testq	%rax, %rax	# D.13223
	je	.L535	#,
	.loc 1 2083 0
	movq	-8(%rbp), %rax	# olabel, tmp84
	movq	24(%rax), %rax	# olabel_3->fld[2].rtx, D.13223
	movzwl	(%rax), %eax	# _11->code, D.13224
	cmpw	$37, %ax	#, D.13224
	jne	.L535	#,
	.loc 1 2084 0
	movq	-8(%rbp), %rax	# olabel, tmp85
	movq	24(%rax), %rax	# olabel_3->fld[2].rtx, D.13223
	movl	40(%rax), %eax	# _13->fld[4].rtint, D.13222
	cmpl	$-91, %eax	#, D.13222
	jne	.L535	#,
	.loc 1 2085 0
	movq	-32(%rbp), %rax	# nlabel, tmp86
	movq	%rax, %rsi	# tmp86,
	movl	$-91, %edi	#,
	call	emit_note_after	#
.L535:
	.loc 1 2087 0
	cmpq	$0, -8(%rbp)	#, olabel
	je	.L536	#,
	.loc 1 2087 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# olabel, tmp87
	movl	32(%rax), %eax	# olabel_3->fld[3].rtint, D.13222
	leal	-1(%rax), %edx	#, D.13222
	movq	-8(%rbp), %rax	# olabel, tmp88
	movl	%edx, 32(%rax)	# D.13222, olabel_3->fld[3].rtint
	movq	-8(%rbp), %rax	# olabel, tmp89
	movl	32(%rax), %eax	# olabel_3->fld[3].rtint, D.13222
	testl	%eax, %eax	# D.13222
	jne	.L536	#,
	cmpl	$0, -36(%rbp)	#, delete_unused
	je	.L536	#,
	.loc 1 2089 0 is_stmt 1
	movq	-8(%rbp), %rax	# olabel, tmp90
	movl	8(%rax), %eax	# olabel_3->fld[0].rtint, D.13222
	testl	%eax, %eax	# D.13222
	je	.L536	#,
	.loc 1 2090 0
	movq	-8(%rbp), %rax	# olabel, tmp91
	movq	%rax, %rdi	# tmp91,
	call	delete_related_insns	#
.L536:
	.loc 1 2092 0
	movl	$1, %eax	#, D.13222
.L532:
	.loc 1 2093 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	redirect_jump, .-redirect_jump
	.type	invert_exp_1, @function
invert_exp_1:
.LFB44:
	.loc 1 2101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 2103 0
	movq	-40(%rbp), %rax	# insn, tmp69
	movq	%rax, %rdi	# tmp69,
	call	pc_set	#
	movq	%rax, -24(%rbp)	# tmp70, x
	.loc 1 2105 0
	cmpq	$0, -24(%rbp)	#, x
	jne	.L538	#,
	.loc 1 2106 0
	movl	$__FUNCTION__.11275, %edx	#,
	movl	$2106, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L538:
	.loc 1 2107 0
	movq	-24(%rbp), %rax	# x, tmp71
	movq	16(%rax), %rax	# x_2->fld[1].rtx, tmp72
	movq	%rax, -24(%rbp)	# tmp72, x
	.loc 1 2109 0
	movq	-24(%rbp), %rax	# x, tmp73
	movzwl	(%rax), %eax	# x_3->code, D.13225
	movzwl	%ax, %eax	# D.13225, tmp74
	movl	%eax, -32(%rbp)	# tmp74, code
	.loc 1 2111 0
	cmpl	$72, -32(%rbp)	#, code
	jne	.L539	#,
.LBB29:
	.loc 1 2113 0
	movq	-24(%rbp), %rax	# x, tmp75
	movq	8(%rax), %rax	# x_3->fld[0].rtx, tmp76
	movq	%rax, -16(%rbp)	# tmp76, comp
	.loc 1 2122 0
	movq	-40(%rbp), %rdx	# insn, tmp77
	movq	-16(%rbp), %rax	# comp, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	reversed_comparison_code	#
	movl	%eax, -28(%rbp)	# tmp79, reversed_code
	.loc 1 2124 0
	cmpl	$0, -28(%rbp)	#, reversed_code
	je	.L540	#,
	.loc 1 2126 0
	movq	-16(%rbp), %rax	# comp, tmp80
	movq	16(%rax), %rcx	# comp_6->fld[1].rtx, D.13226
	movq	-16(%rbp), %rax	# comp, tmp81
	movq	8(%rax), %rdx	# comp_6->fld[0].rtx, D.13226
	.loc 1 2128 0
	movq	-16(%rbp), %rax	# comp, tmp82
	movzbl	2(%rax), %eax	# comp_6->mode, D.13227
	.loc 1 2126 0
	movzbl	%al, %esi	# D.13227, D.13228
	movl	-28(%rbp), %eax	# reversed_code, tmp83
	movl	%eax, %edi	# tmp83,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.13226
	movq	-24(%rbp), %rax	# x, tmp84
	leaq	8(%rax), %rsi	#, D.13229
	movq	-40(%rbp), %rax	# insn, tmp85
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp85,
	call	validate_change	#
	.loc 1 2131 0
	jmp	.L537	#
.L540:
	.loc 1 2134 0
	movq	-24(%rbp), %rax	# x, tmp86
	movq	16(%rax), %rax	# x_3->fld[1].rtx, tmp87
	movq	%rax, -8(%rbp)	# tmp87, tem
	.loc 1 2135 0
	movq	-24(%rbp), %rax	# x, tmp88
	movq	24(%rax), %rdx	# x_3->fld[2].rtx, D.13226
	movq	-24(%rbp), %rax	# x, tmp89
	leaq	16(%rax), %rsi	#, D.13229
	movq	-40(%rbp), %rax	# insn, tmp90
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp90,
	call	validate_change	#
	.loc 1 2136 0
	movq	-24(%rbp), %rax	# x, tmp91
	leaq	24(%rax), %rsi	#, D.13229
	movq	-8(%rbp), %rdx	# tem, tmp92
	movq	-40(%rbp), %rax	# insn, tmp93
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp93,
	call	validate_change	#
.LBE29:
	jmp	.L537	#
.L539:
	.loc 1 2139 0
	movl	$__FUNCTION__.11275, %edx	#,
	movl	$2139, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L537:
	.loc 1 2140 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	invert_exp_1, .-invert_exp_1
	.type	invert_exp, @function
invert_exp:
.LFB45:
	.loc 1 2150 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 2151 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movq	%rax, %rdi	# tmp62,
	call	invert_exp_1	#
	.loc 1 2152 0
	call	num_validated_changes	#
	testl	%eax, %eax	# D.13230
	jne	.L543	#,
	.loc 1 2153 0
	movl	$0, %eax	#, D.13230
	jmp	.L544	#
.L543:
	.loc 1 2155 0
	call	apply_change_group	#
.L544:
	.loc 1 2156 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	invert_exp, .-invert_exp
	.globl	invert_jump_1
	.type	invert_jump_1, @function
invert_jump_1:
.LFB46:
	.loc 1 2166 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# jump, jump
	movq	%rsi, -32(%rbp)	# nlabel, nlabel
	.loc 1 2169 0
	call	num_validated_changes	#
	movl	%eax, -4(%rbp)	# tmp62, ochanges
	.loc 1 2170 0
	movq	-24(%rbp), %rax	# jump, tmp63
	movq	%rax, %rdi	# tmp63,
	call	invert_exp_1	#
	.loc 1 2171 0
	call	num_validated_changes	#
	cmpl	-4(%rbp), %eax	# ochanges, D.13231
	jne	.L546	#,
	.loc 1 2172 0
	movl	$0, %eax	#, D.13231
	jmp	.L547	#
.L546:
	.loc 1 2174 0
	movq	-32(%rbp), %rdx	# nlabel, tmp64
	movq	-24(%rbp), %rax	# jump, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	redirect_jump_1	#
.L547:
	.loc 1 2175 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	invert_jump_1, .-invert_jump_1
	.globl	invert_jump
	.type	invert_jump, @function
invert_jump:
.LFB47:
	.loc 1 2184 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# jump, jump
	movq	%rsi, -16(%rbp)	# nlabel, nlabel
	movl	%edx, -20(%rbp)	# delete_unused, delete_unused
	.loc 1 2190 0
	movq	-8(%rbp), %rax	# jump, tmp64
	movq	%rax, %rdi	# tmp64,
	call	invert_exp	#
	testl	%eax, %eax	# D.13232
	jne	.L549	#,
	.loc 1 2191 0
	movl	$0, %eax	#, D.13232
	jmp	.L550	#
.L549:
	.loc 1 2193 0
	movl	-20(%rbp), %edx	# delete_unused, tmp65
	movq	-16(%rbp), %rcx	# nlabel, tmp66
	movq	-8(%rbp), %rax	# jump, tmp67
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	redirect_jump	#
	testl	%eax, %eax	# D.13232
	je	.L551	#,
	.loc 1 2195 0
	movq	-8(%rbp), %rax	# jump, tmp68
	movq	%rax, %rdi	# tmp68,
	call	invert_br_probabilities	#
	.loc 1 2197 0
	movl	$1, %eax	#, D.13232
	jmp	.L550	#
.L551:
	.loc 1 2200 0
	movq	-8(%rbp), %rax	# jump, tmp69
	movq	%rax, %rdi	# tmp69,
	call	invert_exp	#
	testl	%eax, %eax	# D.13232
	jne	.L552	#,
	.loc 1 2202 0
	movl	$__FUNCTION__.11292, %edx	#,
	movl	$2202, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L552:
	.loc 1 2204 0
	movl	$0, %eax	#, D.13232
.L550:
	.loc 1 2205 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	invert_jump, .-invert_jump
	.globl	rtx_renumbered_equal_p
	.type	rtx_renumbered_equal_p, @function
rtx_renumbered_equal_p:
.LFB48:
	.loc 1 2224 0
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
	movq	%rsi, -80(%rbp)	# y, y
	.loc 1 2226 0
	movq	-72(%rbp), %rax	# x, tmp222
	movzwl	(%rax), %eax	# x_15(D)->code, D.13234
	movzwl	%ax, %eax	# D.13234, tmp223
	movl	%eax, -28(%rbp)	# tmp223, code
	.loc 1 2229 0
	movq	-72(%rbp), %rax	# x, tmp224
	cmpq	-80(%rbp), %rax	# y, tmp224
	jne	.L554	#,
	.loc 1 2230 0
	movl	$1, %eax	#, D.13233
	jmp	.L555	#
.L554:
	.loc 1 2232 0
	cmpl	$61, -28(%rbp)	#, code
	je	.L556	#,
	.loc 1 2232 0 is_stmt 0 discriminator 1
	cmpl	$63, -28(%rbp)	#, code
	jne	.L557	#,
	movq	-72(%rbp), %rax	# x, tmp225
	movq	8(%rax), %rax	# x_15(D)->fld[0].rtx, D.13235
	movzwl	(%rax), %eax	# _20->code, D.13234
	cmpw	$61, %ax	#, D.13234
	jne	.L557	#,
.L556:
	.loc 1 2233 0 is_stmt 1
	movq	-80(%rbp), %rax	# y, tmp226
	movzwl	(%rax), %eax	# y_18(D)->code, D.13234
	cmpw	$61, %ax	#, D.13234
	je	.L558	#,
	.loc 1 2233 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# y, tmp227
	movzwl	(%rax), %eax	# y_18(D)->code, D.13234
	cmpw	$63, %ax	#, D.13234
	jne	.L557	#,
	.loc 1 2234 0 is_stmt 1
	movq	-80(%rbp), %rax	# y, tmp228
	movq	8(%rax), %rax	# y_18(D)->fld[0].rtx, D.13235
	movzwl	(%rax), %eax	# _24->code, D.13234
	cmpw	$61, %ax	#, D.13234
	jne	.L557	#,
.L558:
.LBB30:
	.loc 1 2236 0
	movl	$-1, -48(%rbp)	#, reg_x
	movl	$-1, -44(%rbp)	#, reg_y
	.loc 1 2237 0
	movl	$0, -40(%rbp)	#, byte_x
	movl	$0, -36(%rbp)	#, byte_y
	.loc 1 2239 0
	movq	-72(%rbp), %rax	# x, tmp229
	movzbl	2(%rax), %edx	# x_15(D)->mode, D.13236
	movq	-80(%rbp), %rax	# y, tmp230
	movzbl	2(%rax), %eax	# y_18(D)->mode, D.13236
	cmpb	%al, %dl	# D.13236, D.13236
	je	.L559	#,
	.loc 1 2240 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L559:
	.loc 1 2244 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.63
	testq	%rax, %rax	# reg_renumber.63
	jne	.L560	#,
	.loc 1 2245 0
	movq	-80(%rbp), %rdx	# y, tmp231
	movq	-72(%rbp), %rax	# x, tmp232
	movq	%rdx, %rsi	# tmp231,
	movq	%rax, %rdi	# tmp232,
	call	rtx_equal_p	#
	jmp	.L555	#
.L560:
	.loc 1 2247 0
	cmpl	$63, -28(%rbp)	#, code
	jne	.L561	#,
	.loc 1 2249 0
	movq	-72(%rbp), %rax	# x, tmp233
	movq	8(%rax), %rax	# x_15(D)->fld[0].rtx, D.13235
	movl	8(%rax), %eax	# _35->fld[0].rtuint, D.13237
	movl	%eax, -48(%rbp)	# D.13237, reg_x
	.loc 1 2250 0
	movq	-72(%rbp), %rax	# x, tmp234
	movl	16(%rax), %eax	# x_15(D)->fld[1].rtuint, D.13237
	movl	%eax, -40(%rbp)	# D.13237, byte_x
	.loc 1 2252 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.64
	movl	-48(%rbp), %edx	# reg_x, tmp235
	movslq	%edx, %rdx	# tmp235, D.13238
	addq	%rdx, %rdx	# D.13238
	addq	%rdx, %rax	# D.13238, D.13239
	movzwl	(%rax), %eax	# *_43, D.13240
	testw	%ax, %ax	# D.13240
	js	.L563	#,
	.loc 1 2257 0
	movq	-72(%rbp), %rax	# x, tmp236
	movzbl	2(%rax), %eax	# x_15(D)->mode, D.13236
	.loc 1 2254 0
	movzbl	%al, %ecx	# D.13236, D.13241
	movl	-40(%rbp), %edx	# byte_x, byte_x.65
	.loc 1 2255 0
	movq	-72(%rbp), %rax	# x, tmp237
	movq	8(%rax), %rax	# x_15(D)->fld[0].rtx, D.13235
	movzbl	2(%rax), %eax	# _48->mode, D.13236
	.loc 1 2254 0
	movzbl	%al, %esi	# D.13236, D.13241
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.66
	movl	-48(%rbp), %edi	# reg_x, tmp238
	movslq	%edi, %rdi	# tmp238, D.13238
	addq	%rdi, %rdi	# D.13238
	addq	%rdi, %rax	# D.13238, D.13239
	movzwl	(%rax), %eax	# *_54, D.13240
	cwtl
	movl	%eax, %edi	# D.13237,
	call	subreg_regno_offset	#
	movl	%eax, -48(%rbp)	# D.13237, reg_x
	.loc 1 2258 0
	movl	$0, -40(%rbp)	#, byte_x
	jmp	.L563	#
.L561:
	.loc 1 2263 0
	movq	-72(%rbp), %rax	# x, tmp239
	movl	8(%rax), %eax	# x_15(D)->fld[0].rtuint, D.13237
	movl	%eax, -48(%rbp)	# D.13237, reg_x
	.loc 1 2264 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.67
	movl	-48(%rbp), %edx	# reg_x, tmp240
	movslq	%edx, %rdx	# tmp240, D.13238
	addq	%rdx, %rdx	# D.13238
	addq	%rdx, %rax	# D.13238, D.13239
	movzwl	(%rax), %eax	# *_65, D.13240
	testw	%ax, %ax	# D.13240
	js	.L563	#,
	.loc 1 2265 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.68
	movl	-48(%rbp), %edx	# reg_x, tmp241
	movslq	%edx, %rdx	# tmp241, D.13238
	addq	%rdx, %rdx	# D.13238
	addq	%rdx, %rax	# D.13238, D.13239
	movzwl	(%rax), %eax	# *_70, D.13240
	cwtl
	movl	%eax, -48(%rbp)	# tmp242, reg_x
.L563:
	.loc 1 2268 0
	movq	-80(%rbp), %rax	# y, tmp243
	movzwl	(%rax), %eax	# y_18(D)->code, D.13234
	cmpw	$63, %ax	#, D.13234
	jne	.L564	#,
	.loc 1 2270 0
	movq	-80(%rbp), %rax	# y, tmp244
	movq	8(%rax), %rax	# y_18(D)->fld[0].rtx, D.13235
	movl	8(%rax), %eax	# _74->fld[0].rtuint, D.13237
	movl	%eax, -44(%rbp)	# D.13237, reg_y
	.loc 1 2271 0
	movq	-80(%rbp), %rax	# y, tmp245
	movl	16(%rax), %eax	# y_18(D)->fld[1].rtuint, D.13237
	movl	%eax, -36(%rbp)	# D.13237, byte_y
	.loc 1 2273 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.69
	movl	-44(%rbp), %edx	# reg_y, tmp246
	movslq	%edx, %rdx	# tmp246, D.13238
	addq	%rdx, %rdx	# D.13238
	addq	%rdx, %rax	# D.13238, D.13239
	movzwl	(%rax), %eax	# *_82, D.13240
	testw	%ax, %ax	# D.13240
	js	.L566	#,
	.loc 1 2278 0
	movq	-80(%rbp), %rax	# y, tmp247
	movzbl	2(%rax), %eax	# y_18(D)->mode, D.13236
	.loc 1 2275 0
	movzbl	%al, %ecx	# D.13236, D.13241
	movl	-36(%rbp), %edx	# byte_y, byte_y.70
	.loc 1 2276 0
	movq	-80(%rbp), %rax	# y, tmp248
	movq	8(%rax), %rax	# y_18(D)->fld[0].rtx, D.13235
	movzbl	2(%rax), %eax	# _87->mode, D.13236
	.loc 1 2275 0
	movzbl	%al, %esi	# D.13236, D.13241
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.71
	movl	-44(%rbp), %edi	# reg_y, tmp249
	movslq	%edi, %rdi	# tmp249, D.13238
	addq	%rdi, %rdi	# D.13238
	addq	%rdi, %rax	# D.13238, D.13239
	movzwl	(%rax), %eax	# *_93, D.13240
	cwtl
	movl	%eax, %edi	# D.13237,
	call	subreg_regno_offset	#
	movl	%eax, -44(%rbp)	# D.13237, reg_y
	.loc 1 2279 0
	movl	$0, -36(%rbp)	#, byte_y
	jmp	.L566	#
.L564:
	.loc 1 2284 0
	movq	-80(%rbp), %rax	# y, tmp250
	movl	8(%rax), %eax	# y_18(D)->fld[0].rtuint, D.13237
	movl	%eax, -44(%rbp)	# D.13237, reg_y
	.loc 1 2285 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.72
	movl	-44(%rbp), %edx	# reg_y, tmp251
	movslq	%edx, %rdx	# tmp251, D.13238
	addq	%rdx, %rdx	# D.13238
	addq	%rdx, %rax	# D.13238, D.13239
	movzwl	(%rax), %eax	# *_104, D.13240
	testw	%ax, %ax	# D.13240
	js	.L566	#,
	.loc 1 2286 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.73
	movl	-44(%rbp), %edx	# reg_y, tmp252
	movslq	%edx, %rdx	# tmp252, D.13238
	addq	%rdx, %rdx	# D.13238
	addq	%rdx, %rax	# D.13238, D.13239
	movzwl	(%rax), %eax	# *_109, D.13240
	cwtl
	movl	%eax, -44(%rbp)	# tmp253, reg_y
.L566:
	.loc 1 2289 0
	cmpl	$0, -48(%rbp)	#, reg_x
	js	.L567	#,
	.loc 1 2289 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# reg_x, tmp254
	cmpl	-44(%rbp), %eax	# reg_y, tmp254
	jne	.L567	#,
	movl	-40(%rbp), %eax	# byte_x, tmp255
	cmpl	-36(%rbp), %eax	# byte_y, tmp255
	jne	.L567	#,
	.loc 1 2289 0 discriminator 3
	movl	$1, %eax	#, iftmp.74
	jmp	.L568	#
.L567:
	.loc 1 2289 0 discriminator 2
	movl	$0, %eax	#, iftmp.74
.L568:
	.loc 1 2289 0 discriminator 4
	jmp	.L555	#
.L557:
.LBE30:
	.loc 1 2294 0 is_stmt 1
	movq	-80(%rbp), %rax	# y, tmp256
	movzwl	(%rax), %eax	# y_18(D)->code, D.13234
	movzwl	%ax, %eax	# D.13234, D.13237
	cmpl	-28(%rbp), %eax	# code, D.13237
	je	.L569	#,
	.loc 1 2295 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L569:
	.loc 1 2297 0
	movl	-28(%rbp), %eax	# code, tmp258
	subl	$36, %eax	#, tmp257
	cmpl	$33, %eax	#, tmp257
	ja	.L614	#,
	movl	%eax, %eax	# tmp257, tmp259
	movq	.L572(,%rax,8), %rax	#, tmp260
	jmp	*%rax	# tmp260
	.section	.rodata
	.align 8
	.align 4
.L572:
	.quad	.L571
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L573
	.quad	.L573
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L574
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L573
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L575
	.quad	.L576
	.quad	.L573
	.text
.L573:
	.loc 1 2303 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L574:
	.loc 1 2306 0
	movq	-72(%rbp), %rax	# x, tmp261
	movq	8(%rax), %rdx	# x_15(D)->fld[0].rtwint, D.13242
	movq	-80(%rbp), %rax	# y, tmp262
	movq	8(%rax), %rax	# y_18(D)->fld[0].rtwint, D.13242
	cmpq	%rax, %rdx	# D.13242, D.13242
	sete	%al	#, D.13243
	movzbl	%al, %eax	# D.13243, D.13233
	jmp	.L555	#
.L575:
	.loc 1 2310 0
	movq	-72(%rbp), %rax	# x, tmp263
	movzbl	3(%rax), %eax	# *x_15(D), D.13236
	andl	$8, %eax	#, D.13236
	testb	%al, %al	# D.13236
	jne	.L577	#,
	.loc 1 2310 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# y, tmp264
	movzbl	3(%rax), %eax	# *y_18(D), D.13236
	andl	$8, %eax	#, D.13236
	testb	%al, %al	# D.13236
	je	.L578	#,
.L577:
	.loc 1 2311 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp265
	movq	8(%rax), %rdx	# x_15(D)->fld[0].rtx, D.13235
	movq	-80(%rbp), %rax	# y, tmp266
	movq	8(%rax), %rax	# y_18(D)->fld[0].rtx, D.13235
	cmpq	%rax, %rdx	# D.13235, D.13235
	sete	%al	#, D.13243
	movzbl	%al, %eax	# D.13243, D.13233
	jmp	.L555	#
.L578:
	.loc 1 2315 0
	movq	-72(%rbp), %rax	# x, tmp267
	movq	8(%rax), %rax	# x_15(D)->fld[0].rtx, D.13235
	movq	%rax, %rdi	# D.13235,
	call	next_real_insn	#
	movq	%rax, %rbx	#, D.13235
	.loc 1 2316 0
	movq	-80(%rbp), %rax	# y, tmp268
	movq	8(%rax), %rax	# y_18(D)->fld[0].rtx, D.13235
	movq	%rax, %rdi	# D.13235,
	call	next_real_insn	#
	cmpq	%rax, %rbx	# D.13235, D.13235
	sete	%al	#, D.13243
	.loc 1 2315 0
	movzbl	%al, %eax	# D.13243, D.13233
	jmp	.L555	#
.L576:
	.loc 1 2319 0
	movq	-72(%rbp), %rax	# x, tmp269
	movq	8(%rax), %rdx	# x_15(D)->fld[0].rtstr, D.13244
	movq	-80(%rbp), %rax	# y, tmp270
	movq	8(%rax), %rax	# y_18(D)->fld[0].rtstr, D.13244
	cmpq	%rax, %rdx	# D.13244, D.13244
	sete	%al	#, D.13243
	movzbl	%al, %eax	# D.13243, D.13233
	jmp	.L555	#
.L571:
	.loc 1 2323 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L614:
	.loc 1 2326 0
	nop
	.loc 1 2331 0
	movq	-72(%rbp), %rax	# x, tmp271
	movzbl	2(%rax), %edx	# x_15(D)->mode, D.13236
	movq	-80(%rbp), %rax	# y, tmp272
	movzbl	2(%rax), %eax	# y_18(D)->mode, D.13236
	cmpb	%al, %dl	# D.13236, D.13236
	je	.L579	#,
	.loc 1 2332 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L579:
	.loc 1 2338 0
	cmpl	$103, -28(%rbp)	#, code
	je	.L580	#,
	.loc 1 2338 0 is_stmt 0 discriminator 1
	cmpl	$102, -28(%rbp)	#, code
	je	.L580	#,
	movl	-28(%rbp), %eax	# code, code.75
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13245
	cmpb	$99, %al	#, D.13245
	jne	.L581	#,
.L580:
	.loc 1 2339 0 is_stmt 1
	cmpl	$75, -28(%rbp)	#, code
	je	.L581	#,
	.loc 1 2340 0
	movq	-80(%rbp), %rax	# y, tmp274
	movq	8(%rax), %rdx	# y_18(D)->fld[0].rtx, D.13235
	movq	-72(%rbp), %rax	# x, tmp275
	movq	8(%rax), %rax	# x_15(D)->fld[0].rtx, D.13235
	movq	%rdx, %rsi	# D.13235,
	movq	%rax, %rdi	# D.13235,
	call	rtx_renumbered_equal_p	#
	.loc 1 2342 0
	testl	%eax, %eax	# D.13233
	je	.L582	#,
	.loc 1 2341 0
	movq	-80(%rbp), %rax	# y, tmp276
	movq	16(%rax), %rdx	# y_18(D)->fld[1].rtx, D.13235
	movq	-72(%rbp), %rax	# x, tmp277
	movq	16(%rax), %rax	# x_15(D)->fld[1].rtx, D.13235
	movq	%rdx, %rsi	# D.13235,
	movq	%rax, %rdi	# D.13235,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13233
	jne	.L583	#,
.L582:
	.loc 1 2342 0 discriminator 1
	movq	-80(%rbp), %rax	# y, tmp278
	movq	16(%rax), %rdx	# y_18(D)->fld[1].rtx, D.13235
	movq	-72(%rbp), %rax	# x, tmp279
	movq	8(%rax), %rax	# x_15(D)->fld[0].rtx, D.13235
	movq	%rdx, %rsi	# D.13235,
	movq	%rax, %rdi	# D.13235,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13233
	je	.L584	#,
	.loc 1 2343 0
	movq	-80(%rbp), %rax	# y, tmp280
	movq	8(%rax), %rdx	# y_18(D)->fld[0].rtx, D.13235
	movq	-72(%rbp), %rax	# x, tmp281
	movq	16(%rax), %rax	# x_15(D)->fld[1].rtx, D.13235
	movq	%rdx, %rsi	# D.13235,
	movq	%rax, %rdi	# D.13235,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13233
	je	.L584	#,
.L583:
	.loc 1 2342 0
	movl	$1, %eax	#, iftmp.76
	jmp	.L585	#
.L584:
	.loc 1 2342 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.76
.L585:
	.loc 1 2340 0 is_stmt 1
	jmp	.L555	#
.L581:
	.loc 1 2344 0
	movl	-28(%rbp), %eax	# code, code.77
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13245
	cmpb	$60, %al	#, D.13245
	je	.L586	#,
	.loc 1 2344 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# code, code.78
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13245
	cmpb	$50, %al	#, D.13245
	jne	.L587	#,
.L586:
	.loc 1 2345 0 is_stmt 1
	movq	-80(%rbp), %rax	# y, tmp284
	movq	8(%rax), %rdx	# y_18(D)->fld[0].rtx, D.13235
	movq	-72(%rbp), %rax	# x, tmp285
	movq	8(%rax), %rax	# x_15(D)->fld[0].rtx, D.13235
	movq	%rdx, %rsi	# D.13235,
	movq	%rax, %rdi	# D.13235,
	call	rtx_renumbered_equal_p	#
	.loc 1 2346 0
	testl	%eax, %eax	# D.13233
	je	.L588	#,
	.loc 1 2346 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# y, tmp286
	movq	16(%rax), %rdx	# y_18(D)->fld[1].rtx, D.13235
	movq	-72(%rbp), %rax	# x, tmp287
	movq	16(%rax), %rax	# x_15(D)->fld[1].rtx, D.13235
	movq	%rdx, %rsi	# D.13235,
	movq	%rax, %rdi	# D.13235,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13233
	je	.L588	#,
	.loc 1 2346 0 discriminator 3
	movl	$1, %eax	#, iftmp.79
	jmp	.L589	#
.L588:
	.loc 1 2346 0 discriminator 2
	movl	$0, %eax	#, iftmp.79
.L589:
	.loc 1 2345 0 is_stmt 1
	jmp	.L555	#
.L587:
	.loc 1 2347 0
	movl	-28(%rbp), %eax	# code, code.80
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13245
	cmpb	$49, %al	#, D.13245
	jne	.L590	#,
	.loc 1 2348 0
	movq	-80(%rbp), %rax	# y, tmp289
	movq	8(%rax), %rdx	# y_18(D)->fld[0].rtx, D.13235
	movq	-72(%rbp), %rax	# x, tmp290
	movq	8(%rax), %rax	# x_15(D)->fld[0].rtx, D.13235
	movq	%rdx, %rsi	# D.13235,
	movq	%rax, %rdi	# D.13235,
	call	rtx_renumbered_equal_p	#
	jmp	.L555	#
.L590:
	.loc 1 2353 0
	movl	-28(%rbp), %eax	# code, code.81
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp292
	movq	%rax, -24(%rbp)	# tmp292, fmt
	.loc 1 2354 0
	movl	-28(%rbp), %eax	# code, code.82
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.13236
	movzbl	%al, %eax	# D.13236, D.13233
	subl	$1, %eax	#, tmp294
	movl	%eax, -52(%rbp)	# tmp294, i
	jmp	.L591	#
.L612:
.LBB31:
	.loc 1 2357 0
	movl	-52(%rbp), %eax	# i, tmp295
	movslq	%eax, %rdx	# tmp295, D.13246
	movq	-24(%rbp), %rax	# fmt, tmp296
	addq	%rdx, %rax	# D.13246, D.13244
	movzbl	(%rax), %eax	# *_178, D.13245
	movsbl	%al, %eax	# D.13245, D.13233
	subl	$48, %eax	#, tmp297
	cmpl	$71, %eax	#, tmp297
	ja	.L592	#,
	movl	%eax, %eax	# tmp297, tmp298
	movq	.L594(,%rax,8), %rax	#, tmp299
	jmp	*%rax	# tmp299
	.section	.rodata
	.align 8
	.align 4
.L594:
	.quad	.L615
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L595
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L596
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L597
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L592
	.quad	.L598
	.quad	.L599
	.quad	.L600
	.quad	.L592
	.quad	.L601
	.text
.L601:
	.loc 1 2360 0
	movq	-72(%rbp), %rax	# x, tmp300
	movl	-52(%rbp), %edx	# i, tmp302
	movslq	%edx, %rdx	# tmp302, tmp301
	movq	8(%rax,%rdx,8), %rcx	# x_15(D)->fld[i_1].rtwint, D.13242
	movq	-80(%rbp), %rax	# y, tmp303
	movl	-52(%rbp), %edx	# i, tmp305
	movslq	%edx, %rdx	# tmp305, tmp304
	movq	8(%rax,%rdx,8), %rax	# y_18(D)->fld[i_1].rtwint, D.13242
	cmpq	%rax, %rcx	# D.13242, D.13242
	je	.L602	#,
	.loc 1 2361 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L602:
	.loc 1 2362 0
	jmp	.L603	#
.L597:
	.loc 1 2365 0
	movq	-72(%rbp), %rax	# x, tmp306
	movl	-52(%rbp), %edx	# i, tmp308
	movslq	%edx, %rdx	# tmp308, tmp307
	movl	8(%rax,%rdx,8), %ecx	# x_15(D)->fld[i_1].rtint, D.13233
	movq	-80(%rbp), %rax	# y, tmp309
	movl	-52(%rbp), %edx	# i, tmp311
	movslq	%edx, %rdx	# tmp311, tmp310
	movl	8(%rax,%rdx,8), %eax	# y_18(D)->fld[i_1].rtint, D.13233
	cmpl	%eax, %ecx	# D.13233, D.13233
	je	.L604	#,
	.loc 1 2366 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L604:
	.loc 1 2367 0
	jmp	.L603	#
.L599:
	.loc 1 2370 0
	movq	-72(%rbp), %rax	# x, tmp312
	movl	-52(%rbp), %edx	# i, tmp314
	movslq	%edx, %rdx	# tmp314, tmp313
	movq	8(%rax,%rdx,8), %rcx	# x_15(D)->fld[i_1].rttree, D.13247
	movq	-80(%rbp), %rax	# y, tmp315
	movl	-52(%rbp), %edx	# i, tmp317
	movslq	%edx, %rdx	# tmp317, tmp316
	movq	8(%rax,%rdx,8), %rax	# y_18(D)->fld[i_1].rttree, D.13247
	cmpq	%rax, %rcx	# D.13247, D.13247
	je	.L605	#,
	.loc 1 2371 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L605:
	.loc 1 2372 0
	jmp	.L603	#
.L598:
	.loc 1 2375 0
	movq	-80(%rbp), %rax	# y, tmp318
	movl	-52(%rbp), %edx	# i, tmp320
	movslq	%edx, %rdx	# tmp320, tmp319
	movq	8(%rax,%rdx,8), %rdx	# y_18(D)->fld[i_1].rtstr, D.13244
	movq	-72(%rbp), %rax	# x, tmp321
	movl	-52(%rbp), %ecx	# i, tmp323
	movslq	%ecx, %rcx	# tmp323, tmp322
	movq	8(%rax,%rcx,8), %rax	# x_15(D)->fld[i_1].rtstr, D.13244
	movq	%rdx, %rsi	# D.13244,
	movq	%rax, %rdi	# D.13244,
	call	strcmp	#
	testl	%eax, %eax	# D.13233
	je	.L606	#,
	.loc 1 2376 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L606:
	.loc 1 2377 0
	jmp	.L603	#
.L596:
	.loc 1 2380 0
	movq	-80(%rbp), %rax	# y, tmp324
	movl	-52(%rbp), %edx	# i, tmp326
	movslq	%edx, %rdx	# tmp326, tmp325
	movq	8(%rax,%rdx,8), %rdx	# y_18(D)->fld[i_1].rtx, D.13235
	movq	-72(%rbp), %rax	# x, tmp327
	movl	-52(%rbp), %ecx	# i, tmp329
	movslq	%ecx, %rcx	# tmp329, tmp328
	movq	8(%rax,%rcx,8), %rax	# x_15(D)->fld[i_1].rtx, D.13235
	movq	%rdx, %rsi	# D.13235,
	movq	%rax, %rdi	# D.13235,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13233
	jne	.L607	#,
	.loc 1 2381 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L607:
	.loc 1 2382 0
	jmp	.L603	#
.L600:
	.loc 1 2385 0
	movq	-72(%rbp), %rax	# x, tmp330
	movl	-52(%rbp), %edx	# i, tmp332
	movslq	%edx, %rdx	# tmp332, tmp331
	movq	8(%rax,%rdx,8), %rcx	# x_15(D)->fld[i_1].rtx, D.13235
	movq	-80(%rbp), %rax	# y, tmp333
	movl	-52(%rbp), %edx	# i, tmp335
	movslq	%edx, %rdx	# tmp335, tmp334
	movq	8(%rax,%rdx,8), %rax	# y_18(D)->fld[i_1].rtx, D.13235
	cmpq	%rax, %rcx	# D.13235, D.13235
	je	.L593	#,
	.loc 1 2386 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L593:
	.loc 1 2389 0
	jmp	.L615	#
.L595:
	.loc 1 2392 0
	movq	-72(%rbp), %rax	# x, tmp336
	movl	-52(%rbp), %edx	# i, tmp338
	movslq	%edx, %rdx	# tmp338, tmp337
	movq	8(%rax,%rdx,8), %rax	# x_15(D)->fld[i_1].rtvec, D.13248
	movl	(%rax), %ecx	# _201->num_elem, D.13233
	movq	-80(%rbp), %rax	# y, tmp339
	movl	-52(%rbp), %edx	# i, tmp341
	movslq	%edx, %rdx	# tmp341, tmp340
	movq	8(%rax,%rdx,8), %rax	# y_18(D)->fld[i_1].rtvec, D.13248
	movl	(%rax), %eax	# _203->num_elem, D.13233
	cmpl	%eax, %ecx	# D.13233, D.13233
	je	.L608	#,
	.loc 1 2393 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L608:
	.loc 1 2394 0
	movq	-72(%rbp), %rax	# x, tmp342
	movl	-52(%rbp), %edx	# i, tmp344
	movslq	%edx, %rdx	# tmp344, tmp343
	movq	8(%rax,%rdx,8), %rax	# x_15(D)->fld[i_1].rtvec, D.13248
	movl	(%rax), %eax	# _206->num_elem, D.13233
	subl	$1, %eax	#, tmp345
	movl	%eax, -32(%rbp)	# tmp345, j
	jmp	.L609	#
.L611:
	.loc 1 2395 0
	movq	-80(%rbp), %rax	# y, tmp346
	movl	-52(%rbp), %edx	# i, tmp348
	movslq	%edx, %rdx	# tmp348, tmp347
	movq	8(%rax,%rdx,8), %rax	# y_18(D)->fld[i_1].rtvec, D.13248
	movl	-32(%rbp), %edx	# j, tmp350
	movslq	%edx, %rdx	# tmp350, tmp349
	movq	8(%rax,%rdx,8), %rdx	# _209->elem, D.13235
	movq	-72(%rbp), %rax	# x, tmp351
	movl	-52(%rbp), %ecx	# i, tmp353
	movslq	%ecx, %rcx	# tmp353, tmp352
	movq	8(%rax,%rcx,8), %rax	# x_15(D)->fld[i_1].rtvec, D.13248
	movl	-32(%rbp), %ecx	# j, tmp355
	movslq	%ecx, %rcx	# tmp355, tmp354
	movq	8(%rax,%rcx,8), %rax	# _211->elem, D.13235
	movq	%rdx, %rsi	# D.13235,
	movq	%rax, %rdi	# D.13235,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13233
	jne	.L610	#,
	.loc 1 2396 0
	movl	$0, %eax	#, D.13233
	jmp	.L555	#
.L610:
	.loc 1 2394 0
	subl	$1, -32(%rbp)	#, j
.L609:
	.loc 1 2394 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, j
	jns	.L611	#,
	.loc 1 2397 0 is_stmt 1
	jmp	.L603	#
.L592:
	.loc 1 2400 0
	movl	$__FUNCTION__.11328, %edx	#,
	movl	$2400, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L615:
	.loc 1 2389 0
	nop
.L603:
.LBE31:
	.loc 1 2354 0
	subl	$1, -52(%rbp)	#, i
.L591:
	.loc 1 2354 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, i
	jns	.L612	#,
	.loc 1 2403 0 is_stmt 1
	movl	$1, %eax	#, D.13233
.L555:
	.loc 1 2404 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	rtx_renumbered_equal_p, .-rtx_renumbered_equal_p
	.globl	true_regnum
	.type	true_regnum, @function
true_regnum:
.LFB49:
	.loc 1 2414 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 2415 0
	movq	-24(%rbp), %rax	# x, tmp89
	movzwl	(%rax), %eax	# x_2(D)->code, D.13250
	cmpw	$61, %ax	#, D.13250
	jne	.L617	#,
	.loc 1 2417 0
	movq	-24(%rbp), %rax	# x, tmp90
	movl	8(%rax), %eax	# x_2(D)->fld[0].rtuint, D.13251
	cmpl	$52, %eax	#, D.13251
	jbe	.L618	#,
	.loc 1 2417 0 is_stmt 0 discriminator 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.83
	movq	-24(%rbp), %rax	# x, tmp91
	movl	8(%rax), %eax	# x_2(D)->fld[0].rtuint, D.13251
	movl	%eax, %eax	# D.13251, D.13252
	addq	%rax, %rax	# D.13252
	addq	%rdx, %rax	# reg_renumber.83, D.13253
	movzwl	(%rax), %eax	# *_9, D.13254
	testw	%ax, %ax	# D.13254
	js	.L618	#,
	.loc 1 2418 0 is_stmt 1
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.84
	movq	-24(%rbp), %rax	# x, tmp92
	movl	8(%rax), %eax	# x_2(D)->fld[0].rtuint, D.13251
	movl	%eax, %eax	# D.13251, D.13252
	addq	%rax, %rax	# D.13252
	addq	%rdx, %rax	# reg_renumber.84, D.13253
	movzwl	(%rax), %eax	# *_15, D.13254
	cwtl
	jmp	.L619	#
.L618:
	.loc 1 2419 0
	movq	-24(%rbp), %rax	# x, tmp93
	movl	8(%rax), %eax	# x_2(D)->fld[0].rtuint, D.13251
	jmp	.L619	#
.L617:
	.loc 1 2421 0
	movq	-24(%rbp), %rax	# x, tmp94
	movzwl	(%rax), %eax	# x_2(D)->code, D.13250
	cmpw	$63, %ax	#, D.13250
	jne	.L620	#,
.LBB32:
	.loc 1 2423 0
	movq	-24(%rbp), %rax	# x, tmp95
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.13255
	movq	%rax, %rdi	# D.13255,
	call	true_regnum	#
	movl	%eax, -4(%rbp)	# tmp96, base
	.loc 1 2424 0
	cmpl	$0, -4(%rbp)	#, base
	js	.L620	#,
	.loc 1 2424 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, base
	jg	.L620	#,
	.loc 1 2427 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp97
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.13256
	.loc 1 2425 0
	movzbl	%al, %ecx	# D.13256, D.13257
	movq	-24(%rbp), %rax	# x, tmp98
	movl	16(%rax), %edx	# x_2(D)->fld[1].rtuint, D.13251
	.loc 1 2426 0
	movq	-24(%rbp), %rax	# x, tmp99
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.13255
	movzbl	2(%rax), %eax	# _26->mode, D.13256
	.loc 1 2425 0
	movzbl	%al, %esi	# D.13256, D.13257
	movq	-24(%rbp), %rax	# x, tmp100
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.13255
	movl	8(%rax), %eax	# _29->fld[0].rtuint, D.13251
	movl	%eax, %edi	# D.13251,
	call	subreg_regno_offset	#
	movl	-4(%rbp), %edx	# base, base.85
	addl	%edx, %eax	# base.85, D.13251
	jmp	.L619	#
.L620:
.LBE32:
	.loc 1 2429 0
	movl	$-1, %eax	#, D.13249
.L619:
	.loc 1 2430 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	true_regnum, .-true_regnum
	.section	.rodata
	.align 16
	.type	__FUNCTION__.10866, @object
	.size	__FUNCTION__.10866, 25
__FUNCTION__.10866:
	.string	"duplicate_loop_exit_test"
	.align 16
	.type	__FUNCTION__.10950, @object
	.size	__FUNCTION__.10950, 18
__FUNCTION__.10950:
	.string	"reverse_condition"
	.align 32
	.type	__FUNCTION__.10969, @object
	.size	__FUNCTION__.10969, 34
__FUNCTION__.10969:
	.string	"reverse_condition_maybe_unordered"
	.type	__FUNCTION__.10992, @object
	.size	__FUNCTION__.10992, 15
__FUNCTION__.10992:
	.string	"swap_condition"
	.align 16
	.type	__FUNCTION__.11007, @object
	.size	__FUNCTION__.11007, 19
__FUNCTION__.11007:
	.string	"unsigned_condition"
	.align 16
	.type	__FUNCTION__.11022, @object
	.size	__FUNCTION__.11022, 17
__FUNCTION__.11022:
	.string	"signed_condition"
	.align 16
	.type	__FUNCTION__.11117, @object
	.size	__FUNCTION__.11117, 16
__FUNCTION__.11117:
	.string	"mark_jump_label"
	.type	__FUNCTION__.11139, @object
	.size	__FUNCTION__.11139, 15
__FUNCTION__.11139:
	.string	"delete_barrier"
	.type	__FUNCTION__.11275, @object
	.size	__FUNCTION__.11275, 13
__FUNCTION__.11275:
	.string	"invert_exp_1"
	.type	__FUNCTION__.11292, @object
	.size	__FUNCTION__.11292, 12
__FUNCTION__.11292:
	.string	"invert_jump"
	.align 16
	.type	__FUNCTION__.11328, @object
	.size	__FUNCTION__.11328, 23
__FUNCTION__.11328:
	.string	"rtx_renumbered_equal_p"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "i386.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "machmode.h"
	.file 7 "varray.h"
	.file 8 "regs.h"
	.file 9 "function.h"
	.file 10 "predict.h"
	.file 11 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2caa
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF627
	.byte	0x1
	.long	.LASF628
	.long	.LASF629
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
	.long	0x1bc
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x1bc
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x993
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
	.long	0x9a3
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
	.long	.LASF630
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF17
	.byte	0x1c
	.byte	0x4
	.value	0x683
	.long	0x1b0
	.uleb128 0xd
	.long	.LASF18
	.byte	0x4
	.value	0x684
	.long	0x139
	.byte	0
	.uleb128 0xd
	.long	.LASF19
	.byte	0x4
	.value	0x685
	.long	0x139
	.byte	0x4
	.uleb128 0xd
	.long	.LASF20
	.byte	0x4
	.value	0x686
	.long	0x139
	.byte	0x8
	.uleb128 0xd
	.long	.LASF21
	.byte	0x4
	.value	0x687
	.long	0x139
	.byte	0xc
	.uleb128 0xd
	.long	.LASF22
	.byte	0x4
	.value	0x688
	.long	0x139
	.byte	0x10
	.uleb128 0xd
	.long	.LASF23
	.byte	0x4
	.value	0x689
	.long	0x139
	.byte	0x14
	.uleb128 0xd
	.long	.LASF24
	.byte	0x4
	.value	0x68a
	.long	0x139
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.long	.LASF25
	.byte	0x4
	.value	0x68b
	.long	0x147
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF26
	.uleb128 0xf
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF27
	.uleb128 0x7
	.long	.LASF28
	.byte	0x5
	.byte	0xd4
	.long	0x1d7
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF29
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF30
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF31
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF32
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF33
	.uleb128 0x3
	.byte	0x8
	.long	0x200
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF34
	.uleb128 0x10
	.long	0x200
	.long	0x217
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x21d
	.uleb128 0x12
	.long	0x200
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF35
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF36
	.uleb128 0x13
	.long	.LASF97
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.long	0x3a5
	.uleb128 0x14
	.long	.LASF37
	.sleb128 0
	.uleb128 0x14
	.long	.LASF38
	.sleb128 1
	.uleb128 0x14
	.long	.LASF39
	.sleb128 2
	.uleb128 0x14
	.long	.LASF40
	.sleb128 3
	.uleb128 0x14
	.long	.LASF41
	.sleb128 4
	.uleb128 0x14
	.long	.LASF42
	.sleb128 5
	.uleb128 0x14
	.long	.LASF43
	.sleb128 6
	.uleb128 0x14
	.long	.LASF44
	.sleb128 7
	.uleb128 0x14
	.long	.LASF45
	.sleb128 8
	.uleb128 0x14
	.long	.LASF46
	.sleb128 9
	.uleb128 0x14
	.long	.LASF47
	.sleb128 10
	.uleb128 0x14
	.long	.LASF48
	.sleb128 11
	.uleb128 0x14
	.long	.LASF49
	.sleb128 12
	.uleb128 0x14
	.long	.LASF50
	.sleb128 13
	.uleb128 0x14
	.long	.LASF51
	.sleb128 14
	.uleb128 0x14
	.long	.LASF52
	.sleb128 15
	.uleb128 0x14
	.long	.LASF53
	.sleb128 16
	.uleb128 0x14
	.long	.LASF54
	.sleb128 17
	.uleb128 0x14
	.long	.LASF55
	.sleb128 18
	.uleb128 0x14
	.long	.LASF56
	.sleb128 19
	.uleb128 0x14
	.long	.LASF57
	.sleb128 20
	.uleb128 0x14
	.long	.LASF58
	.sleb128 21
	.uleb128 0x14
	.long	.LASF59
	.sleb128 22
	.uleb128 0x14
	.long	.LASF60
	.sleb128 23
	.uleb128 0x14
	.long	.LASF61
	.sleb128 24
	.uleb128 0x14
	.long	.LASF62
	.sleb128 25
	.uleb128 0x14
	.long	.LASF63
	.sleb128 26
	.uleb128 0x14
	.long	.LASF64
	.sleb128 27
	.uleb128 0x14
	.long	.LASF65
	.sleb128 28
	.uleb128 0x14
	.long	.LASF66
	.sleb128 29
	.uleb128 0x14
	.long	.LASF67
	.sleb128 30
	.uleb128 0x14
	.long	.LASF68
	.sleb128 31
	.uleb128 0x14
	.long	.LASF69
	.sleb128 32
	.uleb128 0x14
	.long	.LASF70
	.sleb128 33
	.uleb128 0x14
	.long	.LASF71
	.sleb128 34
	.uleb128 0x14
	.long	.LASF72
	.sleb128 35
	.uleb128 0x14
	.long	.LASF73
	.sleb128 36
	.uleb128 0x14
	.long	.LASF74
	.sleb128 37
	.uleb128 0x14
	.long	.LASF75
	.sleb128 38
	.uleb128 0x14
	.long	.LASF76
	.sleb128 39
	.uleb128 0x14
	.long	.LASF77
	.sleb128 40
	.uleb128 0x14
	.long	.LASF78
	.sleb128 41
	.uleb128 0x14
	.long	.LASF79
	.sleb128 42
	.uleb128 0x14
	.long	.LASF80
	.sleb128 43
	.uleb128 0x14
	.long	.LASF81
	.sleb128 44
	.uleb128 0x14
	.long	.LASF82
	.sleb128 45
	.uleb128 0x14
	.long	.LASF83
	.sleb128 46
	.uleb128 0x14
	.long	.LASF84
	.sleb128 47
	.uleb128 0x14
	.long	.LASF85
	.sleb128 48
	.uleb128 0x14
	.long	.LASF86
	.sleb128 49
	.uleb128 0x14
	.long	.LASF87
	.sleb128 50
	.uleb128 0x14
	.long	.LASF88
	.sleb128 51
	.uleb128 0x14
	.long	.LASF89
	.sleb128 52
	.uleb128 0x14
	.long	.LASF90
	.sleb128 53
	.uleb128 0x14
	.long	.LASF91
	.sleb128 54
	.uleb128 0x14
	.long	.LASF92
	.sleb128 55
	.uleb128 0x14
	.long	.LASF93
	.sleb128 56
	.uleb128 0x14
	.long	.LASF94
	.sleb128 57
	.uleb128 0x14
	.long	.LASF95
	.sleb128 58
	.uleb128 0x14
	.long	.LASF96
	.sleb128 59
	.byte	0
	.uleb128 0x13
	.long	.LASF98
	.byte	0x4
	.byte	0x6
	.byte	0x2c
	.long	0x3ee
	.uleb128 0x14
	.long	.LASF99
	.sleb128 0
	.uleb128 0x14
	.long	.LASF100
	.sleb128 1
	.uleb128 0x14
	.long	.LASF101
	.sleb128 2
	.uleb128 0x14
	.long	.LASF102
	.sleb128 3
	.uleb128 0x14
	.long	.LASF103
	.sleb128 4
	.uleb128 0x14
	.long	.LASF104
	.sleb128 5
	.uleb128 0x14
	.long	.LASF105
	.sleb128 6
	.uleb128 0x14
	.long	.LASF106
	.sleb128 7
	.uleb128 0x14
	.long	.LASF107
	.sleb128 8
	.uleb128 0x14
	.long	.LASF108
	.sleb128 9
	.byte	0
	.uleb128 0x13
	.long	.LASF109
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x7ea
	.uleb128 0x14
	.long	.LASF110
	.sleb128 0
	.uleb128 0x15
	.string	"NIL"
	.sleb128 1
	.uleb128 0x14
	.long	.LASF111
	.sleb128 2
	.uleb128 0x14
	.long	.LASF112
	.sleb128 3
	.uleb128 0x14
	.long	.LASF113
	.sleb128 4
	.uleb128 0x14
	.long	.LASF114
	.sleb128 5
	.uleb128 0x14
	.long	.LASF115
	.sleb128 6
	.uleb128 0x14
	.long	.LASF116
	.sleb128 7
	.uleb128 0x14
	.long	.LASF117
	.sleb128 8
	.uleb128 0x14
	.long	.LASF118
	.sleb128 9
	.uleb128 0x14
	.long	.LASF119
	.sleb128 10
	.uleb128 0x14
	.long	.LASF120
	.sleb128 11
	.uleb128 0x14
	.long	.LASF121
	.sleb128 12
	.uleb128 0x14
	.long	.LASF122
	.sleb128 13
	.uleb128 0x14
	.long	.LASF123
	.sleb128 14
	.uleb128 0x14
	.long	.LASF124
	.sleb128 15
	.uleb128 0x14
	.long	.LASF125
	.sleb128 16
	.uleb128 0x14
	.long	.LASF126
	.sleb128 17
	.uleb128 0x14
	.long	.LASF127
	.sleb128 18
	.uleb128 0x14
	.long	.LASF128
	.sleb128 19
	.uleb128 0x14
	.long	.LASF129
	.sleb128 20
	.uleb128 0x14
	.long	.LASF130
	.sleb128 21
	.uleb128 0x14
	.long	.LASF131
	.sleb128 22
	.uleb128 0x14
	.long	.LASF132
	.sleb128 23
	.uleb128 0x14
	.long	.LASF133
	.sleb128 24
	.uleb128 0x14
	.long	.LASF134
	.sleb128 25
	.uleb128 0x14
	.long	.LASF135
	.sleb128 26
	.uleb128 0x14
	.long	.LASF136
	.sleb128 27
	.uleb128 0x14
	.long	.LASF137
	.sleb128 28
	.uleb128 0x14
	.long	.LASF138
	.sleb128 29
	.uleb128 0x14
	.long	.LASF139
	.sleb128 30
	.uleb128 0x14
	.long	.LASF140
	.sleb128 31
	.uleb128 0x14
	.long	.LASF141
	.sleb128 32
	.uleb128 0x14
	.long	.LASF142
	.sleb128 33
	.uleb128 0x14
	.long	.LASF143
	.sleb128 34
	.uleb128 0x14
	.long	.LASF144
	.sleb128 35
	.uleb128 0x14
	.long	.LASF145
	.sleb128 36
	.uleb128 0x14
	.long	.LASF146
	.sleb128 37
	.uleb128 0x14
	.long	.LASF147
	.sleb128 38
	.uleb128 0x14
	.long	.LASF148
	.sleb128 39
	.uleb128 0x14
	.long	.LASF149
	.sleb128 40
	.uleb128 0x14
	.long	.LASF150
	.sleb128 41
	.uleb128 0x14
	.long	.LASF151
	.sleb128 42
	.uleb128 0x14
	.long	.LASF152
	.sleb128 43
	.uleb128 0x14
	.long	.LASF153
	.sleb128 44
	.uleb128 0x14
	.long	.LASF154
	.sleb128 45
	.uleb128 0x14
	.long	.LASF155
	.sleb128 46
	.uleb128 0x15
	.string	"SET"
	.sleb128 47
	.uleb128 0x15
	.string	"USE"
	.sleb128 48
	.uleb128 0x14
	.long	.LASF156
	.sleb128 49
	.uleb128 0x14
	.long	.LASF157
	.sleb128 50
	.uleb128 0x14
	.long	.LASF158
	.sleb128 51
	.uleb128 0x14
	.long	.LASF159
	.sleb128 52
	.uleb128 0x14
	.long	.LASF160
	.sleb128 53
	.uleb128 0x14
	.long	.LASF161
	.sleb128 54
	.uleb128 0x14
	.long	.LASF162
	.sleb128 55
	.uleb128 0x14
	.long	.LASF163
	.sleb128 56
	.uleb128 0x14
	.long	.LASF164
	.sleb128 57
	.uleb128 0x14
	.long	.LASF165
	.sleb128 58
	.uleb128 0x15
	.string	"PC"
	.sleb128 59
	.uleb128 0x14
	.long	.LASF166
	.sleb128 60
	.uleb128 0x15
	.string	"REG"
	.sleb128 61
	.uleb128 0x14
	.long	.LASF167
	.sleb128 62
	.uleb128 0x14
	.long	.LASF168
	.sleb128 63
	.uleb128 0x14
	.long	.LASF169
	.sleb128 64
	.uleb128 0x14
	.long	.LASF170
	.sleb128 65
	.uleb128 0x15
	.string	"MEM"
	.sleb128 66
	.uleb128 0x14
	.long	.LASF171
	.sleb128 67
	.uleb128 0x14
	.long	.LASF172
	.sleb128 68
	.uleb128 0x15
	.string	"CC0"
	.sleb128 69
	.uleb128 0x14
	.long	.LASF173
	.sleb128 70
	.uleb128 0x14
	.long	.LASF174
	.sleb128 71
	.uleb128 0x14
	.long	.LASF175
	.sleb128 72
	.uleb128 0x14
	.long	.LASF176
	.sleb128 73
	.uleb128 0x14
	.long	.LASF177
	.sleb128 74
	.uleb128 0x14
	.long	.LASF178
	.sleb128 75
	.uleb128 0x14
	.long	.LASF179
	.sleb128 76
	.uleb128 0x15
	.string	"NEG"
	.sleb128 77
	.uleb128 0x14
	.long	.LASF180
	.sleb128 78
	.uleb128 0x15
	.string	"DIV"
	.sleb128 79
	.uleb128 0x15
	.string	"MOD"
	.sleb128 80
	.uleb128 0x14
	.long	.LASF181
	.sleb128 81
	.uleb128 0x14
	.long	.LASF182
	.sleb128 82
	.uleb128 0x15
	.string	"AND"
	.sleb128 83
	.uleb128 0x15
	.string	"IOR"
	.sleb128 84
	.uleb128 0x15
	.string	"XOR"
	.sleb128 85
	.uleb128 0x15
	.string	"NOT"
	.sleb128 86
	.uleb128 0x14
	.long	.LASF183
	.sleb128 87
	.uleb128 0x14
	.long	.LASF184
	.sleb128 88
	.uleb128 0x14
	.long	.LASF185
	.sleb128 89
	.uleb128 0x14
	.long	.LASF186
	.sleb128 90
	.uleb128 0x14
	.long	.LASF187
	.sleb128 91
	.uleb128 0x14
	.long	.LASF188
	.sleb128 92
	.uleb128 0x14
	.long	.LASF189
	.sleb128 93
	.uleb128 0x14
	.long	.LASF190
	.sleb128 94
	.uleb128 0x14
	.long	.LASF191
	.sleb128 95
	.uleb128 0x14
	.long	.LASF192
	.sleb128 96
	.uleb128 0x14
	.long	.LASF193
	.sleb128 97
	.uleb128 0x14
	.long	.LASF194
	.sleb128 98
	.uleb128 0x14
	.long	.LASF195
	.sleb128 99
	.uleb128 0x14
	.long	.LASF196
	.sleb128 100
	.uleb128 0x14
	.long	.LASF197
	.sleb128 101
	.uleb128 0x15
	.string	"NE"
	.sleb128 102
	.uleb128 0x15
	.string	"EQ"
	.sleb128 103
	.uleb128 0x15
	.string	"GE"
	.sleb128 104
	.uleb128 0x15
	.string	"GT"
	.sleb128 105
	.uleb128 0x15
	.string	"LE"
	.sleb128 106
	.uleb128 0x15
	.string	"LT"
	.sleb128 107
	.uleb128 0x15
	.string	"GEU"
	.sleb128 108
	.uleb128 0x15
	.string	"GTU"
	.sleb128 109
	.uleb128 0x15
	.string	"LEU"
	.sleb128 110
	.uleb128 0x15
	.string	"LTU"
	.sleb128 111
	.uleb128 0x14
	.long	.LASF198
	.sleb128 112
	.uleb128 0x14
	.long	.LASF199
	.sleb128 113
	.uleb128 0x14
	.long	.LASF200
	.sleb128 114
	.uleb128 0x14
	.long	.LASF201
	.sleb128 115
	.uleb128 0x14
	.long	.LASF202
	.sleb128 116
	.uleb128 0x14
	.long	.LASF203
	.sleb128 117
	.uleb128 0x14
	.long	.LASF204
	.sleb128 118
	.uleb128 0x14
	.long	.LASF205
	.sleb128 119
	.uleb128 0x14
	.long	.LASF206
	.sleb128 120
	.uleb128 0x14
	.long	.LASF207
	.sleb128 121
	.uleb128 0x14
	.long	.LASF208
	.sleb128 122
	.uleb128 0x14
	.long	.LASF209
	.sleb128 123
	.uleb128 0x14
	.long	.LASF210
	.sleb128 124
	.uleb128 0x14
	.long	.LASF211
	.sleb128 125
	.uleb128 0x15
	.string	"FIX"
	.sleb128 126
	.uleb128 0x14
	.long	.LASF212
	.sleb128 127
	.uleb128 0x14
	.long	.LASF213
	.sleb128 128
	.uleb128 0x15
	.string	"ABS"
	.sleb128 129
	.uleb128 0x14
	.long	.LASF214
	.sleb128 130
	.uleb128 0x15
	.string	"FFS"
	.sleb128 131
	.uleb128 0x14
	.long	.LASF215
	.sleb128 132
	.uleb128 0x14
	.long	.LASF216
	.sleb128 133
	.uleb128 0x14
	.long	.LASF217
	.sleb128 134
	.uleb128 0x14
	.long	.LASF218
	.sleb128 135
	.uleb128 0x14
	.long	.LASF219
	.sleb128 136
	.uleb128 0x14
	.long	.LASF220
	.sleb128 137
	.uleb128 0x14
	.long	.LASF221
	.sleb128 138
	.uleb128 0x14
	.long	.LASF222
	.sleb128 139
	.uleb128 0x14
	.long	.LASF223
	.sleb128 140
	.uleb128 0x14
	.long	.LASF224
	.sleb128 141
	.uleb128 0x14
	.long	.LASF225
	.sleb128 142
	.uleb128 0x14
	.long	.LASF226
	.sleb128 143
	.uleb128 0x14
	.long	.LASF227
	.sleb128 144
	.uleb128 0x14
	.long	.LASF228
	.sleb128 145
	.uleb128 0x14
	.long	.LASF229
	.sleb128 146
	.uleb128 0x14
	.long	.LASF230
	.sleb128 147
	.uleb128 0x14
	.long	.LASF231
	.sleb128 148
	.uleb128 0x14
	.long	.LASF232
	.sleb128 149
	.uleb128 0x14
	.long	.LASF233
	.sleb128 150
	.uleb128 0x14
	.long	.LASF234
	.sleb128 151
	.uleb128 0x15
	.string	"PHI"
	.sleb128 152
	.uleb128 0x14
	.long	.LASF235
	.sleb128 153
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x86b
	.uleb128 0x5
	.long	.LASF236
	.byte	0x2
	.byte	0x47
	.long	0x1bc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF237
	.byte	0x2
	.byte	0x49
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF238
	.byte	0x2
	.byte	0x4a
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF239
	.byte	0x2
	.byte	0x4c
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF240
	.byte	0x2
	.byte	0x4e
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF241
	.byte	0x2
	.byte	0x50
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF242
	.byte	0x2
	.byte	0x53
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF243
	.byte	0x2
	.byte	0x55
	.long	0x1bc
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF244
	.byte	0x2
	.byte	0x56
	.long	0x7ea
	.uleb128 0x16
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x8bb
	.uleb128 0x8
	.long	.LASF245
	.byte	0x2
	.byte	0x5e
	.long	0x1c5
	.byte	0
	.uleb128 0x8
	.long	.LASF246
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF247
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF248
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF249
	.byte	0x2
	.byte	0x62
	.long	0x1bc
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF250
	.byte	0x2
	.byte	0x63
	.long	0x876
	.uleb128 0x17
	.long	.LASF334
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x961
	.uleb128 0x18
	.long	.LASF251
	.byte	0x2
	.byte	0x69
	.long	0x1c5
	.uleb128 0x18
	.long	.LASF252
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x18
	.long	.LASF253
	.byte	0x2
	.byte	0x6b
	.long	0x1bc
	.uleb128 0x18
	.long	.LASF254
	.byte	0x2
	.byte	0x6c
	.long	0x217
	.uleb128 0x19
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x18
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x18
	.long	.LASF255
	.byte	0x2
	.byte	0x6f
	.long	0x230
	.uleb128 0x18
	.long	.LASF256
	.byte	0x2
	.byte	0x70
	.long	0x86b
	.uleb128 0x18
	.long	.LASF257
	.byte	0x2
	.byte	0x71
	.long	0x966
	.uleb128 0x18
	.long	.LASF258
	.byte	0x2
	.byte	0x72
	.long	0x971
	.uleb128 0x18
	.long	.LASF259
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x19
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x97c
	.uleb128 0x18
	.long	.LASF260
	.byte	0x2
	.byte	0x75
	.long	0x982
	.byte	0
	.uleb128 0x1a
	.long	.LASF261
	.uleb128 0x3
	.byte	0x8
	.long	0x961
	.uleb128 0x1a
	.long	.LASF262
	.uleb128 0x3
	.byte	0x8
	.long	0x96c
	.uleb128 0x1a
	.long	.LASF263
	.uleb128 0x3
	.byte	0x8
	.long	0x977
	.uleb128 0x3
	.byte	0x8
	.long	0x8bb
	.uleb128 0x7
	.long	.LASF264
	.byte	0x2
	.byte	0x76
	.long	0x8c6
	.uleb128 0x10
	.long	0x988
	.long	0x9a3
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x2d
	.long	0x9b3
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF265
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xa75
	.uleb128 0x14
	.long	.LASF266
	.sleb128 1
	.uleb128 0x14
	.long	.LASF267
	.sleb128 2
	.uleb128 0x14
	.long	.LASF268
	.sleb128 3
	.uleb128 0x14
	.long	.LASF269
	.sleb128 4
	.uleb128 0x14
	.long	.LASF270
	.sleb128 5
	.uleb128 0x14
	.long	.LASF271
	.sleb128 6
	.uleb128 0x14
	.long	.LASF272
	.sleb128 7
	.uleb128 0x14
	.long	.LASF273
	.sleb128 8
	.uleb128 0x14
	.long	.LASF274
	.sleb128 9
	.uleb128 0x14
	.long	.LASF275
	.sleb128 10
	.uleb128 0x14
	.long	.LASF276
	.sleb128 11
	.uleb128 0x14
	.long	.LASF277
	.sleb128 12
	.uleb128 0x14
	.long	.LASF278
	.sleb128 13
	.uleb128 0x14
	.long	.LASF279
	.sleb128 14
	.uleb128 0x14
	.long	.LASF280
	.sleb128 15
	.uleb128 0x14
	.long	.LASF281
	.sleb128 16
	.uleb128 0x14
	.long	.LASF282
	.sleb128 17
	.uleb128 0x14
	.long	.LASF283
	.sleb128 18
	.uleb128 0x14
	.long	.LASF284
	.sleb128 19
	.uleb128 0x14
	.long	.LASF285
	.sleb128 20
	.uleb128 0x14
	.long	.LASF286
	.sleb128 21
	.uleb128 0x14
	.long	.LASF287
	.sleb128 22
	.uleb128 0x14
	.long	.LASF288
	.sleb128 23
	.uleb128 0x14
	.long	.LASF289
	.sleb128 24
	.uleb128 0x14
	.long	.LASF290
	.sleb128 25
	.uleb128 0x14
	.long	.LASF291
	.sleb128 26
	.uleb128 0x14
	.long	.LASF292
	.sleb128 27
	.uleb128 0x14
	.long	.LASF293
	.sleb128 28
	.uleb128 0x14
	.long	.LASF294
	.sleb128 29
	.uleb128 0x14
	.long	.LASF295
	.sleb128 30
	.byte	0
	.uleb128 0x1b
	.long	.LASF296
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xb24
	.uleb128 0x14
	.long	.LASF297
	.sleb128 -100
	.uleb128 0x14
	.long	.LASF298
	.sleb128 -99
	.uleb128 0x14
	.long	.LASF299
	.sleb128 -98
	.uleb128 0x14
	.long	.LASF300
	.sleb128 -97
	.uleb128 0x14
	.long	.LASF301
	.sleb128 -96
	.uleb128 0x14
	.long	.LASF302
	.sleb128 -95
	.uleb128 0x14
	.long	.LASF303
	.sleb128 -94
	.uleb128 0x14
	.long	.LASF304
	.sleb128 -93
	.uleb128 0x14
	.long	.LASF305
	.sleb128 -92
	.uleb128 0x14
	.long	.LASF306
	.sleb128 -91
	.uleb128 0x14
	.long	.LASF307
	.sleb128 -90
	.uleb128 0x14
	.long	.LASF308
	.sleb128 -89
	.uleb128 0x14
	.long	.LASF309
	.sleb128 -88
	.uleb128 0x14
	.long	.LASF310
	.sleb128 -87
	.uleb128 0x14
	.long	.LASF311
	.sleb128 -86
	.uleb128 0x14
	.long	.LASF312
	.sleb128 -85
	.uleb128 0x14
	.long	.LASF313
	.sleb128 -84
	.uleb128 0x14
	.long	.LASF314
	.sleb128 -83
	.uleb128 0x14
	.long	.LASF315
	.sleb128 -82
	.uleb128 0x14
	.long	.LASF316
	.sleb128 -81
	.uleb128 0x14
	.long	.LASF317
	.sleb128 -80
	.uleb128 0x14
	.long	.LASF318
	.sleb128 -79
	.uleb128 0x14
	.long	.LASF319
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0x1b
	.long	.LASF320
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xb80
	.uleb128 0x14
	.long	.LASF321
	.sleb128 0
	.uleb128 0x14
	.long	.LASF322
	.sleb128 1
	.uleb128 0x14
	.long	.LASF323
	.sleb128 2
	.uleb128 0x14
	.long	.LASF324
	.sleb128 3
	.uleb128 0x14
	.long	.LASF325
	.sleb128 4
	.uleb128 0x14
	.long	.LASF326
	.sleb128 5
	.uleb128 0x14
	.long	.LASF327
	.sleb128 6
	.uleb128 0x14
	.long	.LASF328
	.sleb128 7
	.uleb128 0x14
	.long	.LASF329
	.sleb128 8
	.uleb128 0x14
	.long	.LASF330
	.sleb128 9
	.uleb128 0x14
	.long	.LASF331
	.sleb128 10
	.uleb128 0x14
	.long	.LASF332
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF333
	.byte	0x10
	.byte	0x7
	.byte	0x24
	.long	0xba5
	.uleb128 0x6
	.string	"rtx"
	.byte	0x7
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x7
	.byte	0x36
	.long	0x1bc
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.long	.LASF335
	.byte	0x10
	.byte	0x7
	.byte	0x3a
	.long	0xc8a
	.uleb128 0x19
	.string	"c"
	.byte	0x7
	.byte	0x3b
	.long	0x207
	.uleb128 0x19
	.string	"uc"
	.byte	0x7
	.byte	0x3c
	.long	0xc8a
	.uleb128 0x19
	.string	"s"
	.byte	0x7
	.byte	0x3d
	.long	0xc9a
	.uleb128 0x19
	.string	"us"
	.byte	0x7
	.byte	0x3e
	.long	0xcaa
	.uleb128 0x19
	.string	"i"
	.byte	0x7
	.byte	0x3f
	.long	0xcba
	.uleb128 0x19
	.string	"u"
	.byte	0x7
	.byte	0x40
	.long	0xcca
	.uleb128 0x19
	.string	"l"
	.byte	0x7
	.byte	0x41
	.long	0xcda
	.uleb128 0x19
	.string	"ul"
	.byte	0x7
	.byte	0x42
	.long	0xcea
	.uleb128 0x18
	.long	.LASF336
	.byte	0x7
	.byte	0x43
	.long	0xcda
	.uleb128 0x18
	.long	.LASF337
	.byte	0x7
	.byte	0x44
	.long	0xcea
	.uleb128 0x18
	.long	.LASF338
	.byte	0x7
	.byte	0x45
	.long	0xcfa
	.uleb128 0x18
	.long	.LASF339
	.byte	0x7
	.byte	0x46
	.long	0xd0a
	.uleb128 0x19
	.string	"rtx"
	.byte	0x7
	.byte	0x47
	.long	0xd1a
	.uleb128 0x18
	.long	.LASF10
	.byte	0x7
	.byte	0x48
	.long	0xd2a
	.uleb128 0x18
	.long	.LASF15
	.byte	0x7
	.byte	0x49
	.long	0xd3a
	.uleb128 0x18
	.long	.LASF340
	.byte	0x7
	.byte	0x4a
	.long	0xd4a
	.uleb128 0x18
	.long	.LASF341
	.byte	0x7
	.byte	0x4b
	.long	0xd5a
	.uleb128 0x19
	.string	"reg"
	.byte	0x7
	.byte	0x4c
	.long	0xd75
	.uleb128 0x18
	.long	.LASF342
	.byte	0x7
	.byte	0x4d
	.long	0xe1c
	.uleb128 0x19
	.string	"bb"
	.byte	0x7
	.byte	0x4e
	.long	0xe2c
	.uleb128 0x19
	.string	"te"
	.byte	0x7
	.byte	0x4f
	.long	0xe3c
	.byte	0
	.uleb128 0x10
	.long	0x1de
	.long	0xc9a
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1f3
	.long	0xcaa
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1e5
	.long	0xcba
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x139
	.long	0xcca
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1bc
	.long	0xcda
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1c5
	.long	0xcea
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1d7
	.long	0xcfa
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1c3
	.long	0xd0a
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x1fa
	.long	0xd1a
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x38
	.long	0xd2a
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xf8
	.long	0xd3a
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x12e
	.long	0xd4a
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x971
	.long	0xd5a
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xd6a
	.long	0xd6a
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd70
	.uleb128 0x1a
	.long	.LASF343
	.uleb128 0x10
	.long	0xd85
	.long	0xd85
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd8b
	.uleb128 0x4
	.long	.LASF344
	.byte	0x2c
	.byte	0x8
	.byte	0x2d
	.long	0xe1c
	.uleb128 0x8
	.long	.LASF345
	.byte	0x8
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF346
	.byte	0x8
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF347
	.byte	0x8
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF348
	.byte	0x8
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF349
	.byte	0x8
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF350
	.byte	0x8
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF351
	.byte	0x8
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF352
	.byte	0x8
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF353
	.byte	0x8
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF354
	.byte	0x8
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF355
	.byte	0x8
	.byte	0x3d
	.long	0x200
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	0xb80
	.long	0xe2c
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x97c
	.long	0xe3c
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xe4c
	.long	0xe4c
	.uleb128 0x11
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe52
	.uleb128 0x1a
	.long	.LASF356
	.uleb128 0x7
	.long	.LASF357
	.byte	0x7
	.byte	0x50
	.long	0xba5
	.uleb128 0x4
	.long	.LASF358
	.byte	0x30
	.byte	0x7
	.byte	0x53
	.long	0xeab
	.uleb128 0x8
	.long	.LASF359
	.byte	0x7
	.byte	0x54
	.long	0x1cc
	.byte	0
	.uleb128 0x8
	.long	.LASF360
	.byte	0x7
	.byte	0x55
	.long	0x1cc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF361
	.byte	0x7
	.byte	0x57
	.long	0x1cc
	.byte	0x10
	.uleb128 0x8
	.long	.LASF362
	.byte	0x7
	.byte	0x58
	.long	0x217
	.byte	0x18
	.uleb128 0x8
	.long	.LASF363
	.byte	0x7
	.byte	0x59
	.long	0xe57
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF364
	.byte	0x7
	.byte	0x5a
	.long	0xeb6
	.uleb128 0x3
	.byte	0x8
	.long	0xe62
	.uleb128 0x4
	.long	.LASF365
	.byte	0x18
	.byte	0x9
	.byte	0x16
	.long	0xef9
	.uleb128 0x8
	.long	.LASF366
	.byte	0x9
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF367
	.byte	0x9
	.byte	0x19
	.long	0x230
	.byte	0x8
	.uleb128 0x8
	.long	.LASF368
	.byte	0x9
	.byte	0x1a
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF369
	.byte	0x9
	.byte	0x1b
	.long	0xef9
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xebc
	.uleb128 0x4
	.long	.LASF370
	.byte	0x20
	.byte	0x9
	.byte	0x23
	.long	0xf3c
	.uleb128 0x8
	.long	.LASF371
	.byte	0x9
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF372
	.byte	0x9
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF373
	.byte	0x9
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF369
	.byte	0x9
	.byte	0x28
	.long	0xf3c
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xeff
	.uleb128 0x4
	.long	.LASF374
	.byte	0x58
	.byte	0x9
	.byte	0x35
	.long	0xfeb
	.uleb128 0x8
	.long	.LASF375
	.byte	0x9
	.byte	0x39
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF376
	.byte	0x9
	.byte	0x3c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF377
	.byte	0x9
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF378
	.byte	0x9
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF373
	.byte	0x9
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF370
	.byte	0x9
	.byte	0x4f
	.long	0xf3c
	.byte	0x20
	.uleb128 0x8
	.long	.LASF379
	.byte	0x9
	.byte	0x53
	.long	0x139
	.byte	0x28
	.uleb128 0x8
	.long	.LASF380
	.byte	0x9
	.byte	0x57
	.long	0x139
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF381
	.byte	0x9
	.byte	0x58
	.long	0x217
	.byte	0x30
	.uleb128 0x8
	.long	.LASF382
	.byte	0x9
	.byte	0x5e
	.long	0x139
	.byte	0x38
	.uleb128 0x8
	.long	.LASF383
	.byte	0x9
	.byte	0x63
	.long	0xfeb
	.byte	0x40
	.uleb128 0x8
	.long	.LASF384
	.byte	0x9
	.byte	0x67
	.long	0xff1
	.byte	0x48
	.uleb128 0x8
	.long	.LASF385
	.byte	0x9
	.byte	0x6b
	.long	0xb24
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1de
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF386
	.byte	0x30
	.byte	0x9
	.byte	0x77
	.long	0x1058
	.uleb128 0x8
	.long	.LASF387
	.byte	0x9
	.byte	0x7b
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF388
	.byte	0x9
	.byte	0x8c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF389
	.byte	0x9
	.byte	0x92
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF390
	.byte	0x9
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF391
	.byte	0x9
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF392
	.byte	0x9
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF393
	.byte	0x9
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1c
	.long	.LASF394
	.value	0x1b0
	.byte	0x9
	.byte	0xae
	.long	0x14d8
	.uleb128 0x6
	.string	"eh"
	.byte	0x9
	.byte	0xb0
	.long	0x14dd
	.byte	0
	.uleb128 0x8
	.long	.LASF395
	.byte	0x9
	.byte	0xb1
	.long	0x14e8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF246
	.byte	0x9
	.byte	0xb2
	.long	0x14ee
	.byte	0x10
	.uleb128 0x8
	.long	.LASF396
	.byte	0x9
	.byte	0xb3
	.long	0x14f4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF397
	.byte	0x9
	.byte	0xb4
	.long	0x14ff
	.byte	0x20
	.uleb128 0x8
	.long	.LASF362
	.byte	0x9
	.byte	0xb9
	.long	0x217
	.byte	0x28
	.uleb128 0x8
	.long	.LASF398
	.byte	0x9
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF399
	.byte	0x9
	.byte	0xbf
	.long	0x1505
	.byte	0x38
	.uleb128 0x8
	.long	.LASF400
	.byte	0x9
	.byte	0xc4
	.long	0x139
	.byte	0x40
	.uleb128 0x8
	.long	.LASF401
	.byte	0x9
	.byte	0xc9
	.long	0x139
	.byte	0x44
	.uleb128 0x8
	.long	.LASF402
	.byte	0x9
	.byte	0xce
	.long	0x139
	.byte	0x48
	.uleb128 0x8
	.long	.LASF403
	.byte	0x9
	.byte	0xd2
	.long	0x139
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF404
	.byte	0x9
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF405
	.byte	0x9
	.byte	0xda
	.long	0x1b0
	.byte	0x58
	.uleb128 0x8
	.long	.LASF406
	.byte	0x9
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF407
	.byte	0x9
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF408
	.byte	0x9
	.byte	0xe7
	.long	0x217
	.byte	0x88
	.uleb128 0x8
	.long	.LASF409
	.byte	0x9
	.byte	0xeb
	.long	0x1510
	.byte	0x90
	.uleb128 0x8
	.long	.LASF410
	.byte	0x9
	.byte	0xee
	.long	0x139
	.byte	0x98
	.uleb128 0x8
	.long	.LASF411
	.byte	0x9
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF412
	.byte	0x9
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF413
	.byte	0x9
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF414
	.byte	0x9
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF415
	.byte	0x9
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF416
	.byte	0x9
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0xd
	.long	.LASF417
	.byte	0x9
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0xd
	.long	.LASF418
	.byte	0x9
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0xd
	.long	.LASF419
	.byte	0x9
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0xd
	.long	.LASF420
	.byte	0x9
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0xd
	.long	.LASF421
	.byte	0x9
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0xd
	.long	.LASF422
	.byte	0x9
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1d
	.long	.LASF423
	.byte	0x9
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1d
	.long	.LASF424
	.byte	0x9
	.value	0x12f
	.long	0x1c5
	.value	0x108
	.uleb128 0x1d
	.long	.LASF425
	.byte	0x9
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1d
	.long	.LASF426
	.byte	0x9
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1d
	.long	.LASF427
	.byte	0x9
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1d
	.long	.LASF428
	.byte	0x9
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1d
	.long	.LASF429
	.byte	0x9
	.value	0x148
	.long	0x1bc
	.value	0x130
	.uleb128 0x1d
	.long	.LASF430
	.byte	0x9
	.value	0x14e
	.long	0xb24
	.value	0x138
	.uleb128 0x1d
	.long	.LASF431
	.byte	0x9
	.value	0x151
	.long	0x151b
	.value	0x140
	.uleb128 0x1d
	.long	.LASF432
	.byte	0x9
	.value	0x154
	.long	0x139
	.value	0x148
	.uleb128 0x1d
	.long	.LASF433
	.byte	0x9
	.value	0x157
	.long	0x139
	.value	0x14c
	.uleb128 0x1d
	.long	.LASF434
	.byte	0x9
	.value	0x15d
	.long	0x139
	.value	0x150
	.uleb128 0x1d
	.long	.LASF435
	.byte	0x9
	.value	0x161
	.long	0xef9
	.value	0x158
	.uleb128 0x1d
	.long	.LASF436
	.byte	0x9
	.value	0x164
	.long	0x139
	.value	0x160
	.uleb128 0x1d
	.long	.LASF437
	.byte	0x9
	.value	0x165
	.long	0x139
	.value	0x164
	.uleb128 0x1d
	.long	.LASF438
	.byte	0x9
	.value	0x167
	.long	0x1c3
	.value	0x168
	.uleb128 0x1d
	.long	.LASF439
	.byte	0x9
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1d
	.long	.LASF440
	.byte	0x9
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1d
	.long	.LASF441
	.byte	0x9
	.value	0x16d
	.long	0x139
	.value	0x180
	.uleb128 0x1d
	.long	.LASF442
	.byte	0x9
	.value	0x170
	.long	0x139
	.value	0x184
	.uleb128 0x1d
	.long	.LASF443
	.byte	0x9
	.value	0x175
	.long	0x1526
	.value	0x188
	.uleb128 0x1d
	.long	.LASF444
	.byte	0x9
	.value	0x177
	.long	0x139
	.value	0x190
	.uleb128 0x1d
	.long	.LASF445
	.byte	0x9
	.value	0x179
	.long	0x139
	.value	0x194
	.uleb128 0x1d
	.long	.LASF446
	.byte	0x9
	.value	0x17c
	.long	0x1531
	.value	0x198
	.uleb128 0x1d
	.long	.LASF447
	.byte	0x9
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x1e
	.long	.LASF448
	.byte	0x9
	.value	0x188
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF449
	.byte	0x9
	.value	0x18c
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF450
	.byte	0x9
	.value	0x18f
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF451
	.byte	0x9
	.value	0x192
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF452
	.byte	0x9
	.value	0x195
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF453
	.byte	0x9
	.value	0x198
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF454
	.byte	0x9
	.value	0x19c
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF455
	.byte	0x9
	.value	0x19f
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF456
	.byte	0x9
	.value	0x1a3
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF457
	.byte	0x9
	.value	0x1a7
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF458
	.byte	0x9
	.value	0x1aa
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF459
	.byte	0x9
	.value	0x1ad
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF460
	.byte	0x9
	.value	0x1b2
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF461
	.byte	0x9
	.value	0x1b6
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF462
	.byte	0x9
	.value	0x1b9
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF463
	.byte	0x9
	.value	0x1bd
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF464
	.byte	0x9
	.value	0x1c1
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF465
	.byte	0x9
	.value	0x1c5
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF466
	.byte	0x9
	.value	0x1cb
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF467
	.byte	0x9
	.value	0x1d4
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF468
	.byte	0x9
	.value	0x1d7
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF469
	.byte	0x9
	.value	0x1da
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF470
	.byte	0x9
	.value	0x1dd
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF471
	.byte	0x9
	.value	0x1e0
	.long	0x1bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1a
	.long	.LASF472
	.uleb128 0x3
	.byte	0x8
	.long	0x14d8
	.uleb128 0x1a
	.long	.LASF473
	.uleb128 0x3
	.byte	0x8
	.long	0x14e3
	.uleb128 0x3
	.byte	0x8
	.long	0xff7
	.uleb128 0x3
	.byte	0x8
	.long	0xf42
	.uleb128 0x1a
	.long	.LASF474
	.uleb128 0x3
	.byte	0x8
	.long	0x14fa
	.uleb128 0x3
	.byte	0x8
	.long	0x1058
	.uleb128 0x1a
	.long	.LASF475
	.uleb128 0x3
	.byte	0x8
	.long	0x150b
	.uleb128 0x1a
	.long	.LASF476
	.uleb128 0x3
	.byte	0x8
	.long	0x1516
	.uleb128 0x1a
	.long	.LASF477
	.uleb128 0x3
	.byte	0x8
	.long	0x1521
	.uleb128 0x1a
	.long	.LASF478
	.uleb128 0x3
	.byte	0x8
	.long	0x152c
	.uleb128 0x13
	.long	.LASF479
	.byte	0x4
	.byte	0xa
	.byte	0x17
	.long	0x15bc
	.uleb128 0x14
	.long	.LASF480
	.sleb128 0
	.uleb128 0x14
	.long	.LASF481
	.sleb128 1
	.uleb128 0x14
	.long	.LASF482
	.sleb128 2
	.uleb128 0x14
	.long	.LASF483
	.sleb128 3
	.uleb128 0x14
	.long	.LASF484
	.sleb128 4
	.uleb128 0x14
	.long	.LASF485
	.sleb128 5
	.uleb128 0x14
	.long	.LASF486
	.sleb128 6
	.uleb128 0x14
	.long	.LASF487
	.sleb128 7
	.uleb128 0x14
	.long	.LASF488
	.sleb128 8
	.uleb128 0x14
	.long	.LASF489
	.sleb128 9
	.uleb128 0x14
	.long	.LASF490
	.sleb128 10
	.uleb128 0x14
	.long	.LASF491
	.sleb128 11
	.uleb128 0x14
	.long	.LASF492
	.sleb128 12
	.uleb128 0x14
	.long	.LASF493
	.sleb128 13
	.uleb128 0x14
	.long	.LASF494
	.sleb128 14
	.uleb128 0x14
	.long	.LASF495
	.sleb128 15
	.uleb128 0x14
	.long	.LASF496
	.sleb128 16
	.uleb128 0x14
	.long	.LASF497
	.sleb128 17
	.uleb128 0x14
	.long	.LASF498
	.sleb128 18
	.uleb128 0x14
	.long	.LASF499
	.sleb128 19
	.byte	0
	.uleb128 0x13
	.long	.LASF500
	.byte	0x4
	.byte	0xa
	.byte	0x1f
	.long	0x15d5
	.uleb128 0x14
	.long	.LASF501
	.sleb128 0
	.uleb128 0x14
	.long	.LASF502
	.sleb128 1
	.byte	0
	.uleb128 0x1f
	.long	.LASF505
	.byte	0x1
	.byte	0x4d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x161b
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.byte	0x4e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF503
	.byte	0x1
	.byte	0x50
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF504
	.byte	0x1
	.byte	0x51
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.long	.LASF506
	.byte	0x1
	.byte	0x69
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1663
	.uleb128 0x21
	.long	.LASF503
	.byte	0x1
	.byte	0x6b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF369
	.byte	0x1
	.byte	0x6b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF507
	.byte	0x1
	.byte	0x6b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF508
	.byte	0x1
	.byte	0x7b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x16d7
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.byte	0x7c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF503
	.byte	0x1
	.byte	0x7e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF369
	.byte	0x1
	.byte	0x7e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.long	.LASF509
	.byte	0x1
	.byte	0x82
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF510
	.byte	0x1
	.byte	0x82
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF511
	.byte	0x1
	.byte	0x99
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x171d
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.byte	0x9a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF512
	.byte	0x1
	.byte	0x9c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF503
	.byte	0x1
	.byte	0x9d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF517
	.byte	0x1
	.byte	0xbe
	.long	0x139
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1795
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.byte	0xbf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF513
	.byte	0x1
	.byte	0xc1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.long	.LASF503
	.byte	0x1
	.byte	0xc2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.long	.LASF514
	.byte	0x1
	.byte	0xcc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF369
	.byte	0x1
	.byte	0xcc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF570
	.byte	0x1
	.byte	0xe1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1833
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.byte	0xe2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF503
	.byte	0x1
	.byte	0xe4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x17f0
	.uleb128 0x21
	.long	.LASF515
	.byte	0x1
	.byte	0xf4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x26
	.long	.LASF516
	.byte	0x1
	.value	0x105
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x26
	.long	.LASF515
	.byte	0x1
	.value	0x10a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF518
	.byte	0x1
	.value	0x122
	.long	0x139
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1965
	.uleb128 0x28
	.long	.LASF519
	.byte	0x1
	.value	0x123
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF503
	.byte	0x1
	.value	0x125
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x125
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x125
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x125
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF520
	.byte	0x1
	.value	0x125
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF521
	.byte	0x1
	.value	0x126
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF522
	.byte	0x1
	.value	0x126
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF523
	.byte	0x1
	.value	0x127
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF524
	.byte	0x1
	.value	0x128
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF525
	.byte	0x1
	.value	0x129
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF526
	.byte	0x1
	.value	0x12a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x26
	.long	.LASF527
	.byte	0x1
	.value	0x12b
	.long	0xb24
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF528
	.byte	0x1
	.value	0x12c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF544
	.long	0x1975
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10866
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x26
	.long	.LASF529
	.byte	0x1
	.value	0x1d2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x200
	.long	0x1975
	.uleb128 0x11
	.long	0x140
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.long	0x1965
	.uleb128 0x2b
	.long	.LASF535
	.byte	0x1
	.value	0x21c
	.long	0x1a39
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a39
	.uleb128 0x28
	.long	.LASF530
	.byte	0x1
	.value	0x21d
	.long	0xb24
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF531
	.byte	0x1
	.value	0x21e
	.long	0xb24
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF532
	.byte	0x1
	.value	0x220
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"end"
	.byte	0x1
	.value	0x221
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF503
	.byte	0x1
	.value	0x223
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF369
	.byte	0x1
	.value	0x224
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF372
	.byte	0x1
	.value	0x225
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF533
	.byte	0x1
	.value	0x226
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x26
	.long	.LASF507
	.byte	0x1
	.value	0x237
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF534
	.uleb128 0x2c
	.long	.LASF536
	.byte	0x1
	.value	0x252
	.long	0x2d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aa2
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x253
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF529
	.byte	0x1
	.value	0x255
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x26
	.long	.LASF507
	.byte	0x1
	.value	0x25d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF537
	.byte	0x1
	.value	0x269
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ae3
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x26a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF529
	.byte	0x1
	.value	0x26c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF538
	.byte	0x1
	.value	0x282
	.long	0x3ee
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bd9
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x284
	.long	0x3ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.value	0x283
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF540
	.byte	0x1
	.value	0x283
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x283
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF1
	.byte	0x1
	.value	0x286
	.long	0x230
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x26
	.long	.LASF507
	.byte	0x1
	.value	0x2c7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x2d3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0x2d7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x26
	.long	.LASF541
	.byte	0x1
	.value	0x2db
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF542
	.byte	0x1
	.value	0x2fe
	.long	0x3ee
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c1a
	.uleb128 0x28
	.long	.LASF541
	.byte	0x1
	.value	0x2ff
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x2ff
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF543
	.byte	0x1
	.value	0x311
	.long	0x3ee
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c5f
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x312
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF544
	.long	0x1c6f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10950
	.byte	0
	.uleb128 0x10
	.long	0x200
	.long	0x1c6f
	.uleb128 0x11
	.long	0x140
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.long	0x1c5f
	.uleb128 0x2c
	.long	.LASF545
	.byte	0x1
	.value	0x341
	.long	0x3ee
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cb9
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x342
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF544
	.long	0x1cc9
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10969
	.byte	0
	.uleb128 0x10
	.long	0x200
	.long	0x1cc9
	.uleb128 0x11
	.long	0x140
	.byte	0x21
	.byte	0
	.uleb128 0x12
	.long	0x1cb9
	.uleb128 0x2c
	.long	.LASF546
	.byte	0x1
	.value	0x370
	.long	0x3ee
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d13
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x371
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF544
	.long	0x1d23
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10992
	.byte	0
	.uleb128 0x10
	.long	0x200
	.long	0x1d23
	.uleb128 0x11
	.long	0x140
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.long	0x1d13
	.uleb128 0x2c
	.long	.LASF547
	.byte	0x1
	.value	0x3a0
	.long	0x3ee
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d6d
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x3a1
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF544
	.long	0x1d7d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11007
	.byte	0
	.uleb128 0x10
	.long	0x200
	.long	0x1d7d
	.uleb128 0x11
	.long	0x140
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.long	0x1d6d
	.uleb128 0x2c
	.long	.LASF548
	.byte	0x1
	.value	0x3be
	.long	0x3ee
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dc7
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x3bf
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF544
	.long	0x1dd7
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11022
	.byte	0
	.uleb128 0x10
	.long	0x200
	.long	0x1dd7
	.uleb128 0x11
	.long	0x140
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.long	0x1dc7
	.uleb128 0x2b
	.long	.LASF549
	.byte	0x1
	.value	0x3dd
	.long	0x139
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e1d
	.uleb128 0x28
	.long	.LASF550
	.byte	0x1
	.value	0x3de
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF551
	.byte	0x1
	.value	0x3de
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF552
	.byte	0x1
	.value	0x42f
	.long	0x139
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e4f
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x430
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF553
	.byte	0x1
	.value	0x43f
	.long	0x139
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e8e
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x440
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x442
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF554
	.byte	0x1
	.value	0x45e
	.long	0x139
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ecd
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x45f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x461
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF555
	.byte	0x1
	.value	0x47e
	.long	0x2d
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f0e
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x47f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x481
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF556
	.byte	0x1
	.value	0x494
	.long	0x139
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f4d
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x495
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x497
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF557
	.byte	0x1
	.value	0x4a7
	.long	0x139
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fa6
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x4a8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x4aa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.value	0x4ab
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x4ab
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF558
	.byte	0x1
	.value	0x4bc
	.long	0x2d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fe5
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x4bd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x4bf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF559
	.byte	0x1
	.value	0x4d2
	.long	0x139
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2033
	.uleb128 0x2e
	.string	"loc"
	.byte	0x1
	.value	0x4d3
	.long	0xb24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF363
	.byte	0x1
	.value	0x4d4
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x4d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF560
	.byte	0x1
	.value	0x4dd
	.long	0x139
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2065
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x4de
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF561
	.byte	0x1
	.value	0x4e9
	.long	0x139
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x20a6
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x4ea
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x4ec
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF562
	.byte	0x1
	.value	0x53e
	.long	0x2d
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2136
	.uleb128 0x28
	.long	.LASF529
	.byte	0x1
	.value	0x53f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF503
	.byte	0x1
	.value	0x541
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF369
	.byte	0x1
	.value	0x542
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF563
	.byte	0x1
	.value	0x543
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF564
	.byte	0x1
	.value	0x544
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x29
	.string	"tem"
	.byte	0x1
	.value	0x555
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF565
	.byte	0x1
	.value	0x57e
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x2228
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x57f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x580
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF566
	.byte	0x1
	.value	0x581
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x583
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x584
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x585
	.long	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF544
	.long	0x2238
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11117
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x21e3
	.uleb128 0x26
	.long	.LASF529
	.byte	0x1
	.value	0x5a2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x2208
	.uleb128 0x26
	.long	.LASF567
	.byte	0x1
	.value	0x5cd
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x5df
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x200
	.long	0x2238
	.uleb128 0x11
	.long	0x140
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.long	0x2228
	.uleb128 0x2f
	.long	.LASF568
	.byte	0x1
	.value	0x5eb
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x227a
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x5ec
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x5ee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF569
	.byte	0x1
	.value	0x5f7
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x22bb
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x5f8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF544
	.long	0x22bb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11139
	.byte	0
	.uleb128 0x12
	.long	0x1d13
	.uleb128 0x30
	.long	.LASF571
	.byte	0x1
	.value	0x605
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f5
	.uleb128 0x28
	.long	.LASF514
	.byte	0x1
	.value	0x606
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x607
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF572
	.byte	0x1
	.value	0x609
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x60a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x611
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x2381
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x62f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x26
	.long	.LASF573
	.byte	0x1
	.value	0x633
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x26
	.long	.LASF574
	.byte	0x1
	.value	0x640
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF575
	.byte	0x1
	.value	0x641
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF20
	.byte	0x1
	.value	0x646
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF576
	.byte	0x1
	.value	0x647
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x657
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF577
	.byte	0x1
	.value	0x683
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x2441
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x684
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF514
	.byte	0x1
	.value	0x686
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF369
	.byte	0x1
	.value	0x686
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF578
	.byte	0x1
	.value	0x6b8
	.long	0x2d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x255a
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x6b9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF579
	.byte	0x1
	.value	0x6bb
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF514
	.byte	0x1
	.value	0x6bc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF369
	.byte	0x1
	.value	0x6bd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF507
	.byte	0x1
	.value	0x6bd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x24e4
	.uleb128 0x29
	.string	"lab"
	.byte	0x1
	.value	0x6d3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF580
	.byte	0x1
	.value	0x6d3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x2537
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x6f7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x6f8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF581
	.byte	0x1
	.value	0x6f8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x6f9
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x22
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x71e
	.long	0x3ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF582
	.byte	0x1
	.value	0x73a
	.long	0x2d
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x258c
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x73b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF583
	.byte	0x1
	.value	0x748
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x2607
	.uleb128 0x28
	.long	.LASF584
	.byte	0x1
	.value	0x749
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"to"
	.byte	0x1
	.value	0x749
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF503
	.byte	0x1
	.value	0x74b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x26
	.long	.LASF369
	.byte	0x1
	.value	0x74f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF507
	.byte	0x1
	.value	0x750
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF585
	.byte	0x1
	.value	0x775
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x268f
	.uleb128 0x28
	.long	.LASF586
	.byte	0x1
	.value	0x776
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF587
	.byte	0x1
	.value	0x776
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF503
	.byte	0x1
	.value	0x778
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF588
	.byte	0x1
	.value	0x779
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF589
	.byte	0x1
	.value	0x77a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF590
	.byte	0x1
	.value	0x77a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF591
	.byte	0x1
	.value	0x77a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x30
	.long	.LASF592
	.byte	0x1
	.value	0x7a4
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2768
	.uleb128 0x2e
	.string	"loc"
	.byte	0x1
	.value	0x7a5
	.long	0xb24
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF593
	.byte	0x1
	.value	0x7a6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF594
	.byte	0x1
	.value	0x7a6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x7a7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x7a9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x7aa
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x7ab
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x7ac
	.long	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x2748
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x7b2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x7d4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF595
	.byte	0x1
	.value	0x7de
	.long	0x139
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x27c7
	.uleb128 0x28
	.long	.LASF593
	.byte	0x1
	.value	0x7df
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF594
	.byte	0x1
	.value	0x7df
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x7e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"loc"
	.byte	0x1
	.value	0x7e2
	.long	0xb24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF596
	.byte	0x1
	.value	0x7f5
	.long	0x139
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x2826
	.uleb128 0x28
	.long	.LASF2
	.byte	0x1
	.value	0x7f6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF594
	.byte	0x1
	.value	0x7f6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF597
	.byte	0x1
	.value	0x7f8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"loc"
	.byte	0x1
	.value	0x7f9
	.long	0xb24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF598
	.byte	0x1
	.value	0x80f
	.long	0x139
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2885
	.uleb128 0x28
	.long	.LASF2
	.byte	0x1
	.value	0x810
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF594
	.byte	0x1
	.value	0x810
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF599
	.byte	0x1
	.value	0x811
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF593
	.byte	0x1
	.value	0x813
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF600
	.byte	0x1
	.value	0x833
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x2921
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x834
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x836
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x837
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF544
	.long	0x2931
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11275
	.uleb128 0x22
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x26
	.long	.LASF601
	.byte	0x1
	.value	0x841
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"tem"
	.byte	0x1
	.value	0x842
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF602
	.byte	0x1
	.value	0x843
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x200
	.long	0x2931
	.uleb128 0x11
	.long	0x140
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.long	0x2921
	.uleb128 0x27
	.long	.LASF603
	.byte	0x1
	.value	0x864
	.long	0x139
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x2968
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0x865
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF604
	.byte	0x1
	.value	0x874
	.long	0x139
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x29b8
	.uleb128 0x28
	.long	.LASF2
	.byte	0x1
	.value	0x875
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF594
	.byte	0x1
	.value	0x875
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF597
	.byte	0x1
	.value	0x877
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF605
	.byte	0x1
	.value	0x885
	.long	0x139
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a1b
	.uleb128 0x28
	.long	.LASF2
	.byte	0x1
	.value	0x886
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF594
	.byte	0x1
	.value	0x886
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF599
	.byte	0x1
	.value	0x887
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF544
	.long	0x2a2b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11292
	.byte	0
	.uleb128 0x10
	.long	0x200
	.long	0x2a2b
	.uleb128 0x11
	.long	0x140
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.long	0x2a1b
	.uleb128 0x2c
	.long	.LASF606
	.byte	0x1
	.value	0x8ae
	.long	0x139
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b1f
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x8af
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0x8af
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x8b1
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x8b2
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x8b3
	.long	0x217
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF544
	.long	0x2b2f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11328
	.uleb128 0x25
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x2aff
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x8bc
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF608
	.byte	0x1
	.value	0x8bc
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF609
	.byte	0x1
	.value	0x8bd
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF610
	.byte	0x1
	.value	0x8bd
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x22
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x934
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x200
	.long	0x2b2f
	.uleb128 0x11
	.long	0x140
	.byte	0x16
	.byte	0
	.uleb128 0x12
	.long	0x2b1f
	.uleb128 0x2c
	.long	.LASF611
	.byte	0x1
	.value	0x96c
	.long	0x139
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b85
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x96d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x26
	.long	.LASF612
	.byte	0x1
	.value	0x977
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF613
	.byte	0x4
	.byte	0x62
	.long	0x139
	.uleb128 0x10
	.long	0x3a5
	.long	0x2ba0
	.uleb128 0x11
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x32
	.long	.LASF98
	.byte	0x6
	.byte	0x34
	.long	0x2bab
	.uleb128 0x12
	.long	0x2b90
	.uleb128 0x10
	.long	0x1de
	.long	0x2bc0
	.uleb128 0x11
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x32
	.long	.LASF614
	.byte	0x6
	.byte	0x50
	.long	0x2bcb
	.uleb128 0x12
	.long	0x2bb0
	.uleb128 0x10
	.long	0x1de
	.long	0x2be0
	.uleb128 0x11
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x32
	.long	.LASF615
	.byte	0x2
	.byte	0x36
	.long	0x2beb
	.uleb128 0x12
	.long	0x2bd0
	.uleb128 0x10
	.long	0x217
	.long	0x2c00
	.uleb128 0x11
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x32
	.long	.LASF616
	.byte	0x2
	.byte	0x3c
	.long	0x2c0b
	.uleb128 0x12
	.long	0x2bf0
	.uleb128 0x10
	.long	0x200
	.long	0x2c20
	.uleb128 0x11
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x32
	.long	.LASF617
	.byte	0x2
	.byte	0x3f
	.long	0x2c2b
	.uleb128 0x12
	.long	0x2c10
	.uleb128 0x10
	.long	0x2d
	.long	0x2c40
	.uleb128 0x11
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x33
	.long	.LASF618
	.byte	0x2
	.value	0x652
	.long	0x2c30
	.uleb128 0x33
	.long	.LASF619
	.byte	0x2
	.value	0x6d2
	.long	0x139
	.uleb128 0x32
	.long	.LASF620
	.byte	0xb
	.byte	0x3d
	.long	0x139
	.uleb128 0x32
	.long	.LASF621
	.byte	0xb
	.byte	0x6b
	.long	0x139
	.uleb128 0x32
	.long	.LASF622
	.byte	0xb
	.byte	0xbb
	.long	0x139
	.uleb128 0x33
	.long	.LASF623
	.byte	0xb
	.value	0x15a
	.long	0x139
	.uleb128 0x32
	.long	.LASF624
	.byte	0x8
	.byte	0x41
	.long	0xeab
	.uleb128 0x32
	.long	.LASF625
	.byte	0x8
	.byte	0x9d
	.long	0x2c9b
	.uleb128 0x3
	.byte	0x8
	.long	0x1f3
	.uleb128 0x33
	.long	.LASF626
	.byte	0x9
	.value	0x1e4
	.long	0x1505
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2117
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
	.uleb128 0x33
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
.LASF281:
	.string	"REG_BR_PROB"
.LASF311:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF442:
	.string	"profile_label_no"
.LASF254:
	.string	"rtstr"
.LASF298:
	.string	"NOTE_INSN_DELETED"
.LASF554:
	.string	"condjump_in_parallel_p"
.LASF182:
	.string	"UMOD"
.LASF236:
	.string	"min_align"
.LASF335:
	.string	"varray_data_tag"
.LASF519:
	.string	"loop_start"
.LASF371:
	.string	"first"
.LASF436:
	.string	"inlinable"
.LASF468:
	.string	"uses_const_pool"
.LASF223:
	.string	"CONSTANT_P_RTX"
.LASF591:
	.string	"reached_end"
.LASF534:
	.string	"_Bool"
.LASF253:
	.string	"rtuint"
.LASF489:
	.string	"PRED_LOOP_EXIT"
.LASF257:
	.string	"rt_cselib"
.LASF126:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF441:
	.string	"inl_max_label_num"
.LASF186:
	.string	"LSHIFTRT"
.LASF120:
	.string	"MATCH_PAR_DUP"
.LASF629:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF181:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF114:
	.string	"MATCH_OPERAND"
.LASF376:
	.string	"x_first_label_num"
.LASF203:
	.string	"UNLE"
.LASF241:
	.string	"max_after_base"
.LASF523:
	.string	"num_insns"
.LASF204:
	.string	"UNLT"
.LASF469:
	.string	"uses_pic_offset_table"
.LASF475:
	.string	"initial_value_struct"
.LASF66:
	.string	"CTImode"
.LASF369:
	.string	"next"
.LASF585:
	.string	"never_reached_warning"
.LASF567:
	.string	"eltnum"
.LASF64:
	.string	"CSImode"
.LASF225:
	.string	"VEC_MERGE"
.LASF439:
	.string	"original_decl_initial"
.LASF488:
	.string	"PRED_LOOP_BRANCH"
.LASF337:
	.string	"uhint"
.LASF158:
	.string	"RETURN"
.LASF338:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF101:
	.string	"MODE_FLOAT"
.LASF245:
	.string	"alias"
.LASF242:
	.string	"offset_unsigned"
.LASF70:
	.string	"V2SImode"
.LASF465:
	.string	"stdarg"
.LASF426:
	.string	"x_trampoline_list"
.LASF145:
	.string	"CODE_LABEL"
.LASF65:
	.string	"CDImode"
.LASF151:
	.string	"UNSPEC"
.LASF144:
	.string	"BARRIER"
.LASF304:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF147:
	.string	"COND_EXEC"
.LASF161:
	.string	"CONST_INT"
.LASF157:
	.string	"CALL"
.LASF24:
	.string	"maybe_vaarg"
.LASF447:
	.string	"epilogue_delay_list"
.LASF575:
	.string	"dest_endregno"
.LASF72:
	.string	"V4QImode"
.LASF136:
	.string	"ATTR"
.LASF255:
	.string	"rttype"
.LASF616:
	.string	"rtx_format"
.LASF328:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF71:
	.string	"V2DImode"
.LASF416:
	.string	"x_return_label"
.LASF364:
	.string	"varray_type"
.LASF250:
	.string	"mem_attrs"
.LASF349:
	.string	"refs"
.LASF275:
	.string	"REG_UNUSED"
.LASF129:
	.string	"DEFINE_DELAY"
.LASF179:
	.string	"MINUS"
.LASF423:
	.string	"x_clobber_return_insn"
.LASF533:
	.string	"past_end"
.LASF343:
	.string	"sched_info_tag"
.LASF169:
	.string	"STRICT_LOW_PART"
.LASF536:
	.string	"get_label_before"
.LASF111:
	.string	"INCLUDE"
.LASF324:
	.string	"GR_FRAME_POINTER"
.LASF350:
	.string	"freq"
.LASF207:
	.string	"ZERO_EXTEND"
.LASF210:
	.string	"FLOAT_TRUNCATE"
.LASF392:
	.string	"x_forced_labels"
.LASF321:
	.string	"GR_PC"
.LASF576:
	.string	"endregno"
.LASF526:
	.string	"max_reg"
.LASF81:
	.string	"V2SFmode"
.LASF357:
	.string	"varray_data"
.LASF477:
	.string	"machine_function"
.LASF211:
	.string	"FLOAT"
.LASF287:
	.string	"REG_EH_CONTEXT"
.LASF97:
	.string	"machine_mode"
.LASF527:
	.string	"reg_map"
.LASF260:
	.string	"rtmem"
.LASF435:
	.string	"fixup_var_refs_queue"
.LASF548:
	.string	"signed_condition"
.LASF220:
	.string	"RANGE_REG"
.LASF258:
	.string	"rtbit"
.LASF3:
	.string	"call"
.LASF43:
	.string	"TImode"
.LASF196:
	.string	"PRE_MODIFY"
.LASF450:
	.string	"returns_pointer"
.LASF209:
	.string	"FLOAT_EXTEND"
.LASF347:
	.string	"last_note_uid"
.LASF395:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF299:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF506:
	.string	"cleanup_barriers"
.LASF41:
	.string	"SImode"
.LASF153:
	.string	"ADDR_VEC"
.LASF473:
	.string	"stmt_status"
.LASF82:
	.string	"V2DFmode"
.LASF235:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF480:
	.string	"PRED_COMBINED"
.LASF500:
	.string	"prediction"
.LASF249:
	.string	"align"
.LASF23:
	.string	"sse_regno"
.LASF443:
	.string	"machine"
.LASF172:
	.string	"SYMBOL_REF"
.LASF297:
	.string	"NOTE_INSN_BIAS"
.LASF565:
	.string	"mark_jump_label"
.LASF319:
	.string	"NOTE_INSN_MAX"
.LASF390:
	.string	"x_saveregs_value"
.LASF125:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF177:
	.string	"COMPARE"
.LASF205:
	.string	"LTGT"
.LASF509:
	.string	"temp"
.LASF368:
	.string	"unsignedp"
.LASF217:
	.string	"HIGH"
.LASF174:
	.string	"QUEUED"
.LASF1:
	.string	"mode"
.LASF42:
	.string	"DImode"
.LASF497:
	.string	"PRED_CALL"
.LASF333:
	.string	"const_equiv_data"
.LASF409:
	.string	"hard_reg_initial_vals"
.LASF479:
	.string	"br_predictor"
.LASF388:
	.string	"x_inhibit_defer_pop"
.LASF77:
	.string	"V8HImode"
.LASF195:
	.string	"POST_INC"
.LASF55:
	.string	"TFmode"
.LASF30:
	.string	"unsigned char"
.LASF393:
	.string	"x_pending_chain"
.LASF408:
	.string	"cannot_inline"
.LASF486:
	.string	"PRED_BUILTIN_EXPECT"
.LASF493:
	.string	"PRED_POINTER"
.LASF354:
	.string	"basic_block"
.LASF38:
	.string	"BImode"
.LASF193:
	.string	"PRE_INC"
.LASF274:
	.string	"REG_NO_CONFLICT"
.LASF52:
	.string	"SFmode"
.LASF396:
	.string	"emit"
.LASF578:
	.string	"delete_related_insns"
.LASF142:
	.string	"JUMP_INSN"
.LASF607:
	.string	"reg_x"
.LASF608:
	.string	"reg_y"
.LASF105:
	.string	"MODE_COMPLEX_FLOAT"
.LASF259:
	.string	"rttree"
.LASF531:
	.string	"endp"
.LASF588:
	.string	"a_line_note"
.LASF296:
	.string	"insn_note"
.LASF315:
	.string	"NOTE_INSN_RANGE_END"
.LASF124:
	.string	"DEFINE_SPLIT"
.LASF457:
	.string	"has_nonlocal_goto"
.LASF471:
	.string	"arg_pointer_save_area_init"
.LASF163:
	.string	"CONST_VECTOR"
.LASF121:
	.string	"MATCH_INSN"
.LASF546:
	.string	"swap_condition"
.LASF417:
	.string	"x_save_expr_regs"
.LASF53:
	.string	"DFmode"
.LASF28:
	.string	"size_t"
.LASF155:
	.string	"PREFETCH"
.LASF400:
	.string	"pops_args"
.LASF47:
	.string	"PSImode"
.LASF557:
	.string	"any_condjump_p"
.LASF419:
	.string	"x_rtl_expr_chain"
.LASF219:
	.string	"RANGE_INFO"
.LASF597:
	.string	"ochanges"
.LASF334:
	.string	"rtunion_def"
.LASF135:
	.string	"DEFINE_ATTR"
.LASF137:
	.string	"SET_ATTR"
.LASF61:
	.string	"TCmode"
.LASF411:
	.string	"x_nonlocal_labels"
.LASF212:
	.string	"UNSIGNED_FLOAT"
.LASF286:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF261:
	.string	"cselib_val_struct"
.LASF318:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF494:
	.string	"PRED_OPCODE_POSITIVE"
.LASF184:
	.string	"ROTATE"
.LASF208:
	.string	"TRUNCATE"
.LASF279:
	.string	"REG_DEP_ANTI"
.LASF58:
	.string	"SCmode"
.LASF615:
	.string	"rtx_length"
.LASF329:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF48:
	.string	"PDImode"
.LASF584:
	.string	"from"
.LASF300:
	.string	"NOTE_INSN_BLOCK_END"
.LASF340:
	.string	"bitmap"
.LASF309:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF617:
	.string	"rtx_class"
.LASF606:
	.string	"rtx_renumbered_equal_p"
.LASF520:
	.string	"link"
.LASF385:
	.string	"x_regno_reg_rtx"
.LASF112:
	.string	"EXPR_LIST"
.LASF139:
	.string	"EQ_ATTR"
.LASF91:
	.string	"CCGOCmode"
.LASF170:
	.string	"CONCAT"
.LASF238:
	.string	"min_after_vec"
.LASF176:
	.string	"COND"
.LASF501:
	.string	"NOT_TAKEN"
.LASF102:
	.string	"MODE_PARTIAL_INT"
.LASF530:
	.string	"startp"
.LASF427:
	.string	"x_parm_birth_insn"
.LASF512:
	.string	"last_note"
.LASF429:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF59:
	.string	"DCmode"
.LASF485:
	.string	"PRED_LOOP_ITERATIONS"
.LASF127:
	.string	"DEFINE_COMBINE"
.LASF505:
	.string	"rebuild_jump_labels"
.LASF627:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF487:
	.string	"PRED_NORETURN"
.LASF421:
	.string	"x_tail_recursion_reentry"
.LASF491:
	.string	"PRED_LOOP_PRECONDITIONING"
.LASF185:
	.string	"ASHIFTRT"
.LASF553:
	.string	"condjump_p"
.LASF604:
	.string	"invert_jump_1"
.LASF89:
	.string	"CCmode"
.LASF302:
	.string	"NOTE_INSN_LOOP_END"
.LASF87:
	.string	"V16SFmode"
.LASF524:
	.string	"exitcode"
.LASF316:
	.string	"NOTE_INSN_LIVE"
.LASF132:
	.string	"DEFINE_COND_EXEC"
.LASF581:
	.string	"diff_vec_p"
.LASF542:
	.string	"reversed_comparison_code"
.LASF365:
	.string	"var_refs_queue"
.LASF389:
	.string	"x_stack_pointer_delta"
.LASF128:
	.string	"DEFINE_EXPAND"
.LASF460:
	.string	"is_thunk"
.LASF360:
	.string	"elements_used"
.LASF78:
	.string	"V8SImode"
.LASF413:
	.string	"x_nonlocal_goto_handler_labels"
.LASF141:
	.string	"INSN"
.LASF252:
	.string	"rtint"
.LASF171:
	.string	"LABEL_REF"
.LASF278:
	.string	"REG_LABEL"
.LASF356:
	.string	"elt_list"
.LASF266:
	.string	"REG_DEAD"
.LASF306:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF476:
	.string	"temp_slot"
.LASF269:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF499:
	.string	"END_PREDICTORS"
.LASF90:
	.string	"CCGCmode"
.LASF167:
	.string	"SCRATCH"
.LASF76:
	.string	"V8QImode"
.LASF79:
	.string	"V8DImode"
.LASF108:
	.string	"MAX_MODE_CLASS"
.LASF624:
	.string	"reg_n_info"
.LASF602:
	.string	"reversed_code"
.LASF516:
	.string	"label_note"
.LASF206:
	.string	"SIGN_EXTEND"
.LASF452:
	.string	"calls_setjmp"
.LASF563:
	.string	"value"
.LASF228:
	.string	"VEC_DUPLICATE"
.LASF414:
	.string	"x_nonlocal_goto_stack_level"
.LASF407:
	.string	"internal_arg_pointer"
.LASF596:
	.string	"redirect_jump_1"
.LASF246:
	.string	"expr"
.LASF312:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF412:
	.string	"x_nonlocal_goto_handler_slots"
.LASF85:
	.string	"V8SFmode"
.LASF503:
	.string	"insn"
.LASF277:
	.string	"REG_CC_USER"
.LASF598:
	.string	"redirect_jump"
.LASF150:
	.string	"ASM_OPERANDS"
.LASF618:
	.string	"global_rtl"
.LASF432:
	.string	"x_temp_slot_level"
.LASF93:
	.string	"CCZmode"
.LASF303:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF496:
	.string	"PRED_FPOPCODE"
.LASF458:
	.string	"contains_functions"
.LASF397:
	.string	"varasm"
.LASF292:
	.string	"REG_NON_LOCAL_GOTO"
.LASF154:
	.string	"ADDR_DIFF_VEC"
.LASF528:
	.string	"loop_pre_header_label"
.LASF216:
	.string	"ZERO_EXTRACT"
.LASF336:
	.string	"hint"
.LASF149:
	.string	"ASM_INPUT"
.LASF199:
	.string	"ORDERED"
.LASF86:
	.string	"V8DFmode"
.LASF367:
	.string	"promoted_mode"
.LASF359:
	.string	"num_elements"
.LASF213:
	.string	"UNSIGNED_FIX"
.LASF490:
	.string	"PRED_LOOP_CONDITION"
.LASF449:
	.string	"returns_pcc_struct"
.LASF609:
	.string	"byte_x"
.LASF560:
	.string	"returnjump_p"
.LASF21:
	.string	"sse_words"
.LASF595:
	.string	"redirect_exp"
.LASF94:
	.string	"CCFPmode"
.LASF362:
	.string	"name"
.LASF113:
	.string	"INSN_LIST"
.LASF518:
	.string	"duplicate_loop_exit_test"
.LASF221:
	.string	"RANGE_VAR"
.LASF355:
	.string	"changes_mode"
.LASF100:
	.string	"MODE_INT"
.LASF361:
	.string	"element_size"
.LASF404:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF20:
	.string	"regno"
.LASF555:
	.string	"pc_set"
.LASF386:
	.string	"expr_status"
.LASF456:
	.string	"has_nonlocal_label"
.LASF623:
	.string	"flag_unsafe_math_optimizations"
.LASF222:
	.string	"RANGE_LIVE"
.LASF387:
	.string	"x_pending_stack_adjust"
.LASF69:
	.string	"V2HImode"
.LASF401:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF342:
	.string	"const_equiv"
.LASF504:
	.string	"max_uid"
.LASF621:
	.string	"warn_notreached"
.LASF346:
	.string	"last_uid"
.LASF256:
	.string	"rt_addr_diff_vec_flags"
.LASF326:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF231:
	.string	"SS_MINUS"
.LASF610:
	.string	"byte_y"
.LASF118:
	.string	"MATCH_PARALLEL"
.LASF74:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF268:
	.string	"REG_EQUIV"
.LASF31:
	.string	"short unsigned int"
.LASF32:
	.string	"signed char"
.LASF117:
	.string	"MATCH_OPERATOR"
.LASF532:
	.string	"start"
.LASF358:
	.string	"varray_head_tag"
.LASF379:
	.string	"x_cur_insn_uid"
.LASF428:
	.string	"x_last_parm_insn"
.LASF573:
	.string	"part"
.LASF601:
	.string	"comp"
.LASF233:
	.string	"SS_TRUNCATE"
.LASF282:
	.string	"REG_EXEC_COUNT"
.LASF437:
	.string	"no_debugging_symbols"
.LASF237:
	.string	"base_after_vec"
.LASF122:
	.string	"DEFINE_INSN"
.LASF75:
	.string	"V4DImode"
.LASF327:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF381:
	.string	"x_last_filename"
.LASF280:
	.string	"REG_DEP_OUTPUT"
.LASF131:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF572:
	.string	"our_prev"
.LASF232:
	.string	"US_MINUS"
.LASF406:
	.string	"return_rtx"
.LASF495:
	.string	"PRED_OPCODE_NONEQUAL"
.LASF215:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF352:
	.string	"live_length"
.LASF156:
	.string	"CLOBBER"
.LASF380:
	.string	"x_last_linenum"
.LASF106:
	.string	"MODE_VECTOR_INT"
.LASF284:
	.string	"REG_SAVE_AREA"
.LASF224:
	.string	"CALL_PLACEHOLDER"
.LASF394:
	.string	"function"
.LASF83:
	.string	"V4SFmode"
.LASF461:
	.string	"instrument_entry_exit"
.LASF552:
	.string	"simplejump_p"
.LASF566:
	.string	"in_mem"
.LASF424:
	.string	"x_frame_offset"
.LASF178:
	.string	"PLUS"
.LASF521:
	.string	"copy"
.LASF571:
	.string	"delete_prior_computation"
.LASF194:
	.string	"POST_DEC"
.LASF40:
	.string	"HImode"
.LASF264:
	.string	"rtunion"
.LASF305:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF104:
	.string	"MODE_COMPLEX_INT"
.LASF472:
	.string	"eh_status"
.LASF370:
	.string	"sequence_stack"
.LASF27:
	.string	"long int"
.LASF331:
	.string	"GR_VIRTUAL_CFA"
.LASF270:
	.string	"REG_WAS_0"
.LASF291:
	.string	"REG_NORETURN"
.LASF54:
	.string	"XFmode"
.LASF451:
	.string	"needs_context"
.LASF290:
	.string	"REG_MAYBE_DEAD"
.LASF84:
	.string	"V4DFmode"
.LASF625:
	.string	"reg_renumber"
.LASF4:
	.string	"unchanging"
.LASF603:
	.string	"invert_exp"
.LASF265:
	.string	"reg_note"
.LASF455:
	.string	"calls_eh_return"
.LASF529:
	.string	"label"
.LASF434:
	.string	"x_target_temp_slot_level"
.LASF402:
	.string	"pretend_args_size"
.LASF620:
	.string	"optimize"
.LASF109:
	.string	"rtx_code"
.LASF25:
	.string	"CUMULATIVE_ARGS"
.LASF372:
	.string	"last"
.LASF570:
	.string	"mark_all_labels"
.LASF464:
	.string	"varargs"
.LASF582:
	.string	"next_nondeleted_insn"
.LASF466:
	.string	"x_whole_function_mode_p"
.LASF564:
	.string	"depth"
.LASF110:
	.string	"UNKNOWN"
.LASF152:
	.string	"UNSPEC_VOLATILE"
.LASF478:
	.string	"language_function"
.LASF308:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF593:
	.string	"olabel"
.LASF29:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF50:
	.string	"HFmode"
.LASF440:
	.string	"inl_last_parm_insn"
.LASF159:
	.string	"TRAP_IF"
.LASF351:
	.string	"deaths"
.LASF288:
	.string	"REG_EH_REGION"
.LASF271:
	.string	"REG_RETVAL"
.LASF594:
	.string	"nlabel"
.LASF62:
	.string	"CQImode"
.LASF34:
	.string	"char"
.LASF448:
	.string	"returns_struct"
.LASF522:
	.string	"first_copy"
.LASF60:
	.string	"XCmode"
.LASF422:
	.string	"x_arg_pointer_save_area"
.LASF586:
	.string	"avoided_insn"
.LASF420:
	.string	"x_tail_recursion_label"
.LASF589:
	.string	"two_avoided_lines"
.LASF446:
	.string	"language"
.LASF187:
	.string	"ROTATERT"
.LASF173:
	.string	"ADDRESSOF"
.LASF293:
	.string	"REG_SETJMP"
.LASF68:
	.string	"V2QImode"
.LASF375:
	.string	"x_reg_rtx_no"
.LASF46:
	.string	"PHImode"
.LASF366:
	.string	"modified"
.LASF384:
	.string	"regno_decl"
.LASF344:
	.string	"reg_info_def"
.LASF67:
	.string	"COImode"
.LASF508:
	.string	"copy_loop_headers"
.LASF192:
	.string	"PRE_DEC"
.LASF307:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF325:
	.string	"GR_HARD_FRAME_POINTER"
.LASF276:
	.string	"REG_CC_SETTER"
.LASF454:
	.string	"calls_alloca"
.LASF587:
	.string	"finish"
.LASF433:
	.string	"x_var_temp_slot_level"
.LASF611:
	.string	"true_regnum"
.LASF99:
	.string	"MODE_RANDOM"
.LASF230:
	.string	"US_PLUS"
.LASF88:
	.string	"BLKmode"
.LASF592:
	.string	"redirect_exp_1"
.LASF57:
	.string	"HCmode"
.LASF599:
	.string	"delete_unused"
.LASF510:
	.string	"temp1"
.LASF164:
	.string	"CONST_STRING"
.LASF227:
	.string	"VEC_CONCAT"
.LASF248:
	.string	"size"
.LASF513:
	.string	"largest_uid"
.LASF239:
	.string	"max_after_vec"
.LASF283:
	.string	"REG_NOALIAS"
.LASF140:
	.string	"ATTR_FLAG"
.LASF550:
	.string	"code1"
.LASF551:
	.string	"code2"
.LASF95:
	.string	"CCFPUmode"
.LASF547:
	.string	"unsigned_condition"
.LASF482:
	.string	"PRED_FIRST_MATCH"
.LASF267:
	.string	"REG_INC"
.LASF130:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF511:
	.string	"purge_line_number_notes"
.LASF425:
	.string	"x_context_display"
.LASF134:
	.string	"ADDRESS"
.LASF438:
	.string	"original_arg_vector"
.LASF562:
	.string	"follow_jumps"
.LASF470:
	.string	"uses_eh_lsda"
.LASF339:
	.string	"cptr"
.LASF540:
	.string	"arg1"
.LASF262:
	.string	"bitmap_head_def"
.LASF517:
	.string	"init_label_info"
.LASF580:
	.string	"lab_next"
.LASF353:
	.string	"calls_crossed"
.LASF234:
	.string	"US_TRUNCATE"
.LASF569:
	.string	"delete_barrier"
.LASF320:
	.string	"global_rtl_index"
.LASF19:
	.string	"nregs"
.LASF229:
	.string	"SS_PLUS"
.LASF191:
	.string	"UMAX"
.LASF243:
	.string	"scale"
.LASF577:
	.string	"delete_computation"
.LASF39:
	.string	"QImode"
.LASF613:
	.string	"target_flags"
.LASF363:
	.string	"data"
.LASF323:
	.string	"GR_STACK_POINTER"
.LASF51:
	.string	"TQFmode"
.LASF18:
	.string	"words"
.LASF549:
	.string	"comparison_dominates_p"
.LASF515:
	.string	"label_ref"
.LASF240:
	.string	"min_after_base"
.LASF341:
	.string	"sched"
.LASF467:
	.string	"x_dont_save_pending_sizes_p"
.LASF17:
	.string	"ix86_args"
.LASF622:
	.string	"flag_test_coverage"
.LASF612:
	.string	"base"
.LASF626:
	.string	"cfun"
.LASF403:
	.string	"outgoing_args_size"
.LASF44:
	.string	"OImode"
.LASF289:
	.string	"REG_SAVE_NOTE"
.LASF189:
	.string	"SMAX"
.LASF332:
	.string	"GR_MAX"
.LASF226:
	.string	"VEC_SELECT"
.LASF273:
	.string	"REG_NONNEG"
.LASF444:
	.string	"stack_alignment_needed"
.LASF374:
	.string	"emit_status"
.LASF107:
	.string	"MODE_VECTOR_FLOAT"
.LASF197:
	.string	"POST_MODIFY"
.LASF541:
	.string	"comparison"
.LASF559:
	.string	"returnjump_p_1"
.LASF484:
	.string	"PRED_UNCONDITIONAL"
.LASF545:
	.string	"reverse_condition_maybe_unordered"
.LASF605:
	.string	"invert_jump"
.LASF285:
	.string	"REG_BR_PRED"
.LASF481:
	.string	"PRED_DS_THEORY"
.LASF123:
	.string	"DEFINE_PEEPHOLE"
.LASF35:
	.string	"long long unsigned int"
.LASF314:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF247:
	.string	"offset"
.LASF244:
	.string	"addr_diff_vec_flags"
.LASF119:
	.string	"MATCH_OP_DUP"
.LASF133:
	.string	"SEQUENCE"
.LASF49:
	.string	"QFmode"
.LASF348:
	.string	"sets"
.LASF600:
	.string	"invert_exp_1"
.LASF405:
	.string	"args_info"
.LASF463:
	.string	"limit_stack"
.LASF160:
	.string	"RESX"
.LASF614:
	.string	"mode_size"
.LASF148:
	.string	"PARALLEL"
.LASF498:
	.string	"PRED_ERROR_RETURN"
.LASF13:
	.string	"num_elem"
.LASF198:
	.string	"UNORDERED"
.LASF96:
	.string	"MAX_MACHINE_MODE"
.LASF525:
	.string	"lastexit"
.LASF492:
	.string	"PRED_LOOP_HEADER"
.LASF115:
	.string	"MATCH_SCRATCH"
.LASF165:
	.string	"CONST"
.LASF383:
	.string	"regno_pointer_align"
.LASF214:
	.string	"SQRT"
.LASF322:
	.string	"GR_CC0"
.LASF98:
	.string	"mode_class"
.LASF180:
	.string	"MULT"
.LASF103:
	.string	"MODE_CC"
.LASF537:
	.string	"get_label_after"
.LASF45:
	.string	"PQImode"
.LASF373:
	.string	"sequence_rtl_expr"
.LASF431:
	.string	"x_temp_slots"
.LASF418:
	.string	"x_stack_slot_list"
.LASF430:
	.string	"x_parm_reg_stack_loc"
.LASF143:
	.string	"CALL_INSN"
.LASF574:
	.string	"dest_regno"
.LASF168:
	.string	"SUBREG"
.LASF453:
	.string	"calls_longjmp"
.LASF80:
	.string	"V16QImode"
.LASF294:
	.string	"REG_ALWAYS_RETURN"
.LASF398:
	.string	"decl"
.LASF36:
	.string	"long long int"
.LASF558:
	.string	"condjump_label"
.LASF272:
	.string	"REG_LIBCALL"
.LASF56:
	.string	"QCmode"
.LASF166:
	.string	"VALUE"
.LASF146:
	.string	"NOTE"
.LASF22:
	.string	"sse_nregs"
.LASF190:
	.string	"UMIN"
.LASF116:
	.string	"MATCH_DUP"
.LASF263:
	.string	"basic_block_def"
.LASF628:
	.string	"jump.c"
.LASF483:
	.string	"PRED_NO_PREDICTION"
.LASF619:
	.string	"reload_completed"
.LASF474:
	.string	"varasm_status"
.LASF556:
	.string	"any_uncondjump_p"
.LASF7:
	.string	"used"
.LASF502:
	.string	"TAKEN"
.LASF590:
	.string	"contains_insn"
.LASF301:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF410:
	.string	"x_function_call_count"
.LASF507:
	.string	"prev"
.LASF63:
	.string	"CHImode"
.LASF583:
	.string	"delete_for_peephole"
.LASF317:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF138:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF535:
	.string	"squeeze_notes"
.LASF382:
	.string	"regno_pointer_align_length"
.LASF377:
	.string	"x_first_insn"
.LASF391:
	.string	"x_apply_args_value"
.LASF162:
	.string	"CONST_DOUBLE"
.LASF538:
	.string	"reversed_comparison_code_parts"
.LASF345:
	.string	"first_uid"
.LASF92:
	.string	"CCNOmode"
.LASF73:
	.string	"V4HImode"
.LASF200:
	.string	"UNEQ"
.LASF561:
	.string	"onlyjump_p"
.LASF183:
	.string	"ASHIFT"
.LASF188:
	.string	"SMIN"
.LASF544:
	.string	"__FUNCTION__"
.LASF175:
	.string	"IF_THEN_ELSE"
.LASF539:
	.string	"arg0"
.LASF313:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF399:
	.string	"outer"
.LASF310:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF26:
	.string	"unsigned int"
.LASF630:
	.string	"tree_node"
.LASF514:
	.string	"note"
.LASF415:
	.string	"x_cleanup_label"
.LASF543:
	.string	"reverse_condition"
.LASF201:
	.string	"UNGE"
.LASF33:
	.string	"short int"
.LASF202:
	.string	"UNGT"
.LASF459:
	.string	"has_computed_jump"
.LASF378:
	.string	"x_last_insn"
.LASF462:
	.string	"profile"
.LASF579:
	.string	"was_code_label"
.LASF445:
	.string	"preferred_stack_boundary"
.LASF37:
	.string	"VOIDmode"
.LASF295:
	.string	"REG_VTABLE_REF"
.LASF330:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF218:
	.string	"LO_SUM"
.LASF251:
	.string	"rtwint"
.LASF568:
	.string	"delete_jump"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
