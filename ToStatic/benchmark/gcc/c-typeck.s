	.file	"c-typeck.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 c-typeck.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	missing_braces_mentioned
	.comm	missing_braces_mentioned,4,4
	.local	undeclared_variable_notice
	.comm	undeclared_variable_notice,4,4
	.globl	require_complete_type
	.type	require_complete_type, @function
require_complete_type:
.LFB2:
	.file 1 "c-typeck.c"
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# value, value
	.loc 1 93 0
	movq	-24(%rbp), %rax	# value, tmp64
	movq	8(%rax), %rax	# value_2(D)->common.type, tmp65
	movq	%rax, -8(%rbp)	# tmp65, type
	.loc 1 95 0
	movq	global_trees(%rip), %rax	# global_trees, D.21474
	cmpq	-24(%rbp), %rax	# value, D.21474
	je	.L2	#,
	.loc 1 95 0 is_stmt 0 discriminator 1
	movq	global_trees(%rip), %rax	# global_trees, D.21474
	cmpq	-8(%rbp), %rax	# type, D.21474
	jne	.L3	#,
.L2:
	.loc 1 96 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.21473
	jmp	.L4	#
.L3:
	.loc 1 99 0
	movq	-8(%rbp), %rax	# type, tmp66
	movq	32(%rax), %rax	# type_3->type.size, D.21474
	testq	%rax, %rax	# D.21474
	je	.L5	#,
	.loc 1 100 0
	movq	-24(%rbp), %rax	# value, D.21473
	jmp	.L4	#
.L5:
	.loc 1 102 0
	movq	-8(%rbp), %rdx	# type, tmp67
	movq	-24(%rbp), %rax	# value, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	incomplete_type_error	#
	.loc 1 103 0
	movq	global_trees(%rip), %rax	# global_trees, D.21473
.L4:
	.loc 1 104 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	require_complete_type, .-require_complete_type
	.section	.rodata
.LC0:
	.string	"`%s' has an incomplete type"
.LC1:
	.string	"struct"
.LC2:
	.string	"union"
.LC3:
	.string	"enum"
	.align 8
.LC4:
	.string	"invalid use of void expression"
	.align 8
.LC5:
	.string	"invalid use of flexible array member"
	.align 8
.LC6:
	.string	"invalid use of array with unspecified bounds"
.LC7:
	.string	"c-typeck.c"
	.align 8
.LC8:
	.string	"invalid use of undefined type `%s %s'"
	.align 8
.LC9:
	.string	"invalid use of incomplete typedef `%s'"
	.text
	.globl	incomplete_type_error
	.type	incomplete_type_error, @function
incomplete_type_error:
.LFB3:
	.loc 1 114 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# value, value
	movq	%rsi, -32(%rbp)	# type, type
	.loc 1 118 0
	movq	-32(%rbp), %rax	# type, tmp76
	movzbl	16(%rax), %eax	# type_3(D)->common.code, D.21475
	testb	%al, %al	# D.21475
	jne	.L7	#,
	.loc 1 119 0
	jmp	.L6	#
.L7:
	.loc 1 121 0
	cmpq	$0, -24(%rbp)	#, value
	je	.L9	#,
	.loc 1 121 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# value, tmp77
	movzbl	16(%rax), %eax	# value_5(D)->common.code, D.21475
	cmpb	$34, %al	#, D.21475
	je	.L10	#,
	.loc 1 122 0 is_stmt 1
	movq	-24(%rbp), %rax	# value, tmp78
	movzbl	16(%rax), %eax	# value_5(D)->common.code, D.21475
	cmpb	$35, %al	#, D.21475
	jne	.L9	#,
.L10:
	.loc 1 124 0
	movq	-24(%rbp), %rax	# value, tmp79
	movq	72(%rax), %rax	# value_5(D)->decl.name, D.21476
	movq	32(%rax), %rax	# _8->identifier.id.str, D.21477
	.loc 1 123 0
	movq	%rax, %rsi	# D.21477,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L6	#
.L9:
	.loc 1 130 0
	movq	-32(%rbp), %rax	# type, tmp80
	movzbl	16(%rax), %eax	# type_1->common.code, D.21475
	movzbl	%al, %eax	# D.21475, D.21478
	subl	$5, %eax	#, tmp81
	cmpl	$16, %eax	#, tmp81
	ja	.L11	#,
	movl	%eax, %eax	# tmp81, tmp82
	movq	.L13(,%rax,8), %rax	#, tmp83
	jmp	*%rax	# tmp83
	.section	.rodata
	.align 8
	.align 4
.L13:
	.quad	.L12
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L14
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L15
	.quad	.L11
	.quad	.L16
	.quad	.L17
	.text
.L16:
	.loc 1 133 0
	movq	$.LC1, -8(%rbp)	#, type_code_string
	.loc 1 134 0
	jmp	.L18	#
.L17:
	.loc 1 137 0
	movq	$.LC2, -8(%rbp)	#, type_code_string
	.loc 1 138 0
	jmp	.L18	#
.L14:
	.loc 1 141 0
	movq	$.LC3, -8(%rbp)	#, type_code_string
	.loc 1 142 0
	jmp	.L18	#
.L12:
	.loc 1 145 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 146 0
	jmp	.L6	#
.L15:
	.loc 1 149 0
	movq	-32(%rbp), %rax	# type, tmp84
	movq	24(%rax), %rax	# type_1->type.values, D.21476
	testq	%rax, %rax	# D.21476
	je	.L19	#,
	.loc 1 151 0
	movq	-32(%rbp), %rax	# type, tmp85
	movq	24(%rax), %rax	# type_1->type.values, D.21476
	movq	112(%rax), %rax	# _16->type.maxval, D.21476
	testq	%rax, %rax	# D.21476
	jne	.L20	#,
	.loc 1 153 0
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 154 0
	jmp	.L6	#
.L20:
	.loc 1 156 0
	movq	-32(%rbp), %rax	# type, tmp86
	movq	8(%rax), %rax	# type_1->common.type, tmp87
	movq	%rax, -32(%rbp)	# tmp87, type
	.loc 1 157 0
	jmp	.L9	#
.L19:
	.loc 1 159 0
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 160 0
	jmp	.L6	#
.L11:
	.loc 1 163 0
	movl	$__FUNCTION__.13791, %edx	#,
	movl	$163, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L18:
	.loc 1 166 0
	movq	-32(%rbp), %rax	# type, tmp88
	movq	96(%rax), %rax	# type_1->type.name, D.21476
	movzbl	16(%rax), %eax	# _19->common.code, D.21475
	cmpb	$1, %al	#, D.21475
	jne	.L21	#,
	.loc 1 168 0
	movq	-32(%rbp), %rax	# type, tmp89
	movq	96(%rax), %rax	# type_1->type.name, D.21476
	movq	32(%rax), %rdx	# _21->identifier.id.str, D.21477
	.loc 1 167 0
	movq	-8(%rbp), %rax	# type_code_string, tmp90
	movq	%rax, %rsi	# tmp90,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L6	#
.L21:
	.loc 1 172 0
	movq	-32(%rbp), %rax	# type, tmp91
	movq	96(%rax), %rax	# type_1->type.name, D.21476
	movq	72(%rax), %rax	# _23->decl.name, D.21476
	movq	32(%rax), %rax	# _24->identifier.id.str, D.21477
	.loc 1 171 0
	movq	%rax, %rsi	# D.21477,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L6:
	.loc 1 174 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	incomplete_type_error, .-incomplete_type_error
	.type	qualify_type, @function
qualify_type:
.LFB4:
	.loc 1 182 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# type, type
	movq	%rsi, -16(%rbp)	# like, like
	.loc 1 184 0
	movq	-8(%rbp), %rax	# type, tmp92
	movzbl	17(%rax), %eax	# *type_3(D), tmp95
	shrb	$4, %al	#, D.21489
	andl	$1, %eax	#, D.21489
	movzbl	%al, %edx	# D.21489, D.21490
	movq	-8(%rbp), %rax	# type, tmp96
	movzbl	17(%rax), %eax	# *type_3(D), tmp99
	shrb	$3, %al	#, D.21489
	andl	$1, %eax	#, D.21489
	movzbl	%al, %eax	# D.21489, D.21490
	addl	%eax, %eax	# D.21490
	orl	%eax, %edx	# D.21490, D.21490
	movq	-8(%rbp), %rax	# type, tmp100
	movzbl	62(%rax), %eax	# *type_3(D), tmp103
	shrb	$5, %al	#, D.21489
	andl	$1, %eax	#, D.21489
	movzbl	%al, %eax	# D.21489, D.21490
	sall	$2, %eax	#, D.21490
	orl	%eax, %edx	# D.21490, D.21490
	movq	-8(%rbp), %rax	# type, tmp104
	movzbl	16(%rax), %eax	# type_3(D)->common.code, D.21491
	cmpb	$20, %al	#, D.21491
	jne	.L23	#,
	.loc 1 184 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# type, tmp105
	movq	8(%rax), %rax	# type_3(D)->common.type, D.21492
	testq	%rax, %rax	# D.21492
	je	.L23	#,
	.loc 1 184 0 discriminator 3
	movl	$1, %eax	#, iftmp.0
	jmp	.L24	#
.L23:
	.loc 1 184 0 discriminator 2
	movl	$0, %eax	#, iftmp.0
.L24:
	.loc 1 184 0 discriminator 4
	sall	$3, %eax	#, D.21490
	movl	%edx, %ecx	# D.21490, D.21490
	orl	%eax, %ecx	# D.21490, D.21490
	movq	-16(%rbp), %rax	# like, tmp106
	movzbl	17(%rax), %eax	# *like_20(D), tmp109
	shrb	$4, %al	#, D.21489
	andl	$1, %eax	#, D.21489
	movzbl	%al, %edx	# D.21489, D.21490
	movq	-16(%rbp), %rax	# like, tmp110
	movzbl	17(%rax), %eax	# *like_20(D), tmp113
	shrb	$3, %al	#, D.21489
	andl	$1, %eax	#, D.21489
	movzbl	%al, %eax	# D.21489, D.21490
	addl	%eax, %eax	# D.21490
	orl	%eax, %edx	# D.21490, D.21490
	movq	-16(%rbp), %rax	# like, tmp114
	movzbl	62(%rax), %eax	# *like_20(D), tmp117
	shrb	$5, %al	#, D.21489
	andl	$1, %eax	#, D.21489
	movzbl	%al, %eax	# D.21489, D.21490
	sall	$2, %eax	#, D.21490
	orl	%eax, %edx	# D.21490, D.21490
	movq	-16(%rbp), %rax	# like, tmp118
	movzbl	16(%rax), %eax	# like_20(D)->common.code, D.21491
	cmpb	$20, %al	#, D.21491
	jne	.L25	#,
	.loc 1 184 0 discriminator 1
	movq	-16(%rbp), %rax	# like, tmp119
	movq	8(%rax), %rax	# like_20(D)->common.type, D.21492
	testq	%rax, %rax	# D.21492
	je	.L25	#,
	.loc 1 184 0 discriminator 3
	movl	$1, %eax	#, iftmp.1
	jmp	.L26	#
.L25:
	.loc 1 184 0 discriminator 2
	movl	$0, %eax	#, iftmp.1
.L26:
	.loc 1 184 0 discriminator 4
	sall	$3, %eax	#, D.21490
	orl	%edx, %eax	# D.21490, D.21490
	.loc 1 183 0 is_stmt 1 discriminator 4
	orl	%eax, %ecx	# D.21490, D.21490
	movl	%ecx, %edx	# D.21490, D.21490
	movq	-8(%rbp), %rax	# type, tmp120
	movl	%edx, %esi	# D.21490,
	movq	%rax, %rdi	# tmp120,
	call	c_build_qualified_type	#
	.loc 1 185 0 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	qualify_type, .-qualify_type
	.section	.rodata
	.align 8
.LC10:
	.string	"function types not truly compatible in ISO C"
	.text
	.globl	common_type
	.type	common_type, @function
common_type:
.LFB5:
	.loc 1 198 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -152(%rbp)	# t1, t1
	movq	%rsi, -160(%rbp)	# t2, t2
	.loc 1 205 0
	movq	-152(%rbp), %rax	# t1, tmp185
	cmpq	-160(%rbp), %rax	# t2, tmp185
	jne	.L29	#,
	.loc 1 205 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# t1, D.21494
	jmp	.L30	#
.L29:
	.loc 1 208 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.21495
	cmpq	-152(%rbp), %rax	# t1, D.21495
	jne	.L31	#,
	.loc 1 209 0
	movq	-160(%rbp), %rax	# t2, D.21494
	jmp	.L30	#
.L31:
	.loc 1 210 0
	movq	global_trees(%rip), %rax	# global_trees, D.21495
	cmpq	-160(%rbp), %rax	# t2, D.21495
	jne	.L32	#,
	.loc 1 211 0
	movq	-152(%rbp), %rax	# t1, D.21494
	jmp	.L30	#
.L32:
	.loc 1 214 0
	movq	targetm+248(%rip), %rax	# targetm.merge_type_attributes, D.21496
	movq	-160(%rbp), %rcx	# t2, tmp186
	movq	-152(%rbp), %rdx	# t1, tmp187
	movq	%rcx, %rsi	# tmp186,
	movq	%rdx, %rdi	# tmp187,
	call	*%rax	# D.21496
	movq	%rax, -72(%rbp)	# tmp188, attributes
	.loc 1 218 0
	movq	-152(%rbp), %rax	# t1, tmp189
	movzbl	16(%rax), %eax	# t1_18(D)->common.code, D.21497
	cmpb	$10, %al	#, D.21497
	jne	.L33	#,
	.loc 1 219 0
	movq	-152(%rbp), %rax	# t1, tmp190
	movzwl	60(%rax), %eax	# *t1_18(D), tmp193
	andw	$511, %ax	#, D.21498
	movzwl	%ax, %eax	# D.21498, D.21499
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.21499,
	call	type_for_size	#
	movq	%rax, -152(%rbp)	# tmp194, t1
.L33:
	.loc 1 220 0
	movq	-160(%rbp), %rax	# t2, tmp195
	movzbl	16(%rax), %eax	# t2_19(D)->common.code, D.21497
	cmpb	$10, %al	#, D.21497
	jne	.L34	#,
	.loc 1 221 0
	movq	-160(%rbp), %rax	# t2, tmp196
	movzwl	60(%rax), %eax	# *t2_19(D), tmp199
	andw	$511, %ax	#, D.21498
	movzwl	%ax, %eax	# D.21498, D.21499
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.21499,
	call	type_for_size	#
	movq	%rax, -160(%rbp)	# tmp200, t2
.L34:
	.loc 1 223 0
	movq	-152(%rbp), %rax	# t1, tmp201
	movzbl	16(%rax), %eax	# t1_1->common.code, D.21497
	movzbl	%al, %eax	# D.21497, tmp202
	movl	%eax, -132(%rbp)	# tmp202, code1
	.loc 1 224 0
	movq	-160(%rbp), %rax	# t2, tmp203
	movzbl	16(%rax), %eax	# t2_4->common.code, D.21497
	movzbl	%al, %eax	# D.21497, tmp204
	movl	%eax, -128(%rbp)	# tmp204, code2
	.loc 1 229 0
	cmpl	$8, -132(%rbp)	#, code1
	je	.L35	#,
	.loc 1 229 0 is_stmt 0 discriminator 1
	cmpl	$8, -128(%rbp)	#, code2
	jne	.L36	#,
.L35:
.LBB2:
	.loc 1 231 0 is_stmt 1
	cmpl	$8, -132(%rbp)	#, code1
	jne	.L37	#,
	.loc 1 231 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# t1, tmp205
	movq	8(%rax), %rax	# t1_1->common.type, iftmp.2
	jmp	.L38	#
.L37:
	.loc 1 231 0 discriminator 2
	movq	-152(%rbp), %rax	# t1, iftmp.2
.L38:
	.loc 1 231 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.2, subtype1
	.loc 1 232 0 is_stmt 1 discriminator 3
	cmpl	$8, -128(%rbp)	#, code2
	jne	.L39	#,
	.loc 1 232 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# t2, tmp206
	movq	8(%rax), %rax	# t2_4->common.type, iftmp.3
	jmp	.L40	#
.L39:
	.loc 1 232 0 discriminator 2
	movq	-160(%rbp), %rax	# t2, iftmp.3
.L40:
	.loc 1 232 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.3, subtype2
	.loc 1 233 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rdx	# subtype2, tmp207
	movq	-24(%rbp), %rax	# subtype1, tmp208
	movq	%rdx, %rsi	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	common_type	#
	movq	%rax, -8(%rbp)	# tmp209, subtype
	.loc 1 235 0 discriminator 3
	cmpl	$8, -132(%rbp)	#, code1
	jne	.L41	#,
	.loc 1 235 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# t1, tmp210
	movq	8(%rax), %rax	# t1_1->common.type, D.21495
	cmpq	-8(%rbp), %rax	# subtype, D.21495
	jne	.L41	#,
	.loc 1 236 0 is_stmt 1
	movq	-72(%rbp), %rdx	# attributes, tmp211
	movq	-152(%rbp), %rax	# t1, tmp212
	movq	%rdx, %rsi	# tmp211,
	movq	%rax, %rdi	# tmp212,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L41:
	.loc 1 237 0
	cmpl	$8, -128(%rbp)	#, code2
	jne	.L42	#,
	.loc 1 237 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# t2, tmp213
	movq	8(%rax), %rax	# t2_4->common.type, D.21495
	cmpq	-8(%rbp), %rax	# subtype, D.21495
	jne	.L42	#,
	.loc 1 238 0 is_stmt 1
	movq	-72(%rbp), %rdx	# attributes, tmp214
	movq	-160(%rbp), %rax	# t2, tmp215
	movq	%rdx, %rsi	# tmp214,
	movq	%rax, %rdi	# tmp215,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L42:
	.loc 1 240 0
	movq	-8(%rbp), %rax	# subtype, tmp216
	movq	%rax, %rdi	# tmp216,
	call	build_complex_type	#
	movq	-72(%rbp), %rdx	# attributes, tmp217
	movq	%rdx, %rsi	# tmp217,
	movq	%rax, %rdi	# D.21495,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L36:
.LBE2:
	.loc 1 244 0
	movl	-132(%rbp), %eax	# code1, tmp219
	subl	$6, %eax	#, tmp218
	cmpl	$17, %eax	#, tmp218
	ja	.L43	#,
	movl	%eax, %eax	# tmp218, tmp220
	movq	.L45(,%rax,8), %rax	#, tmp221
	jmp	*%rax	# tmp221
	.section	.rodata
	.align 8
	.align 4
.L45:
	.quad	.L44
	.quad	.L44
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L46
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L47
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L48
	.text
.L44:
	.loc 1 250 0
	cmpl	$7, -132(%rbp)	#, code1
	jne	.L49	#,
	.loc 1 250 0 is_stmt 0 discriminator 1
	cmpl	$7, -128(%rbp)	#, code2
	je	.L49	#,
	.loc 1 251 0 is_stmt 1
	movq	-72(%rbp), %rdx	# attributes, tmp222
	movq	-152(%rbp), %rax	# t1, tmp223
	movq	%rdx, %rsi	# tmp222,
	movq	%rax, %rdi	# tmp223,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L49:
	.loc 1 253 0
	cmpl	$7, -128(%rbp)	#, code2
	jne	.L50	#,
	.loc 1 253 0 is_stmt 0 discriminator 1
	cmpl	$7, -132(%rbp)	#, code1
	je	.L50	#,
	.loc 1 254 0 is_stmt 1
	movq	-72(%rbp), %rdx	# attributes, tmp224
	movq	-160(%rbp), %rax	# t2, tmp225
	movq	%rdx, %rsi	# tmp224,
	movq	%rax, %rdi	# tmp225,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L50:
	.loc 1 258 0
	movq	-152(%rbp), %rax	# t1, tmp226
	movzwl	60(%rax), %eax	# *t1_1, tmp229
	andw	$511, %ax	#, D.21498
	movzwl	%ax, %edx	# D.21498, D.21500
	movq	-160(%rbp), %rax	# t2, tmp230
	movzwl	60(%rax), %eax	# *t2_4, tmp233
	andw	$511, %ax	#, D.21498
	movzwl	%ax, %eax	# D.21498, D.21500
	cmpl	%eax, %edx	# D.21500, D.21500
	jle	.L51	#,
	.loc 1 259 0
	movq	-72(%rbp), %rdx	# attributes, tmp234
	movq	-152(%rbp), %rax	# t1, tmp235
	movq	%rdx, %rsi	# tmp234,
	movq	%rax, %rdi	# tmp235,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L51:
	.loc 1 260 0
	movq	-160(%rbp), %rax	# t2, tmp236
	movzwl	60(%rax), %eax	# *t2_4, tmp239
	andw	$511, %ax	#, D.21498
	movzwl	%ax, %edx	# D.21498, D.21500
	movq	-152(%rbp), %rax	# t1, tmp240
	movzwl	60(%rax), %eax	# *t1_1, tmp243
	andw	$511, %ax	#, D.21498
	movzwl	%ax, %eax	# D.21498, D.21500
	cmpl	%eax, %edx	# D.21500, D.21500
	jle	.L52	#,
	.loc 1 261 0
	movq	-72(%rbp), %rdx	# attributes, tmp244
	movq	-160(%rbp), %rax	# t2, tmp245
	movq	%rdx, %rsi	# tmp244,
	movq	%rax, %rdi	# tmp245,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L52:
	.loc 1 265 0
	movq	-152(%rbp), %rax	# t1, tmp246
	movq	128(%rax), %rdx	# t1_1->type.main_variant, D.21495
	movq	integer_types+64(%rip), %rax	# integer_types, D.21495
	cmpq	%rax, %rdx	# D.21495, D.21495
	je	.L53	#,
	.loc 1 266 0
	movq	-160(%rbp), %rax	# t2, tmp247
	movq	128(%rax), %rdx	# t2_4->type.main_variant, D.21495
	movq	integer_types+64(%rip), %rax	# integer_types, D.21495
	cmpq	%rax, %rdx	# D.21495, D.21495
	jne	.L54	#,
.L53:
	.loc 1 267 0
	movq	integer_types+64(%rip), %rax	# integer_types, D.21495
	movq	-72(%rbp), %rdx	# attributes, tmp248
	movq	%rdx, %rsi	# tmp248,
	movq	%rax, %rdi	# D.21495,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L54:
	.loc 1 270 0
	movq	-152(%rbp), %rax	# t1, tmp249
	movq	128(%rax), %rdx	# t1_1->type.main_variant, D.21495
	movq	integer_types+56(%rip), %rax	# integer_types, D.21495
	cmpq	%rax, %rdx	# D.21495, D.21495
	je	.L55	#,
	.loc 1 271 0
	movq	-160(%rbp), %rax	# t2, tmp250
	movq	128(%rax), %rdx	# t2_4->type.main_variant, D.21495
	movq	integer_types+56(%rip), %rax	# integer_types, D.21495
	cmpq	%rax, %rdx	# D.21495, D.21495
	jne	.L56	#,
.L55:
	.loc 1 275 0
	movq	-152(%rbp), %rax	# t1, tmp251
	movzbl	17(%rax), %eax	# *t1_1, D.21497
	andl	$32, %eax	#, D.21497
	testb	%al, %al	# D.21497
	jne	.L57	#,
	.loc 1 275 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# t2, tmp252
	movzbl	17(%rax), %eax	# *t2_4, D.21497
	andl	$32, %eax	#, D.21497
	testb	%al, %al	# D.21497
	je	.L58	#,
.L57:
	.loc 1 276 0 is_stmt 1
	movq	integer_types+64(%rip), %rax	# integer_types, tmp253
	movq	%rax, -152(%rbp)	# tmp253, t1
	jmp	.L59	#
.L58:
	.loc 1 278 0
	movq	integer_types+56(%rip), %rax	# integer_types, tmp254
	movq	%rax, -152(%rbp)	# tmp254, t1
.L59:
	.loc 1 279 0
	movq	-72(%rbp), %rdx	# attributes, tmp255
	movq	-152(%rbp), %rax	# t1, tmp256
	movq	%rdx, %rsi	# tmp255,
	movq	%rax, %rdi	# tmp256,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L56:
	.loc 1 283 0
	movq	-152(%rbp), %rax	# t1, tmp257
	movq	128(%rax), %rdx	# t1_1->type.main_variant, D.21495
	movq	global_trees+208(%rip), %rax	# global_trees, D.21495
	cmpq	%rax, %rdx	# D.21495, D.21495
	je	.L60	#,
	.loc 1 284 0
	movq	-160(%rbp), %rax	# t2, tmp258
	movq	128(%rax), %rdx	# t2_4->type.main_variant, D.21495
	movq	global_trees+208(%rip), %rax	# global_trees, D.21495
	cmpq	%rax, %rdx	# D.21495, D.21495
	jne	.L61	#,
.L60:
	.loc 1 285 0
	movq	global_trees+208(%rip), %rax	# global_trees, D.21495
	movq	-72(%rbp), %rdx	# attributes, tmp259
	movq	%rdx, %rsi	# tmp259,
	movq	%rax, %rdi	# D.21495,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L61:
	.loc 1 290 0
	movq	-152(%rbp), %rax	# t1, tmp260
	movzbl	17(%rax), %eax	# *t1_1, D.21497
	andl	$32, %eax	#, D.21497
	testb	%al, %al	# D.21497
	je	.L62	#,
	.loc 1 291 0
	movq	-72(%rbp), %rdx	# attributes, tmp261
	movq	-152(%rbp), %rax	# t1, tmp262
	movq	%rdx, %rsi	# tmp261,
	movq	%rax, %rdi	# tmp262,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L62:
	.loc 1 293 0
	movq	-72(%rbp), %rdx	# attributes, tmp263
	movq	-160(%rbp), %rax	# t2, tmp264
	movq	%rdx, %rsi	# tmp263,
	movq	%rax, %rdi	# tmp264,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L46:
.LBB3:
	.loc 1 302 0
	movq	-152(%rbp), %rax	# t1, tmp265
	movq	8(%rax), %rax	# t1_1->common.type, tmp266
	movq	%rax, -64(%rbp)	# tmp266, pointed_to_1
	.loc 1 303 0
	movq	-160(%rbp), %rax	# t2, tmp267
	movq	8(%rax), %rax	# t2_4->common.type, tmp268
	movq	%rax, -56(%rbp)	# tmp268, pointed_to_2
	.loc 1 304 0
	movq	-56(%rbp), %rax	# pointed_to_2, tmp269
	movq	128(%rax), %rdx	# pointed_to_2_79->type.main_variant, D.21495
	movq	-64(%rbp), %rax	# pointed_to_1, tmp270
	movq	128(%rax), %rax	# pointed_to_1_78->type.main_variant, D.21495
	movq	%rdx, %rsi	# D.21495,
	movq	%rax, %rdi	# D.21495,
	call	common_type	#
	movq	%rax, -48(%rbp)	# tmp271, target
	.loc 1 308 0
	movq	-64(%rbp), %rax	# pointed_to_1, tmp272
	movzbl	17(%rax), %eax	# *pointed_to_1_78, tmp275
	shrb	$4, %al	#, D.21501
	andl	$1, %eax	#, D.21501
	movzbl	%al, %edx	# D.21501, D.21500
	movq	-64(%rbp), %rax	# pointed_to_1, tmp276
	movzbl	17(%rax), %eax	# *pointed_to_1_78, tmp279
	shrb	$3, %al	#, D.21501
	andl	$1, %eax	#, D.21501
	movzbl	%al, %eax	# D.21501, D.21500
	addl	%eax, %eax	# D.21500
	orl	%eax, %edx	# D.21500, D.21500
	movq	-64(%rbp), %rax	# pointed_to_1, tmp280
	movzbl	62(%rax), %eax	# *pointed_to_1_78, tmp283
	shrb	$5, %al	#, D.21501
	andl	$1, %eax	#, D.21501
	movzbl	%al, %eax	# D.21501, D.21500
	sall	$2, %eax	#, D.21500
	orl	%eax, %edx	# D.21500, D.21500
	movq	-64(%rbp), %rax	# pointed_to_1, tmp284
	movzbl	16(%rax), %eax	# pointed_to_1_78->common.code, D.21497
	cmpb	$20, %al	#, D.21497
	jne	.L63	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# pointed_to_1, tmp285
	movq	8(%rax), %rax	# pointed_to_1_78->common.type, D.21495
	testq	%rax, %rax	# D.21495
	je	.L63	#,
	.loc 1 308 0 discriminator 3
	movl	$1, %eax	#, iftmp.4
	jmp	.L64	#
.L63:
	.loc 1 308 0 discriminator 2
	movl	$0, %eax	#, iftmp.4
.L64:
	.loc 1 308 0 discriminator 4
	sall	$3, %eax	#, D.21500
	movl	%edx, %ecx	# D.21500, D.21500
	orl	%eax, %ecx	# D.21500, D.21500
	.loc 1 309 0 is_stmt 1 discriminator 4
	movq	-56(%rbp), %rax	# pointed_to_2, tmp286
	movzbl	17(%rax), %eax	# *pointed_to_2_79, tmp289
	shrb	$4, %al	#, D.21501
	andl	$1, %eax	#, D.21501
	movzbl	%al, %edx	# D.21501, D.21500
	movq	-56(%rbp), %rax	# pointed_to_2, tmp290
	movzbl	17(%rax), %eax	# *pointed_to_2_79, tmp293
	shrb	$3, %al	#, D.21501
	andl	$1, %eax	#, D.21501
	movzbl	%al, %eax	# D.21501, D.21500
	addl	%eax, %eax	# D.21500
	orl	%eax, %edx	# D.21500, D.21500
	movq	-56(%rbp), %rax	# pointed_to_2, tmp294
	movzbl	62(%rax), %eax	# *pointed_to_2_79, tmp297
	shrb	$5, %al	#, D.21501
	andl	$1, %eax	#, D.21501
	movzbl	%al, %eax	# D.21501, D.21500
	sall	$2, %eax	#, D.21500
	orl	%eax, %edx	# D.21500, D.21500
	movq	-56(%rbp), %rax	# pointed_to_2, tmp298
	movzbl	16(%rax), %eax	# pointed_to_2_79->common.code, D.21497
	cmpb	$20, %al	#, D.21497
	jne	.L65	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# pointed_to_2, tmp299
	movq	8(%rax), %rax	# pointed_to_2_79->common.type, D.21495
	testq	%rax, %rax	# D.21495
	je	.L65	#,
	.loc 1 309 0 discriminator 3
	movl	$1, %eax	#, iftmp.5
	jmp	.L66	#
.L65:
	.loc 1 309 0 discriminator 2
	movl	$0, %eax	#, iftmp.5
.L66:
	.loc 1 309 0 discriminator 4
	sall	$3, %eax	#, D.21500
	orl	%edx, %eax	# D.21500, D.21500
	.loc 1 306 0 is_stmt 1 discriminator 4
	orl	%eax, %ecx	# D.21500, D.21500
	movl	%ecx, %edx	# D.21500, D.21500
	movq	-48(%rbp), %rax	# target, tmp300
	movl	%edx, %esi	# D.21500,
	movq	%rax, %rdi	# tmp300,
	call	c_build_qualified_type	#
	movq	%rax, %rdi	# D.21495,
	call	build_pointer_type	#
	movq	%rax, -152(%rbp)	# tmp301, t1
	.loc 1 310 0 discriminator 4
	movq	-72(%rbp), %rdx	# attributes, tmp302
	movq	-152(%rbp), %rax	# t1, tmp303
	movq	%rdx, %rsi	# tmp302,
	movq	%rax, %rdi	# tmp303,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L47:
.LBE3:
.LBB4:
	.loc 1 319 0
	movq	-160(%rbp), %rax	# t2, tmp304
	movq	8(%rax), %rdx	# t2_4->common.type, D.21495
	movq	-152(%rbp), %rax	# t1, tmp305
	movq	8(%rax), %rax	# t1_1->common.type, D.21495
	movq	%rdx, %rsi	# D.21495,
	movq	%rax, %rdi	# D.21495,
	call	common_type	#
	movq	%rax, -40(%rbp)	# tmp306, elt
	.loc 1 321 0
	movq	-152(%rbp), %rax	# t1, tmp307
	movq	8(%rax), %rax	# t1_1->common.type, D.21495
	cmpq	-40(%rbp), %rax	# elt, D.21495
	jne	.L67	#,
	.loc 1 321 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# t1, tmp308
	movq	24(%rax), %rax	# t1_1->type.values, D.21495
	testq	%rax, %rax	# D.21495
	je	.L67	#,
	.loc 1 322 0 is_stmt 1
	movq	-72(%rbp), %rdx	# attributes, tmp309
	movq	-152(%rbp), %rax	# t1, tmp310
	movq	%rdx, %rsi	# tmp309,
	movq	%rax, %rdi	# tmp310,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L67:
	.loc 1 323 0
	movq	-160(%rbp), %rax	# t2, tmp311
	movq	8(%rax), %rax	# t2_4->common.type, D.21495
	cmpq	-40(%rbp), %rax	# elt, D.21495
	jne	.L68	#,
	.loc 1 323 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# t2, tmp312
	movq	24(%rax), %rax	# t2_4->type.values, D.21495
	testq	%rax, %rax	# D.21495
	je	.L68	#,
	.loc 1 324 0 is_stmt 1
	movq	-72(%rbp), %rdx	# attributes, tmp313
	movq	-160(%rbp), %rax	# t2, tmp314
	movq	%rdx, %rsi	# tmp313,
	movq	%rax, %rdi	# tmp314,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L68:
	.loc 1 326 0
	movq	-152(%rbp), %rax	# t1, tmp315
	movq	24(%rax), %rax	# t1_1->type.values, D.21495
	testq	%rax, %rax	# D.21495
	je	.L69	#,
	.loc 1 326 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# t1, iftmp.6
	jmp	.L70	#
.L69:
	.loc 1 326 0 discriminator 2
	movq	-160(%rbp), %rax	# t2, iftmp.6
.L70:
	.loc 1 326 0 discriminator 3
	movq	24(%rax), %rdx	# iftmp.6_17->type.values, D.21495
	movq	-40(%rbp), %rax	# elt, tmp316
	movq	%rdx, %rsi	# D.21495,
	movq	%rax, %rdi	# tmp316,
	call	build_array_type	#
	movq	%rax, -152(%rbp)	# tmp317, t1
	.loc 1 327 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rdx	# attributes, tmp318
	movq	-152(%rbp), %rax	# t1, tmp319
	movq	%rdx, %rsi	# tmp318,
	movq	%rax, %rdi	# tmp319,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L48:
.LBE4:
.LBB5:
	.loc 1 334 0
	movq	-160(%rbp), %rax	# t2, tmp320
	movq	8(%rax), %rdx	# t2_4->common.type, D.21495
	movq	-152(%rbp), %rax	# t1, tmp321
	movq	8(%rax), %rax	# t1_1->common.type, D.21495
	movq	%rdx, %rsi	# D.21495,
	movq	%rax, %rdi	# D.21495,
	call	common_type	#
	movq	%rax, -32(%rbp)	# tmp322, valtype
	.loc 1 335 0
	movq	-152(%rbp), %rax	# t1, tmp323
	movq	24(%rax), %rax	# t1_1->type.values, tmp324
	movq	%rax, -120(%rbp)	# tmp324, p1
	.loc 1 336 0
	movq	-160(%rbp), %rax	# t2, tmp325
	movq	24(%rax), %rax	# t2_4->type.values, tmp326
	movq	%rax, -112(%rbp)	# tmp326, p2
	.loc 1 342 0
	movq	-152(%rbp), %rax	# t1, tmp327
	movq	8(%rax), %rax	# t1_1->common.type, D.21495
	cmpq	-32(%rbp), %rax	# valtype, D.21495
	jne	.L71	#,
	.loc 1 342 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# t2, tmp328
	movq	24(%rax), %rax	# t2_4->type.values, D.21495
	testq	%rax, %rax	# D.21495
	jne	.L71	#,
	.loc 1 343 0 is_stmt 1
	movq	-72(%rbp), %rdx	# attributes, tmp329
	movq	-152(%rbp), %rax	# t1, tmp330
	movq	%rdx, %rsi	# tmp329,
	movq	%rax, %rdi	# tmp330,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L71:
	.loc 1 344 0
	movq	-160(%rbp), %rax	# t2, tmp331
	movq	8(%rax), %rax	# t2_4->common.type, D.21495
	cmpq	-32(%rbp), %rax	# valtype, D.21495
	jne	.L72	#,
	.loc 1 344 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# t1, tmp332
	movq	24(%rax), %rax	# t1_1->type.values, D.21495
	testq	%rax, %rax	# D.21495
	jne	.L72	#,
	.loc 1 345 0 is_stmt 1
	movq	-72(%rbp), %rdx	# attributes, tmp333
	movq	-160(%rbp), %rax	# t2, tmp334
	movq	%rdx, %rsi	# tmp333,
	movq	%rax, %rdi	# tmp334,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L72:
	.loc 1 348 0
	movq	-152(%rbp), %rax	# t1, tmp335
	movq	24(%rax), %rax	# t1_1->type.values, D.21495
	testq	%rax, %rax	# D.21495
	jne	.L73	#,
	.loc 1 350 0
	movq	-160(%rbp), %rax	# t2, tmp336
	movq	24(%rax), %rdx	# t2_4->type.values, D.21495
	movq	-32(%rbp), %rax	# valtype, tmp337
	movq	%rdx, %rsi	# D.21495,
	movq	%rax, %rdi	# tmp337,
	call	build_function_type	#
	movq	%rax, -152(%rbp)	# tmp338, t1
	.loc 1 351 0
	movq	-72(%rbp), %rdx	# attributes, tmp339
	movq	-152(%rbp), %rax	# t1, tmp340
	movq	%rdx, %rsi	# tmp339,
	movq	%rax, %rdi	# tmp340,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L73:
	.loc 1 353 0
	movq	-160(%rbp), %rax	# t2, tmp341
	movq	24(%rax), %rax	# t2_4->type.values, D.21495
	testq	%rax, %rax	# D.21495
	jne	.L74	#,
	.loc 1 355 0
	movq	-152(%rbp), %rax	# t1, tmp342
	movq	24(%rax), %rdx	# t1_1->type.values, D.21495
	movq	-32(%rbp), %rax	# valtype, tmp343
	movq	%rdx, %rsi	# D.21495,
	movq	%rax, %rdi	# tmp343,
	call	build_function_type	#
	movq	%rax, -152(%rbp)	# tmp344, t1
	.loc 1 356 0
	movq	-72(%rbp), %rdx	# attributes, tmp345
	movq	-152(%rbp), %rax	# t1, tmp346
	movq	%rdx, %rsi	# tmp345,
	movq	%rax, %rdi	# tmp346,
	call	build_type_attribute_variant	#
	jmp	.L30	#
.L74:
	.loc 1 362 0
	movl	$0, %edi	#,
	call	pushlevel	#
	.loc 1 363 0
	movl	$1, %edi	#,
	call	declare_parm_level	#
	.loc 1 365 0
	movq	-120(%rbp), %rax	# p1, tmp347
	movq	%rax, %rdi	# tmp347,
	call	list_length	#
	movl	%eax, -124(%rbp)	# tmp348, len
	.loc 1 366 0
	movq	$0, -104(%rbp)	#, newargs
	.loc 1 368 0
	movl	$0, -136(%rbp)	#, i
	jmp	.L75	#
.L76:
	.loc 1 369 0 discriminator 2
	movq	-104(%rbp), %rax	# newargs, tmp349
	movq	%rax, %rdx	# tmp349,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -104(%rbp)	# tmp350, newargs
	.loc 1 368 0 discriminator 2
	addl	$1, -136(%rbp)	#, i
.L75:
	.loc 1 368 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# i, tmp351
	cmpl	-124(%rbp), %eax	# len, tmp351
	jl	.L76	#,
	.loc 1 371 0 is_stmt 1
	movq	-104(%rbp), %rax	# newargs, tmp352
	movq	%rax, -96(%rbp)	# tmp352, n
	.loc 1 373 0
	jmp	.L77	#
.L91:
	.loc 1 378 0
	movq	-120(%rbp), %rax	# p1, tmp353
	movq	32(%rax), %rax	# p1_5->list.value, D.21495
	testq	%rax, %rax	# D.21495
	jne	.L78	#,
	.loc 1 380 0
	movq	-112(%rbp), %rax	# p2, tmp354
	movq	32(%rax), %rdx	# p2_6->list.value, D.21495
	movq	-96(%rbp), %rax	# n, tmp355
	movq	%rdx, 32(%rax)	# D.21495, n_8->list.value
	.loc 1 381 0
	jmp	.L79	#
.L78:
	.loc 1 383 0
	movq	-112(%rbp), %rax	# p2, tmp356
	movq	32(%rax), %rax	# p2_6->list.value, D.21495
	testq	%rax, %rax	# D.21495
	jne	.L80	#,
	.loc 1 385 0
	movq	-120(%rbp), %rax	# p1, tmp357
	movq	32(%rax), %rdx	# p1_5->list.value, D.21495
	movq	-96(%rbp), %rax	# n, tmp358
	movq	%rdx, 32(%rax)	# D.21495, n_8->list.value
	.loc 1 386 0
	jmp	.L79	#
.L80:
	.loc 1 392 0
	movq	-120(%rbp), %rax	# p1, tmp359
	movq	32(%rax), %rax	# p1_5->list.value, D.21495
	movzbl	16(%rax), %eax	# _163->common.code, D.21497
	cmpb	$21, %al	#, D.21497
	jne	.L81	#,
	.loc 1 393 0
	movq	-120(%rbp), %rax	# p1, tmp360
	movq	32(%rax), %rdx	# p1_5->list.value, D.21495
	movq	-112(%rbp), %rax	# p2, tmp361
	movq	32(%rax), %rax	# p2_6->list.value, D.21495
	cmpq	%rax, %rdx	# D.21495, D.21495
	je	.L81	#,
.LBB6:
	.loc 1 396 0
	movq	-120(%rbp), %rax	# p1, tmp362
	movq	32(%rax), %rax	# p1_5->list.value, D.21495
	movq	24(%rax), %rax	# _167->type.values, tmp363
	movq	%rax, -88(%rbp)	# tmp363, memb
	jmp	.L82	#
.L85:
	.loc 1 398 0
	movq	-112(%rbp), %rax	# p2, tmp364
	movq	32(%rax), %rdx	# p2_6->list.value, D.21495
	movq	-88(%rbp), %rax	# memb, tmp365
	movq	8(%rax), %rax	# memb_10->common.type, D.21495
	movq	%rdx, %rsi	# D.21495,
	movq	%rax, %rdi	# D.21495,
	call	comptypes	#
	testl	%eax, %eax	# D.21500
	je	.L83	#,
	.loc 1 400 0
	movq	-112(%rbp), %rax	# p2, tmp366
	movq	32(%rax), %rdx	# p2_6->list.value, D.21495
	movq	-96(%rbp), %rax	# n, tmp367
	movq	%rdx, 32(%rax)	# D.21495, n_8->list.value
	.loc 1 401 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.7
	testl	%eax, %eax	# pedantic.7
	je	.L84	#,
	.loc 1 402 0
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 403 0
	jmp	.L79	#
.L84:
	jmp	.L79	#
.L83:
	.loc 1 397 0
	movq	-88(%rbp), %rax	# memb, tmp368
	movq	(%rax), %rax	# memb_10->common.chain, tmp369
	movq	%rax, -88(%rbp)	# tmp369, memb
.L82:
	.loc 1 396 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, memb
	jne	.L85	#,
.L81:
.LBE6:
	.loc 1 406 0
	movq	-112(%rbp), %rax	# p2, tmp370
	movq	32(%rax), %rax	# p2_6->list.value, D.21495
	movzbl	16(%rax), %eax	# _175->common.code, D.21497
	cmpb	$21, %al	#, D.21497
	jne	.L86	#,
	.loc 1 407 0
	movq	-112(%rbp), %rax	# p2, tmp371
	movq	32(%rax), %rdx	# p2_6->list.value, D.21495
	movq	-120(%rbp), %rax	# p1, tmp372
	movq	32(%rax), %rax	# p1_5->list.value, D.21495
	cmpq	%rax, %rdx	# D.21495, D.21495
	je	.L86	#,
.LBB7:
	.loc 1 410 0
	movq	-112(%rbp), %rax	# p2, tmp373
	movq	32(%rax), %rax	# p2_6->list.value, D.21495
	movq	24(%rax), %rax	# _179->type.values, tmp374
	movq	%rax, -80(%rbp)	# tmp374, memb
	jmp	.L87	#
.L90:
	.loc 1 412 0
	movq	-120(%rbp), %rax	# p1, tmp375
	movq	32(%rax), %rdx	# p1_5->list.value, D.21495
	movq	-80(%rbp), %rax	# memb, tmp376
	movq	8(%rax), %rax	# memb_11->common.type, D.21495
	movq	%rdx, %rsi	# D.21495,
	movq	%rax, %rdi	# D.21495,
	call	comptypes	#
	testl	%eax, %eax	# D.21500
	je	.L88	#,
	.loc 1 414 0
	movq	-120(%rbp), %rax	# p1, tmp377
	movq	32(%rax), %rdx	# p1_5->list.value, D.21495
	movq	-96(%rbp), %rax	# n, tmp378
	movq	%rdx, 32(%rax)	# D.21495, n_8->list.value
	.loc 1 415 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.8
	testl	%eax, %eax	# pedantic.8
	je	.L89	#,
	.loc 1 416 0
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 417 0
	jmp	.L79	#
.L89:
	jmp	.L79	#
.L88:
	.loc 1 411 0
	movq	-80(%rbp), %rax	# memb, tmp379
	movq	(%rax), %rax	# memb_11->common.chain, tmp380
	movq	%rax, -80(%rbp)	# tmp380, memb
.L87:
	.loc 1 410 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, memb
	jne	.L90	#,
.L86:
.LBE7:
	.loc 1 420 0
	movq	-112(%rbp), %rax	# p2, tmp381
	movq	32(%rax), %rdx	# p2_6->list.value, D.21495
	movq	-120(%rbp), %rax	# p1, tmp382
	movq	32(%rax), %rax	# p1_5->list.value, D.21495
	movq	%rdx, %rsi	# D.21495,
	movq	%rax, %rdi	# D.21495,
	call	common_type	#
	movq	-96(%rbp), %rdx	# n, tmp383
	movq	%rax, 32(%rdx)	# D.21495, n_8->list.value
.L79:
	.loc 1 374 0
	movq	-120(%rbp), %rax	# p1, tmp384
	movq	(%rax), %rax	# p1_5->common.chain, tmp385
	movq	%rax, -120(%rbp)	# tmp385, p1
	movq	-112(%rbp), %rax	# p2, tmp386
	movq	(%rax), %rax	# p2_6->common.chain, tmp387
	movq	%rax, -112(%rbp)	# tmp387, p2
	movq	-96(%rbp), %rax	# n, tmp388
	movq	(%rax), %rax	# n_8->common.chain, tmp389
	movq	%rax, -96(%rbp)	# tmp389, n
.L77:
	.loc 1 373 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, p1
	jne	.L91	#,
	.loc 1 424 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	poplevel	#
	.loc 1 426 0
	movq	-104(%rbp), %rdx	# newargs, tmp390
	movq	-32(%rbp), %rax	# valtype, tmp391
	movq	%rdx, %rsi	# tmp390,
	movq	%rax, %rdi	# tmp391,
	call	build_function_type	#
	movq	%rax, -152(%rbp)	# tmp392, t1
.L43:
.LBE5:
	.loc 1 431 0
	movq	-72(%rbp), %rdx	# attributes, tmp393
	movq	-152(%rbp), %rax	# t1, tmp394
	movq	%rdx, %rsi	# tmp393,
	movq	%rax, %rdi	# tmp394,
	call	build_type_attribute_variant	#
.L30:
	.loc 1 434 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	common_type, .-common_type
	.globl	comptypes
	.type	comptypes, @function
comptypes:
.LFB6:
	.loc 1 443 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# type1, type1
	movq	%rsi, -64(%rbp)	# type2, type2
	.loc 1 444 0
	movq	-56(%rbp), %rax	# type1, tmp149
	movq	%rax, -32(%rbp)	# tmp149, t1
	.loc 1 445 0
	movq	-64(%rbp), %rax	# type2, tmp150
	movq	%rax, -24(%rbp)	# tmp150, t2
	.loc 1 450 0
	movq	-32(%rbp), %rax	# t1, tmp151
	cmpq	-24(%rbp), %rax	# t2, tmp151
	je	.L93	#,
	.loc 1 450 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, t1
	je	.L93	#,
	cmpq	$0, -24(%rbp)	#, t2
	je	.L93	#,
	.loc 1 451 0 is_stmt 1
	movq	-32(%rbp), %rax	# t1, tmp152
	movzbl	16(%rax), %eax	# t1_17->common.code, D.21504
	testb	%al, %al	# D.21504
	je	.L93	#,
	.loc 1 451 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t2, tmp153
	movzbl	16(%rax), %eax	# t2_19->common.code, D.21504
	testb	%al, %al	# D.21504
	jne	.L94	#,
.L93:
	.loc 1 452 0 is_stmt 1
	movl	$1, %eax	#, D.21503
	jmp	.L95	#
.L94:
	.loc 1 456 0
	movq	-32(%rbp), %rax	# t1, tmp154
	movzbl	16(%rax), %eax	# t1_17->common.code, D.21504
	cmpb	$6, %al	#, D.21504
	jne	.L96	#,
	.loc 1 456 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t1, tmp155
	movzbl	62(%rax), %eax	# *t1_17, D.21504
	andl	$2, %eax	#, D.21504
	testb	%al, %al	# D.21504
	je	.L96	#,
	.loc 1 457 0 is_stmt 1
	movq	-32(%rbp), %rax	# t1, tmp156
	movq	24(%rax), %rax	# t1_17->type.values, D.21505
	testq	%rax, %rax	# D.21505
	je	.L96	#,
	.loc 1 458 0
	movq	-32(%rbp), %rax	# t1, tmp157
	movq	24(%rax), %rax	# t1_17->type.values, tmp158
	movq	%rax, -32(%rbp)	# tmp158, t1
.L96:
	.loc 1 460 0
	movq	-24(%rbp), %rax	# t2, tmp159
	movzbl	16(%rax), %eax	# t2_19->common.code, D.21504
	cmpb	$6, %al	#, D.21504
	jne	.L97	#,
	.loc 1 460 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t2, tmp160
	movzbl	62(%rax), %eax	# *t2_19, D.21504
	andl	$2, %eax	#, D.21504
	testb	%al, %al	# D.21504
	je	.L97	#,
	.loc 1 461 0 is_stmt 1
	movq	-24(%rbp), %rax	# t2, tmp161
	movq	24(%rax), %rax	# t2_19->type.values, D.21505
	testq	%rax, %rax	# D.21505
	je	.L97	#,
	.loc 1 462 0
	movq	-24(%rbp), %rax	# t2, tmp162
	movq	24(%rax), %rax	# t2_19->type.values, tmp163
	movq	%rax, -24(%rbp)	# tmp163, t2
.L97:
	.loc 1 467 0
	movq	-32(%rbp), %rax	# t1, tmp164
	movzbl	16(%rax), %eax	# t1_1->common.code, D.21504
	cmpb	$10, %al	#, D.21504
	jne	.L98	#,
	.loc 1 468 0
	movq	-32(%rbp), %rax	# t1, tmp165
	movzbl	17(%rax), %eax	# *t1_1, tmp168
	shrb	$5, %al	#, D.21506
	andl	$1, %eax	#, D.21506
	movzbl	%al, %edx	# D.21506, D.21503
	movq	-32(%rbp), %rax	# t1, tmp169
	movzwl	60(%rax), %eax	# *t1_1, tmp172
	andw	$511, %ax	#, D.21507
	movzwl	%ax, %eax	# D.21507, D.21508
	movl	%edx, %esi	# D.21503,
	movl	%eax, %edi	# D.21508,
	call	type_for_size	#
	movq	%rax, -32(%rbp)	# tmp173, t1
.L98:
	.loc 1 469 0
	movq	-24(%rbp), %rax	# t2, tmp174
	movzbl	16(%rax), %eax	# t2_3->common.code, D.21504
	cmpb	$10, %al	#, D.21504
	jne	.L99	#,
	.loc 1 470 0
	movq	-24(%rbp), %rax	# t2, tmp175
	movzbl	17(%rax), %eax	# *t2_3, tmp178
	shrb	$5, %al	#, D.21506
	andl	$1, %eax	#, D.21506
	movzbl	%al, %edx	# D.21506, D.21503
	movq	-24(%rbp), %rax	# t2, tmp179
	movzwl	60(%rax), %eax	# *t2_3, tmp182
	andw	$511, %ax	#, D.21507
	movzwl	%ax, %eax	# D.21507, D.21508
	movl	%edx, %esi	# D.21503,
	movl	%eax, %edi	# D.21508,
	call	type_for_size	#
	movq	%rax, -24(%rbp)	# tmp183, t2
.L99:
	.loc 1 472 0
	movq	-32(%rbp), %rax	# t1, tmp184
	cmpq	-24(%rbp), %rax	# t2, tmp184
	jne	.L100	#,
	.loc 1 473 0
	movl	$1, %eax	#, D.21503
	jmp	.L95	#
.L100:
	.loc 1 477 0
	movq	-32(%rbp), %rax	# t1, tmp185
	movzbl	16(%rax), %edx	# t1_2->common.code, D.21504
	movq	-24(%rbp), %rax	# t2, tmp186
	movzbl	16(%rax), %eax	# t2_4->common.code, D.21504
	cmpb	%al, %dl	# D.21504, D.21504
	je	.L101	#,
	.loc 1 477 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.21503
	jmp	.L95	#
.L101:
	.loc 1 481 0 is_stmt 1
	movq	-32(%rbp), %rax	# t1, tmp187
	movzbl	17(%rax), %eax	# *t1_2, tmp190
	shrb	$4, %al	#, D.21506
	andl	$1, %eax	#, D.21506
	movzbl	%al, %edx	# D.21506, D.21503
	movq	-32(%rbp), %rax	# t1, tmp191
	movzbl	17(%rax), %eax	# *t1_2, tmp194
	shrb	$3, %al	#, D.21506
	andl	$1, %eax	#, D.21506
	movzbl	%al, %eax	# D.21506, D.21503
	addl	%eax, %eax	# D.21503
	orl	%eax, %edx	# D.21503, D.21503
	movq	-32(%rbp), %rax	# t1, tmp195
	movzbl	62(%rax), %eax	# *t1_2, tmp198
	shrb	$5, %al	#, D.21506
	andl	$1, %eax	#, D.21506
	movzbl	%al, %eax	# D.21506, D.21503
	sall	$2, %eax	#, D.21503
	orl	%eax, %edx	# D.21503, D.21503
	movq	-32(%rbp), %rax	# t1, tmp199
	movzbl	16(%rax), %eax	# t1_2->common.code, D.21504
	cmpb	$20, %al	#, D.21504
	jne	.L102	#,
	.loc 1 481 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t1, tmp200
	movq	8(%rax), %rax	# t1_2->common.type, D.21505
	testq	%rax, %rax	# D.21505
	je	.L102	#,
	.loc 1 481 0 discriminator 3
	movl	$1, %eax	#, iftmp.9
	jmp	.L103	#
.L102:
	.loc 1 481 0 discriminator 2
	movl	$0, %eax	#, iftmp.9
.L103:
	.loc 1 481 0 discriminator 4
	sall	$3, %eax	#, D.21503
	movl	%edx, %ecx	# D.21503, D.21503
	orl	%eax, %ecx	# D.21503, D.21503
	movq	-24(%rbp), %rax	# t2, tmp201
	movzbl	17(%rax), %eax	# *t2_4, tmp204
	shrb	$4, %al	#, D.21506
	andl	$1, %eax	#, D.21506
	movzbl	%al, %edx	# D.21506, D.21503
	movq	-24(%rbp), %rax	# t2, tmp205
	movzbl	17(%rax), %eax	# *t2_4, tmp208
	shrb	$3, %al	#, D.21506
	andl	$1, %eax	#, D.21506
	movzbl	%al, %eax	# D.21506, D.21503
	addl	%eax, %eax	# D.21503
	orl	%eax, %edx	# D.21503, D.21503
	movq	-24(%rbp), %rax	# t2, tmp209
	movzbl	62(%rax), %eax	# *t2_4, tmp212
	shrb	$5, %al	#, D.21506
	andl	$1, %eax	#, D.21506
	movzbl	%al, %eax	# D.21506, D.21503
	sall	$2, %eax	#, D.21503
	orl	%eax, %edx	# D.21503, D.21503
	movq	-24(%rbp), %rax	# t2, tmp213
	movzbl	16(%rax), %eax	# t2_4->common.code, D.21504
	cmpb	$20, %al	#, D.21504
	jne	.L104	#,
	.loc 1 481 0 discriminator 1
	movq	-24(%rbp), %rax	# t2, tmp214
	movq	8(%rax), %rax	# t2_4->common.type, D.21505
	testq	%rax, %rax	# D.21505
	je	.L104	#,
	.loc 1 481 0 discriminator 3
	movl	$1, %eax	#, iftmp.10
	jmp	.L105	#
.L104:
	.loc 1 481 0 discriminator 2
	movl	$0, %eax	#, iftmp.10
.L105:
	.loc 1 481 0 discriminator 4
	sall	$3, %eax	#, D.21503
	orl	%edx, %eax	# D.21503, D.21503
	cmpl	%eax, %ecx	# D.21503, D.21503
	je	.L106	#,
	.loc 1 482 0 is_stmt 1
	movl	$0, %eax	#, D.21503
	jmp	.L95	#
.L106:
	.loc 1 488 0
	movq	-32(%rbp), %rax	# t1, tmp215
	movq	128(%rax), %rdx	# t1_2->type.main_variant, D.21505
	movq	-24(%rbp), %rax	# t2, tmp216
	movq	128(%rax), %rax	# t2_4->type.main_variant, D.21505
	cmpq	%rax, %rdx	# D.21505, D.21505
	jne	.L107	#,
	.loc 1 489 0
	movl	$1, %eax	#, D.21503
	jmp	.L95	#
.L107:
	.loc 1 492 0
	movq	targetm+264(%rip), %rax	# targetm.comp_type_attributes, D.21509
	movq	-24(%rbp), %rcx	# t2, tmp217
	movq	-32(%rbp), %rdx	# t1, tmp218
	movq	%rcx, %rsi	# tmp217,
	movq	%rdx, %rdi	# tmp218,
	call	*%rax	# D.21509
	movl	%eax, -36(%rbp)	# tmp219, attrval
	cmpl	$0, -36(%rbp)	#, attrval
	jne	.L108	#,
	.loc 1 493 0
	movl	$0, %eax	#, D.21503
	jmp	.L95	#
.L108:
	.loc 1 496 0
	movl	$0, -40(%rbp)	#, val
	.loc 1 498 0
	movq	-32(%rbp), %rax	# t1, tmp220
	movzbl	16(%rax), %eax	# t1_2->common.code, D.21504
	movzbl	%al, %eax	# D.21504, D.21508
	cmpl	$18, %eax	#, D.21508
	je	.L110	#,
	cmpl	$18, %eax	#, D.21508
	ja	.L111	#,
	cmpl	$13, %eax	#, D.21508
	je	.L112	#,
	.loc 1 554 0
	jmp	.L117	#
.L111:
	.loc 1 498 0
	cmpl	$20, %eax	#, D.21508
	je	.L113	#,
	cmpl	$23, %eax	#, D.21508
	je	.L114	#,
	.loc 1 554 0
	jmp	.L117	#
.L112:
	.loc 1 501 0
	movq	-32(%rbp), %rax	# t1, tmp221
	movq	8(%rax), %rdx	# t1_2->common.type, D.21505
	movq	-24(%rbp), %rax	# t2, tmp222
	movq	8(%rax), %rax	# t2_4->common.type, D.21505
	.loc 1 502 0
	cmpq	%rax, %rdx	# D.21505, D.21505
	je	.L115	#,
	.loc 1 502 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t2, tmp223
	movq	8(%rax), %rdx	# t2_4->common.type, D.21505
	movq	-32(%rbp), %rax	# t1, tmp224
	movq	8(%rax), %rax	# t1_2->common.type, D.21505
	movq	%rdx, %rsi	# D.21505,
	movq	%rax, %rdi	# D.21505,
	call	comptypes	#
	jmp	.L116	#
.L115:
	.loc 1 502 0 discriminator 2
	movl	$1, %eax	#, iftmp.11
.L116:
	.loc 1 501 0 is_stmt 1
	movl	%eax, -40(%rbp)	# iftmp.11, val
	.loc 1 503 0
	jmp	.L117	#
.L114:
	.loc 1 506 0
	movq	-24(%rbp), %rdx	# t2, tmp225
	movq	-32(%rbp), %rax	# t1, tmp226
	movq	%rdx, %rsi	# tmp225,
	movq	%rax, %rdi	# tmp226,
	call	function_types_compatible_p	#
	movl	%eax, -40(%rbp)	# tmp227, val
	.loc 1 507 0
	jmp	.L117	#
.L110:
.LBB8:
	.loc 1 511 0
	movq	-32(%rbp), %rax	# t1, tmp228
	movq	24(%rax), %rax	# t1_2->type.values, tmp229
	movq	%rax, -16(%rbp)	# tmp229, d1
	.loc 1 512 0
	movq	-24(%rbp), %rax	# t2, tmp230
	movq	24(%rax), %rax	# t2_4->type.values, tmp231
	movq	%rax, -8(%rbp)	# tmp231, d2
	.loc 1 515 0
	movl	$1, -40(%rbp)	#, val
	.loc 1 518 0
	movq	-32(%rbp), %rax	# t1, tmp232
	movq	8(%rax), %rdx	# t1_2->common.type, D.21505
	movq	-24(%rbp), %rax	# t2, tmp233
	movq	8(%rax), %rax	# t2_4->common.type, D.21505
	cmpq	%rax, %rdx	# D.21505, D.21505
	je	.L118	#,
	.loc 1 519 0
	movq	-24(%rbp), %rax	# t2, tmp234
	movq	8(%rax), %rdx	# t2_4->common.type, D.21505
	movq	-32(%rbp), %rax	# t1, tmp235
	movq	8(%rax), %rax	# t1_2->common.type, D.21505
	movq	%rdx, %rsi	# D.21505,
	movq	%rax, %rdi	# D.21505,
	call	comptypes	#
	movl	%eax, -40(%rbp)	# tmp236, val
	cmpl	$0, -40(%rbp)	#, val
	jne	.L118	#,
	.loc 1 520 0
	movl	$0, %eax	#, D.21503
	jmp	.L95	#
.L118:
	.loc 1 523 0
	cmpq	$0, -16(%rbp)	#, d1
	je	.L117	#,
	.loc 1 523 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, d2
	je	.L117	#,
	movq	-16(%rbp), %rax	# d1, tmp237
	cmpq	-8(%rbp), %rax	# d2, tmp237
	je	.L117	#,
	.loc 1 526 0 is_stmt 1
	movq	-16(%rbp), %rax	# d1, tmp238
	movq	112(%rax), %rax	# d1_98->type.maxval, D.21505
	testq	%rax, %rax	# D.21505
	sete	%al	#, tmp239
	movb	%al, -44(%rbp)	# tmp239, d1_zero
	.loc 1 527 0
	movq	-8(%rbp), %rax	# d2, tmp240
	movq	112(%rax), %rax	# d2_99->type.maxval, D.21505
	testq	%rax, %rax	# D.21505
	sete	%al	#, tmp241
	movb	%al, -43(%rbp)	# tmp241, d2_zero
	.loc 1 529 0
	movzbl	-44(%rbp), %eax	# d1_zero, tmp242
	xorl	$1, %eax	#, D.21510
	.loc 1 530 0
	testb	%al, %al	# D.21510
	je	.L119	#,
	.loc 1 530 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# d1, tmp243
	movq	104(%rax), %rax	# d1_98->type.minval, D.21505
	movzbl	16(%rax), %eax	# _112->common.code, D.21504
	cmpb	$25, %al	#, D.21504
	jne	.L120	#,
	.loc 1 531 0 is_stmt 1
	movq	-16(%rbp), %rax	# d1, tmp244
	movq	112(%rax), %rax	# d1_98->type.maxval, D.21505
	movzbl	16(%rax), %eax	# _114->common.code, D.21504
	cmpb	$25, %al	#, D.21504
	je	.L119	#,
.L120:
	.loc 1 530 0 discriminator 3
	movl	$1, %eax	#, iftmp.12
	jmp	.L121	#
.L119:
	.loc 1 530 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.12
.L121:
	.loc 1 529 0 is_stmt 1
	movb	%al, -42(%rbp)	# iftmp.12, d1_variable
	andb	$1, -42(%rbp)	#, d1_variable
	.loc 1 532 0
	movzbl	-43(%rbp), %eax	# d2_zero, tmp245
	xorl	$1, %eax	#, D.21510
	.loc 1 533 0
	testb	%al, %al	# D.21510
	je	.L122	#,
	.loc 1 533 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# d2, tmp246
	movq	104(%rax), %rax	# d2_99->type.minval, D.21505
	movzbl	16(%rax), %eax	# _120->common.code, D.21504
	cmpb	$25, %al	#, D.21504
	jne	.L123	#,
	.loc 1 534 0 is_stmt 1
	movq	-8(%rbp), %rax	# d2, tmp247
	movq	112(%rax), %rax	# d2_99->type.maxval, D.21505
	movzbl	16(%rax), %eax	# _122->common.code, D.21504
	cmpb	$25, %al	#, D.21504
	je	.L122	#,
.L123:
	.loc 1 533 0 discriminator 3
	movl	$1, %eax	#, iftmp.13
	jmp	.L124	#
.L122:
	.loc 1 533 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.13
.L124:
	.loc 1 532 0 is_stmt 1
	movb	%al, -41(%rbp)	# iftmp.13, d2_variable
	andb	$1, -41(%rbp)	#, d2_variable
	.loc 1 536 0
	cmpb	$0, -42(%rbp)	#, d1_variable
	jne	.L117	#,
	.loc 1 536 0 is_stmt 0 discriminator 1
	cmpb	$0, -41(%rbp)	#, d2_variable
	jne	.L117	#,
	.loc 1 538 0 is_stmt 1
	cmpb	$0, -44(%rbp)	#, d1_zero
	je	.L125	#,
	.loc 1 538 0 is_stmt 0 discriminator 1
	cmpb	$0, -43(%rbp)	#, d2_zero
	je	.L125	#,
	.loc 1 539 0 is_stmt 1
	jmp	.L117	#
.L125:
	.loc 1 540 0
	cmpb	$0, -44(%rbp)	#, d1_zero
	jne	.L126	#,
	.loc 1 540 0 is_stmt 0 discriminator 1
	cmpb	$0, -43(%rbp)	#, d2_zero
	jne	.L126	#,
	.loc 1 541 0 is_stmt 1
	movq	-8(%rbp), %rax	# d2, tmp248
	movq	104(%rax), %rdx	# d2_99->type.minval, D.21505
	movq	-16(%rbp), %rax	# d1, tmp249
	movq	104(%rax), %rax	# d1_98->type.minval, D.21505
	movq	%rdx, %rsi	# D.21505,
	movq	%rax, %rdi	# D.21505,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21503
	je	.L126	#,
	.loc 1 542 0
	movq	-8(%rbp), %rax	# d2, tmp250
	movq	112(%rax), %rdx	# d2_99->type.maxval, D.21505
	movq	-16(%rbp), %rax	# d1, tmp251
	movq	112(%rax), %rax	# d1_98->type.maxval, D.21505
	movq	%rdx, %rsi	# D.21505,
	movq	%rax, %rdi	# D.21505,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21503
	jne	.L127	#,
.L126:
	.loc 1 543 0
	movl	$0, -40(%rbp)	#, val
	.loc 1 545 0
	jmp	.L117	#
.L127:
	jmp	.L117	#
.L113:
.LBE8:
	.loc 1 549 0
	movq	-24(%rbp), %rcx	# t2, tmp252
	movq	-32(%rbp), %rax	# t1, tmp253
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp252,
	movq	%rax, %rdi	# tmp253,
	call	maybe_objc_comptypes	#
	cmpl	$1, %eax	#, D.21503
	jne	.L128	#,
	.loc 1 550 0
	movl	$1, -40(%rbp)	#, val
	.loc 1 551 0
	jmp	.L132	#
.L128:
.L132:
	nop
.L117:
	.loc 1 556 0
	cmpl	$2, -36(%rbp)	#, attrval
	jne	.L129	#,
	.loc 1 556 0 is_stmt 0 discriminator 2
	cmpl	$1, -40(%rbp)	#, val
	je	.L130	#,
.L129:
	.loc 1 556 0 discriminator 1
	movl	-40(%rbp), %eax	# val, iftmp.14
	jmp	.L131	#
.L130:
	movl	$2, %eax	#, iftmp.14
.L131:
.L95:
	.loc 1 557 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	comptypes, .-comptypes
	.section	.rodata
	.align 8
.LC11:
	.string	"types are not quite compatible"
	.text
	.type	comp_target_types, @function
comp_target_types:
.LFB7:
	.loc 1 565 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ttl, ttl
	movq	%rsi, -32(%rbp)	# ttr, ttr
	.loc 1 569 0
	movq	-32(%rbp), %rcx	# ttr, tmp66
	movq	-24(%rbp), %rax	# ttl, tmp67
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	maybe_objc_comptypes	#
	movl	%eax, -4(%rbp)	# tmp68, val
	cmpl	$0, -4(%rbp)	#, val
	js	.L134	#,
	.loc 1 570 0
	movl	-4(%rbp), %eax	# val, D.21512
	jmp	.L135	#
.L134:
	.loc 1 573 0
	movq	-32(%rbp), %rax	# ttr, tmp69
	movq	8(%rax), %rax	# ttr_3(D)->common.type, D.21513
	.loc 1 572 0
	movq	128(%rax), %rdx	# _6->type.main_variant, D.21513
	movq	-24(%rbp), %rax	# ttl, tmp70
	movq	8(%rax), %rax	# ttl_2(D)->common.type, D.21513
	movq	128(%rax), %rax	# _8->type.main_variant, D.21513
	movq	%rdx, %rsi	# D.21513,
	movq	%rax, %rdi	# D.21513,
	call	comptypes	#
	movl	%eax, -4(%rbp)	# tmp71, val
	.loc 1 575 0
	cmpl	$2, -4(%rbp)	#, val
	jne	.L136	#,
	.loc 1 575 0 is_stmt 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.15
	testl	%eax, %eax	# pedantic.15
	je	.L136	#,
	.loc 1 576 0 is_stmt 1
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L136:
	.loc 1 577 0
	movl	-4(%rbp), %eax	# val, D.21512
.L135:
	.loc 1 578 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	comp_target_types, .-comp_target_types
	.type	function_types_compatible_p, @function
function_types_compatible_p:
.LFB8:
	.loc 1 592 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f1, f1
	movq	%rsi, -48(%rbp)	# f2, f2
	.loc 1 595 0
	movl	$1, -24(%rbp)	#, val
	.loc 1 598 0
	movq	-40(%rbp), %rax	# f1, tmp74
	movq	8(%rax), %rdx	# f1_7(D)->common.type, D.21516
	movq	-48(%rbp), %rax	# f2, tmp75
	movq	8(%rax), %rax	# f2_9(D)->common.type, D.21516
	cmpq	%rax, %rdx	# D.21516, D.21516
	je	.L138	#,
	.loc 1 599 0 discriminator 1
	movq	-48(%rbp), %rax	# f2, tmp76
	movq	8(%rax), %rdx	# f2_9(D)->common.type, D.21516
	movq	-40(%rbp), %rax	# f1, tmp77
	movq	8(%rax), %rax	# f1_7(D)->common.type, D.21516
	.loc 1 598 0 discriminator 1
	movq	%rdx, %rsi	# D.21516,
	movq	%rax, %rdi	# D.21516,
	call	comptypes	#
	movl	%eax, -24(%rbp)	# tmp78, val
	cmpl	$0, -24(%rbp)	#, val
	jne	.L138	#,
	.loc 1 600 0
	movl	$0, %eax	#, D.21515
	jmp	.L139	#
.L138:
	.loc 1 602 0
	movq	-40(%rbp), %rax	# f1, tmp79
	movq	24(%rax), %rax	# f1_7(D)->type.values, tmp80
	movq	%rax, -16(%rbp)	# tmp80, args1
	.loc 1 603 0
	movq	-48(%rbp), %rax	# f2, tmp81
	movq	24(%rax), %rax	# f2_9(D)->type.values, tmp82
	movq	%rax, -8(%rbp)	# tmp82, args2
	.loc 1 608 0
	cmpq	$0, -16(%rbp)	#, args1
	jne	.L140	#,
	.loc 1 610 0
	movq	-8(%rbp), %rax	# args2, tmp83
	movq	%rax, %rdi	# tmp83,
	call	self_promoting_args_p	#
	testl	%eax, %eax	# D.21515
	jne	.L141	#,
	.loc 1 611 0
	movl	$0, %eax	#, D.21515
	jmp	.L139	#
.L141:
	.loc 1 615 0
	movq	-40(%rbp), %rax	# f1, tmp84
	movq	136(%rax), %rax	# f1_7(D)->type.binfo, D.21516
	testq	%rax, %rax	# D.21516
	je	.L142	#,
	.loc 1 616 0
	movq	-40(%rbp), %rax	# f1, tmp85
	movq	136(%rax), %rdx	# f1_7(D)->type.binfo, D.21516
	movq	-8(%rbp), %rax	# args2, tmp86
	movq	%rdx, %rsi	# D.21516,
	movq	%rax, %rdi	# tmp86,
	call	type_lists_compatible_p	#
	cmpl	$1, %eax	#, D.21515
	je	.L142	#,
	.loc 1 617 0
	movl	$2, -24(%rbp)	#, val
.L142:
	.loc 1 618 0
	movl	-24(%rbp), %eax	# val, D.21515
	jmp	.L139	#
.L140:
	.loc 1 620 0
	cmpq	$0, -8(%rbp)	#, args2
	jne	.L143	#,
	.loc 1 622 0
	movq	-16(%rbp), %rax	# args1, tmp87
	movq	%rax, %rdi	# tmp87,
	call	self_promoting_args_p	#
	testl	%eax, %eax	# D.21515
	jne	.L144	#,
	.loc 1 623 0
	movl	$0, %eax	#, D.21515
	jmp	.L139	#
.L144:
	.loc 1 624 0
	movq	-48(%rbp), %rax	# f2, tmp88
	movq	136(%rax), %rax	# f2_9(D)->type.binfo, D.21516
	testq	%rax, %rax	# D.21516
	je	.L145	#,
	.loc 1 625 0
	movq	-48(%rbp), %rax	# f2, tmp89
	movq	136(%rax), %rdx	# f2_9(D)->type.binfo, D.21516
	movq	-16(%rbp), %rax	# args1, tmp90
	movq	%rdx, %rsi	# D.21516,
	movq	%rax, %rdi	# tmp90,
	call	type_lists_compatible_p	#
	cmpl	$1, %eax	#, D.21515
	je	.L145	#,
	.loc 1 626 0
	movl	$2, -24(%rbp)	#, val
.L145:
	.loc 1 627 0
	movl	-24(%rbp), %eax	# val, D.21515
	jmp	.L139	#
.L143:
	.loc 1 631 0
	movq	-8(%rbp), %rdx	# args2, tmp91
	movq	-16(%rbp), %rax	# args1, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	type_lists_compatible_p	#
	movl	%eax, -20(%rbp)	# tmp93, val1
	.loc 1 632 0
	cmpl	$1, -20(%rbp)	#, val1
	je	.L146	#,
	.loc 1 632 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# val1, iftmp.16
	jmp	.L147	#
.L146:
	.loc 1 632 0 discriminator 2
	movl	-24(%rbp), %eax	# val, iftmp.16
.L147:
.L139:
	.loc 1 633 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	function_types_compatible_p, .-function_types_compatible_p
	.type	type_lists_compatible_p, @function
type_lists_compatible_p:
.LFB9:
	.loc 1 642 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# args1, args1
	movq	%rsi, -48(%rbp)	# args2, args2
	.loc 1 644 0
	movl	$1, -24(%rbp)	#, val
	.loc 1 645 0
	movl	$0, -20(%rbp)	#, newval
.L171:
	.loc 1 649 0
	cmpq	$0, -40(%rbp)	#, args1
	jne	.L149	#,
	.loc 1 649 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, args2
	jne	.L149	#,
	.loc 1 650 0 is_stmt 1
	movl	-24(%rbp), %eax	# val, D.21517
	jmp	.L150	#
.L149:
	.loc 1 653 0
	cmpq	$0, -40(%rbp)	#, args1
	je	.L151	#,
	.loc 1 653 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, args2
	jne	.L152	#,
.L151:
	.loc 1 654 0 is_stmt 1
	movl	$0, %eax	#, D.21517
	jmp	.L150	#
.L152:
	.loc 1 659 0
	movq	-40(%rbp), %rax	# args1, tmp109
	movq	32(%rax), %rax	# args1_1->list.value, D.21518
	testq	%rax, %rax	# D.21518
	jne	.L153	#,
	.loc 1 661 0
	movq	-48(%rbp), %rax	# args2, tmp110
	movq	32(%rax), %rax	# args2_2->list.value, D.21518
	movq	%rax, %rdi	# D.21518,
	call	simple_type_promotes_to	#
	testq	%rax, %rax	# D.21518
	je	.L154	#,
	.loc 1 662 0
	movl	$0, %eax	#, D.21517
	jmp	.L150	#
.L153:
	.loc 1 664 0
	movq	-48(%rbp), %rax	# args2, tmp111
	movq	32(%rax), %rax	# args2_2->list.value, D.21518
	testq	%rax, %rax	# D.21518
	jne	.L155	#,
	.loc 1 666 0
	movq	-40(%rbp), %rax	# args1, tmp112
	movq	32(%rax), %rax	# args1_1->list.value, D.21518
	movq	%rax, %rdi	# D.21518,
	call	simple_type_promotes_to	#
	testq	%rax, %rax	# D.21518
	je	.L154	#,
	.loc 1 667 0
	movl	$0, %eax	#, D.21517
	jmp	.L150	#
.L155:
	.loc 1 670 0
	movq	-48(%rbp), %rax	# args2, tmp113
	movq	32(%rax), %rax	# args2_2->list.value, D.21518
	.loc 1 669 0
	movq	128(%rax), %rdx	# _23->type.main_variant, D.21518
	movq	-40(%rbp), %rax	# args1, tmp114
	movq	32(%rax), %rax	# args1_1->list.value, D.21518
	movq	128(%rax), %rax	# _25->type.main_variant, D.21518
	movq	%rdx, %rsi	# D.21518,
	movq	%rax, %rdi	# D.21518,
	call	comptypes	#
	movl	%eax, -20(%rbp)	# tmp115, newval
	cmpl	$0, -20(%rbp)	#, newval
	jne	.L154	#,
	.loc 1 674 0
	movq	-40(%rbp), %rax	# args1, tmp116
	movq	32(%rax), %rax	# args1_1->list.value, D.21518
	movzbl	16(%rax), %eax	# _28->common.code, D.21519
	cmpb	$21, %al	#, D.21519
	jne	.L156	#,
	.loc 1 675 0
	movq	-40(%rbp), %rax	# args1, tmp117
	movq	32(%rax), %rax	# args1_1->list.value, D.21518
	movq	96(%rax), %rax	# _30->type.name, D.21518
	testq	%rax, %rax	# D.21518
	je	.L157	#,
	.loc 1 676 0
	movq	-40(%rbp), %rax	# args1, tmp118
	movq	32(%rax), %rax	# args1_1->list.value, D.21518
	movzbl	62(%rax), %eax	# *_32, D.21519
	andl	$8, %eax	#, D.21519
	testb	%al, %al	# D.21519
	je	.L156	#,
.L157:
	.loc 1 677 0
	movq	-40(%rbp), %rax	# args1, tmp119
	movq	32(%rax), %rax	# args1_1->list.value, D.21518
	movq	32(%rax), %rax	# _35->type.size, D.21518
	movzbl	16(%rax), %eax	# _36->common.code, D.21519
	cmpb	$25, %al	#, D.21519
	jne	.L156	#,
	.loc 1 679 0
	movq	-48(%rbp), %rax	# args2, tmp120
	movq	32(%rax), %rax	# args2_2->list.value, D.21518
	.loc 1 678 0
	movq	32(%rax), %rdx	# _38->type.size, D.21518
	movq	-40(%rbp), %rax	# args1, tmp121
	movq	32(%rax), %rax	# args1_1->list.value, D.21518
	movq	32(%rax), %rax	# _40->type.size, D.21518
	movq	%rdx, %rsi	# D.21518,
	movq	%rax, %rdi	# D.21518,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21517
	je	.L156	#,
.LBB9:
	.loc 1 682 0
	movq	-40(%rbp), %rax	# args1, tmp122
	movq	32(%rax), %rax	# args1_1->list.value, D.21518
	movq	24(%rax), %rax	# _43->type.values, tmp123
	movq	%rax, -16(%rbp)	# tmp123, memb
	jmp	.L158	#
.L161:
	.loc 1 684 0
	movq	-48(%rbp), %rax	# args2, tmp124
	movq	32(%rax), %rdx	# args2_2->list.value, D.21518
	movq	-16(%rbp), %rax	# memb, tmp125
	movq	8(%rax), %rax	# memb_7->common.type, D.21518
	movq	%rdx, %rsi	# D.21518,
	movq	%rax, %rdi	# D.21518,
	call	comptypes	#
	testl	%eax, %eax	# D.21517
	je	.L159	#,
	.loc 1 685 0
	jmp	.L160	#
.L159:
	.loc 1 683 0
	movq	-16(%rbp), %rax	# memb, tmp126
	movq	(%rax), %rax	# memb_7->common.chain, tmp127
	movq	%rax, -16(%rbp)	# tmp127, memb
.L158:
	.loc 1 682 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, memb
	jne	.L161	#,
.L160:
	.loc 1 686 0
	cmpq	$0, -16(%rbp)	#, memb
	jne	.L162	#,
	.loc 1 687 0
	movl	$0, %eax	#, D.21517
	jmp	.L150	#
.L162:
.LBE9:
	.loc 1 680 0
	jmp	.L154	#
.L156:
	.loc 1 689 0
	movq	-48(%rbp), %rax	# args2, tmp128
	movq	32(%rax), %rax	# args2_2->list.value, D.21518
	movzbl	16(%rax), %eax	# _50->common.code, D.21519
	cmpb	$21, %al	#, D.21519
	jne	.L163	#,
	.loc 1 690 0
	movq	-48(%rbp), %rax	# args2, tmp129
	movq	32(%rax), %rax	# args2_2->list.value, D.21518
	movq	96(%rax), %rax	# _52->type.name, D.21518
	testq	%rax, %rax	# D.21518
	je	.L164	#,
	.loc 1 691 0
	movq	-48(%rbp), %rax	# args2, tmp130
	movq	32(%rax), %rax	# args2_2->list.value, D.21518
	movzbl	62(%rax), %eax	# *_54, D.21519
	andl	$8, %eax	#, D.21519
	testb	%al, %al	# D.21519
	je	.L163	#,
.L164:
	.loc 1 692 0
	movq	-48(%rbp), %rax	# args2, tmp131
	movq	32(%rax), %rax	# args2_2->list.value, D.21518
	movq	32(%rax), %rax	# _57->type.size, D.21518
	movzbl	16(%rax), %eax	# _58->common.code, D.21519
	cmpb	$25, %al	#, D.21519
	jne	.L163	#,
	.loc 1 694 0
	movq	-40(%rbp), %rax	# args1, tmp132
	movq	32(%rax), %rax	# args1_1->list.value, D.21518
	.loc 1 693 0
	movq	32(%rax), %rdx	# _60->type.size, D.21518
	movq	-48(%rbp), %rax	# args2, tmp133
	movq	32(%rax), %rax	# args2_2->list.value, D.21518
	movq	32(%rax), %rax	# _62->type.size, D.21518
	movq	%rdx, %rsi	# D.21518,
	movq	%rax, %rdi	# D.21518,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21517
	je	.L163	#,
.LBB10:
	.loc 1 697 0
	movq	-48(%rbp), %rax	# args2, tmp134
	movq	32(%rax), %rax	# args2_2->list.value, D.21518
	movq	24(%rax), %rax	# _65->type.values, tmp135
	movq	%rax, -8(%rbp)	# tmp135, memb
	jmp	.L165	#
.L168:
	.loc 1 699 0
	movq	-40(%rbp), %rax	# args1, tmp136
	movq	32(%rax), %rdx	# args1_1->list.value, D.21518
	movq	-8(%rbp), %rax	# memb, tmp137
	movq	8(%rax), %rax	# memb_8->common.type, D.21518
	movq	%rdx, %rsi	# D.21518,
	movq	%rax, %rdi	# D.21518,
	call	comptypes	#
	testl	%eax, %eax	# D.21517
	je	.L166	#,
	.loc 1 700 0
	jmp	.L167	#
.L166:
	.loc 1 698 0
	movq	-8(%rbp), %rax	# memb, tmp138
	movq	(%rax), %rax	# memb_8->common.chain, tmp139
	movq	%rax, -8(%rbp)	# tmp139, memb
.L165:
	.loc 1 697 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, memb
	jne	.L168	#,
.L167:
	.loc 1 701 0
	cmpq	$0, -8(%rbp)	#, memb
	jne	.L169	#,
	.loc 1 702 0
	movl	$0, %eax	#, D.21517
	jmp	.L150	#
.L169:
.LBE10:
	.loc 1 695 0
	jmp	.L154	#
.L163:
	.loc 1 705 0
	movl	$0, %eax	#, D.21517
	jmp	.L150	#
.L154:
	.loc 1 709 0
	movl	-20(%rbp), %eax	# newval, tmp140
	cmpl	-24(%rbp), %eax	# val, tmp140
	jle	.L170	#,
	.loc 1 710 0
	movl	-20(%rbp), %eax	# newval, tmp141
	movl	%eax, -24(%rbp)	# tmp141, val
.L170:
	.loc 1 712 0
	movq	-40(%rbp), %rax	# args1, tmp142
	movq	(%rax), %rax	# args1_1->common.chain, tmp143
	movq	%rax, -40(%rbp)	# tmp143, args1
	.loc 1 713 0
	movq	-48(%rbp), %rax	# args2, tmp144
	movq	(%rax), %rax	# args2_2->common.chain, tmp145
	movq	%rax, -48(%rbp)	# tmp145, args2
	.loc 1 714 0
	jmp	.L171	#
.L150:
	.loc 1 715 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	type_lists_compatible_p, .-type_lists_compatible_p
	.section	.rodata
	.align 8
.LC12:
	.string	"sizeof applied to a function type"
.LC13:
	.string	"sizeof applied to a void type"
	.align 8
.LC14:
	.string	"sizeof applied to an incomplete type"
	.text
	.globl	c_sizeof
	.type	c_sizeof, @function
c_sizeof:
.LFB10:
	.loc 1 722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 723 0
	movq	-24(%rbp), %rax	# type, tmp76
	movzbl	16(%rax), %eax	# type_2(D)->common.code, D.21520
	movzbl	%al, %eax	# D.21520, tmp77
	movl	%eax, -12(%rbp)	# tmp77, code
	.loc 1 726 0
	cmpl	$23, -12(%rbp)	#, code
	jne	.L173	#,
	.loc 1 728 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.17
	testl	%eax, %eax	# pedantic.17
	jne	.L174	#,
	.loc 1 728 0 is_stmt 0 discriminator 1
	movl	warn_pointer_arith(%rip), %eax	# warn_pointer_arith, warn_pointer_arith.18
	testl	%eax, %eax	# warn_pointer_arith.18
	je	.L175	#,
.L174:
	.loc 1 729 0 is_stmt 1
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L175:
	.loc 1 730 0
	movq	global_trees+128(%rip), %rax	# global_trees, tmp78
	movq	%rax, -8(%rbp)	# tmp78, size
	jmp	.L176	#
.L173:
	.loc 1 732 0
	cmpl	$5, -12(%rbp)	#, code
	jne	.L177	#,
	.loc 1 734 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.19
	testl	%eax, %eax	# pedantic.19
	jne	.L178	#,
	.loc 1 734 0 is_stmt 0 discriminator 1
	movl	warn_pointer_arith(%rip), %eax	# warn_pointer_arith, warn_pointer_arith.20
	testl	%eax, %eax	# warn_pointer_arith.20
	je	.L179	#,
.L178:
	.loc 1 735 0 is_stmt 1
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L179:
	.loc 1 736 0
	movq	global_trees+128(%rip), %rax	# global_trees, tmp79
	movq	%rax, -8(%rbp)	# tmp79, size
	jmp	.L176	#
.L177:
	.loc 1 738 0
	cmpl	$0, -12(%rbp)	#, code
	jne	.L180	#,
	.loc 1 739 0
	movq	global_trees+128(%rip), %rax	# global_trees, tmp80
	movq	%rax, -8(%rbp)	# tmp80, size
	jmp	.L176	#
.L180:
	.loc 1 740 0
	movq	-24(%rbp), %rax	# type, tmp81
	movq	32(%rax), %rax	# type_2(D)->type.size, D.21521
	testq	%rax, %rax	# D.21521
	jne	.L181	#,
	.loc 1 742 0
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 743 0
	movq	global_trees+120(%rip), %rax	# global_trees, tmp82
	movq	%rax, -8(%rbp)	# tmp82, size
	jmp	.L176	#
.L181:
	.loc 1 748 0
	movq	integer_types(%rip), %rax	# integer_types, D.21521
	movzwl	60(%rax), %eax	# *_14, tmp85
	andw	$511, %ax	#, D.21522
	movzwl	%ax, %eax	# D.21522, D.21523
	leal	7(%rax), %edx	#, tmp87
	testl	%eax, %eax	# tmp86
	cmovs	%edx, %eax	# tmp87,, tmp86
	sarl	$3, %eax	#, tmp88
	.loc 1 747 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21524,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21521
	movq	-24(%rbp), %rax	# type, tmp89
	movq	40(%rax), %rax	# type_2(D)->type.size_unit, D.21521
	movq	%rax, %rsi	# D.21521,
	movl	$63, %edi	#,
	call	size_binop	#
	movq	%rax, -8(%rbp)	# tmp90, size
.L176:
	.loc 1 755 0
	movq	c_global_trees+32(%rip), %rax	# c_global_trees, D.21521
	movq	-8(%rbp), %rdx	# size, tmp91
	movq	%rax, %rsi	# D.21521,
	movl	$115, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21521,
	call	fold	#
	.loc 1 756 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	c_sizeof, .-c_sizeof
	.globl	c_sizeof_nowarn
	.type	c_sizeof_nowarn, @function
c_sizeof_nowarn:
.LFB11:
	.loc 1 761 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 762 0
	movq	-24(%rbp), %rax	# type, tmp72
	movzbl	16(%rax), %eax	# type_2(D)->common.code, D.21529
	movzbl	%al, %eax	# D.21529, tmp73
	movl	%eax, -12(%rbp)	# tmp73, code
	.loc 1 765 0
	cmpl	$23, -12(%rbp)	#, code
	je	.L184	#,
	.loc 1 765 0 is_stmt 0 discriminator 1
	cmpl	$5, -12(%rbp)	#, code
	je	.L184	#,
	cmpl	$0, -12(%rbp)	#, code
	jne	.L185	#,
.L184:
	.loc 1 766 0 is_stmt 1
	movq	global_trees+128(%rip), %rax	# global_trees, tmp74
	movq	%rax, -8(%rbp)	# tmp74, size
	jmp	.L186	#
.L185:
	.loc 1 767 0
	movq	-24(%rbp), %rax	# type, tmp75
	movq	32(%rax), %rax	# type_2(D)->type.size, D.21530
	testq	%rax, %rax	# D.21530
	jne	.L187	#,
	.loc 1 768 0
	movq	global_trees+120(%rip), %rax	# global_trees, tmp76
	movq	%rax, -8(%rbp)	# tmp76, size
	jmp	.L186	#
.L187:
	.loc 1 772 0
	movq	integer_types(%rip), %rax	# integer_types, D.21530
	movzwl	60(%rax), %eax	# *_7, tmp79
	andw	$511, %ax	#, D.21531
	movzwl	%ax, %eax	# D.21531, D.21532
	leal	7(%rax), %edx	#, tmp81
	testl	%eax, %eax	# tmp80
	cmovs	%edx, %eax	# tmp81,, tmp80
	sarl	$3, %eax	#, tmp82
	.loc 1 771 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21533,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21530
	movq	-24(%rbp), %rax	# type, tmp83
	movq	40(%rax), %rax	# type_2(D)->type.size_unit, D.21530
	movq	%rax, %rsi	# D.21530,
	movl	$63, %edi	#,
	call	size_binop	#
	movq	%rax, -8(%rbp)	# tmp84, size
.L186:
	.loc 1 779 0
	movq	c_global_trees+32(%rip), %rax	# c_global_trees, D.21530
	movq	-8(%rbp), %rdx	# size, tmp85
	movq	%rax, %rsi	# D.21530,
	movl	$115, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21530,
	call	fold	#
	.loc 1 780 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	c_sizeof_nowarn, .-c_sizeof_nowarn
	.section	.rodata
	.align 8
.LC15:
	.string	"arithmetic on pointer to an incomplete type"
	.text
	.globl	c_size_in_bytes
	.type	c_size_in_bytes, @function
c_size_in_bytes:
.LFB12:
	.loc 1 787 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 788 0
	movq	-24(%rbp), %rax	# type, tmp71
	movzbl	16(%rax), %eax	# type_2(D)->common.code, D.21536
	movzbl	%al, %eax	# D.21536, tmp72
	movl	%eax, -4(%rbp)	# tmp72, code
	.loc 1 790 0
	cmpl	$23, -4(%rbp)	#, code
	je	.L190	#,
	.loc 1 790 0 is_stmt 0 discriminator 1
	cmpl	$5, -4(%rbp)	#, code
	je	.L190	#,
	cmpl	$0, -4(%rbp)	#, code
	jne	.L191	#,
.L190:
	.loc 1 791 0 is_stmt 1
	movq	global_trees+128(%rip), %rax	# global_trees, D.21535
	jmp	.L192	#
.L191:
	.loc 1 793 0
	movq	-24(%rbp), %rax	# type, tmp73
	movq	32(%rax), %rax	# type_2(D)->type.size, D.21537
	testq	%rax, %rax	# D.21537
	jne	.L193	#,
	.loc 1 793 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# type, tmp74
	movzbl	16(%rax), %eax	# type_2(D)->common.code, D.21536
	cmpb	$5, %al	#, D.21536
	je	.L193	#,
	.loc 1 795 0 is_stmt 1
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 796 0
	movq	global_trees+128(%rip), %rax	# global_trees, D.21535
	jmp	.L192	#
.L193:
	.loc 1 801 0
	movq	integer_types(%rip), %rax	# integer_types, D.21537
	movzwl	60(%rax), %eax	# *_8, tmp77
	andw	$511, %ax	#, D.21538
	movzwl	%ax, %eax	# D.21538, D.21539
	leal	7(%rax), %edx	#, tmp79
	testl	%eax, %eax	# tmp78
	cmovs	%edx, %eax	# tmp79,, tmp78
	sarl	$3, %eax	#, tmp80
	.loc 1 800 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21540,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21537
	movq	-24(%rbp), %rax	# type, tmp81
	movq	40(%rax), %rax	# type_2(D)->type.size_unit, D.21537
	movq	%rax, %rsi	# D.21537,
	movl	$63, %edi	#,
	call	size_binop	#
.L192:
	.loc 1 803 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	c_size_in_bytes, .-c_size_in_bytes
	.globl	decl_constant_value
	.type	decl_constant_value, @function
decl_constant_value:
.LFB13:
	.loc 1 810 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 813 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.21
	.loc 1 811 0
	testq	%rax, %rax	# current_function_decl.21
	je	.L195	#,
	.loc 1 814 0
	movq	-8(%rbp), %rax	# decl, tmp74
	movzbl	17(%rax), %eax	# *decl_3(D), D.21543
	andl	$8, %eax	#, D.21543
	testb	%al, %al	# D.21543
	jne	.L195	#,
	.loc 1 815 0
	movq	-8(%rbp), %rax	# decl, tmp75
	movzbl	17(%rax), %eax	# *decl_3(D), D.21543
	andl	$16, %eax	#, D.21543
	testb	%al, %al	# D.21543
	je	.L195	#,
	.loc 1 816 0
	movq	-8(%rbp), %rax	# decl, tmp76
	movq	104(%rax), %rax	# decl_3(D)->decl.initial, D.21544
	testq	%rax, %rax	# D.21544
	je	.L195	#,
	.loc 1 817 0
	movq	-8(%rbp), %rax	# decl, tmp77
	movq	104(%rax), %rax	# decl_3(D)->decl.initial, D.21544
	movzbl	16(%rax), %eax	# _9->common.code, D.21543
	testb	%al, %al	# D.21543
	je	.L195	#,
	.loc 1 821 0
	movq	-8(%rbp), %rax	# decl, tmp78
	movq	104(%rax), %rax	# decl_3(D)->decl.initial, D.21544
	movzbl	17(%rax), %eax	# *_11, D.21543
	andl	$2, %eax	#, D.21543
	testb	%al, %al	# D.21543
	je	.L195	#,
	.loc 1 823 0
	movq	-8(%rbp), %rax	# decl, tmp79
	movq	104(%rax), %rax	# decl_3(D)->decl.initial, D.21544
	movzbl	16(%rax), %eax	# _14->common.code, D.21543
	cmpb	$46, %al	#, D.21543
	je	.L195	#,
	.loc 1 824 0
	movq	-8(%rbp), %rax	# decl, tmp80
	movq	104(%rax), %rax	# decl_3(D)->decl.initial, D.21542
	jmp	.L196	#
.L195:
	.loc 1 825 0
	movq	-8(%rbp), %rax	# decl, D.21542
.L196:
	.loc 1 826 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	decl_constant_value, .-decl_constant_value
	.type	decl_constant_value_for_broken_optimization, @function
decl_constant_value_for_broken_optimization:
.LFB14:
	.loc 1 839 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 840 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.22
	testl	%eax, %eax	# pedantic.22
	jne	.L198	#,
	.loc 1 840 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp63
	movzbl	48(%rax), %eax	# decl_3(D)->decl.mode, D.21546
	cmpb	$51, %al	#, D.21546
	jne	.L199	#,
.L198:
	.loc 1 841 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, D.21545
	jmp	.L200	#
.L199:
	.loc 1 843 0
	movq	-8(%rbp), %rax	# decl, tmp64
	movq	%rax, %rdi	# tmp64,
	call	decl_constant_value	#
.L200:
	.loc 1 844 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	decl_constant_value_for_broken_optimization, .-decl_constant_value_for_broken_optimization
	.type	default_function_array_conversion, @function
default_function_array_conversion:
.LFB15:
	.loc 1 854 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# exp, exp
	.loc 1 856 0
	movq	-88(%rbp), %rax	# exp, tmp137
	movq	8(%rax), %rax	# exp_11(D)->common.type, tmp138
	movq	%rax, -40(%rbp)	# tmp138, type
	.loc 1 857 0
	movq	-40(%rbp), %rax	# type, tmp139
	movzbl	16(%rax), %eax	# type_12->common.code, D.21548
	movzbl	%al, %eax	# D.21548, tmp140
	movl	%eax, -56(%rbp)	# tmp140, code
	.loc 1 858 0
	movl	$0, -68(%rbp)	#, not_lvalue
	.loc 1 865 0
	movq	-88(%rbp), %rax	# exp, tmp141
	movq	%rax, -32(%rbp)	# tmp141, orig_exp
	.loc 1 866 0
	jmp	.L202	#
.L204:
	.loc 1 870 0
	movq	-88(%rbp), %rax	# exp, tmp142
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	cmpb	$116, %al	#, D.21548
	jne	.L203	#,
	.loc 1 871 0
	movl	$1, -68(%rbp)	#, not_lvalue
.L203:
	.loc 1 872 0
	movq	-88(%rbp), %rax	# exp, tmp143
	movq	32(%rax), %rax	# exp_1->exp.operands, tmp144
	movq	%rax, -88(%rbp)	# tmp144, exp
.L202:
	.loc 1 866 0 discriminator 1
	movq	-88(%rbp), %rax	# exp, tmp145
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	cmpb	$116, %al	#, D.21548
	je	.L204	#,
	.loc 1 867 0
	movq	-88(%rbp), %rax	# exp, tmp146
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	cmpb	$115, %al	#, D.21548
	jne	.L205	#,
	.loc 1 868 0
	movq	-88(%rbp), %rax	# exp, tmp147
	movq	32(%rax), %rax	# exp_1->exp.operands, D.21549
	movq	8(%rax), %rdx	# _19->common.type, D.21549
	movq	-88(%rbp), %rax	# exp, tmp148
	movq	8(%rax), %rax	# exp_1->common.type, D.21549
	cmpq	%rax, %rdx	# D.21549, D.21549
	je	.L204	#,
.L205:
	.loc 1 876 0
	movq	-88(%rbp), %rax	# exp, tmp149
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	movzbl	%al, %eax	# D.21548, D.21550
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21551
	cmpb	$60, %al	#, D.21551
	je	.L206	#,
	.loc 1 876 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# exp, tmp151
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	movzbl	%al, %eax	# D.21548, D.21550
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21551
	cmpb	$49, %al	#, D.21551
	je	.L206	#,
	movq	-88(%rbp), %rax	# exp, tmp153
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	movzbl	%al, %eax	# D.21548, D.21550
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21551
	cmpb	$50, %al	#, D.21551
	je	.L206	#,
	movq	-88(%rbp), %rax	# exp, tmp155
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	movzbl	%al, %eax	# D.21548, D.21550
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21551
	cmpb	$101, %al	#, D.21551
	jne	.L207	#,
.L206:
	.loc 1 877 0 is_stmt 1
	movq	-32(%rbp), %rax	# orig_exp, tmp157
	movl	24(%rax), %edx	# orig_exp_16->exp.complexity, D.21550
	movq	-88(%rbp), %rax	# exp, tmp158
	movl	%edx, 24(%rax)	# D.21550, exp_1->exp.complexity
.L207:
	.loc 1 879 0
	cmpl	$23, -56(%rbp)	#, code
	jne	.L208	#,
	.loc 1 881 0
	movq	-88(%rbp), %rax	# exp, tmp159
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp159,
	movl	$121, %edi	#,
	call	build_unary_op	#
	jmp	.L209	#
.L208:
	.loc 1 883 0
	cmpl	$18, -56(%rbp)	#, code
	jne	.L210	#,
.LBB11:
	.loc 1 886 0
	movq	-40(%rbp), %rax	# type, tmp160
	movq	8(%rax), %rax	# type_12->common.type, tmp161
	movq	%rax, -48(%rbp)	# tmp161, restype
	.loc 1 888 0
	movl	$0, -64(%rbp)	#, constp
	.loc 1 889 0
	movl	$0, -60(%rbp)	#, volatilep
	.loc 1 892 0
	movq	-88(%rbp), %rax	# exp, tmp162
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	movzbl	%al, %eax	# D.21548, D.21550
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21551
	cmpb	$114, %al	#, D.21551
	je	.L211	#,
	.loc 1 892 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# exp, tmp164
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	movzbl	%al, %eax	# D.21548, D.21550
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21551
	cmpb	$100, %al	#, D.21551
	jne	.L212	#,
.L211:
	.loc 1 894 0 is_stmt 1
	movq	-88(%rbp), %rax	# exp, tmp166
	movzbl	17(%rax), %eax	# *exp_1, tmp169
	shrb	$4, %al	#, D.21552
	andl	$1, %eax	#, D.21552
	movzbl	%al, %eax	# D.21552, tmp170
	movl	%eax, -64(%rbp)	# tmp170, constp
	.loc 1 895 0
	movq	-88(%rbp), %rax	# exp, tmp171
	movzbl	17(%rax), %eax	# *exp_1, tmp174
	shrb	$3, %al	#, D.21552
	andl	$1, %eax	#, D.21552
	movzbl	%al, %eax	# D.21552, tmp175
	movl	%eax, -60(%rbp)	# tmp175, volatilep
.L212:
	.loc 1 898 0
	movq	-40(%rbp), %rax	# type, tmp176
	movzbl	17(%rax), %eax	# *type_12, tmp179
	shrb	$4, %al	#, D.21552
	andl	$1, %eax	#, D.21552
	movzbl	%al, %edx	# D.21552, D.21550
	movq	-40(%rbp), %rax	# type, tmp180
	movzbl	17(%rax), %eax	# *type_12, tmp183
	shrb	$3, %al	#, D.21552
	andl	$1, %eax	#, D.21552
	movzbl	%al, %eax	# D.21552, D.21550
	addl	%eax, %eax	# D.21550
	orl	%eax, %edx	# D.21550, D.21550
	movq	-40(%rbp), %rax	# type, tmp184
	movzbl	62(%rax), %eax	# *type_12, tmp187
	shrb	$5, %al	#, D.21552
	andl	$1, %eax	#, D.21552
	movzbl	%al, %eax	# D.21552, D.21550
	sall	$2, %eax	#, D.21550
	orl	%eax, %edx	# D.21550, D.21550
	movq	-40(%rbp), %rax	# type, tmp188
	movzbl	16(%rax), %eax	# type_12->common.code, D.21548
	cmpb	$20, %al	#, D.21548
	jne	.L213	#,
	.loc 1 898 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# type, tmp189
	movq	8(%rax), %rax	# type_12->common.type, D.21549
	testq	%rax, %rax	# D.21549
	je	.L213	#,
	.loc 1 898 0 discriminator 3
	movl	$1, %eax	#, iftmp.23
	jmp	.L214	#
.L213:
	.loc 1 898 0 discriminator 2
	movl	$0, %eax	#, iftmp.23
.L214:
	.loc 1 898 0 discriminator 4
	sall	$3, %eax	#, D.21550
	orl	%edx, %eax	# D.21550, D.21550
	testl	%eax, %eax	# D.21550
	jne	.L215	#,
	.loc 1 898 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, constp
	jne	.L215	#,
	cmpl	$0, -60(%rbp)	#, volatilep
	je	.L216	#,
.L215:
	.loc 1 901 0 is_stmt 1
	movq	-40(%rbp), %rax	# type, tmp190
	movzbl	17(%rax), %eax	# *type_12, tmp193
	shrb	$4, %al	#, D.21552
	andl	$1, %eax	#, D.21552
	movzbl	%al, %edx	# D.21552, D.21550
	movq	-40(%rbp), %rax	# type, tmp194
	movzbl	17(%rax), %eax	# *type_12, tmp197
	shrb	$3, %al	#, D.21552
	andl	$1, %eax	#, D.21552
	movzbl	%al, %eax	# D.21552, D.21550
	addl	%eax, %eax	# D.21550
	orl	%eax, %edx	# D.21550, D.21550
	movq	-40(%rbp), %rax	# type, tmp198
	movzbl	62(%rax), %eax	# *type_12, tmp201
	shrb	$5, %al	#, D.21552
	andl	$1, %eax	#, D.21552
	movzbl	%al, %eax	# D.21552, D.21550
	sall	$2, %eax	#, D.21550
	orl	%eax, %edx	# D.21550, D.21550
	movq	-40(%rbp), %rax	# type, tmp202
	movzbl	16(%rax), %eax	# type_12->common.code, D.21548
	cmpb	$20, %al	#, D.21548
	jne	.L217	#,
	.loc 1 901 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# type, tmp203
	movq	8(%rax), %rax	# type_12->common.type, D.21549
	testq	%rax, %rax	# D.21549
	je	.L217	#,
	.loc 1 901 0 discriminator 3
	movl	$1, %eax	#, iftmp.24
	jmp	.L218	#
.L217:
	.loc 1 901 0 discriminator 2
	movl	$0, %eax	#, iftmp.24
.L218:
	.loc 1 901 0 discriminator 4
	sall	$3, %eax	#, D.21550
	orl	%edx, %eax	# D.21550, D.21550
	.loc 1 902 0 is_stmt 1 discriminator 4
	orl	-64(%rbp), %eax	# constp, D.21550
	.loc 1 903 0 discriminator 4
	movl	-60(%rbp), %edx	# volatilep, tmp204
	addl	%edx, %edx	# D.21550
	.loc 1 900 0 discriminator 4
	orl	%eax, %edx	# D.21550, D.21550
	movq	-48(%rbp), %rax	# restype, tmp205
	movl	%edx, %esi	# D.21550,
	movq	%rax, %rdi	# tmp205,
	call	c_build_qualified_type	#
	movq	%rax, -48(%rbp)	# tmp206, restype
.L216:
	.loc 1 905 0
	movq	-88(%rbp), %rax	# exp, tmp207
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	cmpb	$41, %al	#, D.21548
	jne	.L219	#,
	.loc 1 906 0
	movq	-88(%rbp), %rax	# exp, tmp208
	movq	32(%rax), %rdx	# exp_1->exp.operands, D.21549
	movq	-48(%rbp), %rax	# restype, tmp209
	movq	72(%rax), %rax	# restype_4->type.pointer_to, D.21549
	movq	%rdx, %rsi	# D.21549,
	movq	%rax, %rdi	# D.21549,
	call	convert	#
	jmp	.L209	#
.L219:
	.loc 1 909 0
	movq	-88(%rbp), %rax	# exp, tmp210
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	cmpb	$47, %al	#, D.21548
	jne	.L220	#,
.LBB12:
	.loc 1 911 0
	movq	-88(%rbp), %rax	# exp, tmp211
	movq	40(%rax), %rax	# exp_1->exp.operands, D.21549
	movq	%rax, %rdi	# D.21549,
	call	default_conversion	#
	movq	%rax, -24(%rbp)	# tmp212, op1
	.loc 1 912 0
	movq	-88(%rbp), %rax	# exp, tmp213
	movq	32(%rax), %rdx	# exp_1->exp.operands, D.21549
	movq	-24(%rbp), %rax	# op1, tmp214
	movq	8(%rax), %rax	# op1_91->common.type, D.21549
	movq	-24(%rbp), %rcx	# op1, tmp215
	movq	%rax, %rsi	# D.21549,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L209	#
.L220:
.LBE12:
	.loc 1 916 0
	cmpl	$0, -68(%rbp)	#, not_lvalue
	jne	.L221	#,
	.loc 1 916 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# exp, tmp216
	movq	%rax, %rdi	# tmp216,
	call	lvalue_p	#
	testl	%eax, %eax	# D.21550
	je	.L221	#,
	.loc 1 916 0 discriminator 3
	movl	$1, %eax	#, iftmp.25
	jmp	.L222	#
.L221:
	.loc 1 916 0 discriminator 2
	movl	$0, %eax	#, iftmp.25
.L222:
	.loc 1 916 0 discriminator 4
	movl	%eax, -52(%rbp)	# iftmp.25, lvalue_array_p
	.loc 1 917 0 is_stmt 1 discriminator 4
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.26
	testl	%eax, %eax	# flag_isoc99.26
	jne	.L223	#,
	.loc 1 917 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, lvalue_array_p
	jne	.L223	#,
	.loc 1 923 0 is_stmt 1
	movq	-88(%rbp), %rax	# exp, D.21547
	jmp	.L209	#
.L223:
	.loc 1 926 0
	movq	-48(%rbp), %rax	# restype, tmp217
	movq	%rax, %rdi	# tmp217,
	call	build_pointer_type	#
	movq	%rax, -16(%rbp)	# tmp218, ptrtype
	.loc 1 928 0
	movq	-88(%rbp), %rax	# exp, tmp219
	movzbl	16(%rax), %eax	# exp_1->common.code, D.21548
	cmpb	$34, %al	#, D.21548
	jne	.L224	#,
	.loc 1 934 0
	movq	-88(%rbp), %rdx	# exp, tmp220
	movq	-16(%rbp), %rax	# ptrtype, tmp221
	movq	%rax, %rsi	# tmp221,
	movl	$121, %edi	#,
	call	build1	#
	movq	%rax, -8(%rbp)	# tmp222, adr
	.loc 1 935 0
	movq	-88(%rbp), %rax	# exp, tmp223
	movq	%rax, %rdi	# tmp223,
	call	mark_addressable	#
	testl	%eax, %eax	# D.21550
	jne	.L225	#,
	.loc 1 936 0
	movq	global_trees(%rip), %rax	# global_trees, D.21547
	jmp	.L209	#
.L225:
	.loc 1 937 0
	movq	-88(%rbp), %rax	# exp, tmp224
	movq	%rax, %rdi	# tmp224,
	call	staticp	#
	andl	$1, %eax	#, D.21552
	movl	%eax, %edx	# D.21552, D.21552
	movq	-8(%rbp), %rax	# adr, tmp225
	andl	$1, %edx	#, tmp227
	leal	(%rdx,%rdx), %ecx	#, tmp228
	movzbl	17(%rax), %edx	#, tmp229
	andl	$-3, %edx	#, tmp230
	orl	%ecx, %edx	# tmp228, tmp231
	movb	%dl, 17(%rax)	# tmp231,
	.loc 1 938 0
	movq	-8(%rbp), %rax	# adr, tmp232
	movzbl	17(%rax), %edx	#, tmp235
	andl	$-2, %edx	#, tmp236
	movb	%dl, 17(%rax)	# tmp236,
	.loc 1 939 0
	movq	-8(%rbp), %rax	# adr, D.21547
	jmp	.L209	#
.L224:
	.loc 1 943 0
	movq	-88(%rbp), %rax	# exp, tmp237
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp237,
	movl	$121, %edi	#,
	call	build_unary_op	#
	movq	%rax, -8(%rbp)	# tmp238, adr
	.loc 1 944 0
	movq	-8(%rbp), %rdx	# adr, tmp239
	movq	-16(%rbp), %rax	# ptrtype, tmp240
	movq	%rdx, %rsi	# tmp239,
	movq	%rax, %rdi	# tmp240,
	call	convert	#
	jmp	.L209	#
.L210:
.LBE11:
	.loc 1 946 0
	movq	-88(%rbp), %rax	# exp, D.21547
.L209:
	.loc 1 947 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	default_function_array_conversion, .-default_function_array_conversion
	.section	.rodata
	.align 8
.LC16:
	.string	"void value not ignored as it ought to be"
	.text
	.globl	default_conversion
	.type	default_conversion, @function
default_conversion:
.LFB16:
	.loc 1 957 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# exp, exp
	.loc 1 959 0
	movq	-40(%rbp), %rax	# exp, tmp127
	movq	8(%rax), %rax	# exp_7(D)->common.type, tmp128
	movq	%rax, -16(%rbp)	# tmp128, type
	.loc 1 960 0
	movq	-16(%rbp), %rax	# type, tmp129
	movzbl	16(%rax), %eax	# type_8->common.code, D.21554
	movzbl	%al, %eax	# D.21554, tmp130
	movl	%eax, -20(%rbp)	# tmp130, code
	.loc 1 962 0
	cmpl	$23, -20(%rbp)	#, code
	je	.L227	#,
	.loc 1 962 0 is_stmt 0 discriminator 1
	cmpl	$18, -20(%rbp)	#, code
	jne	.L228	#,
.L227:
	.loc 1 963 0 is_stmt 1
	movq	-40(%rbp), %rax	# exp, tmp131
	movq	%rax, %rdi	# tmp131,
	call	default_function_array_conversion	#
	jmp	.L229	#
.L228:
	.loc 1 966 0
	movq	-40(%rbp), %rax	# exp, tmp132
	movzbl	16(%rax), %eax	# exp_7(D)->common.code, D.21554
	cmpb	$32, %al	#, D.21554
	jne	.L230	#,
	.loc 1 967 0
	movq	-40(%rbp), %rax	# exp, tmp133
	movq	104(%rax), %rax	# exp_7(D)->decl.initial, tmp134
	movq	%rax, -40(%rbp)	# tmp134, exp
	jmp	.L231	#
.L230:
	.loc 1 972 0
	movl	optimize(%rip), %eax	# optimize, optimize.27
	testl	%eax, %eax	# optimize.27
	je	.L231	#,
	.loc 1 972 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp135
	movzbl	16(%rax), %eax	# exp_7(D)->common.code, D.21554
	cmpb	$34, %al	#, D.21554
	jne	.L231	#,
	cmpl	$18, -20(%rbp)	#, code
	je	.L231	#,
	.loc 1 974 0 is_stmt 1
	movq	-40(%rbp), %rax	# exp, tmp136
	movq	%rax, %rdi	# tmp136,
	call	decl_constant_value_for_broken_optimization	#
	movq	%rax, -40(%rbp)	# tmp137, exp
	.loc 1 975 0
	movq	-40(%rbp), %rax	# exp, tmp138
	movq	8(%rax), %rax	# exp_15->common.type, tmp139
	movq	%rax, -16(%rbp)	# tmp139, type
.L231:
	.loc 1 983 0
	movq	-40(%rbp), %rax	# exp, tmp140
	movq	%rax, -8(%rbp)	# tmp140, orig_exp
	.loc 1 984 0
	jmp	.L232	#
.L233:
	.loc 1 987 0
	movq	-40(%rbp), %rax	# exp, tmp141
	movq	32(%rax), %rax	# exp_2->exp.operands, tmp142
	movq	%rax, -40(%rbp)	# tmp142, exp
.L232:
	.loc 1 984 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp143
	movzbl	16(%rax), %eax	# exp_2->common.code, D.21554
	cmpb	$116, %al	#, D.21554
	je	.L233	#,
	.loc 1 985 0
	movq	-40(%rbp), %rax	# exp, tmp144
	movzbl	16(%rax), %eax	# exp_2->common.code, D.21554
	cmpb	$115, %al	#, D.21554
	jne	.L234	#,
	.loc 1 986 0
	movq	-40(%rbp), %rax	# exp, tmp145
	movq	32(%rax), %rax	# exp_2->exp.operands, D.21555
	movq	8(%rax), %rdx	# _20->common.type, D.21555
	movq	-40(%rbp), %rax	# exp, tmp146
	movq	8(%rax), %rax	# exp_2->common.type, D.21555
	cmpq	%rax, %rdx	# D.21555, D.21555
	je	.L233	#,
.L234:
	.loc 1 990 0
	movq	-40(%rbp), %rax	# exp, tmp147
	movzbl	16(%rax), %eax	# exp_2->common.code, D.21554
	movzbl	%al, %eax	# D.21554, D.21556
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21557
	cmpb	$60, %al	#, D.21557
	je	.L235	#,
	.loc 1 990 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp149
	movzbl	16(%rax), %eax	# exp_2->common.code, D.21554
	movzbl	%al, %eax	# D.21554, D.21556
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21557
	cmpb	$49, %al	#, D.21557
	je	.L235	#,
	movq	-40(%rbp), %rax	# exp, tmp151
	movzbl	16(%rax), %eax	# exp_2->common.code, D.21554
	movzbl	%al, %eax	# D.21554, D.21556
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21557
	cmpb	$50, %al	#, D.21557
	je	.L235	#,
	movq	-40(%rbp), %rax	# exp, tmp153
	movzbl	16(%rax), %eax	# exp_2->common.code, D.21554
	movzbl	%al, %eax	# D.21554, D.21556
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21557
	cmpb	$101, %al	#, D.21557
	jne	.L236	#,
.L235:
	.loc 1 991 0 is_stmt 1
	movq	-8(%rbp), %rax	# orig_exp, tmp155
	movl	24(%rax), %edx	# orig_exp_17->exp.complexity, D.21556
	movq	-40(%rbp), %rax	# exp, tmp156
	movl	%edx, 24(%rax)	# D.21556, exp_2->exp.complexity
.L236:
	.loc 1 995 0
	cmpl	$10, -20(%rbp)	#, code
	jne	.L237	#,
	.loc 1 999 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.29
	.loc 1 997 0
	testl	%eax, %eax	# flag_traditional.29
	jne	.L238	#,
	.loc 1 1000 0
	movq	-16(%rbp), %rax	# type, tmp157
	movzwl	60(%rax), %eax	# *type_3, tmp160
	andw	$511, %ax	#, D.21558
	.loc 1 1001 0
	movzwl	%ax, %edx	# D.21558, D.21556
	movq	integer_types+40(%rip), %rax	# integer_types, D.21555
	movzwl	60(%rax), %eax	# *_39, tmp163
	andw	$511, %ax	#, D.21558
	movzwl	%ax, %eax	# D.21558, D.21556
	.loc 1 1000 0
	cmpl	%eax, %edx	# D.21556, D.21556
	jl	.L239	#,
.L238:
	.loc 1 1002 0 discriminator 1
	movq	-16(%rbp), %rax	# type, tmp164
	movzbl	17(%rax), %eax	# *type_3, D.21554
	andl	$32, %eax	#, D.21554
	.loc 1 997 0 discriminator 1
	testb	%al, %al	# D.21554
	je	.L239	#,
	.loc 1 997 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.28
	jmp	.L240	#
.L239:
	.loc 1 997 0 discriminator 3
	movl	$0, %eax	#, iftmp.28
.L240:
	.loc 1 997 0 discriminator 4
	movq	integer_types+40(%rip), %rdx	# integer_types, D.21555
	movzwl	60(%rdx), %edx	# *_46, tmp167
	andw	$511, %dx	#, D.21558
	movzwl	%dx, %ecx	# D.21558, D.21556
	movq	-16(%rbp), %rdx	# type, tmp168
	movzwl	60(%rdx), %edx	# *type_3, tmp171
	andw	$511, %dx	#, D.21558
	movzwl	%dx, %edx	# D.21558, D.21556
	cmpl	%edx, %ecx	# D.21556, D.21556
	cmovge	%ecx, %edx	# D.21556,, D.21556
	movl	%eax, %esi	# iftmp.28,
	movl	%edx, %edi	# D.21559,
	call	type_for_size	#
	movq	%rax, -16(%rbp)	# tmp172, type
	.loc 1 1004 0 is_stmt 1 discriminator 4
	movq	-40(%rbp), %rdx	# exp, tmp173
	movq	-16(%rbp), %rax	# type, tmp174
	movq	%rdx, %rsi	# tmp173,
	movq	%rax, %rdi	# tmp174,
	call	convert	#
	jmp	.L229	#
.L237:
	.loc 1 1007 0
	movq	-40(%rbp), %rax	# exp, tmp175
	movzbl	16(%rax), %eax	# exp_2->common.code, D.21554
	cmpb	$39, %al	#, D.21554
	jne	.L241	#,
	.loc 1 1008 0
	movq	-40(%rbp), %rax	# exp, tmp176
	movq	40(%rax), %rax	# exp_2->exp.operands, D.21555
	movzbl	53(%rax), %eax	# *_56, D.21554
	andl	$2, %eax	#, D.21554
	testb	%al, %al	# D.21554
	je	.L241	#,
	.loc 1 1012 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21555
	movzwl	60(%rax), %eax	# *_59, tmp179
	andw	$511, %ax	#, D.21558
	.loc 1 1011 0
	movzwl	%ax, %edx	# D.21558, D.21560
	movq	-40(%rbp), %rax	# exp, tmp180
	movq	40(%rax), %rax	# exp_2->exp.operands, D.21555
	movq	40(%rax), %rax	# _62->decl.size, D.21555
	movq	%rdx, %rsi	# D.21560,
	movq	%rax, %rdi	# D.21555,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21556
	jns	.L241	#,
	.loc 1 1013 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.31
	testl	%eax, %eax	# flag_traditional.31
	je	.L242	#,
	.loc 1 1013 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# type, tmp181
	movzbl	17(%rax), %eax	# *type_3, D.21554
	andl	$32, %eax	#, D.21554
	testb	%al, %al	# D.21554
	je	.L242	#,
	movq	integer_types+48(%rip), %rax	# integer_types, iftmp.30
	jmp	.L243	#
.L242:
	.loc 1 1013 0 discriminator 2
	movq	integer_types+40(%rip), %rax	# integer_types, iftmp.30
.L243:
	.loc 1 1013 0 discriminator 3
	movq	-40(%rbp), %rdx	# exp, tmp182
	movq	%rdx, %rsi	# tmp182,
	movq	%rax, %rdi	# iftmp.30,
	call	convert	#
	jmp	.L229	#
.L241:
	.loc 1 1017 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp183
	movq	%rax, %rdi	# tmp183,
	call	c_promoting_integer_type_p	#
	testb	%al, %al	# D.21561
	je	.L244	#,
	.loc 1 1021 0
	movq	-16(%rbp), %rax	# type, tmp184
	movzbl	17(%rax), %eax	# *type_3, D.21554
	andl	$32, %eax	#, D.21554
	testb	%al, %al	# D.21554
	je	.L245	#,
	.loc 1 1022 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.32
	testl	%eax, %eax	# flag_traditional.32
	jne	.L246	#,
	.loc 1 1023 0
	movq	-16(%rbp), %rax	# type, tmp185
	movzwl	60(%rax), %eax	# *type_3, tmp188
	andw	$511, %ax	#, D.21558
	movl	%eax, %edx	# D.21558, D.21558
	movq	integer_types+40(%rip), %rax	# integer_types, D.21555
	movzwl	60(%rax), %eax	# *_76, tmp191
	andw	$511, %ax	#, D.21558
	cmpw	%ax, %dx	# D.21558, D.21558
	jne	.L245	#,
.L246:
	.loc 1 1024 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.21555
	movq	-40(%rbp), %rdx	# exp, tmp192
	movq	%rdx, %rsi	# tmp192,
	movq	%rax, %rdi	# D.21555,
	call	convert	#
	jmp	.L229	#
.L245:
	.loc 1 1026 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21555
	movq	-40(%rbp), %rdx	# exp, tmp193
	movq	%rdx, %rsi	# tmp193,
	movq	%rax, %rdi	# D.21555,
	call	convert	#
	jmp	.L229	#
.L244:
	.loc 1 1029 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.33
	testl	%eax, %eax	# flag_traditional.33
	je	.L247	#,
	.loc 1 1029 0 is_stmt 0 discriminator 1
	movl	flag_allow_single_precision(%rip), %eax	# flag_allow_single_precision, flag_allow_single_precision.34
	testl	%eax, %eax	# flag_allow_single_precision.34
	jne	.L247	#,
	.loc 1 1030 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp194
	movq	128(%rax), %rdx	# type_3->type.main_variant, D.21555
	movq	global_trees+192(%rip), %rax	# global_trees, D.21555
	cmpq	%rax, %rdx	# D.21555, D.21555
	jne	.L247	#,
	.loc 1 1031 0
	movq	global_trees+200(%rip), %rax	# global_trees, D.21555
	movq	-40(%rbp), %rdx	# exp, tmp195
	movq	%rdx, %rsi	# tmp195,
	movq	%rax, %rdi	# D.21555,
	call	convert	#
	jmp	.L229	#
.L247:
	.loc 1 1033 0
	cmpl	$5, -20(%rbp)	#, code
	jne	.L248	#,
	.loc 1 1035 0
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1036 0
	movq	global_trees(%rip), %rax	# global_trees, D.21553
	jmp	.L229	#
.L248:
	.loc 1 1038 0
	movq	-40(%rbp), %rax	# exp, D.21553
.L229:
	.loc 1 1039 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	default_conversion, .-default_conversion
	.type	lookup_field, @function
lookup_field:
.LFB17:
	.loc 1 1053 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# decl, decl
	movq	%rsi, -80(%rbp)	# component, component
	.loc 1 1054 0
	movq	-72(%rbp), %rax	# decl, tmp102
	movq	8(%rax), %rax	# decl_11(D)->common.type, tmp103
	movq	%rax, -32(%rbp)	# tmp103, type
	.loc 1 1062 0
	movq	-32(%rbp), %rax	# type, tmp104
	movq	160(%rax), %rax	# type_12->type.lang_specific, D.21564
	testq	%rax, %rax	# D.21564
	je	.L250	#,
.LBB13:
	.loc 1 1065 0
	movq	-32(%rbp), %rax	# type, tmp105
	movq	160(%rax), %rax	# type_12->type.lang_specific, D.21564
	addq	$8, %rax	#, tmp106
	movq	%rax, -24(%rbp)	# tmp106, field_array
	.loc 1 1067 0
	movq	-32(%rbp), %rax	# type, tmp107
	movq	24(%rax), %rax	# type_12->type.values, tmp108
	movq	%rax, -40(%rbp)	# tmp108, field
	.loc 1 1068 0
	movl	$0, -52(%rbp)	#, bot
	.loc 1 1069 0
	movq	-32(%rbp), %rax	# type, tmp109
	movq	160(%rax), %rax	# type_12->type.lang_specific, D.21564
	movl	(%rax), %eax	# _18->len, tmp110
	movl	%eax, -48(%rbp)	# tmp110, top
	.loc 1 1070 0
	jmp	.L251	#
.L261:
	.loc 1 1072 0
	movl	-52(%rbp), %eax	# bot, tmp111
	movl	-48(%rbp), %edx	# top, tmp112
	subl	%eax, %edx	# tmp111, D.21565
	movl	%edx, %eax	# D.21565, D.21565
	addl	$1, %eax	#, D.21565
	sarl	%eax	# tmp113
	movl	%eax, -44(%rbp)	# tmp113, half
	.loc 1 1073 0
	movl	-44(%rbp), %eax	# half, tmp114
	movl	-52(%rbp), %edx	# bot, tmp115
	addl	%edx, %eax	# tmp115, D.21565
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21566
	movq	-24(%rbp), %rax	# field_array, tmp116
	addq	%rdx, %rax	# D.21566, D.21567
	movq	(%rax), %rax	# *_27, tmp117
	movq	%rax, -40(%rbp)	# tmp117, field
	.loc 1 1075 0
	movq	-40(%rbp), %rax	# field, tmp118
	movq	72(%rax), %rax	# field_28->decl.name, D.21568
	testq	%rax, %rax	# D.21568
	jne	.L252	#,
	.loc 1 1078 0
	jmp	.L253	#
.L256:
	.loc 1 1080 0
	movl	-52(%rbp), %eax	# bot, bot.35
	leal	1(%rax), %edx	#, tmp119
	movl	%edx, -52(%rbp)	# tmp119, bot
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21566
	movq	-24(%rbp), %rax	# field_array, tmp120
	addq	%rdx, %rax	# D.21566, D.21567
	movq	(%rax), %rax	# *_39, tmp121
	movq	%rax, -40(%rbp)	# tmp121, field
	.loc 1 1081 0
	movq	-40(%rbp), %rax	# field, tmp122
	movq	8(%rax), %rax	# field_40->common.type, D.21568
	movzbl	16(%rax), %eax	# _41->common.code, D.21569
	cmpb	$20, %al	#, D.21569
	je	.L254	#,
	.loc 1 1082 0
	movq	-40(%rbp), %rax	# field, tmp123
	movq	8(%rax), %rax	# field_40->common.type, D.21568
	movzbl	16(%rax), %eax	# _43->common.code, D.21569
	cmpb	$21, %al	#, D.21569
	jne	.L253	#,
.L254:
.LBB14:
	.loc 1 1084 0
	movq	-80(%rbp), %rdx	# component, tmp124
	movq	-40(%rbp), %rax	# field, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	lookup_field	#
	movq	%rax, -16(%rbp)	# tmp126, anon
	.loc 1 1086 0
	cmpq	$0, -16(%rbp)	#, anon
	je	.L253	#,
	.loc 1 1087 0
	movq	-16(%rbp), %rdx	# anon, tmp127
	movq	-40(%rbp), %rax	# field, tmp128
	movq	%rax, %rsi	# tmp128,
	movl	$0, %edi	#,
	call	tree_cons	#
	jmp	.L255	#
.L253:
.LBE14:
	.loc 1 1078 0 discriminator 1
	movl	-52(%rbp), %eax	# bot, tmp129
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21566
	movq	-24(%rbp), %rax	# field_array, tmp130
	addq	%rdx, %rax	# D.21566, D.21567
	movq	(%rax), %rax	# *_32, D.21568
	movq	72(%rax), %rax	# _33->decl.name, D.21568
	testq	%rax, %rax	# D.21568
	je	.L256	#,
	.loc 1 1092 0
	movl	-52(%rbp), %eax	# bot, tmp131
	cmpl	-48(%rbp), %eax	# top, tmp131
	jle	.L257	#,
	.loc 1 1093 0
	movl	$0, %eax	#, D.21563
	jmp	.L255	#
.L257:
	.loc 1 1096 0
	jmp	.L251	#
.L252:
	.loc 1 1099 0
	movq	-40(%rbp), %rax	# field, tmp132
	movq	72(%rax), %rax	# field_28->decl.name, D.21568
	cmpq	-80(%rbp), %rax	# component, D.21568
	jne	.L258	#,
	.loc 1 1100 0
	jmp	.L259	#
.L258:
	.loc 1 1101 0
	movq	-40(%rbp), %rax	# field, tmp133
	movq	72(%rax), %rax	# field_28->decl.name, D.21568
	cmpq	-80(%rbp), %rax	# component, D.21568
	jae	.L260	#,
	.loc 1 1102 0
	movl	-44(%rbp), %eax	# half, tmp134
	addl	%eax, -52(%rbp)	# tmp134, bot
	jmp	.L251	#
.L260:
	.loc 1 1104 0
	movl	-44(%rbp), %eax	# half, tmp139
	movl	-52(%rbp), %edx	# bot, tmp140
	addl	%edx, %eax	# tmp140, tmp138
	movl	%eax, -48(%rbp)	# tmp138, top
.L251:
	.loc 1 1070 0 discriminator 1
	movl	-52(%rbp), %eax	# bot, tmp141
	movl	-48(%rbp), %edx	# top, tmp142
	subl	%eax, %edx	# tmp141, D.21565
	movl	%edx, %eax	# D.21565, D.21565
	cmpl	$1, %eax	#, D.21565
	jg	.L261	#,
.L259:
	.loc 1 1107 0
	movl	-52(%rbp), %eax	# bot, tmp143
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21566
	movq	-24(%rbp), %rax	# field_array, tmp144
	addq	%rdx, %rax	# D.21566, D.21567
	movq	(%rax), %rax	# *_55, D.21568
	movq	72(%rax), %rax	# _56->decl.name, D.21568
	cmpq	-80(%rbp), %rax	# component, D.21568
	jne	.L262	#,
	.loc 1 1108 0
	movl	-52(%rbp), %eax	# bot, tmp145
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21566
	movq	-24(%rbp), %rax	# field_array, tmp146
	addq	%rdx, %rax	# D.21566, D.21567
	movq	(%rax), %rax	# *_60, tmp147
	movq	%rax, -40(%rbp)	# tmp147, field
	jmp	.L263	#
.L262:
	.loc 1 1109 0
	movq	-40(%rbp), %rax	# field, tmp148
	movq	72(%rax), %rax	# field_3->decl.name, D.21568
	cmpq	-80(%rbp), %rax	# component, D.21568
	je	.L263	#,
	.loc 1 1110 0
	movl	$0, %eax	#, D.21563
	jmp	.L255	#
.L263:
.LBE13:
	jmp	.L264	#
.L250:
	.loc 1 1114 0
	movq	-32(%rbp), %rax	# type, tmp149
	movq	24(%rax), %rax	# type_12->type.values, tmp150
	movq	%rax, -40(%rbp)	# tmp150, field
	jmp	.L265	#
.L270:
	.loc 1 1116 0
	movq	-40(%rbp), %rax	# field, tmp151
	movq	72(%rax), %rax	# field_5->decl.name, D.21568
	testq	%rax, %rax	# D.21568
	jne	.L266	#,
	.loc 1 1117 0
	movq	-40(%rbp), %rax	# field, tmp152
	movq	8(%rax), %rax	# field_5->common.type, D.21568
	movzbl	16(%rax), %eax	# _66->common.code, D.21569
	cmpb	$20, %al	#, D.21569
	je	.L267	#,
	.loc 1 1118 0
	movq	-40(%rbp), %rax	# field, tmp153
	movq	8(%rax), %rax	# field_5->common.type, D.21568
	movzbl	16(%rax), %eax	# _68->common.code, D.21569
	cmpb	$21, %al	#, D.21569
	jne	.L266	#,
.L267:
.LBB15:
	.loc 1 1120 0
	movq	-80(%rbp), %rdx	# component, tmp154
	movq	-40(%rbp), %rax	# field, tmp155
	movq	%rdx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp155,
	call	lookup_field	#
	movq	%rax, -8(%rbp)	# tmp156, anon
	.loc 1 1122 0
	cmpq	$0, -8(%rbp)	#, anon
	je	.L266	#,
	.loc 1 1123 0
	movq	-8(%rbp), %rdx	# anon, tmp157
	movq	-40(%rbp), %rax	# field, tmp158
	movq	%rax, %rsi	# tmp158,
	movl	$0, %edi	#,
	call	tree_cons	#
	jmp	.L255	#
.L266:
.LBE15:
	.loc 1 1126 0
	movq	-40(%rbp), %rax	# field, tmp159
	movq	72(%rax), %rax	# field_5->decl.name, D.21568
	cmpq	-80(%rbp), %rax	# component, D.21568
	jne	.L268	#,
	.loc 1 1127 0
	jmp	.L269	#
.L268:
	.loc 1 1114 0
	movq	-40(%rbp), %rax	# field, tmp160
	movq	(%rax), %rax	# field_5->common.chain, tmp161
	movq	%rax, -40(%rbp)	# tmp161, field
.L265:
	.loc 1 1114 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, field
	jne	.L270	#,
.L269:
	.loc 1 1130 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, field
	jne	.L264	#,
	.loc 1 1131 0
	movl	$0, %eax	#, D.21563
	jmp	.L255	#
.L264:
	.loc 1 1134 0
	movq	-40(%rbp), %rax	# field, tmp162
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp162,
	movl	$0, %edi	#,
	call	tree_cons	#
.L255:
	.loc 1 1135 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	lookup_field, .-lookup_field
	.section	.rodata
.LC17:
	.string	"structure"
.LC18:
	.string	"%s has no member named `%s'"
	.align 8
.LC19:
	.string	"request for member `%s' in something not a structure or union"
	.text
	.globl	build_component_ref
	.type	build_component_ref, @function
build_component_ref:
.LFB18:
	.loc 1 1143 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# datum, datum
	movq	%rsi, -64(%rbp)	# component, component
	.loc 1 1144 0
	movq	-56(%rbp), %rax	# datum, tmp85
	movq	8(%rax), %rax	# datum_6(D)->common.type, tmp86
	movq	%rax, -24(%rbp)	# tmp86, type
	.loc 1 1145 0
	movq	-24(%rbp), %rax	# type, tmp87
	movzbl	16(%rax), %eax	# type_7->common.code, D.21571
	movzbl	%al, %eax	# D.21571, tmp88
	movl	%eax, -44(%rbp)	# tmp88, code
	.loc 1 1146 0
	movq	$0, -40(%rbp)	#, field
	.loc 1 1157 0
	movq	-56(%rbp), %rax	# datum, tmp89
	movzbl	16(%rax), %eax	# datum_6(D)->common.code, D.21571
	movzbl	%al, %eax	# D.21571, D.21572
	cmpl	$47, %eax	#, D.21572
	je	.L273	#,
	.loc 1 1166 0
	nop
	.loc 1 1171 0
	cmpl	$20, -44(%rbp)	#, code
	je	.L275	#,
	jmp	.L291	#
.L273:
.LBB16:
	.loc 1 1161 0
	movq	-56(%rbp), %rax	# datum, tmp90
	movq	40(%rax), %rax	# datum_6(D)->exp.operands, D.21573
	movq	-64(%rbp), %rdx	# component, tmp91
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# D.21573,
	call	build_component_ref	#
	movq	%rax, -16(%rbp)	# tmp92, value
	.loc 1 1162 0
	movq	-16(%rbp), %rax	# value, tmp93
	movq	%rax, %rdi	# tmp93,
	call	pedantic_non_lvalue	#
	movq	%rax, %rcx	#, D.21573
	movq	-56(%rbp), %rax	# datum, tmp94
	movq	32(%rax), %rdx	# datum_6(D)->exp.operands, D.21573
	movq	-16(%rbp), %rax	# value, tmp95
	movq	8(%rax), %rax	# value_15->common.type, D.21573
	movq	%rax, %rsi	# D.21573,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L274	#
.L291:
.LBE16:
	.loc 1 1171 0 discriminator 1
	cmpl	$21, -44(%rbp)	#, code
	jne	.L276	#,
.L275:
	.loc 1 1173 0
	movq	-24(%rbp), %rax	# type, tmp96
	movq	32(%rax), %rax	# type_7->type.size, D.21573
	testq	%rax, %rax	# D.21573
	jne	.L277	#,
	.loc 1 1175 0
	movq	-24(%rbp), %rax	# type, tmp97
	movq	%rax, %rsi	# tmp97,
	movl	$0, %edi	#,
	call	incomplete_type_error	#
	.loc 1 1176 0
	movq	global_trees(%rip), %rax	# global_trees, D.21570
	jmp	.L274	#
.L277:
	.loc 1 1179 0
	movq	-64(%rbp), %rdx	# component, tmp98
	movq	-56(%rbp), %rax	# datum, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	lookup_field	#
	movq	%rax, -40(%rbp)	# tmp100, field
	.loc 1 1181 0
	cmpq	$0, -40(%rbp)	#, field
	jne	.L278	#,
	.loc 1 1185 0
	movq	-64(%rbp), %rax	# component, tmp101
	movq	32(%rax), %rdx	# component_14(D)->identifier.id.str, D.21574
	.loc 1 1183 0
	cmpl	$20, -44(%rbp)	#, code
	jne	.L279	#,
	.loc 1 1183 0 is_stmt 0 discriminator 1
	movl	$.LC17, %eax	#, iftmp.36
	jmp	.L280	#
.L279:
	.loc 1 1183 0 discriminator 2
	movl	$.LC2, %eax	#, iftmp.36
.L280:
	.loc 1 1183 0 discriminator 3
	movq	%rax, %rsi	# iftmp.36,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1186 0 is_stmt 1 discriminator 3
	movq	global_trees(%rip), %rax	# global_trees, D.21570
	jmp	.L274	#
.L278:
	.loc 1 1194 0
	jmp	.L281	#
.L288:
.LBB17:
	.loc 1 1196 0
	movq	-40(%rbp), %rax	# field, tmp102
	movq	32(%rax), %rax	# field_2->list.value, tmp103
	movq	%rax, -8(%rbp)	# tmp103, subdatum
	.loc 1 1198 0
	movq	-8(%rbp), %rax	# subdatum, tmp104
	movq	8(%rax), %rdx	# subdatum_30->common.type, D.21573
	movq	global_trees(%rip), %rax	# global_trees, D.21573
	cmpq	%rax, %rdx	# D.21573, D.21573
	jne	.L282	#,
	.loc 1 1199 0
	movq	global_trees(%rip), %rax	# global_trees, D.21570
	jmp	.L274	#
.L282:
	.loc 1 1201 0
	movq	-8(%rbp), %rax	# subdatum, tmp105
	movq	8(%rax), %rax	# subdatum_30->common.type, D.21573
	movq	-8(%rbp), %rcx	# subdatum, tmp106
	movq	-56(%rbp), %rdx	# datum, tmp107
	movq	%rax, %rsi	# D.21573,
	movl	$39, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -32(%rbp)	# tmp108, ref
	.loc 1 1202 0
	movq	-56(%rbp), %rax	# datum, tmp109
	movzbl	17(%rax), %eax	# *datum_1, D.21571
	andl	$16, %eax	#, D.21571
	testb	%al, %al	# D.21571
	jne	.L283	#,
	.loc 1 1202 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# subdatum, tmp110
	movzbl	17(%rax), %eax	# *subdatum_30, D.21571
	andl	$16, %eax	#, D.21571
	testb	%al, %al	# D.21571
	je	.L284	#,
.L283:
	.loc 1 1203 0 is_stmt 1
	movq	-32(%rbp), %rax	# ref, tmp111
	movzbl	17(%rax), %edx	#, tmp114
	orl	$16, %edx	#, tmp115
	movb	%dl, 17(%rax)	# tmp115,
.L284:
	.loc 1 1204 0
	movq	-56(%rbp), %rax	# datum, tmp116
	movzbl	17(%rax), %eax	# *datum_1, D.21571
	andl	$8, %eax	#, D.21571
	testb	%al, %al	# D.21571
	jne	.L285	#,
	.loc 1 1204 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# subdatum, tmp117
	movzbl	17(%rax), %eax	# *subdatum_30, D.21571
	andl	$8, %eax	#, D.21571
	testb	%al, %al	# D.21571
	je	.L286	#,
.L285:
	.loc 1 1205 0 is_stmt 1
	movq	-32(%rbp), %rax	# ref, tmp118
	movzbl	17(%rax), %edx	#, tmp121
	orl	$8, %edx	#, tmp122
	movb	%dl, 17(%rax)	# tmp122,
.L286:
	.loc 1 1207 0
	movq	-8(%rbp), %rax	# subdatum, tmp123
	movzbl	18(%rax), %eax	# *subdatum_30, D.21571
	andl	$-128, %eax	#, D.21571
	testb	%al, %al	# D.21571
	je	.L287	#,
	.loc 1 1208 0
	movq	-8(%rbp), %rax	# subdatum, tmp124
	movq	%rax, %rdi	# tmp124,
	call	warn_deprecated_use	#
.L287:
	.loc 1 1210 0
	movq	-32(%rbp), %rax	# ref, tmp125
	movq	%rax, -56(%rbp)	# tmp125, datum
.LBE17:
	.loc 1 1194 0
	movq	-40(%rbp), %rax	# field, tmp126
	movq	(%rax), %rax	# field_2->common.chain, tmp127
	movq	%rax, -40(%rbp)	# tmp127, field
.L281:
	.loc 1 1194 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, field
	jne	.L288	#,
	.loc 1 1213 0 is_stmt 1
	movq	-32(%rbp), %rax	# ref, D.21570
	jmp	.L274	#
.L276:
	.loc 1 1215 0
	cmpl	$0, -44(%rbp)	#, code
	je	.L289	#,
	.loc 1 1217 0
	movq	-64(%rbp), %rax	# component, tmp128
	movq	32(%rax), %rax	# component_14(D)->identifier.id.str, D.21574
	.loc 1 1216 0
	movq	%rax, %rsi	# D.21574,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L289:
	.loc 1 1219 0
	movq	global_trees(%rip), %rax	# global_trees, D.21570
.L274:
	.loc 1 1220 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	build_component_ref, .-build_component_ref
	.section	.rodata
	.align 8
.LC20:
	.string	"dereferencing pointer to incomplete type"
	.align 8
.LC21:
	.string	"dereferencing `void *' pointer"
.LC22:
	.string	"invalid type argument of `%s'"
	.text
	.globl	build_indirect_ref
	.type	build_indirect_ref, @function
build_indirect_ref:
.LFB19:
	.loc 1 1230 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# ptr, ptr
	movq	%rsi, -48(%rbp)	# errorstring, errorstring
	.loc 1 1231 0
	movq	-40(%rbp), %rax	# ptr, tmp84
	movq	%rax, %rdi	# tmp84,
	call	default_conversion	#
	movq	%rax, -32(%rbp)	# tmp85, pointer
	.loc 1 1232 0
	movq	-32(%rbp), %rax	# pointer, tmp86
	movq	8(%rax), %rax	# pointer_4->common.type, tmp87
	movq	%rax, -24(%rbp)	# tmp87, type
	.loc 1 1234 0
	movq	-24(%rbp), %rax	# type, tmp88
	movzbl	16(%rax), %eax	# type_5->common.code, D.21579
	cmpb	$13, %al	#, D.21579
	jne	.L293	#,
	.loc 1 1236 0
	movq	-32(%rbp), %rax	# pointer, tmp89
	movzbl	16(%rax), %eax	# pointer_4->common.code, D.21579
	cmpb	$121, %al	#, D.21579
	jne	.L294	#,
	.loc 1 1237 0
	movl	flag_volatile(%rip), %eax	# flag_volatile, flag_volatile.37
	testl	%eax, %eax	# flag_volatile.37
	jne	.L294	#,
	.loc 1 1238 0
	movq	-32(%rbp), %rax	# pointer, tmp90
	movq	32(%rax), %rax	# pointer_4->exp.operands, D.21580
	movq	8(%rax), %rdx	# _9->common.type, D.21580
	.loc 1 1239 0
	movq	-24(%rbp), %rax	# type, tmp91
	movq	8(%rax), %rax	# type_5->common.type, D.21580
	.loc 1 1238 0
	cmpq	%rax, %rdx	# D.21580, D.21580
	jne	.L294	#,
	.loc 1 1240 0
	movq	-32(%rbp), %rax	# pointer, tmp92
	movq	32(%rax), %rax	# pointer_4->exp.operands, D.21578
	jmp	.L295	#
.L294:
.LBB18:
	.loc 1 1243 0
	movq	-24(%rbp), %rax	# type, tmp93
	movq	8(%rax), %rax	# type_5->common.type, tmp94
	movq	%rax, -16(%rbp)	# tmp94, t
	.loc 1 1244 0
	movq	-16(%rbp), %rax	# t, tmp95
	movq	128(%rax), %rax	# t_13->type.main_variant, D.21580
	movq	-32(%rbp), %rdx	# pointer, tmp96
	movq	%rax, %rsi	# D.21580,
	movl	$41, %edi	#,
	call	build1	#
	movq	%rax, -8(%rbp)	# tmp97, ref
	.loc 1 1246 0
	movq	-16(%rbp), %rax	# t, tmp98
	movq	32(%rax), %rax	# t_13->type.size, D.21580
	testq	%rax, %rax	# D.21580
	jne	.L296	#,
	.loc 1 1246 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t, tmp99
	movzbl	16(%rax), %eax	# t_13->common.code, D.21579
	cmpb	$5, %al	#, D.21579
	je	.L296	#,
	movq	-16(%rbp), %rax	# t, tmp100
	movzbl	16(%rax), %eax	# t_13->common.code, D.21579
	cmpb	$18, %al	#, D.21579
	je	.L296	#,
	.loc 1 1248 0 is_stmt 1
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1249 0
	movq	global_trees(%rip), %rax	# global_trees, D.21578
	jmp	.L295	#
.L296:
	.loc 1 1251 0
	movq	-16(%rbp), %rax	# t, tmp101
	movzbl	16(%rax), %eax	# t_13->common.code, D.21579
	cmpb	$5, %al	#, D.21579
	jne	.L297	#,
	.loc 1 1251 0 is_stmt 0 discriminator 1
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.38
	testl	%eax, %eax	# skip_evaluation.38
	jne	.L297	#,
	.loc 1 1252 0 is_stmt 1
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L297:
	.loc 1 1261 0
	movq	-16(%rbp), %rax	# t, tmp102
	movzbl	17(%rax), %eax	# *t_13, tmp105
	shrb	$4, %al	#, D.21581
	andl	$1, %eax	#, D.21581
	movq	-8(%rbp), %rdx	# ref, tmp106
	andl	$1, %eax	#, tmp108
	sall	$4, %eax	#, tmp109
	movl	%eax, %ecx	# tmp109, tmp109
	movzbl	17(%rdx), %eax	#, tmp110
	andl	$-17, %eax	#, tmp111
	orl	%ecx, %eax	# tmp109, tmp112
	movb	%al, 17(%rdx)	# tmp112,
	.loc 1 1263 0
	movq	-16(%rbp), %rax	# t, tmp113
	movzbl	17(%rax), %eax	# *t_13, D.21579
	andl	$8, %eax	#, D.21579
	testb	%al, %al	# D.21579
	jne	.L298	#,
	.loc 1 1263 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# pointer, tmp114
	movzbl	17(%rax), %eax	# *pointer_4, D.21579
	andl	$1, %eax	#, D.21579
	testb	%al, %al	# D.21579
	jne	.L298	#,
	.loc 1 1263 0 discriminator 1
	movl	flag_volatile(%rip), %eax	# flag_volatile, flag_volatile.40
	testl	%eax, %eax	# flag_volatile.40
	je	.L299	#,
.L298:
	movl	$1, %eax	#, iftmp.39
	jmp	.L300	#
.L299:
	.loc 1 1263 0 discriminator 3
	movl	$0, %eax	#, iftmp.39
.L300:
	.loc 1 1263 0 discriminator 4
	andl	$1, %eax	#, D.21581
	movl	%eax, %edx	# D.21581, D.21581
	movq	-8(%rbp), %rax	# ref, tmp115
	movl	%edx, %ecx	# D.21581, tmp117
	andl	$1, %ecx	#, tmp117
	movzbl	17(%rax), %edx	#, tmp118
	andl	$-2, %edx	#, tmp119
	orl	%ecx, %edx	# tmp117, tmp120
	movb	%dl, 17(%rax)	# tmp120,
	.loc 1 1264 0 is_stmt 1 discriminator 4
	movq	-16(%rbp), %rax	# t, tmp121
	movzbl	17(%rax), %eax	# *t_13, tmp124
	shrb	$3, %al	#, D.21581
	andl	$1, %eax	#, D.21581
	movq	-8(%rbp), %rdx	# ref, tmp125
	andl	$1, %eax	#, tmp127
	leal	0(,%rax,8), %ecx	#, tmp128
	movzbl	17(%rdx), %eax	#, tmp129
	andl	$-9, %eax	#, tmp130
	orl	%ecx, %eax	# tmp128, tmp131
	movb	%al, 17(%rdx)	# tmp131,
	.loc 1 1265 0 discriminator 4
	movq	-8(%rbp), %rax	# ref, D.21578
	jmp	.L295	#
.L293:
.LBE18:
	.loc 1 1268 0
	movq	-32(%rbp), %rax	# pointer, tmp132
	movzbl	16(%rax), %eax	# pointer_4->common.code, D.21579
	testb	%al, %al	# D.21579
	je	.L301	#,
	.loc 1 1269 0
	movq	-48(%rbp), %rax	# errorstring, tmp133
	movq	%rax, %rsi	# tmp133,
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L301:
	.loc 1 1270 0
	movq	global_trees(%rip), %rax	# global_trees, D.21578
.L295:
	.loc 1 1271 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	build_indirect_ref, .-build_indirect_ref
	.section	.rodata
	.align 8
.LC23:
	.string	"subscript missing in array reference"
	.align 8
.LC24:
	.string	"array subscript has type `char'"
	.align 8
.LC25:
	.string	"array subscript is not an integer"
	.align 8
.LC26:
	.string	"ISO C forbids subscripting `register' array"
	.align 8
.LC27:
	.string	"ISO C89 forbids subscripting non-lvalue array"
.LC28:
	.string	"subscript has type `char'"
	.align 8
.LC29:
	.string	"subscripted value is neither array nor pointer"
.LC30:
	.string	"array indexing"
	.text
	.globl	build_array_ref
	.type	build_array_ref, @function
build_array_ref:
.LFB20:
	.loc 1 1285 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# array, array
	movq	%rsi, -64(%rbp)	# index, index
	.loc 1 1286 0
	cmpq	$0, -64(%rbp)	#, index
	jne	.L303	#,
	.loc 1 1288 0
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1289 0
	movq	global_trees(%rip), %rax	# global_trees, D.21585
	jmp	.L304	#
.L303:
	.loc 1 1292 0
	movq	-56(%rbp), %rax	# array, tmp156
	movq	8(%rax), %rdx	# array_7(D)->common.type, D.21586
	movq	global_trees(%rip), %rax	# global_trees, D.21586
	cmpq	%rax, %rdx	# D.21586, D.21586
	je	.L305	#,
	.loc 1 1293 0
	movq	-64(%rbp), %rax	# index, tmp157
	movq	8(%rax), %rdx	# index_5(D)->common.type, D.21586
	movq	global_trees(%rip), %rax	# global_trees, D.21586
	cmpq	%rax, %rdx	# D.21586, D.21586
	jne	.L306	#,
.L305:
	.loc 1 1294 0
	movq	global_trees(%rip), %rax	# global_trees, D.21585
	jmp	.L304	#
.L306:
	.loc 1 1296 0
	movq	-56(%rbp), %rax	# array, tmp158
	movq	8(%rax), %rax	# array_7(D)->common.type, D.21586
	movzbl	16(%rax), %eax	# _12->common.code, D.21587
	cmpb	$18, %al	#, D.21587
	jne	.L307	#,
	.loc 1 1297 0
	movq	-56(%rbp), %rax	# array, tmp159
	movzbl	16(%rax), %eax	# array_7(D)->common.code, D.21587
	cmpb	$41, %al	#, D.21587
	je	.L307	#,
.LBB19:
	.loc 1 1307 0
	movl	warn_char_subscripts(%rip), %eax	# warn_char_subscripts, warn_char_subscripts.41
	testl	%eax, %eax	# warn_char_subscripts.41
	je	.L308	#,
	.loc 1 1308 0
	movq	-64(%rbp), %rax	# index, tmp160
	movq	8(%rax), %rax	# index_5(D)->common.type, D.21586
	movq	128(%rax), %rdx	# _16->type.main_variant, D.21586
	movq	integer_types(%rip), %rax	# integer_types, D.21586
	cmpq	%rax, %rdx	# D.21586, D.21586
	jne	.L308	#,
	.loc 1 1309 0
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L308:
	.loc 1 1312 0
	movq	-64(%rbp), %rax	# index, tmp161
	movq	%rax, %rdi	# tmp161,
	call	default_conversion	#
	movq	%rax, -64(%rbp)	# tmp162, index
	.loc 1 1315 0
	movq	-64(%rbp), %rax	# index, tmp163
	movq	8(%rax), %rax	# index_19->common.type, D.21586
	movzbl	16(%rax), %eax	# _20->common.code, D.21587
	cmpb	$6, %al	#, D.21587
	je	.L309	#,
	.loc 1 1317 0
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1318 0
	movq	global_trees(%rip), %rax	# global_trees, D.21585
	jmp	.L304	#
.L309:
	.loc 1 1325 0
	movq	-64(%rbp), %rax	# index, tmp164
	movzbl	16(%rax), %eax	# index_19->common.code, D.21587
	cmpb	$25, %al	#, D.21587
	jne	.L310	#,
	.loc 1 1326 0
	movq	-56(%rbp), %rax	# array, tmp165
	movq	8(%rax), %rax	# array_7(D)->common.type, D.21586
	movq	8(%rax), %rax	# _24->common.type, D.21586
	movq	32(%rax), %rax	# _25->type.size, D.21586
	testq	%rax, %rax	# D.21586
	je	.L311	#,
	.loc 1 1327 0
	movq	-56(%rbp), %rax	# array, tmp166
	movq	8(%rax), %rax	# array_7(D)->common.type, D.21586
	movq	8(%rax), %rax	# _27->common.type, D.21586
	movq	32(%rax), %rax	# _28->type.size, D.21586
	movzbl	16(%rax), %eax	# _29->common.code, D.21587
	cmpb	$25, %al	#, D.21587
	je	.L311	#,
.L310:
	.loc 1 1329 0
	movq	-56(%rbp), %rax	# array, tmp167
	movq	%rax, %rdi	# tmp167,
	call	mark_addressable	#
	testl	%eax, %eax	# D.21588
	jne	.L311	#,
	.loc 1 1330 0
	movq	global_trees(%rip), %rax	# global_trees, D.21585
	jmp	.L304	#
.L311:
	.loc 1 1336 0
	movq	-64(%rbp), %rax	# index, tmp168
	movzbl	16(%rax), %eax	# index_19->common.code, D.21587
	cmpb	$25, %al	#, D.21587
	jne	.L312	#,
	.loc 1 1337 0
	movq	-56(%rbp), %rax	# array, tmp169
	movq	8(%rax), %rax	# array_7(D)->common.type, D.21586
	movq	24(%rax), %rax	# _34->type.values, D.21586
	testq	%rax, %rax	# D.21586
	je	.L312	#,
	.loc 1 1338 0
	movq	-56(%rbp), %rax	# array, tmp170
	movq	8(%rax), %rax	# array_7(D)->common.type, D.21586
	movq	24(%rax), %rdx	# _36->type.values, D.21586
	movq	-64(%rbp), %rax	# index, tmp171
	movq	%rdx, %rsi	# D.21586,
	movq	%rax, %rdi	# tmp171,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21588
	jne	.L312	#,
	.loc 1 1340 0
	movq	-56(%rbp), %rax	# array, tmp172
	movq	%rax, %rdi	# tmp172,
	call	mark_addressable	#
	testl	%eax, %eax	# D.21588
	jne	.L312	#,
	.loc 1 1341 0
	movq	global_trees(%rip), %rax	# global_trees, D.21585
	jmp	.L304	#
.L312:
	.loc 1 1344 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.42
	testl	%eax, %eax	# pedantic.42
	je	.L313	#,
.LBB20:
	.loc 1 1346 0
	movq	-56(%rbp), %rax	# array, tmp173
	movq	%rax, -48(%rbp)	# tmp173, foo
	.loc 1 1347 0
	jmp	.L314	#
.L315:
	.loc 1 1348 0
	movq	-48(%rbp), %rax	# foo, tmp174
	movq	32(%rax), %rax	# foo_1->exp.operands, tmp175
	movq	%rax, -48(%rbp)	# tmp175, foo
.L314:
	.loc 1 1347 0 discriminator 1
	movq	-48(%rbp), %rax	# foo, tmp176
	movzbl	16(%rax), %eax	# foo_1->common.code, D.21587
	cmpb	$39, %al	#, D.21587
	je	.L315	#,
	.loc 1 1349 0
	movq	-48(%rbp), %rax	# foo, tmp177
	movzbl	16(%rax), %eax	# foo_1->common.code, D.21587
	cmpb	$34, %al	#, D.21587
	jne	.L316	#,
	.loc 1 1349 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# foo, tmp178
	movzbl	49(%rax), %eax	# *foo_1, D.21587
	andl	$4, %eax	#, D.21587
	testb	%al, %al	# D.21587
	je	.L316	#,
	.loc 1 1350 0 is_stmt 1
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L313	#
.L316:
	.loc 1 1351 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.43
	testl	%eax, %eax	# flag_isoc99.43
	jne	.L313	#,
	.loc 1 1351 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# foo, tmp179
	movq	%rax, %rdi	# tmp179,
	call	lvalue_p	#
	testl	%eax, %eax	# D.21588
	jne	.L313	#,
	.loc 1 1352 0 is_stmt 1
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L313:
.LBE20:
	.loc 1 1355 0
	movq	-56(%rbp), %rax	# array, tmp180
	movq	8(%rax), %rax	# array_7(D)->common.type, D.21586
	movq	8(%rax), %rax	# _50->common.type, D.21586
	movq	128(%rax), %rax	# _51->type.main_variant, tmp181
	movq	%rax, -24(%rbp)	# tmp181, type
	.loc 1 1356 0
	movq	-64(%rbp), %rcx	# index, tmp182
	movq	-56(%rbp), %rdx	# array, tmp183
	movq	-24(%rbp), %rax	# type, tmp184
	movq	%rax, %rsi	# tmp184,
	movl	$43, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp185, rval
	.loc 1 1360 0
	movq	-16(%rbp), %rax	# rval, tmp186
	movzbl	17(%rax), %eax	# *rval_53, tmp189
	shrb	$4, %al	#, D.21589
	andl	$1, %eax	#, D.21589
	movl	%eax, %edx	# D.21589, D.21590
	movq	-56(%rbp), %rax	# array, tmp190
	movq	8(%rax), %rax	# array_7(D)->common.type, D.21586
	movq	8(%rax), %rax	# _56->common.type, D.21586
	movzbl	17(%rax), %eax	# *_57, tmp193
	shrb	$4, %al	#, D.21589
	andl	$1, %eax	#, D.21589
	movl	%eax, %ecx	# D.21589, D.21591
	.loc 1 1361 0
	movq	-56(%rbp), %rax	# array, tmp194
	movzbl	17(%rax), %eax	# *array_7(D), tmp197
	shrb	$4, %al	#, D.21589
	andl	$1, %eax	#, D.21589
	.loc 1 1360 0
	orl	%ecx, %eax	# D.21591, D.21591
	orl	%edx, %eax	# D.21590, D.21590
	andl	$1, %eax	#, D.21589
	movl	%eax, %edx	# D.21589, D.21589
	movq	-16(%rbp), %rax	# rval, tmp198
	andl	$1, %edx	#, tmp200
	movl	%edx, %ecx	# tmp200, tmp201
	sall	$4, %ecx	#, tmp201
	movzbl	17(%rax), %edx	#, tmp202
	andl	$-17, %edx	#, tmp203
	orl	%ecx, %edx	# tmp201, tmp204
	movb	%dl, 17(%rax)	# tmp204,
	.loc 1 1363 0
	movq	-16(%rbp), %rax	# rval, tmp205
	movzbl	17(%rax), %eax	# *rval_53, tmp208
	andl	$1, %eax	#, D.21589
	movl	%eax, %edx	# D.21589, D.21590
	movq	-56(%rbp), %rax	# array, tmp209
	movq	8(%rax), %rax	# array_7(D)->common.type, D.21586
	movq	8(%rax), %rax	# _69->common.type, D.21586
	movzbl	17(%rax), %eax	# *_70, tmp212
	shrb	$3, %al	#, D.21589
	andl	$1, %eax	#, D.21589
	movl	%eax, %ecx	# D.21589, D.21591
	.loc 1 1364 0
	movq	-56(%rbp), %rax	# array, tmp213
	movzbl	17(%rax), %eax	# *array_7(D), tmp216
	andl	$1, %eax	#, D.21589
	.loc 1 1363 0
	orl	%ecx, %eax	# D.21591, D.21591
	orl	%edx, %eax	# D.21590, D.21590
	andl	$1, %eax	#, D.21589
	movl	%eax, %edx	# D.21589, D.21589
	movq	-16(%rbp), %rax	# rval, tmp217
	movl	%edx, %ecx	# D.21589, tmp219
	andl	$1, %ecx	#, tmp219
	movzbl	17(%rax), %edx	#, tmp220
	andl	$-2, %edx	#, tmp221
	orl	%ecx, %edx	# tmp219, tmp222
	movb	%dl, 17(%rax)	# tmp222,
	.loc 1 1366 0
	movq	-16(%rbp), %rax	# rval, tmp223
	movzbl	17(%rax), %eax	# *rval_53, tmp226
	shrb	$3, %al	#, D.21589
	andl	$1, %eax	#, D.21589
	movl	%eax, %edx	# D.21589, D.21590
	movq	-56(%rbp), %rax	# array, tmp227
	movq	8(%rax), %rax	# array_7(D)->common.type, D.21586
	movq	8(%rax), %rax	# _82->common.type, D.21586
	movzbl	17(%rax), %eax	# *_83, tmp230
	shrb	$3, %al	#, D.21589
	andl	$1, %eax	#, D.21589
	movl	%eax, %ecx	# D.21589, D.21591
	.loc 1 1371 0
	movq	-56(%rbp), %rax	# array, tmp231
	movzbl	17(%rax), %eax	# *array_7(D), tmp234
	shrb	$3, %al	#, D.21589
	andl	$1, %eax	#, D.21589
	.loc 1 1366 0
	orl	%ecx, %eax	# D.21591, D.21591
	orl	%edx, %eax	# D.21590, D.21590
	andl	$1, %eax	#, D.21589
	movl	%eax, %edx	# D.21589, D.21589
	movq	-16(%rbp), %rax	# rval, tmp235
	andl	$1, %edx	#, tmp237
	leal	0(,%rdx,8), %ecx	#, tmp238
	movzbl	17(%rax), %edx	#, tmp239
	andl	$-9, %edx	#, tmp240
	orl	%ecx, %edx	# tmp238, tmp241
	movb	%dl, 17(%rax)	# tmp241,
	.loc 1 1372 0
	movq	-16(%rbp), %rax	# rval, tmp242
	movq	%rax, %rdi	# tmp242,
	call	fold	#
	movq	%rax, %rdi	# D.21586,
	call	require_complete_type	#
	jmp	.L304	#
.L307:
.LBE19:
.LBB21:
	.loc 1 1376 0
	movq	-56(%rbp), %rax	# array, tmp243
	movq	%rax, %rdi	# tmp243,
	call	default_conversion	#
	movq	%rax, -40(%rbp)	# tmp244, ar
	.loc 1 1377 0
	movq	-64(%rbp), %rax	# index, tmp245
	movq	%rax, %rdi	# tmp245,
	call	default_conversion	#
	movq	%rax, -32(%rbp)	# tmp246, ind
	.loc 1 1382 0
	movl	warn_char_subscripts(%rip), %eax	# warn_char_subscripts, warn_char_subscripts.44
	testl	%eax, %eax	# warn_char_subscripts.44
	je	.L317	#,
	.loc 1 1383 0
	movq	-64(%rbp), %rax	# index, tmp247
	movq	8(%rax), %rax	# index_5(D)->common.type, D.21586
	movzbl	16(%rax), %eax	# _98->common.code, D.21587
	cmpb	$6, %al	#, D.21587
	jne	.L317	#,
	.loc 1 1384 0
	movq	-64(%rbp), %rax	# index, tmp248
	movq	8(%rax), %rax	# index_5(D)->common.type, D.21586
	movq	128(%rax), %rdx	# _100->type.main_variant, D.21586
	movq	integer_types(%rip), %rax	# integer_types, D.21586
	cmpq	%rax, %rdx	# D.21586, D.21586
	jne	.L317	#,
	.loc 1 1385 0
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L317:
	.loc 1 1388 0
	movq	-40(%rbp), %rax	# ar, tmp249
	movq	8(%rax), %rax	# ar_95->common.type, D.21586
	movzbl	16(%rax), %eax	# _103->common.code, D.21587
	cmpb	$6, %al	#, D.21587
	jne	.L318	#,
.LBB22:
	.loc 1 1390 0
	movq	-40(%rbp), %rax	# ar, tmp250
	movq	%rax, -8(%rbp)	# tmp250, temp
	.loc 1 1391 0
	movq	-32(%rbp), %rax	# ind, tmp251
	movq	%rax, -40(%rbp)	# tmp251, ar
	.loc 1 1392 0
	movq	-8(%rbp), %rax	# temp, tmp252
	movq	%rax, -32(%rbp)	# tmp252, ind
.L318:
.LBE22:
	.loc 1 1395 0
	movq	global_trees(%rip), %rax	# global_trees, D.21586
	cmpq	-40(%rbp), %rax	# ar, D.21586
	jne	.L319	#,
	.loc 1 1396 0
	movq	-40(%rbp), %rax	# ar, D.21585
	jmp	.L304	#
.L319:
	.loc 1 1398 0
	movq	-40(%rbp), %rax	# ar, tmp253
	movq	8(%rax), %rax	# ar_2->common.type, D.21586
	movzbl	16(%rax), %eax	# _110->common.code, D.21587
	cmpb	$13, %al	#, D.21587
	jne	.L320	#,
	.loc 1 1399 0
	movq	-40(%rbp), %rax	# ar, tmp254
	movq	8(%rax), %rax	# ar_2->common.type, D.21586
	movq	8(%rax), %rax	# _112->common.type, D.21586
	movzbl	16(%rax), %eax	# _113->common.code, D.21587
	cmpb	$23, %al	#, D.21587
	jne	.L321	#,
.L320:
	.loc 1 1401 0
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1402 0
	movq	global_trees(%rip), %rax	# global_trees, D.21585
	jmp	.L304	#
.L321:
	.loc 1 1404 0
	movq	-32(%rbp), %rax	# ind, tmp255
	movq	8(%rax), %rax	# ind_3->common.type, D.21586
	movzbl	16(%rax), %eax	# _115->common.code, D.21587
	cmpb	$6, %al	#, D.21587
	je	.L322	#,
	.loc 1 1406 0
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1407 0
	movq	global_trees(%rip), %rax	# global_trees, D.21585
	jmp	.L304	#
.L322:
	.loc 1 1410 0
	movq	-32(%rbp), %rdx	# ind, tmp256
	movq	-40(%rbp), %rax	# ar, tmp257
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp257,
	movl	$59, %edi	#,
	call	build_binary_op	#
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# D.21586,
	call	build_indirect_ref	#
.L304:
.LBE21:
	.loc 1 1413 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	build_array_ref, .-build_array_ref
	.section	.rodata
	.align 8
.LC31:
	.string	"`%s' undeclared here (not in a function)"
	.align 8
.LC32:
	.string	"`%s' undeclared (first use in this function)"
	.align 8
.LC33:
	.string	"(Each undeclared identifier is reported only once"
	.align 8
.LC34:
	.string	"for each function it appears in.)"
	.align 8
.LC35:
	.string	"local declaration of `%s' hides instance variable"
	.text
	.globl	build_external_ref
	.type	build_external_ref, @function
build_external_ref:
.LFB21:
	.loc 1 1421 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# id, id
	movl	%esi, -44(%rbp)	# fun, fun
	.loc 1 1423 0
	movq	-40(%rbp), %rax	# id, tmp82
	movq	%rax, %rdi	# tmp82,
	call	lookup_name	#
	movq	%rax, -16(%rbp)	# tmp83, decl
	.loc 1 1424 0
	movq	-40(%rbp), %rax	# id, tmp84
	movq	%rax, %rdi	# tmp84,
	call	lookup_objc_ivar	#
	movq	%rax, -8(%rbp)	# tmp85, objc_ivar
	.loc 1 1426 0
	cmpq	$0, -16(%rbp)	#, decl
	je	.L324	#,
	.loc 1 1426 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp86
	movzbl	18(%rax), %eax	# *decl_7, D.21601
	andl	$-128, %eax	#, D.21601
	testb	%al, %al	# D.21601
	je	.L324	#,
	.loc 1 1427 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp87
	movq	%rax, %rdi	# tmp87,
	call	warn_deprecated_use	#
.L324:
	.loc 1 1429 0
	cmpq	$0, -16(%rbp)	#, decl
	je	.L325	#,
	.loc 1 1429 0 is_stmt 0 discriminator 1
	movq	global_trees(%rip), %rax	# global_trees, D.21602
	cmpq	-16(%rbp), %rax	# decl, D.21602
	je	.L325	#,
	movq	-16(%rbp), %rax	# decl, tmp88
	movzbl	53(%rax), %eax	# *decl_7, D.21601
	andl	$1, %eax	#, D.21601
	testb	%al, %al	# D.21601
	je	.L326	#,
.L325:
	.loc 1 1431 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, objc_ivar
	je	.L327	#,
	.loc 1 1432 0
	movq	-8(%rbp), %rax	# objc_ivar, tmp89
	movq	%rax, -24(%rbp)	# tmp89, ref
	jmp	.L328	#
.L327:
	.loc 1 1433 0
	cmpl	$0, -44(%rbp)	#, fun
	je	.L329	#,
	.loc 1 1435 0
	cmpq	$0, -16(%rbp)	#, decl
	je	.L330	#,
	.loc 1 1435 0 is_stmt 0 discriminator 1
	movq	global_trees(%rip), %rax	# global_trees, D.21602
	cmpq	-16(%rbp), %rax	# decl, D.21602
	jne	.L331	#,
.L330:
	.loc 1 1437 0 is_stmt 1
	movq	-40(%rbp), %rax	# id, tmp90
	movq	%rax, %rdi	# tmp90,
	call	implicitly_declare	#
	movq	%rax, -24(%rbp)	# tmp91, ref
	jmp	.L328	#
.L331:
	.loc 1 1443 0
	movq	-40(%rbp), %rax	# id, tmp92
	movq	%rax, %rdi	# tmp92,
	call	implicit_decl_warning	#
	.loc 1 1446 0
	movq	-16(%rbp), %rax	# decl, tmp93
	movzbl	53(%rax), %edx	#, tmp96
	andl	$-2, %edx	#, tmp97
	movb	%dl, 53(%rax)	# tmp97,
	.loc 1 1447 0
	movq	-16(%rbp), %rax	# decl, tmp98
	movq	%rax, -24(%rbp)	# tmp98, ref
	jmp	.L328	#
.L329:
	.loc 1 1454 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.45
	testq	%rax, %rax	# current_function_decl.45
	jne	.L333	#,
	.loc 1 1456 0
	movq	-40(%rbp), %rax	# id, tmp99
	movq	32(%rax), %rax	# id_6(D)->identifier.id.str, D.21603
	.loc 1 1455 0
	movq	%rax, %rsi	# D.21603,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L334	#
.L333:
	.loc 1 1459 0
	movq	-40(%rbp), %rax	# id, tmp100
	movq	56(%rax), %rdx	# MEM[(struct lang_identifier *)id_6(D)].global_value, D.21602
	movq	global_trees(%rip), %rax	# global_trees, D.21602
	cmpq	%rax, %rdx	# D.21602, D.21602
	jne	.L335	#,
	.loc 1 1460 0
	movq	-40(%rbp), %rax	# id, tmp101
	movq	88(%rax), %rdx	# MEM[(struct lang_identifier *)id_6(D)].error_locus, D.21602
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.46
	cmpq	%rax, %rdx	# current_function_decl.46, D.21602
	je	.L336	#,
.L335:
	.loc 1 1463 0
	movq	-40(%rbp), %rax	# id, tmp102
	movq	32(%rax), %rax	# id_6(D)->identifier.id.str, D.21603
	.loc 1 1462 0
	movq	%rax, %rsi	# D.21603,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1465 0
	movl	undeclared_variable_notice(%rip), %eax	# undeclared_variable_notice, undeclared_variable_notice.47
	testl	%eax, %eax	# undeclared_variable_notice.47
	jne	.L336	#,
	.loc 1 1467 0
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1468 0
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1469 0
	movl	$1, undeclared_variable_notice(%rip)	#, undeclared_variable_notice
.L336:
	.loc 1 1472 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21602
	movq	-40(%rbp), %rax	# id, tmp103
	movq	%rdx, 56(%rax)	# D.21602, MEM[(struct lang_identifier *)id_6(D)].global_value
	.loc 1 1473 0
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.48
	movq	-40(%rbp), %rax	# id, tmp104
	movq	%rdx, 88(%rax)	# current_function_decl.48, MEM[(struct lang_identifier *)id_6(D)].error_locus
.L334:
	.loc 1 1475 0
	movq	global_trees(%rip), %rax	# global_trees, D.21600
	jmp	.L337	#
.L328:
	.loc 1 1431 0
	jmp	.L338	#
.L326:
	.loc 1 1481 0
	cmpq	$0, -8(%rbp)	#, objc_ivar
	jne	.L339	#,
	.loc 1 1482 0
	movq	-16(%rbp), %rax	# decl, tmp105
	movq	%rax, -24(%rbp)	# tmp105, ref
	jmp	.L338	#
.L339:
	.loc 1 1483 0
	movq	-16(%rbp), %rax	# decl, tmp106
	cmpq	-8(%rbp), %rax	# objc_ivar, tmp106
	je	.L340	#,
	.loc 1 1483 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# id, tmp107
	movq	64(%rax), %rax	# MEM[(struct lang_identifier *)id_6(D)].local_value, D.21602
	testq	%rax, %rax	# D.21602
	je	.L340	#,
	.loc 1 1486 0 is_stmt 1
	movq	-40(%rbp), %rax	# id, tmp108
	movq	32(%rax), %rax	# id_6(D)->identifier.id.str, D.21603
	.loc 1 1485 0
	movq	%rax, %rsi	# D.21603,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 1487 0
	movq	-16(%rbp), %rax	# decl, tmp109
	movq	%rax, -24(%rbp)	# tmp109, ref
	jmp	.L338	#
.L340:
	.loc 1 1490 0
	movq	-8(%rbp), %rax	# objc_ivar, tmp110
	movq	%rax, -24(%rbp)	# tmp110, ref
.L338:
	.loc 1 1493 0
	movq	-24(%rbp), %rax	# ref, tmp111
	movq	8(%rax), %rdx	# ref_3->common.type, D.21602
	movq	global_trees(%rip), %rax	# global_trees, D.21602
	cmpq	%rax, %rdx	# D.21602, D.21602
	jne	.L341	#,
	.loc 1 1494 0
	movq	global_trees(%rip), %rax	# global_trees, D.21600
	jmp	.L337	#
.L341:
	.loc 1 1496 0
	movq	-24(%rbp), %rax	# ref, tmp112
	movq	%rax, %rdi	# tmp112,
	call	assemble_external	#
	.loc 1 1497 0
	movq	-24(%rbp), %rax	# ref, tmp113
	movzbl	18(%rax), %edx	#, tmp116
	orl	$1, %edx	#, tmp117
	movb	%dl, 18(%rax)	# tmp117,
	.loc 1 1499 0
	movq	-24(%rbp), %rax	# ref, tmp118
	movzbl	16(%rax), %eax	# ref_3->common.code, D.21601
	cmpb	$32, %al	#, D.21601
	jne	.L342	#,
	.loc 1 1501 0
	movq	-24(%rbp), %rax	# ref, tmp119
	movq	104(%rax), %rax	# ref_3->decl.initial, tmp120
	movq	%rax, -24(%rbp)	# tmp120, ref
	.loc 1 1502 0
	movq	-24(%rbp), %rax	# ref, tmp121
	movzbl	17(%rax), %edx	#, tmp124
	orl	$2, %edx	#, tmp125
	movb	%dl, 17(%rax)	# tmp125,
.L342:
	.loc 1 1505 0
	movq	-24(%rbp), %rax	# ref, D.21600
.L337:
	.loc 1 1506 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	build_external_ref, .-build_external_ref
	.section	.rodata
	.align 8
.LC36:
	.string	"called object is not a function"
	.text
	.globl	build_function_call
	.type	build_function_call, @function
build_function_call:
.LFB22:
	.loc 1 1516 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# function, function
	movq	%rsi, -64(%rbp)	# params, params
	.loc 1 1517 0
	movq	$0, -48(%rbp)	#, fundecl
	.loc 1 1519 0
	movq	$0, -40(%rbp)	#, name
	movq	$0, -32(%rbp)	#, assembler_name
	.loc 1 1522 0
	jmp	.L344	#
.L347:
	.loc 1 1522 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# function, tmp101
	movq	32(%rax), %rax	# function_1->exp.operands, tmp102
	movq	%rax, -56(%rbp)	# tmp102, function
.L344:
	movq	-56(%rbp), %rax	# function, tmp103
	movzbl	16(%rax), %eax	# function_1->common.code, D.21610
	cmpb	$115, %al	#, D.21610
	je	.L345	#,
	.loc 1 1522 0 discriminator 3
	movq	-56(%rbp), %rax	# function, tmp104
	movzbl	16(%rax), %eax	# function_1->common.code, D.21610
	cmpb	$114, %al	#, D.21610
	je	.L345	#,
	.loc 1 1522 0 discriminator 1
	movq	-56(%rbp), %rax	# function, tmp105
	movzbl	16(%rax), %eax	# function_1->common.code, D.21610
	cmpb	$116, %al	#, D.21610
	jne	.L346	#,
.L345:
	.loc 1 1522 0 discriminator 2
	movq	-56(%rbp), %rax	# function, tmp106
	movq	32(%rax), %rdx	# function_1->exp.operands, D.21611
	movq	global_trees(%rip), %rax	# global_trees, D.21611
	cmpq	%rax, %rdx	# D.21611, D.21611
	je	.L346	#,
	.loc 1 1522 0 discriminator 1
	movq	-56(%rbp), %rax	# function, tmp107
	movq	8(%rax), %rdx	# function_1->common.type, D.21611
	movq	-56(%rbp), %rax	# function, tmp108
	movq	32(%rax), %rax	# function_1->exp.operands, D.21611
	movq	8(%rax), %rax	# _17->common.type, D.21611
	cmpq	%rax, %rdx	# D.21611, D.21611
	je	.L347	#,
.L346:
	.loc 1 1525 0 is_stmt 1
	movq	-56(%rbp), %rax	# function, tmp109
	movzbl	16(%rax), %eax	# function_1->common.code, D.21610
	cmpb	$30, %al	#, D.21610
	jne	.L348	#,
	.loc 1 1527 0
	movq	-56(%rbp), %rax	# function, tmp110
	movq	72(%rax), %rax	# function_1->decl.name, tmp111
	movq	%rax, -40(%rbp)	# tmp111, name
	.loc 1 1528 0
	movq	-56(%rbp), %rax	# function, tmp112
	movq	120(%rax), %rax	# function_1->decl.assembler_name, D.21611
	testq	%rax, %rax	# D.21611
	jne	.L349	#,
	.loc 1 1528 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.49
	movq	-56(%rbp), %rdx	# function, tmp113
	movq	%rdx, %rdi	# tmp113,
	call	*%rax	# lang_set_decl_assembler_name.49
.L349:
	.loc 1 1528 0 discriminator 2
	movq	-56(%rbp), %rax	# function, tmp114
	movq	120(%rax), %rax	# function_1->decl.assembler_name, tmp115
	movq	%rax, -32(%rbp)	# tmp115, assembler_name
	.loc 1 1533 0 is_stmt 1 discriminator 2
	movq	-56(%rbp), %rax	# function, tmp116
	movzbl	17(%rax), %eax	# *function_1, D.21610
	andl	$16, %eax	#, D.21610
	testb	%al, %al	# D.21610
	setne	%al	#, D.21612
	movzbl	%al, %edx	# D.21612, D.21613
	movq	-56(%rbp), %rax	# function, tmp117
	movzbl	17(%rax), %eax	# *function_1, D.21610
	andl	$8, %eax	#, D.21610
	testb	%al, %al	# D.21610
	je	.L350	#,
	.loc 1 1533 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.50
	jmp	.L351	#
.L350:
	.loc 1 1533 0 discriminator 2
	movl	$0, %eax	#, iftmp.50
.L351:
	.loc 1 1533 0 discriminator 1
	orl	%eax, %edx	# iftmp.50, D.21613
	movq	-56(%rbp), %rax	# function, tmp118
	movq	8(%rax), %rax	# function_1->common.type, D.21611
	movl	%edx, %esi	# D.21613,
	movq	%rax, %rdi	# D.21611,
	call	build_qualified_type	#
	movq	%rax, -24(%rbp)	# tmp119, fntype
	.loc 1 1536 0 is_stmt 1 discriminator 1
	movq	-56(%rbp), %rax	# function, tmp120
	movq	%rax, -48(%rbp)	# tmp120, fundecl
	.loc 1 1537 0 discriminator 1
	movq	-24(%rbp), %rax	# fntype, tmp121
	movq	%rax, %rdi	# tmp121,
	call	build_pointer_type	#
	movq	-56(%rbp), %rdx	# function, tmp122
	movq	%rax, %rsi	# D.21611,
	movl	$121, %edi	#,
	call	build1	#
	movq	%rax, -56(%rbp)	# tmp123, function
	jmp	.L352	#
.L348:
	.loc 1 1540 0
	movq	-56(%rbp), %rax	# function, tmp124
	movq	%rax, %rdi	# tmp124,
	call	default_conversion	#
	movq	%rax, -56(%rbp)	# tmp125, function
.L352:
	.loc 1 1542 0
	movq	-56(%rbp), %rax	# function, tmp126
	movq	8(%rax), %rax	# function_2->common.type, tmp127
	movq	%rax, -24(%rbp)	# tmp127, fntype
	.loc 1 1544 0
	movq	-24(%rbp), %rax	# fntype, tmp128
	movzbl	16(%rax), %eax	# fntype_40->common.code, D.21610
	testb	%al, %al	# D.21610
	jne	.L353	#,
	.loc 1 1545 0
	movq	global_trees(%rip), %rax	# global_trees, D.21609
	jmp	.L354	#
.L353:
	.loc 1 1547 0
	movq	-24(%rbp), %rax	# fntype, tmp129
	movzbl	16(%rax), %eax	# fntype_40->common.code, D.21610
	cmpb	$13, %al	#, D.21610
	jne	.L355	#,
	.loc 1 1548 0 discriminator 1
	movq	-24(%rbp), %rax	# fntype, tmp130
	movq	8(%rax), %rax	# fntype_40->common.type, D.21611
	movzbl	16(%rax), %eax	# _44->common.code, D.21610
	.loc 1 1547 0 discriminator 1
	cmpb	$23, %al	#, D.21610
	je	.L356	#,
.L355:
	.loc 1 1550 0
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1551 0
	movq	global_trees(%rip), %rax	# global_trees, D.21609
	jmp	.L354	#
.L356:
	.loc 1 1554 0
	cmpq	$0, -48(%rbp)	#, fundecl
	je	.L357	#,
	.loc 1 1554 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# fundecl, tmp131
	movzbl	17(%rax), %eax	# *fundecl_3, D.21610
	andl	$8, %eax	#, D.21610
	testb	%al, %al	# D.21610
	je	.L357	#,
	.loc 1 1555 0 is_stmt 1
	movl	$1, current_function_returns_abnormally(%rip)	#, current_function_returns_abnormally
.L357:
	.loc 1 1558 0
	movq	-24(%rbp), %rax	# fntype, tmp132
	movq	8(%rax), %rax	# fntype_40->common.type, tmp133
	movq	%rax, -24(%rbp)	# tmp133, fntype
	.loc 1 1564 0
	movq	-24(%rbp), %rax	# fntype, tmp134
	movq	24(%rax), %rax	# fntype_48->type.values, D.21611
	movq	-48(%rbp), %rcx	# fundecl, tmp135
	movq	-40(%rbp), %rdx	# name, tmp136
	movq	-64(%rbp), %rsi	# params, tmp137
	movq	%rax, %rdi	# D.21611,
	call	convert_arguments	#
	movq	%rax, -16(%rbp)	# tmp138, coerced_params
	.loc 1 1568 0
	movl	warn_format(%rip), %eax	# warn_format, warn_format.51
	testl	%eax, %eax	# warn_format.51
	je	.L358	#,
	.loc 1 1569 0
	movq	-24(%rbp), %rax	# fntype, tmp139
	movq	48(%rax), %rax	# fntype_48->type.attributes, D.21611
	movq	-16(%rbp), %rdx	# coerced_params, tmp140
	movq	%rax, %rsi	# D.21611,
	movl	$0, %edi	#,
	call	check_function_format	#
.L358:
	.loc 1 1575 0
	movq	-56(%rbp), %rax	# function, tmp141
	movzbl	16(%rax), %eax	# function_2->common.code, D.21610
	cmpb	$121, %al	#, D.21610
	jne	.L359	#,
	.loc 1 1576 0
	movq	-56(%rbp), %rax	# function, tmp142
	movq	32(%rax), %rax	# function_2->exp.operands, D.21611
	movzbl	16(%rax), %eax	# _55->common.code, D.21610
	cmpb	$30, %al	#, D.21610
	jne	.L359	#,
	.loc 1 1577 0
	movq	-56(%rbp), %rax	# function, tmp143
	movq	32(%rax), %rax	# function_2->exp.operands, D.21611
	movzbl	51(%rax), %eax	# *_57, D.21610
	andl	$96, %eax	#, D.21610
	testb	%al, %al	# D.21610
	je	.L359	#,
	.loc 1 1579 0
	movq	-56(%rbp), %rax	# function, tmp144
	movq	32(%rax), %rax	# function_2->exp.operands, D.21611
	movq	-16(%rbp), %rdx	# coerced_params, tmp145
	movq	-64(%rbp), %rcx	# params, tmp146
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# D.21611,
	call	expand_tree_builtin	#
	movq	%rax, -8(%rbp)	# tmp147, result
	.loc 1 1581 0
	cmpq	$0, -8(%rbp)	#, result
	je	.L359	#,
	.loc 1 1582 0
	movq	-8(%rbp), %rax	# result, D.21609
	jmp	.L354	#
.L359:
	.loc 1 1585 0
	movq	-24(%rbp), %rax	# fntype, tmp148
	movq	8(%rax), %rax	# fntype_48->common.type, D.21611
	movq	-16(%rbp), %rcx	# coerced_params, tmp149
	movq	-56(%rbp), %rdx	# function, tmp150
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# D.21611,
	movl	$53, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -8(%rbp)	# tmp151, result
	.loc 1 1587 0
	movq	-8(%rbp), %rax	# result, tmp152
	movzbl	17(%rax), %edx	#, tmp155
	orl	$1, %edx	#, tmp156
	movb	%dl, 17(%rax)	# tmp156,
	.loc 1 1588 0
	movq	-8(%rbp), %rax	# result, tmp157
	movq	%rax, %rdi	# tmp157,
	call	fold	#
	movq	%rax, -8(%rbp)	# tmp158, result
	.loc 1 1590 0
	movq	-8(%rbp), %rax	# result, tmp159
	movq	8(%rax), %rax	# result_65->common.type, D.21611
	movzbl	16(%rax), %eax	# _66->common.code, D.21610
	cmpb	$5, %al	#, D.21610
	jne	.L360	#,
	.loc 1 1591 0
	movq	-8(%rbp), %rax	# result, D.21609
	jmp	.L354	#
.L360:
	.loc 1 1592 0
	movq	-8(%rbp), %rax	# result, tmp160
	movq	%rax, %rdi	# tmp160,
	call	require_complete_type	#
.L354:
	.loc 1 1593 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	build_function_call, .-build_function_call
	.section	.rodata
	.align 8
.LC37:
	.string	"too many arguments to function `%s'"
	.align 8
.LC38:
	.string	"too many arguments to function"
	.align 8
.LC39:
	.string	"type of formal parameter %d is incomplete"
	.align 8
.LC40:
	.string	"%s as integer rather than floating due to prototype"
	.align 8
.LC41:
	.string	"%s as integer rather than complex due to prototype"
	.align 8
.LC42:
	.string	"%s as complex rather than floating due to prototype"
	.align 8
.LC43:
	.string	"%s as floating rather than integer due to prototype"
	.align 8
.LC44:
	.string	"%s as complex rather than integer due to prototype"
	.align 8
.LC45:
	.string	"%s as floating rather than complex due to prototype"
	.align 8
.LC46:
	.string	"%s as `float' rather than `double' due to prototype"
	.align 8
.LC47:
	.string	"%s with different width due to prototype"
	.align 8
.LC48:
	.string	"%s as unsigned due to prototype"
.LC49:
	.string	"%s as signed due to prototype"
	.align 8
.LC50:
	.string	"too few arguments to function `%s'"
.LC51:
	.string	"too few arguments to function"
	.text
	.type	convert_arguments, @function
convert_arguments:
.LFB23:
	.loc 1 1616 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# typelist, typelist
	movq	%rsi, -96(%rbp)	# values, values
	movq	%rdx, -104(%rbp)	# name, name
	movq	%rcx, -112(%rbp)	# fundecl, fundecl
	.loc 1 1618 0
	movq	$0, -48(%rbp)	#, result
	.loc 1 1624 0
	movq	-96(%rbp), %rax	# values, tmp187
	movq	%rax, -56(%rbp)	# tmp187, valtail
	movq	-88(%rbp), %rax	# typelist, tmp188
	movq	%rax, -64(%rbp)	# tmp188, typetail
	movl	$0, -72(%rbp)	#, parmnum
	jmp	.L362	#
.L399:
.LBB23:
	.loc 1 1628 0
	cmpq	$0, -64(%rbp)	#, typetail
	je	.L363	#,
	.loc 1 1628 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# typetail, tmp189
	movq	32(%rax), %rax	# typetail_2->list.value, iftmp.52
	jmp	.L364	#
.L363:
	.loc 1 1628 0 discriminator 2
	movl	$0, %eax	#, iftmp.52
.L364:
	.loc 1 1628 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.52, type
	.loc 1 1629 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# valtail, tmp190
	movq	32(%rax), %rax	# valtail_3->list.value, tmp191
	movq	%rax, -40(%rbp)	# tmp191, val
	.loc 1 1631 0 discriminator 3
	movq	global_trees+216(%rip), %rax	# global_trees, D.21615
	cmpq	-24(%rbp), %rax	# type, D.21615
	jne	.L365	#,
	.loc 1 1633 0
	cmpq	$0, -104(%rbp)	#, name
	je	.L366	#,
	.loc 1 1635 0
	movq	-104(%rbp), %rax	# name, tmp192
	movq	32(%rax), %rax	# name_21(D)->identifier.id.str, D.21616
	.loc 1 1634 0
	movq	%rax, %rsi	# D.21616,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1638 0
	jmp	.L368	#
.L366:
	.loc 1 1637 0
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1638 0
	jmp	.L368	#
.L365:
	.loc 1 1644 0
	movq	-40(%rbp), %rax	# val, tmp193
	movzbl	16(%rax), %eax	# val_19->common.code, D.21617
	cmpb	$116, %al	#, D.21617
	jne	.L369	#,
	.loc 1 1645 0
	movq	-40(%rbp), %rax	# val, tmp194
	movq	32(%rax), %rax	# val_19->exp.operands, tmp195
	movq	%rax, -40(%rbp)	# tmp195, val
.L369:
	.loc 1 1647 0
	movq	-40(%rbp), %rax	# val, tmp196
	movq	%rax, %rdi	# tmp196,
	call	default_function_array_conversion	#
	movq	%rax, -40(%rbp)	# tmp197, val
	.loc 1 1649 0
	movq	-40(%rbp), %rax	# val, tmp198
	movq	%rax, %rdi	# tmp198,
	call	require_complete_type	#
	movq	%rax, -40(%rbp)	# tmp199, val
	.loc 1 1651 0
	cmpq	$0, -24(%rbp)	#, type
	je	.L370	#,
.LBB24:
	.loc 1 1656 0
	movq	-24(%rbp), %rax	# type, tmp200
	movq	32(%rax), %rax	# type_18->type.size, D.21615
	testq	%rax, %rax	# D.21615
	jne	.L371	#,
	.loc 1 1658 0
	movl	-72(%rbp), %eax	# parmnum, tmp201
	addl	$1, %eax	#, D.21618
	movl	%eax, %esi	# D.21618,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1659 0
	movq	-40(%rbp), %rax	# val, tmp202
	movq	%rax, -32(%rbp)	# tmp202, parmval
	jmp	.L372	#
.L371:
	.loc 1 1665 0
	movl	warn_conversion(%rip), %eax	# warn_conversion, warn_conversion.53
	testl	%eax, %eax	# warn_conversion.53
	jne	.L373	#,
	.loc 1 1665 0 is_stmt 0 discriminator 1
	movl	warn_traditional(%rip), %eax	# warn_traditional, warn_traditional.54
	testl	%eax, %eax	# warn_traditional.54
	je	.L374	#,
.L373:
.LBB25:
	.loc 1 1667 0 is_stmt 1
	movq	-24(%rbp), %rax	# type, tmp203
	movzwl	60(%rax), %eax	# *type_18, tmp206
	andw	$511, %ax	#, D.21619
	movzwl	%ax, %eax	# D.21619, tmp207
	movl	%eax, -68(%rbp)	# tmp207, formal_prec
	.loc 1 1669 0
	movq	-24(%rbp), %rax	# type, tmp208
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$6, %al	#, D.21617
	je	.L375	#,
	.loc 1 1669 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# type, tmp209
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$10, %al	#, D.21617
	je	.L375	#,
	movq	-24(%rbp), %rax	# type, tmp210
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$11, %al	#, D.21617
	je	.L375	#,
	movq	-24(%rbp), %rax	# type, tmp211
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$12, %al	#, D.21617
	jne	.L376	#,
.L375:
	.loc 1 1670 0 is_stmt 1
	movq	-40(%rbp), %rax	# val, tmp212
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _38->common.code, D.21617
	cmpb	$7, %al	#, D.21617
	jne	.L376	#,
	.loc 1 1671 0
	movl	-72(%rbp), %eax	# parmnum, tmp213
	leal	1(%rax), %edx	#, D.21618
	movq	-104(%rbp), %rax	# name, tmp214
	movl	%edx, %ecx	# D.21618,
	movq	%rax, %rdx	# tmp214,
	movl	$0, %esi	#,
	movl	$.LC40, %edi	#,
	call	warn_for_assignment	#
.L376:
	.loc 1 1672 0
	movq	-24(%rbp), %rax	# type, tmp215
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$6, %al	#, D.21617
	je	.L377	#,
	.loc 1 1672 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# type, tmp216
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$10, %al	#, D.21617
	je	.L377	#,
	movq	-24(%rbp), %rax	# type, tmp217
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$11, %al	#, D.21617
	je	.L377	#,
	movq	-24(%rbp), %rax	# type, tmp218
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$12, %al	#, D.21617
	jne	.L378	#,
.L377:
	.loc 1 1673 0 is_stmt 1
	movq	-40(%rbp), %rax	# val, tmp219
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _45->common.code, D.21617
	cmpb	$8, %al	#, D.21617
	jne	.L378	#,
	.loc 1 1674 0
	movl	-72(%rbp), %eax	# parmnum, tmp220
	leal	1(%rax), %edx	#, D.21618
	movq	-104(%rbp), %rax	# name, tmp221
	movl	%edx, %ecx	# D.21618,
	movq	%rax, %rdx	# tmp221,
	movl	$0, %esi	#,
	movl	$.LC41, %edi	#,
	call	warn_for_assignment	#
	jmp	.L374	#
.L378:
	.loc 1 1675 0
	movq	-24(%rbp), %rax	# type, tmp222
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$8, %al	#, D.21617
	jne	.L379	#,
	.loc 1 1676 0
	movq	-40(%rbp), %rax	# val, tmp223
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _49->common.code, D.21617
	cmpb	$7, %al	#, D.21617
	jne	.L379	#,
	.loc 1 1677 0
	movl	-72(%rbp), %eax	# parmnum, tmp224
	leal	1(%rax), %edx	#, D.21618
	movq	-104(%rbp), %rax	# name, tmp225
	movl	%edx, %ecx	# D.21618,
	movq	%rax, %rdx	# tmp225,
	movl	$0, %esi	#,
	movl	$.LC42, %edi	#,
	call	warn_for_assignment	#
	jmp	.L374	#
.L379:
	.loc 1 1678 0
	movq	-24(%rbp), %rax	# type, tmp226
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$7, %al	#, D.21617
	jne	.L380	#,
	.loc 1 1679 0
	movq	-40(%rbp), %rax	# val, tmp227
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _53->common.code, D.21617
	cmpb	$6, %al	#, D.21617
	je	.L381	#,
	.loc 1 1679 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# val, tmp228
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _55->common.code, D.21617
	cmpb	$10, %al	#, D.21617
	je	.L381	#,
	movq	-40(%rbp), %rax	# val, tmp229
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _57->common.code, D.21617
	cmpb	$11, %al	#, D.21617
	je	.L381	#,
	movq	-40(%rbp), %rax	# val, tmp230
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _59->common.code, D.21617
	cmpb	$12, %al	#, D.21617
	jne	.L380	#,
.L381:
	.loc 1 1680 0 is_stmt 1
	movl	-72(%rbp), %eax	# parmnum, tmp231
	leal	1(%rax), %edx	#, D.21618
	movq	-104(%rbp), %rax	# name, tmp232
	movl	%edx, %ecx	# D.21618,
	movq	%rax, %rdx	# tmp232,
	movl	$0, %esi	#,
	movl	$.LC43, %edi	#,
	call	warn_for_assignment	#
	jmp	.L374	#
.L380:
	.loc 1 1681 0
	movq	-24(%rbp), %rax	# type, tmp233
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$8, %al	#, D.21617
	jne	.L382	#,
	.loc 1 1682 0
	movq	-40(%rbp), %rax	# val, tmp234
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _63->common.code, D.21617
	cmpb	$6, %al	#, D.21617
	je	.L383	#,
	.loc 1 1682 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# val, tmp235
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _65->common.code, D.21617
	cmpb	$10, %al	#, D.21617
	je	.L383	#,
	movq	-40(%rbp), %rax	# val, tmp236
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _67->common.code, D.21617
	cmpb	$11, %al	#, D.21617
	je	.L383	#,
	movq	-40(%rbp), %rax	# val, tmp237
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _69->common.code, D.21617
	cmpb	$12, %al	#, D.21617
	jne	.L382	#,
.L383:
	.loc 1 1683 0 is_stmt 1
	movl	-72(%rbp), %eax	# parmnum, tmp238
	leal	1(%rax), %edx	#, D.21618
	movq	-104(%rbp), %rax	# name, tmp239
	movl	%edx, %ecx	# D.21618,
	movq	%rax, %rdx	# tmp239,
	movl	$0, %esi	#,
	movl	$.LC44, %edi	#,
	call	warn_for_assignment	#
	jmp	.L374	#
.L382:
	.loc 1 1684 0
	movq	-24(%rbp), %rax	# type, tmp240
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$7, %al	#, D.21617
	jne	.L384	#,
	.loc 1 1685 0
	movq	-40(%rbp), %rax	# val, tmp241
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _73->common.code, D.21617
	cmpb	$8, %al	#, D.21617
	jne	.L384	#,
	.loc 1 1686 0
	movl	-72(%rbp), %eax	# parmnum, tmp242
	leal	1(%rax), %edx	#, D.21618
	movq	-104(%rbp), %rax	# name, tmp243
	movl	%edx, %ecx	# D.21618,
	movq	%rax, %rdx	# tmp243,
	movl	$0, %esi	#,
	movl	$.LC45, %edi	#,
	call	warn_for_assignment	#
	jmp	.L374	#
.L384:
	.loc 1 1690 0
	movq	-24(%rbp), %rax	# type, tmp244
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$7, %al	#, D.21617
	jne	.L385	#,
	.loc 1 1691 0
	movq	-40(%rbp), %rax	# val, tmp245
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _77->common.code, D.21617
	cmpb	$7, %al	#, D.21617
	jne	.L385	#,
	.loc 1 1695 0
	movq	global_trees+192(%rip), %rax	# global_trees, D.21615
	movzwl	60(%rax), %eax	# *_79, tmp248
	andw	$511, %ax	#, D.21619
	movzwl	%ax, %eax	# D.21619, D.21618
	cmpl	-68(%rbp), %eax	# formal_prec, D.21618
	jne	.L386	#,
	.loc 1 1696 0
	movl	-72(%rbp), %eax	# parmnum, tmp249
	leal	1(%rax), %edx	#, D.21618
	movq	-104(%rbp), %rax	# name, tmp250
	movl	%edx, %ecx	# D.21618,
	movq	%rax, %rdx	# tmp250,
	movl	$0, %esi	#,
	movl	$.LC46, %edi	#,
	call	warn_for_assignment	#
	.loc 1 1695 0
	jmp	.L374	#
.L386:
	.loc 1 1695 0 is_stmt 0 discriminator 1
	jmp	.L374	#
.L385:
	.loc 1 1701 0 is_stmt 1
	movl	warn_conversion(%rip), %eax	# warn_conversion, warn_conversion.55
	testl	%eax, %eax	# warn_conversion.55
	je	.L374	#,
	.loc 1 1701 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# type, tmp251
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$6, %al	#, D.21617
	je	.L387	#,
	movq	-24(%rbp), %rax	# type, tmp252
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$10, %al	#, D.21617
	je	.L387	#,
	movq	-24(%rbp), %rax	# type, tmp253
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$11, %al	#, D.21617
	je	.L387	#,
	movq	-24(%rbp), %rax	# type, tmp254
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$12, %al	#, D.21617
	jne	.L374	#,
.L387:
	.loc 1 1702 0 is_stmt 1
	movq	-40(%rbp), %rax	# val, tmp255
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _88->common.code, D.21617
	cmpb	$6, %al	#, D.21617
	je	.L388	#,
	.loc 1 1702 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# val, tmp256
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _90->common.code, D.21617
	cmpb	$10, %al	#, D.21617
	je	.L388	#,
	movq	-40(%rbp), %rax	# val, tmp257
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _92->common.code, D.21617
	cmpb	$11, %al	#, D.21617
	je	.L388	#,
	movq	-40(%rbp), %rax	# val, tmp258
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _94->common.code, D.21617
	cmpb	$12, %al	#, D.21617
	jne	.L374	#,
.L388:
.LBB26:
	.loc 1 1704 0 is_stmt 1
	movq	-40(%rbp), %rax	# val, tmp259
	movq	%rax, %rdi	# tmp259,
	call	default_conversion	#
	movq	%rax, -16(%rbp)	# tmp260, would_have_been
	.loc 1 1705 0
	movq	-16(%rbp), %rax	# would_have_been, tmp261
	movq	8(%rax), %rax	# would_have_been_96->common.type, tmp262
	movq	%rax, -8(%rbp)	# tmp262, type1
	.loc 1 1707 0
	movq	-24(%rbp), %rax	# type, tmp263
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$10, %al	#, D.21617
	jne	.L389	#,
	.loc 1 1708 0
	movq	-24(%rbp), %rax	# type, tmp264
	movq	128(%rax), %rdx	# type_18->type.main_variant, D.21615
	.loc 1 1709 0
	movq	-40(%rbp), %rax	# val, tmp265
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movq	128(%rax), %rax	# _100->type.main_variant, D.21615
	.loc 1 1708 0
	cmpq	%rax, %rdx	# D.21615, D.21615
	jne	.L389	#,
	.loc 1 1708 0 is_stmt 0 discriminator 1
	jmp	.L374	#
.L389:
	.loc 1 1713 0 is_stmt 1
	movq	-8(%rbp), %rax	# type1, tmp266
	movzwl	60(%rax), %eax	# *type1_97, tmp269
	andw	$511, %ax	#, D.21619
	movzwl	%ax, %eax	# D.21619, D.21618
	cmpl	-68(%rbp), %eax	# formal_prec, D.21618
	je	.L390	#,
	.loc 1 1714 0
	movl	-72(%rbp), %eax	# parmnum, tmp270
	leal	1(%rax), %edx	#, D.21618
	movq	-104(%rbp), %rax	# name, tmp271
	movl	%edx, %ecx	# D.21618,
	movq	%rax, %rdx	# tmp271,
	movl	$0, %esi	#,
	movl	$.LC47, %edi	#,
	call	warn_for_assignment	#
	jmp	.L374	#
.L390:
	.loc 1 1715 0
	movq	-24(%rbp), %rax	# type, tmp272
	movzbl	17(%rax), %eax	# *type_18, tmp275
	shrb	$5, %al	#, D.21620
	movl	%eax, %edx	# D.21620, D.21620
	andl	$1, %edx	#, D.21620
	movq	-8(%rbp), %rax	# type1, tmp276
	movzbl	17(%rax), %eax	# *type1_97, tmp279
	shrb	$5, %al	#, D.21620
	andl	$1, %eax	#, D.21620
	cmpb	%al, %dl	# D.21620, D.21620
	je	.L374	#,
	.loc 1 1720 0
	movq	-24(%rbp), %rax	# type, tmp280
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$10, %al	#, D.21617
	je	.L374	#,
	.loc 1 1722 0
	movq	-40(%rbp), %rax	# val, tmp281
	movzbl	16(%rax), %eax	# val_26->common.code, D.21617
	cmpb	$25, %al	#, D.21617
	jne	.L391	#,
	.loc 1 1723 0
	movq	-24(%rbp), %rdx	# type, tmp282
	movq	-40(%rbp), %rax	# val, tmp283
	movq	%rdx, %rsi	# tmp282,
	movq	%rax, %rdi	# tmp283,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21618
	je	.L391	#,
	.loc 1 1723 0 is_stmt 0 discriminator 1
	jmp	.L374	#
.L391:
	.loc 1 1728 0 is_stmt 1
	movq	-40(%rbp), %rax	# val, tmp284
	movzbl	16(%rax), %eax	# val_26->common.code, D.21617
	cmpb	$115, %al	#, D.21617
	jne	.L392	#,
	.loc 1 1729 0
	movq	-40(%rbp), %rax	# val, tmp285
	movq	32(%rax), %rax	# val_26->exp.operands, D.21615
	movzbl	16(%rax), %eax	# _111->common.code, D.21617
	cmpb	$25, %al	#, D.21617
	jne	.L392	#,
	.loc 1 1730 0
	movq	-40(%rbp), %rax	# val, tmp286
	movq	32(%rax), %rax	# val_26->exp.operands, D.21615
	movq	-24(%rbp), %rdx	# type, tmp287
	movq	%rdx, %rsi	# tmp287,
	movq	%rax, %rdi	# D.21615,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21618
	je	.L392	#,
	.loc 1 1730 0 is_stmt 0 discriminator 1
	jmp	.L374	#
.L392:
	.loc 1 1744 0 is_stmt 1
	movq	-40(%rbp), %rax	# val, tmp288
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzwl	60(%rax), %eax	# *_115, tmp291
	andw	$511, %ax	#, D.21619
	movzwl	%ax, %edx	# D.21619, D.21618
	movq	-24(%rbp), %rax	# type, tmp292
	movzwl	60(%rax), %eax	# *type_18, tmp295
	andw	$511, %ax	#, D.21619
	movzwl	%ax, %eax	# D.21619, D.21618
	cmpl	%eax, %edx	# D.21618, D.21618
	jge	.L393	#,
	.loc 1 1745 0
	movq	-40(%rbp), %rax	# val, tmp296
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	17(%rax), %eax	# *_120, D.21617
	andl	$32, %eax	#, D.21617
	testb	%al, %al	# D.21617
	je	.L393	#,
	.loc 1 1745 0 is_stmt 0 discriminator 1
	jmp	.L374	#
.L393:
	.loc 1 1747 0 is_stmt 1
	movq	-24(%rbp), %rax	# type, tmp297
	movzbl	17(%rax), %eax	# *type_18, D.21617
	andl	$32, %eax	#, D.21617
	testb	%al, %al	# D.21617
	je	.L394	#,
	.loc 1 1748 0
	movl	-72(%rbp), %eax	# parmnum, tmp298
	leal	1(%rax), %edx	#, D.21618
	movq	-104(%rbp), %rax	# name, tmp299
	movl	%edx, %ecx	# D.21618,
	movq	%rax, %rdx	# tmp299,
	movl	$0, %esi	#,
	movl	$.LC48, %edi	#,
	call	warn_for_assignment	#
	jmp	.L374	#
.L394:
	.loc 1 1750 0
	movl	-72(%rbp), %eax	# parmnum, tmp300
	leal	1(%rax), %edx	#, D.21618
	movq	-104(%rbp), %rax	# name, tmp301
	movl	%edx, %ecx	# D.21618,
	movq	%rax, %rdx	# tmp301,
	movl	$0, %esi	#,
	movl	$.LC49, %edi	#,
	call	warn_for_assignment	#
.L374:
.LBE26:
.LBE25:
	.loc 1 1754 0
	movl	-72(%rbp), %eax	# parmnum, tmp302
	leal	1(%rax), %edi	#, D.21618
	movq	-104(%rbp), %rcx	# name, tmp303
	movq	-112(%rbp), %rdx	# fundecl, tmp304
	movq	-40(%rbp), %rsi	# val, tmp305
	movq	-24(%rbp), %rax	# type, tmp306
	movl	%edi, %r9d	# D.21618,
	movq	%rcx, %r8	# tmp303,
	movq	%rdx, %rcx	# tmp304,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp306,
	call	convert_for_assignment	#
	movq	%rax, -32(%rbp)	# tmp307, parmval
	.loc 1 1758 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.56
	andl	$33554432, %eax	#, D.21618
	testl	%eax, %eax	# D.21618
	jne	.L372	#,
	.loc 1 1759 0
	movq	-24(%rbp), %rax	# type, tmp308
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$6, %al	#, D.21617
	je	.L395	#,
	.loc 1 1759 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# type, tmp309
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$10, %al	#, D.21617
	je	.L395	#,
	movq	-24(%rbp), %rax	# type, tmp310
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$11, %al	#, D.21617
	je	.L395	#,
	movq	-24(%rbp), %rax	# type, tmp311
	movzbl	16(%rax), %eax	# type_18->common.code, D.21617
	cmpb	$12, %al	#, D.21617
	jne	.L372	#,
.L395:
	.loc 1 1760 0 is_stmt 1
	movq	-24(%rbp), %rax	# type, tmp312
	movzwl	60(%rax), %eax	# *type_18, tmp315
	andw	$511, %ax	#, D.21619
	movzwl	%ax, %edx	# D.21619, D.21618
	movq	integer_types+40(%rip), %rax	# integer_types, D.21615
	movzwl	60(%rax), %eax	# *_138, tmp318
	andw	$511, %ax	#, D.21619
	movzwl	%ax, %eax	# D.21619, D.21618
	cmpl	%eax, %edx	# D.21618, D.21618
	jge	.L372	#,
	.loc 1 1761 0
	movq	-32(%rbp), %rax	# parmval, tmp319
	movq	%rax, %rdi	# tmp319,
	call	default_conversion	#
	movq	%rax, -32(%rbp)	# tmp320, parmval
.L372:
	.loc 1 1763 0 discriminator 1
	movq	-48(%rbp), %rdx	# result, tmp321
	movq	-32(%rbp), %rax	# parmval, tmp322
	movq	%rax, %rsi	# tmp322,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -48(%rbp)	# tmp323, result
.LBE24:
	jmp	.L396	#
.L370:
	.loc 1 1765 0
	movq	-40(%rbp), %rax	# val, tmp324
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzbl	16(%rax), %eax	# _143->common.code, D.21617
	cmpb	$7, %al	#, D.21617
	jne	.L397	#,
	.loc 1 1766 0
	movq	-40(%rbp), %rax	# val, tmp325
	movq	8(%rax), %rax	# val_26->common.type, D.21615
	movzwl	60(%rax), %eax	# *_145, tmp328
	andw	$511, %ax	#, D.21619
	.loc 1 1767 0
	movzwl	%ax, %edx	# D.21619, D.21618
	movq	global_trees+200(%rip), %rax	# global_trees, D.21615
	movzwl	60(%rax), %eax	# *_148, tmp331
	andw	$511, %ax	#, D.21619
	movzwl	%ax, %eax	# D.21619, D.21618
	.loc 1 1766 0
	cmpl	%eax, %edx	# D.21618, D.21618
	jge	.L397	#,
	.loc 1 1769 0
	movq	global_trees+200(%rip), %rax	# global_trees, D.21615
	movq	-40(%rbp), %rdx	# val, tmp332
	movq	%rdx, %rsi	# tmp332,
	movq	%rax, %rdi	# D.21615,
	call	convert	#
	movq	-48(%rbp), %rdx	# result, tmp333
	movq	%rax, %rsi	# D.21615,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -48(%rbp)	# tmp334, result
	jmp	.L396	#
.L397:
	.loc 1 1772 0
	movq	-40(%rbp), %rax	# val, tmp335
	movq	%rax, %rdi	# tmp335,
	call	default_conversion	#
	movq	-48(%rbp), %rdx	# result, tmp336
	movq	%rax, %rsi	# D.21615,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -48(%rbp)	# tmp337, result
.L396:
	.loc 1 1774 0
	cmpq	$0, -64(%rbp)	#, typetail
	je	.L398	#,
	.loc 1 1775 0
	movq	-64(%rbp), %rax	# typetail, tmp338
	movq	(%rax), %rax	# typetail_2->common.chain, tmp339
	movq	%rax, -64(%rbp)	# tmp339, typetail
.L398:
.LBE23:
	.loc 1 1626 0
	movq	-56(%rbp), %rax	# valtail, tmp340
	movq	(%rax), %rax	# valtail_3->common.chain, tmp341
	movq	%rax, -56(%rbp)	# tmp341, valtail
	addl	$1, -72(%rbp)	#, parmnum
.L362:
	.loc 1 1624 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, valtail
	jne	.L399	#,
.L368:
	.loc 1 1778 0
	cmpq	$0, -64(%rbp)	#, typetail
	je	.L400	#,
	.loc 1 1778 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# typetail, tmp342
	movq	32(%rax), %rdx	# typetail_2->list.value, D.21615
	movq	global_trees+216(%rip), %rax	# global_trees, D.21615
	cmpq	%rax, %rdx	# D.21615, D.21615
	je	.L400	#,
	.loc 1 1780 0 is_stmt 1
	cmpq	$0, -104(%rbp)	#, name
	je	.L401	#,
	.loc 1 1782 0
	movq	-104(%rbp), %rax	# name, tmp343
	movq	32(%rax), %rax	# name_21(D)->identifier.id.str, D.21616
	.loc 1 1781 0
	movq	%rax, %rsi	# D.21616,
	movl	$.LC50, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L400	#
.L401:
	.loc 1 1784 0
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L400:
	.loc 1 1787 0
	movq	-48(%rbp), %rax	# result, tmp344
	movq	%rax, %rdi	# tmp344,
	call	nreverse	#
	.loc 1 1788 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	convert_arguments, .-convert_arguments
	.section	.rodata
	.align 8
.LC52:
	.string	"suggest parentheses around + or - inside shift"
	.align 8
.LC53:
	.string	"suggest parentheses around && within ||"
	.align 8
.LC54:
	.string	"suggest parentheses around arithmetic in operand of |"
	.align 8
.LC55:
	.string	"suggest parentheses around comparison in operand of |"
	.align 8
.LC56:
	.string	"suggest parentheses around arithmetic in operand of ^"
	.align 8
.LC57:
	.string	"suggest parentheses around comparison in operand of ^"
	.align 8
.LC58:
	.string	"suggest parentheses around + or - in operand of &"
	.align 8
.LC59:
	.string	"suggest parentheses around comparison in operand of &"
	.align 8
.LC60:
	.string	"comparisons like X<=Y<=Z do not have their mathematical meaning"
	.text
	.globl	parser_build_binary_op
	.type	parser_build_binary_op, @function
parser_build_binary_op:
.LFB24:
	.loc 1 1800 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# code, code
	movq	%rsi, -48(%rbp)	# arg1, arg1
	movq	%rdx, -56(%rbp)	# arg2, arg2
	.loc 1 1801 0
	movq	-56(%rbp), %rdx	# arg2, tmp96
	movq	-48(%rbp), %rsi	# arg1, tmp97
	movl	-36(%rbp), %eax	# code, tmp98
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp98,
	call	build_binary_op	#
	movq	%rax, -8(%rbp)	# tmp99, result
	.loc 1 1804 0
	movq	-48(%rbp), %rax	# arg1, tmp100
	movzbl	16(%rax), %eax	# arg1_6(D)->common.code, D.21638
	movzbl	%al, %eax	# D.21638, D.21639
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, tmp102
	movb	%al, -23(%rbp)	# tmp102, class1
	.loc 1 1805 0
	movq	-56(%rbp), %rax	# arg2, tmp103
	movzbl	16(%rax), %eax	# arg2_7(D)->common.code, D.21638
	movzbl	%al, %eax	# D.21638, D.21639
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, tmp105
	movb	%al, -22(%rbp)	# tmp105, class2
	.loc 1 1806 0
	movl	$0, -20(%rbp)	#, code1
	.loc 1 1807 0
	movl	$0, -16(%rbp)	#, code2
	.loc 1 1809 0
	movq	-8(%rbp), %rax	# result, tmp106
	movzbl	16(%rax), %eax	# result_8->common.code, D.21638
	testb	%al, %al	# D.21638
	jne	.L404	#,
	.loc 1 1810 0
	movq	global_trees(%rip), %rax	# global_trees, D.21637
	jmp	.L405	#
.L404:
	.loc 1 1812 0
	cmpb	$60, -23(%rbp)	#, class1
	je	.L406	#,
	.loc 1 1812 0 is_stmt 0 discriminator 1
	cmpb	$49, -23(%rbp)	#, class1
	je	.L406	#,
	cmpb	$50, -23(%rbp)	#, class1
	je	.L406	#,
	cmpb	$101, -23(%rbp)	#, class1
	jne	.L407	#,
.L406:
	.loc 1 1813 0 is_stmt 1
	movq	-48(%rbp), %rax	# arg1, tmp107
	movl	24(%rax), %eax	# arg1_6(D)->exp.complexity, D.21639
	movl	%eax, -20(%rbp)	# D.21639, code1
.L407:
	.loc 1 1814 0
	cmpb	$60, -22(%rbp)	#, class2
	je	.L408	#,
	.loc 1 1814 0 is_stmt 0 discriminator 1
	cmpb	$49, -22(%rbp)	#, class2
	je	.L408	#,
	cmpb	$50, -22(%rbp)	#, class2
	je	.L408	#,
	cmpb	$101, -22(%rbp)	#, class2
	jne	.L409	#,
.L408:
	.loc 1 1815 0 is_stmt 1
	movq	-56(%rbp), %rax	# arg2, tmp108
	movl	24(%rax), %eax	# arg2_7(D)->exp.complexity, D.21639
	movl	%eax, -16(%rbp)	# D.21639, code2
.L409:
	.loc 1 1820 0
	movl	warn_parentheses(%rip), %eax	# warn_parentheses, warn_parentheses.57
	testl	%eax, %eax	# warn_parentheses.57
	je	.L410	#,
	.loc 1 1822 0
	cmpl	$82, -36(%rbp)	#, code
	je	.L411	#,
	.loc 1 1822 0 is_stmt 0 discriminator 1
	cmpl	$83, -36(%rbp)	#, code
	jne	.L412	#,
.L411:
	.loc 1 1824 0 is_stmt 1
	cmpl	$59, -20(%rbp)	#, code1
	je	.L413	#,
	.loc 1 1824 0 is_stmt 0 discriminator 1
	cmpl	$60, -20(%rbp)	#, code1
	je	.L413	#,
	.loc 1 1825 0 is_stmt 1
	cmpl	$59, -16(%rbp)	#, code2
	je	.L413	#,
	.loc 1 1825 0 is_stmt 0 discriminator 1
	cmpl	$60, -16(%rbp)	#, code2
	jne	.L412	#,
.L413:
	.loc 1 1826 0 is_stmt 1
	movl	$.LC52, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L412:
	.loc 1 1829 0
	cmpl	$92, -36(%rbp)	#, code
	jne	.L414	#,
	.loc 1 1831 0
	cmpl	$91, -20(%rbp)	#, code1
	je	.L415	#,
	.loc 1 1832 0
	cmpl	$91, -16(%rbp)	#, code2
	jne	.L414	#,
.L415:
	.loc 1 1833 0
	movl	$.LC53, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L414:
	.loc 1 1836 0
	cmpl	$86, -36(%rbp)	#, code
	jne	.L416	#,
	.loc 1 1838 0
	cmpl	$88, -20(%rbp)	#, code1
	je	.L417	#,
	.loc 1 1838 0 is_stmt 0 discriminator 1
	cmpl	$87, -20(%rbp)	#, code1
	je	.L417	#,
	.loc 1 1839 0 is_stmt 1
	cmpl	$59, -20(%rbp)	#, code1
	je	.L417	#,
	.loc 1 1839 0 is_stmt 0 discriminator 1
	cmpl	$60, -20(%rbp)	#, code1
	je	.L417	#,
	.loc 1 1840 0 is_stmt 1
	cmpl	$88, -16(%rbp)	#, code2
	je	.L417	#,
	.loc 1 1840 0 is_stmt 0 discriminator 1
	cmpl	$87, -16(%rbp)	#, code2
	je	.L417	#,
	.loc 1 1841 0 is_stmt 1
	cmpl	$59, -16(%rbp)	#, code2
	je	.L417	#,
	.loc 1 1841 0 is_stmt 0 discriminator 1
	cmpl	$60, -16(%rbp)	#, code2
	jne	.L418	#,
.L417:
	.loc 1 1842 0 is_stmt 1
	movl	$.LC54, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L418:
	.loc 1 1844 0
	movl	-20(%rbp), %eax	# code1, code1.58
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21640
	cmpb	$60, %al	#, D.21640
	je	.L419	#,
	.loc 1 1844 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# code2, code2.59
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21640
	cmpb	$60, %al	#, D.21640
	jne	.L416	#,
.L419:
	.loc 1 1845 0 is_stmt 1
	movl	$.LC55, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L416:
	.loc 1 1848 0
	cmpl	$87, -36(%rbp)	#, code
	jne	.L420	#,
	.loc 1 1850 0
	cmpl	$88, -20(%rbp)	#, code1
	je	.L421	#,
	.loc 1 1851 0
	cmpl	$59, -20(%rbp)	#, code1
	je	.L421	#,
	.loc 1 1851 0 is_stmt 0 discriminator 1
	cmpl	$60, -20(%rbp)	#, code1
	je	.L421	#,
	.loc 1 1852 0 is_stmt 1
	cmpl	$88, -16(%rbp)	#, code2
	je	.L421	#,
	.loc 1 1853 0
	cmpl	$59, -16(%rbp)	#, code2
	je	.L421	#,
	.loc 1 1853 0 is_stmt 0 discriminator 1
	cmpl	$60, -16(%rbp)	#, code2
	jne	.L422	#,
.L421:
	.loc 1 1854 0 is_stmt 1
	movl	$.LC56, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L422:
	.loc 1 1856 0
	movl	-20(%rbp), %eax	# code1, code1.60
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21640
	cmpb	$60, %al	#, D.21640
	je	.L423	#,
	.loc 1 1856 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# code2, code2.61
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21640
	cmpb	$60, %al	#, D.21640
	jne	.L420	#,
.L423:
	.loc 1 1857 0 is_stmt 1
	movl	$.LC57, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L420:
	.loc 1 1860 0
	cmpl	$88, -36(%rbp)	#, code
	jne	.L410	#,
	.loc 1 1862 0
	cmpl	$59, -20(%rbp)	#, code1
	je	.L424	#,
	.loc 1 1862 0 is_stmt 0 discriminator 1
	cmpl	$60, -20(%rbp)	#, code1
	je	.L424	#,
	.loc 1 1863 0 is_stmt 1
	cmpl	$59, -16(%rbp)	#, code2
	je	.L424	#,
	.loc 1 1863 0 is_stmt 0 discriminator 1
	cmpl	$60, -16(%rbp)	#, code2
	jne	.L425	#,
.L424:
	.loc 1 1864 0 is_stmt 1
	movl	$.LC58, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L425:
	.loc 1 1866 0
	movl	-20(%rbp), %eax	# code1, code1.62
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21640
	cmpb	$60, %al	#, D.21640
	je	.L426	#,
	.loc 1 1866 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# code2, code2.63
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21640
	cmpb	$60, %al	#, D.21640
	jne	.L410	#,
.L426:
	.loc 1 1867 0 is_stmt 1
	movl	$.LC59, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L410:
	.loc 1 1872 0
	movl	-36(%rbp), %eax	# code, code.64
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21640
	cmpb	$60, %al	#, D.21640
	jne	.L427	#,
	.loc 1 1872 0 is_stmt 0 discriminator 1
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.65
	testl	%eax, %eax	# extra_warnings.65
	je	.L427	#,
	.loc 1 1873 0 is_stmt 1
	movl	-20(%rbp), %eax	# code1, code1.66
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21640
	cmpb	$60, %al	#, D.21640
	je	.L428	#,
	.loc 1 1873 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# code2, code2.67
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21640
	cmpb	$60, %al	#, D.21640
	jne	.L427	#,
.L428:
	.loc 1 1874 0 is_stmt 1
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L427:
	.loc 1 1876 0
	movq	-48(%rbp), %rdx	# arg1, tmp118
	movq	-8(%rbp), %rax	# result, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	unsigned_conversion_warning	#
	.loc 1 1877 0
	movq	-56(%rbp), %rdx	# arg2, tmp120
	movq	-8(%rbp), %rax	# result, tmp121
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	unsigned_conversion_warning	#
	.loc 1 1878 0
	movq	-8(%rbp), %rax	# result, tmp122
	movq	%rax, %rdi	# tmp122,
	call	overflow_warning	#
	.loc 1 1880 0
	movq	-8(%rbp), %rax	# result, tmp123
	movzbl	16(%rax), %eax	# result_8->common.code, D.21638
	movzbl	%al, %eax	# D.21638, D.21639
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, tmp125
	movb	%al, -21(%rbp)	# tmp125, class
	.loc 1 1884 0
	cmpb	$60, -21(%rbp)	#, class
	je	.L429	#,
	.loc 1 1884 0 is_stmt 0 discriminator 1
	cmpb	$49, -21(%rbp)	#, class
	je	.L429	#,
	cmpb	$50, -21(%rbp)	#, class
	je	.L429	#,
	cmpb	$101, -21(%rbp)	#, class
	jne	.L430	#,
.L429:
	.loc 1 1885 0 is_stmt 1
	movl	-36(%rbp), %edx	# code, code.68
	movq	-8(%rbp), %rax	# result, tmp126
	movl	%edx, 24(%rax)	# code.68, result_8->exp.complexity
	jmp	.L431	#
.L430:
.LBB27:
	.loc 1 1888 0
	movq	-8(%rbp), %rax	# result, tmp127
	movzbl	17(%rax), %eax	# *result_8, tmp130
	shrb	%al	# D.21641
	andl	$1, %eax	#, D.21641
	movzbl	%al, %eax	# D.21641, tmp131
	movl	%eax, -12(%rbp)	# tmp131, flag
	.loc 1 1893 0
	movq	-8(%rbp), %rax	# result, tmp132
	movq	8(%rax), %rax	# result_8->common.type, D.21642
	movq	-8(%rbp), %rdx	# result, tmp133
	movq	%rax, %rsi	# D.21642,
	movl	$116, %edi	#,
	call	build1	#
	movq	%rax, -8(%rbp)	# tmp134, result
	.loc 1 1894 0
	movl	-36(%rbp), %edx	# code, code.69
	movq	-8(%rbp), %rax	# result, tmp135
	movl	%edx, 24(%rax)	# code.69, result_49->exp.complexity
	.loc 1 1895 0
	movl	-12(%rbp), %eax	# flag, tmp136
	andl	$1, %eax	#, D.21641
	movl	%eax, %edx	# D.21641, D.21641
	movq	-8(%rbp), %rax	# result, tmp137
	andl	$1, %edx	#, tmp139
	leal	(%rdx,%rdx), %ecx	#, tmp140
	movzbl	17(%rax), %edx	#, tmp141
	andl	$-3, %edx	#, tmp142
	orl	%ecx, %edx	# tmp140, tmp143
	movb	%dl, 17(%rax)	# tmp143,
.L431:
.LBE27:
	.loc 1 1898 0
	movq	-8(%rbp), %rax	# result, D.21637
.L405:
	.loc 1 1899 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	parser_build_binary_op, .-parser_build_binary_op
	.section	.rodata
.LC61:
	.string	"division by zero"
.LC62:
	.string	"right shift count is negative"
	.align 8
.LC63:
	.string	"right shift count >= width of type"
.LC64:
	.string	"left shift count is negative"
	.align 8
.LC65:
	.string	"left shift count >= width of type"
.LC66:
	.string	"shift count is negative"
.LC67:
	.string	"shift count >= width of type"
	.align 8
.LC68:
	.string	"comparing floating point with == or != is unsafe"
	.align 8
.LC69:
	.string	"ISO C forbids comparison of `void *' with function pointer"
	.align 8
.LC70:
	.string	"comparison of distinct pointer types lacks a cast"
	.align 8
.LC71:
	.string	"comparison between pointer and integer"
	.align 8
.LC72:
	.string	"ISO C forbids ordered comparisons of pointers to functions"
	.align 8
.LC73:
	.string	"comparison of complete and incomplete pointers"
	.align 8
.LC74:
	.string	"ordered comparison of pointer with integer zero"
	.align 8
.LC75:
	.string	"unordered comparison on non-floating point argument"
	.align 8
.LC76:
	.string	"comparison between signed and unsigned"
	.align 8
.LC77:
	.string	"comparison of promoted ~unsigned with constant"
	.align 8
.LC78:
	.string	"comparison of promoted ~unsigned with unsigned"
	.text
	.globl	build_binary_op
	.type	build_binary_op, @function
build_binary_op:
.LFB25:
	.loc 1 1921 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
	movl	%edi, -292(%rbp)	# code, code
	movq	%rsi, -304(%rbp)	# orig_op0, orig_op0
	movq	%rdx, -312(%rbp)	# orig_op1, orig_op1
	movl	%ecx, -296(%rbp)	# convert_p, convert_p
	.loc 1 1929 0
	movl	-292(%rbp), %eax	# code, tmp339
	movl	%eax, -264(%rbp)	# tmp339, resultcode
	.loc 1 1933 0
	movq	$0, -168(%rbp)	#, result_type
	.loc 1 1938 0
	movl	$0, -260(%rbp)	#, converted
	.loc 1 1942 0
	movq	$0, -160(%rbp)	#, build_type
	.loc 1 1946 0
	movq	$0, -152(%rbp)	#, final_type
	.loc 1 1954 0
	movl	$0, -256(%rbp)	#, shorten
	.loc 1 1959 0
	movl	$0, -252(%rbp)	#, short_compare
	.loc 1 1963 0
	movl	$0, -248(%rbp)	#, short_shift
	.loc 1 1966 0
	movl	$0, -244(%rbp)	#, common
	.loc 1 1968 0
	cmpl	$0, -296(%rbp)	#, convert_p
	je	.L433	#,
	.loc 1 1970 0
	movq	-304(%rbp), %rax	# orig_op0, tmp340
	movq	%rax, %rdi	# tmp340,
	call	default_conversion	#
	movq	%rax, -184(%rbp)	# tmp341, op0
	.loc 1 1971 0
	movq	-312(%rbp), %rax	# orig_op1, tmp342
	movq	%rax, %rdi	# tmp342,
	call	default_conversion	#
	movq	%rax, -176(%rbp)	# tmp343, op1
	jmp	.L434	#
.L433:
	.loc 1 1975 0
	movq	-304(%rbp), %rax	# orig_op0, tmp344
	movq	%rax, -184(%rbp)	# tmp344, op0
	.loc 1 1976 0
	movq	-312(%rbp), %rax	# orig_op1, tmp345
	movq	%rax, -176(%rbp)	# tmp345, op1
.L434:
	.loc 1 1979 0
	movq	-184(%rbp), %rax	# op0, tmp346
	movq	8(%rax), %rax	# op0_1->common.type, tmp347
	movq	%rax, -96(%rbp)	# tmp347, type0
	.loc 1 1980 0
	movq	-176(%rbp), %rax	# op1, tmp348
	movq	8(%rax), %rax	# op1_11->common.type, tmp349
	movq	%rax, -88(%rbp)	# tmp349, type1
	.loc 1 1984 0
	movq	-96(%rbp), %rax	# type0, tmp350
	movzbl	16(%rax), %eax	# type0_103->common.code, D.21653
	movzbl	%al, %eax	# D.21653, tmp351
	movl	%eax, -232(%rbp)	# tmp351, code0
	.loc 1 1985 0
	movq	-88(%rbp), %rax	# type1, tmp352
	movzbl	16(%rax), %eax	# type1_104->common.code, D.21653
	movzbl	%al, %eax	# D.21653, tmp353
	movl	%eax, -228(%rbp)	# tmp353, code1
	.loc 1 1988 0
	jmp	.L435	#
.L438:
	.loc 1 1988 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# op0, tmp354
	movq	32(%rax), %rax	# op0_2->exp.operands, tmp355
	movq	%rax, -184(%rbp)	# tmp355, op0
.L435:
	movq	-184(%rbp), %rax	# op0, tmp356
	movzbl	16(%rax), %eax	# op0_2->common.code, D.21653
	cmpb	$115, %al	#, D.21653
	je	.L436	#,
	.loc 1 1988 0 discriminator 3
	movq	-184(%rbp), %rax	# op0, tmp357
	movzbl	16(%rax), %eax	# op0_2->common.code, D.21653
	cmpb	$114, %al	#, D.21653
	je	.L436	#,
	.loc 1 1988 0 discriminator 1
	movq	-184(%rbp), %rax	# op0, tmp358
	movzbl	16(%rax), %eax	# op0_2->common.code, D.21653
	cmpb	$116, %al	#, D.21653
	jne	.L437	#,
.L436:
	.loc 1 1988 0 discriminator 2
	movq	-184(%rbp), %rax	# op0, tmp359
	movq	32(%rax), %rdx	# op0_2->exp.operands, D.21654
	movq	global_trees(%rip), %rax	# global_trees, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L437	#,
	.loc 1 1988 0 discriminator 1
	movq	-184(%rbp), %rax	# op0, tmp360
	movq	8(%rax), %rdx	# op0_2->common.type, D.21654
	movq	-184(%rbp), %rax	# op0, tmp361
	movq	32(%rax), %rax	# op0_2->exp.operands, D.21654
	movq	8(%rax), %rax	# _115->common.type, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L438	#,
.L437:
	.loc 1 1989 0 is_stmt 1
	jmp	.L439	#
.L442:
	.loc 1 1989 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# op1, tmp362
	movq	32(%rax), %rax	# op1_12->exp.operands, tmp363
	movq	%rax, -176(%rbp)	# tmp363, op1
.L439:
	movq	-176(%rbp), %rax	# op1, tmp364
	movzbl	16(%rax), %eax	# op1_12->common.code, D.21653
	cmpb	$115, %al	#, D.21653
	je	.L440	#,
	.loc 1 1989 0 discriminator 3
	movq	-176(%rbp), %rax	# op1, tmp365
	movzbl	16(%rax), %eax	# op1_12->common.code, D.21653
	cmpb	$114, %al	#, D.21653
	je	.L440	#,
	.loc 1 1989 0 discriminator 1
	movq	-176(%rbp), %rax	# op1, tmp366
	movzbl	16(%rax), %eax	# op1_12->common.code, D.21653
	cmpb	$116, %al	#, D.21653
	jne	.L441	#,
.L440:
	.loc 1 1989 0 discriminator 2
	movq	-176(%rbp), %rax	# op1, tmp367
	movq	32(%rax), %rdx	# op1_12->exp.operands, D.21654
	movq	global_trees(%rip), %rax	# global_trees, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L441	#,
	.loc 1 1989 0 discriminator 1
	movq	-176(%rbp), %rax	# op1, tmp368
	movq	8(%rax), %rdx	# op1_12->common.type, D.21654
	movq	-176(%rbp), %rax	# op1, tmp369
	movq	32(%rax), %rax	# op1_12->exp.operands, D.21654
	movq	8(%rax), %rax	# _124->common.type, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L442	#,
.L441:
	.loc 1 1994 0 is_stmt 1
	cmpl	$0, -232(%rbp)	#, code0
	je	.L443	#,
	.loc 1 1994 0 is_stmt 0 discriminator 1
	cmpl	$0, -228(%rbp)	#, code1
	jne	.L444	#,
.L443:
	.loc 1 1995 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.21652
	jmp	.L445	#
.L444:
	.loc 1 1997 0
	movl	-292(%rbp), %eax	# code, tmp371
	subl	$59, %eax	#, tmp370
	cmpl	$50, %eax	#, tmp370
	ja	.L597	#,
	movl	%eax, %eax	# tmp370, tmp372
	movq	.L448(,%rax,8), %rax	#, tmp373
	jmp	*%rax	# tmp373
	.section	.rodata
	.align 8
	.align 4
.L448:
	.quad	.L447
	.quad	.L449
	.quad	.L450
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L452
	.quad	.L597
	.quad	.L452
	.quad	.L597
	.quad	.L597
	.quad	.L451
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L597
	.quad	.L453
	.quad	.L453
	.quad	.L597
	.quad	.L597
	.quad	.L454
	.quad	.L455
	.quad	.L456
	.quad	.L456
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L597
	.quad	.L458
	.quad	.L458
	.quad	.L458
	.quad	.L458
	.quad	.L458
	.quad	.L597
	.quad	.L459
	.quad	.L459
	.quad	.L459
	.quad	.L459
	.quad	.L460
	.quad	.L460
	.quad	.L461
	.quad	.L461
	.quad	.L461
	.quad	.L461
	.quad	.L461
	.quad	.L461
	.quad	.L461
	.text
.L447:
	.loc 1 2001 0
	cmpl	$13, -232(%rbp)	#, code0
	jne	.L462	#,
	.loc 1 2001 0 is_stmt 0 discriminator 1
	cmpl	$6, -228(%rbp)	#, code1
	jne	.L462	#,
	.loc 1 2002 0 is_stmt 1
	movq	-176(%rbp), %rdx	# op1, tmp374
	movq	-184(%rbp), %rax	# op0, tmp375
	movq	%rax, %rsi	# tmp375,
	movl	$59, %edi	#,
	call	pointer_int_sum	#
	jmp	.L445	#
.L462:
	.loc 1 2003 0
	cmpl	$13, -228(%rbp)	#, code1
	jne	.L463	#,
	.loc 1 2003 0 is_stmt 0 discriminator 1
	cmpl	$6, -232(%rbp)	#, code0
	jne	.L463	#,
	.loc 1 2004 0 is_stmt 1
	movq	-184(%rbp), %rdx	# op0, tmp376
	movq	-176(%rbp), %rax	# op1, tmp377
	movq	%rax, %rsi	# tmp377,
	movl	$59, %edi	#,
	call	pointer_int_sum	#
	jmp	.L445	#
.L463:
	.loc 1 2006 0
	movl	$1, -244(%rbp)	#, common
	.loc 1 2007 0
	jmp	.L464	#
.L449:
	.loc 1 2012 0
	cmpl	$13, -232(%rbp)	#, code0
	jne	.L465	#,
	.loc 1 2012 0 is_stmt 0 discriminator 1
	cmpl	$13, -228(%rbp)	#, code1
	jne	.L465	#,
	.loc 1 2013 0 is_stmt 1
	movq	-88(%rbp), %rdx	# type1, tmp378
	movq	-96(%rbp), %rax	# type0, tmp379
	movq	%rdx, %rsi	# tmp378,
	movq	%rax, %rdi	# tmp379,
	call	comp_target_types	#
	testl	%eax, %eax	# D.21655
	je	.L465	#,
	.loc 1 2014 0
	movq	-176(%rbp), %rdx	# op1, tmp380
	movq	-184(%rbp), %rax	# op0, tmp381
	movq	%rdx, %rsi	# tmp380,
	movq	%rax, %rdi	# tmp381,
	call	pointer_diff	#
	jmp	.L445	#
.L465:
	.loc 1 2016 0
	cmpl	$13, -232(%rbp)	#, code0
	jne	.L466	#,
	.loc 1 2016 0 is_stmt 0 discriminator 1
	cmpl	$6, -228(%rbp)	#, code1
	jne	.L466	#,
	.loc 1 2017 0 is_stmt 1
	movq	-176(%rbp), %rdx	# op1, tmp382
	movq	-184(%rbp), %rax	# op0, tmp383
	movq	%rax, %rsi	# tmp383,
	movl	$60, %edi	#,
	call	pointer_int_sum	#
	jmp	.L445	#
.L466:
	.loc 1 2019 0
	movl	$1, -244(%rbp)	#, common
	.loc 1 2020 0
	jmp	.L464	#
.L450:
	.loc 1 2023 0
	movl	$1, -244(%rbp)	#, common
	.loc 1 2024 0
	jmp	.L464	#
.L451:
	.loc 1 2033 0
	movl	warn_div_by_zero(%rip), %eax	# warn_div_by_zero, warn_div_by_zero.70
	testl	%eax, %eax	# warn_div_by_zero.70
	je	.L467	#,
	.loc 1 2033 0 is_stmt 0 discriminator 1
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.71
	testl	%eax, %eax	# skip_evaluation.71
	jne	.L467	#,
	movq	-176(%rbp), %rax	# op1, tmp384
	movq	%rax, %rdi	# tmp384,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21655
	je	.L467	#,
	.loc 1 2034 0 is_stmt 1
	movl	$.LC61, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L467:
	.loc 1 2036 0
	cmpl	$6, -232(%rbp)	#, code0
	je	.L468	#,
	.loc 1 2036 0 is_stmt 0 discriminator 1
	cmpl	$7, -232(%rbp)	#, code0
	je	.L468	#,
	.loc 1 2037 0 is_stmt 1
	cmpl	$8, -232(%rbp)	#, code0
	jne	.L469	#,
.L468:
	.loc 1 2038 0
	cmpl	$6, -228(%rbp)	#, code1
	je	.L470	#,
	.loc 1 2038 0 is_stmt 0 discriminator 1
	cmpl	$7, -228(%rbp)	#, code1
	je	.L470	#,
	.loc 1 2039 0 is_stmt 1
	cmpl	$8, -228(%rbp)	#, code1
	jne	.L469	#,
.L470:
	.loc 1 2041 0
	cmpl	$6, -232(%rbp)	#, code0
	jne	.L471	#,
	.loc 1 2041 0 is_stmt 0 discriminator 1
	cmpl	$6, -228(%rbp)	#, code1
	je	.L472	#,
.L471:
	.loc 1 2042 0 is_stmt 1
	movl	$70, -264(%rbp)	#, resultcode
	jmp	.L473	#
.L472:
	.loc 1 2049 0
	movq	-304(%rbp), %rax	# orig_op0, tmp385
	movq	8(%rax), %rax	# orig_op0_97(D)->common.type, D.21654
	movzbl	17(%rax), %eax	# *_138, D.21653
	andl	$32, %eax	#, D.21653
	.loc 1 2050 0
	testb	%al, %al	# D.21653
	jne	.L474	#,
	.loc 1 2050 0 is_stmt 0 discriminator 2
	movq	-176(%rbp), %rax	# op1, tmp386
	movzbl	16(%rax), %eax	# op1_12->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L475	#,
	.loc 1 2051 0 is_stmt 1
	movq	-176(%rbp), %rax	# op1, tmp387
	movq	%rax, %rdi	# tmp387,
	call	integer_all_onesp	#
	testl	%eax, %eax	# D.21655
	jne	.L475	#,
.L474:
	.loc 1 2050 0 discriminator 1
	movl	$1, %eax	#, iftmp.72
	jmp	.L476	#
.L475:
	.loc 1 2050 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.72
.L476:
	.loc 1 2049 0 is_stmt 1
	movl	%eax, -256(%rbp)	# iftmp.72, shorten
.L473:
	.loc 1 2052 0
	movl	$1, -244(%rbp)	#, common
	.loc 1 2054 0
	jmp	.L464	#
.L469:
	jmp	.L464	#
.L457:
	.loc 1 2060 0
	cmpl	$6, -232(%rbp)	#, code0
	jne	.L477	#,
	.loc 1 2060 0 is_stmt 0 discriminator 1
	cmpl	$6, -228(%rbp)	#, code1
	jne	.L477	#,
	.loc 1 2061 0 is_stmt 1
	movl	$-1, -256(%rbp)	#, shorten
	.loc 1 2062 0
	jmp	.L464	#
.L477:
	jmp	.L464	#
.L452:
	.loc 1 2066 0
	movl	warn_div_by_zero(%rip), %eax	# warn_div_by_zero, warn_div_by_zero.73
	testl	%eax, %eax	# warn_div_by_zero.73
	je	.L478	#,
	.loc 1 2066 0 is_stmt 0 discriminator 1
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.74
	testl	%eax, %eax	# skip_evaluation.74
	jne	.L478	#,
	movq	-176(%rbp), %rax	# op1, tmp388
	movq	%rax, %rdi	# tmp388,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21655
	je	.L478	#,
	.loc 1 2067 0 is_stmt 1
	movl	$.LC61, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L478:
	.loc 1 2069 0
	cmpl	$6, -232(%rbp)	#, code0
	jne	.L479	#,
	.loc 1 2069 0 is_stmt 0 discriminator 1
	cmpl	$6, -228(%rbp)	#, code1
	jne	.L479	#,
	.loc 1 2075 0 is_stmt 1
	movq	-304(%rbp), %rax	# orig_op0, tmp389
	movq	8(%rax), %rax	# orig_op0_97(D)->common.type, D.21654
	movzbl	17(%rax), %eax	# *_152, D.21653
	andl	$32, %eax	#, D.21653
	.loc 1 2076 0
	testb	%al, %al	# D.21653
	jne	.L480	#,
	.loc 1 2076 0 is_stmt 0 discriminator 2
	movq	-176(%rbp), %rax	# op1, tmp390
	movzbl	16(%rax), %eax	# op1_12->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L481	#,
	.loc 1 2077 0 is_stmt 1
	movq	-176(%rbp), %rax	# op1, tmp391
	movq	%rax, %rdi	# tmp391,
	call	integer_all_onesp	#
	testl	%eax, %eax	# D.21655
	jne	.L481	#,
.L480:
	.loc 1 2076 0 discriminator 1
	movl	$1, %eax	#, iftmp.75
	jmp	.L482	#
.L481:
	.loc 1 2076 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.75
.L482:
	.loc 1 2075 0 is_stmt 1
	movl	%eax, -256(%rbp)	# iftmp.75, shorten
	.loc 1 2078 0
	movl	$1, -244(%rbp)	#, common
	.loc 1 2080 0
	jmp	.L464	#
.L479:
	jmp	.L464	#
.L458:
	.loc 1 2087 0
	cmpl	$6, -232(%rbp)	#, code0
	je	.L483	#,
	.loc 1 2087 0 is_stmt 0 discriminator 1
	cmpl	$13, -232(%rbp)	#, code0
	je	.L483	#,
	.loc 1 2088 0 is_stmt 1
	cmpl	$7, -232(%rbp)	#, code0
	je	.L483	#,
	.loc 1 2088 0 is_stmt 0 discriminator 1
	cmpl	$8, -232(%rbp)	#, code0
	jne	.L484	#,
.L483:
	.loc 1 2089 0 is_stmt 1
	cmpl	$6, -228(%rbp)	#, code1
	je	.L485	#,
	.loc 1 2089 0 is_stmt 0 discriminator 1
	cmpl	$13, -228(%rbp)	#, code1
	je	.L485	#,
	.loc 1 2090 0 is_stmt 1
	cmpl	$7, -228(%rbp)	#, code1
	je	.L485	#,
	.loc 1 2090 0 is_stmt 0 discriminator 1
	cmpl	$8, -228(%rbp)	#, code1
	jne	.L484	#,
.L485:
	.loc 1 2095 0 is_stmt 1
	movq	integer_types+40(%rip), %rax	# integer_types, tmp392
	movq	%rax, -168(%rbp)	# tmp392, result_type
	.loc 1 2096 0
	movq	-184(%rbp), %rax	# op0, tmp393
	movq	%rax, %rdi	# tmp393,
	call	truthvalue_conversion	#
	movq	%rax, -184(%rbp)	# tmp394, op0
	.loc 1 2097 0
	movq	-176(%rbp), %rax	# op1, tmp395
	movq	%rax, %rdi	# tmp395,
	call	truthvalue_conversion	#
	movq	%rax, -176(%rbp)	# tmp396, op1
	.loc 1 2098 0
	movl	$1, -260(%rbp)	#, converted
	.loc 1 2100 0
	jmp	.L464	#
.L484:
	jmp	.L464	#
.L455:
	.loc 1 2107 0
	cmpl	$6, -232(%rbp)	#, code0
	jne	.L486	#,
	.loc 1 2107 0 is_stmt 0 discriminator 1
	cmpl	$6, -228(%rbp)	#, code1
	jne	.L486	#,
	.loc 1 2109 0 is_stmt 1
	movq	-176(%rbp), %rax	# op1, tmp397
	movzbl	16(%rax), %eax	# op1_12->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L487	#,
	.loc 1 2109 0 is_stmt 0 discriminator 1
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.76
	testl	%eax, %eax	# skip_evaluation.76
	jne	.L487	#,
	.loc 1 2111 0 is_stmt 1
	movq	-176(%rbp), %rax	# op1, tmp398
	movq	%rax, %rdi	# tmp398,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21655
	jns	.L488	#,
	.loc 1 2112 0
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L487	#
.L488:
	.loc 1 2115 0
	movq	-176(%rbp), %rax	# op1, tmp399
	movq	%rax, %rdi	# tmp399,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21655
	jne	.L489	#,
	.loc 1 2116 0
	movl	$1, -248(%rbp)	#, short_shift
.L489:
	.loc 1 2118 0
	movq	-96(%rbp), %rax	# type0, tmp400
	movzwl	60(%rax), %eax	# *type0_103, tmp403
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %edx	# D.21656, D.21657
	movq	-176(%rbp), %rax	# op1, tmp404
	movq	%rdx, %rsi	# D.21657,
	movq	%rax, %rdi	# tmp404,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21655
	js	.L487	#,
	.loc 1 2119 0
	movl	$.LC63, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L487:
	.loc 1 2125 0
	movq	-96(%rbp), %rax	# type0, tmp405
	movq	%rax, -168(%rbp)	# tmp405, result_type
	.loc 1 2128 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.77
	testl	%eax, %eax	# flag_traditional.77
	jne	.L486	#,
	.loc 1 2130 0
	movq	-176(%rbp), %rax	# op1, tmp406
	movq	8(%rax), %rax	# op1_12->common.type, D.21654
	movq	128(%rax), %rdx	# _175->type.main_variant, D.21654
	movq	integer_types+40(%rip), %rax	# integer_types, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L490	#,
	.loc 1 2131 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21654
	movq	-176(%rbp), %rdx	# op1, tmp407
	movq	%rdx, %rsi	# tmp407,
	movq	%rax, %rdi	# D.21654,
	call	convert	#
	movq	%rax, -176(%rbp)	# tmp408, op1
.L490:
	.loc 1 2133 0
	movl	$1, -260(%rbp)	#, converted
	.loc 1 2136 0
	jmp	.L464	#
.L486:
	jmp	.L464	#
.L454:
	.loc 1 2139 0
	cmpl	$6, -232(%rbp)	#, code0
	jne	.L491	#,
	.loc 1 2139 0 is_stmt 0 discriminator 1
	cmpl	$6, -228(%rbp)	#, code1
	jne	.L491	#,
	.loc 1 2141 0 is_stmt 1
	movq	-176(%rbp), %rax	# op1, tmp409
	movzbl	16(%rax), %eax	# op1_12->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L492	#,
	.loc 1 2141 0 is_stmt 0 discriminator 1
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.78
	testl	%eax, %eax	# skip_evaluation.78
	jne	.L492	#,
	.loc 1 2143 0 is_stmt 1
	movq	-176(%rbp), %rax	# op1, tmp410
	movq	%rax, %rdi	# tmp410,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21655
	jns	.L493	#,
	.loc 1 2144 0
	movl	$.LC64, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L492	#
.L493:
	.loc 1 2146 0
	movq	-96(%rbp), %rax	# type0, tmp411
	movzwl	60(%rax), %eax	# *type0_103, tmp414
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %edx	# D.21656, D.21657
	movq	-176(%rbp), %rax	# op1, tmp415
	movq	%rdx, %rsi	# D.21657,
	movq	%rax, %rdi	# tmp415,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21655
	js	.L492	#,
	.loc 1 2147 0
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L492:
	.loc 1 2152 0
	movq	-96(%rbp), %rax	# type0, tmp416
	movq	%rax, -168(%rbp)	# tmp416, result_type
	.loc 1 2155 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.79
	testl	%eax, %eax	# flag_traditional.79
	jne	.L491	#,
	.loc 1 2157 0
	movq	-176(%rbp), %rax	# op1, tmp417
	movq	8(%rax), %rax	# op1_12->common.type, D.21654
	movq	128(%rax), %rdx	# _189->type.main_variant, D.21654
	movq	integer_types+40(%rip), %rax	# integer_types, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L494	#,
	.loc 1 2158 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21654
	movq	-176(%rbp), %rdx	# op1, tmp418
	movq	%rdx, %rsi	# tmp418,
	movq	%rax, %rdi	# D.21654,
	call	convert	#
	movq	%rax, -176(%rbp)	# tmp419, op1
.L494:
	.loc 1 2160 0
	movl	$1, -260(%rbp)	#, converted
	.loc 1 2163 0
	jmp	.L464	#
.L491:
	jmp	.L464	#
.L456:
	.loc 1 2167 0
	cmpl	$6, -232(%rbp)	#, code0
	jne	.L495	#,
	.loc 1 2167 0 is_stmt 0 discriminator 1
	cmpl	$6, -228(%rbp)	#, code1
	jne	.L495	#,
	.loc 1 2169 0 is_stmt 1
	movq	-176(%rbp), %rax	# op1, tmp420
	movzbl	16(%rax), %eax	# op1_12->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L496	#,
	.loc 1 2169 0 is_stmt 0 discriminator 1
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.80
	testl	%eax, %eax	# skip_evaluation.80
	jne	.L496	#,
	.loc 1 2171 0 is_stmt 1
	movq	-176(%rbp), %rax	# op1, tmp421
	movq	%rax, %rdi	# tmp421,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21655
	jns	.L497	#,
	.loc 1 2172 0
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L496	#
.L497:
	.loc 1 2173 0
	movq	-96(%rbp), %rax	# type0, tmp422
	movzwl	60(%rax), %eax	# *type0_103, tmp425
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %edx	# D.21656, D.21657
	movq	-176(%rbp), %rax	# op1, tmp426
	movq	%rdx, %rsi	# D.21657,
	movq	%rax, %rdi	# tmp426,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21655
	js	.L496	#,
	.loc 1 2174 0
	movl	$.LC67, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L496:
	.loc 1 2179 0
	movq	-96(%rbp), %rax	# type0, tmp427
	movq	%rax, -168(%rbp)	# tmp427, result_type
	.loc 1 2182 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.81
	testl	%eax, %eax	# flag_traditional.81
	jne	.L495	#,
	.loc 1 2184 0
	movq	-176(%rbp), %rax	# op1, tmp428
	movq	8(%rax), %rax	# op1_12->common.type, D.21654
	movq	128(%rax), %rdx	# _203->type.main_variant, D.21654
	movq	integer_types+40(%rip), %rax	# integer_types, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L498	#,
	.loc 1 2185 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21654
	movq	-176(%rbp), %rdx	# op1, tmp429
	movq	%rdx, %rsi	# tmp429,
	movq	%rax, %rdi	# D.21654,
	call	convert	#
	movq	%rax, -176(%rbp)	# tmp430, op1
.L498:
	.loc 1 2187 0
	movl	$1, -260(%rbp)	#, converted
	.loc 1 2190 0
	jmp	.L464	#
.L495:
	jmp	.L464	#
.L460:
	.loc 1 2194 0
	movl	warn_float_equal(%rip), %eax	# warn_float_equal, warn_float_equal.82
	testl	%eax, %eax	# warn_float_equal.82
	je	.L499	#,
	.loc 1 2194 0 is_stmt 0 discriminator 1
	cmpl	$7, -232(%rbp)	#, code0
	je	.L500	#,
	cmpl	$7, -228(%rbp)	#, code1
	jne	.L499	#,
.L500:
	.loc 1 2195 0 is_stmt 1
	movl	$.LC68, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L499:
	.loc 1 2198 0
	movq	integer_types+40(%rip), %rax	# integer_types, tmp431
	movq	%rax, -160(%rbp)	# tmp431, build_type
	.loc 1 2199 0
	cmpl	$6, -232(%rbp)	#, code0
	je	.L501	#,
	.loc 1 2199 0 is_stmt 0 discriminator 1
	cmpl	$7, -232(%rbp)	#, code0
	je	.L501	#,
	.loc 1 2200 0 is_stmt 1
	cmpl	$8, -232(%rbp)	#, code0
	jne	.L502	#,
.L501:
	.loc 1 2201 0
	cmpl	$6, -228(%rbp)	#, code1
	je	.L503	#,
	.loc 1 2201 0 is_stmt 0 discriminator 1
	cmpl	$7, -228(%rbp)	#, code1
	je	.L503	#,
	.loc 1 2202 0 is_stmt 1
	cmpl	$8, -228(%rbp)	#, code1
	jne	.L502	#,
.L503:
	.loc 1 2203 0
	movl	$1, -252(%rbp)	#, short_compare
	jmp	.L504	#
.L502:
	.loc 1 2204 0
	cmpl	$13, -232(%rbp)	#, code0
	jne	.L505	#,
	.loc 1 2204 0 is_stmt 0 discriminator 1
	cmpl	$13, -228(%rbp)	#, code1
	jne	.L505	#,
.LBB28:
	.loc 1 2206 0 is_stmt 1
	movq	-96(%rbp), %rax	# type0, tmp432
	movq	8(%rax), %rax	# type0_103->common.type, tmp433
	movq	%rax, -80(%rbp)	# tmp433, tt0
	.loc 1 2207 0
	movq	-88(%rbp), %rax	# type1, tmp434
	movq	8(%rax), %rax	# type1_104->common.type, tmp435
	movq	%rax, -72(%rbp)	# tmp435, tt1
	.loc 1 2211 0
	movq	-88(%rbp), %rdx	# type1, tmp436
	movq	-96(%rbp), %rax	# type0, tmp437
	movq	%rdx, %rsi	# tmp436,
	movq	%rax, %rdi	# tmp437,
	call	comp_target_types	#
	testl	%eax, %eax	# D.21655
	je	.L506	#,
	.loc 1 2212 0
	movq	-88(%rbp), %rdx	# type1, tmp438
	movq	-96(%rbp), %rax	# type0, tmp439
	movq	%rdx, %rsi	# tmp438,
	movq	%rax, %rdi	# tmp439,
	call	common_type	#
	movq	%rax, -168(%rbp)	# tmp440, result_type
	jmp	.L507	#
.L506:
	.loc 1 2213 0
	movq	-80(%rbp), %rax	# tt0, tmp441
	movzbl	16(%rax), %eax	# tt0_212->common.code, D.21653
	cmpb	$5, %al	#, D.21653
	jne	.L508	#,
	.loc 1 2217 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.83
	testl	%eax, %eax	# pedantic.83
	je	.L507	#,
	.loc 1 2217 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# op0, tmp442
	movq	%rax, %rdi	# tmp442,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21655
	je	.L510	#,
	movq	-184(%rbp), %rax	# op0, tmp443
	cmpq	-304(%rbp), %rax	# orig_op0, tmp443
	je	.L507	#,
.L510:
	.loc 1 2218 0 is_stmt 1
	movq	-72(%rbp), %rax	# tt1, tmp444
	movzbl	16(%rax), %eax	# tt1_213->common.code, D.21653
	cmpb	$23, %al	#, D.21653
	jne	.L507	#,
	.loc 1 2219 0
	movl	$.LC69, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L507	#
.L508:
	.loc 1 2221 0
	movq	-72(%rbp), %rax	# tt1, tmp445
	movzbl	16(%rax), %eax	# tt1_213->common.code, D.21653
	cmpb	$5, %al	#, D.21653
	jne	.L511	#,
	.loc 1 2223 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.84
	testl	%eax, %eax	# pedantic.84
	je	.L507	#,
	.loc 1 2223 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# op1, tmp446
	movq	%rax, %rdi	# tmp446,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21655
	je	.L513	#,
	movq	-176(%rbp), %rax	# op1, tmp447
	cmpq	-312(%rbp), %rax	# orig_op1, tmp447
	je	.L507	#,
.L513:
	.loc 1 2224 0 is_stmt 1
	movq	-80(%rbp), %rax	# tt0, tmp448
	movzbl	16(%rax), %eax	# tt0_212->common.code, D.21653
	cmpb	$23, %al	#, D.21653
	jne	.L507	#,
	.loc 1 2225 0
	movl	$.LC69, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L507	#
.L511:
	.loc 1 2228 0
	movl	$.LC70, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L507:
	.loc 1 2230 0
	cmpq	$0, -168(%rbp)	#, result_type
	jne	.L514	#,
	.loc 1 2231 0
	movq	global_trees+224(%rip), %rax	# global_trees, tmp449
	movq	%rax, -168(%rbp)	# tmp449, result_type
.LBE28:
	.loc 1 2205 0
	jmp	.L504	#
.L514:
	jmp	.L504	#
.L505:
	.loc 1 2233 0
	cmpl	$13, -232(%rbp)	#, code0
	jne	.L515	#,
	.loc 1 2233 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# op1, tmp450
	movzbl	16(%rax), %eax	# op1_12->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L515	#,
	.loc 1 2234 0 is_stmt 1
	movq	-176(%rbp), %rax	# op1, tmp451
	movq	%rax, %rdi	# tmp451,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21655
	je	.L515	#,
	.loc 1 2235 0
	movq	-96(%rbp), %rax	# type0, tmp452
	movq	%rax, -168(%rbp)	# tmp452, result_type
	jmp	.L504	#
.L515:
	.loc 1 2236 0
	cmpl	$13, -228(%rbp)	#, code1
	jne	.L516	#,
	.loc 1 2236 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# op0, tmp453
	movzbl	16(%rax), %eax	# op0_2->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L516	#,
	.loc 1 2237 0 is_stmt 1
	movq	-184(%rbp), %rax	# op0, tmp454
	movq	%rax, %rdi	# tmp454,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21655
	je	.L516	#,
	.loc 1 2238 0
	movq	-88(%rbp), %rax	# type1, tmp455
	movq	%rax, -168(%rbp)	# tmp455, result_type
	jmp	.L504	#
.L516:
	.loc 1 2239 0
	cmpl	$13, -232(%rbp)	#, code0
	jne	.L517	#,
	.loc 1 2239 0 is_stmt 0 discriminator 1
	cmpl	$6, -228(%rbp)	#, code1
	jne	.L517	#,
	.loc 1 2241 0 is_stmt 1
	movq	-96(%rbp), %rax	# type0, tmp456
	movq	%rax, -168(%rbp)	# tmp456, result_type
	.loc 1 2242 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.85
	testl	%eax, %eax	# flag_traditional.85
	jne	.L518	#,
	.loc 1 2243 0
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2242 0
	jmp	.L504	#
.L518:
	.loc 1 2242 0 is_stmt 0 discriminator 1
	jmp	.L504	#
.L517:
	.loc 1 2245 0 is_stmt 1
	cmpl	$6, -232(%rbp)	#, code0
	jne	.L504	#,
	.loc 1 2245 0 is_stmt 0 discriminator 1
	cmpl	$13, -228(%rbp)	#, code1
	jne	.L504	#,
	.loc 1 2247 0 is_stmt 1
	movq	-88(%rbp), %rax	# type1, tmp457
	movq	%rax, -168(%rbp)	# tmp457, result_type
	.loc 1 2248 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.86
	testl	%eax, %eax	# flag_traditional.86
	jne	.L504	#,
	.loc 1 2249 0
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2251 0
	jmp	.L464	#
.L504:
	jmp	.L464	#
.L453:
	.loc 1 2255 0
	cmpl	$6, -232(%rbp)	#, code0
	je	.L519	#,
	.loc 1 2255 0 is_stmt 0 discriminator 1
	cmpl	$7, -232(%rbp)	#, code0
	jne	.L520	#,
.L519:
	.loc 1 2256 0 is_stmt 1
	cmpl	$6, -228(%rbp)	#, code1
	je	.L521	#,
	.loc 1 2256 0 is_stmt 0 discriminator 1
	cmpl	$7, -228(%rbp)	#, code1
	jne	.L520	#,
.L521:
	.loc 1 2257 0 is_stmt 1
	movl	$1, -256(%rbp)	#, shorten
	jmp	.L522	#
.L520:
	.loc 1 2258 0
	cmpl	$13, -232(%rbp)	#, code0
	jne	.L522	#,
	.loc 1 2258 0 is_stmt 0 discriminator 1
	cmpl	$13, -228(%rbp)	#, code1
	jne	.L522	#,
	.loc 1 2260 0 is_stmt 1
	movq	-88(%rbp), %rdx	# type1, tmp458
	movq	-96(%rbp), %rax	# type0, tmp459
	movq	%rdx, %rsi	# tmp458,
	movq	%rax, %rdi	# tmp459,
	call	comp_target_types	#
	testl	%eax, %eax	# D.21655
	je	.L523	#,
	.loc 1 2262 0
	movq	-88(%rbp), %rdx	# type1, tmp460
	movq	-96(%rbp), %rax	# type0, tmp461
	movq	%rdx, %rsi	# tmp460,
	movq	%rax, %rdi	# tmp461,
	call	common_type	#
	movq	%rax, -168(%rbp)	# tmp462, result_type
	.loc 1 2263 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.87
	testl	%eax, %eax	# pedantic.87
	je	.L522	#,
	.loc 1 2264 0
	movq	-96(%rbp), %rax	# type0, tmp463
	movq	8(%rax), %rax	# type0_103->common.type, D.21654
	movzbl	16(%rax), %eax	# _239->common.code, D.21653
	cmpb	$23, %al	#, D.21653
	jne	.L522	#,
	.loc 1 2265 0
	movl	$.LC72, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2273 0
	jmp	.L464	#
.L523:
	.loc 1 2269 0
	movq	global_trees+224(%rip), %rax	# global_trees, tmp464
	movq	%rax, -168(%rbp)	# tmp464, result_type
	.loc 1 2270 0
	movl	$.LC70, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2273 0
	jmp	.L464	#
.L522:
	jmp	.L464	#
.L459:
	.loc 1 2279 0
	movq	integer_types+40(%rip), %rax	# integer_types, tmp465
	movq	%rax, -160(%rbp)	# tmp465, build_type
	.loc 1 2280 0
	cmpl	$6, -232(%rbp)	#, code0
	je	.L525	#,
	.loc 1 2280 0 is_stmt 0 discriminator 1
	cmpl	$7, -232(%rbp)	#, code0
	jne	.L526	#,
.L525:
	.loc 1 2281 0 is_stmt 1
	cmpl	$6, -228(%rbp)	#, code1
	je	.L527	#,
	.loc 1 2281 0 is_stmt 0 discriminator 1
	cmpl	$7, -228(%rbp)	#, code1
	jne	.L526	#,
.L527:
	.loc 1 2282 0 is_stmt 1
	movl	$1, -252(%rbp)	#, short_compare
	jmp	.L528	#
.L526:
	.loc 1 2283 0
	cmpl	$13, -232(%rbp)	#, code0
	jne	.L529	#,
	.loc 1 2283 0 is_stmt 0 discriminator 1
	cmpl	$13, -228(%rbp)	#, code1
	jne	.L529	#,
	.loc 1 2285 0 is_stmt 1
	movq	-88(%rbp), %rdx	# type1, tmp466
	movq	-96(%rbp), %rax	# type0, tmp467
	movq	%rdx, %rsi	# tmp466,
	movq	%rax, %rdi	# tmp467,
	call	comp_target_types	#
	testl	%eax, %eax	# D.21655
	je	.L530	#,
	.loc 1 2287 0
	movq	-88(%rbp), %rdx	# type1, tmp468
	movq	-96(%rbp), %rax	# type0, tmp469
	movq	%rdx, %rsi	# tmp468,
	movq	%rax, %rdi	# tmp469,
	call	common_type	#
	movq	%rax, -168(%rbp)	# tmp470, result_type
	.loc 1 2288 0
	movq	-96(%rbp), %rax	# type0, tmp471
	movq	8(%rax), %rax	# type0_103->common.type, D.21654
	movq	32(%rax), %rax	# _246->type.size, D.21654
	.loc 1 2289 0
	testq	%rax, %rax	# D.21654
	sete	%dl	#, D.21658
	movq	-88(%rbp), %rax	# type1, tmp472
	movq	8(%rax), %rax	# type1_104->common.type, D.21654
	movq	32(%rax), %rax	# _249->type.size, D.21654
	testq	%rax, %rax	# D.21654
	sete	%al	#, D.21658
	xorl	%edx, %eax	# D.21658, D.21658
	.loc 1 2288 0
	testb	%al, %al	# D.21658
	je	.L531	#,
	.loc 1 2290 0
	movl	$.LC73, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L533	#
.L531:
	.loc 1 2291 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.88
	testl	%eax, %eax	# pedantic.88
	je	.L533	#,
	.loc 1 2292 0
	movq	-96(%rbp), %rax	# type0, tmp473
	movq	8(%rax), %rax	# type0_103->common.type, D.21654
	movzbl	16(%rax), %eax	# _254->common.code, D.21653
	cmpb	$23, %al	#, D.21653
	jne	.L533	#,
	.loc 1 2293 0
	movl	$.LC72, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2285 0
	jmp	.L528	#
.L530:
	.loc 1 2297 0
	movq	global_trees+224(%rip), %rax	# global_trees, tmp474
	movq	%rax, -168(%rbp)	# tmp474, result_type
	.loc 1 2298 0
	movl	$.LC70, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2285 0
	jmp	.L528	#
.L533:
	jmp	.L528	#
.L529:
	.loc 1 2301 0
	cmpl	$13, -232(%rbp)	#, code0
	jne	.L534	#,
	.loc 1 2301 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# op1, tmp475
	movzbl	16(%rax), %eax	# op1_12->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L534	#,
	.loc 1 2302 0 is_stmt 1
	movq	-176(%rbp), %rax	# op1, tmp476
	movq	%rax, %rdi	# tmp476,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21655
	je	.L534	#,
	.loc 1 2304 0
	movq	-96(%rbp), %rax	# type0, tmp477
	movq	%rax, -168(%rbp)	# tmp477, result_type
	.loc 1 2305 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.89
	testl	%eax, %eax	# pedantic.89
	jne	.L535	#,
	.loc 1 2305 0 is_stmt 0 discriminator 1
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.90
	testl	%eax, %eax	# extra_warnings.90
	je	.L536	#,
.L535:
	.loc 1 2306 0 is_stmt 1
	movl	$.LC74, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2305 0
	jmp	.L528	#
.L536:
	.loc 1 2305 0 is_stmt 0 discriminator 1
	jmp	.L528	#
.L534:
	.loc 1 2308 0 is_stmt 1
	cmpl	$13, -228(%rbp)	#, code1
	jne	.L537	#,
	.loc 1 2308 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# op0, tmp478
	movzbl	16(%rax), %eax	# op0_2->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L537	#,
	.loc 1 2309 0 is_stmt 1
	movq	-184(%rbp), %rax	# op0, tmp479
	movq	%rax, %rdi	# tmp479,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21655
	je	.L537	#,
	.loc 1 2311 0
	movq	-88(%rbp), %rax	# type1, tmp480
	movq	%rax, -168(%rbp)	# tmp480, result_type
	.loc 1 2312 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.91
	testl	%eax, %eax	# pedantic.91
	je	.L538	#,
	.loc 1 2313 0
	movl	$.LC74, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2312 0
	jmp	.L528	#
.L538:
	.loc 1 2312 0 is_stmt 0 discriminator 1
	jmp	.L528	#
.L537:
	.loc 1 2315 0 is_stmt 1
	cmpl	$13, -232(%rbp)	#, code0
	jne	.L539	#,
	.loc 1 2315 0 is_stmt 0 discriminator 1
	cmpl	$6, -228(%rbp)	#, code1
	jne	.L539	#,
	.loc 1 2317 0 is_stmt 1
	movq	-96(%rbp), %rax	# type0, tmp481
	movq	%rax, -168(%rbp)	# tmp481, result_type
	.loc 1 2318 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.92
	testl	%eax, %eax	# flag_traditional.92
	jne	.L540	#,
	.loc 1 2319 0
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2318 0
	jmp	.L528	#
.L540:
	.loc 1 2318 0 is_stmt 0 discriminator 1
	jmp	.L528	#
.L539:
	.loc 1 2321 0 is_stmt 1
	cmpl	$6, -232(%rbp)	#, code0
	jne	.L528	#,
	.loc 1 2321 0 is_stmt 0 discriminator 1
	cmpl	$13, -228(%rbp)	#, code1
	jne	.L528	#,
	.loc 1 2323 0 is_stmt 1
	movq	-88(%rbp), %rax	# type1, tmp482
	movq	%rax, -168(%rbp)	# tmp482, result_type
	.loc 1 2324 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.93
	testl	%eax, %eax	# flag_traditional.93
	jne	.L528	#,
	.loc 1 2325 0
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2327 0
	jmp	.L464	#
.L528:
	jmp	.L464	#
.L461:
	.loc 1 2336 0
	movq	integer_types+40(%rip), %rax	# integer_types, tmp483
	movq	%rax, -160(%rbp)	# tmp483, build_type
	.loc 1 2337 0
	cmpl	$7, -232(%rbp)	#, code0
	jne	.L541	#,
	.loc 1 2337 0 is_stmt 0 discriminator 1
	cmpl	$7, -228(%rbp)	#, code1
	je	.L542	#,
.L541:
	.loc 1 2339 0 is_stmt 1
	movl	$.LC75, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2340 0
	movq	global_trees(%rip), %rax	# global_trees, D.21652
	jmp	.L445	#
.L542:
	.loc 1 2342 0
	movl	$1, -244(%rbp)	#, common
	.loc 1 2343 0
	jmp	.L464	#
.L597:
	.loc 1 2346 0
	nop
.L464:
	.loc 1 2349 0
	cmpl	$6, -232(%rbp)	#, code0
	je	.L543	#,
	.loc 1 2349 0 is_stmt 0 discriminator 1
	cmpl	$7, -232(%rbp)	#, code0
	je	.L543	#,
	cmpl	$8, -232(%rbp)	#, code0
	jne	.L544	#,
.L543:
	.loc 1 2350 0 is_stmt 1
	cmpl	$6, -228(%rbp)	#, code1
	je	.L545	#,
	.loc 1 2351 0
	cmpl	$7, -228(%rbp)	#, code1
	je	.L545	#,
	.loc 1 2351 0 is_stmt 0 discriminator 1
	cmpl	$8, -228(%rbp)	#, code1
	jne	.L544	#,
.L545:
.LBB29:
	.loc 1 2353 0 is_stmt 1
	cmpl	$8, -232(%rbp)	#, code0
	je	.L546	#,
	.loc 1 2353 0 is_stmt 0 discriminator 1
	cmpl	$8, -228(%rbp)	#, code1
	je	.L546	#,
	.loc 1 2353 0 discriminator 3
	movl	$1, %eax	#, iftmp.94
	jmp	.L547	#
.L546:
	.loc 1 2353 0 discriminator 2
	movl	$0, %eax	#, iftmp.94
.L547:
	.loc 1 2353 0 discriminator 4
	movl	%eax, -224(%rbp)	# iftmp.94, none_complex
	.loc 1 2355 0 is_stmt 1 discriminator 4
	cmpl	$0, -256(%rbp)	#, shorten
	jne	.L548	#,
	.loc 1 2355 0 is_stmt 0 discriminator 1
	cmpl	$0, -244(%rbp)	#, common
	jne	.L548	#,
	cmpl	$0, -252(%rbp)	#, short_compare
	je	.L549	#,
.L548:
	.loc 1 2356 0 is_stmt 1
	movq	-88(%rbp), %rdx	# type1, tmp484
	movq	-96(%rbp), %rax	# type0, tmp485
	movq	%rdx, %rsi	# tmp484,
	movq	%rax, %rdi	# tmp485,
	call	common_type	#
	movq	%rax, -168(%rbp)	# tmp486, result_type
.L549:
	.loc 1 2369 0
	cmpl	$0, -256(%rbp)	#, shorten
	je	.L550	#,
	.loc 1 2369 0 is_stmt 0 discriminator 1
	cmpl	$0, -224(%rbp)	#, none_complex
	je	.L550	#,
.LBB30:
	.loc 1 2372 0 is_stmt 1
	leaq	-200(%rbp), %rdx	#, tmp487
	movq	-184(%rbp), %rax	# op0, tmp488
	movq	%rdx, %rsi	# tmp487,
	movq	%rax, %rdi	# tmp488,
	call	get_narrower	#
	movq	%rax, -64(%rbp)	# tmp489, arg0
	.loc 1 2373 0
	leaq	-192(%rbp), %rdx	#, tmp490
	movq	-176(%rbp), %rax	# op1, tmp491
	movq	%rdx, %rsi	# tmp490,
	movq	%rax, %rdi	# tmp491,
	call	get_narrower	#
	movq	%rax, -56(%rbp)	# tmp492, arg1
	.loc 1 2375 0
	movq	-168(%rbp), %rax	# result_type, tmp493
	movzbl	17(%rax), %eax	# *result_type_38, tmp496
	shrb	$5, %al	#, D.21659
	andl	$1, %eax	#, D.21659
	movzbl	%al, %eax	# D.21659, tmp497
	movl	%eax, -240(%rbp)	# tmp497, uns
	.loc 1 2378 0
	movq	-168(%rbp), %rax	# result_type, tmp498
	movq	%rax, -152(%rbp)	# tmp498, final_type
	.loc 1 2383 0
	movq	-184(%rbp), %rax	# op0, tmp499
	movq	8(%rax), %rax	# op0_4->common.type, D.21654
	movzwl	60(%rax), %eax	# *_282, tmp502
	andw	$511, %ax	#, D.21656
	movl	%eax, %edx	# D.21656, D.21656
	.loc 1 2384 0
	movq	-64(%rbp), %rax	# arg0, tmp503
	movq	8(%rax), %rax	# arg0_277->common.type, D.21654
	movzwl	60(%rax), %eax	# *_284, tmp506
	andw	$511, %ax	#, D.21656
	.loc 1 2383 0
	cmpw	%ax, %dx	# D.21656, D.21656
	jne	.L551	#,
	.loc 1 2385 0
	movq	-184(%rbp), %rax	# op0, tmp507
	movq	8(%rax), %rax	# op0_4->common.type, D.21654
	cmpq	-152(%rbp), %rax	# final_type, D.21654
	je	.L551	#,
	.loc 1 2386 0
	movq	-184(%rbp), %rax	# op0, tmp508
	movq	8(%rax), %rax	# op0_4->common.type, D.21654
	movzbl	17(%rax), %eax	# *_287, tmp511
	shrb	$5, %al	#, D.21659
	andl	$1, %eax	#, D.21659
	movzbl	%al, %eax	# D.21659, unsigned0.95
	movl	%eax, -200(%rbp)	# unsigned0.95, unsigned0
.L551:
	.loc 1 2387 0
	movq	-176(%rbp), %rax	# op1, tmp512
	movq	8(%rax), %rax	# op1_20->common.type, D.21654
	movzwl	60(%rax), %eax	# *_290, tmp515
	andw	$511, %ax	#, D.21656
	movl	%eax, %edx	# D.21656, D.21656
	.loc 1 2388 0
	movq	-56(%rbp), %rax	# arg1, tmp516
	movq	8(%rax), %rax	# arg1_278->common.type, D.21654
	movzwl	60(%rax), %eax	# *_292, tmp519
	andw	$511, %ax	#, D.21656
	.loc 1 2387 0
	cmpw	%ax, %dx	# D.21656, D.21656
	jne	.L552	#,
	.loc 1 2389 0
	movq	-176(%rbp), %rax	# op1, tmp520
	movq	8(%rax), %rax	# op1_20->common.type, D.21654
	cmpq	-152(%rbp), %rax	# final_type, D.21654
	je	.L552	#,
	.loc 1 2390 0
	movq	-176(%rbp), %rax	# op1, tmp521
	movq	8(%rax), %rax	# op1_20->common.type, D.21654
	movzbl	17(%rax), %eax	# *_295, tmp524
	shrb	$5, %al	#, D.21659
	andl	$1, %eax	#, D.21659
	movzbl	%al, %eax	# D.21659, unsigned1.96
	movl	%eax, -192(%rbp)	# unsigned1.96, unsigned1
.L552:
	.loc 1 2396 0
	cmpl	$-1, -256(%rbp)	#, shorten
	jne	.L553	#,
	.loc 1 2397 0
	movl	-200(%rbp), %eax	# unsigned0, tmp525
	movl	%eax, -240(%rbp)	# tmp525, uns
.L553:
	.loc 1 2406 0
	movq	-64(%rbp), %rax	# arg0, tmp526
	movq	8(%rax), %rax	# arg0_277->common.type, D.21654
	movzwl	60(%rax), %eax	# *_299, tmp529
	andw	$511, %ax	#, D.21656
	.loc 1 2407 0
	movzwl	%ax, %edx	# D.21656, D.21655
	movq	-168(%rbp), %rax	# result_type, tmp530
	movzwl	60(%rax), %eax	# *result_type_38, tmp533
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %eax	# D.21656, D.21655
	.loc 1 2406 0
	cmpl	%eax, %edx	# D.21655, D.21655
	jge	.L554	#,
	.loc 1 2408 0
	movq	-56(%rbp), %rax	# arg1, tmp534
	movq	8(%rax), %rax	# arg1_278->common.type, D.21654
	movzwl	60(%rax), %eax	# *_304, tmp537
	andw	$511, %ax	#, D.21656
	movl	%eax, %edx	# D.21656, D.21656
	.loc 1 2409 0
	movq	-64(%rbp), %rax	# arg0, tmp538
	movq	8(%rax), %rax	# arg0_277->common.type, D.21654
	movzwl	60(%rax), %eax	# *_306, tmp541
	andw	$511, %ax	#, D.21656
	.loc 1 2408 0
	cmpw	%ax, %dx	# D.21656, D.21656
	jne	.L554	#,
	.loc 1 2410 0
	movl	-200(%rbp), %edx	# unsigned0, unsigned0.97
	movl	-192(%rbp), %eax	# unsigned1, unsigned1.98
	cmpl	%eax, %edx	# unsigned1.98, unsigned0.97
	jne	.L554	#,
	.loc 1 2411 0
	movl	-200(%rbp), %eax	# unsigned0, unsigned0.99
	testl	%eax, %eax	# unsigned0.99
	jne	.L555	#,
	.loc 1 2411 0 is_stmt 0 discriminator 1
	cmpl	$0, -240(%rbp)	#, uns
	jne	.L554	#,
.L555:
	.loc 1 2413 0 is_stmt 1
	movq	-56(%rbp), %rax	# arg1, tmp542
	movq	8(%rax), %rdx	# arg1_278->common.type, D.21654
	movq	-64(%rbp), %rax	# arg0, tmp543
	movq	8(%rax), %rax	# arg0_277->common.type, D.21654
	movq	%rdx, %rsi	# D.21654,
	movq	%rax, %rdi	# D.21654,
	call	common_type	#
	movq	%rax, %rdx	#, D.21654
	movl	-200(%rbp), %eax	# unsigned0, unsigned0.100
	movq	%rdx, %rsi	# D.21654,
	movl	%eax, %edi	# unsigned0.100,
	call	signed_or_unsigned_type	#
	movq	%rax, -168(%rbp)	# tmp544, result_type
	jmp	.L550	#
.L554:
	.loc 1 2415 0
	movq	-64(%rbp), %rax	# arg0, tmp545
	movzbl	16(%rax), %eax	# arg0_277->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L557	#,
	.loc 1 2416 0
	movl	-192(%rbp), %eax	# unsigned1, unsigned1.101
	testl	%eax, %eax	# unsigned1.101
	jne	.L558	#,
	.loc 1 2416 0 is_stmt 0 discriminator 1
	cmpl	$0, -240(%rbp)	#, uns
	jne	.L557	#,
.L558:
	.loc 1 2417 0 is_stmt 1
	movq	-56(%rbp), %rax	# arg1, tmp546
	movq	8(%rax), %rax	# arg1_278->common.type, D.21654
	movzwl	60(%rax), %eax	# *_318, tmp549
	andw	$511, %ax	#, D.21656
	.loc 1 2418 0
	movzwl	%ax, %edx	# D.21656, D.21655
	movq	-168(%rbp), %rax	# result_type, tmp550
	movzwl	60(%rax), %eax	# *result_type_38, tmp553
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %eax	# D.21656, D.21655
	.loc 1 2417 0
	cmpl	%eax, %edx	# D.21655, D.21655
	jge	.L557	#,
	.loc 1 2419 0
	movq	-56(%rbp), %rax	# arg1, tmp554
	movq	8(%rax), %rdx	# arg1_278->common.type, D.21654
	movl	-192(%rbp), %eax	# unsigned1, unsigned1.102
	movq	%rdx, %rsi	# D.21654,
	movl	%eax, %edi	# unsigned1.102,
	call	signed_or_unsigned_type	#
	movq	%rax, -48(%rbp)	# tmp555, type
	.loc 1 2421 0
	movq	-48(%rbp), %rdx	# type, tmp556
	movq	-64(%rbp), %rax	# arg0, tmp557
	movq	%rdx, %rsi	# tmp556,
	movq	%rax, %rdi	# tmp557,
	call	int_fits_type_p	#
	.loc 1 2419 0
	testl	%eax, %eax	# D.21655
	je	.L557	#,
	.loc 1 2422 0
	movq	-48(%rbp), %rax	# type, tmp558
	movq	%rax, -168(%rbp)	# tmp558, result_type
	jmp	.L550	#
.L557:
	.loc 1 2423 0
	movq	-56(%rbp), %rax	# arg1, tmp559
	movzbl	16(%rax), %eax	# arg1_278->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L550	#,
	.loc 1 2424 0
	movl	-200(%rbp), %eax	# unsigned0, unsigned0.103
	testl	%eax, %eax	# unsigned0.103
	jne	.L559	#,
	.loc 1 2424 0 is_stmt 0 discriminator 1
	cmpl	$0, -240(%rbp)	#, uns
	jne	.L550	#,
.L559:
	.loc 1 2425 0 is_stmt 1
	movq	-64(%rbp), %rax	# arg0, tmp560
	movq	8(%rax), %rax	# arg0_277->common.type, D.21654
	movzwl	60(%rax), %eax	# *_330, tmp563
	andw	$511, %ax	#, D.21656
	.loc 1 2426 0
	movzwl	%ax, %edx	# D.21656, D.21655
	movq	-168(%rbp), %rax	# result_type, tmp564
	movzwl	60(%rax), %eax	# *result_type_38, tmp567
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %eax	# D.21656, D.21655
	.loc 1 2425 0
	cmpl	%eax, %edx	# D.21655, D.21655
	jge	.L550	#,
	.loc 1 2427 0
	movq	-64(%rbp), %rax	# arg0, tmp568
	movq	8(%rax), %rdx	# arg0_277->common.type, D.21654
	movl	-200(%rbp), %eax	# unsigned0, unsigned0.104
	movq	%rdx, %rsi	# D.21654,
	movl	%eax, %edi	# unsigned0.104,
	call	signed_or_unsigned_type	#
	movq	%rax, -48(%rbp)	# tmp569, type
	.loc 1 2429 0
	movq	-48(%rbp), %rdx	# type, tmp570
	movq	-56(%rbp), %rax	# arg1, tmp571
	movq	%rdx, %rsi	# tmp570,
	movq	%rax, %rdi	# tmp571,
	call	int_fits_type_p	#
	.loc 1 2427 0
	testl	%eax, %eax	# D.21655
	je	.L550	#,
	.loc 1 2430 0
	movq	-48(%rbp), %rax	# type, tmp572
	movq	%rax, -168(%rbp)	# tmp572, result_type
.L550:
.LBE30:
	.loc 1 2435 0
	cmpl	$0, -248(%rbp)	#, short_shift
	je	.L560	#,
.LBB31:
	.loc 1 2438 0
	leaq	-192(%rbp), %rdx	#, tmp573
	movq	-184(%rbp), %rax	# op0, tmp574
	movq	%rdx, %rsi	# tmp573,
	movq	%rax, %rdi	# tmp574,
	call	get_narrower	#
	movq	%rax, -40(%rbp)	# tmp575, arg0
	.loc 1 2440 0
	movq	-168(%rbp), %rax	# result_type, tmp576
	movq	%rax, -152(%rbp)	# tmp576, final_type
	.loc 1 2442 0
	movq	-40(%rbp), %rax	# arg0, tmp577
	cmpq	-184(%rbp), %rax	# op0, tmp577
	jne	.L561	#,
	.loc 1 2442 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# op0, tmp578
	movq	8(%rax), %rax	# op0_4->common.type, D.21654
	cmpq	-152(%rbp), %rax	# final_type, D.21654
	jne	.L561	#,
	.loc 1 2443 0 is_stmt 1
	movq	-184(%rbp), %rax	# op0, tmp579
	movq	8(%rax), %rax	# op0_4->common.type, D.21654
	movzbl	17(%rax), %eax	# *_343, tmp582
	shrb	$5, %al	#, D.21659
	andl	$1, %eax	#, D.21659
	movzbl	%al, %eax	# D.21659, unsigned_arg.105
	movl	%eax, -192(%rbp)	# unsigned_arg.105, unsigned_arg
.L561:
	.loc 1 2445 0
	movq	-40(%rbp), %rax	# arg0, tmp583
	movq	8(%rax), %rax	# arg0_340->common.type, D.21654
	movzwl	60(%rax), %eax	# *_346, tmp586
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %edx	# D.21656, D.21655
	movq	-168(%rbp), %rax	# result_type, tmp587
	movzwl	60(%rax), %eax	# *result_type_40, tmp590
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %eax	# D.21656, D.21655
	cmpl	%eax, %edx	# D.21655, D.21655
	jge	.L560	#,
	.loc 1 2448 0
	movq	-40(%rbp), %rax	# arg0, tmp591
	movq	8(%rax), %rax	# arg0_340->common.type, D.21654
	movzwl	60(%rax), %eax	# *_351, tmp594
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %edx	# D.21656, D.21657
	movq	-176(%rbp), %rax	# op1, tmp595
	movq	%rdx, %rsi	# D.21657,
	movq	%rax, %rdi	# tmp595,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21655
	jns	.L560	#,
	.loc 1 2450 0
	movq	-152(%rbp), %rax	# final_type, tmp596
	movzbl	17(%rax), %eax	# *final_type_341, D.21653
	andl	$32, %eax	#, D.21653
	testb	%al, %al	# D.21653
	je	.L563	#,
	.loc 1 2450 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# unsigned_arg, unsigned_arg.106
	testl	%eax, %eax	# unsigned_arg.106
	je	.L560	#,
.L563:
	.loc 1 2454 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg0, tmp597
	movq	8(%rax), %rdx	# arg0_340->common.type, D.21654
	movl	-192(%rbp), %eax	# unsigned_arg, unsigned_arg.107
	movq	%rdx, %rsi	# D.21654,
	movl	%eax, %edi	# unsigned_arg.107,
	call	signed_or_unsigned_type	#
	movq	%rax, -168(%rbp)	# tmp598, result_type
	.loc 1 2456 0
	movq	-184(%rbp), %rax	# op0, tmp599
	movq	8(%rax), %rax	# op0_4->common.type, D.21654
	cmpq	-168(%rbp), %rax	# result_type, D.21654
	je	.L564	#,
	.loc 1 2457 0
	movq	-184(%rbp), %rdx	# op0, tmp600
	movq	-168(%rbp), %rax	# result_type, tmp601
	movq	%rdx, %rsi	# tmp600,
	movq	%rax, %rdi	# tmp601,
	call	convert	#
	movq	%rax, -184(%rbp)	# tmp602, op0
.L564:
	.loc 1 2458 0
	movl	$1, -260(%rbp)	#, converted
.L560:
.LBE31:
	.loc 1 2465 0
	cmpl	$0, -252(%rbp)	#, short_compare
	je	.L544	#,
.LBB32:
	.loc 1 2471 0
	movq	-184(%rbp), %rax	# op0, tmp603
	movq	%rax, -208(%rbp)	# tmp603, xop0
	movq	-176(%rbp), %rax	# op1, tmp604
	movq	%rax, -200(%rbp)	# tmp604, xop1
	movq	-168(%rbp), %rax	# result_type, tmp605
	movq	%rax, -192(%rbp)	# tmp605, xresult_type
	.loc 1 2472 0
	movl	-264(%rbp), %eax	# resultcode, tmp606
	movl	%eax, -276(%rbp)	# tmp606, xresultcode
	.loc 1 2473 0
	leaq	-276(%rbp), %rcx	#, tmp607
	leaq	-192(%rbp), %rdx	#, tmp608
	leaq	-200(%rbp), %rsi	#, tmp609
	leaq	-208(%rbp), %rax	#, tmp610
	movq	%rax, %rdi	# tmp610,
	call	shorten_compare	#
	movq	%rax, -32(%rbp)	# tmp611, val
	.loc 1 2476 0
	cmpq	$0, -32(%rbp)	#, val
	je	.L565	#,
	.loc 1 2477 0
	movq	-32(%rbp), %rax	# val, D.21652
	jmp	.L445	#
.L565:
	.loc 1 2479 0
	movq	-208(%rbp), %rax	# xop0, tmp612
	movq	%rax, -184(%rbp)	# tmp612, op0
	movq	-200(%rbp), %rax	# xop1, tmp613
	movq	%rax, -176(%rbp)	# tmp613, op1
	.loc 1 2480 0
	movl	$1, -260(%rbp)	#, converted
	.loc 1 2481 0
	movl	-276(%rbp), %eax	# xresultcode, tmp614
	movl	%eax, -264(%rbp)	# tmp614, resultcode
	.loc 1 2483 0
	movl	warn_sign_compare(%rip), %eax	# warn_sign_compare, warn_sign_compare.109
	.loc 1 2484 0
	testl	%eax, %eax	# warn_sign_compare.109
	jns	.L566	#,
	.loc 1 2484 0 is_stmt 0 discriminator 1
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.110
	testl	%eax, %eax	# extra_warnings.110
	setne	%al	#, iftmp.108
	jmp	.L567	#
.L566:
	.loc 1 2484 0 discriminator 2
	movl	warn_sign_compare(%rip), %eax	# warn_sign_compare, warn_sign_compare.111
	testl	%eax, %eax	# warn_sign_compare.111
	setne	%al	#, iftmp.108
.L567:
	.loc 1 2483 0 is_stmt 1
	testb	%al, %al	# iftmp.108
	je	.L544	#,
	.loc 1 2484 0
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.112
	testl	%eax, %eax	# skip_evaluation.112
	jne	.L544	#,
.LBB33:
	.loc 1 2486 0
	movq	-304(%rbp), %rax	# orig_op0, tmp615
	movq	8(%rax), %rax	# orig_op0_97(D)->common.type, D.21654
	movzbl	17(%rax), %eax	# *_376, D.21653
	andl	$32, %eax	#, D.21653
	testb	%al, %al	# D.21653
	sete	%al	#, D.21658
	movzbl	%al, %eax	# D.21658, tmp616
	movl	%eax, -220(%rbp)	# tmp616, op0_signed
	.loc 1 2487 0
	movq	-312(%rbp), %rax	# orig_op1, tmp617
	movq	8(%rax), %rax	# orig_op1_99(D)->common.type, D.21654
	movzbl	17(%rax), %eax	# *_381, D.21653
	andl	$32, %eax	#, D.21653
	testb	%al, %al	# D.21653
	sete	%al	#, D.21658
	movzbl	%al, %eax	# D.21658, tmp618
	movl	%eax, -216(%rbp)	# tmp618, op1_signed
	.loc 1 2489 0
	leaq	-272(%rbp), %rdx	#, tmp619
	movq	-184(%rbp), %rax	# op0, tmp620
	movq	%rdx, %rsi	# tmp619,
	movq	%rax, %rdi	# tmp620,
	call	get_narrower	#
	movq	%rax, -144(%rbp)	# tmp621, primop0
	.loc 1 2490 0
	leaq	-268(%rbp), %rdx	#, tmp622
	movq	-176(%rbp), %rax	# op1, tmp623
	movq	%rdx, %rsi	# tmp622,
	movq	%rax, %rdi	# tmp623,
	call	get_narrower	#
	movq	%rax, -136(%rbp)	# tmp624, primop1
	.loc 1 2492 0
	movq	-304(%rbp), %rax	# orig_op0, tmp625
	movq	%rax, -208(%rbp)	# tmp625, xop0
	.loc 1 2493 0
	movq	-312(%rbp), %rax	# orig_op1, tmp626
	movq	%rax, -200(%rbp)	# tmp626, xop1
	.loc 1 2494 0
	jmp	.L569	#
.L572:
	.loc 1 2494 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# xop0, xop0.113
	movq	32(%rax), %rax	# xop0.113_402->exp.operands, xop0.114
	movq	%rax, -208(%rbp)	# xop0.114, xop0
.L569:
	movq	-208(%rbp), %rax	# xop0, xop0.115
	movzbl	16(%rax), %eax	# xop0.115_388->common.code, D.21653
	cmpb	$115, %al	#, D.21653
	je	.L570	#,
	.loc 1 2494 0 discriminator 3
	movq	-208(%rbp), %rax	# xop0, xop0.116
	movzbl	16(%rax), %eax	# xop0.116_390->common.code, D.21653
	cmpb	$114, %al	#, D.21653
	je	.L570	#,
	.loc 1 2494 0 discriminator 1
	movq	-208(%rbp), %rax	# xop0, xop0.117
	movzbl	16(%rax), %eax	# xop0.117_392->common.code, D.21653
	cmpb	$116, %al	#, D.21653
	jne	.L571	#,
.L570:
	.loc 1 2494 0 discriminator 2
	movq	-208(%rbp), %rax	# xop0, xop0.118
	movq	32(%rax), %rdx	# xop0.118_394->exp.operands, D.21654
	movq	global_trees(%rip), %rax	# global_trees, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L571	#,
	.loc 1 2494 0 discriminator 1
	movq	-208(%rbp), %rax	# xop0, xop0.119
	movq	8(%rax), %rdx	# xop0.119_397->common.type, D.21654
	movq	-208(%rbp), %rax	# xop0, xop0.120
	movq	32(%rax), %rax	# xop0.120_399->exp.operands, D.21654
	movq	8(%rax), %rax	# _400->common.type, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L572	#,
.L571:
	.loc 1 2495 0 is_stmt 1
	jmp	.L573	#
.L576:
	.loc 1 2495 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# xop1, xop1.121
	movq	32(%rax), %rax	# xop1.121_418->exp.operands, xop1.122
	movq	%rax, -200(%rbp)	# xop1.122, xop1
.L573:
	movq	-200(%rbp), %rax	# xop1, xop1.123
	movzbl	16(%rax), %eax	# xop1.123_404->common.code, D.21653
	cmpb	$115, %al	#, D.21653
	je	.L574	#,
	.loc 1 2495 0 discriminator 3
	movq	-200(%rbp), %rax	# xop1, xop1.124
	movzbl	16(%rax), %eax	# xop1.124_406->common.code, D.21653
	cmpb	$114, %al	#, D.21653
	je	.L574	#,
	.loc 1 2495 0 discriminator 1
	movq	-200(%rbp), %rax	# xop1, xop1.125
	movzbl	16(%rax), %eax	# xop1.125_408->common.code, D.21653
	cmpb	$116, %al	#, D.21653
	jne	.L575	#,
.L574:
	.loc 1 2495 0 discriminator 2
	movq	-200(%rbp), %rax	# xop1, xop1.126
	movq	32(%rax), %rdx	# xop1.126_410->exp.operands, D.21654
	movq	global_trees(%rip), %rax	# global_trees, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L575	#,
	.loc 1 2495 0 discriminator 1
	movq	-200(%rbp), %rax	# xop1, xop1.127
	movq	8(%rax), %rdx	# xop1.127_413->common.type, D.21654
	movq	-200(%rbp), %rax	# xop1, xop1.128
	movq	32(%rax), %rax	# xop1.128_415->exp.operands, D.21654
	movq	8(%rax), %rax	# _416->common.type, D.21654
	cmpq	%rax, %rdx	# D.21654, D.21654
	je	.L576	#,
.L575:
	.loc 1 2506 0 is_stmt 1
	movq	-168(%rbp), %rax	# result_type, tmp627
	movzbl	17(%rax), %eax	# *result_type_42, D.21653
	andl	$32, %eax	#, D.21653
	testb	%al, %al	# D.21653
	je	.L577	#,
	.loc 1 2509 0
	movl	-220(%rbp), %eax	# op0_signed, tmp628
	cmpl	-216(%rbp), %eax	# op1_signed, tmp628
	je	.L577	#,
.LBB34:
	.loc 1 2515 0
	cmpl	$0, -220(%rbp)	#, op0_signed
	je	.L578	#,
	.loc 1 2516 0
	movq	-208(%rbp), %rax	# xop0, tmp629
	movq	%rax, -128(%rbp)	# tmp629, sop
	movq	-200(%rbp), %rax	# xop1, tmp630
	movq	%rax, -120(%rbp)	# tmp630, uop
	jmp	.L579	#
.L578:
	.loc 1 2518 0
	movq	-200(%rbp), %rax	# xop1, tmp631
	movq	%rax, -128(%rbp)	# tmp631, sop
	movq	-208(%rbp), %rax	# xop0, tmp632
	movq	%rax, -120(%rbp)	# tmp632, uop
.L579:
	.loc 1 2525 0
	movq	-128(%rbp), %rax	# sop, tmp633
	movq	%rax, %rdi	# tmp633,
	call	tree_expr_nonnegative_p	#
	testl	%eax, %eax	# D.21655
	jne	.L577	#,
	.loc 1 2530 0
	movq	-120(%rbp), %rax	# uop, tmp634
	movzbl	16(%rax), %eax	# uop_77->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L580	#,
	.loc 1 2531 0
	cmpl	$101, -264(%rbp)	#, resultcode
	je	.L581	#,
	.loc 1 2531 0 is_stmt 0 discriminator 1
	cmpl	$102, -264(%rbp)	#, resultcode
	jne	.L580	#,
.L581:
	.loc 1 2532 0 is_stmt 1
	movq	-168(%rbp), %rax	# result_type, tmp635
	movq	%rax, %rdi	# tmp635,
	call	signed_type	#
	movq	%rax, %rdx	#, D.21654
	movq	-120(%rbp), %rax	# uop, tmp636
	movq	%rdx, %rsi	# D.21654,
	movq	%rax, %rdi	# tmp636,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21655
	je	.L580	#,
	.loc 1 2532 0 is_stmt 0 discriminator 1
	jmp	.L577	#
.L580:
	.loc 1 2537 0 is_stmt 1
	movq	-120(%rbp), %rax	# uop, tmp637
	movzbl	16(%rax), %eax	# uop_77->common.code, D.21653
	cmpb	$25, %al	#, D.21653
	jne	.L582	#,
	.loc 1 2538 0
	movq	-120(%rbp), %rax	# uop, tmp638
	movq	8(%rax), %rax	# uop_77->common.type, D.21654
	movzbl	16(%rax), %eax	# _431->common.code, D.21653
	cmpb	$10, %al	#, D.21653
	jne	.L582	#,
	.loc 1 2539 0
	movq	-168(%rbp), %rax	# result_type, tmp639
	movq	%rax, %rdi	# tmp639,
	call	signed_type	#
	movq	%rax, %rdx	#, D.21654
	movq	-120(%rbp), %rax	# uop, tmp640
	movq	8(%rax), %rax	# uop_77->common.type, D.21654
	movq	112(%rax), %rax	# _434->type.maxval, D.21654
	movq	%rdx, %rsi	# D.21654,
	movq	%rax, %rdi	# D.21654,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21655
	je	.L582	#,
	.loc 1 2539 0 is_stmt 0 discriminator 1
	jmp	.L577	#
.L582:
	.loc 1 2543 0 is_stmt 1
	movl	$.LC76, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L577:
.LBE34:
	.loc 1 2554 0
	movq	-144(%rbp), %rax	# primop0, tmp641
	movzbl	16(%rax), %eax	# primop0_386->common.code, D.21653
	.loc 1 2555 0
	cmpb	$90, %al	#, D.21653
	sete	%dl	#, D.21658
	movq	-136(%rbp), %rax	# primop1, tmp642
	movzbl	16(%rax), %eax	# primop1_387->common.code, D.21653
	cmpb	$90, %al	#, D.21653
	sete	%al	#, D.21658
	xorl	%edx, %eax	# D.21658, D.21658
	.loc 1 2554 0
	testb	%al, %al	# D.21658
	je	.L568	#,
	.loc 1 2557 0
	movq	-144(%rbp), %rax	# primop0, tmp643
	movzbl	16(%rax), %eax	# primop0_386->common.code, D.21653
	cmpb	$90, %al	#, D.21653
	jne	.L584	#,
	.loc 1 2558 0
	movq	-144(%rbp), %rax	# primop0, tmp644
	movq	32(%rax), %rax	# primop0_386->exp.operands, D.21654
	leaq	-272(%rbp), %rdx	#, tmp645
	movq	%rdx, %rsi	# tmp645,
	movq	%rax, %rdi	# D.21654,
	call	get_narrower	#
	movq	%rax, -144(%rbp)	# tmp646, primop0
	jmp	.L585	#
.L584:
	.loc 1 2561 0
	movq	-136(%rbp), %rax	# primop1, tmp647
	movq	32(%rax), %rax	# primop1_387->exp.operands, D.21654
	leaq	-268(%rbp), %rdx	#, tmp648
	movq	%rdx, %rsi	# tmp648,
	movq	%rax, %rdi	# D.21654,
	call	get_narrower	#
	movq	%rax, -136(%rbp)	# tmp649, primop1
.L585:
	.loc 1 2564 0
	movq	-144(%rbp), %rax	# primop0, tmp650
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp650,
	call	host_integerp	#
	testl	%eax, %eax	# D.21655
	jne	.L586	#,
	.loc 1 2564 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# primop1, tmp651
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp651,
	call	host_integerp	#
	testl	%eax, %eax	# D.21655
	je	.L587	#,
.L586:
.LBB35:
	.loc 1 2570 0 is_stmt 1
	movq	-144(%rbp), %rax	# primop0, tmp652
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp652,
	call	host_integerp	#
	testl	%eax, %eax	# D.21655
	je	.L588	#,
	.loc 1 2572 0
	movq	-136(%rbp), %rax	# primop1, tmp653
	movq	%rax, -112(%rbp)	# tmp653, primop
	.loc 1 2573 0
	movl	-268(%rbp), %eax	# unsignedp1, tmp654
	movl	%eax, -236(%rbp)	# tmp654, unsignedp
	.loc 1 2574 0
	movq	-144(%rbp), %rax	# primop0, tmp655
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp655,
	call	tree_low_cst	#
	movq	%rax, -104(%rbp)	# tmp656, constant
	jmp	.L589	#
.L588:
	.loc 1 2578 0
	movq	-144(%rbp), %rax	# primop0, tmp657
	movq	%rax, -112(%rbp)	# tmp657, primop
	.loc 1 2579 0
	movl	-272(%rbp), %eax	# unsignedp0, tmp658
	movl	%eax, -236(%rbp)	# tmp658, unsignedp
	.loc 1 2580 0
	movq	-136(%rbp), %rax	# primop1, tmp659
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp659,
	call	tree_low_cst	#
	movq	%rax, -104(%rbp)	# tmp660, constant
.L589:
	.loc 1 2583 0
	movq	-112(%rbp), %rax	# primop, tmp661
	movq	8(%rax), %rax	# primop_78->common.type, D.21654
	movzwl	60(%rax), %eax	# *_468, tmp664
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %eax	# D.21656, tmp665
	movl	%eax, -212(%rbp)	# tmp665, bits
	.loc 1 2584 0
	movq	-168(%rbp), %rax	# result_type, tmp666
	movzwl	60(%rax), %eax	# *result_type_42, tmp669
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %eax	# D.21656, D.21655
	cmpl	-212(%rbp), %eax	# bits, D.21655
	jle	.L590	#,
	.loc 1 2585 0
	cmpl	$63, -212(%rbp)	#, bits
	jg	.L590	#,
	.loc 1 2585 0 is_stmt 0 discriminator 1
	cmpl	$0, -236(%rbp)	#, unsignedp
	je	.L590	#,
	.loc 1 2587 0 is_stmt 1
	movl	-212(%rbp), %eax	# bits, tmp670
	movq	$-1, %rdx	#, tmp671
	movl	%eax, %ecx	# tmp670, tmp731
	salq	%cl, %rdx	# tmp731, tmp672
	movq	%rdx, %rax	# tmp672, tmp672
	movq	%rax, -24(%rbp)	# tmp672, mask
	.loc 1 2588 0
	movq	-104(%rbp), %rax	# constant, tmp673
	movq	-24(%rbp), %rdx	# mask, tmp674
	andq	%rdx, %rax	# tmp674, D.21660
	cmpq	-24(%rbp), %rax	# mask, D.21660
	je	.L590	#,
	.loc 1 2589 0
	movl	$.LC77, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.LBE35:
	.loc 1 2565 0
	jmp	.L568	#
.L590:
	jmp	.L568	#
.L587:
	.loc 1 2592 0
	movl	-272(%rbp), %eax	# unsignedp0, unsignedp0.129
	testl	%eax, %eax	# unsignedp0.129
	je	.L568	#,
	.loc 1 2592 0 is_stmt 0 discriminator 1
	movl	-268(%rbp), %eax	# unsignedp1, unsignedp1.130
	testl	%eax, %eax	# unsignedp1.130
	je	.L568	#,
	.loc 1 2593 0 is_stmt 1
	movq	-144(%rbp), %rax	# primop0, tmp675
	movq	8(%rax), %rax	# primop0_74->common.type, D.21654
	movzwl	60(%rax), %eax	# *_451, tmp678
	andw	$511, %ax	#, D.21656
	.loc 1 2594 0
	movzwl	%ax, %edx	# D.21656, D.21655
	movq	-168(%rbp), %rax	# result_type, tmp679
	movzwl	60(%rax), %eax	# *result_type_42, tmp682
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %eax	# D.21656, D.21655
	.loc 1 2593 0
	cmpl	%eax, %edx	# D.21655, D.21655
	jge	.L568	#,
	.loc 1 2595 0
	movq	-136(%rbp), %rax	# primop1, tmp683
	movq	8(%rax), %rax	# primop1_75->common.type, D.21654
	movzwl	60(%rax), %eax	# *_456, tmp686
	andw	$511, %ax	#, D.21656
	.loc 1 2596 0
	movzwl	%ax, %edx	# D.21656, D.21655
	movq	-168(%rbp), %rax	# result_type, tmp687
	movzwl	60(%rax), %eax	# *result_type_42, tmp690
	andw	$511, %ax	#, D.21656
	movzwl	%ax, %eax	# D.21656, D.21655
	.loc 1 2595 0
	cmpl	%eax, %edx	# D.21655, D.21655
	jge	.L568	#,
	.loc 1 2597 0
	movl	$.LC78, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.LBE33:
	jmp	.L544	#
.L568:
.L544:
.LBE32:
.LBE29:
	.loc 1 2609 0
	cmpq	$0, -168(%rbp)	#, result_type
	jne	.L591	#,
	.loc 1 2611 0
	movl	-292(%rbp), %eax	# code, tmp691
	movl	%eax, %edi	# tmp691,
	call	binary_op_error	#
	.loc 1 2612 0
	movq	global_trees(%rip), %rax	# global_trees, D.21652
	jmp	.L445	#
.L591:
	.loc 1 2615 0
	cmpl	$0, -260(%rbp)	#, converted
	jne	.L592	#,
	.loc 1 2617 0
	movq	-184(%rbp), %rax	# op0, tmp692
	movq	8(%rax), %rax	# op0_8->common.type, D.21654
	cmpq	-168(%rbp), %rax	# result_type, D.21654
	je	.L593	#,
	.loc 1 2618 0
	movq	-184(%rbp), %rdx	# op0, tmp693
	movq	-168(%rbp), %rax	# result_type, tmp694
	movq	%rdx, %rsi	# tmp693,
	movq	%rax, %rdi	# tmp694,
	call	convert	#
	movq	%rax, -184(%rbp)	# tmp695, op0
.L593:
	.loc 1 2619 0
	movq	-176(%rbp), %rax	# op1, tmp696
	movq	8(%rax), %rax	# op1_21->common.type, D.21654
	cmpq	-168(%rbp), %rax	# result_type, D.21654
	je	.L592	#,
	.loc 1 2620 0
	movq	-176(%rbp), %rdx	# op1, tmp697
	movq	-168(%rbp), %rax	# result_type, tmp698
	movq	%rdx, %rsi	# tmp697,
	movq	%rax, %rdi	# tmp698,
	call	convert	#
	movq	%rax, -176(%rbp)	# tmp699, op1
.L592:
	.loc 1 2623 0
	cmpq	$0, -160(%rbp)	#, build_type
	jne	.L594	#,
	.loc 1 2624 0
	movq	-168(%rbp), %rax	# result_type, tmp700
	movq	%rax, -160(%rbp)	# tmp700, build_type
.L594:
.LBB36:
	.loc 1 2627 0
	movq	-176(%rbp), %rcx	# op1, tmp701
	movq	-184(%rbp), %rdx	# op0, tmp702
	movq	-160(%rbp), %rsi	# build_type, tmp703
	movl	-264(%rbp), %eax	# resultcode, tmp704
	movl	%eax, %edi	# tmp704,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp705, result
	.loc 1 2630 0
	movq	-16(%rbp), %rax	# result, tmp706
	movq	%rax, %rdi	# tmp706,
	call	fold	#
	movq	%rax, -8(%rbp)	# tmp707, folded
	.loc 1 2631 0
	movq	-8(%rbp), %rax	# folded, tmp708
	cmpq	-16(%rbp), %rax	# result, tmp708
	jne	.L595	#,
	.loc 1 2632 0
	movq	-184(%rbp), %rax	# op0, tmp709
	movzbl	17(%rax), %eax	# *op0_10, tmp712
	shrb	%al	# D.21659
	andl	$1, %eax	#, D.21659
	movl	%eax, %edx	# D.21659, D.21653
	movq	-176(%rbp), %rax	# op1, tmp713
	movzbl	17(%rax), %eax	# *op1_22, tmp716
	shrb	%al	# D.21659
	andl	$1, %eax	#, D.21659
	andl	%edx, %eax	# D.21653, D.21653
	andl	$1, %eax	#, D.21659
	movl	%eax, %edx	# D.21659, D.21659
	movq	-8(%rbp), %rax	# folded, tmp717
	andl	$1, %edx	#, tmp719
	leal	(%rdx,%rdx), %ecx	#, tmp720
	movzbl	17(%rax), %edx	#, tmp721
	andl	$-3, %edx	#, tmp722
	orl	%ecx, %edx	# tmp720, tmp723
	movb	%dl, 17(%rax)	# tmp723,
.L595:
	.loc 1 2633 0
	cmpq	$0, -152(%rbp)	#, final_type
	je	.L596	#,
	.loc 1 2634 0
	movq	-8(%rbp), %rdx	# folded, tmp724
	movq	-152(%rbp), %rax	# final_type, tmp725
	movq	%rdx, %rsi	# tmp724,
	movq	%rax, %rdi	# tmp725,
	call	convert	#
	jmp	.L445	#
.L596:
	.loc 1 2635 0
	movq	-8(%rbp), %rax	# folded, D.21652
.L445:
.LBE36:
	.loc 1 2637 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	build_binary_op, .-build_binary_op
	.section	.rodata
	.align 8
.LC79:
	.string	"pointer of type `void *' used in subtraction"
	.align 8
.LC80:
	.string	"pointer to a function used in subtraction"
	.text
	.type	pointer_diff, @function
pointer_diff:
.LFB26:
	.loc 1 2645 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# op0, op0
	movq	%rsi, -112(%rbp)	# op1, op1
	.loc 1 2647 0
	movq	global_trees+240(%rip), %rax	# global_trees, tmp88
	movq	%rax, -56(%rbp)	# tmp88, restype
	.loc 1 2649 0
	movq	-104(%rbp), %rax	# op0, tmp89
	movq	8(%rax), %rax	# op0_10(D)->common.type, D.21680
	movq	8(%rax), %rax	# _11->common.type, tmp90
	movq	%rax, -48(%rbp)	# tmp90, target_type
	.loc 1 2651 0
	movq	-112(%rbp), %rax	# op1, tmp91
	movq	%rax, -40(%rbp)	# tmp91, orig_op1
	.loc 1 2653 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.131
	testl	%eax, %eax	# pedantic.131
	jne	.L599	#,
	.loc 1 2653 0 is_stmt 0 discriminator 1
	movl	warn_pointer_arith(%rip), %eax	# warn_pointer_arith, warn_pointer_arith.132
	testl	%eax, %eax	# warn_pointer_arith.132
	je	.L600	#,
.L599:
	.loc 1 2655 0 is_stmt 1
	movq	-48(%rbp), %rax	# target_type, tmp92
	movzbl	16(%rax), %eax	# target_type_12->common.code, D.21681
	cmpb	$5, %al	#, D.21681
	jne	.L601	#,
	.loc 1 2656 0
	movl	$.LC79, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L601:
	.loc 1 2657 0
	movq	-48(%rbp), %rax	# target_type, tmp93
	movzbl	16(%rax), %eax	# target_type_12->common.code, D.21681
	cmpb	$23, %al	#, D.21681
	jne	.L600	#,
	.loc 1 2658 0
	movl	$.LC80, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L600:
	.loc 1 2669 0
	movq	-104(%rbp), %rax	# op0, tmp94
	movzbl	16(%rax), %eax	# op0_10(D)->common.code, D.21681
	cmpb	$115, %al	#, D.21681
	jne	.L602	#,
	.loc 1 2669 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# op0, tmp95
	movq	32(%rax), %rax	# op0_10(D)->exp.operands, iftmp.133
	jmp	.L603	#
.L602:
	.loc 1 2669 0 discriminator 2
	movq	-104(%rbp), %rax	# op0, iftmp.133
.L603:
	.loc 1 2669 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.133, con0
	.loc 1 2670 0 is_stmt 1 discriminator 3
	movq	-112(%rbp), %rax	# op1, tmp96
	movzbl	16(%rax), %eax	# op1_13(D)->common.code, D.21681
	cmpb	$115, %al	#, D.21681
	jne	.L604	#,
	.loc 1 2670 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# op1, tmp97
	movq	32(%rax), %rax	# op1_13(D)->exp.operands, iftmp.134
	jmp	.L605	#
.L604:
	.loc 1 2670 0 discriminator 2
	movq	-112(%rbp), %rax	# op1, iftmp.134
.L605:
	.loc 1 2670 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.134, con1
	.loc 1 2672 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# con0, tmp98
	movzbl	16(%rax), %eax	# con0_22->common.code, D.21681
	cmpb	$59, %al	#, D.21681
	jne	.L606	#,
	.loc 1 2674 0
	movq	-88(%rbp), %rax	# con0, tmp99
	movq	40(%rax), %rax	# con0_22->exp.operands, tmp100
	movq	%rax, -72(%rbp)	# tmp100, lit0
	.loc 1 2675 0
	movq	-88(%rbp), %rax	# con0, tmp101
	movq	32(%rax), %rax	# con0_22->exp.operands, tmp102
	movq	%rax, -88(%rbp)	# tmp102, con0
	jmp	.L607	#
.L606:
	.loc 1 2678 0
	movq	global_trees+88(%rip), %rax	# global_trees, tmp103
	movq	%rax, -72(%rbp)	# tmp103, lit0
.L607:
	.loc 1 2680 0
	movq	-80(%rbp), %rax	# con1, tmp104
	movzbl	16(%rax), %eax	# con1_26->common.code, D.21681
	cmpb	$59, %al	#, D.21681
	jne	.L608	#,
	.loc 1 2682 0
	movq	-80(%rbp), %rax	# con1, tmp105
	movq	40(%rax), %rax	# con1_26->exp.operands, tmp106
	movq	%rax, -64(%rbp)	# tmp106, lit1
	.loc 1 2683 0
	movq	-80(%rbp), %rax	# con1, tmp107
	movq	32(%rax), %rax	# con1_26->exp.operands, tmp108
	movq	%rax, -80(%rbp)	# tmp108, con1
	jmp	.L609	#
.L608:
	.loc 1 2686 0
	movq	global_trees+88(%rip), %rax	# global_trees, tmp109
	movq	%rax, -64(%rbp)	# tmp109, lit1
.L609:
	.loc 1 2688 0
	movq	-80(%rbp), %rcx	# con1, tmp110
	movq	-88(%rbp), %rax	# con0, tmp111
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21682
	je	.L610	#,
	.loc 1 2690 0
	movq	-72(%rbp), %rax	# lit0, tmp112
	movq	%rax, -104(%rbp)	# tmp112, op0
	.loc 1 2691 0
	movq	-64(%rbp), %rax	# lit1, tmp113
	movq	%rax, -112(%rbp)	# tmp113, op1
.L610:
	.loc 1 2700 0
	movq	-112(%rbp), %rdx	# op1, tmp114
	movq	-56(%rbp), %rax	# restype, tmp115
	movq	%rdx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	convert	#
	movq	%rax, %rbx	#, D.21680
	movq	-104(%rbp), %rdx	# op0, tmp116
	movq	-56(%rbp), %rax	# restype, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	convert	#
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.21680,
	movq	%rax, %rsi	# D.21680,
	movl	$60, %edi	#,
	call	build_binary_op	#
	movq	%rax, -104(%rbp)	# tmp118, op0
	.loc 1 2703 0
	movq	-40(%rbp), %rax	# orig_op1, tmp119
	movq	8(%rax), %rax	# orig_op1_14->common.type, D.21680
	movq	8(%rax), %rax	# _41->common.type, D.21680
	movq	32(%rax), %rax	# _42->type.size, D.21680
	testq	%rax, %rax	# D.21680
	jne	.L611	#,
	.loc 1 2703 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# orig_op1, tmp120
	movq	8(%rax), %rax	# orig_op1_14->common.type, D.21680
	movq	8(%rax), %rax	# _44->common.type, D.21680
	movzbl	16(%rax), %eax	# _45->common.code, D.21681
	cmpb	$5, %al	#, D.21681
	je	.L611	#,
	.loc 1 2704 0 is_stmt 1
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L611:
	.loc 1 2707 0
	movq	-48(%rbp), %rax	# target_type, tmp121
	movq	%rax, %rdi	# tmp121,
	call	c_size_in_bytes	#
	movq	%rax, -112(%rbp)	# tmp122, op1
	.loc 1 2711 0
	movq	-112(%rbp), %rdx	# op1, tmp123
	movq	-56(%rbp), %rax	# restype, tmp124
	movq	%rdx, %rsi	# tmp123,
	movq	%rax, %rdi	# tmp124,
	call	convert	#
	movq	%rax, %rcx	#, D.21680
	movq	-104(%rbp), %rdx	# op0, tmp125
	movq	-56(%rbp), %rax	# restype, tmp126
	movq	%rax, %rsi	# tmp126,
	movl	$71, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -32(%rbp)	# tmp127, result
	.loc 1 2713 0
	movq	-32(%rbp), %rax	# result, tmp128
	movq	%rax, %rdi	# tmp128,
	call	fold	#
	movq	%rax, -24(%rbp)	# tmp129, folded
	.loc 1 2714 0
	movq	-24(%rbp), %rax	# folded, tmp130
	cmpq	-32(%rbp), %rax	# result, tmp130
	jne	.L612	#,
	.loc 1 2715 0
	movq	-104(%rbp), %rax	# op0, tmp131
	movzbl	17(%rax), %eax	# *op0_40, tmp134
	shrb	%al	# D.21683
	andl	$1, %eax	#, D.21683
	movl	%eax, %edx	# D.21683, D.21681
	movq	-112(%rbp), %rax	# op1, tmp135
	movzbl	17(%rax), %eax	# *op1_47, tmp138
	shrb	%al	# D.21683
	andl	$1, %eax	#, D.21683
	andl	%edx, %eax	# D.21681, D.21681
	andl	$1, %eax	#, D.21683
	movl	%eax, %edx	# D.21683, D.21683
	movq	-24(%rbp), %rax	# folded, tmp139
	andl	$1, %edx	#, tmp141
	leal	(%rdx,%rdx), %ecx	#, tmp142
	movzbl	17(%rax), %edx	#, tmp143
	andl	$-3, %edx	#, tmp144
	orl	%ecx, %edx	# tmp142, tmp145
	movb	%dl, 17(%rax)	# tmp145,
.L612:
	.loc 1 2716 0
	movq	-24(%rbp), %rax	# folded, D.21684
	.loc 1 2717 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	pointer_diff, .-pointer_diff
	.section	.rodata
	.align 8
.LC81:
	.string	"wrong type argument to unary plus"
	.align 8
.LC82:
	.string	"wrong type argument to unary minus"
	.align 8
.LC83:
	.string	"ISO C does not support `~' for complex conjugation"
	.align 8
.LC84:
	.string	"wrong type argument to bit-complement"
.LC85:
	.string	"wrong type argument to abs"
	.align 8
.LC86:
	.string	"wrong type argument to conjugation"
	.align 8
.LC87:
	.string	"wrong type argument to unary exclamation mark"
	.align 8
.LC88:
	.string	"ISO C does not support `++' and `--' on complex types"
	.align 8
.LC89:
	.string	"wrong type argument to increment"
	.align 8
.LC90:
	.string	"wrong type argument to decrement"
	.align 8
.LC91:
	.string	"increment of pointer to unknown structure"
	.align 8
.LC92:
	.string	"decrement of pointer to unknown structure"
.LC93:
	.string	"invalid lvalue in increment"
.LC94:
	.string	"invalid lvalue in decrement"
.LC95:
	.string	"increment"
.LC96:
	.string	"decrement"
.LC97:
	.string	"invalid lvalue in unary `&'"
	.align 8
.LC98:
	.string	"attempt to take address of bit-field structure member `%s'"
	.text
	.globl	build_unary_op
	.type	build_unary_op, @function
build_unary_op:
.LFB27:
	.loc 1 2733 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -132(%rbp)	# code, code
	movq	%rsi, -144(%rbp)	# xarg, xarg
	movl	%edx, -136(%rbp)	# flag, flag
	.loc 1 2735 0
	movq	-144(%rbp), %rax	# xarg, tmp161
	movq	%rax, -112(%rbp)	# tmp161, arg
	.loc 1 2736 0
	movq	$0, -104(%rbp)	#, argtype
	.loc 1 2737 0
	movq	-112(%rbp), %rax	# arg, tmp162
	movq	8(%rax), %rax	# arg_25->common.type, D.21688
	movzbl	16(%rax), %eax	# _27->common.code, D.21689
	movzbl	%al, %eax	# D.21689, tmp163
	movl	%eax, -120(%rbp)	# tmp163, typecode
	.loc 1 2739 0
	movl	-136(%rbp), %eax	# flag, tmp164
	movl	%eax, -116(%rbp)	# tmp164, noconvert
	.loc 1 2741 0
	cmpl	$0, -120(%rbp)	#, typecode
	jne	.L615	#,
	.loc 1 2742 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L615:
	.loc 1 2743 0
	cmpl	$10, -120(%rbp)	#, typecode
	je	.L617	#,
	.loc 1 2743 0 is_stmt 0 discriminator 1
	cmpl	$11, -120(%rbp)	#, typecode
	jne	.L618	#,
.L617:
	.loc 1 2744 0 is_stmt 1
	movl	$6, -120(%rbp)	#, typecode
.L618:
	.loc 1 2746 0
	movl	-132(%rbp), %eax	# code, tmp166
	subl	$77, %eax	#, tmp165
	cmpl	$55, %eax	#, tmp165
	ja	.L712	#,
	movl	%eax, %eax	# tmp165, tmp167
	movq	.L621(,%rax,8), %rax	#, tmp168
	jmp	*%rax	# tmp168
	.section	.rodata
	.align 8
	.align 4
.L621:
	.quad	.L620
	.quad	.L712
	.quad	.L712
	.quad	.L622
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L623
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L624
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L625
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L627
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L712
	.quad	.L628
	.quad	.L629
	.quad	.L630
	.quad	.L631
	.quad	.L631
	.quad	.L631
	.quad	.L631
	.text
.L625:
	.loc 1 2752 0
	cmpl	$6, -120(%rbp)	#, typecode
	je	.L632	#,
	.loc 1 2752 0 is_stmt 0 discriminator 1
	cmpl	$7, -120(%rbp)	#, typecode
	je	.L632	#,
	cmpl	$8, -120(%rbp)	#, typecode
	je	.L632	#,
	.loc 1 2755 0 is_stmt 1
	movl	$.LC81, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2756 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L632:
	.loc 1 2758 0
	cmpl	$0, -116(%rbp)	#, noconvert
	jne	.L633	#,
	.loc 1 2759 0
	movq	-112(%rbp), %rax	# arg, tmp169
	movq	%rax, %rdi	# tmp169,
	call	default_conversion	#
	movq	%rax, -112(%rbp)	# tmp170, arg
	.loc 1 2760 0
	jmp	.L634	#
.L633:
	jmp	.L634	#
.L620:
	.loc 1 2763 0
	cmpl	$6, -120(%rbp)	#, typecode
	je	.L635	#,
	.loc 1 2763 0 is_stmt 0 discriminator 1
	cmpl	$7, -120(%rbp)	#, typecode
	je	.L635	#,
	cmpl	$8, -120(%rbp)	#, typecode
	je	.L635	#,
	.loc 1 2766 0 is_stmt 1
	movl	$.LC82, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2767 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L635:
	.loc 1 2769 0
	cmpl	$0, -116(%rbp)	#, noconvert
	jne	.L636	#,
	.loc 1 2770 0
	movq	-112(%rbp), %rax	# arg, tmp171
	movq	%rax, %rdi	# tmp171,
	call	default_conversion	#
	movq	%rax, -112(%rbp)	# tmp172, arg
	.loc 1 2771 0
	jmp	.L634	#
.L636:
	jmp	.L634	#
.L623:
	.loc 1 2774 0
	cmpl	$8, -120(%rbp)	#, typecode
	jne	.L637	#,
	.loc 1 2776 0
	movl	$126, -132(%rbp)	#, code
	.loc 1 2777 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.135
	testl	%eax, %eax	# pedantic.135
	je	.L638	#,
	.loc 1 2778 0
	movl	$.LC83, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L638:
	.loc 1 2779 0
	cmpl	$0, -116(%rbp)	#, noconvert
	jne	.L640	#,
	.loc 1 2780 0
	movq	-112(%rbp), %rax	# arg, tmp173
	movq	%rax, %rdi	# tmp173,
	call	default_conversion	#
	movq	%rax, -112(%rbp)	# tmp174, arg
	.loc 1 2789 0
	jmp	.L634	#
.L637:
	.loc 1 2782 0
	cmpl	$6, -120(%rbp)	#, typecode
	je	.L641	#,
	.loc 1 2784 0
	movl	$.LC84, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2785 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L641:
	.loc 1 2787 0
	cmpl	$0, -116(%rbp)	#, noconvert
	jne	.L640	#,
	.loc 1 2788 0
	movq	-112(%rbp), %rax	# arg, tmp175
	movq	%rax, %rdi	# tmp175,
	call	default_conversion	#
	movq	%rax, -112(%rbp)	# tmp176, arg
	.loc 1 2789 0
	jmp	.L634	#
.L640:
	jmp	.L634	#
.L622:
	.loc 1 2792 0
	cmpl	$6, -120(%rbp)	#, typecode
	je	.L642	#,
	.loc 1 2792 0 is_stmt 0 discriminator 1
	cmpl	$7, -120(%rbp)	#, typecode
	je	.L642	#,
	cmpl	$8, -120(%rbp)	#, typecode
	je	.L642	#,
	.loc 1 2795 0 is_stmt 1
	movl	$.LC85, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2796 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L642:
	.loc 1 2798 0
	cmpl	$0, -116(%rbp)	#, noconvert
	jne	.L643	#,
	.loc 1 2799 0
	movq	-112(%rbp), %rax	# arg, tmp177
	movq	%rax, %rdi	# tmp177,
	call	default_conversion	#
	movq	%rax, -112(%rbp)	# tmp178, arg
	.loc 1 2800 0
	jmp	.L634	#
.L643:
	jmp	.L634	#
.L628:
	.loc 1 2804 0
	cmpl	$6, -120(%rbp)	#, typecode
	je	.L644	#,
	.loc 1 2804 0 is_stmt 0 discriminator 1
	cmpl	$7, -120(%rbp)	#, typecode
	je	.L644	#,
	cmpl	$8, -120(%rbp)	#, typecode
	je	.L644	#,
	.loc 1 2807 0 is_stmt 1
	movl	$.LC86, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2808 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L644:
	.loc 1 2810 0
	cmpl	$0, -116(%rbp)	#, noconvert
	jne	.L645	#,
	.loc 1 2811 0
	movq	-112(%rbp), %rax	# arg, tmp179
	movq	%rax, %rdi	# tmp179,
	call	default_conversion	#
	movq	%rax, -112(%rbp)	# tmp180, arg
	.loc 1 2812 0
	jmp	.L634	#
.L645:
	jmp	.L634	#
.L624:
	.loc 1 2815 0
	cmpl	$6, -120(%rbp)	#, typecode
	je	.L646	#,
	.loc 1 2816 0
	cmpl	$7, -120(%rbp)	#, typecode
	je	.L646	#,
	.loc 1 2816 0 is_stmt 0 discriminator 1
	cmpl	$13, -120(%rbp)	#, typecode
	je	.L646	#,
	.loc 1 2817 0 is_stmt 1
	cmpl	$8, -120(%rbp)	#, typecode
	je	.L646	#,
	.loc 1 2819 0
	cmpl	$18, -120(%rbp)	#, typecode
	je	.L646	#,
	.loc 1 2819 0 is_stmt 0 discriminator 1
	cmpl	$23, -120(%rbp)	#, typecode
	je	.L646	#,
	.loc 1 2821 0 is_stmt 1
	movl	$.LC87, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2822 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L646:
	.loc 1 2824 0
	movq	-112(%rbp), %rax	# arg, tmp181
	movq	%rax, %rdi	# tmp181,
	call	truthvalue_conversion	#
	movq	%rax, -112(%rbp)	# tmp182, arg
	.loc 1 2825 0
	movq	-112(%rbp), %rax	# arg, tmp183
	movq	%rax, %rdi	# tmp183,
	call	invert_truthvalue	#
	jmp	.L616	#
.L629:
	.loc 1 2831 0
	movq	-112(%rbp), %rax	# arg, tmp184
	movzbl	16(%rax), %eax	# arg_25->common.code, D.21689
	cmpb	$27, %al	#, D.21689
	jne	.L647	#,
	.loc 1 2832 0
	movq	-112(%rbp), %rax	# arg, tmp185
	movq	32(%rax), %rax	# arg_25->complex.real, D.21687
	jmp	.L616	#
.L647:
	.loc 1 2833 0
	movq	-112(%rbp), %rax	# arg, tmp186
	movq	8(%rax), %rax	# arg_25->common.type, D.21688
	movzbl	16(%rax), %eax	# _53->common.code, D.21689
	cmpb	$8, %al	#, D.21689
	jne	.L648	#,
	.loc 1 2834 0
	movq	-112(%rbp), %rax	# arg, tmp187
	movq	8(%rax), %rax	# arg_25->common.type, D.21688
	movq	8(%rax), %rax	# _55->common.type, D.21688
	movq	-112(%rbp), %rdx	# arg, tmp188
	movq	%rax, %rsi	# D.21688,
	movl	$127, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21688,
	call	fold	#
	jmp	.L616	#
.L648:
	.loc 1 2836 0
	movq	-112(%rbp), %rax	# arg, D.21687
	jmp	.L616	#
.L630:
	.loc 1 2839 0
	movq	-112(%rbp), %rax	# arg, tmp189
	movzbl	16(%rax), %eax	# arg_25->common.code, D.21689
	cmpb	$27, %al	#, D.21689
	jne	.L649	#,
	.loc 1 2840 0
	movq	-112(%rbp), %rax	# arg, tmp190
	movq	40(%rax), %rax	# arg_25->complex.imag, D.21687
	jmp	.L616	#
.L649:
	.loc 1 2841 0
	movq	-112(%rbp), %rax	# arg, tmp191
	movq	8(%rax), %rax	# arg_25->common.type, D.21688
	movzbl	16(%rax), %eax	# _62->common.code, D.21689
	cmpb	$8, %al	#, D.21689
	jne	.L650	#,
	.loc 1 2842 0
	movq	-112(%rbp), %rax	# arg, tmp192
	movq	8(%rax), %rax	# arg_25->common.type, D.21688
	movq	8(%rax), %rax	# _64->common.type, D.21688
	movq	-112(%rbp), %rdx	# arg, tmp193
	movq	%rax, %rsi	# D.21688,
	movl	$128, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21688,
	call	fold	#
	jmp	.L616	#
.L650:
	.loc 1 2844 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21688
	movq	-112(%rbp), %rax	# arg, tmp194
	movq	8(%rax), %rax	# arg_25->common.type, D.21688
	movq	%rdx, %rsi	# D.21688,
	movq	%rax, %rdi	# D.21688,
	call	convert	#
	jmp	.L616	#
.L631:
	.loc 1 2853 0
	movq	-112(%rbp), %rcx	# arg, tmp195
	movl	-132(%rbp), %eax	# code, tmp196
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp195,
	movl	%eax, %edi	# tmp196,
	call	unary_complex_lvalue	#
	movq	%rax, -96(%rbp)	# tmp197, val
	.loc 1 2854 0
	cmpq	$0, -96(%rbp)	#, val
	je	.L651	#,
	.loc 1 2855 0
	movq	-96(%rbp), %rax	# val, D.21687
	jmp	.L616	#
.L651:
	.loc 1 2859 0
	cmpl	$8, -120(%rbp)	#, typecode
	jne	.L652	#,
.LBB37:
	.loc 1 2863 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.136
	testl	%eax, %eax	# pedantic.136
	je	.L653	#,
	.loc 1 2864 0
	movl	$.LC88, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L653:
	.loc 1 2866 0
	movq	-112(%rbp), %rax	# arg, tmp198
	movq	%rax, %rdi	# tmp198,
	call	stabilize_reference	#
	movq	%rax, -112(%rbp)	# tmp199, arg
	.loc 1 2867 0
	movq	-112(%rbp), %rax	# arg, tmp200
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp200,
	movl	$127, %edi	#,
	call	build_unary_op	#
	movq	%rax, -64(%rbp)	# tmp201, real
	.loc 1 2868 0
	movq	-112(%rbp), %rax	# arg, tmp202
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp202,
	movl	$128, %edi	#,
	call	build_unary_op	#
	movq	%rax, -56(%rbp)	# tmp203, imag
	.loc 1 2869 0
	movq	-64(%rbp), %rcx	# real, tmp204
	movl	-132(%rbp), %eax	# code, tmp205
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp204,
	movl	%eax, %edi	# tmp205,
	call	build_unary_op	#
	movq	%rax, %rdx	#, D.21688
	movq	-112(%rbp), %rax	# arg, tmp206
	movq	8(%rax), %rax	# arg_74->common.type, D.21688
	movq	-56(%rbp), %rcx	# imag, tmp207
	movq	%rax, %rsi	# D.21688,
	movl	$125, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L616	#
.L652:
.LBE37:
	.loc 1 2875 0
	cmpl	$13, -120(%rbp)	#, typecode
	je	.L654	#,
	.loc 1 2876 0
	cmpl	$6, -120(%rbp)	#, typecode
	je	.L654	#,
	.loc 1 2876 0 is_stmt 0 discriminator 1
	cmpl	$7, -120(%rbp)	#, typecode
	je	.L654	#,
	.loc 1 2878 0 is_stmt 1
	cmpl	$130, -132(%rbp)	#, code
	je	.L655	#,
	.loc 1 2878 0 is_stmt 0 discriminator 1
	cmpl	$132, -132(%rbp)	#, code
	jne	.L656	#,
.L655:
	.loc 1 2879 0 is_stmt 1
	movl	$.LC89, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L657	#
.L656:
	.loc 1 2881 0
	movl	$.LC90, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L657:
	.loc 1 2883 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L654:
.LBB38:
	.loc 1 2888 0
	movq	-112(%rbp), %rax	# arg, tmp208
	movq	8(%rax), %rax	# arg_25->common.type, tmp209
	movq	%rax, -48(%rbp)	# tmp209, result_type
	.loc 1 2890 0
	movq	-112(%rbp), %rax	# arg, tmp210
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp210,
	call	get_unwidened	#
	movq	%rax, -112(%rbp)	# tmp211, arg
	.loc 1 2891 0
	movq	-112(%rbp), %rax	# arg, tmp212
	movq	8(%rax), %rax	# arg_82->common.type, tmp213
	movq	%rax, -104(%rbp)	# tmp213, argtype
	.loc 1 2895 0
	cmpl	$13, -120(%rbp)	#, typecode
	jne	.L658	#,
	.loc 1 2899 0
	movq	-48(%rbp), %rax	# result_type, tmp214
	movq	8(%rax), %rax	# result_type_81->common.type, D.21688
	movq	32(%rax), %rax	# _84->type.size, D.21688
	testq	%rax, %rax	# D.21688
	jne	.L659	#,
	.loc 1 2899 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# result_type, tmp215
	movq	8(%rax), %rax	# result_type_81->common.type, D.21688
	movzbl	16(%rax), %eax	# _86->common.code, D.21689
	cmpb	$5, %al	#, D.21689
	je	.L659	#,
	.loc 1 2901 0 is_stmt 1
	cmpl	$130, -132(%rbp)	#, code
	je	.L660	#,
	.loc 1 2901 0 is_stmt 0 discriminator 1
	cmpl	$132, -132(%rbp)	#, code
	jne	.L661	#,
.L660:
	.loc 1 2902 0 is_stmt 1
	movl	$.LC91, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2901 0
	jmp	.L663	#
.L661:
	.loc 1 2904 0
	movl	$.LC92, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2901 0
	jmp	.L663	#
.L659:
	.loc 1 2906 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.137
	testl	%eax, %eax	# pedantic.137
	jne	.L664	#,
	.loc 1 2906 0 is_stmt 0 discriminator 1
	movl	warn_pointer_arith(%rip), %eax	# warn_pointer_arith, warn_pointer_arith.138
	testl	%eax, %eax	# warn_pointer_arith.138
	je	.L663	#,
.L664:
	.loc 1 2907 0 is_stmt 1
	movq	-48(%rbp), %rax	# result_type, tmp216
	movq	8(%rax), %rax	# result_type_81->common.type, D.21688
	movzbl	16(%rax), %eax	# _90->common.code, D.21689
	cmpb	$23, %al	#, D.21689
	je	.L665	#,
	.loc 1 2908 0
	movq	-48(%rbp), %rax	# result_type, tmp217
	movq	8(%rax), %rax	# result_type_81->common.type, D.21688
	movzbl	16(%rax), %eax	# _92->common.code, D.21689
	cmpb	$5, %al	#, D.21689
	jne	.L663	#,
.L665:
	.loc 1 2910 0
	cmpl	$130, -132(%rbp)	#, code
	je	.L666	#,
	.loc 1 2910 0 is_stmt 0 discriminator 1
	cmpl	$132, -132(%rbp)	#, code
	jne	.L667	#,
.L666:
	.loc 1 2911 0 is_stmt 1
	movl	$.LC89, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L663	#
.L667:
	.loc 1 2913 0
	movl	$.LC90, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L663:
	.loc 1 2916 0
	movq	-48(%rbp), %rax	# result_type, tmp218
	movq	8(%rax), %rax	# result_type_81->common.type, D.21688
	movq	%rax, %rdi	# D.21688,
	call	c_size_in_bytes	#
	movq	%rax, -88(%rbp)	# tmp219, inc
	jmp	.L668	#
.L658:
	.loc 1 2919 0
	movq	global_trees+96(%rip), %rax	# global_trees, tmp220
	movq	%rax, -88(%rbp)	# tmp220, inc
.L668:
	.loc 1 2921 0
	movq	-88(%rbp), %rdx	# inc, tmp221
	movq	-104(%rbp), %rax	# argtype, tmp222
	movq	%rdx, %rsi	# tmp221,
	movq	%rax, %rdi	# tmp222,
	call	convert	#
	movq	%rax, -88(%rbp)	# tmp223, inc
.L682:
	.loc 1 2926 0
	movq	-112(%rbp), %rax	# arg, tmp224
	movzbl	16(%rax), %eax	# arg_9->common.code, D.21689
	movzbl	%al, %eax	# D.21689, D.21690
	cmpl	$72, %eax	#, D.21690
	jb	.L713	#,
	cmpl	$76, %eax	#, D.21690
	jbe	.L670	#,
	subl	$114, %eax	#, tmp225
	cmpl	$1, %eax	#, tmp225
	ja	.L713	#,
.L670:
	.loc 1 2935 0
	movl	$114, %edi	#,
	call	pedantic_lvalue_warning	#
	.loc 1 2939 0
	movq	-112(%rbp), %rax	# arg, tmp226
	movq	8(%rax), %rax	# arg_9->common.type, D.21688
	movzbl	16(%rax), %edx	# _100->common.code, D.21689
	.loc 1 2940 0
	movq	-112(%rbp), %rax	# arg, tmp227
	movq	32(%rax), %rax	# arg_9->exp.operands, D.21688
	movq	8(%rax), %rax	# _102->common.type, D.21688
	movzbl	16(%rax), %eax	# _103->common.code, D.21689
	.loc 1 2939 0
	cmpb	%al, %dl	# D.21689, D.21689
	jne	.L671	#,
	.loc 1 2941 0
	movq	-112(%rbp), %rax	# arg, tmp228
	movq	8(%rax), %rax	# arg_9->common.type, D.21688
	movzbl	61(%rax), %eax	# *_105, tmp231
	shrb	%al	# D.21691
	movl	%eax, %edx	# D.21691, D.21691
	.loc 1 2942 0
	movq	-112(%rbp), %rax	# arg, tmp232
	movq	32(%rax), %rax	# arg_9->exp.operands, D.21688
	movq	8(%rax), %rax	# _107->common.type, D.21688
	movzbl	61(%rax), %eax	# *_108, tmp235
	shrb	%al	# D.21691
	.loc 1 2941 0
	cmpb	%al, %dl	# D.21691, D.21691
	jne	.L671	#,
	.loc 1 2943 0
	movq	-112(%rbp), %rax	# arg, tmp236
	movq	32(%rax), %rax	# arg_9->exp.operands, tmp237
	movq	%rax, -112(%rbp)	# tmp237, arg
	.loc 1 2967 0
	nop
	.loc 1 2972 0
	jmp	.L682	#
.L671:
.LBB39:
	.loc 1 2947 0
	movq	-112(%rbp), %rax	# arg, tmp238
	movq	8(%rax), %rax	# arg_9->common.type, D.21688
	movzbl	16(%rax), %eax	# _111->common.code, D.21689
	cmpb	$11, %al	#, D.21689
	jne	.L673	#,
	.loc 1 2948 0
	movq	-112(%rbp), %rdx	# arg, tmp239
	movl	-132(%rbp), %eax	# code, tmp240
	movq	%rdx, %rsi	# tmp239,
	movl	%eax, %edi	# tmp240,
	call	boolean_increment	#
	movq	%rax, -80(%rbp)	# tmp241, value
	jmp	.L674	#
.L673:
	.loc 1 2951 0
	movq	-112(%rbp), %rax	# arg, tmp242
	movq	%rax, %rdi	# tmp242,
	call	stabilize_reference	#
	movq	%rax, -112(%rbp)	# tmp243, arg
	.loc 1 2952 0
	cmpl	$130, -132(%rbp)	#, code
	je	.L675	#,
	.loc 1 2952 0 is_stmt 0 discriminator 1
	cmpl	$129, -132(%rbp)	#, code
	jne	.L676	#,
.L675:
	.loc 1 2953 0 is_stmt 1
	movq	-112(%rbp), %rax	# arg, tmp244
	movq	%rax, -80(%rbp)	# tmp244, value
	jmp	.L677	#
.L676:
	.loc 1 2955 0
	movq	-112(%rbp), %rax	# arg, tmp245
	movq	%rax, %rdi	# tmp245,
	call	save_expr	#
	movq	%rax, -80(%rbp)	# tmp246, value
.L677:
	.loc 1 2956 0
	cmpl	$130, -132(%rbp)	#, code
	je	.L678	#,
	.loc 1 2957 0
	cmpl	$132, -132(%rbp)	#, code
	jne	.L679	#,
.L678:
	.loc 1 2956 0 discriminator 1
	movl	$59, %eax	#, iftmp.139
	jmp	.L680	#
.L679:
	.loc 1 2956 0 is_stmt 0
	movl	$60, %eax	#, iftmp.139
.L680:
	.loc 1 2956 0 discriminator 2
	movq	-88(%rbp), %rcx	# inc, tmp247
	movq	-80(%rbp), %rdx	# value, tmp248
	movq	-104(%rbp), %rsi	# argtype, tmp249
	movl	%eax, %edi	# iftmp.139,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -40(%rbp)	# tmp250, incremented
	.loc 1 2960 0 is_stmt 1 discriminator 2
	movq	-40(%rbp), %rax	# incremented, tmp251
	movzbl	17(%rax), %edx	#, tmp254
	orl	$1, %edx	#, tmp255
	movb	%dl, 17(%rax)	# tmp255,
	.loc 1 2961 0 discriminator 2
	movq	-40(%rbp), %rdx	# incremented, tmp256
	movq	-112(%rbp), %rax	# arg, tmp257
	movl	$115, %esi	#,
	movq	%rax, %rdi	# tmp257,
	call	build_modify_expr	#
	movq	%rax, -32(%rbp)	# tmp258, modify
	.loc 1 2962 0 discriminator 2
	movq	-112(%rbp), %rax	# arg, tmp259
	movq	8(%rax), %rax	# arg_114->common.type, D.21688
	movq	-80(%rbp), %rcx	# value, tmp260
	movq	-32(%rbp), %rdx	# modify, tmp261
	movq	%rax, %rsi	# D.21688,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -80(%rbp)	# tmp262, value
.L674:
	.loc 1 2964 0
	movq	-80(%rbp), %rax	# value, tmp263
	movzbl	18(%rax), %edx	#, tmp266
	orl	$1, %edx	#, tmp267
	movb	%dl, 18(%rax)	# tmp267,
	.loc 1 2965 0
	movq	-80(%rbp), %rax	# value, D.21687
	jmp	.L616	#
.L713:
.LBE39:
	.loc 1 2970 0
	nop
.L681:
	.loc 1 2975 0
	cmpl	$130, -132(%rbp)	#, code
	je	.L683	#,
	.loc 1 2976 0
	cmpl	$132, -132(%rbp)	#, code
	jne	.L684	#,
.L683:
	.loc 1 2975 0 discriminator 1
	movl	$.LC93, %eax	#, iftmp.140
	jmp	.L685	#
.L684:
	.loc 1 2975 0 is_stmt 0
	movl	$.LC94, %eax	#, iftmp.140
.L685:
	.loc 1 2975 0 discriminator 2
	movq	-112(%rbp), %rdx	# arg, tmp268
	movq	%rax, %rsi	# iftmp.140,
	movq	%rdx, %rdi	# tmp268,
	call	lvalue_or_else	#
	testl	%eax, %eax	# D.21692
	jne	.L686	#,
	.loc 1 2979 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L686:
	.loc 1 2982 0
	movq	-112(%rbp), %rax	# arg, tmp269
	movzbl	17(%rax), %eax	# *arg_9, D.21689
	andl	$16, %eax	#, D.21689
	testb	%al, %al	# D.21689
	je	.L687	#,
	.loc 1 2983 0
	cmpl	$130, -132(%rbp)	#, code
	je	.L688	#,
	.loc 1 2985 0
	cmpl	$132, -132(%rbp)	#, code
	jne	.L689	#,
.L688:
	.loc 1 2983 0 discriminator 1
	movl	$.LC95, %eax	#, iftmp.141
	jmp	.L690	#
.L689:
	.loc 1 2983 0 is_stmt 0
	movl	$.LC96, %eax	#, iftmp.141
.L690:
	.loc 1 2983 0 discriminator 2
	movq	-112(%rbp), %rdx	# arg, tmp270
	movq	%rax, %rsi	# iftmp.141,
	movq	%rdx, %rdi	# tmp270,
	call	readonly_warning	#
.L687:
	.loc 1 2988 0 is_stmt 1
	movq	-112(%rbp), %rax	# arg, tmp271
	movq	8(%rax), %rax	# arg_9->common.type, D.21688
	movzbl	16(%rax), %eax	# _132->common.code, D.21689
	cmpb	$11, %al	#, D.21689
	jne	.L691	#,
	.loc 1 2989 0
	movq	-112(%rbp), %rdx	# arg, tmp272
	movl	-132(%rbp), %eax	# code, tmp273
	movq	%rdx, %rsi	# tmp272,
	movl	%eax, %edi	# tmp273,
	call	boolean_increment	#
	movq	%rax, -96(%rbp)	# tmp274, val
	jmp	.L692	#
.L691:
	.loc 1 2991 0
	movq	-112(%rbp), %rax	# arg, tmp275
	movq	8(%rax), %rsi	# arg_9->common.type, D.21688
	movq	-88(%rbp), %rcx	# inc, tmp276
	movq	-112(%rbp), %rdx	# arg, tmp277
	movl	-132(%rbp), %eax	# code, tmp278
	movl	%eax, %edi	# tmp278,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -96(%rbp)	# tmp279, val
.L692:
	.loc 1 2992 0
	movq	-96(%rbp), %rax	# val, tmp280
	movzbl	17(%rax), %edx	#, tmp283
	orl	$1, %edx	#, tmp284
	movb	%dl, 17(%rax)	# tmp284,
	.loc 1 2993 0
	movq	-96(%rbp), %rdx	# val, tmp285
	movq	-48(%rbp), %rax	# result_type, tmp286
	movq	%rdx, %rsi	# tmp285,
	movq	%rax, %rdi	# tmp286,
	call	convert	#
	movq	%rax, -96(%rbp)	# tmp287, val
	.loc 1 2994 0
	movq	-96(%rbp), %rax	# val, tmp288
	movzbl	16(%rax), %eax	# val_137->common.code, D.21689
	movzbl	%al, %eax	# D.21689, D.21690
	cmpl	-132(%rbp), %eax	# code, D.21690
	je	.L693	#,
	.loc 1 2995 0
	movq	-96(%rbp), %rax	# val, tmp289
	movzbl	18(%rax), %edx	#, tmp292
	orl	$4, %edx	#, tmp293
	movb	%dl, 18(%rax)	# tmp293,
.L693:
	.loc 1 2996 0
	movq	-96(%rbp), %rax	# val, D.21687
	jmp	.L616	#
.L627:
.LBE38:
	.loc 1 3003 0
	movq	-112(%rbp), %rax	# arg, tmp294
	movzbl	16(%rax), %eax	# arg_25->common.code, D.21689
	cmpb	$41, %al	#, D.21689
	jne	.L694	#,
	.loc 1 3006 0
	movq	-112(%rbp), %rax	# arg, tmp295
	movq	32(%rax), %rax	# arg_25->exp.operands, D.21688
	movq	%rax, %rdi	# D.21688,
	call	lvalue_p	#
	testl	%eax, %eax	# D.21692
	je	.L695	#,
	.loc 1 3007 0
	movq	-112(%rbp), %rax	# arg, tmp296
	movq	32(%rax), %rax	# arg_25->exp.operands, D.21688
	movq	%rax, %rdi	# D.21688,
	call	non_lvalue	#
	jmp	.L616	#
.L695:
	.loc 1 3008 0
	movq	-112(%rbp), %rax	# arg, tmp297
	movq	32(%rax), %rax	# arg_25->exp.operands, D.21687
	jmp	.L616	#
.L694:
	.loc 1 3012 0
	movq	-112(%rbp), %rax	# arg, tmp298
	movzbl	16(%rax), %eax	# arg_25->common.code, D.21689
	cmpb	$43, %al	#, D.21689
	jne	.L696	#,
	.loc 1 3014 0
	movq	-112(%rbp), %rax	# arg, tmp299
	movq	32(%rax), %rax	# arg_25->exp.operands, D.21688
	movq	%rax, %rdi	# D.21688,
	call	mark_addressable	#
	testl	%eax, %eax	# D.21692
	jne	.L697	#,
	.loc 1 3015 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L697:
	.loc 1 3016 0
	movq	-112(%rbp), %rax	# arg, tmp300
	movq	40(%rax), %rdx	# arg_25->exp.operands, D.21688
	movq	-112(%rbp), %rax	# arg, tmp301
	movq	32(%rax), %rax	# arg_25->exp.operands, D.21688
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# D.21688,
	movl	$59, %edi	#,
	call	build_binary_op	#
	jmp	.L616	#
.L696:
	.loc 1 3022 0
	movl	-136(%rbp), %edx	# flag, tmp302
	movq	-112(%rbp), %rcx	# arg, tmp303
	movl	-132(%rbp), %eax	# code, tmp304
	movq	%rcx, %rsi	# tmp303,
	movl	%eax, %edi	# tmp304,
	call	unary_complex_lvalue	#
	movq	%rax, -96(%rbp)	# tmp305, val
	.loc 1 3023 0
	cmpq	$0, -96(%rbp)	#, val
	je	.L698	#,
	.loc 1 3024 0
	movq	-96(%rbp), %rax	# val, D.21687
	jmp	.L616	#
.L698:
	.loc 1 3050 0
	cmpl	$23, -120(%rbp)	#, typecode
	je	.L699	#,
	.loc 1 3050 0 is_stmt 0 discriminator 1
	cmpl	$0, -136(%rbp)	#, flag
	jne	.L699	#,
	.loc 1 3051 0 is_stmt 1
	movq	-112(%rbp), %rax	# arg, tmp306
	movl	$.LC97, %esi	#,
	movq	%rax, %rdi	# tmp306,
	call	lvalue_or_else	#
	testl	%eax, %eax	# D.21692
	jne	.L699	#,
	.loc 1 3052 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L699:
	.loc 1 3055 0
	movq	-112(%rbp), %rax	# arg, tmp307
	movq	8(%rax), %rax	# arg_25->common.type, tmp308
	movq	%rax, -104(%rbp)	# tmp308, argtype
	.loc 1 3061 0
	movq	-112(%rbp), %rax	# arg, tmp309
	movzbl	16(%rax), %eax	# arg_25->common.code, D.21689
	movzbl	%al, %eax	# D.21689, D.21692
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21693
	cmpb	$100, %al	#, D.21693
	je	.L700	#,
	.loc 1 3061 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# arg, tmp311
	movzbl	16(%rax), %eax	# arg_25->common.code, D.21689
	movzbl	%al, %eax	# D.21689, D.21692
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21693
	cmpb	$114, %al	#, D.21693
	jne	.L701	#,
.L700:
	.loc 1 3062 0 is_stmt 1
	movq	-112(%rbp), %rax	# arg, tmp313
	movzbl	17(%rax), %eax	# *arg_25, D.21689
	andl	$16, %eax	#, D.21689
	testb	%al, %al	# D.21689
	jne	.L702	#,
	.loc 1 3062 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# arg, tmp314
	movzbl	17(%rax), %eax	# *arg_25, D.21689
	andl	$8, %eax	#, D.21689
	testb	%al, %al	# D.21689
	je	.L701	#,
.L702:
	.loc 1 3063 0 is_stmt 1
	movq	-112(%rbp), %rax	# arg, tmp315
	movzbl	17(%rax), %eax	# *arg_25, D.21689
	andl	$16, %eax	#, D.21689
	testb	%al, %al	# D.21689
	setne	%al	#, D.21694
	movzbl	%al, %edx	# D.21694, D.21692
	movq	-112(%rbp), %rax	# arg, tmp316
	movzbl	17(%rax), %eax	# *arg_25, D.21689
	andl	$8, %eax	#, D.21689
	testb	%al, %al	# D.21689
	je	.L703	#,
	.loc 1 3063 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.142
	jmp	.L704	#
.L703:
	.loc 1 3063 0 discriminator 2
	movl	$0, %eax	#, iftmp.142
.L704:
	.loc 1 3063 0 discriminator 3
	orl	%eax, %edx	# iftmp.142, D.21692
	movq	-104(%rbp), %rax	# argtype, tmp317
	movl	%edx, %esi	# D.21692,
	movq	%rax, %rdi	# tmp317,
	call	c_build_qualified_type	#
	movq	%rax, -104(%rbp)	# tmp318, argtype
.L701:
	.loc 1 3067 0 is_stmt 1
	movq	-104(%rbp), %rax	# argtype, tmp319
	movq	%rax, %rdi	# tmp319,
	call	build_pointer_type	#
	movq	%rax, -104(%rbp)	# tmp320, argtype
	.loc 1 3069 0
	movq	-112(%rbp), %rax	# arg, tmp321
	movq	%rax, %rdi	# tmp321,
	call	mark_addressable	#
	testl	%eax, %eax	# D.21692
	jne	.L705	#,
	.loc 1 3070 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L705:
.LBB40:
	.loc 1 3075 0
	movq	-112(%rbp), %rax	# arg, tmp322
	movzbl	16(%rax), %eax	# arg_25->common.code, D.21689
	cmpb	$39, %al	#, D.21689
	jne	.L706	#,
.LBB41:
	.loc 1 3077 0
	movq	-112(%rbp), %rax	# arg, tmp323
	movq	40(%rax), %rax	# arg_25->exp.operands, tmp324
	movq	%rax, -24(%rbp)	# tmp324, field
	.loc 1 3079 0
	movq	-112(%rbp), %rax	# arg, tmp325
	movq	32(%rax), %rax	# arg_25->exp.operands, D.21688
	movl	-136(%rbp), %edx	# flag, tmp326
	movq	%rax, %rsi	# D.21688,
	movl	$121, %edi	#,
	call	build_unary_op	#
	movq	%rax, -72(%rbp)	# tmp327, addr
	.loc 1 3081 0
	movq	-24(%rbp), %rax	# field, tmp328
	movzbl	53(%rax), %eax	# *field_183, D.21689
	andl	$2, %eax	#, D.21689
	testb	%al, %al	# D.21689
	je	.L707	#,
	.loc 1 3084 0
	movq	-24(%rbp), %rax	# field, tmp329
	movq	72(%rax), %rax	# field_183->decl.name, D.21688
	movq	32(%rax), %rax	# _188->identifier.id.str, D.21695
	.loc 1 3083 0
	movq	%rax, %rsi	# D.21695,
	movl	$.LC98, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3085 0
	movq	global_trees(%rip), %rax	# global_trees, D.21687
	jmp	.L616	#
.L707:
	.loc 1 3088 0
	movq	-24(%rbp), %rax	# field, tmp330
	movq	%rax, %rdi	# tmp330,
	call	byte_position	#
	movq	%rax, %rdx	#, D.21688
	movq	-104(%rbp), %rax	# argtype, tmp331
	movq	%rdx, %rsi	# D.21688,
	movq	%rax, %rdi	# tmp331,
	call	convert	#
	movq	%rax, %rbx	#, D.21688
	movq	-72(%rbp), %rdx	# addr, tmp332
	movq	-104(%rbp), %rax	# argtype, tmp333
	movq	%rdx, %rsi	# tmp332,
	movq	%rax, %rdi	# tmp333,
	call	convert	#
	movq	%rax, %rdx	#, D.21688
	movq	-104(%rbp), %rax	# argtype, tmp334
	movq	%rbx, %rcx	# D.21688,
	movq	%rax, %rsi	# tmp334,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21688,
	call	fold	#
	movq	%rax, -72(%rbp)	# tmp335, addr
.LBE41:
	jmp	.L708	#
.L706:
	.loc 1 3093 0
	movq	-112(%rbp), %rdx	# arg, tmp336
	movq	-104(%rbp), %rcx	# argtype, tmp337
	movl	-132(%rbp), %eax	# code, tmp338
	movq	%rcx, %rsi	# tmp337,
	movl	%eax, %edi	# tmp338,
	call	build1	#
	movq	%rax, -72(%rbp)	# tmp339, addr
.L708:
	.loc 1 3097 0
	movq	-112(%rbp), %rax	# arg, tmp340
	movq	%rax, %rdi	# tmp340,
	call	staticp	#
	testl	%eax, %eax	# D.21692
	je	.L709	#,
	.loc 1 3098 0
	movq	-112(%rbp), %rax	# arg, tmp341
	movzbl	16(%rax), %eax	# arg_25->common.code, D.21689
	cmpb	$30, %al	#, D.21689
	jne	.L710	#,
	.loc 1 3099 0 discriminator 1
	movq	-112(%rbp), %rax	# arg, tmp342
	movq	80(%rax), %rax	# arg_25->decl.context, D.21688
	.loc 1 3098 0 discriminator 1
	testq	%rax, %rax	# D.21688
	jne	.L709	#,
.L710:
	.loc 1 3100 0
	movq	-72(%rbp), %rax	# addr, tmp343
	movzbl	17(%rax), %edx	#, tmp346
	orl	$2, %edx	#, tmp347
	movb	%dl, 17(%rax)	# tmp347,
.L709:
	.loc 1 3101 0
	movq	-72(%rbp), %rax	# addr, D.21687
	jmp	.L616	#
.L712:
.LBE40:
	.loc 1 3105 0
	nop
.L634:
	.loc 1 3108 0
	cmpq	$0, -104(%rbp)	#, argtype
	jne	.L711	#,
	.loc 1 3109 0
	movq	-112(%rbp), %rax	# arg, tmp348
	movq	8(%rax), %rax	# arg_10->common.type, tmp349
	movq	%rax, -104(%rbp)	# tmp349, argtype
.L711:
	.loc 1 3110 0
	movq	-112(%rbp), %rdx	# arg, tmp350
	movq	-104(%rbp), %rcx	# argtype, tmp351
	movl	-132(%rbp), %eax	# code, tmp352
	movq	%rcx, %rsi	# tmp351,
	movl	%eax, %edi	# tmp352,
	call	build1	#
	movq	%rax, %rdi	# D.21688,
	call	fold	#
.L616:
	.loc 1 3111 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	build_unary_op, .-build_unary_op
	.globl	lvalue_p
	.type	lvalue_p, @function
lvalue_p:
.LFB28:
	.loc 1 3149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ref, ref
	.loc 1 3150 0
	movq	-24(%rbp), %rax	# ref, tmp71
	movzbl	16(%rax), %eax	# ref_3(D)->common.code, D.21715
	movzbl	%al, %eax	# D.21715, tmp72
	movl	%eax, -4(%rbp)	# tmp72, code
	.loc 1 3152 0
	movl	-4(%rbp), %eax	# code, code
	cmpl	$41, %eax	#, code
	je	.L716	#,
	cmpl	$41, %eax	#, code
	ja	.L717	#,
	cmpl	$36, %eax	#, code
	ja	.L718	#,
	cmpl	$34, %eax	#, code
	jae	.L716	#,
	testl	%eax, %eax	# code
	je	.L716	#,
	cmpl	$29, %eax	#, code
	je	.L719	#,
	jmp	.L715	#
.L718:
	cmpl	$39, %eax	#, code
	je	.L720	#,
	jmp	.L715	#
.L717:
	cmpl	$120, %eax	#, code
	je	.L721	#,
	cmpl	$120, %eax	#, code
	ja	.L722	#,
	cmpl	$43, %eax	#, code
	je	.L716	#,
	cmpl	$52, %eax	#, code
	je	.L721	#,
	jmp	.L715	#
.L722:
	cmpl	$127, %eax	#, code
	jb	.L715	#,
	cmpl	$128, %eax	#, code
	jbe	.L720	#,
	cmpl	$170, %eax	#, code
	je	.L719	#,
	jmp	.L715	#
.L720:
	.loc 1 3157 0
	movq	-24(%rbp), %rax	# ref, tmp74
	movq	32(%rax), %rax	# ref_3(D)->exp.operands, D.21716
	movq	%rax, %rdi	# D.21716,
	call	lvalue_p	#
	jmp	.L723	#
.L719:
	.loc 1 3161 0
	movl	$1, %eax	#, D.21714
	jmp	.L723	#
.L716:
	.loc 1 3169 0
	movq	-24(%rbp), %rax	# ref, tmp75
	movq	8(%rax), %rax	# ref_3(D)->common.type, D.21716
	movzbl	16(%rax), %eax	# _9->common.code, D.21715
	.loc 1 3170 0
	cmpb	$23, %al	#, D.21715
	je	.L724	#,
	.loc 1 3170 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ref, tmp76
	movq	8(%rax), %rax	# ref_3(D)->common.type, D.21716
	movzbl	16(%rax), %eax	# _11->common.code, D.21715
	cmpb	$16, %al	#, D.21715
	je	.L724	#,
	.loc 1 3170 0 discriminator 3
	movl	$1, %eax	#, iftmp.143
	jmp	.L725	#
.L724:
	.loc 1 3170 0 discriminator 2
	movl	$0, %eax	#, iftmp.143
.L725:
	.loc 1 3169 0 is_stmt 1
	jmp	.L723	#
.L721:
	.loc 1 3174 0
	movq	-24(%rbp), %rax	# ref, tmp77
	movq	8(%rax), %rax	# ref_3(D)->common.type, D.21716
	movzbl	16(%rax), %eax	# _16->common.code, D.21715
	cmpb	$18, %al	#, D.21715
	sete	%al	#, D.21717
	movzbl	%al, %eax	# D.21717, D.21714
	jmp	.L723	#
.L715:
	.loc 1 3177 0
	movl	$0, %eax	#, D.21714
.L723:
	.loc 1 3179 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	lvalue_p, .-lvalue_p
	.section	.rodata
.LC99:
	.string	"%s"
	.text
	.globl	lvalue_or_else
	.type	lvalue_or_else, @function
lvalue_or_else:
.LFB29:
	.loc 1 3188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ref, ref
	movq	%rsi, -32(%rbp)	# msgid, msgid
	.loc 1 3189 0
	movq	-24(%rbp), %rax	# ref, tmp61
	movq	%rax, %rdi	# tmp61,
	call	lvalue_p	#
	movl	%eax, -4(%rbp)	# tmp62, win
	.loc 1 3191 0
	cmpl	$0, -4(%rbp)	#, win
	jne	.L727	#,
	.loc 1 3192 0
	movq	-32(%rbp), %rax	# msgid, tmp63
	movq	%rax, %rsi	# tmp63,
	movl	$.LC99, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L727:
	.loc 1 3194 0
	movl	-4(%rbp), %eax	# win, D.21721
	.loc 1 3195 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	lvalue_or_else, .-lvalue_or_else
	.type	unary_complex_lvalue, @function
unary_complex_lvalue:
.LFB30:
	.loc 1 3210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# code, code
	movq	%rsi, -48(%rbp)	# arg, arg
	movl	%edx, -40(%rbp)	# flag, flag
	.loc 1 3212 0
	movq	-48(%rbp), %rax	# arg, tmp75
	movzbl	16(%rax), %eax	# arg_2(D)->common.code, D.21724
	cmpb	$47, %al	#, D.21724
	jne	.L730	#,
.LBB42:
	.loc 1 3214 0
	movq	-48(%rbp), %rax	# arg, tmp76
	movq	40(%rax), %rcx	# arg_2(D)->exp.operands, D.21725
	movl	-36(%rbp), %eax	# code, tmp77
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.21725,
	movl	%eax, %edi	# tmp77,
	call	build_unary_op	#
	movq	%rax, -24(%rbp)	# tmp78, real_result
	.loc 1 3218 0
	movq	-48(%rbp), %rax	# arg, tmp79
	movq	8(%rax), %rax	# arg_2(D)->common.type, D.21725
	movzbl	16(%rax), %eax	# _7->common.code, D.21724
	cmpb	$23, %al	#, D.21724
	je	.L731	#,
	.loc 1 3218 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, flag
	jne	.L731	#,
	.loc 1 3219 0 is_stmt 1
	movl	$47, %edi	#,
	call	pedantic_lvalue_warning	#
.L731:
	.loc 1 3221 0
	movq	-48(%rbp), %rax	# arg, tmp80
	movq	32(%rax), %rdx	# arg_2(D)->exp.operands, D.21725
	movq	-24(%rbp), %rax	# real_result, tmp81
	movq	8(%rax), %rax	# real_result_6->common.type, D.21725
	movq	-24(%rbp), %rcx	# real_result, tmp82
	movq	%rax, %rsi	# D.21725,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L732	#
.L730:
.LBE42:
	.loc 1 3226 0
	movq	-48(%rbp), %rax	# arg, tmp83
	movzbl	16(%rax), %eax	# arg_2(D)->common.code, D.21724
	cmpb	$51, %al	#, D.21724
	jne	.L733	#,
	.loc 1 3228 0
	cmpl	$0, -40(%rbp)	#, flag
	jne	.L734	#,
	.loc 1 3229 0
	movl	$51, %edi	#,
	call	pedantic_lvalue_warning	#
.L734:
	.loc 1 3230 0
	movq	-48(%rbp), %rax	# arg, tmp84
	movq	8(%rax), %rax	# arg_2(D)->common.type, D.21725
	movzbl	16(%rax), %eax	# _14->common.code, D.21724
	cmpb	$23, %al	#, D.21724
	je	.L735	#,
	.loc 1 3230 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, flag
	jne	.L735	#,
	.loc 1 3231 0 is_stmt 1
	movl	$47, %edi	#,
	call	pedantic_lvalue_warning	#
.L735:
	.loc 1 3234 0
	movq	-48(%rbp), %rax	# arg, tmp85
	movq	48(%rax), %rcx	# arg_2(D)->exp.operands, D.21725
	movl	-40(%rbp), %edx	# flag, tmp86
	movl	-36(%rbp), %eax	# code, tmp87
	movq	%rcx, %rsi	# D.21725,
	movl	%eax, %edi	# tmp87,
	call	build_unary_op	#
	movq	%rax, %rbx	#, D.21725
	movq	-48(%rbp), %rax	# arg, tmp88
	movq	40(%rax), %rcx	# arg_2(D)->exp.operands, D.21725
	movl	-40(%rbp), %edx	# flag, tmp89
	movl	-36(%rbp), %eax	# code, tmp90
	movq	%rcx, %rsi	# D.21725,
	movl	%eax, %edi	# tmp90,
	call	build_unary_op	#
	movq	%rax, %rcx	#, D.21725
	movq	-48(%rbp), %rax	# arg, tmp91
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.21725
	.loc 1 3233 0
	movq	%rbx, %rdx	# D.21725,
	movq	%rcx, %rsi	# D.21725,
	movq	%rax, %rdi	# D.21725,
	call	build_conditional_expr	#
	jmp	.L732	#
.L733:
	.loc 1 3239 0
	movl	$0, %eax	#, D.21723
.L732:
	.loc 1 3240 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	unary_complex_lvalue, .-unary_complex_lvalue
	.section	.rodata
	.align 8
.LC100:
	.string	"ISO C forbids use of conditional expressions as lvalues"
	.align 8
.LC101:
	.string	"ISO C forbids use of compound expressions as lvalues"
	.align 8
.LC102:
	.string	"ISO C forbids use of cast expressions as lvalues"
	.text
	.type	pedantic_lvalue_warning, @function
pedantic_lvalue_warning:
.LFB31:
	.loc 1 3248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 3249 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.144
	testl	%eax, %eax	# pedantic.144
	je	.L736	#,
	.loc 1 3250 0
	movl	-4(%rbp), %eax	# code, code
	cmpl	$47, %eax	#, code
	je	.L739	#,
	cmpl	$51, %eax	#, code
	jne	.L741	#,
	.loc 1 3253 0
	movl	$.LC100, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 3254 0
	jmp	.L736	#
.L739:
	.loc 1 3256 0
	movl	$.LC101, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 3257 0
	jmp	.L736	#
.L741:
	.loc 1 3259 0
	movl	$.LC102, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 3260 0
	nop
.L736:
	.loc 1 3262 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	pedantic_lvalue_warning, .-pedantic_lvalue_warning
	.section	.rodata
.LC103:
	.string	"%s of read-only member `%s'"
.LC104:
	.string	"%s of read-only variable `%s'"
.LC105:
	.string	"%s of read-only location"
	.text
	.globl	readonly_warning
	.type	readonly_warning, @function
readonly_warning:
.LFB32:
	.loc 1 3270 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# arg, arg
	movq	%rsi, -16(%rbp)	# msgid, msgid
	.loc 1 3271 0
	movq	-8(%rbp), %rax	# arg, tmp71
	movzbl	16(%rax), %eax	# arg_1(D)->common.code, D.21729
	cmpb	$39, %al	#, D.21729
	jne	.L743	#,
	.loc 1 3273 0
	movq	-8(%rbp), %rax	# arg, tmp72
	movq	32(%rax), %rax	# arg_1(D)->exp.operands, D.21730
	movq	8(%rax), %rax	# _3->common.type, D.21730
	movzbl	17(%rax), %eax	# *_4, D.21729
	andl	$16, %eax	#, D.21729
	testb	%al, %al	# D.21729
	je	.L744	#,
	.loc 1 3274 0
	movq	-8(%rbp), %rax	# arg, tmp73
	movq	32(%rax), %rax	# arg_1(D)->exp.operands, D.21730
	movq	-16(%rbp), %rdx	# msgid, tmp74
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# D.21730,
	call	readonly_warning	#
	jmp	.L742	#
.L744:
	.loc 1 3277 0
	movq	-8(%rbp), %rax	# arg, tmp75
	movq	40(%rax), %rax	# arg_1(D)->exp.operands, D.21730
	movq	72(%rax), %rax	# _9->decl.name, D.21730
	movq	32(%rax), %rdx	# _10->identifier.id.str, D.21731
	.loc 1 3276 0
	movq	-16(%rbp), %rax	# msgid, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	$.LC103, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L742	#
.L743:
	.loc 1 3279 0
	movq	-8(%rbp), %rax	# arg, tmp77
	movzbl	16(%rax), %eax	# arg_1(D)->common.code, D.21729
	cmpb	$34, %al	#, D.21729
	jne	.L747	#,
	.loc 1 3281 0
	movq	-8(%rbp), %rax	# arg, tmp78
	movq	72(%rax), %rax	# arg_1(D)->decl.name, D.21730
	movq	32(%rax), %rdx	# _13->identifier.id.str, D.21731
	.loc 1 3280 0
	movq	-16(%rbp), %rax	# msgid, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$.LC104, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L742	#
.L747:
	.loc 1 3283 0
	movq	-16(%rbp), %rax	# msgid, tmp80
	movq	%rax, %rsi	# tmp80,
	movl	$.LC105, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L742:
	.loc 1 3284 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	readonly_warning, .-readonly_warning
	.section	.rodata
	.align 8
.LC106:
	.string	"cannot take address of bit-field `%s'"
	.align 8
.LC107:
	.string	"global register variable `%s' used in nested function"
	.align 8
.LC108:
	.string	"register variable `%s' used in nested function"
	.align 8
.LC109:
	.string	"address of global register variable `%s' requested"
	.align 8
.LC110:
	.string	"cannot put object with volatile field into register"
	.align 8
.LC111:
	.string	"address of register variable `%s' requested"
	.text
	.globl	mark_addressable
	.type	mark_addressable, @function
mark_addressable:
.LFB33:
	.loc 1 3293 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# exp, exp
	.loc 1 3294 0
	movq	-24(%rbp), %rax	# exp, tmp94
	movq	%rax, -8(%rbp)	# tmp94, x
.L765:
	.loc 1 3296 0
	movq	-8(%rbp), %rax	# x, tmp95
	movzbl	16(%rax), %eax	# x_1->common.code, D.21736
	movzbl	%al, %eax	# D.21736, D.21737
	cmpl	$43, %eax	#, D.21737
	je	.L750	#,
	cmpl	$43, %eax	#, D.21737
	ja	.L751	#,
	cmpl	$36, %eax	#, D.21737
	ja	.L752	#,
	cmpl	$34, %eax	#, D.21737
	jae	.L753	#,
	cmpl	$30, %eax	#, D.21737
	je	.L754	#,
	cmpl	$32, %eax	#, D.21737
	je	.L753	#,
	jmp	.L749	#
.L752:
	cmpl	$39, %eax	#, D.21737
	je	.L755	#,
	jmp	.L749	#
.L751:
	cmpl	$128, %eax	#, D.21737
	ja	.L756	#,
	cmpl	$127, %eax	#, D.21737
	jae	.L750	#,
	cmpl	$46, %eax	#, D.21737
	je	.L757	#,
	cmpl	$121, %eax	#, D.21737
	je	.L750	#,
	jmp	.L749	#
.L756:
	cmpl	$170, %eax	#, D.21737
	je	.L757	#,
	jmp	.L749	#
.L755:
	.loc 1 3299 0
	movq	-8(%rbp), %rax	# x, tmp96
	movq	40(%rax), %rax	# x_1->exp.operands, D.21738
	movzbl	53(%rax), %eax	# *_7, D.21736
	andl	$2, %eax	#, D.21736
	testb	%al, %al	# D.21736
	je	.L750	#,
	.loc 1 3302 0
	movq	-8(%rbp), %rax	# x, tmp97
	movq	40(%rax), %rax	# x_1->exp.operands, D.21738
	movq	72(%rax), %rax	# _10->decl.name, D.21738
	movq	32(%rax), %rax	# _11->identifier.id.str, D.21739
	.loc 1 3301 0
	movq	%rax, %rsi	# D.21739,
	movl	$.LC106, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3303 0
	movl	$0, %eax	#, D.21735
	jmp	.L758	#
.L750:
	.loc 1 3312 0
	movq	-8(%rbp), %rax	# x, tmp98
	movq	32(%rax), %rax	# x_1->exp.operands, tmp99
	movq	%rax, -8(%rbp)	# tmp99, x
	.loc 1 3313 0
	nop
	.loc 1 3372 0
	jmp	.L765	#
.L757:
	.loc 1 3317 0
	movq	-8(%rbp), %rax	# x, tmp100
	movzbl	17(%rax), %edx	#, tmp103
	orl	$4, %edx	#, tmp104
	movb	%dl, 17(%rax)	# tmp104,
	.loc 1 3318 0
	movl	$1, %eax	#, D.21735
	jmp	.L758	#
.L753:
	.loc 1 3324 0
	movq	-8(%rbp), %rax	# x, tmp105
	movzbl	49(%rax), %eax	# *x_1, D.21736
	andl	$4, %eax	#, D.21736
	testb	%al, %al	# D.21736
	je	.L760	#,
	.loc 1 3324 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp106
	movzbl	17(%rax), %eax	# *x_1, D.21736
	andl	$4, %eax	#, D.21736
	testb	%al, %al	# D.21736
	jne	.L760	#,
	.loc 1 3325 0 is_stmt 1
	movq	-8(%rbp), %rax	# x, tmp107
	movzbl	49(%rax), %eax	# *x_1, D.21736
	andl	$2, %eax	#, D.21736
	testb	%al, %al	# D.21736
	je	.L760	#,
	.loc 1 3327 0
	movq	-8(%rbp), %rax	# x, tmp108
	movzbl	18(%rax), %eax	# *x_1, D.21736
	andl	$8, %eax	#, D.21736
	testb	%al, %al	# D.21736
	je	.L761	#,
	.loc 1 3330 0
	movq	-8(%rbp), %rax	# x, tmp109
	movq	72(%rax), %rax	# x_1->decl.name, D.21738
	movq	32(%rax), %rax	# _24->identifier.id.str, D.21739
	.loc 1 3329 0
	movq	%rax, %rsi	# D.21739,
	movl	$.LC107, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3331 0
	movl	$0, %eax	#, D.21735
	jmp	.L758	#
.L761:
	.loc 1 3334 0
	movq	-8(%rbp), %rax	# x, tmp110
	movq	72(%rax), %rax	# x_1->decl.name, D.21738
	movq	32(%rax), %rax	# _27->identifier.id.str, D.21739
	.loc 1 3333 0
	movq	%rax, %rsi	# D.21739,
	movl	$.LC108, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L762	#
.L760:
	.loc 1 3336 0
	movq	-8(%rbp), %rax	# x, tmp111
	movzbl	49(%rax), %eax	# *x_1, D.21736
	andl	$4, %eax	#, D.21736
	testb	%al, %al	# D.21736
	je	.L762	#,
	.loc 1 3336 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp112
	movzbl	17(%rax), %eax	# *x_1, D.21736
	andl	$4, %eax	#, D.21736
	testb	%al, %al	# D.21736
	jne	.L762	#,
	.loc 1 3338 0 is_stmt 1
	movq	-8(%rbp), %rax	# x, tmp113
	movzbl	18(%rax), %eax	# *x_1, D.21736
	andl	$8, %eax	#, D.21736
	testb	%al, %al	# D.21736
	je	.L763	#,
	.loc 1 3341 0
	movq	-8(%rbp), %rax	# x, tmp114
	movq	72(%rax), %rax	# x_1->decl.name, D.21738
	movq	32(%rax), %rax	# _35->identifier.id.str, D.21739
	.loc 1 3340 0
	movq	%rax, %rsi	# D.21739,
	movl	$.LC109, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3342 0
	movl	$0, %eax	#, D.21735
	jmp	.L758	#
.L763:
	.loc 1 3350 0
	movq	-8(%rbp), %rax	# x, tmp115
	movq	8(%rax), %rax	# x_1->common.type, D.21738
	movzbl	19(%rax), %eax	# *_38, D.21736
	andl	$4, %eax	#, D.21736
	testb	%al, %al	# D.21736
	je	.L764	#,
	.loc 1 3352 0
	movl	$.LC110, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3353 0
	movl	$0, %eax	#, D.21735
	jmp	.L758	#
.L764:
	.loc 1 3357 0
	movq	-8(%rbp), %rax	# x, tmp116
	movq	72(%rax), %rax	# x_1->decl.name, D.21738
	movq	32(%rax), %rax	# _42->identifier.id.str, D.21739
	.loc 1 3356 0
	movq	%rax, %rsi	# D.21739,
	movl	$.LC111, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L762:
	.loc 1 3359 0
	movq	-8(%rbp), %rax	# x, tmp117
	movq	%rax, %rdi	# tmp117,
	call	put_var_into_stack	#
.L754:
	.loc 1 3363 0
	movq	-8(%rbp), %rax	# x, tmp118
	movzbl	17(%rax), %edx	#, tmp121
	orl	$4, %edx	#, tmp122
	movb	%dl, 17(%rax)	# tmp122,
.L749:
	.loc 1 3370 0
	movl	$1, %eax	#, D.21735
.L758:
	.loc 1 3372 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	mark_addressable, .-mark_addressable
	.section	.rodata
	.align 8
.LC112:
	.string	"signed and unsigned type in conditional expression"
	.align 8
.LC113:
	.string	"ISO C forbids conditional expr with only one void side"
	.align 8
.LC114:
	.string	"ISO C forbids conditional expr between `void *' and function pointer"
	.align 8
.LC115:
	.string	"pointer type mismatch in conditional expression"
	.align 8
.LC116:
	.string	"pointer/integer type mismatch in conditional expression"
	.align 8
.LC117:
	.string	"type mismatch in conditional expression"
	.text
	.globl	build_conditional_expr
	.type	build_conditional_expr, @function
build_conditional_expr:
.LFB34:
	.loc 1 3379 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# ifexp, ifexp
	movq	%rsi, -80(%rbp)	# op1, op1
	movq	%rdx, -88(%rbp)	# op2, op2
	.loc 1 3384 0
	movq	$0, -40(%rbp)	#, result_type
	.loc 1 3385 0
	movq	-80(%rbp), %rax	# op1, tmp135
	movq	%rax, -32(%rbp)	# tmp135, orig_op1
	movq	-88(%rbp), %rax	# op2, tmp136
	movq	%rax, -24(%rbp)	# tmp136, orig_op2
	.loc 1 3387 0
	movq	-72(%rbp), %rax	# ifexp, tmp137
	movq	%rax, %rdi	# tmp137,
	call	default_conversion	#
	movq	%rax, %rdi	# D.21750,
	call	truthvalue_conversion	#
	movq	%rax, -72(%rbp)	# tmp138, ifexp
	.loc 1 3408 0
	movq	-80(%rbp), %rax	# op1, tmp139
	movq	8(%rax), %rax	# op1_19(D)->common.type, D.21750
	movzbl	16(%rax), %eax	# _26->common.code, D.21751
	cmpb	$5, %al	#, D.21751
	je	.L767	#,
	.loc 1 3409 0
	movq	-80(%rbp), %rax	# op1, tmp140
	movq	%rax, %rdi	# tmp140,
	call	default_conversion	#
	movq	%rax, -80(%rbp)	# tmp141, op1
.L767:
	.loc 1 3410 0
	movq	-88(%rbp), %rax	# op2, tmp142
	movq	8(%rax), %rax	# op2_21(D)->common.type, D.21750
	movzbl	16(%rax), %eax	# _29->common.code, D.21751
	cmpb	$5, %al	#, D.21751
	je	.L768	#,
	.loc 1 3411 0
	movq	-88(%rbp), %rax	# op2, tmp143
	movq	%rax, %rdi	# tmp143,
	call	default_conversion	#
	movq	%rax, -88(%rbp)	# tmp144, op2
.L768:
	.loc 1 3413 0
	movq	-72(%rbp), %rax	# ifexp, tmp145
	movzbl	16(%rax), %eax	# ifexp_25->common.code, D.21751
	testb	%al, %al	# D.21751
	je	.L769	#,
	.loc 1 3414 0
	movq	-80(%rbp), %rax	# op1, tmp146
	movq	8(%rax), %rax	# op1_1->common.type, D.21750
	movzbl	16(%rax), %eax	# _33->common.code, D.21751
	testb	%al, %al	# D.21751
	je	.L769	#,
	.loc 1 3415 0
	movq	-88(%rbp), %rax	# op2, tmp147
	movq	8(%rax), %rax	# op2_5->common.type, D.21750
	movzbl	16(%rax), %eax	# _35->common.code, D.21751
	testb	%al, %al	# D.21751
	jne	.L770	#,
.L769:
	.loc 1 3416 0
	movq	global_trees(%rip), %rax	# global_trees, D.21749
	jmp	.L771	#
.L770:
	.loc 1 3418 0
	movq	-80(%rbp), %rax	# op1, tmp148
	movq	8(%rax), %rax	# op1_1->common.type, tmp149
	movq	%rax, -16(%rbp)	# tmp149, type1
	.loc 1 3419 0
	movq	-16(%rbp), %rax	# type1, tmp150
	movzbl	16(%rax), %eax	# type1_37->common.code, D.21751
	movzbl	%al, %eax	# D.21751, tmp151
	movl	%eax, -56(%rbp)	# tmp151, code1
	.loc 1 3420 0
	movq	-88(%rbp), %rax	# op2, tmp152
	movq	8(%rax), %rax	# op2_5->common.type, tmp153
	movq	%rax, -8(%rbp)	# tmp153, type2
	.loc 1 3421 0
	movq	-8(%rbp), %rax	# type2, tmp154
	movzbl	16(%rax), %eax	# type2_40->common.code, D.21751
	movzbl	%al, %eax	# D.21751, tmp155
	movl	%eax, -52(%rbp)	# tmp155, code2
	.loc 1 3425 0
	movq	-16(%rbp), %rax	# type1, tmp156
	movq	128(%rax), %rdx	# type1_37->type.main_variant, D.21750
	movq	-8(%rbp), %rax	# type2, tmp157
	movq	128(%rax), %rax	# type2_40->type.main_variant, D.21750
	cmpq	%rax, %rdx	# D.21750, D.21750
	jne	.L772	#,
	.loc 1 3427 0
	movq	-16(%rbp), %rax	# type1, tmp158
	cmpq	-8(%rbp), %rax	# type2, tmp158
	jne	.L773	#,
	.loc 1 3428 0
	movq	-16(%rbp), %rax	# type1, tmp159
	movq	%rax, -40(%rbp)	# tmp159, result_type
	jmp	.L775	#
.L773:
	.loc 1 3430 0
	movq	-16(%rbp), %rax	# type1, tmp160
	movq	128(%rax), %rax	# type1_37->type.main_variant, tmp161
	movq	%rax, -40(%rbp)	# tmp161, result_type
	jmp	.L775	#
.L772:
	.loc 1 3432 0
	cmpl	$6, -56(%rbp)	#, code1
	je	.L776	#,
	.loc 1 3432 0 is_stmt 0 discriminator 1
	cmpl	$7, -56(%rbp)	#, code1
	je	.L776	#,
	.loc 1 3433 0 is_stmt 1
	cmpl	$8, -56(%rbp)	#, code1
	jne	.L777	#,
.L776:
	.loc 1 3434 0
	cmpl	$6, -52(%rbp)	#, code2
	je	.L778	#,
	.loc 1 3434 0 is_stmt 0 discriminator 1
	cmpl	$7, -52(%rbp)	#, code2
	je	.L778	#,
	.loc 1 3435 0 is_stmt 1
	cmpl	$8, -52(%rbp)	#, code2
	jne	.L777	#,
.L778:
	.loc 1 3437 0
	movq	-8(%rbp), %rdx	# type2, tmp162
	movq	-16(%rbp), %rax	# type1, tmp163
	movq	%rdx, %rsi	# tmp162,
	movq	%rax, %rdi	# tmp163,
	call	common_type	#
	movq	%rax, -40(%rbp)	# tmp164, result_type
	.loc 1 3444 0
	movl	warn_sign_compare(%rip), %eax	# warn_sign_compare, warn_sign_compare.146
	.loc 1 3445 0
	testl	%eax, %eax	# warn_sign_compare.146
	jns	.L779	#,
	.loc 1 3445 0 is_stmt 0 discriminator 1
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.147
	testl	%eax, %eax	# extra_warnings.147
	setne	%al	#, iftmp.145
	jmp	.L780	#
.L779:
	.loc 1 3445 0 discriminator 2
	movl	warn_sign_compare(%rip), %eax	# warn_sign_compare, warn_sign_compare.148
	testl	%eax, %eax	# warn_sign_compare.148
	setne	%al	#, iftmp.145
.L780:
	.loc 1 3444 0 is_stmt 1
	testb	%al, %al	# iftmp.145
	je	.L781	#,
	.loc 1 3445 0
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.149
	testl	%eax, %eax	# skip_evaluation.149
	jne	.L781	#,
.LBB43:
	.loc 1 3447 0
	movq	-32(%rbp), %rax	# orig_op1, tmp165
	movq	8(%rax), %rax	# orig_op1_20->common.type, D.21750
	movzbl	17(%rax), %eax	# *_54, tmp168
	shrb	$5, %al	#, D.21752
	andl	$1, %eax	#, D.21752
	movzbl	%al, %eax	# D.21752, tmp169
	movl	%eax, -48(%rbp)	# tmp169, unsigned_op1
	.loc 1 3448 0
	movq	-24(%rbp), %rax	# orig_op2, tmp170
	movq	8(%rax), %rax	# orig_op2_22->common.type, D.21750
	movzbl	17(%rax), %eax	# *_57, tmp173
	shrb	$5, %al	#, D.21752
	andl	$1, %eax	#, D.21752
	movzbl	%al, %eax	# D.21752, tmp174
	movl	%eax, -44(%rbp)	# tmp174, unsigned_op2
	.loc 1 3450 0
	movl	-48(%rbp), %eax	# unsigned_op1, tmp175
	cmpl	-44(%rbp), %eax	# unsigned_op2, tmp175
	je	.L781	#,
	.loc 1 3455 0
	movq	-40(%rbp), %rax	# result_type, tmp176
	movzbl	17(%rax), %eax	# *result_type_47, D.21751
	andl	$32, %eax	#, D.21751
	testb	%al, %al	# D.21751
	je	.L781	#,
	.loc 1 3460 0
	cmpl	$0, -44(%rbp)	#, unsigned_op2
	je	.L782	#,
	.loc 1 3460 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# op1, tmp177
	movq	%rax, %rdi	# tmp177,
	call	tree_expr_nonnegative_p	#
	testl	%eax, %eax	# D.21753
	je	.L782	#,
	jmp	.L781	#
.L782:
	.loc 1 3461 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, unsigned_op1
	je	.L783	#,
	.loc 1 3461 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# op2, tmp178
	movq	%rax, %rdi	# tmp178,
	call	tree_expr_nonnegative_p	#
	testl	%eax, %eax	# D.21753
	je	.L783	#,
	jmp	.L781	#
.L783:
	.loc 1 3464 0 is_stmt 1
	movl	$.LC112, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.LBE43:
	.loc 1 3444 0
	jmp	.L775	#
.L781:
	.loc 1 3444 0 is_stmt 0 discriminator 1
	jmp	.L775	#
.L777:
	.loc 1 3468 0 is_stmt 1
	cmpl	$5, -56(%rbp)	#, code1
	je	.L784	#,
	.loc 1 3468 0 is_stmt 0 discriminator 1
	cmpl	$5, -52(%rbp)	#, code2
	jne	.L785	#,
.L784:
	.loc 1 3470 0 is_stmt 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.150
	testl	%eax, %eax	# pedantic.150
	je	.L786	#,
	.loc 1 3470 0 is_stmt 0 discriminator 1
	cmpl	$5, -56(%rbp)	#, code1
	jne	.L787	#,
	cmpl	$5, -52(%rbp)	#, code2
	je	.L786	#,
.L787:
	.loc 1 3471 0 is_stmt 1
	movl	$.LC113, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L786:
	.loc 1 3472 0
	movq	global_trees+216(%rip), %rax	# global_trees, tmp179
	movq	%rax, -40(%rbp)	# tmp179, result_type
	jmp	.L775	#
.L785:
	.loc 1 3474 0
	cmpl	$13, -56(%rbp)	#, code1
	jne	.L788	#,
	.loc 1 3474 0 is_stmt 0 discriminator 1
	cmpl	$13, -52(%rbp)	#, code2
	jne	.L788	#,
	.loc 1 3476 0 is_stmt 1
	movq	-8(%rbp), %rdx	# type2, tmp180
	movq	-16(%rbp), %rax	# type1, tmp181
	movq	%rdx, %rsi	# tmp180,
	movq	%rax, %rdi	# tmp181,
	call	comp_target_types	#
	testl	%eax, %eax	# D.21753
	je	.L789	#,
	.loc 1 3477 0
	movq	-8(%rbp), %rdx	# type2, tmp182
	movq	-16(%rbp), %rax	# type1, tmp183
	movq	%rdx, %rsi	# tmp182,
	movq	%rax, %rdi	# tmp183,
	call	common_type	#
	movq	%rax, -40(%rbp)	# tmp184, result_type
	jmp	.L790	#
.L789:
	.loc 1 3478 0
	movq	-80(%rbp), %rax	# op1, tmp185
	movq	%rax, %rdi	# tmp185,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21753
	je	.L791	#,
	.loc 1 3478 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# type1, tmp186
	movq	8(%rax), %rdx	# type1_37->common.type, D.21750
	movq	global_trees+216(%rip), %rax	# global_trees, D.21750
	cmpq	%rax, %rdx	# D.21750, D.21750
	jne	.L791	#,
	.loc 1 3479 0 is_stmt 1
	movq	-32(%rbp), %rax	# orig_op1, tmp187
	movzbl	16(%rax), %eax	# orig_op1_20->common.code, D.21751
	cmpb	$115, %al	#, D.21751
	je	.L791	#,
	.loc 1 3480 0
	movq	-16(%rbp), %rdx	# type1, tmp188
	movq	-8(%rbp), %rax	# type2, tmp189
	movq	%rdx, %rsi	# tmp188,
	movq	%rax, %rdi	# tmp189,
	call	qualify_type	#
	movq	%rax, -40(%rbp)	# tmp190, result_type
	jmp	.L790	#
.L791:
	.loc 1 3481 0
	movq	-88(%rbp), %rax	# op2, tmp191
	movq	%rax, %rdi	# tmp191,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21753
	je	.L792	#,
	.loc 1 3481 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# type2, tmp192
	movq	8(%rax), %rdx	# type2_40->common.type, D.21750
	movq	global_trees+216(%rip), %rax	# global_trees, D.21750
	cmpq	%rax, %rdx	# D.21750, D.21750
	jne	.L792	#,
	.loc 1 3482 0 is_stmt 1
	movq	-24(%rbp), %rax	# orig_op2, tmp193
	movzbl	16(%rax), %eax	# orig_op2_22->common.code, D.21751
	cmpb	$115, %al	#, D.21751
	je	.L792	#,
	.loc 1 3483 0
	movq	-8(%rbp), %rdx	# type2, tmp194
	movq	-16(%rbp), %rax	# type1, tmp195
	movq	%rdx, %rsi	# tmp194,
	movq	%rax, %rdi	# tmp195,
	call	qualify_type	#
	movq	%rax, -40(%rbp)	# tmp196, result_type
	jmp	.L790	#
.L792:
	.loc 1 3484 0
	movq	-16(%rbp), %rax	# type1, tmp197
	movq	8(%rax), %rax	# type1_37->common.type, D.21750
	movzbl	16(%rax), %eax	# _76->common.code, D.21751
	cmpb	$5, %al	#, D.21751
	jne	.L793	#,
	.loc 1 3486 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.151
	testl	%eax, %eax	# pedantic.151
	je	.L794	#,
	.loc 1 3486 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# type2, tmp198
	movq	8(%rax), %rax	# type2_40->common.type, D.21750
	movzbl	16(%rax), %eax	# _79->common.code, D.21751
	cmpb	$23, %al	#, D.21751
	jne	.L794	#,
	.loc 1 3487 0 is_stmt 1
	movl	$.LC114, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L794:
	.loc 1 3488 0
	movq	-8(%rbp), %rax	# type2, tmp199
	movq	8(%rax), %rdx	# type2_40->common.type, D.21750
	movq	-16(%rbp), %rax	# type1, tmp200
	movq	8(%rax), %rax	# type1_37->common.type, D.21750
	movq	%rdx, %rsi	# D.21750,
	movq	%rax, %rdi	# D.21750,
	call	qualify_type	#
	movq	%rax, %rdi	# D.21750,
	call	build_pointer_type	#
	movq	%rax, -40(%rbp)	# tmp201, result_type
	jmp	.L790	#
.L793:
	.loc 1 3491 0
	movq	-8(%rbp), %rax	# type2, tmp202
	movq	8(%rax), %rax	# type2_40->common.type, D.21750
	movzbl	16(%rax), %eax	# _85->common.code, D.21751
	cmpb	$5, %al	#, D.21751
	jne	.L795	#,
	.loc 1 3493 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.152
	testl	%eax, %eax	# pedantic.152
	je	.L796	#,
	.loc 1 3493 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# type1, tmp203
	movq	8(%rax), %rax	# type1_37->common.type, D.21750
	movzbl	16(%rax), %eax	# _88->common.code, D.21751
	cmpb	$23, %al	#, D.21751
	jne	.L796	#,
	.loc 1 3494 0 is_stmt 1
	movl	$.LC114, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L796:
	.loc 1 3495 0
	movq	-16(%rbp), %rax	# type1, tmp204
	movq	8(%rax), %rdx	# type1_37->common.type, D.21750
	movq	-8(%rbp), %rax	# type2, tmp205
	movq	8(%rax), %rax	# type2_40->common.type, D.21750
	movq	%rdx, %rsi	# D.21750,
	movq	%rax, %rdi	# D.21750,
	call	qualify_type	#
	movq	%rax, %rdi	# D.21750,
	call	build_pointer_type	#
	movq	%rax, -40(%rbp)	# tmp206, result_type
	jmp	.L790	#
.L795:
	.loc 1 3500 0
	movl	$.LC115, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 3501 0
	movq	global_trees+216(%rip), %rax	# global_trees, D.21750
	movq	%rax, %rdi	# D.21750,
	call	build_pointer_type	#
	movq	%rax, -40(%rbp)	# tmp207, result_type
	.loc 1 3476 0
	jmp	.L775	#
.L790:
	jmp	.L775	#
.L788:
	.loc 1 3504 0
	cmpl	$13, -56(%rbp)	#, code1
	jne	.L797	#,
	.loc 1 3504 0 is_stmt 0 discriminator 1
	cmpl	$6, -52(%rbp)	#, code2
	jne	.L797	#,
	.loc 1 3506 0 is_stmt 1
	movq	-88(%rbp), %rax	# op2, tmp208
	movq	%rax, %rdi	# tmp208,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21753
	jne	.L798	#,
	.loc 1 3507 0
	movl	$.LC116, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L799	#
.L798:
	.loc 1 3510 0
	movq	global_trees+112(%rip), %rax	# global_trees, tmp209
	movq	%rax, -88(%rbp)	# tmp209, op2
.L799:
	.loc 1 3512 0
	movq	-16(%rbp), %rax	# type1, tmp210
	movq	%rax, -40(%rbp)	# tmp210, result_type
	jmp	.L775	#
.L797:
	.loc 1 3514 0
	cmpl	$13, -52(%rbp)	#, code2
	jne	.L775	#,
	.loc 1 3514 0 is_stmt 0 discriminator 1
	cmpl	$6, -56(%rbp)	#, code1
	jne	.L775	#,
	.loc 1 3516 0 is_stmt 1
	movq	-80(%rbp), %rax	# op1, tmp211
	movq	%rax, %rdi	# tmp211,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21753
	jne	.L800	#,
	.loc 1 3517 0
	movl	$.LC116, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L801	#
.L800:
	.loc 1 3520 0
	movq	global_trees+112(%rip), %rax	# global_trees, tmp212
	movq	%rax, -80(%rbp)	# tmp212, op1
.L801:
	.loc 1 3522 0
	movq	-8(%rbp), %rax	# type2, tmp213
	movq	%rax, -40(%rbp)	# tmp213, result_type
.L775:
	.loc 1 3525 0
	cmpq	$0, -40(%rbp)	#, result_type
	jne	.L802	#,
	.loc 1 3527 0
	movl	flag_cond_mismatch(%rip), %eax	# flag_cond_mismatch, flag_cond_mismatch.153
	testl	%eax, %eax	# flag_cond_mismatch.153
	je	.L803	#,
	.loc 1 3528 0
	movq	global_trees+216(%rip), %rax	# global_trees, tmp214
	movq	%rax, -40(%rbp)	# tmp214, result_type
	jmp	.L802	#
.L803:
	.loc 1 3531 0
	movl	$.LC117, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3532 0
	movq	global_trees(%rip), %rax	# global_trees, D.21749
	jmp	.L771	#
.L802:
	.loc 1 3538 0
	movq	-80(%rbp), %rax	# op1, tmp215
	movzbl	17(%rax), %eax	# *op1_3, D.21751
	andl	$16, %eax	#, D.21751
	testb	%al, %al	# D.21751
	jne	.L804	#,
	.loc 1 3538 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# op2, tmp216
	movzbl	17(%rax), %eax	# *op2_7, D.21751
	andl	$16, %eax	#, D.21751
	testb	%al, %al	# D.21751
	je	.L805	#,
.L804:
	.loc 1 3538 0 discriminator 1
	movl	$1, %edx	#, iftmp.154
	jmp	.L806	#
.L805:
	.loc 1 3538 0 discriminator 3
	movl	$0, %edx	#, iftmp.154
.L806:
	.loc 1 3538 0 discriminator 4
	movq	-80(%rbp), %rax	# op1, tmp217
	movzbl	17(%rax), %eax	# *op1_3, D.21751
	andl	$8, %eax	#, D.21751
	testb	%al, %al	# D.21751
	jne	.L807	#,
	.loc 1 3538 0 discriminator 2
	movq	-88(%rbp), %rax	# op2, tmp218
	movzbl	17(%rax), %eax	# *op2_7, D.21751
	andl	$8, %eax	#, D.21751
	testb	%al, %al	# D.21751
	je	.L808	#,
.L807:
	.loc 1 3538 0 discriminator 1
	movl	$2, %eax	#, iftmp.155
	jmp	.L809	#
.L808:
	movl	$0, %eax	#, iftmp.155
.L809:
	.loc 1 3538 0 discriminator 3
	orl	%eax, %edx	# iftmp.155, D.21753
	movq	-40(%rbp), %rax	# result_type, tmp219
	movl	%edx, %esi	# D.21753,
	movq	%rax, %rdi	# tmp219,
	call	build_qualified_type	#
	movq	%rax, -40(%rbp)	# tmp220, result_type
	.loc 1 3542 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# op1, tmp221
	movq	8(%rax), %rax	# op1_3->common.type, D.21750
	cmpq	-40(%rbp), %rax	# result_type, D.21750
	je	.L810	#,
	.loc 1 3543 0
	movq	-80(%rbp), %rdx	# op1, tmp222
	movq	-40(%rbp), %rax	# result_type, tmp223
	movq	%rdx, %rsi	# tmp222,
	movq	%rax, %rdi	# tmp223,
	call	convert_and_check	#
	movq	%rax, -80(%rbp)	# tmp224, op1
.L810:
	.loc 1 3544 0
	movq	-88(%rbp), %rax	# op2, tmp225
	movq	8(%rax), %rax	# op2_7->common.type, D.21750
	cmpq	-40(%rbp), %rax	# result_type, D.21750
	je	.L811	#,
	.loc 1 3545 0
	movq	-88(%rbp), %rdx	# op2, tmp226
	movq	-40(%rbp), %rax	# result_type, tmp227
	movq	%rdx, %rsi	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	convert_and_check	#
	movq	%rax, -88(%rbp)	# tmp228, op2
.L811:
	.loc 1 3547 0
	movq	-72(%rbp), %rax	# ifexp, tmp229
	movzbl	16(%rax), %eax	# ifexp_25->common.code, D.21751
	cmpb	$25, %al	#, D.21751
	jne	.L812	#,
	.loc 1 3548 0
	movq	-72(%rbp), %rax	# ifexp, tmp230
	movq	%rax, %rdi	# tmp230,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21753
	je	.L813	#,
	.loc 1 3548 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# op2, iftmp.156
	jmp	.L814	#
.L813:
	.loc 1 3548 0 discriminator 2
	movq	-80(%rbp), %rax	# op1, iftmp.156
.L814:
	.loc 1 3548 0 discriminator 3
	movq	%rax, %rdi	# iftmp.156,
	call	pedantic_non_lvalue	#
	jmp	.L771	#
.L812:
	.loc 1 3550 0 is_stmt 1
	movq	-88(%rbp), %rsi	# op2, tmp231
	movq	-80(%rbp), %rcx	# op1, tmp232
	movq	-72(%rbp), %rdx	# ifexp, tmp233
	movq	-40(%rbp), %rax	# result_type, tmp234
	movq	%rsi, %r8	# tmp231,
	movq	%rax, %rsi	# tmp234,
	movl	$51, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21750,
	call	fold	#
.L771:
	.loc 1 3551 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	build_conditional_expr, .-build_conditional_expr
	.globl	build_compound_expr
	.type	build_compound_expr, @function
build_compound_expr:
.LFB35:
	.loc 1 3559 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# list, list
	.loc 1 3560 0
	movq	-8(%rbp), %rax	# list, tmp61
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	internal_build_compound_expr	#
	.loc 1 3561 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	build_compound_expr, .-build_compound_expr
	.section	.rodata
	.align 8
.LC118:
	.string	"left-hand operand of comma expression has no effect"
	.text
	.type	internal_build_compound_expr, @function
internal_build_compound_expr:
.LFB36:
	.loc 1 3567 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# list, list
	movl	%esi, -28(%rbp)	# first_p, first_p
	.loc 1 3570 0
	movq	-24(%rbp), %rax	# list, tmp83
	movq	(%rax), %rax	# list_2(D)->common.chain, D.21762
	testq	%rax, %rax	# D.21762
	jne	.L818	#,
	.loc 1 3574 0
	cmpl	$0, -28(%rbp)	#, first_p
	jne	.L819	#,
	.loc 1 3576 0
	movq	-24(%rbp), %rax	# list, tmp84
	movq	32(%rax), %rax	# list_2(D)->list.value, D.21762
	movq	%rax, %rdi	# D.21762,
	call	default_function_array_conversion	#
	movq	-24(%rbp), %rdx	# list, tmp85
	movq	%rax, 32(%rdx)	# D.21762, list_2(D)->list.value
.L819:
	.loc 1 3587 0
	cmpl	$0, -28(%rbp)	#, first_p
	jne	.L820	#,
	.loc 1 3587 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# list, tmp86
	movq	32(%rax), %rax	# list_2(D)->list.value, D.21762
	movq	%rax, %rdi	# D.21762,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21763
	je	.L820	#,
	.loc 1 3588 0 is_stmt 1
	movq	-24(%rbp), %rax	# list, tmp87
	movq	32(%rax), %rax	# list_2(D)->list.value, D.21762
	movq	%rax, %rdi	# D.21762,
	call	non_lvalue	#
	jmp	.L821	#
.L820:
	.loc 1 3589 0
	movq	-24(%rbp), %rax	# list, tmp88
	movq	32(%rax), %rax	# list_2(D)->list.value, D.21761
	jmp	.L821	#
.L818:
	.loc 1 3592 0
	movq	-24(%rbp), %rax	# list, tmp89
	movq	(%rax), %rax	# list_2(D)->common.chain, D.21762
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21762,
	call	internal_build_compound_expr	#
	movq	%rax, -8(%rbp)	# tmp90, rest
	.loc 1 3594 0
	movq	-24(%rbp), %rax	# list, tmp91
	movq	32(%rax), %rax	# list_2(D)->list.value, D.21762
	movzbl	17(%rax), %eax	# *_14, D.21764
	andl	$1, %eax	#, D.21764
	testb	%al, %al	# D.21764
	jne	.L822	#,
	.loc 1 3599 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.157
	testl	%eax, %eax	# extra_warnings.157
	jne	.L823	#,
	.loc 1 3599 0 is_stmt 0 discriminator 1
	movl	warn_unused_value(%rip), %eax	# warn_unused_value, warn_unused_value.158
	testl	%eax, %eax	# warn_unused_value.158
	je	.L824	#,
.L823:
	.loc 1 3600 0 is_stmt 1
	movq	-24(%rbp), %rax	# list, tmp92
	movq	32(%rax), %rax	# list_2(D)->list.value, D.21762
	movzbl	16(%rax), %eax	# _19->common.code, D.21764
	cmpb	$114, %al	#, D.21764
	jne	.L825	#,
	.loc 1 3601 0 discriminator 1
	movq	-24(%rbp), %rax	# list, tmp93
	movq	32(%rax), %rax	# list_2(D)->list.value, D.21762
	movq	8(%rax), %rax	# _21->common.type, D.21762
	movzbl	16(%rax), %eax	# _22->common.code, D.21764
	.loc 1 3600 0 discriminator 1
	cmpb	$5, %al	#, D.21764
	je	.L824	#,
.L825:
	.loc 1 3602 0
	movl	$.LC118, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L824:
	.loc 1 3606 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.159
	testl	%eax, %eax	# pedantic.159
	jne	.L826	#,
	.loc 1 3607 0
	movq	-8(%rbp), %rax	# rest, D.21761
	jmp	.L821	#
.L822:
	.loc 1 3614 0
	movl	warn_unused_value(%rip), %eax	# warn_unused_value, warn_unused_value.160
	testl	%eax, %eax	# warn_unused_value.160
	je	.L826	#,
	.loc 1 3615 0
	movq	-24(%rbp), %rax	# list, tmp94
	movq	32(%rax), %rax	# list_2(D)->list.value, D.21762
	movq	%rax, %rdi	# D.21762,
	call	warn_if_unused_value	#
.L826:
	.loc 1 3617 0
	movq	-24(%rbp), %rax	# list, tmp95
	movq	32(%rax), %rdx	# list_2(D)->list.value, D.21762
	movq	-8(%rbp), %rax	# rest, tmp96
	movq	8(%rax), %rax	# rest_13->common.type, D.21762
	movq	-8(%rbp), %rcx	# rest, tmp97
	movq	%rax, %rsi	# D.21762,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
.L821:
	.loc 1 3618 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	internal_build_compound_expr, .-internal_build_compound_expr
	.section	.rodata
.LC119:
	.string	"cast specifies array type"
.LC120:
	.string	"cast specifies function type"
	.align 8
.LC121:
	.string	"ISO C forbids casting nonscalar to the same type"
	.align 8
.LC122:
	.string	"ISO C forbids casts to union type"
.LC123:
	.string	""
	.align 8
.LC124:
	.string	"cast to union type from type not present in union"
	.align 8
.LC125:
	.string	"cast adds new qualifiers to function type"
	.align 8
.LC126:
	.string	"cast discards qualifiers from pointer target type"
	.align 8
.LC127:
	.string	"cast from pointer to integer of different size"
	.align 8
.LC128:
	.string	"cast does not match function type"
	.align 8
.LC129:
	.string	"cast to pointer from integer of different size"
	.text
	.globl	build_c_cast
	.type	build_c_cast, @function
build_c_cast:
.LFB37:
	.loc 1 3626 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# type, type
	movq	%rsi, -96(%rbp)	# expr, expr
	.loc 1 3627 0
	movq	-96(%rbp), %rax	# expr, tmp183
	movq	%rax, -64(%rbp)	# tmp183, value
	.loc 1 3629 0
	movq	global_trees(%rip), %rax	# global_trees, D.21767
	cmpq	-88(%rbp), %rax	# type, D.21767
	je	.L828	#,
	.loc 1 3629 0 is_stmt 0 discriminator 1
	movq	global_trees(%rip), %rax	# global_trees, D.21767
	cmpq	-96(%rbp), %rax	# expr, D.21767
	jne	.L829	#,
.L828:
	.loc 1 3630 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.21766
	jmp	.L830	#
.L829:
	.loc 1 3631 0
	movq	-88(%rbp), %rax	# type, tmp184
	movq	128(%rax), %rax	# type_19(D)->type.main_variant, tmp185
	movq	%rax, -88(%rbp)	# tmp185, type
	.loc 1 3639 0
	movq	-88(%rbp), %rax	# type, tmp186
	movzbl	16(%rax), %eax	# type_21->common.code, D.21768
	cmpb	$18, %al	#, D.21768
	jne	.L831	#,
	.loc 1 3641 0
	movl	$.LC119, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3642 0
	movq	global_trees(%rip), %rax	# global_trees, D.21766
	jmp	.L830	#
.L831:
	.loc 1 3645 0
	movq	-88(%rbp), %rax	# type, tmp187
	movzbl	16(%rax), %eax	# type_21->common.code, D.21768
	cmpb	$23, %al	#, D.21768
	jne	.L832	#,
	.loc 1 3647 0
	movl	$.LC120, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3648 0
	movq	global_trees(%rip), %rax	# global_trees, D.21766
	jmp	.L830	#
.L832:
	.loc 1 3651 0
	movq	-64(%rbp), %rax	# value, tmp188
	movq	8(%rax), %rax	# value_17->common.type, D.21767
	movq	128(%rax), %rax	# _26->type.main_variant, D.21767
	cmpq	-88(%rbp), %rax	# type, D.21767
	jne	.L833	#,
	.loc 1 3653 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.161
	testl	%eax, %eax	# pedantic.161
	je	.L836	#,
	.loc 1 3655 0
	movq	-88(%rbp), %rax	# type, tmp189
	movzbl	16(%rax), %eax	# type_21->common.code, D.21768
	cmpb	$20, %al	#, D.21768
	je	.L835	#,
	.loc 1 3656 0
	movq	-88(%rbp), %rax	# type, tmp190
	movzbl	16(%rax), %eax	# type_21->common.code, D.21768
	cmpb	$21, %al	#, D.21768
	jne	.L836	#,
.L835:
	.loc 1 3657 0
	movl	$.LC121, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L836	#
.L833:
	.loc 1 3660 0
	movq	-88(%rbp), %rax	# type, tmp191
	movzbl	16(%rax), %eax	# type_21->common.code, D.21768
	cmpb	$21, %al	#, D.21768
	jne	.L837	#,
.LBB44:
	.loc 1 3663 0
	movq	-64(%rbp), %rax	# value, tmp192
	movq	%rax, %rdi	# tmp192,
	call	default_function_array_conversion	#
	movq	%rax, -64(%rbp)	# tmp193, value
	.loc 1 3665 0
	movq	-88(%rbp), %rax	# type, tmp194
	movq	24(%rax), %rax	# type_21->type.values, tmp195
	movq	%rax, -56(%rbp)	# tmp195, field
	jmp	.L838	#
.L841:
	.loc 1 3667 0
	movq	-64(%rbp), %rax	# value, tmp196
	movq	8(%rax), %rax	# value_32->common.type, D.21767
	.loc 1 3666 0
	movq	128(%rax), %rdx	# _34->type.main_variant, D.21767
	movq	-56(%rbp), %rax	# field, tmp197
	movq	8(%rax), %rax	# field_4->common.type, D.21767
	movq	128(%rax), %rax	# _36->type.main_variant, D.21767
	movq	%rdx, %rsi	# D.21767,
	movq	%rax, %rdi	# D.21767,
	call	comptypes	#
	testl	%eax, %eax	# D.21769
	je	.L839	#,
	.loc 1 3668 0
	jmp	.L840	#
.L839:
	.loc 1 3665 0
	movq	-56(%rbp), %rax	# field, tmp198
	movq	(%rax), %rax	# field_4->common.chain, tmp199
	movq	%rax, -56(%rbp)	# tmp199, field
.L838:
	.loc 1 3665 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, field
	jne	.L841	#,
.L840:
	.loc 1 3670 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, field
	je	.L842	#,
.LBB45:
	.loc 1 3675 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.162
	testl	%eax, %eax	# pedantic.162
	je	.L843	#,
	.loc 1 3676 0
	movl	$.LC122, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L843:
	.loc 1 3677 0
	movq	-88(%rbp), %rax	# type, tmp200
	movq	96(%rax), %rax	# type_21->type.name, D.21767
	testq	%rax, %rax	# D.21767
	je	.L844	#,
	.loc 1 3679 0
	movq	-88(%rbp), %rax	# type, tmp201
	movq	96(%rax), %rax	# type_21->type.name, D.21767
	movzbl	16(%rax), %eax	# _42->common.code, D.21768
	cmpb	$1, %al	#, D.21768
	jne	.L845	#,
	.loc 1 3680 0
	movq	-88(%rbp), %rax	# type, tmp202
	movq	96(%rax), %rax	# type_21->type.name, D.21767
	movq	32(%rax), %rax	# _44->identifier.id.str, tmp203
	movq	%rax, -32(%rbp)	# tmp203, name
	jmp	.L847	#
.L845:
	.loc 1 3682 0
	movq	-88(%rbp), %rax	# type, tmp204
	movq	96(%rax), %rax	# type_21->type.name, D.21767
	movq	72(%rax), %rax	# _46->decl.name, D.21767
	movq	32(%rax), %rax	# _47->identifier.id.str, tmp205
	movq	%rax, -32(%rbp)	# tmp205, name
	jmp	.L847	#
.L844:
	.loc 1 3685 0
	movq	$.LC123, -32(%rbp)	#, name
.L847:
	.loc 1 3686 0
	movq	-64(%rbp), %rdx	# value, tmp206
	movq	-56(%rbp), %rax	# field, tmp207
	movq	%rdx, %rsi	# tmp206,
	movq	%rax, %rdi	# tmp207,
	call	build_tree_list	#
	movq	%rax, %rdx	#, D.21767
	movq	-88(%rbp), %rax	# type, tmp208
	movq	%rdx, %rcx	# D.21767,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp208,
	movl	$46, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rsi	#, D.21767
	movq	-88(%rbp), %rax	# type, tmp209
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp209,
	call	digest_init	#
	movq	%rax, -24(%rbp)	# tmp210, t
	.loc 1 3689 0
	movq	-64(%rbp), %rax	# value, tmp211
	movzbl	17(%rax), %eax	# *value_32, tmp214
	shrb	%al	# D.21770
	andl	$1, %eax	#, D.21770
	movq	-24(%rbp), %rdx	# t, tmp215
	andl	$1, %eax	#, tmp217
	leal	(%rax,%rax), %ecx	#, tmp218
	movzbl	17(%rdx), %eax	#, tmp219
	andl	$-3, %eax	#, tmp220
	orl	%ecx, %eax	# tmp218, tmp221
	movb	%al, 17(%rdx)	# tmp221,
	.loc 1 3690 0
	movq	-24(%rbp), %rax	# t, D.21766
	jmp	.L830	#
.L842:
.LBE45:
	.loc 1 3692 0
	movl	$.LC124, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3693 0
	movq	global_trees(%rip), %rax	# global_trees, D.21766
	jmp	.L830	#
.L837:
.LBE44:
.LBB46:
	.loc 1 3701 0
	movq	global_trees+216(%rip), %rax	# global_trees, D.21767
	cmpq	-88(%rbp), %rax	# type, D.21767
	jne	.L848	#,
	.loc 1 3702 0
	movq	-64(%rbp), %rdx	# value, tmp222
	movq	-88(%rbp), %rax	# type, tmp223
	movq	%rax, %rsi	# tmp223,
	movl	$114, %edi	#,
	call	build1	#
	jmp	.L830	#
.L848:
	.loc 1 3706 0
	movq	-64(%rbp), %rax	# value, tmp224
	movq	%rax, %rdi	# tmp224,
	call	default_function_array_conversion	#
	movq	%rax, -64(%rbp)	# tmp225, value
	.loc 1 3707 0
	movq	-64(%rbp), %rax	# value, tmp226
	movq	8(%rax), %rax	# value_58->common.type, tmp227
	movq	%rax, -16(%rbp)	# tmp227, otype
	.loc 1 3711 0
	movl	warn_cast_qual(%rip), %eax	# warn_cast_qual, warn_cast_qual.163
	testl	%eax, %eax	# warn_cast_qual.163
	je	.L849	#,
	.loc 1 3712 0
	movq	-88(%rbp), %rax	# type, tmp228
	movzbl	16(%rax), %eax	# type_21->common.code, D.21768
	cmpb	$13, %al	#, D.21768
	jne	.L849	#,
	.loc 1 3713 0
	movq	-16(%rbp), %rax	# otype, tmp229
	movzbl	16(%rax), %eax	# otype_59->common.code, D.21768
	cmpb	$13, %al	#, D.21768
	jne	.L849	#,
.LBB47:
	.loc 1 3715 0
	movq	-88(%rbp), %rax	# type, tmp230
	movq	%rax, -48(%rbp)	# tmp230, in_type
	.loc 1 3716 0
	movq	-16(%rbp), %rax	# otype, tmp231
	movq	%rax, -40(%rbp)	# tmp231, in_otype
	.loc 1 3717 0
	movl	$0, -72(%rbp)	#, added
	.loc 1 3718 0
	movl	$0, -68(%rbp)	#, discarded
.L861:
	.loc 1 3726 0
	movq	-40(%rbp), %rax	# in_otype, tmp232
	movq	8(%rax), %rax	# in_otype_6->common.type, tmp233
	movq	%rax, -40(%rbp)	# tmp233, in_otype
	.loc 1 3727 0
	movq	-48(%rbp), %rax	# in_type, tmp234
	movq	8(%rax), %rax	# in_type_5->common.type, tmp235
	movq	%rax, -48(%rbp)	# tmp235, in_type
	.loc 1 3733 0
	movq	-40(%rbp), %rax	# in_otype, tmp236
	movzbl	16(%rax), %eax	# in_otype_67->common.code, D.21768
	cmpb	$23, %al	#, D.21768
	jne	.L850	#,
	.loc 1 3734 0
	movq	-48(%rbp), %rax	# in_type, tmp237
	movzbl	16(%rax), %eax	# in_type_68->common.code, D.21768
	cmpb	$23, %al	#, D.21768
	jne	.L850	#,
	.loc 1 3735 0
	movq	-48(%rbp), %rax	# in_type, tmp238
	movzbl	17(%rax), %eax	# *in_type_68, tmp241
	shrb	$4, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %edx	# D.21770, D.21769
	movq	-48(%rbp), %rax	# in_type, tmp242
	movzbl	17(%rax), %eax	# *in_type_68, tmp245
	shrb	$3, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %eax	# D.21770, D.21769
	addl	%eax, %eax	# D.21769
	orl	%eax, %edx	# D.21769, D.21769
	movq	-48(%rbp), %rax	# in_type, tmp246
	movzbl	62(%rax), %eax	# *in_type_68, tmp249
	shrb	$5, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %eax	# D.21770, D.21769
	sall	$2, %eax	#, D.21769
	orl	%eax, %edx	# D.21769, D.21769
	movq	-48(%rbp), %rax	# in_type, tmp250
	movzbl	16(%rax), %eax	# in_type_68->common.code, D.21768
	cmpb	$20, %al	#, D.21768
	jne	.L851	#,
	.loc 1 3735 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# in_type, tmp251
	movq	8(%rax), %rax	# in_type_68->common.type, D.21767
	testq	%rax, %rax	# D.21767
	je	.L851	#,
	.loc 1 3735 0 discriminator 3
	movl	$1, %eax	#, iftmp.164
	jmp	.L852	#
.L851:
	.loc 1 3735 0 discriminator 2
	movl	$0, %eax	#, iftmp.164
.L852:
	.loc 1 3735 0 discriminator 4
	sall	$3, %eax	#, D.21769
	movl	%edx, %ecx	# D.21769, D.21769
	orl	%eax, %ecx	# D.21769, D.21769
	movq	-40(%rbp), %rax	# in_otype, tmp252
	movzbl	17(%rax), %eax	# *in_otype_67, tmp255
	shrb	$4, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %edx	# D.21770, D.21769
	movq	-40(%rbp), %rax	# in_otype, tmp256
	movzbl	17(%rax), %eax	# *in_otype_67, tmp259
	shrb	$3, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %eax	# D.21770, D.21769
	addl	%eax, %eax	# D.21769
	orl	%eax, %edx	# D.21769, D.21769
	movq	-40(%rbp), %rax	# in_otype, tmp260
	movzbl	62(%rax), %eax	# *in_otype_67, tmp263
	shrb	$5, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %eax	# D.21770, D.21769
	sall	$2, %eax	#, D.21769
	orl	%eax, %edx	# D.21769, D.21769
	movq	-40(%rbp), %rax	# in_otype, tmp264
	movzbl	16(%rax), %eax	# in_otype_67->common.code, D.21768
	cmpb	$20, %al	#, D.21768
	jne	.L853	#,
	.loc 1 3735 0 discriminator 1
	movq	-40(%rbp), %rax	# in_otype, tmp265
	movq	8(%rax), %rax	# in_otype_67->common.type, D.21767
	testq	%rax, %rax	# D.21767
	je	.L853	#,
	.loc 1 3735 0 discriminator 3
	movl	$1, %eax	#, iftmp.165
	jmp	.L854	#
.L853:
	.loc 1 3735 0 discriminator 2
	movl	$0, %eax	#, iftmp.165
.L854:
	.loc 1 3735 0 discriminator 4
	sall	$3, %eax	#, D.21769
	orl	%edx, %eax	# D.21769, D.21769
	notl	%eax	# D.21769
	andl	%ecx, %eax	# D.21769, D.21769
	orl	%eax, -72(%rbp)	# D.21769, added
	jmp	.L855	#
.L850:
	.loc 1 3737 0 is_stmt 1
	movq	-40(%rbp), %rax	# in_otype, tmp266
	movzbl	17(%rax), %eax	# *in_otype_67, tmp269
	shrb	$4, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %edx	# D.21770, D.21769
	movq	-40(%rbp), %rax	# in_otype, tmp270
	movzbl	17(%rax), %eax	# *in_otype_67, tmp273
	shrb	$3, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %eax	# D.21770, D.21769
	addl	%eax, %eax	# D.21769
	orl	%eax, %edx	# D.21769, D.21769
	movq	-40(%rbp), %rax	# in_otype, tmp274
	movzbl	62(%rax), %eax	# *in_otype_67, tmp277
	shrb	$5, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %eax	# D.21770, D.21769
	sall	$2, %eax	#, D.21769
	orl	%eax, %edx	# D.21769, D.21769
	movq	-40(%rbp), %rax	# in_otype, tmp278
	movzbl	16(%rax), %eax	# in_otype_67->common.code, D.21768
	cmpb	$20, %al	#, D.21768
	jne	.L856	#,
	.loc 1 3737 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# in_otype, tmp279
	movq	8(%rax), %rax	# in_otype_67->common.type, D.21767
	testq	%rax, %rax	# D.21767
	je	.L856	#,
	.loc 1 3737 0 discriminator 3
	movl	$1, %eax	#, iftmp.166
	jmp	.L857	#
.L856:
	.loc 1 3737 0 discriminator 2
	movl	$0, %eax	#, iftmp.166
.L857:
	.loc 1 3737 0 discriminator 4
	sall	$3, %eax	#, D.21769
	movl	%edx, %ecx	# D.21769, D.21769
	orl	%eax, %ecx	# D.21769, D.21769
	movq	-48(%rbp), %rax	# in_type, tmp280
	movzbl	17(%rax), %eax	# *in_type_68, tmp283
	shrb	$4, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %edx	# D.21770, D.21769
	movq	-48(%rbp), %rax	# in_type, tmp284
	movzbl	17(%rax), %eax	# *in_type_68, tmp287
	shrb	$3, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %eax	# D.21770, D.21769
	addl	%eax, %eax	# D.21769
	orl	%eax, %edx	# D.21769, D.21769
	movq	-48(%rbp), %rax	# in_type, tmp288
	movzbl	62(%rax), %eax	# *in_type_68, tmp291
	shrb	$5, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movzbl	%al, %eax	# D.21770, D.21769
	sall	$2, %eax	#, D.21769
	orl	%eax, %edx	# D.21769, D.21769
	movq	-48(%rbp), %rax	# in_type, tmp292
	movzbl	16(%rax), %eax	# in_type_68->common.code, D.21768
	cmpb	$20, %al	#, D.21768
	jne	.L858	#,
	.loc 1 3737 0 discriminator 1
	movq	-48(%rbp), %rax	# in_type, tmp293
	movq	8(%rax), %rax	# in_type_68->common.type, D.21767
	testq	%rax, %rax	# D.21767
	je	.L858	#,
	.loc 1 3737 0 discriminator 3
	movl	$1, %eax	#, iftmp.167
	jmp	.L859	#
.L858:
	.loc 1 3737 0 discriminator 2
	movl	$0, %eax	#, iftmp.167
.L859:
	.loc 1 3737 0 discriminator 4
	sall	$3, %eax	#, D.21769
	orl	%edx, %eax	# D.21769, D.21769
	notl	%eax	# D.21769
	andl	%ecx, %eax	# D.21769, D.21769
	orl	%eax, -68(%rbp)	# D.21769, discarded
.L855:
	.loc 1 3739 0 is_stmt 1
	movq	-48(%rbp), %rax	# in_type, tmp294
	movzbl	16(%rax), %eax	# in_type_68->common.code, D.21768
	.loc 1 3740 0
	cmpb	$13, %al	#, D.21768
	jne	.L860	#,
	.loc 1 3740 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# in_otype, tmp295
	movzbl	16(%rax), %eax	# in_otype_67->common.code, D.21768
	cmpb	$13, %al	#, D.21768
	je	.L861	#,
.L860:
	.loc 1 3742 0 is_stmt 1
	cmpl	$0, -72(%rbp)	#, added
	je	.L862	#,
	.loc 1 3743 0
	movl	$.LC125, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L862:
	.loc 1 3745 0
	cmpl	$0, -68(%rbp)	#, discarded
	je	.L849	#,
	.loc 1 3748 0
	movl	$.LC126, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L849:
.LBE47:
	.loc 1 3765 0
	movq	-88(%rbp), %rax	# type, tmp296
	movzbl	16(%rax), %eax	# type_21->common.code, D.21768
	cmpb	$6, %al	#, D.21768
	jne	.L863	#,
	.loc 1 3766 0
	movq	-16(%rbp), %rax	# otype, tmp297
	movzbl	16(%rax), %eax	# otype_59->common.code, D.21768
	cmpb	$13, %al	#, D.21768
	jne	.L863	#,
	.loc 1 3767 0
	movq	-88(%rbp), %rax	# type, tmp298
	movzwl	60(%rax), %eax	# *type_21, tmp301
	andw	$511, %ax	#, D.21771
	movl	%eax, %edx	# D.21771, D.21771
	movq	-16(%rbp), %rax	# otype, tmp302
	movzwl	60(%rax), %eax	# *otype_59, tmp305
	andw	$511, %ax	#, D.21771
	cmpw	%ax, %dx	# D.21771, D.21771
	je	.L863	#,
	.loc 1 3768 0
	movq	-64(%rbp), %rax	# value, tmp306
	movzbl	17(%rax), %eax	# *value_58, D.21768
	andl	$2, %eax	#, D.21768
	testb	%al, %al	# D.21768
	jne	.L863	#,
	.loc 1 3769 0
	movl	$.LC127, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L863:
	.loc 1 3771 0
	movl	warn_bad_function_cast(%rip), %eax	# warn_bad_function_cast, warn_bad_function_cast.168
	testl	%eax, %eax	# warn_bad_function_cast.168
	je	.L864	#,
	.loc 1 3772 0
	movq	-64(%rbp), %rax	# value, tmp307
	movzbl	16(%rax), %eax	# value_58->common.code, D.21768
	cmpb	$53, %al	#, D.21768
	jne	.L864	#,
	.loc 1 3773 0
	movq	-88(%rbp), %rax	# type, tmp308
	movzbl	16(%rax), %edx	# type_21->common.code, D.21768
	movq	-16(%rbp), %rax	# otype, tmp309
	movzbl	16(%rax), %eax	# otype_59->common.code, D.21768
	cmpb	%al, %dl	# D.21768, D.21768
	je	.L864	#,
	.loc 1 3774 0
	movl	$.LC128, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L864:
	.loc 1 3776 0
	movq	-88(%rbp), %rax	# type, tmp310
	movzbl	16(%rax), %eax	# type_21->common.code, D.21768
	cmpb	$13, %al	#, D.21768
	jne	.L865	#,
	.loc 1 3777 0
	movq	-16(%rbp), %rax	# otype, tmp311
	movzbl	16(%rax), %eax	# otype_59->common.code, D.21768
	cmpb	$6, %al	#, D.21768
	jne	.L865	#,
	.loc 1 3778 0
	movq	-88(%rbp), %rax	# type, tmp312
	movzwl	60(%rax), %eax	# *type_21, tmp315
	andw	$511, %ax	#, D.21771
	movl	%eax, %edx	# D.21771, D.21771
	movq	-16(%rbp), %rax	# otype, tmp316
	movzwl	60(%rax), %eax	# *otype_59, tmp319
	andw	$511, %ax	#, D.21771
	cmpw	%ax, %dx	# D.21771, D.21771
	je	.L865	#,
	.loc 1 3780 0
	movq	-64(%rbp), %rax	# value, tmp320
	movzbl	17(%rax), %eax	# *value_58, D.21768
	andl	$2, %eax	#, D.21768
	testb	%al, %al	# D.21768
	jne	.L865	#,
	.loc 1 3781 0
	movl	$.LC129, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L865:
	.loc 1 3783 0
	movq	-64(%rbp), %rax	# value, tmp321
	movq	%rax, -8(%rbp)	# tmp321, ovalue
	.loc 1 3784 0
	movq	-64(%rbp), %rdx	# value, tmp322
	movq	-88(%rbp), %rax	# type, tmp323
	movq	%rdx, %rsi	# tmp322,
	movq	%rax, %rdi	# tmp323,
	call	convert	#
	movq	%rax, -64(%rbp)	# tmp324, value
	.loc 1 3787 0
	movq	-64(%rbp), %rax	# value, tmp325
	movzbl	16(%rax), %eax	# value_160->common.code, D.21768
	cmpb	$25, %al	#, D.21768
	jne	.L836	#,
	.loc 1 3789 0
	movq	-8(%rbp), %rax	# ovalue, tmp326
	movzbl	18(%rax), %eax	# *ovalue_159, tmp329
	shrb	$3, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movq	-64(%rbp), %rdx	# value, tmp330
	andl	$1, %eax	#, tmp332
	leal	0(,%rax,8), %ecx	#, tmp333
	movzbl	18(%rdx), %eax	#, tmp334
	andl	$-9, %eax	#, tmp335
	orl	%ecx, %eax	# tmp333, tmp336
	movb	%al, 18(%rdx)	# tmp336,
	.loc 1 3790 0
	movq	-8(%rbp), %rax	# ovalue, tmp337
	movzbl	18(%rax), %eax	# *ovalue_159, tmp340
	shrb	$2, %al	#, D.21770
	andl	$1, %eax	#, D.21770
	movq	-64(%rbp), %rdx	# value, tmp341
	andl	$1, %eax	#, tmp343
	leal	0(,%rax,4), %ecx	#, tmp344
	movzbl	18(%rdx), %eax	#, tmp345
	andl	$-5, %eax	#, tmp346
	orl	%ecx, %eax	# tmp344, tmp347
	movb	%al, 18(%rdx)	# tmp347,
.L836:
.LBE46:
	.loc 1 3795 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.169
	testl	%eax, %eax	# pedantic.169
	je	.L866	#,
	.loc 1 3795 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# value, tmp348
	movzbl	16(%rax), %eax	# value_1->common.code, D.21768
	cmpb	$25, %al	#, D.21768
	jne	.L866	#,
	.loc 1 3796 0 is_stmt 1
	movq	-96(%rbp), %rax	# expr, tmp349
	movzbl	16(%rax), %eax	# expr_16(D)->common.code, D.21768
	cmpb	$25, %al	#, D.21768
	jne	.L866	#,
	.loc 1 3797 0
	movq	-96(%rbp), %rax	# expr, tmp350
	movq	8(%rax), %rax	# expr_16(D)->common.type, D.21767
	movzbl	16(%rax), %eax	# _167->common.code, D.21768
	cmpb	$6, %al	#, D.21768
	je	.L866	#,
	.loc 1 3798 0
	movq	-64(%rbp), %rax	# value, tmp351
	movq	%rax, %rdi	# tmp351,
	call	non_lvalue	#
	movq	%rax, -64(%rbp)	# tmp352, value
.L866:
	.loc 1 3801 0
	movq	-64(%rbp), %rax	# value, tmp353
	cmpq	-96(%rbp), %rax	# expr, tmp353
	jne	.L867	#,
	.loc 1 3801 0 is_stmt 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.170
	testl	%eax, %eax	# pedantic.170
	je	.L867	#,
	.loc 1 3802 0 is_stmt 1
	movq	-64(%rbp), %rax	# value, tmp354
	movq	%rax, %rdi	# tmp354,
	call	non_lvalue	#
	movq	%rax, -64(%rbp)	# tmp355, value
.L867:
	.loc 1 3804 0
	movq	-64(%rbp), %rax	# value, D.21766
.L830:
	.loc 1 3805 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	build_c_cast, .-build_c_cast
	.globl	c_cast_expr
	.type	c_cast_expr, @function
c_cast_expr:
.LFB38:
	.loc 1 3811 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	movq	%rsi, -32(%rbp)	# expr, expr
	.loc 1 3812 0
	movl	warn_strict_prototypes(%rip), %eax	# warn_strict_prototypes, tmp62
	movl	%eax, -4(%rbp)	# tmp62, saved_wsp
	.loc 1 3816 0
	movq	-32(%rbp), %rax	# expr, tmp63
	movzbl	16(%rax), %eax	# expr_2(D)->common.code, D.21783
	cmpb	$25, %al	#, D.21783
	jne	.L869	#,
	.loc 1 3817 0
	movl	$0, warn_strict_prototypes(%rip)	#, warn_strict_prototypes
.L869:
	.loc 1 3818 0
	movq	-24(%rbp), %rax	# type, tmp64
	movq	%rax, %rdi	# tmp64,
	call	groktypename	#
	movq	%rax, -24(%rbp)	# tmp65, type
	.loc 1 3819 0
	movl	-4(%rbp), %eax	# saved_wsp, tmp66
	movl	%eax, warn_strict_prototypes(%rip)	# tmp66, warn_strict_prototypes
	.loc 1 3821 0
	movq	-32(%rbp), %rdx	# expr, tmp67
	movq	-24(%rbp), %rax	# type, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	build_c_cast	#
	.loc 1 3822 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	c_cast_expr, .-c_cast_expr
	.section	.rodata
.LC130:
	.string	"invalid lvalue in assignment"
.LC131:
	.string	"assignment"
	.text
	.globl	build_modify_expr
	.type	build_modify_expr, @function
build_modify_expr:
.LFB39:
	.loc 1 3834 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# lhs, lhs
	movl	%esi, -92(%rbp)	# modifycode, modifycode
	movq	%rdx, -104(%rbp)	# rhs, rhs
	.loc 1 3837 0
	movq	-88(%rbp), %rax	# lhs, tmp103
	movq	8(%rax), %rax	# lhs_7(D)->common.type, tmp104
	movq	%rax, -64(%rbp)	# tmp104, lhstype
	.loc 1 3838 0
	movq	-64(%rbp), %rax	# lhstype, tmp105
	movq	%rax, -56(%rbp)	# tmp105, olhstype
	.loc 1 3841 0
	movq	-88(%rbp), %rax	# lhs, tmp106
	movq	%rax, %rdi	# tmp106,
	call	require_complete_type	#
	movq	%rax, -88(%rbp)	# tmp107, lhs
	.loc 1 3844 0
	movq	-88(%rbp), %rax	# lhs, tmp108
	movzbl	16(%rax), %eax	# lhs_10->common.code, D.21786
	testb	%al, %al	# D.21786
	je	.L872	#,
	.loc 1 3844 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# rhs, tmp109
	movzbl	16(%rax), %eax	# rhs_12(D)->common.code, D.21786
	testb	%al, %al	# D.21786
	jne	.L873	#,
.L872:
	.loc 1 3845 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.21785
	jmp	.L874	#
.L873:
	.loc 1 3850 0
	movq	-104(%rbp), %rax	# rhs, tmp110
	movzbl	16(%rax), %eax	# rhs_12(D)->common.code, D.21786
	cmpb	$116, %al	#, D.21786
	jne	.L875	#,
	.loc 1 3851 0
	movq	-104(%rbp), %rax	# rhs, tmp111
	movq	32(%rax), %rax	# rhs_12(D)->exp.operands, tmp112
	movq	%rax, -104(%rbp)	# tmp112, rhs
.L875:
	.loc 1 3853 0
	movq	-104(%rbp), %rax	# rhs, tmp113
	movq	%rax, -72(%rbp)	# tmp113, newrhs
	.loc 1 3857 0
	movq	-88(%rbp), %rax	# lhs, tmp114
	movzbl	16(%rax), %eax	# lhs_10->common.code, D.21786
	movzbl	%al, %eax	# D.21786, D.21787
	cmpl	$47, %eax	#, D.21787
	je	.L877	#,
	cmpl	$51, %eax	#, D.21787
	je	.L878	#,
	.loc 1 3891 0
	nop
	.loc 1 3897 0
	cmpl	$115, -92(%rbp)	#, modifycode
	je	.L881	#,
	jmp	.L896	#
.L877:
	.loc 1 3861 0
	movl	$47, %edi	#,
	call	pedantic_lvalue_warning	#
	.loc 1 3862 0
	movq	-88(%rbp), %rax	# lhs, tmp115
	movq	40(%rax), %rax	# lhs_10->exp.operands, D.21788
	movq	-104(%rbp), %rdx	# rhs, tmp116
	movl	-92(%rbp), %ecx	# modifycode, tmp117
	movl	%ecx, %esi	# tmp117,
	movq	%rax, %rdi	# D.21788,
	call	build_modify_expr	#
	movq	%rax, -72(%rbp)	# tmp118, newrhs
	.loc 1 3863 0
	movq	-72(%rbp), %rax	# newrhs, tmp119
	movzbl	16(%rax), %eax	# newrhs_21->common.code, D.21786
	testb	%al, %al	# D.21786
	jne	.L879	#,
	.loc 1 3864 0
	movq	global_trees(%rip), %rax	# global_trees, D.21785
	jmp	.L874	#
.L879:
	.loc 1 3865 0
	movq	-88(%rbp), %rax	# lhs, tmp120
	movq	32(%rax), %rdx	# lhs_10->exp.operands, D.21788
	movq	-72(%rbp), %rcx	# newrhs, tmp121
	movq	-64(%rbp), %rax	# lhstype, tmp122
	movq	%rax, %rsi	# tmp122,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L874	#
.L878:
	.loc 1 3870 0
	movl	$51, %edi	#,
	call	pedantic_lvalue_warning	#
	.loc 1 3871 0
	movq	-104(%rbp), %rax	# rhs, tmp123
	movq	%rax, %rdi	# tmp123,
	call	save_expr	#
	movq	%rax, -104(%rbp)	# tmp124, rhs
.LBB48:
	.loc 1 3877 0
	movq	-88(%rbp), %rax	# lhs, tmp125
	movq	48(%rax), %rax	# lhs_10->exp.operands, D.21788
	movq	-104(%rbp), %rdx	# rhs, tmp126
	movl	-92(%rbp), %ecx	# modifycode, tmp127
	movl	%ecx, %esi	# tmp127,
	movq	%rax, %rdi	# D.21788,
	call	build_modify_expr	#
	movq	%rax, %rbx	#, D.21788
	movq	-88(%rbp), %rax	# lhs, tmp128
	movq	40(%rax), %rax	# lhs_10->exp.operands, D.21788
	movq	-104(%rbp), %rdx	# rhs, tmp129
	movl	-92(%rbp), %ecx	# modifycode, tmp130
	movl	%ecx, %esi	# tmp130,
	movq	%rax, %rdi	# D.21788,
	call	build_modify_expr	#
	movq	%rax, %rcx	#, D.21788
	movq	-88(%rbp), %rax	# lhs, tmp131
	movq	32(%rax), %rax	# lhs_10->exp.operands, D.21788
	.loc 1 3876 0
	movq	%rbx, %rdx	# D.21788,
	movq	%rcx, %rsi	# D.21788,
	movq	%rax, %rdi	# D.21788,
	call	build_conditional_expr	#
	movq	%rax, -48(%rbp)	# tmp132, cond
	.loc 1 3882 0
	movq	-48(%rbp), %rax	# cond, tmp133
	movzbl	16(%rax), %eax	# cond_32->common.code, D.21786
	testb	%al, %al	# D.21786
	jne	.L880	#,
	.loc 1 3883 0
	movq	-48(%rbp), %rax	# cond, D.21785
	jmp	.L874	#
.L880:
	.loc 1 3886 0
	movq	global_trees+216(%rip), %rax	# global_trees, D.21788
	movq	-104(%rbp), %rdx	# rhs, tmp134
	movq	%rdx, %rsi	# tmp134,
	movq	%rax, %rdi	# D.21788,
	call	convert	#
	movq	%rax, %rdx	#, D.21788
	movq	-88(%rbp), %rax	# lhs, tmp135
	movq	8(%rax), %rax	# lhs_10->common.type, D.21788
	movq	-48(%rbp), %rcx	# cond, tmp136
	movq	%rax, %rsi	# D.21788,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L874	#
.L896:
.LBE48:
	.loc 1 3899 0
	movq	-88(%rbp), %rax	# lhs, tmp137
	movq	%rax, %rdi	# tmp137,
	call	stabilize_reference	#
	movq	%rax, -88(%rbp)	# tmp138, lhs
	.loc 1 3900 0
	movq	-104(%rbp), %rdx	# rhs, tmp139
	movq	-88(%rbp), %rsi	# lhs, tmp140
	movl	-92(%rbp), %eax	# modifycode, tmp141
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp141,
	call	build_binary_op	#
	movq	%rax, -72(%rbp)	# tmp142, newrhs
.L881:
	.loc 1 3910 0
	movq	-88(%rbp), %rax	# lhs, tmp143
	movzbl	16(%rax), %eax	# lhs_1->common.code, D.21786
	movzbl	%al, %eax	# D.21786, D.21787
	cmpl	$72, %eax	#, D.21787
	jb	.L897	#,
	cmpl	$76, %eax	#, D.21787
	jbe	.L883	#,
	subl	$114, %eax	#, tmp144
	cmpl	$1, %eax	#, tmp144
	ja	.L897	#,
.L883:
	.loc 1 3919 0
	movq	-72(%rbp), %rax	# newrhs, tmp145
	movq	%rax, %rdi	# tmp145,
	call	default_function_array_conversion	#
	movq	%rax, -72(%rbp)	# tmp146, newrhs
.LBB49:
	.loc 1 3921 0
	movq	-88(%rbp), %rax	# lhs, tmp147
	movq	32(%rax), %rax	# lhs_1->exp.operands, tmp148
	movq	%rax, -40(%rbp)	# tmp148, inner_lhs
	.loc 1 3923 0
	movq	-72(%rbp), %rdx	# newrhs, tmp149
	movq	-64(%rbp), %rax	# lhstype, tmp150
	movq	%rdx, %rsi	# tmp149,
	movq	%rax, %rdi	# tmp150,
	call	convert	#
	movq	%rax, %rdx	#, D.21788
	movq	-40(%rbp), %rax	# inner_lhs, tmp151
	movq	8(%rax), %rax	# inner_lhs_44->common.type, D.21788
	movq	%rdx, %rsi	# D.21788,
	movq	%rax, %rdi	# D.21788,
	call	convert	#
	movq	%rax, %rdx	#, D.21788
	movq	-40(%rbp), %rax	# inner_lhs, tmp152
	movl	$115, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	build_modify_expr	#
	movq	%rax, -32(%rbp)	# tmp153, result
	.loc 1 3926 0
	movq	-32(%rbp), %rax	# result, tmp154
	movzbl	16(%rax), %eax	# result_48->common.code, D.21786
	testb	%al, %al	# D.21786
	jne	.L884	#,
	.loc 1 3927 0
	movq	-32(%rbp), %rax	# result, D.21785
	jmp	.L874	#
.L884:
	.loc 1 3928 0
	movl	$114, %edi	#,
	call	pedantic_lvalue_warning	#
	.loc 1 3929 0
	movq	-88(%rbp), %rax	# lhs, tmp155
	movq	8(%rax), %rax	# lhs_1->common.type, D.21788
	movq	-32(%rbp), %rdx	# result, tmp156
	movq	%rdx, %rsi	# tmp156,
	movq	%rax, %rdi	# D.21788,
	call	convert	#
	jmp	.L874	#
.L897:
.LBE49:
	.loc 1 3933 0
	nop
	.loc 1 3939 0
	movq	-88(%rbp), %rax	# lhs, tmp157
	movl	$.LC130, %esi	#,
	movq	%rax, %rdi	# tmp157,
	call	lvalue_or_else	#
	testl	%eax, %eax	# D.21789
	jne	.L885	#,
	.loc 1 3940 0
	movq	global_trees(%rip), %rax	# global_trees, D.21785
	jmp	.L874	#
.L885:
	.loc 1 3944 0
	movq	-88(%rbp), %rax	# lhs, tmp158
	movzbl	17(%rax), %eax	# *lhs_1, D.21786
	andl	$16, %eax	#, D.21786
	testb	%al, %al	# D.21786
	jne	.L886	#,
	.loc 1 3944 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# lhstype, tmp159
	movzbl	17(%rax), %eax	# *lhstype_8, D.21786
	andl	$16, %eax	#, D.21786
	testb	%al, %al	# D.21786
	jne	.L886	#,
	.loc 1 3945 0 is_stmt 1
	movq	-64(%rbp), %rax	# lhstype, tmp160
	movzbl	16(%rax), %eax	# lhstype_8->common.code, D.21786
	cmpb	$20, %al	#, D.21786
	je	.L887	#,
	.loc 1 3946 0
	movq	-64(%rbp), %rax	# lhstype, tmp161
	movzbl	16(%rax), %eax	# lhstype_8->common.code, D.21786
	cmpb	$21, %al	#, D.21786
	jne	.L888	#,
.L887:
	.loc 1 3947 0
	movq	-64(%rbp), %rax	# lhstype, tmp162
	movzbl	19(%rax), %eax	# *lhstype_8, D.21786
	andl	$2, %eax	#, D.21786
	testb	%al, %al	# D.21786
	je	.L888	#,
.L886:
	.loc 1 3948 0
	movq	-88(%rbp), %rax	# lhs, tmp163
	movl	$.LC131, %esi	#,
	movq	%rax, %rdi	# tmp163,
	call	readonly_warning	#
.L888:
	.loc 1 3955 0
	movq	-88(%rbp), %rax	# lhs, tmp164
	movzbl	16(%rax), %eax	# lhs_1->common.code, D.21786
	cmpb	$39, %al	#, D.21786
	jne	.L889	#,
	.loc 1 3956 0
	movq	-64(%rbp), %rax	# lhstype, tmp165
	movzbl	16(%rax), %eax	# lhstype_8->common.code, D.21786
	cmpb	$6, %al	#, D.21786
	je	.L890	#,
	.loc 1 3957 0
	movq	-64(%rbp), %rax	# lhstype, tmp166
	movzbl	16(%rax), %eax	# lhstype_8->common.code, D.21786
	cmpb	$11, %al	#, D.21786
	je	.L890	#,
	.loc 1 3958 0
	movq	-64(%rbp), %rax	# lhstype, tmp167
	movzbl	16(%rax), %eax	# lhstype_8->common.code, D.21786
	cmpb	$7, %al	#, D.21786
	je	.L890	#,
	.loc 1 3959 0
	movq	-64(%rbp), %rax	# lhstype, tmp168
	movzbl	16(%rax), %eax	# lhstype_8->common.code, D.21786
	cmpb	$10, %al	#, D.21786
	jne	.L889	#,
.L890:
	.loc 1 3960 0
	movq	-88(%rbp), %rax	# lhs, tmp169
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp169,
	call	get_unwidened	#
	movq	8(%rax), %rax	# _68->common.type, tmp170
	movq	%rax, -64(%rbp)	# tmp170, lhstype
.L889:
	.loc 1 3965 0
	movq	-88(%rbp), %rax	# lhs, tmp171
	movq	8(%rax), %rax	# lhs_1->common.type, D.21788
	cmpq	-64(%rbp), %rax	# lhstype, D.21788
	je	.L891	#,
	.loc 1 3967 0
	movq	-88(%rbp), %rax	# lhs, tmp172
	movq	%rax, %rdi	# tmp172,
	call	copy_node	#
	movq	%rax, -88(%rbp)	# tmp173, lhs
	.loc 1 3968 0
	movq	-88(%rbp), %rax	# lhs, tmp174
	movq	-64(%rbp), %rdx	# lhstype, tmp175
	movq	%rdx, 8(%rax)	# tmp175, lhs_71->common.type
.L891:
	.loc 1 3973 0
	movq	-72(%rbp), %rsi	# newrhs, tmp176
	movq	-64(%rbp), %rax	# lhstype, tmp177
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$.LC131, %edx	#,
	movq	%rax, %rdi	# tmp177,
	call	convert_for_assignment	#
	movq	%rax, -72(%rbp)	# tmp178, newrhs
	.loc 1 3975 0
	movq	-72(%rbp), %rax	# newrhs, tmp179
	movzbl	16(%rax), %eax	# newrhs_72->common.code, D.21786
	testb	%al, %al	# D.21786
	jne	.L892	#,
	.loc 1 3976 0
	movq	global_trees(%rip), %rax	# global_trees, D.21785
	jmp	.L874	#
.L892:
	.loc 1 3980 0
	movq	-72(%rbp), %rcx	# newrhs, tmp180
	movq	-88(%rbp), %rdx	# lhs, tmp181
	movq	-64(%rbp), %rax	# lhstype, tmp182
	movq	%rax, %rsi	# tmp182,
	movl	$48, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -24(%rbp)	# tmp183, result
	.loc 1 3981 0
	movq	-24(%rbp), %rax	# result, tmp184
	movzbl	17(%rax), %edx	#, tmp187
	orl	$1, %edx	#, tmp188
	movb	%dl, 17(%rax)	# tmp188,
	.loc 1 3988 0
	movq	-24(%rbp), %rax	# result, tmp189
	movq	8(%rax), %rax	# result_75->common.type, D.21788
	cmpq	-56(%rbp), %rax	# olhstype, D.21788
	jne	.L893	#,
	.loc 1 3989 0
	movq	-24(%rbp), %rax	# result, D.21785
	jmp	.L874	#
.L893:
	.loc 1 3990 0
	movq	-24(%rbp), %rsi	# result, tmp190
	movq	-56(%rbp), %rax	# olhstype, tmp191
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$.LC131, %edx	#,
	movq	%rax, %rdi	# tmp191,
	call	convert_for_assignment	#
.L874:
	.loc 1 3992 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	build_modify_expr, .-build_modify_expr
	.section	.rodata
	.align 8
.LC132:
	.string	"%s makes qualified function pointer from unqualified"
	.align 8
.LC133:
	.string	"%s discards qualifiers from pointer target type"
	.align 8
.LC134:
	.string	"ISO C prohibits argument conversion to union type"
	.align 8
.LC135:
	.string	"ISO C forbids %s between function pointer and `void *'"
	.align 8
.LC136:
	.string	"pointer targets in %s differ in signedness"
	.align 8
.LC137:
	.string	"%s from incompatible pointer type"
	.align 8
.LC138:
	.string	"%s makes pointer from integer without a cast"
	.align 8
.LC139:
	.string	"%s makes integer from pointer without a cast"
	.align 8
.LC140:
	.string	"incompatible type for argument %d of `%s'"
	.align 8
.LC141:
	.string	"incompatible type for argument %d of indirect function call"
.LC142:
	.string	"incompatible types in %s"
	.text
	.type	convert_for_assignment, @function
convert_for_assignment:
.LFB40:
	.loc 1 4013 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# type, type
	movq	%rsi, -128(%rbp)	# rhs, rhs
	movq	%rdx, -136(%rbp)	# errtype, errtype
	movq	%rcx, -144(%rbp)	# fundecl, fundecl
	movq	%r8, -152(%rbp)	# funname, funname
	movl	%r9d, -156(%rbp)	# parmnum, parmnum
	.loc 1 4014 0
	movq	-120(%rbp), %rax	# type, tmp387
	movzbl	16(%rax), %eax	# type_27(D)->common.code, D.21793
	movzbl	%al, %eax	# D.21793, tmp388
	movl	%eax, -112(%rbp)	# tmp388, codel
	.loc 1 4021 0
	movq	-128(%rbp), %rax	# rhs, tmp389
	movzbl	16(%rax), %eax	# rhs_30(D)->common.code, D.21793
	cmpb	$116, %al	#, D.21793
	jne	.L899	#,
	.loc 1 4022 0
	movq	-128(%rbp), %rax	# rhs, tmp390
	movq	32(%rax), %rax	# rhs_30(D)->exp.operands, tmp391
	movq	%rax, -128(%rbp)	# tmp391, rhs
.L899:
	.loc 1 4024 0
	movq	-128(%rbp), %rax	# rhs, tmp392
	movq	8(%rax), %rax	# rhs_1->common.type, D.21794
	movzbl	16(%rax), %eax	# _33->common.code, D.21793
	cmpb	$18, %al	#, D.21793
	je	.L900	#,
	.loc 1 4025 0
	movq	-128(%rbp), %rax	# rhs, tmp393
	movq	8(%rax), %rax	# rhs_1->common.type, D.21794
	movzbl	16(%rax), %eax	# _35->common.code, D.21793
	cmpb	$23, %al	#, D.21793
	jne	.L901	#,
.L900:
	.loc 1 4026 0
	movq	-128(%rbp), %rax	# rhs, tmp394
	movq	%rax, %rdi	# tmp394,
	call	default_conversion	#
	movq	%rax, -128(%rbp)	# tmp395, rhs
	jmp	.L902	#
.L901:
	.loc 1 4027 0
	movl	optimize(%rip), %eax	# optimize, optimize.171
	testl	%eax, %eax	# optimize.171
	je	.L902	#,
	.loc 1 4027 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# rhs, tmp396
	movzbl	16(%rax), %eax	# rhs_1->common.code, D.21793
	cmpb	$34, %al	#, D.21793
	jne	.L902	#,
	.loc 1 4028 0 is_stmt 1
	movq	-128(%rbp), %rax	# rhs, tmp397
	movq	%rax, %rdi	# tmp397,
	call	decl_constant_value_for_broken_optimization	#
	movq	%rax, -128(%rbp)	# tmp398, rhs
.L902:
	.loc 1 4030 0
	movq	-128(%rbp), %rax	# rhs, tmp399
	movq	8(%rax), %rax	# rhs_2->common.type, tmp400
	movq	%rax, -88(%rbp)	# tmp400, rhstype
	.loc 1 4031 0
	movq	-88(%rbp), %rax	# rhstype, tmp401
	movzbl	16(%rax), %eax	# rhstype_41->common.code, D.21793
	movzbl	%al, %eax	# D.21793, tmp402
	movl	%eax, -108(%rbp)	# tmp402, coder
	.loc 1 4033 0
	cmpl	$0, -108(%rbp)	#, coder
	jne	.L903	#,
	.loc 1 4034 0
	movq	global_trees(%rip), %rax	# global_trees, D.21792
	jmp	.L904	#
.L903:
	.loc 1 4036 0
	movq	-120(%rbp), %rax	# type, tmp403
	movq	128(%rax), %rdx	# type_27(D)->type.main_variant, D.21794
	movq	-88(%rbp), %rax	# rhstype, tmp404
	movq	128(%rax), %rax	# rhstype_41->type.main_variant, D.21794
	cmpq	%rax, %rdx	# D.21794, D.21794
	jne	.L905	#,
	.loc 1 4038 0
	movq	-128(%rbp), %rax	# rhs, tmp405
	movq	%rax, %rdi	# tmp405,
	call	overflow_warning	#
	.loc 1 4041 0
	movq	-88(%rbp), %rcx	# rhstype, tmp406
	movq	-120(%rbp), %rax	# type, tmp407
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp406,
	movq	%rax, %rdi	# tmp407,
	call	maybe_objc_comptypes	#
	.loc 1 4042 0
	movq	-128(%rbp), %rax	# rhs, D.21792
	jmp	.L904	#
.L905:
	.loc 1 4045 0
	cmpl	$5, -108(%rbp)	#, coder
	jne	.L906	#,
	.loc 1 4047 0
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4048 0
	movq	global_trees(%rip), %rax	# global_trees, D.21792
	jmp	.L904	#
.L906:
	.loc 1 4053 0
	cmpl	$15, -112(%rbp)	#, codel
	jne	.L907	#,
	.loc 1 4054 0
	movq	-128(%rbp), %rax	# rhs, tmp408
	movq	8(%rax), %rdx	# rhs_2->common.type, D.21794
	movq	-120(%rbp), %rax	# type, tmp409
	movq	8(%rax), %rax	# type_27(D)->common.type, D.21794
	movq	%rdx, %rsi	# D.21794,
	movq	%rax, %rdi	# D.21794,
	call	comptypes	#
	cmpl	$1, %eax	#, D.21795
	jne	.L907	#,
	.loc 1 4056 0
	movq	-128(%rbp), %rax	# rhs, tmp410
	movq	%rax, %rdi	# tmp410,
	call	mark_addressable	#
	testl	%eax, %eax	# D.21795
	jne	.L908	#,
	.loc 1 4057 0
	movq	global_trees(%rip), %rax	# global_trees, D.21792
	jmp	.L904	#
.L908:
	.loc 1 4058 0
	movq	-128(%rbp), %rax	# rhs, tmp411
	movq	8(%rax), %rax	# rhs_2->common.type, D.21794
	movq	%rax, %rdi	# D.21794,
	call	build_pointer_type	#
	movq	-128(%rbp), %rdx	# rhs, tmp412
	movq	%rax, %rsi	# D.21794,
	movl	$121, %edi	#,
	call	build1	#
	movq	%rax, -128(%rbp)	# tmp413, rhs
	.loc 1 4065 0
	movq	-128(%rbp), %rax	# rhs, tmp414
	movq	8(%rax), %rax	# rhs_56->common.type, D.21794
	movq	8(%rax), %rdx	# _57->common.type, D.21794
	movq	-120(%rbp), %rax	# type, tmp415
	movq	8(%rax), %rax	# type_27(D)->common.type, D.21794
	cmpq	%rax, %rdx	# D.21794, D.21794
	je	.L909	#,
	.loc 1 4066 0
	movq	-120(%rbp), %rax	# type, tmp416
	movq	8(%rax), %rax	# type_27(D)->common.type, D.21794
	movq	%rax, %rdi	# D.21794,
	call	build_pointer_type	#
	movq	-128(%rbp), %rdx	# rhs, tmp417
	movq	%rax, %rsi	# D.21794,
	movl	$115, %edi	#,
	call	build1	#
	movq	%rax, -128(%rbp)	# tmp418, rhs
.L909:
	.loc 1 4068 0
	movq	-128(%rbp), %rdx	# rhs, tmp419
	movq	-120(%rbp), %rax	# type, tmp420
	movq	%rax, %rsi	# tmp420,
	movl	$115, %edi	#,
	call	build1	#
	movq	%rax, -128(%rbp)	# tmp421, rhs
	.loc 1 4069 0
	movq	-128(%rbp), %rax	# rhs, D.21792
	jmp	.L904	#
.L907:
	.loc 1 4072 0
	cmpl	$6, -112(%rbp)	#, codel
	je	.L910	#,
	.loc 1 4072 0 is_stmt 0 discriminator 1
	cmpl	$7, -112(%rbp)	#, codel
	je	.L910	#,
	.loc 1 4073 0 is_stmt 1
	cmpl	$10, -112(%rbp)	#, codel
	je	.L910	#,
	.loc 1 4073 0 is_stmt 0 discriminator 1
	cmpl	$8, -112(%rbp)	#, codel
	je	.L910	#,
	.loc 1 4074 0 is_stmt 1
	cmpl	$11, -112(%rbp)	#, codel
	jne	.L911	#,
.L910:
	.loc 1 4075 0
	cmpl	$6, -108(%rbp)	#, coder
	je	.L912	#,
	.loc 1 4075 0 is_stmt 0 discriminator 1
	cmpl	$7, -108(%rbp)	#, coder
	je	.L912	#,
	.loc 1 4076 0 is_stmt 1
	cmpl	$10, -108(%rbp)	#, coder
	je	.L912	#,
	.loc 1 4076 0 is_stmt 0 discriminator 1
	cmpl	$8, -108(%rbp)	#, coder
	je	.L912	#,
	.loc 1 4077 0 is_stmt 1
	cmpl	$11, -108(%rbp)	#, coder
	jne	.L911	#,
.L912:
	.loc 1 4078 0
	movq	-128(%rbp), %rdx	# rhs, tmp422
	movq	-120(%rbp), %rax	# type, tmp423
	movq	%rdx, %rsi	# tmp422,
	movq	%rax, %rdi	# tmp423,
	call	convert_and_check	#
	jmp	.L904	#
.L911:
	.loc 1 4082 0
	cmpl	$21, -112(%rbp)	#, codel
	jne	.L913	#,
	.loc 1 4082 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# type, tmp424
	movzbl	62(%rax), %eax	# *type_27(D), D.21793
	andl	$8, %eax	#, D.21793
	testb	%al, %al	# D.21793
	je	.L913	#,
	cmpq	$0, -136(%rbp)	#, errtype
	jne	.L913	#,
.LBB50:
	.loc 1 4085 0 is_stmt 1
	movq	$0, -96(%rbp)	#, marginal_memb_type
	.loc 1 4087 0
	movq	-120(%rbp), %rax	# type, tmp425
	movq	24(%rax), %rax	# type_27(D)->type.values, tmp426
	movq	%rax, -104(%rbp)	# tmp426, memb_types
	jmp	.L914	#
.L940:
.LBB51:
	.loc 1 4090 0
	movq	-104(%rbp), %rax	# memb_types, tmp427
	movq	8(%rax), %rax	# memb_types_5->common.type, tmp428
	movq	%rax, -80(%rbp)	# tmp428, memb_type
	.loc 1 4092 0
	movq	-88(%rbp), %rax	# rhstype, tmp429
	movq	128(%rax), %rdx	# rhstype_41->type.main_variant, D.21794
	movq	-80(%rbp), %rax	# memb_type, tmp430
	movq	128(%rax), %rax	# memb_type_71->type.main_variant, D.21794
	movq	%rdx, %rsi	# D.21794,
	movq	%rax, %rdi	# D.21794,
	call	comptypes	#
	testl	%eax, %eax	# D.21795
	je	.L915	#,
	.loc 1 4094 0
	jmp	.L916	#
.L915:
	.loc 1 4096 0
	movq	-80(%rbp), %rax	# memb_type, tmp431
	movzbl	16(%rax), %eax	# memb_type_71->common.code, D.21793
	cmpb	$13, %al	#, D.21793
	je	.L917	#,
	.loc 1 4097 0
	jmp	.L918	#
.L917:
	.loc 1 4099 0
	cmpl	$13, -108(%rbp)	#, coder
	jne	.L919	#,
.LBB52:
	.loc 1 4101 0
	movq	-80(%rbp), %rax	# memb_type, tmp432
	movq	8(%rax), %rax	# memb_type_71->common.type, tmp433
	movq	%rax, -72(%rbp)	# tmp433, ttl
	.loc 1 4102 0
	movq	-88(%rbp), %rax	# rhstype, tmp434
	movq	8(%rax), %rax	# rhstype_41->common.type, tmp435
	movq	%rax, -64(%rbp)	# tmp435, ttr
	.loc 1 4108 0
	movq	-72(%rbp), %rax	# ttl, tmp436
	movzbl	16(%rax), %eax	# ttl_76->common.code, D.21793
	cmpb	$5, %al	#, D.21793
	je	.L920	#,
	.loc 1 4108 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# ttr, tmp437
	movzbl	16(%rax), %eax	# ttr_77->common.code, D.21793
	cmpb	$5, %al	#, D.21793
	je	.L920	#,
	.loc 1 4109 0 is_stmt 1
	movq	-88(%rbp), %rdx	# rhstype, tmp438
	movq	-80(%rbp), %rax	# memb_type, tmp439
	movq	%rdx, %rsi	# tmp438,
	movq	%rax, %rdi	# tmp439,
	call	comp_target_types	#
	testl	%eax, %eax	# D.21795
	je	.L919	#,
.L920:
	.loc 1 4112 0
	movq	-72(%rbp), %rax	# ttl, tmp440
	movzbl	17(%rax), %eax	# *ttl_76, tmp443
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp444
	movzbl	17(%rax), %eax	# *ttl_76, tmp447
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp448
	movzbl	62(%rax), %eax	# *ttl_76, tmp451
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp452
	movzbl	16(%rax), %eax	# ttl_76->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L921	#,
	.loc 1 4112 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ttl, tmp453
	movq	8(%rax), %rax	# ttl_76->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L921	#,
	.loc 1 4112 0 discriminator 3
	movl	$1, %eax	#, iftmp.172
	jmp	.L922	#
.L921:
	.loc 1 4112 0 discriminator 2
	movl	$0, %eax	#, iftmp.172
.L922:
	.loc 1 4112 0 discriminator 4
	sall	$3, %eax	#, D.21795
	movl	%edx, %ecx	# D.21795, D.21795
	orl	%eax, %ecx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp454
	movzbl	17(%rax), %eax	# *ttr_77, tmp457
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp458
	movzbl	17(%rax), %eax	# *ttr_77, tmp461
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp462
	movzbl	62(%rax), %eax	# *ttr_77, tmp465
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp466
	movzbl	16(%rax), %eax	# ttr_77->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L923	#,
	.loc 1 4112 0 discriminator 1
	movq	-64(%rbp), %rax	# ttr, tmp467
	movq	8(%rax), %rax	# ttr_77->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L923	#,
	.loc 1 4112 0 discriminator 3
	movl	$1, %eax	#, iftmp.173
	jmp	.L924	#
.L923:
	.loc 1 4112 0 discriminator 2
	movl	$0, %eax	#, iftmp.173
.L924:
	.loc 1 4112 0 discriminator 4
	sall	$3, %eax	#, D.21795
	orl	%edx, %eax	# D.21795, D.21795
	cmpl	%eax, %ecx	# D.21795, D.21795
	je	.L916	#,
	.loc 1 4113 0 is_stmt 1 discriminator 1
	movq	-64(%rbp), %rax	# ttr, tmp468
	movzbl	16(%rax), %eax	# ttr_77->common.code, D.21793
	.loc 1 4112 0 discriminator 1
	cmpb	$23, %al	#, D.21793
	jne	.L925	#,
	.loc 1 4114 0
	movq	-72(%rbp), %rax	# ttl, tmp469
	movzbl	16(%rax), %eax	# ttl_76->common.code, D.21793
	cmpb	$23, %al	#, D.21793
	jne	.L925	#,
	.loc 1 4115 0
	movq	-72(%rbp), %rax	# ttl, tmp470
	movzbl	17(%rax), %eax	# *ttl_76, tmp473
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp474
	movzbl	17(%rax), %eax	# *ttl_76, tmp477
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp478
	movzbl	62(%rax), %eax	# *ttl_76, tmp481
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp482
	movzbl	16(%rax), %eax	# ttl_76->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L926	#,
	.loc 1 4115 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ttl, tmp483
	movq	8(%rax), %rax	# ttl_76->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L926	#,
	.loc 1 4115 0 discriminator 3
	movl	$1, %eax	#, iftmp.174
	jmp	.L927	#
.L926:
	.loc 1 4115 0 discriminator 2
	movl	$0, %eax	#, iftmp.174
.L927:
	.loc 1 4115 0 discriminator 4
	sall	$3, %eax	#, D.21795
	movl	%edx, %ecx	# D.21795, D.21795
	orl	%eax, %ecx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp484
	movzbl	17(%rax), %eax	# *ttr_77, tmp487
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp488
	movzbl	17(%rax), %eax	# *ttr_77, tmp491
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp492
	movzbl	62(%rax), %eax	# *ttr_77, tmp495
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp496
	movzbl	16(%rax), %eax	# ttr_77->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L928	#,
	.loc 1 4115 0 discriminator 1
	movq	-64(%rbp), %rax	# ttr, tmp497
	movq	8(%rax), %rax	# ttr_77->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L928	#,
	.loc 1 4115 0 discriminator 3
	movl	$1, %eax	#, iftmp.175
	jmp	.L929	#
.L928:
	.loc 1 4115 0 discriminator 2
	movl	$0, %eax	#, iftmp.175
.L929:
	.loc 1 4115 0 discriminator 4
	sall	$3, %eax	#, D.21795
	orl	%edx, %eax	# D.21795, D.21795
	orl	%eax, %ecx	# D.21795, D.21795
	.loc 1 4116 0 is_stmt 1 discriminator 4
	movq	-64(%rbp), %rax	# ttr, tmp498
	movzbl	17(%rax), %eax	# *ttr_77, tmp501
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp502
	movzbl	17(%rax), %eax	# *ttr_77, tmp505
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp506
	movzbl	62(%rax), %eax	# *ttr_77, tmp509
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp510
	movzbl	16(%rax), %eax	# ttr_77->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L930	#,
	.loc 1 4116 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# ttr, tmp511
	movq	8(%rax), %rax	# ttr_77->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L930	#,
	.loc 1 4116 0 discriminator 3
	movl	$1, %eax	#, iftmp.176
	jmp	.L931	#
.L930:
	.loc 1 4116 0 discriminator 2
	movl	$0, %eax	#, iftmp.176
.L931:
	.loc 1 4116 0 discriminator 4
	sall	$3, %eax	#, D.21795
	orl	%edx, %eax	# D.21795, D.21795
	.loc 1 4113 0 is_stmt 1 discriminator 4
	cmpl	%eax, %ecx	# D.21795, D.21795
	je	.L916	#,
	.loc 1 4113 0 is_stmt 0 discriminator 1
	jmp	.L932	#
.L925:
	.loc 1 4117 0 is_stmt 1
	movq	-72(%rbp), %rax	# ttl, tmp512
	movzbl	17(%rax), %eax	# *ttl_76, tmp515
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp516
	movzbl	17(%rax), %eax	# *ttl_76, tmp519
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp520
	movzbl	62(%rax), %eax	# *ttl_76, tmp523
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp524
	movzbl	16(%rax), %eax	# ttl_76->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L933	#,
	.loc 1 4117 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ttl, tmp525
	movq	8(%rax), %rax	# ttl_76->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L933	#,
	.loc 1 4117 0 discriminator 3
	movl	$1, %eax	#, iftmp.177
	jmp	.L934	#
.L933:
	.loc 1 4117 0 discriminator 2
	movl	$0, %eax	#, iftmp.177
.L934:
	.loc 1 4117 0 discriminator 4
	sall	$3, %eax	#, D.21795
	movl	%edx, %ecx	# D.21795, D.21795
	orl	%eax, %ecx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp526
	movzbl	17(%rax), %eax	# *ttr_77, tmp529
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp530
	movzbl	17(%rax), %eax	# *ttr_77, tmp533
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp534
	movzbl	62(%rax), %eax	# *ttr_77, tmp537
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-64(%rbp), %rax	# ttr, tmp538
	movzbl	16(%rax), %eax	# ttr_77->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L935	#,
	.loc 1 4117 0 discriminator 1
	movq	-64(%rbp), %rax	# ttr, tmp539
	movq	8(%rax), %rax	# ttr_77->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L935	#,
	.loc 1 4117 0 discriminator 3
	movl	$1, %eax	#, iftmp.178
	jmp	.L936	#
.L935:
	.loc 1 4117 0 discriminator 2
	movl	$0, %eax	#, iftmp.178
.L936:
	.loc 1 4117 0 discriminator 4
	sall	$3, %eax	#, D.21795
	orl	%edx, %eax	# D.21795, D.21795
	orl	%eax, %ecx	# D.21795, D.21795
	.loc 1 4118 0 is_stmt 1 discriminator 4
	movq	-72(%rbp), %rax	# ttl, tmp540
	movzbl	17(%rax), %eax	# *ttl_76, tmp543
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp544
	movzbl	17(%rax), %eax	# *ttl_76, tmp547
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp548
	movzbl	62(%rax), %eax	# *ttl_76, tmp551
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-72(%rbp), %rax	# ttl, tmp552
	movzbl	16(%rax), %eax	# ttl_76->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L937	#,
	.loc 1 4118 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ttl, tmp553
	movq	8(%rax), %rax	# ttl_76->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L937	#,
	.loc 1 4118 0 discriminator 3
	movl	$1, %eax	#, iftmp.179
	jmp	.L938	#
.L937:
	.loc 1 4118 0 discriminator 2
	movl	$0, %eax	#, iftmp.179
.L938:
	.loc 1 4118 0 discriminator 4
	sall	$3, %eax	#, D.21795
	orl	%edx, %eax	# D.21795, D.21795
	.loc 1 4113 0 is_stmt 1 discriminator 4
	cmpl	%eax, %ecx	# D.21795, D.21795
	je	.L916	#,
.L932:
	.loc 1 4122 0
	cmpq	$0, -96(%rbp)	#, marginal_memb_type
	jne	.L919	#,
	.loc 1 4123 0
	movq	-80(%rbp), %rax	# memb_type, tmp554
	movq	%rax, -96(%rbp)	# tmp554, marginal_memb_type
.L919:
.LBE52:
	.loc 1 4128 0
	movq	-128(%rbp), %rax	# rhs, tmp555
	movq	%rax, %rdi	# tmp555,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21795
	jne	.L939	#,
	.loc 1 4129 0
	movq	-128(%rbp), %rax	# rhs, tmp556
	movzbl	16(%rax), %eax	# rhs_2->common.code, D.21793
	cmpb	$115, %al	#, D.21793
	jne	.L918	#,
	.loc 1 4130 0
	movq	-128(%rbp), %rax	# rhs, tmp557
	movq	32(%rax), %rax	# rhs_2->exp.operands, D.21794
	movq	%rax, %rdi	# D.21794,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21795
	je	.L918	#,
.L939:
	.loc 1 4132 0
	movq	global_trees+112(%rip), %rax	# global_trees, tmp558
	movq	%rax, -128(%rbp)	# tmp558, rhs
	.loc 1 4133 0
	jmp	.L916	#
.L918:
.LBE51:
	.loc 1 4088 0
	movq	-104(%rbp), %rax	# memb_types, tmp559
	movq	(%rax), %rax	# memb_types_5->common.chain, tmp560
	movq	%rax, -104(%rbp)	# tmp560, memb_types
.L914:
	.loc 1 4087 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, memb_types
	jne	.L940	#,
.L916:
	.loc 1 4137 0
	cmpq	$0, -104(%rbp)	#, memb_types
	jne	.L941	#,
	.loc 1 4137 0 is_stmt 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, marginal_memb_type
	je	.L942	#,
.L941:
	.loc 1 4139 0 is_stmt 1
	cmpq	$0, -104(%rbp)	#, memb_types
	jne	.L943	#,
.LBB53:
	.loc 1 4143 0
	movq	-96(%rbp), %rax	# marginal_memb_type, tmp561
	movq	8(%rax), %rax	# marginal_memb_type_9->common.type, tmp562
	movq	%rax, -56(%rbp)	# tmp562, ttl
	.loc 1 4144 0
	movq	-88(%rbp), %rax	# rhstype, tmp563
	movq	8(%rax), %rax	# rhstype_41->common.type, tmp564
	movq	%rax, -48(%rbp)	# tmp564, ttr
	.loc 1 4148 0
	movq	-48(%rbp), %rax	# ttr, tmp565
	movzbl	16(%rax), %eax	# ttr_221->common.code, D.21793
	cmpb	$23, %al	#, D.21793
	jne	.L944	#,
	.loc 1 4149 0
	movq	-56(%rbp), %rax	# ttl, tmp566
	movzbl	16(%rax), %eax	# ttl_220->common.code, D.21793
	cmpb	$23, %al	#, D.21793
	jne	.L944	#,
	.loc 1 4156 0
	movq	-56(%rbp), %rax	# ttl, tmp567
	movzbl	17(%rax), %eax	# *ttl_220, tmp570
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-56(%rbp), %rax	# ttl, tmp571
	movzbl	17(%rax), %eax	# *ttl_220, tmp574
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-56(%rbp), %rax	# ttl, tmp575
	movzbl	62(%rax), %eax	# *ttl_220, tmp578
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-56(%rbp), %rax	# ttl, tmp579
	movzbl	16(%rax), %eax	# ttl_220->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L945	#,
	.loc 1 4156 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# ttl, tmp580
	movq	8(%rax), %rax	# ttl_220->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L945	#,
	.loc 1 4156 0 discriminator 3
	movl	$1, %eax	#, iftmp.180
	jmp	.L946	#
.L945:
	.loc 1 4156 0 discriminator 2
	movl	$0, %eax	#, iftmp.180
.L946:
	.loc 1 4156 0 discriminator 4
	sall	$3, %eax	#, D.21795
	movl	%edx, %ecx	# D.21795, D.21795
	orl	%eax, %ecx	# D.21795, D.21795
	movq	-48(%rbp), %rax	# ttr, tmp581
	movzbl	17(%rax), %eax	# *ttr_221, tmp584
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-48(%rbp), %rax	# ttr, tmp585
	movzbl	17(%rax), %eax	# *ttr_221, tmp588
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-48(%rbp), %rax	# ttr, tmp589
	movzbl	62(%rax), %eax	# *ttr_221, tmp592
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-48(%rbp), %rax	# ttr, tmp593
	movzbl	16(%rax), %eax	# ttr_221->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L947	#,
	.loc 1 4156 0 discriminator 1
	movq	-48(%rbp), %rax	# ttr, tmp594
	movq	8(%rax), %rax	# ttr_221->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L947	#,
	.loc 1 4156 0 discriminator 3
	movl	$1, %eax	#, iftmp.181
	jmp	.L948	#
.L947:
	.loc 1 4156 0 discriminator 2
	movl	$0, %eax	#, iftmp.181
.L948:
	.loc 1 4156 0 discriminator 4
	sall	$3, %eax	#, D.21795
	orl	%edx, %eax	# D.21795, D.21795
	notl	%eax	# D.21795
	andl	%ecx, %eax	# D.21795, D.21795
	testl	%eax, %eax	# D.21795
	je	.L949	#,
	.loc 1 4157 0 is_stmt 1
	movl	-156(%rbp), %ecx	# parmnum, tmp595
	movq	-152(%rbp), %rdx	# funname, tmp596
	movq	-136(%rbp), %rax	# errtype, tmp597
	movq	%rax, %rsi	# tmp597,
	movl	$.LC132, %edi	#,
	call	warn_for_assignment	#
	.loc 1 4156 0
	jmp	.L943	#
.L949:
	.loc 1 4156 0 is_stmt 0 discriminator 1
	jmp	.L943	#
.L944:
	.loc 1 4160 0 is_stmt 1
	movq	-48(%rbp), %rax	# ttr, tmp598
	movzbl	17(%rax), %eax	# *ttr_221, tmp601
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-48(%rbp), %rax	# ttr, tmp602
	movzbl	17(%rax), %eax	# *ttr_221, tmp605
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-48(%rbp), %rax	# ttr, tmp606
	movzbl	62(%rax), %eax	# *ttr_221, tmp609
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-48(%rbp), %rax	# ttr, tmp610
	movzbl	16(%rax), %eax	# ttr_221->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L950	#,
	.loc 1 4160 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ttr, tmp611
	movq	8(%rax), %rax	# ttr_221->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L950	#,
	.loc 1 4160 0 discriminator 3
	movl	$1, %eax	#, iftmp.182
	jmp	.L951	#
.L950:
	.loc 1 4160 0 discriminator 2
	movl	$0, %eax	#, iftmp.182
.L951:
	.loc 1 4160 0 discriminator 4
	sall	$3, %eax	#, D.21795
	movl	%edx, %ecx	# D.21795, D.21795
	orl	%eax, %ecx	# D.21795, D.21795
	movq	-56(%rbp), %rax	# ttl, tmp612
	movzbl	17(%rax), %eax	# *ttl_220, tmp615
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-56(%rbp), %rax	# ttl, tmp616
	movzbl	17(%rax), %eax	# *ttl_220, tmp619
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-56(%rbp), %rax	# ttl, tmp620
	movzbl	62(%rax), %eax	# *ttl_220, tmp623
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-56(%rbp), %rax	# ttl, tmp624
	movzbl	16(%rax), %eax	# ttl_220->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L952	#,
	.loc 1 4160 0 discriminator 1
	movq	-56(%rbp), %rax	# ttl, tmp625
	movq	8(%rax), %rax	# ttl_220->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L952	#,
	.loc 1 4160 0 discriminator 3
	movl	$1, %eax	#, iftmp.183
	jmp	.L953	#
.L952:
	.loc 1 4160 0 discriminator 2
	movl	$0, %eax	#, iftmp.183
.L953:
	.loc 1 4160 0 discriminator 4
	sall	$3, %eax	#, D.21795
	orl	%edx, %eax	# D.21795, D.21795
	notl	%eax	# D.21795
	andl	%ecx, %eax	# D.21795, D.21795
	testl	%eax, %eax	# D.21795
	je	.L943	#,
	.loc 1 4161 0 is_stmt 1
	movl	-156(%rbp), %ecx	# parmnum, tmp626
	movq	-152(%rbp), %rdx	# funname, tmp627
	movq	-136(%rbp), %rax	# errtype, tmp628
	movq	%rax, %rsi	# tmp628,
	movl	$.LC133, %edi	#,
	call	warn_for_assignment	#
.L943:
.LBE53:
	.loc 1 4166 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.184
	testl	%eax, %eax	# pedantic.184
	je	.L954	#,
	.loc 1 4166 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# fundecl, tmp629
	movzbl	50(%rax), %eax	# *fundecl_295(D), D.21793
	andl	$1, %eax	#, D.21793
	testb	%al, %al	# D.21793
	jne	.L954	#,
	.loc 1 4167 0 is_stmt 1
	movl	$.LC134, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L954:
	.loc 1 4169 0
	movq	-128(%rbp), %rdx	# rhs, tmp630
	movq	-120(%rbp), %rax	# type, tmp631
	movq	%rax, %rsi	# tmp631,
	movl	$115, %edi	#,
	call	build1	#
	jmp	.L904	#
.L942:
.LBE50:
	.loc 1 4083 0
	jmp	.L955	#
.L913:
	.loc 1 4174 0
	cmpl	$13, -112(%rbp)	#, codel
	je	.L956	#,
	.loc 1 4174 0 is_stmt 0 discriminator 1
	cmpl	$15, -112(%rbp)	#, codel
	jne	.L957	#,
.L956:
	.loc 1 4175 0 is_stmt 1
	cmpl	$13, -108(%rbp)	#, coder
	je	.L958	#,
	.loc 1 4175 0 is_stmt 0 discriminator 1
	cmpl	$15, -108(%rbp)	#, coder
	jne	.L957	#,
.L958:
.LBB54:
	.loc 1 4177 0 is_stmt 1
	movq	-120(%rbp), %rax	# type, tmp632
	movq	8(%rax), %rax	# type_27(D)->common.type, tmp633
	movq	%rax, -40(%rbp)	# tmp633, ttl
	.loc 1 4178 0
	movq	-88(%rbp), %rax	# rhstype, tmp634
	movq	8(%rax), %rax	# rhstype_41->common.type, tmp635
	movq	%rax, -32(%rbp)	# tmp635, ttr
	.loc 1 4183 0
	movq	-40(%rbp), %rax	# ttl, tmp636
	movzbl	16(%rax), %eax	# ttl_299->common.code, D.21793
	cmpb	$5, %al	#, D.21793
	je	.L959	#,
	.loc 1 4183 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ttr, tmp637
	movzbl	16(%rax), %eax	# ttr_300->common.code, D.21793
	cmpb	$5, %al	#, D.21793
	je	.L959	#,
	.loc 1 4184 0 is_stmt 1
	movq	-88(%rbp), %rdx	# rhstype, tmp638
	movq	-120(%rbp), %rax	# type, tmp639
	movq	%rdx, %rsi	# tmp638,
	movq	%rax, %rdi	# tmp639,
	call	comp_target_types	#
	testl	%eax, %eax	# D.21795
	jne	.L959	#,
	.loc 1 4185 0
	movq	-40(%rbp), %rax	# ttl, tmp640
	movq	128(%rax), %rax	# ttl_299->type.main_variant, D.21794
	movq	%rax, %rdi	# D.21794,
	call	unsigned_type	#
	movq	%rax, %rbx	#, D.21794
	.loc 1 4186 0
	movq	-32(%rbp), %rax	# ttr, tmp641
	movq	128(%rax), %rax	# ttr_300->type.main_variant, D.21794
	movq	%rax, %rdi	# D.21794,
	call	unsigned_type	#
	.loc 1 4185 0
	cmpq	%rax, %rbx	# D.21794, D.21794
	jne	.L960	#,
.L959:
	.loc 1 4188 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.185
	testl	%eax, %eax	# pedantic.185
	je	.L961	#,
	.loc 1 4189 0
	movq	-40(%rbp), %rax	# ttl, tmp642
	movzbl	16(%rax), %eax	# ttl_299->common.code, D.21793
	cmpb	$5, %al	#, D.21793
	jne	.L962	#,
	.loc 1 4189 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ttr, tmp643
	movzbl	16(%rax), %eax	# ttr_300->common.code, D.21793
	cmpb	$23, %al	#, D.21793
	je	.L963	#,
.L962:
	.loc 1 4191 0 is_stmt 1
	movq	-32(%rbp), %rax	# ttr, tmp644
	movzbl	16(%rax), %eax	# ttr_300->common.code, D.21793
	.loc 1 4190 0
	cmpb	$5, %al	#, D.21793
	jne	.L961	#,
	.loc 1 4194 0
	movq	-128(%rbp), %rax	# rhs, tmp645
	movq	%rax, %rdi	# tmp645,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21795
	je	.L964	#,
	.loc 1 4194 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# rhs, tmp646
	movzbl	16(%rax), %eax	# rhs_2->common.code, D.21793
	cmpb	$115, %al	#, D.21793
	jne	.L961	#,
.L964:
	.loc 1 4195 0 is_stmt 1
	movq	-40(%rbp), %rax	# ttl, tmp647
	movzbl	16(%rax), %eax	# ttl_299->common.code, D.21793
	cmpb	$23, %al	#, D.21793
	jne	.L961	#,
.L963:
	.loc 1 4196 0
	movl	-156(%rbp), %ecx	# parmnum, tmp648
	movq	-152(%rbp), %rdx	# funname, tmp649
	movq	-136(%rbp), %rax	# errtype, tmp650
	movq	%rax, %rsi	# tmp650,
	movl	$.LC135, %edi	#,
	call	warn_for_assignment	#
	jmp	.L965	#
.L961:
	.loc 1 4200 0
	movq	-32(%rbp), %rax	# ttr, tmp651
	movzbl	16(%rax), %eax	# ttr_300->common.code, D.21793
	cmpb	$23, %al	#, D.21793
	je	.L966	#,
	.loc 1 4201 0
	movq	-40(%rbp), %rax	# ttl, tmp652
	movzbl	16(%rax), %eax	# ttl_299->common.code, D.21793
	cmpb	$23, %al	#, D.21793
	je	.L966	#,
	.loc 1 4203 0
	movq	-32(%rbp), %rax	# ttr, tmp653
	movzbl	17(%rax), %eax	# *ttr_300, tmp656
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-32(%rbp), %rax	# ttr, tmp657
	movzbl	17(%rax), %eax	# *ttr_300, tmp660
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-32(%rbp), %rax	# ttr, tmp661
	movzbl	62(%rax), %eax	# *ttr_300, tmp664
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-32(%rbp), %rax	# ttr, tmp665
	movzbl	16(%rax), %eax	# ttr_300->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L967	#,
	.loc 1 4203 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ttr, tmp666
	movq	8(%rax), %rax	# ttr_300->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L967	#,
	.loc 1 4203 0 discriminator 3
	movl	$1, %eax	#, iftmp.186
	jmp	.L968	#
.L967:
	.loc 1 4203 0 discriminator 2
	movl	$0, %eax	#, iftmp.186
.L968:
	.loc 1 4203 0 discriminator 4
	sall	$3, %eax	#, D.21795
	movl	%edx, %ecx	# D.21795, D.21795
	orl	%eax, %ecx	# D.21795, D.21795
	movq	-40(%rbp), %rax	# ttl, tmp667
	movzbl	17(%rax), %eax	# *ttl_299, tmp670
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-40(%rbp), %rax	# ttl, tmp671
	movzbl	17(%rax), %eax	# *ttl_299, tmp674
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-40(%rbp), %rax	# ttl, tmp675
	movzbl	62(%rax), %eax	# *ttl_299, tmp678
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-40(%rbp), %rax	# ttl, tmp679
	movzbl	16(%rax), %eax	# ttl_299->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L969	#,
	.loc 1 4203 0 discriminator 1
	movq	-40(%rbp), %rax	# ttl, tmp680
	movq	8(%rax), %rax	# ttl_299->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L969	#,
	.loc 1 4203 0 discriminator 3
	movl	$1, %eax	#, iftmp.187
	jmp	.L970	#
.L969:
	.loc 1 4203 0 discriminator 2
	movl	$0, %eax	#, iftmp.187
.L970:
	.loc 1 4203 0 discriminator 4
	sall	$3, %eax	#, D.21795
	orl	%edx, %eax	# D.21795, D.21795
	notl	%eax	# D.21795
	andl	%ecx, %eax	# D.21795, D.21795
	testl	%eax, %eax	# D.21795
	je	.L971	#,
	.loc 1 4204 0 is_stmt 1
	movl	-156(%rbp), %ecx	# parmnum, tmp681
	movq	-152(%rbp), %rdx	# funname, tmp682
	movq	-136(%rbp), %rax	# errtype, tmp683
	movq	%rax, %rsi	# tmp683,
	movl	$.LC133, %edi	#,
	call	warn_for_assignment	#
	jmp	.L972	#
.L971:
	.loc 1 4208 0
	movq	-40(%rbp), %rax	# ttl, tmp684
	movzbl	16(%rax), %eax	# ttl_299->common.code, D.21793
	cmpb	$5, %al	#, D.21793
	je	.L972	#,
	.loc 1 4208 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ttr, tmp685
	movzbl	16(%rax), %eax	# ttr_300->common.code, D.21793
	cmpb	$5, %al	#, D.21793
	je	.L972	#,
	.loc 1 4209 0 is_stmt 1
	movq	-88(%rbp), %rdx	# rhstype, tmp686
	movq	-120(%rbp), %rax	# type, tmp687
	movq	%rdx, %rsi	# tmp686,
	movq	%rax, %rdi	# tmp687,
	call	comp_target_types	#
	testl	%eax, %eax	# D.21795
	jne	.L972	#,
	.loc 1 4212 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.188
	testl	%eax, %eax	# pedantic.188
	je	.L972	#,
	.loc 1 4213 0
	movl	-156(%rbp), %ecx	# parmnum, tmp688
	movq	-152(%rbp), %rdx	# funname, tmp689
	movq	-136(%rbp), %rax	# errtype, tmp690
	movq	%rax, %rsi	# tmp690,
	movl	$.LC136, %edi	#,
	call	warn_for_assignment	#
	.loc 1 4203 0
	jmp	.L965	#
.L972:
	jmp	.L965	#
.L966:
	.loc 1 4216 0
	movq	-40(%rbp), %rax	# ttl, tmp691
	movzbl	16(%rax), %eax	# ttl_299->common.code, D.21793
	cmpb	$23, %al	#, D.21793
	jne	.L965	#,
	.loc 1 4217 0
	movq	-32(%rbp), %rax	# ttr, tmp692
	movzbl	16(%rax), %eax	# ttr_300->common.code, D.21793
	cmpb	$23, %al	#, D.21793
	jne	.L965	#,
	.loc 1 4223 0
	movq	-40(%rbp), %rax	# ttl, tmp693
	movzbl	17(%rax), %eax	# *ttl_299, tmp696
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-40(%rbp), %rax	# ttl, tmp697
	movzbl	17(%rax), %eax	# *ttl_299, tmp700
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-40(%rbp), %rax	# ttl, tmp701
	movzbl	62(%rax), %eax	# *ttl_299, tmp704
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-40(%rbp), %rax	# ttl, tmp705
	movzbl	16(%rax), %eax	# ttl_299->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L973	#,
	.loc 1 4223 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# ttl, tmp706
	movq	8(%rax), %rax	# ttl_299->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L973	#,
	.loc 1 4223 0 discriminator 3
	movl	$1, %eax	#, iftmp.189
	jmp	.L974	#
.L973:
	.loc 1 4223 0 discriminator 2
	movl	$0, %eax	#, iftmp.189
.L974:
	.loc 1 4223 0 discriminator 4
	sall	$3, %eax	#, D.21795
	movl	%edx, %ecx	# D.21795, D.21795
	orl	%eax, %ecx	# D.21795, D.21795
	movq	-32(%rbp), %rax	# ttr, tmp707
	movzbl	17(%rax), %eax	# *ttr_300, tmp710
	shrb	$4, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %edx	# D.21796, D.21795
	movq	-32(%rbp), %rax	# ttr, tmp711
	movzbl	17(%rax), %eax	# *ttr_300, tmp714
	shrb	$3, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	addl	%eax, %eax	# D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-32(%rbp), %rax	# ttr, tmp715
	movzbl	62(%rax), %eax	# *ttr_300, tmp718
	shrb	$5, %al	#, D.21796
	andl	$1, %eax	#, D.21796
	movzbl	%al, %eax	# D.21796, D.21795
	sall	$2, %eax	#, D.21795
	orl	%eax, %edx	# D.21795, D.21795
	movq	-32(%rbp), %rax	# ttr, tmp719
	movzbl	16(%rax), %eax	# ttr_300->common.code, D.21793
	cmpb	$20, %al	#, D.21793
	jne	.L975	#,
	.loc 1 4223 0 discriminator 1
	movq	-32(%rbp), %rax	# ttr, tmp720
	movq	8(%rax), %rax	# ttr_300->common.type, D.21794
	testq	%rax, %rax	# D.21794
	je	.L975	#,
	.loc 1 4223 0 discriminator 3
	movl	$1, %eax	#, iftmp.190
	jmp	.L976	#
.L975:
	.loc 1 4223 0 discriminator 2
	movl	$0, %eax	#, iftmp.190
.L976:
	.loc 1 4223 0 discriminator 4
	sall	$3, %eax	#, D.21795
	orl	%edx, %eax	# D.21795, D.21795
	notl	%eax	# D.21795
	andl	%ecx, %eax	# D.21795, D.21795
	testl	%eax, %eax	# D.21795
	je	.L965	#,
	.loc 1 4224 0 is_stmt 1
	movl	-156(%rbp), %ecx	# parmnum, tmp721
	movq	-152(%rbp), %rdx	# funname, tmp722
	movq	-136(%rbp), %rax	# errtype, tmp723
	movq	%rax, %rsi	# tmp723,
	movl	$.LC132, %edi	#,
	call	warn_for_assignment	#
	.loc 1 4188 0
	jmp	.L977	#
.L965:
	jmp	.L977	#
.L960:
	.loc 1 4229 0
	movl	-156(%rbp), %ecx	# parmnum, tmp724
	movq	-152(%rbp), %rdx	# funname, tmp725
	movq	-136(%rbp), %rax	# errtype, tmp726
	movq	%rax, %rsi	# tmp726,
	movl	$.LC137, %edi	#,
	call	warn_for_assignment	#
.L977:
	.loc 1 4231 0
	movq	-128(%rbp), %rdx	# rhs, tmp727
	movq	-120(%rbp), %rax	# type, tmp728
	movq	%rdx, %rsi	# tmp727,
	movq	%rax, %rdi	# tmp728,
	call	convert	#
	jmp	.L904	#
.L957:
.LBE54:
	.loc 1 4233 0
	cmpl	$13, -112(%rbp)	#, codel
	jne	.L978	#,
	.loc 1 4233 0 is_stmt 0 discriminator 1
	cmpl	$6, -108(%rbp)	#, coder
	jne	.L978	#,
	.loc 1 4238 0 is_stmt 1
	movq	-128(%rbp), %rax	# rhs, tmp729
	movzbl	16(%rax), %eax	# rhs_2->common.code, D.21793
	cmpb	$25, %al	#, D.21793
	jne	.L979	#,
	.loc 1 4238 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# rhs, tmp730
	movq	%rax, %rdi	# tmp730,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21795
	jne	.L980	#,
.L979:
	.loc 1 4240 0 is_stmt 1
	movq	-128(%rbp), %rax	# rhs, tmp731
	movzbl	16(%rax), %eax	# rhs_2->common.code, D.21793
	.loc 1 4239 0
	cmpb	$115, %al	#, D.21793
	jne	.L981	#,
	.loc 1 4241 0
	movq	-128(%rbp), %rax	# rhs, tmp732
	movq	8(%rax), %rax	# rhs_2->common.type, D.21794
	movzbl	16(%rax), %eax	# _395->common.code, D.21793
	cmpb	$6, %al	#, D.21793
	jne	.L981	#,
	.loc 1 4242 0
	movq	-128(%rbp), %rax	# rhs, tmp733
	movq	32(%rax), %rax	# rhs_2->exp.operands, D.21794
	movzbl	16(%rax), %eax	# _397->common.code, D.21793
	cmpb	$25, %al	#, D.21793
	jne	.L981	#,
	.loc 1 4243 0
	movq	-128(%rbp), %rax	# rhs, tmp734
	movq	32(%rax), %rax	# rhs_2->exp.operands, D.21794
	movq	%rax, %rdi	# D.21794,
	call	integer_zerop	#
	.loc 1 4240 0
	testl	%eax, %eax	# D.21795
	jne	.L980	#,
.L981:
	.loc 1 4245 0
	movl	-156(%rbp), %ecx	# parmnum, tmp735
	movq	-152(%rbp), %rdx	# funname, tmp736
	movq	-136(%rbp), %rax	# errtype, tmp737
	movq	%rax, %rsi	# tmp737,
	movl	$.LC138, %edi	#,
	call	warn_for_assignment	#
	.loc 1 4247 0
	movq	-128(%rbp), %rdx	# rhs, tmp738
	movq	-120(%rbp), %rax	# type, tmp739
	movq	%rdx, %rsi	# tmp738,
	movq	%rax, %rdi	# tmp739,
	call	convert	#
	jmp	.L904	#
.L980:
	.loc 1 4249 0
	movq	global_trees+112(%rip), %rax	# global_trees, D.21792
	jmp	.L904	#
.L978:
	.loc 1 4251 0
	cmpl	$6, -112(%rbp)	#, codel
	jne	.L982	#,
	.loc 1 4251 0 is_stmt 0 discriminator 1
	cmpl	$13, -108(%rbp)	#, coder
	jne	.L982	#,
	.loc 1 4253 0 is_stmt 1
	movl	-156(%rbp), %ecx	# parmnum, tmp740
	movq	-152(%rbp), %rdx	# funname, tmp741
	movq	-136(%rbp), %rax	# errtype, tmp742
	movq	%rax, %rsi	# tmp742,
	movl	$.LC139, %edi	#,
	call	warn_for_assignment	#
	.loc 1 4255 0
	movq	-128(%rbp), %rdx	# rhs, tmp743
	movq	-120(%rbp), %rax	# type, tmp744
	movq	%rdx, %rsi	# tmp743,
	movq	%rax, %rdi	# tmp744,
	call	convert	#
	jmp	.L904	#
.L982:
	.loc 1 4257 0
	cmpl	$11, -112(%rbp)	#, codel
	jne	.L955	#,
	.loc 1 4257 0 is_stmt 0 discriminator 1
	cmpl	$13, -108(%rbp)	#, coder
	jne	.L955	#,
	.loc 1 4258 0 is_stmt 1
	movq	-128(%rbp), %rdx	# rhs, tmp745
	movq	-120(%rbp), %rax	# type, tmp746
	movq	%rdx, %rsi	# tmp745,
	movq	%rax, %rdi	# tmp746,
	call	convert	#
	jmp	.L904	#
.L955:
	.loc 1 4260 0
	cmpq	$0, -136(%rbp)	#, errtype
	jne	.L983	#,
	.loc 1 4262 0
	cmpq	$0, -152(%rbp)	#, funname
	je	.L984	#,
.LBB55:
	.loc 1 4264 0
	call	maybe_building_objc_message_expr	#
	movq	%rax, -24(%rbp)	# tmp747, selector
	.loc 1 4266 0
	cmpq	$0, -24(%rbp)	#, selector
	je	.L985	#,
	.loc 1 4266 0 is_stmt 0 discriminator 1
	cmpl	$2, -156(%rbp)	#, parmnum
	jle	.L985	#,
	.loc 1 4268 0 is_stmt 1
	movq	-24(%rbp), %rax	# selector, tmp748
	movq	32(%rax), %rax	# selector_405->identifier.id.str, D.21797
	.loc 1 4267 0
	movl	-156(%rbp), %edx	# parmnum, tmp749
	leal	-2(%rdx), %ecx	#, D.21795
	movq	%rax, %rdx	# D.21797,
	movl	%ecx, %esi	# D.21795,
	movl	$.LC140, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L988	#
.L985:
	.loc 1 4271 0
	movq	-152(%rbp), %rax	# funname, tmp750
	movq	32(%rax), %rdx	# funname_258(D)->identifier.id.str, D.21797
	.loc 1 4270 0
	movl	-156(%rbp), %eax	# parmnum, tmp751
	movl	%eax, %esi	# tmp751,
	movl	$.LC140, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.LBE55:
	jmp	.L988	#
.L984:
	.loc 1 4274 0
	movl	-156(%rbp), %eax	# parmnum, tmp752
	movl	%eax, %esi	# tmp752,
	movl	$.LC141, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L988	#
.L983:
	.loc 1 4278 0
	movq	-136(%rbp), %rax	# errtype, tmp753
	movq	%rax, %rsi	# tmp753,
	movl	$.LC142, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L988:
	.loc 1 4280 0
	movq	global_trees(%rip), %rax	# global_trees, D.21792
.L904:
	.loc 1 4281 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	convert_for_assignment, .-convert_for_assignment
	.globl	c_convert_parm_for_inlining
	.type	c_convert_parm_for_inlining, @function
c_convert_parm_for_inlining:
.LFB41:
	.loc 1 4288 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# parm, parm
	movq	%rsi, -32(%rbp)	# value, value
	movq	%rdx, -40(%rbp)	# fn, fn
	.loc 1 4293 0
	cmpq	$0, -32(%rbp)	#, value
	je	.L990	#,
	.loc 1 4293 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fn, tmp75
	movq	8(%rax), %rax	# fn_4(D)->common.type, D.21810
	movq	24(%rax), %rax	# _5->type.values, D.21810
	testq	%rax, %rax	# D.21810
	je	.L991	#,
.L990:
	.loc 1 4294 0 is_stmt 1
	movq	-32(%rbp), %rax	# value, D.21809
	jmp	.L992	#
.L991:
	.loc 1 4296 0
	movq	-24(%rbp), %rax	# parm, tmp76
	movq	8(%rax), %rax	# parm_7(D)->common.type, tmp77
	movq	%rax, -8(%rbp)	# tmp77, type
	.loc 1 4297 0
	movq	-40(%rbp), %rax	# fn, tmp78
	movq	72(%rax), %rcx	# fn_4(D)->decl.name, D.21810
	movq	-40(%rbp), %rdx	# fn, tmp79
	movq	-32(%rbp), %rsi	# value, tmp80
	movq	-8(%rbp), %rax	# type, tmp81
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# D.21810,
	movq	%rdx, %rcx	# tmp79,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp81,
	call	convert_for_assignment	#
	movq	%rax, -16(%rbp)	# tmp82, ret
	.loc 1 4300 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.191
	andl	$33554432, %eax	#, D.21811
	testl	%eax, %eax	# D.21811
	jne	.L993	#,
	.loc 1 4301 0
	movq	-8(%rbp), %rax	# type, tmp83
	movzbl	16(%rax), %eax	# type_8->common.code, D.21812
	cmpb	$6, %al	#, D.21812
	je	.L994	#,
	.loc 1 4301 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# type, tmp84
	movzbl	16(%rax), %eax	# type_8->common.code, D.21812
	cmpb	$10, %al	#, D.21812
	je	.L994	#,
	movq	-8(%rbp), %rax	# type, tmp85
	movzbl	16(%rax), %eax	# type_8->common.code, D.21812
	cmpb	$11, %al	#, D.21812
	je	.L994	#,
	movq	-8(%rbp), %rax	# type, tmp86
	movzbl	16(%rax), %eax	# type_8->common.code, D.21812
	cmpb	$12, %al	#, D.21812
	jne	.L993	#,
.L994:
	.loc 1 4302 0 is_stmt 1
	movq	-8(%rbp), %rax	# type, tmp87
	movzwl	60(%rax), %eax	# *type_8, tmp90
	andw	$511, %ax	#, D.21813
	movzwl	%ax, %edx	# D.21813, D.21811
	movq	integer_types+40(%rip), %rax	# integer_types, D.21810
	movzwl	60(%rax), %eax	# *_19, tmp93
	andw	$511, %ax	#, D.21813
	movzwl	%ax, %eax	# D.21813, D.21811
	cmpl	%eax, %edx	# D.21811, D.21811
	jge	.L993	#,
	.loc 1 4303 0
	movq	-16(%rbp), %rax	# ret, tmp94
	movq	%rax, %rdi	# tmp94,
	call	default_conversion	#
	movq	%rax, -16(%rbp)	# tmp95, ret
.L993:
	.loc 1 4304 0
	movq	-16(%rbp), %rax	# ret, D.21809
.L992:
	.loc 1 4305 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	c_convert_parm_for_inlining, .-c_convert_parm_for_inlining
	.type	warn_for_assignment, @function
warn_for_assignment:
.LFB42:
	.loc 1 4319 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# msgid, msgid
	movq	%rsi, -16(%rbp)	# opname, opname
	movq	%rdx, -24(%rbp)	# function, function
	movl	%ecx, -28(%rbp)	# argnum, argnum
	.loc 1 4321 0
	nop
	.loc 1 4353 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	warn_for_assignment, .-warn_for_assignment
	.type	valid_compound_expr_initializer, @function
valid_compound_expr_initializer:
.LFB43:
	.loc 1 4365 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# value, value
	movq	%rsi, -16(%rbp)	# endtype, endtype
	.loc 1 4366 0
	movq	-8(%rbp), %rax	# value, tmp69
	movzbl	16(%rax), %eax	# value_2(D)->common.code, D.21815
	cmpb	$47, %al	#, D.21815
	jne	.L998	#,
	.loc 1 4368 0
	movq	-8(%rbp), %rax	# value, tmp70
	movq	32(%rax), %rax	# value_2(D)->exp.operands, D.21816
	movq	-16(%rbp), %rdx	# endtype, tmp71
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# D.21816,
	call	valid_compound_expr_initializer	#
	.loc 1 4369 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21816
	.loc 1 4368 0
	cmpq	%rdx, %rax	# D.21816, D.21816
	jne	.L999	#,
	.loc 1 4370 0
	movq	global_trees(%rip), %rax	# global_trees, D.21814
	jmp	.L1000	#
.L999:
	.loc 1 4371 0
	movq	-8(%rbp), %rax	# value, tmp72
	movq	40(%rax), %rax	# value_2(D)->exp.operands, D.21816
	movq	-16(%rbp), %rdx	# endtype, tmp73
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# D.21816,
	call	valid_compound_expr_initializer	#
	jmp	.L1000	#
.L998:
	.loc 1 4374 0
	movq	-8(%rbp), %rax	# value, tmp74
	movzbl	17(%rax), %eax	# *value_2(D), D.21815
	andl	$2, %eax	#, D.21815
	testb	%al, %al	# D.21815
	jne	.L1001	#,
	.loc 1 4375 0
	movq	-16(%rbp), %rdx	# endtype, tmp75
	movq	-8(%rbp), %rax	# value, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	initializer_constant_valid_p	#
	testq	%rax, %rax	# D.21816
	jne	.L1001	#,
	.loc 1 4376 0
	movq	global_trees(%rip), %rax	# global_trees, D.21814
	jmp	.L1000	#
.L1001:
	.loc 1 4378 0
	movq	-8(%rbp), %rax	# value, D.21814
.L1000:
	.loc 1 4379 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	valid_compound_expr_initializer, .-valid_compound_expr_initializer
	.section	.rodata
	.align 8
.LC143:
	.string	"traditional C rejects automatic aggregate initialization"
	.text
	.globl	store_init_value
	.type	store_init_value, @function
store_init_value:
.LFB44:
	.loc 1 4389 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# decl, decl
	movq	%rsi, -48(%rbp)	# init, init
	.loc 1 4394 0
	movq	-40(%rbp), %rax	# decl, tmp99
	movq	8(%rax), %rax	# decl_4(D)->common.type, tmp100
	movq	%rax, -16(%rbp)	# tmp100, type
	.loc 1 4395 0
	movq	-16(%rbp), %rax	# type, tmp101
	movzbl	16(%rax), %eax	# type_5->common.code, D.21817
	testb	%al, %al	# D.21817
	jne	.L1003	#,
	.loc 1 4396 0
	jmp	.L1002	#
.L1003:
	.loc 1 4401 0
	movq	-40(%rbp), %rax	# decl, tmp102
	movzbl	18(%rax), %eax	# *decl_4(D), D.21817
	andl	$4, %eax	#, D.21817
	.loc 1 4400 0
	testb	%al, %al	# D.21817
	jne	.L1005	#,
	.loc 1 4401 0 discriminator 2
	movl	pedantic(%rip), %eax	# pedantic, pedantic.193
	.loc 1 4400 0 discriminator 2
	testl	%eax, %eax	# pedantic.193
	je	.L1006	#,
	.loc 1 4401 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.194
	testl	%eax, %eax	# flag_isoc99.194
	jne	.L1006	#,
.L1005:
	.loc 1 4400 0 discriminator 1
	movl	$1, %edx	#, iftmp.192
	jmp	.L1007	#
.L1006:
	.loc 1 4400 0 is_stmt 0 discriminator 3
	movl	$0, %edx	#, iftmp.192
.L1007:
	.loc 1 4400 0 discriminator 4
	movq	-40(%rbp), %rax	# decl, tmp103
	movzbl	18(%rax), %eax	# *decl_4(D), tmp106
	shrb	$2, %al	#, D.21818
	andl	$1, %eax	#, D.21818
	movzbl	%al, %edi	# D.21818, D.21819
	movq	-48(%rbp), %rsi	# init, tmp107
	movq	-16(%rbp), %rax	# type, tmp108
	movl	%edx, %ecx	# iftmp.192,
	movl	%edi, %edx	# D.21819,
	movq	%rax, %rdi	# tmp108,
	call	digest_init	#
	movq	%rax, -32(%rbp)	# tmp109, value
	.loc 1 4434 0 is_stmt 1 discriminator 4
	movl	warn_traditional(%rip), %eax	# warn_traditional, warn_traditional.195
	testl	%eax, %eax	# warn_traditional.195
	je	.L1008	#,
	.loc 1 4434 0 is_stmt 0 discriminator 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.196
	testl	%eax, %eax	# in_system_header.196
	jne	.L1008	#,
	.loc 1 4435 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp110
	movq	8(%rax), %rax	# decl_4(D)->common.type, D.21820
	movzbl	16(%rax), %eax	# _19->common.code, D.21817
	cmpb	$18, %al	#, D.21817
	je	.L1009	#,
	.loc 1 4435 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# decl, tmp111
	movq	8(%rax), %rax	# decl_4(D)->common.type, D.21820
	movzbl	16(%rax), %eax	# _21->common.code, D.21817
	cmpb	$20, %al	#, D.21817
	je	.L1009	#,
	.loc 1 4435 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp112
	movq	8(%rax), %rax	# decl_4(D)->common.type, D.21820
	movzbl	16(%rax), %eax	# _23->common.code, D.21817
	cmpb	$21, %al	#, D.21817
	je	.L1009	#,
	movq	-40(%rbp), %rax	# decl, tmp113
	movq	8(%rax), %rax	# decl_4(D)->common.type, D.21820
	movzbl	16(%rax), %eax	# _25->common.code, D.21817
	cmpb	$22, %al	#, D.21817
	je	.L1009	#,
	movq	-40(%rbp), %rax	# decl, tmp114
	movq	8(%rax), %rax	# decl_4(D)->common.type, D.21820
	movzbl	16(%rax), %eax	# _27->common.code, D.21817
	cmpb	$19, %al	#, D.21817
	jne	.L1008	#,
.L1009:
	movq	-40(%rbp), %rax	# decl, tmp115
	movzbl	18(%rax), %eax	# *decl_4(D), D.21817
	andl	$4, %eax	#, D.21817
	testb	%al, %al	# D.21817
	jne	.L1008	#,
	.loc 1 4436 0 is_stmt 1
	movl	$.LC143, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1008:
	.loc 1 4438 0
	movq	-40(%rbp), %rax	# decl, tmp116
	movq	-32(%rbp), %rdx	# value, tmp117
	movq	%rdx, 104(%rax)	# tmp117, decl_4(D)->decl.initial
	.loc 1 4441 0
	jmp	.L1010	#
.L1013:
	.loc 1 4441 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# value, tmp118
	movq	32(%rax), %rax	# value_1->exp.operands, tmp119
	movq	%rax, -32(%rbp)	# tmp119, value
.L1010:
	movq	-32(%rbp), %rax	# value, tmp120
	movzbl	16(%rax), %eax	# value_1->common.code, D.21817
	cmpb	$115, %al	#, D.21817
	je	.L1011	#,
	.loc 1 4441 0 discriminator 3
	movq	-32(%rbp), %rax	# value, tmp121
	movzbl	16(%rax), %eax	# value_1->common.code, D.21817
	cmpb	$114, %al	#, D.21817
	je	.L1011	#,
	.loc 1 4441 0 discriminator 1
	movq	-32(%rbp), %rax	# value, tmp122
	movzbl	16(%rax), %eax	# value_1->common.code, D.21817
	cmpb	$116, %al	#, D.21817
	jne	.L1012	#,
.L1011:
	.loc 1 4441 0 discriminator 2
	movq	-32(%rbp), %rax	# value, tmp123
	movq	32(%rax), %rdx	# value_1->exp.operands, D.21820
	movq	global_trees(%rip), %rax	# global_trees, D.21820
	cmpq	%rax, %rdx	# D.21820, D.21820
	je	.L1012	#,
	.loc 1 4441 0 discriminator 1
	movq	-32(%rbp), %rax	# value, tmp124
	movq	8(%rax), %rdx	# value_1->common.type, D.21820
	movq	-32(%rbp), %rax	# value, tmp125
	movq	32(%rax), %rax	# value_1->exp.operands, D.21820
	movq	8(%rax), %rax	# _37->common.type, D.21820
	cmpq	%rax, %rdx	# D.21820, D.21820
	je	.L1013	#,
.L1012:
	.loc 1 4442 0 is_stmt 1
	movq	-32(%rbp), %rax	# value, tmp126
	movq	%rax, %rdi	# tmp126,
	call	constant_expression_warning	#
	.loc 1 4445 0
	movq	-16(%rbp), %rax	# type, tmp127
	movzbl	16(%rax), %eax	# type_5->common.code, D.21817
	cmpb	$18, %al	#, D.21817
	jne	.L1002	#,
	.loc 1 4446 0
	movq	-16(%rbp), %rax	# type, tmp128
	movq	24(%rax), %rax	# type_5->type.values, D.21820
	testq	%rax, %rax	# D.21820
	jne	.L1002	#,
	.loc 1 4447 0
	movq	global_trees(%rip), %rax	# global_trees, D.21820
	cmpq	-32(%rbp), %rax	# value, D.21820
	je	.L1002	#,
.LBB56:
	.loc 1 4449 0
	movq	-48(%rbp), %rax	# init, tmp129
	movq	%rax, -24(%rbp)	# tmp129, inside_init
	.loc 1 4451 0
	movq	-48(%rbp), %rax	# init, tmp130
	movzbl	16(%rax), %eax	# init_15(D)->common.code, D.21817
	cmpb	$116, %al	#, D.21817
	jne	.L1014	#,
	.loc 1 4452 0
	movq	-48(%rbp), %rax	# init, tmp131
	movq	32(%rax), %rax	# init_15(D)->exp.operands, tmp132
	movq	%rax, -24(%rbp)	# tmp132, inside_init
.L1014:
	.loc 1 4453 0
	movq	-24(%rbp), %rax	# inside_init, tmp133
	movq	%rax, %rdi	# tmp133,
	call	fold	#
	movq	%rax, -24(%rbp)	# tmp134, inside_init
	.loc 1 4455 0
	movq	-24(%rbp), %rax	# inside_init, tmp135
	movzbl	16(%rax), %eax	# inside_init_46->common.code, D.21817
	cmpb	$-86, %al	#, D.21817
	jne	.L1002	#,
.LBB57:
	.loc 1 4457 0
	movq	-24(%rbp), %rax	# inside_init, tmp136
	movq	32(%rax), %rax	# inside_init_46->exp.operands, D.21820
	movq	32(%rax), %rax	# _48->exp.operands, tmp137
	movq	%rax, -8(%rbp)	# tmp137, decl
	.loc 1 4459 0
	movq	-8(%rbp), %rax	# decl, tmp138
	movq	8(%rax), %rax	# decl_49->common.type, D.21820
	movq	24(%rax), %rax	# _50->type.values, D.21820
	testq	%rax, %rax	# D.21820
	je	.L1002	#,
	.loc 1 4464 0
	movq	-8(%rbp), %rax	# decl, tmp139
	movq	8(%rax), %rax	# decl_49->common.type, D.21820
	movq	24(%rax), %rdx	# _52->type.values, D.21820
	movq	-16(%rbp), %rax	# type, tmp140
	movq	%rdx, 24(%rax)	# D.21820, type_5->type.values
	.loc 1 4465 0
	movq	-16(%rbp), %rax	# type, tmp141
	movq	%rax, %rdi	# tmp141,
	call	layout_type	#
	.loc 1 4466 0
	movq	-8(%rbp), %rax	# decl, tmp142
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	layout_decl	#
.L1002:
.LBE57:
.LBE56:
	.loc 1 4470 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	store_init_value, .-store_init_value
	.local	spelling
	.comm	spelling,8,8
	.local	spelling_base
	.comm	spelling_base,8,8
	.local	spelling_size
	.comm	spelling_size,4,4
	.type	push_string, @function
push_string:
.LFB45:
	.loc 1 4540 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# string, string
.LBB58:
	.loc 1 4541 0
	movq	spelling(%rip), %rax	# spelling, spelling.197
	movq	%rax, %rdx	# spelling.197, spelling.198
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.199
	subq	%rax, %rdx	# spelling_base.200, D.21822
	movq	%rdx, %rax	# D.21822, D.21822
	sarq	$4, %rax	#, tmp86
	movl	%eax, -4(%rbp)	# D.21822, depth
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.201
	cmpl	%eax, -4(%rbp)	# spelling_size.201, depth
	jl	.L1016	#,
	.loc 1 4541 0 is_stmt 0 discriminator 1
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.202
	addl	$10, %eax	#, spelling_size.203
	movl	%eax, spelling_size(%rip)	# spelling_size.203, spelling_size
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.204
	testq	%rax, %rax	# spelling_base.204
	jne	.L1017	#,
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.205
	cltq
	salq	$4, %rax	#, D.21823
	movq	%rax, %rdi	# D.21823,
	call	xmalloc	#
	movq	%rax, spelling_base(%rip)	# spelling_base.206, spelling_base
	jmp	.L1018	#
.L1017:
	.loc 1 4541 0 discriminator 2
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.207
	cltq
	salq	$4, %rax	#, D.21823
	movq	%rax, %rdx	# D.21823, D.21823
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.208
	movq	%rdx, %rsi	# D.21823,
	movq	%rax, %rdi	# spelling_base.208,
	call	xrealloc	#
	movq	%rax, spelling_base(%rip)	# spelling_base.209, spelling_base
.L1018:
	.loc 1 4541 0 discriminator 1
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.210
	movl	-4(%rbp), %edx	# depth, tmp88
	movslq	%edx, %rdx	# tmp88, D.21823
	salq	$4, %rdx	#, D.21823
	addq	%rdx, %rax	# D.21823, spelling.211
	movq	%rax, spelling(%rip)	# spelling.211, spelling
.L1016:
	.loc 1 4541 0 discriminator 2
	movq	spelling(%rip), %rax	# spelling, spelling.212
	movl	$1, (%rax)	#, spelling.212_25->kind
	movq	spelling(%rip), %rax	# spelling, spelling.213
	movq	-24(%rbp), %rdx	# string, tmp89
	movq	%rdx, 8(%rax)	# tmp89, spelling.213_26->u.s
	movq	spelling(%rip), %rax	# spelling, spelling.214
	addq	$16, %rax	#, spelling.215
	movq	%rax, spelling(%rip)	# spelling.215, spelling
.LBE58:
	.loc 1 4542 0 is_stmt 1 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	push_string, .-push_string
	.section	.rodata
.LC144:
	.string	"<anonymous>"
	.text
	.type	push_member_name, @function
push_member_name:
.LFB46:
	.loc 1 4550 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	.loc 1 4552 0
	movq	-24(%rbp), %rax	# decl, tmp89
	movq	72(%rax), %rax	# decl_2(D)->decl.name, D.21824
	testq	%rax, %rax	# D.21824
	je	.L1020	#,
	.loc 1 4552 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp90
	movq	72(%rax), %rax	# decl_2(D)->decl.name, D.21824
	movq	32(%rax), %rax	# _4->identifier.id.str, iftmp.216
	jmp	.L1021	#
.L1020:
	.loc 1 4552 0 discriminator 2
	movl	$.LC144, %eax	#, iftmp.216
.L1021:
	.loc 1 4551 0 is_stmt 1
	movq	%rax, -8(%rbp)	# iftmp.216, string
.LBB59:
	.loc 1 4553 0
	movq	spelling(%rip), %rax	# spelling, spelling.217
	movq	%rax, %rdx	# spelling.217, spelling.218
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.219
	subq	%rax, %rdx	# spelling_base.220, D.21825
	movq	%rdx, %rax	# D.21825, D.21825
	sarq	$4, %rax	#, tmp91
	movl	%eax, -12(%rbp)	# D.21825, depth
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.221
	cmpl	%eax, -12(%rbp)	# spelling_size.221, depth
	jl	.L1022	#,
	.loc 1 4553 0 is_stmt 0 discriminator 1
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.222
	addl	$10, %eax	#, spelling_size.223
	movl	%eax, spelling_size(%rip)	# spelling_size.223, spelling_size
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.224
	testq	%rax, %rax	# spelling_base.224
	jne	.L1023	#,
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.225
	cltq
	salq	$4, %rax	#, D.21826
	movq	%rax, %rdi	# D.21826,
	call	xmalloc	#
	movq	%rax, spelling_base(%rip)	# spelling_base.226, spelling_base
	jmp	.L1024	#
.L1023:
	.loc 1 4553 0 discriminator 2
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.227
	cltq
	salq	$4, %rax	#, D.21826
	movq	%rax, %rdx	# D.21826, D.21826
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.228
	movq	%rdx, %rsi	# D.21826,
	movq	%rax, %rdi	# spelling_base.228,
	call	xrealloc	#
	movq	%rax, spelling_base(%rip)	# spelling_base.229, spelling_base
.L1024:
	.loc 1 4553 0 discriminator 1
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.230
	movl	-12(%rbp), %edx	# depth, tmp93
	movslq	%edx, %rdx	# tmp93, D.21826
	salq	$4, %rdx	#, D.21826
	addq	%rdx, %rax	# D.21826, spelling.231
	movq	%rax, spelling(%rip)	# spelling.231, spelling
.L1022:
	.loc 1 4553 0 discriminator 2
	movq	spelling(%rip), %rax	# spelling, spelling.232
	movl	$2, (%rax)	#, spelling.232_32->kind
	movq	spelling(%rip), %rax	# spelling, spelling.233
	movq	-8(%rbp), %rdx	# string, tmp94
	movq	%rdx, 8(%rax)	# tmp94, spelling.233_33->u.s
	movq	spelling(%rip), %rax	# spelling, spelling.234
	addq	$16, %rax	#, spelling.235
	movq	%rax, spelling(%rip)	# spelling.235, spelling
.LBE59:
	.loc 1 4554 0 is_stmt 1 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	push_member_name, .-push_member_name
	.type	push_array_bounds, @function
push_array_bounds:
.LFB47:
	.loc 1 4561 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# bounds, bounds
.LBB60:
	.loc 1 4562 0
	movq	spelling(%rip), %rax	# spelling, spelling.236
	movq	%rax, %rdx	# spelling.236, spelling.237
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.238
	subq	%rax, %rdx	# spelling_base.239, D.21828
	movq	%rdx, %rax	# D.21828, D.21828
	sarq	$4, %rax	#, tmp86
	movl	%eax, -4(%rbp)	# D.21828, depth
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.240
	cmpl	%eax, -4(%rbp)	# spelling_size.240, depth
	jl	.L1026	#,
	.loc 1 4562 0 is_stmt 0 discriminator 1
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.241
	addl	$10, %eax	#, spelling_size.242
	movl	%eax, spelling_size(%rip)	# spelling_size.242, spelling_size
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.243
	testq	%rax, %rax	# spelling_base.243
	jne	.L1027	#,
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.244
	cltq
	salq	$4, %rax	#, D.21829
	movq	%rax, %rdi	# D.21829,
	call	xmalloc	#
	movq	%rax, spelling_base(%rip)	# spelling_base.245, spelling_base
	jmp	.L1028	#
.L1027:
	.loc 1 4562 0 discriminator 2
	movl	spelling_size(%rip), %eax	# spelling_size, spelling_size.246
	cltq
	salq	$4, %rax	#, D.21829
	movq	%rax, %rdx	# D.21829, D.21829
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.247
	movq	%rdx, %rsi	# D.21829,
	movq	%rax, %rdi	# spelling_base.247,
	call	xrealloc	#
	movq	%rax, spelling_base(%rip)	# spelling_base.248, spelling_base
.L1028:
	.loc 1 4562 0 discriminator 1
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.249
	movl	-4(%rbp), %edx	# depth, tmp88
	movslq	%edx, %rdx	# tmp88, D.21829
	salq	$4, %rdx	#, D.21829
	addq	%rdx, %rax	# D.21829, spelling.250
	movq	%rax, spelling(%rip)	# spelling.250, spelling
.L1026:
	.loc 1 4562 0 discriminator 2
	movq	spelling(%rip), %rax	# spelling, spelling.251
	movl	$3, (%rax)	#, spelling.251_25->kind
	movq	spelling(%rip), %rax	# spelling, spelling.252
	movl	-20(%rbp), %edx	# bounds, tmp89
	movl	%edx, 8(%rax)	# tmp89, spelling.252_26->u.i
	movq	spelling(%rip), %rax	# spelling, spelling.253
	addq	$16, %rax	#, spelling.254
	movq	%rax, spelling(%rip)	# spelling.254, spelling
.LBE60:
	.loc 1 4563 0 is_stmt 1 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	push_array_bounds, .-push_array_bounds
	.type	spelling_length, @function
spelling_length:
.LFB48:
	.loc 1 4569 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4570 0
	movl	$0, -12(%rbp)	#, size
	.loc 1 4573 0
	movq	spelling_base(%rip), %rax	# spelling_base, tmp69
	movq	%rax, -8(%rbp)	# tmp69, p
	jmp	.L1030	#
.L1033:
	.loc 1 4575 0
	movq	-8(%rbp), %rax	# p, tmp70
	movl	(%rax), %eax	# p_3->kind, D.21830
	cmpl	$3, %eax	#, D.21830
	jne	.L1031	#,
	.loc 1 4576 0
	addl	$25, -12(%rbp)	#, size
	jmp	.L1032	#
.L1031:
	.loc 1 4578 0
	movq	-8(%rbp), %rax	# p, tmp71
	movq	8(%rax), %rax	# p_3->u.s, D.21831
	movq	%rax, %rdi	# D.21831,
	call	strlen	#
	movl	%eax, %edx	# D.21832, D.21833
	movl	-12(%rbp), %eax	# size, size.255
	addl	%edx, %eax	# D.21833, D.21833
	addl	$1, %eax	#, D.21833
	movl	%eax, -12(%rbp)	# D.21833, size
.L1032:
	.loc 1 4573 0
	addq	$16, -8(%rbp)	#, p
.L1030:
	.loc 1 4573 0 is_stmt 0 discriminator 1
	movq	spelling(%rip), %rax	# spelling, spelling.256
	cmpq	%rax, -8(%rbp)	# spelling.256, p
	jb	.L1033	#,
	.loc 1 4581 0 is_stmt 1
	movl	-12(%rbp), %eax	# size, D.21830
	.loc 1 4582 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	spelling_length, .-spelling_length
	.section	.rodata
.LC145:
	.string	"[%d]"
	.text
	.type	print_spelling, @function
print_spelling:
.LFB49:
	.loc 1 4589 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# buffer, buffer
	.loc 1 4590 0
	movq	-40(%rbp), %rax	# buffer, tmp71
	movq	%rax, -24(%rbp)	# tmp71, d
	.loc 1 4593 0
	movq	spelling_base(%rip), %rax	# spelling_base, tmp72
	movq	%rax, -16(%rbp)	# tmp72, p
	jmp	.L1036	#
.L1042:
	.loc 1 4594 0
	movq	-16(%rbp), %rax	# p, tmp73
	movl	(%rax), %eax	# p_5->kind, D.21834
	cmpl	$3, %eax	#, D.21834
	jne	.L1037	#,
	.loc 1 4596 0
	movq	-16(%rbp), %rax	# p, tmp74
	movl	8(%rax), %edx	# p_5->u.i, D.21834
	movq	-24(%rbp), %rax	# d, tmp75
	movl	$.LC145, %esi	#,
	movq	%rax, %rdi	# tmp75,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 4597 0
	movq	-24(%rbp), %rax	# d, tmp76
	movq	%rax, %rdi	# tmp76,
	call	strlen	#
	addq	%rax, -24(%rbp)	# D.21835, d
	jmp	.L1038	#
.L1037:
.LBB61:
	.loc 1 4602 0
	movq	-16(%rbp), %rax	# p, tmp77
	movl	(%rax), %eax	# p_5->kind, D.21834
	cmpl	$2, %eax	#, D.21834
	jne	.L1039	#,
	.loc 1 4603 0
	movq	-24(%rbp), %rax	# d, d.257
	leaq	1(%rax), %rdx	#, tmp78
	movq	%rdx, -24(%rbp)	# tmp78, d
	movb	$46, (%rax)	#, *d.257_16
.L1039:
	.loc 1 4604 0
	movq	-16(%rbp), %rax	# p, tmp79
	movq	8(%rax), %rax	# p_5->u.s, tmp80
	movq	%rax, -8(%rbp)	# tmp80, s
	jmp	.L1040	#
.L1041:
	.loc 1 4604 0 is_stmt 0 discriminator 2
	addq	$1, -24(%rbp)	#, d
.L1040:
	.loc 1 4604 0 discriminator 1
	movq	-8(%rbp), %rax	# s, s.258
	leaq	1(%rax), %rdx	#, tmp81
	movq	%rdx, -8(%rbp)	# tmp81, s
	movzbl	(%rax), %edx	# *s.258_19, D.21836
	movq	-24(%rbp), %rax	# d, tmp82
	movb	%dl, (%rax)	# D.21836, *d_2
	movq	-24(%rbp), %rax	# d, tmp83
	movzbl	(%rax), %eax	# *d_2, D.21836
	testb	%al, %al	# D.21836
	jne	.L1041	#,
.L1038:
.LBE61:
	.loc 1 4593 0 is_stmt 1
	addq	$16, -16(%rbp)	#, p
.L1036:
	.loc 1 4593 0 is_stmt 0 discriminator 1
	movq	spelling(%rip), %rax	# spelling, spelling.259
	cmpq	%rax, -16(%rbp)	# spelling.259, p
	jb	.L1042	#,
	.loc 1 4607 0 is_stmt 1
	movq	-24(%rbp), %rax	# d, d.260
	leaq	1(%rax), %rdx	#, tmp84
	movq	%rdx, -24(%rbp)	# tmp84, d
	movb	$0, (%rax)	#, *d.260_25
	.loc 1 4608 0
	movq	-40(%rbp), %rax	# buffer, D.21837
	.loc 1 4609 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	print_spelling, .-print_spelling
	.section	.rodata
	.align 8
.LC146:
	.string	"(near initialization for `%s')"
	.text
	.globl	error_init
	.type	error_init, @function
error_init:
.LFB50:
	.loc 1 4618 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msgid, msgid
	.loc 1 4621 0
	movq	-24(%rbp), %rax	# msgid, tmp64
	movq	%rax, %rsi	# tmp64,
	movl	$.LC99, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4622 0
	call	spelling_length	#
	addl	$1, %eax	#, D.21839
	cltq
	leaq	15(%rax), %rdx	#, tmp65
	movl	$16, %eax	#, tmp79
	subq	$1, %rax	#, tmp66
	addq	%rdx, %rax	# tmp65, tmp67
	movl	$16, %ecx	#, tmp80
	movl	$0, %edx	#, tmp70
	divq	%rcx	# tmp80
	imulq	$16, %rax, %rax	#, tmp69, tmp71
	subq	%rax, %rsp	# tmp71,
	movq	%rsp, %rax	#, tmp72
	addq	$15, %rax	#, tmp73
	shrq	$4, %rax	#, tmp74
	salq	$4, %rax	#, tmp75
	movq	%rax, %rdi	# D.21841,
	call	print_spelling	#
	movq	%rax, -8(%rbp)	# tmp76, ofwhat
	.loc 1 4623 0
	movq	-8(%rbp), %rax	# ofwhat, tmp77
	movzbl	(%rax), %eax	# *ofwhat_6, D.21842
	testb	%al, %al	# D.21842
	je	.L1044	#,
	.loc 1 4624 0
	movq	-8(%rbp), %rax	# ofwhat, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	$.LC146, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L1044:
	.loc 1 4625 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	error_init, .-error_init
	.globl	pedwarn_init
	.type	pedwarn_init, @function
pedwarn_init:
.LFB51:
	.loc 1 4634 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msgid, msgid
	.loc 1 4637 0
	movq	-24(%rbp), %rax	# msgid, tmp64
	movq	%rax, %rsi	# tmp64,
	movl	$.LC99, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 4638 0
	call	spelling_length	#
	addl	$1, %eax	#, D.21845
	cltq
	leaq	15(%rax), %rdx	#, tmp65
	movl	$16, %eax	#, tmp79
	subq	$1, %rax	#, tmp66
	addq	%rdx, %rax	# tmp65, tmp67
	movl	$16, %ecx	#, tmp80
	movl	$0, %edx	#, tmp70
	divq	%rcx	# tmp80
	imulq	$16, %rax, %rax	#, tmp69, tmp71
	subq	%rax, %rsp	# tmp71,
	movq	%rsp, %rax	#, tmp72
	addq	$15, %rax	#, tmp73
	shrq	$4, %rax	#, tmp74
	salq	$4, %rax	#, tmp75
	movq	%rax, %rdi	# D.21847,
	call	print_spelling	#
	movq	%rax, -8(%rbp)	# tmp76, ofwhat
	.loc 1 4639 0
	movq	-8(%rbp), %rax	# ofwhat, tmp77
	movzbl	(%rax), %eax	# *ofwhat_6, D.21848
	testb	%al, %al	# D.21848
	je	.L1046	#,
	.loc 1 4640 0
	movq	-8(%rbp), %rax	# ofwhat, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	$.LC146, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L1046:
	.loc 1 4641 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	pedwarn_init, .-pedwarn_init
	.type	warning_init, @function
warning_init:
.LFB52:
	.loc 1 4650 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msgid, msgid
	.loc 1 4653 0
	movq	-24(%rbp), %rax	# msgid, tmp64
	movq	%rax, %rsi	# tmp64,
	movl	$.LC99, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 4654 0
	call	spelling_length	#
	addl	$1, %eax	#, D.21849
	cltq
	leaq	15(%rax), %rdx	#, tmp65
	movl	$16, %eax	#, tmp79
	subq	$1, %rax	#, tmp66
	addq	%rdx, %rax	# tmp65, tmp67
	movl	$16, %ecx	#, tmp80
	movl	$0, %edx	#, tmp70
	divq	%rcx	# tmp80
	imulq	$16, %rax, %rax	#, tmp69, tmp71
	subq	%rax, %rsp	# tmp71,
	movq	%rsp, %rax	#, tmp72
	addq	$15, %rax	#, tmp73
	shrq	$4, %rax	#, tmp74
	salq	$4, %rax	#, tmp75
	movq	%rax, %rdi	# D.21851,
	call	print_spelling	#
	movq	%rax, -8(%rbp)	# tmp76, ofwhat
	.loc 1 4655 0
	movq	-8(%rbp), %rax	# ofwhat, tmp77
	movzbl	(%rax), %eax	# *ofwhat_6, D.21852
	testb	%al, %al	# D.21852
	je	.L1048	#,
	.loc 1 4656 0
	movq	-8(%rbp), %rax	# ofwhat, tmp78
	movq	%rax, %rsi	# tmp78,
	movl	$.LC146, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1048:
	.loc 1 4657 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	warning_init, .-warning_init
	.section	.rodata
	.align 8
.LC147:
	.string	"char-array initialized from wide string"
	.align 8
.LC148:
	.string	"int-array initialized from non-wide string"
	.align 8
.LC149:
	.string	"initializer-string for array of chars is too long"
	.align 8
.LC150:
	.string	"array initialized from non-constant array expression"
	.align 8
.LC151:
	.string	"initializer element is not constant"
.LC152:
	.string	"initialization"
	.align 8
.LC153:
	.string	"initializer element is not computable at load time"
	.align 8
.LC154:
	.string	"variable-sized object may not be initialized"
.LC155:
	.string	"invalid initializer"
	.text
	.type	digest_init, @function
digest_init:
.LFB53:
	.loc 1 4670 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# type, type
	movq	%rsi, -80(%rbp)	# init, init
	movl	%edx, -84(%rbp)	# require_constant, require_constant
	movl	%ecx, -88(%rbp)	# constructor_constant, constructor_constant
	.loc 1 4671 0
	movq	-72(%rbp), %rax	# type, tmp159
	movzbl	16(%rax), %eax	# type_14(D)->common.code, D.21854
	movzbl	%al, %eax	# D.21854, tmp160
	movl	%eax, -60(%rbp)	# tmp160, code
	.loc 1 4672 0
	movq	-80(%rbp), %rax	# init, tmp161
	movq	%rax, -56(%rbp)	# tmp161, inside_init
	.loc 1 4674 0
	movq	global_trees(%rip), %rax	# global_trees, D.21855
	cmpq	-72(%rbp), %rax	# type, D.21855
	je	.L1051	#,
	.loc 1 4675 0
	movq	global_trees(%rip), %rax	# global_trees, D.21855
	cmpq	-80(%rbp), %rax	# init, D.21855
	je	.L1051	#,
	.loc 1 4676 0
	movq	-80(%rbp), %rax	# init, tmp162
	movq	8(%rax), %rdx	# init_17(D)->common.type, D.21855
	movq	global_trees(%rip), %rax	# global_trees, D.21855
	cmpq	%rax, %rdx	# D.21855, D.21855
	jne	.L1052	#,
.L1051:
	.loc 1 4677 0
	movq	global_trees(%rip), %rax	# global_trees, D.21853
	jmp	.L1053	#
.L1052:
	.loc 1 4682 0
	movq	-80(%rbp), %rax	# init, tmp163
	movzbl	16(%rax), %eax	# init_17(D)->common.code, D.21854
	cmpb	$116, %al	#, D.21854
	jne	.L1054	#,
	.loc 1 4683 0
	movq	-80(%rbp), %rax	# init, tmp164
	movq	32(%rax), %rax	# init_17(D)->exp.operands, tmp165
	movq	%rax, -56(%rbp)	# tmp165, inside_init
.L1054:
	.loc 1 4685 0
	movq	-56(%rbp), %rax	# inside_init, tmp166
	movq	%rax, %rdi	# tmp166,
	call	fold	#
	movq	%rax, -56(%rbp)	# tmp167, inside_init
	.loc 1 4690 0
	cmpl	$18, -60(%rbp)	#, code
	jne	.L1055	#,
.LBB62:
	.loc 1 4692 0
	movq	-72(%rbp), %rax	# type, tmp168
	movq	8(%rax), %rax	# type_14(D)->common.type, D.21855
	movq	128(%rax), %rax	# _26->type.main_variant, tmp169
	movq	%rax, -32(%rbp)	# tmp169, typ1
	.loc 1 4693 0
	movq	integer_types(%rip), %rax	# integer_types, D.21855
	cmpq	-32(%rbp), %rax	# typ1, D.21855
	je	.L1056	#,
	.loc 1 4694 0
	movq	integer_types+8(%rip), %rax	# integer_types, D.21855
	cmpq	-32(%rbp), %rax	# typ1, D.21855
	je	.L1056	#,
	.loc 1 4695 0
	movq	integer_types+16(%rip), %rax	# integer_types, D.21855
	cmpq	-32(%rbp), %rax	# typ1, D.21855
	je	.L1056	#,
	.loc 1 4696 0
	movq	c_global_trees+16(%rip), %rax	# c_global_trees, D.21855
	cmpq	-32(%rbp), %rax	# typ1, D.21855
	je	.L1056	#,
	.loc 1 4697 0
	movq	c_global_trees+8(%rip), %rax	# c_global_trees, D.21855
	cmpq	-32(%rbp), %rax	# typ1, D.21855
	jne	.L1055	#,
.L1056:
	.loc 1 4698 0
	cmpq	$0, -56(%rbp)	#, inside_init
	je	.L1055	#,
	.loc 1 4698 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# inside_init, tmp170
	movzbl	16(%rax), %eax	# inside_init_25->common.code, D.21854
	cmpb	$29, %al	#, D.21854
	jne	.L1055	#,
	.loc 1 4700 0 is_stmt 1
	movq	-72(%rbp), %rax	# type, tmp171
	movq	128(%rax), %rdx	# type_14(D)->type.main_variant, D.21855
	movq	-56(%rbp), %rax	# inside_init, tmp172
	movq	8(%rax), %rax	# inside_init_25->common.type, D.21855
	movq	128(%rax), %rax	# _35->type.main_variant, D.21855
	movq	%rdx, %rsi	# D.21855,
	movq	%rax, %rdi	# D.21855,
	call	comptypes	#
	testl	%eax, %eax	# D.21856
	je	.L1057	#,
	.loc 1 4702 0
	movq	-56(%rbp), %rax	# inside_init, D.21853
	jmp	.L1053	#
.L1057:
	.loc 1 4704 0
	movq	-56(%rbp), %rax	# inside_init, tmp173
	movq	8(%rax), %rax	# inside_init_25->common.type, D.21855
	movq	8(%rax), %rax	# _39->common.type, D.21855
	movq	128(%rax), %rdx	# _40->type.main_variant, D.21855
	.loc 1 4705 0
	movq	integer_types(%rip), %rax	# integer_types, D.21855
	.loc 1 4704 0
	cmpq	%rax, %rdx	# D.21855, D.21855
	je	.L1058	#,
	.loc 1 4706 0
	movq	-32(%rbp), %rax	# typ1, tmp174
	movzwl	60(%rax), %eax	# *typ1_27, tmp177
	andw	$511, %ax	#, D.21857
	movl	%eax, %edx	# D.21857, D.21857
	movq	integer_types(%rip), %rax	# integer_types, D.21855
	movzwl	60(%rax), %eax	# *_44, tmp180
	andw	$511, %ax	#, D.21857
	cmpw	%ax, %dx	# D.21857, D.21857
	jne	.L1058	#,
	.loc 1 4708 0
	movl	$.LC147, %edi	#,
	call	error_init	#
	.loc 1 4709 0
	movq	global_trees(%rip), %rax	# global_trees, D.21853
	jmp	.L1053	#
.L1058:
	.loc 1 4711 0
	movq	-56(%rbp), %rax	# inside_init, tmp181
	movq	8(%rax), %rax	# inside_init_25->common.type, D.21855
	movq	8(%rax), %rax	# _47->common.type, D.21855
	movq	128(%rax), %rdx	# _48->type.main_variant, D.21855
	.loc 1 4712 0
	movq	integer_types(%rip), %rax	# integer_types, D.21855
	.loc 1 4711 0
	cmpq	%rax, %rdx	# D.21855, D.21855
	jne	.L1059	#,
	.loc 1 4713 0
	movq	-32(%rbp), %rax	# typ1, tmp182
	movzwl	60(%rax), %eax	# *typ1_27, tmp185
	andw	$511, %ax	#, D.21857
	movl	%eax, %edx	# D.21857, D.21857
	movq	integer_types(%rip), %rax	# integer_types, D.21855
	movzwl	60(%rax), %eax	# *_52, tmp188
	andw	$511, %ax	#, D.21857
	cmpw	%ax, %dx	# D.21857, D.21857
	je	.L1059	#,
	.loc 1 4715 0
	movl	$.LC148, %edi	#,
	call	error_init	#
	.loc 1 4716 0
	movq	global_trees(%rip), %rax	# global_trees, D.21853
	jmp	.L1053	#
.L1059:
	.loc 1 4719 0
	movq	-56(%rbp), %rax	# inside_init, tmp189
	movq	-72(%rbp), %rdx	# type, tmp190
	movq	%rdx, 8(%rax)	# tmp190, inside_init_25->common.type
	.loc 1 4720 0
	movq	-72(%rbp), %rax	# type, tmp191
	movq	24(%rax), %rax	# type_14(D)->type.values, D.21855
	testq	%rax, %rax	# D.21855
	je	.L1060	#,
	.loc 1 4721 0
	movq	-72(%rbp), %rax	# type, tmp192
	movq	32(%rax), %rax	# type_14(D)->type.size, D.21855
	testq	%rax, %rax	# D.21855
	je	.L1060	#,
	.loc 1 4722 0
	movq	-72(%rbp), %rax	# type, tmp193
	movq	32(%rax), %rax	# type_14(D)->type.size, D.21855
	movzbl	16(%rax), %eax	# _57->common.code, D.21854
	cmpb	$25, %al	#, D.21854
	jne	.L1060	#,
	.loc 1 4727 0
	movq	-56(%rbp), %rax	# inside_init, tmp194
	movl	32(%rax), %edx	# inside_init_25->string.length, D.21856
	.loc 1 4728 0
	movq	-32(%rbp), %rax	# typ1, tmp195
	movzwl	60(%rax), %eax	# *typ1_27, tmp198
	andw	$511, %ax	#, D.21857
	movl	%eax, %ecx	# D.21857, D.21857
	.loc 1 4729 0
	movq	integer_types(%rip), %rax	# integer_types, D.21855
	movzwl	60(%rax), %eax	# *_61, tmp201
	andw	$511, %ax	#, D.21857
	.loc 1 4732 0
	cmpw	%ax, %cx	# D.21857, D.21857
	je	.L1061	#,
	.loc 1 4730 0
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.21855
	movzwl	60(%rax), %eax	# *_63, tmp204
	andw	$511, %ax	#, D.21857
	.loc 1 4731 0
	movzwl	%ax, %eax	# D.21857, D.21856
	.loc 1 4732 0
	leal	7(%rax), %ecx	#, tmp206
	testl	%eax, %eax	# tmp205
	cmovs	%ecx, %eax	# tmp206,, tmp205
	sarl	$3, %eax	#, tmp207
	jmp	.L1062	#
.L1061:
	.loc 1 4732 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.261
.L1062:
	.loc 1 4728 0 is_stmt 1
	subl	%eax, %edx	# iftmp.261, D.21856
	movl	%edx, %eax	# D.21856, D.21856
	.loc 1 4726 0
	movslq	%eax, %rdx	# D.21856, D.21858
	movq	-72(%rbp), %rax	# type, tmp208
	movq	40(%rax), %rax	# type_14(D)->type.size_unit, D.21855
	movq	%rdx, %rsi	# D.21858,
	movq	%rax, %rdi	# D.21855,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21856
	jns	.L1060	#,
	.loc 1 4733 0
	movl	$.LC149, %edi	#,
	call	pedwarn_init	#
.L1060:
	.loc 1 4735 0
	movq	-56(%rbp), %rax	# inside_init, D.21853
	jmp	.L1053	#
.L1055:
.LBE62:
	.loc 1 4742 0
	cmpq	$0, -56(%rbp)	#, inside_init
	je	.L1063	#,
	.loc 1 4742 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# inside_init, tmp209
	movq	8(%rax), %rax	# inside_init_25->common.type, D.21855
	testq	%rax, %rax	# D.21855
	je	.L1063	#,
	.loc 1 4743 0 is_stmt 1
	movq	-72(%rbp), %rax	# type, tmp210
	movq	128(%rax), %rdx	# type_14(D)->type.main_variant, D.21855
	movq	-56(%rbp), %rax	# inside_init, tmp211
	movq	8(%rax), %rax	# inside_init_25->common.type, D.21855
	movq	128(%rax), %rax	# _75->type.main_variant, D.21855
	movq	%rdx, %rsi	# D.21855,
	movq	%rax, %rdi	# D.21855,
	call	comptypes	#
	testl	%eax, %eax	# D.21856
	jne	.L1064	#,
	.loc 1 4745 0
	cmpl	$18, -60(%rbp)	#, code
	jne	.L1065	#,
	.loc 1 4746 0
	movq	-56(%rbp), %rax	# inside_init, tmp212
	movq	8(%rax), %rax	# inside_init_25->common.type, D.21855
	movq	-72(%rbp), %rdx	# type, tmp213
	movq	%rdx, %rsi	# tmp213,
	movq	%rax, %rdi	# D.21855,
	call	comptypes	#
	testl	%eax, %eax	# D.21856
	jne	.L1064	#,
.L1065:
	.loc 1 4747 0
	cmpl	$9, -60(%rbp)	#, code
	jne	.L1066	#,
	.loc 1 4748 0
	movq	-56(%rbp), %rax	# inside_init, tmp214
	movq	8(%rax), %rax	# inside_init_25->common.type, D.21855
	movq	-72(%rbp), %rdx	# type, tmp215
	movq	%rdx, %rsi	# tmp215,
	movq	%rax, %rdi	# D.21855,
	call	comptypes	#
	testl	%eax, %eax	# D.21856
	jne	.L1064	#,
.L1066:
	.loc 1 4749 0
	cmpl	$13, -60(%rbp)	#, code
	jne	.L1063	#,
	.loc 1 4750 0
	movq	-56(%rbp), %rax	# inside_init, tmp216
	movq	8(%rax), %rax	# inside_init_25->common.type, D.21855
	movzbl	16(%rax), %eax	# _82->common.code, D.21854
	cmpb	$18, %al	#, D.21854
	je	.L1067	#,
	.loc 1 4751 0
	movq	-56(%rbp), %rax	# inside_init, tmp217
	movq	8(%rax), %rax	# inside_init_25->common.type, D.21855
	movzbl	16(%rax), %eax	# _84->common.code, D.21854
	cmpb	$23, %al	#, D.21854
	jne	.L1063	#,
.L1067:
	.loc 1 4752 0
	movq	-72(%rbp), %rax	# type, tmp218
	movq	8(%rax), %rdx	# type_14(D)->common.type, D.21855
	movq	-56(%rbp), %rax	# inside_init, tmp219
	movq	8(%rax), %rax	# inside_init_25->common.type, D.21855
	movq	8(%rax), %rax	# _87->common.type, D.21855
	movq	%rdx, %rsi	# D.21855,
	movq	%rax, %rdi	# D.21855,
	call	comptypes	#
	testl	%eax, %eax	# D.21856
	je	.L1063	#,
.L1064:
	.loc 1 4755 0
	cmpl	$13, -60(%rbp)	#, code
	jne	.L1068	#,
	.loc 1 4756 0
	movq	-56(%rbp), %rax	# inside_init, tmp220
	movq	%rax, %rdi	# tmp220,
	call	default_function_array_conversion	#
	movq	%rax, -56(%rbp)	# tmp221, inside_init
.L1068:
	.loc 1 4758 0
	cmpl	$0, -84(%rbp)	#, require_constant
	je	.L1069	#,
	.loc 1 4758 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.262
	testl	%eax, %eax	# flag_isoc99.262
	jne	.L1069	#,
	.loc 1 4759 0 is_stmt 1
	movq	-56(%rbp), %rax	# inside_init, tmp222
	movzbl	16(%rax), %eax	# inside_init_3->common.code, D.21854
	cmpb	$-86, %al	#, D.21854
	jne	.L1069	#,
.LBB63:
	.loc 1 4764 0
	movq	-56(%rbp), %rax	# inside_init, tmp223
	movq	32(%rax), %rax	# inside_init_3->exp.operands, D.21855
	movq	32(%rax), %rax	# _94->exp.operands, tmp224
	movq	%rax, -24(%rbp)	# tmp224, decl
	.loc 1 4765 0
	movq	-24(%rbp), %rax	# decl, tmp225
	movq	104(%rax), %rax	# decl_95->decl.initial, tmp226
	movq	%rax, -56(%rbp)	# tmp226, inside_init
.L1069:
.LBE63:
	.loc 1 4768 0
	cmpl	$18, -60(%rbp)	#, code
	jne	.L1070	#,
	.loc 1 4768 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# inside_init, tmp227
	movzbl	16(%rax), %eax	# inside_init_4->common.code, D.21854
	cmpb	$29, %al	#, D.21854
	je	.L1070	#,
	.loc 1 4769 0 is_stmt 1
	movq	-56(%rbp), %rax	# inside_init, tmp228
	movzbl	16(%rax), %eax	# inside_init_4->common.code, D.21854
	cmpb	$46, %al	#, D.21854
	je	.L1070	#,
	.loc 1 4771 0
	movl	$.LC150, %edi	#,
	call	error_init	#
	.loc 1 4772 0
	movq	global_trees(%rip), %rax	# global_trees, D.21853
	jmp	.L1053	#
.L1070:
	.loc 1 4775 0
	movl	optimize(%rip), %eax	# optimize, optimize.263
	testl	%eax, %eax	# optimize.263
	je	.L1071	#,
	.loc 1 4775 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# inside_init, tmp229
	movzbl	16(%rax), %eax	# inside_init_4->common.code, D.21854
	cmpb	$34, %al	#, D.21854
	jne	.L1071	#,
	.loc 1 4776 0 is_stmt 1
	movq	-56(%rbp), %rax	# inside_init, tmp230
	movq	%rax, %rdi	# tmp230,
	call	decl_constant_value_for_broken_optimization	#
	movq	%rax, -56(%rbp)	# tmp231, inside_init
.L1071:
	.loc 1 4781 0
	cmpl	$0, -84(%rbp)	#, require_constant
	je	.L1072	#,
	.loc 1 4781 0 is_stmt 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.264
	testl	%eax, %eax	# pedantic.264
	je	.L1072	#,
	.loc 1 4782 0 is_stmt 1
	movq	-56(%rbp), %rax	# inside_init, tmp232
	movzbl	16(%rax), %eax	# inside_init_5->common.code, D.21854
	cmpb	$47, %al	#, D.21854
	jne	.L1072	#,
	.loc 1 4785 0
	movq	-56(%rbp), %rax	# inside_init, tmp233
	movq	8(%rax), %rdx	# inside_init_5->common.type, D.21855
	movq	-56(%rbp), %rax	# inside_init, tmp234
	movq	%rdx, %rsi	# D.21855,
	movq	%rax, %rdi	# tmp234,
	call	valid_compound_expr_initializer	#
	movq	%rax, -56(%rbp)	# tmp235, inside_init
	.loc 1 4787 0
	movq	global_trees(%rip), %rax	# global_trees, D.21855
	cmpq	-56(%rbp), %rax	# inside_init, D.21855
	jne	.L1073	#,
	.loc 1 4788 0
	movl	$.LC151, %edi	#,
	call	error_init	#
	jmp	.L1074	#
.L1073:
	.loc 1 4790 0
	movl	$.LC151, %edi	#,
	call	pedwarn_init	#
.L1074:
	.loc 1 4791 0
	movl	flag_pedantic_errors(%rip), %eax	# flag_pedantic_errors, flag_pedantic_errors.265
	testl	%eax, %eax	# flag_pedantic_errors.265
	je	.L1075	#,
	.loc 1 4792 0
	movq	global_trees(%rip), %rax	# global_trees, tmp236
	movq	%rax, -56(%rbp)	# tmp236, inside_init
	.loc 1 4791 0
	jmp	.L1076	#
.L1075:
	.loc 1 4791 0 is_stmt 0 discriminator 1
	jmp	.L1076	#
.L1072:
	.loc 1 4794 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, require_constant
	je	.L1076	#,
	.loc 1 4795 0
	movq	-56(%rbp), %rax	# inside_init, tmp237
	movzbl	17(%rax), %eax	# *inside_init_5, D.21854
	andl	$2, %eax	#, D.21854
	testb	%al, %al	# D.21854
	je	.L1077	#,
	.loc 1 4803 0
	movq	-56(%rbp), %rax	# inside_init, tmp238
	movq	8(%rax), %rdx	# inside_init_5->common.type, D.21855
	movq	-56(%rbp), %rax	# inside_init, tmp239
	movq	%rdx, %rsi	# D.21855,
	movq	%rax, %rdi	# tmp239,
	call	initializer_constant_valid_p	#
	testq	%rax, %rax	# D.21855
	jne	.L1076	#,
.L1077:
	.loc 1 4806 0
	movl	$.LC151, %edi	#,
	call	error_init	#
	.loc 1 4807 0
	movq	global_trees(%rip), %rax	# global_trees, tmp240
	movq	%rax, -56(%rbp)	# tmp240, inside_init
.L1076:
	.loc 1 4810 0
	movq	-56(%rbp), %rax	# inside_init, D.21853
	jmp	.L1053	#
.L1063:
	.loc 1 4815 0
	cmpl	$6, -60(%rbp)	#, code
	je	.L1078	#,
	.loc 1 4815 0 is_stmt 0 discriminator 1
	cmpl	$7, -60(%rbp)	#, code
	je	.L1078	#,
	cmpl	$13, -60(%rbp)	#, code
	je	.L1078	#,
	.loc 1 4816 0 is_stmt 1
	cmpl	$10, -60(%rbp)	#, code
	je	.L1078	#,
	.loc 1 4816 0 is_stmt 0 discriminator 1
	cmpl	$11, -60(%rbp)	#, code
	je	.L1078	#,
	cmpl	$8, -60(%rbp)	#, code
	jne	.L1079	#,
.L1078:
	.loc 1 4822 0 is_stmt 1
	movq	-80(%rbp), %rsi	# init, tmp241
	movq	-72(%rbp), %rax	# type, tmp242
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$.LC152, %edx	#,
	movq	%rax, %rdi	# tmp242,
	call	convert_for_assignment	#
	movq	%rax, -56(%rbp)	# tmp243, inside_init
	.loc 1 4825 0
	cmpl	$0, -84(%rbp)	#, require_constant
	je	.L1080	#,
	.loc 1 4825 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# inside_init, tmp244
	movzbl	17(%rax), %eax	# *inside_init_144, D.21854
	andl	$2, %eax	#, D.21854
	testb	%al, %al	# D.21854
	jne	.L1080	#,
	.loc 1 4827 0 is_stmt 1
	movl	$.LC151, %edi	#,
	call	error_init	#
	.loc 1 4828 0
	movq	global_trees(%rip), %rax	# global_trees, tmp245
	movq	%rax, -56(%rbp)	# tmp245, inside_init
	jmp	.L1081	#
.L1080:
	.loc 1 4830 0
	cmpl	$0, -84(%rbp)	#, require_constant
	je	.L1081	#,
	.loc 1 4831 0
	movq	-56(%rbp), %rax	# inside_init, tmp246
	movq	8(%rax), %rdx	# inside_init_144->common.type, D.21855
	movq	-56(%rbp), %rax	# inside_init, tmp247
	movq	%rdx, %rsi	# D.21855,
	movq	%rax, %rdi	# tmp247,
	call	initializer_constant_valid_p	#
	testq	%rax, %rax	# D.21855
	jne	.L1081	#,
	.loc 1 4833 0
	movl	$.LC153, %edi	#,
	call	error_init	#
	.loc 1 4834 0
	movq	global_trees(%rip), %rax	# global_trees, tmp248
	movq	%rax, -56(%rbp)	# tmp248, inside_init
.L1081:
	.loc 1 4837 0
	movq	-56(%rbp), %rax	# inside_init, D.21853
	jmp	.L1053	#
.L1079:
	.loc 1 4842 0
	movq	-72(%rbp), %rax	# type, tmp249
	movq	32(%rax), %rax	# type_14(D)->type.size, D.21855
	testq	%rax, %rax	# D.21855
	je	.L1082	#,
	.loc 1 4842 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# type, tmp250
	movq	32(%rax), %rax	# type_14(D)->type.size, D.21855
	movzbl	16(%rax), %eax	# _117->common.code, D.21854
	cmpb	$25, %al	#, D.21854
	je	.L1082	#,
	.loc 1 4844 0 is_stmt 1
	movl	$.LC154, %edi	#,
	call	error_init	#
	.loc 1 4845 0
	movq	global_trees(%rip), %rax	# global_trees, D.21853
	jmp	.L1053	#
.L1082:
	.loc 1 4850 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.266
	testl	%eax, %eax	# flag_traditional.266
	je	.L1083	#,
.LBB64:
	.loc 1 4852 0
	movq	$0, -48(%rbp)	#, top
	movq	$0, -40(%rbp)	#, prev
	movq	-72(%rbp), %rax	# type, tmp251
	movq	%rax, -16(%rbp)	# tmp251, otype
	.loc 1 4853 0
	jmp	.L1084	#
.L1089:
.LBB65:
	.loc 1 4858 0
	movq	-72(%rbp), %rax	# type, tmp252
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp252,
	movl	$46, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -8(%rbp)	# tmp253, temp
	.loc 1 4859 0
	cmpq	$0, -40(%rbp)	#, prev
	jne	.L1085	#,
	.loc 1 4860 0
	movq	-8(%rbp), %rax	# temp, tmp254
	movq	%rax, -48(%rbp)	# tmp254, top
	jmp	.L1086	#
.L1085:
	.loc 1 4862 0
	movq	-8(%rbp), %rax	# temp, tmp255
	movq	%rax, %rsi	# tmp255,
	movl	$0, %edi	#,
	call	build_tree_list	#
	movq	-40(%rbp), %rdx	# prev, tmp256
	movq	%rax, 40(%rdx)	# D.21855, prev_11->exp.operands
.L1086:
	.loc 1 4863 0
	movq	-8(%rbp), %rax	# temp, tmp257
	movq	%rax, -40(%rbp)	# tmp257, prev
	.loc 1 4864 0
	movq	-72(%rbp), %rax	# type, tmp258
	movzbl	16(%rax), %eax	# type_1->common.code, D.21854
	cmpb	$18, %al	#, D.21854
	jne	.L1087	#,
	.loc 1 4865 0
	movq	-72(%rbp), %rax	# type, tmp259
	movq	8(%rax), %rax	# type_1->common.type, tmp260
	movq	%rax, -72(%rbp)	# tmp260, type
	jmp	.L1084	#
.L1087:
	.loc 1 4866 0
	movq	-72(%rbp), %rax	# type, tmp261
	movq	24(%rax), %rax	# type_1->type.values, D.21855
	testq	%rax, %rax	# D.21855
	je	.L1088	#,
	.loc 1 4867 0
	movq	-72(%rbp), %rax	# type, tmp262
	movq	24(%rax), %rax	# type_1->type.values, D.21855
	movq	8(%rax), %rax	# _140->common.type, tmp263
	movq	%rax, -72(%rbp)	# tmp263, type
	jmp	.L1084	#
.L1088:
	.loc 1 4870 0
	movl	$.LC155, %edi	#,
	call	error_init	#
	.loc 1 4871 0
	movq	global_trees(%rip), %rax	# global_trees, D.21853
	jmp	.L1053	#
.L1084:
.LBE65:
	.loc 1 4853 0 discriminator 1
	movq	-72(%rbp), %rax	# type, tmp264
	movzbl	16(%rax), %eax	# type_1->common.code, D.21854
	cmpb	$20, %al	#, D.21854
	je	.L1089	#,
	.loc 1 4854 0
	movq	-72(%rbp), %rax	# type, tmp265
	movzbl	16(%rax), %eax	# type_1->common.code, D.21854
	cmpb	$18, %al	#, D.21854
	je	.L1089	#,
	.loc 1 4855 0
	movq	-72(%rbp), %rax	# type, tmp266
	movzbl	16(%rax), %eax	# type_1->common.code, D.21854
	cmpb	$22, %al	#, D.21854
	je	.L1089	#,
	.loc 1 4856 0
	movq	-72(%rbp), %rax	# type, tmp267
	movzbl	16(%rax), %eax	# type_1->common.code, D.21854
	cmpb	$21, %al	#, D.21854
	je	.L1089	#,
	.loc 1 4875 0
	movq	-16(%rbp), %rax	# otype, tmp268
	cmpq	-72(%rbp), %rax	# type, tmp268
	je	.L1090	#,
	.loc 1 4878 0
	movl	-88(%rbp), %ecx	# constructor_constant, tmp269
	movl	-84(%rbp), %edx	# require_constant, tmp270
	movq	-80(%rbp), %rsi	# init, tmp271
	movq	-72(%rbp), %rax	# type, tmp272
	movq	%rax, %rdi	# tmp272,
	call	digest_init	#
	movq	%rax, %rsi	# D.21855,
	movl	$0, %edi	#,
	call	build_tree_list	#
	movq	-40(%rbp), %rdx	# prev, tmp273
	movq	%rax, 40(%rdx)	# D.21855, prev_11->exp.operands
	.loc 1 4881 0
	movq	-48(%rbp), %rax	# top, D.21853
	jmp	.L1053	#
.L1090:
	.loc 1 4884 0
	movq	global_trees(%rip), %rax	# global_trees, D.21853
	jmp	.L1053	#
.L1083:
.LBE64:
	.loc 1 4886 0
	movl	$.LC155, %edi	#,
	call	error_init	#
	.loc 1 4887 0
	movq	global_trees(%rip), %rax	# global_trees, D.21853
.L1053:
	.loc 1 4888 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	digest_init, .-digest_init
	.local	constructor_type
	.comm	constructor_type,8,8
	.local	constructor_fields
	.comm	constructor_fields,8,8
	.local	constructor_index
	.comm	constructor_index,8,8
	.local	constructor_max_index
	.comm	constructor_max_index,8,8
	.local	constructor_unfilled_fields
	.comm	constructor_unfilled_fields,8,8
	.local	constructor_unfilled_index
	.comm	constructor_unfilled_index,8,8
	.local	constructor_bit_index
	.comm	constructor_bit_index,8,8
	.local	constructor_elements
	.comm	constructor_elements,8,8
	.local	constructor_incremental
	.comm	constructor_incremental,4,4
	.local	constructor_constant
	.comm	constructor_constant,4,4
	.local	constructor_simple
	.comm	constructor_simple,4,4
	.local	constructor_erroneous
	.comm	constructor_erroneous,4,4
	.local	constructor_subconstants_deferred
	.comm	constructor_subconstants_deferred,4,4
	.local	constructor_pending_elts
	.comm	constructor_pending_elts,8,8
	.local	constructor_depth
	.comm	constructor_depth,4,4
	.globl	constructor_no_implicit
	.bss
	.align 4
	.type	constructor_no_implicit, @object
	.size	constructor_no_implicit, 4
constructor_no_implicit:
	.zero	4
	.local	require_constant_value
	.comm	require_constant_value,4,4
	.local	require_constant_elements
	.comm	require_constant_elements,4,4
	.local	constructor_decl
	.comm	constructor_decl,8,8
	.local	constructor_asmspec
	.comm	constructor_asmspec,8,8
	.local	constructor_top_level
	.comm	constructor_top_level,4,4
	.local	constructor_designated
	.comm	constructor_designated,4,4
	.local	designator_depth
	.comm	designator_depth,4,4
	.local	designator_errorneous
	.comm	designator_errorneous,4,4
	.comm	constructor_stack,8,8
	.comm	constructor_range_stack,8,8
	.comm	initializer_stack,8,8
	.section	.rodata
.LC156:
	.string	"(anonymous)"
	.text
	.globl	start_init
	.type	start_init, @function
start_init:
.LFB54:
	.loc 1 5068 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# decl, decl
	movq	%rsi, -48(%rbp)	# asmspec_tree, asmspec_tree
	movl	%edx, -52(%rbp)	# top_level, top_level
	.loc 1 5070 0
	movl	$72, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp93, p
	.loc 1 5072 0
	movq	$0, -16(%rbp)	#, asmspec
	.loc 1 5074 0
	cmpq	$0, -48(%rbp)	#, asmspec_tree
	je	.L1092	#,
	.loc 1 5075 0
	movq	-48(%rbp), %rax	# asmspec_tree, tmp94
	movq	40(%rax), %rax	# asmspec_tree_6(D)->string.pointer, tmp95
	movq	%rax, -16(%rbp)	# tmp95, asmspec
.L1092:
	.loc 1 5077 0
	movq	constructor_decl(%rip), %rdx	# constructor_decl, constructor_decl.267
	movq	-8(%rbp), %rax	# p, tmp96
	movq	%rdx, 8(%rax)	# constructor_decl.267, p_4->decl
	.loc 1 5078 0
	movq	constructor_asmspec(%rip), %rdx	# constructor_asmspec, constructor_asmspec.268
	movq	-8(%rbp), %rax	# p, tmp97
	movq	%rdx, 16(%rax)	# constructor_asmspec.268, p_4->asmspec
	.loc 1 5079 0
	movl	require_constant_value(%rip), %eax	# require_constant_value, require_constant_value.269
	movl	%eax, %edx	# require_constant_value.269, D.21868
	movq	-8(%rbp), %rax	# p, tmp98
	movb	%dl, 69(%rax)	# D.21868, p_4->require_constant_value
	.loc 1 5080 0
	movl	require_constant_elements(%rip), %eax	# require_constant_elements, require_constant_elements.270
	movl	%eax, %edx	# require_constant_elements.270, D.21868
	movq	-8(%rbp), %rax	# p, tmp99
	movb	%dl, 70(%rax)	# D.21868, p_4->require_constant_elements
	.loc 1 5081 0
	movq	constructor_stack(%rip), %rdx	# constructor_stack, constructor_stack.271
	movq	-8(%rbp), %rax	# p, tmp100
	movq	%rdx, 24(%rax)	# constructor_stack.271, p_4->constructor_stack
	.loc 1 5082 0
	movq	constructor_range_stack(%rip), %rdx	# constructor_range_stack, constructor_range_stack.272
	movq	-8(%rbp), %rax	# p, tmp101
	movq	%rdx, 32(%rax)	# constructor_range_stack.272, p_4->constructor_range_stack
	.loc 1 5083 0
	movq	constructor_elements(%rip), %rdx	# constructor_elements, constructor_elements.273
	movq	-8(%rbp), %rax	# p, tmp102
	movq	%rdx, 40(%rax)	# constructor_elements.273, p_4->elements
	.loc 1 5084 0
	movq	spelling(%rip), %rdx	# spelling, spelling.274
	movq	-8(%rbp), %rax	# p, tmp103
	movq	%rdx, 48(%rax)	# spelling.274, p_4->spelling
	.loc 1 5085 0
	movq	spelling_base(%rip), %rdx	# spelling_base, spelling_base.275
	movq	-8(%rbp), %rax	# p, tmp104
	movq	%rdx, 56(%rax)	# spelling_base.275, p_4->spelling_base
	.loc 1 5086 0
	movl	spelling_size(%rip), %edx	# spelling_size, spelling_size.276
	movq	-8(%rbp), %rax	# p, tmp105
	movl	%edx, 64(%rax)	# spelling_size.276, p_4->spelling_size
	.loc 1 5087 0
	movl	constructor_subconstants_deferred(%rip), %eax	# constructor_subconstants_deferred, constructor_subconstants_deferred.277
	movl	%eax, %edx	# constructor_subconstants_deferred.277, D.21868
	movq	-8(%rbp), %rax	# p, tmp106
	movb	%dl, 71(%rax)	# D.21868, p_4->deferred
	.loc 1 5088 0
	movl	constructor_top_level(%rip), %eax	# constructor_top_level, constructor_top_level.278
	movl	%eax, %edx	# constructor_top_level.278, D.21868
	movq	-8(%rbp), %rax	# p, tmp107
	movb	%dl, 68(%rax)	# D.21868, p_4->top_level
	.loc 1 5089 0
	movq	initializer_stack(%rip), %rdx	# initializer_stack, initializer_stack.279
	movq	-8(%rbp), %rax	# p, tmp108
	movq	%rdx, (%rax)	# initializer_stack.279, p_4->next
	.loc 1 5090 0
	movq	-8(%rbp), %rax	# p, tmp109
	movq	%rax, initializer_stack(%rip)	# tmp109, initializer_stack
	.loc 1 5092 0
	movq	-40(%rbp), %rax	# decl, tmp110
	movq	%rax, constructor_decl(%rip)	# tmp110, constructor_decl
	.loc 1 5093 0
	movq	-16(%rbp), %rax	# asmspec, tmp111
	movq	%rax, constructor_asmspec(%rip)	# tmp111, constructor_asmspec
	.loc 1 5094 0
	movl	$0, constructor_subconstants_deferred(%rip)	#, constructor_subconstants_deferred
	.loc 1 5095 0
	movl	$0, constructor_designated(%rip)	#, constructor_designated
	.loc 1 5096 0
	movl	-52(%rbp), %eax	# top_level, tmp112
	movl	%eax, constructor_top_level(%rip)	# tmp112, constructor_top_level
	.loc 1 5098 0
	cmpq	$0, -40(%rbp)	#, decl
	je	.L1093	#,
	.loc 1 5100 0
	movq	-40(%rbp), %rax	# decl, tmp113
	movzbl	18(%rax), %eax	# *decl_25(D), tmp116
	shrb	$2, %al	#, D.21869
	andl	$1, %eax	#, D.21869
	movzbl	%al, %eax	# D.21869, require_constant_value.280
	movl	%eax, require_constant_value(%rip)	# require_constant_value.280, require_constant_value
	.loc 1 5102 0
	movq	-40(%rbp), %rax	# decl, tmp117
	movzbl	18(%rax), %eax	# *decl_25(D), D.21870
	andl	$4, %eax	#, D.21870
	.loc 1 5105 0
	testb	%al, %al	# D.21870
	jne	.L1094	#,
	.loc 1 5102 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.282
	testl	%eax, %eax	# pedantic.282
	je	.L1095	#,
	.loc 1 5102 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.283
	testl	%eax, %eax	# flag_isoc99.283
	jne	.L1095	#,
.L1094:
	.loc 1 5105 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp118
	movq	8(%rax), %rax	# decl_25(D)->common.type, D.21871
	movzbl	16(%rax), %eax	# _33->common.code, D.21870
	cmpb	$18, %al	#, D.21870
	je	.L1096	#,
	.loc 1 5106 0
	movq	-40(%rbp), %rax	# decl, tmp119
	movq	8(%rax), %rax	# decl_25(D)->common.type, D.21871
	movzbl	16(%rax), %eax	# _35->common.code, D.21870
	cmpb	$20, %al	#, D.21870
	je	.L1096	#,
	.loc 1 5107 0
	movq	-40(%rbp), %rax	# decl, tmp120
	movq	8(%rax), %rax	# decl_25(D)->common.type, D.21871
	movzbl	16(%rax), %eax	# _37->common.code, D.21870
	cmpb	$21, %al	#, D.21870
	je	.L1096	#,
	.loc 1 5108 0
	movq	-40(%rbp), %rax	# decl, tmp121
	movq	8(%rax), %rax	# decl_25(D)->common.type, D.21871
	movzbl	16(%rax), %eax	# _39->common.code, D.21870
	cmpb	$22, %al	#, D.21870
	jne	.L1095	#,
.L1096:
	.loc 1 5105 0 discriminator 2
	movl	$1, %eax	#, iftmp.281
	jmp	.L1097	#
.L1095:
	.loc 1 5105 0 is_stmt 0
	movl	$0, %eax	#, iftmp.281
.L1097:
	.loc 1 5102 0 is_stmt 1
	movl	%eax, require_constant_elements(%rip)	# iftmp.281, require_constant_elements
	.loc 1 5109 0
	movq	-40(%rbp), %rax	# decl, tmp122
	movq	72(%rax), %rax	# decl_25(D)->decl.name, D.21871
	movq	32(%rax), %rax	# _43->identifier.id.str, tmp123
	movq	%rax, -24(%rbp)	# tmp123, locus
	jmp	.L1098	#
.L1093:
	.loc 1 5113 0
	movl	$0, require_constant_value(%rip)	#, require_constant_value
	.loc 1 5114 0
	movl	$0, require_constant_elements(%rip)	#, require_constant_elements
	.loc 1 5115 0
	movq	$.LC156, -24(%rbp)	#, locus
.L1098:
	.loc 1 5118 0
	movq	$0, constructor_stack(%rip)	#, constructor_stack
	.loc 1 5119 0
	movq	$0, constructor_range_stack(%rip)	#, constructor_range_stack
	.loc 1 5121 0
	movl	$0, missing_braces_mentioned(%rip)	#, missing_braces_mentioned
	.loc 1 5123 0
	movq	$0, spelling_base(%rip)	#, spelling_base
	.loc 1 5124 0
	movl	$0, spelling_size(%rip)	#, spelling_size
	.loc 1 5125 0
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.284
	movq	%rax, spelling(%rip)	# spelling_base.284, spelling
	.loc 1 5127 0
	cmpq	$0, -24(%rbp)	#, locus
	je	.L1091	#,
	.loc 1 5128 0
	movq	-24(%rbp), %rax	# locus, tmp124
	movq	%rax, %rdi	# tmp124,
	call	push_string	#
.L1091:
	.loc 1 5129 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	start_init, .-start_init
	.globl	finish_init
	.type	finish_init, @function
finish_init:
.LFB55:
	.loc 1 5133 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 5134 0
	movq	initializer_stack(%rip), %rax	# initializer_stack, tmp80
	movq	%rax, -16(%rbp)	# tmp80, p
	.loc 1 5139 0
	movl	constructor_subconstants_deferred(%rip), %eax	# constructor_subconstants_deferred, constructor_subconstants_deferred.285
	testl	%eax, %eax	# constructor_subconstants_deferred.285
	je	.L1101	#,
	.loc 1 5140 0
	call	output_deferred_addressed_constants	#
	.loc 1 5143 0
	jmp	.L1102	#
.L1101:
	jmp	.L1102	#
.L1103:
.LBB66:
	.loc 1 5145 0
	movq	constructor_stack(%rip), %rax	# constructor_stack, tmp81
	movq	%rax, -8(%rbp)	# tmp81, q
	.loc 1 5146 0
	movq	-8(%rbp), %rax	# q, tmp82
	movq	(%rax), %rax	# q_4->next, constructor_stack.286
	movq	%rax, constructor_stack(%rip)	# constructor_stack.286, constructor_stack
	.loc 1 5147 0
	movq	-8(%rbp), %rax	# q, tmp83
	movq	%rax, %rdi	# tmp83,
	call	free	#
.L1102:
.LBE66:
	.loc 1 5143 0 discriminator 1
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.287
	testq	%rax, %rax	# constructor_stack.287
	jne	.L1103	#,
	.loc 1 5150 0
	movq	constructor_range_stack(%rip), %rax	# constructor_range_stack, constructor_range_stack.288
	testq	%rax, %rax	# constructor_range_stack.288
	je	.L1104	#,
	.loc 1 5151 0
	movl	$__FUNCTION__.14554, %edx	#,
	movl	$5151, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L1104:
	.loc 1 5154 0
	movq	-16(%rbp), %rax	# p, tmp84
	movq	8(%rax), %rax	# p_1->decl, constructor_decl.289
	movq	%rax, constructor_decl(%rip)	# constructor_decl.289, constructor_decl
	.loc 1 5155 0
	movq	-16(%rbp), %rax	# p, tmp85
	movq	16(%rax), %rax	# p_1->asmspec, constructor_asmspec.290
	movq	%rax, constructor_asmspec(%rip)	# constructor_asmspec.290, constructor_asmspec
	.loc 1 5156 0
	movq	-16(%rbp), %rax	# p, tmp86
	movzbl	69(%rax), %eax	# p_1->require_constant_value, D.21873
	movsbl	%al, %eax	# D.21873, require_constant_value.291
	movl	%eax, require_constant_value(%rip)	# require_constant_value.291, require_constant_value
	.loc 1 5157 0
	movq	-16(%rbp), %rax	# p, tmp87
	movzbl	70(%rax), %eax	# p_1->require_constant_elements, D.21873
	movsbl	%al, %eax	# D.21873, require_constant_elements.292
	movl	%eax, require_constant_elements(%rip)	# require_constant_elements.292, require_constant_elements
	.loc 1 5158 0
	movq	-16(%rbp), %rax	# p, tmp88
	movq	24(%rax), %rax	# p_1->constructor_stack, constructor_stack.293
	movq	%rax, constructor_stack(%rip)	# constructor_stack.293, constructor_stack
	.loc 1 5159 0
	movq	-16(%rbp), %rax	# p, tmp89
	movq	32(%rax), %rax	# p_1->constructor_range_stack, constructor_range_stack.294
	movq	%rax, constructor_range_stack(%rip)	# constructor_range_stack.294, constructor_range_stack
	.loc 1 5160 0
	movq	-16(%rbp), %rax	# p, tmp90
	movq	40(%rax), %rax	# p_1->elements, constructor_elements.295
	movq	%rax, constructor_elements(%rip)	# constructor_elements.295, constructor_elements
	.loc 1 5161 0
	movq	-16(%rbp), %rax	# p, tmp91
	movq	48(%rax), %rax	# p_1->spelling, spelling.296
	movq	%rax, spelling(%rip)	# spelling.296, spelling
	.loc 1 5162 0
	movq	-16(%rbp), %rax	# p, tmp92
	movq	56(%rax), %rax	# p_1->spelling_base, spelling_base.297
	movq	%rax, spelling_base(%rip)	# spelling_base.297, spelling_base
	.loc 1 5163 0
	movq	-16(%rbp), %rax	# p, tmp93
	movl	64(%rax), %eax	# p_1->spelling_size, spelling_size.298
	movl	%eax, spelling_size(%rip)	# spelling_size.298, spelling_size
	.loc 1 5164 0
	movq	-16(%rbp), %rax	# p, tmp94
	movzbl	71(%rax), %eax	# p_1->deferred, D.21873
	movsbl	%al, %eax	# D.21873, constructor_subconstants_deferred.299
	movl	%eax, constructor_subconstants_deferred(%rip)	# constructor_subconstants_deferred.299, constructor_subconstants_deferred
	.loc 1 5165 0
	movq	-16(%rbp), %rax	# p, tmp95
	movzbl	68(%rax), %eax	# p_1->top_level, D.21873
	movsbl	%al, %eax	# D.21873, constructor_top_level.300
	movl	%eax, constructor_top_level(%rip)	# constructor_top_level.300, constructor_top_level
	.loc 1 5166 0
	movq	-16(%rbp), %rax	# p, tmp96
	movq	(%rax), %rax	# p_1->next, initializer_stack.301
	movq	%rax, initializer_stack(%rip)	# initializer_stack.301, initializer_stack
	.loc 1 5167 0
	movq	-16(%rbp), %rax	# p, tmp97
	movq	%rax, %rdi	# tmp97,
	call	free	#
	.loc 1 5168 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	finish_init, .-finish_init
	.globl	really_start_incremental_init
	.type	really_start_incremental_init, @function
really_start_incremental_init:
.LFB56:
	.loc 1 5180 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 5181 0
	movl	$112, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp150, p
	.loc 1 5184 0
	cmpq	$0, -24(%rbp)	#, type
	jne	.L1106	#,
	.loc 1 5185 0
	movq	constructor_decl(%rip), %rax	# constructor_decl, constructor_decl.302
	movq	8(%rax), %rax	# constructor_decl.302_5->common.type, tmp151
	movq	%rax, -24(%rbp)	# tmp151, type
.L1106:
	.loc 1 5187 0
	movq	constructor_type(%rip), %rdx	# constructor_type, constructor_type.303
	movq	-8(%rbp), %rax	# p, tmp152
	movq	%rdx, 8(%rax)	# constructor_type.303, p_3->type
	.loc 1 5188 0
	movq	constructor_fields(%rip), %rdx	# constructor_fields, constructor_fields.304
	movq	-8(%rbp), %rax	# p, tmp153
	movq	%rdx, 16(%rax)	# constructor_fields.304, p_3->fields
	.loc 1 5189 0
	movq	constructor_index(%rip), %rdx	# constructor_index, constructor_index.305
	movq	-8(%rbp), %rax	# p, tmp154
	movq	%rdx, 24(%rax)	# constructor_index.305, p_3->index
	.loc 1 5190 0
	movq	constructor_max_index(%rip), %rdx	# constructor_max_index, constructor_max_index.306
	movq	-8(%rbp), %rax	# p, tmp155
	movq	%rdx, 32(%rax)	# constructor_max_index.306, p_3->max_index
	.loc 1 5191 0
	movq	constructor_unfilled_index(%rip), %rdx	# constructor_unfilled_index, constructor_unfilled_index.307
	movq	-8(%rbp), %rax	# p, tmp156
	movq	%rdx, 40(%rax)	# constructor_unfilled_index.307, p_3->unfilled_index
	.loc 1 5192 0
	movq	constructor_unfilled_fields(%rip), %rdx	# constructor_unfilled_fields, constructor_unfilled_fields.308
	movq	-8(%rbp), %rax	# p, tmp157
	movq	%rdx, 48(%rax)	# constructor_unfilled_fields.308, p_3->unfilled_fields
	.loc 1 5193 0
	movq	constructor_bit_index(%rip), %rdx	# constructor_bit_index, constructor_bit_index.309
	movq	-8(%rbp), %rax	# p, tmp158
	movq	%rdx, 56(%rax)	# constructor_bit_index.309, p_3->bit_index
	.loc 1 5194 0
	movq	constructor_elements(%rip), %rdx	# constructor_elements, constructor_elements.310
	movq	-8(%rbp), %rax	# p, tmp159
	movq	%rdx, 64(%rax)	# constructor_elements.310, p_3->elements
	.loc 1 5195 0
	movl	constructor_constant(%rip), %eax	# constructor_constant, constructor_constant.311
	movl	%eax, %edx	# constructor_constant.311, D.21874
	movq	-8(%rbp), %rax	# p, tmp160
	movb	%dl, 104(%rax)	# D.21874, p_3->constant
	.loc 1 5196 0
	movl	constructor_simple(%rip), %eax	# constructor_simple, constructor_simple.312
	movl	%eax, %edx	# constructor_simple.312, D.21874
	movq	-8(%rbp), %rax	# p, tmp161
	movb	%dl, 105(%rax)	# D.21874, p_3->simple
	.loc 1 5197 0
	movl	constructor_erroneous(%rip), %eax	# constructor_erroneous, constructor_erroneous.313
	movl	%eax, %edx	# constructor_erroneous.313, D.21874
	movq	-8(%rbp), %rax	# p, tmp162
	movb	%dl, 107(%rax)	# D.21874, p_3->erroneous
	.loc 1 5198 0
	movq	constructor_pending_elts(%rip), %rdx	# constructor_pending_elts, constructor_pending_elts.314
	movq	-8(%rbp), %rax	# p, tmp163
	movq	%rdx, 72(%rax)	# constructor_pending_elts.314, p_3->pending_elts
	.loc 1 5199 0
	movl	constructor_depth(%rip), %edx	# constructor_depth, constructor_depth.315
	movq	-8(%rbp), %rax	# p, tmp164
	movl	%edx, 84(%rax)	# constructor_depth.315, p_3->depth
	.loc 1 5200 0
	movq	-8(%rbp), %rax	# p, tmp165
	movq	$0, 88(%rax)	#, p_3->replacement_value
	.loc 1 5201 0
	movq	-8(%rbp), %rax	# p, tmp166
	movb	$0, 106(%rax)	#, p_3->implicit
	.loc 1 5202 0
	movq	-8(%rbp), %rax	# p, tmp167
	movq	$0, 96(%rax)	#, p_3->range_stack
	.loc 1 5203 0
	movq	-8(%rbp), %rax	# p, tmp168
	movb	$0, 108(%rax)	#, p_3->outer
	.loc 1 5204 0
	movl	constructor_incremental(%rip), %eax	# constructor_incremental, constructor_incremental.316
	movl	%eax, %edx	# constructor_incremental.316, D.21874
	movq	-8(%rbp), %rax	# p, tmp169
	movb	%dl, 109(%rax)	# D.21874, p_3->incremental
	.loc 1 5205 0
	movl	constructor_designated(%rip), %eax	# constructor_designated, constructor_designated.317
	movl	%eax, %edx	# constructor_designated.317, D.21874
	movq	-8(%rbp), %rax	# p, tmp170
	movb	%dl, 110(%rax)	# D.21874, p_3->designated
	.loc 1 5206 0
	movq	-8(%rbp), %rax	# p, tmp171
	movq	$0, (%rax)	#, p_3->next
	.loc 1 5207 0
	movq	-8(%rbp), %rax	# p, tmp172
	movq	%rax, constructor_stack(%rip)	# tmp172, constructor_stack
	.loc 1 5209 0
	movl	$1, constructor_constant(%rip)	#, constructor_constant
	.loc 1 5210 0
	movl	$1, constructor_simple(%rip)	#, constructor_simple
	.loc 1 5211 0
	movq	spelling(%rip), %rax	# spelling, spelling.318
	movq	%rax, %rdx	# spelling.318, spelling.319
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.320
	subq	%rax, %rdx	# spelling_base.321, D.21875
	movq	%rdx, %rax	# D.21875, D.21875
	sarq	$4, %rax	#, tmp173
	movl	%eax, constructor_depth(%rip)	# constructor_depth.322, constructor_depth
	.loc 1 5212 0
	movq	$0, constructor_elements(%rip)	#, constructor_elements
	.loc 1 5213 0
	movq	$0, constructor_pending_elts(%rip)	#, constructor_pending_elts
	.loc 1 5214 0
	movq	-24(%rbp), %rax	# type, tmp174
	movq	%rax, constructor_type(%rip)	# tmp174, constructor_type
	.loc 1 5215 0
	movl	$1, constructor_incremental(%rip)	#, constructor_incremental
	.loc 1 5216 0
	movl	$0, constructor_designated(%rip)	#, constructor_designated
	.loc 1 5217 0
	movl	$0, designator_depth(%rip)	#, designator_depth
	.loc 1 5218 0
	movl	$0, designator_errorneous(%rip)	#, designator_errorneous
	.loc 1 5220 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.323
	movzbl	16(%rax), %eax	# constructor_type.323_34->common.code, D.21876
	cmpb	$20, %al	#, D.21876
	je	.L1107	#,
	.loc 1 5221 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.324
	movzbl	16(%rax), %eax	# constructor_type.324_36->common.code, D.21876
	cmpb	$21, %al	#, D.21876
	jne	.L1108	#,
.L1107:
	.loc 1 5223 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.325
	movq	24(%rax), %rax	# constructor_type.325_86->type.values, constructor_fields.326
	movq	%rax, constructor_fields(%rip)	# constructor_fields.326, constructor_fields
	.loc 1 5225 0
	jmp	.L1109	#
.L1111:
	.loc 1 5227 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.327
	movq	(%rax), %rax	# constructor_fields.327_94->common.chain, constructor_fields.328
	movq	%rax, constructor_fields(%rip)	# constructor_fields.328, constructor_fields
.L1109:
	.loc 1 5225 0 discriminator 1
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.329
	testq	%rax, %rax	# constructor_fields.329
	je	.L1110	#,
	.loc 1 5225 0 is_stmt 0 discriminator 2
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.330
	movzbl	53(%rax), %eax	# *constructor_fields.330_89, D.21876
	andl	$2, %eax	#, D.21876
	testb	%al, %al	# D.21876
	je	.L1110	#,
	.loc 1 5226 0 is_stmt 1
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.331
	movq	72(%rax), %rax	# constructor_fields.331_92->decl.name, D.21877
	testq	%rax, %rax	# D.21877
	je	.L1111	#,
.L1110:
	.loc 1 5229 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.332
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_fields.332, constructor_unfilled_fields
	.loc 1 5230 0
	movq	global_trees+136(%rip), %rax	# global_trees, constructor_bit_index.333
	movq	%rax, constructor_bit_index(%rip)	# constructor_bit_index.333, constructor_bit_index
	jmp	.L1105	#
.L1108:
	.loc 1 5232 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.334
	movzbl	16(%rax), %eax	# constructor_type.334_38->common.code, D.21876
	cmpb	$18, %al	#, D.21876
	jne	.L1113	#,
	.loc 1 5234 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.335
	movq	24(%rax), %rax	# constructor_type.335_40->type.values, D.21877
	testq	%rax, %rax	# D.21877
	je	.L1114	#,
	.loc 1 5237 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.336
	movq	24(%rax), %rax	# constructor_type.336_42->type.values, D.21877
	movq	112(%rax), %rax	# _43->type.maxval, constructor_max_index.337
	movq	%rax, constructor_max_index(%rip)	# constructor_max_index.337, constructor_max_index
	.loc 1 5240 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.338
	testq	%rax, %rax	# constructor_max_index.338
	jne	.L1115	#,
	.loc 1 5241 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.339
	movq	32(%rax), %rax	# constructor_type.339_46->type.size, D.21877
	testq	%rax, %rax	# D.21877
	je	.L1115	#,
	.loc 1 5242 0
	movq	$-1, %rsi	#,
	movq	$-1, %rdi	#,
	call	build_int_2_wide	#
	movq	%rax, constructor_max_index(%rip)	# constructor_max_index.340, constructor_max_index
.L1115:
	.loc 1 5247 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.341
	testq	%rax, %rax	# constructor_max_index.341
	je	.L1116	#,
	.loc 1 5248 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.342
	movzbl	16(%rax), %eax	# constructor_max_index.342_50->common.code, D.21876
	cmpb	$25, %al	#, D.21876
	je	.L1116	#,
	.loc 1 5249 0
	movq	$-1, %rsi	#,
	movq	$-1, %rdi	#,
	call	build_int_2_wide	#
	movq	%rax, constructor_max_index(%rip)	# constructor_max_index.343, constructor_max_index
.L1116:
	.loc 1 5253 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.344
	movq	24(%rax), %rax	# constructor_type.344_53->type.values, D.21877
	.loc 1 5252 0
	movq	104(%rax), %rdx	# _54->type.minval, D.21877
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.21877
	movq	%rdx, %rsi	# D.21877,
	movq	%rax, %rdi	# D.21877,
	call	convert	#
	movq	%rax, constructor_index(%rip)	# constructor_index.345, constructor_index
	jmp	.L1117	#
.L1114:
	.loc 1 5256 0
	movq	global_trees+136(%rip), %rax	# global_trees, constructor_index.346
	movq	%rax, constructor_index(%rip)	# constructor_index.346, constructor_index
.L1117:
	.loc 1 5258 0 discriminator 1
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.347
	movq	%rax, constructor_unfilled_index(%rip)	# constructor_index.347, constructor_unfilled_index
	jmp	.L1105	#
.L1113:
	.loc 1 5260 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.348
	movzbl	16(%rax), %eax	# constructor_type.348_60->common.code, D.21876
	cmpb	$9, %al	#, D.21876
	jne	.L1118	#,
	.loc 1 5264 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.350
	movzbl	61(%rax), %eax	# *constructor_type.350_62, tmp177
	shrb	%al	# D.21878
	movzbl	%al, %eax	# D.21878, D.21879
	cltq
	movzbl	mode_unit_size(%rax), %eax	# mode_unit_size, D.21876
	testb	%al, %al	# D.21876
	je	.L1119	#,
	.loc 1 5264 0 is_stmt 0 discriminator 1
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.351
	movzbl	61(%rax), %eax	# *constructor_type.351_66, tmp181
	shrb	%al	# D.21878
	movzbl	%al, %eax	# D.21878, D.21879
	cltq
	movzbl	mode_size(%rax), %ecx	# mode_size, D.21876
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.352
	movzbl	61(%rax), %eax	# *constructor_type.352_70, tmp185
	shrb	%al	# D.21878
	movzbl	%al, %eax	# D.21878, D.21879
	cltq
	movzbl	mode_unit_size(%rax), %edx	# mode_unit_size, D.21876
	movzbl	%cl, %eax	# D.21876, tmp190
	divb	%dl	# D.21876
	movzbl	%al, %eax	# D.21876, D.21879
	subl	$1, %eax	#, D.21879
	cltq
	jmp	.L1120	#
.L1119:
	.loc 1 5264 0 discriminator 2
	movq	$-1, %rax	#, iftmp.349
.L1120:
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.349,
	call	build_int_2_wide	#
	.loc 1 5263 0 is_stmt 1 discriminator 2
	movq	%rax, constructor_max_index(%rip)	# constructor_max_index.353, constructor_max_index
	.loc 1 5265 0 discriminator 2
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21877
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.21877
	movq	%rdx, %rsi	# D.21877,
	movq	%rax, %rdi	# D.21877,
	call	convert	#
	movq	%rax, constructor_index(%rip)	# constructor_index.354, constructor_index
	.loc 1 5266 0 discriminator 2
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.355
	movq	%rax, constructor_unfilled_index(%rip)	# constructor_index.355, constructor_unfilled_index
	jmp	.L1105	#
.L1118:
	.loc 1 5271 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.356
	movq	%rax, constructor_fields(%rip)	# constructor_type.356, constructor_fields
	.loc 1 5272 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.357
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_type.357, constructor_unfilled_fields
.L1105:
	.loc 1 5274 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	really_start_incremental_init, .-really_start_incremental_init
	.section	.rodata
	.align 8
.LC157:
	.string	"extra brace group at end of initializer"
	.align 8
.LC158:
	.string	"missing braces around initializer"
	.align 8
.LC159:
	.string	"braces around scalar initializer"
	.text
	.globl	push_init_level
	.type	push_init_level, @function
push_init_level:
.LFB57:
	.loc 1 5284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# implicit, implicit
	.loc 1 5286 0
	movq	$0, -16(%rbp)	#, value
	.loc 1 5290 0
	jmp	.L1122	#
.L1126:
	.loc 1 5292 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.358
	movzbl	16(%rax), %eax	# constructor_type.358_6->common.code, D.21881
	cmpb	$20, %al	#, D.21881
	je	.L1123	#,
	.loc 1 5293 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.359
	movzbl	16(%rax), %eax	# constructor_type.359_8->common.code, D.21881
	cmpb	$21, %al	#, D.21881
	jne	.L1124	#,
.L1123:
	.loc 1 5294 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.360
	testq	%rax, %rax	# constructor_fields.360
	jne	.L1124	#,
	.loc 1 5295 0
	movl	$1, %edi	#,
	call	pop_init_level	#
	movq	%rax, %rdi	# D.21882,
	call	process_init_element	#
	jmp	.L1122	#
.L1124:
	.loc 1 5296 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.361
	movzbl	16(%rax), %eax	# constructor_type.361_12->common.code, D.21881
	cmpb	$18, %al	#, D.21881
	jne	.L1125	#,
	.loc 1 5297 0
	movq	constructor_index(%rip), %rdx	# constructor_index, constructor_index.362
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.363
	movq	%rdx, %rsi	# constructor_index.362,
	movq	%rax, %rdi	# constructor_max_index.363,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21883
	je	.L1125	#,
	.loc 1 5298 0
	movl	$1, %edi	#,
	call	pop_init_level	#
	movq	%rax, %rdi	# D.21882,
	call	process_init_element	#
.L1122:
	.loc 1 5290 0 discriminator 1
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.364
	movzbl	106(%rax), %eax	# constructor_stack.364_4->implicit, D.21880
	testb	%al, %al	# D.21880
	jne	.L1126	#,
.L1125:
	.loc 1 5305 0
	cmpl	$0, -20(%rbp)	#, implicit
	je	.L1127	#,
	.loc 1 5307 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.365
	movzbl	16(%rax), %eax	# constructor_type.365_19->common.code, D.21881
	cmpb	$20, %al	#, D.21881
	je	.L1128	#,
	.loc 1 5308 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.366
	movzbl	16(%rax), %eax	# constructor_type.366_21->common.code, D.21881
	cmpb	$21, %al	#, D.21881
	jne	.L1129	#,
.L1128:
	.loc 1 5309 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.367
	testq	%rax, %rax	# constructor_fields.367
	je	.L1129	#,
	.loc 1 5310 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.368
	movq	%rax, %rdi	# constructor_fields.368,
	call	find_init_member	#
	movq	%rax, -16(%rbp)	# tmp210, value
	jmp	.L1127	#
.L1129:
	.loc 1 5311 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.369
	movzbl	16(%rax), %eax	# constructor_type.369_26->common.code, D.21881
	cmpb	$18, %al	#, D.21881
	jne	.L1127	#,
	.loc 1 5312 0
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.370
	movq	%rax, %rdi	# constructor_index.370,
	call	find_init_member	#
	movq	%rax, -16(%rbp)	# tmp211, value
.L1127:
	.loc 1 5315 0
	movl	$112, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp212, p
	.loc 1 5316 0
	movq	constructor_type(%rip), %rdx	# constructor_type, constructor_type.371
	movq	-8(%rbp), %rax	# p, tmp213
	movq	%rdx, 8(%rax)	# constructor_type.371, p_30->type
	.loc 1 5317 0
	movq	constructor_fields(%rip), %rdx	# constructor_fields, constructor_fields.372
	movq	-8(%rbp), %rax	# p, tmp214
	movq	%rdx, 16(%rax)	# constructor_fields.372, p_30->fields
	.loc 1 5318 0
	movq	constructor_index(%rip), %rdx	# constructor_index, constructor_index.373
	movq	-8(%rbp), %rax	# p, tmp215
	movq	%rdx, 24(%rax)	# constructor_index.373, p_30->index
	.loc 1 5319 0
	movq	constructor_max_index(%rip), %rdx	# constructor_max_index, constructor_max_index.374
	movq	-8(%rbp), %rax	# p, tmp216
	movq	%rdx, 32(%rax)	# constructor_max_index.374, p_30->max_index
	.loc 1 5320 0
	movq	constructor_unfilled_index(%rip), %rdx	# constructor_unfilled_index, constructor_unfilled_index.375
	movq	-8(%rbp), %rax	# p, tmp217
	movq	%rdx, 40(%rax)	# constructor_unfilled_index.375, p_30->unfilled_index
	.loc 1 5321 0
	movq	constructor_unfilled_fields(%rip), %rdx	# constructor_unfilled_fields, constructor_unfilled_fields.376
	movq	-8(%rbp), %rax	# p, tmp218
	movq	%rdx, 48(%rax)	# constructor_unfilled_fields.376, p_30->unfilled_fields
	.loc 1 5322 0
	movq	constructor_bit_index(%rip), %rdx	# constructor_bit_index, constructor_bit_index.377
	movq	-8(%rbp), %rax	# p, tmp219
	movq	%rdx, 56(%rax)	# constructor_bit_index.377, p_30->bit_index
	.loc 1 5323 0
	movq	constructor_elements(%rip), %rdx	# constructor_elements, constructor_elements.378
	movq	-8(%rbp), %rax	# p, tmp220
	movq	%rdx, 64(%rax)	# constructor_elements.378, p_30->elements
	.loc 1 5324 0
	movl	constructor_constant(%rip), %eax	# constructor_constant, constructor_constant.379
	movl	%eax, %edx	# constructor_constant.379, D.21880
	movq	-8(%rbp), %rax	# p, tmp221
	movb	%dl, 104(%rax)	# D.21880, p_30->constant
	.loc 1 5325 0
	movl	constructor_simple(%rip), %eax	# constructor_simple, constructor_simple.380
	movl	%eax, %edx	# constructor_simple.380, D.21880
	movq	-8(%rbp), %rax	# p, tmp222
	movb	%dl, 105(%rax)	# D.21880, p_30->simple
	.loc 1 5326 0
	movl	constructor_erroneous(%rip), %eax	# constructor_erroneous, constructor_erroneous.381
	movl	%eax, %edx	# constructor_erroneous.381, D.21880
	movq	-8(%rbp), %rax	# p, tmp223
	movb	%dl, 107(%rax)	# D.21880, p_30->erroneous
	.loc 1 5327 0
	movq	constructor_pending_elts(%rip), %rdx	# constructor_pending_elts, constructor_pending_elts.382
	movq	-8(%rbp), %rax	# p, tmp224
	movq	%rdx, 72(%rax)	# constructor_pending_elts.382, p_30->pending_elts
	.loc 1 5328 0
	movl	constructor_depth(%rip), %edx	# constructor_depth, constructor_depth.383
	movq	-8(%rbp), %rax	# p, tmp225
	movl	%edx, 84(%rax)	# constructor_depth.383, p_30->depth
	.loc 1 5329 0
	movq	-8(%rbp), %rax	# p, tmp226
	movq	$0, 88(%rax)	#, p_30->replacement_value
	.loc 1 5330 0
	movl	-20(%rbp), %eax	# implicit, tmp227
	movl	%eax, %edx	# tmp227, D.21880
	movq	-8(%rbp), %rax	# p, tmp228
	movb	%dl, 106(%rax)	# D.21880, p_30->implicit
	.loc 1 5331 0
	movq	-8(%rbp), %rax	# p, tmp229
	movb	$0, 108(%rax)	#, p_30->outer
	.loc 1 5332 0
	movl	constructor_incremental(%rip), %eax	# constructor_incremental, constructor_incremental.384
	movl	%eax, %edx	# constructor_incremental.384, D.21880
	movq	-8(%rbp), %rax	# p, tmp230
	movb	%dl, 109(%rax)	# D.21880, p_30->incremental
	.loc 1 5333 0
	movl	constructor_designated(%rip), %eax	# constructor_designated, constructor_designated.385
	movl	%eax, %edx	# constructor_designated.385, D.21880
	movq	-8(%rbp), %rax	# p, tmp231
	movb	%dl, 110(%rax)	# D.21880, p_30->designated
	.loc 1 5334 0
	movq	constructor_stack(%rip), %rdx	# constructor_stack, constructor_stack.386
	movq	-8(%rbp), %rax	# p, tmp232
	movq	%rdx, (%rax)	# constructor_stack.386, p_30->next
	.loc 1 5335 0
	movq	-8(%rbp), %rax	# p, tmp233
	movq	$0, 96(%rax)	#, p_30->range_stack
	.loc 1 5336 0
	movq	-8(%rbp), %rax	# p, tmp234
	movq	%rax, constructor_stack(%rip)	# tmp234, constructor_stack
	.loc 1 5338 0
	movl	$1, constructor_constant(%rip)	#, constructor_constant
	.loc 1 5339 0
	movl	$1, constructor_simple(%rip)	#, constructor_simple
	.loc 1 5340 0
	movq	spelling(%rip), %rax	# spelling, spelling.387
	movq	%rax, %rdx	# spelling.387, spelling.388
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.389
	subq	%rax, %rdx	# spelling_base.390, D.21884
	movq	%rdx, %rax	# D.21884, D.21884
	sarq	$4, %rax	#, tmp235
	movl	%eax, constructor_depth(%rip)	# constructor_depth.391, constructor_depth
	.loc 1 5341 0
	movq	$0, constructor_elements(%rip)	#, constructor_elements
	.loc 1 5342 0
	movl	$1, constructor_incremental(%rip)	#, constructor_incremental
	.loc 1 5343 0
	movl	$0, constructor_designated(%rip)	#, constructor_designated
	.loc 1 5344 0
	movq	$0, constructor_pending_elts(%rip)	#, constructor_pending_elts
	.loc 1 5345 0
	cmpl	$0, -20(%rbp)	#, implicit
	jne	.L1130	#,
	.loc 1 5347 0
	movq	constructor_range_stack(%rip), %rdx	# constructor_range_stack, constructor_range_stack.392
	movq	-8(%rbp), %rax	# p, tmp236
	movq	%rdx, 96(%rax)	# constructor_range_stack.392, p_30->range_stack
	.loc 1 5348 0
	movq	$0, constructor_range_stack(%rip)	#, constructor_range_stack
	.loc 1 5349 0
	movl	$0, designator_depth(%rip)	#, designator_depth
	.loc 1 5350 0
	movl	$0, designator_errorneous(%rip)	#, designator_errorneous
.L1130:
	.loc 1 5355 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.393
	testq	%rax, %rax	# constructor_type.393
	je	.L1131	#,
	.loc 1 5357 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.394
	movzbl	16(%rax), %eax	# constructor_type.394_62->common.code, D.21881
	cmpb	$20, %al	#, D.21881
	je	.L1132	#,
	.loc 1 5358 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.395
	movzbl	16(%rax), %eax	# constructor_type.395_64->common.code, D.21881
	cmpb	$21, %al	#, D.21881
	jne	.L1133	#,
.L1132:
	.loc 1 5361 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.396
	testq	%rax, %rax	# constructor_fields.396
	jne	.L1134	#,
	.loc 1 5362 0
	movq	$0, constructor_type(%rip)	#, constructor_type
	.loc 1 5361 0
	jmp	.L1131	#
.L1134:
	.loc 1 5365 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.397
	movq	8(%rax), %rax	# constructor_fields.397_76->common.type, constructor_type.398
	movq	%rax, constructor_type(%rip)	# constructor_type.398, constructor_type
	.loc 1 5366 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.399
	movq	%rax, %rdi	# constructor_fields.399,
	call	push_member_name	#
	.loc 1 5367 0
	movl	constructor_depth(%rip), %eax	# constructor_depth, constructor_depth.400
	addl	$1, %eax	#, constructor_depth.401
	movl	%eax, constructor_depth(%rip)	# constructor_depth.401, constructor_depth
	.loc 1 5361 0
	jmp	.L1131	#
.L1133:
	.loc 1 5370 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.402
	movzbl	16(%rax), %eax	# constructor_type.402_66->common.code, D.21881
	cmpb	$18, %al	#, D.21881
	jne	.L1131	#,
	.loc 1 5372 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.403
	movq	8(%rax), %rax	# constructor_type.403_68->common.type, constructor_type.404
	movq	%rax, constructor_type(%rip)	# constructor_type.404, constructor_type
	.loc 1 5373 0
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.405
	movl	$0, %esi	#,
	movq	%rax, %rdi	# constructor_index.405,
	call	tree_low_cst	#
	movl	%eax, %edi	# D.21883,
	call	push_array_bounds	#
	.loc 1 5374 0
	movl	constructor_depth(%rip), %eax	# constructor_depth, constructor_depth.406
	addl	$1, %eax	#, constructor_depth.407
	movl	%eax, constructor_depth(%rip)	# constructor_depth.407, constructor_depth
.L1131:
	.loc 1 5377 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.408
	testq	%rax, %rax	# constructor_type.408
	jne	.L1136	#,
	.loc 1 5379 0
	movl	$.LC157, %edi	#,
	call	error_init	#
	.loc 1 5380 0
	movq	$0, constructor_fields(%rip)	#, constructor_fields
	.loc 1 5381 0
	movq	$0, constructor_unfilled_fields(%rip)	#, constructor_unfilled_fields
	.loc 1 5382 0
	jmp	.L1121	#
.L1136:
	.loc 1 5385 0
	cmpq	$0, -16(%rbp)	#, value
	je	.L1138	#,
	.loc 1 5385 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# value, tmp237
	movzbl	16(%rax), %eax	# value_1->common.code, D.21881
	cmpb	$46, %al	#, D.21881
	jne	.L1138	#,
	.loc 1 5387 0 is_stmt 1
	movq	-16(%rbp), %rax	# value, tmp238
	movzbl	17(%rax), %eax	# *value_1, tmp241
	shrb	%al	# D.21885
	andl	$1, %eax	#, D.21885
	movzbl	%al, %eax	# D.21885, constructor_constant.409
	movl	%eax, constructor_constant(%rip)	# constructor_constant.409, constructor_constant
	.loc 1 5388 0
	movq	-16(%rbp), %rax	# value, tmp242
	movzbl	18(%rax), %eax	# *value_1, tmp245
	shrb	$2, %al	#, D.21885
	andl	$1, %eax	#, D.21885
	movzbl	%al, %eax	# D.21885, constructor_simple.410
	movl	%eax, constructor_simple(%rip)	# constructor_simple.410, constructor_simple
	.loc 1 5389 0
	movq	-16(%rbp), %rax	# value, tmp246
	movq	40(%rax), %rax	# value_1->exp.operands, constructor_elements.411
	movq	%rax, constructor_elements(%rip)	# constructor_elements.411, constructor_elements
	.loc 1 5390 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.412
	testq	%rax, %rax	# constructor_elements.412
	je	.L1138	#,
	.loc 1 5391 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.413
	movzbl	16(%rax), %eax	# constructor_type.413_89->common.code, D.21881
	cmpb	$20, %al	#, D.21881
	je	.L1139	#,
	.loc 1 5392 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.414
	movzbl	16(%rax), %eax	# constructor_type.414_91->common.code, D.21881
	cmpb	$18, %al	#, D.21881
	jne	.L1138	#,
.L1139:
	.loc 1 5393 0
	call	set_nonincremental_init	#
.L1138:
	.loc 1 5396 0
	cmpl	$1, -20(%rbp)	#, implicit
	jne	.L1140	#,
	.loc 1 5396 0 is_stmt 0 discriminator 1
	movl	warn_missing_braces(%rip), %eax	# warn_missing_braces, warn_missing_braces.415
	testl	%eax, %eax	# warn_missing_braces.415
	je	.L1140	#,
	movl	missing_braces_mentioned(%rip), %eax	# missing_braces_mentioned, missing_braces_mentioned.416
	testl	%eax, %eax	# missing_braces_mentioned.416
	jne	.L1140	#,
	.loc 1 5398 0 is_stmt 1
	movl	$1, missing_braces_mentioned(%rip)	#, missing_braces_mentioned
	.loc 1 5399 0
	movl	$.LC158, %edi	#,
	call	warning_init	#
.L1140:
	.loc 1 5402 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.417
	movzbl	16(%rax), %eax	# constructor_type.417_95->common.code, D.21881
	cmpb	$20, %al	#, D.21881
	je	.L1141	#,
	.loc 1 5403 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.418
	movzbl	16(%rax), %eax	# constructor_type.418_97->common.code, D.21881
	cmpb	$21, %al	#, D.21881
	jne	.L1142	#,
.L1141:
	.loc 1 5405 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.419
	movq	24(%rax), %rax	# constructor_type.419_148->type.values, constructor_fields.420
	movq	%rax, constructor_fields(%rip)	# constructor_fields.420, constructor_fields
	.loc 1 5407 0
	jmp	.L1143	#
.L1145:
	.loc 1 5409 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.421
	movq	(%rax), %rax	# constructor_fields.421_156->common.chain, constructor_fields.422
	movq	%rax, constructor_fields(%rip)	# constructor_fields.422, constructor_fields
.L1143:
	.loc 1 5407 0 discriminator 1
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.423
	testq	%rax, %rax	# constructor_fields.423
	je	.L1144	#,
	.loc 1 5407 0 is_stmt 0 discriminator 2
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.424
	movzbl	53(%rax), %eax	# *constructor_fields.424_151, D.21881
	andl	$2, %eax	#, D.21881
	testb	%al, %al	# D.21881
	je	.L1144	#,
	.loc 1 5408 0 is_stmt 1
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.425
	movq	72(%rax), %rax	# constructor_fields.425_154->decl.name, D.21882
	testq	%rax, %rax	# D.21882
	je	.L1145	#,
.L1144:
	.loc 1 5411 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.426
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_fields.426, constructor_unfilled_fields
	.loc 1 5412 0
	movq	global_trees+136(%rip), %rax	# global_trees, constructor_bit_index.427
	movq	%rax, constructor_bit_index(%rip)	# constructor_bit_index.427, constructor_bit_index
	jmp	.L1121	#
.L1142:
	.loc 1 5414 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.428
	movzbl	16(%rax), %eax	# constructor_type.428_99->common.code, D.21881
	cmpb	$9, %al	#, D.21881
	jne	.L1146	#,
	.loc 1 5418 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.430
	movzbl	61(%rax), %eax	# *constructor_type.430_101, tmp249
	shrb	%al	# D.21886
	movzbl	%al, %eax	# D.21886, D.21883
	cltq
	movzbl	mode_unit_size(%rax), %eax	# mode_unit_size, D.21881
	testb	%al, %al	# D.21881
	je	.L1147	#,
	.loc 1 5418 0 is_stmt 0 discriminator 1
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.431
	movzbl	61(%rax), %eax	# *constructor_type.431_105, tmp253
	shrb	%al	# D.21886
	movzbl	%al, %eax	# D.21886, D.21883
	cltq
	movzbl	mode_size(%rax), %ecx	# mode_size, D.21881
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.432
	movzbl	61(%rax), %eax	# *constructor_type.432_109, tmp257
	shrb	%al	# D.21886
	movzbl	%al, %eax	# D.21886, D.21883
	cltq
	movzbl	mode_unit_size(%rax), %edx	# mode_unit_size, D.21881
	movzbl	%cl, %eax	# D.21881, tmp262
	divb	%dl	# D.21881
	movzbl	%al, %eax	# D.21881, D.21883
	subl	$1, %eax	#, D.21883
	cltq
	jmp	.L1148	#
.L1147:
	.loc 1 5418 0 discriminator 2
	movq	$-1, %rax	#, iftmp.429
.L1148:
	.loc 1 5418 0 discriminator 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.429,
	call	build_int_2_wide	#
	.loc 1 5417 0 is_stmt 1 discriminator 1
	movq	%rax, constructor_max_index(%rip)	# constructor_max_index.433, constructor_max_index
	.loc 1 5419 0 discriminator 1
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21882
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.21882
	movq	%rdx, %rsi	# D.21882,
	movq	%rax, %rdi	# D.21882,
	call	convert	#
	movq	%rax, constructor_index(%rip)	# constructor_index.434, constructor_index
	.loc 1 5420 0 discriminator 1
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.435
	movq	%rax, constructor_unfilled_index(%rip)	# constructor_index.435, constructor_unfilled_index
	jmp	.L1121	#
.L1146:
	.loc 1 5422 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.436
	movzbl	16(%rax), %eax	# constructor_type.436_123->common.code, D.21881
	cmpb	$18, %al	#, D.21881
	jne	.L1149	#,
	.loc 1 5424 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.437
	movq	24(%rax), %rax	# constructor_type.437_125->type.values, D.21882
	testq	%rax, %rax	# D.21882
	je	.L1150	#,
	.loc 1 5427 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.438
	movq	24(%rax), %rax	# constructor_type.438_127->type.values, D.21882
	movq	112(%rax), %rax	# _128->type.maxval, constructor_max_index.439
	movq	%rax, constructor_max_index(%rip)	# constructor_max_index.439, constructor_max_index
	.loc 1 5430 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.440
	testq	%rax, %rax	# constructor_max_index.440
	jne	.L1151	#,
	.loc 1 5431 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.441
	movq	32(%rax), %rax	# constructor_type.441_131->type.size, D.21882
	testq	%rax, %rax	# D.21882
	je	.L1151	#,
	.loc 1 5432 0
	movq	$-1, %rsi	#,
	movq	$-1, %rdi	#,
	call	build_int_2_wide	#
	movq	%rax, constructor_max_index(%rip)	# constructor_max_index.442, constructor_max_index
.L1151:
	.loc 1 5437 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.443
	testq	%rax, %rax	# constructor_max_index.443
	je	.L1152	#,
	.loc 1 5438 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.444
	movzbl	16(%rax), %eax	# constructor_max_index.444_135->common.code, D.21881
	cmpb	$25, %al	#, D.21881
	je	.L1152	#,
	.loc 1 5439 0
	movq	$-1, %rsi	#,
	movq	$-1, %rdi	#,
	call	build_int_2_wide	#
	movq	%rax, constructor_max_index(%rip)	# constructor_max_index.445, constructor_max_index
.L1152:
	.loc 1 5443 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.446
	movq	24(%rax), %rax	# constructor_type.446_138->type.values, D.21882
	.loc 1 5442 0
	movq	104(%rax), %rdx	# _139->type.minval, D.21882
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.21882
	movq	%rdx, %rsi	# D.21882,
	movq	%rax, %rdi	# D.21882,
	call	convert	#
	movq	%rax, constructor_index(%rip)	# constructor_index.447, constructor_index
	jmp	.L1153	#
.L1150:
	.loc 1 5446 0
	movq	global_trees+136(%rip), %rax	# global_trees, constructor_index.448
	movq	%rax, constructor_index(%rip)	# constructor_index.448, constructor_index
.L1153:
	.loc 1 5448 0
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.449
	movq	%rax, constructor_unfilled_index(%rip)	# constructor_index.449, constructor_unfilled_index
	.loc 1 5449 0
	cmpq	$0, -16(%rbp)	#, value
	je	.L1121	#,
	.loc 1 5449 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# value, tmp263
	movzbl	16(%rax), %eax	# value_1->common.code, D.21881
	cmpb	$29, %al	#, D.21881
	jne	.L1121	#,
	.loc 1 5454 0 is_stmt 1
	movq	-16(%rbp), %rax	# value, tmp264
	movq	%rax, %rdi	# tmp264,
	call	set_nonincremental_init_from_string	#
	jmp	.L1121	#
.L1149:
	.loc 1 5459 0
	movl	$.LC159, %edi	#,
	call	warning_init	#
	.loc 1 5460 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.450
	movq	%rax, constructor_fields(%rip)	# constructor_type.450, constructor_fields
	.loc 1 5461 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.451
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_type.451, constructor_unfilled_fields
.L1121:
	.loc 1 5463 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	push_init_level, .-push_init_level
	.section	.rodata
	.align 8
.LC160:
	.string	"initialization of flexible array member in a nested context"
	.align 8
.LC161:
	.string	"initialization of a flexible array member"
.LC162:
	.string	"missing initializer"
.LC163:
	.string	"empty scalar initializer"
	.align 8
.LC164:
	.string	"extra elements in scalar initializer"
	.text
	.globl	pop_init_level
	.type	pop_init_level, @function
pop_init_level:
.LFB58:
	.loc 1 5476 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# implicit, implicit
	.loc 1 5478 0
	movq	$0, -16(%rbp)	#, constructor
	.loc 1 5480 0
	cmpl	$0, -20(%rbp)	#, implicit
	jne	.L1156	#,
	.loc 1 5484 0
	jmp	.L1157	#
.L1158:
	.loc 1 5485 0
	movl	$1, %edi	#,
	call	pop_init_level	#
	movq	%rax, %rdi	# D.21892,
	call	process_init_element	#
.L1157:
	.loc 1 5484 0 discriminator 1
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.452
	movzbl	106(%rax), %eax	# constructor_stack.452_6->implicit, D.21891
	testb	%al, %al	# D.21891
	jne	.L1158	#,
	.loc 1 5487 0
	movq	constructor_range_stack(%rip), %rax	# constructor_range_stack, constructor_range_stack.453
	testq	%rax, %rax	# constructor_range_stack.453
	je	.L1156	#,
	.loc 1 5488 0
	movl	$__FUNCTION__.14581, %edx	#,
	movl	$5488, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L1156:
	.loc 1 5491 0
	movq	constructor_stack(%rip), %rax	# constructor_stack, tmp155
	movq	%rax, -8(%rbp)	# tmp155, p
	.loc 1 5495 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.454
	testq	%rax, %rax	# constructor_type.454
	je	.L1159	#,
	.loc 1 5495 0 is_stmt 0 discriminator 1
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.455
	testq	%rax, %rax	# constructor_fields.455
	je	.L1159	#,
	.loc 1 5496 0 is_stmt 1
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.456
	movzbl	16(%rax), %eax	# constructor_type.456_13->common.code, D.21893
	cmpb	$18, %al	#, D.21893
	jne	.L1159	#,
	.loc 1 5497 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.457
	movq	24(%rax), %rax	# constructor_type.457_15->type.values, D.21892
	testq	%rax, %rax	# D.21892
	je	.L1159	#,
	.loc 1 5498 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.458
	movq	24(%rax), %rax	# constructor_type.458_17->type.values, D.21892
	movq	112(%rax), %rax	# _18->type.maxval, D.21892
	testq	%rax, %rax	# D.21892
	jne	.L1159	#,
	.loc 1 5502 0
	movq	constructor_unfilled_index(%rip), %rax	# constructor_unfilled_index, constructor_unfilled_index.459
	movq	%rax, %rdi	# constructor_unfilled_index.459,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21894
	je	.L1160	#,
	.loc 1 5503 0
	movq	$0, constructor_type(%rip)	#, constructor_type
	jmp	.L1159	#
.L1160:
	.loc 1 5504 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.460
	movq	32(%rax), %rax	# constructor_type.460_22->type.size, D.21892
	testq	%rax, %rax	# D.21892
	jne	.L1161	#,
	.loc 1 5506 0
	movl	constructor_depth(%rip), %eax	# constructor_depth, constructor_depth.461
	cmpl	$2, %eax	#, constructor_depth.461
	jle	.L1162	#,
	.loc 1 5507 0
	movl	$.LC160, %edi	#,
	call	error_init	#
	jmp	.L1163	#
.L1162:
	.loc 1 5508 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.462
	testl	%eax, %eax	# pedantic.462
	je	.L1163	#,
	.loc 1 5509 0
	movl	$.LC161, %edi	#,
	call	pedwarn_init	#
.L1163:
	.loc 1 5514 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.463
	movq	(%rax), %rax	# constructor_fields.463_26->common.chain, D.21892
	testq	%rax, %rax	# D.21892
	je	.L1159	#,
	.loc 1 5515 0
	movq	$0, constructor_type(%rip)	#, constructor_type
	jmp	.L1159	#
.L1161:
	.loc 1 5520 0
	movl	$__FUNCTION__.14581, %edx	#,
	movl	$5520, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L1159:
	.loc 1 5524 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.464
	testl	%eax, %eax	# extra_warnings.464
	je	.L1165	#,
	.loc 1 5525 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.465
	testq	%rax, %rax	# constructor_type.465
	je	.L1165	#,
	.loc 1 5526 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.466
	movzbl	16(%rax), %eax	# constructor_type.466_30->common.code, D.21893
	cmpb	$20, %al	#, D.21893
	jne	.L1165	#,
	.loc 1 5527 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.467
	testq	%rax, %rax	# constructor_unfilled_fields.467
	je	.L1165	#,
	.loc 1 5530 0
	jmp	.L1166	#
.L1168:
	.loc 1 5533 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.468
	movq	(%rax), %rax	# constructor_unfilled_fields.468_39->common.chain, constructor_unfilled_fields.469
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_unfilled_fields.469, constructor_unfilled_fields
.L1166:
	.loc 1 5530 0 discriminator 1
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.470
	testq	%rax, %rax	# constructor_unfilled_fields.470
	je	.L1167	#,
	.loc 1 5531 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.471
	movq	40(%rax), %rax	# constructor_unfilled_fields.471_34->decl.size, D.21892
	testq	%rax, %rax	# D.21892
	je	.L1168	#,
	.loc 1 5532 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.472
	movq	40(%rax), %rax	# constructor_unfilled_fields.472_36->decl.size, D.21892
	movq	%rax, %rdi	# D.21892,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21894
	jne	.L1168	#,
.L1167:
	.loc 1 5537 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.473
	testq	%rax, %rax	# constructor_unfilled_fields.473
	je	.L1165	#,
	.loc 1 5537 0 is_stmt 0 discriminator 1
	movl	constructor_designated(%rip), %eax	# constructor_designated, constructor_designated.474
	testl	%eax, %eax	# constructor_designated.474
	jne	.L1165	#,
	.loc 1 5539 0 is_stmt 1
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.475
	movq	%rax, %rdi	# constructor_unfilled_fields.475,
	call	push_member_name	#
	.loc 1 5540 0
	movl	$.LC162, %edi	#,
	call	warning_init	#
	.loc 1 5541 0
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.476
	movl	constructor_depth(%rip), %edx	# constructor_depth, constructor_depth.477
	movslq	%edx, %rdx	# constructor_depth.477, D.21895
	salq	$4, %rdx	#, D.21895
	addq	%rdx, %rax	# D.21895, spelling.478
	movq	%rax, spelling(%rip)	# spelling.478, spelling
.L1165:
	.loc 1 5546 0
	movl	$1, constructor_incremental(%rip)	#, constructor_incremental
	.loc 1 5547 0
	movl	$1, %edi	#,
	call	output_pending_init_elements	#
	.loc 1 5550 0
	movq	-8(%rbp), %rax	# p, tmp156
	movq	88(%rax), %rax	# p_10->replacement_value, D.21892
	testq	%rax, %rax	# D.21892
	je	.L1169	#,
	.loc 1 5553 0
	movq	-8(%rbp), %rax	# p, tmp157
	movq	88(%rax), %rax	# p_10->replacement_value, tmp158
	movq	%rax, -16(%rbp)	# tmp158, constructor
	jmp	.L1170	#
.L1169:
	.loc 1 5554 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.479
	testq	%rax, %rax	# constructor_type.479
	je	.L1170	#,
	.loc 1 5556 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.480
	movzbl	16(%rax), %eax	# constructor_type.480_52->common.code, D.21893
	cmpb	$20, %al	#, D.21893
	je	.L1171	#,
	.loc 1 5557 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.481
	movzbl	16(%rax), %eax	# constructor_type.481_54->common.code, D.21893
	cmpb	$21, %al	#, D.21893
	je	.L1171	#,
	.loc 1 5558 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.482
	movzbl	16(%rax), %eax	# constructor_type.482_56->common.code, D.21893
	cmpb	$18, %al	#, D.21893
	je	.L1171	#,
	.loc 1 5559 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.483
	movzbl	16(%rax), %eax	# constructor_type.483_58->common.code, D.21893
	cmpb	$9, %al	#, D.21893
	je	.L1171	#,
	.loc 1 5563 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.484
	testq	%rax, %rax	# constructor_elements.484
	jne	.L1172	#,
	.loc 1 5565 0
	movl	constructor_erroneous(%rip), %eax	# constructor_erroneous, constructor_erroneous.485
	testl	%eax, %eax	# constructor_erroneous.485
	jne	.L1173	#,
	.loc 1 5566 0
	movl	$.LC163, %edi	#,
	call	error_init	#
.L1173:
	.loc 1 5567 0
	movq	global_trees(%rip), %rax	# global_trees, tmp159
	movq	%rax, -16(%rbp)	# tmp159, constructor
	jmp	.L1174	#
.L1172:
	.loc 1 5569 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.486
	movq	(%rax), %rax	# constructor_elements.486_63->common.chain, D.21892
	testq	%rax, %rax	# D.21892
	je	.L1175	#,
	.loc 1 5571 0
	movl	$.LC164, %edi	#,
	call	error_init	#
	.loc 1 5572 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.487
	movq	32(%rax), %rax	# constructor_elements.487_65->list.value, tmp160
	movq	%rax, -16(%rbp)	# tmp160, constructor
	jmp	.L1174	#
.L1175:
	.loc 1 5575 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.488
	movq	32(%rax), %rax	# constructor_elements.488_67->list.value, tmp161
	movq	%rax, -16(%rbp)	# tmp161, constructor
	.loc 1 5563 0
	jmp	.L1170	#
.L1174:
	jmp	.L1170	#
.L1171:
	.loc 1 5579 0
	movl	constructor_erroneous(%rip), %eax	# constructor_erroneous, constructor_erroneous.489
	testl	%eax, %eax	# constructor_erroneous.489
	je	.L1176	#,
	.loc 1 5580 0
	movq	global_trees(%rip), %rax	# global_trees, tmp162
	movq	%rax, -16(%rbp)	# tmp162, constructor
	jmp	.L1170	#
.L1176:
	.loc 1 5583 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.490
	movq	%rax, %rdi	# constructor_elements.490,
	call	nreverse	#
	movq	%rax, %rdx	#, D.21892
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.491
	movq	%rdx, %rcx	# D.21892,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# constructor_type.491,
	movl	$46, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp163, constructor
	.loc 1 5585 0
	movl	constructor_constant(%rip), %eax	# constructor_constant, constructor_constant.492
	testl	%eax, %eax	# constructor_constant.492
	je	.L1177	#,
	.loc 1 5586 0
	movq	-16(%rbp), %rax	# constructor, tmp164
	movzbl	17(%rax), %edx	#, tmp167
	orl	$2, %edx	#, tmp168
	movb	%dl, 17(%rax)	# tmp168,
.L1177:
	.loc 1 5587 0
	movl	constructor_constant(%rip), %eax	# constructor_constant, constructor_constant.493
	testl	%eax, %eax	# constructor_constant.493
	je	.L1170	#,
	.loc 1 5587 0 is_stmt 0 discriminator 1
	movl	constructor_simple(%rip), %eax	# constructor_simple, constructor_simple.494
	testl	%eax, %eax	# constructor_simple.494
	je	.L1170	#,
	.loc 1 5588 0 is_stmt 1
	movq	-16(%rbp), %rax	# constructor, tmp169
	movzbl	18(%rax), %edx	#, tmp172
	orl	$4, %edx	#, tmp173
	movb	%dl, 18(%rax)	# tmp173,
.L1170:
	.loc 1 5592 0
	movq	-8(%rbp), %rax	# p, tmp174
	movq	8(%rax), %rax	# p_10->type, constructor_type.495
	movq	%rax, constructor_type(%rip)	# constructor_type.495, constructor_type
	.loc 1 5593 0
	movq	-8(%rbp), %rax	# p, tmp175
	movq	16(%rax), %rax	# p_10->fields, constructor_fields.496
	movq	%rax, constructor_fields(%rip)	# constructor_fields.496, constructor_fields
	.loc 1 5594 0
	movq	-8(%rbp), %rax	# p, tmp176
	movq	24(%rax), %rax	# p_10->index, constructor_index.497
	movq	%rax, constructor_index(%rip)	# constructor_index.497, constructor_index
	.loc 1 5595 0
	movq	-8(%rbp), %rax	# p, tmp177
	movq	32(%rax), %rax	# p_10->max_index, constructor_max_index.498
	movq	%rax, constructor_max_index(%rip)	# constructor_max_index.498, constructor_max_index
	.loc 1 5596 0
	movq	-8(%rbp), %rax	# p, tmp178
	movq	40(%rax), %rax	# p_10->unfilled_index, constructor_unfilled_index.499
	movq	%rax, constructor_unfilled_index(%rip)	# constructor_unfilled_index.499, constructor_unfilled_index
	.loc 1 5597 0
	movq	-8(%rbp), %rax	# p, tmp179
	movq	48(%rax), %rax	# p_10->unfilled_fields, constructor_unfilled_fields.500
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_unfilled_fields.500, constructor_unfilled_fields
	.loc 1 5598 0
	movq	-8(%rbp), %rax	# p, tmp180
	movq	56(%rax), %rax	# p_10->bit_index, constructor_bit_index.501
	movq	%rax, constructor_bit_index(%rip)	# constructor_bit_index.501, constructor_bit_index
	.loc 1 5599 0
	movq	-8(%rbp), %rax	# p, tmp181
	movq	64(%rax), %rax	# p_10->elements, constructor_elements.502
	movq	%rax, constructor_elements(%rip)	# constructor_elements.502, constructor_elements
	.loc 1 5600 0
	movq	-8(%rbp), %rax	# p, tmp182
	movzbl	104(%rax), %eax	# p_10->constant, D.21891
	movsbl	%al, %eax	# D.21891, constructor_constant.503
	movl	%eax, constructor_constant(%rip)	# constructor_constant.503, constructor_constant
	.loc 1 5601 0
	movq	-8(%rbp), %rax	# p, tmp183
	movzbl	105(%rax), %eax	# p_10->simple, D.21891
	movsbl	%al, %eax	# D.21891, constructor_simple.504
	movl	%eax, constructor_simple(%rip)	# constructor_simple.504, constructor_simple
	.loc 1 5602 0
	movq	-8(%rbp), %rax	# p, tmp184
	movzbl	107(%rax), %eax	# p_10->erroneous, D.21891
	movsbl	%al, %eax	# D.21891, constructor_erroneous.505
	movl	%eax, constructor_erroneous(%rip)	# constructor_erroneous.505, constructor_erroneous
	.loc 1 5603 0
	movq	-8(%rbp), %rax	# p, tmp185
	movzbl	109(%rax), %eax	# p_10->incremental, D.21891
	movsbl	%al, %eax	# D.21891, constructor_incremental.506
	movl	%eax, constructor_incremental(%rip)	# constructor_incremental.506, constructor_incremental
	.loc 1 5604 0
	movq	-8(%rbp), %rax	# p, tmp186
	movzbl	110(%rax), %eax	# p_10->designated, D.21891
	movsbl	%al, %eax	# D.21891, constructor_designated.507
	movl	%eax, constructor_designated(%rip)	# constructor_designated.507, constructor_designated
	.loc 1 5605 0
	movq	-8(%rbp), %rax	# p, tmp187
	movq	72(%rax), %rax	# p_10->pending_elts, constructor_pending_elts.508
	movq	%rax, constructor_pending_elts(%rip)	# constructor_pending_elts.508, constructor_pending_elts
	.loc 1 5606 0
	movq	-8(%rbp), %rax	# p, tmp188
	movl	84(%rax), %eax	# p_10->depth, constructor_depth.509
	movl	%eax, constructor_depth(%rip)	# constructor_depth.509, constructor_depth
	.loc 1 5607 0
	movq	-8(%rbp), %rax	# p, tmp189
	movzbl	106(%rax), %eax	# p_10->implicit, D.21891
	testb	%al, %al	# D.21891
	jne	.L1178	#,
	.loc 1 5608 0
	movq	-8(%rbp), %rax	# p, tmp190
	movq	96(%rax), %rax	# p_10->range_stack, constructor_range_stack.510
	movq	%rax, constructor_range_stack(%rip)	# constructor_range_stack.510, constructor_range_stack
.L1178:
	.loc 1 5609 0
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.511
	movl	constructor_depth(%rip), %edx	# constructor_depth, constructor_depth.512
	movslq	%edx, %rdx	# constructor_depth.512, D.21895
	salq	$4, %rdx	#, D.21895
	addq	%rdx, %rax	# D.21895, spelling.513
	movq	%rax, spelling(%rip)	# spelling.513, spelling
	.loc 1 5611 0
	movq	-8(%rbp), %rax	# p, tmp191
	movq	(%rax), %rax	# p_10->next, constructor_stack.514
	movq	%rax, constructor_stack(%rip)	# constructor_stack.514, constructor_stack
	.loc 1 5612 0
	movq	-8(%rbp), %rax	# p, tmp192
	movq	%rax, %rdi	# tmp192,
	call	free	#
	.loc 1 5614 0
	cmpq	$0, -16(%rbp)	#, constructor
	jne	.L1179	#,
	.loc 1 5616 0
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.515
	testq	%rax, %rax	# constructor_stack.515
	jne	.L1180	#,
	.loc 1 5617 0
	movq	global_trees(%rip), %rax	# global_trees, D.21890
	jmp	.L1181	#
.L1180:
	.loc 1 5618 0
	movl	$0, %eax	#, D.21890
	jmp	.L1181	#
.L1179:
	.loc 1 5620 0
	movq	-16(%rbp), %rax	# constructor, D.21890
.L1181:
	.loc 1 5621 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	pop_init_level, .-pop_init_level
	.section	.rodata
	.align 8
.LC165:
	.string	"initialization designators may not nest"
	.align 8
.LC166:
	.string	"array index in non-array initializer"
	.align 8
.LC167:
	.string	"field name not in record or union initializer"
	.text
	.type	set_designator, @function
set_designator:
.LFB59:
	.loc 1 5629 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# array, array
	.loc 1 5635 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.516
	testq	%rax, %rax	# constructor_type.516
	jne	.L1183	#,
	.loc 1 5636 0
	movl	$1, %eax	#, D.21901
	jmp	.L1184	#
.L1183:
	.loc 1 5639 0
	movl	designator_errorneous(%rip), %eax	# designator_errorneous, designator_errorneous.517
	testl	%eax, %eax	# designator_errorneous.517
	je	.L1185	#,
	.loc 1 5640 0
	movl	$1, %eax	#, D.21901
	jmp	.L1184	#
.L1185:
	.loc 1 5642 0
	movl	designator_depth(%rip), %eax	# designator_depth, designator_depth.518
	testl	%eax, %eax	# designator_depth.518
	jne	.L1186	#,
	.loc 1 5644 0
	movq	constructor_range_stack(%rip), %rax	# constructor_range_stack, constructor_range_stack.519
	testq	%rax, %rax	# constructor_range_stack.519
	je	.L1187	#,
	.loc 1 5645 0
	movl	$__FUNCTION__.14590, %edx	#,
	movl	$5645, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L1187:
	.loc 1 5649 0
	jmp	.L1188	#
.L1189:
	.loc 1 5650 0
	movl	$1, %edi	#,
	call	pop_init_level	#
	movq	%rax, %rdi	# D.21903,
	call	process_init_element	#
.L1188:
	.loc 1 5649 0 discriminator 1
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.520
	movzbl	106(%rax), %eax	# constructor_stack.520_10->implicit, D.21902
	testb	%al, %al	# D.21902
	jne	.L1189	#,
	.loc 1 5651 0
	movl	$1, constructor_designated(%rip)	#, constructor_designated
	.loc 1 5652 0
	movl	$0, %eax	#, D.21901
	jmp	.L1184	#
.L1186:
	.loc 1 5655 0
	movl	constructor_no_implicit(%rip), %eax	# constructor_no_implicit, constructor_no_implicit.521
	testl	%eax, %eax	# constructor_no_implicit.521
	je	.L1190	#,
	.loc 1 5657 0
	movl	$.LC165, %edi	#,
	call	error_init	#
	.loc 1 5658 0
	movl	$1, %eax	#, D.21901
	jmp	.L1184	#
.L1190:
	.loc 1 5661 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.522
	movzbl	16(%rax), %eax	# constructor_type.522_16->common.code, D.21904
	cmpb	$20, %al	#, D.21904
	je	.L1191	#,
	.loc 1 5662 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.523
	movzbl	16(%rax), %eax	# constructor_type.523_18->common.code, D.21904
	cmpb	$21, %al	#, D.21904
	jne	.L1192	#,
.L1191:
	.loc 1 5664 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.524
	movq	8(%rax), %rax	# constructor_fields.524_25->common.type, tmp80
	movq	%rax, -8(%rbp)	# tmp80, subtype
	.loc 1 5665 0
	movq	global_trees(%rip), %rax	# global_trees, D.21903
	cmpq	-8(%rbp), %rax	# subtype, D.21903
	je	.L1193	#,
	.loc 1 5666 0
	movq	-8(%rbp), %rax	# subtype, tmp81
	movq	128(%rax), %rax	# subtype_26->type.main_variant, tmp82
	movq	%rax, -8(%rbp)	# tmp82, subtype
	.loc 1 5665 0
	jmp	.L1194	#
.L1193:
	.loc 1 5665 0 is_stmt 0 discriminator 1
	jmp	.L1194	#
.L1192:
	.loc 1 5668 0 is_stmt 1
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.525
	movzbl	16(%rax), %eax	# constructor_type.525_20->common.code, D.21904
	cmpb	$18, %al	#, D.21904
	jne	.L1195	#,
	.loc 1 5670 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.526
	movq	8(%rax), %rax	# constructor_type.526_22->common.type, D.21903
	movq	128(%rax), %rax	# _23->type.main_variant, tmp83
	movq	%rax, -8(%rbp)	# tmp83, subtype
	jmp	.L1194	#
.L1195:
	.loc 1 5673 0
	movl	$__FUNCTION__.14590, %edx	#,
	movl	$5673, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L1194:
	.loc 1 5675 0
	movq	-8(%rbp), %rax	# subtype, tmp84
	movzbl	16(%rax), %eax	# subtype_2->common.code, D.21904
	movzbl	%al, %eax	# D.21904, tmp85
	movl	%eax, -12(%rbp)	# tmp85, subcode
	.loc 1 5676 0
	cmpl	$0, -20(%rbp)	#, array
	je	.L1196	#,
	.loc 1 5676 0 is_stmt 0 discriminator 1
	cmpl	$18, -12(%rbp)	#, subcode
	je	.L1196	#,
	.loc 1 5678 0 is_stmt 1
	movl	$.LC166, %edi	#,
	call	error_init	#
	.loc 1 5679 0
	movl	$1, %eax	#, D.21901
	jmp	.L1184	#
.L1196:
	.loc 1 5681 0
	cmpl	$0, -20(%rbp)	#, array
	jne	.L1197	#,
	.loc 1 5681 0 is_stmt 0 discriminator 1
	cmpl	$20, -12(%rbp)	#, subcode
	je	.L1197	#,
	cmpl	$21, -12(%rbp)	#, subcode
	je	.L1197	#,
	.loc 1 5683 0 is_stmt 1
	movl	$.LC167, %edi	#,
	call	error_init	#
	.loc 1 5684 0
	movl	$1, %eax	#, D.21901
	jmp	.L1184	#
.L1197:
	.loc 1 5687 0
	movl	$1, constructor_designated(%rip)	#, constructor_designated
	.loc 1 5688 0
	movl	$2, %edi	#,
	call	push_init_level	#
	.loc 1 5689 0
	movl	$0, %eax	#, D.21901
.L1184:
	.loc 1 5690 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	set_designator, .-set_designator
	.type	push_range_stack, @function
push_range_stack:
.LFB60:
	.loc 1 5699 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# range_end, range_end
	.loc 1 5702 0
	movl	$56, %edi	#,
	call	ggc_alloc	#
	movq	%rax, -8(%rbp)	# tmp66, p
	.loc 1 5704 0
	movq	constructor_range_stack(%rip), %rdx	# constructor_range_stack, constructor_range_stack.527
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rdx, 8(%rax)	# constructor_range_stack.527, p_1->prev
	.loc 1 5705 0
	movq	-8(%rbp), %rax	# p, tmp68
	movq	$0, (%rax)	#, p_1->next
	.loc 1 5706 0
	movq	constructor_fields(%rip), %rdx	# constructor_fields, constructor_fields.528
	movq	-8(%rbp), %rax	# p, tmp69
	movq	%rdx, 48(%rax)	# constructor_fields.528, p_1->fields
	.loc 1 5707 0
	movq	constructor_index(%rip), %rdx	# constructor_index, constructor_index.529
	movq	-8(%rbp), %rax	# p, tmp70
	movq	%rdx, 24(%rax)	# constructor_index.529, p_1->range_start
	.loc 1 5708 0
	movq	constructor_index(%rip), %rdx	# constructor_index, constructor_index.530
	movq	-8(%rbp), %rax	# p, tmp71
	movq	%rdx, 32(%rax)	# constructor_index.530, p_1->index
	.loc 1 5709 0
	movq	constructor_stack(%rip), %rdx	# constructor_stack, constructor_stack.531
	movq	-8(%rbp), %rax	# p, tmp72
	movq	%rdx, 16(%rax)	# constructor_stack.531, p_1->stack
	.loc 1 5710 0
	movq	-8(%rbp), %rax	# p, tmp73
	movq	-24(%rbp), %rdx	# range_end, tmp74
	movq	%rdx, 40(%rax)	# tmp74, p_1->range_end
	.loc 1 5711 0
	movq	constructor_range_stack(%rip), %rax	# constructor_range_stack, constructor_range_stack.532
	testq	%rax, %rax	# constructor_range_stack.532
	je	.L1199	#,
	.loc 1 5712 0
	movq	constructor_range_stack(%rip), %rax	# constructor_range_stack, constructor_range_stack.533
	movq	-8(%rbp), %rdx	# p, tmp75
	movq	%rdx, (%rax)	# tmp75, constructor_range_stack.533_9->next
.L1199:
	.loc 1 5713 0
	movq	-8(%rbp), %rax	# p, tmp76
	movq	%rax, constructor_range_stack(%rip)	# tmp76, constructor_range_stack
	.loc 1 5714 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	push_range_stack, .-push_range_stack
	.section	.rodata
	.align 8
.LC168:
	.string	"nonconstant array index in initializer"
	.align 8
.LC169:
	.string	"array index in initializer exceeds array bounds"
	.align 8
.LC170:
	.string	"empty index range in initializer"
	.align 8
.LC171:
	.string	"array index range in initializer exceeds array bounds"
	.text
	.globl	set_init_index
	.type	set_init_index, @function
set_init_index:
.LFB61:
	.loc 1 5723 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# first, first
	movq	%rsi, -16(%rbp)	# last, last
	.loc 1 5724 0
	movl	$1, %edi	#,
	call	set_designator	#
	testl	%eax, %eax	# D.21908
	je	.L1201	#,
	.loc 1 5725 0
	jmp	.L1200	#
.L1201:
	.loc 1 5727 0
	movl	$1, designator_errorneous(%rip)	#, designator_errorneous
	.loc 1 5729 0
	jmp	.L1203	#
.L1206:
	.loc 1 5734 0
	movq	-8(%rbp), %rax	# first, tmp94
	movq	32(%rax), %rax	# first_1->exp.operands, tmp95
	movq	%rax, -8(%rbp)	# tmp95, first
.L1203:
	.loc 1 5729 0 discriminator 1
	movq	-8(%rbp), %rax	# first, tmp96
	movzbl	16(%rax), %eax	# first_1->common.code, D.21909
	cmpb	$115, %al	#, D.21909
	je	.L1204	#,
	.loc 1 5730 0
	movq	-8(%rbp), %rax	# first, tmp97
	movzbl	16(%rax), %eax	# first_1->common.code, D.21909
	cmpb	$114, %al	#, D.21909
	je	.L1204	#,
	.loc 1 5731 0
	movq	-8(%rbp), %rax	# first, tmp98
	movzbl	16(%rax), %eax	# first_1->common.code, D.21909
	cmpb	$116, %al	#, D.21909
	jne	.L1205	#,
.L1204:
	.loc 1 5732 0
	movq	-8(%rbp), %rax	# first, tmp99
	movq	8(%rax), %rax	# first_1->common.type, D.21910
	movzbl	61(%rax), %eax	# *_10, tmp102
	shrb	%al	# D.21911
	movl	%eax, %edx	# D.21911, D.21911
	.loc 1 5733 0
	movq	-8(%rbp), %rax	# first, tmp103
	movq	32(%rax), %rax	# first_1->exp.operands, D.21910
	movq	8(%rax), %rax	# _12->common.type, D.21910
	movzbl	61(%rax), %eax	# *_13, tmp106
	shrb	%al	# D.21911
	.loc 1 5732 0
	cmpb	%al, %dl	# D.21911, D.21911
	je	.L1206	#,
.L1205:
	.loc 1 5736 0
	cmpq	$0, -16(%rbp)	#, last
	je	.L1207	#,
	.loc 1 5737 0
	jmp	.L1208	#
.L1210:
	.loc 1 5742 0
	movq	-16(%rbp), %rax	# last, tmp107
	movq	32(%rax), %rax	# last_2->exp.operands, tmp108
	movq	%rax, -16(%rbp)	# tmp108, last
.L1208:
	.loc 1 5737 0 discriminator 1
	movq	-16(%rbp), %rax	# last, tmp109
	movzbl	16(%rax), %eax	# last_2->common.code, D.21909
	cmpb	$115, %al	#, D.21909
	je	.L1209	#,
	.loc 1 5738 0
	movq	-16(%rbp), %rax	# last, tmp110
	movzbl	16(%rax), %eax	# last_2->common.code, D.21909
	cmpb	$114, %al	#, D.21909
	je	.L1209	#,
	.loc 1 5739 0
	movq	-16(%rbp), %rax	# last, tmp111
	movzbl	16(%rax), %eax	# last_2->common.code, D.21909
	cmpb	$116, %al	#, D.21909
	jne	.L1207	#,
.L1209:
	.loc 1 5740 0
	movq	-16(%rbp), %rax	# last, tmp112
	movq	8(%rax), %rax	# last_2->common.type, D.21910
	movzbl	61(%rax), %eax	# *_20, tmp115
	shrb	%al	# D.21911
	movl	%eax, %edx	# D.21911, D.21911
	.loc 1 5741 0
	movq	-16(%rbp), %rax	# last, tmp116
	movq	32(%rax), %rax	# last_2->exp.operands, D.21910
	movq	8(%rax), %rax	# _22->common.type, D.21910
	movzbl	61(%rax), %eax	# *_23, tmp119
	shrb	%al	# D.21911
	.loc 1 5740 0
	cmpb	%al, %dl	# D.21911, D.21911
	je	.L1210	#,
.L1207:
	.loc 1 5744 0
	movq	-8(%rbp), %rax	# first, tmp120
	movzbl	16(%rax), %eax	# first_1->common.code, D.21909
	cmpb	$25, %al	#, D.21909
	je	.L1211	#,
	.loc 1 5745 0
	movl	$.LC168, %edi	#,
	call	error_init	#
	jmp	.L1200	#
.L1211:
	.loc 1 5746 0
	cmpq	$0, -16(%rbp)	#, last
	je	.L1212	#,
	.loc 1 5746 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# last, tmp121
	movzbl	16(%rax), %eax	# last_3->common.code, D.21909
	cmpb	$25, %al	#, D.21909
	je	.L1212	#,
	.loc 1 5747 0 is_stmt 1
	movl	$.LC168, %edi	#,
	call	error_init	#
	jmp	.L1200	#
.L1212:
	.loc 1 5748 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.534
	movzbl	16(%rax), %eax	# constructor_type.534_28->common.code, D.21909
	cmpb	$18, %al	#, D.21909
	je	.L1213	#,
	.loc 1 5749 0
	movl	$.LC166, %edi	#,
	call	error_init	#
	jmp	.L1200	#
.L1213:
	.loc 1 5750 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.535
	testq	%rax, %rax	# constructor_max_index.535
	je	.L1214	#,
	.loc 1 5751 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.536
	movq	-8(%rbp), %rdx	# first, tmp122
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# constructor_max_index.536,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21908
	je	.L1214	#,
	.loc 1 5752 0
	movl	$.LC169, %edi	#,
	call	error_init	#
	jmp	.L1200	#
.L1214:
	.loc 1 5755 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.21910
	movq	-8(%rbp), %rdx	# first, tmp123
	movq	%rdx, %rsi	# tmp123,
	movq	%rax, %rdi	# D.21910,
	call	convert	#
	movq	%rax, constructor_index(%rip)	# constructor_index.537, constructor_index
	.loc 1 5757 0
	cmpq	$0, -16(%rbp)	#, last
	je	.L1215	#,
	.loc 1 5759 0
	movq	-16(%rbp), %rdx	# last, tmp124
	movq	-8(%rbp), %rax	# first, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21908
	je	.L1216	#,
	.loc 1 5760 0
	movq	$0, -16(%rbp)	#, last
	jmp	.L1215	#
.L1216:
	.loc 1 5761 0
	movq	-8(%rbp), %rdx	# first, tmp126
	movq	-16(%rbp), %rax	# last, tmp127
	movq	%rdx, %rsi	# tmp126,
	movq	%rax, %rdi	# tmp127,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21908
	je	.L1217	#,
	.loc 1 5763 0
	movl	$.LC170, %edi	#,
	call	error_init	#
	.loc 1 5764 0
	movq	$0, -16(%rbp)	#, last
	jmp	.L1215	#
.L1217:
	.loc 1 5768 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.21910
	movq	-16(%rbp), %rdx	# last, tmp128
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# D.21910,
	call	convert	#
	movq	%rax, -16(%rbp)	# tmp129, last
	.loc 1 5769 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.538
	testq	%rax, %rax	# constructor_max_index.538
	je	.L1215	#,
	.loc 1 5770 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.539
	movq	-16(%rbp), %rdx	# last, tmp130
	movq	%rdx, %rsi	# tmp130,
	movq	%rax, %rdi	# constructor_max_index.539,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21908
	je	.L1215	#,
	.loc 1 5772 0
	movl	$.LC171, %edi	#,
	call	error_init	#
	.loc 1 5773 0
	movq	$0, -16(%rbp)	#, last
.L1215:
	.loc 1 5778 0
	movl	designator_depth(%rip), %eax	# designator_depth, designator_depth.540
	addl	$1, %eax	#, designator_depth.541
	movl	%eax, designator_depth(%rip)	# designator_depth.541, designator_depth
	.loc 1 5779 0
	movl	$0, designator_errorneous(%rip)	#, designator_errorneous
	.loc 1 5780 0
	movq	constructor_range_stack(%rip), %rax	# constructor_range_stack, constructor_range_stack.542
	testq	%rax, %rax	# constructor_range_stack.542
	jne	.L1218	#,
	.loc 1 5780 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, last
	je	.L1200	#,
.L1218:
	.loc 1 5781 0 is_stmt 1
	movq	-16(%rbp), %rax	# last, tmp131
	movq	%rax, %rdi	# tmp131,
	call	push_range_stack	#
.L1200:
	.loc 1 5783 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	set_init_index, .-set_init_index
	.section	.rodata
	.align 8
.LC172:
	.string	"unknown field `%s' specified in initializer"
	.text
	.globl	set_init_label
	.type	set_init_label, @function
set_init_label:
.LFB62:
	.loc 1 5790 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fieldname, fieldname
	.loc 1 5793 0
	movl	$0, %edi	#,
	call	set_designator	#
	testl	%eax, %eax	# D.21916
	je	.L1220	#,
	.loc 1 5794 0
	jmp	.L1219	#
.L1220:
	.loc 1 5796 0
	movl	$1, designator_errorneous(%rip)	#, designator_errorneous
	.loc 1 5798 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.543
	movzbl	16(%rax), %eax	# constructor_type.543_3->common.code, D.21917
	cmpb	$20, %al	#, D.21917
	je	.L1222	#,
	.loc 1 5799 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.544
	movzbl	16(%rax), %eax	# constructor_type.544_5->common.code, D.21917
	cmpb	$21, %al	#, D.21917
	je	.L1222	#,
	.loc 1 5801 0
	movl	$.LC167, %edi	#,
	call	error_init	#
	.loc 1 5802 0
	jmp	.L1219	#
.L1222:
	.loc 1 5805 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.545
	movq	24(%rax), %rax	# constructor_type.545_7->type.values, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tail
	jmp	.L1223	#
.L1226:
	.loc 1 5808 0
	movq	-8(%rbp), %rax	# tail, tmp71
	movq	72(%rax), %rax	# tail_1->decl.name, D.21918
	cmpq	-24(%rbp), %rax	# fieldname, D.21918
	jne	.L1224	#,
	.loc 1 5809 0
	jmp	.L1225	#
.L1224:
	.loc 1 5806 0
	movq	-8(%rbp), %rax	# tail, tmp72
	movq	(%rax), %rax	# tail_1->common.chain, tmp73
	movq	%rax, -8(%rbp)	# tmp73, tail
.L1223:
	.loc 1 5805 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tail
	jne	.L1226	#,
.L1225:
	.loc 1 5812 0
	cmpq	$0, -8(%rbp)	#, tail
	jne	.L1227	#,
	.loc 1 5814 0
	movq	-24(%rbp), %rax	# fieldname, tmp74
	movq	32(%rax), %rax	# fieldname_10(D)->identifier.id.str, D.21919
	.loc 1 5813 0
	movq	%rax, %rsi	# D.21919,
	movl	$.LC172, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L1219	#
.L1227:
	.loc 1 5817 0
	movq	-8(%rbp), %rax	# tail, tmp75
	movq	%rax, constructor_fields(%rip)	# tmp75, constructor_fields
	.loc 1 5818 0
	movl	designator_depth(%rip), %eax	# designator_depth, designator_depth.546
	addl	$1, %eax	#, designator_depth.547
	movl	%eax, designator_depth(%rip)	# designator_depth.547, designator_depth
	.loc 1 5819 0
	movl	$0, designator_errorneous(%rip)	#, designator_errorneous
	.loc 1 5820 0
	movq	constructor_range_stack(%rip), %rax	# constructor_range_stack, constructor_range_stack.548
	testq	%rax, %rax	# constructor_range_stack.548
	je	.L1219	#,
	.loc 1 5821 0
	movl	$0, %edi	#,
	call	push_range_stack	#
.L1219:
	.loc 1 5823 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	set_init_label, .-set_init_label
	.section	.rodata
	.align 8
.LC173:
	.string	"initialized field with side-effects overwritten"
	.text
	.type	add_pending_init, @function
add_pending_init:
.LFB63:
	.loc 1 5832 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# purpose, purpose
	movq	%rsi, -80(%rbp)	# value, value
	.loc 1 5835 0
	movq	$constructor_pending_elts, -48(%rbp)	#, q
	.loc 1 5836 0
	movq	$0, -56(%rbp)	#, p
	.loc 1 5838 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.549
	movzbl	16(%rax), %eax	# constructor_type.549_11->common.code, D.21921
	cmpb	$18, %al	#, D.21921
	jne	.L1229	#,
	.loc 1 5840 0
	jmp	.L1230	#
.L1235:
	.loc 1 5842 0
	movq	-48(%rbp), %rax	# q, tmp122
	movq	(%rax), %rax	# *q_5, tmp123
	movq	%rax, -56(%rbp)	# tmp123, p
	.loc 1 5843 0
	movq	-56(%rbp), %rax	# p, tmp124
	movq	32(%rax), %rdx	# p_14->purpose, D.21923
	movq	-72(%rbp), %rax	# purpose, tmp125
	movq	%rdx, %rsi	# D.21923,
	movq	%rax, %rdi	# tmp125,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21924
	je	.L1231	#,
	.loc 1 5844 0
	movq	-56(%rbp), %rax	# p, tmp126
	movq	%rax, -48(%rbp)	# tmp126, q
	jmp	.L1230	#
.L1231:
	.loc 1 5845 0
	movq	-56(%rbp), %rax	# p, tmp127
	movq	32(%rax), %rax	# p_14->purpose, D.21923
	movq	-72(%rbp), %rdx	# purpose, tmp128
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# D.21923,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21924
	je	.L1232	#,
	.loc 1 5846 0
	movq	-56(%rbp), %rax	# p, tmp132
	addq	$8, %rax	#, tmp131
	movq	%rax, -48(%rbp)	# tmp131, q
	jmp	.L1230	#
.L1232:
	.loc 1 5849 0
	movq	-56(%rbp), %rax	# p, tmp133
	movq	40(%rax), %rax	# p_14->value, D.21923
	movzbl	17(%rax), %eax	# *_22, D.21921
	andl	$1, %eax	#, D.21921
	testb	%al, %al	# D.21921
	je	.L1233	#,
	.loc 1 5850 0
	movl	$.LC173, %edi	#,
	call	warning_init	#
.L1233:
	.loc 1 5851 0
	movq	-56(%rbp), %rax	# p, tmp134
	movq	-80(%rbp), %rdx	# value, tmp135
	movq	%rdx, 40(%rax)	# tmp135, p_14->value
	.loc 1 5852 0
	jmp	.L1228	#
.L1230:
	.loc 1 5840 0 discriminator 1
	movq	-48(%rbp), %rax	# q, tmp136
	movq	(%rax), %rax	# *q_5, D.21922
	testq	%rax, %rax	# D.21922
	jne	.L1235	#,
	jmp	.L1236	#
.L1229:
.LBB67:
	.loc 1 5860 0
	movq	-72(%rbp), %rax	# purpose, tmp137
	movq	%rax, %rdi	# tmp137,
	call	bit_position	#
	movq	%rax, -32(%rbp)	# tmp138, bitpos
	.loc 1 5861 0
	jmp	.L1237	#
.L1241:
	.loc 1 5863 0
	movq	-48(%rbp), %rax	# q, tmp139
	movq	(%rax), %rax	# *q_6, tmp140
	movq	%rax, -56(%rbp)	# tmp140, p
	.loc 1 5864 0
	movq	-56(%rbp), %rax	# p, tmp141
	movq	32(%rax), %rax	# p_28->purpose, D.21923
	movq	%rax, %rdi	# D.21923,
	call	bit_position	#
	movq	%rax, %rdx	#, D.21923
	movq	-32(%rbp), %rax	# bitpos, tmp142
	movq	%rdx, %rsi	# D.21923,
	movq	%rax, %rdi	# tmp142,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21924
	je	.L1238	#,
	.loc 1 5865 0
	movq	-56(%rbp), %rax	# p, tmp143
	movq	%rax, -48(%rbp)	# tmp143, q
	jmp	.L1237	#
.L1238:
	.loc 1 5866 0
	movq	-56(%rbp), %rax	# p, tmp144
	movq	32(%rax), %rax	# p_28->purpose, D.21923
	cmpq	-72(%rbp), %rax	# purpose, D.21923
	je	.L1239	#,
	.loc 1 5867 0
	movq	-56(%rbp), %rax	# p, tmp148
	addq	$8, %rax	#, tmp147
	movq	%rax, -48(%rbp)	# tmp147, q
	jmp	.L1237	#
.L1239:
	.loc 1 5870 0
	movq	-56(%rbp), %rax	# p, tmp149
	movq	40(%rax), %rax	# p_28->value, D.21923
	movzbl	17(%rax), %eax	# *_35, D.21921
	andl	$1, %eax	#, D.21921
	testb	%al, %al	# D.21921
	je	.L1240	#,
	.loc 1 5871 0
	movl	$.LC173, %edi	#,
	call	warning_init	#
.L1240:
	.loc 1 5872 0
	movq	-56(%rbp), %rax	# p, tmp150
	movq	-80(%rbp), %rdx	# value, tmp151
	movq	%rdx, 40(%rax)	# tmp151, p_28->value
	.loc 1 5873 0
	jmp	.L1228	#
.L1237:
	.loc 1 5861 0 discriminator 1
	movq	-48(%rbp), %rax	# q, tmp152
	movq	(%rax), %rax	# *q_6, D.21922
	testq	%rax, %rax	# D.21922
	jne	.L1241	#,
.L1236:
.LBE67:
	.loc 1 5878 0
	movl	$48, %edi	#,
	call	ggc_alloc	#
	movq	%rax, -40(%rbp)	# tmp153, r
	.loc 1 5879 0
	movq	-40(%rbp), %rax	# r, tmp154
	movq	-72(%rbp), %rdx	# purpose, tmp155
	movq	%rdx, 32(%rax)	# tmp155, r_38->purpose
	.loc 1 5880 0
	movq	-40(%rbp), %rax	# r, tmp156
	movq	-80(%rbp), %rdx	# value, tmp157
	movq	%rdx, 40(%rax)	# tmp157, r_38->value
	.loc 1 5882 0
	movq	-48(%rbp), %rax	# q, tmp158
	movq	-40(%rbp), %rdx	# r, tmp159
	movq	%rdx, (%rax)	# tmp159, *q_7
	.loc 1 5883 0
	movq	-40(%rbp), %rax	# r, tmp160
	movq	-56(%rbp), %rdx	# p, tmp161
	movq	%rdx, 16(%rax)	# tmp161, r_38->parent
	.loc 1 5884 0
	movq	-40(%rbp), %rax	# r, tmp162
	movq	$0, (%rax)	#, r_38->left
	.loc 1 5885 0
	movq	-40(%rbp), %rax	# r, tmp163
	movq	$0, 8(%rax)	#, r_38->right
	.loc 1 5886 0
	movq	-40(%rbp), %rax	# r, tmp164
	movl	$0, 24(%rax)	#, r_38->balance
	.loc 1 5888 0
	jmp	.L1242	#
.L1273:
.LBB68:
	.loc 1 5892 0
	movq	-56(%rbp), %rax	# p, tmp165
	movq	(%rax), %rax	# p_4->left, D.21922
	cmpq	-40(%rbp), %rax	# r, D.21922
	jne	.L1243	#,
	.loc 1 5894 0
	movq	-56(%rbp), %rax	# p, tmp166
	movl	24(%rax), %eax	# p_4->balance, D.21924
	testl	%eax, %eax	# D.21924
	jne	.L1244	#,
	.loc 1 5895 0
	movq	-56(%rbp), %rax	# p, tmp167
	movl	$-1, 24(%rax)	#, p_4->balance
	jmp	.L1245	#
.L1244:
	.loc 1 5896 0
	movq	-56(%rbp), %rax	# p, tmp168
	movl	24(%rax), %eax	# p_4->balance, D.21924
	testl	%eax, %eax	# D.21924
	jns	.L1246	#,
	.loc 1 5898 0
	movq	-40(%rbp), %rax	# r, tmp169
	movl	24(%rax), %eax	# r_8->balance, D.21924
	testl	%eax, %eax	# D.21924
	jns	.L1247	#,
	.loc 1 5901 0
	movq	-40(%rbp), %rax	# r, tmp170
	movq	8(%rax), %rdx	# r_8->right, D.21922
	movq	-56(%rbp), %rax	# p, tmp171
	movq	%rdx, (%rax)	# D.21922, p_4->left
	.loc 1 5902 0
	movq	-56(%rbp), %rax	# p, tmp172
	movq	(%rax), %rax	# p_4->left, D.21922
	testq	%rax, %rax	# D.21922
	je	.L1248	#,
	.loc 1 5903 0
	movq	-56(%rbp), %rax	# p, tmp173
	movq	(%rax), %rax	# p_4->left, D.21922
	movq	-56(%rbp), %rdx	# p, tmp174
	movq	%rdx, 16(%rax)	# tmp174, _45->parent
.L1248:
	.loc 1 5904 0
	movq	-40(%rbp), %rax	# r, tmp175
	movq	-56(%rbp), %rdx	# p, tmp176
	movq	%rdx, 8(%rax)	# tmp176, r_8->right
	.loc 1 5906 0
	movq	-56(%rbp), %rax	# p, tmp177
	movl	$0, 24(%rax)	#, p_4->balance
	.loc 1 5907 0
	movq	-40(%rbp), %rax	# r, tmp178
	movl	$0, 24(%rax)	#, r_8->balance
	.loc 1 5909 0
	movq	-56(%rbp), %rax	# p, tmp179
	movq	16(%rax), %rax	# p_4->parent, tmp180
	movq	%rax, -24(%rbp)	# tmp180, s
	.loc 1 5910 0
	movq	-56(%rbp), %rax	# p, tmp181
	movq	-40(%rbp), %rdx	# r, tmp182
	movq	%rdx, 16(%rax)	# tmp182, p_4->parent
	.loc 1 5911 0
	movq	-40(%rbp), %rax	# r, tmp183
	movq	-24(%rbp), %rdx	# s, tmp184
	movq	%rdx, 16(%rax)	# tmp184, r_8->parent
	.loc 1 5912 0
	cmpq	$0, -24(%rbp)	#, s
	je	.L1249	#,
	.loc 1 5914 0
	movq	-24(%rbp), %rax	# s, tmp185
	movq	(%rax), %rax	# s_46->left, D.21922
	cmpq	-56(%rbp), %rax	# p, D.21922
	jne	.L1250	#,
	.loc 1 5915 0
	movq	-24(%rbp), %rax	# s, tmp186
	movq	-40(%rbp), %rdx	# r, tmp187
	movq	%rdx, (%rax)	# tmp187, s_46->left
	jmp	.L1253	#
.L1250:
	.loc 1 5917 0
	movq	-24(%rbp), %rax	# s, tmp188
	movq	-40(%rbp), %rdx	# r, tmp189
	movq	%rdx, 8(%rax)	# tmp189, s_46->right
	jmp	.L1253	#
.L1249:
	.loc 1 5920 0
	movq	-40(%rbp), %rax	# r, tmp190
	movq	%rax, constructor_pending_elts(%rip)	# tmp190, constructor_pending_elts
	.loc 1 5955 0
	jmp	.L1228	#
.L1247:
.LBB69:
	.loc 1 5925 0
	movq	-40(%rbp), %rax	# r, tmp191
	movq	8(%rax), %rax	# r_8->right, tmp192
	movq	%rax, -16(%rbp)	# tmp192, t
	.loc 1 5927 0
	movq	-16(%rbp), %rax	# t, tmp193
	movq	(%rax), %rdx	# t_48->left, D.21922
	movq	-40(%rbp), %rax	# r, tmp194
	movq	%rdx, 8(%rax)	# D.21922, r_8->right
	.loc 1 5928 0
	movq	-40(%rbp), %rax	# r, tmp195
	movq	8(%rax), %rax	# r_8->right, D.21922
	testq	%rax, %rax	# D.21922
	je	.L1254	#,
	.loc 1 5929 0
	movq	-40(%rbp), %rax	# r, tmp196
	movq	8(%rax), %rax	# r_8->right, D.21922
	movq	-40(%rbp), %rdx	# r, tmp197
	movq	%rdx, 16(%rax)	# tmp197, _51->parent
.L1254:
	.loc 1 5930 0
	movq	-16(%rbp), %rax	# t, tmp198
	movq	-40(%rbp), %rdx	# r, tmp199
	movq	%rdx, (%rax)	# tmp199, t_48->left
	.loc 1 5932 0
	movq	-16(%rbp), %rax	# t, tmp200
	movq	8(%rax), %rdx	# t_48->right, D.21922
	movq	-56(%rbp), %rax	# p, tmp201
	movq	%rdx, (%rax)	# D.21922, p_4->left
	.loc 1 5933 0
	movq	-56(%rbp), %rax	# p, tmp202
	movq	(%rax), %rax	# p_4->left, D.21922
	testq	%rax, %rax	# D.21922
	je	.L1255	#,
	.loc 1 5934 0
	movq	-56(%rbp), %rax	# p, tmp203
	movq	(%rax), %rax	# p_4->left, D.21922
	movq	-56(%rbp), %rdx	# p, tmp204
	movq	%rdx, 16(%rax)	# tmp204, _54->parent
.L1255:
	.loc 1 5935 0
	movq	-16(%rbp), %rax	# t, tmp205
	movq	-56(%rbp), %rdx	# p, tmp206
	movq	%rdx, 8(%rax)	# tmp206, t_48->right
	.loc 1 5937 0
	movq	-16(%rbp), %rax	# t, tmp207
	movl	24(%rax), %eax	# t_48->balance, D.21924
	shrl	$31, %eax	#, tmp208
	movzbl	%al, %edx	# D.21925, D.21924
	movq	-56(%rbp), %rax	# p, tmp209
	movl	%edx, 24(%rax)	# D.21924, p_4->balance
	.loc 1 5938 0
	movq	-16(%rbp), %rax	# t, tmp210
	movl	24(%rax), %eax	# t_48->balance, D.21924
	testl	%eax, %eax	# D.21924
	setg	%al	#, D.21925
	movzbl	%al, %eax	# D.21925, D.21924
	negl	%eax	# D.21924
	movl	%eax, %edx	# D.21924, D.21924
	movq	-40(%rbp), %rax	# r, tmp211
	movl	%edx, 24(%rax)	# D.21924, r_8->balance
	.loc 1 5939 0
	movq	-16(%rbp), %rax	# t, tmp212
	movl	$0, 24(%rax)	#, t_48->balance
	.loc 1 5941 0
	movq	-56(%rbp), %rax	# p, tmp213
	movq	16(%rax), %rax	# p_4->parent, tmp214
	movq	%rax, -24(%rbp)	# tmp214, s
	.loc 1 5942 0
	movq	-56(%rbp), %rax	# p, tmp215
	movq	-16(%rbp), %rdx	# t, tmp216
	movq	%rdx, 16(%rax)	# tmp216, p_4->parent
	.loc 1 5943 0
	movq	-40(%rbp), %rax	# r, tmp217
	movq	-16(%rbp), %rdx	# t, tmp218
	movq	%rdx, 16(%rax)	# tmp218, r_8->parent
	.loc 1 5944 0
	movq	-16(%rbp), %rax	# t, tmp219
	movq	-24(%rbp), %rdx	# s, tmp220
	movq	%rdx, 16(%rax)	# tmp220, t_48->parent
	.loc 1 5945 0
	cmpq	$0, -24(%rbp)	#, s
	je	.L1256	#,
	.loc 1 5947 0
	movq	-24(%rbp), %rax	# s, tmp221
	movq	(%rax), %rax	# s_62->left, D.21922
	cmpq	-56(%rbp), %rax	# p, D.21922
	jne	.L1257	#,
	.loc 1 5948 0
	movq	-24(%rbp), %rax	# s, tmp222
	movq	-16(%rbp), %rdx	# t, tmp223
	movq	%rdx, (%rax)	# tmp223, s_62->left
	jmp	.L1253	#
.L1257:
	.loc 1 5950 0
	movq	-24(%rbp), %rax	# s, tmp224
	movq	-16(%rbp), %rdx	# t, tmp225
	movq	%rdx, 8(%rax)	# tmp225, s_62->right
.LBE69:
	.loc 1 5955 0
	jmp	.L1228	#
.L1256:
.LBB70:
	.loc 1 5953 0
	movq	-16(%rbp), %rax	# t, tmp226
	movq	%rax, constructor_pending_elts(%rip)	# tmp226, constructor_pending_elts
.LBE70:
	.loc 1 5955 0
	jmp	.L1228	#
.L1253:
	jmp	.L1228	#
.L1246:
	.loc 1 5960 0
	movq	-56(%rbp), %rax	# p, tmp227
	movl	$0, 24(%rax)	#, p_4->balance
	.loc 1 5961 0
	jmp	.L1228	#
.L1243:
	.loc 1 5966 0
	movq	-56(%rbp), %rax	# p, tmp228
	movl	24(%rax), %eax	# p_4->balance, D.21924
	testl	%eax, %eax	# D.21924
	jne	.L1259	#,
	.loc 1 5968 0
	movq	-56(%rbp), %rax	# p, tmp229
	movl	24(%rax), %eax	# p_4->balance, D.21924
	leal	1(%rax), %edx	#, D.21924
	movq	-56(%rbp), %rax	# p, tmp230
	movl	%edx, 24(%rax)	# D.21924, p_4->balance
	jmp	.L1245	#
.L1259:
	.loc 1 5969 0
	movq	-56(%rbp), %rax	# p, tmp231
	movl	24(%rax), %eax	# p_4->balance, D.21924
	testl	%eax, %eax	# D.21924
	jle	.L1260	#,
	.loc 1 5971 0
	movq	-40(%rbp), %rax	# r, tmp232
	movl	24(%rax), %eax	# r_8->balance, D.21924
	testl	%eax, %eax	# D.21924
	jle	.L1261	#,
	.loc 1 5974 0
	movq	-40(%rbp), %rax	# r, tmp233
	movq	(%rax), %rdx	# r_8->left, D.21922
	movq	-56(%rbp), %rax	# p, tmp234
	movq	%rdx, 8(%rax)	# D.21922, p_4->right
	.loc 1 5975 0
	movq	-56(%rbp), %rax	# p, tmp235
	movq	8(%rax), %rax	# p_4->right, D.21922
	testq	%rax, %rax	# D.21922
	je	.L1262	#,
	.loc 1 5976 0
	movq	-56(%rbp), %rax	# p, tmp236
	movq	8(%rax), %rax	# p_4->right, D.21922
	movq	-56(%rbp), %rdx	# p, tmp237
	movq	%rdx, 16(%rax)	# tmp237, _71->parent
.L1262:
	.loc 1 5977 0
	movq	-40(%rbp), %rax	# r, tmp238
	movq	-56(%rbp), %rdx	# p, tmp239
	movq	%rdx, (%rax)	# tmp239, r_8->left
	.loc 1 5979 0
	movq	-56(%rbp), %rax	# p, tmp240
	movl	$0, 24(%rax)	#, p_4->balance
	.loc 1 5980 0
	movq	-40(%rbp), %rax	# r, tmp241
	movl	$0, 24(%rax)	#, r_8->balance
	.loc 1 5982 0
	movq	-56(%rbp), %rax	# p, tmp242
	movq	16(%rax), %rax	# p_4->parent, tmp243
	movq	%rax, -24(%rbp)	# tmp243, s
	.loc 1 5983 0
	movq	-56(%rbp), %rax	# p, tmp244
	movq	-40(%rbp), %rdx	# r, tmp245
	movq	%rdx, 16(%rax)	# tmp245, p_4->parent
	.loc 1 5984 0
	movq	-40(%rbp), %rax	# r, tmp246
	movq	-24(%rbp), %rdx	# s, tmp247
	movq	%rdx, 16(%rax)	# tmp247, r_8->parent
	.loc 1 5985 0
	cmpq	$0, -24(%rbp)	#, s
	je	.L1263	#,
	.loc 1 5987 0
	movq	-24(%rbp), %rax	# s, tmp248
	movq	(%rax), %rax	# s_72->left, D.21922
	cmpq	-56(%rbp), %rax	# p, D.21922
	jne	.L1264	#,
	.loc 1 5988 0
	movq	-24(%rbp), %rax	# s, tmp249
	movq	-40(%rbp), %rdx	# r, tmp250
	movq	%rdx, (%rax)	# tmp250, s_72->left
	jmp	.L1267	#
.L1264:
	.loc 1 5990 0
	movq	-24(%rbp), %rax	# s, tmp251
	movq	-40(%rbp), %rdx	# r, tmp252
	movq	%rdx, 8(%rax)	# tmp252, s_72->right
	jmp	.L1267	#
.L1263:
	.loc 1 5993 0
	movq	-40(%rbp), %rax	# r, tmp253
	movq	%rax, constructor_pending_elts(%rip)	# tmp253, constructor_pending_elts
	.loc 1 6028 0
	jmp	.L1228	#
.L1261:
.LBB71:
	.loc 1 5998 0
	movq	-40(%rbp), %rax	# r, tmp254
	movq	(%rax), %rax	# r_8->left, tmp255
	movq	%rax, -8(%rbp)	# tmp255, t
	.loc 1 6000 0
	movq	-8(%rbp), %rax	# t, tmp256
	movq	8(%rax), %rdx	# t_74->right, D.21922
	movq	-40(%rbp), %rax	# r, tmp257
	movq	%rdx, (%rax)	# D.21922, r_8->left
	.loc 1 6001 0
	movq	-40(%rbp), %rax	# r, tmp258
	movq	(%rax), %rax	# r_8->left, D.21922
	testq	%rax, %rax	# D.21922
	je	.L1268	#,
	.loc 1 6002 0
	movq	-40(%rbp), %rax	# r, tmp259
	movq	(%rax), %rax	# r_8->left, D.21922
	movq	-40(%rbp), %rdx	# r, tmp260
	movq	%rdx, 16(%rax)	# tmp260, _77->parent
.L1268:
	.loc 1 6003 0
	movq	-8(%rbp), %rax	# t, tmp261
	movq	-40(%rbp), %rdx	# r, tmp262
	movq	%rdx, 8(%rax)	# tmp262, t_74->right
	.loc 1 6005 0
	movq	-8(%rbp), %rax	# t, tmp263
	movq	(%rax), %rdx	# t_74->left, D.21922
	movq	-56(%rbp), %rax	# p, tmp264
	movq	%rdx, 8(%rax)	# D.21922, p_4->right
	.loc 1 6006 0
	movq	-56(%rbp), %rax	# p, tmp265
	movq	8(%rax), %rax	# p_4->right, D.21922
	testq	%rax, %rax	# D.21922
	je	.L1269	#,
	.loc 1 6007 0
	movq	-56(%rbp), %rax	# p, tmp266
	movq	8(%rax), %rax	# p_4->right, D.21922
	movq	-56(%rbp), %rdx	# p, tmp267
	movq	%rdx, 16(%rax)	# tmp267, _80->parent
.L1269:
	.loc 1 6008 0
	movq	-8(%rbp), %rax	# t, tmp268
	movq	-56(%rbp), %rdx	# p, tmp269
	movq	%rdx, (%rax)	# tmp269, t_74->left
	.loc 1 6010 0
	movq	-8(%rbp), %rax	# t, tmp270
	movl	24(%rax), %eax	# t_74->balance, D.21924
	shrl	$31, %eax	#, tmp271
	movzbl	%al, %edx	# D.21925, D.21924
	movq	-40(%rbp), %rax	# r, tmp272
	movl	%edx, 24(%rax)	# D.21924, r_8->balance
	.loc 1 6011 0
	movq	-8(%rbp), %rax	# t, tmp273
	movl	24(%rax), %eax	# t_74->balance, D.21924
	testl	%eax, %eax	# D.21924
	setg	%al	#, D.21925
	movzbl	%al, %eax	# D.21925, D.21924
	negl	%eax	# D.21924
	movl	%eax, %edx	# D.21924, D.21924
	movq	-56(%rbp), %rax	# p, tmp274
	movl	%edx, 24(%rax)	# D.21924, p_4->balance
	.loc 1 6012 0
	movq	-8(%rbp), %rax	# t, tmp275
	movl	$0, 24(%rax)	#, t_74->balance
	.loc 1 6014 0
	movq	-56(%rbp), %rax	# p, tmp276
	movq	16(%rax), %rax	# p_4->parent, tmp277
	movq	%rax, -24(%rbp)	# tmp277, s
	.loc 1 6015 0
	movq	-56(%rbp), %rax	# p, tmp278
	movq	-8(%rbp), %rdx	# t, tmp279
	movq	%rdx, 16(%rax)	# tmp279, p_4->parent
	.loc 1 6016 0
	movq	-40(%rbp), %rax	# r, tmp280
	movq	-8(%rbp), %rdx	# t, tmp281
	movq	%rdx, 16(%rax)	# tmp281, r_8->parent
	.loc 1 6017 0
	movq	-8(%rbp), %rax	# t, tmp282
	movq	-24(%rbp), %rdx	# s, tmp283
	movq	%rdx, 16(%rax)	# tmp283, t_74->parent
	.loc 1 6018 0
	cmpq	$0, -24(%rbp)	#, s
	je	.L1270	#,
	.loc 1 6020 0
	movq	-24(%rbp), %rax	# s, tmp284
	movq	(%rax), %rax	# s_88->left, D.21922
	cmpq	-56(%rbp), %rax	# p, D.21922
	jne	.L1271	#,
	.loc 1 6021 0
	movq	-24(%rbp), %rax	# s, tmp285
	movq	-8(%rbp), %rdx	# t, tmp286
	movq	%rdx, (%rax)	# tmp286, s_88->left
	jmp	.L1267	#
.L1271:
	.loc 1 6023 0
	movq	-24(%rbp), %rax	# s, tmp287
	movq	-8(%rbp), %rdx	# t, tmp288
	movq	%rdx, 8(%rax)	# tmp288, s_88->right
.LBE71:
	.loc 1 6028 0
	jmp	.L1228	#
.L1270:
.LBB72:
	.loc 1 6026 0
	movq	-8(%rbp), %rax	# t, tmp289
	movq	%rax, constructor_pending_elts(%rip)	# tmp289, constructor_pending_elts
.LBE72:
	.loc 1 6028 0
	jmp	.L1228	#
.L1267:
	jmp	.L1228	#
.L1260:
	.loc 1 6033 0
	movq	-56(%rbp), %rax	# p, tmp290
	movl	$0, 24(%rax)	#, p_4->balance
	.loc 1 6034 0
	jmp	.L1228	#
.L1245:
	.loc 1 6038 0
	movq	-56(%rbp), %rax	# p, tmp291
	movq	%rax, -40(%rbp)	# tmp291, r
	.loc 1 6039 0
	movq	-56(%rbp), %rax	# p, tmp292
	movq	16(%rax), %rax	# p_4->parent, tmp293
	movq	%rax, -56(%rbp)	# tmp293, p
.L1242:
.LBE68:
	.loc 1 5888 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, p
	jne	.L1273	#,
.L1228:
	.loc 1 6041 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	add_pending_init, .-add_pending_init
	.type	set_nonincremental_init, @function
set_nonincremental_init:
.LFB64:
	.loc 1 6047 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 6050 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.550
	movzbl	16(%rax), %eax	# constructor_type.550_2->common.code, D.21927
	cmpb	$20, %al	#, D.21927
	je	.L1275	#,
	.loc 1 6051 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.551
	movzbl	16(%rax), %eax	# constructor_type.551_4->common.code, D.21927
	cmpb	$18, %al	#, D.21927
	je	.L1275	#,
	.loc 1 6052 0
	jmp	.L1274	#
.L1275:
	.loc 1 6054 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, tmp87
	movq	%rax, -8(%rbp)	# tmp87, chain
	jmp	.L1277	#
.L1278:
	.loc 1 6055 0 discriminator 2
	movq	-8(%rbp), %rax	# chain, tmp88
	movq	32(%rax), %rdx	# chain_1->list.value, D.21928
	movq	-8(%rbp), %rax	# chain, tmp89
	movq	24(%rax), %rax	# chain_1->list.purpose, D.21928
	movq	%rdx, %rsi	# D.21928,
	movq	%rax, %rdi	# D.21928,
	call	add_pending_init	#
	.loc 1 6054 0 discriminator 2
	movq	-8(%rbp), %rax	# chain, tmp90
	movq	(%rax), %rax	# chain_1->common.chain, tmp91
	movq	%rax, -8(%rbp)	# tmp91, chain
.L1277:
	.loc 1 6054 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, chain
	jne	.L1278	#,
	.loc 1 6056 0 is_stmt 1
	movq	$0, constructor_elements(%rip)	#, constructor_elements
	.loc 1 6057 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.552
	movzbl	16(%rax), %eax	# constructor_type.552_10->common.code, D.21927
	cmpb	$20, %al	#, D.21927
	jne	.L1279	#,
	.loc 1 6059 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.553
	movq	24(%rax), %rax	# constructor_type.553_12->type.values, constructor_unfilled_fields.554
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_unfilled_fields.554, constructor_unfilled_fields
	.loc 1 6061 0
	jmp	.L1280	#
.L1282:
	.loc 1 6064 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.555
	movq	(%rax), %rax	# constructor_unfilled_fields.555_20->common.chain, constructor_unfilled_fields.556
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_unfilled_fields.556, constructor_unfilled_fields
.L1280:
	.loc 1 6061 0 discriminator 1
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.557
	testq	%rax, %rax	# constructor_unfilled_fields.557
	je	.L1281	#,
	.loc 1 6062 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.558
	movzbl	53(%rax), %eax	# *constructor_unfilled_fields.558_15, D.21927
	andl	$2, %eax	#, D.21927
	testb	%al, %al	# D.21927
	je	.L1281	#,
	.loc 1 6063 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.559
	movq	72(%rax), %rax	# constructor_unfilled_fields.559_18->decl.name, D.21928
	testq	%rax, %rax	# D.21928
	je	.L1282	#,
	jmp	.L1281	#
.L1279:
	.loc 1 6067 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.560
	movzbl	16(%rax), %eax	# constructor_type.560_22->common.code, D.21927
	cmpb	$18, %al	#, D.21927
	jne	.L1281	#,
	.loc 1 6069 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.561
	movq	24(%rax), %rax	# constructor_type.561_24->type.values, D.21928
	testq	%rax, %rax	# D.21928
	je	.L1283	#,
	.loc 1 6072 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.562
	movq	24(%rax), %rax	# constructor_type.562_26->type.values, D.21928
	.loc 1 6071 0
	movq	104(%rax), %rdx	# _27->type.minval, D.21928
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.21928
	movq	%rdx, %rsi	# D.21928,
	movq	%rax, %rdi	# D.21928,
	call	convert	#
	movq	%rax, constructor_unfilled_index(%rip)	# constructor_unfilled_index.563, constructor_unfilled_index
	jmp	.L1281	#
.L1283:
	.loc 1 6074 0
	movq	global_trees+136(%rip), %rax	# global_trees, constructor_unfilled_index.564
	movq	%rax, constructor_unfilled_index(%rip)	# constructor_unfilled_index.564, constructor_unfilled_index
.L1281:
	.loc 1 6076 0
	movl	$0, constructor_incremental(%rip)	#, constructor_incremental
.L1274:
	.loc 1 6077 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	set_nonincremental_init, .-set_nonincremental_init
	.type	set_nonincremental_init_from_string, @function
set_nonincremental_init_from_string:
.LFB65:
	.loc 1 6084 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# str, str
	.loc 1 6090 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.565
	movzbl	16(%rax), %eax	# constructor_type.565_7->common.code, D.21929
	cmpb	$18, %al	#, D.21929
	je	.L1285	#,
	.loc 1 6091 0
	movl	$__FUNCTION__.14657, %edx	#,
	movl	$6091, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L1285:
	.loc 1 6093 0
	movq	-88(%rbp), %rax	# str, tmp123
	movq	8(%rax), %rax	# str_9(D)->common.type, D.21930
	movq	8(%rax), %rax	# _10->common.type, D.21930
	movzwl	60(%rax), %eax	# *_11, tmp126
	andw	$511, %ax	#, D.21931
	movl	%eax, %edx	# D.21931, D.21931
	.loc 1 6094 0
	movq	integer_types(%rip), %rax	# integer_types, D.21930
	movzwl	60(%rax), %eax	# *_13, tmp129
	andw	$511, %ax	#, D.21931
	.loc 1 6093 0
	cmpw	%ax, %dx	# D.21931, D.21931
	jne	.L1286	#,
	.loc 1 6095 0
	movl	$1, -68(%rbp)	#, wchar_bytes
	jmp	.L1287	#
.L1286:
	.loc 1 6096 0
	movq	-88(%rbp), %rax	# str, tmp130
	movq	8(%rax), %rax	# str_9(D)->common.type, D.21930
	movq	8(%rax), %rax	# _16->common.type, D.21930
	movzwl	60(%rax), %eax	# *_17, tmp133
	andw	$511, %ax	#, D.21931
	movl	%eax, %edx	# D.21931, D.21931
	.loc 1 6097 0
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.21930
	movzwl	60(%rax), %eax	# *_19, tmp136
	andw	$511, %ax	#, D.21931
	.loc 1 6096 0
	cmpw	%ax, %dx	# D.21931, D.21931
	jne	.L1288	#,
	.loc 1 6098 0
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.21930
	movzwl	60(%rax), %eax	# *_21, tmp139
	andw	$511, %ax	#, D.21931
	movzwl	%ax, %eax	# D.21931, D.21932
	leal	7(%rax), %edx	#, tmp141
	testl	%eax, %eax	# tmp140
	cmovs	%edx, %eax	# tmp141,, tmp140
	sarl	$3, %eax	#, tmp142
	movl	%eax, -68(%rbp)	# tmp142, wchar_bytes
	jmp	.L1287	#
.L1288:
	.loc 1 6100 0
	movl	$__FUNCTION__.14657, %edx	#,
	movl	$6100, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L1287:
	.loc 1 6102 0
	movq	integer_types(%rip), %rax	# integer_types, D.21930
	movzwl	60(%rax), %eax	# *_25, tmp145
	andw	$511, %ax	#, D.21931
	movzwl	%ax, %eax	# D.21931, tmp146
	movl	%eax, -64(%rbp)	# tmp146, charwidth
	.loc 1 6103 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.566
	movq	8(%rax), %rax	# constructor_type.566_28->common.type, tmp147
	movq	%rax, -40(%rbp)	# tmp147, type
	.loc 1 6104 0
	movq	-88(%rbp), %rax	# str, tmp148
	movq	40(%rax), %rax	# str_9(D)->string.pointer, tmp149
	movq	%rax, -48(%rbp)	# tmp149, p
	.loc 1 6105 0
	movq	-88(%rbp), %rax	# str, tmp150
	movl	32(%rax), %eax	# str_9(D)->string.length, D.21932
	movslq	%eax, %rdx	# D.21932, D.21933
	movq	-48(%rbp), %rax	# p, tmp154
	addq	%rdx, %rax	# D.21933, tmp153
	movq	%rax, -32(%rbp)	# tmp153, end
	.loc 1 6107 0
	movq	global_trees+136(%rip), %rax	# global_trees, tmp155
	movq	%rax, -56(%rbp)	# tmp155, purpose
	jmp	.L1289	#
.L1300:
	.loc 1 6111 0
	cmpl	$1, -68(%rbp)	#, wchar_bytes
	jne	.L1290	#,
	.loc 1 6113 0
	movq	-48(%rbp), %rax	# p, p.567
	leaq	1(%rax), %rdx	#, tmp156
	movq	%rdx, -48(%rbp)	# tmp156, p
	movzbl	(%rax), %eax	# *p.567_37, D.21934
	movzbl	%al, %eax	# D.21929, D.21935
	movq	%rax, -8(%rbp)	# D.21935, val
	.loc 1 6114 0
	movq	$0, -16(%rbp)	#, val
	jmp	.L1291	#
.L1290:
	.loc 1 6118 0
	movq	$0, -16(%rbp)	#, val
	.loc 1 6119 0
	movq	$0, -8(%rbp)	#, val
	.loc 1 6120 0
	movl	$0, -72(%rbp)	#, byte
	jmp	.L1292	#
.L1293:
	.loc 1 6125 0
	movl	-72(%rbp), %eax	# byte, tmp158
	imull	-64(%rbp), %eax	# charwidth, tmp157
	movl	%eax, -60(%rbp)	# tmp157, bitpos
	.loc 1 6126 0
	cmpl	$63, -60(%rbp)	#, bitpos
	setle	%al	#, D.21936
	movzbl	%al, %esi	# D.21936, D.21932
	cmpl	$63, -60(%rbp)	#, bitpos
	setle	%al	#, D.21936
	movzbl	%al, %eax	# D.21936, D.21932
	.loc 1 6127 0
	cltq
	movq	-16(%rbp,%rax,8), %rax	# val, D.21935
	movq	%rax, %rdi	# D.21935, D.21937
	movq	-48(%rbp), %rax	# p, p.568
	leaq	1(%rax), %rdx	#, tmp160
	movq	%rdx, -48(%rbp)	# tmp160, p
	movzbl	(%rax), %eax	# *p.568_50, D.21934
	movzbl	%al, %r8d	# D.21929, D.21937
	.loc 1 6128 0
	movl	-60(%rbp), %eax	# bitpos, tmp161
	cltd
	shrl	$26, %edx	#, tmp163
	addl	%edx, %eax	# tmp163, tmp164
	andl	$63, %eax	#, tmp165
	subl	%edx, %eax	# tmp163, tmp166
	movl	%eax, %ecx	# D.21932, tmp190
	salq	%cl, %r8	# tmp190, D.21937
	movq	%r8, %rax	# D.21937, D.21937
	.loc 1 6127 0
	orq	%rdi, %rax	# D.21937, D.21937
	movq	%rax, %rdx	# D.21937, D.21935
	movslq	%esi, %rax	# D.21932, tmp167
	movq	%rdx, -16(%rbp,%rax,8)	# D.21935, val
	.loc 1 6120 0
	addl	$1, -72(%rbp)	#, byte
.L1292:
	.loc 1 6120 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# byte, tmp168
	cmpl	-68(%rbp), %eax	# wchar_bytes, tmp168
	jl	.L1293	#,
.L1291:
	.loc 1 6132 0 is_stmt 1
	movq	-40(%rbp), %rax	# type, tmp169
	movzbl	17(%rax), %eax	# *type_29, D.21929
	andl	$32, %eax	#, D.21929
	testb	%al, %al	# D.21929
	jne	.L1294	#,
	.loc 1 6134 0
	movl	-68(%rbp), %eax	# wchar_bytes, tmp170
	subl	$1, %eax	#, D.21932
	imull	-64(%rbp), %eax	# charwidth, D.21932
	addl	$8, %eax	#, tmp171
	movl	%eax, -60(%rbp)	# tmp171, bitpos
	.loc 1 6135 0
	cmpl	$63, -60(%rbp)	#, bitpos
	jg	.L1295	#,
	.loc 1 6137 0
	movq	-8(%rbp), %rdx	# val, D.21935
	movl	-60(%rbp), %eax	# bitpos, tmp172
	subl	$1, %eax	#, D.21932
	movl	%eax, %ecx	# D.21932, tmp192
	sarq	%cl, %rdx	# tmp192, D.21935
	movq	%rdx, %rax	# D.21935, D.21935
	andl	$1, %eax	#, D.21935
	testq	%rax, %rax	# D.21935
	je	.L1294	#,
	.loc 1 6139 0
	movq	-8(%rbp), %rdx	# val, D.21935
	movl	-60(%rbp), %eax	# bitpos, tmp173
	movq	$-1, %rsi	#, tmp174
	movl	%eax, %ecx	# tmp173, tmp194
	salq	%cl, %rsi	# tmp194, D.21935
	movq	%rsi, %rax	# D.21935, D.21935
	orq	%rdx, %rax	# D.21935, D.21935
	movq	%rax, -8(%rbp)	# D.21935, val
	.loc 1 6140 0
	movq	$-1, -16(%rbp)	#, val
	jmp	.L1294	#
.L1295:
	.loc 1 6143 0
	cmpl	$64, -60(%rbp)	#, bitpos
	jne	.L1297	#,
	.loc 1 6145 0
	movq	-8(%rbp), %rax	# val, D.21935
	testq	%rax, %rax	# D.21935
	jns	.L1294	#,
	.loc 1 6146 0
	movq	$-1, -16(%rbp)	#, val
	jmp	.L1294	#
.L1297:
	.loc 1 6148 0
	movq	-16(%rbp), %rdx	# val, D.21935
	.loc 1 6149 0
	movl	-60(%rbp), %eax	# bitpos, tmp175
	subl	$65, %eax	#, D.21932
	.loc 1 6148 0
	movl	%eax, %ecx	# D.21932, tmp196
	sarq	%cl, %rdx	# tmp196, D.21935
	movq	%rdx, %rax	# D.21935, D.21935
	andl	$1, %eax	#, D.21935
	testq	%rax, %rax	# D.21935
	je	.L1294	#,
	.loc 1 6150 0
	movq	-16(%rbp), %rax	# val, D.21935
	.loc 1 6151 0
	movl	-60(%rbp), %edx	# bitpos, tmp176
	subl	$64, %edx	#, D.21932
	movq	$-1, %rsi	#, tmp177
	movl	%edx, %ecx	# D.21932, tmp198
	salq	%cl, %rsi	# tmp198, D.21935
	movq	%rsi, %rdx	# D.21935, D.21935
	.loc 1 6150 0
	orq	%rdx, %rax	# D.21935, D.21935
	movq	%rax, -16(%rbp)	# D.21935, val
.L1294:
	.loc 1 6154 0
	movq	-16(%rbp), %rdx	# val, D.21935
	movq	-8(%rbp), %rax	# val, D.21935
	movq	%rdx, %rsi	# D.21935,
	movq	%rax, %rdi	# D.21937,
	call	build_int_2_wide	#
	movq	%rax, -24(%rbp)	# tmp178, value
	.loc 1 6155 0
	movq	-24(%rbp), %rax	# value, tmp179
	movq	-40(%rbp), %rdx	# type, tmp180
	movq	%rdx, 8(%rax)	# tmp180, value_84->common.type
	.loc 1 6156 0
	movq	-24(%rbp), %rdx	# value, tmp181
	movq	-56(%rbp), %rax	# purpose, tmp182
	movq	%rdx, %rsi	# tmp181,
	movq	%rax, %rdi	# tmp182,
	call	add_pending_init	#
	.loc 1 6109 0
	movq	global_trees+144(%rip), %rdx	# global_trees, D.21930
	movq	-56(%rbp), %rax	# purpose, tmp183
	movq	%rax, %rsi	# tmp183,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	%rax, -56(%rbp)	# tmp184, purpose
.L1289:
	.loc 1 6107 0 discriminator 1
	movq	-48(%rbp), %rax	# p, tmp185
	cmpq	-32(%rbp), %rax	# end, tmp185
	jae	.L1299	#,
	.loc 1 6108 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.569
	movq	-56(%rbp), %rdx	# purpose, tmp186
	movq	%rdx, %rsi	# tmp186,
	movq	%rax, %rdi	# constructor_max_index.569,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21932
	je	.L1300	#,
.L1299:
	.loc 1 6159 0
	movl	$0, constructor_incremental(%rip)	#, constructor_incremental
	.loc 1 6160 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	set_nonincremental_init_from_string, .-set_nonincremental_init_from_string
	.type	find_init_member, @function
find_init_member:
.LFB66:
	.loc 1 6168 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# field, field
	.loc 1 6171 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.570
	movzbl	16(%rax), %eax	# constructor_type.570_4->common.code, D.21939
	cmpb	$18, %al	#, D.21939
	jne	.L1302	#,
	.loc 1 6173 0
	movl	constructor_incremental(%rip), %eax	# constructor_incremental, constructor_incremental.571
	testl	%eax, %eax	# constructor_incremental.571
	je	.L1303	#,
	.loc 1 6174 0
	movq	constructor_unfilled_index(%rip), %rdx	# constructor_unfilled_index, constructor_unfilled_index.572
	movq	-24(%rbp), %rax	# field, tmp87
	movq	%rdx, %rsi	# constructor_unfilled_index.572,
	movq	%rax, %rdi	# tmp87,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21940
	je	.L1303	#,
	.loc 1 6175 0
	call	set_nonincremental_init	#
.L1303:
	.loc 1 6177 0
	movq	constructor_pending_elts(%rip), %rax	# constructor_pending_elts, tmp88
	movq	%rax, -16(%rbp)	# tmp88, p
	.loc 1 6178 0
	jmp	.L1304	#
.L1308:
	.loc 1 6180 0
	movq	-16(%rbp), %rax	# p, tmp89
	movq	32(%rax), %rdx	# p_1->purpose, D.21941
	movq	-24(%rbp), %rax	# field, tmp90
	movq	%rdx, %rsi	# D.21941,
	movq	%rax, %rdi	# tmp90,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21940
	je	.L1305	#,
	.loc 1 6181 0
	movq	-16(%rbp), %rax	# p, tmp91
	movq	(%rax), %rax	# p_1->left, tmp92
	movq	%rax, -16(%rbp)	# tmp92, p
	jmp	.L1304	#
.L1305:
	.loc 1 6182 0
	movq	-16(%rbp), %rax	# p, tmp93
	movq	32(%rax), %rax	# p_1->purpose, D.21941
	movq	-24(%rbp), %rdx	# field, tmp94
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# D.21941,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21940
	je	.L1306	#,
	.loc 1 6183 0
	movq	-16(%rbp), %rax	# p, tmp95
	movq	8(%rax), %rax	# p_1->right, tmp96
	movq	%rax, -16(%rbp)	# tmp96, p
	jmp	.L1304	#
.L1306:
	.loc 1 6185 0
	movq	-16(%rbp), %rax	# p, tmp97
	movq	40(%rax), %rax	# p_1->value, D.21938
	jmp	.L1307	#
.L1304:
	.loc 1 6178 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L1308	#,
	jmp	.L1309	#
.L1302:
	.loc 1 6188 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.573
	movzbl	16(%rax), %eax	# constructor_type.573_18->common.code, D.21939
	cmpb	$20, %al	#, D.21939
	jne	.L1310	#,
.LBB73:
	.loc 1 6190 0
	movq	-24(%rbp), %rax	# field, tmp98
	movq	%rax, %rdi	# tmp98,
	call	bit_position	#
	movq	%rax, -8(%rbp)	# tmp99, bitpos
	.loc 1 6192 0
	movl	constructor_incremental(%rip), %eax	# constructor_incremental, constructor_incremental.574
	testl	%eax, %eax	# constructor_incremental.574
	je	.L1311	#,
	.loc 1 6193 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.575
	testq	%rax, %rax	# constructor_unfilled_fields.575
	je	.L1312	#,
	.loc 1 6194 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.576
	movq	%rax, %rdi	# constructor_unfilled_fields.576,
	call	bit_position	#
	movq	%rax, %rdx	#, D.21941
	movq	-8(%rbp), %rax	# bitpos, tmp100
	movq	%rdx, %rsi	# D.21941,
	movq	%rax, %rdi	# tmp100,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21940
	je	.L1311	#,
.L1312:
	.loc 1 6196 0
	call	set_nonincremental_init	#
.L1311:
	.loc 1 6198 0
	movq	constructor_pending_elts(%rip), %rax	# constructor_pending_elts, tmp101
	movq	%rax, -16(%rbp)	# tmp101, p
	.loc 1 6199 0
	jmp	.L1313	#
.L1316:
	.loc 1 6201 0
	movq	-16(%rbp), %rax	# p, tmp102
	movq	32(%rax), %rax	# p_2->purpose, D.21941
	cmpq	-24(%rbp), %rax	# field, D.21941
	jne	.L1314	#,
	.loc 1 6202 0
	movq	-16(%rbp), %rax	# p, tmp103
	movq	40(%rax), %rax	# p_2->value, D.21938
	jmp	.L1307	#
.L1314:
	.loc 1 6203 0
	movq	-16(%rbp), %rax	# p, tmp104
	movq	32(%rax), %rax	# p_2->purpose, D.21941
	movq	%rax, %rdi	# D.21941,
	call	bit_position	#
	movq	%rax, %rdx	#, D.21941
	movq	-8(%rbp), %rax	# bitpos, tmp105
	movq	%rdx, %rsi	# D.21941,
	movq	%rax, %rdi	# tmp105,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21940
	je	.L1315	#,
	.loc 1 6204 0
	movq	-16(%rbp), %rax	# p, tmp106
	movq	(%rax), %rax	# p_2->left, tmp107
	movq	%rax, -16(%rbp)	# tmp107, p
	jmp	.L1313	#
.L1315:
	.loc 1 6206 0
	movq	-16(%rbp), %rax	# p, tmp108
	movq	8(%rax), %rax	# p_2->right, tmp109
	movq	%rax, -16(%rbp)	# tmp109, p
.L1313:
	.loc 1 6199 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L1316	#,
.LBE73:
	jmp	.L1309	#
.L1310:
	.loc 1 6209 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.577
	movzbl	16(%rax), %eax	# constructor_type.577_34->common.code, D.21939
	cmpb	$21, %al	#, D.21939
	jne	.L1309	#,
	.loc 1 6211 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.578
	testq	%rax, %rax	# constructor_elements.578
	je	.L1309	#,
	.loc 1 6212 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.579
	movq	24(%rax), %rax	# constructor_elements.579_37->list.purpose, D.21941
	cmpq	-24(%rbp), %rax	# field, D.21941
	jne	.L1309	#,
	.loc 1 6213 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.580
	movq	32(%rax), %rax	# constructor_elements.580_39->list.value, D.21938
	jmp	.L1307	#
.L1309:
	.loc 1 6215 0
	movl	$0, %eax	#, D.21938
.L1307:
	.loc 1 6216 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	find_init_member, .-find_init_member
	.type	output_init_element, @function
output_init_element:
.LFB67:
	.loc 1 6232 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# value, value
	movq	%rsi, -48(%rbp)	# type, type
	movq	%rdx, -56(%rbp)	# field, field
	movl	%ecx, -60(%rbp)	# pending, pending
	.loc 1 6233 0
	movq	-40(%rbp), %rax	# value, tmp151
	movq	8(%rax), %rax	# value_5(D)->common.type, D.21942
	movzbl	16(%rax), %eax	# _6->common.code, D.21943
	cmpb	$23, %al	#, D.21943
	je	.L1318	#,
	.loc 1 6234 0
	movq	-40(%rbp), %rax	# value, tmp152
	movq	8(%rax), %rax	# value_5(D)->common.type, D.21942
	movzbl	16(%rax), %eax	# _8->common.code, D.21943
	cmpb	$18, %al	#, D.21943
	jne	.L1319	#,
	.loc 1 6235 0
	movq	-40(%rbp), %rax	# value, tmp153
	movzbl	16(%rax), %eax	# value_5(D)->common.code, D.21943
	cmpb	$29, %al	#, D.21943
	jne	.L1320	#,
	.loc 1 6236 0
	movq	-48(%rbp), %rax	# type, tmp154
	movzbl	16(%rax), %eax	# type_11(D)->common.code, D.21943
	cmpb	$18, %al	#, D.21943
	jne	.L1320	#,
	.loc 1 6237 0
	movq	-48(%rbp), %rax	# type, tmp155
	movq	8(%rax), %rax	# type_11(D)->common.type, D.21942
	movzbl	16(%rax), %eax	# _13->common.code, D.21943
	.loc 1 6235 0
	cmpb	$6, %al	#, D.21943
	je	.L1319	#,
.L1320:
	.loc 1 6238 0
	movq	-48(%rbp), %rax	# type, tmp156
	movq	128(%rax), %rdx	# type_11(D)->type.main_variant, D.21942
	movq	-40(%rbp), %rax	# value, tmp157
	movq	8(%rax), %rax	# value_5(D)->common.type, D.21942
	movq	128(%rax), %rax	# _16->type.main_variant, D.21942
	movq	%rdx, %rsi	# D.21942,
	movq	%rax, %rdi	# D.21942,
	call	comptypes	#
	testl	%eax, %eax	# D.21944
	jne	.L1319	#,
.L1318:
	.loc 1 6240 0
	movq	-40(%rbp), %rax	# value, tmp158
	movq	%rax, %rdi	# tmp158,
	call	default_conversion	#
	movq	%rax, -40(%rbp)	# tmp159, value
.L1319:
	.loc 1 6242 0
	movq	-40(%rbp), %rax	# value, tmp160
	movzbl	16(%rax), %eax	# value_1->common.code, D.21943
	cmpb	$-86, %al	#, D.21943
	jne	.L1321	#,
	.loc 1 6243 0
	movl	require_constant_value(%rip), %eax	# require_constant_value, require_constant_value.581
	testl	%eax, %eax	# require_constant_value.581
	je	.L1321	#,
	.loc 1 6243 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.582
	testl	%eax, %eax	# flag_isoc99.582
	jne	.L1321	#,
	cmpl	$0, -60(%rbp)	#, pending
	je	.L1321	#,
.LBB74:
	.loc 1 6248 0 is_stmt 1
	movq	-40(%rbp), %rax	# value, tmp161
	movq	32(%rax), %rax	# value_1->exp.operands, D.21942
	movq	32(%rax), %rax	# _24->exp.operands, tmp162
	movq	%rax, -24(%rbp)	# tmp162, decl
	.loc 1 6249 0
	movq	-24(%rbp), %rax	# decl, tmp163
	movq	104(%rax), %rax	# decl_25->decl.initial, tmp164
	movq	%rax, -40(%rbp)	# tmp164, value
.L1321:
.LBE74:
	.loc 1 6252 0
	movq	global_trees(%rip), %rax	# global_trees, D.21942
	cmpq	-40(%rbp), %rax	# value, D.21942
	jne	.L1322	#,
	.loc 1 6253 0
	movl	$1, constructor_erroneous(%rip)	#, constructor_erroneous
	jmp	.L1323	#
.L1322:
	.loc 1 6254 0
	movq	-40(%rbp), %rax	# value, tmp165
	movzbl	17(%rax), %eax	# *value_2, D.21943
	andl	$2, %eax	#, D.21943
	testb	%al, %al	# D.21943
	jne	.L1324	#,
	.loc 1 6255 0
	movl	$0, constructor_constant(%rip)	#, constructor_constant
	jmp	.L1323	#
.L1324:
	.loc 1 6256 0
	movq	-40(%rbp), %rax	# value, tmp166
	movq	8(%rax), %rdx	# value_2->common.type, D.21942
	movq	-40(%rbp), %rax	# value, tmp167
	movq	%rdx, %rsi	# D.21942,
	movq	%rax, %rdi	# tmp167,
	call	initializer_constant_valid_p	#
	testq	%rax, %rax	# D.21942
	je	.L1325	#,
	.loc 1 6257 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.583
	movzbl	16(%rax), %eax	# constructor_type.583_32->common.code, D.21943
	cmpb	$20, %al	#, D.21943
	je	.L1326	#,
	.loc 1 6258 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.584
	movzbl	16(%rax), %eax	# constructor_type.584_34->common.code, D.21943
	cmpb	$21, %al	#, D.21943
	jne	.L1323	#,
.L1326:
	.loc 1 6259 0
	movq	-56(%rbp), %rax	# field, tmp168
	movzbl	53(%rax), %eax	# *field_36(D), D.21943
	andl	$2, %eax	#, D.21943
	testb	%al, %al	# D.21943
	je	.L1323	#,
	.loc 1 6260 0
	movq	-40(%rbp), %rax	# value, tmp169
	movzbl	16(%rax), %eax	# value_2->common.code, D.21943
	cmpb	$25, %al	#, D.21943
	je	.L1323	#,
.L1325:
	.loc 1 6261 0
	movl	$0, constructor_simple(%rip)	#, constructor_simple
.L1323:
	.loc 1 6263 0
	movl	require_constant_value(%rip), %eax	# require_constant_value, require_constant_value.585
	testl	%eax, %eax	# require_constant_value.585
	je	.L1327	#,
	.loc 1 6263 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# value, tmp170
	movzbl	17(%rax), %eax	# *value_2, D.21943
	andl	$2, %eax	#, D.21943
	testb	%al, %al	# D.21943
	jne	.L1327	#,
	.loc 1 6265 0 is_stmt 1
	movl	$.LC151, %edi	#,
	call	error_init	#
	.loc 1 6266 0
	movq	global_trees(%rip), %rax	# global_trees, tmp171
	movq	%rax, -40(%rbp)	# tmp171, value
	jmp	.L1328	#
.L1327:
	.loc 1 6268 0
	movl	require_constant_elements(%rip), %eax	# require_constant_elements, require_constant_elements.586
	testl	%eax, %eax	# require_constant_elements.586
	je	.L1328	#,
	.loc 1 6269 0
	movq	-40(%rbp), %rax	# value, tmp172
	movq	8(%rax), %rdx	# value_2->common.type, D.21942
	movq	-40(%rbp), %rax	# value, tmp173
	movq	%rdx, %rsi	# D.21942,
	movq	%rax, %rdi	# tmp173,
	call	initializer_constant_valid_p	#
	testq	%rax, %rax	# D.21942
	jne	.L1328	#,
	.loc 1 6270 0
	movl	$.LC153, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L1328:
	.loc 1 6274 0
	cmpq	$0, -56(%rbp)	#, field
	je	.L1329	#,
	.loc 1 6275 0
	movq	-56(%rbp), %rax	# field, tmp174
	movq	8(%rax), %rdx	# field_36(D)->common.type, D.21942
	movq	global_trees(%rip), %rax	# global_trees, D.21942
	cmpq	%rax, %rdx	# D.21942, D.21942
	je	.L1330	#,
	.loc 1 6276 0
	movq	-56(%rbp), %rax	# field, tmp175
	movq	8(%rax), %rax	# field_36(D)->common.type, D.21942
	movq	32(%rax), %rax	# _49->type.size, D.21942
	testq	%rax, %rax	# D.21942
	je	.L1329	#,
	.loc 1 6277 0
	movq	-56(%rbp), %rax	# field, tmp176
	movq	8(%rax), %rax	# field_36(D)->common.type, D.21942
	movq	32(%rax), %rax	# _51->type.size, D.21942
	movq	%rax, %rdi	# D.21942,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21944
	je	.L1329	#,
	.loc 1 6278 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.587
	movzbl	16(%rax), %eax	# constructor_type.587_54->common.code, D.21943
	cmpb	$18, %al	#, D.21943
	je	.L1330	#,
	.loc 1 6279 0
	movq	-56(%rbp), %rax	# field, tmp177
	movq	(%rax), %rax	# field_36(D)->common.chain, D.21942
	testq	%rax, %rax	# D.21942
	je	.L1329	#,
.L1330:
	.loc 1 6280 0
	jmp	.L1317	#
.L1329:
	.loc 1 6282 0
	movl	require_constant_elements(%rip), %ecx	# require_constant_elements, require_constant_elements.588
	movl	require_constant_value(%rip), %edx	# require_constant_value, require_constant_value.589
	movq	-40(%rbp), %rsi	# value, tmp178
	movq	-48(%rbp), %rax	# type, tmp179
	movq	%rax, %rdi	# tmp179,
	call	digest_init	#
	movq	%rax, -40(%rbp)	# tmp180, value
	.loc 1 6284 0
	movq	global_trees(%rip), %rax	# global_trees, D.21942
	cmpq	-40(%rbp), %rax	# value, D.21942
	jne	.L1332	#,
	.loc 1 6286 0
	movl	$1, constructor_erroneous(%rip)	#, constructor_erroneous
	.loc 1 6287 0
	jmp	.L1317	#
.L1332:
	.loc 1 6292 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.590
	movzbl	16(%rax), %eax	# constructor_type.590_61->common.code, D.21943
	cmpb	$18, %al	#, D.21943
	jne	.L1333	#,
	.loc 1 6293 0
	movl	constructor_incremental(%rip), %eax	# constructor_incremental, constructor_incremental.591
	testl	%eax, %eax	# constructor_incremental.591
	je	.L1334	#,
	.loc 1 6294 0
	movq	constructor_unfilled_index(%rip), %rdx	# constructor_unfilled_index, constructor_unfilled_index.592
	movq	-56(%rbp), %rax	# field, tmp181
	movq	%rdx, %rsi	# constructor_unfilled_index.592,
	movq	%rax, %rdi	# tmp181,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21944
	jne	.L1333	#,
.L1334:
	.loc 1 6296 0
	movl	constructor_incremental(%rip), %eax	# constructor_incremental, constructor_incremental.593
	testl	%eax, %eax	# constructor_incremental.593
	je	.L1335	#,
	.loc 1 6297 0
	movq	constructor_unfilled_index(%rip), %rdx	# constructor_unfilled_index, constructor_unfilled_index.594
	movq	-56(%rbp), %rax	# field, tmp182
	movq	%rdx, %rsi	# constructor_unfilled_index.594,
	movq	%rax, %rdi	# tmp182,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21944
	je	.L1335	#,
	.loc 1 6298 0
	call	set_nonincremental_init	#
.L1335:
	.loc 1 6300 0
	movq	-40(%rbp), %rdx	# value, tmp183
	movq	-56(%rbp), %rax	# field, tmp184
	movq	%rdx, %rsi	# tmp183,
	movq	%rax, %rdi	# tmp184,
	call	add_pending_init	#
	.loc 1 6301 0
	jmp	.L1317	#
.L1333:
	.loc 1 6303 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.595
	movzbl	16(%rax), %eax	# constructor_type.595_69->common.code, D.21943
	cmpb	$20, %al	#, D.21943
	jne	.L1336	#,
	.loc 1 6304 0
	movl	constructor_incremental(%rip), %eax	# constructor_incremental, constructor_incremental.596
	testl	%eax, %eax	# constructor_incremental.596
	je	.L1337	#,
	.loc 1 6305 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.597
	cmpq	%rax, -56(%rbp)	# constructor_unfilled_fields.597, field
	je	.L1336	#,
.L1337:
	.loc 1 6310 0
	movl	constructor_incremental(%rip), %eax	# constructor_incremental, constructor_incremental.598
	testl	%eax, %eax	# constructor_incremental.598
	je	.L1338	#,
	.loc 1 6312 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.599
	testq	%rax, %rax	# constructor_unfilled_fields.599
	jne	.L1339	#,
	.loc 1 6313 0
	call	set_nonincremental_init	#
	jmp	.L1338	#
.L1339:
.LBB75:
	.loc 1 6318 0
	movq	-56(%rbp), %rax	# field, tmp185
	movq	%rax, %rdi	# tmp185,
	call	bit_position	#
	movq	%rax, -16(%rbp)	# tmp186, bitpos
	.loc 1 6319 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.600
	movq	%rax, %rdi	# constructor_unfilled_fields.600,
	call	bit_position	#
	movq	%rax, -8(%rbp)	# tmp187, unfillpos
	.loc 1 6321 0
	movq	-8(%rbp), %rdx	# unfillpos, tmp188
	movq	-16(%rbp), %rax	# bitpos, tmp189
	movq	%rdx, %rsi	# tmp188,
	movq	%rax, %rdi	# tmp189,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21944
	je	.L1338	#,
	.loc 1 6322 0
	call	set_nonincremental_init	#
.L1338:
.LBE75:
	.loc 1 6326 0
	movq	-40(%rbp), %rdx	# value, tmp190
	movq	-56(%rbp), %rax	# field, tmp191
	movq	%rdx, %rsi	# tmp190,
	movq	%rax, %rdi	# tmp191,
	call	add_pending_init	#
	.loc 1 6327 0
	jmp	.L1317	#
.L1336:
	.loc 1 6329 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.601
	movzbl	16(%rax), %eax	# constructor_type.601_79->common.code, D.21943
	cmpb	$21, %al	#, D.21943
	jne	.L1340	#,
	.loc 1 6330 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.602
	testq	%rax, %rax	# constructor_elements.602
	je	.L1340	#,
	.loc 1 6332 0
	movq	constructor_elements(%rip), %rax	# constructor_elements, constructor_elements.603
	movq	32(%rax), %rax	# constructor_elements.603_82->list.value, D.21942
	movzbl	17(%rax), %eax	# *_83, D.21943
	andl	$1, %eax	#, D.21943
	testb	%al, %al	# D.21943
	je	.L1341	#,
	.loc 1 6333 0
	movl	$.LC173, %edi	#,
	call	warning_init	#
.L1341:
	.loc 1 6336 0
	movq	$0, constructor_elements(%rip)	#, constructor_elements
.L1340:
	.loc 1 6342 0
	cmpq	$0, -56(%rbp)	#, field
	je	.L1342	#,
	.loc 1 6342 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# field, tmp192
	movzbl	16(%rax), %eax	# field_36(D)->common.code, D.21943
	cmpb	$25, %al	#, D.21943
	jne	.L1342	#,
	.loc 1 6343 0 is_stmt 1
	movq	-56(%rbp), %rax	# field, tmp193
	movq	%rax, %rdi	# tmp193,
	call	copy_node	#
	movq	%rax, -56(%rbp)	# tmp194, field
.L1342:
	.loc 1 6345 0
	movq	constructor_elements(%rip), %rdx	# constructor_elements, constructor_elements.604
	movq	-40(%rbp), %rcx	# value, tmp195
	movq	-56(%rbp), %rax	# field, tmp196
	movq	%rcx, %rsi	# tmp195,
	movq	%rax, %rdi	# tmp196,
	call	tree_cons	#
	movq	%rax, constructor_elements(%rip)	# constructor_elements.605, constructor_elements
	.loc 1 6348 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.606
	movzbl	16(%rax), %eax	# constructor_type.606_90->common.code, D.21943
	cmpb	$18, %al	#, D.21943
	jne	.L1343	#,
	.loc 1 6350 0
	movq	global_trees+144(%rip), %rdx	# global_trees, D.21942
	movq	constructor_unfilled_index(%rip), %rax	# constructor_unfilled_index, constructor_unfilled_index.607
	movq	%rax, %rsi	# constructor_unfilled_index.607,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	%rax, constructor_unfilled_index(%rip)	# constructor_unfilled_index.608, constructor_unfilled_index
	jmp	.L1344	#
.L1343:
	.loc 1 6352 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.609
	movzbl	16(%rax), %eax	# constructor_type.609_95->common.code, D.21943
	cmpb	$20, %al	#, D.21943
	jne	.L1345	#,
	.loc 1 6355 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.610
	movq	(%rax), %rax	# constructor_unfilled_fields.610_97->common.chain, constructor_unfilled_fields.611
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_unfilled_fields.611, constructor_unfilled_fields
	.loc 1 6358 0
	jmp	.L1346	#
.L1347:
	.loc 1 6362 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.612
	movq	(%rax), %rax	# constructor_unfilled_fields.612_105->common.chain, constructor_unfilled_fields.613
	.loc 1 6361 0
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_unfilled_fields.613, constructor_unfilled_fields
.L1346:
	.loc 1 6358 0 discriminator 1
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.614
	testq	%rax, %rax	# constructor_unfilled_fields.614
	je	.L1344	#,
	.loc 1 6359 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.615
	movzbl	53(%rax), %eax	# *constructor_unfilled_fields.615_100, D.21943
	andl	$2, %eax	#, D.21943
	testb	%al, %al	# D.21943
	je	.L1344	#,
	.loc 1 6360 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.616
	movq	72(%rax), %rax	# constructor_unfilled_fields.616_103->decl.name, D.21942
	testq	%rax, %rax	# D.21942
	je	.L1347	#,
	jmp	.L1344	#
.L1345:
	.loc 1 6364 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.617
	movzbl	16(%rax), %eax	# constructor_type.617_107->common.code, D.21943
	cmpb	$21, %al	#, D.21943
	jne	.L1344	#,
	.loc 1 6365 0
	movq	$0, constructor_unfilled_fields(%rip)	#, constructor_unfilled_fields
.L1344:
	.loc 1 6368 0
	cmpl	$0, -60(%rbp)	#, pending
	je	.L1317	#,
	.loc 1 6369 0
	movl	$0, %edi	#,
	call	output_pending_init_elements	#
.L1317:
	.loc 1 6370 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	output_init_element, .-output_init_element
	.type	output_pending_init_elements, @function
output_pending_init_elements:
.LFB68:
	.loc 1 6386 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# all, all
	.loc 1 6387 0
	movq	constructor_pending_elts(%rip), %rax	# constructor_pending_elts, tmp107
	movq	%rax, -32(%rbp)	# tmp107, elt
.L1349:
	.loc 1 6397 0
	movq	$0, -24(%rbp)	#, next
	.loc 1 6398 0
	jmp	.L1350	#
.L1369:
	.loc 1 6400 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.618
	movzbl	16(%rax), %eax	# constructor_type.618_9->common.code, D.21945
	cmpb	$18, %al	#, D.21945
	jne	.L1351	#,
	.loc 1 6402 0
	movq	constructor_unfilled_index(%rip), %rdx	# constructor_unfilled_index, constructor_unfilled_index.619
	movq	-32(%rbp), %rax	# elt, tmp108
	movq	32(%rax), %rax	# elt_4->purpose, D.21946
	movq	%rdx, %rsi	# constructor_unfilled_index.619,
	movq	%rax, %rdi	# D.21946,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21947
	je	.L1352	#,
	.loc 1 6404 0
	movq	constructor_unfilled_index(%rip), %rdx	# constructor_unfilled_index, constructor_unfilled_index.620
	.loc 1 6405 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.621
	.loc 1 6404 0
	movq	8(%rax), %rsi	# constructor_type.621_15->common.type, D.21946
	movq	-32(%rbp), %rax	# elt, tmp109
	movq	40(%rax), %rax	# elt_4->value, D.21946
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.21946,
	call	output_init_element	#
	jmp	.L1350	#
.L1352:
	.loc 1 6407 0
	movq	-32(%rbp), %rax	# elt, tmp110
	movq	32(%rax), %rdx	# elt_4->purpose, D.21946
	movq	constructor_unfilled_index(%rip), %rax	# constructor_unfilled_index, constructor_unfilled_index.622
	movq	%rdx, %rsi	# D.21946,
	movq	%rax, %rdi	# constructor_unfilled_index.622,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21947
	je	.L1353	#,
	.loc 1 6411 0
	movq	-32(%rbp), %rax	# elt, tmp111
	movq	(%rax), %rax	# elt_4->left, D.21948
	testq	%rax, %rax	# D.21948
	je	.L1354	#,
	.loc 1 6412 0
	movq	-32(%rbp), %rax	# elt, tmp112
	movq	(%rax), %rax	# elt_4->left, tmp113
	movq	%rax, -32(%rbp)	# tmp113, elt
	jmp	.L1350	#
.L1354:
	.loc 1 6417 0
	movq	-32(%rbp), %rax	# elt, tmp114
	movq	32(%rax), %rax	# elt_4->purpose, tmp115
	movq	%rax, -24(%rbp)	# tmp115, next
	.loc 1 6418 0
	jmp	.L1355	#
.L1353:
	.loc 1 6424 0
	movq	-32(%rbp), %rax	# elt, tmp116
	movq	8(%rax), %rax	# elt_4->right, D.21948
	testq	%rax, %rax	# D.21948
	je	.L1356	#,
	.loc 1 6425 0
	movq	-32(%rbp), %rax	# elt, tmp117
	movq	8(%rax), %rax	# elt_4->right, tmp118
	movq	%rax, -32(%rbp)	# tmp118, elt
	jmp	.L1350	#
.L1356:
	.loc 1 6430 0
	jmp	.L1357	#
.L1359:
	.loc 1 6431 0
	movq	-32(%rbp), %rax	# elt, tmp119
	movq	16(%rax), %rax	# elt_2->parent, tmp120
	movq	%rax, -32(%rbp)	# tmp120, elt
.L1357:
	.loc 1 6430 0 discriminator 1
	movq	-32(%rbp), %rax	# elt, tmp121
	movq	16(%rax), %rax	# elt_2->parent, D.21948
	testq	%rax, %rax	# D.21948
	je	.L1358	#,
	.loc 1 6430 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# elt, tmp122
	movq	16(%rax), %rax	# elt_2->parent, D.21948
	movq	8(%rax), %rax	# _27->right, D.21948
	cmpq	-32(%rbp), %rax	# elt, D.21948
	je	.L1359	#,
.L1358:
	.loc 1 6432 0 is_stmt 1
	movq	-32(%rbp), %rax	# elt, tmp123
	movq	16(%rax), %rax	# elt_2->parent, tmp124
	movq	%rax, -32(%rbp)	# tmp124, elt
	.loc 1 6433 0
	cmpq	$0, -32(%rbp)	#, elt
	je	.L1350	#,
	.loc 1 6433 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# elt, tmp125
	movq	32(%rax), %rdx	# elt_30->purpose, D.21946
	movq	constructor_unfilled_index(%rip), %rax	# constructor_unfilled_index, constructor_unfilled_index.623
	movq	%rdx, %rsi	# D.21946,
	movq	%rax, %rdi	# constructor_unfilled_index.623,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21947
	je	.L1350	#,
	.loc 1 6436 0 is_stmt 1
	movq	-32(%rbp), %rax	# elt, tmp126
	movq	32(%rax), %rax	# elt_30->purpose, tmp127
	movq	%rax, -24(%rbp)	# tmp127, next
	.loc 1 6437 0
	jmp	.L1355	#
.L1351:
	.loc 1 6442 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.624
	movzbl	16(%rax), %eax	# constructor_type.624_35->common.code, D.21945
	cmpb	$20, %al	#, D.21945
	je	.L1360	#,
	.loc 1 6443 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.625
	movzbl	16(%rax), %eax	# constructor_type.625_37->common.code, D.21945
	cmpb	$21, %al	#, D.21945
	jne	.L1350	#,
.L1360:
.LBB76:
	.loc 1 6448 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.626
	testq	%rax, %rax	# constructor_unfilled_fields.626
	jne	.L1361	#,
	.loc 1 6449 0
	jmp	.L1355	#
.L1361:
	.loc 1 6451 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.627
	movq	%rax, %rdi	# constructor_unfilled_fields.627,
	call	bit_position	#
	movq	%rax, -16(%rbp)	# tmp128, ctor_unfilled_bitpos
	.loc 1 6452 0
	movq	-32(%rbp), %rax	# elt, tmp129
	movq	32(%rax), %rax	# elt_4->purpose, D.21946
	movq	%rax, %rdi	# D.21946,
	call	bit_position	#
	movq	%rax, -8(%rbp)	# tmp130, elt_bitpos
	.loc 1 6455 0
	movq	-16(%rbp), %rdx	# ctor_unfilled_bitpos, tmp131
	movq	-8(%rbp), %rax	# elt_bitpos, tmp132
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21947
	je	.L1362	#,
	.loc 1 6457 0
	movq	-32(%rbp), %rax	# elt, tmp133
	movq	32(%rax), %rax	# elt_4->purpose, constructor_unfilled_fields.628
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_unfilled_fields.628, constructor_unfilled_fields
	.loc 1 6458 0
	movq	-32(%rbp), %rax	# elt, tmp134
	movq	32(%rax), %rdx	# elt_4->purpose, D.21946
	movq	-32(%rbp), %rax	# elt, tmp135
	movq	32(%rax), %rax	# elt_4->purpose, D.21946
	movq	8(%rax), %rsi	# _47->common.type, D.21946
	movq	-32(%rbp), %rax	# elt, tmp136
	movq	40(%rax), %rax	# elt_4->value, D.21946
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.21946,
	call	output_init_element	#
	jmp	.L1350	#
.L1362:
	.loc 1 6461 0
	movq	-8(%rbp), %rdx	# elt_bitpos, tmp137
	movq	-16(%rbp), %rax	# ctor_unfilled_bitpos, tmp138
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21947
	je	.L1363	#,
	.loc 1 6464 0
	movq	-32(%rbp), %rax	# elt, tmp139
	movq	(%rax), %rax	# elt_4->left, D.21948
	testq	%rax, %rax	# D.21948
	je	.L1364	#,
	.loc 1 6465 0
	movq	-32(%rbp), %rax	# elt, tmp140
	movq	(%rax), %rax	# elt_4->left, tmp141
	movq	%rax, -32(%rbp)	# tmp141, elt
	jmp	.L1350	#
.L1364:
	.loc 1 6470 0
	movq	-32(%rbp), %rax	# elt, tmp142
	movq	32(%rax), %rax	# elt_4->purpose, tmp143
	movq	%rax, -24(%rbp)	# tmp143, next
	.loc 1 6471 0
	jmp	.L1355	#
.L1363:
	.loc 1 6477 0
	movq	-32(%rbp), %rax	# elt, tmp144
	movq	8(%rax), %rax	# elt_4->right, D.21948
	testq	%rax, %rax	# D.21948
	je	.L1365	#,
	.loc 1 6478 0
	movq	-32(%rbp), %rax	# elt, tmp145
	movq	8(%rax), %rax	# elt_4->right, tmp146
	movq	%rax, -32(%rbp)	# tmp146, elt
	jmp	.L1350	#
.L1365:
	.loc 1 6483 0
	jmp	.L1366	#
.L1368:
	.loc 1 6484 0
	movq	-32(%rbp), %rax	# elt, tmp147
	movq	16(%rax), %rax	# elt_3->parent, tmp148
	movq	%rax, -32(%rbp)	# tmp148, elt
.L1366:
	.loc 1 6483 0 discriminator 1
	movq	-32(%rbp), %rax	# elt, tmp149
	movq	16(%rax), %rax	# elt_3->parent, D.21948
	testq	%rax, %rax	# D.21948
	je	.L1367	#,
	.loc 1 6483 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# elt, tmp150
	movq	16(%rax), %rax	# elt_3->parent, D.21948
	movq	8(%rax), %rax	# _57->right, D.21948
	cmpq	-32(%rbp), %rax	# elt, D.21948
	je	.L1368	#,
.L1367:
	.loc 1 6485 0 is_stmt 1
	movq	-32(%rbp), %rax	# elt, tmp151
	movq	16(%rax), %rax	# elt_3->parent, tmp152
	movq	%rax, -32(%rbp)	# tmp152, elt
	.loc 1 6486 0
	cmpq	$0, -32(%rbp)	#, elt
	je	.L1350	#,
	.loc 1 6487 0
	movq	-32(%rbp), %rax	# elt, tmp153
	movq	32(%rax), %rax	# elt_60->purpose, D.21946
	movq	%rax, %rdi	# D.21946,
	call	bit_position	#
	movq	%rax, %rdx	#, D.21946
	movq	-16(%rbp), %rax	# ctor_unfilled_bitpos, tmp154
	movq	%rdx, %rsi	# D.21946,
	movq	%rax, %rdi	# tmp154,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21947
	je	.L1350	#,
	.loc 1 6490 0
	movq	-32(%rbp), %rax	# elt, tmp155
	movq	32(%rax), %rax	# elt_60->purpose, tmp156
	movq	%rax, -24(%rbp)	# tmp156, next
	.loc 1 6491 0
	jmp	.L1355	#
.L1350:
.LBE76:
	.loc 1 6398 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, elt
	jne	.L1369	#,
.L1355:
	.loc 1 6500 0
	cmpl	$0, -36(%rbp)	#, all
	je	.L1370	#,
	.loc 1 6500 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, next
	jne	.L1371	#,
.L1370:
	.loc 1 6501 0 is_stmt 1
	jmp	.L1376	#
.L1371:
	.loc 1 6505 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.629
	movzbl	16(%rax), %eax	# constructor_type.629_66->common.code, D.21945
	cmpb	$20, %al	#, D.21945
	je	.L1373	#,
	.loc 1 6506 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.630
	movzbl	16(%rax), %eax	# constructor_type.630_68->common.code, D.21945
	cmpb	$21, %al	#, D.21945
	jne	.L1374	#,
.L1373:
	.loc 1 6507 0
	movq	-24(%rbp), %rax	# next, tmp157
	movq	%rax, constructor_unfilled_fields(%rip)	# tmp157, constructor_unfilled_fields
	jmp	.L1375	#
.L1374:
	.loc 1 6508 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.631
	movzbl	16(%rax), %eax	# constructor_type.631_70->common.code, D.21945
	cmpb	$18, %al	#, D.21945
	jne	.L1375	#,
	.loc 1 6509 0
	movq	-24(%rbp), %rax	# next, tmp158
	movq	%rax, constructor_unfilled_index(%rip)	# tmp158, constructor_unfilled_index
	.loc 1 6513 0
	jmp	.L1349	#
.L1375:
	jmp	.L1349	#
.L1376:
	.loc 1 6514 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	output_pending_init_elements, .-output_pending_init_elements
	.section	.rodata
	.align 8
.LC174:
	.string	"excess elements in char array initializer"
	.align 8
.LC175:
	.string	"excess elements in struct initializer"
	.align 8
.LC176:
	.string	"non-static initialization of a flexible array member"
	.align 8
.LC177:
	.string	"excess elements in union initializer"
	.align 8
.LC178:
	.string	"traditional C rejects initialization of unions"
	.align 8
.LC179:
	.string	"excess elements in array initializer"
	.align 8
.LC180:
	.string	"excess elements in vector initializer"
	.align 8
.LC181:
	.string	"excess elements in scalar initializer"
	.text
	.globl	process_init_element
	.type	process_init_element, @function
process_init_element:
.LFB69:
	.loc 1 6527 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# value, value
	.loc 1 6528 0
	movq	-104(%rbp), %rax	# value, tmp247
	movq	%rax, -48(%rbp)	# tmp247, orig_value
	.loc 1 6529 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1378	#,
	.loc 1 6529 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# value, tmp248
	movzbl	16(%rax), %eax	# value_14(D)->common.code, D.21949
	cmpb	$29, %al	#, D.21949
	jne	.L1378	#,
	.loc 1 6529 0 discriminator 3
	movl	$1, %eax	#, iftmp.632
	jmp	.L1379	#
.L1378:
	.loc 1 6529 0 discriminator 2
	movl	$0, %eax	#, iftmp.632
.L1379:
	.loc 1 6529 0 discriminator 4
	movl	%eax, -88(%rbp)	# iftmp.632, string_flag
	.loc 1 6531 0 is_stmt 1 discriminator 4
	movl	$0, designator_depth(%rip)	#, designator_depth
	.loc 1 6532 0 discriminator 4
	movl	$0, designator_errorneous(%rip)	#, designator_errorneous
	.loc 1 6536 0 discriminator 4
	cmpl	$0, -88(%rbp)	#, string_flag
	je	.L1380	#,
	.loc 1 6537 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.633
	testq	%rax, %rax	# constructor_type.633
	je	.L1380	#,
	.loc 1 6538 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.634
	movzbl	16(%rax), %eax	# constructor_type.634_21->common.code, D.21949
	cmpb	$18, %al	#, D.21949
	jne	.L1380	#,
	.loc 1 6539 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.635
	movq	8(%rax), %rax	# constructor_type.635_23->common.type, D.21950
	movzbl	16(%rax), %eax	# _24->common.code, D.21949
	cmpb	$6, %al	#, D.21949
	jne	.L1380	#,
	.loc 1 6540 0
	movq	constructor_unfilled_index(%rip), %rax	# constructor_unfilled_index, constructor_unfilled_index.636
	movq	%rax, %rdi	# constructor_unfilled_index.636,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21951
	je	.L1380	#,
	.loc 1 6542 0
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.637
	movq	88(%rax), %rax	# constructor_stack.637_28->replacement_value, D.21950
	testq	%rax, %rax	# D.21950
	je	.L1381	#,
	.loc 1 6543 0
	movl	$.LC174, %edi	#,
	call	error_init	#
.L1381:
	.loc 1 6544 0
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.638
	movq	-104(%rbp), %rdx	# value, tmp249
	movq	%rdx, 88(%rax)	# tmp249, constructor_stack.638_30->replacement_value
	.loc 1 6545 0
	jmp	.L1377	#
.L1380:
	.loc 1 6548 0
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.639
	movq	88(%rax), %rax	# constructor_stack.639_31->replacement_value, D.21950
	testq	%rax, %rax	# D.21950
	je	.L1383	#,
	.loc 1 6550 0
	movl	$.LC175, %edi	#,
	call	error_init	#
	.loc 1 6551 0
	jmp	.L1377	#
.L1383:
	.loc 1 6556 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.640
	testq	%rax, %rax	# constructor_type.640
	jne	.L1384	#,
	.loc 1 6557 0
	jmp	.L1377	#
.L1384:
	.loc 1 6561 0
	jmp	.L1385	#
.L1390:
	.loc 1 6563 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.641
	movzbl	16(%rax), %eax	# constructor_type.641_36->common.code, D.21949
	cmpb	$20, %al	#, D.21949
	je	.L1386	#,
	.loc 1 6564 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.642
	movzbl	16(%rax), %eax	# constructor_type.642_38->common.code, D.21949
	cmpb	$21, %al	#, D.21949
	jne	.L1387	#,
.L1386:
	.loc 1 6565 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.643
	testq	%rax, %rax	# constructor_fields.643
	jne	.L1387	#,
	.loc 1 6566 0
	movl	$1, %edi	#,
	call	pop_init_level	#
	movq	%rax, %rdi	# D.21950,
	call	process_init_element	#
	jmp	.L1385	#
.L1387:
	.loc 1 6567 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.644
	movzbl	16(%rax), %eax	# constructor_type.644_42->common.code, D.21949
	cmpb	$18, %al	#, D.21949
	jne	.L1388	#,
	.loc 1 6568 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.645
	testq	%rax, %rax	# constructor_max_index.645
	je	.L1389	#,
	.loc 1 6569 0
	movq	constructor_index(%rip), %rdx	# constructor_index, constructor_index.646
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.647
	movq	%rdx, %rsi	# constructor_index.646,
	movq	%rax, %rdi	# constructor_max_index.647,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21951
	je	.L1388	#,
.L1389:
	.loc 1 6571 0
	movl	$1, %edi	#,
	call	pop_init_level	#
	movq	%rax, %rdi	# D.21950,
	call	process_init_element	#
.L1385:
	.loc 1 6561 0 discriminator 1
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.648
	movzbl	106(%rax), %eax	# constructor_stack.648_34->implicit, D.21952
	testb	%al, %al	# D.21952
	jne	.L1390	#,
.L1388:
	.loc 1 6577 0
	movq	constructor_range_stack(%rip), %rax	# constructor_range_stack, constructor_range_stack.649
	testq	%rax, %rax	# constructor_range_stack.649
	je	.L1391	#,
	.loc 1 6581 0
	movq	-104(%rbp), %rax	# value, tmp250
	movzbl	16(%rax), %eax	# value_14(D)->common.code, D.21949
	cmpb	$-86, %al	#, D.21949
	jne	.L1392	#,
	.loc 1 6582 0
	movl	require_constant_value(%rip), %eax	# require_constant_value, require_constant_value.650
	testl	%eax, %eax	# require_constant_value.650
	je	.L1392	#,
	.loc 1 6583 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.651
	testl	%eax, %eax	# flag_isoc99.651
	je	.L1391	#,
.L1392:
	.loc 1 6584 0
	movq	-104(%rbp), %rax	# value, tmp251
	movq	%rax, %rdi	# tmp251,
	call	save_expr	#
	movq	%rax, -104(%rbp)	# tmp252, value
.L1391:
	.loc 1 6589 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.652
	movzbl	16(%rax), %eax	# constructor_type.652_54->common.code, D.21949
	cmpb	$20, %al	#, D.21949
	jne	.L1393	#,
.LBB77:
	.loc 1 6594 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.653
	testq	%rax, %rax	# constructor_fields.653
	jne	.L1394	#,
	.loc 1 6596 0
	movl	$.LC175, %edi	#,
	call	pedwarn_init	#
	.loc 1 6597 0
	jmp	.L1395	#
.L1394:
	.loc 1 6600 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.654
	movq	8(%rax), %rax	# constructor_fields.654_57->common.type, tmp253
	movq	%rax, -72(%rbp)	# tmp253, fieldtype
	.loc 1 6601 0
	movq	global_trees(%rip), %rax	# global_trees, D.21950
	cmpq	-72(%rbp), %rax	# fieldtype, D.21950
	je	.L1396	#,
	.loc 1 6602 0
	movq	-72(%rbp), %rax	# fieldtype, tmp254
	movq	128(%rax), %rax	# fieldtype_58->type.main_variant, tmp255
	movq	%rax, -72(%rbp)	# tmp255, fieldtype
.L1396:
	.loc 1 6603 0
	movq	-72(%rbp), %rax	# fieldtype, tmp256
	movzbl	16(%rax), %eax	# fieldtype_7->common.code, D.21949
	movzbl	%al, %eax	# D.21949, tmp257
	movl	%eax, -84(%rbp)	# tmp257, fieldcode
	.loc 1 6606 0
	cmpl	$18, -84(%rbp)	#, fieldcode
	jne	.L1397	#,
	.loc 1 6607 0
	movl	require_constant_value(%rip), %eax	# require_constant_value, require_constant_value.655
	testl	%eax, %eax	# require_constant_value.655
	jne	.L1397	#,
	.loc 1 6608 0
	movq	-72(%rbp), %rax	# fieldtype, tmp258
	movq	32(%rax), %rax	# fieldtype_7->type.size, D.21950
	testq	%rax, %rax	# D.21950
	jne	.L1397	#,
	.loc 1 6609 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.656
	movq	(%rax), %rax	# constructor_fields.656_65->common.chain, D.21950
	testq	%rax, %rax	# D.21950
	jne	.L1397	#,
	.loc 1 6611 0
	movl	$.LC176, %edi	#,
	call	error_init	#
	.loc 1 6612 0
	jmp	.L1395	#
.L1397:
	.loc 1 6616 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1398	#,
	.loc 1 6617 0
	cmpl	$18, -84(%rbp)	#, fieldcode
	jne	.L1398	#,
	.loc 1 6618 0
	movq	-72(%rbp), %rax	# fieldtype, tmp259
	movq	8(%rax), %rax	# fieldtype_7->common.type, D.21950
	movzbl	16(%rax), %eax	# _67->common.code, D.21949
	cmpb	$6, %al	#, D.21949
	jne	.L1398	#,
	.loc 1 6619 0
	cmpl	$0, -88(%rbp)	#, string_flag
	je	.L1398	#,
	.loc 1 6620 0
	movq	-48(%rbp), %rax	# orig_value, tmp260
	movq	%rax, -104(%rbp)	# tmp260, value
	jmp	.L1399	#
.L1398:
	.loc 1 6623 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1399	#,
	.loc 1 6623 0 is_stmt 0 discriminator 1
	movl	constructor_no_implicit(%rip), %eax	# constructor_no_implicit, constructor_no_implicit.657
	testl	%eax, %eax	# constructor_no_implicit.657
	jne	.L1399	#,
	.loc 1 6624 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.21950
	cmpq	-104(%rbp), %rax	# value, D.21950
	je	.L1399	#,
	.loc 1 6625 0
	movq	-104(%rbp), %rax	# value, tmp261
	movq	8(%rax), %rax	# value_1->common.type, D.21950
	movq	128(%rax), %rax	# _72->type.main_variant, D.21950
	cmpq	-72(%rbp), %rax	# fieldtype, D.21950
	je	.L1399	#,
	.loc 1 6626 0
	cmpl	$20, -84(%rbp)	#, fieldcode
	je	.L1400	#,
	.loc 1 6626 0 is_stmt 0 discriminator 1
	cmpl	$18, -84(%rbp)	#, fieldcode
	je	.L1400	#,
	.loc 1 6627 0 is_stmt 1
	cmpl	$21, -84(%rbp)	#, fieldcode
	jne	.L1399	#,
.L1400:
	.loc 1 6629 0
	movl	$1, %edi	#,
	call	push_init_level	#
	.loc 1 6630 0
	jmp	.L1401	#
.L1399:
	.loc 1 6633 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1402	#,
	.loc 1 6635 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.658
	movq	%rax, %rdi	# constructor_fields.658,
	call	push_member_name	#
	.loc 1 6636 0
	movq	constructor_fields(%rip), %rdx	# constructor_fields, constructor_fields.659
	movq	-72(%rbp), %rsi	# fieldtype, tmp262
	movq	-104(%rbp), %rax	# value, tmp263
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp263,
	call	output_init_element	#
	.loc 1 6637 0
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.660
	movl	constructor_depth(%rip), %edx	# constructor_depth, constructor_depth.661
	movslq	%edx, %rdx	# constructor_depth.661, D.21953
	salq	$4, %rdx	#, D.21953
	addq	%rdx, %rax	# D.21953, spelling.662
	movq	%rax, spelling(%rip)	# spelling.662, spelling
	jmp	.L1403	#
.L1402:
	.loc 1 6644 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.663
	movq	40(%rax), %rax	# constructor_fields.663_81->decl.size, D.21950
	testq	%rax, %rax	# D.21950
	je	.L1404	#,
	.loc 1 6648 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.664
	.loc 1 6646 0
	movq	40(%rax), %rbx	# constructor_fields.664_83->decl.size, D.21950
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.665
	movq	%rax, %rdi	# constructor_fields.665,
	call	bit_position	#
	movq	%rbx, %rdx	# D.21950,
	movq	%rax, %rsi	# D.21950,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	%rax, constructor_bit_index(%rip)	# constructor_bit_index.666, constructor_bit_index
.L1404:
	.loc 1 6650 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.667
	movq	(%rax), %rax	# constructor_fields.667_88->common.chain, constructor_unfilled_fields.668
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_unfilled_fields.668, constructor_unfilled_fields
	.loc 1 6652 0
	jmp	.L1405	#
.L1406:
	.loc 1 6656 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.669
	movq	(%rax), %rax	# constructor_unfilled_fields.669_96->common.chain, constructor_unfilled_fields.670
	.loc 1 6655 0
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_unfilled_fields.670, constructor_unfilled_fields
.L1405:
	.loc 1 6652 0 discriminator 1
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.671
	testq	%rax, %rax	# constructor_unfilled_fields.671
	je	.L1403	#,
	.loc 1 6653 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.672
	movzbl	53(%rax), %eax	# *constructor_unfilled_fields.672_91, D.21949
	andl	$2, %eax	#, D.21949
	testb	%al, %al	# D.21949
	je	.L1403	#,
	.loc 1 6654 0
	movq	constructor_unfilled_fields(%rip), %rax	# constructor_unfilled_fields, constructor_unfilled_fields.673
	movq	72(%rax), %rax	# constructor_unfilled_fields.673_94->decl.name, D.21950
	testq	%rax, %rax	# D.21950
	je	.L1406	#,
.L1403:
	.loc 1 6659 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.674
	movq	(%rax), %rax	# constructor_fields.674_98->common.chain, constructor_fields.675
	movq	%rax, constructor_fields(%rip)	# constructor_fields.675, constructor_fields
	.loc 1 6661 0
	jmp	.L1407	#
.L1409:
	.loc 1 6664 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.676
	movq	(%rax), %rax	# constructor_fields.676_106->common.chain, constructor_fields.677
	movq	%rax, constructor_fields(%rip)	# constructor_fields.677, constructor_fields
.L1407:
	.loc 1 6661 0 discriminator 1
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.678
	testq	%rax, %rax	# constructor_fields.678
	je	.L1408	#,
	.loc 1 6662 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.679
	movzbl	53(%rax), %eax	# *constructor_fields.679_101, D.21949
	andl	$2, %eax	#, D.21949
	testb	%al, %al	# D.21949
	je	.L1408	#,
	.loc 1 6663 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.680
	movq	72(%rax), %rax	# constructor_fields.680_104->decl.name, D.21950
	testq	%rax, %rax	# D.21950
	je	.L1409	#,
.L1408:
.LBE77:
	jmp	.L1410	#
.L1393:
	.loc 1 6666 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.681
	movzbl	16(%rax), %eax	# constructor_type.681_108->common.code, D.21949
	cmpb	$21, %al	#, D.21949
	jne	.L1411	#,
.LBB78:
	.loc 1 6671 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.682
	testq	%rax, %rax	# constructor_fields.682
	jne	.L1412	#,
	.loc 1 6673 0
	movl	$.LC177, %edi	#,
	call	pedwarn_init	#
	.loc 1 6674 0
	jmp	.L1395	#
.L1412:
	.loc 1 6677 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.683
	movq	8(%rax), %rax	# constructor_fields.683_111->common.type, tmp264
	movq	%rax, -64(%rbp)	# tmp264, fieldtype
	.loc 1 6678 0
	movq	global_trees(%rip), %rax	# global_trees, D.21950
	cmpq	-64(%rbp), %rax	# fieldtype, D.21950
	je	.L1413	#,
	.loc 1 6679 0
	movq	-64(%rbp), %rax	# fieldtype, tmp265
	movq	128(%rax), %rax	# fieldtype_112->type.main_variant, tmp266
	movq	%rax, -64(%rbp)	# tmp266, fieldtype
.L1413:
	.loc 1 6680 0
	movq	-64(%rbp), %rax	# fieldtype, tmp267
	movzbl	16(%rax), %eax	# fieldtype_8->common.code, D.21949
	movzbl	%al, %eax	# D.21949, tmp268
	movl	%eax, -80(%rbp)	# tmp268, fieldcode
	.loc 1 6692 0
	movl	warn_traditional(%rip), %eax	# warn_traditional, warn_traditional.684
	testl	%eax, %eax	# warn_traditional.684
	je	.L1414	#,
	.loc 1 6692 0 is_stmt 0 discriminator 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.685
	testl	%eax, %eax	# in_system_header.685
	jne	.L1414	#,
	movl	constructor_designated(%rip), %eax	# constructor_designated, constructor_designated.686
	testl	%eax, %eax	# constructor_designated.686
	jne	.L1414	#,
	.loc 1 6693 0 is_stmt 1
	cmpq	$0, -104(%rbp)	#, value
	je	.L1415	#,
	.loc 1 6693 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# value, tmp269
	movq	%rax, %rdi	# tmp269,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21951
	jne	.L1414	#,
	movq	-104(%rbp), %rax	# value, tmp270
	movq	%rax, %rdi	# tmp270,
	call	real_zerop	#
	testl	%eax, %eax	# D.21951
	jne	.L1414	#,
.L1415:
	.loc 1 6694 0 is_stmt 1
	movl	$.LC178, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1414:
	.loc 1 6697 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1416	#,
	.loc 1 6698 0
	cmpl	$18, -80(%rbp)	#, fieldcode
	jne	.L1416	#,
	.loc 1 6699 0
	movq	-64(%rbp), %rax	# fieldtype, tmp271
	movq	8(%rax), %rax	# fieldtype_8->common.type, D.21950
	movzbl	16(%rax), %eax	# _122->common.code, D.21949
	cmpb	$6, %al	#, D.21949
	jne	.L1416	#,
	.loc 1 6700 0
	cmpl	$0, -88(%rbp)	#, string_flag
	je	.L1416	#,
	.loc 1 6701 0
	movq	-48(%rbp), %rax	# orig_value, tmp272
	movq	%rax, -104(%rbp)	# tmp272, value
	jmp	.L1417	#
.L1416:
	.loc 1 6704 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1417	#,
	.loc 1 6704 0 is_stmt 0 discriminator 1
	movl	constructor_no_implicit(%rip), %eax	# constructor_no_implicit, constructor_no_implicit.687
	testl	%eax, %eax	# constructor_no_implicit.687
	jne	.L1417	#,
	.loc 1 6705 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.21950
	cmpq	-104(%rbp), %rax	# value, D.21950
	je	.L1417	#,
	.loc 1 6706 0
	movq	-104(%rbp), %rax	# value, tmp273
	movq	8(%rax), %rax	# value_1->common.type, D.21950
	movq	128(%rax), %rax	# _127->type.main_variant, D.21950
	cmpq	-64(%rbp), %rax	# fieldtype, D.21950
	je	.L1417	#,
	.loc 1 6707 0
	cmpl	$20, -80(%rbp)	#, fieldcode
	je	.L1418	#,
	.loc 1 6707 0 is_stmt 0 discriminator 1
	cmpl	$18, -80(%rbp)	#, fieldcode
	je	.L1418	#,
	.loc 1 6708 0 is_stmt 1
	cmpl	$21, -80(%rbp)	#, fieldcode
	jne	.L1417	#,
.L1418:
	.loc 1 6710 0
	movl	$1, %edi	#,
	call	push_init_level	#
	.loc 1 6711 0
	jmp	.L1401	#
.L1417:
	.loc 1 6714 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1419	#,
	.loc 1 6716 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.688
	movq	%rax, %rdi	# constructor_fields.688,
	call	push_member_name	#
	.loc 1 6717 0
	movq	constructor_fields(%rip), %rdx	# constructor_fields, constructor_fields.689
	movq	-64(%rbp), %rsi	# fieldtype, tmp274
	movq	-104(%rbp), %rax	# value, tmp275
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp275,
	call	output_init_element	#
	.loc 1 6718 0
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.690
	movl	constructor_depth(%rip), %edx	# constructor_depth, constructor_depth.691
	movslq	%edx, %rdx	# constructor_depth.691, D.21953
	salq	$4, %rdx	#, D.21953
	addq	%rdx, %rax	# D.21953, spelling.692
	movq	%rax, spelling(%rip)	# spelling.692, spelling
	jmp	.L1420	#
.L1419:
	.loc 1 6724 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.693
	movq	40(%rax), %rax	# constructor_fields.693_136->decl.size, constructor_bit_index.694
	movq	%rax, constructor_bit_index(%rip)	# constructor_bit_index.694, constructor_bit_index
	.loc 1 6725 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.695
	movq	(%rax), %rax	# constructor_fields.695_138->common.chain, constructor_unfilled_fields.696
	movq	%rax, constructor_unfilled_fields(%rip)	# constructor_unfilled_fields.696, constructor_unfilled_fields
.L1420:
	.loc 1 6728 0 discriminator 1
	movq	$0, constructor_fields(%rip)	#, constructor_fields
.LBE78:
	jmp	.L1410	#
.L1411:
	.loc 1 6730 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.697
	movzbl	16(%rax), %eax	# constructor_type.697_140->common.code, D.21949
	cmpb	$18, %al	#, D.21949
	jne	.L1421	#,
.LBB79:
	.loc 1 6732 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.698
	movq	8(%rax), %rax	# constructor_type.698_142->common.type, D.21950
	movq	128(%rax), %rax	# _143->type.main_variant, tmp276
	movq	%rax, -40(%rbp)	# tmp276, elttype
	.loc 1 6733 0
	movq	-40(%rbp), %rax	# elttype, tmp277
	movzbl	16(%rax), %eax	# elttype_144->common.code, D.21949
	movzbl	%al, %eax	# D.21949, tmp278
	movl	%eax, -76(%rbp)	# tmp278, eltcode
	.loc 1 6736 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1422	#,
	.loc 1 6737 0
	cmpl	$18, -76(%rbp)	#, eltcode
	jne	.L1422	#,
	.loc 1 6738 0
	movq	-40(%rbp), %rax	# elttype, tmp279
	movq	8(%rax), %rax	# elttype_144->common.type, D.21950
	movzbl	16(%rax), %eax	# _147->common.code, D.21949
	cmpb	$6, %al	#, D.21949
	jne	.L1422	#,
	.loc 1 6739 0
	cmpl	$0, -88(%rbp)	#, string_flag
	je	.L1422	#,
	.loc 1 6740 0
	movq	-48(%rbp), %rax	# orig_value, tmp280
	movq	%rax, -104(%rbp)	# tmp280, value
	jmp	.L1423	#
.L1422:
	.loc 1 6743 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1423	#,
	.loc 1 6743 0 is_stmt 0 discriminator 1
	movl	constructor_no_implicit(%rip), %eax	# constructor_no_implicit, constructor_no_implicit.699
	testl	%eax, %eax	# constructor_no_implicit.699
	jne	.L1423	#,
	.loc 1 6744 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.21950
	cmpq	-104(%rbp), %rax	# value, D.21950
	je	.L1423	#,
	.loc 1 6745 0
	movq	-104(%rbp), %rax	# value, tmp281
	movq	8(%rax), %rax	# value_1->common.type, D.21950
	movq	128(%rax), %rax	# _152->type.main_variant, D.21950
	cmpq	-40(%rbp), %rax	# elttype, D.21950
	je	.L1423	#,
	.loc 1 6746 0
	cmpl	$20, -76(%rbp)	#, eltcode
	je	.L1424	#,
	.loc 1 6746 0 is_stmt 0 discriminator 1
	cmpl	$18, -76(%rbp)	#, eltcode
	je	.L1424	#,
	.loc 1 6747 0 is_stmt 1
	cmpl	$21, -76(%rbp)	#, eltcode
	jne	.L1423	#,
.L1424:
	.loc 1 6749 0
	movl	$1, %edi	#,
	call	push_init_level	#
	.loc 1 6750 0
	jmp	.L1401	#
.L1423:
	.loc 1 6753 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.700
	testq	%rax, %rax	# constructor_max_index.700
	je	.L1425	#,
	.loc 1 6754 0
	movq	constructor_index(%rip), %rdx	# constructor_index, constructor_index.701
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.702
	movq	%rdx, %rsi	# constructor_index.701,
	movq	%rax, %rdi	# constructor_max_index.702,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21951
	jne	.L1426	#,
	.loc 1 6755 0
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.703
	movq	%rax, %rdi	# constructor_max_index.703,
	call	integer_all_onesp	#
	testl	%eax, %eax	# D.21951
	je	.L1425	#,
.L1426:
	.loc 1 6757 0
	movl	$.LC179, %edi	#,
	call	pedwarn_init	#
	.loc 1 6758 0
	jmp	.L1395	#
.L1425:
	.loc 1 6762 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1427	#,
	.loc 1 6764 0
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.704
	movl	$0, %esi	#,
	movq	%rax, %rdi	# constructor_index.704,
	call	tree_low_cst	#
	movl	%eax, %edi	# D.21951,
	call	push_array_bounds	#
	.loc 1 6765 0
	movq	constructor_index(%rip), %rdx	# constructor_index, constructor_index.705
	movq	-40(%rbp), %rsi	# elttype, tmp282
	movq	-104(%rbp), %rax	# value, tmp283
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp283,
	call	output_init_element	#
	.loc 1 6766 0
	movq	spelling_base(%rip), %rax	# spelling_base, spelling_base.706
	movl	constructor_depth(%rip), %edx	# constructor_depth, constructor_depth.707
	movslq	%edx, %rdx	# constructor_depth.707, D.21953
	salq	$4, %rdx	#, D.21953
	addq	%rdx, %rax	# D.21953, spelling.708
	movq	%rax, spelling(%rip)	# spelling.708, spelling
.L1427:
	.loc 1 6770 0
	movq	global_trees+144(%rip), %rdx	# global_trees, D.21950
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.709
	movq	%rax, %rsi	# constructor_index.709,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	%rax, constructor_index(%rip)	# constructor_index.710, constructor_index
	.loc 1 6772 0
	cmpq	$0, -104(%rbp)	#, value
	jne	.L1428	#,
	.loc 1 6776 0
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.711
	movq	%rax, constructor_unfilled_index(%rip)	# constructor_index.711, constructor_unfilled_index
.LBE79:
	jmp	.L1410	#
.L1428:
	jmp	.L1410	#
.L1421:
	.loc 1 6778 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.712
	movzbl	16(%rax), %eax	# constructor_type.712_173->common.code, D.21949
	cmpb	$9, %al	#, D.21949
	jne	.L1429	#,
.LBB80:
	.loc 1 6780 0
	movq	constructor_type(%rip), %rax	# constructor_type, constructor_type.713
	movq	8(%rax), %rax	# constructor_type.713_175->common.type, D.21950
	movq	128(%rax), %rax	# _176->type.main_variant, tmp284
	movq	%rax, -32(%rbp)	# tmp284, elttype
	.loc 1 6784 0
	movq	constructor_index(%rip), %rdx	# constructor_index, constructor_index.714
	movq	constructor_max_index(%rip), %rax	# constructor_max_index, constructor_max_index.715
	movq	%rdx, %rsi	# constructor_index.714,
	movq	%rax, %rdi	# constructor_max_index.715,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21951
	je	.L1430	#,
	.loc 1 6786 0
	movl	$.LC180, %edi	#,
	call	pedwarn_init	#
	.loc 1 6787 0
	jmp	.L1395	#
.L1430:
	.loc 1 6791 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1431	#,
	.loc 1 6792 0
	movq	constructor_index(%rip), %rdx	# constructor_index, constructor_index.716
	movq	-32(%rbp), %rsi	# elttype, tmp285
	movq	-104(%rbp), %rax	# value, tmp286
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp286,
	call	output_init_element	#
.L1431:
	.loc 1 6795 0
	movq	global_trees+144(%rip), %rdx	# global_trees, D.21950
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.717
	movq	%rax, %rsi	# constructor_index.717,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	%rax, constructor_index(%rip)	# constructor_index.718, constructor_index
	.loc 1 6797 0
	cmpq	$0, -104(%rbp)	#, value
	jne	.L1432	#,
	.loc 1 6801 0
	movq	constructor_index(%rip), %rax	# constructor_index, constructor_index.719
	movq	%rax, constructor_unfilled_index(%rip)	# constructor_index.719, constructor_unfilled_index
.LBE80:
	jmp	.L1410	#
.L1432:
	jmp	.L1410	#
.L1429:
	.loc 1 6806 0
	movq	constructor_fields(%rip), %rax	# constructor_fields, constructor_fields.720
	testq	%rax, %rax	# constructor_fields.720
	jne	.L1433	#,
	.loc 1 6808 0
	movl	$.LC181, %edi	#,
	call	pedwarn_init	#
	.loc 1 6809 0
	jmp	.L1395	#
.L1433:
	.loc 1 6813 0
	cmpq	$0, -104(%rbp)	#, value
	je	.L1434	#,
	.loc 1 6814 0
	movq	constructor_type(%rip), %rsi	# constructor_type, constructor_type.721
	movq	-104(%rbp), %rax	# value, tmp287
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp287,
	call	output_init_element	#
.L1434:
	.loc 1 6815 0
	movq	$0, constructor_fields(%rip)	#, constructor_fields
.L1410:
	.loc 1 6820 0
	movq	constructor_range_stack(%rip), %rax	# constructor_range_stack, constructor_range_stack.722
	testq	%rax, %rax	# constructor_range_stack.722
	je	.L1435	#,
.LBB81:
	.loc 1 6823 0
	movl	$0, -92(%rbp)	#, finish
	.loc 1 6825 0
	movq	constructor_range_stack(%rip), %rax	# constructor_range_stack, tmp288
	movq	%rax, -24(%rbp)	# tmp288, range_stack
	.loc 1 6826 0
	movq	$0, constructor_range_stack(%rip)	#, constructor_range_stack
	.loc 1 6827 0
	jmp	.L1436	#
.L1438:
	.loc 1 6829 0
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.723
	movzbl	106(%rax), %eax	# constructor_stack.723_193->implicit, D.21952
	testb	%al, %al	# D.21952
	jne	.L1437	#,
	.loc 1 6830 0
	movl	$__FUNCTION__.14730, %edx	#,
	movl	$6830, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L1437:
	.loc 1 6831 0
	movl	$1, %edi	#,
	call	pop_init_level	#
	movq	%rax, %rdi	# D.21950,
	call	process_init_element	#
.L1436:
	.loc 1 6827 0 discriminator 1
	movq	-24(%rbp), %rax	# range_stack, tmp289
	movq	16(%rax), %rdx	# range_stack_190->stack, D.21955
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.724
	cmpq	%rax, %rdx	# constructor_stack.724, D.21955
	jne	.L1438	#,
	.loc 1 6833 0
	movq	-24(%rbp), %rax	# range_stack, tmp290
	movq	%rax, -56(%rbp)	# tmp290, p
	jmp	.L1439	#
.L1441:
	.loc 1 6837 0
	movq	constructor_stack(%rip), %rax	# constructor_stack, constructor_stack.725
	movzbl	106(%rax), %eax	# constructor_stack.725_222->implicit, D.21952
	testb	%al, %al	# D.21952
	jne	.L1440	#,
	.loc 1 6838 0
	movl	$__FUNCTION__.14730, %edx	#,
	movl	$6838, %esi	#,
	movl	$.LC7, %edi	#,
	call	fancy_abort	#
.L1440:
	.loc 1 6839 0
	movl	$1, %edi	#,
	call	pop_init_level	#
	movq	%rax, %rdi	# D.21950,
	call	process_init_element	#
	.loc 1 6835 0
	movq	-56(%rbp), %rax	# p, tmp291
	movq	8(%rax), %rax	# p_9->prev, tmp292
	movq	%rax, -56(%rbp)	# tmp292, p
.L1439:
	.loc 1 6834 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp293
	movq	40(%rax), %rax	# p_9->range_end, D.21950
	.loc 1 6833 0 discriminator 1
	testq	%rax, %rax	# D.21950
	je	.L1441	#,
	.loc 1 6834 0
	movq	-56(%rbp), %rax	# p, tmp294
	movq	40(%rax), %rdx	# p_9->range_end, D.21950
	movq	-56(%rbp), %rax	# p, tmp295
	movq	32(%rax), %rax	# p_9->index, D.21950
	movq	%rdx, %rsi	# D.21950,
	movq	%rax, %rdi	# D.21950,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21951
	jne	.L1441	#,
	.loc 1 6842 0
	movq	global_trees+144(%rip), %rdx	# global_trees, D.21950
	movq	-56(%rbp), %rax	# p, tmp296
	movq	32(%rax), %rax	# p_9->index, D.21950
	movq	%rax, %rsi	# D.21950,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	-56(%rbp), %rdx	# p, tmp297
	movq	%rax, 32(%rdx)	# D.21950, p_9->index
	.loc 1 6843 0
	movq	-56(%rbp), %rax	# p, tmp298
	movq	40(%rax), %rdx	# p_9->range_end, D.21950
	movq	-56(%rbp), %rax	# p, tmp299
	movq	32(%rax), %rax	# p_9->index, D.21950
	movq	%rdx, %rsi	# D.21950,
	movq	%rax, %rdi	# D.21950,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21951
	je	.L1442	#,
	.loc 1 6843 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp300
	movq	8(%rax), %rax	# p_9->prev, D.21956
	testq	%rax, %rax	# D.21956
	jne	.L1442	#,
	.loc 1 6844 0 is_stmt 1
	movl	$1, -92(%rbp)	#, finish
.L1442:
	.loc 1 6848 0
	movq	-56(%rbp), %rax	# p, tmp301
	movq	32(%rax), %rax	# p_10->index, constructor_index.726
	movq	%rax, constructor_index(%rip)	# constructor_index.726, constructor_index
	.loc 1 6849 0
	movq	-56(%rbp), %rax	# p, tmp302
	movq	48(%rax), %rax	# p_10->fields, constructor_fields.727
	movq	%rax, constructor_fields(%rip)	# constructor_fields.727, constructor_fields
	.loc 1 6850 0
	cmpl	$0, -92(%rbp)	#, finish
	je	.L1443	#,
	.loc 1 6850 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp303
	movq	40(%rax), %rax	# p_10->range_end, D.21950
	testq	%rax, %rax	# D.21950
	je	.L1443	#,
	movq	-56(%rbp), %rax	# p, tmp304
	movq	32(%rax), %rdx	# p_10->index, D.21950
	movq	-56(%rbp), %rax	# p, tmp305
	movq	24(%rax), %rax	# p_10->range_start, D.21950
	cmpq	%rax, %rdx	# D.21950, D.21950
	jne	.L1443	#,
	.loc 1 6852 0 is_stmt 1
	movl	$0, -92(%rbp)	#, finish
	.loc 1 6853 0
	movq	-56(%rbp), %rax	# p, tmp306
	movq	$0, 8(%rax)	#, p_10->prev
.L1443:
	.loc 1 6855 0
	movq	-56(%rbp), %rax	# p, tmp307
	movq	(%rax), %rax	# p_10->next, tmp308
	movq	%rax, -56(%rbp)	# tmp308, p
	.loc 1 6856 0
	cmpq	$0, -56(%rbp)	#, p
	jne	.L1444	#,
	.loc 1 6857 0
	nop
	.loc 1 6864 0
	cmpl	$0, -92(%rbp)	#, finish
	jne	.L1447	#,
	jmp	.L1448	#
.L1444:
	.loc 1 6858 0
	movl	$2, %edi	#,
	call	push_init_level	#
	.loc 1 6859 0
	movq	constructor_stack(%rip), %rdx	# constructor_stack, constructor_stack.728
	movq	-56(%rbp), %rax	# p, tmp309
	movq	%rdx, 16(%rax)	# constructor_stack.728, p_215->stack
	.loc 1 6860 0
	movq	-56(%rbp), %rax	# p, tmp310
	movq	40(%rax), %rax	# p_215->range_end, D.21950
	testq	%rax, %rax	# D.21950
	je	.L1446	#,
	.loc 1 6860 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp311
	movq	40(%rax), %rdx	# p_215->range_end, D.21950
	movq	-56(%rbp), %rax	# p, tmp312
	movq	32(%rax), %rax	# p_215->index, D.21950
	movq	%rdx, %rsi	# D.21950,
	movq	%rax, %rdi	# D.21950,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21951
	je	.L1446	#,
	.loc 1 6861 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp313
	movq	24(%rax), %rdx	# p_215->range_start, D.21950
	movq	-56(%rbp), %rax	# p, tmp314
	movq	%rdx, 32(%rax)	# D.21950, p_215->index
	.loc 1 6862 0
	jmp	.L1442	#
.L1446:
	jmp	.L1442	#
.L1448:
	.loc 1 6865 0
	movq	-24(%rbp), %rax	# range_stack, tmp315
	movq	%rax, constructor_range_stack(%rip)	# tmp315, constructor_range_stack
	.loc 1 6866 0
	jmp	.L1401	#
.L1447:
	jmp	.L1401	#
.L1435:
.LBE81:
	.loc 1 6869 0
	jmp	.L1395	#
.L1401:
	.loc 1 6870 0
	jmp	.L1391	#
.L1395:
	.loc 1 6872 0
	movq	$0, constructor_range_stack(%rip)	#, constructor_range_stack
.L1377:
	.loc 1 6873 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	process_init_element, .-process_init_element
	.section	.rodata
	.align 8
.LC182:
	.string	"argument of `asm' is not a constant string"
	.text
	.globl	simple_asm_stmt
	.type	simple_asm_stmt, @function
simple_asm_stmt:
.LFB70:
	.loc 1 6879 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# expr, expr
	.loc 1 6880 0
	jmp	.L1450	#
.L1453:
	.loc 1 6880 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# expr, tmp75
	movq	32(%rax), %rax	# expr_1->exp.operands, tmp76
	movq	%rax, -24(%rbp)	# tmp76, expr
.L1450:
	movq	-24(%rbp), %rax	# expr, tmp77
	movzbl	16(%rax), %eax	# expr_1->common.code, D.21966
	cmpb	$115, %al	#, D.21966
	je	.L1451	#,
	.loc 1 6880 0 discriminator 3
	movq	-24(%rbp), %rax	# expr, tmp78
	movzbl	16(%rax), %eax	# expr_1->common.code, D.21966
	cmpb	$114, %al	#, D.21966
	je	.L1451	#,
	.loc 1 6880 0 discriminator 1
	movq	-24(%rbp), %rax	# expr, tmp79
	movzbl	16(%rax), %eax	# expr_1->common.code, D.21966
	cmpb	$116, %al	#, D.21966
	jne	.L1452	#,
.L1451:
	.loc 1 6880 0 discriminator 2
	movq	-24(%rbp), %rax	# expr, tmp80
	movq	32(%rax), %rdx	# expr_1->exp.operands, D.21967
	movq	global_trees(%rip), %rax	# global_trees, D.21967
	cmpq	%rax, %rdx	# D.21967, D.21967
	je	.L1452	#,
	.loc 1 6880 0 discriminator 1
	movq	-24(%rbp), %rax	# expr, tmp81
	movq	8(%rax), %rax	# expr_1->common.type, D.21967
	movzbl	61(%rax), %eax	# *_11, tmp84
	shrb	%al	# D.21968
	movl	%eax, %edx	# D.21968, D.21968
	movq	-24(%rbp), %rax	# expr, tmp85
	movq	32(%rax), %rax	# expr_1->exp.operands, D.21967
	movq	8(%rax), %rax	# _13->common.type, D.21967
	movzbl	61(%rax), %eax	# *_14, tmp88
	shrb	%al	# D.21968
	cmpb	%al, %dl	# D.21968, D.21968
	je	.L1453	#,
.L1452:
	.loc 1 6882 0 is_stmt 1
	movq	-24(%rbp), %rax	# expr, tmp89
	movzbl	16(%rax), %eax	# expr_1->common.code, D.21966
	cmpb	$121, %al	#, D.21966
	jne	.L1454	#,
	.loc 1 6883 0
	movq	-24(%rbp), %rax	# expr, tmp90
	movq	32(%rax), %rax	# expr_1->exp.operands, tmp91
	movq	%rax, -24(%rbp)	# tmp91, expr
.L1454:
	.loc 1 6885 0
	movq	-24(%rbp), %rax	# expr, tmp92
	movzbl	16(%rax), %eax	# expr_2->common.code, D.21966
	cmpb	$29, %al	#, D.21966
	jne	.L1455	#,
.LBB82:
	.loc 1 6889 0
	movq	-24(%rbp), %rax	# expr, tmp93
	movq	(%rax), %rax	# expr_2->common.chain, D.21967
	testq	%rax, %rax	# D.21967
	je	.L1456	#,
	.loc 1 6890 0
	movq	-24(%rbp), %rax	# expr, tmp94
	movq	%rax, %rdi	# tmp94,
	call	combine_strings	#
	movq	%rax, -24(%rbp)	# tmp95, expr
.L1456:
	.loc 1 6891 0
	movq	-24(%rbp), %rax	# expr, tmp96
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdx	# tmp96,
	movl	$0, %esi	#,
	movl	$165, %edi	#,
	movl	$0, %eax	#,
	call	build_stmt	#
	movq	%rax, %rdi	# D.21967,
	call	add_stmt	#
	movq	%rax, -8(%rbp)	# tmp97, stmt
	.loc 1 6894 0
	movq	-8(%rbp), %rax	# stmt, tmp98
	movzbl	19(%rax), %edx	#, tmp101
	orl	$1, %edx	#, tmp102
	movb	%dl, 19(%rax)	# tmp102,
	.loc 1 6895 0
	movq	-8(%rbp), %rax	# stmt, D.21965
	jmp	.L1457	#
.L1455:
.LBE82:
	.loc 1 6898 0
	movl	$.LC182, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 6899 0
	movl	$0, %eax	#, D.21965
.L1457:
	.loc 1 6900 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	simple_asm_stmt, .-simple_asm_stmt
	.section	.rodata
	.align 8
.LC183:
	.string	"asm template is not a string constant"
.LC184:
	.string	"%s qualifier ignored on asm"
	.align 8
.LC185:
	.string	"invalid lvalue in asm statement"
	.text
	.globl	build_asm_stmt
	.type	build_asm_stmt, @function
build_asm_stmt:
.LFB71:
	.loc 1 6912 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# cv_qualifier, cv_qualifier
	movq	%rsi, -48(%rbp)	# string, string
	movq	%rdx, -56(%rbp)	# outputs, outputs
	movq	%rcx, -64(%rbp)	# inputs, inputs
	movq	%r8, -72(%rbp)	# clobbers, clobbers
	.loc 1 6915 0
	movq	-48(%rbp), %rax	# string, tmp98
	movq	(%rax), %rax	# string_10(D)->common.chain, D.21971
	testq	%rax, %rax	# D.21971
	je	.L1459	#,
	.loc 1 6916 0
	movq	-48(%rbp), %rax	# string, tmp99
	movq	%rax, %rdi	# tmp99,
	call	combine_strings	#
	movq	%rax, -48(%rbp)	# tmp100, string
.L1459:
	.loc 1 6917 0
	movq	-48(%rbp), %rax	# string, tmp101
	movzbl	16(%rax), %eax	# string_2->common.code, D.21972
	cmpb	$29, %al	#, D.21972
	je	.L1460	#,
	.loc 1 6919 0
	movl	$.LC183, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 6920 0
	movl	$0, %eax	#, D.21970
	jmp	.L1461	#
.L1460:
	.loc 1 6923 0
	cmpq	$0, -40(%rbp)	#, cv_qualifier
	je	.L1462	#,
	.loc 1 6924 0
	movq	ridpointers(%rip), %rax	# ridpointers, ridpointers.729
	addq	$72, %rax	#, D.21973
	movq	(%rax), %rax	# *_17, D.21971
	cmpq	-40(%rbp), %rax	# cv_qualifier, D.21971
	je	.L1462	#,
	.loc 1 6927 0
	movq	-40(%rbp), %rax	# cv_qualifier, tmp102
	movq	32(%rax), %rax	# cv_qualifier_15(D)->identifier.id.str, D.21974
	.loc 1 6926 0
	movq	%rax, %rsi	# D.21974,
	movl	$.LC184, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 6928 0
	movq	$0, -40(%rbp)	#, cv_qualifier
.L1462:
	.loc 1 6933 0
	movq	-56(%rbp), %rax	# outputs, tmp103
	movq	%rax, -24(%rbp)	# tmp103, tail
	jmp	.L1463	#
.L1470:
.LBB83:
	.loc 1 6935 0
	movq	-24(%rbp), %rax	# tail, tmp104
	movq	32(%rax), %rax	# tail_3->list.value, tmp105
	movq	%rax, -16(%rbp)	# tmp105, output
	.loc 1 6937 0
	jmp	.L1464	#
.L1467:
	.loc 1 6937 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# output, tmp106
	movq	32(%rax), %rax	# output_6->exp.operands, tmp107
	movq	%rax, -16(%rbp)	# tmp107, output
.L1464:
	movq	-16(%rbp), %rax	# output, tmp108
	movzbl	16(%rax), %eax	# output_6->common.code, D.21972
	cmpb	$115, %al	#, D.21972
	je	.L1465	#,
	.loc 1 6937 0 discriminator 3
	movq	-16(%rbp), %rax	# output, tmp109
	movzbl	16(%rax), %eax	# output_6->common.code, D.21972
	cmpb	$114, %al	#, D.21972
	je	.L1465	#,
	.loc 1 6937 0 discriminator 1
	movq	-16(%rbp), %rax	# output, tmp110
	movzbl	16(%rax), %eax	# output_6->common.code, D.21972
	cmpb	$116, %al	#, D.21972
	jne	.L1466	#,
.L1465:
	.loc 1 6937 0 discriminator 2
	movq	-16(%rbp), %rax	# output, tmp111
	movq	32(%rax), %rdx	# output_6->exp.operands, D.21971
	movq	global_trees(%rip), %rax	# global_trees, D.21971
	cmpq	%rax, %rdx	# D.21971, D.21971
	je	.L1466	#,
	.loc 1 6937 0 discriminator 1
	movq	-16(%rbp), %rax	# output, tmp112
	movq	8(%rax), %rax	# output_6->common.type, D.21971
	movzbl	61(%rax), %eax	# *_29, tmp115
	shrb	%al	# D.21975
	movl	%eax, %edx	# D.21975, D.21975
	movq	-16(%rbp), %rax	# output, tmp116
	movq	32(%rax), %rax	# output_6->exp.operands, D.21971
	movq	8(%rax), %rax	# _31->common.type, D.21971
	movzbl	61(%rax), %eax	# *_32, tmp119
	shrb	%al	# D.21975
	cmpb	%al, %dl	# D.21975, D.21975
	je	.L1467	#,
.L1466:
	.loc 1 6938 0 is_stmt 1
	movq	-24(%rbp), %rax	# tail, tmp120
	movq	-16(%rbp), %rdx	# output, tmp121
	movq	%rdx, 32(%rax)	# tmp121, tail_3->list.value
	.loc 1 6942 0
	jmp	.L1468	#
.L1469:
	.loc 1 6949 0
	movq	-16(%rbp), %rax	# output, tmp122
	movq	32(%rax), %rax	# output_7->exp.operands, tmp123
	movq	%rax, -16(%rbp)	# tmp123, output
.L1468:
	.loc 1 6942 0 discriminator 1
	movq	-16(%rbp), %rax	# output, tmp124
	movzbl	16(%rax), %eax	# output_7->common.code, D.21972
	cmpb	$115, %al	#, D.21972
	je	.L1469	#,
	.loc 1 6943 0
	movq	-16(%rbp), %rax	# output, tmp125
	movzbl	16(%rax), %eax	# output_7->common.code, D.21972
	cmpb	$114, %al	#, D.21972
	je	.L1469	#,
	.loc 1 6944 0
	movq	-16(%rbp), %rax	# output, tmp126
	movzbl	16(%rax), %eax	# output_7->common.code, D.21972
	cmpb	$76, %al	#, D.21972
	je	.L1469	#,
	.loc 1 6945 0
	movq	-16(%rbp), %rax	# output, tmp127
	movzbl	16(%rax), %eax	# output_7->common.code, D.21972
	cmpb	$72, %al	#, D.21972
	je	.L1469	#,
	.loc 1 6946 0
	movq	-16(%rbp), %rax	# output, tmp128
	movzbl	16(%rax), %eax	# output_7->common.code, D.21972
	cmpb	$74, %al	#, D.21972
	je	.L1469	#,
	.loc 1 6947 0
	movq	-16(%rbp), %rax	# output, tmp129
	movzbl	16(%rax), %eax	# output_7->common.code, D.21972
	cmpb	$75, %al	#, D.21972
	je	.L1469	#,
	.loc 1 6948 0
	movq	-16(%rbp), %rax	# output, tmp130
	movzbl	16(%rax), %eax	# output_7->common.code, D.21972
	cmpb	$73, %al	#, D.21972
	je	.L1469	#,
	.loc 1 6951 0
	movq	-24(%rbp), %rax	# tail, tmp131
	movq	32(%rax), %rax	# tail_3->list.value, D.21971
	movl	$.LC185, %esi	#,
	movq	%rax, %rdi	# D.21971,
	call	lvalue_or_else	#
.LBE83:
	.loc 1 6933 0
	movq	-24(%rbp), %rax	# tail, tmp132
	movq	(%rax), %rax	# tail_3->common.chain, tmp133
	movq	%rax, -24(%rbp)	# tmp133, tail
.L1463:
	.loc 1 6933 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, tail
	jne	.L1470	#,
	.loc 1 6955 0 is_stmt 1
	movq	-56(%rbp), %rax	# outputs, tmp134
	movq	%rax, -24(%rbp)	# tmp134, tail
	jmp	.L1471	#
.L1476:
.LBB84:
	.loc 1 6957 0
	movq	-24(%rbp), %rax	# tail, tmp135
	movq	32(%rax), %rax	# tail_4->list.value, tmp136
	movq	%rax, -8(%rbp)	# tmp136, output
	.loc 1 6958 0
	jmp	.L1472	#
.L1475:
	.loc 1 6958 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# output, tmp137
	movq	32(%rax), %rax	# output_8->exp.operands, tmp138
	movq	%rax, -8(%rbp)	# tmp138, output
.L1472:
	movq	-8(%rbp), %rax	# output, tmp139
	movzbl	16(%rax), %eax	# output_8->common.code, D.21972
	cmpb	$115, %al	#, D.21972
	je	.L1473	#,
	.loc 1 6958 0 discriminator 3
	movq	-8(%rbp), %rax	# output, tmp140
	movzbl	16(%rax), %eax	# output_8->common.code, D.21972
	cmpb	$114, %al	#, D.21972
	je	.L1473	#,
	.loc 1 6958 0 discriminator 1
	movq	-8(%rbp), %rax	# output, tmp141
	movzbl	16(%rax), %eax	# output_8->common.code, D.21972
	cmpb	$116, %al	#, D.21972
	jne	.L1474	#,
.L1473:
	.loc 1 6958 0 discriminator 2
	movq	-8(%rbp), %rax	# output, tmp142
	movq	32(%rax), %rdx	# output_8->exp.operands, D.21971
	movq	global_trees(%rip), %rax	# global_trees, D.21971
	cmpq	%rax, %rdx	# D.21971, D.21971
	je	.L1474	#,
	.loc 1 6958 0 discriminator 1
	movq	-8(%rbp), %rax	# output, tmp143
	movq	8(%rax), %rax	# output_8->common.type, D.21971
	movzbl	61(%rax), %eax	# *_52, tmp146
	shrb	%al	# D.21975
	movl	%eax, %edx	# D.21975, D.21975
	movq	-8(%rbp), %rax	# output, tmp147
	movq	32(%rax), %rax	# output_8->exp.operands, D.21971
	movq	8(%rax), %rax	# _54->common.type, D.21971
	movzbl	61(%rax), %eax	# *_55, tmp150
	shrb	%al	# D.21975
	cmpb	%al, %dl	# D.21975, D.21975
	je	.L1475	#,
.L1474:
	.loc 1 6959 0 is_stmt 1
	movq	-24(%rbp), %rax	# tail, tmp151
	movq	-8(%rbp), %rdx	# output, tmp152
	movq	%rdx, 32(%rax)	# tmp152, tail_4->list.value
.LBE84:
	.loc 1 6955 0
	movq	-24(%rbp), %rax	# tail, tmp153
	movq	(%rax), %rax	# tail_4->common.chain, tmp154
	movq	%rax, -24(%rbp)	# tmp154, tail
.L1471:
	.loc 1 6955 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, tail
	jne	.L1476	#,
	.loc 1 6965 0 is_stmt 1
	movq	-64(%rbp), %rax	# inputs, tmp155
	movq	%rax, -24(%rbp)	# tmp155, tail
	jmp	.L1477	#
.L1478:
	.loc 1 6966 0 discriminator 2
	movq	-24(%rbp), %rax	# tail, tmp156
	movq	32(%rax), %rax	# tail_5->list.value, D.21971
	movq	%rax, %rdi	# D.21971,
	call	default_function_array_conversion	#
	movq	-24(%rbp), %rdx	# tail, tmp157
	movq	%rax, 32(%rdx)	# D.21971, tail_5->list.value
	.loc 1 6965 0 discriminator 2
	movq	-24(%rbp), %rax	# tail, tmp158
	movq	(%rax), %rax	# tail_5->common.chain, tmp159
	movq	%rax, -24(%rbp)	# tmp159, tail
.L1477:
	.loc 1 6965 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, tail
	jne	.L1478	#,
	.loc 1 6968 0 is_stmt 1
	movq	-72(%rbp), %rdi	# clobbers, tmp160
	movq	-64(%rbp), %rsi	# inputs, tmp161
	movq	-56(%rbp), %rcx	# outputs, tmp162
	movq	-48(%rbp), %rdx	# string, tmp163
	movq	-40(%rbp), %rax	# cv_qualifier, tmp164
	movq	%rdi, %r9	# tmp160,
	movq	%rsi, %r8	# tmp161,
	movq	%rax, %rsi	# tmp164,
	movl	$165, %edi	#,
	movl	$0, %eax	#,
	call	build_stmt	#
	movq	%rax, %rdi	# D.21971,
	call	add_stmt	#
.L1461:
	.loc 1 6970 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	build_asm_stmt, .-build_asm_stmt
	.section	.rodata
.LC186:
	.string	"modification by `asm'"
	.text
	.globl	c_expand_asm_operands
	.type	c_expand_asm_operands, @function
c_expand_asm_operands:
.LFB72:
	.loc 1 6984 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# string, string
	movq	%rsi, -64(%rbp)	# outputs, outputs
	movq	%rdx, -72(%rbp)	# inputs, inputs
	movq	%rcx, -80(%rbp)	# clobbers, clobbers
	movl	%r8d, -84(%rbp)	# vol, vol
	movq	%r9, -96(%rbp)	# filename, filename
	.loc 1 6985 0
	movq	-64(%rbp), %rax	# outputs, tmp100
	movq	%rax, %rdi	# tmp100,
	call	list_length	#
	movl	%eax, -44(%rbp)	# tmp101, noutputs
	.loc 1 6988 0
	movl	-44(%rbp), %eax	# noutputs, tmp102
	cltq
	salq	$3, %rax	#, D.21979
	leaq	15(%rax), %rdx	#, tmp103
	movl	$16, %eax	#, tmp150
	subq	$1, %rax	#, tmp104
	addq	%rdx, %rax	# tmp103, tmp105
	movl	$16, %ebx	#, tmp151
	movl	$0, %edx	#, tmp108
	divq	%rbx	# tmp151
	imulq	$16, %rax, %rax	#, tmp107, tmp109
	subq	%rax, %rsp	# tmp109,
	leaq	8(%rsp), %rax	#, tmp110
	addq	$15, %rax	#, tmp111
	shrq	$4, %rax	#, tmp112
	salq	$4, %rax	#, tmp113
	movq	%rax, -32(%rbp)	# tmp113, o
	.loc 1 6992 0
	movl	$0, -48(%rbp)	#, i
	movq	-64(%rbp), %rax	# outputs, tmp114
	movq	%rax, -40(%rbp)	# tmp114, tail
	jmp	.L1480	#
.L1481:
	.loc 1 6993 0 discriminator 2
	movl	-48(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21979
	movq	-32(%rbp), %rax	# o, tmp116
	addq	%rax, %rdx	# tmp116, D.21980
	movq	-40(%rbp), %rax	# tail, tmp117
	movq	32(%rax), %rax	# tail_3->list.value, D.21981
	movq	%rax, (%rdx)	# D.21981, *_14
	.loc 1 6992 0 discriminator 2
	movq	-40(%rbp), %rax	# tail, tmp118
	movq	(%rax), %rax	# tail_3->common.chain, tmp119
	movq	%rax, -40(%rbp)	# tmp119, tail
	addl	$1, -48(%rbp)	#, i
.L1480:
	.loc 1 6992 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, tail
	jne	.L1481	#,
	.loc 1 6997 0 is_stmt 1
	movq	-96(%rbp), %r9	# filename, tmp120
	movl	-84(%rbp), %r8d	# vol, tmp121
	movq	-80(%rbp), %rcx	# clobbers, tmp122
	movq	-72(%rbp), %rdx	# inputs, tmp123
	movq	-64(%rbp), %rsi	# outputs, tmp124
	movq	-56(%rbp), %rax	# string, tmp125
	movl	16(%rbp), %edi	# line, tmp126
	movl	%edi, (%rsp)	# tmp126,
	movq	%rax, %rdi	# tmp125,
	call	expand_asm_operands	#
	.loc 1 7000 0
	movl	$0, -48(%rbp)	#, i
	movq	-64(%rbp), %rax	# outputs, tmp127
	movq	%rax, -40(%rbp)	# tmp127, tail
	jmp	.L1482	#
.L1487:
	.loc 1 7002 0
	movl	-48(%rbp), %eax	# i, tmp128
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21979
	movq	-32(%rbp), %rax	# o, tmp129
	addq	%rdx, %rax	# D.21979, D.21980
	movq	(%rax), %rdx	# *_28, D.21981
	movq	-40(%rbp), %rax	# tail, tmp130
	movq	32(%rax), %rax	# tail_4->list.value, D.21981
	cmpq	%rax, %rdx	# D.21981, D.21981
	je	.L1483	#,
	.loc 1 7004 0
	movq	-40(%rbp), %rax	# tail, tmp131
	movq	32(%rax), %rdx	# tail_4->list.value, D.21981
	movl	-48(%rbp), %eax	# i, tmp132
	cltq
	leaq	0(,%rax,8), %rcx	#, D.21979
	movq	-32(%rbp), %rax	# o, tmp133
	addq	%rcx, %rax	# D.21979, D.21980
	movq	(%rax), %rax	# *_34, D.21981
	movl	$115, %esi	#,
	movq	%rax, %rdi	# D.21981,
	call	build_modify_expr	#
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21981,
	call	expand_expr	#
	.loc 1 7006 0
	call	free_temp_slots	#
	.loc 1 7010 0
	movl	-48(%rbp), %eax	# i, tmp134
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21979
	movq	-32(%rbp), %rax	# o, tmp135
	addq	%rdx, %rax	# D.21979, D.21980
	movq	(%rax), %rdx	# *_39, D.21981
	movq	-40(%rbp), %rax	# tail, tmp136
	movq	%rdx, 32(%rax)	# D.21981, tail_4->list.value
	jmp	.L1484	#
.L1483:
.LBB85:
	.loc 1 7016 0
	movl	-48(%rbp), %eax	# i, tmp137
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21979
	movq	-32(%rbp), %rax	# o, tmp138
	addq	%rdx, %rax	# D.21979, D.21980
	movq	(%rax), %rax	# *_43, D.21981
	movq	8(%rax), %rax	# _44->common.type, tmp139
	movq	%rax, -24(%rbp)	# tmp139, type
	.loc 1 7017 0
	movl	-48(%rbp), %eax	# i, tmp140
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21979
	movq	-32(%rbp), %rax	# o, tmp141
	addq	%rdx, %rax	# D.21979, D.21980
	movq	(%rax), %rax	# *_48, D.21981
	movzbl	17(%rax), %eax	# *_49, D.21982
	andl	$16, %eax	#, D.21982
	testb	%al, %al	# D.21982
	jne	.L1485	#,
	.loc 1 7018 0
	movq	-24(%rbp), %rax	# type, tmp142
	movzbl	17(%rax), %eax	# *type_45, D.21982
	andl	$16, %eax	#, D.21982
	testb	%al, %al	# D.21982
	jne	.L1485	#,
	.loc 1 7019 0
	movq	-24(%rbp), %rax	# type, tmp143
	movzbl	16(%rax), %eax	# type_45->common.code, D.21982
	cmpb	$20, %al	#, D.21982
	je	.L1486	#,
	.loc 1 7020 0
	movq	-24(%rbp), %rax	# type, tmp144
	movzbl	16(%rax), %eax	# type_45->common.code, D.21982
	cmpb	$21, %al	#, D.21982
	jne	.L1484	#,
.L1486:
	.loc 1 7021 0
	movq	-24(%rbp), %rax	# type, tmp145
	movzbl	19(%rax), %eax	# *type_45, D.21982
	andl	$2, %eax	#, D.21982
	testb	%al, %al	# D.21982
	je	.L1484	#,
.L1485:
	.loc 1 7022 0
	movl	-48(%rbp), %eax	# i, tmp146
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21979
	movq	-32(%rbp), %rax	# o, tmp147
	addq	%rdx, %rax	# D.21979, D.21980
	movq	(%rax), %rax	# *_60, D.21981
	movl	$.LC186, %esi	#,
	movq	%rax, %rdi	# D.21981,
	call	readonly_warning	#
.L1484:
.LBE85:
	.loc 1 7000 0
	movq	-40(%rbp), %rax	# tail, tmp148
	movq	(%rax), %rax	# tail_4->common.chain, tmp149
	movq	%rax, -40(%rbp)	# tmp149, tail
	addl	$1, -48(%rbp)	#, i
.L1482:
	.loc 1 7000 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, tail
	jne	.L1487	#,
	.loc 1 7027 0 is_stmt 1
	call	emit_queue	#
	.loc 1 7028 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	c_expand_asm_operands, .-c_expand_asm_operands
	.section	.rodata
	.align 8
.LC187:
	.string	"function declared `noreturn' has a `return' statement"
	.align 8
.LC188:
	.string	"`return' with no value, in function returning non-void"
	.align 8
.LC189:
	.string	"`return' with a value, in function returning void"
.LC190:
	.string	"return"
	.align 8
.LC191:
	.string	"function returns address of local variable"
	.text
	.globl	c_expand_return
	.type	c_expand_return, @function
c_expand_return:
.LFB73:
	.loc 1 7037 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# retval, retval
	.loc 1 7038 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.730
	movq	8(%rax), %rax	# current_function_decl.730_7->common.type, D.21985
	movq	8(%rax), %rax	# _8->common.type, tmp101
	movq	%rax, -24(%rbp)	# tmp101, valtype
	.loc 1 7040 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.731
	movzbl	17(%rax), %eax	# *current_function_decl.731_10, D.21986
	andl	$8, %eax	#, D.21986
	testb	%al, %al	# D.21986
	je	.L1489	#,
	.loc 1 7041 0
	movl	$.LC187, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1489:
	.loc 1 7043 0
	cmpq	$0, -56(%rbp)	#, retval
	jne	.L1490	#,
	.loc 1 7045 0
	movl	$1, current_function_returns_null(%rip)	#, current_function_returns_null
	.loc 1 7046 0
	movl	warn_return_type(%rip), %eax	# warn_return_type, warn_return_type.732
	testl	%eax, %eax	# warn_return_type.732
	jne	.L1491	#,
	.loc 1 7046 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.733
	testl	%eax, %eax	# flag_isoc99.733
	je	.L1493	#,
.L1491:
	.loc 1 7047 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, valtype
	je	.L1493	#,
	.loc 1 7047 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# valtype, tmp102
	movzbl	16(%rax), %eax	# valtype_9->common.code, D.21986
	cmpb	$5, %al	#, D.21986
	je	.L1493	#,
	.loc 1 7048 0 is_stmt 1
	movl	$.LC188, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn_c99	#
	jmp	.L1493	#
.L1490:
	.loc 1 7050 0
	cmpq	$0, -24(%rbp)	#, valtype
	je	.L1494	#,
	.loc 1 7050 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# valtype, tmp103
	movzbl	16(%rax), %eax	# valtype_9->common.code, D.21986
	cmpb	$5, %al	#, D.21986
	jne	.L1495	#,
.L1494:
	.loc 1 7052 0 is_stmt 1
	movl	$1, current_function_returns_null(%rip)	#, current_function_returns_null
	.loc 1 7053 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.734
	testl	%eax, %eax	# pedantic.734
	jne	.L1496	#,
	.loc 1 7053 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# retval, tmp104
	movq	8(%rax), %rax	# retval_13(D)->common.type, D.21985
	movzbl	16(%rax), %eax	# _58->common.code, D.21986
	cmpb	$5, %al	#, D.21986
	je	.L1497	#,
.L1496:
	.loc 1 7054 0 is_stmt 1
	movl	$.LC189, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 7053 0
	jmp	.L1493	#
.L1497:
	.loc 1 7053 0 is_stmt 0 discriminator 1
	jmp	.L1493	#
.L1495:
.LBB86:
	.loc 1 7058 0 is_stmt 1
	movq	-56(%rbp), %rsi	# retval, tmp105
	movq	-24(%rbp), %rax	# valtype, tmp106
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$.LC190, %edx	#,
	movq	%rax, %rdi	# tmp106,
	call	convert_for_assignment	#
	movq	%rax, -16(%rbp)	# tmp107, t
	.loc 1 7060 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.735
	movq	96(%rax), %rax	# current_function_decl.735_19->decl.result, tmp108
	movq	%rax, -8(%rbp)	# tmp108, res
	.loc 1 7063 0
	movl	$1, current_function_returns_value(%rip)	#, current_function_returns_value
	.loc 1 7064 0
	movq	global_trees(%rip), %rax	# global_trees, D.21985
	cmpq	-16(%rbp), %rax	# t, D.21985
	jne	.L1498	#,
	.loc 1 7065 0
	movl	$0, %eax	#, D.21984
	jmp	.L1499	#
.L1498:
	.loc 1 7067 0
	movq	-8(%rbp), %rax	# res, tmp109
	movq	8(%rax), %rax	# res_20->common.type, D.21985
	movq	-16(%rbp), %rdx	# t, tmp110
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# D.21985,
	call	convert	#
	movq	%rax, -16(%rbp)	# tmp111, t
	movq	-16(%rbp), %rax	# t, tmp112
	movq	%rax, -40(%rbp)	# tmp112, inner
.L1514:
	.loc 1 7073 0
	movq	-40(%rbp), %rax	# inner, tmp113
	movzbl	16(%rax), %eax	# inner_2->common.code, D.21986
	movzbl	%al, %eax	# D.21986, D.21987
	cmpl	$116, %eax	#, D.21987
	ja	.L1501	#,
	cmpl	$114, %eax	#, D.21987
	jae	.L1502	#,
	cmpl	$59, %eax	#, D.21987
	je	.L1502	#,
	cmpl	$60, %eax	#, D.21987
	je	.L1503	#,
	.loc 1 7114 0
	jmp	.L1509	#
.L1501:
	.loc 1 7073 0
	cmpl	$121, %eax	#, D.21987
	je	.L1504	#,
	.loc 1 7114 0
	jmp	.L1509	#
.L1502:
	.loc 1 7077 0
	movq	-40(%rbp), %rax	# inner, tmp114
	movq	32(%rax), %rax	# inner_2->exp.operands, tmp115
	movq	%rax, -40(%rbp)	# tmp115, inner
	.loc 1 7078 0
	jmp	.L1505	#
.L1503:
.LBB87:
	.loc 1 7085 0
	movq	-40(%rbp), %rax	# inner, tmp116
	movq	40(%rax), %rax	# inner_2->exp.operands, tmp117
	movq	%rax, -32(%rbp)	# tmp117, op1
	.loc 1 7087 0
	jmp	.L1506	#
.L1508:
	.loc 1 7091 0
	movq	-32(%rbp), %rax	# op1, tmp118
	movq	32(%rax), %rax	# op1_5->exp.operands, tmp119
	movq	%rax, -32(%rbp)	# tmp119, op1
.L1506:
	.loc 1 7087 0 discriminator 1
	movq	-32(%rbp), %rax	# op1, tmp120
	movq	8(%rax), %rax	# op1_5->common.type, D.21985
	movzbl	16(%rax), %eax	# _30->common.code, D.21986
	cmpb	$13, %al	#, D.21986
	je	.L1507	#,
	.loc 1 7087 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# op1, tmp121
	movq	8(%rax), %rax	# op1_5->common.type, D.21985
	movzbl	16(%rax), %eax	# _32->common.code, D.21986
	cmpb	$15, %al	#, D.21986
	je	.L1507	#,
	.loc 1 7088 0 is_stmt 1
	movq	-32(%rbp), %rax	# op1, tmp122
	movzbl	16(%rax), %eax	# op1_5->common.code, D.21986
	cmpb	$115, %al	#, D.21986
	je	.L1508	#,
	.loc 1 7089 0
	movq	-32(%rbp), %rax	# op1, tmp123
	movzbl	16(%rax), %eax	# op1_5->common.code, D.21986
	cmpb	$116, %al	#, D.21986
	je	.L1508	#,
	.loc 1 7090 0
	movq	-32(%rbp), %rax	# op1, tmp124
	movzbl	16(%rax), %eax	# op1_5->common.code, D.21986
	cmpb	$114, %al	#, D.21986
	je	.L1508	#,
.L1507:
	.loc 1 7093 0
	movq	-32(%rbp), %rax	# op1, tmp125
	movq	8(%rax), %rax	# op1_5->common.type, D.21985
	movzbl	16(%rax), %eax	# _38->common.code, D.21986
	cmpb	$13, %al	#, D.21986
	je	.L1509	#,
	.loc 1 7093 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# op1, tmp126
	movq	8(%rax), %rax	# op1_5->common.type, D.21985
	movzbl	16(%rax), %eax	# _40->common.code, D.21986
	cmpb	$15, %al	#, D.21986
	je	.L1509	#,
	.loc 1 7096 0 is_stmt 1
	movq	-40(%rbp), %rax	# inner, tmp127
	movq	32(%rax), %rax	# inner_2->exp.operands, tmp128
	movq	%rax, -40(%rbp)	# tmp128, inner
	.loc 1 7097 0
	jmp	.L1505	#
.L1504:
.LBE87:
	.loc 1 7101 0
	movq	-40(%rbp), %rax	# inner, tmp129
	movq	32(%rax), %rax	# inner_2->exp.operands, tmp130
	movq	%rax, -40(%rbp)	# tmp130, inner
	.loc 1 7103 0
	jmp	.L1510	#
.L1511:
	.loc 1 7104 0
	movq	-40(%rbp), %rax	# inner, tmp131
	movq	32(%rax), %rax	# inner_3->exp.operands, tmp132
	movq	%rax, -40(%rbp)	# tmp132, inner
.L1510:
	.loc 1 7103 0 discriminator 1
	movq	-40(%rbp), %rax	# inner, tmp133
	movzbl	16(%rax), %eax	# inner_3->common.code, D.21986
	movzbl	%al, %eax	# D.21986, D.21988
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21989
	cmpb	$114, %al	#, D.21989
	je	.L1511	#,
	.loc 1 7106 0
	movq	-40(%rbp), %rax	# inner, tmp135
	movzbl	16(%rax), %eax	# inner_3->common.code, D.21986
	cmpb	$34, %al	#, D.21986
	jne	.L1512	#,
	.loc 1 7107 0
	movq	-40(%rbp), %rax	# inner, tmp136
	movzbl	49(%rax), %eax	# *inner_3, D.21986
	andl	$1, %eax	#, D.21986
	testb	%al, %al	# D.21986
	jne	.L1512	#,
	.loc 1 7108 0
	movq	-40(%rbp), %rax	# inner, tmp137
	movzbl	18(%rax), %eax	# *inner_3, D.21986
	andl	$4, %eax	#, D.21986
	testb	%al, %al	# D.21986
	jne	.L1512	#,
	.loc 1 7109 0
	movq	-40(%rbp), %rax	# inner, tmp138
	movq	80(%rax), %rdx	# inner_3->decl.context, D.21985
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.736
	cmpq	%rax, %rdx	# current_function_decl.736, D.21985
	jne	.L1512	#,
	.loc 1 7110 0
	movl	$.LC191, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 7111 0
	jmp	.L1515	#
.L1512:
.L1515:
	nop
.L1509:
	.loc 1 7117 0
	nop
	.loc 1 7120 0
	movq	-8(%rbp), %rax	# res, tmp139
	movq	8(%rax), %rax	# res_20->common.type, D.21985
	movq	-16(%rbp), %rcx	# t, tmp140
	movq	-8(%rbp), %rdx	# res, tmp141
	movq	%rax, %rsi	# D.21985,
	movl	$48, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -56(%rbp)	# tmp142, retval
	jmp	.L1493	#
.L1505:
	.loc 1 7118 0
	jmp	.L1514	#
.L1493:
.LBE86:
	.loc 1 7123 0
	movq	-56(%rbp), %rax	# retval, tmp143
	movq	%rax, %rdi	# tmp143,
	call	build_return_stmt	#
	movq	%rax, %rdi	# D.21985,
	call	add_stmt	#
.L1499:
	.loc 1 7124 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	c_expand_return, .-c_expand_return
	.local	switch_stack
	.comm	switch_stack,8,8
	.section	.rodata
	.align 8
.LC192:
	.string	"switch quantity not an integer"
	.align 8
.LC193:
	.string	"`long' switch expression not converted to `int' in ISO C"
	.text
	.globl	c_start_case
	.type	c_start_case, @function
c_start_case:
.LFB74:
	.loc 1 7153 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# exp, exp
	.loc 1 7155 0
	movq	global_trees(%rip), %rax	# global_trees, tmp78
	movq	%rax, -24(%rbp)	# tmp78, orig_type
	.loc 1 7158 0
	movq	global_trees(%rip), %rax	# global_trees, D.21996
	cmpq	-40(%rbp), %rax	# exp, D.21996
	je	.L1517	#,
	.loc 1 7160 0
	movq	-40(%rbp), %rax	# exp, tmp79
	movq	8(%rax), %rax	# exp_5(D)->common.type, D.21996
	movzbl	16(%rax), %eax	# _6->common.code, D.21997
	movzbl	%al, %eax	# D.21997, tmp80
	movl	%eax, -28(%rbp)	# tmp80, code
	.loc 1 7161 0
	movq	-40(%rbp), %rax	# exp, tmp81
	movq	8(%rax), %rax	# exp_5(D)->common.type, tmp82
	movq	%rax, -24(%rbp)	# tmp82, orig_type
	.loc 1 7163 0
	movq	-24(%rbp), %rax	# orig_type, tmp83
	movzbl	16(%rax), %eax	# orig_type_9->common.code, D.21997
	cmpb	$6, %al	#, D.21997
	je	.L1518	#,
	.loc 1 7163 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# orig_type, tmp84
	movzbl	16(%rax), %eax	# orig_type_9->common.code, D.21997
	cmpb	$10, %al	#, D.21997
	je	.L1518	#,
	movq	-24(%rbp), %rax	# orig_type, tmp85
	movzbl	16(%rax), %eax	# orig_type_9->common.code, D.21997
	cmpb	$11, %al	#, D.21997
	je	.L1518	#,
	movq	-24(%rbp), %rax	# orig_type, tmp86
	movzbl	16(%rax), %eax	# orig_type_9->common.code, D.21997
	cmpb	$12, %al	#, D.21997
	je	.L1518	#,
	.loc 1 7164 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, code
	je	.L1518	#,
	.loc 1 7166 0
	movl	$.LC192, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 7167 0
	movq	global_trees+88(%rip), %rax	# global_trees, tmp87
	movq	%rax, -40(%rbp)	# tmp87, exp
	jmp	.L1517	#
.L1518:
	.loc 1 7171 0
	movq	-40(%rbp), %rax	# exp, tmp88
	movq	8(%rax), %rax	# exp_5(D)->common.type, D.21996
	movq	128(%rax), %rax	# _15->type.main_variant, tmp89
	movq	%rax, -16(%rbp)	# tmp89, type
	.loc 1 7173 0
	movl	warn_traditional(%rip), %eax	# warn_traditional, warn_traditional.737
	testl	%eax, %eax	# warn_traditional.737
	je	.L1519	#,
	.loc 1 7173 0 is_stmt 0 discriminator 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.738
	testl	%eax, %eax	# in_system_header.738
	jne	.L1519	#,
	.loc 1 7174 0 is_stmt 1
	movq	integer_types+56(%rip), %rax	# integer_types, D.21996
	cmpq	-16(%rbp), %rax	# type, D.21996
	je	.L1520	#,
	.loc 1 7175 0
	movq	integer_types+64(%rip), %rax	# integer_types, D.21996
	cmpq	-16(%rbp), %rax	# type, D.21996
	jne	.L1519	#,
.L1520:
	.loc 1 7176 0
	movl	$.LC193, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1519:
	.loc 1 7178 0
	movq	-40(%rbp), %rax	# exp, tmp90
	movq	%rax, %rdi	# tmp90,
	call	default_conversion	#
	movq	%rax, -40(%rbp)	# tmp91, exp
	.loc 1 7179 0
	movq	-40(%rbp), %rax	# exp, tmp92
	movq	8(%rax), %rax	# exp_21->common.type, tmp93
	movq	%rax, -16(%rbp)	# tmp93, type
.L1517:
	.loc 1 7184 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp94, cs
	.loc 1 7185 0
	movq	-24(%rbp), %rdx	# orig_type, tmp95
	movq	-40(%rbp), %rax	# exp, tmp96
	movq	%rdx, %rcx	# tmp95,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp96,
	movl	$162, %edi	#,
	movl	$0, %eax	#,
	call	build_stmt	#
	movq	-8(%rbp), %rdx	# cs, tmp97
	movq	%rax, (%rdx)	# D.21996, cs_23->switch_stmt
	.loc 1 7186 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$case_compare, %edi	#,
	call	splay_tree_new	#
	movq	-8(%rbp), %rdx	# cs, tmp98
	movq	%rax, 8(%rdx)	# D.21998, cs_23->cases
	.loc 1 7187 0
	movq	switch_stack(%rip), %rdx	# switch_stack, switch_stack.739
	movq	-8(%rbp), %rax	# cs, tmp99
	movq	%rdx, 16(%rax)	# switch_stack.739, cs_23->next
	.loc 1 7188 0
	movq	-8(%rbp), %rax	# cs, tmp100
	movq	%rax, switch_stack(%rip)	# tmp100, switch_stack
	.loc 1 7190 0
	movq	switch_stack(%rip), %rax	# switch_stack, switch_stack.740
	movq	(%rax), %rax	# switch_stack.740_27->switch_stmt, D.21996
	movq	%rax, %rdi	# D.21996,
	call	add_stmt	#
	.loc 1 7191 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	c_start_case, .-c_start_case
	.section	.rodata
	.align 8
.LC194:
	.string	"case label not within a switch statement"
	.align 8
.LC195:
	.string	"`default' label not within a switch statement"
	.text
	.globl	do_case
	.type	do_case, @function
do_case:
.LFB75:
	.loc 1 7199 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# low_value, low_value
	movq	%rsi, -32(%rbp)	# high_value, high_value
	.loc 1 7200 0
	movq	$0, -8(%rbp)	#, label
	.loc 1 7202 0
	movq	switch_stack(%rip), %rax	# switch_stack, switch_stack.741
	testq	%rax, %rax	# switch_stack.741
	je	.L1523	#,
	.loc 1 7205 0
	movq	switch_stack(%rip), %rax	# switch_stack, switch_stack.742
	movq	(%rax), %rax	# switch_stack.742_5->switch_stmt, D.22002
	.loc 1 7204 0
	movq	32(%rax), %rsi	# _6->exp.operands, D.22002
	movq	switch_stack(%rip), %rax	# switch_stack, switch_stack.743
	movq	8(%rax), %rax	# switch_stack.743_8->cases, D.22003
	movq	-32(%rbp), %rcx	# high_value, tmp68
	movq	-24(%rbp), %rdx	# low_value, tmp69
	movq	%rax, %rdi	# D.22003,
	call	c_add_case_label	#
	movq	%rax, -8(%rbp)	# tmp70, label
	.loc 1 7207 0
	movq	global_trees(%rip), %rax	# global_trees, D.22002
	cmpq	-8(%rbp), %rax	# label, D.22002
	jne	.L1525	#,
	.loc 1 7208 0
	movq	$0, -8(%rbp)	#, label
	jmp	.L1525	#
.L1523:
	.loc 1 7210 0
	cmpq	$0, -24(%rbp)	#, low_value
	je	.L1526	#,
	.loc 1 7211 0
	movl	$.LC194, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L1525	#
.L1526:
	.loc 1 7213 0
	movl	$.LC195, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L1525:
	.loc 1 7215 0
	movq	-8(%rbp), %rax	# label, D.22004
	.loc 1 7216 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	do_case, .-do_case
	.globl	c_finish_case
	.type	c_finish_case, @function
c_finish_case:
.LFB76:
	.loc 1 7222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 7223 0
	movq	switch_stack(%rip), %rax	# switch_stack, tmp68
	movq	%rax, -8(%rbp)	# tmp68, cs
	.loc 1 7225 0
	movq	-8(%rbp), %rax	# cs, tmp69
	movq	(%rax), %rax	# cs_1->switch_stmt, D.22007
	movq	-8(%rbp), %rdx	# cs, tmp70
	movq	(%rdx), %rdx	# cs_1->switch_stmt, D.22007
	movq	(%rdx), %rdx	# _3->common.chain, D.22007
	movq	%rdx, 40(%rax)	# D.22007, _2->exp.operands
	movq	-8(%rbp), %rax	# cs, tmp71
	movq	(%rax), %rax	# cs_1->switch_stmt, D.22007
	movq	$0, (%rax)	#, _5->common.chain
	call	current_stmt_tree	#
	movq	-8(%rbp), %rdx	# cs, tmp72
	movq	(%rdx), %rdx	# cs_1->switch_stmt, D.22007
	movq	%rdx, (%rax)	# D.22007, _6->x_last_stmt
	.loc 1 7228 0
	movq	switch_stack(%rip), %rax	# switch_stack, switch_stack.744
	movq	16(%rax), %rax	# switch_stack.744_8->next, switch_stack.745
	movq	%rax, switch_stack(%rip)	# switch_stack.745, switch_stack
	.loc 1 7229 0
	movq	-8(%rbp), %rax	# cs, tmp73
	movq	8(%rax), %rax	# cs_1->cases, D.22009
	movq	%rax, %rdi	# D.22009,
	call	splay_tree_delete	#
	.loc 1 7230 0
	movq	-8(%rbp), %rax	# cs, tmp74
	movq	%rax, %rdi	# tmp74,
	call	free	#
	.loc 1 7231 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	c_finish_case, .-c_finish_case
	.section	.rodata
	.align 16
	.type	__FUNCTION__.13791, @object
	.size	__FUNCTION__.13791, 22
__FUNCTION__.13791:
	.string	"incomplete_type_error"
	.type	__FUNCTION__.14554, @object
	.size	__FUNCTION__.14554, 12
__FUNCTION__.14554:
	.string	"finish_init"
	.type	__FUNCTION__.14581, @object
	.size	__FUNCTION__.14581, 15
__FUNCTION__.14581:
	.string	"pop_init_level"
	.type	__FUNCTION__.14590, @object
	.size	__FUNCTION__.14590, 15
__FUNCTION__.14590:
	.string	"set_designator"
	.align 32
	.type	__FUNCTION__.14657, @object
	.size	__FUNCTION__.14657, 36
__FUNCTION__.14657:
	.string	"set_nonincremental_init_from_string"
	.align 16
	.type	__FUNCTION__.14730, @object
	.size	__FUNCTION__.14730, 21
__FUNCTION__.14730:
	.string	"process_init_element"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "machmode.h"
	.file 10 "real.h"
	.file 11 "hashtable.h"
	.file 12 "c-tree.h"
	.file 13 "splay-tree.h"
	.file 14 "cpplib.h"
	.file 15 "c-common.h"
	.file 16 "expr.h"
	.file 17 "target.h"
	.file 18 "i386.h"
	.file 19 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6467
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1523
	.byte	0x1
	.long	.LASF1524
	.long	.LASF1525
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
	.long	0xbca
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
	.long	0xbda
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
	.long	.LASF290
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x1360
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0x1520
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0x1583
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x163c
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0x15b8
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x15fa
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x16a1
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x1aff
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x1830
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x16c8
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x16fd
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x1740
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x1775
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
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF28
	.uleb128 0xf
	.byte	0x8
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF29
	.uleb128 0x7
	.long	.LASF30
	.byte	0x5
	.byte	0xd4
	.long	0x20c
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF31
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF32
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF33
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF34
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF35
	.uleb128 0x7
	.long	.LASF36
	.byte	0x6
	.byte	0x8c
	.long	0x1fa
	.uleb128 0x7
	.long	.LASF37
	.byte	0x6
	.byte	0x8d
	.long	0x1fa
	.uleb128 0x3
	.byte	0x8
	.long	0x24b
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF38
	.uleb128 0x7
	.long	.LASF39
	.byte	0x7
	.byte	0x30
	.long	0x25d
	.uleb128 0x4
	.long	.LASF40
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x3de
	.uleb128 0x8
	.long	.LASF41
	.byte	0x8
	.byte	0xf7
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x8
	.byte	0xfc
	.long	0x245
	.byte	0x8
	.uleb128 0x8
	.long	.LASF43
	.byte	0x8
	.byte	0xfd
	.long	0x245
	.byte	0x10
	.uleb128 0x8
	.long	.LASF44
	.byte	0x8
	.byte	0xfe
	.long	0x245
	.byte	0x18
	.uleb128 0x8
	.long	.LASF45
	.byte	0x8
	.byte	0xff
	.long	0x245
	.byte	0x20
	.uleb128 0x10
	.long	.LASF46
	.byte	0x8
	.value	0x100
	.long	0x245
	.byte	0x28
	.uleb128 0x10
	.long	.LASF47
	.byte	0x8
	.value	0x101
	.long	0x245
	.byte	0x30
	.uleb128 0x10
	.long	.LASF48
	.byte	0x8
	.value	0x102
	.long	0x245
	.byte	0x38
	.uleb128 0x10
	.long	.LASF49
	.byte	0x8
	.value	0x103
	.long	0x245
	.byte	0x40
	.uleb128 0x10
	.long	.LASF50
	.byte	0x8
	.value	0x105
	.long	0x245
	.byte	0x48
	.uleb128 0x10
	.long	.LASF51
	.byte	0x8
	.value	0x106
	.long	0x245
	.byte	0x50
	.uleb128 0x10
	.long	.LASF52
	.byte	0x8
	.value	0x107
	.long	0x245
	.byte	0x58
	.uleb128 0x10
	.long	.LASF53
	.byte	0x8
	.value	0x109
	.long	0x416
	.byte	0x60
	.uleb128 0x10
	.long	.LASF54
	.byte	0x8
	.value	0x10b
	.long	0x41c
	.byte	0x68
	.uleb128 0x10
	.long	.LASF55
	.byte	0x8
	.value	0x10d
	.long	0x1e3
	.byte	0x70
	.uleb128 0x10
	.long	.LASF56
	.byte	0x8
	.value	0x111
	.long	0x1e3
	.byte	0x74
	.uleb128 0x10
	.long	.LASF57
	.byte	0x8
	.value	0x113
	.long	0x22f
	.byte	0x78
	.uleb128 0x10
	.long	.LASF58
	.byte	0x8
	.value	0x117
	.long	0x21a
	.byte	0x80
	.uleb128 0x10
	.long	.LASF59
	.byte	0x8
	.value	0x118
	.long	0x221
	.byte	0x82
	.uleb128 0x10
	.long	.LASF60
	.byte	0x8
	.value	0x119
	.long	0x422
	.byte	0x83
	.uleb128 0x10
	.long	.LASF61
	.byte	0x8
	.value	0x11d
	.long	0x432
	.byte	0x88
	.uleb128 0x10
	.long	.LASF62
	.byte	0x8
	.value	0x126
	.long	0x23a
	.byte	0x90
	.uleb128 0x10
	.long	.LASF63
	.byte	0x8
	.value	0x12f
	.long	0x1f8
	.byte	0x98
	.uleb128 0x10
	.long	.LASF64
	.byte	0x8
	.value	0x130
	.long	0x1f8
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF65
	.byte	0x8
	.value	0x131
	.long	0x1f8
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF66
	.byte	0x8
	.value	0x132
	.long	0x1f8
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x8
	.value	0x133
	.long	0x201
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF68
	.byte	0x8
	.value	0x135
	.long	0x1e3
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF69
	.byte	0x8
	.value	0x137
	.long	0x438
	.byte	0xc4
	.byte	0
	.uleb128 0x11
	.long	.LASF1526
	.byte	0x8
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF70
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x416
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0xa2
	.long	0x416
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0xa3
	.long	0x41c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF73
	.byte	0x8
	.byte	0xa7
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3e5
	.uleb128 0x3
	.byte	0x8
	.long	0x25d
	.uleb128 0x12
	.long	0x24b
	.long	0x432
	.uleb128 0x13
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3de
	.uleb128 0x12
	.long	0x24b
	.long	0x448
	.uleb128 0x13
	.long	0x1ea
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x44e
	.uleb128 0xc
	.long	0x24b
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF74
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF75
	.uleb128 0x3
	.byte	0x8
	.long	0x1e3
	.uleb128 0x14
	.long	.LASF136
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x5dc
	.uleb128 0x15
	.long	.LASF76
	.sleb128 0
	.uleb128 0x15
	.long	.LASF77
	.sleb128 1
	.uleb128 0x15
	.long	.LASF78
	.sleb128 2
	.uleb128 0x15
	.long	.LASF79
	.sleb128 3
	.uleb128 0x15
	.long	.LASF80
	.sleb128 4
	.uleb128 0x15
	.long	.LASF81
	.sleb128 5
	.uleb128 0x15
	.long	.LASF82
	.sleb128 6
	.uleb128 0x15
	.long	.LASF83
	.sleb128 7
	.uleb128 0x15
	.long	.LASF84
	.sleb128 8
	.uleb128 0x15
	.long	.LASF85
	.sleb128 9
	.uleb128 0x15
	.long	.LASF86
	.sleb128 10
	.uleb128 0x15
	.long	.LASF87
	.sleb128 11
	.uleb128 0x15
	.long	.LASF88
	.sleb128 12
	.uleb128 0x15
	.long	.LASF89
	.sleb128 13
	.uleb128 0x15
	.long	.LASF90
	.sleb128 14
	.uleb128 0x15
	.long	.LASF91
	.sleb128 15
	.uleb128 0x15
	.long	.LASF92
	.sleb128 16
	.uleb128 0x15
	.long	.LASF93
	.sleb128 17
	.uleb128 0x15
	.long	.LASF94
	.sleb128 18
	.uleb128 0x15
	.long	.LASF95
	.sleb128 19
	.uleb128 0x15
	.long	.LASF96
	.sleb128 20
	.uleb128 0x15
	.long	.LASF97
	.sleb128 21
	.uleb128 0x15
	.long	.LASF98
	.sleb128 22
	.uleb128 0x15
	.long	.LASF99
	.sleb128 23
	.uleb128 0x15
	.long	.LASF100
	.sleb128 24
	.uleb128 0x15
	.long	.LASF101
	.sleb128 25
	.uleb128 0x15
	.long	.LASF102
	.sleb128 26
	.uleb128 0x15
	.long	.LASF103
	.sleb128 27
	.uleb128 0x15
	.long	.LASF104
	.sleb128 28
	.uleb128 0x15
	.long	.LASF105
	.sleb128 29
	.uleb128 0x15
	.long	.LASF106
	.sleb128 30
	.uleb128 0x15
	.long	.LASF107
	.sleb128 31
	.uleb128 0x15
	.long	.LASF108
	.sleb128 32
	.uleb128 0x15
	.long	.LASF109
	.sleb128 33
	.uleb128 0x15
	.long	.LASF110
	.sleb128 34
	.uleb128 0x15
	.long	.LASF111
	.sleb128 35
	.uleb128 0x15
	.long	.LASF112
	.sleb128 36
	.uleb128 0x15
	.long	.LASF113
	.sleb128 37
	.uleb128 0x15
	.long	.LASF114
	.sleb128 38
	.uleb128 0x15
	.long	.LASF115
	.sleb128 39
	.uleb128 0x15
	.long	.LASF116
	.sleb128 40
	.uleb128 0x15
	.long	.LASF117
	.sleb128 41
	.uleb128 0x15
	.long	.LASF118
	.sleb128 42
	.uleb128 0x15
	.long	.LASF119
	.sleb128 43
	.uleb128 0x15
	.long	.LASF120
	.sleb128 44
	.uleb128 0x15
	.long	.LASF121
	.sleb128 45
	.uleb128 0x15
	.long	.LASF122
	.sleb128 46
	.uleb128 0x15
	.long	.LASF123
	.sleb128 47
	.uleb128 0x15
	.long	.LASF124
	.sleb128 48
	.uleb128 0x15
	.long	.LASF125
	.sleb128 49
	.uleb128 0x15
	.long	.LASF126
	.sleb128 50
	.uleb128 0x15
	.long	.LASF127
	.sleb128 51
	.uleb128 0x15
	.long	.LASF128
	.sleb128 52
	.uleb128 0x15
	.long	.LASF129
	.sleb128 53
	.uleb128 0x15
	.long	.LASF130
	.sleb128 54
	.uleb128 0x15
	.long	.LASF131
	.sleb128 55
	.uleb128 0x15
	.long	.LASF132
	.sleb128 56
	.uleb128 0x15
	.long	.LASF133
	.sleb128 57
	.uleb128 0x15
	.long	.LASF134
	.sleb128 58
	.uleb128 0x15
	.long	.LASF135
	.sleb128 59
	.byte	0
	.uleb128 0x14
	.long	.LASF137
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x625
	.uleb128 0x15
	.long	.LASF138
	.sleb128 0
	.uleb128 0x15
	.long	.LASF139
	.sleb128 1
	.uleb128 0x15
	.long	.LASF140
	.sleb128 2
	.uleb128 0x15
	.long	.LASF141
	.sleb128 3
	.uleb128 0x15
	.long	.LASF142
	.sleb128 4
	.uleb128 0x15
	.long	.LASF143
	.sleb128 5
	.uleb128 0x15
	.long	.LASF144
	.sleb128 6
	.uleb128 0x15
	.long	.LASF145
	.sleb128 7
	.uleb128 0x15
	.long	.LASF146
	.sleb128 8
	.uleb128 0x15
	.long	.LASF147
	.sleb128 9
	.byte	0
	.uleb128 0x14
	.long	.LASF148
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xa21
	.uleb128 0x15
	.long	.LASF149
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0x15
	.long	.LASF150
	.sleb128 2
	.uleb128 0x15
	.long	.LASF151
	.sleb128 3
	.uleb128 0x15
	.long	.LASF152
	.sleb128 4
	.uleb128 0x15
	.long	.LASF153
	.sleb128 5
	.uleb128 0x15
	.long	.LASF154
	.sleb128 6
	.uleb128 0x15
	.long	.LASF155
	.sleb128 7
	.uleb128 0x15
	.long	.LASF156
	.sleb128 8
	.uleb128 0x15
	.long	.LASF157
	.sleb128 9
	.uleb128 0x15
	.long	.LASF158
	.sleb128 10
	.uleb128 0x15
	.long	.LASF159
	.sleb128 11
	.uleb128 0x15
	.long	.LASF160
	.sleb128 12
	.uleb128 0x15
	.long	.LASF161
	.sleb128 13
	.uleb128 0x15
	.long	.LASF162
	.sleb128 14
	.uleb128 0x15
	.long	.LASF163
	.sleb128 15
	.uleb128 0x15
	.long	.LASF164
	.sleb128 16
	.uleb128 0x15
	.long	.LASF165
	.sleb128 17
	.uleb128 0x15
	.long	.LASF166
	.sleb128 18
	.uleb128 0x15
	.long	.LASF167
	.sleb128 19
	.uleb128 0x15
	.long	.LASF168
	.sleb128 20
	.uleb128 0x15
	.long	.LASF169
	.sleb128 21
	.uleb128 0x15
	.long	.LASF170
	.sleb128 22
	.uleb128 0x15
	.long	.LASF171
	.sleb128 23
	.uleb128 0x15
	.long	.LASF172
	.sleb128 24
	.uleb128 0x15
	.long	.LASF173
	.sleb128 25
	.uleb128 0x15
	.long	.LASF174
	.sleb128 26
	.uleb128 0x15
	.long	.LASF175
	.sleb128 27
	.uleb128 0x15
	.long	.LASF176
	.sleb128 28
	.uleb128 0x15
	.long	.LASF177
	.sleb128 29
	.uleb128 0x15
	.long	.LASF178
	.sleb128 30
	.uleb128 0x15
	.long	.LASF179
	.sleb128 31
	.uleb128 0x15
	.long	.LASF180
	.sleb128 32
	.uleb128 0x15
	.long	.LASF181
	.sleb128 33
	.uleb128 0x15
	.long	.LASF182
	.sleb128 34
	.uleb128 0x15
	.long	.LASF183
	.sleb128 35
	.uleb128 0x15
	.long	.LASF184
	.sleb128 36
	.uleb128 0x15
	.long	.LASF185
	.sleb128 37
	.uleb128 0x15
	.long	.LASF186
	.sleb128 38
	.uleb128 0x15
	.long	.LASF187
	.sleb128 39
	.uleb128 0x15
	.long	.LASF188
	.sleb128 40
	.uleb128 0x15
	.long	.LASF189
	.sleb128 41
	.uleb128 0x15
	.long	.LASF190
	.sleb128 42
	.uleb128 0x15
	.long	.LASF191
	.sleb128 43
	.uleb128 0x15
	.long	.LASF192
	.sleb128 44
	.uleb128 0x15
	.long	.LASF193
	.sleb128 45
	.uleb128 0x15
	.long	.LASF194
	.sleb128 46
	.uleb128 0x16
	.string	"SET"
	.sleb128 47
	.uleb128 0x16
	.string	"USE"
	.sleb128 48
	.uleb128 0x15
	.long	.LASF195
	.sleb128 49
	.uleb128 0x15
	.long	.LASF196
	.sleb128 50
	.uleb128 0x15
	.long	.LASF197
	.sleb128 51
	.uleb128 0x15
	.long	.LASF198
	.sleb128 52
	.uleb128 0x15
	.long	.LASF199
	.sleb128 53
	.uleb128 0x15
	.long	.LASF200
	.sleb128 54
	.uleb128 0x15
	.long	.LASF201
	.sleb128 55
	.uleb128 0x15
	.long	.LASF202
	.sleb128 56
	.uleb128 0x15
	.long	.LASF203
	.sleb128 57
	.uleb128 0x15
	.long	.LASF204
	.sleb128 58
	.uleb128 0x16
	.string	"PC"
	.sleb128 59
	.uleb128 0x15
	.long	.LASF205
	.sleb128 60
	.uleb128 0x16
	.string	"REG"
	.sleb128 61
	.uleb128 0x15
	.long	.LASF206
	.sleb128 62
	.uleb128 0x15
	.long	.LASF207
	.sleb128 63
	.uleb128 0x15
	.long	.LASF208
	.sleb128 64
	.uleb128 0x15
	.long	.LASF209
	.sleb128 65
	.uleb128 0x16
	.string	"MEM"
	.sleb128 66
	.uleb128 0x15
	.long	.LASF210
	.sleb128 67
	.uleb128 0x15
	.long	.LASF211
	.sleb128 68
	.uleb128 0x16
	.string	"CC0"
	.sleb128 69
	.uleb128 0x15
	.long	.LASF212
	.sleb128 70
	.uleb128 0x15
	.long	.LASF213
	.sleb128 71
	.uleb128 0x15
	.long	.LASF214
	.sleb128 72
	.uleb128 0x15
	.long	.LASF215
	.sleb128 73
	.uleb128 0x15
	.long	.LASF216
	.sleb128 74
	.uleb128 0x15
	.long	.LASF217
	.sleb128 75
	.uleb128 0x15
	.long	.LASF218
	.sleb128 76
	.uleb128 0x16
	.string	"NEG"
	.sleb128 77
	.uleb128 0x15
	.long	.LASF219
	.sleb128 78
	.uleb128 0x16
	.string	"DIV"
	.sleb128 79
	.uleb128 0x16
	.string	"MOD"
	.sleb128 80
	.uleb128 0x15
	.long	.LASF220
	.sleb128 81
	.uleb128 0x15
	.long	.LASF221
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
	.uleb128 0x15
	.long	.LASF222
	.sleb128 87
	.uleb128 0x15
	.long	.LASF223
	.sleb128 88
	.uleb128 0x15
	.long	.LASF224
	.sleb128 89
	.uleb128 0x15
	.long	.LASF225
	.sleb128 90
	.uleb128 0x15
	.long	.LASF226
	.sleb128 91
	.uleb128 0x15
	.long	.LASF227
	.sleb128 92
	.uleb128 0x15
	.long	.LASF228
	.sleb128 93
	.uleb128 0x15
	.long	.LASF229
	.sleb128 94
	.uleb128 0x15
	.long	.LASF230
	.sleb128 95
	.uleb128 0x15
	.long	.LASF231
	.sleb128 96
	.uleb128 0x15
	.long	.LASF232
	.sleb128 97
	.uleb128 0x15
	.long	.LASF233
	.sleb128 98
	.uleb128 0x15
	.long	.LASF234
	.sleb128 99
	.uleb128 0x15
	.long	.LASF235
	.sleb128 100
	.uleb128 0x15
	.long	.LASF236
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
	.uleb128 0x15
	.long	.LASF237
	.sleb128 112
	.uleb128 0x15
	.long	.LASF238
	.sleb128 113
	.uleb128 0x15
	.long	.LASF239
	.sleb128 114
	.uleb128 0x15
	.long	.LASF240
	.sleb128 115
	.uleb128 0x15
	.long	.LASF241
	.sleb128 116
	.uleb128 0x15
	.long	.LASF242
	.sleb128 117
	.uleb128 0x15
	.long	.LASF243
	.sleb128 118
	.uleb128 0x15
	.long	.LASF244
	.sleb128 119
	.uleb128 0x15
	.long	.LASF245
	.sleb128 120
	.uleb128 0x15
	.long	.LASF246
	.sleb128 121
	.uleb128 0x15
	.long	.LASF247
	.sleb128 122
	.uleb128 0x15
	.long	.LASF248
	.sleb128 123
	.uleb128 0x15
	.long	.LASF249
	.sleb128 124
	.uleb128 0x15
	.long	.LASF250
	.sleb128 125
	.uleb128 0x16
	.string	"FIX"
	.sleb128 126
	.uleb128 0x15
	.long	.LASF251
	.sleb128 127
	.uleb128 0x15
	.long	.LASF252
	.sleb128 128
	.uleb128 0x16
	.string	"ABS"
	.sleb128 129
	.uleb128 0x15
	.long	.LASF253
	.sleb128 130
	.uleb128 0x16
	.string	"FFS"
	.sleb128 131
	.uleb128 0x15
	.long	.LASF254
	.sleb128 132
	.uleb128 0x15
	.long	.LASF255
	.sleb128 133
	.uleb128 0x15
	.long	.LASF256
	.sleb128 134
	.uleb128 0x15
	.long	.LASF257
	.sleb128 135
	.uleb128 0x15
	.long	.LASF258
	.sleb128 136
	.uleb128 0x15
	.long	.LASF259
	.sleb128 137
	.uleb128 0x15
	.long	.LASF260
	.sleb128 138
	.uleb128 0x15
	.long	.LASF261
	.sleb128 139
	.uleb128 0x15
	.long	.LASF262
	.sleb128 140
	.uleb128 0x15
	.long	.LASF263
	.sleb128 141
	.uleb128 0x15
	.long	.LASF264
	.sleb128 142
	.uleb128 0x15
	.long	.LASF265
	.sleb128 143
	.uleb128 0x15
	.long	.LASF266
	.sleb128 144
	.uleb128 0x15
	.long	.LASF267
	.sleb128 145
	.uleb128 0x15
	.long	.LASF268
	.sleb128 146
	.uleb128 0x15
	.long	.LASF269
	.sleb128 147
	.uleb128 0x15
	.long	.LASF270
	.sleb128 148
	.uleb128 0x15
	.long	.LASF271
	.sleb128 149
	.uleb128 0x15
	.long	.LASF272
	.sleb128 150
	.uleb128 0x15
	.long	.LASF273
	.sleb128 151
	.uleb128 0x16
	.string	"PHI"
	.sleb128 152
	.uleb128 0x15
	.long	.LASF274
	.sleb128 153
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xaa2
	.uleb128 0x5
	.long	.LASF275
	.byte	0x2
	.byte	0x47
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF276
	.byte	0x2
	.byte	0x49
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF277
	.byte	0x2
	.byte	0x4a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF278
	.byte	0x2
	.byte	0x4c
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF279
	.byte	0x2
	.byte	0x4e
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF280
	.byte	0x2
	.byte	0x50
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF281
	.byte	0x2
	.byte	0x53
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF282
	.byte	0x2
	.byte	0x55
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF283
	.byte	0x2
	.byte	0x56
	.long	0xa21
	.uleb128 0x17
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xaf2
	.uleb128 0x8
	.long	.LASF284
	.byte	0x2
	.byte	0x5e
	.long	0x1fa
	.byte	0
	.uleb128 0x8
	.long	.LASF285
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF286
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF287
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF288
	.byte	0x2
	.byte	0x62
	.long	0x1f1
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF289
	.byte	0x2
	.byte	0x63
	.long	0xaad
	.uleb128 0x18
	.long	.LASF291
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xb98
	.uleb128 0x19
	.long	.LASF292
	.byte	0x2
	.byte	0x69
	.long	0x1fa
	.uleb128 0x19
	.long	.LASF293
	.byte	0x2
	.byte	0x6a
	.long	0x1e3
	.uleb128 0x19
	.long	.LASF294
	.byte	0x2
	.byte	0x6b
	.long	0x1f1
	.uleb128 0x19
	.long	.LASF295
	.byte	0x2
	.byte	0x6c
	.long	0x448
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
	.long	.LASF296
	.byte	0x2
	.byte	0x6f
	.long	0x467
	.uleb128 0x19
	.long	.LASF297
	.byte	0x2
	.byte	0x70
	.long	0xaa2
	.uleb128 0x19
	.long	.LASF298
	.byte	0x2
	.byte	0x71
	.long	0xb9d
	.uleb128 0x19
	.long	.LASF299
	.byte	0x2
	.byte	0x72
	.long	0xba8
	.uleb128 0x19
	.long	.LASF300
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1a
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xbb3
	.uleb128 0x19
	.long	.LASF301
	.byte	0x2
	.byte	0x75
	.long	0xbb9
	.byte	0
	.uleb128 0x1b
	.long	.LASF302
	.uleb128 0x3
	.byte	0x8
	.long	0xb98
	.uleb128 0x1b
	.long	.LASF303
	.uleb128 0x3
	.byte	0x8
	.long	0xba3
	.uleb128 0x1b
	.long	.LASF304
	.uleb128 0x3
	.byte	0x8
	.long	0xbae
	.uleb128 0x3
	.byte	0x8
	.long	0xaf2
	.uleb128 0x7
	.long	.LASF305
	.byte	0x2
	.byte	0x76
	.long	0xafd
	.uleb128 0x12
	.long	0xbbf
	.long	0xbda
	.uleb128 0x13
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2d
	.long	0xbea
	.uleb128 0x13
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF306
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xc99
	.uleb128 0x15
	.long	.LASF307
	.sleb128 -100
	.uleb128 0x15
	.long	.LASF308
	.sleb128 -99
	.uleb128 0x15
	.long	.LASF309
	.sleb128 -98
	.uleb128 0x15
	.long	.LASF310
	.sleb128 -97
	.uleb128 0x15
	.long	.LASF311
	.sleb128 -96
	.uleb128 0x15
	.long	.LASF312
	.sleb128 -95
	.uleb128 0x15
	.long	.LASF313
	.sleb128 -94
	.uleb128 0x15
	.long	.LASF314
	.sleb128 -93
	.uleb128 0x15
	.long	.LASF315
	.sleb128 -92
	.uleb128 0x15
	.long	.LASF316
	.sleb128 -91
	.uleb128 0x15
	.long	.LASF317
	.sleb128 -90
	.uleb128 0x15
	.long	.LASF318
	.sleb128 -89
	.uleb128 0x15
	.long	.LASF319
	.sleb128 -88
	.uleb128 0x15
	.long	.LASF320
	.sleb128 -87
	.uleb128 0x15
	.long	.LASF321
	.sleb128 -86
	.uleb128 0x15
	.long	.LASF322
	.sleb128 -85
	.uleb128 0x15
	.long	.LASF323
	.sleb128 -84
	.uleb128 0x15
	.long	.LASF324
	.sleb128 -83
	.uleb128 0x15
	.long	.LASF325
	.sleb128 -82
	.uleb128 0x15
	.long	.LASF326
	.sleb128 -81
	.uleb128 0x15
	.long	.LASF327
	.sleb128 -80
	.uleb128 0x15
	.long	.LASF328
	.sleb128 -79
	.uleb128 0x15
	.long	.LASF329
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0x1c
	.long	.LASF330
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xcf5
	.uleb128 0x15
	.long	.LASF331
	.sleb128 0
	.uleb128 0x15
	.long	.LASF332
	.sleb128 1
	.uleb128 0x15
	.long	.LASF333
	.sleb128 2
	.uleb128 0x15
	.long	.LASF334
	.sleb128 3
	.uleb128 0x15
	.long	.LASF335
	.sleb128 4
	.uleb128 0x15
	.long	.LASF336
	.sleb128 5
	.uleb128 0x15
	.long	.LASF337
	.sleb128 6
	.uleb128 0x15
	.long	.LASF338
	.sleb128 7
	.uleb128 0x15
	.long	.LASF339
	.sleb128 8
	.uleb128 0x15
	.long	.LASF340
	.sleb128 9
	.uleb128 0x15
	.long	.LASF341
	.sleb128 10
	.uleb128 0x15
	.long	.LASF342
	.sleb128 11
	.byte	0
	.uleb128 0x14
	.long	.LASF343
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0x10ce
	.uleb128 0x15
	.long	.LASF344
	.sleb128 0
	.uleb128 0x15
	.long	.LASF345
	.sleb128 1
	.uleb128 0x15
	.long	.LASF346
	.sleb128 2
	.uleb128 0x15
	.long	.LASF347
	.sleb128 3
	.uleb128 0x15
	.long	.LASF348
	.sleb128 4
	.uleb128 0x15
	.long	.LASF349
	.sleb128 5
	.uleb128 0x15
	.long	.LASF350
	.sleb128 6
	.uleb128 0x15
	.long	.LASF351
	.sleb128 7
	.uleb128 0x15
	.long	.LASF352
	.sleb128 8
	.uleb128 0x15
	.long	.LASF353
	.sleb128 9
	.uleb128 0x15
	.long	.LASF354
	.sleb128 10
	.uleb128 0x15
	.long	.LASF355
	.sleb128 11
	.uleb128 0x15
	.long	.LASF356
	.sleb128 12
	.uleb128 0x15
	.long	.LASF357
	.sleb128 13
	.uleb128 0x15
	.long	.LASF358
	.sleb128 14
	.uleb128 0x15
	.long	.LASF359
	.sleb128 15
	.uleb128 0x15
	.long	.LASF360
	.sleb128 16
	.uleb128 0x15
	.long	.LASF361
	.sleb128 17
	.uleb128 0x15
	.long	.LASF362
	.sleb128 18
	.uleb128 0x15
	.long	.LASF363
	.sleb128 19
	.uleb128 0x15
	.long	.LASF364
	.sleb128 20
	.uleb128 0x15
	.long	.LASF365
	.sleb128 21
	.uleb128 0x15
	.long	.LASF366
	.sleb128 22
	.uleb128 0x15
	.long	.LASF367
	.sleb128 23
	.uleb128 0x15
	.long	.LASF368
	.sleb128 24
	.uleb128 0x15
	.long	.LASF369
	.sleb128 25
	.uleb128 0x15
	.long	.LASF370
	.sleb128 26
	.uleb128 0x15
	.long	.LASF371
	.sleb128 27
	.uleb128 0x15
	.long	.LASF372
	.sleb128 28
	.uleb128 0x15
	.long	.LASF373
	.sleb128 29
	.uleb128 0x15
	.long	.LASF374
	.sleb128 30
	.uleb128 0x15
	.long	.LASF375
	.sleb128 31
	.uleb128 0x15
	.long	.LASF376
	.sleb128 32
	.uleb128 0x15
	.long	.LASF377
	.sleb128 33
	.uleb128 0x15
	.long	.LASF378
	.sleb128 34
	.uleb128 0x15
	.long	.LASF379
	.sleb128 35
	.uleb128 0x15
	.long	.LASF380
	.sleb128 36
	.uleb128 0x15
	.long	.LASF381
	.sleb128 37
	.uleb128 0x15
	.long	.LASF382
	.sleb128 38
	.uleb128 0x15
	.long	.LASF383
	.sleb128 39
	.uleb128 0x15
	.long	.LASF384
	.sleb128 40
	.uleb128 0x15
	.long	.LASF385
	.sleb128 41
	.uleb128 0x15
	.long	.LASF386
	.sleb128 42
	.uleb128 0x15
	.long	.LASF387
	.sleb128 43
	.uleb128 0x15
	.long	.LASF388
	.sleb128 44
	.uleb128 0x15
	.long	.LASF389
	.sleb128 45
	.uleb128 0x15
	.long	.LASF390
	.sleb128 46
	.uleb128 0x15
	.long	.LASF391
	.sleb128 47
	.uleb128 0x15
	.long	.LASF392
	.sleb128 48
	.uleb128 0x15
	.long	.LASF393
	.sleb128 49
	.uleb128 0x15
	.long	.LASF394
	.sleb128 50
	.uleb128 0x15
	.long	.LASF395
	.sleb128 51
	.uleb128 0x15
	.long	.LASF396
	.sleb128 52
	.uleb128 0x15
	.long	.LASF397
	.sleb128 53
	.uleb128 0x15
	.long	.LASF398
	.sleb128 54
	.uleb128 0x15
	.long	.LASF399
	.sleb128 55
	.uleb128 0x15
	.long	.LASF400
	.sleb128 56
	.uleb128 0x15
	.long	.LASF401
	.sleb128 57
	.uleb128 0x15
	.long	.LASF402
	.sleb128 58
	.uleb128 0x15
	.long	.LASF403
	.sleb128 59
	.uleb128 0x15
	.long	.LASF404
	.sleb128 60
	.uleb128 0x15
	.long	.LASF405
	.sleb128 61
	.uleb128 0x15
	.long	.LASF406
	.sleb128 62
	.uleb128 0x15
	.long	.LASF407
	.sleb128 63
	.uleb128 0x15
	.long	.LASF408
	.sleb128 64
	.uleb128 0x15
	.long	.LASF409
	.sleb128 65
	.uleb128 0x15
	.long	.LASF410
	.sleb128 66
	.uleb128 0x15
	.long	.LASF411
	.sleb128 67
	.uleb128 0x15
	.long	.LASF412
	.sleb128 68
	.uleb128 0x15
	.long	.LASF413
	.sleb128 69
	.uleb128 0x15
	.long	.LASF414
	.sleb128 70
	.uleb128 0x15
	.long	.LASF415
	.sleb128 71
	.uleb128 0x15
	.long	.LASF416
	.sleb128 72
	.uleb128 0x15
	.long	.LASF417
	.sleb128 73
	.uleb128 0x15
	.long	.LASF418
	.sleb128 74
	.uleb128 0x15
	.long	.LASF419
	.sleb128 75
	.uleb128 0x15
	.long	.LASF420
	.sleb128 76
	.uleb128 0x15
	.long	.LASF421
	.sleb128 77
	.uleb128 0x15
	.long	.LASF422
	.sleb128 78
	.uleb128 0x15
	.long	.LASF423
	.sleb128 79
	.uleb128 0x15
	.long	.LASF424
	.sleb128 80
	.uleb128 0x15
	.long	.LASF425
	.sleb128 81
	.uleb128 0x15
	.long	.LASF426
	.sleb128 82
	.uleb128 0x15
	.long	.LASF427
	.sleb128 83
	.uleb128 0x15
	.long	.LASF428
	.sleb128 84
	.uleb128 0x15
	.long	.LASF429
	.sleb128 85
	.uleb128 0x15
	.long	.LASF430
	.sleb128 86
	.uleb128 0x15
	.long	.LASF431
	.sleb128 87
	.uleb128 0x15
	.long	.LASF432
	.sleb128 88
	.uleb128 0x15
	.long	.LASF433
	.sleb128 89
	.uleb128 0x15
	.long	.LASF434
	.sleb128 90
	.uleb128 0x15
	.long	.LASF435
	.sleb128 91
	.uleb128 0x15
	.long	.LASF436
	.sleb128 92
	.uleb128 0x15
	.long	.LASF437
	.sleb128 93
	.uleb128 0x15
	.long	.LASF438
	.sleb128 94
	.uleb128 0x15
	.long	.LASF439
	.sleb128 95
	.uleb128 0x15
	.long	.LASF440
	.sleb128 96
	.uleb128 0x15
	.long	.LASF441
	.sleb128 97
	.uleb128 0x15
	.long	.LASF442
	.sleb128 98
	.uleb128 0x15
	.long	.LASF443
	.sleb128 99
	.uleb128 0x15
	.long	.LASF444
	.sleb128 100
	.uleb128 0x15
	.long	.LASF445
	.sleb128 101
	.uleb128 0x15
	.long	.LASF446
	.sleb128 102
	.uleb128 0x15
	.long	.LASF447
	.sleb128 103
	.uleb128 0x15
	.long	.LASF448
	.sleb128 104
	.uleb128 0x15
	.long	.LASF449
	.sleb128 105
	.uleb128 0x15
	.long	.LASF450
	.sleb128 106
	.uleb128 0x15
	.long	.LASF451
	.sleb128 107
	.uleb128 0x15
	.long	.LASF452
	.sleb128 108
	.uleb128 0x15
	.long	.LASF453
	.sleb128 109
	.uleb128 0x15
	.long	.LASF454
	.sleb128 110
	.uleb128 0x15
	.long	.LASF455
	.sleb128 111
	.uleb128 0x15
	.long	.LASF456
	.sleb128 112
	.uleb128 0x15
	.long	.LASF457
	.sleb128 113
	.uleb128 0x15
	.long	.LASF458
	.sleb128 114
	.uleb128 0x15
	.long	.LASF459
	.sleb128 115
	.uleb128 0x15
	.long	.LASF460
	.sleb128 116
	.uleb128 0x15
	.long	.LASF461
	.sleb128 117
	.uleb128 0x15
	.long	.LASF462
	.sleb128 118
	.uleb128 0x15
	.long	.LASF463
	.sleb128 119
	.uleb128 0x15
	.long	.LASF464
	.sleb128 120
	.uleb128 0x15
	.long	.LASF465
	.sleb128 121
	.uleb128 0x15
	.long	.LASF466
	.sleb128 122
	.uleb128 0x15
	.long	.LASF467
	.sleb128 123
	.uleb128 0x15
	.long	.LASF468
	.sleb128 124
	.uleb128 0x15
	.long	.LASF469
	.sleb128 125
	.uleb128 0x15
	.long	.LASF470
	.sleb128 126
	.uleb128 0x15
	.long	.LASF471
	.sleb128 127
	.uleb128 0x15
	.long	.LASF472
	.sleb128 128
	.uleb128 0x15
	.long	.LASF473
	.sleb128 129
	.uleb128 0x15
	.long	.LASF474
	.sleb128 130
	.uleb128 0x15
	.long	.LASF475
	.sleb128 131
	.uleb128 0x15
	.long	.LASF476
	.sleb128 132
	.uleb128 0x15
	.long	.LASF477
	.sleb128 133
	.uleb128 0x15
	.long	.LASF478
	.sleb128 134
	.uleb128 0x15
	.long	.LASF479
	.sleb128 135
	.uleb128 0x15
	.long	.LASF480
	.sleb128 136
	.uleb128 0x15
	.long	.LASF481
	.sleb128 137
	.uleb128 0x15
	.long	.LASF482
	.sleb128 138
	.uleb128 0x15
	.long	.LASF483
	.sleb128 139
	.uleb128 0x15
	.long	.LASF484
	.sleb128 140
	.uleb128 0x15
	.long	.LASF485
	.sleb128 141
	.uleb128 0x15
	.long	.LASF486
	.sleb128 142
	.uleb128 0x15
	.long	.LASF487
	.sleb128 143
	.uleb128 0x15
	.long	.LASF488
	.sleb128 144
	.uleb128 0x15
	.long	.LASF489
	.sleb128 145
	.uleb128 0x15
	.long	.LASF490
	.sleb128 146
	.uleb128 0x15
	.long	.LASF491
	.sleb128 147
	.byte	0
	.uleb128 0x14
	.long	.LASF492
	.byte	0x4
	.byte	0x4
	.byte	0x45
	.long	0x10f3
	.uleb128 0x15
	.long	.LASF493
	.sleb128 0
	.uleb128 0x15
	.long	.LASF494
	.sleb128 1
	.uleb128 0x15
	.long	.LASF495
	.sleb128 2
	.uleb128 0x15
	.long	.LASF496
	.sleb128 3
	.byte	0
	.uleb128 0x14
	.long	.LASF497
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x1360
	.uleb128 0x15
	.long	.LASF498
	.sleb128 0
	.uleb128 0x15
	.long	.LASF499
	.sleb128 1
	.uleb128 0x15
	.long	.LASF500
	.sleb128 2
	.uleb128 0x15
	.long	.LASF501
	.sleb128 3
	.uleb128 0x15
	.long	.LASF502
	.sleb128 4
	.uleb128 0x15
	.long	.LASF503
	.sleb128 5
	.uleb128 0x15
	.long	.LASF504
	.sleb128 6
	.uleb128 0x15
	.long	.LASF505
	.sleb128 7
	.uleb128 0x15
	.long	.LASF506
	.sleb128 8
	.uleb128 0x15
	.long	.LASF507
	.sleb128 9
	.uleb128 0x15
	.long	.LASF508
	.sleb128 10
	.uleb128 0x15
	.long	.LASF509
	.sleb128 11
	.uleb128 0x15
	.long	.LASF510
	.sleb128 12
	.uleb128 0x15
	.long	.LASF511
	.sleb128 13
	.uleb128 0x15
	.long	.LASF512
	.sleb128 14
	.uleb128 0x15
	.long	.LASF513
	.sleb128 15
	.uleb128 0x15
	.long	.LASF514
	.sleb128 16
	.uleb128 0x15
	.long	.LASF515
	.sleb128 17
	.uleb128 0x15
	.long	.LASF516
	.sleb128 18
	.uleb128 0x15
	.long	.LASF517
	.sleb128 19
	.uleb128 0x15
	.long	.LASF518
	.sleb128 20
	.uleb128 0x15
	.long	.LASF519
	.sleb128 21
	.uleb128 0x15
	.long	.LASF520
	.sleb128 22
	.uleb128 0x15
	.long	.LASF521
	.sleb128 23
	.uleb128 0x15
	.long	.LASF522
	.sleb128 24
	.uleb128 0x15
	.long	.LASF523
	.sleb128 25
	.uleb128 0x15
	.long	.LASF524
	.sleb128 26
	.uleb128 0x15
	.long	.LASF525
	.sleb128 27
	.uleb128 0x15
	.long	.LASF526
	.sleb128 28
	.uleb128 0x15
	.long	.LASF527
	.sleb128 29
	.uleb128 0x15
	.long	.LASF528
	.sleb128 30
	.uleb128 0x15
	.long	.LASF529
	.sleb128 31
	.uleb128 0x15
	.long	.LASF530
	.sleb128 32
	.uleb128 0x15
	.long	.LASF531
	.sleb128 33
	.uleb128 0x15
	.long	.LASF532
	.sleb128 34
	.uleb128 0x15
	.long	.LASF533
	.sleb128 35
	.uleb128 0x15
	.long	.LASF534
	.sleb128 36
	.uleb128 0x15
	.long	.LASF535
	.sleb128 37
	.uleb128 0x15
	.long	.LASF536
	.sleb128 38
	.uleb128 0x15
	.long	.LASF537
	.sleb128 39
	.uleb128 0x15
	.long	.LASF538
	.sleb128 40
	.uleb128 0x15
	.long	.LASF539
	.sleb128 41
	.uleb128 0x15
	.long	.LASF540
	.sleb128 42
	.uleb128 0x15
	.long	.LASF541
	.sleb128 43
	.uleb128 0x15
	.long	.LASF542
	.sleb128 44
	.uleb128 0x15
	.long	.LASF543
	.sleb128 45
	.uleb128 0x15
	.long	.LASF544
	.sleb128 46
	.uleb128 0x15
	.long	.LASF545
	.sleb128 47
	.uleb128 0x15
	.long	.LASF546
	.sleb128 48
	.uleb128 0x15
	.long	.LASF547
	.sleb128 49
	.uleb128 0x15
	.long	.LASF548
	.sleb128 50
	.uleb128 0x15
	.long	.LASF549
	.sleb128 51
	.uleb128 0x15
	.long	.LASF550
	.sleb128 52
	.uleb128 0x15
	.long	.LASF551
	.sleb128 53
	.uleb128 0x15
	.long	.LASF552
	.sleb128 54
	.uleb128 0x15
	.long	.LASF553
	.sleb128 55
	.uleb128 0x15
	.long	.LASF554
	.sleb128 56
	.uleb128 0x15
	.long	.LASF555
	.sleb128 57
	.uleb128 0x15
	.long	.LASF556
	.sleb128 58
	.uleb128 0x15
	.long	.LASF557
	.sleb128 59
	.uleb128 0x15
	.long	.LASF558
	.sleb128 60
	.uleb128 0x15
	.long	.LASF559
	.sleb128 61
	.uleb128 0x15
	.long	.LASF560
	.sleb128 62
	.uleb128 0x15
	.long	.LASF561
	.sleb128 63
	.uleb128 0x15
	.long	.LASF562
	.sleb128 64
	.uleb128 0x15
	.long	.LASF563
	.sleb128 65
	.uleb128 0x15
	.long	.LASF564
	.sleb128 66
	.uleb128 0x15
	.long	.LASF565
	.sleb128 67
	.uleb128 0x15
	.long	.LASF566
	.sleb128 68
	.uleb128 0x15
	.long	.LASF567
	.sleb128 69
	.uleb128 0x15
	.long	.LASF568
	.sleb128 70
	.uleb128 0x15
	.long	.LASF569
	.sleb128 71
	.uleb128 0x15
	.long	.LASF570
	.sleb128 72
	.uleb128 0x15
	.long	.LASF571
	.sleb128 73
	.uleb128 0x15
	.long	.LASF572
	.sleb128 74
	.uleb128 0x15
	.long	.LASF573
	.sleb128 75
	.uleb128 0x15
	.long	.LASF574
	.sleb128 76
	.uleb128 0x15
	.long	.LASF575
	.sleb128 77
	.uleb128 0x15
	.long	.LASF576
	.sleb128 78
	.uleb128 0x15
	.long	.LASF577
	.sleb128 79
	.uleb128 0x15
	.long	.LASF578
	.sleb128 80
	.uleb128 0x15
	.long	.LASF579
	.sleb128 81
	.uleb128 0x15
	.long	.LASF580
	.sleb128 82
	.uleb128 0x15
	.long	.LASF581
	.sleb128 83
	.uleb128 0x15
	.long	.LASF582
	.sleb128 84
	.uleb128 0x15
	.long	.LASF583
	.sleb128 85
	.uleb128 0x15
	.long	.LASF584
	.sleb128 86
	.uleb128 0x15
	.long	.LASF585
	.sleb128 87
	.uleb128 0x15
	.long	.LASF586
	.sleb128 88
	.uleb128 0x15
	.long	.LASF587
	.sleb128 89
	.uleb128 0x15
	.long	.LASF588
	.sleb128 90
	.uleb128 0x15
	.long	.LASF589
	.sleb128 91
	.uleb128 0x15
	.long	.LASF590
	.sleb128 92
	.uleb128 0x15
	.long	.LASF591
	.sleb128 93
	.uleb128 0x15
	.long	.LASF592
	.sleb128 94
	.uleb128 0x15
	.long	.LASF593
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF594
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0x14fc
	.uleb128 0x8
	.long	.LASF595
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
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF596
	.byte	0x4
	.byte	0x80
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF597
	.byte	0x4
	.byte	0x81
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF598
	.byte	0x4
	.byte	0x82
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF599
	.byte	0x4
	.byte	0x83
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF600
	.byte	0x4
	.byte	0x84
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF601
	.byte	0x4
	.byte	0x85
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF602
	.byte	0x4
	.byte	0x86
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF603
	.byte	0x4
	.byte	0x87
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF604
	.byte	0x4
	.byte	0x89
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF605
	.byte	0x4
	.byte	0x8a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF606
	.byte	0x4
	.byte	0x8b
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF607
	.byte	0x4
	.byte	0x8c
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF608
	.byte	0x4
	.byte	0x8d
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF609
	.byte	0x4
	.byte	0x8e
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF610
	.byte	0x4
	.byte	0x8f
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF611
	.byte	0x4
	.byte	0x90
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF612
	.byte	0x4
	.byte	0x92
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF613
	.byte	0x4
	.byte	0x93
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF614
	.byte	0x4
	.byte	0x94
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF615
	.byte	0x4
	.byte	0x95
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF616
	.byte	0x4
	.byte	0x96
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF617
	.byte	0x4
	.byte	0x97
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF618
	.byte	0x4
	.byte	0x98
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF619
	.byte	0x4
	.byte	0x99
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x1d
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0x1520
	.uleb128 0x1e
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x20c
	.byte	0
	.uleb128 0x10
	.long	.LASF620
	.byte	0x4
	.value	0x2cb
	.long	0x1fa
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF621
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0x1555
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x1360
	.byte	0
	.uleb128 0x1e
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0x14fc
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.byte	0x18
	.byte	0xa
	.byte	0x6b
	.long	0x1568
	.uleb128 0x6
	.string	"r"
	.byte	0xa
	.byte	0x6c
	.long	0x1568
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x1fa
	.long	0x1578
	.uleb128 0x13
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF622
	.byte	0xa
	.byte	0x6d
	.long	0x1555
	.uleb128 0x1f
	.long	.LASF623
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0x15b8
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x1360
	.byte	0
	.uleb128 0x1e
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0x1578
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.long	.LASF624
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x15fa
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x1360
	.byte	0
	.uleb128 0x1e
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF625
	.byte	0x4
	.value	0x2ed
	.long	0x1e3
	.byte	0x20
	.uleb128 0x10
	.long	.LASF626
	.byte	0x4
	.value	0x2ee
	.long	0x448
	.byte	0x28
	.byte	0
	.uleb128 0x1f
	.long	.LASF627
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x163c
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x1360
	.byte	0
	.uleb128 0x1e
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF628
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF629
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x1f
	.long	.LASF630
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x1671
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x1360
	.byte	0
	.uleb128 0x1e
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF631
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF632
	.byte	0x10
	.byte	0xb
	.byte	0x1a
	.long	0x1696
	.uleb128 0x6
	.string	"len"
	.byte	0xb
	.byte	0x1c
	.long	0x1f1
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xb
	.byte	0x1d
	.long	0x1696
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x169c
	.uleb128 0xc
	.long	0x213
	.uleb128 0x1f
	.long	.LASF633
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x16c8
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x1360
	.byte	0
	.uleb128 0x1e
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x1671
	.byte	0x18
	.byte	0
	.uleb128 0x1f
	.long	.LASF634
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x16fd
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x1360
	.byte	0
	.uleb128 0x10
	.long	.LASF635
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x10
	.long	.LASF636
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.long	.LASF637
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x1730
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x1360
	.byte	0
	.uleb128 0x10
	.long	.LASF625
	.byte	0x4
	.value	0x331
	.long	0x1e3
	.byte	0x18
	.uleb128 0x1e
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x1730
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.long	0x123
	.long	0x1740
	.uleb128 0x13
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF638
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x1775
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x1360
	.byte	0
	.uleb128 0x10
	.long	.LASF639
	.byte	0x4
	.value	0x372
	.long	0x1e3
	.byte	0x18
	.uleb128 0x10
	.long	.LASF640
	.byte	0x4
	.value	0x373
	.long	0x1730
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.long	.LASF641
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x180e
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x1360
	.byte	0
	.uleb128 0x20
	.long	.LASF642
	.byte	0x4
	.value	0x3a7
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x20
	.long	.LASF643
	.byte	0x4
	.value	0x3a8
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x20
	.long	.LASF644
	.byte	0x4
	.value	0x3a9
	.long	0x1f1
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x10
	.long	.LASF645
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF646
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x10
	.long	.LASF647
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x10
	.long	.LASF648
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x10
	.long	.LASF649
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x10
	.long	.LASF650
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x21
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x1830
	.uleb128 0xa
	.long	.LASF651
	.byte	0x4
	.value	0x4d8
	.long	0x1e3
	.uleb128 0xa
	.long	.LASF626
	.byte	0x4
	.value	0x4d8
	.long	0x245
	.byte	0
	.uleb128 0x1f
	.long	.LASF652
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1a45
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x1360
	.byte	0
	.uleb128 0x10
	.long	.LASF653
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x10
	.long	.LASF287
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF654
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x10
	.long	.LASF655
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x1e
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x1f1
	.byte	0x38
	.uleb128 0x20
	.long	.LASF656
	.byte	0x4
	.value	0x4c1
	.long	0x1f1
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x1f1
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF657
	.byte	0x4
	.value	0x4c4
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF658
	.byte	0x4
	.value	0x4c5
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF659
	.byte	0x4
	.value	0x4c6
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF660
	.byte	0x4
	.value	0x4c7
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF661
	.byte	0x4
	.value	0x4c8
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF662
	.byte	0x4
	.value	0x4c9
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF663
	.byte	0x4
	.value	0x4ca
	.long	0x1f1
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF612
	.byte	0x4
	.value	0x4cc
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF613
	.byte	0x4
	.value	0x4cd
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF614
	.byte	0x4
	.value	0x4ce
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF615
	.byte	0x4
	.value	0x4cf
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF616
	.byte	0x4
	.value	0x4d0
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF617
	.byte	0x4
	.value	0x4d1
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF618
	.byte	0x4
	.value	0x4d2
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x20
	.long	.LASF664
	.byte	0x4
	.value	0x4d3
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x10
	.long	.LASF288
	.byte	0x4
	.value	0x4d5
	.long	0x1f1
	.byte	0x40
	.uleb128 0x10
	.long	.LASF665
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x10
	.long	.LASF666
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x10
	.long	.LASF667
	.byte	0x4
	.value	0x4d8
	.long	0x180e
	.byte	0x58
	.uleb128 0x10
	.long	.LASF668
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x10
	.long	.LASF669
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x10
	.long	.LASF670
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x10
	.long	.LASF671
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x10
	.long	.LASF672
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x10
	.long	.LASF673
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x10
	.long	.LASF674
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x10
	.long	.LASF675
	.byte	0x4
	.value	0x4e0
	.long	0x1fa
	.byte	0x98
	.uleb128 0x10
	.long	.LASF676
	.byte	0x4
	.value	0x4e2
	.long	0x1a6a
	.byte	0xa0
	.byte	0
	.uleb128 0x4
	.long	.LASF677
	.byte	0x10
	.byte	0xc
	.byte	0x6e
	.long	0x1a6a
	.uleb128 0x6
	.string	"len"
	.byte	0xc
	.byte	0x70
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF678
	.byte	0xc
	.byte	0x71
	.long	0x1730
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a45
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x1a9a
	.uleb128 0x20
	.long	.LASF288
	.byte	0x4
	.value	0x717
	.long	0x1f1
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x20
	.long	.LASF679
	.byte	0x4
	.value	0x717
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1ac2
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x10f3
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x1fa
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1a70
	.byte	0
	.uleb128 0x21
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1af4
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x1af9
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
	.uleb128 0x1b
	.long	.LASF680
	.uleb128 0x3
	.byte	0x8
	.long	0x1af4
	.uleb128 0x1f
	.long	.LASF681
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x1e83
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x1360
	.byte	0
	.uleb128 0x10
	.long	.LASF682
	.byte	0x4
	.value	0x6df
	.long	0x448
	.byte	0x18
	.uleb128 0x10
	.long	.LASF683
	.byte	0x4
	.value	0x6e0
	.long	0x1e3
	.byte	0x20
	.uleb128 0x1e
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x1f1
	.byte	0x24
	.uleb128 0x10
	.long	.LASF287
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x20
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x20
	.long	.LASF684
	.byte	0x4
	.value	0x6e5
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x20
	.long	.LASF685
	.byte	0x4
	.value	0x6e6
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x20
	.long	.LASF686
	.byte	0x4
	.value	0x6e7
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x20
	.long	.LASF687
	.byte	0x4
	.value	0x6e8
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x20
	.long	.LASF688
	.byte	0x4
	.value	0x6e9
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x20
	.long	.LASF689
	.byte	0x4
	.value	0x6ea
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x20
	.long	.LASF690
	.byte	0x4
	.value	0x6eb
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x20
	.long	.LASF643
	.byte	0x4
	.value	0x6ec
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x20
	.long	.LASF691
	.byte	0x4
	.value	0x6ee
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x20
	.long	.LASF692
	.byte	0x4
	.value	0x6ef
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x20
	.long	.LASF693
	.byte	0x4
	.value	0x6f0
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x20
	.long	.LASF694
	.byte	0x4
	.value	0x6f1
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x20
	.long	.LASF695
	.byte	0x4
	.value	0x6f2
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x20
	.long	.LASF696
	.byte	0x4
	.value	0x6f3
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x20
	.long	.LASF697
	.byte	0x4
	.value	0x6f4
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x20
	.long	.LASF698
	.byte	0x4
	.value	0x6f5
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x20
	.long	.LASF699
	.byte	0x4
	.value	0x6f7
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x20
	.long	.LASF700
	.byte	0x4
	.value	0x6f8
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x20
	.long	.LASF701
	.byte	0x4
	.value	0x6f9
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x20
	.long	.LASF702
	.byte	0x4
	.value	0x6fa
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x20
	.long	.LASF703
	.byte	0x4
	.value	0x6fb
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x20
	.long	.LASF492
	.byte	0x4
	.value	0x6fc
	.long	0x1f1
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.long	.LASF704
	.byte	0x4
	.value	0x6fd
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x20
	.long	.LASF663
	.byte	0x4
	.value	0x6ff
	.long	0x1f1
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x20
	.long	.LASF705
	.byte	0x4
	.value	0x700
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x20
	.long	.LASF664
	.byte	0x4
	.value	0x701
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x20
	.long	.LASF706
	.byte	0x4
	.value	0x702
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x20
	.long	.LASF612
	.byte	0x4
	.value	0x705
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x20
	.long	.LASF613
	.byte	0x4
	.value	0x706
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x20
	.long	.LASF614
	.byte	0x4
	.value	0x707
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x20
	.long	.LASF615
	.byte	0x4
	.value	0x708
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x20
	.long	.LASF616
	.byte	0x4
	.value	0x709
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x20
	.long	.LASF617
	.byte	0x4
	.value	0x70a
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x20
	.long	.LASF618
	.byte	0x4
	.value	0x70b
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x20
	.long	.LASF707
	.byte	0x4
	.value	0x70c
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x1e
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x1a9a
	.byte	0x38
	.uleb128 0x10
	.long	.LASF654
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x10
	.long	.LASF668
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x10
	.long	.LASF674
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x10
	.long	.LASF708
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x10
	.long	.LASF709
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x10
	.long	.LASF710
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x10
	.long	.LASF648
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x10
	.long	.LASF711
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x10
	.long	.LASF712
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x10
	.long	.LASF655
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x1e
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x10
	.long	.LASF713
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x1e
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1ac2
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF714
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF715
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF716
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF717
	.byte	0x4
	.value	0x73b
	.long	0x1fa
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF676
	.byte	0x4
	.value	0x73d
	.long	0x1ea8
	.byte	0xc8
	.byte	0
	.uleb128 0x4
	.long	.LASF718
	.byte	0x10
	.byte	0xc
	.byte	0x2e
	.long	0x1ea8
	.uleb128 0x8
	.long	.LASF719
	.byte	0xc
	.byte	0x30
	.long	0x2974
	.byte	0
	.uleb128 0x8
	.long	.LASF720
	.byte	0xc
	.byte	0x34
	.long	0x123
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e83
	.uleb128 0x1c
	.long	.LASF721
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x1ff4
	.uleb128 0x15
	.long	.LASF722
	.sleb128 0
	.uleb128 0x15
	.long	.LASF723
	.sleb128 1
	.uleb128 0x15
	.long	.LASF724
	.sleb128 2
	.uleb128 0x15
	.long	.LASF725
	.sleb128 3
	.uleb128 0x15
	.long	.LASF726
	.sleb128 4
	.uleb128 0x15
	.long	.LASF727
	.sleb128 5
	.uleb128 0x15
	.long	.LASF728
	.sleb128 6
	.uleb128 0x15
	.long	.LASF729
	.sleb128 7
	.uleb128 0x15
	.long	.LASF730
	.sleb128 8
	.uleb128 0x15
	.long	.LASF731
	.sleb128 9
	.uleb128 0x15
	.long	.LASF732
	.sleb128 10
	.uleb128 0x15
	.long	.LASF733
	.sleb128 11
	.uleb128 0x15
	.long	.LASF734
	.sleb128 12
	.uleb128 0x15
	.long	.LASF735
	.sleb128 13
	.uleb128 0x15
	.long	.LASF736
	.sleb128 14
	.uleb128 0x15
	.long	.LASF737
	.sleb128 15
	.uleb128 0x15
	.long	.LASF738
	.sleb128 16
	.uleb128 0x15
	.long	.LASF739
	.sleb128 17
	.uleb128 0x15
	.long	.LASF740
	.sleb128 18
	.uleb128 0x15
	.long	.LASF741
	.sleb128 19
	.uleb128 0x15
	.long	.LASF742
	.sleb128 20
	.uleb128 0x15
	.long	.LASF743
	.sleb128 21
	.uleb128 0x15
	.long	.LASF744
	.sleb128 22
	.uleb128 0x15
	.long	.LASF745
	.sleb128 23
	.uleb128 0x15
	.long	.LASF746
	.sleb128 24
	.uleb128 0x15
	.long	.LASF747
	.sleb128 25
	.uleb128 0x15
	.long	.LASF748
	.sleb128 26
	.uleb128 0x15
	.long	.LASF749
	.sleb128 27
	.uleb128 0x15
	.long	.LASF750
	.sleb128 28
	.uleb128 0x15
	.long	.LASF751
	.sleb128 29
	.uleb128 0x15
	.long	.LASF752
	.sleb128 30
	.uleb128 0x15
	.long	.LASF753
	.sleb128 31
	.uleb128 0x15
	.long	.LASF754
	.sleb128 32
	.uleb128 0x15
	.long	.LASF755
	.sleb128 33
	.uleb128 0x15
	.long	.LASF756
	.sleb128 34
	.uleb128 0x15
	.long	.LASF757
	.sleb128 35
	.uleb128 0x15
	.long	.LASF758
	.sleb128 36
	.uleb128 0x15
	.long	.LASF759
	.sleb128 37
	.uleb128 0x15
	.long	.LASF760
	.sleb128 38
	.uleb128 0x15
	.long	.LASF761
	.sleb128 39
	.uleb128 0x15
	.long	.LASF762
	.sleb128 40
	.uleb128 0x15
	.long	.LASF763
	.sleb128 41
	.uleb128 0x15
	.long	.LASF764
	.sleb128 42
	.uleb128 0x15
	.long	.LASF765
	.sleb128 43
	.uleb128 0x15
	.long	.LASF766
	.sleb128 44
	.uleb128 0x15
	.long	.LASF767
	.sleb128 45
	.uleb128 0x15
	.long	.LASF768
	.sleb128 46
	.uleb128 0x15
	.long	.LASF769
	.sleb128 47
	.uleb128 0x15
	.long	.LASF770
	.sleb128 48
	.uleb128 0x15
	.long	.LASF771
	.sleb128 49
	.uleb128 0x15
	.long	.LASF772
	.sleb128 50
	.uleb128 0x15
	.long	.LASF773
	.sleb128 51
	.byte	0
	.uleb128 0x1c
	.long	.LASF774
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x204a
	.uleb128 0x15
	.long	.LASF775
	.sleb128 0
	.uleb128 0x15
	.long	.LASF776
	.sleb128 1
	.uleb128 0x15
	.long	.LASF777
	.sleb128 2
	.uleb128 0x15
	.long	.LASF778
	.sleb128 3
	.uleb128 0x15
	.long	.LASF779
	.sleb128 4
	.uleb128 0x15
	.long	.LASF780
	.sleb128 5
	.uleb128 0x15
	.long	.LASF781
	.sleb128 6
	.uleb128 0x15
	.long	.LASF782
	.sleb128 7
	.uleb128 0x15
	.long	.LASF783
	.sleb128 8
	.uleb128 0x15
	.long	.LASF784
	.sleb128 9
	.uleb128 0x15
	.long	.LASF785
	.sleb128 10
	.uleb128 0x15
	.long	.LASF786
	.sleb128 11
	.byte	0
	.uleb128 0x1f
	.long	.LASF787
	.byte	0x20
	.byte	0x4
	.value	0x885
	.long	0x20b3
	.uleb128 0x10
	.long	.LASF668
	.byte	0x4
	.value	0x889
	.long	0x20b3
	.byte	0
	.uleb128 0x10
	.long	.LASF788
	.byte	0x4
	.value	0x88b
	.long	0x1de
	.byte	0x8
	.uleb128 0x10
	.long	.LASF789
	.byte	0x4
	.value	0x88e
	.long	0x1de
	.byte	0xc
	.uleb128 0x10
	.long	.LASF790
	.byte	0x4
	.value	0x896
	.long	0x20b8
	.byte	0x10
	.uleb128 0x10
	.long	.LASF791
	.byte	0x4
	.value	0x899
	.long	0x20b8
	.byte	0x11
	.uleb128 0x10
	.long	.LASF792
	.byte	0x4
	.value	0x89e
	.long	0x20b8
	.byte	0x12
	.uleb128 0x10
	.long	.LASF793
	.byte	0x4
	.value	0x8ad
	.long	0x20f3
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x448
	.uleb128 0xc
	.long	0x20bd
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF794
	.uleb128 0x22
	.long	0x123
	.long	0x20e7
	.uleb128 0x23
	.long	0x20e7
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0x20ed
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x3
	.byte	0x8
	.long	0x20bd
	.uleb128 0xc
	.long	0x20f8
	.uleb128 0x3
	.byte	0x8
	.long	0x20c4
	.uleb128 0x1c
	.long	.LASF795
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x2136
	.uleb128 0x15
	.long	.LASF796
	.sleb128 0
	.uleb128 0x15
	.long	.LASF797
	.sleb128 1
	.uleb128 0x15
	.long	.LASF798
	.sleb128 2
	.uleb128 0x15
	.long	.LASF799
	.sleb128 3
	.uleb128 0x15
	.long	.LASF800
	.sleb128 4
	.uleb128 0x15
	.long	.LASF801
	.sleb128 5
	.uleb128 0x15
	.long	.LASF802
	.sleb128 6
	.byte	0
	.uleb128 0x7
	.long	.LASF803
	.byte	0xd
	.byte	0x31
	.long	0x20c
	.uleb128 0x7
	.long	.LASF804
	.byte	0xd
	.byte	0x32
	.long	0x20c
	.uleb128 0x7
	.long	.LASF805
	.byte	0xd
	.byte	0x36
	.long	0x2157
	.uleb128 0x3
	.byte	0x8
	.long	0x215d
	.uleb128 0x4
	.long	.LASF806
	.byte	0x20
	.byte	0xd
	.byte	0x54
	.long	0x219a
	.uleb128 0x6
	.string	"key"
	.byte	0xd
	.byte	0x57
	.long	0x2136
	.byte	0
	.uleb128 0x8
	.long	.LASF636
	.byte	0xd
	.byte	0x5a
	.long	0x2141
	.byte	0x8
	.uleb128 0x8
	.long	.LASF807
	.byte	0xd
	.byte	0x5d
	.long	0x214c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF808
	.byte	0xd
	.byte	0x5e
	.long	0x214c
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF809
	.byte	0xd
	.byte	0x3a
	.long	0x21a5
	.uleb128 0x3
	.byte	0x8
	.long	0x21ab
	.uleb128 0x22
	.long	0x1e3
	.long	0x21bf
	.uleb128 0x23
	.long	0x2136
	.uleb128 0x23
	.long	0x2136
	.byte	0
	.uleb128 0x7
	.long	.LASF810
	.byte	0xd
	.byte	0x3e
	.long	0x21ca
	.uleb128 0x3
	.byte	0x8
	.long	0x21d0
	.uleb128 0x24
	.long	0x21db
	.uleb128 0x23
	.long	0x2136
	.byte	0
	.uleb128 0x7
	.long	.LASF811
	.byte	0xd
	.byte	0x42
	.long	0x21e6
	.uleb128 0x3
	.byte	0x8
	.long	0x21ec
	.uleb128 0x24
	.long	0x21f7
	.uleb128 0x23
	.long	0x2141
	.byte	0
	.uleb128 0x7
	.long	.LASF812
	.byte	0xd
	.byte	0x4b
	.long	0x2202
	.uleb128 0x3
	.byte	0x8
	.long	0x2208
	.uleb128 0x22
	.long	0x1f8
	.long	0x221c
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0x1f8
	.byte	0
	.uleb128 0x7
	.long	.LASF813
	.byte	0xd
	.byte	0x51
	.long	0x2227
	.uleb128 0x3
	.byte	0x8
	.long	0x222d
	.uleb128 0x24
	.long	0x223d
	.uleb128 0x23
	.long	0x1f8
	.uleb128 0x23
	.long	0x1f8
	.byte	0
	.uleb128 0x4
	.long	.LASF814
	.byte	0x38
	.byte	0xd
	.byte	0x62
	.long	0x229e
	.uleb128 0x8
	.long	.LASF815
	.byte	0xd
	.byte	0x65
	.long	0x214c
	.byte	0
	.uleb128 0x8
	.long	.LASF816
	.byte	0xd
	.byte	0x68
	.long	0x219a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF817
	.byte	0xd
	.byte	0x6b
	.long	0x21bf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF818
	.byte	0xd
	.byte	0x6e
	.long	0x21db
	.byte	0x18
	.uleb128 0x8
	.long	.LASF819
	.byte	0xd
	.byte	0x71
	.long	0x21f7
	.byte	0x20
	.uleb128 0x8
	.long	.LASF820
	.byte	0xd
	.byte	0x72
	.long	0x221c
	.byte	0x28
	.uleb128 0x8
	.long	.LASF821
	.byte	0xd
	.byte	0x73
	.long	0x1f8
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF822
	.byte	0xd
	.byte	0x75
	.long	0x22a9
	.uleb128 0x3
	.byte	0x8
	.long	0x223d
	.uleb128 0x1f
	.long	.LASF823
	.byte	0x20
	.byte	0xe
	.value	0x1b7
	.long	0x231b
	.uleb128 0x10
	.long	.LASF824
	.byte	0xe
	.value	0x1b9
	.long	0x1671
	.byte	0
	.uleb128 0x10
	.long	.LASF825
	.byte	0xe
	.value	0x1ba
	.long	0x21a
	.byte	0x10
	.uleb128 0x10
	.long	.LASF826
	.byte	0xe
	.value	0x1bb
	.long	0x213
	.byte	0x12
	.uleb128 0x10
	.long	.LASF827
	.byte	0xe
	.value	0x1bc
	.long	0x213
	.byte	0x13
	.uleb128 0x20
	.long	.LASF24
	.byte	0xe
	.value	0x1bd
	.long	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x10
	.long	.LASF828
	.byte	0xe
	.value	0x1be
	.long	0x213
	.byte	0x15
	.uleb128 0x10
	.long	.LASF636
	.byte	0xe
	.value	0x1c6
	.long	0x2519
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF829
	.byte	0xe
	.byte	0x2b
	.long	0x2326
	.uleb128 0x1b
	.long	.LASF829
	.uleb128 0x14
	.long	.LASF830
	.byte	0x4
	.byte	0xe
	.byte	0x8f
	.long	0x24db
	.uleb128 0x15
	.long	.LASF831
	.sleb128 0
	.uleb128 0x15
	.long	.LASF832
	.sleb128 1
	.uleb128 0x15
	.long	.LASF833
	.sleb128 2
	.uleb128 0x15
	.long	.LASF834
	.sleb128 3
	.uleb128 0x15
	.long	.LASF835
	.sleb128 4
	.uleb128 0x15
	.long	.LASF836
	.sleb128 5
	.uleb128 0x15
	.long	.LASF837
	.sleb128 6
	.uleb128 0x15
	.long	.LASF838
	.sleb128 7
	.uleb128 0x15
	.long	.LASF839
	.sleb128 8
	.uleb128 0x15
	.long	.LASF840
	.sleb128 9
	.uleb128 0x15
	.long	.LASF841
	.sleb128 10
	.uleb128 0x15
	.long	.LASF842
	.sleb128 11
	.uleb128 0x15
	.long	.LASF843
	.sleb128 12
	.uleb128 0x15
	.long	.LASF844
	.sleb128 13
	.uleb128 0x15
	.long	.LASF845
	.sleb128 14
	.uleb128 0x15
	.long	.LASF846
	.sleb128 15
	.uleb128 0x15
	.long	.LASF847
	.sleb128 16
	.uleb128 0x15
	.long	.LASF848
	.sleb128 17
	.uleb128 0x15
	.long	.LASF849
	.sleb128 18
	.uleb128 0x15
	.long	.LASF850
	.sleb128 19
	.uleb128 0x15
	.long	.LASF851
	.sleb128 20
	.uleb128 0x15
	.long	.LASF852
	.sleb128 21
	.uleb128 0x15
	.long	.LASF853
	.sleb128 22
	.uleb128 0x15
	.long	.LASF854
	.sleb128 23
	.uleb128 0x15
	.long	.LASF855
	.sleb128 24
	.uleb128 0x15
	.long	.LASF856
	.sleb128 25
	.uleb128 0x15
	.long	.LASF857
	.sleb128 26
	.uleb128 0x15
	.long	.LASF858
	.sleb128 27
	.uleb128 0x15
	.long	.LASF859
	.sleb128 28
	.uleb128 0x15
	.long	.LASF860
	.sleb128 29
	.uleb128 0x15
	.long	.LASF861
	.sleb128 30
	.uleb128 0x15
	.long	.LASF862
	.sleb128 31
	.uleb128 0x15
	.long	.LASF863
	.sleb128 32
	.uleb128 0x15
	.long	.LASF864
	.sleb128 33
	.uleb128 0x15
	.long	.LASF865
	.sleb128 34
	.uleb128 0x15
	.long	.LASF866
	.sleb128 35
	.uleb128 0x15
	.long	.LASF867
	.sleb128 36
	.uleb128 0x15
	.long	.LASF868
	.sleb128 37
	.uleb128 0x15
	.long	.LASF869
	.sleb128 38
	.uleb128 0x15
	.long	.LASF870
	.sleb128 39
	.uleb128 0x15
	.long	.LASF871
	.sleb128 40
	.uleb128 0x15
	.long	.LASF872
	.sleb128 41
	.uleb128 0x15
	.long	.LASF873
	.sleb128 42
	.uleb128 0x15
	.long	.LASF874
	.sleb128 43
	.uleb128 0x15
	.long	.LASF875
	.sleb128 44
	.uleb128 0x15
	.long	.LASF876
	.sleb128 45
	.uleb128 0x15
	.long	.LASF877
	.sleb128 46
	.uleb128 0x15
	.long	.LASF878
	.sleb128 47
	.uleb128 0x15
	.long	.LASF879
	.sleb128 48
	.uleb128 0x15
	.long	.LASF880
	.sleb128 49
	.uleb128 0x15
	.long	.LASF881
	.sleb128 50
	.uleb128 0x15
	.long	.LASF882
	.sleb128 51
	.uleb128 0x15
	.long	.LASF883
	.sleb128 52
	.uleb128 0x15
	.long	.LASF884
	.sleb128 53
	.uleb128 0x15
	.long	.LASF885
	.sleb128 54
	.uleb128 0x15
	.long	.LASF886
	.sleb128 55
	.uleb128 0x15
	.long	.LASF887
	.sleb128 56
	.uleb128 0x15
	.long	.LASF888
	.sleb128 57
	.uleb128 0x15
	.long	.LASF889
	.sleb128 58
	.uleb128 0x15
	.long	.LASF890
	.sleb128 59
	.uleb128 0x15
	.long	.LASF891
	.sleb128 60
	.uleb128 0x15
	.long	.LASF892
	.sleb128 61
	.uleb128 0x15
	.long	.LASF893
	.sleb128 62
	.uleb128 0x15
	.long	.LASF894
	.sleb128 63
	.uleb128 0x15
	.long	.LASF895
	.sleb128 64
	.uleb128 0x15
	.long	.LASF896
	.sleb128 65
	.uleb128 0x15
	.long	.LASF897
	.sleb128 66
	.uleb128 0x15
	.long	.LASF898
	.sleb128 67
	.uleb128 0x15
	.long	.LASF899
	.sleb128 68
	.byte	0
	.uleb128 0x1c
	.long	.LASF900
	.byte	0x4
	.byte	0xe
	.value	0x1a3
	.long	0x2519
	.uleb128 0x15
	.long	.LASF901
	.sleb128 0
	.uleb128 0x15
	.long	.LASF902
	.sleb128 1
	.uleb128 0x15
	.long	.LASF903
	.sleb128 2
	.uleb128 0x15
	.long	.LASF904
	.sleb128 3
	.uleb128 0x15
	.long	.LASF905
	.sleb128 4
	.uleb128 0x15
	.long	.LASF906
	.sleb128 5
	.uleb128 0x15
	.long	.LASF907
	.sleb128 6
	.uleb128 0x15
	.long	.LASF908
	.sleb128 7
	.byte	0
	.uleb128 0x21
	.byte	0x8
	.byte	0xe
	.value	0x1c0
	.long	0x2553
	.uleb128 0xa
	.long	.LASF909
	.byte	0xe
	.value	0x1c2
	.long	0x2553
	.uleb128 0xa
	.long	.LASF910
	.byte	0xe
	.value	0x1c3
	.long	0x255e
	.uleb128 0xa
	.long	.LASF911
	.byte	0xe
	.value	0x1c4
	.long	0x232b
	.uleb128 0xa
	.long	.LASF912
	.byte	0xe
	.value	0x1c5
	.long	0x24db
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x231b
	.uleb128 0x1b
	.long	.LASF913
	.uleb128 0x3
	.byte	0x8
	.long	0x2559
	.uleb128 0x25
	.string	"rid"
	.byte	0x4
	.byte	0xf
	.byte	0x33
	.long	0x287c
	.uleb128 0x15
	.long	.LASF914
	.sleb128 0
	.uleb128 0x15
	.long	.LASF915
	.sleb128 1
	.uleb128 0x15
	.long	.LASF916
	.sleb128 2
	.uleb128 0x15
	.long	.LASF917
	.sleb128 3
	.uleb128 0x15
	.long	.LASF918
	.sleb128 4
	.uleb128 0x15
	.long	.LASF919
	.sleb128 5
	.uleb128 0x15
	.long	.LASF920
	.sleb128 6
	.uleb128 0x15
	.long	.LASF921
	.sleb128 7
	.uleb128 0x15
	.long	.LASF922
	.sleb128 8
	.uleb128 0x15
	.long	.LASF923
	.sleb128 9
	.uleb128 0x15
	.long	.LASF924
	.sleb128 10
	.uleb128 0x15
	.long	.LASF925
	.sleb128 11
	.uleb128 0x15
	.long	.LASF926
	.sleb128 12
	.uleb128 0x15
	.long	.LASF927
	.sleb128 13
	.uleb128 0x15
	.long	.LASF928
	.sleb128 14
	.uleb128 0x15
	.long	.LASF929
	.sleb128 15
	.uleb128 0x15
	.long	.LASF930
	.sleb128 16
	.uleb128 0x15
	.long	.LASF931
	.sleb128 17
	.uleb128 0x15
	.long	.LASF932
	.sleb128 18
	.uleb128 0x15
	.long	.LASF933
	.sleb128 19
	.uleb128 0x15
	.long	.LASF934
	.sleb128 20
	.uleb128 0x15
	.long	.LASF935
	.sleb128 21
	.uleb128 0x15
	.long	.LASF936
	.sleb128 22
	.uleb128 0x15
	.long	.LASF937
	.sleb128 23
	.uleb128 0x15
	.long	.LASF938
	.sleb128 24
	.uleb128 0x15
	.long	.LASF939
	.sleb128 25
	.uleb128 0x15
	.long	.LASF940
	.sleb128 26
	.uleb128 0x15
	.long	.LASF941
	.sleb128 27
	.uleb128 0x15
	.long	.LASF942
	.sleb128 28
	.uleb128 0x15
	.long	.LASF943
	.sleb128 29
	.uleb128 0x15
	.long	.LASF944
	.sleb128 30
	.uleb128 0x15
	.long	.LASF945
	.sleb128 31
	.uleb128 0x15
	.long	.LASF946
	.sleb128 32
	.uleb128 0x15
	.long	.LASF947
	.sleb128 33
	.uleb128 0x15
	.long	.LASF948
	.sleb128 34
	.uleb128 0x15
	.long	.LASF949
	.sleb128 35
	.uleb128 0x15
	.long	.LASF950
	.sleb128 36
	.uleb128 0x15
	.long	.LASF951
	.sleb128 37
	.uleb128 0x15
	.long	.LASF952
	.sleb128 38
	.uleb128 0x15
	.long	.LASF953
	.sleb128 39
	.uleb128 0x15
	.long	.LASF954
	.sleb128 40
	.uleb128 0x15
	.long	.LASF955
	.sleb128 41
	.uleb128 0x15
	.long	.LASF956
	.sleb128 42
	.uleb128 0x15
	.long	.LASF957
	.sleb128 43
	.uleb128 0x15
	.long	.LASF958
	.sleb128 44
	.uleb128 0x15
	.long	.LASF959
	.sleb128 45
	.uleb128 0x15
	.long	.LASF960
	.sleb128 46
	.uleb128 0x15
	.long	.LASF961
	.sleb128 47
	.uleb128 0x15
	.long	.LASF962
	.sleb128 48
	.uleb128 0x15
	.long	.LASF963
	.sleb128 49
	.uleb128 0x15
	.long	.LASF964
	.sleb128 50
	.uleb128 0x15
	.long	.LASF965
	.sleb128 51
	.uleb128 0x15
	.long	.LASF966
	.sleb128 52
	.uleb128 0x15
	.long	.LASF967
	.sleb128 53
	.uleb128 0x15
	.long	.LASF968
	.sleb128 54
	.uleb128 0x15
	.long	.LASF969
	.sleb128 55
	.uleb128 0x15
	.long	.LASF970
	.sleb128 56
	.uleb128 0x15
	.long	.LASF971
	.sleb128 57
	.uleb128 0x15
	.long	.LASF972
	.sleb128 58
	.uleb128 0x15
	.long	.LASF973
	.sleb128 59
	.uleb128 0x15
	.long	.LASF974
	.sleb128 60
	.uleb128 0x15
	.long	.LASF975
	.sleb128 61
	.uleb128 0x15
	.long	.LASF976
	.sleb128 62
	.uleb128 0x15
	.long	.LASF977
	.sleb128 63
	.uleb128 0x15
	.long	.LASF978
	.sleb128 64
	.uleb128 0x15
	.long	.LASF979
	.sleb128 65
	.uleb128 0x15
	.long	.LASF980
	.sleb128 66
	.uleb128 0x15
	.long	.LASF981
	.sleb128 67
	.uleb128 0x15
	.long	.LASF982
	.sleb128 68
	.uleb128 0x15
	.long	.LASF983
	.sleb128 69
	.uleb128 0x15
	.long	.LASF984
	.sleb128 70
	.uleb128 0x15
	.long	.LASF985
	.sleb128 71
	.uleb128 0x15
	.long	.LASF986
	.sleb128 72
	.uleb128 0x15
	.long	.LASF987
	.sleb128 73
	.uleb128 0x15
	.long	.LASF988
	.sleb128 74
	.uleb128 0x15
	.long	.LASF989
	.sleb128 75
	.uleb128 0x15
	.long	.LASF990
	.sleb128 76
	.uleb128 0x15
	.long	.LASF991
	.sleb128 77
	.uleb128 0x15
	.long	.LASF992
	.sleb128 78
	.uleb128 0x15
	.long	.LASF993
	.sleb128 79
	.uleb128 0x15
	.long	.LASF994
	.sleb128 80
	.uleb128 0x15
	.long	.LASF995
	.sleb128 81
	.uleb128 0x15
	.long	.LASF996
	.sleb128 82
	.uleb128 0x15
	.long	.LASF997
	.sleb128 83
	.uleb128 0x15
	.long	.LASF998
	.sleb128 84
	.uleb128 0x15
	.long	.LASF999
	.sleb128 85
	.uleb128 0x15
	.long	.LASF1000
	.sleb128 86
	.uleb128 0x15
	.long	.LASF1001
	.sleb128 87
	.uleb128 0x15
	.long	.LASF1002
	.sleb128 88
	.uleb128 0x15
	.long	.LASF1003
	.sleb128 89
	.uleb128 0x15
	.long	.LASF1004
	.sleb128 90
	.uleb128 0x15
	.long	.LASF1005
	.sleb128 91
	.uleb128 0x15
	.long	.LASF1006
	.sleb128 92
	.uleb128 0x15
	.long	.LASF1007
	.sleb128 93
	.uleb128 0x15
	.long	.LASF1008
	.sleb128 94
	.uleb128 0x15
	.long	.LASF1009
	.sleb128 95
	.uleb128 0x15
	.long	.LASF1010
	.sleb128 96
	.uleb128 0x15
	.long	.LASF1011
	.sleb128 97
	.uleb128 0x15
	.long	.LASF1012
	.sleb128 98
	.uleb128 0x15
	.long	.LASF1013
	.sleb128 99
	.uleb128 0x15
	.long	.LASF1014
	.sleb128 100
	.uleb128 0x15
	.long	.LASF1015
	.sleb128 101
	.uleb128 0x15
	.long	.LASF1016
	.sleb128 102
	.uleb128 0x15
	.long	.LASF1017
	.sleb128 103
	.uleb128 0x15
	.long	.LASF1018
	.sleb128 104
	.uleb128 0x15
	.long	.LASF1019
	.sleb128 105
	.uleb128 0x15
	.long	.LASF1020
	.sleb128 106
	.uleb128 0x15
	.long	.LASF1021
	.sleb128 107
	.uleb128 0x15
	.long	.LASF1022
	.sleb128 108
	.uleb128 0x15
	.long	.LASF1023
	.sleb128 109
	.uleb128 0x15
	.long	.LASF1024
	.sleb128 110
	.uleb128 0x15
	.long	.LASF1025
	.sleb128 111
	.uleb128 0x15
	.long	.LASF1026
	.sleb128 112
	.uleb128 0x15
	.long	.LASF1027
	.sleb128 113
	.uleb128 0x15
	.long	.LASF1028
	.sleb128 114
	.uleb128 0x15
	.long	.LASF1029
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1030
	.sleb128 26
	.uleb128 0x15
	.long	.LASF1031
	.sleb128 102
	.uleb128 0x15
	.long	.LASF1032
	.sleb128 113
	.uleb128 0x15
	.long	.LASF1033
	.sleb128 21
	.uleb128 0x15
	.long	.LASF1034
	.sleb128 26
	.byte	0
	.uleb128 0x14
	.long	.LASF1035
	.byte	0x4
	.byte	0xf
	.byte	0x85
	.long	0x294f
	.uleb128 0x15
	.long	.LASF1036
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1037
	.sleb128 1
	.uleb128 0x15
	.long	.LASF1038
	.sleb128 2
	.uleb128 0x15
	.long	.LASF1039
	.sleb128 3
	.uleb128 0x15
	.long	.LASF1040
	.sleb128 4
	.uleb128 0x15
	.long	.LASF1041
	.sleb128 5
	.uleb128 0x15
	.long	.LASF1042
	.sleb128 6
	.uleb128 0x15
	.long	.LASF1043
	.sleb128 7
	.uleb128 0x15
	.long	.LASF1044
	.sleb128 8
	.uleb128 0x15
	.long	.LASF1045
	.sleb128 9
	.uleb128 0x15
	.long	.LASF1046
	.sleb128 10
	.uleb128 0x15
	.long	.LASF1047
	.sleb128 11
	.uleb128 0x15
	.long	.LASF1048
	.sleb128 12
	.uleb128 0x15
	.long	.LASF1049
	.sleb128 13
	.uleb128 0x15
	.long	.LASF1050
	.sleb128 14
	.uleb128 0x15
	.long	.LASF1051
	.sleb128 15
	.uleb128 0x15
	.long	.LASF1052
	.sleb128 16
	.uleb128 0x15
	.long	.LASF1053
	.sleb128 17
	.uleb128 0x15
	.long	.LASF1054
	.sleb128 18
	.uleb128 0x15
	.long	.LASF1055
	.sleb128 19
	.uleb128 0x15
	.long	.LASF1056
	.sleb128 20
	.uleb128 0x15
	.long	.LASF1057
	.sleb128 21
	.uleb128 0x15
	.long	.LASF1058
	.sleb128 22
	.uleb128 0x15
	.long	.LASF1059
	.sleb128 23
	.uleb128 0x15
	.long	.LASF1060
	.sleb128 24
	.uleb128 0x15
	.long	.LASF1061
	.sleb128 25
	.uleb128 0x15
	.long	.LASF1062
	.sleb128 26
	.uleb128 0x15
	.long	.LASF1063
	.sleb128 27
	.uleb128 0x15
	.long	.LASF1064
	.sleb128 28
	.uleb128 0x15
	.long	.LASF1065
	.sleb128 29
	.uleb128 0x15
	.long	.LASF1066
	.sleb128 30
	.uleb128 0x15
	.long	.LASF1067
	.sleb128 31
	.uleb128 0x15
	.long	.LASF1068
	.sleb128 32
	.byte	0
	.uleb128 0x4
	.long	.LASF1069
	.byte	0x38
	.byte	0xf
	.byte	0xba
	.long	0x2974
	.uleb128 0x8
	.long	.LASF16
	.byte	0xf
	.byte	0xbc
	.long	0x1360
	.byte	0
	.uleb128 0x8
	.long	.LASF1070
	.byte	0xf
	.byte	0xbd
	.long	0x22af
	.byte	0x18
	.byte	0
	.uleb128 0x1f
	.long	.LASF1071
	.byte	0x4
	.byte	0xf
	.value	0x165
	.long	0x2992
	.uleb128 0x20
	.long	.LASF1072
	.byte	0xf
	.value	0x166
	.long	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF1073
	.byte	0x4
	.byte	0xf
	.value	0x2e3
	.long	0x2a56
	.uleb128 0x15
	.long	.LASF1074
	.sleb128 147
	.uleb128 0x15
	.long	.LASF1075
	.sleb128 148
	.uleb128 0x15
	.long	.LASF1076
	.sleb128 149
	.uleb128 0x15
	.long	.LASF1077
	.sleb128 150
	.uleb128 0x15
	.long	.LASF1078
	.sleb128 151
	.uleb128 0x15
	.long	.LASF1079
	.sleb128 152
	.uleb128 0x15
	.long	.LASF1080
	.sleb128 153
	.uleb128 0x15
	.long	.LASF1081
	.sleb128 154
	.uleb128 0x15
	.long	.LASF1082
	.sleb128 155
	.uleb128 0x15
	.long	.LASF1083
	.sleb128 156
	.uleb128 0x15
	.long	.LASF1084
	.sleb128 157
	.uleb128 0x15
	.long	.LASF1085
	.sleb128 158
	.uleb128 0x15
	.long	.LASF1086
	.sleb128 159
	.uleb128 0x15
	.long	.LASF1087
	.sleb128 160
	.uleb128 0x15
	.long	.LASF1088
	.sleb128 161
	.uleb128 0x15
	.long	.LASF1089
	.sleb128 162
	.uleb128 0x15
	.long	.LASF1090
	.sleb128 163
	.uleb128 0x15
	.long	.LASF1091
	.sleb128 164
	.uleb128 0x15
	.long	.LASF1092
	.sleb128 165
	.uleb128 0x15
	.long	.LASF1093
	.sleb128 166
	.uleb128 0x15
	.long	.LASF1094
	.sleb128 167
	.uleb128 0x15
	.long	.LASF1095
	.sleb128 168
	.uleb128 0x15
	.long	.LASF1096
	.sleb128 169
	.uleb128 0x15
	.long	.LASF1097
	.sleb128 170
	.uleb128 0x15
	.long	.LASF1098
	.sleb128 171
	.uleb128 0x15
	.long	.LASF1099
	.sleb128 172
	.byte	0
	.uleb128 0x4
	.long	.LASF1100
	.byte	0x68
	.byte	0xc
	.byte	0x25
	.long	0x2ab7
	.uleb128 0x8
	.long	.LASF1101
	.byte	0xc
	.byte	0x27
	.long	0x294f
	.byte	0
	.uleb128 0x8
	.long	.LASF1102
	.byte	0xc
	.byte	0x28
	.long	0x123
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1103
	.byte	0xc
	.byte	0x28
	.long	0x123
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1104
	.byte	0xc
	.byte	0x28
	.long	0x123
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1105
	.byte	0xc
	.byte	0x28
	.long	0x123
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1106
	.byte	0xc
	.byte	0x29
	.long	0x123
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1107
	.byte	0xc
	.byte	0x29
	.long	0x123
	.byte	0x60
	.byte	0
	.uleb128 0x14
	.long	.LASF1108
	.byte	0x4
	.byte	0x10
	.byte	0x34
	.long	0x2ae2
	.uleb128 0x15
	.long	.LASF1109
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1110
	.sleb128 1
	.uleb128 0x15
	.long	.LASF1111
	.sleb128 2
	.uleb128 0x15
	.long	.LASF1112
	.sleb128 3
	.uleb128 0x15
	.long	.LASF1113
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF1114
	.byte	0x20
	.byte	0x11
	.byte	0x39
	.long	0x2b1b
	.uleb128 0x6
	.string	"hi"
	.byte	0x11
	.byte	0x3b
	.long	0x448
	.byte	0
	.uleb128 0x6
	.string	"si"
	.byte	0x11
	.byte	0x3c
	.long	0x448
	.byte	0x8
	.uleb128 0x6
	.string	"di"
	.byte	0x11
	.byte	0x3d
	.long	0x448
	.byte	0x10
	.uleb128 0x6
	.string	"ti"
	.byte	0x11
	.byte	0x3e
	.long	0x448
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF1115
	.byte	0xa8
	.byte	0x11
	.byte	0x32
	.long	0x2bdc
	.uleb128 0x8
	.long	.LASF1116
	.byte	0x11
	.byte	0x35
	.long	0x448
	.byte	0
	.uleb128 0x8
	.long	.LASF1117
	.byte	0x11
	.byte	0x35
	.long	0x448
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1118
	.byte	0x11
	.byte	0x38
	.long	0x448
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1119
	.byte	0x11
	.byte	0x3f
	.long	0x2ae2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1120
	.byte	0x11
	.byte	0x3f
	.long	0x2ae2
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1121
	.byte	0x11
	.byte	0x46
	.long	0x2bf5
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1122
	.byte	0x11
	.byte	0x49
	.long	0x2c11
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1123
	.byte	0x11
	.byte	0x4c
	.long	0x2c22
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1124
	.byte	0x11
	.byte	0x4f
	.long	0x2c22
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1125
	.byte	0x11
	.byte	0x52
	.long	0x2c11
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1126
	.byte	0x11
	.byte	0x56
	.long	0x2c38
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1127
	.byte	0x11
	.byte	0x59
	.long	0x2c3f
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1128
	.byte	0x11
	.byte	0x5c
	.long	0x2c3f
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1129
	.byte	0x11
	.byte	0x5f
	.long	0x2c55
	.byte	0x98
	.uleb128 0x8
	.long	.LASF1130
	.byte	0x11
	.byte	0x62
	.long	0x2c55
	.byte	0xa0
	.byte	0
	.uleb128 0x22
	.long	0x20bd
	.long	0x2bf5
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x1f1
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2bdc
	.uleb128 0x24
	.long	0x2c0b
	.uleb128 0x23
	.long	0x2c0b
	.uleb128 0x23
	.long	0x1fa
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x252
	.uleb128 0x3
	.byte	0x8
	.long	0x2bfb
	.uleb128 0x24
	.long	0x2c22
	.uleb128 0x23
	.long	0x2c0b
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c17
	.uleb128 0x24
	.long	0x2c38
	.uleb128 0x23
	.long	0x448
	.uleb128 0x23
	.long	0x1f1
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c28
	.uleb128 0x26
	.uleb128 0x3
	.byte	0x8
	.long	0x2c3e
	.uleb128 0x24
	.long	0x2c55
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c45
	.uleb128 0x4
	.long	.LASF1131
	.byte	0x48
	.byte	0x11
	.byte	0x66
	.long	0x2cd4
	.uleb128 0x8
	.long	.LASF1132
	.byte	0x11
	.byte	0x6b
	.long	0x2cf2
	.byte	0
	.uleb128 0x8
	.long	.LASF1133
	.byte	0x11
	.byte	0x6f
	.long	0x2d0c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1134
	.byte	0x11
	.byte	0x74
	.long	0x2d17
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1135
	.byte	0x11
	.byte	0x78
	.long	0x2d3b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1136
	.byte	0x11
	.byte	0x7b
	.long	0x2d56
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1137
	.byte	0x11
	.byte	0x7e
	.long	0x2d6c
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1138
	.byte	0x11
	.byte	0x82
	.long	0x2d95
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1139
	.byte	0x11
	.byte	0x83
	.long	0x2d95
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1140
	.byte	0x11
	.byte	0x8a
	.long	0x2daf
	.byte	0x40
	.byte	0
	.uleb128 0x22
	.long	0x1e3
	.long	0x2cf2
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cd4
	.uleb128 0x22
	.long	0x1e3
	.long	0x2d0c
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cf8
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x2d12
	.uleb128 0x22
	.long	0x1e3
	.long	0x2d3b
	.uleb128 0x23
	.long	0x2c0b
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d1d
	.uleb128 0x24
	.long	0x2d56
	.uleb128 0x23
	.long	0x2c0b
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d41
	.uleb128 0x24
	.long	0x2d6c
	.uleb128 0x23
	.long	0x2c0b
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d5c
	.uleb128 0x22
	.long	0x1e3
	.long	0x2d95
	.uleb128 0x23
	.long	0x2c0b
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0xc99
	.uleb128 0x23
	.long	0x461
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d72
	.uleb128 0x22
	.long	0x2d
	.long	0x2daf
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d9b
	.uleb128 0x28
	.long	.LASF1141
	.value	0x158
	.byte	0x11
	.byte	0x2f
	.long	0x2e8f
	.uleb128 0x8
	.long	.LASF1115
	.byte	0x11
	.byte	0x63
	.long	0x2b1b
	.byte	0
	.uleb128 0x8
	.long	.LASF1131
	.byte	0x11
	.byte	0x8b
	.long	0x2c5b
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF1142
	.byte	0x11
	.byte	0x8e
	.long	0x2ea3
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF1143
	.byte	0x11
	.byte	0x91
	.long	0x2ea3
	.byte	0xf8
	.uleb128 0x29
	.long	.LASF1144
	.byte	0x11
	.byte	0x94
	.long	0x2ea9
	.value	0x100
	.uleb128 0x29
	.long	.LASF1145
	.byte	0x11
	.byte	0x99
	.long	0x2ec8
	.value	0x108
	.uleb128 0x29
	.long	.LASF1146
	.byte	0x11
	.byte	0x9c
	.long	0x2ed9
	.value	0x110
	.uleb128 0x29
	.long	.LASF1147
	.byte	0x11
	.byte	0x9f
	.long	0x2eef
	.value	0x118
	.uleb128 0x29
	.long	.LASF1148
	.byte	0x11
	.byte	0xa3
	.long	0x2f04
	.value	0x120
	.uleb128 0x29
	.long	.LASF1149
	.byte	0x11
	.byte	0xa7
	.long	0x2f04
	.value	0x128
	.uleb128 0x29
	.long	.LASF1150
	.byte	0x11
	.byte	0xaa
	.long	0x2c3f
	.value	0x130
	.uleb128 0x29
	.long	.LASF1151
	.byte	0x11
	.byte	0xad
	.long	0x2f2d
	.value	0x138
	.uleb128 0x29
	.long	.LASF1152
	.byte	0x11
	.byte	0xb3
	.long	0x2f4c
	.value	0x140
	.uleb128 0x29
	.long	.LASF1153
	.byte	0x11
	.byte	0xb6
	.long	0x20bd
	.value	0x148
	.uleb128 0x29
	.long	.LASF1154
	.byte	0x11
	.byte	0xba
	.long	0x20bd
	.value	0x149
	.uleb128 0x29
	.long	.LASF1155
	.byte	0x11
	.byte	0xbe
	.long	0x2f57
	.value	0x150
	.byte	0
	.uleb128 0x22
	.long	0x123
	.long	0x2ea3
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2e8f
	.uleb128 0x3
	.byte	0x8
	.long	0x2eaf
	.uleb128 0xc
	.long	0x204a
	.uleb128 0x22
	.long	0x1e3
	.long	0x2ec8
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2eb4
	.uleb128 0x24
	.long	0x2ed9
	.uleb128 0x23
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ece
	.uleb128 0x24
	.long	0x2eef
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x20e7
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2edf
	.uleb128 0x22
	.long	0x20bd
	.long	0x2f04
	.uleb128 0x23
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ef5
	.uleb128 0x22
	.long	0x2d
	.long	0x2f2d
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x467
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2f0a
	.uleb128 0x22
	.long	0x1f1
	.long	0x2f4c
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x448
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2f33
	.uleb128 0x27
	.long	0x20bd
	.uleb128 0x3
	.byte	0x8
	.long	0x2f52
	.uleb128 0x21
	.byte	0x8
	.byte	0x1
	.value	0x1180
	.long	0x2f7b
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.value	0x1182
	.long	0x1e3
	.uleb128 0xb
	.string	"s"
	.byte	0x1
	.value	0x1183
	.long	0x448
	.byte	0
	.uleb128 0x1f
	.long	.LASF1156
	.byte	0x10
	.byte	0x1
	.value	0x117d
	.long	0x2fa1
	.uleb128 0x10
	.long	.LASF1157
	.byte	0x1
	.value	0x117f
	.long	0x1e3
	.byte	0
	.uleb128 0x1e
	.string	"u"
	.byte	0x1
	.value	0x1184
	.long	0x2f5d
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF1158
	.byte	0x30
	.byte	0x1
	.value	0x134e
	.long	0x2ffd
	.uleb128 0x10
	.long	.LASF807
	.byte	0x1
	.value	0x1350
	.long	0x2ffd
	.byte	0
	.uleb128 0x10
	.long	.LASF808
	.byte	0x1
	.value	0x1350
	.long	0x2ffd
	.byte	0x8
	.uleb128 0x10
	.long	.LASF1159
	.byte	0x1
	.value	0x1351
	.long	0x2ffd
	.byte	0x10
	.uleb128 0x10
	.long	.LASF1160
	.byte	0x1
	.value	0x1352
	.long	0x1e3
	.byte	0x18
	.uleb128 0x10
	.long	.LASF635
	.byte	0x1
	.value	0x1353
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF636
	.byte	0x1
	.value	0x1354
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2fa1
	.uleb128 0x1f
	.long	.LASF1161
	.byte	0x70
	.byte	0x1
	.value	0x1382
	.long	0x3122
	.uleb128 0x10
	.long	.LASF1162
	.byte	0x1
	.value	0x1384
	.long	0x3122
	.byte	0
	.uleb128 0x10
	.long	.LASF24
	.byte	0x1
	.value	0x1385
	.long	0x123
	.byte	0x8
	.uleb128 0x10
	.long	.LASF1163
	.byte	0x1
	.value	0x1386
	.long	0x123
	.byte	0x10
	.uleb128 0x10
	.long	.LASF1164
	.byte	0x1
	.value	0x1387
	.long	0x123
	.byte	0x18
	.uleb128 0x10
	.long	.LASF1165
	.byte	0x1
	.value	0x1388
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF1166
	.byte	0x1
	.value	0x1389
	.long	0x123
	.byte	0x28
	.uleb128 0x10
	.long	.LASF1167
	.byte	0x1
	.value	0x138a
	.long	0x123
	.byte	0x30
	.uleb128 0x10
	.long	.LASF1168
	.byte	0x1
	.value	0x138b
	.long	0x123
	.byte	0x38
	.uleb128 0x10
	.long	.LASF631
	.byte	0x1
	.value	0x138c
	.long	0x123
	.byte	0x40
	.uleb128 0x10
	.long	.LASF1169
	.byte	0x1
	.value	0x138d
	.long	0x2ffd
	.byte	0x48
	.uleb128 0x10
	.long	.LASF286
	.byte	0x1
	.value	0x138e
	.long	0x1e3
	.byte	0x50
	.uleb128 0x10
	.long	.LASF1170
	.byte	0x1
	.value	0x138f
	.long	0x1e3
	.byte	0x54
	.uleb128 0x10
	.long	.LASF1171
	.byte	0x1
	.value	0x1392
	.long	0x123
	.byte	0x58
	.uleb128 0x10
	.long	.LASF1172
	.byte	0x1
	.value	0x1393
	.long	0x3191
	.byte	0x60
	.uleb128 0x10
	.long	.LASF1173
	.byte	0x1
	.value	0x1394
	.long	0x24b
	.byte	0x68
	.uleb128 0x10
	.long	.LASF1174
	.byte	0x1
	.value	0x1395
	.long	0x24b
	.byte	0x69
	.uleb128 0x10
	.long	.LASF1175
	.byte	0x1
	.value	0x1396
	.long	0x24b
	.byte	0x6a
	.uleb128 0x10
	.long	.LASF1176
	.byte	0x1
	.value	0x1397
	.long	0x24b
	.byte	0x6b
	.uleb128 0x10
	.long	.LASF1177
	.byte	0x1
	.value	0x1398
	.long	0x24b
	.byte	0x6c
	.uleb128 0x10
	.long	.LASF1178
	.byte	0x1
	.value	0x1399
	.long	0x24b
	.byte	0x6d
	.uleb128 0x10
	.long	.LASF1179
	.byte	0x1
	.value	0x139a
	.long	0x24b
	.byte	0x6e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3003
	.uleb128 0x1f
	.long	.LASF1180
	.byte	0x38
	.byte	0x1
	.value	0x13a2
	.long	0x3191
	.uleb128 0x10
	.long	.LASF1162
	.byte	0x1
	.value	0x13a4
	.long	0x3191
	.byte	0
	.uleb128 0x10
	.long	.LASF1181
	.byte	0x1
	.value	0x13a4
	.long	0x3191
	.byte	0x8
	.uleb128 0x10
	.long	.LASF1182
	.byte	0x1
	.value	0x13a5
	.long	0x3122
	.byte	0x10
	.uleb128 0x10
	.long	.LASF1183
	.byte	0x1
	.value	0x13a6
	.long	0x123
	.byte	0x18
	.uleb128 0x10
	.long	.LASF1164
	.byte	0x1
	.value	0x13a7
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF1184
	.byte	0x1
	.value	0x13a8
	.long	0x123
	.byte	0x28
	.uleb128 0x10
	.long	.LASF1163
	.byte	0x1
	.value	0x13a9
	.long	0x123
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3128
	.uleb128 0x1f
	.long	.LASF1185
	.byte	0x48
	.byte	0x1
	.value	0x13b2
	.long	0x324e
	.uleb128 0x10
	.long	.LASF1162
	.byte	0x1
	.value	0x13b4
	.long	0x324e
	.byte	0
	.uleb128 0x10
	.long	.LASF23
	.byte	0x1
	.value	0x13b5
	.long	0x123
	.byte	0x8
	.uleb128 0x10
	.long	.LASF1186
	.byte	0x1
	.value	0x13b6
	.long	0x448
	.byte	0x10
	.uleb128 0x10
	.long	.LASF1161
	.byte	0x1
	.value	0x13b7
	.long	0x3122
	.byte	0x18
	.uleb128 0x10
	.long	.LASF1180
	.byte	0x1
	.value	0x13b8
	.long	0x3191
	.byte	0x20
	.uleb128 0x10
	.long	.LASF631
	.byte	0x1
	.value	0x13b9
	.long	0x123
	.byte	0x28
	.uleb128 0x10
	.long	.LASF1156
	.byte	0x1
	.value	0x13ba
	.long	0x3254
	.byte	0x30
	.uleb128 0x10
	.long	.LASF1187
	.byte	0x1
	.value	0x13bb
	.long	0x3254
	.byte	0x38
	.uleb128 0x10
	.long	.LASF1188
	.byte	0x1
	.value	0x13bc
	.long	0x1e3
	.byte	0x40
	.uleb128 0x10
	.long	.LASF1189
	.byte	0x1
	.value	0x13bd
	.long	0x24b
	.byte	0x44
	.uleb128 0x10
	.long	.LASF1190
	.byte	0x1
	.value	0x13be
	.long	0x24b
	.byte	0x45
	.uleb128 0x10
	.long	.LASF1191
	.byte	0x1
	.value	0x13bf
	.long	0x24b
	.byte	0x46
	.uleb128 0x10
	.long	.LASF1192
	.byte	0x1
	.value	0x13c0
	.long	0x24b
	.byte	0x47
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3197
	.uleb128 0x3
	.byte	0x8
	.long	0x2f7b
	.uleb128 0x1f
	.long	.LASF1193
	.byte	0x18
	.byte	0x1
	.value	0x1bd6
	.long	0x328f
	.uleb128 0x10
	.long	.LASF1194
	.byte	0x1
	.value	0x1bd8
	.long	0x123
	.byte	0
	.uleb128 0x10
	.long	.LASF1195
	.byte	0x1
	.value	0x1bde
	.long	0x229e
	.byte	0x8
	.uleb128 0x10
	.long	.LASF1162
	.byte	0x1
	.value	0x1be0
	.long	0x328f
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x325a
	.uleb128 0x2a
	.long	.LASF1198
	.byte	0x1
	.byte	0x5a
	.long	0x123
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x32d3
	.uleb128 0x2b
	.long	.LASF636
	.byte	0x1
	.byte	0x5b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.byte	0x5d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1334
	.byte	0x1
	.byte	0x6f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x333d
	.uleb128 0x2b
	.long	.LASF636
	.byte	0x1
	.byte	0x70
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF24
	.byte	0x1
	.byte	0x71
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF1196
	.byte	0x1
	.byte	0x73
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF1202
	.byte	0x1
	.byte	0x7f
	.quad	.L9
	.uleb128 0x2f
	.long	.LASF1402
	.long	0x334d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13791
	.byte	0
	.uleb128 0x12
	.long	0x24b
	.long	0x334d
	.uleb128 0x13
	.long	0x1ea
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.long	0x333d
	.uleb128 0x30
	.long	.LASF1221
	.byte	0x1
	.byte	0xb4
	.long	0x123
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3390
	.uleb128 0x2b
	.long	.LASF24
	.byte	0x1
	.byte	0xb5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF1197
	.byte	0x1
	.byte	0xb5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF1199
	.byte	0x1
	.byte	0xc4
	.long	0x123
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3578
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.byte	0xc5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.byte	0xc5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.long	.LASF1200
	.byte	0x1
	.byte	0xc7
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2c
	.long	.LASF1201
	.byte	0x1
	.byte	0xc8
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF655
	.byte	0x1
	.byte	0xc9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.long	.LASF1203
	.byte	0x1
	.value	0x1a5
	.quad	.L79
	.uleb128 0x33
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x344a
	.uleb128 0x2c
	.long	.LASF1204
	.byte	0x1
	.byte	0xe7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1205
	.byte	0x1
	.byte	0xe8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF1206
	.byte	0x1
	.byte	0xe9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x348f
	.uleb128 0x34
	.long	.LASF1207
	.byte	0x1
	.value	0x12e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF1208
	.byte	0x1
	.value	0x12f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF1209
	.byte	0x1
	.value	0x130
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x33
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x34b4
	.uleb128 0x35
	.string	"elt"
	.byte	0x1
	.value	0x13f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x36
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x34
	.long	.LASF1210
	.byte	0x1
	.value	0x14e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"p1"
	.byte	0x1
	.value	0x14f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x35
	.string	"p2"
	.byte	0x1
	.value	0x150
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x35
	.string	"len"
	.byte	0x1
	.value	0x151
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x34
	.long	.LASF1211
	.byte	0x1
	.value	0x152
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.string	"n"
	.byte	0x1
	.value	0x152
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x153
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x3554
	.uleb128 0x34
	.long	.LASF1212
	.byte	0x1
	.value	0x18b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x36
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x34
	.long	.LASF1212
	.byte	0x1
	.value	0x199
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1213
	.byte	0x1
	.value	0x1b9
	.long	0x1e3
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x365f
	.uleb128 0x38
	.long	.LASF1214
	.byte	0x1
	.value	0x1ba
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1215
	.byte	0x1
	.value	0x1ba
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.string	"t1"
	.byte	0x1
	.value	0x1bc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"t2"
	.byte	0x1
	.value	0x1bd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1216
	.byte	0x1
	.value	0x1be
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0x1be
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x35
	.string	"d1"
	.byte	0x1
	.value	0x1ff
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"d2"
	.byte	0x1
	.value	0x200
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1217
	.byte	0x1
	.value	0x201
	.long	0x20bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x34
	.long	.LASF1218
	.byte	0x1
	.value	0x201
	.long	0x20bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x34
	.long	.LASF1219
	.byte	0x1
	.value	0x202
	.long	0x20bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF1220
	.byte	0x1
	.value	0x202
	.long	0x20bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -59
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1222
	.byte	0x1
	.value	0x233
	.long	0x1e3
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x36af
	.uleb128 0x3a
	.string	"ttl"
	.byte	0x1
	.value	0x234
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.string	"ttr"
	.byte	0x1
	.value	0x234
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0x236
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.long	.LASF1223
	.byte	0x1
	.value	0x24e
	.long	0x1e3
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x372a
	.uleb128 0x3a
	.string	"f1"
	.byte	0x1
	.value	0x24f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3a
	.string	"f2"
	.byte	0x1
	.value	0x24f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1224
	.byte	0x1
	.value	0x251
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1225
	.byte	0x1
	.value	0x251
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0x253
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1226
	.byte	0x1
	.value	0x254
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x39
	.long	.LASF1227
	.byte	0x1
	.value	0x280
	.long	0x1e3
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x37cf
	.uleb128 0x38
	.long	.LASF1224
	.byte	0x1
	.value	0x281
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF1225
	.byte	0x1
	.value	0x281
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0x284
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1228
	.byte	0x1
	.value	0x285
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x37ad
	.uleb128 0x34
	.long	.LASF1212
	.byte	0x1
	.value	0x2a9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x34
	.long	.LASF1212
	.byte	0x1
	.value	0x2b8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1229
	.byte	0x1
	.value	0x2d0
	.long	0x123
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x381f
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0x2d1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x2d3
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF287
	.byte	0x1
	.value	0x2d4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1230
	.byte	0x1
	.value	0x2f7
	.long	0x123
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x386f
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0x2f8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x2fa
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF287
	.byte	0x1
	.value	0x2fb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1231
	.byte	0x1
	.value	0x311
	.long	0x123
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x38b0
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0x312
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x314
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3b
	.long	.LASF1232
	.byte	0x1
	.value	0x328
	.long	0x123
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x38e2
	.uleb128 0x38
	.long	.LASF23
	.byte	0x1
	.value	0x329
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1233
	.byte	0x1
	.value	0x345
	.long	0x123
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3914
	.uleb128 0x38
	.long	.LASF23
	.byte	0x1
	.value	0x346
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1234
	.byte	0x1
	.value	0x354
	.long	0x123
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a15
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0x355
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF1235
	.byte	0x1
	.value	0x357
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x358
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x359
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF1236
	.byte	0x1
	.value	0x35a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x36
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x35
	.string	"adr"
	.byte	0x1
	.value	0x375
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1237
	.byte	0x1
	.value	0x376
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1238
	.byte	0x1
	.value	0x377
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1239
	.byte	0x1
	.value	0x378
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF1240
	.byte	0x1
	.value	0x379
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x34
	.long	.LASF1241
	.byte	0x1
	.value	0x37a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x35
	.string	"op1"
	.byte	0x1
	.value	0x38f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1242
	.byte	0x1
	.value	0x3bb
	.long	0x123
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a74
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0x3bc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1235
	.byte	0x1
	.value	0x3be
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x3bf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x3c0
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x39
	.long	.LASF1243
	.byte	0x1
	.value	0x41b
	.long	0x123
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b6a
	.uleb128 0x38
	.long	.LASF23
	.byte	0x1
	.value	0x41c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.long	.LASF1244
	.byte	0x1
	.value	0x41c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x41e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1245
	.byte	0x1
	.value	0x41f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x3b48
	.uleb128 0x35
	.string	"bot"
	.byte	0x1
	.value	0x428
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.string	"top"
	.byte	0x1
	.value	0x428
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1246
	.byte	0x1
	.value	0x428
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF1247
	.byte	0x1
	.value	0x429
	.long	0x20e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x34
	.long	.LASF1248
	.byte	0x1
	.value	0x43c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x34
	.long	.LASF1248
	.byte	0x1
	.value	0x460
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1249
	.byte	0x1
	.value	0x475
	.long	0x123
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c2f
	.uleb128 0x38
	.long	.LASF1250
	.byte	0x1
	.value	0x476
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1244
	.byte	0x1
	.value	0x476
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x478
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x479
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF1245
	.byte	0x1
	.value	0x47a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"ref"
	.byte	0x1
	.value	0x47b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x3c0d
	.uleb128 0x34
	.long	.LASF636
	.byte	0x1
	.value	0x489
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x34
	.long	.LASF1251
	.byte	0x1
	.value	0x4ac
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1252
	.byte	0x1
	.value	0x4cb
	.long	0x123
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cbc
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.value	0x4cc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF1253
	.byte	0x1
	.value	0x4cd
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF626
	.byte	0x1
	.value	0x4cf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x4d0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x4db
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"ref"
	.byte	0x1
	.value	0x4dc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1254
	.byte	0x1
	.value	0x503
	.long	0x123
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3da4
	.uleb128 0x38
	.long	.LASF1255
	.byte	0x1
	.value	0x504
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1164
	.byte	0x1
	.value	0x504
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x3d53
	.uleb128 0x34
	.long	.LASF1256
	.byte	0x1
	.value	0x513
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x513
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x35
	.string	"foo"
	.byte	0x1
	.value	0x542
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x35
	.string	"ar"
	.byte	0x1
	.value	0x560
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"ind"
	.byte	0x1
	.value	0x561
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x34
	.long	.LASF1257
	.byte	0x1
	.value	0x56e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1258
	.byte	0x1
	.value	0x58a
	.long	0x123
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e11
	.uleb128 0x3a
	.string	"id"
	.byte	0x1
	.value	0x58b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3a
	.string	"fun"
	.byte	0x1
	.value	0x58c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"ref"
	.byte	0x1
	.value	0x58e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF23
	.byte	0x1
	.value	0x58f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1259
	.byte	0x1
	.value	0x590
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1260
	.byte	0x1
	.value	0x5ea
	.long	0x123
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3eae
	.uleb128 0x38
	.long	.LASF680
	.byte	0x1
	.value	0x5eb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1261
	.byte	0x1
	.value	0x5eb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF1262
	.byte	0x1
	.value	0x5ed
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1263
	.byte	0x1
	.value	0x5ed
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1264
	.byte	0x1
	.value	0x5ee
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF668
	.byte	0x1
	.value	0x5ef
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF711
	.byte	0x1
	.value	0x5ef
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF709
	.byte	0x1
	.value	0x5ef
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1265
	.byte	0x1
	.value	0x64e
	.long	0x123
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ff3
	.uleb128 0x38
	.long	.LASF1266
	.byte	0x1
	.value	0x64f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x38
	.long	.LASF653
	.byte	0x1
	.value	0x64f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x38
	.long	.LASF668
	.byte	0x1
	.value	0x64f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x38
	.long	.LASF1263
	.byte	0x1
	.value	0x64f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x34
	.long	.LASF1267
	.byte	0x1
	.value	0x651
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF1268
	.byte	0x1
	.value	0x651
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF709
	.byte	0x1
	.value	0x652
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1269
	.byte	0x1
	.value	0x653
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x65c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0x65d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x34
	.long	.LASF1270
	.byte	0x1
	.value	0x676
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x34
	.long	.LASF1271
	.byte	0x1
	.value	0x683
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x36
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x34
	.long	.LASF1272
	.byte	0x1
	.value	0x6a8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1214
	.byte	0x1
	.value	0x6a9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1273
	.byte	0x1
	.value	0x705
	.long	0x123
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x40bf
	.uleb128 0x38
	.long	.LASF0
	.byte	0x1
	.value	0x706
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.long	.LASF1274
	.byte	0x1
	.value	0x707
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF1275
	.byte	0x1
	.value	0x707
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF709
	.byte	0x1
	.value	0x709
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1276
	.byte	0x1
	.value	0x70b
	.long	0x24b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x34
	.long	.LASF1277
	.byte	0x1
	.value	0x70c
	.long	0x24b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x34
	.long	.LASF1278
	.byte	0x1
	.value	0x70d
	.long	0x24b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x34
	.long	.LASF1200
	.byte	0x1
	.value	0x70e
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1201
	.byte	0x1
	.value	0x70f
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x34
	.long	.LASF1279
	.byte	0x1
	.value	0x760
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1280
	.byte	0x1
	.value	0x77d
	.long	0x123
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x44b2
	.uleb128 0x38
	.long	.LASF0
	.byte	0x1
	.value	0x77e
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x38
	.long	.LASF1281
	.byte	0x1
	.value	0x77f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x38
	.long	.LASF1282
	.byte	0x1
	.value	0x77f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x38
	.long	.LASF1283
	.byte	0x1
	.value	0x780
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x34
	.long	.LASF1284
	.byte	0x1
	.value	0x782
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x34
	.long	.LASF1214
	.byte	0x1
	.value	0x782
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF1285
	.byte	0x1
	.value	0x783
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x34
	.long	.LASF1200
	.byte	0x1
	.value	0x783
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x35
	.string	"op0"
	.byte	0x1
	.value	0x784
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x35
	.string	"op1"
	.byte	0x1
	.value	0x784
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x34
	.long	.LASF1286
	.byte	0x1
	.value	0x789
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x34
	.long	.LASF1287
	.byte	0x1
	.value	0x78d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x34
	.long	.LASF1288
	.byte	0x1
	.value	0x792
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x34
	.long	.LASF1289
	.byte	0x1
	.value	0x796
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.long	.LASF1290
	.byte	0x1
	.value	0x79a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x34
	.long	.LASF1291
	.byte	0x1
	.value	0x7a2
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x34
	.long	.LASF1292
	.byte	0x1
	.value	0x7a7
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x34
	.long	.LASF1293
	.byte	0x1
	.value	0x7ab
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x34
	.long	.LASF16
	.byte	0x1
	.value	0x7ae
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x33
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x4247
	.uleb128 0x35
	.string	"tt0"
	.byte	0x1
	.value	0x89e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.string	"tt1"
	.byte	0x1
	.value	0x89f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x33
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x4481
	.uleb128 0x34
	.long	.LASF1294
	.byte	0x1
	.value	0x931
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x33
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x42e1
	.uleb128 0x34
	.long	.LASF1295
	.byte	0x1
	.value	0x943
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x34
	.long	.LASF1296
	.byte	0x1
	.value	0x943
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x34
	.long	.LASF1297
	.byte	0x1
	.value	0x944
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF1274
	.byte	0x1
	.value	0x945
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"uns"
	.byte	0x1
	.value	0x947
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x948
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x33
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x4316
	.uleb128 0x34
	.long	.LASF1298
	.byte	0x1
	.value	0x985
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x34
	.long	.LASF1297
	.byte	0x1
	.value	0x986
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x36
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x34
	.long	.LASF1299
	.byte	0x1
	.value	0x9a7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x34
	.long	.LASF1300
	.byte	0x1
	.value	0x9a7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x34
	.long	.LASF1301
	.byte	0x1
	.value	0x9a7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x34
	.long	.LASF1302
	.byte	0x1
	.value	0x9a8
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0x9a9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x34
	.long	.LASF1303
	.byte	0x1
	.value	0x9b6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x34
	.long	.LASF1304
	.byte	0x1
	.value	0x9b7
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x34
	.long	.LASF1305
	.byte	0x1
	.value	0x9b8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x34
	.long	.LASF1306
	.byte	0x1
	.value	0x9b8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x34
	.long	.LASF1307
	.byte	0x1
	.value	0x9b9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x34
	.long	.LASF1308
	.byte	0x1
	.value	0x9ba
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x441d
	.uleb128 0x35
	.string	"sop"
	.byte	0x1
	.value	0x9d1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x35
	.string	"uop"
	.byte	0x1
	.value	0x9d1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x36
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x34
	.long	.LASF1309
	.byte	0x1
	.value	0xa06
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x34
	.long	.LASF1173
	.byte	0x1
	.value	0xa07
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.long	.LASF1310
	.byte	0x1
	.value	0xa07
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1311
	.byte	0x1
	.value	0xa08
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x34
	.long	.LASF1312
	.byte	0x1
	.value	0xa08
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x34
	.long	.LASF709
	.byte	0x1
	.value	0xa43
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1313
	.byte	0x1
	.value	0xa44
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1314
	.byte	0x1
	.value	0xa53
	.long	0x123
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x4581
	.uleb128 0x3a
	.string	"op0"
	.byte	0x1
	.value	0xa54
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3a
	.string	"op1"
	.byte	0x1
	.value	0xa54
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x34
	.long	.LASF709
	.byte	0x1
	.value	0xa56
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1313
	.byte	0x1
	.value	0xa56
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1237
	.byte	0x1
	.value	0xa57
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF1315
	.byte	0x1
	.value	0xa59
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1316
	.byte	0x1
	.value	0xa5a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF1317
	.byte	0x1
	.value	0xa5a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.long	.LASF1318
	.byte	0x1
	.value	0xa5a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF1319
	.byte	0x1
	.value	0xa5a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF1282
	.byte	0x1
	.value	0xa5b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x37
	.long	.LASF1320
	.byte	0x1
	.value	0xaa9
	.long	0x123
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4722
	.uleb128 0x38
	.long	.LASF0
	.byte	0x1
	.value	0xaaa
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x38
	.long	.LASF1321
	.byte	0x1
	.value	0xaab
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x38
	.long	.LASF1279
	.byte	0x1
	.value	0xaac
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0xaaf
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x34
	.long	.LASF1322
	.byte	0x1
	.value	0xab0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.long	.LASF1323
	.byte	0x1
	.value	0xab1
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0xab2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x34
	.long	.LASF1324
	.byte	0x1
	.value	0xab3
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x32
	.long	.LASF1325
	.byte	0x1
	.value	0xb9c
	.quad	.L681
	.uleb128 0x33
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x4669
	.uleb128 0x34
	.long	.LASF628
	.byte	0x1
	.value	0xb2d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF629
	.byte	0x1
	.value	0xb2d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x33
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x46de
	.uleb128 0x35
	.string	"inc"
	.byte	0x1
	.value	0xb47
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF1287
	.byte	0x1
	.value	0xb48
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x34
	.long	.LASF1326
	.byte	0x1
	.value	0xb82
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1327
	.byte	0x1
	.value	0xb82
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF636
	.byte	0x1
	.value	0xb82
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x34
	.long	.LASF1328
	.byte	0x1
	.value	0xc01
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x34
	.long	.LASF1245
	.byte	0x1
	.value	0xc05
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1329
	.byte	0x1
	.value	0xc4b
	.long	0x1e3
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x4763
	.uleb128 0x3a
	.string	"ref"
	.byte	0x1
	.value	0xc4c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0xc4e
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1330
	.byte	0x1
	.value	0xc71
	.long	0x1e3
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x47b3
	.uleb128 0x3a
	.string	"ref"
	.byte	0x1
	.value	0xc72
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF1331
	.byte	0x1
	.value	0xc73
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"win"
	.byte	0x1
	.value	0xc75
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.long	.LASF1332
	.byte	0x1
	.value	0xc86
	.long	0x123
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4824
	.uleb128 0x38
	.long	.LASF0
	.byte	0x1
	.value	0xc87
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.string	"arg"
	.byte	0x1
	.value	0xc88
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF1279
	.byte	0x1
	.value	0xc89
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x34
	.long	.LASF1333
	.byte	0x1
	.value	0xc8e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF1374
	.byte	0x1
	.value	0xcae
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x4852
	.uleb128 0x38
	.long	.LASF0
	.byte	0x1
	.value	0xcaf
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3d
	.long	.LASF1335
	.byte	0x1
	.value	0xcc3
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x488f
	.uleb128 0x3a
	.string	"arg"
	.byte	0x1
	.value	0xcc4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1331
	.byte	0x1
	.value	0xcc5
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF1336
	.byte	0x1
	.value	0xcdb
	.long	0x1e3
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x48ce
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0xcdc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"x"
	.byte	0x1
	.value	0xcde
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1337
	.byte	0x1
	.value	0xd31
	.long	0x123
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x49bc
	.uleb128 0x38
	.long	.LASF1338
	.byte	0x1
	.value	0xd32
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3a
	.string	"op1"
	.byte	0x1
	.value	0xd32
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3a
	.string	"op2"
	.byte	0x1
	.value	0xd32
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF1214
	.byte	0x1
	.value	0xd34
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1215
	.byte	0x1
	.value	0xd35
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1200
	.byte	0x1
	.value	0xd36
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF1201
	.byte	0x1
	.value	0xd37
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF1287
	.byte	0x1
	.value	0xd38
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1282
	.byte	0x1
	.value	0xd39
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1339
	.byte	0x1
	.value	0xd39
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x34
	.long	.LASF1340
	.byte	0x1
	.value	0xd77
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1341
	.byte	0x1
	.value	0xd78
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1342
	.byte	0x1
	.value	0xde5
	.long	0x123
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x49ee
	.uleb128 0x38
	.long	.LASF25
	.byte	0x1
	.value	0xde6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1343
	.byte	0x1
	.value	0xdec
	.long	0x123
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a3e
	.uleb128 0x38
	.long	.LASF25
	.byte	0x1
	.value	0xded
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF1344
	.byte	0x1
	.value	0xdee
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF1345
	.byte	0x1
	.value	0xdf0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1346
	.byte	0x1
	.value	0xe27
	.long	0x123
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b65
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0xe28
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x38
	.long	.LASF285
	.byte	0x1
	.value	0xe29
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x34
	.long	.LASF636
	.byte	0x1
	.value	0xe2b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x4ae4
	.uleb128 0x34
	.long	.LASF1245
	.byte	0x1
	.value	0xe4e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x34
	.long	.LASF668
	.byte	0x1
	.value	0xe58
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0xe59
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x34
	.long	.LASF1347
	.byte	0x1
	.value	0xe71
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1348
	.byte	0x1
	.value	0xe71
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x34
	.long	.LASF1349
	.byte	0x1
	.value	0xe83
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1350
	.byte	0x1
	.value	0xe84
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1351
	.byte	0x1
	.value	0xe85
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF1352
	.byte	0x1
	.value	0xe86
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1353
	.byte	0x1
	.value	0xee1
	.long	0x123
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bb5
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0xee2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF285
	.byte	0x1
	.value	0xee2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1354
	.byte	0x1
	.value	0xee4
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1355
	.byte	0x1
	.value	0xef7
	.long	0x123
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c9c
	.uleb128 0x3a
	.string	"lhs"
	.byte	0x1
	.value	0xef8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x38
	.long	.LASF1356
	.byte	0x1
	.value	0xef9
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3a
	.string	"rhs"
	.byte	0x1
	.value	0xef8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.long	.LASF709
	.byte	0x1
	.value	0xefb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1357
	.byte	0x1
	.value	0xefc
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF1358
	.byte	0x1
	.value	0xefd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF1359
	.byte	0x1
	.value	0xefe
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x4c6b
	.uleb128 0x34
	.long	.LASF1360
	.byte	0x1
	.value	0xf24
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x36
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x34
	.long	.LASF1361
	.byte	0x1
	.value	0xf51
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF709
	.byte	0x1
	.value	0xf52
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1362
	.byte	0x1
	.value	0xfa8
	.long	0x123
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e63
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0xfa9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3a
	.string	"rhs"
	.byte	0x1
	.value	0xfa9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x38
	.long	.LASF1363
	.byte	0x1
	.value	0xfaa
	.long	0x448
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x38
	.long	.LASF1263
	.byte	0x1
	.value	0xfab
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x38
	.long	.LASF1364
	.byte	0x1
	.value	0xfab
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x38
	.long	.LASF1269
	.byte	0x1
	.value	0xfac
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x34
	.long	.LASF1365
	.byte	0x1
	.value	0xfae
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x34
	.long	.LASF1366
	.byte	0x1
	.value	0xfaf
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF1367
	.byte	0x1
	.value	0xfb0
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x33
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x4e0d
	.uleb128 0x34
	.long	.LASF1368
	.byte	0x1
	.value	0xff4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.long	.LASF1369
	.byte	0x1
	.value	0xff5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x4ddb
	.uleb128 0x34
	.long	.LASF1370
	.byte	0x1
	.value	0xffa
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x35
	.string	"ttl"
	.byte	0x1
	.value	0x1005
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.string	"ttr"
	.byte	0x1
	.value	0x1006
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x35
	.string	"ttl"
	.byte	0x1
	.value	0x102f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"ttr"
	.byte	0x1
	.value	0x1030
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x4e41
	.uleb128 0x35
	.string	"ttl"
	.byte	0x1
	.value	0x1051
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"ttr"
	.byte	0x1
	.value	0x1052
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x36
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x34
	.long	.LASF1371
	.byte	0x1
	.value	0x10a8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1372
	.byte	0x1
	.value	0x10be
	.long	0x123
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ed0
	.uleb128 0x38
	.long	.LASF1373
	.byte	0x1
	.value	0x10bf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF636
	.byte	0x1
	.value	0x10bf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x10bf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"ret"
	.byte	0x1
	.value	0x10c1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x10c1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3e
	.long	.LASF1375
	.byte	0x1
	.value	0x10da
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f2b
	.uleb128 0x38
	.long	.LASF1331
	.byte	0x1
	.value	0x10db
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1376
	.byte	0x1
	.value	0x10dc
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	.LASF680
	.byte	0x1
	.value	0x10dd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF1377
	.byte	0x1
	.value	0x10de
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x39
	.long	.LASF1378
	.byte	0x1
	.value	0x110a
	.long	0x123
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f6c
	.uleb128 0x38
	.long	.LASF636
	.byte	0x1
	.value	0x110b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1379
	.byte	0x1
	.value	0x110c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3d
	.long	.LASF1380
	.byte	0x1
	.value	0x1123
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x5009
	.uleb128 0x38
	.long	.LASF23
	.byte	0x1
	.value	0x1124
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF1381
	.byte	0x1
	.value	0x1124
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF636
	.byte	0x1
	.value	0x1126
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x1126
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x34
	.long	.LASF1382
	.byte	0x1
	.value	0x1161
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x34
	.long	.LASF23
	.byte	0x1
	.value	0x1169
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF1383
	.byte	0x1
	.value	0x11ba
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x5058
	.uleb128 0x38
	.long	.LASF20
	.byte	0x1
	.value	0x11bb
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x34
	.long	.LASF1170
	.byte	0x1
	.value	0x11bd
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF1384
	.byte	0x1
	.value	0x11c3
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x50b6
	.uleb128 0x38
	.long	.LASF23
	.byte	0x1
	.value	0x11c4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF20
	.byte	0x1
	.value	0x11c7
	.long	0x20b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x34
	.long	.LASF1170
	.byte	0x1
	.value	0x11c9
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF1385
	.byte	0x1
	.value	0x11cf
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x5105
	.uleb128 0x38
	.long	.LASF1386
	.byte	0x1
	.value	0x11d0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x34
	.long	.LASF1170
	.byte	0x1
	.value	0x11d2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1387
	.byte	0x1
	.value	0x11d8
	.long	0x1e3
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x5144
	.uleb128 0x34
	.long	.LASF287
	.byte	0x1
	.value	0x11da
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x11db
	.long	0x3254
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1388
	.byte	0x1
	.value	0x11eb
	.long	0x245
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x51af
	.uleb128 0x38
	.long	.LASF1389
	.byte	0x1
	.value	0x11ec
	.long	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"d"
	.byte	0x1
	.value	0x11ee
	.long	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x11ef
	.long	0x3254
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x11f9
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF1390
	.byte	0x1
	.value	0x1208
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x51ec
	.uleb128 0x38
	.long	.LASF1331
	.byte	0x1
	.value	0x1209
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1391
	.byte	0x1
	.value	0x120b
	.long	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1392
	.byte	0x1
	.value	0x1218
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x5229
	.uleb128 0x38
	.long	.LASF1331
	.byte	0x1
	.value	0x1219
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1391
	.byte	0x1
	.value	0x121b
	.long	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	.LASF1393
	.byte	0x1
	.value	0x1228
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x5266
	.uleb128 0x38
	.long	.LASF1331
	.byte	0x1
	.value	0x1229
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1391
	.byte	0x1
	.value	0x122b
	.long	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1394
	.byte	0x1
	.value	0x123b
	.long	0x123
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x5393
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0x123c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.long	.LASF1381
	.byte	0x1
	.value	0x123c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x38
	.long	.LASF1395
	.byte	0x1
	.value	0x123d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x38
	.long	.LASF1396
	.byte	0x1
	.value	0x123d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x123f
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x34
	.long	.LASF1382
	.byte	0x1
	.value	0x1240
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.long	0x530d
	.uleb128 0x34
	.long	.LASF1397
	.byte	0x1
	.value	0x1254
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.long	0x5332
	.uleb128 0x34
	.long	.LASF23
	.byte	0x1
	.value	0x129c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x36
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x35
	.string	"top"
	.byte	0x1
	.value	0x12f4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1181
	.byte	0x1
	.value	0x12f4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1347
	.byte	0x1
	.value	0x12f4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x34
	.long	.LASF1257
	.byte	0x1
	.value	0x12fa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF1398
	.byte	0x1
	.value	0x13c8
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x540b
	.uleb128 0x38
	.long	.LASF23
	.byte	0x1
	.value	0x13c9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF1399
	.byte	0x1
	.value	0x13ca
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF1189
	.byte	0x1
	.value	0x13cb
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF1400
	.byte	0x1
	.value	0x13cd
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x13ce
	.long	0x324e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1186
	.byte	0x1
	.value	0x13d0
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3d
	.long	.LASF1401
	.byte	0x1
	.value	0x140c
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x5469
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x140e
	.long	0x324e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1402
	.long	0x5479
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14554
	.uleb128 0x36
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x35
	.string	"q"
	.byte	0x1
	.value	0x1419
	.long	0x3122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x24b
	.long	0x5479
	.uleb128 0x13
	.long	0x1ea
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.long	0x5469
	.uleb128 0x3d
	.long	.LASF1403
	.byte	0x1
	.value	0x143a
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x54b9
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0x143b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x143d
	.long	0x3122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1404
	.byte	0x1
	.value	0x14a2
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x5503
	.uleb128 0x38
	.long	.LASF1175
	.byte	0x1
	.value	0x14a3
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x14a5
	.long	0x3122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF636
	.byte	0x1
	.value	0x14a6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF1405
	.byte	0x1
	.value	0x1562
	.long	0x123
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x5564
	.uleb128 0x38
	.long	.LASF1175
	.byte	0x1
	.value	0x1563
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x1565
	.long	0x3122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1129
	.byte	0x1
	.value	0x1566
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1402
	.long	0x5574
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14581
	.byte	0
	.uleb128 0x12
	.long	0x24b
	.long	0x5574
	.uleb128 0x13
	.long	0x1ea
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.long	0x5564
	.uleb128 0x39
	.long	.LASF1406
	.byte	0x1
	.value	0x15fb
	.long	0x1e3
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x55dc
	.uleb128 0x38
	.long	.LASF1255
	.byte	0x1
	.value	0x15fc
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1206
	.byte	0x1
	.value	0x15fe
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1407
	.byte	0x1
	.value	0x15ff
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF1402
	.long	0x55dc
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14590
	.byte	0
	.uleb128 0xc
	.long	0x5564
	.uleb128 0x3c
	.long	.LASF1408
	.byte	0x1
	.value	0x1641
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x561c
	.uleb128 0x38
	.long	.LASF1184
	.byte	0x1
	.value	0x1642
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x1644
	.long	0x3191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1409
	.byte	0x1
	.value	0x1659
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x5659
	.uleb128 0x38
	.long	.LASF1410
	.byte	0x1
	.value	0x165a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1411
	.byte	0x1
	.value	0x165a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3d
	.long	.LASF1412
	.byte	0x1
	.value	0x169c
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x5696
	.uleb128 0x38
	.long	.LASF1413
	.byte	0x1
	.value	0x169d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1414
	.byte	0x1
	.value	0x169f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	.LASF1415
	.byte	0x1
	.value	0x16c6
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x576b
	.uleb128 0x38
	.long	.LASF635
	.byte	0x1
	.value	0x16c7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.long	.LASF636
	.byte	0x1
	.value	0x16c7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x16c9
	.long	0x2ffd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"q"
	.byte	0x1
	.value	0x16c9
	.long	0x576b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x16c9
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.long	0x5721
	.uleb128 0x34
	.long	.LASF1416
	.byte	0x1
	.value	0x16e2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x36
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x1702
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3f
	.long	.Ldebug_ranges0+0
	.long	0x5756
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x1725
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x40
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x176e
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ffd
	.uleb128 0x3c
	.long	.LASF1417
	.byte	0x1
	.value	0x179e
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x579f
	.uleb128 0x34
	.long	.LASF595
	.byte	0x1
	.value	0x17a0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	.LASF1418
	.byte	0x1
	.value	0x17c2
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x587a
	.uleb128 0x3a
	.string	"str"
	.byte	0x1
	.value	0x17c3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF636
	.byte	0x1
	.value	0x17c5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF635
	.byte	0x1
	.value	0x17c5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x17c5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0x17c6
	.long	0x587a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x17c7
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"end"
	.byte	0x1
	.value	0x17c7
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1419
	.byte	0x1
	.value	0x17c8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF1420
	.byte	0x1
	.value	0x17c8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x34
	.long	.LASF1421
	.byte	0x1
	.value	0x17c8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF1416
	.byte	0x1
	.value	0x17c8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF1402
	.long	0x589a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14657
	.byte	0
	.uleb128 0x12
	.long	0x1fa
	.long	0x588a
	.uleb128 0x13
	.long	0x1ea
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	0x24b
	.long	0x589a
	.uleb128 0x13
	.long	0x1ea
	.byte	0x23
	.byte	0
	.uleb128 0xc
	.long	0x588a
	.uleb128 0x39
	.long	.LASF1422
	.byte	0x1
	.value	0x1816
	.long	0x123
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x58ff
	.uleb128 0x38
	.long	.LASF1245
	.byte	0x1
	.value	0x1817
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x1819
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x34
	.long	.LASF1416
	.byte	0x1
	.value	0x182e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF1423
	.byte	0x1
	.value	0x1855
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x59b1
	.uleb128 0x38
	.long	.LASF636
	.byte	0x1
	.value	0x1856
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0x1856
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF1245
	.byte	0x1
	.value	0x1856
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1424
	.byte	0x1
	.value	0x1857
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.long	0x5980
	.uleb128 0x34
	.long	.LASF23
	.byte	0x1
	.value	0x1868
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x36
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0x34
	.long	.LASF1416
	.byte	0x1
	.value	0x18ac
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1425
	.byte	0x1
	.value	0x18ac
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF1426
	.byte	0x1
	.value	0x18f0
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a3d
	.uleb128 0x3a
	.string	"all"
	.byte	0x1
	.value	0x18f1
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"elt"
	.byte	0x1
	.value	0x18f3
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1162
	.byte	0x1
	.value	0x18f4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF1202
	.byte	0x1
	.value	0x18f6
	.quad	.L1349
	.uleb128 0x36
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.uleb128 0x34
	.long	.LASF1427
	.byte	0x1
	.value	0x192d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1428
	.byte	0x1
	.value	0x192d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF1429
	.byte	0x1
	.value	0x197d
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ba3
	.uleb128 0x38
	.long	.LASF636
	.byte	0x1
	.value	0x197e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.long	.LASF1430
	.byte	0x1
	.value	0x1980
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF657
	.byte	0x1
	.value	0x1981
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1402
	.long	0x5bb3
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14730
	.uleb128 0x33
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x5ad3
	.uleb128 0x34
	.long	.LASF1431
	.byte	0x1
	.value	0x19bf
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF1432
	.byte	0x1
	.value	0x19c0
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x33
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.long	0x5b09
	.uleb128 0x34
	.long	.LASF1431
	.byte	0x1
	.value	0x1a0c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF1432
	.byte	0x1
	.value	0x1a0d
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x33
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.long	0x5b3e
	.uleb128 0x34
	.long	.LASF1433
	.byte	0x1
	.value	0x1a4c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF1434
	.byte	0x1
	.value	0x1a4d
	.long	0xcf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x33
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.long	0x5b63
	.uleb128 0x34
	.long	.LASF1433
	.byte	0x1
	.value	0x1a7c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x36
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x1aa6
	.long	0x3191
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF1172
	.byte	0x1
	.value	0x1aa6
	.long	0x3191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1435
	.byte	0x1
	.value	0x1aa7
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x24b
	.long	0x5bb3
	.uleb128 0x13
	.long	0x1ea
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	0x5ba3
	.uleb128 0x37
	.long	.LASF1436
	.byte	0x1
	.value	0x1add
	.long	0x123
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c0b
	.uleb128 0x38
	.long	.LASF285
	.byte	0x1
	.value	0x1ade
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x34
	.long	.LASF1437
	.byte	0x1
	.value	0x1ae7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1438
	.byte	0x1
	.value	0x1afa
	.long	0x123
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cd1
	.uleb128 0x38
	.long	.LASF1439
	.byte	0x1
	.value	0x1afb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF20
	.byte	0x1
	.value	0x1afc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF1440
	.byte	0x1
	.value	0x1afd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1441
	.byte	0x1
	.value	0x1afe
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.long	.LASF1442
	.byte	0x1
	.value	0x1aff
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF1414
	.byte	0x1
	.value	0x1b01
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.long	0x5caf
	.uleb128 0x34
	.long	.LASF1443
	.byte	0x1
	.value	0x1b17
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.uleb128 0x34
	.long	.LASF1443
	.byte	0x1
	.value	0x1b2d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF1444
	.byte	0x1
	.value	0x1b43
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x5db8
	.uleb128 0x38
	.long	.LASF20
	.byte	0x1
	.value	0x1b44
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1440
	.byte	0x1
	.value	0x1b44
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.long	.LASF1441
	.byte	0x1
	.value	0x1b44
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.long	.LASF1442
	.byte	0x1
	.value	0x1b44
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3a
	.string	"vol"
	.byte	0x1
	.value	0x1b45
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x38
	.long	.LASF682
	.byte	0x1
	.value	0x1b46
	.long	0x448
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x38
	.long	.LASF1445
	.byte	0x1
	.value	0x1b47
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF1446
	.byte	0x1
	.value	0x1b49
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1b4a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"o"
	.byte	0x1
	.value	0x1b4c
	.long	0x20e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1414
	.byte	0x1
	.value	0x1b4d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x1b68
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1447
	.byte	0x1
	.value	0x1b7b
	.long	0x123
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e58
	.uleb128 0x38
	.long	.LASF1448
	.byte	0x1
	.value	0x1b7c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF1210
	.byte	0x1
	.value	0x1b7e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x1b92
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"res"
	.byte	0x1
	.value	0x1b94
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1449
	.byte	0x1
	.value	0x1b95
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x35
	.string	"op1"
	.byte	0x1
	.value	0x1bad
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1450
	.byte	0x1
	.value	0x1bef
	.long	0x123
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ec5
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0x1bf0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x1bf2
	.long	0xcf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x1bf3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1451
	.byte	0x1
	.value	0x1bf3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"cs"
	.byte	0x1
	.value	0x1bf4
	.long	0x328f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1452
	.byte	0x1
	.value	0x1c1c
	.long	0x123
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f15
	.uleb128 0x38
	.long	.LASF1453
	.byte	0x1
	.value	0x1c1d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF1454
	.byte	0x1
	.value	0x1c1e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1455
	.byte	0x1
	.value	0x1c20
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1456
	.byte	0x1
	.value	0x1c35
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f42
	.uleb128 0x35
	.string	"cs"
	.byte	0x1
	.value	0x1c37
	.long	0x328f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1457
	.byte	0x1
	.byte	0x30
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	missing_braces_mentioned
	.uleb128 0x2c
	.long	.LASF1458
	.byte	0x1
	.byte	0x33
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	undeclared_variable_notice
	.uleb128 0x34
	.long	.LASF1156
	.byte	0x1
	.value	0x118b
	.long	0x3254
	.uleb128 0x9
	.byte	0x3
	.quad	spelling
	.uleb128 0x34
	.long	.LASF1187
	.byte	0x1
	.value	0x118c
	.long	0x3254
	.uleb128 0x9
	.byte	0x3
	.quad	spelling_base
	.uleb128 0x34
	.long	.LASF1188
	.byte	0x1
	.value	0x118d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	spelling_size
	.uleb128 0x34
	.long	.LASF1459
	.byte	0x1
	.value	0x131e
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_type
	.uleb128 0x34
	.long	.LASF1460
	.byte	0x1
	.value	0x1322
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_fields
	.uleb128 0x34
	.long	.LASF1461
	.byte	0x1
	.value	0x1326
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_index
	.uleb128 0x34
	.long	.LASF1462
	.byte	0x1
	.value	0x1329
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_max_index
	.uleb128 0x34
	.long	.LASF1463
	.byte	0x1
	.value	0x132c
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_unfilled_fields
	.uleb128 0x34
	.long	.LASF1464
	.byte	0x1
	.value	0x1330
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_unfilled_index
	.uleb128 0x34
	.long	.LASF1465
	.byte	0x1
	.value	0x1334
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_bit_index
	.uleb128 0x34
	.long	.LASF1466
	.byte	0x1
	.value	0x1339
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_elements
	.uleb128 0x34
	.long	.LASF1467
	.byte	0x1
	.value	0x133d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_incremental
	.uleb128 0x34
	.long	.LASF1396
	.byte	0x1
	.value	0x1340
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_constant
	.uleb128 0x34
	.long	.LASF1468
	.byte	0x1
	.value	0x1343
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_simple
	.uleb128 0x34
	.long	.LASF1469
	.byte	0x1
	.value	0x1346
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_erroneous
	.uleb128 0x34
	.long	.LASF1470
	.byte	0x1
	.value	0x1349
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_subconstants_deferred
	.uleb128 0x34
	.long	.LASF1471
	.byte	0x1
	.value	0x135c
	.long	0x2ffd
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_pending_elts
	.uleb128 0x34
	.long	.LASF1472
	.byte	0x1
	.value	0x135f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_depth
	.uleb128 0x34
	.long	.LASF1190
	.byte	0x1
	.value	0x1364
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	require_constant_value
	.uleb128 0x34
	.long	.LASF1191
	.byte	0x1
	.value	0x1365
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	require_constant_elements
	.uleb128 0x34
	.long	.LASF1473
	.byte	0x1
	.value	0x136a
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_decl
	.uleb128 0x34
	.long	.LASF1474
	.byte	0x1
	.value	0x136d
	.long	0x448
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_asmspec
	.uleb128 0x34
	.long	.LASF1475
	.byte	0x1
	.value	0x1370
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_top_level
	.uleb128 0x34
	.long	.LASF1476
	.byte	0x1
	.value	0x1373
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_designated
	.uleb128 0x34
	.long	.LASF1477
	.byte	0x1
	.value	0x1376
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	designator_depth
	.uleb128 0x34
	.long	.LASF1478
	.byte	0x1
	.value	0x1379
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	designator_errorneous
	.uleb128 0x34
	.long	.LASF1479
	.byte	0x1
	.value	0x1be9
	.long	0x328f
	.uleb128 0x9
	.byte	0x3
	.quad	switch_stack
	.uleb128 0x41
	.long	.LASF1480
	.byte	0x12
	.byte	0x62
	.long	0x1e3
	.uleb128 0x12
	.long	0x213
	.long	0x61d9
	.uleb128 0x13
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x41
	.long	.LASF1481
	.byte	0x9
	.byte	0x50
	.long	0x61e4
	.uleb128 0xc
	.long	0x61c9
	.uleb128 0x41
	.long	.LASF1482
	.byte	0x9
	.byte	0x55
	.long	0x61f4
	.uleb128 0xc
	.long	0x61c9
	.uleb128 0x12
	.long	0x24b
	.long	0x6209
	.uleb128 0x13
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x41
	.long	.LASF1483
	.byte	0x4
	.byte	0x31
	.long	0x61f9
	.uleb128 0x12
	.long	0x123
	.long	0x6224
	.uleb128 0x13
	.long	0x1ea
	.byte	0x32
	.byte	0
	.uleb128 0x42
	.long	.LASF1484
	.byte	0x4
	.value	0x79b
	.long	0x6214
	.uleb128 0x12
	.long	0x123
	.long	0x6240
	.uleb128 0x13
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0x42
	.long	.LASF1485
	.byte	0x4
	.value	0x7f8
	.long	0x6230
	.uleb128 0x12
	.long	0x123
	.long	0x625c
	.uleb128 0x13
	.long	0x1ea
	.byte	0x5
	.byte	0
	.uleb128 0x42
	.long	.LASF1486
	.byte	0x4
	.value	0x97c
	.long	0x624c
	.uleb128 0x42
	.long	.LASF1487
	.byte	0x4
	.value	0xa98
	.long	0x123
	.uleb128 0x42
	.long	.LASF1488
	.byte	0x4
	.value	0xb5b
	.long	0x2ed9
	.uleb128 0x41
	.long	.LASF1489
	.byte	0xf
	.byte	0x81
	.long	0x20e7
	.uleb128 0x12
	.long	0x123
	.long	0x629b
	.uleb128 0x13
	.long	0x1ea
	.byte	0x1f
	.byte	0
	.uleb128 0x41
	.long	.LASF1490
	.byte	0xf
	.byte	0xea
	.long	0x628b
	.uleb128 0x42
	.long	.LASF1491
	.byte	0xf
	.value	0x186
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1492
	.byte	0xf
	.value	0x1a3
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1493
	.byte	0xf
	.value	0x1a6
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1494
	.byte	0xf
	.value	0x1aa
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1495
	.byte	0xf
	.value	0x1b2
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1496
	.byte	0xf
	.value	0x1c8
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1497
	.byte	0xf
	.value	0x1cc
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1498
	.byte	0xc
	.value	0x116
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1499
	.byte	0xc
	.value	0x11b
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1500
	.byte	0xc
	.value	0x120
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1501
	.byte	0xc
	.value	0x125
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1502
	.byte	0xc
	.value	0x12e
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1503
	.byte	0xc
	.value	0x13a
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1504
	.byte	0xc
	.value	0x14c
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1505
	.byte	0xc
	.value	0x152
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1506
	.byte	0xc
	.value	0x156
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1507
	.byte	0xc
	.value	0x15a
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1508
	.byte	0xc
	.value	0x162
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1509
	.byte	0xc
	.value	0x166
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1510
	.byte	0xc
	.value	0x16a
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1511
	.byte	0xc
	.value	0x16e
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1512
	.byte	0x13
	.byte	0x3d
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1513
	.byte	0x13
	.byte	0x5b
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1514
	.byte	0x13
	.byte	0x67
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1515
	.byte	0x13
	.byte	0x88
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1516
	.byte	0x13
	.byte	0x92
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1517
	.byte	0x13
	.byte	0xcc
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1518
	.byte	0x13
	.byte	0xd1
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1519
	.byte	0x13
	.value	0x142
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1520
	.byte	0x13
	.value	0x1c3
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1521
	.byte	0x11
	.byte	0xc1
	.long	0x2db5
	.uleb128 0x43
	.long	.LASF1522
	.byte	0x1
	.value	0x1362
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_no_implicit
	.uleb128 0x43
	.long	.LASF1161
	.byte	0x1
	.value	0x139d
	.long	0x3122
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_stack
	.uleb128 0x43
	.long	.LASF1180
	.byte	0x1
	.value	0x13ac
	.long	0x3191
	.uleb128 0x9
	.byte	0x3
	.quad	constructor_range_stack
	.uleb128 0x43
	.long	.LASF1185
	.byte	0x1
	.value	0x13c3
	.long	0x324e
	.uleb128 0x9
	.byte	0x3
	.quad	initializer_stack
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x26
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB71-.Ltext0
	.quad	.LBE71-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF757:
	.string	"TI_UV8HI_TYPE"
.LASF585:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF762:
	.string	"TI_UV16QI_TYPE"
.LASF321:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF295:
	.string	"rtstr"
.LASF777:
	.string	"itk_unsigned_char"
.LASF399:
	.string	"WITH_CLEANUP_EXPR"
.LASF389:
	.string	"VTABLE_REF"
.LASF965:
	.string	"RID_ATTRIBUTE"
.LASF308:
	.string	"NOTE_INSN_DELETED"
.LASF861:
	.string	"CPP_MULT_EQ"
.LASF919:
	.string	"RID_REGISTER"
.LASF552:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF69:
	.string	"_unused2"
.LASF1427:
	.string	"ctor_unfilled_bitpos"
.LASF221:
	.string	"UMOD"
.LASF275:
	.string	"min_align"
.LASF476:
	.string	"POSTINCREMENT_EXPR"
.LASF502:
	.string	"BUILT_IN_FABSF"
.LASF412:
	.string	"FLOOR_MOD_EXPR"
.LASF55:
	.string	"_fileno"
.LASF1462:
	.string	"constructor_max_index"
.LASF1245:
	.string	"field"
.LASF1086:
	.string	"RETURN_STMT"
.LASF913:
	.string	"answer"
.LASF1410:
	.string	"first"
.LASF819:
	.string	"allocate"
.LASF1075:
	.string	"SRCLOC"
.LASF1304:
	.string	"op1_signed"
.LASF1348:
	.string	"ovalue"
.LASF769:
	.string	"TI_V2SI_TYPE"
.LASF1286:
	.string	"resultcode"
.LASF790:
	.string	"decl_required"
.LASF1272:
	.string	"would_have_been"
.LASF730:
	.string	"TI_UINTSI_TYPE"
.LASF262:
	.string	"CONSTANT_P_RTX"
.LASF652:
	.string	"tree_type"
.LASF429:
	.string	"RROTATE_EXPR"
.LASF465:
	.string	"ADDR_EXPR"
.LASF1162:
	.string	"next"
.LASF1516:
	.string	"warn_cast_align"
.LASF1349:
	.string	"in_type"
.LASF26:
	.string	"block"
.LASF890:
	.string	"CPP_WCHAR"
.LASF1380:
	.string	"store_init_value"
.LASF794:
	.string	"_Bool"
.LASF1097:
	.string	"COMPOUND_LITERAL_EXPR"
.LASF1144:
	.string	"attribute_table"
.LASF294:
	.string	"rtuint"
.LASF1464:
	.string	"constructor_unfilled_index"
.LASF1511:
	.string	"warn_float_equal"
.LASF704:
	.string	"pure_flag"
.LASF1259:
	.string	"objc_ivar"
.LASF298:
	.string	"rt_cselib"
.LASF1469:
	.string	"constructor_erroneous"
.LASF165:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF454:
	.string	"IN_EXPR"
.LASF225:
	.string	"LSHIFTRT"
.LASF1100:
	.string	"lang_identifier"
.LASF1138:
	.string	"reorder"
.LASF1187:
	.string	"spelling_base"
.LASF16:
	.string	"common"
.LASF586:
	.string	"BUILT_IN_EH_RETURN"
.LASF159:
	.string	"MATCH_PAR_DUP"
.LASF60:
	.string	"_shortbuf"
.LASF1525:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF220:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF729:
	.string	"TI_UINTHI_TYPE"
.LASF1101:
	.string	"ignore"
.LASF437:
	.string	"TRUTH_AND_EXPR"
.LASF525:
	.string	"BUILT_IN_STRCPY"
.LASF1484:
	.string	"global_trees"
.LASF596:
	.string	"side_effects_flag"
.LASF1353:
	.string	"c_cast_expr"
.LASF1178:
	.string	"incremental"
.LASF865:
	.string	"CPP_OR_EQ"
.LASF153:
	.string	"MATCH_OPERAND"
.LASF1094:
	.string	"FILE_STMT"
.LASF980:
	.string	"RID_WCHAR"
.LASF873:
	.string	"CPP_OPEN_SQUARE"
.LASF749:
	.string	"TI_VOID_TYPE"
.LASF588:
	.string	"BUILT_IN_VARARGS_START"
.LASF1217:
	.string	"d1_variable"
.LASF629:
	.string	"imag"
.LASF829:
	.string	"cpp_macro"
.LASF481:
	.string	"LABEL_EXPR"
.LASF242:
	.string	"UNLE"
.LASF280:
	.string	"max_after_base"
.LASF1499:
	.string	"current_function_returns_null"
.LASF628:
	.string	"real"
.LASF736:
	.string	"TI_NULL_POINTER"
.LASF243:
	.string	"UNLT"
.LASF361:
	.string	"FILE_TYPE"
.LASF650:
	.string	"fragment_chain"
.LASF624:
	.string	"tree_string"
.LASF445:
	.string	"EQ_EXPR"
.LASF907:
	.string	"BT_STDC"
.LASF658:
	.string	"no_force_blk_flag"
.LASF1232:
	.string	"decl_constant_value"
.LASF981:
	.string	"RID_CLASS"
.LASF649:
	.string	"fragment_origin"
.LASF765:
	.string	"TI_V4SI_TYPE"
.LASF565:
	.string	"BUILT_IN_FWRITE"
.LASF1377:
	.string	"argnum"
.LASF863:
	.string	"CPP_MOD_EQ"
.LASF105:
	.string	"CTImode"
.LASF41:
	.string	"_flags"
.LASF967:
	.string	"RID_EXTENSION"
.LASF1329:
	.string	"lvalue_p"
.LASF439:
	.string	"TRUTH_XOR_EXPR"
.LASF696:
	.string	"static_dtor_flag"
.LASF625:
	.string	"length"
.LASF401:
	.string	"PLACEHOLDER_EXPR"
.LASF914:
	.string	"RID_STATIC"
.LASF817:
	.string	"delete_key"
.LASF677:
	.string	"lang_type"
.LASF1271:
	.string	"formal_prec"
.LASF434:
	.string	"BIT_NOT_EXPR"
.LASF719:
	.string	"base"
.LASF36:
	.string	"__off_t"
.LASF1242:
	.string	"default_conversion"
.LASF607:
	.string	"public_flag"
.LASF420:
	.string	"FLOAT_EXPR"
.LASF687:
	.string	"inline_flag"
.LASF739:
	.string	"TI_BITSIZE_ZERO"
.LASF1309:
	.string	"primop"
.LASF379:
	.string	"PARM_DECL"
.LASF820:
	.string	"deallocate"
.LASF1520:
	.string	"flag_pedantic_errors"
.LASF103:
	.string	"CSImode"
.LASF1224:
	.string	"args1"
.LASF1225:
	.string	"args2"
.LASF544:
	.string	"BUILT_IN_COSL"
.LASF264:
	.string	"VEC_MERGE"
.LASF1023:
	.string	"RID_AT_PUBLIC"
.LASF975:
	.string	"RID_TYPES_COMPATIBLE_P"
.LASF470:
	.string	"CONJ_EXPR"
.LASF61:
	.string	"_lock"
.LASF197:
	.string	"RETURN"
.LASF515:
	.string	"BUILT_IN_BZERO"
.LASF979:
	.string	"RID_BOOL"
.LASF486:
	.string	"LABELED_BLOCK_EXPR"
.LASF1401:
	.string	"finish_init"
.LASF1034:
	.string	"RID_LAST_PQ"
.LASF548:
	.string	"BUILT_IN_ARGS_INFO"
.LASF837:
	.string	"CPP_MULT"
.LASF14:
	.string	"elem"
.LASF1219:
	.string	"d1_zero"
.LASF1368:
	.string	"memb_types"
.LASF1378:
	.string	"valid_compound_expr_initializer"
.LASF140:
	.string	"MODE_FLOAT"
.LASF521:
	.string	"BUILT_IN_MEMCMP"
.LASF563:
	.string	"BUILT_IN_FPUTC"
.LASF555:
	.string	"BUILT_IN_RETURN"
.LASF1359:
	.string	"olhstype"
.LASF997:
	.string	"RID_TYPENAME"
.LASF603:
	.string	"unused_0"
.LASF619:
	.string	"unused_1"
.LASF812:
	.string	"splay_tree_allocate_fn"
.LASF727:
	.string	"TI_INTTI_TYPE"
.LASF564:
	.string	"BUILT_IN_FPUTS"
.LASF1519:
	.string	"flag_volatile"
.LASF487:
	.string	"EXIT_BLOCK_EXPR"
.LASF284:
	.string	"alias"
.LASF1063:
	.string	"CTI_FUNCTION_NAME_DECL"
.LASF281:
	.string	"offset_unsigned"
.LASF831:
	.string	"CPP_EQ"
.LASF897:
	.string	"CPP_PADDING"
.LASF109:
	.string	"V2SImode"
.LASF570:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF1281:
	.string	"orig_op0"
.LASF1221:
	.string	"qualify_type"
.LASF1385:
	.string	"push_array_bounds"
.LASF1339:
	.string	"orig_op2"
.LASF358:
	.string	"OFFSET_TYPE"
.LASF746:
	.string	"TI_FLOAT_TYPE"
.LASF1307:
	.string	"primop0"
.LASF19:
	.string	"vector"
.LASF485:
	.string	"LOOP_EXPR"
.LASF184:
	.string	"CODE_LABEL"
.LASF571:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF104:
	.string	"CDImode"
.LASF1396:
	.string	"constructor_constant"
.LASF190:
	.string	"UNSPEC"
.LASF477:
	.string	"VA_ARG_EXPR"
.LASF537:
	.string	"BUILT_IN_SIN"
.LASF183:
	.string	"BARRIER"
.LASF752:
	.string	"TI_PTRDIFF_TYPE"
.LASF314:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF186:
	.string	"COND_EXEC"
.LASF1310:
	.string	"mask"
.LASF200:
	.string	"CONST_INT"
.LASF196:
	.string	"CALL"
.LASF1106:
	.string	"error_locus"
.LASF1109:
	.string	"EXPAND_NORMAL"
.LASF706:
	.string	"uninlinable"
.LASF394:
	.string	"TARGET_EXPR"
.LASF111:
	.string	"V4QImode"
.LASF175:
	.string	"ATTR"
.LASF584:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF1030:
	.string	"RID_LAST_MODIFIER"
.LASF296:
	.string	"rttype"
.LASF1129:
	.string	"constructor"
.LASF1125:
	.string	"function_epilogue"
.LASF941:
	.string	"RID_INT"
.LASF968:
	.string	"RID_IMAGPART"
.LASF639:
	.string	"complexity"
.LASF338:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF653:
	.string	"values"
.LASF621:
	.string	"tree_int_cst"
.LASF1495:
	.string	"flag_isoc99"
.LASF857:
	.string	"CPP_GREATER_EQ"
.LASF1222:
	.string	"comp_target_types"
.LASF983:
	.string	"RID_PRIVATE"
.LASF910:
	.string	"answers"
.LASF540:
	.string	"BUILT_IN_SINF"
.LASF110:
	.string	"V2DImode"
.LASF543:
	.string	"BUILT_IN_SINL"
.LASF600:
	.string	"readonly_flag"
.LASF1249:
	.string	"build_component_ref"
.LASF1422:
	.string	"find_init_member"
.LASF1013:
	.string	"RID_BITOR"
.LASF415:
	.string	"EXACT_DIV_EXPR"
.LASF289:
	.string	"mem_attrs"
.LASF47:
	.string	"_IO_write_end"
.LASF168:
	.string	"DEFINE_DELAY"
.LASF218:
	.string	"MINUS"
.LASF1358:
	.string	"lhstype"
.LASF1213:
	.string	"comptypes"
.LASF452:
	.string	"UNGE_EXPR"
.LASF1000:
	.string	"RID_CONSTCAST"
.LASF520:
	.string	"BUILT_IN_MEMCPY"
.LASF1463:
	.string	"constructor_unfilled_fields"
.LASF382:
	.string	"NAMESPACE_DECL"
.LASF931:
	.string	"RID_VIRTUAL"
.LASF208:
	.string	"STRICT_LOW_PART"
.LASF1300:
	.string	"xop1"
.LASF994:
	.string	"RID_THROW"
.LASF844:
	.string	"CPP_LSHIFT"
.LASF150:
	.string	"INCLUDE"
.LASF334:
	.string	"GR_FRAME_POINTER"
.LASF595:
	.string	"chain"
.LASF1164:
	.string	"index"
.LASF1356:
	.string	"modifycode"
.LASF246:
	.string	"ZERO_EXTEND"
.LASF1082:
	.string	"IF_STMT"
.LASF549:
	.string	"BUILT_IN_CONSTANT_P"
.LASF249:
	.string	"FLOAT_TRUNCATE"
.LASF900:
	.string	"builtin_type"
.LASF575:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF581:
	.string	"BUILT_IN_DWARF_CFA"
.LASF367:
	.string	"FUNCTION_TYPE"
.LASF1119:
	.string	"aligned_op"
.LASF681:
	.string	"tree_decl"
.LASF1123:
	.string	"function_end_prologue"
.LASF331:
	.string	"GR_PC"
.LASF1362:
	.string	"convert_for_assignment"
.LASF896:
	.string	"CPP_MACRO_ARG"
.LASF120:
	.string	"V2SFmode"
.LASF951:
	.string	"RID_WHILE"
.LASF250:
	.string	"FLOAT"
.LASF851:
	.string	"CPP_COLON"
.LASF1126:
	.string	"named_section"
.LASF136:
	.string	"machine_mode"
.LASF1066:
	.string	"CTI_SAVED_FUNCTION_NAME_DECLS"
.LASF1026:
	.string	"RID_AT_INTERFACE"
.LASF366:
	.string	"QUAL_UNION_TYPE"
.LASF1154:
	.string	"have_ctors_dtors"
.LASF1331:
	.string	"msgid"
.LASF934:
	.string	"RID_MUTABLE"
.LASF943:
	.string	"RID_FLOAT"
.LASF301:
	.string	"rtmem"
.LASF1424:
	.string	"pending"
.LASF1078:
	.string	"ALIGNOF_EXPR"
.LASF1089:
	.string	"SWITCH_STMT"
.LASF1054:
	.string	"CTI_BOOLEAN_FALSE"
.LASF259:
	.string	"RANGE_REG"
.LASF299:
	.string	"rtbit"
.LASF482:
	.string	"GOTO_EXPR"
.LASF3:
	.string	"call"
.LASF82:
	.string	"TImode"
.LASF1474:
	.string	"constructor_asmspec"
.LASF235:
	.string	"PRE_MODIFY"
.LASF1056:
	.string	"CTI_C_BOOL_TRUE"
.LASF393:
	.string	"INIT_EXPR"
.LASF1132:
	.string	"adjust_cost"
.LASF1113:
	.string	"EXPAND_WRITE"
.LASF428:
	.string	"LROTATE_EXPR"
.LASF1061:
	.string	"CTI_G77_LONGINT_TYPE"
.LASF622:
	.string	"realvaluetype"
.LASF1429:
	.string	"process_init_element"
.LASF248:
	.string	"FLOAT_EXTEND"
.LASF518:
	.string	"BUILT_IN_INDEX"
.LASF1493:
	.string	"warn_div_by_zero"
.LASF892:
	.string	"CPP_STRING"
.LASF387:
	.string	"ARRAY_REF"
.LASF459:
	.string	"NOP_EXPR"
.LASF703:
	.string	"no_limit_stack"
.LASF6:
	.string	"in_struct"
.LASF309:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF1291:
	.string	"shorten"
.LASF80:
	.string	"SImode"
.LASF192:
	.string	"ADDR_VEC"
.LASF886:
	.string	"CPP_ATSIGN"
.LASF1442:
	.string	"clobbers"
.LASF121:
	.string	"V2DFmode"
.LASF413:
	.string	"ROUND_MOD_EXPR"
.LASF1477:
	.string	"designator_depth"
.LASF274:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF1325:
	.string	"give_up"
.LASF1175:
	.string	"implicit"
.LASF877:
	.string	"CPP_SEMICOLON"
.LASF609:
	.string	"protected_flag"
.LASF1473:
	.string	"constructor_decl"
.LASF24:
	.string	"type"
.LASF1254:
	.string	"build_array_ref"
.LASF1268:
	.string	"valtail"
.LASF1502:
	.string	"flag_cond_mismatch"
.LASF901:
	.string	"BT_SPECLINE"
.LASF1296:
	.string	"unsigned1"
.LASF409:
	.string	"ROUND_DIV_EXPR"
.LASF211:
	.string	"SYMBOL_REF"
.LASF1303:
	.string	"op0_signed"
.LASF307:
	.string	"NOTE_INSN_BIAS"
.LASF1322:
	.string	"argtype"
.LASF108:
	.string	"V2HImode"
.LASF718:
	.string	"lang_decl"
.LASF424:
	.string	"ABS_EXPR"
.LASF329:
	.string	"NOTE_INSN_MAX"
.LASF849:
	.string	"CPP_OR_OR"
.LASF1168:
	.string	"bit_index"
.LASF644:
	.string	"block_num"
.LASF1376:
	.string	"opname"
.LASF1053:
	.string	"CTI_BOOLEAN_TRUE"
.LASF164:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF216:
	.string	"COMPARE"
.LASF244:
	.string	"LTGT"
.LASF638:
	.string	"tree_exp"
.LASF1257:
	.string	"temp"
.LASF1241:
	.string	"lvalue_array_p"
.LASF1036:
	.string	"CTI_WCHAR_TYPE"
.LASF895:
	.string	"CPP_COMMENT"
.LASF256:
	.string	"HIGH"
.LASF213:
	.string	"QUEUED"
.LASF1:
	.string	"mode"
.LASF81:
	.string	"DImode"
.LASF436:
	.string	"TRUTH_ORIF_EXPR"
.LASF498:
	.string	"BUILT_IN_ALLOCA"
.LASF1486:
	.string	"sizetype_tab"
.LASF1399:
	.string	"asmspec_tree"
.LASF852:
	.string	"CPP_COMMA"
.LASF1142:
	.string	"merge_decl_attributes"
.LASF783:
	.string	"itk_unsigned_long"
.LASF54:
	.string	"_chain"
.LASF791:
	.string	"type_required"
.LASF1136:
	.string	"md_init"
.LASF1341:
	.string	"unsigned_op2"
.LASF1179:
	.string	"designated"
.LASF234:
	.string	"POST_INC"
.LASF1092:
	.string	"ASM_STMT"
.LASF398:
	.string	"METHOD_CALL_EXPR"
.LASF732:
	.string	"TI_UINTTI_TYPE"
.LASF920:
	.string	"RID_TYPEDEF"
.LASF1394:
	.string	"digest_init"
.LASF695:
	.string	"static_ctor_flag"
.LASF94:
	.string	"TFmode"
.LASF364:
	.string	"RECORD_TYPE"
.LASF32:
	.string	"unsigned char"
.LASF601:
	.string	"unsigned_flag"
.LASF1293:
	.string	"short_shift"
.LASF872:
	.string	"CPP_PASTE"
.LASF1196:
	.string	"type_code_string"
.LASF708:
	.string	"arguments"
.LASF1084:
	.string	"WHILE_STMT"
.LASF1037:
	.string	"CTI_SIGNED_WCHAR_TYPE"
.LASF1167:
	.string	"unfilled_fields"
.LASF1526:
	.string	"_IO_lock_t"
.LASF751:
	.string	"TI_CONST_PTR_TYPE"
.LASF676:
	.string	"lang_specific"
.LASF784:
	.string	"itk_long_long"
.LASF1039:
	.string	"CTI_WINT_TYPE"
.LASF902:
	.string	"BT_DATE"
.LASF787:
	.string	"attribute_spec"
.LASF77:
	.string	"BImode"
.LASF232:
	.string	"PRE_INC"
.LASF1301:
	.string	"xresult_type"
.LASF91:
	.string	"SFmode"
.LASF1116:
	.string	"open_paren"
.LASF815:
	.string	"root"
.LASF973:
	.string	"RID_PTRVALUE"
.LASF1238:
	.string	"ptrtype"
.LASF661:
	.string	"packed_flag"
.LASF430:
	.string	"BIT_IOR_EXPR"
.LASF499:
	.string	"BUILT_IN_ABS"
.LASF376:
	.string	"CONST_DECL"
.LASF623:
	.string	"tree_real_cst"
.LASF1114:
	.string	"asm_int_op"
.LASF381:
	.string	"FIELD_DECL"
.LASF181:
	.string	"JUMP_INSN"
.LASF846:
	.string	"CPP_MAX"
.LASF1209:
	.string	"target"
.LASF779:
	.string	"itk_unsigned_short"
.LASF1137:
	.string	"md_finish"
.LASF509:
	.string	"BUILT_IN_CREAL"
.LASF927:
	.string	"RID_BOUNDED"
.LASF144:
	.string	"MODE_COMPLEX_FLOAT"
.LASF1009:
	.string	"RID_OR_EQ"
.LASF300:
	.string	"rttree"
.LASF686:
	.string	"regdecl_flag"
.LASF1038:
	.string	"CTI_UNSIGNED_WCHAR_TYPE"
.LASF505:
	.string	"BUILT_IN_IMAXABS"
.LASF932:
	.string	"RID_EXPLICIT"
.LASF355:
	.string	"BOOLEAN_TYPE"
.LASF514:
	.string	"BUILT_IN_CIMAGL"
.LASF1421:
	.string	"charwidth"
.LASF1020:
	.string	"RID_AT_DEFS"
.LASF306:
	.string	"insn_note"
.LASF1085:
	.string	"DO_STMT"
.LASF325:
	.string	"NOTE_INSN_RANGE_END"
.LASF163:
	.string	"DEFINE_SPLIT"
.LASF858:
	.string	"CPP_LESS_EQ"
.LASF574:
	.string	"BUILT_IN_ISGREATER"
.LASF1185:
	.string	"initializer_stack"
.LASF558:
	.string	"BUILT_IN_TRAP"
.LASF847:
	.string	"CPP_COMPL"
.LASF848:
	.string	"CPP_AND_AND"
.LASF202:
	.string	"CONST_VECTOR"
.LASF462:
	.string	"SAVE_EXPR"
.LASF160:
	.string	"MATCH_INSN"
.LASF955:
	.string	"RID_CASE"
.LASF620:
	.string	"high"
.LASF1381:
	.string	"init"
.LASF494:
	.string	"BUILT_IN_FRONTEND"
.LASF768:
	.string	"TI_V4HI_TYPE"
.LASF1093:
	.string	"SCOPE_STMT"
.LASF1408:
	.string	"push_range_stack"
.LASF92:
	.string	"DFmode"
.LASF1352:
	.string	"discarded"
.LASF875:
	.string	"CPP_OPEN_BRACE"
.LASF1420:
	.string	"wchar_bytes"
.LASF30:
	.string	"size_t"
.LASF194:
	.string	"PREFETCH"
.LASF1461:
	.string	"constructor_index"
.LASF1247:
	.string	"field_array"
.LASF86:
	.string	"PSImode"
.LASF1470:
	.string	"constructor_subconstants_deferred"
.LASF524:
	.string	"BUILT_IN_STRNCAT"
.LASF1488:
	.string	"lang_set_decl_assembler_name"
.LASF258:
	.string	"RANGE_INFO"
.LASF966:
	.string	"RID_VA_ARG"
.LASF797:
	.string	"SSIZETYPE"
.LASF1478:
	.string	"designator_errorneous"
.LASF1344:
	.string	"first_p"
.LASF291:
	.string	"rtunion_def"
.LASF1503:
	.string	"warn_strict_prototypes"
.LASF374:
	.string	"FUNCTION_DECL"
.LASF938:
	.string	"RID_BYCOPY"
.LASF577:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF174:
	.string	"DEFINE_ATTR"
.LASF798:
	.string	"USIZETYPE"
.LASF395:
	.string	"COND_EXPR"
.LASF176:
	.string	"SET_ATTR"
.LASF100:
	.string	"TCmode"
.LASF1476:
	.string	"constructor_designated"
.LASF1166:
	.string	"unfilled_index"
.LASF909:
	.string	"macro"
.LASF416:
	.string	"FIX_TRUNC_EXPR"
.LASF1265:
	.string	"convert_arguments"
.LASF251:
	.string	"UNSIGNED_FLOAT"
.LASF1012:
	.string	"RID_BITAND"
.LASF834:
	.string	"CPP_LESS"
.LASF302:
	.string	"cselib_val_struct"
.LASF328:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF1436:
	.string	"simple_asm_stmt"
.LASF46:
	.string	"_IO_write_ptr"
.LASF1192:
	.string	"deferred"
.LASF1206:
	.string	"subtype"
.LASF1465:
	.string	"constructor_bit_index"
.LASF1498:
	.string	"current_function_returns_value"
.LASF1467:
	.string	"constructor_incremental"
.LASF352:
	.string	"COMPLEX_TYPE"
.LASF223:
	.string	"ROTATE"
.LASF840:
	.string	"CPP_AND"
.LASF559:
	.string	"BUILT_IN_PREFETCH"
.LASF426:
	.string	"LSHIFT_EXPR"
.LASF247:
	.string	"TRUNCATE"
.LASF1409:
	.string	"set_init_index"
.LASF97:
	.string	"SCmode"
.LASF1124:
	.string	"function_begin_epilogue"
.LASF1169:
	.string	"pending_elts"
.LASF1379:
	.string	"endtype"
.LASF339:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF774:
	.string	"integer_type_kind"
.LASF87:
	.string	"PDImode"
.LASF996:
	.string	"RID_TRY"
.LASF956:
	.string	"RID_DEFAULT"
.LASF369:
	.string	"INTEGER_CST"
.LASF377:
	.string	"TYPE_DECL"
.LASF743:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF319:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1453:
	.string	"low_value"
.LASF1432:
	.string	"fieldcode"
.LASF1445:
	.string	"line"
.LASF672:
	.string	"main_variant"
.LASF828:
	.string	"flags"
.LASF473:
	.string	"PREDECREMENT_EXPR"
.LASF735:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF1524:
	.string	"c-typeck.c"
.LASF748:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF151:
	.string	"EXPR_LIST"
.LASF178:
	.string	"EQ_ATTR"
.LASF1007:
	.string	"RID_NOT_EQ"
.LASF1107:
	.string	"limbo_value"
.LASF492:
	.string	"built_in_class"
.LASF961:
	.string	"RID_SIZEOF"
.LASF745:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF130:
	.string	"CCGOCmode"
.LASF209:
	.string	"CONCAT"
.LASF535:
	.string	"BUILT_IN_STRRCHR"
.LASF764:
	.string	"TI_V16SF_TYPE"
.LASF277:
	.string	"min_after_vec"
.LASF744:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF39:
	.string	"FILE"
.LASF215:
	.string	"COND"
.LASF353:
	.string	"VECTOR_TYPE"
.LASF141:
	.string	"MODE_PARTIAL_INT"
.LASF808:
	.string	"right"
.LASF678:
	.string	"elts"
.LASF1446:
	.string	"noutputs"
.LASF516:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF675:
	.string	"alias_set"
.LASF908:
	.string	"BT_PRAGMA"
.LASF1433:
	.string	"elttype"
.LASF98:
	.string	"DCmode"
.LASF1060:
	.string	"CTI_G77_UINTEGER_TYPE"
.LASF1327:
	.string	"modify"
.LASF922:
	.string	"RID_INLINE"
.LASF1388:
	.string	"print_spelling"
.LASF166:
	.string	"DEFINE_COMBINE"
.LASF1508:
	.string	"flag_allow_single_precision"
.LASF1523:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF433:
	.string	"BIT_ANDTC_EXPR"
.LASF750:
	.string	"TI_PTR_TYPE"
.LASF1393:
	.string	"warning_init"
.LASF22:
	.string	"identifier"
.LASF224:
	.string	"ASHIFTRT"
.LASF1174:
	.string	"simple"
.LASF805:
	.string	"splay_tree_node"
.LASF1405:
	.string	"pop_init_level"
.LASF952:
	.string	"RID_DO"
.LASF1067:
	.string	"CTI_VOID_ZERO"
.LASF1459:
	.string	"constructor_type"
.LASF1504:
	.string	"warn_cast_qual"
.LASF1244:
	.string	"component"
.LASF1198:
	.string	"require_complete_type"
.LASF128:
	.string	"CCmode"
.LASF587:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF579:
	.string	"BUILT_IN_ISUNORDERED"
.LASF643:
	.string	"abstract_flag"
.LASF1491:
	.string	"warn_format"
.LASF1283:
	.string	"convert_p"
.LASF312:
	.string	"NOTE_INSN_LOOP_END"
.LASF1028:
	.string	"RID_MAX"
.LASF126:
	.string	"V16SFmode"
.LASF710:
	.string	"initial"
.LASF1045:
	.string	"CTI_WIDEST_INT_LIT_TYPE"
.LASF435:
	.string	"TRUTH_ANDIF_EXPR"
.LASF1197:
	.string	"like"
.LASF326:
	.string	"NOTE_INSN_LIVE"
.LASF1091:
	.string	"LABEL_STMT"
.LASF171:
	.string	"DEFINE_COND_EXEC"
.LASF1081:
	.string	"DECL_STMT"
.LASF930:
	.string	"RID_FRIEND"
.LASF50:
	.string	"_IO_save_base"
.LASF1400:
	.string	"locus"
.LASF796:
	.string	"SIZETYPE"
.LASF1328:
	.string	"addr"
.LASF880:
	.string	"CPP_MINUS_MINUS"
.LASF1088:
	.string	"CONTINUE_STMT"
.LASF843:
	.string	"CPP_RSHIFT"
.LASF1490:
	.string	"c_global_trees"
.LASF440:
	.string	"TRUTH_NOT_EXPR"
.LASF167:
	.string	"DEFINE_EXPAND"
.LASF421:
	.string	"NEGATE_EXPR"
.LASF1050:
	.string	"CTI_STRING_TYPE"
.LASF1496:
	.string	"warn_parentheses"
.LASF117:
	.string	"V8SImode"
.LASF180:
	.string	"INSN"
.LASF293:
	.string	"rtint"
.LASF589:
	.string	"BUILT_IN_STDARG_START"
.LASF1239:
	.string	"constp"
.LASF1252:
	.string	"build_indirect_ref"
.LASF701:
	.string	"comdat_flag"
.LASF726:
	.string	"TI_INTDI_TYPE"
.LASF1468:
	.string	"constructor_simple"
.LASF870:
	.string	"CPP_MAX_EQ"
.LASF876:
	.string	"CPP_CLOSE_BRACE"
.LASF210:
	.string	"LABEL_REF"
.LASF1148:
	.string	"function_attribute_inlinable_p"
.LASF731:
	.string	"TI_UINTDI_TYPE"
.LASF362:
	.string	"ARRAY_TYPE"
.LASF845:
	.string	"CPP_MIN"
.LASF741:
	.string	"TI_BITSIZE_UNIT"
.LASF1140:
	.string	"cycle_display"
.LASF496:
	.string	"BUILT_IN_NORMAL"
.LASF1250:
	.string	"datum"
.LASF1263:
	.string	"fundecl"
.LASF316:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF64:
	.string	"__pad2"
.LASF456:
	.string	"CARD_EXPR"
.LASF1146:
	.string	"set_default_type_attributes"
.LASF0:
	.string	"code"
.LASF17:
	.string	"int_cst"
.LASF1141:
	.string	"gcc_target"
.LASF1280:
	.string	"build_binary_op"
.LASF1212:
	.string	"memb"
.LASF747:
	.string	"TI_DOUBLE_TYPE"
.LASF1439:
	.string	"cv_qualifier"
.LASF1292:
	.string	"short_compare"
.LASF557:
	.string	"BUILT_IN_LONGJMP"
.LASF937:
	.string	"RID_INOUT"
.LASF630:
	.string	"tree_vector"
.LASF998:
	.string	"RID_TYPEID"
.LASF360:
	.string	"METHOD_TYPE"
.LASF1062:
	.string	"CTI_G77_ULONGINT_TYPE"
.LASF129:
	.string	"CCGCmode"
.LASF986:
	.string	"RID_NULL"
.LASF1102:
	.string	"global_value"
.LASF1518:
	.string	"in_system_header"
.LASF1318:
	.string	"lit0"
.LASF25:
	.string	"list"
.LASF1395:
	.string	"require_constant"
.LASF1472:
	.string	"constructor_depth"
.LASF458:
	.string	"CONVERT_EXPR"
.LASF1004:
	.string	"RID_AND"
.LASF206:
	.string	"SCRATCH"
.LASF115:
	.string	"V8QImode"
.LASF1069:
	.string	"c_common_identifier"
.LASF410:
	.string	"TRUNC_MOD_EXPR"
.LASF1475:
	.string	"constructor_top_level"
.LASF118:
	.string	"V8DImode"
.LASF147:
	.string	"MAX_MODE_CLASS"
.LASF1204:
	.string	"subtype1"
.LASF1205:
	.string	"subtype2"
.LASF785:
	.string	"itk_unsigned_long_long"
.LASF1022:
	.string	"RID_AT_PROTECTED"
.LASF1163:
	.string	"fields"
.LASF1505:
	.string	"warn_bad_function_cast"
.LASF1413:
	.string	"fieldname"
.LASF406:
	.string	"TRUNC_DIV_EXPR"
.LASF245:
	.string	"SIGN_EXTEND"
.LASF1302:
	.string	"xresultcode"
.LASF982:
	.string	"RID_PUBLIC"
.LASF463:
	.string	"UNSAVE_EXPR"
.LASF1065:
	.string	"CTI_C99_FUNCTION_NAME_DECL"
.LASF1243:
	.string	"lookup_field"
.LASF822:
	.string	"splay_tree"
.LASF405:
	.string	"MULT_EXPR"
.LASF636:
	.string	"value"
.LASF1335:
	.string	"readonly_warning"
.LASF267:
	.string	"VEC_DUPLICATE"
.LASF444:
	.string	"GE_EXPR"
.LASF1016:
	.string	"RID_AT_ENCODE"
.LASF1305:
	.string	"unsignedp0"
.LASF344:
	.string	"ERROR_MARK"
.LASF71:
	.string	"_next"
.LASF1500:
	.string	"current_function_returns_abnormally"
.LASF855:
	.string	"CPP_EQ_EQ"
.LASF531:
	.string	"BUILT_IN_STRPBRK"
.LASF1261:
	.string	"params"
.LASF466:
	.string	"REFERENCE_EXPR"
.LASF285:
	.string	"expr"
.LASF411:
	.string	"CEIL_MOD_EXPR"
.LASF949:
	.string	"RID_IF"
.LASF322:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF651:
	.string	"address"
.LASF935:
	.string	"RID_IN"
.LASF1438:
	.string	"build_asm_stmt"
.LASF611:
	.string	"deprecated_flag"
.LASF560:
	.string	"BUILT_IN_PUTCHAR"
.LASF792:
	.string	"function_type_required"
.LASF1041:
	.string	"CTI_SIGNED_SIZE_TYPE"
.LASF1306:
	.string	"unsignedp1"
.LASF987:
	.string	"RID_CATCH"
.LASF124:
	.string	"V8SFmode"
.LASF407:
	.string	"CEIL_DIV_EXPR"
.LASF1406:
	.string	"set_designator"
.LASF879:
	.string	"CPP_PLUS_PLUS"
.LASF550:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF1324:
	.string	"noconvert"
.LASF189:
	.string	"ASM_OPERANDS"
.LASF1374:
	.string	"pedantic_lvalue_warning"
.LASF713:
	.string	"live_range_rtl"
.LASF1068:
	.string	"CTI_MAX"
.LASF669:
	.string	"minval"
.LASF132:
	.string	"CCZmode"
.LASF1121:
	.string	"integer"
.LASF1156:
	.string	"spelling"
.LASF313:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF1460:
	.string	"constructor_fields"
.LASF801:
	.string	"UBITSIZETYPE"
.LASF408:
	.string	"FLOOR_DIV_EXPR"
.LASF346:
	.string	"TREE_LIST"
.LASF1288:
	.string	"converted"
.LASF1195:
	.string	"cases"
.LASF1160:
	.string	"balance"
.LASF977:
	.string	"RID_PRETTY_FUNCTION_NAME"
.LASF1235:
	.string	"orig_exp"
.LASF1031:
	.string	"RID_FIRST_AT"
.LASF723:
	.string	"TI_INTQI_TYPE"
.LASF1122:
	.string	"function_prologue"
.LASF648:
	.string	"abstract_origin"
.LASF373:
	.string	"STRING_CST"
.LASF441:
	.string	"LT_EXPR"
.LASF1237:
	.string	"restype"
.LASF888:
	.string	"CPP_NUMBER"
.LASF1479:
	.string	"switch_stack"
.LASF1412:
	.string	"set_init_label"
.LASF1171:
	.string	"replacement_value"
.LASF1173:
	.string	"constant"
.LASF193:
	.string	"ADDR_DIFF_VEC"
.LASF431:
	.string	"BIT_XOR_EXPR"
.LASF489:
	.string	"SWITCH_EXPR"
.LASF438:
	.string	"TRUTH_OR_EXPR"
.LASF255:
	.string	"ZERO_EXTRACT"
.LASF1071:
	.string	"c_lang_decl"
.LASF188:
	.string	"ASM_INPUT"
.LASF480:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF632:
	.string	"ht_identifier"
.LASF238:
	.string	"ORDERED"
.LASF125:
	.string	"V8DFmode"
.LASF1231:
	.string	"c_size_in_bytes"
.LASF928:
	.string	"RID_UNBOUNDED"
.LASF711:
	.string	"assembler_name"
.LASF804:
	.string	"splay_tree_value"
.LASF1165:
	.string	"max_index"
.LASF1021:
	.string	"RID_AT_PRIVATE"
.LASF422:
	.string	"MIN_EXPR"
.LASF1025:
	.string	"RID_AT_SELECTOR"
.LASF756:
	.string	"TI_UV4SI_TYPE"
.LASF659:
	.string	"needs_constructing_flag"
.LASF252:
	.string	"UNSIGNED_FIX"
.LASF1189:
	.string	"top_level"
.LASF417:
	.string	"FIX_CEIL_EXPR"
.LASF948:
	.string	"RID_UNION"
.LASF528:
	.string	"BUILT_IN_STRNCMP"
.LASF1522:
	.string	"constructor_no_implicit"
.LASF1487:
	.string	"current_function_decl"
.LASF839:
	.string	"CPP_MOD"
.LASF1284:
	.string	"type0"
.LASF1214:
	.string	"type1"
.LASF1215:
	.string	"type2"
.LASF627:
	.string	"tree_complex"
.LASF1397:
	.string	"typ1"
.LASF944:
	.string	"RID_DOUBLE"
.LASF833:
	.string	"CPP_GREATER"
.LASF1130:
	.string	"destructor"
.LASF885:
	.string	"CPP_DOT_STAR"
.LASF1251:
	.string	"subdatum"
.LASF854:
	.string	"CPP_CLOSE_PAREN"
.LASF133:
	.string	"CCFPmode"
.LASF1090:
	.string	"GOTO_STMT"
.LASF442:
	.string	"LE_EXPR"
.LASF1147:
	.string	"insert_attributes"
.LASF709:
	.string	"result"
.LASF1346:
	.string	"build_c_cast"
.LASF1120:
	.string	"unaligned_op"
.LASF668:
	.string	"name"
.LASF152:
	.string	"INSN_LIST"
.LASF1005:
	.string	"RID_AND_EQ"
.LASF72:
	.string	"_sbuf"
.LASF260:
	.string	"RANGE_VAR"
.LASF1370:
	.string	"memb_type"
.LASF52:
	.string	"_IO_save_end"
.LASF1118:
	.string	"byte_op"
.LASF1139:
	.string	"reorder2"
.LASF139:
	.string	"MODE_INT"
.LASF830:
	.string	"cpp_ttype"
.LASF18:
	.string	"real_cst"
.LASF963:
	.string	"RID_TYPEOF"
.LASF423:
	.string	"MAX_EXPR"
.LASF1363:
	.string	"errtype"
.LASF1398:
	.string	"start_init"
.LASF2:
	.string	"jump"
.LASF641:
	.string	"tree_block"
.LASF737:
	.string	"TI_SIZE_ZERO"
.LASF1011:
	.string	"RID_XOR_EQ"
.LASF1135:
	.string	"variable_issue"
.LASF646:
	.string	"subblocks"
.LASF1143:
	.string	"merge_type_attributes"
.LASF1105:
	.string	"implicit_decl"
.LASF1482:
	.string	"mode_unit_size"
.LASF1077:
	.string	"ARROW_EXPR"
.LASF778:
	.string	"itk_short"
.LASF1208:
	.string	"pointed_to_2"
.LASF522:
	.string	"BUILT_IN_MEMSET"
.LASF261:
	.string	"RANGE_LIVE"
.LASF414:
	.string	"RDIV_EXPR"
.LASF1220:
	.string	"d2_zero"
.LASF9:
	.string	"frame_related"
.LASF689:
	.string	"virtual_flag"
.LASF1191:
	.string	"require_constant_elements"
.LASF1057:
	.string	"CTI_C_BOOL_FALSE"
.LASF663:
	.string	"pointer_depth"
.LASF864:
	.string	"CPP_AND_EQ"
.LASF626:
	.string	"pointer"
.LASF827:
	.string	"rid_code"
.LASF375:
	.string	"LABEL_DECL"
.LASF1248:
	.string	"anon"
.LASF1430:
	.string	"orig_value"
.LASF838:
	.string	"CPP_DIV"
.LASF593:
	.string	"END_BUILTINS"
.LASF297:
	.string	"rt_addr_diff_vec_flags"
.LASF1314:
	.string	"pointer_diff"
.LASF799:
	.string	"BITSIZETYPE"
.LASF336:
	.string	"GR_ARG_POINTER"
.LASF991:
	.string	"RID_NEW"
.LASF884:
	.string	"CPP_DEREF_STAR"
.LASF1223:
	.string	"function_types_compatible_p"
.LASF27:
	.string	"sizetype"
.LASF270:
	.string	"SS_MINUS"
.LASF947:
	.string	"RID_STRUCT"
.LASF881:
	.string	"CPP_DEREF"
.LASF371:
	.string	"COMPLEX_CST"
.LASF157:
	.string	"MATCH_PARALLEL"
.LASF113:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF594:
	.string	"tree_common"
.LASF673:
	.string	"binfo"
.LASF740:
	.string	"TI_BITSIZE_ONE"
.LASF814:
	.string	"splay_tree_s"
.LASF33:
	.string	"short unsigned int"
.LASF1003:
	.string	"RID_STATCAST"
.LASF1008:
	.string	"RID_OR"
.LASF34:
	.string	"signed char"
.LASF946:
	.string	"RID_ENUM"
.LASF734:
	.string	"TI_INTEGER_ONE"
.LASF156:
	.string	"MATCH_OPERATOR"
.LASF1186:
	.string	"asmspec"
.LASF1483:
	.string	"tree_code_type"
.LASF635:
	.string	"purpose"
.LASF1260:
	.string	"build_function_call"
.LASF939:
	.string	"RID_BYREF"
.LASF724:
	.string	"TI_INTHI_TYPE"
.LASF1308:
	.string	"primop1"
.LASF665:
	.string	"pointer_to"
.LASF720:
	.string	"pending_sizes"
.LASF698:
	.string	"weak_flag"
.LASF1373:
	.string	"parm"
.LASF714:
	.string	"saved_tree"
.LASF637:
	.string	"tree_vec"
.LASF841:
	.string	"CPP_OR"
.LASF1188:
	.string	"spelling_size"
.LASF682:
	.string	"filename"
.LASF1299:
	.string	"xop0"
.LASF1514:
	.string	"warn_unused_value"
.LASF816:
	.string	"comp"
.LASF272:
	.string	"SS_TRUNCATE"
.LASF475:
	.string	"POSTDECREMENT_EXPR"
.LASF1316:
	.string	"con0"
.LASF1317:
	.string	"con1"
.LASF1269:
	.string	"parmnum"
.LASF493:
	.string	"NOT_BUILT_IN"
.LASF568:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF926:
	.string	"RID_RESTRICT"
.LASF842:
	.string	"CPP_XOR"
.LASF572:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF276:
	.string	"base_after_vec"
.LASF1035:
	.string	"c_tree_index"
.LASF1417:
	.string	"set_nonincremental_init"
.LASF161:
	.string	"DEFINE_INSN"
.LASF37:
	.string	"__off64_t"
.LASF773:
	.string	"TI_MAX"
.LASF114:
	.string	"V4DImode"
.LASF803:
	.string	"splay_tree_key"
.LASF605:
	.string	"nothrow_flag"
.LASF1227:
	.string	"type_lists_compatible_p"
.LASF1360:
	.string	"cond"
.LASF44:
	.string	"_IO_read_base"
.LASF1108:
	.string	"expand_modifier"
.LASF479:
	.string	"TRY_FINALLY_EXPR"
.LASF62:
	.string	"_offset"
.LASF1485:
	.string	"integer_types"
.LASF20:
	.string	"string"
.LASF337:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF443:
	.string	"GT_EXPR"
.LASF49:
	.string	"_IO_buf_end"
.LASF667:
	.string	"symtab"
.LASF170:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF271:
	.string	"US_MINUS"
.LASF1347:
	.string	"otype"
.LASF758:
	.string	"TI_UV8QI_TYPE"
.LASF824:
	.string	"ident"
.LASF878:
	.string	"CPP_ELLIPSIS"
.LASF1466:
	.string	"constructor_elements"
.LASF1180:
	.string	"constructor_range_stack"
.LASF383:
	.string	"COMPONENT_REF"
.LASF254:
	.string	"SIGN_EXTRACT"
.LASF690:
	.string	"ignored_flag"
.LASF8:
	.string	"integrated"
.LASF1334:
	.string	"incomplete_type_error"
.LASF404:
	.string	"MINUS_EXPR"
.LASF911:
	.string	"operator"
.LASF960:
	.string	"RID_GOTO"
.LASF195:
	.string	"CLOBBER"
.LASF671:
	.string	"next_variant"
.LASF1384:
	.string	"push_member_name"
.LASF68:
	.string	"_mode"
.LASF1170:
	.string	"depth"
.LASF145:
	.string	"MODE_VECTOR_INT"
.LASF45:
	.string	"_IO_write_base"
.LASF832:
	.string	"CPP_NOT"
.LASF1246:
	.string	"half"
.LASF1193:
	.string	"c_switch"
.LASF263:
	.string	"CALL_PLACEHOLDER"
.LASF1451:
	.string	"orig_type"
.LASF680:
	.string	"function"
.LASF532:
	.string	"BUILT_IN_STRSPN"
.LASF122:
	.string	"V4SFmode"
.LASF606:
	.string	"static_flag"
.LASF391:
	.string	"COMPOUND_EXPR"
.LASF1364:
	.string	"funname"
.LASF921:
	.string	"RID_SHORT"
.LASF923:
	.string	"RID_VOLATILE"
.LASF728:
	.string	"TI_UINTQI_TYPE"
.LASF1199:
	.string	"common_type"
.LASF1333:
	.string	"real_result"
.LASF1521:
	.string	"targetm"
.LASF551:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF654:
	.string	"size_unit"
.LASF567:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF217:
	.string	"PLUS"
.LASF519:
	.string	"BUILT_IN_RINDEX"
.LASF1032:
	.string	"RID_LAST_AT"
.LASF985:
	.string	"RID_TEMPLATE"
.LASF233:
	.string	"POST_DEC"
.LASF1311:
	.string	"unsignedp"
.LASF79:
	.string	"HImode"
.LASF305:
	.string	"rtunion"
.LASF315:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF999:
	.string	"RID_USING"
.LASF809:
	.string	"splay_tree_compare_fn"
.LASF143:
	.string	"MODE_COMPLEX_INT"
.LASF1447:
	.string	"c_expand_return"
.LASF1457:
	.string	"missing_braces_mentioned"
.LASF1048:
	.string	"CTI_WCHAR_ARRAY_TYPE"
.LASF988:
	.string	"RID_DELETE"
.LASF1047:
	.string	"CTI_CHAR_ARRAY_TYPE"
.LASF491:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF1494:
	.string	"flag_traditional"
.LASF29:
	.string	"long int"
.LASF1416:
	.string	"bitpos"
.LASF341:
	.string	"GR_VIRTUAL_CFA"
.LASF357:
	.string	"POINTER_TYPE"
.LASF425:
	.string	"FFS_EXPR"
.LASF349:
	.string	"VOID_TYPE"
.LASF1161:
	.string	"constructor_stack"
.LASF1278:
	.string	"class2"
.LASF461:
	.string	"VIEW_CONVERT_EXPR"
.LASF722:
	.string	"TI_ERROR_MARK"
.LASF1117:
	.string	"close_paren"
.LASF70:
	.string	"_IO_marker"
.LASF93:
	.string	"XFmode"
.LASF1276:
	.string	"class"
.LASF1151:
	.string	"expand_builtin"
.LASF882:
	.string	"CPP_DOT"
.LASF1383:
	.string	"push_string"
.LASF1279:
	.string	"flag"
.LASF123:
	.string	"V4DFmode"
.LASF1111:
	.string	"EXPAND_CONST_ADDRESS"
.LASF1098:
	.string	"CLEANUP_STMT"
.LASF4:
	.string	"unchanging"
.LASF693:
	.string	"defer_output"
.LASF770:
	.string	"TI_V2SF_TYPE"
.LASF906:
	.string	"BT_TIME"
.LASF1019:
	.string	"RID_AT_ALIAS"
.LASF310:
	.string	"NOTE_INSN_BLOCK_END"
.LASF1289:
	.string	"build_type"
.LASF969:
	.string	"RID_REALPART"
.LASF789:
	.string	"max_length"
.LASF1455:
	.string	"label"
.LASF1155:
	.string	"cannot_modify_jumps_p"
.LASF674:
	.string	"context"
.LASF1512:
	.string	"optimize"
.LASF1096:
	.string	"STMT_EXPR"
.LASF148:
	.string	"rtx_code"
.LASF945:
	.string	"RID_VOID"
.LASF402:
	.string	"WITH_RECORD_EXPR"
.LASF1411:
	.string	"last"
.LASF721:
	.string	"tree_index"
.LASF1298:
	.string	"unsigned_arg"
.LASF1319:
	.string	"lit1"
.LASF918:
	.string	"RID_EXTERN"
.LASF1415:
	.string	"add_pending_init"
.LASF825:
	.string	"arg_index"
.LASF905:
	.string	"BT_INCLUDE_LEVEL"
.LASF1145:
	.string	"comp_type_attributes"
.LASF642:
	.string	"handler_block_flag"
.LASF705:
	.string	"non_addressable"
.LASF503:
	.string	"BUILT_IN_FABSL"
.LASF1150:
	.string	"init_builtins"
.LASF1058:
	.string	"CTI_DEFAULT_FUNCTION_TYPE"
.LASF970:
	.string	"RID_LABEL"
.LASF1509:
	.string	"warn_missing_braces"
.LASF1507:
	.string	"warn_char_subscripts"
.LASF1452:
	.string	"do_case"
.LASF869:
	.string	"CPP_MIN_EQ"
.LASF1326:
	.string	"incremented"
.LASF583:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF1128:
	.string	"eh_frame_section"
.LASF149:
	.string	"UNKNOWN"
.LASF1040:
	.string	"CTI_C_SIZE_TYPE"
.LASF191:
	.string	"UNSPEC_VOLATILE"
.LASF388:
	.string	"ARRAY_RANGE_REF"
.LASF802:
	.string	"TYPE_KIND_LAST"
.LASF1010:
	.string	"RID_XOR"
.LASF964:
	.string	"RID_ALIGNOF"
.LASF530:
	.string	"BUILT_IN_STRSTR"
.LASF1332:
	.string	"unary_complex_lvalue"
.LASF692:
	.string	"common_flag"
.LASF318:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF1218:
	.string	"d2_variable"
.LASF31:
	.string	"long unsigned int"
.LASF700:
	.string	"no_instrument_function_entry_exit"
.LASF602:
	.string	"asm_written_flag"
.LASF495:
	.string	"BUILT_IN_MD"
.LASF11:
	.string	"rtx_def"
.LASF899:
	.string	"N_TTYPES"
.LASF343:
	.string	"tree_code"
.LASF1506:
	.string	"warn_traditional"
.LASF89:
	.string	"HFmode"
.LASF566:
	.string	"BUILT_IN_FPRINTF"
.LASF1404:
	.string	"push_init_level"
.LASF974:
	.string	"RID_CHOOSE_EXPR"
.LASF597:
	.string	"constant_flag"
.LASF538:
	.string	"BUILT_IN_COS"
.LASF198:
	.string	"TRAP_IF"
.LASF1312:
	.string	"bits"
.LASF1426:
	.string	"output_pending_init_elements"
.LASF942:
	.string	"RID_CHAR"
.LASF1354:
	.string	"saved_wsp"
.LASF1158:
	.string	"init_node"
.LASF610:
	.string	"bounded_flag"
.LASF380:
	.string	"RESULT_DECL"
.LASF478:
	.string	"TRY_CATCH_EXPR"
.LASF1079:
	.string	"EXPR_STMT"
.LASF763:
	.string	"TI_V4SF_TYPE"
.LASF634:
	.string	"tree_list"
.LASF1258:
	.string	"build_external_ref"
.LASF1262:
	.string	"fntype"
.LASF101:
	.string	"CQImode"
.LASF38:
	.string	"char"
.LASF1127:
	.string	"exception_section"
.LASF99:
	.string	"XCmode"
.LASF933:
	.string	"RID_EXPORT"
.LASF578:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF1517:
	.string	"pedantic"
.LASF1456:
	.string	"c_finish_case"
.LASF497:
	.string	"built_in_function"
.LASF1330:
	.string	"lvalue_or_else"
.LASF1072:
	.string	"declared_inline"
.LASF460:
	.string	"NON_LVALUE_EXPR"
.LASF1059:
	.string	"CTI_G77_INTEGER_TYPE"
.LASF862:
	.string	"CPP_DIV_EQ"
.LASF1431:
	.string	"fieldtype"
.LASF702:
	.string	"malloc_flag"
.LASF1006:
	.string	"RID_NOT"
.LASF48:
	.string	"_IO_buf_base"
.LASF1357:
	.string	"newrhs"
.LASF226:
	.string	"ROTATERT"
.LASF656:
	.string	"precision"
.LASF212:
	.string	"ADDRESSOF"
.LASF771:
	.string	"TI_V16QI_TYPE"
.LASF385:
	.string	"INDIRECT_REF"
.LASF883:
	.string	"CPP_SCOPE"
.LASF107:
	.string	"V2QImode"
.LASF483:
	.string	"RETURN_EXPR"
.LASF512:
	.string	"BUILT_IN_CIMAG"
.LASF553:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF836:
	.string	"CPP_MINUS"
.LASF1294:
	.string	"none_complex"
.LASF85:
	.string	"PHImode"
.LASF43:
	.string	"_IO_read_end"
.LASF971:
	.string	"RID_PTRBASE"
.LASF660:
	.string	"transparent_union_flag"
.LASF1049:
	.string	"CTI_INT_ARRAY_TYPE"
.LASF795:
	.string	"size_type_kind"
.LASF106:
	.string	"COImode"
.LASF231:
	.string	"PRE_DEC"
.LASF1338:
	.string	"ifexp"
.LASF1287:
	.string	"result_type"
.LASF821:
	.string	"allocate_data"
.LASF1070:
	.string	"node"
.LASF1033:
	.string	"RID_FIRST_PQ"
.LASF40:
	.string	"_IO_FILE"
.LASF1002:
	.string	"RID_REINTCAST"
.LASF317:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF1234:
	.string	"default_function_array_conversion"
.LASF335:
	.string	"GR_HARD_FRAME_POINTER"
.LASF1182:
	.string	"stack"
.LASF288:
	.string	"align"
.LASF1207:
	.string	"pointed_to_1"
.LASF580:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF775:
	.string	"itk_char"
.LASF1200:
	.string	"code1"
.LASF950:
	.string	"RID_ELSE"
.LASF1435:
	.string	"finish"
.LASF874:
	.string	"CPP_CLOSE_SQUARE"
.LASF898:
	.string	"CPP_EOF"
.LASF742:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF138:
	.string	"MODE_RANDOM"
.LASF269:
	.string	"US_PLUS"
.LASF929:
	.string	"RID_COMPLEX"
.LASF1389:
	.string	"buffer"
.LASF976:
	.string	"RID_FUNCTION_NAME"
.LASF992:
	.string	"RID_OPERATOR"
.LASF925:
	.string	"RID_AUTO"
.LASF1115:
	.string	"asm_out"
.LASF127:
	.string	"BLKmode"
.LASF893:
	.string	"CPP_WSTRING"
.LASF1450:
	.string	"c_start_case"
.LASF96:
	.string	"HCmode"
.LASF396:
	.string	"BIND_EXPR"
.LASF1104:
	.string	"label_value"
.LASF468:
	.string	"FDESC_EXPR"
.LASF761:
	.string	"TI_UV2SF_TYPE"
.LASF403:
	.string	"PLUS_EXPR"
.LASF767:
	.string	"TI_V8QI_TYPE"
.LASF1229:
	.string	"c_sizeof"
.LASF1510:
	.string	"warn_sign_compare"
.LASF511:
	.string	"BUILT_IN_CREALL"
.LASF1014:
	.string	"RID_COMPL"
.LASF772:
	.string	"TI_MAIN_IDENTIFIER"
.LASF1443:
	.string	"output"
.LASF529:
	.string	"BUILT_IN_STRLEN"
.LASF1076:
	.string	"SIZEOF_EXPR"
.LASF365:
	.string	"UNION_TYPE"
.LASF618:
	.string	"lang_flag_6"
.LASF203:
	.string	"CONST_STRING"
.LASF266:
	.string	"VEC_CONCAT"
.LASF287:
	.string	"size"
.LASF467:
	.string	"ENTRY_VALUE_EXPR"
.LASF1345:
	.string	"rest"
.LASF915:
	.string	"RID_UNSIGNED"
.LASF547:
	.string	"BUILT_IN_NEXT_ARG"
.LASF63:
	.string	"__pad1"
.LASF65:
	.string	"__pad3"
.LASF66:
	.string	"__pad4"
.LASF67:
	.string	"__pad5"
.LASF1382:
	.string	"inside_init"
.LASF179:
	.string	"ATTR_FLAG"
.LASF1001:
	.string	"RID_DYNCAST"
.LASF1285:
	.string	"code0"
.LASF1112:
	.string	"EXPAND_INITIALIZER"
.LASF1201:
	.string	"code2"
.LASF134:
	.string	"CCFPUmode"
.LASF1210:
	.string	"valtype"
.LASF169:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF697:
	.string	"artificial_flag"
.LASF826:
	.string	"directive_index"
.LASF53:
	.string	"_markers"
.LASF73:
	.string	"_pos"
.LASF1216:
	.string	"attrval"
.LASF173:
	.string	"ADDRESS"
.LASF448:
	.string	"ORDERED_EXPR"
.LASF591:
	.string	"BUILT_IN_VA_COPY"
.LASF1074:
	.string	"C_DUMMY_TREE_CODE"
.LASF1365:
	.string	"codel"
.LASF21:
	.string	"complex"
.LASF1367:
	.string	"coder"
.LASF1441:
	.string	"inputs"
.LASF1444:
	.string	"c_expand_asm_operands"
.LASF506:
	.string	"BUILT_IN_CONJ"
.LASF1297:
	.string	"arg0"
.LASF1274:
	.string	"arg1"
.LASF359:
	.string	"REFERENCE_TYPE"
.LASF1419:
	.string	"byte"
.LASF1226:
	.string	"val1"
.LASF303:
	.string	"bitmap_head_def"
.LASF1414:
	.string	"tail"
.LASF647:
	.string	"supercontext"
.LASF592:
	.string	"BUILT_IN_EXPECT"
.LASF962:
	.string	"RID_ASM"
.LASF670:
	.string	"maxval"
.LASF856:
	.string	"CPP_NOT_EQ"
.LASF447:
	.string	"UNORDERED_EXPR"
.LASF957:
	.string	"RID_BREAK"
.LASF755:
	.string	"TI_UV4SF_TYPE"
.LASF1387:
	.string	"spelling_length"
.LASF954:
	.string	"RID_SWITCH"
.LASF273:
	.string	"US_TRUNCATE"
.LASF614:
	.string	"lang_flag_2"
.LASF1018:
	.string	"RID_AT_CLASS"
.LASF1051:
	.string	"CTI_CONST_STRING_TYPE"
.LASF533:
	.string	"BUILT_IN_STRCSPN"
.LASF1055:
	.string	"CTI_C_BOOL_TYPE"
.LASF455:
	.string	"SET_LE_EXPR"
.LASF1103:
	.string	"local_value"
.LASF330:
	.string	"global_rtl_index"
.LASF887:
	.string	"CPP_NAME"
.LASF268:
	.string	"SS_PLUS"
.LASF230:
	.string	"UMAX"
.LASF474:
	.string	"PREINCREMENT_EXPR"
.LASF1153:
	.string	"have_named_sections"
.LASF282:
	.string	"scale"
.LASF683:
	.string	"linenum"
.LASF78:
	.string	"QImode"
.LASF891:
	.string	"CPP_OTHER"
.LASF1480:
	.string	"target_flags"
.LASF451:
	.string	"UNGT_EXPR"
.LASF1501:
	.string	"skip_evaluation"
.LASF333:
	.string	"GR_STACK_POINTER"
.LASF823:
	.string	"cpp_hashnode"
.LASF1133:
	.string	"adjust_priority"
.LASF664:
	.string	"user_align"
.LASF500:
	.string	"BUILT_IN_LABS"
.LASF984:
	.string	"RID_PROTECTED"
.LASF90:
	.string	"TQFmode"
.LASF1267:
	.string	"typetail"
.LASF972:
	.string	"RID_PTREXTENT"
.LASF1052:
	.string	"CTI_BOOLEAN_TYPE"
.LASF599:
	.string	"volatile_flag"
.LASF959:
	.string	"RID_RETURN"
.LASF523:
	.string	"BUILT_IN_STRCAT"
.LASF539:
	.string	"BUILT_IN_SQRTF"
.LASF279:
	.string	"min_after_base"
.LASF859:
	.string	"CPP_PLUS_EQ"
.LASF542:
	.string	"BUILT_IN_SQRTL"
.LASF1423:
	.string	"output_init_element"
.LASF1190:
	.string	"require_constant_value"
.LASF1131:
	.string	"sched"
.LASF781:
	.string	"itk_unsigned_int"
.LASF679:
	.string	"off_align"
.LASF490:
	.string	"EXC_PTR_EXPR"
.LASF1355:
	.string	"build_modify_expr"
.LASF1017:
	.string	"RID_AT_END"
.LASF517:
	.string	"BUILT_IN_FFS"
.LASF811:
	.string	"splay_tree_delete_value_fn"
.LASF604:
	.string	"used_flag"
.LASF562:
	.string	"BUILT_IN_PRINTF"
.LASF356:
	.string	"CHAR_TYPE"
.LASF807:
	.string	"left"
.LASF655:
	.string	"attributes"
.LASF766:
	.string	"TI_V8HI_TYPE"
.LASF1042:
	.string	"CTI_UNSIGNED_PTRDIFF_TYPE"
.LASF1336:
	.string	"mark_addressable"
.LASF1390:
	.string	"error_init"
.LASF418:
	.string	"FIX_FLOOR_EXPR"
.LASF83:
	.string	"OImode"
.LASF608:
	.string	"private_flag"
.LASF569:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF612:
	.string	"lang_flag_0"
.LASF613:
	.string	"lang_flag_1"
.LASF384:
	.string	"BIT_FIELD_REF"
.LASF615:
	.string	"lang_flag_3"
.LASF616:
	.string	"lang_flag_4"
.LASF617:
	.string	"lang_flag_5"
.LASF228:
	.string	"SMAX"
.LASF707:
	.string	"lang_flag_7"
.LASF342:
	.string	"GR_MAX"
.LASF717:
	.string	"pointer_alias_set"
.LASF265:
	.string	"VEC_SELECT"
.LASF504:
	.string	"BUILT_IN_LLABS"
.LASF759:
	.string	"TI_UV4HI_TYPE"
.LASF378:
	.string	"VAR_DECL"
.LASF640:
	.string	"operands"
.LASF1351:
	.string	"added"
.LASF392:
	.string	"MODIFY_EXPR"
.LASF1046:
	.string	"CTI_WIDEST_UINT_LIT_TYPE"
.LASF633:
	.string	"tree_identifier"
.LASF146:
	.string	"MODE_VECTOR_FLOAT"
.LASF347:
	.string	"TREE_VEC"
.LASF236:
	.string	"POST_MODIFY"
.LASF1386:
	.string	"bounds"
.LASF1369:
	.string	"marginal_memb_type"
.LASF1230:
	.string	"c_sizeof_nowarn"
.LASF545:
	.string	"BUILT_IN_SAVEREGS"
.LASF818:
	.string	"delete_value"
.LASF1202:
	.string	"retry"
.LASF484:
	.string	"EXIT_EXPR"
.LASF507:
	.string	"BUILT_IN_CONJF"
.LASF427:
	.string	"RSHIFT_EXPR"
.LASF1273:
	.string	"parser_build_binary_op"
.LASF508:
	.string	"BUILT_IN_CONJL"
.LASF162:
	.string	"DEFINE_PEEPHOLE"
.LASF1043:
	.string	"CTI_INTMAX_TYPE"
.LASF74:
	.string	"long long unsigned int"
.LASF324:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF1159:
	.string	"parent"
.LASF286:
	.string	"offset"
.LASF283:
	.string	"addr_diff_vec_flags"
.LASF58:
	.string	"_cur_column"
.LASF1099:
	.string	"LAST_C_TREE_CODE"
.LASF158:
	.string	"MATCH_OP_DUP"
.LASF172:
	.string	"SEQUENCE"
.LASF1321:
	.string	"xarg"
.LASF1157:
	.string	"kind"
.LASF345:
	.string	"IDENTIFIER_NODE"
.LASF1454:
	.string	"high_value"
.LASF1110:
	.string	"EXPAND_SUM"
.LASF1134:
	.string	"issue_rate"
.LASF1290:
	.string	"final_type"
.LASF88:
	.string	"QFmode"
.LASF1087:
	.string	"BREAK_STMT"
.LASF1440:
	.string	"outputs"
.LASF1149:
	.string	"ms_bitfield_layout_p"
.LASF712:
	.string	"section_name"
.LASF1095:
	.string	"CASE_LABEL"
.LASF1024:
	.string	"RID_AT_PROTOCOL"
.LASF449:
	.string	"UNLT_EXPR"
.LASF793:
	.string	"handler"
.LASF1015:
	.string	"RID_ID"
.LASF368:
	.string	"LANG_TYPE"
.LASF199:
	.string	"RESX"
.LASF1481:
	.string	"mode_size"
.LASF1366:
	.string	"rhstype"
.LASF903:
	.string	"BT_FILE"
.LASF187:
	.string	"PARALLEL"
.LASF1083:
	.string	"FOR_STMT"
.LASF1403:
	.string	"really_start_incremental_init"
.LASF13:
	.string	"num_elem"
.LASF733:
	.string	"TI_INTEGER_ZERO"
.LASF1513:
	.string	"extra_warnings"
.LASF51:
	.string	"_IO_backup_base"
.LASF237:
	.string	"UNORDERED"
.LASF135:
	.string	"MAX_MACHINE_MODE"
.LASF42:
	.string	"_IO_read_ptr"
.LASF1323:
	.string	"typecode"
.LASF1064:
	.string	"CTI_PRETTY_FUNCTION_NAME_DECL"
.LASF1253:
	.string	"errorstring"
.LASF780:
	.string	"itk_int"
.LASF1255:
	.string	"array"
.LASF989:
	.string	"RID_FALSE"
.LASF546:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF154:
	.string	"MATCH_SCRATCH"
.LASF204:
	.string	"CONST"
.LASF253:
	.string	"SQRT"
.LASF657:
	.string	"string_flag"
.LASF924:
	.string	"RID_SIGNED"
.LASF1266:
	.string	"typelist"
.LASF332:
	.string	"GR_CC0"
.LASF1233:
	.string	"decl_constant_value_for_broken_optimization"
.LASF1172:
	.string	"range_stack"
.LASF137:
	.string	"mode_class"
.LASF219:
	.string	"MULT"
.LASF363:
	.string	"SET_TYPE"
.LASF142:
	.string	"MODE_CC"
.LASF645:
	.string	"vars"
.LASF917:
	.string	"RID_CONST"
.LASF1295:
	.string	"unsigned0"
.LASF397:
	.string	"CALL_EXPR"
.LASF84:
	.string	"PQImode"
.LASF1211:
	.string	"newargs"
.LASF1434:
	.string	"eltcode"
.LASF432:
	.string	"BIT_AND_EXPR"
.LASF1375:
	.string	"warn_for_assignment"
.LASF471:
	.string	"REALPART_EXPR"
.LASF1449:
	.string	"inner"
.LASF936:
	.string	"RID_OUT"
.LASF850:
	.string	"CPP_QUERY"
.LASF116:
	.string	"V8HImode"
.LASF1236:
	.string	"not_lvalue"
.LASF725:
	.string	"TI_INTSI_TYPE"
.LASF513:
	.string	"BUILT_IN_CIMAGF"
.LASF685:
	.string	"nonlocal_flag"
.LASF57:
	.string	"_old_offset"
.LASF182:
	.string	"CALL_INSN"
.LASF868:
	.string	"CPP_LSHIFT_EQ"
.LASF207:
	.string	"SUBREG"
.LASF1448:
	.string	"retval"
.LASF662:
	.string	"restrict_flag"
.LASF916:
	.string	"RID_LONG"
.LASF119:
	.string	"V16QImode"
.LASF1489:
	.string	"ridpointers"
.LASF501:
	.string	"BUILT_IN_FABS"
.LASF1515:
	.string	"warn_return_type"
.LASF1029:
	.string	"RID_FIRST_MODIFIER"
.LASF1428:
	.string	"elt_bitpos"
.LASF23:
	.string	"decl"
.LASF1264:
	.string	"coerced_params"
.LASF472:
	.string	"IMAGPART_EXPR"
.LASF75:
	.string	"long long int"
.LASF760:
	.string	"TI_UV2SI_TYPE"
.LASF715:
	.string	"inlined_fns"
.LASF786:
	.string	"itk_none"
.LASF56:
	.string	"_flags2"
.LASF800:
	.string	"SBITSIZETYPE"
.LASF95:
	.string	"QCmode"
.LASF205:
	.string	"VALUE"
.LASF940:
	.string	"RID_ONEWAY"
.LASF185:
	.string	"NOTE"
.LASF1391:
	.string	"ofwhat"
.LASF806:
	.string	"splay_tree_node_s"
.LASF400:
	.string	"CLEANUP_POINT_EXPR"
.LASF867:
	.string	"CPP_RSHIFT_EQ"
.LASF1080:
	.string	"COMPOUND_STMT"
.LASF1240:
	.string	"volatilep"
.LASF229:
	.string	"UMIN"
.LASF155:
	.string	"MATCH_DUP"
.LASF370:
	.string	"REAL_CST"
.LASF576:
	.string	"BUILT_IN_ISLESS"
.LASF534:
	.string	"BUILT_IN_STRCHR"
.LASF590:
	.string	"BUILT_IN_VA_END"
.LASF1337:
	.string	"build_conditional_expr"
.LASF1313:
	.string	"folded"
.LASF304:
	.string	"basic_block_def"
.LASF953:
	.string	"RID_FOR"
.LASF853:
	.string	"CPP_OPEN_PAREN"
.LASF1203:
	.string	"parm_done"
.LASF666:
	.string	"reference_to"
.LASF990:
	.string	"RID_NAMESPACE"
.LASF419:
	.string	"FIX_ROUND_EXPR"
.LASF1152:
	.string	"section_type_flags"
.LASF446:
	.string	"NE_EXPR"
.LASF554:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF541:
	.string	"BUILT_IN_COSF"
.LASF354:
	.string	"ENUMERAL_TYPE"
.LASF1073:
	.string	"c_tree_code"
.LASF1256:
	.string	"rval"
.LASF1418:
	.string	"set_nonincremental_init_from_string"
.LASF311:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF102:
	.string	"CHImode"
.LASF510:
	.string	"BUILT_IN_CREALF"
.LASF327:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF177:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF1282:
	.string	"orig_op1"
.LASF699:
	.string	"non_addr_const_p"
.LASF1425:
	.string	"unfillpos"
.LASF631:
	.string	"elements"
.LASF776:
	.string	"itk_signed_char"
.LASF1471:
	.string	"constructor_pending_elts"
.LASF1492:
	.string	"warn_pointer_arith"
.LASF201:
	.string	"CONST_DOUBLE"
.LASF556:
	.string	"BUILT_IN_SETJMP"
.LASF738:
	.string	"TI_SIZE_ONE"
.LASF810:
	.string	"splay_tree_delete_key_fn"
.LASF573:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF782:
	.string	"itk_long"
.LASF1176:
	.string	"erroneous"
.LASF1343:
	.string	"internal_build_compound_expr"
.LASF131:
	.string	"CCNOmode"
.LASF112:
	.string	"V4HImode"
.LASF390:
	.string	"CONSTRUCTOR"
.LASF1277:
	.string	"class1"
.LASF239:
	.string	"UNEQ"
.LASF835:
	.string	"CPP_PLUS"
.LASF348:
	.string	"BLOCK"
.LASF1407:
	.string	"subcode"
.LASF1340:
	.string	"unsigned_op1"
.LASF222:
	.string	"ASHIFT"
.LASF754:
	.string	"TI_VOID_LIST_NODE"
.LASF227:
	.string	"SMIN"
.LASF1402:
	.string	"__FUNCTION__"
.LASF214:
	.string	"IF_THEN_ELSE"
.LASF1183:
	.string	"range_start"
.LASF995:
	.string	"RID_TRUE"
.LASF688:
	.string	"bit_field_flag"
.LASF860:
	.string	"CPP_MINUS_EQ"
.LASF561:
	.string	"BUILT_IN_PUTS"
.LASF1315:
	.string	"target_type"
.LASF1027:
	.string	"RID_AT_IMPLEMENTATION"
.LASF691:
	.string	"in_system_header_flag"
.LASF1275:
	.string	"arg2"
.LASF1350:
	.string	"in_otype"
.LASF1184:
	.string	"range_end"
.LASF1392:
	.string	"pedwarn_init"
.LASF694:
	.string	"transparent_union"
.LASF323:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF894:
	.string	"CPP_HEADER_NAME"
.LASF1177:
	.string	"outer"
.LASF716:
	.string	"vindex"
.LASF889:
	.string	"CPP_CHAR"
.LASF1194:
	.string	"switch_stmt"
.LASF1228:
	.string	"newval"
.LASF320:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF372:
	.string	"VECTOR_CST"
.LASF28:
	.string	"unsigned int"
.LASF464:
	.string	"RTL_EXPR"
.LASF290:
	.string	"tree_node"
.LASF1320:
	.string	"build_unary_op"
.LASF904:
	.string	"BT_BASE_FILE"
.LASF453:
	.string	"UNEQ_EXPR"
.LASF526:
	.string	"BUILT_IN_STRNCPY"
.LASF1342:
	.string	"build_compound_expr"
.LASF866:
	.string	"CPP_XOR_EQ"
.LASF813:
	.string	"splay_tree_deallocate_fn"
.LASF278:
	.string	"max_after_vec"
.LASF350:
	.string	"INTEGER_TYPE"
.LASF240:
	.string	"UNGE"
.LASF1044:
	.string	"CTI_UINTMAX_TYPE"
.LASF684:
	.string	"external_flag"
.LASF35:
	.string	"short int"
.LASF457:
	.string	"RANGE_EXPR"
.LASF241:
	.string	"UNGT"
.LASF536:
	.string	"BUILT_IN_SQRT"
.LASF386:
	.string	"BUFFER_REF"
.LASF958:
	.string	"RID_CONTINUE"
.LASF1437:
	.string	"stmt"
.LASF1181:
	.string	"prev"
.LASF59:
	.string	"_vtable_offset"
.LASF469:
	.string	"COMPLEX_EXPR"
.LASF582:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1458:
	.string	"undeclared_variable_notice"
.LASF450:
	.string	"UNLE_EXPR"
.LASF1361:
	.string	"inner_lhs"
.LASF871:
	.string	"CPP_HASH"
.LASF978:
	.string	"RID_C99_FUNCTION_NAME"
.LASF912:
	.string	"builtin"
.LASF76:
	.string	"VOIDmode"
.LASF753:
	.string	"TI_VA_LIST_TYPE"
.LASF788:
	.string	"min_length"
.LASF340:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF257:
	.string	"LO_SUM"
.LASF598:
	.string	"addressable_flag"
.LASF527:
	.string	"BUILT_IN_STRCMP"
.LASF351:
	.string	"REAL_TYPE"
.LASF1371:
	.string	"selector"
.LASF292:
	.string	"rtwint"
.LASF1372:
	.string	"c_convert_parm_for_inlining"
.LASF993:
	.string	"RID_THIS"
.LASF1497:
	.string	"warn_conversion"
.LASF488:
	.string	"EXPR_WITH_FILE_LOCATION"
.LASF1270:
	.string	"parmval"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
