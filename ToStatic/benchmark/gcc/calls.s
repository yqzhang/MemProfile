	.file	"calls.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 calls.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	stack_usage_map
	.comm	stack_usage_map,8,8
	.local	highest_outgoing_arg_in_use
	.comm	highest_outgoing_arg_in_use,4,4
	.local	stored_args_map
	.comm	stored_args_map,8,8
	.comm	stack_arg_under_construction,4,4
	.local	calls_function_save_exprs
	.comm	calls_function_save_exprs,8,8
	.type	calls_function, @function
calls_function:
.LFB2:
	.file 1 "calls.c"
	.loc 1 246 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# exp, exp
	movl	%esi, -28(%rbp)	# which, which
	.loc 1 249 0
	movq	$0, calls_function_save_exprs(%rip)	#, calls_function_save_exprs
	.loc 1 250 0
	movl	-28(%rbp), %edx	# which, tmp61
	movq	-24(%rbp), %rax	# exp, tmp62
	movl	%edx, %esi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	calls_function_1	#
	movl	%eax, -4(%rbp)	# tmp63, val
	.loc 1 251 0
	movq	$0, calls_function_save_exprs(%rip)	#, calls_function_save_exprs
	.loc 1 252 0
	movl	-4(%rbp), %eax	# val, D.17419
	.loc 1 253 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	calls_function, .-calls_function
	.type	calls_function_1, @function
calls_function_1:
.LFB3:
	.loc 1 261 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# exp, exp
	movl	%esi, -60(%rbp)	# which, which
	.loc 1 263 0
	movq	-56(%rbp), %rax	# exp, tmp104
	movzbl	16(%rax), %eax	# exp_8(D)->common.code, D.17421
	movzbl	%al, %eax	# D.17421, tmp105
	movl	%eax, -36(%rbp)	# tmp105, code
	.loc 1 264 0
	movl	-36(%rbp), %eax	# code, code.0
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.17422
	movsbl	%al, %eax	# D.17422, tmp107
	movl	%eax, -32(%rbp)	# tmp107, class
	.loc 1 265 0
	movl	-36(%rbp), %eax	# code, tmp108
	movl	%eax, %edi	# tmp108,
	call	first_rtl_op	#
	movl	%eax, -28(%rbp)	# tmp109, length
	.loc 1 268 0
	movl	-36(%rbp), %eax	# code, code.1
	cmpl	$146, %eax	#, code.1
	jle	.L4	#,
	.loc 1 269 0
	movl	$1, %eax	#, D.17420
	jmp	.L5	#
.L4:
	.loc 1 271 0
	movl	-36(%rbp), %eax	# code, code
	cmpl	$46, %eax	#, code
	je	.L7	#,
	cmpl	$46, %eax	#, code
	ja	.L8	#,
	cmpl	$2, %eax	#, code
	je	.L30	#,
	cmpl	$4, %eax	#, code
	je	.L10	#,
	.loc 1 337 0
	jmp	.L16	#
.L8:
	.loc 1 271 0
	cmpl	$53, %eax	#, code
	je	.L11	#,
	cmpl	$118, %eax	#, code
	je	.L12	#,
	.loc 1 337 0
	jmp	.L16	#
.L11:
	.loc 1 274 0
	cmpl	$0, -60(%rbp)	#, which
	jne	.L13	#,
	.loc 1 275 0
	movl	$1, %eax	#, D.17420
	jmp	.L5	#
.L13:
	.loc 1 276 0
	movq	-56(%rbp), %rax	# exp, tmp111
	movq	32(%rax), %rax	# exp_8(D)->exp.operands, D.17423
	movq	8(%rax), %rax	# _19->common.type, D.17423
	movq	8(%rax), %rax	# _20->common.type, D.17423
	movzbl	16(%rax), %eax	# _21->common.code, D.17421
	cmpb	$23, %al	#, D.17421
	jne	.L14	#,
	.loc 1 278 0
	movq	-56(%rbp), %rax	# exp, tmp112
	movq	32(%rax), %rax	# exp_8(D)->exp.operands, D.17423
	movq	8(%rax), %rax	# _23->common.type, D.17423
	movq	8(%rax), %rax	# _24->common.type, D.17423
	movzbl	62(%rax), %eax	# *_25, D.17421
	andl	$2, %eax	#, D.17421
	testb	%al, %al	# D.17421
	je	.L14	#,
	.loc 1 280 0
	movl	$1, %eax	#, D.17420
	jmp	.L5	#
.L14:
	.loc 1 281 0
	movq	-56(%rbp), %rax	# exp, tmp113
	movq	32(%rax), %rax	# exp_8(D)->exp.operands, D.17423
	movzbl	16(%rax), %eax	# _29->common.code, D.17421
	cmpb	$121, %al	#, D.17421
	jne	.L15	#,
	.loc 1 282 0
	movq	-56(%rbp), %rax	# exp, tmp114
	movq	32(%rax), %rax	# exp_8(D)->exp.operands, D.17423
	movq	32(%rax), %rax	# _31->exp.operands, D.17423
	movzbl	16(%rax), %eax	# _32->common.code, D.17421
	cmpb	$30, %al	#, D.17421
	jne	.L15	#,
	.loc 1 284 0
	movq	-56(%rbp), %rax	# exp, tmp115
	movq	32(%rax), %rax	# exp_8(D)->exp.operands, D.17423
	movq	32(%rax), %rax	# _34->exp.operands, D.17423
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17423,
	call	special_function_p	#
	.loc 1 286 0
	andl	$8, %eax	#, D.17420
	.loc 1 284 0
	testl	%eax, %eax	# D.17420
	je	.L15	#,
	.loc 1 287 0
	movl	$1, %eax	#, D.17420
	jmp	.L5	#
.L15:
	.loc 1 289 0
	jmp	.L16	#
.L7:
.LBB2:
	.loc 1 295 0
	movq	-56(%rbp), %rax	# exp, tmp116
	movq	40(%rax), %rax	# exp_8(D)->exp.operands, tmp117
	movq	%rax, -24(%rbp)	# tmp117, tem
	jmp	.L17	#
.L19:
	.loc 1 296 0
	movq	-24(%rbp), %rax	# tem, tmp118
	movq	32(%rax), %rax	# tem_3->list.value, D.17423
	movl	-60(%rbp), %edx	# which, tmp119
	movl	%edx, %esi	# tmp119,
	movq	%rax, %rdi	# D.17423,
	call	calls_function_1	#
	testl	%eax, %eax	# D.17420
	je	.L18	#,
	.loc 1 297 0
	movl	$1, %eax	#, D.17420
	jmp	.L5	#
.L18:
	.loc 1 295 0
	movq	-24(%rbp), %rax	# tem, tmp120
	movq	(%rax), %rax	# tem_3->common.chain, tmp121
	movq	%rax, -24(%rbp)	# tmp121, tem
.L17:
	.loc 1 295 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, tem
	jne	.L19	#,
.LBE2:
	.loc 1 300 0 is_stmt 1
	movl	$0, %eax	#, D.17420
	jmp	.L5	#
.L12:
	.loc 1 303 0
	movq	-56(%rbp), %rax	# exp, tmp122
	addq	$48, %rax	#, D.17424
	movq	(%rax), %rax	# MEM[(struct rtx_def * *)_45], D.17425
	testq	%rax, %rax	# D.17425
	je	.L20	#,
	.loc 1 304 0
	movl	$0, %eax	#, D.17420
	jmp	.L5	#
.L20:
	.loc 1 305 0
	movq	calls_function_save_exprs(%rip), %rdx	# calls_function_save_exprs, calls_function_save_exprs.2
	movq	-56(%rbp), %rax	# exp, tmp123
	movq	%rdx, %rsi	# calls_function_save_exprs.2,
	movq	%rax, %rdi	# tmp123,
	call	value_member	#
	testq	%rax, %rax	# D.17423
	je	.L21	#,
	.loc 1 306 0
	movl	$0, %eax	#, D.17420
	jmp	.L5	#
.L21:
	.loc 1 307 0
	movq	calls_function_save_exprs(%rip), %rdx	# calls_function_save_exprs, calls_function_save_exprs.3
	movq	-56(%rbp), %rax	# exp, tmp124
	movq	%rax, %rsi	# tmp124,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, calls_function_save_exprs(%rip)	# calls_function_save_exprs.4, calls_function_save_exprs
	.loc 1 309 0
	movq	-56(%rbp), %rax	# exp, tmp125
	movq	32(%rax), %rax	# exp_8(D)->exp.operands, D.17423
	.loc 1 310 0
	testq	%rax, %rax	# D.17423
	je	.L22	#,
	.loc 1 310 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# exp, tmp126
	movq	32(%rax), %rax	# exp_8(D)->exp.operands, D.17423
	movl	-60(%rbp), %edx	# which, tmp127
	movl	%edx, %esi	# tmp127,
	movq	%rax, %rdi	# D.17423,
	call	calls_function_1	#
	testl	%eax, %eax	# D.17420
	je	.L22	#,
	.loc 1 310 0 discriminator 3
	movl	$1, %eax	#, iftmp.5
	jmp	.L23	#
.L22:
	.loc 1 310 0 discriminator 2
	movl	$0, %eax	#, iftmp.5
.L23:
	.loc 1 309 0 is_stmt 1
	jmp	.L5	#
.L10:
.LBB3:
	.loc 1 317 0
	movq	-56(%rbp), %rax	# exp, tmp128
	movq	32(%rax), %rax	# exp_8(D)->block.vars, tmp129
	movq	%rax, -16(%rbp)	# tmp129, local
	jmp	.L24	#
.L26:
	.loc 1 318 0
	movq	-16(%rbp), %rax	# local, tmp130
	movq	104(%rax), %rax	# local_4->decl.initial, D.17423
	testq	%rax, %rax	# D.17423
	je	.L25	#,
	.loc 1 319 0
	movq	-16(%rbp), %rax	# local, tmp131
	movq	104(%rax), %rax	# local_4->decl.initial, D.17423
	movl	-60(%rbp), %edx	# which, tmp132
	movl	%edx, %esi	# tmp132,
	movq	%rax, %rdi	# D.17423,
	call	calls_function_1	#
	testl	%eax, %eax	# D.17420
	je	.L25	#,
	.loc 1 320 0
	movl	$1, %eax	#, D.17420
	jmp	.L5	#
.L25:
	.loc 1 317 0
	movq	-16(%rbp), %rax	# local, tmp133
	movq	(%rax), %rax	# local_4->common.chain, tmp134
	movq	%rax, -16(%rbp)	# tmp134, local
.L24:
	.loc 1 317 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, local
	jne	.L26	#,
	.loc 1 322 0 is_stmt 1
	movq	-56(%rbp), %rax	# exp, tmp135
	movq	40(%rax), %rax	# exp_8(D)->block.subblocks, tmp136
	movq	%rax, -8(%rbp)	# tmp136, subblock
	jmp	.L27	#
.L29:
	.loc 1 325 0
	movl	-60(%rbp), %edx	# which, tmp137
	movq	-8(%rbp), %rax	# subblock, tmp138
	movl	%edx, %esi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	calls_function_1	#
	testl	%eax, %eax	# D.17420
	je	.L28	#,
	.loc 1 326 0
	movl	$1, %eax	#, D.17420
	jmp	.L5	#
.L28:
	.loc 1 324 0
	movq	-8(%rbp), %rax	# subblock, tmp139
	movq	(%rax), %rax	# subblock_5->common.chain, tmp140
	movq	%rax, -8(%rbp)	# tmp140, subblock
.L27:
	.loc 1 322 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, subblock
	jne	.L29	#,
.LBE3:
	.loc 1 328 0
	movl	$0, %eax	#, D.17420
	jmp	.L5	#
.L32:
	.loc 1 332 0
	movq	-56(%rbp), %rax	# exp, tmp141
	movq	32(%rax), %rax	# exp_1->list.value, D.17423
	movl	-60(%rbp), %edx	# which, tmp142
	movl	%edx, %esi	# tmp142,
	movq	%rax, %rdi	# D.17423,
	call	calls_function_1	#
	testl	%eax, %eax	# D.17420
	je	.L31	#,
	.loc 1 333 0
	movl	$1, %eax	#, D.17420
	jmp	.L5	#
.L31:
	.loc 1 331 0
	movq	-56(%rbp), %rax	# exp, tmp143
	movq	(%rax), %rax	# exp_1->common.chain, tmp144
	movq	%rax, -56(%rbp)	# tmp144, exp
.L30:
	.loc 1 331 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, exp
	jne	.L32	#,
	.loc 1 334 0 is_stmt 1
	movl	$0, %eax	#, D.17420
	jmp	.L5	#
.L16:
	.loc 1 341 0
	cmpl	$60, -32(%rbp)	#, class
	je	.L33	#,
	.loc 1 341 0 is_stmt 0 discriminator 1
	cmpl	$49, -32(%rbp)	#, class
	je	.L33	#,
	cmpl	$50, -32(%rbp)	#, class
	je	.L33	#,
	cmpl	$101, -32(%rbp)	#, class
	je	.L33	#,
	cmpl	$114, -32(%rbp)	#, class
	je	.L33	#,
	cmpl	$98, -32(%rbp)	#, class
	je	.L33	#,
	.loc 1 342 0 is_stmt 1
	movl	$0, %eax	#, D.17420
	jmp	.L5	#
.L33:
	.loc 1 344 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L34	#
.L36:
	.loc 1 345 0
	movq	-56(%rbp), %rax	# exp, tmp145
	movl	-40(%rbp), %edx	# i, tmp147
	movslq	%edx, %rdx	# tmp147, tmp146
	addq	$4, %rdx	#, tmp148
	movq	(%rax,%rdx,8), %rax	# exp_8(D)->exp.operands, D.17423
	testq	%rax, %rax	# D.17423
	je	.L35	#,
	.loc 1 346 0
	movq	-56(%rbp), %rax	# exp, tmp149
	movl	-40(%rbp), %edx	# i, tmp151
	movslq	%edx, %rdx	# tmp151, tmp150
	addq	$4, %rdx	#, tmp152
	movq	(%rax,%rdx,8), %rax	# exp_8(D)->exp.operands, D.17423
	movl	-60(%rbp), %edx	# which, tmp153
	movl	%edx, %esi	# tmp153,
	movq	%rax, %rdi	# D.17423,
	call	calls_function_1	#
	testl	%eax, %eax	# D.17420
	je	.L35	#,
	.loc 1 347 0
	movl	$1, %eax	#, D.17420
	jmp	.L5	#
.L35:
	.loc 1 344 0
	addl	$1, -40(%rbp)	#, i
.L34:
	.loc 1 344 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp154
	cmpl	-28(%rbp), %eax	# length, tmp154
	jl	.L36	#,
	.loc 1 349 0 is_stmt 1
	movl	$0, %eax	#, D.17420
.L5:
	.loc 1 350 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	calls_function_1, .-calls_function_1
	.globl	prepare_call_address
	.type	prepare_call_address, @function
prepare_call_address:
.LFB4:
	.loc 1 366 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# funexp, funexp
	movq	%rsi, -32(%rbp)	# fndecl, fndecl
	movq	%rdx, -40(%rbp)	# call_fusage, call_fusage
	movl	%ecx, -44(%rbp)	# reg_parm_seen, reg_parm_seen
	movl	%r8d, -48(%rbp)	# sibcallp, sibcallp
	.loc 1 367 0
	movq	$0, -8(%rbp)	#, static_chain_value
	.loc 1 369 0
	movq	-24(%rbp), %rax	# funexp, tmp68
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp68,
	call	protect_from_queue	#
	movq	%rax, -24(%rbp)	# tmp69, funexp
	.loc 1 371 0
	cmpq	$0, -32(%rbp)	#, fndecl
	je	.L38	#,
	.loc 1 373 0
	movq	-32(%rbp), %rax	# fndecl, tmp70
	movq	%rax, %rdi	# tmp70,
	call	lookup_static_chain	#
	movq	%rax, -8(%rbp)	# tmp71, static_chain_value
.L38:
	.loc 1 377 0
	movq	-24(%rbp), %rax	# funexp, tmp72
	movzwl	(%rax), %eax	# funexp_6->code, D.17427
	cmpw	$68, %ax	#, D.17427
	je	.L39	#,
	.loc 1 382 0
	cmpl	$0, -44(%rbp)	#, reg_parm_seen
	je	.L40	#,
	.loc 1 381 0
	movq	-24(%rbp), %rax	# funexp, tmp73
	movq	%rax, %rsi	# tmp73,
	movl	$2, %edi	#,
	call	memory_address	#
	.loc 1 382 0
	movq	%rax, %rdi	# D.17428,
	call	force_not_mem	#
	jmp	.L41	#
.L40:
	.loc 1 382 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# funexp, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$2, %edi	#,
	call	memory_address	#
.L41:
	.loc 1 380 0 is_stmt 1 discriminator 1
	movq	%rax, -24(%rbp)	# iftmp.6, funexp
.L39:
	.loc 1 394 0
	cmpq	$0, -8(%rbp)	#, static_chain_value
	je	.L42	#,
	.loc 1 396 0
	movq	static_chain_rtx(%rip), %rax	# static_chain_rtx, static_chain_rtx.7
	movq	-8(%rbp), %rdx	# static_chain_value, tmp75
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# static_chain_rtx.7,
	call	emit_move_insn	#
	.loc 1 398 0
	movq	static_chain_rtx(%rip), %rax	# static_chain_rtx, static_chain_rtx.8
	movzwl	(%rax), %eax	# static_chain_rtx.8_16->code, D.17427
	cmpw	$61, %ax	#, D.17427
	jne	.L42	#,
	.loc 1 399 0
	movq	static_chain_rtx(%rip), %rdx	# static_chain_rtx, static_chain_rtx.9
	movq	-40(%rbp), %rax	# call_fusage, tmp76
	movq	%rdx, %rsi	# static_chain_rtx.9,
	movq	%rax, %rdi	# tmp76,
	call	use_reg	#
.L42:
	.loc 1 402 0
	movq	-24(%rbp), %rax	# funexp, D.17429
	.loc 1 403 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	prepare_call_address, .-prepare_call_address
	.section	.rodata
.LC0:
	.string	"calls.c"
	.text
	.type	emit_call_1, @function
emit_call_1:
.LFB5:
	.loc 1 461 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# funexp, funexp
	movq	%rsi, -96(%rbp)	# fndecl, fndecl
	movq	%rdx, -104(%rbp)	# funtype, funtype
	movq	%rcx, -112(%rbp)	# stack_size, stack_size
	movq	%r8, -120(%rbp)	# rounded_stack_size, rounded_stack_size
	movq	%r9, -128(%rbp)	# struct_value_size, struct_value_size
	.loc 1 462 0
	movq	-120(%rbp), %rax	# rounded_stack_size, tmp142
	movq	%rax, %rsi	# tmp142,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -72(%rbp)	# tmp143, rounded_stack_size_rtx
	.loc 1 464 0
	movl	$0, -76(%rbp)	#, already_popped
	.loc 1 465 0
	movq	-112(%rbp), %rax	# stack_size, tmp144
	movl	%eax, %edx	# tmp144, D.17430
	movq	-104(%rbp), %rcx	# funtype, tmp145
	movq	-96(%rbp), %rax	# fndecl, tmp146
	movq	%rcx, %rsi	# tmp145,
	movq	%rax, %rdi	# tmp146,
	call	ix86_return_pops_args	#
	cltq
	movq	%rax, -40(%rbp)	# tmp147, n_popped
	.loc 1 468 0
	movq	-128(%rbp), %rax	# struct_value_size, tmp148
	movq	%rax, %rsi	# tmp148,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -32(%rbp)	# tmp149, struct_value_size_rtx
	.loc 1 478 0
	movq	-88(%rbp), %rax	# funexp, tmp150
	movzwl	(%rax), %eax	# funexp_20(D)->code, D.17431
	cmpw	$68, %ax	#, D.17431
	je	.L45	#,
	.loc 1 479 0
	movq	-88(%rbp), %rax	# funexp, tmp151
	movq	%rax, %rsi	# tmp151,
	movl	$2, %edi	#,
	call	memory_address	#
	movq	%rax, -88(%rbp)	# tmp152, funexp
.L45:
	.loc 1 513 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.10
	andl	$33554432, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	jne	.L46	#,
	.loc 1 513 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.11
	andl	$33554432, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	jne	.L46	#,
	.loc 1 514 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, n_popped
	jle	.L46	#,
	.loc 1 514 0 is_stmt 0 discriminator 1
	movl	48(%rbp), %eax	# ecf_flags, tmp153
	andl	$1024, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	jne	.L46	#,
.LBB4:
	.loc 1 519 0 is_stmt 1
	movq	-40(%rbp), %rax	# n_popped, tmp154
	movq	%rax, %rsi	# tmp154,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -24(%rbp)	# tmp155, n_pop
	.loc 1 525 0
	cmpq	$0, 24(%rbp)	#, valreg
	je	.L47	#,
	.loc 1 526 0
	movq	-88(%rbp), %rax	# funexp, tmp156
	movq	%rax, %rsi	# tmp156,
	movl	$2, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, %rsi	#, D.17432
	movq	-24(%rbp), %rcx	# n_pop, tmp157
	movq	-72(%rbp), %rdx	# rounded_stack_size_rtx, tmp158
	movq	24(%rbp), %rax	# valreg, tmp159
	movq	%rcx, %r8	# tmp157,
	movq	16(%rbp), %rcx	# next_arg_reg,
	movq	%rax, %rdi	# tmp159,
	call	gen_call_value_pop	#
	movq	%rax, -56(%rbp)	# tmp160, pat
	jmp	.L48	#
.L47:
	.loc 1 530 0
	movq	-88(%rbp), %rax	# funexp, tmp161
	movq	%rax, %rsi	# tmp161,
	movl	$2, %edi	#,
	call	gen_rtx_MEM	#
	movq	-24(%rbp), %rdx	# n_pop, tmp162
	movq	-72(%rbp), %rsi	# rounded_stack_size_rtx, tmp163
	movq	%rdx, %rcx	# tmp162,
	movq	16(%rbp), %rdx	# next_arg_reg,
	movq	%rax, %rdi	# D.17432,
	call	gen_call_pop	#
	movq	%rax, -56(%rbp)	# tmp164, pat
.L48:
	.loc 1 533 0
	movq	-56(%rbp), %rax	# pat, tmp165
	movq	%rax, %rdi	# tmp165,
	call	emit_call_insn	#
	.loc 1 534 0
	movl	$1, -76(%rbp)	#, already_popped
.LBE4:
	.loc 1 518 0
	jmp	.L49	#
.L46:
	.loc 1 559 0
	cmpq	$0, 24(%rbp)	#, valreg
	je	.L50	#,
	.loc 1 560 0
	movq	-88(%rbp), %rax	# funexp, tmp166
	movq	%rax, %rsi	# tmp166,
	movl	$2, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, %rsi	#, D.17432
	movq	-72(%rbp), %rdx	# rounded_stack_size_rtx, tmp167
	movq	24(%rbp), %rax	# valreg, tmp168
	movq	16(%rbp), %rcx	# next_arg_reg,
	movq	%rax, %rdi	# tmp168,
	call	gen_call_value	#
	movq	%rax, %rdi	# D.17432,
	call	emit_call_insn	#
	jmp	.L49	#
.L50:
	.loc 1 565 0
	movq	-88(%rbp), %rax	# funexp, tmp169
	movq	%rax, %rsi	# tmp169,
	movl	$2, %edi	#,
	call	gen_rtx_MEM	#
	movq	-72(%rbp), %rcx	# rounded_stack_size_rtx, tmp170
	movq	16(%rbp), %rdx	# next_arg_reg,
	movq	%rcx, %rsi	# tmp170,
	movq	%rax, %rdi	# D.17432,
	call	gen_call	#
	movq	%rax, %rdi	# D.17432,
	call	emit_call_insn	#
.L49:
	.loc 1 574 0
	call	get_last_insn	#
	movq	%rax, -64(%rbp)	# tmp171, call_insn
	jmp	.L52	#
.L54:
	.loc 1 576 0
	movq	-64(%rbp), %rax	# call_insn, tmp172
	movq	16(%rax), %rax	# call_insn_5->fld[1].rtx, tmp173
	movq	%rax, -64(%rbp)	# tmp173, call_insn
.L52:
	.loc 1 574 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, call_insn
	je	.L53	#,
	.loc 1 575 0
	movq	-64(%rbp), %rax	# call_insn, tmp174
	movzwl	(%rax), %eax	# call_insn_5->code, D.17431
	cmpw	$34, %ax	#, D.17431
	jne	.L54	#,
.L53:
	.loc 1 579 0
	cmpq	$0, -64(%rbp)	#, call_insn
	jne	.L55	#,
	.loc 1 580 0
	movl	$__FUNCTION__.12762, %edx	#,
	movl	$580, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L55:
	.loc 1 583 0
	movl	48(%rbp), %eax	# ecf_flags, tmp175
	andl	$512, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	je	.L56	#,
	.loc 1 585 0
	movl	$0, %esi	#,
	movl	$62, %edi	#,
	call	gen_rtx_fmt_0	#
	movq	%rax, %rsi	# D.17432,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, %rdx	# D.17432,
	movl	$0, %esi	#,
	movl	$48, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	40(%rbp), %rdx	# call_fusage, tmp176
	movq	%rdx, %rcx	# tmp176,
	movq	%rax, %rdx	# D.17432,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, 40(%rbp)	# tmp177, call_fusage
.L56:
	.loc 1 593 0
	movq	-64(%rbp), %rax	# call_insn, tmp178
	movq	64(%rax), %rax	# call_insn_5->fld[7].rtx, D.17432
	testq	%rax, %rax	# D.17432
	je	.L57	#,
.LBB5:
	.loc 1 597 0
	movq	-64(%rbp), %rax	# call_insn, tmp179
	movq	64(%rax), %rax	# call_insn_5->fld[7].rtx, tmp180
	movq	%rax, -48(%rbp)	# tmp180, link
	jmp	.L58	#
.L59:
	.loc 1 598 0
	movq	-48(%rbp), %rax	# link, tmp181
	movq	16(%rax), %rax	# link_8->fld[1].rtx, tmp182
	movq	%rax, -48(%rbp)	# tmp182, link
.L58:
	.loc 1 597 0 discriminator 1
	movq	-48(%rbp), %rax	# link, tmp183
	movq	16(%rax), %rax	# link_8->fld[1].rtx, D.17432
	testq	%rax, %rax	# D.17432
	jne	.L59	#,
	.loc 1 601 0
	movq	-48(%rbp), %rax	# link, tmp184
	movq	40(%rbp), %rdx	# call_fusage, tmp185
	movq	%rdx, 16(%rax)	# tmp185, link_8->fld[1].rtx
.LBE5:
	jmp	.L60	#
.L57:
	.loc 1 604 0
	movq	-64(%rbp), %rax	# call_insn, tmp186
	movq	40(%rbp), %rdx	# call_fusage, tmp187
	movq	%rdx, 64(%rax)	# tmp187, call_insn_5->fld[7].rtx
.L60:
	.loc 1 607 0
	movl	48(%rbp), %eax	# ecf_flags, tmp188
	andl	$513, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	je	.L61	#,
	.loc 1 608 0
	movq	-64(%rbp), %rax	# call_insn, tmp189
	movzbl	3(%rax), %edx	# call_insn_5->unchanging, tmp192
	orl	$4, %edx	#, tmp193
	movb	%dl, 3(%rax)	# tmp193, call_insn_5->unchanging
.L61:
	.loc 1 612 0
	movl	48(%rbp), %eax	# ecf_flags, tmp194
	andl	$16, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	je	.L62	#,
	.loc 1 613 0
	movq	-64(%rbp), %rax	# call_insn, tmp195
	movq	56(%rax), %rdx	# call_insn_5->fld[6].rtx, D.17432
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17432
	movq	%rdx, %rcx	# D.17432,
	movq	%rax, %rdx	# D.17432,
	movl	$23, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-64(%rbp), %rdx	# call_insn, tmp196
	movq	%rax, 56(%rdx)	# D.17432, call_insn_5->fld[6].rtx
.L62:
	.loc 1 616 0
	movl	48(%rbp), %eax	# ecf_flags, tmp197
	andl	$2, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	je	.L63	#,
	.loc 1 617 0
	movq	-64(%rbp), %rax	# call_insn, tmp198
	movq	56(%rax), %rdx	# call_insn_5->fld[6].rtx, D.17432
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17432
	movq	%rdx, %rcx	# D.17432,
	movq	%rax, %rdx	# D.17432,
	movl	$26, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-64(%rbp), %rdx	# call_insn, tmp199
	movq	%rax, 56(%rdx)	# D.17432, call_insn_5->fld[6].rtx
.L63:
	.loc 1 619 0
	movl	48(%rbp), %eax	# ecf_flags, tmp200
	andl	$2048, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	je	.L64	#,
	.loc 1 620 0
	movq	-64(%rbp), %rax	# call_insn, tmp201
	movq	56(%rax), %rdx	# call_insn_5->fld[6].rtx, D.17432
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17432
	movq	%rdx, %rcx	# D.17432,
	movq	%rax, %rdx	# D.17432,
	movl	$29, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-64(%rbp), %rdx	# call_insn, tmp202
	movq	%rax, 56(%rdx)	# D.17432, call_insn_5->fld[6].rtx
.L64:
	.loc 1 623 0
	movl	48(%rbp), %eax	# ecf_flags, tmp203
	andl	$32, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	je	.L65	#,
	.loc 1 625 0
	movq	-64(%rbp), %rax	# call_insn, tmp204
	movq	56(%rax), %rdx	# call_insn_5->fld[6].rtx, D.17432
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17432
	movq	%rdx, %rcx	# D.17432,
	movq	%rax, %rdx	# D.17432,
	movl	$28, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-64(%rbp), %rdx	# call_insn, tmp205
	movq	%rax, 56(%rdx)	# D.17432, call_insn_5->fld[6].rtx
	.loc 1 627 0
	movq	cfun(%rip), %rax	# cfun, cfun.12
	movzbl	424(%rax), %edx	# cfun.12_71->calls_setjmp, tmp208
	orl	$16, %edx	#, tmp209
	movb	%dl, 424(%rax)	# tmp209, cfun.12_71->calls_setjmp
.L65:
	.loc 1 630 0
	movl	48(%rbp), %eax	# ecf_flags, tmp210
	andl	$256, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	setne	%dl	#, D.17433
	movq	-64(%rbp), %rax	# call_insn, tmp211
	movl	%edx, %ecx	# D.17433, tmp213
	andl	$1, %ecx	#, tmp213
	movzbl	3(%rax), %edx	# call_insn_5->jump, tmp214
	andl	$-2, %edx	#, tmp215
	orl	%ecx, %edx	# tmp213, tmp216
	movb	%dl, 3(%rax)	# tmp216, call_insn_5->jump
	.loc 1 634 0
	movq	cfun(%rip), %rax	# cfun, cfun.13
	movq	16(%rax), %rax	# cfun.13_74->expr, D.17434
	movl	32(%rbp), %edx	# old_inhibit_defer_pop, tmp217
	movl	%edx, 4(%rax)	# tmp217, _75->x_inhibit_defer_pop
	.loc 1 636 0
	cmpq	$0, -40(%rbp)	#, n_popped
	jle	.L66	#,
	.loc 1 638 0
	cmpl	$0, -76(%rbp)	#, already_popped
	jne	.L67	#,
	.loc 1 640 0
	movq	-64(%rbp), %rax	# call_insn, tmp218
	movq	64(%rax), %rbx	# call_insn_5->fld[7].rtx, D.17432
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.17432
	movq	%rax, %rdx	# D.17432,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rbx, %rcx	# D.17432,
	movq	%rax, %rdx	# D.17432,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-64(%rbp), %rdx	# call_insn, tmp219
	movq	%rax, 64(%rdx)	# D.17432, call_insn_5->fld[7].rtx
.L67:
	.loc 1 643 0
	movq	-40(%rbp), %rax	# n_popped, tmp220
	subq	%rax, -120(%rbp)	# tmp220, rounded_stack_size
	.loc 1 644 0
	movq	-120(%rbp), %rax	# rounded_stack_size, tmp221
	movq	%rax, %rsi	# tmp221,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -72(%rbp)	# tmp222, rounded_stack_size_rtx
	.loc 1 645 0
	movq	cfun(%rip), %rax	# cfun, cfun.14
	movq	16(%rax), %rax	# cfun.14_83->expr, D.17434
	movq	cfun(%rip), %rdx	# cfun, cfun.15
	movq	16(%rdx), %rdx	# cfun.15_85->expr, D.17434
	movl	8(%rdx), %edx	# _86->x_stack_pointer_delta, D.17430
	movl	%edx, %ecx	# D.17430, D.17435
	movq	-40(%rbp), %rdx	# n_popped, tmp223
	subl	%edx, %ecx	# D.17435, D.17435
	movl	%ecx, %edx	# D.17435, D.17435
	movl	%edx, 8(%rax)	# D.17430, _84->x_stack_pointer_delta
.L66:
	.loc 1 648 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.16
	andl	$4096, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	jne	.L68	#,
	.loc 1 657 0
	cmpq	$0, -120(%rbp)	#, rounded_stack_size
	je	.L44	#,
	.loc 1 659 0
	movl	48(%rbp), %eax	# ecf_flags, tmp224
	andl	$1024, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	je	.L70	#,
	.loc 1 661 0
	movq	cfun(%rip), %rax	# cfun, cfun.17
	movq	16(%rax), %rax	# cfun.17_95->expr, D.17434
	movq	cfun(%rip), %rdx	# cfun, cfun.18
	movq	16(%rdx), %rdx	# cfun.18_97->expr, D.17434
	movl	8(%rdx), %edx	# _98->x_stack_pointer_delta, D.17430
	movl	%edx, %ecx	# D.17430, D.17435
	movq	-120(%rbp), %rdx	# rounded_stack_size, tmp225
	subl	%edx, %ecx	# D.17435, D.17435
	movl	%ecx, %edx	# D.17435, D.17435
	movl	%edx, 8(%rax)	# D.17430, _96->x_stack_pointer_delta
	jmp	.L44	#
.L70:
	.loc 1 662 0
	movl	flag_defer_pop(%rip), %eax	# flag_defer_pop, flag_defer_pop.19
	testl	%eax, %eax	# flag_defer_pop.19
	je	.L71	#,
	.loc 1 662 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.20
	movq	16(%rax), %rax	# cfun.20_105->expr, D.17434
	movl	4(%rax), %eax	# _106->x_inhibit_defer_pop, D.17430
	testl	%eax, %eax	# D.17430
	jne	.L71	#,
	.loc 1 663 0 is_stmt 1
	movl	48(%rbp), %eax	# ecf_flags, tmp226
	andl	$513, %eax	#, D.17430
	testl	%eax, %eax	# D.17430
	jne	.L71	#,
	.loc 1 664 0
	movq	cfun(%rip), %rax	# cfun, cfun.21
	movq	16(%rax), %rax	# cfun.21_109->expr, D.17434
	movq	cfun(%rip), %rdx	# cfun, cfun.22
	movq	16(%rdx), %rdx	# cfun.22_111->expr, D.17434
	movl	(%rdx), %edx	# _112->x_pending_stack_adjust, D.17430
	movl	%edx, %ecx	# D.17430, D.17435
	movq	-120(%rbp), %rdx	# rounded_stack_size, tmp227
	addl	%ecx, %edx	# D.17435, D.17435
	movl	%edx, (%rax)	# D.17430, _110->x_pending_stack_adjust
	jmp	.L44	#
.L71:
	.loc 1 666 0
	movq	-72(%rbp), %rax	# rounded_stack_size_rtx, tmp228
	movq	%rax, %rdi	# tmp228,
	call	adjust_stack	#
	jmp	.L44	#
.L68:
	.loc 1 680 0
	cmpq	$0, -40(%rbp)	#, n_popped
	je	.L44	#,
	.loc 1 681 0
	movq	-40(%rbp), %rax	# n_popped, tmp229
	movq	%rax, %rsi	# tmp229,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdi	# D.17432,
	call	anti_adjust_stack	#
.L44:
	.loc 1 682 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	emit_call_1, .-emit_call_1
	.section	.rodata
.LC1:
	.string	"alloca"
.LC2:
	.string	"__builtin_alloca"
.LC3:
	.string	"setjmp"
.LC4:
	.string	"setjmp_syscall"
.LC5:
	.string	"sigsetjmp"
.LC6:
	.string	"savectx"
.LC7:
	.string	"siglongjmp"
.LC8:
	.string	"qsetjmp"
.LC9:
	.string	"vfork"
.LC10:
	.string	"longjmp"
.LC11:
	.string	"fork"
.LC12:
	.string	"clone"
.LC13:
	.string	"malloc"
.LC14:
	.string	"calloc"
.LC15:
	.string	"strdup"
	.text
	.type	special_function_p, @function
special_function_p:
.LFB6:
	.loc 1 702 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fndecl, fndecl
	movl	%esi, -28(%rbp)	# flags, flags
	.loc 1 703 0
	movl	-28(%rbp), %eax	# flags, tmp147
	andl	$4, %eax	#, D.17437
	testl	%eax, %eax	# D.17437
	jne	.L74	#,
	.loc 1 704 0
	cmpq	$0, -24(%rbp)	#, fndecl
	je	.L74	#,
	.loc 1 704 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fndecl, tmp148
	movq	72(%rax), %rax	# fndecl_9(D)->decl.name, D.17438
	testq	%rax, %rax	# D.17438
	je	.L74	#,
	.loc 1 705 0 is_stmt 1
	movq	-24(%rbp), %rax	# fndecl, tmp149
	movq	72(%rax), %rax	# fndecl_9(D)->decl.name, D.17438
	movl	24(%rax), %eax	# _11->identifier.id.len, D.17439
	cmpl	$17, %eax	#, D.17439
	ja	.L74	#,
	.loc 1 709 0
	movq	-24(%rbp), %rax	# fndecl, tmp150
	movq	80(%rax), %rax	# fndecl_9(D)->decl.context, D.17438
	testq	%rax, %rax	# D.17438
	jne	.L74	#,
	.loc 1 709 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fndecl, tmp151
	movzbl	18(%rax), %eax	# *fndecl_9(D), D.17440
	andl	$8, %eax	#, D.17440
	testb	%al, %al	# D.17440
	je	.L74	#,
.LBB6:
	.loc 1 711 0 is_stmt 1
	movq	-24(%rbp), %rax	# fndecl, tmp152
	movq	72(%rax), %rax	# fndecl_9(D)->decl.name, D.17438
	movq	32(%rax), %rax	# _16->identifier.id.str, tmp153
	movq	%rax, -8(%rbp)	# tmp153, name
	.loc 1 712 0
	movq	-8(%rbp), %rax	# name, tmp154
	movq	%rax, -16(%rbp)	# tmp154, tname
	.loc 1 717 0
	movq	-24(%rbp), %rax	# fndecl, tmp155
	movq	72(%rax), %rax	# fndecl_9(D)->decl.name, D.17438
	movl	24(%rax), %eax	# _19->identifier.id.len, D.17439
	cmpl	$6, %eax	#, D.17439
	jne	.L75	#,
	.loc 1 718 0
	movq	-8(%rbp), %rax	# name, tmp156
	movzbl	(%rax), %eax	# *name_17, D.17441
	cmpb	$97, %al	#, D.17441
	jne	.L75	#,
	.loc 1 719 0
	movq	-8(%rbp), %rax	# name, tmp157
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp157,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	je	.L76	#,
.L75:
	.loc 1 720 0
	movq	-24(%rbp), %rax	# fndecl, tmp158
	movq	72(%rax), %rax	# fndecl_9(D)->decl.name, D.17438
	movl	24(%rax), %eax	# _23->identifier.id.len, D.17439
	cmpl	$16, %eax	#, D.17439
	jne	.L77	#,
	.loc 1 721 0
	movq	-8(%rbp), %rax	# name, tmp159
	movzbl	(%rax), %eax	# *name_17, D.17441
	cmpb	$95, %al	#, D.17441
	jne	.L77	#,
	.loc 1 722 0
	movq	-8(%rbp), %rax	# name, tmp160
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp160,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	jne	.L77	#,
.L76:
	.loc 1 723 0
	orl	$8, -28(%rbp)	#, flags
.L77:
	.loc 1 726 0
	movq	-8(%rbp), %rax	# name, tmp161
	movzbl	(%rax), %eax	# *name_17, D.17441
	cmpb	$95, %al	#, D.17441
	jne	.L78	#,
	.loc 1 728 0
	movq	-8(%rbp), %rax	# name, tmp162
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_29, D.17441
	cmpb	$95, %al	#, D.17441
	jne	.L79	#,
	.loc 1 728 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# name, tmp163
	addq	$2, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_31, D.17441
	cmpb	$120, %al	#, D.17441
	jne	.L79	#,
	.loc 1 729 0 is_stmt 1
	addq	$3, -16(%rbp)	#, tname
	jmp	.L78	#
.L79:
	.loc 1 730 0
	movq	-8(%rbp), %rax	# name, tmp164
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_34, D.17441
	cmpb	$95, %al	#, D.17441
	jne	.L80	#,
	.loc 1 731 0
	addq	$2, -16(%rbp)	#, tname
	jmp	.L78	#
.L80:
	.loc 1 733 0
	addq	$1, -16(%rbp)	#, tname
.L78:
	.loc 1 736 0
	movq	-16(%rbp), %rax	# tname, tmp165
	movzbl	(%rax), %eax	# *tname_5, D.17441
	cmpb	$115, %al	#, D.17441
	jne	.L81	#,
	.loc 1 738 0
	movq	-16(%rbp), %rax	# tname, tmp166
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_39, D.17441
	cmpb	$101, %al	#, D.17441
	jne	.L82	#,
	.loc 1 739 0
	movq	-16(%rbp), %rax	# tname, tmp167
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp167,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	je	.L83	#,
	.loc 1 740 0
	movq	-16(%rbp), %rax	# tname, tmp168
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	je	.L83	#,
.L82:
	.loc 1 741 0
	movq	-16(%rbp), %rax	# tname, tmp169
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_43, D.17441
	cmpb	$105, %al	#, D.17441
	jne	.L84	#,
	.loc 1 742 0
	movq	-16(%rbp), %rax	# tname, tmp170
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	je	.L83	#,
.L84:
	.loc 1 743 0
	movq	-16(%rbp), %rax	# tname, tmp171
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_46, D.17441
	cmpb	$97, %al	#, D.17441
	jne	.L85	#,
	.loc 1 744 0
	movq	-16(%rbp), %rax	# tname, tmp172
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp172,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	jne	.L85	#,
.L83:
	.loc 1 745 0
	orl	$32, -28(%rbp)	#, flags
.L85:
	.loc 1 747 0
	movq	-16(%rbp), %rax	# tname, tmp173
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_50, D.17441
	cmpb	$105, %al	#, D.17441
	jne	.L74	#,
	.loc 1 748 0
	movq	-16(%rbp), %rax	# tname, tmp174
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	jne	.L74	#,
	.loc 1 749 0
	orl	$64, -28(%rbp)	#, flags
	jmp	.L74	#
.L81:
	.loc 1 751 0
	movq	-16(%rbp), %rax	# tname, tmp175
	movzbl	(%rax), %eax	# *tname_5, D.17441
	cmpb	$113, %al	#, D.17441
	jne	.L87	#,
	.loc 1 751 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tname, tmp176
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_55, D.17441
	cmpb	$115, %al	#, D.17441
	jne	.L87	#,
	.loc 1 752 0 is_stmt 1
	movq	-16(%rbp), %rax	# tname, tmp177
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp177,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	je	.L88	#,
.L87:
	.loc 1 753 0
	movq	-16(%rbp), %rax	# tname, tmp178
	movzbl	(%rax), %eax	# *tname_5, D.17441
	cmpb	$118, %al	#, D.17441
	jne	.L89	#,
	.loc 1 753 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tname, tmp179
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_59, D.17441
	cmpb	$102, %al	#, D.17441
	jne	.L89	#,
	.loc 1 754 0 is_stmt 1
	movq	-16(%rbp), %rax	# tname, tmp180
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp180,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	jne	.L89	#,
.L88:
	.loc 1 755 0
	orl	$32, -28(%rbp)	#, flags
	jmp	.L74	#
.L89:
	.loc 1 757 0
	movq	-16(%rbp), %rax	# tname, tmp181
	movzbl	(%rax), %eax	# *tname_5, D.17441
	cmpb	$108, %al	#, D.17441
	jne	.L90	#,
	.loc 1 757 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tname, tmp182
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_63, D.17441
	cmpb	$111, %al	#, D.17441
	jne	.L90	#,
	.loc 1 758 0 is_stmt 1
	movq	-16(%rbp), %rax	# tname, tmp183
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp183,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	jne	.L90	#,
	.loc 1 759 0
	orl	$64, -28(%rbp)	#, flags
	jmp	.L74	#
.L90:
	.loc 1 761 0
	movq	-16(%rbp), %rax	# tname, tmp184
	movzbl	(%rax), %eax	# *tname_5, D.17441
	cmpb	$102, %al	#, D.17441
	jne	.L91	#,
	.loc 1 761 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tname, tmp185
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_68, D.17441
	cmpb	$111, %al	#, D.17441
	jne	.L91	#,
	.loc 1 762 0 is_stmt 1
	movq	-16(%rbp), %rax	# tname, tmp186
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp186,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	je	.L92	#,
.L91:
	.loc 1 766 0
	movq	-8(%rbp), %rax	# name, tmp187
	movzbl	(%rax), %eax	# *name_17, D.17441
	cmpb	$95, %al	#, D.17441
	jne	.L93	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# name, tmp188
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_72, D.17441
	cmpb	$95, %al	#, D.17441
	jne	.L93	#,
	.loc 1 767 0 is_stmt 1
	movq	-16(%rbp), %rax	# tname, tmp189
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp189,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	je	.L92	#,
.L93:
	.loc 1 768 0
	movq	-16(%rbp), %rax	# tname, tmp190
	movzbl	(%rax), %eax	# *tname_5, D.17441
	cmpb	$101, %al	#, D.17441
	jne	.L94	#,
	.loc 1 768 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tname, tmp191
	addq	$1, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_76, D.17441
	cmpb	$120, %al	#, D.17441
	jne	.L94	#,
	movq	-16(%rbp), %rax	# tname, tmp192
	addq	$2, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_78, D.17441
	cmpb	$101, %al	#, D.17441
	jne	.L94	#,
	.loc 1 769 0 is_stmt 1
	movq	-16(%rbp), %rax	# tname, tmp193
	addq	$3, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_80, D.17441
	cmpb	$99, %al	#, D.17441
	jne	.L94	#,
	.loc 1 769 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tname, tmp194
	addq	$4, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_82, D.17441
	cmpb	$108, %al	#, D.17441
	je	.L95	#,
	movq	-16(%rbp), %rax	# tname, tmp195
	addq	$4, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_84, D.17441
	cmpb	$118, %al	#, D.17441
	jne	.L94	#,
.L95:
	.loc 1 770 0 is_stmt 1
	movq	-16(%rbp), %rax	# tname, tmp196
	addq	$5, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_86, D.17441
	testb	%al, %al	# D.17441
	je	.L92	#,
	.loc 1 771 0
	movq	-16(%rbp), %rax	# tname, tmp197
	addq	$5, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_88, D.17441
	cmpb	$112, %al	#, D.17441
	je	.L96	#,
	.loc 1 771 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tname, tmp198
	addq	$5, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_90, D.17441
	cmpb	$101, %al	#, D.17441
	jne	.L94	#,
.L96:
	.loc 1 772 0 is_stmt 1
	movq	-16(%rbp), %rax	# tname, tmp199
	addq	$6, %rax	#, D.17442
	movzbl	(%rax), %eax	# *_92, D.17441
	testb	%al, %al	# D.17441
	jne	.L94	#,
.L92:
	.loc 1 773 0
	orl	$128, -28(%rbp)	#, flags
	jmp	.L74	#
.L94:
	.loc 1 782 0
	movq	-24(%rbp), %rax	# fndecl, tmp200
	movq	8(%rax), %rax	# fndecl_9(D)->common.type, D.17438
	movq	8(%rax), %rax	# _94->common.type, D.17438
	movzbl	61(%rax), %eax	# *_95, tmp203
	shrb	%al	# D.17443
	movzbl	%al, %edx	# D.17443, D.17437
	movl	target_flags(%rip), %eax	# target_flags, target_flags.24
	andl	$33554432, %eax	#, D.17437
	testl	%eax, %eax	# D.17437
	je	.L97	#,
	.loc 1 782 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.23
	jmp	.L98	#
.L97:
	.loc 1 782 0 discriminator 2
	movl	$4, %eax	#, iftmp.23
.L98:
	.loc 1 782 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.23, D.17437
	jne	.L74	#,
	.loc 1 783 0 is_stmt 1
	movq	-16(%rbp), %rax	# tname, tmp204
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	je	.L99	#,
	.loc 1 784 0
	movq	-16(%rbp), %rax	# tname, tmp205
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp205,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	je	.L99	#,
	.loc 1 785 0
	movq	-16(%rbp), %rax	# tname, tmp206
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp206,
	call	strcmp	#
	testl	%eax, %eax	# D.17437
	jne	.L74	#,
.L99:
	.loc 1 786 0
	orl	$4, -28(%rbp)	#, flags
.L74:
.LBE6:
	.loc 1 788 0
	movl	-28(%rbp), %eax	# flags, D.17437
	.loc 1 789 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	special_function_p, .-special_function_p
	.globl	setjmp_call_p
	.type	setjmp_call_p, @function
setjmp_call_p:
.LFB7:
	.loc 1 796 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fndecl, fndecl
	.loc 1 797 0
	movq	-8(%rbp), %rax	# fndecl, tmp62
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	special_function_p	#
	andl	$32, %eax	#, D.17459
	.loc 1 798 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	setjmp_call_p, .-setjmp_call_p
	.type	flags_from_decl_or_type, @function
flags_from_decl_or_type:
.LFB8:
	.loc 1 805 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# exp, exp
	.loc 1 806 0
	movl	$0, -12(%rbp)	#, flags
	.loc 1 807 0
	movq	-24(%rbp), %rax	# exp, tmp85
	movq	%rax, -8(%rbp)	# tmp85, type
	.loc 1 809 0
	movq	-24(%rbp), %rax	# exp, tmp86
	movzbl	16(%rax), %eax	# exp_9(D)->common.code, D.17460
	movzbl	%al, %eax	# D.17460, D.17461
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.17462
	cmpb	$100, %al	#, D.17462
	jne	.L104	#,
	.loc 1 811 0
	movq	-24(%rbp), %rax	# exp, tmp88
	movq	8(%rax), %rax	# exp_9(D)->common.type, tmp89
	movq	%rax, -8(%rbp)	# tmp89, type
	.loc 1 814 0
	movq	-24(%rbp), %rax	# exp, tmp90
	movzbl	16(%rax), %eax	# exp_9(D)->common.code, D.17460
	movzbl	%al, %eax	# D.17460, D.17461
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.17462
	cmpb	$100, %al	#, D.17462
	jne	.L105	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# exp, tmp92
	movzbl	51(%rax), %eax	# *exp_9(D), D.17460
	andl	$8, %eax	#, D.17460
	testb	%al, %al	# D.17460
	je	.L105	#,
	.loc 1 815 0 is_stmt 1
	orl	$4, -12(%rbp)	#, flags
.L105:
	.loc 1 818 0
	movq	-24(%rbp), %rax	# exp, tmp93
	movzbl	16(%rax), %eax	# exp_9(D)->common.code, D.17460
	movzbl	%al, %eax	# D.17460, D.17461
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.17462
	cmpb	$100, %al	#, D.17462
	jne	.L106	#,
	.loc 1 818 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# exp, tmp95
	movzbl	51(%rax), %eax	# *exp_9(D), D.17460
	andl	$-128, %eax	#, D.17460
	testb	%al, %al	# D.17460
	je	.L106	#,
	.loc 1 819 0 is_stmt 1
	orl	$4608, -12(%rbp)	#, flags
.L106:
	.loc 1 821 0
	movq	-24(%rbp), %rax	# exp, tmp96
	movzbl	18(%rax), %eax	# *exp_9(D), D.17460
	andl	$2, %eax	#, D.17460
	testb	%al, %al	# D.17460
	je	.L104	#,
	.loc 1 822 0
	orl	$16, -12(%rbp)	#, flags
.L104:
	.loc 1 825 0
	movq	-24(%rbp), %rax	# exp, tmp97
	movzbl	17(%rax), %eax	# *exp_9(D), D.17460
	andl	$16, %eax	#, D.17460
	testb	%al, %al	# D.17460
	je	.L107	#,
	.loc 1 825 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# exp, tmp98
	movzbl	17(%rax), %eax	# *exp_9(D), D.17460
	andl	$8, %eax	#, D.17460
	testb	%al, %al	# D.17460
	jne	.L107	#,
	.loc 1 826 0 is_stmt 1
	orl	$4097, -12(%rbp)	#, flags
.L107:
	.loc 1 828 0
	movq	-24(%rbp), %rax	# exp, tmp99
	movzbl	17(%rax), %eax	# *exp_9(D), D.17460
	andl	$8, %eax	#, D.17460
	testb	%al, %al	# D.17460
	je	.L108	#,
	.loc 1 829 0
	orl	$2, -12(%rbp)	#, flags
.L108:
	.loc 1 833 0
	movq	-8(%rbp), %rax	# type, tmp100
	movzbl	16(%rax), %eax	# type_7->common.code, D.17460
	cmpb	$23, %al	#, D.17460
	jne	.L109	#,
	.loc 1 833 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# type, tmp101
	movzbl	62(%rax), %eax	# *type_7, D.17460
	andl	$2, %eax	#, D.17460
	testb	%al, %al	# D.17460
	je	.L109	#,
	.loc 1 835 0 is_stmt 1
	orl	$1024, -12(%rbp)	#, flags
	.loc 1 836 0
	andl	$-4610, -12(%rbp)	#, flags
.L109:
	.loc 1 839 0
	movl	-12(%rbp), %eax	# flags, D.17461
	.loc 1 840 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	flags_from_decl_or_type, .-flags_from_decl_or_type
	.type	precompute_register_parameters, @function
precompute_register_parameters:
.LFB9:
	.loc 1 854 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# num_actuals, num_actuals
	movq	%rsi, -48(%rbp)	# args, args
	movq	%rdx, -56(%rbp)	# reg_parm_seen, reg_parm_seen
	.loc 1 857 0
	movq	-56(%rbp), %rax	# reg_parm_seen, tmp156
	movl	$0, (%rax)	#, *reg_parm_seen_2(D)
	.loc 1 859 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L112	#
.L118:
	.loc 1 860 0
	movl	-20(%rbp), %eax	# i, tmp157
	movslq	%eax, %rdx	# tmp157, D.17463
	movq	%rdx, %rax	# D.17463, tmp158
	salq	$2, %rax	#, tmp158
	addq	%rdx, %rax	# D.17463, tmp158
	salq	$2, %rax	#, tmp158
	addq	%rdx, %rax	# D.17463, tmp158
	salq	$3, %rax	#, tmp159
	movq	%rax, %rdx	# tmp158, D.17463
	movq	-48(%rbp), %rax	# args, tmp160
	addq	%rdx, %rax	# D.17463, D.17464
	movq	32(%rax), %rax	# _8->reg, D.17465
	testq	%rax, %rax	# D.17465
	je	.L113	#,
	.loc 1 860 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp161
	movslq	%eax, %rdx	# tmp161, D.17463
	movq	%rdx, %rax	# D.17463, tmp162
	salq	$2, %rax	#, tmp162
	addq	%rdx, %rax	# D.17463, tmp162
	salq	$2, %rax	#, tmp162
	addq	%rdx, %rax	# D.17463, tmp162
	salq	$3, %rax	#, tmp163
	movq	%rax, %rdx	# tmp162, D.17463
	movq	-48(%rbp), %rax	# args, tmp164
	addq	%rdx, %rax	# D.17463, D.17464
	movl	56(%rax), %eax	# _12->pass_on_stack, D.17466
	testl	%eax, %eax	# D.17466
	jne	.L113	#,
	.loc 1 862 0 is_stmt 1
	movq	-56(%rbp), %rax	# reg_parm_seen, tmp165
	movl	$1, (%rax)	#, *reg_parm_seen_2(D)
	.loc 1 864 0
	movl	-20(%rbp), %eax	# i, tmp166
	movslq	%eax, %rdx	# tmp166, D.17463
	movq	%rdx, %rax	# D.17463, tmp167
	salq	$2, %rax	#, tmp167
	addq	%rdx, %rax	# D.17463, tmp167
	salq	$2, %rax	#, tmp167
	addq	%rdx, %rax	# D.17463, tmp167
	salq	$3, %rax	#, tmp168
	movq	%rax, %rdx	# tmp167, D.17463
	movq	-48(%rbp), %rax	# args, tmp169
	addq	%rdx, %rax	# D.17463, D.17464
	movq	16(%rax), %rax	# _16->value, D.17465
	testq	%rax, %rax	# D.17465
	jne	.L114	#,
	.loc 1 866 0
	call	push_temp_slots	#
	.loc 1 867 0
	movl	-20(%rbp), %eax	# i, tmp170
	movslq	%eax, %rdx	# tmp170, D.17463
	movq	%rdx, %rax	# D.17463, tmp171
	salq	$2, %rax	#, tmp171
	addq	%rdx, %rax	# D.17463, tmp171
	salq	$2, %rax	#, tmp171
	addq	%rdx, %rax	# D.17463, tmp171
	salq	$3, %rax	#, tmp172
	movq	%rax, %rdx	# tmp171, D.17463
	movq	-48(%rbp), %rax	# args, tmp173
	leaq	(%rdx,%rax), %rbx	#, D.17464
	movl	-20(%rbp), %eax	# i, tmp174
	movslq	%eax, %rdx	# tmp174, D.17463
	movq	%rdx, %rax	# D.17463, tmp175
	salq	$2, %rax	#, tmp175
	addq	%rdx, %rax	# D.17463, tmp175
	salq	$2, %rax	#, tmp175
	addq	%rdx, %rax	# D.17463, tmp175
	salq	$3, %rax	#, tmp176
	movq	%rax, %rdx	# tmp175, D.17463
	movq	-48(%rbp), %rax	# args, tmp177
	addq	%rdx, %rax	# D.17463, D.17464
	movq	(%rax), %rax	# _23->tree_value, D.17467
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17467,
	call	expand_expr	#
	movq	%rax, 16(%rbx)	# D.17465, _20->value
	.loc 1 869 0
	movl	-20(%rbp), %eax	# i, tmp178
	movslq	%eax, %rdx	# tmp178, D.17463
	movq	%rdx, %rax	# D.17463, tmp179
	salq	$2, %rax	#, tmp179
	addq	%rdx, %rax	# D.17463, tmp179
	salq	$2, %rax	#, tmp179
	addq	%rdx, %rax	# D.17463, tmp179
	salq	$3, %rax	#, tmp180
	movq	%rax, %rdx	# tmp179, D.17463
	movq	-48(%rbp), %rax	# args, tmp181
	addq	%rdx, %rax	# D.17463, D.17464
	movq	16(%rax), %rax	# _28->value, D.17465
	movq	%rax, %rdi	# D.17465,
	call	preserve_temp_slots	#
	.loc 1 870 0
	call	pop_temp_slots	#
	.loc 1 874 0
	call	emit_queue	#
.L114:
	.loc 1 880 0
	movl	-20(%rbp), %eax	# i, tmp182
	movslq	%eax, %rdx	# tmp182, D.17463
	movq	%rdx, %rax	# D.17463, tmp183
	salq	$2, %rax	#, tmp183
	addq	%rdx, %rax	# D.17463, tmp183
	salq	$2, %rax	#, tmp183
	addq	%rdx, %rax	# D.17463, tmp183
	salq	$3, %rax	#, tmp184
	movq	%rax, %rdx	# tmp183, D.17463
	movq	-48(%rbp), %rax	# args, tmp185
	addq	%rdx, %rax	# D.17463, D.17464
	movl	8(%rax), %ecx	# _32->mode, D.17468
	movl	-20(%rbp), %eax	# i, tmp186
	movslq	%eax, %rdx	# tmp186, D.17463
	movq	%rdx, %rax	# D.17463, tmp187
	salq	$2, %rax	#, tmp187
	addq	%rdx, %rax	# D.17463, tmp187
	salq	$2, %rax	#, tmp187
	addq	%rdx, %rax	# D.17463, tmp187
	salq	$3, %rax	#, tmp188
	movq	%rax, %rdx	# tmp187, D.17463
	movq	-48(%rbp), %rax	# args, tmp189
	addq	%rdx, %rax	# D.17463, D.17464
	movq	(%rax), %rax	# _36->tree_value, D.17467
	movq	8(%rax), %rax	# _37->common.type, D.17467
	movzbl	61(%rax), %eax	# *_38, tmp192
	shrb	%al	# D.17469
	movzbl	%al, %eax	# D.17469, D.17470
	cmpl	%eax, %ecx	# D.17470, D.17468
	je	.L115	#,
	.loc 1 881 0
	movl	-20(%rbp), %eax	# i, tmp193
	movslq	%eax, %rdx	# tmp193, D.17463
	movq	%rdx, %rax	# D.17463, tmp194
	salq	$2, %rax	#, tmp194
	addq	%rdx, %rax	# D.17463, tmp194
	salq	$2, %rax	#, tmp194
	addq	%rdx, %rax	# D.17463, tmp194
	salq	$3, %rax	#, tmp195
	movq	%rax, %rdx	# tmp194, D.17463
	movq	-48(%rbp), %rax	# args, tmp196
	leaq	(%rdx,%rax), %rbx	#, D.17464
	.loc 1 884 0
	movl	-20(%rbp), %eax	# i, tmp197
	movslq	%eax, %rdx	# tmp197, D.17463
	movq	%rdx, %rax	# D.17463, tmp198
	salq	$2, %rax	#, tmp198
	addq	%rdx, %rax	# D.17463, tmp198
	salq	$2, %rax	#, tmp198
	addq	%rdx, %rax	# D.17463, tmp198
	salq	$3, %rax	#, tmp199
	movq	%rax, %rdx	# tmp198, D.17463
	movq	-48(%rbp), %rax	# args, tmp200
	addq	%rdx, %rax	# D.17463, D.17464
	.loc 1 882 0
	movl	48(%rax), %ecx	# _46->unsignedp, D.17466
	.loc 1 884 0
	movl	-20(%rbp), %eax	# i, tmp201
	movslq	%eax, %rdx	# tmp201, D.17463
	movq	%rdx, %rax	# D.17463, tmp202
	salq	$2, %rax	#, tmp202
	addq	%rdx, %rax	# D.17463, tmp202
	salq	$2, %rax	#, tmp202
	addq	%rdx, %rax	# D.17463, tmp202
	salq	$3, %rax	#, tmp203
	movq	%rax, %rdx	# tmp202, D.17463
	movq	-48(%rbp), %rax	# args, tmp204
	addq	%rdx, %rax	# D.17463, D.17464
	.loc 1 882 0
	movq	16(%rax), %rdi	# _50->value, D.17465
	.loc 1 883 0
	movl	-20(%rbp), %eax	# i, tmp205
	movslq	%eax, %rdx	# tmp205, D.17463
	movq	%rdx, %rax	# D.17463, tmp206
	salq	$2, %rax	#, tmp206
	addq	%rdx, %rax	# D.17463, tmp206
	salq	$2, %rax	#, tmp206
	addq	%rdx, %rax	# D.17463, tmp206
	salq	$3, %rax	#, tmp207
	movq	%rax, %rdx	# tmp206, D.17463
	movq	-48(%rbp), %rax	# args, tmp208
	addq	%rdx, %rax	# D.17463, D.17464
	movq	(%rax), %rax	# _54->tree_value, D.17467
	movq	8(%rax), %rax	# _55->common.type, D.17467
	movzbl	61(%rax), %eax	# *_56, tmp211
	shrb	%al	# D.17469
	.loc 1 882 0
	movzbl	%al, %esi	# D.17469, D.17468
	movl	-20(%rbp), %eax	# i, tmp212
	movslq	%eax, %rdx	# tmp212, D.17463
	movq	%rdx, %rax	# D.17463, tmp213
	salq	$2, %rax	#, tmp213
	addq	%rdx, %rax	# D.17463, tmp213
	salq	$2, %rax	#, tmp213
	addq	%rdx, %rax	# D.17463, tmp213
	salq	$3, %rax	#, tmp214
	movq	%rax, %rdx	# tmp213, D.17463
	movq	-48(%rbp), %rax	# args, tmp215
	addq	%rdx, %rax	# D.17463, D.17464
	movl	8(%rax), %eax	# _61->mode, D.17468
	movq	%rdi, %rdx	# D.17465,
	movl	%eax, %edi	# D.17468,
	call	convert_modes	#
	movq	%rax, 16(%rbx)	# D.17465, _43->value
.L115:
	.loc 1 894 0
	movl	-20(%rbp), %eax	# i, tmp216
	movslq	%eax, %rdx	# tmp216, D.17463
	movq	%rdx, %rax	# D.17463, tmp217
	salq	$2, %rax	#, tmp217
	addq	%rdx, %rax	# D.17463, tmp217
	salq	$2, %rax	#, tmp217
	addq	%rdx, %rax	# D.17463, tmp217
	salq	$3, %rax	#, tmp218
	movq	%rax, %rdx	# tmp217, D.17463
	movq	-48(%rbp), %rax	# args, tmp219
	addq	%rdx, %rax	# D.17463, D.17464
	movq	16(%rax), %rax	# _66->value, D.17465
	movzwl	(%rax), %eax	# _67->code, D.17471
	cmpw	$61, %ax	#, D.17471
	je	.L113	#,
	.loc 1 895 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp220
	movslq	%eax, %rdx	# tmp220, D.17463
	movq	%rdx, %rax	# D.17463, tmp221
	salq	$2, %rax	#, tmp221
	addq	%rdx, %rax	# D.17463, tmp221
	salq	$2, %rax	#, tmp221
	addq	%rdx, %rax	# D.17463, tmp221
	salq	$3, %rax	#, tmp222
	movq	%rax, %rdx	# tmp221, D.17463
	movq	-48(%rbp), %rax	# args, tmp223
	addq	%rdx, %rax	# D.17463, D.17464
	movq	16(%rax), %rax	# _71->value, D.17465
	movzwl	(%rax), %eax	# _72->code, D.17471
	.loc 1 894 0 discriminator 1
	cmpw	$63, %ax	#, D.17471
	jne	.L116	#,
	.loc 1 896 0
	movl	-20(%rbp), %eax	# i, tmp224
	movslq	%eax, %rdx	# tmp224, D.17463
	movq	%rdx, %rax	# D.17463, tmp225
	salq	$2, %rax	#, tmp225
	addq	%rdx, %rax	# D.17463, tmp225
	salq	$2, %rax	#, tmp225
	addq	%rdx, %rax	# D.17463, tmp225
	salq	$3, %rax	#, tmp226
	movq	%rax, %rdx	# tmp225, D.17463
	movq	-48(%rbp), %rax	# args, tmp227
	addq	%rdx, %rax	# D.17463, D.17464
	movq	16(%rax), %rax	# _76->value, D.17465
	movq	8(%rax), %rax	# _77->fld[0].rtx, D.17465
	movzwl	(%rax), %eax	# _78->code, D.17471
	cmpw	$61, %ax	#, D.17471
	je	.L113	#,
.L116:
	.loc 1 897 0
	movl	-20(%rbp), %eax	# i, tmp228
	movslq	%eax, %rdx	# tmp228, D.17463
	movq	%rdx, %rax	# D.17463, tmp229
	salq	$2, %rax	#, tmp229
	addq	%rdx, %rax	# D.17463, tmp229
	salq	$2, %rax	#, tmp229
	addq	%rdx, %rax	# D.17463, tmp229
	salq	$3, %rax	#, tmp230
	movq	%rax, %rdx	# tmp229, D.17463
	movq	-48(%rbp), %rax	# args, tmp231
	addq	%rdx, %rax	# D.17463, D.17464
	movl	8(%rax), %eax	# _82->mode, D.17468
	cmpl	$51, %eax	#, D.17468
	je	.L113	#,
	.loc 1 898 0
	movl	-20(%rbp), %eax	# i, tmp232
	movslq	%eax, %rdx	# tmp232, D.17463
	movq	%rdx, %rax	# D.17463, tmp233
	salq	$2, %rax	#, tmp233
	addq	%rdx, %rax	# D.17463, tmp233
	salq	$2, %rax	#, tmp233
	addq	%rdx, %rax	# D.17463, tmp233
	salq	$3, %rax	#, tmp234
	movq	%rax, %rdx	# tmp233, D.17463
	movq	-48(%rbp), %rax	# args, tmp235
	addq	%rdx, %rax	# D.17463, D.17464
	movq	16(%rax), %rax	# _86->value, D.17465
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17465,
	call	rtx_cost	#
	cmpl	$4, %eax	#, D.17466
	jle	.L113	#,
	.loc 1 899 0
	movq	-56(%rbp), %rax	# reg_parm_seen, tmp236
	movl	(%rax), %eax	# *reg_parm_seen_2(D), D.17466
	testl	%eax, %eax	# D.17466
	jne	.L117	#,
	.loc 1 900 0
	call	preserve_subexpressions_p	#
	testl	%eax, %eax	# D.17466
	je	.L113	#,
.L117:
	.loc 1 901 0
	movl	-20(%rbp), %eax	# i, tmp237
	movslq	%eax, %rdx	# tmp237, D.17463
	movq	%rdx, %rax	# D.17463, tmp238
	salq	$2, %rax	#, tmp238
	addq	%rdx, %rax	# D.17463, tmp238
	salq	$2, %rax	#, tmp238
	addq	%rdx, %rax	# D.17463, tmp238
	salq	$3, %rax	#, tmp239
	movq	%rax, %rdx	# tmp238, D.17463
	movq	-48(%rbp), %rax	# args, tmp240
	leaq	(%rdx,%rax), %rbx	#, D.17464
	movl	-20(%rbp), %eax	# i, tmp241
	movslq	%eax, %rdx	# tmp241, D.17463
	movq	%rdx, %rax	# D.17463, tmp242
	salq	$2, %rax	#, tmp242
	addq	%rdx, %rax	# D.17463, tmp242
	salq	$2, %rax	#, tmp242
	addq	%rdx, %rax	# D.17463, tmp242
	salq	$3, %rax	#, tmp243
	movq	%rax, %rdx	# tmp242, D.17463
	movq	-48(%rbp), %rax	# args, tmp244
	addq	%rdx, %rax	# D.17463, D.17464
	movq	16(%rax), %rcx	# _96->value, D.17465
	movl	-20(%rbp), %eax	# i, tmp245
	movslq	%eax, %rdx	# tmp245, D.17463
	movq	%rdx, %rax	# D.17463, tmp246
	salq	$2, %rax	#, tmp246
	addq	%rdx, %rax	# D.17463, tmp246
	salq	$2, %rax	#, tmp246
	addq	%rdx, %rax	# D.17463, tmp246
	salq	$3, %rax	#, tmp247
	movq	%rax, %rdx	# tmp246, D.17463
	movq	-48(%rbp), %rax	# args, tmp248
	addq	%rdx, %rax	# D.17463, D.17464
	movl	8(%rax), %eax	# _100->mode, D.17468
	movq	%rcx, %rsi	# D.17465,
	movl	%eax, %edi	# D.17468,
	call	copy_to_mode_reg	#
	movq	%rax, 16(%rbx)	# D.17465, _93->value
.L113:
	.loc 1 859 0
	addl	$1, -20(%rbp)	#, i
.L112:
	.loc 1 859 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp249
	cmpl	-36(%rbp), %eax	# num_actuals, tmp249
	jl	.L118	#,
	.loc 1 903 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	precompute_register_parameters, .-precompute_register_parameters
	.type	save_fixed_argument_area, @function
save_fixed_argument_area:
.LFB10:
	.loc 1 918 0
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
	movl	%edi, -52(%rbp)	# reg_parm_stack_space, reg_parm_stack_space
	movq	%rsi, -64(%rbp)	# argblock, argblock
	movq	%rdx, -72(%rbp)	# low_to_save, low_to_save
	movq	%rcx, -80(%rbp)	# high_to_save, high_to_save
	.loc 1 920 0
	movq	$0, -32(%rbp)	#, save_area
	.loc 1 926 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L120	#
.L125:
	.loc 1 929 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.25
	cmpl	%eax, -44(%rbp)	# highest_outgoing_arg_in_use.25, i
	jge	.L121	#,
	.loc 1 930 0
	movq	stack_usage_map(%rip), %rdx	# stack_usage_map, stack_usage_map.26
	movl	-44(%rbp), %eax	# i, tmp96
	cltq
	addq	%rdx, %rax	# stack_usage_map.26, D.17473
	movzbl	(%rax), %eax	# *_13, D.17474
	testb	%al, %al	# D.17474
	jne	.L122	#,
.L121:
	.loc 1 931 0
	jmp	.L123	#
.L122:
	.loc 1 933 0
	movq	-72(%rbp), %rax	# low_to_save, tmp97
	movl	(%rax), %eax	# *low_to_save_15(D), D.17475
	cmpl	$-1, %eax	#, D.17475
	jne	.L124	#,
	.loc 1 934 0
	movq	-72(%rbp), %rax	# low_to_save, tmp98
	movl	-44(%rbp), %edx	# i, tmp99
	movl	%edx, (%rax)	# tmp99, *low_to_save_15(D)
.L124:
	.loc 1 936 0
	movq	-80(%rbp), %rax	# high_to_save, tmp100
	movl	-44(%rbp), %edx	# i, tmp101
	movl	%edx, (%rax)	# tmp101, *high_to_save_17(D)
.L123:
	.loc 1 926 0
	addl	$1, -44(%rbp)	#, i
.L120:
	.loc 1 926 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp102
	cmpl	-52(%rbp), %eax	# reg_parm_stack_space, tmp102
	jl	.L125	#,
	.loc 1 939 0 is_stmt 1
	movq	-72(%rbp), %rax	# low_to_save, tmp103
	movl	(%rax), %eax	# *low_to_save_15(D), D.17475
	testl	%eax, %eax	# D.17475
	js	.L126	#,
.LBB7:
	.loc 1 941 0
	movq	-80(%rbp), %rax	# high_to_save, tmp104
	movl	(%rax), %edx	# *high_to_save_17(D), D.17475
	movq	-72(%rbp), %rax	# low_to_save, tmp105
	movl	(%rax), %eax	# *low_to_save_15(D), D.17475
	subl	%eax, %edx	# D.17475, D.17475
	movl	%edx, %eax	# D.17475, D.17475
	addl	$1, %eax	#, tmp106
	movl	%eax, -36(%rbp)	# tmp106, num_to_save
	.loc 1 943 0
	movl	-36(%rbp), %eax	# num_to_save, tmp107
	sall	$3, %eax	#, D.17475
	.loc 1 942 0
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.17476,
	call	mode_for_size	#
	movl	%eax, -40(%rbp)	# tmp108, save_mode
	.loc 1 947 0
	movq	-72(%rbp), %rax	# low_to_save, tmp109
	movl	(%rax), %ecx	# *low_to_save_15(D), D.17475
	movl	target_flags(%rip), %eax	# target_flags, target_flags.28
	andl	$33554432, %eax	#, D.17475
	testl	%eax, %eax	# D.17475
	je	.L127	#,
	.loc 1 947 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, iftmp.27
	jmp	.L128	#
.L127:
	.loc 1 947 0 discriminator 2
	movl	$32, %eax	#, iftmp.27
.L128:
	.loc 1 947 0 discriminator 3
	movl	-40(%rbp), %edx	# save_mode, save_mode.29
	movslq	%edx, %rdx	# save_mode.29, tmp110
	movzbl	mode_size(%rdx), %edx	# mode_size, D.17477
	movzbl	%dl, %edx	# D.17477, D.17475
	cmpl	%edx, %eax	# D.17475, iftmp.27
	cmovg	%edx, %eax	# iftmp.27,, D.17475, D.17475
	.loc 1 948 0 is_stmt 1 discriminator 3
	subl	$1, %eax	#, D.17475
	.loc 1 947 0 discriminator 3
	andl	%ecx, %eax	# D.17475, D.17475
	testl	%eax, %eax	# D.17475
	je	.L129	#,
	.loc 1 949 0
	movl	$51, -40(%rbp)	#, save_mode
.L129:
	.loc 1 960 0
	movq	-72(%rbp), %rax	# low_to_save, tmp111
	movl	(%rax), %eax	# *low_to_save_15(D), D.17475
	.loc 1 958 0
	movslq	%eax, %rdx	# D.17475, D.17478
	movq	-64(%rbp), %rax	# argblock, tmp112
	movq	%rdx, %rsi	# D.17478,
	movq	%rax, %rdi	# tmp112,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.17479
	movl	-40(%rbp), %eax	# save_mode, tmp113
	movq	%rdx, %rsi	# D.17479,
	movl	%eax, %edi	# tmp113,
	call	memory_address	#
	movq	%rax, %rdx	#, D.17479
	movl	-40(%rbp), %eax	# save_mode, tmp114
	movq	%rdx, %rsi	# D.17479,
	movl	%eax, %edi	# tmp114,
	call	gen_rtx_MEM	#
	movq	%rax, -24(%rbp)	# tmp115, stack_area
	.loc 1 964 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.31
	andl	$33554432, %eax	#, D.17475
	testl	%eax, %eax	# D.17475
	je	.L130	#,
	.loc 1 964 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.30
	jmp	.L131	#
.L130:
	.loc 1 964 0 discriminator 2
	movl	$32, %eax	#, iftmp.30
.L131:
	.loc 1 964 0 discriminator 3
	movq	-24(%rbp), %rdx	# stack_area, tmp116
	movl	%eax, %esi	# iftmp.30,
	movq	%rdx, %rdi	# tmp116,
	call	set_mem_align	#
	.loc 1 965 0 is_stmt 1 discriminator 3
	cmpl	$51, -40(%rbp)	#, save_mode
	jne	.L132	#,
	.loc 1 967 0
	movl	-36(%rbp), %eax	# num_to_save, tmp117
	cltq
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.17478,
	movl	$51, %edi	#,
	call	assign_stack_temp	#
	movq	%rax, -32(%rbp)	# tmp118, save_area
	.loc 1 972 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.33
	andl	$33554432, %eax	#, D.17475
	.loc 1 971 0
	testl	%eax, %eax	# D.17475
	je	.L133	#,
	.loc 1 971 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.32
	jmp	.L134	#
.L133:
	.loc 1 971 0 discriminator 2
	movl	$32, %ebx	#, iftmp.32
.L134:
	.loc 1 971 0 discriminator 1
	movl	-36(%rbp), %eax	# num_to_save, tmp119
	movslq	%eax, %r12	# tmp119, D.17480
	movq	-32(%rbp), %rax	# save_area, tmp120
	movq	%rax, %rdi	# tmp120,
	call	validize_mem	#
	movq	-24(%rbp), %rsi	# stack_area, tmp121
	movl	%ebx, %ecx	# iftmp.32,
	movq	%r12, %rdx	# D.17480,
	movq	%rax, %rdi	# D.17479,
	call	move_by_pieces	#
	jmp	.L126	#
.L132:
	.loc 1 976 0 is_stmt 1
	movl	-40(%rbp), %eax	# save_mode, tmp122
	movl	%eax, %edi	# tmp122,
	call	gen_reg_rtx	#
	movq	%rax, -32(%rbp)	# tmp123, save_area
	.loc 1 977 0
	movq	-24(%rbp), %rdx	# stack_area, tmp124
	movq	-32(%rbp), %rax	# save_area, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	emit_move_insn	#
.L126:
.LBE7:
	.loc 1 981 0
	movq	-32(%rbp), %rax	# save_area, D.17481
	.loc 1 982 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	save_fixed_argument_area, .-save_fixed_argument_area
	.type	restore_fixed_argument_area, @function
restore_fixed_argument_area:
.LFB11:
	.loc 1 990 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# save_area, save_area
	movq	%rsi, -48(%rbp)	# argblock, argblock
	movl	%edx, -52(%rbp)	# high_to_save, high_to_save
	movl	%ecx, -56(%rbp)	# low_to_save, low_to_save
	.loc 1 991 0
	movq	-40(%rbp), %rax	# save_area, tmp70
	movzbl	2(%rax), %eax	# save_area_2(D)->mode, D.17482
	movzbl	%al, %eax	# D.17482, tmp71
	movl	%eax, -28(%rbp)	# tmp71, save_mode
	.loc 1 1000 0
	movl	-56(%rbp), %eax	# low_to_save, tmp72
	movslq	%eax, %rdx	# tmp72, D.17483
	movq	-48(%rbp), %rax	# argblock, tmp73
	movq	%rdx, %rsi	# D.17483,
	movq	%rax, %rdi	# tmp73,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.17484
	movl	-28(%rbp), %eax	# save_mode, tmp74
	movq	%rdx, %rsi	# D.17484,
	movl	%eax, %edi	# tmp74,
	call	memory_address	#
	movq	%rax, %rdx	#, D.17484
	.loc 1 999 0
	movl	-28(%rbp), %eax	# save_mode, tmp75
	movq	%rdx, %rsi	# D.17484,
	movl	%eax, %edi	# tmp75,
	call	gen_rtx_MEM	#
	movq	%rax, -24(%rbp)	# tmp76, stack_area
	.loc 1 1006 0
	cmpl	$51, -28(%rbp)	#, save_mode
	je	.L137	#,
	.loc 1 1007 0
	movq	-40(%rbp), %rdx	# save_area, tmp77
	movq	-24(%rbp), %rax	# stack_area, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	emit_move_insn	#
	jmp	.L136	#
.L137:
	.loc 1 1013 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.35
	andl	$33554432, %eax	#, D.17485
	.loc 1 1012 0
	testl	%eax, %eax	# D.17485
	je	.L139	#,
	.loc 1 1012 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.34
	jmp	.L140	#
.L139:
	.loc 1 1012 0 discriminator 2
	movl	$32, %ebx	#, iftmp.34
.L140:
	.loc 1 1013 0 is_stmt 1 discriminator 3
	movl	-56(%rbp), %eax	# low_to_save, tmp79
	movl	-52(%rbp), %edx	# high_to_save, tmp80
	subl	%eax, %edx	# tmp79, D.17485
	movl	%edx, %eax	# D.17485, D.17485
	addl	$1, %eax	#, D.17485
	.loc 1 1012 0 discriminator 3
	movslq	%eax, %r12	# D.17485, D.17486
	movq	-40(%rbp), %rax	# save_area, tmp81
	movq	%rax, %rdi	# tmp81,
	call	validize_mem	#
	movq	%rax, %rsi	#, D.17484
	movq	-24(%rbp), %rax	# stack_area, tmp82
	movl	%ebx, %ecx	# iftmp.34,
	movq	%r12, %rdx	# D.17486,
	movq	%rax, %rdi	# tmp82,
	call	move_by_pieces	#
.L136:
	.loc 1 1014 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	restore_fixed_argument_area, .-restore_fixed_argument_area
	.type	store_unaligned_arguments_into_pseudos, @function
store_unaligned_arguments_into_pseudos:
.LFB12:
	.loc 1 1030 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# args, args
	movl	%esi, -76(%rbp)	# num_actuals, num_actuals
	.loc 1 1033 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L142	#
.L160:
	.loc 1 1034 0
	movl	-52(%rbp), %eax	# i, tmp150
	movslq	%eax, %rdx	# tmp150, D.17487
	movq	%rdx, %rax	# D.17487, tmp151
	salq	$2, %rax	#, tmp151
	addq	%rdx, %rax	# D.17487, tmp151
	salq	$2, %rax	#, tmp151
	addq	%rdx, %rax	# D.17487, tmp151
	salq	$3, %rax	#, tmp152
	movq	%rax, %rdx	# tmp151, D.17487
	movq	-72(%rbp), %rax	# args, tmp153
	addq	%rdx, %rax	# D.17487, D.17488
	movq	32(%rax), %rax	# _16->reg, D.17489
	testq	%rax, %rax	# D.17489
	je	.L143	#,
	.loc 1 1034 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# i, tmp154
	movslq	%eax, %rdx	# tmp154, D.17487
	movq	%rdx, %rax	# D.17487, tmp155
	salq	$2, %rax	#, tmp155
	addq	%rdx, %rax	# D.17487, tmp155
	salq	$2, %rax	#, tmp155
	addq	%rdx, %rax	# D.17487, tmp155
	salq	$3, %rax	#, tmp156
	movq	%rax, %rdx	# tmp155, D.17487
	movq	-72(%rbp), %rax	# args, tmp157
	addq	%rdx, %rax	# D.17487, D.17488
	movl	56(%rax), %eax	# _20->pass_on_stack, D.17490
	testl	%eax, %eax	# D.17490
	jne	.L143	#,
	.loc 1 1035 0 is_stmt 1
	movl	-52(%rbp), %eax	# i, tmp158
	movslq	%eax, %rdx	# tmp158, D.17487
	movq	%rdx, %rax	# D.17487, tmp159
	salq	$2, %rax	#, tmp159
	addq	%rdx, %rax	# D.17487, tmp159
	salq	$2, %rax	#, tmp159
	addq	%rdx, %rax	# D.17487, tmp159
	salq	$3, %rax	#, tmp160
	movq	%rax, %rdx	# tmp159, D.17487
	movq	-72(%rbp), %rax	# args, tmp161
	addq	%rdx, %rax	# D.17487, D.17488
	movl	8(%rax), %eax	# _24->mode, D.17491
	cmpl	$51, %eax	#, D.17491
	jne	.L143	#,
	.loc 1 1036 0
	movl	-52(%rbp), %eax	# i, tmp162
	movslq	%eax, %rdx	# tmp162, D.17487
	movq	%rdx, %rax	# D.17487, tmp163
	salq	$2, %rax	#, tmp163
	addq	%rdx, %rax	# D.17487, tmp163
	salq	$2, %rax	#, tmp163
	addq	%rdx, %rax	# D.17487, tmp163
	salq	$3, %rax	#, tmp164
	movq	%rax, %rdx	# tmp163, D.17487
	movq	-72(%rbp), %rax	# args, tmp165
	addq	%rdx, %rax	# D.17487, D.17488
	movq	(%rax), %rax	# _28->tree_value, D.17492
	movq	8(%rax), %rax	# _29->common.type, D.17492
	movl	64(%rax), %edx	# _30->type.align, D.17493
	.loc 1 1037 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.37
	andl	$33554432, %eax	#, D.17490
	testl	%eax, %eax	# D.17490
	je	.L144	#,
	.loc 1 1037 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.36
	jmp	.L145	#
.L144:
	.loc 1 1037 0 discriminator 2
	movl	$32, %eax	#, iftmp.36
.L145:
	.loc 1 1036 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.36, D.17493
	jae	.L143	#,
.LBB8:
	.loc 1 1039 0
	movl	-52(%rbp), %eax	# i, tmp166
	movslq	%eax, %rdx	# tmp166, D.17487
	movq	%rdx, %rax	# D.17487, tmp167
	salq	$2, %rax	#, tmp167
	addq	%rdx, %rax	# D.17487, tmp167
	salq	$2, %rax	#, tmp167
	addq	%rdx, %rax	# D.17487, tmp167
	salq	$3, %rax	#, tmp168
	movq	%rax, %rdx	# tmp167, D.17487
	movq	-72(%rbp), %rax	# args, tmp169
	addq	%rdx, %rax	# D.17487, D.17488
	movq	(%rax), %rax	# _38->tree_value, D.17492
	movq	8(%rax), %rax	# _39->common.type, D.17492
	movq	%rax, %rdi	# D.17492,
	call	int_size_in_bytes	#
	movl	%eax, -44(%rbp)	# D.17494, bytes
	.loc 1 1040 0
	movl	$0, -40(%rbp)	#, big_endian_correction
	.loc 1 1042 0
	movl	-52(%rbp), %eax	# i, tmp170
	movslq	%eax, %rdx	# tmp170, D.17487
	movq	%rdx, %rax	# D.17487, tmp171
	salq	$2, %rax	#, tmp171
	addq	%rdx, %rax	# D.17487, tmp171
	salq	$2, %rax	#, tmp171
	addq	%rdx, %rax	# D.17487, tmp171
	salq	$3, %rax	#, tmp172
	movq	%rax, %rdx	# tmp171, D.17487
	movq	-72(%rbp), %rax	# args, tmp173
	leaq	(%rdx,%rax), %rcx	#, D.17488
	.loc 1 1043 0
	movl	-52(%rbp), %eax	# i, tmp174
	movslq	%eax, %rdx	# tmp174, D.17487
	movq	%rdx, %rax	# D.17487, tmp175
	salq	$2, %rax	#, tmp175
	addq	%rdx, %rax	# D.17487, tmp175
	salq	$2, %rax	#, tmp175
	addq	%rdx, %rax	# D.17487, tmp175
	salq	$3, %rax	#, tmp176
	movq	%rax, %rdx	# tmp175, D.17487
	movq	-72(%rbp), %rax	# args, tmp177
	addq	%rdx, %rax	# D.17487, D.17488
	movl	52(%rax), %eax	# _49->partial, D.17490
	.loc 1 1044 0
	testl	%eax, %eax	# D.17490
	je	.L146	#,
	.loc 1 1043 0
	movl	-52(%rbp), %eax	# i, tmp178
	movslq	%eax, %rdx	# tmp178, D.17487
	movq	%rdx, %rax	# D.17487, tmp179
	salq	$2, %rax	#, tmp179
	addq	%rdx, %rax	# D.17487, tmp179
	salq	$2, %rax	#, tmp179
	addq	%rdx, %rax	# D.17487, tmp179
	salq	$3, %rax	#, tmp180
	movq	%rax, %rdx	# tmp179, D.17487
	movq	-72(%rbp), %rax	# args, tmp181
	addq	%rdx, %rax	# D.17487, D.17488
	.loc 1 1044 0
	movl	52(%rax), %eax	# _53->partial, iftmp.38
	jmp	.L147	#
.L146:
	.loc 1 1044 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.40
	andl	$33554432, %eax	#, D.17490
	testl	%eax, %eax	# D.17490
	je	.L148	#,
	movl	$7, %eax	#, iftmp.39
	jmp	.L149	#
.L148:
	.loc 1 1044 0 discriminator 2
	movl	$3, %eax	#, iftmp.39
.L149:
	.loc 1 1044 0 discriminator 3
	movl	-44(%rbp), %edx	# bytes, tmp182
	addl	%edx, %eax	# tmp182, D.17490
	movl	target_flags(%rip), %edx	# target_flags, target_flags.42
	andl	$33554432, %edx	#, D.17490
	testl	%edx, %edx	# D.17490
	je	.L150	#,
	.loc 1 1044 0 discriminator 1
	movl	$8, %ebx	#, iftmp.41
	jmp	.L151	#
.L150:
	.loc 1 1044 0 discriminator 2
	movl	$4, %ebx	#, iftmp.41
.L151:
	.loc 1 1044 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.41
.L147:
	.loc 1 1043 0 is_stmt 1
	movl	%eax, 144(%rcx)	# iftmp.38, _46->n_aligned_regs
	.loc 1 1046 0
	movl	-52(%rbp), %eax	# i, tmp185
	movslq	%eax, %rdx	# tmp185, D.17487
	movq	%rdx, %rax	# D.17487, tmp186
	salq	$2, %rax	#, tmp186
	addq	%rdx, %rax	# D.17487, tmp186
	salq	$2, %rax	#, tmp186
	addq	%rdx, %rax	# D.17487, tmp186
	salq	$3, %rax	#, tmp187
	movq	%rax, %rdx	# tmp186, D.17487
	movq	-72(%rbp), %rax	# args, tmp188
	leaq	(%rdx,%rax), %rbx	#, D.17488
	.loc 1 1047 0
	movl	-52(%rbp), %eax	# i, tmp189
	movslq	%eax, %rdx	# tmp189, D.17487
	movq	%rdx, %rax	# D.17487, tmp190
	salq	$2, %rax	#, tmp190
	addq	%rdx, %rax	# D.17487, tmp190
	salq	$2, %rax	#, tmp190
	addq	%rdx, %rax	# D.17487, tmp190
	salq	$3, %rax	#, tmp191
	movq	%rax, %rdx	# tmp190, D.17487
	movq	-72(%rbp), %rax	# args, tmp192
	addq	%rdx, %rax	# D.17487, D.17488
	movl	144(%rax), %eax	# _70->n_aligned_regs, D.17490
	.loc 1 1046 0
	cltq
	salq	$3, %rax	#, D.17487
	movq	%rax, %rdi	# D.17487,
	call	xmalloc	#
	movq	%rax, 136(%rbx)	# D.17495, _67->aligned_regs
	.loc 1 1058 0
	movl	$0, -48(%rbp)	#, j
	jmp	.L152	#
.L159:
.LBB9:
	.loc 1 1060 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.45
	movl	%eax, %edi	# word_mode.45,
	call	gen_reg_rtx	#
	movq	%rax, -32(%rbp)	# tmp194, reg
	.loc 1 1061 0
	movl	-48(%rbp), %ecx	# j, j.46
	movl	-52(%rbp), %eax	# i, tmp195
	movslq	%eax, %rdx	# tmp195, D.17487
	movq	%rdx, %rax	# D.17487, tmp196
	salq	$2, %rax	#, tmp196
	addq	%rdx, %rax	# D.17487, tmp196
	salq	$2, %rax	#, tmp196
	addq	%rdx, %rax	# D.17487, tmp196
	salq	$3, %rax	#, tmp197
	movq	%rax, %rdx	# tmp196, D.17487
	movq	-72(%rbp), %rax	# args, tmp198
	addq	%rdx, %rax	# D.17487, D.17488
	movq	16(%rax), %rax	# _85->value, D.17489
	movl	$51, %edx	#,
	movl	%ecx, %esi	# j.46,
	movq	%rax, %rdi	# D.17489,
	call	operand_subword_force	#
	movq	%rax, -24(%rbp)	# tmp199, word
	.loc 1 1062 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.48
	andl	$33554432, %eax	#, D.17490
	testl	%eax, %eax	# D.17490
	je	.L153	#,
	.loc 1 1062 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.47
	jmp	.L154	#
.L153:
	.loc 1 1062 0 discriminator 2
	movl	$32, %eax	#, iftmp.47
.L154:
	.loc 1 1062 0 discriminator 3
	movl	-44(%rbp), %edx	# bytes, tmp200
	sall	$3, %edx	#, D.17490
	cmpl	%edx, %eax	# D.17490, iftmp.47
	cmovg	%edx, %eax	# iftmp.47,, D.17490, tmp201
	movl	%eax, -36(%rbp)	# tmp201, bitsize
	.loc 1 1064 0 is_stmt 1 discriminator 3
	movl	-52(%rbp), %eax	# i, tmp202
	movslq	%eax, %rdx	# tmp202, D.17487
	movq	%rdx, %rax	# D.17487, tmp203
	salq	$2, %rax	#, tmp203
	addq	%rdx, %rax	# D.17487, tmp203
	salq	$2, %rax	#, tmp203
	addq	%rdx, %rax	# D.17487, tmp203
	salq	$3, %rax	#, tmp204
	movq	%rax, %rdx	# tmp203, D.17487
	movq	-72(%rbp), %rax	# args, tmp205
	addq	%rdx, %rax	# D.17487, D.17488
	movq	136(%rax), %rax	# _96->aligned_regs, D.17496
	movl	-48(%rbp), %edx	# j, tmp206
	movslq	%edx, %rdx	# tmp206, D.17487
	salq	$3, %rdx	#, D.17487
	addq	%rax, %rdx	# D.17496, D.17496
	movq	-32(%rbp), %rax	# reg, tmp207
	movq	%rax, (%rdx)	# tmp207, *_100
	.loc 1 1077 0 discriminator 3
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.17489
	movq	-32(%rbp), %rax	# reg, tmp208
	movq	%rdx, %rsi	# D.17489,
	movq	%rax, %rdi	# tmp208,
	call	emit_move_insn	#
	.loc 1 1079 0 discriminator 3
	movl	-36(%rbp), %eax	# bitsize, tmp209
	leal	7(%rax), %edx	#, tmp211
	testl	%eax, %eax	# tmp210
	cmovs	%edx, %eax	# tmp211,, tmp210
	sarl	$3, %eax	#, tmp212
	subl	%eax, -44(%rbp)	# D.17490, bytes
	.loc 1 1084 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.50
	andl	$33554432, %eax	#, D.17490
	.loc 1 1080 0 discriminator 3
	testl	%eax, %eax	# D.17490
	je	.L155	#,
	.loc 1 1080 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.49
	jmp	.L156	#
.L155:
	.loc 1 1080 0 discriminator 2
	movl	$32, %ebx	#, iftmp.49
.L156:
	.loc 1 1083 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.52
	andl	$33554432, %eax	#, D.17490
	.loc 1 1080 0 discriminator 3
	testl	%eax, %eax	# D.17490
	je	.L157	#,
	.loc 1 1080 0 is_stmt 0 discriminator 4
	movl	$64, %eax	#, iftmp.51
	jmp	.L158	#
.L157:
	.loc 1 1080 0 discriminator 5
	movl	$32, %eax	#, iftmp.51
.L158:
	.loc 1 1080 0 discriminator 6
	movl	word_mode(%rip), %edx	# word_mode, word_mode.53
	movl	word_mode(%rip), %ecx	# word_mode, word_mode.54
	movl	-36(%rbp), %esi	# bitsize, tmp213
	movslq	%esi, %rsi	# tmp213, D.17487
	movq	-24(%rbp), %rdi	# word, tmp214
	movq	%rax, 8(%rsp)	# iftmp.51,
	movl	%edx, (%rsp)	# word_mode.53,
	movl	%ecx, %r9d	# word_mode.54,
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	call	extract_bit_field	#
	movq	%rax, %rdi	#, D.17489
	movl	word_mode(%rip), %ecx	# word_mode, word_mode.55
	movl	-40(%rbp), %eax	# big_endian_correction, tmp215
	movslq	%eax, %rdx	# tmp215, D.17487
	movl	-36(%rbp), %eax	# bitsize, tmp216
	movslq	%eax, %rsi	# tmp216, D.17487
	movq	-32(%rbp), %rax	# reg, tmp217
	movq	%rbx, %r9	# iftmp.49,
	movq	%rdi, %r8	# D.17489,
	movq	%rax, %rdi	# tmp217,
	call	store_bit_field	#
.LBE9:
	.loc 1 1058 0 is_stmt 1 discriminator 6
	addl	$1, -48(%rbp)	#, j
.L152:
	.loc 1 1058 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# i, tmp218
	movslq	%eax, %rdx	# tmp218, D.17487
	movq	%rdx, %rax	# D.17487, tmp219
	salq	$2, %rax	#, tmp219
	addq	%rdx, %rax	# D.17487, tmp219
	salq	$2, %rax	#, tmp219
	addq	%rdx, %rax	# D.17487, tmp219
	salq	$3, %rax	#, tmp220
	movq	%rax, %rdx	# tmp219, D.17487
	movq	-72(%rbp), %rax	# args, tmp221
	addq	%rdx, %rax	# D.17487, D.17488
	movl	144(%rax), %eax	# _78->n_aligned_regs, D.17490
	cmpl	-48(%rbp), %eax	# j, D.17490
	jg	.L159	#,
.L143:
.LBE8:
	.loc 1 1033 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L142:
	.loc 1 1033 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# i, tmp222
	cmpl	-76(%rbp), %eax	# num_actuals, tmp222
	jl	.L160	#,
	.loc 1 1087 0 is_stmt 1
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	store_unaligned_arguments_into_pseudos, .-store_unaligned_arguments_into_pseudos
	.type	initialize_argument_information, @function
initialize_argument_information:
.LFB13:
	.loc 1 1128 0
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
	movl	%edi, -100(%rbp)	# num_actuals, num_actuals
	movq	%rsi, -112(%rbp)	# args, args
	movq	%rdx, -120(%rbp)	# args_size, args_size
	movl	%ecx, -104(%rbp)	# n_named_args, n_named_args
	movq	%r8, -128(%rbp)	# actparms, actparms
	movq	%r9, -136(%rbp)	# fndecl, fndecl
	.loc 1 1139 0
	movq	-120(%rbp), %rax	# args_size, tmp349
	movq	$0, (%rax)	#, args_size_16(D)->constant
	.loc 1 1140 0
	movq	-120(%rbp), %rax	# args_size, tmp350
	movq	$0, 8(%rax)	#, args_size_16(D)->var
	.loc 1 1146 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.56
	andl	$2048, %eax	#, D.17497
	testl	%eax, %eax	# D.17497
	jne	.L162	#,
	.loc 1 1146 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.57
	andl	$4096, %eax	#, D.17497
	testl	%eax, %eax	# D.17497
	jne	.L162	#,
	.loc 1 1148 0 is_stmt 1
	movl	-100(%rbp), %eax	# num_actuals, tmp354
	subl	$1, %eax	#, tmp353
	movl	%eax, -84(%rbp)	# tmp353, i
	movl	$-1, -92(%rbp)	#, inc
	jmp	.L163	#
.L162:
	.loc 1 1154 0
	movl	$0, -84(%rbp)	#, i
	movl	$1, -92(%rbp)	#, inc
.L163:
	.loc 1 1158 0
	movq	-128(%rbp), %rax	# actparms, tmp355
	movq	%rax, -72(%rbp)	# tmp355, p
	movl	$0, -88(%rbp)	#, argpos
	jmp	.L164	#
.L205:
.LBB10:
	.loc 1 1160 0
	movq	-72(%rbp), %rax	# p, tmp356
	movq	32(%rax), %rax	# p_5->list.value, D.17498
	movq	8(%rax), %rax	# _29->common.type, tmp357
	movq	%rax, -64(%rbp)	# tmp357, type
	.loc 1 1164 0
	movl	-84(%rbp), %eax	# i, tmp358
	movslq	%eax, %rdx	# tmp358, D.17499
	movq	%rdx, %rax	# D.17499, tmp359
	salq	$2, %rax	#, tmp359
	addq	%rdx, %rax	# D.17499, tmp359
	salq	$2, %rax	#, tmp359
	addq	%rdx, %rax	# D.17499, tmp359
	salq	$3, %rax	#, tmp360
	movq	%rax, %rdx	# tmp359, D.17499
	movq	-112(%rbp), %rax	# args, tmp361
	addq	%rax, %rdx	# tmp361, D.17500
	movq	-72(%rbp), %rax	# p, tmp362
	movq	32(%rax), %rax	# p_5->list.value, D.17498
	movq	%rax, (%rdx)	# D.17498, _34->tree_value
	.loc 1 1167 0
	movq	global_trees(%rip), %rax	# global_trees, D.17498
	cmpq	-64(%rbp), %rax	# type, D.17498
	je	.L165	#,
	.loc 1 1167 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# type, tmp363
	movq	32(%rax), %rax	# type_30->type.size, D.17498
	testq	%rax, %rax	# D.17498
	jne	.L166	#,
.L165:
	.loc 1 1168 0 is_stmt 1
	movl	-84(%rbp), %eax	# i, tmp364
	movslq	%eax, %rdx	# tmp364, D.17499
	movq	%rdx, %rax	# D.17499, tmp365
	salq	$2, %rax	#, tmp365
	addq	%rdx, %rax	# D.17499, tmp365
	salq	$2, %rax	#, tmp365
	addq	%rdx, %rax	# D.17499, tmp365
	salq	$3, %rax	#, tmp366
	movq	%rax, %rdx	# tmp365, D.17499
	movq	-112(%rbp), %rax	# args, tmp367
	addq	%rax, %rdx	# tmp367, D.17500
	movq	global_trees+88(%rip), %rax	# global_trees, D.17498
	movq	%rax, (%rdx)	# D.17498, _40->tree_value
	movq	integer_types+40(%rip), %rax	# integer_types, tmp368
	movq	%rax, -64(%rbp)	# tmp368, type
.L166:
	.loc 1 1173 0
	movq	-64(%rbp), %rax	# type, tmp369
	movzbl	16(%rax), %eax	# type_6->common.code, D.17501
	cmpb	$21, %al	#, D.17501
	jne	.L167	#,
	.loc 1 1173 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# type, tmp370
	movzbl	62(%rax), %eax	# *type_6, D.17501
	andl	$8, %eax	#, D.17501
	testb	%al, %al	# D.17501
	je	.L167	#,
	.loc 1 1174 0 is_stmt 1
	movq	-64(%rbp), %rax	# type, tmp371
	movq	24(%rax), %rax	# type_6->type.values, D.17498
	movq	8(%rax), %rax	# _46->common.type, tmp372
	movq	%rax, -64(%rbp)	# tmp372, type
.L167:
	.loc 1 1191 0
	movq	-64(%rbp), %rax	# type, tmp373
	movq	32(%rax), %rax	# type_7->type.size, D.17498
	movzbl	16(%rax), %eax	# _48->common.code, D.17501
	cmpb	$25, %al	#, D.17501
	je	.L168	#,
	.loc 1 1192 0
	movq	-64(%rbp), %rax	# type, tmp374
	movq	32(%rax), %rax	# type_7->type.size, D.17498
	movq	%rax, %rdi	# D.17498,
	call	contains_placeholder_p	#
	testl	%eax, %eax	# D.17497
	jne	.L169	#,
.L168:
	.loc 1 1193 0
	movq	-64(%rbp), %rax	# type, tmp375
	movzbl	17(%rax), %eax	# *type_7, D.17501
	andl	$4, %eax	#, D.17501
	testb	%al, %al	# D.17501
	je	.L170	#,
.L169:
	.loc 1 1202 0
	movq	cfun(%rip), %rax	# cfun, cfun.58
	movzbl	425(%rax), %eax	# *cfun.58_54, D.17501
	andl	$16, %eax	#, D.17501
	testb	%al, %al	# D.17501
	je	.L171	#,
	.loc 1 1223 0
	movl	-84(%rbp), %eax	# i, tmp376
	movslq	%eax, %rdx	# tmp376, D.17499
	movq	%rdx, %rax	# D.17499, tmp377
	salq	$2, %rax	#, tmp377
	addq	%rdx, %rax	# D.17499, tmp377
	salq	$2, %rax	#, tmp377
	addq	%rdx, %rax	# D.17499, tmp377
	salq	$3, %rax	#, tmp378
	movq	%rax, %rdx	# tmp377, D.17499
	movq	-112(%rbp), %rax	# args, tmp379
	addq	%rdx, %rax	# D.17499, D.17500
	movq	(%rax), %rax	# _59->tree_value, D.17498
	movzbl	16(%rax), %eax	# _60->common.code, D.17501
	cmpb	$50, %al	#, D.17501
	jne	.L172	#,
	.loc 1 1224 0
	movl	-84(%rbp), %eax	# i, tmp380
	movslq	%eax, %rdx	# tmp380, D.17499
	movq	%rdx, %rax	# D.17499, tmp381
	salq	$2, %rax	#, tmp381
	addq	%rdx, %rax	# D.17499, tmp381
	salq	$2, %rax	#, tmp381
	addq	%rdx, %rax	# D.17499, tmp381
	salq	$3, %rax	#, tmp382
	movq	%rax, %rdx	# tmp381, D.17499
	movq	-112(%rbp), %rax	# args, tmp383
	addq	%rdx, %rax	# D.17499, D.17500
	movq	(%rax), %rax	# _64->tree_value, D.17498
	movq	40(%rax), %rax	# _65->exp.operands, D.17498
	movzbl	16(%rax), %eax	# _66->common.code, D.17501
	movzbl	%al, %eax	# D.17501, D.17497
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.17502
	cmpb	$100, %al	#, D.17502
	jne	.L172	#,
	.loc 1 1225 0
	movl	-84(%rbp), %eax	# i, tmp385
	movslq	%eax, %rdx	# tmp385, D.17499
	movq	%rdx, %rax	# D.17499, tmp386
	salq	$2, %rax	#, tmp386
	addq	%rdx, %rax	# D.17499, tmp386
	salq	$2, %rax	#, tmp386
	addq	%rdx, %rax	# D.17499, tmp386
	salq	$3, %rax	#, tmp387
	movq	%rax, %rdx	# tmp386, D.17499
	movq	-112(%rbp), %rax	# args, tmp388
	addq	%rdx, %rax	# D.17499, D.17500
	movq	(%rax), %rax	# _72->tree_value, D.17498
	movq	40(%rax), %rax	# _73->exp.operands, D.17498
	movq	144(%rax), %rax	# _74->decl.rtl, D.17503
	testq	%rax, %rax	# D.17503
	je	.L173	#,
	.loc 1 1225 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp389
	movslq	%eax, %rdx	# tmp389, D.17499
	movq	%rdx, %rax	# D.17499, tmp390
	salq	$2, %rax	#, tmp390
	addq	%rdx, %rax	# D.17499, tmp390
	salq	$2, %rax	#, tmp390
	addq	%rdx, %rax	# D.17499, tmp390
	salq	$3, %rax	#, tmp391
	movq	%rax, %rdx	# tmp390, D.17499
	movq	-112(%rbp), %rax	# args, tmp392
	addq	%rdx, %rax	# D.17499, D.17500
	movq	(%rax), %rax	# _78->tree_value, D.17498
	movq	40(%rax), %rax	# _79->exp.operands, D.17498
	movq	144(%rax), %rax	# _80->decl.rtl, iftmp.59
	jmp	.L174	#
.L173:
	.loc 1 1225 0 discriminator 2
	movl	-84(%rbp), %eax	# i, tmp393
	movslq	%eax, %rdx	# tmp393, D.17499
	movq	%rdx, %rax	# D.17499, tmp394
	salq	$2, %rax	#, tmp394
	addq	%rdx, %rax	# D.17499, tmp394
	salq	$2, %rax	#, tmp394
	addq	%rdx, %rax	# D.17499, tmp394
	salq	$3, %rax	#, tmp395
	movq	%rax, %rdx	# tmp394, D.17499
	movq	-112(%rbp), %rax	# args, tmp396
	addq	%rdx, %rax	# D.17499, D.17500
	movq	(%rax), %rax	# _84->tree_value, D.17498
	movq	40(%rax), %rax	# _85->exp.operands, D.17498
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17498,
	call	make_decl_rtl	#
	movl	-84(%rbp), %eax	# i, tmp397
	movslq	%eax, %rdx	# tmp397, D.17499
	movq	%rdx, %rax	# D.17499, tmp398
	salq	$2, %rax	#, tmp398
	addq	%rdx, %rax	# D.17499, tmp398
	salq	$2, %rax	#, tmp398
	addq	%rdx, %rax	# D.17499, tmp398
	salq	$3, %rax	#, tmp399
	movq	%rax, %rdx	# tmp398, D.17499
	movq	-112(%rbp), %rax	# args, tmp400
	addq	%rdx, %rax	# D.17499, D.17500
	movq	(%rax), %rax	# _89->tree_value, D.17498
	movq	40(%rax), %rax	# _90->exp.operands, D.17498
	movq	144(%rax), %rax	# _91->decl.rtl, iftmp.59
.L174:
	.loc 1 1225 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.59_10->code, D.17504
	cmpw	$61, %ax	#, D.17504
	je	.L172	#,
	.loc 1 1226 0 is_stmt 1
	movl	-84(%rbp), %eax	# i, tmp401
	movslq	%eax, %rdx	# tmp401, D.17499
	movq	%rdx, %rax	# D.17499, tmp402
	salq	$2, %rax	#, tmp402
	addq	%rdx, %rax	# D.17499, tmp402
	salq	$2, %rax	#, tmp402
	addq	%rdx, %rax	# D.17499, tmp402
	salq	$3, %rax	#, tmp403
	movq	%rax, %rdx	# tmp402, D.17499
	movq	-112(%rbp), %rax	# args, tmp404
	leaq	(%rdx,%rax), %rcx	#, D.17500
	movl	-84(%rbp), %eax	# i, tmp405
	movslq	%eax, %rdx	# tmp405, D.17499
	movq	%rdx, %rax	# D.17499, tmp406
	salq	$2, %rax	#, tmp406
	addq	%rdx, %rax	# D.17499, tmp406
	salq	$2, %rax	#, tmp406
	addq	%rdx, %rax	# D.17499, tmp406
	salq	$3, %rax	#, tmp407
	movq	%rax, %rdx	# tmp406, D.17499
	movq	-112(%rbp), %rax	# args, tmp408
	addq	%rdx, %rax	# D.17499, D.17500
	movq	(%rax), %rax	# _99->tree_value, D.17498
	movq	40(%rax), %rax	# _100->exp.operands, D.17498
	movq	%rax, (%rcx)	# D.17498, _96->tree_value
.L172:
	.loc 1 1228 0
	movl	-84(%rbp), %eax	# i, tmp409
	movslq	%eax, %rdx	# tmp409, D.17499
	movq	%rdx, %rax	# D.17499, tmp410
	salq	$2, %rax	#, tmp410
	addq	%rdx, %rax	# D.17499, tmp410
	salq	$2, %rax	#, tmp410
	addq	%rdx, %rax	# D.17499, tmp410
	salq	$3, %rax	#, tmp411
	movq	%rax, %rdx	# tmp410, D.17499
	movq	-112(%rbp), %rax	# args, tmp412
	leaq	(%rdx,%rax), %r12	#, D.17500
	.loc 1 1230 0
	movl	-84(%rbp), %eax	# i, tmp413
	movslq	%eax, %rdx	# tmp413, D.17499
	movq	%rdx, %rax	# D.17499, tmp414
	salq	$2, %rax	#, tmp414
	addq	%rdx, %rax	# D.17499, tmp414
	salq	$2, %rax	#, tmp414
	addq	%rdx, %rax	# D.17499, tmp414
	salq	$3, %rax	#, tmp415
	movq	%rax, %rdx	# tmp414, D.17499
	movq	-112(%rbp), %rax	# args, tmp416
	addq	%rdx, %rax	# D.17499, D.17500
	.loc 1 1228 0
	movq	(%rax), %rbx	# _107->tree_value, D.17498
	movq	-64(%rbp), %rax	# type, tmp417
	movq	%rax, %rdi	# tmp417,
	call	build_pointer_type	#
	movq	%rbx, %rdx	# D.17498,
	movq	%rax, %rsi	# D.17498,
	movl	$121, %edi	#,
	call	build1	#
	movq	%rax, (%r12)	# D.17498, _104->tree_value
	.loc 1 1231 0
	movq	-64(%rbp), %rax	# type, tmp418
	movq	%rax, %rdi	# tmp418,
	call	build_pointer_type	#
	movq	%rax, -64(%rbp)	# tmp419, type
	jmp	.L170	#
.L171:
	.loc 1 1233 0
	movl	-84(%rbp), %eax	# i, tmp420
	movslq	%eax, %rdx	# tmp420, D.17499
	movq	%rdx, %rax	# D.17499, tmp421
	salq	$2, %rax	#, tmp421
	addq	%rdx, %rax	# D.17499, tmp421
	salq	$2, %rax	#, tmp421
	addq	%rdx, %rax	# D.17499, tmp421
	salq	$3, %rax	#, tmp422
	movq	%rax, %rdx	# tmp421, D.17499
	movq	-112(%rbp), %rax	# args, tmp423
	addq	%rdx, %rax	# D.17499, D.17500
	movq	(%rax), %rax	# _114->tree_value, D.17498
	movzbl	16(%rax), %eax	# _115->common.code, D.17501
	cmpb	$50, %al	#, D.17501
	jne	.L175	#,
	.loc 1 1238 0
	movl	-84(%rbp), %eax	# i, tmp424
	movslq	%eax, %rdx	# tmp424, D.17499
	movq	%rdx, %rax	# D.17499, tmp425
	salq	$2, %rax	#, tmp425
	addq	%rdx, %rax	# D.17499, tmp425
	salq	$2, %rax	#, tmp425
	addq	%rdx, %rax	# D.17499, tmp425
	salq	$3, %rax	#, tmp426
	movq	%rax, %rdx	# tmp425, D.17499
	movq	-112(%rbp), %rax	# args, tmp427
	leaq	(%rdx,%rax), %r12	#, D.17500
	.loc 1 1240 0
	movl	-84(%rbp), %eax	# i, tmp428
	movslq	%eax, %rdx	# tmp428, D.17499
	movq	%rdx, %rax	# D.17499, tmp429
	salq	$2, %rax	#, tmp429
	addq	%rdx, %rax	# D.17499, tmp429
	salq	$2, %rax	#, tmp429
	addq	%rdx, %rax	# D.17499, tmp429
	salq	$3, %rax	#, tmp430
	movq	%rax, %rdx	# tmp429, D.17499
	movq	-112(%rbp), %rax	# args, tmp431
	addq	%rdx, %rax	# D.17499, D.17500
	.loc 1 1238 0
	movq	(%rax), %rbx	# _122->tree_value, D.17498
	movq	-64(%rbp), %rax	# type, tmp432
	movq	%rax, %rdi	# tmp432,
	call	build_pointer_type	#
	movq	%rbx, %rdx	# D.17498,
	movq	%rax, %rsi	# D.17498,
	movl	$121, %edi	#,
	call	build1	#
	movq	%rax, (%r12)	# D.17498, _119->tree_value
	.loc 1 1241 0
	movq	-64(%rbp), %rax	# type, tmp433
	movq	%rax, %rdi	# tmp433,
	call	build_pointer_type	#
	movq	%rax, -64(%rbp)	# tmp434, type
	jmp	.L170	#
.L175:
.LBB11:
	.loc 1 1249 0
	movq	-64(%rbp), %rax	# type, tmp435
	movq	32(%rax), %rax	# type_7->type.size, D.17498
	testq	%rax, %rax	# D.17498
	je	.L176	#,
	.loc 1 1250 0
	movq	-64(%rbp), %rax	# type, tmp436
	movq	32(%rax), %rax	# type_7->type.size, D.17498
	movzbl	16(%rax), %eax	# _128->common.code, D.17501
	cmpb	$25, %al	#, D.17501
	jne	.L176	#,
	.loc 1 1251 0
	movl	flag_stack_check(%rip), %eax	# flag_stack_check, flag_stack_check.60
	testl	%eax, %eax	# flag_stack_check.60
	je	.L177	#,
	.loc 1 1252 0
	movq	-64(%rbp), %rax	# type, tmp437
	movq	40(%rax), %rax	# type_7->type.size_unit, D.17498
	movl	$40, %esi	#,
	movq	%rax, %rdi	# D.17498,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.17497
	jle	.L177	#,
.L176:
.LBB12:
	.loc 1 1257 0
	movq	-72(%rbp), %rax	# p, tmp438
	movq	32(%rax), %rax	# p_5->list.value, D.17498
	movq	%rax, %rdi	# D.17498,
	call	expr_size	#
	movq	%rax, -48(%rbp)	# tmp439, size_rtx
	.loc 1 1259 0
	movq	32(%rbp), %rax	# old_stack_level, tmp440
	movq	(%rax), %rax	# *old_stack_level_136(D), D.17503
	testq	%rax, %rax	# D.17503
	jne	.L178	#,
	.loc 1 1261 0
	movq	32(%rbp), %rax	# old_stack_level, tmp441
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp441,
	movl	$0, %edi	#,
	call	emit_stack_save	#
	.loc 1 1262 0
	movq	cfun(%rip), %rax	# cfun, cfun.61
	movq	16(%rax), %rax	# cfun.61_138->expr, D.17505
	movl	(%rax), %edx	# _139->x_pending_stack_adjust, D.17497
	movq	40(%rbp), %rax	# old_pending_adj, tmp442
	movl	%edx, (%rax)	# D.17497, *old_pending_adj_141(D)
	.loc 1 1263 0
	movq	cfun(%rip), %rax	# cfun, cfun.62
	movq	16(%rax), %rax	# cfun.62_142->expr, D.17505
	movl	$0, (%rax)	#, _143->x_pending_stack_adjust
.L178:
	.loc 1 1268 0
	movq	-64(%rbp), %rax	# type, tmp443
	movl	64(%rax), %eax	# type_7->type.align, D.17506
	.loc 1 1266 0
	movl	%eax, %edx	# D.17506, D.17497
	movq	-48(%rbp), %rax	# size_rtx, tmp444
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp444,
	call	allocate_dynamic_stack_space	#
	movq	%rax, %rsi	# D.17503,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, -56(%rbp)	# tmp445, copy
	.loc 1 1269 0
	movq	-64(%rbp), %rcx	# type, tmp446
	movq	-56(%rbp), %rax	# copy, tmp447
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp446,
	movq	%rax, %rdi	# tmp447,
	call	set_mem_attributes	#
.LBE12:
	.loc 1 1254 0
	jmp	.L179	#
.L177:
	.loc 1 1272 0
	movq	-64(%rbp), %rax	# type, tmp448
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp448,
	call	assign_temp	#
	movq	%rax, -56(%rbp)	# tmp449, copy
.L179:
	.loc 1 1274 0
	movl	-84(%rbp), %eax	# i, tmp450
	movslq	%eax, %rdx	# tmp450, D.17499
	movq	%rdx, %rax	# D.17499, tmp451
	salq	$2, %rax	#, tmp451
	addq	%rdx, %rax	# D.17499, tmp451
	salq	$2, %rax	#, tmp451
	addq	%rdx, %rax	# D.17499, tmp451
	salq	$3, %rax	#, tmp452
	movq	%rax, %rdx	# tmp451, D.17499
	movq	-112(%rbp), %rax	# args, tmp453
	addq	%rdx, %rax	# D.17499, D.17500
	movq	(%rax), %rax	# _150->tree_value, D.17498
	movq	-56(%rbp), %rcx	# copy, tmp454
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp454,
	movq	%rax, %rdi	# D.17498,
	call	store_expr	#
	.loc 1 1275 0
	movq	56(%rbp), %rax	# ecf_flags, tmp455
	movl	(%rax), %eax	# *ecf_flags_152(D), D.17497
	andl	$-4610, %eax	#, D.17497
	movl	%eax, %edx	# D.17497, D.17497
	movq	56(%rbp), %rax	# ecf_flags, tmp456
	movl	%edx, (%rax)	# D.17497, *ecf_flags_152(D)
	.loc 1 1277 0
	movl	-84(%rbp), %eax	# i, tmp457
	movslq	%eax, %rdx	# tmp457, D.17499
	movq	%rdx, %rax	# D.17499, tmp458
	salq	$2, %rax	#, tmp458
	addq	%rdx, %rax	# D.17499, tmp458
	salq	$2, %rax	#, tmp458
	addq	%rdx, %rax	# D.17499, tmp458
	salq	$3, %rax	#, tmp459
	movq	%rax, %rdx	# tmp458, D.17499
	movq	-112(%rbp), %rax	# args, tmp460
	leaq	(%rdx,%rax), %r12	#, D.17500
	movq	-56(%rbp), %rdx	# copy, tmp461
	movq	-64(%rbp), %rax	# type, tmp462
	movq	%rdx, %rsi	# tmp461,
	movq	%rax, %rdi	# tmp462,
	call	make_tree	#
	movq	%rax, %rbx	#, D.17498
	movq	-64(%rbp), %rax	# type, tmp463
	movq	%rax, %rdi	# tmp463,
	call	build_pointer_type	#
	movq	%rbx, %rdx	# D.17498,
	movq	%rax, %rsi	# D.17498,
	movl	$121, %edi	#,
	call	build1	#
	movq	%rax, (%r12)	# D.17498, _157->tree_value
	.loc 1 1280 0
	movq	-64(%rbp), %rax	# type, tmp464
	movq	%rax, %rdi	# tmp464,
	call	build_pointer_type	#
	movq	%rax, -64(%rbp)	# tmp465, type
.L170:
.LBE11:
	.loc 1 1284 0
	movq	-64(%rbp), %rax	# type, tmp466
	movzbl	61(%rax), %eax	# *type_8, tmp469
	shrb	%al	# D.17507
	movzbl	%al, %eax	# D.17507, tmp470
	movl	%eax, -80(%rbp)	# tmp470, mode
	.loc 1 1285 0
	movq	-64(%rbp), %rax	# type, tmp471
	movzbl	17(%rax), %eax	# *type_8, tmp474
	shrb	$5, %al	#, D.17508
	andl	$1, %eax	#, D.17508
	movzbl	%al, %eax	# D.17508, tmp475
	movl	%eax, -76(%rbp)	# tmp475, unsignedp
	.loc 1 1291 0
	movl	-84(%rbp), %eax	# i, tmp476
	movslq	%eax, %rdx	# tmp476, D.17499
	movq	%rdx, %rax	# D.17499, tmp477
	salq	$2, %rax	#, tmp477
	addq	%rdx, %rax	# D.17499, tmp477
	salq	$2, %rax	#, tmp477
	addq	%rdx, %rax	# D.17499, tmp477
	salq	$3, %rax	#, tmp478
	movq	%rax, %rdx	# tmp477, D.17499
	movq	-112(%rbp), %rax	# args, tmp479
	addq	%rax, %rdx	# tmp479, D.17500
	movl	-76(%rbp), %eax	# unsignedp, tmp480
	movl	%eax, 48(%rdx)	# tmp480, _168->unsignedp
	.loc 1 1292 0
	movl	-84(%rbp), %eax	# i, tmp481
	movslq	%eax, %rdx	# tmp481, D.17499
	movq	%rdx, %rax	# D.17499, tmp482
	salq	$2, %rax	#, tmp482
	addq	%rdx, %rax	# D.17499, tmp482
	salq	$2, %rax	#, tmp482
	addq	%rdx, %rax	# D.17499, tmp482
	salq	$3, %rax	#, tmp483
	movq	%rax, %rdx	# tmp482, D.17499
	movq	-112(%rbp), %rax	# args, tmp484
	addq	%rax, %rdx	# tmp484, D.17500
	movl	-80(%rbp), %eax	# mode, tmp485
	movl	%eax, 8(%rdx)	# tmp485, _171->mode
	.loc 1 1294 0
	movl	-84(%rbp), %eax	# i, tmp486
	movslq	%eax, %rdx	# tmp486, D.17499
	movq	%rdx, %rax	# D.17499, tmp487
	salq	$2, %rax	#, tmp487
	addq	%rdx, %rax	# D.17499, tmp487
	salq	$2, %rax	#, tmp487
	addq	%rdx, %rax	# D.17499, tmp487
	salq	$3, %rax	#, tmp488
	movq	%rax, %rdx	# tmp487, D.17499
	movq	-112(%rbp), %rax	# args, tmp489
	leaq	(%rdx,%rax), %rbx	#, D.17500
	movl	-88(%rbp), %eax	# argpos, tmp490
	cmpl	-104(%rbp), %eax	# n_named_args, tmp490
	setl	%al	#, D.17509
	movzbl	%al, %ecx	# D.17509, D.17497
	movq	-64(%rbp), %rdx	# type, tmp491
	movl	-80(%rbp), %eax	# mode, tmp492
	movl	%eax, %esi	# tmp492,
	movq	16(%rbp), %rdi	# args_so_far,
	call	function_arg	#
	movq	%rax, 32(%rbx)	# D.17503, _174->reg
	.loc 1 1303 0
	movl	-84(%rbp), %eax	# i, tmp493
	movslq	%eax, %rdx	# tmp493, D.17499
	movq	%rdx, %rax	# D.17499, tmp494
	salq	$2, %rax	#, tmp494
	addq	%rdx, %rax	# D.17499, tmp494
	salq	$2, %rax	#, tmp494
	addq	%rdx, %rax	# D.17499, tmp494
	salq	$3, %rax	#, tmp495
	movq	%rax, %rdx	# tmp494, D.17499
	movq	-112(%rbp), %rax	# args, tmp496
	leaq	(%rdx,%rax), %rcx	#, D.17500
	movl	-84(%rbp), %eax	# i, tmp497
	movslq	%eax, %rdx	# tmp497, D.17499
	movq	%rdx, %rax	# D.17499, tmp498
	salq	$2, %rax	#, tmp498
	addq	%rdx, %rax	# D.17499, tmp498
	salq	$2, %rax	#, tmp498
	addq	%rdx, %rax	# D.17499, tmp498
	salq	$3, %rax	#, tmp499
	movq	%rax, %rdx	# tmp498, D.17499
	movq	-112(%rbp), %rax	# args, tmp500
	addq	%rdx, %rax	# D.17499, D.17500
	movq	32(%rax), %rax	# _185->reg, D.17503
	movq	%rax, 40(%rcx)	# D.17503, _182->tail_call_reg
	.loc 1 1307 0
	movl	-84(%rbp), %eax	# i, tmp501
	movslq	%eax, %rdx	# tmp501, D.17499
	movq	%rdx, %rax	# D.17499, tmp502
	salq	$2, %rax	#, tmp502
	addq	%rdx, %rax	# D.17499, tmp502
	salq	$2, %rax	#, tmp502
	addq	%rdx, %rax	# D.17499, tmp502
	salq	$3, %rax	#, tmp503
	movq	%rax, %rdx	# tmp502, D.17499
	movq	-112(%rbp), %rax	# args, tmp504
	addq	%rdx, %rax	# D.17499, D.17500
	movq	32(%rax), %rax	# _189->reg, D.17503
	testq	%rax, %rax	# D.17503
	je	.L180	#,
	.loc 1 1308 0
	movl	-84(%rbp), %eax	# i, tmp505
	movslq	%eax, %rdx	# tmp505, D.17499
	movq	%rdx, %rax	# D.17499, tmp506
	salq	$2, %rax	#, tmp506
	addq	%rdx, %rax	# D.17499, tmp506
	salq	$2, %rax	#, tmp506
	addq	%rdx, %rax	# D.17499, tmp506
	salq	$3, %rax	#, tmp507
	movq	%rax, %rdx	# tmp506, D.17499
	movq	-112(%rbp), %rax	# args, tmp508
	addq	%rdx, %rax	# D.17499, D.17500
	.loc 1 1309 0
	movl	$0, 52(%rax)	#, _193->partial
.L180:
	.loc 1 1313 0
	movl	-84(%rbp), %eax	# i, tmp509
	movslq	%eax, %rdx	# tmp509, D.17499
	movq	%rdx, %rax	# D.17499, tmp510
	salq	$2, %rax	#, tmp510
	addq	%rdx, %rax	# D.17499, tmp510
	salq	$2, %rax	#, tmp510
	addq	%rdx, %rax	# D.17499, tmp510
	salq	$3, %rax	#, tmp511
	movq	%rax, %rdx	# tmp510, D.17499
	movq	-112(%rbp), %rax	# args, tmp512
	leaq	(%rdx,%rax), %rbx	#, D.17500
	cmpq	$0, -64(%rbp)	#, type
	je	.L181	#,
	.loc 1 1313 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# type, tmp513
	movq	32(%rax), %rax	# type_8->type.size, D.17498
	movzbl	16(%rax), %eax	# _197->common.code, D.17501
	cmpb	$25, %al	#, D.17501
	jne	.L182	#,
	.loc 1 1313 0 discriminator 4
	movq	-64(%rbp), %rax	# type, tmp514
	movzbl	17(%rax), %eax	# *type_8, D.17501
	andl	$4, %eax	#, D.17501
	testb	%al, %al	# D.17501
	jne	.L182	#,
	.loc 1 1313 0 discriminator 1
	cmpl	$6, -80(%rbp)	#, mode
	je	.L182	#,
	cmpl	$51, -80(%rbp)	#, mode
	jne	.L181	#,
	cmpq	$0, -64(%rbp)	#, type
	je	.L184	#,
	.loc 1 1313 0 discriminator 4
	movq	-64(%rbp), %rax	# type, tmp515
	movq	32(%rax), %rax	# type_8->type.size, D.17498
	movzbl	16(%rax), %eax	# _201->common.code, D.17501
	cmpb	$25, %al	#, D.17501
	jne	.L184	#,
	.loc 1 1313 0 discriminator 1
	movq	-64(%rbp), %rax	# type, tmp516
	movq	%rax, %rdi	# tmp516,
	call	int_size_in_bytes	#
	movl	target_flags(%rip), %edx	# target_flags, target_flags.66
	andl	$33554432, %edx	#, D.17497
	testl	%edx, %edx	# D.17497
	je	.L185	#,
	movl	$8, %esi	#, iftmp.65
	jmp	.L186	#
.L185:
	.loc 1 1313 0 discriminator 2
	movl	$4, %esi	#, iftmp.65
.L186:
	.loc 1 1313 0 discriminator 3
	cqto
	idivq	%rsi	# iftmp.65
	movq	%rdx, %rcx	# tmp517, tmp517
	movq	%rcx, %rax	# tmp517, D.17510
	testq	%rax, %rax	# D.17510
	je	.L181	#,
.L184:
	jmp	.L181	#
.L182:
	movl	$1, %eax	#, iftmp.63
	jmp	.L188	#
.L181:
	.loc 1 1313 0 discriminator 2
	movl	$0, %eax	#, iftmp.63
.L188:
	.loc 1 1313 0 discriminator 5
	movl	%eax, 56(%rbx)	# iftmp.63, _196->pass_on_stack
	.loc 1 1318 0 is_stmt 1 discriminator 5
	movl	-84(%rbp), %eax	# i, tmp519
	movslq	%eax, %rdx	# tmp519, D.17499
	movq	%rdx, %rax	# D.17499, tmp520
	salq	$2, %rax	#, tmp520
	addq	%rdx, %rax	# D.17499, tmp520
	salq	$2, %rax	#, tmp520
	addq	%rdx, %rax	# D.17499, tmp520
	salq	$3, %rax	#, tmp521
	movq	%rax, %rdx	# tmp520, D.17499
	movq	-112(%rbp), %rax	# args, tmp522
	addq	%rdx, %rax	# D.17499, D.17500
	movq	32(%rax), %rax	# _215->reg, D.17503
	testq	%rax, %rax	# D.17503
	je	.L189	#,
	.loc 1 1318 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp523
	movslq	%eax, %rdx	# tmp523, D.17499
	movq	%rdx, %rax	# D.17499, tmp524
	salq	$2, %rax	#, tmp524
	addq	%rdx, %rax	# D.17499, tmp524
	salq	$2, %rax	#, tmp524
	addq	%rdx, %rax	# D.17499, tmp524
	salq	$3, %rax	#, tmp525
	movq	%rax, %rdx	# tmp524, D.17499
	movq	-112(%rbp), %rax	# args, tmp526
	addq	%rdx, %rax	# D.17499, D.17500
	movq	32(%rax), %rax	# _219->reg, D.17503
	movzwl	(%rax), %eax	# _220->code, D.17504
	cmpw	$39, %ax	#, D.17504
	jne	.L189	#,
	.loc 1 1319 0 is_stmt 1
	movl	-84(%rbp), %eax	# i, tmp527
	movslq	%eax, %rdx	# tmp527, D.17499
	movq	%rdx, %rax	# D.17499, tmp528
	salq	$2, %rax	#, tmp528
	addq	%rdx, %rax	# D.17499, tmp528
	salq	$2, %rax	#, tmp528
	addq	%rdx, %rax	# D.17499, tmp528
	salq	$3, %rax	#, tmp529
	movq	%rax, %rdx	# tmp528, D.17499
	movq	-112(%rbp), %rax	# args, tmp530
	addq	%rdx, %rax	# D.17499, D.17500
	movq	32(%rax), %rax	# _224->reg, D.17503
	movq	8(%rax), %rax	# _225->fld[0].rtvec, D.17511
	movq	8(%rax), %rax	# _226->elem, D.17503
	movq	8(%rax), %rax	# _227->fld[0].rtx, D.17503
	testq	%rax, %rax	# D.17503
	jne	.L189	#,
	.loc 1 1320 0
	movl	-84(%rbp), %eax	# i, tmp531
	movslq	%eax, %rdx	# tmp531, D.17499
	movq	%rdx, %rax	# D.17499, tmp532
	salq	$2, %rax	#, tmp532
	addq	%rdx, %rax	# D.17499, tmp532
	salq	$2, %rax	#, tmp532
	addq	%rdx, %rax	# D.17499, tmp532
	salq	$3, %rax	#, tmp533
	movq	%rax, %rdx	# tmp532, D.17499
	movq	-112(%rbp), %rax	# args, tmp534
	addq	%rdx, %rax	# D.17499, D.17500
	movl	$1, 56(%rax)	#, _231->pass_on_stack
.L189:
	.loc 1 1327 0
	movq	-64(%rbp), %rax	# type, tmp535
	movzbl	17(%rax), %eax	# *type_8, D.17501
	andl	$4, %eax	#, D.17501
	testb	%al, %al	# D.17501
	jne	.L190	#,
	.loc 1 1328 0
	movl	-84(%rbp), %eax	# i, tmp536
	movslq	%eax, %rdx	# tmp536, D.17499
	movq	%rdx, %rax	# D.17499, tmp537
	salq	$2, %rax	#, tmp537
	addq	%rdx, %rax	# D.17499, tmp537
	salq	$2, %rax	#, tmp537
	addq	%rdx, %rax	# D.17499, tmp537
	salq	$3, %rax	#, tmp538
	movq	%rax, %rdx	# tmp537, D.17499
	movq	-112(%rbp), %rax	# args, tmp539
	addq	%rdx, %rax	# D.17499, D.17500
	movl	56(%rax), %eax	# _236->pass_on_stack, D.17497
	testl	%eax, %eax	# D.17497
	je	.L191	#,
	.loc 1 1328 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp540
	movslq	%eax, %rdx	# tmp540, D.17499
	movq	%rdx, %rax	# D.17499, tmp541
	salq	$2, %rax	#, tmp541
	addq	%rdx, %rax	# D.17499, tmp541
	salq	$2, %rax	#, tmp541
	addq	%rdx, %rax	# D.17499, tmp541
	salq	$3, %rax	#, tmp542
	movq	%rax, %rdx	# tmp541, D.17499
	movq	-112(%rbp), %rax	# args, tmp543
	addq	%rdx, %rax	# D.17499, D.17500
	movq	32(%rax), %rax	# _240->reg, D.17503
	testq	%rax, %rax	# D.17503
	je	.L191	#,
.L190:
	.loc 1 1329 0 is_stmt 1
	movq	48(%rbp), %rax	# must_preallocate, tmp544
	movl	$1, (%rax)	#, *must_preallocate_242(D)
.L191:
	.loc 1 1333 0
	movq	-64(%rbp), %rax	# type, tmp545
	movzbl	17(%rax), %eax	# *type_8, D.17501
	andl	$4, %eax	#, D.17501
	testb	%al, %al	# D.17501
	je	.L192	#,
	.loc 1 1334 0
	movq	56(%rbp), %rax	# ecf_flags, tmp546
	movl	(%rax), %eax	# *ecf_flags_152(D), D.17497
	andb	$239, %ah	#, D.17497
	movl	%eax, %edx	# D.17497, D.17497
	movq	56(%rbp), %rax	# ecf_flags, tmp547
	movl	%edx, (%rax)	# D.17497, *ecf_flags_152(D)
.L192:
	.loc 1 1337 0
	movl	-84(%rbp), %eax	# i, tmp548
	movslq	%eax, %rdx	# tmp548, D.17499
	movq	%rdx, %rax	# D.17499, tmp549
	salq	$2, %rax	#, tmp549
	addq	%rdx, %rax	# D.17499, tmp549
	salq	$2, %rax	#, tmp549
	addq	%rdx, %rax	# D.17499, tmp549
	salq	$3, %rax	#, tmp550
	movq	%rax, %rdx	# tmp549, D.17499
	movq	-112(%rbp), %rax	# args, tmp551
	addq	%rdx, %rax	# D.17499, D.17500
	movq	32(%rax), %rax	# _249->reg, D.17503
	testq	%rax, %rax	# D.17503
	je	.L193	#,
	.loc 1 1337 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp552
	movslq	%eax, %rdx	# tmp552, D.17499
	movq	%rdx, %rax	# D.17499, tmp553
	salq	$2, %rax	#, tmp553
	addq	%rdx, %rax	# D.17499, tmp553
	salq	$2, %rax	#, tmp553
	addq	%rdx, %rax	# D.17499, tmp553
	salq	$3, %rax	#, tmp554
	movq	%rax, %rdx	# tmp553, D.17499
	movq	-112(%rbp), %rax	# args, tmp555
	addq	%rdx, %rax	# D.17499, D.17500
	movl	52(%rax), %eax	# _253->partial, D.17497
	testl	%eax, %eax	# D.17497
	jne	.L193	#,
	.loc 1 1338 0 is_stmt 1
	cmpl	$0, 24(%rbp)	#, reg_parm_stack_space
	jg	.L193	#,
	.loc 1 1339 0
	movl	-84(%rbp), %eax	# i, tmp556
	movslq	%eax, %rdx	# tmp556, D.17499
	movq	%rdx, %rax	# D.17499, tmp557
	salq	$2, %rax	#, tmp557
	addq	%rdx, %rax	# D.17499, tmp557
	salq	$2, %rax	#, tmp557
	addq	%rdx, %rax	# D.17499, tmp557
	salq	$3, %rax	#, tmp558
	movq	%rax, %rdx	# tmp557, D.17499
	movq	-112(%rbp), %rax	# args, tmp559
	addq	%rdx, %rax	# D.17499, D.17500
	movl	56(%rax), %eax	# _258->pass_on_stack, D.17497
	testl	%eax, %eax	# D.17497
	je	.L194	#,
.L193:
	.loc 1 1347 0
	movl	-84(%rbp), %eax	# i, tmp560
	movslq	%eax, %rdx	# tmp560, D.17499
	movq	%rdx, %rax	# D.17499, tmp561
	salq	$2, %rax	#, tmp561
	addq	%rdx, %rax	# D.17499, tmp561
	salq	$2, %rax	#, tmp561
	addq	%rdx, %rax	# D.17499, tmp561
	salq	$3, %rax	#, tmp562
	movq	%rax, %rdx	# tmp561, D.17499
	movq	-112(%rbp), %rax	# args, tmp563
	addq	%rdx, %rax	# D.17499, D.17500
	.loc 1 1340 0
	leaq	96(%rax), %r9	#, D.17512
	.loc 1 1346 0
	movl	-84(%rbp), %eax	# i, tmp564
	movslq	%eax, %rdx	# tmp564, D.17499
	movq	%rdx, %rax	# D.17499, tmp565
	salq	$2, %rax	#, tmp565
	addq	%rdx, %rax	# D.17499, tmp565
	salq	$2, %rax	#, tmp565
	addq	%rdx, %rax	# D.17499, tmp565
	salq	$3, %rax	#, tmp566
	movq	%rax, %rdx	# tmp565, D.17499
	movq	-112(%rbp), %rax	# args, tmp567
	addq	%rdx, %rax	# D.17499, D.17500
	.loc 1 1340 0
	leaq	64(%rax), %r10	#, D.17512
	.loc 1 1344 0
	movl	-84(%rbp), %eax	# i, tmp568
	movslq	%eax, %rdx	# tmp568, D.17499
	movq	%rdx, %rax	# D.17499, tmp569
	salq	$2, %rax	#, tmp569
	addq	%rdx, %rax	# D.17499, tmp569
	salq	$2, %rax	#, tmp569
	addq	%rdx, %rax	# D.17499, tmp569
	salq	$3, %rax	#, tmp570
	movq	%rax, %rdx	# tmp569, D.17499
	movq	-112(%rbp), %rax	# args, tmp571
	addq	%rdx, %rax	# D.17499, D.17500
	movq	32(%rax), %rax	# _270->reg, D.17503
	.loc 1 1340 0
	testq	%rax, %rax	# D.17503
	setne	%al	#, D.17509
	movzbl	%al, %edx	# D.17509, D.17497
	movq	-120(%rbp), %r8	# args_size, tmp572
	movq	-136(%rbp), %rcx	# fndecl, tmp573
	movq	-64(%rbp), %rsi	# type, tmp574
	movl	-80(%rbp), %eax	# mode, tmp575
	leaq	-32(%rbp), %rdi	#, tmp576
	movq	%rdi, 8(%rsp)	# tmp576,
	movq	%r9, (%rsp)	# D.17512,
	movq	%r10, %r9	# D.17512,
	movl	%eax, %edi	# tmp575,
	call	locate_and_pad_parm	#
.L194:
	.loc 1 1350 0
	movl	-84(%rbp), %eax	# i, tmp577
	movslq	%eax, %rdx	# tmp577, D.17499
	movq	%rdx, %rax	# D.17499, tmp578
	salq	$2, %rax	#, tmp578
	addq	%rdx, %rax	# D.17499, tmp578
	salq	$2, %rax	#, tmp578
	addq	%rdx, %rax	# D.17499, tmp578
	salq	$3, %rax	#, tmp579
	movq	%rax, %rdx	# tmp578, D.17499
	movq	-112(%rbp), %rax	# args, tmp580
	leaq	(%rdx,%rax), %rcx	#, D.17500
	movq	-120(%rbp), %rax	# args_size, tmp581
	movq	8(%rax), %rdx	# *args_size_16(D),
	movq	(%rax), %rax	# *args_size_16(D), tmp582
	movq	%rax, 80(%rcx)	# tmp582, _277->slot_offset
	movq	%rdx, 88(%rcx)	#, _277->slot_offset
	.loc 1 1353 0
	movl	-84(%rbp), %eax	# i, tmp583
	movslq	%eax, %rdx	# tmp583, D.17499
	movq	%rdx, %rax	# D.17499, tmp584
	salq	$2, %rax	#, tmp584
	addq	%rdx, %rax	# D.17499, tmp584
	salq	$2, %rax	#, tmp584
	addq	%rdx, %rax	# D.17499, tmp584
	salq	$3, %rax	#, tmp585
	movq	%rax, %rdx	# tmp584, D.17499
	movq	-112(%rbp), %rax	# args, tmp586
	leaq	(%rdx,%rax), %rcx	#, D.17500
	movq	-32(%rbp), %rax	# alignment_pad, tmp587
	movq	-24(%rbp), %rdx	# alignment_pad,
	movq	%rax, 152(%rcx)	# tmp587, _280->alignment_pad
	movq	%rdx, 160(%rcx)	#, _280->alignment_pad
	.loc 1 1357 0
	cmpl	$0, 24(%rbp)	#, reg_parm_stack_space
	jne	.L195	#,
	.loc 1 1357 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp588
	movslq	%eax, %rdx	# tmp588, D.17499
	movq	%rdx, %rax	# D.17499, tmp589
	salq	$2, %rax	#, tmp589
	addq	%rdx, %rax	# D.17499, tmp589
	salq	$2, %rax	#, tmp589
	addq	%rdx, %rax	# D.17499, tmp589
	salq	$3, %rax	#, tmp590
	movq	%rax, %rdx	# tmp589, D.17499
	movq	-112(%rbp), %rax	# args, tmp591
	addq	%rdx, %rax	# D.17499, D.17500
	movl	56(%rax), %eax	# _283->pass_on_stack, D.17497
	testl	%eax, %eax	# D.17497
	jne	.L195	#,
	.loc 1 1358 0 is_stmt 1
	movl	-84(%rbp), %eax	# i, tmp592
	movslq	%eax, %rdx	# tmp592, D.17499
	movq	%rdx, %rax	# D.17499, tmp593
	salq	$2, %rax	#, tmp593
	addq	%rdx, %rax	# D.17499, tmp593
	salq	$2, %rax	#, tmp593
	addq	%rdx, %rax	# D.17499, tmp593
	salq	$3, %rax	#, tmp594
	movq	%rax, %rdx	# tmp593, D.17499
	movq	-112(%rbp), %rax	# args, tmp595
	leaq	(%rdx,%rax), %rcx	#, D.17500
	movl	-84(%rbp), %eax	# i, tmp596
	movslq	%eax, %rdx	# tmp596, D.17499
	movq	%rdx, %rax	# D.17499, tmp597
	salq	$2, %rax	#, tmp597
	addq	%rdx, %rax	# D.17499, tmp597
	salq	$2, %rax	#, tmp597
	addq	%rdx, %rax	# D.17499, tmp597
	salq	$3, %rax	#, tmp598
	movq	%rax, %rdx	# tmp597, D.17499
	movq	-112(%rbp), %rax	# args, tmp599
	addq	%rdx, %rax	# D.17499, D.17500
	movq	96(%rax), %rsi	# _290->size.constant, D.17510
	movl	-84(%rbp), %eax	# i, tmp600
	movslq	%eax, %rdx	# tmp600, D.17499
	movq	%rdx, %rax	# D.17499, tmp601
	salq	$2, %rax	#, tmp601
	addq	%rdx, %rax	# D.17499, tmp601
	salq	$2, %rax	#, tmp601
	addq	%rdx, %rax	# D.17499, tmp601
	salq	$3, %rax	#, tmp602
	movq	%rax, %rdx	# tmp601, D.17499
	movq	-112(%rbp), %rax	# args, tmp603
	addq	%rdx, %rax	# D.17499, D.17500
	movl	52(%rax), %edx	# _294->partial, D.17497
	movl	target_flags(%rip), %eax	# target_flags, target_flags.68
	andl	$33554432, %eax	#, D.17497
	testl	%eax, %eax	# D.17497
	je	.L196	#,
	.loc 1 1358 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.67
	jmp	.L197	#
.L196:
	.loc 1 1358 0 discriminator 2
	movl	$4, %eax	#, iftmp.67
.L197:
	.loc 1 1358 0 discriminator 3
	imull	%edx, %eax	# D.17497, D.17497
	.loc 1 1359 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %edx	# target_flags, target_flags.70
	andl	$33554432, %edx	#, D.17497
	testl	%edx, %edx	# D.17497
	je	.L198	#,
	.loc 1 1359 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.69
	jmp	.L199	#
.L198:
	.loc 1 1359 0 discriminator 2
	movl	$4, %ebx	#, iftmp.69
.L199:
	.loc 1 1359 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.69
	movl	%eax, %edx	# tmp604, D.17497
	.loc 1 1360 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.72
	andl	$33554432, %eax	#, D.17497
	testl	%eax, %eax	# D.17497
	je	.L200	#,
	.loc 1 1360 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.71
	jmp	.L201	#
.L200:
	.loc 1 1360 0 discriminator 2
	movl	$4, %eax	#, iftmp.71
.L201:
	.loc 1 1360 0 discriminator 3
	imull	%edx, %eax	# D.17497, D.17497
	.loc 1 1358 0 is_stmt 1 discriminator 3
	cltq
	subq	%rax, %rsi	# D.17510, D.17510
	movq	%rsi, %rax	# D.17510, D.17510
	movq	%rax, 96(%rcx)	# D.17510, _287->size.constant
.L195:
	.loc 1 1364 0
	movq	-120(%rbp), %rax	# args_size, tmp606
	movq	(%rax), %rcx	# args_size_16(D)->constant, D.17510
	movl	-84(%rbp), %eax	# i, tmp607
	movslq	%eax, %rdx	# tmp607, D.17499
	movq	%rdx, %rax	# D.17499, tmp608
	salq	$2, %rax	#, tmp608
	addq	%rdx, %rax	# D.17499, tmp608
	salq	$2, %rax	#, tmp608
	addq	%rdx, %rax	# D.17499, tmp608
	salq	$3, %rax	#, tmp609
	movq	%rax, %rdx	# tmp608, D.17499
	movq	-112(%rbp), %rax	# args, tmp610
	addq	%rdx, %rax	# D.17499, D.17500
	movq	96(%rax), %rax	# _316->size.constant, D.17510
	leaq	(%rcx,%rax), %rdx	#, D.17510
	movq	-120(%rbp), %rax	# args_size, tmp611
	movq	%rdx, (%rax)	# D.17510, args_size_16(D)->constant
	.loc 1 1365 0
	movl	-84(%rbp), %eax	# i, tmp612
	movslq	%eax, %rdx	# tmp612, D.17499
	movq	%rdx, %rax	# D.17499, tmp613
	salq	$2, %rax	#, tmp613
	addq	%rdx, %rax	# D.17499, tmp613
	salq	$2, %rax	#, tmp613
	addq	%rdx, %rax	# D.17499, tmp613
	salq	$3, %rax	#, tmp614
	movq	%rax, %rdx	# tmp613, D.17499
	movq	-112(%rbp), %rax	# args, tmp615
	addq	%rdx, %rax	# D.17499, D.17500
	movq	104(%rax), %rax	# _321->size.var, D.17498
	testq	%rax, %rax	# D.17498
	je	.L202	#,
.LBB13:
	.loc 1 1367 0
	movl	-84(%rbp), %eax	# i, tmp616
	movslq	%eax, %rdx	# tmp616, D.17499
	movq	%rdx, %rax	# D.17499, tmp617
	salq	$2, %rax	#, tmp617
	addq	%rdx, %rax	# D.17499, tmp617
	salq	$2, %rax	#, tmp617
	addq	%rdx, %rax	# D.17499, tmp617
	salq	$3, %rax	#, tmp618
	movq	%rax, %rdx	# tmp617, D.17499
	movq	-112(%rbp), %rax	# args, tmp619
	addq	%rdx, %rax	# D.17499, D.17500
	movq	104(%rax), %rax	# _325->size.var, tmp620
	movq	%rax, -40(%rbp)	# tmp620, inc
	movq	-40(%rbp), %rax	# inc, tmp621
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp621,
	call	host_integerp	#
	testl	%eax, %eax	# D.17497
	je	.L203	#,
	.loc 1 1367 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# args_size, tmp622
	movq	(%rax), %rbx	# args_size_16(D)->constant, D.17510
	movq	-40(%rbp), %rax	# inc, tmp623
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp623,
	call	tree_low_cst	#
	leaq	(%rbx,%rax), %rdx	#, D.17510
	movq	-120(%rbp), %rax	# args_size, tmp624
	movq	%rdx, (%rax)	# D.17510, args_size_16(D)->constant
	jmp	.L202	#
.L203:
	.loc 1 1367 0 discriminator 2
	movq	-120(%rbp), %rax	# args_size, tmp625
	movq	8(%rax), %rax	# args_size_16(D)->var, D.17498
	testq	%rax, %rax	# D.17498
	jne	.L204	#,
	.loc 1 1367 0 discriminator 1
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17498
	movq	-40(%rbp), %rdx	# inc, tmp626
	movq	%rdx, %rsi	# tmp626,
	movq	%rax, %rdi	# D.17498,
	call	convert	#
	movq	-120(%rbp), %rdx	# args_size, tmp627
	movq	%rax, 8(%rdx)	# D.17498, args_size_16(D)->var
	jmp	.L202	#
.L204:
	.loc 1 1367 0 discriminator 2
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17498
	movq	-40(%rbp), %rdx	# inc, tmp628
	movq	%rdx, %rsi	# tmp628,
	movq	%rax, %rdi	# D.17498,
	call	convert	#
	movq	%rax, %rdx	#, D.17498
	movq	-120(%rbp), %rax	# args_size, tmp629
	movq	8(%rax), %rax	# args_size_16(D)->var, D.17498
	movq	%rax, %rsi	# D.17498,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	-120(%rbp), %rdx	# args_size, tmp630
	movq	%rax, 8(%rdx)	# D.17498, args_size_16(D)->var
.L202:
.LBE13:
	.loc 1 1383 0 is_stmt 1
	movl	-88(%rbp), %eax	# argpos, tmp631
	cmpl	-104(%rbp), %eax	# n_named_args, tmp631
	setl	%al	#, D.17509
	movzbl	%al, %ecx	# D.17509, D.17497
	movq	-64(%rbp), %rax	# type, tmp632
	movzbl	61(%rax), %eax	# *type_8, tmp635
	shrb	%al	# D.17507
	movzbl	%al, %eax	# D.17507, D.17513
	movq	-64(%rbp), %rdx	# type, tmp636
	movl	%eax, %esi	# D.17513,
	movq	16(%rbp), %rdi	# args_so_far,
	call	function_arg_advance	#
.LBE10:
	.loc 1 1158 0
	movq	-72(%rbp), %rax	# p, tmp637
	movq	(%rax), %rax	# p_5->common.chain, tmp638
	movq	%rax, -72(%rbp)	# tmp638, p
	movl	-92(%rbp), %eax	# inc, tmp639
	addl	%eax, -84(%rbp)	# tmp639, i
	addl	$1, -88(%rbp)	#, argpos
.L164:
	.loc 1 1158 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, p
	jne	.L205	#,
	.loc 1 1386 0 is_stmt 1
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	initialize_argument_information, .-initialize_argument_information
	.type	compute_argument_block_size, @function
compute_argument_block_size:
.LFB14:
	.loc 1 1400 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# reg_parm_stack_space, reg_parm_stack_space
	movq	%rsi, -48(%rbp)	# args_size, args_size
	movl	%edx, -40(%rbp)	# preferred_stack_boundary, preferred_stack_boundary
	.loc 1 1401 0
	movq	-48(%rbp), %rax	# args_size, tmp118
	movq	(%rax), %rax	# args_size_6(D)->constant, D.17515
	movl	%eax, -20(%rbp)	# D.17515, unadjusted_args_size
	.loc 1 1406 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.73
	andl	$4096, %eax	#, D.17516
	testl	%eax, %eax	# D.17516
	je	.L207	#,
	.loc 1 1406 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.75
	andl	$33554432, %eax	#, D.17516
	testl	%eax, %eax	# D.17516
	je	.L208	#,
	movl	$64, %eax	#, iftmp.74
	jmp	.L209	#
.L208:
	.loc 1 1406 0 discriminator 2
	movl	$32, %eax	#, iftmp.74
.L209:
	.loc 1 1406 0 discriminator 3
	cmpl	-40(%rbp), %eax	# preferred_stack_boundary, iftmp.74
	jge	.L207	#,
	.loc 1 1407 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.77
	andl	$33554432, %eax	#, D.17516
	testl	%eax, %eax	# D.17516
	je	.L210	#,
	.loc 1 1407 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.76
	jmp	.L211	#
.L210:
	.loc 1 1407 0 discriminator 2
	movl	$32, %eax	#, iftmp.76
.L211:
	.loc 1 1407 0 discriminator 3
	movl	%eax, -40(%rbp)	# iftmp.76, preferred_stack_boundary
.L207:
	.loc 1 1413 0 is_stmt 1
	movq	-48(%rbp), %rax	# args_size, tmp119
	movq	8(%rax), %rax	# args_size_6(D)->var, D.17517
	testq	%rax, %rax	# D.17517
	je	.L212	#,
	.loc 1 1415 0
	movq	-48(%rbp), %rax	# args_size, tmp120
	movq	8(%rax), %rax	# args_size_6(D)->var, D.17517
	testq	%rax, %rax	# D.17517
	jne	.L213	#,
	.loc 1 1415 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# args_size, tmp121
	movq	(%rax), %rax	# args_size_6(D)->constant, D.17515
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17515,
	call	size_int_wide	#
	jmp	.L214	#
.L213:
	.loc 1 1415 0 discriminator 2
	movq	-48(%rbp), %rax	# args_size, tmp122
	movq	(%rax), %rax	# args_size_6(D)->constant, D.17515
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17515,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.17517
	movq	-48(%rbp), %rax	# args_size, tmp123
	movq	8(%rax), %rdx	# args_size_6(D)->var, D.17517
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17517
	movq	%rdx, %rsi	# D.17517,
	movq	%rax, %rdi	# D.17517,
	call	convert	#
	movq	%rbx, %rdx	# D.17517,
	movq	%rax, %rsi	# D.17517,
	movl	$59, %edi	#,
	call	size_binop	#
.L214:
	.loc 1 1415 0 discriminator 3
	movq	-48(%rbp), %rdx	# args_size, tmp124
	movq	%rax, 8(%rdx)	# iftmp.78, args_size_6(D)->var
	.loc 1 1416 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# args_size, tmp125
	movq	$0, (%rax)	#, args_size_6(D)->constant
	.loc 1 1418 0 discriminator 3
	movl	-40(%rbp), %eax	# preferred_stack_boundary, tmp127
	leal	7(%rax), %edx	#, tmp129
	testl	%eax, %eax	# tmp128
	cmovs	%edx, %eax	# tmp129,, tmp128
	sarl	$3, %eax	#, tmp130
	movl	%eax, -40(%rbp)	# tmp130, preferred_stack_boundary
	.loc 1 1419 0 discriminator 3
	cmpl	$1, -40(%rbp)	#, preferred_stack_boundary
	jle	.L215	#,
	.loc 1 1424 0
	movq	cfun(%rip), %rax	# cfun, cfun.79
	movq	16(%rax), %rax	# cfun.79_32->expr, D.17518
	movl	8(%rax), %eax	# _33->x_stack_pointer_delta, D.17516
	movl	-40(%rbp), %edx	# preferred_stack_boundary, tmp131
	subl	$1, %edx	#, D.17516
	andl	%edx, %eax	# D.17516, D.17516
	testl	%eax, %eax	# D.17516
	je	.L216	#,
	.loc 1 1425 0
	movl	$__FUNCTION__.12867, %edx	#,
	movl	$1425, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L216:
	.loc 1 1426 0
	movq	-48(%rbp), %rax	# args_size, tmp132
	movq	8(%rax), %rax	# args_size_6(D)->var, D.17517
	movl	-40(%rbp), %edx	# preferred_stack_boundary, tmp133
	movl	%edx, %esi	# tmp133,
	movq	%rax, %rdi	# D.17517,
	call	round_up	#
	movq	-48(%rbp), %rdx	# args_size, tmp134
	movq	%rax, 8(%rdx)	# D.17517, args_size_6(D)->var
.L215:
	.loc 1 1429 0
	cmpl	$0, -36(%rbp)	#, reg_parm_stack_space
	jle	.L218	#,
	.loc 1 1432 0
	movl	-36(%rbp), %eax	# reg_parm_stack_space, tmp135
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17515,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.17517
	movq	-48(%rbp), %rax	# args_size, tmp136
	movq	8(%rax), %rax	# args_size_6(D)->var, D.17517
	movq	%rax, %rsi	# D.17517,
	movl	$79, %edi	#,
	call	size_binop	#
	movq	-48(%rbp), %rdx	# args_size, tmp137
	movq	%rax, 8(%rdx)	# D.17517, args_size_6(D)->var
	.loc 1 1439 0
	movl	-36(%rbp), %eax	# reg_parm_stack_space, tmp138
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17515,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.17517
	movq	-48(%rbp), %rax	# args_size, tmp139
	movq	8(%rax), %rax	# args_size_6(D)->var, D.17517
	movq	%rax, %rsi	# D.17517,
	movl	$60, %edi	#,
	call	size_binop	#
	movq	-48(%rbp), %rdx	# args_size, tmp140
	movq	%rax, 8(%rdx)	# D.17517, args_size_6(D)->var
	jmp	.L218	#
.L212:
	.loc 1 1446 0
	movl	-40(%rbp), %eax	# preferred_stack_boundary, tmp142
	leal	7(%rax), %edx	#, tmp144
	testl	%eax, %eax	# tmp143
	cmovs	%edx, %eax	# tmp144,, tmp143
	sarl	$3, %eax	#, tmp145
	movl	%eax, -40(%rbp)	# tmp145, preferred_stack_boundary
	.loc 1 1447 0
	cmpl	$0, -40(%rbp)	#, preferred_stack_boundary
	jg	.L219	#,
	.loc 1 1448 0
	movl	$1, -40(%rbp)	#, preferred_stack_boundary
.L219:
	.loc 1 1449 0
	movq	-48(%rbp), %rax	# args_size, tmp146
	movq	(%rax), %rdx	# args_size_6(D)->constant, D.17515
	.loc 1 1450 0
	movq	cfun(%rip), %rax	# cfun, cfun.80
	movq	16(%rax), %rax	# cfun.80_51->expr, D.17518
	movl	8(%rax), %eax	# _52->x_stack_pointer_delta, D.17516
	cltq
	addq	%rax, %rdx	# D.17515, D.17515
	.loc 1 1451 0
	movl	-40(%rbp), %eax	# preferred_stack_boundary, tmp147
	cltq
	addq	%rdx, %rax	# D.17515, D.17515
	subq	$1, %rax	#, D.17515
	.loc 1 1452 0
	movl	-40(%rbp), %edx	# preferred_stack_boundary, tmp148
	movslq	%edx, %rcx	# tmp148, D.17515
	cqto
	idivq	%rcx	# D.17515
	movq	%rax, %rdx	# tmp149, D.17515
	.loc 1 1453 0
	movl	-40(%rbp), %eax	# preferred_stack_boundary, tmp151
	cltq
	imulq	%rax, %rdx	# D.17515, D.17515
	.loc 1 1454 0
	movq	cfun(%rip), %rax	# cfun, cfun.81
	movq	16(%rax), %rax	# cfun.81_63->expr, D.17518
	movl	8(%rax), %eax	# _64->x_stack_pointer_delta, D.17516
	cltq
	subq	%rax, %rdx	# D.17515, D.17515
	.loc 1 1449 0
	movq	-48(%rbp), %rax	# args_size, tmp152
	movq	%rdx, (%rax)	# D.17515, args_size_6(D)->constant
	.loc 1 1456 0
	movl	-36(%rbp), %eax	# reg_parm_stack_space, tmp153
	movslq	%eax, %rdx	# tmp153, D.17515
	movq	-48(%rbp), %rax	# args_size, tmp154
	movq	(%rax), %rax	# args_size_6(D)->constant, D.17515
	cmpq	%rax, %rdx	# D.17515, D.17515
	cmovl	%rax, %rdx	# D.17515,, D.17515, D.17515
	movq	-48(%rbp), %rax	# args_size, tmp155
	movq	%rdx, (%rax)	# D.17515, args_size_6(D)->constant
	.loc 1 1465 0
	movq	-48(%rbp), %rax	# args_size, tmp156
	movq	(%rax), %rdx	# args_size_6(D)->constant, D.17515
	movl	-36(%rbp), %eax	# reg_parm_stack_space, tmp157
	cltq
	subq	%rax, %rdx	# D.17515, D.17515
	movq	-48(%rbp), %rax	# args_size, tmp158
	movq	%rdx, (%rax)	# D.17515, args_size_6(D)->constant
.L218:
	.loc 1 1468 0
	movl	-20(%rbp), %eax	# unadjusted_args_size, D.17516
	.loc 1 1469 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	compute_argument_block_size, .-compute_argument_block_size
	.type	precompute_arguments, @function
precompute_arguments:
.LFB15:
	.loc 1 1486 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -36(%rbp)	# flags, flags
	movl	%esi, -40(%rbp)	# num_actuals, num_actuals
	movq	%rdx, -48(%rbp)	# args, args
	.loc 1 1504 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L222	#
.L226:
	.loc 1 1505 0
	movl	-36(%rbp), %eax	# flags, tmp122
	andl	$4096, %eax	#, D.17521
	testl	%eax, %eax	# D.17521
	jne	.L223	#,
	.loc 1 1506 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.82
	andl	$4096, %eax	#, D.17521
	testl	%eax, %eax	# D.17521
	sete	%al	#, D.17522
	movzbl	%al, %ecx	# D.17522, D.17521
	movl	-24(%rbp), %eax	# i, tmp123
	movslq	%eax, %rdx	# tmp123, D.17523
	movq	%rdx, %rax	# D.17523, tmp124
	salq	$2, %rax	#, tmp124
	addq	%rdx, %rax	# D.17523, tmp124
	salq	$2, %rax	#, tmp124
	addq	%rdx, %rax	# D.17523, tmp124
	salq	$3, %rax	#, tmp125
	movq	%rax, %rdx	# tmp124, D.17523
	movq	-48(%rbp), %rax	# args, tmp126
	addq	%rdx, %rax	# D.17523, D.17524
	movq	(%rax), %rax	# _13->tree_value, D.17525
	movl	%ecx, %esi	# D.17521,
	movq	%rax, %rdi	# D.17525,
	call	calls_function	#
	testl	%eax, %eax	# D.17521
	je	.L224	#,
.L223:
.LBB14:
	.loc 1 1511 0
	movl	-24(%rbp), %eax	# i, tmp127
	movslq	%eax, %rdx	# tmp127, D.17523
	movq	%rdx, %rax	# D.17523, tmp128
	salq	$2, %rax	#, tmp128
	addq	%rdx, %rax	# D.17523, tmp128
	salq	$2, %rax	#, tmp128
	addq	%rdx, %rax	# D.17523, tmp128
	salq	$3, %rax	#, tmp129
	movq	%rax, %rdx	# tmp128, D.17523
	movq	-48(%rbp), %rax	# args, tmp130
	addq	%rdx, %rax	# D.17523, D.17524
	movq	(%rax), %rax	# _18->tree_value, D.17525
	movq	8(%rax), %rax	# _19->common.type, D.17525
	movzbl	17(%rax), %eax	# *_20, D.17526
	andl	$4, %eax	#, D.17526
	testb	%al, %al	# D.17526
	je	.L225	#,
	.loc 1 1512 0
	movl	$__FUNCTION__.12875, %edx	#,
	movl	$1512, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L225:
	.loc 1 1514 0
	movl	-24(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, D.17523
	movq	%rdx, %rax	# D.17523, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# D.17523, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# D.17523, tmp132
	salq	$3, %rax	#, tmp133
	movq	%rax, %rdx	# tmp132, D.17523
	movq	-48(%rbp), %rax	# args, tmp134
	leaq	(%rdx,%rax), %rbx	#, D.17524
	.loc 1 1515 0
	movl	-24(%rbp), %eax	# i, tmp135
	movslq	%eax, %rdx	# tmp135, D.17523
	movq	%rdx, %rax	# D.17523, tmp136
	salq	$2, %rax	#, tmp136
	addq	%rdx, %rax	# D.17523, tmp136
	salq	$2, %rax	#, tmp136
	addq	%rdx, %rax	# D.17523, tmp136
	salq	$3, %rax	#, tmp137
	movq	%rax, %rdx	# tmp136, D.17523
	movq	-48(%rbp), %rax	# args, tmp138
	addq	%rdx, %rax	# D.17523, D.17524
	movq	(%rax), %rax	# _28->tree_value, D.17525
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17525,
	call	expand_expr	#
	movq	%rax, 16(%rbx)	# D.17527, _25->value
	.loc 1 1519 0
	call	emit_queue	#
	.loc 1 1521 0
	movl	-24(%rbp), %eax	# i, tmp139
	movslq	%eax, %rdx	# tmp139, D.17523
	movq	%rdx, %rax	# D.17523, tmp140
	salq	$2, %rax	#, tmp140
	addq	%rdx, %rax	# D.17523, tmp140
	salq	$2, %rax	#, tmp140
	addq	%rdx, %rax	# D.17523, tmp140
	salq	$3, %rax	#, tmp141
	movq	%rax, %rdx	# tmp140, D.17523
	movq	-48(%rbp), %rax	# args, tmp142
	leaq	(%rdx,%rax), %r12	#, D.17524
	movl	-24(%rbp), %eax	# i, tmp143
	movslq	%eax, %rdx	# tmp143, D.17523
	movq	%rdx, %rax	# D.17523, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# D.17523, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# D.17523, tmp144
	salq	$3, %rax	#, tmp145
	movq	%rax, %rdx	# tmp144, D.17523
	movq	-48(%rbp), %rax	# args, tmp146
	leaq	(%rdx,%rax), %rbx	#, D.17524
	.loc 1 1522 0
	movl	-24(%rbp), %eax	# i, tmp147
	movslq	%eax, %rdx	# tmp147, D.17523
	movq	%rdx, %rax	# D.17523, tmp148
	salq	$2, %rax	#, tmp148
	addq	%rdx, %rax	# D.17523, tmp148
	salq	$2, %rax	#, tmp148
	addq	%rdx, %rax	# D.17523, tmp148
	salq	$3, %rax	#, tmp149
	movq	%rax, %rdx	# tmp148, D.17523
	movq	-48(%rbp), %rax	# args, tmp150
	addq	%rdx, %rax	# D.17523, D.17524
	movq	16(%rax), %rax	# _39->value, D.17527
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17527,
	call	protect_from_queue	#
	movq	%rax, 16(%rbx)	# D.17527, _36->value
	.loc 1 1521 0
	movq	16(%rbx), %rax	# _36->value, D.17527
	movq	%rax, 24(%r12)	# D.17527, _33->initial_value
	.loc 1 1524 0
	movl	-24(%rbp), %eax	# i, tmp151
	movslq	%eax, %rdx	# tmp151, D.17523
	movq	%rdx, %rax	# D.17523, tmp152
	salq	$2, %rax	#, tmp152
	addq	%rdx, %rax	# D.17523, tmp152
	salq	$2, %rax	#, tmp152
	addq	%rdx, %rax	# D.17523, tmp152
	salq	$3, %rax	#, tmp153
	movq	%rax, %rdx	# tmp152, D.17523
	movq	-48(%rbp), %rax	# args, tmp154
	addq	%rdx, %rax	# D.17523, D.17524
	movq	(%rax), %rax	# _45->tree_value, D.17525
	movq	8(%rax), %rax	# _46->common.type, D.17525
	movzbl	61(%rax), %eax	# *_47, tmp157
	shrb	%al	# D.17528
	movzbl	%al, %eax	# D.17528, tmp158
	movl	%eax, -20(%rbp)	# tmp158, mode
	.loc 1 1525 0
	movl	-24(%rbp), %eax	# i, tmp159
	movslq	%eax, %rdx	# tmp159, D.17523
	movq	%rdx, %rax	# D.17523, tmp160
	salq	$2, %rax	#, tmp160
	addq	%rdx, %rax	# D.17523, tmp160
	salq	$2, %rax	#, tmp160
	addq	%rdx, %rax	# D.17523, tmp160
	salq	$3, %rax	#, tmp161
	movq	%rax, %rdx	# tmp160, D.17523
	movq	-48(%rbp), %rax	# args, tmp162
	addq	%rdx, %rax	# D.17523, D.17524
	movl	8(%rax), %eax	# _52->mode, D.17529
	cmpl	-20(%rbp), %eax	# mode, D.17529
	je	.L224	#,
	.loc 1 1527 0
	movl	-24(%rbp), %eax	# i, tmp163
	movslq	%eax, %rdx	# tmp163, D.17523
	movq	%rdx, %rax	# D.17523, tmp164
	salq	$2, %rax	#, tmp164
	addq	%rdx, %rax	# D.17523, tmp164
	salq	$2, %rax	#, tmp164
	addq	%rdx, %rax	# D.17523, tmp164
	salq	$3, %rax	#, tmp165
	movq	%rax, %rdx	# tmp164, D.17523
	movq	-48(%rbp), %rax	# args, tmp166
	leaq	(%rdx,%rax), %rbx	#, D.17524
	.loc 1 1529 0
	movl	-24(%rbp), %eax	# i, tmp167
	movslq	%eax, %rdx	# tmp167, D.17523
	movq	%rdx, %rax	# D.17523, tmp168
	salq	$2, %rax	#, tmp168
	addq	%rdx, %rax	# D.17523, tmp168
	salq	$2, %rax	#, tmp168
	addq	%rdx, %rax	# D.17523, tmp168
	salq	$3, %rax	#, tmp169
	movq	%rax, %rdx	# tmp168, D.17523
	movq	-48(%rbp), %rax	# args, tmp170
	addq	%rdx, %rax	# D.17523, D.17524
	.loc 1 1528 0
	movl	48(%rax), %ecx	# _59->unsignedp, D.17521
	.loc 1 1529 0
	movl	-24(%rbp), %eax	# i, tmp171
	movslq	%eax, %rdx	# tmp171, D.17523
	movq	%rdx, %rax	# D.17523, tmp172
	salq	$2, %rax	#, tmp172
	addq	%rdx, %rax	# D.17523, tmp172
	salq	$2, %rax	#, tmp172
	addq	%rdx, %rax	# D.17523, tmp172
	salq	$3, %rax	#, tmp173
	movq	%rax, %rdx	# tmp172, D.17523
	movq	-48(%rbp), %rax	# args, tmp174
	addq	%rdx, %rax	# D.17523, D.17524
	.loc 1 1528 0
	movq	16(%rax), %rdi	# _63->value, D.17527
	movl	-24(%rbp), %eax	# i, tmp175
	movslq	%eax, %rdx	# tmp175, D.17523
	movq	%rdx, %rax	# D.17523, tmp176
	salq	$2, %rax	#, tmp176
	addq	%rdx, %rax	# D.17523, tmp176
	salq	$2, %rax	#, tmp176
	addq	%rdx, %rax	# D.17523, tmp176
	salq	$3, %rax	#, tmp177
	movq	%rax, %rdx	# tmp176, D.17523
	movq	-48(%rbp), %rax	# args, tmp178
	addq	%rdx, %rax	# D.17523, D.17524
	movl	8(%rax), %eax	# _67->mode, D.17529
	movl	-20(%rbp), %esi	# mode, tmp179
	movq	%rdi, %rdx	# D.17527,
	movl	%eax, %edi	# D.17529,
	call	convert_modes	#
	movq	%rax, 16(%rbx)	# D.17527, _56->value
.L224:
.LBE14:
	.loc 1 1504 0
	addl	$1, -24(%rbp)	#, i
.L222:
	.loc 1 1504 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp180
	cmpl	-40(%rbp), %eax	# num_actuals, tmp180
	jl	.L226	#,
	.loc 1 1546 0 is_stmt 1
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	precompute_arguments, .-precompute_arguments
	.type	finalize_must_preallocate, @function
finalize_must_preallocate:
.LFB16:
	.loc 1 1558 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# must_preallocate, must_preallocate
	movl	%esi, -24(%rbp)	# num_actuals, num_actuals
	movq	%rdx, -32(%rbp)	# args, args
	movq	%rcx, -40(%rbp)	# args_size, args_size
	.loc 1 1578 0
	cmpl	$0, -20(%rbp)	#, must_preallocate
	jne	.L228	#,
.LBB15:
	.loc 1 1580 0
	movl	$0, -12(%rbp)	#, partial_seen
	.loc 1 1581 0
	movl	$0, -8(%rbp)	#, copy_to_evaluate_size
	.loc 1 1584 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L229	#
.L235:
	.loc 1 1586 0
	movl	-4(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, D.17530
	movq	%rdx, %rax	# D.17530, tmp116
	salq	$2, %rax	#, tmp116
	addq	%rdx, %rax	# D.17530, tmp116
	salq	$2, %rax	#, tmp116
	addq	%rdx, %rax	# D.17530, tmp116
	salq	$3, %rax	#, tmp117
	movq	%rax, %rdx	# tmp116, D.17530
	movq	-32(%rbp), %rax	# args, tmp118
	addq	%rdx, %rax	# D.17530, D.17531
	movl	52(%rax), %eax	# _17->partial, D.17532
	testl	%eax, %eax	# D.17532
	jle	.L230	#,
	.loc 1 1586 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, D.17530
	movq	%rdx, %rax	# D.17530, tmp120
	salq	$2, %rax	#, tmp120
	addq	%rdx, %rax	# D.17530, tmp120
	salq	$2, %rax	#, tmp120
	addq	%rdx, %rax	# D.17530, tmp120
	salq	$3, %rax	#, tmp121
	movq	%rax, %rdx	# tmp120, D.17530
	movq	-32(%rbp), %rax	# args, tmp122
	addq	%rdx, %rax	# D.17530, D.17531
	movl	56(%rax), %eax	# _21->pass_on_stack, D.17532
	testl	%eax, %eax	# D.17532
	jne	.L230	#,
	.loc 1 1587 0 is_stmt 1
	movl	$1, -12(%rbp)	#, partial_seen
	jmp	.L231	#
.L230:
	.loc 1 1588 0
	cmpl	$0, -12(%rbp)	#, partial_seen
	je	.L231	#,
	.loc 1 1588 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp123
	movslq	%eax, %rdx	# tmp123, D.17530
	movq	%rdx, %rax	# D.17530, tmp124
	salq	$2, %rax	#, tmp124
	addq	%rdx, %rax	# D.17530, tmp124
	salq	$2, %rax	#, tmp124
	addq	%rdx, %rax	# D.17530, tmp124
	salq	$3, %rax	#, tmp125
	movq	%rax, %rdx	# tmp124, D.17530
	movq	-32(%rbp), %rax	# args, tmp126
	addq	%rdx, %rax	# D.17530, D.17531
	movq	32(%rax), %rax	# _26->reg, D.17533
	testq	%rax, %rax	# D.17533
	jne	.L231	#,
	.loc 1 1589 0 is_stmt 1
	movl	$1, -20(%rbp)	#, must_preallocate
.L231:
	.loc 1 1591 0
	movl	-4(%rbp), %eax	# i, tmp127
	movslq	%eax, %rdx	# tmp127, D.17530
	movq	%rdx, %rax	# D.17530, tmp128
	salq	$2, %rax	#, tmp128
	addq	%rdx, %rax	# D.17530, tmp128
	salq	$2, %rax	#, tmp128
	addq	%rdx, %rax	# D.17530, tmp128
	salq	$3, %rax	#, tmp129
	movq	%rax, %rdx	# tmp128, D.17530
	movq	-32(%rbp), %rax	# args, tmp130
	addq	%rdx, %rax	# D.17530, D.17531
	movq	(%rax), %rax	# _31->tree_value, D.17534
	movq	8(%rax), %rax	# _32->common.type, D.17534
	movzbl	61(%rax), %eax	# *_33, D.17535
	andl	$-2, %eax	#, D.17535
	cmpb	$102, %al	#, D.17535
	jne	.L232	#,
	.loc 1 1592 0
	movl	-4(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, D.17530
	movq	%rdx, %rax	# D.17530, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# D.17530, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# D.17530, tmp132
	salq	$3, %rax	#, tmp133
	movq	%rax, %rdx	# tmp132, D.17530
	movq	-32(%rbp), %rax	# args, tmp134
	addq	%rdx, %rax	# D.17530, D.17531
	movq	(%rax), %rax	# _38->tree_value, D.17534
	movzbl	16(%rax), %eax	# _39->common.code, D.17535
	cmpb	$53, %al	#, D.17535
	je	.L233	#,
	.loc 1 1593 0
	movl	-4(%rbp), %eax	# i, tmp135
	movslq	%eax, %rdx	# tmp135, D.17530
	movq	%rdx, %rax	# D.17530, tmp136
	salq	$2, %rax	#, tmp136
	addq	%rdx, %rax	# D.17530, tmp136
	salq	$2, %rax	#, tmp136
	addq	%rdx, %rax	# D.17530, tmp136
	salq	$3, %rax	#, tmp137
	movq	%rax, %rdx	# tmp136, D.17530
	movq	-32(%rbp), %rax	# args, tmp138
	addq	%rdx, %rax	# D.17530, D.17531
	movq	(%rax), %rax	# _43->tree_value, D.17534
	movzbl	16(%rax), %eax	# _44->common.code, D.17535
	cmpb	$50, %al	#, D.17535
	je	.L233	#,
	.loc 1 1594 0
	movl	-4(%rbp), %eax	# i, tmp139
	movslq	%eax, %rdx	# tmp139, D.17530
	movq	%rdx, %rax	# D.17530, tmp140
	salq	$2, %rax	#, tmp140
	addq	%rdx, %rax	# D.17530, tmp140
	salq	$2, %rax	#, tmp140
	addq	%rdx, %rax	# D.17530, tmp140
	salq	$3, %rax	#, tmp141
	movq	%rax, %rdx	# tmp140, D.17530
	movq	-32(%rbp), %rax	# args, tmp142
	addq	%rdx, %rax	# D.17530, D.17531
	movq	(%rax), %rax	# _48->tree_value, D.17534
	movzbl	16(%rax), %eax	# _49->common.code, D.17535
	cmpb	$51, %al	#, D.17535
	je	.L233	#,
	.loc 1 1595 0
	movl	-4(%rbp), %eax	# i, tmp143
	movslq	%eax, %rdx	# tmp143, D.17530
	movq	%rdx, %rax	# D.17530, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# D.17530, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# D.17530, tmp144
	salq	$3, %rax	#, tmp145
	movq	%rax, %rdx	# tmp144, D.17530
	movq	-32(%rbp), %rax	# args, tmp146
	addq	%rdx, %rax	# D.17530, D.17531
	movq	(%rax), %rax	# _53->tree_value, D.17534
	movq	8(%rax), %rax	# _54->common.type, D.17534
	movzbl	17(%rax), %eax	# *_55, D.17535
	andl	$4, %eax	#, D.17535
	testb	%al, %al	# D.17535
	je	.L232	#,
.L233:
	.loc 1 1597 0
	movl	-4(%rbp), %eax	# i, tmp147
	movslq	%eax, %rdx	# tmp147, D.17530
	movq	%rdx, %rax	# D.17530, tmp148
	salq	$2, %rax	#, tmp148
	addq	%rdx, %rax	# D.17530, tmp148
	salq	$2, %rax	#, tmp148
	addq	%rdx, %rax	# D.17530, tmp148
	salq	$3, %rax	#, tmp149
	movq	%rax, %rdx	# tmp148, D.17530
	movq	-32(%rbp), %rax	# args, tmp150
	addq	%rdx, %rax	# D.17530, D.17531
	movq	(%rax), %rax	# _60->tree_value, D.17534
	movq	8(%rax), %rax	# _61->common.type, D.17534
	movq	%rax, %rdi	# D.17534,
	call	int_size_in_bytes	#
	movl	%eax, %edx	# D.17536, D.17537
	movl	-8(%rbp), %eax	# copy_to_evaluate_size, copy_to_evaluate_size.83
	addl	%edx, %eax	# D.17537, D.17537
	movl	%eax, -8(%rbp)	# D.17537, copy_to_evaluate_size
.L232:
	.loc 1 1584 0
	addl	$1, -4(%rbp)	#, i
.L229:
	.loc 1 1584 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp151
	cmpl	-24(%rbp), %eax	# num_actuals, tmp151
	jge	.L234	#,
	.loc 1 1584 0 discriminator 2
	cmpl	$0, -20(%rbp)	#, must_preallocate
	je	.L235	#,
.L234:
	.loc 1 1600 0 is_stmt 1
	movl	-8(%rbp), %eax	# copy_to_evaluate_size, tmp152
	addl	%eax, %eax	# D.17532
	movslq	%eax, %rdx	# D.17532, D.17536
	movq	-40(%rbp), %rax	# args_size, tmp153
	movq	(%rax), %rax	# args_size_71(D)->constant, D.17536
	cmpq	%rax, %rdx	# D.17536, D.17536
	jl	.L228	#,
	.loc 1 1601 0
	movq	-40(%rbp), %rax	# args_size, tmp154
	movq	(%rax), %rax	# args_size_71(D)->constant, D.17536
	testq	%rax, %rax	# D.17536
	jle	.L228	#,
	.loc 1 1602 0
	movl	$1, -20(%rbp)	#, must_preallocate
.L228:
.LBE15:
	.loc 1 1604 0
	movl	-20(%rbp), %eax	# must_preallocate, D.17532
	.loc 1 1605 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	finalize_must_preallocate, .-finalize_must_preallocate
	.type	compute_argument_addresses, @function
compute_argument_addresses:
.LFB17:
	.loc 1 1620 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# args, args
	movq	%rsi, -80(%rbp)	# argblock, argblock
	movl	%edx, -84(%rbp)	# num_actuals, num_actuals
	.loc 1 1621 0
	cmpq	$0, -80(%rbp)	#, argblock
	je	.L237	#,
.LBB16:
	.loc 1 1623 0
	movq	-80(%rbp), %rax	# argblock, tmp182
	movq	%rax, -48(%rbp)	# tmp182, arg_reg
	.loc 1 1624 0
	movl	$0, -52(%rbp)	#, arg_offset
	.loc 1 1626 0
	movq	-80(%rbp), %rax	# argblock, tmp183
	movzwl	(%rax), %eax	# argblock_12(D)->code, D.17538
	cmpw	$75, %ax	#, D.17538
	jne	.L239	#,
	.loc 1 1627 0
	movq	-80(%rbp), %rax	# argblock, tmp184
	movq	8(%rax), %rax	# argblock_12(D)->fld[0].rtx, tmp185
	movq	%rax, -48(%rbp)	# tmp185, arg_reg
	movq	-80(%rbp), %rax	# argblock, tmp186
	movq	16(%rax), %rax	# argblock_12(D)->fld[1].rtx, D.17539
	movq	8(%rax), %rax	# _17->fld[0].rtwint, D.17540
	movl	%eax, -52(%rbp)	# D.17540, arg_offset
.L239:
	.loc 1 1629 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L240	#
.L259:
.LBB17:
	.loc 1 1631 0
	movl	-56(%rbp), %eax	# i, tmp187
	movslq	%eax, %rdx	# tmp187, D.17541
	movq	%rdx, %rax	# D.17541, tmp188
	salq	$2, %rax	#, tmp188
	addq	%rdx, %rax	# D.17541, tmp188
	salq	$2, %rax	#, tmp188
	addq	%rdx, %rax	# D.17541, tmp188
	salq	$3, %rax	#, tmp189
	movq	%rax, %rdx	# tmp188, D.17541
	movq	-72(%rbp), %rax	# args, tmp190
	addq	%rdx, %rax	# D.17541, D.17542
	movq	72(%rax), %rax	# _25->offset.var, D.17543
	testq	%rax, %rax	# D.17543
	jne	.L241	#,
	.loc 1 1631 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp191
	movslq	%eax, %rdx	# tmp191, D.17541
	movq	%rdx, %rax	# D.17541, tmp192
	salq	$2, %rax	#, tmp192
	addq	%rdx, %rax	# D.17541, tmp192
	salq	$2, %rax	#, tmp192
	addq	%rdx, %rax	# D.17541, tmp192
	salq	$3, %rax	#, tmp193
	movq	%rax, %rdx	# tmp192, D.17541
	movq	-72(%rbp), %rax	# args, tmp194
	addq	%rdx, %rax	# D.17541, D.17542
	movq	64(%rax), %rax	# _29->offset.constant, D.17540
	movq	%rax, %rsi	# D.17540,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L242	#
.L241:
	.loc 1 1631 0 discriminator 2
	movl	-56(%rbp), %eax	# i, tmp195
	movslq	%eax, %rdx	# tmp195, D.17541
	movq	%rdx, %rax	# D.17541, tmp196
	salq	$2, %rax	#, tmp196
	addq	%rdx, %rax	# D.17541, tmp196
	salq	$2, %rax	#, tmp196
	addq	%rdx, %rax	# D.17541, tmp196
	salq	$3, %rax	#, tmp197
	movq	%rax, %rdx	# tmp196, D.17541
	movq	-72(%rbp), %rax	# args, tmp198
	addq	%rdx, %rax	# D.17541, D.17542
	movq	72(%rax), %rax	# _34->offset.var, D.17543
	testq	%rax, %rax	# D.17543
	jne	.L243	#,
	.loc 1 1631 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp199
	movslq	%eax, %rdx	# tmp199, D.17541
	movq	%rdx, %rax	# D.17541, tmp200
	salq	$2, %rax	#, tmp200
	addq	%rdx, %rax	# D.17541, tmp200
	salq	$2, %rax	#, tmp200
	addq	%rdx, %rax	# D.17541, tmp200
	salq	$3, %rax	#, tmp201
	movq	%rax, %rdx	# tmp200, D.17541
	movq	-72(%rbp), %rax	# args, tmp202
	addq	%rdx, %rax	# D.17541, D.17542
	movq	64(%rax), %rax	# _38->offset.constant, D.17540
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17540,
	call	size_int_wide	#
	jmp	.L244	#
.L243:
	.loc 1 1631 0 discriminator 2
	movl	-56(%rbp), %eax	# i, tmp203
	movslq	%eax, %rdx	# tmp203, D.17541
	movq	%rdx, %rax	# D.17541, tmp204
	salq	$2, %rax	#, tmp204
	addq	%rdx, %rax	# D.17541, tmp204
	salq	$2, %rax	#, tmp204
	addq	%rdx, %rax	# D.17541, tmp204
	salq	$3, %rax	#, tmp205
	movq	%rax, %rdx	# tmp204, D.17541
	movq	-72(%rbp), %rax	# args, tmp206
	addq	%rdx, %rax	# D.17541, D.17542
	movq	64(%rax), %rax	# _43->offset.constant, D.17540
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17540,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.17543
	movl	-56(%rbp), %eax	# i, tmp207
	movslq	%eax, %rdx	# tmp207, D.17541
	movq	%rdx, %rax	# D.17541, tmp208
	salq	$2, %rax	#, tmp208
	addq	%rdx, %rax	# D.17541, tmp208
	salq	$2, %rax	#, tmp208
	addq	%rdx, %rax	# D.17541, tmp208
	salq	$3, %rax	#, tmp209
	movq	%rax, %rdx	# tmp208, D.17541
	movq	-72(%rbp), %rax	# args, tmp210
	addq	%rdx, %rax	# D.17541, D.17542
	movq	72(%rax), %rdx	# _48->offset.var, D.17543
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17543
	movq	%rdx, %rsi	# D.17543,
	movq	%rax, %rdi	# D.17543,
	call	convert	#
	movq	%rbx, %rdx	# D.17543,
	movq	%rax, %rsi	# D.17543,
	movl	$59, %edi	#,
	call	size_binop	#
.L244:
	.loc 1 1631 0 discriminator 3
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.85,
	call	expand_expr	#
.L242:
	movq	%rax, -32(%rbp)	# iftmp.84, offset
	.loc 1 1632 0 is_stmt 1 discriminator 3
	movl	-56(%rbp), %eax	# i, tmp211
	movslq	%eax, %rdx	# tmp211, D.17541
	movq	%rdx, %rax	# D.17541, tmp212
	salq	$2, %rax	#, tmp212
	addq	%rdx, %rax	# D.17541, tmp212
	salq	$2, %rax	#, tmp212
	addq	%rdx, %rax	# D.17541, tmp212
	salq	$3, %rax	#, tmp213
	movq	%rax, %rdx	# tmp212, D.17541
	movq	-72(%rbp), %rax	# args, tmp214
	addq	%rdx, %rax	# D.17541, D.17542
	movq	88(%rax), %rax	# _57->slot_offset.var, D.17543
	testq	%rax, %rax	# D.17543
	jne	.L245	#,
	.loc 1 1632 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp215
	movslq	%eax, %rdx	# tmp215, D.17541
	movq	%rdx, %rax	# D.17541, tmp216
	salq	$2, %rax	#, tmp216
	addq	%rdx, %rax	# D.17541, tmp216
	salq	$2, %rax	#, tmp216
	addq	%rdx, %rax	# D.17541, tmp216
	salq	$3, %rax	#, tmp217
	movq	%rax, %rdx	# tmp216, D.17541
	movq	-72(%rbp), %rax	# args, tmp218
	addq	%rdx, %rax	# D.17541, D.17542
	movq	80(%rax), %rax	# _61->slot_offset.constant, D.17540
	movq	%rax, %rsi	# D.17540,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L246	#
.L245:
	.loc 1 1632 0 discriminator 2
	movl	-56(%rbp), %eax	# i, tmp219
	movslq	%eax, %rdx	# tmp219, D.17541
	movq	%rdx, %rax	# D.17541, tmp220
	salq	$2, %rax	#, tmp220
	addq	%rdx, %rax	# D.17541, tmp220
	salq	$2, %rax	#, tmp220
	addq	%rdx, %rax	# D.17541, tmp220
	salq	$3, %rax	#, tmp221
	movq	%rax, %rdx	# tmp220, D.17541
	movq	-72(%rbp), %rax	# args, tmp222
	addq	%rdx, %rax	# D.17541, D.17542
	movq	88(%rax), %rax	# _66->slot_offset.var, D.17543
	testq	%rax, %rax	# D.17543
	jne	.L247	#,
	.loc 1 1632 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp223
	movslq	%eax, %rdx	# tmp223, D.17541
	movq	%rdx, %rax	# D.17541, tmp224
	salq	$2, %rax	#, tmp224
	addq	%rdx, %rax	# D.17541, tmp224
	salq	$2, %rax	#, tmp224
	addq	%rdx, %rax	# D.17541, tmp224
	salq	$3, %rax	#, tmp225
	movq	%rax, %rdx	# tmp224, D.17541
	movq	-72(%rbp), %rax	# args, tmp226
	addq	%rdx, %rax	# D.17541, D.17542
	movq	80(%rax), %rax	# _70->slot_offset.constant, D.17540
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17540,
	call	size_int_wide	#
	jmp	.L248	#
.L247:
	.loc 1 1632 0 discriminator 2
	movl	-56(%rbp), %eax	# i, tmp227
	movslq	%eax, %rdx	# tmp227, D.17541
	movq	%rdx, %rax	# D.17541, tmp228
	salq	$2, %rax	#, tmp228
	addq	%rdx, %rax	# D.17541, tmp228
	salq	$2, %rax	#, tmp228
	addq	%rdx, %rax	# D.17541, tmp228
	salq	$3, %rax	#, tmp229
	movq	%rax, %rdx	# tmp228, D.17541
	movq	-72(%rbp), %rax	# args, tmp230
	addq	%rdx, %rax	# D.17541, D.17542
	movq	80(%rax), %rax	# _75->slot_offset.constant, D.17540
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17540,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.17543
	movl	-56(%rbp), %eax	# i, tmp231
	movslq	%eax, %rdx	# tmp231, D.17541
	movq	%rdx, %rax	# D.17541, tmp232
	salq	$2, %rax	#, tmp232
	addq	%rdx, %rax	# D.17541, tmp232
	salq	$2, %rax	#, tmp232
	addq	%rdx, %rax	# D.17541, tmp232
	salq	$3, %rax	#, tmp233
	movq	%rax, %rdx	# tmp232, D.17541
	movq	-72(%rbp), %rax	# args, tmp234
	addq	%rdx, %rax	# D.17541, D.17542
	movq	88(%rax), %rdx	# _80->slot_offset.var, D.17543
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17543
	movq	%rdx, %rsi	# D.17543,
	movq	%rax, %rdi	# D.17543,
	call	convert	#
	movq	%rbx, %rdx	# D.17543,
	movq	%rax, %rsi	# D.17543,
	movl	$59, %edi	#,
	call	size_binop	#
.L248:
	.loc 1 1632 0 discriminator 3
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.87,
	call	expand_expr	#
.L246:
	movq	%rax, -24(%rbp)	# iftmp.86, slot_offset
	.loc 1 1636 0 is_stmt 1 discriminator 3
	movl	-56(%rbp), %eax	# i, tmp235
	movslq	%eax, %rdx	# tmp235, D.17541
	movq	%rdx, %rax	# D.17541, tmp236
	salq	$2, %rax	#, tmp236
	addq	%rdx, %rax	# D.17541, tmp236
	salq	$2, %rax	#, tmp236
	addq	%rdx, %rax	# D.17541, tmp236
	salq	$3, %rax	#, tmp237
	movq	%rax, %rdx	# tmp236, D.17541
	movq	-72(%rbp), %rax	# args, tmp238
	addq	%rdx, %rax	# D.17541, D.17542
	movl	56(%rax), %eax	# _89->pass_on_stack, D.17544
	testl	%eax, %eax	# D.17544
	jne	.L249	#,
	.loc 1 1636 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp239
	movslq	%eax, %rdx	# tmp239, D.17541
	movq	%rdx, %rax	# D.17541, tmp240
	salq	$2, %rax	#, tmp240
	addq	%rdx, %rax	# D.17541, tmp240
	salq	$2, %rax	#, tmp240
	addq	%rdx, %rax	# D.17541, tmp240
	salq	$3, %rax	#, tmp241
	movq	%rax, %rdx	# tmp240, D.17541
	movq	-72(%rbp), %rax	# args, tmp242
	addq	%rdx, %rax	# D.17541, D.17542
	movq	32(%rax), %rax	# _93->reg, D.17539
	testq	%rax, %rax	# D.17539
	je	.L249	#,
	.loc 1 1637 0 is_stmt 1
	jmp	.L250	#
.L249:
	.loc 1 1639 0
	movq	-32(%rbp), %rax	# offset, tmp243
	movzwl	(%rax), %eax	# offset_54->code, D.17538
	cmpw	$54, %ax	#, D.17538
	jne	.L251	#,
	.loc 1 1640 0
	movq	-32(%rbp), %rax	# offset, tmp244
	movq	8(%rax), %rdx	# offset_54->fld[0].rtwint, D.17540
	movq	-48(%rbp), %rax	# arg_reg, tmp245
	movq	%rdx, %rsi	# D.17540,
	movq	%rax, %rdi	# tmp245,
	call	plus_constant_wide	#
	movq	%rax, -40(%rbp)	# tmp246, addr
	jmp	.L252	#
.L251:
	.loc 1 1642 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.89
	andl	$33554432, %eax	#, D.17544
	testl	%eax, %eax	# D.17544
	je	.L253	#,
	.loc 1 1642 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.88
	jmp	.L254	#
.L253:
	.loc 1 1642 0 discriminator 2
	movl	$4, %eax	#, iftmp.88
.L254:
	.loc 1 1642 0 discriminator 3
	movq	-32(%rbp), %rcx	# offset, tmp247
	movq	-48(%rbp), %rdx	# arg_reg, tmp248
	movl	%eax, %esi	# iftmp.88,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -40(%rbp)	# tmp249, addr
.L252:
	.loc 1 1644 0 is_stmt 1
	movl	-52(%rbp), %eax	# arg_offset, tmp250
	movslq	%eax, %rdx	# tmp250, D.17540
	movq	-40(%rbp), %rax	# addr, tmp251
	movq	%rdx, %rsi	# D.17540,
	movq	%rax, %rdi	# tmp251,
	call	plus_constant_wide	#
	movq	%rax, -40(%rbp)	# tmp252, addr
	.loc 1 1645 0
	movl	-56(%rbp), %eax	# i, tmp253
	movslq	%eax, %rdx	# tmp253, D.17541
	movq	%rdx, %rax	# D.17541, tmp254
	salq	$2, %rax	#, tmp254
	addq	%rdx, %rax	# D.17541, tmp254
	salq	$2, %rax	#, tmp254
	addq	%rdx, %rax	# D.17541, tmp254
	salq	$3, %rax	#, tmp255
	movq	%rax, %rdx	# tmp254, D.17541
	movq	-72(%rbp), %rax	# args, tmp256
	leaq	(%rdx,%rax), %rbx	#, D.17542
	movl	-56(%rbp), %eax	# i, tmp257
	movslq	%eax, %rdx	# tmp257, D.17541
	movq	%rdx, %rax	# D.17541, tmp258
	salq	$2, %rax	#, tmp258
	addq	%rdx, %rax	# D.17541, tmp258
	salq	$2, %rax	#, tmp258
	addq	%rdx, %rax	# D.17541, tmp258
	salq	$3, %rax	#, tmp259
	movq	%rax, %rdx	# tmp258, D.17541
	movq	-72(%rbp), %rax	# args, tmp260
	addq	%rdx, %rax	# D.17541, D.17542
	movl	8(%rax), %eax	# _110->mode, D.17545
	movq	-40(%rbp), %rdx	# addr, tmp261
	movq	%rdx, %rsi	# tmp261,
	movl	%eax, %edi	# D.17545,
	call	gen_rtx_MEM	#
	movq	%rax, 112(%rbx)	# D.17539, _107->stack
	.loc 1 1647 0
	movl	-56(%rbp), %eax	# i, tmp262
	movslq	%eax, %rdx	# tmp262, D.17541
	movq	%rdx, %rax	# D.17541, tmp263
	salq	$2, %rax	#, tmp263
	addq	%rdx, %rax	# D.17541, tmp263
	salq	$2, %rax	#, tmp263
	addq	%rdx, %rax	# D.17541, tmp263
	salq	$3, %rax	#, tmp264
	movq	%rax, %rdx	# tmp263, D.17541
	movq	-72(%rbp), %rax	# args, tmp265
	addq	%rdx, %rax	# D.17541, D.17542
	movq	(%rax), %rax	# _115->tree_value, D.17543
	.loc 1 1646 0
	movq	8(%rax), %rcx	# _116->common.type, D.17543
	movl	-56(%rbp), %eax	# i, tmp266
	movslq	%eax, %rdx	# tmp266, D.17541
	movq	%rdx, %rax	# D.17541, tmp267
	salq	$2, %rax	#, tmp267
	addq	%rdx, %rax	# D.17541, tmp267
	salq	$2, %rax	#, tmp267
	addq	%rdx, %rax	# D.17541, tmp267
	salq	$3, %rax	#, tmp268
	movq	%rax, %rdx	# tmp267, D.17541
	movq	-72(%rbp), %rax	# args, tmp269
	addq	%rdx, %rax	# D.17541, D.17542
	movq	112(%rax), %rax	# _120->stack, D.17539
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.17543,
	movq	%rax, %rdi	# D.17539,
	call	set_mem_attributes	#
	.loc 1 1649 0
	movq	-24(%rbp), %rax	# slot_offset, tmp270
	movzwl	(%rax), %eax	# slot_offset_86->code, D.17538
	cmpw	$54, %ax	#, D.17538
	jne	.L255	#,
	.loc 1 1650 0
	movq	-24(%rbp), %rax	# slot_offset, tmp271
	movq	8(%rax), %rdx	# slot_offset_86->fld[0].rtwint, D.17540
	movq	-48(%rbp), %rax	# arg_reg, tmp272
	movq	%rdx, %rsi	# D.17540,
	movq	%rax, %rdi	# tmp272,
	call	plus_constant_wide	#
	movq	%rax, -40(%rbp)	# tmp273, addr
	jmp	.L256	#
.L255:
	.loc 1 1652 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.91
	andl	$33554432, %eax	#, D.17544
	testl	%eax, %eax	# D.17544
	je	.L257	#,
	.loc 1 1652 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.90
	jmp	.L258	#
.L257:
	.loc 1 1652 0 discriminator 2
	movl	$4, %eax	#, iftmp.90
.L258:
	.loc 1 1652 0 discriminator 3
	movq	-24(%rbp), %rcx	# slot_offset, tmp274
	movq	-48(%rbp), %rdx	# arg_reg, tmp275
	movl	%eax, %esi	# iftmp.90,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -40(%rbp)	# tmp276, addr
.L256:
	.loc 1 1654 0 is_stmt 1
	movl	-52(%rbp), %eax	# arg_offset, tmp277
	movslq	%eax, %rdx	# tmp277, D.17540
	movq	-40(%rbp), %rax	# addr, tmp278
	movq	%rdx, %rsi	# D.17540,
	movq	%rax, %rdi	# tmp278,
	call	plus_constant_wide	#
	movq	%rax, -40(%rbp)	# tmp279, addr
	.loc 1 1655 0
	movl	-56(%rbp), %eax	# i, tmp280
	movslq	%eax, %rdx	# tmp280, D.17541
	movq	%rdx, %rax	# D.17541, tmp281
	salq	$2, %rax	#, tmp281
	addq	%rdx, %rax	# D.17541, tmp281
	salq	$2, %rax	#, tmp281
	addq	%rdx, %rax	# D.17541, tmp281
	salq	$3, %rax	#, tmp282
	movq	%rax, %rdx	# tmp281, D.17541
	movq	-72(%rbp), %rax	# args, tmp283
	leaq	(%rdx,%rax), %rbx	#, D.17542
	movl	-56(%rbp), %eax	# i, tmp284
	movslq	%eax, %rdx	# tmp284, D.17541
	movq	%rdx, %rax	# D.17541, tmp285
	salq	$2, %rax	#, tmp285
	addq	%rdx, %rax	# D.17541, tmp285
	salq	$2, %rax	#, tmp285
	addq	%rdx, %rax	# D.17541, tmp285
	salq	$3, %rax	#, tmp286
	movq	%rax, %rdx	# tmp285, D.17541
	movq	-72(%rbp), %rax	# args, tmp287
	addq	%rdx, %rax	# D.17541, D.17542
	movl	8(%rax), %eax	# _137->mode, D.17545
	movq	-40(%rbp), %rdx	# addr, tmp288
	movq	%rdx, %rsi	# tmp288,
	movl	%eax, %edi	# D.17545,
	call	gen_rtx_MEM	#
	movq	%rax, 120(%rbx)	# D.17539, _134->stack_slot
	.loc 1 1657 0
	movl	-56(%rbp), %eax	# i, tmp289
	movslq	%eax, %rdx	# tmp289, D.17541
	movq	%rdx, %rax	# D.17541, tmp290
	salq	$2, %rax	#, tmp290
	addq	%rdx, %rax	# D.17541, tmp290
	salq	$2, %rax	#, tmp290
	addq	%rdx, %rax	# D.17541, tmp290
	salq	$3, %rax	#, tmp291
	movq	%rax, %rdx	# tmp290, D.17541
	movq	-72(%rbp), %rax	# args, tmp292
	addq	%rdx, %rax	# D.17541, D.17542
	movq	(%rax), %rax	# _142->tree_value, D.17543
	.loc 1 1656 0
	movq	8(%rax), %rcx	# _143->common.type, D.17543
	movl	-56(%rbp), %eax	# i, tmp293
	movslq	%eax, %rdx	# tmp293, D.17541
	movq	%rdx, %rax	# D.17541, tmp294
	salq	$2, %rax	#, tmp294
	addq	%rdx, %rax	# D.17541, tmp294
	salq	$2, %rax	#, tmp294
	addq	%rdx, %rax	# D.17541, tmp294
	salq	$3, %rax	#, tmp295
	movq	%rax, %rdx	# tmp294, D.17541
	movq	-72(%rbp), %rax	# args, tmp296
	addq	%rdx, %rax	# D.17541, D.17542
	movq	120(%rax), %rax	# _147->stack_slot, D.17539
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.17543,
	movq	%rax, %rdi	# D.17539,
	call	set_mem_attributes	#
	.loc 1 1663 0
	movl	-56(%rbp), %eax	# i, tmp297
	movslq	%eax, %rdx	# tmp297, D.17541
	movq	%rdx, %rax	# D.17541, tmp298
	salq	$2, %rax	#, tmp298
	addq	%rdx, %rax	# D.17541, tmp298
	salq	$2, %rax	#, tmp298
	addq	%rdx, %rax	# D.17541, tmp298
	salq	$3, %rax	#, tmp299
	movq	%rax, %rdx	# tmp298, D.17541
	movq	-72(%rbp), %rax	# args, tmp300
	addq	%rdx, %rax	# D.17541, D.17542
	movq	112(%rax), %rax	# _151->stack, D.17539
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17539,
	call	set_mem_alias_set	#
	.loc 1 1664 0
	movl	-56(%rbp), %eax	# i, tmp301
	movslq	%eax, %rdx	# tmp301, D.17541
	movq	%rdx, %rax	# D.17541, tmp302
	salq	$2, %rax	#, tmp302
	addq	%rdx, %rax	# D.17541, tmp302
	salq	$2, %rax	#, tmp302
	addq	%rdx, %rax	# D.17541, tmp302
	salq	$3, %rax	#, tmp303
	movq	%rax, %rdx	# tmp302, D.17541
	movq	-72(%rbp), %rax	# args, tmp304
	addq	%rdx, %rax	# D.17541, D.17542
	movq	120(%rax), %rax	# _155->stack_slot, D.17539
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17539,
	call	set_mem_alias_set	#
.L250:
.LBE17:
	.loc 1 1629 0
	addl	$1, -56(%rbp)	#, i
.L240:
	.loc 1 1629 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp305
	cmpl	-84(%rbp), %eax	# num_actuals, tmp305
	jl	.L259	#,
.L237:
.LBE16:
	.loc 1 1667 0 is_stmt 1
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	compute_argument_addresses, .-compute_argument_addresses
	.type	rtx_for_function_call, @function
rtx_for_function_call:
.LFB18:
	.loc 1 1681 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fndecl, fndecl
	movq	%rsi, -32(%rbp)	# exp, exp
	.loc 1 1685 0
	cmpq	$0, -24(%rbp)	#, fndecl
	je	.L261	#,
	.loc 1 1689 0
	movq	-24(%rbp), %rax	# fndecl, tmp66
	movzbl	18(%rax), %eax	# *fndecl_3(D), D.17546
	andl	$1, %eax	#, D.17546
	testb	%al, %al	# D.17546
	jne	.L262	#,
	.loc 1 1691 0
	movq	-24(%rbp), %rax	# fndecl, tmp67
	movq	%rax, %rdi	# tmp67,
	call	assemble_external	#
	.loc 1 1692 0
	movq	-24(%rbp), %rax	# fndecl, tmp68
	movzbl	18(%rax), %edx	#, tmp71
	orl	$1, %edx	#, tmp72
	movb	%dl, 18(%rax)	# tmp72,
.L262:
	.loc 1 1696 0
	movq	-24(%rbp), %rax	# fndecl, tmp73
	movq	144(%rax), %rax	# fndecl_3(D)->decl.rtl, D.17547
	testq	%rax, %rax	# D.17547
	je	.L263	#,
	.loc 1 1696 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fndecl, tmp74
	movq	144(%rax), %rax	# fndecl_3(D)->decl.rtl, iftmp.92
	jmp	.L264	#
.L263:
	.loc 1 1696 0 discriminator 2
	movq	-24(%rbp), %rax	# fndecl, tmp75
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	make_decl_rtl	#
	movq	-24(%rbp), %rax	# fndecl, tmp76
	movq	144(%rax), %rax	# fndecl_3(D)->decl.rtl, iftmp.92
.L264:
	.loc 1 1696 0 discriminator 1
	movq	8(%rax), %rax	# iftmp.92_2->fld[0].rtx, tmp77
	movq	%rax, -16(%rbp)	# tmp77, funexp
	jmp	.L265	#
.L261:
.LBB18:
	.loc 1 1702 0 is_stmt 1
	call	push_temp_slots	#
	.loc 1 1704 0
	movq	-32(%rbp), %rax	# exp, tmp78
	movq	32(%rax), %rax	# exp_10(D)->exp.operands, D.17548
	.loc 1 1703 0
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17548,
	call	expand_expr	#
	movq	%rax, -16(%rbp)	# tmp79, funexp
	movq	-16(%rbp), %rax	# funexp, tmp80
	movq	%rax, -8(%rbp)	# tmp80, funaddr
	.loc 1 1705 0
	call	pop_temp_slots	#
	.loc 1 1706 0
	call	emit_queue	#
.L265:
.LBE18:
	.loc 1 1708 0
	movq	-16(%rbp), %rax	# funexp, D.17549
	.loc 1 1709 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	rtx_for_function_call, .-rtx_for_function_call
	.type	load_register_parameters, @function
load_register_parameters:
.LFB19:
	.loc 1 1724 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# args, args
	movl	%esi, -60(%rbp)	# num_actuals, num_actuals
	movq	%rdx, -72(%rbp)	# call_fusage, call_fusage
	movl	%ecx, -64(%rbp)	# flags, flags
	.loc 1 1730 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L268	#
.L291:
.LBB19:
	.loc 1 1733 0
	movl	-64(%rbp), %eax	# flags, tmp150
	andl	$256, %eax	#, D.17550
	.loc 1 1734 0
	testl	%eax, %eax	# D.17550
	je	.L269	#,
	.loc 1 1734 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp151
	movslq	%eax, %rdx	# tmp151, D.17551
	movq	%rdx, %rax	# D.17551, tmp152
	salq	$2, %rax	#, tmp152
	addq	%rdx, %rax	# D.17551, tmp152
	salq	$2, %rax	#, tmp152
	addq	%rdx, %rax	# D.17551, tmp152
	salq	$3, %rax	#, tmp153
	movq	%rax, %rdx	# tmp152, D.17551
	movq	-56(%rbp), %rax	# args, tmp154
	addq	%rdx, %rax	# D.17551, D.17552
	movq	40(%rax), %rax	# _16->tail_call_reg, iftmp.93
	jmp	.L270	#
.L269:
	.loc 1 1734 0 discriminator 2
	movl	-40(%rbp), %eax	# i, tmp155
	movslq	%eax, %rdx	# tmp155, D.17551
	movq	%rdx, %rax	# D.17551, tmp156
	salq	$2, %rax	#, tmp156
	addq	%rdx, %rax	# D.17551, tmp156
	salq	$2, %rax	#, tmp156
	addq	%rdx, %rax	# D.17551, tmp156
	salq	$3, %rax	#, tmp157
	movq	%rax, %rdx	# tmp156, D.17551
	movq	-56(%rbp), %rax	# args, tmp158
	addq	%rdx, %rax	# D.17551, D.17552
	movq	32(%rax), %rax	# _20->reg, iftmp.93
.L270:
	.loc 1 1733 0 is_stmt 1
	movq	%rax, -24(%rbp)	# iftmp.93, reg
	.loc 1 1735 0
	movl	-40(%rbp), %eax	# i, tmp159
	movslq	%eax, %rdx	# tmp159, D.17551
	movq	%rdx, %rax	# D.17551, tmp160
	salq	$2, %rax	#, tmp160
	addq	%rdx, %rax	# D.17551, tmp160
	salq	$2, %rax	#, tmp160
	addq	%rdx, %rax	# D.17551, tmp160
	salq	$3, %rax	#, tmp161
	movq	%rax, %rdx	# tmp160, D.17551
	movq	-56(%rbp), %rax	# args, tmp162
	addq	%rdx, %rax	# D.17551, D.17552
	movl	52(%rax), %eax	# _25->partial, tmp163
	movl	%eax, -32(%rbp)	# tmp163, partial
	.loc 1 1738 0
	cmpq	$0, -24(%rbp)	#, reg
	je	.L271	#,
	.loc 1 1744 0
	cmpl	$0, -32(%rbp)	#, partial
	jne	.L272	#,
	.loc 1 1745 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp164
	movslq	%eax, %rdx	# tmp164, D.17551
	movq	%rdx, %rax	# D.17551, tmp165
	salq	$2, %rax	#, tmp165
	addq	%rdx, %rax	# D.17551, tmp165
	salq	$2, %rax	#, tmp165
	addq	%rdx, %rax	# D.17551, tmp165
	salq	$3, %rax	#, tmp166
	movq	%rax, %rdx	# tmp165, D.17551
	movq	-56(%rbp), %rax	# args, tmp167
	addq	%rdx, %rax	# D.17551, D.17552
	movq	(%rax), %rax	# _29->tree_value, D.17553
	movq	8(%rax), %rax	# _30->common.type, D.17553
	movzbl	61(%rax), %eax	# *_31, D.17554
	andl	$-2, %eax	#, D.17554
	.loc 1 1744 0 discriminator 1
	cmpb	$102, %al	#, D.17554
	jne	.L273	#,
	.loc 1 1746 0
	movl	-40(%rbp), %eax	# i, tmp168
	movslq	%eax, %rdx	# tmp168, D.17551
	movq	%rdx, %rax	# D.17551, tmp169
	salq	$2, %rax	#, tmp169
	addq	%rdx, %rax	# D.17551, tmp169
	salq	$2, %rax	#, tmp169
	addq	%rdx, %rax	# D.17551, tmp169
	salq	$3, %rax	#, tmp170
	movq	%rax, %rdx	# tmp169, D.17551
	movq	-56(%rbp), %rax	# args, tmp171
	addq	%rdx, %rax	# D.17551, D.17552
	movq	(%rax), %rax	# _36->tree_value, D.17553
	movq	8(%rax), %rax	# _37->common.type, D.17553
	movq	%rax, %rdi	# D.17553,
	call	int_size_in_bytes	#
	movq	%rax, %rdx	#, D.17555
	.loc 1 1747 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.97
	andl	$33554432, %eax	#, D.17550
	testl	%eax, %eax	# D.17550
	je	.L274	#,
	.loc 1 1747 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.96
	jmp	.L275	#
.L274:
	.loc 1 1747 0 discriminator 2
	movl	$3, %eax	#, iftmp.96
.L275:
	.loc 1 1747 0 discriminator 3
	addq	%rdx, %rax	# D.17555, D.17555
	movl	target_flags(%rip), %edx	# target_flags, target_flags.99
	andl	$33554432, %edx	#, D.17550
	testl	%edx, %edx	# D.17550
	je	.L276	#,
	.loc 1 1747 0 discriminator 1
	movl	$8, %ebx	#, iftmp.98
	jmp	.L277	#
.L276:
	.loc 1 1747 0 discriminator 2
	movl	$4, %ebx	#, iftmp.98
.L277:
	.loc 1 1747 0 discriminator 1
	cqto
	idivq	%rbx	# iftmp.98
	jmp	.L279	#
.L273:
	.loc 1 1744 0 is_stmt 1 discriminator 3
	movl	$-1, %eax	#, iftmp.95
	jmp	.L279	#
.L272:
	.loc 1 1744 0 is_stmt 0 discriminator 2
	movl	-32(%rbp), %eax	# partial, iftmp.94
.L279:
	.loc 1 1744 0 discriminator 4
	movl	%eax, -28(%rbp)	# iftmp.94, nregs
	.loc 1 1753 0 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax	# reg, tmp174
	movzwl	(%rax), %eax	# reg_22->code, D.17556
	cmpw	$39, %ax	#, D.17556
	jne	.L280	#,
	.loc 1 1755 0
	movl	-40(%rbp), %eax	# i, tmp175
	movslq	%eax, %rdx	# tmp175, D.17551
	movq	%rdx, %rax	# D.17551, tmp176
	salq	$2, %rax	#, tmp176
	addq	%rdx, %rax	# D.17551, tmp176
	salq	$2, %rax	#, tmp176
	addq	%rdx, %rax	# D.17551, tmp176
	salq	$3, %rax	#, tmp177
	movq	%rax, %rdx	# tmp176, D.17551
	movq	-56(%rbp), %rax	# args, tmp178
	addq	%rdx, %rax	# D.17551, D.17552
	movq	(%rax), %rax	# _58->tree_value, D.17553
	movq	8(%rax), %rax	# _59->common.type, D.17553
	movq	%rax, %rdi	# D.17553,
	call	int_size_in_bytes	#
	.loc 1 1754 0
	movl	%eax, %esi	# D.17555, D.17550
	movl	-40(%rbp), %eax	# i, tmp179
	movslq	%eax, %rdx	# tmp179, D.17551
	movq	%rdx, %rax	# D.17551, tmp180
	salq	$2, %rax	#, tmp180
	addq	%rdx, %rax	# D.17551, tmp180
	salq	$2, %rax	#, tmp180
	addq	%rdx, %rax	# D.17551, tmp180
	salq	$3, %rax	#, tmp181
	movq	%rax, %rdx	# tmp180, D.17551
	movq	-56(%rbp), %rax	# args, tmp182
	addq	%rdx, %rax	# D.17551, D.17552
	movq	16(%rax), %rcx	# _65->value, D.17557
	movq	-24(%rbp), %rax	# reg, tmp183
	movl	%esi, %edx	# D.17550,
	movq	%rcx, %rsi	# D.17557,
	movq	%rax, %rdi	# tmp183,
	call	emit_group_load	#
	jmp	.L281	#
.L280:
	.loc 1 1761 0
	cmpl	$-1, -28(%rbp)	#, nregs
	jne	.L282	#,
	.loc 1 1762 0
	movl	-40(%rbp), %eax	# i, tmp184
	movslq	%eax, %rdx	# tmp184, D.17551
	movq	%rdx, %rax	# D.17551, tmp185
	salq	$2, %rax	#, tmp185
	addq	%rdx, %rax	# D.17551, tmp185
	salq	$2, %rax	#, tmp185
	addq	%rdx, %rax	# D.17551, tmp185
	salq	$3, %rax	#, tmp186
	movq	%rax, %rdx	# tmp185, D.17551
	movq	-56(%rbp), %rax	# args, tmp187
	addq	%rdx, %rax	# D.17551, D.17552
	movq	16(%rax), %rdx	# _69->value, D.17557
	movq	-24(%rbp), %rax	# reg, tmp188
	movq	%rdx, %rsi	# D.17557,
	movq	%rax, %rdi	# tmp188,
	call	emit_move_insn	#
	jmp	.L281	#
.L282:
	.loc 1 1767 0
	movl	-40(%rbp), %eax	# i, tmp189
	movslq	%eax, %rdx	# tmp189, D.17551
	movq	%rdx, %rax	# D.17551, tmp190
	salq	$2, %rax	#, tmp190
	addq	%rdx, %rax	# D.17551, tmp190
	salq	$2, %rax	#, tmp190
	addq	%rdx, %rax	# D.17551, tmp190
	salq	$3, %rax	#, tmp191
	movq	%rax, %rdx	# tmp190, D.17551
	movq	-56(%rbp), %rax	# args, tmp192
	addq	%rdx, %rax	# D.17551, D.17552
	movl	144(%rax), %eax	# _73->n_aligned_regs, D.17550
	testl	%eax, %eax	# D.17550
	je	.L283	#,
	.loc 1 1768 0
	movl	$0, -36(%rbp)	#, j
	jmp	.L284	#
.L285:
	.loc 1 1770 0 discriminator 2
	movl	-40(%rbp), %eax	# i, tmp193
	movslq	%eax, %rdx	# tmp193, D.17551
	movq	%rdx, %rax	# D.17551, tmp194
	salq	$2, %rax	#, tmp194
	addq	%rdx, %rax	# D.17551, tmp194
	salq	$2, %rax	#, tmp194
	addq	%rdx, %rax	# D.17551, tmp194
	salq	$3, %rax	#, tmp195
	movq	%rax, %rdx	# tmp194, D.17551
	movq	-56(%rbp), %rax	# args, tmp196
	addq	%rdx, %rax	# D.17551, D.17552
	movq	136(%rax), %rax	# _82->aligned_regs, D.17558
	movl	-36(%rbp), %edx	# j, tmp197
	movslq	%edx, %rdx	# tmp197, D.17551
	salq	$3, %rdx	#, D.17551
	addq	%rdx, %rax	# D.17551, D.17558
	.loc 1 1769 0 discriminator 2
	movq	(%rax), %rbx	# *_86, D.17557
	movq	-24(%rbp), %rax	# reg, tmp198
	movl	8(%rax), %edx	# reg_22->fld[0].rtuint, D.17559
	movl	-36(%rbp), %eax	# j, j.100
	addl	%edx, %eax	# D.17559, D.17559
	movl	%eax, %edx	# D.17559, D.17550
	movl	word_mode(%rip), %eax	# word_mode, word_mode.101
	movl	%edx, %esi	# D.17550,
	movl	%eax, %edi	# word_mode.101,
	call	gen_rtx_REG	#
	movq	%rbx, %rsi	# D.17557,
	movq	%rax, %rdi	# D.17557,
	call	emit_move_insn	#
	.loc 1 1768 0 discriminator 2
	addl	$1, -36(%rbp)	#, j
.L284:
	.loc 1 1768 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp199
	movslq	%eax, %rdx	# tmp199, D.17551
	movq	%rdx, %rax	# D.17551, tmp200
	salq	$2, %rax	#, tmp200
	addq	%rdx, %rax	# D.17551, tmp200
	salq	$2, %rax	#, tmp200
	addq	%rdx, %rax	# D.17551, tmp200
	salq	$3, %rax	#, tmp201
	movq	%rax, %rdx	# tmp200, D.17551
	movq	-56(%rbp), %rax	# args, tmp202
	addq	%rdx, %rax	# D.17551, D.17552
	movl	144(%rax), %eax	# _78->n_aligned_regs, D.17550
	cmpl	-36(%rbp), %eax	# j, D.17550
	jg	.L285	#,
	jmp	.L281	#
.L283:
	.loc 1 1772 0 is_stmt 1
	cmpl	$0, -32(%rbp)	#, partial
	je	.L286	#,
	.loc 1 1772 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp203
	movslq	%eax, %rdx	# tmp203, D.17551
	movq	%rdx, %rax	# D.17551, tmp204
	salq	$2, %rax	#, tmp204
	addq	%rdx, %rax	# D.17551, tmp204
	salq	$2, %rax	#, tmp204
	addq	%rdx, %rax	# D.17551, tmp204
	salq	$3, %rax	#, tmp205
	movq	%rax, %rdx	# tmp204, D.17551
	movq	-56(%rbp), %rax	# args, tmp206
	addq	%rdx, %rax	# D.17551, D.17552
	movl	56(%rax), %eax	# _97->pass_on_stack, D.17550
	testl	%eax, %eax	# D.17550
	je	.L281	#,
.L286:
	.loc 1 1775 0 is_stmt 1
	movl	-40(%rbp), %eax	# i, tmp207
	movslq	%eax, %rdx	# tmp207, D.17551
	movq	%rdx, %rax	# D.17551, tmp208
	salq	$2, %rax	#, tmp208
	addq	%rdx, %rax	# D.17551, tmp208
	salq	$2, %rax	#, tmp208
	addq	%rdx, %rax	# D.17551, tmp208
	salq	$3, %rax	#, tmp209
	movq	%rax, %rdx	# tmp208, D.17551
	movq	-56(%rbp), %rax	# args, tmp210
	addq	%rdx, %rax	# D.17551, D.17552
	.loc 1 1773 0
	movl	8(%rax), %ebx	# _101->mode, D.17560
	.loc 1 1774 0
	movl	-40(%rbp), %eax	# i, tmp211
	movslq	%eax, %rdx	# tmp211, D.17551
	movq	%rdx, %rax	# D.17551, tmp212
	salq	$2, %rax	#, tmp212
	addq	%rdx, %rax	# D.17551, tmp212
	salq	$2, %rax	#, tmp212
	addq	%rdx, %rax	# D.17551, tmp212
	salq	$3, %rax	#, tmp213
	movq	%rax, %rdx	# tmp212, D.17551
	movq	-56(%rbp), %rax	# args, tmp214
	addq	%rdx, %rax	# D.17551, D.17552
	.loc 1 1773 0
	movq	16(%rax), %rax	# _105->value, D.17557
	movq	%rax, %rdi	# D.17557,
	call	validize_mem	#
	movq	%rax, %rsi	#, D.17557
	movq	-24(%rbp), %rax	# reg, tmp215
	movl	8(%rax), %eax	# reg_22->fld[0].rtuint, D.17559
	movl	-28(%rbp), %edx	# nregs, tmp216
	movl	%ebx, %ecx	# D.17560,
	movl	%eax, %edi	# D.17550,
	call	move_block_to_reg	#
.L281:
	.loc 1 1779 0
	movq	-24(%rbp), %rax	# reg, tmp217
	movzwl	(%rax), %eax	# reg_22->code, D.17556
	cmpw	$39, %ax	#, D.17556
	jne	.L287	#,
	.loc 1 1780 0
	movq	-24(%rbp), %rdx	# reg, tmp218
	movq	-72(%rbp), %rax	# call_fusage, tmp219
	movq	%rdx, %rsi	# tmp218,
	movq	%rax, %rdi	# tmp219,
	call	use_group_regs	#
	jmp	.L271	#
.L287:
	.loc 1 1781 0
	cmpl	$-1, -28(%rbp)	#, nregs
	jne	.L288	#,
	.loc 1 1782 0
	movq	-24(%rbp), %rdx	# reg, tmp220
	movq	-72(%rbp), %rax	# call_fusage, tmp221
	movq	%rdx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	use_reg	#
	jmp	.L271	#
.L288:
	.loc 1 1784 0
	cmpl	$0, -28(%rbp)	#, nregs
	je	.L289	#,
	.loc 1 1784 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# nregs, iftmp.102
	jmp	.L290	#
.L289:
	.loc 1 1784 0 discriminator 2
	movl	$1, %eax	#, iftmp.102
.L290:
	.loc 1 1784 0 discriminator 3
	movq	-24(%rbp), %rdx	# reg, tmp222
	movl	8(%rdx), %edx	# reg_22->fld[0].rtuint, D.17559
	movl	%edx, %esi	# D.17559, D.17550
	movq	-72(%rbp), %rcx	# call_fusage, tmp223
	movl	%eax, %edx	# iftmp.102,
	movq	%rcx, %rdi	# tmp223,
	call	use_regs	#
.L271:
.LBE19:
	.loc 1 1730 0 is_stmt 1
	addl	$1, -40(%rbp)	#, i
.L268:
	.loc 1 1730 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp224
	cmpl	-60(%rbp), %eax	# num_actuals, tmp224
	jl	.L291	#,
	.loc 1 1787 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	load_register_parameters, .-load_register_parameters
	.section	.rodata
	.align 8
.LC16:
	.string	"inlining failed in call to `%s'"
.LC17:
	.string	"called from here"
	.text
	.type	try_to_integrate, @function
try_to_integrate:
.LFB20:
	.loc 1 1800 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# fndecl, fndecl
	movq	%rsi, -80(%rbp)	# actparms, actparms
	movq	%rdx, -88(%rbp)	# target, target
	movl	%ecx, -92(%rbp)	# ignore, ignore
	movq	%r8, -104(%rbp)	# type, type
	movq	%r9, -112(%rbp)	# structure_value_addr, structure_value_addr
	.loc 1 1804 0
	movq	$0, -48(%rbp)	#, old_stack_level
	.loc 1 1805 0
	movl	$0, -56(%rbp)	#, reg_parm_stack_space
	.loc 1 1811 0
	movl	$0, -56(%rbp)	#, reg_parm_stack_space
	.loc 1 1815 0
	call	get_last_insn	#
	movq	%rax, -32(%rbp)	# tmp86, before_call
	.loc 1 1817 0
	movl	$12, %edi	#,
	call	timevar_push	#
	.loc 1 1819 0
	movq	-112(%rbp), %r8	# structure_value_addr, tmp87
	movq	-104(%rbp), %rdi	# type, tmp88
	movl	-92(%rbp), %ecx	# ignore, tmp89
	movq	-88(%rbp), %rdx	# target, tmp90
	movq	-80(%rbp), %rsi	# actparms, tmp91
	movq	-72(%rbp), %rax	# fndecl, tmp92
	movq	%r8, %r9	# tmp87,
	movq	%rdi, %r8	# tmp88,
	movq	%rax, %rdi	# tmp92,
	call	expand_inline_function	#
	movq	%rax, -24(%rbp)	# tmp93, temp
	.loc 1 1823 0
	movl	$12, %edi	#,
	call	timevar_pop	#
	.loc 1 1826 0
	cmpq	$-1, -24(%rbp)	#, temp
	je	.L293	#,
	.loc 1 1828 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.103
	andl	$4096, %eax	#, D.17562
	testl	%eax, %eax	# D.17562
	je	.L294	#,
	.loc 1 1834 0
	movl	-56(%rbp), %eax	# reg_parm_stack_space, tmp97
	subl	$1, %eax	#, tmp96
	movl	%eax, -60(%rbp)	# tmp96, i
	jmp	.L295	#
.L298:
	.loc 1 1835 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.104
	cmpl	%eax, -60(%rbp)	# highest_outgoing_arg_in_use.104, i
	jge	.L296	#,
	.loc 1 1835 0 is_stmt 0 discriminator 1
	movq	stack_usage_map(%rip), %rdx	# stack_usage_map, stack_usage_map.105
	movl	-60(%rbp), %eax	# i, tmp98
	cltq
	addq	%rdx, %rax	# stack_usage_map.105, D.17564
	movzbl	(%rax), %eax	# *_22, D.17565
	testb	%al, %al	# D.17565
	je	.L296	#,
	.loc 1 1836 0 is_stmt 1
	jmp	.L297	#
.L296:
	.loc 1 1834 0
	subl	$1, -60(%rbp)	#, i
.L295:
	.loc 1 1834 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, i
	jns	.L298	#,
.L297:
	.loc 1 1838 0 is_stmt 1
	movl	stack_arg_under_construction(%rip), %eax	# stack_arg_under_construction, stack_arg_under_construction.106
	testl	%eax, %eax	# stack_arg_under_construction.106
	jne	.L299	#,
	.loc 1 1838 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, i
	js	.L294	#,
.L299:
.LBB20:
	.loc 1 1841 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, before_call
	je	.L300	#,
	.loc 1 1841 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# before_call, tmp99
	movq	24(%rax), %rax	# before_call_8->fld[2].rtx, iftmp.107
	jmp	.L301	#
.L300:
	.loc 1 1841 0 discriminator 2
	call	get_insns	#
.L301:
	.loc 1 1840 0 is_stmt 1
	movq	%rax, -16(%rbp)	# iftmp.107, first_insn
	.loc 1 1842 0
	movq	$0, -40(%rbp)	#, insn
	.loc 1 1849 0
	movq	-72(%rbp), %rax	# fndecl, tmp100
	movq	160(%rax), %rax	# fndecl_9(D)->decl.u2.f, D.17566
	movl	76(%rax), %eax	# _30->outgoing_args_size, D.17562
	testl	%eax, %eax	# D.17562
	jne	.L302	#,
	.loc 1 1850 0
	movq	-16(%rbp), %rax	# first_insn, tmp101
	movq	%rax, -40(%rbp)	# tmp101, insn
	jmp	.L303	#
.L305:
	.loc 1 1851 0
	movq	-40(%rbp), %rax	# insn, tmp102
	movzwl	(%rax), %eax	# insn_2->code, D.17567
	cmpw	$34, %ax	#, D.17567
	jne	.L304	#,
	.loc 1 1852 0
	jmp	.L302	#
.L304:
	.loc 1 1850 0
	movq	-40(%rbp), %rax	# insn, tmp103
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp104
	movq	%rax, -40(%rbp)	# tmp104, insn
.L303:
	.loc 1 1850 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L305	#,
.L302:
	.loc 1 1854 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, insn
	je	.L294	#,
.LBB21:
	.loc 1 1873 0
	movq	-72(%rbp), %rax	# fndecl, tmp105
	movq	160(%rax), %rax	# fndecl_9(D)->decl.u2.f, D.17566
	movl	76(%rax), %edx	# _35->outgoing_args_size, D.17562
	movl	-56(%rbp), %eax	# reg_parm_stack_space, tmp109
	addl	%edx, %eax	# D.17562, tmp108
	movl	%eax, -52(%rbp)	# tmp108, adjust
	.loc 1 1876 0
	call	start_sequence	#
	.loc 1 1877 0
	leaq	-48(%rbp), %rax	#, tmp110
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp110,
	movl	$0, %edi	#,
	call	emit_stack_save	#
	.loc 1 1878 0
	movl	-52(%rbp), %eax	# adjust, tmp111
	cltq
	movq	%rax, %rsi	# D.17568,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	$8, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17569,
	call	allocate_dynamic_stack_space	#
	.loc 1 1880 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp112, seq
	.loc 1 1881 0
	call	end_sequence	#
	.loc 1 1882 0
	movq	-16(%rbp), %rdx	# first_insn, tmp113
	movq	-8(%rbp), %rax	# seq, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	emit_insns_before	#
	.loc 1 1883 0
	movq	-48(%rbp), %rax	# old_stack_level, old_stack_level.108
	movl	$0, %edx	#,
	movq	%rax, %rsi	# old_stack_level.108,
	movl	$0, %edi	#,
	call	emit_stack_restore	#
.L294:
.LBE21:
.LBE20:
	.loc 1 1891 0
	movq	-24(%rbp), %rax	# temp, tmp115
	cmpq	-88(%rbp), %rax	# target, tmp115
	je	.L306	#,
	.loc 1 1891 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rdx	# target, tmp116
	movq	-24(%rbp), %rax	# temp, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17562
	je	.L306	#,
	.loc 1 1892 0 is_stmt 1
	movq	-88(%rbp), %rax	# target, D.17561
	jmp	.L309	#
.L306:
	.loc 1 1893 0
	movq	-24(%rbp), %rax	# temp, D.17561
	jmp	.L309	#
.L293:
	.loc 1 1899 0
	movq	-72(%rbp), %rax	# fndecl, tmp118
	movzbl	49(%rax), %eax	# *fndecl_9(D), D.17570
	andl	$8, %eax	#, D.17570
	testb	%al, %al	# D.17570
	je	.L308	#,
	.loc 1 1899 0 is_stmt 0 discriminator 1
	movl	warn_inline(%rip), %eax	# warn_inline, warn_inline.109
	testl	%eax, %eax	# warn_inline.109
	je	.L308	#,
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.110
	testl	%eax, %eax	# flag_no_inline.110
	jne	.L308	#,
	.loc 1 1900 0 is_stmt 1
	movl	optimize(%rip), %eax	# optimize, optimize.111
	testl	%eax, %eax	# optimize.111
	jle	.L308	#,
	.loc 1 1900 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# fndecl, tmp119
	movzbl	17(%rax), %eax	# *fndecl_9(D), D.17570
	andl	$4, %eax	#, D.17570
	testb	%al, %al	# D.17570
	jne	.L308	#,
	.loc 1 1902 0 is_stmt 1
	movq	-72(%rbp), %rax	# fndecl, tmp120
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp120,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1903 0
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L308:
	.loc 1 1905 0
	movq	-72(%rbp), %rax	# fndecl, tmp121
	movq	%rax, %rdi	# tmp121,
	call	mark_addressable	#
	.loc 1 1906 0
	movq	$-1, %rax	#, D.17561
.L309:
	.loc 1 1907 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	try_to_integrate, .-try_to_integrate
	.type	combine_pending_stack_adjustment_and_call, @function
combine_pending_stack_adjustment_and_call:
.LFB21:
	.loc 1 1925 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# unadjusted_args_size, unadjusted_args_size
	movq	%rsi, -32(%rbp)	# args_size, args_size
	movl	%edx, -24(%rbp)	# preferred_unit_stack_boundary, preferred_unit_stack_boundary
	.loc 1 1934 0
	movq	cfun(%rip), %rax	# cfun, cfun.112
	movq	16(%rax), %rax	# cfun.112_2->expr, D.17573
	movl	8(%rax), %edx	# _3->x_stack_pointer_delta, D.17574
	movl	-20(%rbp), %eax	# unadjusted_args_size, tmp83
	addl	%edx, %eax	# D.17574, D.17574
	.loc 1 1935 0
	cltd
	idivl	-24(%rbp)	# preferred_unit_stack_boundary
	movl	%edx, %eax	# tmp84, D.17574
	.loc 1 1934 0
	cltq
	movq	%rax, -8(%rbp)	# tmp86, unadjusted_alignment
	.loc 1 1946 0
	movq	cfun(%rip), %rax	# cfun, cfun.113
	movq	16(%rax), %rax	# cfun.113_10->expr, D.17573
	movl	(%rax), %eax	# _11->x_pending_stack_adjust, D.17574
	cltd
	idivl	-24(%rbp)	# preferred_unit_stack_boundary
	movl	%edx, %eax	# tmp87, D.17574
	cltq
	.loc 1 1945 0
	subq	%rax, -8(%rbp)	# D.17575, unadjusted_alignment
	.loc 1 1947 0
	movq	cfun(%rip), %rax	# cfun, cfun.114
	movq	16(%rax), %rax	# cfun.114_16->expr, D.17573
	movl	(%rax), %eax	# _17->x_pending_stack_adjust, D.17574
	cltq
	movq	%rax, -16(%rbp)	# tmp89, adjustment
	.loc 1 1950 0
	cmpl	$1, -24(%rbp)	#, preferred_unit_stack_boundary
	jle	.L311	#,
	.loc 1 1952 0
	cmpq	$0, -8(%rbp)	#, unadjusted_alignment
	jle	.L312	#,
	.loc 1 1953 0
	movl	-24(%rbp), %eax	# preferred_unit_stack_boundary, tmp90
	cltq
	movq	-8(%rbp), %rdx	# unadjusted_alignment, tmp91
	subq	%rax, %rdx	# D.17575, D.17575
	movq	%rdx, %rax	# D.17575, D.17575
	addq	%rax, -16(%rbp)	# D.17575, adjustment
	jmp	.L311	#
.L312:
	.loc 1 1955 0
	movq	-8(%rbp), %rax	# unadjusted_alignment, tmp92
	addq	%rax, -16(%rbp)	# tmp92, adjustment
.L311:
	.loc 1 1963 0
	movq	cfun(%rip), %rax	# cfun, cfun.115
	movq	16(%rax), %rax	# cfun.115_24->expr, D.17573
	movl	(%rax), %eax	# _25->x_pending_stack_adjust, D.17574
	cltq
	subq	-16(%rbp), %rax	# adjustment, D.17575
	movq	%rax, %rdx	# D.17575, D.17575
	movl	-20(%rbp), %eax	# unadjusted_args_size, tmp93
	cltq
	addq	%rax, %rdx	# D.17575, D.17575
	movq	-32(%rbp), %rax	# args_size, tmp94
	movq	%rdx, (%rax)	# D.17575, args_size_31(D)->constant
	.loc 1 1965 0
	movq	-16(%rbp), %rax	# adjustment, tmp95
	.loc 1 1966 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	combine_pending_stack_adjustment_and_call, .-combine_pending_stack_adjustment_and_call
	.type	check_sibcall_argument_overlap_1, @function
check_sibcall_argument_overlap_1:
.LFB22:
	.loc 1 1977 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 1983 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L315	#,
	.loc 1 1984 0
	movl	$0, %eax	#, D.17576
	jmp	.L316	#
.L315:
	.loc 1 1986 0
	movq	-40(%rbp), %rax	# x, tmp109
	movzwl	(%rax), %eax	# x_7(D)->code, D.17577
	movzwl	%ax, %eax	# D.17577, tmp110
	movl	%eax, -12(%rbp)	# tmp110, code
	.loc 1 1988 0
	cmpl	$66, -12(%rbp)	#, code
	jne	.L317	#,
	.loc 1 1990 0
	movq	-40(%rbp), %rax	# x, tmp111
	movq	8(%rax), %rdx	# x_7(D)->fld[0].rtx, D.17578
	movq	cfun(%rip), %rax	# cfun, cfun.116
	movq	128(%rax), %rax	# cfun.116_12->internal_arg_pointer, D.17578
	cmpq	%rax, %rdx	# D.17578, D.17578
	jne	.L318	#,
	.loc 1 1991 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L319	#
.L318:
	.loc 1 1992 0
	movq	-40(%rbp), %rax	# x, tmp112
	movq	8(%rax), %rax	# x_7(D)->fld[0].rtx, D.17578
	movzwl	(%rax), %eax	# _15->code, D.17577
	cmpw	$75, %ax	#, D.17577
	jne	.L320	#,
	.loc 1 1993 0
	movq	-40(%rbp), %rax	# x, tmp113
	movq	8(%rax), %rax	# x_7(D)->fld[0].rtx, D.17578
	movq	8(%rax), %rdx	# _17->fld[0].rtx, D.17578
	.loc 1 1994 0
	movq	cfun(%rip), %rax	# cfun, cfun.117
	movq	128(%rax), %rax	# cfun.117_19->internal_arg_pointer, D.17578
	.loc 1 1993 0
	cmpq	%rax, %rdx	# D.17578, D.17578
	jne	.L320	#,
	.loc 1 1995 0
	movq	-40(%rbp), %rax	# x, tmp114
	movq	8(%rax), %rax	# x_7(D)->fld[0].rtx, D.17578
	movq	16(%rax), %rax	# _21->fld[1].rtx, D.17578
	movzwl	(%rax), %eax	# _22->code, D.17577
	cmpw	$54, %ax	#, D.17577
	jne	.L320	#,
	.loc 1 1996 0
	movq	-40(%rbp), %rax	# x, tmp115
	movq	8(%rax), %rax	# x_7(D)->fld[0].rtx, D.17578
	movq	16(%rax), %rax	# _24->fld[1].rtx, D.17578
	movq	8(%rax), %rax	# _25->fld[0].rtwint, D.17579
	movl	%eax, -24(%rbp)	# D.17579, i
	jmp	.L319	#
.L320:
	.loc 1 1998 0
	movl	$0, %eax	#, D.17576
	jmp	.L316	#
.L319:
	.loc 1 2004 0
	movl	$0, -16(%rbp)	#, k
	jmp	.L321	#
.L323:
	.loc 1 2005 0
	movl	-24(%rbp), %edx	# i, i.118
	movl	-16(%rbp), %eax	# k, tmp116
	addl	%eax, %edx	# tmp116, D.17581
	movq	stored_args_map(%rip), %rax	# stored_args_map, stored_args_map.119
	movl	(%rax), %eax	# stored_args_map.119_36->n_bits, D.17581
	cmpl	%eax, %edx	# D.17581, D.17581
	jae	.L322	#,
	.loc 1 2006 0
	movq	stored_args_map(%rip), %rax	# stored_args_map, stored_args_map.120
	movl	-24(%rbp), %ecx	# i, i.121
	movl	-16(%rbp), %edx	# k, tmp117
	addl	%ecx, %edx	# i.121, D.17581
	shrl	$6, %edx	#, D.17581
	movl	%edx, %edx	# D.17581, tmp118
	addq	$2, %rdx	#, tmp119
	movq	(%rax,%rdx,8), %rdx	# stored_args_map.120_38->elms, D.17582
	movl	-24(%rbp), %ecx	# i, i.122
	movl	-16(%rbp), %eax	# k, tmp120
	addl	%ecx, %eax	# i.122, D.17581
	andl	$63, %eax	#, D.17576
	movl	%eax, %ecx	# D.17576, tmp141
	shrq	%cl, %rdx	# tmp141, D.17582
	movq	%rdx, %rax	# D.17582, D.17582
	andl	$1, %eax	#, D.17582
	testq	%rax, %rax	# D.17582
	je	.L322	#,
	.loc 1 2007 0
	movl	$1, %eax	#, D.17576
	jmp	.L316	#
.L322:
	.loc 1 2004 0
	addl	$1, -16(%rbp)	#, k
.L321:
	.loc 1 2004 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp121
	movzbl	2(%rax), %eax	# x_7(D)->mode, D.17580
	movzbl	%al, %eax	# D.17580, D.17576
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17580
	movzbl	%al, %eax	# D.17580, D.17581
	cmpl	-16(%rbp), %eax	# k, D.17581
	ja	.L323	#,
	.loc 1 2009 0 is_stmt 1
	movl	$0, %eax	#, D.17576
	jmp	.L316	#
.L317:
	.loc 1 2013 0
	movl	-12(%rbp), %eax	# code, code.123
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp124
	movq	%rax, -8(%rbp)	# tmp124, fmt
	.loc 1 2014 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L324	#
.L330:
	.loc 1 2016 0
	movq	-8(%rbp), %rax	# fmt, tmp125
	movzbl	(%rax), %eax	# *fmt_5, D.17583
	cmpb	$101, %al	#, D.17583
	jne	.L325	#,
	.loc 1 2018 0
	movq	-40(%rbp), %rax	# x, tmp126
	movl	-24(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, tmp127
	movq	8(%rax,%rdx,8), %rax	# x_7(D)->fld[i_2].rtx, D.17578
	movq	%rax, %rdi	# D.17578,
	call	check_sibcall_argument_overlap_1	#
	testl	%eax, %eax	# D.17576
	je	.L326	#,
	.loc 1 2019 0
	movl	$1, %eax	#, D.17576
	jmp	.L316	#
.L325:
	.loc 1 2021 0
	movq	-8(%rbp), %rax	# fmt, tmp129
	movzbl	(%rax), %eax	# *fmt_5, D.17583
	cmpb	$69, %al	#, D.17583
	jne	.L326	#,
	.loc 1 2023 0
	movl	$0, -20(%rbp)	#, j
	jmp	.L327	#
.L329:
	.loc 1 2024 0
	movq	-40(%rbp), %rax	# x, tmp130
	movl	-24(%rbp), %edx	# i, tmp132
	movslq	%edx, %rdx	# tmp132, tmp131
	movq	8(%rax,%rdx,8), %rax	# x_7(D)->fld[i_2].rtvec, D.17584
	movl	-20(%rbp), %edx	# j, tmp134
	movslq	%edx, %rdx	# tmp134, tmp133
	movq	8(%rax,%rdx,8), %rax	# _66->elem, D.17578
	movq	%rax, %rdi	# D.17578,
	call	check_sibcall_argument_overlap_1	#
	testl	%eax, %eax	# D.17576
	je	.L328	#,
	.loc 1 2025 0
	movl	$1, %eax	#, D.17576
	jmp	.L316	#
.L328:
	.loc 1 2023 0
	addl	$1, -20(%rbp)	#, j
.L327:
	.loc 1 2023 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp135
	movl	-24(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, tmp136
	movq	8(%rax,%rdx,8), %rax	# x_7(D)->fld[i_2].rtvec, D.17584
	movl	(%rax), %eax	# _64->num_elem, D.17576
	cmpl	-20(%rbp), %eax	# j, D.17576
	jg	.L329	#,
.L326:
	.loc 1 2014 0 is_stmt 1
	addl	$1, -24(%rbp)	#, i
	addq	$1, -8(%rbp)	#, fmt
.L324:
	.loc 1 2014 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# code, code.124
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.17580
	movzbl	%al, %eax	# D.17580, D.17576
	cmpl	-24(%rbp), %eax	# i, D.17576
	jg	.L330	#,
	.loc 1 2028 0 is_stmt 1
	movl	$0, %eax	#, D.17576
.L316:
	.loc 1 2029 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	check_sibcall_argument_overlap_1, .-check_sibcall_argument_overlap_1
	.type	check_sibcall_argument_overlap, @function
check_sibcall_argument_overlap:
.LFB23:
	.loc 1 2041 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# arg, arg
	.loc 1 2044 0
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L332	#,
	.loc 1 2045 0
	call	get_insns	#
	movq	%rax, -24(%rbp)	# tmp80, insn
	.loc 1 2049 0
	jmp	.L334	#
.L332:
	.loc 1 2047 0
	movq	-24(%rbp), %rax	# insn, tmp81
	movq	24(%rax), %rax	# insn_4(D)->fld[2].rtx, tmp82
	movq	%rax, -24(%rbp)	# tmp82, insn
	.loc 1 2049 0
	jmp	.L334	#
.L337:
	.loc 1 2050 0
	movq	-24(%rbp), %rax	# insn, tmp83
	movzwl	(%rax), %eax	# insn_2->code, D.17585
	movzwl	%ax, %eax	# D.17585, D.17586
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17587
	cmpb	$105, %al	#, D.17587
	jne	.L335	#,
	.loc 1 2051 0
	movq	-24(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.17588
	movq	%rax, %rdi	# D.17588,
	call	check_sibcall_argument_overlap_1	#
	testl	%eax, %eax	# D.17586
	je	.L335	#,
	.loc 1 2052 0
	jmp	.L336	#
.L335:
	.loc 1 2049 0
	movq	-24(%rbp), %rax	# insn, tmp86
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp87
	movq	%rax, -24(%rbp)	# tmp87, insn
.L334:
	.loc 1 2049 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L337	#,
.L336:
	.loc 1 2057 0 is_stmt 1
	movq	-32(%rbp), %rax	# arg, tmp88
	movq	80(%rax), %rax	# arg_13(D)->slot_offset.constant, D.17589
	movl	%eax, -8(%rbp)	# D.17589, low
	.loc 1 2060 0
	movq	-32(%rbp), %rax	# arg, tmp89
	movq	96(%rax), %rax	# arg_13(D)->size.constant, D.17589
	movl	%eax, %edx	# D.17589, D.17590
	movl	-8(%rbp), %eax	# low, low.125
	addl	%edx, %eax	# D.17590, D.17590
	movl	%eax, -4(%rbp)	# D.17590, high
	jmp	.L338	#
.L339:
	.loc 1 2061 0 discriminator 2
	movq	stored_args_map(%rip), %rdx	# stored_args_map, stored_args_map.126
	movl	-8(%rbp), %eax	# low, low.127
	shrl	$6, %eax	#, D.17591
	movq	stored_args_map(%rip), %rcx	# stored_args_map, stored_args_map.128
	movl	%eax, %esi	# D.17591, tmp90
	addq	$2, %rsi	#, tmp91
	movq	(%rcx,%rsi,8), %rsi	# stored_args_map.128_24->elms, D.17592
	movl	-8(%rbp), %ecx	# low, tmp92
	andl	$63, %ecx	#, D.17586
	movl	$1, %edi	#, tmp93
	salq	%cl, %rdi	# D.17586, D.17592
	movq	%rdi, %rcx	# D.17592, D.17592
	orq	%rsi, %rcx	# D.17592, D.17592
	movl	%eax, %eax	# D.17591, tmp94
	addq	$2, %rax	#, tmp95
	movq	%rcx, (%rdx,%rax,8)	# D.17592, stored_args_map.126_21->elms
	.loc 1 2060 0 discriminator 2
	addl	$1, -8(%rbp)	#, low
.L338:
	.loc 1 2060 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# low, tmp96
	cmpl	-4(%rbp), %eax	# high, tmp96
	jl	.L339	#,
	.loc 1 2062 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, insn
	setne	%al	#, D.17593
	movzbl	%al, %eax	# D.17593, D.17586
	.loc 1 2063 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	check_sibcall_argument_overlap, .-check_sibcall_argument_overlap
	.section	.rodata
.LC18:
	.string	"can't inline call to `%s'"
	.align 8
.LC19:
	.string	"function call has aggregate value"
.LC20:
	.string	"__bb_fork_func"
	.text
	.globl	expand_call
	.type	expand_call, @function
expand_call:
.LFB24:
	.loc 1 2076 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$584, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -520(%rbp)	# exp, exp
	movq	%rsi, -528(%rbp)	# target, target
	movl	%edx, -532(%rbp)	# ignore, ignore
	.loc 1 2081 0
	movq	-520(%rbp), %rax	# exp, tmp696
	movq	40(%rax), %rax	# exp_89(D)->exp.operands, tmp697
	movq	%rax, -376(%rbp)	# tmp697, actparms
	.loc 1 2085 0
	movq	$0, -368(%rbp)	#, tail_recursion_insns
	.loc 1 2087 0
	movq	$0, -360(%rbp)	#, normal_call_insns
	.loc 1 2089 0
	movq	$0, -352(%rbp)	#, tail_call_insns
	.loc 1 2094 0
	movq	$0, -272(%rbp)	#, fndecl
	.loc 1 2096 0
	movl	$1, -488(%rbp)	#, try_tail_call
	.loc 1 2097 0
	movl	$1, -484(%rbp)	#, try_tail_recursion
	.loc 1 2105 0
	movq	$0, -328(%rbp)	#, structure_value_addr
	.loc 1 2109 0
	movl	$0, -476(%rbp)	#, structure_value_addr_parm
	.loc 1 2113 0
	movq	$0, -320(%rbp)	#, struct_value_size
	.loc 1 2116 0
	movl	$0, -432(%rbp)	#, pcc_struct_value
	.loc 1 2146 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.130
	andl	$2048, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L342	#,
	.loc 1 2146 0 is_stmt 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.131
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L343	#,
.L342:
	.loc 1 2146 0 discriminator 1
	movl	$1, %eax	#, iftmp.129
	jmp	.L344	#
.L343:
	.loc 1 2146 0 discriminator 3
	movl	$0, %eax	#, iftmp.129
.L344:
	.loc 1 2146 0 discriminator 4
	movl	%eax, -508(%rbp)	# iftmp.129, must_preallocate
	.loc 1 2149 0 is_stmt 1 discriminator 4
	movl	$0, -428(%rbp)	#, reg_parm_stack_space
	.loc 1 2153 0 discriminator 4
	movq	$0, -312(%rbp)	#, argblock
	.loc 1 2156 0 discriminator 4
	movl	$0, -504(%rbp)	#, flags
	.loc 1 2158 0 discriminator 4
	movl	$0, -468(%rbp)	#, is_integrable
	.loc 1 2162 0 discriminator 4
	movl	$-1, -500(%rbp)	#, low_to_save
	.loc 1 2163 0 discriminator 4
	movq	$0, -304(%rbp)	#, save_area
	.loc 1 2166 0 discriminator 4
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, tmp698
	movl	%eax, -424(%rbp)	# tmp698, initial_highest_arg_in_use
	.loc 1 2167 0 discriminator 4
	movq	stack_usage_map(%rip), %rax	# stack_usage_map, tmp699
	movq	%rax, -264(%rbp)	# tmp699, initial_stack_usage_map
	.loc 1 2168 0 discriminator 4
	movl	$0, -464(%rbp)	#, old_stack_arg_under_construction
	.loc 1 2170 0 discriminator 4
	movq	$0, -392(%rbp)	#, old_stack_level
	.loc 1 2171 0 discriminator 4
	movl	$0, -492(%rbp)	#, old_pending_adj
	.loc 1 2172 0 discriminator 4
	movq	cfun(%rip), %rax	# cfun, cfun.132
	movq	16(%rax), %rax	# cfun.132_114->expr, D.17596
	movl	4(%rax), %eax	# _115->x_inhibit_defer_pop, tmp700
	movl	%eax, -420(%rbp)	# tmp700, old_inhibit_defer_pop
	.loc 1 2175 0 discriminator 4
	movq	-520(%rbp), %rax	# exp, tmp701
	movq	32(%rax), %rax	# exp_89(D)->exp.operands, tmp702
	movq	%rax, -296(%rbp)	# tmp702, p
	.loc 1 2183 0 discriminator 4
	movq	-520(%rbp), %rax	# exp, tmp703
	movzbl	18(%rax), %eax	# *exp_89(D), D.17597
	andl	$2, %eax	#, D.17597
	testb	%al, %al	# D.17597
	je	.L345	#,
	.loc 1 2184 0
	movl	-504(%rbp), %eax	# flags, flags.133
	orl	$16, %eax	#, flags.134
	movl	%eax, -504(%rbp)	# flags.134, flags
.L345:
	.loc 1 2189 0
	movq	-520(%rbp), %rax	# exp, tmp704
	movq	%rax, %rdi	# tmp704,
	call	get_callee_fndecl	#
	movq	%rax, -272(%rbp)	# tmp705, fndecl
	.loc 1 2190 0
	cmpq	$0, -272(%rbp)	#, fndecl
	je	.L346	#,
	.loc 1 2192 0
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.135
	testl	%eax, %eax	# flag_no_inline.135
	jne	.L347	#,
	.loc 1 2193 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.136
	cmpq	%rax, -272(%rbp)	# current_function_decl.136, fndecl
	je	.L347	#,
	.loc 1 2194 0
	movq	-272(%rbp), %rax	# fndecl, tmp706
	movzbl	49(%rax), %eax	# *fndecl_122, D.17597
	andl	$8, %eax	#, D.17597
	testb	%al, %al	# D.17597
	je	.L347	#,
	.loc 1 2195 0
	movq	-272(%rbp), %rax	# fndecl, tmp707
	movq	160(%rax), %rax	# fndecl_122->decl.u2.f, D.17598
	testq	%rax, %rax	# D.17598
	je	.L347	#,
	.loc 1 2196 0
	movq	-272(%rbp), %rax	# fndecl, tmp708
	movq	160(%rax), %rax	# fndecl_122->decl.u2.f, D.17598
	movl	352(%rax), %eax	# _128->inlinable, D.17595
	testl	%eax, %eax	# D.17595
	je	.L347	#,
	.loc 1 2197 0
	movl	$1, -468(%rbp)	#, is_integrable
	jmp	.L348	#
.L347:
	.loc 1 2198 0
	movq	-272(%rbp), %rax	# fndecl, tmp709
	movzbl	17(%rax), %eax	# *fndecl_122, D.17597
	andl	$4, %eax	#, D.17597
	testb	%al, %al	# D.17597
	jne	.L348	#,
	.loc 1 2205 0
	movq	-272(%rbp), %rax	# fndecl, tmp710
	movzbl	49(%rax), %eax	# *fndecl_122, D.17597
	andl	$8, %eax	#, D.17597
	testb	%al, %al	# D.17597
	je	.L349	#,
	.loc 1 2205 0 is_stmt 0 discriminator 1
	movl	warn_inline(%rip), %eax	# warn_inline, warn_inline.137
	testl	%eax, %eax	# warn_inline.137
	je	.L349	#,
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.138
	testl	%eax, %eax	# flag_no_inline.138
	jne	.L349	#,
	.loc 1 2206 0 is_stmt 1
	movl	optimize(%rip), %eax	# optimize, optimize.139
	testl	%eax, %eax	# optimize.139
	jle	.L349	#,
	.loc 1 2208 0
	movq	-272(%rbp), %rax	# fndecl, tmp711
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp711,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 2209 0
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L349:
	.loc 1 2211 0
	movq	-272(%rbp), %rax	# fndecl, tmp712
	movq	%rax, %rdi	# tmp712,
	call	mark_addressable	#
.L348:
	.loc 1 2214 0
	movq	-272(%rbp), %rax	# fndecl, tmp713
	movq	%rax, %rdi	# tmp713,
	call	flags_from_decl_or_type	#
	movl	-504(%rbp), %edx	# flags, flags.140
	orl	%edx, %eax	# flags.140, flags.141
	movl	%eax, -504(%rbp)	# flags.141, flags
	jmp	.L350	#
.L346:
	.loc 1 2220 0
	movq	-296(%rbp), %rax	# p, tmp714
	movq	8(%rax), %rax	# p_117->common.type, D.17599
	movq	8(%rax), %rax	# _141->common.type, D.17599
	movq	%rax, %rdi	# D.17599,
	call	flags_from_decl_or_type	#
	movl	-504(%rbp), %edx	# flags, flags.142
	orl	%edx, %eax	# flags.142, flags.143
	movl	%eax, -504(%rbp)	# flags.143, flags
.L350:
	.loc 1 2226 0
	movl	$0, -428(%rbp)	#, reg_parm_stack_space
	.loc 1 2231 0
	cmpl	$0, -428(%rbp)	#, reg_parm_stack_space
	jle	.L351	#,
	.loc 1 2231 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.144
	andl	$2048, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L351	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.145
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L351	#,
	.loc 1 2232 0 is_stmt 1
	movl	$1, -508(%rbp)	#, must_preallocate
.L351:
	.loc 1 2237 0
	movl	warn_aggregate_return(%rip), %eax	# warn_aggregate_return, warn_aggregate_return.146
	testl	%eax, %eax	# warn_aggregate_return.146
	je	.L352	#,
	.loc 1 2237 0 is_stmt 0 discriminator 1
	movq	-520(%rbp), %rax	# exp, tmp715
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	16(%rax), %eax	# _152->common.code, D.17597
	cmpb	$18, %al	#, D.17597
	je	.L353	#,
	movq	-520(%rbp), %rax	# exp, tmp716
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	16(%rax), %eax	# _154->common.code, D.17597
	cmpb	$20, %al	#, D.17597
	je	.L353	#,
	movq	-520(%rbp), %rax	# exp, tmp717
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	16(%rax), %eax	# _156->common.code, D.17597
	cmpb	$21, %al	#, D.17597
	je	.L353	#,
	movq	-520(%rbp), %rax	# exp, tmp718
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	16(%rax), %eax	# _158->common.code, D.17597
	cmpb	$22, %al	#, D.17597
	je	.L353	#,
	movq	-520(%rbp), %rax	# exp, tmp719
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	16(%rax), %eax	# _160->common.code, D.17597
	cmpb	$19, %al	#, D.17597
	jne	.L352	#,
.L353:
	.loc 1 2238 0 is_stmt 1
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L352:
	.loc 1 2243 0
	movq	-520(%rbp), %rax	# exp, tmp720
	movq	%rax, %rdi	# tmp720,
	call	aggregate_value_p	#
	testl	%eax, %eax	# D.17595
	je	.L354	#,
	.loc 1 2246 0
	movl	-504(%rbp), %eax	# flags, flags.147
	andl	$-4610, %eax	#, flags.148
	movl	%eax, -504(%rbp)	# flags.148, flags
	.loc 1 2263 0
	movq	-520(%rbp), %rax	# exp, tmp721
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movq	%rax, %rdi	# D.17599,
	call	int_size_in_bytes	#
	movq	%rax, -320(%rbp)	# tmp722, struct_value_size
	.loc 1 2265 0
	cmpq	$0, -528(%rbp)	#, target
	je	.L355	#,
	.loc 1 2265 0 is_stmt 0 discriminator 1
	movq	-528(%rbp), %rax	# target, tmp723
	movzwl	(%rax), %eax	# target_163(D)->code, D.17600
	cmpw	$66, %ax	#, D.17600
	jne	.L355	#,
	.loc 1 2266 0 is_stmt 1
	movq	-528(%rbp), %rax	# target, tmp724
	movq	8(%rax), %rax	# target_163(D)->fld[0].rtx, tmp725
	movq	%rax, -328(%rbp)	# tmp725, structure_value_addr
	jmp	.L354	#
.L355:
.LBB22:
	.loc 1 2272 0
	movq	-520(%rbp), %rax	# exp, tmp726
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17599,
	call	assign_temp	#
	movq	%rax, -256(%rbp)	# tmp727, d
	.loc 1 2274 0
	movq	-256(%rbp), %rax	# d, tmp728
	movq	%rax, %rdi	# tmp728,
	call	mark_temp_addr_taken	#
	.loc 1 2275 0
	movq	-256(%rbp), %rax	# d, tmp729
	movq	8(%rax), %rax	# d_171->fld[0].rtx, tmp730
	movq	%rax, -328(%rbp)	# tmp730, structure_value_addr
	.loc 1 2276 0
	movq	$0, -528(%rbp)	#, target
.L354:
.LBE22:
	.loc 1 2284 0
	cmpl	$0, -468(%rbp)	#, is_integrable
	je	.L356	#,
.LBB23:
	.loc 1 2286 0
	movq	-520(%rbp), %rax	# exp, tmp731
	movq	8(%rax), %rdi	# exp_89(D)->common.type, D.17599
	movq	-328(%rbp), %r8	# structure_value_addr, tmp732
	movl	-532(%rbp), %ecx	# ignore, tmp733
	movq	-528(%rbp), %rdx	# target, tmp734
	movq	-376(%rbp), %rsi	# actparms, tmp735
	movq	-272(%rbp), %rax	# fndecl, tmp736
	movq	%r8, %r9	# tmp732,
	movq	%rdi, %r8	# D.17599,
	movq	%rax, %rdi	# tmp736,
	call	try_to_integrate	#
	movq	%rax, -248(%rbp)	# tmp737, temp
	.loc 1 2289 0
	cmpq	$-1, -248(%rbp)	#, temp
	je	.L356	#,
	.loc 1 2290 0
	movq	-248(%rbp), %rax	# temp, D.17594
	jmp	.L519	#
.L356:
.LBE23:
	.loc 1 2294 0
	movl	ix86_preferred_stack_boundary(%rip), %eax	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.149
	cltq
	movq	%rax, -240(%rbp)	# tmp738, preferred_stack_boundary
	.loc 1 2297 0
	movq	-520(%rbp), %rax	# exp, tmp739
	movq	32(%rax), %rax	# exp_89(D)->exp.operands, D.17599
	movq	8(%rax), %rax	# _180->common.type, tmp740
	movq	%rax, -232(%rbp)	# tmp740, funtype
	.loc 1 2298 0
	movq	-232(%rbp), %rax	# funtype, tmp741
	movzbl	16(%rax), %eax	# funtype_181->common.code, D.17597
	cmpb	$13, %al	#, D.17597
	je	.L358	#,
	.loc 1 2298 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# funtype, tmp742
	movzbl	16(%rax), %eax	# funtype_181->common.code, D.17597
	cmpb	$15, %al	#, D.17597
	je	.L358	#,
	.loc 1 2299 0 is_stmt 1
	movl	$__FUNCTION__.13040, %edx	#,
	movl	$2299, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L358:
	.loc 1 2300 0
	movq	-232(%rbp), %rax	# funtype, tmp743
	movq	8(%rax), %rax	# funtype_181->common.type, tmp744
	movq	%rax, -232(%rbp)	# tmp744, funtype
	.loc 1 2304 0
	movl	-504(%rbp), %edx	# flags, flags.150
	movq	-272(%rbp), %rax	# fndecl, tmp745
	movl	%edx, %esi	# flags.150,
	movq	%rax, %rdi	# tmp745,
	call	special_function_p	#
	movl	-504(%rbp), %edx	# flags, flags.151
	orl	%edx, %eax	# flags.151, flags.152
	movl	%eax, -504(%rbp)	# flags.152, flags
	.loc 1 2306 0
	movl	-504(%rbp), %eax	# flags, flags.153
	andl	$8, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L359	#,
	.loc 1 2307 0
	movq	cfun(%rip), %rax	# cfun, cfun.154
	movzbl	424(%rax), %edx	# cfun.154_191->calls_alloca, tmp748
	orl	$64, %edx	#, tmp749
	movb	%dl, 424(%rax)	# tmp749, cfun.154_191->calls_alloca
.L359:
	.loc 1 2311 0
	cmpq	$0, -328(%rbp)	#, structure_value_addr
	je	.L360	#,
	.loc 1 2311 0 is_stmt 0 discriminator 1
	movq	struct_value_rtx(%rip), %rax	# struct_value_rtx, struct_value_rtx.155
	testq	%rax, %rax	# struct_value_rtx.155
	jne	.L360	#,
.LBB24:
	.loc 1 2318 0 is_stmt 1
	movq	-328(%rbp), %rax	# structure_value_addr, tmp750
	movzwl	(%rax), %eax	# structure_value_addr_36->code, D.17600
	.loc 1 2323 0
	cmpw	$61, %ax	#, D.17600
	jne	.L361	#,
	.loc 1 2319 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.157
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L362	#,
	.loc 1 2320 0
	movl	stack_arg_under_construction(%rip), %eax	# stack_arg_under_construction, stack_arg_under_construction.158
	testl	%eax, %eax	# stack_arg_under_construction.158
	je	.L362	#,
	.loc 1 2321 0
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.17601
	cmpq	-328(%rbp), %rax	# structure_value_addr, D.17601
	jne	.L362	#,
.L361:
	.loc 1 2323 0 discriminator 1
	movq	-328(%rbp), %rax	# structure_value_addr, tmp751
	movq	%rax, %rdi	# tmp751,
	call	copy_addr_to_reg	#
	jmp	.L363	#
.L362:
	.loc 1 2323 0 is_stmt 0
	movq	-328(%rbp), %rax	# structure_value_addr, iftmp.156
.L363:
	.loc 1 2318 0 is_stmt 1
	movq	%rax, -224(%rbp)	# iftmp.156, temp
	.loc 1 2326 0
	movq	-232(%rbp), %rax	# funtype, tmp752
	movq	8(%rax), %rax	# funtype_184->common.type, D.17599
	movq	%rax, %rdi	# D.17599,
	call	build_pointer_type	#
	movq	-224(%rbp), %rdx	# temp, tmp753
	movq	%rdx, %rsi	# tmp753,
	movq	%rax, %rdi	# D.17599,
	call	make_tree	#
	movq	%rax, %rcx	#, D.17599
	movq	global_trees(%rip), %rax	# global_trees, D.17599
	movq	-376(%rbp), %rdx	# actparms, tmp754
	movq	%rcx, %rsi	# D.17599,
	movq	%rax, %rdi	# D.17599,
	call	tree_cons	#
	movq	%rax, -376(%rbp)	# tmp755, actparms
	.loc 1 2330 0
	movl	$1, -476(%rbp)	#, structure_value_addr_parm
.L360:
.LBE24:
	.loc 1 2334 0
	movq	-376(%rbp), %rax	# actparms, tmp756
	movq	%rax, -296(%rbp)	# tmp756, p
	movl	$0, -472(%rbp)	#, num_actuals
	jmp	.L364	#
.L365:
	.loc 1 2335 0 discriminator 2
	addl	$1, -472(%rbp)	#, num_actuals
	.loc 1 2334 0 discriminator 2
	movq	-296(%rbp), %rax	# p, tmp757
	movq	(%rax), %rax	# p_54->common.chain, tmp758
	movq	%rax, -296(%rbp)	# tmp758, p
.L364:
	.loc 1 2334 0 is_stmt 0 discriminator 1
	cmpq	$0, -296(%rbp)	#, p
	jne	.L365	#,
	.loc 1 2364 0 is_stmt 1
	movl	-472(%rbp), %eax	# num_actuals, tmp759
	movl	%eax, -416(%rbp)	# tmp759, n_named_args
	.loc 1 2372 0
	movq	-232(%rbp), %rcx	# funtype, tmp760
	leaq	-48(%rbp), %rax	#, tmp761
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp760,
	movq	%rax, %rdi	# tmp761,
	call	init_cumulative_args	#
	.loc 1 2375 0
	movl	-472(%rbp), %eax	# num_actuals, tmp762
	movslq	%eax, %rdx	# tmp762, D.17602
	movq	%rdx, %rax	# D.17602, tmp763
	salq	$2, %rax	#, tmp763
	addq	%rdx, %rax	# D.17602, tmp763
	salq	$2, %rax	#, tmp763
	addq	%rdx, %rax	# D.17602, tmp763
	salq	$3, %rax	#, tmp764
	leaq	15(%rax), %rdx	#, tmp765
	movl	$16, %eax	#, tmp1260
	subq	$1, %rax	#, tmp766
	addq	%rdx, %rax	# tmp765, tmp767
	movl	$16, %ebx	#, tmp1261
	movl	$0, %edx	#, tmp770
	divq	%rbx	# tmp1261
	imulq	$16, %rax, %rax	#, tmp769, tmp771
	subq	%rax, %rsp	# tmp771,
	leaq	48(%rsp), %rax	#, tmp772
	addq	$15, %rax	#, tmp773
	shrq	$4, %rax	#, tmp774
	salq	$4, %rax	#, tmp775
	movq	%rax, -216(%rbp)	# tmp775, args
	.loc 1 2376 0
	movl	-472(%rbp), %eax	# num_actuals, tmp776
	movslq	%eax, %rdx	# tmp776, D.17602
	movq	%rdx, %rax	# D.17602, tmp777
	salq	$2, %rax	#, tmp777
	addq	%rdx, %rax	# D.17602, tmp777
	salq	$2, %rax	#, tmp777
	addq	%rdx, %rax	# D.17602, tmp777
	salq	$3, %rax	#, tmp778
	movq	%rax, %rdx	# tmp777, D.17602
	movq	-216(%rbp), %rax	# args, tmp779
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp779,
	call	memset	#
	.loc 1 2380 0
	movq	-272(%rbp), %r9	# fndecl, tmp780
	movq	-376(%rbp), %r8	# actparms, tmp781
	movl	-416(%rbp), %ecx	# n_named_args, tmp782
	leaq	-80(%rbp), %rdx	#, tmp783
	movq	-216(%rbp), %rsi	# args, tmp784
	movl	-472(%rbp), %eax	# num_actuals, tmp785
	leaq	-504(%rbp), %rdi	#, tmp786
	movq	%rdi, 40(%rsp)	# tmp786,
	leaq	-508(%rbp), %rdi	#, tmp787
	movq	%rdi, 32(%rsp)	# tmp787,
	leaq	-492(%rbp), %rdi	#, tmp788
	movq	%rdi, 24(%rsp)	# tmp788,
	leaq	-392(%rbp), %rdi	#, tmp789
	movq	%rdi, 16(%rsp)	# tmp789,
	movl	-428(%rbp), %edi	# reg_parm_stack_space, tmp790
	movl	%edi, 8(%rsp)	# tmp790,
	leaq	-48(%rbp), %rdi	#, tmp791
	movq	%rdi, (%rsp)	# tmp791,
	movl	%eax, %edi	# tmp785,
	call	initialize_argument_information	#
	.loc 1 2386 0
	movq	-72(%rbp), %rax	# args_size.var, D.17599
	testq	%rax, %rax	# D.17599
	je	.L366	#,
	.loc 1 2393 0
	movl	-504(%rbp), %eax	# flags, flags.159
	andb	$239, %ah	#, flags.160
	movl	%eax, -504(%rbp)	# flags.160, flags
	.loc 1 2394 0
	movl	$1, -508(%rbp)	#, must_preallocate
.L366:
	.loc 1 2398 0
	movl	-508(%rbp), %eax	# must_preallocate, must_preallocate.161
	leaq	-80(%rbp), %rcx	#, tmp792
	movq	-216(%rbp), %rdx	# args, tmp793
	movl	-472(%rbp), %esi	# num_actuals, tmp794
	movl	%eax, %edi	# must_preallocate.161,
	call	finalize_must_preallocate	#
	movl	%eax, -508(%rbp)	# must_preallocate.162, must_preallocate
	.loc 1 2406 0
	cmpq	$0, -328(%rbp)	#, structure_value_addr
	je	.L367	#,
	.loc 1 2407 0
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.17601
	movq	-328(%rbp), %rdx	# structure_value_addr, tmp795
	movq	%rdx, %rsi	# tmp795,
	movq	%rax, %rdi	# D.17601,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.17595
	jne	.L368	#,
	.loc 1 2408 0
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.17601
	movq	-328(%rbp), %rdx	# structure_value_addr, tmp796
	movq	%rdx, %rsi	# tmp796,
	movq	%rax, %rdi	# D.17601,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.17595
	je	.L367	#,
.L368:
	.loc 1 2410 0
	movq	-72(%rbp), %rax	# args_size.var, D.17599
	testq	%rax, %rax	# D.17599
	jne	.L369	#,
	.loc 1 2411 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.163
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L367	#,
	.loc 1 2411 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# args_size.constant, D.17603
	testq	%rax, %rax	# D.17603
	je	.L367	#,
.L369:
	.loc 1 2412 0 is_stmt 1
	movq	-328(%rbp), %rax	# structure_value_addr, tmp797
	movq	%rax, %rdi	# tmp797,
	call	copy_to_reg	#
	movq	%rax, -328(%rbp)	# tmp798, structure_value_addr
.L367:
	.loc 1 2425 0
	movl	currently_expanding_call.12993(%rip), %eax	# currently_expanding_call, currently_expanding_call.164
	leal	1(%rax), %edx	#, currently_expanding_call.166
	movl	%edx, currently_expanding_call.12993(%rip)	# currently_expanding_call.166, currently_expanding_call
	testl	%eax, %eax	# currently_expanding_call.165
	jne	.L370	#,
	.loc 1 2426 0
	movl	flag_optimize_sibling_calls(%rip), %eax	# flag_optimize_sibling_calls, flag_optimize_sibling_calls.167
	testl	%eax, %eax	# flag_optimize_sibling_calls.167
	je	.L370	#,
	.loc 1 2427 0
	movl	rtx_equal_function_value_matters(%rip), %eax	# rtx_equal_function_value_matters, rtx_equal_function_value_matters.168
	testl	%eax, %eax	# rtx_equal_function_value_matters.168
	je	.L370	#,
	.loc 1 2428 0
	movl	$1, %edi	#,
	call	any_pending_cleanups	#
	testl	%eax, %eax	# D.17595
	jne	.L370	#,
	.loc 1 2429 0
	movq	-72(%rbp), %rax	# args_size.var, D.17599
	testq	%rax, %rax	# D.17599
	je	.L371	#,
.L370:
	.loc 1 2430 0
	movl	$0, -484(%rbp)	#, try_tail_recursion
	movl	-484(%rbp), %eax	# try_tail_recursion, tmp799
	movl	%eax, -488(%rbp)	# tmp799, try_tail_call
.L371:
	.loc 1 2433 0
	cmpl	$0, -484(%rbp)	#, try_tail_recursion
	je	.L372	#,
	.loc 1 2434 0
	movq	-520(%rbp), %rax	# exp, tmp800
	movq	32(%rax), %rax	# exp_89(D)->exp.operands, D.17599
	movzbl	16(%rax), %eax	# _240->common.code, D.17597
	cmpb	$121, %al	#, D.17597
	jne	.L372	#,
	.loc 1 2435 0
	movq	-520(%rbp), %rax	# exp, tmp801
	movq	32(%rax), %rax	# exp_89(D)->exp.operands, D.17599
	movq	32(%rax), %rdx	# _242->exp.operands, D.17599
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.169
	cmpq	%rax, %rdx	# current_function_decl.169, D.17599
	je	.L373	#,
.L372:
	.loc 1 2436 0
	movl	$0, -484(%rbp)	#, try_tail_recursion
.L373:
	.loc 1 2439 0
	cmpl	$0, -488(%rbp)	#, try_tail_call
	je	.L374	#,
	.loc 1 2450 0
	cmpq	$0, -328(%rbp)	#, structure_value_addr
	jne	.L374	#,
	.loc 1 2458 0
	cmpq	$0, -272(%rbp)	#, fndecl
	je	.L374	#,
	.loc 1 2459 0
	movl	-504(%rbp), %eax	# flags, flags.170
	andl	$96, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L374	#,
	.loc 1 2460 0
	movq	-272(%rbp), %rax	# fndecl, tmp802
	movzbl	17(%rax), %eax	# *fndecl_122, D.17597
	andl	$8, %eax	#, D.17597
	testb	%al, %al	# D.17597
	jne	.L374	#,
	.loc 1 2461 0
	cmpq	$0, -272(%rbp)	#, fndecl
	je	.L374	#,
	.loc 1 2461 0 is_stmt 0 discriminator 1
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.171
	testl	%eax, %eax	# flag_pic.171
	je	.L375	#,
	movq	-272(%rbp), %rax	# fndecl, tmp803
	movzbl	18(%rax), %eax	# *fndecl_122, D.17597
	andl	$8, %eax	#, D.17597
	testb	%al, %al	# D.17597
	jne	.L374	#,
.L375:
	.loc 1 2461 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.172
	andl	$32, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L376	#,
	.loc 1 2461 0 discriminator 1
	movq	-272(%rbp), %rax	# fndecl, tmp804
	movq	8(%rax), %rax	# fndecl_122->common.type, D.17599
	movq	8(%rax), %rax	# _255->common.type, D.17599
	movzbl	61(%rax), %eax	# *_256, tmp807
	shrb	%al	# D.17604
	movzbl	%al, %eax	# D.17604, D.17595
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17605
	cmpl	$2, %eax	#, D.17605
	je	.L377	#,
	.loc 1 2461 0 discriminator 2
	movq	-272(%rbp), %rax	# fndecl, tmp809
	movq	8(%rax), %rax	# fndecl_122->common.type, D.17599
	movq	8(%rax), %rax	# _260->common.type, D.17599
	movzbl	61(%rax), %eax	# *_261, tmp812
	shrb	%al	# D.17604
	movzbl	%al, %eax	# D.17604, D.17595
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17605
	cmpl	$6, %eax	#, D.17605
	je	.L377	#,
	.loc 1 2461 0 discriminator 1
	movq	-272(%rbp), %rax	# fndecl, tmp814
	movq	8(%rax), %rax	# fndecl_122->common.type, D.17599
	movq	8(%rax), %rax	# _265->common.type, D.17599
	movzbl	61(%rax), %eax	# *_266, tmp817
	shrb	%al	# D.17604
	movzbl	%al, %eax	# D.17604, D.17595
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17605
	cmpl	$8, %eax	#, D.17605
	jne	.L376	#,
.L377:
	movq	cfun(%rip), %rax	# cfun, cfun.173
	movq	48(%rax), %rax	# cfun.173_270->decl, D.17599
	movq	8(%rax), %rax	# _271->common.type, D.17599
	movq	8(%rax), %rax	# _272->common.type, D.17599
	movzbl	61(%rax), %eax	# *_273, tmp821
	shrb	%al	# D.17604
	movzbl	%al, %eax	# D.17604, D.17595
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17605
	cmpl	$2, %eax	#, D.17605
	je	.L376	#,
	movq	cfun(%rip), %rax	# cfun, cfun.174
	movq	48(%rax), %rax	# cfun.174_277->decl, D.17599
	movq	8(%rax), %rax	# _278->common.type, D.17599
	movq	8(%rax), %rax	# _279->common.type, D.17599
	movzbl	61(%rax), %eax	# *_280, tmp825
	shrb	%al	# D.17604
	movzbl	%al, %eax	# D.17604, D.17595
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17605
	cmpl	$6, %eax	#, D.17605
	je	.L376	#,
	movq	cfun(%rip), %rax	# cfun, cfun.175
	movq	48(%rax), %rax	# cfun.175_284->decl, D.17599
	movq	8(%rax), %rax	# _285->common.type, D.17599
	movq	8(%rax), %rax	# _286->common.type, D.17599
	movzbl	61(%rax), %eax	# *_287, tmp829
	shrb	%al	# D.17604
	movzbl	%al, %eax	# D.17604, D.17595
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17605
	cmpl	$8, %eax	#, D.17605
	jne	.L374	#,
.L376:
	.loc 1 2464 0 is_stmt 1
	movq	-80(%rbp), %rdx	# args_size.constant, D.17603
	movq	cfun(%rip), %rax	# cfun, cfun.176
	movl	68(%rax), %eax	# cfun.176_292->args_size, D.17595
	cltq
	cmpq	%rax, %rdx	# D.17603, D.17603
	jg	.L374	#,
	.loc 1 2467 0
	movq	-80(%rbp), %rax	# args_size.constant, D.17603
	movl	%eax, %edx	# D.17603, D.17595
	movq	-232(%rbp), %rcx	# funtype, tmp831
	movq	-272(%rbp), %rax	# fndecl, tmp832
	movq	%rcx, %rsi	# tmp831,
	movq	%rax, %rdi	# tmp832,
	call	ix86_return_pops_args	#
	movl	%eax, %ebx	#, D.17595
	.loc 1 2468 0
	movq	cfun(%rip), %rax	# cfun, cfun.177
	movl	68(%rax), %edx	# cfun.177_298->args_size, D.17595
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.178
	movq	8(%rax), %rcx	# current_function_decl.178_300->common.type, D.17599
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.179
	movq	%rcx, %rsi	# D.17599,
	movq	%rax, %rdi	# current_function_decl.179,
	call	ix86_return_pops_args	#
	.loc 1 2467 0
	cmpl	%eax, %ebx	# D.17595, D.17595
	je	.L378	#,
.L374:
	.loc 1 2471 0
	movl	$0, -488(%rbp)	#, try_tail_call
.L378:
	.loc 1 2473 0
	cmpl	$0, -488(%rbp)	#, try_tail_call
	jne	.L379	#,
	.loc 1 2473 0 is_stmt 0 discriminator 1
	cmpl	$0, -484(%rbp)	#, try_tail_recursion
	je	.L380	#,
.L379:
.LBB25:
	.loc 1 2476 0 is_stmt 1
	movq	$0, -376(%rbp)	#, actparms
	.loc 1 2492 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.180
	andl	$2048, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L381	#,
	.loc 1 2492 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.181
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L381	#,
	.loc 1 2494 0 is_stmt 1
	movl	$1, -452(%rbp)	#, inc
	.loc 1 2495 0
	movl	$0, -460(%rbp)	#, i
	.loc 1 2496 0
	movl	-472(%rbp), %eax	# num_actuals, tmp833
	movl	%eax, -456(%rbp)	# tmp833, end
	.loc 1 2505 0
	jmp	.L383	#
.L381:
	.loc 1 2500 0
	movl	$-1, -452(%rbp)	#, inc
	.loc 1 2501 0
	movl	-472(%rbp), %eax	# num_actuals, tmp837
	subl	$1, %eax	#, tmp836
	movl	%eax, -460(%rbp)	# tmp836, i
	.loc 1 2502 0
	movl	$-1, -456(%rbp)	#, end
	.loc 1 2505 0
	jmp	.L383	#
.L390:
	.loc 1 2507 0
	movl	-460(%rbp), %eax	# i, tmp838
	movslq	%eax, %rdx	# tmp838, D.17602
	movq	%rdx, %rax	# D.17602, tmp839
	salq	$2, %rax	#, tmp839
	addq	%rdx, %rax	# D.17602, tmp839
	salq	$2, %rax	#, tmp839
	addq	%rdx, %rax	# D.17602, tmp839
	salq	$3, %rax	#, tmp840
	movq	%rax, %rdx	# tmp839, D.17602
	movq	-216(%rbp), %rax	# args, tmp841
	addq	%rdx, %rax	# D.17602, D.17606
	movq	(%rax), %rax	# _318->tree_value, D.17599
	movq	%rax, %rdi	# D.17599,
	call	unsafe_for_reeval	#
	cmpl	$1, %eax	#, D.17595
	je	.L385	#,
	cmpl	$2, %eax	#, D.17595
	je	.L386	#,
	testl	%eax, %eax	# D.17595
	je	.L521	#,
	jmp	.L520	#
.L385:
	.loc 1 2513 0
	movl	-460(%rbp), %eax	# i, tmp842
	movslq	%eax, %rdx	# tmp842, D.17602
	movq	%rdx, %rax	# D.17602, tmp843
	salq	$2, %rax	#, tmp843
	addq	%rdx, %rax	# D.17602, tmp843
	salq	$2, %rax	#, tmp843
	addq	%rdx, %rax	# D.17602, tmp843
	salq	$3, %rax	#, tmp844
	movq	%rax, %rdx	# tmp843, D.17602
	movq	-216(%rbp), %rax	# args, tmp845
	leaq	(%rdx,%rax), %rbx	#, D.17606
	movl	-460(%rbp), %eax	# i, tmp846
	movslq	%eax, %rdx	# tmp846, D.17602
	movq	%rdx, %rax	# D.17602, tmp847
	salq	$2, %rax	#, tmp847
	addq	%rdx, %rax	# D.17602, tmp847
	salq	$2, %rax	#, tmp847
	addq	%rdx, %rax	# D.17602, tmp847
	salq	$3, %rax	#, tmp848
	movq	%rax, %rdx	# tmp847, D.17602
	movq	-216(%rbp), %rax	# args, tmp849
	addq	%rdx, %rax	# D.17602, D.17606
	movq	(%rax), %rax	# _326->tree_value, D.17599
	movq	%rax, %rdi	# D.17599,
	call	unsave_expr	#
	movq	%rax, (%rbx)	# D.17599, _323->tree_value
	.loc 1 2514 0
	jmp	.L388	#
.L386:
.LBB26:
	.loc 1 2519 0
	movl	-460(%rbp), %eax	# i, tmp850
	movslq	%eax, %rdx	# tmp850, D.17602
	movq	%rdx, %rax	# D.17602, tmp851
	salq	$2, %rax	#, tmp851
	addq	%rdx, %rax	# D.17602, tmp851
	salq	$2, %rax	#, tmp851
	addq	%rdx, %rax	# D.17602, tmp851
	salq	$3, %rax	#, tmp852
	movq	%rax, %rdx	# tmp851, D.17602
	movq	-216(%rbp), %rax	# args, tmp853
	addq	%rdx, %rax	# D.17602, D.17606
	movq	(%rax), %rax	# _331->tree_value, D.17599
	.loc 1 2518 0
	movq	8(%rax), %rax	# _332->common.type, D.17599
	movq	%rax, %rdx	# D.17599,
	movl	$0, %esi	#,
	movl	$34, %edi	#,
	call	build_decl	#
	movq	%rax, -208(%rbp)	# tmp854, var
	.loc 1 2520 0
	movl	-460(%rbp), %eax	# i, tmp855
	movslq	%eax, %rdx	# tmp855, D.17602
	movq	%rdx, %rax	# D.17602, tmp856
	salq	$2, %rax	#, tmp856
	addq	%rdx, %rax	# D.17602, tmp856
	salq	$2, %rax	#, tmp856
	addq	%rdx, %rax	# D.17602, tmp856
	salq	$3, %rax	#, tmp857
	movq	%rax, %rdx	# tmp856, D.17602
	movq	-216(%rbp), %rax	# args, tmp858
	addq	%rdx, %rax	# D.17602, D.17606
	movq	(%rax), %rax	# _337->tree_value, D.17599
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17599,
	call	expand_expr	#
	movq	-208(%rbp), %rdx	# var, tmp859
	movq	%rax, 144(%rdx)	# D.17601, var_334->decl.rtl
	.loc 1 2523 0
	movl	-460(%rbp), %eax	# i, tmp860
	movslq	%eax, %rdx	# tmp860, D.17602
	movq	%rdx, %rax	# D.17602, tmp861
	salq	$2, %rax	#, tmp861
	addq	%rdx, %rax	# D.17602, tmp861
	salq	$2, %rax	#, tmp861
	addq	%rdx, %rax	# D.17602, tmp861
	salq	$3, %rax	#, tmp862
	movq	%rax, %rdx	# tmp861, D.17602
	movq	-216(%rbp), %rax	# args, tmp863
	addq	%rax, %rdx	# tmp863, D.17606
	movq	-208(%rbp), %rax	# var, tmp864
	movq	%rax, (%rdx)	# tmp864, _342->tree_value
.LBE26:
	.loc 1 2525 0
	jmp	.L388	#
.L520:
	.loc 1 2528 0
	movl	$__FUNCTION__.13040, %edx	#,
	movl	$2528, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L521:
	.loc 1 2510 0
	nop
.L388:
	.loc 1 2533 0
	cmpl	$0, -484(%rbp)	#, try_tail_recursion
	je	.L389	#,
	.loc 1 2534 0
	movl	-460(%rbp), %eax	# i, tmp865
	movslq	%eax, %rdx	# tmp865, D.17602
	movq	%rdx, %rax	# D.17602, tmp866
	salq	$2, %rax	#, tmp866
	addq	%rdx, %rax	# D.17602, tmp866
	salq	$2, %rax	#, tmp866
	addq	%rdx, %rax	# D.17602, tmp866
	salq	$3, %rax	#, tmp867
	movq	%rax, %rdx	# tmp866, D.17602
	movq	-216(%rbp), %rax	# args, tmp868
	addq	%rdx, %rax	# D.17602, D.17606
	movq	(%rax), %rax	# _345->tree_value, D.17599
	movq	-376(%rbp), %rdx	# actparms, tmp869
	movq	%rax, %rsi	# D.17599,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -376(%rbp)	# tmp870, actparms
.L389:
	.loc 1 2505 0
	movl	-452(%rbp), %eax	# inc, tmp871
	addl	%eax, -460(%rbp)	# tmp871, i
.L383:
	.loc 1 2505 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# i, tmp872
	cmpl	-456(%rbp), %eax	# end, tmp872
	jne	.L390	#,
	.loc 1 2538 0 is_stmt 1
	movl	$1, %edi	#,
	call	any_pending_cleanups	#
	testl	%eax, %eax	# D.17595
	je	.L380	#,
	.loc 1 2539 0
	movl	$0, -484(%rbp)	#, try_tail_recursion
	movl	-484(%rbp), %eax	# try_tail_recursion, tmp873
	movl	%eax, -488(%rbp)	# tmp873, try_tail_call
.L380:
.LBE25:
	.loc 1 2544 0
	cmpl	$0, -484(%rbp)	#, try_tail_recursion
	je	.L391	#,
.LBB27:
	.loc 1 2550 0
	movq	cfun(%rip), %rax	# cfun, cfun.182
	movq	16(%rax), %rax	# cfun.182_352->expr, D.17596
	movl	(%rax), %eax	# _353->x_pending_stack_adjust, tmp874
	movl	%eax, -412(%rbp)	# tmp874, save_pending_stack_adjust
	.loc 1 2551 0
	movq	cfun(%rip), %rax	# cfun, cfun.183
	movq	16(%rax), %rax	# cfun.183_355->expr, D.17596
	movl	8(%rax), %eax	# _356->x_stack_pointer_delta, tmp875
	movl	%eax, -408(%rbp)	# tmp875, save_stack_pointer_delta
	.loc 1 2555 0
	call	emit_queue	#
	.loc 1 2561 0
	call	start_sequence	#
	.loc 1 2567 0
	call	expand_start_target_temps	#
	.loc 1 2568 0
	call	get_last_insn	#
	movq	%rax, %rdx	#, D.17601
	movq	-376(%rbp), %rax	# actparms, tmp876
	movq	%rdx, %rsi	# D.17601,
	movq	%rax, %rdi	# tmp876,
	call	optimize_tail_recursion	#
	testl	%eax, %eax	# D.17595
	je	.L392	#,
	.loc 1 2570 0
	movl	$1, %edi	#,
	call	any_pending_cleanups	#
	testl	%eax, %eax	# D.17595
	je	.L393	#,
	.loc 1 2571 0
	movl	$0, -484(%rbp)	#, try_tail_recursion
	movl	-484(%rbp), %eax	# try_tail_recursion, tmp877
	movl	%eax, -488(%rbp)	# tmp877, try_tail_call
	jmp	.L392	#
.L393:
	.loc 1 2573 0
	call	get_insns	#
	movq	%rax, -368(%rbp)	# tmp878, tail_recursion_insns
.L392:
	.loc 1 2575 0
	call	expand_end_target_temps	#
	.loc 1 2576 0
	call	end_sequence	#
	.loc 1 2580 0
	movq	cfun(%rip), %rax	# cfun, cfun.184
	movq	16(%rax), %rax	# cfun.184_364->expr, D.17596
	movl	-412(%rbp), %edx	# save_pending_stack_adjust, tmp879
	movl	%edx, (%rax)	# tmp879, _365->x_pending_stack_adjust
	.loc 1 2581 0
	movq	cfun(%rip), %rax	# cfun, cfun.185
	movq	16(%rax), %rax	# cfun.185_366->expr, D.17596
	movl	-408(%rbp), %edx	# save_stack_pointer_delta, tmp880
	movl	%edx, 8(%rax)	# tmp880, _367->x_stack_pointer_delta
.L391:
.LBE27:
	.loc 1 2584 0
	movl	profile_arc_flag(%rip), %eax	# profile_arc_flag, profile_arc_flag.186
	testl	%eax, %eax	# profile_arc_flag.186
	je	.L394	#,
	.loc 1 2584 0 is_stmt 0 discriminator 1
	movl	-504(%rbp), %eax	# flags, flags.187
	andl	$128, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L394	#,
	.loc 1 2593 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.189
	andl	$33554432, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L395	#,
	.loc 1 2593 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.188
	jmp	.L396	#
.L395:
	.loc 1 2593 0 discriminator 2
	movl	$4, %eax	#, iftmp.188
.L396:
	.loc 1 2593 0 discriminator 3
	movl	$.LC20, %edx	#,
	movl	%eax, %esi	# iftmp.188,
	movl	$68, %edi	#,
	call	gen_rtx_fmt_s	#
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# D.17601,
	movl	$0, %eax	#,
	call	emit_library_call	#
.L394:
	.loc 1 2601 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.190
	movl	404(%rax), %eax	# cfun.190_376->preferred_stack_boundary, D.17595
	cltq
	cmpq	-240(%rbp), %rax	# preferred_stack_boundary, D.17603
	jge	.L397	#,
	.loc 1 2602 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.191
	cmpq	%rax, -272(%rbp)	# current_function_decl.191, fndecl
	je	.L397	#,
	.loc 1 2603 0
	movq	cfun(%rip), %rax	# cfun, cfun.192
	movq	-240(%rbp), %rdx	# preferred_stack_boundary, tmp881
	movl	%edx, 404(%rax)	# D.17595, cfun.192_380->preferred_stack_boundary
.L397:
	.loc 1 2605 0
	movq	-240(%rbp), %rax	# preferred_stack_boundary, tmp883
	leaq	7(%rax), %rdx	#, tmp885
	testq	%rax, %rax	# tmp884
	cmovs	%rdx, %rax	# tmp885,, tmp884
	sarq	$3, %rax	#, tmp886
	movq	%rax, -200(%rbp)	# tmp886, preferred_unit_stack_boundary
	.loc 1 2607 0
	movq	cfun(%rip), %rax	# cfun, cfun.193
	movl	152(%rax), %edx	# cfun.193_383->x_function_call_count, D.17595
	addl	$1, %edx	#, D.17595
	movl	%edx, 152(%rax)	# D.17595, cfun.193_383->x_function_call_count
	.loc 1 2612 0
	movl	$0, -480(%rbp)	#, pass
	jmp	.L398	#
.L504:
.LBB28:
	.loc 1 2614 0
	movl	$0, -448(%rbp)	#, sibcall_failure
	.loc 1 2619 0
	movl	$0, -444(%rbp)	#, save_pending_stack_adjust
	.loc 1 2620 0
	movl	$0, -440(%rbp)	#, save_stack_pointer_delta
	.loc 1 2624 0
	cmpl	$0, -480(%rbp)	#, pass
	jne	.L399	#,
	.loc 1 2626 0
	cmpl	$0, -488(%rbp)	#, try_tail_call
	jne	.L400	#,
	.loc 1 2627 0
	jmp	.L401	#
.L400:
	.loc 1 2631 0
	call	emit_queue	#
	.loc 1 2635 0
	movq	cfun(%rip), %rax	# cfun, cfun.194
	movq	16(%rax), %rax	# cfun.194_390->expr, D.17596
	movl	(%rax), %eax	# _391->x_pending_stack_adjust, tmp887
	movl	%eax, -444(%rbp)	# tmp887, save_pending_stack_adjust
	.loc 1 2636 0
	movq	cfun(%rip), %rax	# cfun, cfun.195
	movq	16(%rax), %rax	# cfun.195_393->expr, D.17596
	movl	8(%rax), %eax	# _394->x_stack_pointer_delta, tmp888
	movl	%eax, -440(%rbp)	# tmp888, save_stack_pointer_delta
.L399:
	.loc 1 2638 0
	cmpl	$0, -480(%rbp)	#, pass
	je	.L402	#,
	.loc 1 2639 0
	movl	-504(%rbp), %eax	# flags, flags.196
	andb	$254, %ah	#, flags.197
	movl	%eax, -504(%rbp)	# flags.197, flags
	jmp	.L403	#
.L402:
	.loc 1 2641 0
	movl	-504(%rbp), %eax	# flags, flags.198
	orb	$1, %ah	#, flags.199
	movl	%eax, -504(%rbp)	# flags.199, flags
.L403:
	.loc 1 2645 0
	movq	$0, -312(%rbp)	#, argblock
	.loc 1 2646 0
	movq	$0, -384(%rbp)	#, call_fusage
	.loc 1 2652 0
	call	start_sequence	#
	.loc 1 2654 0
	cmpl	$0, -480(%rbp)	#, pass
	jne	.L404	#,
	.loc 1 2660 0
	call	expand_start_target_temps	#
.L404:
	.loc 1 2668 0
	movq	cfun(%rip), %rax	# cfun, cfun.200
	movq	16(%rax), %rax	# cfun.200_401->expr, D.17596
	movl	(%rax), %eax	# _402->x_pending_stack_adjust, D.17595
	cmpl	$31, %eax	#, D.17595
	jg	.L405	#,
	.loc 1 2669 0
	movq	cfun(%rip), %rax	# cfun, cfun.201
	movq	16(%rax), %rax	# cfun.201_404->expr, D.17596
	movl	(%rax), %eax	# _405->x_pending_stack_adjust, D.17595
	testl	%eax, %eax	# D.17595
	jle	.L406	#,
	.loc 1 2670 0
	movl	-504(%rbp), %eax	# flags, flags.202
	andl	$1032, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L405	#,
.L406:
	.loc 1 2671 0
	cmpl	$0, -480(%rbp)	#, pass
	jne	.L407	#,
.L405:
	.loc 1 2672 0
	call	do_pending_stack_adjust	#
.L407:
	.loc 1 2676 0
	cmpl	$0, -480(%rbp)	#, pass
	je	.L408	#,
	.loc 1 2676 0 is_stmt 0 discriminator 1
	movl	-504(%rbp), %eax	# flags, flags.203
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L408	#,
	.loc 1 2677 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.204
	movq	16(%rax), %rax	# cfun.204_411->expr, D.17596
	movq	cfun(%rip), %rdx	# cfun, cfun.205
	movq	16(%rdx), %rdx	# cfun.205_413->expr, D.17596
	movl	4(%rdx), %edx	# _414->x_inhibit_defer_pop, D.17595
	addl	$1, %edx	#, D.17595
	movl	%edx, 4(%rax)	# D.17595, _412->x_inhibit_defer_pop
.L408:
	.loc 1 2684 0
	cmpl	$0, -480(%rbp)	#, pass
	je	.L409	#,
	.loc 1 2685 0
	movl	-504(%rbp), %eax	# flags, flags.206
	movq	-216(%rbp), %rdx	# args, tmp889
	movl	-472(%rbp), %ecx	# num_actuals, tmp890
	movl	%ecx, %esi	# tmp890,
	movl	%eax, %edi	# flags.206,
	call	precompute_arguments	#
.L409:
	.loc 1 2689 0
	cmpl	$0, -480(%rbp)	#, pass
	je	.L410	#,
	.loc 1 2689 0 is_stmt 0 discriminator 1
	movl	-504(%rbp), %eax	# flags, flags.207
	andl	$4100, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L410	#,
	.loc 1 2690 0 is_stmt 1
	call	start_sequence	#
.L410:
	.loc 1 2692 0
	movq	-80(%rbp), %rax	# args_size, tmp891
	movq	-72(%rbp), %rdx	# args_size,
	movq	%rax, -64(%rbp)	# tmp891, adjusted_args_size
	movq	%rdx, -56(%rbp)	#, adjusted_args_size
	.loc 1 2699 0
	cmpl	$0, -480(%rbp)	#, pass
	je	.L411	#,
	.loc 1 2699 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# preferred_stack_boundary, tmp892
	jmp	.L412	#
.L411:
	.loc 1 2699 0 discriminator 2
	movl	$0, %eax	#, iftmp.208
.L412:
	.loc 1 2699 0 discriminator 3
	leaq	-64(%rbp), %rsi	#, tmp893
	movl	-428(%rbp), %ecx	# reg_parm_stack_space, tmp894
	movl	%eax, %edx	# iftmp.208,
	movl	%ecx, %edi	# tmp894,
	call	compute_argument_block_size	#
	movl	%eax, -404(%rbp)	# tmp895, unadjusted_args_size
	.loc 1 2704 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.209
	movq	16(%rax), %rax	# cfun.209_423->expr, D.17596
	movl	8(%rax), %edx	# _424->x_stack_pointer_delta, D.17595
	movq	cfun(%rip), %rax	# cfun, cfun.210
	movq	16(%rax), %rax	# cfun.210_426->expr, D.17596
	movl	(%rax), %eax	# _427->x_pending_stack_adjust, D.17595
	subl	%eax, %edx	# D.17595, tmp896
	movl	%edx, %eax	# tmp896, tmp896
	movl	%eax, -400(%rbp)	# tmp896, old_stack_allocated
	.loc 1 2708 0 discriminator 3
	cmpl	$0, -480(%rbp)	#, pass
	jne	.L413	#,
	.loc 1 2710 0
	movq	global_rtl+48(%rip), %rax	# global_rtl, tmp897
	movq	%rax, -312(%rbp)	# tmp897, argblock
	.loc 1 2711 0
	movq	-80(%rbp), %rax	# args_size.constant, D.17603
	movl	%eax, %edi	# D.17607,
	call	sbitmap_alloc	#
	movq	%rax, stored_args_map(%rip)	# stored_args_map.211, stored_args_map
	.loc 1 2712 0
	movq	stored_args_map(%rip), %rax	# stored_args_map, stored_args_map.212
	movq	%rax, %rdi	# stored_args_map.212,
	call	sbitmap_zero	#
	jmp	.L414	#
.L413:
	.loc 1 2717 0
	movq	-56(%rbp), %rax	# adjusted_args_size.var, D.17599
	testq	%rax, %rax	# D.17599
	je	.L415	#,
	.loc 1 2719 0
	movq	-392(%rbp), %rax	# old_stack_level, old_stack_level.213
	testq	%rax, %rax	# old_stack_level.213
	jne	.L416	#,
	.loc 1 2721 0
	leaq	-392(%rbp), %rax	#, tmp898
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp898,
	movl	$0, %edi	#,
	call	emit_stack_save	#
	.loc 1 2722 0
	movq	cfun(%rip), %rax	# cfun, cfun.214
	movq	16(%rax), %rax	# cfun.214_437->expr, D.17596
	movl	(%rax), %eax	# _438->x_pending_stack_adjust, old_pending_adj.215
	movl	%eax, -492(%rbp)	# old_pending_adj.215, old_pending_adj
	.loc 1 2723 0
	movq	cfun(%rip), %rax	# cfun, cfun.216
	movq	16(%rax), %rax	# cfun.216_440->expr, D.17596
	movl	$0, (%rax)	#, _441->x_pending_stack_adjust
	.loc 1 2727 0
	movl	stack_arg_under_construction(%rip), %eax	# stack_arg_under_construction, tmp899
	movl	%eax, -464(%rbp)	# tmp899, old_stack_arg_under_construction
	.loc 1 2728 0
	movl	$0, stack_arg_under_construction(%rip)	#, stack_arg_under_construction
.L416:
	.loc 1 2730 0
	movq	-56(%rbp), %rax	# adjusted_args_size.var, D.17599
	testq	%rax, %rax	# D.17599
	jne	.L417	#,
	.loc 1 2730 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# adjusted_args_size.constant, D.17603
	movq	%rax, %rsi	# D.17603,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L418	#
.L417:
	.loc 1 2730 0 discriminator 2
	movq	-56(%rbp), %rax	# adjusted_args_size.var, D.17599
	testq	%rax, %rax	# D.17599
	jne	.L419	#,
	.loc 1 2730 0 discriminator 1
	movq	-64(%rbp), %rax	# adjusted_args_size.constant, D.17603
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17603,
	call	size_int_wide	#
	jmp	.L420	#
.L419:
	.loc 1 2730 0 discriminator 2
	movq	-64(%rbp), %rax	# adjusted_args_size.constant, D.17603
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17603,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.17599
	movq	-56(%rbp), %rdx	# adjusted_args_size.var, D.17599
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17599
	movq	%rdx, %rsi	# D.17599,
	movq	%rax, %rdi	# D.17599,
	call	convert	#
	movq	%rbx, %rdx	# D.17599,
	movq	%rax, %rsi	# D.17599,
	movl	$59, %edi	#,
	call	size_binop	#
.L420:
	.loc 1 2730 0 discriminator 3
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.218,
	call	expand_expr	#
.L418:
	.loc 1 2730 0 discriminator 1
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.217,
	call	push_block	#
	movq	%rax, -312(%rbp)	# tmp900, argblock
	jmp	.L414	#
.L415:
.LBB29:
	.loc 1 2739 0 is_stmt 1
	movq	-64(%rbp), %rax	# adjusted_args_size.constant, D.17603
	movl	%eax, -436(%rbp)	# D.17603, needed
	.loc 1 2745 0
	movq	cfun(%rip), %rax	# cfun, cfun.219
	movl	76(%rax), %eax	# cfun.219_459->outgoing_args_size, D.17595
	cmpl	-436(%rbp), %eax	# needed, D.17595
	jge	.L421	#,
	.loc 1 2746 0
	movq	cfun(%rip), %rax	# cfun, cfun.220
	movl	-436(%rbp), %edx	# needed, tmp901
	movl	%edx, 76(%rax)	# tmp901, cfun.220_461->outgoing_args_size
.L421:
	.loc 1 2748 0
	movl	-508(%rbp), %eax	# must_preallocate, must_preallocate.221
	testl	%eax, %eax	# must_preallocate.221
	je	.L414	#,
	.loc 1 2750 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.222
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L422	#,
	.loc 1 2770 0
	movl	-428(%rbp), %eax	# reg_parm_stack_space, tmp902
	addl	%eax, -436(%rbp)	# tmp902, needed
	.loc 1 2777 0
	movl	-424(%rbp), %eax	# initial_highest_arg_in_use, tmp903
	cmpl	%eax, -436(%rbp)	# tmp903, needed
	cmovge	-436(%rbp), %eax	# needed,, highest_outgoing_arg_in_use.223
	movl	%eax, highest_outgoing_arg_in_use(%rip)	# highest_outgoing_arg_in_use.223, highest_outgoing_arg_in_use
	.loc 1 2781 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.224
	cltq
	leaq	15(%rax), %rdx	#, tmp904
	movl	$16, %eax	#, tmp1262
	subq	$1, %rax	#, tmp905
	addq	%rdx, %rax	# tmp904, tmp906
	movl	$16, %ebx	#, tmp1263
	movl	$0, %edx	#, tmp909
	divq	%rbx	# tmp1263
	imulq	$16, %rax, %rax	#, tmp908, tmp910
	subq	%rax, %rsp	# tmp910,
	leaq	48(%rsp), %rax	#, tmp911
	addq	$15, %rax	#, tmp912
	shrq	$4, %rax	#, tmp913
	salq	$4, %rax	#, tmp914
	movq	%rax, stack_usage_map(%rip)	# stack_usage_map.225, stack_usage_map
	.loc 1 2783 0
	cmpl	$0, -424(%rbp)	#, initial_highest_arg_in_use
	je	.L423	#,
	.loc 1 2784 0
	movl	-424(%rbp), %eax	# initial_highest_arg_in_use, tmp915
	movslq	%eax, %rdx	# tmp915, D.17602
	movq	stack_usage_map(%rip), %rax	# stack_usage_map, stack_usage_map.226
	movq	-264(%rbp), %rcx	# initial_stack_usage_map, tmp916
	movq	%rcx, %rsi	# tmp916,
	movq	%rax, %rdi	# stack_usage_map.226,
	call	memcpy	#
.L423:
	.loc 1 2787 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.227
	cmpl	%eax, -424(%rbp)	# highest_outgoing_arg_in_use.227, initial_highest_arg_in_use
	je	.L424	#,
	.loc 1 2790 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.228
	subl	-424(%rbp), %eax	# initial_highest_arg_in_use, D.17595
	.loc 1 2788 0
	cltq
	movq	stack_usage_map(%rip), %rcx	# stack_usage_map, stack_usage_map.229
	movl	-424(%rbp), %edx	# initial_highest_arg_in_use, tmp917
	movslq	%edx, %rdx	# tmp917, D.17608
	addq	%rdx, %rcx	# D.17608, D.17609
	movq	%rax, %rdx	# D.17602,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# D.17609,
	call	memset	#
.L424:
	.loc 1 2791 0
	movl	$0, -436(%rbp)	#, needed
	.loc 1 2798 0
	movq	global_rtl+72(%rip), %rax	# global_rtl, tmp918
	movq	%rax, -312(%rbp)	# tmp918, argblock
	jmp	.L414	#
.L422:
	.loc 1 2802 0
	movq	cfun(%rip), %rax	# cfun, cfun.230
	movq	16(%rax), %rax	# cfun.230_481->expr, D.17596
	movl	4(%rax), %eax	# _482->x_inhibit_defer_pop, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L425	#,
	.loc 1 2808 0
	movq	-200(%rbp), %rax	# preferred_unit_stack_boundary, tmp919
	movl	%eax, %edx	# tmp919, D.17595
	.loc 1 2807 0
	leaq	-64(%rbp), %rcx	#, tmp920
	movl	-404(%rbp), %eax	# unadjusted_args_size, tmp921
	movq	%rcx, %rsi	# tmp920,
	movl	%eax, %edi	# tmp921,
	call	combine_pending_stack_adjustment_and_call	#
	movl	%eax, -436(%rbp)	# tmp922, needed
	.loc 1 2816 0
	movl	-436(%rbp), %eax	# needed, tmp927
	movl	-404(%rbp), %edx	# unadjusted_args_size, tmp928
	subl	%eax, %edx	# tmp927, tmp926
	movl	%edx, %eax	# tmp926, tmp926
	movl	%eax, -436(%rbp)	# tmp926, needed
	.loc 1 2818 0
	cmpl	$0, -436(%rbp)	#, needed
	jns	.L426	#,
	.loc 1 2823 0
	movq	cfun(%rip), %rax	# cfun, cfun.231
	movq	16(%rax), %rax	# cfun.231_487->expr, D.17596
	movl	-436(%rbp), %edx	# needed, tmp929
	negl	%edx	# D.17595
	movl	%edx, (%rax)	# D.17595, _488->x_pending_stack_adjust
	.loc 1 2824 0
	call	do_pending_stack_adjust	#
	.loc 1 2825 0
	movl	$0, -436(%rbp)	#, needed
	jmp	.L425	#
.L426:
	.loc 1 2830 0
	movq	cfun(%rip), %rax	# cfun, cfun.232
	movq	16(%rax), %rax	# cfun.232_491->expr, D.17596
	movl	$0, (%rax)	#, _492->x_pending_stack_adjust
.L425:
	.loc 1 2835 0
	cmpl	$0, -436(%rbp)	#, needed
	jne	.L427	#,
	.loc 1 2836 0
	movq	global_rtl+72(%rip), %rax	# global_rtl, tmp930
	movq	%rax, -312(%rbp)	# tmp930, argblock
	jmp	.L428	#
.L427:
	.loc 1 2838 0
	movl	-436(%rbp), %eax	# needed, tmp931
	cltq
	movq	%rax, %rsi	# D.17603,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17601,
	call	push_block	#
	movq	%rax, -312(%rbp)	# tmp932, argblock
.L428:
	.loc 1 2847 0
	movq	-312(%rbp), %rax	# argblock, tmp933
	movq	%rax, %rdi	# tmp933,
	call	copy_to_reg	#
	movq	%rax, -312(%rbp)	# tmp934, argblock
	.loc 1 2853 0
	movl	stack_arg_under_construction(%rip), %eax	# stack_arg_under_construction, stack_arg_under_construction.233
	testl	%eax, %eax	# stack_arg_under_construction.233
	je	.L429	#,
.LBB30:
	.loc 1 2856 0
	movl	-428(%rbp), %eax	# reg_parm_stack_space, tmp935
	movslq	%eax, %rdx	# tmp935, D.17603
	movq	-64(%rbp), %rax	# adjusted_args_size.constant, D.17603
	addq	%rdx, %rax	# D.17603, D.17603
	movq	%rax, %rsi	# D.17603,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -192(%rbp)	# tmp936, push_size
	.loc 1 2861 0
	movq	-392(%rbp), %rax	# old_stack_level, old_stack_level.234
	testq	%rax, %rax	# old_stack_level.234
	jne	.L430	#,
	.loc 1 2863 0
	leaq	-392(%rbp), %rax	#, tmp937
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp937,
	movl	$0, %edi	#,
	call	emit_stack_save	#
	.loc 1 2865 0
	movq	cfun(%rip), %rax	# cfun, cfun.235
	movq	16(%rax), %rax	# cfun.235_504->expr, D.17596
	movl	(%rax), %eax	# _505->x_pending_stack_adjust, old_pending_adj.236
	movl	%eax, -492(%rbp)	# old_pending_adj.236, old_pending_adj
	.loc 1 2866 0
	movq	cfun(%rip), %rax	# cfun, cfun.237
	movq	16(%rax), %rax	# cfun.237_507->expr, D.17596
	movl	$0, (%rax)	#, _508->x_pending_stack_adjust
	.loc 1 2872 0
	movl	stack_arg_under_construction(%rip), %eax	# stack_arg_under_construction, tmp938
	movl	%eax, -464(%rbp)	# tmp938, old_stack_arg_under_construction
	.loc 1 2873 0
	movl	$0, stack_arg_under_construction(%rip)	#, stack_arg_under_construction
	.loc 1 2876 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.238
	cltq
	leaq	15(%rax), %rdx	#, tmp939
	movl	$16, %eax	#, tmp1264
	subq	$1, %rax	#, tmp940
	addq	%rdx, %rax	# tmp939, tmp941
	movl	$16, %ebx	#, tmp1265
	movl	$0, %edx	#, tmp944
	divq	%rbx	# tmp1265
	imulq	$16, %rax, %rax	#, tmp943, tmp945
	subq	%rax, %rsp	# tmp945,
	leaq	48(%rsp), %rax	#, tmp946
	addq	$15, %rax	#, tmp947
	shrq	$4, %rax	#, tmp948
	salq	$4, %rax	#, tmp949
	.loc 1 2875 0
	movq	%rax, stack_usage_map(%rip)	# stack_usage_map.239, stack_usage_map
	.loc 1 2877 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.240
	movslq	%eax, %rdx	# highest_outgoing_arg_in_use.240, D.17602
	movq	stack_usage_map(%rip), %rax	# stack_usage_map, stack_usage_map.241
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stack_usage_map.241,
	call	memset	#
	.loc 1 2878 0
	movl	$0, highest_outgoing_arg_in_use(%rip)	#, highest_outgoing_arg_in_use
.L430:
	.loc 1 2880 0
	movq	-192(%rbp), %rax	# push_size, tmp950
	movl	$8, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp950,
	call	allocate_dynamic_stack_space	#
.L429:
.LBE30:
	.loc 1 2885 0
	movl	$0, -460(%rbp)	#, i
	jmp	.L431	#
.L433:
	.loc 1 2886 0
	movl	-460(%rbp), %eax	# i, tmp951
	movslq	%eax, %rdx	# tmp951, D.17602
	movq	%rdx, %rax	# D.17602, tmp952
	salq	$2, %rax	#, tmp952
	addq	%rdx, %rax	# D.17602, tmp952
	salq	$2, %rax	#, tmp952
	addq	%rdx, %rax	# D.17602, tmp952
	salq	$3, %rax	#, tmp953
	movq	%rax, %rdx	# tmp952, D.17602
	movq	-216(%rbp), %rax	# args, tmp954
	addq	%rdx, %rax	# D.17602, D.17606
	movl	56(%rax), %eax	# _519->pass_on_stack, D.17595
	testl	%eax, %eax	# D.17595
	je	.L432	#,
	.loc 1 2888 0
	movq	-312(%rbp), %rax	# argblock, tmp955
	movq	%rax, %rdi	# tmp955,
	call	copy_addr_to_reg	#
	movq	%rax, -312(%rbp)	# tmp956, argblock
	.loc 1 2889 0
	jmp	.L414	#
.L432:
	.loc 1 2885 0
	addl	$1, -460(%rbp)	#, i
.L431:
	.loc 1 2885 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# i, tmp957
	cmpl	-472(%rbp), %eax	# num_actuals, tmp957
	jl	.L433	#,
.L414:
.LBE29:
	.loc 1 2895 0 is_stmt 1
	movl	-472(%rbp), %edx	# num_actuals, tmp958
	movq	-312(%rbp), %rcx	# argblock, tmp959
	movq	-216(%rbp), %rax	# args, tmp960
	movq	%rcx, %rsi	# tmp959,
	movq	%rax, %rdi	# tmp960,
	call	compute_argument_addresses	#
	.loc 1 2899 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.242
	andl	$2048, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L434	#,
	.loc 1 2899 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.243
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L434	#,
	cmpq	$0, -312(%rbp)	#, argblock
	jne	.L434	#,
	.loc 1 2900 0 is_stmt 1
	movq	-64(%rbp), %rdx	# adjusted_args_size.constant, D.17603
	movl	-404(%rbp), %eax	# unadjusted_args_size, tmp961
	cltq
	cmpq	%rax, %rdx	# D.17603, D.17603
	je	.L434	#,
	.loc 1 2904 0
	movq	cfun(%rip), %rax	# cfun, cfun.244
	movq	16(%rax), %rax	# cfun.244_529->expr, D.17596
	movl	(%rax), %eax	# _530->x_pending_stack_adjust, D.17595
	testl	%eax, %eax	# D.17595
	je	.L435	#,
	.loc 1 2905 0
	movl	-504(%rbp), %eax	# flags, flags.245
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L435	#,
	.loc 1 2906 0
	movq	cfun(%rip), %rax	# cfun, cfun.246
	movq	16(%rax), %rax	# cfun.246_534->expr, D.17596
	movl	4(%rax), %eax	# _535->x_inhibit_defer_pop, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L435	#,
	.loc 1 2908 0
	movq	cfun(%rip), %rax	# cfun, cfun.247
	movq	16(%rax), %rbx	# cfun.247_537->expr, D.17596
	.loc 1 2910 0
	movq	-200(%rbp), %rax	# preferred_unit_stack_boundary, tmp962
	movl	%eax, %edx	# tmp962, D.17595
	leaq	-64(%rbp), %rcx	#, tmp963
	movl	-404(%rbp), %eax	# unadjusted_args_size, tmp964
	movq	%rcx, %rsi	# tmp963,
	movl	%eax, %edi	# tmp964,
	call	combine_pending_stack_adjustment_and_call	#
	.loc 1 2909 0
	movl	%eax, (%rbx)	# D.17595, _538->x_pending_stack_adjust
	.loc 1 2913 0
	call	do_pending_stack_adjust	#
	jmp	.L434	#
.L435:
	.loc 1 2915 0
	cmpq	$0, -312(%rbp)	#, argblock
	jne	.L434	#,
	.loc 1 2916 0
	movq	-64(%rbp), %rdx	# adjusted_args_size.constant, D.17603
	movl	-404(%rbp), %eax	# unadjusted_args_size, tmp965
	cltq
	subq	%rax, %rdx	# D.17603, D.17603
	movq	%rdx, %rax	# D.17603, D.17603
	movq	%rax, %rsi	# D.17603,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdi	# D.17601,
	call	anti_adjust_stack	#
.L434:
	.loc 1 2921 0
	movq	cfun(%rip), %rax	# cfun, cfun.248
	movq	16(%rax), %rax	# cfun.248_545->expr, D.17596
	movq	cfun(%rip), %rdx	# cfun, cfun.249
	movq	16(%rdx), %rdx	# cfun.249_547->expr, D.17596
	movl	4(%rdx), %edx	# _548->x_inhibit_defer_pop, D.17595
	addl	$1, %edx	#, D.17595
	movl	%edx, 4(%rax)	# D.17595, _546->x_inhibit_defer_pop
	.loc 1 2923 0
	movq	-520(%rbp), %rdx	# exp, tmp966
	movq	-272(%rbp), %rax	# fndecl, tmp967
	movq	%rdx, %rsi	# tmp966,
	movq	%rax, %rdi	# tmp967,
	call	rtx_for_function_call	#
	movq	%rax, -184(%rbp)	# tmp968, funexp
	.loc 1 2926 0
	movq	$0, -336(%rbp)	#, valreg
	.loc 1 2927 0
	movq	-520(%rbp), %rax	# exp, tmp969
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	61(%rax), %eax	# *_553, D.17597
	andl	$-2, %eax	#, D.17597
	testb	%al, %al	# D.17597
	je	.L436	#,
	.loc 1 2928 0
	cmpq	$0, -328(%rbp)	#, structure_value_addr
	jne	.L436	#,
	.loc 1 2930 0
	cmpl	$0, -432(%rbp)	#, pcc_struct_value
	je	.L437	#,
	.loc 1 2931 0
	cmpl	$0, -480(%rbp)	#, pass
	sete	%al	#, D.17610
	movzbl	%al, %ebx	# D.17610, D.17595
	movq	-520(%rbp), %rax	# exp, tmp970
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movq	%rax, %rdi	# D.17599,
	call	build_pointer_type	#
	movq	-272(%rbp), %rcx	# fndecl, tmp971
	movl	%ebx, %edx	# D.17595,
	movq	%rcx, %rsi	# tmp971,
	movq	%rax, %rdi	# D.17599,
	call	hard_function_value	#
	movq	%rax, -336(%rbp)	# tmp972, valreg
	jmp	.L436	#
.L437:
	.loc 1 2934 0
	cmpl	$0, -480(%rbp)	#, pass
	sete	%al	#, D.17610
	movzbl	%al, %edx	# D.17610, D.17595
	movq	-520(%rbp), %rax	# exp, tmp973
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movq	-272(%rbp), %rcx	# fndecl, tmp974
	movq	%rcx, %rsi	# tmp974,
	movq	%rax, %rdi	# D.17599,
	call	hard_function_value	#
	movq	%rax, -336(%rbp)	# tmp975, valreg
.L436:
	.loc 1 2939 0
	leaq	-512(%rbp), %rdx	#, tmp976
	movq	-216(%rbp), %rcx	# args, tmp977
	movl	-472(%rbp), %eax	# num_actuals, tmp978
	movq	%rcx, %rsi	# tmp977,
	movl	%eax, %edi	# tmp978,
	call	precompute_register_parameters	#
	.loc 1 2944 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.250
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L438	#,
	.loc 1 2944 0 is_stmt 0 discriminator 1
	cmpl	$0, -480(%rbp)	#, pass
	je	.L438	#,
	.loc 1 2945 0 is_stmt 1
	leaq	-496(%rbp), %rcx	#, tmp979
	leaq	-500(%rbp), %rdx	#, tmp980
	movq	-312(%rbp), %rsi	# argblock, tmp981
	movl	-428(%rbp), %eax	# reg_parm_stack_space, tmp982
	movl	%eax, %edi	# tmp982,
	call	save_fixed_argument_area	#
	movq	%rax, -304(%rbp)	# tmp983, save_area
.L438:
	.loc 1 2955 0
	movl	$0, -460(%rbp)	#, i
	jmp	.L439	#
.L443:
	.loc 1 2956 0
	movl	-460(%rbp), %eax	# i, tmp984
	movslq	%eax, %rdx	# tmp984, D.17602
	movq	%rdx, %rax	# D.17602, tmp985
	salq	$2, %rax	#, tmp985
	addq	%rdx, %rax	# D.17602, tmp985
	salq	$2, %rax	#, tmp985
	addq	%rdx, %rax	# D.17602, tmp985
	salq	$3, %rax	#, tmp986
	movq	%rax, %rdx	# tmp985, D.17602
	movq	-216(%rbp), %rax	# args, tmp987
	addq	%rdx, %rax	# D.17602, D.17606
	movq	32(%rax), %rax	# _571->reg, D.17601
	testq	%rax, %rax	# D.17601
	je	.L440	#,
	.loc 1 2956 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# i, tmp988
	movslq	%eax, %rdx	# tmp988, D.17602
	movq	%rdx, %rax	# D.17602, tmp989
	salq	$2, %rax	#, tmp989
	addq	%rdx, %rax	# D.17602, tmp989
	salq	$2, %rax	#, tmp989
	addq	%rdx, %rax	# D.17602, tmp989
	salq	$3, %rax	#, tmp990
	movq	%rax, %rdx	# tmp989, D.17602
	movq	-216(%rbp), %rax	# args, tmp991
	addq	%rdx, %rax	# D.17602, D.17606
	movl	56(%rax), %eax	# _575->pass_on_stack, D.17595
	testl	%eax, %eax	# D.17595
	je	.L441	#,
.L440:
.LBB31:
	.loc 1 2958 0 is_stmt 1
	call	get_last_insn	#
	movq	%rax, -176(%rbp)	# tmp992, before_arg
	.loc 1 2961 0
	movq	-56(%rbp), %rax	# adjusted_args_size.var, D.17599
	.loc 1 2960 0
	testq	%rax, %rax	# D.17599
	setne	%al	#, D.17610
	movzbl	%al, %ecx	# D.17610, D.17595
	movl	-504(%rbp), %esi	# flags, flags.251
	movl	-460(%rbp), %eax	# i, tmp993
	movslq	%eax, %rdx	# tmp993, D.17602
	movq	%rdx, %rax	# D.17602, tmp994
	salq	$2, %rax	#, tmp994
	addq	%rdx, %rax	# D.17602, tmp994
	salq	$2, %rax	#, tmp994
	addq	%rdx, %rax	# D.17602, tmp994
	salq	$3, %rax	#, tmp995
	movq	%rax, %rdx	# tmp994, D.17602
	movq	-216(%rbp), %rax	# args, tmp996
	leaq	(%rdx,%rax), %rdi	#, D.17606
	movl	-428(%rbp), %edx	# reg_parm_stack_space, tmp997
	movq	-312(%rbp), %rax	# argblock, tmp998
	movl	%edx, %r8d	# tmp997,
	movl	%esi, %edx	# flags.251,
	movq	%rax, %rsi	# tmp998,
	call	store_one_arg	#
	testl	%eax, %eax	# D.17595
	jne	.L442	#,
	.loc 1 2963 0
	cmpl	$0, -480(%rbp)	#, pass
	jne	.L441	#,
	.loc 1 2964 0
	movl	-460(%rbp), %eax	# i, tmp999
	movslq	%eax, %rdx	# tmp999, D.17602
	.loc 1 2965 0
	movq	%rdx, %rax	# D.17602, tmp1000
	salq	$2, %rax	#, tmp1000
	addq	%rdx, %rax	# D.17602, tmp1000
	salq	$2, %rax	#, tmp1000
	addq	%rdx, %rax	# D.17602, tmp1000
	salq	$3, %rax	#, tmp1001
	movq	%rax, %rdx	# tmp1000, D.17602
	.loc 1 2964 0
	movq	-216(%rbp), %rax	# args, tmp1002
	addq	%rax, %rdx	# tmp1002, D.17606
	movq	-176(%rbp), %rax	# before_arg, tmp1003
	movq	%rdx, %rsi	# D.17606,
	movq	%rax, %rdi	# tmp1003,
	call	check_sibcall_argument_overlap	#
	testl	%eax, %eax	# D.17595
	je	.L441	#,
.L442:
	.loc 1 2966 0
	movl	$1, -448(%rbp)	#, sibcall_failure
.L441:
.LBE31:
	.loc 1 2955 0
	addl	$1, -460(%rbp)	#, i
.L439:
	.loc 1 2955 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# i, tmp1004
	cmpl	-472(%rbp), %eax	# num_actuals, tmp1004
	jl	.L443	#,
	.loc 1 2978 0 is_stmt 1
	movl	-512(%rbp), %eax	# reg_parm_seen, reg_parm_seen.252
	testl	%eax, %eax	# reg_parm_seen.252
	je	.L444	#,
	.loc 1 2979 0
	movl	$0, -460(%rbp)	#, i
	jmp	.L445	#
.L448:
	.loc 1 2980 0
	movl	-460(%rbp), %eax	# i, tmp1005
	movslq	%eax, %rdx	# tmp1005, D.17602
	movq	%rdx, %rax	# D.17602, tmp1006
	salq	$2, %rax	#, tmp1006
	addq	%rdx, %rax	# D.17602, tmp1006
	salq	$2, %rax	#, tmp1006
	addq	%rdx, %rax	# D.17602, tmp1006
	salq	$3, %rax	#, tmp1007
	movq	%rax, %rdx	# tmp1006, D.17602
	movq	-216(%rbp), %rax	# args, tmp1008
	addq	%rdx, %rax	# D.17602, D.17606
	movl	52(%rax), %eax	# _596->partial, D.17595
	testl	%eax, %eax	# D.17595
	je	.L446	#,
	.loc 1 2980 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# i, tmp1009
	movslq	%eax, %rdx	# tmp1009, D.17602
	movq	%rdx, %rax	# D.17602, tmp1010
	salq	$2, %rax	#, tmp1010
	addq	%rdx, %rax	# D.17602, tmp1010
	salq	$2, %rax	#, tmp1010
	addq	%rdx, %rax	# D.17602, tmp1010
	salq	$3, %rax	#, tmp1011
	movq	%rax, %rdx	# tmp1010, D.17602
	movq	-216(%rbp), %rax	# args, tmp1012
	addq	%rdx, %rax	# D.17602, D.17606
	movl	56(%rax), %eax	# _600->pass_on_stack, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L446	#,
.LBB32:
	.loc 1 2982 0 is_stmt 1
	call	get_last_insn	#
	movq	%rax, -168(%rbp)	# tmp1013, before_arg
	.loc 1 2985 0
	movq	-56(%rbp), %rax	# adjusted_args_size.var, D.17599
	.loc 1 2984 0
	testq	%rax, %rax	# D.17599
	setne	%al	#, D.17610
	movzbl	%al, %ecx	# D.17610, D.17595
	movl	-504(%rbp), %esi	# flags, flags.253
	movl	-460(%rbp), %eax	# i, tmp1014
	movslq	%eax, %rdx	# tmp1014, D.17602
	movq	%rdx, %rax	# D.17602, tmp1015
	salq	$2, %rax	#, tmp1015
	addq	%rdx, %rax	# D.17602, tmp1015
	salq	$2, %rax	#, tmp1015
	addq	%rdx, %rax	# D.17602, tmp1015
	salq	$3, %rax	#, tmp1016
	movq	%rax, %rdx	# tmp1015, D.17602
	movq	-216(%rbp), %rax	# args, tmp1017
	leaq	(%rdx,%rax), %rdi	#, D.17606
	movl	-428(%rbp), %edx	# reg_parm_stack_space, tmp1018
	movq	-312(%rbp), %rax	# argblock, tmp1019
	movl	%edx, %r8d	# tmp1018,
	movl	%esi, %edx	# flags.253,
	movq	%rax, %rsi	# tmp1019,
	call	store_one_arg	#
	testl	%eax, %eax	# D.17595
	jne	.L447	#,
	.loc 1 2987 0
	cmpl	$0, -480(%rbp)	#, pass
	jne	.L446	#,
	.loc 1 2988 0
	movl	-460(%rbp), %eax	# i, tmp1020
	movslq	%eax, %rdx	# tmp1020, D.17602
	.loc 1 2989 0
	movq	%rdx, %rax	# D.17602, tmp1021
	salq	$2, %rax	#, tmp1021
	addq	%rdx, %rax	# D.17602, tmp1021
	salq	$2, %rax	#, tmp1021
	addq	%rdx, %rax	# D.17602, tmp1021
	salq	$3, %rax	#, tmp1022
	movq	%rax, %rdx	# tmp1021, D.17602
	.loc 1 2988 0
	movq	-216(%rbp), %rax	# args, tmp1023
	addq	%rax, %rdx	# tmp1023, D.17606
	movq	-168(%rbp), %rax	# before_arg, tmp1024
	movq	%rdx, %rsi	# D.17606,
	movq	%rax, %rdi	# tmp1024,
	call	check_sibcall_argument_overlap	#
	testl	%eax, %eax	# D.17595
	je	.L446	#,
.L447:
	.loc 1 2990 0
	movl	$1, -448(%rbp)	#, sibcall_failure
.L446:
.LBE32:
	.loc 1 2979 0
	addl	$1, -460(%rbp)	#, i
.L445:
	.loc 1 2979 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# i, tmp1025
	cmpl	-472(%rbp), %eax	# num_actuals, tmp1025
	jl	.L448	#,
.L444:
	.loc 1 2995 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.254
	andl	$2048, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L449	#,
	.loc 1 2995 0 is_stmt 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.255
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L450	#,
.L449:
	.loc 1 2995 0 discriminator 1
	cmpq	$0, -312(%rbp)	#, argblock
	jne	.L450	#,
	.loc 1 2996 0 is_stmt 1
	movq	-64(%rbp), %rdx	# adjusted_args_size.constant, D.17603
	movl	-404(%rbp), %eax	# unadjusted_args_size, tmp1026
	cltq
	subq	%rax, %rdx	# D.17603, D.17603
	movq	%rdx, %rax	# D.17603, D.17603
	movq	%rax, %rsi	# D.17603,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdi	# D.17601,
	call	anti_adjust_stack	#
.L450:
	.loc 1 3010 0
	cmpl	$0, -480(%rbp)	#, pass
	je	.L451	#,
	.loc 1 3010 0 is_stmt 0 discriminator 1
	cmpq	$0, -328(%rbp)	#, structure_value_addr
	je	.L451	#,
	cmpl	$0, -476(%rbp)	#, structure_value_addr_parm
	jne	.L451	#,
	.loc 1 3012 0 is_stmt 1
	movq	-328(%rbp), %rax	# structure_value_addr, tmp1027
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1027,
	call	force_operand	#
	movq	%rax, %rdx	#, D.17601
	.loc 1 3013 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.257
	andl	$33554432, %eax	#, D.17595
	.loc 1 3012 0
	testl	%eax, %eax	# D.17595
	je	.L452	#,
	.loc 1 3012 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.256
	jmp	.L453	#
.L452:
	.loc 1 3012 0 discriminator 2
	movl	$4, %eax	#, iftmp.256
.L453:
	.loc 1 3012 0 discriminator 3
	movq	%rdx, %rsi	# D.17601,
	movl	%eax, %edi	# iftmp.256,
	call	force_reg	#
	movq	%rax, %rdx	#, D.17601
	movq	struct_value_rtx(%rip), %rax	# struct_value_rtx, struct_value_rtx.258
	movq	%rdx, %rsi	# D.17601,
	movq	%rax, %rdi	# struct_value_rtx.258,
	call	emit_move_insn	#
	.loc 1 3017 0 is_stmt 1 discriminator 3
	movq	struct_value_rtx(%rip), %rax	# struct_value_rtx, struct_value_rtx.259
	movzwl	(%rax), %eax	# struct_value_rtx.259_632->code, D.17600
	cmpw	$61, %ax	#, D.17600
	jne	.L451	#,
	.loc 1 3018 0
	movq	struct_value_rtx(%rip), %rdx	# struct_value_rtx, struct_value_rtx.260
	leaq	-384(%rbp), %rax	#, tmp1028
	movq	%rdx, %rsi	# struct_value_rtx.260,
	movq	%rax, %rdi	# tmp1028,
	call	use_reg	#
.L451:
	.loc 1 3021 0
	cmpl	$0, -480(%rbp)	#, pass
	sete	%al	#, D.17610
	movzbl	%al, %edi	# D.17610, D.17595
	movl	-512(%rbp), %ecx	# reg_parm_seen, reg_parm_seen.261
	leaq	-384(%rbp), %rdx	#, tmp1029
	movq	-272(%rbp), %rsi	# fndecl, tmp1030
	movq	-184(%rbp), %rax	# funexp, tmp1031
	movl	%edi, %r8d	# D.17595,
	movq	%rax, %rdi	# tmp1031,
	call	prepare_call_address	#
	movq	%rax, -184(%rbp)	# tmp1032, funexp
	.loc 1 3024 0
	movl	-504(%rbp), %ecx	# flags, flags.262
	leaq	-384(%rbp), %rdx	#, tmp1033
	movl	-472(%rbp), %esi	# num_actuals, tmp1034
	movq	-216(%rbp), %rax	# args, tmp1035
	movq	%rax, %rdi	# tmp1035,
	call	load_register_parameters	#
	.loc 1 3027 0
	call	emit_queue	#
	.loc 1 3031 0
	call	get_last_insn	#
	movq	%rax, -160(%rbp)	# tmp1036, before_call
	.loc 1 3041 0
	movq	global_trees+216(%rip), %rdx	# global_trees, D.17599
	leaq	-48(%rbp), %rax	#, tmp1037
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1037,
	call	function_arg	#
	movq	%rax, -152(%rbp)	# tmp1038, next_arg_reg
	.loc 1 3048 0
	cmpl	$0, -480(%rbp)	#, pass
	je	.L454	#,
	.loc 1 3048 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.263
	movq	16(%rax), %rax	# cfun.263_643->expr, D.17596
	movl	8(%rax), %eax	# _644->x_stack_pointer_delta, D.17595
	cltq
	cqto
	idivq	-200(%rbp)	# preferred_unit_stack_boundary
	movq	%rdx, %rax	# tmp1039, D.17603
	testq	%rax, %rax	# D.17603
	je	.L454	#,
	.loc 1 3049 0 is_stmt 1
	movl	$__FUNCTION__.13040, %edx	#,
	movl	$3049, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L454:
	.loc 1 3052 0
	movl	-504(%rbp), %r8d	# flags, flags.264
	movq	-384(%rbp), %rdi	# call_fusage, call_fusage.265
	movq	-64(%rbp), %r10	# adjusted_args_size.constant, D.17603
	movl	-404(%rbp), %eax	# unadjusted_args_size, tmp1041
	movslq	%eax, %rcx	# tmp1041, D.17603
	movq	-320(%rbp), %r11	# struct_value_size, tmp1042
	movq	-232(%rbp), %rdx	# funtype, tmp1043
	movq	-272(%rbp), %rsi	# fndecl, tmp1044
	movq	-184(%rbp), %rax	# funexp, tmp1045
	leaq	-48(%rbp), %r9	#, tmp1046
	movq	%r9, 40(%rsp)	# tmp1046,
	movl	%r8d, 32(%rsp)	# flags.264,
	movq	%rdi, 24(%rsp)	# call_fusage.265,
	movl	-420(%rbp), %edi	# old_inhibit_defer_pop, tmp1047
	movl	%edi, 16(%rsp)	# tmp1047,
	movq	-336(%rbp), %rdi	# valreg, tmp1048
	movq	%rdi, 8(%rsp)	# tmp1048,
	movq	-152(%rbp), %rdi	# next_arg_reg, tmp1049
	movq	%rdi, (%rsp)	# tmp1049,
	movq	%r11, %r9	# tmp1042,
	movq	%r10, %r8	# D.17603,
	movq	%rax, %rdi	# tmp1045,
	call	emit_call_1	#
	.loc 1 3058 0
	cmpl	$0, -480(%rbp)	#, pass
	je	.L455	#,
	.loc 1 3059 0
	movq	cfun(%rip), %rax	# cfun, cfun.266
	movq	16(%rax), %rax	# cfun.266_652->expr, D.17596
	movl	8(%rax), %edx	# _653->x_stack_pointer_delta, D.17595
	movq	cfun(%rip), %rax	# cfun, cfun.267
	movq	16(%rax), %rax	# cfun.267_655->expr, D.17596
	movl	(%rax), %eax	# _656->x_pending_stack_adjust, D.17595
	subl	%eax, %edx	# D.17595, D.17595
	movl	%edx, %eax	# D.17595, D.17595
	cmpl	-400(%rbp), %eax	# old_stack_allocated, D.17595
	je	.L455	#,
	.loc 1 3060 0
	movl	$__FUNCTION__.13040, %edx	#,
	movl	$3060, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L455:
	.loc 1 3066 0
	cmpl	$0, -480(%rbp)	#, pass
	je	.L456	#,
	.loc 1 3066 0 is_stmt 0 discriminator 1
	movl	-504(%rbp), %eax	# flags, flags.268
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L456	#,
.LBB33:
	.loc 1 3070 0 is_stmt 1
	cmpq	$0, -336(%rbp)	#, valreg
	je	.L457	#,
	.loc 1 3070 0 is_stmt 0 discriminator 1
	movq	-336(%rbp), %rax	# valreg, tmp1050
	movzwl	(%rax), %eax	# valreg_33->code, D.17600
	cmpw	$39, %ax	#, D.17600
	jne	.L458	#,
.L457:
	.loc 1 3072 0 is_stmt 1
	call	get_insns	#
	movq	%rax, -136(%rbp)	# tmp1051, insns
	.loc 1 3073 0
	call	end_sequence	#
	.loc 1 3074 0
	movq	-136(%rbp), %rax	# insns, tmp1052
	movq	%rax, %rdi	# tmp1052,
	call	emit_insns	#
.LBE33:
	.loc 1 3067 0
	jmp	.L464	#
.L458:
.LBB35:
.LBB34:
	.loc 1 3078 0
	movq	$0, -288(%rbp)	#, note
	.loc 1 3079 0
	movq	-336(%rbp), %rax	# valreg, tmp1053
	movzbl	2(%rax), %eax	# valreg_33->mode, D.17597
	movzbl	%al, %eax	# D.17597, D.17611
	movl	%eax, %edi	# D.17611,
	call	gen_reg_rtx	#
	movq	%rax, -144(%rbp)	# tmp1054, temp
	.loc 1 3082 0
	movq	-520(%rbp), %rax	# exp, tmp1055
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	16(%rax), %eax	# _666->common.code, D.17597
	cmpb	$13, %al	#, D.17597
	jne	.L460	#,
	.loc 1 3084 0
	movq	-520(%rbp), %rax	# exp, tmp1056
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movq	8(%rax), %rax	# _668->common.type, D.17599
	movl	64(%rax), %eax	# _669->type.align, D.17607
	.loc 1 3083 0
	movl	%eax, %edx	# D.17607, D.17595
	movq	-144(%rbp), %rax	# temp, tmp1057
	movl	%edx, %esi	# D.17595,
	movq	%rax, %rdi	# tmp1057,
	call	mark_reg_pointer	#
.L460:
	.loc 1 3088 0
	movl	$0, -460(%rbp)	#, i
	jmp	.L461	#
.L462:
	.loc 1 3089 0 discriminator 2
	movl	-460(%rbp), %eax	# i, tmp1058
	movslq	%eax, %rdx	# tmp1058, D.17602
	movq	%rdx, %rax	# D.17602, tmp1059
	salq	$2, %rax	#, tmp1059
	addq	%rdx, %rax	# D.17602, tmp1059
	salq	$2, %rax	#, tmp1059
	addq	%rdx, %rax	# D.17602, tmp1059
	salq	$3, %rax	#, tmp1060
	movq	%rax, %rdx	# tmp1059, D.17602
	movq	-216(%rbp), %rax	# args, tmp1061
	addq	%rdx, %rax	# D.17602, D.17606
	movq	24(%rax), %rax	# _675->initial_value, D.17601
	movq	-288(%rbp), %rdx	# note, tmp1062
	movq	%rdx, %rcx	# tmp1062,
	movq	%rax, %rdx	# D.17601,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -288(%rbp)	# tmp1063, note
	.loc 1 3088 0 discriminator 2
	addl	$1, -460(%rbp)	#, i
.L461:
	.loc 1 3088 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# i, tmp1064
	cmpl	-472(%rbp), %eax	# num_actuals, tmp1064
	jl	.L462	#,
	.loc 1 3091 0 is_stmt 1
	movq	-288(%rbp), %rdx	# note, tmp1065
	movq	-184(%rbp), %rax	# funexp, tmp1066
	movq	%rdx, %rcx	# tmp1065,
	movq	%rax, %rdx	# tmp1066,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -288(%rbp)	# tmp1067, note
	.loc 1 3093 0
	call	get_insns	#
	movq	%rax, -136(%rbp)	# tmp1068, insns
	.loc 1 3094 0
	call	end_sequence	#
	.loc 1 3096 0
	movl	-504(%rbp), %eax	# flags, flags.269
	andl	$512, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L463	#,
	.loc 1 3097 0
	movl	$0, %esi	#,
	movl	$62, %edi	#,
	call	gen_rtx_fmt_0	#
	movq	%rax, %rsi	# D.17601,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, %rdx	# D.17601,
	movl	$0, %esi	#,
	movl	$48, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	-288(%rbp), %rdx	# note, tmp1069
	movq	%rdx, %rcx	# tmp1069,
	movq	%rax, %rdx	# D.17601,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -288(%rbp)	# tmp1070, note
.L463:
	.loc 1 3103 0
	movq	-288(%rbp), %rcx	# note, tmp1071
	movq	-336(%rbp), %rdx	# valreg, tmp1072
	movq	-144(%rbp), %rsi	# temp, tmp1073
	movq	-136(%rbp), %rax	# insns, tmp1074
	movq	%rax, %rdi	# tmp1074,
	call	emit_libcall_block	#
	.loc 1 3105 0
	movq	-144(%rbp), %rax	# temp, tmp1075
	movq	%rax, -336(%rbp)	# tmp1075, valreg
.LBE34:
.LBE35:
	.loc 1 3067 0
	jmp	.L464	#
.L456:
	.loc 1 3108 0
	cmpl	$0, -480(%rbp)	#, pass
	je	.L464	#,
	.loc 1 3108 0 is_stmt 0 discriminator 1
	movl	-504(%rbp), %eax	# flags, flags.270
	andl	$4, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L464	#,
.LBB36:
	.loc 1 3110 0 is_stmt 1
	movq	-336(%rbp), %rax	# valreg, tmp1076
	movzbl	2(%rax), %eax	# valreg_33->mode, D.17597
	movzbl	%al, %eax	# D.17597, D.17611
	movl	%eax, %edi	# D.17611,
	call	gen_reg_rtx	#
	movq	%rax, -128(%rbp)	# tmp1077, temp
	.loc 1 3114 0
	movq	-520(%rbp), %rax	# exp, tmp1078
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	16(%rax), %eax	# _694->common.code, D.17597
	cmpb	$13, %al	#, D.17597
	jne	.L465	#,
	.loc 1 3115 0
	movq	-128(%rbp), %rax	# temp, tmp1079
	movl	$128, %esi	#,
	movq	%rax, %rdi	# tmp1079,
	call	mark_reg_pointer	#
.L465:
	.loc 1 3117 0
	movq	-336(%rbp), %rdx	# valreg, tmp1080
	movq	-128(%rbp), %rax	# temp, tmp1081
	movq	%rdx, %rsi	# tmp1080,
	movq	%rax, %rdi	# tmp1081,
	call	emit_move_insn	#
	.loc 1 3121 0
	call	get_last_insn	#
	movq	%rax, -120(%rbp)	# tmp1082, last
	.loc 1 3123 0
	movq	-120(%rbp), %rax	# last, tmp1083
	movq	56(%rax), %rdx	# last_696->fld[6].rtx, D.17601
	movq	-128(%rbp), %rax	# temp, tmp1084
	movq	%rdx, %rcx	# D.17601,
	movq	%rax, %rdx	# tmp1084,
	movl	$18, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	.loc 1 3122 0
	movq	-120(%rbp), %rdx	# last, tmp1085
	movq	%rax, 56(%rdx)	# D.17601, last_696->fld[6].rtx
	.loc 1 3126 0
	call	get_insns	#
	movq	%rax, -112(%rbp)	# tmp1086, insns
	.loc 1 3127 0
	call	end_sequence	#
	.loc 1 3128 0
	movq	-112(%rbp), %rax	# insns, tmp1087
	movq	%rax, %rdi	# tmp1087,
	call	emit_insns	#
	.loc 1 3129 0
	movq	-128(%rbp), %rax	# temp, tmp1088
	movq	%rax, -336(%rbp)	# tmp1088, valreg
.L464:
.LBE36:
	.loc 1 3136 0
	movl	-504(%rbp), %eax	# flags, flags.271
	andl	$66, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L466	#,
	.loc 1 3136 0 is_stmt 0 discriminator 1
	cmpl	$0, -480(%rbp)	#, pass
	jne	.L467	#,
.L466:
.LBB37:
	.loc 1 3142 0 is_stmt 1
	call	get_last_insn	#
	movq	%rax, -280(%rbp)	# tmp1089, last
	.loc 1 3143 0
	jmp	.L468	#
.L469:
	.loc 1 3145 0
	movq	-280(%rbp), %rax	# last, tmp1090
	movq	16(%rax), %rax	# last_79->fld[1].rtx, tmp1091
	movq	%rax, -280(%rbp)	# tmp1091, last
	.loc 1 3147 0
	movq	-280(%rbp), %rax	# last, tmp1092
	cmpq	-160(%rbp), %rax	# before_call, tmp1092
	jne	.L468	#,
	.loc 1 3148 0
	movl	$__FUNCTION__.13040, %edx	#,
	movl	$3148, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L468:
	.loc 1 3143 0 discriminator 1
	movq	-280(%rbp), %rax	# last, tmp1093
	movzwl	(%rax), %eax	# last_79->code, D.17600
	cmpw	$34, %ax	#, D.17600
	jne	.L469	#,
	.loc 1 3151 0
	movq	-280(%rbp), %rax	# last, tmp1094
	movq	%rax, %rdi	# tmp1094,
	call	emit_barrier_after	#
.L467:
.LBE37:
	.loc 1 3154 0
	movl	-504(%rbp), %eax	# flags, flags.272
	andl	$64, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L470	#,
	.loc 1 3155 0
	movq	cfun(%rip), %rax	# cfun, cfun.273
	movzbl	424(%rax), %edx	# cfun.273_708->calls_longjmp, tmp1097
	orl	$32, %edx	#, tmp1098
	movb	%dl, 424(%rax)	# tmp1098, cfun.273_708->calls_longjmp
.L470:
	.loc 1 3161 0
	cmpq	$0, -528(%rbp)	#, target
	je	.L471	#,
	.loc 1 3161 0 is_stmt 0 discriminator 1
	movq	-528(%rbp), %rax	# target, tmp1099
	movzwl	(%rax), %eax	# target_8->code, D.17600
	cmpw	$66, %ax	#, D.17600
	jne	.L471	#,
	.loc 1 3162 0 is_stmt 1
	cmpq	$0, -328(%rbp)	#, structure_value_addr
	je	.L471	#,
	.loc 1 3162 0 is_stmt 0 discriminator 1
	movq	-528(%rbp), %rax	# target, tmp1100
	movzbl	3(%rax), %eax	# *target_8, D.17597
	andl	$4, %eax	#, D.17597
	testb	%al, %al	# D.17597
	je	.L471	#,
	.loc 1 3163 0 is_stmt 1
	movq	-528(%rbp), %rax	# target, tmp1101
	movq	%rax, %rdx	# tmp1101,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdi	# D.17601,
	call	emit_insn	#
.L471:
	.loc 1 3169 0
	movl	$1, %edi	#,
	call	any_pending_cleanups	#
	testl	%eax, %eax	# D.17595
	je	.L472	#,
	.loc 1 3171 0
	cmpq	$0, -528(%rbp)	#, target
	je	.L473	#,
	.loc 1 3171 0 is_stmt 0 discriminator 1
	movq	-528(%rbp), %rax	# target, tmp1102
	movzwl	(%rax), %eax	# target_8->code, D.17600
	cmpw	$61, %ax	#, D.17600
	jne	.L473	#,
	.loc 1 3172 0 is_stmt 1
	movq	-528(%rbp), %rax	# target, tmp1103
	movl	8(%rax), %eax	# target_8->fld[0].rtuint, D.17607
	cmpl	$52, %eax	#, D.17607
	ja	.L473	#,
	.loc 1 3173 0
	movq	$0, -528(%rbp)	#, target
.L473:
	.loc 1 3174 0
	movl	$1, -448(%rbp)	#, sibcall_failure
.L472:
	.loc 1 3177 0
	movq	-520(%rbp), %rax	# exp, tmp1104
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	61(%rax), %eax	# *_718, D.17597
	andl	$-2, %eax	#, D.17597
	testb	%al, %al	# D.17597
	je	.L474	#,
	.loc 1 3178 0
	cmpl	$0, -532(%rbp)	#, ignore
	je	.L475	#,
.L474:
	.loc 1 3179 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp1105
	movq	%rax, -528(%rbp)	# tmp1105, target
	jmp	.L476	#
.L475:
	.loc 1 3180 0
	cmpq	$0, -328(%rbp)	#, structure_value_addr
	je	.L477	#,
	.loc 1 3182 0
	cmpq	$0, -528(%rbp)	#, target
	je	.L478	#,
	.loc 1 3182 0 is_stmt 0 discriminator 1
	movq	-528(%rbp), %rax	# target, tmp1106
	movzwl	(%rax), %eax	# target_3->code, D.17600
	cmpw	$66, %ax	#, D.17600
	je	.L476	#,
.L478:
	.loc 1 3186 0 is_stmt 1
	movq	-520(%rbp), %rax	# exp, tmp1107
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	61(%rax), %eax	# *_722, tmp1110
	shrb	%al	# D.17604
	.loc 1 3185 0
	movzbl	%al, %eax	# D.17604, D.17611
	movq	-328(%rbp), %rdx	# structure_value_addr, tmp1111
	movq	%rdx, %rsi	# tmp1111,
	movl	%eax, %edi	# D.17611,
	call	memory_address	#
	movq	%rax, %rdx	#, D.17601
	movq	-520(%rbp), %rax	# exp, tmp1112
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	61(%rax), %eax	# *_726, tmp1115
	shrb	%al	# D.17604
	movzbl	%al, %eax	# D.17604, D.17611
	movq	%rdx, %rsi	# D.17601,
	movl	%eax, %edi	# D.17611,
	call	gen_rtx_MEM	#
	movq	%rax, -528(%rbp)	# tmp1116, target
	.loc 1 3188 0
	movq	-520(%rbp), %rcx	# exp, tmp1117
	movq	-528(%rbp), %rax	# target, tmp1118
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp1117,
	movq	%rax, %rdi	# tmp1118,
	call	set_mem_attributes	#
	jmp	.L476	#
.L477:
	.loc 1 3191 0
	cmpl	$0, -432(%rbp)	#, pcc_struct_value
	je	.L480	#,
	.loc 1 3196 0
	movq	-336(%rbp), %rax	# valreg, tmp1119
	movq	%rax, %rdi	# tmp1119,
	call	copy_to_reg	#
	movq	%rax, %rdx	#, D.17601
	movq	-520(%rbp), %rax	# exp, tmp1120
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	61(%rax), %eax	# *_731, tmp1123
	shrb	%al	# D.17604
	movzbl	%al, %eax	# D.17604, D.17611
	movq	%rdx, %rsi	# D.17601,
	movl	%eax, %edi	# D.17611,
	call	gen_rtx_MEM	#
	movq	%rax, -528(%rbp)	# tmp1124, target
	.loc 1 3198 0
	movq	-520(%rbp), %rcx	# exp, tmp1125
	movq	-528(%rbp), %rax	# target, tmp1126
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp1125,
	movq	%rax, %rdi	# tmp1126,
	call	set_mem_attributes	#
	jmp	.L476	#
.L480:
	.loc 1 3202 0
	movq	-336(%rbp), %rax	# valreg, tmp1127
	movzwl	(%rax), %eax	# valreg_35->code, D.17600
	cmpw	$39, %ax	#, D.17600
	jne	.L481	#,
	.loc 1 3204 0
	cmpq	$0, -528(%rbp)	#, target
	jne	.L482	#,
.LBB38:
	.loc 1 3208 0
	movq	-520(%rbp), %rax	# exp, tmp1128
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	17(%rax), %eax	# *_736, tmp1131
	shrb	$4, %al	#, D.17612
	andl	$1, %eax	#, D.17612
	movzbl	%al, %edx	# D.17612, D.17595
	movq	-520(%rbp), %rax	# exp, tmp1132
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	17(%rax), %eax	# *_739, tmp1135
	shrb	$3, %al	#, D.17612
	andl	$1, %eax	#, D.17612
	movzbl	%al, %eax	# D.17612, D.17595
	addl	%eax, %eax	# D.17595
	orl	%eax, %edx	# D.17595, D.17595
	movq	-520(%rbp), %rax	# exp, tmp1136
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	62(%rax), %eax	# *_744, tmp1139
	shrb	$5, %al	#, D.17612
	andl	$1, %eax	#, D.17612
	movzbl	%al, %eax	# D.17612, D.17595
	sall	$2, %eax	#, D.17595
	orl	%eax, %edx	# D.17595, D.17595
	movq	-520(%rbp), %rax	# exp, tmp1140
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	16(%rax), %eax	# _749->common.code, D.17597
	cmpb	$20, %al	#, D.17597
	jne	.L483	#,
	.loc 1 3208 0 is_stmt 0 discriminator 1
	movq	-520(%rbp), %rax	# exp, tmp1141
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movq	8(%rax), %rax	# _751->common.type, D.17599
	testq	%rax, %rax	# D.17599
	je	.L483	#,
	.loc 1 3208 0 discriminator 3
	movl	$1, %eax	#, iftmp.274
	jmp	.L484	#
.L483:
	.loc 1 3208 0 discriminator 2
	movl	$0, %eax	#, iftmp.274
.L484:
	.loc 1 3208 0 discriminator 4
	sall	$3, %eax	#, D.17595
	orl	%edx, %eax	# D.17595, D.17595
	.loc 1 3207 0 is_stmt 1 discriminator 4
	orl	$1, %eax	#, D.17595
	movl	%eax, %edx	# D.17595, D.17595
	movq	-520(%rbp), %rax	# exp, tmp1142
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movl	%edx, %esi	# D.17595,
	movq	%rax, %rdi	# D.17599,
	call	build_qualified_type	#
	movq	%rax, -104(%rbp)	# tmp1143, nt
	.loc 1 3211 0 discriminator 4
	movq	-104(%rbp), %rax	# nt, tmp1144
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1144,
	call	assign_temp	#
	movq	%rax, -528(%rbp)	# tmp1145, target
	.loc 1 3212 0 discriminator 4
	movq	-528(%rbp), %rax	# target, tmp1146
	movq	%rax, %rdi	# tmp1146,
	call	preserve_temp_slots	#
.L482:
.LBE38:
	.loc 1 3215 0
	movq	-336(%rbp), %rdx	# valreg, tmp1147
	movq	-528(%rbp), %rax	# target, tmp1148
	movq	%rdx, %rsi	# tmp1147,
	movq	%rax, %rdi	# tmp1148,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17595
	jne	.L485	#,
	.loc 1 3217 0
	movq	-520(%rbp), %rax	# exp, tmp1149
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movq	%rax, %rdi	# D.17599,
	call	int_size_in_bytes	#
	.loc 1 3216 0
	movl	%eax, %edx	# D.17603, D.17595
	movq	-336(%rbp), %rcx	# valreg, tmp1150
	movq	-528(%rbp), %rax	# target, tmp1151
	movq	%rcx, %rsi	# tmp1150,
	movq	%rax, %rdi	# tmp1151,
	call	emit_group_store	#
.L485:
	.loc 1 3220 0
	movl	$1, -448(%rbp)	#, sibcall_failure
	jmp	.L476	#
.L481:
	.loc 1 3222 0
	cmpq	$0, -528(%rbp)	#, target
	je	.L486	#,
	.loc 1 3223 0
	movq	-528(%rbp), %rax	# target, tmp1152
	movzbl	2(%rax), %edx	# target_3->mode, D.17597
	movq	-520(%rbp), %rax	# exp, tmp1153
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	61(%rax), %eax	# *_767, tmp1156
	shrb	%al	# D.17604
	cmpb	%al, %dl	# D.17597, D.17597
	jne	.L486	#,
	.loc 1 3224 0
	movq	-528(%rbp), %rax	# target, tmp1157
	movzbl	2(%rax), %edx	# target_3->mode, D.17597
	movq	-336(%rbp), %rax	# valreg, tmp1158
	movzbl	2(%rax), %eax	# valreg_35->mode, D.17597
	cmpb	%al, %dl	# D.17597, D.17597
	jne	.L486	#,
	.loc 1 3232 0
	movq	-336(%rbp), %rdx	# valreg, tmp1159
	movq	-528(%rbp), %rax	# target, tmp1160
	movq	%rdx, %rsi	# tmp1159,
	movq	%rax, %rdi	# tmp1160,
	call	emit_move_insn	#
	jmp	.L476	#
.L486:
	.loc 1 3234 0
	movq	-520(%rbp), %rax	# exp, tmp1161
	movq	8(%rax), %rax	# exp_89(D)->common.type, D.17599
	movzbl	61(%rax), %eax	# *_772, D.17597
	andl	$-2, %eax	#, D.17597
	cmpb	$102, %al	#, D.17597
	jne	.L487	#,
	.loc 1 3236 0
	movq	-520(%rbp), %rax	# exp, tmp1162
	movq	8(%rax), %rdx	# exp_89(D)->common.type, D.17599
	movq	-336(%rbp), %rcx	# valreg, tmp1163
	movq	-528(%rbp), %rax	# target, tmp1164
	movq	%rcx, %rsi	# tmp1163,
	movq	%rax, %rdi	# tmp1164,
	call	copy_blkmode_from_reg	#
	movq	%rax, -528(%rbp)	# tmp1165, target
	.loc 1 3239 0
	movl	$1, -448(%rbp)	#, sibcall_failure
	jmp	.L476	#
.L487:
	.loc 1 3242 0
	movq	-336(%rbp), %rax	# valreg, tmp1166
	movq	%rax, %rdi	# tmp1166,
	call	copy_to_reg	#
	movq	%rax, -528(%rbp)	# tmp1167, target
.L476:
	.loc 1 3280 0
	movq	-392(%rbp), %rax	# old_stack_level, old_stack_level.275
	testq	%rax, %rax	# old_stack_level.275
	je	.L488	#,
	.loc 1 3280 0 is_stmt 0 discriminator 1
	movl	-504(%rbp), %eax	# flags, flags.276
	andl	$1024, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	jne	.L488	#,
	.loc 1 3282 0 is_stmt 1
	movq	-392(%rbp), %rax	# old_stack_level, old_stack_level.277
	movl	$0, %edx	#,
	movq	%rax, %rsi	# old_stack_level.277,
	movl	$0, %edi	#,
	call	emit_stack_restore	#
	.loc 1 3283 0
	movq	cfun(%rip), %rax	# cfun, cfun.278
	movq	16(%rax), %rax	# cfun.278_784->expr, D.17596
	movl	-492(%rbp), %edx	# old_pending_adj, old_pending_adj.279
	movl	%edx, (%rax)	# old_pending_adj.279, _785->x_pending_stack_adjust
	.loc 1 3284 0
	movl	-464(%rbp), %eax	# old_stack_arg_under_construction, tmp1168
	movl	%eax, stack_arg_under_construction(%rip)	# tmp1168, stack_arg_under_construction
	.loc 1 3285 0
	movl	-424(%rbp), %eax	# initial_highest_arg_in_use, tmp1169
	movl	%eax, highest_outgoing_arg_in_use(%rip)	# tmp1169, highest_outgoing_arg_in_use
	.loc 1 3286 0
	movq	-264(%rbp), %rax	# initial_stack_usage_map, tmp1170
	movq	%rax, stack_usage_map(%rip)	# tmp1170, stack_usage_map
	.loc 1 3287 0
	movl	$1, -448(%rbp)	#, sibcall_failure
	jmp	.L489	#
.L488:
	.loc 1 3289 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.280
	andl	$4096, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L489	#,
	.loc 1 3289 0 is_stmt 0 discriminator 1
	cmpl	$0, -480(%rbp)	#, pass
	je	.L489	#,
	.loc 1 3292 0 is_stmt 1
	cmpq	$0, -304(%rbp)	#, save_area
	je	.L490	#,
	.loc 1 3294 0
	movl	-500(%rbp), %ecx	# low_to_save, low_to_save.281
	movl	-496(%rbp), %edx	# high_to_save, high_to_save.282
	movq	-312(%rbp), %rsi	# argblock, tmp1171
	movq	-304(%rbp), %rax	# save_area, tmp1172
	movq	%rax, %rdi	# tmp1172,
	call	restore_fixed_argument_area	#
.L490:
	.loc 1 3300 0
	movl	$0, -460(%rbp)	#, i
	jmp	.L491	#
.L494:
	.loc 1 3301 0
	movl	-460(%rbp), %eax	# i, tmp1173
	movslq	%eax, %rdx	# tmp1173, D.17602
	movq	%rdx, %rax	# D.17602, tmp1174
	salq	$2, %rax	#, tmp1174
	addq	%rdx, %rax	# D.17602, tmp1174
	salq	$2, %rax	#, tmp1174
	addq	%rdx, %rax	# D.17602, tmp1174
	salq	$3, %rax	#, tmp1175
	movq	%rax, %rdx	# tmp1174, D.17602
	movq	-216(%rbp), %rax	# args, tmp1176
	addq	%rdx, %rax	# D.17602, D.17606
	movq	128(%rax), %rax	# _795->save_area, D.17601
	testq	%rax, %rax	# D.17601
	je	.L492	#,
.LBB39:
	.loc 1 3303 0
	movl	-460(%rbp), %eax	# i, tmp1177
	movslq	%eax, %rdx	# tmp1177, D.17602
	movq	%rdx, %rax	# D.17602, tmp1178
	salq	$2, %rax	#, tmp1178
	addq	%rdx, %rax	# D.17602, tmp1178
	salq	$2, %rax	#, tmp1178
	addq	%rdx, %rax	# D.17602, tmp1178
	salq	$3, %rax	#, tmp1179
	movq	%rax, %rdx	# tmp1178, D.17602
	movq	-216(%rbp), %rax	# args, tmp1180
	addq	%rdx, %rax	# D.17602, D.17606
	movq	128(%rax), %rax	# _799->save_area, D.17601
	movzbl	2(%rax), %eax	# _800->mode, D.17597
	movzbl	%al, %eax	# D.17597, tmp1181
	movl	%eax, -396(%rbp)	# tmp1181, save_mode
	.loc 1 3307 0
	movl	-460(%rbp), %eax	# i, tmp1182
	movslq	%eax, %rdx	# tmp1182, D.17602
	movq	%rdx, %rax	# D.17602, tmp1183
	salq	$2, %rax	#, tmp1183
	addq	%rdx, %rax	# D.17602, tmp1183
	salq	$2, %rax	#, tmp1183
	addq	%rdx, %rax	# D.17602, tmp1183
	salq	$3, %rax	#, tmp1184
	movq	%rax, %rdx	# tmp1183, D.17602
	movq	-216(%rbp), %rax	# args, tmp1185
	addq	%rdx, %rax	# D.17602, D.17606
	movq	120(%rax), %rax	# _805->stack_slot, D.17601
	.loc 1 3305 0
	movq	8(%rax), %rdx	# _806->fld[0].rtx, D.17601
	movl	-396(%rbp), %eax	# save_mode, tmp1186
	movq	%rdx, %rsi	# D.17601,
	movl	%eax, %edi	# tmp1186,
	call	memory_address	#
	movq	%rax, %rdx	#, D.17601
	.loc 1 3304 0
	movl	-396(%rbp), %eax	# save_mode, tmp1187
	movq	%rdx, %rsi	# D.17601,
	movl	%eax, %edi	# tmp1187,
	call	gen_rtx_MEM	#
	movq	%rax, -96(%rbp)	# tmp1188, stack_area
	.loc 1 3309 0
	cmpl	$51, -396(%rbp)	#, save_mode
	je	.L493	#,
	.loc 1 3310 0
	movl	-460(%rbp), %eax	# i, tmp1189
	movslq	%eax, %rdx	# tmp1189, D.17602
	movq	%rdx, %rax	# D.17602, tmp1190
	salq	$2, %rax	#, tmp1190
	addq	%rdx, %rax	# D.17602, tmp1190
	salq	$2, %rax	#, tmp1190
	addq	%rdx, %rax	# D.17602, tmp1190
	salq	$3, %rax	#, tmp1191
	movq	%rax, %rdx	# tmp1190, D.17602
	movq	-216(%rbp), %rax	# args, tmp1192
	addq	%rdx, %rax	# D.17602, D.17606
	movq	128(%rax), %rdx	# _812->save_area, D.17601
	movq	-96(%rbp), %rax	# stack_area, tmp1193
	movq	%rdx, %rsi	# D.17601,
	movq	%rax, %rdi	# tmp1193,
	call	emit_move_insn	#
	jmp	.L492	#
.L493:
	.loc 1 3314 0
	movl	-460(%rbp), %eax	# i, tmp1194
	movslq	%eax, %rdx	# tmp1194, D.17602
	movq	%rdx, %rax	# D.17602, tmp1195
	salq	$2, %rax	#, tmp1195
	addq	%rdx, %rax	# D.17602, tmp1195
	salq	$2, %rax	#, tmp1195
	addq	%rdx, %rax	# D.17602, tmp1195
	salq	$3, %rax	#, tmp1196
	movq	%rax, %rdx	# tmp1195, D.17602
	movq	-216(%rbp), %rax	# args, tmp1197
	addq	%rdx, %rax	# D.17602, D.17606
	.loc 1 3312 0
	movq	96(%rax), %rax	# _816->size.constant, D.17603
	movq	%rax, %rsi	# D.17603,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rbx	#, D.17601
	.loc 1 3313 0
	movl	-460(%rbp), %eax	# i, tmp1198
	movslq	%eax, %rdx	# tmp1198, D.17602
	movq	%rdx, %rax	# D.17602, tmp1199
	salq	$2, %rax	#, tmp1199
	addq	%rdx, %rax	# D.17602, tmp1199
	salq	$2, %rax	#, tmp1199
	addq	%rdx, %rax	# D.17602, tmp1199
	salq	$3, %rax	#, tmp1200
	movq	%rax, %rdx	# tmp1199, D.17602
	movq	-216(%rbp), %rax	# args, tmp1201
	addq	%rdx, %rax	# D.17602, D.17606
	.loc 1 3312 0
	movq	128(%rax), %rax	# _821->save_area, D.17601
	movq	%rax, %rdi	# D.17601,
	call	validize_mem	#
	movq	%rax, %rcx	#, D.17601
	movq	-96(%rbp), %rax	# stack_area, tmp1202
	movq	%rbx, %rdx	# D.17601,
	movq	%rcx, %rsi	# D.17601,
	movq	%rax, %rdi	# tmp1202,
	call	emit_block_move	#
.L492:
.LBE39:
	.loc 1 3300 0
	addl	$1, -460(%rbp)	#, i
.L491:
	.loc 1 3300 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# i, tmp1203
	cmpl	-472(%rbp), %eax	# num_actuals, tmp1203
	jl	.L494	#,
	.loc 1 3317 0 is_stmt 1
	movl	-424(%rbp), %eax	# initial_highest_arg_in_use, tmp1204
	movl	%eax, highest_outgoing_arg_in_use(%rip)	# tmp1204, highest_outgoing_arg_in_use
	.loc 1 3318 0
	movq	-264(%rbp), %rax	# initial_stack_usage_map, tmp1205
	movq	%rax, stack_usage_map(%rip)	# tmp1205, stack_usage_map
.L489:
	.loc 1 3325 0
	movl	-504(%rbp), %eax	# flags, flags.283
	andl	$8, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L495	#,
	.loc 1 3325 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.284
	movq	168(%rax), %rax	# cfun.284_827->x_nonlocal_goto_handler_slots, D.17601
	testq	%rax, %rax	# D.17601
	je	.L495	#,
	.loc 1 3326 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.285
	addq	$184, %rax	#, D.17613
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.17613,
	movl	$2, %edi	#,
	call	emit_stack_save	#
.L495:
	.loc 1 3329 0
	movl	$0, -460(%rbp)	#, i
	jmp	.L496	#
.L498:
	.loc 1 3330 0
	movl	-460(%rbp), %eax	# i, tmp1206
	movslq	%eax, %rdx	# tmp1206, D.17602
	movq	%rdx, %rax	# D.17602, tmp1207
	salq	$2, %rax	#, tmp1207
	addq	%rdx, %rax	# D.17602, tmp1207
	salq	$2, %rax	#, tmp1207
	addq	%rdx, %rax	# D.17602, tmp1207
	salq	$3, %rax	#, tmp1208
	movq	%rax, %rdx	# tmp1207, D.17602
	movq	-216(%rbp), %rax	# args, tmp1209
	addq	%rdx, %rax	# D.17602, D.17606
	movq	136(%rax), %rax	# _834->aligned_regs, D.17613
	testq	%rax, %rax	# D.17613
	je	.L497	#,
	.loc 1 3331 0
	movl	-460(%rbp), %eax	# i, tmp1210
	movslq	%eax, %rdx	# tmp1210, D.17602
	movq	%rdx, %rax	# D.17602, tmp1211
	salq	$2, %rax	#, tmp1211
	addq	%rdx, %rax	# D.17602, tmp1211
	salq	$2, %rax	#, tmp1211
	addq	%rdx, %rax	# D.17602, tmp1211
	salq	$3, %rax	#, tmp1212
	movq	%rax, %rdx	# tmp1211, D.17602
	movq	-216(%rbp), %rax	# args, tmp1213
	addq	%rdx, %rax	# D.17602, D.17606
	movq	136(%rax), %rax	# _838->aligned_regs, D.17613
	movq	%rax, %rdi	# D.17613,
	call	free	#
.L497:
	.loc 1 3329 0
	addl	$1, -460(%rbp)	#, i
.L496:
	.loc 1 3329 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# i, tmp1214
	cmpl	-472(%rbp), %eax	# num_actuals, tmp1214
	jl	.L498	#,
	.loc 1 3333 0 is_stmt 1
	cmpl	$0, -480(%rbp)	#, pass
	jne	.L499	#,
	.loc 1 3338 0
	call	expand_end_target_temps	#
.L499:
	.loc 1 3341 0
	call	get_insns	#
	movq	%rax, -88(%rbp)	# tmp1215, insns
	.loc 1 3342 0
	call	end_sequence	#
	.loc 1 3344 0
	cmpl	$0, -480(%rbp)	#, pass
	jne	.L500	#,
	.loc 1 3346 0
	movq	-88(%rbp), %rax	# insns, tmp1216
	movq	%rax, -352(%rbp)	# tmp1216, tail_call_insns
	.loc 1 3351 0
	movq	cfun(%rip), %rax	# cfun, cfun.286
	movq	16(%rax), %rax	# cfun.286_843->expr, D.17596
	movl	-444(%rbp), %edx	# save_pending_stack_adjust, tmp1217
	movl	%edx, (%rax)	# tmp1217, _844->x_pending_stack_adjust
	.loc 1 3352 0
	movq	cfun(%rip), %rax	# cfun, cfun.287
	movq	16(%rax), %rax	# cfun.287_845->expr, D.17596
	movl	-440(%rbp), %edx	# save_stack_pointer_delta, tmp1218
	movl	%edx, 8(%rax)	# tmp1218, _846->x_stack_pointer_delta
	.loc 1 3355 0
	movl	$0, -460(%rbp)	#, i
	jmp	.L501	#
.L502:
	.loc 1 3357 0 discriminator 2
	movl	-460(%rbp), %eax	# i, tmp1219
	movslq	%eax, %rdx	# tmp1219, D.17602
	movq	%rdx, %rax	# D.17602, tmp1220
	salq	$2, %rax	#, tmp1220
	addq	%rdx, %rax	# D.17602, tmp1220
	salq	$2, %rax	#, tmp1220
	addq	%rdx, %rax	# D.17602, tmp1220
	salq	$3, %rax	#, tmp1221
	movq	%rax, %rdx	# tmp1220, D.17602
	movq	-216(%rbp), %rax	# args, tmp1222
	addq	%rdx, %rax	# D.17602, D.17606
	movq	$0, 16(%rax)	#, _850->value
	.loc 1 3358 0 discriminator 2
	movl	-460(%rbp), %eax	# i, tmp1223
	movslq	%eax, %rdx	# tmp1223, D.17602
	movq	%rdx, %rax	# D.17602, tmp1224
	salq	$2, %rax	#, tmp1224
	addq	%rdx, %rax	# D.17602, tmp1224
	salq	$2, %rax	#, tmp1224
	addq	%rdx, %rax	# D.17602, tmp1224
	salq	$3, %rax	#, tmp1225
	movq	%rax, %rdx	# tmp1224, D.17602
	movq	-216(%rbp), %rax	# args, tmp1226
	addq	%rdx, %rax	# D.17602, D.17606
	movq	$0, 136(%rax)	#, _853->aligned_regs
	.loc 1 3359 0 discriminator 2
	movl	-460(%rbp), %eax	# i, tmp1227
	movslq	%eax, %rdx	# tmp1227, D.17602
	movq	%rdx, %rax	# D.17602, tmp1228
	salq	$2, %rax	#, tmp1228
	addq	%rdx, %rax	# D.17602, tmp1228
	salq	$2, %rax	#, tmp1228
	addq	%rdx, %rax	# D.17602, tmp1228
	salq	$3, %rax	#, tmp1229
	movq	%rax, %rdx	# tmp1228, D.17602
	movq	-216(%rbp), %rax	# args, tmp1230
	addq	%rdx, %rax	# D.17602, D.17606
	movq	$0, 112(%rax)	#, _856->stack
	.loc 1 3355 0 discriminator 2
	addl	$1, -460(%rbp)	#, i
.L501:
	.loc 1 3355 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# i, tmp1231
	cmpl	-472(%rbp), %eax	# num_actuals, tmp1231
	jl	.L502	#,
	.loc 1 3362 0 is_stmt 1
	movq	stored_args_map(%rip), %rax	# stored_args_map, stored_args_map.288
	movq	%rax, %rdi	# stored_args_map.288,
	call	free	#
	jmp	.L503	#
.L500:
	.loc 1 3365 0
	movq	-88(%rbp), %rax	# insns, tmp1232
	movq	%rax, -360(%rbp)	# tmp1232, normal_call_insns
.L503:
	.loc 1 3369 0
	cmpl	$0, -448(%rbp)	#, sibcall_failure
	je	.L401	#,
	.loc 1 3370 0
	movq	$0, -352(%rbp)	#, tail_call_insns
.L401:
.LBE28:
	.loc 1 2612 0
	addl	$1, -480(%rbp)	#, pass
.L398:
	.loc 1 2612 0 is_stmt 0 discriminator 1
	cmpl	$1, -480(%rbp)	#, pass
	jle	.L504	#,
	.loc 1 3381 0 is_stmt 1
	movq	-360(%rbp), %rax	# normal_call_insns, tmp1233
	movq	%rax, -344(%rbp)	# tmp1233, insn
	jmp	.L505	#
.L507:
	.loc 1 3382 0
	movq	-344(%rbp), %rax	# insn, tmp1234
	movzwl	(%rax), %eax	# insn_21->code, D.17600
	cmpw	$34, %ax	#, D.17600
	jne	.L506	#,
	.loc 1 3383 0
	movq	-344(%rbp), %rax	# insn, tmp1235
	movq	32(%rax), %rax	# insn_21->fld[3].rtx, D.17601
	movzwl	(%rax), %eax	# _864->code, D.17600
	cmpw	$141, %ax	#, D.17600
	jne	.L506	#,
	.loc 1 3384 0
	movq	-344(%rbp), %rax	# insn, tmp1236
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp1236,
	call	replace_call_placeholder	#
.L506:
	.loc 1 3381 0
	movq	-344(%rbp), %rax	# insn, tmp1237
	movq	24(%rax), %rax	# insn_21->fld[2].rtx, tmp1238
	movq	%rax, -344(%rbp)	# tmp1238, insn
.L505:
	.loc 1 3381 0 is_stmt 0 discriminator 1
	cmpq	$0, -344(%rbp)	#, insn
	jne	.L507	#,
	.loc 1 3386 0 is_stmt 1
	movq	-352(%rbp), %rax	# tail_call_insns, tmp1239
	movq	%rax, -344(%rbp)	# tmp1239, insn
	jmp	.L508	#
.L510:
	.loc 1 3387 0
	movq	-344(%rbp), %rax	# insn, tmp1240
	movzwl	(%rax), %eax	# insn_22->code, D.17600
	cmpw	$34, %ax	#, D.17600
	jne	.L509	#,
	.loc 1 3388 0
	movq	-344(%rbp), %rax	# insn, tmp1241
	movq	32(%rax), %rax	# insn_22->fld[3].rtx, D.17601
	movzwl	(%rax), %eax	# _869->code, D.17600
	cmpw	$141, %ax	#, D.17600
	jne	.L509	#,
	.loc 1 3389 0
	movq	-344(%rbp), %rax	# insn, tmp1242
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp1242,
	call	replace_call_placeholder	#
.L509:
	.loc 1 3386 0
	movq	-344(%rbp), %rax	# insn, tmp1243
	movq	24(%rax), %rax	# insn_22->fld[2].rtx, tmp1244
	movq	%rax, -344(%rbp)	# tmp1244, insn
.L508:
	.loc 1 3386 0 is_stmt 0 discriminator 1
	cmpq	$0, -344(%rbp)	#, insn
	jne	.L510	#,
	.loc 1 3391 0 is_stmt 1
	movq	-368(%rbp), %rax	# tail_recursion_insns, tmp1245
	movq	%rax, -344(%rbp)	# tmp1245, insn
	jmp	.L511	#
.L513:
	.loc 1 3392 0
	movq	-344(%rbp), %rax	# insn, tmp1246
	movzwl	(%rax), %eax	# insn_23->code, D.17600
	cmpw	$34, %ax	#, D.17600
	jne	.L512	#,
	.loc 1 3393 0
	movq	-344(%rbp), %rax	# insn, tmp1247
	movq	32(%rax), %rax	# insn_23->fld[3].rtx, D.17601
	movzwl	(%rax), %eax	# _874->code, D.17600
	cmpw	$141, %ax	#, D.17600
	jne	.L512	#,
	.loc 1 3394 0
	movq	-344(%rbp), %rax	# insn, tmp1248
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp1248,
	call	replace_call_placeholder	#
.L512:
	.loc 1 3391 0
	movq	-344(%rbp), %rax	# insn, tmp1249
	movq	24(%rax), %rax	# insn_23->fld[2].rtx, tmp1250
	movq	%rax, -344(%rbp)	# tmp1250, insn
.L511:
	.loc 1 3391 0 is_stmt 0 discriminator 1
	cmpq	$0, -344(%rbp)	#, insn
	jne	.L513	#,
	.loc 1 3399 0 is_stmt 1
	cmpq	$0, -368(%rbp)	#, tail_recursion_insns
	jne	.L514	#,
	.loc 1 3399 0 is_stmt 0 discriminator 1
	cmpq	$0, -352(%rbp)	#, tail_call_insns
	je	.L515	#,
.L514:
	.loc 1 3407 0 is_stmt 1
	cmpq	$0, -368(%rbp)	#, tail_recursion_insns
	je	.L516	#,
	.loc 1 3408 0
	movq	cfun(%rip), %rax	# cfun, cfun.289
	movq	232(%rax), %rax	# cfun.289_877->x_tail_recursion_label, D.17601
	movzbl	3(%rax), %edx	# _878->in_struct, tmp1253
	orl	$16, %edx	#, tmp1254
	movb	%dl, 3(%rax)	# tmp1254, _878->in_struct
.L516:
	.loc 1 3409 0
	movq	cfun(%rip), %rax	# cfun, cfun.290
	movq	232(%rax), %rsi	# cfun.290_879->x_tail_recursion_label, D.17601
	movq	-368(%rbp), %rcx	# tail_recursion_insns, tmp1255
	movq	-352(%rbp), %rdx	# tail_call_insns, tmp1256
	movq	-360(%rbp), %rax	# normal_call_insns, tmp1257
	movq	%rsi, %r9	# D.17601,
	movq	%rcx, %r8	# tmp1255,
	movq	%rdx, %rcx	# tmp1256,
	movq	%rax, %rdx	# tmp1257,
	movl	$0, %esi	#,
	movl	$141, %edi	#,
	call	gen_rtx_fmt_uuuu	#
	movq	%rax, %rdi	# D.17601,
	call	emit_call_insn	#
	jmp	.L517	#
.L515:
	.loc 1 3415 0
	movq	-360(%rbp), %rax	# normal_call_insns, tmp1258
	movq	%rax, %rdi	# tmp1258,
	call	emit_insns	#
.L517:
	.loc 1 3417 0
	movl	currently_expanding_call.12993(%rip), %eax	# currently_expanding_call, currently_expanding_call.291
	subl	$1, %eax	#, currently_expanding_call.292
	movl	%eax, currently_expanding_call.12993(%rip)	# currently_expanding_call.292, currently_expanding_call
	.loc 1 3422 0
	movl	-504(%rbp), %eax	# flags, flags.293
	andl	$1024, %eax	#, D.17595
	testl	%eax, %eax	# D.17595
	je	.L518	#,
	.loc 1 3424 0
	call	clear_pending_stack_adjust	#
	.loc 1 3425 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.17601
	movq	%rax, %rdx	# D.17601,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	movl	$0, %eax	#,
	call	gen_rtx	#
	movq	%rax, %rdi	# D.17601,
	call	emit_insn	#
	.loc 1 3426 0
	movq	global_rtl+16(%rip), %rdx	# global_rtl, D.17601
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.17601
	movq	%rdx, %rsi	# D.17601,
	movq	%rax, %rdi	# D.17601,
	call	emit_move_insn	#
	.loc 1 3427 0
	call	save_stack_pointer	#
.L518:
	.loc 1 3430 0
	movq	-528(%rbp), %rax	# target, D.17594
.L519:
	.loc 1 3431 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	expand_call, .-expand_call
	.type	emit_library_call_value_1, @function
emit_library_call_value_1:
.LFB25:
	.loc 1 3446 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$488, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -436(%rbp)	# retval, retval
	movq	%rsi, -448(%rbp)	# orgfun, orgfun
	movq	%rdx, -456(%rbp)	# value, value
	movl	%ecx, -440(%rbp)	# fn_type, fn_type
	movl	%r8d, -460(%rbp)	# outmode, outmode
	movl	%r9d, -464(%rbp)	# nargs, nargs
	.loc 1 3456 0
	movq	$0, -312(%rbp)	#, argblock
	.loc 1 3469 0
	movq	cfun(%rip), %rax	# cfun, cfun.294
	movq	16(%rax), %rax	# cfun.294_58->expr, D.17618
	movl	4(%rax), %eax	# _59->x_inhibit_defer_pop, tmp546
	movl	%eax, -372(%rbp)	# tmp546, old_inhibit_defer_pop
	.loc 1 3470 0
	movq	$0, -320(%rbp)	#, call_fusage
	.loc 1 3471 0
	movq	$0, -304(%rbp)	#, mem_value
	.loc 1 3473 0
	movl	$0, -368(%rbp)	#, pcc_struct_value
	.loc 1 3474 0
	movl	$0, -408(%rbp)	#, struct_value_size
	.loc 1 3476 0
	movl	$0, -364(%rbp)	#, reg_parm_stack_space
	.loc 1 3483 0
	movl	$-1, -400(%rbp)	#, low_to_save
	movl	$0, -396(%rbp)	#, high_to_save
	.loc 1 3484 0
	movq	$0, -296(%rbp)	#, save_area
	.loc 1 3488 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, tmp547
	movl	%eax, -360(%rbp)	# tmp547, initial_highest_arg_in_use
	.loc 1 3489 0
	movq	stack_usage_map(%rip), %rax	# stack_usage_map, tmp548
	movq	%rax, -256(%rbp)	# tmp548, initial_stack_usage_map
	.loc 1 3495 0
	movl	$0, -364(%rbp)	#, reg_parm_stack_space
	.loc 1 3500 0
	movl	$16, -404(%rbp)	#, flags
	.loc 1 3502 0
	cmpl	$8, -440(%rbp)	#, fn_type
	ja	.L523	#,
	movl	-440(%rbp), %eax	# fn_type, tmp549
	movq	.L525(,%rax,8), %rax	#, tmp550
	jmp	*%rax	# tmp550
	.section	.rodata
	.align 8
	.align 4
.L525:
	.quad	.L649
	.quad	.L526
	.quad	.L527
	.quad	.L528
	.quad	.L529
	.quad	.L530
	.quad	.L531
	.quad	.L532
	.quad	.L533
	.text
.L526:
	.loc 1 3507 0
	orl	$1, -404(%rbp)	#, flags
	.loc 1 3508 0
	jmp	.L523	#
.L527:
	.loc 1 3510 0
	orl	$512, -404(%rbp)	#, flags
	.loc 1 3511 0
	jmp	.L523	#
.L528:
	.loc 1 3513 0
	orl	$4097, -404(%rbp)	#, flags
	.loc 1 3514 0
	jmp	.L523	#
.L529:
	.loc 1 3516 0
	orl	$4608, -404(%rbp)	#, flags
	.loc 1 3517 0
	jmp	.L523	#
.L530:
	.loc 1 3519 0
	orl	$2, -404(%rbp)	#, flags
	.loc 1 3520 0
	jmp	.L523	#
.L531:
	.loc 1 3522 0
	movl	$2, -404(%rbp)	#, flags
	.loc 1 3523 0
	jmp	.L523	#
.L532:
	.loc 1 3525 0
	movl	$2048, -404(%rbp)	#, flags
	.loc 1 3526 0
	jmp	.L523	#
.L533:
	.loc 1 3528 0
	movl	$32, -404(%rbp)	#, flags
	.loc 1 3529 0
	jmp	.L523	#
.L649:
	.loc 1 3505 0
	nop
.L523:
	.loc 1 3531 0
	movq	-448(%rbp), %rax	# orgfun, tmp551
	movq	%rax, -248(%rbp)	# tmp551, fun
	.loc 1 3535 0
	movq	cfun(%rip), %rax	# cfun, cfun.295
	movl	404(%rax), %edx	# cfun.295_83->preferred_stack_boundary, D.17619
	movl	ix86_preferred_stack_boundary(%rip), %eax	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.296
	cmpl	%eax, %edx	# ix86_preferred_stack_boundary.296, D.17619
	jge	.L534	#,
	.loc 1 3536 0
	movq	cfun(%rip), %rax	# cfun, cfun.297
	movl	ix86_preferred_stack_boundary(%rip), %edx	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.298
	movl	%edx, 404(%rax)	# ix86_preferred_stack_boundary.298, cfun.297_86->preferred_stack_boundary
.L534:
	.loc 1 3540 0
	cmpl	$0, -460(%rbp)	#, outmode
	je	.L535	#,
	.loc 1 3540 0 is_stmt 0 discriminator 1
	movl	-460(%rbp), %eax	# outmode, tmp552
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp552,
	call	type_for_mode	#
	movq	%rax, %rdi	# D.17620,
	call	aggregate_value_p	#
	testl	%eax, %eax	# D.17619
	je	.L535	#,
	.loc 1 3551 0 is_stmt 1
	movl	-460(%rbp), %eax	# outmode, outmode.299
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17621
	movzbl	%al, %eax	# D.17621, tmp554
	movl	%eax, -408(%rbp)	# tmp554, struct_value_size
	.loc 1 3552 0
	cmpq	$0, -456(%rbp)	#, value
	je	.L536	#,
	.loc 1 3552 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# value, tmp555
	movzwl	(%rax), %eax	# value_94(D)->code, D.17622
	cmpw	$66, %ax	#, D.17622
	jne	.L536	#,
	.loc 1 3553 0 is_stmt 1
	movq	-456(%rbp), %rax	# value, tmp556
	movq	%rax, -304(%rbp)	# tmp556, mem_value
	jmp	.L537	#
.L536:
	.loc 1 3555 0
	movl	-460(%rbp), %eax	# outmode, tmp557
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp557,
	call	type_for_mode	#
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17620,
	call	assign_temp	#
	movq	%rax, -304(%rbp)	# tmp558, mem_value
.L537:
	.loc 1 3559 0
	andl	$-4610, -404(%rbp)	#, flags
.L535:
	.loc 1 3571 0
	movl	-464(%rbp), %eax	# nargs, tmp559
	addl	$1, %eax	#, D.17619
	movslq	%eax, %rdx	# D.17619, D.17623
	movq	%rdx, %rax	# D.17623, tmp560
	salq	$3, %rax	#, tmp560
	addq	%rdx, %rax	# D.17623, tmp560
	salq	$3, %rax	#, tmp561
	leaq	15(%rax), %rdx	#, tmp562
	movl	$16, %eax	#, tmp1011
	subq	$1, %rax	#, tmp563
	addq	%rdx, %rax	# tmp562, tmp564
	movl	$16, %ebx	#, tmp1012
	movl	$0, %edx	#, tmp567
	divq	%rbx	# tmp1012
	imulq	$16, %rax, %rax	#, tmp566, tmp568
	subq	%rax, %rsp	# tmp568,
	leaq	48(%rsp), %rax	#, tmp569
	addq	$15, %rax	#, tmp570
	shrq	$4, %rax	#, tmp571
	salq	$4, %rax	#, tmp572
	movq	%rax, -240(%rbp)	# tmp572, argvec
	.loc 1 3572 0
	movl	-464(%rbp), %eax	# nargs, tmp573
	addl	$1, %eax	#, D.17619
	movslq	%eax, %rdx	# D.17619, D.17623
	movq	%rdx, %rax	# D.17623, tmp574
	salq	$3, %rax	#, tmp574
	addq	%rdx, %rax	# D.17623, tmp574
	salq	$3, %rax	#, tmp575
	movq	%rax, %rdx	# tmp574, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp576
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp576,
	call	memset	#
	.loc 1 3577 0
	movq	-248(%rbp), %rdx	# fun, tmp577
	leaq	-80(%rbp), %rax	#, tmp578
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp578,
	call	init_cumulative_args	#
	.loc 1 3580 0
	movq	$0, -128(%rbp)	#, args_size.constant
	.loc 1 3581 0
	movq	$0, -120(%rbp)	#, args_size.var
	.loc 1 3583 0
	movl	$0, -412(%rbp)	#, count
	.loc 1 3587 0
	movl	-404(%rbp), %eax	# flags, tmp579
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L538	#,
	.loc 1 3588 0
	call	start_sequence	#
.L538:
	.loc 1 3590 0
	call	push_temp_slots	#
	.loc 1 3594 0
	cmpq	$0, -304(%rbp)	#, mem_value
	je	.L539	#,
	.loc 1 3594 0 is_stmt 0 discriminator 1
	movq	struct_value_rtx(%rip), %rax	# struct_value_rtx, struct_value_rtx.300
	testq	%rax, %rax	# struct_value_rtx.300
	jne	.L539	#,
	cmpl	$0, -368(%rbp)	#, pcc_struct_value
	jne	.L539	#,
.LBB40:
	.loc 1 3596 0 is_stmt 1
	movq	-304(%rbp), %rax	# mem_value, tmp580
	movq	8(%rax), %rax	# mem_value_19->fld[0].rtx, tmp581
	movq	%rax, -288(%rbp)	# tmp581, addr
	.loc 1 3597 0
	addl	$1, -464(%rbp)	#, nargs
	.loc 1 3600 0
	movq	-288(%rbp), %rax	# addr, tmp582
	movzwl	(%rax), %eax	# addr_111->code, D.17622
	cmpw	$61, %ax	#, D.17622
	je	.L540	#,
	.loc 1 3600 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# addr, tmp583
	movzwl	(%rax), %eax	# addr_111->code, D.17622
	cmpw	$66, %ax	#, D.17622
	je	.L540	#,
	.loc 1 3601 0 is_stmt 1
	movq	-288(%rbp), %rax	# addr, tmp584
	movzwl	(%rax), %eax	# addr_111->code, D.17622
	cmpw	$67, %ax	#, D.17622
	je	.L540	#,
	.loc 1 3601 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# addr, tmp585
	movzwl	(%rax), %eax	# addr_111->code, D.17622
	cmpw	$68, %ax	#, D.17622
	je	.L540	#,
	movq	-288(%rbp), %rax	# addr, tmp586
	movzwl	(%rax), %eax	# addr_111->code, D.17622
	cmpw	$54, %ax	#, D.17622
	je	.L540	#,
	movq	-288(%rbp), %rax	# addr, tmp587
	movzwl	(%rax), %eax	# addr_111->code, D.17622
	cmpw	$55, %ax	#, D.17622
	je	.L540	#,
	movq	-288(%rbp), %rax	# addr, tmp588
	movzwl	(%rax), %eax	# addr_111->code, D.17622
	cmpw	$58, %ax	#, D.17622
	je	.L540	#,
	movq	-288(%rbp), %rax	# addr, tmp589
	movzwl	(%rax), %eax	# addr_111->code, D.17622
	cmpw	$134, %ax	#, D.17622
	je	.L540	#,
	movq	-288(%rbp), %rax	# addr, tmp590
	movzwl	(%rax), %eax	# addr_111->code, D.17622
	cmpw	$56, %ax	#, D.17622
	je	.L540	#,
	movq	-288(%rbp), %rax	# addr, tmp591
	movzwl	(%rax), %eax	# addr_111->code, D.17622
	cmpw	$140, %ax	#, D.17622
	je	.L540	#,
	.loc 1 3602 0 is_stmt 1
	movq	-288(%rbp), %rax	# addr, tmp592
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp592,
	call	force_operand	#
	movq	%rax, -288(%rbp)	# tmp593, addr
.L540:
	.loc 1 3604 0
	movl	-412(%rbp), %eax	# count, tmp594
	movslq	%eax, %rdx	# tmp594, D.17623
	movq	%rdx, %rax	# D.17623, tmp595
	salq	$3, %rax	#, tmp595
	addq	%rdx, %rax	# D.17623, tmp595
	salq	$3, %rax	#, tmp596
	movq	%rax, %rdx	# tmp595, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp597
	addq	%rax, %rdx	# tmp597, D.17624
	movq	-288(%rbp), %rax	# addr, tmp598
	movq	%rax, (%rdx)	# tmp598, _126->value
	.loc 1 3605 0
	movl	-412(%rbp), %eax	# count, tmp599
	movslq	%eax, %rdx	# tmp599, D.17623
	movq	%rdx, %rax	# D.17623, tmp600
	salq	$3, %rax	#, tmp600
	addq	%rdx, %rax	# D.17623, tmp600
	salq	$3, %rax	#, tmp601
	movq	%rax, %rdx	# tmp600, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp602
	addq	%rax, %rdx	# tmp602, D.17624
	movl	target_flags(%rip), %eax	# target_flags, target_flags.302
	andl	$33554432, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L541	#,
	.loc 1 3605 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.301
	jmp	.L542	#
.L541:
	.loc 1 3605 0 discriminator 2
	movl	$4, %eax	#, iftmp.301
.L542:
	.loc 1 3605 0 discriminator 3
	movl	%eax, 8(%rdx)	# iftmp.301, _129->mode
	.loc 1 3606 0 is_stmt 1 discriminator 3
	movl	-412(%rbp), %eax	# count, tmp603
	movslq	%eax, %rdx	# tmp603, D.17623
	movq	%rdx, %rax	# D.17623, tmp604
	salq	$3, %rax	#, tmp604
	addq	%rdx, %rax	# D.17623, tmp604
	salq	$3, %rax	#, tmp605
	movq	%rax, %rdx	# tmp604, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp606
	addq	%rdx, %rax	# D.17623, D.17624
	movl	$0, 24(%rax)	#, _136->partial
	.loc 1 3608 0 discriminator 3
	movl	-412(%rbp), %eax	# count, tmp607
	movslq	%eax, %rdx	# tmp607, D.17623
	movq	%rdx, %rax	# D.17623, tmp608
	salq	$3, %rax	#, tmp608
	addq	%rdx, %rax	# D.17623, tmp608
	salq	$3, %rax	#, tmp609
	movq	%rax, %rdx	# tmp608, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp610
	leaq	(%rdx,%rax), %rbx	#, D.17624
	movl	target_flags(%rip), %eax	# target_flags, target_flags.304
	andl	$33554432, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L543	#,
	.loc 1 3608 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.303
	jmp	.L544	#
.L543:
	.loc 1 3608 0 discriminator 2
	movl	$4, %eax	#, iftmp.303
.L544:
	.loc 1 3608 0 discriminator 3
	leaq	-80(%rbp), %rdi	#, tmp611
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# iftmp.303,
	call	function_arg	#
	movq	%rax, 16(%rbx)	# D.17625, _139->reg
	.loc 1 3621 0 is_stmt 1 discriminator 3
	movl	-412(%rbp), %eax	# count, tmp612
	movslq	%eax, %rdx	# tmp612, D.17623
	movq	%rdx, %rax	# D.17623, tmp613
	salq	$3, %rax	#, tmp613
	addq	%rdx, %rax	# D.17623, tmp613
	salq	$3, %rax	#, tmp614
	movq	%rax, %rdx	# tmp613, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp615
	addq	%rdx, %rax	# D.17623, D.17624
	.loc 1 3614 0 discriminator 3
	leaq	48(%rax), %rdi	#, D.17626
	.loc 1 3620 0 discriminator 3
	movl	-412(%rbp), %eax	# count, tmp616
	movslq	%eax, %rdx	# tmp616, D.17623
	movq	%rdx, %rax	# D.17623, tmp617
	salq	$3, %rax	#, tmp617
	addq	%rdx, %rax	# D.17623, tmp617
	salq	$3, %rax	#, tmp618
	movq	%rax, %rdx	# tmp617, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp619
	addq	%rdx, %rax	# D.17623, D.17624
	.loc 1 3614 0 discriminator 3
	leaq	32(%rax), %r8	#, D.17626
	.loc 1 3618 0 discriminator 3
	movl	-412(%rbp), %eax	# count, tmp620
	movslq	%eax, %rdx	# tmp620, D.17623
	movq	%rdx, %rax	# D.17623, tmp621
	salq	$3, %rax	#, tmp621
	addq	%rdx, %rax	# D.17623, tmp621
	salq	$3, %rax	#, tmp622
	movq	%rax, %rdx	# tmp621, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp623
	addq	%rdx, %rax	# D.17623, D.17624
	movq	16(%rax), %rax	# _155->reg, D.17625
	.loc 1 3614 0 discriminator 3
	testq	%rax, %rax	# D.17625
	setne	%al	#, D.17627
	movzbl	%al, %edx	# D.17627, D.17619
	movl	target_flags(%rip), %eax	# target_flags, target_flags.306
	andl	$33554432, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L545	#,
	.loc 1 3614 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.305
	jmp	.L546	#
.L545:
	.loc 1 3614 0 discriminator 2
	movl	$4, %eax	#, iftmp.305
.L546:
	.loc 1 3614 0 discriminator 3
	leaq	-128(%rbp), %rsi	#, tmp624
	leaq	-96(%rbp), %rcx	#, tmp625
	movq	%rcx, 8(%rsp)	# tmp625,
	movq	%rdi, (%rsp)	# D.17626,
	movq	%r8, %r9	# D.17626,
	movq	%rsi, %r8	# tmp624,
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# iftmp.305,
	call	locate_and_pad_parm	#
	.loc 1 3623 0 is_stmt 1 discriminator 3
	movl	-412(%rbp), %eax	# count, tmp626
	movslq	%eax, %rdx	# tmp626, D.17623
	movq	%rdx, %rax	# D.17623, tmp627
	salq	$3, %rax	#, tmp627
	addq	%rdx, %rax	# D.17623, tmp627
	salq	$3, %rax	#, tmp628
	movq	%rax, %rdx	# tmp627, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp629
	addq	%rdx, %rax	# D.17623, D.17624
	movq	16(%rax), %rax	# _165->reg, D.17625
	testq	%rax, %rax	# D.17625
	je	.L547	#,
	.loc 1 3623 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# count, tmp630
	movslq	%eax, %rdx	# tmp630, D.17623
	movq	%rdx, %rax	# D.17623, tmp631
	salq	$3, %rax	#, tmp631
	addq	%rdx, %rax	# D.17623, tmp631
	salq	$3, %rax	#, tmp632
	movq	%rax, %rdx	# tmp631, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp633
	addq	%rdx, %rax	# D.17623, D.17624
	movl	24(%rax), %eax	# _169->partial, D.17619
	testl	%eax, %eax	# D.17619
	jne	.L547	#,
	.loc 1 3624 0 is_stmt 1
	cmpl	$0, -364(%rbp)	#, reg_parm_stack_space
	jle	.L548	#,
.L547:
	.loc 1 3625 0
	movq	-128(%rbp), %rcx	# args_size.constant, D.17628
	movl	-412(%rbp), %eax	# count, tmp634
	movslq	%eax, %rdx	# tmp634, D.17623
	movq	%rdx, %rax	# D.17623, tmp635
	salq	$3, %rax	#, tmp635
	addq	%rdx, %rax	# D.17623, tmp635
	salq	$3, %rax	#, tmp636
	movq	%rax, %rdx	# tmp635, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp637
	addq	%rdx, %rax	# D.17623, D.17624
	movq	48(%rax), %rax	# _174->size.constant, D.17628
	addq	%rcx, %rax	# D.17628, D.17628
	movq	%rax, -128(%rbp)	# D.17628, args_size.constant
.L548:
	.loc 1 3627 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.308
	andl	$33554432, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L549	#,
	.loc 1 3627 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.307
	jmp	.L550	#
.L549:
	.loc 1 3627 0 discriminator 2
	movl	$4, %eax	#, iftmp.307
.L550:
	.loc 1 3627 0 discriminator 3
	leaq	-80(%rbp), %rdi	#, tmp638
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# iftmp.307,
	call	function_arg_advance	#
	.loc 1 3629 0 is_stmt 1 discriminator 3
	addl	$1, -412(%rbp)	#, count
.LBE40:
	.loc 1 3632 0 discriminator 3
	jmp	.L551	#
.L539:
	.loc 1 3632 0 is_stmt 0
	jmp	.L551	#
.L565:
.LBB41:
	.loc 1 3634 0 is_stmt 1
	movq	16(%rbp), %rax	# p, tmp639
	movl	(%rax), %eax	# p_182(D)->gp_offset, D.17629
	cmpl	$48, %eax	#, D.17629
	jae	.L552	#,
	.loc 1 3634 0 is_stmt 0 discriminator 2
	movq	16(%rbp), %rax	# p, tmp640
	movq	16(%rax), %rdx	# p_182(D)->reg_save_area, D.17630
	movq	16(%rbp), %rax	# p, tmp641
	movl	(%rax), %eax	# p_182(D)->gp_offset, D.17629
	movl	%eax, %eax	# D.17629, D.17631
	addq	%rdx, %rax	# D.17630, addr.309
	movq	16(%rbp), %rdx	# p, tmp642
	movl	(%rdx), %edx	# p_182(D)->gp_offset, D.17629
	leal	8(%rdx), %ecx	#, D.17629
	movq	16(%rbp), %rdx	# p, tmp643
	movl	%ecx, (%rdx)	# D.17629, p_182(D)->gp_offset
	jmp	.L553	#
.L552:
	.loc 1 3634 0 discriminator 1
	movq	16(%rbp), %rax	# p, tmp644
	movq	8(%rax), %rdx	# p_182(D)->overflow_arg_area, D.17630
	movq	%rdx, %rax	# D.17630, addr.309
	leaq	8(%rdx), %rcx	#, D.17630
	movq	16(%rbp), %rdx	# p, tmp645
	movq	%rcx, 8(%rdx)	# D.17630, p_182(D)->overflow_arg_area
.L553:
	movq	(%rax), %rax	# MEM[(struct rtx_def * * {ref-all})addr.309_46], tmp646
	movq	%rax, -280(%rbp)	# tmp646, val
	.loc 1 3635 0 is_stmt 1 discriminator 1
	movq	16(%rbp), %rax	# p, tmp647
	movl	(%rax), %eax	# p_182(D)->gp_offset, D.17629
	cmpl	$48, %eax	#, D.17629
	jae	.L554	#,
	.loc 1 3635 0 is_stmt 0 discriminator 2
	movq	16(%rbp), %rax	# p, tmp648
	movq	16(%rax), %rdx	# p_182(D)->reg_save_area, D.17630
	movq	16(%rbp), %rax	# p, tmp649
	movl	(%rax), %eax	# p_182(D)->gp_offset, D.17629
	movl	%eax, %eax	# D.17629, D.17631
	addq	%rdx, %rax	# D.17630, addr.310
	movq	16(%rbp), %rdx	# p, tmp650
	movl	(%rdx), %edx	# p_182(D)->gp_offset, D.17629
	leal	8(%rdx), %ecx	#, D.17629
	movq	16(%rbp), %rdx	# p, tmp651
	movl	%ecx, (%rdx)	# D.17629, p_182(D)->gp_offset
	jmp	.L555	#
.L554:
	.loc 1 3635 0 discriminator 1
	movq	16(%rbp), %rax	# p, tmp652
	movq	8(%rax), %rdx	# p_182(D)->overflow_arg_area, D.17630
	movq	%rdx, %rax	# D.17630, addr.310
	leaq	8(%rdx), %rcx	#, D.17630
	movq	16(%rbp), %rdx	# p, tmp653
	movq	%rcx, 8(%rdx)	# D.17630, p_182(D)->overflow_arg_area
.L555:
	movl	(%rax), %eax	# MEM[(machine_mode * {ref-all})addr.310_47], tmp654
	movl	%eax, -356(%rbp)	# tmp654, mode
	.loc 1 3639 0 is_stmt 1 discriminator 1
	cmpl	$51, -356(%rbp)	#, mode
	je	.L556	#,
	.loc 1 3640 0
	movq	-280(%rbp), %rax	# val, tmp655
	movzbl	2(%rax), %eax	# val_193->mode, D.17621
	movzbl	%al, %eax	# D.17621, D.17629
	cmpl	-356(%rbp), %eax	# mode, D.17629
	je	.L557	#,
	.loc 1 3640 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# val, tmp656
	movzbl	2(%rax), %eax	# val_193->mode, D.17621
	testb	%al, %al	# D.17621
	je	.L557	#,
.L556:
	.loc 1 3641 0 is_stmt 1
	movl	$__FUNCTION__.13168, %edx	#,
	movl	$3641, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L557:
	.loc 1 3654 0
	movq	-280(%rbp), %rax	# val, tmp657
	movzwl	(%rax), %eax	# val_193->code, D.17622
	cmpw	$61, %ax	#, D.17622
	je	.L558	#,
	.loc 1 3654 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# val, tmp658
	movzwl	(%rax), %eax	# val_193->code, D.17622
	cmpw	$66, %ax	#, D.17622
	je	.L558	#,
	.loc 1 3655 0 is_stmt 1
	movq	-280(%rbp), %rax	# val, tmp659
	movzwl	(%rax), %eax	# val_193->code, D.17622
	cmpw	$67, %ax	#, D.17622
	je	.L558	#,
	.loc 1 3655 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# val, tmp660
	movzwl	(%rax), %eax	# val_193->code, D.17622
	cmpw	$68, %ax	#, D.17622
	je	.L558	#,
	movq	-280(%rbp), %rax	# val, tmp661
	movzwl	(%rax), %eax	# val_193->code, D.17622
	cmpw	$54, %ax	#, D.17622
	je	.L558	#,
	movq	-280(%rbp), %rax	# val, tmp662
	movzwl	(%rax), %eax	# val_193->code, D.17622
	cmpw	$55, %ax	#, D.17622
	je	.L558	#,
	movq	-280(%rbp), %rax	# val, tmp663
	movzwl	(%rax), %eax	# val_193->code, D.17622
	cmpw	$58, %ax	#, D.17622
	je	.L558	#,
	movq	-280(%rbp), %rax	# val, tmp664
	movzwl	(%rax), %eax	# val_193->code, D.17622
	cmpw	$134, %ax	#, D.17622
	je	.L558	#,
	movq	-280(%rbp), %rax	# val, tmp665
	movzwl	(%rax), %eax	# val_193->code, D.17622
	cmpw	$56, %ax	#, D.17622
	je	.L558	#,
	movq	-280(%rbp), %rax	# val, tmp666
	movzwl	(%rax), %eax	# val_193->code, D.17622
	cmpw	$140, %ax	#, D.17622
	je	.L558	#,
	.loc 1 3656 0 is_stmt 1
	movq	-280(%rbp), %rax	# val, tmp667
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp667,
	call	force_operand	#
	movq	%rax, -280(%rbp)	# tmp668, val
.L558:
	.loc 1 3702 0
	movl	-412(%rbp), %eax	# count, tmp669
	movslq	%eax, %rdx	# tmp669, D.17623
	movq	%rdx, %rax	# D.17623, tmp670
	salq	$3, %rax	#, tmp670
	addq	%rdx, %rax	# D.17623, tmp670
	salq	$3, %rax	#, tmp671
	movq	%rax, %rdx	# tmp670, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp672
	addq	%rax, %rdx	# tmp672, D.17624
	movq	-280(%rbp), %rax	# val, tmp673
	movq	%rax, (%rdx)	# tmp673, _221->value
	.loc 1 3703 0
	movl	-412(%rbp), %eax	# count, tmp674
	movslq	%eax, %rdx	# tmp674, D.17623
	movq	%rdx, %rax	# D.17623, tmp675
	salq	$3, %rax	#, tmp675
	addq	%rdx, %rax	# D.17623, tmp675
	salq	$3, %rax	#, tmp676
	movq	%rax, %rdx	# tmp675, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp677
	addq	%rax, %rdx	# tmp677, D.17624
	movl	-356(%rbp), %eax	# mode, tmp678
	movl	%eax, 8(%rdx)	# tmp678, _224->mode
	.loc 1 3705 0
	movl	-412(%rbp), %eax	# count, tmp679
	movslq	%eax, %rdx	# tmp679, D.17623
	movq	%rdx, %rax	# D.17623, tmp680
	salq	$3, %rax	#, tmp680
	addq	%rdx, %rax	# D.17623, tmp680
	salq	$3, %rax	#, tmp681
	movq	%rax, %rdx	# tmp680, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp682
	leaq	(%rdx,%rax), %rbx	#, D.17624
	movl	-356(%rbp), %esi	# mode, tmp683
	leaq	-80(%rbp), %rax	#, tmp684
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp684,
	call	function_arg	#
	movq	%rax, 16(%rbx)	# D.17625, _227->reg
	.loc 1 3708 0
	movl	-412(%rbp), %eax	# count, tmp685
	movslq	%eax, %rdx	# tmp685, D.17623
	movq	%rdx, %rax	# D.17623, tmp686
	salq	$3, %rax	#, tmp686
	addq	%rdx, %rax	# D.17623, tmp686
	salq	$3, %rax	#, tmp687
	movq	%rax, %rdx	# tmp686, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp688
	addq	%rdx, %rax	# D.17623, D.17624
	.loc 1 3709 0
	movl	$0, 24(%rax)	#, _231->partial
	.loc 1 3721 0
	movl	-412(%rbp), %eax	# count, tmp689
	movslq	%eax, %rdx	# tmp689, D.17623
	movq	%rdx, %rax	# D.17623, tmp690
	salq	$3, %rax	#, tmp690
	addq	%rdx, %rax	# D.17623, tmp690
	salq	$3, %rax	#, tmp691
	movq	%rax, %rdx	# tmp690, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp692
	addq	%rdx, %rax	# D.17623, D.17624
	.loc 1 3714 0
	leaq	48(%rax), %rdi	#, D.17626
	.loc 1 3720 0
	movl	-412(%rbp), %eax	# count, tmp693
	movslq	%eax, %rdx	# tmp693, D.17623
	movq	%rdx, %rax	# D.17623, tmp694
	salq	$3, %rax	#, tmp694
	addq	%rdx, %rax	# D.17623, tmp694
	salq	$3, %rax	#, tmp695
	movq	%rax, %rdx	# tmp694, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp696
	addq	%rdx, %rax	# D.17623, D.17624
	.loc 1 3714 0
	leaq	32(%rax), %r8	#, D.17626
	.loc 1 3718 0
	movl	-412(%rbp), %eax	# count, tmp697
	movslq	%eax, %rdx	# tmp697, D.17623
	movq	%rdx, %rax	# D.17623, tmp698
	salq	$3, %rax	#, tmp698
	addq	%rdx, %rax	# D.17623, tmp698
	salq	$3, %rax	#, tmp699
	movq	%rax, %rdx	# tmp698, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp700
	addq	%rdx, %rax	# D.17623, D.17624
	movq	16(%rax), %rax	# _242->reg, D.17625
	.loc 1 3714 0
	testq	%rax, %rax	# D.17625
	setne	%al	#, D.17627
	movzbl	%al, %edx	# D.17627, D.17619
	leaq	-128(%rbp), %rsi	#, tmp701
	movl	-356(%rbp), %eax	# mode, tmp702
	leaq	-96(%rbp), %rcx	#, tmp703
	movq	%rcx, 8(%rsp)	# tmp703,
	movq	%rdi, (%rsp)	# D.17626,
	movq	%r8, %r9	# D.17626,
	movq	%rsi, %r8	# tmp701,
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp702,
	call	locate_and_pad_parm	#
	.loc 1 3723 0
	movl	-412(%rbp), %eax	# count, tmp704
	movslq	%eax, %rdx	# tmp704, D.17623
	movq	%rdx, %rax	# D.17623, tmp705
	salq	$3, %rax	#, tmp705
	addq	%rdx, %rax	# D.17623, tmp705
	salq	$3, %rax	#, tmp706
	movq	%rax, %rdx	# tmp705, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp707
	addq	%rdx, %rax	# D.17623, D.17624
	movq	56(%rax), %rax	# _248->size.var, D.17620
	testq	%rax, %rax	# D.17620
	je	.L559	#,
	.loc 1 3724 0
	movl	$__FUNCTION__.13168, %edx	#,
	movl	$3724, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L559:
	.loc 1 3726 0
	cmpl	$0, -364(%rbp)	#, reg_parm_stack_space
	jne	.L560	#,
	.loc 1 3726 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# count, tmp708
	movslq	%eax, %rdx	# tmp708, D.17623
	movq	%rdx, %rax	# D.17623, tmp709
	salq	$3, %rax	#, tmp709
	addq	%rdx, %rax	# D.17623, tmp709
	salq	$3, %rax	#, tmp710
	movq	%rax, %rdx	# tmp709, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp711
	addq	%rdx, %rax	# D.17623, D.17624
	movl	24(%rax), %eax	# _252->partial, D.17619
	testl	%eax, %eax	# D.17619
	je	.L560	#,
	.loc 1 3727 0 is_stmt 1
	movl	-412(%rbp), %eax	# count, tmp712
	movslq	%eax, %rdx	# tmp712, D.17623
	movq	%rdx, %rax	# D.17623, tmp713
	salq	$3, %rax	#, tmp713
	addq	%rdx, %rax	# D.17623, tmp713
	salq	$3, %rax	#, tmp714
	movq	%rax, %rdx	# tmp713, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp715
	leaq	(%rdx,%rax), %rcx	#, D.17624
	movl	-412(%rbp), %eax	# count, tmp716
	movslq	%eax, %rdx	# tmp716, D.17623
	movq	%rdx, %rax	# D.17623, tmp717
	salq	$3, %rax	#, tmp717
	addq	%rdx, %rax	# D.17623, tmp717
	salq	$3, %rax	#, tmp718
	movq	%rax, %rdx	# tmp717, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp719
	addq	%rdx, %rax	# D.17623, D.17624
	movq	48(%rax), %rsi	# _259->size.constant, D.17628
	movl	-412(%rbp), %eax	# count, tmp720
	movslq	%eax, %rdx	# tmp720, D.17623
	movq	%rdx, %rax	# D.17623, tmp721
	salq	$3, %rax	#, tmp721
	addq	%rdx, %rax	# D.17623, tmp721
	salq	$3, %rax	#, tmp722
	movq	%rax, %rdx	# tmp721, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp723
	addq	%rdx, %rax	# D.17623, D.17624
	movl	24(%rax), %edx	# _263->partial, D.17619
	movl	target_flags(%rip), %eax	# target_flags, target_flags.312
	andl	$33554432, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L561	#,
	.loc 1 3727 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.311
	jmp	.L562	#
.L561:
	.loc 1 3727 0 discriminator 2
	movl	$4, %eax	#, iftmp.311
.L562:
	.loc 1 3727 0 discriminator 3
	imull	%edx, %eax	# D.17619, D.17619
	cltq
	subq	%rax, %rsi	# D.17628, D.17628
	movq	%rsi, %rax	# D.17628, D.17628
	movq	%rax, 48(%rcx)	# D.17628, _256->size.constant
.L560:
	.loc 1 3729 0 is_stmt 1
	movl	-412(%rbp), %eax	# count, tmp724
	movslq	%eax, %rdx	# tmp724, D.17623
	movq	%rdx, %rax	# D.17623, tmp725
	salq	$3, %rax	#, tmp725
	addq	%rdx, %rax	# D.17623, tmp725
	salq	$3, %rax	#, tmp726
	movq	%rax, %rdx	# tmp725, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp727
	addq	%rdx, %rax	# D.17623, D.17624
	movq	16(%rax), %rax	# _274->reg, D.17625
	testq	%rax, %rax	# D.17625
	je	.L563	#,
	.loc 1 3729 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# count, tmp728
	movslq	%eax, %rdx	# tmp728, D.17623
	movq	%rdx, %rax	# D.17623, tmp729
	salq	$3, %rax	#, tmp729
	addq	%rdx, %rax	# D.17623, tmp729
	salq	$3, %rax	#, tmp730
	movq	%rax, %rdx	# tmp729, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp731
	addq	%rdx, %rax	# D.17623, D.17624
	movl	24(%rax), %eax	# _278->partial, D.17619
	testl	%eax, %eax	# D.17619
	jne	.L563	#,
	.loc 1 3730 0 is_stmt 1
	cmpl	$0, -364(%rbp)	#, reg_parm_stack_space
	jle	.L564	#,
.L563:
	.loc 1 3731 0
	movq	-128(%rbp), %rcx	# args_size.constant, D.17628
	movl	-412(%rbp), %eax	# count, tmp732
	movslq	%eax, %rdx	# tmp732, D.17623
	movq	%rdx, %rax	# D.17623, tmp733
	salq	$3, %rax	#, tmp733
	addq	%rdx, %rax	# D.17623, tmp733
	salq	$3, %rax	#, tmp734
	movq	%rax, %rdx	# tmp733, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp735
	addq	%rdx, %rax	# D.17623, D.17624
	movq	48(%rax), %rax	# _283->size.constant, D.17628
	addq	%rcx, %rax	# D.17628, D.17628
	movq	%rax, -128(%rbp)	# D.17628, args_size.constant
.L564:
	.loc 1 3733 0
	movl	-356(%rbp), %esi	# mode, tmp736
	leaq	-80(%rbp), %rax	#, tmp737
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp737,
	call	function_arg_advance	#
.LBE41:
	.loc 1 3632 0
	addl	$1, -412(%rbp)	#, count
.L551:
	.loc 1 3632 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# count, tmp738
	cmpl	-464(%rbp), %eax	# nargs, tmp738
	jl	.L565	#,
	.loc 1 3742 0 is_stmt 1
	movq	-248(%rbp), %rax	# fun, tmp739
	movq	%rax, %rdi	# tmp739,
	call	assemble_external_libcall	#
	.loc 1 3744 0
	movq	-128(%rbp), %rax	# args_size, tmp740
	movq	-120(%rbp), %rdx	# args_size,
	movq	%rax, -112(%rbp)	# tmp740, original_args_size
	movq	%rdx, -104(%rbp)	#, original_args_size
	.loc 1 3745 0
	movq	-128(%rbp), %rdx	# args_size.constant, D.17628
	.loc 1 3746 0
	movq	cfun(%rip), %rax	# cfun, cfun.313
	movq	16(%rax), %rax	# cfun.313_288->expr, D.17618
	movl	8(%rax), %eax	# _289->x_stack_pointer_delta, D.17619
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.17628
	.loc 1 3747 0
	movl	ix86_preferred_stack_boundary(%rip), %eax	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.314
	leal	7(%rax), %edx	#, tmp742
	testl	%eax, %eax	# tmp741
	cmovs	%edx, %eax	# tmp742,, tmp741
	sarl	$3, %eax	#, tmp743
	cltq
	addq	%rcx, %rax	# D.17628, D.17628
	leaq	-1(%rax), %rcx	#, D.17628
	.loc 1 3748 0
	movl	ix86_preferred_stack_boundary(%rip), %eax	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.315
	leal	7(%rax), %edx	#, tmp745
	testl	%eax, %eax	# tmp744
	cmovs	%edx, %eax	# tmp745,, tmp744
	sarl	$3, %eax	#, tmp746
	movslq	%eax, %rbx	# D.17619, D.17628
	movq	%rcx, %rax	# D.17628, tmp747
	cqto
	idivq	%rbx	# D.17628
	movq	%rax, %rdx	# tmp747, D.17628
	.loc 1 3749 0
	movl	ix86_preferred_stack_boundary(%rip), %eax	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.316
	leal	7(%rax), %ecx	#, tmp750
	testl	%eax, %eax	# tmp749
	cmovs	%ecx, %eax	# tmp750,, tmp749
	sarl	$3, %eax	#, tmp751
	cltq
	imulq	%rax, %rdx	# D.17628, D.17628
	.loc 1 3750 0
	movq	cfun(%rip), %rax	# cfun, cfun.317
	movq	16(%rax), %rax	# cfun.317_306->expr, D.17618
	movl	8(%rax), %eax	# _307->x_stack_pointer_delta, D.17619
	cltq
	subq	%rax, %rdx	# D.17628, D.17628
	movq	%rdx, %rax	# D.17628, D.17628
	.loc 1 3745 0
	movq	%rax, -128(%rbp)	# D.17628, args_size.constant
	.loc 1 3752 0
	movl	-364(%rbp), %eax	# reg_parm_stack_space, tmp752
	movslq	%eax, %rdx	# tmp752, D.17628
	movq	-128(%rbp), %rax	# args_size.constant, D.17628
	cmpq	%rax, %rdx	# D.17628, D.17628
	cmovge	%rdx, %rax	# D.17628,, D.17628
	movq	%rax, -128(%rbp)	# D.17628, args_size.constant
	.loc 1 3756 0
	movq	-128(%rbp), %rdx	# args_size.constant, D.17628
	movl	-364(%rbp), %eax	# reg_parm_stack_space, tmp753
	cltq
	subq	%rax, %rdx	# D.17628, D.17628
	movq	%rdx, %rax	# D.17628, D.17628
	movq	%rax, -128(%rbp)	# D.17628, args_size.constant
	.loc 1 3759 0
	movq	-128(%rbp), %rdx	# args_size.constant, D.17628
	movq	cfun(%rip), %rax	# cfun, cfun.318
	movl	76(%rax), %eax	# cfun.318_318->outgoing_args_size, D.17619
	cltq
	cmpq	%rax, %rdx	# D.17628, D.17628
	jle	.L566	#,
	.loc 1 3760 0
	movq	cfun(%rip), %rax	# cfun, cfun.319
	movq	-128(%rbp), %rdx	# args_size.constant, D.17628
	movl	%edx, 76(%rax)	# D.17619, cfun.319_321->outgoing_args_size
.L566:
	.loc 1 3762 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.320
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L567	#,
	.loc 1 3776 0
	movq	-128(%rbp), %rax	# args_size.constant, D.17628
	movl	%eax, -352(%rbp)	# D.17628, needed
	.loc 1 3782 0
	movl	-364(%rbp), %eax	# reg_parm_stack_space, tmp754
	addl	%eax, -352(%rbp)	# tmp754, needed
	.loc 1 3789 0
	movl	-360(%rbp), %eax	# initial_highest_arg_in_use, tmp755
	cmpl	%eax, -352(%rbp)	# tmp755, needed
	cmovge	-352(%rbp), %eax	# needed,, highest_outgoing_arg_in_use.321
	movl	%eax, highest_outgoing_arg_in_use(%rip)	# highest_outgoing_arg_in_use.321, highest_outgoing_arg_in_use
	.loc 1 3792 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.322
	cltq
	leaq	15(%rax), %rdx	#, tmp756
	movl	$16, %eax	#, tmp1013
	subq	$1, %rax	#, tmp757
	addq	%rdx, %rax	# tmp756, tmp758
	movl	$16, %ebx	#, tmp1014
	movl	$0, %edx	#, tmp761
	divq	%rbx	# tmp1014
	imulq	$16, %rax, %rax	#, tmp760, tmp762
	subq	%rax, %rsp	# tmp762,
	leaq	48(%rsp), %rax	#, tmp763
	addq	$15, %rax	#, tmp764
	shrq	$4, %rax	#, tmp765
	salq	$4, %rax	#, tmp766
	movq	%rax, stack_usage_map(%rip)	# stack_usage_map.323, stack_usage_map
	.loc 1 3794 0
	cmpl	$0, -360(%rbp)	#, initial_highest_arg_in_use
	je	.L568	#,
	.loc 1 3795 0
	movl	-360(%rbp), %eax	# initial_highest_arg_in_use, tmp767
	movslq	%eax, %rdx	# tmp767, D.17623
	movq	stack_usage_map(%rip), %rax	# stack_usage_map, stack_usage_map.324
	movq	-256(%rbp), %rcx	# initial_stack_usage_map, tmp768
	movq	%rcx, %rsi	# tmp768,
	movq	%rax, %rdi	# stack_usage_map.324,
	call	memcpy	#
.L568:
	.loc 1 3798 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.325
	cmpl	%eax, -360(%rbp)	# highest_outgoing_arg_in_use.325, initial_highest_arg_in_use
	je	.L569	#,
	.loc 1 3800 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.326
	subl	-360(%rbp), %eax	# initial_highest_arg_in_use, D.17619
	.loc 1 3799 0
	cltq
	movq	stack_usage_map(%rip), %rcx	# stack_usage_map, stack_usage_map.327
	movl	-360(%rbp), %edx	# initial_highest_arg_in_use, tmp769
	movslq	%edx, %rdx	# tmp769, D.17631
	addq	%rdx, %rcx	# D.17631, D.17630
	movq	%rax, %rdx	# D.17623,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# D.17630,
	call	memset	#
.L569:
	.loc 1 3801 0
	movl	$0, -352(%rbp)	#, needed
	.loc 1 3808 0
	movl	virtuals_instantiated(%rip), %eax	# virtuals_instantiated, virtuals_instantiated.328
	testl	%eax, %eax	# virtuals_instantiated.328
	je	.L570	#,
	.loc 1 3809 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.17625
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17625,
	call	plus_constant_wide	#
	movq	%rax, -312(%rbp)	# tmp770, argblock
	jmp	.L572	#
.L570:
	.loc 1 3811 0
	movq	global_rtl+72(%rip), %rax	# global_rtl, tmp771
	movq	%rax, -312(%rbp)	# tmp771, argblock
	jmp	.L572	#
.L567:
	.loc 1 3815 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.329
	andl	$2048, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	jne	.L573	#,
	.loc 1 3815 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.330
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L572	#,
.L573:
	.loc 1 3816 0 is_stmt 1
	movq	-128(%rbp), %rax	# args_size.constant, D.17628
	movq	%rax, %rsi	# D.17628,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17625,
	call	push_block	#
	movq	%rax, -312(%rbp)	# tmp772, argblock
.L572:
	.loc 1 3821 0
	cmpq	$0, -312(%rbp)	#, argblock
	jne	.L574	#,
	.loc 1 3821 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.331
	andl	$2048, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	jne	.L574	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.332
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	jne	.L574	#,
	.loc 1 3822 0 is_stmt 1
	movq	-128(%rbp), %rdx	# args_size.constant, D.17628
	movq	-112(%rbp), %rax	# original_args_size.constant, D.17628
	subq	%rax, %rdx	# D.17628, D.17628
	movq	%rdx, %rax	# D.17628, D.17628
	movq	%rax, %rsi	# D.17628,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdi	# D.17625,
	call	anti_adjust_stack	#
.L574:
	.loc 1 3825 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.333
	andl	$2048, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	jne	.L575	#,
	.loc 1 3825 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.334
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	jne	.L575	#,
	.loc 1 3827 0 is_stmt 1
	movl	$-1, -416(%rbp)	#, inc
	.loc 1 3828 0
	movl	-464(%rbp), %eax	# nargs, tmp776
	subl	$1, %eax	#, tmp775
	movl	%eax, -420(%rbp)	# tmp775, argnum
	jmp	.L576	#
.L575:
	.loc 1 3832 0
	movl	$1, -416(%rbp)	#, inc
	.loc 1 3833 0
	movl	$0, -420(%rbp)	#, argnum
.L576:
	.loc 1 3837 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.335
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L577	#,
	.loc 1 3848 0
	movl	$0, -412(%rbp)	#, count
	jmp	.L578	#
.L583:
	.loc 1 3851 0
	movl	highest_outgoing_arg_in_use(%rip), %eax	# highest_outgoing_arg_in_use, highest_outgoing_arg_in_use.336
	cmpl	%eax, -412(%rbp)	# highest_outgoing_arg_in_use.336, count
	jge	.L579	#,
	.loc 1 3852 0
	movq	stack_usage_map(%rip), %rdx	# stack_usage_map, stack_usage_map.337
	movl	-412(%rbp), %eax	# count, tmp777
	cltq
	addq	%rdx, %rax	# stack_usage_map.337, D.17632
	movzbl	(%rax), %eax	# *_376, D.17633
	testb	%al, %al	# D.17633
	jne	.L580	#,
.L579:
	.loc 1 3853 0
	jmp	.L581	#
.L580:
	.loc 1 3855 0
	cmpl	$-1, -400(%rbp)	#, low_to_save
	jne	.L582	#,
	.loc 1 3856 0
	movl	-412(%rbp), %eax	# count, tmp778
	movl	%eax, -400(%rbp)	# tmp778, low_to_save
.L582:
	.loc 1 3858 0
	movl	-412(%rbp), %eax	# count, tmp779
	movl	%eax, -396(%rbp)	# tmp779, high_to_save
.L581:
	.loc 1 3848 0
	addl	$1, -412(%rbp)	#, count
.L578:
	.loc 1 3848 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# count, tmp780
	cmpl	-364(%rbp), %eax	# reg_parm_stack_space, tmp780
	jl	.L583	#,
	.loc 1 3861 0 is_stmt 1
	cmpl	$0, -400(%rbp)	#, low_to_save
	js	.L577	#,
.LBB42:
	.loc 1 3863 0
	movl	-400(%rbp), %eax	# low_to_save, tmp781
	movl	-396(%rbp), %edx	# high_to_save, tmp782
	subl	%eax, %edx	# tmp781, D.17619
	movl	%edx, %eax	# D.17619, D.17619
	addl	$1, %eax	#, tmp783
	movl	%eax, -348(%rbp)	# tmp783, num_to_save
	.loc 1 3865 0
	movl	-348(%rbp), %eax	# num_to_save, tmp784
	sall	$3, %eax	#, D.17619
	.loc 1 3864 0
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.17629,
	call	mode_for_size	#
	movl	%eax, -392(%rbp)	# tmp785, save_mode
	.loc 1 3869 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.339
	andl	$33554432, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L584	#,
	.loc 1 3869 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, iftmp.338
	jmp	.L585	#
.L584:
	.loc 1 3869 0 discriminator 2
	movl	$32, %eax	#, iftmp.338
.L585:
	.loc 1 3869 0 discriminator 3
	movl	-392(%rbp), %edx	# save_mode, save_mode.340
	movslq	%edx, %rdx	# save_mode.340, tmp786
	movzbl	mode_size(%rdx), %edx	# mode_size, D.17621
	movzbl	%dl, %edx	# D.17621, D.17619
	cmpl	%edx, %eax	# D.17619, iftmp.338
	cmovg	%edx, %eax	# iftmp.338,, D.17619, D.17619
	.loc 1 3870 0 is_stmt 1 discriminator 3
	subl	$1, %eax	#, D.17619
	.loc 1 3869 0 discriminator 3
	andl	-400(%rbp), %eax	# low_to_save, D.17619
	testl	%eax, %eax	# D.17619
	je	.L586	#,
	.loc 1 3871 0
	movl	$51, -392(%rbp)	#, save_mode
.L586:
	.loc 1 3879 0
	movl	-400(%rbp), %eax	# low_to_save, tmp787
	movslq	%eax, %rdx	# tmp787, D.17628
	movq	-312(%rbp), %rax	# argblock, tmp788
	movq	%rdx, %rsi	# D.17628,
	movq	%rax, %rdi	# tmp788,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.17625
	movl	-392(%rbp), %eax	# save_mode, tmp789
	movq	%rdx, %rsi	# D.17625,
	movl	%eax, %edi	# tmp789,
	call	memory_address	#
	movq	%rax, %rdx	#, D.17625
	movl	-392(%rbp), %eax	# save_mode, tmp790
	movq	%rdx, %rsi	# D.17625,
	movl	%eax, %edi	# tmp790,
	call	gen_rtx_MEM	#
	movq	%rax, -232(%rbp)	# tmp791, stack_area
	.loc 1 3884 0
	cmpl	$51, -392(%rbp)	#, save_mode
	jne	.L587	#,
	.loc 1 3886 0
	movl	-348(%rbp), %eax	# num_to_save, tmp792
	cltq
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.17628,
	movl	$51, %edi	#,
	call	assign_stack_temp	#
	movq	%rax, -296(%rbp)	# tmp793, save_area
	.loc 1 3887 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.342
	andl	$33554432, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L588	#,
	.loc 1 3887 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.341
	jmp	.L589	#
.L588:
	.loc 1 3887 0 discriminator 2
	movl	$32, %eax	#, iftmp.341
.L589:
	.loc 1 3887 0 discriminator 1
	movq	-296(%rbp), %rdx	# save_area, tmp794
	movl	%eax, %esi	# iftmp.341,
	movq	%rdx, %rdi	# tmp794,
	call	set_mem_align	#
	.loc 1 3888 0 is_stmt 1 discriminator 1
	movl	-348(%rbp), %eax	# num_to_save, tmp795
	cltq
	movq	%rax, %rsi	# D.17628,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rbx	#, D.17625
	movq	-296(%rbp), %rax	# save_area, tmp796
	movq	%rax, %rdi	# tmp796,
	call	validize_mem	#
	movq	-232(%rbp), %rcx	# stack_area, tmp797
	movq	%rbx, %rdx	# D.17625,
	movq	%rcx, %rsi	# tmp797,
	movq	%rax, %rdi	# D.17625,
	call	emit_block_move	#
	jmp	.L577	#
.L587:
	.loc 1 3893 0
	movl	-392(%rbp), %eax	# save_mode, tmp798
	movl	%eax, %edi	# tmp798,
	call	gen_reg_rtx	#
	movq	%rax, -296(%rbp)	# tmp799, save_area
	.loc 1 3894 0
	movq	-232(%rbp), %rdx	# stack_area, tmp800
	movq	-296(%rbp), %rax	# save_area, tmp801
	movq	%rdx, %rsi	# tmp800,
	movq	%rax, %rdi	# tmp801,
	call	emit_move_insn	#
.L577:
.LBE42:
	.loc 1 3904 0
	movl	$0, -412(%rbp)	#, count
	jmp	.L590	#
.L605:
.LBB43:
	.loc 1 3906 0
	movl	-420(%rbp), %eax	# argnum, tmp802
	movslq	%eax, %rdx	# tmp802, D.17623
	movq	%rdx, %rax	# D.17623, tmp803
	salq	$3, %rax	#, tmp803
	addq	%rdx, %rax	# D.17623, tmp803
	salq	$3, %rax	#, tmp804
	movq	%rax, %rdx	# tmp803, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp805
	addq	%rdx, %rax	# D.17623, D.17624
	movl	8(%rax), %eax	# _414->mode, tmp806
	movl	%eax, -344(%rbp)	# tmp806, mode
	.loc 1 3907 0
	movl	-420(%rbp), %eax	# argnum, tmp807
	movslq	%eax, %rdx	# tmp807, D.17623
	movq	%rdx, %rax	# D.17623, tmp808
	salq	$3, %rax	#, tmp808
	addq	%rdx, %rax	# D.17623, tmp808
	salq	$3, %rax	#, tmp809
	movq	%rax, %rdx	# tmp808, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp810
	addq	%rdx, %rax	# D.17623, D.17624
	movq	(%rax), %rax	# _418->value, tmp811
	movq	%rax, -224(%rbp)	# tmp811, val
	.loc 1 3908 0
	movl	-420(%rbp), %eax	# argnum, tmp812
	movslq	%eax, %rdx	# tmp812, D.17623
	movq	%rdx, %rax	# D.17623, tmp813
	salq	$3, %rax	#, tmp813
	addq	%rdx, %rax	# D.17623, tmp813
	salq	$3, %rax	#, tmp814
	movq	%rax, %rdx	# tmp813, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp815
	addq	%rdx, %rax	# D.17623, D.17624
	movq	16(%rax), %rax	# _422->reg, tmp816
	movq	%rax, -216(%rbp)	# tmp816, reg
	.loc 1 3909 0
	movl	-420(%rbp), %eax	# argnum, tmp817
	movslq	%eax, %rdx	# tmp817, D.17623
	movq	%rdx, %rax	# D.17623, tmp818
	salq	$3, %rax	#, tmp818
	addq	%rdx, %rax	# D.17623, tmp818
	salq	$3, %rax	#, tmp819
	movq	%rax, %rdx	# tmp818, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp820
	addq	%rdx, %rax	# D.17623, D.17624
	movl	24(%rax), %eax	# _426->partial, tmp821
	movl	%eax, -340(%rbp)	# tmp821, partial
	.loc 1 3910 0
	movl	$0, -388(%rbp)	#, lower_bound
	movl	$0, -384(%rbp)	#, upper_bound
	.loc 1 3912 0
	cmpq	$0, -216(%rbp)	#, reg
	je	.L591	#,
	.loc 1 3912 0 is_stmt 0 discriminator 1
	cmpl	$0, -340(%rbp)	#, partial
	je	.L592	#,
.L591:
	.loc 1 3914 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.343
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L593	#,
	.loc 1 3925 0
	movl	-420(%rbp), %eax	# argnum, tmp822
	movslq	%eax, %rdx	# tmp822, D.17623
	movq	%rdx, %rax	# D.17623, tmp823
	salq	$3, %rax	#, tmp823
	addq	%rdx, %rax	# D.17623, tmp823
	salq	$3, %rax	#, tmp824
	movq	%rax, %rdx	# tmp823, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp825
	addq	%rdx, %rax	# D.17623, D.17624
	movq	32(%rax), %rax	# _434->offset.constant, D.17628
	movl	%eax, -388(%rbp)	# D.17628, lower_bound
	.loc 1 3926 0
	movl	-420(%rbp), %eax	# argnum, tmp826
	movslq	%eax, %rdx	# tmp826, D.17623
	movq	%rdx, %rax	# D.17623, tmp827
	salq	$3, %rax	#, tmp827
	addq	%rdx, %rax	# D.17623, tmp827
	salq	$3, %rax	#, tmp828
	movq	%rax, %rdx	# tmp827, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp829
	addq	%rdx, %rax	# D.17623, D.17624
	movq	48(%rax), %rax	# _439->size.constant, D.17628
	movl	%eax, %edx	# D.17628, D.17634
	movl	-388(%rbp), %eax	# lower_bound, lower_bound.344
	addl	%edx, %eax	# D.17634, D.17634
	movl	%eax, -384(%rbp)	# D.17634, upper_bound
	.loc 1 3929 0
	movl	-388(%rbp), %eax	# lower_bound, tmp830
	movl	%eax, -380(%rbp)	# tmp830, i
	jmp	.L594	#
.L597:
	.loc 1 3930 0
	movq	stack_usage_map(%rip), %rdx	# stack_usage_map, stack_usage_map.345
	movl	-380(%rbp), %eax	# i, tmp831
	cltq
	addq	%rdx, %rax	# stack_usage_map.345, D.17632
	movzbl	(%rax), %eax	# *_448, D.17633
	testb	%al, %al	# D.17633
	je	.L595	#,
	.loc 1 3933 0
	movl	-380(%rbp), %eax	# i, tmp832
	cmpl	-364(%rbp), %eax	# reg_parm_stack_space, tmp832
	jle	.L595	#,
	.loc 1 3934 0
	jmp	.L596	#
.L595:
	.loc 1 3929 0
	addl	$1, -380(%rbp)	#, i
.L594:
	.loc 1 3929 0 is_stmt 0 discriminator 1
	movl	-380(%rbp), %eax	# i, tmp833
	cmpl	-384(%rbp), %eax	# upper_bound, tmp833
	jl	.L597	#,
.L596:
	.loc 1 3936 0 is_stmt 1
	movl	-380(%rbp), %eax	# i, tmp834
	cmpl	-384(%rbp), %eax	# upper_bound, tmp834
	je	.L593	#,
.LBB44:
	.loc 1 3941 0
	movl	-420(%rbp), %eax	# argnum, tmp835
	movslq	%eax, %rdx	# tmp835, D.17623
	movq	%rdx, %rax	# D.17623, tmp836
	salq	$3, %rax	#, tmp836
	addq	%rdx, %rax	# D.17623, tmp836
	salq	$3, %rax	#, tmp837
	movq	%rax, %rdx	# tmp836, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp838
	addq	%rdx, %rax	# D.17623, D.17624
	movq	48(%rax), %rax	# _453->size.constant, D.17628
	sall	$3, %eax	#, D.17629
	.loc 1 3940 0
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.17629,
	call	mode_for_size	#
	movl	%eax, -336(%rbp)	# tmp839, save_mode
	.loc 1 3949 0
	movl	-420(%rbp), %eax	# argnum, tmp840
	movslq	%eax, %rdx	# tmp840, D.17623
	movq	%rdx, %rax	# D.17623, tmp841
	salq	$3, %rax	#, tmp841
	addq	%rdx, %rax	# D.17623, tmp841
	salq	$3, %rax	#, tmp842
	movq	%rax, %rdx	# tmp841, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp843
	addq	%rdx, %rax	# D.17623, D.17624
	.loc 1 3946 0
	movq	32(%rax), %rdx	# _460->offset.constant, D.17628
	movq	-312(%rbp), %rax	# argblock, tmp844
	movq	%rdx, %rsi	# D.17628,
	movq	%rax, %rdi	# tmp844,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.17625
	movl	-336(%rbp), %eax	# save_mode, tmp845
	movq	%rdx, %rsi	# D.17625,
	movl	%eax, %edi	# tmp845,
	call	memory_address	#
	movq	%rax, %rdx	#, D.17625
	.loc 1 3944 0
	movl	-336(%rbp), %eax	# save_mode, tmp846
	movq	%rdx, %rsi	# D.17625,
	movl	%eax, %edi	# tmp846,
	call	gen_rtx_MEM	#
	movq	%rax, -208(%rbp)	# tmp847, stack_area
	.loc 1 3951 0
	movl	-420(%rbp), %eax	# argnum, tmp848
	movslq	%eax, %rdx	# tmp848, D.17623
	movq	%rdx, %rax	# D.17623, tmp849
	salq	$3, %rax	#, tmp849
	addq	%rdx, %rax	# D.17623, tmp849
	salq	$3, %rax	#, tmp850
	movq	%rax, %rdx	# tmp849, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp851
	leaq	(%rdx,%rax), %rbx	#, D.17624
	movl	-336(%rbp), %eax	# save_mode, tmp852
	movl	%eax, %edi	# tmp852,
	call	gen_reg_rtx	#
	movq	%rax, 64(%rbx)	# D.17625, _467->save_area
	.loc 1 3953 0
	movl	-420(%rbp), %eax	# argnum, tmp853
	movslq	%eax, %rdx	# tmp853, D.17623
	movq	%rdx, %rax	# D.17623, tmp854
	salq	$3, %rax	#, tmp854
	addq	%rdx, %rax	# D.17623, tmp854
	salq	$3, %rax	#, tmp855
	movq	%rax, %rdx	# tmp854, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp856
	addq	%rdx, %rax	# D.17623, D.17624
	movq	64(%rax), %rax	# _471->save_area, D.17625
	movq	-208(%rbp), %rdx	# stack_area, tmp857
	movq	%rdx, %rsi	# tmp857,
	movq	%rax, %rdi	# D.17625,
	call	emit_move_insn	#
.L593:
.LBE44:
	.loc 1 3959 0
	movq	-88(%rbp), %rax	# alignment_pad.var, D.17620
	.loc 1 3957 0
	testq	%rax, %rax	# D.17620
	jne	.L598	#,
	.loc 1 3959 0
	movq	-96(%rbp), %rax	# alignment_pad.constant, D.17628
	.loc 1 3957 0
	movq	%rax, %rsi	# D.17628,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rbx	#, iftmp.346
	jmp	.L599	#
.L598:
	.loc 1 3959 0
	movq	-88(%rbp), %rax	# alignment_pad.var, D.17620
	testq	%rax, %rax	# D.17620
	jne	.L600	#,
	.loc 1 3959 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# alignment_pad.constant, D.17628
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17628,
	call	size_int_wide	#
	jmp	.L601	#
.L600:
	.loc 1 3959 0 discriminator 2
	movq	-96(%rbp), %rax	# alignment_pad.constant, D.17628
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17628,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.17620
	movq	-88(%rbp), %rdx	# alignment_pad.var, D.17620
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17620
	movq	%rdx, %rsi	# D.17620,
	movq	%rax, %rdi	# D.17620,
	call	convert	#
	movq	%rbx, %rdx	# D.17620,
	movq	%rax, %rsi	# D.17620,
	movl	$59, %edi	#,
	call	size_binop	#
.L601:
	.loc 1 3957 0 is_stmt 1
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.347,
	call	expand_expr	#
	movq	%rax, %rbx	#, iftmp.346
.L599:
	.loc 1 3958 0
	movl	-420(%rbp), %eax	# argnum, tmp858
	movslq	%eax, %rdx	# tmp858, D.17623
	movq	%rdx, %rax	# D.17623, tmp859
	salq	$3, %rax	#, tmp859
	addq	%rdx, %rax	# D.17623, tmp859
	salq	$3, %rax	#, tmp860
	movq	%rax, %rdx	# tmp859, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp861
	addq	%rdx, %rax	# D.17623, D.17624
	.loc 1 3957 0
	movq	32(%rax), %rax	# _488->offset.constant, D.17628
	movq	%rax, %rsi	# D.17628,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-340(%rbp), %ecx	# partial, tmp862
	movl	-344(%rbp), %esi	# mode, tmp863
	movq	-224(%rbp), %rdi	# val, tmp864
	movq	%rbx, 40(%rsp)	# iftmp.346,
	movl	-364(%rbp), %edx	# reg_parm_stack_space, tmp865
	movl	%edx, 32(%rsp)	# tmp865,
	movq	%rax, 24(%rsp)	# D.17625,
	movq	-312(%rbp), %rax	# argblock, tmp866
	movq	%rax, 16(%rsp)	# tmp866,
	movl	$0, 8(%rsp)	#,
	movq	-216(%rbp), %rax	# reg, tmp867
	movq	%rax, (%rsp)	# tmp867,
	movl	%ecx, %r9d	# tmp862,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	call	emit_push_insn	#
	.loc 1 3962 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.348
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L602	#,
	.loc 1 3963 0
	movl	-388(%rbp), %eax	# lower_bound, tmp868
	movl	%eax, -380(%rbp)	# tmp868, i
	jmp	.L603	#
.L604:
	.loc 1 3964 0 discriminator 2
	movq	stack_usage_map(%rip), %rdx	# stack_usage_map, stack_usage_map.349
	movl	-380(%rbp), %eax	# i, tmp869
	cltq
	addq	%rdx, %rax	# stack_usage_map.349, D.17632
	movb	$1, (%rax)	#, *_496
	.loc 1 3963 0 discriminator 2
	addl	$1, -380(%rbp)	#, i
.L603:
	.loc 1 3963 0 is_stmt 0 discriminator 1
	movl	-380(%rbp), %eax	# i, tmp870
	cmpl	-384(%rbp), %eax	# upper_bound, tmp870
	jl	.L604	#,
.L602:
	.loc 1 3966 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.350
	movq	16(%rax), %rax	# cfun.350_498->expr, D.17618
	movq	cfun(%rip), %rdx	# cfun, cfun.351
	movq	16(%rdx), %rdx	# cfun.351_500->expr, D.17618
	movl	4(%rdx), %edx	# _501->x_inhibit_defer_pop, D.17619
	addl	$1, %edx	#, D.17619
	movl	%edx, 4(%rax)	# D.17619, _499->x_inhibit_defer_pop
.L592:
.LBE43:
	.loc 1 3904 0
	addl	$1, -412(%rbp)	#, count
	movl	-416(%rbp), %eax	# inc, tmp871
	addl	%eax, -420(%rbp)	# tmp871, argnum
.L590:
	.loc 1 3904 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# count, tmp872
	cmpl	-464(%rbp), %eax	# nargs, tmp872
	jl	.L605	#,
	.loc 1 3972 0 is_stmt 1
	cmpq	$0, -312(%rbp)	#, argblock
	jne	.L606	#,
	.loc 1 3972 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.352
	andl	$2048, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	jne	.L607	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.353
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L606	#,
.L607:
	.loc 1 3973 0 is_stmt 1
	movq	-128(%rbp), %rdx	# args_size.constant, D.17628
	movq	-112(%rbp), %rax	# original_args_size.constant, D.17628
	subq	%rax, %rdx	# D.17628, D.17628
	movq	%rdx, %rax	# D.17628, D.17628
	movq	%rax, %rsi	# D.17628,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdi	# D.17625,
	call	anti_adjust_stack	#
.L606:
	.loc 1 3976 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.354
	andl	$2048, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	jne	.L608	#,
	.loc 1 3976 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.355
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	jne	.L608	#,
	.loc 1 3977 0 is_stmt 1
	movl	-464(%rbp), %eax	# nargs, tmp876
	subl	$1, %eax	#, tmp875
	movl	%eax, -420(%rbp)	# tmp875, argnum
	jmp	.L609	#
.L608:
	.loc 1 3979 0
	movl	$0, -420(%rbp)	#, argnum
.L609:
	.loc 1 3981 0
	leaq	-320(%rbp), %rdx	#, tmp877
	movq	-248(%rbp), %rax	# fun, tmp878
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp878,
	call	prepare_call_address	#
	movq	%rax, -248(%rbp)	# tmp879, fun
	.loc 1 3987 0
	movl	$0, -412(%rbp)	#, count
	jmp	.L610	#
.L613:
.LBB45:
	.loc 1 3989 0
	movl	-420(%rbp), %eax	# argnum, tmp880
	movslq	%eax, %rdx	# tmp880, D.17623
	movq	%rdx, %rax	# D.17623, tmp881
	salq	$3, %rax	#, tmp881
	addq	%rdx, %rax	# D.17623, tmp881
	salq	$3, %rax	#, tmp882
	movq	%rax, %rdx	# tmp881, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp883
	addq	%rdx, %rax	# D.17623, D.17624
	movq	(%rax), %rax	# _524->value, tmp884
	movq	%rax, -200(%rbp)	# tmp884, val
	.loc 1 3990 0
	movl	-420(%rbp), %eax	# argnum, tmp885
	movslq	%eax, %rdx	# tmp885, D.17623
	movq	%rdx, %rax	# D.17623, tmp886
	salq	$3, %rax	#, tmp886
	addq	%rdx, %rax	# D.17623, tmp886
	salq	$3, %rax	#, tmp887
	movq	%rax, %rdx	# tmp886, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp888
	addq	%rdx, %rax	# D.17623, D.17624
	movq	16(%rax), %rax	# _528->reg, tmp889
	movq	%rax, -192(%rbp)	# tmp889, reg
	.loc 1 3991 0
	movl	-420(%rbp), %eax	# argnum, tmp890
	movslq	%eax, %rdx	# tmp890, D.17623
	movq	%rdx, %rax	# D.17623, tmp891
	salq	$3, %rax	#, tmp891
	addq	%rdx, %rax	# D.17623, tmp891
	salq	$3, %rax	#, tmp892
	movq	%rax, %rdx	# tmp891, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp893
	addq	%rdx, %rax	# D.17623, D.17624
	movl	24(%rax), %eax	# _532->partial, tmp894
	movl	%eax, -332(%rbp)	# tmp894, partial
	.loc 1 3995 0
	cmpq	$0, -192(%rbp)	#, reg
	je	.L611	#,
	.loc 1 3995 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# reg, tmp895
	movzwl	(%rax), %eax	# reg_529->code, D.17622
	cmpw	$39, %ax	#, D.17622
	jne	.L611	#,
	.loc 1 3996 0 is_stmt 1
	movq	-200(%rbp), %rax	# val, tmp896
	movzbl	2(%rax), %eax	# val_525->mode, D.17621
	movzbl	%al, %eax	# D.17621, D.17619
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17621
	movzbl	%al, %edx	# D.17621, D.17619
	movq	-200(%rbp), %rcx	# val, tmp898
	movq	-192(%rbp), %rax	# reg, tmp899
	movq	%rcx, %rsi	# tmp898,
	movq	%rax, %rdi	# tmp899,
	call	emit_group_load	#
	jmp	.L612	#
.L611:
	.loc 1 3997 0
	cmpq	$0, -192(%rbp)	#, reg
	je	.L612	#,
	.loc 1 3997 0 is_stmt 0 discriminator 1
	cmpl	$0, -332(%rbp)	#, partial
	jne	.L612	#,
	.loc 1 3998 0 is_stmt 1
	movq	-200(%rbp), %rdx	# val, tmp900
	movq	-192(%rbp), %rax	# reg, tmp901
	movq	%rdx, %rsi	# tmp900,
	movq	%rax, %rdi	# tmp901,
	call	emit_move_insn	#
.L612:
	.loc 1 4000 0
	movq	cfun(%rip), %rax	# cfun, cfun.356
	movq	16(%rax), %rax	# cfun.356_539->expr, D.17618
	movq	cfun(%rip), %rdx	# cfun, cfun.357
	movq	16(%rdx), %rdx	# cfun.357_541->expr, D.17618
	movl	4(%rdx), %edx	# _542->x_inhibit_defer_pop, D.17619
	addl	$1, %edx	#, D.17619
	movl	%edx, 4(%rax)	# D.17619, _540->x_inhibit_defer_pop
.LBE45:
	.loc 1 3987 0
	addl	$1, -412(%rbp)	#, count
	movl	-416(%rbp), %eax	# inc, tmp902
	addl	%eax, -420(%rbp)	# tmp902, argnum
.L610:
	.loc 1 3987 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# count, tmp903
	cmpl	-464(%rbp), %eax	# nargs, tmp903
	jl	.L613	#,
	.loc 1 4004 0 is_stmt 1
	movl	$0, -412(%rbp)	#, count
	jmp	.L614	#
.L617:
.LBB46:
	.loc 1 4006 0
	movl	-412(%rbp), %eax	# count, tmp904
	movslq	%eax, %rdx	# tmp904, D.17623
	movq	%rdx, %rax	# D.17623, tmp905
	salq	$3, %rax	#, tmp905
	addq	%rdx, %rax	# D.17623, tmp905
	salq	$3, %rax	#, tmp906
	movq	%rax, %rdx	# tmp905, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp907
	addq	%rdx, %rax	# D.17623, D.17624
	movq	16(%rax), %rax	# _550->reg, tmp908
	movq	%rax, -184(%rbp)	# tmp908, reg
	.loc 1 4007 0
	cmpq	$0, -184(%rbp)	#, reg
	je	.L615	#,
	.loc 1 4007 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# reg, tmp909
	movzwl	(%rax), %eax	# reg_551->code, D.17622
	cmpw	$39, %ax	#, D.17622
	jne	.L615	#,
	.loc 1 4008 0 is_stmt 1
	movq	-184(%rbp), %rdx	# reg, tmp910
	leaq	-320(%rbp), %rax	#, tmp911
	movq	%rdx, %rsi	# tmp910,
	movq	%rax, %rdi	# tmp911,
	call	use_group_regs	#
	jmp	.L616	#
.L615:
	.loc 1 4009 0
	cmpq	$0, -184(%rbp)	#, reg
	je	.L616	#,
	.loc 1 4010 0
	movq	-184(%rbp), %rdx	# reg, tmp912
	leaq	-320(%rbp), %rax	#, tmp913
	movq	%rdx, %rsi	# tmp912,
	movq	%rax, %rdi	# tmp913,
	call	use_reg	#
.L616:
.LBE46:
	.loc 1 4004 0
	addl	$1, -412(%rbp)	#, count
.L614:
	.loc 1 4004 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# count, tmp914
	cmpl	-464(%rbp), %eax	# nargs, tmp914
	jl	.L617	#,
	.loc 1 4014 0 is_stmt 1
	cmpq	$0, -304(%rbp)	#, mem_value
	je	.L618	#,
	.loc 1 4014 0 is_stmt 0 discriminator 1
	movq	struct_value_rtx(%rip), %rax	# struct_value_rtx, struct_value_rtx.358
	testq	%rax, %rax	# struct_value_rtx.358
	je	.L618	#,
	cmpl	$0, -368(%rbp)	#, pcc_struct_value
	jne	.L618	#,
	.loc 1 4016 0 is_stmt 1
	movq	-304(%rbp), %rax	# mem_value, tmp915
	movq	8(%rax), %rax	# mem_value_19->fld[0].rtx, D.17625
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17625,
	call	force_operand	#
	movq	%rax, %rdx	#, D.17625
	.loc 1 4017 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.360
	andl	$33554432, %eax	#, D.17619
	.loc 1 4016 0
	testl	%eax, %eax	# D.17619
	je	.L619	#,
	.loc 1 4016 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.359
	jmp	.L620	#
.L619:
	.loc 1 4016 0 discriminator 2
	movl	$4, %eax	#, iftmp.359
.L620:
	.loc 1 4016 0 discriminator 3
	movq	%rdx, %rsi	# D.17625,
	movl	%eax, %edi	# iftmp.359,
	call	force_reg	#
	movq	%rax, %rdx	#, D.17625
	movq	struct_value_rtx(%rip), %rax	# struct_value_rtx, struct_value_rtx.361
	movq	%rdx, %rsi	# D.17625,
	movq	%rax, %rdi	# struct_value_rtx.361,
	call	emit_move_insn	#
	.loc 1 4020 0 is_stmt 1 discriminator 3
	movq	struct_value_rtx(%rip), %rax	# struct_value_rtx, struct_value_rtx.362
	movzwl	(%rax), %eax	# struct_value_rtx.362_563->code, D.17622
	cmpw	$61, %ax	#, D.17622
	jne	.L618	#,
	.loc 1 4021 0
	movq	struct_value_rtx(%rip), %rdx	# struct_value_rtx, struct_value_rtx.363
	leaq	-320(%rbp), %rax	#, tmp916
	movq	%rdx, %rsi	# struct_value_rtx.363,
	movq	%rax, %rdi	# tmp916,
	call	use_reg	#
.L618:
	.loc 1 4026 0
	movq	cfun(%rip), %rax	# cfun, cfun.364
	movq	16(%rax), %rax	# cfun.364_566->expr, D.17618
	movq	cfun(%rip), %rdx	# cfun, cfun.365
	movq	16(%rdx), %rdx	# cfun.365_568->expr, D.17618
	movl	4(%rdx), %edx	# _569->x_inhibit_defer_pop, D.17619
	addl	$1, %edx	#, D.17619
	movl	%edx, 4(%rax)	# D.17619, _567->x_inhibit_defer_pop
	.loc 1 4028 0
	cmpq	$0, -304(%rbp)	#, mem_value
	jne	.L621	#,
	.loc 1 4027 0
	cmpl	$0, -460(%rbp)	#, outmode
	je	.L621	#,
	.loc 1 4028 0
	movl	-460(%rbp), %eax	# outmode, tmp917
	movl	%eax, %edi	# tmp917,
	call	hard_libcall_value	#
	jmp	.L622	#
.L621:
	.loc 1 4028 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.366
.L622:
	.loc 1 4027 0 is_stmt 1
	movq	%rax, -176(%rbp)	# iftmp.366, valreg
	.loc 1 4031 0
	movq	cfun(%rip), %rax	# cfun, cfun.367
	movq	16(%rax), %rax	# cfun.367_575->expr, D.17618
	movl	8(%rax), %edx	# _576->x_stack_pointer_delta, D.17619
	movl	ix86_preferred_stack_boundary(%rip), %eax	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.368
	leal	7(%rax), %ecx	#, tmp919
	testl	%eax, %eax	# tmp918
	cmovs	%ecx, %eax	# tmp919,, tmp918
	sarl	$3, %eax	#, tmp920
	subl	$1, %eax	#, D.17619
	andl	%edx, %eax	# D.17619, D.17619
	testl	%eax, %eax	# D.17619
	je	.L623	#,
	.loc 1 4032 0
	movl	$__FUNCTION__.13168, %edx	#,
	movl	$4032, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L623:
	.loc 1 4034 0
	call	get_last_insn	#
	movq	%rax, -168(%rbp)	# tmp921, before_call
	.loc 1 4043 0
	movq	-320(%rbp), %r14	# call_fusage, call_fusage.369
	movl	-372(%rbp), %eax	# old_inhibit_defer_pop, tmp922
	addl	$1, %eax	#, D.17619
	movl	%eax, -468(%rbp)	# D.17619, %sfp
	movq	global_trees+216(%rip), %rdx	# global_trees, D.17620
	leaq	-80(%rbp), %rax	#, tmp923
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp923,
	call	function_arg	#
	movq	%rax, %rbx	#, D.17625
	movl	-408(%rbp), %eax	# struct_value_size, tmp924
	cltq
	movq	%rax, -480(%rbp)	# D.17628, %sfp
	movq	-128(%rbp), %r15	# args_size.constant, D.17628
	movq	-112(%rbp), %r13	# original_args_size.constant, D.17628
	cmpl	$0, -460(%rbp)	#, outmode
	jne	.L624	#,
	.loc 1 4043 0 is_stmt 0 discriminator 1
	movq	global_trees+216(%rip), %rax	# global_trees, iftmp.370
	jmp	.L625	#
.L624:
	.loc 1 4043 0 discriminator 2
	movl	-460(%rbp), %eax	# outmode, tmp925
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp925,
	call	type_for_mode	#
.L625:
	.loc 1 4043 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.370,
	call	build_function_type	#
	movq	%rax, %r12	#, D.17620
	movq	-448(%rbp), %rax	# orgfun, tmp926
	movq	8(%rax), %rax	# orgfun_81(D)->fld[0].rtstr, D.17635
	movq	%rax, %rdi	# D.17635,
	call	get_identifier	#
	movq	%rax, %rsi	#, D.17620
	movq	-248(%rbp), %rax	# fun, tmp927
	leaq	-80(%rbp), %rdx	#, tmp928
	movq	%rdx, 40(%rsp)	# tmp928,
	movl	-404(%rbp), %edx	# flags, tmp929
	movl	%edx, 32(%rsp)	# tmp929,
	movq	%r14, 24(%rsp)	# call_fusage.369,
	movl	-468(%rbp), %ecx	# %sfp, D.17619
	movl	%ecx, 16(%rsp)	# D.17619,
	movq	-176(%rbp), %rdx	# valreg, tmp930
	movq	%rdx, 8(%rsp)	# tmp930,
	movq	%rbx, (%rsp)	# D.17625,
	movq	-480(%rbp), %r9	# %sfp,
	movq	%r15, %r8	# D.17628,
	movq	%r13, %rcx	# D.17628,
	movq	%r12, %rdx	# D.17620,
	movq	%rax, %rdi	# tmp927,
	call	emit_call_1	#
	.loc 1 4057 0 is_stmt 1 discriminator 3
	movl	-404(%rbp), %eax	# flags, tmp931
	andl	$66, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L626	#,
.LBB47:
	.loc 1 4063 0
	call	get_last_insn	#
	movq	%rax, -272(%rbp)	# tmp932, last
	.loc 1 4064 0
	jmp	.L627	#
.L628:
	.loc 1 4066 0
	movq	-272(%rbp), %rax	# last, tmp933
	movq	16(%rax), %rax	# last_38->fld[1].rtx, tmp934
	movq	%rax, -272(%rbp)	# tmp934, last
	.loc 1 4068 0
	movq	-272(%rbp), %rax	# last, tmp935
	cmpq	-168(%rbp), %rax	# before_call, tmp935
	jne	.L627	#,
	.loc 1 4069 0
	movl	$__FUNCTION__.13168, %edx	#,
	movl	$4069, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L627:
	.loc 1 4064 0 discriminator 1
	movq	-272(%rbp), %rax	# last, tmp936
	movzwl	(%rax), %eax	# last_38->code, D.17622
	cmpw	$34, %ax	#, D.17622
	jne	.L628	#,
	.loc 1 4072 0
	movq	-272(%rbp), %rax	# last, tmp937
	movq	%rax, %rdi	# tmp937,
	call	emit_barrier_after	#
.L626:
.LBE47:
	.loc 1 4076 0
	movq	cfun(%rip), %rax	# cfun, cfun.371
	movq	16(%rax), %rax	# cfun.371_599->expr, D.17618
	movq	cfun(%rip), %rdx	# cfun, cfun.372
	movq	16(%rdx), %rdx	# cfun.372_601->expr, D.17618
	movl	4(%rdx), %edx	# _602->x_inhibit_defer_pop, D.17619
	subl	$1, %edx	#, D.17619
	movl	%edx, 4(%rax)	# D.17619, _600->x_inhibit_defer_pop
	.loc 1 4082 0
	movl	-404(%rbp), %eax	# flags, tmp938
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L629	#,
.LBB48:
	.loc 1 4086 0
	cmpq	$0, -176(%rbp)	#, valreg
	je	.L630	#,
	.loc 1 4086 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# valreg, tmp939
	movzwl	(%rax), %eax	# valreg_574->code, D.17622
	cmpw	$39, %ax	#, D.17622
	jne	.L631	#,
.L630:
	.loc 1 4088 0 is_stmt 1
	call	get_insns	#
	movq	%rax, -152(%rbp)	# tmp940, insns
	.loc 1 4089 0
	call	end_sequence	#
	.loc 1 4090 0
	movq	-152(%rbp), %rax	# insns, tmp941
	movq	%rax, %rdi	# tmp941,
	call	emit_insns	#
	jmp	.L629	#
.L631:
.LBB49:
	.loc 1 4094 0
	movq	$0, -264(%rbp)	#, note
	.loc 1 4095 0
	movq	-176(%rbp), %rax	# valreg, tmp942
	movzbl	2(%rax), %eax	# valreg_574->mode, D.17621
	movzbl	%al, %eax	# D.17621, D.17636
	movl	%eax, %edi	# D.17636,
	call	gen_reg_rtx	#
	movq	%rax, -160(%rbp)	# tmp943, temp
	.loc 1 4100 0
	movl	$0, -376(%rbp)	#, i
	jmp	.L632	#
.L633:
	.loc 1 4101 0 discriminator 2
	movl	-376(%rbp), %eax	# i, tmp944
	movslq	%eax, %rdx	# tmp944, D.17623
	movq	%rdx, %rax	# D.17623, tmp945
	salq	$3, %rax	#, tmp945
	addq	%rdx, %rax	# D.17623, tmp945
	salq	$3, %rax	#, tmp946
	movq	%rax, %rdx	# tmp945, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp947
	addq	%rdx, %rax	# D.17623, D.17624
	movq	(%rax), %rax	# _614->value, D.17625
	movq	-264(%rbp), %rdx	# note, tmp948
	movq	%rdx, %rcx	# tmp948,
	movq	%rax, %rdx	# D.17625,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -264(%rbp)	# tmp949, note
	.loc 1 4100 0 discriminator 2
	addl	$1, -376(%rbp)	#, i
.L632:
	.loc 1 4100 0 is_stmt 0 discriminator 1
	movl	-376(%rbp), %eax	# i, tmp950
	cmpl	-464(%rbp), %eax	# nargs, tmp950
	jl	.L633	#,
	.loc 1 4102 0 is_stmt 1
	movq	-264(%rbp), %rdx	# note, tmp951
	movq	-248(%rbp), %rax	# fun, tmp952
	movq	%rdx, %rcx	# tmp951,
	movq	%rax, %rdx	# tmp952,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -264(%rbp)	# tmp953, note
	.loc 1 4104 0
	call	get_insns	#
	movq	%rax, -152(%rbp)	# tmp954, insns
	.loc 1 4105 0
	call	end_sequence	#
	.loc 1 4107 0
	movl	-404(%rbp), %eax	# flags, tmp955
	andl	$512, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L634	#,
	.loc 1 4108 0
	movl	$0, %esi	#,
	movl	$62, %edi	#,
	call	gen_rtx_fmt_0	#
	movq	%rax, %rsi	# D.17625,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, %rdx	# D.17625,
	movl	$0, %esi	#,
	movl	$48, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	-264(%rbp), %rdx	# note, tmp956
	movq	%rdx, %rcx	# tmp956,
	movq	%rax, %rdx	# D.17625,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -264(%rbp)	# tmp957, note
.L634:
	.loc 1 4114 0
	movq	-264(%rbp), %rcx	# note, tmp958
	movq	-176(%rbp), %rdx	# valreg, tmp959
	movq	-160(%rbp), %rsi	# temp, tmp960
	movq	-152(%rbp), %rax	# insns, tmp961
	movq	%rax, %rdi	# tmp961,
	call	emit_libcall_block	#
	.loc 1 4116 0
	movq	-160(%rbp), %rax	# temp, tmp962
	movq	%rax, -176(%rbp)	# tmp962, valreg
.L629:
.LBE49:
.LBE48:
	.loc 1 4119 0
	call	pop_temp_slots	#
	.loc 1 4122 0
	cmpl	$0, -460(%rbp)	#, outmode
	je	.L635	#,
	.loc 1 4122 0 is_stmt 0 discriminator 1
	cmpl	$0, -436(%rbp)	#, retval
	je	.L635	#,
	.loc 1 4124 0 is_stmt 1
	cmpq	$0, -304(%rbp)	#, mem_value
	je	.L636	#,
	.loc 1 4126 0
	cmpq	$0, -456(%rbp)	#, value
	jne	.L637	#,
	.loc 1 4127 0
	movq	-304(%rbp), %rax	# mem_value, tmp963
	movq	%rax, -456(%rbp)	# tmp963, value
.L637:
	.loc 1 4128 0
	movq	-456(%rbp), %rax	# value, tmp964
	cmpq	-304(%rbp), %rax	# mem_value, tmp964
	je	.L635	#,
	.loc 1 4129 0
	movq	-304(%rbp), %rdx	# mem_value, tmp965
	movq	-456(%rbp), %rax	# value, tmp966
	movq	%rdx, %rsi	# tmp965,
	movq	%rax, %rdi	# tmp966,
	call	emit_move_insn	#
	jmp	.L635	#
.L636:
	.loc 1 4131 0
	cmpq	$0, -456(%rbp)	#, value
	je	.L639	#,
	.loc 1 4132 0
	movl	-460(%rbp), %eax	# outmode, tmp967
	movl	%eax, %edi	# tmp967,
	call	hard_libcall_value	#
	movq	%rax, %rdx	#, D.17625
	movq	-456(%rbp), %rax	# value, tmp968
	movq	%rdx, %rsi	# D.17625,
	movq	%rax, %rdi	# tmp968,
	call	emit_move_insn	#
	jmp	.L635	#
.L639:
	.loc 1 4134 0
	movl	-460(%rbp), %eax	# outmode, tmp969
	movl	%eax, %edi	# tmp969,
	call	hard_libcall_value	#
	movq	%rax, -456(%rbp)	# tmp970, value
.L635:
	.loc 1 4137 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.373
	andl	$4096, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L640	#,
	.loc 1 4140 0
	cmpq	$0, -296(%rbp)	#, save_area
	je	.L641	#,
.LBB50:
	.loc 1 4142 0
	movq	-296(%rbp), %rax	# save_area, tmp971
	movzbl	2(%rax), %eax	# save_area_30->mode, D.17621
	movzbl	%al, %eax	# D.17621, tmp972
	movl	%eax, -328(%rbp)	# tmp972, save_mode
	.loc 1 4151 0
	movl	-400(%rbp), %eax	# low_to_save, tmp973
	movslq	%eax, %rdx	# tmp973, D.17628
	movq	-312(%rbp), %rax	# argblock, tmp974
	movq	%rdx, %rsi	# D.17628,
	movq	%rax, %rdi	# tmp974,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.17625
	movl	-328(%rbp), %eax	# save_mode, tmp975
	movq	%rdx, %rsi	# D.17625,
	movl	%eax, %edi	# tmp975,
	call	memory_address	#
	movq	%rax, %rdx	#, D.17625
	.loc 1 4150 0
	movl	-328(%rbp), %eax	# save_mode, tmp976
	movq	%rdx, %rsi	# D.17625,
	movl	%eax, %edi	# tmp976,
	call	gen_rtx_MEM	#
	movq	%rax, -144(%rbp)	# tmp977, stack_area
	.loc 1 4156 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.375
	andl	$33554432, %eax	#, D.17619
	testl	%eax, %eax	# D.17619
	je	.L642	#,
	.loc 1 4156 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.374
	jmp	.L643	#
.L642:
	.loc 1 4156 0 discriminator 2
	movl	$32, %eax	#, iftmp.374
.L643:
	.loc 1 4156 0 discriminator 3
	movq	-144(%rbp), %rdx	# stack_area, tmp978
	movl	%eax, %esi	# iftmp.374,
	movq	%rdx, %rdi	# tmp978,
	call	set_mem_align	#
	.loc 1 4157 0 is_stmt 1 discriminator 3
	cmpl	$51, -328(%rbp)	#, save_mode
	je	.L644	#,
	.loc 1 4158 0
	movq	-296(%rbp), %rdx	# save_area, tmp979
	movq	-144(%rbp), %rax	# stack_area, tmp980
	movq	%rdx, %rsi	# tmp979,
	movq	%rax, %rdi	# tmp980,
	call	emit_move_insn	#
	jmp	.L641	#
.L644:
	.loc 1 4161 0
	movl	-400(%rbp), %eax	# low_to_save, tmp981
	movl	-396(%rbp), %edx	# high_to_save, tmp982
	subl	%eax, %edx	# tmp981, D.17619
	movl	%edx, %eax	# D.17619, D.17619
	addl	$1, %eax	#, D.17619
	.loc 1 4160 0
	cltq
	movq	%rax, %rsi	# D.17628,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rbx	#, D.17625
	movq	-296(%rbp), %rax	# save_area, tmp983
	movq	%rax, %rdi	# tmp983,
	call	validize_mem	#
	movq	%rax, %rcx	#, D.17625
	movq	-144(%rbp), %rax	# stack_area, tmp984
	movq	%rbx, %rdx	# D.17625,
	movq	%rcx, %rsi	# D.17625,
	movq	%rax, %rdi	# tmp984,
	call	emit_block_move	#
.L641:
.LBE50:
	.loc 1 4166 0
	movl	$0, -412(%rbp)	#, count
	jmp	.L645	#
.L647:
	.loc 1 4167 0
	movl	-412(%rbp), %eax	# count, tmp985
	movslq	%eax, %rdx	# tmp985, D.17623
	movq	%rdx, %rax	# D.17623, tmp986
	salq	$3, %rax	#, tmp986
	addq	%rdx, %rax	# D.17623, tmp986
	salq	$3, %rax	#, tmp987
	movq	%rax, %rdx	# tmp986, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp988
	addq	%rdx, %rax	# D.17623, D.17624
	movq	64(%rax), %rax	# _651->save_area, D.17625
	testq	%rax, %rax	# D.17625
	je	.L646	#,
.LBB51:
	.loc 1 4169 0
	movl	-412(%rbp), %eax	# count, tmp989
	movslq	%eax, %rdx	# tmp989, D.17623
	movq	%rdx, %rax	# D.17623, tmp990
	salq	$3, %rax	#, tmp990
	addq	%rdx, %rax	# D.17623, tmp990
	salq	$3, %rax	#, tmp991
	movq	%rax, %rdx	# tmp990, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp992
	addq	%rdx, %rax	# D.17623, D.17624
	movq	64(%rax), %rax	# _655->save_area, D.17625
	movzbl	2(%rax), %eax	# _656->mode, D.17621
	movzbl	%al, %eax	# D.17621, tmp993
	movl	%eax, -324(%rbp)	# tmp993, save_mode
	.loc 1 4174 0
	movl	-412(%rbp), %eax	# count, tmp994
	movslq	%eax, %rdx	# tmp994, D.17623
	movq	%rdx, %rax	# D.17623, tmp995
	salq	$3, %rax	#, tmp995
	addq	%rdx, %rax	# D.17623, tmp995
	salq	$3, %rax	#, tmp996
	movq	%rax, %rdx	# tmp995, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp997
	addq	%rdx, %rax	# D.17623, D.17624
	.loc 1 4171 0
	movq	32(%rax), %rdx	# _661->offset.constant, D.17628
	movq	-312(%rbp), %rax	# argblock, tmp998
	movq	%rdx, %rsi	# D.17628,
	movq	%rax, %rdi	# tmp998,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.17625
	movl	-324(%rbp), %eax	# save_mode, tmp999
	movq	%rdx, %rsi	# D.17625,
	movl	%eax, %edi	# tmp999,
	call	memory_address	#
	movq	%rax, %rdx	#, D.17625
	.loc 1 4170 0
	movl	-324(%rbp), %eax	# save_mode, tmp1000
	movq	%rdx, %rsi	# D.17625,
	movl	%eax, %edi	# tmp1000,
	call	gen_rtx_MEM	#
	movq	%rax, -136(%rbp)	# tmp1001, stack_area
	.loc 1 4177 0
	movl	-412(%rbp), %eax	# count, tmp1002
	movslq	%eax, %rdx	# tmp1002, D.17623
	movq	%rdx, %rax	# D.17623, tmp1003
	salq	$3, %rax	#, tmp1003
	addq	%rdx, %rax	# D.17623, tmp1003
	salq	$3, %rax	#, tmp1004
	movq	%rax, %rdx	# tmp1003, D.17623
	movq	-240(%rbp), %rax	# argvec, tmp1005
	addq	%rdx, %rax	# D.17623, D.17624
	movq	64(%rax), %rdx	# _668->save_area, D.17625
	movq	-136(%rbp), %rax	# stack_area, tmp1006
	movq	%rdx, %rsi	# D.17625,
	movq	%rax, %rdi	# tmp1006,
	call	emit_move_insn	#
.L646:
.LBE51:
	.loc 1 4166 0
	addl	$1, -412(%rbp)	#, count
.L645:
	.loc 1 4166 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# count, tmp1007
	cmpl	-464(%rbp), %eax	# nargs, tmp1007
	jl	.L647	#,
	.loc 1 4180 0 is_stmt 1
	movl	-360(%rbp), %eax	# initial_highest_arg_in_use, tmp1008
	movl	%eax, highest_outgoing_arg_in_use(%rip)	# tmp1008, highest_outgoing_arg_in_use
	.loc 1 4181 0
	movq	-256(%rbp), %rax	# initial_stack_usage_map, tmp1009
	movq	%rax, stack_usage_map(%rip)	# tmp1009, stack_usage_map
.L640:
	.loc 1 4184 0
	movq	-456(%rbp), %rax	# value, D.17637
	.loc 1 4186 0
	leaq	-40(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	emit_library_call_value_1, .-emit_library_call_value_1
	.globl	emit_library_call
	.type	emit_library_call, @function
emit_library_call:
.LFB26:
	.loc 1 4205 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
	movq	%rdi, -216(%rbp)	# orgfun, orgfun
	movl	%esi, -220(%rbp)	# fn_type, fn_type
	movl	%edx, -224(%rbp)	# outmode, outmode
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L651	#,
	.loc 1 4205 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L651:
	movl	%ecx, -228(%rbp)	# nargs, nargs
.LBB52:
	.loc 1 4206 0
	movl	$32, -200(%rbp)	#, MEM[(struct [1] *)&p].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&p].fp_offset
	leaq	16(%rbp), %rax	#, tmp65
	movq	%rax, -192(%rbp)	# tmp65, MEM[(struct [1] *)&p].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp66
	movq	%rax, -184(%rbp)	# tmp66, MEM[(struct [1] *)&p].reg_save_area
.LBB53:
	.loc 1 4212 0
	movl	-228(%rbp), %edi	# nargs, tmp60
	movl	-224(%rbp), %esi	# outmode, tmp61
	movl	-220(%rbp), %edx	# fn_type, tmp62
	movq	-216(%rbp), %rax	# orgfun, tmp63
	leaq	-200(%rbp), %rcx	#, tmp64
	movq	%rcx, (%rsp)	# tmp64,
	movl	%edi, %r9d	# tmp60,
	movl	%esi, %r8d	# tmp61,
	movl	%edx, %ecx	# tmp62,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp63,
	movl	$0, %edi	#,
	call	emit_library_call_value_1	#
.LBE53:
.LBE52:
	.loc 1 4215 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	emit_library_call, .-emit_library_call
	.globl	emit_library_call_value
	.type	emit_library_call_value, @function
emit_library_call_value:
.LFB27:
	.loc 1 4229 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$256, %rsp	#,
	movq	%rdi, -216(%rbp)	# orgfun, orgfun
	movq	%rsi, -224(%rbp)	# value, value
	movl	%edx, -228(%rbp)	# fn_type, fn_type
	movl	%ecx, -232(%rbp)	# outmode, outmode
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L653	#,
	.loc 1 4229 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L653:
	movl	%r8d, -236(%rbp)	# nargs, nargs
.LBB54:
	.loc 1 4232 0
	movl	$40, -200(%rbp)	#, MEM[(struct [1] *)&p].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&p].fp_offset
	leaq	16(%rbp), %rax	#, tmp70
	movq	%rax, -192(%rbp)	# tmp70, MEM[(struct [1] *)&p].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp71
	movq	%rax, -184(%rbp)	# tmp71, MEM[(struct [1] *)&p].reg_save_area
.LBB55:
	.loc 1 4239 0
	movl	-236(%rbp), %r8d	# nargs, tmp62
	movl	-232(%rbp), %edi	# outmode, tmp63
	movl	-228(%rbp), %ecx	# fn_type, tmp64
	movq	-224(%rbp), %rdx	# value, tmp65
	movq	-216(%rbp), %rax	# orgfun, tmp66
	leaq	-200(%rbp), %rsi	#, tmp67
	movq	%rsi, (%rsp)	# tmp67,
	movl	%r8d, %r9d	# tmp62,
	movl	%edi, %r8d	# tmp63,
	movq	%rax, %rsi	# tmp66,
	movl	$1, %edi	#,
	call	emit_library_call_value_1	#
	movq	%rax, -208(%rbp)	# tmp68, result
.LBE55:
.LBE54:
	.loc 1 4244 0
	movq	-208(%rbp), %rax	# result, D.17641
	.loc 1 4245 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	emit_library_call_value, .-emit_library_call_value
	.section	.rodata
	.align 8
.LC21:
	.string	"variable offset is passed partially in stack and in reg"
	.align 8
.LC22:
	.string	"variable size is passed partially in stack and in reg"
	.text
	.type	store_one_arg, @function
store_one_arg:
.LFB28:
	.loc 1 4273 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$192, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)	# arg, arg
	movq	%rsi, -144(%rbp)	# argblock, argblock
	movl	%edx, -148(%rbp)	# flags, flags
	movl	%ecx, -152(%rbp)	# variable_size, variable_size
	movl	%r8d, -156(%rbp)	# reg_parm_stack_space, reg_parm_stack_space
	.loc 1 4274 0
	movq	-136(%rbp), %rax	# arg, tmp331
	movq	(%rax), %rax	# arg_38(D)->tree_value, tmp332
	movq	%rax, -64(%rbp)	# tmp332, pval
	.loc 1 4275 0
	movq	$0, -80(%rbp)	#, reg
	.loc 1 4276 0
	movl	$0, -120(%rbp)	#, partial
	.loc 1 4277 0
	movl	$0, -92(%rbp)	#, used
	.loc 1 4278 0
	movl	$0, -112(%rbp)	#, lower_bound
	movl	$0, -108(%rbp)	#, upper_bound
	.loc 1 4279 0
	movl	$0, -104(%rbp)	#, sibcall_failure
	.loc 1 4281 0
	movq	-64(%rbp), %rax	# pval, tmp333
	movzbl	16(%rax), %eax	# pval_39->common.code, D.17645
	testb	%al, %al	# D.17645
	jne	.L656	#,
	.loc 1 4282 0
	movl	$1, %eax	#, D.17644
	jmp	.L657	#
.L656:
	.loc 1 4286 0
	call	push_temp_slots	#
	.loc 1 4288 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.376
	andl	$4096, %eax	#, D.17644
	testl	%eax, %eax	# D.17644
	je	.L658	#,
	.loc 1 4288 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# flags, tmp334
	andl	$256, %eax	#, D.17644
	testl	%eax, %eax	# D.17644
	jne	.L658	#,
	.loc 1 4292 0 is_stmt 1
	cmpq	$0, -144(%rbp)	#, argblock
	je	.L659	#,
	.loc 1 4292 0 is_stmt 0 discriminator 1
	cmpl	$0, -152(%rbp)	#, variable_size
	jne	.L659	#,
	movq	-136(%rbp), %rax	# arg, tmp335
	movq	112(%rax), %rax	# arg_38(D)->stack, D.17646
	testq	%rax, %rax	# D.17646
	je	.L659	#,
	.loc 1 4304 0 is_stmt 1
	movq	-136(%rbp), %rax	# arg, tmp336
	movq	120(%rax), %rax	# arg_38(D)->stack_slot, D.17646
	movq	8(%rax), %rax	# _55->fld[0].rtx, D.17646
	movzwl	(%rax), %eax	# _56->code, D.17647
	cmpw	$75, %ax	#, D.17647
	jne	.L660	#,
	.loc 1 4305 0
	movq	-136(%rbp), %rax	# arg, tmp337
	movq	120(%rax), %rax	# arg_38(D)->stack_slot, D.17646
	movq	8(%rax), %rax	# _58->fld[0].rtx, D.17646
	movq	16(%rax), %rax	# _59->fld[1].rtx, D.17646
	movq	8(%rax), %rax	# _60->fld[0].rtwint, D.17648
	movl	%eax, -112(%rbp)	# D.17648, lower_bound
	jmp	.L661	#
.L660:
	.loc 1 4307 0
	movl	$0, -112(%rbp)	#, lower_bound
.L661:
	.loc 1 4309 0
	movq	-136(%rbp), %rax	# arg, tmp338
	movq	96(%rax), %rax	# arg_38(D)->size.constant, D.17648
	movl	%eax, %edx	# D.17648, D.17649
	movl	-112(%rbp), %eax	# lower_bound, lower_bound.377
	addl	%edx, %eax	# D.17649, D.17649
	movl	%eax, -108(%rbp)	# D.17649, upper_bound
	.loc 1 4312 0
	movl	-112(%rbp), %eax	# lower_bound, tmp339
	movl	%eax, -116(%rbp)	# tmp339, i
	jmp	.L662	#
.L665:
	.loc 1 4313 0
	movq	stack_usage_map(%rip), %rdx	# stack_usage_map, stack_usage_map.378
	movl	-116(%rbp), %eax	# i, tmp340
	cltq
	addq	%rdx, %rax	# stack_usage_map.378, D.17651
	movzbl	(%rax), %eax	# *_72, D.17652
	testb	%al, %al	# D.17652
	je	.L663	#,
	.loc 1 4316 0
	movl	-116(%rbp), %eax	# i, tmp341
	cmpl	-156(%rbp), %eax	# reg_parm_stack_space, tmp341
	jle	.L663	#,
	.loc 1 4317 0
	jmp	.L664	#
.L663:
	.loc 1 4312 0
	addl	$1, -116(%rbp)	#, i
.L662:
	.loc 1 4312 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# i, tmp342
	cmpl	-108(%rbp), %eax	# upper_bound, tmp342
	jl	.L665	#,
.L664:
	.loc 1 4319 0 is_stmt 1
	movl	-116(%rbp), %eax	# i, tmp343
	cmpl	-108(%rbp), %eax	# upper_bound, tmp343
	je	.L659	#,
.LBB56:
	.loc 1 4323 0
	movq	-136(%rbp), %rax	# arg, tmp344
	movq	96(%rax), %rax	# arg_38(D)->size.constant, D.17648
	sall	$3, %eax	#, D.17653
	.loc 1 4322 0
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.17653,
	call	mode_for_size	#
	movl	%eax, -88(%rbp)	# tmp345, save_mode
	.loc 1 4327 0
	movq	-136(%rbp), %rax	# arg, tmp346
	movq	120(%rax), %rax	# arg_38(D)->stack_slot, D.17646
	.loc 1 4325 0
	movq	8(%rax), %rdx	# _80->fld[0].rtx, D.17646
	movl	-88(%rbp), %eax	# save_mode, tmp347
	movq	%rdx, %rsi	# D.17646,
	movl	%eax, %edi	# tmp347,
	call	memory_address	#
	movq	%rax, %rdx	#, D.17646
	.loc 1 4324 0
	movl	-88(%rbp), %eax	# save_mode, tmp348
	movq	%rdx, %rsi	# D.17646,
	movl	%eax, %edi	# tmp348,
	call	gen_rtx_MEM	#
	movq	%rax, -56(%rbp)	# tmp349, stack_area
	.loc 1 4329 0
	cmpl	$51, -88(%rbp)	#, save_mode
	jne	.L666	#,
.LBB57:
	.loc 1 4331 0
	movq	-136(%rbp), %rax	# arg, tmp350
	movq	(%rax), %rax	# arg_38(D)->tree_value, D.17654
	movq	8(%rax), %rax	# _84->common.type, tmp351
	movq	%rax, -48(%rbp)	# tmp351, ot
	.loc 1 4332 0
	movq	-48(%rbp), %rax	# ot, tmp352
	movzbl	17(%rax), %eax	# *ot_85, tmp355
	shrb	$4, %al	#, D.17655
	andl	$1, %eax	#, D.17655
	movzbl	%al, %edx	# D.17655, D.17644
	movq	-48(%rbp), %rax	# ot, tmp356
	movzbl	17(%rax), %eax	# *ot_85, tmp359
	shrb	$3, %al	#, D.17655
	andl	$1, %eax	#, D.17655
	movzbl	%al, %eax	# D.17655, D.17644
	addl	%eax, %eax	# D.17644
	orl	%eax, %edx	# D.17644, D.17644
	movq	-48(%rbp), %rax	# ot, tmp360
	movzbl	62(%rax), %eax	# *ot_85, tmp363
	shrb	$5, %al	#, D.17655
	andl	$1, %eax	#, D.17655
	movzbl	%al, %eax	# D.17655, D.17644
	sall	$2, %eax	#, D.17644
	orl	%eax, %edx	# D.17644, D.17644
	movq	-48(%rbp), %rax	# ot, tmp364
	movzbl	16(%rax), %eax	# ot_85->common.code, D.17645
	cmpb	$20, %al	#, D.17645
	jne	.L667	#,
	.loc 1 4332 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ot, tmp365
	movq	8(%rax), %rax	# ot_85->common.type, D.17654
	testq	%rax, %rax	# D.17654
	je	.L667	#,
	.loc 1 4332 0 discriminator 3
	movl	$1, %eax	#, iftmp.379
	jmp	.L668	#
.L667:
	.loc 1 4332 0 discriminator 2
	movl	$0, %eax	#, iftmp.379
.L668:
	.loc 1 4332 0 discriminator 4
	sall	$3, %eax	#, D.17644
	orl	%edx, %eax	# D.17644, D.17644
	orl	$1, %eax	#, D.17644
	movl	%eax, %edx	# D.17644, D.17644
	movq	-48(%rbp), %rax	# ot, tmp366
	movl	%edx, %esi	# D.17644,
	movq	%rax, %rdi	# tmp366,
	call	build_qualified_type	#
	movq	%rax, -40(%rbp)	# tmp367, nt
	.loc 1 4335 0 is_stmt 1 discriminator 4
	movq	-40(%rbp), %rax	# nt, tmp368
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp368,
	call	assign_temp	#
	movq	-136(%rbp), %rdx	# arg, tmp369
	movq	%rax, 128(%rdx)	# D.17646, arg_38(D)->save_area
	.loc 1 4336 0 discriminator 4
	movq	-136(%rbp), %rax	# arg, tmp370
	movq	128(%rax), %rax	# arg_38(D)->save_area, D.17646
	movq	%rax, %rdi	# D.17646,
	call	preserve_temp_slots	#
	.loc 1 4337 0 discriminator 4
	movq	-136(%rbp), %rax	# arg, tmp371
	movq	(%rax), %rax	# arg_38(D)->tree_value, D.17654
	movq	%rax, %rdi	# D.17654,
	call	expr_size	#
	movq	%rax, %rbx	#, D.17646
	movq	-136(%rbp), %rax	# arg, tmp372
	movq	128(%rax), %rax	# arg_38(D)->save_area, D.17646
	movq	%rax, %rdi	# D.17646,
	call	validize_mem	#
	movq	-56(%rbp), %rcx	# stack_area, tmp373
	movq	%rbx, %rdx	# D.17646,
	movq	%rcx, %rsi	# tmp373,
	movq	%rax, %rdi	# D.17646,
	call	emit_block_move	#
.LBE57:
	jmp	.L659	#
.L666:
	.loc 1 4342 0
	movl	-88(%rbp), %eax	# save_mode, tmp374
	movl	%eax, %edi	# tmp374,
	call	gen_reg_rtx	#
	movq	-136(%rbp), %rdx	# arg, tmp375
	movq	%rax, 128(%rdx)	# D.17646, arg_38(D)->save_area
	.loc 1 4343 0
	movq	-136(%rbp), %rax	# arg, tmp376
	movq	128(%rax), %rax	# arg_38(D)->save_area, D.17646
	movq	-56(%rbp), %rdx	# stack_area, tmp377
	movq	%rdx, %rsi	# tmp377,
	movq	%rax, %rdi	# D.17646,
	call	emit_move_insn	#
.L659:
.LBE56:
	.loc 1 4351 0
	cmpq	$0, -144(%rbp)	#, argblock
	je	.L658	#,
	.loc 1 4351 0 is_stmt 0 discriminator 1
	cmpl	$0, -152(%rbp)	#, variable_size
	jne	.L658	#,
	movq	-136(%rbp), %rax	# arg, tmp378
	movq	112(%rax), %rax	# arg_38(D)->stack, D.17646
	testq	%rax, %rax	# D.17646
	je	.L658	#,
	.loc 1 4352 0 is_stmt 1
	movl	-112(%rbp), %eax	# lower_bound, tmp379
	movl	%eax, -116(%rbp)	# tmp379, i
	jmp	.L669	#
.L670:
	.loc 1 4353 0 discriminator 2
	movq	stack_usage_map(%rip), %rdx	# stack_usage_map, stack_usage_map.380
	movl	-116(%rbp), %eax	# i, tmp380
	cltq
	addq	%rdx, %rax	# stack_usage_map.380, D.17651
	movb	$1, (%rax)	#, *_116
	.loc 1 4352 0 discriminator 2
	addl	$1, -116(%rbp)	#, i
.L669:
	.loc 1 4352 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# i, tmp381
	cmpl	-108(%rbp), %eax	# upper_bound, tmp381
	jl	.L670	#,
.L658:
	.loc 1 4358 0 is_stmt 1
	movq	-136(%rbp), %rax	# arg, tmp382
	movl	56(%rax), %eax	# arg_38(D)->pass_on_stack, D.17644
	testl	%eax, %eax	# D.17644
	jne	.L671	#,
	.loc 1 4360 0
	movl	-148(%rbp), %eax	# flags, tmp383
	andl	$256, %eax	#, D.17644
	testl	%eax, %eax	# D.17644
	je	.L672	#,
	.loc 1 4361 0
	movq	-136(%rbp), %rax	# arg, tmp384
	movq	40(%rax), %rax	# arg_38(D)->tail_call_reg, tmp385
	movq	%rax, -80(%rbp)	# tmp385, reg
	jmp	.L673	#
.L672:
	.loc 1 4363 0
	movq	-136(%rbp), %rax	# arg, tmp386
	movq	32(%rax), %rax	# arg_38(D)->reg, tmp387
	movq	%rax, -80(%rbp)	# tmp387, reg
.L673:
	.loc 1 4364 0
	movq	-136(%rbp), %rax	# arg, tmp388
	movl	52(%rax), %eax	# arg_38(D)->partial, tmp389
	movl	%eax, -120(%rbp)	# tmp389, partial
.L671:
	.loc 1 4367 0
	cmpq	$0, -80(%rbp)	#, reg
	je	.L674	#,
	.loc 1 4367 0 is_stmt 0 discriminator 1
	cmpl	$0, -120(%rbp)	#, partial
	jne	.L674	#,
	.loc 1 4370 0 is_stmt 1
	movl	$__FUNCTION__.13270, %edx	#,
	movl	$4370, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L674:
	.loc 1 4374 0
	movq	-136(%rbp), %rax	# arg, tmp390
	movl	144(%rax), %eax	# arg_38(D)->n_aligned_regs, D.17644
	testl	%eax, %eax	# D.17644
	je	.L675	#,
	.loc 1 4375 0
	movq	$0, -80(%rbp)	#, reg
.L675:
	.loc 1 4379 0
	movq	-136(%rbp), %rax	# arg, tmp391
	movq	16(%rax), %rax	# arg_38(D)->value, D.17646
	testq	%rax, %rax	# D.17646
	jne	.L676	#,
	.loc 1 4399 0
	movq	-136(%rbp), %rax	# arg, tmp392
	movl	56(%rax), %eax	# arg_38(D)->pass_on_stack, D.17644
	testl	%eax, %eax	# D.17644
	je	.L677	#,
	.loc 1 4400 0
	movl	stack_arg_under_construction(%rip), %eax	# stack_arg_under_construction, stack_arg_under_construction.381
	addl	$1, %eax	#, stack_arg_under_construction.382
	movl	%eax, stack_arg_under_construction(%rip)	# stack_arg_under_construction.382, stack_arg_under_construction
.L677:
	.loc 1 4402 0
	cmpl	$0, -120(%rbp)	#, partial
	jne	.L678	#,
	.loc 1 4404 0
	movq	-64(%rbp), %rax	# pval, tmp393
	movq	8(%rax), %rax	# pval_39->common.type, D.17654
	movzbl	61(%rax), %eax	# *_129, tmp396
	shrb	%al	# D.17656
	movzbl	%al, %edx	# D.17656, D.17653
	movq	-136(%rbp), %rax	# arg, tmp397
	movl	8(%rax), %eax	# arg_38(D)->mode, D.17657
	cmpl	%eax, %edx	# D.17657, D.17653
	jne	.L678	#,
	.loc 1 4402 0
	movq	-136(%rbp), %rax	# arg, tmp398
	movq	112(%rax), %rax	# arg_38(D)->stack, iftmp.383
	jmp	.L679	#
.L678:
	.loc 1 4402 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.383
.L679:
	.loc 1 4402 0 discriminator 2
	movq	-64(%rbp), %rdi	# pval, tmp399
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# iftmp.383,
	call	expand_expr	#
	movq	-136(%rbp), %rdx	# arg, tmp400
	movq	%rax, 16(%rdx)	# D.17646, arg_38(D)->value
	.loc 1 4411 0 is_stmt 1 discriminator 2
	movq	-136(%rbp), %rax	# arg, tmp401
	movl	8(%rax), %edx	# arg_38(D)->mode, D.17657
	movq	-64(%rbp), %rax	# pval, tmp402
	movq	8(%rax), %rax	# pval_39->common.type, D.17654
	movzbl	61(%rax), %eax	# *_137, tmp405
	shrb	%al	# D.17656
	movzbl	%al, %eax	# D.17656, D.17653
	cmpl	%eax, %edx	# D.17653, D.17657
	je	.L680	#,
	.loc 1 4412 0
	movq	-136(%rbp), %rax	# arg, tmp406
	movl	48(%rax), %ecx	# arg_38(D)->unsignedp, D.17644
	movq	-136(%rbp), %rax	# arg, tmp407
	movq	16(%rax), %rdx	# arg_38(D)->value, D.17646
	movq	-64(%rbp), %rax	# pval, tmp408
	movq	8(%rax), %rax	# pval_39->common.type, D.17654
	movzbl	61(%rax), %eax	# *_142, tmp411
	shrb	%al	# D.17656
	movzbl	%al, %esi	# D.17656, D.17657
	movq	-136(%rbp), %rax	# arg, tmp412
	movl	8(%rax), %eax	# arg_38(D)->mode, D.17657
	movl	%eax, %edi	# D.17657,
	call	convert_modes	#
	movq	-136(%rbp), %rdx	# arg, tmp413
	movq	%rax, 16(%rdx)	# D.17646, arg_38(D)->value
.L680:
	.loc 1 4415 0
	movq	-136(%rbp), %rax	# arg, tmp414
	movl	56(%rax), %eax	# arg_38(D)->pass_on_stack, D.17644
	testl	%eax, %eax	# D.17644
	je	.L676	#,
	.loc 1 4416 0
	movl	stack_arg_under_construction(%rip), %eax	# stack_arg_under_construction, stack_arg_under_construction.384
	subl	$1, %eax	#, stack_arg_under_construction.385
	movl	%eax, stack_arg_under_construction(%rip)	# stack_arg_under_construction.385, stack_arg_under_construction
.L676:
	.loc 1 4421 0
	movl	-148(%rbp), %eax	# flags, tmp415
	andl	$8, %eax	#, D.17644
	testl	%eax, %eax	# D.17644
	je	.L681	#,
	.loc 1 4422 0
	call	do_pending_stack_adjust	#
.L681:
	.loc 1 4424 0
	movq	-136(%rbp), %rax	# arg, tmp416
	movq	16(%rax), %rdx	# arg_38(D)->value, D.17646
	movq	-136(%rbp), %rax	# arg, tmp417
	movq	112(%rax), %rax	# arg_38(D)->stack, D.17646
	cmpq	%rax, %rdx	# D.17646, D.17646
	je	.L682	#,
	.loc 1 4427 0
	movq	-136(%rbp), %rax	# arg, tmp418
	movl	8(%rax), %eax	# arg_38(D)->mode, D.17657
	cmpl	$51, %eax	#, D.17657
	je	.L683	#,
.LBB58:
	.loc 1 4441 0
	movq	-136(%rbp), %rax	# arg, tmp419
	movl	8(%rax), %eax	# arg_38(D)->mode, D.17657
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17645
	movzbl	%al, %eax	# D.17645, tmp421
	movl	%eax, -84(%rbp)	# tmp421, size
	.loc 1 4446 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.387
	andl	$33554432, %eax	#, D.17644
	testl	%eax, %eax	# D.17644
	je	.L684	#,
	.loc 1 4446 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# size, tmp422
	addl	$7, %eax	#, D.17644
	andl	$-8, %eax	#, iftmp.386
	jmp	.L685	#
.L684:
	.loc 1 4446 0 discriminator 2
	movl	-84(%rbp), %eax	# size, tmp423
	addl	$1, %eax	#, D.17644
	andl	$-2, %eax	#, iftmp.386
.L685:
	.loc 1 4446 0 discriminator 3
	movl	%eax, -84(%rbp)	# iftmp.386, size
	.loc 1 4448 0 is_stmt 1 discriminator 3
	movl	-84(%rbp), %eax	# size, tmp424
	movl	%eax, -92(%rbp)	# tmp424, used
	.loc 1 4453 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.389
	andl	$33554432, %eax	#, D.17644
	testl	%eax, %eax	# D.17644
	je	.L686	#,
	.loc 1 4453 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.388
	jmp	.L687	#
.L686:
	.loc 1 4453 0 discriminator 2
	movl	$4, %eax	#, iftmp.388
.L687:
	.loc 1 4453 0 discriminator 3
	movl	-84(%rbp), %edx	# size, tmp425
	addl	%edx, %eax	# tmp425, D.17644
	subl	$1, %eax	#, D.17644
	.loc 1 4454 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %edx	# target_flags, target_flags.391
	andl	$33554432, %edx	#, D.17644
	testl	%edx, %edx	# D.17644
	je	.L688	#,
	.loc 1 4454 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.390
	jmp	.L689	#
.L688:
	.loc 1 4454 0 discriminator 2
	movl	$4, %ebx	#, iftmp.390
.L689:
	.loc 1 4454 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.390
	movl	%eax, %edx	# tmp426, D.17644
	.loc 1 4455 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.393
	andl	$33554432, %eax	#, D.17644
	testl	%eax, %eax	# D.17644
	je	.L690	#,
	.loc 1 4455 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.392
	jmp	.L691	#
.L690:
	.loc 1 4455 0 discriminator 2
	movl	$4, %eax	#, iftmp.392
.L691:
	.loc 1 4453 0 is_stmt 1
	imull	%edx, %eax	# D.17644, tmp428
	movl	%eax, -92(%rbp)	# tmp428, used
	.loc 1 4462 0
	movq	-136(%rbp), %rax	# arg, tmp429
	movq	160(%rax), %rax	# arg_38(D)->alignment_pad.var, D.17654
	.loc 1 4459 0
	testq	%rax, %rax	# D.17654
	jne	.L692	#,
	.loc 1 4462 0
	movq	-136(%rbp), %rax	# arg, tmp430
	movq	152(%rax), %rax	# arg_38(D)->alignment_pad.constant, D.17648
	.loc 1 4459 0
	movq	%rax, %rsi	# D.17648,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rbx	#, iftmp.394
	jmp	.L693	#
.L692:
	.loc 1 4462 0
	movq	-136(%rbp), %rax	# arg, tmp431
	movq	160(%rax), %rax	# arg_38(D)->alignment_pad.var, D.17654
	testq	%rax, %rax	# D.17654
	jne	.L694	#,
	.loc 1 4462 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp432
	movq	152(%rax), %rax	# arg_38(D)->alignment_pad.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	jmp	.L695	#
.L694:
	.loc 1 4462 0 discriminator 2
	movq	-136(%rbp), %rax	# arg, tmp433
	movq	152(%rax), %rax	# arg_38(D)->alignment_pad.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.17654
	movq	-136(%rbp), %rax	# arg, tmp434
	movq	160(%rax), %rdx	# arg_38(D)->alignment_pad.var, D.17654
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17654
	movq	%rdx, %rsi	# D.17654,
	movq	%rax, %rdi	# D.17654,
	call	convert	#
	movq	%rbx, %rdx	# D.17654,
	movq	%rax, %rsi	# D.17654,
	movl	$59, %edi	#,
	call	size_binop	#
.L695:
	.loc 1 4459 0 is_stmt 1
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.395,
	call	expand_expr	#
	movq	%rax, %rbx	#, iftmp.394
.L693:
	.loc 1 4461 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp435
	movq	72(%rax), %rax	# arg_38(D)->offset.var, D.17654
	.loc 1 4459 0 discriminator 1
	testq	%rax, %rax	# D.17654
	jne	.L696	#,
	.loc 1 4461 0
	movq	-136(%rbp), %rax	# arg, tmp436
	movq	64(%rax), %rax	# arg_38(D)->offset.constant, D.17648
	.loc 1 4459 0
	movq	%rax, %rsi	# D.17648,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L697	#
.L696:
	.loc 1 4461 0
	movq	-136(%rbp), %rax	# arg, tmp437
	movq	72(%rax), %rax	# arg_38(D)->offset.var, D.17654
	testq	%rax, %rax	# D.17654
	jne	.L698	#,
	.loc 1 4461 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp438
	movq	64(%rax), %rax	# arg_38(D)->offset.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	jmp	.L699	#
.L698:
	.loc 1 4461 0 discriminator 2
	movq	-136(%rbp), %rax	# arg, tmp439
	movq	64(%rax), %rax	# arg_38(D)->offset.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	movq	%rax, %r12	#, D.17654
	movq	-136(%rbp), %rax	# arg, tmp440
	movq	72(%rax), %rdx	# arg_38(D)->offset.var, D.17654
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17654
	movq	%rdx, %rsi	# D.17654,
	movq	%rax, %rdi	# D.17654,
	call	convert	#
	movq	%r12, %rdx	# D.17654,
	movq	%rax, %rsi	# D.17654,
	movl	$59, %edi	#,
	call	size_binop	#
.L699:
	.loc 1 4459 0 is_stmt 1
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.397,
	call	expand_expr	#
.L697:
	.loc 1 4459 0 is_stmt 0 discriminator 2
	movl	-84(%rbp), %edx	# size, tmp441
	movl	-92(%rbp), %ecx	# used, tmp442
	subl	%edx, %ecx	# tmp441, D.17644
	movl	%ecx, %r9d	# D.17644, D.17644
	movq	-64(%rbp), %rdx	# pval, tmp443
	movq	8(%rdx), %rdx	# pval_39->common.type, D.17654
	movq	-136(%rbp), %rcx	# arg, tmp444
	movl	8(%rcx), %esi	# arg_38(D)->mode, D.17657
	movq	-136(%rbp), %rcx	# arg, tmp445
	movq	16(%rcx), %rdi	# arg_38(D)->value, D.17646
	movl	-120(%rbp), %r8d	# partial, tmp446
	movq	%rbx, 40(%rsp)	# iftmp.394,
	movl	-156(%rbp), %ecx	# reg_parm_stack_space, tmp447
	movl	%ecx, 32(%rsp)	# tmp447,
	movq	%rax, 24(%rsp)	# iftmp.396,
	movq	-144(%rbp), %rax	# argblock, tmp448
	movq	%rax, 16(%rsp)	# tmp448,
	movl	%r9d, 8(%rsp)	# D.17644,
	movq	-80(%rbp), %rax	# reg, tmp449
	movq	%rax, (%rsp)	# tmp449,
	movl	%r8d, %r9d	# tmp446,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	call	emit_push_insn	#
	.loc 1 4466 0 is_stmt 1 discriminator 2
	cmpl	$0, -120(%rbp)	#, partial
	jne	.L700	#,
	.loc 1 4467 0
	movq	-136(%rbp), %rax	# arg, tmp450
	movq	112(%rax), %rdx	# arg_38(D)->stack, D.17646
	movq	-136(%rbp), %rax	# arg, tmp451
	movq	%rdx, 16(%rax)	# D.17646, arg_38(D)->value
.LBE58:
	jmp	.L682	#
.L700:
	jmp	.L682	#
.L683:
.LBB59:
	.loc 1 4483 0
	movq	-136(%rbp), %rax	# arg, tmp452
	movq	104(%rax), %rax	# arg_38(D)->size.var, D.17654
	testq	%rax, %rax	# D.17654
	je	.L701	#,
	.loc 1 4485 0
	movl	$0, -100(%rbp)	#, excess
	.loc 1 4486 0
	movq	-136(%rbp), %rax	# arg, tmp453
	movq	104(%rax), %rax	# arg_38(D)->size.var, D.17654
	testq	%rax, %rax	# D.17654
	jne	.L702	#,
	.loc 1 4486 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp454
	movq	96(%rax), %rax	# arg_38(D)->size.constant, D.17648
	movq	%rax, %rsi	# D.17648,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L703	#
.L702:
	.loc 1 4486 0 discriminator 2
	movq	-136(%rbp), %rax	# arg, tmp455
	movq	104(%rax), %rax	# arg_38(D)->size.var, D.17654
	testq	%rax, %rax	# D.17654
	jne	.L704	#,
	.loc 1 4486 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp456
	movq	96(%rax), %rax	# arg_38(D)->size.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	jmp	.L705	#
.L704:
	.loc 1 4486 0 discriminator 2
	movq	-136(%rbp), %rax	# arg, tmp457
	movq	96(%rax), %rax	# arg_38(D)->size.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.17654
	movq	-136(%rbp), %rax	# arg, tmp458
	movq	104(%rax), %rdx	# arg_38(D)->size.var, D.17654
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17654
	movq	%rdx, %rsi	# D.17654,
	movq	%rax, %rdi	# D.17654,
	call	convert	#
	movq	%rbx, %rdx	# D.17654,
	movq	%rax, %rsi	# D.17654,
	movl	$59, %edi	#,
	call	size_binop	#
.L705:
	.loc 1 4486 0 discriminator 3
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.399,
	call	expand_expr	#
.L703:
	.loc 1 4486 0 discriminator 1
	movq	%rax, -72(%rbp)	# iftmp.398, size_rtx
	jmp	.L706	#
.L701:
	.loc 1 4492 0 is_stmt 1
	movq	-136(%rbp), %rax	# arg, tmp459
	movq	96(%rax), %rax	# arg_38(D)->size.constant, D.17648
	movl	%eax, %ebx	# D.17648, D.17649
	movq	-64(%rbp), %rax	# pval, tmp460
	movq	8(%rax), %rax	# pval_39->common.type, D.17654
	movq	%rax, %rdi	# D.17654,
	call	int_size_in_bytes	#
	subl	%eax, %ebx	# D.17649, D.17649
	movl	%ebx, %edx	# D.17649, D.17649
	.loc 1 4493 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.401
	andl	$33554432, %eax	#, D.17644
	testl	%eax, %eax	# D.17644
	je	.L707	#,
	.loc 1 4493 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.400
	jmp	.L708	#
.L707:
	.loc 1 4493 0 discriminator 2
	movl	$4, %eax	#, iftmp.400
.L708:
	.loc 1 4493 0 discriminator 3
	imull	-120(%rbp), %eax	# partial, D.17644
	.loc 1 4492 0 is_stmt 1 discriminator 3
	addl	%edx, %eax	# D.17649, D.17649
	movl	%eax, -100(%rbp)	# D.17649, excess
	.loc 1 4494 0 discriminator 3
	movq	-64(%rbp), %rax	# pval, tmp461
	movq	%rax, %rdi	# tmp461,
	call	expr_size	#
	movq	%rax, -72(%rbp)	# tmp462, size_rtx
.L706:
	.loc 1 4497 0
	movl	-148(%rbp), %eax	# flags, tmp463
	andl	$256, %eax	#, D.17644
	testl	%eax, %eax	# D.17644
	je	.L709	#,
	.loc 1 4497 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp464
	movq	16(%rax), %rax	# arg_38(D)->value, D.17646
	movzwl	(%rax), %eax	# _245->code, D.17647
	cmpw	$66, %ax	#, D.17647
	jne	.L709	#,
.LBB60:
	.loc 1 4501 0 is_stmt 1
	movq	-136(%rbp), %rax	# arg, tmp465
	movq	16(%rax), %rax	# arg_38(D)->value, tmp466
	movq	%rax, -32(%rbp)	# tmp466, x
	.loc 1 4502 0
	movl	$0, -96(%rbp)	#, i
	.loc 1 4504 0
	movq	-32(%rbp), %rax	# x, tmp467
	movq	8(%rax), %rdx	# x_247->fld[0].rtx, D.17646
	movq	cfun(%rip), %rax	# cfun, cfun.402
	movq	128(%rax), %rax	# cfun.402_250->internal_arg_pointer, D.17646
	cmpq	%rax, %rdx	# D.17646, D.17646
	je	.L710	#,
	.loc 1 4505 0
	movq	-32(%rbp), %rax	# x, tmp468
	movq	8(%rax), %rax	# x_247->fld[0].rtx, D.17646
	movzwl	(%rax), %eax	# _252->code, D.17647
	cmpw	$75, %ax	#, D.17647
	jne	.L709	#,
	.loc 1 4506 0
	movq	-32(%rbp), %rax	# x, tmp469
	movq	8(%rax), %rax	# x_247->fld[0].rtx, D.17646
	movq	8(%rax), %rdx	# _254->fld[0].rtx, D.17646
	.loc 1 4507 0
	movq	cfun(%rip), %rax	# cfun, cfun.403
	movq	128(%rax), %rax	# cfun.403_256->internal_arg_pointer, D.17646
	.loc 1 4506 0
	cmpq	%rax, %rdx	# D.17646, D.17646
	jne	.L709	#,
	.loc 1 4508 0
	movq	-32(%rbp), %rax	# x, tmp470
	movq	8(%rax), %rax	# x_247->fld[0].rtx, D.17646
	movq	16(%rax), %rax	# _258->fld[1].rtx, D.17646
	movzwl	(%rax), %eax	# _259->code, D.17647
	cmpw	$54, %ax	#, D.17647
	jne	.L709	#,
.L710:
	.loc 1 4510 0
	movq	-32(%rbp), %rax	# x, tmp471
	movq	8(%rax), %rdx	# x_247->fld[0].rtx, D.17646
	movq	cfun(%rip), %rax	# cfun, cfun.404
	movq	128(%rax), %rax	# cfun.404_262->internal_arg_pointer, D.17646
	cmpq	%rax, %rdx	# D.17646, D.17646
	je	.L711	#,
	.loc 1 4511 0
	movq	-32(%rbp), %rax	# x, tmp472
	movq	8(%rax), %rax	# x_247->fld[0].rtx, D.17646
	movq	16(%rax), %rax	# _264->fld[1].rtx, D.17646
	movq	8(%rax), %rax	# _265->fld[0].rtwint, D.17648
	movl	%eax, -96(%rbp)	# D.17648, i
.L711:
	.loc 1 4514 0
	movq	-136(%rbp), %rax	# arg, tmp473
	movq	72(%rax), %rax	# arg_38(D)->offset.var, D.17654
	testq	%rax, %rax	# D.17654
	jne	.L712	#,
	.loc 1 4514 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# size_rtx, tmp474
	movzwl	(%rax), %eax	# size_rtx_14->code, D.17647
	cmpw	$54, %ax	#, D.17647
	je	.L713	#,
.L712:
	.loc 1 4515 0 is_stmt 1
	movl	$__FUNCTION__.13270, %edx	#,
	movl	$4515, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L713:
	.loc 1 4517 0
	movq	-136(%rbp), %rax	# arg, tmp475
	movq	64(%rax), %rdx	# arg_38(D)->offset.constant, D.17648
	movl	-96(%rbp), %eax	# i, tmp476
	cltq
	cmpq	%rax, %rdx	# D.17648, D.17648
	jle	.L714	#,
	.loc 1 4519 0
	movq	-136(%rbp), %rax	# arg, tmp477
	movq	64(%rax), %rdx	# arg_38(D)->offset.constant, D.17648
	movl	-96(%rbp), %eax	# i, tmp478
	movslq	%eax, %rcx	# tmp478, D.17648
	movq	-72(%rbp), %rax	# size_rtx, tmp479
	movq	8(%rax), %rax	# size_rtx_14->fld[0].rtwint, D.17648
	addq	%rcx, %rax	# D.17648, D.17648
	cmpq	%rax, %rdx	# D.17648, D.17648
	jge	.L709	#,
	.loc 1 4520 0
	movl	$1, -104(%rbp)	#, sibcall_failure
	jmp	.L709	#
.L714:
	.loc 1 4522 0
	movq	-136(%rbp), %rax	# arg, tmp480
	movq	64(%rax), %rdx	# arg_38(D)->offset.constant, D.17648
	movl	-96(%rbp), %eax	# i, tmp481
	cltq
	cmpq	%rax, %rdx	# D.17648, D.17648
	jge	.L709	#,
	.loc 1 4524 0
	movl	-96(%rbp), %eax	# i, tmp482
	movslq	%eax, %rdx	# tmp482, D.17648
	movq	-136(%rbp), %rax	# arg, tmp483
	movq	64(%rax), %rcx	# arg_38(D)->offset.constant, D.17648
	movq	-72(%rbp), %rax	# size_rtx, tmp484
	movq	8(%rax), %rax	# size_rtx_14->fld[0].rtwint, D.17648
	addq	%rcx, %rax	# D.17648, D.17648
	cmpq	%rax, %rdx	# D.17648, D.17648
	jge	.L709	#,
	.loc 1 4525 0
	movl	$1, -104(%rbp)	#, sibcall_failure
.L709:
.LBE60:
	.loc 1 4539 0
	movq	-136(%rbp), %rax	# arg, tmp485
	movq	32(%rax), %rax	# arg_38(D)->reg, D.17646
	testq	%rax, %rax	# D.17646
	je	.L716	#,
	.loc 1 4539 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp486
	movl	56(%rax), %eax	# arg_38(D)->pass_on_stack, D.17644
	testl	%eax, %eax	# D.17644
	je	.L716	#,
	.loc 1 4544 0 is_stmt 1
	movq	-136(%rbp), %rax	# arg, tmp487
	movq	64(%rax), %rdx	# arg_38(D)->offset.constant, D.17648
	movl	-156(%rbp), %eax	# reg_parm_stack_space, tmp488
	cltq
	cmpq	%rax, %rdx	# D.17648, D.17648
	jge	.L717	#,
	.loc 1 4544 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp489
	movq	72(%rax), %rax	# arg_38(D)->offset.var, D.17654
	testq	%rax, %rax	# D.17654
	je	.L717	#,
	.loc 1 4545 0 is_stmt 1
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L716	#
.L717:
	.loc 1 4546 0
	movq	-136(%rbp), %rax	# arg, tmp490
	movq	64(%rax), %rdx	# arg_38(D)->offset.constant, D.17648
	movl	-156(%rbp), %eax	# reg_parm_stack_space, tmp491
	cltq
	cmpq	%rax, %rdx	# D.17648, D.17648
	jge	.L718	#,
	.loc 1 4546 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp492
	movq	104(%rax), %rax	# arg_38(D)->size.var, D.17654
	testq	%rax, %rax	# D.17654
	je	.L718	#,
	.loc 1 4547 0 is_stmt 1
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L716	#
.L718:
	.loc 1 4548 0
	movq	-136(%rbp), %rax	# arg, tmp493
	movq	64(%rax), %rdx	# arg_38(D)->offset.constant, D.17648
	movl	-156(%rbp), %eax	# reg_parm_stack_space, tmp494
	cltq
	cmpq	%rax, %rdx	# D.17648, D.17648
	jge	.L716	#,
	.loc 1 4549 0
	movq	-136(%rbp), %rax	# arg, tmp495
	movq	64(%rax), %rdx	# arg_38(D)->offset.constant, D.17648
	movq	-136(%rbp), %rax	# arg, tmp496
	movq	96(%rax), %rax	# arg_38(D)->size.constant, D.17648
	addq	%rax, %rdx	# D.17648, D.17648
	.loc 1 4550 0
	movl	-156(%rbp), %eax	# reg_parm_stack_space, tmp497
	cltq
	.loc 1 4549 0
	cmpq	%rax, %rdx	# D.17648, D.17648
	jle	.L716	#,
.LBB61:
	.loc 1 4552 0
	movl	-156(%rbp), %eax	# reg_parm_stack_space, tmp498
	movslq	%eax, %rdx	# tmp498, D.17648
	movq	-136(%rbp), %rax	# arg, tmp499
	movq	64(%rax), %rax	# arg_38(D)->offset.constant, D.17648
	subq	%rax, %rdx	# D.17648, D.17648
	movq	%rdx, %rax	# D.17648, D.17648
	movq	%rax, %rsi	# D.17648,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -24(%rbp)	# tmp500, size_rtx1
	.loc 1 4557 0
	movq	-136(%rbp), %rax	# arg, tmp501
	movq	160(%rax), %rax	# arg_38(D)->alignment_pad.var, D.17654
	.loc 1 4553 0
	testq	%rax, %rax	# D.17654
	jne	.L719	#,
	.loc 1 4557 0
	movq	-136(%rbp), %rax	# arg, tmp502
	movq	152(%rax), %rax	# arg_38(D)->alignment_pad.constant, D.17648
	.loc 1 4553 0
	movq	%rax, %rsi	# D.17648,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rbx	#, iftmp.405
	jmp	.L720	#
.L719:
	.loc 1 4557 0
	movq	-136(%rbp), %rax	# arg, tmp503
	movq	160(%rax), %rax	# arg_38(D)->alignment_pad.var, D.17654
	testq	%rax, %rax	# D.17654
	jne	.L721	#,
	.loc 1 4557 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp504
	movq	152(%rax), %rax	# arg_38(D)->alignment_pad.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	jmp	.L722	#
.L721:
	.loc 1 4557 0 discriminator 2
	movq	-136(%rbp), %rax	# arg, tmp505
	movq	152(%rax), %rax	# arg_38(D)->alignment_pad.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.17654
	movq	-136(%rbp), %rax	# arg, tmp506
	movq	160(%rax), %rdx	# arg_38(D)->alignment_pad.var, D.17654
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17654
	movq	%rdx, %rsi	# D.17654,
	movq	%rax, %rdi	# D.17654,
	call	convert	#
	movq	%rbx, %rdx	# D.17654,
	movq	%rax, %rsi	# D.17654,
	movl	$59, %edi	#,
	call	size_binop	#
.L722:
	.loc 1 4553 0 is_stmt 1
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.406,
	call	expand_expr	#
	movq	%rax, %rbx	#, iftmp.405
.L720:
	.loc 1 4555 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp507
	movq	72(%rax), %rax	# arg_38(D)->offset.var, D.17654
	.loc 1 4553 0 discriminator 1
	testq	%rax, %rax	# D.17654
	jne	.L723	#,
	.loc 1 4555 0
	movq	-136(%rbp), %rax	# arg, tmp508
	movq	64(%rax), %rax	# arg_38(D)->offset.constant, D.17648
	.loc 1 4553 0
	movq	%rax, %rsi	# D.17648,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L724	#
.L723:
	.loc 1 4555 0
	movq	-136(%rbp), %rax	# arg, tmp509
	movq	72(%rax), %rax	# arg_38(D)->offset.var, D.17654
	testq	%rax, %rax	# D.17654
	jne	.L725	#,
	.loc 1 4555 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp510
	movq	64(%rax), %rax	# arg_38(D)->offset.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	jmp	.L726	#
.L725:
	.loc 1 4555 0 discriminator 2
	movq	-136(%rbp), %rax	# arg, tmp511
	movq	64(%rax), %rax	# arg_38(D)->offset.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	movq	%rax, %r12	#, D.17654
	movq	-136(%rbp), %rax	# arg, tmp512
	movq	72(%rax), %rdx	# arg_38(D)->offset.var, D.17654
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17654
	movq	%rdx, %rsi	# D.17654,
	movq	%rax, %rdi	# D.17654,
	call	convert	#
	movq	%r12, %rdx	# D.17654,
	movq	%rax, %rsi	# D.17654,
	movl	$59, %edi	#,
	call	size_binop	#
.L726:
	.loc 1 4553 0 is_stmt 1
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.408,
	call	expand_expr	#
.L724:
	.loc 1 4554 0 discriminator 2
	movq	-64(%rbp), %rdx	# pval, tmp513
	movq	8(%rdx), %rdx	# pval_39->common.type, D.17654
	.loc 1 4553 0 discriminator 2
	movl	64(%rdx), %r10d	# _328->type.align, D.17653
	movq	-64(%rbp), %rdx	# pval, tmp514
	movq	8(%rdx), %rdx	# pval_39->common.type, D.17654
	movq	-136(%rbp), %rcx	# arg, tmp515
	movl	8(%rcx), %esi	# arg_38(D)->mode, D.17657
	movq	-136(%rbp), %rcx	# arg, tmp516
	movq	16(%rcx), %rdi	# arg_38(D)->value, D.17646
	movl	-120(%rbp), %r9d	# partial, tmp517
	movq	-24(%rbp), %rcx	# size_rtx1, tmp518
	movq	%rbx, 40(%rsp)	# iftmp.405,
	movl	-156(%rbp), %r8d	# reg_parm_stack_space, tmp519
	movl	%r8d, 32(%rsp)	# tmp519,
	movq	%rax, 24(%rsp)	# iftmp.407,
	movq	-144(%rbp), %rax	# argblock, tmp520
	movq	%rax, 16(%rsp)	# tmp520,
	movl	-100(%rbp), %eax	# excess, tmp521
	movl	%eax, 8(%rsp)	# tmp521,
	movq	-80(%rbp), %rax	# reg, tmp522
	movq	%rax, (%rsp)	# tmp522,
	movl	%r10d, %r8d	# D.17653,
	call	emit_push_insn	#
.L716:
.LBE61:
	.loc 1 4566 0
	movq	-136(%rbp), %rax	# arg, tmp523
	movq	160(%rax), %rax	# arg_38(D)->alignment_pad.var, D.17654
	.loc 1 4562 0
	testq	%rax, %rax	# D.17654
	jne	.L727	#,
	.loc 1 4566 0
	movq	-136(%rbp), %rax	# arg, tmp524
	movq	152(%rax), %rax	# arg_38(D)->alignment_pad.constant, D.17648
	.loc 1 4562 0
	movq	%rax, %rsi	# D.17648,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rbx	#, iftmp.409
	jmp	.L728	#
.L727:
	.loc 1 4566 0
	movq	-136(%rbp), %rax	# arg, tmp525
	movq	160(%rax), %rax	# arg_38(D)->alignment_pad.var, D.17654
	testq	%rax, %rax	# D.17654
	jne	.L729	#,
	.loc 1 4566 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp526
	movq	152(%rax), %rax	# arg_38(D)->alignment_pad.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	jmp	.L730	#
.L729:
	.loc 1 4566 0 discriminator 2
	movq	-136(%rbp), %rax	# arg, tmp527
	movq	152(%rax), %rax	# arg_38(D)->alignment_pad.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.17654
	movq	-136(%rbp), %rax	# arg, tmp528
	movq	160(%rax), %rdx	# arg_38(D)->alignment_pad.var, D.17654
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17654
	movq	%rdx, %rsi	# D.17654,
	movq	%rax, %rdi	# D.17654,
	call	convert	#
	movq	%rbx, %rdx	# D.17654,
	movq	%rax, %rsi	# D.17654,
	movl	$59, %edi	#,
	call	size_binop	#
.L730:
	.loc 1 4562 0 is_stmt 1
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.410,
	call	expand_expr	#
	movq	%rax, %rbx	#, iftmp.409
.L728:
	.loc 1 4564 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp529
	movq	72(%rax), %rax	# arg_38(D)->offset.var, D.17654
	.loc 1 4562 0 discriminator 1
	testq	%rax, %rax	# D.17654
	jne	.L731	#,
	.loc 1 4564 0
	movq	-136(%rbp), %rax	# arg, tmp530
	movq	64(%rax), %rax	# arg_38(D)->offset.constant, D.17648
	.loc 1 4562 0
	movq	%rax, %rsi	# D.17648,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L732	#
.L731:
	.loc 1 4564 0
	movq	-136(%rbp), %rax	# arg, tmp531
	movq	72(%rax), %rax	# arg_38(D)->offset.var, D.17654
	testq	%rax, %rax	# D.17654
	jne	.L733	#,
	.loc 1 4564 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# arg, tmp532
	movq	64(%rax), %rax	# arg_38(D)->offset.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	jmp	.L734	#
.L733:
	.loc 1 4564 0 discriminator 2
	movq	-136(%rbp), %rax	# arg, tmp533
	movq	64(%rax), %rax	# arg_38(D)->offset.constant, D.17648
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17648,
	call	size_int_wide	#
	movq	%rax, %r12	#, D.17654
	movq	-136(%rbp), %rax	# arg, tmp534
	movq	72(%rax), %rdx	# arg_38(D)->offset.var, D.17654
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.17654
	movq	%rdx, %rsi	# D.17654,
	movq	%rax, %rdi	# D.17654,
	call	convert	#
	movq	%r12, %rdx	# D.17654,
	movq	%rax, %rsi	# D.17654,
	movl	$59, %edi	#,
	call	size_binop	#
.L734:
	.loc 1 4562 0 is_stmt 1
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.412,
	call	expand_expr	#
.L732:
	.loc 1 4563 0
	movq	-64(%rbp), %rdx	# pval, tmp535
	movq	8(%rdx), %rdx	# pval_39->common.type, D.17654
	.loc 1 4562 0
	movl	64(%rdx), %r10d	# _359->type.align, D.17653
	movq	-64(%rbp), %rdx	# pval, tmp536
	movq	8(%rdx), %rdx	# pval_39->common.type, D.17654
	movq	-136(%rbp), %rcx	# arg, tmp537
	movl	8(%rcx), %esi	# arg_38(D)->mode, D.17657
	movq	-136(%rbp), %rcx	# arg, tmp538
	movq	16(%rcx), %rdi	# arg_38(D)->value, D.17646
	movl	-120(%rbp), %r9d	# partial, tmp539
	movq	-72(%rbp), %rcx	# size_rtx, tmp540
	movq	%rbx, 40(%rsp)	# iftmp.409,
	movl	-156(%rbp), %r8d	# reg_parm_stack_space, tmp541
	movl	%r8d, 32(%rsp)	# tmp541,
	movq	%rax, 24(%rsp)	# iftmp.411,
	movq	-144(%rbp), %rax	# argblock, tmp542
	movq	%rax, 16(%rsp)	# tmp542,
	movl	-100(%rbp), %eax	# excess, tmp543
	movl	%eax, 8(%rsp)	# tmp543,
	movq	-80(%rbp), %rax	# reg, tmp544
	movq	%rax, (%rsp)	# tmp544,
	movl	%r10d, %r8d	# D.17653,
	call	emit_push_insn	#
	.loc 1 4576 0
	cmpl	$0, -120(%rbp)	#, partial
	jne	.L682	#,
	.loc 1 4577 0
	movq	-136(%rbp), %rax	# arg, tmp545
	movq	120(%rax), %rdx	# arg_38(D)->stack_slot, D.17646
	movq	-136(%rbp), %rax	# arg, tmp546
	movq	%rdx, 16(%rax)	# D.17646, arg_38(D)->value
.L682:
.LBE59:
	.loc 1 4582 0
	movq	cfun(%rip), %rax	# cfun, cfun.413
	movq	16(%rax), %rax	# cfun.413_365->expr, D.17658
	movq	cfun(%rip), %rdx	# cfun, cfun.414
	movq	16(%rdx), %rdx	# cfun.414_367->expr, D.17658
	movl	4(%rdx), %edx	# _368->x_inhibit_defer_pop, D.17644
	addl	$1, %edx	#, D.17644
	movl	%edx, 4(%rax)	# D.17644, _366->x_inhibit_defer_pop
	.loc 1 4586 0
	call	emit_queue	#
	.loc 1 4591 0
	movl	$0, %edi	#,
	call	preserve_temp_slots	#
	.loc 1 4592 0
	call	free_temp_slots	#
	.loc 1 4593 0
	call	pop_temp_slots	#
	.loc 1 4595 0
	movl	-104(%rbp), %eax	# sibcall_failure, D.17644
.L657:
	.loc 1 4596 0
	addq	$192, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	store_one_arg, .-store_one_arg
	.section	.rodata
	.type	__FUNCTION__.12762, @object
	.size	__FUNCTION__.12762, 12
__FUNCTION__.12762:
	.string	"emit_call_1"
	.align 16
	.type	__FUNCTION__.12867, @object
	.size	__FUNCTION__.12867, 28
__FUNCTION__.12867:
	.string	"compute_argument_block_size"
	.align 16
	.type	__FUNCTION__.12875, @object
	.size	__FUNCTION__.12875, 21
__FUNCTION__.12875:
	.string	"precompute_arguments"
	.type	__FUNCTION__.13040, @object
	.size	__FUNCTION__.13040, 12
__FUNCTION__.13040:
	.string	"expand_call"
	.local	currently_expanding_call.12993
	.comm	currently_expanding_call.12993,4,4
	.align 16
	.type	__FUNCTION__.13168, @object
	.size	__FUNCTION__.13168, 26
__FUNCTION__.13168:
	.string	"emit_library_call_value_1"
	.type	__FUNCTION__.13270, @object
	.size	__FUNCTION__.13270, 14
__FUNCTION__.13270:
	.string	"store_one_arg"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "i386.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 7 "<built-in>"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 9 "machmode.h"
	.file 10 "real.h"
	.file 11 "hashtable.h"
	.file 12 "function.h"
	.file 13 "expr.h"
	.file 14 "libfuncs.h"
	.file 15 "timevar.h"
	.file 16 "sbitmap.h"
	.file 17 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4c58
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1269
	.byte	0x1
	.long	.LASF1270
	.long	.LASF1271
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
	.long	0x2b9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x2b9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xa91
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
	.long	0xaa1
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
	.long	.LASF269
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x1324
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0x14e4
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0x1547
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x1600
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0x157c
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x15be
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x1665
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x1f1e
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x17f4
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x168c
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x16c1
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x1704
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x1739
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
	.long	.LASF28
	.byte	0x1c
	.byte	0x5
	.value	0x683
	.long	0x255
	.uleb128 0xf
	.long	.LASF29
	.byte	0x5
	.value	0x684
	.long	0x1de
	.byte	0
	.uleb128 0xf
	.long	.LASF30
	.byte	0x5
	.value	0x685
	.long	0x1de
	.byte	0x4
	.uleb128 0xf
	.long	.LASF31
	.byte	0x5
	.value	0x686
	.long	0x1de
	.byte	0x8
	.uleb128 0xf
	.long	.LASF32
	.byte	0x5
	.value	0x687
	.long	0x1de
	.byte	0xc
	.uleb128 0xf
	.long	.LASF33
	.byte	0x5
	.value	0x688
	.long	0x1de
	.byte	0x10
	.uleb128 0xf
	.long	.LASF34
	.byte	0x5
	.value	0x689
	.long	0x1de
	.byte	0x14
	.uleb128 0xf
	.long	.LASF35
	.byte	0x5
	.value	0x68a
	.long	0x1de
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF36
	.byte	0x5
	.value	0x68b
	.long	0x1ec
	.uleb128 0x7
	.long	.LASF37
	.byte	0x6
	.byte	0x28
	.long	0x26c
	.uleb128 0x11
	.long	0x27c
	.long	0x27c
	.uleb128 0x12
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF38
	.byte	0x18
	.byte	0x7
	.byte	0
	.long	0x2b9
	.uleb128 0x8
	.long	.LASF39
	.byte	0x7
	.byte	0
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x7
	.byte	0
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF41
	.byte	0x7
	.byte	0
	.long	0x2c0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF42
	.byte	0x7
	.byte	0
	.long	0x2c0
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.long	.LASF43
	.uleb128 0x13
	.byte	0x8
	.uleb128 0x7
	.long	.LASF44
	.byte	0x6
	.byte	0x62
	.long	0x261
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF45
	.uleb128 0x7
	.long	.LASF46
	.byte	0x8
	.byte	0xd4
	.long	0x2df
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.long	.LASF48
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.long	.LASF49
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF50
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.long	.LASF51
	.uleb128 0x3
	.byte	0x8
	.long	0x308
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF52
	.uleb128 0x3
	.byte	0x8
	.long	0x315
	.uleb128 0x14
	.long	0x308
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF53
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x3
	.byte	0x8
	.long	0x1de
	.uleb128 0x15
	.long	.LASF115
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x4a3
	.uleb128 0x16
	.long	.LASF55
	.sleb128 0
	.uleb128 0x16
	.long	.LASF56
	.sleb128 1
	.uleb128 0x16
	.long	.LASF57
	.sleb128 2
	.uleb128 0x16
	.long	.LASF58
	.sleb128 3
	.uleb128 0x16
	.long	.LASF59
	.sleb128 4
	.uleb128 0x16
	.long	.LASF60
	.sleb128 5
	.uleb128 0x16
	.long	.LASF61
	.sleb128 6
	.uleb128 0x16
	.long	.LASF62
	.sleb128 7
	.uleb128 0x16
	.long	.LASF63
	.sleb128 8
	.uleb128 0x16
	.long	.LASF64
	.sleb128 9
	.uleb128 0x16
	.long	.LASF65
	.sleb128 10
	.uleb128 0x16
	.long	.LASF66
	.sleb128 11
	.uleb128 0x16
	.long	.LASF67
	.sleb128 12
	.uleb128 0x16
	.long	.LASF68
	.sleb128 13
	.uleb128 0x16
	.long	.LASF69
	.sleb128 14
	.uleb128 0x16
	.long	.LASF70
	.sleb128 15
	.uleb128 0x16
	.long	.LASF71
	.sleb128 16
	.uleb128 0x16
	.long	.LASF72
	.sleb128 17
	.uleb128 0x16
	.long	.LASF73
	.sleb128 18
	.uleb128 0x16
	.long	.LASF74
	.sleb128 19
	.uleb128 0x16
	.long	.LASF75
	.sleb128 20
	.uleb128 0x16
	.long	.LASF76
	.sleb128 21
	.uleb128 0x16
	.long	.LASF77
	.sleb128 22
	.uleb128 0x16
	.long	.LASF78
	.sleb128 23
	.uleb128 0x16
	.long	.LASF79
	.sleb128 24
	.uleb128 0x16
	.long	.LASF80
	.sleb128 25
	.uleb128 0x16
	.long	.LASF81
	.sleb128 26
	.uleb128 0x16
	.long	.LASF82
	.sleb128 27
	.uleb128 0x16
	.long	.LASF83
	.sleb128 28
	.uleb128 0x16
	.long	.LASF84
	.sleb128 29
	.uleb128 0x16
	.long	.LASF85
	.sleb128 30
	.uleb128 0x16
	.long	.LASF86
	.sleb128 31
	.uleb128 0x16
	.long	.LASF87
	.sleb128 32
	.uleb128 0x16
	.long	.LASF88
	.sleb128 33
	.uleb128 0x16
	.long	.LASF89
	.sleb128 34
	.uleb128 0x16
	.long	.LASF90
	.sleb128 35
	.uleb128 0x16
	.long	.LASF91
	.sleb128 36
	.uleb128 0x16
	.long	.LASF92
	.sleb128 37
	.uleb128 0x16
	.long	.LASF93
	.sleb128 38
	.uleb128 0x16
	.long	.LASF94
	.sleb128 39
	.uleb128 0x16
	.long	.LASF95
	.sleb128 40
	.uleb128 0x16
	.long	.LASF96
	.sleb128 41
	.uleb128 0x16
	.long	.LASF97
	.sleb128 42
	.uleb128 0x16
	.long	.LASF98
	.sleb128 43
	.uleb128 0x16
	.long	.LASF99
	.sleb128 44
	.uleb128 0x16
	.long	.LASF100
	.sleb128 45
	.uleb128 0x16
	.long	.LASF101
	.sleb128 46
	.uleb128 0x16
	.long	.LASF102
	.sleb128 47
	.uleb128 0x16
	.long	.LASF103
	.sleb128 48
	.uleb128 0x16
	.long	.LASF104
	.sleb128 49
	.uleb128 0x16
	.long	.LASF105
	.sleb128 50
	.uleb128 0x16
	.long	.LASF106
	.sleb128 51
	.uleb128 0x16
	.long	.LASF107
	.sleb128 52
	.uleb128 0x16
	.long	.LASF108
	.sleb128 53
	.uleb128 0x16
	.long	.LASF109
	.sleb128 54
	.uleb128 0x16
	.long	.LASF110
	.sleb128 55
	.uleb128 0x16
	.long	.LASF111
	.sleb128 56
	.uleb128 0x16
	.long	.LASF112
	.sleb128 57
	.uleb128 0x16
	.long	.LASF113
	.sleb128 58
	.uleb128 0x16
	.long	.LASF114
	.sleb128 59
	.byte	0
	.uleb128 0x15
	.long	.LASF116
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x4ec
	.uleb128 0x16
	.long	.LASF117
	.sleb128 0
	.uleb128 0x16
	.long	.LASF118
	.sleb128 1
	.uleb128 0x16
	.long	.LASF119
	.sleb128 2
	.uleb128 0x16
	.long	.LASF120
	.sleb128 3
	.uleb128 0x16
	.long	.LASF121
	.sleb128 4
	.uleb128 0x16
	.long	.LASF122
	.sleb128 5
	.uleb128 0x16
	.long	.LASF123
	.sleb128 6
	.uleb128 0x16
	.long	.LASF124
	.sleb128 7
	.uleb128 0x16
	.long	.LASF125
	.sleb128 8
	.uleb128 0x16
	.long	.LASF126
	.sleb128 9
	.byte	0
	.uleb128 0x15
	.long	.LASF127
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x8e8
	.uleb128 0x16
	.long	.LASF128
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0x16
	.long	.LASF129
	.sleb128 2
	.uleb128 0x16
	.long	.LASF130
	.sleb128 3
	.uleb128 0x16
	.long	.LASF131
	.sleb128 4
	.uleb128 0x16
	.long	.LASF132
	.sleb128 5
	.uleb128 0x16
	.long	.LASF133
	.sleb128 6
	.uleb128 0x16
	.long	.LASF134
	.sleb128 7
	.uleb128 0x16
	.long	.LASF135
	.sleb128 8
	.uleb128 0x16
	.long	.LASF136
	.sleb128 9
	.uleb128 0x16
	.long	.LASF137
	.sleb128 10
	.uleb128 0x16
	.long	.LASF138
	.sleb128 11
	.uleb128 0x16
	.long	.LASF139
	.sleb128 12
	.uleb128 0x16
	.long	.LASF140
	.sleb128 13
	.uleb128 0x16
	.long	.LASF141
	.sleb128 14
	.uleb128 0x16
	.long	.LASF142
	.sleb128 15
	.uleb128 0x16
	.long	.LASF143
	.sleb128 16
	.uleb128 0x16
	.long	.LASF144
	.sleb128 17
	.uleb128 0x16
	.long	.LASF145
	.sleb128 18
	.uleb128 0x16
	.long	.LASF146
	.sleb128 19
	.uleb128 0x16
	.long	.LASF147
	.sleb128 20
	.uleb128 0x16
	.long	.LASF148
	.sleb128 21
	.uleb128 0x16
	.long	.LASF149
	.sleb128 22
	.uleb128 0x16
	.long	.LASF150
	.sleb128 23
	.uleb128 0x16
	.long	.LASF151
	.sleb128 24
	.uleb128 0x16
	.long	.LASF152
	.sleb128 25
	.uleb128 0x16
	.long	.LASF153
	.sleb128 26
	.uleb128 0x16
	.long	.LASF154
	.sleb128 27
	.uleb128 0x16
	.long	.LASF155
	.sleb128 28
	.uleb128 0x16
	.long	.LASF156
	.sleb128 29
	.uleb128 0x16
	.long	.LASF157
	.sleb128 30
	.uleb128 0x16
	.long	.LASF158
	.sleb128 31
	.uleb128 0x16
	.long	.LASF159
	.sleb128 32
	.uleb128 0x16
	.long	.LASF160
	.sleb128 33
	.uleb128 0x16
	.long	.LASF161
	.sleb128 34
	.uleb128 0x16
	.long	.LASF162
	.sleb128 35
	.uleb128 0x16
	.long	.LASF163
	.sleb128 36
	.uleb128 0x16
	.long	.LASF164
	.sleb128 37
	.uleb128 0x16
	.long	.LASF165
	.sleb128 38
	.uleb128 0x16
	.long	.LASF166
	.sleb128 39
	.uleb128 0x16
	.long	.LASF167
	.sleb128 40
	.uleb128 0x16
	.long	.LASF168
	.sleb128 41
	.uleb128 0x16
	.long	.LASF169
	.sleb128 42
	.uleb128 0x16
	.long	.LASF170
	.sleb128 43
	.uleb128 0x16
	.long	.LASF171
	.sleb128 44
	.uleb128 0x16
	.long	.LASF172
	.sleb128 45
	.uleb128 0x16
	.long	.LASF173
	.sleb128 46
	.uleb128 0x17
	.string	"SET"
	.sleb128 47
	.uleb128 0x17
	.string	"USE"
	.sleb128 48
	.uleb128 0x16
	.long	.LASF174
	.sleb128 49
	.uleb128 0x16
	.long	.LASF175
	.sleb128 50
	.uleb128 0x16
	.long	.LASF176
	.sleb128 51
	.uleb128 0x16
	.long	.LASF177
	.sleb128 52
	.uleb128 0x16
	.long	.LASF178
	.sleb128 53
	.uleb128 0x16
	.long	.LASF179
	.sleb128 54
	.uleb128 0x16
	.long	.LASF180
	.sleb128 55
	.uleb128 0x16
	.long	.LASF181
	.sleb128 56
	.uleb128 0x16
	.long	.LASF182
	.sleb128 57
	.uleb128 0x16
	.long	.LASF183
	.sleb128 58
	.uleb128 0x17
	.string	"PC"
	.sleb128 59
	.uleb128 0x16
	.long	.LASF184
	.sleb128 60
	.uleb128 0x17
	.string	"REG"
	.sleb128 61
	.uleb128 0x16
	.long	.LASF185
	.sleb128 62
	.uleb128 0x16
	.long	.LASF186
	.sleb128 63
	.uleb128 0x16
	.long	.LASF187
	.sleb128 64
	.uleb128 0x16
	.long	.LASF188
	.sleb128 65
	.uleb128 0x17
	.string	"MEM"
	.sleb128 66
	.uleb128 0x16
	.long	.LASF189
	.sleb128 67
	.uleb128 0x16
	.long	.LASF190
	.sleb128 68
	.uleb128 0x17
	.string	"CC0"
	.sleb128 69
	.uleb128 0x16
	.long	.LASF191
	.sleb128 70
	.uleb128 0x16
	.long	.LASF192
	.sleb128 71
	.uleb128 0x16
	.long	.LASF193
	.sleb128 72
	.uleb128 0x16
	.long	.LASF194
	.sleb128 73
	.uleb128 0x16
	.long	.LASF195
	.sleb128 74
	.uleb128 0x16
	.long	.LASF196
	.sleb128 75
	.uleb128 0x16
	.long	.LASF197
	.sleb128 76
	.uleb128 0x17
	.string	"NEG"
	.sleb128 77
	.uleb128 0x16
	.long	.LASF198
	.sleb128 78
	.uleb128 0x17
	.string	"DIV"
	.sleb128 79
	.uleb128 0x17
	.string	"MOD"
	.sleb128 80
	.uleb128 0x16
	.long	.LASF199
	.sleb128 81
	.uleb128 0x16
	.long	.LASF200
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
	.uleb128 0x16
	.long	.LASF201
	.sleb128 87
	.uleb128 0x16
	.long	.LASF202
	.sleb128 88
	.uleb128 0x16
	.long	.LASF203
	.sleb128 89
	.uleb128 0x16
	.long	.LASF204
	.sleb128 90
	.uleb128 0x16
	.long	.LASF205
	.sleb128 91
	.uleb128 0x16
	.long	.LASF206
	.sleb128 92
	.uleb128 0x16
	.long	.LASF207
	.sleb128 93
	.uleb128 0x16
	.long	.LASF208
	.sleb128 94
	.uleb128 0x16
	.long	.LASF209
	.sleb128 95
	.uleb128 0x16
	.long	.LASF210
	.sleb128 96
	.uleb128 0x16
	.long	.LASF211
	.sleb128 97
	.uleb128 0x16
	.long	.LASF212
	.sleb128 98
	.uleb128 0x16
	.long	.LASF213
	.sleb128 99
	.uleb128 0x16
	.long	.LASF214
	.sleb128 100
	.uleb128 0x16
	.long	.LASF215
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
	.uleb128 0x16
	.long	.LASF216
	.sleb128 112
	.uleb128 0x16
	.long	.LASF217
	.sleb128 113
	.uleb128 0x16
	.long	.LASF218
	.sleb128 114
	.uleb128 0x16
	.long	.LASF219
	.sleb128 115
	.uleb128 0x16
	.long	.LASF220
	.sleb128 116
	.uleb128 0x16
	.long	.LASF221
	.sleb128 117
	.uleb128 0x16
	.long	.LASF222
	.sleb128 118
	.uleb128 0x16
	.long	.LASF223
	.sleb128 119
	.uleb128 0x16
	.long	.LASF224
	.sleb128 120
	.uleb128 0x16
	.long	.LASF225
	.sleb128 121
	.uleb128 0x16
	.long	.LASF226
	.sleb128 122
	.uleb128 0x16
	.long	.LASF227
	.sleb128 123
	.uleb128 0x16
	.long	.LASF228
	.sleb128 124
	.uleb128 0x16
	.long	.LASF229
	.sleb128 125
	.uleb128 0x17
	.string	"FIX"
	.sleb128 126
	.uleb128 0x16
	.long	.LASF230
	.sleb128 127
	.uleb128 0x16
	.long	.LASF231
	.sleb128 128
	.uleb128 0x17
	.string	"ABS"
	.sleb128 129
	.uleb128 0x16
	.long	.LASF232
	.sleb128 130
	.uleb128 0x17
	.string	"FFS"
	.sleb128 131
	.uleb128 0x16
	.long	.LASF233
	.sleb128 132
	.uleb128 0x16
	.long	.LASF234
	.sleb128 133
	.uleb128 0x16
	.long	.LASF235
	.sleb128 134
	.uleb128 0x16
	.long	.LASF236
	.sleb128 135
	.uleb128 0x16
	.long	.LASF237
	.sleb128 136
	.uleb128 0x16
	.long	.LASF238
	.sleb128 137
	.uleb128 0x16
	.long	.LASF239
	.sleb128 138
	.uleb128 0x16
	.long	.LASF240
	.sleb128 139
	.uleb128 0x16
	.long	.LASF241
	.sleb128 140
	.uleb128 0x16
	.long	.LASF242
	.sleb128 141
	.uleb128 0x16
	.long	.LASF243
	.sleb128 142
	.uleb128 0x16
	.long	.LASF244
	.sleb128 143
	.uleb128 0x16
	.long	.LASF245
	.sleb128 144
	.uleb128 0x16
	.long	.LASF246
	.sleb128 145
	.uleb128 0x16
	.long	.LASF247
	.sleb128 146
	.uleb128 0x16
	.long	.LASF248
	.sleb128 147
	.uleb128 0x16
	.long	.LASF249
	.sleb128 148
	.uleb128 0x16
	.long	.LASF250
	.sleb128 149
	.uleb128 0x16
	.long	.LASF251
	.sleb128 150
	.uleb128 0x16
	.long	.LASF252
	.sleb128 151
	.uleb128 0x17
	.string	"PHI"
	.sleb128 152
	.uleb128 0x16
	.long	.LASF253
	.sleb128 153
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x969
	.uleb128 0x5
	.long	.LASF254
	.byte	0x2
	.byte	0x47
	.long	0x2b9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF255
	.byte	0x2
	.byte	0x49
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF256
	.byte	0x2
	.byte	0x4a
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF257
	.byte	0x2
	.byte	0x4c
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF258
	.byte	0x2
	.byte	0x4e
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF259
	.byte	0x2
	.byte	0x50
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF260
	.byte	0x2
	.byte	0x53
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF261
	.byte	0x2
	.byte	0x55
	.long	0x2b9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF262
	.byte	0x2
	.byte	0x56
	.long	0x8e8
	.uleb128 0x18
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x9b9
	.uleb128 0x8
	.long	.LASF263
	.byte	0x2
	.byte	0x5e
	.long	0x2cd
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
	.long	0x2b9
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF268
	.byte	0x2
	.byte	0x63
	.long	0x974
	.uleb128 0x19
	.long	.LASF270
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xa5f
	.uleb128 0x1a
	.long	.LASF271
	.byte	0x2
	.byte	0x69
	.long	0x2cd
	.uleb128 0x1a
	.long	.LASF272
	.byte	0x2
	.byte	0x6a
	.long	0x1de
	.uleb128 0x1a
	.long	.LASF273
	.byte	0x2
	.byte	0x6b
	.long	0x2b9
	.uleb128 0x1a
	.long	.LASF274
	.byte	0x2
	.byte	0x6c
	.long	0x30f
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
	.long	.LASF275
	.byte	0x2
	.byte	0x6f
	.long	0x32e
	.uleb128 0x1a
	.long	.LASF276
	.byte	0x2
	.byte	0x70
	.long	0x969
	.uleb128 0x1a
	.long	.LASF277
	.byte	0x2
	.byte	0x71
	.long	0xa64
	.uleb128 0x1a
	.long	.LASF278
	.byte	0x2
	.byte	0x72
	.long	0xa6f
	.uleb128 0x1a
	.long	.LASF279
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1b
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xa7a
	.uleb128 0x1a
	.long	.LASF280
	.byte	0x2
	.byte	0x75
	.long	0xa80
	.byte	0
	.uleb128 0x1c
	.long	.LASF281
	.uleb128 0x3
	.byte	0x8
	.long	0xa5f
	.uleb128 0x1c
	.long	.LASF282
	.uleb128 0x3
	.byte	0x8
	.long	0xa6a
	.uleb128 0x1c
	.long	.LASF283
	.uleb128 0x3
	.byte	0x8
	.long	0xa75
	.uleb128 0x3
	.byte	0x8
	.long	0x9b9
	.uleb128 0x7
	.long	.LASF284
	.byte	0x2
	.byte	0x76
	.long	0x9c4
	.uleb128 0x11
	.long	0xa86
	.long	0xaa1
	.uleb128 0x12
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x2d
	.long	0xab1
	.uleb128 0x12
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF285
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xb73
	.uleb128 0x16
	.long	.LASF286
	.sleb128 1
	.uleb128 0x16
	.long	.LASF287
	.sleb128 2
	.uleb128 0x16
	.long	.LASF288
	.sleb128 3
	.uleb128 0x16
	.long	.LASF289
	.sleb128 4
	.uleb128 0x16
	.long	.LASF290
	.sleb128 5
	.uleb128 0x16
	.long	.LASF291
	.sleb128 6
	.uleb128 0x16
	.long	.LASF292
	.sleb128 7
	.uleb128 0x16
	.long	.LASF293
	.sleb128 8
	.uleb128 0x16
	.long	.LASF294
	.sleb128 9
	.uleb128 0x16
	.long	.LASF295
	.sleb128 10
	.uleb128 0x16
	.long	.LASF296
	.sleb128 11
	.uleb128 0x16
	.long	.LASF297
	.sleb128 12
	.uleb128 0x16
	.long	.LASF298
	.sleb128 13
	.uleb128 0x16
	.long	.LASF299
	.sleb128 14
	.uleb128 0x16
	.long	.LASF300
	.sleb128 15
	.uleb128 0x16
	.long	.LASF301
	.sleb128 16
	.uleb128 0x16
	.long	.LASF302
	.sleb128 17
	.uleb128 0x16
	.long	.LASF303
	.sleb128 18
	.uleb128 0x16
	.long	.LASF304
	.sleb128 19
	.uleb128 0x16
	.long	.LASF305
	.sleb128 20
	.uleb128 0x16
	.long	.LASF306
	.sleb128 21
	.uleb128 0x16
	.long	.LASF307
	.sleb128 22
	.uleb128 0x16
	.long	.LASF308
	.sleb128 23
	.uleb128 0x16
	.long	.LASF309
	.sleb128 24
	.uleb128 0x16
	.long	.LASF310
	.sleb128 25
	.uleb128 0x16
	.long	.LASF311
	.sleb128 26
	.uleb128 0x16
	.long	.LASF312
	.sleb128 27
	.uleb128 0x16
	.long	.LASF313
	.sleb128 28
	.uleb128 0x16
	.long	.LASF314
	.sleb128 29
	.uleb128 0x16
	.long	.LASF315
	.sleb128 30
	.byte	0
	.uleb128 0x1d
	.long	.LASF316
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xc22
	.uleb128 0x16
	.long	.LASF317
	.sleb128 -100
	.uleb128 0x16
	.long	.LASF318
	.sleb128 -99
	.uleb128 0x16
	.long	.LASF319
	.sleb128 -98
	.uleb128 0x16
	.long	.LASF320
	.sleb128 -97
	.uleb128 0x16
	.long	.LASF321
	.sleb128 -96
	.uleb128 0x16
	.long	.LASF322
	.sleb128 -95
	.uleb128 0x16
	.long	.LASF323
	.sleb128 -94
	.uleb128 0x16
	.long	.LASF324
	.sleb128 -93
	.uleb128 0x16
	.long	.LASF325
	.sleb128 -92
	.uleb128 0x16
	.long	.LASF326
	.sleb128 -91
	.uleb128 0x16
	.long	.LASF327
	.sleb128 -90
	.uleb128 0x16
	.long	.LASF328
	.sleb128 -89
	.uleb128 0x16
	.long	.LASF329
	.sleb128 -88
	.uleb128 0x16
	.long	.LASF330
	.sleb128 -87
	.uleb128 0x16
	.long	.LASF331
	.sleb128 -86
	.uleb128 0x16
	.long	.LASF332
	.sleb128 -85
	.uleb128 0x16
	.long	.LASF333
	.sleb128 -84
	.uleb128 0x16
	.long	.LASF334
	.sleb128 -83
	.uleb128 0x16
	.long	.LASF335
	.sleb128 -82
	.uleb128 0x16
	.long	.LASF336
	.sleb128 -81
	.uleb128 0x16
	.long	.LASF337
	.sleb128 -80
	.uleb128 0x16
	.long	.LASF338
	.sleb128 -79
	.uleb128 0x16
	.long	.LASF339
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0x1d
	.long	.LASF340
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xc7e
	.uleb128 0x16
	.long	.LASF341
	.sleb128 0
	.uleb128 0x16
	.long	.LASF342
	.sleb128 1
	.uleb128 0x16
	.long	.LASF343
	.sleb128 2
	.uleb128 0x16
	.long	.LASF344
	.sleb128 3
	.uleb128 0x16
	.long	.LASF345
	.sleb128 4
	.uleb128 0x16
	.long	.LASF346
	.sleb128 5
	.uleb128 0x16
	.long	.LASF347
	.sleb128 6
	.uleb128 0x16
	.long	.LASF348
	.sleb128 7
	.uleb128 0x16
	.long	.LASF349
	.sleb128 8
	.uleb128 0x16
	.long	.LASF350
	.sleb128 9
	.uleb128 0x16
	.long	.LASF351
	.sleb128 10
	.uleb128 0x16
	.long	.LASF352
	.sleb128 11
	.byte	0
	.uleb128 0x1d
	.long	.LASF353
	.byte	0x4
	.byte	0x2
	.value	0x7f5
	.long	0xcc2
	.uleb128 0x16
	.long	.LASF354
	.sleb128 0
	.uleb128 0x16
	.long	.LASF355
	.sleb128 1
	.uleb128 0x16
	.long	.LASF356
	.sleb128 2
	.uleb128 0x16
	.long	.LASF357
	.sleb128 3
	.uleb128 0x16
	.long	.LASF358
	.sleb128 4
	.uleb128 0x16
	.long	.LASF359
	.sleb128 5
	.uleb128 0x16
	.long	.LASF360
	.sleb128 6
	.uleb128 0x16
	.long	.LASF361
	.sleb128 7
	.uleb128 0x16
	.long	.LASF362
	.sleb128 8
	.byte	0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.value	0x83a
	.long	0xcde
	.uleb128 0x16
	.long	.LASF363
	.sleb128 1
	.uleb128 0x16
	.long	.LASF364
	.sleb128 2
	.uleb128 0x16
	.long	.LASF365
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.long	.LASF366
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0x10b7
	.uleb128 0x16
	.long	.LASF367
	.sleb128 0
	.uleb128 0x16
	.long	.LASF368
	.sleb128 1
	.uleb128 0x16
	.long	.LASF369
	.sleb128 2
	.uleb128 0x16
	.long	.LASF370
	.sleb128 3
	.uleb128 0x16
	.long	.LASF371
	.sleb128 4
	.uleb128 0x16
	.long	.LASF372
	.sleb128 5
	.uleb128 0x16
	.long	.LASF373
	.sleb128 6
	.uleb128 0x16
	.long	.LASF374
	.sleb128 7
	.uleb128 0x16
	.long	.LASF375
	.sleb128 8
	.uleb128 0x16
	.long	.LASF376
	.sleb128 9
	.uleb128 0x16
	.long	.LASF377
	.sleb128 10
	.uleb128 0x16
	.long	.LASF378
	.sleb128 11
	.uleb128 0x16
	.long	.LASF379
	.sleb128 12
	.uleb128 0x16
	.long	.LASF380
	.sleb128 13
	.uleb128 0x16
	.long	.LASF381
	.sleb128 14
	.uleb128 0x16
	.long	.LASF382
	.sleb128 15
	.uleb128 0x16
	.long	.LASF383
	.sleb128 16
	.uleb128 0x16
	.long	.LASF384
	.sleb128 17
	.uleb128 0x16
	.long	.LASF385
	.sleb128 18
	.uleb128 0x16
	.long	.LASF386
	.sleb128 19
	.uleb128 0x16
	.long	.LASF387
	.sleb128 20
	.uleb128 0x16
	.long	.LASF388
	.sleb128 21
	.uleb128 0x16
	.long	.LASF389
	.sleb128 22
	.uleb128 0x16
	.long	.LASF390
	.sleb128 23
	.uleb128 0x16
	.long	.LASF391
	.sleb128 24
	.uleb128 0x16
	.long	.LASF392
	.sleb128 25
	.uleb128 0x16
	.long	.LASF393
	.sleb128 26
	.uleb128 0x16
	.long	.LASF394
	.sleb128 27
	.uleb128 0x16
	.long	.LASF395
	.sleb128 28
	.uleb128 0x16
	.long	.LASF396
	.sleb128 29
	.uleb128 0x16
	.long	.LASF397
	.sleb128 30
	.uleb128 0x16
	.long	.LASF398
	.sleb128 31
	.uleb128 0x16
	.long	.LASF399
	.sleb128 32
	.uleb128 0x16
	.long	.LASF400
	.sleb128 33
	.uleb128 0x16
	.long	.LASF401
	.sleb128 34
	.uleb128 0x16
	.long	.LASF402
	.sleb128 35
	.uleb128 0x16
	.long	.LASF403
	.sleb128 36
	.uleb128 0x16
	.long	.LASF404
	.sleb128 37
	.uleb128 0x16
	.long	.LASF405
	.sleb128 38
	.uleb128 0x16
	.long	.LASF406
	.sleb128 39
	.uleb128 0x16
	.long	.LASF407
	.sleb128 40
	.uleb128 0x16
	.long	.LASF408
	.sleb128 41
	.uleb128 0x16
	.long	.LASF409
	.sleb128 42
	.uleb128 0x16
	.long	.LASF410
	.sleb128 43
	.uleb128 0x16
	.long	.LASF411
	.sleb128 44
	.uleb128 0x16
	.long	.LASF412
	.sleb128 45
	.uleb128 0x16
	.long	.LASF413
	.sleb128 46
	.uleb128 0x16
	.long	.LASF414
	.sleb128 47
	.uleb128 0x16
	.long	.LASF415
	.sleb128 48
	.uleb128 0x16
	.long	.LASF416
	.sleb128 49
	.uleb128 0x16
	.long	.LASF417
	.sleb128 50
	.uleb128 0x16
	.long	.LASF418
	.sleb128 51
	.uleb128 0x16
	.long	.LASF419
	.sleb128 52
	.uleb128 0x16
	.long	.LASF420
	.sleb128 53
	.uleb128 0x16
	.long	.LASF421
	.sleb128 54
	.uleb128 0x16
	.long	.LASF422
	.sleb128 55
	.uleb128 0x16
	.long	.LASF423
	.sleb128 56
	.uleb128 0x16
	.long	.LASF424
	.sleb128 57
	.uleb128 0x16
	.long	.LASF425
	.sleb128 58
	.uleb128 0x16
	.long	.LASF426
	.sleb128 59
	.uleb128 0x16
	.long	.LASF427
	.sleb128 60
	.uleb128 0x16
	.long	.LASF428
	.sleb128 61
	.uleb128 0x16
	.long	.LASF429
	.sleb128 62
	.uleb128 0x16
	.long	.LASF430
	.sleb128 63
	.uleb128 0x16
	.long	.LASF431
	.sleb128 64
	.uleb128 0x16
	.long	.LASF432
	.sleb128 65
	.uleb128 0x16
	.long	.LASF433
	.sleb128 66
	.uleb128 0x16
	.long	.LASF434
	.sleb128 67
	.uleb128 0x16
	.long	.LASF435
	.sleb128 68
	.uleb128 0x16
	.long	.LASF436
	.sleb128 69
	.uleb128 0x16
	.long	.LASF437
	.sleb128 70
	.uleb128 0x16
	.long	.LASF438
	.sleb128 71
	.uleb128 0x16
	.long	.LASF439
	.sleb128 72
	.uleb128 0x16
	.long	.LASF440
	.sleb128 73
	.uleb128 0x16
	.long	.LASF441
	.sleb128 74
	.uleb128 0x16
	.long	.LASF442
	.sleb128 75
	.uleb128 0x16
	.long	.LASF443
	.sleb128 76
	.uleb128 0x16
	.long	.LASF444
	.sleb128 77
	.uleb128 0x16
	.long	.LASF445
	.sleb128 78
	.uleb128 0x16
	.long	.LASF446
	.sleb128 79
	.uleb128 0x16
	.long	.LASF447
	.sleb128 80
	.uleb128 0x16
	.long	.LASF448
	.sleb128 81
	.uleb128 0x16
	.long	.LASF449
	.sleb128 82
	.uleb128 0x16
	.long	.LASF450
	.sleb128 83
	.uleb128 0x16
	.long	.LASF451
	.sleb128 84
	.uleb128 0x16
	.long	.LASF452
	.sleb128 85
	.uleb128 0x16
	.long	.LASF453
	.sleb128 86
	.uleb128 0x16
	.long	.LASF454
	.sleb128 87
	.uleb128 0x16
	.long	.LASF455
	.sleb128 88
	.uleb128 0x16
	.long	.LASF456
	.sleb128 89
	.uleb128 0x16
	.long	.LASF457
	.sleb128 90
	.uleb128 0x16
	.long	.LASF458
	.sleb128 91
	.uleb128 0x16
	.long	.LASF459
	.sleb128 92
	.uleb128 0x16
	.long	.LASF460
	.sleb128 93
	.uleb128 0x16
	.long	.LASF461
	.sleb128 94
	.uleb128 0x16
	.long	.LASF462
	.sleb128 95
	.uleb128 0x16
	.long	.LASF463
	.sleb128 96
	.uleb128 0x16
	.long	.LASF464
	.sleb128 97
	.uleb128 0x16
	.long	.LASF465
	.sleb128 98
	.uleb128 0x16
	.long	.LASF466
	.sleb128 99
	.uleb128 0x16
	.long	.LASF467
	.sleb128 100
	.uleb128 0x16
	.long	.LASF468
	.sleb128 101
	.uleb128 0x16
	.long	.LASF469
	.sleb128 102
	.uleb128 0x16
	.long	.LASF470
	.sleb128 103
	.uleb128 0x16
	.long	.LASF471
	.sleb128 104
	.uleb128 0x16
	.long	.LASF472
	.sleb128 105
	.uleb128 0x16
	.long	.LASF473
	.sleb128 106
	.uleb128 0x16
	.long	.LASF474
	.sleb128 107
	.uleb128 0x16
	.long	.LASF475
	.sleb128 108
	.uleb128 0x16
	.long	.LASF476
	.sleb128 109
	.uleb128 0x16
	.long	.LASF477
	.sleb128 110
	.uleb128 0x16
	.long	.LASF478
	.sleb128 111
	.uleb128 0x16
	.long	.LASF479
	.sleb128 112
	.uleb128 0x16
	.long	.LASF480
	.sleb128 113
	.uleb128 0x16
	.long	.LASF481
	.sleb128 114
	.uleb128 0x16
	.long	.LASF482
	.sleb128 115
	.uleb128 0x16
	.long	.LASF483
	.sleb128 116
	.uleb128 0x16
	.long	.LASF484
	.sleb128 117
	.uleb128 0x16
	.long	.LASF485
	.sleb128 118
	.uleb128 0x16
	.long	.LASF486
	.sleb128 119
	.uleb128 0x16
	.long	.LASF487
	.sleb128 120
	.uleb128 0x16
	.long	.LASF488
	.sleb128 121
	.uleb128 0x16
	.long	.LASF489
	.sleb128 122
	.uleb128 0x16
	.long	.LASF490
	.sleb128 123
	.uleb128 0x16
	.long	.LASF491
	.sleb128 124
	.uleb128 0x16
	.long	.LASF492
	.sleb128 125
	.uleb128 0x16
	.long	.LASF493
	.sleb128 126
	.uleb128 0x16
	.long	.LASF494
	.sleb128 127
	.uleb128 0x16
	.long	.LASF495
	.sleb128 128
	.uleb128 0x16
	.long	.LASF496
	.sleb128 129
	.uleb128 0x16
	.long	.LASF497
	.sleb128 130
	.uleb128 0x16
	.long	.LASF498
	.sleb128 131
	.uleb128 0x16
	.long	.LASF499
	.sleb128 132
	.uleb128 0x16
	.long	.LASF500
	.sleb128 133
	.uleb128 0x16
	.long	.LASF501
	.sleb128 134
	.uleb128 0x16
	.long	.LASF502
	.sleb128 135
	.uleb128 0x16
	.long	.LASF503
	.sleb128 136
	.uleb128 0x16
	.long	.LASF504
	.sleb128 137
	.uleb128 0x16
	.long	.LASF505
	.sleb128 138
	.uleb128 0x16
	.long	.LASF506
	.sleb128 139
	.uleb128 0x16
	.long	.LASF507
	.sleb128 140
	.uleb128 0x16
	.long	.LASF508
	.sleb128 141
	.uleb128 0x16
	.long	.LASF509
	.sleb128 142
	.uleb128 0x16
	.long	.LASF510
	.sleb128 143
	.uleb128 0x16
	.long	.LASF511
	.sleb128 144
	.uleb128 0x16
	.long	.LASF512
	.sleb128 145
	.uleb128 0x16
	.long	.LASF513
	.sleb128 146
	.uleb128 0x16
	.long	.LASF514
	.sleb128 147
	.byte	0
	.uleb128 0x15
	.long	.LASF515
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x1324
	.uleb128 0x16
	.long	.LASF516
	.sleb128 0
	.uleb128 0x16
	.long	.LASF517
	.sleb128 1
	.uleb128 0x16
	.long	.LASF518
	.sleb128 2
	.uleb128 0x16
	.long	.LASF519
	.sleb128 3
	.uleb128 0x16
	.long	.LASF520
	.sleb128 4
	.uleb128 0x16
	.long	.LASF521
	.sleb128 5
	.uleb128 0x16
	.long	.LASF522
	.sleb128 6
	.uleb128 0x16
	.long	.LASF523
	.sleb128 7
	.uleb128 0x16
	.long	.LASF524
	.sleb128 8
	.uleb128 0x16
	.long	.LASF525
	.sleb128 9
	.uleb128 0x16
	.long	.LASF526
	.sleb128 10
	.uleb128 0x16
	.long	.LASF527
	.sleb128 11
	.uleb128 0x16
	.long	.LASF528
	.sleb128 12
	.uleb128 0x16
	.long	.LASF529
	.sleb128 13
	.uleb128 0x16
	.long	.LASF530
	.sleb128 14
	.uleb128 0x16
	.long	.LASF531
	.sleb128 15
	.uleb128 0x16
	.long	.LASF532
	.sleb128 16
	.uleb128 0x16
	.long	.LASF533
	.sleb128 17
	.uleb128 0x16
	.long	.LASF534
	.sleb128 18
	.uleb128 0x16
	.long	.LASF535
	.sleb128 19
	.uleb128 0x16
	.long	.LASF536
	.sleb128 20
	.uleb128 0x16
	.long	.LASF537
	.sleb128 21
	.uleb128 0x16
	.long	.LASF538
	.sleb128 22
	.uleb128 0x16
	.long	.LASF539
	.sleb128 23
	.uleb128 0x16
	.long	.LASF540
	.sleb128 24
	.uleb128 0x16
	.long	.LASF541
	.sleb128 25
	.uleb128 0x16
	.long	.LASF542
	.sleb128 26
	.uleb128 0x16
	.long	.LASF543
	.sleb128 27
	.uleb128 0x16
	.long	.LASF544
	.sleb128 28
	.uleb128 0x16
	.long	.LASF545
	.sleb128 29
	.uleb128 0x16
	.long	.LASF546
	.sleb128 30
	.uleb128 0x16
	.long	.LASF547
	.sleb128 31
	.uleb128 0x16
	.long	.LASF548
	.sleb128 32
	.uleb128 0x16
	.long	.LASF549
	.sleb128 33
	.uleb128 0x16
	.long	.LASF550
	.sleb128 34
	.uleb128 0x16
	.long	.LASF551
	.sleb128 35
	.uleb128 0x16
	.long	.LASF552
	.sleb128 36
	.uleb128 0x16
	.long	.LASF553
	.sleb128 37
	.uleb128 0x16
	.long	.LASF554
	.sleb128 38
	.uleb128 0x16
	.long	.LASF555
	.sleb128 39
	.uleb128 0x16
	.long	.LASF556
	.sleb128 40
	.uleb128 0x16
	.long	.LASF557
	.sleb128 41
	.uleb128 0x16
	.long	.LASF558
	.sleb128 42
	.uleb128 0x16
	.long	.LASF559
	.sleb128 43
	.uleb128 0x16
	.long	.LASF560
	.sleb128 44
	.uleb128 0x16
	.long	.LASF561
	.sleb128 45
	.uleb128 0x16
	.long	.LASF562
	.sleb128 46
	.uleb128 0x16
	.long	.LASF563
	.sleb128 47
	.uleb128 0x16
	.long	.LASF564
	.sleb128 48
	.uleb128 0x16
	.long	.LASF565
	.sleb128 49
	.uleb128 0x16
	.long	.LASF566
	.sleb128 50
	.uleb128 0x16
	.long	.LASF567
	.sleb128 51
	.uleb128 0x16
	.long	.LASF568
	.sleb128 52
	.uleb128 0x16
	.long	.LASF569
	.sleb128 53
	.uleb128 0x16
	.long	.LASF570
	.sleb128 54
	.uleb128 0x16
	.long	.LASF571
	.sleb128 55
	.uleb128 0x16
	.long	.LASF572
	.sleb128 56
	.uleb128 0x16
	.long	.LASF573
	.sleb128 57
	.uleb128 0x16
	.long	.LASF574
	.sleb128 58
	.uleb128 0x16
	.long	.LASF575
	.sleb128 59
	.uleb128 0x16
	.long	.LASF576
	.sleb128 60
	.uleb128 0x16
	.long	.LASF577
	.sleb128 61
	.uleb128 0x16
	.long	.LASF578
	.sleb128 62
	.uleb128 0x16
	.long	.LASF579
	.sleb128 63
	.uleb128 0x16
	.long	.LASF580
	.sleb128 64
	.uleb128 0x16
	.long	.LASF581
	.sleb128 65
	.uleb128 0x16
	.long	.LASF582
	.sleb128 66
	.uleb128 0x16
	.long	.LASF583
	.sleb128 67
	.uleb128 0x16
	.long	.LASF584
	.sleb128 68
	.uleb128 0x16
	.long	.LASF585
	.sleb128 69
	.uleb128 0x16
	.long	.LASF586
	.sleb128 70
	.uleb128 0x16
	.long	.LASF587
	.sleb128 71
	.uleb128 0x16
	.long	.LASF588
	.sleb128 72
	.uleb128 0x16
	.long	.LASF589
	.sleb128 73
	.uleb128 0x16
	.long	.LASF590
	.sleb128 74
	.uleb128 0x16
	.long	.LASF591
	.sleb128 75
	.uleb128 0x16
	.long	.LASF592
	.sleb128 76
	.uleb128 0x16
	.long	.LASF593
	.sleb128 77
	.uleb128 0x16
	.long	.LASF594
	.sleb128 78
	.uleb128 0x16
	.long	.LASF595
	.sleb128 79
	.uleb128 0x16
	.long	.LASF596
	.sleb128 80
	.uleb128 0x16
	.long	.LASF597
	.sleb128 81
	.uleb128 0x16
	.long	.LASF598
	.sleb128 82
	.uleb128 0x16
	.long	.LASF599
	.sleb128 83
	.uleb128 0x16
	.long	.LASF600
	.sleb128 84
	.uleb128 0x16
	.long	.LASF601
	.sleb128 85
	.uleb128 0x16
	.long	.LASF602
	.sleb128 86
	.uleb128 0x16
	.long	.LASF603
	.sleb128 87
	.uleb128 0x16
	.long	.LASF604
	.sleb128 88
	.uleb128 0x16
	.long	.LASF605
	.sleb128 89
	.uleb128 0x16
	.long	.LASF606
	.sleb128 90
	.uleb128 0x16
	.long	.LASF607
	.sleb128 91
	.uleb128 0x16
	.long	.LASF608
	.sleb128 92
	.uleb128 0x16
	.long	.LASF609
	.sleb128 93
	.uleb128 0x16
	.long	.LASF610
	.sleb128 94
	.uleb128 0x16
	.long	.LASF611
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF612
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0x14c0
	.uleb128 0x8
	.long	.LASF613
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
	.long	0x2b9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF614
	.byte	0x4
	.byte	0x80
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF615
	.byte	0x4
	.byte	0x81
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF616
	.byte	0x4
	.byte	0x82
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF617
	.byte	0x4
	.byte	0x83
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF618
	.byte	0x4
	.byte	0x84
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF619
	.byte	0x4
	.byte	0x85
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF620
	.byte	0x4
	.byte	0x86
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF621
	.byte	0x4
	.byte	0x87
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF622
	.byte	0x4
	.byte	0x89
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF623
	.byte	0x4
	.byte	0x8a
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF624
	.byte	0x4
	.byte	0x8b
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF625
	.byte	0x4
	.byte	0x8c
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF626
	.byte	0x4
	.byte	0x8d
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF627
	.byte	0x4
	.byte	0x8e
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF628
	.byte	0x4
	.byte	0x8f
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF629
	.byte	0x4
	.byte	0x90
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF630
	.byte	0x4
	.byte	0x92
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF631
	.byte	0x4
	.byte	0x93
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF632
	.byte	0x4
	.byte	0x94
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF633
	.byte	0x4
	.byte	0x95
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF634
	.byte	0x4
	.byte	0x96
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF635
	.byte	0x4
	.byte	0x97
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF636
	.byte	0x4
	.byte	0x98
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF637
	.byte	0x4
	.byte	0x99
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x1f
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0x14e4
	.uleb128 0x20
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x2df
	.byte	0
	.uleb128 0xf
	.long	.LASF638
	.byte	0x4
	.value	0x2cb
	.long	0x2cd
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	.LASF639
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0x1519
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x1324
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0xf
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0x14c0
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.byte	0x18
	.byte	0xa
	.byte	0x6b
	.long	0x152c
	.uleb128 0x6
	.string	"r"
	.byte	0xa
	.byte	0x6c
	.long	0x152c
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x2cd
	.long	0x153c
	.uleb128 0x12
	.long	0x1e5
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF640
	.byte	0xa
	.byte	0x6d
	.long	0x1519
	.uleb128 0xe
	.long	.LASF641
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0x157c
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x1324
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0xf
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0x153c
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.long	.LASF642
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x15be
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x1324
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0xf
	.long	.LASF643
	.byte	0x4
	.value	0x2ed
	.long	0x1de
	.byte	0x20
	.uleb128 0xf
	.long	.LASF644
	.byte	0x4
	.value	0x2ee
	.long	0x30f
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.long	.LASF645
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x1600
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x1324
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0xf
	.long	.LASF646
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0xf
	.long	.LASF647
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.long	.LASF648
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x1635
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x1324
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0xf
	.long	.LASF649
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF650
	.byte	0x10
	.byte	0xb
	.byte	0x1a
	.long	0x165a
	.uleb128 0x6
	.string	"len"
	.byte	0xb
	.byte	0x1c
	.long	0x2b9
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xb
	.byte	0x1d
	.long	0x165a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1660
	.uleb128 0x14
	.long	0x2e6
	.uleb128 0xe
	.long	.LASF651
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x168c
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x1324
	.byte	0
	.uleb128 0x20
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x1635
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.long	.LASF652
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x16c1
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x1324
	.byte	0
	.uleb128 0xf
	.long	.LASF653
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0xf
	.long	.LASF654
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.long	.LASF655
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x16f4
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x1324
	.byte	0
	.uleb128 0xf
	.long	.LASF643
	.byte	0x4
	.value	0x331
	.long	0x1de
	.byte	0x18
	.uleb128 0x20
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x16f4
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	0x123
	.long	0x1704
	.uleb128 0x12
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF656
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x1739
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x1324
	.byte	0
	.uleb128 0xf
	.long	.LASF657
	.byte	0x4
	.value	0x372
	.long	0x1de
	.byte	0x18
	.uleb128 0xf
	.long	.LASF658
	.byte	0x4
	.value	0x373
	.long	0x16f4
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.long	.LASF659
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x17d2
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x1324
	.byte	0
	.uleb128 0x21
	.long	.LASF660
	.byte	0x4
	.value	0x3a7
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x21
	.long	.LASF661
	.byte	0x4
	.value	0x3a8
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x21
	.long	.LASF662
	.byte	0x4
	.value	0x3a9
	.long	0x2b9
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0xf
	.long	.LASF663
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0xf
	.long	.LASF664
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0xf
	.long	.LASF665
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0xf
	.long	.LASF666
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0xf
	.long	.LASF667
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0xf
	.long	.LASF668
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x17f4
	.uleb128 0xa
	.long	.LASF669
	.byte	0x4
	.value	0x4d8
	.long	0x1de
	.uleb128 0xa
	.long	.LASF644
	.byte	0x4
	.value	0x4d8
	.long	0x302
	.byte	0
	.uleb128 0xe
	.long	.LASF670
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1a09
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x1324
	.byte	0
	.uleb128 0xf
	.long	.LASF671
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0xf
	.long	.LASF266
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0xf
	.long	.LASF672
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0xf
	.long	.LASF673
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x20
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x2b9
	.byte	0x38
	.uleb128 0x21
	.long	.LASF674
	.byte	0x4
	.value	0x4c1
	.long	0x2b9
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x2b9
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF675
	.byte	0x4
	.value	0x4c4
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF676
	.byte	0x4
	.value	0x4c5
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF677
	.byte	0x4
	.value	0x4c6
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF678
	.byte	0x4
	.value	0x4c7
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF679
	.byte	0x4
	.value	0x4c8
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF680
	.byte	0x4
	.value	0x4c9
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF681
	.byte	0x4
	.value	0x4ca
	.long	0x2b9
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF630
	.byte	0x4
	.value	0x4cc
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF631
	.byte	0x4
	.value	0x4cd
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF632
	.byte	0x4
	.value	0x4ce
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF633
	.byte	0x4
	.value	0x4cf
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF634
	.byte	0x4
	.value	0x4d0
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF635
	.byte	0x4
	.value	0x4d1
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF636
	.byte	0x4
	.value	0x4d2
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF682
	.byte	0x4
	.value	0x4d3
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0xf
	.long	.LASF267
	.byte	0x4
	.value	0x4d5
	.long	0x2b9
	.byte	0x40
	.uleb128 0xf
	.long	.LASF683
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0xf
	.long	.LASF684
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0xf
	.long	.LASF685
	.byte	0x4
	.value	0x4d8
	.long	0x17d2
	.byte	0x58
	.uleb128 0xf
	.long	.LASF686
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0xf
	.long	.LASF687
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0xf
	.long	.LASF688
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0xf
	.long	.LASF689
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0xf
	.long	.LASF690
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0xf
	.long	.LASF691
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0xf
	.long	.LASF692
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0xf
	.long	.LASF693
	.byte	0x4
	.value	0x4e0
	.long	0x2cd
	.byte	0x98
	.uleb128 0xf
	.long	.LASF694
	.byte	0x4
	.value	0x4e2
	.long	0x1a0e
	.byte	0xa0
	.byte	0
	.uleb128 0x1c
	.long	.LASF695
	.uleb128 0x3
	.byte	0x8
	.long	0x1a09
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x1a3e
	.uleb128 0x21
	.long	.LASF267
	.byte	0x4
	.value	0x717
	.long	0x2b9
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x21
	.long	.LASF696
	.byte	0x4
	.value	0x717
	.long	0x2b9
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1a66
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x10b7
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x2cd
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1a14
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1a98
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x1f18
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
	.uleb128 0x23
	.long	.LASF697
	.value	0x1b0
	.byte	0xc
	.byte	0xae
	.long	0x1f18
	.uleb128 0x6
	.string	"eh"
	.byte	0xc
	.byte	0xb0
	.long	0x2933
	.byte	0
	.uleb128 0x8
	.long	.LASF698
	.byte	0xc
	.byte	0xb1
	.long	0x293e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF264
	.byte	0xc
	.byte	0xb2
	.long	0x2944
	.byte	0x10
	.uleb128 0x8
	.long	.LASF699
	.byte	0xc
	.byte	0xb3
	.long	0x294a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF700
	.byte	0xc
	.byte	0xb4
	.long	0x2955
	.byte	0x20
	.uleb128 0x8
	.long	.LASF686
	.byte	0xc
	.byte	0xb9
	.long	0x30f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0xc
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF701
	.byte	0xc
	.byte	0xbf
	.long	0x1f18
	.byte	0x38
	.uleb128 0x8
	.long	.LASF702
	.byte	0xc
	.byte	0xc4
	.long	0x1de
	.byte	0x40
	.uleb128 0x8
	.long	.LASF703
	.byte	0xc
	.byte	0xc9
	.long	0x1de
	.byte	0x44
	.uleb128 0x8
	.long	.LASF704
	.byte	0xc
	.byte	0xce
	.long	0x1de
	.byte	0x48
	.uleb128 0x8
	.long	.LASF705
	.byte	0xc
	.byte	0xd2
	.long	0x1de
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF706
	.byte	0xc
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF707
	.byte	0xc
	.byte	0xda
	.long	0x255
	.byte	0x58
	.uleb128 0x8
	.long	.LASF708
	.byte	0xc
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF709
	.byte	0xc
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF710
	.byte	0xc
	.byte	0xe7
	.long	0x30f
	.byte	0x88
	.uleb128 0x8
	.long	.LASF711
	.byte	0xc
	.byte	0xeb
	.long	0x2960
	.byte	0x90
	.uleb128 0x8
	.long	.LASF712
	.byte	0xc
	.byte	0xee
	.long	0x1de
	.byte	0x98
	.uleb128 0x8
	.long	.LASF713
	.byte	0xc
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF714
	.byte	0xc
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF715
	.byte	0xc
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF716
	.byte	0xc
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF717
	.byte	0xc
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF718
	.byte	0xc
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0xf
	.long	.LASF719
	.byte	0xc
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0xf
	.long	.LASF720
	.byte	0xc
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0xf
	.long	.LASF721
	.byte	0xc
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF722
	.byte	0xc
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0xf
	.long	.LASF723
	.byte	0xc
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0xf
	.long	.LASF724
	.byte	0xc
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x24
	.long	.LASF725
	.byte	0xc
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x24
	.long	.LASF726
	.byte	0xc
	.value	0x12f
	.long	0x2cd
	.value	0x108
	.uleb128 0x24
	.long	.LASF727
	.byte	0xc
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x24
	.long	.LASF728
	.byte	0xc
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x24
	.long	.LASF729
	.byte	0xc
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x24
	.long	.LASF730
	.byte	0xc
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x24
	.long	.LASF731
	.byte	0xc
	.value	0x148
	.long	0x2b9
	.value	0x130
	.uleb128 0x24
	.long	.LASF732
	.byte	0xc
	.value	0x14e
	.long	0xc22
	.value	0x138
	.uleb128 0x24
	.long	.LASF733
	.byte	0xc
	.value	0x151
	.long	0x296b
	.value	0x140
	.uleb128 0x24
	.long	.LASF734
	.byte	0xc
	.value	0x154
	.long	0x1de
	.value	0x148
	.uleb128 0x24
	.long	.LASF735
	.byte	0xc
	.value	0x157
	.long	0x1de
	.value	0x14c
	.uleb128 0x24
	.long	.LASF736
	.byte	0xc
	.value	0x15d
	.long	0x1de
	.value	0x150
	.uleb128 0x24
	.long	.LASF737
	.byte	0xc
	.value	0x161
	.long	0x27d5
	.value	0x158
	.uleb128 0x24
	.long	.LASF738
	.byte	0xc
	.value	0x164
	.long	0x1de
	.value	0x160
	.uleb128 0x24
	.long	.LASF739
	.byte	0xc
	.value	0x165
	.long	0x1de
	.value	0x164
	.uleb128 0x24
	.long	.LASF740
	.byte	0xc
	.value	0x167
	.long	0x2c0
	.value	0x168
	.uleb128 0x24
	.long	.LASF741
	.byte	0xc
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x24
	.long	.LASF742
	.byte	0xc
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x24
	.long	.LASF743
	.byte	0xc
	.value	0x16d
	.long	0x1de
	.value	0x180
	.uleb128 0x24
	.long	.LASF744
	.byte	0xc
	.value	0x170
	.long	0x1de
	.value	0x184
	.uleb128 0x24
	.long	.LASF745
	.byte	0xc
	.value	0x175
	.long	0x2976
	.value	0x188
	.uleb128 0x24
	.long	.LASF746
	.byte	0xc
	.value	0x177
	.long	0x1de
	.value	0x190
	.uleb128 0x24
	.long	.LASF747
	.byte	0xc
	.value	0x179
	.long	0x1de
	.value	0x194
	.uleb128 0x24
	.long	.LASF748
	.byte	0xc
	.value	0x17c
	.long	0x2981
	.value	0x198
	.uleb128 0x24
	.long	.LASF749
	.byte	0xc
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x25
	.long	.LASF750
	.byte	0xc
	.value	0x188
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF751
	.byte	0xc
	.value	0x18c
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF752
	.byte	0xc
	.value	0x18f
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF753
	.byte	0xc
	.value	0x192
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF754
	.byte	0xc
	.value	0x195
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF755
	.byte	0xc
	.value	0x198
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF756
	.byte	0xc
	.value	0x19c
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF757
	.byte	0xc
	.value	0x19f
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF758
	.byte	0xc
	.value	0x1a3
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF759
	.byte	0xc
	.value	0x1a7
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF760
	.byte	0xc
	.value	0x1aa
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF761
	.byte	0xc
	.value	0x1ad
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF762
	.byte	0xc
	.value	0x1b2
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF763
	.byte	0xc
	.value	0x1b6
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF764
	.byte	0xc
	.value	0x1b9
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF765
	.byte	0xc
	.value	0x1bd
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF766
	.byte	0xc
	.value	0x1c1
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF767
	.byte	0xc
	.value	0x1c5
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF768
	.byte	0xc
	.value	0x1cb
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF769
	.byte	0xc
	.value	0x1d4
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF770
	.byte	0xc
	.value	0x1d7
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF771
	.byte	0xc
	.value	0x1da
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF772
	.byte	0xc
	.value	0x1dd
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x25
	.long	.LASF773
	.byte	0xc
	.value	0x1e0
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a98
	.uleb128 0xe
	.long	.LASF774
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x22a2
	.uleb128 0xf
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x1324
	.byte	0
	.uleb128 0xf
	.long	.LASF775
	.byte	0x4
	.value	0x6df
	.long	0x30f
	.byte	0x18
	.uleb128 0xf
	.long	.LASF776
	.byte	0x4
	.value	0x6e0
	.long	0x1de
	.byte	0x20
	.uleb128 0x20
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x2b9
	.byte	0x24
	.uleb128 0xf
	.long	.LASF266
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x21
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x2b9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x21
	.long	.LASF777
	.byte	0x4
	.value	0x6e5
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x21
	.long	.LASF778
	.byte	0x4
	.value	0x6e6
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x21
	.long	.LASF779
	.byte	0x4
	.value	0x6e7
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x21
	.long	.LASF780
	.byte	0x4
	.value	0x6e8
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x21
	.long	.LASF781
	.byte	0x4
	.value	0x6e9
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x21
	.long	.LASF782
	.byte	0x4
	.value	0x6ea
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x21
	.long	.LASF783
	.byte	0x4
	.value	0x6eb
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x21
	.long	.LASF661
	.byte	0x4
	.value	0x6ec
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x21
	.long	.LASF784
	.byte	0x4
	.value	0x6ee
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x21
	.long	.LASF785
	.byte	0x4
	.value	0x6ef
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x21
	.long	.LASF786
	.byte	0x4
	.value	0x6f0
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x21
	.long	.LASF787
	.byte	0x4
	.value	0x6f1
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x21
	.long	.LASF788
	.byte	0x4
	.value	0x6f2
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x21
	.long	.LASF789
	.byte	0x4
	.value	0x6f3
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x21
	.long	.LASF790
	.byte	0x4
	.value	0x6f4
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x21
	.long	.LASF791
	.byte	0x4
	.value	0x6f5
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x21
	.long	.LASF792
	.byte	0x4
	.value	0x6f7
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x21
	.long	.LASF793
	.byte	0x4
	.value	0x6f8
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x21
	.long	.LASF794
	.byte	0x4
	.value	0x6f9
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x21
	.long	.LASF795
	.byte	0x4
	.value	0x6fa
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x21
	.long	.LASF796
	.byte	0x4
	.value	0x6fb
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x21
	.long	.LASF797
	.byte	0x4
	.value	0x6fc
	.long	0x2b9
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.long	.LASF798
	.byte	0x4
	.value	0x6fd
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x21
	.long	.LASF681
	.byte	0x4
	.value	0x6ff
	.long	0x2b9
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x21
	.long	.LASF799
	.byte	0x4
	.value	0x700
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x21
	.long	.LASF682
	.byte	0x4
	.value	0x701
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x21
	.long	.LASF800
	.byte	0x4
	.value	0x702
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x21
	.long	.LASF630
	.byte	0x4
	.value	0x705
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x21
	.long	.LASF631
	.byte	0x4
	.value	0x706
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x21
	.long	.LASF632
	.byte	0x4
	.value	0x707
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x21
	.long	.LASF633
	.byte	0x4
	.value	0x708
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x21
	.long	.LASF634
	.byte	0x4
	.value	0x709
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x21
	.long	.LASF635
	.byte	0x4
	.value	0x70a
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x21
	.long	.LASF636
	.byte	0x4
	.value	0x70b
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x21
	.long	.LASF801
	.byte	0x4
	.value	0x70c
	.long	0x2b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x20
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x1a3e
	.byte	0x38
	.uleb128 0xf
	.long	.LASF672
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0xf
	.long	.LASF686
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0xf
	.long	.LASF692
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0xf
	.long	.LASF802
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0xf
	.long	.LASF803
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0xf
	.long	.LASF804
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0xf
	.long	.LASF666
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0xf
	.long	.LASF805
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0xf
	.long	.LASF806
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0xf
	.long	.LASF673
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0xf
	.long	.LASF807
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x20
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1a66
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF808
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF809
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF810
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF811
	.byte	0x4
	.value	0x73b
	.long	0x2cd
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF694
	.byte	0x4
	.value	0x73d
	.long	0x22a7
	.byte	0xc8
	.byte	0
	.uleb128 0x1c
	.long	.LASF812
	.uleb128 0x3
	.byte	0x8
	.long	0x22a2
	.uleb128 0x1d
	.long	.LASF813
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x23f3
	.uleb128 0x16
	.long	.LASF814
	.sleb128 0
	.uleb128 0x16
	.long	.LASF815
	.sleb128 1
	.uleb128 0x16
	.long	.LASF816
	.sleb128 2
	.uleb128 0x16
	.long	.LASF817
	.sleb128 3
	.uleb128 0x16
	.long	.LASF818
	.sleb128 4
	.uleb128 0x16
	.long	.LASF819
	.sleb128 5
	.uleb128 0x16
	.long	.LASF820
	.sleb128 6
	.uleb128 0x16
	.long	.LASF821
	.sleb128 7
	.uleb128 0x16
	.long	.LASF822
	.sleb128 8
	.uleb128 0x16
	.long	.LASF823
	.sleb128 9
	.uleb128 0x16
	.long	.LASF824
	.sleb128 10
	.uleb128 0x16
	.long	.LASF825
	.sleb128 11
	.uleb128 0x16
	.long	.LASF826
	.sleb128 12
	.uleb128 0x16
	.long	.LASF827
	.sleb128 13
	.uleb128 0x16
	.long	.LASF828
	.sleb128 14
	.uleb128 0x16
	.long	.LASF829
	.sleb128 15
	.uleb128 0x16
	.long	.LASF830
	.sleb128 16
	.uleb128 0x16
	.long	.LASF831
	.sleb128 17
	.uleb128 0x16
	.long	.LASF832
	.sleb128 18
	.uleb128 0x16
	.long	.LASF833
	.sleb128 19
	.uleb128 0x16
	.long	.LASF834
	.sleb128 20
	.uleb128 0x16
	.long	.LASF835
	.sleb128 21
	.uleb128 0x16
	.long	.LASF836
	.sleb128 22
	.uleb128 0x16
	.long	.LASF837
	.sleb128 23
	.uleb128 0x16
	.long	.LASF838
	.sleb128 24
	.uleb128 0x16
	.long	.LASF839
	.sleb128 25
	.uleb128 0x16
	.long	.LASF840
	.sleb128 26
	.uleb128 0x16
	.long	.LASF841
	.sleb128 27
	.uleb128 0x16
	.long	.LASF842
	.sleb128 28
	.uleb128 0x16
	.long	.LASF843
	.sleb128 29
	.uleb128 0x16
	.long	.LASF844
	.sleb128 30
	.uleb128 0x16
	.long	.LASF845
	.sleb128 31
	.uleb128 0x16
	.long	.LASF846
	.sleb128 32
	.uleb128 0x16
	.long	.LASF847
	.sleb128 33
	.uleb128 0x16
	.long	.LASF848
	.sleb128 34
	.uleb128 0x16
	.long	.LASF849
	.sleb128 35
	.uleb128 0x16
	.long	.LASF850
	.sleb128 36
	.uleb128 0x16
	.long	.LASF851
	.sleb128 37
	.uleb128 0x16
	.long	.LASF852
	.sleb128 38
	.uleb128 0x16
	.long	.LASF853
	.sleb128 39
	.uleb128 0x16
	.long	.LASF854
	.sleb128 40
	.uleb128 0x16
	.long	.LASF855
	.sleb128 41
	.uleb128 0x16
	.long	.LASF856
	.sleb128 42
	.uleb128 0x16
	.long	.LASF857
	.sleb128 43
	.uleb128 0x16
	.long	.LASF858
	.sleb128 44
	.uleb128 0x16
	.long	.LASF859
	.sleb128 45
	.uleb128 0x16
	.long	.LASF860
	.sleb128 46
	.uleb128 0x16
	.long	.LASF861
	.sleb128 47
	.uleb128 0x16
	.long	.LASF862
	.sleb128 48
	.uleb128 0x16
	.long	.LASF863
	.sleb128 49
	.uleb128 0x16
	.long	.LASF864
	.sleb128 50
	.uleb128 0x16
	.long	.LASF865
	.sleb128 51
	.byte	0
	.uleb128 0x1d
	.long	.LASF866
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x2449
	.uleb128 0x16
	.long	.LASF867
	.sleb128 0
	.uleb128 0x16
	.long	.LASF868
	.sleb128 1
	.uleb128 0x16
	.long	.LASF869
	.sleb128 2
	.uleb128 0x16
	.long	.LASF870
	.sleb128 3
	.uleb128 0x16
	.long	.LASF871
	.sleb128 4
	.uleb128 0x16
	.long	.LASF872
	.sleb128 5
	.uleb128 0x16
	.long	.LASF873
	.sleb128 6
	.uleb128 0x16
	.long	.LASF874
	.sleb128 7
	.uleb128 0x16
	.long	.LASF875
	.sleb128 8
	.uleb128 0x16
	.long	.LASF876
	.sleb128 9
	.uleb128 0x16
	.long	.LASF877
	.sleb128 10
	.uleb128 0x16
	.long	.LASF878
	.sleb128 11
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.long	.LASF879
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x1d
	.long	.LASF880
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x248e
	.uleb128 0x16
	.long	.LASF881
	.sleb128 0
	.uleb128 0x16
	.long	.LASF882
	.sleb128 1
	.uleb128 0x16
	.long	.LASF883
	.sleb128 2
	.uleb128 0x16
	.long	.LASF884
	.sleb128 3
	.uleb128 0x16
	.long	.LASF885
	.sleb128 4
	.uleb128 0x16
	.long	.LASF886
	.sleb128 5
	.uleb128 0x16
	.long	.LASF887
	.sleb128 6
	.byte	0
	.uleb128 0x15
	.long	.LASF888
	.byte	0x4
	.byte	0xd
	.byte	0x34
	.long	0x24b9
	.uleb128 0x16
	.long	.LASF889
	.sleb128 0
	.uleb128 0x16
	.long	.LASF890
	.sleb128 1
	.uleb128 0x16
	.long	.LASF891
	.sleb128 2
	.uleb128 0x16
	.long	.LASF892
	.sleb128 3
	.uleb128 0x16
	.long	.LASF893
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF703
	.byte	0x10
	.byte	0xd
	.byte	0x45
	.long	0x24de
	.uleb128 0x8
	.long	.LASF894
	.byte	0xd
	.byte	0x47
	.long	0x2cd
	.byte	0
	.uleb128 0x6
	.string	"var"
	.byte	0xd
	.byte	0x48
	.long	0x123
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.long	.LASF895
	.byte	0x4
	.byte	0xd
	.byte	0x77
	.long	0x24fd
	.uleb128 0x16
	.long	.LASF896
	.sleb128 0
	.uleb128 0x16
	.long	.LASF897
	.sleb128 1
	.uleb128 0x16
	.long	.LASF898
	.sleb128 2
	.byte	0
	.uleb128 0x1d
	.long	.LASF899
	.byte	0x4
	.byte	0xd
	.value	0x2ce
	.long	0x251d
	.uleb128 0x16
	.long	.LASF900
	.sleb128 0
	.uleb128 0x16
	.long	.LASF901
	.sleb128 1
	.uleb128 0x16
	.long	.LASF902
	.sleb128 2
	.byte	0
	.uleb128 0x15
	.long	.LASF903
	.byte	0x4
	.byte	0xe
	.byte	0x19
	.long	0x2798
	.uleb128 0x16
	.long	.LASF904
	.sleb128 0
	.uleb128 0x16
	.long	.LASF905
	.sleb128 1
	.uleb128 0x16
	.long	.LASF906
	.sleb128 2
	.uleb128 0x16
	.long	.LASF907
	.sleb128 3
	.uleb128 0x16
	.long	.LASF908
	.sleb128 4
	.uleb128 0x16
	.long	.LASF909
	.sleb128 5
	.uleb128 0x16
	.long	.LASF910
	.sleb128 6
	.uleb128 0x16
	.long	.LASF911
	.sleb128 7
	.uleb128 0x16
	.long	.LASF912
	.sleb128 8
	.uleb128 0x16
	.long	.LASF913
	.sleb128 9
	.uleb128 0x16
	.long	.LASF914
	.sleb128 10
	.uleb128 0x16
	.long	.LASF915
	.sleb128 11
	.uleb128 0x16
	.long	.LASF916
	.sleb128 12
	.uleb128 0x16
	.long	.LASF917
	.sleb128 13
	.uleb128 0x16
	.long	.LASF918
	.sleb128 14
	.uleb128 0x16
	.long	.LASF919
	.sleb128 15
	.uleb128 0x16
	.long	.LASF920
	.sleb128 16
	.uleb128 0x16
	.long	.LASF921
	.sleb128 17
	.uleb128 0x16
	.long	.LASF922
	.sleb128 18
	.uleb128 0x16
	.long	.LASF923
	.sleb128 19
	.uleb128 0x16
	.long	.LASF924
	.sleb128 20
	.uleb128 0x16
	.long	.LASF925
	.sleb128 21
	.uleb128 0x16
	.long	.LASF926
	.sleb128 22
	.uleb128 0x16
	.long	.LASF927
	.sleb128 23
	.uleb128 0x16
	.long	.LASF928
	.sleb128 24
	.uleb128 0x16
	.long	.LASF929
	.sleb128 25
	.uleb128 0x16
	.long	.LASF930
	.sleb128 26
	.uleb128 0x16
	.long	.LASF931
	.sleb128 27
	.uleb128 0x16
	.long	.LASF932
	.sleb128 28
	.uleb128 0x16
	.long	.LASF933
	.sleb128 29
	.uleb128 0x16
	.long	.LASF934
	.sleb128 30
	.uleb128 0x16
	.long	.LASF935
	.sleb128 31
	.uleb128 0x16
	.long	.LASF936
	.sleb128 32
	.uleb128 0x16
	.long	.LASF937
	.sleb128 33
	.uleb128 0x16
	.long	.LASF938
	.sleb128 34
	.uleb128 0x16
	.long	.LASF939
	.sleb128 35
	.uleb128 0x16
	.long	.LASF940
	.sleb128 36
	.uleb128 0x16
	.long	.LASF941
	.sleb128 37
	.uleb128 0x16
	.long	.LASF942
	.sleb128 38
	.uleb128 0x16
	.long	.LASF943
	.sleb128 39
	.uleb128 0x16
	.long	.LASF944
	.sleb128 40
	.uleb128 0x16
	.long	.LASF945
	.sleb128 41
	.uleb128 0x16
	.long	.LASF946
	.sleb128 42
	.uleb128 0x16
	.long	.LASF947
	.sleb128 43
	.uleb128 0x16
	.long	.LASF948
	.sleb128 44
	.uleb128 0x16
	.long	.LASF949
	.sleb128 45
	.uleb128 0x16
	.long	.LASF950
	.sleb128 46
	.uleb128 0x16
	.long	.LASF951
	.sleb128 47
	.uleb128 0x16
	.long	.LASF952
	.sleb128 48
	.uleb128 0x16
	.long	.LASF953
	.sleb128 49
	.uleb128 0x16
	.long	.LASF954
	.sleb128 50
	.uleb128 0x16
	.long	.LASF955
	.sleb128 51
	.uleb128 0x16
	.long	.LASF956
	.sleb128 52
	.uleb128 0x16
	.long	.LASF957
	.sleb128 53
	.uleb128 0x16
	.long	.LASF958
	.sleb128 54
	.uleb128 0x16
	.long	.LASF959
	.sleb128 55
	.uleb128 0x16
	.long	.LASF960
	.sleb128 56
	.uleb128 0x16
	.long	.LASF961
	.sleb128 57
	.uleb128 0x16
	.long	.LASF962
	.sleb128 58
	.uleb128 0x16
	.long	.LASF963
	.sleb128 59
	.uleb128 0x16
	.long	.LASF964
	.sleb128 60
	.uleb128 0x16
	.long	.LASF965
	.sleb128 61
	.uleb128 0x16
	.long	.LASF966
	.sleb128 62
	.uleb128 0x16
	.long	.LASF967
	.sleb128 63
	.uleb128 0x16
	.long	.LASF968
	.sleb128 64
	.uleb128 0x16
	.long	.LASF969
	.sleb128 65
	.uleb128 0x16
	.long	.LASF970
	.sleb128 66
	.uleb128 0x16
	.long	.LASF971
	.sleb128 67
	.uleb128 0x16
	.long	.LASF972
	.sleb128 68
	.uleb128 0x16
	.long	.LASF973
	.sleb128 69
	.uleb128 0x16
	.long	.LASF974
	.sleb128 70
	.uleb128 0x16
	.long	.LASF975
	.sleb128 71
	.uleb128 0x16
	.long	.LASF976
	.sleb128 72
	.uleb128 0x16
	.long	.LASF977
	.sleb128 73
	.uleb128 0x16
	.long	.LASF978
	.sleb128 74
	.uleb128 0x16
	.long	.LASF979
	.sleb128 75
	.uleb128 0x16
	.long	.LASF980
	.sleb128 76
	.uleb128 0x16
	.long	.LASF981
	.sleb128 77
	.uleb128 0x16
	.long	.LASF982
	.sleb128 78
	.uleb128 0x16
	.long	.LASF983
	.sleb128 79
	.uleb128 0x16
	.long	.LASF984
	.sleb128 80
	.uleb128 0x16
	.long	.LASF985
	.sleb128 81
	.uleb128 0x16
	.long	.LASF986
	.sleb128 82
	.uleb128 0x16
	.long	.LASF987
	.sleb128 83
	.uleb128 0x16
	.long	.LASF988
	.sleb128 84
	.uleb128 0x16
	.long	.LASF989
	.sleb128 85
	.uleb128 0x16
	.long	.LASF990
	.sleb128 86
	.uleb128 0x16
	.long	.LASF991
	.sleb128 87
	.uleb128 0x16
	.long	.LASF992
	.sleb128 88
	.uleb128 0x16
	.long	.LASF993
	.sleb128 89
	.uleb128 0x16
	.long	.LASF994
	.sleb128 90
	.uleb128 0x16
	.long	.LASF995
	.sleb128 91
	.uleb128 0x16
	.long	.LASF996
	.sleb128 92
	.uleb128 0x16
	.long	.LASF997
	.sleb128 93
	.uleb128 0x16
	.long	.LASF998
	.sleb128 94
	.uleb128 0x16
	.long	.LASF999
	.sleb128 95
	.uleb128 0x16
	.long	.LASF1000
	.sleb128 96
	.uleb128 0x16
	.long	.LASF1001
	.sleb128 97
	.byte	0
	.uleb128 0x4
	.long	.LASF1002
	.byte	0x18
	.byte	0xc
	.byte	0x16
	.long	0x27d5
	.uleb128 0x8
	.long	.LASF1003
	.byte	0xc
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1004
	.byte	0xc
	.byte	0x19
	.long	0x32e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1005
	.byte	0xc
	.byte	0x1a
	.long	0x1de
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1006
	.byte	0xc
	.byte	0x1b
	.long	0x27d5
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2798
	.uleb128 0x4
	.long	.LASF1007
	.byte	0x20
	.byte	0xc
	.byte	0x23
	.long	0x2818
	.uleb128 0x8
	.long	.LASF1008
	.byte	0xc
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1009
	.byte	0xc
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1010
	.byte	0xc
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1006
	.byte	0xc
	.byte	0x28
	.long	0x2818
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x27db
	.uleb128 0x4
	.long	.LASF1011
	.byte	0x58
	.byte	0xc
	.byte	0x35
	.long	0x28c7
	.uleb128 0x8
	.long	.LASF1012
	.byte	0xc
	.byte	0x39
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF1013
	.byte	0xc
	.byte	0x3c
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1014
	.byte	0xc
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1015
	.byte	0xc
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1010
	.byte	0xc
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1007
	.byte	0xc
	.byte	0x4f
	.long	0x2818
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1016
	.byte	0xc
	.byte	0x53
	.long	0x1de
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1017
	.byte	0xc
	.byte	0x57
	.long	0x1de
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF1018
	.byte	0xc
	.byte	0x58
	.long	0x30f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1019
	.byte	0xc
	.byte	0x5e
	.long	0x1de
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1020
	.byte	0xc
	.byte	0x63
	.long	0x28c7
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1021
	.byte	0xc
	.byte	0x67
	.long	0x2450
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1022
	.byte	0xc
	.byte	0x6b
	.long	0xc22
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2e6
	.uleb128 0x4
	.long	.LASF1023
	.byte	0x30
	.byte	0xc
	.byte	0x77
	.long	0x292e
	.uleb128 0x8
	.long	.LASF1024
	.byte	0xc
	.byte	0x7b
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF1025
	.byte	0xc
	.byte	0x8c
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1026
	.byte	0xc
	.byte	0x92
	.long	0x1de
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1027
	.byte	0xc
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1028
	.byte	0xc
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1029
	.byte	0xc
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1030
	.byte	0xc
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1c
	.long	.LASF1031
	.uleb128 0x3
	.byte	0x8
	.long	0x292e
	.uleb128 0x1c
	.long	.LASF1032
	.uleb128 0x3
	.byte	0x8
	.long	0x2939
	.uleb128 0x3
	.byte	0x8
	.long	0x28cd
	.uleb128 0x3
	.byte	0x8
	.long	0x281e
	.uleb128 0x1c
	.long	.LASF1033
	.uleb128 0x3
	.byte	0x8
	.long	0x2950
	.uleb128 0x1c
	.long	.LASF1034
	.uleb128 0x3
	.byte	0x8
	.long	0x295b
	.uleb128 0x1c
	.long	.LASF1035
	.uleb128 0x3
	.byte	0x8
	.long	0x2966
	.uleb128 0x1c
	.long	.LASF1036
	.uleb128 0x3
	.byte	0x8
	.long	0x2971
	.uleb128 0x1c
	.long	.LASF1037
	.uleb128 0x3
	.byte	0x8
	.long	0x297c
	.uleb128 0x11
	.long	0x2df
	.long	0x2997
	.uleb128 0x12
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.long	.LASF1038
	.uleb128 0x26
	.byte	0x4
	.byte	0xf
	.byte	0x48
	.long	0x2abb
	.uleb128 0x16
	.long	.LASF1039
	.sleb128 0
	.uleb128 0x16
	.long	.LASF1040
	.sleb128 1
	.uleb128 0x16
	.long	.LASF1041
	.sleb128 2
	.uleb128 0x16
	.long	.LASF1042
	.sleb128 3
	.uleb128 0x16
	.long	.LASF1043
	.sleb128 4
	.uleb128 0x16
	.long	.LASF1044
	.sleb128 5
	.uleb128 0x16
	.long	.LASF1045
	.sleb128 6
	.uleb128 0x16
	.long	.LASF1046
	.sleb128 7
	.uleb128 0x16
	.long	.LASF1047
	.sleb128 8
	.uleb128 0x16
	.long	.LASF1048
	.sleb128 9
	.uleb128 0x16
	.long	.LASF1049
	.sleb128 10
	.uleb128 0x16
	.long	.LASF1050
	.sleb128 11
	.uleb128 0x16
	.long	.LASF1051
	.sleb128 12
	.uleb128 0x16
	.long	.LASF1052
	.sleb128 13
	.uleb128 0x16
	.long	.LASF1053
	.sleb128 14
	.uleb128 0x16
	.long	.LASF1054
	.sleb128 15
	.uleb128 0x16
	.long	.LASF1055
	.sleb128 16
	.uleb128 0x16
	.long	.LASF1056
	.sleb128 17
	.uleb128 0x16
	.long	.LASF1057
	.sleb128 18
	.uleb128 0x16
	.long	.LASF1058
	.sleb128 19
	.uleb128 0x16
	.long	.LASF1059
	.sleb128 20
	.uleb128 0x16
	.long	.LASF1060
	.sleb128 21
	.uleb128 0x16
	.long	.LASF1061
	.sleb128 22
	.uleb128 0x16
	.long	.LASF1062
	.sleb128 23
	.uleb128 0x16
	.long	.LASF1063
	.sleb128 24
	.uleb128 0x16
	.long	.LASF1064
	.sleb128 25
	.uleb128 0x16
	.long	.LASF1065
	.sleb128 26
	.uleb128 0x16
	.long	.LASF1066
	.sleb128 27
	.uleb128 0x16
	.long	.LASF1067
	.sleb128 28
	.uleb128 0x16
	.long	.LASF1068
	.sleb128 29
	.uleb128 0x16
	.long	.LASF1069
	.sleb128 30
	.uleb128 0x16
	.long	.LASF1070
	.sleb128 31
	.uleb128 0x16
	.long	.LASF1071
	.sleb128 32
	.uleb128 0x16
	.long	.LASF1072
	.sleb128 33
	.uleb128 0x16
	.long	.LASF1073
	.sleb128 34
	.uleb128 0x16
	.long	.LASF1074
	.sleb128 35
	.uleb128 0x16
	.long	.LASF1075
	.sleb128 36
	.uleb128 0x16
	.long	.LASF1076
	.sleb128 37
	.uleb128 0x16
	.long	.LASF1077
	.sleb128 38
	.uleb128 0x16
	.long	.LASF1078
	.sleb128 39
	.uleb128 0x16
	.long	.LASF1079
	.sleb128 40
	.uleb128 0x16
	.long	.LASF1080
	.sleb128 41
	.uleb128 0x16
	.long	.LASF1081
	.sleb128 42
	.uleb128 0x16
	.long	.LASF1082
	.sleb128 43
	.uleb128 0x16
	.long	.LASF1083
	.sleb128 44
	.uleb128 0x16
	.long	.LASF1084
	.sleb128 45
	.byte	0
	.uleb128 0x4
	.long	.LASF1085
	.byte	0x18
	.byte	0x10
	.byte	0x1f
	.long	0x2af8
	.uleb128 0x8
	.long	.LASF1086
	.byte	0x10
	.byte	0x21
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF266
	.byte	0x10
	.byte	0x22
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1087
	.byte	0x10
	.byte	0x23
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1088
	.byte	0x10
	.byte	0x24
	.long	0x2987
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF1089
	.byte	0x10
	.byte	0x25
	.long	0x2b03
	.uleb128 0x3
	.byte	0x8
	.long	0x2abb
	.uleb128 0x4
	.long	.LASF1090
	.byte	0xa8
	.byte	0x1
	.byte	0x44
	.long	0x2bee
	.uleb128 0x8
	.long	.LASF1091
	.byte	0x1
	.byte	0x47
	.long	0x123
	.byte	0
	.uleb128 0x8
	.long	.LASF1
	.byte	0x1
	.byte	0x49
	.long	0x32e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF654
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1092
	.byte	0x1
	.byte	0x4d
	.long	0x2d
	.byte	0x18
	.uleb128 0x6
	.string	"reg"
	.byte	0x1
	.byte	0x51
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1093
	.byte	0x1
	.byte	0x55
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1005
	.byte	0x1
	.byte	0x58
	.long	0x1de
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1094
	.byte	0x1
	.byte	0x5b
	.long	0x1de
	.byte	0x34
	.uleb128 0x8
	.long	.LASF1095
	.byte	0x1
	.byte	0x60
	.long	0x1de
	.byte	0x38
	.uleb128 0x8
	.long	.LASF265
	.byte	0x1
	.byte	0x62
	.long	0x24b9
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1096
	.byte	0x1
	.byte	0x65
	.long	0x24b9
	.byte	0x50
	.uleb128 0x8
	.long	.LASF266
	.byte	0x1
	.byte	0x6a
	.long	0x24b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1097
	.byte	0x1
	.byte	0x6d
	.long	0x2d
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1098
	.byte	0x1
	.byte	0x71
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1099
	.byte	0x1
	.byte	0x73
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1100
	.byte	0x1
	.byte	0x78
	.long	0xc22
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1101
	.byte	0x1
	.byte	0x79
	.long	0x1de
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1102
	.byte	0x1
	.byte	0x7c
	.long	0x24b9
	.byte	0x98
	.byte	0
	.uleb128 0x27
	.long	.LASF1104
	.byte	0x1
	.byte	0xf3
	.long	0x1de
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c3a
	.uleb128 0x28
	.string	"exp"
	.byte	0x1
	.byte	0xf4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF1103
	.byte	0x1
	.byte	0xf5
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.string	"val"
	.byte	0x1
	.byte	0xf7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF1105
	.byte	0x1
	.value	0x102
	.long	0x1de
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d0c
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0x103
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF1103
	.byte	0x1
	.value	0x104
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x106
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x107
	.long	0xcde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF1106
	.byte	0x1
	.value	0x108
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF643
	.byte	0x1
	.value	0x109
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x2cdb
	.uleb128 0x2e
	.string	"tem"
	.byte	0x1
	.value	0x125
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.long	.LASF1107
	.byte	0x1
	.value	0x13a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1108
	.byte	0x1
	.value	0x13b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF1134
	.byte	0x1
	.value	0x168
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d89
	.uleb128 0x2d
	.long	.LASF1109
	.byte	0x1
	.value	0x169
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1110
	.byte	0x1
	.value	0x16a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF1111
	.byte	0x1
	.value	0x16b
	.long	0xc22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1112
	.byte	0x1
	.value	0x16c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.long	.LASF1113
	.byte	0x1
	.value	0x16d
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1114
	.byte	0x1
	.value	0x16f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1137
	.byte	0x1
	.value	0x1be
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f19
	.uleb128 0x2d
	.long	.LASF1109
	.byte	0x1
	.value	0x1c1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF1110
	.byte	0x1
	.value	0x1c2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF1115
	.byte	0x1
	.value	0x1c3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF1116
	.byte	0x1
	.value	0x1c4
	.long	0x2cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.long	.LASF1117
	.byte	0x1
	.value	0x1c5
	.long	0x2cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF1118
	.byte	0x1
	.value	0x1c6
	.long	0x2cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.long	.LASF1119
	.byte	0x1
	.value	0x1c7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF1120
	.byte	0x1
	.value	0x1c8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF1121
	.byte	0x1
	.value	0x1c9
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF1111
	.byte	0x1
	.value	0x1ca
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2d
	.long	.LASF1122
	.byte	0x1
	.value	0x1cb
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.long	.LASF1123
	.byte	0x1
	.value	0x1cc
	.long	0x2f19
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2f
	.long	.LASF1124
	.byte	0x1
	.value	0x1ce
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1125
	.byte	0x1
	.value	0x1cf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1126
	.byte	0x1
	.value	0x1d0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2f
	.long	.LASF1127
	.byte	0x1
	.value	0x1d1
	.long	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1128
	.byte	0x1
	.value	0x1d3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1165
	.long	0x2f2f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12762
	.uleb128 0x30
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x2ef7
	.uleb128 0x2f
	.long	.LASF1129
	.byte	0x1
	.value	0x207
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"pat"
	.byte	0x1
	.value	0x208
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x31
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2f
	.long	.LASF1130
	.byte	0x1
	.value	0x253
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x255
	.uleb128 0x11
	.long	0x308
	.long	0x2f2f
	.uleb128 0x12
	.long	0x1e5
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.long	0x2f1f
	.uleb128 0x2b
	.long	.LASF1131
	.byte	0x1
	.value	0x2bb
	.long	0x1de
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fa5
	.uleb128 0x2d
	.long	.LASF1110
	.byte	0x1
	.value	0x2bc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1132
	.byte	0x1
	.value	0x2bd
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2f
	.long	.LASF686
	.byte	0x1
	.value	0x2c7
	.long	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1133
	.byte	0x1
	.value	0x2c8
	.long	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF1135
	.byte	0x1
	.value	0x31a
	.long	0x1de
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fd7
	.uleb128 0x2d
	.long	.LASF1110
	.byte	0x1
	.value	0x31b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1136
	.byte	0x1
	.value	0x323
	.long	0x1de
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3027
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0x324
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1132
	.byte	0x1
	.value	0x326
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x327
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1138
	.byte	0x1
	.value	0x352
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3081
	.uleb128 0x2d
	.long	.LASF1139
	.byte	0x1
	.value	0x353
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LASF1140
	.byte	0x1
	.value	0x354
	.long	0x3081
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF1112
	.byte	0x1
	.value	0x355
	.long	0x328
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x357
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2b09
	.uleb128 0x2b
	.long	.LASF1141
	.byte	0x1
	.value	0x390
	.long	0x2d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3145
	.uleb128 0x2d
	.long	.LASF1142
	.byte	0x1
	.value	0x392
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF1143
	.byte	0x1
	.value	0x393
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1144
	.byte	0x1
	.value	0x394
	.long	0x328
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1145
	.byte	0x1
	.value	0x395
	.long	0x328
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x397
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF1099
	.byte	0x1
	.value	0x398
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2f
	.long	.LASF1146
	.byte	0x1
	.value	0x3ad
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF1147
	.byte	0x1
	.value	0x3ae
	.long	0x32e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0x3b0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1149
	.byte	0x1
	.value	0x3d9
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x31c0
	.uleb128 0x2d
	.long	.LASF1099
	.byte	0x1
	.value	0x3da
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1143
	.byte	0x1
	.value	0x3db
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF1145
	.byte	0x1
	.value	0x3dc
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF1144
	.byte	0x1
	.value	0x3dd
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1147
	.byte	0x1
	.value	0x3df
	.long	0x32e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0x3e7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x33
	.long	.LASF1150
	.byte	0x1
	.value	0x403
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3289
	.uleb128 0x2d
	.long	.LASF1140
	.byte	0x1
	.value	0x404
	.long	0x3081
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1139
	.byte	0x1
	.value	0x405
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x407
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x407
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2f
	.long	.LASF1087
	.byte	0x1
	.value	0x40f
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF1151
	.byte	0x1
	.value	0x410
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x424
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1152
	.byte	0x1
	.value	0x425
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1153
	.byte	0x1
	.value	0x426
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1154
	.byte	0x1
	.value	0x457
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3457
	.uleb128 0x2d
	.long	.LASF1139
	.byte	0x1
	.value	0x45c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.long	.LASF1140
	.byte	0x1
	.value	0x45d
	.long	0x3081
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.long	.LASF703
	.byte	0x1
	.value	0x45e
	.long	0x3457
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF1155
	.byte	0x1
	.value	0x45f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF1156
	.byte	0x1
	.value	0x460
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.long	.LASF1110
	.byte	0x1
	.value	0x461
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF1123
	.byte	0x1
	.value	0x462
	.long	0x2f19
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF1142
	.byte	0x1
	.value	0x463
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF1157
	.byte	0x1
	.value	0x464
	.long	0xc22
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF1158
	.byte	0x1
	.value	0x465
	.long	0x328
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2d
	.long	.LASF1159
	.byte	0x1
	.value	0x466
	.long	0x328
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.long	.LASF1122
	.byte	0x1
	.value	0x467
	.long	0x328
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2e
	.string	"inc"
	.byte	0x1
	.value	0x46a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.long	.LASF1160
	.byte	0x1
	.value	0x46d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1102
	.byte	0x1
	.value	0x46f
	.long	0x24b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x470
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x471
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x488
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1005
	.byte	0x1
	.value	0x489
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x48a
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x3434
	.uleb128 0x2f
	.long	.LASF1161
	.byte	0x1
	.value	0x4df
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2f
	.long	.LASF1162
	.byte	0x1
	.value	0x4e9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2e
	.string	"inc"
	.byte	0x1
	.value	0x557
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x24b9
	.uleb128 0x2b
	.long	.LASF1163
	.byte	0x1
	.value	0x573
	.long	0x1de
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x34cf
	.uleb128 0x2d
	.long	.LASF1142
	.byte	0x1
	.value	0x575
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LASF703
	.byte	0x1
	.value	0x576
	.long	0x3457
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF747
	.byte	0x1
	.value	0x577
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1164
	.byte	0x1
	.value	0x579
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1165
	.long	0x34df
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12867
	.byte	0
	.uleb128 0x11
	.long	0x308
	.long	0x34df
	.uleb128 0x12
	.long	0x1e5
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.long	0x34cf
	.uleb128 0x33
	.long	.LASF1166
	.byte	0x1
	.value	0x5ca
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3571
	.uleb128 0x2d
	.long	.LASF1132
	.byte	0x1
	.value	0x5cb
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LASF1139
	.byte	0x1
	.value	0x5cc
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1140
	.byte	0x1
	.value	0x5cd
	.long	0x3081
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x5cf
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1165
	.long	0x3581
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12875
	.uleb128 0x31
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x5e4
	.long	0x32e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x308
	.long	0x3581
	.uleb128 0x12
	.long	0x1e5
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.long	0x3571
	.uleb128 0x2b
	.long	.LASF1167
	.byte	0x1
	.value	0x611
	.long	0x1de
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3622
	.uleb128 0x2d
	.long	.LASF1159
	.byte	0x1
	.value	0x612
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF1139
	.byte	0x1
	.value	0x613
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1140
	.byte	0x1
	.value	0x614
	.long	0x3081
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF703
	.byte	0x1
	.value	0x615
	.long	0x3457
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2f
	.long	.LASF1168
	.byte	0x1
	.value	0x62c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF1169
	.byte	0x1
	.value	0x62d
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x62e
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1170
	.byte	0x1
	.value	0x650
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x36ef
	.uleb128 0x2d
	.long	.LASF1140
	.byte	0x1
	.value	0x651
	.long	0x3081
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1143
	.byte	0x1
	.value	0x652
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF1139
	.byte	0x1
	.value	0x653
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x31
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2f
	.long	.LASF1171
	.byte	0x1
	.value	0x657
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x658
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1172
	.byte	0x1
	.value	0x658
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2f
	.long	.LASF265
	.byte	0x1
	.value	0x65f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1096
	.byte	0x1
	.value	0x660
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1173
	.byte	0x1
	.value	0x661
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF1174
	.byte	0x1
	.value	0x68e
	.long	0x2d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3760
	.uleb128 0x2d
	.long	.LASF1110
	.byte	0x1
	.value	0x68f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0x690
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1109
	.byte	0x1
	.value	0x692
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2f
	.long	.LASF1175
	.byte	0x1
	.value	0x6a5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1176
	.byte	0x1
	.value	0x6b7
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3818
	.uleb128 0x2d
	.long	.LASF1140
	.byte	0x1
	.value	0x6b8
	.long	0x3081
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF1139
	.byte	0x1
	.value	0x6b9
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LASF1111
	.byte	0x1
	.value	0x6ba
	.long	0xc22
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1132
	.byte	0x1
	.value	0x6bb
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x6bd
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x6bd
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x6c5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1094
	.byte	0x1
	.value	0x6c7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF30
	.byte	0x1
	.value	0x6c8
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF1177
	.byte	0x1
	.value	0x701
	.long	0x2d
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3947
	.uleb128 0x2d
	.long	.LASF1110
	.byte	0x1
	.value	0x702
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1156
	.byte	0x1
	.value	0x703
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF1178
	.byte	0x1
	.value	0x704
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF1179
	.byte	0x1
	.value	0x705
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0x706
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF1180
	.byte	0x1
	.value	0x707
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1181
	.byte	0x1
	.value	0x709
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1182
	.byte	0x1
	.value	0x70a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x70b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF1157
	.byte	0x1
	.value	0x70c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1142
	.byte	0x1
	.value	0x70d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2f
	.long	.LASF1183
	.byte	0x1
	.value	0x730
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1184
	.byte	0x1
	.value	0x732
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"seq"
	.byte	0x1
	.value	0x732
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2f
	.long	.LASF1185
	.byte	0x1
	.value	0x751
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1186
	.byte	0x1
	.value	0x77f
	.long	0x1de
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x39b5
	.uleb128 0x2d
	.long	.LASF1164
	.byte	0x1
	.value	0x782
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF703
	.byte	0x1
	.value	0x783
	.long	0x3457
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF1187
	.byte	0x1
	.value	0x784
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1188
	.byte	0x1
	.value	0x788
	.long	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1189
	.byte	0x1
	.value	0x78b
	.long	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF1190
	.byte	0x1
	.value	0x7b7
	.long	0x1de
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a2a
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x7b8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x7ba
	.long	0x4ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x7bb
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x7bb
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0x7bc
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"fmt"
	.byte	0x1
	.value	0x7bd
	.long	0x30f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF1191
	.byte	0x1
	.value	0x7f6
	.long	0x1de
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a89
	.uleb128 0x2d
	.long	.LASF1184
	.byte	0x1
	.value	0x7f7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.value	0x7f8
	.long	0x3081
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"low"
	.byte	0x1
	.value	0x7fa
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF638
	.byte	0x1
	.value	0x7fa
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF1192
	.byte	0x1
	.value	0x818
	.long	0x2d
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x40d3
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0x819
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x2d
	.long	.LASF1178
	.byte	0x1
	.value	0x81a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x2d
	.long	.LASF1179
	.byte	0x1
	.value	0x81b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x2f
	.long	.LASF1193
	.byte	0x1
	.value	0x81e
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	currently_expanding_call.12993
	.uleb128 0x2f
	.long	.LASF1156
	.byte	0x1
	.value	0x821
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2f
	.long	.LASF1109
	.byte	0x1
	.value	0x823
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF1194
	.byte	0x1
	.value	0x825
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2f
	.long	.LASF1195
	.byte	0x1
	.value	0x827
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2f
	.long	.LASF1196
	.byte	0x1
	.value	0x829
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2f
	.long	.LASF1115
	.byte	0x1
	.value	0x82b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2f
	.long	.LASF1110
	.byte	0x1
	.value	0x82e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2f
	.long	.LASF1184
	.byte	0x1
	.value	0x82f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2f
	.long	.LASF1197
	.byte	0x1
	.value	0x830
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x2f
	.long	.LASF1198
	.byte	0x1
	.value	0x831
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -500
	.uleb128 0x2f
	.long	.LASF1199
	.byte	0x1
	.value	0x832
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x2f
	.long	.LASF1120
	.byte	0x1
	.value	0x836
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2f
	.long	.LASF1180
	.byte	0x1
	.value	0x839
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2f
	.long	.LASF1200
	.byte	0x1
	.value	0x83d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x2f
	.long	.LASF1118
	.byte	0x1
	.value	0x841
	.long	0x2cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2f
	.long	.LASF1201
	.byte	0x1
	.value	0x844
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2f
	.long	.LASF1139
	.byte	0x1
	.value	0x847
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x84a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2f
	.long	.LASF1140
	.byte	0x1
	.value	0x84f
	.long	0x3081
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.long	.LASF703
	.byte	0x1
	.value	0x852
	.long	0x24b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1202
	.byte	0x1
	.value	0x853
	.long	0x24b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1164
	.byte	0x1
	.value	0x855
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x2f
	.long	.LASF1123
	.byte	0x1
	.value	0x857
	.long	0x255
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1112
	.byte	0x1
	.value	0x859
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x2f
	.long	.LASF1159
	.byte	0x1
	.value	0x862
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x2f
	.long	.LASF1142
	.byte	0x1
	.value	0x865
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x2f
	.long	.LASF1143
	.byte	0x1
	.value	0x869
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2f
	.long	.LASF1132
	.byte	0x1
	.value	0x86c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2f
	.long	.LASF1203
	.byte	0x1
	.value	0x86e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -484
	.uleb128 0x2f
	.long	.LASF1144
	.byte	0x1
	.value	0x872
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x2f
	.long	.LASF1145
	.byte	0x1
	.value	0x872
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2f
	.long	.LASF1099
	.byte	0x1
	.value	0x873
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.long	.LASF1204
	.byte	0x1
	.value	0x876
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x2f
	.long	.LASF1205
	.byte	0x1
	.value	0x877
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.long	.LASF1206
	.byte	0x1
	.value	0x878
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x2f
	.long	.LASF1157
	.byte	0x1
	.value	0x87a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2f
	.long	.LASF1158
	.byte	0x1
	.value	0x87b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -508
	.uleb128 0x2f
	.long	.LASF1121
	.byte	0x1
	.value	0x87c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x2f
	.long	.LASF1207
	.byte	0x1
	.value	0x87d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2f
	.long	.LASF1111
	.byte	0x1
	.value	0x87e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x87f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x880
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x2f
	.long	.LASF747
	.byte	0x1
	.value	0x882
	.long	0x2cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF1187
	.byte	0x1
	.value	0x884
	.long	0x2cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x34
	.long	.LASF1165
	.long	0x40d3
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13040
	.uleb128 0x30
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x3de3
	.uleb128 0x2e
	.string	"d"
	.byte	0x1
	.value	0x8e0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x30
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x3e09
	.uleb128 0x2f
	.long	.LASF1181
	.byte	0x1
	.value	0x8ee
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x30
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x3e2f
	.uleb128 0x2f
	.long	.LASF1181
	.byte	0x1
	.value	0x90e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x30
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x3e87
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.value	0x9ab
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x2e
	.string	"inc"
	.byte	0x1
	.value	0x9ab
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x31
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2e
	.string	"var"
	.byte	0x1
	.value	0x9d6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x3ebd
	.uleb128 0x2f
	.long	.LASF1208
	.byte	0x1
	.value	0x9f6
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x2f
	.long	.LASF1209
	.byte	0x1
	.value	0x9f7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.byte	0
	.uleb128 0x31
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2f
	.long	.LASF1210
	.byte	0x1
	.value	0xa36
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x2f
	.long	.LASF1208
	.byte	0x1
	.value	0xa3b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x2f
	.long	.LASF1209
	.byte	0x1
	.value	0xa3c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x2f
	.long	.LASF1211
	.byte	0x1
	.value	0xa3d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1182
	.byte	0x1
	.value	0xa3e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF1119
	.byte	0x1
	.value	0xa3e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x30
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x3f76
	.uleb128 0x2f
	.long	.LASF1212
	.byte	0x1
	.value	0xab3
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x31
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2f
	.long	.LASF1213
	.byte	0x1
	.value	0xb28
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x3f9c
	.uleb128 0x2f
	.long	.LASF1214
	.byte	0x1
	.value	0xb8e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x30
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x3fc2
	.uleb128 0x2f
	.long	.LASF1214
	.byte	0x1
	.value	0xba6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x36
	.long	.Ldebug_ranges0+0
	.long	0x400e
	.uleb128 0x2f
	.long	.LASF1211
	.byte	0x1
	.value	0xbfc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2f
	.long	.LASF1215
	.byte	0x1
	.value	0xc06
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2f
	.long	.LASF1181
	.byte	0x1
	.value	0xc07
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x4054
	.uleb128 0x2f
	.long	.LASF1181
	.byte	0x1
	.value	0xc26
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF1009
	.byte	0x1
	.value	0xc27
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1211
	.byte	0x1
	.value	0xc27
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x30
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x407a
	.uleb128 0x2f
	.long	.LASF1009
	.byte	0x1
	.value	0xc46
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x30
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x409f
	.uleb128 0x2e
	.string	"nt"
	.byte	0x1
	.value	0xc87
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x31
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x2f
	.long	.LASF1147
	.byte	0x1
	.value	0xce7
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0xce8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2f1f
	.uleb128 0x2b
	.long	.LASF1216
	.byte	0x1
	.value	0xd6e
	.long	0x2d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x462c
	.uleb128 0x2d
	.long	.LASF1217
	.byte	0x1
	.value	0xd6f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x2d
	.long	.LASF1218
	.byte	0x1
	.value	0xd70
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x2d
	.long	.LASF654
	.byte	0x1
	.value	0xd71
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x2d
	.long	.LASF1219
	.byte	0x1
	.value	0xd72
	.long	0xc7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x2d
	.long	.LASF1220
	.byte	0x1
	.value	0xd73
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x2d
	.long	.LASF1221
	.byte	0x1
	.value	0xd74
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.value	0xd75
	.long	0x462c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF703
	.byte	0x1
	.value	0xd78
	.long	0x24b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF1222
	.byte	0x1
	.value	0xd7a
	.long	0x24b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1223
	.byte	0x1
	.value	0xd7b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x2e
	.string	"fun"
	.byte	0x1
	.value	0xd7c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2e
	.string	"inc"
	.byte	0x1
	.value	0xd7d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2f
	.long	.LASF1224
	.byte	0x1
	.value	0xd7e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x2f
	.long	.LASF1102
	.byte	0x1
	.value	0xd7f
	.long	0x24b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1143
	.byte	0x1
	.value	0xd80
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2f
	.long	.LASF1123
	.byte	0x1
	.value	0xd81
	.long	0x255
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.string	"arg"
	.byte	0x48
	.byte	0x1
	.value	0xd82
	.long	0x4260
	.uleb128 0xf
	.long	.LASF654
	.byte	0x1
	.value	0xd84
	.long	0x2d
	.byte	0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x1
	.value	0xd85
	.long	0x32e
	.byte	0x8
	.uleb128 0x20
	.string	"reg"
	.byte	0x1
	.value	0xd86
	.long	0x2d
	.byte	0x10
	.uleb128 0xf
	.long	.LASF1094
	.byte	0x1
	.value	0xd87
	.long	0x1de
	.byte	0x18
	.uleb128 0xf
	.long	.LASF265
	.byte	0x1
	.value	0xd88
	.long	0x24b9
	.byte	0x20
	.uleb128 0xf
	.long	.LASF266
	.byte	0x1
	.value	0xd89
	.long	0x24b9
	.byte	0x30
	.uleb128 0xf
	.long	.LASF1099
	.byte	0x1
	.value	0xd8a
	.long	0x2d
	.byte	0x40
	.byte	0
	.uleb128 0x2f
	.long	.LASF1225
	.byte	0x1
	.value	0xd8c
	.long	0x4632
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF1121
	.byte	0x1
	.value	0xd8d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x2f
	.long	.LASF1111
	.byte	0x1
	.value	0xd8e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2f
	.long	.LASF1226
	.byte	0x1
	.value	0xd8f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.long	.LASF1120
	.byte	0x1
	.value	0xd90
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF1201
	.byte	0x1
	.value	0xd91
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2f
	.long	.LASF1118
	.byte	0x1
	.value	0xd92
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2f
	.long	.LASF1132
	.byte	0x1
	.value	0xd93
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x2f
	.long	.LASF1142
	.byte	0x1
	.value	0xd94
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x2f
	.long	.LASF1212
	.byte	0x1
	.value	0xd95
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2f
	.long	.LASF1182
	.byte	0x1
	.value	0xd96
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2f
	.long	.LASF1144
	.byte	0x1
	.value	0xd9b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2f
	.long	.LASF1145
	.byte	0x1
	.value	0xd9b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x2f
	.long	.LASF1099
	.byte	0x1
	.value	0xd9c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2f
	.long	.LASF1204
	.byte	0x1
	.value	0xda0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2f
	.long	.LASF1205
	.byte	0x1
	.value	0xda1
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x34
	.long	.LASF1165
	.long	0x4648
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13168
	.uleb128 0x30
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x4399
	.uleb128 0x2f
	.long	.LASF1173
	.byte	0x1
	.value	0xe0c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x30
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x43cf
	.uleb128 0x2e
	.string	"val"
	.byte	0x1
	.value	0xe32
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xe33
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.byte	0
	.uleb128 0x30
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x4415
	.uleb128 0x2f
	.long	.LASF1146
	.byte	0x1
	.value	0xf17
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x2f
	.long	.LASF1147
	.byte	0x1
	.value	0xf18
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0xf1a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x30
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x44cb
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xf42
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2e
	.string	"val"
	.byte	0x1
	.value	0xf43
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0xf44
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.long	.LASF1094
	.byte	0x1
	.value	0xf45
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x2f
	.long	.LASF1227
	.byte	0x1
	.value	0xf46
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x2f
	.long	.LASF1228
	.byte	0x1
	.value	0xf46
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0xf46
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x31
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2f
	.long	.LASF1147
	.byte	0x1
	.value	0xf64
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0xf68
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x4511
	.uleb128 0x2e
	.string	"val"
	.byte	0x1
	.value	0xf95
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0xf96
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.long	.LASF1094
	.byte	0x1
	.value	0xf97
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.byte	0
	.uleb128 0x30
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x4537
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0xfa6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x30
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x455d
	.uleb128 0x2f
	.long	.LASF1009
	.byte	0x1
	.value	0xfdf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x30
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x45c3
	.uleb128 0x2f
	.long	.LASF1211
	.byte	0x1
	.value	0xff4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x2f
	.long	.LASF1215
	.byte	0x1
	.value	0xffe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.long	.LASF1181
	.byte	0x1
	.value	0xfff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x1000
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x45f9
	.uleb128 0x2f
	.long	.LASF1147
	.byte	0x1
	.value	0x102e
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0x1036
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x31
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2f
	.long	.LASF1147
	.byte	0x1
	.value	0x1049
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0x104a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x27c
	.uleb128 0x3
	.byte	0x8
	.long	0x41f7
	.uleb128 0x11
	.long	0x308
	.long	0x4648
	.uleb128 0x12
	.long	0x1e5
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.long	0x4638
	.uleb128 0x38
	.long	.LASF1272
	.byte	0x1
	.value	0x106b
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x46de
	.uleb128 0x2d
	.long	.LASF1218
	.byte	0x1
	.value	0x106b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2d
	.long	.LASF1219
	.byte	0x1
	.value	0x106b
	.long	0xc7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2d
	.long	.LASF1220
	.byte	0x1
	.value	0x106b
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2d
	.long	.LASF1221
	.byte	0x1
	.value	0x106b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x39
	.uleb128 0x31
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x106e
	.long	0x2c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3a
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF1229
	.byte	0x1
	.value	0x1082
	.long	0x2d
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4793
	.uleb128 0x2d
	.long	.LASF1218
	.byte	0x1
	.value	0x1082
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2d
	.long	.LASF654
	.byte	0x1
	.value	0x1082
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2d
	.long	.LASF1219
	.byte	0x1
	.value	0x1082
	.long	0xc7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2d
	.long	.LASF1220
	.byte	0x1
	.value	0x1082
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2d
	.long	.LASF1221
	.byte	0x1
	.value	0x1082
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x39
	.uleb128 0x2f
	.long	.LASF803
	.byte	0x1
	.value	0x1086
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x31
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x1088
	.long	0x2c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3a
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF1230
	.byte	0x1
	.value	0x10ab
	.long	0x1de
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x49a5
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.value	0x10ac
	.long	0x3081
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF1143
	.byte	0x1
	.value	0x10ad
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF1132
	.byte	0x1
	.value	0x10ae
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.long	.LASF1231
	.byte	0x1
	.value	0x10af
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.long	.LASF1142
	.byte	0x1
	.value	0x10b0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2f
	.long	.LASF1232
	.byte	0x1
	.value	0x10b2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x10b3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1094
	.byte	0x1
	.value	0x10b4
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x10b5
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x10b6
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2f
	.long	.LASF1227
	.byte	0x1
	.value	0x10b6
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1228
	.byte	0x1
	.value	0x10b6
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2f
	.long	.LASF1210
	.byte	0x1
	.value	0x10b7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.long	.LASF1165
	.long	0x49b5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13270
	.uleb128 0x30
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0x48fa
	.uleb128 0x2f
	.long	.LASF1147
	.byte	0x1
	.value	0x10e2
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0x10e4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2e
	.string	"ot"
	.byte	0x1
	.value	0x10eb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"nt"
	.byte	0x1
	.value	0x10ec
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.long	0x4920
	.uleb128 0x2f
	.long	.LASF266
	.byte	0x1
	.value	0x114d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x31
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x2f
	.long	.LASF1233
	.byte	0x1
	.value	0x1179
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF1162
	.byte	0x1
	.value	0x117a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.long	0x4982
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x1195
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x1196
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x31
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x2f
	.long	.LASF1234
	.byte	0x1
	.value	0x11c8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x308
	.long	0x49b5
	.uleb128 0x12
	.long	0x1e5
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.long	0x49a5
	.uleb128 0x3b
	.long	.LASF1235
	.byte	0x1
	.byte	0x83
	.long	0x302
	.uleb128 0x9
	.byte	0x3
	.quad	stack_usage_map
	.uleb128 0x3b
	.long	.LASF1236
	.byte	0x1
	.byte	0x86
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	highest_outgoing_arg_in_use
	.uleb128 0x3b
	.long	.LASF1237
	.byte	0x1
	.byte	0x8d
	.long	0x2af8
	.uleb128 0x9
	.byte	0x3
	.quad	stored_args_map
	.uleb128 0x3b
	.long	.LASF1238
	.byte	0x1
	.byte	0xf0
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	calls_function_save_exprs
	.uleb128 0x3c
	.long	.LASF1239
	.byte	0x5
	.byte	0x62
	.long	0x1de
	.uleb128 0x3d
	.long	.LASF1240
	.byte	0x5
	.value	0xc38
	.long	0x1de
	.uleb128 0x11
	.long	0x4a3
	.long	0x4a35
	.uleb128 0x12
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3c
	.long	.LASF116
	.byte	0x9
	.byte	0x34
	.long	0x4a40
	.uleb128 0x14
	.long	0x4a25
	.uleb128 0x11
	.long	0x2e6
	.long	0x4a55
	.uleb128 0x12
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3c
	.long	.LASF1241
	.byte	0x9
	.byte	0x50
	.long	0x4a60
	.uleb128 0x14
	.long	0x4a45
	.uleb128 0x11
	.long	0x2ed
	.long	0x4a75
	.uleb128 0x12
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3c
	.long	.LASF1242
	.byte	0x9
	.byte	0x60
	.long	0x4a80
	.uleb128 0x14
	.long	0x4a65
	.uleb128 0x3c
	.long	.LASF1243
	.byte	0x9
	.byte	0xa4
	.long	0x32e
	.uleb128 0x11
	.long	0x2e6
	.long	0x4aa0
	.uleb128 0x12
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3c
	.long	.LASF1244
	.byte	0x2
	.byte	0x36
	.long	0x4aab
	.uleb128 0x14
	.long	0x4a90
	.uleb128 0x11
	.long	0x30f
	.long	0x4ac0
	.uleb128 0x12
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3c
	.long	.LASF1245
	.byte	0x2
	.byte	0x3c
	.long	0x4acb
	.uleb128 0x14
	.long	0x4ab0
	.uleb128 0x11
	.long	0x308
	.long	0x4ae0
	.uleb128 0x12
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3c
	.long	.LASF1246
	.byte	0x2
	.byte	0x3f
	.long	0x4aeb
	.uleb128 0x14
	.long	0x4ad0
	.uleb128 0x3d
	.long	.LASF1247
	.byte	0x2
	.value	0x4bb
	.long	0x1de
	.uleb128 0x11
	.long	0x2d
	.long	0x4b0c
	.uleb128 0x12
	.long	0x1e5
	.byte	0x80
	.byte	0
	.uleb128 0x3d
	.long	.LASF1248
	.byte	0x2
	.value	0x611
	.long	0x4afc
	.uleb128 0x11
	.long	0x2d
	.long	0x4b28
	.uleb128 0x12
	.long	0x1e5
	.byte	0xa
	.byte	0
	.uleb128 0x3d
	.long	.LASF1249
	.byte	0x2
	.value	0x652
	.long	0x4b18
	.uleb128 0x3d
	.long	.LASF1250
	.byte	0x2
	.value	0x661
	.long	0x2d
	.uleb128 0x3d
	.long	.LASF1251
	.byte	0x2
	.value	0x663
	.long	0x2d
	.uleb128 0x11
	.long	0x308
	.long	0x4b5c
	.uleb128 0x12
	.long	0x1e5
	.byte	0xff
	.byte	0
	.uleb128 0x3c
	.long	.LASF1252
	.byte	0x4
	.byte	0x31
	.long	0x4b4c
	.uleb128 0x11
	.long	0x123
	.long	0x4b77
	.uleb128 0x12
	.long	0x1e5
	.byte	0x32
	.byte	0
	.uleb128 0x3d
	.long	.LASF1253
	.byte	0x4
	.value	0x79b
	.long	0x4b67
	.uleb128 0x11
	.long	0x123
	.long	0x4b93
	.uleb128 0x12
	.long	0x1e5
	.byte	0xa
	.byte	0
	.uleb128 0x3d
	.long	.LASF1254
	.byte	0x4
	.value	0x7f8
	.long	0x4b83
	.uleb128 0x11
	.long	0x123
	.long	0x4baf
	.uleb128 0x12
	.long	0x1e5
	.byte	0x5
	.byte	0
	.uleb128 0x3d
	.long	.LASF1255
	.byte	0x4
	.value	0x97c
	.long	0x4b9f
	.uleb128 0x3d
	.long	.LASF1256
	.byte	0x4
	.value	0xa98
	.long	0x123
	.uleb128 0x3c
	.long	.LASF1257
	.byte	0x11
	.byte	0x3d
	.long	0x1de
	.uleb128 0x3c
	.long	.LASF1258
	.byte	0x11
	.byte	0x6f
	.long	0x1de
	.uleb128 0x3c
	.long	.LASF1259
	.byte	0x11
	.byte	0x9e
	.long	0x1de
	.uleb128 0x3c
	.long	.LASF1260
	.byte	0x11
	.byte	0xb7
	.long	0x1de
	.uleb128 0x3c
	.long	.LASF1261
	.byte	0x11
	.byte	0xf9
	.long	0x1de
	.uleb128 0x3d
	.long	.LASF1262
	.byte	0x11
	.value	0x14e
	.long	0x1de
	.uleb128 0x3d
	.long	.LASF1263
	.byte	0x11
	.value	0x17d
	.long	0x1de
	.uleb128 0x3d
	.long	.LASF1264
	.byte	0x11
	.value	0x1c8
	.long	0x1de
	.uleb128 0x3d
	.long	.LASF1265
	.byte	0x11
	.value	0x217
	.long	0x1de
	.uleb128 0x3d
	.long	.LASF1266
	.byte	0xc
	.value	0x1e4
	.long	0x1f18
	.uleb128 0x3d
	.long	.LASF1267
	.byte	0xc
	.value	0x1e7
	.long	0x1de
	.uleb128 0x3e
	.long	.LASF1268
	.byte	0x1
	.byte	0x94
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	stack_arg_under_construction
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1e
	.uleb128 0x4
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF849:
	.string	"TI_UV8HI_TYPE"
.LASF301:
	.string	"REG_BR_PROB"
.LASF854:
	.string	"TI_UV16QI_TYPE"
.LASF331:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF744:
	.string	"profile_label_no"
.LASF274:
	.string	"rtstr"
.LASF869:
	.string	"itk_unsigned_char"
.LASF422:
	.string	"WITH_CLEANUP_EXPR"
.LASF412:
	.string	"VTABLE_REF"
.LASF1240:
	.string	"ix86_preferred_stack_boundary"
.LASF318:
	.string	"NOTE_INSN_DELETED"
.LASF1073:
	.string	"TV_DBR_SCHED"
.LASF1182:
	.string	"before_call"
.LASF570:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF1261:
	.string	"flag_defer_pop"
.LASF200:
	.string	"UMOD"
.LASF254:
	.string	"min_align"
.LASF499:
	.string	"POSTINCREMENT_EXPR"
.LASF520:
	.string	"BUILT_IN_FABSF"
.LASF435:
	.string	"FLOOR_MOD_EXPR"
.LASF1123:
	.string	"args_so_far"
.LASF936:
	.string	"LTI_nesf2"
.LASF1186:
	.string	"combine_pending_stack_adjustment_and_call"
.LASF959:
	.string	"LTI_getf2"
.LASF976:
	.string	"LTI_fixsfdi"
.LASF1136:
	.string	"flags_from_decl_or_type"
.LASF1008:
	.string	"first"
.LASF1066:
	.string	"TV_RELOAD_CSE_REGS"
.LASF1107:
	.string	"local"
.LASF861:
	.string	"TI_V2SI_TYPE"
.LASF738:
	.string	"inlinable"
.LASF770:
	.string	"uses_const_pool"
.LASF1043:
	.string	"TV_CLEANUP_CFG"
.LASF1083:
	.string	"TV_REST_OF_COMPILATION"
.LASF822:
	.string	"TI_UINTSI_TYPE"
.LASF241:
	.string	"CONSTANT_P_RTX"
.LASF670:
	.string	"tree_type"
.LASF452:
	.string	"RROTATE_EXPR"
.LASF488:
	.string	"ADDR_EXPR"
.LASF978:
	.string	"LTI_fixdfsi"
.LASF947:
	.string	"LTI_ledf2"
.LASF997:
	.string	"LTI_fixunstfdi"
.LASF1006:
	.string	"next"
.LASF26:
	.string	"block"
.LASF968:
	.string	"LTI_floattidf"
.LASF879:
	.string	"_Bool"
.LASF273:
	.string	"rtuint"
.LASF798:
	.string	"pure_flag"
.LASF277:
	.string	"rt_cselib"
.LASF1114:
	.string	"static_chain_value"
.LASF144:
	.string	"DEFINE_PEEPHOLE2"
.LASF618:
	.string	"readonly_flag"
.LASF12:
	.string	"rtvec_def"
.LASF743:
	.string	"inl_max_label_num"
.LASF477:
	.string	"IN_EXPR"
.LASF204:
	.string	"LSHIFTRT"
.LASF16:
	.string	"common"
.LASF940:
	.string	"LTI_lesf2"
.LASF604:
	.string	"BUILT_IN_EH_RETURN"
.LASF138:
	.string	"MATCH_PAR_DUP"
.LASF1271:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF980:
	.string	"LTI_fixdfti"
.LASF199:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF821:
	.string	"TI_UINTHI_TYPE"
.LASF1179:
	.string	"ignore"
.LASF460:
	.string	"TRUTH_AND_EXPR"
.LASF948:
	.string	"LTI_unorddf2"
.LASF760:
	.string	"contains_functions"
.LASF543:
	.string	"BUILT_IN_STRCPY"
.LASF1253:
	.string	"global_trees"
.LASF614:
	.string	"side_effects_flag"
.LASF132:
	.string	"MATCH_OPERAND"
.LASF1096:
	.string	"slot_offset"
.LASF841:
	.string	"TI_VOID_TYPE"
.LASF606:
	.string	"BUILT_IN_VARARGS_START"
.LASF647:
	.string	"imag"
.LASF1195:
	.string	"normal_call_insns"
.LASF937:
	.string	"LTI_gtsf2"
.LASF504:
	.string	"LABEL_EXPR"
.LASF221:
	.string	"UNLE"
.LASF1251:
	.string	"static_chain_rtx"
.LASF259:
	.string	"max_after_base"
.LASF646:
	.string	"real"
.LASF1226:
	.string	"mem_value"
.LASF828:
	.string	"TI_NULL_POINTER"
.LASF222:
	.string	"UNLT"
.LASF1048:
	.string	"TV_PARSE"
.LASF384:
	.string	"FILE_TYPE"
.LASF668:
	.string	"fragment_chain"
.LASF642:
	.string	"tree_string"
.LASF468:
	.string	"EQ_EXPR"
.LASF676:
	.string	"no_force_blk_flag"
.LASF771:
	.string	"uses_pic_offset_table"
.LASF667:
	.string	"fragment_origin"
.LASF1034:
	.string	"initial_value_struct"
.LASF857:
	.string	"TI_V4SI_TYPE"
.LASF1084:
	.string	"TIMEVAR_LAST"
.LASF583:
	.string	"BUILT_IN_FWRITE"
.LASF1055:
	.string	"TV_LOOP"
.LASF1223:
	.string	"argnum"
.LASF41:
	.string	"overflow_arg_area"
.LASF1122:
	.string	"ecf_flags"
.LASF1099:
	.string	"save_area"
.LASF84:
	.string	"CTImode"
.LASF624:
	.string	"static_flag"
.LASF462:
	.string	"TRUTH_XOR_EXPR"
.LASF789:
	.string	"static_dtor_flag"
.LASF643:
	.string	"length"
.LASF424:
	.string	"PLACEHOLDER_EXPR"
.LASF1207:
	.string	"old_stack_allocated"
.LASF695:
	.string	"lang_type"
.LASF42:
	.string	"reg_save_area"
.LASF457:
	.string	"BIT_NOT_EXPR"
.LASF1131:
	.string	"special_function_p"
.LASF956:
	.string	"LTI_eqtf2"
.LASF625:
	.string	"public_flag"
.LASF443:
	.string	"FLOAT_EXPR"
.LASF1139:
	.string	"num_actuals"
.LASF780:
	.string	"inline_flag"
.LASF831:
	.string	"TI_BITSIZE_ZERO"
.LASF402:
	.string	"PARM_DECL"
.LASF1218:
	.string	"orgfun"
.LASF82:
	.string	"CSImode"
.LASF562:
	.string	"BUILT_IN_COSL"
.LASF243:
	.string	"VEC_MERGE"
.LASF741:
	.string	"original_decl_initial"
.LASF493:
	.string	"CONJ_EXPR"
.LASF1199:
	.string	"pass"
.LASF176:
	.string	"RETURN"
.LASF533:
	.string	"BUILT_IN_BZERO"
.LASF509:
	.string	"LABELED_BLOCK_EXPR"
.LASF1069:
	.string	"TV_PEEPHOLE2"
.LASF566:
	.string	"BUILT_IN_ARGS_INFO"
.LASF943:
	.string	"LTI_nedf2"
.LASF14:
	.string	"elem"
.LASF119:
	.string	"MODE_FLOAT"
.LASF539:
	.string	"BUILT_IN_MEMCMP"
.LASF581:
	.string	"BUILT_IN_FPUTC"
.LASF573:
	.string	"BUILT_IN_RETURN"
.LASF621:
	.string	"unused_0"
.LASF637:
	.string	"unused_1"
.LASF819:
	.string	"TI_INTTI_TYPE"
.LASF582:
	.string	"BUILT_IN_FPUTS"
.LASF510:
	.string	"EXIT_BLOCK_EXPR"
.LASF953:
	.string	"LTI_ltxf2"
.LASF263:
	.string	"alias"
.LASF260:
	.string	"offset_unsigned"
.LASF88:
	.string	"V2SImode"
.LASF1081:
	.string	"TV_FINAL"
.LASF588:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF767:
	.string	"stdarg"
.LASF728:
	.string	"x_trampoline_list"
.LASF1216:
	.string	"emit_library_call_value_1"
.LASF957:
	.string	"LTI_netf2"
.LASF381:
	.string	"OFFSET_TYPE"
.LASF838:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF508:
	.string	"LOOP_EXPR"
.LASF163:
	.string	"CODE_LABEL"
.LASF589:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF83:
	.string	"CDImode"
.LASF169:
	.string	"UNSPEC"
.LASF500:
	.string	"VA_ARG_EXPR"
.LASF555:
	.string	"BUILT_IN_SIN"
.LASF162:
	.string	"BARRIER"
.LASF844:
	.string	"TI_PTRDIFF_TYPE"
.LASF324:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF165:
	.string	"COND_EXEC"
.LASF179:
	.string	"CONST_INT"
.LASF1094:
	.string	"partial"
.LASF175:
	.string	"CALL"
.LASF1191:
	.string	"check_sibcall_argument_overlap"
.LASF889:
	.string	"EXPAND_NORMAL"
.LASF35:
	.string	"maybe_vaarg"
.LASF749:
	.string	"epilogue_delay_list"
.LASF800:
	.string	"uninlinable"
.LASF417:
	.string	"TARGET_EXPR"
.LASF1058:
	.string	"TV_FLOW"
.LASF90:
	.string	"V4QImode"
.LASF154:
	.string	"ATTR"
.LASF602:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF1224:
	.string	"count"
.LASF275:
	.string	"rttype"
.LASF1245:
	.string	"rtx_format"
.LASF924:
	.string	"LTI_setjmp"
.LASF348:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF671:
	.string	"values"
.LASF639:
	.string	"tree_int_cst"
.LASF1169:
	.string	"copy_to_evaluate_size"
.LASF558:
	.string	"BUILT_IN_SINF"
.LASF89:
	.string	"V2DImode"
.LASF718:
	.string	"x_return_label"
.LASF561:
	.string	"BUILT_IN_SINL"
.LASF355:
	.string	"LCT_CONST"
.LASF960:
	.string	"LTI_lttf2"
.LASF438:
	.string	"EXACT_DIV_EXPR"
.LASF268:
	.string	"mem_attrs"
.LASF295:
	.string	"REG_UNUSED"
.LASF147:
	.string	"DEFINE_DELAY"
.LASF197:
	.string	"MINUS"
.LASF725:
	.string	"x_clobber_return_insn"
.LASF909:
	.string	"LTI_truncdfsf2"
.LASF475:
	.string	"UNGE_EXPR"
.LASF38:
	.string	"__va_list_tag"
.LASF538:
	.string	"BUILT_IN_MEMCPY"
.LASF1166:
	.string	"precompute_arguments"
.LASF405:
	.string	"NAMESPACE_DECL"
.LASF1211:
	.string	"insns"
.LASF187:
	.string	"STRICT_LOW_PART"
.LASF958:
	.string	"LTI_gttf2"
.LASF1022:
	.string	"x_regno_reg_rtx"
.LASF129:
	.string	"INCLUDE"
.LASF344:
	.string	"GR_FRAME_POINTER"
.LASF613:
	.string	"chain"
.LASF225:
	.string	"ZERO_EXTEND"
.LASF1082:
	.string	"TV_SYMOUT"
.LASF567:
	.string	"BUILT_IN_CONSTANT_P"
.LASF228:
	.string	"FLOAT_TRUNCATE"
.LASF1029:
	.string	"x_forced_labels"
.LASF593:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF599:
	.string	"BUILT_IN_DWARF_CFA"
.LASF390:
	.string	"FUNCTION_TYPE"
.LASF774:
	.string	"tree_decl"
.LASF39:
	.string	"gp_offset"
.LASF1163:
	.string	"compute_argument_block_size"
.LASF341:
	.string	"GR_PC"
.LASF1212:
	.string	"needed"
.LASF99:
	.string	"V2SFmode"
.LASF1036:
	.string	"machine_function"
.LASF229:
	.string	"FLOAT"
.LASF946:
	.string	"LTI_ltdf2"
.LASF307:
	.string	"REG_EH_CONTEXT"
.LASF115:
	.string	"machine_mode"
.LASF1109:
	.string	"funexp"
.LASF1078:
	.string	"TV_SSA_CCP"
.LASF1170:
	.string	"compute_argument_addresses"
.LASF389:
	.string	"QUAL_UNION_TYPE"
.LASF280:
	.string	"rtmem"
.LASF737:
	.string	"fixup_var_refs_queue"
.LASF238:
	.string	"RANGE_REG"
.LASF278:
	.string	"rtbit"
.LASF365:
	.string	"sibcall_use_sibcall"
.LASF505:
	.string	"GOTO_EXPR"
.LASF3:
	.string	"call"
.LASF61:
	.string	"TImode"
.LASF1103:
	.string	"which"
.LASF214:
	.string	"PRE_MODIFY"
.LASF358:
	.string	"LCT_PURE_MAKE_BLOCK"
.LASF752:
	.string	"returns_pointer"
.LASF451:
	.string	"LROTATE_EXPR"
.LASF640:
	.string	"realvaluetype"
.LASF1249:
	.string	"global_rtl"
.LASF227:
	.string	"FLOAT_EXTEND"
.LASF536:
	.string	"BUILT_IN_INDEX"
.LASF410:
	.string	"ARRAY_REF"
.LASF1124:
	.string	"rounded_stack_size_rtx"
.LASF917:
	.string	"LTI_bcopy"
.LASF482:
	.string	"NOP_EXPR"
.LASF698:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF319:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF59:
	.string	"SImode"
.LASF171:
	.string	"ADDR_VEC"
.LASF1032:
	.string	"stmt_status"
.LASF100:
	.string	"V2DFmode"
.LASF436:
	.string	"ROUND_MOD_EXPR"
.LASF1196:
	.string	"tail_call_insns"
.LASF1247:
	.string	"rtx_equal_function_value_matters"
.LASF253:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF627:
	.string	"protected_flag"
.LASF1149:
	.string	"restore_fixed_argument_area"
.LASF24:
	.string	"type"
.LASF34:
	.string	"sse_regno"
.LASF745:
	.string	"machine"
.LASF432:
	.string	"ROUND_DIV_EXPR"
.LASF190:
	.string	"SYMBOL_REF"
.LASF317:
	.string	"NOTE_INSN_BIAS"
.LASF1243:
	.string	"word_mode"
.LASF87:
	.string	"V2HImode"
.LASF812:
	.string	"lang_decl"
.LASF447:
	.string	"ABS_EXPR"
.LASF339:
	.string	"NOTE_INSN_MAX"
.LASF1027:
	.string	"x_saveregs_value"
.LASF934:
	.string	"LTI_unordhf2"
.LASF662:
	.string	"block_num"
.LASF143:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF195:
	.string	"COMPARE"
.LASF223:
	.string	"LTGT"
.LASF656:
	.string	"tree_exp"
.LASF1181:
	.string	"temp"
.LASF1005:
	.string	"unsignedp"
.LASF235:
	.string	"HIGH"
.LASF192:
	.string	"QUEUED"
.LASF1171:
	.string	"arg_reg"
.LASF1:
	.string	"mode"
.LASF60:
	.string	"DImode"
.LASF459:
	.string	"TRUTH_ORIF_EXPR"
.LASF516:
	.string	"BUILT_IN_ALLOCA"
.LASF1088:
	.string	"elms"
.LASF1049:
	.string	"TV_EXPAND"
.LASF711:
	.string	"hard_reg_initial_vals"
.LASF37:
	.string	"__gnuc_va_list"
.LASF907:
	.string	"LTI_extenddfxf2"
.LASF875:
	.string	"itk_unsigned_long"
.LASF95:
	.string	"V8HImode"
.LASF941:
	.string	"LTI_unordsf2"
.LASF213:
	.string	"POST_INC"
.LASF421:
	.string	"METHOD_CALL_EXPR"
.LASF824:
	.string	"TI_UINTTI_TYPE"
.LASF921:
	.string	"LTI_bzero"
.LASF788:
	.string	"static_ctor_flag"
.LASF895:
	.string	"direction"
.LASF73:
	.string	"TFmode"
.LASF1044:
	.string	"TV_LIFE"
.LASF1137:
	.string	"emit_call_1"
.LASF387:
	.string	"RECORD_TYPE"
.LASF48:
	.string	"unsigned char"
.LASF1268:
	.string	"stack_arg_under_construction"
.LASF619:
	.string	"unsigned_flag"
.LASF802:
	.string	"arguments"
.LASF710:
	.string	"cannot_inline"
.LASF1242:
	.string	"mode_bitsize"
.LASF843:
	.string	"TI_CONST_PTR_TYPE"
.LASF1038:
	.string	"float"
.LASF876:
	.string	"itk_long_long"
.LASF56:
	.string	"BImode"
.LASF211:
	.string	"PRE_INC"
.LASF294:
	.string	"REG_NO_CONFLICT"
.LASF70:
	.string	"SFmode"
.LASF1040:
	.string	"TV_GC"
.LASF699:
	.string	"emit"
.LASF1076:
	.string	"TV_REG_STACK"
.LASF679:
	.string	"packed_flag"
.LASF453:
	.string	"BIT_IOR_EXPR"
.LASF517:
	.string	"BUILT_IN_ABS"
.LASF399:
	.string	"CONST_DECL"
.LASF641:
	.string	"tree_real_cst"
.LASF975:
	.string	"LTI_fixsfsi"
.LASF903:
	.string	"libfunc_index"
.LASF404:
	.string	"FIELD_DECL"
.LASF160:
	.string	"JUMP_INSN"
.LASF364:
	.string	"sibcall_use_tail_recursion"
.LASF1079:
	.string	"TV_SSA_DCE"
.LASF1178:
	.string	"target"
.LASF871:
	.string	"itk_unsigned_short"
.LASF361:
	.string	"LCT_ALWAYS_RETURN"
.LASF527:
	.string	"BUILT_IN_CREAL"
.LASF1113:
	.string	"sibcallp"
.LASF123:
	.string	"MODE_COMPLEX_FLOAT"
.LASF279:
	.string	"rttree"
.LASF779:
	.string	"regdecl_flag"
.LASF939:
	.string	"LTI_ltsf2"
.LASF1259:
	.string	"warn_aggregate_return"
.LASF523:
	.string	"BUILT_IN_IMAXABS"
.LASF378:
	.string	"BOOLEAN_TYPE"
.LASF996:
	.string	"LTI_fixunstfsi"
.LASF316:
	.string	"insn_note"
.LASF965:
	.string	"LTI_floattisf"
.LASF335:
	.string	"NOTE_INSN_RANGE_END"
.LASF142:
	.string	"DEFINE_SPLIT"
.LASF759:
	.string	"has_nonlocal_goto"
.LASF773:
	.string	"arg_pointer_save_area_init"
.LASF592:
	.string	"BUILT_IN_ISGREATER"
.LASF576:
	.string	"BUILT_IN_TRAP"
.LASF1213:
	.string	"push_size"
.LASF1230:
	.string	"store_one_arg"
.LASF181:
	.string	"CONST_VECTOR"
.LASF485:
	.string	"SAVE_EXPR"
.LASF139:
	.string	"MATCH_INSN"
.LASF638:
	.string	"high"
.LASF979:
	.string	"LTI_fixdfdi"
.LASF860:
	.string	"TI_V4HI_TYPE"
.LASF719:
	.string	"x_save_expr_regs"
.LASF1147:
	.string	"save_mode"
.LASF71:
	.string	"DFmode"
.LASF46:
	.string	"size_t"
.LASF923:
	.string	"LTI_eh_personality"
.LASF173:
	.string	"PREFETCH"
.LASF702:
	.string	"pops_args"
.LASF65:
	.string	"PSImode"
.LASF918:
	.string	"LTI_memcmp"
.LASF721:
	.string	"x_rtl_expr_chain"
.LASF542:
	.string	"BUILT_IN_STRNCAT"
.LASF974:
	.string	"LTI_floattitf"
.LASF237:
	.string	"RANGE_INFO"
.LASF882:
	.string	"SSIZETYPE"
.LASF270:
	.string	"rtunion_def"
.LASF397:
	.string	"FUNCTION_DECL"
.LASF893:
	.string	"EXPAND_WRITE"
.LASF595:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF153:
	.string	"DEFINE_ATTR"
.LASF883:
	.string	"USIZETYPE"
.LASF418:
	.string	"COND_EXPR"
.LASF155:
	.string	"SET_ATTR"
.LASF79:
	.string	"TCmode"
.LASF713:
	.string	"x_nonlocal_labels"
.LASF1232:
	.string	"pval"
.LASF952:
	.string	"LTI_gexf2"
.LASF439:
	.string	"FIX_TRUNC_EXPR"
.LASF230:
	.string	"UNSIGNED_FLOAT"
.LASF306:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF281:
	.string	"cselib_val_struct"
.LASF338:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF375:
	.string	"COMPLEX_TYPE"
.LASF202:
	.string	"ROTATE"
.LASF991:
	.string	"LTI_fixunsdfdi"
.LASF577:
	.string	"BUILT_IN_PREFETCH"
.LASF449:
	.string	"LSHIFT_EXPR"
.LASF967:
	.string	"LTI_floatdidf"
.LASF226:
	.string	"TRUNCATE"
.LASF299:
	.string	"REG_DEP_ANTI"
.LASF1203:
	.string	"is_integrable"
.LASF76:
	.string	"SCmode"
.LASF988:
	.string	"LTI_fixunssfdi"
.LASF1192:
	.string	"expand_call"
.LASF1059:
	.string	"TV_COMBINE"
.LASF1001:
	.string	"LTI_MAX"
.LASF914:
	.string	"LTI_abort"
.LASF349:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF866:
	.string	"integer_type_kind"
.LASF44:
	.string	"va_list"
.LASF320:
	.string	"NOTE_INSN_BLOCK_END"
.LASF392:
	.string	"INTEGER_CST"
.LASF400:
	.string	"TYPE_DECL"
.LASF835:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF742:
	.string	"inl_last_parm_insn"
.LASF329:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1246:
	.string	"rtx_class"
.LASF690:
	.string	"main_variant"
.LASF1130:
	.string	"link"
.LASF1132:
	.string	"flags"
.LASF496:
	.string	"PREDECREMENT_EXPR"
.LASF827:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF962:
	.string	"LTI_unordtf2"
.LASF840:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF130:
	.string	"EXPR_LIST"
.LASF157:
	.string	"EQ_ATTR"
.LASF837:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF109:
	.string	"CCGOCmode"
.LASF188:
	.string	"CONCAT"
.LASF553:
	.string	"BUILT_IN_STRRCHR"
.LASF1264:
	.string	"flag_pic"
.LASF1150:
	.string	"store_unaligned_arguments_into_pseudos"
.LASF856:
	.string	"TI_V16SF_TYPE"
.LASF256:
	.string	"min_after_vec"
.LASF836:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF1209:
	.string	"save_stack_pointer_delta"
.LASF194:
	.string	"COND"
.LASF1085:
	.string	"simple_bitmap_def"
.LASF376:
	.string	"VECTOR_TYPE"
.LASF120:
	.string	"MODE_PARTIAL_INT"
.LASF729:
	.string	"x_parm_birth_insn"
.LASF942:
	.string	"LTI_eqdf2"
.LASF915:
	.string	"LTI_memcpy"
.LASF731:
	.string	"x_max_parm_reg"
.LASF1000:
	.string	"LTI_profile_function_exit"
.LASF534:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF693:
	.string	"alias_set"
.LASF77:
	.string	"DCmode"
.LASF145:
	.string	"DEFINE_COMBINE"
.LASF1269:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF456:
	.string	"BIT_ANDTC_EXPR"
.LASF842:
	.string	"TI_PTR_TYPE"
.LASF723:
	.string	"x_tail_recursion_reentry"
.LASF22:
	.string	"identifier"
.LASF203:
	.string	"ASHIFTRT"
.LASF971:
	.string	"LTI_floattixf"
.LASF107:
	.string	"CCmode"
.LASF605:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF597:
	.string	"BUILT_IN_ISUNORDERED"
.LASF661:
	.string	"abstract_flag"
.LASF1265:
	.string	"flag_stack_check"
.LASF322:
	.string	"NOTE_INSN_LOOP_END"
.LASF1141:
	.string	"save_fixed_argument_area"
.LASF105:
	.string	"V16SFmode"
.LASF945:
	.string	"LTI_gedf2"
.LASF804:
	.string	"initial"
.LASF1075:
	.string	"TV_SHORTEN_BRANCH"
.LASF458:
	.string	"TRUTH_ANDIF_EXPR"
.LASF1258:
	.string	"warn_inline"
.LASF336:
	.string	"NOTE_INSN_LIVE"
.LASF150:
	.string	"DEFINE_COND_EXEC"
.LASF913:
	.string	"LTI_trunctfdf2"
.LASF881:
	.string	"SIZETYPE"
.LASF1229:
	.string	"emit_library_call_value"
.LASF1173:
	.string	"addr"
.LASF1002:
	.string	"var_refs_queue"
.LASF1026:
	.string	"x_stack_pointer_delta"
.LASF463:
	.string	"TRUTH_NOT_EXPR"
.LASF146:
	.string	"DEFINE_EXPAND"
.LASF444:
	.string	"NEGATE_EXPR"
.LASF762:
	.string	"is_thunk"
.LASF1225:
	.string	"argvec"
.LASF1144:
	.string	"low_to_save"
.LASF1159:
	.string	"must_preallocate"
.LASF96:
	.string	"V8SImode"
.LASF715:
	.string	"x_nonlocal_goto_handler_labels"
.LASF159:
	.string	"INSN"
.LASF272:
	.string	"rtint"
.LASF607:
	.string	"BUILT_IN_STDARG_START"
.LASF794:
	.string	"comdat_flag"
.LASF818:
	.string	"TI_INTDI_TYPE"
.LASF1227:
	.string	"lower_bound"
.LASF1219:
	.string	"fn_type"
.LASF189:
	.string	"LABEL_REF"
.LASF823:
	.string	"TI_UINTDI_TYPE"
.LASF298:
	.string	"REG_LABEL"
.LASF833:
	.string	"TI_BITSIZE_UNIT"
.LASF296:
	.string	"REG_CC_SETTER"
.LASF1108:
	.string	"subblock"
.LASF1045:
	.string	"TV_LIFE_UPDATE"
.LASF286:
	.string	"REG_DEAD"
.LASF326:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF1035:
	.string	"temp_slot"
.LASF479:
	.string	"CARD_EXPR"
.LASF289:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF17:
	.string	"int_cst"
.LASF1105:
	.string	"calls_function_1"
.LASF839:
	.string	"TI_DOUBLE_TYPE"
.LASF1074:
	.string	"TV_REORDER_BLOCKS"
.LASF575:
	.string	"BUILT_IN_LONGJMP"
.LASF648:
	.string	"tree_vector"
.LASF383:
	.string	"METHOD_TYPE"
.LASF108:
	.string	"CCGCmode"
.LASF360:
	.string	"LCT_THROW"
.LASF25:
	.string	"list"
.LASF481:
	.string	"CONVERT_EXPR"
.LASF185:
	.string	"SCRATCH"
.LASF94:
	.string	"V8QImode"
.LASF433:
	.string	"TRUNC_MOD_EXPR"
.LASF97:
	.string	"V8DImode"
.LASF126:
	.string	"MAX_MODE_CLASS"
.LASF1143:
	.string	"argblock"
.LASF877:
	.string	"itk_unsigned_long_long"
.LASF1266:
	.string	"cfun"
.LASF429:
	.string	"TRUNC_DIV_EXPR"
.LASF224:
	.string	"SIGN_EXTEND"
.LASF1128:
	.string	"struct_value_size_rtx"
.LASF754:
	.string	"calls_setjmp"
.LASF897:
	.string	"upward"
.LASF486:
	.string	"UNSAVE_EXPR"
.LASF1167:
	.string	"finalize_must_preallocate"
.LASF363:
	.string	"sibcall_use_normal"
.LASF982:
	.string	"LTI_fixxfdi"
.LASF428:
	.string	"MULT_EXPR"
.LASF654:
	.string	"value"
.LASF1248:
	.string	"const_int_rtx"
.LASF246:
	.string	"VEC_DUPLICATE"
.LASF467:
	.string	"GE_EXPR"
.LASF716:
	.string	"x_nonlocal_goto_stack_level"
.LASF367:
	.string	"ERROR_MARK"
.LASF1237:
	.string	"stored_args_map"
.LASF709:
	.string	"internal_arg_pointer"
.LASF1068:
	.string	"TV_IFCVT2"
.LASF549:
	.string	"BUILT_IN_STRPBRK"
.LASF489:
	.string	"REFERENCE_EXPR"
.LASF264:
	.string	"expr"
.LASF434:
	.string	"CEIL_MOD_EXPR"
.LASF332:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF669:
	.string	"address"
.LASF1238:
	.string	"calls_function_save_exprs"
.LASF629:
	.string	"deprecated_flag"
.LASF578:
	.string	"BUILT_IN_PUTCHAR"
.LASF899:
	.string	"save_level"
.LASF1054:
	.string	"TV_GCSE"
.LASF714:
	.string	"x_nonlocal_goto_handler_slots"
.LASF103:
	.string	"V8SFmode"
.LASF430:
	.string	"CEIL_DIV_EXPR"
.LASF1153:
	.string	"bitsize"
.LASF1184:
	.string	"insn"
.LASF568:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF1174:
	.string	"rtx_for_function_call"
.LASF297:
	.string	"REG_CC_USER"
.LASF168:
	.string	"ASM_OPERANDS"
.LASF807:
	.string	"live_range_rtl"
.LASF734:
	.string	"x_temp_slot_level"
.LASF687:
	.string	"minval"
.LASF626:
	.string	"private_flag"
.LASF732:
	.string	"x_parm_reg_stack_loc"
.LASF111:
	.string	"CCZmode"
.LASF1155:
	.string	"n_named_args"
.LASF323:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF1200:
	.string	"structure_value_addr_parm"
.LASF886:
	.string	"UBITSIZETYPE"
.LASF431:
	.string	"FLOOR_DIV_EXPR"
.LASF369:
	.string	"TREE_LIST"
.LASF902:
	.string	"SAVE_NONLOCAL"
.LASF927:
	.string	"LTI_unwind_sjlj_unregister"
.LASF815:
	.string	"TI_INTQI_TYPE"
.LASF666:
	.string	"abstract_origin"
.LASF1172:
	.string	"arg_offset"
.LASF949:
	.string	"LTI_eqxf2"
.LASF396:
	.string	"STRING_CST"
.LASF464:
	.string	"LT_EXPR"
.LASF700:
	.string	"varasm"
.LASF312:
	.string	"REG_NON_LOCAL_GOTO"
.LASF894:
	.string	"constant"
.LASF172:
	.string	"ADDR_DIFF_VEC"
.LASF1091:
	.string	"tree_value"
.LASF454:
	.string	"BIT_XOR_EXPR"
.LASF512:
	.string	"SWITCH_EXPR"
.LASF461:
	.string	"TRUTH_OR_EXPR"
.LASF1175:
	.string	"funaddr"
.LASF234:
	.string	"ZERO_EXTRACT"
.LASF167:
	.string	"ASM_INPUT"
.LASF503:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF650:
	.string	"ht_identifier"
.LASF217:
	.string	"ORDERED"
.LASF104:
	.string	"V8DFmode"
.LASF1004:
	.string	"promoted_mode"
.LASF805:
	.string	"assembler_name"
.LASF1145:
	.string	"high_to_save"
.LASF445:
	.string	"MIN_EXPR"
.LASF1093:
	.string	"tail_call_reg"
.LASF848:
	.string	"TI_UV4SI_TYPE"
.LASF961:
	.string	"LTI_letf2"
.LASF677:
	.string	"needs_constructing_flag"
.LASF231:
	.string	"UNSIGNED_FIX"
.LASF440:
	.string	"FIX_CEIL_EXPR"
.LASF751:
	.string	"returns_pcc_struct"
.LASF546:
	.string	"BUILT_IN_STRNCMP"
.LASF1256:
	.string	"current_function_decl"
.LASF645:
	.string	"tree_complex"
.LASF32:
	.string	"sse_words"
.LASF1086:
	.string	"n_bits"
.LASF112:
	.string	"CCFPmode"
.LASF465:
	.string	"LE_EXPR"
.LASF652:
	.string	"tree_list"
.LASF1189:
	.string	"unadjusted_alignment"
.LASF796:
	.string	"no_limit_stack"
.LASF803:
	.string	"result"
.LASF985:
	.string	"LTI_fixtfdi"
.LASF1188:
	.string	"adjustment"
.LASF1176:
	.string	"load_register_parameters"
.LASF686:
	.string	"name"
.LASF131:
	.string	"INSN_LIST"
.LASF239:
	.string	"RANGE_VAR"
.LASF1089:
	.string	"sbitmap"
.LASF118:
	.string	"MODE_INT"
.LASF18:
	.string	"real_cst"
.LASF446:
	.string	"MAX_EXPR"
.LASF706:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF659:
	.string	"tree_block"
.LASF31:
	.string	"regno"
.LASF829:
	.string	"TI_SIZE_ZERO"
.LASF1023:
	.string	"expr_status"
.LASF1051:
	.string	"TV_INTEGRATION"
.LASF664:
	.string	"subblocks"
.LASF758:
	.string	"has_nonlocal_label"
.LASF870:
	.string	"itk_short"
.LASF40:
	.string	"fp_offset"
.LASF540:
	.string	"BUILT_IN_MEMSET"
.LASF240:
	.string	"RANGE_LIVE"
.LASF1024:
	.string	"x_pending_stack_adjust"
.LASF437:
	.string	"RDIV_EXPR"
.LASF703:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF1110:
	.string	"fndecl"
.LASF782:
	.string	"virtual_flag"
.LASF681:
	.string	"pointer_depth"
.LASF644:
	.string	"pointer"
.LASF398:
	.string	"LABEL_DECL"
.LASF901:
	.string	"SAVE_FUNCTION"
.LASF1183:
	.string	"first_insn"
.LASF611:
	.string	"END_BUILTINS"
.LASF276:
	.string	"rt_addr_diff_vec_flags"
.LASF884:
	.string	"BITSIZETYPE"
.LASF346:
	.string	"GR_ARG_POINTER"
.LASF1077:
	.string	"TV_TO_SSA"
.LASF450:
	.string	"RSHIFT_EXPR"
.LASF27:
	.string	"sizetype"
.LASF249:
	.string	"SS_MINUS"
.LASF394:
	.string	"COMPLEX_CST"
.LASF136:
	.string	"MATCH_PARALLEL"
.LASF92:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF1102:
	.string	"alignment_pad"
.LASF1067:
	.string	"TV_FLOW2"
.LASF612:
	.string	"tree_common"
.LASF288:
	.string	"REG_EQUIV"
.LASF691:
	.string	"binfo"
.LASF832:
	.string	"TI_BITSIZE_ONE"
.LASF49:
	.string	"short unsigned int"
.LASF50:
	.string	"signed char"
.LASF826:
	.string	"TI_INTEGER_ONE"
.LASF135:
	.string	"MATCH_OPERATOR"
.LASF1252:
	.string	"tree_code_type"
.LASF906:
	.string	"LTI_extendsftf2"
.LASF653:
	.string	"purpose"
.LASF730:
	.string	"x_last_parm_insn"
.LASF816:
	.string	"TI_INTHI_TYPE"
.LASF683:
	.string	"pointer_to"
.LASF966:
	.string	"LTI_floatsidf"
.LASF791:
	.string	"weak_flag"
.LASF808:
	.string	"saved_tree"
.LASF1016:
	.string	"x_cur_insn_uid"
.LASF655:
	.string	"tree_vec"
.LASF1030:
	.string	"x_pending_chain"
.LASF775:
	.string	"filename"
.LASF251:
	.string	"SS_TRUNCATE"
.LASF498:
	.string	"POSTDECREMENT_EXPR"
.LASF302:
	.string	"REG_EXEC_COUNT"
.LASF1220:
	.string	"outmode"
.LASF586:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF932:
	.string	"LTI_lthf2"
.LASF739:
	.string	"no_debugging_symbols"
.LASF990:
	.string	"LTI_fixunsdfsi"
.LASF590:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF964:
	.string	"LTI_floatdisf"
.LASF255:
	.string	"base_after_vec"
.LASF140:
	.string	"DEFINE_INSN"
.LASF1057:
	.string	"TV_BRANCH_PROB"
.LASF865:
	.string	"TI_MAX"
.LASF93:
	.string	"V4DImode"
.LASF1206:
	.string	"old_stack_arg_under_construction"
.LASF623:
	.string	"nothrow_flag"
.LASF888:
	.string	"expand_modifier"
.LASF502:
	.string	"TRY_FINALLY_EXPR"
.LASF20:
	.string	"string"
.LASF347:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF466:
	.string	"GT_EXPR"
.LASF1095:
	.string	"pass_on_stack"
.LASF1018:
	.string	"x_last_filename"
.LASF300:
	.string	"REG_DEP_OUTPUT"
.LASF685:
	.string	"symtab"
.LASF992:
	.string	"LTI_fixunsdfti"
.LASF149:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF250:
	.string	"US_MINUS"
.LASF973:
	.string	"LTI_floatditf"
.LASF1194:
	.string	"tail_recursion_insns"
.LASF356:
	.string	"LCT_PURE"
.LASF850:
	.string	"TI_UV8QI_TYPE"
.LASF1198:
	.string	"try_tail_recursion"
.LASF708:
	.string	"return_rtx"
.LASF1185:
	.string	"adjust"
.LASF406:
	.string	"COMPONENT_REF"
.LASF233:
	.string	"SIGN_EXTRACT"
.LASF783:
	.string	"ignored_flag"
.LASF8:
	.string	"integrated"
.LASF427:
	.string	"MINUS_EXPR"
.LASF174:
	.string	"CLOBBER"
.LASF689:
	.string	"next_variant"
.LASF1017:
	.string	"x_last_linenum"
.LASF124:
	.string	"MODE_VECTOR_INT"
.LASF797:
	.string	"built_in_class"
.LASF66:
	.string	"PDImode"
.LASF304:
	.string	"REG_SAVE_AREA"
.LASF242:
	.string	"CALL_PLACEHOLDER"
.LASF697:
	.string	"function"
.LASF550:
	.string	"BUILT_IN_STRSPN"
.LASF101:
	.string	"V4SFmode"
.LASF414:
	.string	"COMPOUND_EXPR"
.LASF763:
	.string	"instrument_entry_exit"
.LASF820:
	.string	"TI_UINTQI_TYPE"
.LASF726:
	.string	"x_frame_offset"
.LASF569:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF672:
	.string	"size_unit"
.LASF585:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF196:
	.string	"PLUS"
.LASF1135:
	.string	"setjmp_call_p"
.LASF537:
	.string	"BUILT_IN_RINDEX"
.LASF944:
	.string	"LTI_gtdf2"
.LASF1047:
	.string	"TV_LEX"
.LASF212:
	.string	"POST_DEC"
.LASF58:
	.string	"HImode"
.LASF1214:
	.string	"before_arg"
.LASF284:
	.string	"rtunion"
.LASF325:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF122:
	.string	"MODE_COMPLEX_INT"
.LASF1031:
	.string	"eh_status"
.LASF514:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF1007:
	.string	"sequence_stack"
.LASF45:
	.string	"long int"
.LASF351:
	.string	"GR_VIRTUAL_CFA"
.LASF380:
	.string	"POINTER_TYPE"
.LASF448:
	.string	"FFS_EXPR"
.LASF290:
	.string	"REG_WAS_0"
.LASF372:
	.string	"VOID_TYPE"
.LASF898:
	.string	"downward"
.LASF1037:
	.string	"language_function"
.LASF484:
	.string	"VIEW_CONVERT_EXPR"
.LASF814:
	.string	"TI_ERROR_MARK"
.LASF311:
	.string	"REG_NORETURN"
.LASF72:
	.string	"XFmode"
.LASF753:
	.string	"needs_context"
.LASF310:
	.string	"REG_MAYBE_DEAD"
.LASF102:
	.string	"V4DFmode"
.LASF891:
	.string	"EXPAND_CONST_ADDRESS"
.LASF1116:
	.string	"stack_size"
.LASF4:
	.string	"unchanging"
.LASF786:
	.string	"defer_output"
.LASF862:
	.string	"TI_V2SF_TYPE"
.LASF1072:
	.string	"TV_MACH_DEP"
.LASF912:
	.string	"LTI_truncxfdf2"
.LASF285:
	.string	"reg_note"
.LASF757:
	.string	"calls_eh_return"
.LASF736:
	.string	"x_target_temp_slot_level"
.LASF1260:
	.string	"profile_arc_flag"
.LASF704:
	.string	"pretend_args_size"
.LASF692:
	.string	"context"
.LASF1257:
	.string	"optimize"
.LASF127:
	.string	"rtx_code"
.LASF36:
	.string	"CUMULATIVE_ARGS"
.LASF425:
	.string	"WITH_RECORD_EXPR"
.LASF1009:
	.string	"last"
.LASF813:
	.string	"tree_index"
.LASF970:
	.string	"LTI_floatdixf"
.LASF766:
	.string	"varargs"
.LASF930:
	.string	"LTI_gthf2"
.LASF1025:
	.string	"x_inhibit_defer_pop"
.LASF660:
	.string	"handler_block_flag"
.LASF799:
	.string	"non_addressable"
.LASF521:
	.string	"BUILT_IN_FABSL"
.LASF1052:
	.string	"TV_JUMP"
.LASF999:
	.string	"LTI_profile_function_entry"
.LASF1255:
	.string	"sizetype_tab"
.LASF601:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF768:
	.string	"x_whole_function_mode_p"
.LASF128:
	.string	"UNKNOWN"
.LASF170:
	.string	"UNSPEC_VOLATILE"
.LASF411:
	.string	"ARRAY_RANGE_REF"
.LASF887:
	.string	"TYPE_KIND_LAST"
.LASF548:
	.string	"BUILT_IN_STRSTR"
.LASF785:
	.string	"common_flag"
.LASF328:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF47:
	.string	"long unsigned int"
.LASF793:
	.string	"no_instrument_function_entry_exit"
.LASF620:
	.string	"asm_written_flag"
.LASF11:
	.string	"rtx_def"
.LASF1204:
	.string	"initial_highest_arg_in_use"
.LASF366:
	.string	"tree_code"
.LASF1053:
	.string	"TV_CSE"
.LASF68:
	.string	"HFmode"
.LASF584:
	.string	"BUILT_IN_FPRINTF"
.LASF615:
	.string	"constant_flag"
.LASF556:
	.string	"BUILT_IN_COS"
.LASF177:
	.string	"TRAP_IF"
.LASF1071:
	.string	"TV_SCHED2"
.LASF1062:
	.string	"TV_MODE_SWITCH"
.LASF628:
	.string	"bounded_flag"
.LASF403:
	.string	"RESULT_DECL"
.LASF501:
	.string	"TRY_CATCH_EXPR"
.LASF308:
	.string	"REG_EH_REGION"
.LASF855:
	.string	"TI_V4SF_TYPE"
.LASF354:
	.string	"LCT_NORMAL"
.LASF981:
	.string	"LTI_fixxfsi"
.LASF291:
	.string	"REG_RETVAL"
.LASF80:
	.string	"CQImode"
.LASF746:
	.string	"stack_alignment_needed"
.LASF52:
	.string	"char"
.LASF750:
	.string	"returns_struct"
.LASF911:
	.string	"LTI_trunctfsf2"
.LASF78:
	.string	"XCmode"
.LASF724:
	.string	"x_arg_pointer_save_area"
.LASF596:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF1262:
	.string	"flag_optimize_sibling_calls"
.LASF515:
	.string	"built_in_function"
.LASF416:
	.string	"INIT_EXPR"
.LASF483:
	.string	"NON_LVALUE_EXPR"
.LASF1177:
	.string	"try_to_integrate"
.LASF795:
	.string	"malloc_flag"
.LASF983:
	.string	"LTI_fixxfti"
.LASF1134:
	.string	"prepare_call_address"
.LASF748:
	.string	"language"
.LASF205:
	.string	"ROTATERT"
.LASF867:
	.string	"itk_char"
.LASF674:
	.string	"precision"
.LASF1202:
	.string	"adjusted_args_size"
.LASF191:
	.string	"ADDRESSOF"
.LASF1157:
	.string	"old_stack_level"
.LASF863:
	.string	"TI_V16QI_TYPE"
.LASF313:
	.string	"REG_SETJMP"
.LASF86:
	.string	"V2QImode"
.LASF925:
	.string	"LTI_longjmp"
.LASF506:
	.string	"RETURN_EXPR"
.LASF530:
	.string	"BUILT_IN_CIMAG"
.LASF571:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF1012:
	.string	"x_reg_rtx_no"
.LASF64:
	.string	"PHImode"
.LASF657:
	.string	"complexity"
.LASF1100:
	.string	"aligned_regs"
.LASF678:
	.string	"transparent_union_flag"
.LASF1003:
	.string	"modified"
.LASF1111:
	.string	"call_fusage"
.LASF1021:
	.string	"regno_decl"
.LASF880:
	.string	"size_type_kind"
.LASF1142:
	.string	"reg_parm_stack_space"
.LASF85:
	.string	"COImode"
.LASF210:
	.string	"PRE_DEC"
.LASF1205:
	.string	"initial_stack_usage_map"
.LASF920:
	.string	"LTI_memset"
.LASF327:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF345:
	.string	"GR_HARD_FRAME_POINTER"
.LASF1097:
	.string	"stack"
.LASF267:
	.string	"align"
.LASF598:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF756:
	.string	"calls_alloca"
.LASF1152:
	.string	"word"
.LASF834:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF735:
	.string	"x_var_temp_slot_level"
.LASF955:
	.string	"LTI_unordxf2"
.LASF117:
	.string	"MODE_RANDOM"
.LASF248:
	.string	"US_PLUS"
.LASF1254:
	.string	"integer_types"
.LASF1121:
	.string	"old_inhibit_defer_pop"
.LASF106:
	.string	"BLKmode"
.LASF75:
	.string	"HCmode"
.LASF419:
	.string	"BIND_EXPR"
.LASF491:
	.string	"FDESC_EXPR"
.LASF853:
	.string	"TI_UV2SF_TYPE"
.LASF426:
	.string	"PLUS_EXPR"
.LASF859:
	.string	"TI_V8QI_TYPE"
.LASF529:
	.string	"BUILT_IN_CREALL"
.LASF864:
	.string	"TI_MAIN_IDENTIFIER"
.LASF547:
	.string	"BUILT_IN_STRLEN"
.LASF388:
	.string	"UNION_TYPE"
.LASF636:
	.string	"lang_flag_6"
.LASF182:
	.string	"CONST_STRING"
.LASF245:
	.string	"VEC_CONCAT"
.LASF1233:
	.string	"excess"
.LASF266:
	.string	"size"
.LASF1098:
	.string	"stack_slot"
.LASF490:
	.string	"ENTRY_VALUE_EXPR"
.LASF565:
	.string	"BUILT_IN_NEXT_ARG"
.LASF257:
	.string	"max_after_vec"
.LASF694:
	.string	"lang_specific"
.LASF1270:
	.string	"calls.c"
.LASF303:
	.string	"REG_NOALIAS"
.LASF158:
	.string	"ATTR_FLAG"
.LASF892:
	.string	"EXPAND_INITIALIZER"
.LASF113:
	.string	"CCFPUmode"
.LASF1042:
	.string	"TV_CFG"
.LASF287:
	.string	"REG_INC"
.LASF148:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF951:
	.string	"LTI_gtxf2"
.LASF790:
	.string	"artificial_flag"
.LASF1236:
	.string	"highest_outgoing_arg_in_use"
.LASF727:
	.string	"x_context_display"
.LASF152:
	.string	"ADDRESS"
.LASF471:
	.string	"ORDERED_EXPR"
.LASF931:
	.string	"LTI_gehf2"
.LASF1041:
	.string	"TV_DUMP"
.LASF609:
	.string	"BUILT_IN_VA_COPY"
.LASF1146:
	.string	"num_to_save"
.LASF740:
	.string	"original_arg_vector"
.LASF21:
	.string	"complex"
.LASF900:
	.string	"SAVE_BLOCK"
.LASF986:
	.string	"LTI_fixtfti"
.LASF1120:
	.string	"valreg"
.LASF1158:
	.string	"old_pending_adj"
.LASF772:
	.string	"uses_eh_lsda"
.LASF524:
	.string	"BUILT_IN_CONJ"
.LASF408:
	.string	"INDIRECT_REF"
.LASF382:
	.string	"REFERENCE_TYPE"
.LASF1064:
	.string	"TV_LOCAL_ALLOC"
.LASF282:
	.string	"bitmap_head_def"
.LASF665:
	.string	"supercontext"
.LASF610:
	.string	"BUILT_IN_EXPECT"
.LASF1063:
	.string	"TV_SCHED"
.LASF688:
	.string	"maxval"
.LASF470:
	.string	"UNORDERED_EXPR"
.LASF938:
	.string	"LTI_gesf2"
.LASF847:
	.string	"TI_UV4SF_TYPE"
.LASF1187:
	.string	"preferred_unit_stack_boundary"
.LASF252:
	.string	"US_TRUNCATE"
.LASF632:
	.string	"lang_flag_2"
.LASF551:
	.string	"BUILT_IN_STRCSPN"
.LASF478:
	.string	"SET_LE_EXPR"
.LASF1208:
	.string	"save_pending_stack_adjust"
.LASF1140:
	.string	"args"
.LASF340:
	.string	"global_rtl_index"
.LASF30:
	.string	"nregs"
.LASF1190:
	.string	"check_sibcall_argument_overlap_1"
.LASF247:
	.string	"SS_PLUS"
.LASF209:
	.string	"UMAX"
.LASF497:
	.string	"PREINCREMENT_EXPR"
.LASF1244:
	.string	"rtx_length"
.LASF1125:
	.string	"call_insn"
.LASF261:
	.string	"scale"
.LASF776:
	.string	"linenum"
.LASF57:
	.string	"QImode"
.LASF1239:
	.string	"target_flags"
.LASF474:
	.string	"UNGT_EXPR"
.LASF1267:
	.string	"virtuals_instantiated"
.LASF343:
	.string	"GR_STACK_POINTER"
.LASF987:
	.string	"LTI_fixunssfsi"
.LASF682:
	.string	"user_align"
.LASF963:
	.string	"LTI_floatsisf"
.LASF1162:
	.string	"size_rtx"
.LASF1222:
	.string	"original_args_size"
.LASF518:
	.string	"BUILT_IN_LABS"
.LASF69:
	.string	"TQFmode"
.LASF1180:
	.string	"structure_value_addr"
.LASF617:
	.string	"volatile_flag"
.LASF1160:
	.string	"argpos"
.LASF29:
	.string	"words"
.LASF541:
	.string	"BUILT_IN_STRCAT"
.LASF557:
	.string	"BUILT_IN_SQRTF"
.LASF1148:
	.string	"stack_area"
.LASF258:
	.string	"min_after_base"
.LASF560:
	.string	"BUILT_IN_SQRTL"
.LASF933:
	.string	"LTI_lehf2"
.LASF1161:
	.string	"copy"
.LASF873:
	.string	"itk_unsigned_int"
.LASF385:
	.string	"ARRAY_TYPE"
.LASF769:
	.string	"x_dont_save_pending_sizes_p"
.LASF28:
	.string	"ix86_args"
.LASF513:
	.string	"EXC_PTR_EXPR"
.LASF989:
	.string	"LTI_fixunssfti"
.LASF1104:
	.string	"calls_function"
.LASF972:
	.string	"LTI_floatsitf"
.LASF535:
	.string	"BUILT_IN_FFS"
.LASF993:
	.string	"LTI_fixunsxfsi"
.LASF622:
	.string	"used_flag"
.LASF580:
	.string	"BUILT_IN_PRINTF"
.LASF379:
	.string	"CHAR_TYPE"
.LASF673:
	.string	"attributes"
.LASF858:
	.string	"TI_V8HI_TYPE"
.LASF1129:
	.string	"n_pop"
.LASF910:
	.string	"LTI_truncxfsf2"
.LASF705:
	.string	"outgoing_args_size"
.LASF441:
	.string	"FIX_FLOOR_EXPR"
.LASF977:
	.string	"LTI_fixsfti"
.LASF62:
	.string	"OImode"
.LASF309:
	.string	"REG_SAVE_NOTE"
.LASF587:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF1087:
	.string	"bytes"
.LASF630:
	.string	"lang_flag_0"
.LASF631:
	.string	"lang_flag_1"
.LASF407:
	.string	"BIT_FIELD_REF"
.LASF633:
	.string	"lang_flag_3"
.LASF634:
	.string	"lang_flag_4"
.LASF635:
	.string	"lang_flag_5"
.LASF207:
	.string	"SMAX"
.LASF801:
	.string	"lang_flag_7"
.LASF352:
	.string	"GR_MAX"
.LASF811:
	.string	"pointer_alias_set"
.LASF244:
	.string	"VEC_SELECT"
.LASF1154:
	.string	"initialize_argument_information"
.LASF984:
	.string	"LTI_fixtfsi"
.LASF522:
	.string	"BUILT_IN_LLABS"
.LASF293:
	.string	"REG_NONNEG"
.LASF401:
	.string	"VAR_DECL"
.LASF658:
	.string	"operands"
.LASF415:
	.string	"MODIFY_EXPR"
.LASF1011:
	.string	"emit_status"
.LASF651:
	.string	"tree_identifier"
.LASF125:
	.string	"MODE_VECTOR_FLOAT"
.LASF370:
	.string	"TREE_VEC"
.LASF215:
	.string	"POST_MODIFY"
.LASF1127:
	.string	"n_popped"
.LASF563:
	.string	"BUILT_IN_SAVEREGS"
.LASF507:
	.string	"EXIT_EXPR"
.LASF1112:
	.string	"reg_parm_seen"
.LASF525:
	.string	"BUILT_IN_CONJF"
.LASF1228:
	.string	"upper_bound"
.LASF305:
	.string	"REG_BR_PRED"
.LASF1133:
	.string	"tname"
.LASF526:
	.string	"BUILT_IN_CONJL"
.LASF141:
	.string	"DEFINE_PEEPHOLE"
.LASF53:
	.string	"long long unsigned int"
.LASF334:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF265:
	.string	"offset"
.LASF262:
	.string	"addr_diff_vec_flags"
.LASF1221:
	.string	"nargs"
.LASF998:
	.string	"LTI_fixunstfti"
.LASF1119:
	.string	"next_arg_reg"
.LASF1138:
	.string	"precompute_register_parameters"
.LASF137:
	.string	"MATCH_OP_DUP"
.LASF151:
	.string	"SEQUENCE"
.LASF995:
	.string	"LTI_fixunsxfti"
.LASF368:
	.string	"IDENTIFIER_NODE"
.LASF851:
	.string	"TI_UV4HI_TYPE"
.LASF908:
	.string	"LTI_extenddftf2"
.LASF890:
	.string	"EXPAND_SUM"
.LASF67:
	.string	"QFmode"
.LASF1201:
	.string	"pcc_struct_value"
.LASF806:
	.string	"section_name"
.LASF707:
	.string	"args_info"
.LASF472:
	.string	"UNLT_EXPR"
.LASF765:
	.string	"limit_stack"
.LASF391:
	.string	"LANG_TYPE"
.LASF1235:
	.string	"stack_usage_map"
.LASF178:
	.string	"RESX"
.LASF1117:
	.string	"rounded_stack_size"
.LASF1241:
	.string	"mode_size"
.LASF166:
	.string	"PARALLEL"
.LASF1115:
	.string	"funtype"
.LASF13:
	.string	"num_elem"
.LASF825:
	.string	"TI_INTEGER_ZERO"
.LASF1168:
	.string	"partial_seen"
.LASF216:
	.string	"UNORDERED"
.LASF114:
	.string	"MAX_MACHINE_MODE"
.LASF1151:
	.string	"big_endian_correction"
.LASF872:
	.string	"itk_int"
.LASF929:
	.string	"LTI_nehf2"
.LASF696:
	.string	"off_align"
.LASF896:
	.string	"none"
.LASF564:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF133:
	.string	"MATCH_SCRATCH"
.LASF183:
	.string	"CONST"
.LASF1020:
	.string	"regno_pointer_align"
.LASF232:
	.string	"SQRT"
.LASF969:
	.string	"LTI_floatsixf"
.LASF675:
	.string	"string_flag"
.LASF362:
	.string	"LCT_RETURNS_TWICE"
.LASF342:
	.string	"GR_CC0"
.LASF1050:
	.string	"TV_VARCONST"
.LASF116:
	.string	"mode_class"
.LASF198:
	.string	"MULT"
.LASF386:
	.string	"SET_TYPE"
.LASF353:
	.string	"libcall_type"
.LASF121:
	.string	"MODE_CC"
.LASF663:
	.string	"vars"
.LASF1156:
	.string	"actparms"
.LASF1060:
	.string	"TV_IFCVT"
.LASF420:
	.string	"CALL_EXPR"
.LASF63:
	.string	"PQImode"
.LASF455:
	.string	"BIT_AND_EXPR"
.LASF922:
	.string	"LTI_unwind_resume"
.LASF494:
	.string	"REALPART_EXPR"
.LASF473:
	.string	"UNLE_EXPR"
.LASF733:
	.string	"x_temp_slots"
.LASF817:
	.string	"TI_INTSI_TYPE"
.LASF531:
	.string	"BUILT_IN_CIMAGF"
.LASF778:
	.string	"nonlocal_flag"
.LASF720:
	.string	"x_stack_slot_list"
.LASF532:
	.string	"BUILT_IN_CIMAGL"
.LASF161:
	.string	"CALL_INSN"
.LASF1065:
	.string	"TV_GLOBAL_ALLOC"
.LASF186:
	.string	"SUBREG"
.LASF1217:
	.string	"retval"
.LASF680:
	.string	"restrict_flag"
.LASF755:
	.string	"calls_longjmp"
.LASF98:
	.string	"V16QImode"
.LASF314:
	.string	"REG_ALWAYS_RETURN"
.LASF519:
	.string	"BUILT_IN_FABS"
.LASF23:
	.string	"decl"
.LASF495:
	.string	"IMAGPART_EXPR"
.LASF54:
	.string	"long long int"
.LASF852:
	.string	"TI_UV2SI_TYPE"
.LASF809:
	.string	"inlined_fns"
.LASF878:
	.string	"itk_none"
.LASF292:
	.string	"REG_LIBCALL"
.LASF1263:
	.string	"flag_no_inline"
.LASF885:
	.string	"SBITSIZETYPE"
.LASF74:
	.string	"QCmode"
.LASF184:
	.string	"VALUE"
.LASF164:
	.string	"NOTE"
.LASF954:
	.string	"LTI_lexf2"
.LASF423:
	.string	"CLEANUP_POINT_EXPR"
.LASF1080:
	.string	"TV_FROM_SSA"
.LASF1092:
	.string	"initial_value"
.LASF1046:
	.string	"TV_CPP"
.LASF33:
	.string	"sse_nregs"
.LASF208:
	.string	"UMIN"
.LASF134:
	.string	"MATCH_DUP"
.LASF393:
	.string	"REAL_CST"
.LASF594:
	.string	"BUILT_IN_ISLESS"
.LASF552:
	.string	"BUILT_IN_STRCHR"
.LASF608:
	.string	"BUILT_IN_VA_END"
.LASF1272:
	.string	"emit_library_call"
.LASF283:
	.string	"basic_block_def"
.LASF603:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF928:
	.string	"LTI_eqhf2"
.LASF684:
	.string	"reference_to"
.LASF1210:
	.string	"sibcall_failure"
.LASF442:
	.string	"FIX_ROUND_EXPR"
.LASF469:
	.string	"NE_EXPR"
.LASF1033:
	.string	"varasm_status"
.LASF572:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF1070:
	.string	"TV_RENAME_REGISTERS"
.LASF559:
	.string	"BUILT_IN_COSF"
.LASF377:
	.string	"ENUMERAL_TYPE"
.LASF1010:
	.string	"sequence_rtl_expr"
.LASF321:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF905:
	.string	"LTI_extendsfxf2"
.LASF712:
	.string	"x_function_call_count"
.LASF1197:
	.string	"try_tail_call"
.LASF81:
	.string	"CHImode"
.LASF528:
	.string	"BUILT_IN_CREALF"
.LASF337:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF1126:
	.string	"already_popped"
.LASF156:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF792:
	.string	"non_addr_const_p"
.LASF649:
	.string	"elements"
.LASF1019:
	.string	"regno_pointer_align_length"
.LASF1014:
	.string	"x_first_insn"
.LASF868:
	.string	"itk_signed_char"
.LASF1028:
	.string	"x_apply_args_value"
.LASF180:
	.string	"CONST_DOUBLE"
.LASF574:
	.string	"BUILT_IN_SETJMP"
.LASF830:
	.string	"TI_SIZE_ONE"
.LASF591:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF874:
	.string	"itk_long"
.LASF110:
	.string	"CCNOmode"
.LASF1056:
	.string	"TV_CSE2"
.LASF91:
	.string	"V4HImode"
.LASF413:
	.string	"CONSTRUCTOR"
.LASF218:
	.string	"UNEQ"
.LASF371:
	.string	"BLOCK"
.LASF201:
	.string	"ASHIFT"
.LASF846:
	.string	"TI_VOID_LIST_NODE"
.LASF206:
	.string	"SMIN"
.LASF1165:
	.string	"__FUNCTION__"
.LASF193:
	.string	"IF_THEN_ELSE"
.LASF781:
	.string	"bit_field_flag"
.LASF579:
	.string	"BUILT_IN_PUTS"
.LASF916:
	.string	"LTI_memmove"
.LASF784:
	.string	"in_system_header_flag"
.LASF994:
	.string	"LTI_fixunsxfdi"
.LASF787:
	.string	"transparent_union"
.LASF333:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF701:
	.string	"outer"
.LASF810:
	.string	"vindex"
.LASF357:
	.string	"LCT_CONST_MAKE_BLOCK"
.LASF330:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1234:
	.string	"size_rtx1"
.LASF1118:
	.string	"struct_value_size"
.LASF1090:
	.string	"arg_data"
.LASF395:
	.string	"VECTOR_CST"
.LASF43:
	.string	"unsigned int"
.LASF487:
	.string	"RTL_EXPR"
.LASF1039:
	.string	"TV_TOTAL"
.LASF269:
	.string	"tree_node"
.LASF1215:
	.string	"note"
.LASF717:
	.string	"x_cleanup_label"
.LASF919:
	.string	"LTI_bcmp"
.LASF476:
	.string	"UNEQ_EXPR"
.LASF544:
	.string	"BUILT_IN_STRNCPY"
.LASF1231:
	.string	"variable_size"
.LASF926:
	.string	"LTI_unwind_sjlj_register"
.LASF373:
	.string	"INTEGER_TYPE"
.LASF219:
	.string	"UNGE"
.LASF950:
	.string	"LTI_nexf2"
.LASF1061:
	.string	"TV_REGMOVE"
.LASF1013:
	.string	"x_first_label_num"
.LASF777:
	.string	"external_flag"
.LASF51:
	.string	"short int"
.LASF480:
	.string	"RANGE_EXPR"
.LASF220:
	.string	"UNGT"
.LASF761:
	.string	"has_computed_jump"
.LASF554:
	.string	"BUILT_IN_SQRT"
.LASF409:
	.string	"BUFFER_REF"
.LASF1015:
	.string	"x_last_insn"
.LASF935:
	.string	"LTI_eqsf2"
.LASF764:
	.string	"profile"
.LASF492:
	.string	"COMPLEX_EXPR"
.LASF600:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1193:
	.string	"currently_expanding_call"
.LASF747:
	.string	"preferred_stack_boundary"
.LASF55:
	.string	"VOIDmode"
.LASF1106:
	.string	"class"
.LASF315:
	.string	"REG_VTABLE_REF"
.LASF359:
	.string	"LCT_NORETURN"
.LASF845:
	.string	"TI_VA_LIST_TYPE"
.LASF350:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF236:
	.string	"LO_SUM"
.LASF1164:
	.string	"unadjusted_args_size"
.LASF616:
	.string	"addressable_flag"
.LASF904:
	.string	"LTI_extendsfdf2"
.LASF545:
	.string	"BUILT_IN_STRCMP"
.LASF374:
	.string	"REAL_TYPE"
.LASF271:
	.string	"rtwint"
.LASF1101:
	.string	"n_aligned_regs"
.LASF1250:
	.string	"struct_value_rtx"
.LASF722:
	.string	"x_tail_recursion_label"
.LASF511:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
