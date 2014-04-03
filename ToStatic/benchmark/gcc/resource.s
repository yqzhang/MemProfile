	.file	"resource.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 resource.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	start_of_epilogue_needs
	.comm	start_of_epilogue_needs,16,16
	.local	end_of_function_needs
	.comm	end_of_function_needs,16,16
	.local	target_hash_table
	.comm	target_hash_table,8,8
	.local	bb_ticks
	.comm	bb_ticks,8,8
	.local	current_live_regs
	.comm	current_live_regs,8,8
	.local	pending_dead_regs
	.comm	pending_dead_regs,8,8
	.type	update_live_status, @function
update_live_status:
.LFB2:
	.file 1 "resource.c"
	.loc 1 94 0
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
	movq	%rsi, -48(%rbp)	# x, x
	movq	%rdx, -56(%rbp)	# data, data
	.loc 1 98 0
	movq	-40(%rbp), %rax	# dest, tmp108
	movzwl	(%rax), %eax	# dest_12(D)->code, D.12362
	cmpw	$61, %ax	#, D.12362
	je	.L2	#,
	.loc 1 99 0
	movq	-40(%rbp), %rax	# dest, tmp109
	movzwl	(%rax), %eax	# dest_12(D)->code, D.12362
	cmpw	$63, %ax	#, D.12362
	jne	.L3	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# dest, tmp110
	movq	8(%rax), %rax	# dest_12(D)->fld[0].rtx, D.12363
	movzwl	(%rax), %eax	# _15->code, D.12362
	cmpw	$61, %ax	#, D.12362
	je	.L2	#,
.L3:
	.loc 1 100 0 is_stmt 1
	jmp	.L1	#
.L2:
	.loc 1 102 0
	movq	-40(%rbp), %rax	# dest, tmp111
	movzwl	(%rax), %eax	# dest_12(D)->code, D.12362
	cmpw	$63, %ax	#, D.12362
	jne	.L5	#,
	.loc 1 103 0
	movq	-40(%rbp), %rax	# dest, tmp112
	movq	%rax, %rdi	# tmp112,
	call	subreg_regno	#
	movl	%eax, -28(%rbp)	# D.12364, first_regno
	jmp	.L6	#
.L5:
	.loc 1 105 0
	movq	-40(%rbp), %rax	# dest, tmp113
	movl	8(%rax), %eax	# dest_12(D)->fld[0].rtuint, D.12364
	movl	%eax, -28(%rbp)	# D.12364, first_regno
.L6:
	.loc 1 107 0
	cmpl	$7, -28(%rbp)	#, first_regno
	jle	.L7	#,
	.loc 1 107 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, first_regno
	jle	.L8	#,
.L7:
	.loc 1 107 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, first_regno
	jle	.L9	#,
	.loc 1 107 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, first_regno
	jle	.L8	#,
.L9:
	.loc 1 107 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, first_regno
	jle	.L10	#,
	.loc 1 107 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, first_regno
	jle	.L8	#,
.L10:
	.loc 1 107 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, first_regno
	jle	.L11	#,
	.loc 1 107 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, first_regno
	jg	.L11	#,
.L8:
	movq	-40(%rbp), %rax	# dest, tmp114
	movzbl	2(%rax), %eax	# dest_12(D)->mode, D.12365
	movzbl	%al, %eax	# D.12365, D.12366
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12367
	cmpl	$5, %eax	#, D.12367
	je	.L12	#,
	.loc 1 107 0 discriminator 2
	movq	-40(%rbp), %rax	# dest, tmp116
	movzbl	2(%rax), %eax	# dest_12(D)->mode, D.12365
	movzbl	%al, %eax	# D.12365, D.12366
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12367
	cmpl	$6, %eax	#, D.12367
	jne	.L13	#,
.L12:
	.loc 1 107 0 discriminator 1
	movl	$2, %eax	#, iftmp.1
	jmp	.L14	#
.L13:
	movl	$1, %eax	#, iftmp.1
.L14:
	.loc 1 107 0 discriminator 3
	jmp	.L15	#
.L11:
	.loc 1 107 0 discriminator 2
	movq	-40(%rbp), %rax	# dest, tmp118
	movzbl	2(%rax), %eax	# dest_12(D)->mode, D.12365
	cmpb	$18, %al	#, D.12365
	jne	.L16	#,
	.loc 1 107 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.4
	andl	$33554432, %eax	#, D.12366
	testl	%eax, %eax	# D.12366
	je	.L17	#,
	movl	$2, %eax	#, iftmp.3
	jmp	.L15	#
.L17:
	.loc 1 107 0 discriminator 2
	movl	$3, %eax	#, iftmp.3
	jmp	.L15	#
.L16:
	movq	-40(%rbp), %rax	# dest, tmp119
	movzbl	2(%rax), %eax	# dest_12(D)->mode, D.12365
	cmpb	$24, %al	#, D.12365
	jne	.L20	#,
	.loc 1 107 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.7
	andl	$33554432, %eax	#, D.12366
	testl	%eax, %eax	# D.12366
	je	.L21	#,
	movl	$4, %eax	#, iftmp.6
	jmp	.L15	#
.L21:
	.loc 1 107 0 discriminator 2
	movl	$6, %eax	#, iftmp.6
	jmp	.L15	#
.L20:
	movq	-40(%rbp), %rax	# dest, tmp120
	movzbl	2(%rax), %eax	# dest_12(D)->mode, D.12365
	movzbl	%al, %eax	# D.12365, D.12366
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12365
	movzbl	%al, %edx	# D.12365, D.12366
	movl	target_flags(%rip), %eax	# target_flags, target_flags.9
	andl	$33554432, %eax	#, D.12366
	testl	%eax, %eax	# D.12366
	je	.L24	#,
	.loc 1 107 0 discriminator 1
	movl	$8, %eax	#, iftmp.8
	jmp	.L25	#
.L24:
	.loc 1 107 0 discriminator 2
	movl	$4, %eax	#, iftmp.8
.L25:
	.loc 1 107 0 discriminator 3
	addl	%edx, %eax	# D.12366, D.12366
	subl	$1, %eax	#, D.12366
	movl	target_flags(%rip), %edx	# target_flags, target_flags.11
	andl	$33554432, %edx	#, D.12366
	testl	%edx, %edx	# D.12366
	je	.L26	#,
	.loc 1 107 0 discriminator 1
	movl	$8, %ebx	#, iftmp.10
	jmp	.L27	#
.L26:
	.loc 1 107 0 discriminator 2
	movl	$4, %ebx	#, iftmp.10
.L27:
	.loc 1 107 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.10
.L15:
	movl	-28(%rbp), %edx	# first_regno, tmp127
	addl	%edx, %eax	# tmp127, tmp126
	movl	%eax, -20(%rbp)	# tmp126, last_regno
	.loc 1 109 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# x, tmp128
	movzwl	(%rax), %eax	# x_61(D)->code, D.12362
	cmpw	$49, %ax	#, D.12362
	jne	.L28	#,
	.loc 1 110 0
	movl	-28(%rbp), %eax	# first_regno, tmp129
	movl	%eax, -24(%rbp)	# tmp129, i
	jmp	.L29	#
.L30:
	.loc 1 111 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp130
	movl	$1, %edx	#, tmp131
	movl	%eax, %ecx	# tmp130, tmp141
	salq	%cl, %rdx	# tmp141, D.12368
	movq	%rdx, %rax	# D.12368, D.12368
	notq	%rax	# D.12368
	movq	%rax, %rdx	# D.12368, D.12368
	movq	current_live_regs(%rip), %rax	# current_live_regs, current_live_regs.12
	andq	%rdx, %rax	# D.12368, current_live_regs.13
	movq	%rax, current_live_regs(%rip)	# current_live_regs.13, current_live_regs
	.loc 1 110 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L29:
	.loc 1 110 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp132
	cmpl	-20(%rbp), %eax	# last_regno, tmp132
	jl	.L30	#,
	jmp	.L1	#
.L28:
	.loc 1 113 0 is_stmt 1
	movl	-28(%rbp), %eax	# first_regno, tmp133
	movl	%eax, -24(%rbp)	# tmp133, i
	jmp	.L31	#
.L32:
	.loc 1 115 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp134
	movl	$1, %edx	#, tmp135
	movl	%eax, %ecx	# tmp134, tmp143
	salq	%cl, %rdx	# tmp143, D.12368
	movq	current_live_regs(%rip), %rax	# current_live_regs, current_live_regs.14
	orq	%rdx, %rax	# D.12368, current_live_regs.15
	movq	%rax, current_live_regs(%rip)	# current_live_regs.15, current_live_regs
	.loc 1 116 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp136
	movl	$1, %edx	#, tmp137
	movl	%eax, %ecx	# tmp136, tmp145
	salq	%cl, %rdx	# tmp145, D.12368
	movq	%rdx, %rax	# D.12368, D.12368
	notq	%rax	# D.12368
	movq	%rax, %rdx	# D.12368, D.12368
	movq	pending_dead_regs(%rip), %rax	# pending_dead_regs, pending_dead_regs.16
	andq	%rdx, %rax	# D.12368, pending_dead_regs.17
	movq	%rax, pending_dead_regs(%rip)	# pending_dead_regs.17, pending_dead_regs
	.loc 1 113 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L31:
	.loc 1 113 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp138
	cmpl	-20(%rbp), %eax	# last_regno, tmp138
	jl	.L32	#,
.L1:
	.loc 1 118 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	update_live_status, .-update_live_status
	.type	find_basic_block, @function
find_basic_block:
.LFB3:
	.loc 1 135 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# search_limit, search_limit
	.loc 1 140 0
	movq	-24(%rbp), %rax	# insn, tmp67
	movq	%rax, %rdi	# tmp67,
	call	prev_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp68, insn
	jmp	.L34	#
.L36:
	.loc 1 142 0
	movq	-24(%rbp), %rax	# insn, tmp69
	movq	%rax, %rdi	# tmp69,
	call	prev_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp70, insn
	subl	$1, -28(%rbp)	#, search_limit
.L34:
	.loc 1 140 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	je	.L35	#,
	.loc 1 141 0
	movq	-24(%rbp), %rax	# insn, tmp71
	movzwl	(%rax), %eax	# insn_1->code, D.12370
	cmpw	$35, %ax	#, D.12370
	je	.L35	#,
	.loc 1 141 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, search_limit
	jne	.L36	#,
.L35:
	.loc 1 146 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, search_limit
	jne	.L37	#,
	.loc 1 147 0
	movl	$-1, %eax	#, D.12369
	jmp	.L38	#
.L37:
	.loc 1 150 0
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L39	#,
	.loc 1 151 0
	movl	$0, %eax	#, D.12369
	jmp	.L38	#
.L39:
	.loc 1 155 0
	movq	-24(%rbp), %rax	# insn, tmp72
	movq	%rax, %rdi	# tmp72,
	call	next_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp73, insn
	jmp	.L40	#
.L45:
	.loc 1 159 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L41	#
.L43:
	.loc 1 160 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.18
	movl	-4(%rbp), %edx	# i, tmp75
	movslq	%edx, %rdx	# tmp75, tmp74
	addq	$4, %rdx	#, tmp76
	movq	(%rax,%rdx,8), %rax	# basic_block_info.18_18->data.bb, D.12371
	movq	(%rax), %rax	# _19->head, D.12372
	cmpq	-24(%rbp), %rax	# insn, D.12372
	jne	.L42	#,
	.loc 1 161 0
	movl	-4(%rbp), %eax	# i, D.12369
	jmp	.L38	#
.L42:
	.loc 1 159 0
	addl	$1, -4(%rbp)	#, i
.L41:
	.loc 1 159 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.19
	cmpl	%eax, -4(%rbp)	# n_basic_blocks.19, i
	jl	.L43	#,
	.loc 1 157 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp77
	movq	%rax, %rdi	# tmp77,
	call	next_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp78, insn
.L40:
	.loc 1 155 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	je	.L44	#,
	.loc 1 156 0
	movq	-24(%rbp), %rax	# insn, tmp79
	movzwl	(%rax), %eax	# insn_2->code, D.12370
	cmpw	$36, %ax	#, D.12370
	je	.L45	#,
.L44:
	.loc 1 164 0
	movl	$-1, %eax	#, D.12369
.L38:
	.loc 1 165 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	find_basic_block, .-find_basic_block
	.type	next_insn_no_annul, @function
next_insn_no_annul:
.LFB4:
	.loc 1 173 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 174 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L47	#,
	.loc 1 178 0
	movq	-8(%rbp), %rax	# insn, tmp73
	movzbl	3(%rax), %eax	# *insn_4(D), D.12373
	andl	$4, %eax	#, D.12373
	testb	%al, %al	# D.12373
	je	.L48	#,
	.loc 1 179 0
	movq	-8(%rbp), %rax	# insn, tmp74
	movq	16(%rax), %rax	# insn_4(D)->fld[1].rtx, D.12374
	movq	24(%rax), %rax	# _7->fld[2].rtx, D.12374
	cmpq	-8(%rbp), %rax	# insn, D.12374
	je	.L48	#,
	.loc 1 180 0
	jmp	.L49	#
.L50:
	.loc 1 181 0
	movq	-8(%rbp), %rax	# insn, tmp75
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp76
	movq	%rax, -8(%rbp)	# tmp76, insn
.L49:
	.loc 1 180 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp77
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, D.12374
	movzbl	3(%rax), %eax	# *_9, D.12373
	andl	$16, %eax	#, D.12373
	testb	%al, %al	# D.12373
	jne	.L50	#,
.L48:
	.loc 1 183 0
	movq	-8(%rbp), %rax	# insn, tmp78
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp79
	movq	%rax, -8(%rbp)	# tmp79, insn
	.loc 1 184 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L47	#,
	.loc 1 184 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp80
	movzwl	(%rax), %eax	# insn_13->code, D.12375
	cmpw	$32, %ax	#, D.12375
	jne	.L47	#,
	.loc 1 185 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, tmp81
	movq	32(%rax), %rax	# insn_13->fld[3].rtx, D.12374
	movzwl	(%rax), %eax	# _15->code, D.12375
	cmpw	$24, %ax	#, D.12375
	jne	.L47	#,
	.loc 1 186 0
	movq	-8(%rbp), %rax	# insn, tmp82
	movq	32(%rax), %rax	# insn_13->fld[3].rtx, D.12374
	movq	8(%rax), %rax	# _17->fld[0].rtvec, D.12376
	movq	8(%rax), %rax	# _18->elem, tmp83
	movq	%rax, -8(%rbp)	# tmp83, insn
.L47:
	.loc 1 189 0
	movq	-8(%rbp), %rax	# insn, D.12377
	.loc 1 190 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	next_insn_no_annul, .-next_insn_no_annul
	.section	.rodata
.LC0:
	.string	"resource.c"
	.text
	.globl	mark_referenced_resources
	.type	mark_referenced_resources, @function
mark_referenced_resources:
.LFB5:
	.loc 1 202 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# x, x
	movq	%rsi, -112(%rbp)	# res, res
	movl	%edx, -116(%rbp)	# include_delayed_effects, include_delayed_effects
	.loc 1 203 0
	movq	-104(%rbp), %rax	# x, tmp198
	movzwl	(%rax), %eax	# x_29(D)->code, D.12378
	movzwl	%ax, %eax	# D.12378, tmp199
	movl	%eax, -76(%rbp)	# tmp199, code
	.loc 1 210 0
	movl	-76(%rbp), %eax	# code, tmp201
	subl	$32, %eax	#, tmp200
	cmpl	$37, %eax	#, tmp200
	ja	.L148	#,
	movl	%eax, %eax	# tmp200, tmp202
	movq	.L55(,%rax,8), %rax	#, tmp203
	jmp	*%rax	# tmp203
	.section	.rodata
	.align 8
	.align 4
.L55:
	.quad	.L54
	.quad	.L54
	.quad	.L56
	.quad	.L148
	.quad	.L148
	.quad	.L148
	.quad	.L148
	.quad	.L148
	.quad	.L57
	.quad	.L58
	.quad	.L148
	.quad	.L57
	.quad	.L148
	.quad	.L148
	.quad	.L148
	.quad	.L59
	.quad	.L148
	.quad	.L149
	.quad	.L61
	.quad	.L148
	.quad	.L62
	.quad	.L148
	.quad	.L149
	.quad	.L149
	.quad	.L149
	.quad	.L148
	.quad	.L149
	.quad	.L149
	.quad	.L148
	.quad	.L64
	.quad	.L148
	.quad	.L65
	.quad	.L148
	.quad	.L148
	.quad	.L66
	.quad	.L149
	.quad	.L149
	.quad	.L67
	.text
.L65:
	.loc 1 222 0
	movq	-104(%rbp), %rax	# x, tmp204
	movq	8(%rax), %rax	# x_29(D)->fld[0].rtx, D.12379
	movzwl	(%rax), %eax	# _32->code, D.12378
	cmpw	$61, %ax	#, D.12378
	je	.L69	#,
	.loc 1 223 0
	movq	-104(%rbp), %rax	# x, tmp205
	movq	8(%rax), %rax	# x_29(D)->fld[0].rtx, D.12379
	movq	-112(%rbp), %rcx	# res, tmp206
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp206,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
	jmp	.L70	#
.L69:
.LBB2:
	.loc 1 226 0
	movq	-104(%rbp), %rax	# x, tmp207
	movq	%rax, %rdi	# tmp207,
	call	subreg_regno	#
	movl	%eax, -72(%rbp)	# tmp208, regno
	.loc 1 228 0
	cmpl	$7, -72(%rbp)	#, regno
	jbe	.L71	#,
	.loc 1 228 0 is_stmt 0 discriminator 1
	cmpl	$15, -72(%rbp)	#, regno
	jbe	.L72	#,
.L71:
	.loc 1 228 0 discriminator 2
	cmpl	$20, -72(%rbp)	#, regno
	jbe	.L73	#,
	.loc 1 228 0 discriminator 1
	cmpl	$28, -72(%rbp)	#, regno
	jbe	.L72	#,
.L73:
	.loc 1 228 0 discriminator 2
	cmpl	$44, -72(%rbp)	#, regno
	jbe	.L74	#,
	.loc 1 228 0 discriminator 1
	cmpl	$52, -72(%rbp)	#, regno
	jbe	.L72	#,
.L74:
	.loc 1 228 0 discriminator 2
	cmpl	$28, -72(%rbp)	#, regno
	jbe	.L75	#,
	.loc 1 228 0 discriminator 1
	cmpl	$36, -72(%rbp)	#, regno
	ja	.L75	#,
.L72:
	movq	-104(%rbp), %rax	# x, tmp209
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.12380
	movzbl	%al, %eax	# D.12380, D.12381
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12382
	cmpl	$5, %eax	#, D.12382
	je	.L76	#,
	.loc 1 228 0 discriminator 4
	movq	-104(%rbp), %rax	# x, tmp211
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.12380
	movzbl	%al, %eax	# D.12380, D.12381
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12382
	cmpl	$6, %eax	#, D.12382
	jne	.L77	#,
.L76:
	.loc 1 228 0 discriminator 3
	movl	$2, %eax	#, iftmp.21
	jmp	.L79	#
.L77:
	.loc 1 228 0 discriminator 1
	movl	$1, %eax	#, iftmp.21
	jmp	.L79	#
.L75:
	.loc 1 228 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp213
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.12380
	cmpb	$18, %al	#, D.12380
	jne	.L80	#,
	.loc 1 228 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.24
	andl	$33554432, %eax	#, D.12381
	testl	%eax, %eax	# D.12381
	je	.L81	#,
	.loc 1 228 0 discriminator 8
	movl	$2, %eax	#, iftmp.23
	jmp	.L79	#
.L81:
	.loc 1 228 0 discriminator 9
	movl	$3, %eax	#, iftmp.23
	jmp	.L79	#
.L80:
	.loc 1 228 0 discriminator 7
	movq	-104(%rbp), %rax	# x, tmp214
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.12380
	cmpb	$24, %al	#, D.12380
	jne	.L84	#,
	.loc 1 228 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.27
	andl	$33554432, %eax	#, D.12381
	testl	%eax, %eax	# D.12381
	je	.L85	#,
	.loc 1 228 0 discriminator 12
	movl	$4, %eax	#, iftmp.26
	jmp	.L79	#
.L85:
	.loc 1 228 0 discriminator 13
	movl	$6, %eax	#, iftmp.26
	jmp	.L79	#
.L84:
	.loc 1 228 0 discriminator 11
	movq	-104(%rbp), %rax	# x, tmp215
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.12380
	movzbl	%al, %eax	# D.12380, D.12381
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12380
	movzbl	%al, %edx	# D.12380, D.12381
	movl	target_flags(%rip), %eax	# target_flags, target_flags.29
	andl	$33554432, %eax	#, D.12381
	testl	%eax, %eax	# D.12381
	je	.L88	#,
	.loc 1 228 0 discriminator 1
	movl	$8, %eax	#, iftmp.28
	jmp	.L89	#
.L88:
	.loc 1 228 0 discriminator 2
	movl	$4, %eax	#, iftmp.28
.L89:
	.loc 1 228 0 discriminator 3
	addl	%edx, %eax	# D.12381, D.12381
	subl	$1, %eax	#, D.12381
	movl	target_flags(%rip), %edx	# target_flags, target_flags.31
	andl	$33554432, %edx	#, D.12381
	testl	%edx, %edx	# D.12381
	je	.L90	#,
	.loc 1 228 0 discriminator 1
	movl	$8, %ebx	#, iftmp.30
	jmp	.L91	#
.L90:
	.loc 1 228 0 discriminator 2
	movl	$4, %ebx	#, iftmp.30
.L91:
	.loc 1 228 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.30
.L79:
	.loc 1 227 0 is_stmt 1
	movl	-72(%rbp), %edx	# regno, tmp222
	addl	%edx, %eax	# tmp222, tmp221
	movl	%eax, -68(%rbp)	# tmp221, last_regno
	.loc 1 230 0
	cmpl	$53, -68(%rbp)	#, last_regno
	jbe	.L92	#,
	.loc 1 231 0
	movl	$__FUNCTION__.10744, %edx	#,
	movl	$231, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L92:
	.loc 1 232 0
	movl	-72(%rbp), %eax	# regno, tmp223
	movl	%eax, -88(%rbp)	# tmp223, r
	jmp	.L93	#
.L94:
	.loc 1 233 0 discriminator 2
	movq	-112(%rbp), %rax	# res, tmp224
	movq	8(%rax), %rdx	# res_35(D)->regs, D.12383
	movl	-88(%rbp), %eax	# r, r.32
	movl	$1, %esi	#, tmp225
	movl	%eax, %ecx	# r.32, tmp356
	salq	%cl, %rsi	# tmp356, D.12383
	movq	%rsi, %rax	# D.12383, D.12383
	orq	%rax, %rdx	# D.12383, D.12383
	movq	-112(%rbp), %rax	# res, tmp226
	movq	%rdx, 8(%rax)	# D.12383, res_35(D)->regs
	.loc 1 232 0 discriminator 2
	addl	$1, -88(%rbp)	#, r
.L93:
	.loc 1 232 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# r, tmp227
	cmpl	-68(%rbp), %eax	# last_regno, tmp227
	jb	.L94	#,
.L70:
.LBE2:
	.loc 1 235 0 is_stmt 1
	jmp	.L52	#
.L64:
.LBB3:
	.loc 1 239 0
	movq	-104(%rbp), %rax	# x, tmp228
	movl	8(%rax), %eax	# x_29(D)->fld[0].rtuint, tmp229
	movl	%eax, -64(%rbp)	# tmp229, regno
	.loc 1 241 0
	cmpl	$7, -64(%rbp)	#, regno
	jbe	.L95	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	cmpl	$15, -64(%rbp)	#, regno
	jbe	.L96	#,
.L95:
	.loc 1 241 0 discriminator 2
	cmpl	$20, -64(%rbp)	#, regno
	jbe	.L97	#,
	.loc 1 241 0 discriminator 1
	cmpl	$28, -64(%rbp)	#, regno
	jbe	.L96	#,
.L97:
	.loc 1 241 0 discriminator 2
	cmpl	$44, -64(%rbp)	#, regno
	jbe	.L98	#,
	.loc 1 241 0 discriminator 1
	cmpl	$52, -64(%rbp)	#, regno
	jbe	.L96	#,
.L98:
	.loc 1 241 0 discriminator 2
	cmpl	$28, -64(%rbp)	#, regno
	jbe	.L99	#,
	.loc 1 241 0 discriminator 1
	cmpl	$36, -64(%rbp)	#, regno
	ja	.L99	#,
.L96:
	movq	-104(%rbp), %rax	# x, tmp230
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.12380
	movzbl	%al, %eax	# D.12380, D.12381
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12382
	cmpl	$5, %eax	#, D.12382
	je	.L100	#,
	.loc 1 241 0 discriminator 4
	movq	-104(%rbp), %rax	# x, tmp232
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.12380
	movzbl	%al, %eax	# D.12380, D.12381
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12382
	cmpl	$6, %eax	#, D.12382
	jne	.L101	#,
.L100:
	.loc 1 241 0 discriminator 3
	movl	$2, %eax	#, iftmp.34
	jmp	.L103	#
.L101:
	.loc 1 241 0 discriminator 1
	movl	$1, %eax	#, iftmp.34
	jmp	.L103	#
.L99:
	.loc 1 241 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp234
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.12380
	cmpb	$18, %al	#, D.12380
	jne	.L104	#,
	.loc 1 241 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.37
	andl	$33554432, %eax	#, D.12381
	testl	%eax, %eax	# D.12381
	je	.L105	#,
	.loc 1 241 0 discriminator 8
	movl	$2, %eax	#, iftmp.36
	jmp	.L103	#
.L105:
	.loc 1 241 0 discriminator 9
	movl	$3, %eax	#, iftmp.36
	jmp	.L103	#
.L104:
	.loc 1 241 0 discriminator 7
	movq	-104(%rbp), %rax	# x, tmp235
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.12380
	cmpb	$24, %al	#, D.12380
	jne	.L108	#,
	.loc 1 241 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.40
	andl	$33554432, %eax	#, D.12381
	testl	%eax, %eax	# D.12381
	je	.L109	#,
	.loc 1 241 0 discriminator 12
	movl	$4, %eax	#, iftmp.39
	jmp	.L103	#
.L109:
	.loc 1 241 0 discriminator 13
	movl	$6, %eax	#, iftmp.39
	jmp	.L103	#
.L108:
	.loc 1 241 0 discriminator 11
	movq	-104(%rbp), %rax	# x, tmp236
	movzbl	2(%rax), %eax	# x_29(D)->mode, D.12380
	movzbl	%al, %eax	# D.12380, D.12381
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12380
	movzbl	%al, %edx	# D.12380, D.12381
	movl	target_flags(%rip), %eax	# target_flags, target_flags.42
	andl	$33554432, %eax	#, D.12381
	testl	%eax, %eax	# D.12381
	je	.L112	#,
	.loc 1 241 0 discriminator 1
	movl	$8, %eax	#, iftmp.41
	jmp	.L113	#
.L112:
	.loc 1 241 0 discriminator 2
	movl	$4, %eax	#, iftmp.41
.L113:
	.loc 1 241 0 discriminator 3
	addl	%edx, %eax	# D.12381, D.12381
	subl	$1, %eax	#, D.12381
	movl	target_flags(%rip), %edx	# target_flags, target_flags.44
	andl	$33554432, %edx	#, D.12381
	testl	%edx, %edx	# D.12381
	je	.L114	#,
	.loc 1 241 0 discriminator 1
	movl	$8, %ebx	#, iftmp.43
	jmp	.L115	#
.L114:
	.loc 1 241 0 discriminator 2
	movl	$4, %ebx	#, iftmp.43
.L115:
	.loc 1 241 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.43
.L103:
	.loc 1 240 0 is_stmt 1
	movl	-64(%rbp), %edx	# regno, tmp243
	addl	%edx, %eax	# tmp243, tmp242
	movl	%eax, -60(%rbp)	# tmp242, last_regno
	.loc 1 243 0
	cmpl	$53, -60(%rbp)	#, last_regno
	jbe	.L116	#,
	.loc 1 244 0
	movl	$__FUNCTION__.10744, %edx	#,
	movl	$244, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L116:
	.loc 1 245 0
	movl	-64(%rbp), %eax	# regno, tmp244
	movl	%eax, -88(%rbp)	# tmp244, r
	jmp	.L117	#
.L118:
	.loc 1 246 0 discriminator 2
	movq	-112(%rbp), %rax	# res, tmp245
	movq	8(%rax), %rdx	# res_35(D)->regs, D.12383
	movl	-88(%rbp), %eax	# r, r.45
	movl	$1, %esi	#, tmp246
	movl	%eax, %ecx	# r.45, tmp359
	salq	%cl, %rsi	# tmp359, D.12383
	movq	%rsi, %rax	# D.12383, D.12383
	orq	%rax, %rdx	# D.12383, D.12383
	movq	-112(%rbp), %rax	# res, tmp247
	movq	%rdx, 8(%rax)	# D.12383, res_35(D)->regs
	.loc 1 245 0 discriminator 2
	addl	$1, -88(%rbp)	#, r
.L117:
	.loc 1 245 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# r, tmp248
	cmpl	-60(%rbp), %eax	# last_regno, tmp248
	jb	.L118	#,
.LBE3:
	.loc 1 248 0 is_stmt 1
	jmp	.L52	#
.L66:
	.loc 1 253 0
	movq	-104(%rbp), %rax	# x, tmp249
	movzbl	3(%rax), %eax	# *x_29(D), D.12380
	andl	$4, %eax	#, D.12380
	testb	%al, %al	# D.12380
	je	.L119	#,
	.loc 1 254 0
	movq	-112(%rbp), %rax	# res, tmp250
	movb	$1, 1(%rax)	#, res_35(D)->unch_memory
	jmp	.L120	#
.L119:
	.loc 1 256 0
	movq	-112(%rbp), %rax	# res, tmp251
	movb	$1, (%rax)	#, res_35(D)->memory
.L120:
	.loc 1 257 0
	movq	-112(%rbp), %rax	# res, tmp252
	movzbl	2(%rax), %edx	# res_35(D)->volatil, D.12384
	movq	-104(%rbp), %rax	# x, tmp253
	movzbl	3(%rax), %eax	# *x_29(D), tmp256
	shrb	$3, %al	#, D.12385
	andl	$1, %eax	#, D.12385
	orl	%eax, %edx	# D.12384, D.12384
	movq	-112(%rbp), %rax	# res, tmp257
	movb	%dl, 2(%rax)	# D.12384, res_35(D)->volatil
	.loc 1 260 0
	movq	-104(%rbp), %rax	# x, tmp258
	movq	8(%rax), %rax	# x_29(D)->fld[0].rtx, D.12379
	movq	-112(%rbp), %rcx	# res, tmp259
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp259,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
	.loc 1 261 0
	jmp	.L52	#
.L67:
	.loc 1 264 0
	movq	-112(%rbp), %rax	# res, tmp260
	movb	$1, 3(%rax)	#, res_35(D)->cc
	.loc 1 265 0
	jmp	.L52	#
.L57:
	.loc 1 270 0
	movq	-112(%rbp), %rax	# res, tmp261
	movb	$1, 2(%rax)	#, res_35(D)->volatil
	.loc 1 271 0
	jmp	.L52	#
.L62:
	.loc 1 274 0
	movq	-112(%rbp), %rax	# res, tmp262
	movb	$1, 2(%rax)	#, res_35(D)->volatil
	.loc 1 275 0
	jmp	.L121	#
.L58:
	.loc 1 278 0
	movq	-112(%rbp), %rax	# res, tmp263
	movzbl	2(%rax), %edx	# res_35(D)->volatil, D.12384
	movq	-104(%rbp), %rax	# x, tmp264
	movzbl	3(%rax), %eax	# *x_29(D), tmp267
	shrb	$3, %al	#, D.12385
	andl	$1, %eax	#, D.12385
	orl	%eax, %edx	# D.12384, D.12384
	movq	-112(%rbp), %rax	# res, tmp268
	movb	%dl, 2(%rax)	# D.12384, res_35(D)->volatil
	.loc 1 285 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L122	#
