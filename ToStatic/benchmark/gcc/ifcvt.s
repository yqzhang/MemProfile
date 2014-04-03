	.file	"ifcvt.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 ifcvt.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	num_possible_if_blocks
	.comm	num_possible_if_blocks,4,4
	.local	num_updated_if_blocks
	.comm	num_updated_if_blocks,4,4
	.local	num_removed_blocks
	.comm	num_removed_blocks,4,4
	.local	life_data_ok
	.comm	life_data_ok,1,1
	.local	post_dominators
	.comm	post_dominators,8,8
	.type	count_bb_insns, @function
count_bb_insns:
.LFB2:
	.file 1 "ifcvt.c"
	.loc 1 129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# bb, bb
	.loc 1 130 0
	movl	$0, -12(%rbp)	#, count
	.loc 1 131 0
	movq	-24(%rbp), %rax	# bb, tmp64
	movq	(%rax), %rax	# bb_5(D)->head, tmp65
	movq	%rax, -8(%rbp)	# tmp65, insn
.L6:
	.loc 1 135 0
	movq	-8(%rbp), %rax	# insn, tmp66
	movzwl	(%rax), %eax	# insn_3->code, D.14153
	cmpw	$34, %ax	#, D.14153
	je	.L2	#,
	.loc 1 135 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp67
	movzwl	(%rax), %eax	# insn_3->code, D.14153
	cmpw	$32, %ax	#, D.14153
	jne	.L3	#,
.L2:
	.loc 1 136 0 is_stmt 1
	addl	$1, -12(%rbp)	#, count
.L3:
	.loc 1 138 0
	movq	-24(%rbp), %rax	# bb, tmp68
	movq	8(%rax), %rax	# bb_5(D)->end, D.14154
	cmpq	-8(%rbp), %rax	# insn, D.14154
	jne	.L4	#,
	.loc 1 139 0
	jmp	.L8	#
.L4:
	.loc 1 140 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp70
	movq	%rax, -8(%rbp)	# tmp70, insn
	.loc 1 141 0
	jmp	.L6	#
.L8:
	.loc 1 143 0
	movl	-12(%rbp), %eax	# count, D.14155
	.loc 1 144 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	count_bb_insns, .-count_bb_insns
	.type	first_active_insn, @function
first_active_insn:
.LFB3:
	.loc 1 151 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# bb, bb
	.loc 1 152 0
	movq	-24(%rbp), %rax	# bb, tmp66
	movq	(%rax), %rax	# bb_4(D)->head, tmp67
	movq	%rax, -8(%rbp)	# tmp67, insn
	.loc 1 154 0
	movq	-8(%rbp), %rax	# insn, tmp68
	movzwl	(%rax), %eax	# insn_5->code, D.14157
	cmpw	$36, %ax	#, D.14157
	jne	.L10	#,
	.loc 1 156 0
	movq	-24(%rbp), %rax	# bb, tmp69
	movq	8(%rax), %rax	# bb_4(D)->end, D.14158
	cmpq	-8(%rbp), %rax	# insn, D.14158
	jne	.L11	#,
	.loc 1 157 0
	movl	$0, %eax	#, D.14156
	jmp	.L12	#
.L11:
	.loc 1 158 0
	movq	-8(%rbp), %rax	# insn, tmp70
	movq	24(%rax), %rax	# insn_5->fld[2].rtx, tmp71
	movq	%rax, -8(%rbp)	# tmp71, insn
	.loc 1 161 0
	jmp	.L13	#
.L10:
	jmp	.L13	#
.L15:
	.loc 1 163 0
	movq	-24(%rbp), %rax	# bb, tmp72
	movq	8(%rax), %rax	# bb_4(D)->end, D.14158
	cmpq	-8(%rbp), %rax	# insn, D.14158
	jne	.L14	#,
	.loc 1 164 0
	movl	$0, %eax	#, D.14156
	jmp	.L12	#
.L14:
	.loc 1 165 0
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp74
	movq	%rax, -8(%rbp)	# tmp74, insn
.L13:
	.loc 1 161 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp75
	movzwl	(%rax), %eax	# insn_2->code, D.14157
	cmpw	$37, %ax	#, D.14157
	je	.L15	#,
	.loc 1 168 0
	movq	-8(%rbp), %rax	# insn, tmp76
	movzwl	(%rax), %eax	# insn_2->code, D.14157
	cmpw	$33, %ax	#, D.14157
	jne	.L16	#,
	.loc 1 169 0
	movl	$0, %eax	#, D.14156
	jmp	.L12	#
.L16:
	.loc 1 171 0
	movq	-8(%rbp), %rax	# insn, D.14156
.L12:
	.loc 1 172 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	first_active_insn, .-first_active_insn
	.type	last_active_insn_p, @function
last_active_insn_p:
.LFB4:
	.loc 1 180 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# bb, bb
	movq	%rsi, -16(%rbp)	# insn, insn
.L20:
	.loc 1 183 0
	movq	-8(%rbp), %rax	# bb, tmp65
	movq	8(%rax), %rax	# bb_4(D)->end, D.14160
	cmpq	-16(%rbp), %rax	# insn, D.14160
	jne	.L18	#,
	.loc 1 184 0
	movl	$1, %eax	#, D.14159
	jmp	.L19	#
.L18:
	.loc 1 185 0
	movq	-16(%rbp), %rax	# insn, tmp66
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp67
	movq	%rax, -16(%rbp)	# tmp67, insn
	.loc 1 187 0
	movq	-16(%rbp), %rax	# insn, tmp68
	movzwl	(%rax), %eax	# insn_7->code, D.14161
	cmpw	$37, %ax	#, D.14161
	je	.L20	#,
	.loc 1 189 0
	movq	-16(%rbp), %rax	# insn, tmp69
	movzwl	(%rax), %eax	# insn_7->code, D.14161
	cmpw	$33, %ax	#, D.14161
	sete	%al	#, D.14162
	movzbl	%al, %eax	# D.14162, D.14159
.L19:
	.loc 1 190 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	last_active_insn_p, .-last_active_insn_p
	.type	seq_contains_jump, @function
seq_contains_jump:
.LFB5:
	.loc 1 200 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 201 0
	jmp	.L22	#
.L25:
	.loc 1 203 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movzwl	(%rax), %eax	# insn_1->code, D.14164
	cmpw	$33, %ax	#, D.14164
	jne	.L23	#,
	.loc 1 204 0
	movl	$1, %eax	#, D.14163
	jmp	.L24	#
.L23:
	.loc 1 205 0
	movq	-8(%rbp), %rax	# insn, tmp63
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp64
	movq	%rax, -8(%rbp)	# tmp64, insn
.L22:
	.loc 1 201 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L25	#,
	.loc 1 207 0
	movl	$0, %eax	#, D.14163
.L24:
	.loc 1 208 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	seq_contains_jump, .-seq_contains_jump
	.section	.rodata
.LC0:
	.string	"ifcvt.c"
	.text
	.type	cond_exec_process_insns, @function
cond_exec_process_insns:
.LFB6:
	.loc 1 221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# start, start
	movq	%rsi, -48(%rbp)	# end, end
	movq	%rdx, -56(%rbp)	# test, test
	movq	%rcx, -64(%rbp)	# prob_val, prob_val
	movl	%r8d, -68(%rbp)	# mod_ok, mod_ok
	.loc 1 222 0
	movl	$0, -20(%rbp)	#, must_be_last
	.loc 1 226 0
	movq	-40(%rbp), %rax	# start, tmp75
	movq	%rax, -16(%rbp)	# tmp75, insn
.L37:
	.loc 1 228 0
	movq	-16(%rbp), %rax	# insn, tmp76
	movzwl	(%rax), %eax	# insn_4->code, D.14166
	cmpw	$37, %ax	#, D.14166
	jne	.L27	#,
	.loc 1 229 0
	jmp	.L28	#
.L27:
	.loc 1 231 0
	movq	-16(%rbp), %rax	# insn, tmp77
	movzwl	(%rax), %eax	# insn_4->code, D.14166
	cmpw	$32, %ax	#, D.14166
	je	.L29	#,
	.loc 1 231 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp78
	movzwl	(%rax), %eax	# insn_4->code, D.14166
	cmpw	$34, %ax	#, D.14166
	je	.L29	#,
	.loc 1 232 0 is_stmt 1
	movl	$__FUNCTION__.11357, %edx	#,
	movl	$232, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L29:
	.loc 1 235 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.0
	testl	%eax, %eax	# reload_completed.0
	je	.L30	#,
	.loc 1 235 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp79
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.14167
	movzwl	(%rax), %eax	# _13->code, D.14166
	cmpw	$48, %ax	#, D.14166
	jne	.L30	#,
	.loc 1 239 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp80
	movw	$37, (%rax)	#, insn_4->code
	.loc 1 240 0
	movq	-16(%rbp), %rax	# insn, tmp81
	movl	$-99, 40(%rax)	#, insn_4->fld[4].rtint
	.loc 1 241 0
	movq	-16(%rbp), %rax	# insn, tmp82
	movq	$0, 32(%rax)	#, insn_4->fld[3].rtstr
	.loc 1 242 0
	jmp	.L28	#
.L30:
	.loc 1 246 0
	cmpl	$0, -20(%rbp)	#, must_be_last
	je	.L31	#,
	.loc 1 247 0
	movl	$0, %eax	#, D.14165
	jmp	.L32	#
.L31:
	.loc 1 249 0
	movq	-16(%rbp), %rdx	# insn, tmp83
	movq	-56(%rbp), %rax	# test, tmp84
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	modified_in_p	#
	testl	%eax, %eax	# D.14165
	je	.L33	#,
	.loc 1 251 0
	cmpl	$0, -68(%rbp)	#, mod_ok
	jne	.L34	#,
	.loc 1 252 0
	movl	$0, %eax	#, D.14165
	jmp	.L32	#
.L34:
	.loc 1 253 0
	movl	$1, -20(%rbp)	#, must_be_last
.L33:
	.loc 1 257 0
	movq	-16(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, tmp86
	movq	%rax, -8(%rbp)	# tmp86, pattern
	.loc 1 268 0
	movq	-56(%rbp), %rax	# test, tmp87
	movq	%rax, %rdi	# tmp87,
	call	copy_rtx	#
	movq	-8(%rbp), %rdx	# pattern, tmp88
	movq	%rdx, %rcx	# tmp88,
	movq	%rax, %rdx	# D.14167,
	movl	$0, %esi	#,
	movl	$38, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.14167
	movq	-16(%rbp), %rax	# insn, tmp89
	leaq	32(%rax), %rsi	#, D.14168
	movq	-16(%rbp), %rax	# insn, tmp90
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp90,
	call	validate_change	#
	.loc 1 272 0
	movq	-16(%rbp), %rax	# insn, tmp91
	movzwl	(%rax), %eax	# insn_4->code, D.14166
	cmpw	$34, %ax	#, D.14166
	jne	.L28	#,
	.loc 1 272 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, prob_val
	je	.L28	#,
	.loc 1 273 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp92
	movq	56(%rax), %rdx	# insn_4->fld[6].rtx, D.14167
	movq	-64(%rbp), %rax	# prob_val, tmp93
	movq	%rax, %rsi	# tmp93,
	movl	$16, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	%rax, %rdx	#, D.14167
	movq	-16(%rbp), %rax	# insn, tmp94
	leaq	56(%rax), %rsi	#, D.14168
	movq	-16(%rbp), %rax	# insn, tmp95
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp95,
	call	validate_change	#
.L28:
	.loc 1 278 0
	movq	-16(%rbp), %rax	# insn, tmp96
	cmpq	-48(%rbp), %rax	# end, tmp96
	jne	.L35	#,
	.loc 1 279 0
	nop
	.loc 1 282 0
	movl	$1, %eax	#, D.14165
	jmp	.L32	#
.L35:
	.loc 1 226 0
	movq	-16(%rbp), %rax	# insn, tmp97
	movq	24(%rax), %rax	# insn_4->fld[2].rtx, tmp98
	movq	%rax, -16(%rbp)	# tmp98, insn
	.loc 1 280 0
	jmp	.L37	#
.L32:
	.loc 1 283 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cond_exec_process_insns, .-cond_exec_process_insns
	.type	cond_exec_get_condition, @function
cond_exec_get_condition:
.LFB7:
	.loc 1 290 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# jump, jump
	.loc 1 293 0
	movq	-40(%rbp), %rax	# jump, tmp72
	movq	%rax, %rdi	# tmp72,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.14171
	je	.L39	#,
	.loc 1 294 0
	movq	-40(%rbp), %rax	# jump, tmp73
	movq	%rax, %rdi	# tmp73,
	call	pc_set	#
	movq	16(%rax), %rax	# _5->fld[1].rtx, tmp74
	movq	%rax, -8(%rbp)	# tmp74, test_if
	.loc 1 297 0
	movq	-8(%rbp), %rax	# test_if, tmp75
	movq	8(%rax), %rax	# test_if_6->fld[0].rtx, tmp76
	movq	%rax, -16(%rbp)	# tmp76, cond
	.loc 1 301 0
	movq	-8(%rbp), %rax	# test_if, tmp77
	movq	24(%rax), %rax	# test_if_6->fld[2].rtx, D.14172
	movzwl	(%rax), %eax	# _8->code, D.14173
	cmpw	$67, %ax	#, D.14173
	jne	.L42	#,
	jmp	.L44	#
.L39:
	.loc 1 296 0
	movl	$0, %eax	#, D.14170
	jmp	.L41	#
.L44:
	.loc 1 302 0
	movq	-8(%rbp), %rax	# test_if, tmp78
	movq	24(%rax), %rax	# test_if_6->fld[2].rtx, D.14172
	movq	8(%rax), %rdx	# _10->fld[0].rtx, D.14172
	movq	-40(%rbp), %rax	# jump, tmp79
	movq	64(%rax), %rax	# jump_3(D)->fld[7].rtx, D.14172
	cmpq	%rax, %rdx	# D.14172, D.14172
	jne	.L42	#,
.LBB2:
	.loc 1 304 0
	movq	-40(%rbp), %rdx	# jump, tmp80
	movq	-16(%rbp), %rax	# cond, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	reversed_comparison_code	#
	movl	%eax, -20(%rbp)	# tmp82, rev
	.loc 1 305 0
	cmpl	$0, -20(%rbp)	#, rev
	jne	.L43	#,
	.loc 1 306 0
	movl	$0, %eax	#, D.14170
	jmp	.L41	#
.L43:
	.loc 1 308 0
	movq	-16(%rbp), %rax	# cond, tmp83
	movq	16(%rax), %rcx	# cond_7->fld[1].rtx, D.14172
	movq	-16(%rbp), %rax	# cond, tmp84
	movq	8(%rax), %rdx	# cond_7->fld[0].rtx, D.14172
	movq	-16(%rbp), %rax	# cond, tmp85
	movzbl	2(%rax), %eax	# cond_7->mode, D.14174
	movzbl	%al, %esi	# D.14174, D.14175
	movl	-20(%rbp), %eax	# rev, tmp86
	movl	%eax, %edi	# tmp86,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -16(%rbp)	# tmp87, cond
.L42:
.LBE2:
	.loc 1 312 0
	movq	-16(%rbp), %rax	# cond, D.14170
.L41:
	.loc 1 313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	cond_exec_get_condition, .-cond_exec_get_condition
	.section	.rodata
.LC1:
	.string	" was"
.LC2:
	.string	"s were"
	.align 8
.LC3:
	.string	"%d insn%s converted to conditional execution.\n"
	.text
	.type	cond_exec_process_if_block, @function
cond_exec_process_if_block:
.LFB8:
	.loc 1 325 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# test_bb, test_bb
	movq	%rsi, -112(%rbp)	# then_bb, then_bb
	movq	%rdx, -120(%rbp)	# else_bb, else_bb
	movq	%rcx, -128(%rbp)	# join_bb, join_bb
	.loc 1 329 0
	movq	$0, -56(%rbp)	#, else_start
	.loc 1 330 0
	movq	$0, -48(%rbp)	#, else_end
	.loc 1 342 0
	movq	-104(%rbp), %rax	# test_bb, tmp99
	movq	8(%rax), %rax	# test_bb_14(D)->end, D.14177
	movq	%rax, %rdi	# D.14177,
	call	cond_exec_get_condition	#
	movq	%rax, -16(%rbp)	# tmp100, test_expr
	.loc 1 343 0
	cmpq	$0, -16(%rbp)	#, test_expr
	jne	.L46	#,
	.loc 1 344 0
	movl	$0, %eax	#, D.14176
	jmp	.L47	#
.L46:
	.loc 1 348 0
	movq	-104(%rbp), %rax	# test_bb, tmp101
	movq	8(%rax), %rax	# test_bb_14(D)->end, D.14177
	movq	%rax, %rdi	# D.14177,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.14176
	jne	.L48	#,
	.loc 1 349 0
	movl	$0, %eax	#, D.14176
	jmp	.L47	#
.L48:
	.loc 1 353 0
	movq	-112(%rbp), %rax	# then_bb, tmp102
	movq	(%rax), %rax	# then_bb_21(D)->head, tmp103
	movq	%rax, -72(%rbp)	# tmp103, then_start
	.loc 1 354 0
	movq	-112(%rbp), %rax	# then_bb, tmp104
	movq	8(%rax), %rax	# then_bb_21(D)->end, tmp105
	movq	%rax, -64(%rbp)	# tmp105, then_end
	.loc 1 357 0
	movq	-72(%rbp), %rax	# then_start, tmp106
	movzwl	(%rax), %eax	# then_start_22->code, D.14178
	cmpw	$36, %ax	#, D.14178
	jne	.L49	#,
	.loc 1 358 0
	movq	-72(%rbp), %rax	# then_start, tmp107
	movq	24(%rax), %rax	# then_start_22->fld[2].rtx, tmp108
	movq	%rax, -72(%rbp)	# tmp108, then_start
.L49:
	.loc 1 361 0
	movq	-64(%rbp), %rax	# then_end, tmp109
	movzwl	(%rax), %eax	# then_end_23->code, D.14178
	cmpw	$32, %ax	#, D.14178
	jne	.L50	#,
	.loc 1 362 0
	movq	-64(%rbp), %rax	# then_end, tmp110
	movq	32(%rax), %rax	# then_end_23->fld[3].rtx, D.14177
	movzwl	(%rax), %eax	# _27->code, D.14178
	cmpw	$48, %ax	#, D.14178
	jne	.L50	#,
	.loc 1 363 0
	movq	-64(%rbp), %rax	# then_end, tmp111
	movq	32(%rax), %rax	# then_end_23->fld[3].rtx, D.14177
	movq	8(%rax), %rax	# _29->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _30->code, D.14178
	cmpw	$54, %ax	#, D.14178
	jne	.L50	#,
	.loc 1 364 0
	movq	-64(%rbp), %rax	# then_end, tmp112
	movq	16(%rax), %rax	# then_end_23->fld[1].rtx, tmp113
	movq	%rax, -64(%rbp)	# tmp113, then_end
	jmp	.L51	#
.L50:
	.loc 1 365 0
	movq	-64(%rbp), %rax	# then_end, tmp114
	movzwl	(%rax), %eax	# then_end_23->code, D.14178
	cmpw	$33, %ax	#, D.14178
	jne	.L51	#,
	.loc 1 366 0
	movq	-64(%rbp), %rax	# then_end, tmp115
	movq	16(%rax), %rax	# then_end_23->fld[1].rtx, tmp116
	movq	%rax, -64(%rbp)	# tmp116, then_end
.L51:
	.loc 1 368 0
	cmpq	$0, -120(%rbp)	#, else_bb
	je	.L52	#,
	.loc 1 371 0
	movq	-120(%rbp), %rax	# else_bb, tmp117
	movq	(%rax), %rax	# else_bb_35(D)->head, D.14177
	movq	24(%rax), %rax	# _36->fld[2].rtx, tmp118
	movq	%rax, -56(%rbp)	# tmp118, else_start
	.loc 1 372 0
	movq	-120(%rbp), %rax	# else_bb, tmp119
	movq	8(%rax), %rax	# else_bb_35(D)->end, tmp120
	movq	%rax, -48(%rbp)	# tmp120, else_end
	.loc 1 375 0
	movq	-48(%rbp), %rax	# else_end, tmp121
	movzwl	(%rax), %eax	# else_end_38->code, D.14178
	cmpw	$32, %ax	#, D.14178
	jne	.L53	#,
	.loc 1 376 0
	movq	-48(%rbp), %rax	# else_end, tmp122
	movq	32(%rax), %rax	# else_end_38->fld[3].rtx, D.14177
	movzwl	(%rax), %eax	# _40->code, D.14178
	cmpw	$48, %ax	#, D.14178
	jne	.L53	#,
	.loc 1 377 0
	movq	-48(%rbp), %rax	# else_end, tmp123
	movq	32(%rax), %rax	# else_end_38->fld[3].rtx, D.14177
	movq	8(%rax), %rax	# _42->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _43->code, D.14178
	cmpw	$54, %ax	#, D.14178
	jne	.L53	#,
	.loc 1 378 0
	movq	-48(%rbp), %rax	# else_end, tmp124
	movq	16(%rax), %rax	# else_end_38->fld[1].rtx, tmp125
	movq	%rax, -48(%rbp)	# tmp125, else_end
	jmp	.L52	#
.L53:
	.loc 1 379 0
	movq	-48(%rbp), %rax	# else_end, tmp126
	movzwl	(%rax), %eax	# else_end_38->code, D.14178
	cmpw	$33, %ax	#, D.14178
	jne	.L52	#,
	.loc 1 380 0
	movq	-48(%rbp), %rax	# else_end, tmp127
	movq	16(%rax), %rax	# else_end_38->fld[1].rtx, tmp128
	movq	%rax, -48(%rbp)	# tmp128, else_end
.L52:
	.loc 1 384 0
	movl	$0, -84(%rbp)	#, n_insns
	.loc 1 385 0
	cmpq	$0, -120(%rbp)	#, else_bb
	je	.L54	#,
	.loc 1 387 0
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.1
	addl	$1, %eax	#, D.14176
	addl	%eax, %eax	# tmp129
	movl	%eax, -88(%rbp)	# tmp129, max
	.loc 1 388 0
	movq	-120(%rbp), %rax	# else_bb, tmp130
	movq	%rax, %rdi	# tmp130,
	call	count_bb_insns	#
	movl	%eax, -84(%rbp)	# tmp131, n_insns
	jmp	.L55	#
.L54:
	.loc 1 391 0
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.2
	addl	$1, %eax	#, tmp132
	movl	%eax, -88(%rbp)	# tmp132, max
.L55:
	.loc 1 392 0
	movq	-112(%rbp), %rax	# then_bb, tmp133
	movq	%rax, %rdi	# tmp133,
	call	count_bb_insns	#
	addl	%eax, -84(%rbp)	# D.14176, n_insns
	.loc 1 393 0
	movl	-84(%rbp), %eax	# n_insns, tmp134
	cmpl	-88(%rbp), %eax	# max, tmp134
	jle	.L56	#,
	.loc 1 394 0
	movl	$0, %eax	#, D.14176
	jmp	.L47	#
.L56:
	.loc 1 399 0
	movq	-16(%rbp), %rax	# test_expr, tmp135
	movq	%rax, -8(%rbp)	# tmp135, true_expr
	.loc 1 401 0
	movq	-104(%rbp), %rax	# test_bb, tmp136
	movq	8(%rax), %rdx	# test_bb_14(D)->end, D.14177
	movq	-8(%rbp), %rax	# true_expr, tmp137
	movq	%rdx, %rsi	# D.14177,
	movq	%rax, %rdi	# tmp137,
	call	reversed_comparison_code	#
	movl	%eax, -80(%rbp)	# tmp138, false_code
	.loc 1 402 0
	cmpl	$0, -80(%rbp)	#, false_code
	je	.L57	#,
	.loc 1 403 0
	movq	-8(%rbp), %rax	# true_expr, tmp139
	movq	16(%rax), %rcx	# true_expr_58->fld[1].rtx, D.14177
	movq	-8(%rbp), %rax	# true_expr, tmp140
	movq	8(%rax), %rdx	# true_expr_58->fld[0].rtx, D.14177
	movq	-8(%rbp), %rax	# true_expr, tmp141
	movzbl	2(%rax), %eax	# true_expr_58->mode, D.14179
	movzbl	%al, %esi	# D.14179, D.14180
	movl	-80(%rbp), %eax	# false_code, tmp142
	movl	%eax, %edi	# tmp142,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -40(%rbp)	# tmp143, false_expr
	jmp	.L58	#
.L57:
	.loc 1 406 0
	movq	$0, -40(%rbp)	#, false_expr
.L58:
	.loc 1 419 0
	movq	-104(%rbp), %rax	# test_bb, tmp144
	movq	8(%rax), %rax	# test_bb_14(D)->end, D.14177
	movl	$0, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.14177,
	call	find_reg_note	#
	movq	%rax, -32(%rbp)	# tmp145, true_prob_val
	.loc 1 420 0
	cmpq	$0, -32(%rbp)	#, true_prob_val
	je	.L59	#,
	.loc 1 422 0
	movq	-32(%rbp), %rax	# true_prob_val, tmp146
	movq	8(%rax), %rax	# true_prob_val_68->fld[0].rtx, tmp147
	movq	%rax, -32(%rbp)	# tmp147, true_prob_val
	.loc 1 423 0
	movq	-32(%rbp), %rax	# true_prob_val, tmp148
	movq	8(%rax), %rax	# true_prob_val_69->fld[0].rtwint, D.14181
	movl	$10000, %edx	#, tmp149
	subq	%rax, %rdx	# D.14181, D.14181
	movq	%rdx, %rax	# D.14181, D.14181
	movq	%rax, %rsi	# D.14181,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -24(%rbp)	# tmp150, false_prob_val
	jmp	.L60	#
.L59:
	.loc 1 426 0
	movq	$0, -24(%rbp)	#, false_prob_val
.L60:
	.loc 1 430 0
	cmpq	$0, -120(%rbp)	#, else_bb
	sete	%al	#, D.14182
	movzbl	%al, %eax	# D.14182, tmp151
	movl	%eax, -76(%rbp)	# tmp151, then_mod_ok
	.loc 1 435 0
	cmpq	$0, -64(%rbp)	#, then_end
	je	.L61	#,
	.loc 1 436 0
	cmpq	$0, -40(%rbp)	#, false_expr
	je	.L62	#,
	.loc 1 437 0
	movl	-76(%rbp), %edi	# then_mod_ok, tmp152
	movq	-24(%rbp), %rcx	# false_prob_val, tmp153
	movq	-40(%rbp), %rdx	# false_expr, tmp154
	movq	-64(%rbp), %rsi	# then_end, tmp155
	movq	-72(%rbp), %rax	# then_start, tmp156
	movl	%edi, %r8d	# tmp152,
	movq	%rax, %rdi	# tmp156,
	call	cond_exec_process_insns	#
	testl	%eax, %eax	# D.14176
	je	.L62	#,
.L61:
	.loc 1 441 0
	cmpq	$0, -120(%rbp)	#, else_bb
	je	.L63	#,
	.loc 1 442 0
	movq	-32(%rbp), %rcx	# true_prob_val, tmp157
	movq	-8(%rbp), %rdx	# true_expr, tmp158
	movq	-48(%rbp), %rsi	# else_end, tmp159
	movq	-56(%rbp), %rax	# else_start, tmp160
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# tmp160,
	call	cond_exec_process_insns	#
	testl	%eax, %eax	# D.14176
	jne	.L63	#,
	.loc 1 444 0
	jmp	.L62	#
.L63:
	.loc 1 446 0
	call	apply_change_group	#
	testl	%eax, %eax	# D.14176
	jne	.L64	#,
	.loc 1 447 0
	movl	$0, %eax	#, D.14176
	jmp	.L47	#
.L64:
	.loc 1 455 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.3
	testq	%rax, %rax	# rtl_dump_file.3
	je	.L65	#,
	.loc 1 456 0
	cmpl	$1, -84(%rbp)	#, n_insns
	jne	.L66	#,
	.loc 1 456 0 is_stmt 0 discriminator 1
	movl	$.LC1, %eax	#, iftmp.4
	jmp	.L67	#
.L66:
	.loc 1 456 0 discriminator 2
	movl	$.LC2, %eax	#, iftmp.4
.L67:
	.loc 1 456 0 discriminator 3
	movq	rtl_dump_file(%rip), %rdi	# rtl_dump_file, rtl_dump_file.5
	movl	-84(%rbp), %edx	# n_insns, tmp161
	movq	%rax, %rcx	# iftmp.4,
	movl	$.LC3, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
.L65:
	.loc 1 460 0 is_stmt 1
	movq	-128(%rbp), %rcx	# join_bb, tmp162
	movq	-120(%rbp), %rdx	# else_bb, tmp163
	movq	-112(%rbp), %rsi	# then_bb, tmp164
	movq	-104(%rbp), %rax	# test_bb, tmp165
	movq	%rax, %rdi	# tmp165,
	call	merge_if_block	#
	.loc 1 461 0
	movl	$1, %eax	#, D.14176
	jmp	.L47	#
.L62:
	.loc 1 469 0
	movl	$0, %edi	#,
	call	cancel_changes	#
	.loc 1 470 0
	movl	$0, %eax	#, D.14176
.L47:
	.loc 1 471 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	cond_exec_process_if_block, .-cond_exec_process_if_block
	.type	noce_emit_store_flag, @function
noce_emit_store_flag:
.LFB9:
	.loc 1 510 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# if_info, if_info
	movq	%rsi, -48(%rbp)	# x, x
	movl	%edx, -52(%rbp)	# reversep, reversep
	movl	%ecx, -56(%rbp)	# normalize, normalize
	.loc 1 511 0
	movq	-40(%rbp), %rax	# if_info, tmp85
	movq	56(%rax), %rax	# if_info_7(D)->cond, tmp86
	movq	%rax, -16(%rbp)	# tmp86, cond
	.loc 1 515 0
	movq	-16(%rbp), %rax	# cond, tmp87
	movq	8(%rax), %rax	# cond_8->fld[0].rtx, D.14187
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14187,
	call	general_operand	#
	.loc 1 516 0
	testl	%eax, %eax	# D.14188
	je	.L69	#,
	.loc 1 516 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# cond, tmp88
	movq	16(%rax), %rax	# cond_8->fld[1].rtx, D.14187
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14187,
	call	general_operand	#
	testl	%eax, %eax	# D.14188
	jne	.L70	#,
.L69:
	.loc 1 516 0 discriminator 1
	movl	$1, %eax	#, iftmp.6
	jmp	.L71	#
.L70:
	.loc 1 516 0 discriminator 3
	movl	$0, %eax	#, iftmp.6
.L71:
	.loc 1 515 0 is_stmt 1
	movl	%eax, -20(%rbp)	# iftmp.6, cond_complex
	.loc 1 521 0
	cmpl	$0, -20(%rbp)	#, cond_complex
	je	.L72	#,
	.loc 1 522 0
	movq	-40(%rbp), %rax	# if_info, tmp89
	movq	48(%rax), %rax	# if_info_7(D)->jump, D.14187
	movq	%rax, %rdi	# D.14187,
	call	pc_set	#
	movq	16(%rax), %rax	# _17->fld[1].rtx, D.14187
	movq	8(%rax), %rax	# _18->fld[0].rtx, tmp90
	movq	%rax, -16(%rbp)	# tmp90, cond
.L72:
	.loc 1 524 0
	cmpl	$0, -52(%rbp)	#, reversep
	je	.L73	#,
	.loc 1 525 0
	movq	-40(%rbp), %rax	# if_info, tmp91
	movq	48(%rax), %rdx	# if_info_7(D)->jump, D.14187
	movq	-16(%rbp), %rax	# cond, tmp92
	movq	%rdx, %rsi	# D.14187,
	movq	%rax, %rdi	# tmp92,
	call	reversed_comparison_code	#
	movl	%eax, -24(%rbp)	# tmp93, code
	jmp	.L74	#
.L73:
	.loc 1 527 0
	movq	-16(%rbp), %rax	# cond, tmp94
	movzwl	(%rax), %eax	# cond_1->code, D.14189
	movzwl	%ax, %eax	# D.14189, tmp95
	movl	%eax, -24(%rbp)	# tmp95, code
.L74:
	.loc 1 529 0
	movq	-40(%rbp), %rax	# if_info, tmp96
	movq	64(%rax), %rdx	# if_info_7(D)->cond_earliest, D.14187
	movq	-40(%rbp), %rax	# if_info, tmp97
	movq	48(%rax), %rax	# if_info_7(D)->jump, D.14187
	cmpq	%rax, %rdx	# D.14187, D.14187
	je	.L75	#,
	.loc 1 529 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, cond_complex
	je	.L76	#,
.L75:
	.loc 1 530 0 is_stmt 1
	cmpl	$0, -56(%rbp)	#, normalize
	je	.L77	#,
	.loc 1 530 0 is_stmt 0 discriminator 1
	cmpl	$1, -56(%rbp)	#, normalize
	jne	.L76	#,
.L77:
.LBB3:
	.loc 1 534 0 is_stmt 1
	movq	-16(%rbp), %rax	# cond, tmp98
	movq	16(%rax), %rcx	# cond_1->fld[1].rtx, D.14187
	movq	-16(%rbp), %rax	# cond, tmp99
	movq	8(%rax), %rdx	# cond_1->fld[0].rtx, D.14187
	movq	-48(%rbp), %rax	# x, tmp100
	movzbl	2(%rax), %eax	# x_30(D)->mode, D.14190
	movzbl	%al, %esi	# D.14190, D.14191
	movl	-24(%rbp), %eax	# code, tmp101
	movl	%eax, %edi	# tmp101,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -8(%rbp)	# tmp102, tmp
	.loc 1 536 0
	movq	-8(%rbp), %rdx	# tmp, tmp103
	movq	-48(%rbp), %rax	# x, tmp104
	movq	%rdx, %rcx	# tmp103,
	movq	%rax, %rdx	# tmp104,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -8(%rbp)	# tmp105, tmp
	.loc 1 538 0
	call	start_sequence	#
	.loc 1 539 0
	movq	-8(%rbp), %rax	# tmp, tmp106
	movq	%rax, %rdi	# tmp106,
	call	emit_insn	#
	movq	%rax, -8(%rbp)	# tmp107, tmp
	.loc 1 541 0
	movq	-8(%rbp), %rax	# tmp, tmp108
	movl	40(%rax), %eax	# tmp_35->fld[4].rtint, D.14188
	testl	%eax, %eax	# D.14188
	js	.L78	#,
	.loc 1 541 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tmp, tmp109
	movl	40(%rax), %eax	# tmp_35->fld[4].rtint, D.14188
	notl	%eax	# tmp110
	shrl	$31, %eax	#, tmp111
	jmp	.L79	#
.L78:
	.loc 1 541 0 discriminator 2
	movq	-8(%rbp), %rax	# tmp, tmp112
	movq	%rax, %rdi	# tmp112,
	call	recog_memoized_1	#
	notl	%eax	# tmp113
	shrl	$31, %eax	#, tmp114
.L79:
	.loc 1 541 0 discriminator 3
	testb	%al, %al	# iftmp.7
	je	.L80	#,
	.loc 1 543 0 is_stmt 1
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp115, tmp
	.loc 1 544 0
	call	end_sequence	#
	.loc 1 545 0
	movq	-8(%rbp), %rax	# tmp, tmp116
	movq	%rax, %rdi	# tmp116,
	call	emit_insns	#
	.loc 1 547 0
	movq	-40(%rbp), %rax	# if_info, tmp117
	movq	48(%rax), %rdx	# if_info_7(D)->jump, D.14187
	movq	-40(%rbp), %rax	# if_info, tmp118
	movq	%rdx, 64(%rax)	# D.14187, if_info_7(D)->cond_earliest
	.loc 1 549 0
	movq	-48(%rbp), %rax	# x, D.14186
	jmp	.L81	#
.L80:
	.loc 1 552 0
	call	end_sequence	#
.L76:
.LBE3:
	.loc 1 556 0
	cmpl	$0, -20(%rbp)	#, cond_complex
	je	.L82	#,
	.loc 1 557 0
	movl	$0, %eax	#, D.14186
	jmp	.L81	#
.L82:
	.loc 1 559 0
	cmpl	$111, -24(%rbp)	#, code
	je	.L83	#,
	.loc 1 561 0
	cmpl	$110, -24(%rbp)	#, code
	je	.L83	#,
	.loc 1 562 0
	cmpl	$108, -24(%rbp)	#, code
	je	.L83	#,
	.loc 1 559 0
	cmpl	$109, -24(%rbp)	#, code
	jne	.L84	#,
.L83:
	.loc 1 559 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.8
	jmp	.L85	#
.L84:
	.loc 1 559 0 discriminator 2
	movl	$0, %eax	#, iftmp.8
.L85:
	.loc 1 559 0 discriminator 3
	movq	-16(%rbp), %rdx	# cond, tmp119
	movq	16(%rdx), %rcx	# cond_1->fld[1].rtx, D.14187
	movq	-16(%rbp), %rdx	# cond, tmp120
	movq	8(%rdx), %rdx	# cond_1->fld[0].rtx, D.14187
	movl	-24(%rbp), %esi	# code, tmp121
	movq	-48(%rbp), %rdi	# x, tmp122
	movl	-56(%rbp), %r8d	# normalize, tmp123
	movl	%r8d, (%rsp)	# tmp123,
	movl	%eax, %r9d	# iftmp.8,
	movl	$0, %r8d	#,
	call	emit_store_flag	#
.L81:
	.loc 1 563 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	noce_emit_store_flag, .-noce_emit_store_flag
	.type	noce_emit_move_insn, @function
noce_emit_move_insn:
.LFB10:
	.loc 1 569 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# y, y
	.loc 1 574 0
	movq	-40(%rbp), %rax	# x, tmp71
	movzwl	(%rax), %eax	# x_1(D)->code, D.14192
	cmpw	$64, %ax	#, D.14192
	je	.L87	#,
	.loc 1 576 0
	movq	-48(%rbp), %rdx	# y, tmp72
	movq	-40(%rbp), %rax	# x, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	emit_move_insn	#
	.loc 1 577 0
	jmp	.L86	#
.L87:
	.loc 1 580 0
	movq	-40(%rbp), %rax	# x, tmp74
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, tmp75
	movq	%rax, -16(%rbp)	# tmp75, outer
	.loc 1 581 0
	movq	-16(%rbp), %rax	# outer, tmp76
	movq	8(%rax), %rax	# outer_4->fld[0].rtx, tmp77
	movq	%rax, -8(%rbp)	# tmp77, inner
	.loc 1 582 0
	movq	-16(%rbp), %rax	# outer, tmp78
	movzbl	2(%rax), %eax	# outer_4->mode, D.14193
	movzbl	%al, %eax	# D.14193, tmp79
	movl	%eax, -28(%rbp)	# tmp79, outmode
	.loc 1 583 0
	movq	-8(%rbp), %rax	# inner, tmp80
	movzbl	2(%rax), %eax	# inner_5->mode, D.14193
	movzbl	%al, %eax	# D.14193, tmp81
	movl	%eax, -24(%rbp)	# tmp81, inmode
	.loc 1 584 0
	movq	-16(%rbp), %rax	# outer, tmp82
	movl	16(%rax), %eax	# outer_4->fld[1].rtuint, D.14194
	sall	$3, %eax	#, D.14194
	movl	%eax, -20(%rbp)	# D.14194, bitpos
	.loc 1 586 0
	movl	-24(%rbp), %eax	# inmode, inmode.9
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14192
	.loc 1 585 0
	movzwl	%ax, %r8d	# D.14192, D.14195
	movl	-20(%rbp), %eax	# bitpos, tmp84
	movslq	%eax, %rdx	# tmp84, D.14196
	movl	-28(%rbp), %eax	# outmode, outmode.10
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14192
	movzwl	%ax, %esi	# D.14192, D.14196
	movq	-48(%rbp), %rdi	# y, tmp86
	movl	-28(%rbp), %ecx	# outmode, tmp87
	movq	-8(%rbp), %rax	# inner, tmp88
	movq	%r8, %r9	# D.14195,
	movq	%rdi, %r8	# tmp86,
	movq	%rax, %rdi	# tmp88,
	call	store_bit_field	#
.L86:
	.loc 1 587 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	noce_emit_move_insn, .-noce_emit_move_insn
	.type	noce_try_store_flag, @function
noce_try_store_flag:
.LFB11:
	.loc 1 598 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# if_info, if_info
	.loc 1 602 0
	movq	-40(%rbp), %rax	# if_info, tmp80
	movq	40(%rax), %rax	# if_info_3(D)->b, D.14198
	movzwl	(%rax), %eax	# _4->code, D.14199
	cmpw	$54, %ax	#, D.14199
	jne	.L90	#,
	.loc 1 603 0
	movq	-40(%rbp), %rax	# if_info, tmp81
	movq	40(%rax), %rax	# if_info_3(D)->b, D.14198
	movq	8(%rax), %rax	# _6->fld[0].rtwint, D.14200
	cmpq	$1, %rax	#, D.14200
	jne	.L90	#,
	.loc 1 604 0
	movq	-40(%rbp), %rax	# if_info, tmp82
	movq	32(%rax), %rdx	# if_info_3(D)->a, D.14198
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14198
	cmpq	%rax, %rdx	# D.14198, D.14198
	jne	.L90	#,
	.loc 1 605 0
	movl	$0, -20(%rbp)	#, reversep
	jmp	.L91	#
.L90:
	.loc 1 606 0
	movq	-40(%rbp), %rax	# if_info, tmp83
	movq	40(%rax), %rdx	# if_info_3(D)->b, D.14198
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14198
	cmpq	%rax, %rdx	# D.14198, D.14198
	jne	.L92	#,
	.loc 1 607 0
	movq	-40(%rbp), %rax	# if_info, tmp84
	movq	32(%rax), %rax	# if_info_3(D)->a, D.14198
	movzwl	(%rax), %eax	# _13->code, D.14199
	cmpw	$54, %ax	#, D.14199
	jne	.L92	#,
	.loc 1 608 0
	movq	-40(%rbp), %rax	# if_info, tmp85
	movq	32(%rax), %rax	# if_info_3(D)->a, D.14198
	movq	8(%rax), %rax	# _15->fld[0].rtwint, D.14200
	cmpq	$1, %rax	#, D.14200
	jne	.L92	#,
	.loc 1 609 0
	movq	-40(%rbp), %rax	# if_info, tmp86
	movq	48(%rax), %rdx	# if_info_3(D)->jump, D.14198
	movq	-40(%rbp), %rax	# if_info, tmp87
	movq	56(%rax), %rax	# if_info_3(D)->cond, D.14198
	movq	%rdx, %rsi	# D.14198,
	movq	%rax, %rdi	# D.14198,
	call	reversed_comparison_code	#
	testl	%eax, %eax	# D.14201
	je	.L92	#,
	.loc 1 611 0
	movl	$1, -20(%rbp)	#, reversep
	jmp	.L91	#
.L92:
	.loc 1 613 0
	movl	$0, %eax	#, D.14197
	jmp	.L93	#
.L91:
	.loc 1 615 0
	call	start_sequence	#
	.loc 1 617 0
	movq	-40(%rbp), %rax	# if_info, tmp88
	movq	24(%rax), %rsi	# if_info_3(D)->x, D.14198
	movl	-20(%rbp), %edx	# reversep, tmp89
	movq	-40(%rbp), %rax	# if_info, tmp90
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp90,
	call	noce_emit_store_flag	#
	movq	%rax, -16(%rbp)	# tmp91, target
	.loc 1 618 0
	cmpq	$0, -16(%rbp)	#, target
	je	.L94	#,
	.loc 1 620 0
	movq	-40(%rbp), %rax	# if_info, tmp92
	movq	24(%rax), %rax	# if_info_3(D)->x, D.14198
	cmpq	-16(%rbp), %rax	# target, D.14198
	je	.L95	#,
	.loc 1 621 0
	movq	-40(%rbp), %rax	# if_info, tmp93
	movq	24(%rax), %rax	# if_info_3(D)->x, D.14198
	movq	-16(%rbp), %rdx	# target, tmp94
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# D.14198,
	call	noce_emit_move_insn	#
.L95:
	.loc 1 623 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp95, seq
	.loc 1 624 0
	call	end_sequence	#
	.loc 1 625 0
	movq	-40(%rbp), %rax	# if_info, tmp96
	movq	48(%rax), %rdx	# if_info_3(D)->jump, D.14198
	movq	-8(%rbp), %rax	# seq, tmp97
	movq	%rdx, %rsi	# D.14198,
	movq	%rax, %rdi	# tmp97,
	call	emit_insns_before	#
	.loc 1 627 0
	movl	$1, %eax	#, D.14197
	jmp	.L93	#
.L94:
	.loc 1 631 0
	call	end_sequence	#
	.loc 1 632 0
	movl	$0, %eax	#, D.14197
.L93:
	.loc 1 634 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	noce_try_store_flag, .-noce_try_store_flag
	.type	noce_try_store_flag_constants, @function
noce_try_store_flag_constants:
.LFB12:
	.loc 1 641 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# if_info, if_info
	.loc 1 648 0
	movl	no_new_pseudos(%rip), %eax	# no_new_pseudos, no_new_pseudos.11
	testl	%eax, %eax	# no_new_pseudos.11
	jne	.L97	#,
	.loc 1 649 0
	movq	-88(%rbp), %rax	# if_info, tmp110
	movq	32(%rax), %rax	# if_info_11(D)->a, D.14203
	movzwl	(%rax), %eax	# _12->code, D.14204
	cmpw	$54, %ax	#, D.14204
	jne	.L97	#,
	.loc 1 650 0
	movq	-88(%rbp), %rax	# if_info, tmp111
	movq	40(%rax), %rax	# if_info_11(D)->b, D.14203
	movzwl	(%rax), %eax	# _14->code, D.14204
	cmpw	$54, %ax	#, D.14204
	jne	.L97	#,
	.loc 1 652 0
	movq	-88(%rbp), %rax	# if_info, tmp112
	movq	24(%rax), %rax	# if_info_11(D)->x, D.14203
	movzbl	2(%rax), %eax	# _16->mode, D.14205
	movzbl	%al, %eax	# D.14205, tmp113
	movl	%eax, -72(%rbp)	# tmp113, mode
	.loc 1 653 0
	movq	-88(%rbp), %rax	# if_info, tmp114
	movq	32(%rax), %rax	# if_info_11(D)->a, D.14203
	movq	8(%rax), %rax	# _19->fld[0].rtwint, tmp115
	movq	%rax, -48(%rbp)	# tmp115, ifalse
	.loc 1 654 0
	movq	-88(%rbp), %rax	# if_info, tmp116
	movq	40(%rax), %rax	# if_info_11(D)->b, D.14203
	movq	8(%rax), %rax	# _21->fld[0].rtwint, tmp117
	movq	%rax, -56(%rbp)	# tmp117, itrue
	.loc 1 657 0
	movq	-48(%rbp), %rax	# ifalse, tmp118
	movq	-56(%rbp), %rdx	# itrue, tmp119
	subq	%rax, %rdx	# tmp118, D.14206
	movq	%rdx, %rax	# D.14206, D.14206
	testq	%rax, %rax	# D.14206
	setg	%al	#, D.14207
	movzbl	%al, %edx	# D.14207, D.14202
	.loc 1 658 0
	movq	-48(%rbp), %rax	# ifalse, tmp121
	shrq	$63, %rax	#, tmp120
	movl	%eax, %ecx	# tmp120, D.14207
	movq	-56(%rbp), %rax	# itrue, tmp123
	shrq	$63, %rax	#, tmp122
	xorl	%ecx, %eax	# D.14207, D.14207
	testb	%al, %al	# D.14207
	je	.L98	#,
	.loc 1 658 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ifalse, tmp125
	shrq	$63, %rax	#, tmp124
	movzbl	%al, %eax	# D.14207, iftmp.12
	jmp	.L99	#
.L98:
	.loc 1 658 0 discriminator 2
	movq	-48(%rbp), %rax	# ifalse, tmp126
	cmpq	-56(%rbp), %rax	# itrue, tmp126
	setl	%al	#, D.14207
	movzbl	%al, %eax	# D.14207, iftmp.12
.L99:
	.loc 1 657 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.12, D.14202
	je	.L100	#,
	.loc 1 659 0
	movl	$0, %eax	#, D.14202
	jmp	.L101	#
.L100:
	.loc 1 661 0
	movq	-48(%rbp), %rax	# ifalse, tmp127
	movq	-56(%rbp), %rdx	# itrue, tmp128
	subq	%rax, %rdx	# tmp127, D.14206
	movl	-72(%rbp), %eax	# mode, tmp129
	movl	%eax, %esi	# tmp129,
	movq	%rdx, %rdi	# D.14206,
	call	trunc_int_for_mode	#
	movq	%rax, -40(%rbp)	# tmp130, diff
	.loc 1 663 0
	movq	-88(%rbp), %rax	# if_info, tmp131
	movq	48(%rax), %rdx	# if_info_11(D)->jump, D.14203
	movq	-88(%rbp), %rax	# if_info, tmp132
	movq	56(%rax), %rax	# if_info_11(D)->cond, D.14203
	movq	%rdx, %rsi	# D.14203,
	movq	%rax, %rdi	# D.14203,
	call	reversed_comparison_code	#
	.loc 1 664 0
	testl	%eax, %eax	# D.14208
	setne	%al	#, D.14207
	.loc 1 663 0
	movzbl	%al, %eax	# D.14207, tmp133
	movl	%eax, -68(%rbp)	# tmp133, can_reverse
	.loc 1 666 0
	movl	$0, -80(%rbp)	#, reversep
	.loc 1 667 0
	cmpq	$1, -40(%rbp)	#, diff
	je	.L102	#,
	.loc 1 667 0 is_stmt 0 discriminator 1
	cmpq	$-1, -40(%rbp)	#, diff
	jne	.L103	#,
.L102:
	.loc 1 668 0 is_stmt 1
	movl	$0, -76(%rbp)	#, normalize
	jmp	.L104	#
.L103:
	.loc 1 669 0
	cmpq	$0, -48(%rbp)	#, ifalse
	jne	.L105	#,
	.loc 1 669 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# itrue, itrue.13
	movq	%rax, %rdi	# itrue.13,
	call	exact_log2_wide	#
	testl	%eax, %eax	# D.14202
	js	.L105	#,
	.loc 1 672 0 is_stmt 1
	movl	$1, -76(%rbp)	#, normalize
	jmp	.L104	#
.L105:
	.loc 1 673 0
	cmpq	$0, -56(%rbp)	#, itrue
	jne	.L106	#,
	.loc 1 673 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ifalse, ifalse.14
	movq	%rax, %rdi	# ifalse.14,
	call	exact_log2_wide	#
	testl	%eax, %eax	# D.14202
	js	.L106	#,
	cmpl	$0, -68(%rbp)	#, can_reverse
	je	.L106	#,
	.loc 1 675 0 is_stmt 1
	movl	$1, -76(%rbp)	#, normalize
	movl	$1, -80(%rbp)	#, reversep
	jmp	.L104	#
.L106:
	.loc 1 676 0
	cmpq	$-1, -56(%rbp)	#, itrue
	jne	.L107	#,
	.loc 1 678 0
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.15
	.loc 1 677 0
	cmpl	$1, %eax	#, ix86_branch_cost.15
	jle	.L107	#,
	.loc 1 679 0
	movl	$-1, -76(%rbp)	#, normalize
	jmp	.L104	#
.L107:
	.loc 1 680 0
	cmpq	$-1, -48(%rbp)	#, ifalse
	jne	.L108	#,
	.loc 1 680 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, can_reverse
	je	.L108	#,
	.loc 1 681 0 is_stmt 1
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.16
	cmpl	$1, %eax	#, ix86_branch_cost.16
	jle	.L108	#,
	.loc 1 682 0
	movl	$-1, -76(%rbp)	#, normalize
	movl	$1, -80(%rbp)	#, reversep
	jmp	.L104	#
.L108:
	.loc 1 684 0
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.17
	.loc 1 683 0
	cmpl	$2, %eax	#, ix86_branch_cost.17
	jle	.L109	#,
	.loc 1 685 0
	movl	$-1, -76(%rbp)	#, normalize
	jmp	.L104	#
.L109:
	.loc 1 687 0
	movl	$0, %eax	#, D.14202
	jmp	.L101	#
.L104:
	.loc 1 689 0
	cmpl	$0, -80(%rbp)	#, reversep
	je	.L110	#,
	.loc 1 691 0
	movq	-56(%rbp), %rax	# itrue, tmp134
	movq	%rax, -32(%rbp)	# tmp134, tmp
	movq	-48(%rbp), %rax	# ifalse, tmp135
	movq	%rax, -56(%rbp)	# tmp135, itrue
	movq	-32(%rbp), %rax	# tmp, tmp136
	movq	%rax, -48(%rbp)	# tmp136, ifalse
	.loc 1 692 0
	movq	-40(%rbp), %rax	# diff, tmp137
	negq	%rax	# D.14206
	movq	%rax, %rdx	# D.14206, D.14206
	movl	-72(%rbp), %eax	# mode, tmp138
	movl	%eax, %esi	# tmp138,
	movq	%rdx, %rdi	# D.14206,
	call	trunc_int_for_mode	#
	movq	%rax, -40(%rbp)	# tmp139, diff
.L110:
	.loc 1 695 0
	call	start_sequence	#
	.loc 1 696 0
	movq	-88(%rbp), %rax	# if_info, tmp140
	movq	24(%rax), %rsi	# if_info_11(D)->x, D.14203
	movl	-76(%rbp), %ecx	# normalize, tmp141
	movl	-80(%rbp), %edx	# reversep, tmp142
	movq	-88(%rbp), %rax	# if_info, tmp143
	movq	%rax, %rdi	# tmp143,
	call	noce_emit_store_flag	#
	movq	%rax, -64(%rbp)	# tmp144, target
	.loc 1 697 0
	cmpq	$0, -64(%rbp)	#, target
	jne	.L111	#,
	.loc 1 699 0
	call	end_sequence	#
	.loc 1 700 0
	movl	$0, %eax	#, D.14202
	jmp	.L101	#
.L111:
	.loc 1 705 0
	cmpq	$1, -40(%rbp)	#, diff
	je	.L112	#,
	.loc 1 705 0 is_stmt 0 discriminator 1
	cmpq	$-1, -40(%rbp)	#, diff
	jne	.L113	#,
.L112:
	.loc 1 707 0 is_stmt 1
	movq	-88(%rbp), %rax	# if_info, tmp145
	movq	24(%rax), %rbx	# if_info_11(D)->x, D.14203
	movq	-48(%rbp), %rax	# ifalse, tmp146
	movq	%rax, %rsi	# tmp146,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.14203
	cmpq	$1, -40(%rbp)	#, diff
	jne	.L114	#,
	.loc 1 707 0 is_stmt 0 discriminator 1
	movl	$75, %eax	#, iftmp.18
	jmp	.L115	#
.L114:
	.loc 1 707 0 discriminator 2
	movl	$76, %eax	#, iftmp.18
.L115:
	.loc 1 707 0 discriminator 3
	movq	-64(%rbp), %rcx	# target, tmp147
	movl	-72(%rbp), %edi	# mode, tmp148
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rbx, %r8	# D.14203,
	movl	%eax, %esi	# iftmp.18,
	call	expand_simple_binop	#
	movq	%rax, -64(%rbp)	# tmp149, target
	jmp	.L116	#
.L113:
	.loc 1 716 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, ifalse
	jne	.L117	#,
	.loc 1 716 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# itrue, itrue.19
	movq	%rax, %rdi	# itrue.19,
	call	exact_log2_wide	#
	cltq
	movq	%rax, -32(%rbp)	# tmp150, tmp
	cmpq	$0, -32(%rbp)	#, tmp
	js	.L117	#,
	.loc 1 718 0 is_stmt 1
	movq	-88(%rbp), %rax	# if_info, tmp151
	movq	24(%rax), %rbx	# if_info_11(D)->x, D.14203
	movq	-32(%rbp), %rax	# tmp, tmp152
	movq	%rax, %rsi	# tmp152,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.14203
	movq	-64(%rbp), %rdx	# target, tmp153
	movl	-72(%rbp), %eax	# mode, tmp154
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rbx, %r8	# D.14203,
	movl	$87, %esi	#,
	movl	%eax, %edi	# tmp154,
	call	expand_simple_binop	#
	movq	%rax, -64(%rbp)	# tmp155, target
	jmp	.L116	#
.L117:
	.loc 1 725 0
	cmpq	$-1, -56(%rbp)	#, itrue
	jne	.L118	#,
	.loc 1 727 0
	movq	-88(%rbp), %rax	# if_info, tmp156
	movq	24(%rax), %rbx	# if_info_11(D)->x, D.14203
	movq	-48(%rbp), %rax	# ifalse, tmp157
	movq	%rax, %rsi	# tmp157,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.14203
	movq	-64(%rbp), %rdx	# target, tmp158
	movl	-72(%rbp), %eax	# mode, tmp159
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rbx, %r8	# D.14203,
	movl	$84, %esi	#,
	movl	%eax, %edi	# tmp159,
	call	expand_simple_binop	#
	movq	%rax, -64(%rbp)	# tmp160, target
	jmp	.L116	#
.L118:
	.loc 1 736 0
	movq	-88(%rbp), %rax	# if_info, tmp161
	movq	24(%rax), %rbx	# if_info_11(D)->x, D.14203
	movq	-40(%rbp), %rax	# diff, tmp162
	movq	%rax, %rsi	# tmp162,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.14203
	movq	-64(%rbp), %rdx	# target, tmp163
	movl	-72(%rbp), %eax	# mode, tmp164
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rbx, %r8	# D.14203,
	movl	$83, %esi	#,
	movl	%eax, %edi	# tmp164,
	call	expand_simple_binop	#
	movq	%rax, -64(%rbp)	# tmp165, target
	.loc 1 739 0
	cmpq	$0, -64(%rbp)	#, target
	je	.L116	#,
	.loc 1 740 0
	movq	-88(%rbp), %rax	# if_info, tmp166
	movq	24(%rax), %rbx	# if_info_11(D)->x, D.14203
	movq	-48(%rbp), %rax	# ifalse, tmp167
	movq	%rax, %rsi	# tmp167,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.14203
	movq	-64(%rbp), %rdx	# target, tmp168
	movl	-72(%rbp), %eax	# mode, tmp169
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rbx, %r8	# D.14203,
	movl	$75, %esi	#,
	movl	%eax, %edi	# tmp169,
	call	expand_simple_binop	#
	movq	%rax, -64(%rbp)	# tmp170, target
.L116:
	.loc 1 745 0
	cmpq	$0, -64(%rbp)	#, target
	jne	.L119	#,
	.loc 1 747 0
	call	end_sequence	#
	.loc 1 748 0
	movl	$0, %eax	#, D.14202
	jmp	.L101	#
.L119:
	.loc 1 751 0
	movq	-88(%rbp), %rax	# if_info, tmp171
	movq	24(%rax), %rax	# if_info_11(D)->x, D.14203
	cmpq	-64(%rbp), %rax	# target, D.14203
	je	.L120	#,
	.loc 1 752 0
	movq	-88(%rbp), %rax	# if_info, tmp172
	movq	24(%rax), %rax	# if_info_11(D)->x, D.14203
	movq	-64(%rbp), %rdx	# target, tmp173
	movq	%rdx, %rsi	# tmp173,
	movq	%rax, %rdi	# D.14203,
	call	noce_emit_move_insn	#
.L120:
	.loc 1 754 0
	call	get_insns	#
	movq	%rax, -24(%rbp)	# tmp174, seq
	.loc 1 755 0
	call	end_sequence	#
	.loc 1 757 0
	movq	-24(%rbp), %rax	# seq, tmp175
	movq	%rax, %rdi	# tmp175,
	call	seq_contains_jump	#
	testl	%eax, %eax	# D.14202
	je	.L121	#,
	.loc 1 758 0
	movl	$0, %eax	#, D.14202
	jmp	.L101	#
.L121:
	.loc 1 760 0
	movq	-88(%rbp), %rax	# if_info, tmp176
	movq	48(%rax), %rdx	# if_info_11(D)->jump, D.14203
	movq	-24(%rbp), %rax	# seq, tmp177
	movq	%rdx, %rsi	# D.14203,
	movq	%rax, %rdi	# tmp177,
	call	emit_insns_before	#
	.loc 1 762 0
	movl	$1, %eax	#, D.14202
	jmp	.L101	#
.L97:
	.loc 1 765 0
	movl	$0, %eax	#, D.14202
.L101:
	.loc 1 766 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	noce_try_store_flag_constants, .-noce_try_store_flag_constants
	.type	noce_try_store_flag_inc, @function
noce_try_store_flag_inc:
.LFB13:
	.loc 1 774 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# if_info, if_info
	.loc 1 778 0
	movl	no_new_pseudos(%rip), %eax	# no_new_pseudos, no_new_pseudos.20
	testl	%eax, %eax	# no_new_pseudos.20
	jne	.L123	#,
	.loc 1 781 0
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.21
	.loc 1 779 0
	cmpl	$1, %eax	#, ix86_branch_cost.21
	jle	.L123	#,
	.loc 1 783 0
	movq	-40(%rbp), %rax	# if_info, tmp103
	movq	40(%rax), %rdx	# if_info_8(D)->b, D.14210
	movq	-40(%rbp), %rax	# if_info, tmp104
	movq	24(%rax), %rax	# if_info_8(D)->x, D.14210
	cmpq	%rax, %rdx	# D.14210, D.14210
	jne	.L123	#,
	.loc 1 784 0
	movq	-40(%rbp), %rax	# if_info, tmp105
	movq	32(%rax), %rax	# if_info_8(D)->a, D.14210
	movzwl	(%rax), %eax	# _11->code, D.14211
	cmpw	$75, %ax	#, D.14211
	jne	.L123	#,
	.loc 1 785 0
	movq	-40(%rbp), %rax	# if_info, tmp106
	movq	32(%rax), %rax	# if_info_8(D)->a, D.14210
	movq	16(%rax), %rdx	# _13->fld[1].rtx, D.14210
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.14210
	cmpq	%rax, %rdx	# D.14210, D.14210
	je	.L124	#,
	.loc 1 786 0
	movq	-40(%rbp), %rax	# if_info, tmp107
	movq	32(%rax), %rax	# if_info_8(D)->a, D.14210
	movq	16(%rax), %rdx	# _16->fld[1].rtx, D.14210
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, D.14210
	cmpq	%rax, %rdx	# D.14210, D.14210
	jne	.L123	#,
.L124:
	.loc 1 787 0
	movq	-40(%rbp), %rax	# if_info, tmp108
	movq	24(%rax), %rdx	# if_info_8(D)->x, D.14210
	movq	-40(%rbp), %rax	# if_info, tmp109
	movq	32(%rax), %rax	# if_info_8(D)->a, D.14210
	movq	8(%rax), %rax	# _20->fld[0].rtx, D.14210
	movq	%rdx, %rsi	# D.14210,
	movq	%rax, %rdi	# D.14210,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14209
	je	.L123	#,
	.loc 1 788 0
	movq	-40(%rbp), %rax	# if_info, tmp110
	movq	48(%rax), %rdx	# if_info_8(D)->jump, D.14210
	movq	-40(%rbp), %rax	# if_info, tmp111
	movq	56(%rax), %rax	# if_info_8(D)->cond, D.14210
	movq	%rdx, %rsi	# D.14210,
	movq	%rax, %rdi	# D.14210,
	call	reversed_comparison_code	#
	testl	%eax, %eax	# D.14212
	je	.L123	#,
	.loc 1 791 0
	movq	-40(%rbp), %rax	# if_info, tmp112
	movq	32(%rax), %rax	# if_info_8(D)->a, D.14210
	movq	16(%rax), %rax	# _26->fld[1].rtx, D.14210
	movq	8(%rax), %rax	# _27->fld[0].rtwint, D.14213
	cmpq	$1, %rax	#, D.14213
	jne	.L125	#,
	.loc 1 792 0
	movl	$0, -24(%rbp)	#, subtract
	movl	$0, -20(%rbp)	#, normalize
	jmp	.L126	#
.L125:
	.loc 1 793 0
	movq	-40(%rbp), %rax	# if_info, tmp113
	movq	32(%rax), %rax	# if_info_8(D)->a, D.14210
	movq	16(%rax), %rax	# _31->fld[1].rtx, D.14210
	movq	8(%rax), %rax	# _32->fld[0].rtwint, D.14213
	cmpq	$-1, %rax	#, D.14213
	jne	.L127	#,
	.loc 1 794 0
	movl	$1, -24(%rbp)	#, subtract
	movl	$0, -20(%rbp)	#, normalize
	jmp	.L126	#
.L127:
	.loc 1 796 0
	movl	$0, -24(%rbp)	#, subtract
	movq	-40(%rbp), %rax	# if_info, tmp114
	movq	32(%rax), %rax	# if_info_8(D)->a, D.14210
	movq	16(%rax), %rax	# _37->fld[1].rtx, D.14210
	movq	8(%rax), %rax	# _38->fld[0].rtwint, D.14213
	movl	%eax, -20(%rbp)	# D.14213, normalize
.L126:
	.loc 1 798 0
	call	start_sequence	#
	.loc 1 801 0
	movq	-40(%rbp), %rax	# if_info, tmp115
	movq	24(%rax), %rax	# if_info_8(D)->x, D.14210
	movzbl	2(%rax), %eax	# _41->mode, D.14214
	.loc 1 800 0
	movzbl	%al, %eax	# D.14214, D.14215
	movl	%eax, %edi	# D.14215,
	call	gen_reg_rtx	#
	movq	%rax, %rsi	#, D.14210
	movl	-20(%rbp), %edx	# normalize, tmp116
	movq	-40(%rbp), %rax	# if_info, tmp117
	movl	%edx, %ecx	# tmp116,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp117,
	call	noce_emit_store_flag	#
	movq	%rax, -16(%rbp)	# tmp118, target
	.loc 1 804 0
	cmpq	$0, -16(%rbp)	#, target
	je	.L128	#,
	.loc 1 805 0
	movq	-40(%rbp), %rax	# if_info, tmp119
	movq	24(%rax), %rsi	# if_info_8(D)->x, D.14210
	movq	-40(%rbp), %rax	# if_info, tmp120
	movq	24(%rax), %rdx	# if_info_8(D)->x, D.14210
	cmpl	$0, -24(%rbp)	#, subtract
	je	.L129	#,
	.loc 1 805 0 is_stmt 0 discriminator 1
	movl	$76, %eax	#, iftmp.22
	jmp	.L130	#
.L129:
	.loc 1 805 0 discriminator 2
	movl	$75, %eax	#, iftmp.22
.L130:
	.loc 1 805 0 discriminator 3
	movq	-40(%rbp), %rcx	# if_info, tmp121
	movq	24(%rcx), %rcx	# if_info_8(D)->x, D.14210
	movzbl	2(%rcx), %ecx	# _50->mode, D.14214
	movzbl	%cl, %edi	# D.14214, D.14215
	movq	-16(%rbp), %rcx	# target, tmp122
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# D.14210,
	movl	%eax, %esi	# iftmp.22,
	call	expand_simple_binop	#
	movq	%rax, -16(%rbp)	# tmp123, target
.L128:
	.loc 1 809 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, target
	je	.L131	#,
	.loc 1 811 0
	movq	-40(%rbp), %rax	# if_info, tmp124
	movq	24(%rax), %rax	# if_info_8(D)->x, D.14210
	cmpq	-16(%rbp), %rax	# target, D.14210
	je	.L132	#,
	.loc 1 812 0
	movq	-40(%rbp), %rax	# if_info, tmp125
	movq	24(%rax), %rax	# if_info_8(D)->x, D.14210
	movq	-16(%rbp), %rdx	# target, tmp126
	movq	%rdx, %rsi	# tmp126,
	movq	%rax, %rdi	# D.14210,
	call	noce_emit_move_insn	#
.L132:
	.loc 1 814 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp127, seq
	.loc 1 815 0
	call	end_sequence	#
	.loc 1 817 0
	movq	-8(%rbp), %rax	# seq, tmp128
	movq	%rax, %rdi	# tmp128,
	call	seq_contains_jump	#
	testl	%eax, %eax	# D.14209
	je	.L133	#,
	.loc 1 818 0
	movl	$0, %eax	#, D.14209
	jmp	.L134	#
.L133:
	.loc 1 820 0
	movq	-40(%rbp), %rax	# if_info, tmp129
	movq	48(%rax), %rdx	# if_info_8(D)->jump, D.14210
	movq	-8(%rbp), %rax	# seq, tmp130
	movq	%rdx, %rsi	# D.14210,
	movq	%rax, %rdi	# tmp130,
	call	emit_insns_before	#
	.loc 1 822 0
	movl	$1, %eax	#, D.14209
	jmp	.L134	#
.L131:
	.loc 1 825 0
	call	end_sequence	#
.L123:
	.loc 1 828 0
	movl	$0, %eax	#, D.14209
.L134:
	.loc 1 829 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	noce_try_store_flag_inc, .-noce_try_store_flag_inc
	.type	noce_try_store_flag_mask, @function
noce_try_store_flag_mask:
.LFB14:
	.loc 1 836 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# if_info, if_info
	.loc 1 840 0
	movl	$0, -20(%rbp)	#, reversep
	.loc 1 841 0
	movl	no_new_pseudos(%rip), %eax	# no_new_pseudos, no_new_pseudos.23
	testl	%eax, %eax	# no_new_pseudos.23
	jne	.L136	#,
	.loc 1 843 0
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.24
	.loc 1 842 0
	cmpl	$1, %eax	#, ix86_branch_cost.24
	jle	.L136	#,
	.loc 1 844 0
	movq	-40(%rbp), %rax	# if_info, tmp90
	movq	32(%rax), %rdx	# if_info_7(D)->a, D.14217
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14217
	cmpq	%rax, %rdx	# D.14217, D.14217
	jne	.L137	#,
	.loc 1 845 0
	movq	-40(%rbp), %rax	# if_info, tmp91
	movq	24(%rax), %rdx	# if_info_7(D)->x, D.14217
	movq	-40(%rbp), %rax	# if_info, tmp92
	movq	40(%rax), %rax	# if_info_7(D)->b, D.14217
	movq	%rdx, %rsi	# D.14217,
	movq	%rax, %rdi	# D.14217,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14216
	jne	.L138	#,
.L137:
	.loc 1 846 0
	movq	-40(%rbp), %rax	# if_info, tmp93
	movq	48(%rax), %rdx	# if_info_7(D)->jump, D.14217
	movq	-40(%rbp), %rax	# if_info, tmp94
	movq	56(%rax), %rax	# if_info_7(D)->cond, D.14217
	movq	%rdx, %rsi	# D.14217,
	movq	%rax, %rdi	# D.14217,
	call	reversed_comparison_code	#
	.loc 1 848 0
	testl	%eax, %eax	# D.14218
	setne	%al	#, D.14219
	.loc 1 846 0
	movzbl	%al, %eax	# D.14219, tmp95
	movl	%eax, -20(%rbp)	# tmp95, reversep
	cmpl	$0, -20(%rbp)	#, reversep
	je	.L136	#,
	.loc 1 849 0
	movq	-40(%rbp), %rax	# if_info, tmp96
	movq	40(%rax), %rdx	# if_info_7(D)->b, D.14217
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14217
	cmpq	%rax, %rdx	# D.14217, D.14217
	jne	.L136	#,
	.loc 1 850 0
	movq	-40(%rbp), %rax	# if_info, tmp97
	movq	24(%rax), %rdx	# if_info_7(D)->x, D.14217
	movq	-40(%rbp), %rax	# if_info, tmp98
	movq	32(%rax), %rax	# if_info_7(D)->a, D.14217
	movq	%rdx, %rsi	# D.14217,
	movq	%rax, %rdi	# D.14217,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14216
	je	.L136	#,
.L138:
	.loc 1 852 0
	call	start_sequence	#
	.loc 1 854 0
	movq	-40(%rbp), %rax	# if_info, tmp99
	movq	24(%rax), %rax	# if_info_7(D)->x, D.14217
	movzbl	2(%rax), %eax	# _23->mode, D.14220
	.loc 1 853 0
	movzbl	%al, %eax	# D.14220, D.14221
	movl	%eax, %edi	# D.14221,
	call	gen_reg_rtx	#
	movq	%rax, %rsi	#, D.14217
	movl	-20(%rbp), %edx	# reversep, tmp100
	movq	-40(%rbp), %rax	# if_info, tmp101
	movl	$-1, %ecx	#,
	movq	%rax, %rdi	# tmp101,
	call	noce_emit_store_flag	#
	movq	%rax, -16(%rbp)	# tmp102, target
	.loc 1 856 0
	cmpq	$0, -16(%rbp)	#, target
	je	.L139	#,
	.loc 1 857 0
	movq	-40(%rbp), %rax	# if_info, tmp103
	movq	24(%rax), %rsi	# if_info_7(D)->x, D.14217
	movq	-40(%rbp), %rax	# if_info, tmp104
	movq	24(%rax), %rdx	# if_info_7(D)->x, D.14217
	movq	-40(%rbp), %rax	# if_info, tmp105
	movq	24(%rax), %rax	# if_info_7(D)->x, D.14217
	movzbl	2(%rax), %eax	# _30->mode, D.14220
	movzbl	%al, %eax	# D.14220, D.14221
	movq	-16(%rbp), %rcx	# target, tmp106
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# D.14217,
	movl	$83, %esi	#,
	movl	%eax, %edi	# D.14221,
	call	expand_simple_binop	#
	movq	%rax, -16(%rbp)	# tmp107, target
.L139:
	.loc 1 861 0
	cmpq	$0, -16(%rbp)	#, target
	je	.L140	#,
	.loc 1 863 0
	movq	-40(%rbp), %rax	# if_info, tmp108
	movq	24(%rax), %rax	# if_info_7(D)->x, D.14217
	cmpq	-16(%rbp), %rax	# target, D.14217
	je	.L141	#,
	.loc 1 864 0
	movq	-40(%rbp), %rax	# if_info, tmp109
	movq	24(%rax), %rax	# if_info_7(D)->x, D.14217
	movq	-16(%rbp), %rdx	# target, tmp110
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# D.14217,
	call	noce_emit_move_insn	#
.L141:
	.loc 1 866 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp111, seq
	.loc 1 867 0
	call	end_sequence	#
	.loc 1 869 0
	movq	-8(%rbp), %rax	# seq, tmp112
	movq	%rax, %rdi	# tmp112,
	call	seq_contains_jump	#
	testl	%eax, %eax	# D.14216
	je	.L142	#,
	.loc 1 870 0
	movl	$0, %eax	#, D.14216
	jmp	.L143	#
.L142:
	.loc 1 872 0
	movq	-40(%rbp), %rax	# if_info, tmp113
	movq	48(%rax), %rdx	# if_info_7(D)->jump, D.14217
	movq	-8(%rbp), %rax	# seq, tmp114
	movq	%rdx, %rsi	# D.14217,
	movq	%rax, %rdi	# tmp114,
	call	emit_insns_before	#
	.loc 1 874 0
	movl	$1, %eax	#, D.14216
	jmp	.L143	#
.L140:
	.loc 1 877 0
	call	end_sequence	#
.L136:
	.loc 1 880 0
	movl	$0, %eax	#, D.14216
.L143:
	.loc 1 881 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	noce_try_store_flag_mask, .-noce_try_store_flag_mask
	.type	noce_emit_cmove, @function
noce_emit_cmove:
.LFB15:
	.loc 1 890 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -24(%rbp)	# if_info, if_info
	movq	%rsi, -32(%rbp)	# x, x
	movl	%edx, -36(%rbp)	# code, code
	movq	%rcx, -48(%rbp)	# cmp_a, cmp_a
	movq	%r8, -56(%rbp)	# cmp_b, cmp_b
	movq	%r9, -64(%rbp)	# vfalse, vfalse
	.loc 1 896 0
	movq	-24(%rbp), %rax	# if_info, tmp81
	movq	64(%rax), %rdx	# if_info_4(D)->cond_earliest, D.14223
	movq	-24(%rbp), %rax	# if_info, tmp82
	movq	48(%rax), %rax	# if_info_4(D)->jump, D.14223
	cmpq	%rax, %rdx	# D.14223, D.14223
	jne	.L145	#,
.LBB4:
	.loc 1 900 0
	movq	-24(%rbp), %rax	# if_info, tmp83
	movq	56(%rax), %rax	# if_info_4(D)->cond, D.14223
	movzbl	2(%rax), %eax	# _7->mode, D.14224
	movzbl	%al, %esi	# D.14224, D.14225
	movq	-56(%rbp), %rcx	# cmp_b, tmp84
	movq	-48(%rbp), %rdx	# cmp_a, tmp85
	movl	-36(%rbp), %eax	# code, tmp86
	movl	%eax, %edi	# tmp86,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -8(%rbp)	# tmp87, tmp
	.loc 1 901 0
	movq	-32(%rbp), %rax	# x, tmp88
	movzbl	2(%rax), %eax	# x_14(D)->mode, D.14224
	movzbl	%al, %eax	# D.14224, D.14225
	movq	-64(%rbp), %rcx	# vfalse, tmp89
	movq	-8(%rbp), %rdx	# tmp, tmp90
	movq	%rcx, %r8	# tmp89,
	movq	16(%rbp), %rcx	# vtrue,
	movl	%eax, %esi	# D.14225,
	movl	$72, %edi	#,
	call	gen_rtx_fmt_eee	#
	movq	%rax, -8(%rbp)	# tmp91, tmp
	.loc 1 902 0
	movq	-8(%rbp), %rdx	# tmp, tmp92
	movq	-32(%rbp), %rax	# x, tmp93
	movq	%rdx, %rcx	# tmp92,
	movq	%rax, %rdx	# tmp93,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -8(%rbp)	# tmp94, tmp
	.loc 1 904 0
	call	start_sequence	#
	.loc 1 905 0
	movq	-8(%rbp), %rax	# tmp, tmp95
	movq	%rax, %rdi	# tmp95,
	call	emit_insn	#
	movq	%rax, -8(%rbp)	# tmp96, tmp
	.loc 1 907 0
	movq	-8(%rbp), %rax	# tmp, tmp97
	movl	40(%rax), %eax	# tmp_21->fld[4].rtint, D.14226
	testl	%eax, %eax	# D.14226
	js	.L146	#,
	.loc 1 907 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tmp, tmp98
	movl	40(%rax), %eax	# tmp_21->fld[4].rtint, D.14226
	notl	%eax	# tmp99
	shrl	$31, %eax	#, tmp100
	jmp	.L147	#
.L146:
	.loc 1 907 0 discriminator 2
	movq	-8(%rbp), %rax	# tmp, tmp101
	movq	%rax, %rdi	# tmp101,
	call	recog_memoized_1	#
	notl	%eax	# tmp102
	shrl	$31, %eax	#, tmp103
.L147:
	.loc 1 907 0 discriminator 3
	testb	%al, %al	# iftmp.25
	je	.L148	#,
	.loc 1 909 0 is_stmt 1
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp104, tmp
	.loc 1 910 0
	call	end_sequence	#
	.loc 1 911 0
	movq	-8(%rbp), %rax	# tmp, tmp105
	movq	%rax, %rdi	# tmp105,
	call	emit_insns	#
	.loc 1 913 0
	movq	-32(%rbp), %rax	# x, D.14222
	jmp	.L149	#
.L148:
	.loc 1 916 0
	call	end_sequence	#
.L145:
.LBE4:
	.loc 1 920 0
	movq	-48(%rbp), %rax	# cmp_a, tmp106
	movzbl	2(%rax), %eax	# cmp_a_11(D)->mode, D.14224
	movzbl	%al, %edx	# D.14224, D.14225
	movq	-48(%rbp), %rax	# cmp_a, tmp107
	movl	%edx, %esi	# D.14225,
	movq	%rax, %rdi	# tmp107,
	call	general_operand	#
	testl	%eax, %eax	# D.14226
	je	.L150	#,
	.loc 1 921 0
	movq	-56(%rbp), %rax	# cmp_b, tmp108
	movzbl	2(%rax), %eax	# cmp_b_12(D)->mode, D.14224
	movzbl	%al, %edx	# D.14224, D.14225
	movq	-56(%rbp), %rax	# cmp_b, tmp109
	movl	%edx, %esi	# D.14225,
	movq	%rax, %rdi	# tmp109,
	call	general_operand	#
	testl	%eax, %eax	# D.14226
	jne	.L151	#,
.L150:
	.loc 1 922 0
	movl	$0, %eax	#, D.14222
	jmp	.L149	#
.L151:
	.loc 1 925 0
	cmpl	$111, -36(%rbp)	#, code
	je	.L152	#,
	.loc 1 927 0
	cmpl	$108, -36(%rbp)	#, code
	je	.L152	#,
	.loc 1 928 0
	cmpl	$110, -36(%rbp)	#, code
	je	.L152	#,
	.loc 1 925 0
	cmpl	$109, -36(%rbp)	#, code
	jne	.L153	#,
.L152:
	.loc 1 925 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.26
	jmp	.L154	#
.L153:
	.loc 1 925 0 discriminator 2
	movl	$0, %eax	#, iftmp.26
.L154:
	.loc 1 926 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rdx	# x, tmp110
	movzbl	2(%rdx), %edx	# x_14(D)->mode, D.14224
	.loc 1 925 0 discriminator 3
	movzbl	%dl, %r8d	# D.14224, D.14225
	movq	-56(%rbp), %rcx	# cmp_b, tmp111
	movq	-48(%rbp), %rdx	# cmp_a, tmp112
	movl	-36(%rbp), %esi	# code, tmp113
	movq	-32(%rbp), %rdi	# x, tmp114
	movl	%eax, 16(%rsp)	# iftmp.26,
	movl	%r8d, 8(%rsp)	# D.14225,
	movq	-64(%rbp), %rax	# vfalse, tmp115
	movq	%rax, (%rsp)	# tmp115,
	movq	16(%rbp), %r9	# vtrue,
	movl	$0, %r8d	#,
	call	emit_conditional_move	#
.L149:
	.loc 1 936 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	noce_emit_cmove, .-noce_emit_cmove
	.type	noce_try_cmove, @function
noce_try_cmove:
.LFB16:
	.loc 1 945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# if_info, if_info
	.loc 1 949 0
	movq	-40(%rbp), %rax	# if_info, tmp109
	movq	32(%rax), %rax	# if_info_2(D)->a, D.14228
	movzwl	(%rax), %eax	# _3->code, D.14229
	cmpw	$67, %ax	#, D.14229
	je	.L156	#,
	.loc 1 949 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# if_info, tmp110
	movq	32(%rax), %rax	# if_info_2(D)->a, D.14228
	movzwl	(%rax), %eax	# _5->code, D.14229
	cmpw	$68, %ax	#, D.14229
	je	.L156	#,
	movq	-40(%rbp), %rax	# if_info, tmp111
	movq	32(%rax), %rax	# if_info_2(D)->a, D.14228
	movzwl	(%rax), %eax	# _7->code, D.14229
	cmpw	$54, %ax	#, D.14229
	je	.L156	#,
	movq	-40(%rbp), %rax	# if_info, tmp112
	movq	32(%rax), %rax	# if_info_2(D)->a, D.14228
	movzwl	(%rax), %eax	# _9->code, D.14229
	cmpw	$55, %ax	#, D.14229
	je	.L156	#,
	movq	-40(%rbp), %rax	# if_info, tmp113
	movq	32(%rax), %rax	# if_info_2(D)->a, D.14228
	movzwl	(%rax), %eax	# _11->code, D.14229
	cmpw	$58, %ax	#, D.14229
	je	.L156	#,
	movq	-40(%rbp), %rax	# if_info, tmp114
	movq	32(%rax), %rax	# if_info_2(D)->a, D.14228
	movzwl	(%rax), %eax	# _13->code, D.14229
	cmpw	$134, %ax	#, D.14229
	je	.L156	#,
	movq	-40(%rbp), %rax	# if_info, tmp115
	movq	32(%rax), %rax	# if_info_2(D)->a, D.14228
	movzwl	(%rax), %eax	# _15->code, D.14229
	cmpw	$56, %ax	#, D.14229
	je	.L156	#,
	movq	-40(%rbp), %rax	# if_info, tmp116
	movq	32(%rax), %rax	# if_info_2(D)->a, D.14228
	movzwl	(%rax), %eax	# _17->code, D.14229
	cmpw	$140, %ax	#, D.14229
	je	.L156	#,
	movq	-40(%rbp), %rax	# if_info, tmp117
	movq	32(%rax), %rax	# if_info_2(D)->a, D.14228
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14228,
	call	register_operand	#
	testl	%eax, %eax	# D.14227
	je	.L157	#,
.L156:
	.loc 1 950 0 is_stmt 1
	movq	-40(%rbp), %rax	# if_info, tmp118
	movq	40(%rax), %rax	# if_info_2(D)->b, D.14228
	movzwl	(%rax), %eax	# _21->code, D.14229
	cmpw	$67, %ax	#, D.14229
	je	.L158	#,
	.loc 1 950 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# if_info, tmp119
	movq	40(%rax), %rax	# if_info_2(D)->b, D.14228
	movzwl	(%rax), %eax	# _23->code, D.14229
	cmpw	$68, %ax	#, D.14229
	je	.L158	#,
	movq	-40(%rbp), %rax	# if_info, tmp120
	movq	40(%rax), %rax	# if_info_2(D)->b, D.14228
	movzwl	(%rax), %eax	# _25->code, D.14229
	cmpw	$54, %ax	#, D.14229
	je	.L158	#,
	movq	-40(%rbp), %rax	# if_info, tmp121
	movq	40(%rax), %rax	# if_info_2(D)->b, D.14228
	movzwl	(%rax), %eax	# _27->code, D.14229
	cmpw	$55, %ax	#, D.14229
	je	.L158	#,
	movq	-40(%rbp), %rax	# if_info, tmp122
	movq	40(%rax), %rax	# if_info_2(D)->b, D.14228
	movzwl	(%rax), %eax	# _29->code, D.14229
	cmpw	$58, %ax	#, D.14229
	je	.L158	#,
	movq	-40(%rbp), %rax	# if_info, tmp123
	movq	40(%rax), %rax	# if_info_2(D)->b, D.14228
	movzwl	(%rax), %eax	# _31->code, D.14229
	cmpw	$134, %ax	#, D.14229
	je	.L158	#,
	movq	-40(%rbp), %rax	# if_info, tmp124
	movq	40(%rax), %rax	# if_info_2(D)->b, D.14228
	movzwl	(%rax), %eax	# _33->code, D.14229
	cmpw	$56, %ax	#, D.14229
	je	.L158	#,
	movq	-40(%rbp), %rax	# if_info, tmp125
	movq	40(%rax), %rax	# if_info_2(D)->b, D.14228
	movzwl	(%rax), %eax	# _35->code, D.14229
	cmpw	$140, %ax	#, D.14229
	je	.L158	#,
	movq	-40(%rbp), %rax	# if_info, tmp126
	movq	40(%rax), %rax	# if_info_2(D)->b, D.14228
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14228,
	call	register_operand	#
	testl	%eax, %eax	# D.14227
	je	.L157	#,
.L158:
	.loc 1 952 0 is_stmt 1
	call	start_sequence	#
	.loc 1 954 0
	movq	-40(%rbp), %rax	# if_info, tmp127
	movq	56(%rax), %rax	# if_info_2(D)->cond, D.14228
	movzwl	(%rax), %eax	# _39->code, D.14229
	movzwl	%ax, %eax	# D.14229, tmp128
	movl	%eax, -20(%rbp)	# tmp128, code
	.loc 1 955 0
	movq	-40(%rbp), %rax	# if_info, tmp129
	movq	40(%rax), %rdi	# if_info_2(D)->b, D.14228
	movq	-40(%rbp), %rax	# if_info, tmp130
	movq	32(%rax), %r9	# if_info_2(D)->a, D.14228
	.loc 1 957 0
	movq	-40(%rbp), %rax	# if_info, tmp131
	movq	56(%rax), %rax	# if_info_2(D)->cond, D.14228
	.loc 1 955 0
	movq	16(%rax), %r8	# _44->fld[1].rtx, D.14228
	.loc 1 956 0
	movq	-40(%rbp), %rax	# if_info, tmp132
	movq	56(%rax), %rax	# if_info_2(D)->cond, D.14228
	.loc 1 955 0
	movq	8(%rax), %rcx	# _46->fld[0].rtx, D.14228
	movq	-40(%rbp), %rax	# if_info, tmp133
	movq	24(%rax), %rsi	# if_info_2(D)->x, D.14228
	movl	-20(%rbp), %edx	# code, tmp134
	movq	-40(%rbp), %rax	# if_info, tmp135
	movq	%rdi, (%rsp)	# D.14228,
	movq	%rax, %rdi	# tmp135,
	call	noce_emit_cmove	#
	movq	%rax, -16(%rbp)	# tmp136, target
	.loc 1 960 0
	cmpq	$0, -16(%rbp)	#, target
	je	.L159	#,
	.loc 1 962 0
	movq	-40(%rbp), %rax	# if_info, tmp137
	movq	24(%rax), %rax	# if_info_2(D)->x, D.14228
	cmpq	-16(%rbp), %rax	# target, D.14228
	je	.L160	#,
	.loc 1 963 0
	movq	-40(%rbp), %rax	# if_info, tmp138
	movq	24(%rax), %rax	# if_info_2(D)->x, D.14228
	movq	-16(%rbp), %rdx	# target, tmp139
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# D.14228,
	call	noce_emit_move_insn	#
.L160:
	.loc 1 965 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp140, seq
	.loc 1 966 0
	call	end_sequence	#
	.loc 1 967 0
	movq	-40(%rbp), %rax	# if_info, tmp141
	movq	48(%rax), %rdx	# if_info_2(D)->jump, D.14228
	movq	-8(%rbp), %rax	# seq, tmp142
	movq	%rdx, %rsi	# D.14228,
	movq	%rax, %rdi	# tmp142,
	call	emit_insns_before	#
	.loc 1 968 0
	movl	$1, %eax	#, D.14227
	jmp	.L161	#
.L159:
	.loc 1 972 0
	call	end_sequence	#
	.loc 1 973 0
	movl	$0, %eax	#, D.14227
	jmp	.L161	#
.L157:
	.loc 1 977 0
	movl	$0, %eax	#, D.14227
.L161:
	.loc 1 978 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	noce_try_cmove, .-noce_try_cmove
	.type	noce_try_cmove_arith, @function
noce_try_cmove_arith:
.LFB17:
	.loc 1 985 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# if_info, if_info
	.loc 1 986 0
	movq	-104(%rbp), %rax	# if_info, tmp179
	movq	32(%rax), %rax	# if_info_30(D)->a, tmp180
	movq	%rax, -72(%rbp)	# tmp180, a
	.loc 1 987 0
	movq	-104(%rbp), %rax	# if_info, tmp181
	movq	40(%rax), %rax	# if_info_30(D)->b, tmp182
	movq	%rax, -64(%rbp)	# tmp182, b
	.loc 1 988 0
	movq	-104(%rbp), %rax	# if_info, tmp183
	movq	24(%rax), %rax	# if_info_30(D)->x, tmp184
	movq	%rax, -56(%rbp)	# tmp184, x
	.loc 1 991 0
	movl	$0, -84(%rbp)	#, is_mem
	.loc 1 998 0
	movl	no_new_pseudos(%rip), %eax	# no_new_pseudos, no_new_pseudos.27
	testl	%eax, %eax	# no_new_pseudos.27
	jne	.L163	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	movl	cse_not_expected(%rip), %eax	# cse_not_expected, cse_not_expected.28
	testl	%eax, %eax	# cse_not_expected.28
	je	.L163	#,
	.loc 1 999 0 is_stmt 1
	movq	-72(%rbp), %rax	# a, tmp185
	movzwl	(%rax), %eax	# a_31->code, D.14231
	cmpw	$66, %ax	#, D.14231
	jne	.L163	#,
	.loc 1 999 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# b, tmp186
	movzwl	(%rax), %eax	# b_32->code, D.14231
	cmpw	$66, %ax	#, D.14231
	jne	.L163	#,
	.loc 1 1000 0 is_stmt 1
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.29
	cmpl	$4, %eax	#, ix86_branch_cost.29
	jle	.L163	#,
	.loc 1 1002 0
	movq	-72(%rbp), %rax	# a, tmp187
	movq	8(%rax), %rax	# a_31->fld[0].rtx, tmp188
	movq	%rax, -72(%rbp)	# tmp188, a
	.loc 1 1003 0
	movq	-64(%rbp), %rax	# b, tmp189
	movq	8(%rax), %rax	# b_32->fld[0].rtx, tmp190
	movq	%rax, -64(%rbp)	# tmp190, b
	.loc 1 1004 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.31
	andl	$33554432, %eax	#, D.14230
	testl	%eax, %eax	# D.14230
	je	.L164	#,
	.loc 1 1004 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.30
	jmp	.L165	#
.L164:
	.loc 1 1004 0 discriminator 2
	movl	$4, %eax	#, iftmp.30
.L165:
	.loc 1 1004 0 discriminator 3
	movl	%eax, %edi	# iftmp.30,
	call	gen_reg_rtx	#
	movq	%rax, -56(%rbp)	# tmp191, x
	.loc 1 1005 0 is_stmt 1 discriminator 3
	movl	$1, -84(%rbp)	#, is_mem
	jmp	.L166	#
.L163:
	.loc 1 1011 0
	movq	-72(%rbp), %rax	# a, tmp192
	movq	%rax, %rdi	# tmp192,
	call	may_trap_p	#
	testl	%eax, %eax	# D.14230
	jne	.L167	#,
	.loc 1 1011 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# b, tmp193
	movq	%rax, %rdi	# tmp193,
	call	may_trap_p	#
	testl	%eax, %eax	# D.14230
	je	.L166	#,
.L167:
	.loc 1 1012 0 is_stmt 1
	movl	$0, %eax	#, D.14230
	jmp	.L168	#
.L166:
	.loc 1 1021 0
	movq	-104(%rbp), %rax	# if_info, tmp194
	movq	56(%rax), %rax	# if_info_30(D)->cond, D.14232
	movzwl	(%rax), %eax	# _51->code, D.14231
	movzwl	%ax, %eax	# D.14231, tmp195
	movl	%eax, -80(%rbp)	# tmp195, code
	.loc 1 1022 0
	movq	-104(%rbp), %rax	# if_info, tmp196
	movq	8(%rax), %rax	# if_info_30(D)->insn_a, tmp197
	movq	%rax, -48(%rbp)	# tmp197, insn_a
	.loc 1 1023 0
	movq	-104(%rbp), %rax	# if_info, tmp198
	movq	16(%rax), %rax	# if_info_30(D)->insn_b, tmp199
	movq	%rax, -40(%rbp)	# tmp199, insn_b
	.loc 1 1026 0
	movq	-104(%rbp), %rax	# if_info, tmp200
	movq	48(%rax), %rdx	# if_info_30(D)->jump, D.14232
	movq	-104(%rbp), %rax	# if_info, tmp201
	movq	56(%rax), %rax	# if_info_30(D)->cond, D.14232
	movq	%rdx, %rsi	# D.14232,
	movq	%rax, %rdi	# D.14232,
	call	reversed_comparison_code	#
	testl	%eax, %eax	# D.14233
	je	.L169	#,
.LBB5:
	.loc 1 1028 0
	movl	$0, -76(%rbp)	#, reversep
	.loc 1 1029 0
	movq	-56(%rbp), %rdx	# x, tmp202
	movq	-64(%rbp), %rax	# b, tmp203
	movq	%rdx, %rsi	# tmp202,
	movq	%rax, %rdi	# tmp203,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14230
	je	.L170	#,
	.loc 1 1030 0
	movl	$1, -76(%rbp)	#, reversep
	jmp	.L171	#
.L170:
	.loc 1 1031 0
	movq	-64(%rbp), %rax	# b, tmp204
	movzbl	2(%rax), %eax	# b_5->mode, D.14234
	movzbl	%al, %edx	# D.14234, D.14235
	movq	-64(%rbp), %rax	# b, tmp205
	movl	%edx, %esi	# D.14235,
	movq	%rax, %rdi	# tmp205,
	call	general_operand	#
	testl	%eax, %eax	# D.14230
	je	.L171	#,
	.loc 1 1032 0
	movl	$1, -76(%rbp)	#, reversep
.L171:
	.loc 1 1034 0
	cmpl	$0, -76(%rbp)	#, reversep
	je	.L169	#,
	.loc 1 1036 0
	movq	-104(%rbp), %rax	# if_info, tmp206
	movq	48(%rax), %rdx	# if_info_30(D)->jump, D.14232
	movq	-104(%rbp), %rax	# if_info, tmp207
	movq	56(%rax), %rax	# if_info_30(D)->cond, D.14232
	movq	%rdx, %rsi	# D.14232,
	movq	%rax, %rdi	# D.14232,
	call	reversed_comparison_code	#
	movl	%eax, -80(%rbp)	# tmp208, code
	.loc 1 1037 0
	movq	-72(%rbp), %rax	# a, tmp209
	movq	%rax, -32(%rbp)	# tmp209, tmp
	movq	-64(%rbp), %rax	# b, tmp210
	movq	%rax, -72(%rbp)	# tmp210, a
	movq	-32(%rbp), %rax	# tmp, tmp211
	movq	%rax, -64(%rbp)	# tmp211, b
	.loc 1 1038 0
	movq	-48(%rbp), %rax	# insn_a, tmp212
	movq	%rax, -32(%rbp)	# tmp212, tmp
	movq	-40(%rbp), %rax	# insn_b, tmp213
	movq	%rax, -48(%rbp)	# tmp213, insn_a
	movq	-32(%rbp), %rax	# tmp, tmp214
	movq	%rax, -40(%rbp)	# tmp214, insn_b
.L169:
.LBE5:
	.loc 1 1042 0
	call	start_sequence	#
	.loc 1 1048 0
	movq	-72(%rbp), %rax	# a, tmp215
	movzbl	2(%rax), %eax	# a_2->mode, D.14234
	movzbl	%al, %edx	# D.14234, D.14235
	movq	-72(%rbp), %rax	# a, tmp216
	movl	%edx, %esi	# D.14235,
	movq	%rax, %rdi	# tmp216,
	call	general_operand	#
	testl	%eax, %eax	# D.14230
	jne	.L172	#,
.LBB6:
	.loc 1 1052 0
	movl	no_new_pseudos(%rip), %eax	# no_new_pseudos, no_new_pseudos.32
	testl	%eax, %eax	# no_new_pseudos.32
	je	.L173	#,
	.loc 1 1053 0
	jmp	.L174	#
.L173:
	.loc 1 1055 0
	cmpl	$0, -84(%rbp)	#, is_mem
	je	.L175	#,
	.loc 1 1057 0
	movq	-72(%rbp), %rax	# a, tmp217
	movzbl	2(%rax), %eax	# a_2->mode, D.14234
	movzbl	%al, %eax	# D.14234, D.14235
	movl	%eax, %edi	# D.14235,
	call	gen_reg_rtx	#
	movq	%rax, -32(%rbp)	# tmp218, tmp
	.loc 1 1058 0
	movq	-72(%rbp), %rdx	# a, tmp219
	movq	-32(%rbp), %rax	# tmp, tmp220
	movq	%rdx, %rcx	# tmp219,
	movq	%rax, %rdx	# tmp220,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.14232,
	call	emit_insn	#
	movq	%rax, -32(%rbp)	# tmp221, tmp
	jmp	.L176	#
.L175:
	.loc 1 1060 0
	cmpq	$0, -48(%rbp)	#, insn_a
	jne	.L177	#,
	.loc 1 1061 0
	jmp	.L174	#
.L177:
	.loc 1 1064 0
	movq	-72(%rbp), %rax	# a, tmp222
	movzbl	2(%rax), %eax	# a_2->mode, D.14234
	movzbl	%al, %eax	# D.14234, D.14235
	movl	%eax, %edi	# D.14235,
	call	gen_reg_rtx	#
	movq	%rax, -72(%rbp)	# tmp223, a
	.loc 1 1065 0
	movq	-48(%rbp), %rax	# insn_a, tmp224
	movq	%rax, %rdi	# tmp224,
	call	copy_rtx	#
	movq	%rax, -32(%rbp)	# tmp225, tmp
	.loc 1 1066 0
	movq	-32(%rbp), %rax	# tmp, tmp226
	movzwl	(%rax), %eax	# tmp_87->code, D.14231
	movzwl	%ax, %eax	# D.14231, D.14230
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14236
	cmpb	$105, %al	#, D.14236
	jne	.L178	#,
	.loc 1 1066 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmp, tmp228
	movq	32(%rax), %rax	# tmp_87->fld[3].rtx, D.14232
	movzwl	(%rax), %eax	# _91->code, D.14231
	cmpw	$47, %ax	#, D.14231
	jne	.L179	#,
	.loc 1 1066 0 discriminator 3
	movq	-32(%rbp), %rax	# tmp, tmp229
	movq	32(%rax), %rax	# tmp_87->fld[3].rtx, iftmp.34
	jmp	.L181	#
.L179:
	.loc 1 1066 0 discriminator 4
	movq	-32(%rbp), %rax	# tmp, tmp230
	movq	32(%rax), %rdx	# tmp_87->fld[3].rtx, D.14232
	movq	-32(%rbp), %rax	# tmp, tmp231
	movq	%rdx, %rsi	# D.14232,
	movq	%rax, %rdi	# tmp231,
	call	single_set_2	#
	jmp	.L181	#
.L178:
	.loc 1 1066 0 discriminator 2
	movl	$0, %eax	#, iftmp.33
.L181:
	.loc 1 1066 0 discriminator 5
	movq	%rax, -24(%rbp)	# iftmp.33, set
	.loc 1 1067 0 is_stmt 1 discriminator 5
	movq	-24(%rbp), %rax	# set, tmp232
	movq	-72(%rbp), %rdx	# a, tmp233
	movq	%rdx, 8(%rax)	# tmp233, set_98->fld[0].rtx
	.loc 1 1068 0 discriminator 5
	movq	-32(%rbp), %rax	# tmp, tmp234
	movq	32(%rax), %rax	# tmp_87->fld[3].rtx, D.14232
	movq	%rax, %rdi	# D.14232,
	call	emit_insn	#
	movq	%rax, -32(%rbp)	# tmp235, tmp
.L176:
	.loc 1 1070 0
	movq	-32(%rbp), %rax	# tmp, tmp236
	movl	40(%rax), %eax	# tmp_12->fld[4].rtint, D.14230
	testl	%eax, %eax	# D.14230
	js	.L182	#,
	.loc 1 1070 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmp, tmp237
	movl	40(%rax), %eax	# tmp_12->fld[4].rtint, D.14230
	shrl	$31, %eax	#, tmp238
	jmp	.L183	#
.L182:
	.loc 1 1070 0 discriminator 2
	movq	-32(%rbp), %rax	# tmp, tmp239
	movq	%rax, %rdi	# tmp239,
	call	recog_memoized_1	#
	shrl	$31, %eax	#, tmp240
.L183:
	.loc 1 1070 0 discriminator 3
	testb	%al, %al	# iftmp.35
	je	.L172	#,
	.loc 1 1071 0 is_stmt 1
	jmp	.L174	#
.L172:
.LBE6:
	.loc 1 1073 0
	movq	-64(%rbp), %rax	# b, tmp241
	movzbl	2(%rax), %eax	# b_6->mode, D.14234
	movzbl	%al, %edx	# D.14234, D.14235
	movq	-64(%rbp), %rax	# b, tmp242
	movl	%edx, %esi	# D.14235,
	movq	%rax, %rdi	# tmp242,
	call	general_operand	#
	testl	%eax, %eax	# D.14230
	jne	.L184	#,
.LBB7:
	.loc 1 1077 0
	movl	no_new_pseudos(%rip), %eax	# no_new_pseudos, no_new_pseudos.36
	testl	%eax, %eax	# no_new_pseudos.36
	je	.L185	#,
	.loc 1 1078 0
	jmp	.L174	#
.L185:
	.loc 1 1080 0
	cmpl	$0, -84(%rbp)	#, is_mem
	je	.L186	#,
	.loc 1 1082 0
	movq	-64(%rbp), %rax	# b, tmp243
	movzbl	2(%rax), %eax	# b_6->mode, D.14234
	movzbl	%al, %eax	# D.14234, D.14235
	movl	%eax, %edi	# D.14235,
	call	gen_reg_rtx	#
	movq	%rax, -32(%rbp)	# tmp244, tmp
	.loc 1 1083 0
	movq	-64(%rbp), %rdx	# b, tmp245
	movq	-32(%rbp), %rax	# tmp, tmp246
	movq	%rdx, %rcx	# tmp245,
	movq	%rax, %rdx	# tmp246,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.14232,
	call	emit_insn	#
	movq	%rax, -32(%rbp)	# tmp247, tmp
	jmp	.L187	#
.L186:
	.loc 1 1085 0
	cmpq	$0, -40(%rbp)	#, insn_b
	jne	.L188	#,
	.loc 1 1086 0
	jmp	.L174	#
.L188:
	.loc 1 1089 0
	movq	-64(%rbp), %rax	# b, tmp248
	movzbl	2(%rax), %eax	# b_6->mode, D.14234
	movzbl	%al, %eax	# D.14234, D.14235
	movl	%eax, %edi	# D.14235,
	call	gen_reg_rtx	#
	movq	%rax, -64(%rbp)	# tmp249, b
	.loc 1 1090 0
	movq	-40(%rbp), %rax	# insn_b, tmp250
	movq	%rax, %rdi	# tmp250,
	call	copy_rtx	#
	movq	%rax, -32(%rbp)	# tmp251, tmp
	.loc 1 1091 0
	movq	-32(%rbp), %rax	# tmp, tmp252
	movzwl	(%rax), %eax	# tmp_118->code, D.14231
	movzwl	%ax, %eax	# D.14231, D.14230
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14236
	cmpb	$105, %al	#, D.14236
	jne	.L189	#,
	.loc 1 1091 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmp, tmp254
	movq	32(%rax), %rax	# tmp_118->fld[3].rtx, D.14232
	movzwl	(%rax), %eax	# _122->code, D.14231
	cmpw	$47, %ax	#, D.14231
	jne	.L190	#,
	.loc 1 1091 0 discriminator 3
	movq	-32(%rbp), %rax	# tmp, tmp255
	movq	32(%rax), %rax	# tmp_118->fld[3].rtx, iftmp.38
	jmp	.L192	#
.L190:
	.loc 1 1091 0 discriminator 4
	movq	-32(%rbp), %rax	# tmp, tmp256
	movq	32(%rax), %rdx	# tmp_118->fld[3].rtx, D.14232
	movq	-32(%rbp), %rax	# tmp, tmp257
	movq	%rdx, %rsi	# D.14232,
	movq	%rax, %rdi	# tmp257,
	call	single_set_2	#
	jmp	.L192	#
.L189:
	.loc 1 1091 0 discriminator 2
	movl	$0, %eax	#, iftmp.37
.L192:
	.loc 1 1091 0 discriminator 5
	movq	%rax, -16(%rbp)	# iftmp.37, set
	.loc 1 1092 0 is_stmt 1 discriminator 5
	movq	-16(%rbp), %rax	# set, tmp258
	movq	-64(%rbp), %rdx	# b, tmp259
	movq	%rdx, 8(%rax)	# tmp259, set_129->fld[0].rtx
	.loc 1 1093 0 discriminator 5
	movq	-32(%rbp), %rax	# tmp, tmp260
	movq	32(%rax), %rax	# tmp_118->fld[3].rtx, D.14232
	movq	%rax, %rdi	# D.14232,
	call	emit_insn	#
	movq	%rax, -32(%rbp)	# tmp261, tmp
.L187:
	.loc 1 1095 0
	movq	-32(%rbp), %rax	# tmp, tmp262
	movl	40(%rax), %eax	# tmp_13->fld[4].rtint, D.14230
	testl	%eax, %eax	# D.14230
	js	.L193	#,
	.loc 1 1095 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmp, tmp263
	movl	40(%rax), %eax	# tmp_13->fld[4].rtint, D.14230
	shrl	$31, %eax	#, tmp264
	jmp	.L194	#
.L193:
	.loc 1 1095 0 discriminator 2
	movq	-32(%rbp), %rax	# tmp, tmp265
	movq	%rax, %rdi	# tmp265,
	call	recog_memoized_1	#
	shrl	$31, %eax	#, tmp266
.L194:
	.loc 1 1095 0 discriminator 3
	testb	%al, %al	# iftmp.39
	je	.L184	#,
	.loc 1 1096 0 is_stmt 1
	jmp	.L174	#
.L184:
.LBE7:
	.loc 1 1100 0
	movq	-104(%rbp), %rax	# if_info, tmp267
	movq	56(%rax), %rax	# if_info_30(D)->cond, D.14232
	.loc 1 1099 0
	movq	16(%rax), %r8	# _137->fld[1].rtx, D.14232
	movq	-104(%rbp), %rax	# if_info, tmp268
	movq	56(%rax), %rax	# if_info_30(D)->cond, D.14232
	movq	8(%rax), %rcx	# _139->fld[0].rtx, D.14232
	movq	-72(%rbp), %r9	# a, tmp269
	movl	-80(%rbp), %edx	# code, tmp270
	movq	-56(%rbp), %rsi	# x, tmp271
	movq	-104(%rbp), %rax	# if_info, tmp272
	movq	-64(%rbp), %rdi	# b, tmp273
	movq	%rdi, (%rsp)	# tmp273,
	movq	%rax, %rdi	# tmp272,
	call	noce_emit_cmove	#
	movq	%rax, -8(%rbp)	# tmp274, target
	.loc 1 1102 0
	cmpq	$0, -8(%rbp)	#, target
	jne	.L195	#,
	.loc 1 1103 0
	jmp	.L174	#
.L195:
	.loc 1 1106 0
	cmpl	$0, -84(%rbp)	#, is_mem
	je	.L196	#,
	.loc 1 1108 0
	movq	-104(%rbp), %rax	# if_info, tmp275
	movq	24(%rax), %rax	# if_info_30(D)->x, D.14232
	movzbl	2(%rax), %eax	# _142->mode, D.14234
	movzbl	%al, %eax	# D.14234, D.14235
	movq	-8(%rbp), %rdx	# target, tmp276
	movq	%rdx, %rsi	# tmp276,
	movl	%eax, %edi	# D.14235,
	call	gen_rtx_MEM	#
	movq	%rax, -32(%rbp)	# tmp277, tmp
	.loc 1 1111 0
	movq	-104(%rbp), %rax	# if_info, tmp278
	movq	32(%rax), %rax	# if_info_30(D)->a, D.14232
	movzbl	3(%rax), %eax	# *_146, D.14234
	andl	$8, %eax	#, D.14234
	testb	%al, %al	# D.14234
	jne	.L197	#,
	.loc 1 1111 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp279
	movq	40(%rax), %rax	# if_info_30(D)->b, D.14232
	movzbl	3(%rax), %eax	# *_149, D.14234
	andl	$8, %eax	#, D.14234
	testb	%al, %al	# D.14234
	je	.L198	#,
.L197:
	.loc 1 1112 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmp, tmp280
	movzbl	3(%rax), %edx	# tmp_145->volatil, tmp283
	orl	$8, %edx	#, tmp284
	movb	%dl, 3(%rax)	# tmp284, tmp_145->volatil
.L198:
	.loc 1 1113 0
	movq	-104(%rbp), %rax	# if_info, tmp285
	movq	32(%rax), %rax	# if_info_30(D)->a, D.14232
	movzbl	3(%rax), %eax	# *_152, D.14234
	andl	$16, %eax	#, D.14234
	testb	%al, %al	# D.14234
	je	.L199	#,
	.loc 1 1113 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp286
	movq	40(%rax), %rax	# if_info_30(D)->b, D.14232
	movzbl	3(%rax), %eax	# *_155, D.14234
	andl	$16, %eax	#, D.14234
	testb	%al, %al	# D.14234
	je	.L199	#,
	.loc 1 1114 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmp, tmp287
	movzbl	3(%rax), %edx	# tmp_145->in_struct, tmp290
	orl	$16, %edx	#, tmp291
	movb	%dl, 3(%rax)	# tmp291, tmp_145->in_struct
.L199:
	.loc 1 1115 0
	movq	-104(%rbp), %rax	# if_info, tmp292
	movq	32(%rax), %rax	# if_info_30(D)->a, D.14232
	movzbl	3(%rax), %eax	# *_158, D.14234
	andl	$-128, %eax	#, D.14234
	testb	%al, %al	# D.14234
	je	.L200	#,
	.loc 1 1115 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp293
	movq	40(%rax), %rax	# if_info_30(D)->b, D.14232
	movzbl	3(%rax), %eax	# *_161, D.14234
	andl	$-128, %eax	#, D.14234
	testb	%al, %al	# D.14234
	je	.L200	#,
	.loc 1 1116 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmp, tmp294
	movzbl	3(%rax), %edx	# tmp_145->frame_related, tmp297
	orl	$-128, %edx	#, tmp298
	movb	%dl, 3(%rax)	# tmp298, tmp_145->frame_related
.L200:
	.loc 1 1117 0
	movq	-104(%rbp), %rax	# if_info, tmp299
	movq	32(%rax), %rax	# if_info_30(D)->a, D.14232
	movq	16(%rax), %rax	# _164->fld[1].rtmem, D.14237
	testq	%rax, %rax	# D.14237
	je	.L201	#,
	.loc 1 1117 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp300
	movq	32(%rax), %rax	# if_info_30(D)->a, D.14232
	movq	16(%rax), %rax	# _166->fld[1].rtmem, D.14237
	movq	(%rax), %rdx	# _167->alias, iftmp.40
	jmp	.L202	#
.L201:
	.loc 1 1117 0 discriminator 2
	movl	$0, %edx	#, iftmp.40
.L202:
	.loc 1 1117 0 discriminator 3
	movq	-104(%rbp), %rax	# if_info, tmp301
	movq	40(%rax), %rax	# if_info_30(D)->b, D.14232
	movq	16(%rax), %rax	# _170->fld[1].rtmem, D.14237
	testq	%rax, %rax	# D.14237
	je	.L203	#,
	.loc 1 1117 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp302
	movq	40(%rax), %rax	# if_info_30(D)->b, D.14232
	movq	16(%rax), %rax	# _172->fld[1].rtmem, D.14237
	movq	(%rax), %rax	# _173->alias, iftmp.41
	jmp	.L204	#
.L203:
	.loc 1 1117 0 discriminator 2
	movl	$0, %eax	#, iftmp.41
.L204:
	.loc 1 1117 0 discriminator 3
	cmpq	%rax, %rdx	# iftmp.41, iftmp.40
	jne	.L205	#,
	.loc 1 1118 0 is_stmt 1
	movq	-104(%rbp), %rax	# if_info, tmp303
	movq	32(%rax), %rax	# if_info_30(D)->a, D.14232
	movq	16(%rax), %rax	# _176->fld[1].rtmem, D.14237
	testq	%rax, %rax	# D.14237
	je	.L206	#,
	.loc 1 1118 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp304
	movq	32(%rax), %rax	# if_info_30(D)->a, D.14232
	movq	16(%rax), %rax	# _178->fld[1].rtmem, D.14237
	movq	(%rax), %rax	# _179->alias, iftmp.42
	jmp	.L207	#
.L206:
	.loc 1 1118 0 discriminator 2
	movl	$0, %eax	#, iftmp.42
.L207:
	.loc 1 1118 0 discriminator 3
	movq	-32(%rbp), %rdx	# tmp, tmp305
	movq	%rax, %rsi	# iftmp.42,
	movq	%rdx, %rdi	# tmp305,
	call	set_mem_alias_set	#
.L205:
	.loc 1 1120 0 is_stmt 1
	movq	-104(%rbp), %rax	# if_info, tmp306
	movq	40(%rax), %rax	# if_info_30(D)->b, D.14232
	movq	16(%rax), %rax	# _182->fld[1].rtmem, D.14237
	testq	%rax, %rax	# D.14237
	je	.L208	#,
	.loc 1 1120 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp307
	movq	40(%rax), %rax	# if_info_30(D)->b, D.14232
	movq	16(%rax), %rax	# _184->fld[1].rtmem, D.14237
	movl	32(%rax), %edx	# _185->align, iftmp.43
	jmp	.L209	#
.L208:
	.loc 1 1120 0 discriminator 2
	movl	$8, %edx	#, iftmp.43
.L209:
	.loc 1 1120 0 discriminator 3
	movq	-104(%rbp), %rax	# if_info, tmp308
	movq	32(%rax), %rax	# if_info_30(D)->a, D.14232
	movq	16(%rax), %rax	# _188->fld[1].rtmem, D.14237
	testq	%rax, %rax	# D.14237
	je	.L210	#,
	.loc 1 1120 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp309
	movq	32(%rax), %rax	# if_info_30(D)->a, D.14232
	movq	16(%rax), %rax	# _190->fld[1].rtmem, D.14237
	movl	32(%rax), %eax	# _191->align, iftmp.44
	jmp	.L211	#
.L210:
	.loc 1 1120 0 discriminator 2
	movl	$8, %eax	#, iftmp.44
.L211:
	.loc 1 1119 0 is_stmt 1 discriminator 1
	cmpl	%eax, %edx	# iftmp.44, iftmp.43
	cmova	%eax, %edx	# iftmp.43,, iftmp.44, D.14238
	movq	-32(%rbp), %rax	# tmp, tmp310
	movl	%edx, %esi	# D.14238,
	movq	%rax, %rdi	# tmp310,
	call	set_mem_align	#
	.loc 1 1122 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp311
	movq	24(%rax), %rax	# if_info_30(D)->x, D.14232
	movq	-32(%rbp), %rdx	# tmp, tmp312
	movq	%rdx, %rsi	# tmp312,
	movq	%rax, %rdi	# D.14232,
	call	noce_emit_move_insn	#
	jmp	.L212	#
.L196:
	.loc 1 1124 0
	movq	-8(%rbp), %rax	# target, tmp313
	cmpq	-56(%rbp), %rax	# x, tmp313
	je	.L212	#,
	.loc 1 1125 0
	movq	-8(%rbp), %rdx	# target, tmp314
	movq	-56(%rbp), %rax	# x, tmp315
	movq	%rdx, %rsi	# tmp314,
	movq	%rax, %rdi	# tmp315,
	call	noce_emit_move_insn	#
.L212:
	.loc 1 1127 0
	call	get_insns	#
	movq	%rax, -32(%rbp)	# tmp316, tmp
	.loc 1 1128 0
	call	end_sequence	#
	.loc 1 1129 0
	movq	-104(%rbp), %rax	# if_info, tmp317
	movq	48(%rax), %rdx	# if_info_30(D)->jump, D.14232
	movq	-32(%rbp), %rax	# tmp, tmp318
	movq	%rdx, %rsi	# D.14232,
	movq	%rax, %rdi	# tmp318,
	call	emit_insns_before	#
	.loc 1 1130 0
	movl	$1, %eax	#, D.14230
	jmp	.L168	#
.L174:
	.loc 1 1133 0
	call	end_sequence	#
	.loc 1 1134 0
	movl	$0, %eax	#, D.14230
.L168:
	.loc 1 1135 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	noce_try_cmove_arith, .-noce_try_cmove_arith
	.type	noce_get_alt_condition, @function
noce_get_alt_condition:
.LFB18:
	.loc 1 1146 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# if_info, if_info
	movq	%rsi, -112(%rbp)	# target, target
	movq	%rdx, -120(%rbp)	# earliest, earliest
	.loc 1 1151 0
	movq	-104(%rbp), %rax	# if_info, tmp126
	movq	56(%rax), %rdx	# if_info_21(D)->cond, D.14240
	movq	-112(%rbp), %rax	# target, tmp127
	movq	%rdx, %rsi	# D.14240,
	movq	%rax, %rdi	# tmp127,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14241
	je	.L214	#,
	.loc 1 1153 0
	movq	-104(%rbp), %rax	# if_info, tmp128
	movq	64(%rax), %rdx	# if_info_21(D)->cond_earliest, D.14240
	movq	-120(%rbp), %rax	# earliest, tmp129
	movq	%rdx, (%rax)	# D.14240, *earliest_26(D)
	.loc 1 1154 0
	movq	-104(%rbp), %rax	# if_info, tmp130
	movq	56(%rax), %rax	# if_info_21(D)->cond, D.14239
	jmp	.L215	#
.L214:
	.loc 1 1157 0
	movq	-104(%rbp), %rax	# if_info, tmp131
	movq	48(%rax), %rax	# if_info_21(D)->jump, D.14240
	movq	%rax, %rdi	# D.14240,
	call	pc_set	#
	movq	%rax, -48(%rbp)	# tmp132, set
	.loc 1 1158 0
	movq	-48(%rbp), %rax	# set, tmp133
	movq	16(%rax), %rax	# set_29->fld[1].rtx, D.14240
	movq	8(%rax), %rax	# _30->fld[0].rtx, tmp134
	movq	%rax, -40(%rbp)	# tmp134, cond
	.loc 1 1160 0
	movq	-48(%rbp), %rax	# set, tmp135
	movq	16(%rax), %rax	# set_29->fld[1].rtx, D.14240
	movq	24(%rax), %rax	# _32->fld[2].rtx, D.14240
	movzwl	(%rax), %eax	# _33->code, D.14242
	.loc 1 1161 0
	cmpw	$67, %ax	#, D.14242
	jne	.L216	#,
	.loc 1 1161 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# set, tmp136
	movq	16(%rax), %rax	# set_29->fld[1].rtx, D.14240
	movq	24(%rax), %rax	# _35->fld[2].rtx, D.14240
	movq	8(%rax), %rdx	# _36->fld[0].rtx, D.14240
	movq	-104(%rbp), %rax	# if_info, tmp137
	movq	48(%rax), %rax	# if_info_21(D)->jump, D.14240
	movq	64(%rax), %rax	# _38->fld[7].rtx, D.14240
	cmpq	%rax, %rdx	# D.14240, D.14240
	jne	.L216	#,
	.loc 1 1161 0 discriminator 3
	movl	$1, %eax	#, iftmp.45
	jmp	.L217	#
.L216:
	.loc 1 1161 0 discriminator 2
	movl	$0, %eax	#, iftmp.45
.L217:
	.loc 1 1160 0 is_stmt 1
	movl	%eax, -84(%rbp)	# iftmp.45, reverse
	.loc 1 1177 0
	movq	-112(%rbp), %rax	# target, tmp138
	movzwl	(%rax), %eax	# target_23(D)->code, D.14242
	cmpw	$54, %ax	#, D.14242
	jne	.L218	#,
.LBB8:
	.loc 1 1179 0
	movq	-104(%rbp), %rax	# if_info, tmp139
	movq	56(%rax), %rax	# if_info_21(D)->cond, D.14240
	movzwl	(%rax), %eax	# _44->code, D.14242
	movzwl	%ax, %eax	# D.14242, tmp140
	movl	%eax, -88(%rbp)	# tmp140, code
	.loc 1 1180 0
	movq	-104(%rbp), %rax	# if_info, tmp141
	movq	56(%rax), %rax	# if_info_21(D)->cond, D.14240
	movq	8(%rax), %rax	# _47->fld[0].rtx, tmp142
	movq	%rax, -72(%rbp)	# tmp142, op_a
	.loc 1 1181 0
	movq	-104(%rbp), %rax	# if_info, tmp143
	movq	56(%rax), %rax	# if_info_21(D)->cond, D.14240
	movq	16(%rax), %rax	# _49->fld[1].rtx, tmp144
	movq	%rax, -64(%rbp)	# tmp144, op_b
	.loc 1 1185 0
	movq	-104(%rbp), %rax	# if_info, tmp145
	movq	64(%rax), %rax	# if_info_21(D)->cond_earliest, D.14240
	movq	16(%rax), %rax	# _51->fld[1].rtx, tmp146
	movq	%rax, -32(%rbp)	# tmp146, prev_insn
	.loc 1 1186 0
	cmpq	$0, -32(%rbp)	#, prev_insn
	je	.L219	#,
	.loc 1 1187 0
	movq	-32(%rbp), %rax	# prev_insn, tmp147
	movzwl	(%rax), %eax	# prev_insn_52->code, D.14242
	movzwl	%ax, %eax	# D.14242, D.14241
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14243
	cmpb	$105, %al	#, D.14243
	jne	.L219	#,
	.loc 1 1188 0
	movq	-32(%rbp), %rax	# prev_insn, tmp149
	movq	32(%rax), %rax	# prev_insn_52->fld[3].rtx, D.14240
	movzwl	(%rax), %eax	# _56->code, D.14242
	cmpw	$47, %ax	#, D.14242
	jne	.L219	#,
.LBB9:
	.loc 1 1190 0
	movq	-32(%rbp), %rax	# prev_insn, tmp150
	movq	%rax, %rdi	# tmp150,
	call	find_reg_equal_equiv_note	#
	movq	%rax, -56(%rbp)	# tmp151, src
	.loc 1 1191 0
	cmpq	$0, -56(%rbp)	#, src
	jne	.L220	#,
	.loc 1 1192 0
	movq	-32(%rbp), %rax	# prev_insn, tmp152
	movq	32(%rax), %rax	# prev_insn_52->fld[3].rtx, D.14240
	movq	16(%rax), %rax	# _59->fld[1].rtx, tmp153
	movq	%rax, -56(%rbp)	# tmp153, src
.L220:
	.loc 1 1193 0
	movq	-56(%rbp), %rax	# src, tmp154
	movzwl	(%rax), %eax	# src_18->code, D.14242
	cmpw	$54, %ax	#, D.14242
	jne	.L219	#,
	.loc 1 1195 0
	movq	-32(%rbp), %rax	# prev_insn, tmp155
	movq	32(%rax), %rax	# prev_insn_52->fld[3].rtx, D.14240
	movq	8(%rax), %rdx	# _62->fld[0].rtx, D.14240
	movq	-72(%rbp), %rax	# op_a, tmp156
	movq	%rdx, %rsi	# D.14240,
	movq	%rax, %rdi	# tmp156,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14241
	je	.L221	#,
	.loc 1 1196 0
	movq	-56(%rbp), %rax	# src, tmp157
	movq	%rax, -72(%rbp)	# tmp157, op_a
	jmp	.L222	#
.L221:
	.loc 1 1197 0
	movq	-32(%rbp), %rax	# prev_insn, tmp158
	movq	32(%rax), %rax	# prev_insn_52->fld[3].rtx, D.14240
	movq	8(%rax), %rdx	# _66->fld[0].rtx, D.14240
	movq	-64(%rbp), %rax	# op_b, tmp159
	movq	%rdx, %rsi	# D.14240,
	movq	%rax, %rdi	# tmp159,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14241
	je	.L222	#,
	.loc 1 1198 0
	movq	-56(%rbp), %rax	# src, tmp160
	movq	%rax, -64(%rbp)	# tmp160, op_b
.L222:
	.loc 1 1200 0
	movq	-72(%rbp), %rax	# op_a, tmp161
	movzwl	(%rax), %eax	# op_a_9->code, D.14242
	cmpw	$54, %ax	#, D.14242
	jne	.L219	#,
.LBB10:
	.loc 1 1202 0
	movq	-72(%rbp), %rax	# op_a, tmp162
	movq	%rax, -24(%rbp)	# tmp162, tmp
	.loc 1 1203 0
	movq	-64(%rbp), %rax	# op_b, tmp163
	movq	%rax, -72(%rbp)	# tmp163, op_a
	.loc 1 1204 0
	movq	-24(%rbp), %rax	# tmp, tmp164
	movq	%rax, -64(%rbp)	# tmp164, op_b
	.loc 1 1205 0
	movl	-88(%rbp), %eax	# code, tmp165
	movl	%eax, %edi	# tmp165,
	call	swap_condition	#
	movl	%eax, -88(%rbp)	# tmp166, code
.L219:
.LBE10:
.LBE9:
	.loc 1 1212 0
	movq	-64(%rbp), %rax	# op_b, tmp167
	movzwl	(%rax), %eax	# op_b_12->code, D.14242
	cmpw	$54, %ax	#, D.14242
	jne	.L223	#,
.LBB11:
	.loc 1 1214 0
	movq	-112(%rbp), %rax	# target, tmp168
	movq	8(%rax), %rax	# target_23(D)->fld[0].rtwint, tmp169
	movq	%rax, -16(%rbp)	# tmp169, desired_val
	.loc 1 1215 0
	movq	-64(%rbp), %rax	# op_b, tmp170
	movq	8(%rax), %rax	# op_b_12->fld[0].rtwint, tmp171
	movq	%rax, -8(%rbp)	# tmp171, actual_val
	.loc 1 1217 0
	movl	-88(%rbp), %eax	# code, code
	cmpl	$105, %eax	#, code
	je	.L225	#,
	cmpl	$105, %eax	#, code
	ja	.L226	#,
	cmpl	$104, %eax	#, code
	je	.L227	#,
	.loc 1 1248 0
	jmp	.L223	#
.L226:
	.loc 1 1217 0
	cmpl	$106, %eax	#, code
	je	.L228	#,
	cmpl	$107, %eax	#, code
	je	.L229	#,
	.loc 1 1248 0
	jmp	.L223	#
.L229:
	.loc 1 1220 0
	movq	-16(%rbp), %rax	# desired_val, tmp173
	addq	$1, %rax	#, D.14244
	cmpq	-8(%rbp), %rax	# actual_val, D.14244
	jne	.L230	#,
	.loc 1 1222 0
	movl	$106, -88(%rbp)	#, code
	.loc 1 1223 0
	movq	-16(%rbp), %rax	# desired_val, tmp174
	movq	%rax, %rsi	# tmp174,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -64(%rbp)	# tmp175, op_b
	.loc 1 1225 0
	jmp	.L223	#
.L230:
	jmp	.L223	#
.L228:
	.loc 1 1227 0
	movq	-16(%rbp), %rax	# desired_val, tmp176
	subq	$1, %rax	#, D.14244
	cmpq	-8(%rbp), %rax	# actual_val, D.14244
	jne	.L231	#,
	.loc 1 1229 0
	movl	$107, -88(%rbp)	#, code
	.loc 1 1230 0
	movq	-16(%rbp), %rax	# desired_val, tmp177
	movq	%rax, %rsi	# tmp177,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -64(%rbp)	# tmp178, op_b
	.loc 1 1232 0
	jmp	.L223	#
.L231:
	jmp	.L223	#
.L225:
	.loc 1 1234 0
	movq	-16(%rbp), %rax	# desired_val, tmp179
	subq	$1, %rax	#, D.14244
	cmpq	-8(%rbp), %rax	# actual_val, D.14244
	jne	.L232	#,
	.loc 1 1236 0
	movl	$104, -88(%rbp)	#, code
	.loc 1 1237 0
	movq	-16(%rbp), %rax	# desired_val, tmp180
	movq	%rax, %rsi	# tmp180,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -64(%rbp)	# tmp181, op_b
	.loc 1 1239 0
	jmp	.L223	#
.L232:
	jmp	.L223	#
.L227:
	.loc 1 1241 0
	movq	-16(%rbp), %rax	# desired_val, tmp182
	addq	$1, %rax	#, D.14244
	cmpq	-8(%rbp), %rax	# actual_val, D.14244
	jne	.L233	#,
	.loc 1 1243 0
	movl	$105, -88(%rbp)	#, code
	.loc 1 1244 0
	movq	-16(%rbp), %rax	# desired_val, tmp183
	movq	%rax, %rsi	# tmp183,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -64(%rbp)	# tmp184, op_b
	.loc 1 1246 0
	jmp	.L244	#
.L233:
.L244:
	nop
.L223:
.LBE11:
	.loc 1 1255 0
	movq	-104(%rbp), %rax	# if_info, tmp185
	movq	56(%rax), %rax	# if_info_21(D)->cond, D.14240
	movzwl	(%rax), %eax	# _90->code, D.14242
	movzwl	%ax, %eax	# D.14242, D.14245
	cmpl	-88(%rbp), %eax	# code, D.14245
	jne	.L234	#,
	.loc 1 1256 0
	movq	-104(%rbp), %rax	# if_info, tmp186
	movq	56(%rax), %rax	# if_info_21(D)->cond, D.14240
	movq	8(%rax), %rax	# _93->fld[0].rtx, D.14240
	cmpq	-72(%rbp), %rax	# op_a, D.14240
	jne	.L234	#,
	.loc 1 1257 0
	movq	-104(%rbp), %rax	# if_info, tmp187
	movq	56(%rax), %rax	# if_info_21(D)->cond, D.14240
	movq	16(%rax), %rax	# _95->fld[1].rtx, D.14240
	cmpq	-64(%rbp), %rax	# op_b, D.14240
	je	.L218	#,
.L234:
	.loc 1 1259 0
	movq	-40(%rbp), %rax	# cond, tmp188
	movzbl	2(%rax), %eax	# cond_31->mode, D.14246
	movzbl	%al, %esi	# D.14246, D.14247
	movq	-64(%rbp), %rcx	# op_b, tmp189
	movq	-72(%rbp), %rdx	# op_a, tmp190
	movl	-88(%rbp), %eax	# code, tmp191
	movl	%eax, %edi	# tmp191,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -40(%rbp)	# tmp192, cond
	.loc 1 1260 0
	movq	-104(%rbp), %rax	# if_info, tmp193
	movq	64(%rax), %rdx	# if_info_21(D)->cond_earliest, D.14240
	movq	-120(%rbp), %rax	# earliest, tmp194
	movq	%rdx, (%rax)	# D.14240, *earliest_26(D)
	.loc 1 1261 0
	movq	-40(%rbp), %rax	# cond, D.14239
	jmp	.L215	#
.L218:
.LBE8:
	.loc 1 1265 0
	movq	-104(%rbp), %rax	# if_info, tmp195
	movq	48(%rax), %rax	# if_info_21(D)->jump, D.14240
	movq	-112(%rbp), %rdi	# target, tmp196
	movq	-120(%rbp), %rcx	# earliest, tmp197
	movl	-84(%rbp), %edx	# reverse, tmp198
	movq	-40(%rbp), %rsi	# cond, tmp199
	movq	%rdi, %r8	# tmp196,
	movq	%rax, %rdi	# D.14240,
	call	canonicalize_condition	#
	movq	%rax, -40(%rbp)	# tmp200, cond
	.loc 1 1267 0
	cmpq	$0, -40(%rbp)	#, cond
	je	.L235	#,
	.loc 1 1267 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdx	# cond, tmp201
	movq	-112(%rbp), %rax	# target, tmp202
	movq	%rdx, %rsi	# tmp201,
	movq	%rax, %rdi	# tmp202,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14241
	jne	.L236	#,
.L235:
	.loc 1 1268 0 is_stmt 1
	movl	$0, %eax	#, D.14239
	jmp	.L215	#
.L236:
	.loc 1 1274 0
	movq	-104(%rbp), %rax	# if_info, tmp203
	movq	48(%rax), %rax	# if_info_21(D)->jump, tmp204
	movq	%rax, -80(%rbp)	# tmp204, insn
	jmp	.L237	#
.L239:
	.loc 1 1275 0
	movq	-80(%rbp), %rax	# insn, tmp205
	movzwl	(%rax), %eax	# insn_1->code, D.14242
	movzwl	%ax, %eax	# D.14242, D.14241
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14243
	cmpb	$105, %al	#, D.14243
	jne	.L238	#,
	.loc 1 1275 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp207
	movq	24(%rax), %rax	# if_info_21(D)->x, D.14240
	movq	-80(%rbp), %rdx	# insn, tmp208
	movq	%rdx, %rsi	# tmp208,
	movq	%rax, %rdi	# D.14240,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14241
	je	.L238	#,
	.loc 1 1276 0 is_stmt 1
	movl	$0, %eax	#, D.14239
	jmp	.L215	#
.L238:
	.loc 1 1274 0
	movq	-80(%rbp), %rax	# insn, tmp209
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp210
	movq	%rax, -80(%rbp)	# tmp210, insn
.L237:
	.loc 1 1274 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# earliest, tmp211
	movq	(%rax), %rax	# *earliest_26(D), D.14240
	cmpq	-80(%rbp), %rax	# insn, D.14240
	jne	.L239	#,
	.loc 1 1279 0 is_stmt 1
	movq	-120(%rbp), %rax	# earliest, tmp212
	movq	(%rax), %rax	# *earliest_26(D), tmp213
	movq	%rax, -80(%rbp)	# tmp213, insn
	jmp	.L240	#
.L243:
	.loc 1 1280 0
	movq	-80(%rbp), %rax	# insn, tmp214
	movzwl	(%rax), %eax	# insn_2->code, D.14242
	movzwl	%ax, %eax	# D.14242, D.14241
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14243
	cmpb	$105, %al	#, D.14243
	jne	.L241	#,
	.loc 1 1281 0
	movq	-104(%rbp), %rax	# if_info, tmp216
	movq	32(%rax), %rax	# if_info_21(D)->a, D.14240
	movq	-80(%rbp), %rdx	# insn, tmp217
	movq	%rdx, %rsi	# tmp217,
	movq	%rax, %rdi	# D.14240,
	call	modified_in_p	#
	testl	%eax, %eax	# D.14241
	jne	.L242	#,
	.loc 1 1282 0
	movq	-104(%rbp), %rax	# if_info, tmp218
	movq	40(%rax), %rax	# if_info_21(D)->b, D.14240
	movq	-80(%rbp), %rdx	# insn, tmp219
	movq	%rdx, %rsi	# tmp219,
	movq	%rax, %rdi	# D.14240,
	call	modified_in_p	#
	testl	%eax, %eax	# D.14241
	je	.L241	#,
.L242:
	.loc 1 1283 0
	movl	$0, %eax	#, D.14239
	jmp	.L215	#
.L241:
	.loc 1 1279 0
	movq	-80(%rbp), %rax	# insn, tmp220
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp221
	movq	%rax, -80(%rbp)	# tmp221, insn
.L240:
	.loc 1 1279 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# if_info, tmp222
	movq	48(%rax), %rax	# if_info_21(D)->jump, D.14240
	cmpq	-80(%rbp), %rax	# insn, D.14240
	jne	.L243	#,
	.loc 1 1285 0 is_stmt 1
	movq	-40(%rbp), %rax	# cond, D.14239
.L215:
	.loc 1 1286 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	noce_get_alt_condition, .-noce_get_alt_condition
	.type	noce_try_minmax, @function
noce_try_minmax:
.LFB19:
	.loc 1 1293 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# if_info, if_info
	.loc 1 1299 0
	movl	no_new_pseudos(%rip), %eax	# no_new_pseudos, no_new_pseudos.46
	testl	%eax, %eax	# no_new_pseudos.46
	je	.L246	#,
	.loc 1 1300 0
	movl	$0, %eax	#, D.14249
	jmp	.L265	#
.L246:
	.loc 1 1305 0
	movq	-56(%rbp), %rax	# if_info, tmp100
	movq	24(%rax), %rax	# if_info_7(D)->x, D.14250
	movzbl	2(%rax), %eax	# _8->mode, D.14251
	movzbl	%al, %eax	# D.14251, D.14249
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14252
	cmpl	$2, %eax	#, D.14252
	je	.L248	#,
	.loc 1 1305 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# if_info, tmp102
	movq	24(%rax), %rax	# if_info_7(D)->x, D.14250
	movzbl	2(%rax), %eax	# _12->mode, D.14251
	movzbl	%al, %eax	# D.14251, D.14249
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14252
	cmpl	$6, %eax	#, D.14252
	je	.L248	#,
	movq	-56(%rbp), %rax	# if_info, tmp104
	movq	24(%rax), %rax	# if_info_7(D)->x, D.14250
	movzbl	2(%rax), %eax	# _16->mode, D.14251
	movzbl	%al, %eax	# D.14251, D.14249
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14252
	.loc 1 1306 0 is_stmt 1 discriminator 1
	cmpl	$8, %eax	#, D.14252
	jne	.L249	#,
.L248:
	.loc 1 1307 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.47
	testl	%eax, %eax	# flag_unsafe_math_optimizations.47
	jne	.L249	#,
	.loc 1 1308 0
	movl	$0, %eax	#, D.14249
	jmp	.L265	#
.L249:
	.loc 1 1310 0
	movq	-56(%rbp), %rax	# if_info, tmp106
	movq	32(%rax), %rcx	# if_info_7(D)->a, D.14250
	leaq	-32(%rbp), %rdx	#, tmp107
	movq	-56(%rbp), %rax	# if_info, tmp108
	movq	%rcx, %rsi	# D.14250,
	movq	%rax, %rdi	# tmp108,
	call	noce_get_alt_condition	#
	movq	%rax, -24(%rbp)	# tmp109, cond
	.loc 1 1311 0
	cmpq	$0, -24(%rbp)	#, cond
	jne	.L250	#,
	.loc 1 1312 0
	movl	$0, %eax	#, D.14249
	jmp	.L265	#
.L250:
	.loc 1 1316 0
	movq	-24(%rbp), %rax	# cond, tmp110
	movzwl	(%rax), %eax	# cond_23->code, D.14253
	movzwl	%ax, %eax	# D.14253, tmp111
	movl	%eax, -44(%rbp)	# tmp111, code
	.loc 1 1317 0
	movq	-56(%rbp), %rax	# if_info, tmp112
	movq	32(%rax), %rdx	# if_info_7(D)->a, D.14250
	movq	-24(%rbp), %rax	# cond, tmp113
	movq	8(%rax), %rax	# cond_23->fld[0].rtx, D.14250
	movq	%rdx, %rsi	# D.14250,
	movq	%rax, %rdi	# D.14250,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14249
	je	.L251	#,
	.loc 1 1319 0
	movq	-56(%rbp), %rax	# if_info, tmp114
	movq	40(%rax), %rdx	# if_info_7(D)->b, D.14250
	movq	-24(%rbp), %rax	# cond, tmp115
	movq	16(%rax), %rax	# cond_23->fld[1].rtx, D.14250
	movq	%rdx, %rsi	# D.14250,
	movq	%rax, %rdi	# D.14250,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14249
	jne	.L252	#,
	.loc 1 1320 0
	movl	$0, %eax	#, D.14249
	jmp	.L265	#
.L251:
	.loc 1 1322 0
	movq	-56(%rbp), %rax	# if_info, tmp116
	movq	32(%rax), %rdx	# if_info_7(D)->a, D.14250
	movq	-24(%rbp), %rax	# cond, tmp117
	movq	16(%rax), %rax	# cond_23->fld[1].rtx, D.14250
	movq	%rdx, %rsi	# D.14250,
	movq	%rax, %rdi	# D.14250,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14249
	je	.L253	#,
	.loc 1 1324 0
	movq	-56(%rbp), %rax	# if_info, tmp118
	movq	40(%rax), %rdx	# if_info_7(D)->b, D.14250
	movq	-24(%rbp), %rax	# cond, tmp119
	movq	8(%rax), %rax	# cond_23->fld[0].rtx, D.14250
	movq	%rdx, %rsi	# D.14250,
	movq	%rax, %rdi	# D.14250,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14249
	jne	.L254	#,
	.loc 1 1325 0
	movl	$0, %eax	#, D.14249
	jmp	.L265	#
.L254:
	.loc 1 1326 0
	movl	-44(%rbp), %eax	# code, tmp120
	movl	%eax, %edi	# tmp120,
	call	swap_condition	#
	movl	%eax, -44(%rbp)	# tmp121, code
	jmp	.L252	#
.L253:
	.loc 1 1329 0
	movl	$0, %eax	#, D.14249
	jmp	.L265	#
.L252:
	.loc 1 1333 0
	movl	-44(%rbp), %eax	# code, tmp123
	subl	$104, %eax	#, tmp122
	cmpl	$14, %eax	#, tmp122
	ja	.L255	#,
	movl	%eax, %eax	# tmp122, tmp124
	movq	.L257(,%rax,8), %rax	#, tmp125
	jmp	*%rax	# tmp125
	.section	.rodata
	.align 8
	.align 4
.L257:
	.quad	.L256
	.quad	.L256
	.quad	.L258
	.quad	.L258
	.quad	.L259
	.quad	.L259
	.quad	.L260
	.quad	.L260
	.quad	.L255
	.quad	.L255
	.quad	.L255
	.quad	.L256
	.quad	.L256
	.quad	.L258
	.quad	.L258
	.text
.L258:
	.loc 1 1339 0
	movl	$93, -40(%rbp)	#, op
	.loc 1 1340 0
	movl	$0, -36(%rbp)	#, unsignedp
	.loc 1 1341 0
	jmp	.L261	#
.L256:
	.loc 1 1346 0
	movl	$92, -40(%rbp)	#, op
	.loc 1 1347 0
	movl	$0, -36(%rbp)	#, unsignedp
	.loc 1 1348 0
	jmp	.L261	#
.L260:
	.loc 1 1351 0
	movl	$95, -40(%rbp)	#, op
	.loc 1 1352 0
	movl	$1, -36(%rbp)	#, unsignedp
	.loc 1 1353 0
	jmp	.L261	#
.L259:
	.loc 1 1356 0
	movl	$94, -40(%rbp)	#, op
	.loc 1 1357 0
	movl	$1, -36(%rbp)	#, unsignedp
	.loc 1 1358 0
	jmp	.L261	#
.L255:
	.loc 1 1360 0
	movl	$0, %eax	#, D.14249
	jmp	.L265	#
.L261:
	.loc 1 1363 0
	call	start_sequence	#
	.loc 1 1365 0
	movq	-56(%rbp), %rax	# if_info, tmp126
	movq	24(%rax), %rdi	# if_info_7(D)->x, D.14250
	movq	-56(%rbp), %rax	# if_info, tmp127
	movq	40(%rax), %rcx	# if_info_7(D)->b, D.14250
	movq	-56(%rbp), %rax	# if_info, tmp128
	movq	32(%rax), %rdx	# if_info_7(D)->a, D.14250
	movq	-56(%rbp), %rax	# if_info, tmp129
	movq	24(%rax), %rax	# if_info_7(D)->x, D.14250
	movzbl	2(%rax), %eax	# _55->mode, D.14251
	movzbl	%al, %eax	# D.14251, D.14254
	movl	-36(%rbp), %r8d	# unsignedp, tmp130
	movl	-40(%rbp), %esi	# op, tmp131
	movl	$2, (%rsp)	#,
	movl	%r8d, %r9d	# tmp130,
	movq	%rdi, %r8	# D.14250,
	movl	%eax, %edi	# D.14254,
	call	expand_simple_binop	#
	movq	%rax, -16(%rbp)	# tmp132, target
	.loc 1 1368 0
	cmpq	$0, -16(%rbp)	#, target
	jne	.L262	#,
	.loc 1 1370 0
	call	end_sequence	#
	.loc 1 1371 0
	movl	$0, %eax	#, D.14249
	jmp	.L265	#
.L262:
	.loc 1 1373 0
	movq	-56(%rbp), %rax	# if_info, tmp133
	movq	24(%rax), %rax	# if_info_7(D)->x, D.14250
	cmpq	-16(%rbp), %rax	# target, D.14250
	je	.L263	#,
	.loc 1 1374 0
	movq	-56(%rbp), %rax	# if_info, tmp134
	movq	24(%rax), %rax	# if_info_7(D)->x, D.14250
	movq	-16(%rbp), %rdx	# target, tmp135
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# D.14250,
	call	noce_emit_move_insn	#
.L263:
	.loc 1 1376 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp136, seq
	.loc 1 1377 0
	call	end_sequence	#
	.loc 1 1379 0
	movq	-8(%rbp), %rax	# seq, tmp137
	movq	%rax, %rdi	# tmp137,
	call	seq_contains_jump	#
	testl	%eax, %eax	# D.14249
	je	.L264	#,
	.loc 1 1380 0
	movl	$0, %eax	#, D.14249
	jmp	.L265	#
.L264:
	.loc 1 1382 0
	movq	-56(%rbp), %rax	# if_info, tmp138
	movq	48(%rax), %rdx	# if_info_7(D)->jump, D.14250
	movq	-8(%rbp), %rax	# seq, tmp139
	movq	%rdx, %rsi	# D.14250,
	movq	%rax, %rdi	# tmp139,
	call	emit_insns_before	#
	.loc 1 1383 0
	movq	-56(%rbp), %rax	# if_info, tmp140
	movq	-24(%rbp), %rdx	# cond, tmp141
	movq	%rdx, 56(%rax)	# tmp141, if_info_7(D)->cond
	.loc 1 1384 0
	movq	-32(%rbp), %rdx	# earliest, earliest.48
	movq	-56(%rbp), %rax	# if_info, tmp142
	movq	%rdx, 64(%rax)	# earliest.48, if_info_7(D)->cond_earliest
	.loc 1 1386 0
	movl	$1, %eax	#, D.14249
.L265:
	.loc 1 1387 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	noce_try_minmax, .-noce_try_minmax
	.type	noce_try_abs, @function
noce_try_abs:
.LFB20:
	.loc 1 1394 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# if_info, if_info
	.loc 1 1399 0
	movl	no_new_pseudos(%rip), %eax	# no_new_pseudos, no_new_pseudos.49
	testl	%eax, %eax	# no_new_pseudos.49
	je	.L267	#,
	.loc 1 1400 0
	movl	$0, %eax	#, D.14255
	jmp	.L295	#
.L267:
	.loc 1 1403 0
	movq	-88(%rbp), %rax	# if_info, tmp107
	movq	32(%rax), %rax	# if_info_15(D)->a, tmp108
	movq	%rax, -24(%rbp)	# tmp108, a
	.loc 1 1404 0
	movq	-88(%rbp), %rax	# if_info, tmp109
	movq	40(%rax), %rax	# if_info_15(D)->b, tmp110
	movq	%rax, -56(%rbp)	# tmp110, b
	.loc 1 1405 0
	movq	-24(%rbp), %rax	# a, tmp111
	movzwl	(%rax), %eax	# a_16->code, D.14256
	cmpw	$77, %ax	#, D.14256
	jne	.L269	#,
	.loc 1 1405 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# a, tmp112
	movq	8(%rax), %rax	# a_16->fld[0].rtx, D.14257
	movq	-56(%rbp), %rdx	# b, tmp113
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# D.14257,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14255
	je	.L269	#,
	.loc 1 1406 0 is_stmt 1
	movl	$0, -76(%rbp)	#, negate
	jmp	.L270	#
.L269:
	.loc 1 1407 0
	movq	-56(%rbp), %rax	# b, tmp114
	movzwl	(%rax), %eax	# b_17->code, D.14256
	cmpw	$77, %ax	#, D.14256
	jne	.L271	#,
	.loc 1 1407 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# b, tmp115
	movq	8(%rax), %rax	# b_17->fld[0].rtx, D.14257
	movq	-24(%rbp), %rdx	# a, tmp116
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# D.14257,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14255
	je	.L271	#,
	.loc 1 1409 0 is_stmt 1
	movq	-24(%rbp), %rax	# a, tmp117
	movq	%rax, -48(%rbp)	# tmp117, c
	movq	-56(%rbp), %rax	# b, tmp118
	movq	%rax, -24(%rbp)	# tmp118, a
	movq	-48(%rbp), %rax	# c, tmp119
	movq	%rax, -56(%rbp)	# tmp119, b
	.loc 1 1410 0
	movl	$1, -76(%rbp)	#, negate
	jmp	.L270	#
.L271:
	.loc 1 1413 0
	movl	$0, %eax	#, D.14255
	jmp	.L295	#
.L270:
	.loc 1 1415 0
	leaq	-72(%rbp), %rdx	#, tmp120
	movq	-56(%rbp), %rcx	# b, tmp121
	movq	-88(%rbp), %rax	# if_info, tmp122
	movq	%rcx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	noce_get_alt_condition	#
	movq	%rax, -16(%rbp)	# tmp123, cond
	.loc 1 1416 0
	cmpq	$0, -16(%rbp)	#, cond
	jne	.L272	#,
	.loc 1 1417 0
	movl	$0, %eax	#, D.14255
	jmp	.L295	#
.L272:
	.loc 1 1420 0
	movq	-16(%rbp), %rax	# cond, tmp124
	movq	8(%rax), %rax	# cond_30->fld[0].rtx, D.14257
	movq	-56(%rbp), %rdx	# b, tmp125
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# D.14257,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14255
	je	.L273	#,
	.loc 1 1421 0
	movq	-16(%rbp), %rax	# cond, tmp126
	movq	16(%rax), %rax	# cond_30->fld[1].rtx, tmp127
	movq	%rax, -48(%rbp)	# tmp127, c
	jmp	.L274	#
.L273:
	.loc 1 1422 0
	movq	-16(%rbp), %rax	# cond, tmp128
	movq	16(%rax), %rax	# cond_30->fld[1].rtx, D.14257
	movq	-56(%rbp), %rdx	# b, tmp129
	movq	%rdx, %rsi	# tmp129,
	movq	%rax, %rdi	# D.14257,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14255
	je	.L275	#,
	.loc 1 1423 0
	movq	-16(%rbp), %rax	# cond, tmp130
	movq	8(%rax), %rax	# cond_30->fld[0].rtx, tmp131
	movq	%rax, -48(%rbp)	# tmp131, c
	jmp	.L274	#
.L275:
	.loc 1 1425 0
	movl	$0, %eax	#, D.14255
	jmp	.L295	#
.L274:
	.loc 1 1429 0
	movq	-48(%rbp), %rax	# c, tmp132
	movzwl	(%rax), %eax	# c_3->code, D.14256
	cmpw	$61, %ax	#, D.14256
	jne	.L276	#,
.LBB12:
	.loc 1 1431 0
	movq	$0, -32(%rbp)	#, note
	.loc 1 1432 0
	movq	-72(%rbp), %rax	# earliest, tmp133
	movq	%rax, -40(%rbp)	# tmp133, insn
	jmp	.L277	#
.L280:
	.loc 1 1435 0
	movq	-40(%rbp), %rax	# insn, tmp134
	movzwl	(%rax), %eax	# insn_8->code, D.14256
	movzwl	%ax, %eax	# D.14256, D.14255
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14259
	cmpb	$105, %al	#, D.14259
	jne	.L278	#,
	.loc 1 1436 0
	movq	-48(%rbp), %rdx	# c, tmp136
	movq	-40(%rbp), %rax	# insn, tmp137
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp137,
	call	find_reg_note	#
	movq	%rax, -32(%rbp)	# tmp138, note
	cmpq	$0, -32(%rbp)	#, note
	jne	.L279	#,
	.loc 1 1437 0
	movq	-48(%rbp), %rdx	# c, tmp139
	movq	-40(%rbp), %rax	# insn, tmp140
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	find_reg_note	#
	movq	%rax, -32(%rbp)	# tmp141, note
	cmpq	$0, -32(%rbp)	#, note
	jne	.L279	#,
.L278:
	.loc 1 1434 0
	movq	-40(%rbp), %rax	# insn, tmp142
	movq	16(%rax), %rax	# insn_8->fld[1].rtx, tmp143
	movq	%rax, -40(%rbp)	# tmp143, insn
.L277:
	.loc 1 1433 0 discriminator 1
	movq	-88(%rbp), %rax	# if_info, tmp144
	movq	(%rax), %rax	# if_info_15(D)->test_bb, D.14258
	movq	(%rax), %rax	# _42->head, D.14257
	.loc 1 1432 0 discriminator 1
	cmpq	-40(%rbp), %rax	# insn, D.14257
	jne	.L280	#,
.L279:
	.loc 1 1439 0
	cmpq	$0, -32(%rbp)	#, note
	jne	.L281	#,
	.loc 1 1440 0
	movl	$0, %eax	#, D.14255
	jmp	.L295	#
.L281:
	.loc 1 1441 0
	movq	-32(%rbp), %rax	# note, tmp145
	movq	8(%rax), %rax	# note_11->fld[0].rtx, tmp146
	movq	%rax, -48(%rbp)	# tmp146, c
.L276:
.LBE12:
	.loc 1 1443 0
	movq	-48(%rbp), %rax	# c, tmp147
	movzwl	(%rax), %eax	# c_4->code, D.14256
	cmpw	$66, %ax	#, D.14256
	jne	.L282	#,
	.loc 1 1444 0
	movq	-48(%rbp), %rax	# c, tmp148
	movq	8(%rax), %rax	# c_4->fld[0].rtx, D.14257
	movzwl	(%rax), %eax	# _53->code, D.14256
	cmpw	$68, %ax	#, D.14256
	jne	.L282	#,
	.loc 1 1445 0
	movq	-48(%rbp), %rax	# c, tmp149
	movq	8(%rax), %rax	# c_4->fld[0].rtx, D.14257
	movzbl	3(%rax), %eax	# *_55, D.14260
	andl	$4, %eax	#, D.14260
	testb	%al, %al	# D.14260
	je	.L282	#,
	.loc 1 1446 0
	movq	-48(%rbp), %rax	# c, tmp150
	movq	8(%rax), %rax	# c_4->fld[0].rtx, D.14257
	movq	%rax, %rdi	# D.14257,
	call	get_pool_constant	#
	movq	%rax, -48(%rbp)	# tmp151, c
.L282:
	.loc 1 1451 0
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, D.14257
	cmpq	-48(%rbp), %rax	# c, D.14257
	jne	.L283	#,
	.loc 1 1451 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# cond, tmp152
	movzwl	(%rax), %eax	# cond_30->code, D.14256
	cmpw	$105, %ax	#, D.14256
	jne	.L283	#,
	jmp	.L284	#
.L283:
	.loc 1 1453 0 is_stmt 1
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.14257
	cmpq	-48(%rbp), %rax	# c, D.14257
	jne	.L285	#,
	.loc 1 1453 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# cond, tmp153
	movzwl	(%rax), %eax	# cond_30->code, D.14256
	cmpw	$107, %ax	#, D.14256
	jne	.L285	#,
	jmp	.L284	#
.L285:
	.loc 1 1455 0 is_stmt 1
	movq	-56(%rbp), %rax	# b, tmp154
	movzbl	2(%rax), %eax	# b_2->mode, D.14260
	movzbl	%al, %eax	# D.14260, D.14255
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14257
	cmpq	-48(%rbp), %rax	# c, D.14257
	je	.L284	#,
	.loc 1 1456 0
	movl	$0, %eax	#, D.14255
	jmp	.L295	#
.L284:
	.loc 1 1459 0
	movq	-16(%rbp), %rax	# cond, tmp156
	movzwl	(%rax), %eax	# cond_30->code, D.14256
	movzwl	%ax, %eax	# D.14256, D.14261
	subl	$104, %eax	#, tmp157
	cmpl	$14, %eax	#, tmp157
	ja	.L286	#,
	movl	%eax, %eax	# tmp157, tmp158
	movq	.L288(,%rax,8), %rax	#, tmp159
	jmp	*%rax	# tmp159
	.section	.rodata
	.align 8
	.align 4
.L288:
	.quad	.L296
	.quad	.L296
	.quad	.L289
	.quad	.L289
	.quad	.L286
	.quad	.L286
	.quad	.L286
	.quad	.L286
	.quad	.L286
	.quad	.L286
	.quad	.L286
	.quad	.L296
	.quad	.L296
	.quad	.L289
	.quad	.L289
	.text
.L289:
	.loc 1 1465 0
	cmpl	$0, -76(%rbp)	#, negate
	sete	%al	#, D.14262
	movzbl	%al, %eax	# D.14262, tmp160
	movl	%eax, -76(%rbp)	# tmp160, negate
	.loc 1 1466 0
	jmp	.L290	#
.L286:
	.loc 1 1473 0
	movl	$0, %eax	#, D.14255
	jmp	.L295	#
.L296:
	.loc 1 1471 0
	nop
.L290:
	.loc 1 1476 0
	call	start_sequence	#
	.loc 1 1478 0
	movq	-88(%rbp), %rax	# if_info, tmp161
	movq	24(%rax), %rcx	# if_info_15(D)->x, D.14257
	movq	-88(%rbp), %rax	# if_info, tmp162
	movq	24(%rax), %rax	# if_info_15(D)->x, D.14257
	movzbl	2(%rax), %eax	# _74->mode, D.14260
	movzbl	%al, %eax	# D.14260, D.14263
	movq	-56(%rbp), %rdx	# b, tmp163
	movl	$0, %r8d	#,
	movl	$129, %esi	#,
	movl	%eax, %edi	# D.14263,
	call	expand_simple_unop	#
	movq	%rax, -64(%rbp)	# tmp164, target
	.loc 1 1482 0
	cmpq	$0, -64(%rbp)	#, target
	je	.L291	#,
	.loc 1 1482 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, negate
	je	.L291	#,
	.loc 1 1483 0 is_stmt 1
	movq	-88(%rbp), %rax	# if_info, tmp165
	movq	24(%rax), %rcx	# if_info_15(D)->x, D.14257
	movq	-64(%rbp), %rax	# target, tmp166
	movzbl	2(%rax), %eax	# target_77->mode, D.14260
	movzbl	%al, %eax	# D.14260, D.14263
	movq	-64(%rbp), %rdx	# target, tmp167
	movl	$0, %r8d	#,
	movl	$77, %esi	#,
	movl	%eax, %edi	# D.14263,
	call	expand_simple_unop	#
	movq	%rax, -64(%rbp)	# tmp168, target
.L291:
	.loc 1 1485 0
	cmpq	$0, -64(%rbp)	#, target
	jne	.L292	#,
	.loc 1 1487 0
	call	end_sequence	#
	.loc 1 1488 0
	movl	$0, %eax	#, D.14255
	jmp	.L295	#
.L292:
	.loc 1 1491 0
	movq	-88(%rbp), %rax	# if_info, tmp169
	movq	24(%rax), %rax	# if_info_15(D)->x, D.14257
	cmpq	-64(%rbp), %rax	# target, D.14257
	je	.L293	#,
	.loc 1 1492 0
	movq	-88(%rbp), %rax	# if_info, tmp170
	movq	24(%rax), %rax	# if_info_15(D)->x, D.14257
	movq	-64(%rbp), %rdx	# target, tmp171
	movq	%rdx, %rsi	# tmp171,
	movq	%rax, %rdi	# D.14257,
	call	noce_emit_move_insn	#
.L293:
	.loc 1 1494 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp172, seq
	.loc 1 1495 0
	call	end_sequence	#
	.loc 1 1497 0
	movq	-8(%rbp), %rax	# seq, tmp173
	movq	%rax, %rdi	# tmp173,
	call	seq_contains_jump	#
	testl	%eax, %eax	# D.14255
	je	.L294	#,
	.loc 1 1498 0
	movl	$0, %eax	#, D.14255
	jmp	.L295	#
.L294:
	.loc 1 1500 0
	movq	-88(%rbp), %rax	# if_info, tmp174
	movq	48(%rax), %rdx	# if_info_15(D)->jump, D.14257
	movq	-8(%rbp), %rax	# seq, tmp175
	movq	%rdx, %rsi	# D.14257,
	movq	%rax, %rdi	# tmp175,
	call	emit_insns_before	#
	.loc 1 1501 0
	movq	-88(%rbp), %rax	# if_info, tmp176
	movq	-16(%rbp), %rdx	# cond, tmp177
	movq	%rdx, 56(%rax)	# tmp177, if_info_15(D)->cond
	.loc 1 1502 0
	movq	-72(%rbp), %rdx	# earliest, earliest.50
	movq	-88(%rbp), %rax	# if_info, tmp178
	movq	%rdx, 64(%rax)	# earliest.50, if_info_15(D)->cond_earliest
	.loc 1 1504 0
	movl	$1, %eax	#, D.14255
.L295:
	.loc 1 1505 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	noce_try_abs, .-noce_try_abs
	.type	noce_get_condition, @function
noce_get_condition:
.LFB21:
	.loc 1 1514 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# jump, jump
	movq	%rsi, -80(%rbp)	# earliest, earliest
	.loc 1 1518 0
	movq	-72(%rbp), %rax	# jump, tmp95
	movq	%rax, %rdi	# tmp95,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.14265
	jne	.L298	#,
	.loc 1 1519 0
	movl	$0, %eax	#, D.14264
	jmp	.L299	#
.L298:
	.loc 1 1521 0
	movq	-72(%rbp), %rax	# jump, tmp96
	movq	%rax, %rdi	# tmp96,
	call	pc_set	#
	movq	%rax, -32(%rbp)	# tmp97, set
	.loc 1 1525 0
	movq	-32(%rbp), %rax	# set, tmp98
	movq	16(%rax), %rax	# set_9->fld[1].rtx, D.14266
	movq	24(%rax), %rax	# _10->fld[2].rtx, D.14266
	movzwl	(%rax), %eax	# _11->code, D.14267
	.loc 1 1526 0
	cmpw	$67, %ax	#, D.14267
	jne	.L300	#,
	.loc 1 1526 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# set, tmp99
	movq	16(%rax), %rax	# set_9->fld[1].rtx, D.14266
	movq	24(%rax), %rax	# _13->fld[2].rtx, D.14266
	movq	8(%rax), %rdx	# _14->fld[0].rtx, D.14266
	movq	-72(%rbp), %rax	# jump, tmp100
	movq	64(%rax), %rax	# jump_6(D)->fld[7].rtx, D.14266
	cmpq	%rax, %rdx	# D.14266, D.14266
	jne	.L300	#,
	.loc 1 1526 0 discriminator 3
	movl	$1, %eax	#, iftmp.51
	jmp	.L301	#
.L300:
	.loc 1 1526 0 discriminator 2
	movl	$0, %eax	#, iftmp.51
.L301:
	.loc 1 1525 0 is_stmt 1
	movb	%al, -49(%rbp)	# iftmp.51, reverse
	andb	$1, -49(%rbp)	#, reverse
	.loc 1 1530 0
	movq	-32(%rbp), %rax	# set, tmp101
	movq	16(%rax), %rax	# set_9->fld[1].rtx, D.14266
	movq	8(%rax), %rax	# _20->fld[0].rtx, tmp102
	movq	%rax, -48(%rbp)	# tmp102, cond
	.loc 1 1531 0
	movq	-48(%rbp), %rax	# cond, tmp103
	movq	8(%rax), %rax	# cond_21->fld[0].rtx, tmp104
	movq	%rax, -24(%rbp)	# tmp104, tmp
	.loc 1 1532 0
	movq	-24(%rbp), %rax	# tmp, tmp105
	movzwl	(%rax), %eax	# tmp_22->code, D.14267
	cmpw	$61, %ax	#, D.14267
	jne	.L302	#,
	.loc 1 1532 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmp, tmp106
	movzbl	2(%rax), %eax	# tmp_22->mode, D.14268
	movzbl	%al, %eax	# D.14268, D.14265
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14269
	cmpl	$1, %eax	#, D.14269
	jne	.L302	#,
	.loc 1 1534 0 is_stmt 1
	movq	-80(%rbp), %rax	# earliest, tmp108
	movq	-72(%rbp), %rdx	# jump, tmp109
	movq	%rdx, (%rax)	# tmp109, *earliest_27(D)
	.loc 1 1536 0
	cmpb	$0, -49(%rbp)	#, reverse
	je	.L303	#,
	.loc 1 1537 0
	movq	-48(%rbp), %rax	# cond, tmp110
	movq	16(%rax), %r12	# cond_21->fld[1].rtx, D.14266
	.loc 1 1538 0
	movq	-48(%rbp), %rax	# cond, tmp111
	movzbl	2(%rax), %eax	# cond_21->mode, D.14268
	.loc 1 1537 0
	movzbl	%al, %ebx	# D.14268, D.14270
	movq	-48(%rbp), %rax	# cond, tmp112
	movzwl	(%rax), %eax	# cond_21->code, D.14267
	movzwl	%ax, %eax	# D.14267, D.14271
	movl	%eax, %edi	# D.14271,
	call	reverse_condition	#
	movq	-24(%rbp), %rdx	# tmp, tmp113
	movq	%r12, %rcx	# D.14266,
	movl	%ebx, %esi	# D.14270,
	movl	%eax, %edi	# D.14271,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -48(%rbp)	# tmp114, cond
.L303:
	.loc 1 1539 0
	movq	-48(%rbp), %rax	# cond, D.14264
	jmp	.L299	#
.L302:
	.loc 1 1545 0
	movzbl	-49(%rbp), %edx	# reverse, D.14265
	movq	-80(%rbp), %rcx	# earliest, tmp115
	movq	-48(%rbp), %rsi	# cond, tmp116
	movq	-72(%rbp), %rax	# jump, tmp117
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp117,
	call	canonicalize_condition	#
	movq	%rax, -24(%rbp)	# tmp118, tmp
	.loc 1 1546 0
	cmpq	$0, -24(%rbp)	#, tmp
	jne	.L304	#,
	.loc 1 1547 0
	movl	$0, %eax	#, D.14264
	jmp	.L299	#
.L304:
	.loc 1 1552 0
	movq	-80(%rbp), %rax	# earliest, tmp119
	movq	(%rax), %rax	# *earliest_27(D), tmp120
	movq	%rax, -40(%rbp)	# tmp120, insn
	jmp	.L305	#
.L308:
	.loc 1 1553 0
	movq	-40(%rbp), %rax	# insn, tmp121
	movzwl	(%rax), %eax	# insn_2->code, D.14267
	movzwl	%ax, %eax	# D.14267, D.14265
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14272
	cmpb	$105, %al	#, D.14272
	jne	.L306	#,
	.loc 1 1553 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdx	# insn, tmp123
	movq	-24(%rbp), %rax	# tmp, tmp124
	movq	%rdx, %rsi	# tmp123,
	movq	%rax, %rdi	# tmp124,
	call	modified_in_p	#
	testl	%eax, %eax	# D.14265
	je	.L306	#,
	.loc 1 1554 0 is_stmt 1
	jmp	.L307	#
.L306:
	.loc 1 1552 0
	movq	-40(%rbp), %rax	# insn, tmp125
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp126
	movq	%rax, -40(%rbp)	# tmp126, insn
.L305:
	.loc 1 1552 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp127
	cmpq	-72(%rbp), %rax	# jump, tmp127
	jne	.L308	#,
.L307:
	.loc 1 1555 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp128
	cmpq	-72(%rbp), %rax	# jump, tmp128
	jne	.L309	#,
	.loc 1 1556 0
	movq	-24(%rbp), %rax	# tmp, D.14264
	jmp	.L299	#
.L309:
	.loc 1 1561 0
	movq	-24(%rbp), %rax	# tmp, tmp129
	movq	8(%rax), %rax	# tmp_37->fld[0].rtx, tmp130
	movq	%rax, -24(%rbp)	# tmp130, tmp
	.loc 1 1562 0
	movq	-24(%rbp), %rax	# tmp, tmp131
	movzwl	(%rax), %eax	# tmp_46->code, D.14267
	cmpw	$61, %ax	#, D.14267
	jne	.L310	#,
	.loc 1 1562 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmp, tmp132
	movzbl	2(%rax), %eax	# tmp_46->mode, D.14268
	movzbl	%al, %eax	# D.14268, D.14265
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14269
	cmpl	$1, %eax	#, D.14269
	je	.L311	#,
.L310:
	.loc 1 1563 0 is_stmt 1
	movl	$0, %eax	#, D.14264
	jmp	.L299	#
.L311:
	.loc 1 1564 0
	movzbl	-49(%rbp), %edx	# reverse, D.14265
	movq	-24(%rbp), %rdi	# tmp, tmp134
	movq	-80(%rbp), %rcx	# earliest, tmp135
	movq	-48(%rbp), %rsi	# cond, tmp136
	movq	-72(%rbp), %rax	# jump, tmp137
	movq	%rdi, %r8	# tmp134,
	movq	%rax, %rdi	# tmp137,
	call	canonicalize_condition	#
	movq	%rax, -24(%rbp)	# tmp138, tmp
	.loc 1 1565 0
	cmpq	$0, -24(%rbp)	#, tmp
	jne	.L312	#,
	.loc 1 1566 0
	movl	$0, %eax	#, D.14264
	jmp	.L299	#
.L312:
	.loc 1 1569 0
	movq	-80(%rbp), %rax	# earliest, tmp139
	movq	(%rax), %rax	# *earliest_27(D), tmp140
	movq	%rax, -40(%rbp)	# tmp140, insn
	jmp	.L313	#
.L315:
	.loc 1 1570 0
	movq	-40(%rbp), %rax	# insn, tmp141
	movzwl	(%rax), %eax	# insn_3->code, D.14267
	movzwl	%ax, %eax	# D.14267, D.14265
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14272
	cmpb	$105, %al	#, D.14272
	jne	.L314	#,
	.loc 1 1570 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdx	# insn, tmp143
	movq	-24(%rbp), %rax	# tmp, tmp144
	movq	%rdx, %rsi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	modified_in_p	#
	testl	%eax, %eax	# D.14265
	je	.L314	#,
	.loc 1 1571 0 is_stmt 1
	movl	$0, %eax	#, D.14264
	jmp	.L299	#
.L314:
	.loc 1 1569 0
	movq	-40(%rbp), %rax	# insn, tmp145
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp146
	movq	%rax, -40(%rbp)	# tmp146, insn
.L313:
	.loc 1 1569 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp147
	cmpq	-72(%rbp), %rax	# jump, tmp147
	jne	.L315	#,
	.loc 1 1573 0 is_stmt 1
	movq	-24(%rbp), %rax	# tmp, D.14264
.L299:
	.loc 1 1574 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	noce_get_condition, .-noce_get_condition
	.type	noce_operand_ok, @function
noce_operand_ok:
.LFB22:
	.loc 1 1581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	.loc 1 1584 0
	movq	-8(%rbp), %rax	# op, tmp115
	movzwl	(%rax), %eax	# op_4(D)->code, D.14274
	cmpw	$66, %ax	#, D.14274
	jne	.L317	#,
	.loc 1 1585 0
	movq	-8(%rbp), %rax	# op, tmp116
	movq	8(%rax), %rax	# op_4(D)->fld[0].rtx, D.14275
	movq	%rax, %rdi	# D.14275,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14273
	sete	%al	#, D.14276
	movzbl	%al, %eax	# D.14276, D.14273
	jmp	.L318	#
.L317:
	.loc 1 1587 0
	movq	-8(%rbp), %rax	# op, tmp117
	movq	%rax, %rdi	# tmp117,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14273
	je	.L319	#,
	.loc 1 1588 0
	movl	$0, %eax	#, D.14273
	jmp	.L318	#
.L319:
	.loc 1 1593 0
	movl	flag_trapping_math(%rip), %eax	# flag_trapping_math, flag_trapping_math.52
	testl	%eax, %eax	# flag_trapping_math.52
	jne	.L320	#,
	.loc 1 1593 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp118
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.14277
	movzbl	%al, %eax	# D.14277, D.14273
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14278
	cmpl	$2, %eax	#, D.14278
	je	.L321	#,
	movq	-8(%rbp), %rax	# op, tmp120
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.14277
	movzbl	%al, %eax	# D.14277, D.14273
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14278
	cmpl	$6, %eax	#, D.14278
	je	.L321	#,
	movq	-8(%rbp), %rax	# op, tmp122
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.14277
	movzbl	%al, %eax	# D.14277, D.14273
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14278
	cmpl	$8, %eax	#, D.14278
	jne	.L320	#,
.L321:
	.loc 1 1594 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp124
	movzwl	(%rax), %eax	# op_4(D)->code, D.14274
	movzwl	%ax, %eax	# D.14274, D.14279
	subl	$79, %eax	#, tmp125
	cmpl	$3, %eax	#, tmp125
	ja	.L322	#,
	.loc 1 1603 0
	movq	-8(%rbp), %rax	# op, tmp126
	movq	16(%rax), %rax	# op_4(D)->fld[1].rtx, D.14275
	movzwl	(%rax), %eax	# _24->code, D.14274
	.loc 1 1605 0
	cmpw	$67, %ax	#, D.14274
	je	.L324	#,
	.loc 1 1603 0
	movq	-8(%rbp), %rax	# op, tmp127
	movq	16(%rax), %rax	# op_4(D)->fld[1].rtx, D.14275
	movzwl	(%rax), %eax	# _26->code, D.14274
	cmpw	$68, %ax	#, D.14274
	je	.L324	#,
	.loc 1 1603 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp128
	movq	16(%rax), %rax	# op_4(D)->fld[1].rtx, D.14275
	movzwl	(%rax), %eax	# _28->code, D.14274
	cmpw	$54, %ax	#, D.14274
	je	.L324	#,
	movq	-8(%rbp), %rax	# op, tmp129
	movq	16(%rax), %rax	# op_4(D)->fld[1].rtx, D.14275
	movzwl	(%rax), %eax	# _30->code, D.14274
	cmpw	$55, %ax	#, D.14274
	je	.L324	#,
	movq	-8(%rbp), %rax	# op, tmp130
	movq	16(%rax), %rax	# op_4(D)->fld[1].rtx, D.14275
	movzwl	(%rax), %eax	# _32->code, D.14274
	cmpw	$58, %ax	#, D.14274
	je	.L324	#,
	movq	-8(%rbp), %rax	# op, tmp131
	movq	16(%rax), %rax	# op_4(D)->fld[1].rtx, D.14275
	movzwl	(%rax), %eax	# _34->code, D.14274
	cmpw	$134, %ax	#, D.14274
	je	.L324	#,
	movq	-8(%rbp), %rax	# op, tmp132
	movq	16(%rax), %rax	# op_4(D)->fld[1].rtx, D.14275
	movzwl	(%rax), %eax	# _36->code, D.14274
	cmpw	$56, %ax	#, D.14274
	je	.L324	#,
	movq	-8(%rbp), %rax	# op, tmp133
	movq	16(%rax), %rax	# op_4(D)->fld[1].rtx, D.14275
	movzwl	(%rax), %eax	# _38->code, D.14274
	cmpw	$140, %ax	#, D.14274
	jne	.L325	#,
.L324:
	.loc 1 1604 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp134
	movq	16(%rax), %rdx	# op_4(D)->fld[1].rtx, D.14275
	movq	-8(%rbp), %rax	# op, tmp135
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.14277
	movzbl	%al, %eax	# D.14277, D.14273
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14275
	cmpq	%rax, %rdx	# D.14275, D.14275
	je	.L325	#,
	.loc 1 1605 0
	movq	-8(%rbp), %rax	# op, tmp137
	movq	8(%rax), %rax	# op_4(D)->fld[0].rtx, D.14275
	movq	%rax, %rdi	# D.14275,
	call	may_trap_p	#
	testl	%eax, %eax	# D.14273
	jne	.L325	#,
	.loc 1 1605 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.53
	jmp	.L326	#
.L325:
	.loc 1 1605 0 discriminator 2
	movl	$0, %eax	#, iftmp.53
.L326:
	.loc 1 1603 0 is_stmt 1
	jmp	.L318	#
.L322:
	.loc 1 1608 0
	movq	-8(%rbp), %rax	# op, tmp138
	movzwl	(%rax), %eax	# op_4(D)->code, D.14274
	movzwl	%ax, %eax	# D.14274, D.14273
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14280
	movsbl	%al, %eax	# D.14280, D.14273
	cmpl	$50, %eax	#, D.14273
	je	.L328	#,
	cmpl	$99, %eax	#, D.14273
	je	.L328	#,
	cmpl	$49, %eax	#, D.14273
	je	.L329	#,
	.loc 1 1616 0
	jmp	.L320	#
.L329:
	.loc 1 1611 0
	movq	-8(%rbp), %rax	# op, tmp140
	movq	8(%rax), %rax	# op_4(D)->fld[0].rtx, D.14275
	movq	%rax, %rdi	# D.14275,
	call	may_trap_p	#
	testl	%eax, %eax	# D.14273
	sete	%al	#, D.14276
	movzbl	%al, %eax	# D.14276, D.14273
	jmp	.L318	#
.L328:
	.loc 1 1614 0
	movq	-8(%rbp), %rax	# op, tmp141
	movq	8(%rax), %rax	# op_4(D)->fld[0].rtx, D.14275
	movq	%rax, %rdi	# D.14275,
	call	may_trap_p	#
	testl	%eax, %eax	# D.14273
	jne	.L330	#,
	.loc 1 1614 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op, tmp142
	movq	16(%rax), %rax	# op_4(D)->fld[1].rtx, D.14275
	movq	%rax, %rdi	# D.14275,
	call	may_trap_p	#
	testl	%eax, %eax	# D.14273
	jne	.L330	#,
	.loc 1 1614 0 discriminator 3
	movl	$1, %eax	#, iftmp.54
	jmp	.L331	#
.L330:
	.loc 1 1614 0 discriminator 2
	movl	$0, %eax	#, iftmp.54
.L331:
	.loc 1 1614 0 discriminator 4
	jmp	.L318	#
.L320:
	.loc 1 1619 0 is_stmt 1
	movq	-8(%rbp), %rax	# op, tmp143
	movq	%rax, %rdi	# tmp143,
	call	may_trap_p	#
	testl	%eax, %eax	# D.14273
	sete	%al	#, D.14276
	movzbl	%al, %eax	# D.14276, D.14273
.L318:
	.loc 1 1620 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	noce_operand_ok, .-noce_operand_ok
	.type	noce_process_if_block, @function
noce_process_if_block:
.LFB23:
	.loc 1 1632 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -184(%rbp)	# test_bb, test_bb
	movq	%rsi, -192(%rbp)	# then_bb, then_bb
	movq	%rdx, -200(%rbp)	# else_bb, else_bb
	movq	%rcx, -208(%rbp)	# join_bb, join_bb
	.loc 1 1650 0
	movq	-184(%rbp), %rax	# test_bb, tmp136
	movq	8(%rax), %rax	# test_bb_18(D)->end, tmp137
	movq	%rax, -144(%rbp)	# tmp137, jump
	.loc 1 1651 0
	leaq	-80(%rbp), %rax	#, tmp138
	leaq	64(%rax), %rdx	#, tmp139
	movq	-144(%rbp), %rax	# jump, tmp140
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	noce_get_condition	#
	movq	%rax, -136(%rbp)	# tmp141, cond
	.loc 1 1652 0
	cmpq	$0, -136(%rbp)	#, cond
	jne	.L333	#,
	.loc 1 1653 0
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L333:
	.loc 1 1657 0
	movq	-144(%rbp), %rax	# jump, tmp142
	movq	%rax, %rdi	# tmp142,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.14281
	jne	.L335	#,
	.loc 1 1658 0
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L335:
	.loc 1 1661 0
	movq	-136(%rbp), %rax	# cond, tmp143
	movq	8(%rax), %rax	# cond_20->fld[0].rtx, D.14282
	movzbl	2(%rax), %eax	# _24->mode, D.14283
	cmpb	$51, %al	#, D.14283
	jne	.L336	#,
	.loc 1 1662 0
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L336:
	.loc 1 1665 0
	movq	-192(%rbp), %rax	# then_bb, tmp144
	movq	%rax, %rdi	# tmp144,
	call	first_active_insn	#
	movq	%rax, -128(%rbp)	# tmp145, insn_a
	.loc 1 1666 0
	cmpq	$0, -128(%rbp)	#, insn_a
	je	.L337	#,
	.loc 1 1667 0
	movq	-128(%rbp), %rdx	# insn_a, tmp146
	movq	-192(%rbp), %rax	# then_bb, tmp147
	movq	%rdx, %rsi	# tmp146,
	movq	%rax, %rdi	# tmp147,
	call	last_active_insn_p	#
	testl	%eax, %eax	# D.14281
	je	.L337	#,
	.loc 1 1668 0
	movq	-128(%rbp), %rax	# insn_a, tmp148
	movzwl	(%rax), %eax	# insn_a_28->code, D.14284
	movzwl	%ax, %eax	# D.14284, D.14281
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14285
	cmpb	$105, %al	#, D.14285
	jne	.L338	#,
	.loc 1 1668 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# insn_a, tmp150
	movq	32(%rax), %rax	# insn_a_28->fld[3].rtx, D.14282
	movzwl	(%rax), %eax	# _33->code, D.14284
	cmpw	$47, %ax	#, D.14284
	jne	.L339	#,
	.loc 1 1668 0 discriminator 3
	movq	-128(%rbp), %rax	# insn_a, tmp151
	movq	32(%rax), %rax	# insn_a_28->fld[3].rtx, iftmp.56
	jmp	.L341	#
.L339:
	.loc 1 1668 0 discriminator 4
	movq	-128(%rbp), %rax	# insn_a, tmp152
	movq	32(%rax), %rdx	# insn_a_28->fld[3].rtx, D.14282
	movq	-128(%rbp), %rax	# insn_a, tmp153
	movq	%rdx, %rsi	# D.14282,
	movq	%rax, %rdi	# tmp153,
	call	single_set_2	#
	jmp	.L341	#
.L338:
	.loc 1 1668 0 discriminator 2
	movl	$0, %eax	#, iftmp.55
.L341:
	.loc 1 1668 0 discriminator 5
	movq	%rax, -120(%rbp)	# iftmp.55, set_a
	cmpq	$0, -120(%rbp)	#, set_a
	jne	.L342	#,
.L337:
	.loc 1 1669 0 is_stmt 1
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L342:
	.loc 1 1671 0
	movq	-120(%rbp), %rax	# set_a, tmp154
	movq	8(%rax), %rax	# set_a_40->fld[0].rtx, tmp155
	movq	%rax, -160(%rbp)	# tmp155, x
	.loc 1 1672 0
	movq	-120(%rbp), %rax	# set_a, tmp156
	movq	16(%rax), %rax	# set_a_40->fld[1].rtx, tmp157
	movq	%rax, -112(%rbp)	# tmp157, a
	.loc 1 1681 0
	movq	$0, -168(%rbp)	#, set_b
	.loc 1 1682 0
	cmpq	$0, -200(%rbp)	#, else_bb
	je	.L343	#,
	.loc 1 1684 0
	movq	-200(%rbp), %rax	# else_bb, tmp158
	movq	%rax, %rdi	# tmp158,
	call	first_active_insn	#
	movq	%rax, -176(%rbp)	# tmp159, insn_b
	.loc 1 1685 0
	cmpq	$0, -176(%rbp)	#, insn_b
	je	.L344	#,
	.loc 1 1686 0
	movq	-176(%rbp), %rdx	# insn_b, tmp160
	movq	-200(%rbp), %rax	# else_bb, tmp161
	movq	%rdx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	last_active_insn_p	#
	testl	%eax, %eax	# D.14281
	je	.L344	#,
	.loc 1 1687 0
	movq	-176(%rbp), %rax	# insn_b, tmp162
	movzwl	(%rax), %eax	# insn_b_45->code, D.14284
	movzwl	%ax, %eax	# D.14284, D.14281
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14285
	cmpb	$105, %al	#, D.14285
	jne	.L345	#,
	.loc 1 1687 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# insn_b, tmp164
	movq	32(%rax), %rax	# insn_b_45->fld[3].rtx, D.14282
	movzwl	(%rax), %eax	# _50->code, D.14284
	cmpw	$47, %ax	#, D.14284
	jne	.L346	#,
	.loc 1 1687 0 discriminator 3
	movq	-176(%rbp), %rax	# insn_b, tmp165
	movq	32(%rax), %rax	# insn_b_45->fld[3].rtx, iftmp.58
	jmp	.L348	#
.L346:
	.loc 1 1687 0 discriminator 4
	movq	-176(%rbp), %rax	# insn_b, tmp166
	movq	32(%rax), %rdx	# insn_b_45->fld[3].rtx, D.14282
	movq	-176(%rbp), %rax	# insn_b, tmp167
	movq	%rdx, %rsi	# D.14282,
	movq	%rax, %rdi	# tmp167,
	call	single_set_2	#
	jmp	.L348	#
.L345:
	.loc 1 1687 0 discriminator 2
	movl	$0, %eax	#, iftmp.57
.L348:
	.loc 1 1687 0 discriminator 5
	movq	%rax, -168(%rbp)	# iftmp.57, set_b
	cmpq	$0, -168(%rbp)	#, set_b
	je	.L344	#,
	.loc 1 1688 0 is_stmt 1
	movq	-168(%rbp), %rax	# set_b, tmp168
	movq	8(%rax), %rdx	# set_b_57->fld[0].rtx, D.14282
	movq	-160(%rbp), %rax	# x, tmp169
	movq	%rdx, %rsi	# D.14282,
	movq	%rax, %rdi	# tmp169,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14281
	jne	.L349	#,
.L344:
	.loc 1 1689 0
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L343:
	.loc 1 1693 0
	movq	-16(%rbp), %rax	# if_info.cond_earliest, D.14282
	movq	%rax, %rdi	# D.14282,
	call	prev_nonnote_insn	#
	movq	%rax, -176(%rbp)	# tmp170, insn_b
	.loc 1 1694 0
	cmpq	$0, -176(%rbp)	#, insn_b
	je	.L350	#,
	.loc 1 1695 0
	movq	-176(%rbp), %rax	# insn_b, tmp171
	movzwl	(%rax), %eax	# insn_b_62->code, D.14284
	cmpw	$32, %ax	#, D.14284
	jne	.L350	#,
	.loc 1 1696 0
	movq	-176(%rbp), %rax	# insn_b, tmp172
	movzwl	(%rax), %eax	# insn_b_62->code, D.14284
	movzwl	%ax, %eax	# D.14284, D.14281
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14285
	cmpb	$105, %al	#, D.14285
	jne	.L351	#,
	.loc 1 1696 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# insn_b, tmp174
	movq	32(%rax), %rax	# insn_b_62->fld[3].rtx, D.14282
	movzwl	(%rax), %eax	# _67->code, D.14284
	cmpw	$47, %ax	#, D.14284
	jne	.L352	#,
	.loc 1 1696 0 discriminator 3
	movq	-176(%rbp), %rax	# insn_b, tmp175
	movq	32(%rax), %rax	# insn_b_62->fld[3].rtx, iftmp.60
	jmp	.L354	#
.L352:
	.loc 1 1696 0 discriminator 4
	movq	-176(%rbp), %rax	# insn_b, tmp176
	movq	32(%rax), %rdx	# insn_b_62->fld[3].rtx, D.14282
	movq	-176(%rbp), %rax	# insn_b, tmp177
	movq	%rdx, %rsi	# D.14282,
	movq	%rax, %rdi	# tmp177,
	call	single_set_2	#
	jmp	.L354	#
.L351:
	.loc 1 1696 0 discriminator 2
	movl	$0, %eax	#, iftmp.59
.L354:
	.loc 1 1696 0 discriminator 5
	movq	%rax, -168(%rbp)	# iftmp.59, set_b
	cmpq	$0, -168(%rbp)	#, set_b
	je	.L350	#,
	.loc 1 1697 0 is_stmt 1
	movq	-168(%rbp), %rax	# set_b, tmp178
	movq	8(%rax), %rdx	# set_b_74->fld[0].rtx, D.14282
	movq	-160(%rbp), %rax	# x, tmp179
	movq	%rdx, %rsi	# D.14282,
	movq	%rax, %rdi	# tmp179,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14281
	je	.L350	#,
	.loc 1 1698 0
	movq	-136(%rbp), %rdx	# cond, tmp180
	movq	-160(%rbp), %rax	# x, tmp181
	movq	%rdx, %rsi	# tmp180,
	movq	%rax, %rdi	# tmp181,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14281
	jne	.L350	#,
	.loc 1 1699 0
	movq	-112(%rbp), %rdx	# a, tmp182
	movq	-160(%rbp), %rax	# x, tmp183
	movq	%rdx, %rsi	# tmp182,
	movq	%rax, %rdi	# tmp183,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14281
	jne	.L350	#,
	.loc 1 1700 0
	movq	-168(%rbp), %rax	# set_b, tmp184
	movq	16(%rax), %rdx	# set_b_74->fld[1].rtx, D.14282
	movq	-160(%rbp), %rax	# x, tmp185
	movq	%rdx, %rsi	# D.14282,
	movq	%rax, %rdi	# tmp185,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14281
	je	.L349	#,
.L350:
	.loc 1 1701 0
	movq	$0, -168(%rbp)	#, set_b
	movq	-168(%rbp), %rax	# set_b, tmp186
	movq	%rax, -176(%rbp)	# tmp186, insn_b
.L349:
	.loc 1 1703 0
	cmpq	$0, -168(%rbp)	#, set_b
	je	.L355	#,
	.loc 1 1703 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# set_b, tmp187
	movq	16(%rax), %rax	# set_b_4->fld[1].rtx, iftmp.61
	jmp	.L356	#
.L355:
	.loc 1 1703 0 discriminator 2
	movq	-160(%rbp), %rax	# x, iftmp.61
.L356:
	.loc 1 1703 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.61, b
	.loc 1 1706 0 is_stmt 1 discriminator 3
	movq	-144(%rbp), %rax	# jump, tmp188
	movq	%rax, -152(%rbp)	# tmp188, insn
	jmp	.L357	#
.L359:
	.loc 1 1707 0
	movq	-152(%rbp), %rax	# insn, tmp189
	movzwl	(%rax), %eax	# insn_7->code, D.14284
	movzwl	%ax, %eax	# D.14284, D.14281
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14285
	cmpb	$105, %al	#, D.14285
	jne	.L358	#,
	.loc 1 1707 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rdx	# insn, tmp191
	movq	-160(%rbp), %rax	# x, tmp192
	movq	%rdx, %rsi	# tmp191,
	movq	%rax, %rdi	# tmp192,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.14281
	je	.L358	#,
	.loc 1 1708 0 is_stmt 1
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L358:
	.loc 1 1706 0
	movq	-152(%rbp), %rax	# insn, tmp193
	movq	16(%rax), %rax	# insn_7->fld[1].rtx, tmp194
	movq	%rax, -152(%rbp)	# tmp194, insn
.L357:
	.loc 1 1706 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# if_info.cond_earliest, D.14282
	cmpq	-152(%rbp), %rax	# insn, D.14282
	jne	.L359	#,
	.loc 1 1711 0 is_stmt 1
	movq	-16(%rbp), %rax	# if_info.cond_earliest, tmp195
	movq	%rax, -152(%rbp)	# tmp195, insn
	jmp	.L360	#
.L363:
	.loc 1 1712 0
	movq	-152(%rbp), %rax	# insn, tmp196
	movzwl	(%rax), %eax	# insn_8->code, D.14284
	movzwl	%ax, %eax	# D.14284, D.14281
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14285
	cmpb	$105, %al	#, D.14285
	jne	.L361	#,
	.loc 1 1713 0
	movq	-152(%rbp), %rdx	# insn, tmp198
	movq	-112(%rbp), %rax	# a, tmp199
	movq	%rdx, %rsi	# tmp198,
	movq	%rax, %rdi	# tmp199,
	call	modified_in_p	#
	testl	%eax, %eax	# D.14281
	jne	.L362	#,
	.loc 1 1713 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rdx	# insn, tmp200
	movq	-104(%rbp), %rax	# b, tmp201
	movq	%rdx, %rsi	# tmp200,
	movq	%rax, %rdi	# tmp201,
	call	modified_in_p	#
	testl	%eax, %eax	# D.14281
	je	.L361	#,
.L362:
	.loc 1 1714 0 is_stmt 1
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L361:
	.loc 1 1711 0
	movq	-152(%rbp), %rax	# insn, tmp202
	movq	24(%rax), %rax	# insn_8->fld[2].rtx, tmp203
	movq	%rax, -152(%rbp)	# tmp203, insn
.L360:
	.loc 1 1711 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# insn, tmp204
	cmpq	-144(%rbp), %rax	# jump, tmp204
	jne	.L363	#,
	.loc 1 1718 0 is_stmt 1
	movq	-160(%rbp), %rax	# x, tmp205
	movq	%rax, -96(%rbp)	# tmp205, orig_x
	.loc 1 1719 0
	movq	-160(%rbp), %rax	# x, tmp206
	movzwl	(%rax), %eax	# x_41->code, D.14284
	cmpw	$61, %ax	#, D.14284
	jne	.L364	#,
	.loc 1 1721 0
	movq	-160(%rbp), %rax	# x, tmp207
	movl	8(%rax), %eax	# x_41->fld[0].rtuint, D.14286
	.loc 1 1720 0
	cmpl	$52, %eax	#, D.14286
	ja	.L365	#,
.L364:
	.loc 1 1723 0
	movl	no_new_pseudos(%rip), %eax	# no_new_pseudos, no_new_pseudos.62
	testl	%eax, %eax	# no_new_pseudos.62
	je	.L366	#,
	.loc 1 1724 0
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L366:
	.loc 1 1725 0
	movq	-160(%rbp), %rax	# x, tmp208
	movzwl	(%rax), %eax	# x_41->code, D.14284
	cmpw	$64, %ax	#, D.14284
	jne	.L367	#,
	.loc 1 1725 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# x, tmp209
	movq	8(%rax), %rax	# x_41->fld[0].rtx, iftmp.63
	jmp	.L368	#
.L367:
	.loc 1 1725 0 discriminator 2
	movq	-160(%rbp), %rax	# x, iftmp.63
.L368:
	.loc 1 1725 0 discriminator 3
	movzbl	2(%rax), %eax	# iftmp.63_17->mode, D.14283
	movzbl	%al, %eax	# D.14283, D.14287
	movl	%eax, %edi	# D.14287,
	call	gen_reg_rtx	#
	movq	%rax, -160(%rbp)	# tmp210, x
.L365:
	.loc 1 1730 0 is_stmt 1
	movq	-112(%rbp), %rax	# a, tmp211
	movq	%rax, %rdi	# tmp211,
	call	noce_operand_ok	#
	testl	%eax, %eax	# D.14281
	je	.L369	#,
	.loc 1 1730 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# b, tmp212
	movq	%rax, %rdi	# tmp212,
	call	noce_operand_ok	#
	testl	%eax, %eax	# D.14281
	jne	.L370	#,
.L369:
	.loc 1 1731 0 is_stmt 1
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L370:
	.loc 1 1734 0
	movq	-184(%rbp), %rax	# test_bb, tmp213
	movq	%rax, -80(%rbp)	# tmp213, if_info.test_bb
	.loc 1 1735 0
	movq	-136(%rbp), %rax	# cond, tmp214
	movq	%rax, -24(%rbp)	# tmp214, if_info.cond
	.loc 1 1736 0
	movq	-144(%rbp), %rax	# jump, tmp215
	movq	%rax, -32(%rbp)	# tmp215, if_info.jump
	.loc 1 1737 0
	movq	-128(%rbp), %rax	# insn_a, tmp216
	movq	%rax, -72(%rbp)	# tmp216, if_info.insn_a
	.loc 1 1738 0
	movq	-176(%rbp), %rax	# insn_b, tmp217
	movq	%rax, -64(%rbp)	# tmp217, if_info.insn_b
	.loc 1 1739 0
	movq	-160(%rbp), %rax	# x, tmp218
	movq	%rax, -56(%rbp)	# tmp218, if_info.x
	.loc 1 1740 0
	movq	-112(%rbp), %rax	# a, tmp219
	movq	%rax, -48(%rbp)	# tmp219, if_info.a
	.loc 1 1741 0
	movq	-104(%rbp), %rax	# b, tmp220
	movq	%rax, -40(%rbp)	# tmp220, if_info.b
	.loc 1 1749 0
	movq	-104(%rbp), %rdx	# b, tmp221
	movq	-112(%rbp), %rax	# a, tmp222
	movq	%rdx, %rsi	# tmp221,
	movq	%rax, %rdi	# tmp222,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14281
	je	.L371	#,
	.loc 1 1755 0
	cmpq	$0, -176(%rbp)	#, insn_b
	je	.L372	#,
	.loc 1 1755 0 is_stmt 0 discriminator 1
	cmpq	$0, -200(%rbp)	#, else_bb
	je	.L372	#,
.LBB13:
	.loc 1 1759 0 is_stmt 1
	cmpq	$0, -200(%rbp)	#, else_bb
	je	.L373	#,
	.loc 1 1759 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# else_bb, tmp223
	movq	8(%rax), %rax	# else_bb_44(D)->end, D.14282
	cmpq	-176(%rbp), %rax	# insn_b, D.14282
	jne	.L373	#,
	.loc 1 1760 0 is_stmt 1
	movq	-176(%rbp), %rax	# insn_b, tmp224
	movq	16(%rax), %rdx	# insn_b_1->fld[1].rtx, D.14282
	movq	-200(%rbp), %rax	# else_bb, tmp225
	movq	%rdx, 8(%rax)	# D.14282, else_bb_44(D)->end
.L373:
	.loc 1 1761 0
	movq	-16(%rbp), %rax	# if_info.cond_earliest, D.14282
	movq	16(%rax), %rdx	# _118->fld[1].rtx, D.14282
	movq	-176(%rbp), %rcx	# insn_b, tmp226
	movq	-176(%rbp), %rax	# insn_b, tmp227
	movq	%rcx, %rsi	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	reorder_insns	#
	.loc 1 1765 0
	movq	-176(%rbp), %rax	# insn_b, tmp228
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp228,
	call	find_reg_note	#
	movq	%rax, -88(%rbp)	# tmp229, note
	cmpq	$0, -88(%rbp)	#, note
	je	.L374	#,
	.loc 1 1766 0
	movq	-88(%rbp), %rdx	# note, tmp230
	movq	-176(%rbp), %rax	# insn_b, tmp231
	movq	%rdx, %rsi	# tmp230,
	movq	%rax, %rdi	# tmp231,
	call	remove_note	#
.L374:
	.loc 1 1768 0
	movq	$0, -176(%rbp)	#, insn_b
.LBE13:
	.loc 1 1756 0
	jmp	.L375	#
.L372:
	.loc 1 1772 0
	cmpq	$0, -176(%rbp)	#, insn_b
	je	.L375	#,
	.loc 1 1772 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# orig_x, tmp232
	movq	%rax, %rdi	# tmp232,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14281
	je	.L375	#,
	.loc 1 1773 0 is_stmt 1
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L375:
	.loc 1 1775 0
	movq	-96(%rbp), %rax	# orig_x, tmp233
	movq	%rax, -160(%rbp)	# tmp233, x
	.loc 1 1776 0
	jmp	.L376	#
.L371:
	.loc 1 1779 0
	leaq	-80(%rbp), %rax	#, tmp234
	movq	%rax, %rdi	# tmp234,
	call	noce_try_store_flag	#
	testl	%eax, %eax	# D.14281
	je	.L377	#,
	.loc 1 1780 0
	jmp	.L376	#
.L377:
	.loc 1 1781 0
	leaq	-80(%rbp), %rax	#, tmp235
	movq	%rax, %rdi	# tmp235,
	call	noce_try_minmax	#
	testl	%eax, %eax	# D.14281
	je	.L378	#,
	.loc 1 1782 0
	jmp	.L376	#
.L378:
	.loc 1 1783 0
	leaq	-80(%rbp), %rax	#, tmp236
	movq	%rax, %rdi	# tmp236,
	call	noce_try_abs	#
	testl	%eax, %eax	# D.14281
	je	.L379	#,
	.loc 1 1784 0
	jmp	.L376	#
.L379:
	.loc 1 1786 0
	leaq	-80(%rbp), %rax	#, tmp237
	movq	%rax, %rdi	# tmp237,
	call	noce_try_cmove	#
	.loc 1 1785 0
	testl	%eax, %eax	# D.14281
	je	.L380	#,
	.loc 1 1787 0
	jmp	.L376	#
.L380:
	.loc 1 1790 0
	leaq	-80(%rbp), %rax	#, tmp238
	movq	%rax, %rdi	# tmp238,
	call	noce_try_store_flag_constants	#
	testl	%eax, %eax	# D.14281
	je	.L381	#,
	.loc 1 1791 0
	jmp	.L376	#
.L381:
	.loc 1 1792 0
	leaq	-80(%rbp), %rax	#, tmp239
	movq	%rax, %rdi	# tmp239,
	call	noce_try_store_flag_inc	#
	testl	%eax, %eax	# D.14281
	je	.L382	#,
	.loc 1 1793 0
	jmp	.L376	#
.L382:
	.loc 1 1794 0
	leaq	-80(%rbp), %rax	#, tmp240
	movq	%rax, %rdi	# tmp240,
	call	noce_try_store_flag_mask	#
	testl	%eax, %eax	# D.14281
	je	.L383	#,
	.loc 1 1795 0
	jmp	.L376	#
.L383:
	.loc 1 1797 0
	leaq	-80(%rbp), %rax	#, tmp241
	movq	%rax, %rdi	# tmp241,
	call	noce_try_cmove_arith	#
	.loc 1 1796 0
	testl	%eax, %eax	# D.14281
	je	.L384	#,
	.loc 1 1798 0
	jmp	.L376	#
.L384:
	.loc 1 1801 0
	movl	$0, %eax	#, D.14281
	jmp	.L387	#
.L376:
	.loc 1 1805 0
	movq	-128(%rbp), %rax	# insn_a, tmp242
	movq	%rax, %rdi	# tmp242,
	call	delete_insn	#
	.loc 1 1813 0
	cmpq	$0, -176(%rbp)	#, insn_b
	je	.L385	#,
	.loc 1 1813 0 is_stmt 0 discriminator 1
	cmpq	$0, -200(%rbp)	#, else_bb
	je	.L385	#,
	.loc 1 1814 0 is_stmt 1
	movq	-176(%rbp), %rax	# insn_b, tmp243
	movq	%rax, %rdi	# tmp243,
	call	delete_insn	#
.L385:
	.loc 1 1819 0
	movq	-144(%rbp), %rax	# jump, tmp244
	movq	%rax, %rdi	# tmp244,
	call	delete_insn	#
	.loc 1 1822 0
	movq	-96(%rbp), %rax	# orig_x, tmp245
	cmpq	-160(%rbp), %rax	# x, tmp245
	je	.L386	#,
	.loc 1 1824 0
	call	start_sequence	#
	.loc 1 1825 0
	movq	-96(%rbp), %rax	# orig_x, tmp246
	movq	%rax, %rdi	# tmp246,
	call	copy_rtx	#
	movq	-160(%rbp), %rdx	# x, tmp247
	movq	%rdx, %rsi	# tmp247,
	movq	%rax, %rdi	# D.14282,
	call	noce_emit_move_insn	#
	.loc 1 1826 0
	call	gen_sequence	#
	movq	%rax, -176(%rbp)	# tmp248, insn_b
	.loc 1 1827 0
	call	end_sequence	#
	.loc 1 1829 0
	movq	-184(%rbp), %rax	# test_bb, tmp249
	movq	8(%rax), %rdx	# test_bb_18(D)->end, D.14282
	movq	-176(%rbp), %rax	# insn_b, tmp250
	movq	%rdx, %rsi	# D.14282,
	movq	%rax, %rdi	# tmp250,
	call	emit_insn_after	#
.L386:
	.loc 1 1833 0
	movq	-208(%rbp), %rcx	# join_bb, tmp251
	movq	-200(%rbp), %rdx	# else_bb, tmp252
	movq	-192(%rbp), %rsi	# then_bb, tmp253
	movq	-184(%rbp), %rax	# test_bb, tmp254
	movq	%rax, %rdi	# tmp254,
	call	merge_if_block	#
	.loc 1 1835 0
	movl	$1, %eax	#, D.14281
.L387:
	.loc 1 1836 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	noce_process_if_block, .-noce_process_if_block
	.type	process_if_block, @function
process_if_block:
.LFB24:
	.loc 1 1847 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# test_bb, test_bb
	movq	%rsi, -16(%rbp)	# then_bb, then_bb
	movq	%rdx, -24(%rbp)	# else_bb, else_bb
	movq	%rcx, -32(%rbp)	# join_bb, join_bb
	.loc 1 1848 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.64
	testl	%eax, %eax	# reload_completed.64
	jne	.L389	#,
	.loc 1 1849 0
	movq	-32(%rbp), %rcx	# join_bb, tmp63
	movq	-24(%rbp), %rdx	# else_bb, tmp64
	movq	-16(%rbp), %rsi	# then_bb, tmp65
	movq	-8(%rbp), %rax	# test_bb, tmp66
	movq	%rax, %rdi	# tmp66,
	call	noce_process_if_block	#
	testl	%eax, %eax	# D.14288
	je	.L389	#,
	.loc 1 1850 0
	movl	$1, %eax	#, D.14288
	jmp	.L390	#
.L389:
	.loc 1 1857 0
	movl	$0, %eax	#, D.14288
.L390:
	.loc 1 1858 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	process_if_block, .-process_if_block
	.type	merge_if_block, @function
merge_if_block:
.LFB25:
	.loc 1 1868 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# test_bb, test_bb
	movq	%rsi, -32(%rbp)	# then_bb, then_bb
	movq	%rdx, -40(%rbp)	# else_bb, else_bb
	movq	%rcx, -48(%rbp)	# join_bb, join_bb
	.loc 1 1873 0
	movq	-24(%rbp), %rax	# test_bb, tmp103
	movq	%rax, -16(%rbp)	# tmp103, combo_bb
	.loc 1 1877 0
	cmpq	$0, -32(%rbp)	#, then_bb
	je	.L392	#,
	.loc 1 1879 0
	movzbl	life_data_ok(%rip), %eax	# life_data_ok, life_data_ok.65
	testb	%al, %al	# life_data_ok.65
	je	.L393	#,
	.loc 1 1880 0
	movq	-32(%rbp), %rax	# then_bb, tmp104
	movq	72(%rax), %rdx	# then_bb_3(D)->global_live_at_end, D.14289
	movq	-16(%rbp), %rax	# combo_bb, tmp105
	movq	72(%rax), %rax	# combo_bb_2->global_live_at_end, D.14289
	movq	%rdx, %rsi	# D.14289,
	movq	%rax, %rdi	# D.14289,
	call	bitmap_copy	#
.L393:
	.loc 1 1882 0
	movq	-32(%rbp), %rdx	# then_bb, tmp106
	movq	-16(%rbp), %rax	# combo_bb, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	merge_blocks_nomove	#
	.loc 1 1883 0
	movl	num_removed_blocks(%rip), %eax	# num_removed_blocks, num_removed_blocks.66
	addl	$1, %eax	#, num_removed_blocks.67
	movl	%eax, num_removed_blocks(%rip)	# num_removed_blocks.67, num_removed_blocks
.L392:
	.loc 1 1889 0
	cmpq	$0, -40(%rbp)	#, else_bb
	je	.L394	#,
	.loc 1 1891 0
	movq	-40(%rbp), %rdx	# else_bb, tmp108
	movq	-16(%rbp), %rax	# combo_bb, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	merge_blocks_nomove	#
	.loc 1 1892 0
	movl	num_removed_blocks(%rip), %eax	# num_removed_blocks, num_removed_blocks.68
	addl	$1, %eax	#, num_removed_blocks.69
	movl	%eax, num_removed_blocks(%rip)	# num_removed_blocks.69, num_removed_blocks
.L394:
	.loc 1 1898 0
	cmpq	$0, -48(%rbp)	#, join_bb
	jne	.L395	#,
.LBB14:
	.loc 1 1900 0
	movq	-16(%rbp), %rax	# combo_bb, tmp110
	movq	8(%rax), %rax	# combo_bb_2->end, tmp111
	movq	%rax, -8(%rbp)	# tmp111, last
	.loc 1 1904 0
	movq	-16(%rbp), %rax	# combo_bb, tmp112
	movq	40(%rax), %rax	# combo_bb_2->succ, D.14290
	testq	%rax, %rax	# D.14290
	jne	.L396	#,
	.loc 1 1906 0
	movq	-8(%rbp), %rax	# last, tmp113
	movl	$0, %edx	#,
	movl	$26, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	find_reg_note	#
	testq	%rax, %rax	# D.14291
	jne	.L399	#,
	.loc 1 1908 0
	movq	-8(%rbp), %rax	# last, tmp114
	movzwl	(%rax), %eax	# last_13->code, D.14292
	cmpw	$32, %ax	#, D.14292
	jne	.L398	#,
	.loc 1 1909 0
	movq	-8(%rbp), %rax	# last, tmp115
	movq	32(%rax), %rax	# last_13->fld[3].rtx, D.14291
	movzwl	(%rax), %eax	# _17->code, D.14292
	cmpw	$52, %ax	#, D.14292
	jne	.L398	#,
	.loc 1 1910 0
	movq	-8(%rbp), %rax	# last, tmp116
	movq	32(%rax), %rax	# last_13->fld[3].rtx, D.14291
	movq	8(%rax), %rdx	# _19->fld[0].rtx, D.14291
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, const_true_rtx.70
	cmpq	%rax, %rdx	# const_true_rtx.70, D.14291
	jne	.L398	#,
	.loc 1 1910 0 is_stmt 0 discriminator 1
	nop
	jmp	.L399	#
.L398:
	.loc 1 1913 0 is_stmt 1
	movl	$__FUNCTION__.11658, %edx	#,
	movl	$1913, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L396:
	.loc 1 1918 0
	movq	-8(%rbp), %rax	# last, tmp117
	movzwl	(%rax), %eax	# last_13->code, D.14292
	cmpw	$33, %ax	#, D.14292
	je	.L399	#,
	.loc 1 1920 0
	movq	-16(%rbp), %rax	# combo_bb, tmp118
	movq	40(%rax), %rax	# combo_bb_2->succ, D.14290
	movq	24(%rax), %rax	# _23->dest, D.14293
	cmpq	$entry_exit_blocks+112, %rax	#, D.14293
	jne	.L400	#,
	.loc 1 1921 0
	movq	-8(%rbp), %rax	# last, tmp119
	movzwl	(%rax), %eax	# last_13->code, D.14292
	cmpw	$34, %ax	#, D.14292
	jne	.L400	#,
	.loc 1 1922 0
	movq	-8(%rbp), %rax	# last, tmp120
	movzbl	3(%rax), %eax	# *last_13, D.14294
	andl	$1, %eax	#, D.14294
	testb	%al, %al	# D.14294
	je	.L400	#,
	.loc 1 1922 0 is_stmt 0 discriminator 1
	jmp	.L399	#
.L400:
	.loc 1 1924 0 is_stmt 1
	movq	-16(%rbp), %rax	# combo_bb, tmp121
	movq	40(%rax), %rax	# combo_bb_2->succ, D.14290
	movl	48(%rax), %eax	# _28->flags, D.14295
	andl	$8, %eax	#, D.14295
	testl	%eax, %eax	# D.14295
	je	.L401	#,
	.loc 1 1925 0
	movq	-8(%rbp), %rax	# last, tmp122
	movq	%rax, %rdi	# tmp122,
	call	can_throw_internal	#
	testb	%al, %al	# D.14296
	je	.L401	#,
	.loc 1 1925 0 is_stmt 0 discriminator 1
	jmp	.L399	#
.L401:
	.loc 1 1928 0 is_stmt 1
	movl	$__FUNCTION__.11658, %edx	#,
	movl	$1928, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L399:
.LBE14:
	jmp	.L402	#
.L395:
	.loc 1 1937 0
	movq	-48(%rbp), %rax	# join_bb, tmp123
	movq	32(%rax), %rax	# join_bb_12(D)->pred, D.14290
	testq	%rax, %rax	# D.14290
	je	.L403	#,
	.loc 1 1938 0
	movq	-48(%rbp), %rax	# join_bb, tmp124
	movq	32(%rax), %rax	# join_bb_12(D)->pred, D.14290
	movq	(%rax), %rax	# _33->pred_next, D.14290
	testq	%rax, %rax	# D.14290
	jne	.L404	#,
.L403:
	.loc 1 1939 0
	cmpq	$entry_exit_blocks+112, -48(%rbp)	#, join_bb
	je	.L404	#,
	.loc 1 1942 0
	movzbl	life_data_ok(%rip), %eax	# life_data_ok, life_data_ok.71
	testb	%al, %al	# life_data_ok.71
	je	.L405	#,
	.loc 1 1943 0
	movq	-48(%rbp), %rax	# join_bb, tmp125
	movq	72(%rax), %rdx	# join_bb_12(D)->global_live_at_end, D.14289
	movq	-16(%rbp), %rax	# combo_bb, tmp126
	movq	72(%rax), %rax	# combo_bb_2->global_live_at_end, D.14289
	movq	%rdx, %rsi	# D.14289,
	movq	%rax, %rdi	# D.14289,
	call	bitmap_copy	#
.L405:
	.loc 1 1945 0
	movq	-48(%rbp), %rdx	# join_bb, tmp127
	movq	-16(%rbp), %rax	# combo_bb, tmp128
	movq	%rdx, %rsi	# tmp127,
	movq	%rax, %rdi	# tmp128,
	call	merge_blocks_nomove	#
	.loc 1 1946 0
	movl	num_removed_blocks(%rip), %eax	# num_removed_blocks, num_removed_blocks.72
	addl	$1, %eax	#, num_removed_blocks.73
	movl	%eax, num_removed_blocks(%rip)	# num_removed_blocks.73, num_removed_blocks
	jmp	.L402	#
.L404:
	.loc 1 1954 0
	movq	-16(%rbp), %rax	# combo_bb, tmp129
	movq	40(%rax), %rax	# combo_bb_2->succ, D.14290
	movq	8(%rax), %rax	# _40->succ_next, D.14290
	testq	%rax, %rax	# D.14290
	jne	.L406	#,
	.loc 1 1955 0
	movq	-16(%rbp), %rax	# combo_bb, tmp130
	movq	40(%rax), %rax	# combo_bb_2->succ, D.14290
	movq	24(%rax), %rax	# _42->dest, D.14293
	cmpq	-48(%rbp), %rax	# join_bb, D.14293
	je	.L407	#,
.L406:
	.loc 1 1956 0
	movl	$__FUNCTION__.11658, %edx	#,
	movl	$1956, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L407:
	.loc 1 1959 0
	cmpq	$entry_exit_blocks+112, -48(%rbp)	#, join_bb
	je	.L402	#,
	.loc 1 1960 0
	movq	-16(%rbp), %rax	# combo_bb, tmp131
	movq	40(%rax), %rax	# combo_bb_2->succ, D.14290
	movq	-48(%rbp), %rdx	# join_bb, tmp132
	movq	-16(%rbp), %rcx	# combo_bb, tmp133
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# D.14290,
	call	tidy_fallthru_edge	#
.L402:
	.loc 1 1964 0
	movq	-16(%rbp), %rax	# combo_bb, tmp134
	movq	80(%rax), %rax	# combo_bb_2->aux, D.14297
	orq	$1, %rax	#, D.14298
	movq	%rax, %rdx	# D.14298, D.14297
	movq	-16(%rbp), %rax	# combo_bb, tmp135
	movq	%rdx, 80(%rax)	# D.14297, combo_bb_2->aux
	.loc 1 1966 0
	movl	num_updated_if_blocks(%rip), %eax	# num_updated_if_blocks, num_updated_if_blocks.74
	addl	$1, %eax	#, num_updated_if_blocks.75
	movl	%eax, num_updated_if_blocks(%rip)	# num_updated_if_blocks.75, num_updated_if_blocks
	.loc 1 1967 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	merge_if_block, .-merge_if_block
	.section	.rodata
.LC4:
	.string	"Conversion succeeded.\n"
	.text
	.type	find_if_header, @function
find_if_header:
.LFB26:
	.loc 1 1975 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# test_bb, test_bb
	.loc 1 1980 0
	movq	-40(%rbp), %rax	# test_bb, tmp77
	movq	40(%rax), %rax	# test_bb_4(D)->succ, tmp78
	movq	%rax, -24(%rbp)	# tmp78, then_edge
	cmpq	$0, -24(%rbp)	#, then_edge
	je	.L409	#,
	.loc 1 1981 0
	movq	-24(%rbp), %rax	# then_edge, tmp79
	movq	8(%rax), %rax	# then_edge_5->succ_next, tmp80
	movq	%rax, -16(%rbp)	# tmp80, else_edge
	cmpq	$0, -16(%rbp)	#, else_edge
	je	.L409	#,
	.loc 1 1982 0
	movq	-16(%rbp), %rax	# else_edge, tmp81
	movq	8(%rax), %rax	# else_edge_6->succ_next, D.14300
	testq	%rax, %rax	# D.14300
	je	.L410	#,
.L409:
	.loc 1 1983 0
	movl	$0, %eax	#, D.14299
	jmp	.L411	#
.L410:
	.loc 1 1986 0
	movq	-24(%rbp), %rax	# then_edge, tmp82
	movl	48(%rax), %eax	# then_edge_5->flags, D.14299
	andl	$14, %eax	#, D.14299
	testl	%eax, %eax	# D.14299
	jne	.L412	#,
	.loc 1 1987 0
	movq	-16(%rbp), %rax	# else_edge, tmp83
	movl	48(%rax), %eax	# else_edge_6->flags, D.14299
	andl	$14, %eax	#, D.14299
	testl	%eax, %eax	# D.14299
	je	.L413	#,
.L412:
	.loc 1 1988 0
	movl	$0, %eax	#, D.14299
	jmp	.L411	#
.L413:
	.loc 1 1991 0
	movq	-24(%rbp), %rax	# then_edge, tmp84
	movl	48(%rax), %eax	# then_edge_5->flags, D.14299
	andl	$1, %eax	#, D.14299
	testl	%eax, %eax	# D.14299
	jne	.L414	#,
	.loc 1 1993 0
	movq	-16(%rbp), %rax	# else_edge, tmp85
	movl	48(%rax), %eax	# else_edge_6->flags, D.14299
	andl	$1, %eax	#, D.14299
	testl	%eax, %eax	# D.14299
	je	.L415	#,
.LBB15:
	.loc 1 1995 0
	movq	-16(%rbp), %rax	# else_edge, tmp86
	movq	%rax, -8(%rbp)	# tmp86, e
	.loc 1 1996 0
	movq	-24(%rbp), %rax	# then_edge, tmp87
	movq	%rax, -16(%rbp)	# tmp87, else_edge
	.loc 1 1997 0
	movq	-8(%rbp), %rax	# e, tmp88
	movq	%rax, -24(%rbp)	# tmp88, then_edge
.LBE15:
	jmp	.L414	#
.L415:
	.loc 1 2001 0
	movl	$0, %eax	#, D.14299
	jmp	.L411	#
.L414:
	.loc 1 2003 0
	movq	-16(%rbp), %rdx	# else_edge, tmp89
	movq	-24(%rbp), %rcx	# then_edge, tmp90
	movq	-40(%rbp), %rax	# test_bb, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	find_if_block	#
	testl	%eax, %eax	# D.14299
	je	.L416	#,
	.loc 1 2004 0
	jmp	.L417	#
.L416:
	.loc 1 2006 0
	movq	-16(%rbp), %rdx	# else_edge, tmp92
	movq	-24(%rbp), %rcx	# then_edge, tmp93
	movq	-40(%rbp), %rax	# test_bb, tmp94
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	find_cond_trap	#
	.loc 1 2005 0
	testl	%eax, %eax	# D.14299
	je	.L418	#,
	.loc 1 2007 0
	jmp	.L417	#
.L418:
	.loc 1 2009 0
	movq	post_dominators(%rip), %rax	# post_dominators, post_dominators.76
	.loc 1 2008 0
	testq	%rax, %rax	# post_dominators.76
	je	.L419	#,
	.loc 1 2011 0
	movq	-16(%rbp), %rdx	# else_edge, tmp95
	movq	-24(%rbp), %rcx	# then_edge, tmp96
	movq	-40(%rbp), %rax	# test_bb, tmp97
	movq	%rcx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	find_if_case_1	#
	testl	%eax, %eax	# D.14299
	je	.L420	#,
	.loc 1 2012 0
	jmp	.L417	#
.L420:
	.loc 1 2013 0
	movq	-16(%rbp), %rdx	# else_edge, tmp98
	movq	-24(%rbp), %rcx	# then_edge, tmp99
	movq	-40(%rbp), %rax	# test_bb, tmp100
	movq	%rcx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	find_if_case_2	#
	testl	%eax, %eax	# D.14299
	je	.L419	#,
	.loc 1 2014 0
	jmp	.L417	#
.L419:
	.loc 1 2017 0
	movl	$0, %eax	#, D.14299
	jmp	.L411	#
.L417:
	.loc 1 2020 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.77
	testq	%rax, %rax	# rtl_dump_file.77
	je	.L421	#,
	.loc 1 2021 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.78
	movq	%rax, %rcx	# rtl_dump_file.78,
	movl	$22, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
.L421:
	.loc 1 2022 0
	movl	$1, %eax	#, D.14299
.L411:
	.loc 1 2023 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	find_if_header, .-find_if_header
	.section	.rodata
	.align 8
.LC5:
	.string	"\nIF-THEN-ELSE block found, start %d, then %d, else %d, join %d\n"
	.align 8
.LC6:
	.string	"\nIF-THEN block found, start %d, then %d, join %d\n"
	.text
	.type	find_if_block, @function
find_if_block:
.LFB27:
	.loc 1 2033 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# test_bb, test_bb
	movq	%rsi, -80(%rbp)	# then_edge, then_edge
	movq	%rdx, -88(%rbp)	# else_edge, else_edge
	.loc 1 2034 0
	movq	-80(%rbp), %rax	# then_edge, tmp95
	movq	24(%rax), %rax	# then_edge_7(D)->dest, tmp96
	movq	%rax, -24(%rbp)	# tmp96, then_bb
	.loc 1 2035 0
	movq	-88(%rbp), %rax	# else_edge, tmp97
	movq	24(%rax), %rax	# else_edge_9(D)->dest, tmp98
	movq	%rax, -48(%rbp)	# tmp98, else_bb
	.loc 1 2036 0
	movq	$0, -40(%rbp)	#, join_bb
	.loc 1 2037 0
	movq	-24(%rbp), %rax	# then_bb, tmp99
	movq	40(%rax), %rax	# then_bb_8->succ, tmp100
	movq	%rax, -16(%rbp)	# tmp100, then_succ
	.loc 1 2038 0
	movq	-48(%rbp), %rax	# else_bb, tmp101
	movq	40(%rax), %rax	# else_bb_10->succ, tmp102
	movq	%rax, -8(%rbp)	# tmp102, else_succ
	.loc 1 2042 0
	movq	-24(%rbp), %rax	# then_bb, tmp103
	movq	32(%rax), %rax	# then_bb_8->pred, D.14303
	movq	(%rax), %rax	# _14->pred_next, D.14303
	testq	%rax, %rax	# D.14303
	je	.L423	#,
	.loc 1 2043 0
	movl	$0, %eax	#, D.14302
	jmp	.L424	#
.L423:
	.loc 1 2046 0
	cmpq	$0, -16(%rbp)	#, then_succ
	je	.L425	#,
	.loc 1 2047 0
	movq	-16(%rbp), %rax	# then_succ, tmp104
	movq	8(%rax), %rax	# then_succ_12->succ_next, D.14303
	testq	%rax, %rax	# D.14303
	jne	.L426	#,
	.loc 1 2048 0
	movq	-16(%rbp), %rax	# then_succ, tmp105
	movl	48(%rax), %eax	# then_succ_12->flags, D.14302
	andl	$14, %eax	#, D.14302
	testl	%eax, %eax	# D.14302
	je	.L425	#,
.L426:
	.loc 1 2049 0
	movl	$0, %eax	#, D.14302
	jmp	.L424	#
.L425:
	.loc 1 2057 0
	cmpq	$0, -16(%rbp)	#, then_succ
	jne	.L427	#,
	.loc 1 2059 0
	movq	-48(%rbp), %rax	# else_bb, tmp106
	movq	32(%rax), %rax	# else_bb_10->pred, D.14303
	movq	(%rax), %rax	# _21->pred_next, D.14303
	testq	%rax, %rax	# D.14303
	jne	.L428	#,
.LBB16:
	.loc 1 2061 0
	movq	-24(%rbp), %rax	# then_bb, tmp107
	movq	8(%rax), %rax	# then_bb_8->end, tmp108
	movq	%rax, -32(%rbp)	# tmp108, last_insn
	.loc 1 2063 0
	jmp	.L429	#
.L431:
	.loc 1 2066 0
	movq	-32(%rbp), %rax	# last_insn, tmp109
	movq	16(%rax), %rax	# last_insn_5->fld[1].rtx, tmp110
	movq	%rax, -32(%rbp)	# tmp110, last_insn
.L429:
	.loc 1 2063 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, last_insn
	je	.L430	#,
	.loc 1 2064 0
	movq	-32(%rbp), %rax	# last_insn, tmp111
	movzwl	(%rax), %eax	# last_insn_5->code, D.14304
	cmpw	$37, %ax	#, D.14304
	jne	.L430	#,
	.loc 1 2065 0
	movq	-24(%rbp), %rax	# then_bb, tmp112
	movq	(%rax), %rax	# then_bb_8->head, D.14305
	cmpq	-32(%rbp), %rax	# last_insn, D.14305
	jne	.L431	#,
.L430:
	.loc 1 2068 0
	cmpq	$0, -32(%rbp)	#, last_insn
	je	.L432	#,
	.loc 1 2069 0
	movq	-32(%rbp), %rax	# last_insn, tmp113
	movzwl	(%rax), %eax	# last_insn_5->code, D.14304
	cmpw	$33, %ax	#, D.14304
	jne	.L432	#,
	.loc 1 2070 0
	movq	-32(%rbp), %rax	# last_insn, tmp114
	movq	%rax, %rdi	# tmp114,
	call	simplejump_p	#
	testl	%eax, %eax	# D.14302
	jne	.L432	#,
	.loc 1 2071 0
	movl	$0, %eax	#, D.14302
	jmp	.L424	#
.L432:
	.loc 1 2073 0
	movq	-48(%rbp), %rax	# else_bb, tmp115
	movq	%rax, -40(%rbp)	# tmp115, join_bb
	.loc 1 2074 0
	movq	$0, -48(%rbp)	#, else_bb
.LBE16:
	jmp	.L433	#
.L428:
	.loc 1 2077 0
	movl	$0, %eax	#, D.14302
	jmp	.L424	#
.L427:
	.loc 1 2082 0
	movq	-16(%rbp), %rax	# then_succ, tmp116
	movq	24(%rax), %rax	# then_succ_12->dest, D.14306
	cmpq	-48(%rbp), %rax	# else_bb, D.14306
	jne	.L434	#,
	.loc 1 2084 0
	movq	-48(%rbp), %rax	# else_bb, tmp117
	movq	%rax, -40(%rbp)	# tmp117, join_bb
	.loc 1 2085 0
	movq	$0, -48(%rbp)	#, else_bb
	jmp	.L433	#
.L434:
	.loc 1 2091 0
	cmpq	$0, -8(%rbp)	#, else_succ
	je	.L435	#,
	.loc 1 2092 0
	movq	-16(%rbp), %rax	# then_succ, tmp118
	movq	24(%rax), %rdx	# then_succ_12->dest, D.14306
	movq	-8(%rbp), %rax	# else_succ, tmp119
	movq	24(%rax), %rax	# else_succ_13->dest, D.14306
	cmpq	%rax, %rdx	# D.14306, D.14306
	jne	.L435	#,
	.loc 1 2093 0
	movq	-48(%rbp), %rax	# else_bb, tmp120
	movq	32(%rax), %rax	# else_bb_10->pred, D.14303
	movq	(%rax), %rax	# _38->pred_next, D.14303
	testq	%rax, %rax	# D.14303
	jne	.L435	#,
	.loc 1 2094 0
	movq	-8(%rbp), %rax	# else_succ, tmp121
	movq	8(%rax), %rax	# else_succ_13->succ_next, D.14303
	testq	%rax, %rax	# D.14303
	jne	.L435	#,
	.loc 1 2095 0
	movq	-8(%rbp), %rax	# else_succ, tmp122
	movl	48(%rax), %eax	# else_succ_13->flags, D.14302
	andl	$14, %eax	#, D.14302
	testl	%eax, %eax	# D.14302
	jne	.L435	#,
	.loc 1 2096 0
	movq	-8(%rbp), %rax	# else_succ, tmp123
	movq	24(%rax), %rax	# else_succ_13->dest, tmp124
	movq	%rax, -40(%rbp)	# tmp124, join_bb
	jmp	.L433	#
.L435:
	.loc 1 2100 0
	movl	$0, %eax	#, D.14302
	jmp	.L424	#
.L433:
	.loc 1 2102 0
	movl	num_possible_if_blocks(%rip), %eax	# num_possible_if_blocks, num_possible_if_blocks.79
	addl	$1, %eax	#, num_possible_if_blocks.80
	movl	%eax, num_possible_if_blocks(%rip)	# num_possible_if_blocks.80, num_possible_if_blocks
	.loc 1 2104 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.81
	testq	%rax, %rax	# rtl_dump_file.81
	je	.L436	#,
	.loc 1 2106 0
	cmpq	$0, -48(%rbp)	#, else_bb
	je	.L437	#,
	.loc 1 2107 0
	movq	-40(%rbp), %rax	# join_bb, tmp125
	movl	88(%rax), %edi	# join_bb_2->index, D.14302
	movq	-48(%rbp), %rax	# else_bb, tmp126
	movl	88(%rax), %esi	# else_bb_1->index, D.14302
	movq	-24(%rbp), %rax	# then_bb, tmp127
	movl	88(%rax), %ecx	# then_bb_8->index, D.14302
	movq	-72(%rbp), %rax	# test_bb, tmp128
	movl	88(%rax), %edx	# test_bb_51(D)->index, D.14302
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.82
	movl	%edi, %r9d	# D.14302,
	movl	%esi, %r8d	# D.14302,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.82,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L436	#
.L437:
	.loc 1 2112 0
	movq	-40(%rbp), %rax	# join_bb, tmp129
	movl	88(%rax), %esi	# join_bb_2->index, D.14302
	movq	-24(%rbp), %rax	# then_bb, tmp130
	movl	88(%rax), %ecx	# then_bb_8->index, D.14302
	movq	-72(%rbp), %rax	# test_bb, tmp131
	movl	88(%rax), %edx	# test_bb_51(D)->index, D.14302
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.83
	movl	%esi, %r8d	# D.14302,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.83,
	movl	$0, %eax	#,
	call	fprintf	#
.L436:
	.loc 1 2123 0
	movq	-24(%rbp), %rax	# then_bb, tmp132
	movl	88(%rax), %eax	# then_bb_8->index, tmp133
	movl	%eax, -52(%rbp)	# tmp133, next_index
	.loc 1 2124 0
	cmpq	$0, -48(%rbp)	#, else_bb
	je	.L438	#,
	.loc 1 2124 0 is_stmt 0 discriminator 1
	addl	$1, -52(%rbp)	#, next_index
	movq	-48(%rbp), %rax	# else_bb, tmp134
	movl	88(%rax), %eax	# else_bb_1->index, D.14302
	cmpl	%eax, -52(%rbp)	# D.14302, next_index
	je	.L438	#,
	.loc 1 2125 0 is_stmt 1
	movl	$0, %eax	#, D.14302
	jmp	.L424	#
.L438:
	.loc 1 2126 0
	addl	$1, -52(%rbp)	#, next_index
	movq	-40(%rbp), %rax	# join_bb, tmp135
	movl	88(%rax), %eax	# join_bb_2->index, D.14302
	cmpl	%eax, -52(%rbp)	# D.14302, next_index
	je	.L439	#,
	.loc 1 2126 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# join_bb, tmp136
	movl	88(%rax), %eax	# join_bb_2->index, D.14302
	cmpl	$-2, %eax	#, D.14302
	je	.L439	#,
	.loc 1 2128 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, else_bb
	je	.L440	#,
	.loc 1 2129 0
	movq	$0, -40(%rbp)	#, join_bb
	jmp	.L439	#
.L440:
	.loc 1 2131 0
	movl	$0, %eax	#, D.14302
	jmp	.L424	#
.L439:
	.loc 1 2135 0
	movq	-40(%rbp), %rcx	# join_bb, tmp137
	movq	-48(%rbp), %rdx	# else_bb, tmp138
	movq	-24(%rbp), %rsi	# then_bb, tmp139
	movq	-72(%rbp), %rax	# test_bb, tmp140
	movq	%rax, %rdi	# tmp140,
	call	process_if_block	#
.L424:
	.loc 1 2136 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	find_if_block, .-find_if_block
	.section	.rodata
	.align 8
.LC7:
	.string	"\nTRAP-IF block found, start %d, trap %d\n"
	.text
	.type	find_cond_trap, @function
find_cond_trap:
.LFB28:
	.loc 1 2145 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# test_bb, test_bb
	movq	%rsi, -112(%rbp)	# then_edge, then_edge
	movq	%rdx, -120(%rbp)	# else_edge, else_edge
	.loc 1 2150 0
	movq	-112(%rbp), %rax	# then_edge, tmp84
	movq	24(%rax), %rax	# then_edge_7(D)->dest, tmp85
	movq	%rax, -56(%rbp)	# tmp85, then_bb
	.loc 1 2151 0
	movq	-120(%rbp), %rax	# else_edge, tmp86
	movq	24(%rax), %rax	# else_edge_9(D)->dest, tmp87
	movq	%rax, -48(%rbp)	# tmp87, else_bb
	.loc 1 2156 0
	movq	-56(%rbp), %rax	# then_bb, tmp88
	movq	%rax, %rdi	# tmp88,
	call	block_has_only_trap	#
	movq	%rax, -64(%rbp)	# tmp89, trap
	cmpq	$0, -64(%rbp)	#, trap
	je	.L442	#,
	.loc 1 2157 0
	movq	-56(%rbp), %rax	# then_bb, tmp90
	movq	%rax, -80(%rbp)	# tmp90, trap_bb
	movq	-48(%rbp), %rax	# else_bb, tmp91
	movq	%rax, -72(%rbp)	# tmp91, other_bb
	jmp	.L443	#
.L442:
	.loc 1 2158 0
	movq	-48(%rbp), %rax	# else_bb, tmp92
	movq	%rax, %rdi	# tmp92,
	call	block_has_only_trap	#
	movq	%rax, -64(%rbp)	# tmp93, trap
	cmpq	$0, -64(%rbp)	#, trap
	je	.L444	#,
	.loc 1 2159 0
	movq	-48(%rbp), %rax	# else_bb, tmp94
	movq	%rax, -80(%rbp)	# tmp94, trap_bb
	movq	-56(%rbp), %rax	# then_bb, tmp95
	movq	%rax, -72(%rbp)	# tmp95, other_bb
	jmp	.L443	#
.L444:
	.loc 1 2161 0
	movl	$0, %eax	#, D.14309
	jmp	.L457	#
.L443:
	.loc 1 2163 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.84
	testq	%rax, %rax	# rtl_dump_file.84
	je	.L446	#,
	.loc 1 2165 0
	movq	-80(%rbp), %rax	# trap_bb, tmp96
	movl	88(%rax), %ecx	# trap_bb_1->index, D.14309
	movq	-104(%rbp), %rax	# test_bb, tmp97
	movl	88(%rax), %edx	# test_bb_20(D)->index, D.14309
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.85
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.85,
	movl	$0, %eax	#,
	call	fprintf	#
.L446:
	.loc 1 2170 0
	movq	-104(%rbp), %rax	# test_bb, tmp98
	movq	8(%rax), %rax	# test_bb_20(D)->end, tmp99
	movq	%rax, -40(%rbp)	# tmp99, jump
	.loc 1 2171 0
	leaq	-88(%rbp), %rdx	#, tmp100
	movq	-40(%rbp), %rax	# jump, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	noce_get_condition	#
	movq	%rax, -32(%rbp)	# tmp102, cond
	.loc 1 2172 0
	cmpq	$0, -32(%rbp)	#, cond
	jne	.L447	#,
	.loc 1 2173 0
	movl	$0, %eax	#, D.14309
	jmp	.L457	#
.L447:
	.loc 1 2177 0
	movq	-40(%rbp), %rax	# jump, tmp103
	movq	%rax, %rdi	# tmp103,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.14309
	jne	.L448	#,
	.loc 1 2178 0
	movl	$0, %eax	#, D.14309
	jmp	.L457	#
.L448:
	.loc 1 2181 0
	movq	-32(%rbp), %rax	# cond, tmp104
	movq	8(%rax), %rax	# cond_24->fld[0].rtx, D.14310
	movzbl	2(%rax), %eax	# _28->mode, D.14311
	cmpb	$51, %al	#, D.14311
	jne	.L449	#,
	.loc 1 2182 0
	movl	$0, %eax	#, D.14309
	jmp	.L457	#
.L449:
	.loc 1 2185 0
	movq	-32(%rbp), %rax	# cond, tmp105
	movzwl	(%rax), %eax	# cond_24->code, D.14312
	movzwl	%ax, %eax	# D.14312, tmp106
	movl	%eax, -92(%rbp)	# tmp106, code
	.loc 1 2186 0
	movq	-56(%rbp), %rax	# then_bb, tmp107
	cmpq	-80(%rbp), %rax	# trap_bb, tmp107
	jne	.L450	#,
	.loc 1 2188 0
	movq	-40(%rbp), %rdx	# jump, tmp108
	movq	-32(%rbp), %rax	# cond, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	reversed_comparison_code	#
	movl	%eax, -92(%rbp)	# tmp110, code
	.loc 1 2189 0
	cmpl	$0, -92(%rbp)	#, code
	jne	.L450	#,
	.loc 1 2190 0
	movl	$0, %eax	#, D.14309
	jmp	.L457	#
.L450:
	.loc 1 2195 0
	movq	-64(%rbp), %rax	# trap, tmp111
	movq	32(%rax), %rax	# trap_3->fld[3].rtx, D.14310
	.loc 1 2194 0
	movq	16(%rax), %rcx	# _35->fld[1].rtx, D.14310
	movq	-32(%rbp), %rax	# cond, tmp112
	movq	16(%rax), %rdx	# cond_24->fld[1].rtx, D.14310
	movq	-32(%rbp), %rax	# cond, tmp113
	movq	8(%rax), %rsi	# cond_24->fld[0].rtx, D.14310
	movl	-92(%rbp), %eax	# code, tmp114
	movl	%eax, %edi	# tmp114,
	call	gen_cond_trap	#
	movq	%rax, -24(%rbp)	# tmp115, seq
	.loc 1 2196 0
	cmpq	$0, -24(%rbp)	#, seq
	jne	.L451	#,
	.loc 1 2197 0
	movl	$0, %eax	#, D.14309
	jmp	.L457	#
.L451:
	.loc 1 2200 0
	movq	-88(%rbp), %rdx	# cond_earliest, cond_earliest.86
	movq	-24(%rbp), %rax	# seq, tmp116
	movq	%rdx, %rsi	# cond_earliest.86,
	movq	%rax, %rdi	# tmp116,
	call	emit_insn_before	#
	.loc 1 2203 0
	movq	-80(%rbp), %rax	# trap_bb, tmp117
	cmpq	-56(%rbp), %rax	# then_bb, tmp117
	jne	.L452	#,
	.loc 1 2203 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# then_edge, iftmp.87
	jmp	.L453	#
.L452:
	.loc 1 2203 0 discriminator 2
	movq	-120(%rbp), %rax	# else_edge, iftmp.87
.L453:
	.loc 1 2203 0 discriminator 3
	movq	%rax, %rdi	# iftmp.87,
	call	remove_edge	#
	.loc 1 2204 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# trap_bb, tmp118
	movq	32(%rax), %rax	# trap_bb_1->pred, D.14313
	testq	%rax, %rax	# D.14313
	jne	.L454	#,
	.loc 1 2206 0
	movq	-80(%rbp), %rax	# trap_bb, tmp119
	movq	%rax, %rdi	# tmp119,
	call	flow_delete_block	#
	.loc 1 2207 0
	movl	num_removed_blocks(%rip), %eax	# num_removed_blocks, num_removed_blocks.88
	addl	$1, %eax	#, num_removed_blocks.89
	movl	%eax, num_removed_blocks(%rip)	# num_removed_blocks.89, num_removed_blocks
.L454:
	.loc 1 2212 0
	movq	-104(%rbp), %rax	# test_bb, tmp120
	movl	88(%rax), %eax	# test_bb_20(D)->index, D.14309
	leal	1(%rax), %edx	#, D.14309
	movq	-72(%rbp), %rax	# other_bb, tmp121
	movl	88(%rax), %eax	# other_bb_2->index, D.14309
	cmpl	%eax, %edx	# D.14309, D.14309
	jne	.L455	#,
	.loc 1 2214 0
	movq	-40(%rbp), %rax	# jump, tmp122
	movq	%rax, %rdi	# tmp122,
	call	delete_insn	#
	.loc 1 2215 0
	movq	-72(%rbp), %rdx	# other_bb, tmp123
	movq	-104(%rbp), %rax	# test_bb, tmp124
	movq	%rdx, %rcx	# tmp123,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	merge_if_block	#
	jmp	.L456	#
.L455:
.LBB17:
	.loc 1 2221 0
	movq	-40(%rbp), %rax	# jump, tmp125
	movq	64(%rax), %rax	# jump_23->fld[7].rtx, tmp126
	movq	%rax, -16(%rbp)	# tmp126, lab
	.loc 1 2222 0
	movq	-16(%rbp), %rax	# lab, tmp127
	movq	%rax, %rdi	# tmp127,
	call	gen_jump	#
	movq	-40(%rbp), %rdx	# jump, tmp128
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# D.14310,
	call	emit_jump_insn_after	#
	movq	%rax, -8(%rbp)	# tmp129, newjump
	.loc 1 2223 0
	movq	-16(%rbp), %rax	# lab, tmp130
	movl	32(%rax), %eax	# lab_50->fld[3].rtint, D.14309
	leal	1(%rax), %edx	#, D.14309
	movq	-16(%rbp), %rax	# lab, tmp131
	movl	%edx, 32(%rax)	# D.14309, lab_50->fld[3].rtint
	.loc 1 2224 0
	movq	-8(%rbp), %rax	# newjump, tmp132
	movq	-16(%rbp), %rdx	# lab, tmp133
	movq	%rdx, 64(%rax)	# tmp133, newjump_52->fld[7].rtx
	.loc 1 2225 0
	movq	-8(%rbp), %rax	# newjump, tmp134
	movq	%rax, %rdi	# tmp134,
	call	emit_barrier_after	#
	.loc 1 2227 0
	movq	-40(%rbp), %rax	# jump, tmp135
	movq	%rax, %rdi	# tmp135,
	call	delete_insn	#
.L456:
.LBE17:
	.loc 1 2230 0
	movl	$1, %eax	#, D.14309
.L457:
	.loc 1 2231 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	find_cond_trap, .-find_cond_trap
	.type	block_has_only_trap, @function
block_has_only_trap:
.LFB29:
	.loc 1 2239 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# bb, bb
	.loc 1 2243 0
	cmpq	$entry_exit_blocks+112, -24(%rbp)	#, bb
	jne	.L459	#,
	.loc 1 2244 0
	movl	$0, %eax	#, D.14315
	jmp	.L460	#
.L459:
	.loc 1 2247 0
	movq	-24(%rbp), %rax	# bb, tmp68
	movq	40(%rax), %rax	# bb_2(D)->succ, D.14316
	testq	%rax, %rax	# D.14316
	je	.L461	#,
	.loc 1 2248 0
	movl	$0, %eax	#, D.14315
	jmp	.L460	#
.L461:
	.loc 1 2251 0
	movq	-24(%rbp), %rax	# bb, tmp69
	movq	%rax, %rdi	# tmp69,
	call	first_active_insn	#
	movq	%rax, -8(%rbp)	# tmp70, trap
	.loc 1 2252 0
	movq	-24(%rbp), %rax	# bb, tmp71
	movq	8(%rax), %rax	# bb_2(D)->end, D.14317
	cmpq	-8(%rbp), %rax	# trap, D.14317
	jne	.L462	#,
	.loc 1 2253 0
	movq	-8(%rbp), %rax	# trap, tmp72
	movq	32(%rax), %rax	# trap_6->fld[3].rtx, D.14317
	movzwl	(%rax), %eax	# _8->code, D.14318
	cmpw	$52, %ax	#, D.14318
	jne	.L462	#,
	.loc 1 2254 0
	movq	-8(%rbp), %rax	# trap, tmp73
	movq	32(%rax), %rax	# trap_6->fld[3].rtx, D.14317
	movq	8(%rax), %rdx	# _10->fld[0].rtx, D.14317
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, const_true_rtx.90
	.loc 1 2252 0
	cmpq	%rax, %rdx	# const_true_rtx.90, D.14317
	je	.L463	#,
.L462:
	.loc 1 2255 0
	movl	$0, %eax	#, D.14315
	jmp	.L460	#
.L463:
	.loc 1 2257 0
	movq	-8(%rbp), %rax	# trap, D.14315
.L460:
	.loc 1 2258 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	block_has_only_trap, .-block_has_only_trap
	.section	.rodata
	.align 8
.LC8:
	.string	"\nIF-CASE-1 found, start %d, then %d\n"
	.text
	.type	find_if_case_1, @function
find_if_case_1:
.LFB30:
	.loc 1 2341 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# test_bb, test_bb
	movq	%rsi, -48(%rbp)	# then_edge, then_edge
	movq	%rdx, -56(%rbp)	# else_edge, else_edge
	.loc 1 2342 0
	movq	-48(%rbp), %rax	# then_edge, tmp99
	movq	24(%rax), %rax	# then_edge_3(D)->dest, tmp100
	movq	%rax, -32(%rbp)	# tmp100, then_bb
	.loc 1 2343 0
	movq	-56(%rbp), %rax	# else_edge, tmp101
	movq	24(%rax), %rax	# else_edge_5(D)->dest, tmp102
	movq	%rax, -24(%rbp)	# tmp102, else_bb
	.loc 1 2344 0
	movq	-32(%rbp), %rax	# then_bb, tmp103
	movq	40(%rax), %rax	# then_bb_4->succ, tmp104
	movq	%rax, -16(%rbp)	# tmp104, then_succ
	.loc 1 2347 0
	cmpq	$0, -16(%rbp)	#, then_succ
	je	.L465	#,
	.loc 1 2347 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# then_succ, tmp105
	movq	8(%rax), %rax	# then_succ_7->succ_next, D.14320
	testq	%rax, %rax	# D.14320
	je	.L466	#,
.L465:
	.loc 1 2348 0 is_stmt 1
	movl	$0, %eax	#, D.14319
	jmp	.L467	#
.L466:
	.loc 1 2351 0
	movq	-16(%rbp), %rax	# then_succ, tmp106
	movl	48(%rax), %eax	# then_succ_7->flags, D.14319
	andl	$15, %eax	#, D.14319
	testl	%eax, %eax	# D.14319
	je	.L468	#,
	.loc 1 2352 0
	movl	$0, %eax	#, D.14319
	jmp	.L467	#
.L468:
	.loc 1 2355 0
	movq	-32(%rbp), %rax	# then_bb, tmp107
	movq	32(%rax), %rax	# then_bb_4->pred, D.14320
	movq	(%rax), %rax	# _12->pred_next, D.14320
	testq	%rax, %rax	# D.14320
	je	.L469	#,
	.loc 1 2356 0
	movl	$0, %eax	#, D.14319
	jmp	.L467	#
.L469:
	.loc 1 2359 0
	movq	-32(%rbp), %rax	# then_bb, tmp108
	movq	%rax, %rdi	# tmp108,
	call	forwarder_block_p	#
	testb	%al, %al	# D.14321
	je	.L470	#,
	.loc 1 2360 0
	movl	$0, %eax	#, D.14319
	jmp	.L467	#
.L470:
	.loc 1 2362 0
	movl	num_possible_if_blocks(%rip), %eax	# num_possible_if_blocks, num_possible_if_blocks.91
	addl	$1, %eax	#, num_possible_if_blocks.92
	movl	%eax, num_possible_if_blocks(%rip)	# num_possible_if_blocks.92, num_possible_if_blocks
	.loc 1 2363 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.93
	testq	%rax, %rax	# rtl_dump_file.93
	je	.L471	#,
	.loc 1 2364 0
	movq	-32(%rbp), %rax	# then_bb, tmp109
	movl	88(%rax), %ecx	# then_bb_4->index, D.14319
	movq	-40(%rbp), %rax	# test_bb, tmp110
	movl	88(%rax), %edx	# test_bb_21(D)->index, D.14319
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.94
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.94,
	movl	$0, %eax	#,
	call	fprintf	#
.L471:
	.loc 1 2369 0
	movq	-32(%rbp), %rax	# then_bb, tmp111
	movq	%rax, %rdi	# tmp111,
	call	count_bb_insns	#
	movl	ix86_branch_cost(%rip), %edx	# ix86_branch_cost, ix86_branch_cost.95
	cmpl	%edx, %eax	# ix86_branch_cost.95, D.14319
	jle	.L472	#,
	.loc 1 2370 0
	movl	$0, %eax	#, D.14319
	jmp	.L467	#
.L472:
	.loc 1 2374 0
	movq	-32(%rbp), %rax	# then_bb, tmp112
	movq	40(%rax), %rax	# then_bb_4->succ, D.14320
	.loc 1 2373 0
	movq	24(%rax), %rcx	# _27->dest, D.14322
	movq	-24(%rbp), %rdx	# else_bb, tmp113
	movq	-32(%rbp), %rsi	# then_bb, tmp114
	movq	-40(%rbp), %rax	# test_bb, tmp115
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# tmp115,
	call	dead_or_predicable	#
	testl	%eax, %eax	# D.14319
	jne	.L473	#,
	.loc 1 2375 0
	movl	$0, %eax	#, D.14319
	jmp	.L467	#
.L473:
	.loc 1 2380 0
	movq	-40(%rbp), %rax	# test_bb, tmp116
	movq	80(%rax), %rax	# test_bb_21(D)->aux, D.14323
	orq	$1, %rax	#, D.14324
	movq	%rax, %rdx	# D.14324, D.14323
	movq	-40(%rbp), %rax	# test_bb, tmp117
	movq	%rdx, 80(%rax)	# D.14323, test_bb_21(D)->aux
	.loc 1 2381 0
	movq	-32(%rbp), %rax	# then_bb, tmp118
	movq	72(%rax), %rdx	# then_bb_4->global_live_at_end, D.14325
	movq	-24(%rbp), %rax	# else_bb, tmp119
	movq	64(%rax), %rsi	# else_bb_6->global_live_at_start, D.14325
	movq	-40(%rbp), %rax	# test_bb, tmp120
	movq	72(%rax), %rax	# test_bb_21(D)->global_live_at_end, D.14325
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# D.14325,
	call	bitmap_operation	#
	.loc 1 2385 0
	movq	-40(%rbp), %rax	# test_bb, tmp121
	movq	40(%rax), %rax	# test_bb_21(D)->succ, D.14320
	movl	48(%rax), %eax	# _38->flags, D.14319
	andl	$1, %eax	#, D.14319
	testl	%eax, %eax	# D.14319
	je	.L474	#,
	.loc 1 2385 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# test_bb, tmp122
	movq	40(%rax), %rax	# test_bb_21(D)->succ, iftmp.96
	jmp	.L475	#
.L474:
	.loc 1 2385 0 discriminator 2
	movq	-40(%rbp), %rax	# test_bb, tmp123
	movq	40(%rax), %rax	# test_bb_21(D)->succ, D.14320
	movq	8(%rax), %rax	# _42->succ_next, iftmp.96
.L475:
	.loc 1 2385 0 discriminator 3
	movq	-24(%rbp), %rdx	# else_bb, tmp124
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# iftmp.96,
	call	redirect_edge_and_branch_force	#
	movq	%rax, -8(%rbp)	# tmp125, new_bb
	.loc 1 2388 0 is_stmt 1 discriminator 3
	cmpq	$0, -8(%rbp)	#, new_bb
	je	.L476	#,
	.loc 1 2390 0
	movq	-32(%rbp), %rax	# then_bb, tmp126
	movq	80(%rax), %rdx	# then_bb_4->aux, D.14323
	movq	-8(%rbp), %rax	# new_bb, tmp127
	movq	%rdx, 80(%rax)	# D.14323, new_bb_44->aux
	.loc 1 2391 0
	movq	-32(%rbp), %rax	# then_bb, tmp128
	movq	80(%rax), %rax	# then_bb_4->aux, D.14323
	orq	$1, %rax	#, D.14324
	movq	%rax, %rdx	# D.14324, D.14323
	movq	-32(%rbp), %rax	# then_bb, tmp129
	movq	%rdx, 80(%rax)	# D.14323, then_bb_4->aux
.L476:
	.loc 1 2393 0
	movq	-32(%rbp), %rax	# then_bb, tmp130
	movq	%rax, %rdi	# tmp130,
	call	flow_delete_block	#
	.loc 1 2397 0
	movl	num_removed_blocks(%rip), %eax	# num_removed_blocks, num_removed_blocks.97
	addl	$1, %eax	#, num_removed_blocks.98
	movl	%eax, num_removed_blocks(%rip)	# num_removed_blocks.98, num_removed_blocks
	.loc 1 2398 0
	movl	num_updated_if_blocks(%rip), %eax	# num_updated_if_blocks, num_updated_if_blocks.99
	addl	$1, %eax	#, num_updated_if_blocks.100
	movl	%eax, num_updated_if_blocks(%rip)	# num_updated_if_blocks.100, num_updated_if_blocks
	.loc 1 2400 0
	movl	$1, %eax	#, D.14319
.L467:
	.loc 1 2401 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	find_if_case_1, .-find_if_case_1
	.section	.rodata
	.align 8
.LC9:
	.string	"\nIF-CASE-2 found, start %d, else %d\n"
	.text
	.type	find_if_case_2, @function
find_if_case_2:
.LFB31:
	.loc 1 2409 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# test_bb, test_bb
	movq	%rsi, -48(%rbp)	# then_edge, then_edge
	movq	%rdx, -56(%rbp)	# else_edge, else_edge
	.loc 1 2410 0
	movq	-48(%rbp), %rax	# then_edge, tmp114
	movq	24(%rax), %rax	# then_edge_2(D)->dest, tmp115
	movq	%rax, -32(%rbp)	# tmp115, then_bb
	.loc 1 2411 0
	movq	-56(%rbp), %rax	# else_edge, tmp116
	movq	24(%rax), %rax	# else_edge_4(D)->dest, tmp117
	movq	%rax, -24(%rbp)	# tmp117, else_bb
	.loc 1 2412 0
	movq	-24(%rbp), %rax	# else_bb, tmp118
	movq	40(%rax), %rax	# else_bb_5->succ, tmp119
	movq	%rax, -16(%rbp)	# tmp119, else_succ
	.loc 1 2416 0
	cmpq	$0, -16(%rbp)	#, else_succ
	je	.L478	#,
	.loc 1 2416 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# else_succ, tmp120
	movq	8(%rax), %rax	# else_succ_6->succ_next, D.14328
	testq	%rax, %rax	# D.14328
	je	.L479	#,
.L478:
	.loc 1 2417 0 is_stmt 1
	movl	$0, %eax	#, D.14327
	jmp	.L480	#
.L479:
	.loc 1 2420 0
	movq	-16(%rbp), %rax	# else_succ, tmp121
	movl	48(%rax), %eax	# else_succ_6->flags, D.14327
	andl	$14, %eax	#, D.14327
	testl	%eax, %eax	# D.14327
	je	.L481	#,
	.loc 1 2421 0
	movl	$0, %eax	#, D.14327
	jmp	.L480	#
.L481:
	.loc 1 2424 0
	movq	-24(%rbp), %rax	# else_bb, tmp122
	movq	32(%rax), %rax	# else_bb_5->pred, D.14328
	movq	(%rax), %rax	# _11->pred_next, D.14328
	testq	%rax, %rax	# D.14328
	je	.L482	#,
	.loc 1 2425 0
	movl	$0, %eax	#, D.14327
	jmp	.L480	#
.L482:
	.loc 1 2428 0
	movq	-32(%rbp), %rax	# then_bb, tmp123
	movl	88(%rax), %eax	# then_bb_3->index, D.14327
	testl	%eax, %eax	# D.14327
	jns	.L483	#,
	.loc 1 2429 0
	movl	$0, %eax	#, D.14327
	jmp	.L480	#
.L483:
	.loc 1 2432 0
	movq	-40(%rbp), %rax	# test_bb, tmp124
	movq	8(%rax), %rax	# test_bb_16(D)->end, D.14329
	movl	$0, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.14329,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp125, note
	.loc 1 2433 0
	cmpq	$0, -8(%rbp)	#, note
	je	.L484	#,
	.loc 1 2433 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# note, tmp126
	movq	8(%rax), %rax	# note_18->fld[0].rtx, D.14329
	movq	8(%rax), %rax	# _19->fld[0].rtwint, D.14330
	cmpq	$4999, %rax	#, D.14330
	jle	.L484	#,
	jmp	.L485	#
.L484:
	.loc 1 2435 0 is_stmt 1
	movq	-16(%rbp), %rax	# else_succ, tmp127
	movq	24(%rax), %rax	# else_succ_6->dest, D.14331
	movl	88(%rax), %eax	# _21->index, D.14327
	testl	%eax, %eax	# D.14327
	js	.L485	#,
	.loc 1 2436 0
	movq	post_dominators(%rip), %rdx	# post_dominators, post_dominators.101
	movq	-32(%rbp), %rax	# then_bb, tmp128
	movq	80(%rax), %rax	# then_bb_3->aux, D.14332
	shrq	%rax	# D.14333
	salq	$3, %rax	#, D.14333
	addq	%rdx, %rax	# post_dominators.101, D.14334
	movq	(%rax), %rax	# *_28, D.14335
	movq	-16(%rbp), %rdx	# else_succ, tmp129
	movq	24(%rdx), %rdx	# else_succ_6->dest, D.14331
	movq	80(%rdx), %rdx	# _30->aux, D.14332
	shrq	%rdx	# D.14333
	shrq	$6, %rdx	#, D.14333
	addq	$2, %rdx	#, tmp130
	movq	(%rax,%rdx,8), %rdx	# _29->elms, D.14333
	movq	-16(%rbp), %rax	# else_succ, tmp131
	movq	24(%rax), %rax	# else_succ_6->dest, D.14331
	movq	80(%rax), %rax	# _36->aux, D.14332
	shrq	%rax	# D.14333
	andl	$63, %eax	#, D.14327
	movl	%eax, %ecx	# D.14327, tmp147
	shrq	%cl, %rdx	# tmp147, D.14333
	movq	%rdx, %rax	# D.14333, D.14333
	andl	$1, %eax	#, D.14333
	testq	%rax, %rax	# D.14333
	jne	.L485	#,
	.loc 1 2440 0
	movl	$0, %eax	#, D.14327
	jmp	.L480	#
.L485:
	.loc 1 2442 0
	movl	num_possible_if_blocks(%rip), %eax	# num_possible_if_blocks, num_possible_if_blocks.102
	addl	$1, %eax	#, num_possible_if_blocks.103
	movl	%eax, num_possible_if_blocks(%rip)	# num_possible_if_blocks.103, num_possible_if_blocks
	.loc 1 2443 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.104
	testq	%rax, %rax	# rtl_dump_file.104
	je	.L486	#,
	.loc 1 2444 0
	movq	-24(%rbp), %rax	# else_bb, tmp132
	movl	88(%rax), %ecx	# else_bb_5->index, D.14327
	movq	-40(%rbp), %rax	# test_bb, tmp133
	movl	88(%rax), %edx	# test_bb_16(D)->index, D.14327
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.105
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.105,
	movl	$0, %eax	#,
	call	fprintf	#
.L486:
	.loc 1 2449 0
	movq	-32(%rbp), %rax	# then_bb, tmp134
	movq	%rax, %rdi	# tmp134,
	call	count_bb_insns	#
	movl	ix86_branch_cost(%rip), %edx	# ix86_branch_cost, ix86_branch_cost.106
	cmpl	%edx, %eax	# ix86_branch_cost.106, D.14327
	jle	.L487	#,
	.loc 1 2450 0
	movl	$0, %eax	#, D.14327
	jmp	.L480	#
.L487:
	.loc 1 2453 0
	movq	-16(%rbp), %rax	# else_succ, tmp135
	movq	24(%rax), %rcx	# else_succ_6->dest, D.14331
	movq	-32(%rbp), %rdx	# then_bb, tmp136
	movq	-24(%rbp), %rsi	# else_bb, tmp137
	movq	-40(%rbp), %rax	# test_bb, tmp138
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp138,
	call	dead_or_predicable	#
	testl	%eax, %eax	# D.14327
	jne	.L488	#,
	.loc 1 2454 0
	movl	$0, %eax	#, D.14327
	jmp	.L480	#
.L488:
	.loc 1 2459 0
	movq	-40(%rbp), %rax	# test_bb, tmp139
	movq	80(%rax), %rax	# test_bb_16(D)->aux, D.14332
	orq	$1, %rax	#, D.14333
	movq	%rax, %rdx	# D.14333, D.14332
	movq	-40(%rbp), %rax	# test_bb, tmp140
	movq	%rdx, 80(%rax)	# D.14332, test_bb_16(D)->aux
	.loc 1 2460 0
	movq	-24(%rbp), %rax	# else_bb, tmp141
	movq	72(%rax), %rdx	# else_bb_5->global_live_at_end, D.14336
	movq	-32(%rbp), %rax	# then_bb, tmp142
	movq	64(%rax), %rsi	# then_bb_3->global_live_at_start, D.14336
	movq	-40(%rbp), %rax	# test_bb, tmp143
	movq	72(%rax), %rax	# test_bb_16(D)->global_live_at_end, D.14336
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# D.14336,
	call	bitmap_operation	#
	.loc 1 2464 0
	movq	-24(%rbp), %rax	# else_bb, tmp144
	movq	%rax, %rdi	# tmp144,
	call	flow_delete_block	#
	.loc 1 2466 0
	movl	num_removed_blocks(%rip), %eax	# num_removed_blocks, num_removed_blocks.107
	addl	$1, %eax	#, num_removed_blocks.108
	movl	%eax, num_removed_blocks(%rip)	# num_removed_blocks.108, num_removed_blocks
	.loc 1 2467 0
	movl	num_updated_if_blocks(%rip), %eax	# num_updated_if_blocks, num_updated_if_blocks.109
	addl	$1, %eax	#, num_updated_if_blocks.110
	movl	%eax, num_updated_if_blocks(%rip)	# num_updated_if_blocks.110, num_updated_if_blocks
	.loc 1 2472 0
	movl	$1, %eax	#, D.14327
.L480:
	.loc 1 2473 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	find_if_case_2, .-find_if_case_2
	.type	find_memory, @function
find_memory:
.LFB32:
	.loc 1 2482 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# px, px
	movq	%rsi, -16(%rbp)	# data, data
	.loc 1 2483 0
	movq	-8(%rbp), %rax	# px, tmp64
	movq	(%rax), %rax	# *px_1(D), D.14338
	movzwl	(%rax), %eax	# _2->code, D.14339
	cmpw	$66, %ax	#, D.14339
	sete	%al	#, D.14340
	movzbl	%al, %eax	# D.14340, D.14341
	.loc 1 2484 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	find_memory, .-find_memory
	.type	dead_or_predicable, @function
dead_or_predicable:
.LFB33:
	.loc 1 2499 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$432, %rsp	#,
	movq	%rdi, -392(%rbp)	# test_bb, test_bb
	movq	%rsi, -400(%rbp)	# merge_bb, merge_bb
	movq	%rdx, -408(%rbp)	# other_bb, other_bb
	movq	%rcx, -416(%rbp)	# new_dest, new_dest
	movl	%r8d, -420(%rbp)	# reversep, reversep
	.loc 1 2500 0
	movq	$0, -304(%rbp)	#, new_label
	.loc 1 2502 0
	movq	-392(%rbp), %rax	# test_bb, tmp199
	movq	8(%rax), %rax	# test_bb_68(D)->end, tmp200
	movq	%rax, -240(%rbp)	# tmp200, jump
	.loc 1 2505 0
	movq	-400(%rbp), %rax	# merge_bb, tmp201
	movq	(%rax), %rax	# merge_bb_70(D)->head, head.111
	movq	%rax, -328(%rbp)	# head.111, head
	.loc 1 2506 0
	movq	-400(%rbp), %rax	# merge_bb, tmp202
	movq	8(%rax), %rax	# merge_bb_70(D)->end, end.112
	movq	%rax, -320(%rbp)	# end.112, end
	.loc 1 2508 0
	movq	-328(%rbp), %rax	# head, head.113
	movzwl	(%rax), %eax	# head.113_73->code, D.14343
	cmpw	$36, %ax	#, D.14343
	jne	.L492	#,
	.loc 1 2509 0
	movq	-328(%rbp), %rax	# head, head.114
	movq	24(%rax), %rax	# head.114_75->fld[2].rtx, head.115
	movq	%rax, -328(%rbp)	# head.115, head
.L492:
	.loc 1 2510 0
	movq	-328(%rbp), %rax	# head, head.116
	movzwl	(%rax), %eax	# head.116_77->code, D.14343
	cmpw	$37, %ax	#, D.14343
	jne	.L493	#,
	.loc 1 2512 0
	movq	-328(%rbp), %rdx	# head, head.117
	movq	-320(%rbp), %rax	# end, end.118
	cmpq	%rax, %rdx	# end.118, head.117
	jne	.L494	#,
	.loc 1 2514 0
	movq	$0, -320(%rbp)	#, end
	movq	-320(%rbp), %rax	# end, end.119
	movq	%rax, -328(%rbp)	# end.119, head
	.loc 1 2515 0
	jmp	.L495	#
.L494:
	.loc 1 2517 0
	movq	-328(%rbp), %rax	# head, head.120
	movq	24(%rax), %rax	# head.120_82->fld[2].rtx, head.121
	movq	%rax, -328(%rbp)	# head.121, head
.L493:
	.loc 1 2520 0
	movq	-320(%rbp), %rax	# end, end.122
	movzwl	(%rax), %eax	# end.122_84->code, D.14343
	cmpw	$33, %ax	#, D.14343
	jne	.L588	#,
	.loc 1 2522 0
	movq	-328(%rbp), %rdx	# head, head.123
	movq	-320(%rbp), %rax	# end, end.124
	cmpq	%rax, %rdx	# end.124, head.123
	jne	.L497	#,
	.loc 1 2524 0
	movq	$0, -320(%rbp)	#, end
	movq	-320(%rbp), %rax	# end, end.125
	movq	%rax, -328(%rbp)	# end.125, head
	.loc 1 2525 0
	jmp	.L495	#
.L497:
	.loc 1 2527 0
	movq	-320(%rbp), %rax	# end, end.126
	movq	16(%rax), %rax	# end.126_89->fld[1].rtx, end.127
	movq	%rax, -320(%rbp)	# end.127, end
.L588:
.LBB18:
	.loc 1 2578 0
	movl	$0, -372(%rbp)	#, fail
	.loc 1 2581 0
	movq	-328(%rbp), %rax	# head, tmp203
	movq	%rax, -296(%rbp)	# tmp203, insn
.L504:
	.loc 1 2583 0
	movq	-296(%rbp), %rax	# insn, tmp204
	movzwl	(%rax), %eax	# insn_2->code, D.14343
	cmpw	$34, %ax	#, D.14343
	jne	.L498	#,
	.loc 1 2584 0
	movl	$0, %eax	#, D.14342
	jmp	.L587	#
.L498:
	.loc 1 2585 0
	movq	-296(%rbp), %rax	# insn, tmp205
	movzwl	(%rax), %eax	# insn_2->code, D.14343
	movzwl	%ax, %eax	# D.14343, D.14342
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14344
	cmpb	$105, %al	#, D.14344
	jne	.L500	#,
	.loc 1 2587 0
	movq	-296(%rbp), %rax	# insn, tmp207
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.14345
	movq	%rax, %rdi	# D.14345,
	call	may_trap_p	#
	testl	%eax, %eax	# D.14342
	je	.L501	#,
	.loc 1 2588 0
	movl	$0, %eax	#, D.14342
	jmp	.L587	#
.L501:
	.loc 1 2595 0
	movq	-296(%rbp), %rax	# insn, tmp208
	addq	$32, %rax	#, D.14346
	movl	$0, %edx	#,
	movl	$find_memory, %esi	#,
	movq	%rax, %rdi	# D.14346,
	call	for_each_rtx	#
	testl	%eax, %eax	# D.14342
	je	.L500	#,
	.loc 1 2596 0
	movl	$0, %eax	#, D.14342
	jmp	.L587	#
.L500:
	.loc 1 2598 0
	movq	-320(%rbp), %rax	# end, end.130
	cmpq	%rax, -296(%rbp)	# end.130, insn
	jne	.L502	#,
	.loc 1 2599 0
	nop
	.loc 1 2602 0
	movq	-240(%rbp), %rax	# jump, tmp211
	movq	%rax, %rdi	# tmp211,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.14342
	jne	.L505	#,
	jmp	.L589	#
.L502:
	.loc 1 2581 0
	movq	-296(%rbp), %rax	# insn, tmp209
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp210
	movq	%rax, -296(%rbp)	# tmp210, insn
	.loc 1 2600 0
	jmp	.L504	#
.L589:
	.loc 1 2603 0
	movl	$0, %eax	#, D.14342
	jmp	.L587	#
.L505:
	.loc 1 2606 0
	leaq	-312(%rbp), %rdx	#, tmp212
	movq	-240(%rbp), %rax	# jump, tmp213
	movq	%rdx, %rsi	# tmp212,
	movq	%rax, %rdi	# tmp213,
	call	noce_get_condition	#
	movq	%rax, -232(%rbp)	# tmp214, cond
	.loc 1 2607 0
	cmpq	$0, -232(%rbp)	#, cond
	jne	.L506	#,
	.loc 1 2608 0
	movl	$0, %eax	#, D.14342
	jmp	.L587	#
.L506:
	.loc 1 2616 0
	leaq	-96(%rbp), %rax	#, tmp215
	movq	%rax, %rdi	# tmp215,
	call	bitmap_initialize	#
	movq	%rax, -224(%rbp)	# tmp216, tmp
	.loc 1 2617 0
	leaq	-128(%rbp), %rax	#, tmp217
	movq	%rax, %rdi	# tmp217,
	call	bitmap_initialize	#
	movq	%rax, -216(%rbp)	# tmp218, merge_set
	.loc 1 2618 0
	leaq	-64(%rbp), %rax	#, tmp219
	movq	%rax, %rdi	# tmp219,
	call	bitmap_initialize	#
	movq	%rax, -208(%rbp)	# tmp220, test_live
	.loc 1 2619 0
	leaq	-32(%rbp), %rax	#, tmp221
	movq	%rax, %rdi	# tmp221,
	call	bitmap_initialize	#
	movq	%rax, -200(%rbp)	# tmp222, test_set
	.loc 1 2624 0
	movq	-216(%rbp), %rcx	# merge_set, tmp223
	movq	-216(%rbp), %rdx	# merge_set, tmp224
	movq	-224(%rbp), %rsi	# tmp, tmp225
	movq	-400(%rbp), %rax	# merge_bb, tmp226
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp226,
	call	propagate_block	#
	.loc 1 2628 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.131
	testl	%eax, %eax	# reload_completed.131
	jne	.L507	#,
.LBB19:
	.loc 1 2630 0
	movq	-216(%rbp), %rax	# merge_set, tmp227
	movq	(%rax), %rax	# merge_set_110->first, tmp228
	movq	%rax, -288(%rbp)	# tmp228, ptr_
	movl	$0, -344(%rbp)	#, indx_
	movl	$0, -368(%rbp)	#, bit_num_
	movl	$0, -364(%rbp)	#, word_num_
	jmp	.L508	#
.L510:
	.loc 1 2630 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# ptr_, tmp229
	movq	(%rax), %rax	# ptr__21->next, tmp230
	movq	%rax, -288(%rbp)	# tmp230, ptr_
.L508:
	cmpq	$0, -288(%rbp)	#, ptr_
	je	.L509	#,
	.loc 1 2630 0 discriminator 2
	movq	-288(%rbp), %rax	# ptr_, tmp231
	movl	16(%rax), %eax	# ptr__21->indx, D.14347
	cmpl	-344(%rbp), %eax	# indx_, D.14347
	jb	.L510	#,
.L509:
	.loc 1 2630 0 discriminator 3
	cmpq	$0, -288(%rbp)	#, ptr_
	je	.L511	#,
	.loc 1 2630 0 discriminator 1
	movq	-288(%rbp), %rax	# ptr_, tmp232
	movl	16(%rax), %eax	# ptr__21->indx, D.14347
	cmpl	-344(%rbp), %eax	# indx_, D.14347
	je	.L511	#,
	movl	$0, -368(%rbp)	#, bit_num_
	movl	$0, -364(%rbp)	#, word_num_
	jmp	.L512	#
.L511:
	.loc 1 2630 0 discriminator 2
	jmp	.L512	#
.L520:
	.loc 1 2630 0
	jmp	.L513	#
.L519:
.LBB20:
	.loc 1 2630 0 discriminator 2
	movq	-288(%rbp), %rax	# ptr_, tmp233
	movl	-364(%rbp), %edx	# word_num_, tmp234
	addq	$2, %rdx	#, tmp235
	movq	8(%rax,%rdx,8), %rax	# ptr__22->bits, tmp236
	movq	%rax, -280(%rbp)	# tmp236, word_
	cmpq	$0, -280(%rbp)	#, word_
	je	.L514	#,
	.loc 1 2630 0 discriminator 1
	jmp	.L515	#
.L518:
.LBB21:
	.loc 1 2630 0 discriminator 2
	movl	-368(%rbp), %eax	# bit_num_, bit_num_.132
	movl	$1, %edx	#, tmp237
	movl	%eax, %ecx	# bit_num_.132, tmp378
	salq	%cl, %rdx	# tmp378, tmp238
	movq	%rdx, %rax	# tmp238, tmp238
	movq	%rax, -192(%rbp)	# tmp238, mask_
	movq	-192(%rbp), %rax	# mask_, tmp239
	movq	-280(%rbp), %rdx	# word_, tmp240
	andq	%rdx, %rax	# tmp240, D.14348
	testq	%rax, %rax	# D.14348
	je	.L516	#,
	.loc 1 2630 0 discriminator 1
	movq	-192(%rbp), %rax	# mask_, tmp241
	notq	%rax	# D.14348
	andq	%rax, -280(%rbp)	# D.14348, word_
	movq	-288(%rbp), %rax	# ptr_, tmp242
	movl	16(%rax), %eax	# ptr__22->indx, D.14347
	leal	(%rax,%rax), %edx	#, D.14347
	movl	-364(%rbp), %eax	# word_num_, tmp243
	addl	%edx, %eax	# D.14347, D.14347
	sall	$6, %eax	#, D.14347
	movl	%eax, %edx	# D.14347, D.14347
	movl	-368(%rbp), %eax	# bit_num_, tmp244
	addl	%edx, %eax	# D.14347, D.14347
	movl	%eax, -340(%rbp)	# D.14347, i
	cmpl	$52, -340(%rbp)	#, i
	jg	.L517	#,
	movl	-340(%rbp), %eax	# i, tmp246
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.14344
	testb	%al, %al	# D.14344
	jne	.L517	#,
	movl	-340(%rbp), %eax	# i, tmp248
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.14344
	testb	%al, %al	# D.14344
	jne	.L517	#,
	movl	$1, -372(%rbp)	#, fail
.L517:
	.loc 1 2630 0 discriminator 2
	cmpq	$0, -280(%rbp)	#, word_
	jne	.L516	#,
	.loc 1 2630 0 discriminator 1
	jmp	.L514	#
.L516:
.LBE21:
	.loc 1 2630 0 discriminator 2
	addl	$1, -368(%rbp)	#, bit_num_
.L515:
	.loc 1 2630 0 discriminator 1
	cmpl	$63, -368(%rbp)	#, bit_num_
	jbe	.L518	#,
.L514:
	.loc 1 2630 0 discriminator 2
	movl	$0, -368(%rbp)	#, bit_num_
.LBE20:
	addl	$1, -364(%rbp)	#, word_num_
.L513:
	.loc 1 2630 0 discriminator 1
	cmpl	$1, -364(%rbp)	#, word_num_
	jbe	.L519	#,
	.loc 1 2630 0 discriminator 3
	movl	$0, -364(%rbp)	#, word_num_
	movq	-288(%rbp), %rax	# ptr_, tmp249
	movq	(%rax), %rax	# ptr__22->next, tmp250
	movq	%rax, -288(%rbp)	# tmp250, ptr_
.L512:
	.loc 1 2630 0 discriminator 1
	cmpq	$0, -288(%rbp)	#, ptr_
	jne	.L520	#,
.L507:
.LBE19:
	.loc 1 2643 0 is_stmt 1
	movq	-408(%rbp), %rax	# other_bb, tmp251
	movq	64(%rax), %rdx	# other_bb_143(D)->global_live_at_start, D.14349
	movq	-208(%rbp), %rax	# test_live, tmp252
	movq	%rdx, %rsi	# D.14349,
	movq	%rax, %rdi	# tmp252,
	call	bitmap_copy	#
	.loc 1 2644 0
	movq	-200(%rbp), %rcx	# test_set, tmp253
	movq	-200(%rbp), %rdx	# test_set, tmp254
	movq	-208(%rbp), %rsi	# test_live, tmp255
	movq	-392(%rbp), %rax	# test_bb, tmp256
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp256,
	call	init_propagate_block_info	#
	movq	%rax, -184(%rbp)	# tmp257, pbi
	.loc 1 2647 0
	movq	-240(%rbp), %rax	# jump, tmp258
	movq	%rax, -296(%rbp)	# tmp258, insn
.L523:
	.loc 1 2649 0
	movq	-296(%rbp), %rdx	# insn, tmp259
	movq	-184(%rbp), %rax	# pbi, tmp260
	movq	%rdx, %rsi	# tmp259,
	movq	%rax, %rdi	# tmp260,
	call	propagate_one_insn	#
	movq	%rax, -176(%rbp)	# tmp261, prev
	.loc 1 2650 0
	movq	-312(%rbp), %rax	# earliest, earliest.133
	cmpq	%rax, -296(%rbp)	# earliest.133, insn
	jne	.L521	#,
	.loc 1 2651 0
	nop
	.loc 1 2654 0
	movq	-184(%rbp), %rax	# pbi, tmp263
	movq	%rax, %rdi	# tmp263,
	call	free_propagate_block_info	#
	.loc 1 2662 0
	movq	-208(%rbp), %rdx	# test_live, tmp264
	movq	-200(%rbp), %rsi	# test_set, tmp265
	movq	-224(%rbp), %rax	# tmp, tmp266
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp266,
	call	bitmap_operation	#
	.loc 1 2663 0
	movq	-216(%rbp), %rdx	# merge_set, tmp267
	movq	-224(%rbp), %rsi	# tmp, tmp268
	movq	-224(%rbp), %rax	# tmp, tmp269
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp269,
	call	bitmap_operation	#
.LBB22:
	.loc 1 2664 0
	movq	-224(%rbp), %rax	# tmp, tmp270
	movq	(%rax), %rax	# tmp_109->first, tmp271
	movq	%rax, -272(%rbp)	# tmp271, ptr_
	movl	$0, -336(%rbp)	#, indx_
	movl	$0, -360(%rbp)	#, bit_num_
	movl	$0, -356(%rbp)	#, word_num_
	jmp	.L524	#
.L521:
.LBE22:
	.loc 1 2647 0
	movq	-176(%rbp), %rax	# prev, tmp262
	movq	%rax, -296(%rbp)	# tmp262, insn
	.loc 1 2652 0
	jmp	.L523	#
.L526:
.LBB25:
	.loc 1 2664 0 discriminator 1
	movq	-272(%rbp), %rax	# ptr_, tmp272
	movq	(%rax), %rax	# ptr__32->next, tmp273
	movq	%rax, -272(%rbp)	# tmp273, ptr_
.L524:
	cmpq	$0, -272(%rbp)	#, ptr_
	je	.L525	#,
	.loc 1 2664 0 is_stmt 0 discriminator 2
	movq	-272(%rbp), %rax	# ptr_, tmp274
	movl	16(%rax), %eax	# ptr__32->indx, D.14347
	cmpl	-336(%rbp), %eax	# indx_, D.14347
	jb	.L526	#,
.L525:
	.loc 1 2664 0 discriminator 3
	cmpq	$0, -272(%rbp)	#, ptr_
	je	.L527	#,
	.loc 1 2664 0 discriminator 1
	movq	-272(%rbp), %rax	# ptr_, tmp275
	movl	16(%rax), %eax	# ptr__32->indx, D.14347
	cmpl	-336(%rbp), %eax	# indx_, D.14347
	je	.L527	#,
	movl	$0, -360(%rbp)	#, bit_num_
	movl	$0, -356(%rbp)	#, word_num_
	jmp	.L528	#
.L527:
	.loc 1 2664 0 discriminator 2
	jmp	.L528	#
.L535:
	.loc 1 2664 0
	jmp	.L529	#
.L534:
.LBB23:
	.loc 1 2664 0 discriminator 2
	movq	-272(%rbp), %rax	# ptr_, tmp276
	movl	-356(%rbp), %edx	# word_num_, tmp277
	addq	$2, %rdx	#, tmp278
	movq	8(%rax,%rdx,8), %rax	# ptr__33->bits, tmp279
	movq	%rax, -264(%rbp)	# tmp279, word_
	cmpq	$0, -264(%rbp)	#, word_
	je	.L530	#,
	.loc 1 2664 0 discriminator 1
	jmp	.L531	#
.L533:
.LBB24:
	.loc 1 2664 0 discriminator 2
	movl	-360(%rbp), %eax	# bit_num_, bit_num_.134
	movl	$1, %edx	#, tmp280
	movl	%eax, %ecx	# bit_num_.134, tmp381
	salq	%cl, %rdx	# tmp381, tmp281
	movq	%rdx, %rax	# tmp281, tmp281
	movq	%rax, -168(%rbp)	# tmp281, mask_
	movq	-168(%rbp), %rax	# mask_, tmp282
	movq	-264(%rbp), %rdx	# word_, tmp283
	andq	%rdx, %rax	# tmp283, D.14348
	testq	%rax, %rax	# D.14348
	je	.L532	#,
	.loc 1 2664 0 discriminator 1
	movq	-168(%rbp), %rax	# mask_, tmp284
	notq	%rax	# D.14348
	andq	%rax, -264(%rbp)	# D.14348, word_
	movq	-272(%rbp), %rax	# ptr_, tmp285
	movl	16(%rax), %eax	# ptr__33->indx, D.14347
	leal	(%rax,%rax), %edx	#, D.14347
	movl	-356(%rbp), %eax	# word_num_, tmp286
	addl	%edx, %eax	# D.14347, D.14347
	sall	$6, %eax	#, D.14347
	movl	%eax, %edx	# D.14347, D.14347
	movl	-360(%rbp), %eax	# bit_num_, tmp287
	addl	%edx, %eax	# D.14347, D.14347
	movl	%eax, -340(%rbp)	# D.14347, i
	movl	$1, -372(%rbp)	#, fail
	cmpq	$0, -264(%rbp)	#, word_
	jne	.L532	#,
	jmp	.L530	#
.L532:
.LBE24:
	.loc 1 2664 0 discriminator 2
	addl	$1, -360(%rbp)	#, bit_num_
.L531:
	.loc 1 2664 0 discriminator 1
	cmpl	$63, -360(%rbp)	#, bit_num_
	jbe	.L533	#,
.L530:
	.loc 1 2664 0 discriminator 2
	movl	$0, -360(%rbp)	#, bit_num_
.LBE23:
	addl	$1, -356(%rbp)	#, word_num_
.L529:
	.loc 1 2664 0 discriminator 1
	cmpl	$1, -356(%rbp)	#, word_num_
	jbe	.L534	#,
	.loc 1 2664 0 discriminator 3
	movl	$0, -356(%rbp)	#, word_num_
	movq	-272(%rbp), %rax	# ptr_, tmp288
	movq	(%rax), %rax	# ptr__33->next, tmp289
	movq	%rax, -272(%rbp)	# tmp289, ptr_
.L528:
	.loc 1 2664 0 discriminator 1
	cmpq	$0, -272(%rbp)	#, ptr_
	jne	.L535	#,
.LBE25:
	.loc 1 2666 0 is_stmt 1
	movq	-400(%rbp), %rax	# merge_bb, tmp290
	movq	64(%rax), %rdx	# merge_bb_70(D)->global_live_at_start, D.14349
	movq	-200(%rbp), %rsi	# test_set, tmp291
	movq	-224(%rbp), %rax	# tmp, tmp292
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp292,
	call	bitmap_operation	#
.LBB26:
	.loc 1 2668 0
	movq	-224(%rbp), %rax	# tmp, tmp293
	movq	(%rax), %rax	# tmp_109->first, tmp294
	movq	%rax, -256(%rbp)	# tmp294, ptr_
	movl	$0, -332(%rbp)	#, indx_
	movl	$0, -352(%rbp)	#, bit_num_
	movl	$0, -348(%rbp)	#, word_num_
	jmp	.L536	#
.L538:
	.loc 1 2668 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# ptr_, tmp295
	movq	(%rax), %rax	# ptr__43->next, tmp296
	movq	%rax, -256(%rbp)	# tmp296, ptr_
.L536:
	cmpq	$0, -256(%rbp)	#, ptr_
	je	.L537	#,
	.loc 1 2668 0 discriminator 2
	movq	-256(%rbp), %rax	# ptr_, tmp297
	movl	16(%rax), %eax	# ptr__43->indx, D.14347
	cmpl	-332(%rbp), %eax	# indx_, D.14347
	jb	.L538	#,
.L537:
	.loc 1 2668 0 discriminator 3
	cmpq	$0, -256(%rbp)	#, ptr_
	je	.L539	#,
	.loc 1 2668 0 discriminator 1
	movq	-256(%rbp), %rax	# ptr_, tmp298
	movl	16(%rax), %eax	# ptr__43->indx, D.14347
	cmpl	-332(%rbp), %eax	# indx_, D.14347
	je	.L539	#,
	movl	$0, -352(%rbp)	#, bit_num_
	movl	$0, -348(%rbp)	#, word_num_
	jmp	.L540	#
.L539:
	.loc 1 2668 0 discriminator 2
	jmp	.L540	#
.L547:
	.loc 1 2668 0
	jmp	.L541	#
.L546:
.LBB27:
	.loc 1 2668 0 discriminator 2
	movq	-256(%rbp), %rax	# ptr_, tmp299
	movl	-348(%rbp), %edx	# word_num_, tmp300
	addq	$2, %rdx	#, tmp301
	movq	8(%rax,%rdx,8), %rax	# ptr__44->bits, tmp302
	movq	%rax, -248(%rbp)	# tmp302, word_
	cmpq	$0, -248(%rbp)	#, word_
	je	.L542	#,
	.loc 1 2668 0 discriminator 1
	jmp	.L543	#
.L545:
.LBB28:
	.loc 1 2668 0 discriminator 2
	movl	-352(%rbp), %eax	# bit_num_, bit_num_.135
	movl	$1, %edx	#, tmp303
	movl	%eax, %ecx	# bit_num_.135, tmp384
	salq	%cl, %rdx	# tmp384, tmp304
	movq	%rdx, %rax	# tmp304, tmp304
	movq	%rax, -160(%rbp)	# tmp304, mask_
	movq	-160(%rbp), %rax	# mask_, tmp305
	movq	-248(%rbp), %rdx	# word_, tmp306
	andq	%rdx, %rax	# tmp306, D.14348
	testq	%rax, %rax	# D.14348
	je	.L544	#,
	.loc 1 2668 0 discriminator 1
	movq	-160(%rbp), %rax	# mask_, tmp307
	notq	%rax	# D.14348
	andq	%rax, -248(%rbp)	# D.14348, word_
	movq	-256(%rbp), %rax	# ptr_, tmp308
	movl	16(%rax), %eax	# ptr__44->indx, D.14347
	leal	(%rax,%rax), %edx	#, D.14347
	movl	-348(%rbp), %eax	# word_num_, tmp309
	addl	%edx, %eax	# D.14347, D.14347
	sall	$6, %eax	#, D.14347
	movl	%eax, %edx	# D.14347, D.14347
	movl	-352(%rbp), %eax	# bit_num_, tmp310
	addl	%edx, %eax	# D.14347, D.14347
	movl	%eax, -340(%rbp)	# D.14347, i
	movl	$1, -372(%rbp)	#, fail
	cmpq	$0, -248(%rbp)	#, word_
	jne	.L544	#,
	jmp	.L542	#
.L544:
.LBE28:
	.loc 1 2668 0 discriminator 2
	addl	$1, -352(%rbp)	#, bit_num_
.L543:
	.loc 1 2668 0 discriminator 1
	cmpl	$63, -352(%rbp)	#, bit_num_
	jbe	.L545	#,
.L542:
	.loc 1 2668 0 discriminator 2
	movl	$0, -352(%rbp)	#, bit_num_
.LBE27:
	addl	$1, -348(%rbp)	#, word_num_
.L541:
	.loc 1 2668 0 discriminator 1
	cmpl	$1, -348(%rbp)	#, word_num_
	jbe	.L546	#,
	.loc 1 2668 0 discriminator 3
	movl	$0, -348(%rbp)	#, word_num_
	movq	-256(%rbp), %rax	# ptr_, tmp311
	movq	(%rax), %rax	# ptr__44->next, tmp312
	movq	%rax, -256(%rbp)	# tmp312, ptr_
.L540:
	.loc 1 2668 0 discriminator 1
	cmpq	$0, -256(%rbp)	#, ptr_
	jne	.L547	#,
.LBE26:
	.loc 1 2670 0 is_stmt 1
	cmpq	$0, -224(%rbp)	#, tmp
	je	.L548	#,
	.loc 1 2670 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# tmp, tmp313
	movq	%rax, %rdi	# tmp313,
	call	bitmap_clear	#
	movq	$0, -224(%rbp)	#, tmp
.L548:
	.loc 1 2671 0 is_stmt 1
	cmpq	$0, -216(%rbp)	#, merge_set
	je	.L549	#,
	.loc 1 2671 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# merge_set, tmp314
	movq	%rax, %rdi	# tmp314,
	call	bitmap_clear	#
	movq	$0, -216(%rbp)	#, merge_set
.L549:
	.loc 1 2672 0 is_stmt 1
	cmpq	$0, -208(%rbp)	#, test_live
	je	.L550	#,
	.loc 1 2672 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# test_live, tmp315
	movq	%rax, %rdi	# tmp315,
	call	bitmap_clear	#
	movq	$0, -208(%rbp)	#, test_live
.L550:
	.loc 1 2673 0 is_stmt 1
	cmpq	$0, -200(%rbp)	#, test_set
	je	.L551	#,
	.loc 1 2673 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# test_set, tmp316
	movq	%rax, %rdi	# tmp316,
	call	bitmap_clear	#
	movq	$0, -200(%rbp)	#, test_set
.L551:
	.loc 1 2675 0 is_stmt 1
	cmpl	$0, -372(%rbp)	#, fail
	je	.L495	#,
	.loc 1 2676 0
	movl	$0, %eax	#, D.14342
	jmp	.L587	#
.L495:
.LBE18:
	.loc 1 2684 0
	movq	-240(%rbp), %rax	# jump, tmp317
	movq	64(%rax), %rax	# jump_69->fld[7].rtx, tmp318
	movq	%rax, -152(%rbp)	# tmp318, old_dest
	.loc 1 2685 0
	movq	-408(%rbp), %rax	# other_bb, tmp319
	cmpq	-416(%rbp), %rax	# new_dest, tmp319
	je	.L554	#,
	.loc 1 2687 0
	movq	-416(%rbp), %rax	# new_dest, tmp320
	movq	%rax, %rdi	# tmp320,
	call	block_label	#
	movq	%rax, -304(%rbp)	# tmp321, new_label
	.loc 1 2688 0
	cmpl	$0, -420(%rbp)	#, reversep
	je	.L555	#,
	.loc 1 2689 0
	movq	-304(%rbp), %rdx	# new_label, tmp322
	movq	-240(%rbp), %rax	# jump, tmp323
	movq	%rdx, %rsi	# tmp322,
	movq	%rax, %rdi	# tmp323,
	call	invert_jump_1	#
	.loc 1 2688 0
	testl	%eax, %eax	# D.14342
	sete	%al	#, iftmp.136
	jmp	.L556	#
.L555:
	.loc 1 2690 0 discriminator 1
	movq	-304(%rbp), %rdx	# new_label, tmp324
	movq	-240(%rbp), %rax	# jump, tmp325
	movq	%rdx, %rsi	# tmp324,
	movq	%rax, %rdi	# tmp325,
	call	redirect_jump_1	#
	.loc 1 2688 0 discriminator 1
	testl	%eax, %eax	# D.14342
	sete	%al	#, iftmp.136
.L556:
	.loc 1 2688 0 is_stmt 0 discriminator 2
	testb	%al, %al	# iftmp.136
	je	.L554	#,
	.loc 1 2691 0 is_stmt 1
	nop
.L557:
	.loc 1 2746 0
	movl	$0, %edi	#,
	call	cancel_changes	#
	.loc 1 2747 0
	movl	$0, %eax	#, D.14342
	jmp	.L587	#
.L554:
	.loc 1 2694 0
	call	apply_change_group	#
	testl	%eax, %eax	# D.14342
	jne	.L558	#,
	.loc 1 2695 0
	movl	$0, %eax	#, D.14342
	jmp	.L587	#
.L558:
	.loc 1 2697 0
	movq	-408(%rbp), %rax	# other_bb, tmp326
	cmpq	-416(%rbp), %rax	# new_dest, tmp326
	je	.L559	#,
	.loc 1 2699 0
	cmpq	$0, -152(%rbp)	#, old_dest
	je	.L560	#,
	.loc 1 2700 0
	movq	-152(%rbp), %rax	# old_dest, tmp327
	movl	32(%rax), %eax	# old_dest_211->fld[3].rtint, D.14342
	leal	-1(%rax), %edx	#, D.14342
	movq	-152(%rbp), %rax	# old_dest, tmp328
	movl	%edx, 32(%rax)	# D.14342, old_dest_211->fld[3].rtint
.L560:
	.loc 1 2701 0
	cmpq	$0, -304(%rbp)	#, new_label
	je	.L561	#,
	.loc 1 2702 0
	movq	-304(%rbp), %rax	# new_label, tmp329
	movl	32(%rax), %eax	# new_label_1->fld[3].rtint, D.14342
	leal	1(%rax), %edx	#, D.14342
	movq	-304(%rbp), %rax	# new_label, tmp330
	movl	%edx, 32(%rax)	# D.14342, new_label_1->fld[3].rtint
.L561:
	.loc 1 2703 0
	movq	-240(%rbp), %rax	# jump, tmp331
	movq	-304(%rbp), %rdx	# new_label, tmp332
	movq	%rdx, 64(%rax)	# tmp332, jump_69->fld[7].rtx
	.loc 1 2704 0
	cmpl	$0, -420(%rbp)	#, reversep
	je	.L562	#,
	.loc 1 2705 0
	movq	-240(%rbp), %rax	# jump, tmp333
	movq	%rax, %rdi	# tmp333,
	call	invert_br_probabilities	#
.L562:
	.loc 1 2707 0
	movq	-392(%rbp), %rax	# test_bb, tmp334
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movl	48(%rax), %eax	# _226->flags, D.14342
	andl	$1, %eax	#, D.14342
	testl	%eax, %eax	# D.14342
	je	.L563	#,
	.loc 1 2707 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# test_bb, tmp335
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movq	8(%rax), %rax	# _229->succ_next, iftmp.137
	jmp	.L564	#
.L563:
	.loc 1 2707 0 discriminator 2
	movq	-392(%rbp), %rax	# test_bb, tmp336
	movq	40(%rax), %rax	# test_bb_68(D)->succ, iftmp.137
.L564:
	.loc 1 2707 0 discriminator 3
	movq	-416(%rbp), %rdx	# new_dest, tmp337
	movq	%rdx, %rsi	# tmp337,
	movq	%rax, %rdi	# iftmp.137,
	call	redirect_edge_succ	#
	.loc 1 2708 0 is_stmt 1 discriminator 3
	cmpl	$0, -420(%rbp)	#, reversep
	je	.L559	#,
.LBB29:
	.loc 1 2711 0
	movq	-392(%rbp), %rax	# test_bb, tmp338
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movl	48(%rax), %eax	# _232->flags, D.14342
	andl	$1, %eax	#, D.14342
	testl	%eax, %eax	# D.14342
	je	.L565	#,
	.loc 1 2711 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# test_bb, tmp339
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movq	8(%rax), %rax	# _235->succ_next, iftmp.138
	jmp	.L566	#
.L565:
	.loc 1 2711 0 discriminator 2
	movq	-392(%rbp), %rax	# test_bb, tmp340
	movq	40(%rax), %rax	# test_bb_68(D)->succ, iftmp.138
.L566:
	.loc 1 2711 0 discriminator 3
	movq	56(%rax), %rax	# iftmp.138_58->count, tmp341
	movq	%rax, -144(%rbp)	# tmp341, count
	.loc 1 2712 0 is_stmt 1 discriminator 3
	movq	-392(%rbp), %rax	# test_bb, tmp342
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movl	48(%rax), %eax	# _239->flags, D.14342
	andl	$1, %eax	#, D.14342
	testl	%eax, %eax	# D.14342
	je	.L567	#,
	.loc 1 2712 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# test_bb, tmp343
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movq	8(%rax), %rax	# _242->succ_next, iftmp.139
	jmp	.L568	#
.L567:
	.loc 1 2712 0 discriminator 2
	movq	-392(%rbp), %rax	# test_bb, tmp344
	movq	40(%rax), %rax	# test_bb_68(D)->succ, iftmp.139
.L568:
	.loc 1 2712 0 discriminator 3
	movq	-392(%rbp), %rdx	# test_bb, tmp345
	movq	40(%rdx), %rdx	# test_bb_68(D)->succ, D.14350
	movl	48(%rdx), %edx	# _245->flags, D.14342
	andl	$1, %edx	#, D.14342
	testl	%edx, %edx	# D.14342
	je	.L569	#,
	.loc 1 2712 0 discriminator 1
	movq	-392(%rbp), %rdx	# test_bb, tmp346
	movq	40(%rdx), %rdx	# test_bb_68(D)->succ, iftmp.140
	jmp	.L570	#
.L569:
	.loc 1 2712 0 discriminator 2
	movq	-392(%rbp), %rdx	# test_bb, tmp347
	movq	40(%rdx), %rdx	# test_bb_68(D)->succ, D.14350
	movq	8(%rdx), %rdx	# _249->succ_next, iftmp.140
.L570:
	.loc 1 2712 0 discriminator 3
	movq	56(%rdx), %rdx	# iftmp.140_60->count, D.14351
	movq	%rdx, 56(%rax)	# D.14351, iftmp.139_59->count
	.loc 1 2713 0 is_stmt 1 discriminator 3
	movq	-392(%rbp), %rax	# test_bb, tmp348
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movl	48(%rax), %eax	# _252->flags, D.14342
	andl	$1, %eax	#, D.14342
	testl	%eax, %eax	# D.14342
	je	.L571	#,
	.loc 1 2713 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# test_bb, tmp349
	movq	40(%rax), %rax	# test_bb_68(D)->succ, iftmp.141
	jmp	.L572	#
.L571:
	.loc 1 2713 0 discriminator 2
	movq	-392(%rbp), %rax	# test_bb, tmp350
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movq	8(%rax), %rax	# _256->succ_next, iftmp.141
.L572:
	.loc 1 2713 0 discriminator 3
	movq	-144(%rbp), %rdx	# count, tmp351
	movq	%rdx, 56(%rax)	# tmp351, iftmp.141_61->count
	.loc 1 2714 0 is_stmt 1 discriminator 3
	movq	-392(%rbp), %rax	# test_bb, tmp352
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movl	48(%rax), %eax	# _258->flags, D.14342
	andl	$1, %eax	#, D.14342
	testl	%eax, %eax	# D.14342
	je	.L573	#,
	.loc 1 2714 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# test_bb, tmp353
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movq	8(%rax), %rax	# _261->succ_next, iftmp.142
	jmp	.L574	#
.L573:
	.loc 1 2714 0 discriminator 2
	movq	-392(%rbp), %rax	# test_bb, tmp354
	movq	40(%rax), %rax	# test_bb_68(D)->succ, iftmp.142
.L574:
	.loc 1 2714 0 discriminator 3
	movl	52(%rax), %eax	# iftmp.142_62->probability, D.14342
	cltq
	movq	%rax, -136(%rbp)	# tmp355, probability
	.loc 1 2715 0 is_stmt 1 discriminator 3
	movq	-392(%rbp), %rax	# test_bb, tmp356
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movl	48(%rax), %eax	# _266->flags, D.14342
	andl	$1, %eax	#, D.14342
	testl	%eax, %eax	# D.14342
	je	.L575	#,
	.loc 1 2715 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# test_bb, tmp357
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movq	8(%rax), %rax	# _269->succ_next, iftmp.143
	jmp	.L576	#
.L575:
	.loc 1 2715 0 discriminator 2
	movq	-392(%rbp), %rax	# test_bb, tmp358
	movq	40(%rax), %rax	# test_bb_68(D)->succ, iftmp.143
.L576:
	.loc 1 2716 0 is_stmt 1
	movq	-392(%rbp), %rdx	# test_bb, tmp359
	movq	40(%rdx), %rdx	# test_bb_68(D)->succ, D.14350
	movl	48(%rdx), %edx	# _272->flags, D.14342
	andl	$1, %edx	#, D.14342
	testl	%edx, %edx	# D.14342
	je	.L577	#,
	.loc 1 2716 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rdx	# test_bb, tmp360
	movq	40(%rdx), %rdx	# test_bb_68(D)->succ, iftmp.144
	jmp	.L578	#
.L577:
	.loc 1 2716 0 discriminator 2
	movq	-392(%rbp), %rdx	# test_bb, tmp361
	movq	40(%rdx), %rdx	# test_bb_68(D)->succ, D.14350
	movq	8(%rdx), %rdx	# _276->succ_next, iftmp.144
.L578:
	.loc 1 2716 0 discriminator 3
	movl	52(%rdx), %edx	# iftmp.144_64->probability, D.14342
	movl	%edx, 52(%rax)	# D.14342, iftmp.143_63->probability
	.loc 1 2717 0 is_stmt 1 discriminator 3
	movq	-392(%rbp), %rax	# test_bb, tmp362
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movl	48(%rax), %eax	# _279->flags, D.14342
	andl	$1, %eax	#, D.14342
	testl	%eax, %eax	# D.14342
	je	.L579	#,
	.loc 1 2717 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# test_bb, tmp363
	movq	40(%rax), %rax	# test_bb_68(D)->succ, iftmp.145
	jmp	.L580	#
.L579:
	.loc 1 2717 0 discriminator 2
	movq	-392(%rbp), %rax	# test_bb, tmp364
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movq	8(%rax), %rax	# _283->succ_next, iftmp.145
.L580:
	.loc 1 2717 0 discriminator 3
	movq	-136(%rbp), %rdx	# probability, tmp365
	movl	%edx, 52(%rax)	# D.14342, iftmp.145_65->probability
	.loc 1 2718 0 is_stmt 1 discriminator 3
	movq	-392(%rbp), %rax	# test_bb, tmp366
	movq	%rax, %rdi	# tmp366,
	call	update_br_prob_note	#
.L559:
.LBE29:
	.loc 1 2723 0
	movq	-328(%rbp), %rax	# head, head.146
	testq	%rax, %rax	# head.146
	je	.L581	#,
	.loc 1 2725 0
	movq	-400(%rbp), %rax	# merge_bb, tmp367
	movq	8(%rax), %rdx	# merge_bb_70(D)->end, D.14345
	movq	-320(%rbp), %rax	# end, end.147
	cmpq	%rax, %rdx	# end.147, D.14345
	jne	.L582	#,
	.loc 1 2726 0
	movq	-328(%rbp), %rax	# head, head.148
	movq	16(%rax), %rdx	# head.148_289->fld[1].rtx, D.14345
	movq	-400(%rbp), %rax	# merge_bb, tmp368
	movq	%rdx, 8(%rax)	# D.14345, merge_bb_70(D)->end
.L582:
	.loc 1 2728 0
	leaq	-320(%rbp), %rdx	#, tmp369
	leaq	-328(%rbp), %rax	#, tmp370
	movq	%rdx, %rsi	# tmp369,
	movq	%rax, %rdi	# tmp370,
	call	squeeze_notes	#
	testb	%al, %al	# D.14352
	je	.L583	#,
	.loc 1 2729 0
	movl	$1, %eax	#, D.14342
	jmp	.L587	#
.L583:
	.loc 1 2731 0
	movq	-312(%rbp), %rax	# earliest, earliest.149
	movq	16(%rax), %rdx	# earliest.149_293->fld[1].rtx, D.14345
	movq	-320(%rbp), %rcx	# end, end.150
	movq	-328(%rbp), %rax	# head, head.151
	movq	%rcx, %rsi	# end.150,
	movq	%rax, %rdi	# head.151,
	call	reorder_insns	#
.L581:
	.loc 1 2735 0
	movq	-408(%rbp), %rax	# other_bb, tmp371
	cmpq	-416(%rbp), %rax	# new_dest, tmp371
	jne	.L584	#,
	.loc 1 2737 0
	movq	-240(%rbp), %rax	# jump, tmp372
	movq	%rax, %rdi	# tmp372,
	call	delete_insn	#
	.loc 1 2738 0
	movq	-392(%rbp), %rax	# test_bb, tmp373
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movl	48(%rax), %eax	# _297->flags, D.14342
	andl	$1, %eax	#, D.14342
	testl	%eax, %eax	# D.14342
	je	.L585	#,
	.loc 1 2738 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# test_bb, tmp374
	movq	40(%rax), %rax	# test_bb_68(D)->succ, D.14350
	movq	8(%rax), %rax	# _300->succ_next, iftmp.152
	jmp	.L586	#
.L585:
	.loc 1 2738 0 discriminator 2
	movq	-392(%rbp), %rax	# test_bb, tmp375
	movq	40(%rax), %rax	# test_bb_68(D)->succ, iftmp.152
.L586:
	.loc 1 2738 0 discriminator 3
	movq	%rax, %rdi	# iftmp.152,
	call	remove_edge	#
.L584:
	.loc 1 2743 0 is_stmt 1
	movl	$1, %eax	#, D.14342
.L587:
	.loc 1 2748 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	dead_or_predicable, .-dead_or_predicable
	.section	.rodata
	.align 8
.LC10:
	.string	"\n%d possible IF blocks searched.\n"
.LC11:
	.string	"%d IF blocks converted.\n"
.LC12:
	.string	"%d basic blocks deleted.\n\n\n"
	.text
	.globl	if_convert
	.type	if_convert, @function
if_convert:
.LFB34:
	.loc 1 2755 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# x_life_data_ok, x_life_data_ok
	.loc 1 2758 0
	movl	$0, num_possible_if_blocks(%rip)	#, num_possible_if_blocks
	.loc 1 2759 0
	movl	$0, num_updated_if_blocks(%rip)	#, num_updated_if_blocks
	.loc 1 2760 0
	movl	$0, num_removed_blocks(%rip)	#, num_removed_blocks
	.loc 1 2761 0
	cmpl	$0, -36(%rbp)	#, x_life_data_ok
	setne	%al	#, life_data_ok.153
	movb	%al, life_data_ok(%rip)	# life_data_ok.153, life_data_ok
	.loc 1 2765 0
	movl	$1, %edi	#,
	call	free_basic_block_vars	#
	.loc 1 2768 0
	movq	$0, post_dominators(%rip)	#, post_dominators
	.loc 1 2769 0
	movzbl	life_data_ok(%rip), %eax	# life_data_ok, life_data_ok.154
	testb	%al, %al	# life_data_ok.154
	je	.L591	#,
	.loc 1 2771 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.155
	movl	%eax, %edx	# n_basic_blocks.155, n_basic_blocks.156
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.157
	movl	%edx, %esi	# n_basic_blocks.156,
	movl	%eax, %edi	# n_basic_blocks.158,
	call	sbitmap_vector_alloc	#
	movq	%rax, post_dominators(%rip)	# post_dominators.159, post_dominators
	.loc 1 2772 0
	movq	post_dominators(%rip), %rax	# post_dominators, post_dominators.160
	movl	$1, %edx	#,
	movq	%rax, %rsi	# post_dominators.160,
	movl	$0, %edi	#,
	call	calculate_dominance_info	#
.L591:
	.loc 1 2776 0
	movl	$0, -20(%rbp)	#, block_num
	jmp	.L592	#
.L593:
	.loc 1 2777 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.161
	movl	-20(%rbp), %edx	# block_num, tmp110
	movslq	%edx, %rdx	# tmp110, tmp109
	addq	$4, %rdx	#, tmp111
	movq	(%rax,%rdx,8), %rax	# basic_block_info.161_15->data.bb, D.14353
	movl	-20(%rbp), %edx	# block_num, tmp112
	movslq	%edx, %rdx	# tmp112, D.14354
	addq	%rdx, %rdx	# D.14354
	movq	%rdx, 80(%rax)	# D.14355, _16->aux
	.loc 1 2776 0 discriminator 2
	addl	$1, -20(%rbp)	#, block_num
.L592:
	.loc 1 2776 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.162
	cmpl	%eax, -20(%rbp)	# n_basic_blocks.162, block_num
	jl	.L593	#,
	.loc 1 2780 0 is_stmt 1
	movl	$0, -20(%rbp)	#, block_num
	jmp	.L594	#
.L596:
.LBB30:
	.loc 1 2782 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.163
	movl	-20(%rbp), %edx	# block_num, tmp114
	movslq	%edx, %rdx	# tmp114, tmp113
	addq	$4, %rdx	#, tmp115
	movq	(%rax,%rdx,8), %rax	# basic_block_info.163_23->data.bb, tmp116
	movq	%rax, -16(%rbp)	# tmp116, bb
	.loc 1 2783 0
	movq	-16(%rbp), %rax	# bb, tmp117
	movq	%rax, %rdi	# tmp117,
	call	find_if_header	#
	testl	%eax, %eax	# D.14356
	je	.L595	#,
	.loc 1 2784 0
	movq	-16(%rbp), %rax	# bb, tmp118
	movl	88(%rax), %eax	# bb_24->index, tmp119
	movl	%eax, -20(%rbp)	# tmp119, block_num
	jmp	.L594	#
.L595:
	.loc 1 2786 0
	addl	$1, -20(%rbp)	#, block_num
.L594:
.LBE30:
	.loc 1 2780 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.164
	cmpl	%eax, -20(%rbp)	# n_basic_blocks.164, block_num
	jl	.L596	#,
	.loc 1 2789 0
	movq	post_dominators(%rip), %rax	# post_dominators, post_dominators.165
	testq	%rax, %rax	# post_dominators.165
	je	.L597	#,
	.loc 1 2790 0
	movq	post_dominators(%rip), %rax	# post_dominators, post_dominators.166
	movq	%rax, %rdi	# post_dominators.166,
	call	free	#
.L597:
	.loc 1 2792 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.167
	testq	%rax, %rax	# rtl_dump_file.167
	je	.L598	#,
	.loc 1 2793 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.168
	movq	%rax, %rdi	# rtl_dump_file.168,
	call	fflush	#
.L598:
	.loc 1 2796 0
	movl	num_removed_blocks(%rip), %eax	# num_removed_blocks, num_removed_blocks.169
	testl	%eax, %eax	# num_removed_blocks.169
	je	.L599	#,
	.loc 1 2796 0 is_stmt 0 discriminator 1
	movzbl	life_data_ok(%rip), %eax	# life_data_ok, life_data_ok.170
	testb	%al, %al	# life_data_ok.170
	je	.L599	#,
.LBB31:
	.loc 1 2798 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.171
	movl	%eax, %edi	# n_basic_blocks.172,
	call	sbitmap_alloc	#
	movq	%rax, -8(%rbp)	# tmp120, update_life_blocks
	.loc 1 2799 0
	movq	-8(%rbp), %rax	# update_life_blocks, tmp121
	movq	%rax, %rdi	# tmp121,
	call	sbitmap_zero	#
	.loc 1 2802 0
	call	max_reg_num	#
	movl	max_regno(%rip), %edx	# max_regno, max_regno.173
	cmpl	%edx, %eax	# max_regno.173, D.14356
	jle	.L600	#,
	.loc 1 2804 0
	call	max_reg_num	#
	movl	%eax, max_regno(%rip)	# max_regno.174, max_regno
	.loc 1 2805 0
	movl	max_regno(%rip), %eax	# max_regno, max_regno.175
	cltq
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14354,
	call	allocate_reg_info	#
.L600:
	.loc 1 2808 0
	movl	$0, -20(%rbp)	#, block_num
	jmp	.L601	#
.L603:
	.loc 1 2809 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.176
	movl	-20(%rbp), %edx	# block_num, tmp123
	movslq	%edx, %rdx	# tmp123, tmp122
	addq	$4, %rdx	#, tmp124
	movq	(%rax,%rdx,8), %rax	# basic_block_info.176_44->data.bb, D.14353
	movq	80(%rax), %rax	# _45->aux, D.14355
	andl	$1, %eax	#, D.14354
	testq	%rax, %rax	# D.14354
	je	.L602	#,
	.loc 1 2810 0
	movl	-20(%rbp), %eax	# block_num, block_num.177
	shrl	$6, %eax	#, D.14357
	movq	-8(%rbp), %rdx	# update_life_blocks, tmp125
	movl	%eax, %ecx	# D.14357, tmp126
	addq	$2, %rcx	#, tmp127
	movq	(%rdx,%rcx,8), %rdx	# update_life_blocks_36->elms, D.14354
	movl	-20(%rbp), %ecx	# block_num, tmp128
	andl	$63, %ecx	#, D.14356
	movl	$1, %esi	#, tmp129
	salq	%cl, %rsi	# D.14356, D.14354
	movq	%rsi, %rcx	# D.14354, D.14354
	orq	%rdx, %rcx	# D.14354, D.14354
	movq	-8(%rbp), %rdx	# update_life_blocks, tmp130
	movl	%eax, %eax	# D.14357, tmp131
	addq	$2, %rax	#, tmp132
	movq	%rcx, (%rdx,%rax,8)	# D.14354, update_life_blocks_36->elms
.L602:
	.loc 1 2808 0
	addl	$1, -20(%rbp)	#, block_num
.L601:
	.loc 1 2808 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.178
	cmpl	%eax, -20(%rbp)	# n_basic_blocks.178, block_num
	jl	.L603	#,
	.loc 1 2812 0 is_stmt 1
	call	clear_aux_for_blocks	#
	.loc 1 2813 0
	movq	-8(%rbp), %rax	# update_life_blocks, tmp133
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	count_or_remove_death_notes	#
	.loc 1 2816 0
	movq	-8(%rbp), %rax	# update_life_blocks, tmp134
	movl	$25, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	update_life_info	#
	.loc 1 2820 0
	movq	-8(%rbp), %rax	# update_life_blocks, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free	#
.LBE31:
	.loc 1 2797 0
	jmp	.L604	#
.L599:
	.loc 1 2823 0
	call	clear_aux_for_blocks	#
.L604:
	.loc 1 2826 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.179
	testq	%rax, %rax	# rtl_dump_file.179
	je	.L590	#,
	.loc 1 2826 0 is_stmt 0 discriminator 1
	movl	num_possible_if_blocks(%rip), %eax	# num_possible_if_blocks, num_possible_if_blocks.180
	testl	%eax, %eax	# num_possible_if_blocks.180
	jle	.L590	#,
	.loc 1 2828 0 is_stmt 1
	movl	num_possible_if_blocks(%rip), %edx	# num_possible_if_blocks, num_possible_if_blocks.181
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.182
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.182,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2831 0
	movl	num_updated_if_blocks(%rip), %edx	# num_updated_if_blocks, num_updated_if_blocks.183
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.184
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.184,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2834 0
	movl	num_removed_blocks(%rip), %edx	# num_removed_blocks, num_removed_blocks.185
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.186
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.186,
	movl	$0, %eax	#,
	call	fprintf	#
.L590:
	.loc 1 2842 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	if_convert, .-if_convert
	.section	.rodata
	.align 16
	.type	__FUNCTION__.11357, @object
	.size	__FUNCTION__.11357, 24
__FUNCTION__.11357:
	.string	"cond_exec_process_insns"
	.type	__FUNCTION__.11658, @object
	.size	__FUNCTION__.11658, 15
__FUNCTION__.11658:
	.string	"merge_if_block"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "i386.h"
	.file 9 "machmode.h"
	.file 10 "bitmap.h"
	.file 11 "basic-block.h"
	.file 12 "varray.h"
	.file 13 "regs.h"
	.file 14 "sbitmap.h"
	.file 15 "expr.h"
	.file 16 "flags.h"
	.file 17 "hard-reg-set.h"
	.file 18 "output.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2d8f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF637
	.byte	0x1
	.long	.LASF638
	.long	.LASF639
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
	.long	0xcb8
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
	.long	0xcc8
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
	.long	.LASF640
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF91
	.byte	0x4
	.byte	0x8
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
	.uleb128 0x7
	.long	.LASF51
	.byte	0x5
	.byte	0x8c
	.long	0x1fa
	.uleb128 0x7
	.long	.LASF52
	.byte	0x5
	.byte	0x8d
	.long	0x1fa
	.uleb128 0x3
	.byte	0x8
	.long	0x24b
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF53
	.uleb128 0x7
	.long	.LASF54
	.byte	0x6
	.byte	0x30
	.long	0x25d
	.uleb128 0x4
	.long	.LASF55
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x3de
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0xf7
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0xfc
	.long	0x245
	.byte	0x8
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0xfd
	.long	0x245
	.byte	0x10
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0xfe
	.long	0x245
	.byte	0x18
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0xff
	.long	0x245
	.byte	0x20
	.uleb128 0xf
	.long	.LASF61
	.byte	0x7
	.value	0x100
	.long	0x245
	.byte	0x28
	.uleb128 0xf
	.long	.LASF62
	.byte	0x7
	.value	0x101
	.long	0x245
	.byte	0x30
	.uleb128 0xf
	.long	.LASF63
	.byte	0x7
	.value	0x102
	.long	0x245
	.byte	0x38
	.uleb128 0xf
	.long	.LASF64
	.byte	0x7
	.value	0x103
	.long	0x245
	.byte	0x40
	.uleb128 0xf
	.long	.LASF65
	.byte	0x7
	.value	0x105
	.long	0x245
	.byte	0x48
	.uleb128 0xf
	.long	.LASF66
	.byte	0x7
	.value	0x106
	.long	0x245
	.byte	0x50
	.uleb128 0xf
	.long	.LASF67
	.byte	0x7
	.value	0x107
	.long	0x245
	.byte	0x58
	.uleb128 0xf
	.long	.LASF68
	.byte	0x7
	.value	0x109
	.long	0x416
	.byte	0x60
	.uleb128 0xf
	.long	.LASF69
	.byte	0x7
	.value	0x10b
	.long	0x41c
	.byte	0x68
	.uleb128 0xf
	.long	.LASF70
	.byte	0x7
	.value	0x10d
	.long	0x139
	.byte	0x70
	.uleb128 0xf
	.long	.LASF71
	.byte	0x7
	.value	0x111
	.long	0x139
	.byte	0x74
	.uleb128 0xf
	.long	.LASF72
	.byte	0x7
	.value	0x113
	.long	0x22f
	.byte	0x78
	.uleb128 0xf
	.long	.LASF73
	.byte	0x7
	.value	0x117
	.long	0x21a
	.byte	0x80
	.uleb128 0xf
	.long	.LASF74
	.byte	0x7
	.value	0x118
	.long	0x221
	.byte	0x82
	.uleb128 0xf
	.long	.LASF75
	.byte	0x7
	.value	0x119
	.long	0x422
	.byte	0x83
	.uleb128 0xf
	.long	.LASF76
	.byte	0x7
	.value	0x11d
	.long	0x432
	.byte	0x88
	.uleb128 0xf
	.long	.LASF77
	.byte	0x7
	.value	0x126
	.long	0x23a
	.byte	0x90
	.uleb128 0xf
	.long	.LASF78
	.byte	0x7
	.value	0x12f
	.long	0x1f8
	.byte	0x98
	.uleb128 0xf
	.long	.LASF79
	.byte	0x7
	.value	0x130
	.long	0x1f8
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x7
	.value	0x131
	.long	0x1f8
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF81
	.byte	0x7
	.value	0x132
	.long	0x1f8
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF82
	.byte	0x7
	.value	0x133
	.long	0x201
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF83
	.byte	0x7
	.value	0x135
	.long	0x139
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x7
	.value	0x137
	.long	0x438
	.byte	0xc4
	.byte	0
	.uleb128 0x10
	.long	.LASF641
	.byte	0x7
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF85
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x416
	.uleb128 0x8
	.long	.LASF86
	.byte	0x7
	.byte	0xa2
	.long	0x416
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0x7
	.byte	0xa3
	.long	0x41c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0x7
	.byte	0xa7
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3e5
	.uleb128 0x3
	.byte	0x8
	.long	0x25d
	.uleb128 0x11
	.long	0x24b
	.long	0x432
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3de
	.uleb128 0x11
	.long	0x24b
	.long	0x448
	.uleb128 0x12
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x44e
	.uleb128 0x13
	.long	0x24b
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF89
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF90
	.uleb128 0x14
	.long	.LASF92
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x5d6
	.uleb128 0xd
	.long	.LASF93
	.sleb128 0
	.uleb128 0xd
	.long	.LASF94
	.sleb128 1
	.uleb128 0xd
	.long	.LASF95
	.sleb128 2
	.uleb128 0xd
	.long	.LASF96
	.sleb128 3
	.uleb128 0xd
	.long	.LASF97
	.sleb128 4
	.uleb128 0xd
	.long	.LASF98
	.sleb128 5
	.uleb128 0xd
	.long	.LASF99
	.sleb128 6
	.uleb128 0xd
	.long	.LASF100
	.sleb128 7
	.uleb128 0xd
	.long	.LASF101
	.sleb128 8
	.uleb128 0xd
	.long	.LASF102
	.sleb128 9
	.uleb128 0xd
	.long	.LASF103
	.sleb128 10
	.uleb128 0xd
	.long	.LASF104
	.sleb128 11
	.uleb128 0xd
	.long	.LASF105
	.sleb128 12
	.uleb128 0xd
	.long	.LASF106
	.sleb128 13
	.uleb128 0xd
	.long	.LASF107
	.sleb128 14
	.uleb128 0xd
	.long	.LASF108
	.sleb128 15
	.uleb128 0xd
	.long	.LASF109
	.sleb128 16
	.uleb128 0xd
	.long	.LASF110
	.sleb128 17
	.uleb128 0xd
	.long	.LASF111
	.sleb128 18
	.uleb128 0xd
	.long	.LASF112
	.sleb128 19
	.uleb128 0xd
	.long	.LASF113
	.sleb128 20
	.uleb128 0xd
	.long	.LASF114
	.sleb128 21
	.uleb128 0xd
	.long	.LASF115
	.sleb128 22
	.uleb128 0xd
	.long	.LASF116
	.sleb128 23
	.uleb128 0xd
	.long	.LASF117
	.sleb128 24
	.uleb128 0xd
	.long	.LASF118
	.sleb128 25
	.uleb128 0xd
	.long	.LASF119
	.sleb128 26
	.uleb128 0xd
	.long	.LASF120
	.sleb128 27
	.uleb128 0xd
	.long	.LASF121
	.sleb128 28
	.uleb128 0xd
	.long	.LASF122
	.sleb128 29
	.uleb128 0xd
	.long	.LASF123
	.sleb128 30
	.uleb128 0xd
	.long	.LASF124
	.sleb128 31
	.uleb128 0xd
	.long	.LASF125
	.sleb128 32
	.uleb128 0xd
	.long	.LASF126
	.sleb128 33
	.uleb128 0xd
	.long	.LASF127
	.sleb128 34
	.uleb128 0xd
	.long	.LASF128
	.sleb128 35
	.uleb128 0xd
	.long	.LASF129
	.sleb128 36
	.uleb128 0xd
	.long	.LASF130
	.sleb128 37
	.uleb128 0xd
	.long	.LASF131
	.sleb128 38
	.uleb128 0xd
	.long	.LASF132
	.sleb128 39
	.uleb128 0xd
	.long	.LASF133
	.sleb128 40
	.uleb128 0xd
	.long	.LASF134
	.sleb128 41
	.uleb128 0xd
	.long	.LASF135
	.sleb128 42
	.uleb128 0xd
	.long	.LASF136
	.sleb128 43
	.uleb128 0xd
	.long	.LASF137
	.sleb128 44
	.uleb128 0xd
	.long	.LASF138
	.sleb128 45
	.uleb128 0xd
	.long	.LASF139
	.sleb128 46
	.uleb128 0xd
	.long	.LASF140
	.sleb128 47
	.uleb128 0xd
	.long	.LASF141
	.sleb128 48
	.uleb128 0xd
	.long	.LASF142
	.sleb128 49
	.uleb128 0xd
	.long	.LASF143
	.sleb128 50
	.uleb128 0xd
	.long	.LASF144
	.sleb128 51
	.uleb128 0xd
	.long	.LASF145
	.sleb128 52
	.uleb128 0xd
	.long	.LASF146
	.sleb128 53
	.uleb128 0xd
	.long	.LASF147
	.sleb128 54
	.uleb128 0xd
	.long	.LASF148
	.sleb128 55
	.uleb128 0xd
	.long	.LASF149
	.sleb128 56
	.uleb128 0xd
	.long	.LASF150
	.sleb128 57
	.uleb128 0xd
	.long	.LASF151
	.sleb128 58
	.uleb128 0xd
	.long	.LASF152
	.sleb128 59
	.byte	0
	.uleb128 0x14
	.long	.LASF153
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x61f
	.uleb128 0xd
	.long	.LASF154
	.sleb128 0
	.uleb128 0xd
	.long	.LASF155
	.sleb128 1
	.uleb128 0xd
	.long	.LASF156
	.sleb128 2
	.uleb128 0xd
	.long	.LASF157
	.sleb128 3
	.uleb128 0xd
	.long	.LASF158
	.sleb128 4
	.uleb128 0xd
	.long	.LASF159
	.sleb128 5
	.uleb128 0xd
	.long	.LASF160
	.sleb128 6
	.uleb128 0xd
	.long	.LASF161
	.sleb128 7
	.uleb128 0xd
	.long	.LASF162
	.sleb128 8
	.uleb128 0xd
	.long	.LASF163
	.sleb128 9
	.byte	0
	.uleb128 0x14
	.long	.LASF164
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xa1b
	.uleb128 0xd
	.long	.LASF165
	.sleb128 0
	.uleb128 0x15
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF166
	.sleb128 2
	.uleb128 0xd
	.long	.LASF167
	.sleb128 3
	.uleb128 0xd
	.long	.LASF168
	.sleb128 4
	.uleb128 0xd
	.long	.LASF169
	.sleb128 5
	.uleb128 0xd
	.long	.LASF170
	.sleb128 6
	.uleb128 0xd
	.long	.LASF171
	.sleb128 7
	.uleb128 0xd
	.long	.LASF172
	.sleb128 8
	.uleb128 0xd
	.long	.LASF173
	.sleb128 9
	.uleb128 0xd
	.long	.LASF174
	.sleb128 10
	.uleb128 0xd
	.long	.LASF175
	.sleb128 11
	.uleb128 0xd
	.long	.LASF176
	.sleb128 12
	.uleb128 0xd
	.long	.LASF177
	.sleb128 13
	.uleb128 0xd
	.long	.LASF178
	.sleb128 14
	.uleb128 0xd
	.long	.LASF179
	.sleb128 15
	.uleb128 0xd
	.long	.LASF180
	.sleb128 16
	.uleb128 0xd
	.long	.LASF181
	.sleb128 17
	.uleb128 0xd
	.long	.LASF182
	.sleb128 18
	.uleb128 0xd
	.long	.LASF183
	.sleb128 19
	.uleb128 0xd
	.long	.LASF184
	.sleb128 20
	.uleb128 0xd
	.long	.LASF185
	.sleb128 21
	.uleb128 0xd
	.long	.LASF186
	.sleb128 22
	.uleb128 0xd
	.long	.LASF187
	.sleb128 23
	.uleb128 0xd
	.long	.LASF188
	.sleb128 24
	.uleb128 0xd
	.long	.LASF189
	.sleb128 25
	.uleb128 0xd
	.long	.LASF190
	.sleb128 26
	.uleb128 0xd
	.long	.LASF191
	.sleb128 27
	.uleb128 0xd
	.long	.LASF192
	.sleb128 28
	.uleb128 0xd
	.long	.LASF193
	.sleb128 29
	.uleb128 0xd
	.long	.LASF194
	.sleb128 30
	.uleb128 0xd
	.long	.LASF195
	.sleb128 31
	.uleb128 0xd
	.long	.LASF196
	.sleb128 32
	.uleb128 0xd
	.long	.LASF197
	.sleb128 33
	.uleb128 0xd
	.long	.LASF198
	.sleb128 34
	.uleb128 0xd
	.long	.LASF199
	.sleb128 35
	.uleb128 0xd
	.long	.LASF200
	.sleb128 36
	.uleb128 0xd
	.long	.LASF201
	.sleb128 37
	.uleb128 0xd
	.long	.LASF202
	.sleb128 38
	.uleb128 0xd
	.long	.LASF203
	.sleb128 39
	.uleb128 0xd
	.long	.LASF204
	.sleb128 40
	.uleb128 0xd
	.long	.LASF205
	.sleb128 41
	.uleb128 0xd
	.long	.LASF206
	.sleb128 42
	.uleb128 0xd
	.long	.LASF207
	.sleb128 43
	.uleb128 0xd
	.long	.LASF208
	.sleb128 44
	.uleb128 0xd
	.long	.LASF209
	.sleb128 45
	.uleb128 0xd
	.long	.LASF210
	.sleb128 46
	.uleb128 0x15
	.string	"SET"
	.sleb128 47
	.uleb128 0x15
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF211
	.sleb128 49
	.uleb128 0xd
	.long	.LASF212
	.sleb128 50
	.uleb128 0xd
	.long	.LASF213
	.sleb128 51
	.uleb128 0xd
	.long	.LASF214
	.sleb128 52
	.uleb128 0xd
	.long	.LASF215
	.sleb128 53
	.uleb128 0xd
	.long	.LASF216
	.sleb128 54
	.uleb128 0xd
	.long	.LASF217
	.sleb128 55
	.uleb128 0xd
	.long	.LASF218
	.sleb128 56
	.uleb128 0xd
	.long	.LASF219
	.sleb128 57
	.uleb128 0xd
	.long	.LASF220
	.sleb128 58
	.uleb128 0x15
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF221
	.sleb128 60
	.uleb128 0x15
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF222
	.sleb128 62
	.uleb128 0xd
	.long	.LASF223
	.sleb128 63
	.uleb128 0xd
	.long	.LASF224
	.sleb128 64
	.uleb128 0xd
	.long	.LASF225
	.sleb128 65
	.uleb128 0x15
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF226
	.sleb128 67
	.uleb128 0xd
	.long	.LASF227
	.sleb128 68
	.uleb128 0x15
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF228
	.sleb128 70
	.uleb128 0xd
	.long	.LASF229
	.sleb128 71
	.uleb128 0xd
	.long	.LASF230
	.sleb128 72
	.uleb128 0xd
	.long	.LASF231
	.sleb128 73
	.uleb128 0xd
	.long	.LASF232
	.sleb128 74
	.uleb128 0xd
	.long	.LASF233
	.sleb128 75
	.uleb128 0xd
	.long	.LASF234
	.sleb128 76
	.uleb128 0x15
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF235
	.sleb128 78
	.uleb128 0x15
	.string	"DIV"
	.sleb128 79
	.uleb128 0x15
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF236
	.sleb128 81
	.uleb128 0xd
	.long	.LASF237
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
	.uleb128 0xd
	.long	.LASF238
	.sleb128 87
	.uleb128 0xd
	.long	.LASF239
	.sleb128 88
	.uleb128 0xd
	.long	.LASF240
	.sleb128 89
	.uleb128 0xd
	.long	.LASF241
	.sleb128 90
	.uleb128 0xd
	.long	.LASF242
	.sleb128 91
	.uleb128 0xd
	.long	.LASF243
	.sleb128 92
	.uleb128 0xd
	.long	.LASF244
	.sleb128 93
	.uleb128 0xd
	.long	.LASF245
	.sleb128 94
	.uleb128 0xd
	.long	.LASF246
	.sleb128 95
	.uleb128 0xd
	.long	.LASF247
	.sleb128 96
	.uleb128 0xd
	.long	.LASF248
	.sleb128 97
	.uleb128 0xd
	.long	.LASF249
	.sleb128 98
	.uleb128 0xd
	.long	.LASF250
	.sleb128 99
	.uleb128 0xd
	.long	.LASF251
	.sleb128 100
	.uleb128 0xd
	.long	.LASF252
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
	.uleb128 0xd
	.long	.LASF253
	.sleb128 112
	.uleb128 0xd
	.long	.LASF254
	.sleb128 113
	.uleb128 0xd
	.long	.LASF255
	.sleb128 114
	.uleb128 0xd
	.long	.LASF256
	.sleb128 115
	.uleb128 0xd
	.long	.LASF257
	.sleb128 116
	.uleb128 0xd
	.long	.LASF258
	.sleb128 117
	.uleb128 0xd
	.long	.LASF259
	.sleb128 118
	.uleb128 0xd
	.long	.LASF260
	.sleb128 119
	.uleb128 0xd
	.long	.LASF261
	.sleb128 120
	.uleb128 0xd
	.long	.LASF262
	.sleb128 121
	.uleb128 0xd
	.long	.LASF263
	.sleb128 122
	.uleb128 0xd
	.long	.LASF264
	.sleb128 123
	.uleb128 0xd
	.long	.LASF265
	.sleb128 124
	.uleb128 0xd
	.long	.LASF266
	.sleb128 125
	.uleb128 0x15
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF267
	.sleb128 127
	.uleb128 0xd
	.long	.LASF268
	.sleb128 128
	.uleb128 0x15
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF269
	.sleb128 130
	.uleb128 0x15
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF270
	.sleb128 132
	.uleb128 0xd
	.long	.LASF271
	.sleb128 133
	.uleb128 0xd
	.long	.LASF272
	.sleb128 134
	.uleb128 0xd
	.long	.LASF273
	.sleb128 135
	.uleb128 0xd
	.long	.LASF274
	.sleb128 136
	.uleb128 0xd
	.long	.LASF275
	.sleb128 137
	.uleb128 0xd
	.long	.LASF276
	.sleb128 138
	.uleb128 0xd
	.long	.LASF277
	.sleb128 139
	.uleb128 0xd
	.long	.LASF278
	.sleb128 140
	.uleb128 0xd
	.long	.LASF279
	.sleb128 141
	.uleb128 0xd
	.long	.LASF280
	.sleb128 142
	.uleb128 0xd
	.long	.LASF281
	.sleb128 143
	.uleb128 0xd
	.long	.LASF282
	.sleb128 144
	.uleb128 0xd
	.long	.LASF283
	.sleb128 145
	.uleb128 0xd
	.long	.LASF284
	.sleb128 146
	.uleb128 0xd
	.long	.LASF285
	.sleb128 147
	.uleb128 0xd
	.long	.LASF286
	.sleb128 148
	.uleb128 0xd
	.long	.LASF287
	.sleb128 149
	.uleb128 0xd
	.long	.LASF288
	.sleb128 150
	.uleb128 0xd
	.long	.LASF289
	.sleb128 151
	.uleb128 0x15
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF290
	.sleb128 153
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xa9c
	.uleb128 0x5
	.long	.LASF291
	.byte	0x2
	.byte	0x47
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF292
	.byte	0x2
	.byte	0x49
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF293
	.byte	0x2
	.byte	0x4a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF294
	.byte	0x2
	.byte	0x4c
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF295
	.byte	0x2
	.byte	0x4e
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF296
	.byte	0x2
	.byte	0x50
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF297
	.byte	0x2
	.byte	0x53
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF298
	.byte	0x2
	.byte	0x55
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF299
	.byte	0x2
	.byte	0x56
	.long	0xa1b
	.uleb128 0x16
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xaec
	.uleb128 0x8
	.long	.LASF300
	.byte	0x2
	.byte	0x5e
	.long	0x1fa
	.byte	0
	.uleb128 0x8
	.long	.LASF301
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF302
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF303
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF304
	.byte	0x2
	.byte	0x62
	.long	0x1f1
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF305
	.byte	0x2
	.byte	0x63
	.long	0xaa7
	.uleb128 0x17
	.long	.LASF405
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xb92
	.uleb128 0x18
	.long	.LASF306
	.byte	0x2
	.byte	0x69
	.long	0x1fa
	.uleb128 0x18
	.long	.LASF307
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x18
	.long	.LASF308
	.byte	0x2
	.byte	0x6b
	.long	0x1f1
	.uleb128 0x18
	.long	.LASF309
	.byte	0x2
	.byte	0x6c
	.long	0x448
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
	.long	.LASF310
	.byte	0x2
	.byte	0x6f
	.long	0x461
	.uleb128 0x18
	.long	.LASF311
	.byte	0x2
	.byte	0x70
	.long	0xa9c
	.uleb128 0x18
	.long	.LASF312
	.byte	0x2
	.byte	0x71
	.long	0xb97
	.uleb128 0x18
	.long	.LASF313
	.byte	0x2
	.byte	0x72
	.long	0xbce
	.uleb128 0x18
	.long	.LASF314
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x19
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xca1
	.uleb128 0x18
	.long	.LASF315
	.byte	0x2
	.byte	0x75
	.long	0xca7
	.byte	0
	.uleb128 0x1a
	.long	.LASF414
	.uleb128 0x3
	.byte	0x8
	.long	0xb92
	.uleb128 0x4
	.long	.LASF316
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xbce
	.uleb128 0x8
	.long	.LASF317
	.byte	0xa
	.byte	0x35
	.long	0x123f
	.byte	0
	.uleb128 0x8
	.long	.LASF318
	.byte	0xa
	.byte	0x36
	.long	0x123f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF319
	.byte	0xa
	.byte	0x37
	.long	0x1f1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xb9d
	.uleb128 0x4
	.long	.LASF320
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xca1
	.uleb128 0x8
	.long	.LASF321
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
	.long	.LASF322
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF323
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF324
	.byte	0xb
	.byte	0xb7
	.long	0x1374
	.byte	0x20
	.uleb128 0x8
	.long	.LASF325
	.byte	0xb
	.byte	0xb7
	.long	0x1374
	.byte	0x28
	.uleb128 0x8
	.long	.LASF326
	.byte	0xb
	.byte	0xbc
	.long	0x12df
	.byte	0x30
	.uleb128 0x8
	.long	.LASF327
	.byte	0xb
	.byte	0xc0
	.long	0x12df
	.byte	0x38
	.uleb128 0x8
	.long	.LASF328
	.byte	0xb
	.byte	0xc6
	.long	0x12df
	.byte	0x40
	.uleb128 0x8
	.long	.LASF329
	.byte	0xb
	.byte	0xc8
	.long	0x12df
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x1f8
	.byte	0x50
	.uleb128 0x8
	.long	.LASF330
	.byte	0xb
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF331
	.byte	0xb
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0xd4
	.long	0x12ea
	.byte	0x60
	.uleb128 0x8
	.long	.LASF333
	.byte	0xb
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbd4
	.uleb128 0x3
	.byte	0x8
	.long	0xaec
	.uleb128 0x7
	.long	.LASF335
	.byte	0x2
	.byte	0x76
	.long	0xaf7
	.uleb128 0x11
	.long	0xcad
	.long	0xcc8
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x2d
	.long	0xcd8
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF336
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xd9a
	.uleb128 0xd
	.long	.LASF337
	.sleb128 1
	.uleb128 0xd
	.long	.LASF338
	.sleb128 2
	.uleb128 0xd
	.long	.LASF339
	.sleb128 3
	.uleb128 0xd
	.long	.LASF340
	.sleb128 4
	.uleb128 0xd
	.long	.LASF341
	.sleb128 5
	.uleb128 0xd
	.long	.LASF342
	.sleb128 6
	.uleb128 0xd
	.long	.LASF343
	.sleb128 7
	.uleb128 0xd
	.long	.LASF344
	.sleb128 8
	.uleb128 0xd
	.long	.LASF345
	.sleb128 9
	.uleb128 0xd
	.long	.LASF346
	.sleb128 10
	.uleb128 0xd
	.long	.LASF347
	.sleb128 11
	.uleb128 0xd
	.long	.LASF348
	.sleb128 12
	.uleb128 0xd
	.long	.LASF349
	.sleb128 13
	.uleb128 0xd
	.long	.LASF350
	.sleb128 14
	.uleb128 0xd
	.long	.LASF351
	.sleb128 15
	.uleb128 0xd
	.long	.LASF352
	.sleb128 16
	.uleb128 0xd
	.long	.LASF353
	.sleb128 17
	.uleb128 0xd
	.long	.LASF354
	.sleb128 18
	.uleb128 0xd
	.long	.LASF355
	.sleb128 19
	.uleb128 0xd
	.long	.LASF356
	.sleb128 20
	.uleb128 0xd
	.long	.LASF357
	.sleb128 21
	.uleb128 0xd
	.long	.LASF358
	.sleb128 22
	.uleb128 0xd
	.long	.LASF359
	.sleb128 23
	.uleb128 0xd
	.long	.LASF360
	.sleb128 24
	.uleb128 0xd
	.long	.LASF361
	.sleb128 25
	.uleb128 0xd
	.long	.LASF362
	.sleb128 26
	.uleb128 0xd
	.long	.LASF363
	.sleb128 27
	.uleb128 0xd
	.long	.LASF364
	.sleb128 28
	.uleb128 0xd
	.long	.LASF365
	.sleb128 29
	.uleb128 0xd
	.long	.LASF366
	.sleb128 30
	.byte	0
	.uleb128 0xc
	.long	.LASF367
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xe49
	.uleb128 0xd
	.long	.LASF368
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF369
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF370
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF371
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF372
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF373
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF374
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF375
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF376
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF377
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF378
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF379
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF380
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF381
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF382
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF383
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF384
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF385
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF386
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF387
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF388
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF389
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF390
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xc
	.long	.LASF391
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xea5
	.uleb128 0xd
	.long	.LASF392
	.sleb128 0
	.uleb128 0xd
	.long	.LASF393
	.sleb128 1
	.uleb128 0xd
	.long	.LASF394
	.sleb128 2
	.uleb128 0xd
	.long	.LASF395
	.sleb128 3
	.uleb128 0xd
	.long	.LASF396
	.sleb128 4
	.uleb128 0xd
	.long	.LASF397
	.sleb128 5
	.uleb128 0xd
	.long	.LASF398
	.sleb128 6
	.uleb128 0xd
	.long	.LASF399
	.sleb128 7
	.uleb128 0xd
	.long	.LASF400
	.sleb128 8
	.uleb128 0xd
	.long	.LASF401
	.sleb128 9
	.uleb128 0xd
	.long	.LASF402
	.sleb128 10
	.uleb128 0xd
	.long	.LASF403
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF404
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0xeca
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
	.long	0x1f1
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.long	.LASF406
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0xfaf
	.uleb128 0x19
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x422
	.uleb128 0x19
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0xfaf
	.uleb128 0x19
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0xfbf
	.uleb128 0x19
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0xfcf
	.uleb128 0x19
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0xfdf
	.uleb128 0x19
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0xfef
	.uleb128 0x19
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0xfff
	.uleb128 0x19
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0x100f
	.uleb128 0x18
	.long	.LASF407
	.byte	0xc
	.byte	0x43
	.long	0xfff
	.uleb128 0x18
	.long	.LASF408
	.byte	0xc
	.byte	0x44
	.long	0x100f
	.uleb128 0x18
	.long	.LASF409
	.byte	0xc
	.byte	0x45
	.long	0x101f
	.uleb128 0x18
	.long	.LASF410
	.byte	0xc
	.byte	0x46
	.long	0x102f
	.uleb128 0x19
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0x103f
	.uleb128 0x18
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0x104f
	.uleb128 0x18
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0x105f
	.uleb128 0x18
	.long	.LASF411
	.byte	0xc
	.byte	0x4a
	.long	0x106f
	.uleb128 0x18
	.long	.LASF412
	.byte	0xc
	.byte	0x4b
	.long	0x107f
	.uleb128 0x19
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0x109a
	.uleb128 0x18
	.long	.LASF413
	.byte	0xc
	.byte	0x4d
	.long	0x1141
	.uleb128 0x19
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0x1151
	.uleb128 0x19
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0x1161
	.byte	0
	.uleb128 0x11
	.long	0x213
	.long	0xfbf
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x228
	.long	0xfcf
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x21a
	.long	0xfdf
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x139
	.long	0xfef
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x1f1
	.long	0xfff
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x1fa
	.long	0x100f
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x20c
	.long	0x101f
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x1f8
	.long	0x102f
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x245
	.long	0x103f
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x38
	.long	0x104f
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0xf8
	.long	0x105f
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x12e
	.long	0x106f
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0xbce
	.long	0x107f
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x108f
	.long	0x108f
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1095
	.uleb128 0x1a
	.long	.LASF415
	.uleb128 0x11
	.long	0x10aa
	.long	0x10aa
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10b0
	.uleb128 0x4
	.long	.LASF416
	.byte	0x2c
	.byte	0xd
	.byte	0x2d
	.long	0x1141
	.uleb128 0x8
	.long	.LASF417
	.byte	0xd
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF418
	.byte	0xd
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF419
	.byte	0xd
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF420
	.byte	0xd
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF421
	.byte	0xd
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF422
	.byte	0xd
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF423
	.byte	0xd
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF424
	.byte	0xd
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF425
	.byte	0xd
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF426
	.byte	0xd
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF427
	.byte	0xd
	.byte	0x3d
	.long	0x24b
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	0xea5
	.long	0x1151
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0xca1
	.long	0x1161
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x1171
	.long	0x1171
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1177
	.uleb128 0x1a
	.long	.LASF428
	.uleb128 0x7
	.long	.LASF429
	.byte	0xc
	.byte	0x50
	.long	0xeca
	.uleb128 0x4
	.long	.LASF430
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x11d0
	.uleb128 0x8
	.long	.LASF431
	.byte	0xc
	.byte	0x54
	.long	0x201
	.byte	0
	.uleb128 0x8
	.long	.LASF432
	.byte	0xc
	.byte	0x55
	.long	0x201
	.byte	0x8
	.uleb128 0x8
	.long	.LASF433
	.byte	0xc
	.byte	0x57
	.long	0x201
	.byte	0x10
	.uleb128 0x8
	.long	.LASF434
	.byte	0xc
	.byte	0x58
	.long	0x448
	.byte	0x18
	.uleb128 0x8
	.long	.LASF435
	.byte	0xc
	.byte	0x59
	.long	0x117c
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF436
	.byte	0xc
	.byte	0x5a
	.long	0x11db
	.uleb128 0x3
	.byte	0x8
	.long	0x1187
	.uleb128 0x4
	.long	.LASF437
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x121e
	.uleb128 0x8
	.long	.LASF438
	.byte	0xa
	.byte	0x2d
	.long	0x121e
	.byte	0
	.uleb128 0x8
	.long	.LASF439
	.byte	0xa
	.byte	0x2e
	.long	0x121e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF319
	.byte	0xa
	.byte	0x2f
	.long	0x1f1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF440
	.byte	0xa
	.byte	0x30
	.long	0x1224
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11e1
	.uleb128 0x11
	.long	0x20c
	.long	0x1234
	.uleb128 0x12
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF441
	.byte	0xa
	.byte	0x31
	.long	0x11e1
	.uleb128 0x3
	.byte	0x8
	.long	0x1234
	.uleb128 0x7
	.long	.LASF442
	.byte	0xa
	.byte	0x39
	.long	0xb9d
	.uleb128 0x7
	.long	.LASF411
	.byte	0xa
	.byte	0x39
	.long	0xbce
	.uleb128 0x14
	.long	.LASF443
	.byte	0x4
	.byte	0xa
	.byte	0x3c
	.long	0x1286
	.uleb128 0xd
	.long	.LASF444
	.sleb128 0
	.uleb128 0xd
	.long	.LASF445
	.sleb128 1
	.uleb128 0xd
	.long	.LASF446
	.sleb128 2
	.uleb128 0xd
	.long	.LASF447
	.sleb128 3
	.uleb128 0xd
	.long	.LASF448
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF449
	.byte	0x18
	.byte	0xe
	.byte	0x1f
	.long	0x12c3
	.uleb128 0x8
	.long	.LASF450
	.byte	0xe
	.byte	0x21
	.long	0x1f1
	.byte	0
	.uleb128 0x8
	.long	.LASF303
	.byte	0xe
	.byte	0x22
	.long	0x1f1
	.byte	0x4
	.uleb128 0x8
	.long	.LASF451
	.byte	0xe
	.byte	0x23
	.long	0x1f1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF452
	.byte	0xe
	.byte	0x24
	.long	0x100f
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF453
	.byte	0xe
	.byte	0x25
	.long	0x12ce
	.uleb128 0x3
	.byte	0x8
	.long	0x1286
	.uleb128 0x7
	.long	.LASF454
	.byte	0xb
	.byte	0x1f
	.long	0x1245
	.uleb128 0x7
	.long	.LASF455
	.byte	0xb
	.byte	0x21
	.long	0x1250
	.uleb128 0x7
	.long	.LASF456
	.byte	0xb
	.byte	0x74
	.long	0x1fa
	.uleb128 0x4
	.long	.LASF457
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x136e
	.uleb128 0x8
	.long	.LASF458
	.byte	0xb
	.byte	0x79
	.long	0x136e
	.byte	0
	.uleb128 0x8
	.long	.LASF459
	.byte	0xb
	.byte	0x79
	.long	0x136e
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xca1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF460
	.byte	0xb
	.byte	0x7c
	.long	0xca1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF461
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x1f8
	.byte	0x28
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF462
	.byte	0xb
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0x86
	.long	0x12ea
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12f5
	.uleb128 0x7
	.long	.LASF463
	.byte	0xb
	.byte	0x88
	.long	0x136e
	.uleb128 0x7
	.long	.LASF426
	.byte	0xb
	.byte	0xdb
	.long	0xca1
	.uleb128 0x3
	.byte	0x8
	.long	0x12c3
	.uleb128 0xc
	.long	.LASF464
	.byte	0x4
	.byte	0xb
	.value	0x223
	.long	0x13b0
	.uleb128 0xd
	.long	.LASF465
	.sleb128 0
	.uleb128 0xd
	.long	.LASF466
	.sleb128 1
	.uleb128 0xd
	.long	.LASF467
	.sleb128 2
	.byte	0
	.uleb128 0xc
	.long	.LASF468
	.byte	0x4
	.byte	0xb
	.value	0x2c1
	.long	0x13ca
	.uleb128 0xd
	.long	.LASF469
	.sleb128 0
	.uleb128 0xd
	.long	.LASF470
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.long	.LASF471
	.byte	0x4
	.byte	0xf
	.value	0x100
	.long	0x13f6
	.uleb128 0xd
	.long	.LASF472
	.sleb128 0
	.uleb128 0xd
	.long	.LASF473
	.sleb128 1
	.uleb128 0xd
	.long	.LASF474
	.sleb128 2
	.uleb128 0xd
	.long	.LASF475
	.sleb128 3
	.uleb128 0xd
	.long	.LASF476
	.sleb128 4
	.byte	0
	.uleb128 0x1b
	.long	.LASF477
	.byte	0x48
	.byte	0x1
	.value	0x1df
	.long	0x1473
	.uleb128 0xf
	.long	.LASF478
	.byte	0x1
	.value	0x1e1
	.long	0x137f
	.byte	0
	.uleb128 0xf
	.long	.LASF479
	.byte	0x1
	.value	0x1e2
	.long	0x2d
	.byte	0x8
	.uleb128 0xf
	.long	.LASF480
	.byte	0x1
	.value	0x1e2
	.long	0x2d
	.byte	0x10
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.value	0x1e3
	.long	0x2d
	.byte	0x18
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.value	0x1e3
	.long	0x2d
	.byte	0x20
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.value	0x1e3
	.long	0x2d
	.byte	0x28
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.value	0x1e4
	.long	0x2d
	.byte	0x30
	.uleb128 0xf
	.long	.LASF481
	.byte	0x1
	.value	0x1e4
	.long	0x2d
	.byte	0x38
	.uleb128 0xf
	.long	.LASF482
	.byte	0x1
	.value	0x1e4
	.long	0x2d
	.byte	0x40
	.byte	0
	.uleb128 0x1d
	.long	.LASF484
	.byte	0x1
	.byte	0x7f
	.long	0x139
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x14be
	.uleb128 0x1e
	.string	"bb"
	.byte	0x1
	.byte	0x80
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF332
	.byte	0x1
	.byte	0x82
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.long	.LASF483
	.byte	0x1
	.byte	0x83
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF485
	.byte	0x1
	.byte	0x95
	.long	0x2d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x14fb
	.uleb128 0x1e
	.string	"bb"
	.byte	0x1
	.byte	0x96
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF483
	.byte	0x1
	.byte	0x98
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF486
	.byte	0x1
	.byte	0xb1
	.long	0x139
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1538
	.uleb128 0x1e
	.string	"bb"
	.byte	0x1
	.byte	0xb2
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF483
	.byte	0x1
	.byte	0xb3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF487
	.byte	0x1
	.byte	0xc6
	.long	0x139
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1568
	.uleb128 0x20
	.long	.LASF483
	.byte	0x1
	.byte	0xc7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF488
	.byte	0x1
	.byte	0xd7
	.long	0x139
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1620
	.uleb128 0x20
	.long	.LASF489
	.byte	0x1
	.byte	0xd8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"end"
	.byte	0x1
	.byte	0xd9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF490
	.byte	0x1
	.byte	0xda
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF491
	.byte	0x1
	.byte	0xdb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF492
	.byte	0x1
	.byte	0xdc
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1f
	.long	.LASF493
	.byte	0x1
	.byte	0xde
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF483
	.byte	0x1
	.byte	0xdf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF494
	.byte	0x1
	.byte	0xe0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF513
	.byte	0x1
	.value	0x115
	.quad	.L28
	.uleb128 0x23
	.long	.LASF569
	.long	0x1630
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11357
	.byte	0
	.uleb128 0x11
	.long	0x24b
	.long	0x1630
	.uleb128 0x12
	.long	0x140
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.long	0x1620
	.uleb128 0x24
	.long	.LASF495
	.byte	0x1
	.value	0x120
	.long	0x2d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x16a6
	.uleb128 0x25
	.long	.LASF2
	.byte	0x1
	.value	0x121
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF496
	.byte	0x1
	.value	0x123
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF481
	.byte	0x1
	.value	0x123
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x28
	.string	"rev"
	.byte	0x1
	.value	0x130
	.long	0x61f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF497
	.byte	0x1
	.value	0x140
	.long	0x139
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x17e3
	.uleb128 0x25
	.long	.LASF478
	.byte	0x1
	.value	0x141
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.long	.LASF498
	.byte	0x1
	.value	0x142
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.long	.LASF499
	.byte	0x1
	.value	0x143
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.long	.LASF500
	.byte	0x1
	.value	0x144
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF501
	.byte	0x1
	.value	0x146
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF502
	.byte	0x1
	.value	0x147
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF503
	.byte	0x1
	.value	0x148
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF504
	.byte	0x1
	.value	0x149
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF505
	.byte	0x1
	.value	0x14a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"max"
	.byte	0x1
	.value	0x14b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF506
	.byte	0x1
	.value	0x14c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF507
	.byte	0x1
	.value	0x14d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF508
	.byte	0x1
	.value	0x14e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF509
	.byte	0x1
	.value	0x14f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF510
	.byte	0x1
	.value	0x150
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF511
	.byte	0x1
	.value	0x151
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x26
	.long	.LASF512
	.byte	0x1
	.value	0x152
	.long	0x61f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF514
	.byte	0x1
	.value	0x1cf
	.quad	.L62
	.byte	0
	.uleb128 0x24
	.long	.LASF515
	.byte	0x1
	.value	0x1fa
	.long	0x2d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1890
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x1fb
	.long	0x1890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1fc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF517
	.byte	0x1
	.value	0x1fd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.long	.LASF518
	.byte	0x1
	.value	0x1fd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF481
	.byte	0x1
	.value	0x1ff
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF519
	.byte	0x1
	.value	0x200
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x201
	.long	0x61f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x214
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13f6
	.uleb128 0x2a
	.long	.LASF566
	.byte	0x1
	.value	0x237
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x191a
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x238
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"y"
	.byte	0x1
	.value	0x238
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF520
	.byte	0x1
	.value	0x23a
	.long	0x461
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF521
	.byte	0x1
	.value	0x23a
	.long	0x461
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF522
	.byte	0x1
	.value	0x23b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF523
	.byte	0x1
	.value	0x23b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF524
	.byte	0x1
	.value	0x23c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF525
	.byte	0x1
	.value	0x254
	.long	0x139
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1979
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x255
	.long	0x1890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF517
	.byte	0x1
	.value	0x257
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF526
	.byte	0x1
	.value	0x258
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"seq"
	.byte	0x1
	.value	0x258
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF527
	.byte	0x1
	.value	0x27f
	.long	0x139
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a48
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x280
	.long	0x1890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF526
	.byte	0x1
	.value	0x282
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"seq"
	.byte	0x1
	.value	0x282
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF517
	.byte	0x1
	.value	0x283
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF528
	.byte	0x1
	.value	0x284
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF529
	.byte	0x1
	.value	0x284
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF530
	.byte	0x1
	.value	0x284
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x284
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF518
	.byte	0x1
	.value	0x285
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF531
	.byte	0x1
	.value	0x285
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF1
	.byte	0x1
	.value	0x286
	.long	0x461
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x24
	.long	.LASF532
	.byte	0x1
	.value	0x304
	.long	0x139
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ab6
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x305
	.long	0x1890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF526
	.byte	0x1
	.value	0x307
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"seq"
	.byte	0x1
	.value	0x307
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF533
	.byte	0x1
	.value	0x308
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF518
	.byte	0x1
	.value	0x308
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF534
	.byte	0x1
	.value	0x342
	.long	0x139
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b15
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x343
	.long	0x1890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF526
	.byte	0x1
	.value	0x345
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"seq"
	.byte	0x1
	.value	0x345
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF517
	.byte	0x1
	.value	0x346
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF535
	.byte	0x1
	.value	0x376
	.long	0x2d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bc2
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x377
	.long	0x1890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x378
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF0
	.byte	0x1
	.value	0x379
	.long	0x61f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	.LASF536
	.byte	0x1
	.value	0x378
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF537
	.byte	0x1
	.value	0x378
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF538
	.byte	0x1
	.value	0x378
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF539
	.byte	0x1
	.value	0x378
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x382
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF540
	.byte	0x1
	.value	0x3af
	.long	0x139
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c21
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x3b0
	.long	0x1890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x3b2
	.long	0x61f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF526
	.byte	0x1
	.value	0x3b3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"seq"
	.byte	0x1
	.value	0x3b3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF541
	.byte	0x1
	.value	0x3d7
	.long	0x139
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d56
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x3d8
	.long	0x1890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"a"
	.byte	0x1
	.value	0x3da
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x3db
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x3dc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF479
	.byte	0x1
	.value	0x3dd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF480
	.byte	0x1
	.value	0x3dd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x3de
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF526
	.byte	0x1
	.value	0x3de
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF542
	.byte	0x1
	.value	0x3df
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x3e0
	.long	0x61f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF543
	.byte	0x1
	.value	0x46c
	.quad	.L174
	.uleb128 0x2b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1d0f
	.uleb128 0x26
	.long	.LASF517
	.byte	0x1
	.value	0x404
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1d34
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x41a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x433
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF544
	.byte	0x1
	.value	0x476
	.long	0x2d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1eaf
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x477
	.long	0x1890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.long	.LASF526
	.byte	0x1
	.value	0x478
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.long	.LASF545
	.byte	0x1
	.value	0x479
	.long	0xe49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF481
	.byte	0x1
	.value	0x47b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x47b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF483
	.byte	0x1
	.value	0x47b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF546
	.byte	0x1
	.value	0x47c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x49b
	.long	0x61f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF547
	.byte	0x1
	.value	0x49c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF548
	.byte	0x1
	.value	0x49d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF549
	.byte	0x1
	.value	0x49e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1e7d
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x4a6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x4b2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x26
	.long	.LASF550
	.byte	0x1
	.value	0x4be
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF551
	.byte	0x1
	.value	0x4bf
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF552
	.byte	0x1
	.value	0x50b
	.long	0x139
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f4a
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x50c
	.long	0x1890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF481
	.byte	0x1
	.value	0x50e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF545
	.byte	0x1
	.value	0x50e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF526
	.byte	0x1
	.value	0x50e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"seq"
	.byte	0x1
	.value	0x50e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x50f
	.long	0x61f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"op"
	.byte	0x1
	.value	0x50f
	.long	0x61f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF553
	.byte	0x1
	.value	0x510
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x24
	.long	.LASF554
	.byte	0x1
	.value	0x570
	.long	0x139
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2023
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x571
	.long	0x1890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF481
	.byte	0x1
	.value	0x573
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF545
	.byte	0x1
	.value	0x573
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF526
	.byte	0x1
	.value	0x573
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"seq"
	.byte	0x1
	.value	0x573
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"a"
	.byte	0x1
	.value	0x573
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x573
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.value	0x573
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF555
	.byte	0x1
	.value	0x574
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x26
	.long	.LASF483
	.byte	0x1
	.value	0x597
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF556
	.byte	0x1
	.value	0x597
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF557
	.byte	0x1
	.value	0x5e7
	.long	0x2d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x20b2
	.uleb128 0x25
	.long	.LASF2
	.byte	0x1
	.value	0x5e8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF545
	.byte	0x1
	.value	0x5e9
	.long	0xe49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF481
	.byte	0x1
	.value	0x5eb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x5eb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x5eb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF483
	.byte	0x1
	.value	0x5eb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF546
	.byte	0x1
	.value	0x5ec
	.long	0x20b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF558
	.uleb128 0x24
	.long	.LASF559
	.byte	0x1
	.value	0x62b
	.long	0x139
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x20ea
	.uleb128 0x29
	.string	"op"
	.byte	0x1
	.value	0x62c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF560
	.byte	0x1
	.value	0x65b
	.long	0x139
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2239
	.uleb128 0x25
	.long	.LASF478
	.byte	0x1
	.value	0x65c
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x25
	.long	.LASF498
	.byte	0x1
	.value	0x65d
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x25
	.long	.LASF499
	.byte	0x1
	.value	0x65e
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x25
	.long	.LASF500
	.byte	0x1
	.value	0x65f
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x26
	.long	.LASF516
	.byte	0x1
	.value	0x66b
	.long	0x13f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF479
	.byte	0x1
	.value	0x66c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF480
	.byte	0x1
	.value	0x66c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.long	.LASF561
	.byte	0x1
	.value	0x66d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF562
	.byte	0x1
	.value	0x66d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF563
	.byte	0x1
	.value	0x66e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x66e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.string	"a"
	.byte	0x1
	.value	0x66e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x66e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF2
	.byte	0x1
	.value	0x66f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF481
	.byte	0x1
	.value	0x66f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF483
	.byte	0x1
	.value	0x66f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x22
	.long	.LASF564
	.byte	0x1
	.value	0x70b
	.quad	.L376
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x26
	.long	.LASF556
	.byte	0x1
	.value	0x6dd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF565
	.byte	0x1
	.value	0x732
	.long	0x139
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2298
	.uleb128 0x25
	.long	.LASF478
	.byte	0x1
	.value	0x733
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF498
	.byte	0x1
	.value	0x734
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF499
	.byte	0x1
	.value	0x735
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF500
	.byte	0x1
	.value	0x736
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.long	.LASF567
	.byte	0x1
	.value	0x747
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2336
	.uleb128 0x25
	.long	.LASF478
	.byte	0x1
	.value	0x748
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF498
	.byte	0x1
	.value	0x749
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF499
	.byte	0x1
	.value	0x74a
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF500
	.byte	0x1
	.value	0x74b
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF568
	.byte	0x1
	.value	0x74d
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF569
	.long	0x2346
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11658
	.uleb128 0x27
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x26
	.long	.LASF570
	.byte	0x1
	.value	0x76c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x24b
	.long	0x2346
	.uleb128 0x12
	.long	0x140
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.long	0x2336
	.uleb128 0x24
	.long	.LASF571
	.byte	0x1
	.value	0x7b5
	.long	0x139
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x23ca
	.uleb128 0x25
	.long	.LASF478
	.byte	0x1
	.value	0x7b6
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF572
	.byte	0x1
	.value	0x7b8
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF573
	.byte	0x1
	.value	0x7b9
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF564
	.byte	0x1
	.value	0x7e3
	.quad	.L417
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x7cb
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF574
	.byte	0x1
	.value	0x7ee
	.long	0x139
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2499
	.uleb128 0x25
	.long	.LASF478
	.byte	0x1
	.value	0x7ef
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF572
	.byte	0x1
	.value	0x7f0
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF573
	.byte	0x1
	.value	0x7f0
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF498
	.byte	0x1
	.value	0x7f2
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF499
	.byte	0x1
	.value	0x7f3
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF500
	.byte	0x1
	.value	0x7f4
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF575
	.byte	0x1
	.value	0x7f5
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF576
	.byte	0x1
	.value	0x7f6
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF577
	.byte	0x1
	.value	0x7f7
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x26
	.long	.LASF578
	.byte	0x1
	.value	0x80d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF579
	.byte	0x1
	.value	0x85e
	.long	0x139
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x25b8
	.uleb128 0x25
	.long	.LASF478
	.byte	0x1
	.value	0x85f
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.long	.LASF572
	.byte	0x1
	.value	0x860
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.long	.LASF573
	.byte	0x1
	.value	0x860
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF498
	.byte	0x1
	.value	0x862
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF499
	.byte	0x1
	.value	0x862
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF580
	.byte	0x1
	.value	0x862
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF581
	.byte	0x1
	.value	0x862
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF582
	.byte	0x1
	.value	0x863
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF2
	.byte	0x1
	.value	0x863
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF481
	.byte	0x1
	.value	0x863
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF482
	.byte	0x1
	.value	0x863
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"seq"
	.byte	0x1
	.value	0x863
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x864
	.long	0x61f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x27
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x28
	.string	"lab"
	.byte	0x1
	.value	0x8ab
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF583
	.byte	0x1
	.value	0x8ab
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF584
	.byte	0x1
	.value	0x8bd
	.long	0x2d
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x25f8
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x8be
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF582
	.byte	0x1
	.value	0x8c0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF585
	.byte	0x1
	.value	0x922
	.long	0x139
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2685
	.uleb128 0x25
	.long	.LASF478
	.byte	0x1
	.value	0x923
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF572
	.byte	0x1
	.value	0x924
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF573
	.byte	0x1
	.value	0x924
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF498
	.byte	0x1
	.value	0x926
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF499
	.byte	0x1
	.value	0x927
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF586
	.byte	0x1
	.value	0x927
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF575
	.byte	0x1
	.value	0x928
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF587
	.byte	0x1
	.value	0x966
	.long	0x139
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x2712
	.uleb128 0x25
	.long	.LASF478
	.byte	0x1
	.value	0x967
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF572
	.byte	0x1
	.value	0x968
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF573
	.byte	0x1
	.value	0x968
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF498
	.byte	0x1
	.value	0x96a
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF499
	.byte	0x1
	.value	0x96b
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF576
	.byte	0x1
	.value	0x96c
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF556
	.byte	0x1
	.value	0x96d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF588
	.byte	0x1
	.value	0x9af
	.long	0x139
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x2752
	.uleb128 0x29
	.string	"px"
	.byte	0x1
	.value	0x9b0
	.long	0xe49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF435
	.byte	0x1
	.value	0x9b1
	.long	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF589
	.byte	0x1
	.value	0x9bf
	.long	0x139
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b28
	.uleb128 0x25
	.long	.LASF478
	.byte	0x1
	.value	0x9c0
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x25
	.long	.LASF590
	.byte	0x1
	.value	0x9c0
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x25
	.long	.LASF581
	.byte	0x1
	.value	0x9c0
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x25
	.long	.LASF591
	.byte	0x1
	.value	0x9c1
	.long	0x137f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x25
	.long	.LASF517
	.byte	0x1
	.value	0x9c2
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x26
	.long	.LASF321
	.byte	0x1
	.value	0x9c4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x28
	.string	"end"
	.byte	0x1
	.value	0x9c4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x26
	.long	.LASF2
	.byte	0x1
	.value	0x9c4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.long	.LASF545
	.byte	0x1
	.value	0x9c4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x26
	.long	.LASF592
	.byte	0x1
	.value	0x9c4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.long	.LASF593
	.byte	0x1
	.value	0x9c4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x22
	.long	.LASF594
	.byte	0x1
	.value	0xa77
	.quad	.L495
	.uleb128 0x22
	.long	.LASF595
	.byte	0x1
	.value	0xab9
	.quad	.L557
	.uleb128 0x2b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x2af5
	.uleb128 0x26
	.long	.LASF483
	.byte	0x1
	.value	0xa0e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x26
	.long	.LASF481
	.byte	0x1
	.value	0xa0e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x26
	.long	.LASF439
	.byte	0x1
	.value	0xa0e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.long	.LASF596
	.byte	0x1
	.value	0xa0f
	.long	0x12d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF597
	.byte	0x1
	.value	0xa0f
	.long	0x12d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF598
	.byte	0x1
	.value	0xa0f
	.long	0x12d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF599
	.byte	0x1
	.value	0xa0f
	.long	0x12d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF600
	.byte	0x1
	.value	0xa10
	.long	0x12df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0xa10
	.long	0x12df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x26
	.long	.LASF601
	.byte	0x1
	.value	0xa10
	.long	0x12df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x26
	.long	.LASF602
	.byte	0x1
	.value	0xa10
	.long	0x12df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x28
	.string	"pbi"
	.byte	0x1
	.value	0xa11
	.long	0x2b2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xa12
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x26
	.long	.LASF514
	.byte	0x1
	.value	0xa12
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x2b
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x29d0
	.uleb128 0x26
	.long	.LASF603
	.byte	0x1
	.value	0xa46
	.long	0x123f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x26
	.long	.LASF604
	.byte	0x1
	.value	0xa46
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x26
	.long	.LASF605
	.byte	0x1
	.value	0xa46
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x26
	.long	.LASF606
	.byte	0x1
	.value	0xa46
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x27
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xa46
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x27
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x26
	.long	.LASF608
	.byte	0x1
	.value	0xa46
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0
	.long	0x2a5e
	.uleb128 0x26
	.long	.LASF603
	.byte	0x1
	.value	0xa68
	.long	0x123f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x26
	.long	.LASF604
	.byte	0x1
	.value	0xa68
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x26
	.long	.LASF605
	.byte	0x1
	.value	0xa68
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x26
	.long	.LASF606
	.byte	0x1
	.value	0xa68
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x27
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xa68
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x27
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x26
	.long	.LASF608
	.byte	0x1
	.value	0xa68
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x26
	.long	.LASF603
	.byte	0x1
	.value	0xa6c
	.long	0x123f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x26
	.long	.LASF604
	.byte	0x1
	.value	0xa6c
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x26
	.long	.LASF605
	.byte	0x1
	.value	0xa6c
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x26
	.long	.LASF606
	.byte	0x1
	.value	0xa6c
	.long	0x1f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x27
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0xa6c
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x27
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x26
	.long	.LASF608
	.byte	0x1
	.value	0xa6c
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x26
	.long	.LASF332
	.byte	0x1
	.value	0xa96
	.long	0x12ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF462
	.byte	0x1
	.value	0xa96
	.long	0x12ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF609
	.uleb128 0x3
	.byte	0x8
	.long	0x2b28
	.uleb128 0x2e
	.long	.LASF642
	.byte	0x1
	.value	0xac1
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bb5
	.uleb128 0x25
	.long	.LASF610
	.byte	0x1
	.value	0xac2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF611
	.byte	0x1
	.value	0xac4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x2b93
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0xade
	.long	0x137f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x26
	.long	.LASF612
	.byte	0x1
	.value	0xaee
	.long	0x12c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF613
	.byte	0x1
	.byte	0x43
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	num_possible_if_blocks
	.uleb128 0x1f
	.long	.LASF614
	.byte	0x1
	.byte	0x47
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	num_updated_if_blocks
	.uleb128 0x1f
	.long	.LASF615
	.byte	0x1
	.byte	0x4a
	.long	0x139
	.uleb128 0x9
	.byte	0x3
	.quad	num_removed_blocks
	.uleb128 0x1f
	.long	.LASF616
	.byte	0x1
	.byte	0x4d
	.long	0x20b2
	.uleb128 0x9
	.byte	0x3
	.quad	life_data_ok
	.uleb128 0x1f
	.long	.LASF617
	.byte	0x1
	.byte	0x50
	.long	0x138a
	.uleb128 0x9
	.byte	0x3
	.quad	post_dominators
	.uleb128 0x2f
	.long	.LASF618
	.byte	0x8
	.byte	0x62
	.long	0x139
	.uleb128 0x30
	.long	.LASF619
	.byte	0x8
	.value	0xc39
	.long	0x139
	.uleb128 0x11
	.long	0x5d6
	.long	0x2c45
	.uleb128 0x12
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.long	.LASF153
	.byte	0x9
	.byte	0x34
	.long	0x2c50
	.uleb128 0x13
	.long	0x2c35
	.uleb128 0x11
	.long	0x21a
	.long	0x2c65
	.uleb128 0x12
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.long	.LASF620
	.byte	0x9
	.byte	0x60
	.long	0x2c70
	.uleb128 0x13
	.long	0x2c55
	.uleb128 0x11
	.long	0x24b
	.long	0x2c85
	.uleb128 0x12
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x2f
	.long	.LASF621
	.byte	0x2
	.byte	0x3f
	.long	0x2c90
	.uleb128 0x13
	.long	0x2c75
	.uleb128 0x11
	.long	0x2d
	.long	0x2ca5
	.uleb128 0x12
	.long	0x140
	.byte	0x80
	.byte	0
	.uleb128 0x30
	.long	.LASF622
	.byte	0x2
	.value	0x611
	.long	0x2c95
	.uleb128 0x30
	.long	.LASF623
	.byte	0x2
	.value	0x617
	.long	0x2d
	.uleb128 0x11
	.long	0x2d
	.long	0x2cd3
	.uleb128 0x12
	.long	0x140
	.byte	0x2
	.uleb128 0x12
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x30
	.long	.LASF624
	.byte	0x2
	.value	0x619
	.long	0x2cbd
	.uleb128 0x30
	.long	.LASF625
	.byte	0x2
	.value	0x6d2
	.long	0x139
	.uleb128 0x30
	.long	.LASF626
	.byte	0x2
	.value	0x6df
	.long	0x139
	.uleb128 0x30
	.long	.LASF627
	.byte	0x2
	.value	0x6e3
	.long	0x139
	.uleb128 0x2f
	.long	.LASF628
	.byte	0xd
	.byte	0x2a
	.long	0x139
	.uleb128 0x30
	.long	.LASF629
	.byte	0x10
	.value	0x15a
	.long	0x139
	.uleb128 0x30
	.long	.LASF630
	.byte	0x10
	.value	0x160
	.long	0x139
	.uleb128 0x11
	.long	0x24b
	.long	0x2d36
	.uleb128 0x12
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x30
	.long	.LASF631
	.byte	0x11
	.value	0x18b
	.long	0x2d26
	.uleb128 0x30
	.long	.LASF632
	.byte	0x11
	.value	0x1b0
	.long	0x2d26
	.uleb128 0x2f
	.long	.LASF633
	.byte	0xb
	.byte	0xe4
	.long	0x139
	.uleb128 0x2f
	.long	.LASF634
	.byte	0xb
	.byte	0xec
	.long	0x11d0
	.uleb128 0x11
	.long	0xbd4
	.long	0x2d74
	.uleb128 0x12
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.long	.LASF635
	.byte	0xb
	.value	0x116
	.long	0x2d64
	.uleb128 0x30
	.long	.LASF636
	.byte	0x12
	.value	0x1cb
	.long	0x2d8c
	.uleb128 0x3
	.byte	0x8
	.long	0x252
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x30
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF352:
	.string	"REG_BR_PROB"
.LASF382:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF309:
	.string	"rtstr"
.LASF369:
	.string	"NOTE_INSN_DELETED"
.LASF84:
	.string	"_unused2"
.LASF237:
	.string	"UMOD"
.LASF291:
	.string	"min_align"
.LASF70:
	.string	"_fileno"
.LASF406:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF317:
	.string	"first"
.LASF278:
	.string	"CONSTANT_P_RTX"
.LASF632:
	.string	"global_regs"
.LASF558:
	.string	"_Bool"
.LASF308:
	.string	"rtuint"
.LASF633:
	.string	"n_basic_blocks"
.LASF312:
	.string	"rt_cselib"
.LASF181:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF631:
	.string	"fixed_regs"
.LASF241:
	.string	"LSHIFTRT"
.LASF175:
	.string	"MATCH_PAR_DUP"
.LASF75:
	.string	"_shortbuf"
.LASF639:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF236:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF468:
	.string	"cdi_direction"
.LASF519:
	.string	"cond_complex"
.LASF169:
	.string	"MATCH_OPERAND"
.LASF150:
	.string	"CCFPmode"
.LASF544:
	.string	"noce_get_alt_condition"
.LASF499:
	.string	"else_bb"
.LASF554:
	.string	"noce_try_abs"
.LASF91:
	.string	"reg_class"
.LASF258:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF296:
	.string	"max_after_base"
.LASF591:
	.string	"new_dest"
.LASF259:
	.string	"UNLT"
.LASF462:
	.string	"probability"
.LASF122:
	.string	"CTImode"
.LASF56:
	.string	"_flags"
.LASF438:
	.string	"next"
.LASF51:
	.string	"__off_t"
.LASF572:
	.string	"then_edge"
.LASF120:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF280:
	.string	"VEC_MERGE"
.LASF555:
	.string	"negate"
.LASF76:
	.string	"_lock"
.LASF408:
	.string	"uhint"
.LASF213:
	.string	"RETURN"
.LASF409:
	.string	"generic"
.LASF635:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF560:
	.string	"noce_process_if_block"
.LASF156:
	.string	"MODE_FLOAT"
.LASF510:
	.string	"false_prob_val"
.LASF300:
	.string	"alias"
.LASF297:
	.string	"offset_unsigned"
.LASF126:
	.string	"V2SImode"
.LASF505:
	.string	"else_end"
.LASF25:
	.string	"Q_REGS"
.LASF200:
	.string	"CODE_LABEL"
.LASF121:
	.string	"CDImode"
.LASF206:
	.string	"UNSPEC"
.LASF199:
	.string	"BARRIER"
.LASF375:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF202:
	.string	"COND_EXEC"
.LASF216:
	.string	"CONST_INT"
.LASF212:
	.string	"CALL"
.LASF128:
	.string	"V4QImode"
.LASF444:
	.string	"BITMAP_AND"
.LASF191:
	.string	"ATTR"
.LASF332:
	.string	"count"
.LASF310:
	.string	"rttype"
.LASF19:
	.string	"DREG"
.LASF322:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF486:
	.string	"last_active_insn_p"
.LASF399:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF477:
	.string	"noce_if_info"
.LASF127:
	.string	"V2DImode"
.LASF580:
	.string	"trap_bb"
.LASF436:
	.string	"varray_type"
.LASF305:
	.string	"mem_attrs"
.LASF62:
	.string	"_IO_write_end"
.LASF346:
	.string	"REG_UNUSED"
.LASF184:
	.string	"DEFINE_DELAY"
.LASF234:
	.string	"MINUS"
.LASF22:
	.string	"SIREG"
.LASF581:
	.string	"other_bb"
.LASF478:
	.string	"test_bb"
.LASF415:
	.string	"sched_info_tag"
.LASF616:
	.string	"life_data_ok"
.LASF224:
	.string	"STRICT_LOW_PART"
.LASF166:
	.string	"INCLUDE"
.LASF395:
	.string	"GR_FRAME_POINTER"
.LASF330:
	.string	"index"
.LASF422:
	.string	"freq"
.LASF262:
	.string	"ZERO_EXTEND"
.LASF265:
	.string	"FLOAT_TRUNCATE"
.LASF563:
	.string	"orig_x"
.LASF392:
	.string	"GR_PC"
.LASF542:
	.string	"is_mem"
.LASF21:
	.string	"BREG"
.LASF137:
	.string	"V2SFmode"
.LASF429:
	.string	"varray_data"
.LASF266:
	.string	"FLOAT"
.LASF358:
	.string	"REG_EH_CONTEXT"
.LASF92:
	.string	"machine_mode"
.LASF539:
	.string	"vtrue"
.LASF470:
	.string	"CDI_POST_DOMINATORS"
.LASF315:
	.string	"rtmem"
.LASF613:
	.string	"num_possible_if_blocks"
.LASF275:
	.string	"RANGE_REG"
.LASF313:
	.string	"rtbit"
.LASF535:
	.string	"noce_emit_cmove"
.LASF437:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF99:
	.string	"TImode"
.LASF251:
	.string	"PRE_MODIFY"
.LASF565:
	.string	"process_if_block"
.LASF612:
	.string	"update_life_blocks"
.LASF264:
	.string	"FLOAT_EXTEND"
.LASF529:
	.string	"ifalse"
.LASF419:
	.string	"last_note_uid"
.LASF511:
	.string	"n_insns"
.LASF6:
	.string	"in_struct"
.LASF370:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF97:
	.string	"SImode"
.LASF208:
	.string	"ADDR_VEC"
.LASF138:
	.string	"V2DFmode"
.LASF290:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF304:
	.string	"align"
.LASF547:
	.string	"op_a"
.LASF319:
	.string	"indx"
.LASF227:
	.string	"SYMBOL_REF"
.LASF368:
	.string	"NOTE_INSN_BIAS"
.LASF390:
	.string	"NOTE_INSN_MAX"
.LASF598:
	.string	"test_live_head"
.LASF611:
	.string	"block_num"
.LASF180:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF232:
	.string	"COMPARE"
.LASF260:
	.string	"LTGT"
.LASF553:
	.string	"unsignedp"
.LASF272:
	.string	"HIGH"
.LASF229:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF98:
	.string	"DImode"
.LASF452:
	.string	"elms"
.LASF404:
	.string	"const_equiv_data"
.LASF69:
	.string	"_chain"
.LASF599:
	.string	"test_set_head"
.LASF250:
	.string	"POST_INC"
.LASF626:
	.string	"cse_not_expected"
.LASF480:
	.string	"insn_b"
.LASF443:
	.string	"bitmap_bits"
.LASF445:
	.string	"BITMAP_AND_COMPL"
.LASF479:
	.string	"insn_a"
.LASF111:
	.string	"TFmode"
.LASF47:
	.string	"unsigned char"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF543:
	.string	"end_seq_and_fail"
.LASF620:
	.string	"mode_bitsize"
.LASF641:
	.string	"_IO_lock_t"
.LASF574:
	.string	"find_if_block"
.LASF575:
	.string	"then_succ"
.LASF426:
	.string	"basic_block"
.LASF94:
	.string	"BImode"
.LASF248:
	.string	"PRE_INC"
.LASF345:
	.string	"REG_NO_CONFLICT"
.LASF108:
	.string	"SFmode"
.LASF498:
	.string	"then_bb"
.LASF496:
	.string	"test_if"
.LASF197:
	.string	"JUMP_INSN"
.LASF327:
	.string	"cond_local_set"
.LASF526:
	.string	"target"
.LASF463:
	.string	"edge"
.LASF160:
	.string	"MODE_COMPLEX_FLOAT"
.LASF593:
	.string	"new_label"
.LASF314:
	.string	"rttree"
.LASF605:
	.string	"bit_num_"
.LASF367:
	.string	"insn_note"
.LASF386:
	.string	"NOTE_INSN_RANGE_END"
.LASF179:
	.string	"DEFINE_SPLIT"
.LASF550:
	.string	"desired_val"
.LASF218:
	.string	"CONST_VECTOR"
.LASF582:
	.string	"trap"
.LASF506:
	.string	"then_mod_ok"
.LASF176:
	.string	"MATCH_INSN"
.LASF109:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF456:
	.string	"gcov_type"
.LASF45:
	.string	"size_t"
.LASF210:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF103:
	.string	"PSImode"
.LASF518:
	.string	"normalize"
.LASF274:
	.string	"RANGE_INFO"
.LASF405:
	.string	"rtunion_def"
.LASF190:
	.string	"DEFINE_ATTR"
.LASF192:
	.string	"SET_ATTR"
.LASF117:
	.string	"TCmode"
.LASF516:
	.string	"if_info"
.LASF267:
	.string	"UNSIGNED_FLOAT"
.LASF357:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF414:
	.string	"cselib_val_struct"
.LASF389:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF61:
	.string	"_IO_write_ptr"
.LASF239:
	.string	"ROTATE"
.LASF325:
	.string	"succ"
.LASF421:
	.string	"refs"
.LASF263:
	.string	"TRUNCATE"
.LASF350:
	.string	"REG_DEP_ANTI"
.LASF114:
	.string	"SCmode"
.LASF490:
	.string	"test"
.LASF400:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF585:
	.string	"find_if_case_1"
.LASF587:
	.string	"find_if_case_2"
.LASF104:
	.string	"PDImode"
.LASF371:
	.string	"NOTE_INSN_BLOCK_END"
.LASF411:
	.string	"bitmap"
.LASF380:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF621:
	.string	"rtx_class"
.LASF334:
	.string	"flags"
.LASF167:
	.string	"EXPR_LIST"
.LASF194:
	.string	"EQ_ATTR"
.LASF579:
	.string	"find_cond_trap"
.LASF147:
	.string	"CCGOCmode"
.LASF225:
	.string	"CONCAT"
.LASF458:
	.string	"pred_next"
.LASF293:
	.string	"min_after_vec"
.LASF548:
	.string	"op_b"
.LASF530:
	.string	"diff"
.LASF515:
	.string	"noce_emit_store_flag"
.LASF54:
	.string	"FILE"
.LASF231:
	.string	"COND"
.LASF449:
	.string	"simple_bitmap_def"
.LASF157:
	.string	"MODE_PARTIAL_INT"
.LASF15:
	.string	"tree"
.LASF115:
	.string	"DCmode"
.LASF182:
	.string	"DEFINE_COMBINE"
.LASF637:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF513:
	.string	"insn_done"
.LASF240:
	.string	"ASHIFTRT"
.LASF145:
	.string	"CCmode"
.LASF323:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF373:
	.string	"NOTE_INSN_LOOP_END"
.LASF143:
	.string	"V16SFmode"
.LASF495:
	.string	"cond_exec_get_condition"
.LASF447:
	.string	"BITMAP_XOR"
.LASF387:
	.string	"NOTE_INSN_LIVE"
.LASF187:
	.string	"DEFINE_COND_EXEC"
.LASF65:
	.string	"_IO_save_base"
.LASF472:
	.string	"OPTAB_DIRECT"
.LASF183:
	.string	"DEFINE_EXPAND"
.LASF603:
	.string	"ptr_"
.LASF432:
	.string	"elements_used"
.LASF134:
	.string	"V8SImode"
.LASF196:
	.string	"INSN"
.LASF307:
	.string	"rtint"
.LASF597:
	.string	"tmp_head"
.LASF226:
	.string	"LABEL_REF"
.LASF349:
	.string	"REG_LABEL"
.LASF628:
	.string	"max_regno"
.LASF428:
	.string	"elt_list"
.LASF482:
	.string	"cond_earliest"
.LASF337:
	.string	"REG_DEAD"
.LASF377:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF79:
	.string	"__pad2"
.LASF340:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF455:
	.string	"regset"
.LASF466:
	.string	"UPDATE_LIFE_GLOBAL"
.LASF146:
	.string	"CCGCmode"
.LASF329:
	.string	"global_live_at_end"
.LASF222:
	.string	"SCRATCH"
.LASF132:
	.string	"V8QImode"
.LASF135:
	.string	"V8DImode"
.LASF163:
	.string	"MAX_MODE_CLASS"
.LASF606:
	.string	"word_num_"
.LASF573:
	.string	"else_edge"
.LASF493:
	.string	"must_be_last"
.LASF261:
	.string	"SIGN_EXTEND"
.LASF622:
	.string	"const_int_rtx"
.LASF283:
	.string	"VEC_DUPLICATE"
.LASF442:
	.string	"bitmap_head"
.LASF86:
	.string	"_next"
.LASF559:
	.string	"noce_operand_ok"
.LASF301:
	.string	"expr"
.LASF497:
	.string	"cond_exec_process_if_block"
.LASF383:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF545:
	.string	"earliest"
.LASF141:
	.string	"V8SFmode"
.LASF517:
	.string	"reversep"
.LASF483:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF552:
	.string	"noce_try_minmax"
.LASF348:
	.string	"REG_CC_USER"
.LASF205:
	.string	"ASM_OPERANDS"
.LASF149:
	.string	"CCZmode"
.LASF619:
	.string	"ix86_branch_cost"
.LASF374:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF551:
	.string	"actual_val"
.LASF488:
	.string	"cond_exec_process_insns"
.LASF475:
	.string	"OPTAB_LIB_WIDEN"
.LASF604:
	.string	"indx_"
.LASF363:
	.string	"REG_NON_LOCAL_GOTO"
.LASF209:
	.string	"ADDR_DIFF_VEC"
.LASF271:
	.string	"ZERO_EXTRACT"
.LASF407:
	.string	"hint"
.LASF204:
	.string	"ASM_INPUT"
.LASF254:
	.string	"ORDERED"
.LASF142:
	.string	"V8DFmode"
.LASF431:
	.string	"num_elements"
.LASF268:
	.string	"UNSIGNED_FIX"
.LASF638:
	.string	"ifcvt.c"
.LASF504:
	.string	"else_start"
.LASF29:
	.string	"GENERAL_REGS"
.LASF609:
	.string	"propagate_block_info"
.LASF434:
	.string	"name"
.LASF168:
	.string	"INSN_LIST"
.LASF87:
	.string	"_sbuf"
.LASF642:
	.string	"if_convert"
.LASF276:
	.string	"RANGE_VAR"
.LASF427:
	.string	"changes_mode"
.LASF630:
	.string	"flag_trapping_math"
.LASF67:
	.string	"_IO_save_end"
.LASF155:
	.string	"MODE_INT"
.LASF484:
	.string	"count_bb_insns"
.LASF433:
	.string	"element_size"
.LASF2:
	.string	"jump"
.LASF492:
	.string	"mod_ok"
.LASF629:
	.string	"flag_unsafe_math_optimizations"
.LASF277:
	.string	"RANGE_LIVE"
.LASF125:
	.string	"V2HImode"
.LASF9:
	.string	"frame_related"
.LASF413:
	.string	"const_equiv"
.LASF540:
	.string	"noce_try_cmove"
.LASF508:
	.string	"false_expr"
.LASF418:
	.string	"last_uid"
.LASF311:
	.string	"rt_addr_diff_vec_flags"
.LASF397:
	.string	"GR_ARG_POINTER"
.LASF485:
	.string	"first_active_insn"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF286:
	.string	"SS_MINUS"
.LASF173:
	.string	"MATCH_PARALLEL"
.LASF130:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF467:
	.string	"UPDATE_LIFE_GLOBAL_RM_NOTES"
.LASF339:
	.string	"REG_EQUIV"
.LASF48:
	.string	"short unsigned int"
.LASF49:
	.string	"signed char"
.LASF172:
	.string	"MATCH_OPERATOR"
.LASF564:
	.string	"success"
.LASF489:
	.string	"start"
.LASF589:
	.string	"dead_or_predicable"
.LASF546:
	.string	"reverse"
.LASF507:
	.string	"true_expr"
.LASF430:
	.string	"varray_head_tag"
.LASF318:
	.string	"current"
.LASF610:
	.string	"x_life_data_ok"
.LASF288:
	.string	"SS_TRUNCATE"
.LASF353:
	.string	"REG_EXEC_COUNT"
.LASF520:
	.string	"outmode"
.LASF474:
	.string	"OPTAB_WIDEN"
.LASF292:
	.string	"base_after_vec"
.LASF177:
	.string	"DEFINE_INSN"
.LASF52:
	.string	"__off64_t"
.LASF131:
	.string	"V4DImode"
.LASF331:
	.string	"loop_depth"
.LASF481:
	.string	"cond"
.LASF59:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF77:
	.string	"_offset"
.LASF398:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF351:
	.string	"REG_DEP_OUTPUT"
.LASF64:
	.string	"_IO_buf_end"
.LASF450:
	.string	"n_bits"
.LASF533:
	.string	"subtract"
.LASF186:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF287:
	.string	"US_MINUS"
.LASF514:
	.string	"fail"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF270:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF424:
	.string	"live_length"
.LASF211:
	.string	"CLOBBER"
.LASF457:
	.string	"edge_def"
.LASF83:
	.string	"_mode"
.LASF161:
	.string	"MODE_VECTOR_INT"
.LASF60:
	.string	"_IO_write_base"
.LASF355:
	.string	"REG_SAVE_AREA"
.LASF279:
	.string	"CALL_PLACEHOLDER"
.LASF139:
	.string	"V4SFmode"
.LASF521:
	.string	"inmode"
.LASF487:
	.string	"seq_contains_jump"
.LASF233:
	.string	"PLUS"
.LASF249:
	.string	"POST_DEC"
.LASF440:
	.string	"bits"
.LASF96:
	.string	"HImode"
.LASF335:
	.string	"rtunion"
.LASF376:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF465:
	.string	"UPDATE_LIFE_LOCAL"
.LASF159:
	.string	"MODE_COMPLEX_INT"
.LASF583:
	.string	"newjump"
.LASF44:
	.string	"long int"
.LASF402:
	.string	"GR_VIRTUAL_CFA"
.LASF634:
	.string	"basic_block_info"
.LASF341:
	.string	"REG_WAS_0"
.LASF624:
	.string	"const_tiny_rtx"
.LASF362:
	.string	"REG_NORETURN"
.LASF85:
	.string	"_IO_marker"
.LASF110:
	.string	"XFmode"
.LASF361:
	.string	"REG_MAYBE_DEAD"
.LASF617:
	.string	"post_dominators"
.LASF140:
	.string	"V4DFmode"
.LASF491:
	.string	"prob_val"
.LASF4:
	.string	"unchanging"
.LASF336:
	.string	"reg_note"
.LASF509:
	.string	"true_prob_val"
.LASF164:
	.string	"rtx_code"
.LASF494:
	.string	"pattern"
.LASF549:
	.string	"prev_insn"
.LASF570:
	.string	"last"
.LASF636:
	.string	"rtl_dump_file"
.LASF20:
	.string	"CREG"
.LASF165:
	.string	"UNKNOWN"
.LASF207:
	.string	"UNSPEC_VOLATILE"
.LASF379:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF46:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF528:
	.string	"itrue"
.LASF106:
	.string	"HFmode"
.LASF214:
	.string	"TRAP_IF"
.LASF423:
	.string	"deaths"
.LASF359:
	.string	"REG_EH_REGION"
.LASF342:
	.string	"REG_RETVAL"
.LASF118:
	.string	"CQImode"
.LASF594:
	.string	"no_body"
.LASF53:
	.string	"char"
.LASF116:
	.string	"XCmode"
.LASF18:
	.string	"AREG"
.LASF608:
	.string	"mask_"
.LASF557:
	.string	"noce_get_condition"
.LASF63:
	.string	"_IO_buf_base"
.LASF584:
	.string	"block_has_only_trap"
.LASF242:
	.string	"ROTATERT"
.LASF228:
	.string	"ADDRESSOF"
.LASF364:
	.string	"REG_SETJMP"
.LASF124:
	.string	"V2QImode"
.LASF102:
	.string	"PHImode"
.LASF58:
	.string	"_IO_read_end"
.LASF588:
	.string	"find_memory"
.LASF476:
	.string	"OPTAB_MUST_WIDEN"
.LASF416:
	.string	"reg_info_def"
.LASF123:
	.string	"COImode"
.LASF247:
	.string	"PRE_DEC"
.LASF55:
	.string	"_IO_FILE"
.LASF378:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF396:
	.string	"GR_HARD_FRAME_POINTER"
.LASF347:
	.string	"REG_CC_SETTER"
.LASF571:
	.string	"find_if_header"
.LASF473:
	.string	"OPTAB_LIB"
.LASF154:
	.string	"MODE_RANDOM"
.LASF285:
	.string	"US_PLUS"
.LASF566:
	.string	"noce_emit_move_insn"
.LASF500:
	.string	"join_bb"
.LASF595:
	.string	"cancel"
.LASF144:
	.string	"BLKmode"
.LASF113:
	.string	"HCmode"
.LASF454:
	.string	"regset_head"
.LASF219:
	.string	"CONST_STRING"
.LASF282:
	.string	"VEC_CONCAT"
.LASF303:
	.string	"size"
.LASF602:
	.string	"test_set"
.LASF78:
	.string	"__pad1"
.LASF80:
	.string	"__pad3"
.LASF81:
	.string	"__pad4"
.LASF82:
	.string	"__pad5"
.LASF354:
	.string	"REG_NOALIAS"
.LASF195:
	.string	"ATTR_FLAG"
.LASF151:
	.string	"CCFPUmode"
.LASF338:
	.string	"REG_INC"
.LASF185:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF453:
	.string	"sbitmap"
.LASF538:
	.string	"vfalse"
.LASF576:
	.string	"else_succ"
.LASF586:
	.string	"new_bb"
.LASF68:
	.string	"_markers"
.LASF88:
	.string	"_pos"
.LASF189:
	.string	"ADDRESS"
.LASF461:
	.string	"insns"
.LASF567:
	.string	"merge_if_block"
.LASF410:
	.string	"cptr"
.LASF316:
	.string	"bitmap_head_def"
.LASF425:
	.string	"calls_crossed"
.LASF289:
	.string	"US_TRUNCATE"
.LASF391:
	.string	"global_rtl_index"
.LASF284:
	.string	"SS_PLUS"
.LASF246:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF298:
	.string	"scale"
.LASF95:
	.string	"QImode"
.LASF618:
	.string	"target_flags"
.LASF435:
	.string	"data"
.LASF394:
	.string	"GR_STACK_POINTER"
.LASF107:
	.string	"TQFmode"
.LASF607:
	.string	"word_"
.LASF321:
	.string	"head"
.LASF295:
	.string	"min_after_base"
.LASF412:
	.string	"sched"
.LASF615:
	.string	"num_removed_blocks"
.LASF17:
	.string	"NO_REGS"
.LASF627:
	.string	"no_new_pseudos"
.LASF469:
	.string	"CDI_DOMINATORS"
.LASF100:
	.string	"OImode"
.LASF360:
	.string	"REG_SAVE_NOTE"
.LASF451:
	.string	"bytes"
.LASF578:
	.string	"last_insn"
.LASF244:
	.string	"SMAX"
.LASF403:
	.string	"GR_MAX"
.LASF281:
	.string	"VEC_SELECT"
.LASF344:
	.string	"REG_NONNEG"
.LASF534:
	.string	"noce_try_store_flag_mask"
.LASF162:
	.string	"MODE_VECTOR_FLOAT"
.LASF252:
	.string	"POST_MODIFY"
.LASF561:
	.string	"set_a"
.LASF562:
	.string	"set_b"
.LASF541:
	.string	"noce_try_cmove_arith"
.LASF356:
	.string	"REG_BR_PRED"
.LASF178:
	.string	"DEFINE_PEEPHOLE"
.LASF89:
	.string	"long long unsigned int"
.LASF385:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF302:
	.string	"offset"
.LASF299:
	.string	"addr_diff_vec_flags"
.LASF73:
	.string	"_cur_column"
.LASF174:
	.string	"MATCH_OP_DUP"
.LASF188:
	.string	"SEQUENCE"
.LASF524:
	.string	"bitpos"
.LASF105:
	.string	"QFmode"
.LASF420:
	.string	"sets"
.LASF536:
	.string	"cmp_a"
.LASF537:
	.string	"cmp_b"
.LASF592:
	.string	"old_dest"
.LASF215:
	.string	"RESX"
.LASF532:
	.string	"noce_try_store_flag_inc"
.LASF460:
	.string	"dest"
.LASF203:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF66:
	.string	"_IO_backup_base"
.LASF614:
	.string	"num_updated_if_blocks"
.LASF253:
	.string	"UNORDERED"
.LASF152:
	.string	"MAX_MACHINE_MODE"
.LASF57:
	.string	"_IO_read_ptr"
.LASF328:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF170:
	.string	"MATCH_SCRATCH"
.LASF220:
	.string	"CONST"
.LASF269:
	.string	"SQRT"
.LASF393:
	.string	"GR_CC0"
.LASF153:
	.string	"mode_class"
.LASF235:
	.string	"MULT"
.LASF531:
	.string	"can_reverse"
.LASF158:
	.string	"MODE_CC"
.LASF326:
	.string	"local_set"
.LASF101:
	.string	"PQImode"
.LASF523:
	.string	"inner"
.LASF133:
	.string	"V8HImode"
.LASF448:
	.string	"BITMAP_IOR_COMPL"
.LASF72:
	.string	"_old_offset"
.LASF198:
	.string	"CALL_INSN"
.LASF577:
	.string	"next_index"
.LASF223:
	.string	"SUBREG"
.LASF136:
	.string	"V16QImode"
.LASF365:
	.string	"REG_ALWAYS_RETURN"
.LASF90:
	.string	"long long int"
.LASF343:
	.string	"REG_LIBCALL"
.LASF71:
	.string	"_flags2"
.LASF112:
	.string	"QCmode"
.LASF221:
	.string	"VALUE"
.LASF201:
	.string	"NOTE"
.LASF502:
	.string	"then_start"
.LASF245:
	.string	"UMIN"
.LASF171:
	.string	"MATCH_DUP"
.LASF568:
	.string	"combo_bb"
.LASF320:
	.string	"basic_block_def"
.LASF512:
	.string	"false_code"
.LASF596:
	.string	"merge_set_head"
.LASF625:
	.string	"reload_completed"
.LASF503:
	.string	"then_end"
.LASF446:
	.string	"BITMAP_IOR"
.LASF525:
	.string	"noce_try_store_flag"
.LASF501:
	.string	"test_expr"
.LASF7:
	.string	"used"
.LASF372:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF527:
	.string	"noce_try_store_flag_constants"
.LASF441:
	.string	"bitmap_element"
.LASF119:
	.string	"CHImode"
.LASF388:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF193:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF217:
	.string	"CONST_DOUBLE"
.LASF601:
	.string	"test_live"
.LASF417:
	.string	"first_uid"
.LASF148:
	.string	"CCNOmode"
.LASF129:
	.string	"V4HImode"
.LASF255:
	.string	"UNEQ"
.LASF238:
	.string	"ASHIFT"
.LASF243:
	.string	"SMIN"
.LASF569:
	.string	"__FUNCTION__"
.LASF230:
	.string	"IF_THEN_ELSE"
.LASF384:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF522:
	.string	"outer"
.LASF381:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF43:
	.string	"unsigned int"
.LASF600:
	.string	"merge_set"
.LASF640:
	.string	"tree_node"
.LASF556:
	.string	"note"
.LASF294:
	.string	"max_after_vec"
.LASF256:
	.string	"UNGE"
.LASF471:
	.string	"optab_methods"
.LASF50:
	.string	"short int"
.LASF324:
	.string	"pred"
.LASF257:
	.string	"UNGT"
.LASF439:
	.string	"prev"
.LASF74:
	.string	"_vtable_offset"
.LASF623:
	.string	"const_true_rtx"
.LASF93:
	.string	"VOIDmode"
.LASF366:
	.string	"REG_VTABLE_REF"
.LASF590:
	.string	"merge_bb"
.LASF401:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF273:
	.string	"LO_SUM"
.LASF464:
	.string	"update_life_extent"
.LASF333:
	.string	"frequency"
.LASF306:
	.string	"rtwint"
.LASF459:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
