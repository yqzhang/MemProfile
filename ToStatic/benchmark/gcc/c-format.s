	.file	"c-format.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 c-format.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	warn_format,4,4
	.comm	warn_format_y2k,4,4
	.comm	warn_format_extra_args,4,4
	.comm	warn_format_nonliteral,4,4
	.comm	warn_format_security,4,4
	.globl	set_Wformat
	.type	set_Wformat, @function
set_Wformat:
.LFB2:
	.file 1 "c-format.c"
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# setting, setting
	.loc 1 61 0
	movl	-4(%rbp), %eax	# setting, tmp59
	movl	%eax, warn_format(%rip)	# tmp59, warn_format
	.loc 1 62 0
	movl	-4(%rbp), %eax	# setting, tmp60
	movl	%eax, warn_format_y2k(%rip)	# tmp60, warn_format_y2k
	.loc 1 63 0
	movl	-4(%rbp), %eax	# setting, tmp61
	movl	%eax, warn_format_extra_args(%rip)	# tmp61, warn_format_extra_args
	.loc 1 64 0
	cmpl	$1, -4(%rbp)	#, setting
	je	.L1	#,
	.loc 1 66 0
	movl	-4(%rbp), %eax	# setting, tmp62
	movl	%eax, warn_format_nonliteral(%rip)	# tmp62, warn_format_nonliteral
	.loc 1 67 0
	movl	-4(%rbp), %eax	# setting, tmp63
	movl	%eax, warn_format_security(%rip)	# tmp63, warn_format_security
.L1:
	.loc 1 69 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	set_Wformat, .-set_Wformat
	.section	.rodata
	.align 8
.LC0:
	.string	"format string arg not a string type"
	.align 8
.LC1:
	.string	"args to be formatted is not '...'"
	.align 8
.LC2:
	.string	"strftime formats cannot format arguments"
	.text
	.globl	handle_format_attribute
	.type	handle_format_attribute, @function
handle_format_attribute:
.LFB3:
	.loc 1 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# node, node
	movq	%rsi, -80(%rbp)	# name, name
	movq	%rdx, -88(%rbp)	# args, args
	movl	%ecx, -92(%rbp)	# flags, flags
	movq	%r8, -104(%rbp)	# no_add_attrs, no_add_attrs
	.loc 1 101 0
	movq	-72(%rbp), %rax	# node, tmp76
	movq	(%rax), %rax	# *node_6(D), tmp77
	movq	%rax, -40(%rbp)	# tmp77, type
	.loc 1 106 0
	leaq	-32(%rbp), %rcx	#, tmp78
	movq	-88(%rbp), %rax	# args, tmp79
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	decode_format_attr	#
	xorl	$1, %eax	#, D.12419
	testb	%al, %al	# D.12419
	je	.L4	#,
	.loc 1 108 0
	movq	-104(%rbp), %rax	# no_add_attrs, tmp80
	movb	$1, (%rax)	#, *no_add_attrs_11(D)
	.loc 1 109 0
	movl	$0, %eax	#, D.12418
	jmp	.L17	#
.L4:
	.loc 1 115 0
	movq	-40(%rbp), %rax	# type, tmp81
	movq	24(%rax), %rax	# type_7->type.values, tmp82
	movq	%rax, -56(%rbp)	# tmp82, argument
	.loc 1 116 0
	cmpq	$0, -56(%rbp)	#, argument
	je	.L6	#,
	.loc 1 118 0
	movq	$1, -48(%rbp)	#, arg_num
	jmp	.L7	#
.L9:
	.loc 1 119 0
	addq	$1, -48(%rbp)	#, arg_num
	movq	-56(%rbp), %rax	# argument, tmp83
	movq	(%rax), %rax	# argument_1->common.chain, tmp84
	movq	%rax, -56(%rbp)	# tmp84, argument
.L7:
	.loc 1 118 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, argument
	je	.L8	#,
	.loc 1 118 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# info.format_num, D.12420
	cmpq	-48(%rbp), %rax	# arg_num, D.12420
	jne	.L9	#,
.L8:
	.loc 1 122 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, argument
	je	.L10	#,
	.loc 1 123 0
	movq	-56(%rbp), %rax	# argument, tmp85
	movq	32(%rax), %rax	# argument_1->list.value, D.12421
	movzbl	16(%rax), %eax	# _18->common.code, D.12422
	cmpb	$13, %al	#, D.12422
	jne	.L10	#,
	.loc 1 124 0
	movq	-56(%rbp), %rax	# argument, tmp86
	movq	32(%rax), %rax	# argument_1->list.value, D.12421
	movq	8(%rax), %rax	# _20->common.type, D.12421
	movq	128(%rax), %rdx	# _21->type.main_variant, D.12421
	.loc 1 125 0
	movq	integer_types(%rip), %rax	# integer_types, D.12421
	.loc 1 124 0
	cmpq	%rax, %rdx	# D.12421, D.12421
	je	.L11	#,
.L10:
	.loc 1 127 0
	movl	-92(%rbp), %eax	# flags, tmp87
	andl	$16, %eax	#, D.12423
	testl	%eax, %eax	# D.12423
	jne	.L12	#,
	.loc 1 128 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L12:
	.loc 1 129 0
	movq	-104(%rbp), %rax	# no_add_attrs, tmp88
	movb	$1, (%rax)	#, *no_add_attrs_11(D)
	.loc 1 130 0
	movl	$0, %eax	#, D.12418
	jmp	.L17	#
.L11:
	.loc 1 133 0
	movq	-16(%rbp), %rax	# info.first_arg_num, D.12420
	testq	%rax, %rax	# D.12420
	je	.L6	#,
	.loc 1 137 0
	jmp	.L13	#
.L14:
	.loc 1 138 0
	addq	$1, -48(%rbp)	#, arg_num
	movq	-56(%rbp), %rax	# argument, tmp89
	movq	(%rax), %rax	# argument_2->common.chain, tmp90
	movq	%rax, -56(%rbp)	# tmp90, argument
.L13:
	.loc 1 137 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, argument
	jne	.L14	#,
	.loc 1 140 0
	movq	-16(%rbp), %rax	# info.first_arg_num, D.12420
	cmpq	-48(%rbp), %rax	# arg_num, D.12420
	je	.L6	#,
	.loc 1 142 0
	movl	-92(%rbp), %eax	# flags, tmp91
	andl	$16, %eax	#, D.12423
	testl	%eax, %eax	# D.12423
	jne	.L15	#,
	.loc 1 143 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L15:
	.loc 1 144 0
	movq	-104(%rbp), %rax	# no_add_attrs, tmp92
	movb	$1, (%rax)	#, *no_add_attrs_11(D)
	.loc 1 145 0
	movl	$0, %eax	#, D.12418
	jmp	.L17	#
.L6:
	.loc 1 150 0
	movl	-32(%rbp), %eax	# info.format_type, D.12424
	cmpl	$2, %eax	#, D.12424
	jne	.L16	#,
	.loc 1 150 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# info.first_arg_num, D.12420
	testq	%rax, %rax	# D.12420
	je	.L16	#,
	.loc 1 152 0 is_stmt 1
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 153 0
	movq	-104(%rbp), %rax	# no_add_attrs, tmp93
	movb	$1, (%rax)	#, *no_add_attrs_11(D)
	.loc 1 154 0
	movl	$0, %eax	#, D.12418
	jmp	.L17	#
.L16:
	.loc 1 157 0
	movl	$0, %eax	#, D.12418
.L17:
	.loc 1 158 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	handle_format_attribute, .-handle_format_attribute
	.section	.rodata
	.align 8
.LC3:
	.string	"format string has invalid operand number"
	.align 8
.LC4:
	.string	"function does not return string type"
	.text
	.globl	handle_format_arg_attribute
	.type	handle_format_arg_attribute, @function
handle_format_arg_attribute:
.LFB4:
	.loc 1 170 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# node, node
	movq	%rsi, -64(%rbp)	# name, name
	movq	%rdx, -72(%rbp)	# args, args
	movl	%ecx, -76(%rbp)	# flags, flags
	movq	%r8, -88(%rbp)	# no_add_attrs, no_add_attrs
	.loc 1 171 0
	movq	-56(%rbp), %rax	# node, tmp80
	movq	(%rax), %rax	# *node_5(D), tmp81
	movq	%rax, -16(%rbp)	# tmp81, type
	.loc 1 172 0
	movq	-72(%rbp), %rax	# args, tmp82
	movq	32(%rax), %rax	# args_7(D)->list.value, tmp83
	movq	%rax, -40(%rbp)	# tmp83, format_num_expr
	.loc 1 179 0
	jmp	.L19	#
.L20:
	.loc 1 182 0
	movq	-40(%rbp), %rax	# format_num_expr, tmp84
	movq	32(%rax), %rax	# format_num_expr_1->exp.operands, tmp85
	movq	%rax, -40(%rbp)	# tmp85, format_num_expr
.L19:
	.loc 1 179 0 discriminator 1
	movq	-40(%rbp), %rax	# format_num_expr, tmp86
	movzbl	16(%rax), %eax	# format_num_expr_1->common.code, D.12429
	cmpb	$115, %al	#, D.12429
	je	.L20	#,
	.loc 1 180 0
	movq	-40(%rbp), %rax	# format_num_expr, tmp87
	movzbl	16(%rax), %eax	# format_num_expr_1->common.code, D.12429
	cmpb	$114, %al	#, D.12429
	je	.L20	#,
	.loc 1 181 0
	movq	-40(%rbp), %rax	# format_num_expr, tmp88
	movzbl	16(%rax), %eax	# format_num_expr_1->common.code, D.12429
	cmpb	$116, %al	#, D.12429
	je	.L20	#,
	.loc 1 184 0
	movq	-40(%rbp), %rax	# format_num_expr, tmp89
	movzbl	16(%rax), %eax	# format_num_expr_1->common.code, D.12429
	cmpb	$25, %al	#, D.12429
	jne	.L21	#,
	.loc 1 185 0
	movq	-40(%rbp), %rax	# format_num_expr, tmp90
	movq	40(%rax), %rax	# format_num_expr_1->int_cst.int_cst.high, D.12430
	testq	%rax, %rax	# D.12430
	je	.L22	#,
.L21:
	.loc 1 187 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 188 0
	movq	-88(%rbp), %rax	# no_add_attrs, tmp91
	movb	$1, (%rax)	#, *no_add_attrs_27(D)
	.loc 1 189 0
	movl	$0, %eax	#, D.12428
	jmp	.L23	#
.L22:
	.loc 1 192 0
	movq	-40(%rbp), %rax	# format_num_expr, tmp92
	movq	32(%rax), %rax	# format_num_expr_1->int_cst.int_cst.low, tmp93
	movq	%rax, -8(%rbp)	# tmp93, format_num
	.loc 1 197 0
	movq	-16(%rbp), %rax	# type, tmp94
	movq	24(%rax), %rax	# type_6->type.values, tmp95
	movq	%rax, -24(%rbp)	# tmp95, argument
	.loc 1 198 0
	cmpq	$0, -24(%rbp)	#, argument
	je	.L24	#,
	.loc 1 200 0
	movq	$1, -32(%rbp)	#, arg_num
	jmp	.L25	#
.L27:
	.loc 1 201 0
	addq	$1, -32(%rbp)	#, arg_num
	movq	-24(%rbp), %rax	# argument, tmp96
	movq	(%rax), %rax	# argument_3->common.chain, tmp97
	movq	%rax, -24(%rbp)	# tmp97, argument
.L25:
	.loc 1 200 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, argument
	je	.L26	#,
	.loc 1 200 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# arg_num, tmp98
	cmpq	-8(%rbp), %rax	# format_num, tmp98
	jne	.L27	#,
.L26:
	.loc 1 204 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, argument
	je	.L28	#,
	.loc 1 205 0
	movq	-24(%rbp), %rax	# argument, tmp99
	movq	32(%rax), %rax	# argument_3->list.value, D.12431
	movzbl	16(%rax), %eax	# _19->common.code, D.12429
	cmpb	$13, %al	#, D.12429
	jne	.L28	#,
	.loc 1 206 0
	movq	-24(%rbp), %rax	# argument, tmp100
	movq	32(%rax), %rax	# argument_3->list.value, D.12431
	movq	8(%rax), %rax	# _21->common.type, D.12431
	movq	128(%rax), %rdx	# _22->type.main_variant, D.12431
	.loc 1 207 0
	movq	integer_types(%rip), %rax	# integer_types, D.12431
	.loc 1 206 0
	cmpq	%rax, %rdx	# D.12431, D.12431
	je	.L24	#,
.L28:
	.loc 1 209 0
	movl	-76(%rbp), %eax	# flags, tmp101
	andl	$16, %eax	#, D.12432
	testl	%eax, %eax	# D.12432
	jne	.L29	#,
	.loc 1 210 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L29:
	.loc 1 211 0
	movq	-88(%rbp), %rax	# no_add_attrs, tmp102
	movb	$1, (%rax)	#, *no_add_attrs_27(D)
	.loc 1 212 0
	movl	$0, %eax	#, D.12428
	jmp	.L23	#
.L24:
	.loc 1 216 0
	movq	-16(%rbp), %rax	# type, tmp103
	movq	8(%rax), %rax	# type_6->common.type, D.12431
	movzbl	16(%rax), %eax	# _29->common.code, D.12429
	cmpb	$13, %al	#, D.12429
	jne	.L30	#,
	.loc 1 217 0
	movq	-16(%rbp), %rax	# type, tmp104
	movq	8(%rax), %rax	# type_6->common.type, D.12431
	movq	8(%rax), %rax	# _31->common.type, D.12431
	movq	128(%rax), %rdx	# _32->type.main_variant, D.12431
	.loc 1 218 0
	movq	integer_types(%rip), %rax	# integer_types, D.12431
	.loc 1 217 0
	cmpq	%rax, %rdx	# D.12431, D.12431
	je	.L31	#,
.L30:
	.loc 1 220 0
	movl	-76(%rbp), %eax	# flags, tmp105
	andl	$16, %eax	#, D.12432
	testl	%eax, %eax	# D.12432
	jne	.L32	#,
	.loc 1 221 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L32:
	.loc 1 222 0
	movq	-88(%rbp), %rax	# no_add_attrs, tmp106
	movb	$1, (%rax)	#, *no_add_attrs_27(D)
	.loc 1 223 0
	movl	$0, %eax	#, D.12428
	jmp	.L23	#
.L31:
	.loc 1 226 0
	movl	$0, %eax	#, D.12428
.L23:
	.loc 1 227 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	handle_format_arg_attribute, .-handle_format_arg_attribute
	.section	.rodata
.LC5:
	.string	"c-format.c"
.LC6:
	.string	"unrecognized format specifier"
	.align 8
.LC7:
	.string	"`%s' is an unrecognized format function type"
	.align 8
.LC8:
	.string	"format string arg follows the args to be formatted"
	.text
	.type	decode_format_attr, @function
decode_format_attr:
.LFB5:
	.loc 1 242 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# args, args
	movq	%rsi, -48(%rbp)	# info, info
	movl	%edx, -52(%rbp)	# validated_p, validated_p
	.loc 1 243 0
	movq	-40(%rbp), %rax	# args, tmp82
	movq	32(%rax), %rax	# args_4(D)->list.value, tmp83
	movq	%rax, -16(%rbp)	# tmp83, format_type_id
	.loc 1 244 0
	movq	-40(%rbp), %rax	# args, tmp84
	movq	(%rax), %rax	# args_4(D)->common.chain, D.12436
	movq	32(%rax), %rax	# _6->list.value, tmp85
	movq	%rax, -32(%rbp)	# tmp85, format_num_expr
	.loc 1 246 0
	movq	-40(%rbp), %rax	# args, tmp86
	movq	(%rax), %rax	# args_4(D)->common.chain, D.12436
	movq	(%rax), %rax	# _8->common.chain, D.12436
	.loc 1 245 0
	movq	32(%rax), %rax	# _9->list.value, tmp87
	movq	%rax, -24(%rbp)	# tmp87, first_arg_num_expr
	.loc 1 248 0
	movq	-16(%rbp), %rax	# format_type_id, tmp88
	movzbl	16(%rax), %eax	# format_type_id_5->common.code, D.12437
	cmpb	$1, %al	#, D.12437
	je	.L34	#,
	.loc 1 250 0
	cmpl	$0, -52(%rbp)	#, validated_p
	je	.L35	#,
	.loc 1 251 0
	movl	$__FUNCTION__.10189, %edx	#,
	movl	$251, %esi	#,
	movl	$.LC5, %edi	#,
	call	fancy_abort	#
.L35:
	.loc 1 252 0
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 253 0
	movl	$0, %eax	#, D.12435
	jmp	.L36	#
.L34:
.LBB2:
	.loc 1 257 0
	movq	-16(%rbp), %rax	# format_type_id, tmp89
	movq	32(%rax), %rax	# format_type_id_5->identifier.id.str, tmp90
	movq	%rax, -8(%rbp)	# tmp90, p
	.loc 1 259 0
	movq	-8(%rbp), %rax	# p, tmp91
	movq	%rax, %rdi	# tmp91,
	call	decode_format_type	#
	movq	-48(%rbp), %rdx	# info, tmp92
	movl	%eax, (%rdx)	# D.12438, info_16(D)->format_type
	.loc 1 261 0
	movq	-48(%rbp), %rax	# info, tmp93
	movl	(%rax), %eax	# info_16(D)->format_type, D.12438
	cmpl	$4, %eax	#, D.12438
	jne	.L37	#,
	.loc 1 263 0
	cmpl	$0, -52(%rbp)	#, validated_p
	je	.L38	#,
	.loc 1 264 0
	movl	$__FUNCTION__.10189, %edx	#,
	movl	$264, %esi	#,
	movl	$.LC5, %edi	#,
	call	fancy_abort	#
.L38:
	.loc 1 265 0
	movq	-8(%rbp), %rax	# p, tmp94
	movq	%rax, %rsi	# tmp94,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 266 0
	movl	$0, %eax	#, D.12435
	jmp	.L36	#
.L37:
.LBE2:
	.loc 1 272 0
	jmp	.L39	#
.L40:
	.loc 1 275 0
	movq	-32(%rbp), %rax	# format_num_expr, tmp95
	movq	32(%rax), %rax	# format_num_expr_1->exp.operands, tmp96
	movq	%rax, -32(%rbp)	# tmp96, format_num_expr
.L39:
	.loc 1 272 0 discriminator 1
	movq	-32(%rbp), %rax	# format_num_expr, tmp97
	movzbl	16(%rax), %eax	# format_num_expr_1->common.code, D.12437
	cmpb	$115, %al	#, D.12437
	je	.L40	#,
	.loc 1 273 0
	movq	-32(%rbp), %rax	# format_num_expr, tmp98
	movzbl	16(%rax), %eax	# format_num_expr_1->common.code, D.12437
	cmpb	$114, %al	#, D.12437
	je	.L40	#,
	.loc 1 274 0
	movq	-32(%rbp), %rax	# format_num_expr, tmp99
	movzbl	16(%rax), %eax	# format_num_expr_1->common.code, D.12437
	cmpb	$116, %al	#, D.12437
	je	.L40	#,
	.loc 1 277 0
	jmp	.L41	#
.L42:
	.loc 1 280 0
	movq	-24(%rbp), %rax	# first_arg_num_expr, tmp100
	movq	32(%rax), %rax	# first_arg_num_expr_2->exp.operands, tmp101
	movq	%rax, -24(%rbp)	# tmp101, first_arg_num_expr
.L41:
	.loc 1 277 0 discriminator 1
	movq	-24(%rbp), %rax	# first_arg_num_expr, tmp102
	movzbl	16(%rax), %eax	# first_arg_num_expr_2->common.code, D.12437
	cmpb	$115, %al	#, D.12437
	je	.L42	#,
	.loc 1 278 0
	movq	-24(%rbp), %rax	# first_arg_num_expr, tmp103
	movzbl	16(%rax), %eax	# first_arg_num_expr_2->common.code, D.12437
	cmpb	$114, %al	#, D.12437
	je	.L42	#,
	.loc 1 279 0
	movq	-24(%rbp), %rax	# first_arg_num_expr, tmp104
	movzbl	16(%rax), %eax	# first_arg_num_expr_2->common.code, D.12437
	cmpb	$116, %al	#, D.12437
	je	.L42	#,
	.loc 1 282 0
	movq	-32(%rbp), %rax	# format_num_expr, tmp105
	movzbl	16(%rax), %eax	# format_num_expr_1->common.code, D.12437
	cmpb	$25, %al	#, D.12437
	jne	.L43	#,
	.loc 1 283 0
	movq	-32(%rbp), %rax	# format_num_expr, tmp106
	movq	40(%rax), %rax	# format_num_expr_1->int_cst.int_cst.high, D.12439
	testq	%rax, %rax	# D.12439
	jne	.L43	#,
	.loc 1 284 0
	movq	-24(%rbp), %rax	# first_arg_num_expr, tmp107
	movzbl	16(%rax), %eax	# first_arg_num_expr_2->common.code, D.12437
	cmpb	$25, %al	#, D.12437
	jne	.L43	#,
	.loc 1 285 0
	movq	-24(%rbp), %rax	# first_arg_num_expr, tmp108
	movq	40(%rax), %rax	# first_arg_num_expr_2->int_cst.int_cst.high, D.12439
	testq	%rax, %rax	# D.12439
	je	.L44	#,
.L43:
	.loc 1 287 0
	cmpl	$0, -52(%rbp)	#, validated_p
	je	.L45	#,
	.loc 1 288 0
	movl	$__FUNCTION__.10189, %edx	#,
	movl	$288, %esi	#,
	movl	$.LC5, %edi	#,
	call	fancy_abort	#
.L45:
	.loc 1 289 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 290 0
	movl	$0, %eax	#, D.12435
	jmp	.L36	#
.L44:
	.loc 1 293 0
	movq	-32(%rbp), %rax	# format_num_expr, tmp109
	movq	32(%rax), %rdx	# format_num_expr_1->int_cst.int_cst.low, D.12440
	movq	-48(%rbp), %rax	# info, tmp110
	movq	%rdx, 8(%rax)	# D.12440, info_16(D)->format_num
	.loc 1 294 0
	movq	-24(%rbp), %rax	# first_arg_num_expr, tmp111
	movq	32(%rax), %rdx	# first_arg_num_expr_2->int_cst.int_cst.low, D.12440
	movq	-48(%rbp), %rax	# info, tmp112
	movq	%rdx, 16(%rax)	# D.12440, info_16(D)->first_arg_num
	.loc 1 295 0
	movq	-48(%rbp), %rax	# info, tmp113
	movq	16(%rax), %rax	# info_16(D)->first_arg_num, D.12440
	testq	%rax, %rax	# D.12440
	je	.L46	#,
	.loc 1 295 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# info, tmp114
	movq	16(%rax), %rdx	# info_16(D)->first_arg_num, D.12440
	movq	-48(%rbp), %rax	# info, tmp115
	movq	8(%rax), %rax	# info_16(D)->format_num, D.12440
	cmpq	%rax, %rdx	# D.12440, D.12440
	ja	.L46	#,
	.loc 1 297 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, validated_p
	je	.L47	#,
	.loc 1 298 0
	movl	$__FUNCTION__.10189, %edx	#,
	movl	$298, %esi	#,
	movl	$.LC5, %edi	#,
	call	fancy_abort	#
.L47:
	.loc 1 299 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 300 0
	movl	$0, %eax	#, D.12435
	jmp	.L36	#
.L46:
	.loc 1 303 0
	movl	$1, %eax	#, D.12435
.L36:
	.loc 1 304 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	decode_format_attr, .-decode_format_attr
	.section	.rodata
.LC9:
	.string	"h"
.LC10:
	.string	"hh"
.LC11:
	.string	"l"
.LC12:
	.string	"ll"
.LC13:
	.string	"q"
.LC14:
	.string	"L"
.LC15:
	.string	"z"
.LC16:
	.string	"Z"
.LC17:
	.string	"t"
.LC18:
	.string	"j"
	.align 32
	.type	printf_length_specs, @object
	.size	printf_length_specs, 288
printf_length_specs:
# name:
	.quad	.LC9
# index:
	.long	2
# std:
	.long	0
# double_name:
	.quad	.LC10
# double_index:
	.long	1
# double_std:
	.long	3
# name:
	.quad	.LC11
# index:
	.long	3
# std:
	.long	0
# double_name:
	.quad	.LC12
# double_index:
	.long	4
# double_std:
	.long	2
# name:
	.quad	.LC13
# index:
	.long	4
# std:
	.long	4
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	.LC14
# index:
	.long	5
# std:
	.long	0
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	.LC15
# index:
	.long	6
# std:
	.long	3
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	.LC16
# index:
	.long	6
# std:
	.long	4
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	.LC17
# index:
	.long	7
# std:
	.long	3
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	.LC18
# index:
	.long	8
# std:
	.long	3
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	0
# index:
	.long	0
# std:
	.long	0
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
	.align 32
	.type	scanf_length_specs, @object
	.size	scanf_length_specs, 256
scanf_length_specs:
# name:
	.quad	.LC9
# index:
	.long	2
# std:
	.long	0
# double_name:
	.quad	.LC10
# double_index:
	.long	1
# double_std:
	.long	3
# name:
	.quad	.LC11
# index:
	.long	3
# std:
	.long	0
# double_name:
	.quad	.LC12
# double_index:
	.long	4
# double_std:
	.long	2
# name:
	.quad	.LC13
# index:
	.long	4
# std:
	.long	4
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	.LC14
# index:
	.long	5
# std:
	.long	0
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	.LC15
# index:
	.long	6
# std:
	.long	3
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	.LC17
# index:
	.long	7
# std:
	.long	3
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	.LC18
# index:
	.long	8
# std:
	.long	3
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	0
# index:
	.long	0
# std:
	.long	0
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
	.align 32
	.type	strfmon_length_specs, @object
	.size	strfmon_length_specs, 64
strfmon_length_specs:
# name:
	.quad	.LC14
# index:
	.long	5
# std:
	.long	0
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
# name:
	.quad	0
# index:
	.long	0
# std:
	.long	0
# double_name:
	.quad	0
# double_index:
	.long	0
# double_std:
	.long	0
.LC19:
	.string	"` ' flag"
.LC20:
	.string	"the ` ' printf flag"
.LC21:
	.string	"`+' flag"
.LC22:
	.string	"the `+' printf flag"
.LC23:
	.string	"`#' flag"
.LC24:
	.string	"the `#' printf flag"
.LC25:
	.string	"`0' flag"
.LC26:
	.string	"the `0' printf flag"
.LC27:
	.string	"`-' flag"
.LC28:
	.string	"the `-' printf flag"
.LC29:
	.string	"`'' flag"
.LC30:
	.string	"the `'' printf flag"
.LC31:
	.string	"`I' flag"
.LC32:
	.string	"the `I' printf flag"
.LC33:
	.string	"field width"
.LC34:
	.string	"field width in printf format"
.LC35:
	.string	"precision"
.LC36:
	.string	"precision in printf format"
.LC37:
	.string	"length modifier"
	.align 8
.LC38:
	.string	"length modifier in printf format"
	.align 32
	.type	printf_flag_specs, @object
	.size	printf_flag_specs, 440
printf_flag_specs:
# flag_char:
	.long	32
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC19
# long_name:
	.quad	.LC20
# std:
	.long	0
	.zero	4
# flag_char:
	.long	43
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC21
# long_name:
	.quad	.LC22
# std:
	.long	0
	.zero	4
# flag_char:
	.long	35
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC23
# long_name:
	.quad	.LC24
# std:
	.long	0
	.zero	4
# flag_char:
	.long	48
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC25
# long_name:
	.quad	.LC26
# std:
	.long	0
	.zero	4
# flag_char:
	.long	45
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC27
# long_name:
	.quad	.LC28
# std:
	.long	0
	.zero	4
# flag_char:
	.long	39
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC29
# long_name:
	.quad	.LC30
# std:
	.long	4
	.zero	4
# flag_char:
	.long	73
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC31
# long_name:
	.quad	.LC32
# std:
	.long	4
	.zero	4
# flag_char:
	.long	119
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC33
# long_name:
	.quad	.LC34
# std:
	.long	0
	.zero	4
# flag_char:
	.long	112
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC35
# long_name:
	.quad	.LC36
# std:
	.long	0
	.zero	4
# flag_char:
	.long	76
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC37
# long_name:
	.quad	.LC38
# std:
	.long	0
	.zero	4
# flag_char:
	.long	0
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	0
# long_name:
	.quad	0
# std:
	.long	0
	.zero	4
	.align 32
	.type	printf_flag_pairs, @object
	.size	printf_flag_pairs, 64
printf_flag_pairs:
# flag_char1:
	.long	32
# flag_char2:
	.long	43
# ignored:
	.long	1
# predicate:
	.long	0
# flag_char1:
	.long	48
# flag_char2:
	.long	45
# ignored:
	.long	1
# predicate:
	.long	0
# flag_char1:
	.long	48
# flag_char2:
	.long	112
# ignored:
	.long	1
# predicate:
	.long	105
# flag_char1:
	.long	0
# flag_char2:
	.long	0
# ignored:
	.long	0
# predicate:
	.long	0
.LC39:
	.string	"assignment suppression"
	.align 8
.LC40:
	.string	"the assignment suppression scanf feature"
.LC41:
	.string	"`a' flag"
.LC42:
	.string	"the `a' scanf flag"
.LC43:
	.string	"field width in scanf format"
	.align 8
.LC44:
	.string	"length modifier in scanf format"
.LC45:
	.string	"the `'' scanf flag"
.LC46:
	.string	"the `I' scanf flag"
	.align 32
	.type	scanf_flag_specs, @object
	.size	scanf_flag_specs, 280
scanf_flag_specs:
# flag_char:
	.long	42
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC39
# long_name:
	.quad	.LC40
# std:
	.long	0
	.zero	4
# flag_char:
	.long	97
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC41
# long_name:
	.quad	.LC42
# std:
	.long	4
	.zero	4
# flag_char:
	.long	119
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC33
# long_name:
	.quad	.LC43
# std:
	.long	0
	.zero	4
# flag_char:
	.long	76
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC37
# long_name:
	.quad	.LC44
# std:
	.long	0
	.zero	4
# flag_char:
	.long	39
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC29
# long_name:
	.quad	.LC45
# std:
	.long	4
	.zero	4
# flag_char:
	.long	73
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC31
# long_name:
	.quad	.LC46
# std:
	.long	4
	.zero	4
# flag_char:
	.long	0
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	0
# long_name:
	.quad	0
# std:
	.long	0
	.zero	4
	.align 32
	.type	scanf_flag_pairs, @object
	.size	scanf_flag_pairs, 32
scanf_flag_pairs:
# flag_char1:
	.long	42
# flag_char2:
	.long	76
# ignored:
	.long	0
# predicate:
	.long	0
# flag_char1:
	.long	0
# flag_char2:
	.long	0
# ignored:
	.long	0
# predicate:
	.long	0
.LC47:
	.string	"`_' flag"
.LC48:
	.string	"the `_' strftime flag"
.LC49:
	.string	"the `-' strftime flag"
.LC50:
	.string	"the `0' strftime flag"
.LC51:
	.string	"`^' flag"
.LC52:
	.string	"the `^' strftime flag"
.LC53:
	.string	"the `#' strftime flag"
	.align 8
.LC54:
	.string	"field width in strftime format"
.LC55:
	.string	"`E' modifier"
.LC56:
	.string	"the `E' strftime modifier"
.LC57:
	.string	"`O' modifier"
.LC58:
	.string	"the `O' strftime modifier"
.LC59:
	.string	"the `O' modifier"
	.align 32
	.type	strftime_flag_specs, @object
	.size	strftime_flag_specs, 400
strftime_flag_specs:
# flag_char:
	.long	95
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC47
# long_name:
	.quad	.LC48
# std:
	.long	4
	.zero	4
# flag_char:
	.long	45
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC27
# long_name:
	.quad	.LC49
# std:
	.long	4
	.zero	4
# flag_char:
	.long	48
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC25
# long_name:
	.quad	.LC50
# std:
	.long	4
	.zero	4
# flag_char:
	.long	94
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC51
# long_name:
	.quad	.LC52
# std:
	.long	4
	.zero	4
# flag_char:
	.long	35
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC23
# long_name:
	.quad	.LC53
# std:
	.long	4
	.zero	4
# flag_char:
	.long	119
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC33
# long_name:
	.quad	.LC54
# std:
	.long	4
	.zero	4
# flag_char:
	.long	69
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC55
# long_name:
	.quad	.LC56
# std:
	.long	3
	.zero	4
# flag_char:
	.long	79
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC57
# long_name:
	.quad	.LC58
# std:
	.long	3
	.zero	4
# flag_char:
	.long	79
# predicate:
	.long	111
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	0
# long_name:
	.quad	.LC59
# std:
	.long	4
	.zero	4
# flag_char:
	.long	0
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	0
# long_name:
	.quad	0
# std:
	.long	0
	.zero	4
	.align 32
	.type	strftime_flag_pairs, @object
	.size	strftime_flag_pairs, 96
strftime_flag_pairs:
# flag_char1:
	.long	69
# flag_char2:
	.long	79
# ignored:
	.long	0
# predicate:
	.long	0
# flag_char1:
	.long	95
# flag_char2:
	.long	45
# ignored:
	.long	0
# predicate:
	.long	0
# flag_char1:
	.long	95
# flag_char2:
	.long	48
# ignored:
	.long	0
# predicate:
	.long	0
# flag_char1:
	.long	45
# flag_char2:
	.long	48
# ignored:
	.long	0
# predicate:
	.long	0
# flag_char1:
	.long	94
# flag_char2:
	.long	35
# ignored:
	.long	0
# predicate:
	.long	0
# flag_char1:
	.long	0
# flag_char2:
	.long	0
# ignored:
	.long	0
# predicate:
	.long	0
.LC60:
	.string	"fill character"
	.align 8
.LC61:
	.string	"fill character in strfmon format"
.LC62:
	.string	"the `^' strfmon flag"
.LC63:
	.string	"the `+' strfmon flag"
.LC64:
	.string	"`(' flag"
.LC65:
	.string	"the `(' strfmon flag"
.LC66:
	.string	"`!' flag"
.LC67:
	.string	"the `!' strfmon flag"
.LC68:
	.string	"the `-' strfmon flag"
.LC69:
	.string	"field width in strfmon format"
.LC70:
	.string	"left precision"
	.align 8
.LC71:
	.string	"left precision in strfmon format"
.LC72:
	.string	"right precision"
	.align 8
.LC73:
	.string	"right precision in strfmon format"
	.align 8
.LC74:
	.string	"length modifier in strfmon format"
	.align 32
	.type	strfmon_flag_specs, @object
	.size	strfmon_flag_specs, 440
strfmon_flag_specs:
# flag_char:
	.long	61
# predicate:
	.long	0
# skip_next_char:
	.long	1
# name:
	.zero	4
	.quad	.LC60
# long_name:
	.quad	.LC61
# std:
	.long	0
	.zero	4
# flag_char:
	.long	94
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC51
# long_name:
	.quad	.LC62
# std:
	.long	0
	.zero	4
# flag_char:
	.long	43
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC21
# long_name:
	.quad	.LC63
# std:
	.long	0
	.zero	4
# flag_char:
	.long	40
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC64
# long_name:
	.quad	.LC65
# std:
	.long	0
	.zero	4
# flag_char:
	.long	33
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC66
# long_name:
	.quad	.LC67
# std:
	.long	0
	.zero	4
# flag_char:
	.long	45
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC27
# long_name:
	.quad	.LC68
# std:
	.long	0
	.zero	4
# flag_char:
	.long	119
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC33
# long_name:
	.quad	.LC69
# std:
	.long	0
	.zero	4
# flag_char:
	.long	35
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC70
# long_name:
	.quad	.LC71
# std:
	.long	0
	.zero	4
# flag_char:
	.long	112
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC72
# long_name:
	.quad	.LC73
# std:
	.long	0
	.zero	4
# flag_char:
	.long	76
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	.LC37
# long_name:
	.quad	.LC74
# std:
	.long	0
	.zero	4
# flag_char:
	.long	0
# predicate:
	.long	0
# skip_next_char:
	.long	0
# name:
	.zero	4
	.quad	0
# long_name:
	.quad	0
# std:
	.long	0
	.zero	4
	.align 32
	.type	strfmon_flag_pairs, @object
	.size	strfmon_flag_pairs, 32
strfmon_flag_pairs:
# flag_char1:
	.long	43
# flag_char2:
	.long	40
# ignored:
	.long	0
# predicate:
	.long	0
# flag_char1:
	.long	0
# flag_char2:
	.long	0
# ignored:
	.long	0
# predicate:
	.long	0
.LC75:
	.string	"di"
.LC76:
	.string	"signed size_t"
.LC77:
	.string	"ptrdiff_t"
.LC78:
	.string	"intmax_t"
.LC79:
	.string	"-wp0 +'I"
.LC80:
	.string	"i"
.LC81:
	.string	"oxX"
.LC82:
	.string	"size_t"
.LC83:
	.string	"unsigned ptrdiff_t"
.LC84:
	.string	"uintmax_t"
.LC85:
	.string	"-wp0#"
.LC86:
	.string	"u"
.LC87:
	.string	"-wp0'I"
.LC88:
	.string	"fgG"
.LC89:
	.string	"-wp0 +#'"
.LC90:
	.string	""
.LC91:
	.string	"eE"
.LC92:
	.string	"-wp0 +#"
.LC93:
	.string	"c"
.LC94:
	.string	"wint_t"
.LC95:
	.string	"-w"
.LC96:
	.string	"s"
.LC97:
	.string	"wchar_t"
.LC98:
	.string	"-wp"
.LC99:
	.string	"cR"
.LC100:
	.string	"p"
.LC101:
	.string	"n"
.LC102:
	.string	"W"
.LC103:
	.string	"F"
.LC104:
	.string	"aA"
.LC105:
	.string	"C"
.LC106:
	.string	"S"
.LC107:
	.string	"R"
.LC108:
	.string	"m"
	.align 32
	.type	print_char_table, @object
	.size	print_char_table, 3720
print_char_table:
# format_chars:
	.quad	.LC75
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+40
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+8
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+24
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+56
# std:
	.long	2
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+72
# std:
	.long	4
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+72
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC76
# type:
	.quad	c_global_trees+40
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC77
# type:
	.quad	global_trees+240
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC78
# type:
	.quad	c_global_trees+56
# flag_chars:
	.quad	.LC79
# flags2:
	.quad	.LC80
# format_chars:
	.quad	.LC81
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+48
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+16
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+32
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+64
# std:
	.long	2
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+80
# std:
	.long	4
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+80
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC82
# type:
	.quad	c_global_trees+32
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC83
# type:
	.quad	c_global_trees+48
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC84
# type:
	.quad	c_global_trees+64
# flag_chars:
	.quad	.LC85
# flags2:
	.quad	.LC80
# format_chars:
	.quad	.LC86
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+48
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+16
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+32
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+64
# std:
	.long	2
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+80
# std:
	.long	4
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+80
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC82
# type:
	.quad	c_global_trees+32
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC83
# type:
	.quad	c_global_trees+48
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC84
# type:
	.quad	c_global_trees+64
# flag_chars:
	.quad	.LC87
# flags2:
	.quad	.LC80
# format_chars:
	.quad	.LC88
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+208
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC89
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC91
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+208
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC92
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC93
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+40
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	1
# name:
	.zero	4
	.quad	.LC94
# type:
	.quad	c_global_trees+24
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC95
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC96
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	1
# name:
	.zero	4
	.quad	.LC97
# type:
	.quad	c_global_trees
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC98
# flags2:
	.quad	.LC99
# format_chars:
	.quad	.LC100
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+216
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC95
# flags2:
	.quad	.LC93
# format_chars:
	.quad	.LC101
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+40
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+8
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+24
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+56
# std:
	.long	2
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+72
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC76
# type:
	.quad	c_global_trees+40
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC77
# type:
	.quad	global_trees+240
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC78
# type:
	.quad	c_global_trees+56
# flag_chars:
	.quad	.LC90
# flags2:
	.quad	.LC102
# format_chars:
	.quad	.LC103
# pointer_count:
	.long	0
# std:
	.long	3
# types:
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+208
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC89
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC104
# pointer_count:
	.long	0
# std:
	.long	3
# types:
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+208
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC92
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC105
# pointer_count:
	.long	0
# std:
	.long	4
# types:
# std:
	.long	4
# name:
	.zero	4
	.quad	.LC94
# type:
	.quad	c_global_trees+24
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC95
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC106
# pointer_count:
	.long	1
# std:
	.long	4
# types:
# std:
	.long	4
# name:
	.zero	4
	.quad	.LC97
# type:
	.quad	c_global_trees
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC98
# flags2:
	.quad	.LC107
# format_chars:
	.quad	.LC108
# pointer_count:
	.long	0
# std:
	.long	4
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+216
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC98
# flags2:
	.quad	.LC90
# format_chars:
	.quad	0
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	0
# flags2:
	.quad	0
.LC109:
	.string	"*w'I"
.LC110:
	.string	"*w"
.LC111:
	.string	"efgEG"
.LC112:
	.string	"*w'"
.LC113:
	.string	"cW"
.LC114:
	.string	"*aw"
.LC115:
	.string	"["
.LC116:
	.string	"cW["
.LC117:
	.string	"FaA"
	.align 32
	.type	scan_char_table, @object
	.size	scan_char_table, 3224
scan_char_table:
# format_chars:
	.quad	.LC75
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+40
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+8
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+24
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+56
# std:
	.long	2
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+72
# std:
	.long	4
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+72
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC76
# type:
	.quad	c_global_trees+40
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC77
# type:
	.quad	global_trees+240
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC78
# type:
	.quad	c_global_trees+56
# flag_chars:
	.quad	.LC109
# flags2:
	.quad	.LC102
# format_chars:
	.quad	.LC86
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+48
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+16
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+32
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+64
# std:
	.long	2
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+80
# std:
	.long	4
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+80
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC82
# type:
	.quad	c_global_trees+32
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC83
# type:
	.quad	c_global_trees+48
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC84
# type:
	.quad	c_global_trees+64
# flag_chars:
	.quad	.LC109
# flags2:
	.quad	.LC102
# format_chars:
	.quad	.LC81
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+48
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+16
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+32
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+64
# std:
	.long	2
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+80
# std:
	.long	4
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+80
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC82
# type:
	.quad	c_global_trees+32
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC83
# type:
	.quad	c_global_trees+48
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC84
# type:
	.quad	c_global_trees+64
# flag_chars:
	.quad	.LC110
# flags2:
	.quad	.LC102
# format_chars:
	.quad	.LC111
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+192
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+208
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC112
# flags2:
	.quad	.LC102
# format_chars:
	.quad	.LC93
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	1
# name:
	.zero	4
	.quad	.LC97
# type:
	.quad	c_global_trees
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC110
# flags2:
	.quad	.LC113
# format_chars:
	.quad	.LC96
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	1
# name:
	.zero	4
	.quad	.LC97
# type:
	.quad	c_global_trees
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC114
# flags2:
	.quad	.LC113
# format_chars:
	.quad	.LC115
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	1
# name:
	.zero	4
	.quad	.LC97
# type:
	.quad	c_global_trees
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC114
# flags2:
	.quad	.LC116
# format_chars:
	.quad	.LC100
# pointer_count:
	.long	2
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+216
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC110
# flags2:
	.quad	.LC102
# format_chars:
	.quad	.LC101
# pointer_count:
	.long	1
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+40
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+8
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+24
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+56
# std:
	.long	2
# name:
	.zero	4
	.quad	0
# type:
	.quad	integer_types+72
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC76
# type:
	.quad	c_global_trees+40
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC77
# type:
	.quad	global_trees+240
# std:
	.long	3
# name:
	.zero	4
	.quad	.LC78
# type:
	.quad	c_global_trees+56
# flag_chars:
	.quad	.LC90
# flags2:
	.quad	.LC102
# format_chars:
	.quad	.LC117
# pointer_count:
	.long	1
# std:
	.long	3
# types:
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+192
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	3
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+208
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC112
# flags2:
	.quad	.LC102
# format_chars:
	.quad	.LC105
# pointer_count:
	.long	1
# std:
	.long	4
# types:
# std:
	.long	4
# name:
	.zero	4
	.quad	.LC97
# type:
	.quad	c_global_trees
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC110
# flags2:
	.quad	.LC102
# format_chars:
	.quad	.LC106
# pointer_count:
	.long	1
# std:
	.long	4
# types:
# std:
	.long	4
# name:
	.zero	4
	.quad	.LC97
# type:
	.quad	c_global_trees
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC114
# flags2:
	.quad	.LC102
# format_chars:
	.quad	0
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	0
# flags2:
	.quad	0
.LC118:
	.string	"ABZab"
.LC119:
	.string	"^#"
.LC120:
	.string	"cx"
.LC121:
	.string	"E"
.LC122:
	.string	"3"
.LC123:
	.string	"HIMSUWdmw"
.LC124:
	.string	"-_0Ow"
.LC125:
	.string	"o"
.LC126:
	.string	"#"
.LC127:
	.string	"X"
.LC128:
	.string	"y"
.LC129:
	.string	"EO-_0w"
.LC130:
	.string	"4"
.LC131:
	.string	"Y"
.LC132:
	.string	"-_0EOw"
.LC133:
	.string	"%"
.LC134:
	.string	"D"
.LC135:
	.string	"2"
.LC136:
	.string	"eVu"
.LC137:
	.string	"FRTnrt"
.LC138:
	.string	"g"
.LC139:
	.string	"O-_0w"
.LC140:
	.string	"2o"
.LC141:
	.string	"G"
.LC142:
	.string	"O"
.LC143:
	.string	"kls"
.LC144:
	.string	"P"
	.align 32
	.type	time_char_table, @object
	.size	time_char_table, 4960
time_char_table:
# format_chars:
	.quad	.LC118
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC119
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC120
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC121
# flags2:
	.quad	.LC122
# format_chars:
	.quad	.LC123
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC124
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC18
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC124
# flags2:
	.quad	.LC125
# format_chars:
	.quad	.LC100
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC126
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC127
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC121
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC128
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC129
# flags2:
	.quad	.LC130
# format_chars:
	.quad	.LC131
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC132
# flags2:
	.quad	.LC125
# format_chars:
	.quad	.LC133
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC90
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC105
# pointer_count:
	.long	0
# std:
	.long	3
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC132
# flags2:
	.quad	.LC125
# format_chars:
	.quad	.LC134
# pointer_count:
	.long	0
# std:
	.long	3
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC90
# flags2:
	.quad	.LC135
# format_chars:
	.quad	.LC136
# pointer_count:
	.long	0
# std:
	.long	3
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC124
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC137
# pointer_count:
	.long	0
# std:
	.long	3
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC90
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC138
# pointer_count:
	.long	0
# std:
	.long	3
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC139
# flags2:
	.quad	.LC140
# format_chars:
	.quad	.LC141
# pointer_count:
	.long	0
# std:
	.long	3
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC124
# flags2:
	.quad	.LC125
# format_chars:
	.quad	.LC9
# pointer_count:
	.long	0
# std:
	.long	3
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC119
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC15
# pointer_count:
	.long	0
# std:
	.long	3
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC142
# flags2:
	.quad	.LC125
# format_chars:
	.quad	.LC143
# pointer_count:
	.long	0
# std:
	.long	4
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC124
# flags2:
	.quad	.LC90
# format_chars:
	.quad	.LC144
# pointer_count:
	.long	0
# std:
	.long	4
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC90
# flags2:
	.quad	.LC90
# format_chars:
	.quad	0
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	0
# flags2:
	.quad	0
.LC145:
	.string	"in"
.LC146:
	.string	"=^+(!-w#p"
	.align 32
	.type	monetary_char_table, @object
	.size	monetary_char_table, 496
monetary_char_table:
# format_chars:
	.quad	.LC145
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+200
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	global_trees+208
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	.LC146
# flags2:
	.quad	.LC90
# format_chars:
	.quad	0
# pointer_count:
	.long	0
# std:
	.long	0
# types:
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# std:
	.long	0
# name:
	.zero	4
	.quad	0
# type:
	.quad	0
# flag_chars:
	.quad	0
# flags2:
	.quad	0
.LC147:
	.string	"printf"
.LC148:
	.string	" +#0-'I"
.LC149:
	.string	"scanf"
.LC150:
	.string	"*'I"
.LC151:
	.string	"strftime"
.LC152:
	.string	"_-0^#"
.LC153:
	.string	"EO"
.LC154:
	.string	"strfmon"
.LC155:
	.string	"=^+(!-"
	.align 32
	.type	format_types, @object
	.size	format_types, 384
format_types:
# name:
	.quad	.LC147
# length_char_specs:
	.quad	printf_length_specs
# conversion_specs:
	.quad	print_char_table
# flag_chars:
	.quad	.LC148
# modifier_chars:
	.quad	0
# flag_specs:
	.quad	printf_flag_specs
# bad_flag_pairs:
	.quad	printf_flag_pairs
# flags:
	.long	89
# width_char:
	.long	119
# left_precision_char:
	.long	0
# precision_char:
	.long	112
# suppression_char:
	.long	0
# length_code_char:
	.long	76
# width_type:
	.quad	integer_types+40
# precision_type:
	.quad	integer_types+40
# name:
	.quad	.LC149
# length_char_specs:
	.quad	scanf_length_specs
# conversion_specs:
	.quad	scan_char_table
# flag_chars:
	.quad	.LC150
# modifier_chars:
	.quad	0
# flag_specs:
	.quad	scanf_flag_specs
# bad_flag_pairs:
	.quad	scanf_flag_pairs
# flags:
	.long	179
# width_char:
	.long	119
# left_precision_char:
	.long	0
# precision_char:
	.long	0
# suppression_char:
	.long	42
# length_code_char:
	.long	76
# width_type:
	.quad	0
# precision_type:
	.quad	0
# name:
	.quad	.LC151
# length_char_specs:
	.quad	0
# conversion_specs:
	.quad	time_char_table
# flag_chars:
	.quad	.LC152
# modifier_chars:
	.quad	.LC153
# flag_specs:
	.quad	strftime_flag_specs
# bad_flag_pairs:
	.quad	strftime_flag_pairs
# flags:
	.long	4
# width_char:
	.long	119
# left_precision_char:
	.long	0
# precision_char:
	.long	0
# suppression_char:
	.long	0
# length_code_char:
	.long	0
# width_type:
	.quad	0
# precision_type:
	.quad	0
# name:
	.quad	.LC154
# length_char_specs:
	.quad	strfmon_length_specs
# conversion_specs:
	.quad	monetary_char_table
# flag_chars:
	.quad	.LC155
# modifier_chars:
	.quad	0
# flag_specs:
	.quad	strfmon_flag_specs
# bad_flag_pairs:
	.quad	strfmon_flag_pairs
# flags:
	.long	1
# width_char:
	.long	119
# left_precision_char:
	.long	35
# precision_char:
	.long	112
# suppression_char:
	.long	0
# length_code_char:
	.long	76
# width_type:
	.quad	0
# precision_type:
	.quad	0
	.text
	.type	decode_format_type, @function
decode_format_type:
.LFB6:
	.loc 1 926 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 929 0
	movq	-24(%rbp), %rax	# s, tmp82
	movq	%rax, %rdi	# tmp82,
	call	strlen	#
	movl	%eax, -8(%rbp)	# D.12592, slen
	.loc 1 930 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L49	#
.L53:
.LBB3:
	.loc 1 933 0
	movl	-12(%rbp), %eax	# i, tmp84
	movslq	%eax, %rdx	# tmp84, tmp83
	movq	%rdx, %rax	# tmp83, tmp85
	addq	%rax, %rax	# tmp85
	addq	%rdx, %rax	# tmp83, tmp85
	salq	$5, %rax	#, tmp86
	addq	$format_types, %rax	#, tmp87
	movq	(%rax), %rdx	# format_types[i_1].name, D.12593
	movq	-24(%rbp), %rax	# s, tmp88
	movq	%rdx, %rsi	# D.12593,
	movq	%rax, %rdi	# tmp88,
	call	strcmp	#
	testl	%eax, %eax	# D.12594
	jne	.L50	#,
	.loc 1 934 0
	jmp	.L51	#
.L50:
	.loc 1 935 0
	movl	-12(%rbp), %eax	# i, tmp90
	movslq	%eax, %rdx	# tmp90, tmp89
	movq	%rdx, %rax	# tmp89, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# tmp89, tmp91
	salq	$5, %rax	#, tmp92
	addq	$format_types, %rax	#, tmp93
	movq	(%rax), %rax	# format_types[i_1].name, D.12593
	movq	%rax, %rdi	# D.12593,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.12592, alen
	.loc 1 936 0
	movl	-4(%rbp), %eax	# alen, tmp94
	addl	$4, %eax	#, D.12594
	cmpl	-8(%rbp), %eax	# slen, D.12594
	jne	.L52	#,
	.loc 1 936 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp95
	movzbl	(%rax), %eax	# *s_2(D), D.12595
	cmpb	$95, %al	#, D.12595
	jne	.L52	#,
	movq	-24(%rbp), %rax	# s, tmp96
	addq	$1, %rax	#, D.12593
	movzbl	(%rax), %eax	# *_13, D.12595
	cmpb	$95, %al	#, D.12595
	jne	.L52	#,
	.loc 1 937 0 is_stmt 1
	movl	-8(%rbp), %eax	# slen, tmp97
	cltq
	leaq	-1(%rax), %rdx	#, D.12596
	movq	-24(%rbp), %rax	# s, tmp98
	addq	%rdx, %rax	# D.12596, D.12593
	movzbl	(%rax), %eax	# *_17, D.12595
	cmpb	$95, %al	#, D.12595
	jne	.L52	#,
	.loc 1 937 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# slen, tmp99
	cltq
	leaq	-2(%rax), %rdx	#, D.12596
	movq	-24(%rbp), %rax	# s, tmp100
	addq	%rdx, %rax	# D.12596, D.12593
	movzbl	(%rax), %eax	# *_21, D.12595
	cmpb	$95, %al	#, D.12595
	jne	.L52	#,
	.loc 1 938 0 is_stmt 1
	movl	-4(%rbp), %eax	# alen, tmp101
	movslq	%eax, %rcx	# tmp101, D.12592
	movl	-12(%rbp), %eax	# i, tmp103
	movslq	%eax, %rdx	# tmp103, tmp102
	movq	%rdx, %rax	# tmp102, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# tmp102, tmp104
	salq	$5, %rax	#, tmp105
	addq	$format_types, %rax	#, tmp106
	movq	(%rax), %rax	# format_types[i_1].name, D.12593
	movq	-24(%rbp), %rdx	# s, tmp107
	leaq	2(%rdx), %rdi	#, D.12593
	movq	%rcx, %rdx	# D.12592,
	movq	%rax, %rsi	# D.12593,
	call	strncmp	#
	testl	%eax, %eax	# D.12594
	jne	.L52	#,
	.loc 1 939 0
	jmp	.L51	#
.L52:
.LBE3:
	.loc 1 930 0
	addl	$1, -12(%rbp)	#, i
.L49:
	.loc 1 930 0 is_stmt 0 discriminator 1
	cmpl	$3, -12(%rbp)	#, i
	jle	.L53	#,
.L51:
	.loc 1 941 0 is_stmt 1
	movl	-12(%rbp), %eax	# i, D.12597
	.loc 1 942 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	decode_format_type, .-decode_format_type
	.section	.rodata
.LC156:
	.string	"format"
	.align 8
.LC157:
	.string	"function might be possible candidate for `%s' format attribute"
	.text
	.globl	check_function_format
	.type	check_function_format, @function
check_function_format:
.LFB7:
	.loc 1 956 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# status, status
	movq	%rsi, -80(%rbp)	# attrs, attrs
	movq	%rdx, -88(%rbp)	# params, params
	.loc 1 960 0
	movq	-80(%rbp), %rax	# attrs, tmp85
	movq	%rax, -56(%rbp)	# tmp85, a
	jmp	.L56	#
.L67:
	.loc 1 962 0
	movq	-56(%rbp), %rax	# a, tmp86
	movq	24(%rax), %rax	# a_1->list.purpose, D.12598
	movq	%rax, %rsi	# D.12598,
	movl	$.LC156, %edi	#,
	call	is_attribute_p	#
	testl	%eax, %eax	# D.12599
	je	.L57	#,
.LBB4:
	.loc 1 966 0
	movq	-56(%rbp), %rax	# a, tmp87
	movq	32(%rax), %rax	# a_1->list.value, D.12598
	leaq	-32(%rbp), %rcx	#, tmp88
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp88,
	movq	%rax, %rdi	# D.12598,
	call	decode_format_attr	#
	.loc 1 967 0
	movq	-88(%rbp), %rdx	# params, tmp89
	leaq	-32(%rbp), %rcx	#, tmp90
	movq	-72(%rbp), %rax	# status, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	check_format_info	#
	.loc 1 968 0
	movl	warn_missing_format_attribute(%rip), %eax	# warn_missing_format_attribute, warn_missing_format_attribute.0
	testl	%eax, %eax	# warn_missing_format_attribute.0
	je	.L57	#,
	.loc 1 968 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# info.first_arg_num, D.12600
	testq	%rax, %rax	# D.12600
	jne	.L57	#,
	.loc 1 969 0 is_stmt 1
	movl	-32(%rbp), %eax	# info.format_type, D.12601
	movl	%eax, %edx	# D.12601, tmp92
	movq	%rdx, %rax	# tmp92, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# tmp92, tmp93
	salq	$5, %rax	#, tmp94
	addq	$format_types+48, %rax	#, tmp95
	movl	8(%rax), %eax	# format_types[_13].flags, D.12599
	.loc 1 970 0
	andl	$1, %eax	#, D.12599
	.loc 1 969 0
	testl	%eax, %eax	# D.12599
	je	.L57	#,
.LBB5:
	.loc 1 973 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.1
	movq	8(%rax), %rax	# current_function_decl.1_16->common.type, D.12598
	movq	48(%rax), %rax	# _17->type.attributes, tmp96
	movq	%rax, -48(%rbp)	# tmp96, c
	jmp	.L59	#
.L62:
	.loc 1 976 0
	movq	-48(%rbp), %rax	# c, tmp97
	movq	24(%rax), %rax	# c_2->list.purpose, D.12598
	movq	%rax, %rsi	# D.12598,
	movl	$.LC156, %edi	#,
	call	is_attribute_p	#
	testl	%eax, %eax	# D.12599
	je	.L60	#,
	.loc 1 977 0
	movq	-48(%rbp), %rax	# c, tmp98
	movq	32(%rax), %rax	# c_2->list.value, D.12598
	movq	32(%rax), %rax	# _21->list.value, D.12598
	movq	32(%rax), %rax	# _22->identifier.id.str, D.12602
	movq	%rax, %rdi	# D.12602,
	call	decode_format_type	#
	.loc 1 979 0
	movl	-32(%rbp), %edx	# info.format_type, D.12601
	.loc 1 977 0
	cmpl	%edx, %eax	# D.12601, D.12601
	jne	.L60	#,
	.loc 1 980 0
	jmp	.L61	#
.L60:
	.loc 1 975 0
	movq	-48(%rbp), %rax	# c, tmp99
	movq	(%rax), %rax	# c_2->common.chain, tmp100
	movq	%rax, -48(%rbp)	# tmp100, c
.L59:
	.loc 1 973 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, c
	jne	.L62	#,
.L61:
	.loc 1 981 0
	cmpq	$0, -48(%rbp)	#, c
	jne	.L57	#,
.LBB6:
	.loc 1 988 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.2
	movq	88(%rax), %rax	# current_function_decl.2_27->decl.arguments, tmp101
	movq	%rax, -40(%rbp)	# tmp101, args
	jmp	.L63	#
.L66:
	.loc 1 992 0
	movq	-40(%rbp), %rax	# args, tmp102
	movq	8(%rax), %rax	# args_3->common.type, D.12598
	movzbl	16(%rax), %eax	# _29->common.code, D.12603
	cmpb	$13, %al	#, D.12603
	jne	.L64	#,
	.loc 1 993 0
	movq	-40(%rbp), %rax	# args, tmp103
	movq	8(%rax), %rax	# args_3->common.type, D.12598
	movq	8(%rax), %rax	# _31->common.type, D.12598
	movq	128(%rax), %rdx	# _32->type.main_variant, D.12598
	.loc 1 994 0
	movq	integer_types(%rip), %rax	# integer_types, D.12598
	.loc 1 993 0
	cmpq	%rax, %rdx	# D.12598, D.12598
	jne	.L64	#,
	.loc 1 995 0
	jmp	.L65	#
.L64:
	.loc 1 990 0
	movq	-40(%rbp), %rax	# args, tmp104
	movq	(%rax), %rax	# args_3->common.chain, tmp105
	movq	%rax, -40(%rbp)	# tmp105, args
.L63:
	.loc 1 988 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, args
	jne	.L66	#,
.L65:
	.loc 1 997 0
	cmpq	$0, -40(%rbp)	#, args
	je	.L57	#,
	.loc 1 999 0
	movl	-32(%rbp), %eax	# info.format_type, D.12601
	.loc 1 998 0
	movl	%eax, %edx	# D.12601, tmp106
	movq	%rdx, %rax	# tmp106, tmp107
	addq	%rax, %rax	# tmp107
	addq	%rdx, %rax	# tmp106, tmp107
	salq	$5, %rax	#, tmp108
	addq	$format_types, %rax	#, tmp109
	movq	(%rax), %rax	# format_types[_36].name, D.12604
	movq	%rax, %rsi	# D.12604,
	movl	$.LC157, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L57:
.LBE6:
.LBE5:
.LBE4:
	.loc 1 960 0
	movq	-56(%rbp), %rax	# a, tmp110
	movq	(%rax), %rax	# a_1->common.chain, tmp111
	movq	%rax, -56(%rbp)	# tmp111, a
.L56:
	.loc 1 960 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, a
	jne	.L67	#,
	.loc 1 1004 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	check_function_format, .-check_function_format
	.type	status_warning, @function
status_warning:
.LFB8:
	.loc 1 1013 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$608, %rsp	#,
	movq	%rdi, -600(%rbp)	# status, status
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L69	#,
	.loc 1 1013 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L69:
	movq	%rsi, -608(%rbp)	# msgid, msgid
	movq	%fs:40, %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, D.12607
	xorl	%eax, %eax	# tmp67
.LBB7:
	.loc 1 1016 0
	movl	$16, -584(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -580(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp69
	movq	%rax, -576(%rbp)	# tmp69, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp70
	movq	%rax, -568(%rbp)	# tmp70, MEM[(struct [1] *)&ap].reg_save_area
.LBB8:
	.loc 1 1020 0
	cmpq	$0, -600(%rbp)	#, status
	je	.L70	#,
	.loc 1 1021 0
	movq	-600(%rbp), %rax	# status, tmp62
	movl	$1, (%rax)	#, *status_1(D)
	jmp	.L68	#
.L70:
	.loc 1 1026 0
	movl	lineno(%rip), %edi	# lineno, lineno.3
	movq	input_filename(%rip), %rcx	# input_filename, input_filename.4
	leaq	-584(%rbp), %rdx	#, tmp63
	movq	-608(%rbp), %rsi	# msgid, tmp64
	leaq	-560(%rbp), %rax	#, tmp65
	movl	$1, %r9d	#,
	movl	%edi, %r8d	# lineno.3,
	movq	%rax, %rdi	# tmp65,
	call	set_diagnostic_context	#
	.loc 1 1027 0
	leaq	-560(%rbp), %rax	#, tmp66
	movq	%rax, %rdi	# tmp66,
	call	report_diagnostic	#
.L68:
.LBE8:
.LBE7:
	.loc 1 1031 0
	movq	-184(%rbp), %rax	# D.12607, tmp68
	xorq	%fs:40, %rax	#, tmp68
	je	.L72	#,
	call	__stack_chk_fail	#
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	status_warning, .-status_warning
	.local	dollar_arguments_used
	.comm	dollar_arguments_used,8,8
	.local	dollar_arguments_pointer_p
	.comm	dollar_arguments_pointer_p,8,8
	.local	dollar_arguments_alloc
	.comm	dollar_arguments_alloc,4,4
	.local	dollar_arguments_count
	.comm	dollar_arguments_count,4,4
	.local	dollar_first_arg_num
	.comm	dollar_first_arg_num,4,4
	.local	dollar_max_arg_used
	.comm	dollar_max_arg_used,4,4
	.local	dollar_format_warned
	.comm	dollar_format_warned,4,4
	.type	init_dollar_format_checking, @function
init_dollar_format_checking:
.LFB9:
	.loc 1 1052 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# first_arg_num, first_arg_num
	movq	%rsi, -32(%rbp)	# params, params
	.loc 1 1053 0
	movq	-32(%rbp), %rax	# params, tmp86
	movq	%rax, -8(%rbp)	# tmp86, oparams
	.loc 1 1055 0
	movl	-20(%rbp), %eax	# first_arg_num, tmp87
	movl	%eax, dollar_first_arg_num(%rip)	# tmp87, dollar_first_arg_num
	.loc 1 1056 0
	movl	$0, dollar_arguments_count(%rip)	#, dollar_arguments_count
	.loc 1 1057 0
	movl	$0, dollar_max_arg_used(%rip)	#, dollar_max_arg_used
	.loc 1 1058 0
	movl	$0, dollar_format_warned(%rip)	#, dollar_format_warned
	.loc 1 1059 0
	cmpl	$0, -20(%rbp)	#, first_arg_num
	jle	.L74	#,
	.loc 1 1061 0
	jmp	.L75	#
.L76:
	.loc 1 1063 0
	movl	dollar_arguments_count(%rip), %eax	# dollar_arguments_count, dollar_arguments_count.5
	addl	$1, %eax	#, dollar_arguments_count.6
	movl	%eax, dollar_arguments_count(%rip)	# dollar_arguments_count.6, dollar_arguments_count
	.loc 1 1064 0
	movq	-32(%rbp), %rax	# params, tmp88
	movq	(%rax), %rax	# params_1->common.chain, tmp89
	movq	%rax, -32(%rbp)	# tmp89, params
.L75:
	.loc 1 1061 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, params
	jne	.L76	#,
.L74:
	.loc 1 1067 0
	movl	dollar_arguments_alloc(%rip), %edx	# dollar_arguments_alloc, dollar_arguments_alloc.7
	movl	dollar_arguments_count(%rip), %eax	# dollar_arguments_count, dollar_arguments_count.8
	cmpl	%eax, %edx	# dollar_arguments_count.8, dollar_arguments_alloc.7
	jge	.L77	#,
	.loc 1 1069 0
	movq	dollar_arguments_used(%rip), %rax	# dollar_arguments_used, dollar_arguments_used.9
	testq	%rax, %rax	# dollar_arguments_used.9
	je	.L78	#,
	.loc 1 1070 0
	movq	dollar_arguments_used(%rip), %rax	# dollar_arguments_used, dollar_arguments_used.10
	movq	%rax, %rdi	# dollar_arguments_used.10,
	call	free	#
.L78:
	.loc 1 1071 0
	movq	dollar_arguments_pointer_p(%rip), %rax	# dollar_arguments_pointer_p, dollar_arguments_pointer_p.11
	testq	%rax, %rax	# dollar_arguments_pointer_p.11
	je	.L79	#,
	.loc 1 1072 0
	movq	dollar_arguments_pointer_p(%rip), %rax	# dollar_arguments_pointer_p, dollar_arguments_pointer_p.12
	movq	%rax, %rdi	# dollar_arguments_pointer_p.12,
	call	free	#
.L79:
	.loc 1 1073 0
	movl	dollar_arguments_count(%rip), %eax	# dollar_arguments_count, dollar_arguments_count.13
	movl	%eax, dollar_arguments_alloc(%rip)	# dollar_arguments_count.13, dollar_arguments_alloc
	.loc 1 1074 0
	movl	dollar_arguments_alloc(%rip), %eax	# dollar_arguments_alloc, dollar_arguments_alloc.14
	cltq
	movq	%rax, %rdi	# D.12612,
	call	xmalloc	#
	movq	%rax, dollar_arguments_used(%rip)	# dollar_arguments_used.15, dollar_arguments_used
	.loc 1 1075 0
	movl	dollar_arguments_alloc(%rip), %eax	# dollar_arguments_alloc, dollar_arguments_alloc.16
	cltq
	movq	%rax, %rdi	# D.12612,
	call	xmalloc	#
	movq	%rax, dollar_arguments_pointer_p(%rip)	# dollar_arguments_pointer_p.17, dollar_arguments_pointer_p
.L77:
	.loc 1 1077 0
	movl	dollar_arguments_alloc(%rip), %eax	# dollar_arguments_alloc, dollar_arguments_alloc.18
	testl	%eax, %eax	# dollar_arguments_alloc.18
	je	.L73	#,
	.loc 1 1079 0
	movl	dollar_arguments_alloc(%rip), %eax	# dollar_arguments_alloc, dollar_arguments_alloc.19
	movslq	%eax, %rdx	# dollar_arguments_alloc.19, D.12612
	movq	dollar_arguments_used(%rip), %rax	# dollar_arguments_used, dollar_arguments_used.20
	movl	$0, %esi	#,
	movq	%rax, %rdi	# dollar_arguments_used.20,
	call	memset	#
	.loc 1 1080 0
	cmpl	$0, -20(%rbp)	#, first_arg_num
	jle	.L73	#,
.LBB9:
	.loc 1 1082 0
	movl	$0, -12(%rbp)	#, i
	.loc 1 1083 0
	movq	-8(%rbp), %rax	# oparams, tmp92
	movq	%rax, -32(%rbp)	# tmp92, params
	.loc 1 1084 0
	jmp	.L81	#
.L82:
	.loc 1 1086 0
	movq	dollar_arguments_pointer_p(%rip), %rdx	# dollar_arguments_pointer_p, dollar_arguments_pointer_p.21
	movl	-12(%rbp), %eax	# i, tmp93
	cltq
	addq	%rax, %rdx	# D.12613, D.12614
	movq	-32(%rbp), %rax	# params, tmp94
	movq	32(%rax), %rax	# params_2->list.value, D.12615
	movq	8(%rax), %rax	# _32->common.type, D.12615
	movzbl	16(%rax), %eax	# _33->common.code, D.12616
	.loc 1 1087 0
	cmpb	$13, %al	#, D.12616
	sete	%al	#, D.12617
	.loc 1 1086 0
	movb	%al, (%rdx)	# D.12618, *_31
	.loc 1 1088 0
	movq	-32(%rbp), %rax	# params, tmp95
	movq	(%rax), %rax	# params_2->common.chain, tmp96
	movq	%rax, -32(%rbp)	# tmp96, params
	.loc 1 1089 0
	addl	$1, -12(%rbp)	#, i
.L81:
	.loc 1 1084 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, params
	jne	.L82	#,
.L73:
.LBE9:
	.loc 1 1093 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	init_dollar_format_checking, .-init_dollar_format_checking
	.section	.rodata
	.align 8
.LC158:
	.string	"missing $ operand number in format"
.LC159:
	.string	"ISO C++"
.LC160:
	.string	"ISO C"
	.align 8
.LC161:
	.string	"%s does not support %%n$ operand number formats"
	.align 8
.LC162:
	.string	"operand number out of range in format"
	.align 8
.LC163:
	.string	"format argument %d used more than once in %s format"
	.text
	.type	maybe_read_dollar_number, @function
maybe_read_dollar_number:
.LFB10:
	.loc 1 1114 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# status, status
	movq	%rsi, -48(%rbp)	# format, format
	movl	%edx, -52(%rbp)	# dollar_needed, dollar_needed
	movq	%rcx, -64(%rbp)	# params, params
	movq	%r8, -72(%rbp)	# param_ptr, param_ptr
	movq	%r9, -80(%rbp)	# fki, fki
	.loc 1 1117 0
	movq	-48(%rbp), %rax	# format, tmp125
	movq	(%rax), %rax	# *format_8(D), tmp126
	movq	%rax, -8(%rbp)	# tmp126, fcp
	.loc 1 1118 0
	movq	-8(%rbp), %rax	# fcp, tmp127
	movzbl	(%rax), %eax	# *fcp_9, D.12620
	movsbl	%al, %eax	# D.12620, D.12619
	movzbl	%al, %eax	# D.12619, D.12619
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12621
	movzwl	%ax, %eax	# D.12621, D.12619
	andl	$4, %eax	#, D.12619
	testl	%eax, %eax	# D.12619
	jne	.L84	#,
	.loc 1 1120 0
	cmpl	$0, -52(%rbp)	#, dollar_needed
	je	.L85	#,
	.loc 1 1122 0
	movq	-40(%rbp), %rax	# status, tmp129
	movl	$.LC158, %esi	#,
	movq	%rax, %rdi	# tmp129,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1123 0
	movl	$-1, %eax	#, D.12619
	jmp	.L86	#
.L85:
	.loc 1 1126 0
	movl	$0, %eax	#, D.12619
	jmp	.L86	#
.L84:
	.loc 1 1128 0
	movl	$0, -28(%rbp)	#, argnum
	.loc 1 1129 0
	movl	$0, -24(%rbp)	#, overflow_flag
	.loc 1 1130 0
	jmp	.L87	#
.L90:
.LBB10:
	.loc 1 1133 0
	movl	-28(%rbp), %edx	# argnum, tmp130
	movl	%edx, %eax	# tmp130, tmp131
	sall	$2, %eax	#, tmp131
	addl	%edx, %eax	# tmp130, tmp131
	addl	%eax, %eax	# tmp132
	movl	%eax, %edx	# tmp131, D.12619
	movq	-8(%rbp), %rax	# fcp, tmp133
	movzbl	(%rax), %eax	# *fcp_4, D.12620
	movsbl	%al, %eax	# D.12620, D.12619
	subl	$48, %eax	#, D.12619
	addl	%edx, %eax	# D.12619, tmp134
	movl	%eax, -16(%rbp)	# tmp134, nargnum
	.loc 1 1134 0
	cmpl	$0, -16(%rbp)	#, nargnum
	js	.L88	#,
	.loc 1 1134 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %ecx	# nargnum, tmp135
	movl	$1717986919, %edx	#, tmp137
	movl	%ecx, %eax	# tmp135, tmp171
	imull	%edx	# tmp137
	sarl	$2, %edx	#, tmp138
	movl	%ecx, %eax	# tmp135, tmp139
	sarl	$31, %eax	#, tmp139
	subl	%eax, %edx	# tmp139, D.12619
	movl	%edx, %eax	# D.12619, D.12619
	cmpl	-28(%rbp), %eax	# argnum, D.12619
	je	.L89	#,
.L88:
	.loc 1 1135 0 is_stmt 1
	movl	$1, -24(%rbp)	#, overflow_flag
.L89:
	.loc 1 1136 0
	movl	-16(%rbp), %eax	# nargnum, tmp140
	movl	%eax, -28(%rbp)	# tmp140, argnum
	.loc 1 1137 0
	addq	$1, -8(%rbp)	#, fcp
.L87:
.LBE10:
	.loc 1 1130 0 discriminator 1
	movq	-8(%rbp), %rax	# fcp, tmp141
	movzbl	(%rax), %eax	# *fcp_4, D.12620
	movsbl	%al, %eax	# D.12620, D.12619
	movzbl	%al, %eax	# D.12619, D.12619
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12621
	movzwl	%ax, %eax	# D.12621, D.12619
	andl	$4, %eax	#, D.12619
	testl	%eax, %eax	# D.12619
	jne	.L90	#,
	.loc 1 1139 0
	movq	-8(%rbp), %rax	# fcp, tmp143
	movzbl	(%rax), %eax	# *fcp_4, D.12620
	cmpb	$36, %al	#, D.12620
	je	.L91	#,
	.loc 1 1141 0
	cmpl	$0, -52(%rbp)	#, dollar_needed
	je	.L92	#,
	.loc 1 1143 0
	movq	-40(%rbp), %rax	# status, tmp144
	movl	$.LC158, %esi	#,
	movq	%rax, %rdi	# tmp144,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1144 0
	movl	$-1, %eax	#, D.12619
	jmp	.L86	#
.L92:
	.loc 1 1147 0
	movl	$0, %eax	#, D.12619
	jmp	.L86	#
.L91:
	.loc 1 1149 0
	movq	-8(%rbp), %rax	# fcp, tmp145
	leaq	1(%rax), %rdx	#, D.12622
	movq	-48(%rbp), %rax	# format, tmp146
	movq	%rdx, (%rax)	# D.12622, *format_8(D)
	.loc 1 1150 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.22
	testl	%eax, %eax	# pedantic.22
	je	.L93	#,
	.loc 1 1150 0 is_stmt 0 discriminator 1
	movl	dollar_format_warned(%rip), %eax	# dollar_format_warned, dollar_format_warned.23
	testl	%eax, %eax	# dollar_format_warned.23
	jne	.L93	#,
	.loc 1 1154 0 is_stmt 1
	movl	c_language(%rip), %eax	# c_language, c_language.25
	.loc 1 1152 0
	cmpl	$1, %eax	#, c_language.25
	jne	.L94	#,
	.loc 1 1152 0 is_stmt 0 discriminator 1
	movl	$.LC159, %eax	#, iftmp.24
	jmp	.L95	#
.L94:
	.loc 1 1152 0 discriminator 2
	movl	$.LC160, %eax	#, iftmp.24
.L95:
	.loc 1 1152 0 discriminator 3
	movq	-40(%rbp), %rcx	# status, tmp147
	movq	%rax, %rdx	# iftmp.24,
	movl	$.LC161, %esi	#,
	movq	%rcx, %rdi	# tmp147,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1155 0 is_stmt 1 discriminator 3
	movl	$1, dollar_format_warned(%rip)	#, dollar_format_warned
.L93:
	.loc 1 1157 0
	cmpl	$0, -24(%rbp)	#, overflow_flag
	jne	.L96	#,
	.loc 1 1157 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, argnum
	je	.L96	#,
	.loc 1 1158 0 is_stmt 1
	movl	dollar_first_arg_num(%rip), %eax	# dollar_first_arg_num, dollar_first_arg_num.26
	testl	%eax, %eax	# dollar_first_arg_num.26
	je	.L97	#,
	.loc 1 1158 0 is_stmt 0 discriminator 1
	movl	dollar_arguments_count(%rip), %eax	# dollar_arguments_count, dollar_arguments_count.27
	cmpl	%eax, -28(%rbp)	# dollar_arguments_count.27, argnum
	jle	.L97	#,
.L96:
	.loc 1 1160 0 is_stmt 1
	movq	-40(%rbp), %rax	# status, tmp148
	movl	$.LC162, %esi	#,
	movq	%rax, %rdi	# tmp148,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1161 0
	movl	$-1, %eax	#, D.12619
	jmp	.L86	#
.L97:
	.loc 1 1163 0
	movl	dollar_max_arg_used(%rip), %eax	# dollar_max_arg_used, dollar_max_arg_used.28
	cmpl	%eax, -28(%rbp)	# dollar_max_arg_used.28, argnum
	jle	.L98	#,
	.loc 1 1164 0
	movl	-28(%rbp), %eax	# argnum, tmp149
	movl	%eax, dollar_max_arg_used(%rip)	# tmp149, dollar_max_arg_used
	.loc 1 1167 0
	jmp	.L99	#
.L98:
	jmp	.L99	#
.L100:
.LBB11:
	.loc 1 1170 0
	movl	dollar_arguments_alloc(%rip), %eax	# dollar_arguments_alloc, dollar_arguments_alloc.29
	addl	$8, %eax	#, D.12619
	addl	%eax, %eax	# tmp150
	movl	%eax, -12(%rbp)	# tmp150, nalloc
	.loc 1 1171 0
	movl	-12(%rbp), %eax	# nalloc, tmp151
	movslq	%eax, %rdx	# tmp151, D.12623
	movq	dollar_arguments_used(%rip), %rax	# dollar_arguments_used, dollar_arguments_used.30
	movq	%rdx, %rsi	# D.12623,
	movq	%rax, %rdi	# dollar_arguments_used.30,
	call	xrealloc	#
	movq	%rax, dollar_arguments_used(%rip)	# dollar_arguments_used.31, dollar_arguments_used
	.loc 1 1172 0
	movl	-12(%rbp), %eax	# nalloc, tmp152
	movslq	%eax, %rdx	# tmp152, D.12623
	movq	dollar_arguments_pointer_p(%rip), %rax	# dollar_arguments_pointer_p, dollar_arguments_pointer_p.32
	movq	%rdx, %rsi	# D.12623,
	movq	%rax, %rdi	# dollar_arguments_pointer_p.32,
	call	xrealloc	#
	movq	%rax, dollar_arguments_pointer_p(%rip)	# dollar_arguments_pointer_p.33, dollar_arguments_pointer_p
	.loc 1 1175 0
	movl	dollar_arguments_alloc(%rip), %eax	# dollar_arguments_alloc, dollar_arguments_alloc.34
	movl	-12(%rbp), %edx	# nalloc, tmp153
	subl	%eax, %edx	# dollar_arguments_alloc.34, D.12619
	movl	%edx, %eax	# D.12619, D.12619
	.loc 1 1174 0
	cltq
	movq	dollar_arguments_used(%rip), %rcx	# dollar_arguments_used, dollar_arguments_used.35
	movl	dollar_arguments_alloc(%rip), %edx	# dollar_arguments_alloc, dollar_arguments_alloc.36
	movslq	%edx, %rdx	# dollar_arguments_alloc.36, D.12624
	addq	%rdx, %rcx	# D.12624, D.12625
	movq	%rax, %rdx	# D.12623,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# D.12625,
	call	memset	#
	.loc 1 1176 0
	movl	-12(%rbp), %eax	# nalloc, tmp154
	movl	%eax, dollar_arguments_alloc(%rip)	# tmp154, dollar_arguments_alloc
.L99:
.LBE11:
	.loc 1 1167 0 discriminator 1
	movl	dollar_arguments_alloc(%rip), %edx	# dollar_arguments_alloc, dollar_arguments_alloc.37
	movl	dollar_max_arg_used(%rip), %eax	# dollar_max_arg_used, dollar_max_arg_used.38
	cmpl	%eax, %edx	# dollar_max_arg_used.38, dollar_arguments_alloc.37
	jl	.L100	#,
	.loc 1 1178 0
	movq	-80(%rbp), %rax	# fki, tmp155
	movl	56(%rax), %eax	# fki_67(D)->flags, D.12619
	andl	$8, %eax	#, D.12619
	testl	%eax, %eax	# D.12619
	jne	.L101	#,
	.loc 1 1179 0
	movq	dollar_arguments_used(%rip), %rax	# dollar_arguments_used, dollar_arguments_used.39
	movl	-28(%rbp), %edx	# argnum, tmp156
	movslq	%edx, %rdx	# tmp156, D.12624
	subq	$1, %rdx	#, D.12624
	addq	%rdx, %rax	# D.12624, D.12626
	movzbl	(%rax), %eax	# *_73, D.12620
	cmpb	$1, %al	#, D.12620
	jne	.L101	#,
	.loc 1 1181 0
	movq	dollar_arguments_used(%rip), %rax	# dollar_arguments_used, dollar_arguments_used.40
	movl	-28(%rbp), %edx	# argnum, tmp157
	movslq	%edx, %rdx	# tmp157, D.12624
	subq	$1, %rdx	#, D.12624
	addq	%rdx, %rax	# D.12624, D.12626
	movb	$2, (%rax)	#, *_78
	.loc 1 1182 0
	movq	-80(%rbp), %rax	# fki, tmp158
	movq	(%rax), %rcx	# fki_67(D)->name, D.12622
	movl	-28(%rbp), %edx	# argnum, tmp159
	movq	-40(%rbp), %rax	# status, tmp160
	movl	$.LC163, %esi	#,
	movq	%rax, %rdi	# tmp160,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L102	#
.L101:
	.loc 1 1187 0
	movq	dollar_arguments_used(%rip), %rax	# dollar_arguments_used, dollar_arguments_used.41
	movl	-28(%rbp), %edx	# argnum, tmp161
	movslq	%edx, %rdx	# tmp161, D.12624
	subq	$1, %rdx	#, D.12624
	addq	%rdx, %rax	# D.12624, D.12626
	movb	$1, (%rax)	#, *_83
.L102:
	.loc 1 1188 0
	movl	dollar_first_arg_num(%rip), %eax	# dollar_first_arg_num, dollar_first_arg_num.42
	testl	%eax, %eax	# dollar_first_arg_num.42
	je	.L103	#,
.LBB12:
	.loc 1 1191 0
	movq	-72(%rbp), %rax	# param_ptr, tmp162
	movq	-64(%rbp), %rdx	# params, tmp163
	movq	%rdx, (%rax)	# tmp163, *param_ptr_85(D)
	.loc 1 1192 0
	movl	$1, -20(%rbp)	#, i
	jmp	.L104	#
.L106:
	.loc 1 1193 0 discriminator 1
	movq	-72(%rbp), %rax	# param_ptr, tmp164
	movq	(%rax), %rax	# *param_ptr_85(D), D.12627
	movq	(%rax), %rdx	# _89->common.chain, D.12627
	movq	-72(%rbp), %rax	# param_ptr, tmp165
	movq	%rdx, (%rax)	# D.12627, *param_ptr_85(D)
	.loc 1 1192 0 discriminator 1
	addl	$1, -20(%rbp)	#, i
.L104:
	movl	-20(%rbp), %eax	# i, tmp166
	cmpl	-28(%rbp), %eax	# argnum, tmp166
	jge	.L105	#,
	.loc 1 1192 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# param_ptr, tmp167
	movq	(%rax), %rax	# *param_ptr_85(D), D.12627
	testq	%rax, %rax	# D.12627
	jne	.L106	#,
.L105:
	.loc 1 1195 0 is_stmt 1
	movq	-72(%rbp), %rax	# param_ptr, tmp168
	movq	(%rax), %rax	# *param_ptr_85(D), D.12627
	testq	%rax, %rax	# D.12627
	jne	.L107	#,
	.loc 1 1198 0
	movl	$__FUNCTION__.10431, %edx	#,
	movl	$1198, %esi	#,
	movl	$.LC5, %edi	#,
	call	fancy_abort	#
.L107:
.LBE12:
	jmp	.L108	#
.L103:
	.loc 1 1202 0
	movq	-72(%rbp), %rax	# param_ptr, tmp169
	movq	$0, (%rax)	#, *param_ptr_85(D)
.L108:
	.loc 1 1203 0
	movl	-28(%rbp), %eax	# argnum, D.12619
.L86:
	.loc 1 1204 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	maybe_read_dollar_number, .-maybe_read_dollar_number
	.section	.rodata
	.align 8
.LC164:
	.string	"format argument %d unused before used argument %d in $-style format"
	.text
	.type	finish_dollar_format_checking, @function
finish_dollar_format_checking:
.LFB11:
	.loc 1 1222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# status, status
	movq	%rsi, -32(%rbp)	# res, res
	movl	%edx, -36(%rbp)	# pointer_gap_ok, pointer_gap_ok
	.loc 1 1224 0
	movb	$0, -5(%rbp)	#, found_pointer_gap
	.loc 1 1225 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L110	#
.L114:
	.loc 1 1227 0
	movq	dollar_arguments_used(%rip), %rdx	# dollar_arguments_used, dollar_arguments_used.43
	movl	-4(%rbp), %eax	# i, tmp78
	cltq
	addq	%rdx, %rax	# dollar_arguments_used.43, D.12635
	movzbl	(%rax), %eax	# *_9, D.12636
	testb	%al, %al	# D.12636
	jne	.L111	#,
	.loc 1 1229 0
	cmpl	$0, -36(%rbp)	#, pointer_gap_ok
	je	.L112	#,
	.loc 1 1229 0 is_stmt 0 discriminator 1
	movl	dollar_first_arg_num(%rip), %eax	# dollar_first_arg_num, dollar_first_arg_num.44
	testl	%eax, %eax	# dollar_first_arg_num.44
	je	.L113	#,
	.loc 1 1230 0 is_stmt 1
	movq	dollar_arguments_pointer_p(%rip), %rdx	# dollar_arguments_pointer_p, dollar_arguments_pointer_p.45
	movl	-4(%rbp), %eax	# i, tmp79
	cltq
	addq	%rdx, %rax	# dollar_arguments_pointer_p.45, D.12635
	movzbl	(%rax), %eax	# *_15, D.12636
	testb	%al, %al	# D.12636
	je	.L112	#,
.L113:
	.loc 1 1231 0
	movb	$1, -5(%rbp)	#, found_pointer_gap
	jmp	.L111	#
.L112:
	.loc 1 1233 0
	movl	dollar_max_arg_used(%rip), %edx	# dollar_max_arg_used, dollar_max_arg_used.46
	movl	-4(%rbp), %eax	# i, tmp80
	leal	1(%rax), %esi	#, D.12637
	movq	-24(%rbp), %rax	# status, tmp81
	movl	%edx, %ecx	# dollar_max_arg_used.46,
	movl	%esi, %edx	# D.12637,
	movl	$.LC164, %esi	#,
	movq	%rax, %rdi	# tmp81,
	movl	$0, %eax	#,
	call	status_warning	#
.L111:
	.loc 1 1225 0
	addl	$1, -4(%rbp)	#, i
.L110:
	.loc 1 1225 0 is_stmt 0 discriminator 1
	movl	dollar_max_arg_used(%rip), %eax	# dollar_max_arg_used, dollar_max_arg_used.47
	cmpl	%eax, -4(%rbp)	# dollar_max_arg_used.47, i
	jl	.L114	#,
	.loc 1 1237 0 is_stmt 1
	cmpb	$0, -5(%rbp)	#, found_pointer_gap
	jne	.L115	#,
	.loc 1 1238 0
	movl	dollar_first_arg_num(%rip), %eax	# dollar_first_arg_num, dollar_first_arg_num.48
	testl	%eax, %eax	# dollar_first_arg_num.48
	je	.L109	#,
	.loc 1 1239 0
	movl	dollar_max_arg_used(%rip), %edx	# dollar_max_arg_used, dollar_max_arg_used.49
	movl	dollar_arguments_count(%rip), %eax	# dollar_arguments_count, dollar_arguments_count.50
	cmpl	%eax, %edx	# dollar_arguments_count.50, dollar_max_arg_used.49
	jge	.L109	#,
.L115:
	.loc 1 1241 0
	movq	-32(%rbp), %rax	# res, tmp82
	movl	24(%rax), %eax	# res_25(D)->number_other, D.12637
	leal	-1(%rax), %edx	#, D.12637
	movq	-32(%rbp), %rax	# res, tmp83
	movl	%edx, 24(%rax)	# D.12637, res_25(D)->number_other
	.loc 1 1242 0
	movq	-32(%rbp), %rax	# res, tmp84
	movl	8(%rax), %eax	# res_25(D)->number_dollar_extra_args, D.12637
	leal	1(%rax), %edx	#, D.12637
	movq	-32(%rbp), %rax	# res, tmp85
	movl	%edx, 8(%rax)	# D.12637, res_25(D)->number_dollar_extra_args
.L109:
	.loc 1 1244 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	finish_dollar_format_checking, .-finish_dollar_format_checking
	.type	get_flag_spec, @function
get_flag_spec:
.LFB12:
	.loc 1 1260 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# spec, spec
	movl	%esi, -28(%rbp)	# flag, flag
	movq	%rdx, -40(%rbp)	# predicates, predicates
	.loc 1 1262 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L118	#
.L123:
	.loc 1 1264 0
	movl	-4(%rbp), %eax	# i, tmp86
	movslq	%eax, %rdx	# tmp86, D.12640
	movq	%rdx, %rax	# D.12640, tmp87
	salq	$2, %rax	#, tmp87
	addq	%rdx, %rax	# D.12640, tmp87
	salq	$3, %rax	#, tmp88
	movq	%rax, %rdx	# tmp87, D.12640
	movq	-24(%rbp), %rax	# spec, tmp89
	addq	%rdx, %rax	# D.12640, D.12639
	movl	(%rax), %eax	# _11->flag_char, D.12641
	cmpl	-28(%rbp), %eax	# flag, D.12641
	je	.L119	#,
	.loc 1 1265 0
	jmp	.L120	#
.L119:
	.loc 1 1266 0
	cmpq	$0, -40(%rbp)	#, predicates
	je	.L121	#,
	.loc 1 1268 0
	movl	-4(%rbp), %eax	# i, tmp90
	movslq	%eax, %rdx	# tmp90, D.12640
	movq	%rdx, %rax	# D.12640, tmp91
	salq	$2, %rax	#, tmp91
	addq	%rdx, %rax	# D.12640, tmp91
	salq	$3, %rax	#, tmp92
	movq	%rax, %rdx	# tmp91, D.12640
	movq	-24(%rbp), %rax	# spec, tmp93
	addq	%rdx, %rax	# D.12640, D.12639
	movl	4(%rax), %eax	# _17->predicate, D.12641
	testl	%eax, %eax	# D.12641
	je	.L120	#,
	.loc 1 1269 0
	movl	-4(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, D.12640
	movq	%rdx, %rax	# D.12640, tmp95
	salq	$2, %rax	#, tmp95
	addq	%rdx, %rax	# D.12640, tmp95
	salq	$3, %rax	#, tmp96
	movq	%rax, %rdx	# tmp95, D.12640
	movq	-24(%rbp), %rax	# spec, tmp97
	addq	%rdx, %rax	# D.12640, D.12639
	movl	4(%rax), %edx	# _21->predicate, D.12641
	movq	-40(%rbp), %rax	# predicates, tmp98
	movl	%edx, %esi	# D.12641,
	movq	%rax, %rdi	# tmp98,
	call	strchr	#
	testq	%rax, %rax	# D.12642
	je	.L120	#,
	.loc 1 1270 0
	movl	-4(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, D.12640
	movq	%rdx, %rax	# D.12640, tmp100
	salq	$2, %rax	#, tmp100
	addq	%rdx, %rax	# D.12640, tmp100
	salq	$3, %rax	#, tmp101
	movq	%rax, %rdx	# tmp100, D.12640
	movq	-24(%rbp), %rax	# spec, tmp102
	addq	%rdx, %rax	# D.12640, D.12639
	jmp	.L122	#
.L121:
	.loc 1 1272 0
	movl	-4(%rbp), %eax	# i, tmp103
	movslq	%eax, %rdx	# tmp103, D.12640
	movq	%rdx, %rax	# D.12640, tmp104
	salq	$2, %rax	#, tmp104
	addq	%rdx, %rax	# D.12640, tmp104
	salq	$3, %rax	#, tmp105
	movq	%rax, %rdx	# tmp104, D.12640
	movq	-24(%rbp), %rax	# spec, tmp106
	addq	%rdx, %rax	# D.12640, D.12639
	movl	4(%rax), %eax	# _29->predicate, D.12641
	testl	%eax, %eax	# D.12641
	jne	.L120	#,
	.loc 1 1273 0
	movl	-4(%rbp), %eax	# i, tmp107
	movslq	%eax, %rdx	# tmp107, D.12640
	movq	%rdx, %rax	# D.12640, tmp108
	salq	$2, %rax	#, tmp108
	addq	%rdx, %rax	# D.12640, tmp108
	salq	$3, %rax	#, tmp109
	movq	%rax, %rdx	# tmp108, D.12640
	movq	-24(%rbp), %rax	# spec, tmp110
	addq	%rdx, %rax	# D.12640, D.12639
	jmp	.L122	#
.L120:
	.loc 1 1262 0
	addl	$1, -4(%rbp)	#, i
.L118:
	.loc 1 1262 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp111
	movslq	%eax, %rdx	# tmp111, D.12640
	movq	%rdx, %rax	# D.12640, tmp112
	salq	$2, %rax	#, tmp112
	addq	%rdx, %rax	# D.12640, tmp112
	salq	$3, %rax	#, tmp113
	movq	%rax, %rdx	# tmp112, D.12640
	movq	-24(%rbp), %rax	# spec, tmp114
	addq	%rdx, %rax	# D.12640, D.12639
	movl	(%rax), %eax	# _7->flag_char, D.12641
	testl	%eax, %eax	# D.12641
	jne	.L123	#,
	.loc 1 1275 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, predicates
	jne	.L124	#,
	.loc 1 1276 0
	movl	$__FUNCTION__.10452, %edx	#,
	movl	$1276, %esi	#,
	movl	$.LC5, %edi	#,
	call	fancy_abort	#
.L124:
	.loc 1 1278 0
	movl	$0, %eax	#, D.12639
.L122:
	.loc 1 1279 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	get_flag_spec, .-get_flag_spec
	.section	.rodata
	.align 8
.LC165:
	.string	"format not a string literal, format string not checked"
	.align 8
.LC166:
	.string	"format not a string literal and no format arguments"
	.align 8
.LC167:
	.string	"format not a string literal, argument types not checked"
.LC168:
	.string	"too many arguments for format"
	.align 8
.LC169:
	.string	"unused arguments in $-style format"
.LC170:
	.string	"zero-length format string"
	.align 8
.LC171:
	.string	"format is a wide character string"
.LC172:
	.string	"unterminated format string"
	.text
	.type	check_format_info, @function
check_format_info:
.LFB13:
	.loc 1 1291 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# status, status
	movq	%rsi, -64(%rbp)	# info, info
	movq	%rdx, -72(%rbp)	# params, params
	.loc 1 1297 0
	movq	$1, -48(%rbp)	#, arg_num
.L130:
	.loc 1 1299 0
	cmpq	$0, -72(%rbp)	#, params
	jne	.L126	#,
	.loc 1 1300 0
	jmp	.L125	#
.L126:
	.loc 1 1301 0
	movq	-64(%rbp), %rax	# info, tmp84
	movq	8(%rax), %rax	# info_7(D)->format_num, D.12643
	cmpq	-48(%rbp), %rax	# arg_num, D.12643
	jne	.L128	#,
	.loc 1 1302 0
	nop
	.loc 1 1305 0
	movq	-72(%rbp), %rax	# params, tmp87
	movq	32(%rax), %rax	# params_1->list.value, tmp88
	movq	%rax, -40(%rbp)	# tmp88, format_tree
	.loc 1 1306 0
	movq	-72(%rbp), %rax	# params, tmp89
	movq	(%rax), %rax	# params_1->common.chain, tmp90
	movq	%rax, -72(%rbp)	# tmp90, params
	.loc 1 1307 0
	cmpq	$0, -40(%rbp)	#, format_tree
	jne	.L131	#,
	jmp	.L147	#
.L128:
	.loc 1 1303 0
	movq	-72(%rbp), %rax	# params, tmp85
	movq	(%rax), %rax	# params_1->common.chain, tmp86
	movq	%rax, -72(%rbp)	# tmp86, params
	.loc 1 1297 0
	addq	$1, -48(%rbp)	#, arg_num
	.loc 1 1304 0
	jmp	.L130	#
.L147:
	.loc 1 1308 0
	jmp	.L125	#
.L131:
	.loc 1 1310 0
	movl	$0, -32(%rbp)	#, res.number_non_literal
	.loc 1 1311 0
	movl	$0, -28(%rbp)	#, res.number_extra_args
	.loc 1 1312 0
	movl	$0, -24(%rbp)	#, res.number_dollar_extra_args
	.loc 1 1313 0
	movl	$0, -20(%rbp)	#, res.number_wide
	.loc 1 1314 0
	movl	$0, -16(%rbp)	#, res.number_empty
	.loc 1 1315 0
	movl	$0, -12(%rbp)	#, res.number_unterminated
	.loc 1 1316 0
	movl	$0, -8(%rbp)	#, res.number_other
	.loc 1 1318 0
	movq	-48(%rbp), %r8	# arg_num, tmp91
	movq	-72(%rbp), %rdi	# params, tmp92
	movq	-40(%rbp), %rcx	# format_tree, tmp93
	movq	-64(%rbp), %rdx	# info, tmp94
	leaq	-32(%rbp), %rsi	#, tmp95
	movq	-56(%rbp), %rax	# status, tmp96
	movq	%r8, %r9	# tmp91,
	movq	%rdi, %r8	# tmp92,
	movq	%rax, %rdi	# tmp96,
	call	check_format_info_recurse	#
	.loc 1 1320 0
	movl	-32(%rbp), %eax	# res.number_non_literal, D.12644
	testl	%eax, %eax	# D.12644
	jle	.L132	#,
	.loc 1 1325 0
	movq	-64(%rbp), %rax	# info, tmp97
	movl	(%rax), %eax	# info_7(D)->format_type, D.12645
	movl	%eax, %edx	# D.12645, tmp98
	movq	%rdx, %rax	# tmp98, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rdx, %rax	# tmp98, tmp99
	salq	$5, %rax	#, tmp100
	addq	$format_types+48, %rax	#, tmp101
	movl	8(%rax), %eax	# format_types[_13].flags, D.12644
	andl	$1, %eax	#, D.12644
	testl	%eax, %eax	# D.12644
	jne	.L133	#,
	.loc 1 1329 0
	movl	warn_format_nonliteral(%rip), %eax	# warn_format_nonliteral, warn_format_nonliteral.51
	testl	%eax, %eax	# warn_format_nonliteral.51
	je	.L132	#,
	.loc 1 1330 0
	movq	-56(%rbp), %rax	# status, tmp102
	movl	$.LC165, %esi	#,
	movq	%rax, %rdi	# tmp102,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L132	#
.L133:
	.loc 1 1332 0
	movq	-64(%rbp), %rax	# info, tmp103
	movq	16(%rax), %rax	# info_7(D)->first_arg_num, D.12643
	testq	%rax, %rax	# D.12643
	je	.L132	#,
	.loc 1 1336 0
	jmp	.L135	#
.L138:
	.loc 1 1338 0
	cmpq	$0, -72(%rbp)	#, params
	jne	.L136	#,
	.loc 1 1339 0
	jmp	.L137	#
.L136:
	.loc 1 1340 0
	movq	-72(%rbp), %rax	# params, tmp104
	movq	(%rax), %rax	# params_2->common.chain, tmp105
	movq	%rax, -72(%rbp)	# tmp105, params
	.loc 1 1341 0
	addq	$1, -48(%rbp)	#, arg_num
.L135:
	.loc 1 1336 0 discriminator 1
	movq	-48(%rbp), %rax	# arg_num, tmp106
	leaq	1(%rax), %rdx	#, D.12643
	movq	-64(%rbp), %rax	# info, tmp107
	movq	16(%rax), %rax	# info_7(D)->first_arg_num, D.12643
	cmpq	%rax, %rdx	# D.12643, D.12643
	jb	.L138	#,
.L137:
	.loc 1 1343 0
	cmpq	$0, -72(%rbp)	#, params
	jne	.L139	#,
	.loc 1 1343 0 is_stmt 0 discriminator 1
	movl	warn_format_nonliteral(%rip), %eax	# warn_format_nonliteral, warn_format_nonliteral.52
	testl	%eax, %eax	# warn_format_nonliteral.52
	jne	.L140	#,
	movl	warn_format_security(%rip), %eax	# warn_format_security, warn_format_security.53
	testl	%eax, %eax	# warn_format_security.53
	je	.L139	#,
.L140:
	.loc 1 1344 0 is_stmt 1
	movq	-56(%rbp), %rax	# status, tmp108
	movl	$.LC166, %esi	#,
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L132	#
.L139:
	.loc 1 1345 0
	movl	warn_format_nonliteral(%rip), %eax	# warn_format_nonliteral, warn_format_nonliteral.54
	testl	%eax, %eax	# warn_format_nonliteral.54
	je	.L132	#,
	.loc 1 1346 0
	movq	-56(%rbp), %rax	# status, tmp109
	movl	$.LC167, %esi	#,
	movq	%rax, %rdi	# tmp109,
	movl	$0, %eax	#,
	call	status_warning	#
.L132:
	.loc 1 1357 0
	movl	-28(%rbp), %eax	# res.number_extra_args, D.12644
	testl	%eax, %eax	# D.12644
	jle	.L141	#,
	.loc 1 1357 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# res.number_non_literal, D.12644
	testl	%eax, %eax	# D.12644
	jne	.L141	#,
	.loc 1 1358 0 is_stmt 1
	movl	-8(%rbp), %eax	# res.number_other, D.12644
	testl	%eax, %eax	# D.12644
	jne	.L141	#,
	.loc 1 1358 0 is_stmt 0 discriminator 1
	movl	warn_format_extra_args(%rip), %eax	# warn_format_extra_args, warn_format_extra_args.55
	testl	%eax, %eax	# warn_format_extra_args.55
	je	.L141	#,
	.loc 1 1359 0 is_stmt 1
	movq	-56(%rbp), %rax	# status, tmp110
	movl	$.LC168, %esi	#,
	movq	%rax, %rdi	# tmp110,
	movl	$0, %eax	#,
	call	status_warning	#
.L141:
	.loc 1 1360 0
	movl	-24(%rbp), %eax	# res.number_dollar_extra_args, D.12644
	testl	%eax, %eax	# D.12644
	jle	.L142	#,
	.loc 1 1360 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# res.number_non_literal, D.12644
	testl	%eax, %eax	# D.12644
	jne	.L142	#,
	.loc 1 1361 0 is_stmt 1
	movl	-8(%rbp), %eax	# res.number_other, D.12644
	testl	%eax, %eax	# D.12644
	jne	.L142	#,
	.loc 1 1361 0 is_stmt 0 discriminator 1
	movl	warn_format_extra_args(%rip), %eax	# warn_format_extra_args, warn_format_extra_args.56
	testl	%eax, %eax	# warn_format_extra_args.56
	je	.L142	#,
	.loc 1 1362 0 is_stmt 1
	movq	-56(%rbp), %rax	# status, tmp111
	movl	$.LC169, %esi	#,
	movq	%rax, %rdi	# tmp111,
	movl	$0, %eax	#,
	call	status_warning	#
.L142:
	.loc 1 1363 0
	movl	-16(%rbp), %eax	# res.number_empty, D.12644
	testl	%eax, %eax	# D.12644
	jle	.L143	#,
	.loc 1 1363 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# res.number_non_literal, D.12644
	testl	%eax, %eax	# D.12644
	jne	.L143	#,
	.loc 1 1364 0 is_stmt 1
	movl	-8(%rbp), %eax	# res.number_other, D.12644
	testl	%eax, %eax	# D.12644
	jne	.L143	#,
	.loc 1 1365 0
	movq	-56(%rbp), %rax	# status, tmp112
	movl	$.LC170, %esi	#,
	movq	%rax, %rdi	# tmp112,
	movl	$0, %eax	#,
	call	status_warning	#
.L143:
	.loc 1 1367 0
	movl	-20(%rbp), %eax	# res.number_wide, D.12644
	testl	%eax, %eax	# D.12644
	jle	.L144	#,
	.loc 1 1368 0
	movq	-56(%rbp), %rax	# status, tmp113
	movl	$.LC171, %esi	#,
	movq	%rax, %rdi	# tmp113,
	movl	$0, %eax	#,
	call	status_warning	#
.L144:
	.loc 1 1370 0
	movl	-12(%rbp), %eax	# res.number_unterminated, D.12644
	testl	%eax, %eax	# D.12644
	jle	.L125	#,
	.loc 1 1371 0
	movq	-56(%rbp), %rax	# status, tmp114
	movl	$.LC172, %esi	#,
	movq	%rax, %rdi	# tmp114,
	movl	$0, %eax	#,
	call	status_warning	#
.L125:
	.loc 1 1372 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	check_format_info, .-check_format_info
	.section	.rodata
.LC173:
	.string	"format_arg"
.LC174:
	.string	"null format string"
	.text
	.type	check_format_info_recurse, @function
check_format_info_recurse:
.LFB14:
	.loc 1 1388 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -120(%rbp)	# status, status
	movq	%rsi, -128(%rbp)	# res, res
	movq	%rdx, -136(%rbp)	# info, info
	movq	%rcx, -144(%rbp)	# format_tree, format_tree
	movq	%r8, -152(%rbp)	# params, params
	movq	%r9, -160(%rbp)	# arg_num, arg_num
	.loc 1 1392 0
	movq	$0, -72(%rbp)	#, array_size
	.loc 1 1395 0
	movq	-144(%rbp), %rax	# format_tree, tmp154
	movzbl	16(%rax), %eax	# format_tree_23(D)->common.code, D.12654
	cmpb	$115, %al	#, D.12654
	jne	.L149	#,
	.loc 1 1398 0
	movq	-144(%rbp), %rax	# format_tree, tmp155
	movq	32(%rax), %rcx	# format_tree_23(D)->exp.operands, D.12655
	movq	-160(%rbp), %r8	# arg_num, tmp156
	movq	-152(%rbp), %rdi	# params, tmp157
	movq	-136(%rbp), %rdx	# info, tmp158
	movq	-128(%rbp), %rsi	# res, tmp159
	movq	-120(%rbp), %rax	# status, tmp160
	movq	%r8, %r9	# tmp156,
	movq	%rdi, %r8	# tmp157,
	movq	%rax, %rdi	# tmp160,
	call	check_format_info_recurse	#
	.loc 1 1401 0
	jmp	.L148	#
.L149:
	.loc 1 1404 0
	movq	-144(%rbp), %rax	# format_tree, tmp161
	movzbl	16(%rax), %eax	# format_tree_23(D)->common.code, D.12654
	cmpb	$53, %al	#, D.12654
	jne	.L151	#,
.LBB13:
	.loc 1 1406 0
	movq	-144(%rbp), %rax	# format_tree, tmp162
	movq	32(%rax), %rax	# format_tree_23(D)->exp.operands, D.12655
	movq	8(%rax), %rax	# _32->common.type, D.12655
	movq	8(%rax), %rax	# _33->common.type, tmp163
	movq	%rax, -24(%rbp)	# tmp163, type
	.loc 1 1408 0
	movb	$0, -101(%rbp)	#, found_format_arg
	.loc 1 1414 0
	movq	-24(%rbp), %rax	# type, tmp164
	movq	48(%rax), %rax	# type_34->type.attributes, tmp165
	movq	%rax, -64(%rbp)	# tmp165, attrs
	jmp	.L152	#
.L161:
	.loc 1 1417 0
	movq	-64(%rbp), %rax	# attrs, tmp166
	movq	24(%rax), %rax	# attrs_13->list.purpose, D.12655
	movq	%rax, %rsi	# D.12655,
	movl	$.LC173, %edi	#,
	call	is_attribute_p	#
	testl	%eax, %eax	# D.12656
	je	.L153	#,
.LBB14:
	.loc 1 1426 0
	movq	-64(%rbp), %rax	# attrs, tmp167
	movq	32(%rax), %rax	# attrs_13->list.value, D.12655
	movq	32(%rax), %rax	# _39->list.value, tmp168
	movq	%rax, -48(%rbp)	# tmp168, format_num_expr
	.loc 1 1427 0
	jmp	.L154	#
.L155:
	.loc 1 1430 0
	movq	-48(%rbp), %rax	# format_num_expr, tmp169
	movq	32(%rax), %rax	# format_num_expr_17->exp.operands, tmp170
	movq	%rax, -48(%rbp)	# tmp170, format_num_expr
.L154:
	.loc 1 1427 0 discriminator 1
	movq	-48(%rbp), %rax	# format_num_expr, tmp171
	movzbl	16(%rax), %eax	# format_num_expr_17->common.code, D.12654
	cmpb	$115, %al	#, D.12654
	je	.L155	#,
	.loc 1 1428 0
	movq	-48(%rbp), %rax	# format_num_expr, tmp172
	movzbl	16(%rax), %eax	# format_num_expr_17->common.code, D.12654
	cmpb	$114, %al	#, D.12654
	je	.L155	#,
	.loc 1 1429 0
	movq	-48(%rbp), %rax	# format_num_expr, tmp173
	movzbl	16(%rax), %eax	# format_num_expr_17->common.code, D.12654
	cmpb	$116, %al	#, D.12654
	je	.L155	#,
	.loc 1 1432 0
	movq	-48(%rbp), %rax	# format_num_expr, tmp174
	movzbl	16(%rax), %eax	# format_num_expr_17->common.code, D.12654
	cmpb	$25, %al	#, D.12654
	jne	.L156	#,
	.loc 1 1433 0
	movq	-48(%rbp), %rax	# format_num_expr, tmp175
	movq	40(%rax), %rax	# format_num_expr_17->int_cst.int_cst.high, D.12657
	testq	%rax, %rax	# D.12657
	je	.L157	#,
.L156:
	.loc 1 1434 0
	movl	$__FUNCTION__.10489, %edx	#,
	movl	$1434, %esi	#,
	movl	$.LC5, %edi	#,
	call	fancy_abort	#
.L157:
	.loc 1 1436 0
	movq	-48(%rbp), %rax	# format_num_expr, tmp176
	movq	32(%rax), %rax	# format_num_expr_17->int_cst.int_cst.low, D.12658
	movl	%eax, -92(%rbp)	# D.12658, format_num
	.loc 1 1438 0
	movq	-144(%rbp), %rax	# format_tree, tmp177
	movq	40(%rax), %rax	# format_tree_23(D)->exp.operands, tmp178
	movq	%rax, -56(%rbp)	# tmp178, inner_args
	movl	$1, -96(%rbp)	#, i
	jmp	.L158	#
.L160:
	.loc 1 1441 0
	movl	-96(%rbp), %eax	# i, tmp179
	cmpl	-92(%rbp), %eax	# format_num, tmp179
	jne	.L159	#,
	.loc 1 1443 0
	movq	-56(%rbp), %rax	# inner_args, tmp180
	movq	32(%rax), %rcx	# inner_args_16->list.value, D.12655
	movq	-160(%rbp), %r8	# arg_num, tmp181
	movq	-152(%rbp), %rdi	# params, tmp182
	movq	-136(%rbp), %rdx	# info, tmp183
	movq	-128(%rbp), %rsi	# res, tmp184
	movq	-120(%rbp), %rax	# status, tmp185
	movq	%r8, %r9	# tmp181,
	movq	%rdi, %r8	# tmp182,
	movq	%rax, %rdi	# tmp185,
	call	check_format_info_recurse	#
	.loc 1 1446 0
	movb	$1, -101(%rbp)	#, found_format_arg
	.loc 1 1447 0
	jmp	.L153	#
.L159:
	.loc 1 1440 0
	movq	-56(%rbp), %rax	# inner_args, tmp186
	movq	(%rax), %rax	# inner_args_16->common.chain, tmp187
	movq	%rax, -56(%rbp)	# tmp187, inner_args
	addl	$1, -96(%rbp)	#, i
.L158:
	.loc 1 1438 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, inner_args
	jne	.L160	#,
.L153:
.LBE14:
	.loc 1 1416 0
	movq	-64(%rbp), %rax	# attrs, tmp188
	movq	(%rax), %rax	# attrs_13->common.chain, tmp189
	movq	%rax, -64(%rbp)	# tmp189, attrs
.L152:
	.loc 1 1414 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, attrs
	jne	.L161	#,
	.loc 1 1454 0
	cmpb	$0, -101(%rbp)	#, found_format_arg
	je	.L151	#,
	.loc 1 1455 0
	jmp	.L148	#
.L151:
.LBE13:
	.loc 1 1458 0
	movq	-144(%rbp), %rax	# format_tree, tmp190
	movzbl	16(%rax), %eax	# format_tree_23(D)->common.code, D.12654
	cmpb	$51, %al	#, D.12654
	jne	.L162	#,
	.loc 1 1461 0
	movq	-144(%rbp), %rax	# format_tree, tmp191
	movq	40(%rax), %rcx	# format_tree_23(D)->exp.operands, D.12655
	movq	-160(%rbp), %r8	# arg_num, tmp192
	movq	-152(%rbp), %rdi	# params, tmp193
	movq	-136(%rbp), %rdx	# info, tmp194
	movq	-128(%rbp), %rsi	# res, tmp195
	movq	-120(%rbp), %rax	# status, tmp196
	movq	%r8, %r9	# tmp192,
	movq	%rdi, %r8	# tmp193,
	movq	%rax, %rdi	# tmp196,
	call	check_format_info_recurse	#
	.loc 1 1464 0
	movq	-144(%rbp), %rax	# format_tree, tmp197
	movq	48(%rax), %rcx	# format_tree_23(D)->exp.operands, D.12655
	movq	-160(%rbp), %r8	# arg_num, tmp198
	movq	-152(%rbp), %rdi	# params, tmp199
	movq	-136(%rbp), %rdx	# info, tmp200
	movq	-128(%rbp), %rsi	# res, tmp201
	movq	-120(%rbp), %rax	# status, tmp202
	movq	%r8, %r9	# tmp198,
	movq	%rdi, %r8	# tmp199,
	movq	%rax, %rdi	# tmp202,
	call	check_format_info_recurse	#
	.loc 1 1467 0
	jmp	.L148	#
.L162:
	.loc 1 1470 0
	movq	-144(%rbp), %rax	# format_tree, tmp203
	movq	%rax, %rdi	# tmp203,
	call	integer_zerop	#
	testl	%eax, %eax	# D.12656
	je	.L163	#,
	.loc 1 1478 0
	movq	-120(%rbp), %rax	# status, tmp204
	movl	$.LC174, %esi	#,
	movq	%rax, %rdi	# tmp204,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1482 0
	jmp	.L164	#
.L166:
	.loc 1 1484 0
	cmpq	$0, -152(%rbp)	#, params
	jne	.L165	#,
	.loc 1 1485 0
	jmp	.L148	#
.L165:
	.loc 1 1486 0
	movq	-152(%rbp), %rax	# params, tmp205
	movq	(%rax), %rax	# params_4->common.chain, tmp206
	movq	%rax, -152(%rbp)	# tmp206, params
	.loc 1 1487 0
	addq	$1, -160(%rbp)	#, arg_num
.L164:
	.loc 1 1482 0 discriminator 1
	movq	-160(%rbp), %rax	# arg_num, tmp207
	leaq	1(%rax), %rdx	#, D.12658
	movq	-136(%rbp), %rax	# info, tmp208
	movq	16(%rax), %rax	# info_28(D)->first_arg_num, D.12658
	cmpq	%rax, %rdx	# D.12658, D.12658
	jb	.L166	#,
	.loc 1 1490 0
	cmpq	$0, -152(%rbp)	#, params
	jne	.L167	#,
	.loc 1 1491 0
	movq	-128(%rbp), %rax	# res, tmp209
	movl	24(%rax), %eax	# res_27(D)->number_other, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp210
	movl	%edx, 24(%rax)	# D.12656, res_27(D)->number_other
	.loc 1 1495 0
	jmp	.L148	#
.L167:
	.loc 1 1493 0
	movq	-128(%rbp), %rax	# res, tmp211
	movl	4(%rax), %eax	# res_27(D)->number_extra_args, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp212
	movl	%edx, 4(%rax)	# D.12656, res_27(D)->number_extra_args
	.loc 1 1495 0
	jmp	.L148	#
.L163:
	.loc 1 1498 0
	movq	$0, -88(%rbp)	#, offset
	.loc 1 1499 0
	movq	-144(%rbp), %rax	# format_tree, tmp213
	movzbl	16(%rax), %eax	# format_tree_23(D)->common.code, D.12654
	cmpb	$59, %al	#, D.12654
	jne	.L169	#,
.LBB15:
	.loc 1 1503 0
	movq	-144(%rbp), %rax	# format_tree, tmp214
	movq	32(%rax), %rax	# format_tree_23(D)->exp.operands, tmp215
	movq	%rax, -40(%rbp)	# tmp215, arg0
	.loc 1 1504 0
	movq	-144(%rbp), %rax	# format_tree, tmp216
	movq	40(%rax), %rax	# format_tree_23(D)->exp.operands, tmp217
	movq	%rax, -32(%rbp)	# tmp217, arg1
	.loc 1 1505 0
	jmp	.L170	#
.L173:
	.loc 1 1505 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg0, tmp218
	movq	32(%rax), %rax	# arg0_19->exp.operands, tmp219
	movq	%rax, -40(%rbp)	# tmp219, arg0
.L170:
	movq	-40(%rbp), %rax	# arg0, tmp220
	movzbl	16(%rax), %eax	# arg0_19->common.code, D.12654
	cmpb	$115, %al	#, D.12654
	je	.L171	#,
	.loc 1 1505 0 discriminator 3
	movq	-40(%rbp), %rax	# arg0, tmp221
	movzbl	16(%rax), %eax	# arg0_19->common.code, D.12654
	cmpb	$114, %al	#, D.12654
	je	.L171	#,
	.loc 1 1505 0 discriminator 1
	movq	-40(%rbp), %rax	# arg0, tmp222
	movzbl	16(%rax), %eax	# arg0_19->common.code, D.12654
	cmpb	$116, %al	#, D.12654
	jne	.L172	#,
.L171:
	.loc 1 1505 0 discriminator 2
	movq	-40(%rbp), %rax	# arg0, tmp223
	movq	32(%rax), %rdx	# arg0_19->exp.operands, D.12655
	movq	global_trees(%rip), %rax	# global_trees, D.12655
	cmpq	%rax, %rdx	# D.12655, D.12655
	je	.L172	#,
	.loc 1 1505 0 discriminator 1
	movq	-40(%rbp), %rax	# arg0, tmp224
	movq	8(%rax), %rax	# arg0_19->common.type, D.12655
	movzbl	61(%rax), %eax	# *_77, tmp227
	shrb	%al	# D.12659
	movl	%eax, %edx	# D.12659, D.12659
	movq	-40(%rbp), %rax	# arg0, tmp228
	movq	32(%rax), %rax	# arg0_19->exp.operands, D.12655
	movq	8(%rax), %rax	# _79->common.type, D.12655
	movzbl	61(%rax), %eax	# *_80, tmp231
	shrb	%al	# D.12659
	cmpb	%al, %dl	# D.12659, D.12659
	je	.L173	#,
.L172:
	.loc 1 1506 0 is_stmt 1
	jmp	.L174	#
.L177:
	.loc 1 1506 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp232
	movq	32(%rax), %rax	# arg1_20->exp.operands, tmp233
	movq	%rax, -32(%rbp)	# tmp233, arg1
.L174:
	movq	-32(%rbp), %rax	# arg1, tmp234
	movzbl	16(%rax), %eax	# arg1_20->common.code, D.12654
	cmpb	$115, %al	#, D.12654
	je	.L175	#,
	.loc 1 1506 0 discriminator 3
	movq	-32(%rbp), %rax	# arg1, tmp235
	movzbl	16(%rax), %eax	# arg1_20->common.code, D.12654
	cmpb	$114, %al	#, D.12654
	je	.L175	#,
	.loc 1 1506 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp236
	movzbl	16(%rax), %eax	# arg1_20->common.code, D.12654
	cmpb	$116, %al	#, D.12654
	jne	.L176	#,
.L175:
	.loc 1 1506 0 discriminator 2
	movq	-32(%rbp), %rax	# arg1, tmp237
	movq	32(%rax), %rdx	# arg1_20->exp.operands, D.12655
	movq	global_trees(%rip), %rax	# global_trees, D.12655
	cmpq	%rax, %rdx	# D.12655, D.12655
	je	.L176	#,
	.loc 1 1506 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp238
	movq	8(%rax), %rax	# arg1_20->common.type, D.12655
	movzbl	61(%rax), %eax	# *_88, tmp241
	shrb	%al	# D.12659
	movl	%eax, %edx	# D.12659, D.12659
	movq	-32(%rbp), %rax	# arg1, tmp242
	movq	32(%rax), %rax	# arg1_20->exp.operands, D.12655
	movq	8(%rax), %rax	# _90->common.type, D.12655
	movzbl	61(%rax), %eax	# *_91, tmp245
	shrb	%al	# D.12659
	cmpb	%al, %dl	# D.12659, D.12659
	je	.L177	#,
.L176:
	.loc 1 1507 0 is_stmt 1
	movq	-32(%rbp), %rax	# arg1, tmp246
	movzbl	16(%rax), %eax	# arg1_20->common.code, D.12654
	cmpb	$25, %al	#, D.12654
	jne	.L178	#,
	.loc 1 1508 0
	movq	-40(%rbp), %rax	# arg0, tmp247
	movq	%rax, -144(%rbp)	# tmp247, format_tree
	jmp	.L179	#
.L178:
	.loc 1 1509 0
	movq	-40(%rbp), %rax	# arg0, tmp248
	movzbl	16(%rax), %eax	# arg0_19->common.code, D.12654
	cmpb	$25, %al	#, D.12654
	jne	.L180	#,
	.loc 1 1511 0
	movq	-32(%rbp), %rax	# arg1, tmp249
	movq	%rax, -144(%rbp)	# tmp249, format_tree
	.loc 1 1512 0
	movq	-40(%rbp), %rax	# arg0, tmp250
	movq	%rax, -32(%rbp)	# tmp250, arg1
	jmp	.L179	#
.L180:
	.loc 1 1516 0
	movq	-128(%rbp), %rax	# res, tmp251
	movl	(%rax), %eax	# res_27(D)->number_non_literal, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp252
	movl	%edx, (%rax)	# D.12656, res_27(D)->number_non_literal
	.loc 1 1517 0
	jmp	.L148	#
.L179:
	.loc 1 1519 0
	movq	-32(%rbp), %rax	# arg1, tmp253
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp253,
	call	host_integerp	#
	testl	%eax, %eax	# D.12656
	je	.L181	#,
	.loc 1 1520 0
	movq	-32(%rbp), %rax	# arg1, tmp254
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp254,
	call	tree_low_cst	#
	movq	%rax, -88(%rbp)	# tmp255, offset
	cmpq	$0, -88(%rbp)	#, offset
	jns	.L169	#,
.L181:
	.loc 1 1522 0
	movq	-128(%rbp), %rax	# res, tmp256
	movl	(%rax), %eax	# res_27(D)->number_non_literal, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp257
	movl	%edx, (%rax)	# D.12656, res_27(D)->number_non_literal
	.loc 1 1523 0
	jmp	.L148	#
.L169:
.LBE15:
	.loc 1 1526 0
	movq	-144(%rbp), %rax	# format_tree, tmp258
	movzbl	16(%rax), %eax	# format_tree_2->common.code, D.12654
	cmpb	$121, %al	#, D.12654
	je	.L182	#,
	.loc 1 1528 0
	movq	-128(%rbp), %rax	# res, tmp259
	movl	(%rax), %eax	# res_27(D)->number_non_literal, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp260
	movl	%edx, (%rax)	# D.12656, res_27(D)->number_non_literal
	.loc 1 1529 0
	jmp	.L148	#
.L182:
	.loc 1 1531 0
	movq	-144(%rbp), %rax	# format_tree, tmp261
	movq	32(%rax), %rax	# format_tree_2->exp.operands, tmp262
	movq	%rax, -144(%rbp)	# tmp262, format_tree
	.loc 1 1532 0
	movq	-144(%rbp), %rax	# format_tree, tmp263
	movzbl	16(%rax), %eax	# format_tree_108->common.code, D.12654
	cmpb	$34, %al	#, D.12654
	jne	.L183	#,
	.loc 1 1533 0
	movq	-144(%rbp), %rax	# format_tree, tmp264
	movq	8(%rax), %rax	# format_tree_108->common.type, D.12655
	movzbl	16(%rax), %eax	# _110->common.code, D.12654
	cmpb	$18, %al	#, D.12654
	jne	.L183	#,
	.loc 1 1534 0
	movq	-144(%rbp), %rax	# format_tree, tmp265
	movq	%rax, %rdi	# tmp265,
	call	decl_constant_value	#
	movq	%rax, -16(%rbp)	# tmp266, array_init
	movq	-16(%rbp), %rax	# array_init, tmp267
	cmpq	-144(%rbp), %rax	# format_tree, tmp267
	je	.L183	#,
	.loc 1 1535 0
	movq	-16(%rbp), %rax	# array_init, tmp268
	movzbl	16(%rax), %eax	# array_init_112->common.code, D.12654
	cmpb	$29, %al	#, D.12654
	jne	.L183	#,
	.loc 1 1540 0
	movq	-144(%rbp), %rax	# format_tree, tmp269
	movq	64(%rax), %rax	# format_tree_108->decl.size_unit, tmp270
	movq	%rax, -72(%rbp)	# tmp270, array_size
	.loc 1 1541 0
	movq	-16(%rbp), %rax	# array_init, tmp271
	movq	%rax, -144(%rbp)	# tmp271, format_tree
.L183:
	.loc 1 1543 0
	movq	-144(%rbp), %rax	# format_tree, tmp272
	movzbl	16(%rax), %eax	# format_tree_3->common.code, D.12654
	cmpb	$29, %al	#, D.12654
	je	.L184	#,
	.loc 1 1545 0
	movq	-128(%rbp), %rax	# res, tmp273
	movl	(%rax), %eax	# res_27(D)->number_non_literal, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp274
	movl	%edx, (%rax)	# D.12656, res_27(D)->number_non_literal
	.loc 1 1546 0
	jmp	.L148	#
.L184:
	.loc 1 1548 0
	movq	-144(%rbp), %rax	# format_tree, tmp275
	movq	8(%rax), %rax	# format_tree_3->common.type, D.12655
	movq	8(%rax), %rax	# _119->common.type, D.12655
	movq	128(%rax), %rdx	# _120->type.main_variant, D.12655
	movq	integer_types(%rip), %rax	# integer_types, D.12655
	cmpq	%rax, %rdx	# D.12655, D.12655
	je	.L185	#,
	.loc 1 1550 0
	movq	-128(%rbp), %rax	# res, tmp276
	movl	12(%rax), %eax	# res_27(D)->number_wide, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp277
	movl	%edx, 12(%rax)	# D.12656, res_27(D)->number_wide
	.loc 1 1551 0
	jmp	.L148	#
.L185:
	.loc 1 1553 0
	movq	-144(%rbp), %rax	# format_tree, tmp278
	movq	40(%rax), %rax	# format_tree_3->string.pointer, tmp279
	movq	%rax, -80(%rbp)	# tmp279, format_chars
	.loc 1 1554 0
	movq	-144(%rbp), %rax	# format_tree, tmp280
	movl	32(%rax), %eax	# format_tree_3->string.length, tmp281
	movl	%eax, -100(%rbp)	# tmp281, format_length
	.loc 1 1555 0
	cmpq	$0, -72(%rbp)	#, array_size
	je	.L186	#,
	.loc 1 1558 0
	movq	-72(%rbp), %rax	# array_size, tmp282
	movzbl	16(%rax), %eax	# array_size_12->common.code, D.12654
	cmpb	$25, %al	#, D.12654
	je	.L187	#,
	.loc 1 1559 0
	movl	$__FUNCTION__.10489, %edx	#,
	movl	$1559, %esi	#,
	movl	$.LC5, %edi	#,
	call	fancy_abort	#
.L187:
	.loc 1 1560 0
	movq	-72(%rbp), %rax	# array_size, tmp283
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp283,
	call	host_integerp	#
	testl	%eax, %eax	# D.12656
	je	.L186	#,
.LBB16:
	.loc 1 1562 0
	movq	-72(%rbp), %rax	# array_size, tmp284
	movq	32(%rax), %rax	# array_size_12->int_cst.int_cst.low, D.12658
	movq	%rax, -8(%rbp)	# D.12658, array_size_value
	.loc 1 1563 0
	cmpq	$0, -8(%rbp)	#, array_size_value
	jle	.L186	#,
	.loc 1 1564 0
	movq	-8(%rbp), %rax	# array_size_value, tmp285
	cltq
	cmpq	-8(%rbp), %rax	# array_size_value, D.12657
	jne	.L186	#,
	.loc 1 1565 0
	movl	-100(%rbp), %eax	# format_length, tmp286
	cltq
	cmpq	-8(%rbp), %rax	# array_size_value, D.12657
	jle	.L186	#,
	.loc 1 1566 0
	movq	-8(%rbp), %rax	# array_size_value, tmp287
	movl	%eax, -100(%rbp)	# tmp287, format_length
.L186:
.LBE16:
	.loc 1 1569 0
	cmpq	$0, -88(%rbp)	#, offset
	je	.L188	#,
	.loc 1 1571 0
	movl	-100(%rbp), %eax	# format_length, tmp288
	cltq
	cmpq	-88(%rbp), %rax	# offset, D.12657
	jg	.L189	#,
	.loc 1 1573 0
	movq	-128(%rbp), %rax	# res, tmp289
	movl	(%rax), %eax	# res_27(D)->number_non_literal, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp290
	movl	%edx, (%rax)	# D.12656, res_27(D)->number_non_literal
	.loc 1 1574 0
	jmp	.L148	#
.L189:
	.loc 1 1576 0
	movq	-88(%rbp), %rax	# offset, offset.57
	addq	%rax, -80(%rbp)	# offset.57, format_chars
	.loc 1 1577 0
	movl	-100(%rbp), %edx	# format_length, format_length.58
	movq	-88(%rbp), %rax	# offset, tmp291
	subl	%eax, %edx	# D.12660, D.12660
	movl	%edx, %eax	# D.12660, D.12660
	movl	%eax, -100(%rbp)	# D.12660, format_length
.L188:
	.loc 1 1579 0
	cmpl	$0, -100(%rbp)	#, format_length
	jg	.L190	#,
	.loc 1 1581 0
	movq	-128(%rbp), %rax	# res, tmp292
	movl	20(%rax), %eax	# res_27(D)->number_unterminated, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp293
	movl	%edx, 20(%rax)	# D.12656, res_27(D)->number_unterminated
	.loc 1 1582 0
	jmp	.L148	#
.L190:
	.loc 1 1584 0
	cmpl	$1, -100(%rbp)	#, format_length
	jne	.L191	#,
	.loc 1 1586 0
	movq	-128(%rbp), %rax	# res, tmp294
	movl	16(%rax), %eax	# res_27(D)->number_empty, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp295
	movl	%edx, 16(%rax)	# D.12656, res_27(D)->number_empty
	.loc 1 1587 0
	jmp	.L148	#
.L191:
	.loc 1 1589 0
	subl	$1, -100(%rbp)	#, format_length
	movl	-100(%rbp), %eax	# format_length, tmp296
	movslq	%eax, %rdx	# tmp296, D.12661
	movq	-80(%rbp), %rax	# format_chars, tmp297
	addq	%rdx, %rax	# D.12661, D.12662
	movzbl	(%rax), %eax	# *_150, D.12663
	testb	%al, %al	# D.12663
	je	.L192	#,
	.loc 1 1591 0
	movq	-128(%rbp), %rax	# res, tmp298
	movl	20(%rax), %eax	# res_27(D)->number_unterminated, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp299
	movl	%edx, 20(%rax)	# D.12656, res_27(D)->number_unterminated
	.loc 1 1592 0
	jmp	.L148	#
.L192:
	.loc 1 1596 0
	jmp	.L193	#
.L195:
	.loc 1 1598 0
	cmpq	$0, -152(%rbp)	#, params
	jne	.L194	#,
	.loc 1 1599 0
	jmp	.L148	#
.L194:
	.loc 1 1600 0
	movq	-152(%rbp), %rax	# params, tmp300
	movq	(%rax), %rax	# params_5->common.chain, tmp301
	movq	%rax, -152(%rbp)	# tmp301, params
	.loc 1 1601 0
	addq	$1, -160(%rbp)	#, arg_num
.L193:
	.loc 1 1596 0 discriminator 1
	movq	-160(%rbp), %rax	# arg_num, tmp302
	leaq	1(%rax), %rdx	#, D.12658
	movq	-136(%rbp), %rax	# info, tmp303
	movq	16(%rax), %rax	# info_28(D)->first_arg_num, D.12658
	cmpq	%rax, %rdx	# D.12658, D.12658
	jb	.L195	#,
	.loc 1 1606 0
	movq	-128(%rbp), %rax	# res, tmp304
	movl	24(%rax), %eax	# res_27(D)->number_other, D.12656
	leal	1(%rax), %edx	#, D.12656
	movq	-128(%rbp), %rax	# res, tmp305
	movl	%edx, 24(%rax)	# D.12656, res_27(D)->number_other
	.loc 1 1607 0
	movq	-152(%rbp), %r9	# params, tmp306
	movl	-100(%rbp), %r8d	# format_length, tmp307
	movq	-80(%rbp), %rcx	# format_chars, tmp308
	movq	-136(%rbp), %rdx	# info, tmp309
	movq	-128(%rbp), %rsi	# res, tmp310
	movq	-120(%rbp), %rax	# status, tmp311
	movq	-160(%rbp), %rdi	# arg_num, tmp312
	movq	%rdi, (%rsp)	# tmp312,
	movq	%rax, %rdi	# tmp311,
	call	check_format_info_main	#
.L148:
	.loc 1 1609 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	check_format_info_recurse, .-check_format_info_recurse
	.section	.rodata
.LC175:
	.string	"embedded `\\0' in format"
	.align 8
.LC176:
	.string	"spurious trailing `%%' in format"
.LC177:
	.string	"repeated %s in format"
	.align 8
.LC178:
	.string	"missing fill character at end of strfmon format"
.LC179:
	.string	"too few arguments for format"
.LC180:
	.string	"zero width in %s format"
	.align 8
.LC181:
	.string	"empty left precision in %s format"
.LC182:
	.string	"field precision"
.LC183:
	.string	"empty precision in %s format"
.LC184:
	.string	"ISO C89"
	.align 8
.LC185:
	.string	"%s does not support the `%s' %s length modifier"
	.align 8
.LC186:
	.string	"conversion lacks type at end of format"
	.align 8
.LC187:
	.string	"unknown conversion type character `%c' in format"
	.align 8
.LC188:
	.string	"unknown conversion type character 0x%x in format"
	.align 8
.LC189:
	.string	"%s does not support the `%%%c' %s format"
.LC190:
	.string	"%s used with `%%%c' %s format"
.LC191:
	.string	"%s does not support %s"
	.align 8
.LC192:
	.string	"%s does not support %s with the `%%%c' %s format"
	.align 8
.LC193:
	.string	"%s ignored with %s and `%%%c' %s format"
	.align 8
.LC194:
	.string	"%s ignored with %s in %s format"
	.align 8
.LC195:
	.string	"use of %s and %s together with `%%%c' %s format"
	.align 8
.LC196:
	.string	"use of %s and %s together in %s format"
	.align 8
.LC197:
	.string	"`%%%c' yields only last 2 digits of year in some locales"
	.align 8
.LC198:
	.string	"`%%%c' yields only last 2 digits of year"
	.align 8
.LC199:
	.string	"no closing `]' for `%%[' format"
	.align 8
.LC200:
	.string	"use of `%s' length modifier with `%c' type character"
	.align 8
.LC201:
	.string	"%s does not support the `%%%s%c' %s format"
	.align 8
.LC202:
	.string	"operand number specified with suppressed assignment"
	.align 8
.LC203:
	.string	"operand number specified for format taking no argument"
	.text
	.type	check_format_info_main, @function
check_format_info_main:
.LFB15:
	.loc 1 1629 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$752, %rsp	#,
	movq	%rdi, -712(%rbp)	# status, status
	movq	%rsi, -720(%rbp)	# res, res
	movq	%rdx, -728(%rbp)	# info, info
	movq	%rcx, -736(%rbp)	# format_chars, format_chars
	movl	%r8d, -740(%rbp)	# format_length, format_length
	movq	%r9, -752(%rbp)	# params, params
	.loc 1 1629 0
	movq	%fs:40, %rax	#, tmp902
	movq	%rax, -8(%rbp)	# tmp902, D.12680
	xorl	%eax, %eax	# tmp902
	.loc 1 1630 0
	movq	-736(%rbp), %rax	# format_chars, tmp541
	movq	%rax, -568(%rbp)	# tmp541, orig_format_chars
	.loc 1 1631 0
	movq	-752(%rbp), %rax	# params, tmp542
	movq	%rax, -560(%rbp)	# tmp542, first_fillin_param
	.loc 1 1633 0
	movq	-728(%rbp), %rax	# info, tmp543
	movl	(%rax), %eax	# info_107(D)->format_type, D.12666
	movl	%eax, %edx	# D.12666, tmp544
	movq	%rdx, %rax	# tmp544, tmp545
	addq	%rax, %rax	# tmp545
	addq	%rdx, %rax	# tmp544, tmp545
	salq	$5, %rax	#, tmp546
	addq	$format_types, %rax	#, tmp547
	movq	%rax, -552(%rbp)	# tmp547, fki
	.loc 1 1634 0
	movq	-552(%rbp), %rax	# fki, tmp548
	movq	40(%rax), %rax	# fki_109->flag_specs, tmp549
	movq	%rax, -544(%rbp)	# tmp549, flag_specs
	.loc 1 1635 0
	movq	-552(%rbp), %rax	# fki, tmp550
	movq	48(%rax), %rax	# fki_109->bad_flag_pairs, tmp551
	movq	%rax, -536(%rbp)	# tmp551, bad_flag_pairs
	.loc 1 1639 0
	movl	$-1, -696(%rbp)	#, has_operand_number
	.loc 1 1641 0
	movq	-728(%rbp), %rax	# info, tmp552
	movq	16(%rax), %rax	# info_107(D)->first_arg_num, D.12667
	movq	-560(%rbp), %rdx	# first_fillin_param, tmp553
	movq	%rdx, %rsi	# tmp553,
	movl	%eax, %edi	# D.12668,
	call	init_dollar_format_checking	#
.L409:
.LBB17:
	.loc 1 1646 0
	movl	$0, -688(%rbp)	#, suppressed
	.loc 1 1647 0
	movq	$0, -624(%rbp)	#, length_chars
	.loc 1 1648 0
	movl	$0, -684(%rbp)	#, length_chars_val
	.loc 1 1649 0
	movl	$0, -680(%rbp)	#, length_chars_std
	.loc 1 1653 0
	movl	$0, -676(%rbp)	#, main_arg_num
	.loc 1 1654 0
	movq	$0, -632(%rbp)	#, main_arg_params
	.loc 1 1660 0
	movq	$0, -600(%rbp)	#, first_wanted_type
	.loc 1 1661 0
	movq	$0, -592(%rbp)	#, last_wanted_type
	.loc 1 1662 0
	movq	$0, -584(%rbp)	#, fli
	.loc 1 1663 0
	movq	$0, -576(%rbp)	#, fci
	.loc 1 1665 0
	movl	$0, -672(%rbp)	#, aflag
	.loc 1 1666 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.59
	movzbl	(%rax), %eax	# *format_chars.59_126, D.12669
	testb	%al, %al	# D.12669
	jne	.L197	#,
	.loc 1 1668 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.60
	movq	%rax, %rdx	# format_chars.60, format_chars.61
	movq	-568(%rbp), %rax	# orig_format_chars, orig_format_chars.62
	subq	%rax, %rdx	# orig_format_chars.62, D.12670
	movl	-740(%rbp), %eax	# format_length, tmp554
	cltq
	cmpq	%rax, %rdx	# D.12670, D.12670
	je	.L198	#,
	.loc 1 1669 0
	movq	-712(%rbp), %rax	# status, tmp555
	movl	$.LC175, %esi	#,
	movq	%rax, %rdi	# tmp555,
	movl	$0, %eax	#,
	call	status_warning	#
.L198:
	.loc 1 1670 0
	movq	-728(%rbp), %rax	# info, tmp556
	movq	16(%rax), %rax	# info_107(D)->first_arg_num, D.12667
	testq	%rax, %rax	# D.12667
	je	.L199	#,
	.loc 1 1670 0 is_stmt 0 discriminator 1
	movq	-752(%rbp), %rax	# params, params.63
	testq	%rax, %rax	# params.63
	je	.L199	#,
	.loc 1 1671 0 is_stmt 1
	cmpl	$0, -696(%rbp)	#, has_operand_number
	jg	.L199	#,
	.loc 1 1673 0
	movq	-720(%rbp), %rax	# res, tmp557
	movl	24(%rax), %eax	# res_137(D)->number_other, D.12668
	leal	-1(%rax), %edx	#, D.12668
	movq	-720(%rbp), %rax	# res, tmp558
	movl	%edx, 24(%rax)	# D.12668, res_137(D)->number_other
	.loc 1 1674 0
	movq	-720(%rbp), %rax	# res, tmp559
	movl	4(%rax), %eax	# res_137(D)->number_extra_args, D.12668
	leal	1(%rax), %edx	#, D.12668
	movq	-720(%rbp), %rax	# res, tmp560
	movl	%edx, 4(%rax)	# D.12668, res_137(D)->number_extra_args
.L199:
	.loc 1 1676 0
	cmpl	$0, -696(%rbp)	#, has_operand_number
	jle	.L200	#,
	.loc 1 1677 0
	movq	-552(%rbp), %rax	# fki, tmp561
	movl	56(%rax), %eax	# fki_109->flags, D.12668
	andl	$128, %eax	#, D.12668
	movl	%eax, %edx	# D.12668, D.12668
	movq	-720(%rbp), %rcx	# res, tmp562
	movq	-712(%rbp), %rax	# status, tmp563
	movq	%rcx, %rsi	# tmp562,
	movq	%rax, %rdi	# tmp563,
	call	finish_dollar_format_checking	#
	.loc 1 1678 0
	jmp	.L196	#
.L200:
	jmp	.L196	#
.L197:
	.loc 1 1680 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.64
	leaq	1(%rax), %rdx	#, format_chars.66
	movq	%rdx, -736(%rbp)	# format_chars.66, format_chars
	movzbl	(%rax), %eax	# *format_chars.65_145, D.12669
	cmpb	$37, %al	#, D.12669
	je	.L202	#,
	.loc 1 1681 0
	jmp	.L407	#
.L202:
	.loc 1 1682 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.67
	movzbl	(%rax), %eax	# *format_chars.67_148, D.12669
	testb	%al, %al	# D.12669
	jne	.L204	#,
	.loc 1 1684 0
	movq	-712(%rbp), %rax	# status, tmp564
	movl	$.LC176, %esi	#,
	movq	%rax, %rdi	# tmp564,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1685 0
	jmp	.L407	#
.L204:
	.loc 1 1687 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.68
	movzbl	(%rax), %eax	# *format_chars.68_150, D.12669
	cmpb	$37, %al	#, D.12669
	jne	.L205	#,
	.loc 1 1689 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.69
	addq	$1, %rax	#, format_chars.70
	movq	%rax, -736(%rbp)	# format_chars.70, format_chars
	.loc 1 1690 0
	jmp	.L407	#
.L205:
	.loc 1 1692 0
	movb	$0, -272(%rbp)	#, flag_chars
	.loc 1 1694 0
	movq	-552(%rbp), %rax	# fki, tmp565
	movl	56(%rax), %eax	# fki_109->flags, D.12668
	andl	$16, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	je	.L206	#,
	.loc 1 1694 0 is_stmt 0 discriminator 1
	cmpl	$0, -696(%rbp)	#, has_operand_number
	je	.L206	#,
.LBB18:
	.loc 1 1701 0 is_stmt 1
	movq	-552(%rbp), %rdi	# fki, tmp566
	leaq	-632(%rbp), %rcx	#, tmp567
	movq	-560(%rbp), %rdx	# first_fillin_param, tmp568
	leaq	-736(%rbp), %rsi	#, tmp569
	movq	-712(%rbp), %rax	# status, tmp570
	movq	%rdi, %r9	# tmp566,
	movq	%rcx, %r8	# tmp567,
	movq	%rdx, %rcx	# tmp568,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp570,
	call	maybe_read_dollar_number	#
	movl	%eax, -652(%rbp)	# tmp571, opnum
	.loc 1 1704 0
	cmpl	$-1, -652(%rbp)	#, opnum
	jne	.L207	#,
	.loc 1 1705 0
	jmp	.L196	#
.L207:
	.loc 1 1706 0
	cmpl	$0, -652(%rbp)	#, opnum
	jle	.L206	#,
	.loc 1 1708 0
	movl	$1, -696(%rbp)	#, has_operand_number
	.loc 1 1709 0
	movq	-728(%rbp), %rax	# info, tmp572
	movq	16(%rax), %rax	# info_107(D)->first_arg_num, D.12667
	movl	%eax, %edx	# D.12667, D.12671
	movl	-652(%rbp), %eax	# opnum, opnum.71
	addl	%edx, %eax	# D.12671, D.12671
	subl	$1, %eax	#, D.12671
	movl	%eax, -676(%rbp)	# D.12671, main_arg_num
.LBE18:
	.loc 1 1716 0
	jmp	.L208	#
.L206:
	jmp	.L208	#
.L213:
.LBB19:
	.loc 1 1720 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.72
	movzbl	(%rax), %eax	# *format_chars.72_171, D.12669
	.loc 1 1719 0
	movsbl	%al, %ecx	# D.12669, D.12668
	movq	-544(%rbp), %rax	# flag_specs, tmp573
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp573,
	call	get_flag_spec	#
	movq	%rax, -528(%rbp)	# tmp574, s
	.loc 1 1721 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.73
	movzbl	(%rax), %eax	# *format_chars.73_175, D.12669
	movsbl	%al, %edx	# D.12669, D.12668
	leaq	-272(%rbp), %rax	#, tmp575
	movl	%edx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp575,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L209	#,
	.loc 1 1723 0
	movq	-528(%rbp), %rax	# s, tmp576
	movq	16(%rax), %rdx	# s_174->name, D.12672
	movq	-712(%rbp), %rax	# status, tmp577
	movl	$.LC177, %esi	#,
	movq	%rax, %rdi	# tmp577,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L210	#
.L209:
	.loc 1 1727 0
	leaq	-272(%rbp), %rax	#, tmp578
	movq	%rax, %rdi	# tmp578,
	call	strlen	#
	movl	%eax, -692(%rbp)	# D.12667, i
	.loc 1 1728 0
	movl	-692(%rbp), %eax	# i, i.74
	leal	1(%rax), %edx	#, tmp579
	movl	%edx, -692(%rbp)	# tmp579, i
	movq	-736(%rbp), %rdx	# format_chars, format_chars.75
	movzbl	(%rdx), %edx	# *format_chars.75_184, D.12669
	cltq
	movb	%dl, -272(%rbp,%rax)	# D.12669, flag_chars
	.loc 1 1729 0
	movl	-692(%rbp), %eax	# i, tmp582
	cltq
	movb	$0, -272(%rbp,%rax)	#, flag_chars
.L210:
	.loc 1 1731 0
	movq	-528(%rbp), %rax	# s, tmp583
	movl	8(%rax), %eax	# s_174->skip_next_char, D.12668
	testl	%eax, %eax	# D.12668
	je	.L211	#,
	.loc 1 1733 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.76
	addq	$1, %rax	#, format_chars.77
	movq	%rax, -736(%rbp)	# format_chars.77, format_chars
	.loc 1 1734 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.78
	movzbl	(%rax), %eax	# *format_chars.78_189, D.12669
	testb	%al, %al	# D.12669
	jne	.L211	#,
	.loc 1 1736 0
	movq	-712(%rbp), %rax	# status, tmp584
	movl	$.LC178, %esi	#,
	movq	%rax, %rdi	# tmp584,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1737 0
	jmp	.L196	#
.L211:
	.loc 1 1740 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.79
	addq	$1, %rax	#, format_chars.80
	movq	%rax, -736(%rbp)	# format_chars.80, format_chars
.L208:
.LBE19:
	.loc 1 1716 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.81
	movzbl	(%rax), %eax	# *format_chars.81_164, D.12669
	testb	%al, %al	# D.12669
	je	.L212	#,
	.loc 1 1717 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.82
	movzbl	(%rax), %eax	# *format_chars.82_166, D.12669
	movsbl	%al, %edx	# D.12669, D.12668
	movq	-552(%rbp), %rax	# fki, tmp585
	movq	24(%rax), %rax	# fki_109->flag_chars, D.12672
	movl	%edx, %esi	# D.12668,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	jne	.L213	#,
.L212:
	.loc 1 1744 0
	movq	-552(%rbp), %rax	# fki, tmp586
	movl	60(%rax), %eax	# fki_109->width_char, D.12668
	testl	%eax, %eax	# D.12668
	je	.L214	#,
	.loc 1 1746 0
	movq	-552(%rbp), %rax	# fki, tmp587
	movq	80(%rax), %rax	# fki_109->width_type, D.12674
	testq	%rax, %rax	# D.12674
	je	.L215	#,
	.loc 1 1746 0 is_stmt 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.83
	movzbl	(%rax), %eax	# *format_chars.83_195, D.12669
	cmpb	$42, %al	#, D.12669
	jne	.L215	#,
	.loc 1 1748 0 is_stmt 1
	leaq	-272(%rbp), %rax	#, tmp588
	movq	%rax, %rdi	# tmp588,
	call	strlen	#
	movl	%eax, -692(%rbp)	# D.12667, i
	.loc 1 1749 0
	movl	-692(%rbp), %eax	# i, i.84
	leal	1(%rax), %edx	#, tmp589
	movl	%edx, -692(%rbp)	# tmp589, i
	movq	-552(%rbp), %rdx	# fki, tmp590
	movl	60(%rdx), %edx	# fki_109->width_char, D.12668
	cltq
	movb	%dl, -272(%rbp,%rax)	# D.12669, flag_chars
	.loc 1 1750 0
	movl	-692(%rbp), %eax	# i, tmp593
	cltq
	movb	$0, -272(%rbp,%rax)	#, flag_chars
	.loc 1 1753 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.85
	addq	$1, %rax	#, format_chars.86
	movq	%rax, -736(%rbp)	# format_chars.86, format_chars
	.loc 1 1754 0
	movq	-752(%rbp), %rax	# params, params.87
	testq	%rax, %rax	# params.87
	jne	.L216	#,
	.loc 1 1756 0
	movq	-712(%rbp), %rax	# status, tmp594
	movl	$.LC179, %esi	#,
	movq	%rax, %rdi	# tmp594,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1757 0
	jmp	.L196	#
.L216:
	.loc 1 1759 0
	cmpl	$0, -696(%rbp)	#, has_operand_number
	je	.L217	#,
.LBB20:
	.loc 1 1762 0
	cmpl	$1, -696(%rbp)	#, has_operand_number
	sete	%al	#, D.12675
	movzbl	%al, %edx	# D.12675, D.12668
	movq	-552(%rbp), %r8	# fki, tmp595
	leaq	-752(%rbp), %rdi	#, tmp596
	movq	-560(%rbp), %rcx	# first_fillin_param, tmp597
	leaq	-736(%rbp), %rsi	#, tmp598
	movq	-712(%rbp), %rax	# status, tmp599
	movq	%r8, %r9	# tmp595,
	movq	%rdi, %r8	# tmp596,
	movq	%rax, %rdi	# tmp599,
	call	maybe_read_dollar_number	#
	movl	%eax, -648(%rbp)	# tmp600, opnum
	.loc 1 1766 0
	cmpl	$-1, -648(%rbp)	#, opnum
	jne	.L218	#,
	.loc 1 1767 0
	jmp	.L196	#
.L218:
	.loc 1 1768 0
	cmpl	$0, -648(%rbp)	#, opnum
	jle	.L219	#,
	.loc 1 1770 0
	movl	$1, -696(%rbp)	#, has_operand_number
	.loc 1 1771 0
	movl	-648(%rbp), %eax	# opnum, tmp601
	movslq	%eax, %rdx	# tmp601, D.12667
	movq	-728(%rbp), %rax	# info, tmp602
	movq	16(%rax), %rax	# info_107(D)->first_arg_num, D.12667
	addq	%rdx, %rax	# D.12667, D.12667
	subq	$1, %rax	#, tmp603
	movq	%rax, 16(%rbp)	# tmp603, arg_num
	jmp	.L217	#
.L219:
	.loc 1 1774 0
	movl	$0, -696(%rbp)	#, has_operand_number
.L217:
.LBE20:
	.loc 1 1776 0
	movq	-728(%rbp), %rax	# info, tmp604
	movq	16(%rax), %rax	# info_107(D)->first_arg_num, D.12667
	testq	%rax, %rax	# D.12667
	je	.L220	#,
	.loc 1 1778 0
	movq	-752(%rbp), %rax	# params, params.88
	movq	32(%rax), %rax	# params.88_216->list.value, tmp605
	movq	%rax, -520(%rbp)	# tmp605, cur_param
	.loc 1 1779 0
	cmpl	$0, -696(%rbp)	#, has_operand_number
	jg	.L221	#,
	.loc 1 1781 0
	movq	-752(%rbp), %rax	# params, params.89
	movq	(%rax), %rax	# params.89_218->common.chain, params.90
	movq	%rax, -752(%rbp)	# params.90, params
	.loc 1 1782 0
	addq	$1, 16(%rbp)	#, arg_num
.L221:
	.loc 1 1784 0
	movq	-552(%rbp), %rax	# fki, tmp606
	movq	80(%rax), %rax	# fki_109->width_type, D.12674
	movq	(%rax), %rax	# *_221, D.12676
	movq	%rax, -464(%rbp)	# D.12676, width_wanted_type.wanted_type
	.loc 1 1785 0
	movq	$0, -456(%rbp)	#, width_wanted_type.wanted_type_name
	.loc 1 1786 0
	movl	$0, -448(%rbp)	#, width_wanted_type.pointer_count
	.loc 1 1787 0
	movl	$0, -444(%rbp)	#, width_wanted_type.char_lenient_flag
	.loc 1 1788 0
	movl	$0, -440(%rbp)	#, width_wanted_type.writing_in_flag
	.loc 1 1789 0
	movl	$0, -436(%rbp)	#, width_wanted_type.reading_from_flag
	.loc 1 1790 0
	movq	$.LC33, -432(%rbp)	#, width_wanted_type.name
	.loc 1 1791 0
	movq	-520(%rbp), %rax	# cur_param, tmp607
	movq	%rax, -424(%rbp)	# tmp607, width_wanted_type.param
	.loc 1 1792 0
	movq	16(%rbp), %rax	# arg_num, tmp608
	movl	%eax, -416(%rbp)	# D.12668, width_wanted_type.arg_num
	.loc 1 1793 0
	movq	$0, -408(%rbp)	#, width_wanted_type.next
	.loc 1 1794 0
	cmpq	$0, -592(%rbp)	#, last_wanted_type
	je	.L222	#,
	.loc 1 1795 0
	movq	-592(%rbp), %rax	# last_wanted_type, tmp609
	leaq	-464(%rbp), %rdx	#, tmp610
	movq	%rdx, 56(%rax)	# tmp610, last_wanted_type_122->next
.L222:
	.loc 1 1796 0
	cmpq	$0, -600(%rbp)	#, first_wanted_type
	jne	.L223	#,
	.loc 1 1797 0
	leaq	-464(%rbp), %rax	#, tmp611
	movq	%rax, -600(%rbp)	# tmp611, first_wanted_type
.L223:
	.loc 1 1798 0
	leaq	-464(%rbp), %rax	#, tmp612
	movq	%rax, -592(%rbp)	# tmp612, last_wanted_type
	.loc 1 1776 0
	jmp	.L214	#
.L220:
	.loc 1 1776 0 is_stmt 0 discriminator 1
	jmp	.L214	#
.L215:
.LBB21:
	.loc 1 1805 0 is_stmt 1
	movl	$0, -668(%rbp)	#, non_zero_width_char
	.loc 1 1806 0
	movl	$0, -664(%rbp)	#, found_width
	.loc 1 1807 0
	jmp	.L224	#
.L226:
	.loc 1 1809 0
	movl	$1, -664(%rbp)	#, found_width
	.loc 1 1810 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.91
	movzbl	(%rax), %eax	# *format_chars.91_236, D.12669
	cmpb	$48, %al	#, D.12669
	je	.L225	#,
	.loc 1 1811 0
	movl	$1, -668(%rbp)	#, non_zero_width_char
.L225:
	.loc 1 1812 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.92
	addq	$1, %rax	#, format_chars.93
	movq	%rax, -736(%rbp)	# format_chars.93, format_chars
.L224:
	.loc 1 1807 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.94
	movzbl	(%rax), %eax	# *format_chars.94_228, D.12669
	movsbl	%al, %eax	# D.12669, D.12668
	movzbl	%al, %eax	# D.12668, D.12668
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12677
	movzwl	%ax, %eax	# D.12677, D.12668
	andl	$4, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	jne	.L226	#,
	.loc 1 1814 0
	cmpl	$0, -664(%rbp)	#, found_width
	je	.L227	#,
	.loc 1 1814 0 is_stmt 0 discriminator 1
	cmpl	$0, -668(%rbp)	#, non_zero_width_char
	jne	.L227	#,
	.loc 1 1815 0 is_stmt 1 discriminator 1
	movq	-552(%rbp), %rax	# fki, tmp614
	movl	56(%rax), %eax	# fki_109->flags, D.12668
	andl	$32, %eax	#, D.12668
	.loc 1 1814 0 discriminator 1
	testl	%eax, %eax	# D.12668
	je	.L227	#,
	.loc 1 1816 0
	movq	-552(%rbp), %rax	# fki, tmp615
	movq	(%rax), %rdx	# fki_109->name, D.12672
	movq	-712(%rbp), %rax	# status, tmp616
	movl	$.LC180, %esi	#,
	movq	%rax, %rdi	# tmp616,
	movl	$0, %eax	#,
	call	status_warning	#
.L227:
	.loc 1 1818 0
	cmpl	$0, -664(%rbp)	#, found_width
	je	.L214	#,
	.loc 1 1820 0
	leaq	-272(%rbp), %rax	#, tmp617
	movq	%rax, %rdi	# tmp617,
	call	strlen	#
	movl	%eax, -692(%rbp)	# D.12667, i
	.loc 1 1821 0
	movl	-692(%rbp), %eax	# i, i.95
	leal	1(%rax), %edx	#, tmp618
	movl	%edx, -692(%rbp)	# tmp618, i
	movq	-552(%rbp), %rdx	# fki, tmp619
	movl	60(%rdx), %edx	# fki_109->width_char, D.12668
	cltq
	movb	%dl, -272(%rbp,%rax)	# D.12669, flag_chars
	.loc 1 1822 0
	movl	-692(%rbp), %eax	# i, tmp622
	cltq
	movb	$0, -272(%rbp,%rax)	#, flag_chars
.L214:
.LBE21:
	.loc 1 1828 0
	movq	-552(%rbp), %rax	# fki, tmp623
	movl	64(%rax), %eax	# fki_109->left_precision_char, D.12668
	testl	%eax, %eax	# D.12668
	je	.L228	#,
	.loc 1 1828 0 is_stmt 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.96
	movzbl	(%rax), %eax	# *format_chars.96_251, D.12669
	cmpb	$35, %al	#, D.12669
	jne	.L228	#,
	.loc 1 1830 0 is_stmt 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.97
	addq	$1, %rax	#, format_chars.98
	movq	%rax, -736(%rbp)	# format_chars.98, format_chars
	.loc 1 1831 0
	leaq	-272(%rbp), %rax	#, tmp624
	movq	%rax, %rdi	# tmp624,
	call	strlen	#
	movl	%eax, -692(%rbp)	# D.12667, i
	.loc 1 1832 0
	movl	-692(%rbp), %eax	# i, i.99
	leal	1(%rax), %edx	#, tmp625
	movl	%edx, -692(%rbp)	# tmp625, i
	movq	-552(%rbp), %rdx	# fki, tmp626
	movl	64(%rdx), %edx	# fki_109->left_precision_char, D.12668
	cltq
	movb	%dl, -272(%rbp,%rax)	# D.12669, flag_chars
	.loc 1 1833 0
	movl	-692(%rbp), %eax	# i, tmp629
	cltq
	movb	$0, -272(%rbp,%rax)	#, flag_chars
	.loc 1 1834 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.100
	movzbl	(%rax), %eax	# *format_chars.100_261, D.12669
	movsbl	%al, %eax	# D.12669, D.12668
	movzbl	%al, %eax	# D.12668, D.12668
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12677
	movzwl	%ax, %eax	# D.12677, D.12668
	andl	$4, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	jne	.L229	#,
	.loc 1 1835 0
	movq	-552(%rbp), %rax	# fki, tmp631
	movq	(%rax), %rdx	# fki_109->name, D.12672
	movq	-712(%rbp), %rax	# status, tmp632
	movl	$.LC181, %esi	#,
	movq	%rax, %rdi	# tmp632,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1837 0
	jmp	.L230	#
.L229:
	jmp	.L230	#
.L231:
	.loc 1 1838 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.101
	addq	$1, %rax	#, format_chars.102
	movq	%rax, -736(%rbp)	# format_chars.102, format_chars
.L230:
	.loc 1 1837 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.103
	movzbl	(%rax), %eax	# *format_chars.103_269, D.12669
	movsbl	%al, %eax	# D.12669, D.12668
	movzbl	%al, %eax	# D.12668, D.12668
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12677
	movzwl	%ax, %eax	# D.12677, D.12668
	andl	$4, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	jne	.L231	#,
.L228:
	.loc 1 1842 0
	movq	-552(%rbp), %rax	# fki, tmp634
	movl	68(%rax), %eax	# fki_109->precision_char, D.12668
	testl	%eax, %eax	# D.12668
	je	.L232	#,
	.loc 1 1842 0 is_stmt 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.104
	movzbl	(%rax), %eax	# *format_chars.104_279, D.12669
	cmpb	$46, %al	#, D.12669
	jne	.L232	#,
	.loc 1 1844 0 is_stmt 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.105
	addq	$1, %rax	#, format_chars.106
	movq	%rax, -736(%rbp)	# format_chars.106, format_chars
	.loc 1 1845 0
	leaq	-272(%rbp), %rax	#, tmp635
	movq	%rax, %rdi	# tmp635,
	call	strlen	#
	movl	%eax, -692(%rbp)	# D.12667, i
	.loc 1 1846 0
	movl	-692(%rbp), %eax	# i, i.107
	leal	1(%rax), %edx	#, tmp636
	movl	%edx, -692(%rbp)	# tmp636, i
	movq	-552(%rbp), %rdx	# fki, tmp637
	movl	68(%rdx), %edx	# fki_109->precision_char, D.12668
	cltq
	movb	%dl, -272(%rbp,%rax)	# D.12669, flag_chars
	.loc 1 1847 0
	movl	-692(%rbp), %eax	# i, tmp640
	cltq
	movb	$0, -272(%rbp,%rax)	#, flag_chars
	.loc 1 1848 0
	movq	-552(%rbp), %rax	# fki, tmp641
	movq	88(%rax), %rax	# fki_109->precision_type, D.12674
	testq	%rax, %rax	# D.12674
	je	.L233	#,
	.loc 1 1848 0 is_stmt 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.108
	movzbl	(%rax), %eax	# *format_chars.108_290, D.12669
	cmpb	$42, %al	#, D.12669
	jne	.L233	#,
	.loc 1 1852 0 is_stmt 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.109
	addq	$1, %rax	#, format_chars.110
	movq	%rax, -736(%rbp)	# format_chars.110, format_chars
	.loc 1 1853 0
	cmpl	$0, -696(%rbp)	#, has_operand_number
	je	.L234	#,
.LBB22:
	.loc 1 1856 0
	cmpl	$1, -696(%rbp)	#, has_operand_number
	sete	%al	#, D.12675
	movzbl	%al, %edx	# D.12675, D.12668
	movq	-552(%rbp), %r8	# fki, tmp642
	leaq	-752(%rbp), %rdi	#, tmp643
	movq	-560(%rbp), %rcx	# first_fillin_param, tmp644
	leaq	-736(%rbp), %rsi	#, tmp645
	movq	-712(%rbp), %rax	# status, tmp646
	movq	%r8, %r9	# tmp642,
	movq	%rdi, %r8	# tmp643,
	movq	%rax, %rdi	# tmp646,
	call	maybe_read_dollar_number	#
	movl	%eax, -644(%rbp)	# tmp647, opnum
	.loc 1 1860 0
	cmpl	$-1, -644(%rbp)	#, opnum
	jne	.L235	#,
	.loc 1 1861 0
	jmp	.L196	#
.L235:
	.loc 1 1862 0
	cmpl	$0, -644(%rbp)	#, opnum
	jle	.L236	#,
	.loc 1 1864 0
	movl	$1, -696(%rbp)	#, has_operand_number
	.loc 1 1865 0
	movl	-644(%rbp), %eax	# opnum, tmp648
	movslq	%eax, %rdx	# tmp648, D.12667
	movq	-728(%rbp), %rax	# info, tmp649
	movq	16(%rax), %rax	# info_107(D)->first_arg_num, D.12667
	addq	%rdx, %rax	# D.12667, D.12667
	subq	$1, %rax	#, tmp650
	movq	%rax, 16(%rbp)	# tmp650, arg_num
	jmp	.L234	#
.L236:
	.loc 1 1868 0
	movl	$0, -696(%rbp)	#, has_operand_number
.L234:
.LBE22:
	.loc 1 1870 0
	movq	-728(%rbp), %rax	# info, tmp651
	movq	16(%rax), %rax	# info_107(D)->first_arg_num, D.12667
	testq	%rax, %rax	# D.12667
	je	.L237	#,
	.loc 1 1872 0
	movq	-752(%rbp), %rax	# params, params.111
	testq	%rax, %rax	# params.111
	jne	.L238	#,
	.loc 1 1874 0
	movq	-712(%rbp), %rax	# status, tmp652
	movl	$.LC179, %esi	#,
	movq	%rax, %rdi	# tmp652,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1875 0
	jmp	.L196	#
.L238:
	.loc 1 1877 0
	movq	-752(%rbp), %rax	# params, params.112
	movq	32(%rax), %rax	# params.112_305->list.value, tmp653
	movq	%rax, -520(%rbp)	# tmp653, cur_param
	.loc 1 1878 0
	cmpl	$0, -696(%rbp)	#, has_operand_number
	jg	.L239	#,
	.loc 1 1880 0
	movq	-752(%rbp), %rax	# params, params.113
	movq	(%rax), %rax	# params.113_307->common.chain, params.114
	movq	%rax, -752(%rbp)	# params.114, params
	.loc 1 1881 0
	addq	$1, 16(%rbp)	#, arg_num
.L239:
	.loc 1 1883 0
	movq	-552(%rbp), %rax	# fki, tmp654
	movq	88(%rax), %rax	# fki_109->precision_type, D.12674
	movq	(%rax), %rax	# *_310, D.12676
	movq	%rax, -400(%rbp)	# D.12676, precision_wanted_type.wanted_type
	.loc 1 1884 0
	movq	$0, -392(%rbp)	#, precision_wanted_type.wanted_type_name
	.loc 1 1885 0
	movl	$0, -384(%rbp)	#, precision_wanted_type.pointer_count
	.loc 1 1886 0
	movl	$0, -380(%rbp)	#, precision_wanted_type.char_lenient_flag
	.loc 1 1887 0
	movl	$0, -376(%rbp)	#, precision_wanted_type.writing_in_flag
	.loc 1 1888 0
	movl	$0, -372(%rbp)	#, precision_wanted_type.reading_from_flag
	.loc 1 1889 0
	movq	$.LC182, -368(%rbp)	#, precision_wanted_type.name
	.loc 1 1890 0
	movq	-520(%rbp), %rax	# cur_param, tmp655
	movq	%rax, -360(%rbp)	# tmp655, precision_wanted_type.param
	.loc 1 1891 0
	movq	16(%rbp), %rax	# arg_num, tmp656
	movl	%eax, -352(%rbp)	# D.12668, precision_wanted_type.arg_num
	.loc 1 1892 0
	movq	$0, -344(%rbp)	#, precision_wanted_type.next
	.loc 1 1893 0
	cmpq	$0, -592(%rbp)	#, last_wanted_type
	je	.L240	#,
	.loc 1 1894 0
	movq	-592(%rbp), %rax	# last_wanted_type, tmp657
	leaq	-400(%rbp), %rdx	#, tmp658
	movq	%rdx, 56(%rax)	# tmp658, last_wanted_type_48->next
.L240:
	.loc 1 1895 0
	cmpq	$0, -600(%rbp)	#, first_wanted_type
	jne	.L241	#,
	.loc 1 1896 0
	leaq	-400(%rbp), %rax	#, tmp659
	movq	%rax, -600(%rbp)	# tmp659, first_wanted_type
.L241:
	.loc 1 1897 0
	leaq	-400(%rbp), %rax	#, tmp660
	movq	%rax, -592(%rbp)	# tmp660, last_wanted_type
	.loc 1 1870 0
	jmp	.L232	#
.L237:
	.loc 1 1870 0 is_stmt 0 discriminator 1
	jmp	.L232	#
.L233:
	.loc 1 1902 0 is_stmt 1
	movq	-552(%rbp), %rax	# fki, tmp661
	movl	56(%rax), %eax	# fki_109->flags, D.12668
	andl	$64, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	jne	.L242	#,
	.loc 1 1903 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.115
	movzbl	(%rax), %eax	# *format_chars.115_317, D.12669
	movsbl	%al, %eax	# D.12669, D.12668
	movzbl	%al, %eax	# D.12668, D.12668
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12677
	movzwl	%ax, %eax	# D.12677, D.12668
	andl	$4, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	jne	.L242	#,
	.loc 1 1904 0
	movq	-552(%rbp), %rax	# fki, tmp663
	movq	(%rax), %rdx	# fki_109->name, D.12672
	movq	-712(%rbp), %rax	# status, tmp664
	movl	$.LC183, %esi	#,
	movq	%rax, %rdi	# tmp664,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1906 0
	jmp	.L243	#
.L242:
	jmp	.L243	#
.L244:
	.loc 1 1907 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.116
	addq	$1, %rax	#, format_chars.117
	movq	%rax, -736(%rbp)	# format_chars.117, format_chars
.L243:
	.loc 1 1906 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.118
	movzbl	(%rax), %eax	# *format_chars.118_325, D.12669
	movsbl	%al, %eax	# D.12669, D.12668
	movzbl	%al, %eax	# D.12668, D.12668
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12677
	movzwl	%ax, %eax	# D.12677, D.12668
	andl	$4, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	jne	.L244	#,
.L232:
	.loc 1 1912 0
	movq	-552(%rbp), %rax	# fki, tmp666
	movq	8(%rax), %rax	# fki_109->length_char_specs, tmp667
	movq	%rax, -584(%rbp)	# tmp667, fli
	.loc 1 1913 0
	movq	$0, -624(%rbp)	#, length_chars
	.loc 1 1914 0
	movl	$0, -684(%rbp)	#, length_chars_val
	.loc 1 1915 0
	movl	$0, -680(%rbp)	#, length_chars_std
	.loc 1 1916 0
	cmpq	$0, -584(%rbp)	#, fli
	je	.L245	#,
	.loc 1 1918 0
	jmp	.L246	#
.L248:
	.loc 1 1919 0
	addq	$32, -584(%rbp)	#, fli
.L246:
	.loc 1 1918 0 discriminator 1
	movq	-584(%rbp), %rax	# fli, tmp668
	movq	(%rax), %rax	# fli_51->name, D.12672
	testq	%rax, %rax	# D.12672
	je	.L247	#,
	.loc 1 1918 0 is_stmt 0 discriminator 2
	movq	-584(%rbp), %rax	# fli, tmp669
	movq	(%rax), %rax	# fli_51->name, D.12672
	movzbl	(%rax), %edx	# *_339, D.12669
	movq	-736(%rbp), %rax	# format_chars, format_chars.119
	movzbl	(%rax), %eax	# *format_chars.119_341, D.12669
	cmpb	%al, %dl	# D.12669, D.12669
	jne	.L248	#,
.L247:
	.loc 1 1920 0 is_stmt 1
	movq	-584(%rbp), %rax	# fli, tmp670
	movq	(%rax), %rax	# fli_51->name, D.12672
	testq	%rax, %rax	# D.12672
	je	.L249	#,
	.loc 1 1922 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.120
	addq	$1, %rax	#, format_chars.121
	movq	%rax, -736(%rbp)	# format_chars.121, format_chars
	.loc 1 1923 0
	movq	-584(%rbp), %rax	# fli, tmp671
	movq	16(%rax), %rax	# fli_51->double_name, D.12672
	testq	%rax, %rax	# D.12672
	je	.L250	#,
	.loc 1 1923 0 is_stmt 0 discriminator 1
	movq	-584(%rbp), %rax	# fli, tmp672
	movq	(%rax), %rax	# fli_51->name, D.12672
	movzbl	(%rax), %edx	# *_348, D.12669
	movq	-736(%rbp), %rax	# format_chars, format_chars.122
	movzbl	(%rax), %eax	# *format_chars.122_350, D.12669
	cmpb	%al, %dl	# D.12669, D.12669
	jne	.L250	#,
	.loc 1 1925 0 is_stmt 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.123
	addq	$1, %rax	#, format_chars.124
	movq	%rax, -736(%rbp)	# format_chars.124, format_chars
	.loc 1 1926 0
	movq	-584(%rbp), %rax	# fli, tmp673
	movq	16(%rax), %rax	# fli_51->double_name, tmp674
	movq	%rax, -624(%rbp)	# tmp674, length_chars
	.loc 1 1927 0
	movq	-584(%rbp), %rax	# fli, tmp675
	movl	24(%rax), %eax	# fli_51->double_index, tmp676
	movl	%eax, -684(%rbp)	# tmp676, length_chars_val
	.loc 1 1928 0
	movq	-584(%rbp), %rax	# fli, tmp677
	movl	28(%rax), %eax	# fli_51->double_std, tmp678
	movl	%eax, -680(%rbp)	# tmp678, length_chars_std
	jmp	.L251	#
.L250:
	.loc 1 1932 0
	movq	-584(%rbp), %rax	# fli, tmp679
	movq	(%rax), %rax	# fli_51->name, tmp680
	movq	%rax, -624(%rbp)	# tmp680, length_chars
	.loc 1 1933 0
	movq	-584(%rbp), %rax	# fli, tmp681
	movl	8(%rax), %eax	# fli_51->index, tmp682
	movl	%eax, -684(%rbp)	# tmp682, length_chars_val
	.loc 1 1934 0
	movq	-584(%rbp), %rax	# fli, tmp683
	movl	12(%rax), %eax	# fli_51->std, tmp684
	movl	%eax, -680(%rbp)	# tmp684, length_chars_std
.L251:
	.loc 1 1936 0
	leaq	-272(%rbp), %rax	#, tmp685
	movq	%rax, %rdi	# tmp685,
	call	strlen	#
	movl	%eax, -692(%rbp)	# D.12667, i
	.loc 1 1937 0
	movl	-692(%rbp), %eax	# i, i.125
	leal	1(%rax), %edx	#, tmp686
	movl	%edx, -692(%rbp)	# tmp686, i
	movq	-552(%rbp), %rdx	# fki, tmp687
	movl	76(%rdx), %edx	# fki_109->length_code_char, D.12668
	cltq
	movb	%dl, -272(%rbp,%rax)	# D.12669, flag_chars
	.loc 1 1938 0
	movl	-692(%rbp), %eax	# i, tmp690
	cltq
	movb	$0, -272(%rbp,%rax)	#, flag_chars
.L249:
	.loc 1 1940 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.126
	testl	%eax, %eax	# pedantic.126
	je	.L245	#,
	.loc 1 1943 0
	cmpl	$2, -680(%rbp)	#, length_chars_std
	jne	.L252	#,
	.loc 1 1943 0 is_stmt 0 discriminator 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.129
	testl	%eax, %eax	# warn_long_long.129
	je	.L253	#,
	movl	$3, %eax	#, iftmp.128
	jmp	.L254	#
.L253:
	.loc 1 1943 0 discriminator 2
	movl	$0, %eax	#, iftmp.128
.L254:
	.loc 1 1943 0 discriminator 1
	movl	%eax, %edx	# iftmp.128, iftmp.127
	jmp	.L255	#
.L252:
	.loc 1 1943 0 discriminator 2
	movl	-680(%rbp), %edx	# length_chars_std, iftmp.127
.L255:
	.loc 1 1943 0 discriminator 3
	movl	c_language(%rip), %eax	# c_language, c_language.131
	cmpl	$1, %eax	#, c_language.131
	je	.L256	#,
	.loc 1 1943 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.133
	testl	%eax, %eax	# flag_isoc99.133
	jne	.L257	#,
	movl	flag_isoc94(%rip), %eax	# flag_isoc94, flag_isoc94.134
	testl	%eax, %eax	# flag_isoc94.134
	setne	%al	#, D.12675
	movzbl	%al, %eax	# D.12675, iftmp.132
	jmp	.L259	#
.L257:
	.loc 1 1943 0 discriminator 2
	movl	$3, %eax	#, iftmp.132
	jmp	.L259	#
.L256:
	movl	$1, %eax	#, iftmp.130
.L259:
	.loc 1 1943 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.130, iftmp.127
	jle	.L245	#,
	.loc 1 1944 0 is_stmt 1
	movq	-552(%rbp), %rax	# fki, tmp691
	movq	(%rax), %rcx	# fki_109->name, D.12672
	.loc 1 1945 0
	movl	c_language(%rip), %eax	# c_language, c_language.136
	.loc 1 1944 0
	cmpl	$1, %eax	#, c_language.136
	je	.L260	#,
	.loc 1 1945 0
	cmpl	$4, -680(%rbp)	#, length_chars_std
	jne	.L261	#,
	.loc 1 1945 0 is_stmt 0 discriminator 1
	movl	$.LC160, %eax	#, iftmp.137
	jmp	.L263	#
.L261:
	.loc 1 1945 0 discriminator 2
	movl	$.LC184, %eax	#, iftmp.137
	jmp	.L263	#
.L260:
	.loc 1 1944 0 is_stmt 1 discriminator 1
	movl	$.LC159, %eax	#, iftmp.135
.L263:
	.loc 1 1944 0 is_stmt 0 discriminator 2
	movq	-624(%rbp), %rdx	# length_chars, tmp692
	movq	-712(%rbp), %rdi	# status, tmp693
	movq	%rcx, %r8	# D.12672,
	movq	%rdx, %rcx	# tmp692,
	movq	%rax, %rdx	# iftmp.135,
	movl	$.LC185, %esi	#,
	movl	$0, %eax	#,
	call	status_warning	#
.L245:
	.loc 1 1951 0 is_stmt 1
	movq	-552(%rbp), %rax	# fki, tmp694
	movq	32(%rax), %rax	# fki_109->modifier_chars, D.12672
	testq	%rax, %rax	# D.12672
	je	.L264	#,
	.loc 1 1953 0
	jmp	.L265	#
.L268:
	.loc 1 1956 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.138
	movzbl	(%rax), %eax	# *format_chars.138_394, D.12669
	movsbl	%al, %edx	# D.12669, D.12668
	leaq	-272(%rbp), %rax	#, tmp695
	movl	%edx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp695,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L266	#,
.LBB23:
	.loc 1 1959 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.139
	movzbl	(%rax), %eax	# *format_chars.139_398, D.12669
	.loc 1 1958 0
	movsbl	%al, %ecx	# D.12669, D.12668
	movq	-544(%rbp), %rax	# flag_specs, tmp696
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp696,
	call	get_flag_spec	#
	movq	%rax, -512(%rbp)	# tmp697, s
	.loc 1 1960 0
	movq	-512(%rbp), %rax	# s, tmp698
	movq	16(%rax), %rdx	# s_401->name, D.12672
	movq	-712(%rbp), %rax	# status, tmp699
	movl	$.LC177, %esi	#,
	movq	%rax, %rdi	# tmp699,
	movl	$0, %eax	#,
	call	status_warning	#
.LBE23:
	jmp	.L267	#
.L266:
	.loc 1 1964 0
	leaq	-272(%rbp), %rax	#, tmp700
	movq	%rax, %rdi	# tmp700,
	call	strlen	#
	movl	%eax, -692(%rbp)	# D.12667, i
	.loc 1 1965 0
	movl	-692(%rbp), %eax	# i, i.140
	leal	1(%rax), %edx	#, tmp701
	movl	%edx, -692(%rbp)	# tmp701, i
	movq	-736(%rbp), %rdx	# format_chars, format_chars.141
	movzbl	(%rdx), %edx	# *format_chars.141_407, D.12669
	cltq
	movb	%dl, -272(%rbp,%rax)	# D.12669, flag_chars
	.loc 1 1966 0
	movl	-692(%rbp), %eax	# i, tmp704
	cltq
	movb	$0, -272(%rbp,%rax)	#, flag_chars
.L267:
	.loc 1 1968 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.142
	addq	$1, %rax	#, format_chars.143
	movq	%rax, -736(%rbp)	# format_chars.143, format_chars
.L265:
	.loc 1 1953 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.144
	movzbl	(%rax), %eax	# *format_chars.144_387, D.12669
	testb	%al, %al	# D.12669
	je	.L264	#,
	.loc 1 1954 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.145
	movzbl	(%rax), %eax	# *format_chars.145_389, D.12669
	movsbl	%al, %edx	# D.12669, D.12668
	movq	-552(%rbp), %rax	# fki, tmp705
	movq	32(%rax), %rax	# fki_109->modifier_chars, D.12672
	movl	%edx, %esi	# D.12668,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	jne	.L268	#,
.L264:
	.loc 1 1973 0
	movq	-552(%rbp), %rax	# fki, tmp706
	movl	56(%rax), %eax	# fki_109->flags, D.12668
	andl	$2, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	je	.L269	#,
	.loc 1 1975 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.146
	movzbl	(%rax), %eax	# *format_chars.146_413, D.12669
	cmpb	$97, %al	#, D.12669
	jne	.L269	#,
	.loc 1 1975 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.147
	testl	%eax, %eax	# flag_isoc99.147
	jne	.L269	#,
	.loc 1 1977 0 is_stmt 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.148
	addq	$1, %rax	#, D.12672
	movzbl	(%rax), %eax	# *_417, D.12669
	cmpb	$115, %al	#, D.12669
	je	.L270	#,
	.loc 1 1977 0 is_stmt 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.149
	addq	$1, %rax	#, D.12672
	movzbl	(%rax), %eax	# *_420, D.12669
	cmpb	$83, %al	#, D.12669
	je	.L270	#,
	.loc 1 1978 0 is_stmt 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.150
	addq	$1, %rax	#, D.12672
	movzbl	(%rax), %eax	# *_423, D.12669
	cmpb	$91, %al	#, D.12669
	jne	.L269	#,
.L270:
	.loc 1 1981 0
	leaq	-272(%rbp), %rax	#, tmp707
	movq	%rax, %rdi	# tmp707,
	call	strlen	#
	movl	%eax, -692(%rbp)	# D.12667, i
	.loc 1 1982 0
	movl	-692(%rbp), %eax	# i, i.151
	leal	1(%rax), %edx	#, tmp708
	movl	%edx, -692(%rbp)	# tmp708, i
	cltq
	movb	$97, -272(%rbp,%rax)	#, flag_chars
	.loc 1 1983 0
	movl	-692(%rbp), %eax	# i, tmp711
	cltq
	movb	$0, -272(%rbp,%rax)	#, flag_chars
	.loc 1 1984 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.152
	addq	$1, %rax	#, format_chars.153
	movq	%rax, -736(%rbp)	# format_chars.153, format_chars
.L269:
	.loc 1 1989 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.154
	movzbl	(%rax), %eax	# *format_chars.154_431, D.12669
	movsbl	%al, %eax	# D.12669, tmp712
	movl	%eax, -640(%rbp)	# tmp712, format_char
	.loc 1 1990 0
	cmpl	$0, -640(%rbp)	#, format_char
	je	.L271	#,
	.loc 1 1991 0
	movq	-552(%rbp), %rax	# fki, tmp713
	movl	56(%rax), %eax	# fki_109->flags, D.12668
	andl	$4, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	jne	.L272	#,
	.loc 1 1992 0
	cmpl	$37, -640(%rbp)	#, format_char
	jne	.L272	#,
.L271:
	.loc 1 1994 0
	movq	-712(%rbp), %rax	# status, tmp714
	movl	$.LC186, %esi	#,
	movq	%rax, %rdi	# tmp714,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 1995 0
	jmp	.L407	#
.L272:
	.loc 1 1997 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.155
	addq	$1, %rax	#, format_chars.156
	movq	%rax, -736(%rbp)	# format_chars.156, format_chars
	.loc 1 1998 0
	movq	-552(%rbp), %rax	# fki, tmp715
	movq	16(%rax), %rax	# fki_109->conversion_specs, tmp716
	movq	%rax, -576(%rbp)	# tmp716, fci
	.loc 1 1999 0
	jmp	.L273	#
.L275:
	.loc 1 2001 0
	addq	$248, -576(%rbp)	#, fci
.L273:
	.loc 1 1999 0 discriminator 1
	movq	-576(%rbp), %rax	# fci, tmp717
	movq	(%rax), %rax	# fci_52->format_chars, D.12672
	testq	%rax, %rax	# D.12672
	je	.L274	#,
	.loc 1 2000 0
	movq	-576(%rbp), %rax	# fci, tmp718
	movq	(%rax), %rax	# fci_52->format_chars, D.12672
	movl	-640(%rbp), %edx	# format_char, tmp719
	movl	%edx, %esi	# tmp719,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L275	#,
.L274:
	.loc 1 2002 0
	movq	-576(%rbp), %rax	# fci, tmp720
	movq	(%rax), %rax	# fci_52->format_chars, D.12672
	testq	%rax, %rax	# D.12672
	jne	.L276	#,
	.loc 1 2004 0
	movl	-640(%rbp), %eax	# format_char, tmp721
	movzbl	%al, %eax	# tmp721, D.12668
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.12677
	movzwl	%ax, %eax	# D.12677, D.12668
	andl	$172, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	je	.L277	#,
	.loc 1 2005 0
	movl	-640(%rbp), %edx	# format_char, tmp723
	movq	-712(%rbp), %rax	# status, tmp724
	movl	$.LC187, %esi	#,
	movq	%rax, %rdi	# tmp724,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 2010 0
	jmp	.L407	#
.L277:
	.loc 1 2008 0
	movl	-640(%rbp), %edx	# format_char, tmp725
	movq	-712(%rbp), %rax	# status, tmp726
	movl	$.LC188, %esi	#,
	movq	%rax, %rdi	# tmp726,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 2010 0
	jmp	.L407	#
.L276:
	.loc 1 2012 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.157
	testl	%eax, %eax	# pedantic.157
	je	.L279	#,
	.loc 1 2014 0
	movq	-576(%rbp), %rax	# fci, tmp727
	movl	12(%rax), %eax	# fci_52->std, D.12678
	cmpl	$2, %eax	#, D.12678
	jne	.L280	#,
	.loc 1 2014 0 is_stmt 0 discriminator 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.160
	testl	%eax, %eax	# warn_long_long.160
	je	.L281	#,
	movl	$3, %eax	#, iftmp.159
	jmp	.L282	#
.L281:
	.loc 1 2014 0 discriminator 2
	movl	$0, %eax	#, iftmp.159
.L282:
	.loc 1 2014 0 discriminator 4
	movl	%eax, %edx	# iftmp.159, iftmp.158
	jmp	.L283	#
.L280:
	.loc 1 2014 0 discriminator 2
	movq	-576(%rbp), %rax	# fci, tmp728
	movl	12(%rax), %eax	# fci_52->std, D.12678
	movl	%eax, %edx	# D.12678, iftmp.158
.L283:
	.loc 1 2014 0 discriminator 3
	movl	c_language(%rip), %eax	# c_language, c_language.162
	cmpl	$1, %eax	#, c_language.162
	je	.L284	#,
	.loc 1 2014 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.164
	testl	%eax, %eax	# flag_isoc99.164
	jne	.L285	#,
	movl	flag_isoc94(%rip), %eax	# flag_isoc94, flag_isoc94.165
	testl	%eax, %eax	# flag_isoc94.165
	setne	%al	#, D.12675
	movzbl	%al, %eax	# D.12675, iftmp.163
	jmp	.L287	#
.L285:
	.loc 1 2014 0 discriminator 2
	movl	$3, %eax	#, iftmp.163
	jmp	.L287	#
.L284:
	movl	$1, %eax	#, iftmp.161
.L287:
	.loc 1 2014 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.161, iftmp.158
	jle	.L279	#,
	.loc 1 2015 0 is_stmt 1
	movq	-552(%rbp), %rax	# fki, tmp729
	movq	(%rax), %rcx	# fki_109->name, D.12672
	.loc 1 2016 0
	movl	c_language(%rip), %eax	# c_language, c_language.167
	.loc 1 2015 0
	cmpl	$1, %eax	#, c_language.167
	je	.L288	#,
	.loc 1 2016 0
	movq	-576(%rbp), %rax	# fci, tmp730
	movl	12(%rax), %eax	# fci_52->std, D.12678
	cmpl	$4, %eax	#, D.12678
	jne	.L289	#,
	.loc 1 2016 0 is_stmt 0 discriminator 1
	movl	$.LC160, %eax	#, iftmp.168
	jmp	.L291	#
.L289:
	.loc 1 2016 0 discriminator 2
	movl	$.LC184, %eax	#, iftmp.168
	jmp	.L291	#
.L288:
	.loc 1 2015 0 is_stmt 1 discriminator 1
	movl	$.LC159, %eax	#, iftmp.166
.L291:
	.loc 1 2015 0 is_stmt 0 discriminator 2
	movl	-640(%rbp), %edx	# format_char, tmp731
	movq	-712(%rbp), %rdi	# status, tmp732
	movq	%rcx, %r8	# D.12672,
	movl	%edx, %ecx	# tmp731,
	movq	%rax, %rdx	# iftmp.166,
	movl	$.LC189, %esi	#,
	movl	$0, %eax	#,
	call	status_warning	#
.L279:
.LBB24:
	.loc 1 2021 0 is_stmt 1
	movl	$0, -660(%rbp)	#, d
	.loc 1 2022 0
	movl	$0, -692(%rbp)	#, i
	jmp	.L292	#
.L331:
.LBB25:
	.loc 1 2025 0
	movl	-692(%rbp), %eax	# i, tmp734
	cltq
	movzbl	-272(%rbp,%rax), %eax	# flag_chars, D.12669
	.loc 1 2024 0
	movsbl	%al, %ecx	# D.12669, D.12668
	movq	-544(%rbp), %rax	# flag_specs, tmp735
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp735,
	call	get_flag_spec	#
	movq	%rax, -504(%rbp)	# tmp736, s
	.loc 1 2026 0
	movl	-660(%rbp), %eax	# d, tmp737
	movl	-692(%rbp), %edx	# i, tmp738
	movl	%edx, %ecx	# tmp738, D.12668
	subl	%eax, %ecx	# tmp737, D.12668
	movl	-692(%rbp), %eax	# i, tmp740
	cltq
	movzbl	-272(%rbp,%rax), %edx	# flag_chars, D.12669
	movslq	%ecx, %rax	# D.12668, tmp741
	movb	%dl, -272(%rbp,%rax)	# D.12669, flag_chars
	.loc 1 2027 0
	movl	-692(%rbp), %eax	# i, tmp743
	cltq
	movzbl	-272(%rbp,%rax), %eax	# flag_chars, D.12669
	movsbl	%al, %edx	# D.12669, D.12668
	movq	-552(%rbp), %rax	# fki, tmp744
	movl	76(%rax), %eax	# fki_109->length_code_char, D.12668
	cmpl	%eax, %edx	# D.12668, D.12668
	jne	.L293	#,
	.loc 1 2028 0
	jmp	.L294	#
.L293:
	.loc 1 2029 0
	movl	-692(%rbp), %eax	# i, tmp746
	cltq
	movzbl	-272(%rbp,%rax), %eax	# flag_chars, D.12669
	movsbl	%al, %edx	# D.12669, D.12668
	movq	-576(%rbp), %rax	# fci, tmp747
	movq	232(%rax), %rax	# fci_52->flag_chars, D.12672
	movl	%edx, %esi	# D.12668,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	jne	.L295	#,
	.loc 1 2031 0
	movq	-552(%rbp), %rax	# fki, tmp748
	movq	(%rax), %rsi	# fki_109->name, D.12672
	movq	-504(%rbp), %rax	# s, tmp749
	movq	16(%rax), %rdx	# s_476->name, D.12672
	movl	-640(%rbp), %ecx	# format_char, tmp750
	movq	-712(%rbp), %rax	# status, tmp751
	movq	%rsi, %r8	# D.12672,
	movl	$.LC190, %esi	#,
	movq	%rax, %rdi	# tmp751,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 2033 0
	addl	$1, -660(%rbp)	#, d
	.loc 1 2034 0
	jmp	.L294	#
.L295:
	.loc 1 2036 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.169
	testl	%eax, %eax	# pedantic.169
	je	.L294	#,
.LBB26:
	.loc 1 2039 0
	movq	-504(%rbp), %rax	# s, tmp752
	movl	32(%rax), %eax	# s_476->std, D.12678
	cmpl	$2, %eax	#, D.12678
	jne	.L296	#,
	.loc 1 2039 0 is_stmt 0 discriminator 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.172
	testl	%eax, %eax	# warn_long_long.172
	je	.L297	#,
	movl	$3, %eax	#, iftmp.171
	jmp	.L298	#
.L297:
	.loc 1 2039 0 discriminator 2
	movl	$0, %eax	#, iftmp.171
.L298:
	.loc 1 2039 0 discriminator 1
	movl	%eax, %edx	# iftmp.171, iftmp.170
	jmp	.L299	#
.L296:
	.loc 1 2039 0 discriminator 2
	movq	-504(%rbp), %rax	# s, tmp753
	movl	32(%rax), %eax	# s_476->std, D.12678
	movl	%eax, %edx	# D.12678, iftmp.170
.L299:
	.loc 1 2039 0 discriminator 3
	movl	c_language(%rip), %eax	# c_language, c_language.174
	cmpl	$1, %eax	#, c_language.174
	je	.L300	#,
	.loc 1 2039 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.176
	testl	%eax, %eax	# flag_isoc99.176
	jne	.L301	#,
	movl	flag_isoc94(%rip), %eax	# flag_isoc94, flag_isoc94.177
	testl	%eax, %eax	# flag_isoc94.177
	setne	%al	#, D.12675
	movzbl	%al, %eax	# D.12675, iftmp.175
	jmp	.L303	#
.L301:
	.loc 1 2039 0 discriminator 2
	movl	$3, %eax	#, iftmp.175
	jmp	.L303	#
.L300:
	movl	$1, %eax	#, iftmp.173
.L303:
	.loc 1 2039 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.173, iftmp.170
	jle	.L304	#,
	.loc 1 2040 0 is_stmt 1
	movq	-504(%rbp), %rax	# s, tmp754
	movq	24(%rax), %rdx	# s_476->long_name, D.12672
	.loc 1 2041 0
	movl	c_language(%rip), %eax	# c_language, c_language.179
	.loc 1 2040 0
	cmpl	$1, %eax	#, c_language.179
	je	.L305	#,
	.loc 1 2041 0
	movq	-504(%rbp), %rax	# s, tmp755
	movl	32(%rax), %eax	# s_476->std, D.12678
	cmpl	$4, %eax	#, D.12678
	jne	.L306	#,
	.loc 1 2041 0 is_stmt 0 discriminator 1
	movl	$.LC160, %eax	#, iftmp.180
	jmp	.L308	#
.L306:
	.loc 1 2041 0 discriminator 2
	movl	$.LC184, %eax	#, iftmp.180
	jmp	.L308	#
.L305:
	.loc 1 2040 0 is_stmt 1 discriminator 1
	movl	$.LC159, %eax	#, iftmp.178
.L308:
	.loc 1 2040 0 is_stmt 0 discriminator 2
	movq	-712(%rbp), %rdi	# status, tmp756
	movq	%rdx, %rcx	# D.12672,
	movq	%rax, %rdx	# iftmp.178,
	movl	$.LC191, %esi	#,
	movl	$0, %eax	#,
	call	status_warning	#
.L304:
	.loc 1 2042 0 is_stmt 1
	movq	-576(%rbp), %rax	# fci, tmp757
	movq	240(%rax), %rdx	# fci_52->flags2, D.12672
	movl	-692(%rbp), %eax	# i, tmp759
	cltq
	movzbl	-272(%rbp,%rax), %eax	# flag_chars, D.12669
	movsbl	%al, %ecx	# D.12669, D.12668
	movq	-544(%rbp), %rax	# flag_specs, tmp760
	movl	%ecx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp760,
	call	get_flag_spec	#
	movq	%rax, -496(%rbp)	# tmp761, t
	.loc 1 2043 0
	cmpq	$0, -496(%rbp)	#, t
	je	.L294	#,
	.loc 1 2043 0 is_stmt 0 discriminator 1
	movq	-496(%rbp), %rax	# t, tmp762
	movl	32(%rax), %eax	# t_515->std, D.12678
	cmpl	$2, %eax	#, D.12678
	jne	.L309	#,
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.183
	testl	%eax, %eax	# warn_long_long.183
	je	.L310	#,
	movl	$3, %eax	#, iftmp.182
	jmp	.L311	#
.L310:
	.loc 1 2043 0 discriminator 2
	movl	$0, %eax	#, iftmp.182
.L311:
	.loc 1 2043 0 discriminator 4
	movl	%eax, %edx	# iftmp.182, iftmp.181
	jmp	.L312	#
.L309:
	.loc 1 2043 0 discriminator 2
	movq	-496(%rbp), %rax	# t, tmp763
	movl	32(%rax), %eax	# t_515->std, D.12678
	movl	%eax, %edx	# D.12678, iftmp.181
.L312:
	.loc 1 2043 0 discriminator 3
	movq	-504(%rbp), %rax	# s, tmp764
	movl	32(%rax), %eax	# s_476->std, D.12678
	cmpl	$2, %eax	#, D.12678
	jne	.L313	#,
	.loc 1 2043 0 discriminator 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.186
	testl	%eax, %eax	# warn_long_long.186
	je	.L314	#,
	movl	$3, %eax	#, iftmp.185
	jmp	.L316	#
.L314:
	.loc 1 2043 0 discriminator 2
	movl	$0, %eax	#, iftmp.185
	jmp	.L316	#
.L313:
	movq	-504(%rbp), %rax	# s, tmp765
	movl	32(%rax), %eax	# s_476->std, D.12678
.L316:
	.loc 1 2043 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.184, iftmp.181
	jle	.L294	#,
.LBB27:
	.loc 1 2045 0 is_stmt 1
	movq	-496(%rbp), %rax	# t, tmp766
	movq	24(%rax), %rax	# t_515->long_name, D.12672
	.loc 1 2047 0
	testq	%rax, %rax	# D.12672
	je	.L317	#,
	.loc 1 2047 0 is_stmt 0 discriminator 1
	movq	-496(%rbp), %rax	# t, tmp767
	movq	24(%rax), %rax	# t_515->long_name, iftmp.187
	jmp	.L318	#
.L317:
	.loc 1 2047 0 discriminator 2
	movq	-504(%rbp), %rax	# s, tmp768
	movq	24(%rax), %rax	# s_476->long_name, iftmp.187
.L318:
	.loc 1 2045 0 is_stmt 1
	movq	%rax, -488(%rbp)	# iftmp.187, long_name
	.loc 1 2048 0
	movq	-496(%rbp), %rax	# t, tmp769
	movl	32(%rax), %eax	# t_515->std, D.12678
	cmpl	$2, %eax	#, D.12678
	jne	.L319	#,
	.loc 1 2048 0 is_stmt 0 discriminator 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.190
	testl	%eax, %eax	# warn_long_long.190
	je	.L320	#,
	movl	$3, %eax	#, iftmp.189
	jmp	.L321	#
.L320:
	.loc 1 2048 0 discriminator 2
	movl	$0, %eax	#, iftmp.189
.L321:
	.loc 1 2048 0 discriminator 1
	movl	%eax, %edx	# iftmp.189, iftmp.188
	jmp	.L322	#
.L319:
	.loc 1 2048 0 discriminator 2
	movq	-496(%rbp), %rax	# t, tmp770
	movl	32(%rax), %eax	# t_515->std, D.12678
	movl	%eax, %edx	# D.12678, iftmp.188
.L322:
	.loc 1 2048 0 discriminator 3
	movl	c_language(%rip), %eax	# c_language, c_language.192
	cmpl	$1, %eax	#, c_language.192
	je	.L323	#,
	.loc 1 2048 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.194
	testl	%eax, %eax	# flag_isoc99.194
	jne	.L324	#,
	movl	flag_isoc94(%rip), %eax	# flag_isoc94, flag_isoc94.195
	testl	%eax, %eax	# flag_isoc94.195
	setne	%al	#, D.12675
	movzbl	%al, %eax	# D.12675, iftmp.193
	jmp	.L326	#
.L324:
	.loc 1 2048 0 discriminator 2
	movl	$3, %eax	#, iftmp.193
	jmp	.L326	#
.L323:
	movl	$1, %eax	#, iftmp.191
.L326:
	.loc 1 2048 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.191, iftmp.188
	jle	.L294	#,
	.loc 1 2049 0 is_stmt 1
	movq	-552(%rbp), %rax	# fki, tmp771
	movq	(%rax), %rsi	# fki_109->name, D.12672
	.loc 1 2050 0
	movl	c_language(%rip), %eax	# c_language, c_language.197
	.loc 1 2049 0
	cmpl	$1, %eax	#, c_language.197
	je	.L327	#,
	.loc 1 2050 0
	movq	-496(%rbp), %rax	# t, tmp772
	movl	32(%rax), %eax	# t_515->std, D.12678
	cmpl	$4, %eax	#, D.12678
	jne	.L328	#,
	.loc 1 2050 0 is_stmt 0 discriminator 1
	movl	$.LC160, %eax	#, iftmp.198
	jmp	.L330	#
.L328:
	.loc 1 2050 0 discriminator 2
	movl	$.LC184, %eax	#, iftmp.198
	jmp	.L330	#
.L327:
	.loc 1 2049 0 is_stmt 1 discriminator 1
	movl	$.LC159, %eax	#, iftmp.196
.L330:
	.loc 1 2049 0 is_stmt 0 discriminator 2
	movl	-640(%rbp), %ecx	# format_char, tmp773
	movq	-488(%rbp), %rdx	# long_name, tmp774
	movq	-712(%rbp), %rdi	# status, tmp775
	movq	%rsi, %r9	# D.12672,
	movl	%ecx, %r8d	# tmp773,
	movq	%rdx, %rcx	# tmp774,
	movq	%rax, %rdx	# iftmp.196,
	movl	$.LC192, %esi	#,
	movl	$0, %eax	#,
	call	status_warning	#
.L294:
.LBE27:
.LBE26:
.LBE25:
	.loc 1 2022 0 is_stmt 1
	addl	$1, -692(%rbp)	#, i
.L292:
	.loc 1 2022 0 is_stmt 0 discriminator 1
	movl	-692(%rbp), %eax	# i, tmp777
	cltq
	movzbl	-272(%rbp,%rax), %eax	# flag_chars, D.12669
	testb	%al, %al	# D.12669
	jne	.L331	#,
	.loc 1 2055 0 is_stmt 1
	movl	-660(%rbp), %eax	# d, tmp778
	movl	-692(%rbp), %edx	# i, tmp779
	subl	%eax, %edx	# tmp778, D.12668
	movl	%edx, %eax	# D.12668, D.12668
	cltq
	movb	$0, -272(%rbp,%rax)	#, flag_chars
.LBE24:
	.loc 1 2058 0
	movq	-552(%rbp), %rax	# fki, tmp781
	movl	56(%rax), %eax	# fki_109->flags, D.12668
	andl	$2, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	je	.L332	#,
	.loc 1 2059 0
	leaq	-272(%rbp), %rax	#, tmp782
	movl	$97, %esi	#,
	movq	%rax, %rdi	# tmp782,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L332	#,
	.loc 1 2060 0
	movl	$1, -672(%rbp)	#, aflag
.L332:
	.loc 1 2062 0
	movq	-552(%rbp), %rax	# fki, tmp783
	movl	72(%rax), %eax	# fki_109->suppression_char, D.12668
	testl	%eax, %eax	# D.12668
	je	.L333	#,
	.loc 1 2063 0
	movq	-552(%rbp), %rax	# fki, tmp784
	movl	72(%rax), %edx	# fki_109->suppression_char, D.12668
	leaq	-272(%rbp), %rax	#, tmp785
	movl	%edx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp785,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L333	#,
	.loc 1 2064 0
	movl	$1, -688(%rbp)	#, suppressed
.L333:
	.loc 1 2067 0
	movl	$0, -692(%rbp)	#, i
	jmp	.L334	#
.L343:
.LBB28:
	.loc 1 2070 0
	movl	-692(%rbp), %eax	# i, tmp786
	cltq
	salq	$4, %rax	#, D.12667
	movq	%rax, %rdx	# D.12667, D.12667
	movq	-536(%rbp), %rax	# bad_flag_pairs, tmp787
	addq	%rdx, %rax	# D.12667, D.12679
	movl	(%rax), %edx	# _573->flag_char1, D.12668
	leaq	-272(%rbp), %rax	#, tmp788
	movl	%edx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp788,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	jne	.L335	#,
	.loc 1 2071 0
	jmp	.L336	#
.L335:
	.loc 1 2072 0
	movl	-692(%rbp), %eax	# i, tmp789
	cltq
	salq	$4, %rax	#, D.12667
	movq	%rax, %rdx	# D.12667, D.12667
	movq	-536(%rbp), %rax	# bad_flag_pairs, tmp790
	addq	%rdx, %rax	# D.12667, D.12679
	movl	4(%rax), %edx	# _578->flag_char2, D.12668
	leaq	-272(%rbp), %rax	#, tmp791
	movl	%edx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp791,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	jne	.L337	#,
	.loc 1 2073 0
	jmp	.L336	#
.L337:
	.loc 1 2074 0
	movl	-692(%rbp), %eax	# i, tmp792
	cltq
	salq	$4, %rax	#, D.12667
	movq	%rax, %rdx	# D.12667, D.12667
	movq	-536(%rbp), %rax	# bad_flag_pairs, tmp793
	addq	%rdx, %rax	# D.12667, D.12679
	movl	12(%rax), %eax	# _583->predicate, D.12668
	testl	%eax, %eax	# D.12668
	je	.L338	#,
	.loc 1 2075 0
	movl	-692(%rbp), %eax	# i, tmp794
	cltq
	salq	$4, %rax	#, D.12667
	movq	%rax, %rdx	# D.12667, D.12667
	movq	-536(%rbp), %rax	# bad_flag_pairs, tmp795
	addq	%rdx, %rax	# D.12667, D.12679
	movl	12(%rax), %edx	# _587->predicate, D.12668
	movq	-576(%rbp), %rax	# fci, tmp796
	movq	240(%rax), %rax	# fci_52->flags2, D.12672
	movl	%edx, %esi	# D.12668,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	jne	.L338	#,
	.loc 1 2076 0
	jmp	.L336	#
.L338:
	.loc 1 2077 0
	movl	-692(%rbp), %eax	# i, tmp797
	cltq
	salq	$4, %rax	#, D.12667
	movq	%rax, %rdx	# D.12667, D.12667
	movq	-536(%rbp), %rax	# bad_flag_pairs, tmp798
	addq	%rdx, %rax	# D.12667, D.12679
	movl	(%rax), %ecx	# _593->flag_char1, D.12668
	movq	-544(%rbp), %rax	# flag_specs, tmp799
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp799,
	call	get_flag_spec	#
	movq	%rax, -480(%rbp)	# tmp800, s
	.loc 1 2078 0
	movl	-692(%rbp), %eax	# i, tmp801
	cltq
	salq	$4, %rax	#, D.12667
	movq	%rax, %rdx	# D.12667, D.12667
	movq	-536(%rbp), %rax	# bad_flag_pairs, tmp802
	addq	%rdx, %rax	# D.12667, D.12679
	movl	4(%rax), %ecx	# _598->flag_char2, D.12668
	movq	-544(%rbp), %rax	# flag_specs, tmp803
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.12668,
	movq	%rax, %rdi	# tmp803,
	call	get_flag_spec	#
	movq	%rax, -472(%rbp)	# tmp804, t
	.loc 1 2079 0
	movl	-692(%rbp), %eax	# i, tmp805
	cltq
	salq	$4, %rax	#, D.12667
	movq	%rax, %rdx	# D.12667, D.12667
	movq	-536(%rbp), %rax	# bad_flag_pairs, tmp806
	addq	%rdx, %rax	# D.12667, D.12679
	movl	8(%rax), %eax	# _603->ignored, D.12668
	testl	%eax, %eax	# D.12668
	je	.L339	#,
	.loc 1 2081 0
	movl	-692(%rbp), %eax	# i, tmp807
	cltq
	salq	$4, %rax	#, D.12667
	movq	%rax, %rdx	# D.12667, D.12667
	movq	-536(%rbp), %rax	# bad_flag_pairs, tmp808
	addq	%rdx, %rax	# D.12667, D.12679
	movl	12(%rax), %eax	# _607->predicate, D.12668
	testl	%eax, %eax	# D.12668
	je	.L340	#,
	.loc 1 2082 0
	movq	-552(%rbp), %rax	# fki, tmp809
	movq	(%rax), %rdi	# fki_109->name, D.12672
	movq	-472(%rbp), %rax	# t, tmp810
	movq	16(%rax), %rcx	# t_600->name, D.12672
	movq	-480(%rbp), %rax	# s, tmp811
	movq	16(%rax), %rdx	# s_595->name, D.12672
	movl	-640(%rbp), %esi	# format_char, tmp812
	movq	-712(%rbp), %rax	# status, tmp813
	movq	%rdi, %r9	# D.12672,
	movl	%esi, %r8d	# tmp812,
	movl	$.LC193, %esi	#,
	movq	%rax, %rdi	# tmp813,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L336	#
.L340:
	.loc 1 2086 0
	movq	-552(%rbp), %rax	# fki, tmp814
	movq	(%rax), %rsi	# fki_109->name, D.12672
	movq	-472(%rbp), %rax	# t, tmp815
	movq	16(%rax), %rcx	# t_600->name, D.12672
	movq	-480(%rbp), %rax	# s, tmp816
	movq	16(%rax), %rdx	# s_595->name, D.12672
	movq	-712(%rbp), %rax	# status, tmp817
	movq	%rsi, %r8	# D.12672,
	movl	$.LC194, %esi	#,
	movq	%rax, %rdi	# tmp817,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L336	#
.L339:
	.loc 1 2091 0
	movl	-692(%rbp), %eax	# i, tmp818
	cltq
	salq	$4, %rax	#, D.12667
	movq	%rax, %rdx	# D.12667, D.12667
	movq	-536(%rbp), %rax	# bad_flag_pairs, tmp819
	addq	%rdx, %rax	# D.12667, D.12679
	movl	12(%rax), %eax	# _617->predicate, D.12668
	testl	%eax, %eax	# D.12668
	je	.L342	#,
	.loc 1 2092 0
	movq	-552(%rbp), %rax	# fki, tmp820
	movq	(%rax), %rdi	# fki_109->name, D.12672
	movq	-472(%rbp), %rax	# t, tmp821
	movq	16(%rax), %rcx	# t_600->name, D.12672
	movq	-480(%rbp), %rax	# s, tmp822
	movq	16(%rax), %rdx	# s_595->name, D.12672
	movl	-640(%rbp), %esi	# format_char, tmp823
	movq	-712(%rbp), %rax	# status, tmp824
	movq	%rdi, %r9	# D.12672,
	movl	%esi, %r8d	# tmp823,
	movl	$.LC195, %esi	#,
	movq	%rax, %rdi	# tmp824,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L336	#
.L342:
	.loc 1 2096 0
	movq	-552(%rbp), %rax	# fki, tmp825
	movq	(%rax), %rsi	# fki_109->name, D.12672
	movq	-472(%rbp), %rax	# t, tmp826
	movq	16(%rax), %rcx	# t_600->name, D.12672
	movq	-480(%rbp), %rax	# s, tmp827
	movq	16(%rax), %rdx	# s_595->name, D.12672
	movq	-712(%rbp), %rax	# status, tmp828
	movq	%rsi, %r8	# D.12672,
	movl	$.LC196, %esi	#,
	movq	%rax, %rdi	# tmp828,
	movl	$0, %eax	#,
	call	status_warning	#
.L336:
.LBE28:
	.loc 1 2067 0
	addl	$1, -692(%rbp)	#, i
.L334:
	.loc 1 2067 0 is_stmt 0 discriminator 1
	movl	-692(%rbp), %eax	# i, tmp829
	cltq
	salq	$4, %rax	#, D.12667
	movq	%rax, %rdx	# D.12667, D.12667
	movq	-536(%rbp), %rax	# bad_flag_pairs, tmp830
	addq	%rdx, %rax	# D.12667, D.12679
	movl	(%rax), %eax	# _569->flag_char1, D.12668
	testl	%eax, %eax	# D.12668
	jne	.L343	#,
	.loc 1 2102 0 is_stmt 1
	movl	warn_format_y2k(%rip), %eax	# warn_format_y2k, warn_format_y2k.199
	testl	%eax, %eax	# warn_format_y2k.199
	je	.L344	#,
.LBB29:
	.loc 1 2104 0
	movl	$0, -656(%rbp)	#, y2k_level
	.loc 1 2105 0
	movq	-576(%rbp), %rax	# fci, tmp831
	movq	240(%rax), %rax	# fci_52->flags2, D.12672
	movl	$52, %esi	#,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L345	#,
	.loc 1 2106 0
	leaq	-272(%rbp), %rax	#, tmp832
	movl	$69, %esi	#,
	movq	%rax, %rdi	# tmp832,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L346	#,
	.loc 1 2107 0
	movl	$3, -656(%rbp)	#, y2k_level
	jmp	.L348	#
.L346:
	.loc 1 2109 0
	movl	$2, -656(%rbp)	#, y2k_level
	jmp	.L348	#
.L345:
	.loc 1 2110 0
	movq	-576(%rbp), %rax	# fci, tmp833
	movq	240(%rax), %rax	# fci_52->flags2, D.12672
	movl	$51, %esi	#,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L349	#,
	.loc 1 2111 0
	movl	$3, -656(%rbp)	#, y2k_level
	jmp	.L348	#
.L349:
	.loc 1 2112 0
	movq	-576(%rbp), %rax	# fci, tmp834
	movq	240(%rax), %rax	# fci_52->flags2, D.12672
	movl	$50, %esi	#,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L348	#,
	.loc 1 2113 0
	movl	$2, -656(%rbp)	#, y2k_level
.L348:
	.loc 1 2114 0
	cmpl	$3, -656(%rbp)	#, y2k_level
	jne	.L350	#,
	.loc 1 2115 0
	movl	-640(%rbp), %edx	# format_char, tmp835
	movq	-712(%rbp), %rax	# status, tmp836
	movl	$.LC197, %esi	#,
	movq	%rax, %rdi	# tmp836,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L344	#
.L350:
	.loc 1 2117 0
	cmpl	$2, -656(%rbp)	#, y2k_level
	jne	.L344	#,
	.loc 1 2118 0
	movl	-640(%rbp), %edx	# format_char, tmp837
	movq	-712(%rbp), %rax	# status, tmp838
	movl	$.LC198, %esi	#,
	movq	%rax, %rdi	# tmp838,
	movl	$0, %eax	#,
	call	status_warning	#
.L344:
.LBE29:
	.loc 1 2121 0
	movq	-576(%rbp), %rax	# fci, tmp839
	movq	240(%rax), %rax	# fci_52->flags2, D.12672
	movl	$91, %esi	#,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L351	#,
	.loc 1 2124 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.200
	movzbl	(%rax), %eax	# *format_chars.200_641, D.12669
	cmpb	$94, %al	#, D.12669
	jne	.L352	#,
	.loc 1 2125 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.201
	addq	$1, %rax	#, format_chars.202
	movq	%rax, -736(%rbp)	# format_chars.202, format_chars
.L352:
	.loc 1 2128 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.203
	movzbl	(%rax), %eax	# *format_chars.203_645, D.12669
	cmpb	$93, %al	#, D.12669
	jne	.L353	#,
	.loc 1 2129 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.204
	addq	$1, %rax	#, format_chars.205
	movq	%rax, -736(%rbp)	# format_chars.205, format_chars
	.loc 1 2130 0
	jmp	.L354	#
.L353:
	jmp	.L354	#
.L356:
	.loc 1 2131 0
	movq	-736(%rbp), %rax	# format_chars, format_chars.206
	addq	$1, %rax	#, format_chars.207
	movq	%rax, -736(%rbp)	# format_chars.207, format_chars
.L354:
	.loc 1 2130 0 discriminator 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.208
	movzbl	(%rax), %eax	# *format_chars.208_649, D.12669
	testb	%al, %al	# D.12669
	je	.L355	#,
	.loc 1 2130 0 is_stmt 0 discriminator 2
	movq	-736(%rbp), %rax	# format_chars, format_chars.209
	movzbl	(%rax), %eax	# *format_chars.209_651, D.12669
	cmpb	$93, %al	#, D.12669
	jne	.L356	#,
.L355:
	.loc 1 2132 0 is_stmt 1
	movq	-736(%rbp), %rax	# format_chars, format_chars.210
	movzbl	(%rax), %eax	# *format_chars.210_655, D.12669
	cmpb	$93, %al	#, D.12669
	je	.L351	#,
	.loc 1 2134 0
	movq	-712(%rbp), %rax	# status, tmp840
	movl	$.LC199, %esi	#,
	movq	%rax, %rdi	# tmp840,
	movl	$0, %eax	#,
	call	status_warning	#
.L351:
	.loc 1 2137 0
	movq	$0, -616(%rbp)	#, wanted_type
	.loc 1 2138 0
	movq	$0, -608(%rbp)	#, wanted_type_name
	.loc 1 2139 0
	movq	-552(%rbp), %rax	# fki, tmp841
	movl	56(%rax), %eax	# fki_109->flags, D.12668
	andl	$1, %eax	#, D.12668
	testl	%eax, %eax	# D.12668
	je	.L357	#,
	.loc 1 2141 0
	movq	-576(%rbp), %rcx	# fci, tmp842
	movl	-684(%rbp), %edx	# length_chars_val, tmp843
	movq	%rdx, %rax	# tmp843, tmp844
	addq	%rax, %rax	# tmp844
	addq	%rdx, %rax	# tmp843, tmp844
	salq	$3, %rax	#, tmp845
	addq	%rcx, %rax	# tmp842, tmp846
	addq	$32, %rax	#, tmp847
	movq	(%rax), %rax	# fci_52->types[length_chars_val_32].type, D.12674
	.loc 1 2142 0
	testq	%rax, %rax	# D.12674
	je	.L358	#,
	.loc 1 2142 0 is_stmt 0 discriminator 1
	movq	-576(%rbp), %rcx	# fci, tmp848
	movl	-684(%rbp), %edx	# length_chars_val, tmp849
	movq	%rdx, %rax	# tmp849, tmp850
	addq	%rax, %rax	# tmp850
	addq	%rdx, %rax	# tmp849, tmp850
	salq	$3, %rax	#, tmp851
	addq	%rcx, %rax	# tmp848, tmp852
	addq	$32, %rax	#, tmp853
	movq	(%rax), %rax	# fci_52->types[length_chars_val_32].type, D.12674
	movq	(%rax), %rax	# *_662, iftmp.211
	jmp	.L359	#
.L358:
	.loc 1 2142 0 discriminator 2
	movl	$0, %eax	#, iftmp.211
.L359:
	.loc 1 2141 0 is_stmt 1
	movq	%rax, -616(%rbp)	# iftmp.211, wanted_type
	.loc 1 2143 0
	movq	-576(%rbp), %rcx	# fci, tmp854
	movl	-684(%rbp), %edx	# length_chars_val, tmp855
	movq	%rdx, %rax	# tmp855, tmp856
	addq	%rax, %rax	# tmp856
	addq	%rdx, %rax	# tmp855, tmp856
	salq	$3, %rax	#, tmp857
	addq	%rcx, %rax	# tmp854, tmp858
	addq	$24, %rax	#, tmp859
	movq	(%rax), %rax	# fci_52->types[length_chars_val_32].name, tmp860
	movq	%rax, -608(%rbp)	# tmp860, wanted_type_name
	.loc 1 2144 0
	movq	-576(%rbp), %rcx	# fci, tmp861
	movl	-684(%rbp), %edx	# length_chars_val, tmp862
	movq	%rdx, %rax	# tmp862, tmp863
	addq	%rax, %rax	# tmp863
	addq	%rdx, %rax	# tmp862, tmp863
	salq	$3, %rax	#, tmp864
	addq	%rcx, %rax	# tmp861, tmp865
	addq	$16, %rax	#, tmp866
	movl	(%rax), %eax	# fci_52->types[length_chars_val_32].std, tmp867
	movl	%eax, -636(%rbp)	# tmp867, wanted_type_std
	.loc 1 2145 0
	cmpq	$0, -616(%rbp)	#, wanted_type
	jne	.L360	#,
	.loc 1 2147 0
	movl	-640(%rbp), %ecx	# format_char, tmp868
	movq	-624(%rbp), %rdx	# length_chars, tmp869
	movq	-712(%rbp), %rax	# status, tmp870
	movl	$.LC200, %esi	#,
	movq	%rax, %rdi	# tmp870,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 2151 0
	addq	$1, 16(%rbp)	#, arg_num
	.loc 1 2152 0
	movq	-752(%rbp), %rax	# params, params.212
	testq	%rax, %rax	# params.212
	jne	.L361	#,
	.loc 1 2154 0
	movq	-712(%rbp), %rax	# status, tmp871
	movl	$.LC179, %esi	#,
	movq	%rax, %rdi	# tmp871,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 2155 0
	jmp	.L196	#
.L361:
	.loc 1 2157 0
	movq	-752(%rbp), %rax	# params, params.213
	movq	(%rax), %rax	# params.213_670->common.chain, params.214
	movq	%rax, -752(%rbp)	# params.214, params
	.loc 1 2158 0
	jmp	.L407	#
.L360:
	.loc 1 2160 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.215
	testl	%eax, %eax	# pedantic.215
	je	.L357	#,
	.loc 1 2164 0
	cmpl	$2, -636(%rbp)	#, wanted_type_std
	jne	.L362	#,
	.loc 1 2164 0 is_stmt 0 discriminator 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.218
	testl	%eax, %eax	# warn_long_long.218
	je	.L363	#,
	movl	$3, %eax	#, iftmp.217
	jmp	.L364	#
.L363:
	.loc 1 2164 0 discriminator 2
	movl	$0, %eax	#, iftmp.217
.L364:
	.loc 1 2164 0 discriminator 7
	movl	%eax, %edx	# iftmp.217, iftmp.216
	jmp	.L365	#
.L362:
	.loc 1 2164 0 discriminator 2
	movl	-636(%rbp), %edx	# wanted_type_std, iftmp.216
.L365:
	.loc 1 2164 0 discriminator 3
	cmpl	$2, -680(%rbp)	#, length_chars_std
	jne	.L366	#,
	.loc 1 2164 0 discriminator 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.221
	testl	%eax, %eax	# warn_long_long.221
	je	.L367	#,
	movl	$3, %eax	#, iftmp.220
	jmp	.L369	#
.L367:
	.loc 1 2164 0 discriminator 2
	movl	$0, %eax	#, iftmp.220
	jmp	.L369	#
.L366:
	movl	-680(%rbp), %eax	# length_chars_std, iftmp.219
.L369:
	.loc 1 2164 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.219, iftmp.216
	jle	.L357	#,
	.loc 1 2165 0 is_stmt 1
	cmpl	$2, -636(%rbp)	#, wanted_type_std
	jne	.L370	#,
	.loc 1 2165 0 is_stmt 0 discriminator 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.224
	testl	%eax, %eax	# warn_long_long.224
	je	.L371	#,
	movl	$3, %eax	#, iftmp.223
	jmp	.L372	#
.L371:
	.loc 1 2165 0 discriminator 2
	movl	$0, %eax	#, iftmp.223
.L372:
	.loc 1 2165 0 discriminator 9
	movl	%eax, %edx	# iftmp.223, iftmp.222
	jmp	.L373	#
.L370:
	.loc 1 2165 0 discriminator 2
	movl	-636(%rbp), %edx	# wanted_type_std, iftmp.222
.L373:
	.loc 1 2165 0 discriminator 3
	movq	-576(%rbp), %rax	# fci, tmp872
	movl	12(%rax), %eax	# fci_52->std, D.12678
	cmpl	$2, %eax	#, D.12678
	jne	.L374	#,
	.loc 1 2165 0 discriminator 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.227
	testl	%eax, %eax	# warn_long_long.227
	je	.L375	#,
	movl	$3, %eax	#, iftmp.226
	jmp	.L377	#
.L375:
	.loc 1 2165 0 discriminator 2
	movl	$0, %eax	#, iftmp.226
	jmp	.L377	#
.L374:
	movq	-576(%rbp), %rax	# fci, tmp873
	movl	12(%rax), %eax	# fci_52->std, D.12678
.L377:
	.loc 1 2165 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.225, iftmp.222
	jle	.L357	#,
	.loc 1 2167 0 is_stmt 1
	cmpl	$2, -636(%rbp)	#, wanted_type_std
	jne	.L378	#,
	.loc 1 2167 0 is_stmt 0 discriminator 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.230
	testl	%eax, %eax	# warn_long_long.230
	je	.L379	#,
	movl	$3, %eax	#, iftmp.229
	jmp	.L380	#
.L379:
	.loc 1 2167 0 discriminator 2
	movl	$0, %eax	#, iftmp.229
.L380:
	.loc 1 2167 0 discriminator 11
	movl	%eax, %edx	# iftmp.229, iftmp.228
	jmp	.L381	#
.L378:
	.loc 1 2167 0 discriminator 2
	movl	-636(%rbp), %edx	# wanted_type_std, iftmp.228
.L381:
	.loc 1 2167 0 discriminator 3
	movl	c_language(%rip), %eax	# c_language, c_language.232
	cmpl	$1, %eax	#, c_language.232
	je	.L382	#,
	.loc 1 2167 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.234
	testl	%eax, %eax	# flag_isoc99.234
	jne	.L383	#,
	movl	flag_isoc94(%rip), %eax	# flag_isoc94, flag_isoc94.235
	testl	%eax, %eax	# flag_isoc94.235
	setne	%al	#, D.12675
	movzbl	%al, %eax	# D.12675, iftmp.233
	jmp	.L385	#
.L383:
	.loc 1 2167 0 discriminator 2
	movl	$3, %eax	#, iftmp.233
	jmp	.L385	#
.L382:
	movl	$1, %eax	#, iftmp.231
.L385:
	.loc 1 2167 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.231, iftmp.228
	jle	.L357	#,
	.loc 1 2168 0 is_stmt 1
	movq	-552(%rbp), %rax	# fki, tmp874
	movq	(%rax), %rsi	# fki_109->name, D.12672
	.loc 1 2169 0
	movl	c_language(%rip), %eax	# c_language, c_language.237
	.loc 1 2168 0
	cmpl	$1, %eax	#, c_language.237
	je	.L386	#,
	.loc 1 2169 0
	cmpl	$4, -636(%rbp)	#, wanted_type_std
	jne	.L387	#,
	.loc 1 2169 0 is_stmt 0 discriminator 1
	movl	$.LC160, %eax	#, iftmp.238
	jmp	.L389	#
.L387:
	.loc 1 2169 0 discriminator 2
	movl	$.LC184, %eax	#, iftmp.238
	jmp	.L389	#
.L386:
	.loc 1 2168 0 is_stmt 1 discriminator 1
	movl	$.LC159, %eax	#, iftmp.236
.L389:
	.loc 1 2168 0 is_stmt 0 discriminator 2
	movl	-640(%rbp), %ecx	# format_char, tmp875
	movq	-624(%rbp), %rdx	# length_chars, tmp876
	movq	-712(%rbp), %rdi	# status, tmp877
	movq	%rsi, %r9	# D.12672,
	movl	%ecx, %r8d	# tmp875,
	movq	%rdx, %rcx	# tmp876,
	movq	%rax, %rdx	# iftmp.236,
	movl	$.LC201, %esi	#,
	movl	$0, %eax	#,
	call	status_warning	#
.L357:
	.loc 1 2175 0 is_stmt 1
	movq	-728(%rbp), %rax	# info, tmp878
	movq	16(%rax), %rax	# info_107(D)->first_arg_num, D.12667
	testq	%rax, %rax	# D.12667
	jne	.L390	#,
	.loc 1 2176 0
	jmp	.L407	#
.L390:
	.loc 1 2177 0
	movq	-576(%rbp), %rax	# fci, tmp879
	movl	8(%rax), %eax	# fci_52->pointer_count, D.12668
	testl	%eax, %eax	# D.12668
	jne	.L391	#,
	.loc 1 2177 0 is_stmt 0 discriminator 1
	movq	global_trees+216(%rip), %rax	# global_trees, D.12676
	cmpq	-616(%rbp), %rax	# wanted_type, D.12676
	je	.L392	#,
.L391:
	.loc 1 2178 0 is_stmt 1
	cmpl	$0, -688(%rbp)	#, suppressed
	je	.L393	#,
.L392:
	.loc 1 2180 0
	cmpl	$0, -676(%rbp)	#, main_arg_num
	je	.L394	#,
	.loc 1 2182 0
	cmpl	$0, -688(%rbp)	#, suppressed
	je	.L395	#,
	.loc 1 2183 0
	movq	-712(%rbp), %rax	# status, tmp880
	movl	$.LC202, %esi	#,
	movq	%rax, %rdi	# tmp880,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L394	#
.L395:
	.loc 1 2185 0
	movq	-712(%rbp), %rax	# status, tmp881
	movl	$.LC203, %esi	#,
	movq	%rax, %rdi	# tmp881,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 2180 0
	jmp	.L396	#
.L394:
	.loc 1 2180 0 is_stmt 0 discriminator 1
	jmp	.L396	#
.L393:
	.loc 1 2190 0 is_stmt 1
	cmpl	$0, -676(%rbp)	#, main_arg_num
	je	.L397	#,
	.loc 1 2192 0
	movl	-676(%rbp), %eax	# main_arg_num, tmp883
	cltq
	movq	%rax, 16(%rbp)	# tmp882, arg_num
	.loc 1 2193 0
	movq	-632(%rbp), %rax	# main_arg_params, main_arg_params.239
	movq	%rax, -752(%rbp)	# main_arg_params.239, params
	jmp	.L398	#
.L397:
	.loc 1 2197 0
	addq	$1, 16(%rbp)	#, arg_num
	.loc 1 2198 0
	cmpl	$0, -696(%rbp)	#, has_operand_number
	jle	.L399	#,
	.loc 1 2200 0
	movq	-712(%rbp), %rax	# status, tmp884
	movl	$.LC158, %esi	#,
	movq	%rax, %rdi	# tmp884,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 2201 0
	jmp	.L196	#
.L399:
	.loc 1 2204 0
	movl	$0, -696(%rbp)	#, has_operand_number
	.loc 1 2205 0
	movq	-752(%rbp), %rax	# params, params.240
	testq	%rax, %rax	# params.240
	jne	.L398	#,
	.loc 1 2207 0
	movq	-712(%rbp), %rax	# status, tmp885
	movl	$.LC179, %esi	#,
	movq	%rax, %rdi	# tmp885,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 2208 0
	nop
	jmp	.L196	#
.L398:
	.loc 1 2211 0
	movq	-752(%rbp), %rax	# params, params.241
	movq	32(%rax), %rax	# params.241_722->list.value, tmp886
	movq	%rax, -520(%rbp)	# tmp886, cur_param
	.loc 1 2212 0
	movq	-752(%rbp), %rax	# params, params.242
	movq	(%rax), %rax	# params.242_724->common.chain, params.243
	movq	%rax, -752(%rbp)	# params.243, params
	.loc 1 2213 0
	movq	-616(%rbp), %rax	# wanted_type, tmp887
	movq	%rax, -336(%rbp)	# tmp887, main_wanted_type.wanted_type
	.loc 1 2214 0
	movq	-608(%rbp), %rax	# wanted_type_name, tmp888
	movq	%rax, -328(%rbp)	# tmp888, main_wanted_type.wanted_type_name
	.loc 1 2215 0
	movq	-576(%rbp), %rax	# fci, tmp889
	movl	8(%rax), %edx	# fci_52->pointer_count, D.12668
	movl	-672(%rbp), %eax	# aflag, tmp890
	addl	%edx, %eax	# D.12668, D.12668
	movl	%eax, -320(%rbp)	# D.12668, main_wanted_type.pointer_count
	.loc 1 2216 0
	movl	$0, -316(%rbp)	#, main_wanted_type.char_lenient_flag
	.loc 1 2217 0
	movq	-576(%rbp), %rax	# fci, tmp891
	movq	240(%rax), %rax	# fci_52->flags2, D.12672
	movl	$99, %esi	#,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L400	#,
	.loc 1 2218 0
	movl	$1, -316(%rbp)	#, main_wanted_type.char_lenient_flag
.L400:
	.loc 1 2219 0
	movl	$0, -312(%rbp)	#, main_wanted_type.writing_in_flag
	.loc 1 2220 0
	movl	$0, -308(%rbp)	#, main_wanted_type.reading_from_flag
	.loc 1 2221 0
	cmpl	$0, -672(%rbp)	#, aflag
	je	.L401	#,
	.loc 1 2222 0
	movl	$1, -312(%rbp)	#, main_wanted_type.writing_in_flag
	jmp	.L402	#
.L401:
	.loc 1 2225 0
	movq	-576(%rbp), %rax	# fci, tmp892
	movq	240(%rax), %rax	# fci_52->flags2, D.12672
	movl	$87, %esi	#,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L403	#,
	.loc 1 2226 0
	movl	$1, -312(%rbp)	#, main_wanted_type.writing_in_flag
.L403:
	.loc 1 2227 0
	movq	-576(%rbp), %rax	# fci, tmp893
	movq	240(%rax), %rax	# fci_52->flags2, D.12672
	movl	$82, %esi	#,
	movq	%rax, %rdi	# D.12672,
	call	strchr	#
	testq	%rax, %rax	# D.12673
	je	.L402	#,
	.loc 1 2228 0
	movl	$1, -308(%rbp)	#, main_wanted_type.reading_from_flag
.L402:
	.loc 1 2230 0
	movq	$0, -304(%rbp)	#, main_wanted_type.name
	.loc 1 2231 0
	movq	-520(%rbp), %rax	# cur_param, tmp894
	movq	%rax, -296(%rbp)	# tmp894, main_wanted_type.param
	.loc 1 2232 0
	movq	16(%rbp), %rax	# arg_num, tmp895
	movl	%eax, -288(%rbp)	# D.12668, main_wanted_type.arg_num
	.loc 1 2233 0
	movq	$0, -280(%rbp)	#, main_wanted_type.next
	.loc 1 2234 0
	cmpq	$0, -592(%rbp)	#, last_wanted_type
	je	.L404	#,
	.loc 1 2235 0
	movq	-592(%rbp), %rax	# last_wanted_type, tmp896
	leaq	-336(%rbp), %rdx	#, tmp897
	movq	%rdx, 56(%rax)	# tmp897, last_wanted_type_50->next
.L404:
	.loc 1 2236 0
	cmpq	$0, -600(%rbp)	#, first_wanted_type
	jne	.L405	#,
	.loc 1 2237 0
	leaq	-336(%rbp), %rax	#, tmp898
	movq	%rax, -600(%rbp)	# tmp898, first_wanted_type
.L405:
	.loc 1 2238 0
	leaq	-336(%rbp), %rax	#, tmp899
	movq	%rax, -592(%rbp)	# tmp899, last_wanted_type
.L396:
	.loc 1 2241 0
	cmpq	$0, -600(%rbp)	#, first_wanted_type
	je	.L407	#,
	.loc 1 2242 0
	movq	-600(%rbp), %rdx	# first_wanted_type, tmp900
	movq	-712(%rbp), %rax	# status, tmp901
	movq	%rdx, %rsi	# tmp900,
	movq	%rax, %rdi	# tmp901,
	call	check_format_types	#
.LBE17:
	.loc 1 2244 0
	jmp	.L409	#
.L407:
	jmp	.L409	#
.L196:
	.loc 1 2245 0
	movq	-8(%rbp), %rax	# D.12680, tmp903
	xorq	%fs:40, %rax	#, tmp903
	je	.L410	#,
	call	__stack_chk_fail	#
.L410:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	check_format_info_main, .-check_format_info_main
	.section	.rodata
	.align 8
.LC204:
	.string	"writing through null pointer (arg %d)"
	.align 8
.LC205:
	.string	"reading through null pointer (arg %d)"
	.align 8
.LC206:
	.string	"writing into constant object (arg %d)"
	.align 8
.LC207:
	.string	"extra type qualifiers in format argument (arg %d)"
	.align 8
.LC208:
	.string	"format argument is not a pointer (arg %d)"
	.align 8
.LC209:
	.string	"format argument is not a pointer to a pointer (arg %d)"
.LC210:
	.string	"pointer"
.LC211:
	.string	"different type"
.LC212:
	.string	"%s is not type %s (arg %d)"
.LC213:
	.string	"%s format, %s arg (arg %d)"
	.text
	.type	check_format_types, @function
check_format_types:
.LFB16:
	.loc 1 2254 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# status, status
	movq	%rsi, -96(%rbp)	# types, types
	.loc 1 2255 0
	jmp	.L412	#
.L460:
.LBB30:
	.loc 1 2265 0
	movq	-96(%rbp), %rax	# types, tmp148
	movq	40(%rax), %rax	# types_1->param, tmp149
	movq	%rax, -56(%rbp)	# tmp149, cur_param
	.loc 1 2266 0
	movq	-56(%rbp), %rax	# cur_param, tmp150
	movq	8(%rax), %rax	# cur_param_17->common.type, tmp151
	movq	%rax, -48(%rbp)	# tmp151, cur_type
	.loc 1 2267 0
	movq	global_trees(%rip), %rax	# global_trees, D.12710
	cmpq	-48(%rbp), %rax	# cur_type, D.12710
	jne	.L413	#,
	.loc 1 2268 0
	jmp	.L414	#
.L413:
	.loc 1 2269 0
	movl	$0, -64(%rbp)	#, char_type_flag
	.loc 1 2270 0
	movq	-96(%rbp), %rax	# types, tmp152
	movq	(%rax), %rax	# types_1->wanted_type, tmp153
	movq	%rax, -40(%rbp)	# tmp153, wanted_type
	.loc 1 2271 0
	movq	-96(%rbp), %rax	# types, tmp154
	movl	48(%rax), %eax	# types_1->arg_num, tmp155
	movl	%eax, -60(%rbp)	# tmp155, arg_num
	.loc 1 2274 0
	cmpq	$0, -40(%rbp)	#, wanted_type
	jne	.L415	#,
	.loc 1 2275 0
	movl	$__FUNCTION__.10608, %edx	#,
	movl	$2275, %esi	#,
	movl	$.LC5, %edi	#,
	call	fancy_abort	#
.L415:
	.loc 1 2276 0
	movq	global_trees+216(%rip), %rax	# global_trees, D.12710
	cmpq	-40(%rbp), %rax	# wanted_type, D.12710
	jne	.L416	#,
	.loc 1 2276 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# types, tmp156
	movl	16(%rax), %eax	# types_1->pointer_count, D.12711
	testl	%eax, %eax	# D.12711
	jne	.L416	#,
	.loc 1 2277 0 is_stmt 1
	movl	$__FUNCTION__.10608, %edx	#,
	movl	$2277, %esi	#,
	movl	$.LC5, %edi	#,
	call	fancy_abort	#
.L416:
	.loc 1 2279 0
	movq	-96(%rbp), %rax	# types, tmp157
	movl	16(%rax), %eax	# types_1->pointer_count, D.12711
	testl	%eax, %eax	# D.12711
	jne	.L417	#,
	.loc 1 2281 0
	movq	-40(%rbp), %rax	# wanted_type, tmp158
	movq	%rax, %rdi	# tmp158,
	call	simple_type_promotes_to	#
	movq	%rax, -16(%rbp)	# tmp159, promoted_type
	.loc 1 2282 0
	cmpq	$0, -16(%rbp)	#, promoted_type
	je	.L417	#,
	.loc 1 2283 0
	movq	-16(%rbp), %rax	# promoted_type, tmp160
	movq	%rax, -40(%rbp)	# tmp160, wanted_type
	.loc 1 2286 0
	jmp	.L418	#
.L417:
	jmp	.L418	#
.L421:
	.loc 1 2286 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cur_param, tmp161
	movq	32(%rax), %rax	# cur_param_2->exp.operands, tmp162
	movq	%rax, -56(%rbp)	# tmp162, cur_param
.L418:
	movq	-56(%rbp), %rax	# cur_param, tmp163
	movzbl	16(%rax), %eax	# cur_param_2->common.code, D.12712
	cmpb	$115, %al	#, D.12712
	je	.L419	#,
	.loc 1 2286 0 discriminator 3
	movq	-56(%rbp), %rax	# cur_param, tmp164
	movzbl	16(%rax), %eax	# cur_param_2->common.code, D.12712
	cmpb	$114, %al	#, D.12712
	je	.L419	#,
	.loc 1 2286 0 discriminator 1
	movq	-56(%rbp), %rax	# cur_param, tmp165
	movzbl	16(%rax), %eax	# cur_param_2->common.code, D.12712
	cmpb	$116, %al	#, D.12712
	jne	.L420	#,
.L419:
	.loc 1 2286 0 discriminator 2
	movq	-56(%rbp), %rax	# cur_param, tmp166
	movq	32(%rax), %rdx	# cur_param_2->exp.operands, D.12710
	movq	global_trees(%rip), %rax	# global_trees, D.12710
	cmpq	%rax, %rdx	# D.12710, D.12710
	je	.L420	#,
	.loc 1 2286 0 discriminator 1
	movq	-56(%rbp), %rax	# cur_param, tmp167
	movq	8(%rax), %rax	# cur_param_2->common.type, D.12710
	movzbl	61(%rax), %eax	# *_33, tmp170
	shrb	%al	# D.12713
	movl	%eax, %edx	# D.12713, D.12713
	movq	-56(%rbp), %rax	# cur_param, tmp171
	movq	32(%rax), %rax	# cur_param_2->exp.operands, D.12710
	movq	8(%rax), %rax	# _35->common.type, D.12710
	movzbl	61(%rax), %eax	# *_36, tmp174
	shrb	%al	# D.12713
	cmpb	%al, %dl	# D.12713, D.12713
	je	.L421	#,
.L420:
	.loc 1 2290 0 is_stmt 1
	movl	$0, -68(%rbp)	#, i
	jmp	.L422	#
.L437:
	.loc 1 2292 0
	movq	-48(%rbp), %rax	# cur_type, tmp175
	movzbl	16(%rax), %eax	# cur_type_5->common.code, D.12712
	cmpb	$13, %al	#, D.12712
	jne	.L423	#,
	.loc 1 2294 0
	movq	-48(%rbp), %rax	# cur_type, tmp176
	movq	8(%rax), %rax	# cur_type_5->common.type, tmp177
	movq	%rax, -48(%rbp)	# tmp177, cur_type
	.loc 1 2295 0
	movq	global_trees(%rip), %rax	# global_trees, D.12710
	cmpq	-48(%rbp), %rax	# cur_type, D.12710
	jne	.L424	#,
	.loc 1 2296 0
	jmp	.L425	#
.L424:
	.loc 1 2299 0
	movq	-96(%rbp), %rax	# types, tmp178
	movl	24(%rax), %eax	# types_1->writing_in_flag, D.12711
	testl	%eax, %eax	# D.12711
	je	.L426	#,
	.loc 1 2300 0
	cmpl	$0, -68(%rbp)	#, i
	jne	.L426	#,
	.loc 1 2301 0
	cmpq	$0, -56(%rbp)	#, cur_param
	je	.L426	#,
	.loc 1 2302 0
	movq	-56(%rbp), %rax	# cur_param, tmp179
	movq	%rax, %rdi	# tmp179,
	call	integer_zerop	#
	testl	%eax, %eax	# D.12711
	je	.L426	#,
	.loc 1 2303 0
	movl	-60(%rbp), %edx	# arg_num, tmp180
	movq	-88(%rbp), %rax	# status, tmp181
	movl	$.LC204, %esi	#,
	movq	%rax, %rdi	# tmp181,
	movl	$0, %eax	#,
	call	status_warning	#
.L426:
	.loc 1 2308 0
	movq	-96(%rbp), %rax	# types, tmp182
	movl	28(%rax), %eax	# types_1->reading_from_flag, D.12711
	testl	%eax, %eax	# D.12711
	je	.L427	#,
	.loc 1 2309 0
	cmpl	$0, -68(%rbp)	#, i
	jne	.L427	#,
	.loc 1 2310 0
	cmpq	$0, -56(%rbp)	#, cur_param
	je	.L427	#,
	.loc 1 2311 0
	movq	-56(%rbp), %rax	# cur_param, tmp183
	movq	%rax, %rdi	# tmp183,
	call	integer_zerop	#
	testl	%eax, %eax	# D.12711
	je	.L427	#,
	.loc 1 2312 0
	movl	-60(%rbp), %edx	# arg_num, tmp184
	movq	-88(%rbp), %rax	# status, tmp185
	movl	$.LC205, %esi	#,
	movq	%rax, %rdi	# tmp185,
	movl	$0, %eax	#,
	call	status_warning	#
.L427:
	.loc 1 2316 0
	cmpq	$0, -56(%rbp)	#, cur_param
	je	.L428	#,
	.loc 1 2316 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cur_param, tmp186
	movzbl	16(%rax), %eax	# cur_param_4->common.code, D.12712
	cmpb	$121, %al	#, D.12712
	jne	.L428	#,
	.loc 1 2317 0 is_stmt 1
	movq	-56(%rbp), %rax	# cur_param, tmp187
	movq	32(%rax), %rax	# cur_param_4->exp.operands, tmp188
	movq	%rax, -56(%rbp)	# tmp188, cur_param
	jmp	.L429	#
.L428:
	.loc 1 2319 0
	movq	$0, -56(%rbp)	#, cur_param
.L429:
	.loc 1 2326 0
	movq	-96(%rbp), %rax	# types, tmp189
	movl	24(%rax), %eax	# types_1->writing_in_flag, D.12711
	testl	%eax, %eax	# D.12711
	je	.L430	#,
	.loc 1 2327 0
	cmpl	$0, -68(%rbp)	#, i
	jne	.L430	#,
	.loc 1 2328 0
	movq	-48(%rbp), %rax	# cur_type, tmp190
	movzbl	17(%rax), %eax	# *cur_type_42, D.12712
	andl	$16, %eax	#, D.12712
	testb	%al, %al	# D.12712
	jne	.L431	#,
	.loc 1 2329 0
	cmpq	$0, -56(%rbp)	#, cur_param
	je	.L430	#,
	.loc 1 2330 0
	movq	-56(%rbp), %rax	# cur_param, tmp191
	movzbl	16(%rax), %eax	# cur_param_3->common.code, D.12712
	movzbl	%al, %eax	# D.12712, D.12711
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.12714
	cmpb	$99, %al	#, D.12714
	je	.L431	#,
	.loc 1 2331 0
	movq	-56(%rbp), %rax	# cur_param, tmp193
	movzbl	16(%rax), %eax	# cur_param_3->common.code, D.12712
	movzbl	%al, %eax	# D.12712, D.12711
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.12714
	cmpb	$100, %al	#, D.12714
	jne	.L430	#,
	.loc 1 2332 0
	movq	-56(%rbp), %rax	# cur_param, tmp195
	movzbl	17(%rax), %eax	# *cur_param_3, D.12712
	andl	$16, %eax	#, D.12712
	testb	%al, %al	# D.12712
	je	.L430	#,
.L431:
	.loc 1 2333 0
	movl	-60(%rbp), %edx	# arg_num, tmp196
	movq	-88(%rbp), %rax	# status, tmp197
	movl	$.LC206, %esi	#,
	movq	%rax, %rdi	# tmp197,
	movl	$0, %eax	#,
	call	status_warning	#
.L430:
	.loc 1 2338 0
	cmpl	$0, -68(%rbp)	#, i
	jle	.L434	#,
	.loc 1 2339 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.244
	testl	%eax, %eax	# pedantic.244
	je	.L434	#,
	.loc 1 2340 0
	movq	-48(%rbp), %rax	# cur_type, tmp198
	movzbl	17(%rax), %eax	# *cur_type_42, D.12712
	andl	$16, %eax	#, D.12712
	testb	%al, %al	# D.12712
	jne	.L433	#,
	.loc 1 2341 0
	movq	-48(%rbp), %rax	# cur_type, tmp199
	movzbl	17(%rax), %eax	# *cur_type_42, D.12712
	andl	$8, %eax	#, D.12712
	testb	%al, %al	# D.12712
	jne	.L433	#,
	.loc 1 2342 0
	movq	-48(%rbp), %rax	# cur_type, tmp200
	movzbl	62(%rax), %eax	# *cur_type_42, D.12712
	andl	$32, %eax	#, D.12712
	testb	%al, %al	# D.12712
	je	.L434	#,
.L433:
	.loc 1 2343 0
	movl	-60(%rbp), %edx	# arg_num, tmp201
	movq	-88(%rbp), %rax	# status, tmp202
	movl	$.LC207, %esi	#,
	movq	%rax, %rdi	# tmp202,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L434	#
.L423:
	.loc 1 2349 0
	movq	-96(%rbp), %rax	# types, tmp203
	movl	16(%rax), %eax	# types_1->pointer_count, D.12711
	cmpl	$1, %eax	#, D.12711
	jne	.L435	#,
	.loc 1 2350 0
	movl	-60(%rbp), %edx	# arg_num, tmp204
	movq	-88(%rbp), %rax	# status, tmp205
	movl	$.LC208, %esi	#,
	movq	%rax, %rdi	# tmp205,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 2353 0
	jmp	.L425	#
.L435:
	.loc 1 2352 0
	movl	-60(%rbp), %edx	# arg_num, tmp206
	movq	-88(%rbp), %rax	# status, tmp207
	movl	$.LC209, %esi	#,
	movq	%rax, %rdi	# tmp207,
	movl	$0, %eax	#,
	call	status_warning	#
	.loc 1 2353 0
	jmp	.L425	#
.L434:
	.loc 1 2290 0
	addl	$1, -68(%rbp)	#, i
.L422:
	.loc 1 2290 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# types, tmp208
	movl	16(%rax), %eax	# types_1->pointer_count, D.12711
	cmpl	-68(%rbp), %eax	# i, D.12711
	jg	.L437	#,
.L425:
	.loc 1 2357 0 is_stmt 1
	movq	-96(%rbp), %rax	# types, tmp209
	movl	16(%rax), %eax	# types_1->pointer_count, D.12711
	cmpl	-68(%rbp), %eax	# i, D.12711
	jle	.L438	#,
	.loc 1 2358 0
	jmp	.L414	#
.L438:
	.loc 1 2360 0
	movq	-48(%rbp), %rax	# cur_type, tmp210
	movq	%rax, -8(%rbp)	# tmp210, orig_cur_type
	.loc 1 2361 0
	movq	-48(%rbp), %rax	# cur_type, tmp211
	movq	128(%rax), %rax	# cur_type_6->type.main_variant, tmp212
	movq	%rax, -48(%rbp)	# tmp212, cur_type
	.loc 1 2366 0
	movq	-96(%rbp), %rax	# types, tmp213
	movl	20(%rax), %eax	# types_1->char_lenient_flag, D.12711
	testl	%eax, %eax	# D.12711
	je	.L439	#,
	.loc 1 2367 0
	movq	integer_types(%rip), %rax	# integer_types, D.12710
	.loc 1 2369 0
	cmpq	-48(%rbp), %rax	# cur_type, D.12710
	je	.L440	#,
	.loc 1 2368 0
	movq	integer_types+8(%rip), %rax	# integer_types, D.12710
	cmpq	-48(%rbp), %rax	# cur_type, D.12710
	je	.L440	#,
	.loc 1 2369 0
	movq	integer_types+16(%rip), %rax	# integer_types, D.12710
	cmpq	-48(%rbp), %rax	# cur_type, D.12710
	jne	.L441	#,
.L440:
	.loc 1 2369 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.245
	jmp	.L442	#
.L441:
	.loc 1 2369 0 discriminator 2
	movl	$0, %eax	#, iftmp.245
.L442:
	.loc 1 2367 0 is_stmt 1
	movl	%eax, -64(%rbp)	# iftmp.245, char_type_flag
.L439:
	.loc 1 2372 0
	movq	-40(%rbp), %rax	# wanted_type, tmp214
	cmpq	-48(%rbp), %rax	# cur_type, tmp214
	jne	.L443	#,
	.loc 1 2373 0
	jmp	.L414	#
.L443:
	.loc 1 2378 0
	movq	global_trees+216(%rip), %rax	# global_trees, D.12710
	cmpq	-40(%rbp), %rax	# wanted_type, D.12710
	jne	.L444	#,
	.loc 1 2379 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.246
	testl	%eax, %eax	# pedantic.246
	je	.L445	#,
	.loc 1 2379 0 is_stmt 0 discriminator 1
	cmpl	$1, -68(%rbp)	#, i
	jne	.L444	#,
	cmpl	$0, -64(%rbp)	#, char_type_flag
	je	.L444	#,
.L445:
	.loc 1 2380 0 is_stmt 1
	jmp	.L414	#
.L444:
	.loc 1 2385 0
	movq	-40(%rbp), %rax	# wanted_type, tmp215
	movzbl	16(%rax), %eax	# wanted_type_7->common.code, D.12712
	cmpb	$6, %al	#, D.12712
	jne	.L446	#,
	.loc 1 2386 0
	movq	-48(%rbp), %rax	# cur_type, tmp216
	movzbl	16(%rax), %eax	# cur_type_74->common.code, D.12712
	cmpb	$6, %al	#, D.12712
	jne	.L446	#,
	.loc 1 2387 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.247
	testl	%eax, %eax	# pedantic.247
	je	.L447	#,
	.loc 1 2387 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	je	.L447	#,
	cmpl	$1, -68(%rbp)	#, i
	jne	.L446	#,
	cmpl	$0, -64(%rbp)	#, char_type_flag
	je	.L446	#,
.L447:
	.loc 1 2389 0 is_stmt 1
	movq	-40(%rbp), %rax	# wanted_type, tmp217
	movzbl	17(%rax), %eax	# *wanted_type_7, D.12712
	andl	$32, %eax	#, D.12712
	.loc 1 2388 0
	testb	%al, %al	# D.12712
	je	.L448	#,
	.loc 1 2389 0
	movq	-48(%rbp), %rax	# cur_type, tmp218
	movq	%rax, %rdi	# tmp218,
	call	unsigned_type	#
	.loc 1 2388 0
	cmpq	-40(%rbp), %rax	# wanted_type, D.12710
	sete	%al	#, iftmp.248
	jmp	.L449	#
.L448:
	.loc 1 2390 0 discriminator 1
	movq	-48(%rbp), %rax	# cur_type, tmp219
	movq	%rax, %rdi	# tmp219,
	call	signed_type	#
	.loc 1 2388 0 discriminator 1
	cmpq	-40(%rbp), %rax	# wanted_type, D.12710
	sete	%al	#, iftmp.248
.L449:
	.loc 1 2388 0 is_stmt 0 discriminator 2
	testb	%al, %al	# iftmp.248
	je	.L446	#,
	.loc 1 2391 0 is_stmt 1
	jmp	.L414	#
.L446:
	.loc 1 2394 0
	movq	integer_types(%rip), %rax	# integer_types, D.12710
	cmpq	-40(%rbp), %rax	# wanted_type, D.12710
	jne	.L450	#,
	.loc 1 2395 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.249
	testl	%eax, %eax	# pedantic.249
	je	.L451	#,
	.loc 1 2395 0 is_stmt 0 discriminator 1
	cmpl	$1, -68(%rbp)	#, i
	jg	.L450	#,
.L451:
	.loc 1 2396 0 is_stmt 1
	cmpl	$0, -64(%rbp)	#, char_type_flag
	je	.L450	#,
	.loc 1 2397 0
	jmp	.L414	#
.L450:
.LBB31:
	.loc 1 2403 0
	movq	-40(%rbp), %rax	# wanted_type, tmp220
	movq	96(%rax), %rax	# wanted_type_7->type.name, D.12710
	movq	72(%rax), %rax	# _95->decl.name, D.12710
	movq	32(%rax), %rax	# _96->identifier.id.str, tmp221
	movq	%rax, -32(%rbp)	# tmp221, this
	.loc 1 2404 0
	movq	$0, -24(%rbp)	#, that
	.loc 1 2405 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp222
	movq	96(%rax), %rax	# orig_cur_type_73->type.name, D.12710
	testq	%rax, %rax	# D.12710
	je	.L452	#,
	.loc 1 2406 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp223
	movzbl	16(%rax), %eax	# orig_cur_type_73->common.code, D.12712
	cmpb	$6, %al	#, D.12712
	je	.L452	#,
	.loc 1 2407 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp224
	movzbl	16(%rax), %eax	# orig_cur_type_73->common.code, D.12712
	cmpb	$13, %al	#, D.12712
	jne	.L453	#,
	.loc 1 2408 0 discriminator 1
	movq	-8(%rbp), %rax	# orig_cur_type, tmp225
	movq	8(%rax), %rax	# orig_cur_type_73->common.type, D.12710
	movzbl	16(%rax), %eax	# _102->common.code, D.12712
	.loc 1 2407 0 discriminator 1
	cmpb	$6, %al	#, D.12712
	je	.L452	#,
.L453:
	.loc 1 2410 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp226
	movq	96(%rax), %rax	# orig_cur_type_73->type.name, D.12710
	movzbl	16(%rax), %eax	# _104->common.code, D.12712
	cmpb	$33, %al	#, D.12712
	jne	.L454	#,
	.loc 1 2411 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp227
	movq	96(%rax), %rax	# orig_cur_type_73->type.name, D.12710
	movq	72(%rax), %rax	# _106->decl.name, D.12710
	testq	%rax, %rax	# D.12710
	je	.L454	#,
	.loc 1 2412 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp228
	movq	96(%rax), %rax	# orig_cur_type_73->type.name, D.12710
	movq	72(%rax), %rax	# _108->decl.name, D.12710
	movq	32(%rax), %rax	# _109->identifier.id.str, tmp229
	movq	%rax, -24(%rbp)	# tmp229, that
	jmp	.L452	#
.L454:
	.loc 1 2414 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp230
	movq	96(%rax), %rax	# orig_cur_type_73->type.name, D.12710
	movq	32(%rax), %rax	# _111->identifier.id.str, tmp231
	movq	%rax, -24(%rbp)	# tmp231, that
.L452:
	.loc 1 2420 0
	cmpq	$0, -24(%rbp)	#, that
	jne	.L455	#,
	.loc 1 2422 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp232
	movzbl	16(%rax), %eax	# orig_cur_type_73->common.code, D.12712
	cmpb	$13, %al	#, D.12712
	jne	.L456	#,
	.loc 1 2423 0
	movq	$.LC210, -24(%rbp)	#, that
	jmp	.L455	#
.L456:
	.loc 1 2425 0
	movq	$.LC211, -24(%rbp)	#, that
.L455:
	.loc 1 2429 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp233
	movzbl	16(%rax), %eax	# orig_cur_type_73->common.code, D.12712
	cmpb	$6, %al	#, D.12712
	jne	.L457	#,
	.loc 1 2430 0
	movq	-40(%rbp), %rax	# wanted_type, tmp234
	movzbl	16(%rax), %eax	# wanted_type_7->common.code, D.12712
	cmpb	$6, %al	#, D.12712
	jne	.L457	#,
	.loc 1 2431 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp235
	movzwl	60(%rax), %eax	# *orig_cur_type_73, tmp238
	andw	$511, %ax	#, D.12715
	movl	%eax, %edx	# D.12715, D.12715
	movq	-40(%rbp), %rax	# wanted_type, tmp239
	movzwl	60(%rax), %eax	# *wanted_type_7, tmp242
	andw	$511, %ax	#, D.12715
	cmpw	%ax, %dx	# D.12715, D.12715
	jne	.L457	#,
	.loc 1 2432 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp243
	movq	96(%rax), %rax	# orig_cur_type_73->type.name, D.12710
	testq	%rax, %rax	# D.12710
	je	.L457	#,
	.loc 1 2433 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp244
	movq	96(%rax), %rax	# orig_cur_type_73->type.name, D.12710
	movzbl	16(%rax), %eax	# _121->common.code, D.12712
	cmpb	$33, %al	#, D.12712
	jne	.L457	#,
	.loc 1 2434 0
	movq	-8(%rbp), %rax	# orig_cur_type, tmp245
	movq	96(%rax), %rax	# orig_cur_type_73->type.name, D.12710
	movq	72(%rax), %rax	# _123->decl.name, D.12710
	movq	32(%rax), %rax	# _124->identifier.id.str, tmp246
	movq	%rax, -24(%rbp)	# tmp246, that
.L457:
	.loc 1 2436 0
	movq	-24(%rbp), %rdx	# that, tmp247
	movq	-32(%rbp), %rax	# this, tmp248
	movq	%rdx, %rsi	# tmp247,
	movq	%rax, %rdi	# tmp248,
	call	strcmp	#
	testl	%eax, %eax	# D.12711
	je	.L414	#,
	.loc 1 2442 0
	movq	-96(%rbp), %rax	# types, tmp249
	movq	8(%rax), %rax	# types_1->wanted_type_name, D.12716
	testq	%rax, %rax	# D.12716
	je	.L458	#,
	.loc 1 2443 0
	movq	-96(%rbp), %rax	# types, tmp250
	movq	8(%rax), %rax	# types_1->wanted_type_name, D.12716
	movq	-24(%rbp), %rdx	# that, tmp251
	movq	%rdx, %rsi	# tmp251,
	movq	%rax, %rdi	# D.12716,
	call	strcmp	#
	testl	%eax, %eax	# D.12711
	je	.L458	#,
	.loc 1 2444 0
	movq	-96(%rbp), %rax	# types, tmp252
	movq	8(%rax), %rax	# types_1->wanted_type_name, tmp253
	movq	%rax, -32(%rbp)	# tmp253, this
.L458:
	.loc 1 2445 0
	movq	-96(%rbp), %rax	# types, tmp254
	movq	32(%rax), %rax	# types_1->name, D.12716
	testq	%rax, %rax	# D.12716
	je	.L459	#,
	.loc 1 2446 0
	movq	-96(%rbp), %rax	# types, tmp255
	movq	32(%rax), %rdx	# types_1->name, D.12716
	movl	-60(%rbp), %esi	# arg_num, tmp256
	movq	-32(%rbp), %rcx	# this, tmp257
	movq	-88(%rbp), %rax	# status, tmp258
	movl	%esi, %r8d	# tmp256,
	movl	$.LC212, %esi	#,
	movq	%rax, %rdi	# tmp258,
	movl	$0, %eax	#,
	call	status_warning	#
	jmp	.L414	#
.L459:
	.loc 1 2449 0
	movl	-60(%rbp), %esi	# arg_num, tmp259
	movq	-24(%rbp), %rcx	# that, tmp260
	movq	-32(%rbp), %rdx	# this, tmp261
	movq	-88(%rbp), %rax	# status, tmp262
	movl	%esi, %r8d	# tmp259,
	movl	$.LC213, %esi	#,
	movq	%rax, %rdi	# tmp262,
	movl	$0, %eax	#,
	call	status_warning	#
.L414:
.LBE31:
.LBE30:
	.loc 1 2255 0
	movq	-96(%rbp), %rax	# types, tmp263
	movq	56(%rax), %rax	# types_1->next, tmp264
	movq	%rax, -96(%rbp)	# tmp264, types
.L412:
	.loc 1 2255 0 is_stmt 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, types
	jne	.L460	#,
	.loc 1 2453 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	check_format_types, .-check_format_types
	.section	.rodata
	.align 16
	.type	__FUNCTION__.10189, @object
	.size	__FUNCTION__.10189, 19
__FUNCTION__.10189:
	.string	"decode_format_attr"
	.align 16
	.type	__FUNCTION__.10431, @object
	.size	__FUNCTION__.10431, 25
__FUNCTION__.10431:
	.string	"maybe_read_dollar_number"
	.type	__FUNCTION__.10452, @object
	.size	__FUNCTION__.10452, 14
__FUNCTION__.10452:
	.string	"get_flag_spec"
	.align 16
	.type	__FUNCTION__.10489, @object
	.size	__FUNCTION__.10489, 26
__FUNCTION__.10489:
	.string	"check_format_info_recurse"
	.align 16
	.type	__FUNCTION__.10608, @object
	.size	__FUNCTION__.10608, 19
__FUNCTION__.10608:
	.string	"check_format_types"
	.text
.Letext0:
	.file 2 "tree.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 5 "<built-in>"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "machmode.h"
	.file 11 "real.h"
	.file 12 "obstack.h"
	.file 13 "hashtable.h"
	.file 14 "c-common.h"
	.file 15 "diagnostic.h"
	.file 16 "./safe-ctype.h"
	.file 17 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x35d7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF922
	.byte	0x1
	.long	.LASF923
	.long	.LASF924
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
	.long	.LASF509
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0xc
	.long	0x4e
	.uleb128 0x3
	.byte	0x8
	.long	0x54
	.uleb128 0x6
	.long	.LASF925
	.byte	0xd0
	.byte	0x2
	.value	0x744
	.long	0xfe
	.uleb128 0x7
	.long	.LASF1
	.byte	0x2
	.value	0x746
	.long	0xc7f
	.uleb128 0x7
	.long	.LASF2
	.byte	0x2
	.value	0x747
	.long	0xe3f
	.uleb128 0x7
	.long	.LASF3
	.byte	0x2
	.value	0x748
	.long	0xea2
	.uleb128 0x7
	.long	.LASF4
	.byte	0x2
	.value	0x749
	.long	0xf5b
	.uleb128 0x7
	.long	.LASF5
	.byte	0x2
	.value	0x74a
	.long	0xed7
	.uleb128 0x7
	.long	.LASF6
	.byte	0x2
	.value	0x74b
	.long	0xf19
	.uleb128 0x7
	.long	.LASF7
	.byte	0x2
	.value	0x74c
	.long	0x10d9
	.uleb128 0x7
	.long	.LASF8
	.byte	0x2
	.value	0x74d
	.long	0x1517
	.uleb128 0x7
	.long	.LASF9
	.byte	0x2
	.value	0x74e
	.long	0x1268
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.value	0x74f
	.long	0x1100
	.uleb128 0x8
	.string	"vec"
	.byte	0x2
	.value	0x750
	.long	0x1135
	.uleb128 0x8
	.string	"exp"
	.byte	0x2
	.value	0x751
	.long	0x1178
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.value	0x752
	.long	0x11ad
	.byte	0
	.uleb128 0x9
	.long	0x103
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF13
	.byte	0x4
	.byte	0x28
	.long	0x11c
	.uleb128 0xc
	.long	0x12c
	.long	0x12c
	.uleb128 0xd
	.long	0x10a
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF31
	.byte	0x18
	.byte	0x5
	.byte	0
	.long	0x169
	.uleb128 0xf
	.long	.LASF14
	.byte	0x5
	.byte	0
	.long	0x169
	.byte	0
	.uleb128 0xf
	.long	.LASF15
	.byte	0x5
	.byte	0
	.long	0x169
	.byte	0x4
	.uleb128 0xf
	.long	.LASF16
	.byte	0x5
	.byte	0
	.long	0x170
	.byte	0x8
	.uleb128 0xf
	.long	.LASF17
	.byte	0x5
	.byte	0
	.long	0x170
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF18
	.uleb128 0x10
	.byte	0x8
	.uleb128 0x5
	.long	.LASF19
	.byte	0x4
	.byte	0x62
	.long	0x111
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF20
	.uleb128 0x5
	.long	.LASF21
	.byte	0x6
	.byte	0xd4
	.long	0x18f
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF22
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF23
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF24
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF25
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF26
	.uleb128 0x5
	.long	.LASF27
	.byte	0x7
	.byte	0x8c
	.long	0x17d
	.uleb128 0x5
	.long	.LASF28
	.byte	0x7
	.byte	0x8d
	.long	0x17d
	.uleb128 0x3
	.byte	0x8
	.long	0x1ce
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF29
	.uleb128 0x5
	.long	.LASF30
	.byte	0x8
	.byte	0x30
	.long	0x1e0
	.uleb128 0xe
	.long	.LASF32
	.byte	0xd8
	.byte	0x9
	.byte	0xf6
	.long	0x361
	.uleb128 0xf
	.long	.LASF33
	.byte	0x9
	.byte	0xf7
	.long	0x103
	.byte	0
	.uleb128 0xf
	.long	.LASF34
	.byte	0x9
	.byte	0xfc
	.long	0x1c8
	.byte	0x8
	.uleb128 0xf
	.long	.LASF35
	.byte	0x9
	.byte	0xfd
	.long	0x1c8
	.byte	0x10
	.uleb128 0xf
	.long	.LASF36
	.byte	0x9
	.byte	0xfe
	.long	0x1c8
	.byte	0x18
	.uleb128 0xf
	.long	.LASF37
	.byte	0x9
	.byte	0xff
	.long	0x1c8
	.byte	0x20
	.uleb128 0x11
	.long	.LASF38
	.byte	0x9
	.value	0x100
	.long	0x1c8
	.byte	0x28
	.uleb128 0x11
	.long	.LASF39
	.byte	0x9
	.value	0x101
	.long	0x1c8
	.byte	0x30
	.uleb128 0x11
	.long	.LASF40
	.byte	0x9
	.value	0x102
	.long	0x1c8
	.byte	0x38
	.uleb128 0x11
	.long	.LASF41
	.byte	0x9
	.value	0x103
	.long	0x1c8
	.byte	0x40
	.uleb128 0x11
	.long	.LASF42
	.byte	0x9
	.value	0x105
	.long	0x1c8
	.byte	0x48
	.uleb128 0x11
	.long	.LASF43
	.byte	0x9
	.value	0x106
	.long	0x1c8
	.byte	0x50
	.uleb128 0x11
	.long	.LASF44
	.byte	0x9
	.value	0x107
	.long	0x1c8
	.byte	0x58
	.uleb128 0x11
	.long	.LASF45
	.byte	0x9
	.value	0x109
	.long	0x3a9
	.byte	0x60
	.uleb128 0x11
	.long	.LASF46
	.byte	0x9
	.value	0x10b
	.long	0x3af
	.byte	0x68
	.uleb128 0x11
	.long	.LASF47
	.byte	0x9
	.value	0x10d
	.long	0x103
	.byte	0x70
	.uleb128 0x11
	.long	.LASF48
	.byte	0x9
	.value	0x111
	.long	0x103
	.byte	0x74
	.uleb128 0x11
	.long	.LASF49
	.byte	0x9
	.value	0x113
	.long	0x1b2
	.byte	0x78
	.uleb128 0x11
	.long	.LASF50
	.byte	0x9
	.value	0x117
	.long	0x19d
	.byte	0x80
	.uleb128 0x11
	.long	.LASF51
	.byte	0x9
	.value	0x118
	.long	0x1a4
	.byte	0x82
	.uleb128 0x11
	.long	.LASF52
	.byte	0x9
	.value	0x119
	.long	0x3b5
	.byte	0x83
	.uleb128 0x11
	.long	.LASF53
	.byte	0x9
	.value	0x11d
	.long	0x3c5
	.byte	0x88
	.uleb128 0x11
	.long	.LASF54
	.byte	0x9
	.value	0x126
	.long	0x1bd
	.byte	0x90
	.uleb128 0x11
	.long	.LASF55
	.byte	0x9
	.value	0x12f
	.long	0x170
	.byte	0x98
	.uleb128 0x11
	.long	.LASF56
	.byte	0x9
	.value	0x130
	.long	0x170
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF57
	.byte	0x9
	.value	0x131
	.long	0x170
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF58
	.byte	0x9
	.value	0x132
	.long	0x170
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF59
	.byte	0x9
	.value	0x133
	.long	0x184
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF60
	.byte	0x9
	.value	0x135
	.long	0x103
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF61
	.byte	0x9
	.value	0x137
	.long	0x3cb
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	0x1ce
	.long	0x371
	.uleb128 0xd
	.long	0x10a
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF926
	.byte	0x9
	.byte	0x9b
	.uleb128 0xe
	.long	.LASF62
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x3a9
	.uleb128 0xf
	.long	.LASF63
	.byte	0x9
	.byte	0xa2
	.long	0x3a9
	.byte	0
	.uleb128 0xf
	.long	.LASF64
	.byte	0x9
	.byte	0xa3
	.long	0x3af
	.byte	0x8
	.uleb128 0xf
	.long	.LASF65
	.byte	0x9
	.byte	0xa7
	.long	0x103
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x378
	.uleb128 0x3
	.byte	0x8
	.long	0x1e0
	.uleb128 0xc
	.long	0x1ce
	.long	0x3c5
	.uleb128 0xd
	.long	0x10a
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x371
	.uleb128 0xc
	.long	0x1ce
	.long	0x3db
	.uleb128 0xd
	.long	0x10a
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3e1
	.uleb128 0x9
	.long	0x1ce
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x2c
	.long	0x467
	.uleb128 0x14
	.long	.LASF66
	.sleb128 1
	.uleb128 0x14
	.long	.LASF67
	.sleb128 2
	.uleb128 0x14
	.long	.LASF68
	.sleb128 4
	.uleb128 0x14
	.long	.LASF69
	.sleb128 8
	.uleb128 0x14
	.long	.LASF70
	.sleb128 16
	.uleb128 0x14
	.long	.LASF71
	.sleb128 32
	.uleb128 0x14
	.long	.LASF72
	.sleb128 64
	.uleb128 0x14
	.long	.LASF73
	.sleb128 128
	.uleb128 0x14
	.long	.LASF74
	.sleb128 256
	.uleb128 0x14
	.long	.LASF75
	.sleb128 512
	.uleb128 0x14
	.long	.LASF76
	.sleb128 1024
	.uleb128 0x14
	.long	.LASF77
	.sleb128 2048
	.uleb128 0x14
	.long	.LASF78
	.sleb128 136
	.uleb128 0x14
	.long	.LASF79
	.sleb128 140
	.uleb128 0x14
	.long	.LASF80
	.sleb128 516
	.uleb128 0x14
	.long	.LASF81
	.sleb128 172
	.uleb128 0x14
	.long	.LASF82
	.sleb128 3072
	.uleb128 0x14
	.long	.LASF83
	.sleb128 3088
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF84
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF85
	.uleb128 0x3
	.byte	0x8
	.long	0x103
	.uleb128 0x15
	.long	.LASF146
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.long	0x5f0
	.uleb128 0x14
	.long	.LASF86
	.sleb128 0
	.uleb128 0x14
	.long	.LASF87
	.sleb128 1
	.uleb128 0x14
	.long	.LASF88
	.sleb128 2
	.uleb128 0x14
	.long	.LASF89
	.sleb128 3
	.uleb128 0x14
	.long	.LASF90
	.sleb128 4
	.uleb128 0x14
	.long	.LASF91
	.sleb128 5
	.uleb128 0x14
	.long	.LASF92
	.sleb128 6
	.uleb128 0x14
	.long	.LASF93
	.sleb128 7
	.uleb128 0x14
	.long	.LASF94
	.sleb128 8
	.uleb128 0x14
	.long	.LASF95
	.sleb128 9
	.uleb128 0x14
	.long	.LASF96
	.sleb128 10
	.uleb128 0x14
	.long	.LASF97
	.sleb128 11
	.uleb128 0x14
	.long	.LASF98
	.sleb128 12
	.uleb128 0x14
	.long	.LASF99
	.sleb128 13
	.uleb128 0x14
	.long	.LASF100
	.sleb128 14
	.uleb128 0x14
	.long	.LASF101
	.sleb128 15
	.uleb128 0x14
	.long	.LASF102
	.sleb128 16
	.uleb128 0x14
	.long	.LASF103
	.sleb128 17
	.uleb128 0x14
	.long	.LASF104
	.sleb128 18
	.uleb128 0x14
	.long	.LASF105
	.sleb128 19
	.uleb128 0x14
	.long	.LASF106
	.sleb128 20
	.uleb128 0x14
	.long	.LASF107
	.sleb128 21
	.uleb128 0x14
	.long	.LASF108
	.sleb128 22
	.uleb128 0x14
	.long	.LASF109
	.sleb128 23
	.uleb128 0x14
	.long	.LASF110
	.sleb128 24
	.uleb128 0x14
	.long	.LASF111
	.sleb128 25
	.uleb128 0x14
	.long	.LASF112
	.sleb128 26
	.uleb128 0x14
	.long	.LASF113
	.sleb128 27
	.uleb128 0x14
	.long	.LASF114
	.sleb128 28
	.uleb128 0x14
	.long	.LASF115
	.sleb128 29
	.uleb128 0x14
	.long	.LASF116
	.sleb128 30
	.uleb128 0x14
	.long	.LASF117
	.sleb128 31
	.uleb128 0x14
	.long	.LASF118
	.sleb128 32
	.uleb128 0x14
	.long	.LASF119
	.sleb128 33
	.uleb128 0x14
	.long	.LASF120
	.sleb128 34
	.uleb128 0x14
	.long	.LASF121
	.sleb128 35
	.uleb128 0x14
	.long	.LASF122
	.sleb128 36
	.uleb128 0x14
	.long	.LASF123
	.sleb128 37
	.uleb128 0x14
	.long	.LASF124
	.sleb128 38
	.uleb128 0x14
	.long	.LASF125
	.sleb128 39
	.uleb128 0x14
	.long	.LASF126
	.sleb128 40
	.uleb128 0x14
	.long	.LASF127
	.sleb128 41
	.uleb128 0x14
	.long	.LASF128
	.sleb128 42
	.uleb128 0x14
	.long	.LASF129
	.sleb128 43
	.uleb128 0x14
	.long	.LASF130
	.sleb128 44
	.uleb128 0x14
	.long	.LASF131
	.sleb128 45
	.uleb128 0x14
	.long	.LASF132
	.sleb128 46
	.uleb128 0x14
	.long	.LASF133
	.sleb128 47
	.uleb128 0x14
	.long	.LASF134
	.sleb128 48
	.uleb128 0x14
	.long	.LASF135
	.sleb128 49
	.uleb128 0x14
	.long	.LASF136
	.sleb128 50
	.uleb128 0x14
	.long	.LASF137
	.sleb128 51
	.uleb128 0x14
	.long	.LASF138
	.sleb128 52
	.uleb128 0x14
	.long	.LASF139
	.sleb128 53
	.uleb128 0x14
	.long	.LASF140
	.sleb128 54
	.uleb128 0x14
	.long	.LASF141
	.sleb128 55
	.uleb128 0x14
	.long	.LASF142
	.sleb128 56
	.uleb128 0x14
	.long	.LASF143
	.sleb128 57
	.uleb128 0x14
	.long	.LASF144
	.sleb128 58
	.uleb128 0x14
	.long	.LASF145
	.sleb128 59
	.byte	0
	.uleb128 0x15
	.long	.LASF147
	.byte	0x4
	.byte	0xa
	.byte	0x2c
	.long	0x639
	.uleb128 0x14
	.long	.LASF148
	.sleb128 0
	.uleb128 0x14
	.long	.LASF149
	.sleb128 1
	.uleb128 0x14
	.long	.LASF150
	.sleb128 2
	.uleb128 0x14
	.long	.LASF151
	.sleb128 3
	.uleb128 0x14
	.long	.LASF152
	.sleb128 4
	.uleb128 0x14
	.long	.LASF153
	.sleb128 5
	.uleb128 0x14
	.long	.LASF154
	.sleb128 6
	.uleb128 0x14
	.long	.LASF155
	.sleb128 7
	.uleb128 0x14
	.long	.LASF156
	.sleb128 8
	.uleb128 0x14
	.long	.LASF157
	.sleb128 9
	.byte	0
	.uleb128 0x15
	.long	.LASF158
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.long	0xa12
	.uleb128 0x14
	.long	.LASF159
	.sleb128 0
	.uleb128 0x14
	.long	.LASF160
	.sleb128 1
	.uleb128 0x14
	.long	.LASF161
	.sleb128 2
	.uleb128 0x14
	.long	.LASF162
	.sleb128 3
	.uleb128 0x14
	.long	.LASF163
	.sleb128 4
	.uleb128 0x14
	.long	.LASF164
	.sleb128 5
	.uleb128 0x14
	.long	.LASF165
	.sleb128 6
	.uleb128 0x14
	.long	.LASF166
	.sleb128 7
	.uleb128 0x14
	.long	.LASF167
	.sleb128 8
	.uleb128 0x14
	.long	.LASF168
	.sleb128 9
	.uleb128 0x14
	.long	.LASF169
	.sleb128 10
	.uleb128 0x14
	.long	.LASF170
	.sleb128 11
	.uleb128 0x14
	.long	.LASF171
	.sleb128 12
	.uleb128 0x14
	.long	.LASF172
	.sleb128 13
	.uleb128 0x14
	.long	.LASF173
	.sleb128 14
	.uleb128 0x14
	.long	.LASF174
	.sleb128 15
	.uleb128 0x14
	.long	.LASF175
	.sleb128 16
	.uleb128 0x14
	.long	.LASF176
	.sleb128 17
	.uleb128 0x14
	.long	.LASF177
	.sleb128 18
	.uleb128 0x14
	.long	.LASF178
	.sleb128 19
	.uleb128 0x14
	.long	.LASF179
	.sleb128 20
	.uleb128 0x14
	.long	.LASF180
	.sleb128 21
	.uleb128 0x14
	.long	.LASF181
	.sleb128 22
	.uleb128 0x14
	.long	.LASF182
	.sleb128 23
	.uleb128 0x14
	.long	.LASF183
	.sleb128 24
	.uleb128 0x14
	.long	.LASF184
	.sleb128 25
	.uleb128 0x14
	.long	.LASF185
	.sleb128 26
	.uleb128 0x14
	.long	.LASF186
	.sleb128 27
	.uleb128 0x14
	.long	.LASF187
	.sleb128 28
	.uleb128 0x14
	.long	.LASF188
	.sleb128 29
	.uleb128 0x14
	.long	.LASF189
	.sleb128 30
	.uleb128 0x14
	.long	.LASF190
	.sleb128 31
	.uleb128 0x14
	.long	.LASF191
	.sleb128 32
	.uleb128 0x14
	.long	.LASF192
	.sleb128 33
	.uleb128 0x14
	.long	.LASF193
	.sleb128 34
	.uleb128 0x14
	.long	.LASF194
	.sleb128 35
	.uleb128 0x14
	.long	.LASF195
	.sleb128 36
	.uleb128 0x14
	.long	.LASF196
	.sleb128 37
	.uleb128 0x14
	.long	.LASF197
	.sleb128 38
	.uleb128 0x14
	.long	.LASF198
	.sleb128 39
	.uleb128 0x14
	.long	.LASF199
	.sleb128 40
	.uleb128 0x14
	.long	.LASF200
	.sleb128 41
	.uleb128 0x14
	.long	.LASF201
	.sleb128 42
	.uleb128 0x14
	.long	.LASF202
	.sleb128 43
	.uleb128 0x14
	.long	.LASF203
	.sleb128 44
	.uleb128 0x14
	.long	.LASF204
	.sleb128 45
	.uleb128 0x14
	.long	.LASF205
	.sleb128 46
	.uleb128 0x14
	.long	.LASF206
	.sleb128 47
	.uleb128 0x14
	.long	.LASF207
	.sleb128 48
	.uleb128 0x14
	.long	.LASF208
	.sleb128 49
	.uleb128 0x14
	.long	.LASF209
	.sleb128 50
	.uleb128 0x14
	.long	.LASF210
	.sleb128 51
	.uleb128 0x14
	.long	.LASF211
	.sleb128 52
	.uleb128 0x14
	.long	.LASF212
	.sleb128 53
	.uleb128 0x14
	.long	.LASF213
	.sleb128 54
	.uleb128 0x14
	.long	.LASF214
	.sleb128 55
	.uleb128 0x14
	.long	.LASF215
	.sleb128 56
	.uleb128 0x14
	.long	.LASF216
	.sleb128 57
	.uleb128 0x14
	.long	.LASF217
	.sleb128 58
	.uleb128 0x14
	.long	.LASF218
	.sleb128 59
	.uleb128 0x14
	.long	.LASF219
	.sleb128 60
	.uleb128 0x14
	.long	.LASF220
	.sleb128 61
	.uleb128 0x14
	.long	.LASF221
	.sleb128 62
	.uleb128 0x14
	.long	.LASF222
	.sleb128 63
	.uleb128 0x14
	.long	.LASF223
	.sleb128 64
	.uleb128 0x14
	.long	.LASF224
	.sleb128 65
	.uleb128 0x14
	.long	.LASF225
	.sleb128 66
	.uleb128 0x14
	.long	.LASF226
	.sleb128 67
	.uleb128 0x14
	.long	.LASF227
	.sleb128 68
	.uleb128 0x14
	.long	.LASF228
	.sleb128 69
	.uleb128 0x14
	.long	.LASF229
	.sleb128 70
	.uleb128 0x14
	.long	.LASF230
	.sleb128 71
	.uleb128 0x14
	.long	.LASF231
	.sleb128 72
	.uleb128 0x14
	.long	.LASF232
	.sleb128 73
	.uleb128 0x14
	.long	.LASF233
	.sleb128 74
	.uleb128 0x14
	.long	.LASF234
	.sleb128 75
	.uleb128 0x14
	.long	.LASF235
	.sleb128 76
	.uleb128 0x14
	.long	.LASF236
	.sleb128 77
	.uleb128 0x14
	.long	.LASF237
	.sleb128 78
	.uleb128 0x14
	.long	.LASF238
	.sleb128 79
	.uleb128 0x14
	.long	.LASF239
	.sleb128 80
	.uleb128 0x14
	.long	.LASF240
	.sleb128 81
	.uleb128 0x14
	.long	.LASF241
	.sleb128 82
	.uleb128 0x14
	.long	.LASF242
	.sleb128 83
	.uleb128 0x14
	.long	.LASF243
	.sleb128 84
	.uleb128 0x14
	.long	.LASF244
	.sleb128 85
	.uleb128 0x14
	.long	.LASF245
	.sleb128 86
	.uleb128 0x14
	.long	.LASF246
	.sleb128 87
	.uleb128 0x14
	.long	.LASF247
	.sleb128 88
	.uleb128 0x14
	.long	.LASF248
	.sleb128 89
	.uleb128 0x14
	.long	.LASF249
	.sleb128 90
	.uleb128 0x14
	.long	.LASF250
	.sleb128 91
	.uleb128 0x14
	.long	.LASF251
	.sleb128 92
	.uleb128 0x14
	.long	.LASF252
	.sleb128 93
	.uleb128 0x14
	.long	.LASF253
	.sleb128 94
	.uleb128 0x14
	.long	.LASF254
	.sleb128 95
	.uleb128 0x14
	.long	.LASF255
	.sleb128 96
	.uleb128 0x14
	.long	.LASF256
	.sleb128 97
	.uleb128 0x14
	.long	.LASF257
	.sleb128 98
	.uleb128 0x14
	.long	.LASF258
	.sleb128 99
	.uleb128 0x14
	.long	.LASF259
	.sleb128 100
	.uleb128 0x14
	.long	.LASF260
	.sleb128 101
	.uleb128 0x14
	.long	.LASF261
	.sleb128 102
	.uleb128 0x14
	.long	.LASF262
	.sleb128 103
	.uleb128 0x14
	.long	.LASF263
	.sleb128 104
	.uleb128 0x14
	.long	.LASF264
	.sleb128 105
	.uleb128 0x14
	.long	.LASF265
	.sleb128 106
	.uleb128 0x14
	.long	.LASF266
	.sleb128 107
	.uleb128 0x14
	.long	.LASF267
	.sleb128 108
	.uleb128 0x14
	.long	.LASF268
	.sleb128 109
	.uleb128 0x14
	.long	.LASF269
	.sleb128 110
	.uleb128 0x14
	.long	.LASF270
	.sleb128 111
	.uleb128 0x14
	.long	.LASF271
	.sleb128 112
	.uleb128 0x14
	.long	.LASF272
	.sleb128 113
	.uleb128 0x14
	.long	.LASF273
	.sleb128 114
	.uleb128 0x14
	.long	.LASF274
	.sleb128 115
	.uleb128 0x14
	.long	.LASF275
	.sleb128 116
	.uleb128 0x14
	.long	.LASF276
	.sleb128 117
	.uleb128 0x14
	.long	.LASF277
	.sleb128 118
	.uleb128 0x14
	.long	.LASF278
	.sleb128 119
	.uleb128 0x14
	.long	.LASF279
	.sleb128 120
	.uleb128 0x14
	.long	.LASF280
	.sleb128 121
	.uleb128 0x14
	.long	.LASF281
	.sleb128 122
	.uleb128 0x14
	.long	.LASF282
	.sleb128 123
	.uleb128 0x14
	.long	.LASF283
	.sleb128 124
	.uleb128 0x14
	.long	.LASF284
	.sleb128 125
	.uleb128 0x14
	.long	.LASF285
	.sleb128 126
	.uleb128 0x14
	.long	.LASF286
	.sleb128 127
	.uleb128 0x14
	.long	.LASF287
	.sleb128 128
	.uleb128 0x14
	.long	.LASF288
	.sleb128 129
	.uleb128 0x14
	.long	.LASF289
	.sleb128 130
	.uleb128 0x14
	.long	.LASF290
	.sleb128 131
	.uleb128 0x14
	.long	.LASF291
	.sleb128 132
	.uleb128 0x14
	.long	.LASF292
	.sleb128 133
	.uleb128 0x14
	.long	.LASF293
	.sleb128 134
	.uleb128 0x14
	.long	.LASF294
	.sleb128 135
	.uleb128 0x14
	.long	.LASF295
	.sleb128 136
	.uleb128 0x14
	.long	.LASF296
	.sleb128 137
	.uleb128 0x14
	.long	.LASF297
	.sleb128 138
	.uleb128 0x14
	.long	.LASF298
	.sleb128 139
	.uleb128 0x14
	.long	.LASF299
	.sleb128 140
	.uleb128 0x14
	.long	.LASF300
	.sleb128 141
	.uleb128 0x14
	.long	.LASF301
	.sleb128 142
	.uleb128 0x14
	.long	.LASF302
	.sleb128 143
	.uleb128 0x14
	.long	.LASF303
	.sleb128 144
	.uleb128 0x14
	.long	.LASF304
	.sleb128 145
	.uleb128 0x14
	.long	.LASF305
	.sleb128 146
	.uleb128 0x14
	.long	.LASF306
	.sleb128 147
	.byte	0
	.uleb128 0x15
	.long	.LASF307
	.byte	0x4
	.byte	0x2
	.byte	0x54
	.long	0xc7f
	.uleb128 0x14
	.long	.LASF308
	.sleb128 0
	.uleb128 0x14
	.long	.LASF309
	.sleb128 1
	.uleb128 0x14
	.long	.LASF310
	.sleb128 2
	.uleb128 0x14
	.long	.LASF311
	.sleb128 3
	.uleb128 0x14
	.long	.LASF312
	.sleb128 4
	.uleb128 0x14
	.long	.LASF313
	.sleb128 5
	.uleb128 0x14
	.long	.LASF314
	.sleb128 6
	.uleb128 0x14
	.long	.LASF315
	.sleb128 7
	.uleb128 0x14
	.long	.LASF316
	.sleb128 8
	.uleb128 0x14
	.long	.LASF317
	.sleb128 9
	.uleb128 0x14
	.long	.LASF318
	.sleb128 10
	.uleb128 0x14
	.long	.LASF319
	.sleb128 11
	.uleb128 0x14
	.long	.LASF320
	.sleb128 12
	.uleb128 0x14
	.long	.LASF321
	.sleb128 13
	.uleb128 0x14
	.long	.LASF322
	.sleb128 14
	.uleb128 0x14
	.long	.LASF323
	.sleb128 15
	.uleb128 0x14
	.long	.LASF324
	.sleb128 16
	.uleb128 0x14
	.long	.LASF325
	.sleb128 17
	.uleb128 0x14
	.long	.LASF326
	.sleb128 18
	.uleb128 0x14
	.long	.LASF327
	.sleb128 19
	.uleb128 0x14
	.long	.LASF328
	.sleb128 20
	.uleb128 0x14
	.long	.LASF329
	.sleb128 21
	.uleb128 0x14
	.long	.LASF330
	.sleb128 22
	.uleb128 0x14
	.long	.LASF331
	.sleb128 23
	.uleb128 0x14
	.long	.LASF332
	.sleb128 24
	.uleb128 0x14
	.long	.LASF333
	.sleb128 25
	.uleb128 0x14
	.long	.LASF334
	.sleb128 26
	.uleb128 0x14
	.long	.LASF335
	.sleb128 27
	.uleb128 0x14
	.long	.LASF336
	.sleb128 28
	.uleb128 0x14
	.long	.LASF337
	.sleb128 29
	.uleb128 0x14
	.long	.LASF338
	.sleb128 30
	.uleb128 0x14
	.long	.LASF339
	.sleb128 31
	.uleb128 0x14
	.long	.LASF340
	.sleb128 32
	.uleb128 0x14
	.long	.LASF341
	.sleb128 33
	.uleb128 0x14
	.long	.LASF342
	.sleb128 34
	.uleb128 0x14
	.long	.LASF343
	.sleb128 35
	.uleb128 0x14
	.long	.LASF344
	.sleb128 36
	.uleb128 0x14
	.long	.LASF345
	.sleb128 37
	.uleb128 0x14
	.long	.LASF346
	.sleb128 38
	.uleb128 0x14
	.long	.LASF347
	.sleb128 39
	.uleb128 0x14
	.long	.LASF348
	.sleb128 40
	.uleb128 0x14
	.long	.LASF349
	.sleb128 41
	.uleb128 0x14
	.long	.LASF350
	.sleb128 42
	.uleb128 0x14
	.long	.LASF351
	.sleb128 43
	.uleb128 0x14
	.long	.LASF352
	.sleb128 44
	.uleb128 0x14
	.long	.LASF353
	.sleb128 45
	.uleb128 0x14
	.long	.LASF354
	.sleb128 46
	.uleb128 0x14
	.long	.LASF355
	.sleb128 47
	.uleb128 0x14
	.long	.LASF356
	.sleb128 48
	.uleb128 0x14
	.long	.LASF357
	.sleb128 49
	.uleb128 0x14
	.long	.LASF358
	.sleb128 50
	.uleb128 0x14
	.long	.LASF359
	.sleb128 51
	.uleb128 0x14
	.long	.LASF360
	.sleb128 52
	.uleb128 0x14
	.long	.LASF361
	.sleb128 53
	.uleb128 0x14
	.long	.LASF362
	.sleb128 54
	.uleb128 0x14
	.long	.LASF363
	.sleb128 55
	.uleb128 0x14
	.long	.LASF364
	.sleb128 56
	.uleb128 0x14
	.long	.LASF365
	.sleb128 57
	.uleb128 0x14
	.long	.LASF366
	.sleb128 58
	.uleb128 0x14
	.long	.LASF367
	.sleb128 59
	.uleb128 0x14
	.long	.LASF368
	.sleb128 60
	.uleb128 0x14
	.long	.LASF369
	.sleb128 61
	.uleb128 0x14
	.long	.LASF370
	.sleb128 62
	.uleb128 0x14
	.long	.LASF371
	.sleb128 63
	.uleb128 0x14
	.long	.LASF372
	.sleb128 64
	.uleb128 0x14
	.long	.LASF373
	.sleb128 65
	.uleb128 0x14
	.long	.LASF374
	.sleb128 66
	.uleb128 0x14
	.long	.LASF375
	.sleb128 67
	.uleb128 0x14
	.long	.LASF376
	.sleb128 68
	.uleb128 0x14
	.long	.LASF377
	.sleb128 69
	.uleb128 0x14
	.long	.LASF378
	.sleb128 70
	.uleb128 0x14
	.long	.LASF379
	.sleb128 71
	.uleb128 0x14
	.long	.LASF380
	.sleb128 72
	.uleb128 0x14
	.long	.LASF381
	.sleb128 73
	.uleb128 0x14
	.long	.LASF382
	.sleb128 74
	.uleb128 0x14
	.long	.LASF383
	.sleb128 75
	.uleb128 0x14
	.long	.LASF384
	.sleb128 76
	.uleb128 0x14
	.long	.LASF385
	.sleb128 77
	.uleb128 0x14
	.long	.LASF386
	.sleb128 78
	.uleb128 0x14
	.long	.LASF387
	.sleb128 79
	.uleb128 0x14
	.long	.LASF388
	.sleb128 80
	.uleb128 0x14
	.long	.LASF389
	.sleb128 81
	.uleb128 0x14
	.long	.LASF390
	.sleb128 82
	.uleb128 0x14
	.long	.LASF391
	.sleb128 83
	.uleb128 0x14
	.long	.LASF392
	.sleb128 84
	.uleb128 0x14
	.long	.LASF393
	.sleb128 85
	.uleb128 0x14
	.long	.LASF394
	.sleb128 86
	.uleb128 0x14
	.long	.LASF395
	.sleb128 87
	.uleb128 0x14
	.long	.LASF396
	.sleb128 88
	.uleb128 0x14
	.long	.LASF397
	.sleb128 89
	.uleb128 0x14
	.long	.LASF398
	.sleb128 90
	.uleb128 0x14
	.long	.LASF399
	.sleb128 91
	.uleb128 0x14
	.long	.LASF400
	.sleb128 92
	.uleb128 0x14
	.long	.LASF401
	.sleb128 93
	.uleb128 0x14
	.long	.LASF402
	.sleb128 94
	.uleb128 0x14
	.long	.LASF403
	.sleb128 95
	.byte	0
	.uleb128 0xe
	.long	.LASF404
	.byte	0x18
	.byte	0x2
	.byte	0x79
	.long	0xe1b
	.uleb128 0xf
	.long	.LASF405
	.byte	0x2
	.byte	0x7b
	.long	0x43
	.byte	0
	.uleb128 0xf
	.long	.LASF9
	.byte	0x2
	.byte	0x7c
	.long	0x43
	.byte	0x8
	.uleb128 0x16
	.long	.LASF406
	.byte	0x2
	.byte	0x7e
	.long	0x169
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x16
	.long	.LASF407
	.byte	0x2
	.byte	0x80
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x16
	.long	.LASF408
	.byte	0x2
	.byte	0x81
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x16
	.long	.LASF409
	.byte	0x2
	.byte	0x82
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x16
	.long	.LASF410
	.byte	0x2
	.byte	0x83
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x16
	.long	.LASF411
	.byte	0x2
	.byte	0x84
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x16
	.long	.LASF412
	.byte	0x2
	.byte	0x85
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x16
	.long	.LASF413
	.byte	0x2
	.byte	0x86
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x16
	.long	.LASF414
	.byte	0x2
	.byte	0x87
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x16
	.long	.LASF415
	.byte	0x2
	.byte	0x89
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x16
	.long	.LASF416
	.byte	0x2
	.byte	0x8a
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x16
	.long	.LASF417
	.byte	0x2
	.byte	0x8b
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x16
	.long	.LASF418
	.byte	0x2
	.byte	0x8c
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x16
	.long	.LASF419
	.byte	0x2
	.byte	0x8d
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x16
	.long	.LASF420
	.byte	0x2
	.byte	0x8e
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x16
	.long	.LASF421
	.byte	0x2
	.byte	0x8f
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x16
	.long	.LASF422
	.byte	0x2
	.byte	0x90
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x16
	.long	.LASF423
	.byte	0x2
	.byte	0x92
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x16
	.long	.LASF424
	.byte	0x2
	.byte	0x93
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x16
	.long	.LASF425
	.byte	0x2
	.byte	0x94
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x16
	.long	.LASF426
	.byte	0x2
	.byte	0x95
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x16
	.long	.LASF427
	.byte	0x2
	.byte	0x96
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x16
	.long	.LASF428
	.byte	0x2
	.byte	0x97
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.long	.LASF429
	.byte	0x2
	.byte	0x98
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x16
	.long	.LASF430
	.byte	0x2
	.byte	0x99
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.byte	0x10
	.byte	0x2
	.value	0x2c9
	.long	0xe3f
	.uleb128 0x18
	.string	"low"
	.byte	0x2
	.value	0x2ca
	.long	0x18f
	.byte	0
	.uleb128 0x11
	.long	.LASF431
	.byte	0x2
	.value	0x2cb
	.long	0x17d
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF432
	.byte	0x30
	.byte	0x2
	.value	0x2c1
	.long	0xe74
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x2c3
	.long	0xc7f
	.byte	0
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF2
	.byte	0x2
	.value	0x2cc
	.long	0xe1b
	.byte	0x20
	.byte	0
	.uleb128 0x1a
	.byte	0x18
	.byte	0xb
	.byte	0x6b
	.long	0xe87
	.uleb128 0x1b
	.string	"r"
	.byte	0xb
	.byte	0x6c
	.long	0xe87
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x17d
	.long	0xe97
	.uleb128 0xd
	.long	0x10a
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF433
	.byte	0xb
	.byte	0x6d
	.long	0xe74
	.uleb128 0x19
	.long	.LASF434
	.byte	0x38
	.byte	0x2
	.value	0x2de
	.long	0xed7
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x2e0
	.long	0xc7f
	.byte	0
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF3
	.byte	0x2
	.value	0x2e2
	.long	0xe97
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.long	.LASF435
	.byte	0x30
	.byte	0x2
	.value	0x2e9
	.long	0xf19
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x2eb
	.long	0xc7f
	.byte	0
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF436
	.byte	0x2
	.value	0x2ed
	.long	0x103
	.byte	0x20
	.uleb128 0x11
	.long	.LASF437
	.byte	0x2
	.value	0x2ee
	.long	0x3db
	.byte	0x28
	.byte	0
	.uleb128 0x19
	.long	.LASF438
	.byte	0x30
	.byte	0x2
	.value	0x2f5
	.long	0xf5b
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x2f7
	.long	0xc7f
	.byte	0
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF439
	.byte	0x2
	.value	0x2f9
	.long	0x43
	.byte	0x20
	.uleb128 0x11
	.long	.LASF440
	.byte	0x2
	.value	0x2fa
	.long	0x43
	.byte	0x28
	.byte	0
	.uleb128 0x19
	.long	.LASF441
	.byte	0x28
	.byte	0x2
	.value	0x300
	.long	0xf90
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x302
	.long	0xc7f
	.byte	0
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF442
	.byte	0x2
	.value	0x304
	.long	0x43
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.long	.LASF443
	.byte	0x18
	.byte	0xc
	.byte	0xa1
	.long	0xfc1
	.uleb128 0xf
	.long	.LASF444
	.byte	0xc
	.byte	0xa3
	.long	0x1c8
	.byte	0
	.uleb128 0xf
	.long	.LASF445
	.byte	0xc
	.byte	0xa4
	.long	0xfc1
	.byte	0x8
	.uleb128 0xf
	.long	.LASF446
	.byte	0xc
	.byte	0xa5
	.long	0x361
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf90
	.uleb128 0xe
	.long	.LASF447
	.byte	0x58
	.byte	0xc
	.byte	0xa8
	.long	0x1079
	.uleb128 0xf
	.long	.LASF448
	.byte	0xc
	.byte	0xaa
	.long	0x17d
	.byte	0
	.uleb128 0xf
	.long	.LASF449
	.byte	0xc
	.byte	0xab
	.long	0xfc1
	.byte	0x8
	.uleb128 0xf
	.long	.LASF450
	.byte	0xc
	.byte	0xac
	.long	0x1c8
	.byte	0x10
	.uleb128 0xf
	.long	.LASF451
	.byte	0xc
	.byte	0xad
	.long	0x1c8
	.byte	0x18
	.uleb128 0xf
	.long	.LASF452
	.byte	0xc
	.byte	0xae
	.long	0x1c8
	.byte	0x20
	.uleb128 0xf
	.long	.LASF453
	.byte	0xc
	.byte	0xaf
	.long	0x17d
	.byte	0x28
	.uleb128 0xf
	.long	.LASF454
	.byte	0xc
	.byte	0xb0
	.long	0x103
	.byte	0x30
	.uleb128 0xf
	.long	.LASF455
	.byte	0xc
	.byte	0xb5
	.long	0x108d
	.byte	0x38
	.uleb128 0xf
	.long	.LASF456
	.byte	0xc
	.byte	0xb6
	.long	0x10a3
	.byte	0x40
	.uleb128 0xf
	.long	.LASF457
	.byte	0xc
	.byte	0xb7
	.long	0x170
	.byte	0x48
	.uleb128 0x16
	.long	.LASF458
	.byte	0xc
	.byte	0xbd
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x16
	.long	.LASF459
	.byte	0xc
	.byte	0xbe
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x16
	.long	.LASF460
	.byte	0xc
	.byte	0xc2
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x1c
	.long	0xfc1
	.long	0x108d
	.uleb128 0x1d
	.long	0x170
	.uleb128 0x1d
	.long	0x17d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1079
	.uleb128 0x1e
	.long	0x10a3
	.uleb128 0x1d
	.long	0x170
	.uleb128 0x1d
	.long	0xfc1
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1093
	.uleb128 0xe
	.long	.LASF461
	.byte	0x10
	.byte	0xd
	.byte	0x1a
	.long	0x10ce
	.uleb128 0x1b
	.string	"len"
	.byte	0xd
	.byte	0x1c
	.long	0x169
	.byte	0
	.uleb128 0x1b
	.string	"str"
	.byte	0xd
	.byte	0x1d
	.long	0x10ce
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10d4
	.uleb128 0x9
	.long	0x196
	.uleb128 0x19
	.long	.LASF462
	.byte	0x28
	.byte	0x2
	.value	0x317
	.long	0x1100
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x319
	.long	0xc7f
	.byte	0
	.uleb128 0x18
	.string	"id"
	.byte	0x2
	.value	0x31a
	.long	0x10a9
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.long	.LASF463
	.byte	0x28
	.byte	0x2
	.value	0x321
	.long	0x1135
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x323
	.long	0xc7f
	.byte	0
	.uleb128 0x11
	.long	.LASF464
	.byte	0x2
	.value	0x324
	.long	0x43
	.byte	0x18
	.uleb128 0x11
	.long	.LASF465
	.byte	0x2
	.value	0x325
	.long	0x43
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.long	.LASF466
	.byte	0x28
	.byte	0x2
	.value	0x32e
	.long	0x1168
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x330
	.long	0xc7f
	.byte	0
	.uleb128 0x11
	.long	.LASF436
	.byte	0x2
	.value	0x331
	.long	0x103
	.byte	0x18
	.uleb128 0x18
	.string	"a"
	.byte	0x2
	.value	0x332
	.long	0x1168
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.long	0x43
	.long	0x1178
	.uleb128 0xd
	.long	0x10a
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF467
	.byte	0x28
	.byte	0x2
	.value	0x36f
	.long	0x11ad
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x371
	.long	0xc7f
	.byte	0
	.uleb128 0x11
	.long	.LASF468
	.byte	0x2
	.value	0x372
	.long	0x103
	.byte	0x18
	.uleb128 0x11
	.long	.LASF469
	.byte	0x2
	.value	0x373
	.long	0x1168
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.long	.LASF470
	.byte	0x50
	.byte	0x2
	.value	0x3a3
	.long	0x1246
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x3a5
	.long	0xc7f
	.byte	0
	.uleb128 0x1f
	.long	.LASF471
	.byte	0x2
	.value	0x3a7
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF472
	.byte	0x2
	.value	0x3a8
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF473
	.byte	0x2
	.value	0x3a9
	.long	0x169
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x11
	.long	.LASF474
	.byte	0x2
	.value	0x3ab
	.long	0x43
	.byte	0x20
	.uleb128 0x11
	.long	.LASF475
	.byte	0x2
	.value	0x3ac
	.long	0x43
	.byte	0x28
	.uleb128 0x11
	.long	.LASF476
	.byte	0x2
	.value	0x3ad
	.long	0x43
	.byte	0x30
	.uleb128 0x11
	.long	.LASF477
	.byte	0x2
	.value	0x3ae
	.long	0x43
	.byte	0x38
	.uleb128 0x11
	.long	.LASF478
	.byte	0x2
	.value	0x3af
	.long	0x43
	.byte	0x40
	.uleb128 0x11
	.long	.LASF479
	.byte	0x2
	.value	0x3b0
	.long	0x43
	.byte	0x48
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x2
	.value	0x4d8
	.long	0x1268
	.uleb128 0x7
	.long	.LASF480
	.byte	0x2
	.value	0x4d8
	.long	0x103
	.uleb128 0x7
	.long	.LASF437
	.byte	0x2
	.value	0x4d8
	.long	0x1c8
	.byte	0
	.uleb128 0x19
	.long	.LASF481
	.byte	0xa8
	.byte	0x2
	.value	0x4b8
	.long	0x147d
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x4ba
	.long	0xc7f
	.byte	0
	.uleb128 0x11
	.long	.LASF482
	.byte	0x2
	.value	0x4bb
	.long	0x43
	.byte	0x18
	.uleb128 0x11
	.long	.LASF483
	.byte	0x2
	.value	0x4bc
	.long	0x43
	.byte	0x20
	.uleb128 0x11
	.long	.LASF484
	.byte	0x2
	.value	0x4bd
	.long	0x43
	.byte	0x28
	.uleb128 0x11
	.long	.LASF485
	.byte	0x2
	.value	0x4be
	.long	0x43
	.byte	0x30
	.uleb128 0x18
	.string	"uid"
	.byte	0x2
	.value	0x4bf
	.long	0x169
	.byte	0x38
	.uleb128 0x1f
	.long	.LASF486
	.byte	0x2
	.value	0x4c1
	.long	0x169
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF487
	.byte	0x2
	.value	0x4c2
	.long	0x169
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF488
	.byte	0x2
	.value	0x4c4
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF489
	.byte	0x2
	.value	0x4c5
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF490
	.byte	0x2
	.value	0x4c6
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF491
	.byte	0x2
	.value	0x4c7
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF492
	.byte	0x2
	.value	0x4c8
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF493
	.byte	0x2
	.value	0x4c9
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF494
	.byte	0x2
	.value	0x4ca
	.long	0x169
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF423
	.byte	0x2
	.value	0x4cc
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF424
	.byte	0x2
	.value	0x4cd
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF425
	.byte	0x2
	.value	0x4ce
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF426
	.byte	0x2
	.value	0x4cf
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF427
	.byte	0x2
	.value	0x4d0
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF428
	.byte	0x2
	.value	0x4d1
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF429
	.byte	0x2
	.value	0x4d2
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF495
	.byte	0x2
	.value	0x4d3
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x11
	.long	.LASF496
	.byte	0x2
	.value	0x4d5
	.long	0x169
	.byte	0x40
	.uleb128 0x11
	.long	.LASF497
	.byte	0x2
	.value	0x4d6
	.long	0x43
	.byte	0x48
	.uleb128 0x11
	.long	.LASF498
	.byte	0x2
	.value	0x4d7
	.long	0x43
	.byte	0x50
	.uleb128 0x11
	.long	.LASF499
	.byte	0x2
	.value	0x4d8
	.long	0x1246
	.byte	0x58
	.uleb128 0x11
	.long	.LASF500
	.byte	0x2
	.value	0x4d9
	.long	0x43
	.byte	0x60
	.uleb128 0x11
	.long	.LASF501
	.byte	0x2
	.value	0x4da
	.long	0x43
	.byte	0x68
	.uleb128 0x11
	.long	.LASF502
	.byte	0x2
	.value	0x4db
	.long	0x43
	.byte	0x70
	.uleb128 0x11
	.long	.LASF503
	.byte	0x2
	.value	0x4dc
	.long	0x43
	.byte	0x78
	.uleb128 0x11
	.long	.LASF504
	.byte	0x2
	.value	0x4dd
	.long	0x43
	.byte	0x80
	.uleb128 0x11
	.long	.LASF505
	.byte	0x2
	.value	0x4de
	.long	0x43
	.byte	0x88
	.uleb128 0x11
	.long	.LASF506
	.byte	0x2
	.value	0x4df
	.long	0x43
	.byte	0x90
	.uleb128 0x11
	.long	.LASF507
	.byte	0x2
	.value	0x4e0
	.long	0x17d
	.byte	0x98
	.uleb128 0x11
	.long	.LASF508
	.byte	0x2
	.value	0x4e2
	.long	0x1482
	.byte	0xa0
	.byte	0
	.uleb128 0x4
	.long	.LASF510
	.uleb128 0x3
	.byte	0x8
	.long	0x147d
	.uleb128 0x17
	.byte	0x4
	.byte	0x2
	.value	0x717
	.long	0x14b2
	.uleb128 0x1f
	.long	.LASF496
	.byte	0x2
	.value	0x717
	.long	0x169
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF511
	.byte	0x2
	.value	0x717
	.long	0x169
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x2
	.value	0x70e
	.long	0x14da
	.uleb128 0x8
	.string	"f"
	.byte	0x2
	.value	0x711
	.long	0xa12
	.uleb128 0x8
	.string	"i"
	.byte	0x2
	.value	0x714
	.long	0x17d
	.uleb128 0x8
	.string	"a"
	.byte	0x2
	.value	0x717
	.long	0x1488
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x2
	.value	0x72c
	.long	0x150c
	.uleb128 0x8
	.string	"f"
	.byte	0x2
	.value	0x72d
	.long	0x1511
	.uleb128 0x8
	.string	"r"
	.byte	0x2
	.value	0x72e
	.long	0x2d
	.uleb128 0x8
	.string	"t"
	.byte	0x2
	.value	0x72f
	.long	0x43
	.uleb128 0x8
	.string	"i"
	.byte	0x2
	.value	0x730
	.long	0x103
	.byte	0
	.uleb128 0x4
	.long	.LASF512
	.uleb128 0x3
	.byte	0x8
	.long	0x150c
	.uleb128 0x19
	.long	.LASF513
	.byte	0xd0
	.byte	0x2
	.value	0x6dc
	.long	0x189b
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.value	0x6de
	.long	0xc7f
	.byte	0
	.uleb128 0x11
	.long	.LASF514
	.byte	0x2
	.value	0x6df
	.long	0x3db
	.byte	0x18
	.uleb128 0x11
	.long	.LASF515
	.byte	0x2
	.value	0x6e0
	.long	0x103
	.byte	0x20
	.uleb128 0x18
	.string	"uid"
	.byte	0x2
	.value	0x6e1
	.long	0x169
	.byte	0x24
	.uleb128 0x11
	.long	.LASF483
	.byte	0x2
	.value	0x6e2
	.long	0x43
	.byte	0x28
	.uleb128 0x1f
	.long	.LASF487
	.byte	0x2
	.value	0x6e3
	.long	0x169
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF516
	.byte	0x2
	.value	0x6e5
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF517
	.byte	0x2
	.value	0x6e6
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF518
	.byte	0x2
	.value	0x6e7
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF519
	.byte	0x2
	.value	0x6e8
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF520
	.byte	0x2
	.value	0x6e9
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF521
	.byte	0x2
	.value	0x6ea
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF522
	.byte	0x2
	.value	0x6eb
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF472
	.byte	0x2
	.value	0x6ec
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF523
	.byte	0x2
	.value	0x6ee
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF524
	.byte	0x2
	.value	0x6ef
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF525
	.byte	0x2
	.value	0x6f0
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF526
	.byte	0x2
	.value	0x6f1
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF527
	.byte	0x2
	.value	0x6f2
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF528
	.byte	0x2
	.value	0x6f3
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF529
	.byte	0x2
	.value	0x6f4
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF530
	.byte	0x2
	.value	0x6f5
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF531
	.byte	0x2
	.value	0x6f7
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF532
	.byte	0x2
	.value	0x6f8
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF533
	.byte	0x2
	.value	0x6f9
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF534
	.byte	0x2
	.value	0x6fa
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF535
	.byte	0x2
	.value	0x6fb
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF536
	.byte	0x2
	.value	0x6fc
	.long	0x169
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF537
	.byte	0x2
	.value	0x6fd
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF494
	.byte	0x2
	.value	0x6ff
	.long	0x169
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF538
	.byte	0x2
	.value	0x700
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF495
	.byte	0x2
	.value	0x701
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF539
	.byte	0x2
	.value	0x702
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF423
	.byte	0x2
	.value	0x705
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF424
	.byte	0x2
	.value	0x706
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF425
	.byte	0x2
	.value	0x707
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF426
	.byte	0x2
	.value	0x708
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF427
	.byte	0x2
	.value	0x709
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF428
	.byte	0x2
	.value	0x70a
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF429
	.byte	0x2
	.value	0x70b
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF540
	.byte	0x2
	.value	0x70c
	.long	0x169
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x18
	.string	"u1"
	.byte	0x2
	.value	0x718
	.long	0x14b2
	.byte	0x38
	.uleb128 0x11
	.long	.LASF484
	.byte	0x2
	.value	0x71a
	.long	0x43
	.byte	0x40
	.uleb128 0x11
	.long	.LASF500
	.byte	0x2
	.value	0x71b
	.long	0x43
	.byte	0x48
	.uleb128 0x11
	.long	.LASF506
	.byte	0x2
	.value	0x71c
	.long	0x43
	.byte	0x50
	.uleb128 0x11
	.long	.LASF541
	.byte	0x2
	.value	0x71d
	.long	0x43
	.byte	0x58
	.uleb128 0x11
	.long	.LASF542
	.byte	0x2
	.value	0x71e
	.long	0x43
	.byte	0x60
	.uleb128 0x11
	.long	.LASF543
	.byte	0x2
	.value	0x71f
	.long	0x43
	.byte	0x68
	.uleb128 0x11
	.long	.LASF477
	.byte	0x2
	.value	0x720
	.long	0x43
	.byte	0x70
	.uleb128 0x11
	.long	.LASF544
	.byte	0x2
	.value	0x721
	.long	0x43
	.byte	0x78
	.uleb128 0x11
	.long	.LASF545
	.byte	0x2
	.value	0x722
	.long	0x43
	.byte	0x80
	.uleb128 0x11
	.long	.LASF485
	.byte	0x2
	.value	0x723
	.long	0x43
	.byte	0x88
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x11
	.long	.LASF546
	.byte	0x2
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x18
	.string	"u2"
	.byte	0x2
	.value	0x731
	.long	0x14da
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF547
	.byte	0x2
	.value	0x734
	.long	0x43
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF548
	.byte	0x2
	.value	0x738
	.long	0x43
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF549
	.byte	0x2
	.value	0x73a
	.long	0x43
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF550
	.byte	0x2
	.value	0x73b
	.long	0x17d
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF508
	.byte	0x2
	.value	0x73d
	.long	0x18a0
	.byte	0xc8
	.byte	0
	.uleb128 0x4
	.long	.LASF551
	.uleb128 0x3
	.byte	0x8
	.long	0x189b
	.uleb128 0x21
	.long	.LASF552
	.byte	0x4
	.byte	0x2
	.value	0x757
	.long	0x19ec
	.uleb128 0x14
	.long	.LASF553
	.sleb128 0
	.uleb128 0x14
	.long	.LASF554
	.sleb128 1
	.uleb128 0x14
	.long	.LASF555
	.sleb128 2
	.uleb128 0x14
	.long	.LASF556
	.sleb128 3
	.uleb128 0x14
	.long	.LASF557
	.sleb128 4
	.uleb128 0x14
	.long	.LASF558
	.sleb128 5
	.uleb128 0x14
	.long	.LASF559
	.sleb128 6
	.uleb128 0x14
	.long	.LASF560
	.sleb128 7
	.uleb128 0x14
	.long	.LASF561
	.sleb128 8
	.uleb128 0x14
	.long	.LASF562
	.sleb128 9
	.uleb128 0x14
	.long	.LASF563
	.sleb128 10
	.uleb128 0x14
	.long	.LASF564
	.sleb128 11
	.uleb128 0x14
	.long	.LASF565
	.sleb128 12
	.uleb128 0x14
	.long	.LASF566
	.sleb128 13
	.uleb128 0x14
	.long	.LASF567
	.sleb128 14
	.uleb128 0x14
	.long	.LASF568
	.sleb128 15
	.uleb128 0x14
	.long	.LASF569
	.sleb128 16
	.uleb128 0x14
	.long	.LASF570
	.sleb128 17
	.uleb128 0x14
	.long	.LASF571
	.sleb128 18
	.uleb128 0x14
	.long	.LASF572
	.sleb128 19
	.uleb128 0x14
	.long	.LASF573
	.sleb128 20
	.uleb128 0x14
	.long	.LASF574
	.sleb128 21
	.uleb128 0x14
	.long	.LASF575
	.sleb128 22
	.uleb128 0x14
	.long	.LASF576
	.sleb128 23
	.uleb128 0x14
	.long	.LASF577
	.sleb128 24
	.uleb128 0x14
	.long	.LASF578
	.sleb128 25
	.uleb128 0x14
	.long	.LASF579
	.sleb128 26
	.uleb128 0x14
	.long	.LASF580
	.sleb128 27
	.uleb128 0x14
	.long	.LASF581
	.sleb128 28
	.uleb128 0x14
	.long	.LASF582
	.sleb128 29
	.uleb128 0x14
	.long	.LASF583
	.sleb128 30
	.uleb128 0x14
	.long	.LASF584
	.sleb128 31
	.uleb128 0x14
	.long	.LASF585
	.sleb128 32
	.uleb128 0x14
	.long	.LASF586
	.sleb128 33
	.uleb128 0x14
	.long	.LASF587
	.sleb128 34
	.uleb128 0x14
	.long	.LASF588
	.sleb128 35
	.uleb128 0x14
	.long	.LASF589
	.sleb128 36
	.uleb128 0x14
	.long	.LASF590
	.sleb128 37
	.uleb128 0x14
	.long	.LASF591
	.sleb128 38
	.uleb128 0x14
	.long	.LASF592
	.sleb128 39
	.uleb128 0x14
	.long	.LASF593
	.sleb128 40
	.uleb128 0x14
	.long	.LASF594
	.sleb128 41
	.uleb128 0x14
	.long	.LASF595
	.sleb128 42
	.uleb128 0x14
	.long	.LASF596
	.sleb128 43
	.uleb128 0x14
	.long	.LASF597
	.sleb128 44
	.uleb128 0x14
	.long	.LASF598
	.sleb128 45
	.uleb128 0x14
	.long	.LASF599
	.sleb128 46
	.uleb128 0x14
	.long	.LASF600
	.sleb128 47
	.uleb128 0x14
	.long	.LASF601
	.sleb128 48
	.uleb128 0x14
	.long	.LASF602
	.sleb128 49
	.uleb128 0x14
	.long	.LASF603
	.sleb128 50
	.uleb128 0x14
	.long	.LASF604
	.sleb128 51
	.byte	0
	.uleb128 0x21
	.long	.LASF605
	.byte	0x4
	.byte	0x2
	.value	0x7e4
	.long	0x1a42
	.uleb128 0x14
	.long	.LASF606
	.sleb128 0
	.uleb128 0x14
	.long	.LASF607
	.sleb128 1
	.uleb128 0x14
	.long	.LASF608
	.sleb128 2
	.uleb128 0x14
	.long	.LASF609
	.sleb128 3
	.uleb128 0x14
	.long	.LASF610
	.sleb128 4
	.uleb128 0x14
	.long	.LASF611
	.sleb128 5
	.uleb128 0x14
	.long	.LASF612
	.sleb128 6
	.uleb128 0x14
	.long	.LASF613
	.sleb128 7
	.uleb128 0x14
	.long	.LASF614
	.sleb128 8
	.uleb128 0x14
	.long	.LASF615
	.sleb128 9
	.uleb128 0x14
	.long	.LASF616
	.sleb128 10
	.uleb128 0x14
	.long	.LASF617
	.sleb128 11
	.byte	0
	.uleb128 0x9
	.long	0x3db
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF618
	.uleb128 0x3
	.byte	0x8
	.long	0x43
	.uleb128 0x3
	.byte	0x8
	.long	0x1a47
	.uleb128 0x21
	.long	.LASF619
	.byte	0x4
	.byte	0x2
	.value	0x8b5
	.long	0x1a86
	.uleb128 0x14
	.long	.LASF620
	.sleb128 1
	.uleb128 0x14
	.long	.LASF621
	.sleb128 2
	.uleb128 0x14
	.long	.LASF622
	.sleb128 4
	.uleb128 0x14
	.long	.LASF623
	.sleb128 8
	.uleb128 0x14
	.long	.LASF624
	.sleb128 16
	.byte	0
	.uleb128 0x21
	.long	.LASF625
	.byte	0x4
	.byte	0x2
	.value	0x972
	.long	0x1abe
	.uleb128 0x14
	.long	.LASF626
	.sleb128 0
	.uleb128 0x14
	.long	.LASF627
	.sleb128 1
	.uleb128 0x14
	.long	.LASF628
	.sleb128 2
	.uleb128 0x14
	.long	.LASF629
	.sleb128 3
	.uleb128 0x14
	.long	.LASF630
	.sleb128 4
	.uleb128 0x14
	.long	.LASF631
	.sleb128 5
	.uleb128 0x14
	.long	.LASF632
	.sleb128 6
	.byte	0
	.uleb128 0x15
	.long	.LASF633
	.byte	0x4
	.byte	0xe
	.byte	0x85
	.long	0x1b91
	.uleb128 0x14
	.long	.LASF634
	.sleb128 0
	.uleb128 0x14
	.long	.LASF635
	.sleb128 1
	.uleb128 0x14
	.long	.LASF636
	.sleb128 2
	.uleb128 0x14
	.long	.LASF637
	.sleb128 3
	.uleb128 0x14
	.long	.LASF638
	.sleb128 4
	.uleb128 0x14
	.long	.LASF639
	.sleb128 5
	.uleb128 0x14
	.long	.LASF640
	.sleb128 6
	.uleb128 0x14
	.long	.LASF641
	.sleb128 7
	.uleb128 0x14
	.long	.LASF642
	.sleb128 8
	.uleb128 0x14
	.long	.LASF643
	.sleb128 9
	.uleb128 0x14
	.long	.LASF644
	.sleb128 10
	.uleb128 0x14
	.long	.LASF645
	.sleb128 11
	.uleb128 0x14
	.long	.LASF646
	.sleb128 12
	.uleb128 0x14
	.long	.LASF647
	.sleb128 13
	.uleb128 0x14
	.long	.LASF648
	.sleb128 14
	.uleb128 0x14
	.long	.LASF649
	.sleb128 15
	.uleb128 0x14
	.long	.LASF650
	.sleb128 16
	.uleb128 0x14
	.long	.LASF651
	.sleb128 17
	.uleb128 0x14
	.long	.LASF652
	.sleb128 18
	.uleb128 0x14
	.long	.LASF653
	.sleb128 19
	.uleb128 0x14
	.long	.LASF654
	.sleb128 20
	.uleb128 0x14
	.long	.LASF655
	.sleb128 21
	.uleb128 0x14
	.long	.LASF656
	.sleb128 22
	.uleb128 0x14
	.long	.LASF657
	.sleb128 23
	.uleb128 0x14
	.long	.LASF658
	.sleb128 24
	.uleb128 0x14
	.long	.LASF659
	.sleb128 25
	.uleb128 0x14
	.long	.LASF660
	.sleb128 26
	.uleb128 0x14
	.long	.LASF661
	.sleb128 27
	.uleb128 0x14
	.long	.LASF662
	.sleb128 28
	.uleb128 0x14
	.long	.LASF663
	.sleb128 29
	.uleb128 0x14
	.long	.LASF664
	.sleb128 30
	.uleb128 0x14
	.long	.LASF665
	.sleb128 31
	.uleb128 0x14
	.long	.LASF666
	.sleb128 32
	.byte	0
	.uleb128 0x15
	.long	.LASF667
	.byte	0x4
	.byte	0xe
	.byte	0xf4
	.long	0x1bb0
	.uleb128 0x14
	.long	.LASF668
	.sleb128 0
	.uleb128 0x14
	.long	.LASF669
	.sleb128 1
	.uleb128 0x14
	.long	.LASF670
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.long	.LASF667
	.byte	0xe
	.byte	0xfb
	.long	0x1b91
	.uleb128 0x5
	.long	.LASF671
	.byte	0xf
	.byte	0x1c
	.long	0x1bc6
	.uleb128 0x22
	.long	.LASF671
	.value	0x140
	.byte	0xf
	.byte	0x63
	.long	0x1c1d
	.uleb128 0xf
	.long	.LASF672
	.byte	0xf
	.byte	0x69
	.long	0x1de2
	.byte	0
	.uleb128 0xf
	.long	.LASF673
	.byte	0xf
	.byte	0x6c
	.long	0x1ded
	.byte	0x50
	.uleb128 0xf
	.long	.LASF447
	.byte	0xf
	.byte	0x6f
	.long	0xfc7
	.byte	0x58
	.uleb128 0xf
	.long	.LASF674
	.byte	0xf
	.byte	0x72
	.long	0x103
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF675
	.byte	0xf
	.byte	0x76
	.long	0x1df3
	.byte	0xb4
	.uleb128 0x23
	.long	.LASF676
	.byte	0xf
	.byte	0x82
	.long	0x1d2b
	.value	0x138
	.byte	0
	.uleb128 0x5
	.long	.LASF677
	.byte	0xf
	.byte	0x1d
	.long	0x1c28
	.uleb128 0x22
	.long	.LASF677
	.value	0x178
	.byte	0xf
	.byte	0xa2
	.long	0x1caa
	.uleb128 0xf
	.long	.LASF678
	.byte	0xf
	.byte	0xa7
	.long	0x1bbb
	.byte	0
	.uleb128 0x23
	.long	.LASF679
	.byte	0xf
	.byte	0xaa
	.long	0x3db
	.value	0x140
	.uleb128 0x23
	.long	.LASF680
	.byte	0xf
	.byte	0xae
	.long	0x1dcc
	.value	0x148
	.uleb128 0x23
	.long	.LASF681
	.byte	0xf
	.byte	0xb1
	.long	0x3db
	.value	0x150
	.uleb128 0x23
	.long	.LASF682
	.byte	0xf
	.byte	0xb4
	.long	0x103
	.value	0x158
	.uleb128 0x23
	.long	.LASF683
	.byte	0xf
	.byte	0xb7
	.long	0x103
	.value	0x15c
	.uleb128 0x23
	.long	.LASF684
	.byte	0xf
	.byte	0xc0
	.long	0x1caa
	.value	0x160
	.uleb128 0x23
	.long	.LASF685
	.byte	0xf
	.byte	0xc3
	.long	0x1caa
	.value	0x168
	.uleb128 0x23
	.long	.LASF686
	.byte	0xf
	.byte	0xc6
	.long	0x170
	.value	0x170
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1cb0
	.uleb128 0x1e
	.long	0x1cc0
	.uleb128 0x1d
	.long	0x1cc0
	.uleb128 0x1d
	.long	0x1cc6
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1bbb
	.uleb128 0x3
	.byte	0x8
	.long	0x1c1d
	.uleb128 0x13
	.byte	0x4
	.byte	0xf
	.byte	0x23
	.long	0x1d05
	.uleb128 0x14
	.long	.LASF687
	.sleb128 0
	.uleb128 0x14
	.long	.LASF688
	.sleb128 1
	.uleb128 0x14
	.long	.LASF689
	.sleb128 2
	.uleb128 0x14
	.long	.LASF690
	.sleb128 3
	.uleb128 0x14
	.long	.LASF691
	.sleb128 4
	.uleb128 0x14
	.long	.LASF692
	.sleb128 5
	.uleb128 0x14
	.long	.LASF693
	.sleb128 6
	.uleb128 0x14
	.long	.LASF694
	.sleb128 7
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xf
	.byte	0x32
	.long	0x1d20
	.uleb128 0x14
	.long	.LASF695
	.sleb128 0
	.uleb128 0x14
	.long	.LASF696
	.sleb128 1
	.uleb128 0x14
	.long	.LASF697
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.long	.LASF698
	.byte	0xf
	.byte	0x36
	.long	0x1d05
	.uleb128 0x5
	.long	.LASF699
	.byte	0xf
	.byte	0x3b
	.long	0x1d36
	.uleb128 0x3
	.byte	0x8
	.long	0x1d3c
	.uleb128 0x1c
	.long	0x103
	.long	0x1d4b
	.uleb128 0x1d
	.long	0x1cc0
	.byte	0
	.uleb128 0x1a
	.byte	0x50
	.byte	0xf
	.byte	0x3e
	.long	0x1dcc
	.uleb128 0xf
	.long	.LASF700
	.byte	0xf
	.byte	0x41
	.long	0x3db
	.byte	0
	.uleb128 0xf
	.long	.LASF701
	.byte	0xf
	.byte	0x45
	.long	0x103
	.byte	0x8
	.uleb128 0xf
	.long	.LASF702
	.byte	0xf
	.byte	0x49
	.long	0x103
	.byte	0xc
	.uleb128 0xf
	.long	.LASF703
	.byte	0xf
	.byte	0x4c
	.long	0x103
	.byte	0x10
	.uleb128 0xf
	.long	.LASF704
	.byte	0xf
	.byte	0x4f
	.long	0x1a47
	.byte	0x14
	.uleb128 0xf
	.long	.LASF705
	.byte	0xf
	.byte	0x52
	.long	0x1a47
	.byte	0x15
	.uleb128 0xf
	.long	.LASF706
	.byte	0xf
	.byte	0x55
	.long	0x1d20
	.byte	0x18
	.uleb128 0xf
	.long	.LASF707
	.byte	0xf
	.byte	0x59
	.long	0x3db
	.byte	0x20
	.uleb128 0xf
	.long	.LASF708
	.byte	0xf
	.byte	0x5c
	.long	0x1dcc
	.byte	0x28
	.uleb128 0xf
	.long	.LASF709
	.byte	0xf
	.byte	0x5f
	.long	0x1dd2
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x172
	.uleb128 0xc
	.long	0x103
	.long	0x1de2
	.uleb128 0xd
	.long	0x10a
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF710
	.byte	0xf
	.byte	0x60
	.long	0x1d4b
	.uleb128 0x3
	.byte	0x8
	.long	0x1d5
	.uleb128 0xc
	.long	0x1ce
	.long	0x1e03
	.uleb128 0xd
	.long	0x10a
	.byte	0x7f
	.byte	0
	.uleb128 0x15
	.long	.LASF711
	.byte	0x4
	.byte	0x1
	.byte	0x4c
	.long	0x1e2e
	.uleb128 0x14
	.long	.LASF712
	.sleb128 0
	.uleb128 0x14
	.long	.LASF713
	.sleb128 1
	.uleb128 0x14
	.long	.LASF714
	.sleb128 2
	.uleb128 0x14
	.long	.LASF715
	.sleb128 3
	.uleb128 0x14
	.long	.LASF716
	.sleb128 4
	.byte	0
	.uleb128 0xe
	.long	.LASF717
	.byte	0x18
	.byte	0x1
	.byte	0x50
	.long	0x1e5f
	.uleb128 0xf
	.long	.LASF711
	.byte	0x1
	.byte	0x52
	.long	0x1e03
	.byte	0
	.uleb128 0xf
	.long	.LASF718
	.byte	0x1
	.byte	0x53
	.long	0x18f
	.byte	0x8
	.uleb128 0xf
	.long	.LASF719
	.byte	0x1
	.byte	0x54
	.long	0x18f
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF717
	.byte	0x1
	.byte	0x55
	.long	0x1e2e
	.uleb128 0x21
	.long	.LASF720
	.byte	0x4
	.byte	0x1
	.value	0x136
	.long	0x1eb4
	.uleb128 0x14
	.long	.LASF721
	.sleb128 0
	.uleb128 0x14
	.long	.LASF722
	.sleb128 1
	.uleb128 0x14
	.long	.LASF723
	.sleb128 2
	.uleb128 0x14
	.long	.LASF724
	.sleb128 3
	.uleb128 0x14
	.long	.LASF725
	.sleb128 4
	.uleb128 0x14
	.long	.LASF726
	.sleb128 5
	.uleb128 0x14
	.long	.LASF727
	.sleb128 6
	.uleb128 0x14
	.long	.LASF728
	.sleb128 7
	.uleb128 0x14
	.long	.LASF729
	.sleb128 8
	.uleb128 0x14
	.long	.LASF730
	.sleb128 9
	.byte	0
	.uleb128 0x21
	.long	.LASF731
	.byte	0x4
	.byte	0x1
	.value	0x146
	.long	0x1ee0
	.uleb128 0x14
	.long	.LASF732
	.sleb128 0
	.uleb128 0x14
	.long	.LASF733
	.sleb128 1
	.uleb128 0x14
	.long	.LASF734
	.sleb128 2
	.uleb128 0x14
	.long	.LASF735
	.sleb128 3
	.uleb128 0x14
	.long	.LASF736
	.sleb128 4
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.byte	0x1
	.value	0x168
	.long	0x1f1c
	.uleb128 0x14
	.long	.LASF737
	.sleb128 1
	.uleb128 0x14
	.long	.LASF738
	.sleb128 2
	.uleb128 0x14
	.long	.LASF739
	.sleb128 4
	.uleb128 0x14
	.long	.LASF740
	.sleb128 8
	.uleb128 0x14
	.long	.LASF741
	.sleb128 16
	.uleb128 0x14
	.long	.LASF742
	.sleb128 32
	.uleb128 0x14
	.long	.LASF743
	.sleb128 64
	.uleb128 0x14
	.long	.LASF744
	.sleb128 128
	.byte	0
	.uleb128 0x17
	.byte	0x20
	.byte	0x1
	.value	0x186
	.long	0x1f74
	.uleb128 0x11
	.long	.LASF500
	.byte	0x1
	.value	0x189
	.long	0x1a42
	.byte	0
	.uleb128 0x11
	.long	.LASF745
	.byte	0x1
	.value	0x18b
	.long	0x1f74
	.byte	0x8
	.uleb128 0x18
	.string	"std"
	.byte	0x1
	.value	0x18d
	.long	0x1f79
	.byte	0xc
	.uleb128 0x11
	.long	.LASF746
	.byte	0x1
	.value	0x18f
	.long	0x1a42
	.byte	0x10
	.uleb128 0x11
	.long	.LASF747
	.byte	0x1
	.value	0x190
	.long	0x1f74
	.byte	0x18
	.uleb128 0x11
	.long	.LASF748
	.byte	0x1
	.value	0x191
	.long	0x1f79
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.long	0x1e6a
	.uleb128 0x9
	.long	0x1eb4
	.uleb128 0x25
	.long	.LASF749
	.byte	0x1
	.value	0x192
	.long	0x1f1c
	.uleb128 0x17
	.byte	0x18
	.byte	0x1
	.value	0x197
	.long	0x1fbb
	.uleb128 0x18
	.string	"std"
	.byte	0x1
	.value	0x19c
	.long	0x1eb4
	.byte	0
	.uleb128 0x11
	.long	.LASF500
	.byte	0x1
	.value	0x19f
	.long	0x3db
	.byte	0x8
	.uleb128 0x11
	.long	.LASF9
	.byte	0x1
	.value	0x1a1
	.long	0x1a4e
	.byte	0x10
	.byte	0
	.uleb128 0x25
	.long	.LASF750
	.byte	0x1
	.value	0x1a2
	.long	0x1f8a
	.uleb128 0x17
	.byte	0xf8
	.byte	0x1
	.value	0x1ac
	.long	0x201f
	.uleb128 0x11
	.long	.LASF751
	.byte	0x1
	.value	0x1ae
	.long	0x1a42
	.byte	0
	.uleb128 0x11
	.long	.LASF752
	.byte	0x1
	.value	0x1af
	.long	0xfe
	.byte	0x8
	.uleb128 0x18
	.string	"std"
	.byte	0x1
	.value	0x1b0
	.long	0x1f79
	.byte	0xc
	.uleb128 0x11
	.long	.LASF753
	.byte	0x1
	.value	0x1b2
	.long	0x202f
	.byte	0x10
	.uleb128 0x11
	.long	.LASF754
	.byte	0x1
	.value	0x1b9
	.long	0x1a42
	.byte	0xe8
	.uleb128 0x11
	.long	.LASF755
	.byte	0x1
	.value	0x1c3
	.long	0x1a42
	.byte	0xf0
	.byte	0
	.uleb128 0xc
	.long	0x1fbb
	.long	0x202f
	.uleb128 0xd
	.long	0x10a
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x201f
	.uleb128 0x25
	.long	.LASF756
	.byte	0x1
	.value	0x1c4
	.long	0x1fc7
	.uleb128 0x17
	.byte	0x28
	.byte	0x1
	.value	0x1c8
	.long	0x2098
	.uleb128 0x11
	.long	.LASF757
	.byte	0x1
	.value	0x1cb
	.long	0xfe
	.byte	0
	.uleb128 0x11
	.long	.LASF758
	.byte	0x1
	.value	0x1d4
	.long	0xfe
	.byte	0x4
	.uleb128 0x11
	.long	.LASF759
	.byte	0x1
	.value	0x1d7
	.long	0xfe
	.byte	0x8
	.uleb128 0x11
	.long	.LASF500
	.byte	0x1
	.value	0x1da
	.long	0x1a42
	.byte	0x10
	.uleb128 0x11
	.long	.LASF760
	.byte	0x1
	.value	0x1dd
	.long	0x1a42
	.byte	0x18
	.uleb128 0x18
	.string	"std"
	.byte	0x1
	.value	0x1df
	.long	0x1f79
	.byte	0x20
	.byte	0
	.uleb128 0x25
	.long	.LASF761
	.byte	0x1
	.value	0x1e0
	.long	0x2040
	.uleb128 0x17
	.byte	0x10
	.byte	0x1
	.value	0x1e5
	.long	0x20e2
	.uleb128 0x11
	.long	.LASF762
	.byte	0x1
	.value	0x1e8
	.long	0xfe
	.byte	0
	.uleb128 0x11
	.long	.LASF763
	.byte	0x1
	.value	0x1ea
	.long	0xfe
	.byte	0x4
	.uleb128 0x11
	.long	.LASF764
	.byte	0x1
	.value	0x1ed
	.long	0xfe
	.byte	0x8
	.uleb128 0x11
	.long	.LASF758
	.byte	0x1
	.value	0x1f1
	.long	0xfe
	.byte	0xc
	.byte	0
	.uleb128 0x25
	.long	.LASF765
	.byte	0x1
	.value	0x1f2
	.long	0x20a4
	.uleb128 0x17
	.byte	0x60
	.byte	0x1
	.value	0x1f6
	.long	0x21bb
	.uleb128 0x11
	.long	.LASF500
	.byte	0x1
	.value	0x1fa
	.long	0x1a42
	.byte	0
	.uleb128 0x11
	.long	.LASF766
	.byte	0x1
	.value	0x1fc
	.long	0x21bb
	.byte	0x8
	.uleb128 0x11
	.long	.LASF767
	.byte	0x1
	.value	0x1fe
	.long	0x21cb
	.byte	0x10
	.uleb128 0x11
	.long	.LASF754
	.byte	0x1
	.value	0x200
	.long	0x1a42
	.byte	0x18
	.uleb128 0x11
	.long	.LASF768
	.byte	0x1
	.value	0x202
	.long	0x1a42
	.byte	0x20
	.uleb128 0x11
	.long	.LASF769
	.byte	0x1
	.value	0x204
	.long	0x21db
	.byte	0x28
	.uleb128 0x11
	.long	.LASF770
	.byte	0x1
	.value	0x206
	.long	0x21eb
	.byte	0x30
	.uleb128 0x11
	.long	.LASF771
	.byte	0x1
	.value	0x208
	.long	0xfe
	.byte	0x38
	.uleb128 0x11
	.long	.LASF772
	.byte	0x1
	.value	0x20a
	.long	0xfe
	.byte	0x3c
	.uleb128 0x11
	.long	.LASF773
	.byte	0x1
	.value	0x20d
	.long	0xfe
	.byte	0x40
	.uleb128 0x11
	.long	.LASF774
	.byte	0x1
	.value	0x210
	.long	0xfe
	.byte	0x44
	.uleb128 0x11
	.long	.LASF775
	.byte	0x1
	.value	0x213
	.long	0xfe
	.byte	0x48
	.uleb128 0x11
	.long	.LASF776
	.byte	0x1
	.value	0x218
	.long	0xfe
	.byte	0x4c
	.uleb128 0x11
	.long	.LASF777
	.byte	0x1
	.value	0x21b
	.long	0x21fb
	.byte	0x50
	.uleb128 0x11
	.long	.LASF778
	.byte	0x1
	.value	0x21e
	.long	0x21fb
	.byte	0x58
	.byte	0
	.uleb128 0x9
	.long	0x21c0
	.uleb128 0x3
	.byte	0x8
	.long	0x21c6
	.uleb128 0x9
	.long	0x1f7e
	.uleb128 0x9
	.long	0x21d0
	.uleb128 0x3
	.byte	0x8
	.long	0x21d6
	.uleb128 0x9
	.long	0x2034
	.uleb128 0x9
	.long	0x21e0
	.uleb128 0x3
	.byte	0x8
	.long	0x21e6
	.uleb128 0x9
	.long	0x2098
	.uleb128 0x9
	.long	0x21f0
	.uleb128 0x3
	.byte	0x8
	.long	0x21f6
	.uleb128 0x9
	.long	0x20e2
	.uleb128 0x9
	.long	0x1a4e
	.uleb128 0x25
	.long	.LASF779
	.byte	0x1
	.value	0x21f
	.long	0x20ee
	.uleb128 0x19
	.long	.LASF780
	.byte	0x40
	.byte	0x1
	.value	0x224
	.long	0x229c
	.uleb128 0x11
	.long	.LASF781
	.byte	0x1
	.value	0x227
	.long	0x43
	.byte	0
	.uleb128 0x11
	.long	.LASF782
	.byte	0x1
	.value	0x229
	.long	0x3db
	.byte	0x8
	.uleb128 0x11
	.long	.LASF752
	.byte	0x1
	.value	0x22b
	.long	0x103
	.byte	0x10
	.uleb128 0x11
	.long	.LASF783
	.byte	0x1
	.value	0x22e
	.long	0x103
	.byte	0x14
	.uleb128 0x11
	.long	.LASF784
	.byte	0x1
	.value	0x231
	.long	0x103
	.byte	0x18
	.uleb128 0x11
	.long	.LASF785
	.byte	0x1
	.value	0x234
	.long	0x103
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF500
	.byte	0x1
	.value	0x23b
	.long	0x3db
	.byte	0x20
	.uleb128 0x11
	.long	.LASF786
	.byte	0x1
	.value	0x23d
	.long	0x43
	.byte	0x28
	.uleb128 0x11
	.long	.LASF787
	.byte	0x1
	.value	0x23f
	.long	0x103
	.byte	0x30
	.uleb128 0x11
	.long	.LASF788
	.byte	0x1
	.value	0x241
	.long	0x229c
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x220c
	.uleb128 0x25
	.long	.LASF780
	.byte	0x1
	.value	0x242
	.long	0x220c
	.uleb128 0x17
	.byte	0x1c
	.byte	0x1
	.value	0x36a
	.long	0x2313
	.uleb128 0x11
	.long	.LASF789
	.byte	0x1
	.value	0x36e
	.long	0x103
	.byte	0
	.uleb128 0x11
	.long	.LASF790
	.byte	0x1
	.value	0x371
	.long	0x103
	.byte	0x4
	.uleb128 0x11
	.long	.LASF791
	.byte	0x1
	.value	0x375
	.long	0x103
	.byte	0x8
	.uleb128 0x11
	.long	.LASF792
	.byte	0x1
	.value	0x378
	.long	0x103
	.byte	0xc
	.uleb128 0x11
	.long	.LASF793
	.byte	0x1
	.value	0x37a
	.long	0x103
	.byte	0x10
	.uleb128 0x11
	.long	.LASF794
	.byte	0x1
	.value	0x37d
	.long	0x103
	.byte	0x14
	.uleb128 0x11
	.long	.LASF795
	.byte	0x1
	.value	0x37f
	.long	0x103
	.byte	0x18
	.byte	0
	.uleb128 0x25
	.long	.LASF796
	.byte	0x1
	.value	0x380
	.long	0x22ae
	.uleb128 0x26
	.long	.LASF813
	.byte	0x1
	.byte	0x3a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x234b
	.uleb128 0x27
	.long	.LASF797
	.byte	0x1
	.byte	0x3b
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF803
	.byte	0x1
	.byte	0x5e
	.long	0x43
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f1
	.uleb128 0x27
	.long	.LASF798
	.byte	0x1
	.byte	0x5f
	.long	0x1a4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF500
	.byte	0x1
	.byte	0x60
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF799
	.byte	0x1
	.byte	0x61
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF771
	.byte	0x1
	.byte	0x62
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x27
	.long	.LASF800
	.byte	0x1
	.byte	0x63
	.long	0x1a54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.long	.LASF9
	.byte	0x1
	.byte	0x65
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF801
	.byte	0x1
	.byte	0x66
	.long	0x1e5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF802
	.byte	0x1
	.byte	0x67
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF787
	.byte	0x1
	.byte	0x68
	.long	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x28
	.long	.LASF804
	.byte	0x1
	.byte	0xa4
	.long	0x43
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x24a4
	.uleb128 0x27
	.long	.LASF798
	.byte	0x1
	.byte	0xa5
	.long	0x1a4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF500
	.byte	0x1
	.byte	0xa6
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF799
	.byte	0x1
	.byte	0xa7
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF771
	.byte	0x1
	.byte	0xa8
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.long	.LASF800
	.byte	0x1
	.byte	0xa9
	.long	0x1a54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF9
	.byte	0x1
	.byte	0xab
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF805
	.byte	0x1
	.byte	0xac
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF718
	.byte	0x1
	.byte	0xad
	.long	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF787
	.byte	0x1
	.byte	0xae
	.long	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF802
	.byte	0x1
	.byte	0xaf
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.long	.LASF809
	.byte	0x1
	.byte	0xee
	.long	0x1a47
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x254d
	.uleb128 0x27
	.long	.LASF799
	.byte	0x1
	.byte	0xef
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF801
	.byte	0x1
	.byte	0xf0
	.long	0x254d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF806
	.byte	0x1
	.byte	0xf1
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.long	.LASF807
	.byte	0x1
	.byte	0xf3
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF805
	.byte	0x1
	.byte	0xf4
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF808
	.byte	0x1
	.byte	0xf5
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF828
	.long	0x2563
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10189
	.uleb128 0x2c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x101
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e5f
	.uleb128 0xc
	.long	0x1ce
	.long	0x2563
	.uleb128 0xd
	.long	0x10a
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.long	0x2553
	.uleb128 0x2e
	.long	.LASF810
	.byte	0x1
	.value	0x39c
	.long	0x1e03
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d5
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.value	0x39d
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x39f
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LASF811
	.byte	0x1
	.value	0x3a0
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x30
	.long	.LASF812
	.byte	0x1
	.value	0x3a4
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF814
	.byte	0x1
	.value	0x3b8
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2693
	.uleb128 0x32
	.long	.LASF815
	.byte	0x1
	.value	0x3b9
	.long	0x475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.long	.LASF816
	.byte	0x1
	.value	0x3ba
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.long	.LASF817
	.byte	0x1
	.value	0x3bb
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"a"
	.byte	0x1
	.value	0x3bd
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x30
	.long	.LASF801
	.byte	0x1
	.value	0x3c5
	.long	0x1e5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.value	0x3cc
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x30
	.long	.LASF799
	.byte	0x1
	.value	0x3db
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF819
	.byte	0x1
	.value	0x3f4
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2714
	.uleb128 0x32
	.long	.LASF815
	.byte	0x1
	.value	0x3f4
	.long	0x475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x32
	.long	.LASF818
	.byte	0x1
	.value	0x3f4
	.long	0x3db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x34
	.uleb128 0x2d
	.string	"dc"
	.byte	0x1
	.value	0x3f6
	.long	0x1c1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2c
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2d
	.string	"ap"
	.byte	0x1
	.value	0x3f8
	.long	0x172
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x35
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF820
	.byte	0x1
	.value	0x419
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x277f
	.uleb128 0x32
	.long	.LASF719
	.byte	0x1
	.value	0x41a
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF817
	.byte	0x1
	.value	0x41b
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF821
	.byte	0x1
	.value	0x41d
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x43a
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF822
	.byte	0x1
	.value	0x452
	.long	0x103
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x28a9
	.uleb128 0x32
	.long	.LASF815
	.byte	0x1
	.value	0x454
	.long	0x475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF823
	.byte	0x1
	.value	0x455
	.long	0x28a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF824
	.byte	0x1
	.value	0x456
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	.LASF817
	.byte	0x1
	.value	0x457
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.long	.LASF825
	.byte	0x1
	.value	0x458
	.long	0x1a4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.string	"fki"
	.byte	0x1
	.value	0x459
	.long	0x28af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF826
	.byte	0x1
	.value	0x45b
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF827
	.byte	0x1
	.value	0x45c
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"fcp"
	.byte	0x1
	.value	0x45d
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF828
	.long	0x28ca
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10431
	.uleb128 0x36
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x2864
	.uleb128 0x30
	.long	.LASF829
	.byte	0x1
	.value	0x46c
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x2889
	.uleb128 0x30
	.long	.LASF830
	.byte	0x1
	.value	0x491
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x4a6
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3db
	.uleb128 0x3
	.byte	0x8
	.long	0x28b5
	.uleb128 0x9
	.long	0x2200
	.uleb128 0xc
	.long	0x1ce
	.long	0x28ca
	.uleb128 0xd
	.long	0x10a
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.long	0x28ba
	.uleb128 0x33
	.long	.LASF831
	.byte	0x1
	.value	0x4c2
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2937
	.uleb128 0x32
	.long	.LASF815
	.byte	0x1
	.value	0x4c3
	.long	0x475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"res"
	.byte	0x1
	.value	0x4c4
	.long	0x2937
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF832
	.byte	0x1
	.value	0x4c5
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x4c7
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LASF833
	.byte	0x1
	.value	0x4c8
	.long	0x1a47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2313
	.uleb128 0x2e
	.long	.LASF834
	.byte	0x1
	.value	0x4e8
	.long	0x21e0
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x29ad
	.uleb128 0x32
	.long	.LASF835
	.byte	0x1
	.value	0x4e9
	.long	0x21e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF836
	.byte	0x1
	.value	0x4ea
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF837
	.byte	0x1
	.value	0x4eb
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x4ed
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF828
	.long	0x29bd
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10452
	.byte	0
	.uleb128 0xc
	.long	0x1ce
	.long	0x29bd
	.uleb128 0xd
	.long	0x10a
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.long	0x29ad
	.uleb128 0x33
	.long	.LASF838
	.byte	0x1
	.value	0x507
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a3e
	.uleb128 0x32
	.long	.LASF815
	.byte	0x1
	.value	0x508
	.long	0x475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF801
	.byte	0x1
	.value	0x509
	.long	0x254d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.long	.LASF817
	.byte	0x1
	.value	0x50a
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF787
	.byte	0x1
	.value	0x50c
	.long	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF839
	.byte	0x1
	.value	0x50d
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"res"
	.byte	0x1
	.value	0x50e
	.long	0x2313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.long	.LASF840
	.byte	0x1
	.value	0x565
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c08
	.uleb128 0x32
	.long	.LASF815
	.byte	0x1
	.value	0x566
	.long	0x475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.string	"res"
	.byte	0x1
	.value	0x567
	.long	0x2937
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x32
	.long	.LASF801
	.byte	0x1
	.value	0x568
	.long	0x254d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x32
	.long	.LASF839
	.byte	0x1
	.value	0x569
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x32
	.long	.LASF817
	.byte	0x1
	.value	0x56a
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x32
	.long	.LASF787
	.byte	0x1
	.value	0x56b
	.long	0x18f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x30
	.long	.LASF841
	.byte	0x1
	.value	0x56d
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.long	.LASF842
	.byte	0x1
	.value	0x56e
	.long	0x17d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF751
	.byte	0x1
	.value	0x56f
	.long	0x3db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF843
	.byte	0x1
	.value	0x570
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF844
	.byte	0x1
	.value	0x571
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF828
	.long	0x2c18
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10489
	.uleb128 0x36
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x2bb2
	.uleb128 0x30
	.long	.LASF9
	.byte	0x1
	.value	0x57e
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF816
	.byte	0x1
	.value	0x57f
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF845
	.byte	0x1
	.value	0x580
	.long	0x1a47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x2c
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x30
	.long	.LASF846
	.byte	0x1
	.value	0x58b
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF805
	.byte	0x1
	.value	0x58c
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF718
	.byte	0x1
	.value	0x58d
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x58e
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x2be6
	.uleb128 0x30
	.long	.LASF847
	.byte	0x1
	.value	0x5dd
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF848
	.byte	0x1
	.value	0x5dd
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x30
	.long	.LASF849
	.byte	0x1
	.value	0x61a
	.long	0x17d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x1ce
	.long	0x2c18
	.uleb128 0xd
	.long	0x10a
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.long	0x2c08
	.uleb128 0x33
	.long	.LASF850
	.byte	0x1
	.value	0x654
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3035
	.uleb128 0x32
	.long	.LASF815
	.byte	0x1
	.value	0x656
	.long	0x475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x2f
	.string	"res"
	.byte	0x1
	.value	0x657
	.long	0x2937
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x32
	.long	.LASF801
	.byte	0x1
	.value	0x658
	.long	0x254d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x32
	.long	.LASF751
	.byte	0x1
	.value	0x659
	.long	0x3db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x32
	.long	.LASF841
	.byte	0x1
	.value	0x65a
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x32
	.long	.LASF817
	.byte	0x1
	.value	0x65b
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x32
	.long	.LASF787
	.byte	0x1
	.value	0x65c
	.long	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF851
	.byte	0x1
	.value	0x65e
	.long	0x3db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x30
	.long	.LASF852
	.byte	0x1
	.value	0x65f
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2d
	.string	"fki"
	.byte	0x1
	.value	0x661
	.long	0x28af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x30
	.long	.LASF769
	.byte	0x1
	.value	0x662
	.long	0x21e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x30
	.long	.LASF770
	.byte	0x1
	.value	0x663
	.long	0x21f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x30
	.long	.LASF853
	.byte	0x1
	.value	0x667
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x2c
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x66d
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -708
	.uleb128 0x30
	.long	.LASF854
	.byte	0x1
	.value	0x66e
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x30
	.long	.LASF855
	.byte	0x1
	.value	0x66f
	.long	0x3db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x30
	.long	.LASF856
	.byte	0x1
	.value	0x670
	.long	0x1e6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.uleb128 0x30
	.long	.LASF857
	.byte	0x1
	.value	0x671
	.long	0x1eb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x30
	.long	.LASF858
	.byte	0x1
	.value	0x672
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x30
	.long	.LASF859
	.byte	0x1
	.value	0x673
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x30
	.long	.LASF781
	.byte	0x1
	.value	0x674
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x30
	.long	.LASF860
	.byte	0x1
	.value	0x675
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x30
	.long	.LASF861
	.byte	0x1
	.value	0x676
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x30
	.long	.LASF862
	.byte	0x1
	.value	0x677
	.long	0x1eb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -652
	.uleb128 0x30
	.long	.LASF782
	.byte	0x1
	.value	0x678
	.long	0x3db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x30
	.long	.LASF863
	.byte	0x1
	.value	0x679
	.long	0x22a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x30
	.long	.LASF864
	.byte	0x1
	.value	0x67a
	.long	0x22a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x30
	.long	.LASF865
	.byte	0x1
	.value	0x67b
	.long	0x22a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x30
	.long	.LASF866
	.byte	0x1
	.value	0x67c
	.long	0x3035
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x30
	.long	.LASF867
	.byte	0x1
	.value	0x67d
	.long	0x3035
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x2d
	.string	"fli"
	.byte	0x1
	.value	0x67e
	.long	0x21c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x2d
	.string	"fci"
	.byte	0x1
	.value	0x67f
	.long	0x21d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x30
	.long	.LASF754
	.byte	0x1
	.value	0x680
	.long	0x303b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x30
	.long	.LASF868
	.byte	0x1
	.value	0x681
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x36
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x2e8f
	.uleb128 0x30
	.long	.LASF869
	.byte	0x1
	.value	0x6a4
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -668
	.byte	0
	.uleb128 0x36
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x2eb3
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x6b7
	.long	0x21e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.byte	0
	.uleb128 0x36
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x2ed9
	.uleb128 0x30
	.long	.LASF869
	.byte	0x1
	.value	0x6e1
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.byte	0
	.uleb128 0x36
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x2f0f
	.uleb128 0x30
	.long	.LASF870
	.byte	0x1
	.value	0x70d
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -684
	.uleb128 0x30
	.long	.LASF871
	.byte	0x1
	.value	0x70e
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.byte	0
	.uleb128 0x36
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x2f35
	.uleb128 0x30
	.long	.LASF869
	.byte	0x1
	.value	0x73f
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -660
	.byte	0
	.uleb128 0x36
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x2f59
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x7a6
	.long	0x21e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.byte	0
	.uleb128 0x36
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x2fdf
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x7e5
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -676
	.uleb128 0x2c
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x7e8
	.long	0x21e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2c
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x7f6
	.long	0x21e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2c
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x30
	.long	.LASF760
	.byte	0x1
	.value	0x7fd
	.long	0x3db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x3011
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x815
	.long	0x21e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x815
	.long	0x21e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.byte	0
	.uleb128 0x2c
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x30
	.long	.LASF872
	.byte	0x1
	.value	0x838
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x22a2
	.uleb128 0xc
	.long	0x1ce
	.long	0x304b
	.uleb128 0xd
	.long	0x10a
	.byte	0xff
	.byte	0
	.uleb128 0x33
	.long	.LASF873
	.byte	0x1
	.value	0x8cb
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3159
	.uleb128 0x32
	.long	.LASF815
	.byte	0x1
	.value	0x8cc
	.long	0x475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.long	.LASF753
	.byte	0x1
	.value	0x8cd
	.long	0x3035
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF828
	.long	0x3159
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10608
	.uleb128 0x2c
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x30
	.long	.LASF859
	.byte	0x1
	.value	0x8d1
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF874
	.byte	0x1
	.value	0x8d2
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF875
	.byte	0x1
	.value	0x8d3
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF781
	.byte	0x1
	.value	0x8d4
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF876
	.byte	0x1
	.value	0x8d5
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF787
	.byte	0x1
	.value	0x8d6
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x8d7
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.long	.LASF877
	.byte	0x1
	.value	0x8d8
	.long	0x103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x30
	.long	.LASF878
	.byte	0x1
	.value	0x960
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF879
	.byte	0x1
	.value	0x961
	.long	0x3db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x2553
	.uleb128 0xc
	.long	0x1f7e
	.long	0x316e
	.uleb128 0xd
	.long	0x10a
	.byte	0x8
	.byte	0
	.uleb128 0x30
	.long	.LASF880
	.byte	0x1
	.value	0x245
	.long	0x3184
	.uleb128 0x9
	.byte	0x3
	.quad	printf_length_specs
	.uleb128 0x9
	.long	0x315e
	.uleb128 0xc
	.long	0x1f7e
	.long	0x3199
	.uleb128 0xd
	.long	0x10a
	.byte	0x7
	.byte	0
	.uleb128 0x30
	.long	.LASF881
	.byte	0x1
	.value	0x254
	.long	0x31af
	.uleb128 0x9
	.byte	0x3
	.quad	scanf_length_specs
	.uleb128 0x9
	.long	0x3189
	.uleb128 0xc
	.long	0x1f7e
	.long	0x31c4
	.uleb128 0xd
	.long	0x10a
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.long	.LASF882
	.byte	0x1
	.value	0x263
	.long	0x31da
	.uleb128 0x9
	.byte	0x3
	.quad	strfmon_length_specs
	.uleb128 0x9
	.long	0x31b4
	.uleb128 0xc
	.long	0x2098
	.long	0x31ef
	.uleb128 0xd
	.long	0x10a
	.byte	0xa
	.byte	0
	.uleb128 0x30
	.long	.LASF883
	.byte	0x1
	.value	0x26a
	.long	0x3205
	.uleb128 0x9
	.byte	0x3
	.quad	printf_flag_specs
	.uleb128 0x9
	.long	0x31df
	.uleb128 0xc
	.long	0x20e2
	.long	0x321a
	.uleb128 0xd
	.long	0x10a
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.long	.LASF884
	.byte	0x1
	.value	0x27a
	.long	0x3230
	.uleb128 0x9
	.byte	0x3
	.quad	printf_flag_pairs
	.uleb128 0x9
	.long	0x320a
	.uleb128 0xc
	.long	0x2098
	.long	0x3245
	.uleb128 0xd
	.long	0x10a
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LASF885
	.byte	0x1
	.value	0x283
	.long	0x325b
	.uleb128 0x9
	.byte	0x3
	.quad	scanf_flag_specs
	.uleb128 0x9
	.long	0x3235
	.uleb128 0xc
	.long	0x20e2
	.long	0x3270
	.uleb128 0xd
	.long	0x10a
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.long	.LASF886
	.byte	0x1
	.value	0x28f
	.long	0x3286
	.uleb128 0x9
	.byte	0x3
	.quad	scanf_flag_pairs
	.uleb128 0x9
	.long	0x3260
	.uleb128 0xc
	.long	0x2098
	.long	0x329b
	.uleb128 0xd
	.long	0x10a
	.byte	0x9
	.byte	0
	.uleb128 0x30
	.long	.LASF887
	.byte	0x1
	.value	0x296
	.long	0x32b1
	.uleb128 0x9
	.byte	0x3
	.quad	strftime_flag_specs
	.uleb128 0x9
	.long	0x328b
	.uleb128 0xc
	.long	0x20e2
	.long	0x32c6
	.uleb128 0xd
	.long	0x10a
	.byte	0x5
	.byte	0
	.uleb128 0x30
	.long	.LASF888
	.byte	0x1
	.value	0x2a5
	.long	0x32dc
	.uleb128 0x9
	.byte	0x3
	.quad	strftime_flag_pairs
	.uleb128 0x9
	.long	0x32b6
	.uleb128 0x30
	.long	.LASF889
	.byte	0x1
	.value	0x2b0
	.long	0x32f7
	.uleb128 0x9
	.byte	0x3
	.quad	strfmon_flag_specs
	.uleb128 0x9
	.long	0x31df
	.uleb128 0x30
	.long	.LASF890
	.byte	0x1
	.value	0x2bf
	.long	0x3312
	.uleb128 0x9
	.byte	0x3
	.quad	strfmon_flag_pairs
	.uleb128 0x9
	.long	0x3260
	.uleb128 0xc
	.long	0x2034
	.long	0x3327
	.uleb128 0xd
	.long	0x10a
	.byte	0xe
	.byte	0
	.uleb128 0x30
	.long	.LASF891
	.byte	0x1
	.value	0x2fe
	.long	0x333d
	.uleb128 0x9
	.byte	0x3
	.quad	print_char_table
	.uleb128 0x9
	.long	0x3317
	.uleb128 0xc
	.long	0x2034
	.long	0x3352
	.uleb128 0xd
	.long	0x10a
	.byte	0xc
	.byte	0
	.uleb128 0x30
	.long	.LASF892
	.byte	0x1
	.value	0x315
	.long	0x3368
	.uleb128 0x9
	.byte	0x3
	.quad	scan_char_table
	.uleb128 0x9
	.long	0x3342
	.uleb128 0xc
	.long	0x2034
	.long	0x337d
	.uleb128 0xd
	.long	0x10a
	.byte	0x13
	.byte	0
	.uleb128 0x30
	.long	.LASF893
	.byte	0x1
	.value	0x329
	.long	0x3393
	.uleb128 0x9
	.byte	0x3
	.quad	time_char_table
	.uleb128 0x9
	.long	0x336d
	.uleb128 0xc
	.long	0x2034
	.long	0x33a8
	.uleb128 0xd
	.long	0x10a
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.long	.LASF894
	.byte	0x1
	.value	0x344
	.long	0x33be
	.uleb128 0x9
	.byte	0x3
	.quad	monetary_char_table
	.uleb128 0x9
	.long	0x3398
	.uleb128 0xc
	.long	0x2200
	.long	0x33d3
	.uleb128 0xd
	.long	0x10a
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.long	.LASF895
	.byte	0x1
	.value	0x34c
	.long	0x33e9
	.uleb128 0x9
	.byte	0x3
	.quad	format_types
	.uleb128 0x9
	.long	0x33c3
	.uleb128 0x30
	.long	.LASF896
	.byte	0x1
	.value	0x40a
	.long	0x1c8
	.uleb128 0x9
	.byte	0x3
	.quad	dollar_arguments_used
	.uleb128 0x30
	.long	.LASF897
	.byte	0x1
	.value	0x40b
	.long	0x1c8
	.uleb128 0x9
	.byte	0x3
	.quad	dollar_arguments_pointer_p
	.uleb128 0x30
	.long	.LASF898
	.byte	0x1
	.value	0x40c
	.long	0x103
	.uleb128 0x9
	.byte	0x3
	.quad	dollar_arguments_alloc
	.uleb128 0x30
	.long	.LASF899
	.byte	0x1
	.value	0x40d
	.long	0x103
	.uleb128 0x9
	.byte	0x3
	.quad	dollar_arguments_count
	.uleb128 0x30
	.long	.LASF900
	.byte	0x1
	.value	0x40e
	.long	0x103
	.uleb128 0x9
	.byte	0x3
	.quad	dollar_first_arg_num
	.uleb128 0x30
	.long	.LASF901
	.byte	0x1
	.value	0x40f
	.long	0x103
	.uleb128 0x9
	.byte	0x3
	.quad	dollar_max_arg_used
	.uleb128 0x30
	.long	.LASF902
	.byte	0x1
	.value	0x410
	.long	0x103
	.uleb128 0x9
	.byte	0x3
	.quad	dollar_format_warned
	.uleb128 0xc
	.long	0x19d
	.long	0x3498
	.uleb128 0xd
	.long	0x10a
	.byte	0xff
	.byte	0
	.uleb128 0x37
	.long	.LASF903
	.byte	0x10
	.byte	0x48
	.long	0x34a3
	.uleb128 0x9
	.long	0x3488
	.uleb128 0x37
	.long	.LASF904
	.byte	0x2
	.byte	0x31
	.long	0x303b
	.uleb128 0xc
	.long	0x43
	.long	0x34c3
	.uleb128 0xd
	.long	0x10a
	.byte	0x32
	.byte	0
	.uleb128 0x38
	.long	.LASF905
	.byte	0x2
	.value	0x79b
	.long	0x34b3
	.uleb128 0xc
	.long	0x43
	.long	0x34df
	.uleb128 0xd
	.long	0x10a
	.byte	0xa
	.byte	0
	.uleb128 0x38
	.long	.LASF906
	.byte	0x2
	.value	0x7f8
	.long	0x34cf
	.uleb128 0x38
	.long	.LASF907
	.byte	0x2
	.value	0xa87
	.long	0x3db
	.uleb128 0x38
	.long	.LASF908
	.byte	0x2
	.value	0xa8a
	.long	0x103
	.uleb128 0x38
	.long	.LASF909
	.byte	0x2
	.value	0xa98
	.long	0x43
	.uleb128 0x37
	.long	.LASF910
	.byte	0x11
	.byte	0xcc
	.long	0x103
	.uleb128 0xc
	.long	0x43
	.long	0x352a
	.uleb128 0xd
	.long	0x10a
	.byte	0x1f
	.byte	0
	.uleb128 0x37
	.long	.LASF911
	.byte	0xe
	.byte	0xea
	.long	0x351a
	.uleb128 0x38
	.long	.LASF912
	.byte	0xe
	.value	0x175
	.long	0x1bb0
	.uleb128 0x39
	.long	.LASF913
	.byte	0x1
	.byte	0x25
	.long	0x103
	.uleb128 0x9
	.byte	0x3
	.quad	warn_format
	.uleb128 0x39
	.long	.LASF914
	.byte	0x1
	.byte	0x29
	.long	0x103
	.uleb128 0x9
	.byte	0x3
	.quad	warn_format_y2k
	.uleb128 0x39
	.long	.LASF915
	.byte	0x1
	.byte	0x2d
	.long	0x103
	.uleb128 0x9
	.byte	0x3
	.quad	warn_format_extra_args
	.uleb128 0x39
	.long	.LASF916
	.byte	0x1
	.byte	0x31
	.long	0x103
	.uleb128 0x9
	.byte	0x3
	.quad	warn_format_nonliteral
	.uleb128 0x39
	.long	.LASF917
	.byte	0x1
	.byte	0x35
	.long	0x103
	.uleb128 0x9
	.byte	0x3
	.quad	warn_format_security
	.uleb128 0x38
	.long	.LASF918
	.byte	0xe
	.value	0x19e
	.long	0x103
	.uleb128 0x38
	.long	.LASF919
	.byte	0xe
	.value	0x1ae
	.long	0x103
	.uleb128 0x38
	.long	.LASF920
	.byte	0xe
	.value	0x1b2
	.long	0x103
	.uleb128 0x38
	.long	.LASF921
	.byte	0xe
	.value	0x1d1
	.long	0x103
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x25
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
	.uleb128 0x2117
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF395:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF593:
	.string	"TI_UV16QI_TYPE"
.LASF316:
	.string	"BUILT_IN_CONJ"
.LASF880:
	.string	"printf_length_specs"
.LASF608:
	.string	"itk_unsigned_char"
.LASF214:
	.string	"WITH_CLEANUP_EXPR"
.LASF204:
	.string	"VTABLE_REF"
.LASF762:
	.string	"flag_char1"
.LASF763:
	.string	"flag_char2"
.LASF362:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF61:
	.string	"_unused2"
.LASF291:
	.string	"POSTINCREMENT_EXPR"
.LASF312:
	.string	"BUILT_IN_FABSF"
.LASF227:
	.string	"FLOOR_MOD_EXPR"
.LASF47:
	.string	"_fileno"
.LASF313:
	.string	"BUILT_IN_FABSL"
.LASF679:
	.string	"message"
.LASF841:
	.string	"format_length"
.LASF852:
	.string	"first_fillin_param"
.LASF876:
	.string	"promoted_type"
.LASF814:
	.string	"check_function_format"
.LASF600:
	.string	"TI_V2SI_TYPE"
.LASF754:
	.string	"flag_chars"
.LASF561:
	.string	"TI_UINTSI_TYPE"
.LASF186:
	.string	"COMPLEX_CST"
.LASF481:
	.string	"tree_type"
.LASF244:
	.string	"RROTATE_EXPR"
.LASF280:
	.string	"ADDR_EXPR"
.LASF714:
	.string	"strftime_format_type"
.LASF788:
	.string	"next"
.LASF11:
	.string	"block"
.LASF618:
	.string	"_Bool"
.LASF803:
	.string	"handle_format_attribute"
.LASF769:
	.string	"flag_specs"
.LASF537:
	.string	"pure_flag"
.LASF908:
	.string	"lineno"
.LASF269:
	.string	"IN_EXPR"
.LASF725:
	.string	"FMT_LEN_ll"
.LASF805:
	.string	"format_num_expr"
.LASF67:
	.string	"_sch_iscntrl"
.LASF1:
	.string	"common"
.LASF396:
	.string	"BUILT_IN_EH_RETURN"
.LASF52:
	.string	"_shortbuf"
.LASF924:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF73:
	.string	"_sch_isupper"
.LASF849:
	.string	"array_size_value"
.LASF252:
	.string	"TRUTH_AND_EXPR"
.LASF335:
	.string	"BUILT_IN_STRCPY"
.LASF905:
	.string	"global_trees"
.LASF580:
	.string	"TI_VOID_TYPE"
.LASF398:
	.string	"BUILT_IN_VARARGS_START"
.LASF440:
	.string	"imag"
.LASF622:
	.string	"ATTR_FLAG_ARRAY_NEXT"
.LASF846:
	.string	"inner_args"
.LASF296:
	.string	"LABEL_EXPR"
.LASF711:
	.string	"format_type"
.LASF439:
	.string	"real"
.LASF567:
	.string	"TI_NULL_POINTER"
.LASF176:
	.string	"FILE_TYPE"
.LASF479:
	.string	"fragment_chain"
.LASF435:
	.string	"tree_string"
.LASF489:
	.string	"no_force_blk_flag"
.LASF478:
	.string	"fragment_origin"
.LASF596:
	.string	"TI_V4SI_TYPE"
.LASF375:
	.string	"BUILT_IN_FWRITE"
.LASF16:
	.string	"overflow_arg_area"
.LASF115:
	.string	"CTImode"
.LASF33:
	.string	"_flags"
.LASF254:
	.string	"TRUTH_XOR_EXPR"
.LASF528:
	.string	"static_dtor_flag"
.LASF436:
	.string	"length"
.LASF216:
	.string	"PLACEHOLDER_EXPR"
.LASF708:
	.string	"format_args"
.LASF510:
	.string	"lang_type"
.LASF17:
	.string	"reg_save_area"
.LASF536:
	.string	"built_in_class"
.LASF27:
	.string	"__off_t"
.LASF715:
	.string	"strfmon_format_type"
.LASF235:
	.string	"FLOAT_EXPR"
.LASF519:
	.string	"inline_flag"
.LASF886:
	.string	"scanf_flag_pairs"
.LASF570:
	.string	"TI_BITSIZE_ZERO"
.LASF194:
	.string	"PARM_DECL"
.LASF684:
	.string	"begin_diagnostic"
.LASF113:
	.string	"CSImode"
.LASF354:
	.string	"BUILT_IN_COSL"
.LASF285:
	.string	"CONJ_EXPR"
.LASF797:
	.string	"setting"
.LASF53:
	.string	"_lock"
.LASF325:
	.string	"BUILT_IN_BZERO"
.LASF301:
	.string	"LABELED_BLOCK_EXPR"
.LASF716:
	.string	"format_type_error"
.LASF358:
	.string	"BUILT_IN_ARGS_INFO"
.LASF159:
	.string	"ERROR_MARK"
.LASF791:
	.string	"number_dollar_extra_args"
.LASF624:
	.string	"ATTR_FLAG_BUILT_IN"
.LASF150:
	.string	"MODE_FLOAT"
.LASF331:
	.string	"BUILT_IN_MEMCMP"
.LASF373:
	.string	"BUILT_IN_FPUTC"
.LASF365:
	.string	"BUILT_IN_RETURN"
.LASF787:
	.string	"arg_num"
.LASF414:
	.string	"unused_0"
.LASF430:
	.string	"unused_1"
.LASF558:
	.string	"TI_INTTI_TYPE"
.LASF374:
	.string	"BUILT_IN_FPUTS"
.LASF302:
	.string	"EXIT_BLOCK_EXPR"
.LASF119:
	.string	"V2SImode"
.LASF380:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF743:
	.string	"FMT_FLAG_EMPTY_PREC_OK"
.LASF173:
	.string	"OFFSET_TYPE"
.LASF693:
	.string	"DK_NOTE"
.LASF577:
	.string	"TI_FLOAT_TYPE"
.LASF4:
	.string	"vector"
.LASF300:
	.string	"LOOP_EXPR"
.LASF381:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF114:
	.string	"CDImode"
.LASF292:
	.string	"VA_ARG_EXPR"
.LASF347:
	.string	"BUILT_IN_SIN"
.LASF407:
	.string	"side_effects_flag"
.LASF583:
	.string	"TI_PTRDIFF_TYPE"
.LASF539:
	.string	"uninlinable"
.LASF677:
	.string	"diagnostic_context"
.LASF209:
	.string	"TARGET_EXPR"
.LASF121:
	.string	"V4QImode"
.LASF915:
	.string	"warn_format_extra_args"
.LASF394:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF468:
	.string	"complexity"
.LASF764:
	.string	"ignored"
.LASF919:
	.string	"flag_isoc94"
.LASF482:
	.string	"values"
.LASF432:
	.string	"tree_int_cst"
.LASF920:
	.string	"flag_isoc99"
.LASF350:
	.string	"BUILT_IN_SINF"
.LASF120:
	.string	"V2DImode"
.LASF353:
	.string	"BUILT_IN_SINL"
.LASF411:
	.string	"readonly_flag"
.LASF230:
	.string	"EXACT_DIV_EXPR"
.LASF39:
	.string	"_IO_write_end"
.LASF887:
	.string	"strftime_flag_specs"
.LASF773:
	.string	"left_precision_char"
.LASF31:
	.string	"__va_list_tag"
.LASF330:
	.string	"BUILT_IN_MEMCPY"
.LASF781:
	.string	"wanted_type"
.LASF197:
	.string	"NAMESPACE_DECL"
.LASF701:
	.string	"maximum_length"
.LASF202:
	.string	"ARRAY_REF"
.LASF840:
	.string	"check_format_info_recurse"
.LASF851:
	.string	"orig_format_chars"
.LASF405:
	.string	"chain"
.LASF745:
	.string	"index"
.LASF359:
	.string	"BUILT_IN_CONSTANT_P"
.LASF385:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF391:
	.string	"BUILT_IN_DWARF_CFA"
.LASF182:
	.string	"FUNCTION_TYPE"
.LASF907:
	.string	"input_filename"
.LASF513:
	.string	"tree_decl"
.LASF782:
	.string	"wanted_type_name"
.LASF130:
	.string	"V2SFmode"
.LASF749:
	.string	"format_length_info"
.LASF146:
	.string	"machine_mode"
.LASF664:
	.string	"CTI_SAVED_FUNCTION_NAME_DECLS"
.LASF181:
	.string	"QUAL_UNION_TYPE"
.LASF818:
	.string	"msgid"
.LASF449:
	.string	"chunk"
.LASF755:
	.string	"flags2"
.LASF721:
	.string	"FMT_LEN_none"
.LASF774:
	.string	"precision_char"
.LASF297:
	.string	"GOTO_EXPR"
.LASF92:
	.string	"TImode"
.LASF720:
	.string	"format_lengths"
.LASF654:
	.string	"CTI_C_BOOL_TRUE"
.LASF208:
	.string	"INIT_EXPR"
.LASF243:
	.string	"LROTATE_EXPR"
.LASF75:
	.string	"_sch_isidst"
.LASF433:
	.string	"realvaluetype"
.LASF328:
	.string	"BUILT_IN_INDEX"
.LASF274:
	.string	"NOP_EXPR"
.LASF535:
	.string	"no_limit_stack"
.LASF843:
	.string	"array_size"
.LASF671:
	.string	"output_buffer"
.LASF821:
	.string	"oparams"
.LASF873:
	.string	"check_format_types"
.LASF90:
	.string	"SImode"
.LASF131:
	.string	"V2DFmode"
.LASF228:
	.string	"ROUND_MOD_EXPR"
.LASF898:
	.string	"dollar_arguments_alloc"
.LASF730:
	.string	"FMT_LEN_MAX"
.LASF706:
	.string	"prefixing_rule"
.LASF839:
	.string	"format_tree"
.LASF420:
	.string	"protected_flag"
.LASF9:
	.string	"type"
.LASF770:
	.string	"bad_flag_pairs"
.LASF224:
	.string	"ROUND_DIV_EXPR"
.LASF118:
	.string	"V2HImode"
.LASF551:
	.string	"lang_decl"
.LASF239:
	.string	"ABS_EXPR"
.LASF83:
	.string	"_sch_isbasic"
.LASF874:
	.string	"cur_type"
.LASF794:
	.string	"number_unterminated"
.LASF473:
	.string	"block_num"
.LASF651:
	.string	"CTI_BOOLEAN_TRUE"
.LASF871:
	.string	"found_width"
.LASF249:
	.string	"BIT_NOT_EXPR"
.LASF467:
	.string	"tree_exp"
.LASF453:
	.string	"temp"
.LASF634:
	.string	"CTI_WCHAR_TYPE"
.LASF487:
	.string	"mode"
.LASF91:
	.string	"DImode"
.LASF443:
	.string	"_obstack_chunk"
.LASF251:
	.string	"TRUTH_ORIF_EXPR"
.LASF308:
	.string	"BUILT_IN_ALLOCA"
.LASF830:
	.string	"nalloc"
.LASF869:
	.string	"opnum"
.LASF13:
	.string	"__gnuc_va_list"
.LASF614:
	.string	"itk_unsigned_long"
.LASF46:
	.string	"_chain"
.LASF829:
	.string	"nargnum"
.LASF801:
	.string	"info"
.LASF213:
	.string	"METHOD_CALL_EXPR"
.LASF563:
	.string	"TI_UINTTI_TYPE"
.LASF527:
	.string	"static_ctor_flag"
.LASF104:
	.string	"TFmode"
.LASF179:
	.string	"RECORD_TYPE"
.LASF23:
	.string	"unsigned char"
.LASF412:
	.string	"unsigned_flag"
.LASF541:
	.string	"arguments"
.LASF635:
	.string	"CTI_SIGNED_WCHAR_TYPE"
.LASF926:
	.string	"_IO_lock_t"
.LASF582:
	.string	"TI_CONST_PTR_TYPE"
.LASF508:
	.string	"lang_specific"
.LASF739:
	.string	"FMT_FLAG_FANCY_PERCENT_OK"
.LASF897:
	.string	"dollar_arguments_pointer_p"
.LASF448:
	.string	"chunk_size"
.LASF903:
	.string	"_sch_istable"
.LASF87:
	.string	"BImode"
.LASF507:
	.string	"alias_set"
.LASF101:
	.string	"SFmode"
.LASF74:
	.string	"_sch_isxdigit"
.LASF557:
	.string	"TI_INTDI_TYPE"
.LASF492:
	.string	"packed_flag"
.LASF245:
	.string	"BIT_IOR_EXPR"
.LASF309:
	.string	"BUILT_IN_ABS"
.LASF191:
	.string	"CONST_DECL"
.LASF434:
	.string	"tree_real_cst"
.LASF196:
	.string	"FIELD_DECL"
.LASF778:
	.string	"precision_type"
.LASF610:
	.string	"itk_unsigned_short"
.LASF319:
	.string	"BUILT_IN_CREAL"
.LASF154:
	.string	"MODE_COMPLEX_FLOAT"
.LASF917:
	.string	"warn_format_security"
.LASF518:
	.string	"regdecl_flag"
.LASF636:
	.string	"CTI_UNSIGNED_WCHAR_TYPE"
.LASF315:
	.string	"BUILT_IN_IMAXABS"
.LASF170:
	.string	"BOOLEAN_TYPE"
.LASF324:
	.string	"BUILT_IN_CIMAGL"
.LASF450:
	.string	"object_base"
.LASF696:
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
.LASF384:
	.string	"BUILT_IN_ISGREATER"
.LASF368:
	.string	"BUILT_IN_TRAP"
.LASF277:
	.string	"SAVE_EXPR"
.LASF431:
	.string	"high"
.LASF811:
	.string	"slen"
.LASF599:
	.string	"TI_V4HI_TYPE"
.LASF102:
	.string	"DFmode"
.LASF737:
	.string	"FMT_FLAG_ARG_CONVERT"
.LASF747:
	.string	"double_index"
.LASF21:
	.string	"size_t"
.LASF96:
	.string	"PSImode"
.LASF334:
	.string	"BUILT_IN_STRNCAT"
.LASF899:
	.string	"dollar_arguments_count"
.LASF867:
	.string	"last_wanted_type"
.LASF627:
	.string	"SSIZETYPE"
.LASF692:
	.string	"DK_ANACHRONISM"
.LASF189:
	.string	"FUNCTION_DECL"
.LASF387:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF628:
	.string	"USIZETYPE"
.LASF210:
	.string	"COND_EXPR"
.LASF110:
	.string	"TCmode"
.LASF780:
	.string	"format_wanted_type"
.LASF231:
	.string	"FIX_TRUNC_EXPR"
.LASF816:
	.string	"attrs"
.LASF38:
	.string	"_IO_write_ptr"
.LASF881:
	.string	"scanf_length_specs"
.LASF446:
	.string	"contents"
.LASF167:
	.string	"COMPLEX_TYPE"
.LASF369:
	.string	"BUILT_IN_PREFETCH"
.LASF241:
	.string	"LSHIFT_EXPR"
.LASF879:
	.string	"that"
.LASF107:
	.string	"SCmode"
.LASF894:
	.string	"monetary_char_table"
.LASF605:
	.string	"integer_type_kind"
.LASF19:
	.string	"va_list"
.LASF656:
	.string	"CTI_DEFAULT_FUNCTION_TYPE"
.LASF184:
	.string	"INTEGER_CST"
.LASF192:
	.string	"TYPE_DECL"
.LASF574:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF912:
	.string	"c_language"
.LASF667:
	.string	"c_language_kind"
.LASF699:
	.string	"printer_fn"
.LASF682:
	.string	"line"
.LASF504:
	.string	"main_variant"
.LASF771:
	.string	"flags"
.LASF288:
	.string	"PREDECREMENT_EXPR"
.LASF566:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF579:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF409:
	.string	"addressable_flag"
.LASF417:
	.string	"static_flag"
.LASF576:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF140:
	.string	"CCGOCmode"
.LASF345:
	.string	"BUILT_IN_STRRCHR"
.LASF483:
	.string	"size"
.LASF595:
	.string	"TI_V16SF_TYPE"
.LASF575:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF766:
	.string	"length_char_specs"
.LASF77:
	.string	"_sch_isnvsp"
.LASF30:
	.string	"FILE"
.LASF790:
	.string	"number_extra_args"
.LASF810:
	.string	"decode_format_type"
.LASF168:
	.string	"VECTOR_TYPE"
.LASF151:
	.string	"MODE_PARTIAL_INT"
.LASF326:
	.string	"BUILT_IN_BCMP"
.LASF742:
	.string	"FMT_FLAG_ZERO_WIDTH_BAD"
.LASF0:
	.string	"tree"
.LASF108:
	.string	"DCmode"
.LASF658:
	.string	"CTI_G77_UINTEGER_TYPE"
.LASF81:
	.string	"_sch_isgraph"
.LASF922:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF248:
	.string	"BIT_ANDTC_EXPR"
.LASF581:
	.string	"TI_PTR_TYPE"
.LASF7:
	.string	"identifier"
.LASF665:
	.string	"CTI_VOID_ZERO"
.LASF831:
	.string	"finish_dollar_format_checking"
.LASF138:
	.string	"CCmode"
.LASF397:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF389:
	.string	"BUILT_IN_ISUNORDERED"
.LASF683:
	.string	"warn"
.LASF913:
	.string	"warn_format"
.LASF686:
	.string	"x_data"
.LASF661:
	.string	"CTI_FUNCTION_NAME_DECL"
.LASF136:
	.string	"V16SFmode"
.LASF786:
	.string	"param"
.LASF543:
	.string	"initial"
.LASF643:
	.string	"CTI_WIDEST_INT_LIT_TYPE"
.LASF250:
	.string	"TRUTH_ANDIF_EXPR"
.LASF42:
	.string	"_IO_save_base"
.LASF626:
	.string	"SIZETYPE"
.LASF911:
	.string	"c_global_trees"
.LASF255:
	.string	"TRUTH_NOT_EXPR"
.LASF236:
	.string	"NEGATE_EXPR"
.LASF648:
	.string	"CTI_STRING_TYPE"
.LASF127:
	.string	"V8SImode"
.LASF399:
	.string	"BUILT_IN_STDARG_START"
.LASF533:
	.string	"comdat_flag"
.LASF741:
	.string	"FMT_FLAG_USE_DOLLAR"
.LASF800:
	.string	"no_add_attrs"
.LASF562:
	.string	"TI_UINTDI_TYPE"
.LASF177:
	.string	"ARRAY_TYPE"
.LASF572:
	.string	"TI_BITSIZE_UNIT"
.LASF681:
	.string	"file"
.LASF258:
	.string	"GT_EXPR"
.LASF56:
	.string	"__pad2"
.LASF271:
	.string	"CARD_EXPR"
.LASF406:
	.string	"code"
.LASF2:
	.string	"int_cst"
.LASF578:
	.string	"TI_DOUBLE_TYPE"
.LASF367:
	.string	"BUILT_IN_LONGJMP"
.LASF441:
	.string	"tree_vector"
.LASF175:
	.string	"METHOD_TYPE"
.LASF660:
	.string	"CTI_G77_ULONGINT_TYPE"
.LASF819:
	.string	"status_warning"
.LASF139:
	.string	"CCGCmode"
.LASF853:
	.string	"has_operand_number"
.LASF10:
	.string	"list"
.LASF828:
	.string	"__FUNCTION__"
.LASF273:
	.string	"CONVERT_EXPR"
.LASF125:
	.string	"V8QImode"
.LASF900:
	.string	"dollar_first_arg_num"
.LASF225:
	.string	"TRUNC_MOD_EXPR"
.LASF128:
	.string	"V8DImode"
.LASF890:
	.string	"strfmon_flag_pairs"
.LASF157:
	.string	"MAX_MODE_CLASS"
.LASF752:
	.string	"pointer_count"
.LASF723:
	.string	"FMT_LEN_h"
.LASF616:
	.string	"itk_unsigned_long_long"
.LASF729:
	.string	"FMT_LEN_j"
.LASF724:
	.string	"FMT_LEN_l"
.LASF69:
	.string	"_sch_islower"
.LASF728:
	.string	"FMT_LEN_t"
.LASF834:
	.string	"get_flag_spec"
.LASF221:
	.string	"TRUNC_DIV_EXPR"
.LASF751:
	.string	"format_chars"
.LASF712:
	.string	"printf_format_type"
.LASF914:
	.string	"warn_format_y2k"
.LASF278:
	.string	"UNSAVE_EXPR"
.LASF663:
	.string	"CTI_C99_FUNCTION_NAME_DECL"
.LASF220:
	.string	"MULT_EXPR"
.LASF465:
	.string	"value"
.LASF259:
	.string	"GE_EXPR"
.LASF63:
	.string	"_next"
.LASF341:
	.string	"BUILT_IN_STRPBRK"
.LASF817:
	.string	"params"
.LASF877:
	.string	"char_type_flag"
.LASF281:
	.string	"REFERENCE_EXPR"
.LASF226:
	.string	"CEIL_MOD_EXPR"
.LASF480:
	.string	"address"
.LASF455:
	.string	"chunkfun"
.LASF370:
	.string	"BUILT_IN_PUTCHAR"
.LASF639:
	.string	"CTI_SIGNED_SIZE_TYPE"
.LASF134:
	.string	"V8SFmode"
.LASF222:
	.string	"CEIL_DIV_EXPR"
.LASF878:
	.string	"this"
.LASF360:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF704:
	.string	"emitted_prefix_p"
.LASF702:
	.string	"ideal_maximum_length"
.LASF666:
	.string	"CTI_MAX"
.LASF501:
	.string	"minval"
.LASF719:
	.string	"first_arg_num"
.LASF142:
	.string	"CCZmode"
.LASF795:
	.string	"number_other"
.LASF761:
	.string	"format_flag_spec"
.LASF631:
	.string	"UBITSIZETYPE"
.LASF223:
	.string	"FLOOR_DIV_EXPR"
.LASF161:
	.string	"TREE_LIST"
.LASF860:
	.string	"main_arg_num"
.LASF554:
	.string	"TI_INTQI_TYPE"
.LASF477:
	.string	"abstract_origin"
.LASF188:
	.string	"STRING_CST"
.LASF256:
	.string	"LT_EXPR"
.LASF744:
	.string	"FMT_FLAG_DOLLAR_GAP_POINTER_OK"
.LASF246:
	.string	"BIT_XOR_EXPR"
.LASF304:
	.string	"SWITCH_EXPR"
.LASF253:
	.string	"TRUTH_OR_EXPR"
.LASF731:
	.string	"format_std_version"
.LASF726:
	.string	"FMT_LEN_L"
.LASF295:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF461:
	.string	"ht_identifier"
.LASF135:
	.string	"V8DFmode"
.LASF855:
	.string	"length_chars"
.LASF544:
	.string	"assembler_name"
.LASF237:
	.string	"MIN_EXPR"
.LASF623:
	.string	"ATTR_FLAG_TYPE_IN_PLACE"
.LASF587:
	.string	"TI_UV4SI_TYPE"
.LASF490:
	.string	"needs_constructing_flag"
.LASF232:
	.string	"FIX_CEIL_EXPR"
.LASF338:
	.string	"BUILT_IN_STRNCMP"
.LASF909:
	.string	"current_function_decl"
.LASF438:
	.string	"tree_complex"
.LASF916:
	.string	"warn_format_nonliteral"
.LASF718:
	.string	"format_num"
.LASF621:
	.string	"ATTR_FLAG_FUNCTION_NEXT"
.LASF143:
	.string	"CCFPmode"
.LASF257:
	.string	"LE_EXPR"
.LASF542:
	.string	"result"
.LASF868:
	.string	"aflag"
.LASF620:
	.string	"ATTR_FLAG_DECL_NEXT"
.LASF500:
	.string	"name"
.LASF64:
	.string	"_sbuf"
.LASF44:
	.string	"_IO_save_end"
.LASF149:
	.string	"MODE_INT"
.LASF753:
	.string	"types"
.LASF3:
	.string	"real_cst"
.LASF698:
	.string	"diagnostic_prefixing_rule_t"
.LASF238:
	.string	"MAX_EXPR"
.LASF691:
	.string	"DK_WARNING"
.LASF470:
	.string	"tree_block"
.LASF568:
	.string	"TI_SIZE_ZERO"
.LASF836:
	.string	"flag"
.LASF475:
	.string	"subblocks"
.LASF756:
	.string	"format_char_info"
.LASF609:
	.string	"itk_short"
.LASF15:
	.string	"fp_offset"
.LASF332:
	.string	"BUILT_IN_MEMSET"
.LASF229:
	.string	"RDIV_EXPR"
.LASF14:
	.string	"gp_offset"
.LASF521:
	.string	"virtual_flag"
.LASF655:
	.string	"CTI_C_BOOL_FALSE"
.LASF494:
	.string	"pointer_depth"
.LASF437:
	.string	"pointer"
.LASF190:
	.string	"LABEL_DECL"
.LASF783:
	.string	"char_lenient_flag"
.LASF675:
	.string	"digit_buffer"
.LASF403:
	.string	"END_BUILTINS"
.LASF629:
	.string	"BITSIZETYPE"
.LASF12:
	.string	"sizetype"
.LASF619:
	.string	"attribute_flags"
.LASF813:
	.string	"set_Wformat"
.LASF123:
	.string	"V4SImode"
.LASF404:
	.string	"tree_common"
.LASF505:
	.string	"binfo"
.LASF571:
	.string	"TI_BITSIZE_ONE"
.LASF24:
	.string	"short unsigned int"
.LASF862:
	.string	"wanted_type_std"
.LASF68:
	.string	"_sch_isdigit"
.LASF25:
	.string	"signed char"
.LASF565:
	.string	"TI_INTEGER_ONE"
.LASF904:
	.string	"tree_code_type"
.LASF695:
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
.LASF464:
	.string	"purpose"
.LASF555:
	.string	"TI_INTHI_TYPE"
.LASF497:
	.string	"pointer_to"
.LASF530:
	.string	"weak_flag"
.LASF547:
	.string	"saved_tree"
.LASF466:
	.string	"tree_vec"
.LASF514:
	.string	"filename"
.LASF815:
	.string	"status"
.LASF290:
	.string	"POSTDECREMENT_EXPR"
.LASF378:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF865:
	.string	"main_wanted_type"
.LASF382:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF633:
	.string	"c_tree_index"
.LASF28:
	.string	"__off64_t"
.LASF674:
	.string	"line_length"
.LASF604:
	.string	"TI_MAX"
.LASF124:
	.string	"V4DImode"
.LASF459:
	.string	"maybe_empty_object"
.LASF416:
	.string	"nothrow_flag"
.LASF36:
	.string	"_IO_read_base"
.LASF294:
	.string	"TRY_FINALLY_EXPR"
.LASF54:
	.string	"_offset"
.LASF5:
	.string	"string"
.LASF672:
	.string	"state"
.LASF41:
	.string	"_IO_buf_end"
.LASF499:
	.string	"symtab"
.LASF589:
	.string	"TI_UV8QI_TYPE"
.LASF844:
	.string	"array_init"
.LASF260:
	.string	"EQ_EXPR"
.LASF198:
	.string	"COMPONENT_REF"
.LASF546:
	.string	"live_range_rtl"
.LASF526:
	.string	"transparent_union"
.LASF219:
	.string	"MINUS_EXPR"
.LASF503:
	.string	"next_variant"
.LASF60:
	.string	"_mode"
.LASF155:
	.string	"MODE_VECTOR_INT"
.LASF37:
	.string	"_IO_write_base"
.LASF97:
	.string	"PDImode"
.LASF893:
	.string	"time_char_table"
.LASF512:
	.string	"function"
.LASF342:
	.string	"BUILT_IN_STRSPN"
.LASF132:
	.string	"V4SFmode"
.LASF206:
	.string	"COMPOUND_EXPR"
.LASF559:
	.string	"TI_UINTQI_TYPE"
.LASF713:
	.string	"scanf_format_type"
.LASF757:
	.string	"flag_char"
.LASF694:
	.string	"DK_LAST_DIAGNOSTIC_KIND"
.LASF709:
	.string	"diagnostic_count"
.LASF361:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF484:
	.string	"size_unit"
.LASF377:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF329:
	.string	"BUILT_IN_RINDEX"
.LASF888:
	.string	"strftime_flag_pairs"
.LASF89:
	.string	"HImode"
.LASF153:
	.string	"MODE_COMPLEX_INT"
.LASF746:
	.string	"double_name"
.LASF646:
	.string	"CTI_WCHAR_ARRAY_TYPE"
.LASF645:
	.string	"CTI_CHAR_ARRAY_TYPE"
.LASF732:
	.string	"STD_C89"
.LASF306:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF156:
	.string	"MODE_VECTOR_FLOAT"
.LASF20:
	.string	"long int"
.LASF172:
	.string	"POINTER_TYPE"
.LASF240:
	.string	"FFS_EXPR"
.LASF910:
	.string	"pedantic"
.LASF164:
	.string	"VOID_TYPE"
.LASF276:
	.string	"VIEW_CONVERT_EXPR"
.LASF553:
	.string	"TI_ERROR_MARK"
.LASF823:
	.string	"format"
.LASF748:
	.string	"double_std"
.LASF62:
	.string	"_IO_marker"
.LASF103:
	.string	"XFmode"
.LASF885:
	.string	"scanf_flag_specs"
.LASF444:
	.string	"limit"
.LASF845:
	.string	"found_format_arg"
.LASF133:
	.string	"V4DFmode"
.LASF733:
	.string	"STD_C94"
.LASF735:
	.string	"STD_C99"
.LASF765:
	.string	"format_flag_pair"
.LASF525:
	.string	"defer_output"
.LASF601:
	.string	"TI_V2SF_TYPE"
.LASF808:
	.string	"first_arg_num_expr"
.LASF734:
	.string	"STD_C9L"
.LASF506:
	.string	"context"
.LASF759:
	.string	"skip_next_char"
.LASF82:
	.string	"_sch_iscppsp"
.LASF217:
	.string	"WITH_RECORD_EXPR"
.LASF552:
	.string	"tree_index"
.LASF471:
	.string	"handler_block_flag"
.LASF538:
	.string	"non_addressable"
.LASF820:
	.string	"init_dollar_format_checking"
.LASF393:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF454:
	.string	"alignment_mask"
.LASF638:
	.string	"CTI_C_SIZE_TYPE"
.LASF203:
	.string	"ARRAY_RANGE_REF"
.LASF632:
	.string	"TYPE_KIND_LAST"
.LASF340:
	.string	"BUILT_IN_STRSTR"
.LASF524:
	.string	"common_flag"
.LASF456:
	.string	"freefun"
.LASF882:
	.string	"strfmon_length_specs"
.LASF22:
	.string	"long unsigned int"
.LASF532:
	.string	"no_instrument_function_entry_exit"
.LASF413:
	.string	"asm_written_flag"
.LASF509:
	.string	"rtx_def"
.LASF158:
	.string	"tree_code"
.LASF71:
	.string	"_sch_ispunct"
.LASF99:
	.string	"HFmode"
.LASF376:
	.string	"BUILT_IN_FPRINTF"
.LASF408:
	.string	"constant_flag"
.LASF348:
	.string	"BUILT_IN_COS"
.LASF835:
	.string	"spec"
.LASF421:
	.string	"bounded_flag"
.LASF195:
	.string	"RESULT_DECL"
.LASF293:
	.string	"TRY_CATCH_EXPR"
.LASF594:
	.string	"TI_V4SF_TYPE"
.LASF463:
	.string	"tree_list"
.LASF111:
	.string	"CQImode"
.LASF895:
	.string	"format_types"
.LASF29:
	.string	"char"
.LASF109:
	.string	"XCmode"
.LASF388:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF458:
	.string	"use_extra_arg"
.LASF307:
	.string	"built_in_function"
.LASF275:
	.string	"NON_LVALUE_EXPR"
.LASF657:
	.string	"CTI_G77_INTEGER_TYPE"
.LASF451:
	.string	"next_free"
.LASF534:
	.string	"malloc_flag"
.LASF40:
	.string	"_IO_buf_base"
.LASF486:
	.string	"precision"
.LASF200:
	.string	"INDIRECT_REF"
.LASF117:
	.string	"V2QImode"
.LASF298:
	.string	"RETURN_EXPR"
.LASF322:
	.string	"BUILT_IN_CIMAG"
.LASF363:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF95:
	.string	"PHImode"
.LASF35:
	.string	"_IO_read_end"
.LASF804:
	.string	"handle_format_arg_attribute"
.LASF491:
	.string	"transparent_union_flag"
.LASF647:
	.string	"CTI_INT_ARRAY_TYPE"
.LASF625:
	.string	"size_type_kind"
.LASF116:
	.string	"COImode"
.LASF758:
	.string	"predicate"
.LASF837:
	.string	"predicates"
.LASF859:
	.string	"cur_param"
.LASF798:
	.string	"node"
.LASF76:
	.string	"_sch_isvsp"
.LASF32:
	.string	"_IO_FILE"
.LASF896:
	.string	"dollar_arguments_used"
.LASF680:
	.string	"args_ptr"
.LASF496:
	.string	"align"
.LASF822:
	.string	"maybe_read_dollar_number"
.LASF390:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF606:
	.string	"itk_char"
.LASF573:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF148:
	.string	"MODE_RANDOM"
.LASF678:
	.string	"buffer"
.LASF891:
	.string	"print_char_table"
.LASF906:
	.string	"integer_types"
.LASF137:
	.string	"BLKmode"
.LASF106:
	.string	"HCmode"
.LASF211:
	.string	"BIND_EXPR"
.LASF689:
	.string	"DK_SORRY"
.LASF283:
	.string	"FDESC_EXPR"
.LASF592:
	.string	"TI_UV2SF_TYPE"
.LASF218:
	.string	"PLUS_EXPR"
.LASF767:
	.string	"conversion_specs"
.LASF921:
	.string	"warn_long_long"
.LASF598:
	.string	"TI_V8QI_TYPE"
.LASF603:
	.string	"TI_MAIN_IDENTIFIER"
.LASF339:
	.string	"BUILT_IN_STRLEN"
.LASF180:
	.string	"UNION_TYPE"
.LASF690:
	.string	"DK_ERROR"
.LASF282:
	.string	"ENTRY_VALUE_EXPR"
.LASF357:
	.string	"BUILT_IN_NEXT_ARG"
.LASF55:
	.string	"__pad1"
.LASF57:
	.string	"__pad3"
.LASF58:
	.string	"__pad4"
.LASF59:
	.string	"__pad5"
.LASF522:
	.string	"ignored_flag"
.LASF850:
	.string	"check_format_info_main"
.LASF144:
	.string	"CCFPUmode"
.LASF892:
	.string	"scan_char_table"
.LASF529:
	.string	"artificial_flag"
.LASF861:
	.string	"main_arg_params"
.LASF45:
	.string	"_markers"
.LASF65:
	.string	"_pos"
.LASF703:
	.string	"indent_skip"
.LASF812:
	.string	"alen"
.LASF263:
	.string	"ORDERED_EXPR"
.LASF401:
	.string	"BUILT_IN_VA_COPY"
.LASF6:
	.string	"complex"
.LASF460:
	.string	"alloc_failed"
.LASF738:
	.string	"FMT_FLAG_SCANF_A_KLUDGE"
.LASF847:
	.string	"arg0"
.LASF848:
	.string	"arg1"
.LASF174:
	.string	"REFERENCE_TYPE"
.LASF775:
	.string	"suppression_char"
.LASF785:
	.string	"reading_from_flag"
.LASF476:
	.string	"supercontext"
.LASF402:
	.string	"BUILT_IN_EXPECT"
.LASF710:
	.string	"output_state"
.LASF502:
	.string	"maxval"
.LASF262:
	.string	"UNORDERED_EXPR"
.LASF586:
	.string	"TI_UV4SF_TYPE"
.LASF425:
	.string	"lang_flag_2"
.LASF659:
	.string	"CTI_G77_LONGINT_TYPE"
.LASF649:
	.string	"CTI_CONST_STRING_TYPE"
.LASF343:
	.string	"BUILT_IN_STRCSPN"
.LASF653:
	.string	"CTI_C_BOOL_TYPE"
.LASF270:
	.string	"SET_LE_EXPR"
.LASF779:
	.string	"format_kind_info"
.LASF799:
	.string	"args"
.LASF602:
	.string	"TI_V16QI_TYPE"
.LASF615:
	.string	"itk_long_long"
.LASF824:
	.string	"dollar_needed"
.LASF652:
	.string	"CTI_BOOLEAN_FALSE"
.LASF289:
	.string	"PREINCREMENT_EXPR"
.LASF515:
	.string	"linenum"
.LASF88:
	.string	"QImode"
.LASF266:
	.string	"UNGT_EXPR"
.LASF901:
	.string	"dollar_max_arg_used"
.LASF495:
	.string	"user_align"
.LASF833:
	.string	"found_pointer_gap"
.LASF310:
	.string	"BUILT_IN_LABS"
.LASF100:
	.string	"TQFmode"
.LASF650:
	.string	"CTI_BOOLEAN_TYPE"
.LASF875:
	.string	"orig_cur_type"
.LASF410:
	.string	"volatile_flag"
.LASF333:
	.string	"BUILT_IN_STRCAT"
.LASF349:
	.string	"BUILT_IN_SQRTF"
.LASF352:
	.string	"BUILT_IN_SQRTL"
.LASF872:
	.string	"y2k_level"
.LASF612:
	.string	"itk_unsigned_int"
.LASF511:
	.string	"off_align"
.LASF838:
	.string	"check_format_info"
.LASF305:
	.string	"EXC_PTR_EXPR"
.LASF452:
	.string	"chunk_limit"
.LASF789:
	.string	"number_non_literal"
.LASF327:
	.string	"BUILT_IN_FFS"
.LASF637:
	.string	"CTI_WINT_TYPE"
.LASF415:
	.string	"used_flag"
.LASF372:
	.string	"BUILT_IN_PRINTF"
.LASF171:
	.string	"CHAR_TYPE"
.LASF485:
	.string	"attributes"
.LASF597:
	.string	"TI_V8HI_TYPE"
.LASF640:
	.string	"CTI_UNSIGNED_PTRDIFF_TYPE"
.LASF233:
	.string	"FIX_FLOOR_EXPR"
.LASF687:
	.string	"DK_FATAL"
.LASF93:
	.string	"OImode"
.LASF419:
	.string	"private_flag"
.LASF379:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF423:
	.string	"lang_flag_0"
.LASF424:
	.string	"lang_flag_1"
.LASF199:
	.string	"BIT_FIELD_REF"
.LASF426:
	.string	"lang_flag_3"
.LASF427:
	.string	"lang_flag_4"
.LASF428:
	.string	"lang_flag_5"
.LASF429:
	.string	"lang_flag_6"
.LASF540:
	.string	"lang_flag_7"
.LASF267:
	.string	"UNGE_EXPR"
.LASF550:
	.string	"pointer_alias_set"
.LASF314:
	.string	"BUILT_IN_LLABS"
.LASF590:
	.string	"TI_UV4HI_TYPE"
.LASF193:
	.string	"VAR_DECL"
.LASF469:
	.string	"operands"
.LASF697:
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
.LASF207:
	.string	"MODIFY_EXPR"
.LASF772:
	.string	"width_char"
.LASF644:
	.string	"CTI_WIDEST_UINT_LIT_TYPE"
.LASF462:
	.string	"tree_identifier"
.LASF923:
	.string	"c-format.c"
.LASF162:
	.string	"TREE_VEC"
.LASF355:
	.string	"BUILT_IN_SAVEREGS"
.LASF299:
	.string	"EXIT_EXPR"
.LASF317:
	.string	"BUILT_IN_CONJF"
.LASF242:
	.string	"RSHIFT_EXPR"
.LASF318:
	.string	"BUILT_IN_CONJL"
.LASF641:
	.string	"CTI_INTMAX_TYPE"
.LASF84:
	.string	"long long unsigned int"
.LASF842:
	.string	"offset"
.LASF50:
	.string	"_cur_column"
.LASF160:
	.string	"IDENTIFIER_NODE"
.LASF809:
	.string	"decode_format_attr"
.LASF560:
	.string	"TI_UINTHI_TYPE"
.LASF98:
	.string	"QFmode"
.LASF545:
	.string	"section_name"
.LASF883:
	.string	"printf_flag_specs"
.LASF864:
	.string	"precision_wanted_type"
.LASF264:
	.string	"UNLT_EXPR"
.LASF676:
	.string	"format_decoder"
.LASF183:
	.string	"LANG_TYPE"
.LASF827:
	.string	"overflow_flag"
.LASF66:
	.string	"_sch_isblank"
.LASF564:
	.string	"TI_INTEGER_ZERO"
.LASF807:
	.string	"format_type_id"
.LASF43:
	.string	"_IO_backup_base"
.LASF736:
	.string	"STD_EXT"
.LASF145:
	.string	"MAX_MACHINE_MODE"
.LASF34:
	.string	"_IO_read_ptr"
.LASF796:
	.string	"format_check_results"
.LASF662:
	.string	"CTI_PRETTY_FUNCTION_NAME_DECL"
.LASF611:
	.string	"itk_int"
.LASF356:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF418:
	.string	"public_flag"
.LASF826:
	.string	"argnum"
.LASF488:
	.string	"string_flag"
.LASF688:
	.string	"DK_ICE"
.LASF147:
	.string	"mode_class"
.LASF884:
	.string	"printf_flag_pairs"
.LASF178:
	.string	"SET_TYPE"
.LASF152:
	.string	"MODE_CC"
.LASF474:
	.string	"vars"
.LASF212:
	.string	"CALL_EXPR"
.LASF94:
	.string	"PQImode"
.LASF247:
	.string	"BIT_AND_EXPR"
.LASF854:
	.string	"suppressed"
.LASF286:
	.string	"REALPART_EXPR"
.LASF126:
	.string	"V8HImode"
.LASF866:
	.string	"first_wanted_type"
.LASF668:
	.string	"clk_c"
.LASF556:
	.string	"TI_INTSI_TYPE"
.LASF323:
	.string	"BUILT_IN_CIMAGF"
.LASF517:
	.string	"nonlocal_flag"
.LASF49:
	.string	"_old_offset"
.LASF422:
	.string	"deprecated_flag"
.LASF493:
	.string	"restrict_flag"
.LASF78:
	.string	"_sch_isalpha"
.LASF129:
	.string	"V16QImode"
.LASF447:
	.string	"obstack"
.LASF311:
	.string	"BUILT_IN_FABS"
.LASF8:
	.string	"decl"
.LASF287:
	.string	"IMAGPART_EXPR"
.LASF85:
	.string	"long long int"
.LASF591:
	.string	"TI_UV2SI_TYPE"
.LASF825:
	.string	"param_ptr"
.LASF548:
	.string	"inlined_fns"
.LASF617:
	.string	"itk_none"
.LASF48:
	.string	"_flags2"
.LASF630:
	.string	"SBITSIZETYPE"
.LASF918:
	.string	"warn_missing_format_attribute"
.LASF105:
	.string	"QCmode"
.LASF215:
	.string	"CLEANUP_POINT_EXPR"
.LASF700:
	.string	"prefix"
.LASF707:
	.string	"cursor"
.LASF588:
	.string	"TI_UV8HI_TYPE"
.LASF185:
	.string	"REAL_CST"
.LASF70:
	.string	"_sch_isprint"
.LASF344:
	.string	"BUILT_IN_STRCHR"
.LASF777:
	.string	"width_type"
.LASF400:
	.string	"BUILT_IN_VA_END"
.LASF79:
	.string	"_sch_isalnum"
.LASF776:
	.string	"length_code_char"
.LASF498:
	.string	"reference_to"
.LASF722:
	.string	"FMT_LEN_hh"
.LASF234:
	.string	"FIX_ROUND_EXPR"
.LASF261:
	.string	"NE_EXPR"
.LASF364:
	.string	"BUILT_IN_APPLY"
.LASF386:
	.string	"BUILT_IN_ISLESS"
.LASF351:
	.string	"BUILT_IN_COSF"
.LASF169:
	.string	"ENUMERAL_TYPE"
.LASF802:
	.string	"argument"
.LASF112:
	.string	"CHImode"
.LASF72:
	.string	"_sch_isspace"
.LASF806:
	.string	"validated_p"
.LASF320:
	.string	"BUILT_IN_CREALF"
.LASF205:
	.string	"CONSTRUCTOR"
.LASF863:
	.string	"width_wanted_type"
.LASF472:
	.string	"abstract_flag"
.LASF321:
	.string	"BUILT_IN_CREALL"
.LASF531:
	.string	"non_addr_const_p"
.LASF442:
	.string	"elements"
.LASF856:
	.string	"length_chars_val"
.LASF607:
	.string	"itk_signed_char"
.LASF366:
	.string	"BUILT_IN_SETJMP"
.LASF383:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF613:
	.string	"itk_long"
.LASF141:
	.string	"CCNOmode"
.LASF122:
	.string	"V4HImode"
.LASF717:
	.string	"function_format_info"
.LASF740:
	.string	"FMT_FLAG_DOLLAR_MULTIPLE"
.LASF670:
	.string	"clk_objective_c"
.LASF163:
	.string	"BLOCK"
.LASF585:
	.string	"TI_VOID_LIST_NODE"
.LASF768:
	.string	"modifier_chars"
.LASF750:
	.string	"format_type_detail"
.LASF870:
	.string	"non_zero_width_char"
.LASF520:
	.string	"bit_field_flag"
.LASF371:
	.string	"BUILT_IN_PUTS"
.LASF857:
	.string	"length_chars_std"
.LASF523:
	.string	"in_system_header_flag"
.LASF889:
	.string	"strfmon_flag_specs"
.LASF80:
	.string	"_sch_isidnum"
.LASF549:
	.string	"vindex"
.LASF457:
	.string	"extra_arg"
.LASF187:
	.string	"VECTOR_CST"
.LASF727:
	.string	"FMT_LEN_z"
.LASF18:
	.string	"unsigned int"
.LASF279:
	.string	"RTL_EXPR"
.LASF793:
	.string	"number_empty"
.LASF925:
	.string	"tree_node"
.LASF673:
	.string	"stream"
.LASF268:
	.string	"UNEQ_EXPR"
.LASF336:
	.string	"BUILT_IN_STRNCPY"
.LASF858:
	.string	"format_char"
.LASF705:
	.string	"need_newline_p"
.LASF784:
	.string	"writing_in_flag"
.LASF165:
	.string	"INTEGER_TYPE"
.LASF685:
	.string	"end_diagnostic"
.LASF642:
	.string	"CTI_UINTMAX_TYPE"
.LASF902:
	.string	"dollar_format_warned"
.LASF516:
	.string	"external_flag"
.LASF26:
	.string	"short int"
.LASF272:
	.string	"RANGE_EXPR"
.LASF346:
	.string	"BUILT_IN_SQRT"
.LASF201:
	.string	"BUFFER_REF"
.LASF445:
	.string	"prev"
.LASF51:
	.string	"_vtable_offset"
.LASF284:
	.string	"COMPLEX_EXPR"
.LASF392:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF265:
	.string	"UNLE_EXPR"
.LASF832:
	.string	"pointer_gap_ok"
.LASF86:
	.string	"VOIDmode"
.LASF584:
	.string	"TI_VA_LIST_TYPE"
.LASF792:
	.string	"number_wide"
.LASF337:
	.string	"BUILT_IN_STRCMP"
.LASF669:
	.string	"clk_cplusplus"
.LASF166:
	.string	"REAL_TYPE"
.LASF569:
	.string	"TI_SIZE_ONE"
.LASF760:
	.string	"long_name"
.LASF303:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