.L123:
	.loc 1 286 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp269
	movq	32(%rax), %rax	# x_29(D)->fld[3].rtvec, D.12386
	movl	-96(%rbp), %edx	# i, tmp271
	movslq	%edx, %rdx	# tmp271, tmp270
	movq	8(%rax,%rdx,8), %rax	# _144->elem, D.12379
	movq	-112(%rbp), %rcx	# res, tmp272
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp272,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
	.loc 1 285 0 discriminator 2
	addl	$1, -96(%rbp)	#, i
.L122:
	.loc 1 285 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp273
	movq	32(%rax), %rax	# x_29(D)->fld[3].rtvec, D.12386
	movl	(%rax), %eax	# _142->num_elem, D.12381
	cmpl	-96(%rbp), %eax	# i, D.12381
	jg	.L123	#,
	.loc 1 287 0 is_stmt 1
	jmp	.L52	#
.L61:
	.loc 1 292 0
	movq	-104(%rbp), %rax	# x, tmp274
	movq	8(%rax), %rax	# x_29(D)->fld[0].rtx, D.12379
	movq	8(%rax), %rax	# _147->fld[0].rtx, D.12379
	movq	-112(%rbp), %rcx	# res, tmp275
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp275,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
	.loc 1 293 0
	movq	-104(%rbp), %rax	# x, tmp276
	movq	16(%rax), %rax	# x_29(D)->fld[1].rtx, D.12379
	movq	-112(%rbp), %rcx	# res, tmp277
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp277,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
	.loc 1 294 0
	jmp	.L52	#
.L59:
	.loc 1 301 0
	movq	-104(%rbp), %rax	# x, tmp278
	movq	16(%rax), %rax	# x_29(D)->fld[1].rtx, D.12379
	movq	-112(%rbp), %rcx	# res, tmp279
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp279,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
	.loc 1 303 0
	movq	-104(%rbp), %rax	# x, tmp280
	movq	8(%rax), %rax	# x_29(D)->fld[0].rtx, tmp281
	movq	%rax, -104(%rbp)	# tmp281, x
	.loc 1 304 0
	movq	-104(%rbp), %rax	# x, tmp282
	movzwl	(%rax), %eax	# x_151->code, D.12378
	cmpw	$132, %ax	#, D.12378
	je	.L124	#,
	.loc 1 305 0
	movq	-104(%rbp), %rax	# x, tmp283
	movzwl	(%rax), %eax	# x_151->code, D.12378
	cmpw	$133, %ax	#, D.12378
	je	.L124	#,
	.loc 1 306 0
	movq	-104(%rbp), %rax	# x, tmp284
	movzwl	(%rax), %eax	# x_151->code, D.12378
	cmpw	$64, %ax	#, D.12378
	jne	.L125	#,
.L124:
	.loc 1 307 0
	movq	-112(%rbp), %rcx	# res, tmp285
	movq	-104(%rbp), %rax	# x, tmp286
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp285,
	movq	%rax, %rdi	# tmp286,
	call	mark_referenced_resources	#
	jmp	.L126	#
.L125:
	.loc 1 308 0
	movq	-104(%rbp), %rax	# x, tmp287
	movzwl	(%rax), %eax	# x_151->code, D.12378
	cmpw	$63, %ax	#, D.12378
	jne	.L126	#,
	.loc 1 309 0
	movq	-104(%rbp), %rax	# x, tmp288
	movq	8(%rax), %rax	# x_151->fld[0].rtx, tmp289
	movq	%rax, -104(%rbp)	# tmp289, x
.L126:
	.loc 1 310 0
	movq	-104(%rbp), %rax	# x, tmp290
	movzwl	(%rax), %eax	# x_1->code, D.12378
	cmpw	$66, %ax	#, D.12378
	jne	.L127	#,
	.loc 1 311 0
	movq	-104(%rbp), %rax	# x, tmp291
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.12379
	movq	-112(%rbp), %rcx	# res, tmp292
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp292,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
	.loc 1 312 0
	jmp	.L52	#
.L127:
	jmp	.L52	#
.L56:
	.loc 1 318 0
	cmpl	$0, -116(%rbp)	#, include_delayed_effects
	je	.L54	#,
.LBB4:
	.loc 1 327 0
	movq	-104(%rbp), %rax	# x, tmp293
	movq	16(%rax), %rax	# x_29(D)->fld[1].rtx, tmp294
	movq	%rax, -32(%rbp)	# tmp294, insn
	.loc 1 328 0
	movq	$0, -48(%rbp)	#, sequence
	.loc 1 329 0
	movl	$0, -84(%rbp)	#, seq_size
	.loc 1 333 0
	movq	-32(%rbp), %rax	# insn, tmp295
	movq	24(%rax), %rax	# insn_160->fld[2].rtx, D.12379
	cmpq	-104(%rbp), %rax	# x, D.12379
	je	.L128	#,
	.loc 1 335 0
	movq	-32(%rbp), %rax	# insn, tmp296
	movq	24(%rax), %rax	# insn_160->fld[2].rtx, D.12379
	movq	32(%rax), %rax	# _164->fld[3].rtx, tmp297
	movq	%rax, -48(%rbp)	# tmp297, sequence
	.loc 1 336 0
	movq	-48(%rbp), %rax	# sequence, tmp298
	movq	8(%rax), %rax	# sequence_165->fld[0].rtvec, D.12386
	movl	(%rax), %eax	# _166->num_elem, tmp299
	movl	%eax, -84(%rbp)	# tmp299, seq_size
	.loc 1 337 0
	movq	-48(%rbp), %rax	# sequence, tmp300
	movzwl	(%rax), %eax	# sequence_165->code, D.12378
	cmpw	$24, %ax	#, D.12378
	je	.L128	#,
	.loc 1 338 0
	movl	$__FUNCTION__.10744, %edx	#,
	movl	$338, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L128:
	.loc 1 341 0
	movq	-112(%rbp), %rax	# res, tmp301
	movb	$1, (%rax)	#, res_35(D)->memory
	.loc 1 342 0
	movq	-112(%rbp), %rax	# res, tmp302
	movq	8(%rax), %rax	# res_35(D)->regs, D.12383
	orb	$-128, %al	#, D.12383
	movq	%rax, %rdx	# D.12383, D.12383
	movq	-112(%rbp), %rax	# res, tmp303
	movq	%rdx, 8(%rax)	# D.12383, res_35(D)->regs
	.loc 1 343 0
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.46
	testl	%eax, %eax	# frame_pointer_needed.46
	je	.L129	#,
	.loc 1 345 0
	movq	-112(%rbp), %rax	# res, tmp304
	movq	8(%rax), %rax	# res_35(D)->regs, D.12383
	orq	$1048576, %rax	#, D.12383
	movq	%rax, %rdx	# D.12383, D.12383
	movq	-112(%rbp), %rax	# res, tmp305
	movq	%rdx, 8(%rax)	# D.12383, res_35(D)->regs
	.loc 1 347 0
	movq	-112(%rbp), %rax	# res, tmp306
	movq	8(%rax), %rax	# res_35(D)->regs, D.12383
	orq	$64, %rax	#, D.12383
	movq	%rax, %rdx	# D.12383, D.12383
	movq	-112(%rbp), %rax	# res, tmp307
	movq	%rdx, 8(%rax)	# D.12383, res_35(D)->regs
.L129:
	.loc 1 351 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L130	#
.L132:
	.loc 1 352 0
	movl	-80(%rbp), %eax	# i, tmp309
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.12384
	testb	%al, %al	# D.12384
	je	.L131	#,
	.loc 1 353 0
	movq	-112(%rbp), %rax	# res, tmp310
	movq	8(%rax), %rdx	# res_35(D)->regs, D.12383
	movl	-80(%rbp), %eax	# i, tmp311
	movl	$1, %esi	#, tmp312
	movl	%eax, %ecx	# tmp311, tmp364
	salq	%cl, %rsi	# tmp364, D.12383
	movq	%rsi, %rax	# D.12383, D.12383
	orq	%rax, %rdx	# D.12383, D.12383
	movq	-112(%rbp), %rax	# res, tmp313
	movq	%rdx, 8(%rax)	# D.12383, res_35(D)->regs
.L131:
	.loc 1 351 0
	addl	$1, -80(%rbp)	#, i
.L130:
	.loc 1 351 0 is_stmt 0 discriminator 1
	cmpl	$52, -80(%rbp)	#, i
	jle	.L132	#,
	.loc 1 363 0 is_stmt 1
	movq	-104(%rbp), %rax	# x, tmp314
	movl	$0, %edx	#,
	movl	$28, %esi	#,
	movq	%rax, %rdi	# tmp314,
	call	find_reg_note	#
	testq	%rax, %rax	# D.12379
	je	.L133	#,
	.loc 1 364 0
	movq	-112(%rbp), %rax	# res, tmp315
	movq	$-1, 8(%rax)	#, res_35(D)->regs
.L133:
.LBB5:
	.loc 1 369 0
	movq	-104(%rbp), %rax	# x, tmp316
	movq	64(%rax), %rax	# x_29(D)->fld[7].rtx, tmp317
	movq	%rax, -40(%rbp)	# tmp317, link
	jmp	.L134	#
.L140:
	.loc 1 372 0
	movq	-40(%rbp), %rax	# link, tmp318
	movq	8(%rax), %rax	# link_12->fld[0].rtx, D.12379
	movzwl	(%rax), %eax	# _184->code, D.12378
	cmpw	$48, %ax	#, D.12378
	jne	.L135	#,
	.loc 1 374 0
	movl	$1, -80(%rbp)	#, i
	jmp	.L136	#
.L139:
.LBB6:
	.loc 1 376 0
	movq	-48(%rbp), %rax	# sequence, tmp319
	movq	8(%rax), %rax	# sequence_8->fld[0].rtvec, D.12386
	movl	-80(%rbp), %edx	# i, tmp321
	movslq	%edx, %rdx	# tmp321, tmp320
	movq	8(%rax,%rdx,8), %rax	# _187->elem, D.12379
	movq	32(%rax), %rax	# _188->fld[3].rtx, tmp322
	movq	%rax, -24(%rbp)	# tmp322, slot_pat
	.loc 1 377 0
	movq	-24(%rbp), %rax	# slot_pat, tmp323
	movzwl	(%rax), %eax	# slot_pat_189->code, D.12378
	cmpw	$47, %ax	#, D.12378
	jne	.L137	#,
	.loc 1 379 0
	movq	-40(%rbp), %rax	# link, tmp324
	movq	8(%rax), %rax	# link_12->fld[0].rtx, D.12379
	.loc 1 378 0
	movq	8(%rax), %rdx	# _191->fld[0].rtx, D.12379
	movq	-24(%rbp), %rax	# slot_pat, tmp325
	movq	8(%rax), %rax	# slot_pat_189->fld[0].rtx, D.12379
	movq	%rdx, %rsi	# D.12379,
	movq	%rax, %rdi	# D.12379,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.12381
	je	.L137	#,
	.loc 1 380 0
	jmp	.L138	#
.L137:
.LBE6:
	.loc 1 374 0
	addl	$1, -80(%rbp)	#, i
.L136:
	.loc 1 374 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# i, tmp326
	cmpl	-84(%rbp), %eax	# seq_size, tmp326
	jl	.L139	#,
.L138:
	.loc 1 382 0 is_stmt 1
	movl	-80(%rbp), %eax	# i, tmp327
	cmpl	-84(%rbp), %eax	# seq_size, tmp327
	jl	.L135	#,
	.loc 1 383 0
	movq	-40(%rbp), %rax	# link, tmp328
	movq	8(%rax), %rax	# link_12->fld[0].rtx, D.12379
	movq	8(%rax), %rax	# _196->fld[0].rtx, D.12379
	movq	-112(%rbp), %rcx	# res, tmp329
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp329,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
.L135:
	.loc 1 371 0
	movq	-40(%rbp), %rax	# link, tmp330
	movq	16(%rax), %rax	# link_12->fld[1].rtx, tmp331
	movq	%rax, -40(%rbp)	# tmp331, link
.L134:
	.loc 1 369 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, link
	jne	.L140	#,
.L54:
.LBE5:
.LBE4:
	.loc 1 401 0
	movq	-104(%rbp), %rax	# x, tmp332
	movq	32(%rax), %rax	# x_29(D)->fld[3].rtx, D.12379
	movl	-116(%rbp), %edx	# include_delayed_effects, tmp333
	movq	-112(%rbp), %rcx	# res, tmp334
	movq	%rcx, %rsi	# tmp334,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
	.loc 1 402 0
	jmp	.L52	#
.L148:
	.loc 1 405 0
	nop
.L121:
	.loc 1 409 0
	movl	-76(%rbp), %eax	# code, code.47
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp336
	movq	%rax, -56(%rbp)	# tmp336, format_ptr
	.loc 1 410 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L141	#
.L147:
	.loc 1 411 0
	movq	-56(%rbp), %rax	# format_ptr, format_ptr.48
	leaq	1(%rax), %rdx	#, tmp337
	movq	%rdx, -56(%rbp)	# tmp337, format_ptr
	movzbl	(%rax), %eax	# *format_ptr.48_206, D.12384
	movsbl	%al, %eax	# D.12384, D.12381
	cmpl	$69, %eax	#, D.12381
	je	.L143	#,
	cmpl	$101, %eax	#, D.12381
	jne	.L142	#,
	.loc 1 414 0
	movq	-104(%rbp), %rax	# x, tmp338
	movl	-96(%rbp), %edx	# i, tmp340
	movslq	%edx, %rdx	# tmp340, tmp339
	movq	8(%rax,%rdx,8), %rax	# x_29(D)->fld[i_3].rtx, D.12379
	movl	-116(%rbp), %edx	# include_delayed_effects, tmp341
	movq	-112(%rbp), %rcx	# res, tmp342
	movq	%rcx, %rsi	# tmp342,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
	.loc 1 415 0
	jmp	.L142	#
.L143:
	.loc 1 418 0
	movl	$0, -92(%rbp)	#, j
	jmp	.L145	#
.L146:
	.loc 1 419 0 discriminator 2
	movq	-104(%rbp), %rax	# x, tmp343
	movl	-96(%rbp), %edx	# i, tmp345
	movslq	%edx, %rdx	# tmp345, tmp344
	movq	8(%rax,%rdx,8), %rax	# x_29(D)->fld[i_3].rtvec, D.12386
	movl	-92(%rbp), %edx	# j, tmp347
	movslq	%edx, %rdx	# tmp347, tmp346
	movq	8(%rax,%rdx,8), %rax	# _214->elem, D.12379
	movl	-116(%rbp), %edx	# include_delayed_effects, tmp348
	movq	-112(%rbp), %rcx	# res, tmp349
	movq	%rcx, %rsi	# tmp349,
	movq	%rax, %rdi	# D.12379,
	call	mark_referenced_resources	#
	.loc 1 418 0 discriminator 2
	addl	$1, -92(%rbp)	#, j
.L145:
	.loc 1 418 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# x, tmp350
	movl	-96(%rbp), %edx	# i, tmp352
	movslq	%edx, %rdx	# tmp352, tmp351
	movq	8(%rax,%rdx,8), %rax	# x_29(D)->fld[i_3].rtvec, D.12386
	movl	(%rax), %eax	# _212->num_elem, D.12381
	cmpl	-92(%rbp), %eax	# j, D.12381
	jg	.L146	#,
	.loc 1 421 0 is_stmt 1
	nop
.L142:
	.loc 1 410 0
	addl	$1, -96(%rbp)	#, i
.L141:
	.loc 1 410 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# code, code.49
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.12380
	movzbl	%al, %eax	# D.12380, D.12381
	cmpl	-96(%rbp), %eax	# i, D.12381
	jg	.L147	#,
	jmp	.L52	#
.L149:
	.loc 1 315 0 is_stmt 1
	nop
.L52:
	.loc 1 423 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	mark_referenced_resources, .-mark_referenced_resources
	.type	find_dead_or_set_registers, @function
find_dead_or_set_registers:
.LFB6:
	.loc 1 437 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -104(%rbp)	# target, target
	movq	%rsi, -112(%rbp)	# res, res
	movq	%rdx, -120(%rbp)	# jump_target, jump_target
	movl	%ecx, -124(%rbp)	# jump_count, jump_count
	movl	%r8d, %eax	# set, tmp149
	movq	%r9, %rcx	# set, tmp150
	movq	%rcx, %rdx	# tmp150,
	movq	%rax, -144(%rbp)	# tmp148, set
	movq	%rdx, -136(%rbp)	#, set
	.loc 1 440 0
	movq	$0, -72(%rbp)	#, jump_insn
	.loc 1 443 0
	movq	-104(%rbp), %rax	# target, tmp151
	movq	%rax, -88(%rbp)	# tmp151, insn
	jmp	.L151	#
.L181:
.LBB7:
	.loc 1 445 0
	movq	-88(%rbp), %rax	# insn, tmp152
	movq	%rax, -64(%rbp)	# tmp152, this_jump_insn
	.loc 1 447 0
	movq	-88(%rbp), %rax	# insn, tmp153
	movq	24(%rax), %rax	# insn_4->fld[2].rtx, tmp154
	movq	%rax, -80(%rbp)	# tmp154, next
	.loc 1 453 0
	movq	-88(%rbp), %rax	# insn, tmp155
	movq	%rax, %rdi	# tmp155,
	call	can_throw_internal	#
	testb	%al, %al	# D.12388
	je	.L152	#,
	.loc 1 454 0
	jmp	.L153	#
.L152:
	.loc 1 456 0
	movq	-88(%rbp), %rax	# insn, tmp156
	movzwl	(%rax), %eax	# insn_4->code, D.12389
	movzwl	%ax, %eax	# D.12389, D.12390
	cmpl	$35, %eax	#, D.12390
	je	.L184	#,
	cmpl	$35, %eax	#, D.12390
	ja	.L156	#,
	cmpl	$32, %eax	#, D.12390
	je	.L157	#,
	.loc 1 499 0
	jmp	.L185	#
.L156:
	.loc 1 456 0
	cmpl	$36, %eax	#, D.12390
	je	.L158	#,
	cmpl	$37, %eax	#, D.12390
	je	.L184	#,
	.loc 1 499 0
	jmp	.L185	#
.L158:
	.loc 1 461 0
	movq	24(%rbp), %rax	# needed.regs, D.12391
	notq	%rax	# D.12391
	movq	%rax, %rdx	# D.12391, D.12391
	movq	pending_dead_regs(%rip), %rax	# pending_dead_regs, pending_dead_regs.50
	andq	%rdx, %rax	# D.12391, pending_dead_regs.51
	movq	%rax, pending_dead_regs(%rip)	# pending_dead_regs.51, pending_dead_regs
	.loc 1 462 0
	movq	-112(%rbp), %rax	# res, tmp157
	movq	8(%rax), %rax	# res_30(D)->regs, D.12391
	movq	pending_dead_regs(%rip), %rdx	# pending_dead_regs, pending_dead_regs.52
	notq	%rdx	# D.12391
	andq	%rax, %rdx	# D.12391, D.12391
	movq	-112(%rbp), %rax	# res, tmp158
	movq	%rdx, 8(%rax)	# D.12391, res_30(D)->regs
	.loc 1 463 0
	movq	$0, pending_dead_regs(%rip)	#, pending_dead_regs
	.loc 1 465 0
	jmp	.L159	#
.L157:
	.loc 1 472 0
	movq	-88(%rbp), %rax	# insn, tmp159
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movzwl	(%rax), %eax	# _35->code, D.12389
	cmpw	$48, %ax	#, D.12389
	jne	.L160	#,
	.loc 1 477 0
	movq	-88(%rbp), %rax	# insn, tmp160
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movq	8(%rax), %rax	# _37->fld[0].rtx, D.12392
	movzwl	(%rax), %eax	# _38->code, D.12389
	movzwl	%ax, %eax	# D.12389, D.12393
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.12394
	cmpb	$105, %al	#, D.12394
	jne	.L161	#,
	.loc 1 478 0
	movq	-88(%rbp), %rax	# insn, tmp162
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movq	8(%rax), %rax	# _42->fld[0].rtx, D.12392
	movq	-112(%rbp), %rsi	# res, tmp163
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.12392,
	call	mark_set_resources	#
	.loc 1 482 0
	jmp	.L159	#
.L161:
	jmp	.L159	#
.L160:
	.loc 1 484 0
	movq	-88(%rbp), %rax	# insn, tmp164
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movzwl	(%rax), %eax	# _44->code, D.12389
	cmpw	$49, %ax	#, D.12389
	jne	.L162	#,
	.loc 1 485 0
	jmp	.L159	#
.L162:
	.loc 1 486 0
	movq	-88(%rbp), %rax	# insn, tmp165
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movzwl	(%rax), %eax	# _46->code, D.12389
	cmpw	$24, %ax	#, D.12389
	jne	.L154	#,
	.loc 1 490 0
	movl	$0, -92(%rbp)	#, i
	jmp	.L163	#
.L165:
	.loc 1 492 0
	movq	-88(%rbp), %rax	# insn, tmp166
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movq	8(%rax), %rax	# _52->fld[0].rtvec, D.12395
	movl	-92(%rbp), %edx	# i, tmp168
	movslq	%edx, %rdx	# tmp168, tmp167
	movq	8(%rax,%rdx,8), %rax	# _53->elem, tmp169
	movq	%rax, -64(%rbp)	# tmp169, this_jump_insn
	.loc 1 493 0
	movq	-64(%rbp), %rax	# this_jump_insn, tmp170
	movzwl	(%rax), %eax	# this_jump_insn_54->code, D.12389
	cmpw	$33, %ax	#, D.12389
	jne	.L164	#,
	.loc 1 494 0
	jmp	.L154	#
.L164:
	.loc 1 490 0
	addl	$1, -92(%rbp)	#, i
.L163:
	.loc 1 490 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp171
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movq	8(%rax), %rax	# _49->fld[0].rtvec, D.12395
	movl	(%rax), %eax	# _50->num_elem, D.12393
	cmpl	-92(%rbp), %eax	# i, D.12393
	jg	.L165	#,
.L154:
.L185:
	.loc 1 499 0 is_stmt 1
	nop
	.loc 1 502 0
	movq	-64(%rbp), %rax	# this_jump_insn, tmp172
	movzwl	(%rax), %eax	# this_jump_insn_16->code, D.12389
	cmpw	$33, %ax	#, D.12389
	jne	.L166	#,
	.loc 1 504 0
	movl	-124(%rbp), %eax	# jump_count, jump_count.53
	leal	1(%rax), %edx	#, tmp173
	movl	%edx, -124(%rbp)	# tmp173, jump_count
	cmpl	$9, %eax	#, jump_count.53
	jg	.L167	#,
	.loc 1 506 0
	movq	-64(%rbp), %rax	# this_jump_insn, tmp174
	movq	%rax, %rdi	# tmp174,
	call	any_uncondjump_p	#
	testl	%eax, %eax	# D.12393
	jne	.L168	#,
	.loc 1 507 0
	movq	-64(%rbp), %rax	# this_jump_insn, tmp175
	movq	32(%rax), %rax	# this_jump_insn_16->fld[3].rtx, D.12392
	movzwl	(%rax), %eax	# _61->code, D.12389
	cmpw	$51, %ax	#, D.12389
	jne	.L169	#,
.L168:
	.loc 1 509 0
	movq	-64(%rbp), %rax	# this_jump_insn, tmp176
	movq	64(%rax), %rax	# this_jump_insn_16->fld[7].rtx, tmp177
	movq	%rax, -80(%rbp)	# tmp177, next
	.loc 1 510 0
	cmpq	$0, -72(%rbp)	#, jump_insn
	jne	.L170	#,
	.loc 1 512 0
	movq	-88(%rbp), %rax	# insn, tmp178
	movq	%rax, -72(%rbp)	# tmp178, jump_insn
	.loc 1 513 0
	cmpq	$0, -120(%rbp)	#, jump_target
	je	.L170	#,
	.loc 1 514 0
	movq	-64(%rbp), %rax	# this_jump_insn, tmp179
	movq	64(%rax), %rdx	# this_jump_insn_16->fld[7].rtx, D.12392
	movq	-120(%rbp), %rax	# jump_target, tmp180
	movq	%rdx, (%rax)	# D.12392, *jump_target_120(D)
	.loc 1 510 0
	jmp	.L171	#
.L170:
	.loc 1 510 0 is_stmt 0 discriminator 1
	jmp	.L171	#
.L169:
	.loc 1 517 0 is_stmt 1
	movq	-64(%rbp), %rax	# this_jump_insn, tmp181
	movq	%rax, %rdi	# tmp181,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.12393
	je	.L172	#,
.LBB8:
	.loc 1 530 0
	addl	$4, -124(%rbp)	#, jump_count
	.loc 1 531 0
	cmpl	$9, -124(%rbp)	#, jump_count
	jle	.L173	#,
	.loc 1 532 0
	jmp	.L153	#
.L173:
	.loc 1 534 0
	movq	-88(%rbp), %rax	# insn, tmp182
	movl	$1, %edx	#,
	leaq	16(%rbp), %rsi	#,
	movq	%rax, %rdi	# tmp182,
	call	mark_referenced_resources	#
	.loc 1 544 0
	movq	-88(%rbp), %rax	# insn, tmp183
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movzwl	(%rax), %eax	# _65->code, D.12389
	cmpw	$24, %ax	#, D.12389
	jne	.L175	#,
	.loc 1 545 0
	movq	-64(%rbp), %rax	# this_jump_insn, tmp184
	movzbl	3(%rax), %eax	# *this_jump_insn_16, D.12396
	andl	$4, %eax	#, D.12396
	testb	%al, %al	# D.12396
	je	.L175	#,
	.loc 1 547 0
	movl	$1, -92(%rbp)	#, i
	jmp	.L176	#
.L177:
	.loc 1 548 0 discriminator 2
	movq	-88(%rbp), %rax	# insn, tmp185
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movq	8(%rax), %rax	# _73->fld[0].rtvec, D.12395
	movl	-92(%rbp), %edx	# i, tmp187
	movslq	%edx, %rdx	# tmp187, tmp186
	movq	8(%rax,%rdx,8), %rax	# _74->elem, D.12392
	.loc 1 549 0 discriminator 2
	movq	-88(%rbp), %rdx	# insn, tmp188
	movq	32(%rdx), %rdx	# insn_4->fld[3].rtx, D.12392
	movq	8(%rdx), %rdx	# _76->fld[0].rtvec, D.12395
	movl	-92(%rbp), %ecx	# i, tmp190
	movslq	%ecx, %rcx	# tmp190, tmp189
	movq	8(%rdx,%rcx,8), %rdx	# _77->elem, D.12392
	movzbl	3(%rdx), %edx	# *_78, D.12396
	andl	$16, %edx	#, D.12396
	testb	%dl, %dl	# D.12396
	sete	%dl	#, D.12388
	andl	$1, %edx	#, tmp192
	movl	%edx, %ecx	# tmp192, tmp193
	sall	$4, %ecx	#, tmp193
	movzbl	3(%rax), %edx	# _75->in_struct, tmp194
	andl	$-17, %edx	#, tmp195
	orl	%ecx, %edx	# tmp193, tmp196
	movb	%dl, 3(%rax)	# tmp196, _75->in_struct
	.loc 1 547 0 discriminator 2
	addl	$1, -92(%rbp)	#, i
.L176:
	.loc 1 547 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp197
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movq	8(%rax), %rax	# _70->fld[0].rtvec, D.12395
	movl	(%rax), %eax	# _71->num_elem, D.12393
	cmpl	-92(%rbp), %eax	# i, D.12393
	jg	.L177	#,
	.loc 1 551 0 is_stmt 1
	movq	-144(%rbp), %rax	# set, tmp198
	movq	-136(%rbp), %rdx	# set,
	movq	%rax, -48(%rbp)	# tmp198, target_set
	movq	%rdx, -40(%rbp)	#, target_set
	.loc 1 552 0
	leaq	-48(%rbp), %rsi	#, tmp199
	movq	-88(%rbp), %rax	# insn, tmp200
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp200,
	call	mark_set_resources	#
	.loc 1 555 0
	movl	$1, -92(%rbp)	#, i
	jmp	.L178	#
.L179:
	.loc 1 556 0 discriminator 2
	movq	-88(%rbp), %rax	# insn, tmp201
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movq	8(%rax), %rax	# _87->fld[0].rtvec, D.12395
	movl	-92(%rbp), %edx	# i, tmp203
	movslq	%edx, %rdx	# tmp203, tmp202
	movq	8(%rax,%rdx,8), %rax	# _88->elem, D.12392
	.loc 1 557 0 discriminator 2
	movq	-88(%rbp), %rdx	# insn, tmp204
	movq	32(%rdx), %rdx	# insn_4->fld[3].rtx, D.12392
	movq	8(%rdx), %rdx	# _90->fld[0].rtvec, D.12395
	movl	-92(%rbp), %ecx	# i, tmp206
	movslq	%ecx, %rcx	# tmp206, tmp205
	movq	8(%rdx,%rcx,8), %rdx	# _91->elem, D.12392
	movzbl	3(%rdx), %edx	# *_92, D.12396
	andl	$16, %edx	#, D.12396
	testb	%dl, %dl	# D.12396
	sete	%dl	#, D.12388
	andl	$1, %edx	#, tmp208
	movl	%edx, %ecx	# tmp208, tmp209
	sall	$4, %ecx	#, tmp209
	movzbl	3(%rax), %edx	# _89->in_struct, tmp210
	andl	$-17, %edx	#, tmp211
	orl	%ecx, %edx	# tmp209, tmp212
	movb	%dl, 3(%rax)	# tmp212, _89->in_struct
	.loc 1 555 0 discriminator 2
	addl	$1, -92(%rbp)	#, i
.L178:
	.loc 1 555 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp213
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12392
	movq	8(%rax), %rax	# _84->fld[0].rtvec, D.12395
	movl	(%rax), %eax	# _85->num_elem, D.12393
	cmpl	-92(%rbp), %eax	# i, D.12393
	jg	.L179	#,
	.loc 1 559 0 is_stmt 1
	leaq	-144(%rbp), %rsi	#, tmp214
	movq	-88(%rbp), %rax	# insn, tmp215
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp215,
	call	mark_set_resources	#
	jmp	.L180	#
.L175:
	.loc 1 563 0
	leaq	-144(%rbp), %rsi	#, tmp216
	movq	-88(%rbp), %rax	# insn, tmp217
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp217,
	call	mark_set_resources	#
	.loc 1 564 0
	movq	-144(%rbp), %rax	# set, tmp218
	movq	-136(%rbp), %rdx	# set,
	movq	%rax, -48(%rbp)	# tmp218, target_set
	movq	%rdx, -40(%rbp)	#, target_set
