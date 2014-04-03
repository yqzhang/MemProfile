	.file	"cfgcleanup.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cfgcleanup.c -mtune=generic -march=x86-64 -g
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
	.type	notice_new_block, @function
notice_new_block:
.LFB2:
	.file 1 "cfgcleanup.c"
	.loc 1 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# bb, bb
	.loc 1 101 0
	cmpq	$0, -8(%rbp)	#, bb
	jne	.L2	#,
	.loc 1 102 0
	jmp	.L1	#
.L2:
	.loc 1 104 0
	movq	-8(%rbp), %rax	# bb, tmp72
	movq	80(%rax), %rax	# bb_1(D)->aux, D.13015
	orl	$1, %eax	#, D.13017
	movl	%eax, %eax	# D.13017, D.13016
	movq	%rax, %rdx	# D.13016, D.13015
	movq	-8(%rbp), %rax	# bb, tmp73
	movq	%rdx, 80(%rax)	# D.13015, bb_1(D)->aux
	.loc 1 105 0
	movq	-8(%rbp), %rax	# bb, tmp74
	movq	%rax, %rdi	# tmp74,
	call	forwarder_block_p	#
	testb	%al, %al	# D.13018
	je	.L1	#,
	.loc 1 106 0
	movq	-8(%rbp), %rax	# bb, tmp75
	movq	80(%rax), %rax	# bb_1(D)->aux, D.13015
	orl	$2, %eax	#, D.13017
	movl	%eax, %eax	# D.13017, D.13016
	movq	%rax, %rdx	# D.13016, D.13015
	movq	-8(%rbp), %rax	# bb, tmp76
	movq	%rdx, 80(%rax)	# D.13015, bb_1(D)->aux
.L1:
	.loc 1 107 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	notice_new_block, .-notice_new_block
	.type	update_forwarder_flag, @function
update_forwarder_flag:
.LFB3:
	.loc 1 114 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# bb, bb
	.loc 1 115 0
	movq	-8(%rbp), %rax	# bb, tmp72
	movq	%rax, %rdi	# tmp72,
	call	forwarder_block_p	#
	testb	%al, %al	# D.13019
	je	.L5	#,
	.loc 1 116 0
	movq	-8(%rbp), %rax	# bb, tmp73
	movq	80(%rax), %rax	# bb_1(D)->aux, D.13020
	orl	$2, %eax	#, D.13022
	movl	%eax, %eax	# D.13022, D.13021
	movq	%rax, %rdx	# D.13021, D.13020
	movq	-8(%rbp), %rax	# bb, tmp74
	movq	%rdx, 80(%rax)	# D.13020, bb_1(D)->aux
	jmp	.L4	#
.L5:
	.loc 1 118 0
	movq	-8(%rbp), %rax	# bb, tmp75
	movq	80(%rax), %rax	# bb_1(D)->aux, D.13020
	movl	%eax, %eax	# D.13022, D.13021
	andl	$4294967293, %eax	#, D.13021
	movq	%rax, %rdx	# D.13021, D.13020
	movq	-8(%rbp), %rax	# bb, tmp76
	movq	%rdx, 80(%rax)	# D.13020, bb_1(D)->aux
.L4:
	.loc 1 119 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	update_forwarder_flag, .-update_forwarder_flag
	.section	.rodata
	.align 8
.LC0:
	.string	"Simplifying condjump %i around jump %i\n"
	.text
	.type	try_simplify_condjump, @function
try_simplify_condjump:
.LFB4:
	.loc 1 127 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# cbranch_block, cbranch_block
	.loc 1 133 0
	movq	-56(%rbp), %rax	# cbranch_block, tmp101
	movq	40(%rax), %rax	# cbranch_block_4(D)->succ, D.13024
	testq	%rax, %rax	# D.13024
	je	.L8	#,
	.loc 1 134 0
	movq	-56(%rbp), %rax	# cbranch_block, tmp102
	movq	40(%rax), %rax	# cbranch_block_4(D)->succ, D.13024
	movq	8(%rax), %rax	# _6->succ_next, D.13024
	testq	%rax, %rax	# D.13024
	je	.L8	#,
	.loc 1 135 0
	movq	-56(%rbp), %rax	# cbranch_block, tmp103
	movq	40(%rax), %rax	# cbranch_block_4(D)->succ, D.13024
	movq	8(%rax), %rax	# _8->succ_next, D.13024
	movq	8(%rax), %rax	# _9->succ_next, D.13024
	testq	%rax, %rax	# D.13024
	je	.L9	#,
.L8:
	.loc 1 136 0
	movl	$0, %eax	#, D.13023
	jmp	.L10	#
.L9:
	.loc 1 140 0
	movq	-56(%rbp), %rax	# cbranch_block, tmp104
	movq	8(%rax), %rax	# cbranch_block_4(D)->end, tmp105
	movq	%rax, -48(%rbp)	# tmp105, cbranch_insn
	.loc 1 141 0
	movq	-48(%rbp), %rax	# cbranch_insn, tmp106
	movq	%rax, %rdi	# tmp106,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.13025
	jne	.L11	#,
	.loc 1 142 0
	movl	$0, %eax	#, D.13023
	jmp	.L10	#
.L11:
	.loc 1 144 0
	movq	-56(%rbp), %rax	# cbranch_block, tmp107
	movq	40(%rax), %rax	# cbranch_block_4(D)->succ, D.13024
	movl	48(%rax), %eax	# _14->flags, D.13025
	andl	$1, %eax	#, D.13025
	testl	%eax, %eax	# D.13025
	je	.L12	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cbranch_block, tmp108
	movq	40(%rax), %rax	# cbranch_block_4(D)->succ, iftmp.0
	jmp	.L13	#
.L12:
	.loc 1 144 0 discriminator 2
	movq	-56(%rbp), %rax	# cbranch_block, tmp109
	movq	40(%rax), %rax	# cbranch_block_4(D)->succ, D.13024
	movq	8(%rax), %rax	# _18->succ_next, iftmp.0
.L13:
	.loc 1 144 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.0, cbranch_fallthru_edge
	.loc 1 145 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# cbranch_block, tmp110
	movq	40(%rax), %rax	# cbranch_block_4(D)->succ, D.13024
	movl	48(%rax), %eax	# _21->flags, D.13025
	andl	$1, %eax	#, D.13025
	testl	%eax, %eax	# D.13025
	je	.L14	#,
	.loc 1 145 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cbranch_block, tmp111
	movq	40(%rax), %rax	# cbranch_block_4(D)->succ, D.13024
	movq	8(%rax), %rax	# _24->succ_next, iftmp.1
	jmp	.L15	#
.L14:
	.loc 1 145 0 discriminator 2
	movq	-56(%rbp), %rax	# cbranch_block, tmp112
	movq	40(%rax), %rax	# cbranch_block_4(D)->succ, iftmp.1
.L15:
	.loc 1 145 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.1, cbranch_jump_edge
	.loc 1 150 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# cbranch_fallthru_edge, tmp113
	movq	24(%rax), %rax	# cbranch_fallthru_edge_20->dest, tmp114
	movq	%rax, -24(%rbp)	# tmp114, jump_block
	.loc 1 151 0 discriminator 3
	movq	-24(%rbp), %rax	# jump_block, tmp115
	movq	32(%rax), %rax	# jump_block_28->pred, D.13024
	movq	(%rax), %rax	# _29->pred_next, D.13024
	testq	%rax, %rax	# D.13024
	jne	.L16	#,
	.loc 1 152 0
	movq	-24(%rbp), %rax	# jump_block, tmp116
	movl	88(%rax), %eax	# jump_block_28->index, D.13025
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.2
	subl	$1, %edx	#, D.13025
	cmpl	%edx, %eax	# D.13025, D.13025
	je	.L16	#,
	.loc 1 153 0
	movq	-24(%rbp), %rax	# jump_block, tmp117
	movq	80(%rax), %rax	# jump_block_28->aux, D.13026
	andl	$2, %eax	#, D.13028
	testl	%eax, %eax	# D.13028
	jne	.L17	#,
.L16:
	.loc 1 154 0
	movl	$0, %eax	#, D.13023
	jmp	.L10	#
.L17:
	.loc 1 155 0
	movq	-24(%rbp), %rax	# jump_block, tmp118
	movq	40(%rax), %rax	# jump_block_28->succ, D.13024
	movq	24(%rax), %rax	# _38->dest, tmp119
	movq	%rax, -16(%rbp)	# tmp119, jump_dest_block
	.loc 1 159 0
	movq	-32(%rbp), %rax	# cbranch_jump_edge, tmp120
	movq	24(%rax), %rax	# cbranch_jump_edge_27->dest, tmp121
	movq	%rax, -8(%rbp)	# tmp121, cbranch_dest_block
	.loc 1 161 0
	movq	-8(%rbp), %rdx	# cbranch_dest_block, tmp122
	movq	-24(%rbp), %rax	# jump_block, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	can_fallthru	#
	xorl	$1, %eax	#, D.13023
	testb	%al, %al	# D.13023
	je	.L18	#,
	.loc 1 162 0
	movl	$0, %eax	#, D.13023
	jmp	.L10	#
.L18:
	.loc 1 165 0
	movq	-16(%rbp), %rax	# jump_dest_block, tmp124
	movq	%rax, %rdi	# tmp124,
	call	block_label	#
	movq	%rax, %rcx	#, D.13029
	movq	-48(%rbp), %rax	# cbranch_insn, tmp125
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13029,
	movq	%rax, %rdi	# tmp125,
	call	invert_jump	#
	testl	%eax, %eax	# D.13025
	jne	.L19	#,
	.loc 1 166 0
	movl	$0, %eax	#, D.13023
	jmp	.L10	#
.L19:
	.loc 1 168 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.3
	testq	%rax, %rax	# rtl_dump_file.3
	je	.L20	#,
	.loc 1 170 0
	movq	-24(%rbp), %rax	# jump_block, tmp126
	movq	8(%rax), %rax	# jump_block_28->end, D.13029
	.loc 1 169 0
	movl	8(%rax), %ecx	# _48->fld[0].rtint, D.13025
	movq	-48(%rbp), %rax	# cbranch_insn, tmp127
	movl	8(%rax), %edx	# cbranch_insn_11->fld[0].rtint, D.13025
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.4
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.4,
	movl	$0, %eax	#,
	call	fprintf	#
.L20:
	.loc 1 175 0
	movq	-8(%rbp), %rdx	# cbranch_dest_block, tmp128
	movq	-32(%rbp), %rax	# cbranch_jump_edge, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	redirect_edge_succ_nodup	#
	movq	%rax, -32(%rbp)	# tmp130, cbranch_jump_edge
	.loc 1 177 0
	movq	-16(%rbp), %rdx	# jump_dest_block, tmp131
	movq	-40(%rbp), %rax	# cbranch_fallthru_edge, tmp132
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	redirect_edge_succ_nodup	#
	movq	%rax, -40(%rbp)	# tmp133, cbranch_fallthru_edge
	.loc 1 179 0
	movq	-32(%rbp), %rax	# cbranch_jump_edge, tmp134
	movl	48(%rax), %eax	# cbranch_jump_edge_52->flags, D.13025
	orl	$1, %eax	#, D.13025
	movl	%eax, %edx	# D.13025, D.13025
	movq	-32(%rbp), %rax	# cbranch_jump_edge, tmp135
	movl	%edx, 48(%rax)	# D.13025, cbranch_jump_edge_52->flags
	.loc 1 180 0
	movq	-40(%rbp), %rax	# cbranch_fallthru_edge, tmp136
	movl	48(%rax), %eax	# cbranch_fallthru_edge_53->flags, D.13025
	andl	$-2, %eax	#, D.13025
	movl	%eax, %edx	# D.13025, D.13025
	movq	-40(%rbp), %rax	# cbranch_fallthru_edge, tmp137
	movl	%edx, 48(%rax)	# D.13025, cbranch_fallthru_edge_53->flags
	.loc 1 181 0
	movq	-56(%rbp), %rax	# cbranch_block, tmp138
	movq	%rax, %rdi	# tmp138,
	call	update_br_prob_note	#
	.loc 1 184 0
	movq	-24(%rbp), %rax	# jump_block, tmp139
	movq	%rax, %rdi	# tmp139,
	call	flow_delete_block	#
	.loc 1 185 0
	movq	-8(%rbp), %rdx	# cbranch_dest_block, tmp140
	movq	-56(%rbp), %rcx	# cbranch_block, tmp141
	movq	-32(%rbp), %rax	# cbranch_jump_edge, tmp142
	movq	%rcx, %rsi	# tmp141,
	movq	%rax, %rdi	# tmp142,
	call	tidy_fallthru_edge	#
	.loc 1 187 0
	movl	$1, %eax	#, D.13023
.L10:
	.loc 1 188 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	try_simplify_condjump, .-try_simplify_condjump
	.type	mark_effect, @function
mark_effect:
.LFB5:
	.loc 1 197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# exp, exp
	movq	%rsi, -64(%rbp)	# nonequal, nonequal
	.loc 1 200 0
	movq	-56(%rbp), %rax	# exp, tmp134
	movzwl	(%rax), %eax	# exp_20(D)->code, D.13032
	movzwl	%ax, %eax	# D.13032, D.13033
	cmpl	$47, %eax	#, D.13033
	je	.L23	#,
	cmpl	$49, %eax	#, D.13033
	jne	.L77	#,
	.loc 1 205 0
	movq	-56(%rbp), %rax	# exp, tmp135
	movq	8(%rax), %rax	# exp_20(D)->fld[0].rtx, D.13034
	movzwl	(%rax), %eax	# _23->code, D.13032
	cmpw	$61, %ax	#, D.13032
	jne	.L25	#,
	.loc 1 207 0
	movq	-56(%rbp), %rax	# exp, tmp136
	movq	8(%rax), %rax	# exp_20(D)->fld[0].rtx, tmp137
	movq	%rax, -24(%rbp)	# tmp137, dest
	.loc 1 208 0
	movq	-24(%rbp), %rax	# dest, tmp138
	movl	8(%rax), %eax	# dest_25->fld[0].rtuint, D.13033
	movl	%eax, -28(%rbp)	# D.13033, regno
	.loc 1 209 0
	movl	-28(%rbp), %edx	# regno, tmp139
	movq	-64(%rbp), %rax	# nonequal, tmp140
	movl	%edx, %esi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	bitmap_clear_bit	#
	.loc 1 210 0
	cmpl	$52, -28(%rbp)	#, regno
	jg	.L25	#,
.LBB2:
	.loc 1 212 0
	cmpl	$7, -28(%rbp)	#, regno
	jle	.L26	#,
	.loc 1 212 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, regno
	jle	.L27	#,
.L26:
	.loc 1 212 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, regno
	jle	.L28	#,
	.loc 1 212 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, regno
	jle	.L27	#,
.L28:
	.loc 1 212 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, regno
	jle	.L29	#,
	.loc 1 212 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, regno
	jle	.L27	#,
.L29:
	.loc 1 212 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, regno
	jle	.L30	#,
	.loc 1 212 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, regno
	jg	.L30	#,
.L27:
	movq	-24(%rbp), %rax	# dest, tmp141
	movzbl	2(%rax), %eax	# dest_25->mode, D.13035
	movzbl	%al, %eax	# D.13035, D.13036
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13037
	cmpl	$5, %eax	#, D.13037
	je	.L31	#,
	.loc 1 212 0 discriminator 2
	movq	-24(%rbp), %rax	# dest, tmp143
	movzbl	2(%rax), %eax	# dest_25->mode, D.13035
	movzbl	%al, %eax	# D.13035, D.13036
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13037
	cmpl	$6, %eax	#, D.13037
	jne	.L32	#,
.L31:
	.loc 1 212 0 discriminator 1
	movl	$2, %eax	#, iftmp.6
	jmp	.L33	#
.L32:
	movl	$1, %eax	#, iftmp.6
.L33:
	.loc 1 212 0 discriminator 3
	jmp	.L34	#
.L30:
	.loc 1 212 0 discriminator 2
	movq	-24(%rbp), %rax	# dest, tmp145
	movzbl	2(%rax), %eax	# dest_25->mode, D.13035
	cmpb	$18, %al	#, D.13035
	jne	.L35	#,
	.loc 1 212 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.9
	andl	$33554432, %eax	#, D.13036
	testl	%eax, %eax	# D.13036
	je	.L36	#,
	movl	$2, %eax	#, iftmp.8
	jmp	.L34	#
.L36:
	.loc 1 212 0 discriminator 2
	movl	$3, %eax	#, iftmp.8
	jmp	.L34	#
.L35:
	movq	-24(%rbp), %rax	# dest, tmp146
	movzbl	2(%rax), %eax	# dest_25->mode, D.13035
	cmpb	$24, %al	#, D.13035
	jne	.L39	#,
	.loc 1 212 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.12
	andl	$33554432, %eax	#, D.13036
	testl	%eax, %eax	# D.13036
	je	.L40	#,
	movl	$4, %eax	#, iftmp.11
	jmp	.L34	#
.L40:
	.loc 1 212 0 discriminator 2
	movl	$6, %eax	#, iftmp.11
	jmp	.L34	#
.L39:
	movq	-24(%rbp), %rax	# dest, tmp147
	movzbl	2(%rax), %eax	# dest_25->mode, D.13035
	movzbl	%al, %eax	# D.13035, D.13036
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13035
	movzbl	%al, %edx	# D.13035, D.13036
	movl	target_flags(%rip), %eax	# target_flags, target_flags.14
	andl	$33554432, %eax	#, D.13036
	testl	%eax, %eax	# D.13036
	je	.L43	#,
	.loc 1 212 0 discriminator 1
	movl	$8, %eax	#, iftmp.13
	jmp	.L44	#
.L43:
	.loc 1 212 0 discriminator 2
	movl	$4, %eax	#, iftmp.13
.L44:
	.loc 1 212 0 discriminator 3
	addl	%edx, %eax	# D.13036, D.13036
	subl	$1, %eax	#, D.13036
	movl	target_flags(%rip), %edx	# target_flags, target_flags.16
	andl	$33554432, %edx	#, D.13036
	testl	%edx, %edx	# D.13036
	je	.L45	#,
	.loc 1 212 0 discriminator 1
	movl	$8, %ecx	#, iftmp.15
	jmp	.L46	#
.L45:
	.loc 1 212 0 discriminator 2
	movl	$4, %ecx	#, iftmp.15
.L46:
	.loc 1 212 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.15
.L34:
	movl	%eax, -36(%rbp)	# iftmp.5, n
	.loc 1 213 0 is_stmt 1 discriminator 3
	jmp	.L47	#
.L48:
	.loc 1 214 0
	movl	-36(%rbp), %eax	# n, tmp151
	movl	-28(%rbp), %edx	# regno, tmp152
	addl	%eax, %edx	# tmp151, D.13036
	movq	-64(%rbp), %rax	# nonequal, tmp153
	movl	%edx, %esi	# D.13036,
	movq	%rax, %rdi	# tmp153,
	call	bitmap_clear_bit	#
.L47:
	.loc 1 213 0 discriminator 1
	subl	$1, -36(%rbp)	#, n
	cmpl	$0, -36(%rbp)	#, n
	jg	.L48	#,
.L25:
.LBE2:
	.loc 1 217 0
	movl	$0, %eax	#, D.13031
	jmp	.L49	#
.L23:
	.loc 1 220 0
	movq	-56(%rbp), %rax	# exp, tmp154
	movq	16(%rax), %rdx	# exp_20(D)->fld[1].rtx, D.13034
	movq	-56(%rbp), %rax	# exp, tmp155
	movq	8(%rax), %rax	# exp_20(D)->fld[0].rtx, D.13034
	movq	%rdx, %rsi	# D.13034,
	movq	%rax, %rdi	# D.13034,
	call	rtx_equal_for_cselib_p	#
	testl	%eax, %eax	# D.13036
	je	.L50	#,
	.loc 1 221 0
	movl	$0, %eax	#, D.13031
	jmp	.L49	#
.L50:
	.loc 1 222 0
	movq	-56(%rbp), %rax	# exp, tmp156
	movq	8(%rax), %rax	# exp_20(D)->fld[0].rtx, tmp157
	movq	%rax, -24(%rbp)	# tmp157, dest
	.loc 1 223 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.13034
	cmpq	-24(%rbp), %rax	# dest, D.13034
	jne	.L51	#,
	.loc 1 224 0
	movl	$0, %eax	#, D.13031
	jmp	.L49	#
.L51:
	.loc 1 225 0
	movq	-24(%rbp), %rax	# dest, tmp158
	movzwl	(%rax), %eax	# dest_75->code, D.13032
	cmpw	$61, %ax	#, D.13032
	je	.L52	#,
	.loc 1 226 0
	movl	$1, %eax	#, D.13031
	jmp	.L49	#
.L52:
	.loc 1 227 0
	movq	-24(%rbp), %rax	# dest, tmp159
	movl	8(%rax), %eax	# dest_75->fld[0].rtuint, D.13033
	movl	%eax, -28(%rbp)	# D.13033, regno
	.loc 1 228 0
	movl	-28(%rbp), %edx	# regno, tmp160
	movq	-64(%rbp), %rax	# nonequal, tmp161
	movl	%edx, %esi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	bitmap_set_bit	#
	.loc 1 229 0
	cmpl	$52, -28(%rbp)	#, regno
	jg	.L53	#,
.LBB3:
	.loc 1 231 0
	cmpl	$7, -28(%rbp)	#, regno
	jle	.L54	#,
	.loc 1 231 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, regno
	jle	.L55	#,
.L54:
	.loc 1 231 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, regno
	jle	.L56	#,
	.loc 1 231 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, regno
	jle	.L55	#,
.L56:
	.loc 1 231 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, regno
	jle	.L57	#,
	.loc 1 231 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, regno
	jle	.L55	#,
.L57:
	.loc 1 231 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, regno
	jle	.L58	#,
	.loc 1 231 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, regno
	jg	.L58	#,
.L55:
	movq	-24(%rbp), %rax	# dest, tmp162
	movzbl	2(%rax), %eax	# dest_75->mode, D.13035
	movzbl	%al, %eax	# D.13035, D.13036
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13037
	cmpl	$5, %eax	#, D.13037
	je	.L59	#,
	.loc 1 231 0 discriminator 2
	movq	-24(%rbp), %rax	# dest, tmp164
	movzbl	2(%rax), %eax	# dest_75->mode, D.13035
	movzbl	%al, %eax	# D.13035, D.13036
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.13037
	cmpl	$6, %eax	#, D.13037
	jne	.L60	#,
.L59:
	.loc 1 231 0 discriminator 1
	movl	$2, %eax	#, iftmp.18
	jmp	.L61	#
.L60:
	movl	$1, %eax	#, iftmp.18
.L61:
	.loc 1 231 0 discriminator 3
	jmp	.L62	#
.L58:
	.loc 1 231 0 discriminator 2
	movq	-24(%rbp), %rax	# dest, tmp166
	movzbl	2(%rax), %eax	# dest_75->mode, D.13035
	cmpb	$18, %al	#, D.13035
	jne	.L63	#,
	.loc 1 231 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.21
	andl	$33554432, %eax	#, D.13036
	testl	%eax, %eax	# D.13036
	je	.L64	#,
	movl	$2, %eax	#, iftmp.20
	jmp	.L62	#
.L64:
	.loc 1 231 0 discriminator 2
	movl	$3, %eax	#, iftmp.20
	jmp	.L62	#
.L63:
	movq	-24(%rbp), %rax	# dest, tmp167
	movzbl	2(%rax), %eax	# dest_75->mode, D.13035
	cmpb	$24, %al	#, D.13035
	jne	.L67	#,
	.loc 1 231 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.24
	andl	$33554432, %eax	#, D.13036
	testl	%eax, %eax	# D.13036
	je	.L68	#,
	movl	$4, %eax	#, iftmp.23
	jmp	.L62	#
.L68:
	.loc 1 231 0 discriminator 2
	movl	$6, %eax	#, iftmp.23
	jmp	.L62	#
.L67:
	movq	-24(%rbp), %rax	# dest, tmp168
	movzbl	2(%rax), %eax	# dest_75->mode, D.13035
	movzbl	%al, %eax	# D.13035, D.13036
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.13035
	movzbl	%al, %edx	# D.13035, D.13036
	movl	target_flags(%rip), %eax	# target_flags, target_flags.26
	andl	$33554432, %eax	#, D.13036
	testl	%eax, %eax	# D.13036
	je	.L71	#,
	.loc 1 231 0 discriminator 1
	movl	$8, %eax	#, iftmp.25
	jmp	.L72	#
.L71:
	.loc 1 231 0 discriminator 2
	movl	$4, %eax	#, iftmp.25
.L72:
	.loc 1 231 0 discriminator 3
	addl	%edx, %eax	# D.13036, D.13036
	subl	$1, %eax	#, D.13036
	movl	target_flags(%rip), %edx	# target_flags, target_flags.28
	andl	$33554432, %edx	#, D.13036
	testl	%edx, %edx	# D.13036
	je	.L73	#,
	.loc 1 231 0 discriminator 1
	movl	$8, %ebx	#, iftmp.27
	jmp	.L74	#
.L73:
	.loc 1 231 0 discriminator 2
	movl	$4, %ebx	#, iftmp.27
.L74:
	.loc 1 231 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.27
.L62:
	movl	%eax, -32(%rbp)	# iftmp.17, n
	.loc 1 232 0 is_stmt 1 discriminator 3
	jmp	.L75	#
.L76:
	.loc 1 233 0
	movl	-32(%rbp), %eax	# n, tmp172
	movl	-28(%rbp), %edx	# regno, tmp173
	addl	%eax, %edx	# tmp172, D.13036
	movq	-64(%rbp), %rax	# nonequal, tmp174
	movl	%edx, %esi	# D.13036,
	movq	%rax, %rdi	# tmp174,
	call	bitmap_set_bit	#
.L75:
	.loc 1 232 0 discriminator 1
	subl	$1, -32(%rbp)	#, n
	cmpl	$0, -32(%rbp)	#, n
	jg	.L76	#,
.L53:
.LBE3:
	.loc 1 235 0
	movl	$0, %eax	#, D.13031
	jmp	.L49	#
.L77:
	.loc 1 238 0
	movl	$0, %eax	#, D.13031
.L49:
	.loc 1 240 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	mark_effect, .-mark_effect
	.type	thread_jump, @function
thread_jump:
.LFB6:
	.loc 1 250 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -132(%rbp)	# mode, mode
	movq	%rsi, -144(%rbp)	# e, e
	movq	%rdx, -152(%rbp)	# b, b
	.loc 1 253 0
	movb	$0, -126(%rbp)	#, reverse1
	.loc 1 256 0
	movb	$0, -125(%rbp)	#, failed
	.loc 1 260 0
	movq	-144(%rbp), %rax	# e, tmp173
	movq	16(%rax), %rax	# e_24(D)->src, D.13039
	movq	40(%rax), %rax	# _25->succ, D.13040
	movq	8(%rax), %rax	# _26->succ_next, D.13040
	testq	%rax, %rax	# D.13040
	je	.L79	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# e, tmp174
	movq	16(%rax), %rax	# e_24(D)->src, D.13039
	movq	40(%rax), %rax	# _28->succ, D.13040
	movq	8(%rax), %rax	# _29->succ_next, D.13040
	movq	8(%rax), %rax	# _30->succ_next, D.13040
	testq	%rax, %rax	# D.13040
	je	.L80	#,
.L79:
	.loc 1 261 0 is_stmt 1
	movl	$0, %eax	#, D.13038
	jmp	.L81	#
.L80:
	.loc 1 262 0
	movq	-152(%rbp), %rax	# b, tmp175
	movq	40(%rax), %rax	# b_32(D)->succ, D.13040
	testq	%rax, %rax	# D.13040
	je	.L82	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# b, tmp176
	movq	40(%rax), %rax	# b_32(D)->succ, D.13040
	movq	8(%rax), %rax	# _34->succ_next, D.13040
	testq	%rax, %rax	# D.13040
	je	.L82	#,
	movq	-152(%rbp), %rax	# b, tmp177
	movq	40(%rax), %rax	# b_32(D)->succ, D.13040
	movq	8(%rax), %rax	# _36->succ_next, D.13040
	movq	8(%rax), %rax	# _37->succ_next, D.13040
	testq	%rax, %rax	# D.13040
	je	.L83	#,
.L82:
	.loc 1 263 0 is_stmt 1
	movl	$0, %eax	#, D.13038
	jmp	.L81	#
.L83:
	.loc 1 266 0
	movq	-144(%rbp), %rax	# e, tmp178
	movq	16(%rax), %rax	# e_24(D)->src, D.13039
	movq	8(%rax), %rax	# _39->end, D.13041
	movq	%rax, %rdi	# D.13041,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.13042
	je	.L84	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# b, tmp179
	movq	8(%rax), %rax	# b_32(D)->end, D.13041
	movq	%rax, %rdi	# D.13041,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.13042
	je	.L84	#,
	.loc 1 267 0 is_stmt 1
	movq	-152(%rbp), %rax	# b, tmp180
	movq	8(%rax), %rax	# b_32(D)->end, D.13041
	movq	%rax, %rdi	# D.13041,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.13042
	jne	.L85	#,
.L84:
	.loc 1 268 0
	movl	$0, %eax	#, D.13038
	jmp	.L81	#
.L85:
	.loc 1 270 0
	movq	-144(%rbp), %rax	# e, tmp181
	movq	16(%rax), %rax	# e_24(D)->src, D.13039
	movq	8(%rax), %rax	# _46->end, D.13041
	movq	%rax, %rdi	# D.13041,
	call	pc_set	#
	movq	%rax, -80(%rbp)	# tmp182, set1
	.loc 1 271 0
	movq	-152(%rbp), %rax	# b, tmp183
	movq	8(%rax), %rax	# b_32(D)->end, D.13041
	movq	%rax, %rdi	# D.13041,
	call	pc_set	#
	movq	%rax, -72(%rbp)	# tmp184, set2
	.loc 1 272 0
	movq	-144(%rbp), %rax	# e, tmp185
	movl	48(%rax), %eax	# e_24(D)->flags, D.13042
	andl	$1, %eax	#, D.13042
	.loc 1 273 0
	testl	%eax, %eax	# D.13042
	setne	%cl	#, D.13043
	movq	-80(%rbp), %rax	# set1, tmp186
	movq	16(%rax), %rax	# set1_48->fld[1].rtx, D.13041
	movq	16(%rax), %rdx	# _54->fld[1].rtx, D.13041
	movq	global_rtl(%rip), %rax	# global_rtl, D.13041
	cmpq	%rax, %rdx	# D.13041, D.13041
	sete	%al	#, D.13043
	xorl	%ecx, %eax	# D.13043, D.13043
	.loc 1 272 0
	testb	%al, %al	# D.13043
	je	.L86	#,
	.loc 1 274 0
	movb	$1, -126(%rbp)	#, reverse1
.L86:
	.loc 1 276 0
	movq	-80(%rbp), %rax	# set1, tmp187
	movq	16(%rax), %rax	# set1_48->fld[1].rtx, D.13041
	movq	8(%rax), %rax	# _60->fld[0].rtx, tmp188
	movq	%rax, -64(%rbp)	# tmp188, cond1
	.loc 1 277 0
	movq	-72(%rbp), %rax	# set2, tmp189
	movq	16(%rax), %rax	# set2_50->fld[1].rtx, D.13041
	movq	8(%rax), %rax	# _62->fld[0].rtx, tmp190
	movq	%rax, -56(%rbp)	# tmp190, cond2
	.loc 1 278 0
	cmpb	$0, -126(%rbp)	#, reverse1
	je	.L87	#,
	.loc 1 279 0
	movq	-144(%rbp), %rax	# e, tmp191
	movq	16(%rax), %rax	# e_24(D)->src, D.13039
	movq	8(%rax), %rdx	# _64->end, D.13041
	movq	-64(%rbp), %rax	# cond1, tmp192
	movq	%rdx, %rsi	# D.13041,
	movq	%rax, %rdi	# tmp192,
	call	reversed_comparison_code	#
	movl	%eax, -124(%rbp)	# tmp193, code1
	jmp	.L88	#
.L87:
	.loc 1 281 0
	movq	-64(%rbp), %rax	# cond1, tmp194
	movzwl	(%rax), %eax	# cond1_61->code, D.13044
	movzwl	%ax, %eax	# D.13044, tmp195
	movl	%eax, -124(%rbp)	# tmp195, code1
.L88:
	.loc 1 283 0
	movq	-56(%rbp), %rax	# cond2, tmp196
	movzwl	(%rax), %eax	# cond2_63->code, D.13044
	movzwl	%ax, %eax	# D.13044, tmp197
	movl	%eax, -108(%rbp)	# tmp197, code2
	.loc 1 284 0
	movq	-152(%rbp), %rax	# b, tmp198
	movq	8(%rax), %rdx	# b_32(D)->end, D.13041
	movq	-56(%rbp), %rax	# cond2, tmp199
	movq	%rdx, %rsi	# D.13041,
	movq	%rax, %rdi	# tmp199,
	call	reversed_comparison_code	#
	movl	%eax, -104(%rbp)	# tmp200, reversed_code2
	.loc 1 286 0
	movl	-108(%rbp), %edx	# code2, tmp201
	movl	-124(%rbp), %eax	# code1, tmp202
	movl	%edx, %esi	# tmp201,
	movl	%eax, %edi	# tmp202,
	call	comparison_dominates_p	#
	testl	%eax, %eax	# D.13042
	jne	.L89	#,
	.loc 1 287 0
	movl	-104(%rbp), %edx	# reversed_code2, tmp203
	movl	-124(%rbp), %eax	# code1, tmp204
	movl	%edx, %esi	# tmp203,
	movl	%eax, %edi	# tmp204,
	call	comparison_dominates_p	#
	testl	%eax, %eax	# D.13042
	jne	.L89	#,
	.loc 1 288 0
	movl	$0, %eax	#, D.13038
	jmp	.L81	#
.L89:
	.loc 1 294 0
	movq	-56(%rbp), %rax	# cond2, tmp205
	movq	8(%rax), %rdx	# cond2_63->fld[0].rtx, D.13041
	movq	-64(%rbp), %rax	# cond1, tmp206
	movq	8(%rax), %rax	# cond1_61->fld[0].rtx, D.13041
	movq	%rdx, %rsi	# D.13041,
	movq	%rax, %rdi	# D.13041,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13042
	je	.L90	#,
	.loc 1 295 0
	movq	-56(%rbp), %rax	# cond2, tmp207
	movq	16(%rax), %rdx	# cond2_63->fld[1].rtx, D.13041
	movq	-64(%rbp), %rax	# cond1, tmp208
	movq	16(%rax), %rax	# cond1_61->fld[1].rtx, D.13041
	movq	%rdx, %rsi	# D.13041,
	movq	%rax, %rdi	# D.13041,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13042
	jne	.L91	#,
.L90:
	.loc 1 296 0
	movl	$0, %eax	#, D.13038
	jmp	.L81	#
.L91:
	.loc 1 300 0
	movq	-152(%rbp), %rax	# b, tmp209
	movq	(%rax), %rax	# b_32(D)->head, D.13041
	movq	24(%rax), %rax	# _82->fld[2].rtx, tmp210
	movq	%rax, -96(%rbp)	# tmp210, insn
	jmp	.L92	#
.L94:
	.loc 1 302 0
	movq	-96(%rbp), %rax	# insn, tmp211
	movzwl	(%rax), %eax	# insn_1->code, D.13044
	movzwl	%ax, %eax	# D.13044, D.13042
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13045
	cmpb	$105, %al	#, D.13045
	jne	.L93	#,
	.loc 1 302 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# insn, tmp213
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.13041
	movq	%rax, %rdi	# D.13041,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13042
	je	.L93	#,
	.loc 1 303 0 is_stmt 1
	movl	$0, %eax	#, D.13038
	jmp	.L81	#
.L93:
	.loc 1 301 0
	movq	-96(%rbp), %rax	# insn, tmp214
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp215
	movq	%rax, -96(%rbp)	# tmp215, insn
.L92:
	.loc 1 300 0 discriminator 1
	movq	-152(%rbp), %rax	# b, tmp216
	movq	8(%rax), %rax	# b_32(D)->end, D.13041
	movq	24(%rax), %rax	# _84->fld[2].rtx, D.13041
	cmpq	-96(%rbp), %rax	# insn, D.13041
	jne	.L94	#,
	.loc 1 305 0
	call	cselib_init	#
	.loc 1 308 0
	movq	-144(%rbp), %rax	# e, tmp217
	movq	16(%rax), %rax	# e_24(D)->src, D.13039
	movq	(%rax), %rax	# _93->head, D.13041
	movq	24(%rax), %rax	# _94->fld[2].rtx, tmp218
	movq	%rax, -96(%rbp)	# tmp218, insn
	jmp	.L95	#
.L97:
	.loc 1 310 0
	movq	-96(%rbp), %rax	# insn, tmp219
	movzwl	(%rax), %eax	# insn_2->code, D.13044
	movzwl	%ax, %eax	# D.13044, D.13042
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13045
	cmpb	$105, %al	#, D.13045
	jne	.L96	#,
	.loc 1 311 0
	movq	-96(%rbp), %rax	# insn, tmp221
	movq	%rax, %rdi	# tmp221,
	call	cselib_process_insn	#
.L96:
	.loc 1 309 0
	movq	-96(%rbp), %rax	# insn, tmp222
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp223
	movq	%rax, -96(%rbp)	# tmp223, insn
.L95:
	.loc 1 308 0 discriminator 1
	movq	-144(%rbp), %rax	# e, tmp224
	movq	16(%rax), %rax	# e_24(D)->src, D.13039
	movq	8(%rax), %rax	# _96->end, D.13041
	movq	24(%rax), %rax	# _97->fld[2].rtx, D.13041
	cmpq	-96(%rbp), %rax	# insn, D.13041
	jne	.L97	#,
	.loc 1 313 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.13046,
	call	bitmap_initialize	#
	movq	%rax, -48(%rbp)	# tmp226, nonequal
	.loc 1 314 0
	movq	-48(%rbp), %rax	# nonequal, tmp227
	movq	%rax, %rdi	# tmp227,
	call	bitmap_clear	#
	.loc 1 320 0
	movq	-152(%rbp), %rax	# b, tmp228
	movq	(%rax), %rax	# b_32(D)->head, D.13041
	movq	24(%rax), %rax	# _105->fld[2].rtx, tmp229
	movq	%rax, -96(%rbp)	# tmp229, insn
	jmp	.L98	#
.L104:
	.loc 1 323 0
	movq	-96(%rbp), %rax	# insn, tmp230
	movzwl	(%rax), %eax	# insn_3->code, D.13044
	movzwl	%ax, %eax	# D.13044, D.13042
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13045
	cmpb	$105, %al	#, D.13045
	jne	.L99	#,
.LBB4:
	.loc 1 325 0
	movq	-96(%rbp), %rax	# insn, tmp232
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, tmp233
	movq	%rax, -40(%rbp)	# tmp233, pat
	.loc 1 327 0
	movq	-40(%rbp), %rax	# pat, tmp234
	movzwl	(%rax), %eax	# pat_113->code, D.13044
	cmpw	$39, %ax	#, D.13044
	jne	.L100	#,
	.loc 1 329 0
	movl	$0, -120(%rbp)	#, i
	jmp	.L101	#
.L102:
	.loc 1 330 0 discriminator 2
	movzbl	-125(%rbp), %ebx	# failed, D.13042
	movq	-40(%rbp), %rax	# pat, tmp235
	movq	8(%rax), %rax	# pat_113->fld[0].rtvec, D.13047
	movl	-120(%rbp), %edx	# i, tmp237
	movslq	%edx, %rdx	# tmp237, tmp236
	movq	8(%rax,%rdx,8), %rax	# _119->elem, D.13041
	movq	-48(%rbp), %rdx	# nonequal, tmp238
	movq	%rdx, %rsi	# tmp238,
	movq	%rax, %rdi	# D.13041,
	call	mark_effect	#
	movzbl	%al, %eax	# D.13043, D.13042
	orl	%ebx, %eax	# D.13042, D.13042
	testl	%eax, %eax	# D.13042
	setne	%al	#, tmp239
	movb	%al, -125(%rbp)	# tmp239, failed
	.loc 1 329 0 discriminator 2
	addl	$1, -120(%rbp)	#, i
.L101:
	.loc 1 329 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pat, tmp240
	movq	8(%rax), %rax	# pat_113->fld[0].rtvec, D.13047
	movl	(%rax), %eax	# _116->num_elem, D.13042
	cmpl	-120(%rbp), %eax	# i, D.13042
	jg	.L102	#,
	jmp	.L99	#
.L100:
	.loc 1 333 0 is_stmt 1
	movzbl	-125(%rbp), %ebx	# failed, D.13042
	movq	-48(%rbp), %rdx	# nonequal, tmp241
	movq	-40(%rbp), %rax	# pat, tmp242
	movq	%rdx, %rsi	# tmp241,
	movq	%rax, %rdi	# tmp242,
	call	mark_effect	#
	movzbl	%al, %eax	# D.13043, D.13042
	orl	%ebx, %eax	# D.13042, D.13042
	testl	%eax, %eax	# D.13042
	setne	%al	#, tmp243
	movb	%al, -125(%rbp)	# tmp243, failed
.L99:
.LBE4:
	.loc 1 336 0
	movq	-96(%rbp), %rax	# insn, tmp244
	movq	%rax, %rdi	# tmp244,
	call	cselib_process_insn	#
	.loc 1 321 0
	movq	-96(%rbp), %rax	# insn, tmp245
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp246
	movq	%rax, -96(%rbp)	# tmp246, insn
.L98:
	.loc 1 320 0 discriminator 1
	movq	-152(%rbp), %rax	# b, tmp247
	movq	8(%rax), %rax	# b_32(D)->end, D.13041
	movq	24(%rax), %rax	# _107->fld[2].rtx, D.13041
	cmpq	-96(%rbp), %rax	# insn, D.13041
	je	.L103	#,
	.loc 1 320 0 is_stmt 0 discriminator 2
	movzbl	-125(%rbp), %eax	# failed, tmp248
	xorl	$1, %eax	#, D.13043
	testb	%al, %al	# D.13043
	jne	.L104	#,
.L103:
	.loc 1 341 0 is_stmt 1
	cmpb	$0, -125(%rbp)	#, failed
	je	.L105	#,
	.loc 1 342 0
	jmp	.L106	#
.L105:
	.loc 1 346 0
	movl	-132(%rbp), %eax	# mode, tmp249
	andl	$32, %eax	#, D.13042
	testl	%eax, %eax	# D.13042
	je	.L107	#,
	.loc 1 347 0
	movq	-152(%rbp), %rax	# b, tmp250
	movq	72(%rax), %rdx	# b_32(D)->global_live_at_end, D.13048
	movq	-48(%rbp), %rsi	# nonequal, tmp251
	movq	-48(%rbp), %rax	# nonequal, tmp252
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp252,
	call	bitmap_operation	#
.L107:
.LBB5:
	.loc 1 349 0
	movq	-48(%rbp), %rax	# nonequal, tmp253
	movq	(%rax), %rax	# nonequal_104->first, tmp254
	movq	%rax, -88(%rbp)	# tmp254, ptr_
	movl	$0, -100(%rbp)	#, indx_
	movl	$0, -116(%rbp)	#, bit_num_
	movl	$0, -112(%rbp)	#, word_num_
	jmp	.L108	#
.L110:
	.loc 1 349 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# ptr_, tmp255
	movq	(%rax), %rax	# ptr__10->next, tmp256
	movq	%rax, -88(%rbp)	# tmp256, ptr_
.L108:
	cmpq	$0, -88(%rbp)	#, ptr_
	je	.L109	#,
	.loc 1 349 0 discriminator 2
	movq	-88(%rbp), %rax	# ptr_, tmp257
	movl	16(%rax), %eax	# ptr__10->indx, D.13049
	cmpl	-100(%rbp), %eax	# indx_, D.13049
	jb	.L110	#,
.L109:
	.loc 1 349 0 discriminator 3
	cmpq	$0, -88(%rbp)	#, ptr_
	je	.L111	#,
	.loc 1 349 0 discriminator 1
	movq	-88(%rbp), %rax	# ptr_, tmp258
	movl	16(%rax), %eax	# ptr__10->indx, D.13049
	cmpl	-100(%rbp), %eax	# indx_, D.13049
	je	.L111	#,
	movl	$0, -116(%rbp)	#, bit_num_
	movl	$0, -112(%rbp)	#, word_num_
	jmp	.L112	#
.L111:
	.loc 1 349 0 discriminator 2
	jmp	.L112	#
.L119:
	.loc 1 349 0
	jmp	.L113	#
.L118:
.LBB6:
	.loc 1 349 0 discriminator 2
	movq	-88(%rbp), %rax	# ptr_, tmp259
	movl	-112(%rbp), %edx	# word_num_, tmp260
	addq	$2, %rdx	#, tmp261
	movq	8(%rax,%rdx,8), %rax	# ptr__11->bits, tmp262
	movq	%rax, -32(%rbp)	# tmp262, word_
	cmpq	$0, -32(%rbp)	#, word_
	je	.L114	#,
	.loc 1 349 0 discriminator 1
	jmp	.L115	#
.L117:
.LBB7:
	.loc 1 349 0 discriminator 2
	movl	-116(%rbp), %eax	# bit_num_, bit_num_.29
	movl	$1, %edx	#, tmp263
	movl	%eax, %ecx	# bit_num_.29, tmp288
	salq	%cl, %rdx	# tmp288, tmp264
	movq	%rdx, %rax	# tmp264, tmp264
	movq	%rax, -24(%rbp)	# tmp264, mask_
	movq	-24(%rbp), %rax	# mask_, tmp265
	movq	-32(%rbp), %rdx	# word_, tmp266
	andq	%rdx, %rax	# tmp266, D.13050
	testq	%rax, %rax	# D.13050
	je	.L116	#,
	.loc 1 349 0 discriminator 1
	movq	-24(%rbp), %rax	# mask_, tmp267
	notq	%rax	# D.13050
	andq	%rax, -32(%rbp)	# D.13050, word_
	movq	-88(%rbp), %rax	# ptr_, tmp268
	movl	16(%rax), %eax	# ptr__11->indx, D.13049
	leal	(%rax,%rax), %edx	#, D.13049
	movl	-112(%rbp), %eax	# word_num_, tmp269
	addl	%edx, %eax	# D.13049, D.13049
	sall	$6, %eax	#, D.13049
	movl	%eax, %edx	# D.13049, D.13049
	movl	-116(%rbp), %eax	# bit_num_, tmp270
	addl	%edx, %eax	# D.13049, D.13049
	movl	%eax, -120(%rbp)	# D.13049, i
	jmp	.L106	#
.L116:
.LBE7:
	.loc 1 349 0 discriminator 2
	addl	$1, -116(%rbp)	#, bit_num_
.L115:
	.loc 1 349 0 discriminator 1
	cmpl	$63, -116(%rbp)	#, bit_num_
	jbe	.L117	#,
.L114:
	.loc 1 349 0 discriminator 2
	movl	$0, -116(%rbp)	#, bit_num_
.LBE6:
	addl	$1, -112(%rbp)	#, word_num_
.L113:
	.loc 1 349 0 discriminator 1
	cmpl	$1, -112(%rbp)	#, word_num_
	jbe	.L118	#,
	.loc 1 349 0 discriminator 3
	movl	$0, -112(%rbp)	#, word_num_
	movq	-88(%rbp), %rax	# ptr_, tmp271
	movq	(%rax), %rax	# ptr__11->next, tmp272
	movq	%rax, -88(%rbp)	# tmp272, ptr_
.L112:
	.loc 1 349 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, ptr_
	jne	.L119	#,
.LBE5:
	.loc 1 351 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, nonequal
	je	.L120	#,
	.loc 1 351 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# nonequal, tmp273
	movq	%rax, %rdi	# tmp273,
	call	bitmap_clear	#
	movq	-48(%rbp), %rax	# nonequal, tmp274
	movq	%rax, %rdi	# tmp274,
	call	free	#
	movq	$0, -48(%rbp)	#, nonequal
.L120:
	.loc 1 352 0 is_stmt 1
	call	cselib_finish	#
	.loc 1 353 0
	movl	-108(%rbp), %edx	# code2, tmp275
	movl	-124(%rbp), %eax	# code1, tmp276
	movl	%edx, %esi	# tmp275,
	movl	%eax, %edi	# tmp276,
	call	comparison_dominates_p	#
	.loc 1 354 0
	testl	%eax, %eax	# D.13042
	setne	%cl	#, D.13043
	movq	-72(%rbp), %rax	# set2, tmp277
	movq	16(%rax), %rax	# set2_50->fld[1].rtx, D.13041
	movq	16(%rax), %rdx	# _164->fld[1].rtx, D.13041
	movq	global_rtl(%rip), %rax	# global_rtl, D.13041
	cmpq	%rax, %rdx	# D.13041, D.13041
	sete	%al	#, D.13043
	xorl	%ecx, %eax	# D.13043, D.13043
	.loc 1 353 0
	testb	%al, %al	# D.13043
	je	.L121	#,
	.loc 1 355 0
	movq	-152(%rbp), %rax	# b, tmp278
	movq	40(%rax), %rax	# b_32(D)->succ, D.13040
	movl	48(%rax), %eax	# _169->flags, D.13042
	andl	$1, %eax	#, D.13042
	testl	%eax, %eax	# D.13042
	je	.L122	#,
	.loc 1 355 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# b, tmp279
	movq	40(%rax), %rax	# b_32(D)->succ, D.13040
	movq	8(%rax), %rax	# _172->succ_next, iftmp.30
	jmp	.L123	#
.L122:
	.loc 1 355 0 discriminator 2
	movq	-152(%rbp), %rax	# b, tmp280
	movq	40(%rax), %rax	# b_32(D)->succ, iftmp.30
.L123:
	.loc 1 355 0 discriminator 3
	jmp	.L81	#
.L121:
	.loc 1 357 0 is_stmt 1
	movq	-152(%rbp), %rax	# b, tmp281
	movq	40(%rax), %rax	# b_32(D)->succ, D.13040
	movl	48(%rax), %eax	# _176->flags, D.13042
	andl	$1, %eax	#, D.13042
	testl	%eax, %eax	# D.13042
	je	.L124	#,
	.loc 1 357 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# b, tmp282
	movq	40(%rax), %rax	# b_32(D)->succ, iftmp.31
	jmp	.L125	#
.L124:
	.loc 1 357 0 discriminator 2
	movq	-152(%rbp), %rax	# b, tmp283
	movq	40(%rax), %rax	# b_32(D)->succ, D.13040
	movq	8(%rax), %rax	# _180->succ_next, iftmp.31
.L125:
	.loc 1 357 0 discriminator 3
	jmp	.L81	#
.L106:
	.loc 1 360 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, nonequal
	je	.L126	#,
	.loc 1 360 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# nonequal, tmp284
	movq	%rax, %rdi	# tmp284,
	call	bitmap_clear	#
	movq	-48(%rbp), %rax	# nonequal, tmp285
	movq	%rax, %rdi	# tmp285,
	call	free	#
	movq	$0, -48(%rbp)	#, nonequal
.L126:
	.loc 1 361 0 is_stmt 1
	call	cselib_finish	#
	.loc 1 362 0
	movl	$0, %eax	#, D.13038
.L81:
	.loc 1 363 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	thread_jump, .-thread_jump
	.section	.rodata
.LC1:
	.string	"cfgcleanup.c"
.LC2:
	.string	"Infinite loop in BB %i.\n"
.LC3:
	.string	"Conditionals threaded.\n"
	.align 8
.LC4:
	.string	"Forwarding edge %i->%i to %i failed.\n"
	.text
	.type	try_forward_edges, @function
try_forward_edges:
.LFB7:
	.loc 1 372 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -148(%rbp)	# mode, mode
	movq	%rsi, -160(%rbp)	# b, b
	.loc 1 373 0
	movb	$0, -135(%rbp)	#, changed
	.loc 1 374 0
	movq	$0, -96(%rbp)	#, threaded_edges
	.loc 1 376 0
	movq	-160(%rbp), %rax	# b, tmp175
	movq	40(%rax), %rax	# b_35(D)->succ, tmp176
	movq	%rax, -104(%rbp)	# tmp176, e
	jmp	.L128	#
.L177:
.LBB8:
	.loc 1 380 0
	movb	$0, -134(%rbp)	#, threaded
	.loc 1 381 0
	movl	$0, -128(%rbp)	#, nthreaded_edges
	.loc 1 383 0
	movq	-104(%rbp), %rax	# e, tmp177
	movq	8(%rax), %rax	# e_3->succ_next, tmp178
	movq	%rax, -40(%rbp)	# tmp178, next
	.loc 1 390 0
	movq	-104(%rbp), %rax	# e, tmp179
	movl	48(%rax), %eax	# e_3->flags, D.13051
	andl	$14, %eax	#, D.13051
	testl	%eax, %eax	# D.13051
	je	.L129	#,
	.loc 1 391 0
	jmp	.L130	#
.L129:
	.loc 1 393 0
	movq	-104(%rbp), %rax	# e, tmp180
	movq	24(%rax), %rax	# e_3->dest, tmp181
	movq	%rax, -80(%rbp)	# tmp181, first
	movq	-80(%rbp), %rax	# first, tmp182
	movq	%rax, -88(%rbp)	# tmp182, target
	.loc 1 394 0
	movl	$0, -132(%rbp)	#, counter
	.loc 1 396 0
	jmp	.L131	#
.L153:
.LBB9:
	.loc 1 398 0
	movq	$0, -72(%rbp)	#, new_target
	.loc 1 399 0
	movb	$0, -133(%rbp)	#, new_target_threaded
	.loc 1 401 0
	movq	-88(%rbp), %rax	# target, tmp183
	movq	80(%rax), %rax	# target_10->aux, D.13052
	andl	$2, %eax	#, D.13054
	testl	%eax, %eax	# D.13054
	je	.L132	#,
	.loc 1 402 0
	movq	-88(%rbp), %rax	# target, tmp184
	movq	40(%rax), %rax	# target_10->succ, D.13055
	movq	24(%rax), %rax	# _52->dest, D.13056
	cmpq	$entry_exit_blocks+112, %rax	#, D.13056
	je	.L132	#,
	.loc 1 405 0
	movq	-88(%rbp), %rax	# target, tmp185
	movq	40(%rax), %rax	# target_10->succ, D.13055
	movq	24(%rax), %rax	# _54->dest, D.13056
	cmpq	-88(%rbp), %rax	# target, D.13056
	jne	.L133	#,
	.loc 1 406 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp186
	movl	%eax, -132(%rbp)	# tmp186, counter
.L133:
	.loc 1 407 0
	movq	-88(%rbp), %rax	# target, tmp187
	movq	40(%rax), %rax	# target_10->succ, D.13055
	movq	24(%rax), %rax	# _57->dest, tmp188
	movq	%rax, -72(%rbp)	# tmp188, new_target
	jmp	.L134	#
.L132:
	.loc 1 412 0
	movl	-148(%rbp), %eax	# mode, tmp189
	andl	$64, %eax	#, D.13051
	testl	%eax, %eax	# D.13051
	je	.L134	#,
.LBB10:
	.loc 1 414 0
	movq	-88(%rbp), %rdx	# target, tmp190
	movq	-104(%rbp), %rcx	# e, tmp191
	movl	-148(%rbp), %eax	# mode, tmp192
	movq	%rcx, %rsi	# tmp191,
	movl	%eax, %edi	# tmp192,
	call	thread_jump	#
	movq	%rax, -32(%rbp)	# tmp193, t
	.loc 1 415 0
	cmpq	$0, -32(%rbp)	#, t
	je	.L134	#,
	.loc 1 417 0
	cmpq	$0, -96(%rbp)	#, threaded_edges
	jne	.L135	#,
	.loc 1 418 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.32
	cltq
	salq	$3, %rax	#, D.13057
	movq	%rax, %rdi	# D.13057,
	call	xmalloc	#
	movq	%rax, -96(%rbp)	# tmp194, threaded_edges
	jmp	.L136	#
.L135:
.LBB11:
	.loc 1 426 0
	movl	$0, -124(%rbp)	#, i
	jmp	.L137	#
.L140:
	.loc 1 427 0
	movl	-124(%rbp), %eax	# i, tmp195
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13057
	movq	-96(%rbp), %rax	# threaded_edges, tmp196
	addq	%rdx, %rax	# D.13057, D.13058
	movq	(%rax), %rax	# *_69, D.13055
	cmpq	-32(%rbp), %rax	# t, D.13055
	jne	.L138	#,
	.loc 1 428 0
	jmp	.L139	#
.L138:
	.loc 1 426 0
	addl	$1, -124(%rbp)	#, i
.L137:
	.loc 1 426 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# i, tmp197
	cmpl	-128(%rbp), %eax	# nthreaded_edges, tmp197
	jl	.L140	#,
.L139:
	.loc 1 429 0 is_stmt 1
	movl	-124(%rbp), %eax	# i, tmp198
	cmpl	-128(%rbp), %eax	# nthreaded_edges, tmp198
	jge	.L136	#,
	.loc 1 431 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp199
	movl	%eax, -132(%rbp)	# tmp199, counter
	.loc 1 432 0
	jmp	.L141	#
.L136:
.LBE11:
	.loc 1 437 0
	movq	-32(%rbp), %rax	# t, tmp200
	movq	24(%rax), %rax	# t_61->dest, D.13056
	cmpq	-160(%rbp), %rax	# b, D.13056
	jne	.L142	#,
	.loc 1 438 0
	jmp	.L141	#
.L142:
	.loc 1 440 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.33
	cmpl	%eax, -128(%rbp)	# n_basic_blocks.33, nthreaded_edges
	jl	.L143	#,
	.loc 1 441 0
	movl	$__FUNCTION__.10860, %edx	#,
	movl	$441, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L143:
	.loc 1 442 0
	movl	-128(%rbp), %eax	# nthreaded_edges, nthreaded_edges.34
	leal	1(%rax), %edx	#, tmp201
	movl	%edx, -128(%rbp)	# tmp201, nthreaded_edges
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13057
	movq	-96(%rbp), %rax	# threaded_edges, tmp202
	addq	%rax, %rdx	# tmp202, D.13058
	movq	-32(%rbp), %rax	# t, tmp203
	movq	%rax, (%rdx)	# tmp203, *_79
	.loc 1 444 0
	movq	-32(%rbp), %rax	# t, tmp204
	movq	24(%rax), %rax	# t_61->dest, tmp205
	movq	%rax, -72(%rbp)	# tmp205, new_target
	.loc 1 445 0
	movb	$1, -133(%rbp)	#, new_target_threaded
.L134:
.LBE10:
	.loc 1 449 0
	cmpq	$0, -72(%rbp)	#, new_target
	jne	.L144	#,
	.loc 1 450 0
	jmp	.L141	#
.L144:
	.loc 1 458 0
	movl	-148(%rbp), %eax	# mode, tmp206
	andl	$16, %eax	#, D.13051
	testl	%eax, %eax	# D.13051
	je	.L145	#,
.LBB12:
	.loc 1 460 0
	movq	-88(%rbp), %rax	# target, tmp207
	movq	40(%rax), %rax	# target_10->succ, D.13055
	movl	48(%rax), %eax	# _83->flags, D.13051
	andl	$1, %eax	#, D.13051
	.loc 1 461 0
	testl	%eax, %eax	# D.13051
	je	.L146	#,
	.loc 1 461 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# target, tmp208
	movq	(%rax), %rax	# target_10->head, iftmp.35
	jmp	.L147	#
.L146:
	.loc 1 461 0 discriminator 2
	movq	-88(%rbp), %rax	# target, tmp209
	movq	8(%rax), %rax	# target_10->end, D.13059
	movq	%rax, %rdi	# D.13059,
	call	prev_nonnote_insn	#
.L147:
	.loc 1 460 0 is_stmt 1
	movq	%rax, -64(%rbp)	# iftmp.35, insn
	.loc 1 463 0
	movq	-64(%rbp), %rax	# insn, tmp210
	movzwl	(%rax), %eax	# insn_89->code, D.13060
	cmpw	$37, %ax	#, D.13060
	je	.L148	#,
	.loc 1 464 0
	movq	-64(%rbp), %rax	# insn, tmp211
	movq	24(%rax), %rax	# insn_89->fld[2].rtx, tmp212
	movq	%rax, -64(%rbp)	# tmp212, insn
	.loc 1 466 0
	jmp	.L149	#
.L148:
	jmp	.L149	#
.L152:
	.loc 1 468 0
	movq	-64(%rbp), %rax	# insn, tmp213
	movzwl	(%rax), %eax	# insn_24->code, D.13060
	cmpw	$37, %ax	#, D.13060
	jne	.L150	#,
	.loc 1 469 0
	movq	-64(%rbp), %rax	# insn, tmp214
	movl	40(%rax), %eax	# insn_24->fld[4].rtint, D.13051
	cmpl	$-96, %eax	#, D.13051
	jne	.L150	#,
	.loc 1 470 0
	jmp	.L151	#
.L150:
	.loc 1 467 0
	movq	-64(%rbp), %rax	# insn, tmp215
	movq	24(%rax), %rax	# insn_24->fld[2].rtx, tmp216
	movq	%rax, -64(%rbp)	# tmp216, insn
.L149:
	.loc 1 466 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, insn
	je	.L151	#,
	.loc 1 466 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# insn, tmp217
	movzwl	(%rax), %eax	# insn_24->code, D.13060
	cmpw	$36, %ax	#, D.13060
	je	.L151	#,
	.loc 1 466 0 discriminator 1
	movq	-64(%rbp), %rax	# insn, tmp218
	movzwl	(%rax), %eax	# insn_24->code, D.13060
	movzwl	%ax, %eax	# D.13060, D.13051
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13061
	cmpb	$105, %al	#, D.13061
	jne	.L152	#,
.L151:
	.loc 1 472 0 is_stmt 1
	movq	-64(%rbp), %rax	# insn, tmp220
	movzwl	(%rax), %eax	# insn_24->code, D.13060
	cmpw	$37, %ax	#, D.13060
	jne	.L145	#,
	.loc 1 473 0
	jmp	.L141	#
.L145:
.LBE12:
	.loc 1 476 0
	addl	$1, -132(%rbp)	#, counter
	.loc 1 477 0
	movq	-72(%rbp), %rax	# new_target, tmp221
	movq	%rax, -88(%rbp)	# tmp221, target
	.loc 1 478 0
	movzbl	-134(%rbp), %edx	# threaded, D.13051
	movzbl	-133(%rbp), %eax	# new_target_threaded, D.13051
	orl	%edx, %eax	# D.13051, D.13051
	testl	%eax, %eax	# D.13051
	setne	%al	#, tmp222
	movb	%al, -134(%rbp)	# tmp222, threaded
.L131:
.LBE9:
	.loc 1 396 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.36
	cmpl	%eax, -132(%rbp)	# n_basic_blocks.36, counter
	jl	.L153	#,
.L141:
	.loc 1 481 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.37
	cmpl	%eax, -132(%rbp)	# n_basic_blocks.37, counter
	jl	.L154	#,
	.loc 1 483 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.38
	testq	%rax, %rax	# rtl_dump_file.38
	je	.L130	#,
	.loc 1 484 0
	movq	-88(%rbp), %rax	# target, tmp223
	movl	88(%rax), %edx	# target_10->index, D.13051
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.39
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.39,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L130	#
.L154:
	.loc 1 487 0
	movq	-88(%rbp), %rax	# target, tmp224
	cmpq	-80(%rbp), %rax	# first, tmp224
	je	.L130	#,
.LBB13:
	.loc 1 492 0
	movq	-104(%rbp), %rax	# e, tmp225
	movq	56(%rax), %rax	# e_3->count, tmp226
	movq	%rax, -24(%rbp)	# tmp226, edge_count
	.loc 1 493 0
	movq	-104(%rbp), %rax	# e, tmp227
	movl	52(%rax), %eax	# e_3->probability, tmp228
	movl	%eax, -112(%rbp)	# tmp228, edge_probability
	.loc 1 495 0
	movl	$0, -120(%rbp)	#, n
	.loc 1 498 0
	cmpb	$0, -134(%rbp)	#, threaded
	je	.L156	#,
	.loc 1 498 0 is_stmt 0 discriminator 1
	cmpq	$entry_exit_blocks+112, -88(%rbp)	#, target
	je	.L156	#,
	.loc 1 500 0 is_stmt 1
	movq	-88(%rbp), %rdx	# target, tmp229
	movq	-104(%rbp), %rax	# e, tmp230
	movq	%rdx, %rsi	# tmp229,
	movq	%rax, %rdi	# tmp230,
	call	redirect_edge_and_branch_force	#
	movq	%rax, %rdi	# D.13056,
	call	notice_new_block	#
	.loc 1 501 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.40
	testq	%rax, %rax	# rtl_dump_file.40
	je	.L157	#,
	.loc 1 502 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.41
	movq	%rax, %rcx	# rtl_dump_file.41,
	movl	$23, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	.loc 1 501 0
	jmp	.L158	#
.L157:
	.loc 1 501 0 is_stmt 0 discriminator 1
	jmp	.L158	#
.L156:
	.loc 1 504 0 is_stmt 1
	movq	-88(%rbp), %rdx	# target, tmp231
	movq	-104(%rbp), %rax	# e, tmp232
	movq	%rdx, %rsi	# tmp231,
	movq	%rax, %rdi	# tmp232,
	call	redirect_edge_and_branch	#
	xorl	$1, %eax	#, D.13062
	testb	%al, %al	# D.13062
	je	.L158	#,
	.loc 1 506 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.42
	testq	%rax, %rax	# rtl_dump_file.42
	je	.L159	#,
	.loc 1 507 0
	movq	-88(%rbp), %rax	# target, tmp233
	movl	88(%rax), %esi	# target_10->index, D.13051
	.loc 1 509 0
	movq	-104(%rbp), %rax	# e, tmp234
	movq	24(%rax), %rax	# e_3->dest, D.13056
	.loc 1 507 0
	movl	88(%rax), %ecx	# _120->index, D.13051
	movq	-160(%rbp), %rax	# b, tmp235
	movl	88(%rax), %edx	# b_35(D)->index, D.13051
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.43
	movl	%esi, %r8d	# D.13051,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.43,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 510 0
	jmp	.L130	#
.L159:
	jmp	.L130	#
.L158:
	.loc 1 516 0
	movq	-160(%rbp), %rax	# b, tmp236
	movl	104(%rax), %eax	# b_35(D)->frequency, D.13051
	imull	-112(%rbp), %eax	# edge_probability, D.13051
	.loc 1 517 0
	leal	5000(%rax), %ecx	#, D.13051
	.loc 1 516 0
	movl	$1759218605, %edx	#, tmp238
	movl	%ecx, %eax	# D.13051, tmp300
	imull	%edx	# tmp238
	sarl	$12, %edx	#, tmp239
	movl	%ecx, %eax	# D.13051, tmp240
	sarl	$31, %eax	#, tmp240
	subl	%eax, %edx	# tmp240, tmp241
	movl	%edx, %eax	# tmp241, tmp241
	movl	%eax, -108(%rbp)	# tmp241, edge_frequency
	.loc 1 520 0
	movq	-160(%rbp), %rax	# b, tmp242
	movq	80(%rax), %rax	# b_35(D)->aux, D.13052
	andl	$2, %eax	#, D.13054
	testl	%eax, %eax	# D.13054
	jne	.L160	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# b, tmp243
	movq	%rax, %rdi	# tmp243,
	call	forwarder_block_p	#
	testb	%al, %al	# D.13062
	je	.L160	#,
	.loc 1 521 0 is_stmt 1
	movq	-160(%rbp), %rax	# b, tmp244
	movq	80(%rax), %rax	# b_35(D)->aux, D.13052
	orl	$2, %eax	#, D.13054
	movl	%eax, %eax	# D.13054, D.13053
	movq	%rax, %rdx	# D.13053, D.13052
	movq	-160(%rbp), %rax	# b, tmp245
	movq	%rdx, 80(%rax)	# D.13052, b_35(D)->aux
.L160:
	.loc 1 522 0
	movq	-160(%rbp), %rax	# b, tmp246
	movq	80(%rax), %rax	# b_35(D)->aux, D.13052
	orl	$1, %eax	#, D.13054
	movl	%eax, %eax	# D.13054, D.13053
	movq	%rax, %rdx	# D.13053, D.13052
	movq	-160(%rbp), %rax	# b, tmp247
	movq	%rdx, 80(%rax)	# D.13052, b_35(D)->aux
.L176:
.LBB14:
	.loc 1 528 0
	movq	-80(%rbp), %rax	# first, tmp248
	movq	96(%rax), %rax	# first_11->count, D.13053
	subq	-24(%rbp), %rax	# edge_count, D.13053
	movq	%rax, %rdx	# D.13053, D.13053
	movq	-80(%rbp), %rax	# first, tmp249
	movq	%rdx, 96(%rax)	# D.13053, first_11->count
	.loc 1 529 0
	movq	-80(%rbp), %rax	# first, tmp250
	movq	96(%rax), %rax	# first_11->count, D.13053
	testq	%rax, %rax	# D.13053
	jns	.L161	#,
	.loc 1 530 0
	movq	-80(%rbp), %rax	# first, tmp251
	movq	$0, 96(%rax)	#, first_11->count
.L161:
	.loc 1 531 0
	movq	-80(%rbp), %rax	# first, tmp252
	movl	104(%rax), %eax	# first_11->frequency, D.13051
	subl	-108(%rbp), %eax	# edge_frequency, D.13051
	movl	%eax, %edx	# D.13051, D.13051
	movq	-80(%rbp), %rax	# first, tmp253
	movl	%edx, 104(%rax)	# D.13051, first_11->frequency
	.loc 1 532 0
	movq	-80(%rbp), %rax	# first, tmp254
	movl	104(%rax), %eax	# first_11->frequency, D.13051
	testl	%eax, %eax	# D.13051
	jns	.L162	#,
	.loc 1 533 0
	movq	-80(%rbp), %rax	# first, tmp255
	movl	$0, 104(%rax)	#, first_11->frequency
.L162:
	.loc 1 534 0
	movq	-80(%rbp), %rax	# first, tmp256
	movq	40(%rax), %rax	# first_11->succ, D.13055
	movq	8(%rax), %rax	# _151->succ_next, D.13055
	testq	%rax, %rax	# D.13055
	je	.L163	#,
.LBB15:
	.loc 1 538 0
	movl	-120(%rbp), %eax	# n, tmp257
	cmpl	-128(%rbp), %eax	# nthreaded_edges, tmp257
	jl	.L164	#,
	.loc 1 539 0
	movl	$__FUNCTION__.10860, %edx	#,
	movl	$539, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L164:
	.loc 1 540 0
	movl	-120(%rbp), %eax	# n, n.44
	leal	1(%rax), %edx	#, tmp258
	movl	%edx, -120(%rbp)	# tmp258, n
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13057
	movq	-96(%rbp), %rax	# threaded_edges, tmp259
	addq	%rdx, %rax	# D.13057, D.13058
	movq	(%rax), %rax	# *_157, tmp260
	movq	%rax, -56(%rbp)	# tmp260, t
	.loc 1 541 0
	movq	-56(%rbp), %rax	# t, tmp261
	movq	16(%rax), %rax	# t_158->src, D.13056
	cmpq	-80(%rbp), %rax	# first, D.13056
	je	.L165	#,
	.loc 1 542 0
	movl	$__FUNCTION__.10860, %edx	#,
	movl	$542, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L165:
	.loc 1 543 0
	movq	-80(%rbp), %rax	# first, tmp262
	movl	104(%rax), %eax	# first_11->frequency, D.13051
	testl	%eax, %eax	# D.13051
	je	.L166	#,
	.loc 1 544 0
	movl	-108(%rbp), %eax	# edge_frequency, tmp263
	imull	$10000, %eax, %eax	#, tmp263, D.13051
	movq	-80(%rbp), %rdx	# first, tmp264
	movl	104(%rdx), %ebx	# first_11->frequency, D.13051
	cltd
	idivl	%ebx	# D.13051
	movl	%eax, -116(%rbp)	# tmp265, prob
	jmp	.L167	#
.L166:
	.loc 1 546 0
	movl	$0, -116(%rbp)	#, prob
.L167:
	.loc 1 547 0
	movq	-56(%rbp), %rax	# t, tmp267
	movl	52(%rax), %eax	# t_158->probability, D.13051
	cmpl	-116(%rbp), %eax	# prob, D.13051
	jge	.L168	#,
	.loc 1 548 0
	movq	-56(%rbp), %rax	# t, tmp268
	movl	52(%rax), %eax	# t_158->probability, tmp269
	movl	%eax, -116(%rbp)	# tmp269, prob
.L168:
	.loc 1 549 0
	movq	-56(%rbp), %rax	# t, tmp270
	movl	52(%rax), %eax	# t_158->probability, D.13051
	subl	-116(%rbp), %eax	# prob, D.13051
	movl	%eax, %edx	# D.13051, D.13051
	movq	-56(%rbp), %rax	# t, tmp271
	movl	%edx, 52(%rax)	# D.13051, t_158->probability
	.loc 1 550 0
	movl	$10000, %eax	#, tmp275
	subl	-116(%rbp), %eax	# prob, tmp274
	movl	%eax, -116(%rbp)	# tmp274, prob
	.loc 1 551 0
	cmpl	$0, -116(%rbp)	#, prob
	jg	.L169	#,
	.loc 1 553 0
	movq	-80(%rbp), %rax	# first, tmp276
	movq	40(%rax), %rax	# first_11->succ, D.13055
	movl	$10000, 52(%rax)	#, _170->probability
	.loc 1 554 0
	movq	-80(%rbp), %rax	# first, tmp277
	movq	40(%rax), %rax	# first_11->succ, D.13055
	movq	8(%rax), %rax	# _171->succ_next, D.13055
	movl	$0, 52(%rax)	#, _172->probability
	jmp	.L170	#
.L169:
	.loc 1 557 0
	movq	-80(%rbp), %rax	# first, tmp278
	movq	40(%rax), %rax	# first_11->succ, tmp279
	movq	%rax, -48(%rbp)	# tmp279, e
	jmp	.L171	#
.L172:
	.loc 1 558 0 discriminator 2
	movq	-48(%rbp), %rax	# e, tmp280
	movl	52(%rax), %eax	# e_29->probability, D.13051
	imull	$10000, %eax, %eax	#, D.13051, D.13051
	.loc 1 559 0 discriminator 2
	cvtsi2sd	%eax, %xmm0	# D.13051, D.13063
	cvtsi2sd	-116(%rbp), %xmm1	# prob, D.13063
	divsd	%xmm1, %xmm0	# D.13063, D.13063
	.loc 1 558 0 discriminator 2
	cvttsd2si	%xmm0, %edx	# D.13063, D.13051
	movq	-48(%rbp), %rax	# e, tmp281
	movl	%edx, 52(%rax)	# D.13051, e_29->probability
	.loc 1 557 0 discriminator 2
	movq	-48(%rbp), %rax	# e, tmp282
	movq	8(%rax), %rax	# e_29->succ_next, tmp283
	movq	%rax, -48(%rbp)	# tmp283, e
.L171:
	.loc 1 557 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, e
	jne	.L172	#,
.L170:
	.loc 1 560 0 is_stmt 1 discriminator 1
	movq	-80(%rbp), %rax	# first, tmp284
	movq	%rax, %rdi	# tmp284,
	call	update_br_prob_note	#
.LBE15:
	jmp	.L173	#
.L163:
	.loc 1 568 0
	movl	-120(%rbp), %eax	# n, tmp285
	cmpl	-128(%rbp), %eax	# nthreaded_edges, tmp285
	jge	.L174	#,
	.loc 1 569 0
	movl	-120(%rbp), %eax	# n, tmp286
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13057
	movq	-96(%rbp), %rax	# threaded_edges, tmp287
	addq	%rdx, %rax	# D.13057, D.13058
	movq	(%rax), %rax	# *_183, D.13055
	movq	16(%rax), %rax	# _184->src, D.13056
	cmpq	-80(%rbp), %rax	# first, D.13056
	jne	.L174	#,
	.loc 1 570 0
	addl	$1, -120(%rbp)	#, n
.L174:
	.loc 1 571 0
	movq	-80(%rbp), %rax	# first, tmp288
	movq	40(%rax), %rax	# first_11->succ, tmp289
	movq	%rax, -56(%rbp)	# tmp289, t
.L173:
	.loc 1 574 0
	movq	-56(%rbp), %rax	# t, tmp290
	movq	56(%rax), %rax	# t_28->count, D.13053
	subq	-24(%rbp), %rax	# edge_count, D.13053
	movq	%rax, %rdx	# D.13053, D.13053
	movq	-56(%rbp), %rax	# t, tmp291
	movq	%rdx, 56(%rax)	# D.13053, t_28->count
	.loc 1 575 0
	movq	-56(%rbp), %rax	# t, tmp292
	movq	56(%rax), %rax	# t_28->count, D.13053
	testq	%rax, %rax	# D.13053
	jns	.L175	#,
	.loc 1 576 0
	movq	-56(%rbp), %rax	# t, tmp293
	movq	$0, 56(%rax)	#, t_28->count
.L175:
	.loc 1 577 0
	movq	-56(%rbp), %rax	# t, tmp294
	movq	24(%rax), %rax	# t_28->dest, tmp295
	movq	%rax, -80(%rbp)	# tmp295, first
.LBE14:
	.loc 1 579 0
	movq	-80(%rbp), %rax	# first, tmp296
	cmpq	-88(%rbp), %rax	# target, tmp296
	jne	.L176	#,
	.loc 1 581 0
	movb	$1, -135(%rbp)	#, changed
.L130:
.LBE13:
.LBE8:
	.loc 1 376 0
	movq	-40(%rbp), %rax	# next, tmp297
	movq	%rax, -104(%rbp)	# tmp297, e
.L128:
	.loc 1 376 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, e
	jne	.L177	#,
	.loc 1 585 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, threaded_edges
	je	.L178	#,
	.loc 1 586 0
	movq	-96(%rbp), %rax	# threaded_edges, tmp298
	movq	%rax, %rdi	# tmp298,
	call	free	#
.L178:
	.loc 1 587 0
	movzbl	-135(%rbp), %eax	# changed, D.13062
	.loc 1 588 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	try_forward_edges, .-try_forward_edges
	.type	label_is_jump_target_p, @function
label_is_jump_target_p:
.LFB8:
	.loc 1 598 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# label, label
	movq	%rsi, -48(%rbp)	# jump_insn, jump_insn
	.loc 1 599 0
	movq	-48(%rbp), %rax	# jump_insn, tmp70
	movq	64(%rax), %rax	# jump_insn_4(D)->fld[7].rtx, tmp71
	movq	%rax, -16(%rbp)	# tmp71, tmp
	.loc 1 601 0
	movq	-40(%rbp), %rax	# label, tmp72
	cmpq	-16(%rbp), %rax	# tmp, tmp72
	jne	.L181	#,
	.loc 1 602 0
	movl	$1, %eax	#, D.13068
	jmp	.L182	#
.L181:
	.loc 1 604 0
	cmpq	$0, -16(%rbp)	#, tmp
	je	.L183	#,
	.loc 1 605 0
	movq	-16(%rbp), %rax	# tmp, tmp73
	movq	24(%rax), %rax	# tmp_5->fld[2].rtx, tmp74
	movq	%rax, -16(%rbp)	# tmp74, tmp
	cmpq	$0, -16(%rbp)	#, tmp
	je	.L183	#,
	.loc 1 606 0
	movq	-16(%rbp), %rax	# tmp, tmp75
	movzwl	(%rax), %eax	# tmp_8->code, D.13069
	cmpw	$33, %ax	#, D.13069
	jne	.L183	#,
	.loc 1 607 0
	movq	-16(%rbp), %rax	# tmp, tmp76
	movq	32(%rax), %rax	# tmp_8->fld[3].rtx, tmp77
	movq	%rax, -16(%rbp)	# tmp77, tmp
	.loc 1 608 0
	movq	-16(%rbp), %rax	# tmp, tmp78
	movzwl	(%rax), %eax	# tmp_10->code, D.13069
	.loc 1 609 0
	cmpw	$44, %ax	#, D.13069
	je	.L184	#,
	.loc 1 609 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# tmp, tmp79
	movzwl	(%rax), %eax	# tmp_10->code, D.13069
	cmpw	$45, %ax	#, D.13069
	jne	.L185	#,
.L184:
	.loc 1 609 0 discriminator 1
	movl	$1, %eax	#, iftmp.45
	jmp	.L186	#
.L185:
	.loc 1 609 0 discriminator 3
	movl	$0, %eax	#, iftmp.45
.L186:
	.loc 1 607 0 is_stmt 1
	testl	%eax, %eax	# iftmp.45
	je	.L183	#,
.LBB16:
	.loc 1 611 0
	movq	-16(%rbp), %rax	# tmp, tmp80
	movzwl	(%rax), %eax	# tmp_10->code, D.13069
	cmpw	$45, %ax	#, D.13069
	sete	%al	#, D.13068
	movzbl	%al, %edx	# D.13068, D.13070
	movq	-16(%rbp), %rax	# tmp, tmp81
	movslq	%edx, %rdx	# D.13070, tmp82
	movq	8(%rax,%rdx,8), %rax	# tmp_10->fld[_17].rtvec, tmp83
	movq	%rax, -8(%rbp)	# tmp83, vec
	.loc 1 612 0
	movq	-8(%rbp), %rax	# vec, tmp84
	movl	(%rax), %eax	# vec_18->num_elem, tmp85
	movl	%eax, -20(%rbp)	# tmp85, veclen
	.loc 1 614 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L187	#
.L189:
	.loc 1 615 0
	movq	-8(%rbp), %rax	# vec, tmp86
	movl	-24(%rbp), %edx	# i, tmp88
	movslq	%edx, %rdx	# tmp88, tmp87
	movq	8(%rax,%rdx,8), %rax	# vec_18->elem, D.13071
	movq	8(%rax), %rax	# _21->fld[0].rtx, D.13071
	cmpq	-40(%rbp), %rax	# label, D.13071
	jne	.L188	#,
	.loc 1 616 0
	movl	$1, %eax	#, D.13068
	jmp	.L182	#
.L188:
	.loc 1 614 0
	addl	$1, -24(%rbp)	#, i
.L187:
	.loc 1 614 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp89
	cmpl	-20(%rbp), %eax	# veclen, tmp89
	jl	.L189	#,
.L183:
.LBE16:
	.loc 1 619 0 is_stmt 1
	movl	$0, %eax	#, D.13068
.L182:
	.loc 1 620 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	label_is_jump_target_p, .-label_is_jump_target_p
	.type	tail_recursion_label_p, @function
tail_recursion_label_p:
.LFB9:
	.loc 1 627 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# label, label
	.loc 1 630 0
	movq	tail_recursion_label_list(%rip), %rax	# tail_recursion_label_list, tmp62
	movq	%rax, -8(%rbp)	# tmp62, x
	jmp	.L191	#
.L194:
	.loc 1 631 0
	movq	-8(%rbp), %rax	# x, tmp63
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.13073
	cmpq	-24(%rbp), %rax	# label, D.13073
	jne	.L192	#,
	.loc 1 632 0
	movl	$1, %eax	#, D.13072
	jmp	.L193	#
.L192:
	.loc 1 630 0
	movq	-8(%rbp), %rax	# x, tmp64
	movq	16(%rax), %rax	# x_1->fld[1].rtx, tmp65
	movq	%rax, -8(%rbp)	# tmp65, x
.L191:
	.loc 1 630 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, x
	jne	.L194	#,
	.loc 1 634 0 is_stmt 1
	movl	$0, %eax	#, D.13072
.L193:
	.loc 1 635 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	tail_recursion_label_p, .-tail_recursion_label_p
	.section	.rodata
	.align 8
.LC5:
	.string	"Moved block %d before %d and merged.\n"
	.text
	.type	merge_blocks_move_predecessor_nojumps, @function
merge_blocks_move_predecessor_nojumps:
.LFB10:
	.loc 1 644 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 648 0
	movq	-24(%rbp), %rax	# a, tmp86
	movq	8(%rax), %rax	# a_1(D)->end, D.13074
	movq	%rax, %rdi	# D.13074,
	call	next_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp87, barrier
	.loc 1 649 0
	movq	-8(%rbp), %rax	# barrier, tmp88
	movzwl	(%rax), %eax	# barrier_3->code, D.13075
	cmpw	$35, %ax	#, D.13075
	je	.L196	#,
	.loc 1 650 0
	movl	$__FUNCTION__.10906, %edx	#,
	movl	$650, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L196:
	.loc 1 651 0
	movq	-8(%rbp), %rax	# barrier, tmp89
	movq	%rax, %rdi	# tmp89,
	call	delete_insn	#
	.loc 1 660 0
	movq	-24(%rbp), %rax	# a, tmp90
	leaq	8(%rax), %rdx	#, D.13076
	movq	-24(%rbp), %rax	# a, D.13076
	movq	%rdx, %rsi	# D.13076,
	movq	%rax, %rdi	# D.13076,
	call	squeeze_notes	#
	testb	%al, %al	# D.13077
	je	.L197	#,
	.loc 1 661 0
	movl	$__FUNCTION__.10906, %edx	#,
	movl	$661, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L197:
	.loc 1 664 0
	movq	-24(%rbp), %rax	# a, tmp91
	movq	8(%rax), %rdx	# a_1(D)->end, D.13074
	movq	-32(%rbp), %rax	# b, tmp92
	movq	(%rax), %rax	# b_9(D)->head, D.13074
	movq	16(%rax), %rax	# _10->fld[1].rtx, D.13074
	cmpq	%rax, %rdx	# D.13074, D.13074
	je	.L198	#,
	.loc 1 665 0
	movq	-32(%rbp), %rax	# b, tmp93
	movq	(%rax), %rax	# b_9(D)->head, D.13074
	movq	16(%rax), %rdx	# _12->fld[1].rtx, D.13074
	movq	-24(%rbp), %rax	# a, tmp94
	movq	8(%rax), %rcx	# a_1(D)->end, D.13074
	movq	-24(%rbp), %rax	# a, tmp95
	movq	(%rax), %rax	# a_1(D)->head, D.13074
	movq	%rcx, %rsi	# D.13074,
	movq	%rax, %rdi	# D.13074,
	call	reorder_insns_nobb	#
.L198:
	.loc 1 666 0
	movq	-24(%rbp), %rax	# a, tmp96
	movq	80(%rax), %rax	# a_1(D)->aux, D.13078
	orl	$1, %eax	#, D.13080
	movl	%eax, %eax	# D.13080, D.13079
	movq	%rax, %rdx	# D.13079, D.13078
	movq	-24(%rbp), %rax	# a, tmp97
	movq	%rdx, 80(%rax)	# D.13078, a_1(D)->aux
	.loc 1 668 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.46
	testq	%rax, %rax	# rtl_dump_file.46
	je	.L199	#,
	.loc 1 669 0
	movq	-32(%rbp), %rax	# b, tmp98
	movl	88(%rax), %ecx	# b_9(D)->index, D.13081
	movq	-24(%rbp), %rax	# a, tmp99
	movl	88(%rax), %edx	# a_1(D)->index, D.13081
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.47
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.47,
	movl	$0, %eax	#,
	call	fprintf	#
.L199:
	.loc 1 675 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.48
	movq	-24(%rbp), %rdx	# a, tmp100
	movl	88(%rdx), %edx	# a_1(D)->index, D.13081
	movslq	%edx, %rdx	# D.13081, tmp101
	leaq	4(%rdx), %rcx	#, tmp102
	movq	-32(%rbp), %rdx	# b, tmp103
	movq	%rdx, (%rax,%rcx,8)	# tmp103, basic_block_info.48_26->data.bb
	.loc 1 676 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.49
	movq	-32(%rbp), %rdx	# b, tmp104
	movl	88(%rdx), %edx	# b_9(D)->index, D.13081
	movslq	%edx, %rdx	# D.13081, tmp105
	leaq	4(%rdx), %rcx	#, tmp106
	movq	-24(%rbp), %rdx	# a, tmp107
	movq	%rdx, (%rax,%rcx,8)	# tmp107, basic_block_info.49_28->data.bb
	.loc 1 677 0
	movq	-24(%rbp), %rax	# a, tmp108
	movl	88(%rax), %eax	# a_1(D)->index, tmp109
	movl	%eax, -12(%rbp)	# tmp109, index
	.loc 1 678 0
	movq	-32(%rbp), %rax	# b, tmp110
	movl	88(%rax), %edx	# b_9(D)->index, D.13081
	movq	-24(%rbp), %rax	# a, tmp111
	movl	%edx, 88(%rax)	# D.13081, a_1(D)->index
	.loc 1 679 0
	movq	-32(%rbp), %rax	# b, tmp112
	movl	-12(%rbp), %edx	# index, tmp113
	movl	%edx, 88(%rax)	# tmp113, b_9(D)->index
	.loc 1 682 0
	movq	-32(%rbp), %rdx	# b, tmp114
	movq	-24(%rbp), %rax	# a, tmp115
	movq	%rdx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	merge_blocks_nomove	#
	.loc 1 683 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	merge_blocks_move_predecessor_nojumps, .-merge_blocks_move_predecessor_nojumps
	.section	.rodata
	.align 8
.LC6:
	.string	"Moved block %d after %d and merged.\n"
	.text
	.type	merge_blocks_move_successor_nojumps, @function
merge_blocks_move_successor_nojumps:
.LFB11:
	.loc 1 692 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 695 0
	movq	-32(%rbp), %rax	# b, tmp89
	movq	8(%rax), %rax	# b_2(D)->end, tmp90
	movq	%rax, -8(%rbp)	# tmp90, real_b_end
	.loc 1 696 0
	movq	-32(%rbp), %rax	# b, tmp91
	movq	8(%rax), %rax	# b_2(D)->end, D.13083
	movq	24(%rax), %rax	# _4->fld[2].rtx, tmp92
	movq	%rax, -16(%rbp)	# tmp92, barrier
	.loc 1 699 0
	cmpq	$0, -16(%rbp)	#, barrier
	je	.L201	#,
	.loc 1 700 0
	movq	-16(%rbp), %rax	# barrier, tmp93
	movzwl	(%rax), %eax	# barrier_5->code, D.13084
	cmpw	$36, %ax	#, D.13084
	jne	.L201	#,
	.loc 1 701 0
	movq	-16(%rbp), %rax	# barrier, tmp94
	movq	24(%rax), %rax	# barrier_5->fld[2].rtx, D.13083
	testq	%rax, %rax	# D.13083
	je	.L201	#,
	.loc 1 702 0
	movq	-16(%rbp), %rax	# barrier, tmp95
	movq	24(%rax), %rax	# barrier_5->fld[2].rtx, D.13083
	movzwl	(%rax), %eax	# _8->code, D.13084
	cmpw	$33, %ax	#, D.13084
	jne	.L201	#,
	.loc 1 703 0
	movq	-16(%rbp), %rax	# barrier, tmp96
	movq	24(%rax), %rax	# barrier_5->fld[2].rtx, D.13083
	movq	32(%rax), %rax	# _10->fld[3].rtx, D.13083
	movzwl	(%rax), %eax	# _11->code, D.13084
	cmpw	$44, %ax	#, D.13084
	je	.L202	#,
	.loc 1 704 0
	movq	-16(%rbp), %rax	# barrier, tmp97
	movq	24(%rax), %rax	# barrier_5->fld[2].rtx, D.13083
	movq	32(%rax), %rax	# _13->fld[3].rtx, D.13083
	movzwl	(%rax), %eax	# _14->code, D.13084
	cmpw	$45, %ax	#, D.13084
	jne	.L201	#,
.L202:
	.loc 1 708 0
	movq	-16(%rbp), %rax	# barrier, tmp98
	movq	24(%rax), %rdx	# barrier_5->fld[2].rtx, D.13083
	movq	-32(%rbp), %rax	# b, tmp99
	movq	%rdx, 8(%rax)	# D.13083, b_2(D)->end
	.loc 1 709 0
	movq	-32(%rbp), %rax	# b, tmp100
	movq	8(%rax), %rax	# b_2(D)->end, D.13083
	movq	24(%rax), %rax	# _17->fld[2].rtx, tmp101
	movq	%rax, -16(%rbp)	# tmp101, barrier
.L201:
	.loc 1 713 0
	cmpq	$0, -16(%rbp)	#, barrier
	je	.L203	#,
	.loc 1 713 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# barrier, tmp102
	movzwl	(%rax), %eax	# barrier_1->code, D.13084
	cmpw	$35, %ax	#, D.13084
	jne	.L203	#,
	.loc 1 714 0 is_stmt 1
	movq	-16(%rbp), %rax	# barrier, tmp103
	movq	%rax, %rdi	# tmp103,
	call	delete_insn	#
.L203:
	.loc 1 723 0
	movq	-32(%rbp), %rax	# b, tmp104
	leaq	8(%rax), %rdx	#, D.13085
	movq	-32(%rbp), %rax	# b, D.13085
	movq	%rdx, %rsi	# D.13085,
	movq	%rax, %rdi	# D.13085,
	call	squeeze_notes	#
	testb	%al, %al	# D.13086
	je	.L204	#,
	.loc 1 724 0
	movl	$__FUNCTION__.10913, %edx	#,
	movl	$724, %esi	#,
	movl	$.LC1, %edi	#,
	call	fancy_abort	#
.L204:
	.loc 1 727 0
	movq	-24(%rbp), %rax	# a, tmp105
	movq	8(%rax), %rdx	# a_23(D)->end, D.13083
	movq	-32(%rbp), %rax	# b, tmp106
	movq	8(%rax), %rcx	# b_2(D)->end, D.13083
	movq	-32(%rbp), %rax	# b, tmp107
	movq	(%rax), %rax	# b_2(D)->head, D.13083
	movq	%rcx, %rsi	# D.13083,
	movq	%rax, %rdi	# D.13083,
	call	reorder_insns_nobb	#
	.loc 1 730 0
	movq	-32(%rbp), %rax	# b, tmp108
	movq	-8(%rbp), %rdx	# real_b_end, tmp109
	movq	%rdx, 8(%rax)	# tmp109, b_2(D)->end
	.loc 1 733 0
	movq	-32(%rbp), %rdx	# b, tmp110
	movq	-24(%rbp), %rax	# a, tmp111
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	merge_blocks_nomove	#
	.loc 1 734 0
	movq	-24(%rbp), %rax	# a, tmp112
	movq	80(%rax), %rax	# a_23(D)->aux, D.13087
	orl	$1, %eax	#, D.13089
	movl	%eax, %eax	# D.13089, D.13088
	movq	%rax, %rdx	# D.13088, D.13087
	movq	-24(%rbp), %rax	# a, tmp113
	movq	%rdx, 80(%rax)	# D.13087, a_23(D)->aux
	.loc 1 736 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.50
	testq	%rax, %rax	# rtl_dump_file.50
	je	.L200	#,
	.loc 1 737 0
	movq	-24(%rbp), %rax	# a, tmp114
	movl	88(%rax), %ecx	# a_23(D)->index, D.13090
	movq	-32(%rbp), %rax	# b, tmp115
	movl	88(%rax), %edx	# b_2(D)->index, D.13090
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.51
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.51,
	movl	$0, %eax	#,
	call	fprintf	#
.L200:
	.loc 1 739 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	merge_blocks_move_successor_nojumps, .-merge_blocks_move_successor_nojumps
	.section	.rodata
	.align 8
.LC7:
	.string	"Merged %d and %d without moving.\n"
	.text
	.type	merge_blocks, @function
merge_blocks:
.LFB12:
	.loc 1 749 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# e, e
	movq	%rsi, -64(%rbp)	# b, b
	movq	%rdx, -72(%rbp)	# c, c
	movl	%ecx, -76(%rbp)	# mode, mode
	.loc 1 754 0
	movl	-76(%rbp), %eax	# mode, tmp105
	andl	$8, %eax	#, D.13093
	testl	%eax, %eax	# D.13093
	je	.L207	#,
	.loc 1 755 0
	movq	-72(%rbp), %rax	# c, tmp106
	movq	(%rax), %rax	# c_6(D)->head, D.13094
	movzwl	(%rax), %eax	# _7->code, D.13095
	cmpw	$36, %ax	#, D.13095
	jne	.L207	#,
	.loc 1 756 0
	movq	-72(%rbp), %rax	# c, tmp107
	movq	(%rax), %rax	# c_6(D)->head, D.13094
	movq	%rax, %rdi	# D.13094,
	call	tail_recursion_label_p	#
	testb	%al, %al	# D.13092
	je	.L207	#,
	.loc 1 757 0
	movl	$0, %eax	#, D.13092
	jmp	.L208	#
.L207:
	.loc 1 760 0
	movq	-56(%rbp), %rax	# e, tmp108
	movl	48(%rax), %eax	# e_12(D)->flags, D.13093
	andl	$1, %eax	#, D.13093
	testl	%eax, %eax	# D.13093
	je	.L209	#,
.LBB17:
	.loc 1 762 0
	movq	-64(%rbp), %rax	# b, tmp109
	movl	88(%rax), %eax	# b_15(D)->index, tmp110
	movl	%eax, -32(%rbp)	# tmp110, b_index
	movq	-72(%rbp), %rax	# c, tmp111
	movl	88(%rax), %eax	# c_6(D)->index, tmp112
	movl	%eax, -28(%rbp)	# tmp112, c_index
	.loc 1 766 0
	movq	-72(%rbp), %rax	# c, tmp113
	movq	80(%rax), %rax	# c_6(D)->aux, D.13096
	andl	$1, %eax	#, D.13098
	testl	%eax, %eax	# D.13098
	jne	.L210	#,
	.loc 1 767 0
	movq	-64(%rbp), %rax	# b, tmp114
	movq	8(%rax), %rax	# b_15(D)->end, D.13094
	movzwl	(%rax), %eax	# _22->code, D.13095
	cmpw	$33, %ax	#, D.13095
	jne	.L211	#,
.L210:
	.loc 1 768 0
	movq	-64(%rbp), %rax	# b, tmp115
	movq	80(%rax), %rax	# b_15(D)->aux, D.13096
	orl	$1, %eax	#, D.13098
	movl	%eax, %eax	# D.13098, D.13097
	movq	%rax, %rdx	# D.13097, D.13096
	movq	-64(%rbp), %rax	# b, tmp116
	movq	%rdx, 80(%rax)	# D.13096, b_15(D)->aux
.L211:
	.loc 1 769 0
	movq	-72(%rbp), %rdx	# c, tmp117
	movq	-64(%rbp), %rax	# b, tmp118
	movq	%rdx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	merge_blocks_nomove	#
	.loc 1 770 0
	movq	-64(%rbp), %rax	# b, tmp119
	movq	%rax, %rdi	# tmp119,
	call	update_forwarder_flag	#
	.loc 1 772 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.52
	testq	%rax, %rax	# rtl_dump_file.52
	je	.L212	#,
	.loc 1 773 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.53
	movl	-28(%rbp), %ecx	# c_index, tmp120
	movl	-32(%rbp), %edx	# b_index, tmp121
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.53,
	movl	$0, %eax	#,
	call	fprintf	#
.L212:
	.loc 1 776 0
	movl	$1, %eax	#, D.13092
	jmp	.L208	#
.L209:
.LBE17:
	.loc 1 781 0
	movl	-76(%rbp), %eax	# mode, tmp122
	andl	$1, %eax	#, D.13093
	testl	%eax, %eax	# D.13093
	je	.L213	#,
.LBB18:
	.loc 1 791 0
	movq	-64(%rbp), %rax	# b, tmp123
	movq	80(%rax), %rax	# b_15(D)->aux, D.13096
	andl	$2, %eax	#, D.13098
	testl	%eax, %eax	# D.13098
	jne	.L214	#,
	.loc 1 791 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# c, tmp124
	movq	80(%rax), %rax	# c_6(D)->aux, D.13096
	andl	$2, %eax	#, D.13098
	testl	%eax, %eax	# D.13098
	je	.L215	#,
.L214:
	.loc 1 792 0 is_stmt 1
	movl	$0, %eax	#, D.13092
	jmp	.L208	#
.L215:
	.loc 1 798 0
	movq	-72(%rbp), %rax	# c, tmp125
	movq	40(%rax), %rax	# c_6(D)->succ, tmp126
	movq	%rax, -24(%rbp)	# tmp126, tmp_edge
	jmp	.L216	#
.L219:
	.loc 1 799 0
	movq	-24(%rbp), %rax	# tmp_edge, tmp127
	movl	48(%rax), %eax	# tmp_edge_1->flags, D.13093
	andl	$1, %eax	#, D.13093
	testl	%eax, %eax	# D.13093
	je	.L217	#,
	.loc 1 800 0
	jmp	.L218	#
.L217:
	.loc 1 798 0
	movq	-24(%rbp), %rax	# tmp_edge, tmp128
	movq	8(%rax), %rax	# tmp_edge_1->succ_next, tmp129
	movq	%rax, -24(%rbp)	# tmp129, tmp_edge
.L216:
	.loc 1 798 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, tmp_edge
	jne	.L219	#,
.L218:
	.loc 1 802 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, tmp_edge
	setne	%al	#, tmp130
	movb	%al, -34(%rbp)	# tmp130, c_has_outgoing_fallthru
	.loc 1 804 0
	movq	-64(%rbp), %rax	# b, tmp131
	movq	32(%rax), %rax	# b_15(D)->pred, tmp132
	movq	%rax, -24(%rbp)	# tmp132, tmp_edge
	jmp	.L220	#
.L223:
	.loc 1 805 0
	movq	-24(%rbp), %rax	# tmp_edge, tmp133
	movl	48(%rax), %eax	# tmp_edge_2->flags, D.13093
	andl	$1, %eax	#, D.13093
	testl	%eax, %eax	# D.13093
	je	.L221	#,
	.loc 1 806 0
	jmp	.L222	#
.L221:
	.loc 1 804 0
	movq	-24(%rbp), %rax	# tmp_edge, tmp134
	movq	(%rax), %rax	# tmp_edge_2->pred_next, tmp135
	movq	%rax, -24(%rbp)	# tmp135, tmp_edge
.L220:
	.loc 1 804 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, tmp_edge
	jne	.L223	#,
.L222:
	.loc 1 808 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, tmp_edge
	setne	%al	#, tmp136
	movb	%al, -33(%rbp)	# tmp136, b_has_incoming_fallthru
	.loc 1 809 0
	movq	-24(%rbp), %rax	# tmp_edge, tmp137
	movq	%rax, -16(%rbp)	# tmp137, b_fallthru_edge
	.loc 1 814 0
	movzbl	-34(%rbp), %eax	# c_has_outgoing_fallthru, tmp138
	xorl	$1, %eax	#, D.13092
	testb	%al, %al	# D.13092
	je	.L224	#,
	.loc 1 816 0
	movq	-72(%rbp), %rdx	# c, tmp139
	movq	-64(%rbp), %rax	# b, tmp140
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	merge_blocks_move_successor_nojumps	#
	.loc 1 817 0
	movl	$1, %eax	#, D.13092
	jmp	.L208	#
.L224:
	.loc 1 825 0
	cmpb	$0, -33(%rbp)	#, b_has_incoming_fallthru
	je	.L225	#,
.LBB19:
	.loc 1 829 0
	movq	-16(%rbp), %rax	# b_fallthru_edge, tmp141
	movq	16(%rax), %rax	# b_fallthru_edge_52->src, D.13099
	cmpq	$entry_exit_blocks, %rax	#, D.13099
	jne	.L226	#,
	.loc 1 830 0
	movl	$0, %eax	#, D.13092
	jmp	.L208	#
.L226:
	.loc 1 831 0
	movq	-16(%rbp), %rax	# b_fallthru_edge, tmp142
	movq	%rax, %rdi	# tmp142,
	call	force_nonfallthru	#
	movq	%rax, -8(%rbp)	# tmp143, bb
	.loc 1 832 0
	cmpq	$0, -8(%rbp)	#, bb
	je	.L227	#,
	.loc 1 833 0
	movq	-8(%rbp), %rax	# bb, tmp144
	movq	%rax, %rdi	# tmp144,
	call	notice_new_block	#
	jmp	.L225	#
.L227:
	.loc 1 835 0
	movq	-16(%rbp), %rax	# b_fallthru_edge, tmp145
	movq	16(%rax), %rax	# b_fallthru_edge_52->src, D.13099
	movq	-16(%rbp), %rdx	# b_fallthru_edge, tmp146
	movq	16(%rdx), %rdx	# b_fallthru_edge_52->src, D.13099
	movq	80(%rdx), %rdx	# _59->aux, D.13096
	orl	$1, %edx	#, D.13098
	movl	%edx, %edx	# D.13098, D.13097
	movq	%rdx, 80(%rax)	# D.13096, _58->aux
.L225:
.LBE19:
	.loc 1 838 0
	movq	-72(%rbp), %rdx	# c, tmp147
	movq	-64(%rbp), %rax	# b, tmp148
	movq	%rdx, %rsi	# tmp147,
	movq	%rax, %rdi	# tmp148,
	call	merge_blocks_move_predecessor_nojumps	#
	.loc 1 839 0
	movl	$1, %eax	#, D.13092
	jmp	.L208	#
.L213:
.LBE18:
	.loc 1 842 0
	movl	$0, %eax	#, D.13092
.L208:
	.loc 1 843 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	merge_blocks, .-merge_blocks
	.type	insns_match_p, @function
insns_match_p:
.LFB13:
	.loc 1 852 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movl	%edi, -84(%rbp)	# mode, mode
	movq	%rsi, -96(%rbp)	# i1, i1
	movq	%rdx, -104(%rbp)	# i2, i2
	.loc 1 856 0
	movq	-96(%rbp), %rax	# i1, tmp142
	movzwl	(%rax), %edx	# i1_13(D)->code, D.13102
	movq	-104(%rbp), %rax	# i2, tmp143
	movzwl	(%rax), %eax	# i2_15(D)->code, D.13102
	cmpw	%ax, %dx	# D.13102, D.13102
	je	.L229	#,
	.loc 1 857 0
	movl	$0, %eax	#, D.13101
	jmp	.L230	#
.L229:
	.loc 1 859 0
	movq	-96(%rbp), %rax	# i1, tmp144
	movq	32(%rax), %rax	# i1_13(D)->fld[3].rtx, tmp145
	movq	%rax, -48(%rbp)	# tmp145, p1
	.loc 1 860 0
	movq	-104(%rbp), %rax	# i2, tmp146
	movq	32(%rax), %rax	# i2_15(D)->fld[3].rtx, tmp147
	movq	%rax, -40(%rbp)	# tmp147, p2
	.loc 1 862 0
	movq	-48(%rbp), %rax	# p1, tmp148
	movzwl	(%rax), %edx	# p1_18->code, D.13102
	movq	-40(%rbp), %rax	# p2, tmp149
	movzwl	(%rax), %eax	# p2_19->code, D.13102
	cmpw	%ax, %dx	# D.13102, D.13102
	je	.L231	#,
	.loc 1 863 0
	movl	$0, %eax	#, D.13101
	jmp	.L230	#
.L231:
	.loc 1 875 0
	movq	-96(%rbp), %rax	# i1, tmp150
	movzwl	(%rax), %eax	# i1_13(D)->code, D.13102
	cmpw	$34, %ax	#, D.13102
	jne	.L232	#,
	.loc 1 876 0
	movq	-104(%rbp), %rax	# i2, tmp151
	movq	64(%rax), %rdx	# i2_15(D)->fld[7].rtx, D.13103
	movq	-96(%rbp), %rax	# i1, tmp152
	movq	64(%rax), %rax	# i1_13(D)->fld[7].rtx, D.13103
	movq	%rdx, %rsi	# D.13103,
	movq	%rax, %rdi	# D.13103,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13104
	jne	.L232	#,
	.loc 1 878 0
	movl	$0, %eax	#, D.13101
	jmp	.L230	#
.L232:
	.loc 1 885 0
	movl	-84(%rbp), %eax	# mode, tmp153
	andl	$4, %eax	#, D.13104
	testl	%eax, %eax	# D.13104
	je	.L233	#,
	.loc 1 885 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# i1, tmp154
	movq	%rax, %rdi	# tmp154,
	call	stack_regs_mentioned	#
	testl	%eax, %eax	# D.13104
	je	.L233	#,
.LBB20:
	.loc 1 894 0 is_stmt 1
	movq	$0, -64(%rbp)	#, i1_regset
	.loc 1 895 0
	movq	$0, -56(%rbp)	#, i2_regset
	.loc 1 897 0
	movq	-96(%rbp), %rax	# i1, tmp155
	movq	56(%rax), %rax	# i1_13(D)->fld[6].rtx, tmp156
	movq	%rax, -72(%rbp)	# tmp156, note
	jmp	.L234	#
.L236:
	.loc 1 898 0
	movq	-72(%rbp), %rax	# note, tmp157
	movzbl	2(%rax), %eax	# note_1->mode, D.13105
	cmpb	$1, %al	#, D.13105
	jne	.L235	#,
	.loc 1 898 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# note, tmp158
	movq	8(%rax), %rax	# note_1->fld[0].rtx, D.13103
	movzwl	(%rax), %eax	# _35->code, D.13102
	cmpw	$61, %ax	#, D.13102
	jne	.L235	#,
	movq	-72(%rbp), %rax	# note, tmp159
	movq	8(%rax), %rax	# note_1->fld[0].rtx, D.13103
	movl	8(%rax), %eax	# _37->fld[0].rtuint, D.13106
	cmpl	$7, %eax	#, D.13106
	jbe	.L235	#,
	movq	-72(%rbp), %rax	# note, tmp160
	movq	8(%rax), %rax	# note_1->fld[0].rtx, D.13103
	movl	8(%rax), %eax	# _39->fld[0].rtuint, D.13106
	cmpl	$15, %eax	#, D.13106
	ja	.L235	#,
	.loc 1 899 0 is_stmt 1
	movq	-72(%rbp), %rax	# note, tmp161
	movq	8(%rax), %rax	# note_1->fld[0].rtx, D.13103
	movl	8(%rax), %eax	# _41->fld[0].rtuint, D.13106
	movl	$1, %edx	#, tmp162
	movl	%eax, %ecx	# D.13104, tmp218
	salq	%cl, %rdx	# tmp218, D.13107
	movq	%rdx, %rax	# D.13107, D.13107
	orq	%rax, -64(%rbp)	# D.13107, i1_regset
.L235:
	.loc 1 897 0
	movq	-72(%rbp), %rax	# note, tmp163
	movq	16(%rax), %rax	# note_1->fld[1].rtx, tmp164
	movq	%rax, -72(%rbp)	# tmp164, note
.L234:
	.loc 1 897 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, note
	jne	.L236	#,
	.loc 1 901 0 is_stmt 1
	movq	-104(%rbp), %rax	# i2, tmp165
	movq	56(%rax), %rax	# i2_15(D)->fld[6].rtx, tmp166
	movq	%rax, -72(%rbp)	# tmp166, note
	jmp	.L237	#
.L239:
	.loc 1 902 0
	movq	-72(%rbp), %rax	# note, tmp167
	movzbl	2(%rax), %eax	# note_2->mode, D.13105
	cmpb	$1, %al	#, D.13105
	jne	.L238	#,
	.loc 1 902 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# note, tmp168
	movq	8(%rax), %rax	# note_2->fld[0].rtx, D.13103
	movzwl	(%rax), %eax	# _49->code, D.13102
	cmpw	$61, %ax	#, D.13102
	jne	.L238	#,
	movq	-72(%rbp), %rax	# note, tmp169
	movq	8(%rax), %rax	# note_2->fld[0].rtx, D.13103
	movl	8(%rax), %eax	# _51->fld[0].rtuint, D.13106
	cmpl	$7, %eax	#, D.13106
	jbe	.L238	#,
	movq	-72(%rbp), %rax	# note, tmp170
	movq	8(%rax), %rax	# note_2->fld[0].rtx, D.13103
	movl	8(%rax), %eax	# _53->fld[0].rtuint, D.13106
	cmpl	$15, %eax	#, D.13106
	ja	.L238	#,
	.loc 1 903 0 is_stmt 1
	movq	-72(%rbp), %rax	# note, tmp171
	movq	8(%rax), %rax	# note_2->fld[0].rtx, D.13103
	movl	8(%rax), %eax	# _55->fld[0].rtuint, D.13106
	movl	$1, %edx	#, tmp172
	movl	%eax, %ecx	# D.13104, tmp220
	salq	%cl, %rdx	# tmp220, D.13107
	movq	%rdx, %rax	# D.13107, D.13107
	orq	%rax, -56(%rbp)	# D.13107, i2_regset
.L238:
	.loc 1 901 0
	movq	-72(%rbp), %rax	# note, tmp173
	movq	16(%rax), %rax	# note_2->fld[1].rtx, tmp174
	movq	%rax, -72(%rbp)	# tmp174, note
.L237:
	.loc 1 901 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, note
	jne	.L239	#,
	.loc 1 905 0 is_stmt 1
	movq	-64(%rbp), %rax	# i1_regset, tmp175
	cmpq	-56(%rbp), %rax	# i2_regset, tmp175
	jne	.L240	#,
	.loc 1 905 0 is_stmt 0 discriminator 1
	jmp	.L233	#
.L240:
	.loc 1 907 0 is_stmt 1
	movl	$0, %eax	#, D.13101
	jmp	.L230	#
.L233:
.LBE20:
	.loc 1 915 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.55
	.loc 1 914 0
	testl	%eax, %eax	# reload_completed.55
	je	.L241	#,
	.loc 1 915 0
	movq	-40(%rbp), %rdx	# p2, tmp176
	movq	-48(%rbp), %rax	# p1, tmp177
	movq	%rdx, %rsi	# tmp176,
	movq	%rax, %rdi	# tmp177,
	call	rtx_renumbered_equal_p	#
	.loc 1 914 0
	testl	%eax, %eax	# D.13104
	sete	%al	#, iftmp.54
	jmp	.L242	#
.L241:
	.loc 1 915 0 discriminator 1
	movq	-40(%rbp), %rdx	# p2, tmp178
	movq	-48(%rbp), %rax	# p1, tmp179
	movq	%rdx, %rsi	# tmp178,
	movq	%rax, %rdi	# tmp179,
	call	rtx_equal_p	#
	.loc 1 914 0 discriminator 1
	testl	%eax, %eax	# D.13104
	sete	%al	#, iftmp.54
.L242:
	.loc 1 914 0 is_stmt 0 discriminator 2
	testb	%al, %al	# iftmp.54
	je	.L243	#,
.LBB21:
	.loc 1 918 0 is_stmt 1
	movq	-96(%rbp), %rax	# i1, tmp180
	movq	%rax, %rdi	# tmp180,
	call	find_reg_equal_equiv_note	#
	movq	%rax, -32(%rbp)	# tmp181, equiv1
	.loc 1 919 0
	movq	-104(%rbp), %rax	# i2, tmp182
	movq	%rax, %rdi	# tmp182,
	call	find_reg_equal_equiv_note	#
	movq	%rax, -24(%rbp)	# tmp183, equiv2
	.loc 1 921 0
	cmpq	$0, -32(%rbp)	#, equiv1
	je	.L244	#,
	.loc 1 921 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, equiv2
	je	.L244	#,
	.loc 1 925 0 is_stmt 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.56
	testl	%eax, %eax	# reload_completed.56
	je	.L245	#,
	.loc 1 926 0
	movq	-32(%rbp), %rax	# equiv1, tmp184
	movq	8(%rax), %rax	# equiv1_67->fld[0].rtx, D.13103
	movzwl	(%rax), %eax	# _70->code, D.13102
	cmpw	$67, %ax	#, D.13102
	je	.L246	#,
	.loc 1 926 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# equiv1, tmp185
	movq	8(%rax), %rax	# equiv1_67->fld[0].rtx, D.13103
	movzwl	(%rax), %eax	# _72->code, D.13102
	cmpw	$68, %ax	#, D.13102
	je	.L246	#,
	movq	-32(%rbp), %rax	# equiv1, tmp186
	movq	8(%rax), %rax	# equiv1_67->fld[0].rtx, D.13103
	movzwl	(%rax), %eax	# _74->code, D.13102
	cmpw	$54, %ax	#, D.13102
	je	.L246	#,
	movq	-32(%rbp), %rax	# equiv1, tmp187
	movq	8(%rax), %rax	# equiv1_67->fld[0].rtx, D.13103
	movzwl	(%rax), %eax	# _76->code, D.13102
	cmpw	$55, %ax	#, D.13102
	je	.L246	#,
	movq	-32(%rbp), %rax	# equiv1, tmp188
	movq	8(%rax), %rax	# equiv1_67->fld[0].rtx, D.13103
	movzwl	(%rax), %eax	# _78->code, D.13102
	cmpw	$58, %ax	#, D.13102
	je	.L246	#,
	movq	-32(%rbp), %rax	# equiv1, tmp189
	movq	8(%rax), %rax	# equiv1_67->fld[0].rtx, D.13103
	movzwl	(%rax), %eax	# _80->code, D.13102
	cmpw	$134, %ax	#, D.13102
	je	.L246	#,
	movq	-32(%rbp), %rax	# equiv1, tmp190
	movq	8(%rax), %rax	# equiv1_67->fld[0].rtx, D.13103
	movzwl	(%rax), %eax	# _82->code, D.13102
	cmpw	$56, %ax	#, D.13102
	je	.L246	#,
	movq	-32(%rbp), %rax	# equiv1, tmp191
	movq	8(%rax), %rax	# equiv1_67->fld[0].rtx, D.13103
	movzwl	(%rax), %eax	# _84->code, D.13102
	cmpw	$140, %ax	#, D.13102
	jne	.L244	#,
.L246:
	.loc 1 927 0 is_stmt 1
	movq	-24(%rbp), %rax	# equiv2, tmp192
	movq	8(%rax), %rdx	# equiv2_68->fld[0].rtx, D.13103
	movq	-32(%rbp), %rax	# equiv1, tmp193
	movq	8(%rax), %rax	# equiv1_67->fld[0].rtx, D.13103
	movq	%rdx, %rsi	# D.13103,
	movq	%rax, %rdi	# D.13103,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13104
	je	.L244	#,
.L245:
.LBB22:
	.loc 1 929 0
	movq	-96(%rbp), %rax	# i1, tmp194
	movzwl	(%rax), %eax	# i1_13(D)->code, D.13102
	movzwl	%ax, %eax	# D.13102, D.13104
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13108
	cmpb	$105, %al	#, D.13108
	jne	.L247	#,
	.loc 1 929 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# i1, tmp196
	movq	32(%rax), %rax	# i1_13(D)->fld[3].rtx, D.13103
	movzwl	(%rax), %eax	# _92->code, D.13102
	cmpw	$47, %ax	#, D.13102
	jne	.L248	#,
	.loc 1 929 0 discriminator 3
	movq	-96(%rbp), %rax	# i1, tmp197
	movq	32(%rax), %rax	# i1_13(D)->fld[3].rtx, iftmp.58
	jmp	.L250	#
.L248:
	.loc 1 929 0 discriminator 4
	movq	-96(%rbp), %rax	# i1, tmp198
	movq	32(%rax), %rdx	# i1_13(D)->fld[3].rtx, D.13103
	movq	-96(%rbp), %rax	# i1, tmp199
	movq	%rdx, %rsi	# D.13103,
	movq	%rax, %rdi	# tmp199,
	call	single_set_2	#
	jmp	.L250	#
.L247:
	.loc 1 929 0 discriminator 2
	movl	$0, %eax	#, iftmp.57
.L250:
	.loc 1 929 0 discriminator 5
	movq	%rax, -16(%rbp)	# iftmp.57, s1
	.loc 1 930 0 is_stmt 1 discriminator 5
	movq	-104(%rbp), %rax	# i2, tmp200
	movzwl	(%rax), %eax	# i2_15(D)->code, D.13102
	movzwl	%ax, %eax	# D.13102, D.13104
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.13108
	cmpb	$105, %al	#, D.13108
	jne	.L251	#,
	.loc 1 930 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# i2, tmp202
	movq	32(%rax), %rax	# i2_15(D)->fld[3].rtx, D.13103
	movzwl	(%rax), %eax	# _103->code, D.13102
	cmpw	$47, %ax	#, D.13102
	jne	.L252	#,
	.loc 1 930 0 discriminator 3
	movq	-104(%rbp), %rax	# i2, tmp203
	movq	32(%rax), %rax	# i2_15(D)->fld[3].rtx, iftmp.60
	jmp	.L254	#
.L252:
	.loc 1 930 0 discriminator 4
	movq	-104(%rbp), %rax	# i2, tmp204
	movq	32(%rax), %rdx	# i2_15(D)->fld[3].rtx, D.13103
	movq	-104(%rbp), %rax	# i2, tmp205
	movq	%rdx, %rsi	# D.13103,
	movq	%rax, %rdi	# tmp205,
	call	single_set_2	#
	jmp	.L254	#
.L251:
	.loc 1 930 0 discriminator 2
	movl	$0, %eax	#, iftmp.59
.L254:
	.loc 1 930 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.59, s2
	.loc 1 931 0 is_stmt 1 discriminator 5
	cmpq	$0, -16(%rbp)	#, s1
	je	.L244	#,
	.loc 1 931 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, s2
	je	.L244	#,
	.loc 1 932 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp206
	movq	8(%rax), %rdx	# s2_110->fld[0].rtx, D.13103
	movq	-16(%rbp), %rax	# s1, tmp207
	movq	8(%rax), %rax	# s1_99->fld[0].rtx, D.13103
	movq	%rdx, %rsi	# D.13103,
	movq	%rax, %rdi	# D.13103,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13104
	je	.L244	#,
	.loc 1 934 0
	movq	-32(%rbp), %rax	# equiv1, tmp208
	movq	8(%rax), %rdx	# equiv1_67->fld[0].rtx, D.13103
	movq	-16(%rbp), %rax	# s1, tmp209
	leaq	16(%rax), %rsi	#, D.13109
	movq	-96(%rbp), %rax	# i1, tmp210
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp210,
	call	validate_change	#
	.loc 1 935 0
	movq	-24(%rbp), %rax	# equiv2, tmp211
	movq	8(%rax), %rdx	# equiv2_68->fld[0].rtx, D.13103
	movq	-8(%rbp), %rax	# s2, tmp212
	leaq	16(%rax), %rsi	#, D.13109
	movq	-104(%rbp), %rax	# i2, tmp213
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp213,
	call	validate_change	#
	.loc 1 936 0
	movq	-40(%rbp), %rdx	# p2, tmp214
	movq	-48(%rbp), %rax	# p1, tmp215
	movq	%rdx, %rsi	# tmp214,
	movq	%rax, %rdi	# tmp215,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13104
	jne	.L255	#,
	.loc 1 937 0
	movl	$0, %edi	#,
	call	cancel_changes	#
	jmp	.L244	#
.L255:
	.loc 1 938 0
	call	apply_change_group	#
	testl	%eax, %eax	# D.13104
	je	.L244	#,
	.loc 1 939 0
	movl	$1, %eax	#, D.13101
	jmp	.L230	#
.L244:
.LBE22:
	.loc 1 943 0
	movl	$0, %eax	#, D.13101
	jmp	.L230	#
.L243:
.LBE21:
	.loc 1 946 0
	movl	$1, %eax	#, D.13101
.L230:
	.loc 1 947 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	insns_match_p, .-insns_match_p
	.type	flow_find_cross_jump, @function
flow_find_cross_jump:
.LFB14:
	.loc 1 961 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movl	%edi, -84(%rbp)	# mode, mode
	movq	%rsi, -96(%rbp)	# bb1, bb1
	movq	%rdx, -104(%rbp)	# bb2, bb2
	movq	%rcx, -112(%rbp)	# f1, f1
	movq	%r8, -120(%rbp)	# f2, f2
	.loc 1 963 0
	movl	$0, -68(%rbp)	#, ninsns
	.loc 1 968 0
	movq	-96(%rbp), %rax	# bb1, tmp95
	movq	8(%rax), %rax	# bb1_19(D)->end, tmp96
	movq	%rax, -64(%rbp)	# tmp96, i1
	.loc 1 969 0
	movq	$0, -32(%rbp)	#, afterlast2
	movq	-32(%rbp), %rax	# afterlast2, tmp97
	movq	%rax, -40(%rbp)	# tmp97, last2
	movq	-40(%rbp), %rax	# last2, tmp98
	movq	%rax, -24(%rbp)	# tmp98, afterlast1
	movq	-24(%rbp), %rax	# afterlast1, tmp99
	movq	%rax, -48(%rbp)	# tmp99, last1
	.loc 1 970 0
	movq	-64(%rbp), %rax	# i1, tmp100
	movq	%rax, %rdi	# tmp100,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.13110
	jne	.L257	#,
	.loc 1 971 0
	movq	-64(%rbp), %rax	# i1, tmp101
	movq	%rax, %rdi	# tmp101,
	call	returnjump_p	#
	testl	%eax, %eax	# D.13110
	je	.L258	#,
	.loc 1 971 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# i1, tmp102
	movq	32(%rax), %rax	# i1_20->fld[3].rtx, D.13111
	movq	%rax, %rdi	# D.13111,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13110
	jne	.L258	#,
.L257:
	.loc 1 973 0 is_stmt 1
	movq	-64(%rbp), %rax	# i1, tmp103
	movq	%rax, -48(%rbp)	# tmp103, last1
	.loc 1 974 0
	movq	-64(%rbp), %rax	# i1, tmp104
	movq	16(%rax), %rax	# i1_20->fld[1].rtx, tmp105
	movq	%rax, -64(%rbp)	# tmp105, i1
.L258:
	.loc 1 977 0
	movq	-104(%rbp), %rax	# bb2, tmp106
	movq	8(%rax), %rax	# bb2_31(D)->end, tmp107
	movq	%rax, -56(%rbp)	# tmp107, i2
	.loc 1 978 0
	movq	-56(%rbp), %rax	# i2, tmp108
	movq	%rax, %rdi	# tmp108,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.13110
	jne	.L259	#,
	.loc 1 979 0
	movq	-56(%rbp), %rax	# i2, tmp109
	movq	%rax, %rdi	# tmp109,
	call	returnjump_p	#
	testl	%eax, %eax	# D.13110
	je	.L260	#,
	.loc 1 979 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# i2, tmp110
	movq	32(%rax), %rax	# i2_32->fld[3].rtx, D.13111
	movq	%rax, %rdi	# D.13111,
	call	side_effects_p	#
	testl	%eax, %eax	# D.13110
	jne	.L260	#,
.L259:
	.loc 1 981 0 is_stmt 1
	movq	-56(%rbp), %rax	# i2, tmp111
	movq	%rax, -40(%rbp)	# tmp111, last2
	.loc 1 983 0
	movq	-56(%rbp), %rax	# i2, tmp112
	movq	%rax, %rdi	# tmp112,
	call	simplejump_p	#
	testl	%eax, %eax	# D.13110
	jne	.L261	#,
	.loc 1 983 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# i2, tmp113
	movq	%rax, %rdi	# tmp113,
	call	returnjump_p	#
	testl	%eax, %eax	# D.13110
	jne	.L261	#,
	cmpq	$0, -48(%rbp)	#, last1
	je	.L261	#,
	.loc 1 984 0 is_stmt 1
	addl	$1, -68(%rbp)	#, ninsns
.L261:
	.loc 1 985 0
	movq	-56(%rbp), %rax	# i2, tmp114
	movq	16(%rax), %rax	# i2_32->fld[1].rtx, tmp115
	movq	%rax, -56(%rbp)	# tmp115, i2
	.loc 1 991 0
	jmp	.L262	#
.L260:
	jmp	.L262	#
.L264:
	.loc 1 992 0
	movq	-64(%rbp), %rax	# i1, tmp116
	movq	16(%rax), %rax	# i1_3->fld[1].rtx, tmp117
	movq	%rax, -64(%rbp)	# tmp117, i1
.L262:
	.loc 1 991 0 discriminator 1
	movq	-64(%rbp), %rax	# i1, tmp118
	movq	%rax, %rdi	# tmp118,
	call	active_insn_p	#
	testl	%eax, %eax	# D.13110
	jne	.L263	#,
	.loc 1 991 0 is_stmt 0 discriminator 2
	movq	-96(%rbp), %rax	# bb1, tmp119
	movq	(%rax), %rax	# bb1_19(D)->head, D.13111
	cmpq	-64(%rbp), %rax	# i1, D.13111
	jne	.L264	#,
.L263:
	.loc 1 994 0 is_stmt 1
	jmp	.L265	#
.L267:
	.loc 1 995 0
	movq	-56(%rbp), %rax	# i2, tmp120
	movq	16(%rax), %rax	# i2_5->fld[1].rtx, tmp121
	movq	%rax, -56(%rbp)	# tmp121, i2
.L265:
	.loc 1 994 0 discriminator 1
	movq	-56(%rbp), %rax	# i2, tmp122
	movq	%rax, %rdi	# tmp122,
	call	active_insn_p	#
	testl	%eax, %eax	# D.13110
	jne	.L266	#,
	.loc 1 994 0 is_stmt 0 discriminator 2
	movq	-104(%rbp), %rax	# bb2, tmp123
	movq	(%rax), %rax	# bb2_31(D)->head, D.13111
	cmpq	-56(%rbp), %rax	# i2, D.13111
	jne	.L267	#,
.L266:
	.loc 1 997 0 is_stmt 1
	movq	-96(%rbp), %rax	# bb1, tmp124
	movq	(%rax), %rax	# bb1_19(D)->head, D.13111
	cmpq	-64(%rbp), %rax	# i1, D.13111
	je	.L268	#,
	.loc 1 997 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# bb2, tmp125
	movq	(%rax), %rax	# bb2_31(D)->head, D.13111
	cmpq	-56(%rbp), %rax	# i2, D.13111
	je	.L268	#,
	.loc 1 1000 0 is_stmt 1
	movq	-56(%rbp), %rdx	# i2, tmp126
	movq	-64(%rbp), %rcx	# i1, tmp127
	movl	-84(%rbp), %eax	# mode, tmp128
	movq	%rcx, %rsi	# tmp127,
	movl	%eax, %edi	# tmp128,
	call	insns_match_p	#
	xorl	$1, %eax	#, D.13112
	testb	%al, %al	# D.13112
	je	.L269	#,
	.loc 1 1001 0
	jmp	.L268	#
.L269:
	.loc 1 1004 0
	movq	-64(%rbp), %rax	# i1, tmp129
	movq	%rax, %rdi	# tmp129,
	call	active_insn_p	#
	testl	%eax, %eax	# D.13110
	je	.L270	#,
.LBB23:
	.loc 1 1008 0
	movq	-64(%rbp), %rax	# i1, tmp130
	movq	%rax, %rdi	# tmp130,
	call	find_reg_equal_equiv_note	#
	movq	%rax, -16(%rbp)	# tmp131, equiv1
	.loc 1 1009 0
	movq	-56(%rbp), %rax	# i2, tmp132
	movq	%rax, %rdi	# tmp132,
	call	find_reg_equal_equiv_note	#
	movq	%rax, -8(%rbp)	# tmp133, equiv2
	.loc 1 1011 0
	cmpq	$0, -16(%rbp)	#, equiv1
	je	.L271	#,
	.loc 1 1011 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, equiv2
	jne	.L271	#,
	.loc 1 1012 0 is_stmt 1
	movq	-16(%rbp), %rdx	# equiv1, tmp134
	movq	-64(%rbp), %rax	# i1, tmp135
	movq	%rdx, %rsi	# tmp134,
	movq	%rax, %rdi	# tmp135,
	call	remove_note	#
	jmp	.L272	#
.L271:
	.loc 1 1013 0
	cmpq	$0, -16(%rbp)	#, equiv1
	jne	.L273	#,
	.loc 1 1013 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, equiv2
	je	.L273	#,
	.loc 1 1014 0 is_stmt 1
	movq	-8(%rbp), %rdx	# equiv2, tmp136
	movq	-56(%rbp), %rax	# i2, tmp137
	movq	%rdx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	remove_note	#
	jmp	.L272	#
.L273:
	.loc 1 1015 0
	cmpq	$0, -16(%rbp)	#, equiv1
	je	.L272	#,
	.loc 1 1015 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, equiv2
	je	.L272	#,
	.loc 1 1016 0 is_stmt 1
	movq	-8(%rbp), %rax	# equiv2, tmp138
	movq	8(%rax), %rdx	# equiv2_55->fld[0].rtx, D.13111
	movq	-16(%rbp), %rax	# equiv1, tmp139
	movq	8(%rax), %rax	# equiv1_54->fld[0].rtx, D.13111
	movq	%rdx, %rsi	# D.13111,
	movq	%rax, %rdi	# D.13111,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.13110
	jne	.L272	#,
	.loc 1 1018 0
	movq	-16(%rbp), %rdx	# equiv1, tmp140
	movq	-64(%rbp), %rax	# i1, tmp141
	movq	%rdx, %rsi	# tmp140,
	movq	%rax, %rdi	# tmp141,
	call	remove_note	#
	.loc 1 1019 0
	movq	-8(%rbp), %rdx	# equiv2, tmp142
	movq	-56(%rbp), %rax	# i2, tmp143
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# tmp143,
	call	remove_note	#
.L272:
	.loc 1 1022 0
	movq	-48(%rbp), %rax	# last1, tmp144
	movq	%rax, -24(%rbp)	# tmp144, afterlast1
	movq	-40(%rbp), %rax	# last2, tmp145
	movq	%rax, -32(%rbp)	# tmp145, afterlast2
	.loc 1 1023 0
	movq	-64(%rbp), %rax	# i1, tmp146
	movq	%rax, -48(%rbp)	# tmp146, last1
	movq	-56(%rbp), %rax	# i2, tmp147
	movq	%rax, -40(%rbp)	# tmp147, last2
	.loc 1 1024 0
	addl	$1, -68(%rbp)	#, ninsns
.L270:
.LBE23:
	.loc 1 1027 0
	movq	-64(%rbp), %rax	# i1, tmp148
	movq	16(%rax), %rax	# i1_3->fld[1].rtx, tmp149
	movq	%rax, -64(%rbp)	# tmp149, i1
	.loc 1 1028 0
	movq	-56(%rbp), %rax	# i2, tmp150
	movq	16(%rax), %rax	# i2_5->fld[1].rtx, tmp151
	movq	%rax, -56(%rbp)	# tmp151, i2
	.loc 1 1029 0
	jmp	.L260	#
.L268:
	.loc 1 1041 0
	cmpl	$0, -68(%rbp)	#, ninsns
	je	.L274	#,
	.loc 1 1043 0
	jmp	.L275	#
.L277:
	.loc 1 1044 0
	movq	-48(%rbp), %rax	# last1, tmp152
	movq	16(%rax), %rax	# last1_9->fld[1].rtx, tmp153
	movq	%rax, -48(%rbp)	# tmp153, last1
.L275:
	.loc 1 1043 0 discriminator 1
	movq	-96(%rbp), %rax	# bb1, tmp154
	movq	(%rax), %rax	# bb1_19(D)->head, D.13111
	cmpq	-48(%rbp), %rax	# last1, D.13111
	je	.L276	#,
	.loc 1 1043 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# last1, tmp155
	movq	16(%rax), %rax	# last1_9->fld[1].rtx, D.13111
	movq	%rax, %rdi	# D.13111,
	call	active_insn_p	#
	testl	%eax, %eax	# D.13110
	je	.L277	#,
.L276:
	.loc 1 1046 0 is_stmt 1
	movq	-96(%rbp), %rax	# bb1, tmp156
	movq	(%rax), %rax	# bb1_19(D)->head, D.13111
	cmpq	-48(%rbp), %rax	# last1, D.13111
	je	.L278	#,
	.loc 1 1046 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# last1, tmp157
	movq	16(%rax), %rax	# last1_9->fld[1].rtx, D.13111
	movzwl	(%rax), %eax	# _71->code, D.13113
	cmpw	$36, %ax	#, D.13113
	jne	.L278	#,
	.loc 1 1047 0 is_stmt 1
	movq	-48(%rbp), %rax	# last1, tmp158
	movq	16(%rax), %rax	# last1_9->fld[1].rtx, tmp159
	movq	%rax, -48(%rbp)	# tmp159, last1
	.loc 1 1049 0
	jmp	.L279	#
.L278:
	jmp	.L279	#
.L281:
	.loc 1 1050 0
	movq	-40(%rbp), %rax	# last2, tmp160
	movq	16(%rax), %rax	# last2_13->fld[1].rtx, tmp161
	movq	%rax, -40(%rbp)	# tmp161, last2
.L279:
	.loc 1 1049 0 discriminator 1
	movq	-104(%rbp), %rax	# bb2, tmp162
	movq	(%rax), %rax	# bb2_31(D)->head, D.13111
	cmpq	-40(%rbp), %rax	# last2, D.13111
	je	.L280	#,
	.loc 1 1049 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# last2, tmp163
	movq	16(%rax), %rax	# last2_13->fld[1].rtx, D.13111
	movq	%rax, %rdi	# D.13111,
	call	active_insn_p	#
	testl	%eax, %eax	# D.13110
	je	.L281	#,
.L280:
	.loc 1 1052 0 is_stmt 1
	movq	-104(%rbp), %rax	# bb2, tmp164
	movq	(%rax), %rax	# bb2_31(D)->head, D.13111
	cmpq	-40(%rbp), %rax	# last2, D.13111
	je	.L282	#,
	.loc 1 1052 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# last2, tmp165
	movq	16(%rax), %rax	# last2_13->fld[1].rtx, D.13111
	movzwl	(%rax), %eax	# _79->code, D.13113
	cmpw	$36, %ax	#, D.13113
	jne	.L282	#,
	.loc 1 1053 0 is_stmt 1
	movq	-40(%rbp), %rax	# last2, tmp166
	movq	16(%rax), %rax	# last2_13->fld[1].rtx, tmp167
	movq	%rax, -40(%rbp)	# tmp167, last2
.L282:
	.loc 1 1055 0
	movq	-112(%rbp), %rax	# f1, tmp168
	movq	-48(%rbp), %rdx	# last1, tmp169
	movq	%rdx, (%rax)	# tmp169, *f1_82(D)
	.loc 1 1056 0
	movq	-120(%rbp), %rax	# f2, tmp170
	movq	-40(%rbp), %rdx	# last2, tmp171
	movq	%rdx, (%rax)	# tmp171, *f2_83(D)
.L274:
	.loc 1 1059 0
	movl	-68(%rbp), %eax	# ninsns, D.13110
	.loc 1 1060 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	flow_find_cross_jump, .-flow_find_cross_jump
	.section	.rodata
	.align 8
.LC8:
	.string	"Outcomes of branch in bb %i and %i differs to much (%i %i)\n"
	.align 8
.LC9:
	.string	"Conditionals in bb %i and %i match.\n"
	.text
	.type	outgoing_edges_match, @function
outgoing_edges_match:
.LFB15:
	.loc 1 1073 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movl	%edi, -164(%rbp)	# mode, mode
	movq	%rsi, -176(%rbp)	# bb1, bb1
	movq	%rdx, -184(%rbp)	# bb2, bb2
	.loc 1 1074 0
	movl	$0, -148(%rbp)	#, nehedges1
	movl	$0, -144(%rbp)	#, nehedges2
	.loc 1 1075 0
	movq	$0, -128(%rbp)	#, fallthru1
	movq	$0, -120(%rbp)	#, fallthru2
	.loc 1 1080 0
	movq	-176(%rbp), %rax	# bb1, tmp237
	movq	40(%rax), %rax	# bb1_30(D)->succ, D.13115
	testq	%rax, %rax	# D.13115
	je	.L285	#,
	.loc 1 1080 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# bb1, tmp238
	movq	40(%rax), %rax	# bb1_30(D)->succ, D.13115
	movq	8(%rax), %rax	# _32->succ_next, D.13115
	testq	%rax, %rax	# D.13115
	jne	.L285	#,
	.loc 1 1081 0 is_stmt 1
	movq	-176(%rbp), %rax	# bb1, tmp239
	movq	40(%rax), %rax	# bb1_30(D)->succ, D.13115
	movl	48(%rax), %eax	# _34->flags, D.13116
	andl	$30, %eax	#, D.13116
	testl	%eax, %eax	# D.13116
	jne	.L285	#,
	.loc 1 1082 0
	movq	-184(%rbp), %rax	# bb2, tmp240
	movq	40(%rax), %rax	# bb2_37(D)->succ, D.13115
	.loc 1 1083 0
	testq	%rax, %rax	# D.13115
	je	.L286	#,
	.loc 1 1082 0
	movq	-184(%rbp), %rax	# bb2, tmp241
	movq	40(%rax), %rax	# bb2_37(D)->succ, D.13115
	movq	8(%rax), %rax	# _39->succ_next, D.13115
	testq	%rax, %rax	# D.13115
	jne	.L286	#,
	.loc 1 1083 0
	movq	-184(%rbp), %rax	# bb2, tmp242
	movq	40(%rax), %rax	# bb2_37(D)->succ, D.13115
	movl	48(%rax), %eax	# _41->flags, D.13116
	andl	$30, %eax	#, D.13116
	testl	%eax, %eax	# D.13116
	jne	.L286	#,
	.loc 1 1083 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.61
	jmp	.L287	#
.L286:
	.loc 1 1083 0 discriminator 1
	movl	$0, %eax	#, iftmp.61
.L287:
	.loc 1 1082 0 is_stmt 1
	andl	$1, %eax	#, D.13114
	jmp	.L288	#
.L285:
	.loc 1 1087 0
	movq	-176(%rbp), %rax	# bb1, tmp243
	movq	40(%rax), %rax	# bb1_30(D)->succ, D.13115
	testq	%rax, %rax	# D.13115
	je	.L289	#,
	.loc 1 1088 0
	movq	-176(%rbp), %rax	# bb1, tmp244
	movq	40(%rax), %rax	# bb1_30(D)->succ, D.13115
	movq	8(%rax), %rax	# _48->succ_next, D.13115
	testq	%rax, %rax	# D.13115
	je	.L289	#,
	.loc 1 1089 0
	movq	-176(%rbp), %rax	# bb1, tmp245
	movq	40(%rax), %rax	# bb1_30(D)->succ, D.13115
	movq	8(%rax), %rax	# _50->succ_next, D.13115
	movq	8(%rax), %rax	# _51->succ_next, D.13115
	testq	%rax, %rax	# D.13115
	jne	.L289	#,
	.loc 1 1090 0
	movq	-176(%rbp), %rax	# bb1, tmp246
	movq	8(%rax), %rax	# bb1_30(D)->end, D.13117
	movq	%rax, %rdi	# D.13117,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.13116
	je	.L289	#,
	.loc 1 1091 0
	movq	-176(%rbp), %rax	# bb1, tmp247
	movq	8(%rax), %rax	# bb1_30(D)->end, D.13117
	movq	%rax, %rdi	# D.13117,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.13116
	je	.L289	#,
.LBB24:
	.loc 1 1098 0
	movq	-184(%rbp), %rax	# bb2, tmp248
	movq	40(%rax), %rax	# bb2_37(D)->succ, D.13115
	testq	%rax, %rax	# D.13115
	je	.L290	#,
	.loc 1 1099 0
	movq	-184(%rbp), %rax	# bb2, tmp249
	movq	40(%rax), %rax	# bb2_37(D)->succ, D.13115
	movq	8(%rax), %rax	# _58->succ_next, D.13115
	testq	%rax, %rax	# D.13115
	je	.L290	#,
	.loc 1 1100 0
	movq	-184(%rbp), %rax	# bb2, tmp250
	movq	40(%rax), %rax	# bb2_37(D)->succ, D.13115
	movq	8(%rax), %rax	# _60->succ_next, D.13115
	movq	8(%rax), %rax	# _61->succ_next, D.13115
	testq	%rax, %rax	# D.13115
	jne	.L290	#,
	.loc 1 1101 0
	movq	-184(%rbp), %rax	# bb2, tmp251
	movq	8(%rax), %rax	# bb2_37(D)->end, D.13117
	movq	%rax, %rdi	# D.13117,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.13116
	je	.L290	#,
	.loc 1 1102 0
	movq	-184(%rbp), %rax	# bb2, tmp252
	movq	8(%rax), %rax	# bb2_37(D)->end, D.13117
	movq	%rax, %rdi	# D.13117,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.13116
	jne	.L291	#,
.L290:
	.loc 1 1103 0
	movl	$0, %eax	#, D.13114
	jmp	.L288	#
.L291:
	.loc 1 1113 0
	movq	-176(%rbp), %rax	# bb1, tmp253
	movl	92(%rax), %edx	# bb1_30(D)->loop_depth, D.13116
	movq	-184(%rbp), %rax	# bb2, tmp254
	movl	92(%rax), %eax	# bb2_37(D)->loop_depth, D.13116
	cmpl	%eax, %edx	# D.13116, D.13116
	je	.L292	#,
	.loc 1 1114 0
	movl	$0, %eax	#, D.13114
	jmp	.L288	#
.L292:
	.loc 1 1116 0
	movq	-176(%rbp), %rax	# bb1, tmp255
	movq	40(%rax), %rax	# bb1_30(D)->succ, D.13115
	movl	48(%rax), %eax	# _70->flags, D.13116
	andl	$1, %eax	#, D.13116
	testl	%eax, %eax	# D.13116
	je	.L293	#,
	.loc 1 1116 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# bb1, tmp256
	movq	40(%rax), %rax	# bb1_30(D)->succ, D.13115
	movq	8(%rax), %rax	# _73->succ_next, iftmp.62
	jmp	.L294	#
.L293:
	.loc 1 1116 0 discriminator 2
	movq	-176(%rbp), %rax	# bb1, tmp257
	movq	40(%rax), %rax	# bb1_30(D)->succ, iftmp.62
.L294:
	.loc 1 1116 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.62, b1
	.loc 1 1117 0 is_stmt 1 discriminator 3
	movq	-184(%rbp), %rax	# bb2, tmp258
	movq	40(%rax), %rax	# bb2_37(D)->succ, D.13115
	movl	48(%rax), %eax	# _77->flags, D.13116
	andl	$1, %eax	#, D.13116
	testl	%eax, %eax	# D.13116
	je	.L295	#,
	.loc 1 1117 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# bb2, tmp259
	movq	40(%rax), %rax	# bb2_37(D)->succ, D.13115
	movq	8(%rax), %rax	# _80->succ_next, iftmp.63
	jmp	.L296	#
.L295:
	.loc 1 1117 0 discriminator 2
	movq	-184(%rbp), %rax	# bb2, tmp260
	movq	40(%rax), %rax	# bb2_37(D)->succ, iftmp.63
.L296:
	.loc 1 1117 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.63, b2
	.loc 1 1118 0 is_stmt 1 discriminator 3
	movq	-176(%rbp), %rax	# bb1, tmp261
	movq	40(%rax), %rax	# bb1_30(D)->succ, D.13115
	movl	48(%rax), %eax	# _84->flags, D.13116
	andl	$1, %eax	#, D.13116
	testl	%eax, %eax	# D.13116
	je	.L297	#,
	.loc 1 1118 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# bb1, tmp262
	movq	40(%rax), %rax	# bb1_30(D)->succ, iftmp.64
	jmp	.L298	#
.L297:
	.loc 1 1118 0 discriminator 2
	movq	-176(%rbp), %rax	# bb1, tmp263
	movq	40(%rax), %rax	# bb1_30(D)->succ, D.13115
	movq	8(%rax), %rax	# _88->succ_next, iftmp.64
.L298:
	.loc 1 1118 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.64, f1
	.loc 1 1119 0 is_stmt 1 discriminator 3
	movq	-184(%rbp), %rax	# bb2, tmp264
	movq	40(%rax), %rax	# bb2_37(D)->succ, D.13115
	movl	48(%rax), %eax	# _91->flags, D.13116
	andl	$1, %eax	#, D.13116
	testl	%eax, %eax	# D.13116
	je	.L299	#,
	.loc 1 1119 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# bb2, tmp265
	movq	40(%rax), %rax	# bb2_37(D)->succ, iftmp.65
	jmp	.L300	#
.L299:
	.loc 1 1119 0 discriminator 2
	movq	-184(%rbp), %rax	# bb2, tmp266
	movq	40(%rax), %rax	# bb2_37(D)->succ, D.13115
	movq	8(%rax), %rax	# _95->succ_next, iftmp.65
.L300:
	.loc 1 1119 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.65, f2
	.loc 1 1123 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# f1, tmp267
	movq	24(%rax), %rax	# f1_90->dest, D.13118
	movq	80(%rax), %rax	# _98->aux, D.13119
	andl	$2, %eax	#, D.13121
	testl	%eax, %eax	# D.13121
	je	.L301	#,
	.loc 1 1124 0
	movq	-96(%rbp), %rax	# f1, tmp268
	movq	24(%rax), %rax	# f1_90->dest, D.13118
	movq	40(%rax), %rax	# _103->succ, tmp269
	movq	%rax, -96(%rbp)	# tmp269, f1
.L301:
	.loc 1 1126 0
	movq	-88(%rbp), %rax	# f2, tmp270
	movq	24(%rax), %rax	# f2_97->dest, D.13118
	movq	80(%rax), %rax	# _105->aux, D.13119
	andl	$2, %eax	#, D.13121
	testl	%eax, %eax	# D.13121
	je	.L302	#,
	.loc 1 1127 0
	movq	-88(%rbp), %rax	# f2, tmp271
	movq	24(%rax), %rax	# f2_97->dest, D.13118
	movq	40(%rax), %rax	# _110->succ, tmp272
	movq	%rax, -88(%rbp)	# tmp272, f2
.L302:
	.loc 1 1132 0
	movq	-96(%rbp), %rax	# f1, tmp273
	movq	24(%rax), %rax	# f1_11->dest, D.13118
	movq	80(%rax), %rax	# _112->aux, D.13119
	andl	$2, %eax	#, D.13121
	testl	%eax, %eax	# D.13121
	jne	.L303	#,
	.loc 1 1133 0
	movq	-88(%rbp), %rax	# f2, tmp274
	movq	24(%rax), %rax	# f2_12->dest, D.13118
	movq	80(%rax), %rax	# _117->aux, D.13119
	andl	$2, %eax	#, D.13121
	testl	%eax, %eax	# D.13121
	jne	.L303	#,
	.loc 1 1134 0
	movq	-80(%rbp), %rax	# b1, tmp275
	movq	24(%rax), %rax	# b1_76->dest, D.13118
	movq	80(%rax), %rax	# _122->aux, D.13119
	andl	$2, %eax	#, D.13121
	testl	%eax, %eax	# D.13121
	jne	.L303	#,
	.loc 1 1135 0
	movq	-72(%rbp), %rax	# b2, tmp276
	movq	24(%rax), %rax	# b2_83->dest, D.13118
	movq	80(%rax), %rax	# _127->aux, D.13119
	andl	$2, %eax	#, D.13121
	testl	%eax, %eax	# D.13121
	je	.L304	#,
.L303:
	.loc 1 1136 0
	movl	$0, %eax	#, D.13114
	jmp	.L288	#
.L304:
	.loc 1 1138 0
	movq	-96(%rbp), %rax	# f1, tmp277
	movq	24(%rax), %rdx	# f1_11->dest, D.13118
	movq	-88(%rbp), %rax	# f2, tmp278
	movq	24(%rax), %rax	# f2_12->dest, D.13118
	cmpq	%rax, %rdx	# D.13118, D.13118
	jne	.L305	#,
	.loc 1 1138 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# b1, tmp279
	movq	24(%rax), %rdx	# b1_76->dest, D.13118
	movq	-72(%rbp), %rax	# b2, tmp280
	movq	24(%rax), %rax	# b2_83->dest, D.13118
	cmpq	%rax, %rdx	# D.13118, D.13118
	jne	.L305	#,
	.loc 1 1139 0 is_stmt 1
	movb	$0, -150(%rbp)	#, reverse
	jmp	.L306	#
.L305:
	.loc 1 1140 0
	movq	-96(%rbp), %rax	# f1, tmp281
	movq	24(%rax), %rdx	# f1_11->dest, D.13118
	movq	-72(%rbp), %rax	# b2, tmp282
	movq	24(%rax), %rax	# b2_83->dest, D.13118
	cmpq	%rax, %rdx	# D.13118, D.13118
	jne	.L307	#,
	.loc 1 1140 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# b1, tmp283
	movq	24(%rax), %rdx	# b1_76->dest, D.13118
	movq	-88(%rbp), %rax	# f2, tmp284
	movq	24(%rax), %rax	# f2_12->dest, D.13118
	cmpq	%rax, %rdx	# D.13118, D.13118
	jne	.L307	#,
	.loc 1 1141 0 is_stmt 1
	movb	$1, -150(%rbp)	#, reverse
	jmp	.L306	#
.L307:
	.loc 1 1143 0
	movl	$0, %eax	#, D.13114
	jmp	.L288	#
.L306:
	.loc 1 1145 0
	movq	-176(%rbp), %rax	# bb1, tmp285
	movq	8(%rax), %rax	# bb1_30(D)->end, D.13117
	movq	%rax, %rdi	# D.13117,
	call	pc_set	#
	movq	%rax, -64(%rbp)	# tmp286, set1
	.loc 1 1146 0
	movq	-184(%rbp), %rax	# bb2, tmp287
	movq	8(%rax), %rax	# bb2_37(D)->end, D.13117
	movq	%rax, %rdi	# D.13117,
	call	pc_set	#
	movq	%rax, -56(%rbp)	# tmp288, set2
	.loc 1 1147 0
	movq	-64(%rbp), %rax	# set1, tmp289
	movq	16(%rax), %rax	# set1_144->fld[1].rtx, D.13117
	movq	16(%rax), %rdx	# _147->fld[1].rtx, D.13117
	movq	global_rtl(%rip), %rax	# global_rtl, D.13117
	.loc 1 1148 0
	cmpq	%rax, %rdx	# D.13117, D.13117
	sete	%cl	#, D.13114
	movq	-56(%rbp), %rax	# set2, tmp290
	movq	16(%rax), %rax	# set2_146->fld[1].rtx, D.13117
	movq	16(%rax), %rdx	# _151->fld[1].rtx, D.13117
	movq	global_rtl(%rip), %rax	# global_rtl, D.13117
	cmpq	%rax, %rdx	# D.13117, D.13117
	sete	%al	#, D.13114
	xorl	%ecx, %eax	# D.13114, D.13114
	.loc 1 1147 0
	testb	%al, %al	# D.13114
	je	.L308	#,
	.loc 1 1149 0
	movzbl	-150(%rbp), %eax	# reverse, D.13116
	testl	%eax, %eax	# D.13116
	setne	%al	#, D.13114
	xorl	$1, %eax	#, D.13114
	movzbl	%al, %eax	# D.13114, D.13116
	movb	%al, -150(%rbp)	# D.13116, reverse
	andb	$1, -150(%rbp)	#, reverse
.L308:
	.loc 1 1151 0
	movq	-64(%rbp), %rax	# set1, tmp291
	movq	16(%rax), %rax	# set1_144->fld[1].rtx, D.13117
	movq	8(%rax), %rax	# _161->fld[0].rtx, tmp292
	movq	%rax, -48(%rbp)	# tmp292, cond1
	.loc 1 1152 0
	movq	-56(%rbp), %rax	# set2, tmp293
	movq	16(%rax), %rax	# set2_146->fld[1].rtx, D.13117
	movq	8(%rax), %rax	# _163->fld[0].rtx, tmp294
	movq	%rax, -40(%rbp)	# tmp294, cond2
	.loc 1 1153 0
	movq	-48(%rbp), %rax	# cond1, tmp295
	movzwl	(%rax), %eax	# cond1_162->code, D.13122
	movzwl	%ax, %eax	# D.13122, tmp296
	movl	%eax, -132(%rbp)	# tmp296, code1
	.loc 1 1154 0
	cmpb	$0, -150(%rbp)	#, reverse
	je	.L309	#,
	.loc 1 1155 0
	movq	-184(%rbp), %rax	# bb2, tmp297
	movq	8(%rax), %rdx	# bb2_37(D)->end, D.13117
	movq	-40(%rbp), %rax	# cond2, tmp298
	movq	%rdx, %rsi	# D.13117,
	movq	%rax, %rdi	# tmp298,
	call	reversed_comparison_code	#
	movl	%eax, -140(%rbp)	# tmp299, code2
	jmp	.L310	#
.L309:
	.loc 1 1157 0
	movq	-40(%rbp), %rax	# cond2, tmp300
	movzwl	(%rax), %eax	# cond2_164->code, D.13122
	movzwl	%ax, %eax	# D.13122, tmp301
	movl	%eax, -140(%rbp)	# tmp301, code2
.L310:
	.loc 1 1159 0
	cmpl	$0, -140(%rbp)	#, code2
	jne	.L311	#,
	.loc 1 1160 0
	movl	$0, %eax	#, D.13114
	jmp	.L288	#
.L311:
	.loc 1 1166 0
	movl	-132(%rbp), %eax	# code1, tmp302
	cmpl	-140(%rbp), %eax	# code2, tmp302
	jne	.L312	#,
	.loc 1 1164 0
	movq	-40(%rbp), %rax	# cond2, tmp303
	movq	8(%rax), %rdx	# cond2_164->fld[0].rtx, D.13117
	movq	-48(%rbp), %rax	# cond1, tmp304
	movq	8(%rax), %rax	# cond1_162->fld[0].rtx, D.13117
	movq	%rdx, %rsi	# D.13117,
	movq	%rax, %rdi	# D.13117,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13116
	je	.L312	#,
	.loc 1 1165 0
	movq	-40(%rbp), %rax	# cond2, tmp305
	movq	16(%rax), %rdx	# cond2_164->fld[1].rtx, D.13117
	movq	-48(%rbp), %rax	# cond1, tmp306
	movq	16(%rax), %rax	# cond1_162->fld[1].rtx, D.13117
	movq	%rdx, %rsi	# D.13117,
	movq	%rax, %rdi	# D.13117,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13116
	jne	.L313	#,
.L312:
	.loc 1 1166 0 discriminator 1
	movl	-140(%rbp), %eax	# code2, tmp307
	movl	%eax, %edi	# tmp307,
	call	swap_condition	#
	cmpl	-132(%rbp), %eax	# code1, D.13123
	jne	.L314	#,
	.loc 1 1167 0
	movq	-40(%rbp), %rax	# cond2, tmp308
	movq	8(%rax), %rdx	# cond2_164->fld[0].rtx, D.13117
	movq	-48(%rbp), %rax	# cond1, tmp309
	movq	16(%rax), %rax	# cond1_162->fld[1].rtx, D.13117
	movq	%rdx, %rsi	# D.13117,
	movq	%rax, %rdi	# D.13117,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13116
	je	.L314	#,
	.loc 1 1169 0
	movq	-40(%rbp), %rax	# cond2, tmp310
	movq	16(%rax), %rdx	# cond2_164->fld[1].rtx, D.13117
	movq	-48(%rbp), %rax	# cond1, tmp311
	movq	8(%rax), %rax	# cond1_162->fld[0].rtx, D.13117
	movq	%rdx, %rsi	# D.13117,
	movq	%rax, %rdi	# D.13117,
	call	rtx_renumbered_equal_p	#
	testl	%eax, %eax	# D.13116
	je	.L314	#,
.L313:
	.loc 1 1166 0
	movl	$1, %eax	#, iftmp.66
	jmp	.L315	#
.L314:
	.loc 1 1166 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.66
.L315:
	.loc 1 1163 0 is_stmt 1
	movb	%al, -149(%rbp)	# iftmp.66, match
	andb	$1, -149(%rbp)	#, match
	.loc 1 1176 0
	cmpb	$0, -149(%rbp)	#, match
	je	.L316	#,
	.loc 1 1177 0
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.67
	testl	%eax, %eax	# optimize_size.67
	jne	.L316	#,
	.loc 1 1178 0
	movq	-176(%rbp), %rax	# bb1, tmp312
	movl	104(%rax), %eax	# bb1_30(D)->frequency, D.13116
	cmpl	$10, %eax	#, D.13116
	jle	.L316	#,
	.loc 1 1179 0
	movq	-184(%rbp), %rax	# bb2, tmp313
	movl	104(%rax), %eax	# bb2_37(D)->frequency, D.13116
	cmpl	$10, %eax	#, D.13116
	jle	.L316	#,
.LBB25:
	.loc 1 1183 0
	movq	-80(%rbp), %rax	# b1, tmp314
	movq	24(%rax), %rdx	# b1_76->dest, D.13118
	movq	-72(%rbp), %rax	# b2, tmp315
	movq	24(%rax), %rax	# b2_83->dest, D.13118
	cmpq	%rax, %rdx	# D.13118, D.13118
	jne	.L317	#,
	.loc 1 1184 0
	movq	-72(%rbp), %rax	# b2, tmp316
	movl	52(%rax), %eax	# b2_83->probability, tmp317
	movl	%eax, -136(%rbp)	# tmp317, prob2
	jmp	.L318	#
.L317:
	.loc 1 1187 0
	movq	-72(%rbp), %rax	# b2, tmp318
	movl	52(%rax), %eax	# b2_83->probability, D.13116
	movl	$10000, %edx	#, tmp319
	subl	%eax, %edx	# D.13116, tmp320
	movl	%edx, %eax	# tmp320, tmp320
	movl	%eax, -136(%rbp)	# tmp320, prob2
.L318:
	.loc 1 1192 0
	movq	-80(%rbp), %rax	# b1, tmp321
	movl	52(%rax), %eax	# b1_76->probability, D.13116
	subl	-136(%rbp), %eax	# prob2, D.13116
	cltd
	xorl	%edx, %eax	# tmp322, D.13116
	subl	%edx, %eax	# tmp322, D.13116
	cmpl	$5000, %eax	#, D.13116
	jle	.L316	#,
	.loc 1 1194 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.68
	testq	%rax, %rax	# rtl_dump_file.68
	je	.L319	#,
	.loc 1 1195 0
	movq	-80(%rbp), %rax	# b1, tmp323
	movl	52(%rax), %esi	# b1_76->probability, D.13116
	movq	-184(%rbp), %rax	# bb2, tmp324
	movl	88(%rax), %ecx	# bb2_37(D)->index, D.13116
	movq	-176(%rbp), %rax	# bb1, tmp325
	movl	88(%rax), %edx	# bb1_30(D)->index, D.13116
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.69
	movl	-136(%rbp), %edi	# prob2, tmp326
	movl	%edi, %r9d	# tmp326,
	movl	%esi, %r8d	# D.13116,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.69,
	movl	$0, %eax	#,
	call	fprintf	#
.L319:
	.loc 1 1199 0
	movl	$0, %eax	#, D.13114
	jmp	.L288	#
.L316:
.LBE25:
	.loc 1 1203 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.70
	testq	%rax, %rax	# rtl_dump_file.70
	je	.L320	#,
	.loc 1 1203 0 is_stmt 0 discriminator 1
	cmpb	$0, -149(%rbp)	#, match
	je	.L320	#,
	.loc 1 1204 0 is_stmt 1
	movq	-184(%rbp), %rax	# bb2, tmp327
	movl	88(%rax), %ecx	# bb2_37(D)->index, D.13116
	movq	-176(%rbp), %rax	# bb1, tmp328
	movl	88(%rax), %edx	# bb1_30(D)->index, D.13116
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.71
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.71,
	movl	$0, %eax	#,
	call	fprintf	#
.L320:
	.loc 1 1207 0
	movzbl	-149(%rbp), %eax	# match, D.13114
	jmp	.L288	#
.L289:
.LBE24:
	.loc 1 1217 0
	movq	-184(%rbp), %rax	# bb2, tmp329
	movq	8(%rax), %rdx	# bb2_37(D)->end, D.13117
	movq	-176(%rbp), %rax	# bb1, tmp330
	movq	8(%rax), %rcx	# bb1_30(D)->end, D.13117
	movl	-164(%rbp), %eax	# mode, tmp331
	movq	%rcx, %rsi	# D.13117,
	movl	%eax, %edi	# tmp331,
	call	insns_match_p	#
	xorl	$1, %eax	#, D.13114
	testb	%al, %al	# D.13114
	je	.L321	#,
	.loc 1 1218 0
	movl	$0, %eax	#, D.13114
	jmp	.L288	#
.L321:
	.loc 1 1223 0
	movq	-176(%rbp), %rax	# bb1, tmp332
	movq	40(%rax), %rax	# bb1_30(D)->succ, tmp333
	movq	%rax, -112(%rbp)	# tmp333, e1
	movq	-184(%rbp), %rax	# bb2, tmp334
	movq	40(%rax), %rax	# bb2_37(D)->succ, tmp335
	movq	%rax, -104(%rbp)	# tmp335, e2
	jmp	.L322	#
.L328:
	.loc 1 1226 0
	movq	-112(%rbp), %rax	# e1, tmp336
	movl	48(%rax), %eax	# e1_9->flags, D.13116
	andl	$8, %eax	#, D.13116
	testl	%eax, %eax	# D.13116
	je	.L323	#,
	.loc 1 1227 0
	addl	$1, -148(%rbp)	#, nehedges1
.L323:
	.loc 1 1229 0
	movq	-104(%rbp), %rax	# e2, tmp337
	movl	48(%rax), %eax	# e2_10->flags, D.13116
	andl	$8, %eax	#, D.13116
	testl	%eax, %eax	# D.13116
	je	.L324	#,
	.loc 1 1230 0
	addl	$1, -144(%rbp)	#, nehedges2
.L324:
	.loc 1 1232 0
	movq	-112(%rbp), %rax	# e1, tmp338
	movl	48(%rax), %eax	# e1_9->flags, D.13116
	andl	$1, %eax	#, D.13116
	testl	%eax, %eax	# D.13116
	je	.L325	#,
	.loc 1 1233 0
	movq	-112(%rbp), %rax	# e1, tmp339
	movq	%rax, -128(%rbp)	# tmp339, fallthru1
.L325:
	.loc 1 1234 0
	movq	-104(%rbp), %rax	# e2, tmp340
	movl	48(%rax), %eax	# e2_10->flags, D.13116
	andl	$1, %eax	#, D.13116
	testl	%eax, %eax	# D.13116
	je	.L326	#,
	.loc 1 1235 0
	movq	-104(%rbp), %rax	# e2, tmp341
	movq	%rax, -120(%rbp)	# tmp341, fallthru2
.L326:
	.loc 1 1224 0
	movq	-112(%rbp), %rax	# e1, tmp342
	movq	8(%rax), %rax	# e1_9->succ_next, tmp343
	movq	%rax, -112(%rbp)	# tmp343, e1
	movq	-104(%rbp), %rax	# e2, tmp344
	movq	8(%rax), %rax	# e2_10->succ_next, tmp345
	movq	%rax, -104(%rbp)	# tmp345, e2
.L322:
	.loc 1 1223 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, e1
	je	.L327	#,
	.loc 1 1223 0 is_stmt 0 discriminator 2
	cmpq	$0, -104(%rbp)	#, e2
	jne	.L328	#,
.L327:
	.loc 1 1239 0 is_stmt 1
	cmpq	$0, -112(%rbp)	#, e1
	jne	.L329	#,
	.loc 1 1239 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, e2
	jne	.L329	#,
	.loc 1 1240 0 is_stmt 1
	movl	-148(%rbp), %eax	# nehedges1, tmp346
	cmpl	-144(%rbp), %eax	# nehedges2, tmp346
	jne	.L329	#,
	.loc 1 1241 0
	cmpq	$0, -128(%rbp)	#, fallthru1
	setne	%dl	#, D.13114
	cmpq	$0, -120(%rbp)	#, fallthru2
	setne	%al	#, D.13114
	xorl	%edx, %eax	# D.13114, D.13114
	testb	%al, %al	# D.13114
	je	.L330	#,
.L329:
	.loc 1 1242 0
	movl	$0, %eax	#, D.13114
	jmp	.L288	#
.L330:
	.loc 1 1245 0
	cmpq	$0, -128(%rbp)	#, fallthru1
	je	.L331	#,
.LBB26:
	.loc 1 1247 0
	movq	-128(%rbp), %rax	# fallthru1, tmp347
	movq	24(%rax), %rax	# fallthru1_6->dest, D.13118
	movq	%rax, %rdi	# D.13118,
	call	forwarder_block_p	#
	.loc 1 1248 0
	testb	%al, %al	# D.13114
	je	.L332	#,
	.loc 1 1248 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# fallthru1, tmp348
	movq	24(%rax), %rax	# fallthru1_6->dest, D.13118
	movq	40(%rax), %rax	# _239->succ, D.13115
	movq	24(%rax), %rax	# _240->dest, iftmp.72
	jmp	.L333	#
.L332:
	.loc 1 1248 0 discriminator 2
	movq	-128(%rbp), %rax	# fallthru1, tmp349
	movq	24(%rax), %rax	# fallthru1_6->dest, iftmp.72
.L333:
	.loc 1 1247 0 is_stmt 1
	movq	%rax, -32(%rbp)	# iftmp.72, d1
	.loc 1 1249 0
	movq	-120(%rbp), %rax	# fallthru2, tmp350
	movq	24(%rax), %rax	# fallthru2_8->dest, D.13118
	movq	%rax, %rdi	# D.13118,
	call	forwarder_block_p	#
	.loc 1 1250 0
	testb	%al, %al	# D.13114
	je	.L334	#,
	.loc 1 1250 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# fallthru2, tmp351
	movq	24(%rax), %rax	# fallthru2_8->dest, D.13118
	movq	40(%rax), %rax	# _246->succ, D.13115
	movq	24(%rax), %rax	# _247->dest, iftmp.73
	jmp	.L335	#
.L334:
	.loc 1 1250 0 discriminator 2
	movq	-120(%rbp), %rax	# fallthru2, tmp352
	movq	24(%rax), %rax	# fallthru2_8->dest, iftmp.73
.L335:
	.loc 1 1249 0 is_stmt 1
	movq	%rax, -24(%rbp)	# iftmp.73, d2
	.loc 1 1252 0
	movq	-32(%rbp), %rax	# d1, tmp353
	cmpq	-24(%rbp), %rax	# d2, tmp353
	je	.L331	#,
	.loc 1 1253 0
	movl	$0, %eax	#, D.13114
	jmp	.L288	#
.L331:
.LBE26:
	.loc 1 1257 0
	cmpl	$0, -148(%rbp)	#, nehedges1
	je	.L336	#,
.LBB27:
	.loc 1 1259 0
	movq	-176(%rbp), %rax	# bb1, tmp354
	movq	8(%rax), %rax	# bb1_30(D)->end, D.13117
	movl	$0, %edx	#,
	movl	$23, %esi	#,
	movq	%rax, %rdi	# D.13117,
	call	find_reg_note	#
	movq	%rax, -16(%rbp)	# tmp355, n1
	.loc 1 1260 0
	movq	-184(%rbp), %rax	# bb2, tmp356
	movq	8(%rax), %rax	# bb2_37(D)->end, D.13117
	movl	$0, %edx	#,
	movl	$23, %esi	#,
	movq	%rax, %rdi	# D.13117,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp357, n2
	.loc 1 1262 0
	movq	-16(%rbp), %rax	# n1, tmp358
	movq	8(%rax), %rdx	# n1_253->fld[0].rtx, D.13117
	movq	-8(%rbp), %rax	# n2, tmp359
	movq	8(%rax), %rax	# n2_255->fld[0].rtx, D.13117
	cmpq	%rax, %rdx	# D.13117, D.13117
	je	.L336	#,
	.loc 1 1263 0
	movl	$0, %eax	#, D.13114
	jmp	.L288	#
.L336:
.LBE27:
	.loc 1 1268 0
	movl	$1, %eax	#, D.13114
.L288:
	.loc 1 1269 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	outgoing_edges_match, .-outgoing_edges_match
	.section	.rodata
	.align 8
.LC10:
	.string	"Splitting bb %i before %i insns\n"
	.align 8
.LC11:
	.string	"Cross jumping from bb %i to bb %i; %i common insns\n"
	.text
	.type	try_crossjump_to_edge, @function
try_crossjump_to_edge:
.LFB16:
	.loc 1 1279 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -116(%rbp)	# mode, mode
	movq	%rsi, -128(%rbp)	# e1, e1
	movq	%rdx, -136(%rbp)	# e2, e2
	.loc 1 1281 0
	movq	-128(%rbp), %rax	# e1, tmp237
	movq	16(%rax), %rax	# e1_11(D)->src, tmp238
	movq	%rax, -88(%rbp)	# tmp238, src1
	movq	-136(%rbp), %rax	# e2, tmp239
	movq	16(%rax), %rax	# e2_13(D)->src, tmp240
	movq	%rax, -80(%rbp)	# tmp240, src2
	.loc 1 1292 0
	movq	-88(%rbp), %rax	# src1, tmp241
	movq	32(%rax), %rax	# src1_12->pred, D.13127
	testq	%rax, %rax	# D.13127
	je	.L338	#,
	.loc 1 1293 0
	movq	-88(%rbp), %rax	# src1, tmp242
	movq	80(%rax), %rax	# src1_12->aux, D.13128
	andl	$2, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L338	#,
	.loc 1 1294 0
	movq	-88(%rbp), %rax	# src1, tmp243
	movq	32(%rax), %rax	# src1_12->pred, tmp244
	movq	%rax, -128(%rbp)	# tmp244, e1
	movq	-128(%rbp), %rax	# e1, tmp245
	movq	16(%rax), %rax	# e1_20->src, tmp246
	movq	%rax, -88(%rbp)	# tmp246, src1
.L338:
	.loc 1 1296 0
	movq	-80(%rbp), %rax	# src2, tmp247
	movq	32(%rax), %rax	# src2_14->pred, D.13127
	testq	%rax, %rax	# D.13127
	je	.L339	#,
	.loc 1 1297 0
	movq	-80(%rbp), %rax	# src2, tmp248
	movq	80(%rax), %rax	# src2_14->aux, D.13128
	andl	$2, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L339	#,
	.loc 1 1298 0
	movq	-80(%rbp), %rax	# src2, tmp249
	movq	32(%rax), %rax	# src2_14->pred, tmp250
	movq	%rax, -136(%rbp)	# tmp250, e2
	movq	-136(%rbp), %rax	# e2, tmp251
	movq	16(%rax), %rax	# e2_27->src, tmp252
	movq	%rax, -80(%rbp)	# tmp252, src2
.L339:
	.loc 1 1301 0
	cmpq	$entry_exit_blocks, -88(%rbp)	#, src1
	je	.L340	#,
	.loc 1 1301 0 is_stmt 0 discriminator 1
	cmpq	$entry_exit_blocks, -80(%rbp)	#, src2
	jne	.L341	#,
.L340:
	.loc 1 1302 0 is_stmt 1
	movl	$0, %eax	#, D.13126
	jmp	.L373	#
.L341:
	.loc 1 1303 0
	movq	-88(%rbp), %rax	# src1, tmp253
	cmpq	-80(%rbp), %rax	# src2, tmp253
	jne	.L343	#,
	.loc 1 1304 0
	movl	$0, %eax	#, D.13126
	jmp	.L373	#
.L343:
	.loc 1 1307 0
	movq	-128(%rbp), %rax	# e1, tmp254
	movq	24(%rax), %rax	# e1_1->dest, D.13131
	movq	80(%rax), %rax	# _30->aux, D.13128
	andl	$2, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L344	#,
	.loc 1 1308 0
	movq	-128(%rbp), %rax	# e1, tmp255
	movq	24(%rax), %rax	# e1_1->dest, D.13131
	movq	40(%rax), %rax	# _35->succ, D.13127
	movq	24(%rax), %rax	# _36->dest, D.13131
	movq	80(%rax), %rax	# _37->aux, D.13128
	andl	$2, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L344	#,
	.loc 1 1309 0
	movl	$0, %eax	#, D.13126
	jmp	.L373	#
.L344:
	.loc 1 1311 0
	movq	-136(%rbp), %rax	# e2, tmp256
	movq	24(%rax), %rax	# e2_2->dest, D.13131
	movq	80(%rax), %rax	# _43->aux, D.13128
	andl	$2, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L345	#,
	.loc 1 1312 0
	movq	-136(%rbp), %rax	# e2, tmp257
	movq	24(%rax), %rax	# e2_2->dest, D.13131
	movq	40(%rax), %rax	# _48->succ, D.13127
	movq	24(%rax), %rax	# _49->dest, D.13131
	movq	80(%rax), %rax	# _50->aux, D.13128
	andl	$2, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L345	#,
	.loc 1 1313 0
	movl	$0, %eax	#, D.13126
	jmp	.L373	#
.L345:
	.loc 1 1317 0
	movq	-88(%rbp), %rax	# src1, tmp258
	movq	32(%rax), %rax	# src1_3->pred, D.13127
	testq	%rax, %rax	# D.13127
	je	.L346	#,
	.loc 1 1317 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# src2, tmp259
	movq	32(%rax), %rax	# src2_4->pred, D.13127
	testq	%rax, %rax	# D.13127
	jne	.L347	#,
.L346:
	.loc 1 1318 0 is_stmt 1
	movl	$0, %eax	#, D.13126
	jmp	.L373	#
.L347:
	.loc 1 1321 0
	movq	-80(%rbp), %rdx	# src2, tmp260
	movq	-88(%rbp), %rcx	# src1, tmp261
	movl	-116(%rbp), %eax	# mode, tmp262
	movq	%rcx, %rsi	# tmp261,
	movl	%eax, %edi	# tmp262,
	call	outgoing_edges_match	#
	xorl	$1, %eax	#, D.13126
	testb	%al, %al	# D.13126
	je	.L348	#,
	.loc 1 1322 0
	movl	$0, %eax	#, D.13126
	jmp	.L373	#
.L348:
	.loc 1 1325 0
	leaq	-96(%rbp), %rdi	#, tmp263
	leaq	-104(%rbp), %rcx	#, tmp264
	movq	-80(%rbp), %rdx	# src2, tmp265
	movq	-88(%rbp), %rsi	# src1, tmp266
	movl	-116(%rbp), %eax	# mode, tmp267
	movq	%rdi, %r8	# tmp263,
	movl	%eax, %edi	# tmp267,
	call	flow_find_cross_jump	#
	movl	%eax, -108(%rbp)	# tmp268, nmatch
	.loc 1 1326 0
	cmpl	$0, -108(%rbp)	#, nmatch
	jne	.L349	#,
	.loc 1 1327 0
	movl	$0, %eax	#, D.13126
	jmp	.L373	#
.L349:
	.loc 1 1330 0
	movq	-80(%rbp), %rax	# src2, tmp269
	movq	(%rax), %rdx	# src2_4->head, D.13132
	movq	-96(%rbp), %rax	# newpos2, newpos2.74
	cmpq	%rax, %rdx	# newpos2.74, D.13132
	jne	.L350	#,
	.loc 1 1331 0
	movq	-80(%rbp), %rax	# src2, tmp270
	movq	%rax, -72(%rbp)	# tmp270, redirect_to
	jmp	.L351	#
.L350:
	.loc 1 1334 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.75
	testq	%rax, %rax	# rtl_dump_file.75
	je	.L352	#,
	.loc 1 1335 0
	movq	-80(%rbp), %rax	# src2, tmp271
	movl	88(%rax), %edx	# src2_4->index, D.13133
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.76
	movl	-108(%rbp), %ecx	# nmatch, tmp272
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.76,
	movl	$0, %eax	#,
	call	fprintf	#
.L352:
	.loc 1 1337 0
	movq	-96(%rbp), %rax	# newpos2, newpos2.77
	movq	16(%rax), %rdx	# newpos2.77_70->fld[1].rtx, D.13132
	movq	-80(%rbp), %rax	# src2, tmp273
	movq	%rdx, %rsi	# D.13132,
	movq	%rax, %rdi	# tmp273,
	call	split_block	#
	movq	24(%rax), %rax	# _72->dest, tmp274
	movq	%rax, -72(%rbp)	# tmp274, redirect_to
.L351:
	.loc 1 1340 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.78
	testq	%rax, %rax	# rtl_dump_file.78
	je	.L353	#,
	.loc 1 1341 0
	movq	-80(%rbp), %rax	# src2, tmp275
	movl	88(%rax), %ecx	# src2_4->index, D.13133
	movq	-88(%rbp), %rax	# src1, tmp276
	movl	88(%rax), %edx	# src1_3->index, D.13133
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.79
	movl	-108(%rbp), %esi	# nmatch, tmp277
	movl	%esi, %r8d	# tmp277,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.79,
	movl	$0, %eax	#,
	call	fprintf	#
.L353:
	.loc 1 1345 0
	movq	-72(%rbp), %rax	# redirect_to, tmp278
	movq	96(%rax), %rdx	# redirect_to_5->count, D.13129
	movq	-88(%rbp), %rax	# src1, tmp279
	movq	96(%rax), %rax	# src1_3->count, D.13129
	addq	%rax, %rdx	# D.13129, D.13129
	movq	-72(%rbp), %rax	# redirect_to, tmp280
	movq	%rdx, 96(%rax)	# D.13129, redirect_to_5->count
	.loc 1 1346 0
	movq	-72(%rbp), %rax	# redirect_to, tmp281
	movl	104(%rax), %edx	# redirect_to_5->frequency, D.13133
	movq	-88(%rbp), %rax	# src1, tmp282
	movl	104(%rax), %eax	# src1_3->frequency, D.13133
	addl	%eax, %edx	# D.13133, D.13133
	movq	-72(%rbp), %rax	# redirect_to, tmp283
	movl	%edx, 104(%rax)	# D.13133, redirect_to_5->frequency
	.loc 1 1349 0
	movq	-72(%rbp), %rax	# redirect_to, tmp284
	movq	40(%rax), %rax	# redirect_to_5->succ, tmp285
	movq	%rax, -64(%rbp)	# tmp285, s
	jmp	.L354	#
.L366:
.LBB28:
	.loc 1 1352 0
	movq	-64(%rbp), %rax	# s, tmp286
	movq	24(%rax), %rax	# s_6->dest, tmp287
	movq	%rax, -48(%rbp)	# tmp287, d
	.loc 1 1354 0
	movq	-48(%rbp), %rax	# d, tmp288
	movq	80(%rax), %rax	# d_85->aux, D.13128
	andl	$2, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L355	#,
	.loc 1 1355 0
	movq	-48(%rbp), %rax	# d, tmp289
	movq	40(%rax), %rax	# d_85->succ, D.13127
	movq	24(%rax), %rax	# _90->dest, tmp290
	movq	%rax, -48(%rbp)	# tmp290, d
.L355:
	.loc 1 1357 0
	movq	-88(%rbp), %rax	# src1, tmp291
	movq	40(%rax), %rax	# src1_3->succ, tmp292
	movq	%rax, -56(%rbp)	# tmp292, s2
.L359:
.LBB29:
	.loc 1 1359 0
	movq	-56(%rbp), %rax	# s2, tmp293
	movq	24(%rax), %rax	# s2_7->dest, tmp294
	movq	%rax, -40(%rbp)	# tmp294, d2
	.loc 1 1360 0
	movq	-40(%rbp), %rax	# d2, tmp295
	movq	80(%rax), %rax	# d2_93->aux, D.13128
	andl	$2, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L356	#,
	.loc 1 1361 0
	movq	-40(%rbp), %rax	# d2, tmp296
	movq	40(%rax), %rax	# d2_93->succ, D.13127
	movq	24(%rax), %rax	# _98->dest, tmp297
	movq	%rax, -40(%rbp)	# tmp297, d2
.L356:
	.loc 1 1362 0
	movq	-48(%rbp), %rax	# d, tmp298
	cmpq	-40(%rbp), %rax	# d2, tmp298
	jne	.L357	#,
	.loc 1 1363 0
	nop
.LBE29:
	.loc 1 1366 0
	movq	-64(%rbp), %rax	# s, tmp301
	movq	56(%rax), %rdx	# s_6->count, D.13129
	movq	-56(%rbp), %rax	# s2, tmp302
	movq	56(%rax), %rax	# s2_7->count, D.13129
	addq	%rax, %rdx	# D.13129, D.13129
	movq	-64(%rbp), %rax	# s, tmp303
	movq	%rdx, 56(%rax)	# D.13129, s_6->count
	.loc 1 1371 0
	movq	-64(%rbp), %rax	# s, tmp304
	movq	24(%rax), %rax	# s_6->dest, D.13131
	movq	80(%rax), %rax	# _103->aux, D.13128
	andl	$2, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L360	#,
	jmp	.L374	#
.L357:
	.loc 1 1357 0
	movq	-56(%rbp), %rax	# s2, tmp299
	movq	8(%rax), %rax	# s2_7->succ_next, tmp300
	movq	%rax, -56(%rbp)	# tmp300, s2
	.loc 1 1364 0
	jmp	.L359	#
.L374:
	.loc 1 1373 0
	movq	-64(%rbp), %rax	# s, tmp305
	movq	24(%rax), %rax	# s_6->dest, D.13131
	movq	40(%rax), %rax	# _108->succ, D.13127
	movq	-64(%rbp), %rdx	# s, tmp306
	movq	24(%rdx), %rdx	# s_6->dest, D.13131
	movq	40(%rdx), %rdx	# _110->succ, D.13127
	movq	56(%rdx), %rcx	# _111->count, D.13129
	movq	-56(%rbp), %rdx	# s2, tmp307
	movq	56(%rdx), %rdx	# s2_7->count, D.13129
	addq	%rcx, %rdx	# D.13129, D.13129
	movq	%rdx, 56(%rax)	# D.13129, _109->count
	.loc 1 1374 0
	movq	-64(%rbp), %rax	# s, tmp308
	movq	24(%rax), %rax	# s_6->dest, D.13131
	movq	-64(%rbp), %rdx	# s, tmp309
	movq	24(%rdx), %rdx	# s_6->dest, D.13131
	movq	96(%rdx), %rcx	# _116->count, D.13129
	movq	-56(%rbp), %rdx	# s2, tmp310
	movq	56(%rdx), %rdx	# s2_7->count, D.13129
	addq	%rcx, %rdx	# D.13129, D.13129
	movq	%rdx, 96(%rax)	# D.13129, _115->count
	.loc 1 1375 0
	movq	-64(%rbp), %rax	# s, tmp311
	movq	24(%rax), %rsi	# s_6->dest, D.13131
	movq	-64(%rbp), %rax	# s, tmp312
	movq	24(%rax), %rax	# s_6->dest, D.13131
	movl	104(%rax), %edi	# _121->frequency, D.13133
	movq	-64(%rbp), %rax	# s, tmp313
	movq	16(%rax), %rax	# s_6->src, D.13131
	movl	104(%rax), %edx	# _123->frequency, D.13133
	movq	-64(%rbp), %rax	# s, tmp314
	movl	52(%rax), %eax	# s_6->probability, D.13133
	imull	%edx, %eax	# D.13133, D.13133
	leal	5000(%rax), %ecx	#, D.13133
	movl	$1759218605, %edx	#, tmp316
	movl	%ecx, %eax	# D.13133, tmp383
	imull	%edx	# tmp316
	sarl	$12, %edx	#, tmp317
	movl	%ecx, %eax	# D.13133, tmp318
	sarl	$31, %eax	#, tmp318
	subl	%eax, %edx	# tmp318, D.13133
	movl	%edx, %eax	# D.13133, D.13133
	addl	%edi, %eax	# D.13133, D.13133
	movl	%eax, 104(%rsi)	# D.13133, _120->frequency
.L360:
	.loc 1 1378 0
	movq	-56(%rbp), %rax	# s2, tmp319
	movq	24(%rax), %rax	# s2_7->dest, D.13131
	movq	80(%rax), %rax	# _130->aux, D.13128
	andl	$2, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L361	#,
	.loc 1 1380 0
	movq	-56(%rbp), %rax	# s2, tmp320
	movq	24(%rax), %rax	# s2_7->dest, D.13131
	movq	40(%rax), %rax	# _135->succ, D.13127
	movq	-56(%rbp), %rdx	# s2, tmp321
	movq	24(%rdx), %rdx	# s2_7->dest, D.13131
	movq	40(%rdx), %rdx	# _137->succ, D.13127
	movq	56(%rdx), %rcx	# _138->count, D.13129
	movq	-56(%rbp), %rdx	# s2, tmp322
	movq	56(%rdx), %rdx	# s2_7->count, D.13129
	subq	%rdx, %rcx	# D.13129, D.13129
	movq	%rcx, %rdx	# D.13129, D.13129
	movq	%rdx, 56(%rax)	# D.13129, _136->count
	.loc 1 1381 0
	movq	-56(%rbp), %rax	# s2, tmp323
	movq	24(%rax), %rax	# s2_7->dest, D.13131
	movq	40(%rax), %rax	# _142->succ, D.13127
	movq	56(%rax), %rax	# _143->count, D.13129
	testq	%rax, %rax	# D.13129
	jns	.L362	#,
	.loc 1 1382 0
	movq	-56(%rbp), %rax	# s2, tmp324
	movq	24(%rax), %rax	# s2_7->dest, D.13131
	movq	40(%rax), %rax	# _145->succ, D.13127
	movq	$0, 56(%rax)	#, _146->count
.L362:
	.loc 1 1383 0
	movq	-56(%rbp), %rax	# s2, tmp325
	movq	24(%rax), %rax	# s2_7->dest, D.13131
	movq	-56(%rbp), %rdx	# s2, tmp326
	movq	24(%rdx), %rdx	# s2_7->dest, D.13131
	movq	96(%rdx), %rcx	# _148->count, D.13129
	movq	-56(%rbp), %rdx	# s2, tmp327
	movq	56(%rdx), %rdx	# s2_7->count, D.13129
	subq	%rdx, %rcx	# D.13129, D.13129
	movq	%rcx, %rdx	# D.13129, D.13129
	movq	%rdx, 96(%rax)	# D.13129, _147->count
	.loc 1 1384 0
	movq	-56(%rbp), %rax	# s2, tmp328
	movq	24(%rax), %rsi	# s2_7->dest, D.13131
	movq	-56(%rbp), %rax	# s2, tmp329
	movq	24(%rax), %rax	# s2_7->dest, D.13131
	movl	104(%rax), %edi	# _153->frequency, D.13133
	movq	-64(%rbp), %rax	# s, tmp330
	movq	16(%rax), %rax	# s_6->src, D.13131
	movl	104(%rax), %edx	# _155->frequency, D.13133
	movq	-64(%rbp), %rax	# s, tmp331
	movl	52(%rax), %eax	# s_6->probability, D.13133
	imull	%edx, %eax	# D.13133, D.13133
	leal	5000(%rax), %ecx	#, D.13133
	movl	$1759218605, %edx	#, tmp333
	movl	%ecx, %eax	# D.13133, tmp384
	imull	%edx	# tmp333
	sarl	$12, %edx	#, tmp334
	movl	%ecx, %eax	# D.13133, tmp335
	sarl	$31, %eax	#, tmp335
	subl	%eax, %edx	# tmp335, D.13133
	movl	%edx, %eax	# D.13133, D.13133
	subl	%eax, %edi	# D.13133, D.13133
	movl	%edi, %eax	# D.13133, D.13133
	movl	%eax, 104(%rsi)	# D.13133, _152->frequency
	.loc 1 1385 0
	movq	-56(%rbp), %rax	# s2, tmp336
	movq	24(%rax), %rax	# s2_7->dest, D.13131
	movl	104(%rax), %eax	# _162->frequency, D.13133
	testl	%eax, %eax	# D.13133
	jns	.L363	#,
	.loc 1 1386 0
	movq	-56(%rbp), %rax	# s2, tmp337
	movq	24(%rax), %rax	# s2_7->dest, D.13131
	movl	$0, 104(%rax)	#, _164->frequency
.L363:
	.loc 1 1387 0
	movq	-56(%rbp), %rax	# s2, tmp338
	movq	24(%rax), %rax	# s2_7->dest, D.13131
	movq	96(%rax), %rax	# _165->count, D.13129
	testq	%rax, %rax	# D.13129
	jns	.L361	#,
	.loc 1 1388 0
	movq	-56(%rbp), %rax	# s2, tmp339
	movq	24(%rax), %rax	# s2_7->dest, D.13131
	movq	$0, 96(%rax)	#, _167->count
.L361:
	.loc 1 1391 0
	movq	-72(%rbp), %rax	# redirect_to, tmp340
	movl	104(%rax), %eax	# redirect_to_5->frequency, D.13133
	testl	%eax, %eax	# D.13133
	jne	.L364	#,
	.loc 1 1391 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# src1, tmp341
	movl	104(%rax), %eax	# src1_3->frequency, D.13133
	testl	%eax, %eax	# D.13133
	jne	.L364	#,
	.loc 1 1392 0 is_stmt 1
	movq	-64(%rbp), %rax	# s, tmp342
	movl	52(%rax), %edx	# s_6->probability, D.13133
	movq	-56(%rbp), %rax	# s2, tmp343
	movl	52(%rax), %eax	# s2_7->probability, D.13133
	addl	%edx, %eax	# D.13133, D.13133
	movl	%eax, %edx	# D.13133, tmp344
	shrl	$31, %edx	#, tmp344
	addl	%edx, %eax	# tmp344, tmp345
	sarl	%eax	# tmp346
	movl	%eax, %edx	# tmp346, D.13133
	movq	-64(%rbp), %rax	# s, tmp347
	movl	%edx, 52(%rax)	# D.13133, s_6->probability
	jmp	.L365	#
.L364:
	.loc 1 1395 0
	movq	-64(%rbp), %rax	# s, tmp348
	movl	52(%rax), %edx	# s_6->probability, D.13133
	movq	-72(%rbp), %rax	# redirect_to, tmp349
	movl	104(%rax), %eax	# redirect_to_5->frequency, D.13133
	imull	%eax, %edx	# D.13133, D.13133
	.loc 1 1396 0
	movq	-56(%rbp), %rax	# s2, tmp350
	movl	52(%rax), %ecx	# s2_7->probability, D.13133
	movq	-88(%rbp), %rax	# src1, tmp351
	movl	104(%rax), %eax	# src1_3->frequency, D.13133
	imull	%ecx, %eax	# D.13133, D.13133
	.loc 1 1395 0
	addl	%eax, %edx	# D.13133, D.13133
	.loc 1 1397 0
	movq	-72(%rbp), %rax	# redirect_to, tmp352
	movl	104(%rax), %ecx	# redirect_to_5->frequency, D.13133
	movq	-88(%rbp), %rax	# src1, tmp353
	movl	104(%rax), %eax	# src1_3->frequency, D.13133
	addl	%eax, %ecx	# D.13133, D.13133
	movl	%edx, %eax	# D.13133, tmp354
	cltd
	idivl	%ecx	# D.13133
	movl	%eax, %edx	# tmp354, D.13133
	.loc 1 1395 0
	movq	-64(%rbp), %rax	# s, tmp356
	movl	%edx, 52(%rax)	# D.13133, s_6->probability
.L365:
.LBE28:
	.loc 1 1349 0
	movq	-64(%rbp), %rax	# s, tmp357
	movq	8(%rax), %rax	# s_6->succ_next, tmp358
	movq	%rax, -64(%rbp)	# tmp358, s
.L354:
	.loc 1 1349 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, s
	jne	.L366	#,
	.loc 1 1400 0 is_stmt 1
	movq	-72(%rbp), %rax	# redirect_to, tmp359
	movq	%rax, %rdi	# tmp359,
	call	update_br_prob_note	#
	.loc 1 1405 0
	movq	-104(%rbp), %rax	# newpos1, newpos1.80
	movzwl	(%rax), %eax	# newpos1.80_187->code, D.13134
	cmpw	$36, %ax	#, D.13134
	jne	.L367	#,
	.loc 1 1406 0
	movq	-104(%rbp), %rax	# newpos1, newpos1.81
	movq	24(%rax), %rax	# newpos1.81_189->fld[2].rtx, newpos1.82
	movq	%rax, -104(%rbp)	# newpos1.82, newpos1
.L367:
	.loc 1 1408 0
	movq	-104(%rbp), %rax	# newpos1, newpos1.83
	movzwl	(%rax), %eax	# newpos1.83_191->code, D.13134
	cmpw	$37, %ax	#, D.13134
	jne	.L368	#,
	.loc 1 1409 0
	movq	-104(%rbp), %rax	# newpos1, newpos1.84
	movq	24(%rax), %rax	# newpos1.84_193->fld[2].rtx, newpos1.85
	movq	%rax, -104(%rbp)	# newpos1.85, newpos1
.L368:
	.loc 1 1410 0
	movq	-88(%rbp), %rax	# src1, tmp360
	movq	8(%rax), %rax	# src1_3->end, tmp361
	movq	%rax, -32(%rbp)	# tmp361, last
	.loc 1 1413 0
	movq	-72(%rbp), %rax	# redirect_to, tmp362
	movq	%rax, %rdi	# tmp362,
	call	block_label	#
	movq	%rax, -24(%rbp)	# tmp363, label
	.loc 1 1414 0
	movq	-88(%rbp), %rax	# src1, tmp364
	movq	8(%rax), %rbx	# src1_3->end, D.13132
	movq	-24(%rbp), %rax	# label, tmp365
	movq	%rax, %rdi	# tmp365,
	call	gen_jump	#
	movq	%rbx, %rsi	# D.13132,
	movq	%rax, %rdi	# D.13132,
	call	emit_jump_insn_after	#
	.loc 1 1415 0
	movq	-88(%rbp), %rax	# src1, tmp366
	movq	8(%rax), %rax	# src1_3->end, D.13132
	movq	-24(%rbp), %rdx	# label, tmp367
	movq	%rdx, 64(%rax)	# tmp367, _199->fld[7].rtx
	.loc 1 1416 0
	movq	-24(%rbp), %rax	# label, tmp368
	movl	32(%rax), %eax	# label_196->fld[3].rtint, D.13133
	leal	1(%rax), %edx	#, D.13133
	movq	-24(%rbp), %rax	# label, tmp369
	movl	%edx, 32(%rax)	# D.13133, label_196->fld[3].rtint
	.loc 1 1419 0
	movq	-104(%rbp), %rax	# newpos1, newpos1.86
	movq	-32(%rbp), %rdx	# last, tmp370
	movq	%rdx, %rsi	# tmp370,
	movq	%rax, %rdi	# newpos1.86,
	call	delete_insn_chain	#
	.loc 1 1422 0
	movq	-88(%rbp), %rax	# src1, tmp371
	movq	8(%rax), %rax	# src1_3->end, D.13132
	movq	%rax, %rdi	# D.13132,
	call	next_nonnote_insn	#
	movq	%rax, -32(%rbp)	# tmp372, last
	.loc 1 1423 0
	cmpq	$0, -32(%rbp)	#, last
	je	.L369	#,
	.loc 1 1423 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# last, tmp373
	movzwl	(%rax), %eax	# last_204->code, D.13134
	cmpw	$35, %ax	#, D.13134
	je	.L370	#,
.L369:
	.loc 1 1424 0 is_stmt 1
	movq	-88(%rbp), %rax	# src1, tmp374
	movq	8(%rax), %rax	# src1_3->end, D.13132
	movq	%rax, %rdi	# D.13132,
	call	emit_barrier_after	#
	.loc 1 1427 0
	jmp	.L371	#
.L370:
	jmp	.L371	#
.L372:
	.loc 1 1428 0
	movq	-88(%rbp), %rax	# src1, tmp375
	movq	40(%rax), %rax	# src1_3->succ, D.13127
	movq	%rax, %rdi	# D.13127,
	call	remove_edge	#
.L371:
	.loc 1 1427 0 discriminator 1
	movq	-88(%rbp), %rax	# src1, tmp376
	movq	40(%rax), %rax	# src1_3->succ, D.13127
	testq	%rax, %rax	# D.13127
	jne	.L372	#,
	.loc 1 1429 0
	movq	-72(%rbp), %rcx	# redirect_to, tmp377
	movq	-88(%rbp), %rax	# src1, tmp378
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp377,
	movq	%rax, %rdi	# tmp378,
	call	make_single_succ_edge	#
	.loc 1 1431 0
	movq	-88(%rbp), %rax	# src1, tmp379
	movq	80(%rax), %rax	# src1_3->aux, D.13128
	orl	$1, %eax	#, D.13130
	movl	%eax, %eax	# D.13130, D.13129
	movq	%rax, %rdx	# D.13129, D.13128
	movq	-88(%rbp), %rax	# src1, tmp380
	movq	%rdx, 80(%rax)	# D.13128, src1_3->aux
	.loc 1 1432 0
	movq	-88(%rbp), %rax	# src1, tmp381
	movq	%rax, %rdi	# tmp381,
	call	update_forwarder_flag	#
	.loc 1 1434 0
	movl	$1, %eax	#, D.13126
.L373:
	.loc 1 1435 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	try_crossjump_to_edge, .-try_crossjump_to_edge
	.type	try_crossjump_bb, @function
try_crossjump_bb:
.LFB17:
	.loc 1 1445 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# mode, mode
	movq	%rsi, -64(%rbp)	# bb, bb
	.loc 1 1450 0
	movq	-64(%rbp), %rax	# bb, tmp74
	movq	32(%rax), %rax	# bb_8(D)->pred, D.13138
	testq	%rax, %rax	# D.13138
	je	.L376	#,
	.loc 1 1450 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# bb, tmp75
	movq	32(%rax), %rax	# bb_8(D)->pred, D.13138
	movq	(%rax), %rax	# _10->pred_next, D.13138
	testq	%rax, %rax	# D.13138
	jne	.L377	#,
.L376:
	.loc 1 1451 0 is_stmt 1
	movl	$0, %eax	#, D.13137
	jmp	.L378	#
.L377:
	.loc 1 1456 0
	movq	-64(%rbp), %rax	# bb, tmp76
	movq	32(%rax), %rax	# bb_8(D)->pred, tmp77
	movq	%rax, -16(%rbp)	# tmp77, fallthru
	jmp	.L379	#
.L382:
	.loc 1 1457 0
	movq	-16(%rbp), %rax	# fallthru, tmp78
	movl	48(%rax), %eax	# fallthru_4->flags, D.13139
	andl	$1, %eax	#, D.13139
	testl	%eax, %eax	# D.13139
	je	.L380	#,
	.loc 1 1458 0
	jmp	.L381	#
.L380:
	.loc 1 1456 0
	movq	-16(%rbp), %rax	# fallthru, tmp79
	movq	(%rax), %rax	# fallthru_4->pred_next, tmp80
	movq	%rax, -16(%rbp)	# tmp80, fallthru
.L379:
	.loc 1 1456 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, fallthru
	jne	.L382	#,
.L381:
	.loc 1 1460 0 is_stmt 1
	movb	$0, -41(%rbp)	#, changed
	.loc 1 1461 0
	movq	-64(%rbp), %rax	# bb, tmp81
	movq	32(%rax), %rax	# bb_8(D)->pred, tmp82
	movq	%rax, -40(%rbp)	# tmp82, e
	jmp	.L383	#
.L394:
	.loc 1 1463 0
	movq	-40(%rbp), %rax	# e, tmp83
	movq	(%rax), %rax	# e_1->pred_next, tmp84
	movq	%rax, -24(%rbp)	# tmp84, nexte
	.loc 1 1466 0
	cmpq	$0, -16(%rbp)	#, fallthru
	je	.L384	#,
	.loc 1 1470 0
	movq	-40(%rbp), %rax	# e, tmp85
	cmpq	-16(%rbp), %rax	# fallthru, tmp85
	jne	.L385	#,
	.loc 1 1471 0
	jmp	.L386	#
.L385:
	.loc 1 1473 0
	movq	-16(%rbp), %rdx	# fallthru, tmp86
	movq	-40(%rbp), %rcx	# e, tmp87
	movl	-52(%rbp), %eax	# mode, tmp88
	movq	%rcx, %rsi	# tmp87,
	movl	%eax, %edi	# tmp88,
	call	try_crossjump_to_edge	#
	testb	%al, %al	# D.13137
	je	.L384	#,
	.loc 1 1475 0
	movb	$1, -41(%rbp)	#, changed
	.loc 1 1476 0
	movq	-64(%rbp), %rax	# bb, tmp89
	movq	32(%rax), %rax	# bb_8(D)->pred, tmp90
	movq	%rax, -24(%rbp)	# tmp90, nexte
	.loc 1 1477 0
	jmp	.L386	#
.L384:
	.loc 1 1493 0
	movq	-40(%rbp), %rax	# e, tmp91
	movq	16(%rax), %rax	# e_1->src, D.13140
	movq	40(%rax), %rax	# _23->succ, D.13138
	cmpq	-40(%rbp), %rax	# e, D.13138
	je	.L387	#,
	.loc 1 1494 0
	jmp	.L386	#
.L387:
	.loc 1 1496 0
	movq	-64(%rbp), %rax	# bb, tmp92
	movq	32(%rax), %rax	# bb_8(D)->pred, tmp93
	movq	%rax, -32(%rbp)	# tmp93, e2
	jmp	.L388	#
.L393:
	.loc 1 1498 0
	movq	-32(%rbp), %rax	# e2, tmp94
	movq	(%rax), %rax	# e2_2->pred_next, tmp95
	movq	%rax, -8(%rbp)	# tmp95, nexte2
	.loc 1 1500 0
	movq	-32(%rbp), %rax	# e2, tmp96
	cmpq	-40(%rbp), %rax	# e, tmp96
	jne	.L389	#,
	.loc 1 1501 0
	jmp	.L390	#
.L389:
	.loc 1 1504 0
	movq	-32(%rbp), %rax	# e2, tmp97
	cmpq	-16(%rbp), %rax	# fallthru, tmp97
	jne	.L391	#,
	.loc 1 1505 0
	jmp	.L390	#
.L391:
	.loc 1 1511 0
	movq	-40(%rbp), %rax	# e, tmp98
	movq	16(%rax), %rax	# e_1->src, D.13140
	movl	88(%rax), %edx	# _27->index, D.13139
	movq	-32(%rbp), %rax	# e2, tmp99
	movq	16(%rax), %rax	# e2_2->src, D.13140
	movl	88(%rax), %eax	# _29->index, D.13139
	cmpl	%eax, %edx	# D.13139, D.13139
	jle	.L392	#,
	.loc 1 1512 0
	jmp	.L390	#
.L392:
	.loc 1 1514 0
	movq	-32(%rbp), %rdx	# e2, tmp100
	movq	-40(%rbp), %rcx	# e, tmp101
	movl	-52(%rbp), %eax	# mode, tmp102
	movq	%rcx, %rsi	# tmp101,
	movl	%eax, %edi	# tmp102,
	call	try_crossjump_to_edge	#
	testb	%al, %al	# D.13137
	je	.L390	#,
	.loc 1 1516 0
	movb	$1, -41(%rbp)	#, changed
	.loc 1 1517 0
	movq	-64(%rbp), %rax	# bb, tmp103
	movq	32(%rax), %rax	# bb_8(D)->pred, tmp104
	movq	%rax, -24(%rbp)	# tmp104, nexte
	.loc 1 1518 0
	jmp	.L386	#
.L390:
	.loc 1 1496 0
	movq	-8(%rbp), %rax	# nexte2, tmp105
	movq	%rax, -32(%rbp)	# tmp105, e2
.L388:
	.loc 1 1496 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e2
	jne	.L393	#,
.L386:
	.loc 1 1461 0 is_stmt 1
	movq	-24(%rbp), %rax	# nexte, tmp106
	movq	%rax, -40(%rbp)	# tmp106, e
.L383:
	.loc 1 1461 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, e
	jne	.L394	#,
	.loc 1 1523 0 is_stmt 1
	movzbl	-41(%rbp), %eax	# changed, D.13137
.L378:
	.loc 1 1524 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	try_crossjump_bb, .-try_crossjump_bb
	.section	.rodata
	.align 8
.LC12:
	.string	"\n\ntry_optimize_cfg iteration %i\n\n"
.LC13:
	.string	"Deleting block %i.\n"
.LC14:
	.string	"Deleted label in block %i.\n"
.LC15:
	.string	"Deleting fallthru block %i.\n"
	.text
	.type	try_optimize_cfg, @function
try_optimize_cfg:
.LFB18:
	.loc 1 1532 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -68(%rbp)	# mode, mode
	.loc 1 1534 0
	movb	$0, -52(%rbp)	#, changed_overall
	.loc 1 1536 0
	movl	$0, -44(%rbp)	#, iterations
	.loc 1 1539 0
	movl	-68(%rbp), %eax	# mode, tmp200
	andl	$2, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L396	#,
	.loc 1 1540 0
	call	add_noreturn_fake_exit_edges	#
.L396:
	.loc 1 1542 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L397	#
.L398:
	.loc 1 1543 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.87
	movl	-48(%rbp), %edx	# i, tmp202
	movslq	%edx, %rdx	# tmp202, tmp201
	addq	$4, %rdx	#, tmp203
	movq	(%rax,%rdx,8), %rax	# basic_block_info.87_28->data.bb, D.13142
	movq	%rax, %rdi	# D.13142,
	call	update_forwarder_flag	#
	.loc 1 1542 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L397:
	.loc 1 1542 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.88
	cmpl	%eax, -48(%rbp)	# n_basic_blocks.88, i
	jl	.L398	#,
	.loc 1 1545 0 is_stmt 1
	movq	targetm+336(%rip), %rax	# targetm.cannot_modify_jumps_p, D.13143
	call	*%rax	# D.13143
	xorl	$1, %eax	#, D.13144
	testb	%al, %al	# D.13144
	je	.L399	#,
.L423:
	.loc 1 1552 0
	movb	$0, -51(%rbp)	#, changed
	.loc 1 1553 0
	addl	$1, -44(%rbp)	#, iterations
	.loc 1 1555 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.89
	testq	%rax, %rax	# rtl_dump_file.89
	je	.L400	#,
	.loc 1 1556 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.90
	movl	-44(%rbp), %edx	# iterations, tmp204
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.90,
	movl	$0, %eax	#,
	call	fprintf	#
.L400:
	.loc 1 1560 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L401	#
.L421:
.LBB30:
	.loc 1 1562 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.91
	movl	-48(%rbp), %edx	# i, tmp206
	movslq	%edx, %rdx	# tmp206, tmp205
	addq	$4, %rdx	#, tmp207
	movq	(%rax,%rdx,8), %rax	# basic_block_info.91_40->data.bb, tmp208
	movq	%rax, -40(%rbp)	# tmp208, b
	.loc 1 1564 0
	movb	$0, -50(%rbp)	#, changed_here
	.loc 1 1567 0
	jmp	.L402	#
.L404:
	.loc 1 1569 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.92
	movq	-40(%rbp), %rdx	# b, tmp209
	movl	88(%rdx), %edx	# b_12->index, D.13141
	subl	$1, %edx	#, D.13141
	movslq	%edx, %rdx	# D.13141, tmp210
	addq	$4, %rdx	#, tmp211
	movq	(%rax,%rdx,8), %rax	# basic_block_info.92_44->data.bb, tmp212
	movq	%rax, -32(%rbp)	# tmp212, c
	.loc 1 1570 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.93
	testq	%rax, %rax	# rtl_dump_file.93
	je	.L403	#,
	.loc 1 1571 0
	movq	-40(%rbp), %rax	# b, tmp213
	movl	88(%rax), %edx	# b_12->index, D.13141
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.94
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.94,
	movl	$0, %eax	#,
	call	fprintf	#
.L403:
	.loc 1 1574 0
	movq	-40(%rbp), %rax	# b, tmp214
	movq	%rax, %rdi	# tmp214,
	call	flow_delete_block	#
	.loc 1 1575 0
	movb	$1, -51(%rbp)	#, changed
	.loc 1 1576 0
	movq	-32(%rbp), %rax	# c, tmp215
	movq	%rax, -40(%rbp)	# tmp215, b
.L402:
	.loc 1 1567 0 discriminator 1
	movq	-40(%rbp), %rax	# b, tmp216
	movq	32(%rax), %rax	# b_12->pred, D.13145
	testq	%rax, %rax	# D.13145
	je	.L404	#,
	.loc 1 1582 0
	movq	-40(%rbp), %rax	# b, tmp217
	movq	32(%rax), %rax	# b_12->pred, D.13145
	movq	(%rax), %rax	# _53->pred_next, D.13145
	testq	%rax, %rax	# D.13145
	jne	.L405	#,
	.loc 1 1583 0
	movq	-40(%rbp), %rax	# b, tmp218
	movq	32(%rax), %rax	# b_12->pred, D.13145
	movl	48(%rax), %eax	# _55->flags, D.13141
	andl	$1, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L405	#,
	.loc 1 1584 0
	movq	-40(%rbp), %rax	# b, tmp219
	movq	32(%rax), %rax	# b_12->pred, D.13145
	movl	48(%rax), %eax	# _58->flags, D.13141
	andl	$14, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	jne	.L405	#,
	.loc 1 1585 0
	movq	-40(%rbp), %rax	# b, tmp220
	movq	(%rax), %rax	# b_12->head, D.13146
	movzwl	(%rax), %eax	# _61->code, D.13147
	cmpw	$36, %ax	#, D.13147
	jne	.L405	#,
	.loc 1 1586 0
	movl	-68(%rbp), %eax	# mode, tmp221
	andl	$8, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L406	#,
	.loc 1 1587 0
	movq	-40(%rbp), %rax	# b, tmp222
	movq	(%rax), %rax	# b_12->head, D.13146
	movq	%rax, %rdi	# D.13146,
	call	tail_recursion_label_p	#
	xorl	$1, %eax	#, D.13144
	testb	%al, %al	# D.13144
	je	.L405	#,
.L406:
	.loc 1 1594 0
	movq	-40(%rbp), %rax	# b, tmp223
	movq	32(%rax), %rax	# b_12->pred, D.13145
	movq	16(%rax), %rax	# _67->src, D.13142
	cmpq	$entry_exit_blocks, %rax	#, D.13142
	je	.L407	#,
	.loc 1 1595 0
	movq	-40(%rbp), %rax	# b, tmp224
	movq	32(%rax), %rax	# b_12->pred, D.13145
	movq	16(%rax), %rax	# _69->src, D.13142
	movq	8(%rax), %rax	# _70->end, D.13146
	movzwl	(%rax), %eax	# _71->code, D.13147
	cmpw	$33, %ax	#, D.13147
	jne	.L407	#,
	.loc 1 1597 0
	movq	-40(%rbp), %rax	# b, tmp225
	movq	32(%rax), %rax	# b_12->pred, D.13145
	movq	16(%rax), %rax	# _73->src, D.13142
	.loc 1 1596 0
	movq	8(%rax), %rdx	# _74->end, D.13146
	movq	-40(%rbp), %rax	# b, tmp226
	movq	(%rax), %rax	# b_12->head, D.13146
	movq	%rdx, %rsi	# D.13146,
	movq	%rax, %rdi	# D.13146,
	call	label_is_jump_target_p	#
	xorl	$1, %eax	#, D.13144
	testb	%al, %al	# D.13144
	je	.L405	#,
.L407:
.LBB31:
	.loc 1 1599 0
	movq	-40(%rbp), %rax	# b, tmp227
	movq	(%rax), %rax	# b_12->head, tmp228
	movq	%rax, -24(%rbp)	# tmp228, label
	.loc 1 1601 0
	movq	-40(%rbp), %rax	# b, tmp229
	movq	(%rax), %rax	# b_12->head, D.13146
	movq	24(%rax), %rdx	# _80->fld[2].rtx, D.13146
	movq	-40(%rbp), %rax	# b, tmp230
	movq	%rdx, (%rax)	# D.13146, b_12->head
	.loc 1 1602 0
	movq	-24(%rbp), %rdx	# label, tmp231
	movq	-24(%rbp), %rax	# label, tmp232
	movq	%rdx, %rsi	# tmp231,
	movq	%rax, %rdi	# tmp232,
	call	delete_insn_chain	#
	.loc 1 1603 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.95
	testq	%rax, %rax	# rtl_dump_file.95
	je	.L405	#,
	.loc 1 1604 0
	movq	-40(%rbp), %rax	# b, tmp233
	movl	88(%rax), %edx	# b_12->index, D.13141
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.96
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.96,
	movl	$0, %eax	#,
	call	fprintf	#
.L405:
.LBE31:
	.loc 1 1609 0
	movq	-40(%rbp), %rax	# b, tmp234
	movq	32(%rax), %rax	# b_12->pred, D.13145
	movq	(%rax), %rax	# _85->pred_next, D.13145
	testq	%rax, %rax	# D.13145
	jne	.L408	#,
	.loc 1 1610 0
	movq	-40(%rbp), %rax	# b, tmp235
	movq	32(%rax), %rax	# b_12->pred, D.13145
	movl	48(%rax), %eax	# _87->flags, D.13141
	andl	$1, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L408	#,
	.loc 1 1611 0
	movq	-40(%rbp), %rax	# b, tmp236
	movq	(%rax), %rax	# b_12->head, D.13146
	movzwl	(%rax), %eax	# _90->code, D.13147
	cmpw	$36, %ax	#, D.13147
	je	.L408	#,
	.loc 1 1612 0
	movq	-40(%rbp), %rax	# b, tmp237
	movq	80(%rax), %rax	# b_12->aux, D.13148
	andl	$2, %eax	#, D.13150
	testl	%eax, %eax	# D.13150
	je	.L408	#,
	.loc 1 1615 0
	movq	-40(%rbp), %rax	# b, tmp238
	movq	40(%rax), %rax	# b_12->succ, D.13145
	movl	48(%rax), %eax	# _96->flags, D.13141
	andl	$1, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L408	#,
	.loc 1 1616 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.97
	cmpl	$1, %eax	#, n_basic_blocks.97
	jle	.L408	#,
	.loc 1 1618 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.98
	testq	%rax, %rax	# rtl_dump_file.98
	je	.L409	#,
	.loc 1 1619 0
	movq	-40(%rbp), %rax	# b, tmp239
	movl	88(%rax), %edx	# b_12->index, D.13141
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.99
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.99,
	movl	$0, %eax	#,
	call	fprintf	#
.L409:
	.loc 1 1623 0
	movq	basic_block_info(%rip), %rdx	# basic_block_info, basic_block_info.100
	movq	-40(%rbp), %rax	# b, tmp240
	movl	88(%rax), %eax	# b_12->index, D.13141
	testl	%eax, %eax	# D.13141
	je	.L410	#,
	.loc 1 1623 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# b, tmp241
	movl	88(%rax), %eax	# b_12->index, D.13141
	subl	$1, %eax	#, iftmp.101
	jmp	.L411	#
.L410:
	.loc 1 1623 0 discriminator 2
	movl	$1, %eax	#, iftmp.101
.L411:
	.loc 1 1623 0 discriminator 3
	cltq
	addq	$4, %rax	#, tmp243
	movq	(%rdx,%rax,8), %rax	# basic_block_info.100_103->data.bb, tmp244
	movq	%rax, -32(%rbp)	# tmp244, c
	.loc 1 1624 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# b, tmp245
	movq	40(%rax), %rax	# b_12->succ, D.13145
	movq	24(%rax), %rdx	# _109->dest, D.13142
	movq	-40(%rbp), %rax	# b, tmp246
	movq	32(%rax), %rax	# b_12->pred, D.13145
	movq	%rdx, %rsi	# D.13142,
	movq	%rax, %rdi	# D.13145,
	call	redirect_edge_succ_nodup	#
	.loc 1 1625 0 discriminator 3
	movq	-40(%rbp), %rax	# b, tmp247
	movq	%rax, %rdi	# tmp247,
	call	flow_delete_block	#
	.loc 1 1626 0 discriminator 3
	movb	$1, -51(%rbp)	#, changed
	.loc 1 1627 0 discriminator 3
	movq	-32(%rbp), %rax	# c, tmp248
	movq	%rax, -40(%rbp)	# tmp248, b
	.loc 1 1632 0 discriminator 3
	jmp	.L412	#
.L408:
	.loc 1 1632 0 is_stmt 0
	jmp	.L412	#
.L415:
	.loc 1 1643 0 is_stmt 1
	movb	$1, -50(%rbp)	#, changed_here
.L412:
	.loc 1 1632 0 discriminator 1
	movq	-40(%rbp), %rax	# b, tmp249
	movq	40(%rax), %rax	# b_13->succ, tmp250
	movq	%rax, -16(%rbp)	# tmp250, s
	cmpq	$0, -16(%rbp)	#, s
	je	.L413	#,
	.loc 1 1633 0
	movq	-16(%rbp), %rax	# s, tmp251
	movq	8(%rax), %rax	# s_114->succ_next, D.13145
	testq	%rax, %rax	# D.13145
	jne	.L413	#,
	.loc 1 1634 0
	movq	-16(%rbp), %rax	# s, tmp252
	movl	48(%rax), %eax	# s_114->flags, D.13141
	andl	$14, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	jne	.L413	#,
	.loc 1 1635 0
	movq	-16(%rbp), %rax	# s, tmp253
	movq	24(%rax), %rax	# s_114->dest, tmp254
	movq	%rax, -32(%rbp)	# tmp254, c
	cmpq	$entry_exit_blocks+112, -32(%rbp)	#, c
	je	.L413	#,
	.loc 1 1636 0
	movq	-32(%rbp), %rax	# c, tmp255
	movq	32(%rax), %rax	# c_118->pred, D.13145
	movq	(%rax), %rax	# _119->pred_next, D.13145
	testq	%rax, %rax	# D.13145
	jne	.L413	#,
	.loc 1 1637 0
	movq	-40(%rbp), %rax	# b, tmp256
	cmpq	-32(%rbp), %rax	# c, tmp256
	je	.L413	#,
	.loc 1 1640 0
	movq	-40(%rbp), %rax	# b, tmp257
	movq	8(%rax), %rax	# b_13->end, D.13146
	movzwl	(%rax), %eax	# _121->code, D.13147
	cmpw	$33, %ax	#, D.13147
	jne	.L414	#,
	.loc 1 1641 0
	movq	-40(%rbp), %rax	# b, tmp258
	movq	8(%rax), %rax	# b_13->end, D.13146
	movq	%rax, %rdi	# D.13146,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.13141
	je	.L413	#,
.L414:
	.loc 1 1642 0
	movl	-68(%rbp), %ecx	# mode, tmp259
	movq	-32(%rbp), %rdx	# c, tmp260
	movq	-40(%rbp), %rsi	# b, tmp261
	movq	-16(%rbp), %rax	# s, tmp262
	movq	%rax, %rdi	# tmp262,
	call	merge_blocks	#
	testb	%al, %al	# D.13144
	jne	.L415	#,
.L413:
	.loc 1 1646 0
	movl	-68(%rbp), %eax	# mode, tmp263
	andl	$1, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L416	#,
	.loc 1 1646 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# b, tmp264
	movq	%rax, %rdi	# tmp264,
	call	try_simplify_condjump	#
	testb	%al, %al	# D.13144
	je	.L416	#,
	.loc 1 1648 0 is_stmt 1
	movq	-40(%rbp), %rax	# b, tmp265
	movq	80(%rax), %rax	# b_13->aux, D.13148
	orl	$1, %eax	#, D.13150
	movl	%eax, %eax	# D.13150, D.13149
	movq	%rax, %rdx	# D.13149, D.13148
	movq	-40(%rbp), %rax	# b, tmp266
	movq	%rdx, 80(%rax)	# D.13148, b_13->aux
	.loc 1 1649 0
	movb	$1, -50(%rbp)	#, changed_here
.L416:
	.loc 1 1657 0
	movq	-40(%rbp), %rax	# b, tmp267
	movq	40(%rax), %rax	# b_13->succ, D.13145
	testq	%rax, %rax	# D.13145
	je	.L417	#,
	.loc 1 1658 0
	movq	-40(%rbp), %rax	# b, tmp268
	movq	40(%rax), %rax	# b_13->succ, D.13145
	movq	8(%rax), %rax	# _137->succ_next, D.13145
	testq	%rax, %rax	# D.13145
	jne	.L417	#,
	.loc 1 1659 0
	movq	-40(%rbp), %rax	# b, tmp269
	movq	40(%rax), %rax	# b_13->succ, D.13145
	movq	24(%rax), %rax	# _139->dest, D.13142
	cmpq	$entry_exit_blocks+112, %rax	#, D.13142
	je	.L417	#,
	.loc 1 1660 0
	movq	-40(%rbp), %rax	# b, tmp270
	movq	8(%rax), %rax	# b_13->end, D.13146
	movq	%rax, %rdi	# D.13146,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.13141
	je	.L417	#,
	.loc 1 1661 0
	movq	-40(%rbp), %rax	# b, tmp271
	movq	40(%rax), %rax	# b_13->succ, D.13145
	movq	24(%rax), %rdx	# _143->dest, D.13142
	movq	-40(%rbp), %rax	# b, tmp272
	movq	40(%rax), %rax	# b_13->succ, D.13145
	movq	%rdx, %rsi	# D.13142,
	movq	%rax, %rdi	# D.13145,
	call	redirect_edge_and_branch	#
	testb	%al, %al	# D.13144
	je	.L417	#,
	.loc 1 1663 0
	movq	-40(%rbp), %rax	# b, tmp273
	movq	80(%rax), %rax	# b_13->aux, D.13148
	orl	$1, %eax	#, D.13150
	movl	%eax, %eax	# D.13150, D.13149
	movq	%rax, %rdx	# D.13149, D.13148
	movq	-40(%rbp), %rax	# b, tmp274
	movq	%rdx, 80(%rax)	# D.13148, b_13->aux
	.loc 1 1664 0
	movq	-40(%rbp), %rax	# b, tmp275
	movq	%rax, %rdi	# tmp275,
	call	update_forwarder_flag	#
	.loc 1 1665 0
	movb	$1, -50(%rbp)	#, changed_here
.L417:
	.loc 1 1669 0
	movq	-40(%rbp), %rdx	# b, tmp276
	movl	-68(%rbp), %eax	# mode, tmp277
	movq	%rdx, %rsi	# tmp276,
	movl	%eax, %edi	# tmp277,
	call	try_forward_edges	#
	testb	%al, %al	# D.13144
	je	.L418	#,
	.loc 1 1670 0
	movb	$1, -50(%rbp)	#, changed_here
.L418:
	.loc 1 1673 0
	movl	-68(%rbp), %eax	# mode, tmp278
	andl	$2, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L419	#,
	.loc 1 1674 0
	movq	-40(%rbp), %rdx	# b, tmp279
	movl	-68(%rbp), %eax	# mode, tmp280
	movq	%rdx, %rsi	# tmp279,
	movl	%eax, %edi	# tmp280,
	call	try_crossjump_bb	#
	testb	%al, %al	# D.13144
	je	.L419	#,
	.loc 1 1675 0
	movb	$1, -50(%rbp)	#, changed_here
.L419:
	.loc 1 1679 0
	movzbl	-50(%rbp), %eax	# changed_here, tmp281
	xorl	$1, %eax	#, D.13144
	testb	%al, %al	# D.13144
	je	.L420	#,
	.loc 1 1680 0
	movq	-40(%rbp), %rax	# b, tmp282
	movl	88(%rax), %eax	# b_13->index, D.13141
	addl	$1, %eax	#, tmp283
	movl	%eax, -48(%rbp)	# tmp283, i
	jmp	.L401	#
.L420:
	.loc 1 1682 0
	movb	$1, -51(%rbp)	#, changed
.L401:
.LBE30:
	.loc 1 1560 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.102
	cmpl	%eax, -48(%rbp)	# n_basic_blocks.102, i
	jl	.L421	#,
	.loc 1 1685 0
	movl	-68(%rbp), %eax	# mode, tmp284
	andl	$2, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L422	#,
	.loc 1 1686 0
	movl	-68(%rbp), %eax	# mode, tmp285
	movl	$entry_exit_blocks+112, %esi	#,
	movl	%eax, %edi	# tmp285,
	call	try_crossjump_bb	#
	testb	%al, %al	# D.13144
	je	.L422	#,
	.loc 1 1687 0
	movb	$1, -51(%rbp)	#, changed
.L422:
	.loc 1 1694 0
	movzbl	-52(%rbp), %edx	# changed_overall, D.13141
	movzbl	-51(%rbp), %eax	# changed, D.13141
	orl	%edx, %eax	# D.13141, D.13141
	testl	%eax, %eax	# D.13141
	setne	%al	#, tmp286
	movb	%al, -52(%rbp)	# tmp286, changed_overall
	.loc 1 1696 0
	cmpb	$0, -51(%rbp)	#, changed
	jne	.L423	#,
.L399:
	.loc 1 1699 0
	movl	-68(%rbp), %eax	# mode, tmp287
	andl	$2, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L424	#,
	.loc 1 1700 0
	call	remove_fake_edges	#
.L424:
	.loc 1 1702 0
	movl	-68(%rbp), %eax	# mode, tmp288
	andl	$32, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L425	#,
	.loc 1 1702 0 is_stmt 0 discriminator 1
	cmpb	$0, -52(%rbp)	#, changed_overall
	je	.L425	#,
.LBB32:
	.loc 1 1704 0 is_stmt 1
	movb	$0, -49(%rbp)	#, found
	.loc 1 1706 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.103
	movl	%eax, %edi	# n_basic_blocks.104,
	call	sbitmap_alloc	#
	movq	%rax, -8(%rbp)	# tmp289, blocks
	.loc 1 1707 0
	movq	-8(%rbp), %rax	# blocks, tmp290
	movq	%rax, %rdi	# tmp290,
	call	sbitmap_zero	#
	.loc 1 1708 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L426	#
.L428:
	.loc 1 1709 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.105
	movl	-48(%rbp), %edx	# i, tmp292
	movslq	%edx, %rdx	# tmp292, tmp291
	addq	$4, %rdx	#, tmp293
	movq	(%rax,%rdx,8), %rax	# basic_block_info.105_178->data.bb, D.13142
	movq	80(%rax), %rax	# _179->aux, D.13148
	andl	$1, %eax	#, D.13150
	testl	%eax, %eax	# D.13150
	je	.L427	#,
	.loc 1 1711 0
	movb	$1, -49(%rbp)	#, found
	.loc 1 1712 0
	movl	-48(%rbp), %eax	# i, i.106
	shrl	$6, %eax	#, D.13150
	movq	-8(%rbp), %rdx	# blocks, tmp294
	movl	%eax, %ecx	# D.13150, tmp295
	addq	$2, %rcx	#, tmp296
	movq	(%rdx,%rcx,8), %rdx	# blocks_175->elms, D.13151
	movl	-48(%rbp), %ecx	# i, tmp297
	andl	$63, %ecx	#, D.13141
	movl	$1, %esi	#, tmp298
	salq	%cl, %rsi	# D.13141, D.13151
	movq	%rsi, %rcx	# D.13151, D.13151
	orq	%rdx, %rcx	# D.13151, D.13151
	movq	-8(%rbp), %rdx	# blocks, tmp299
	movl	%eax, %eax	# D.13150, tmp300
	addq	$2, %rax	#, tmp301
	movq	%rcx, (%rdx,%rax,8)	# D.13151, blocks_175->elms
.L427:
	.loc 1 1708 0
	addl	$1, -48(%rbp)	#, i
.L426:
	.loc 1 1708 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.107
	cmpl	%eax, -48(%rbp)	# n_basic_blocks.107, i
	jl	.L428	#,
	.loc 1 1715 0 is_stmt 1
	cmpb	$0, -49(%rbp)	#, found
	je	.L429	#,
	.loc 1 1716 0
	movq	-8(%rbp), %rax	# blocks, tmp302
	movl	$25, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp302,
	call	update_life_info	#
.L429:
	.loc 1 1719 0
	movq	-8(%rbp), %rax	# blocks, tmp303
	movq	%rax, %rdi	# tmp303,
	call	free	#
.L425:
.LBE32:
	.loc 1 1722 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L430	#
.L431:
	.loc 1 1723 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.108
	movl	-48(%rbp), %edx	# i, tmp305
	movslq	%edx, %rdx	# tmp305, tmp304
	addq	$4, %rdx	#, tmp306
	movq	(%rax,%rdx,8), %rax	# basic_block_info.108_194->data.bb, D.13142
	movq	$0, 80(%rax)	#, _195->aux
	.loc 1 1722 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L430:
	.loc 1 1722 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.109
	cmpl	%eax, -48(%rbp)	# n_basic_blocks.109, i
	jl	.L431	#,
	.loc 1 1725 0 is_stmt 1
	movzbl	-52(%rbp), %eax	# changed_overall, D.13144
	.loc 1 1726 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	try_optimize_cfg, .-try_optimize_cfg
	.type	delete_unreachable_blocks, @function
delete_unreachable_blocks:
.LFB19:
	.loc 1 1732 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1734 0
	movb	$0, -17(%rbp)	#, changed
	.loc 1 1736 0
	call	find_unreachable_blocks	#
	.loc 1 1742 0
	movl	$0, -12(%rbp)	#, j
	movl	-12(%rbp), %eax	# j, tmp69
	movl	%eax, -16(%rbp)	# tmp69, i
	jmp	.L434	#
.L437:
.LBB33:
	.loc 1 1744 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.110
	movl	-16(%rbp), %edx	# i, tmp71
	movslq	%edx, %rdx	# tmp71, tmp70
	addq	$4, %rdx	#, tmp72
	movq	(%rax,%rdx,8), %rax	# basic_block_info.110_10->data.bb, tmp73
	movq	%rax, -8(%rbp)	# tmp73, b
	.loc 1 1746 0
	movq	-8(%rbp), %rax	# b, tmp74
	movl	108(%rax), %eax	# b_11->flags, D.13156
	andl	$1, %eax	#, D.13156
	testl	%eax, %eax	# D.13156
	jne	.L435	#,
	.loc 1 1748 0
	movq	-8(%rbp), %rax	# b, tmp75
	movq	%rax, %rdi	# tmp75,
	call	flow_delete_block_noexpunge	#
	.loc 1 1749 0
	movq	-8(%rbp), %rax	# b, tmp76
	movq	%rax, %rdi	# tmp76,
	call	expunge_block_nocompact	#
	.loc 1 1750 0
	movb	$1, -17(%rbp)	#, changed
	jmp	.L436	#
.L435:
	.loc 1 1754 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.111
	movl	-12(%rbp), %edx	# j, tmp78
	movslq	%edx, %rdx	# tmp78, tmp77
	leaq	4(%rdx), %rcx	#, tmp79
	movq	-8(%rbp), %rdx	# b, tmp80
	movq	%rdx, (%rax,%rcx,8)	# tmp80, basic_block_info.111_15->data.bb
	.loc 1 1755 0
	movl	-12(%rbp), %eax	# j, j.112
	leal	1(%rax), %edx	#, tmp81
	movl	%edx, -12(%rbp)	# tmp81, j
	movq	-8(%rbp), %rdx	# b, tmp82
	movl	%eax, 88(%rdx)	# j.112, b_11->index
.L436:
.LBE33:
	.loc 1 1742 0
	addl	$1, -16(%rbp)	#, i
.L434:
	.loc 1 1742 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.113
	cmpl	%eax, -16(%rbp)	# n_basic_blocks.113, i
	jl	.L437	#,
	.loc 1 1758 0 is_stmt 1
	movl	-12(%rbp), %eax	# j, tmp83
	movl	%eax, n_basic_blocks(%rip)	# tmp83, n_basic_blocks
	.loc 1 1759 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.114
	movl	-12(%rbp), %edx	# j, tmp84
	movslq	%edx, %rdx	# tmp84, D.13157
	movq	%rdx, (%rax)	# D.13157, basic_block_info.114_19->num_elements
	.loc 1 1761 0
	cmpb	$0, -17(%rbp)	#, changed
	je	.L438	#,
	.loc 1 1762 0
	call	tidy_fallthru_edges	#
.L438:
	.loc 1 1763 0
	movzbl	-17(%rbp), %eax	# changed, D.13158
	.loc 1 1764 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	delete_unreachable_blocks, .-delete_unreachable_blocks
	.globl	cleanup_cfg
	.type	cleanup_cfg, @function
cleanup_cfg:
.LFB20:
	.loc 1 1771 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	.loc 1 1772 0
	movb	$0, -1(%rbp)	#, changed
	.loc 1 1774 0
	movl	$4, %edi	#,
	call	timevar_push	#
	.loc 1 1775 0
	call	delete_unreachable_blocks	#
	movb	%al, -1(%rbp)	# tmp62, changed
	.loc 1 1776 0
	movl	-20(%rbp), %eax	# mode, tmp63
	movl	%eax, %edi	# tmp63,
	call	try_optimize_cfg	#
	testb	%al, %al	# D.13159
	je	.L441	#,
	.loc 1 1777 0
	call	delete_unreachable_blocks	#
	movb	$1, -1(%rbp)	#, changed
.L441:
	.loc 1 1780 0
	movl	$label_value_list, %edi	#,
	call	free_EXPR_LIST_list	#
	.loc 1 1781 0
	movl	$tail_recursion_label_list, %edi	#,
	call	free_EXPR_LIST_list	#
	.loc 1 1782 0
	movl	$4, %edi	#,
	call	timevar_pop	#
	.loc 1 1784 0
	movzbl	-1(%rbp), %eax	# changed, D.13159
	.loc 1 1785 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	cleanup_cfg, .-cleanup_cfg
	.section	.rodata
	.align 16
	.type	__FUNCTION__.10860, @object
	.size	__FUNCTION__.10860, 18
__FUNCTION__.10860:
	.string	"try_forward_edges"
	.align 32
	.type	__FUNCTION__.10906, @object
	.size	__FUNCTION__.10906, 38
__FUNCTION__.10906:
	.string	"merge_blocks_move_predecessor_nojumps"
	.align 32
	.type	__FUNCTION__.10913, @object
	.size	__FUNCTION__.10913, 36
__FUNCTION__.10913:
	.string	"merge_blocks_move_successor_nojumps"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "machmode.h"
	.file 9 "cselib.h"
	.file 10 "bitmap.h"
	.file 11 "basic-block.h"
	.file 12 "hard-reg-set.h"
	.file 13 "sbitmap.h"
	.file 14 "varray.h"
	.file 15 "target.h"
	.file 16 "i386.h"
	.file 17 "output.h"
	.file 18 "flags.h"
	.file 19 "timevar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x29ea
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF645
	.byte	0x1
	.long	.LASF646
	.long	.LASF647
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
	.long	0x147
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xc4a
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
	.long	0xc5a
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
	.long	.LASF648
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF18
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.byte	0xd4
	.long	0x162
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF20
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF21
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF22
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF23
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF24
	.uleb128 0x7
	.long	.LASF25
	.byte	0x5
	.byte	0x8c
	.long	0x150
	.uleb128 0x7
	.long	.LASF26
	.byte	0x5
	.byte	0x8d
	.long	0x150
	.uleb128 0x3
	.byte	0x8
	.long	0x1a1
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF27
	.uleb128 0x7
	.long	.LASF28
	.byte	0x6
	.byte	0x30
	.long	0x1b3
	.uleb128 0x4
	.long	.LASF29
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x334
	.uleb128 0x8
	.long	.LASF30
	.byte	0x7
	.byte	0xf7
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.byte	0xfc
	.long	0x19b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF32
	.byte	0x7
	.byte	0xfd
	.long	0x19b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF33
	.byte	0x7
	.byte	0xfe
	.long	0x19b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0x19b
	.byte	0x20
	.uleb128 0xd
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0x19b
	.byte	0x28
	.uleb128 0xd
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0x19b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0x19b
	.byte	0x38
	.uleb128 0xd
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0x19b
	.byte	0x40
	.uleb128 0xd
	.long	.LASF39
	.byte	0x7
	.value	0x105
	.long	0x19b
	.byte	0x48
	.uleb128 0xd
	.long	.LASF40
	.byte	0x7
	.value	0x106
	.long	0x19b
	.byte	0x50
	.uleb128 0xd
	.long	.LASF41
	.byte	0x7
	.value	0x107
	.long	0x19b
	.byte	0x58
	.uleb128 0xd
	.long	.LASF42
	.byte	0x7
	.value	0x109
	.long	0x36c
	.byte	0x60
	.uleb128 0xd
	.long	.LASF43
	.byte	0x7
	.value	0x10b
	.long	0x372
	.byte	0x68
	.uleb128 0xd
	.long	.LASF44
	.byte	0x7
	.value	0x10d
	.long	0x139
	.byte	0x70
	.uleb128 0xd
	.long	.LASF45
	.byte	0x7
	.value	0x111
	.long	0x139
	.byte	0x74
	.uleb128 0xd
	.long	.LASF46
	.byte	0x7
	.value	0x113
	.long	0x185
	.byte	0x78
	.uleb128 0xd
	.long	.LASF47
	.byte	0x7
	.value	0x117
	.long	0x170
	.byte	0x80
	.uleb128 0xd
	.long	.LASF48
	.byte	0x7
	.value	0x118
	.long	0x177
	.byte	0x82
	.uleb128 0xd
	.long	.LASF49
	.byte	0x7
	.value	0x119
	.long	0x378
	.byte	0x83
	.uleb128 0xd
	.long	.LASF50
	.byte	0x7
	.value	0x11d
	.long	0x388
	.byte	0x88
	.uleb128 0xd
	.long	.LASF51
	.byte	0x7
	.value	0x126
	.long	0x190
	.byte	0x90
	.uleb128 0xd
	.long	.LASF52
	.byte	0x7
	.value	0x12f
	.long	0x14e
	.byte	0x98
	.uleb128 0xd
	.long	.LASF53
	.byte	0x7
	.value	0x130
	.long	0x14e
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x7
	.value	0x131
	.long	0x14e
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF55
	.byte	0x7
	.value	0x132
	.long	0x14e
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF56
	.byte	0x7
	.value	0x133
	.long	0x157
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF57
	.byte	0x7
	.value	0x135
	.long	0x139
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF58
	.byte	0x7
	.value	0x137
	.long	0x38e
	.byte	0xc4
	.byte	0
	.uleb128 0xe
	.long	.LASF649
	.byte	0x7
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF59
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x36c
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0xa2
	.long	0x36c
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0xa3
	.long	0x372
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0xa7
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x33b
	.uleb128 0x3
	.byte	0x8
	.long	0x1b3
	.uleb128 0xf
	.long	0x1a1
	.long	0x388
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x334
	.uleb128 0xf
	.long	0x1a1
	.long	0x39e
	.uleb128 0x10
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3a4
	.uleb128 0x11
	.long	0x1a1
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF63
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF64
	.uleb128 0x3
	.byte	0x8
	.long	0x139
	.uleb128 0x12
	.long	.LASF125
	.byte	0x4
	.byte	0x8
	.byte	0x1d
	.long	0x532
	.uleb128 0x13
	.long	.LASF65
	.sleb128 0
	.uleb128 0x13
	.long	.LASF66
	.sleb128 1
	.uleb128 0x13
	.long	.LASF67
	.sleb128 2
	.uleb128 0x13
	.long	.LASF68
	.sleb128 3
	.uleb128 0x13
	.long	.LASF69
	.sleb128 4
	.uleb128 0x13
	.long	.LASF70
	.sleb128 5
	.uleb128 0x13
	.long	.LASF71
	.sleb128 6
	.uleb128 0x13
	.long	.LASF72
	.sleb128 7
	.uleb128 0x13
	.long	.LASF73
	.sleb128 8
	.uleb128 0x13
	.long	.LASF74
	.sleb128 9
	.uleb128 0x13
	.long	.LASF75
	.sleb128 10
	.uleb128 0x13
	.long	.LASF76
	.sleb128 11
	.uleb128 0x13
	.long	.LASF77
	.sleb128 12
	.uleb128 0x13
	.long	.LASF78
	.sleb128 13
	.uleb128 0x13
	.long	.LASF79
	.sleb128 14
	.uleb128 0x13
	.long	.LASF80
	.sleb128 15
	.uleb128 0x13
	.long	.LASF81
	.sleb128 16
	.uleb128 0x13
	.long	.LASF82
	.sleb128 17
	.uleb128 0x13
	.long	.LASF83
	.sleb128 18
	.uleb128 0x13
	.long	.LASF84
	.sleb128 19
	.uleb128 0x13
	.long	.LASF85
	.sleb128 20
	.uleb128 0x13
	.long	.LASF86
	.sleb128 21
	.uleb128 0x13
	.long	.LASF87
	.sleb128 22
	.uleb128 0x13
	.long	.LASF88
	.sleb128 23
	.uleb128 0x13
	.long	.LASF89
	.sleb128 24
	.uleb128 0x13
	.long	.LASF90
	.sleb128 25
	.uleb128 0x13
	.long	.LASF91
	.sleb128 26
	.uleb128 0x13
	.long	.LASF92
	.sleb128 27
	.uleb128 0x13
	.long	.LASF93
	.sleb128 28
	.uleb128 0x13
	.long	.LASF94
	.sleb128 29
	.uleb128 0x13
	.long	.LASF95
	.sleb128 30
	.uleb128 0x13
	.long	.LASF96
	.sleb128 31
	.uleb128 0x13
	.long	.LASF97
	.sleb128 32
	.uleb128 0x13
	.long	.LASF98
	.sleb128 33
	.uleb128 0x13
	.long	.LASF99
	.sleb128 34
	.uleb128 0x13
	.long	.LASF100
	.sleb128 35
	.uleb128 0x13
	.long	.LASF101
	.sleb128 36
	.uleb128 0x13
	.long	.LASF102
	.sleb128 37
	.uleb128 0x13
	.long	.LASF103
	.sleb128 38
	.uleb128 0x13
	.long	.LASF104
	.sleb128 39
	.uleb128 0x13
	.long	.LASF105
	.sleb128 40
	.uleb128 0x13
	.long	.LASF106
	.sleb128 41
	.uleb128 0x13
	.long	.LASF107
	.sleb128 42
	.uleb128 0x13
	.long	.LASF108
	.sleb128 43
	.uleb128 0x13
	.long	.LASF109
	.sleb128 44
	.uleb128 0x13
	.long	.LASF110
	.sleb128 45
	.uleb128 0x13
	.long	.LASF111
	.sleb128 46
	.uleb128 0x13
	.long	.LASF112
	.sleb128 47
	.uleb128 0x13
	.long	.LASF113
	.sleb128 48
	.uleb128 0x13
	.long	.LASF114
	.sleb128 49
	.uleb128 0x13
	.long	.LASF115
	.sleb128 50
	.uleb128 0x13
	.long	.LASF116
	.sleb128 51
	.uleb128 0x13
	.long	.LASF117
	.sleb128 52
	.uleb128 0x13
	.long	.LASF118
	.sleb128 53
	.uleb128 0x13
	.long	.LASF119
	.sleb128 54
	.uleb128 0x13
	.long	.LASF120
	.sleb128 55
	.uleb128 0x13
	.long	.LASF121
	.sleb128 56
	.uleb128 0x13
	.long	.LASF122
	.sleb128 57
	.uleb128 0x13
	.long	.LASF123
	.sleb128 58
	.uleb128 0x13
	.long	.LASF124
	.sleb128 59
	.byte	0
	.uleb128 0x12
	.long	.LASF126
	.byte	0x4
	.byte	0x8
	.byte	0x2c
	.long	0x57b
	.uleb128 0x13
	.long	.LASF127
	.sleb128 0
	.uleb128 0x13
	.long	.LASF128
	.sleb128 1
	.uleb128 0x13
	.long	.LASF129
	.sleb128 2
	.uleb128 0x13
	.long	.LASF130
	.sleb128 3
	.uleb128 0x13
	.long	.LASF131
	.sleb128 4
	.uleb128 0x13
	.long	.LASF132
	.sleb128 5
	.uleb128 0x13
	.long	.LASF133
	.sleb128 6
	.uleb128 0x13
	.long	.LASF134
	.sleb128 7
	.uleb128 0x13
	.long	.LASF135
	.sleb128 8
	.uleb128 0x13
	.long	.LASF136
	.sleb128 9
	.byte	0
	.uleb128 0x12
	.long	.LASF137
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x977
	.uleb128 0x13
	.long	.LASF138
	.sleb128 0
	.uleb128 0x14
	.string	"NIL"
	.sleb128 1
	.uleb128 0x13
	.long	.LASF139
	.sleb128 2
	.uleb128 0x13
	.long	.LASF140
	.sleb128 3
	.uleb128 0x13
	.long	.LASF141
	.sleb128 4
	.uleb128 0x13
	.long	.LASF142
	.sleb128 5
	.uleb128 0x13
	.long	.LASF143
	.sleb128 6
	.uleb128 0x13
	.long	.LASF144
	.sleb128 7
	.uleb128 0x13
	.long	.LASF145
	.sleb128 8
	.uleb128 0x13
	.long	.LASF146
	.sleb128 9
	.uleb128 0x13
	.long	.LASF147
	.sleb128 10
	.uleb128 0x13
	.long	.LASF148
	.sleb128 11
	.uleb128 0x13
	.long	.LASF149
	.sleb128 12
	.uleb128 0x13
	.long	.LASF150
	.sleb128 13
	.uleb128 0x13
	.long	.LASF151
	.sleb128 14
	.uleb128 0x13
	.long	.LASF152
	.sleb128 15
	.uleb128 0x13
	.long	.LASF153
	.sleb128 16
	.uleb128 0x13
	.long	.LASF154
	.sleb128 17
	.uleb128 0x13
	.long	.LASF155
	.sleb128 18
	.uleb128 0x13
	.long	.LASF156
	.sleb128 19
	.uleb128 0x13
	.long	.LASF157
	.sleb128 20
	.uleb128 0x13
	.long	.LASF158
	.sleb128 21
	.uleb128 0x13
	.long	.LASF159
	.sleb128 22
	.uleb128 0x13
	.long	.LASF160
	.sleb128 23
	.uleb128 0x13
	.long	.LASF161
	.sleb128 24
	.uleb128 0x13
	.long	.LASF162
	.sleb128 25
	.uleb128 0x13
	.long	.LASF163
	.sleb128 26
	.uleb128 0x13
	.long	.LASF164
	.sleb128 27
	.uleb128 0x13
	.long	.LASF165
	.sleb128 28
	.uleb128 0x13
	.long	.LASF166
	.sleb128 29
	.uleb128 0x13
	.long	.LASF167
	.sleb128 30
	.uleb128 0x13
	.long	.LASF168
	.sleb128 31
	.uleb128 0x13
	.long	.LASF169
	.sleb128 32
	.uleb128 0x13
	.long	.LASF170
	.sleb128 33
	.uleb128 0x13
	.long	.LASF171
	.sleb128 34
	.uleb128 0x13
	.long	.LASF172
	.sleb128 35
	.uleb128 0x13
	.long	.LASF173
	.sleb128 36
	.uleb128 0x13
	.long	.LASF174
	.sleb128 37
	.uleb128 0x13
	.long	.LASF175
	.sleb128 38
	.uleb128 0x13
	.long	.LASF176
	.sleb128 39
	.uleb128 0x13
	.long	.LASF177
	.sleb128 40
	.uleb128 0x13
	.long	.LASF178
	.sleb128 41
	.uleb128 0x13
	.long	.LASF179
	.sleb128 42
	.uleb128 0x13
	.long	.LASF180
	.sleb128 43
	.uleb128 0x13
	.long	.LASF181
	.sleb128 44
	.uleb128 0x13
	.long	.LASF182
	.sleb128 45
	.uleb128 0x13
	.long	.LASF183
	.sleb128 46
	.uleb128 0x14
	.string	"SET"
	.sleb128 47
	.uleb128 0x14
	.string	"USE"
	.sleb128 48
	.uleb128 0x13
	.long	.LASF184
	.sleb128 49
	.uleb128 0x13
	.long	.LASF185
	.sleb128 50
	.uleb128 0x13
	.long	.LASF186
	.sleb128 51
	.uleb128 0x13
	.long	.LASF187
	.sleb128 52
	.uleb128 0x13
	.long	.LASF188
	.sleb128 53
	.uleb128 0x13
	.long	.LASF189
	.sleb128 54
	.uleb128 0x13
	.long	.LASF190
	.sleb128 55
	.uleb128 0x13
	.long	.LASF191
	.sleb128 56
	.uleb128 0x13
	.long	.LASF192
	.sleb128 57
	.uleb128 0x13
	.long	.LASF193
	.sleb128 58
	.uleb128 0x14
	.string	"PC"
	.sleb128 59
	.uleb128 0x13
	.long	.LASF194
	.sleb128 60
	.uleb128 0x14
	.string	"REG"
	.sleb128 61
	.uleb128 0x13
	.long	.LASF195
	.sleb128 62
	.uleb128 0x13
	.long	.LASF196
	.sleb128 63
	.uleb128 0x13
	.long	.LASF197
	.sleb128 64
	.uleb128 0x13
	.long	.LASF198
	.sleb128 65
	.uleb128 0x14
	.string	"MEM"
	.sleb128 66
	.uleb128 0x13
	.long	.LASF199
	.sleb128 67
	.uleb128 0x13
	.long	.LASF200
	.sleb128 68
	.uleb128 0x14
	.string	"CC0"
	.sleb128 69
	.uleb128 0x13
	.long	.LASF201
	.sleb128 70
	.uleb128 0x13
	.long	.LASF202
	.sleb128 71
	.uleb128 0x13
	.long	.LASF203
	.sleb128 72
	.uleb128 0x13
	.long	.LASF204
	.sleb128 73
	.uleb128 0x13
	.long	.LASF205
	.sleb128 74
	.uleb128 0x13
	.long	.LASF206
	.sleb128 75
	.uleb128 0x13
	.long	.LASF207
	.sleb128 76
	.uleb128 0x14
	.string	"NEG"
	.sleb128 77
	.uleb128 0x13
	.long	.LASF208
	.sleb128 78
	.uleb128 0x14
	.string	"DIV"
	.sleb128 79
	.uleb128 0x14
	.string	"MOD"
	.sleb128 80
	.uleb128 0x13
	.long	.LASF209
	.sleb128 81
	.uleb128 0x13
	.long	.LASF210
	.sleb128 82
	.uleb128 0x14
	.string	"AND"
	.sleb128 83
	.uleb128 0x14
	.string	"IOR"
	.sleb128 84
	.uleb128 0x14
	.string	"XOR"
	.sleb128 85
	.uleb128 0x14
	.string	"NOT"
	.sleb128 86
	.uleb128 0x13
	.long	.LASF211
	.sleb128 87
	.uleb128 0x13
	.long	.LASF212
	.sleb128 88
	.uleb128 0x13
	.long	.LASF213
	.sleb128 89
	.uleb128 0x13
	.long	.LASF214
	.sleb128 90
	.uleb128 0x13
	.long	.LASF215
	.sleb128 91
	.uleb128 0x13
	.long	.LASF216
	.sleb128 92
	.uleb128 0x13
	.long	.LASF217
	.sleb128 93
	.uleb128 0x13
	.long	.LASF218
	.sleb128 94
	.uleb128 0x13
	.long	.LASF219
	.sleb128 95
	.uleb128 0x13
	.long	.LASF220
	.sleb128 96
	.uleb128 0x13
	.long	.LASF221
	.sleb128 97
	.uleb128 0x13
	.long	.LASF222
	.sleb128 98
	.uleb128 0x13
	.long	.LASF223
	.sleb128 99
	.uleb128 0x13
	.long	.LASF224
	.sleb128 100
	.uleb128 0x13
	.long	.LASF225
	.sleb128 101
	.uleb128 0x14
	.string	"NE"
	.sleb128 102
	.uleb128 0x14
	.string	"EQ"
	.sleb128 103
	.uleb128 0x14
	.string	"GE"
	.sleb128 104
	.uleb128 0x14
	.string	"GT"
	.sleb128 105
	.uleb128 0x14
	.string	"LE"
	.sleb128 106
	.uleb128 0x14
	.string	"LT"
	.sleb128 107
	.uleb128 0x14
	.string	"GEU"
	.sleb128 108
	.uleb128 0x14
	.string	"GTU"
	.sleb128 109
	.uleb128 0x14
	.string	"LEU"
	.sleb128 110
	.uleb128 0x14
	.string	"LTU"
	.sleb128 111
	.uleb128 0x13
	.long	.LASF226
	.sleb128 112
	.uleb128 0x13
	.long	.LASF227
	.sleb128 113
	.uleb128 0x13
	.long	.LASF228
	.sleb128 114
	.uleb128 0x13
	.long	.LASF229
	.sleb128 115
	.uleb128 0x13
	.long	.LASF230
	.sleb128 116
	.uleb128 0x13
	.long	.LASF231
	.sleb128 117
	.uleb128 0x13
	.long	.LASF232
	.sleb128 118
	.uleb128 0x13
	.long	.LASF233
	.sleb128 119
	.uleb128 0x13
	.long	.LASF234
	.sleb128 120
	.uleb128 0x13
	.long	.LASF235
	.sleb128 121
	.uleb128 0x13
	.long	.LASF236
	.sleb128 122
	.uleb128 0x13
	.long	.LASF237
	.sleb128 123
	.uleb128 0x13
	.long	.LASF238
	.sleb128 124
	.uleb128 0x13
	.long	.LASF239
	.sleb128 125
	.uleb128 0x14
	.string	"FIX"
	.sleb128 126
	.uleb128 0x13
	.long	.LASF240
	.sleb128 127
	.uleb128 0x13
	.long	.LASF241
	.sleb128 128
	.uleb128 0x14
	.string	"ABS"
	.sleb128 129
	.uleb128 0x13
	.long	.LASF242
	.sleb128 130
	.uleb128 0x14
	.string	"FFS"
	.sleb128 131
	.uleb128 0x13
	.long	.LASF243
	.sleb128 132
	.uleb128 0x13
	.long	.LASF244
	.sleb128 133
	.uleb128 0x13
	.long	.LASF245
	.sleb128 134
	.uleb128 0x13
	.long	.LASF246
	.sleb128 135
	.uleb128 0x13
	.long	.LASF247
	.sleb128 136
	.uleb128 0x13
	.long	.LASF248
	.sleb128 137
	.uleb128 0x13
	.long	.LASF249
	.sleb128 138
	.uleb128 0x13
	.long	.LASF250
	.sleb128 139
	.uleb128 0x13
	.long	.LASF251
	.sleb128 140
	.uleb128 0x13
	.long	.LASF252
	.sleb128 141
	.uleb128 0x13
	.long	.LASF253
	.sleb128 142
	.uleb128 0x13
	.long	.LASF254
	.sleb128 143
	.uleb128 0x13
	.long	.LASF255
	.sleb128 144
	.uleb128 0x13
	.long	.LASF256
	.sleb128 145
	.uleb128 0x13
	.long	.LASF257
	.sleb128 146
	.uleb128 0x13
	.long	.LASF258
	.sleb128 147
	.uleb128 0x13
	.long	.LASF259
	.sleb128 148
	.uleb128 0x13
	.long	.LASF260
	.sleb128 149
	.uleb128 0x13
	.long	.LASF261
	.sleb128 150
	.uleb128 0x13
	.long	.LASF262
	.sleb128 151
	.uleb128 0x14
	.string	"PHI"
	.sleb128 152
	.uleb128 0x13
	.long	.LASF263
	.sleb128 153
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x9f8
	.uleb128 0x5
	.long	.LASF264
	.byte	0x2
	.byte	0x47
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF265
	.byte	0x2
	.byte	0x49
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF266
	.byte	0x2
	.byte	0x4a
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF267
	.byte	0x2
	.byte	0x4c
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF268
	.byte	0x2
	.byte	0x4e
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF269
	.byte	0x2
	.byte	0x50
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF270
	.byte	0x2
	.byte	0x53
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF271
	.byte	0x2
	.byte	0x55
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF272
	.byte	0x2
	.byte	0x56
	.long	0x977
	.uleb128 0x15
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xa48
	.uleb128 0x8
	.long	.LASF273
	.byte	0x2
	.byte	0x5e
	.long	0x150
	.byte	0
	.uleb128 0x8
	.long	.LASF274
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF275
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF276
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF277
	.byte	0x2
	.byte	0x62
	.long	0x147
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF278
	.byte	0x2
	.byte	0x63
	.long	0xa03
	.uleb128 0x16
	.long	.LASF400
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xaee
	.uleb128 0x17
	.long	.LASF279
	.byte	0x2
	.byte	0x69
	.long	0x150
	.uleb128 0x17
	.long	.LASF280
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x17
	.long	.LASF281
	.byte	0x2
	.byte	0x6b
	.long	0x147
	.uleb128 0x17
	.long	.LASF282
	.byte	0x2
	.byte	0x6c
	.long	0x39e
	.uleb128 0x18
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x17
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x17
	.long	.LASF283
	.byte	0x2
	.byte	0x6f
	.long	0x3bd
	.uleb128 0x17
	.long	.LASF284
	.byte	0x2
	.byte	0x70
	.long	0x9f8
	.uleb128 0x17
	.long	.LASF285
	.byte	0x2
	.byte	0x71
	.long	0xb29
	.uleb128 0x17
	.long	.LASF286
	.byte	0x2
	.byte	0x72
	.long	0xb60
	.uleb128 0x17
	.long	.LASF287
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x18
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xc33
	.uleb128 0x17
	.long	.LASF288
	.byte	0x2
	.byte	0x75
	.long	0xc39
	.byte	0
	.uleb128 0x4
	.long	.LASF289
	.byte	0x20
	.byte	0x9
	.byte	0x17
	.long	0xb29
	.uleb128 0x8
	.long	.LASF290
	.byte	0x9
	.byte	0x1a
	.long	0x147
	.byte	0
	.uleb128 0x6
	.string	"u"
	.byte	0x9
	.byte	0x21
	.long	0x13ef
	.byte	0x8
	.uleb128 0x8
	.long	.LASF291
	.byte	0x9
	.byte	0x25
	.long	0x143f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF292
	.byte	0x9
	.byte	0x28
	.long	0x116a
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xaee
	.uleb128 0x4
	.long	.LASF293
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xb60
	.uleb128 0x8
	.long	.LASF294
	.byte	0xa
	.byte	0x35
	.long	0xea0
	.byte	0
	.uleb128 0x8
	.long	.LASF295
	.byte	0xa
	.byte	0x36
	.long	0xea0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF296
	.byte	0xa
	.byte	0x37
	.long	0x147
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xb2f
	.uleb128 0x4
	.long	.LASF297
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xc33
	.uleb128 0x8
	.long	.LASF298
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
	.long	.LASF299
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF300
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF301
	.byte	0xb
	.byte	0xb7
	.long	0x128f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF302
	.byte	0xb
	.byte	0xb7
	.long	0x128f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF303
	.byte	0xb
	.byte	0xbc
	.long	0x11fa
	.byte	0x30
	.uleb128 0x8
	.long	.LASF304
	.byte	0xb
	.byte	0xc0
	.long	0x11fa
	.byte	0x38
	.uleb128 0x8
	.long	.LASF305
	.byte	0xb
	.byte	0xc6
	.long	0x11fa
	.byte	0x40
	.uleb128 0x8
	.long	.LASF306
	.byte	0xb
	.byte	0xc8
	.long	0x11fa
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x14e
	.byte	0x50
	.uleb128 0x8
	.long	.LASF307
	.byte	0xb
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF308
	.byte	0xb
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF309
	.byte	0xb
	.byte	0xd4
	.long	0x1205
	.byte	0x60
	.uleb128 0x8
	.long	.LASF310
	.byte	0xb
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF311
	.byte	0xb
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xb66
	.uleb128 0x3
	.byte	0x8
	.long	0xa48
	.uleb128 0x7
	.long	.LASF312
	.byte	0x2
	.byte	0x76
	.long	0xa53
	.uleb128 0xf
	.long	0xc3f
	.long	0xc5a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2d
	.long	0xc6a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF313
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xd2c
	.uleb128 0x13
	.long	.LASF314
	.sleb128 1
	.uleb128 0x13
	.long	.LASF315
	.sleb128 2
	.uleb128 0x13
	.long	.LASF316
	.sleb128 3
	.uleb128 0x13
	.long	.LASF317
	.sleb128 4
	.uleb128 0x13
	.long	.LASF318
	.sleb128 5
	.uleb128 0x13
	.long	.LASF319
	.sleb128 6
	.uleb128 0x13
	.long	.LASF320
	.sleb128 7
	.uleb128 0x13
	.long	.LASF321
	.sleb128 8
	.uleb128 0x13
	.long	.LASF322
	.sleb128 9
	.uleb128 0x13
	.long	.LASF323
	.sleb128 10
	.uleb128 0x13
	.long	.LASF324
	.sleb128 11
	.uleb128 0x13
	.long	.LASF325
	.sleb128 12
	.uleb128 0x13
	.long	.LASF326
	.sleb128 13
	.uleb128 0x13
	.long	.LASF327
	.sleb128 14
	.uleb128 0x13
	.long	.LASF328
	.sleb128 15
	.uleb128 0x13
	.long	.LASF329
	.sleb128 16
	.uleb128 0x13
	.long	.LASF330
	.sleb128 17
	.uleb128 0x13
	.long	.LASF331
	.sleb128 18
	.uleb128 0x13
	.long	.LASF332
	.sleb128 19
	.uleb128 0x13
	.long	.LASF333
	.sleb128 20
	.uleb128 0x13
	.long	.LASF334
	.sleb128 21
	.uleb128 0x13
	.long	.LASF335
	.sleb128 22
	.uleb128 0x13
	.long	.LASF336
	.sleb128 23
	.uleb128 0x13
	.long	.LASF337
	.sleb128 24
	.uleb128 0x13
	.long	.LASF338
	.sleb128 25
	.uleb128 0x13
	.long	.LASF339
	.sleb128 26
	.uleb128 0x13
	.long	.LASF340
	.sleb128 27
	.uleb128 0x13
	.long	.LASF341
	.sleb128 28
	.uleb128 0x13
	.long	.LASF342
	.sleb128 29
	.uleb128 0x13
	.long	.LASF343
	.sleb128 30
	.byte	0
	.uleb128 0x19
	.long	.LASF344
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xddb
	.uleb128 0x13
	.long	.LASF345
	.sleb128 -100
	.uleb128 0x13
	.long	.LASF346
	.sleb128 -99
	.uleb128 0x13
	.long	.LASF347
	.sleb128 -98
	.uleb128 0x13
	.long	.LASF348
	.sleb128 -97
	.uleb128 0x13
	.long	.LASF349
	.sleb128 -96
	.uleb128 0x13
	.long	.LASF350
	.sleb128 -95
	.uleb128 0x13
	.long	.LASF351
	.sleb128 -94
	.uleb128 0x13
	.long	.LASF352
	.sleb128 -93
	.uleb128 0x13
	.long	.LASF353
	.sleb128 -92
	.uleb128 0x13
	.long	.LASF354
	.sleb128 -91
	.uleb128 0x13
	.long	.LASF355
	.sleb128 -90
	.uleb128 0x13
	.long	.LASF356
	.sleb128 -89
	.uleb128 0x13
	.long	.LASF357
	.sleb128 -88
	.uleb128 0x13
	.long	.LASF358
	.sleb128 -87
	.uleb128 0x13
	.long	.LASF359
	.sleb128 -86
	.uleb128 0x13
	.long	.LASF360
	.sleb128 -85
	.uleb128 0x13
	.long	.LASF361
	.sleb128 -84
	.uleb128 0x13
	.long	.LASF362
	.sleb128 -83
	.uleb128 0x13
	.long	.LASF363
	.sleb128 -82
	.uleb128 0x13
	.long	.LASF364
	.sleb128 -81
	.uleb128 0x13
	.long	.LASF365
	.sleb128 -80
	.uleb128 0x13
	.long	.LASF366
	.sleb128 -79
	.uleb128 0x13
	.long	.LASF367
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0x19
	.long	.LASF368
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xe37
	.uleb128 0x13
	.long	.LASF369
	.sleb128 0
	.uleb128 0x13
	.long	.LASF370
	.sleb128 1
	.uleb128 0x13
	.long	.LASF371
	.sleb128 2
	.uleb128 0x13
	.long	.LASF372
	.sleb128 3
	.uleb128 0x13
	.long	.LASF373
	.sleb128 4
	.uleb128 0x13
	.long	.LASF374
	.sleb128 5
	.uleb128 0x13
	.long	.LASF375
	.sleb128 6
	.uleb128 0x13
	.long	.LASF376
	.sleb128 7
	.uleb128 0x13
	.long	.LASF377
	.sleb128 8
	.uleb128 0x13
	.long	.LASF378
	.sleb128 9
	.uleb128 0x13
	.long	.LASF379
	.sleb128 10
	.uleb128 0x13
	.long	.LASF380
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF381
	.byte	0xc
	.byte	0x29
	.long	0x162
	.uleb128 0x4
	.long	.LASF382
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0xe7f
	.uleb128 0x8
	.long	.LASF383
	.byte	0xa
	.byte	0x2d
	.long	0xe7f
	.byte	0
	.uleb128 0x8
	.long	.LASF384
	.byte	0xa
	.byte	0x2e
	.long	0xe7f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF296
	.byte	0xa
	.byte	0x2f
	.long	0x147
	.byte	0x10
	.uleb128 0x8
	.long	.LASF385
	.byte	0xa
	.byte	0x30
	.long	0xe85
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe42
	.uleb128 0xf
	.long	0x162
	.long	0xe95
	.uleb128 0x10
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF386
	.byte	0xa
	.byte	0x31
	.long	0xe42
	.uleb128 0x3
	.byte	0x8
	.long	0xe95
	.uleb128 0x7
	.long	.LASF387
	.byte	0xa
	.byte	0x39
	.long	0xb60
	.uleb128 0x12
	.long	.LASF388
	.byte	0x4
	.byte	0xa
	.byte	0x3c
	.long	0xedc
	.uleb128 0x13
	.long	.LASF389
	.sleb128 0
	.uleb128 0x13
	.long	.LASF390
	.sleb128 1
	.uleb128 0x13
	.long	.LASF391
	.sleb128 2
	.uleb128 0x13
	.long	.LASF392
	.sleb128 3
	.uleb128 0x13
	.long	.LASF393
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF394
	.byte	0x18
	.byte	0xd
	.byte	0x1f
	.long	0xf19
	.uleb128 0x8
	.long	.LASF395
	.byte	0xd
	.byte	0x21
	.long	0x147
	.byte	0
	.uleb128 0x8
	.long	.LASF276
	.byte	0xd
	.byte	0x22
	.long	0x147
	.byte	0x4
	.uleb128 0x8
	.long	.LASF396
	.byte	0xd
	.byte	0x23
	.long	0x147
	.byte	0x8
	.uleb128 0x8
	.long	.LASF397
	.byte	0xd
	.byte	0x24
	.long	0xf19
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	0x162
	.long	0xf29
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF398
	.byte	0xd
	.byte	0x25
	.long	0xf34
	.uleb128 0x3
	.byte	0x8
	.long	0xedc
	.uleb128 0x4
	.long	.LASF399
	.byte	0x10
	.byte	0xe
	.byte	0x24
	.long	0xf5f
	.uleb128 0x6
	.string	"rtx"
	.byte	0xe
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xe
	.byte	0x36
	.long	0x147
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.long	.LASF401
	.byte	0x10
	.byte	0xe
	.byte	0x3a
	.long	0x1044
	.uleb128 0x18
	.string	"c"
	.byte	0xe
	.byte	0x3b
	.long	0x378
	.uleb128 0x18
	.string	"uc"
	.byte	0xe
	.byte	0x3c
	.long	0x1044
	.uleb128 0x18
	.string	"s"
	.byte	0xe
	.byte	0x3d
	.long	0x1054
	.uleb128 0x18
	.string	"us"
	.byte	0xe
	.byte	0x3e
	.long	0x1064
	.uleb128 0x18
	.string	"i"
	.byte	0xe
	.byte	0x3f
	.long	0x1074
	.uleb128 0x18
	.string	"u"
	.byte	0xe
	.byte	0x40
	.long	0x1084
	.uleb128 0x18
	.string	"l"
	.byte	0xe
	.byte	0x41
	.long	0x1094
	.uleb128 0x18
	.string	"ul"
	.byte	0xe
	.byte	0x42
	.long	0xf19
	.uleb128 0x17
	.long	.LASF402
	.byte	0xe
	.byte	0x43
	.long	0x1094
	.uleb128 0x17
	.long	.LASF403
	.byte	0xe
	.byte	0x44
	.long	0xf19
	.uleb128 0x17
	.long	.LASF404
	.byte	0xe
	.byte	0x45
	.long	0x10a4
	.uleb128 0x17
	.long	.LASF405
	.byte	0xe
	.byte	0x46
	.long	0x10b4
	.uleb128 0x18
	.string	"rtx"
	.byte	0xe
	.byte	0x47
	.long	0x10c4
	.uleb128 0x17
	.long	.LASF10
	.byte	0xe
	.byte	0x48
	.long	0x10d4
	.uleb128 0x17
	.long	.LASF15
	.byte	0xe
	.byte	0x49
	.long	0x10e4
	.uleb128 0x17
	.long	.LASF387
	.byte	0xe
	.byte	0x4a
	.long	0x10f4
	.uleb128 0x17
	.long	.LASF406
	.byte	0xe
	.byte	0x4b
	.long	0x1104
	.uleb128 0x18
	.string	"reg"
	.byte	0xe
	.byte	0x4c
	.long	0x111f
	.uleb128 0x17
	.long	.LASF407
	.byte	0xe
	.byte	0x4d
	.long	0x113a
	.uleb128 0x18
	.string	"bb"
	.byte	0xe
	.byte	0x4e
	.long	0x114a
	.uleb128 0x18
	.string	"te"
	.byte	0xe
	.byte	0x4f
	.long	0x115a
	.byte	0
	.uleb128 0xf
	.long	0x169
	.long	0x1054
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x17e
	.long	0x1064
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x170
	.long	0x1074
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x139
	.long	0x1084
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x147
	.long	0x1094
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x150
	.long	0x10a4
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x14e
	.long	0x10b4
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x19b
	.long	0x10c4
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x38
	.long	0x10d4
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xf8
	.long	0x10e4
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x12e
	.long	0x10f4
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xb60
	.long	0x1104
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1114
	.long	0x1114
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x111a
	.uleb128 0x1a
	.long	.LASF408
	.uleb128 0xf
	.long	0x112f
	.long	0x112f
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1135
	.uleb128 0x1a
	.long	.LASF409
	.uleb128 0xf
	.long	0xf3a
	.long	0x114a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xc33
	.long	0x115a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x116a
	.long	0x116a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1170
	.uleb128 0x4
	.long	.LASF410
	.byte	0x10
	.byte	0x9
	.byte	0x37
	.long	0x1195
	.uleb128 0x8
	.long	.LASF383
	.byte	0x9
	.byte	0x39
	.long	0x116a
	.byte	0
	.uleb128 0x6
	.string	"elt"
	.byte	0x9
	.byte	0x3a
	.long	0x1450
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF411
	.byte	0xe
	.byte	0x50
	.long	0xf5f
	.uleb128 0x4
	.long	.LASF412
	.byte	0x30
	.byte	0xe
	.byte	0x53
	.long	0x11e9
	.uleb128 0x8
	.long	.LASF413
	.byte	0xe
	.byte	0x54
	.long	0x157
	.byte	0
	.uleb128 0x8
	.long	.LASF414
	.byte	0xe
	.byte	0x55
	.long	0x157
	.byte	0x8
	.uleb128 0x8
	.long	.LASF415
	.byte	0xe
	.byte	0x57
	.long	0x157
	.byte	0x10
	.uleb128 0x8
	.long	.LASF416
	.byte	0xe
	.byte	0x58
	.long	0x39e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF417
	.byte	0xe
	.byte	0x59
	.long	0x1195
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF418
	.byte	0xe
	.byte	0x5a
	.long	0x11f4
	.uleb128 0x3
	.byte	0x8
	.long	0x11a0
	.uleb128 0x7
	.long	.LASF419
	.byte	0xb
	.byte	0x21
	.long	0xea6
	.uleb128 0x7
	.long	.LASF420
	.byte	0xb
	.byte	0x74
	.long	0x150
	.uleb128 0x4
	.long	.LASF421
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x1289
	.uleb128 0x8
	.long	.LASF422
	.byte	0xb
	.byte	0x79
	.long	0x1289
	.byte	0
	.uleb128 0x8
	.long	.LASF423
	.byte	0xb
	.byte	0x79
	.long	0x1289
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xc33
	.byte	0x10
	.uleb128 0x8
	.long	.LASF424
	.byte	0xb
	.byte	0x7c
	.long	0xc33
	.byte	0x18
	.uleb128 0x8
	.long	.LASF425
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x14e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF311
	.byte	0xb
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF426
	.byte	0xb
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF309
	.byte	0xb
	.byte	0x86
	.long	0x1205
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1210
	.uleb128 0x7
	.long	.LASF427
	.byte	0xb
	.byte	0x88
	.long	0x1289
	.uleb128 0x7
	.long	.LASF428
	.byte	0xb
	.byte	0xdb
	.long	0xc33
	.uleb128 0x3
	.byte	0x8
	.long	0x128f
	.uleb128 0x19
	.long	.LASF429
	.byte	0x4
	.byte	0xb
	.value	0x223
	.long	0x12cb
	.uleb128 0x13
	.long	.LASF430
	.sleb128 0
	.uleb128 0x13
	.long	.LASF431
	.sleb128 1
	.uleb128 0x13
	.long	.LASF432
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.long	.LASF433
	.uleb128 0x1b
	.byte	0x4
	.byte	0x13
	.byte	0x48
	.long	0x13ef
	.uleb128 0x13
	.long	.LASF434
	.sleb128 0
	.uleb128 0x13
	.long	.LASF435
	.sleb128 1
	.uleb128 0x13
	.long	.LASF436
	.sleb128 2
	.uleb128 0x13
	.long	.LASF437
	.sleb128 3
	.uleb128 0x13
	.long	.LASF438
	.sleb128 4
	.uleb128 0x13
	.long	.LASF439
	.sleb128 5
	.uleb128 0x13
	.long	.LASF440
	.sleb128 6
	.uleb128 0x13
	.long	.LASF441
	.sleb128 7
	.uleb128 0x13
	.long	.LASF442
	.sleb128 8
	.uleb128 0x13
	.long	.LASF443
	.sleb128 9
	.uleb128 0x13
	.long	.LASF444
	.sleb128 10
	.uleb128 0x13
	.long	.LASF445
	.sleb128 11
	.uleb128 0x13
	.long	.LASF446
	.sleb128 12
	.uleb128 0x13
	.long	.LASF447
	.sleb128 13
	.uleb128 0x13
	.long	.LASF448
	.sleb128 14
	.uleb128 0x13
	.long	.LASF449
	.sleb128 15
	.uleb128 0x13
	.long	.LASF450
	.sleb128 16
	.uleb128 0x13
	.long	.LASF451
	.sleb128 17
	.uleb128 0x13
	.long	.LASF452
	.sleb128 18
	.uleb128 0x13
	.long	.LASF453
	.sleb128 19
	.uleb128 0x13
	.long	.LASF454
	.sleb128 20
	.uleb128 0x13
	.long	.LASF455
	.sleb128 21
	.uleb128 0x13
	.long	.LASF456
	.sleb128 22
	.uleb128 0x13
	.long	.LASF457
	.sleb128 23
	.uleb128 0x13
	.long	.LASF458
	.sleb128 24
	.uleb128 0x13
	.long	.LASF459
	.sleb128 25
	.uleb128 0x13
	.long	.LASF460
	.sleb128 26
	.uleb128 0x13
	.long	.LASF461
	.sleb128 27
	.uleb128 0x13
	.long	.LASF462
	.sleb128 28
	.uleb128 0x13
	.long	.LASF463
	.sleb128 29
	.uleb128 0x13
	.long	.LASF464
	.sleb128 30
	.uleb128 0x13
	.long	.LASF465
	.sleb128 31
	.uleb128 0x13
	.long	.LASF466
	.sleb128 32
	.uleb128 0x13
	.long	.LASF467
	.sleb128 33
	.uleb128 0x13
	.long	.LASF468
	.sleb128 34
	.uleb128 0x13
	.long	.LASF469
	.sleb128 35
	.uleb128 0x13
	.long	.LASF470
	.sleb128 36
	.uleb128 0x13
	.long	.LASF471
	.sleb128 37
	.uleb128 0x13
	.long	.LASF472
	.sleb128 38
	.uleb128 0x13
	.long	.LASF473
	.sleb128 39
	.uleb128 0x13
	.long	.LASF474
	.sleb128 40
	.uleb128 0x13
	.long	.LASF475
	.sleb128 41
	.uleb128 0x13
	.long	.LASF476
	.sleb128 42
	.uleb128 0x13
	.long	.LASF477
	.sleb128 43
	.uleb128 0x13
	.long	.LASF478
	.sleb128 44
	.uleb128 0x13
	.long	.LASF479
	.sleb128 45
	.byte	0
	.uleb128 0x1c
	.byte	0x8
	.byte	0x9
	.byte	0x1b
	.long	0x140e
	.uleb128 0x17
	.long	.LASF480
	.byte	0x9
	.byte	0x1e
	.long	0x2d
	.uleb128 0x17
	.long	.LASF481
	.byte	0x9
	.byte	0x20
	.long	0xb29
	.byte	0
	.uleb128 0x4
	.long	.LASF482
	.byte	0x18
	.byte	0x9
	.byte	0x2c
	.long	0x143f
	.uleb128 0x8
	.long	.LASF383
	.byte	0x9
	.byte	0x2f
	.long	0x143f
	.byte	0
	.uleb128 0x6
	.string	"loc"
	.byte	0x9
	.byte	0x31
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF483
	.byte	0x9
	.byte	0x33
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x140e
	.uleb128 0x7
	.long	.LASF484
	.byte	0x9
	.byte	0x29
	.long	0xaee
	.uleb128 0x3
	.byte	0x8
	.long	0x1445
	.uleb128 0x4
	.long	.LASF485
	.byte	0x20
	.byte	0xf
	.byte	0x39
	.long	0x148f
	.uleb128 0x6
	.string	"hi"
	.byte	0xf
	.byte	0x3b
	.long	0x39e
	.byte	0
	.uleb128 0x6
	.string	"si"
	.byte	0xf
	.byte	0x3c
	.long	0x39e
	.byte	0x8
	.uleb128 0x6
	.string	"di"
	.byte	0xf
	.byte	0x3d
	.long	0x39e
	.byte	0x10
	.uleb128 0x6
	.string	"ti"
	.byte	0xf
	.byte	0x3e
	.long	0x39e
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF486
	.byte	0xa8
	.byte	0xf
	.byte	0x32
	.long	0x1550
	.uleb128 0x8
	.long	.LASF487
	.byte	0xf
	.byte	0x35
	.long	0x39e
	.byte	0
	.uleb128 0x8
	.long	.LASF488
	.byte	0xf
	.byte	0x35
	.long	0x39e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF489
	.byte	0xf
	.byte	0x38
	.long	0x39e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF490
	.byte	0xf
	.byte	0x3f
	.long	0x1456
	.byte	0x18
	.uleb128 0x8
	.long	.LASF491
	.byte	0xf
	.byte	0x3f
	.long	0x1456
	.byte	0x38
	.uleb128 0x8
	.long	.LASF492
	.byte	0xf
	.byte	0x46
	.long	0x1570
	.byte	0x58
	.uleb128 0x8
	.long	.LASF493
	.byte	0xf
	.byte	0x49
	.long	0x158c
	.byte	0x60
	.uleb128 0x8
	.long	.LASF494
	.byte	0xf
	.byte	0x4c
	.long	0x159d
	.byte	0x68
	.uleb128 0x8
	.long	.LASF495
	.byte	0xf
	.byte	0x4f
	.long	0x159d
	.byte	0x70
	.uleb128 0x8
	.long	.LASF496
	.byte	0xf
	.byte	0x52
	.long	0x158c
	.byte	0x78
	.uleb128 0x8
	.long	.LASF497
	.byte	0xf
	.byte	0x56
	.long	0x15b3
	.byte	0x80
	.uleb128 0x8
	.long	.LASF498
	.byte	0xf
	.byte	0x59
	.long	0x15ba
	.byte	0x88
	.uleb128 0x8
	.long	.LASF499
	.byte	0xf
	.byte	0x5c
	.long	0x15ba
	.byte	0x90
	.uleb128 0x8
	.long	.LASF500
	.byte	0xf
	.byte	0x5f
	.long	0x15d0
	.byte	0x98
	.uleb128 0x8
	.long	.LASF501
	.byte	0xf
	.byte	0x62
	.long	0x15d0
	.byte	0xa0
	.byte	0
	.uleb128 0x1d
	.long	0x1569
	.long	0x1569
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x147
	.uleb128 0x1e
	.long	0x139
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF502
	.uleb128 0x3
	.byte	0x8
	.long	0x1550
	.uleb128 0x1f
	.long	0x1586
	.uleb128 0x1e
	.long	0x1586
	.uleb128 0x1e
	.long	0x150
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a8
	.uleb128 0x3
	.byte	0x8
	.long	0x1576
	.uleb128 0x1f
	.long	0x159d
	.uleb128 0x1e
	.long	0x1586
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1592
	.uleb128 0x1f
	.long	0x15b3
	.uleb128 0x1e
	.long	0x39e
	.uleb128 0x1e
	.long	0x147
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x15a3
	.uleb128 0x20
	.uleb128 0x3
	.byte	0x8
	.long	0x15b9
	.uleb128 0x1f
	.long	0x15d0
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x15c0
	.uleb128 0x4
	.long	.LASF406
	.byte	0x48
	.byte	0xf
	.byte	0x66
	.long	0x164f
	.uleb128 0x8
	.long	.LASF503
	.byte	0xf
	.byte	0x6b
	.long	0x166d
	.byte	0
	.uleb128 0x8
	.long	.LASF504
	.byte	0xf
	.byte	0x6f
	.long	0x1687
	.byte	0x8
	.uleb128 0x8
	.long	.LASF505
	.byte	0xf
	.byte	0x74
	.long	0x1692
	.byte	0x10
	.uleb128 0x8
	.long	.LASF506
	.byte	0xf
	.byte	0x78
	.long	0x16b6
	.byte	0x18
	.uleb128 0x8
	.long	.LASF507
	.byte	0xf
	.byte	0x7b
	.long	0x16d1
	.byte	0x20
	.uleb128 0x8
	.long	.LASF508
	.byte	0xf
	.byte	0x7e
	.long	0x16e7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF509
	.byte	0xf
	.byte	0x82
	.long	0x1710
	.byte	0x30
	.uleb128 0x8
	.long	.LASF510
	.byte	0xf
	.byte	0x83
	.long	0x1710
	.byte	0x38
	.uleb128 0x8
	.long	.LASF511
	.byte	0xf
	.byte	0x8a
	.long	0x172a
	.byte	0x40
	.byte	0
	.uleb128 0x1d
	.long	0x139
	.long	0x166d
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x164f
	.uleb128 0x1d
	.long	0x139
	.long	0x1687
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1673
	.uleb128 0x21
	.long	0x139
	.uleb128 0x3
	.byte	0x8
	.long	0x168d
	.uleb128 0x1d
	.long	0x139
	.long	0x16b6
	.uleb128 0x1e
	.long	0x1586
	.uleb128 0x1e
	.long	0x139
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1698
	.uleb128 0x1f
	.long	0x16d1
	.uleb128 0x1e
	.long	0x1586
	.uleb128 0x1e
	.long	0x139
	.uleb128 0x1e
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x16bc
	.uleb128 0x1f
	.long	0x16e7
	.uleb128 0x1e
	.long	0x1586
	.uleb128 0x1e
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x16d7
	.uleb128 0x1d
	.long	0x139
	.long	0x1710
	.uleb128 0x1e
	.long	0x1586
	.uleb128 0x1e
	.long	0x139
	.uleb128 0x1e
	.long	0xddb
	.uleb128 0x1e
	.long	0x3b7
	.uleb128 0x1e
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x16ed
	.uleb128 0x1d
	.long	0x2d
	.long	0x172a
	.uleb128 0x1e
	.long	0x139
	.uleb128 0x1e
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1716
	.uleb128 0x22
	.long	.LASF512
	.value	0x158
	.byte	0xf
	.byte	0x2f
	.long	0x180a
	.uleb128 0x8
	.long	.LASF486
	.byte	0xf
	.byte	0x63
	.long	0x148f
	.byte	0
	.uleb128 0x8
	.long	.LASF406
	.byte	0xf
	.byte	0x8b
	.long	0x15d6
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF513
	.byte	0xf
	.byte	0x8e
	.long	0x181e
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF514
	.byte	0xf
	.byte	0x91
	.long	0x181e
	.byte	0xf8
	.uleb128 0x23
	.long	.LASF515
	.byte	0xf
	.byte	0x94
	.long	0x1829
	.value	0x100
	.uleb128 0x23
	.long	.LASF516
	.byte	0xf
	.byte	0x99
	.long	0x1848
	.value	0x108
	.uleb128 0x23
	.long	.LASF517
	.byte	0xf
	.byte	0x9c
	.long	0x1859
	.value	0x110
	.uleb128 0x23
	.long	.LASF518
	.byte	0xf
	.byte	0x9f
	.long	0x1875
	.value	0x118
	.uleb128 0x23
	.long	.LASF519
	.byte	0xf
	.byte	0xa3
	.long	0x188a
	.value	0x120
	.uleb128 0x23
	.long	.LASF520
	.byte	0xf
	.byte	0xa7
	.long	0x188a
	.value	0x128
	.uleb128 0x23
	.long	.LASF521
	.byte	0xf
	.byte	0xaa
	.long	0x15ba
	.value	0x130
	.uleb128 0x23
	.long	.LASF522
	.byte	0xf
	.byte	0xad
	.long	0x18b3
	.value	0x138
	.uleb128 0x23
	.long	.LASF523
	.byte	0xf
	.byte	0xb3
	.long	0x18d2
	.value	0x140
	.uleb128 0x23
	.long	.LASF524
	.byte	0xf
	.byte	0xb6
	.long	0x1569
	.value	0x148
	.uleb128 0x23
	.long	.LASF525
	.byte	0xf
	.byte	0xba
	.long	0x1569
	.value	0x149
	.uleb128 0x23
	.long	.LASF526
	.byte	0xf
	.byte	0xbe
	.long	0x18dd
	.value	0x150
	.byte	0
	.uleb128 0x1d
	.long	0x123
	.long	0x181e
	.uleb128 0x1e
	.long	0x123
	.uleb128 0x1e
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x180a
	.uleb128 0x1a
	.long	.LASF527
	.uleb128 0x3
	.byte	0x8
	.long	0x182f
	.uleb128 0x11
	.long	0x1824
	.uleb128 0x1d
	.long	0x139
	.long	0x1848
	.uleb128 0x1e
	.long	0x123
	.uleb128 0x1e
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1834
	.uleb128 0x1f
	.long	0x1859
	.uleb128 0x1e
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x184e
	.uleb128 0x1f
	.long	0x186f
	.uleb128 0x1e
	.long	0x123
	.uleb128 0x1e
	.long	0x186f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x3
	.byte	0x8
	.long	0x185f
	.uleb128 0x1d
	.long	0x1569
	.long	0x188a
	.uleb128 0x1e
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x187b
	.uleb128 0x1d
	.long	0x2d
	.long	0x18b3
	.uleb128 0x1e
	.long	0x123
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x3bd
	.uleb128 0x1e
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1890
	.uleb128 0x1d
	.long	0x147
	.long	0x18d2
	.uleb128 0x1e
	.long	0x123
	.uleb128 0x1e
	.long	0x39e
	.uleb128 0x1e
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18b9
	.uleb128 0x21
	.long	0x1569
	.uleb128 0x3
	.byte	0x8
	.long	0x18d8
	.uleb128 0x12
	.long	.LASF528
	.byte	0x4
	.byte	0x1
	.byte	0x35
	.long	0x18fc
	.uleb128 0x13
	.long	.LASF529
	.sleb128 1
	.uleb128 0x13
	.long	.LASF530
	.sleb128 2
	.byte	0
	.uleb128 0x24
	.long	.LASF531
	.byte	0x1
	.byte	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1927
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.byte	0x63
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF532
	.byte	0x1
	.byte	0x70
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1952
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.byte	0x71
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF540
	.byte	0x1
	.byte	0x7d
	.long	0x1569
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x19d7
	.uleb128 0x27
	.long	.LASF533
	.byte	0x1
	.byte	0x7e
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF534
	.byte	0x1
	.byte	0x80
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF535
	.byte	0x1
	.byte	0x80
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF536
	.byte	0x1
	.byte	0x80
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF537
	.byte	0x1
	.byte	0x81
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF538
	.byte	0x1
	.byte	0x81
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF539
	.byte	0x1
	.byte	0x82
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x26
	.long	.LASF541
	.byte	0x1
	.byte	0xc2
	.long	0x1569
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a73
	.uleb128 0x25
	.string	"exp"
	.byte	0x1
	.byte	0xc3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF542
	.byte	0x1
	.byte	0xc4
	.long	0x11fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF543
	.byte	0x1
	.byte	0xc6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF424
	.byte	0x1
	.byte	0xc7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1a54
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0xd4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0xe7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF544
	.byte	0x1
	.byte	0xf6
	.long	0x128f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c39
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.byte	0xf7
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.byte	0xf8
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.byte	0xf9
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.long	.LASF545
	.byte	0x1
	.byte	0xfb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF546
	.byte	0x1
	.byte	0xfb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF547
	.byte	0x1
	.byte	0xfb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF548
	.byte	0x1
	.byte	0xfb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF549
	.byte	0x1
	.byte	0xfb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF550
	.byte	0x1
	.byte	0xfc
	.long	0x57b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x28
	.long	.LASF551
	.byte	0x1
	.byte	0xfc
	.long	0x57b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.long	.LASF552
	.byte	0x1
	.byte	0xfc
	.long	0x57b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF553
	.byte	0x1
	.byte	0xfd
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -142
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0xfe
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.long	.LASF542
	.byte	0x1
	.byte	0xff
	.long	0x11fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF554
	.byte	0x1
	.value	0x100
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.uleb128 0x2d
	.long	.LASF592
	.byte	0x1
	.value	0x167
	.quad	.L106
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1ba4
	.uleb128 0x2e
	.string	"pat"
	.byte	0x1
	.value	0x145
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2c
	.long	.LASF555
	.byte	0x1
	.value	0x15d
	.long	0xea0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF556
	.byte	0x1
	.value	0x15d
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF557
	.byte	0x1
	.value	0x15d
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.long	.LASF558
	.byte	0x1
	.value	0x15d
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2c
	.long	.LASF559
	.byte	0x1
	.value	0x15d
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2c
	.long	.LASF560
	.byte	0x1
	.value	0x15d
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF561
	.byte	0x1
	.value	0x171
	.long	0x1569
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e65
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x173
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x172
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.long	.LASF562
	.byte	0x1
	.value	0x175
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -151
	.uleb128 0x2e
	.string	"e"
	.byte	0x1
	.value	0x176
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.long	.LASF383
	.byte	0x1
	.value	0x176
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF563
	.byte	0x1
	.value	0x176
	.long	0x12a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.long	.LASF581
	.long	0x1e75
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10860
	.uleb128 0x2b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2c
	.long	.LASF564
	.byte	0x1
	.value	0x17a
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF294
	.byte	0x1
	.value	0x17a
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF565
	.byte	0x1
	.value	0x17b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2c
	.long	.LASF566
	.byte	0x1
	.value	0x17c
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -150
	.uleb128 0x2c
	.long	.LASF567
	.byte	0x1
	.value	0x17d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1dc5
	.uleb128 0x2c
	.long	.LASF568
	.byte	0x1
	.value	0x18e
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF569
	.byte	0x1
	.value	0x18f
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -149
	.uleb128 0x29
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x1da2
	.uleb128 0x2e
	.string	"t"
	.byte	0x1
	.value	0x19e
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x1a6
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2c
	.long	.LASF549
	.byte	0x1
	.value	0x1cc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2c
	.long	.LASF570
	.byte	0x1
	.value	0x1ec
	.long	0x1205
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF571
	.byte	0x1
	.value	0x1ed
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF572
	.byte	0x1
	.value	0x1ee
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2e
	.string	"n"
	.byte	0x1
	.value	0x1ef
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2e
	.string	"t"
	.byte	0x1
	.value	0x20e
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2e
	.string	"e"
	.byte	0x1
	.value	0x218
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF573
	.byte	0x1
	.value	0x219
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1a1
	.long	0x1e75
	.uleb128 0x10
	.long	0x140
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.long	0x1e65
	.uleb128 0x33
	.long	.LASF574
	.byte	0x1
	.value	0x254
	.long	0x1569
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f07
	.uleb128 0x30
	.long	.LASF575
	.byte	0x1
	.value	0x255
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF576
	.byte	0x1
	.value	0x255
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"tmp"
	.byte	0x1
	.value	0x257
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2e
	.string	"vec"
	.byte	0x1
	.value	0x263
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x264
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF577
	.byte	0x1
	.value	0x264
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF578
	.byte	0x1
	.value	0x271
	.long	0x1569
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f46
	.uleb128 0x30
	.long	.LASF575
	.byte	0x1
	.value	0x272
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x274
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF579
	.byte	0x1
	.value	0x282
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fb0
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.value	0x283
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x283
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF580
	.byte	0x1
	.value	0x285
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF307
	.byte	0x1
	.value	0x286
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF581
	.long	0x1fc0
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10906
	.byte	0
	.uleb128 0xf
	.long	0x1a1
	.long	0x1fc0
	.uleb128 0x10
	.long	0x140
	.byte	0x25
	.byte	0
	.uleb128 0x11
	.long	0x1fb0
	.uleb128 0x34
	.long	.LASF582
	.byte	0x1
	.value	0x2b2
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x202f
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.value	0x2b3
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x2b3
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF580
	.byte	0x1
	.value	0x2b5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF583
	.byte	0x1
	.value	0x2b5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF581
	.long	0x203f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10913
	.byte	0
	.uleb128 0xf
	.long	0x1a1
	.long	0x203f
	.uleb128 0x10
	.long	0x140
	.byte	0x23
	.byte	0
	.uleb128 0x11
	.long	0x202f
	.uleb128 0x2f
	.long	.LASF584
	.byte	0x1
	.value	0x2e9
	.long	0x1569
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2143
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.value	0x2ea
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x2eb
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0x2eb
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x2ec
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x20d4
	.uleb128 0x2c
	.long	.LASF585
	.byte	0x1
	.value	0x2fa
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF586
	.byte	0x1
	.value	0x2fa
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2c
	.long	.LASF587
	.byte	0x1
	.value	0x30f
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF588
	.byte	0x1
	.value	0x30f
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF589
	.byte	0x1
	.value	0x310
	.long	0x1569
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x2c
	.long	.LASF590
	.byte	0x1
	.value	0x311
	.long	0x1569
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x2b
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x33b
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF591
	.byte	0x1
	.value	0x351
	.long	0x1569
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2264
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x352
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x31
	.string	"i1"
	.byte	0x1
	.value	0x353
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"i2"
	.byte	0x1
	.value	0x353
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.string	"p1"
	.byte	0x1
	.value	0x355
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"p2"
	.byte	0x1
	.value	0x355
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF593
	.byte	0x1
	.value	0x38d
	.quad	.L233
	.uleb128 0x29
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x2205
	.uleb128 0x2c
	.long	.LASF594
	.byte	0x1
	.value	0x37b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF595
	.byte	0x1
	.value	0x37c
	.long	0xe37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF596
	.byte	0x1
	.value	0x37c
	.long	0xe37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2b
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2c
	.long	.LASF597
	.byte	0x1
	.value	0x396
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF598
	.byte	0x1
	.value	0x397
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2e
	.string	"s1"
	.byte	0x1
	.value	0x3a1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"s2"
	.byte	0x1
	.value	0x3a2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF599
	.byte	0x1
	.value	0x3bd
	.long	0x139
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x236f
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x3be
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x31
	.string	"bb1"
	.byte	0x1
	.value	0x3bf
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"bb2"
	.byte	0x1
	.value	0x3bf
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.string	"f1"
	.byte	0x1
	.value	0x3c0
	.long	0xddb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x31
	.string	"f2"
	.byte	0x1
	.value	0x3c0
	.long	0xddb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.string	"i1"
	.byte	0x1
	.value	0x3c2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"i2"
	.byte	0x1
	.value	0x3c2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF600
	.byte	0x1
	.value	0x3c2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF601
	.byte	0x1
	.value	0x3c2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF602
	.byte	0x1
	.value	0x3c2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF603
	.byte	0x1
	.value	0x3c2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF604
	.byte	0x1
	.value	0x3c3
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2c
	.long	.LASF597
	.byte	0x1
	.value	0x3f0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF598
	.byte	0x1
	.value	0x3f1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF605
	.byte	0x1
	.value	0x42d
	.long	0x1569
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2572
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x42e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x31
	.string	"bb1"
	.byte	0x1
	.value	0x42f
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.string	"bb2"
	.byte	0x1
	.value	0x430
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.long	.LASF606
	.byte	0x1
	.value	0x432
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2c
	.long	.LASF607
	.byte	0x1
	.value	0x432
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.long	.LASF608
	.byte	0x1
	.value	0x433
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF609
	.byte	0x1
	.value	0x433
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.string	"e1"
	.byte	0x1
	.value	0x434
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.string	"e2"
	.byte	0x1
	.value	0x434
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x2511
	.uleb128 0x2e
	.string	"b1"
	.byte	0x1
	.value	0x445
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"f1"
	.byte	0x1
	.value	0x445
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"b2"
	.byte	0x1
	.value	0x445
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"f2"
	.byte	0x1
	.value	0x445
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF610
	.byte	0x1
	.value	0x446
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -166
	.uleb128 0x2c
	.long	.LASF611
	.byte	0x1
	.value	0x446
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -165
	.uleb128 0x2c
	.long	.LASF545
	.byte	0x1
	.value	0x447
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF546
	.byte	0x1
	.value	0x447
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF547
	.byte	0x1
	.value	0x447
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF548
	.byte	0x1
	.value	0x447
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF550
	.byte	0x1
	.value	0x448
	.long	0x57b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2c
	.long	.LASF551
	.byte	0x1
	.value	0x448
	.long	0x57b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2c
	.long	.LASF612
	.byte	0x1
	.value	0x49d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x2543
	.uleb128 0x2e
	.string	"d1"
	.byte	0x1
	.value	0x4df
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"d2"
	.byte	0x1
	.value	0x4e1
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2e
	.string	"n1"
	.byte	0x1
	.value	0x4eb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"n2"
	.byte	0x1
	.value	0x4ec
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF613
	.byte	0x1
	.value	0x4fc
	.long	0x1569
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x269d
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x4fd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x31
	.string	"e1"
	.byte	0x1
	.value	0x4fe
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.string	"e2"
	.byte	0x1
	.value	0x4fe
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.long	.LASF614
	.byte	0x1
	.value	0x500
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.long	.LASF615
	.byte	0x1
	.value	0x501
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF616
	.byte	0x1
	.value	0x501
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF617
	.byte	0x1
	.value	0x502
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF618
	.byte	0x1
	.value	0x503
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.long	.LASF619
	.byte	0x1
	.value	0x503
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x504
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF620
	.byte	0x1
	.value	0x505
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF575
	.byte	0x1
	.value	0x506
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2e
	.string	"s2"
	.byte	0x1
	.value	0x547
	.long	0x128f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"d"
	.byte	0x1
	.value	0x548
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2e
	.string	"d2"
	.byte	0x1
	.value	0x54f
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF621
	.byte	0x1
	.value	0x5a2
	.long	0x1569
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2736
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x5a3
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x5a4
	.long	0x129a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"e"
	.byte	0x1
	.value	0x5a6
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"e2"
	.byte	0x1
	.value	0x5a6
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF622
	.byte	0x1
	.value	0x5a6
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF623
	.byte	0x1
	.value	0x5a6
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x5a6
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF562
	.byte	0x1
	.value	0x5a7
	.long	0x1569
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.byte	0
	.uleb128 0x2f
	.long	.LASF625
	.byte	0x1
	.value	0x5fa
	.long	0x1569
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2844
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x5fb
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x5fd
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF626
	.byte	0x1
	.value	0x5fe
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF562
	.byte	0x1
	.value	0x5ff
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -67
	.uleb128 0x2c
	.long	.LASF627
	.byte	0x1
	.value	0x600
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF628
	.byte	0x1
	.value	0x601
	.long	0xf29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x2821
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x61a
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x61a
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x61b
	.long	0x128f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF629
	.byte	0x1
	.value	0x61c
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x2b
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2c
	.long	.LASF575
	.byte	0x1
	.value	0x63f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2c
	.long	.LASF630
	.byte	0x1
	.value	0x6a8
	.long	0x1569
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF631
	.byte	0x1
	.value	0x6c3
	.long	0x1569
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x28af
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x6c5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x6c5
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF562
	.byte	0x1
	.value	0x6c6
	.long	0x1569
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2b
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x6d0
	.long	0x129a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF650
	.byte	0x1
	.value	0x6e9
	.long	0x1569
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x28f0
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x6ea
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF562
	.byte	0x1
	.value	0x6ec
	.long	0x1569
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x36
	.long	.LASF632
	.byte	0x10
	.byte	0x62
	.long	0x139
	.uleb128 0xf
	.long	0x532
	.long	0x290b
	.uleb128 0x10
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF126
	.byte	0x8
	.byte	0x34
	.long	0x2916
	.uleb128 0x11
	.long	0x28fb
	.uleb128 0xf
	.long	0x169
	.long	0x292b
	.uleb128 0x10
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF633
	.byte	0x8
	.byte	0x50
	.long	0x2936
	.uleb128 0x11
	.long	0x291b
	.uleb128 0xf
	.long	0x1a1
	.long	0x294b
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x36
	.long	.LASF634
	.byte	0x2
	.byte	0x3f
	.long	0x2956
	.uleb128 0x11
	.long	0x293b
	.uleb128 0xf
	.long	0x2d
	.long	0x296b
	.uleb128 0x10
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x37
	.long	.LASF635
	.byte	0x2
	.value	0x652
	.long	0x295b
	.uleb128 0x37
	.long	.LASF636
	.byte	0x2
	.value	0x6d2
	.long	0x139
	.uleb128 0x36
	.long	.LASF637
	.byte	0xb
	.byte	0xe4
	.long	0x139
	.uleb128 0x36
	.long	.LASF638
	.byte	0xb
	.byte	0xec
	.long	0x11e9
	.uleb128 0x36
	.long	.LASF639
	.byte	0xb
	.byte	0xf6
	.long	0x2d
	.uleb128 0x36
	.long	.LASF640
	.byte	0xb
	.byte	0xf6
	.long	0x2d
	.uleb128 0xf
	.long	0xb66
	.long	0x29bf
	.uleb128 0x10
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.long	.LASF641
	.byte	0xb
	.value	0x116
	.long	0x29af
	.uleb128 0x37
	.long	.LASF642
	.byte	0x11
	.value	0x1cb
	.long	0x1586
	.uleb128 0x36
	.long	.LASF643
	.byte	0x12
	.byte	0x41
	.long	0x139
	.uleb128 0x36
	.long	.LASF644
	.byte	0xf
	.byte	0xc1
	.long	0x1730
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x35
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
.LASF329:
	.string	"REG_BR_PROB"
.LASF359:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF282:
	.string	"rtstr"
.LASF462:
	.string	"TV_FLOW2"
.LASF346:
	.string	"NOTE_INSN_DELETED"
.LASF618:
	.string	"newpos1"
.LASF468:
	.string	"TV_DBR_SCHED"
.LASF58:
	.string	"_unused2"
.LASF210:
	.string	"UMOD"
.LASF264:
	.string	"min_align"
.LASF44:
	.string	"_fileno"
.LASF480:
	.string	"val_rtx"
.LASF401:
	.string	"varray_data_tag"
.LASF294:
	.string	"first"
.LASF478:
	.string	"TV_REST_OF_COMPILATION"
.LASF251:
	.string	"CONSTANT_P_RTX"
.LASF626:
	.string	"changed_overall"
.LASF502:
	.string	"_Bool"
.LASF515:
	.string	"attribute_table"
.LASF281:
	.string	"rtuint"
.LASF637:
	.string	"n_basic_blocks"
.LASF285:
	.string	"rt_cselib"
.LASF603:
	.string	"afterlast2"
.LASF154:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF214:
	.string	"LSHIFTRT"
.LASF509:
	.string	"reorder"
.LASF542:
	.string	"nonequal"
.LASF576:
	.string	"jump_insn"
.LASF148:
	.string	"MATCH_PAR_DUP"
.LASF49:
	.string	"_shortbuf"
.LASF647:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF472:
	.string	"TV_TO_SSA"
.LASF209:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF593:
	.string	"done"
.LASF628:
	.string	"blocks"
.LASF142:
	.string	"MATCH_OPERAND"
.LASF231:
	.string	"UNLE"
.LASF269:
	.string	"max_after_base"
.LASF232:
	.string	"UNLT"
.LASF443:
	.string	"TV_PARSE"
.LASF644:
	.string	"targetm"
.LASF486:
	.string	"asm_out"
.LASF450:
	.string	"TV_LOOP"
.LASF426:
	.string	"probability"
.LASF94:
	.string	"CTImode"
.LASF30:
	.string	"_flags"
.LASF383:
	.string	"next"
.LASF565:
	.string	"counter"
.LASF617:
	.string	"redirect_to"
.LASF584:
	.string	"merge_blocks"
.LASF25:
	.string	"__off_t"
.LASF456:
	.string	"TV_REGMOVE"
.LASF92:
	.string	"CSImode"
.LASF253:
	.string	"VEC_MERGE"
.LASF613:
	.string	"try_crossjump_to_edge"
.LASF50:
	.string	"_lock"
.LASF403:
	.string	"uhint"
.LASF186:
	.string	"RETURN"
.LASF464:
	.string	"TV_PEEPHOLE2"
.LASF404:
	.string	"generic"
.LASF641:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF129:
	.string	"MODE_FLOAT"
.LASF553:
	.string	"reverse1"
.LASF536:
	.string	"cbranch_dest_block"
.LASF273:
	.string	"alias"
.LASF270:
	.string	"offset_unsigned"
.LASF98:
	.string	"V2SImode"
.LASF476:
	.string	"TV_FINAL"
.LASF650:
	.string	"cleanup_cfg"
.LASF173:
	.string	"CODE_LABEL"
.LASF93:
	.string	"CDImode"
.LASF179:
	.string	"UNSPEC"
.LASF172:
	.string	"BARRIER"
.LASF352:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF175:
	.string	"COND_EXEC"
.LASF189:
	.string	"CONST_INT"
.LASF185:
	.string	"CALL"
.LASF100:
	.string	"V4QImode"
.LASF389:
	.string	"BITMAP_AND"
.LASF164:
	.string	"ATTR"
.LASF309:
	.string	"count"
.LASF283:
	.string	"rttype"
.LASF500:
	.string	"constructor"
.LASF496:
	.string	"function_epilogue"
.LASF299:
	.string	"head_tree"
.LASF376:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF99:
	.string	"V2DImode"
.LASF418:
	.string	"varray_type"
.LASF573:
	.string	"prob"
.LASF278:
	.string	"mem_attrs"
.LASF36:
	.string	"_IO_write_end"
.LASF323:
	.string	"REG_UNUSED"
.LASF157:
	.string	"DEFINE_DELAY"
.LASF207:
	.string	"MINUS"
.LASF578:
	.string	"tail_recursion_label_p"
.LASF408:
	.string	"sched_info_tag"
.LASF197:
	.string	"STRICT_LOW_PART"
.LASF139:
	.string	"INCLUDE"
.LASF531:
	.string	"notice_new_block"
.LASF372:
	.string	"GR_FRAME_POINTER"
.LASF307:
	.string	"index"
.LASF235:
	.string	"ZERO_EXTEND"
.LASF477:
	.string	"TV_SYMOUT"
.LASF238:
	.string	"FLOAT_TRUNCATE"
.LASF525:
	.string	"have_ctors_dtors"
.LASF490:
	.string	"aligned_op"
.LASF605:
	.string	"outgoing_edges_match"
.LASF494:
	.string	"function_end_prologue"
.LASF369:
	.string	"GR_PC"
.LASF424:
	.string	"dest"
.LASF109:
	.string	"V2SFmode"
.LASF411:
	.string	"varray_data"
.LASF239:
	.string	"FLOAT"
.LASF497:
	.string	"named_section"
.LASF335:
	.string	"REG_EH_CONTEXT"
.LASF125:
	.string	"machine_mode"
.LASF473:
	.string	"TV_SSA_CCP"
.LASF595:
	.string	"i1_regset"
.LASF577:
	.string	"veclen"
.LASF288:
	.string	"rtmem"
.LASF248:
	.string	"RANGE_REG"
.LASF286:
	.string	"rtbit"
.LASF382:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF71:
	.string	"TImode"
.LASF224:
	.string	"PRE_MODIFY"
.LASF503:
	.string	"adjust_cost"
.LASF237:
	.string	"FLOAT_EXTEND"
.LASF622:
	.string	"nexte2"
.LASF6:
	.string	"in_struct"
.LASF347:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF69:
	.string	"SImode"
.LASF181:
	.string	"ADDR_VEC"
.LASF532:
	.string	"update_forwarder_flag"
.LASF596:
	.string	"i2_regset"
.LASF110:
	.string	"V2DFmode"
.LASF263:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF277:
	.string	"align"
.LASF566:
	.string	"threaded"
.LASF296:
	.string	"indx"
.LASF200:
	.string	"SYMBOL_REF"
.LASF345:
	.string	"NOTE_INSN_BIAS"
.LASF367:
	.string	"NOTE_INSN_MAX"
.LASF570:
	.string	"edge_count"
.LASF153:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF205:
	.string	"COMPARE"
.LASF233:
	.string	"LTGT"
.LASF245:
	.string	"HIGH"
.LASF202:
	.string	"QUEUED"
.LASF1:
	.string	"mode"
.LASF528:
	.string	"bb_flags"
.LASF70:
	.string	"DImode"
.LASF397:
	.string	"elms"
.LASF399:
	.string	"const_equiv_data"
.LASF513:
	.string	"merge_decl_attributes"
.LASF43:
	.string	"_chain"
.LASF507:
	.string	"md_init"
.LASF544:
	.string	"thread_jump"
.LASF223:
	.string	"POST_INC"
.LASF580:
	.string	"barrier"
.LASF388:
	.string	"bitmap_bits"
.LASF390:
	.string	"BITMAP_AND_COMPL"
.LASF83:
	.string	"TFmode"
.LASF21:
	.string	"unsigned char"
.LASF552:
	.string	"reversed_code2"
.LASF649:
	.string	"_IO_lock_t"
.LASF433:
	.string	"float"
.LASF428:
	.string	"basic_block"
.LASF66:
	.string	"BImode"
.LASF221:
	.string	"PRE_INC"
.LASF322:
	.string	"REG_NO_CONFLICT"
.LASF80:
	.string	"SFmode"
.LASF435:
	.string	"TV_GC"
.LASF471:
	.string	"TV_REG_STACK"
.LASF170:
	.string	"JUMP_INSN"
.LASF304:
	.string	"cond_local_set"
.LASF564:
	.string	"target"
.LASF508:
	.string	"md_finish"
.LASF427:
	.string	"edge"
.LASF133:
	.string	"MODE_COMPLEX_FLOAT"
.LASF589:
	.string	"c_has_outgoing_fallthru"
.LASF287:
	.string	"rttree"
.LASF557:
	.string	"bit_num_"
.LASF344:
	.string	"insn_note"
.LASF363:
	.string	"NOTE_INSN_RANGE_END"
.LASF152:
	.string	"DEFINE_SPLIT"
.LASF612:
	.string	"prob2"
.LASF631:
	.string	"delete_unreachable_blocks"
.LASF191:
	.string	"CONST_VECTOR"
.LASF149:
	.string	"MATCH_INSN"
.LASF81:
	.string	"DFmode"
.LASF420:
	.string	"gcov_type"
.LASF19:
	.string	"size_t"
.LASF183:
	.string	"PREFETCH"
.LASF75:
	.string	"PSImode"
.LASF597:
	.string	"equiv1"
.LASF247:
	.string	"RANGE_INFO"
.LASF469:
	.string	"TV_REORDER_BLOCKS"
.LASF400:
	.string	"rtunion_def"
.LASF163:
	.string	"DEFINE_ATTR"
.LASF165:
	.string	"SET_ATTR"
.LASF89:
	.string	"TCmode"
.LASF240:
	.string	"UNSIGNED_FLOAT"
.LASF334:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF289:
	.string	"cselib_val_struct"
.LASF366:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF35:
	.string	"_IO_write_ptr"
.LASF527:
	.string	"attribute_spec"
.LASF212:
	.string	"ROTATE"
.LASF302:
	.string	"succ"
.LASF236:
	.string	"TRUNCATE"
.LASF327:
	.string	"REG_DEP_ANTI"
.LASF86:
	.string	"SCmode"
.LASF495:
	.string	"function_begin_epilogue"
.LASF606:
	.string	"nehedges1"
.LASF607:
	.string	"nehedges2"
.LASF635:
	.string	"global_rtl"
.LASF377:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF76:
	.string	"PDImode"
.LASF348:
	.string	"NOTE_INSN_BLOCK_END"
.LASF387:
	.string	"bitmap"
.LASF357:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF634:
	.string	"rtx_class"
.LASF311:
	.string	"flags"
.LASF140:
	.string	"EXPR_LIST"
.LASF167:
	.string	"EQ_ATTR"
.LASF538:
	.string	"cbranch_fallthru_edge"
.LASF119:
	.string	"CCGOCmode"
.LASF198:
	.string	"CONCAT"
.LASF422:
	.string	"pred_next"
.LASF266:
	.string	"min_after_vec"
.LASF439:
	.string	"TV_LIFE"
.LASF28:
	.string	"FILE"
.LASF204:
	.string	"COND"
.LASF394:
	.string	"simple_bitmap_def"
.LASF130:
	.string	"MODE_PARTIAL_INT"
.LASF529:
	.string	"BB_UPDATE_LIFE"
.LASF15:
	.string	"tree"
.LASF87:
	.string	"DCmode"
.LASF155:
	.string	"DEFINE_COMBINE"
.LASF645:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF213:
	.string	"ASHIFTRT"
.LASF484:
	.string	"cselib_val"
.LASF117:
	.string	"CCmode"
.LASF487:
	.string	"open_paren"
.LASF300:
	.string	"end_tree"
.LASF350:
	.string	"NOTE_INSN_LOOP_END"
.LASF540:
	.string	"try_simplify_condjump"
.LASF115:
	.string	"V16SFmode"
.LASF639:
	.string	"label_value_list"
.LASF470:
	.string	"TV_SHORTEN_BRANCH"
.LASF392:
	.string	"BITMAP_XOR"
.LASF364:
	.string	"NOTE_INSN_LIVE"
.LASF160:
	.string	"DEFINE_COND_EXEC"
.LASF39:
	.string	"_IO_save_base"
.LASF590:
	.string	"b_has_incoming_fallthru"
.LASF156:
	.string	"DEFINE_EXPAND"
.LASF592:
	.string	"failed_exit"
.LASF643:
	.string	"optimize_size"
.LASF555:
	.string	"ptr_"
.LASF414:
	.string	"elements_used"
.LASF629:
	.string	"changed_here"
.LASF106:
	.string	"V8SImode"
.LASF169:
	.string	"INSN"
.LASF280:
	.string	"rtint"
.LASF199:
	.string	"LABEL_REF"
.LASF519:
	.string	"function_attribute_inlinable_p"
.LASF326:
	.string	"REG_LABEL"
.LASF410:
	.string	"elt_list"
.LASF440:
	.string	"TV_LIFE_UPDATE"
.LASF314:
	.string	"REG_DEAD"
.LASF354:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF53:
	.string	"__pad2"
.LASF317:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF419:
	.string	"regset"
.LASF512:
	.string	"gcc_target"
.LASF431:
	.string	"UPDATE_LIFE_GLOBAL"
.LASF614:
	.string	"nmatch"
.LASF514:
	.string	"merge_type_attributes"
.LASF118:
	.string	"CCGCmode"
.LASF306:
	.string	"global_live_at_end"
.LASF195:
	.string	"SCRATCH"
.LASF104:
	.string	"V8QImode"
.LASF107:
	.string	"V8DImode"
.LASF136:
	.string	"MAX_MODE_CLASS"
.LASF558:
	.string	"word_num_"
.LASF516:
	.string	"comp_type_attributes"
.LASF621:
	.string	"try_crossjump_bb"
.LASF234:
	.string	"SIGN_EXTEND"
.LASF290:
	.string	"value"
.LASF256:
	.string	"VEC_DUPLICATE"
.LASF60:
	.string	"_next"
.LASF463:
	.string	"TV_IFCVT2"
.LASF571:
	.string	"edge_probability"
.LASF483:
	.string	"setting_insn"
.LASF274:
	.string	"expr"
.LASF360:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF113:
	.string	"V8SFmode"
.LASF549:
	.string	"insn"
.LASF325:
	.string	"REG_CC_USER"
.LASF178:
	.string	"ASM_OPERANDS"
.LASF121:
	.string	"CCZmode"
.LASF492:
	.string	"integer"
.LASF351:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF583:
	.string	"real_b_end"
.LASF533:
	.string	"cbranch_block"
.LASF556:
	.string	"indx_"
.LASF493:
	.string	"function_prologue"
.LASF340:
	.string	"REG_NON_LOCAL_GOTO"
.LASF182:
	.string	"ADDR_DIFF_VEC"
.LASF623:
	.string	"nexte"
.LASF244:
	.string	"ZERO_EXTRACT"
.LASF402:
	.string	"hint"
.LASF177:
	.string	"ASM_INPUT"
.LASF454:
	.string	"TV_COMBINE"
.LASF227:
	.string	"ORDERED"
.LASF114:
	.string	"V8DFmode"
.LASF413:
	.string	"num_elements"
.LASF241:
	.string	"UNSIGNED_FIX"
.LASF438:
	.string	"TV_CLEANUP_CFG"
.LASF630:
	.string	"found"
.LASF501:
	.string	"destructor"
.LASF122:
	.string	"CCFPmode"
.LASF518:
	.string	"insert_attributes"
.LASF491:
	.string	"unaligned_op"
.LASF416:
	.string	"name"
.LASF141:
	.string	"INSN_LIST"
.LASF61:
	.string	"_sbuf"
.LASF249:
	.string	"RANGE_VAR"
.LASF41:
	.string	"_IO_save_end"
.LASF489:
	.string	"byte_op"
.LASF510:
	.string	"reorder2"
.LASF128:
	.string	"MODE_INT"
.LASF415:
	.string	"element_size"
.LASF600:
	.string	"last1"
.LASF601:
	.string	"last2"
.LASF2:
	.string	"jump"
.LASF543:
	.string	"regno"
.LASF506:
	.string	"variable_issue"
.LASF479:
	.string	"TIMEVAR_LAST"
.LASF250:
	.string	"RANGE_LIVE"
.LASF97:
	.string	"V2HImode"
.LASF9:
	.string	"frame_related"
.LASF407:
	.string	"const_equiv"
.LASF284:
	.string	"rt_addr_diff_vec_flags"
.LASF374:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF517:
	.string	"set_default_type_attributes"
.LASF259:
	.string	"SS_MINUS"
.LASF146:
	.string	"MATCH_PARALLEL"
.LASF102:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF537:
	.string	"cbranch_jump_edge"
.LASF432:
	.string	"UPDATE_LIFE_GLOBAL_RM_NOTES"
.LASF316:
	.string	"REG_EQUIV"
.LASF22:
	.string	"short unsigned int"
.LASF23:
	.string	"signed char"
.LASF145:
	.string	"MATCH_OPERATOR"
.LASF610:
	.string	"reverse"
.LASF412:
	.string	"varray_head_tag"
.LASF295:
	.string	"current"
.LASF548:
	.string	"cond2"
.LASF534:
	.string	"jump_block"
.LASF261:
	.string	"SS_TRUNCATE"
.LASF330:
	.string	"REG_EXEC_COUNT"
.LASF449:
	.string	"TV_GCSE"
.LASF265:
	.string	"base_after_vec"
.LASF150:
	.string	"DEFINE_INSN"
.LASF26:
	.string	"__off64_t"
.LASF452:
	.string	"TV_BRANCH_PROB"
.LASF103:
	.string	"V4DImode"
.LASF308:
	.string	"loop_depth"
.LASF33:
	.string	"_IO_read_base"
.LASF51:
	.string	"_offset"
.LASF375:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF409:
	.string	"reg_info_def"
.LASF328:
	.string	"REG_DEP_OUTPUT"
.LASF38:
	.string	"_IO_buf_end"
.LASF395:
	.string	"n_bits"
.LASF159:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF260:
	.string	"US_MINUS"
.LASF243:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF184:
	.string	"CLOBBER"
.LASF421:
	.string	"edge_def"
.LASF57:
	.string	"_mode"
.LASF134:
	.string	"MODE_VECTOR_INT"
.LASF34:
	.string	"_IO_write_base"
.LASF332:
	.string	"REG_SAVE_AREA"
.LASF252:
	.string	"CALL_PLACEHOLDER"
.LASF111:
	.string	"V4SFmode"
.LASF539:
	.string	"cbranch_insn"
.LASF585:
	.string	"b_index"
.LASF206:
	.string	"PLUS"
.LASF466:
	.string	"TV_SCHED2"
.LASF442:
	.string	"TV_LEX"
.LASF222:
	.string	"POST_DEC"
.LASF385:
	.string	"bits"
.LASF68:
	.string	"HImode"
.LASF312:
	.string	"rtunion"
.LASF353:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF430:
	.string	"UPDATE_LIFE_LOCAL"
.LASF132:
	.string	"MODE_COMPLEX_INT"
.LASF18:
	.string	"long int"
.LASF379:
	.string	"GR_VIRTUAL_CFA"
.LASF638:
	.string	"basic_block_info"
.LASF318:
	.string	"REG_WAS_0"
.LASF608:
	.string	"fallthru1"
.LASF609:
	.string	"fallthru2"
.LASF339:
	.string	"REG_NORETURN"
.LASF59:
	.string	"_IO_marker"
.LASF82:
	.string	"XFmode"
.LASF338:
	.string	"REG_MAYBE_DEAD"
.LASF522:
	.string	"expand_builtin"
.LASF112:
	.string	"V4DFmode"
.LASF4:
	.string	"unchanging"
.LASF467:
	.string	"TV_MACH_DEP"
.LASF313:
	.string	"reg_note"
.LASF575:
	.string	"label"
.LASF526:
	.string	"cannot_modify_jumps_p"
.LASF137:
	.string	"rtx_code"
.LASF620:
	.string	"last"
.LASF642:
	.string	"rtl_dump_file"
.LASF521:
	.string	"init_builtins"
.LASF598:
	.string	"equiv2"
.LASF599:
	.string	"flow_find_cross_jump"
.LASF447:
	.string	"TV_JUMP"
.LASF611:
	.string	"match"
.LASF619:
	.string	"newpos2"
.LASF499:
	.string	"eh_frame_section"
.LASF138:
	.string	"UNKNOWN"
.LASF180:
	.string	"UNSPEC_VOLATILE"
.LASF356:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF20:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF78:
	.string	"HFmode"
.LASF505:
	.string	"issue_rate"
.LASF187:
	.string	"TRAP_IF"
.LASF457:
	.string	"TV_MODE_SWITCH"
.LASF336:
	.string	"REG_EH_REGION"
.LASF319:
	.string	"REG_RETVAL"
.LASF482:
	.string	"elt_loc_list"
.LASF90:
	.string	"CQImode"
.LASF27:
	.string	"char"
.LASF498:
	.string	"exception_section"
.LASF88:
	.string	"XCmode"
.LASF560:
	.string	"mask_"
.LASF481:
	.string	"next_free"
.LASF530:
	.string	"BB_FORWARDER_BLOCK"
.LASF37:
	.string	"_IO_buf_base"
.LASF215:
	.string	"ROTATERT"
.LASF547:
	.string	"cond1"
.LASF201:
	.string	"ADDRESSOF"
.LASF624:
	.string	"fallthru"
.LASF341:
	.string	"REG_SETJMP"
.LASF96:
	.string	"V2QImode"
.LASF74:
	.string	"PHImode"
.LASF32:
	.string	"_IO_read_end"
.LASF393:
	.string	"BITMAP_IOR_COMPL"
.LASF95:
	.string	"COImode"
.LASF220:
	.string	"PRE_DEC"
.LASF29:
	.string	"_IO_FILE"
.LASF561:
	.string	"try_forward_edges"
.LASF355:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF373:
	.string	"GR_HARD_FRAME_POINTER"
.LASF324:
	.string	"REG_CC_SETTER"
.LASF511:
	.string	"cycle_display"
.LASF127:
	.string	"MODE_RANDOM"
.LASF258:
	.string	"US_PLUS"
.LASF488:
	.string	"close_paren"
.LASF116:
	.string	"BLKmode"
.LASF85:
	.string	"HCmode"
.LASF625:
	.string	"try_optimize_cfg"
.LASF291:
	.string	"locs"
.LASF485:
	.string	"asm_int_op"
.LASF192:
	.string	"CONST_STRING"
.LASF255:
	.string	"VEC_CONCAT"
.LASF276:
	.string	"size"
.LASF545:
	.string	"set1"
.LASF52:
	.string	"__pad1"
.LASF54:
	.string	"__pad3"
.LASF55:
	.string	"__pad4"
.LASF56:
	.string	"__pad5"
.LASF331:
	.string	"REG_NOALIAS"
.LASF168:
	.string	"ATTR_FLAG"
.LASF550:
	.string	"code1"
.LASF551:
	.string	"code2"
.LASF123:
	.string	"CCFPUmode"
.LASF437:
	.string	"TV_CFG"
.LASF315:
	.string	"REG_INC"
.LASF158:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF398:
	.string	"sbitmap"
.LASF646:
	.string	"cfgcleanup.c"
.LASF42:
	.string	"_markers"
.LASF62:
	.string	"_pos"
.LASF162:
	.string	"ADDRESS"
.LASF474:
	.string	"TV_SSA_DCE"
.LASF425:
	.string	"insns"
.LASF436:
	.string	"TV_DUMP"
.LASF405:
	.string	"cptr"
.LASF459:
	.string	"TV_LOCAL_ALLOC"
.LASF293:
	.string	"bitmap_head_def"
.LASF458:
	.string	"TV_SCHED"
.LASF569:
	.string	"new_target_threaded"
.LASF562:
	.string	"changed"
.LASF262:
	.string	"US_TRUNCATE"
.LASF292:
	.string	"addr_list"
.LASF368:
	.string	"global_rtl_index"
.LASF591:
	.string	"insns_match_p"
.LASF257:
	.string	"SS_PLUS"
.LASF219:
	.string	"UMAX"
.LASF524:
	.string	"have_named_sections"
.LASF271:
	.string	"scale"
.LASF67:
	.string	"QImode"
.LASF632:
	.string	"target_flags"
.LASF417:
	.string	"data"
.LASF371:
	.string	"GR_STACK_POINTER"
.LASF504:
	.string	"adjust_priority"
.LASF79:
	.string	"TQFmode"
.LASF559:
	.string	"word_"
.LASF541:
	.string	"mark_effect"
.LASF298:
	.string	"head"
.LASF604:
	.string	"ninsns"
.LASF268:
	.string	"min_after_base"
.LASF406:
	.string	"sched"
.LASF574:
	.string	"label_is_jump_target_p"
.LASF586:
	.string	"c_index"
.LASF579:
	.string	"merge_blocks_move_predecessor_nojumps"
.LASF72:
	.string	"OImode"
.LASF337:
	.string	"REG_SAVE_NOTE"
.LASF615:
	.string	"src1"
.LASF616:
	.string	"src2"
.LASF396:
	.string	"bytes"
.LASF217:
	.string	"SMAX"
.LASF380:
	.string	"GR_MAX"
.LASF254:
	.string	"VEC_SELECT"
.LASF321:
	.string	"REG_NONNEG"
.LASF135:
	.string	"MODE_VECTOR_FLOAT"
.LASF563:
	.string	"threaded_edges"
.LASF225:
	.string	"POST_MODIFY"
.LASF444:
	.string	"TV_EXPAND"
.LASF333:
	.string	"REG_BR_PRED"
.LASF546:
	.string	"set2"
.LASF151:
	.string	"DEFINE_PEEPHOLE"
.LASF63:
	.string	"long long unsigned int"
.LASF362:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF275:
	.string	"offset"
.LASF272:
	.string	"addr_diff_vec_flags"
.LASF47:
	.string	"_cur_column"
.LASF147:
	.string	"MATCH_OP_DUP"
.LASF161:
	.string	"SEQUENCE"
.LASF77:
	.string	"QFmode"
.LASF640:
	.string	"tail_recursion_label_list"
.LASF554:
	.string	"failed"
.LASF188:
	.string	"RESX"
.LASF633:
	.string	"mode_size"
.LASF176:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF40:
	.string	"_IO_backup_base"
.LASF588:
	.string	"b_fallthru_edge"
.LASF226:
	.string	"UNORDERED"
.LASF124:
	.string	"MAX_MACHINE_MODE"
.LASF31:
	.string	"_IO_read_ptr"
.LASF305:
	.string	"global_live_at_start"
.LASF143:
	.string	"MATCH_SCRATCH"
.LASF193:
	.string	"CONST"
.LASF582:
	.string	"merge_blocks_move_successor_nojumps"
.LASF242:
	.string	"SQRT"
.LASF370:
	.string	"GR_CC0"
.LASF445:
	.string	"TV_VARCONST"
.LASF126:
	.string	"mode_class"
.LASF208:
	.string	"MULT"
.LASF461:
	.string	"TV_RELOAD_CSE_REGS"
.LASF131:
	.string	"MODE_CC"
.LASF303:
	.string	"local_set"
.LASF455:
	.string	"TV_IFCVT"
.LASF73:
	.string	"PQImode"
.LASF453:
	.string	"TV_FLOW"
.LASF105:
	.string	"V8HImode"
.LASF567:
	.string	"nthreaded_edges"
.LASF46:
	.string	"_old_offset"
.LASF171:
	.string	"CALL_INSN"
.LASF460:
	.string	"TV_GLOBAL_ALLOC"
.LASF196:
	.string	"SUBREG"
.LASF108:
	.string	"V16QImode"
.LASF342:
	.string	"REG_ALWAYS_RETURN"
.LASF64:
	.string	"long long int"
.LASF446:
	.string	"TV_INTEGRATION"
.LASF320:
	.string	"REG_LIBCALL"
.LASF45:
	.string	"_flags2"
.LASF84:
	.string	"QCmode"
.LASF194:
	.string	"VALUE"
.LASF174:
	.string	"NOTE"
.LASF475:
	.string	"TV_FROM_SSA"
.LASF441:
	.string	"TV_CPP"
.LASF218:
	.string	"UMIN"
.LASF144:
	.string	"MATCH_DUP"
.LASF381:
	.string	"HARD_REG_ELT_TYPE"
.LASF297:
	.string	"basic_block_def"
.LASF636:
	.string	"reload_completed"
.LASF391:
	.string	"BITMAP_IOR"
.LASF520:
	.string	"ms_bitfield_layout_p"
.LASF523:
	.string	"section_type_flags"
.LASF7:
	.string	"used"
.LASF465:
	.string	"TV_RENAME_REGISTERS"
.LASF349:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF386:
	.string	"bitmap_element"
.LASF91:
	.string	"CHImode"
.LASF365:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF166:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF190:
	.string	"CONST_DOUBLE"
.LASF120:
	.string	"CCNOmode"
.LASF451:
	.string	"TV_CSE2"
.LASF101:
	.string	"V4HImode"
.LASF587:
	.string	"tmp_edge"
.LASF228:
	.string	"UNEQ"
.LASF211:
	.string	"ASHIFT"
.LASF535:
	.string	"jump_dest_block"
.LASF216:
	.string	"SMIN"
.LASF581:
	.string	"__FUNCTION__"
.LASF203:
	.string	"IF_THEN_ELSE"
.LASF448:
	.string	"TV_CSE"
.LASF627:
	.string	"iterations"
.LASF361:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF358:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF572:
	.string	"edge_frequency"
.LASF17:
	.string	"unsigned int"
.LASF434:
	.string	"TV_TOTAL"
.LASF602:
	.string	"afterlast1"
.LASF648:
	.string	"tree_node"
.LASF594:
	.string	"note"
.LASF267:
	.string	"max_after_vec"
.LASF229:
	.string	"UNGE"
.LASF24:
	.string	"short int"
.LASF301:
	.string	"pred"
.LASF230:
	.string	"UNGT"
.LASF384:
	.string	"prev"
.LASF48:
	.string	"_vtable_offset"
.LASF65:
	.string	"VOIDmode"
.LASF343:
	.string	"REG_VTABLE_REF"
.LASF568:
	.string	"new_target"
.LASF378:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF246:
	.string	"LO_SUM"
.LASF429:
	.string	"update_life_extent"
.LASF310:
	.string	"frequency"
.LASF279:
	.string	"rtwint"
.LASF423:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