.L180:
	.loc 1 567 0
	movq	-112(%rbp), %rax	# res, tmp219
	movq	8(%rax), %rdx	# *res_30(D),
	movq	(%rax), %rax	# *res_30(D), tmp220
	movq	%rax, -32(%rbp)	# tmp220, target_res
	movq	%rdx, -24(%rbp)	#, target_res
	.loc 1 568 0
	movq	-40(%rbp), %rax	# target_set.regs, tmp221
	movq	%rax, -56(%rbp)	# tmp221, scratch
	.loc 1 569 0
	movq	24(%rbp), %rax	# needed.regs, D.12391
	notq	%rax	# D.12391
	andq	%rax, -56(%rbp)	# D.12391, scratch
	.loc 1 570 0
	movq	-24(%rbp), %rax	# target_res.regs, D.12391
	movq	-56(%rbp), %rdx	# scratch, tmp222
	notq	%rdx	# D.12391
	andq	%rdx, %rax	# D.12391, D.12391
	movq	%rax, -24(%rbp)	# D.12391, target_res.regs
	.loc 1 572 0
	movq	-112(%rbp), %rax	# res, tmp223
	movq	8(%rax), %rdx	# *res_30(D),
	movq	(%rax), %rax	# *res_30(D), tmp224
	movq	%rax, -16(%rbp)	# tmp224, fallthrough_res
	movq	%rdx, -8(%rbp)	#, fallthrough_res
	.loc 1 573 0
	movq	-136(%rbp), %rax	# set.regs, tmp225
	movq	%rax, -56(%rbp)	# tmp225, scratch
	.loc 1 574 0
	movq	24(%rbp), %rax	# needed.regs, D.12391
	notq	%rax	# D.12391
	andq	%rax, -56(%rbp)	# D.12391, scratch
	.loc 1 575 0
	movq	-8(%rbp), %rax	# fallthrough_res.regs, D.12391
	movq	-56(%rbp), %rdx	# scratch, tmp226
	notq	%rdx	# D.12391
	andq	%rdx, %rax	# D.12391, D.12391
	movq	%rax, -8(%rbp)	# D.12391, fallthrough_res.regs
	.loc 1 577 0
	movq	-64(%rbp), %rax	# this_jump_insn, tmp227
	movq	64(%rax), %rdi	# this_jump_insn_16->fld[7].rtx, D.12392
	movl	-48(%rbp), %r8d	# target_set, tmp228
	movq	-40(%rbp), %r9	# target_set, tmp229
	movl	-124(%rbp), %ecx	# jump_count, tmp230
	leaq	-32(%rbp), %rsi	#, tmp231
	movq	16(%rbp), %rax	# needed, tmp232
	movq	24(%rbp), %rdx	# needed,
	movq	%rax, (%rsp)	# tmp232,
	movq	%rdx, 8(%rsp)	#,
	movl	$0, %edx	#,
	call	find_dead_or_set_registers	#
	.loc 1 580 0
	movl	-144(%rbp), %r8d	# set, tmp233
	movq	-136(%rbp), %r9	# set, tmp234
	movl	-124(%rbp), %ecx	# jump_count, tmp235
	leaq	-16(%rbp), %rsi	#, tmp236
	movq	-80(%rbp), %rdi	# next, tmp237
	movq	16(%rbp), %rax	# needed, tmp238
	movq	24(%rbp), %rdx	# needed,
	movq	%rax, (%rsp)	# tmp238,
	movq	%rdx, 8(%rsp)	#,
	movl	$0, %edx	#,
	call	find_dead_or_set_registers	#
	.loc 1 583 0
	movq	-8(%rbp), %rdx	# fallthrough_res.regs, D.12391
	movq	-24(%rbp), %rax	# target_res.regs, D.12391
	orq	%rdx, %rax	# D.12391, D.12391
	movq	%rax, -8(%rbp)	# D.12391, fallthrough_res.regs
	.loc 1 584 0
	movq	-112(%rbp), %rax	# res, tmp239
	movq	8(%rax), %rdx	# res_30(D)->regs, D.12391
	movq	-8(%rbp), %rax	# fallthrough_res.regs, D.12391
	andq	%rax, %rdx	# D.12391, D.12391
	movq	-112(%rbp), %rax	# res, tmp240
	movq	%rdx, 8(%rax)	# D.12391, res_30(D)->regs
	.loc 1 585 0
	nop
	jmp	.L153	#
.L172:
.LBE8:
	.loc 1 588 0
	jmp	.L153	#
.L171:
	jmp	.L166	#
.L167:
	.loc 1 595 0
	movq	$0, -72(%rbp)	#, jump_insn
	.loc 1 596 0
	jmp	.L153	#
.L166:
	.loc 1 600 0
	movq	-88(%rbp), %rax	# insn, tmp241
	movl	$1, %edx	#,
	leaq	16(%rbp), %rsi	#,
	movq	%rax, %rdi	# tmp241,
	call	mark_referenced_resources	#
	.loc 1 601 0
	leaq	-144(%rbp), %rsi	#, tmp242
	movq	-88(%rbp), %rax	# insn, tmp243
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp243,
	call	mark_set_resources	#
	.loc 1 603 0
	movq	-136(%rbp), %rax	# set.regs, tmp244
	movq	%rax, -56(%rbp)	# tmp244, scratch
	.loc 1 604 0
	movq	24(%rbp), %rax	# needed.regs, D.12391
	notq	%rax	# D.12391
	andq	%rax, -56(%rbp)	# D.12391, scratch
	.loc 1 605 0
	movq	-112(%rbp), %rax	# res, tmp245
	movq	8(%rax), %rax	# res_30(D)->regs, D.12391
	movq	-56(%rbp), %rdx	# scratch, tmp246
	notq	%rdx	# D.12391
	andq	%rax, %rdx	# D.12391, D.12391
	movq	-112(%rbp), %rax	# res, tmp247
	movq	%rdx, 8(%rax)	# D.12391, res_30(D)->regs
	jmp	.L159	#
.L184:
	.loc 1 469 0
	nop
.L159:
.LBE7:
	.loc 1 443 0
	movq	-80(%rbp), %rax	# next, tmp248
	movq	%rax, -88(%rbp)	# tmp248, insn
.L151:
	.loc 1 443 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, insn
	jne	.L181	#,
.L153:
	.loc 1 608 0 is_stmt 1
	movq	-72(%rbp), %rax	# jump_insn, D.12397
	.loc 1 609 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	find_dead_or_set_registers, .-find_dead_or_set_registers
	.globl	mark_set_resources
	.type	mark_set_resources, @function
mark_set_resources:
.LFB7:
	.loc 1 631 0
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
	movq	%rsi, -80(%rbp)	# res, res
	movl	%edx, -84(%rbp)	# in_dest, in_dest
	movl	%ecx, -88(%rbp)	# mark_type, mark_type
.L187:
	.loc 1 639 0
	movq	-72(%rbp), %rax	# x, tmp204
	movzwl	(%rax), %eax	# x_1->code, D.12399
	movzwl	%ax, %eax	# D.12399, tmp205
	movl	%eax, -52(%rbp)	# tmp205, code
	.loc 1 641 0
	movl	-52(%rbp), %eax	# code, tmp207
	subl	$24, %eax	#, tmp206
	cmpl	$109, %eax	#, tmp206
	ja	.L290	#,
	movl	%eax, %eax	# tmp206, tmp208
	movq	.L190(,%rax,8), %rax	#, tmp209
	jmp	*%rax	# tmp209
	.section	.rodata
	.align 8
	.align 4
.L190:
	.quad	.L189
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L191
	.quad	.L191
	.quad	.L192
	.quad	.L291
	.quad	.L291
	.quad	.L291
	.quad	.L290
	.quad	.L290
	.quad	.L194
	.quad	.L195
	.quad	.L290
	.quad	.L194
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L196
	.quad	.L291
	.quad	.L197
	.quad	.L290
	.quad	.L290
	.quad	.L198
	.quad	.L290
	.quad	.L291
	.quad	.L291
	.quad	.L291
	.quad	.L290
	.quad	.L291
	.quad	.L291
	.quad	.L290
	.quad	.L199
	.quad	.L290
	.quad	.L200
	.quad	.L201
	.quad	.L290
	.quad	.L202
	.quad	.L291
	.quad	.L291
	.quad	.L203
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L204
	.quad	.L204
	.quad	.L204
	.quad	.L204
	.quad	.L205
	.quad	.L205
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L290
	.quad	.L206
	.quad	.L206
	.text
.L203:
	.loc 1 658 0
	cmpl	$0, -84(%rbp)	#, in_dest
	je	.L208	#,
	.loc 1 659 0
	movq	-80(%rbp), %rax	# res, tmp210
	movb	$1, 3(%rax)	#, res_32(D)->cc
	.loc 1 660 0
	jmp	.L186	#
.L208:
	jmp	.L186	#
.L192:
	.loc 1 667 0
	cmpl	$1, -88(%rbp)	#, mark_type
	jne	.L191	#,
.LBB9:
	.loc 1 671 0
	movq	-80(%rbp), %rax	# res, tmp211
	movb	$1, (%rax)	#, res_32(D)->memory
	movq	-80(%rbp), %rax	# res, tmp212
	movzbl	(%rax), %edx	# res_32(D)->memory, D.12400
	movq	-80(%rbp), %rax	# res, tmp213
	movb	%dl, 3(%rax)	# D.12400, res_32(D)->cc
	.loc 1 672 0
	movl	$0, -56(%rbp)	#, r
	jmp	.L209	#
.L212:
	.loc 1 673 0
	movl	-56(%rbp), %eax	# r, tmp214
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.12400
	testb	%al, %al	# D.12400
	jne	.L210	#,
	.loc 1 673 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# r, tmp215
	movzbl	global_regs(%rax), %eax	# global_regs, D.12400
	testb	%al, %al	# D.12400
	je	.L211	#,
.L210:
	.loc 1 674 0 is_stmt 1
	movq	-80(%rbp), %rax	# res, tmp216
	movq	8(%rax), %rdx	# res_32(D)->regs, D.12401
	movl	-56(%rbp), %eax	# r, r.54
	movl	$1, %esi	#, tmp217
	movl	%eax, %ecx	# r.54, tmp365
	salq	%cl, %rsi	# tmp365, D.12401
	movq	%rsi, %rax	# D.12401, D.12401
	orq	%rax, %rdx	# D.12401, D.12401
	movq	-80(%rbp), %rax	# res, tmp218
	movq	%rdx, 8(%rax)	# D.12401, res_32(D)->regs
.L211:
	.loc 1 672 0
	addl	$1, -56(%rbp)	#, r
.L209:
	.loc 1 672 0 is_stmt 0 discriminator 1
	cmpl	$52, -56(%rbp)	#, r
	jbe	.L212	#,
	.loc 1 676 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp219
	movq	64(%rax), %rax	# x_1->fld[7].rtx, tmp220
	movq	%rax, -24(%rbp)	# tmp220, link
	jmp	.L213	#
.L215:
	.loc 1 678 0
	movq	-24(%rbp), %rax	# link, tmp221
	movq	8(%rax), %rax	# link_10->fld[0].rtx, D.12402
	movzwl	(%rax), %eax	# _44->code, D.12399
	cmpw	$49, %ax	#, D.12399
	jne	.L214	#,
	.loc 1 679 0
	movq	-24(%rbp), %rax	# link, tmp222
	movq	8(%rax), %rax	# link_10->fld[0].rtx, D.12402
	movq	8(%rax), %rax	# _46->fld[0].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp223
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
.L214:
	.loc 1 677 0
	movq	-24(%rbp), %rax	# link, tmp224
	movq	16(%rax), %rax	# link_10->fld[1].rtx, tmp225
	movq	%rax, -24(%rbp)	# tmp225, link
.L213:
	.loc 1 676 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, link
	jne	.L215	#,
	.loc 1 684 0
	movq	-72(%rbp), %rax	# x, tmp226
	movl	$0, %edx	#,
	movl	$28, %esi	#,
	movq	%rax, %rdi	# tmp226,
	call	find_reg_note	#
	testq	%rax, %rax	# D.12402
	je	.L191	#,
	.loc 1 685 0
	movq	-80(%rbp), %rax	# res, tmp227
	movq	$-1, 8(%rax)	#, res_32(D)->regs
.L191:
.LBE9:
	.loc 1 702 0
	movq	-72(%rbp), %rax	# x, tmp228
	movq	32(%rax), %rax	# x_1->fld[3].rtx, tmp229
	movq	%rax, -72(%rbp)	# tmp229, x
	.loc 1 703 0
	movq	-72(%rbp), %rax	# x, tmp230
	movzwl	(%rax), %eax	# x_50->code, D.12399
	cmpw	$48, %ax	#, D.12399
	je	.L216	#,
	.loc 1 703 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp231
	movzwl	(%rax), %eax	# x_50->code, D.12399
	cmpw	$49, %ax	#, D.12399
	je	.L216	#,
	.loc 1 704 0 is_stmt 1
	jmp	.L187	#
.L216:
	.loc 1 705 0
	jmp	.L186	#
.L196:
	.loc 1 712 0
	cmpl	$1, -88(%rbp)	#, mark_type
	je	.L217	#,
	.loc 1 714 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp232
	movq	16(%rax), %rax	# x_1->fld[1].rtx, D.12402
	movzwl	(%rax), %eax	# _53->code, D.12399
	.loc 1 712 0 discriminator 2
	cmpw	$50, %ax	#, D.12399
	je	.L218	#,
.L217:
	.loc 1 712 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.55
	jmp	.L219	#
.L218:
	.loc 1 712 0 discriminator 3
	movl	$0, %eax	#, iftmp.55
.L219:
	.loc 1 712 0 discriminator 4
	movq	-72(%rbp), %rdx	# x, tmp233
	movq	8(%rdx), %rdi	# x_1->fld[0].rtx, D.12402
	movl	-88(%rbp), %edx	# mark_type, tmp234
	movq	-80(%rbp), %rsi	# res, tmp235
	movl	%edx, %ecx	# tmp234,
	movl	%eax, %edx	# iftmp.55,
	call	mark_set_resources	#
	.loc 1 717 0 is_stmt 1 discriminator 4
	cmpl	$2, -88(%rbp)	#, mark_type
	je	.L220	#,
	.loc 1 718 0
	movq	-72(%rbp), %rax	# x, tmp236
	movq	16(%rax), %rax	# x_1->fld[1].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp237
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 719 0
	jmp	.L186	#
.L220:
	jmp	.L186	#
.L197:
	.loc 1 722 0
	movq	-72(%rbp), %rax	# x, tmp238
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp239
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 723 0
	jmp	.L186	#
.L189:
	.loc 1 726 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L221	#
.L224:
	.loc 1 727 0
	movq	-72(%rbp), %rax	# x, tmp240
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.12403
	movq	8(%rax), %rax	# _63->elem, D.12402
	movzbl	3(%rax), %eax	# *_64, D.12405
	andl	$4, %eax	#, D.12405
	testb	%al, %al	# D.12405
	je	.L222	#,
	.loc 1 728 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp241
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.12403
	movl	-64(%rbp), %edx	# i, tmp243
	movslq	%edx, %rdx	# tmp243, tmp242
	movq	8(%rax,%rdx,8), %rax	# _67->elem, D.12402
	movzbl	3(%rax), %eax	# *_68, D.12405
	andl	$16, %eax	#, D.12405
	.loc 1 727 0 discriminator 1
	testb	%al, %al	# D.12405
	jne	.L223	#,
.L222:
	.loc 1 729 0
	movq	-72(%rbp), %rax	# x, tmp244
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.12403
	movl	-64(%rbp), %edx	# i, tmp246
	movslq	%edx, %rdx	# tmp246, tmp245
	movq	8(%rax,%rdx,8), %rax	# _71->elem, D.12402
	movl	-88(%rbp), %edx	# mark_type, tmp247
	movq	-80(%rbp), %rsi	# res, tmp248
	movl	%edx, %ecx	# tmp247,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
.L223:
	.loc 1 726 0
	addl	$1, -64(%rbp)	#, i
.L221:
	.loc 1 726 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp249
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.12403
	movl	(%rax), %eax	# _61->num_elem, D.12404
	cmpl	-64(%rbp), %eax	# i, D.12404
	jg	.L224	#,
	.loc 1 730 0 is_stmt 1
	jmp	.L186	#
.L204:
	.loc 1 736 0
	movq	-72(%rbp), %rax	# x, tmp250
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp251
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 737 0
	jmp	.L186	#
.L205:
	.loc 1 741 0
	movq	-72(%rbp), %rax	# x, tmp252
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp253
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 742 0
	movq	-72(%rbp), %rax	# x, tmp254
	movq	16(%rax), %rax	# x_1->fld[1].rtx, D.12402
	movq	8(%rax), %rax	# _76->fld[0].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp255
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 743 0
	movq	-72(%rbp), %rax	# x, tmp256
	movq	16(%rax), %rax	# x_1->fld[1].rtx, D.12402
	movq	16(%rax), %rax	# _78->fld[1].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp257
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 744 0
	jmp	.L186	#
.L206:
	.loc 1 748 0
	cmpl	$2, -88(%rbp)	#, mark_type
	jne	.L225	#,
	.loc 1 748 0 is_stmt 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, in_dest
	jne	.L226	#,
.L225:
	.loc 1 750 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp258
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.12402
	movl	-84(%rbp), %edx	# in_dest, tmp259
	movq	-80(%rbp), %rsi	# res, tmp260
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 751 0
	movq	-72(%rbp), %rax	# x, tmp261
	movq	16(%rax), %rax	# x_1->fld[1].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp262
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 752 0
	movq	-72(%rbp), %rax	# x, tmp263
	movq	24(%rax), %rax	# x_1->fld[2].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp264
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 754 0
	jmp	.L186	#
.L226:
	jmp	.L186	#
.L202:
	.loc 1 757 0
	cmpl	$0, -84(%rbp)	#, in_dest
	je	.L227	#,
	.loc 1 759 0
	movq	-80(%rbp), %rax	# res, tmp265
	movb	$1, (%rax)	#, res_32(D)->memory
	.loc 1 760 0
	movq	-80(%rbp), %rax	# res, tmp266
	movzbl	1(%rax), %edx	# res_32(D)->unch_memory, D.12400
	movq	-72(%rbp), %rax	# x, tmp267
	movzbl	3(%rax), %eax	# *x_1, tmp270
	shrb	$2, %al	#, D.12406
	andl	$1, %eax	#, D.12406
	orl	%eax, %edx	# D.12400, D.12400
	movq	-80(%rbp), %rax	# res, tmp271
	movb	%dl, 1(%rax)	# D.12400, res_32(D)->unch_memory
	.loc 1 761 0
	movq	-80(%rbp), %rax	# res, tmp272
	movzbl	2(%rax), %edx	# res_32(D)->volatil, D.12400
	movq	-72(%rbp), %rax	# x, tmp273
	movzbl	3(%rax), %eax	# *x_1, tmp276
	shrb	$3, %al	#, D.12406
	andl	$1, %eax	#, D.12406
	orl	%eax, %edx	# D.12400, D.12400
	movq	-80(%rbp), %rax	# res, tmp277
	movb	%dl, 2(%rax)	# D.12400, res_32(D)->volatil
.L227:
	.loc 1 764 0
	movq	-72(%rbp), %rax	# x, tmp278
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp279
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 765 0
	jmp	.L186	#
.L200:
	.loc 1 768 0
	cmpl	$0, -84(%rbp)	#, in_dest
	je	.L228	#,
	.loc 1 770 0
	movq	-72(%rbp), %rax	# x, tmp280
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.12402
	movzwl	(%rax), %eax	# _92->code, D.12399
	cmpw	$61, %ax	#, D.12399
	je	.L229	#,
	.loc 1 771 0
	movq	-72(%rbp), %rax	# x, tmp281
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.12402
	movl	-88(%rbp), %ecx	# mark_type, tmp282
	movl	-84(%rbp), %edx	# in_dest, tmp283
	movq	-80(%rbp), %rsi	# res, tmp284
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	jmp	.L228	#
.L229:
.LBB10:
	.loc 1 774 0
	movq	-72(%rbp), %rax	# x, tmp285
	movq	%rax, %rdi	# tmp285,
	call	subreg_regno	#
	movl	%eax, -48(%rbp)	# tmp286, regno
	.loc 1 776 0
	cmpl	$7, -48(%rbp)	#, regno
	jbe	.L230	#,
	.loc 1 776 0 is_stmt 0 discriminator 1
	cmpl	$15, -48(%rbp)	#, regno
	jbe	.L231	#,
.L230:
	.loc 1 776 0 discriminator 2
	cmpl	$20, -48(%rbp)	#, regno
	jbe	.L232	#,
	.loc 1 776 0 discriminator 1
	cmpl	$28, -48(%rbp)	#, regno
	jbe	.L231	#,
.L232:
	.loc 1 776 0 discriminator 2
	cmpl	$44, -48(%rbp)	#, regno
	jbe	.L233	#,
	.loc 1 776 0 discriminator 1
	cmpl	$52, -48(%rbp)	#, regno
	jbe	.L231	#,
.L233:
	.loc 1 776 0 discriminator 2
	cmpl	$28, -48(%rbp)	#, regno
	jbe	.L234	#,
	.loc 1 776 0 discriminator 1
	cmpl	$36, -48(%rbp)	#, regno
	ja	.L234	#,
.L231:
	movq	-72(%rbp), %rax	# x, tmp287
	movzbl	2(%rax), %eax	# x_1->mode, D.12405
	movzbl	%al, %eax	# D.12405, D.12404
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12407
	cmpl	$5, %eax	#, D.12407
	je	.L235	#,
	.loc 1 776 0 discriminator 4
	movq	-72(%rbp), %rax	# x, tmp289
	movzbl	2(%rax), %eax	# x_1->mode, D.12405
	movzbl	%al, %eax	# D.12405, D.12404
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12407
	cmpl	$6, %eax	#, D.12407
	jne	.L236	#,
.L235:
	.loc 1 776 0 discriminator 3
	movl	$2, %eax	#, iftmp.57
	jmp	.L238	#
.L236:
	.loc 1 776 0 discriminator 1
	movl	$1, %eax	#, iftmp.57
	jmp	.L238	#
.L234:
	.loc 1 776 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp291
	movzbl	2(%rax), %eax	# x_1->mode, D.12405
	cmpb	$18, %al	#, D.12405
	jne	.L239	#,
	.loc 1 776 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.60
	andl	$33554432, %eax	#, D.12404
	testl	%eax, %eax	# D.12404
	je	.L240	#,
	.loc 1 776 0 discriminator 8
	movl	$2, %eax	#, iftmp.59
	jmp	.L238	#
.L240:
	.loc 1 776 0 discriminator 9
	movl	$3, %eax	#, iftmp.59
	jmp	.L238	#
.L239:
	.loc 1 776 0 discriminator 7
	movq	-72(%rbp), %rax	# x, tmp292
	movzbl	2(%rax), %eax	# x_1->mode, D.12405
	cmpb	$24, %al	#, D.12405
	jne	.L243	#,
	.loc 1 776 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.63
	andl	$33554432, %eax	#, D.12404
	testl	%eax, %eax	# D.12404
	je	.L244	#,
	.loc 1 776 0 discriminator 12
	movl	$4, %eax	#, iftmp.62
	jmp	.L238	#
.L244:
	.loc 1 776 0 discriminator 13
	movl	$6, %eax	#, iftmp.62
	jmp	.L238	#
.L243:
	.loc 1 776 0 discriminator 11
	movq	-72(%rbp), %rax	# x, tmp293
	movzbl	2(%rax), %eax	# x_1->mode, D.12405
	movzbl	%al, %eax	# D.12405, D.12404
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12405
	movzbl	%al, %edx	# D.12405, D.12404
	movl	target_flags(%rip), %eax	# target_flags, target_flags.65
	andl	$33554432, %eax	#, D.12404
	testl	%eax, %eax	# D.12404
	je	.L247	#,
	.loc 1 776 0 discriminator 1
	movl	$8, %eax	#, iftmp.64
	jmp	.L248	#
.L247:
	.loc 1 776 0 discriminator 2
	movl	$4, %eax	#, iftmp.64
.L248:
	.loc 1 776 0 discriminator 3
	addl	%edx, %eax	# D.12404, D.12404
	subl	$1, %eax	#, D.12404
	movl	target_flags(%rip), %edx	# target_flags, target_flags.67
	andl	$33554432, %edx	#, D.12404
	testl	%edx, %edx	# D.12404
	je	.L249	#,
	.loc 1 776 0 discriminator 1
	movl	$8, %ebx	#, iftmp.66
	jmp	.L250	#
.L249:
	.loc 1 776 0 discriminator 2
	movl	$4, %ebx	#, iftmp.66
.L250:
	.loc 1 776 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.66
.L238:
	.loc 1 775 0 is_stmt 1
	movl	-48(%rbp), %edx	# regno, tmp300
	addl	%edx, %eax	# tmp300, tmp299
	movl	%eax, -44(%rbp)	# tmp299, last_regno
	.loc 1 778 0
	cmpl	$53, -44(%rbp)	#, last_regno
	jbe	.L251	#,
	.loc 1 779 0
	movl	$__FUNCTION__.10883, %edx	#,
	movl	$779, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L251:
	.loc 1 780 0
	movl	-48(%rbp), %eax	# regno, tmp301
	movl	%eax, -56(%rbp)	# tmp301, r
	jmp	.L252	#
.L253:
	.loc 1 781 0 discriminator 2
	movq	-80(%rbp), %rax	# res, tmp302
	movq	8(%rax), %rdx	# res_32(D)->regs, D.12401
	movl	-56(%rbp), %eax	# r, r.68
	movl	$1, %esi	#, tmp303
	movl	%eax, %ecx	# r.68, tmp368
	salq	%cl, %rsi	# tmp368, D.12401
	movq	%rsi, %rax	# D.12401, D.12401
	orq	%rax, %rdx	# D.12401, D.12401
	movq	-80(%rbp), %rax	# res, tmp304
	movq	%rdx, 8(%rax)	# D.12401, res_32(D)->regs
	.loc 1 780 0 discriminator 2
	addl	$1, -56(%rbp)	#, r
.L252:
	.loc 1 780 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# r, tmp305
	cmpl	-44(%rbp), %eax	# last_regno, tmp305
	jb	.L253	#,
.L228:
.LBE10:
	.loc 1 784 0 is_stmt 1
	jmp	.L186	#
.L199:
	.loc 1 787 0
	cmpl	$0, -84(%rbp)	#, in_dest
	je	.L254	#,
.LBB11:
	.loc 1 789 0
	movq	-72(%rbp), %rax	# x, tmp306
	movl	8(%rax), %eax	# x_1->fld[0].rtuint, tmp307
	movl	%eax, -40(%rbp)	# tmp307, regno
	.loc 1 791 0
	cmpl	$7, -40(%rbp)	#, regno
	jbe	.L255	#,
	.loc 1 791 0 is_stmt 0 discriminator 1
	cmpl	$15, -40(%rbp)	#, regno
	jbe	.L256	#,
.L255:
	.loc 1 791 0 discriminator 2
	cmpl	$20, -40(%rbp)	#, regno
	jbe	.L257	#,
	.loc 1 791 0 discriminator 1
	cmpl	$28, -40(%rbp)	#, regno
	jbe	.L256	#,
.L257:
	.loc 1 791 0 discriminator 2
	cmpl	$44, -40(%rbp)	#, regno
	jbe	.L258	#,
	.loc 1 791 0 discriminator 1
	cmpl	$52, -40(%rbp)	#, regno
	jbe	.L256	#,
.L258:
	.loc 1 791 0 discriminator 2
	cmpl	$28, -40(%rbp)	#, regno
	jbe	.L259	#,
	.loc 1 791 0 discriminator 1
	cmpl	$36, -40(%rbp)	#, regno
	ja	.L259	#,
.L256:
	movq	-72(%rbp), %rax	# x, tmp308
	movzbl	2(%rax), %eax	# x_1->mode, D.12405
	movzbl	%al, %eax	# D.12405, D.12404
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12407
	cmpl	$5, %eax	#, D.12407
	je	.L260	#,
	.loc 1 791 0 discriminator 4
	movq	-72(%rbp), %rax	# x, tmp310
	movzbl	2(%rax), %eax	# x_1->mode, D.12405
	movzbl	%al, %eax	# D.12405, D.12404
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12407
	cmpl	$6, %eax	#, D.12407
	jne	.L261	#,
.L260:
	.loc 1 791 0 discriminator 3
	movl	$2, %eax	#, iftmp.70
	jmp	.L263	#
.L261:
	.loc 1 791 0 discriminator 1
	movl	$1, %eax	#, iftmp.70
	jmp	.L263	#
.L259:
	.loc 1 791 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp312
	movzbl	2(%rax), %eax	# x_1->mode, D.12405
	cmpb	$18, %al	#, D.12405
	jne	.L264	#,
	.loc 1 791 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.73
	andl	$33554432, %eax	#, D.12404
	testl	%eax, %eax	# D.12404
	je	.L265	#,
	.loc 1 791 0 discriminator 8
	movl	$2, %eax	#, iftmp.72
	jmp	.L263	#
.L265:
	.loc 1 791 0 discriminator 9
	movl	$3, %eax	#, iftmp.72
	jmp	.L263	#
.L264:
	.loc 1 791 0 discriminator 7
	movq	-72(%rbp), %rax	# x, tmp313
	movzbl	2(%rax), %eax	# x_1->mode, D.12405
	cmpb	$24, %al	#, D.12405
	jne	.L268	#,
	.loc 1 791 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.76
	andl	$33554432, %eax	#, D.12404
	testl	%eax, %eax	# D.12404
	je	.L269	#,
	.loc 1 791 0 discriminator 12
	movl	$4, %eax	#, iftmp.75
	jmp	.L263	#
.L269:
	.loc 1 791 0 discriminator 13
	movl	$6, %eax	#, iftmp.75
	jmp	.L263	#
.L268:
	.loc 1 791 0 discriminator 11
	movq	-72(%rbp), %rax	# x, tmp314
	movzbl	2(%rax), %eax	# x_1->mode, D.12405
	movzbl	%al, %eax	# D.12405, D.12404
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12405
	movzbl	%al, %edx	# D.12405, D.12404
	movl	target_flags(%rip), %eax	# target_flags, target_flags.78
	andl	$33554432, %eax	#, D.12404
	testl	%eax, %eax	# D.12404
	je	.L272	#,
	.loc 1 791 0 discriminator 1
	movl	$8, %eax	#, iftmp.77
	jmp	.L273	#
.L272:
	.loc 1 791 0 discriminator 2
	movl	$4, %eax	#, iftmp.77
.L273:
	.loc 1 791 0 discriminator 3
	addl	%edx, %eax	# D.12404, D.12404
	subl	$1, %eax	#, D.12404
	movl	target_flags(%rip), %edx	# target_flags, target_flags.80
	andl	$33554432, %edx	#, D.12404
	testl	%edx, %edx	# D.12404
	je	.L274	#,
	.loc 1 791 0 discriminator 1
	movl	$8, %ebx	#, iftmp.79
	jmp	.L275	#
.L274:
	.loc 1 791 0 discriminator 2
	movl	$4, %ebx	#, iftmp.79
.L275:
	.loc 1 791 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.79
.L263:
	.loc 1 790 0 is_stmt 1
	movl	-40(%rbp), %edx	# regno, tmp321
	addl	%edx, %eax	# tmp321, tmp320
	movl	%eax, -36(%rbp)	# tmp320, last_regno
	.loc 1 793 0
	cmpl	$53, -36(%rbp)	#, last_regno
	jbe	.L276	#,
	.loc 1 794 0
	movl	$__FUNCTION__.10883, %edx	#,
	movl	$794, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L276:
	.loc 1 795 0
	movl	-40(%rbp), %eax	# regno, tmp322
	movl	%eax, -56(%rbp)	# tmp322, r
	jmp	.L277	#
.L278:
	.loc 1 796 0 discriminator 2
	movq	-80(%rbp), %rax	# res, tmp323
	movq	8(%rax), %rdx	# res_32(D)->regs, D.12401
	movl	-56(%rbp), %eax	# r, r.81
	movl	$1, %esi	#, tmp324
	movl	%eax, %ecx	# r.81, tmp371
	salq	%cl, %rsi	# tmp371, D.12401
	movq	%rsi, %rax	# D.12401, D.12401
	orq	%rax, %rdx	# D.12401, D.12401
	movq	-80(%rbp), %rax	# res, tmp325
	movq	%rdx, 8(%rax)	# D.12401, res_32(D)->regs
	.loc 1 795 0 discriminator 2
	addl	$1, -56(%rbp)	#, r
.L277:
	.loc 1 795 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# r, tmp326
	cmpl	-36(%rbp), %eax	# last_regno, tmp326
	jb	.L278	#,
.L254:
.LBE11:
	.loc 1 798 0 is_stmt 1
	jmp	.L186	#
.L201:
	.loc 1 801 0
	cmpl	$2, -88(%rbp)	#, mark_type
	jne	.L279	#,
	.loc 1 801 0 is_stmt 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, in_dest
	jne	.L194	#,
.L279:
	.loc 1 803 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp327
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.12402
	movq	-80(%rbp), %rsi	# res, tmp328
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 804 0
	jmp	.L186	#
.L194:
	.loc 1 810 0
	movq	-80(%rbp), %rax	# res, tmp329
	movb	$1, 2(%rax)	#, res_32(D)->volatil
	.loc 1 811 0
	jmp	.L186	#
.L198:
	.loc 1 814 0
	movq	-80(%rbp), %rax	# res, tmp330
	movb	$1, 2(%rax)	#, res_32(D)->volatil
	.loc 1 815 0
	jmp	.L280	#
.L195:
	.loc 1 818 0
	movq	-80(%rbp), %rax	# res, tmp331
	movzbl	2(%rax), %edx	# res_32(D)->volatil, D.12400
	movq	-72(%rbp), %rax	# x, tmp332
	movzbl	3(%rax), %eax	# *x_1, tmp335
	shrb	$3, %al	#, D.12406
	andl	$1, %eax	#, D.12406
	orl	%eax, %edx	# D.12400, D.12400
	movq	-80(%rbp), %rax	# res, tmp336
	movb	%dl, 2(%rax)	# D.12400, res_32(D)->volatil
	.loc 1 825 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L281	#
.L282:
	.loc 1 826 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp337
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.12403
	movl	-64(%rbp), %edx	# i, tmp339
	movslq	%edx, %rdx	# tmp339, tmp338
	movq	8(%rax,%rdx,8), %rax	# _197->elem, D.12402
	movl	-84(%rbp), %edx	# in_dest, tmp340
	movq	-80(%rbp), %rsi	# res, tmp341
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 825 0 discriminator 2
	addl	$1, -64(%rbp)	#, i
.L281:
	.loc 1 825 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp342
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.12403
	movl	(%rax), %eax	# _195->num_elem, D.12404
	cmpl	-64(%rbp), %eax	# i, D.12404
	jg	.L282	#,
	.loc 1 828 0 is_stmt 1
	jmp	.L186	#
.L290:
	.loc 1 831 0
	nop
.L280:
	.loc 1 835 0
	movl	-52(%rbp), %eax	# code, code.82
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp344
	movq	%rax, -32(%rbp)	# tmp344, format_ptr
	.loc 1 836 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L283	#
.L289:
	.loc 1 837 0
	movq	-32(%rbp), %rax	# format_ptr, format_ptr.83
	leaq	1(%rax), %rdx	#, tmp345
	movq	%rdx, -32(%rbp)	# tmp345, format_ptr
	movzbl	(%rax), %eax	# *format_ptr.83_206, D.12400
	movsbl	%al, %eax	# D.12400, D.12404
	cmpl	$69, %eax	#, D.12404
	je	.L285	#,
	cmpl	$101, %eax	#, D.12404
	jne	.L284	#,
	.loc 1 840 0
	movq	-72(%rbp), %rax	# x, tmp346
	movl	-64(%rbp), %edx	# i, tmp348
	movslq	%edx, %rdx	# tmp348, tmp347
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_4].rtx, D.12402
	movl	-88(%rbp), %ecx	# mark_type, tmp349
	movl	-84(%rbp), %edx	# in_dest, tmp350
	movq	-80(%rbp), %rsi	# res, tmp351
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 841 0
	jmp	.L284	#
.L285:
	.loc 1 844 0
	movl	$0, -60(%rbp)	#, j
	jmp	.L287	#
.L288:
	.loc 1 845 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp352
	movl	-64(%rbp), %edx	# i, tmp354
	movslq	%edx, %rdx	# tmp354, tmp353
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_4].rtvec, D.12403
	movl	-60(%rbp), %edx	# j, tmp356
	movslq	%edx, %rdx	# tmp356, tmp355
	movq	8(%rax,%rdx,8), %rax	# _214->elem, D.12402
	movl	-88(%rbp), %ecx	# mark_type, tmp357
	movl	-84(%rbp), %edx	# in_dest, tmp358
	movq	-80(%rbp), %rsi	# res, tmp359
	movq	%rax, %rdi	# D.12402,
	call	mark_set_resources	#
	.loc 1 844 0 discriminator 2
	addl	$1, -60(%rbp)	#, j
.L287:
	.loc 1 844 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp360
	movl	-64(%rbp), %edx	# i, tmp362
	movslq	%edx, %rdx	# tmp362, tmp361
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_4].rtvec, D.12403
	movl	(%rax), %eax	# _212->num_elem, D.12404
	cmpl	-60(%rbp), %eax	# j, D.12404
	jg	.L288	#,
	.loc 1 846 0 is_stmt 1
	nop
.L284:
	.loc 1 836 0
	addl	$1, -64(%rbp)	#, i
.L283:
	.loc 1 836 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# code, code.84
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.12405
	movzbl	%al, %eax	# D.12405, D.12404
	cmpl	-64(%rbp), %eax	# i, D.12404
	jg	.L289	#,
	jmp	.L186	#
.L291:
	.loc 1 655 0 is_stmt 1
	nop
.L186:
	.loc 1 848 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mark_set_resources, .-mark_set_resources
	.globl	mark_target_live_regs
	.type	mark_target_live_regs, @function
mark_target_live_regs:
.LFB8:
	.loc 1 894 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$264, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)	# insns, insns
	movq	%rsi, -240(%rbp)	# target, target
	movq	%rdx, -248(%rbp)	# res, res
	.loc 1 895 0
	movl	$-1, -220(%rbp)	#, b
	.loc 1 897 0
	movq	$0, -168(%rbp)	#, tinfo
	.loc 1 899 0
	movq	$0, -104(%rbp)	#, jump_insn
	.loc 1 905 0
	cmpq	$0, -240(%rbp)	#, target
	jne	.L293	#,
	.loc 1 907 0
	movq	-248(%rbp), %rcx	# res, tmp366
	movq	end_of_function_needs(%rip), %rax	# end_of_function_needs, tmp367
	movq	end_of_function_needs+8(%rip), %rdx	# end_of_function_needs,
	movq	%rax, (%rcx)	# tmp367, *res_57(D)
	movq	%rdx, 8(%rcx)	#, *res_57(D)
	.loc 1 908 0
	jmp	.L292	#
.L293:
	.loc 1 912 0
	movq	-248(%rbp), %rax	# res, tmp368
	movb	$1, (%rax)	#, res_57(D)->memory
	.loc 1 913 0
	movq	-248(%rbp), %rax	# res, tmp369
	movb	$0, 1(%rax)	#, res_57(D)->unch_memory
	movq	-248(%rbp), %rax	# res, tmp370
	movzbl	1(%rax), %edx	# res_57(D)->unch_memory, D.12408
	movq	-248(%rbp), %rax	# res, tmp371
	movb	%dl, 2(%rax)	# D.12408, res_57(D)->volatil
	.loc 1 914 0
	movq	-248(%rbp), %rax	# res, tmp372
	movb	$0, 3(%rax)	#, res_57(D)->cc
	.loc 1 917 0
	movq	target_hash_table(%rip), %rax	# target_hash_table, target_hash_table.85
	testq	%rax, %rax	# target_hash_table.85
	je	.L295	#,
	.loc 1 919 0
	movq	target_hash_table(%rip), %rsi	# target_hash_table, target_hash_table.86
	movq	-240(%rbp), %rax	# target, tmp373
	movl	8(%rax), %ecx	# target_56(D)->fld[0].rtint, D.12409
	movslq	%ecx, %rax	# D.12409, tmp374
	imulq	$2139127681, %rax, %rax	#, tmp374, tmp375
	shrq	$32, %rax	#, tmp376
	movl	%eax, %edx	# tmp376, tmp377
	sarl	$7, %edx	#, tmp377
	movl	%ecx, %eax	# D.12409, tmp378
	sarl	$31, %eax	#, tmp378
	subl	%eax, %edx	# tmp378, D.12409
	movl	%edx, %eax	# D.12409, tmp379
	sall	$8, %eax	#, tmp380
	addl	%edx, %eax	# D.12409, tmp379
	subl	%eax, %ecx	# tmp379, D.12409
	movl	%ecx, %edx	# D.12409, D.12409
	movslq	%edx, %rax	# D.12409, D.12410
	salq	$3, %rax	#, D.12410
	addq	%rsi, %rax	# target_hash_table.86, D.12411
	movq	(%rax), %rax	# *_65, tmp381
	movq	%rax, -168(%rbp)	# tmp381, tinfo
	jmp	.L296	#
.L299:
	.loc 1 921 0
	movq	-168(%rbp), %rax	# tinfo, tmp382
	movl	(%rax), %edx	# tinfo_6->uid, D.12409
	movq	-240(%rbp), %rax	# target, tmp383
	movl	8(%rax), %eax	# target_56(D)->fld[0].rtint, D.12409
	cmpl	%eax, %edx	# D.12409, D.12409
	jne	.L297	#,
	.loc 1 922 0
	jmp	.L298	#
.L297:
	.loc 1 920 0
	movq	-168(%rbp), %rax	# tinfo, tmp384
	movq	8(%rax), %rax	# tinfo_6->next, tmp385
	movq	%rax, -168(%rbp)	# tmp385, tinfo
.L296:
	.loc 1 919 0 discriminator 1
	cmpq	$0, -168(%rbp)	#, tinfo
	jne	.L299	#,
.L298:
	.loc 1 927 0
	cmpq	$0, -168(%rbp)	#, tinfo
	je	.L295	#,
	.loc 1 927 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# tinfo, tmp386
	movl	24(%rax), %eax	# tinfo_6->block, D.12409
	cmpl	$-1, %eax	#, D.12409
	je	.L295	#,
	.loc 1 928 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.87
	movq	-168(%rbp), %rdx	# tinfo, tmp387
	movl	24(%rdx), %edx	# tinfo_6->block, D.12409
	movslq	%edx, %rdx	# D.12409, tmp388
	addq	$4, %rdx	#, tmp389
	movq	(%rax,%rdx,8), %rax	# basic_block_info.87_71->data.bb, D.12412
	movq	(%rax), %rax	# _73->head, D.12413
	movzbl	3(%rax), %eax	# *_74, D.12414
	andl	$8, %eax	#, D.12414
	testb	%al, %al	# D.12414
	jne	.L295	#,
	.loc 1 929 0
	movq	-168(%rbp), %rax	# tinfo, tmp390
	movl	24(%rax), %eax	# tinfo_6->block, tmp391
	movl	%eax, -220(%rbp)	# tmp391, b
.L295:
	.loc 1 932 0
	cmpl	$-1, -220(%rbp)	#, b
	jne	.L300	#,
	.loc 1 933 0
	movq	compiler_params(%rip), %rax	# compiler_params, compiler_params.88
	addq	$48, %rax	#, D.12415
	movl	8(%rax), %edx	# _79->value, D.12409
	movq	-240(%rbp), %rax	# target, tmp392
	movl	%edx, %esi	# D.12409,
	movq	%rax, %rdi	# tmp392,
	call	find_basic_block	#
	movl	%eax, -220(%rbp)	# tmp393, b
.L300:
	.loc 1 935 0
	movq	target_hash_table(%rip), %rax	# target_hash_table, target_hash_table.89
	testq	%rax, %rax	# target_hash_table.89
	je	.L301	#,
	.loc 1 937 0
	cmpq	$0, -168(%rbp)	#, tinfo
	je	.L302	#,
	.loc 1 941 0
	movq	-168(%rbp), %rax	# tinfo, tmp394
	movl	24(%rax), %eax	# tinfo_7->block, D.12409
	cmpl	-220(%rbp), %eax	# b, D.12409
	jne	.L301	#,
	.loc 1 941 0 is_stmt 0 discriminator 1
	cmpl	$-1, -220(%rbp)	#, b
	je	.L301	#,
	movq	-168(%rbp), %rax	# tinfo, tmp395
	movl	28(%rax), %edx	# tinfo_7->bb_tick, D.12409
	movq	bb_ticks(%rip), %rax	# bb_ticks, bb_ticks.90
	movl	-220(%rbp), %ecx	# b, tmp396
	movslq	%ecx, %rcx	# tmp396, D.12410
	salq	$2, %rcx	#, D.12410
	addq	%rcx, %rax	# D.12410, D.12416
	movl	(%rax), %eax	# *_88, D.12409
	cmpl	%eax, %edx	# D.12409, D.12409
	jne	.L301	#,
	.loc 1 943 0 is_stmt 1
	movq	-168(%rbp), %rax	# tinfo, tmp397
	movq	16(%rax), %rdx	# tinfo_7->live_regs, D.12410
	movq	-248(%rbp), %rax	# res, tmp398
	movq	%rdx, 8(%rax)	# D.12410, res_57(D)->regs
	.loc 1 944 0
	jmp	.L292	#
.L302:
	.loc 1 951 0
	movl	$32, %edi	#,
	call	xmalloc	#
	movq	%rax, -168(%rbp)	# tmp399, tinfo
	.loc 1 952 0
	movq	-240(%rbp), %rax	# target, tmp400
	movl	8(%rax), %edx	# target_56(D)->fld[0].rtint, D.12409
	movq	-168(%rbp), %rax	# tinfo, tmp401
	movl	%edx, (%rax)	# D.12409, tinfo_91->uid
	.loc 1 953 0
	movq	-168(%rbp), %rax	# tinfo, tmp402
	movl	-220(%rbp), %edx	# b, tmp403
	movl	%edx, 24(%rax)	# tmp403, tinfo_91->block
	.loc 1 955 0
	movq	target_hash_table(%rip), %rsi	# target_hash_table, target_hash_table.91
	movq	-240(%rbp), %rax	# target, tmp404
	movl	8(%rax), %ecx	# target_56(D)->fld[0].rtint, D.12409
	movslq	%ecx, %rax	# D.12409, tmp405
	imulq	$2139127681, %rax, %rax	#, tmp405, tmp406
	shrq	$32, %rax	#, tmp407
	movl	%eax, %edx	# tmp407, tmp408
	sarl	$7, %edx	#, tmp408
	movl	%ecx, %eax	# D.12409, tmp409
	sarl	$31, %eax	#, tmp409
	subl	%eax, %edx	# tmp409, D.12409
	movl	%edx, %eax	# D.12409, tmp410
	sall	$8, %eax	#, tmp411
	addl	%edx, %eax	# D.12409, tmp410
	subl	%eax, %ecx	# tmp410, D.12409
	movl	%ecx, %edx	# D.12409, D.12409
	movslq	%edx, %rax	# D.12409, D.12410
	salq	$3, %rax	#, D.12410
	addq	%rsi, %rax	# target_hash_table.91, D.12411
	movq	(%rax), %rdx	# *_98, D.12417
	movq	-168(%rbp), %rax	# tinfo, tmp412
	movq	%rdx, 8(%rax)	# D.12417, tinfo_91->next
	.loc 1 956 0
	movq	target_hash_table(%rip), %rsi	# target_hash_table, target_hash_table.92
	movq	-240(%rbp), %rax	# target, tmp413
	movl	8(%rax), %ecx	# target_56(D)->fld[0].rtint, D.12409
	movslq	%ecx, %rax	# D.12409, tmp414
	imulq	$2139127681, %rax, %rax	#, tmp414, tmp415
	shrq	$32, %rax	#, tmp416
	movl	%eax, %edx	# tmp416, tmp417
	sarl	$7, %edx	#, tmp417
	movl	%ecx, %eax	# D.12409, tmp418
	sarl	$31, %eax	#, tmp418
	subl	%eax, %edx	# tmp418, D.12409
	movl	%edx, %eax	# D.12409, tmp419
	sall	$8, %eax	#, tmp420
	addl	%edx, %eax	# D.12409, tmp419
	subl	%eax, %ecx	# tmp419, D.12409
	movl	%ecx, %edx	# D.12409, D.12409
	movslq	%edx, %rax	# D.12409, D.12410
	salq	$3, %rax	#, D.12410
	leaq	(%rsi,%rax), %rdx	#, D.12411
	movq	-168(%rbp), %rax	# tinfo, tmp421
	movq	%rax, (%rdx)	# tmp421, *_105
.L301:
	.loc 1 960 0
	movq	$0, pending_dead_regs(%rip)	#, pending_dead_regs
	.loc 1 965 0
	cmpl	$-1, -220(%rbp)	#, b
	je	.L303	#,
.LBB12:
	.loc 1 967 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.93
	movl	-220(%rbp), %edx	# b, tmp423
	movslq	%edx, %rdx	# tmp423, tmp422
	addq	$4, %rdx	#, tmp424
	movq	(%rax,%rdx,8), %rax	# basic_block_info.93_106->data.bb, D.12412
	movq	64(%rax), %rax	# _107->global_live_at_start, tmp425
	movq	%rax, -96(%rbp)	# tmp425, regs_live
	.loc 1 976 0
	movq	$0, current_live_regs(%rip)	#, current_live_regs
	movq	-96(%rbp), %rax	# regs_live, tmp426
	movq	%rax, %rsi	# tmp426,
	movl	$current_live_regs, %edi	#,
	call	reg_set_to_hard_reg_set	#
.LBB13:
	.loc 1 978 0
	movq	-96(%rbp), %rax	# regs_live, tmp427
	movq	(%rax), %rax	# regs_live_108->first, tmp428
	movq	%rax, -136(%rbp)	# tmp428, ptr_
	movl	$0, -200(%rbp)	#, indx_
	movl	$53, -208(%rbp)	#, bit_num_
	movl	$0, -204(%rbp)	#, word_num_
	jmp	.L304	#
.L306:
	.loc 1 978 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# ptr_, tmp429
	movq	(%rax), %rax	# ptr__14->next, tmp430
	movq	%rax, -136(%rbp)	# tmp430, ptr_
.L304:
	cmpq	$0, -136(%rbp)	#, ptr_
	je	.L305	#,
	.loc 1 978 0 discriminator 2
	movq	-136(%rbp), %rax	# ptr_, tmp431
	movl	16(%rax), %eax	# ptr__14->indx, D.12418
	cmpl	-200(%rbp), %eax	# indx_, D.12418
	jb	.L306	#,
.L305:
	.loc 1 978 0 discriminator 3
	cmpq	$0, -136(%rbp)	#, ptr_
	je	.L307	#,
	.loc 1 978 0 discriminator 1
	movq	-136(%rbp), %rax	# ptr_, tmp432
	movl	16(%rax), %eax	# ptr__14->indx, D.12418
	cmpl	-200(%rbp), %eax	# indx_, D.12418
	je	.L307	#,
	movl	$0, -208(%rbp)	#, bit_num_
	movl	$0, -204(%rbp)	#, word_num_
	jmp	.L308	#
.L307:
	.loc 1 978 0 discriminator 2
	jmp	.L308	#
.L339:
	.loc 1 978 0
	jmp	.L309	#
.L338:
.LBB14:
	.loc 1 978 0 discriminator 2
	movq	-136(%rbp), %rax	# ptr_, tmp433
	movl	-204(%rbp), %edx	# word_num_, tmp434
	addq	$2, %rdx	#, tmp435
	movq	8(%rax,%rdx,8), %rax	# ptr__15->bits, tmp436
	movq	%rax, -128(%rbp)	# tmp436, word_
	cmpq	$0, -128(%rbp)	#, word_
	je	.L310	#,
	.loc 1 978 0 discriminator 1
	jmp	.L311	#
.L337:
.LBB15:
	.loc 1 978 0 discriminator 2
	movl	-208(%rbp), %eax	# bit_num_, bit_num_.94
	movl	$1, %edx	#, tmp437
	movl	%eax, %ecx	# bit_num_.94, tmp587
	salq	%cl, %rdx	# tmp587, tmp438
	movq	%rdx, %rax	# tmp438, tmp438
	movq	%rax, -88(%rbp)	# tmp438, mask_
	movq	-88(%rbp), %rax	# mask_, tmp439
	movq	-128(%rbp), %rdx	# word_, tmp440
	andq	%rdx, %rax	# tmp440, D.12410
	testq	%rax, %rax	# D.12410
	je	.L312	#,
	.loc 1 978 0 discriminator 1
	movq	-88(%rbp), %rax	# mask_, tmp441
	notq	%rax	# D.12410
	andq	%rax, -128(%rbp)	# D.12410, word_
	movq	-136(%rbp), %rax	# ptr_, tmp442
	movl	16(%rax), %eax	# ptr__15->indx, D.12418
	leal	(%rax,%rax), %edx	#, D.12418
	movl	-204(%rbp), %eax	# word_num_, tmp443
	addl	%edx, %eax	# D.12418, D.12418
	sall	$6, %eax	#, D.12418
	movl	%eax, %edx	# D.12418, D.12418
	movl	-208(%rbp), %eax	# bit_num_, tmp447
	addl	%edx, %eax	# D.12418, tmp446
	movl	%eax, -216(%rbp)	# tmp446, i
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.95
	movl	-216(%rbp), %edx	# i, D.12410
	addq	%rdx, %rdx	# D.12410
	addq	%rdx, %rax	# D.12410, D.12419
	movzwl	(%rax), %eax	# *_132, D.12420
	testw	%ax, %ax	# D.12420
	js	.L313	#,
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.96
	movl	-216(%rbp), %edx	# i, D.12410
	addq	%rdx, %rdx	# D.12410
	addq	%rdx, %rax	# D.12410, D.12419
	movzwl	(%rax), %eax	# *_137, D.12420
	cwtl
	movl	%eax, -196(%rbp)	# tmp448, regno
	movl	-196(%rbp), %eax	# regno, tmp449
	movl	%eax, -212(%rbp)	# tmp449, j
	jmp	.L314	#
.L336:
	.loc 1 978 0 discriminator 2
	movl	-212(%rbp), %eax	# j, j.97
	movl	$1, %edx	#, tmp450
	movl	%eax, %ecx	# j.97, tmp589
	salq	%cl, %rdx	# tmp589, D.12410
	movq	current_live_regs(%rip), %rax	# current_live_regs, current_live_regs.98
	orq	%rdx, %rax	# D.12410, current_live_regs.99
	movq	%rax, current_live_regs(%rip)	# current_live_regs.99, current_live_regs
	addl	$1, -212(%rbp)	#, j
.L314:
	.loc 1 978 0 discriminator 1
	cmpl	$7, -196(%rbp)	#, regno
	jbe	.L315	#,
	cmpl	$15, -196(%rbp)	#, regno
	jbe	.L316	#,
.L315:
	.loc 1 978 0 discriminator 2
	cmpl	$20, -196(%rbp)	#, regno
	jbe	.L317	#,
	.loc 1 978 0 discriminator 1
	cmpl	$28, -196(%rbp)	#, regno
	jbe	.L316	#,
.L317:
	.loc 1 978 0 discriminator 2
	cmpl	$44, -196(%rbp)	#, regno
	jbe	.L318	#,
	.loc 1 978 0 discriminator 1
	cmpl	$52, -196(%rbp)	#, regno
	jbe	.L316	#,
.L318:
	.loc 1 978 0 discriminator 2
	cmpl	$28, -196(%rbp)	#, regno
	jbe	.L319	#,
	.loc 1 978 0 discriminator 1
	cmpl	$36, -196(%rbp)	#, regno
	ja	.L319	#,
.L316:
	movq	cfun(%rip), %rax	# cfun, cfun.102
	movq	24(%rax), %rax	# cfun.102_192->emit, D.12421
	movq	80(%rax), %rax	# _193->x_regno_reg_rtx, D.12422
	movl	-216(%rbp), %edx	# i, D.12410
	salq	$3, %rdx	#, D.12410
	addq	%rdx, %rax	# D.12410, D.12422
	movq	(%rax), %rax	# *_197, D.12413
	movzbl	2(%rax), %eax	# _198->mode, D.12414
	movzbl	%al, %eax	# D.12414, D.12409
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12423
	cmpl	$5, %eax	#, D.12423
	je	.L320	#,
	.loc 1 978 0 discriminator 4
	movq	cfun(%rip), %rax	# cfun, cfun.103
	movq	24(%rax), %rax	# cfun.103_202->emit, D.12421
	movq	80(%rax), %rax	# _203->x_regno_reg_rtx, D.12422
	movl	-216(%rbp), %edx	# i, D.12410
	salq	$3, %rdx	#, D.12410
	addq	%rdx, %rax	# D.12410, D.12422
	movq	(%rax), %rax	# *_207, D.12413
	movzbl	2(%rax), %eax	# _208->mode, D.12414
	movzbl	%al, %eax	# D.12414, D.12409
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12423
	cmpl	$6, %eax	#, D.12423
	jne	.L321	#,
.L320:
	.loc 1 978 0 discriminator 3
	movl	$2, %eax	#, iftmp.101
	jmp	.L323	#
.L321:
	.loc 1 978 0 discriminator 1
	movl	$1, %eax	#, iftmp.101
	jmp	.L323	#
.L319:
	.loc 1 978 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.105
	movq	24(%rax), %rax	# cfun.105_141->emit, D.12421
	movq	80(%rax), %rax	# _142->x_regno_reg_rtx, D.12422
	movl	-216(%rbp), %edx	# i, D.12410
	salq	$3, %rdx	#, D.12410
	addq	%rdx, %rax	# D.12410, D.12422
	movq	(%rax), %rax	# *_146, D.12413
	movzbl	2(%rax), %eax	# _147->mode, D.12414
	cmpb	$18, %al	#, D.12414
	jne	.L324	#,
	.loc 1 978 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.107
	andl	$33554432, %eax	#, D.12409
	testl	%eax, %eax	# D.12409
	je	.L325	#,
	.loc 1 978 0 discriminator 9
	movl	$2, %eax	#, iftmp.106
	jmp	.L323	#
.L325:
	.loc 1 978 0 discriminator 10
	movl	$3, %eax	#, iftmp.106
	jmp	.L323	#
.L324:
	.loc 1 978 0 discriminator 8
	movq	cfun(%rip), %rax	# cfun, cfun.109
	movq	24(%rax), %rax	# cfun.109_154->emit, D.12421
	movq	80(%rax), %rax	# _155->x_regno_reg_rtx, D.12422
	movl	-216(%rbp), %edx	# i, D.12410
	salq	$3, %rdx	#, D.12410
	addq	%rdx, %rax	# D.12410, D.12422
	movq	(%rax), %rax	# *_159, D.12413
	movzbl	2(%rax), %eax	# _160->mode, D.12414
	cmpb	$24, %al	#, D.12414
	jne	.L328	#,
	.loc 1 978 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.111
	andl	$33554432, %eax	#, D.12409
	testl	%eax, %eax	# D.12409
	je	.L329	#,
	.loc 1 978 0 discriminator 13
	movl	$4, %eax	#, iftmp.110
	jmp	.L323	#
.L329:
	.loc 1 978 0 discriminator 14
	movl	$6, %eax	#, iftmp.110
	jmp	.L323	#
.L328:
	.loc 1 978 0 discriminator 12
	movq	cfun(%rip), %rax	# cfun, cfun.112
	movq	24(%rax), %rax	# cfun.112_167->emit, D.12421
	movq	80(%rax), %rax	# _168->x_regno_reg_rtx, D.12422
	movl	-216(%rbp), %edx	# i, D.12410
	salq	$3, %rdx	#, D.12410
	addq	%rdx, %rax	# D.12410, D.12422
	movq	(%rax), %rax	# *_172, D.12413
	movzbl	2(%rax), %eax	# _173->mode, D.12414
	movzbl	%al, %eax	# D.12414, D.12409
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12414
	movzbl	%al, %edx	# D.12414, D.12409
	movl	target_flags(%rip), %eax	# target_flags, target_flags.114
	andl	$33554432, %eax	#, D.12409
	testl	%eax, %eax	# D.12409
	je	.L332	#,
	.loc 1 978 0 discriminator 1
	movl	$8, %eax	#, iftmp.113
	jmp	.L333	#
.L332:
	.loc 1 978 0 discriminator 2
	movl	$4, %eax	#, iftmp.113
.L333:
	.loc 1 978 0 discriminator 3
	addl	%edx, %eax	# D.12409, D.12409
	subl	$1, %eax	#, D.12409
	movl	target_flags(%rip), %edx	# target_flags, target_flags.116
	andl	$33554432, %edx	#, D.12409
	testl	%edx, %edx	# D.12409
	je	.L334	#,
	.loc 1 978 0 discriminator 1
	movl	$8, %ebx	#, iftmp.115
	jmp	.L335	#
.L334:
	.loc 1 978 0 discriminator 2
	movl	$4, %ebx	#, iftmp.115
.L335:
	.loc 1 978 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.115
.L323:
	.loc 1 978 0 discriminator 6
	movl	-196(%rbp), %edx	# regno, tmp456
	addl	%edx, %eax	# tmp456, D.12418
	cmpl	-212(%rbp), %eax	# j, D.12418
	ja	.L336	#,
.L313:
	.loc 1 978 0 discriminator 2
	cmpq	$0, -128(%rbp)	#, word_
	jne	.L312	#,
	.loc 1 978 0 discriminator 1
	jmp	.L310	#
.L312:
.LBE15:
	.loc 1 978 0 discriminator 2
	addl	$1, -208(%rbp)	#, bit_num_
.L311:
	.loc 1 978 0 discriminator 1
	cmpl	$63, -208(%rbp)	#, bit_num_
	jbe	.L337	#,
.L310:
	.loc 1 978 0 discriminator 2
	movl	$0, -208(%rbp)	#, bit_num_
.LBE14:
	addl	$1, -204(%rbp)	#, word_num_
.L309:
	.loc 1 978 0 discriminator 1
	cmpl	$1, -204(%rbp)	#, word_num_
	jbe	.L338	#,
	.loc 1 978 0 discriminator 3
	movl	$0, -204(%rbp)	#, word_num_
	movq	-136(%rbp), %rax	# ptr_, tmp457
	movq	(%rax), %rax	# ptr__15->next, tmp458
	movq	%rax, -136(%rbp)	# tmp458, ptr_
.L308:
	.loc 1 978 0 discriminator 1
	cmpq	$0, -136(%rbp)	#, ptr_
	jne	.L339	#,
.LBE13:
	.loc 1 994 0 is_stmt 1
	cmpl	$0, -220(%rbp)	#, b
	je	.L340	#,
	.loc 1 994 0 is_stmt 0 discriminator 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.118
	movl	-220(%rbp), %edx	# b, tmp460
	movslq	%edx, %rdx	# tmp460, tmp459
	addq	$4, %rdx	#, tmp461
	movq	(%rax,%rdx,8), %rax	# basic_block_info.118_226->data.bb, D.12412
	movq	(%rax), %rax	# _227->head, iftmp.117
	jmp	.L341	#
.L340:
	.loc 1 994 0 discriminator 2
	movq	-232(%rbp), %rax	# insns, iftmp.117
.L341:
	.loc 1 994 0 discriminator 3
	movq	%rax, -152(%rbp)	# iftmp.117, start_insn
	.loc 1 995 0 is_stmt 1 discriminator 3
	movq	-240(%rbp), %rax	# target, tmp462
	movq	%rax, -144(%rbp)	# tmp462, stop_insn
	.loc 1 997 0 discriminator 3
	movq	-152(%rbp), %rax	# start_insn, tmp463
	movzwl	(%rax), %eax	# start_insn_231->code, D.12424
	cmpw	$32, %ax	#, D.12424
	jne	.L342	#,
	.loc 1 998 0
	movq	-152(%rbp), %rax	# start_insn, tmp464
	movq	32(%rax), %rax	# start_insn_231->fld[3].rtx, D.12413
	movzwl	(%rax), %eax	# _234->code, D.12424
	cmpw	$24, %ax	#, D.12424
	jne	.L342	#,
	.loc 1 999 0
	movq	-152(%rbp), %rax	# start_insn, tmp465
	movq	32(%rax), %rax	# start_insn_231->fld[3].rtx, D.12413
	movq	8(%rax), %rax	# _236->fld[0].rtvec, D.12425
	movq	8(%rax), %rax	# _237->elem, tmp466
	movq	%rax, -152(%rbp)	# tmp466, start_insn
.L342:
	.loc 1 1001 0
	movq	-144(%rbp), %rax	# stop_insn, tmp467
	movzwl	(%rax), %eax	# stop_insn_232->code, D.12424
	cmpw	$32, %ax	#, D.12424
	jne	.L343	#,
	.loc 1 1002 0
	movq	-144(%rbp), %rax	# stop_insn, tmp468
	movq	32(%rax), %rax	# stop_insn_232->fld[3].rtx, D.12413
	movzwl	(%rax), %eax	# _240->code, D.12424
	cmpw	$24, %ax	#, D.12424
	jne	.L343	#,
	.loc 1 1003 0
	movq	-144(%rbp), %rax	# stop_insn, tmp469
	movq	16(%rax), %rax	# stop_insn_232->fld[1].rtx, D.12413
	movq	%rax, %rdi	# D.12413,
	call	next_insn	#
	movq	%rax, -144(%rbp)	# tmp470, stop_insn
.L343:
	.loc 1 1005 0
	movq	-152(%rbp), %rax	# start_insn, tmp471
	movq	%rax, -160(%rbp)	# tmp471, insn
	jmp	.L344	#
.L408:
.LBB16:
	.loc 1 1009 0
	movq	-160(%rbp), %rax	# insn, tmp472
	movq	%rax, -112(%rbp)	# tmp472, real_insn
	.loc 1 1014 0
	movq	-160(%rbp), %rax	# insn, tmp473
	movzbl	3(%rax), %eax	# *insn_9, D.12414
	andl	$16, %eax	#, D.12414
	testb	%al, %al	# D.12414
	je	.L345	#,
	.loc 1 1015 0
	jmp	.L346	#
.L345:
	.loc 1 1019 0
	movq	-160(%rbp), %rax	# insn, tmp474
	movzwl	(%rax), %eax	# insn_9->code, D.12424
	cmpw	$32, %ax	#, D.12424
	jne	.L347	#,
	.loc 1 1019 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# insn, tmp475
	movq	32(%rax), %rax	# insn_9->fld[3].rtx, D.12413
	movzwl	(%rax), %eax	# _249->code, D.12424
	cmpw	$48, %ax	#, D.12424
	jne	.L347	#,
	.loc 1 1020 0 is_stmt 1
	movq	-160(%rbp), %rax	# insn, tmp476
	movq	32(%rax), %rax	# insn_9->fld[3].rtx, D.12413
	movq	8(%rax), %rax	# _251->fld[0].rtx, D.12413
	movzwl	(%rax), %eax	# _252->code, D.12424
	movzwl	%ax, %eax	# D.12424, D.12409
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.12408
	cmpb	$105, %al	#, D.12408
	jne	.L347	#,
	.loc 1 1021 0
	movq	-160(%rbp), %rax	# insn, tmp478
	movq	32(%rax), %rax	# insn_9->fld[3].rtx, D.12413
	movq	8(%rax), %rax	# _256->fld[0].rtx, tmp479
	movq	%rax, -112(%rbp)	# tmp479, real_insn
.L347:
	.loc 1 1023 0
	movq	-112(%rbp), %rax	# real_insn, tmp480
	movzwl	(%rax), %eax	# real_insn_27->code, D.12424
	cmpw	$34, %ax	#, D.12424
	jne	.L348	#,
	.loc 1 1028 0
	movq	regs_invalidated_by_call(%rip), %rax	# regs_invalidated_by_call, regs_invalidated_by_call.119
	notq	%rax	# D.12410
	movq	%rax, %rdx	# D.12410, D.12410
	movq	current_live_regs(%rip), %rax	# current_live_regs, current_live_regs.120
	andq	%rdx, %rax	# D.12410, current_live_regs.121
	movq	%rax, current_live_regs(%rip)	# current_live_regs.121, current_live_regs
	.loc 1 1033 0
	movl	$0, -216(%rbp)	#, i
	jmp	.L349	#
.L351:
	.loc 1 1034 0
	movl	-216(%rbp), %eax	# i, tmp481
	movzbl	global_regs(%rax), %eax	# global_regs, D.12408
	testb	%al, %al	# D.12408
	je	.L350	#,
	.loc 1 1035 0
	movl	-216(%rbp), %eax	# i, i.122
	movl	$1, %edx	#, tmp482
	movl	%eax, %ecx	# i.122, tmp592
	salq	%cl, %rdx	# tmp592, D.12410
	movq	current_live_regs(%rip), %rax	# current_live_regs, current_live_regs.123
	orq	%rdx, %rax	# D.12410, current_live_regs.124
	movq	%rax, current_live_regs(%rip)	# current_live_regs.124, current_live_regs
.L350:
	.loc 1 1033 0
	addl	$1, -216(%rbp)	#, i
.L349:
	.loc 1 1033 0 is_stmt 0 discriminator 1
	cmpl	$52, -216(%rbp)	#, i
	jbe	.L351	#,
.L348:
	.loc 1 1043 0 is_stmt 1
	movq	-112(%rbp), %rax	# real_insn, tmp483
	movzwl	(%rax), %eax	# real_insn_27->code, D.12424
	cmpw	$32, %ax	#, D.12424
	jne	.L352	#,
	.loc 1 1044 0
	movq	-112(%rbp), %rax	# real_insn, tmp484
	movq	32(%rax), %rax	# real_insn_27->fld[3].rtx, D.12413
	movzwl	(%rax), %eax	# _271->code, D.12424
	cmpw	$48, %ax	#, D.12424
	je	.L352	#,
	.loc 1 1045 0
	movq	-112(%rbp), %rax	# real_insn, tmp485
	movq	32(%rax), %rax	# real_insn_27->fld[3].rtx, D.12413
	movzwl	(%rax), %eax	# _273->code, D.12424
	cmpw	$49, %ax	#, D.12424
	jne	.L353	#,
.L352:
	.loc 1 1046 0
	movq	-112(%rbp), %rax	# real_insn, tmp486
	movzwl	(%rax), %eax	# real_insn_27->code, D.12424
	cmpw	$33, %ax	#, D.12424
	je	.L353	#,
	.loc 1 1047 0
	movq	-112(%rbp), %rax	# real_insn, tmp487
	movzwl	(%rax), %eax	# real_insn_27->code, D.12424
	cmpw	$34, %ax	#, D.12424
	jne	.L354	#,
.L353:
	.loc 1 1049 0
	movq	-112(%rbp), %rax	# real_insn, tmp488
	movq	56(%rax), %rax	# real_insn_27->fld[6].rtx, tmp489
	movq	%rax, -120(%rbp)	# tmp489, link
	jmp	.L355	#
.L380:
	.loc 1 1050 0
	movq	-120(%rbp), %rax	# link, tmp490
	movzbl	2(%rax), %eax	# link_25->mode, D.12414
	cmpb	$1, %al	#, D.12414
	jne	.L356	#,
	.loc 1 1051 0
	movq	-120(%rbp), %rax	# link, tmp491
	movq	8(%rax), %rax	# link_25->fld[0].rtx, D.12413
	movzwl	(%rax), %eax	# _289->code, D.12424
	cmpw	$61, %ax	#, D.12424
	jne	.L356	#,
	.loc 1 1052 0
	movq	-120(%rbp), %rax	# link, tmp492
	movq	8(%rax), %rax	# link_25->fld[0].rtx, D.12413
	movl	8(%rax), %eax	# _291->fld[0].rtuint, D.12418
	cmpl	$52, %eax	#, D.12418
	ja	.L356	#,
.LBB17:
	.loc 1 1054 0
	movq	-120(%rbp), %rax	# link, tmp493
	movq	8(%rax), %rax	# link_25->fld[0].rtx, D.12413
	movl	8(%rax), %eax	# _293->fld[0].rtuint, tmp494
	movl	%eax, -192(%rbp)	# tmp494, first_regno
	.loc 1 1057 0
	cmpl	$7, -192(%rbp)	#, first_regno
	jbe	.L357	#,
	.loc 1 1057 0 is_stmt 0 discriminator 1
	cmpl	$15, -192(%rbp)	#, first_regno
	jbe	.L358	#,
.L357:
	.loc 1 1057 0 discriminator 2
	cmpl	$20, -192(%rbp)	#, first_regno
	jbe	.L359	#,
	.loc 1 1057 0 discriminator 1
	cmpl	$28, -192(%rbp)	#, first_regno
	jbe	.L358	#,
.L359:
	.loc 1 1057 0 discriminator 2
	cmpl	$44, -192(%rbp)	#, first_regno
	jbe	.L360	#,
	.loc 1 1057 0 discriminator 1
	cmpl	$52, -192(%rbp)	#, first_regno
	jbe	.L358	#,
.L360:
	.loc 1 1057 0 discriminator 2
	cmpl	$28, -192(%rbp)	#, first_regno
	jbe	.L361	#,
	.loc 1 1057 0 discriminator 1
	cmpl	$36, -192(%rbp)	#, first_regno
	ja	.L361	#,
.L358:
	movq	-120(%rbp), %rax	# link, tmp495
	movq	8(%rax), %rax	# link_25->fld[0].rtx, D.12413
	movzbl	2(%rax), %eax	# _328->mode, D.12414
	movzbl	%al, %eax	# D.12414, D.12409
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12423
	cmpl	$5, %eax	#, D.12423
	je	.L362	#,
	.loc 1 1057 0 discriminator 4
	movq	-120(%rbp), %rax	# link, tmp497
	movq	8(%rax), %rax	# link_25->fld[0].rtx, D.12413
	movzbl	2(%rax), %eax	# _332->mode, D.12414
	movzbl	%al, %eax	# D.12414, D.12409
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12423
	cmpl	$6, %eax	#, D.12423
	jne	.L363	#,
.L362:
	.loc 1 1057 0 discriminator 3
	movl	$2, %eax	#, iftmp.126
	jmp	.L365	#
.L363:
	.loc 1 1057 0 discriminator 1
	movl	$1, %eax	#, iftmp.126
	jmp	.L365	#
.L361:
	.loc 1 1057 0 discriminator 2
	movq	-120(%rbp), %rax	# link, tmp499
	movq	8(%rax), %rax	# link_25->fld[0].rtx, D.12413
	movzbl	2(%rax), %eax	# _295->mode, D.12414
	cmpb	$18, %al	#, D.12414
	jne	.L366	#,
	.loc 1 1057 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.129
	andl	$33554432, %eax	#, D.12409
	testl	%eax, %eax	# D.12409
	je	.L367	#,
	.loc 1 1057 0 discriminator 8
	movl	$2, %eax	#, iftmp.128
	jmp	.L365	#
.L367:
	.loc 1 1057 0 discriminator 9
	movl	$3, %eax	#, iftmp.128
	jmp	.L365	#
.L366:
	.loc 1 1057 0 discriminator 7
	movq	-120(%rbp), %rax	# link, tmp500
	movq	8(%rax), %rax	# link_25->fld[0].rtx, D.12413
	movzbl	2(%rax), %eax	# _302->mode, D.12414
	cmpb	$24, %al	#, D.12414
	jne	.L370	#,
	.loc 1 1057 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.132
	andl	$33554432, %eax	#, D.12409
	testl	%eax, %eax	# D.12409
	je	.L371	#,
	.loc 1 1057 0 discriminator 12
	movl	$4, %eax	#, iftmp.131
	jmp	.L365	#
.L371:
	.loc 1 1057 0 discriminator 13
	movl	$6, %eax	#, iftmp.131
	jmp	.L365	#
.L370:
	.loc 1 1057 0 discriminator 11
	movq	-120(%rbp), %rax	# link, tmp501
	movq	8(%rax), %rax	# link_25->fld[0].rtx, D.12413
	movzbl	2(%rax), %eax	# _309->mode, D.12414
	movzbl	%al, %eax	# D.12414, D.12409
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12414
	movzbl	%al, %edx	# D.12414, D.12409
	movl	target_flags(%rip), %eax	# target_flags, target_flags.134
	andl	$33554432, %eax	#, D.12409
	testl	%eax, %eax	# D.12409
	je	.L374	#,
	.loc 1 1057 0 discriminator 1
	movl	$8, %eax	#, iftmp.133
	jmp	.L375	#
.L374:
	.loc 1 1057 0 discriminator 2
	movl	$4, %eax	#, iftmp.133
.L375:
	.loc 1 1057 0 discriminator 3
	addl	%edx, %eax	# D.12409, D.12409
	subl	$1, %eax	#, D.12409
	movl	target_flags(%rip), %edx	# target_flags, target_flags.136
	andl	$33554432, %edx	#, D.12409
	testl	%edx, %edx	# D.12409
	je	.L376	#,
	.loc 1 1057 0 discriminator 1
	movl	$8, %ebx	#, iftmp.135
	jmp	.L377	#
.L376:
	.loc 1 1057 0 discriminator 2
	movl	$4, %ebx	#, iftmp.135
.L377:
	.loc 1 1057 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.135
.L365:
	.loc 1 1055 0 is_stmt 1
	movl	-192(%rbp), %edx	# first_regno, tmp508
	addl	%edx, %eax	# tmp508, tmp507
	movl	%eax, -188(%rbp)	# tmp507, last_regno
	.loc 1 1060 0
	movl	-192(%rbp), %eax	# first_regno, tmp509
	movl	%eax, -216(%rbp)	# tmp509, i
	jmp	.L378	#
.L379:
	.loc 1 1061 0 discriminator 2
	movl	-216(%rbp), %eax	# i, i.137
	movl	$1, %edx	#, tmp510
	movl	%eax, %ecx	# i.137, tmp594
	salq	%cl, %rdx	# tmp594, D.12410
	movq	pending_dead_regs(%rip), %rax	# pending_dead_regs, pending_dead_regs.138
	orq	%rdx, %rax	# D.12410, pending_dead_regs.139
	movq	%rax, pending_dead_regs(%rip)	# pending_dead_regs.139, pending_dead_regs
	.loc 1 1060 0 discriminator 2
	addl	$1, -216(%rbp)	#, i
.L378:
	.loc 1 1060 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp511
	cmpl	-188(%rbp), %eax	# last_regno, tmp511
	jb	.L379	#,
.L356:
.LBE17:
	.loc 1 1049 0 is_stmt 1
	movq	-120(%rbp), %rax	# link, tmp512
	movq	16(%rax), %rax	# link_25->fld[1].rtx, tmp513
	movq	%rax, -120(%rbp)	# tmp513, link
.L355:
	.loc 1 1049 0 is_stmt 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, link
	jne	.L380	#,
	.loc 1 1064 0 is_stmt 1
	movq	-112(%rbp), %rax	# real_insn, tmp514
	movq	32(%rax), %rax	# real_insn_27->fld[3].rtx, D.12413
	movl	$0, %edx	#,
	movl	$update_live_status, %esi	#,
	movq	%rax, %rdi	# D.12413,
	call	note_stores	#
	.loc 1 1068 0
	movq	-112(%rbp), %rax	# real_insn, tmp515
	movq	56(%rax), %rax	# real_insn_27->fld[6].rtx, tmp516
	movq	%rax, -120(%rbp)	# tmp516, link
	jmp	.L381	#
.L406:
	.loc 1 1069 0
	movq	-120(%rbp), %rax	# link, tmp517
	movzbl	2(%rax), %eax	# link_26->mode, D.12414
	cmpb	$10, %al	#, D.12414
	jne	.L382	#,
	.loc 1 1070 0
	movq	-120(%rbp), %rax	# link, tmp518
	movq	8(%rax), %rax	# link_26->fld[0].rtx, D.12413
	movzwl	(%rax), %eax	# _350->code, D.12424
	cmpw	$61, %ax	#, D.12424
	jne	.L382	#,
	.loc 1 1071 0
	movq	-120(%rbp), %rax	# link, tmp519
	movq	8(%rax), %rax	# link_26->fld[0].rtx, D.12413
	movl	8(%rax), %eax	# _352->fld[0].rtuint, D.12418
	cmpl	$52, %eax	#, D.12418
	ja	.L382	#,
.LBB18:
	.loc 1 1073 0
	movq	-120(%rbp), %rax	# link, tmp520
	movq	8(%rax), %rax	# link_26->fld[0].rtx, D.12413
	movl	8(%rax), %eax	# _354->fld[0].rtuint, tmp521
	movl	%eax, -184(%rbp)	# tmp521, first_regno
	.loc 1 1076 0
	cmpl	$7, -184(%rbp)	#, first_regno
	jbe	.L383	#,
	.loc 1 1076 0 is_stmt 0 discriminator 1
	cmpl	$15, -184(%rbp)	#, first_regno
	jbe	.L384	#,
.L383:
	.loc 1 1076 0 discriminator 2
	cmpl	$20, -184(%rbp)	#, first_regno
	jbe	.L385	#,
	.loc 1 1076 0 discriminator 1
	cmpl	$28, -184(%rbp)	#, first_regno
	jbe	.L384	#,
.L385:
	.loc 1 1076 0 discriminator 2
	cmpl	$44, -184(%rbp)	#, first_regno
	jbe	.L386	#,
	.loc 1 1076 0 discriminator 1
	cmpl	$52, -184(%rbp)	#, first_regno
	jbe	.L384	#,
.L386:
	.loc 1 1076 0 discriminator 2
	cmpl	$28, -184(%rbp)	#, first_regno
	jbe	.L387	#,
	.loc 1 1076 0 discriminator 1
	cmpl	$36, -184(%rbp)	#, first_regno
	ja	.L387	#,
.L384:
	movq	-120(%rbp), %rax	# link, tmp522
	movq	8(%rax), %rax	# link_26->fld[0].rtx, D.12413
	movzbl	2(%rax), %eax	# _389->mode, D.12414
	movzbl	%al, %eax	# D.12414, D.12409
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12423
	cmpl	$5, %eax	#, D.12423
	je	.L388	#,
	.loc 1 1076 0 discriminator 4
	movq	-120(%rbp), %rax	# link, tmp524
	movq	8(%rax), %rax	# link_26->fld[0].rtx, D.12413
	movzbl	2(%rax), %eax	# _393->mode, D.12414
	movzbl	%al, %eax	# D.12414, D.12409
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.12423
	cmpl	$6, %eax	#, D.12423
	jne	.L389	#,
.L388:
	.loc 1 1076 0 discriminator 3
	movl	$2, %eax	#, iftmp.141
	jmp	.L391	#
.L389:
	.loc 1 1076 0 discriminator 1
	movl	$1, %eax	#, iftmp.141
	jmp	.L391	#
.L387:
	.loc 1 1076 0 discriminator 2
	movq	-120(%rbp), %rax	# link, tmp526
	movq	8(%rax), %rax	# link_26->fld[0].rtx, D.12413
	movzbl	2(%rax), %eax	# _356->mode, D.12414
	cmpb	$18, %al	#, D.12414
	jne	.L392	#,
	.loc 1 1076 0 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.144
	andl	$33554432, %eax	#, D.12409
	testl	%eax, %eax	# D.12409
	je	.L393	#,
	.loc 1 1076 0 discriminator 8
	movl	$2, %eax	#, iftmp.143
	jmp	.L391	#
.L393:
	.loc 1 1076 0 discriminator 9
	movl	$3, %eax	#, iftmp.143
	jmp	.L391	#
.L392:
	.loc 1 1076 0 discriminator 7
	movq	-120(%rbp), %rax	# link, tmp527
	movq	8(%rax), %rax	# link_26->fld[0].rtx, D.12413
	movzbl	2(%rax), %eax	# _363->mode, D.12414
	cmpb	$24, %al	#, D.12414
	jne	.L396	#,
	.loc 1 1076 0 discriminator 10
	movl	target_flags(%rip), %eax	# target_flags, target_flags.147
	andl	$33554432, %eax	#, D.12409
	testl	%eax, %eax	# D.12409
	je	.L397	#,
	.loc 1 1076 0 discriminator 12
	movl	$4, %eax	#, iftmp.146
	jmp	.L391	#
.L397:
	.loc 1 1076 0 discriminator 13
	movl	$6, %eax	#, iftmp.146
	jmp	.L391	#
.L396:
	.loc 1 1076 0 discriminator 11
	movq	-120(%rbp), %rax	# link, tmp528
	movq	8(%rax), %rax	# link_26->fld[0].rtx, D.12413
	movzbl	2(%rax), %eax	# _370->mode, D.12414
	movzbl	%al, %eax	# D.12414, D.12409
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.12414
	movzbl	%al, %edx	# D.12414, D.12409
	movl	target_flags(%rip), %eax	# target_flags, target_flags.149
	andl	$33554432, %eax	#, D.12409
	testl	%eax, %eax	# D.12409
	je	.L400	#,
	.loc 1 1076 0 discriminator 1
	movl	$8, %eax	#, iftmp.148
	jmp	.L401	#
.L400:
	.loc 1 1076 0 discriminator 2
	movl	$4, %eax	#, iftmp.148
.L401:
	.loc 1 1076 0 discriminator 3
	addl	%edx, %eax	# D.12409, D.12409
	subl	$1, %eax	#, D.12409
	movl	target_flags(%rip), %edx	# target_flags, target_flags.151
	andl	$33554432, %edx	#, D.12409
	testl	%edx, %edx	# D.12409
	je	.L402	#,
	.loc 1 1076 0 discriminator 1
	movl	$8, %ebx	#, iftmp.150
	jmp	.L403	#
.L402:
	.loc 1 1076 0 discriminator 2
	movl	$4, %ebx	#, iftmp.150
.L403:
	.loc 1 1076 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.150
.L391:
	.loc 1 1074 0 is_stmt 1
	movl	-184(%rbp), %edx	# first_regno, tmp535
	addl	%edx, %eax	# tmp535, tmp534
	movl	%eax, -180(%rbp)	# tmp534, last_regno
	.loc 1 1079 0
	movl	-184(%rbp), %eax	# first_regno, tmp536
	movl	%eax, -216(%rbp)	# tmp536, i
	jmp	.L404	#
.L405:
	.loc 1 1080 0 discriminator 2
	movl	-216(%rbp), %eax	# i, i.152
	movl	$1, %edx	#, tmp537
	movl	%eax, %ecx	# i.152, tmp597
	salq	%cl, %rdx	# tmp597, D.12410
	movq	%rdx, %rax	# D.12410, D.12410
	notq	%rax	# D.12410
	movq	%rax, %rdx	# D.12410, D.12410
	movq	current_live_regs(%rip), %rax	# current_live_regs, current_live_regs.153
	andq	%rdx, %rax	# D.12410, current_live_regs.154
	movq	%rax, current_live_regs(%rip)	# current_live_regs.154, current_live_regs
	.loc 1 1079 0 discriminator 2
	addl	$1, -216(%rbp)	#, i
.L404:
	.loc 1 1079 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp538
	cmpl	-180(%rbp), %eax	# last_regno, tmp538
	jb	.L405	#,
.L382:
.LBE18:
	.loc 1 1068 0 is_stmt 1
	movq	-120(%rbp), %rax	# link, tmp539
	movq	16(%rax), %rax	# link_26->fld[1].rtx, tmp540
	movq	%rax, -120(%rbp)	# tmp540, link
.L381:
	.loc 1 1068 0 is_stmt 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, link
	jne	.L406	#,
	.loc 1 1043 0 is_stmt 1
	jmp	.L346	#
.L354:
	.loc 1 1084 0
	movq	-112(%rbp), %rax	# real_insn, tmp541
	movzwl	(%rax), %eax	# real_insn_27->code, D.12424
	cmpw	$36, %ax	#, D.12424
	jne	.L407	#,
	.loc 1 1088 0
	movq	pending_dead_regs(%rip), %rax	# pending_dead_regs, pending_dead_regs.155
	notq	%rax	# D.12410
	movq	%rax, %rdx	# D.12410, D.12410
	movq	current_live_regs(%rip), %rax	# current_live_regs, current_live_regs.156
	andq	%rdx, %rax	# D.12410, current_live_regs.157
	movq	%rax, current_live_regs(%rip)	# current_live_regs.157, current_live_regs
	.loc 1 1089 0
	movq	$0, pending_dead_regs(%rip)	#, pending_dead_regs
	jmp	.L346	#
.L407:
	.loc 1 1095 0
	movq	-112(%rbp), %rax	# real_insn, tmp542
	movzwl	(%rax), %eax	# real_insn_27->code, D.12424
	cmpw	$37, %ax	#, D.12424
	jne	.L346	#,
	.loc 1 1096 0
	movq	-112(%rbp), %rax	# real_insn, tmp543
	movl	40(%rax), %eax	# real_insn_27->fld[4].rtint, D.12409
	cmpl	$-89, %eax	#, D.12409
	jne	.L346	#,
	.loc 1 1097 0
	movq	start_of_epilogue_needs+8(%rip), %rdx	# start_of_epilogue_needs.regs, D.12410
	movq	current_live_regs(%rip), %rax	# current_live_regs, current_live_regs.158
	orq	%rdx, %rax	# D.12410, current_live_regs.159
	movq	%rax, current_live_regs(%rip)	# current_live_regs.159, current_live_regs
.L346:
.LBE16:
	.loc 1 1006 0
	movq	-160(%rbp), %rax	# insn, tmp544
	movq	%rax, %rdi	# tmp544,
	call	next_insn_no_annul	#
	movq	%rax, -160(%rbp)	# tmp545, insn
.L344:
	.loc 1 1005 0 discriminator 1
	movq	-160(%rbp), %rax	# insn, tmp546
	cmpq	-144(%rbp), %rax	# stop_insn, tmp546
	jne	.L408	#,
	.loc 1 1100 0
	movq	current_live_regs(%rip), %rdx	# current_live_regs, current_live_regs.160
	movq	-248(%rbp), %rax	# res, tmp547
	movq	%rdx, 8(%rax)	# current_live_regs.160, res_57(D)->regs
	.loc 1 1101 0
	cmpq	$0, -168(%rbp)	#, tinfo
	je	.L409	#,
	.loc 1 1103 0
	movq	-168(%rbp), %rax	# tinfo, tmp548
	movl	-220(%rbp), %edx	# b, tmp549
	movl	%edx, 24(%rax)	# tmp549, tinfo_8->block
	.loc 1 1104 0
	movq	bb_ticks(%rip), %rax	# bb_ticks, bb_ticks.161
	movl	-220(%rbp), %edx	# b, tmp550
	movslq	%edx, %rdx	# tmp550, D.12410
	salq	$2, %rdx	#, D.12410
	addq	%rdx, %rax	# D.12410, D.12416
	movl	(%rax), %edx	# *_414, D.12409
	movq	-168(%rbp), %rax	# tinfo, tmp551
	movl	%edx, 28(%rax)	# D.12409, tinfo_8->bb_tick
.LBE12:
	jmp	.L410	#
.L409:
	jmp	.L410	#
.L303:
	.loc 1 1110 0
	movq	-248(%rbp), %rax	# res, tmp552
	movq	$-1, 8(%rax)	#, res_57(D)->regs
.L410:
	.loc 1 1112 0
	movb	$0, -61(%rbp)	#, set.cc
	movzbl	-61(%rbp), %eax	# set.cc, D.12408
	movb	%al, -62(%rbp)	# D.12408, set.volatil
	movzbl	-62(%rbp), %eax	# set.volatil, D.12408
	movb	%al, -63(%rbp)	# D.12408, set.unch_memory
	movzbl	-63(%rbp), %eax	# set.unch_memory, D.12408
	movb	%al, -64(%rbp)	# D.12408, set.memory
	movq	$0, -56(%rbp)	#, set.regs
	.loc 1 1113 0
	movb	$0, -45(%rbp)	#, needed.cc
	movzbl	-45(%rbp), %eax	# needed.cc, D.12408
	movb	%al, -46(%rbp)	# D.12408, needed.volatil
	movzbl	-46(%rbp), %eax	# needed.volatil, D.12408
	movb	%al, -47(%rbp)	# D.12408, needed.unch_memory
	movzbl	-47(%rbp), %eax	# needed.unch_memory, D.12408
	movb	%al, -48(%rbp)	# D.12408, needed.memory
	movq	$0, -40(%rbp)	#, needed.regs
	.loc 1 1115 0
	movl	-64(%rbp), %r8d	# set, tmp553
	movq	-56(%rbp), %rcx	# set, tmp554
	leaq	-176(%rbp), %r10	#, tmp555
	movq	-248(%rbp), %rsi	# res, tmp556
	movq	-240(%rbp), %rdi	# target, tmp557
	movq	-48(%rbp), %rax	# needed, tmp558
	movq	-40(%rbp), %rdx	# needed,
	movq	%rax, (%rsp)	# tmp558,
	movq	%rdx, 8(%rsp)	#,
	movq	%rcx, %r9	# tmp554,
	movl	$0, %ecx	#,
	movq	%r10, %rdx	# tmp555,
	call	find_dead_or_set_registers	#
	movq	%rax, -104(%rbp)	# tmp559, jump_insn
	.loc 1 1123 0
	cmpq	$0, -104(%rbp)	#, jump_insn
	je	.L411	#,
.LBB19:
	.loc 1 1126 0
	movq	-104(%rbp), %rax	# jump_insn, tmp560
	movq	%rax, %rdi	# tmp560,
	call	next_active_insn	#
	movq	%rax, -80(%rbp)	# tmp561, stop_insn
	.loc 1 1128 0
	movq	-176(%rbp), %rax	# jump_target, jump_target.162
	movq	%rax, %rdi	# jump_target.162,
	call	next_active_insn	#
	movq	%rax, %rcx	#, D.12413
	leaq	-32(%rbp), %rdx	#, tmp562
	movq	-232(%rbp), %rax	# insns, tmp563
	movq	%rcx, %rsi	# D.12413,
	movq	%rax, %rdi	# tmp563,
	call	mark_target_live_regs	#
	.loc 1 1130 0
	movb	$0, -61(%rbp)	#, set.cc
	movzbl	-61(%rbp), %eax	# set.cc, D.12408
	movb	%al, -62(%rbp)	# D.12408, set.volatil
	movzbl	-62(%rbp), %eax	# set.volatil, D.12408
	movb	%al, -63(%rbp)	# D.12408, set.unch_memory
	movzbl	-63(%rbp), %eax	# set.unch_memory, D.12408
	movb	%al, -64(%rbp)	# D.12408, set.memory
	movq	$0, -56(%rbp)	#, set.regs
	.loc 1 1131 0
	movb	$0, -45(%rbp)	#, needed.cc
	movzbl	-45(%rbp), %eax	# needed.cc, D.12408
	movb	%al, -46(%rbp)	# D.12408, needed.volatil
	movzbl	-46(%rbp), %eax	# needed.volatil, D.12408
	movb	%al, -47(%rbp)	# D.12408, needed.unch_memory
	movzbl	-47(%rbp), %eax	# needed.unch_memory, D.12408
	movb	%al, -48(%rbp)	# D.12408, needed.memory
	movq	$0, -40(%rbp)	#, needed.regs
	.loc 1 1134 0
	movq	-240(%rbp), %rax	# target, tmp564
	movq	%rax, -160(%rbp)	# tmp564, insn
	jmp	.L412	#
.L413:
	.loc 1 1136 0 discriminator 2
	leaq	-48(%rbp), %rcx	#, tmp565
	movq	-160(%rbp), %rax	# insn, tmp566
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp565,
	movq	%rax, %rdi	# tmp566,
	call	mark_referenced_resources	#
	.loc 1 1138 0 discriminator 2
	movq	-40(%rbp), %rax	# needed.regs, tmp567
	movq	%rax, -72(%rbp)	# tmp567, scratch
	.loc 1 1139 0 discriminator 2
	movq	-56(%rbp), %rax	# set.regs, D.12410
	notq	%rax	# D.12410
	andq	%rax, -72(%rbp)	# D.12410, scratch
	.loc 1 1140 0 discriminator 2
	movq	-24(%rbp), %rax	# new_resources.regs, D.12410
	orq	-72(%rbp), %rax	# scratch, D.12410
	movq	%rax, -24(%rbp)	# D.12410, new_resources.regs
	.loc 1 1142 0 discriminator 2
	leaq	-64(%rbp), %rsi	#, tmp568
	movq	-160(%rbp), %rax	# insn, tmp569
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp569,
	call	mark_set_resources	#
	.loc 1 1134 0 discriminator 2
	movq	-160(%rbp), %rax	# insn, tmp570
	movq	%rax, %rdi	# tmp570,
	call	next_active_insn	#
	movq	%rax, -160(%rbp)	# tmp571, insn
.L412:
	.loc 1 1134 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# insn, tmp572
	cmpq	-80(%rbp), %rax	# stop_insn, tmp572
	jne	.L413	#,
	.loc 1 1145 0 is_stmt 1
	movq	-248(%rbp), %rax	# res, tmp573
	movq	8(%rax), %rdx	# res_57(D)->regs, D.12410
	movq	-24(%rbp), %rax	# new_resources.regs, D.12410
	orq	%rax, %rdx	# D.12410, D.12410
	movq	-248(%rbp), %rax	# res, tmp574
	movq	%rdx, 8(%rax)	# D.12410, res_57(D)->regs
.L411:
.LBE19:
	.loc 1 1148 0
	cmpq	$0, -168(%rbp)	#, tinfo
	je	.L292	#,
	.loc 1 1150 0
	movq	-248(%rbp), %rax	# res, tmp575
	movq	8(%rax), %rdx	# res_57(D)->regs, D.12410
	movq	-168(%rbp), %rax	# tinfo, tmp576
	movq	%rdx, 16(%rax)	# D.12410, tinfo_8->live_regs
.L292:
	.loc 1 1152 0
	addq	$264, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mark_target_live_regs, .-mark_target_live_regs
	.globl	init_resource_info
	.type	init_resource_info, @function
init_resource_info:
.LFB9:
	.loc 1 1160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# epilogue_insn, epilogue_insn
	.loc 1 1170 0
	movb	$0, end_of_function_needs+3(%rip)	#, end_of_function_needs.cc
	.loc 1 1171 0
	movb	$1, end_of_function_needs(%rip)	#, end_of_function_needs.memory
	.loc 1 1172 0
	movb	$0, end_of_function_needs+1(%rip)	#, end_of_function_needs.unch_memory
	.loc 1 1173 0
	movq	$0, end_of_function_needs+8(%rip)	#, end_of_function_needs.regs
	.loc 1 1175 0
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.163
	testl	%eax, %eax	# frame_pointer_needed.163
	je	.L417	#,
	.loc 1 1177 0
	movq	end_of_function_needs+8(%rip), %rax	# end_of_function_needs.regs, D.12426
	orq	$1048576, %rax	#, D.12426
	movq	%rax, end_of_function_needs+8(%rip)	# D.12426, end_of_function_needs.regs
	.loc 1 1179 0
	movq	end_of_function_needs+8(%rip), %rax	# end_of_function_needs.regs, D.12426
	orq	$64, %rax	#, D.12426
	movq	%rax, end_of_function_needs+8(%rip)	# D.12426, end_of_function_needs.regs
	.loc 1 1183 0
	movl	current_function_sp_is_unchanging(%rip), %eax	# current_function_sp_is_unchanging, current_function_sp_is_unchanging.164
	.loc 1 1182 0
	testl	%eax, %eax	# current_function_sp_is_unchanging.164
	je	.L419	#,
	.loc 1 1185 0
	movq	end_of_function_needs+8(%rip), %rax	# end_of_function_needs.regs, D.12426
	orb	$-128, %al	#, D.12426
	movq	%rax, end_of_function_needs+8(%rip)	# D.12426, end_of_function_needs.regs
	jmp	.L419	#
.L417:
	.loc 1 1188 0
	movq	end_of_function_needs+8(%rip), %rax	# end_of_function_needs.regs, D.12426
	orb	$-128, %al	#, D.12426
	movq	%rax, end_of_function_needs+8(%rip)	# D.12426, end_of_function_needs.regs
.L419:
	.loc 1 1190 0
	movq	cfun(%rip), %rax	# cfun, cfun.165
	movq	120(%rax), %rax	# cfun.165_13->return_rtx, D.12427
	testq	%rax, %rax	# D.12427
	je	.L420	#,
	.loc 1 1191 0
	movq	cfun(%rip), %rax	# cfun, cfun.166
	movq	120(%rax), %rax	# cfun.166_15->return_rtx, D.12427
	movl	$1, %edx	#,
	movl	$end_of_function_needs, %esi	#,
	movq	%rax, %rdi	# D.12427,
	call	mark_referenced_resources	#
.L420:
	.loc 1 1194 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L421	#
.L423:
	.loc 1 1195 0
	movl	-4(%rbp), %eax	# i, tmp82
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.12428
	testb	%al, %al	# D.12428
	je	.L422	#,
	.loc 1 1200 0
	movq	end_of_function_needs+8(%rip), %rdx	# end_of_function_needs.regs, D.12426
	movl	-4(%rbp), %eax	# i, tmp83
	movl	$1, %esi	#, tmp84
	movl	%eax, %ecx	# tmp83, tmp92
	salq	%cl, %rsi	# tmp92, D.12426
	movq	%rsi, %rax	# D.12426, D.12426
	orq	%rdx, %rax	# D.12426, D.12426
	movq	%rax, end_of_function_needs+8(%rip)	# D.12426, end_of_function_needs.regs
.L422:
	.loc 1 1194 0
	addl	$1, -4(%rbp)	#, i
.L421:
	.loc 1 1194 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, i
	jle	.L423	#,
	.loc 1 1219 0 is_stmt 1
	movq	end_of_function_needs(%rip), %rax	# end_of_function_needs, tmp85
	movq	end_of_function_needs+8(%rip), %rdx	# end_of_function_needs,
	movq	%rax, start_of_epilogue_needs(%rip)	# tmp85, start_of_epilogue_needs
	movq	%rdx, start_of_epilogue_needs+8(%rip)	#, start_of_epilogue_needs
	.loc 1 1221 0
	jmp	.L424	#
.L425:
	.loc 1 1222 0
	movq	-24(%rbp), %rax	# epilogue_insn, tmp86
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	$end_of_function_needs, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	mark_set_resources	#
.L424:
	.loc 1 1221 0 discriminator 1
	movq	-24(%rbp), %rax	# epilogue_insn, tmp87
	movq	%rax, %rdi	# tmp87,
	call	next_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp88, epilogue_insn
	cmpq	$0, -24(%rbp)	#, epilogue_insn
	jne	.L425	#,
	.loc 1 1227 0
	movl	$8, %esi	#,
	movl	$257, %edi	#,
	call	xcalloc	#
	.loc 1 1226 0
	movq	%rax, target_hash_table(%rip)	# target_hash_table.167, target_hash_table
	.loc 1 1228 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.168
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.12426,
	call	xcalloc	#
	movq	%rax, bb_ticks(%rip)	# bb_ticks.169, bb_ticks
	.loc 1 1229 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	init_resource_info, .-init_resource_info
	.globl	free_resource_info
	.type	free_resource_info, @function
free_resource_info:
.LFB10:
	.loc 1 1236 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1237 0
	movq	target_hash_table(%rip), %rax	# target_hash_table, target_hash_table.170
	testq	%rax, %rax	# target_hash_table.170
	je	.L427	#,
.LBB20:
	.loc 1 1241 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L428	#
.L431:
.LBB21:
	.loc 1 1243 0
	movq	target_hash_table(%rip), %rax	# target_hash_table, target_hash_table.171
	movl	-20(%rbp), %edx	# i, tmp67
	movslq	%edx, %rdx	# tmp67, D.12429
	salq	$3, %rdx	#, D.12429
	addq	%rdx, %rax	# D.12429, D.12430
	movq	(%rax), %rax	# *_8, tmp68
	movq	%rax, -16(%rbp)	# tmp68, ti
	.loc 1 1245 0
	jmp	.L429	#
.L430:
.LBB22:
	.loc 1 1247 0
	movq	-16(%rbp), %rax	# ti, tmp69
	movq	8(%rax), %rax	# ti_2->next, tmp70
	movq	%rax, -8(%rbp)	# tmp70, next
	.loc 1 1248 0
	movq	-16(%rbp), %rax	# ti, tmp71
	movq	%rax, %rdi	# tmp71,
	call	free	#
	.loc 1 1249 0
	movq	-8(%rbp), %rax	# next, tmp72
	movq	%rax, -16(%rbp)	# tmp72, ti
.L429:
.LBE22:
	.loc 1 1245 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, ti
	jne	.L430	#,
.LBE21:
	.loc 1 1241 0
	addl	$1, -20(%rbp)	#, i
.L428:
	.loc 1 1241 0 is_stmt 0 discriminator 1
	cmpl	$256, -20(%rbp)	#, i
	jle	.L431	#,
	.loc 1 1253 0 is_stmt 1
	movq	target_hash_table(%rip), %rax	# target_hash_table, target_hash_table.172
	movq	%rax, %rdi	# target_hash_table.172,
	call	free	#
	.loc 1 1254 0
	movq	$0, target_hash_table(%rip)	#, target_hash_table
.L427:
.LBE20:
	.loc 1 1257 0
	movq	bb_ticks(%rip), %rax	# bb_ticks, bb_ticks.173
	testq	%rax, %rax	# bb_ticks.173
	je	.L426	#,
	.loc 1 1259 0
	movq	bb_ticks(%rip), %rax	# bb_ticks, bb_ticks.174
	movq	%rax, %rdi	# bb_ticks.174,
	call	free	#
	.loc 1 1260 0
	movq	$0, bb_ticks(%rip)	#, bb_ticks
.L426:
	.loc 1 1262 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	free_resource_info, .-free_resource_info
	.globl	clear_hashed_info_for_insn
	.type	clear_hashed_info_for_insn, @function
clear_hashed_info_for_insn:
.LFB11:
	.loc 1 1269 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1272 0
	movq	target_hash_table(%rip), %rax	# target_hash_table, target_hash_table.175
	testq	%rax, %rax	# target_hash_table.175
	je	.L433	#,
	.loc 1 1274 0
	movq	target_hash_table(%rip), %rsi	# target_hash_table, target_hash_table.176
	movq	-24(%rbp), %rax	# insn, tmp68
	movl	8(%rax), %ecx	# insn_4(D)->fld[0].rtint, D.12431
	movslq	%ecx, %rax	# D.12431, tmp69
	imulq	$2139127681, %rax, %rax	#, tmp69, tmp70
	shrq	$32, %rax	#, tmp71
	movl	%eax, %edx	# tmp71, tmp72
	sarl	$7, %edx	#, tmp72
	movl	%ecx, %eax	# D.12431, tmp73
	sarl	$31, %eax	#, tmp73
	subl	%eax, %edx	# tmp73, D.12431
	movl	%edx, %eax	# D.12431, tmp74
	sall	$8, %eax	#, tmp75
	addl	%edx, %eax	# D.12431, tmp74
	subl	%eax, %ecx	# tmp74, D.12431
	movl	%ecx, %edx	# D.12431, D.12431
	movslq	%edx, %rax	# D.12431, D.12432
	salq	$3, %rax	#, D.12432
	addq	%rsi, %rax	# target_hash_table.176, D.12433
	movq	(%rax), %rax	# *_9, tmp76
	movq	%rax, -8(%rbp)	# tmp76, tinfo
	jmp	.L435	#
.L438:
	.loc 1 1276 0
	movq	-8(%rbp), %rax	# tinfo, tmp77
	movl	(%rax), %edx	# tinfo_1->uid, D.12431
	movq	-24(%rbp), %rax	# insn, tmp78
	movl	8(%rax), %eax	# insn_4(D)->fld[0].rtint, D.12431
	cmpl	%eax, %edx	# D.12431, D.12431
	jne	.L436	#,
	.loc 1 1277 0
	jmp	.L437	#
.L436:
	.loc 1 1275 0
	movq	-8(%rbp), %rax	# tinfo, tmp79
	movq	8(%rax), %rax	# tinfo_1->next, tmp80
	movq	%rax, -8(%rbp)	# tmp80, tinfo
.L435:
	.loc 1 1274 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tinfo
	jne	.L438	#,
.L437:
	.loc 1 1279 0
	cmpq	$0, -8(%rbp)	#, tinfo
	je	.L433	#,
	.loc 1 1280 0
	movq	-8(%rbp), %rax	# tinfo, tmp81
	movl	$-1, 24(%rax)	#, tinfo_1->block
.L433:
	.loc 1 1282 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	clear_hashed_info_for_insn, .-clear_hashed_info_for_insn
	.globl	incr_ticks_for_insn
	.type	incr_ticks_for_insn, @function
incr_ticks_for_insn:
.LFB12:
	.loc 1 1289 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 1290 0
	movq	compiler_params(%rip), %rax	# compiler_params, compiler_params.177
	addq	$48, %rax	#, D.12434
	movl	8(%rax), %edx	# _2->value, D.12435
	movq	-24(%rbp), %rax	# insn, tmp68
	movl	%edx, %esi	# D.12435,
	movq	%rax, %rdi	# tmp68,
	call	find_basic_block	#
	movl	%eax, -4(%rbp)	# tmp69, b
	.loc 1 1292 0
	cmpl	$-1, -4(%rbp)	#, b
	je	.L439	#,
	.loc 1 1293 0
	movq	bb_ticks(%rip), %rax	# bb_ticks, bb_ticks.178
	movl	-4(%rbp), %edx	# b, tmp70
	movslq	%edx, %rdx	# tmp70, D.12436
	salq	$2, %rdx	#, D.12436
	addq	%rdx, %rax	# D.12436, D.12437
	movl	(%rax), %edx	# *_9, D.12435
	addl	$1, %edx	#, D.12435
	movl	%edx, (%rax)	# D.12435, *_9
.L439:
	.loc 1 1294 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	incr_ticks_for_insn, .-incr_ticks_for_insn
	.globl	mark_end_of_function_resources
	.type	mark_end_of_function_resources, @function
mark_end_of_function_resources:
.LFB13:
	.loc 1 1302 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# trial, trial
	movl	%esi, -12(%rbp)	# include_delayed_effects, include_delayed_effects
	.loc 1 1303 0
	movl	-12(%rbp), %edx	# include_delayed_effects, tmp59
	movq	-8(%rbp), %rax	# trial, tmp60
	movl	$end_of_function_needs, %esi	#,
	movq	%rax, %rdi	# tmp60,
	call	mark_referenced_resources	#
	.loc 1 1305 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	mark_end_of_function_resources, .-mark_end_of_function_resources
	.section	.rodata
	.align 16
	.type	__FUNCTION__.10744, @object
	.size	__FUNCTION__.10744, 26
__FUNCTION__.10744:
	.string	"mark_referenced_resources"
	.align 16
	.type	__FUNCTION__.10883, @object
	.size	__FUNCTION__.10883, 19
__FUNCTION__.10883:
	.string	"mark_set_resources"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "i386.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "machmode.h"
	.file 7 "bitmap.h"
	.file 8 "basic-block.h"
	.file 9 "hard-reg-set.h"
	.file 10 "varray.h"
	.file 11 "regs.h"
	.file 12 "function.h"
	.file 13 "resource.h"
	.file 14 "params.h"
	.file 15 "flags.h"
	.file 16 "output.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2426
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF629
	.byte	0x1
	.long	.LASF630
	.long	.LASF631
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
	.long	0xb37
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
	.long	0xb47
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
	.long	.LASF632
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF63
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
	.uleb128 0x3
	.byte	0x8
	.long	0x2aa
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF60
	.uleb128 0x12
	.long	0x2aa
	.long	0x2c1
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c7
	.uleb128 0x14
	.long	0x2aa
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF61
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF62
	.uleb128 0x3
	.byte	0x8
	.long	0x139
	.uleb128 0x15
	.long	.LASF64
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.long	0x455
	.uleb128 0xd
	.long	.LASF65
	.sleb128 0
	.uleb128 0xd
	.long	.LASF66
	.sleb128 1
	.uleb128 0xd
	.long	.LASF67
	.sleb128 2
	.uleb128 0xd
	.long	.LASF68
	.sleb128 3
	.uleb128 0xd
	.long	.LASF69
	.sleb128 4
	.uleb128 0xd
	.long	.LASF70
	.sleb128 5
	.uleb128 0xd
	.long	.LASF71
	.sleb128 6
	.uleb128 0xd
	.long	.LASF72
	.sleb128 7
	.uleb128 0xd
	.long	.LASF73
	.sleb128 8
	.uleb128 0xd
	.long	.LASF74
	.sleb128 9
	.uleb128 0xd
	.long	.LASF75
	.sleb128 10
	.uleb128 0xd
	.long	.LASF76
	.sleb128 11
	.uleb128 0xd
	.long	.LASF77
	.sleb128 12
	.uleb128 0xd
	.long	.LASF78
	.sleb128 13
	.uleb128 0xd
	.long	.LASF79
	.sleb128 14
	.uleb128 0xd
	.long	.LASF80
	.sleb128 15
	.uleb128 0xd
	.long	.LASF81
	.sleb128 16
	.uleb128 0xd
	.long	.LASF82
	.sleb128 17
	.uleb128 0xd
	.long	.LASF83
	.sleb128 18
	.uleb128 0xd
	.long	.LASF84
	.sleb128 19
	.uleb128 0xd
	.long	.LASF85
	.sleb128 20
	.uleb128 0xd
	.long	.LASF86
	.sleb128 21
	.uleb128 0xd
	.long	.LASF87
	.sleb128 22
	.uleb128 0xd
	.long	.LASF88
	.sleb128 23
	.uleb128 0xd
	.long	.LASF89
	.sleb128 24
	.uleb128 0xd
	.long	.LASF90
	.sleb128 25
	.uleb128 0xd
	.long	.LASF91
	.sleb128 26
	.uleb128 0xd
	.long	.LASF92
	.sleb128 27
	.uleb128 0xd
	.long	.LASF93
	.sleb128 28
	.uleb128 0xd
	.long	.LASF94
	.sleb128 29
	.uleb128 0xd
	.long	.LASF95
	.sleb128 30
	.uleb128 0xd
	.long	.LASF96
	.sleb128 31
	.uleb128 0xd
	.long	.LASF97
	.sleb128 32
	.uleb128 0xd
	.long	.LASF98
	.sleb128 33
	.uleb128 0xd
	.long	.LASF99
	.sleb128 34
	.uleb128 0xd
	.long	.LASF100
	.sleb128 35
	.uleb128 0xd
	.long	.LASF101
	.sleb128 36
	.uleb128 0xd
	.long	.LASF102
	.sleb128 37
	.uleb128 0xd
	.long	.LASF103
	.sleb128 38
	.uleb128 0xd
	.long	.LASF104
	.sleb128 39
	.uleb128 0xd
	.long	.LASF105
	.sleb128 40
	.uleb128 0xd
	.long	.LASF106
	.sleb128 41
	.uleb128 0xd
	.long	.LASF107
	.sleb128 42
	.uleb128 0xd
	.long	.LASF108
	.sleb128 43
	.uleb128 0xd
	.long	.LASF109
	.sleb128 44
	.uleb128 0xd
	.long	.LASF110
	.sleb128 45
	.uleb128 0xd
	.long	.LASF111
	.sleb128 46
	.uleb128 0xd
	.long	.LASF112
	.sleb128 47
	.uleb128 0xd
	.long	.LASF113
	.sleb128 48
	.uleb128 0xd
	.long	.LASF114
	.sleb128 49
	.uleb128 0xd
	.long	.LASF115
	.sleb128 50
	.uleb128 0xd
	.long	.LASF116
	.sleb128 51
	.uleb128 0xd
	.long	.LASF117
	.sleb128 52
	.uleb128 0xd
	.long	.LASF118
	.sleb128 53
	.uleb128 0xd
	.long	.LASF119
	.sleb128 54
	.uleb128 0xd
	.long	.LASF120
	.sleb128 55
	.uleb128 0xd
	.long	.LASF121
	.sleb128 56
	.uleb128 0xd
	.long	.LASF122
	.sleb128 57
	.uleb128 0xd
	.long	.LASF123
	.sleb128 58
	.uleb128 0xd
	.long	.LASF124
	.sleb128 59
	.byte	0
	.uleb128 0x15
	.long	.LASF125
	.byte	0x4
	.byte	0x6
	.byte	0x2c
	.long	0x49e
	.uleb128 0xd
	.long	.LASF126
	.sleb128 0
	.uleb128 0xd
	.long	.LASF127
	.sleb128 1
	.uleb128 0xd
	.long	.LASF128
	.sleb128 2
	.uleb128 0xd
	.long	.LASF129
	.sleb128 3
	.uleb128 0xd
	.long	.LASF130
	.sleb128 4
	.uleb128 0xd
	.long	.LASF131
	.sleb128 5
	.uleb128 0xd
	.long	.LASF132
	.sleb128 6
	.uleb128 0xd
	.long	.LASF133
	.sleb128 7
	.uleb128 0xd
	.long	.LASF134
	.sleb128 8
	.uleb128 0xd
	.long	.LASF135
	.sleb128 9
	.byte	0
	.uleb128 0x15
	.long	.LASF136
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x89a
	.uleb128 0xd
	.long	.LASF137
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF138
	.sleb128 2
	.uleb128 0xd
	.long	.LASF139
	.sleb128 3
	.uleb128 0xd
	.long	.LASF140
	.sleb128 4
	.uleb128 0xd
	.long	.LASF141
	.sleb128 5
	.uleb128 0xd
	.long	.LASF142
	.sleb128 6
	.uleb128 0xd
	.long	.LASF143
	.sleb128 7
	.uleb128 0xd
	.long	.LASF144
	.sleb128 8
	.uleb128 0xd
	.long	.LASF145
	.sleb128 9
	.uleb128 0xd
	.long	.LASF146
	.sleb128 10
	.uleb128 0xd
	.long	.LASF147
	.sleb128 11
	.uleb128 0xd
	.long	.LASF148
	.sleb128 12
	.uleb128 0xd
	.long	.LASF149
	.sleb128 13
	.uleb128 0xd
	.long	.LASF150
	.sleb128 14
	.uleb128 0xd
	.long	.LASF151
	.sleb128 15
	.uleb128 0xd
	.long	.LASF152
	.sleb128 16
	.uleb128 0xd
	.long	.LASF153
	.sleb128 17
	.uleb128 0xd
	.long	.LASF154
	.sleb128 18
	.uleb128 0xd
	.long	.LASF155
	.sleb128 19
	.uleb128 0xd
	.long	.LASF156
	.sleb128 20
	.uleb128 0xd
	.long	.LASF157
	.sleb128 21
	.uleb128 0xd
	.long	.LASF158
	.sleb128 22
	.uleb128 0xd
	.long	.LASF159
	.sleb128 23
	.uleb128 0xd
	.long	.LASF160
	.sleb128 24
	.uleb128 0xd
	.long	.LASF161
	.sleb128 25
	.uleb128 0xd
	.long	.LASF162
	.sleb128 26
	.uleb128 0xd
	.long	.LASF163
	.sleb128 27
	.uleb128 0xd
	.long	.LASF164
	.sleb128 28
	.uleb128 0xd
	.long	.LASF165
	.sleb128 29
	.uleb128 0xd
	.long	.LASF166
	.sleb128 30
	.uleb128 0xd
	.long	.LASF167
	.sleb128 31
	.uleb128 0xd
	.long	.LASF168
	.sleb128 32
	.uleb128 0xd
	.long	.LASF169
	.sleb128 33
	.uleb128 0xd
	.long	.LASF170
	.sleb128 34
	.uleb128 0xd
	.long	.LASF171
	.sleb128 35
	.uleb128 0xd
	.long	.LASF172
	.sleb128 36
	.uleb128 0xd
	.long	.LASF173
	.sleb128 37
	.uleb128 0xd
	.long	.LASF174
	.sleb128 38
	.uleb128 0xd
	.long	.LASF175
	.sleb128 39
	.uleb128 0xd
	.long	.LASF176
	.sleb128 40
	.uleb128 0xd
	.long	.LASF177
	.sleb128 41
	.uleb128 0xd
	.long	.LASF178
	.sleb128 42
	.uleb128 0xd
	.long	.LASF179
	.sleb128 43
	.uleb128 0xd
	.long	.LASF180
	.sleb128 44
	.uleb128 0xd
	.long	.LASF181
	.sleb128 45
	.uleb128 0xd
	.long	.LASF182
	.sleb128 46
	.uleb128 0x16
	.string	"SET"
	.sleb128 47
	.uleb128 0x16
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF183
	.sleb128 49
	.uleb128 0xd
	.long	.LASF184
	.sleb128 50
	.uleb128 0xd
	.long	.LASF185
	.sleb128 51
	.uleb128 0xd
	.long	.LASF186
	.sleb128 52
	.uleb128 0xd
	.long	.LASF187
	.sleb128 53
	.uleb128 0xd
	.long	.LASF188
	.sleb128 54
	.uleb128 0xd
	.long	.LASF189
	.sleb128 55
	.uleb128 0xd
	.long	.LASF190
	.sleb128 56
	.uleb128 0xd
	.long	.LASF191
	.sleb128 57
	.uleb128 0xd
	.long	.LASF192
	.sleb128 58
	.uleb128 0x16
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF193
	.sleb128 60
	.uleb128 0x16
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF194
	.sleb128 62
	.uleb128 0xd
	.long	.LASF195
	.sleb128 63
	.uleb128 0xd
	.long	.LASF196
	.sleb128 64
	.uleb128 0xd
	.long	.LASF197
	.sleb128 65
	.uleb128 0x16
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF198
	.sleb128 67
	.uleb128 0xd
	.long	.LASF199
	.sleb128 68
	.uleb128 0x16
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF200
	.sleb128 70
	.uleb128 0xd
	.long	.LASF201
	.sleb128 71
	.uleb128 0xd
	.long	.LASF202
	.sleb128 72
	.uleb128 0xd
	.long	.LASF203
	.sleb128 73
	.uleb128 0xd
	.long	.LASF204
	.sleb128 74
	.uleb128 0xd
	.long	.LASF205
	.sleb128 75
	.uleb128 0xd
	.long	.LASF206
	.sleb128 76
	.uleb128 0x16
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF207
	.sleb128 78
	.uleb128 0x16
	.string	"DIV"
	.sleb128 79
	.uleb128 0x16
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF208
	.sleb128 81
	.uleb128 0xd
	.long	.LASF209
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
	.long	.LASF210
	.sleb128 87
	.uleb128 0xd
	.long	.LASF211
	.sleb128 88
	.uleb128 0xd
	.long	.LASF212
	.sleb128 89
	.uleb128 0xd
	.long	.LASF213
	.sleb128 90
	.uleb128 0xd
	.long	.LASF214
	.sleb128 91
	.uleb128 0xd
	.long	.LASF215
	.sleb128 92
	.uleb128 0xd
	.long	.LASF216
	.sleb128 93
	.uleb128 0xd
	.long	.LASF217
	.sleb128 94
	.uleb128 0xd
	.long	.LASF218
	.sleb128 95
	.uleb128 0xd
	.long	.LASF219
	.sleb128 96
	.uleb128 0xd
	.long	.LASF220
	.sleb128 97
	.uleb128 0xd
	.long	.LASF221
	.sleb128 98
	.uleb128 0xd
	.long	.LASF222
	.sleb128 99
	.uleb128 0xd
	.long	.LASF223
	.sleb128 100
	.uleb128 0xd
	.long	.LASF224
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
	.long	.LASF225
	.sleb128 112
	.uleb128 0xd
	.long	.LASF226
	.sleb128 113
	.uleb128 0xd
	.long	.LASF227
	.sleb128 114
	.uleb128 0xd
	.long	.LASF228
	.sleb128 115
	.uleb128 0xd
	.long	.LASF229
	.sleb128 116
	.uleb128 0xd
	.long	.LASF230
	.sleb128 117
	.uleb128 0xd
	.long	.LASF231
	.sleb128 118
	.uleb128 0xd
	.long	.LASF232
	.sleb128 119
	.uleb128 0xd
	.long	.LASF233
	.sleb128 120
	.uleb128 0xd
	.long	.LASF234
	.sleb128 121
	.uleb128 0xd
	.long	.LASF235
	.sleb128 122
	.uleb128 0xd
	.long	.LASF236
	.sleb128 123
	.uleb128 0xd
	.long	.LASF237
	.sleb128 124
	.uleb128 0xd
	.long	.LASF238
	.sleb128 125
	.uleb128 0x16
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF239
	.sleb128 127
	.uleb128 0xd
	.long	.LASF240
	.sleb128 128
	.uleb128 0x16
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF241
	.sleb128 130
	.uleb128 0x16
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF242
	.sleb128 132
	.uleb128 0xd
	.long	.LASF243
	.sleb128 133
	.uleb128 0xd
	.long	.LASF244
	.sleb128 134
	.uleb128 0xd
	.long	.LASF245
	.sleb128 135
	.uleb128 0xd
	.long	.LASF246
	.sleb128 136
	.uleb128 0xd
	.long	.LASF247
	.sleb128 137
	.uleb128 0xd
	.long	.LASF248
	.sleb128 138
	.uleb128 0xd
	.long	.LASF249
	.sleb128 139
	.uleb128 0xd
	.long	.LASF250
	.sleb128 140
	.uleb128 0xd
	.long	.LASF251
	.sleb128 141
	.uleb128 0xd
	.long	.LASF252
	.sleb128 142
	.uleb128 0xd
	.long	.LASF253
	.sleb128 143
	.uleb128 0xd
	.long	.LASF254
	.sleb128 144
	.uleb128 0xd
	.long	.LASF255
	.sleb128 145
	.uleb128 0xd
	.long	.LASF256
	.sleb128 146
	.uleb128 0xd
	.long	.LASF257
	.sleb128 147
	.uleb128 0xd
	.long	.LASF258
	.sleb128 148
	.uleb128 0xd
	.long	.LASF259
	.sleb128 149
	.uleb128 0xd
	.long	.LASF260
	.sleb128 150
	.uleb128 0xd
	.long	.LASF261
	.sleb128 151
	.uleb128 0x16
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF262
	.sleb128 153
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x91b
	.uleb128 0x5
	.long	.LASF263
	.byte	0x2
	.byte	0x47
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF264
	.byte	0x2
	.byte	0x49
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF265
	.byte	0x2
	.byte	0x4a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF266
	.byte	0x2
	.byte	0x4c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF267
	.byte	0x2
	.byte	0x4e
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF268
	.byte	0x2
	.byte	0x50
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF269
	.byte	0x2
	.byte	0x53
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF270
	.byte	0x2
	.byte	0x55
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF271
	.byte	0x2
	.byte	0x56
	.long	0x89a
	.uleb128 0x17
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x96b
	.uleb128 0x8
	.long	.LASF272
	.byte	0x2
	.byte	0x5e
	.long	0x26f
	.byte	0
	.uleb128 0x8
	.long	.LASF273
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF274
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF275
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF276
	.byte	0x2
	.byte	0x62
	.long	0x266
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF277
	.byte	0x2
	.byte	0x63
	.long	0x926
	.uleb128 0x18
	.long	.LASF384
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xa11
	.uleb128 0x19
	.long	.LASF278
	.byte	0x2
	.byte	0x69
	.long	0x26f
	.uleb128 0x19
	.long	.LASF279
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x19
	.long	.LASF280
	.byte	0x2
	.byte	0x6b
	.long	0x266
	.uleb128 0x19
	.long	.LASF281
	.byte	0x2
	.byte	0x6c
	.long	0x2c1
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
	.long	.LASF282
	.byte	0x2
	.byte	0x6f
	.long	0x2e0
	.uleb128 0x19
	.long	.LASF283
	.byte	0x2
	.byte	0x70
	.long	0x91b
	.uleb128 0x19
	.long	.LASF284
	.byte	0x2
	.byte	0x71
	.long	0xa16
	.uleb128 0x19
	.long	.LASF285
	.byte	0x2
	.byte	0x72
	.long	0xa4d
	.uleb128 0x19
	.long	.LASF286
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1a
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xb20
	.uleb128 0x19
	.long	.LASF287
	.byte	0x2
	.byte	0x75
	.long	0xb26
	.byte	0
	.uleb128 0x1b
	.long	.LASF392
	.uleb128 0x3
	.byte	0x8
	.long	0xa11
	.uleb128 0x4
	.long	.LASF288
	.byte	0x18
	.byte	0x7
	.byte	0x34
	.long	0xa4d
	.uleb128 0x8
	.long	.LASF289
	.byte	0x7
	.byte	0x35
	.long	0xd8d
	.byte	0
	.uleb128 0x8
	.long	.LASF290
	.byte	0x7
	.byte	0x36
	.long	0xd8d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF291
	.byte	0x7
	.byte	0x37
	.long	0x266
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa1c
	.uleb128 0x4
	.long	.LASF292
	.byte	0x70
	.byte	0x8
	.byte	0xae
	.long	0xb20
	.uleb128 0x8
	.long	.LASF293
	.byte	0x8
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0x8
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF294
	.byte	0x8
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF295
	.byte	0x8
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF296
	.byte	0x8
	.byte	0xb7
	.long	0x116f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF297
	.byte	0x8
	.byte	0xb7
	.long	0x116f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF298
	.byte	0x8
	.byte	0xbc
	.long	0x10da
	.byte	0x30
	.uleb128 0x8
	.long	.LASF299
	.byte	0x8
	.byte	0xc0
	.long	0x10da
	.byte	0x38
	.uleb128 0x8
	.long	.LASF300
	.byte	0x8
	.byte	0xc6
	.long	0x10da
	.byte	0x40
	.uleb128 0x8
	.long	.LASF301
	.byte	0x8
	.byte	0xc8
	.long	0x10da
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x8
	.byte	0xcb
	.long	0x26d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF302
	.byte	0x8
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF303
	.byte	0x8
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF304
	.byte	0x8
	.byte	0xd4
	.long	0x10e5
	.byte	0x60
	.uleb128 0x8
	.long	.LASF305
	.byte	0x8
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF306
	.byte	0x8
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa53
	.uleb128 0x3
	.byte	0x8
	.long	0x96b
	.uleb128 0x7
	.long	.LASF307
	.byte	0x2
	.byte	0x76
	.long	0x976
	.uleb128 0x12
	.long	0xb2c
	.long	0xb47
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2d
	.long	0xb57
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF308
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xc19
	.uleb128 0xd
	.long	.LASF309
	.sleb128 1
	.uleb128 0xd
	.long	.LASF310
	.sleb128 2
	.uleb128 0xd
	.long	.LASF311
	.sleb128 3
	.uleb128 0xd
	.long	.LASF312
	.sleb128 4
	.uleb128 0xd
	.long	.LASF313
	.sleb128 5
	.uleb128 0xd
	.long	.LASF314
	.sleb128 6
	.uleb128 0xd
	.long	.LASF315
	.sleb128 7
	.uleb128 0xd
	.long	.LASF316
	.sleb128 8
	.uleb128 0xd
	.long	.LASF317
	.sleb128 9
	.uleb128 0xd
	.long	.LASF318
	.sleb128 10
	.uleb128 0xd
	.long	.LASF319
	.sleb128 11
	.uleb128 0xd
	.long	.LASF320
	.sleb128 12
	.uleb128 0xd
	.long	.LASF321
	.sleb128 13
	.uleb128 0xd
	.long	.LASF322
	.sleb128 14
	.uleb128 0xd
	.long	.LASF323
	.sleb128 15
	.uleb128 0xd
	.long	.LASF324
	.sleb128 16
	.uleb128 0xd
	.long	.LASF325
	.sleb128 17
	.uleb128 0xd
	.long	.LASF326
	.sleb128 18
	.uleb128 0xd
	.long	.LASF327
	.sleb128 19
	.uleb128 0xd
	.long	.LASF328
	.sleb128 20
	.uleb128 0xd
	.long	.LASF329
	.sleb128 21
	.uleb128 0xd
	.long	.LASF330
	.sleb128 22
	.uleb128 0xd
	.long	.LASF331
	.sleb128 23
	.uleb128 0xd
	.long	.LASF332
	.sleb128 24
	.uleb128 0xd
	.long	.LASF333
	.sleb128 25
	.uleb128 0xd
	.long	.LASF334
	.sleb128 26
	.uleb128 0xd
	.long	.LASF335
	.sleb128 27
	.uleb128 0xd
	.long	.LASF336
	.sleb128 28
	.uleb128 0xd
	.long	.LASF337
	.sleb128 29
	.uleb128 0xd
	.long	.LASF338
	.sleb128 30
	.byte	0
	.uleb128 0xc
	.long	.LASF339
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xcc8
	.uleb128 0xd
	.long	.LASF340
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF341
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF342
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF343
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF344
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF345
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF346
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF347
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF348
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF349
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF350
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF351
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF352
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF353
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF354
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF355
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF356
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF357
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF358
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF359
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF360
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF361
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF362
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xc
	.long	.LASF363
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xd24
	.uleb128 0xd
	.long	.LASF364
	.sleb128 0
	.uleb128 0xd
	.long	.LASF365
	.sleb128 1
	.uleb128 0xd
	.long	.LASF366
	.sleb128 2
	.uleb128 0xd
	.long	.LASF367
	.sleb128 3
	.uleb128 0xd
	.long	.LASF368
	.sleb128 4
	.uleb128 0xd
	.long	.LASF369
	.sleb128 5
	.uleb128 0xd
	.long	.LASF370
	.sleb128 6
	.uleb128 0xd
	.long	.LASF371
	.sleb128 7
	.uleb128 0xd
	.long	.LASF372
	.sleb128 8
	.uleb128 0xd
	.long	.LASF373
	.sleb128 9
	.uleb128 0xd
	.long	.LASF374
	.sleb128 10
	.uleb128 0xd
	.long	.LASF375
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF376
	.byte	0x9
	.byte	0x29
	.long	0x281
	.uleb128 0x4
	.long	.LASF377
	.byte	0x28
	.byte	0x7
	.byte	0x2b
	.long	0xd6c
	.uleb128 0x8
	.long	.LASF378
	.byte	0x7
	.byte	0x2d
	.long	0xd6c
	.byte	0
	.uleb128 0x8
	.long	.LASF379
	.byte	0x7
	.byte	0x2e
	.long	0xd6c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF291
	.byte	0x7
	.byte	0x2f
	.long	0x266
	.byte	0x10
	.uleb128 0x8
	.long	.LASF380
	.byte	0x7
	.byte	0x30
	.long	0xd72
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd2f
	.uleb128 0x12
	.long	0x281
	.long	0xd82
	.uleb128 0x13
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF381
	.byte	0x7
	.byte	0x31
	.long	0xd2f
	.uleb128 0x3
	.byte	0x8
	.long	0xd82
	.uleb128 0x7
	.long	.LASF382
	.byte	0x7
	.byte	0x39
	.long	0xa4d
	.uleb128 0x12
	.long	0x281
	.long	0xdae
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF383
	.byte	0x10
	.byte	0xa
	.byte	0x24
	.long	0xdd3
	.uleb128 0x6
	.string	"rtx"
	.byte	0xa
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xa
	.byte	0x36
	.long	0x266
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF385
	.byte	0x10
	.byte	0xa
	.byte	0x3a
	.long	0xeb8
	.uleb128 0x1a
	.string	"c"
	.byte	0xa
	.byte	0x3b
	.long	0x2b1
	.uleb128 0x1a
	.string	"uc"
	.byte	0xa
	.byte	0x3c
	.long	0xeb8
	.uleb128 0x1a
	.string	"s"
	.byte	0xa
	.byte	0x3d
	.long	0xec8
	.uleb128 0x1a
	.string	"us"
	.byte	0xa
	.byte	0x3e
	.long	0xed8
	.uleb128 0x1a
	.string	"i"
	.byte	0xa
	.byte	0x3f
	.long	0xee8
	.uleb128 0x1a
	.string	"u"
	.byte	0xa
	.byte	0x40
	.long	0xef8
	.uleb128 0x1a
	.string	"l"
	.byte	0xa
	.byte	0x41
	.long	0xf08
	.uleb128 0x1a
	.string	"ul"
	.byte	0xa
	.byte	0x42
	.long	0xd9e
	.uleb128 0x19
	.long	.LASF386
	.byte	0xa
	.byte	0x43
	.long	0xf08
	.uleb128 0x19
	.long	.LASF387
	.byte	0xa
	.byte	0x44
	.long	0xd9e
	.uleb128 0x19
	.long	.LASF388
	.byte	0xa
	.byte	0x45
	.long	0xf18
	.uleb128 0x19
	.long	.LASF389
	.byte	0xa
	.byte	0x46
	.long	0xf28
	.uleb128 0x1a
	.string	"rtx"
	.byte	0xa
	.byte	0x47
	.long	0xf38
	.uleb128 0x19
	.long	.LASF10
	.byte	0xa
	.byte	0x48
	.long	0xf48
	.uleb128 0x19
	.long	.LASF15
	.byte	0xa
	.byte	0x49
	.long	0xf58
	.uleb128 0x19
	.long	.LASF382
	.byte	0xa
	.byte	0x4a
	.long	0xf68
	.uleb128 0x19
	.long	.LASF390
	.byte	0xa
	.byte	0x4b
	.long	0xf78
	.uleb128 0x1a
	.string	"reg"
	.byte	0xa
	.byte	0x4c
	.long	0xf93
	.uleb128 0x19
	.long	.LASF391
	.byte	0xa
	.byte	0x4d
	.long	0x103a
	.uleb128 0x1a
	.string	"bb"
	.byte	0xa
	.byte	0x4e
	.long	0x104a
	.uleb128 0x1a
	.string	"te"
	.byte	0xa
	.byte	0x4f
	.long	0x105a
	.byte	0
	.uleb128 0x12
	.long	0x288
	.long	0xec8
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x29d
	.long	0xed8
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x28f
	.long	0xee8
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x139
	.long	0xef8
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x266
	.long	0xf08
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x26f
	.long	0xf18
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x26d
	.long	0xf28
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2a4
	.long	0xf38
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x38
	.long	0xf48
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xf8
	.long	0xf58
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x12e
	.long	0xf68
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xa4d
	.long	0xf78
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xf88
	.long	0xf88
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf8e
	.uleb128 0x1b
	.long	.LASF393
	.uleb128 0x12
	.long	0xfa3
	.long	0xfa3
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xfa9
	.uleb128 0x4
	.long	.LASF394
	.byte	0x2c
	.byte	0xb
	.byte	0x2d
	.long	0x103a
	.uleb128 0x8
	.long	.LASF395
	.byte	0xb
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF396
	.byte	0xb
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF397
	.byte	0xb
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF398
	.byte	0xb
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF399
	.byte	0xb
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF400
	.byte	0xb
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF401
	.byte	0xb
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF402
	.byte	0xb
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF403
	.byte	0xb
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF404
	.byte	0xb
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF405
	.byte	0xb
	.byte	0x3d
	.long	0x2aa
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.long	0xdae
	.long	0x104a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xb20
	.long	0x105a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x106a
	.long	0x106a
	.uleb128 0x13
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1070
	.uleb128 0x1b
	.long	.LASF406
	.uleb128 0x7
	.long	.LASF407
	.byte	0xa
	.byte	0x50
	.long	0xdd3
	.uleb128 0x4
	.long	.LASF408
	.byte	0x30
	.byte	0xa
	.byte	0x53
	.long	0x10c9
	.uleb128 0x8
	.long	.LASF409
	.byte	0xa
	.byte	0x54
	.long	0x276
	.byte	0
	.uleb128 0x8
	.long	.LASF410
	.byte	0xa
	.byte	0x55
	.long	0x276
	.byte	0x8
	.uleb128 0x8
	.long	.LASF411
	.byte	0xa
	.byte	0x57
	.long	0x276
	.byte	0x10
	.uleb128 0x8
	.long	.LASF412
	.byte	0xa
	.byte	0x58
	.long	0x2c1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF413
	.byte	0xa
	.byte	0x59
	.long	0x1075
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF414
	.byte	0xa
	.byte	0x5a
	.long	0x10d4
	.uleb128 0x3
	.byte	0x8
	.long	0x1080
	.uleb128 0x7
	.long	.LASF415
	.byte	0x8
	.byte	0x21
	.long	0xd93
	.uleb128 0x7
	.long	.LASF416
	.byte	0x8
	.byte	0x74
	.long	0x26f
	.uleb128 0x4
	.long	.LASF417
	.byte	0x40
	.byte	0x8
	.byte	0x77
	.long	0x1169
	.uleb128 0x8
	.long	.LASF418
	.byte	0x8
	.byte	0x79
	.long	0x1169
	.byte	0
	.uleb128 0x8
	.long	.LASF419
	.byte	0x8
	.byte	0x79
	.long	0x1169
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x8
	.byte	0x7c
	.long	0xb20
	.byte	0x10
	.uleb128 0x8
	.long	.LASF420
	.byte	0x8
	.byte	0x7c
	.long	0xb20
	.byte	0x18
	.uleb128 0x8
	.long	.LASF421
	.byte	0x8
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x8
	.byte	0x82
	.long	0x26d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF306
	.byte	0x8
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF422
	.byte	0x8
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF304
	.byte	0x8
	.byte	0x86
	.long	0x10e5
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10f0
	.uleb128 0x7
	.long	.LASF423
	.byte	0x8
	.byte	0x88
	.long	0x1169
	.uleb128 0x4
	.long	.LASF424
	.byte	0x18
	.byte	0xc
	.byte	0x16
	.long	0x11b7
	.uleb128 0x8
	.long	.LASF425
	.byte	0xc
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF426
	.byte	0xc
	.byte	0x19
	.long	0x2e0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF427
	.byte	0xc
	.byte	0x1a
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF378
	.byte	0xc
	.byte	0x1b
	.long	0x11b7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x117a
	.uleb128 0x4
	.long	.LASF428
	.byte	0x20
	.byte	0xc
	.byte	0x23
	.long	0x11fa
	.uleb128 0x8
	.long	.LASF289
	.byte	0xc
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF429
	.byte	0xc
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF430
	.byte	0xc
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF378
	.byte	0xc
	.byte	0x28
	.long	0x11fa
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11bd
	.uleb128 0x4
	.long	.LASF431
	.byte	0x58
	.byte	0xc
	.byte	0x35
	.long	0x12a9
	.uleb128 0x8
	.long	.LASF432
	.byte	0xc
	.byte	0x39
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF433
	.byte	0xc
	.byte	0x3c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF434
	.byte	0xc
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF435
	.byte	0xc
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF430
	.byte	0xc
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF428
	.byte	0xc
	.byte	0x4f
	.long	0x11fa
	.byte	0x20
	.uleb128 0x8
	.long	.LASF436
	.byte	0xc
	.byte	0x53
	.long	0x139
	.byte	0x28
	.uleb128 0x8
	.long	.LASF437
	.byte	0xc
	.byte	0x57
	.long	0x139
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF438
	.byte	0xc
	.byte	0x58
	.long	0x2c1
	.byte	0x30
	.uleb128 0x8
	.long	.LASF439
	.byte	0xc
	.byte	0x5e
	.long	0x139
	.byte	0x38
	.uleb128 0x8
	.long	.LASF440
	.byte	0xc
	.byte	0x63
	.long	0x12a9
	.byte	0x40
	.uleb128 0x8
	.long	.LASF441
	.byte	0xc
	.byte	0x67
	.long	0x12af
	.byte	0x48
	.uleb128 0x8
	.long	.LASF442
	.byte	0xc
	.byte	0x6b
	.long	0xcc8
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x288
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF443
	.byte	0x30
	.byte	0xc
	.byte	0x77
	.long	0x1316
	.uleb128 0x8
	.long	.LASF444
	.byte	0xc
	.byte	0x7b
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF445
	.byte	0xc
	.byte	0x8c
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF446
	.byte	0xc
	.byte	0x92
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF447
	.byte	0xc
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF448
	.byte	0xc
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF449
	.byte	0xc
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF450
	.byte	0xc
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1c
	.long	.LASF451
	.value	0x1b0
	.byte	0xc
	.byte	0xae
	.long	0x1796
	.uleb128 0x6
	.string	"eh"
	.byte	0xc
	.byte	0xb0
	.long	0x179b
	.byte	0
	.uleb128 0x8
	.long	.LASF452
	.byte	0xc
	.byte	0xb1
	.long	0x17a6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF273
	.byte	0xc
	.byte	0xb2
	.long	0x17ac
	.byte	0x10
	.uleb128 0x8
	.long	.LASF453
	.byte	0xc
	.byte	0xb3
	.long	0x17b2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF454
	.byte	0xc
	.byte	0xb4
	.long	0x17bd
	.byte	0x20
	.uleb128 0x8
	.long	.LASF412
	.byte	0xc
	.byte	0xb9
	.long	0x2c1
	.byte	0x28
	.uleb128 0x8
	.long	.LASF455
	.byte	0xc
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF456
	.byte	0xc
	.byte	0xbf
	.long	0x17c3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF457
	.byte	0xc
	.byte	0xc4
	.long	0x139
	.byte	0x40
	.uleb128 0x8
	.long	.LASF458
	.byte	0xc
	.byte	0xc9
	.long	0x139
	.byte	0x44
	.uleb128 0x8
	.long	.LASF459
	.byte	0xc
	.byte	0xce
	.long	0x139
	.byte	0x48
	.uleb128 0x8
	.long	.LASF460
	.byte	0xc
	.byte	0xd2
	.long	0x139
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF461
	.byte	0xc
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF462
	.byte	0xc
	.byte	0xda
	.long	0x25a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF463
	.byte	0xc
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF464
	.byte	0xc
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF465
	.byte	0xc
	.byte	0xe7
	.long	0x2c1
	.byte	0x88
	.uleb128 0x8
	.long	.LASF466
	.byte	0xc
	.byte	0xeb
	.long	0x17ce
	.byte	0x90
	.uleb128 0x8
	.long	.LASF467
	.byte	0xc
	.byte	0xee
	.long	0x139
	.byte	0x98
	.uleb128 0x8
	.long	.LASF468
	.byte	0xc
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF469
	.byte	0xc
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF470
	.byte	0xc
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF471
	.byte	0xc
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF472
	.byte	0xc
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF473
	.byte	0xc
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0xf
	.long	.LASF474
	.byte	0xc
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0xf
	.long	.LASF475
	.byte	0xc
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0xf
	.long	.LASF476
	.byte	0xc
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF477
	.byte	0xc
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0xf
	.long	.LASF478
	.byte	0xc
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0xf
	.long	.LASF479
	.byte	0xc
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1d
	.long	.LASF480
	.byte	0xc
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1d
	.long	.LASF481
	.byte	0xc
	.value	0x12f
	.long	0x26f
	.value	0x108
	.uleb128 0x1d
	.long	.LASF482
	.byte	0xc
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1d
	.long	.LASF483
	.byte	0xc
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1d
	.long	.LASF484
	.byte	0xc
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1d
	.long	.LASF485
	.byte	0xc
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1d
	.long	.LASF486
	.byte	0xc
	.value	0x148
	.long	0x266
	.value	0x130
	.uleb128 0x1d
	.long	.LASF487
	.byte	0xc
	.value	0x14e
	.long	0xcc8
	.value	0x138
	.uleb128 0x1d
	.long	.LASF488
	.byte	0xc
	.value	0x151
	.long	0x17d9
	.value	0x140
	.uleb128 0x1d
	.long	.LASF489
	.byte	0xc
	.value	0x154
	.long	0x139
	.value	0x148
	.uleb128 0x1d
	.long	.LASF490
	.byte	0xc
	.value	0x157
	.long	0x139
	.value	0x14c
	.uleb128 0x1d
	.long	.LASF491
	.byte	0xc
	.value	0x15d
	.long	0x139
	.value	0x150
	.uleb128 0x1d
	.long	.LASF492
	.byte	0xc
	.value	0x161
	.long	0x11b7
	.value	0x158
	.uleb128 0x1d
	.long	.LASF493
	.byte	0xc
	.value	0x164
	.long	0x139
	.value	0x160
	.uleb128 0x1d
	.long	.LASF494
	.byte	0xc
	.value	0x165
	.long	0x139
	.value	0x164
	.uleb128 0x1d
	.long	.LASF495
	.byte	0xc
	.value	0x167
	.long	0x26d
	.value	0x168
	.uleb128 0x1d
	.long	.LASF496
	.byte	0xc
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1d
	.long	.LASF497
	.byte	0xc
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1d
	.long	.LASF498
	.byte	0xc
	.value	0x16d
	.long	0x139
	.value	0x180
	.uleb128 0x1d
	.long	.LASF499
	.byte	0xc
	.value	0x170
	.long	0x139
	.value	0x184
	.uleb128 0x1d
	.long	.LASF500
	.byte	0xc
	.value	0x175
	.long	0x17e4
	.value	0x188
	.uleb128 0x1d
	.long	.LASF501
	.byte	0xc
	.value	0x177
	.long	0x139
	.value	0x190
	.uleb128 0x1d
	.long	.LASF502
	.byte	0xc
	.value	0x179
	.long	0x139
	.value	0x194
	.uleb128 0x1d
	.long	.LASF503
	.byte	0xc
	.value	0x17c
	.long	0x17ef
	.value	0x198
	.uleb128 0x1d
	.long	.LASF504
	.byte	0xc
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x1e
	.long	.LASF505
	.byte	0xc
	.value	0x188
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF506
	.byte	0xc
	.value	0x18c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF507
	.byte	0xc
	.value	0x18f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF508
	.byte	0xc
	.value	0x192
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF509
	.byte	0xc
	.value	0x195
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF510
	.byte	0xc
	.value	0x198
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF511
	.byte	0xc
	.value	0x19c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF512
	.byte	0xc
	.value	0x19f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF513
	.byte	0xc
	.value	0x1a3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF514
	.byte	0xc
	.value	0x1a7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF515
	.byte	0xc
	.value	0x1aa
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF516
	.byte	0xc
	.value	0x1ad
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF517
	.byte	0xc
	.value	0x1b2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF518
	.byte	0xc
	.value	0x1b6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF519
	.byte	0xc
	.value	0x1b9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF520
	.byte	0xc
	.value	0x1bd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF521
	.byte	0xc
	.value	0x1c1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF522
	.byte	0xc
	.value	0x1c5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF523
	.byte	0xc
	.value	0x1cb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF524
	.byte	0xc
	.value	0x1d4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF525
	.byte	0xc
	.value	0x1d7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF526
	.byte	0xc
	.value	0x1da
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF527
	.byte	0xc
	.value	0x1dd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x1e
	.long	.LASF528
	.byte	0xc
	.value	0x1e0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1b
	.long	.LASF529
	.uleb128 0x3
	.byte	0x8
	.long	0x1796
	.uleb128 0x1b
	.long	.LASF530
	.uleb128 0x3
	.byte	0x8
	.long	0x17a1
	.uleb128 0x3
	.byte	0x8
	.long	0x12b5
	.uleb128 0x3
	.byte	0x8
	.long	0x1200
	.uleb128 0x1b
	.long	.LASF531
	.uleb128 0x3
	.byte	0x8
	.long	0x17b8
	.uleb128 0x3
	.byte	0x8
	.long	0x1316
	.uleb128 0x1b
	.long	.LASF532
	.uleb128 0x3
	.byte	0x8
	.long	0x17c9
	.uleb128 0x1b
	.long	.LASF533
	.uleb128 0x3
	.byte	0x8
	.long	0x17d4
	.uleb128 0x1b
	.long	.LASF534
	.uleb128 0x3
	.byte	0x8
	.long	0x17df
	.uleb128 0x1b
	.long	.LASF535
	.uleb128 0x3
	.byte	0x8
	.long	0x17ea
	.uleb128 0x4
	.long	.LASF536
	.byte	0x10
	.byte	0xd
	.byte	0x1b
	.long	0x183d
	.uleb128 0x8
	.long	.LASF537
	.byte	0xd
	.byte	0x1d
	.long	0x2aa
	.byte	0
	.uleb128 0x8
	.long	.LASF538
	.byte	0xd
	.byte	0x1e
	.long	0x2aa
	.byte	0x1
	.uleb128 0x8
	.long	.LASF5
	.byte	0xd
	.byte	0x1f
	.long	0x2aa
	.byte	0x2
	.uleb128 0x6
	.string	"cc"
	.byte	0xd
	.byte	0x20
	.long	0x2aa
	.byte	0x3
	.uleb128 0x8
	.long	.LASF539
	.byte	0xd
	.byte	0x21
	.long	0xd24
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.long	.LASF540
	.byte	0x4
	.byte	0xd
	.byte	0x25
	.long	0x185c
	.uleb128 0xd
	.long	.LASF541
	.sleb128 0
	.uleb128 0xd
	.long	.LASF542
	.sleb128 1
	.uleb128 0xd
	.long	.LASF543
	.sleb128 2
	.byte	0
	.uleb128 0x14
	.long	0x2c1
	.uleb128 0x4
	.long	.LASF544
	.byte	0x18
	.byte	0xe
	.byte	0x2c
	.long	0x1892
	.uleb128 0x8
	.long	.LASF545
	.byte	0xe
	.byte	0x30
	.long	0x185c
	.byte	0
	.uleb128 0x8
	.long	.LASF546
	.byte	0xe
	.byte	0x32
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF547
	.byte	0xe
	.byte	0x34
	.long	0x185c
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF544
	.byte	0xe
	.byte	0x35
	.long	0x1861
	.uleb128 0x15
	.long	.LASF548
	.byte	0x4
	.byte	0xe
	.byte	0x49
	.long	0x18d4
	.uleb128 0xd
	.long	.LASF549
	.sleb128 0
	.uleb128 0xd
	.long	.LASF550
	.sleb128 1
	.uleb128 0xd
	.long	.LASF551
	.sleb128 2
	.uleb128 0xd
	.long	.LASF552
	.sleb128 3
	.uleb128 0xd
	.long	.LASF553
	.sleb128 4
	.uleb128 0xd
	.long	.LASF554
	.sleb128 5
	.uleb128 0xd
	.long	.LASF555
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.long	.LASF556
	.byte	0x20
	.byte	0x1
	.byte	0x2a
	.long	0x191d
	.uleb128 0x6
	.string	"uid"
	.byte	0x1
	.byte	0x2c
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF378
	.byte	0x1
	.byte	0x2d
	.long	0x191d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF557
	.byte	0x1
	.byte	0x2e
	.long	0xd24
	.byte	0x10
	.uleb128 0x8
	.long	.LASF558
	.byte	0x1
	.byte	0x2f
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF559
	.byte	0x1
	.byte	0x30
	.long	0x139
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18d4
	.uleb128 0x1f
	.long	.LASF633
	.byte	0x1
	.byte	0x5a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1992
	.uleb128 0x20
	.long	.LASF420
	.byte	0x1
	.byte	0x5b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.byte	0x5c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF413
	.byte	0x1
	.byte	0x5d
	.long	0x26d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF560
	.byte	0x1
	.byte	0x5f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF561
	.byte	0x1
	.byte	0x5f
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x60
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.long	.LASF564
	.byte	0x1
	.byte	0x84
	.long	0x139
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x19dc
	.uleb128 0x20
	.long	.LASF562
	.byte	0x1
	.byte	0x85
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF563
	.byte	0x1
	.byte	0x86
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x88
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	.LASF565
	.byte	0x1
	.byte	0xab
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a0c
	.uleb128 0x20
	.long	.LASF562
	.byte	0x1
	.byte	0xac
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF583
	.byte	0x1
	.byte	0xc6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ba5
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.byte	0xc7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.string	"res"
	.byte	0x1
	.byte	0xc8
	.long	0x1ba5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x20
	.long	.LASF566
	.byte	0x1
	.byte	0xc9
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x22
	.long	.LASF0
	.byte	0x1
	.byte	0xcb
	.long	0x49e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xcc
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.byte	0xcc
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.byte	0xcd
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF567
	.byte	0x1
	.byte	0xce
	.long	0x2c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF587
	.long	0x1bbb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10744
	.uleb128 0x28
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1ae0
	.uleb128 0x22
	.long	.LASF46
	.byte	0x1
	.byte	0xe2
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF561
	.byte	0x1
	.byte	0xe3
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x28
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1b14
	.uleb128 0x22
	.long	.LASF46
	.byte	0x1
	.byte	0xef
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF561
	.byte	0x1
	.byte	0xf0
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2a
	.long	.LASF562
	.byte	0x1
	.value	0x147
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF568
	.byte	0x1
	.value	0x148
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF569
	.byte	0x1
	.value	0x149
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x14a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2a
	.long	.LASF570
	.byte	0x1
	.value	0x16f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2a
	.long	.LASF571
	.byte	0x1
	.value	0x178
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
	.long	0x17f5
	.uleb128 0x12
	.long	0x2aa
	.long	0x1bbb
	.uleb128 0x13
	.long	0x140
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.long	0x1bab
	.uleb128 0x2c
	.long	.LASF572
	.byte	0x1
	.value	0x1af
	.long	0x2d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cf1
	.uleb128 0x2d
	.long	.LASF573
	.byte	0x1
	.value	0x1b0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.string	"res"
	.byte	0x1
	.value	0x1b1
	.long	0x1ba5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.long	.LASF574
	.byte	0x1
	.value	0x1b2
	.long	0xcc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF575
	.byte	0x1
	.value	0x1b3
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x1b4
	.long	0x17f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF576
	.byte	0x1
	.value	0x1b4
	.long	0x17f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x1
	.value	0x1b6
	.long	0xd24
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF562
	.byte	0x1
	.value	0x1b7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF378
	.byte	0x1
	.value	0x1b7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x1
	.value	0x1b8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1b9
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x1
	.value	0x1bd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x1
	.value	0x207
	.long	0x17f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF581
	.byte	0x1
	.value	0x207
	.long	0x17f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF582
	.byte	0x1
	.value	0x208
	.long	0x17f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF584
	.byte	0x1
	.value	0x272
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e43
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x273
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"res"
	.byte	0x1
	.value	0x274
	.long	0x1ba5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF585
	.byte	0x1
	.value	0x275
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.long	.LASF586
	.byte	0x1
	.value	0x276
	.long	0x183d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x278
	.long	0x49e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x279
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x279
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x27a
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF567
	.byte	0x1
	.value	0x27b
	.long	0x2c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF634
	.byte	0x1
	.value	0x27d
	.quad	.L187
	.uleb128 0x27
	.long	.LASF587
	.long	0x1e53
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10883
	.uleb128 0x28
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1dde
	.uleb128 0x2a
	.long	.LASF570
	.byte	0x1
	.value	0x29d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x1e12
	.uleb128 0x2a
	.long	.LASF46
	.byte	0x1
	.value	0x306
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF561
	.byte	0x1
	.value	0x307
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x29
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2a
	.long	.LASF46
	.byte	0x1
	.value	0x315
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF561
	.byte	0x1
	.value	0x316
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2aa
	.long	0x1e53
	.uleb128 0x13
	.long	0x140
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.long	0x1e43
	.uleb128 0x2f
	.long	.LASF588
	.byte	0x1
	.value	0x37a
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x20fb
	.uleb128 0x2d
	.long	.LASF421
	.byte	0x1
	.value	0x37b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2d
	.long	.LASF573
	.byte	0x1
	.value	0x37c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2e
	.string	"res"
	.byte	0x1
	.value	0x37d
	.long	0x1ba5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x37f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x380
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2a
	.long	.LASF589
	.byte	0x1
	.value	0x381
	.long	0x191d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2a
	.long	.LASF562
	.byte	0x1
	.value	0x382
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x1
	.value	0x383
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF574
	.byte	0x1
	.value	0x384
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x1
	.value	0x385
	.long	0xd24
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x386
	.long	0x17f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF576
	.byte	0x1
	.value	0x386
	.long	0x17f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x20c9
	.uleb128 0x2a
	.long	.LASF590
	.byte	0x1
	.value	0x3c7
	.long	0x10da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x3c8
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2a
	.long	.LASF46
	.byte	0x1
	.value	0x3c9
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2a
	.long	.LASF591
	.byte	0x1
	.value	0x3ca
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.long	.LASF592
	.byte	0x1
	.value	0x3ca
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x202e
	.uleb128 0x2a
	.long	.LASF593
	.byte	0x1
	.value	0x3d2
	.long	0xd8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF594
	.byte	0x1
	.value	0x3d2
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2a
	.long	.LASF595
	.byte	0x1
	.value	0x3d2
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2a
	.long	.LASF596
	.byte	0x1
	.value	0x3d2
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2a
	.long	.LASF597
	.byte	0x1
	.value	0x3d2
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2a
	.long	.LASF598
	.byte	0x1
	.value	0x3d2
	.long	0x281
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2a
	.long	.LASF570
	.byte	0x1
	.value	0x3f0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF599
	.byte	0x1
	.value	0x3f1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x2095
	.uleb128 0x2a
	.long	.LASF560
	.byte	0x1
	.value	0x41e
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2a
	.long	.LASF561
	.byte	0x1
	.value	0x41f
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.byte	0
	.uleb128 0x29
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2a
	.long	.LASF560
	.byte	0x1
	.value	0x431
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.long	.LASF561
	.byte	0x1
	.value	0x432
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2a
	.long	.LASF600
	.byte	0x1
	.value	0x465
	.long	0x17f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF592
	.byte	0x1
	.value	0x466
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF601
	.byte	0x1
	.value	0x486
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2136
	.uleb128 0x2d
	.long	.LASF602
	.byte	0x1
	.value	0x487
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x489
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF603
	.byte	0x1
	.value	0x4d3
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x21b5
	.uleb128 0x29
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x4d7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2b
	.string	"ti"
	.byte	0x1
	.value	0x4db
	.long	0x191d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2a
	.long	.LASF378
	.byte	0x1
	.value	0x4df
	.long	0x191d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF604
	.byte	0x1
	.value	0x4f3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x21f2
	.uleb128 0x2d
	.long	.LASF562
	.byte	0x1
	.value	0x4f4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF589
	.byte	0x1
	.value	0x4f6
	.long	0x191d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF605
	.byte	0x1
	.value	0x507
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x222d
	.uleb128 0x2d
	.long	.LASF562
	.byte	0x1
	.value	0x508
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x50a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF606
	.byte	0x1
	.value	0x513
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x226a
	.uleb128 0x2d
	.long	.LASF607
	.byte	0x1
	.value	0x514
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF566
	.byte	0x1
	.value	0x515
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.long	.LASF608
	.byte	0x1
	.byte	0x36
	.long	0x17f5
	.uleb128 0x9
	.byte	0x3
	.quad	start_of_epilogue_needs
	.uleb128 0x22
	.long	.LASF609
	.byte	0x1
	.byte	0x39
	.long	0x17f5
	.uleb128 0x9
	.byte	0x3
	.quad	end_of_function_needs
	.uleb128 0x22
	.long	.LASF610
	.byte	0x1
	.byte	0x3c
	.long	0x22a9
	.uleb128 0x9
	.byte	0x3
	.quad	target_hash_table
	.uleb128 0x3
	.byte	0x8
	.long	0x191d
	.uleb128 0x22
	.long	.LASF611
	.byte	0x1
	.byte	0x43
	.long	0x2da
	.uleb128 0x9
	.byte	0x3
	.quad	bb_ticks
	.uleb128 0x22
	.long	.LASF612
	.byte	0x1
	.byte	0x48
	.long	0xd24
	.uleb128 0x9
	.byte	0x3
	.quad	current_live_regs
	.uleb128 0x22
	.long	.LASF613
	.byte	0x1
	.byte	0x4d
	.long	0xd24
	.uleb128 0x9
	.byte	0x3
	.quad	pending_dead_regs
	.uleb128 0x32
	.long	.LASF614
	.byte	0x4
	.byte	0x62
	.long	0x139
	.uleb128 0x12
	.long	0x455
	.long	0x2309
	.uleb128 0x13
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x32
	.long	.LASF125
	.byte	0x6
	.byte	0x34
	.long	0x2314
	.uleb128 0x14
	.long	0x22f9
	.uleb128 0x12
	.long	0x288
	.long	0x2329
	.uleb128 0x13
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x32
	.long	.LASF615
	.byte	0x6
	.byte	0x50
	.long	0x2334
	.uleb128 0x14
	.long	0x2319
	.uleb128 0x12
	.long	0x288
	.long	0x2349
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x32
	.long	.LASF616
	.byte	0x2
	.byte	0x36
	.long	0x2354
	.uleb128 0x14
	.long	0x2339
	.uleb128 0x12
	.long	0x2c1
	.long	0x2369
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x32
	.long	.LASF617
	.byte	0x2
	.byte	0x3c
	.long	0x2374
	.uleb128 0x14
	.long	0x2359
	.uleb128 0x12
	.long	0x2aa
	.long	0x2389
	.uleb128 0x13
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x32
	.long	.LASF618
	.byte	0x2
	.byte	0x3f
	.long	0x2394
	.uleb128 0x14
	.long	0x2379
	.uleb128 0x12
	.long	0x2aa
	.long	0x23a9
	.uleb128 0x13
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x33
	.long	.LASF619
	.byte	0x9
	.value	0x196
	.long	0x2399
	.uleb128 0x33
	.long	.LASF620
	.byte	0x9
	.value	0x1b0
	.long	0x2399
	.uleb128 0x33
	.long	.LASF621
	.byte	0x9
	.value	0x1b9
	.long	0xd24
	.uleb128 0x32
	.long	.LASF622
	.byte	0x8
	.byte	0xe4
	.long	0x139
	.uleb128 0x32
	.long	.LASF623
	.byte	0x8
	.byte	0xec
	.long	0x10c9
	.uleb128 0x33
	.long	.LASF624
	.byte	0xc
	.value	0x1e4
	.long	0x17c3
	.uleb128 0x32
	.long	.LASF625
	.byte	0xb
	.byte	0x9d
	.long	0x23fa
	.uleb128 0x3
	.byte	0x8
	.long	0x29d
	.uleb128 0x33
	.long	.LASF626
	.byte	0xf
	.value	0x244
	.long	0x139
	.uleb128 0x33
	.long	.LASF627
	.byte	0x10
	.value	0x1c0
	.long	0x139
	.uleb128 0x32
	.long	.LASF628
	.byte	0xe
	.byte	0x3a
	.long	0x2423
	.uleb128 0x3
	.byte	0x8
	.long	0x1892
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x25
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2d
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
.LASF324:
	.string	"REG_BR_PROB"
.LASF354:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF499:
	.string	"profile_label_no"
.LASF281:
	.string	"rtstr"
.LASF341:
	.string	"NOTE_INSN_DELETED"
.LASF209:
	.string	"UMOD"
.LASF263:
	.string	"min_align"
.LASF385:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF289:
	.string	"first"
.LASF493:
	.string	"inlinable"
.LASF525:
	.string	"uses_const_pool"
.LASF250:
	.string	"CONSTANT_P_RTX"
.LASF620:
	.string	"global_regs"
.LASF558:
	.string	"block"
.LASF541:
	.string	"MARK_SRC_DEST"
.LASF280:
	.string	"rtuint"
.LASF622:
	.string	"n_basic_blocks"
.LASF584:
	.string	"mark_set_resources"
.LASF284:
	.string	"rt_cselib"
.LASF153:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF498:
	.string	"inl_max_label_num"
.LASF213:
	.string	"LSHIFTRT"
.LASF578:
	.string	"jump_insn"
.LASF147:
	.string	"MATCH_PAR_DUP"
.LASF631:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF619:
	.string	"call_used_regs"
.LASF208:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF141:
	.string	"MATCH_OPERAND"
.LASF433:
	.string	"x_first_label_num"
.LASF122:
	.string	"CCFPmode"
.LASF63:
	.string	"reg_class"
.LASF230:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF268:
	.string	"max_after_base"
.LASF231:
	.string	"UNLT"
.LASF526:
	.string	"uses_pic_offset_table"
.LASF532:
	.string	"initial_value_struct"
.LASF422:
	.string	"probability"
.LASF94:
	.string	"CTImode"
.LASF378:
	.string	"next"
.LASF628:
	.string	"compiler_params"
.LASF575:
	.string	"jump_count"
.LASF92:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF551:
	.string	"PARAM_MAX_DELAY_SLOT_LIVE_SEARCH"
.LASF252:
	.string	"VEC_MERGE"
.LASF496:
	.string	"original_decl_initial"
.LASF387:
	.string	"uhint"
.LASF185:
	.string	"RETURN"
.LASF388:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF128:
	.string	"MODE_FLOAT"
.LASF577:
	.string	"scratch"
.LASF272:
	.string	"alias"
.LASF269:
	.string	"offset_unsigned"
.LASF98:
	.string	"V2SImode"
.LASF522:
	.string	"stdarg"
.LASF483:
	.string	"x_trampoline_list"
.LASF25:
	.string	"Q_REGS"
.LASF172:
	.string	"CODE_LABEL"
.LASF93:
	.string	"CDImode"
.LASF178:
	.string	"UNSPEC"
.LASF171:
	.string	"BARRIER"
.LASF347:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF174:
	.string	"COND_EXEC"
.LASF188:
	.string	"CONST_INT"
.LASF184:
	.string	"CALL"
.LASF50:
	.string	"maybe_vaarg"
.LASF504:
	.string	"epilogue_delay_list"
.LASF100:
	.string	"V4QImode"
.LASF163:
	.string	"ATTR"
.LASF304:
	.string	"count"
.LASF282:
	.string	"rttype"
.LASF617:
	.string	"rtx_format"
.LASF19:
	.string	"DREG"
.LASF294:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF371:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF99:
	.string	"V2DImode"
.LASF473:
	.string	"x_return_label"
.LASF414:
	.string	"varray_type"
.LASF277:
	.string	"mem_attrs"
.LASF399:
	.string	"refs"
.LASF318:
	.string	"REG_UNUSED"
.LASF559:
	.string	"bb_tick"
.LASF156:
	.string	"DEFINE_DELAY"
.LASF206:
	.string	"MINUS"
.LASF480:
	.string	"x_clobber_return_insn"
.LASF22:
	.string	"SIREG"
.LASF393:
	.string	"sched_info_tag"
.LASF196:
	.string	"STRICT_LOW_PART"
.LASF589:
	.string	"tinfo"
.LASF613:
	.string	"pending_dead_regs"
.LASF138:
	.string	"INCLUDE"
.LASF367:
	.string	"GR_FRAME_POINTER"
.LASF302:
	.string	"index"
.LASF400:
	.string	"freq"
.LASF234:
	.string	"ZERO_EXTEND"
.LASF237:
	.string	"FLOAT_TRUNCATE"
.LASF449:
	.string	"x_forced_labels"
.LASF601:
	.string	"init_resource_info"
.LASF364:
	.string	"GR_PC"
.LASF21:
	.string	"BREG"
.LASF109:
	.string	"V2SFmode"
.LASF407:
	.string	"varray_data"
.LASF534:
	.string	"machine_function"
.LASF238:
	.string	"FLOAT"
.LASF330:
	.string	"REG_EH_CONTEXT"
.LASF64:
	.string	"machine_mode"
.LASF544:
	.string	"param_info"
.LASF287:
	.string	"rtmem"
.LASF492:
	.string	"fixup_var_refs_queue"
.LASF247:
	.string	"RANGE_REG"
.LASF285:
	.string	"rtbit"
.LASF377:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF71:
	.string	"TImode"
.LASF223:
	.string	"PRE_MODIFY"
.LASF507:
	.string	"returns_pointer"
.LASF236:
	.string	"FLOAT_EXTEND"
.LASF397:
	.string	"last_note_uid"
.LASF452:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF342:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF69:
	.string	"SImode"
.LASF180:
	.string	"ADDR_VEC"
.LASF530:
	.string	"stmt_status"
.LASF110:
	.string	"V2DFmode"
.LASF262:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF276:
	.string	"align"
.LASF49:
	.string	"sse_regno"
.LASF291:
	.string	"indx"
.LASF500:
	.string	"machine"
.LASF199:
	.string	"SYMBOL_REF"
.LASF340:
	.string	"NOTE_INSN_BIAS"
.LASF362:
	.string	"NOTE_INSN_MAX"
.LASF447:
	.string	"x_saveregs_value"
.LASF152:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF204:
	.string	"COMPARE"
.LASF232:
	.string	"LTGT"
.LASF427:
	.string	"unsignedp"
.LASF244:
	.string	"HIGH"
.LASF201:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF70:
	.string	"DImode"
.LASF576:
	.string	"needed"
.LASF383:
	.string	"const_equiv_data"
.LASF466:
	.string	"hard_reg_initial_vals"
.LASF445:
	.string	"x_inhibit_defer_pop"
.LASF105:
	.string	"V8HImode"
.LASF222:
	.string	"POST_INC"
.LASF83:
	.string	"TFmode"
.LASF56:
	.string	"unsigned char"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF450:
	.string	"x_pending_chain"
.LASF580:
	.string	"target_set"
.LASF465:
	.string	"cannot_inline"
.LASF404:
	.string	"basic_block"
.LASF66:
	.string	"BImode"
.LASF220:
	.string	"PRE_INC"
.LASF317:
	.string	"REG_NO_CONFLICT"
.LASF80:
	.string	"SFmode"
.LASF453:
	.string	"emit"
.LASF169:
	.string	"JUMP_INSN"
.LASF299:
	.string	"cond_local_set"
.LASF573:
	.string	"target"
.LASF423:
	.string	"edge"
.LASF132:
	.string	"MODE_COMPLEX_FLOAT"
.LASF605:
	.string	"incr_ticks_for_insn"
.LASF286:
	.string	"rttree"
.LASF595:
	.string	"bit_num_"
.LASF339:
	.string	"insn_note"
.LASF358:
	.string	"NOTE_INSN_RANGE_END"
.LASF151:
	.string	"DEFINE_SPLIT"
.LASF514:
	.string	"has_nonlocal_goto"
.LASF528:
	.string	"arg_pointer_save_area_init"
.LASF547:
	.string	"help"
.LASF190:
	.string	"CONST_VECTOR"
.LASF148:
	.string	"MATCH_INSN"
.LASF474:
	.string	"x_save_expr_regs"
.LASF81:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF416:
	.string	"gcov_type"
.LASF54:
	.string	"size_t"
.LASF182:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF457:
	.string	"pops_args"
.LASF75:
	.string	"PSImode"
.LASF476:
	.string	"x_rtl_expr_chain"
.LASF246:
	.string	"RANGE_INFO"
.LASF572:
	.string	"find_dead_or_set_registers"
.LASF384:
	.string	"rtunion_def"
.LASF162:
	.string	"DEFINE_ATTR"
.LASF164:
	.string	"SET_ATTR"
.LASF89:
	.string	"TCmode"
.LASF468:
	.string	"x_nonlocal_labels"
.LASF239:
	.string	"UNSIGNED_FLOAT"
.LASF329:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF392:
	.string	"cselib_val_struct"
.LASF361:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF211:
	.string	"ROTATE"
.LASF297:
	.string	"succ"
.LASF235:
	.string	"TRUNCATE"
.LASF322:
	.string	"REG_DEP_ANTI"
.LASF86:
	.string	"SCmode"
.LASF616:
	.string	"rtx_length"
.LASF372:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF76:
	.string	"PDImode"
.LASF343:
	.string	"NOTE_INSN_BLOCK_END"
.LASF382:
	.string	"bitmap"
.LASF561:
	.string	"last_regno"
.LASF352:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF618:
	.string	"rtx_class"
.LASF570:
	.string	"link"
.LASF306:
	.string	"flags"
.LASF442:
	.string	"x_regno_reg_rtx"
.LASF139:
	.string	"EXPR_LIST"
.LASF166:
	.string	"EQ_ATTR"
.LASF119:
	.string	"CCGOCmode"
.LASF197:
	.string	"CONCAT"
.LASF418:
	.string	"pred_next"
.LASF265:
	.string	"min_after_vec"
.LASF610:
	.string	"target_hash_table"
.LASF203:
	.string	"COND"
.LASF129:
	.string	"MODE_PARTIAL_INT"
.LASF484:
	.string	"x_parm_birth_insn"
.LASF486:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF539:
	.string	"regs"
.LASF87:
	.string	"DCmode"
.LASF154:
	.string	"DEFINE_COMBINE"
.LASF629:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF478:
	.string	"x_tail_recursion_reentry"
.LASF212:
	.string	"ASHIFTRT"
.LASF612:
	.string	"current_live_regs"
.LASF117:
	.string	"CCmode"
.LASF295:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF345:
	.string	"NOTE_INSN_LOOP_END"
.LASF115:
	.string	"V16SFmode"
.LASF359:
	.string	"NOTE_INSN_LIVE"
.LASF159:
	.string	"DEFINE_COND_EXEC"
.LASF424:
	.string	"var_refs_queue"
.LASF446:
	.string	"x_stack_pointer_delta"
.LASF557:
	.string	"live_regs"
.LASF155:
	.string	"DEFINE_EXPAND"
.LASF517:
	.string	"is_thunk"
.LASF593:
	.string	"ptr_"
.LASF410:
	.string	"elements_used"
.LASF106:
	.string	"V8SImode"
.LASF470:
	.string	"x_nonlocal_goto_handler_labels"
.LASF607:
	.string	"trial"
.LASF168:
	.string	"INSN"
.LASF279:
	.string	"rtint"
.LASF198:
	.string	"LABEL_REF"
.LASF321:
	.string	"REG_LABEL"
.LASF406:
	.string	"elt_list"
.LASF309:
	.string	"REG_DEAD"
.LASF349:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF533:
	.string	"temp_slot"
.LASF615:
	.string	"mode_size"
.LASF312:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF415:
	.string	"regset"
.LASF118:
	.string	"CCGCmode"
.LASF301:
	.string	"global_live_at_end"
.LASF621:
	.string	"regs_invalidated_by_call"
.LASF194:
	.string	"SCRATCH"
.LASF104:
	.string	"V8QImode"
.LASF107:
	.string	"V8DImode"
.LASF135:
	.string	"MAX_MODE_CLASS"
.LASF596:
	.string	"word_num_"
.LASF611:
	.string	"bb_ticks"
.LASF233:
	.string	"SIGN_EXTEND"
.LASF509:
	.string	"calls_setjmp"
.LASF579:
	.string	"this_jump_insn"
.LASF546:
	.string	"value"
.LASF255:
	.string	"VEC_DUPLICATE"
.LASF471:
	.string	"x_nonlocal_goto_stack_level"
.LASF464:
	.string	"internal_arg_pointer"
.LASF273:
	.string	"expr"
.LASF355:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF567:
	.string	"format_ptr"
.LASF608:
	.string	"start_of_epilogue_needs"
.LASF469:
	.string	"x_nonlocal_goto_handler_slots"
.LASF113:
	.string	"V8SFmode"
.LASF630:
	.string	"resource.c"
.LASF562:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF320:
	.string	"REG_CC_USER"
.LASF177:
	.string	"ASM_OPERANDS"
.LASF489:
	.string	"x_temp_slot_level"
.LASF121:
	.string	"CCZmode"
.LASF346:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF565:
	.string	"next_insn_no_annul"
.LASF27:
	.string	"INDEX_REGS"
.LASF599:
	.string	"real_insn"
.LASF594:
	.string	"indx_"
.LASF515:
	.string	"contains_functions"
.LASF454:
	.string	"varasm"
.LASF335:
	.string	"REG_NON_LOCAL_GOTO"
.LASF181:
	.string	"ADDR_DIFF_VEC"
.LASF592:
	.string	"stop_insn"
.LASF571:
	.string	"slot_pat"
.LASF519:
	.string	"profile"
.LASF538:
	.string	"unch_memory"
.LASF243:
	.string	"ZERO_EXTRACT"
.LASF386:
	.string	"hint"
.LASF176:
	.string	"ASM_INPUT"
.LASF226:
	.string	"ORDERED"
.LASF114:
	.string	"V8DFmode"
.LASF426:
	.string	"promoted_mode"
.LASF409:
	.string	"num_elements"
.LASF240:
	.string	"UNSIGNED_FIX"
.LASF506:
	.string	"returns_pcc_struct"
.LASF556:
	.string	"target_info"
.LASF47:
	.string	"sse_words"
.LASF29:
	.string	"GENERAL_REGS"
.LASF627:
	.string	"current_function_sp_is_unchanging"
.LASF536:
	.string	"resources"
.LASF412:
	.string	"name"
.LASF140:
	.string	"INSN_LIST"
.LASF248:
	.string	"RANGE_VAR"
.LASF405:
	.string	"changes_mode"
.LASF127:
	.string	"MODE_INT"
.LASF411:
	.string	"element_size"
.LASF461:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF46:
	.string	"regno"
.LASF443:
	.string	"expr_status"
.LASF550:
	.string	"PARAM_MAX_DELAY_SLOT_INSN_SEARCH"
.LASF513:
	.string	"has_nonlocal_label"
.LASF249:
	.string	"RANGE_LIVE"
.LASF444:
	.string	"x_pending_stack_adjust"
.LASF97:
	.string	"V2HImode"
.LASF458:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF548:
	.string	"compiler_param"
.LASF391:
	.string	"const_equiv"
.LASF396:
	.string	"last_uid"
.LASF283:
	.string	"rt_addr_diff_vec_flags"
.LASF369:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF258:
	.string	"SS_MINUS"
.LASF145:
	.string	"MATCH_PARALLEL"
.LASF102:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF564:
	.string	"find_basic_block"
.LASF311:
	.string	"REG_EQUIV"
.LASF581:
	.string	"target_res"
.LASF57:
	.string	"short unsigned int"
.LASF58:
	.string	"signed char"
.LASF144:
	.string	"MATCH_OPERATOR"
.LASF582:
	.string	"fallthrough_res"
.LASF408:
	.string	"varray_head_tag"
.LASF290:
	.string	"current"
.LASF436:
	.string	"x_cur_insn_uid"
.LASF485:
	.string	"x_last_parm_insn"
.LASF591:
	.string	"start_insn"
.LASF260:
	.string	"SS_TRUNCATE"
.LASF325:
	.string	"REG_EXEC_COUNT"
.LASF494:
	.string	"no_debugging_symbols"
.LASF264:
	.string	"base_after_vec"
.LASF149:
	.string	"DEFINE_INSN"
.LASF103:
	.string	"V4DImode"
.LASF303:
	.string	"loop_depth"
.LASF602:
	.string	"epilogue_insn"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF609:
	.string	"end_of_function_needs"
.LASF537:
	.string	"memory"
.LASF542:
	.string	"MARK_SRC_DEST_CALL"
.LASF370:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF438:
	.string	"x_last_filename"
.LASF323:
	.string	"REG_DEP_OUTPUT"
.LASF158:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF259:
	.string	"US_MINUS"
.LASF463:
	.string	"return_rtx"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF242:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF402:
	.string	"live_length"
.LASF183:
	.string	"CLOBBER"
.LASF417:
	.string	"edge_def"
.LASF437:
	.string	"x_last_linenum"
.LASF133:
	.string	"MODE_VECTOR_INT"
.LASF327:
	.string	"REG_SAVE_AREA"
.LASF251:
	.string	"CALL_PLACEHOLDER"
.LASF451:
	.string	"function"
.LASF111:
	.string	"V4SFmode"
.LASF518:
	.string	"instrument_entry_exit"
.LASF481:
	.string	"x_frame_offset"
.LASF205:
	.string	"PLUS"
.LASF221:
	.string	"POST_DEC"
.LASF380:
	.string	"bits"
.LASF68:
	.string	"HImode"
.LASF307:
	.string	"rtunion"
.LASF348:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF131:
	.string	"MODE_COMPLEX_INT"
.LASF529:
	.string	"eh_status"
.LASF428:
	.string	"sequence_stack"
.LASF53:
	.string	"long int"
.LASF374:
	.string	"GR_VIRTUAL_CFA"
.LASF623:
	.string	"basic_block_info"
.LASF313:
	.string	"REG_WAS_0"
.LASF334:
	.string	"REG_NORETURN"
.LASF82:
	.string	"XFmode"
.LASF508:
	.string	"needs_context"
.LASF333:
	.string	"REG_MAYBE_DEAD"
.LASF112:
	.string	"V4DFmode"
.LASF625:
	.string	"reg_renumber"
.LASF4:
	.string	"unchanging"
.LASF308:
	.string	"reg_note"
.LASF512:
	.string	"calls_eh_return"
.LASF491:
	.string	"x_target_temp_slot_level"
.LASF459:
	.string	"pretend_args_size"
.LASF136:
	.string	"rtx_code"
.LASF51:
	.string	"CUMULATIVE_ARGS"
.LASF429:
	.string	"last"
.LASF521:
	.string	"varargs"
.LASF20:
	.string	"CREG"
.LASF563:
	.string	"search_limit"
.LASF583:
	.string	"mark_referenced_resources"
.LASF523:
	.string	"x_whole_function_mode_p"
.LASF137:
	.string	"UNKNOWN"
.LASF179:
	.string	"UNSPEC_VOLATILE"
.LASF535:
	.string	"language_function"
.LASF560:
	.string	"first_regno"
.LASF351:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF55:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF78:
	.string	"HFmode"
.LASF497:
	.string	"inl_last_parm_insn"
.LASF186:
	.string	"TRAP_IF"
.LASF401:
	.string	"deaths"
.LASF331:
	.string	"REG_EH_REGION"
.LASF634:
	.string	"restart"
.LASF314:
	.string	"REG_RETVAL"
.LASF90:
	.string	"CQImode"
.LASF60:
	.string	"char"
.LASF505:
	.string	"returns_struct"
.LASF88:
	.string	"XCmode"
.LASF479:
	.string	"x_arg_pointer_save_area"
.LASF18:
	.string	"AREG"
.LASF598:
	.string	"mask_"
.LASF477:
	.string	"x_tail_recursion_label"
.LASF503:
	.string	"language"
.LASF214:
	.string	"ROTATERT"
.LASF200:
	.string	"ADDRESSOF"
.LASF336:
	.string	"REG_SETJMP"
.LASF96:
	.string	"V2QImode"
.LASF432:
	.string	"x_reg_rtx_no"
.LASF74:
	.string	"PHImode"
.LASF425:
	.string	"modified"
.LASF441:
	.string	"regno_decl"
.LASF394:
	.string	"reg_info_def"
.LASF95:
	.string	"COImode"
.LASF219:
	.string	"PRE_DEC"
.LASF350:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF368:
	.string	"GR_HARD_FRAME_POINTER"
.LASF319:
	.string	"REG_CC_SETTER"
.LASF511:
	.string	"calls_alloca"
.LASF574:
	.string	"jump_target"
.LASF588:
	.string	"mark_target_live_regs"
.LASF490:
	.string	"x_var_temp_slot_level"
.LASF126:
	.string	"MODE_RANDOM"
.LASF257:
	.string	"US_PLUS"
.LASF116:
	.string	"BLKmode"
.LASF85:
	.string	"HCmode"
.LASF633:
	.string	"update_live_status"
.LASF553:
	.string	"PARAM_MAX_GCSE_MEMORY"
.LASF191:
	.string	"CONST_STRING"
.LASF254:
	.string	"VEC_CONCAT"
.LASF275:
	.string	"size"
.LASF566:
	.string	"include_delayed_effects"
.LASF266:
	.string	"max_after_vec"
.LASF326:
	.string	"REG_NOALIAS"
.LASF167:
	.string	"ATTR_FLAG"
.LASF123:
	.string	"CCFPUmode"
.LASF586:
	.string	"mark_type"
.LASF310:
	.string	"REG_INC"
.LASF157:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF569:
	.string	"seq_size"
.LASF482:
	.string	"x_context_display"
.LASF161:
	.string	"ADDRESS"
.LASF421:
	.string	"insns"
.LASF495:
	.string	"original_arg_vector"
.LASF527:
	.string	"uses_eh_lsda"
.LASF389:
	.string	"cptr"
.LASF603:
	.string	"free_resource_info"
.LASF288:
	.string	"bitmap_head_def"
.LASF604:
	.string	"clear_hashed_info_for_insn"
.LASF403:
	.string	"calls_crossed"
.LASF261:
	.string	"US_TRUNCATE"
.LASF363:
	.string	"global_rtl_index"
.LASF45:
	.string	"nregs"
.LASF256:
	.string	"SS_PLUS"
.LASF218:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF270:
	.string	"scale"
.LASF67:
	.string	"QImode"
.LASF614:
	.string	"target_flags"
.LASF413:
	.string	"data"
.LASF366:
	.string	"GR_STACK_POINTER"
.LASF79:
	.string	"TQFmode"
.LASF597:
	.string	"word_"
.LASF293:
	.string	"head"
.LASF44:
	.string	"words"
.LASF267:
	.string	"min_after_base"
.LASF390:
	.string	"sched"
.LASF524:
	.string	"x_dont_save_pending_sizes_p"
.LASF43:
	.string	"ix86_args"
.LASF17:
	.string	"NO_REGS"
.LASF624:
	.string	"cfun"
.LASF460:
	.string	"outgoing_args_size"
.LASF72:
	.string	"OImode"
.LASF332:
	.string	"REG_SAVE_NOTE"
.LASF216:
	.string	"SMAX"
.LASF375:
	.string	"GR_MAX"
.LASF253:
	.string	"VEC_SELECT"
.LASF552:
	.string	"PARAM_MAX_PENDING_LIST_LENGTH"
.LASF316:
	.string	"REG_NONNEG"
.LASF501:
	.string	"stack_alignment_needed"
.LASF431:
	.string	"emit_status"
.LASF134:
	.string	"MODE_VECTOR_FLOAT"
.LASF224:
	.string	"POST_MODIFY"
.LASF328:
	.string	"REG_BR_PRED"
.LASF150:
	.string	"DEFINE_PEEPHOLE"
.LASF61:
	.string	"long long unsigned int"
.LASF357:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF274:
	.string	"offset"
.LASF271:
	.string	"addr_diff_vec_flags"
.LASF146:
	.string	"MATCH_OP_DUP"
.LASF160:
	.string	"SEQUENCE"
.LASF77:
	.string	"QFmode"
.LASF398:
	.string	"sets"
.LASF462:
	.string	"args_info"
.LASF555:
	.string	"LAST_PARAM"
.LASF520:
	.string	"limit_stack"
.LASF187:
	.string	"RESX"
.LASF420:
	.string	"dest"
.LASF175:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF225:
	.string	"UNORDERED"
.LASF124:
	.string	"MAX_MACHINE_MODE"
.LASF300:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF142:
	.string	"MATCH_SCRATCH"
.LASF192:
	.string	"CONST"
.LASF440:
	.string	"regno_pointer_align"
.LASF241:
	.string	"SQRT"
.LASF365:
	.string	"GR_CC0"
.LASF125:
	.string	"mode_class"
.LASF207:
	.string	"MULT"
.LASF130:
	.string	"MODE_CC"
.LASF298:
	.string	"local_set"
.LASF73:
	.string	"PQImode"
.LASF430:
	.string	"sequence_rtl_expr"
.LASF488:
	.string	"x_temp_slots"
.LASF475:
	.string	"x_stack_slot_list"
.LASF487:
	.string	"x_parm_reg_stack_loc"
.LASF170:
	.string	"CALL_INSN"
.LASF195:
	.string	"SUBREG"
.LASF510:
	.string	"calls_longjmp"
.LASF108:
	.string	"V16QImode"
.LASF337:
	.string	"REG_ALWAYS_RETURN"
.LASF455:
	.string	"decl"
.LASF62:
	.string	"long long int"
.LASF315:
	.string	"REG_LIBCALL"
.LASF84:
	.string	"QCmode"
.LASF193:
	.string	"VALUE"
.LASF173:
	.string	"NOTE"
.LASF48:
	.string	"sse_nregs"
.LASF217:
	.string	"UMIN"
.LASF143:
	.string	"MATCH_DUP"
.LASF376:
	.string	"HARD_REG_ELT_TYPE"
.LASF540:
	.string	"mark_resource_type"
.LASF292:
	.string	"basic_block_def"
.LASF545:
	.string	"option"
.LASF531:
	.string	"varasm_status"
.LASF7:
	.string	"used"
.LASF344:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF381:
	.string	"bitmap_element"
.LASF467:
	.string	"x_function_call_count"
.LASF543:
	.string	"MARK_DEST"
.LASF91:
	.string	"CHImode"
.LASF360:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF165:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF439:
	.string	"regno_pointer_align_length"
.LASF434:
	.string	"x_first_insn"
.LASF448:
	.string	"x_apply_args_value"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF189:
	.string	"CONST_DOUBLE"
.LASF395:
	.string	"first_uid"
.LASF120:
	.string	"CCNOmode"
.LASF101:
	.string	"V4HImode"
.LASF554:
	.string	"PARAM_MAX_GCSE_PASSES"
.LASF227:
	.string	"UNEQ"
.LASF210:
	.string	"ASHIFT"
.LASF215:
	.string	"SMIN"
.LASF587:
	.string	"__FUNCTION__"
.LASF585:
	.string	"in_dest"
.LASF202:
	.string	"IF_THEN_ELSE"
.LASF606:
	.string	"mark_end_of_function_resources"
.LASF626:
	.string	"frame_pointer_needed"
.LASF590:
	.string	"regs_live"
.LASF356:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF456:
	.string	"outer"
.LASF353:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF52:
	.string	"unsigned int"
.LASF632:
	.string	"tree_node"
.LASF472:
	.string	"x_cleanup_label"
.LASF228:
	.string	"UNGE"
.LASF59:
	.string	"short int"
.LASF296:
	.string	"pred"
.LASF229:
	.string	"UNGT"
.LASF516:
	.string	"has_computed_jump"
.LASF435:
	.string	"x_last_insn"
.LASF379:
	.string	"prev"
.LASF502:
	.string	"preferred_stack_boundary"
.LASF65:
	.string	"VOIDmode"
.LASF338:
	.string	"REG_VTABLE_REF"
.LASF549:
	.string	"PARAM_MAX_INLINE_INSNS"
.LASF373:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF245:
	.string	"LO_SUM"
.LASF568:
	.string	"sequence"
.LASF600:
	.string	"new_resources"
.LASF305:
	.string	"frequency"
.LASF278:
	.string	"rtwint"
.LASF419:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
