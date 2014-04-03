	.file	"stor-layout.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 stor-layout.c -mtune=generic -march=x86-64 -g
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
	.local	sizetype_set
	.comm	sizetype_set,4,4
	.local	early_type_list
	.comm	early_type_list,8,8
	.comm	sizetype_tab,48,32
	.comm	maximum_field_alignment,4,4
	.globl	set_alignment
	.bss
	.align 4
	.type	set_alignment, @object
	.size	set_alignment, 4
set_alignment:
	.zero	4
	.local	reference_types_internal
	.comm	reference_types_internal,4,4
	.local	pending_sizes
	.comm	pending_sizes,8,8
	.comm	immediate_size_expand,4,4
	.text
	.globl	internal_reference_types
	.type	internal_reference_types, @function
internal_reference_types:
.LFB2:
	.file 1 "stor-layout.c"
	.loc 1 78 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 79 0
	movl	$1, reference_types_internal(%rip)	#, reference_types_internal
	.loc 1 80 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	internal_reference_types, .-internal_reference_types
	.globl	get_pending_sizes
	.type	get_pending_sizes, @function
get_pending_sizes:
.LFB3:
	.loc 1 86 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 87 0
	movq	pending_sizes(%rip), %rax	# pending_sizes, tmp63
	movq	%rax, -8(%rbp)	# tmp63, chain
	.loc 1 91 0
	movq	-8(%rbp), %rax	# chain, tmp64
	movq	%rax, -16(%rbp)	# tmp64, t
	jmp	.L3	#
.L4:
	.loc 1 92 0 discriminator 2
	movq	-16(%rbp), %rax	# t, tmp65
	movq	32(%rax), %rax	# t_1->list.value, D.14277
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.0
	movq	%rdx, 40(%rax)	# current_function_decl.0, _4->exp.operands
	.loc 1 91 0 discriminator 2
	movq	-16(%rbp), %rax	# t, tmp66
	movq	(%rax), %rax	# t_1->common.chain, tmp67
	movq	%rax, -16(%rbp)	# tmp67, t
.L3:
	.loc 1 91 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, t
	jne	.L4	#,
	.loc 1 94 0 is_stmt 1
	movq	$0, pending_sizes(%rip)	#, pending_sizes
	.loc 1 95 0
	movq	-8(%rbp), %rax	# chain, D.14278
	.loc 1 96 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	get_pending_sizes, .-get_pending_sizes
	.globl	is_pending_size
	.type	is_pending_size, @function
is_pending_size:
.LFB4:
	.loc 1 103 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# expr, expr
	.loc 1 106 0
	movq	pending_sizes(%rip), %rax	# pending_sizes, tmp62
	movq	%rax, -8(%rbp)	# tmp62, t
	jmp	.L7	#
.L10:
	.loc 1 107 0
	movq	-8(%rbp), %rax	# t, tmp63
	movq	32(%rax), %rax	# t_1->list.value, D.14280
	cmpq	-24(%rbp), %rax	# expr, D.14280
	jne	.L8	#,
	.loc 1 108 0
	movl	$1, %eax	#, D.14279
	jmp	.L9	#
.L8:
	.loc 1 106 0
	movq	-8(%rbp), %rax	# t, tmp64
	movq	(%rax), %rax	# t_1->common.chain, tmp65
	movq	%rax, -8(%rbp)	# tmp65, t
.L7:
	.loc 1 106 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, t
	jne	.L10	#,
	.loc 1 109 0 is_stmt 1
	movl	$0, %eax	#, D.14279
.L9:
	.loc 1 110 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	is_pending_size, .-is_pending_size
	.globl	put_pending_size
	.type	put_pending_size, @function
put_pending_size:
.LFB5:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# expr, expr
	.loc 1 120 0
	jmp	.L12	#
.L13:
	.loc 1 123 0
	movq	-8(%rbp), %rax	# expr, tmp71
	movq	32(%rax), %rax	# expr_1->exp.operands, tmp72
	movq	%rax, -8(%rbp)	# tmp72, expr
.L12:
	.loc 1 120 0 discriminator 1
	movq	-8(%rbp), %rax	# expr, tmp73
	movzbl	16(%rax), %eax	# expr_1->common.code, D.14281
	movzbl	%al, %eax	# D.14281, D.14282
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.14283
	cmpb	$49, %al	#, D.14283
	je	.L13	#,
	.loc 1 121 0
	movq	-8(%rbp), %rax	# expr, tmp75
	movzbl	16(%rax), %eax	# expr_1->common.code, D.14281
	movzbl	%al, %eax	# D.14281, D.14282
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.14283
	cmpb	$50, %al	#, D.14283
	jne	.L14	#,
	.loc 1 122 0
	movq	-8(%rbp), %rax	# expr, tmp77
	movq	40(%rax), %rax	# expr_1->exp.operands, D.14284
	movzbl	17(%rax), %eax	# *_9, D.14281
	andl	$2, %eax	#, D.14281
	testb	%al, %al	# D.14281
	jne	.L13	#,
.L14:
	.loc 1 125 0
	movq	-8(%rbp), %rax	# expr, tmp78
	movzbl	16(%rax), %eax	# expr_1->common.code, D.14281
	cmpb	$118, %al	#, D.14281
	jne	.L11	#,
	.loc 1 126 0
	movq	pending_sizes(%rip), %rdx	# pending_sizes, pending_sizes.1
	movq	-8(%rbp), %rax	# expr, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, pending_sizes(%rip)	# pending_sizes.2, pending_sizes
.L11:
	.loc 1 127 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	put_pending_size, .-put_pending_size
	.section	.rodata
.LC0:
	.string	"stor-layout.c"
	.text
	.globl	put_pending_sizes
	.type	put_pending_sizes, @function
put_pending_sizes:
.LFB6:
	.loc 1 135 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# chain, chain
	.loc 1 136 0
	movq	pending_sizes(%rip), %rax	# pending_sizes, pending_sizes.3
	testq	%rax, %rax	# pending_sizes.3
	je	.L17	#,
	.loc 1 137 0
	movl	$__FUNCTION__.12241, %edx	#,
	movl	$137, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L17:
	.loc 1 139 0
	movq	-8(%rbp), %rax	# chain, tmp60
	movq	%rax, pending_sizes(%rip)	# tmp60, pending_sizes
	.loc 1 140 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	put_pending_sizes, .-put_pending_sizes
	.section	.rodata
	.align 8
.LC1:
	.string	"type size can't be explicitly evaluated"
	.align 8
.LC2:
	.string	"variable-size type declared outside of any function"
	.text
	.globl	variable_size
	.type	variable_size, @function
variable_size:
.LFB7:
	.loc 1 148 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# size, size
	.loc 1 153 0
	movq	-8(%rbp), %rax	# size, tmp76
	movzbl	17(%rax), %eax	# *size_2(D), D.14287
	andl	$2, %eax	#, D.14287
	testb	%al, %al	# D.14287
	jne	.L19	#,
	.loc 1 154 0
	call	global_bindings_p	#
	testl	%eax, %eax	# D.14288
	js	.L19	#,
	.loc 1 154 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# size, tmp77
	movq	%rax, %rdi	# tmp77,
	call	contains_placeholder_p	#
	testl	%eax, %eax	# D.14288
	je	.L20	#,
.L19:
	.loc 1 155 0 is_stmt 1
	movq	-8(%rbp), %rax	# size, D.14286
	jmp	.L21	#
.L20:
	.loc 1 157 0
	movq	-8(%rbp), %rax	# size, tmp78
	movq	%rax, %rdi	# tmp78,
	call	save_expr	#
	movq	%rax, -8(%rbp)	# tmp79, size
	.loc 1 167 0
	movq	-8(%rbp), %rax	# size, tmp80
	movzbl	16(%rax), %eax	# size_7->common.code, D.14287
	cmpb	$118, %al	#, D.14287
	jne	.L22	#,
	.loc 1 168 0
	movq	-8(%rbp), %rax	# size, tmp81
	movzbl	17(%rax), %edx	#, tmp84
	orl	$64, %edx	#, tmp85
	movb	%dl, 17(%rax)	# tmp85,
.L22:
	.loc 1 170 0
	call	global_bindings_p	#
	testl	%eax, %eax	# D.14288
	je	.L23	#,
	.loc 1 172 0
	movq	-8(%rbp), %rax	# size, tmp86
	movzbl	17(%rax), %eax	# *size_7, D.14287
	andl	$2, %eax	#, D.14287
	testb	%al, %al	# D.14287
	je	.L24	#,
	.loc 1 173 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L25	#
.L24:
	.loc 1 175 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L25:
	.loc 1 177 0
	movq	global_trees+128(%rip), %rax	# global_trees, D.14286
	jmp	.L21	#
.L23:
	.loc 1 180 0
	movl	immediate_size_expand(%rip), %eax	# immediate_size_expand, immediate_size_expand.4
	testl	%eax, %eax	# immediate_size_expand.4
	je	.L26	#,
	.loc 1 183 0
	movq	global_trees+88(%rip), %rax	# global_trees, D.14289
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14289,
	call	expand_expr	#
	movq	%rax, %rsi	#, D.14290
	movq	-8(%rbp), %rax	# size, tmp87
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp87,
	call	expand_expr	#
	jmp	.L27	#
.L26:
	.loc 1 185 0
	movq	cfun(%rip), %rax	# cfun, cfun.5
	testq	%rax, %rax	# cfun.5
	je	.L28	#,
	.loc 1 185 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.6
	movzbl	426(%rax), %eax	# *cfun.6_17, D.14287
	andl	$8, %eax	#, D.14287
	testb	%al, %al	# D.14287
	je	.L28	#,
	jmp	.L27	#
.L28:
	.loc 1 190 0 is_stmt 1
	movq	-8(%rbp), %rax	# size, tmp88
	movq	%rax, %rdi	# tmp88,
	call	put_pending_size	#
.L27:
	.loc 1 192 0
	movq	-8(%rbp), %rax	# size, D.14286
.L21:
	.loc 1 193 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	variable_size, .-variable_size
	.globl	mode_for_size
	.type	mode_for_size, @function
mode_for_size:
.LFB8:
	.loc 1 209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# size, size
	movl	%esi, -24(%rbp)	# class, class
	movl	%edx, -28(%rbp)	# limit, limit
	.loc 1 212 0
	cmpl	$0, -28(%rbp)	#, limit
	je	.L30	#,
	.loc 1 212 0 is_stmt 0 discriminator 1
	movzwl	mode_bitsize+10(%rip), %eax	# mode_bitsize, D.14294
	movzwl	%ax, %eax	# D.14294, D.14295
	cmpl	-20(%rbp), %eax	# size, D.14295
	jae	.L30	#,
	.loc 1 213 0 is_stmt 1
	movl	$51, %eax	#, D.14293
	jmp	.L31	#
.L30:
	.loc 1 216 0
	movl	-24(%rbp), %eax	# class, class.7
	cltq
	movl	class_narrowest_mode(,%rax,4), %eax	# class_narrowest_mode, tmp70
	movl	%eax, -4(%rbp)	# tmp70, mode
	jmp	.L32	#
.L34:
	.loc 1 218 0
	movl	-4(%rbp), %eax	# mode, mode.8
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14294
	movzwl	%ax, %eax	# D.14294, D.14295
	cmpl	-20(%rbp), %eax	# size, D.14295
	jne	.L33	#,
	.loc 1 219 0
	movl	-4(%rbp), %eax	# mode, D.14293
	jmp	.L31	#
.L33:
	.loc 1 217 0
	movl	-4(%rbp), %eax	# mode, mode.9
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.14296
	movzbl	%al, %eax	# D.14296, tmp73
	movl	%eax, -4(%rbp)	# tmp73, mode
.L32:
	.loc 1 216 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, mode
	jne	.L34	#,
	.loc 1 221 0
	movl	$51, %eax	#, D.14293
.L31:
	.loc 1 222 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mode_for_size, .-mode_for_size
	.globl	mode_for_size_tree
	.type	mode_for_size_tree, @function
mode_for_size_tree:
.LFB9:
	.loc 1 231 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# size, size
	movl	%esi, -12(%rbp)	# class, class
	movl	%edx, -16(%rbp)	# limit, limit
	.loc 1 232 0
	movq	-8(%rbp), %rax	# size, tmp65
	movzbl	16(%rax), %eax	# size_2(D)->common.code, D.14298
	cmpb	$25, %al	#, D.14298
	jne	.L36	#,
	.loc 1 236 0
	movq	-8(%rbp), %rax	# size, tmp66
	movl	$1000, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.14299
	jle	.L37	#,
.L36:
	.loc 1 237 0
	movl	$51, %eax	#, D.14297
	jmp	.L38	#
.L37:
	.loc 1 239 0
	movq	-8(%rbp), %rax	# size, tmp67
	movq	32(%rax), %rax	# size_2(D)->int_cst.int_cst.low, D.14300
	movl	-16(%rbp), %edx	# limit, tmp68
	movl	-12(%rbp), %ecx	# class, tmp69
	movl	%ecx, %esi	# tmp69,
	movl	%eax, %edi	# D.14301,
	call	mode_for_size	#
.L38:
	.loc 1 240 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	mode_for_size_tree, .-mode_for_size_tree
	.globl	smallest_mode_for_size
	.type	smallest_mode_for_size, @function
smallest_mode_for_size:
.LFB10:
	.loc 1 249 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# size, size
	movl	%esi, -24(%rbp)	# class, class
	.loc 1 254 0
	movl	-24(%rbp), %eax	# class, class.10
	cltq
	movl	class_narrowest_mode(,%rax,4), %eax	# class_narrowest_mode, tmp68
	movl	%eax, -4(%rbp)	# tmp68, mode
	jmp	.L40	#
.L43:
	.loc 1 256 0
	movl	-4(%rbp), %eax	# mode, mode.11
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14302
	movzwl	%ax, %eax	# D.14302, D.14303
	cmpl	-20(%rbp), %eax	# size, D.14303
	jb	.L41	#,
	.loc 1 257 0
	movl	-4(%rbp), %eax	# mode, D.14304
	jmp	.L44	#
.L41:
	.loc 1 255 0
	movl	-4(%rbp), %eax	# mode, mode.12
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.14305
	movzbl	%al, %eax	# D.14305, tmp71
	movl	%eax, -4(%rbp)	# tmp71, mode
.L40:
	.loc 1 254 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, mode
	jne	.L43	#,
	.loc 1 259 0
	movl	$__FUNCTION__.12267, %edx	#,
	movl	$259, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L44:
	.loc 1 260 0 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	smallest_mode_for_size, .-smallest_mode_for_size
	.globl	int_mode_for_mode
	.type	int_mode_for_mode, @function
int_mode_for_mode:
.LFB11:
	.loc 1 267 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	.loc 1 268 0
	movl	-4(%rbp), %eax	# mode, mode.13
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14306
	cmpl	$8, %eax	#, D.14306
	ja	.L46	#,
	movl	%eax, %eax	# D.14306, tmp67
	movq	.L48(,%rax,8), %rax	#, tmp68
	jmp	*%rax	# tmp68
	.section	.rodata
	.align 8
	.align 4
.L48:
	.quad	.L47
	.quad	.L53
	.quad	.L50
	.quad	.L53
	.quad	.L46
	.quad	.L50
	.quad	.L50
	.quad	.L50
	.quad	.L50
	.text
.L50:
	.loc 1 279 0
	movl	-4(%rbp), %eax	# mode, mode.14
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14307
	movzwl	%ax, %eax	# D.14307, D.14308
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.14308,
	call	mode_for_size	#
	movl	%eax, -4(%rbp)	# tmp70, mode
	.loc 1 280 0
	jmp	.L51	#
.L47:
	.loc 1 283 0
	cmpl	$51, -4(%rbp)	#, mode
	jne	.L46	#,
	.loc 1 284 0
	jmp	.L51	#
.L46:
	.loc 1 290 0
	movl	$__FUNCTION__.12282, %edx	#,
	movl	$290, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L53:
	.loc 1 272 0
	nop
.L51:
	.loc 1 293 0
	movl	-4(%rbp), %eax	# mode, D.14309
	.loc 1 294 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	int_mode_for_mode, .-int_mode_for_mode
	.globl	round_up
	.type	round_up, @function
round_up:
.LFB12:
	.loc 1 303 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# value, value
	movl	%esi, -28(%rbp)	# divisor, divisor
	.loc 1 304 0
	movq	-24(%rbp), %rax	# value, tmp64
	movq	8(%rax), %rdx	# value_1(D)->common.type, D.14310
	movl	-28(%rbp), %eax	# divisor, tmp65
	cltq
	movq	%rdx, %rsi	# D.14310,
	movq	%rax, %rdi	# D.14311,
	call	size_int_type_wide	#
	movq	%rax, -8(%rbp)	# tmp66, arg
	.loc 1 306 0
	movq	-8(%rbp), %rdx	# arg, tmp67
	movq	-24(%rbp), %rax	# value, tmp68
	movq	%rax, %rsi	# tmp68,
	movl	$63, %edi	#,
	call	size_binop	#
	movq	-8(%rbp), %rdx	# arg, tmp69
	movq	%rax, %rsi	# D.14310,
	movl	$61, %edi	#,
	call	size_binop	#
	.loc 1 307 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	round_up, .-round_up
	.globl	round_down
	.type	round_down, @function
round_down:
.LFB13:
	.loc 1 315 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# value, value
	movl	%esi, -28(%rbp)	# divisor, divisor
	.loc 1 316 0
	movq	-24(%rbp), %rax	# value, tmp64
	movq	8(%rax), %rdx	# value_1(D)->common.type, D.14313
	movl	-28(%rbp), %eax	# divisor, tmp65
	cltq
	movq	%rdx, %rsi	# D.14313,
	movq	%rax, %rdi	# D.14314,
	call	size_int_type_wide	#
	movq	%rax, -8(%rbp)	# tmp66, arg
	.loc 1 318 0
	movq	-8(%rbp), %rdx	# arg, tmp67
	movq	-24(%rbp), %rax	# value, tmp68
	movq	%rax, %rsi	# tmp68,
	movl	$64, %edi	#,
	call	size_binop	#
	movq	-8(%rbp), %rdx	# arg, tmp69
	movq	%rax, %rsi	# D.14313,
	movl	$61, %edi	#,
	call	size_binop	#
	.loc 1 319 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	round_down, .-round_down
	.section	.rodata
.LC3:
	.string	"size of `%s' is %d bytes"
	.align 8
.LC4:
	.string	"size of `%s' is larger than %d bytes"
	.text
	.globl	layout_decl
	.type	layout_decl, @function
layout_decl:
.LFB14:
	.loc 1 338 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# decl, decl
	movl	%esi, -44(%rbp)	# known_align, known_align
	.loc 1 339 0
	movq	-40(%rbp), %rax	# decl, tmp152
	movq	8(%rax), %rax	# decl_4(D)->common.type, tmp153
	movq	%rax, -16(%rbp)	# tmp153, type
	.loc 1 340 0
	movq	-40(%rbp), %rax	# decl, tmp154
	movzbl	16(%rax), %eax	# decl_4(D)->common.code, D.14316
	movzbl	%al, %eax	# D.14316, tmp155
	movl	%eax, -28(%rbp)	# tmp155, code
	.loc 1 342 0
	cmpl	$32, -28(%rbp)	#, code
	jne	.L59	#,
	.loc 1 343 0
	jmp	.L58	#
.L59:
	.loc 1 344 0
	cmpl	$34, -28(%rbp)	#, code
	je	.L61	#,
	.loc 1 344 0 is_stmt 0 discriminator 1
	cmpl	$35, -28(%rbp)	#, code
	je	.L61	#,
	cmpl	$36, -28(%rbp)	#, code
	je	.L61	#,
	.loc 1 345 0 is_stmt 1
	cmpl	$33, -28(%rbp)	#, code
	je	.L61	#,
	.loc 1 345 0 is_stmt 0 discriminator 1
	cmpl	$37, -28(%rbp)	#, code
	je	.L61	#,
	.loc 1 346 0 is_stmt 1
	movl	$__FUNCTION__.12299, %edx	#,
	movl	$346, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L61:
	.loc 1 348 0
	movq	global_trees(%rip), %rax	# global_trees, D.14317
	cmpq	-16(%rbp), %rax	# type, D.14317
	jne	.L62	#,
	.loc 1 349 0
	movq	global_trees+216(%rip), %rax	# global_trees, tmp156
	movq	%rax, -16(%rbp)	# tmp156, type
.L62:
	.loc 1 361 0
	movq	-16(%rbp), %rax	# type, tmp157
	movzbl	17(%rax), %eax	# *type_1, tmp160
	shrb	$5, %al	#, D.14318
	andl	$1, %eax	#, D.14318
	movq	-40(%rbp), %rdx	# decl, tmp161
	andl	$1, %eax	#, tmp163
	sall	$5, %eax	#, tmp164
	movl	%eax, %ecx	# tmp164, tmp164
	movzbl	17(%rdx), %eax	#, tmp165
	andl	$-33, %eax	#, tmp166
	orl	%ecx, %eax	# tmp164, tmp167
	movb	%al, 17(%rdx)	# tmp167,
	.loc 1 362 0
	movq	-40(%rbp), %rax	# decl, tmp168
	movzbl	48(%rax), %eax	# decl_4(D)->decl.mode, D.14316
	testb	%al, %al	# D.14316
	jne	.L63	#,
	.loc 1 363 0
	movq	-16(%rbp), %rax	# type, tmp169
	movzbl	61(%rax), %eax	# *type_1, tmp172
	shrb	%al	# D.14319
	movl	%eax, %edx	# D.14319, D.14316
	movq	-40(%rbp), %rax	# decl, tmp173
	movb	%dl, 48(%rax)	# D.14316, decl_4(D)->decl.mode
.L63:
	.loc 1 365 0
	movq	-40(%rbp), %rax	# decl, tmp174
	movq	40(%rax), %rax	# decl_4(D)->decl.size, D.14317
	testq	%rax, %rax	# D.14317
	jne	.L64	#,
	.loc 1 367 0
	movq	-16(%rbp), %rax	# type, tmp175
	movq	32(%rax), %rdx	# type_1->type.size, D.14317
	movq	-40(%rbp), %rax	# decl, tmp176
	movq	%rdx, 40(%rax)	# D.14317, decl_4(D)->decl.size
	.loc 1 368 0
	movq	-16(%rbp), %rax	# type, tmp177
	movq	40(%rax), %rdx	# type_1->type.size_unit, D.14317
	movq	-40(%rbp), %rax	# decl, tmp178
	movq	%rdx, 64(%rax)	# D.14317, decl_4(D)->decl.size_unit
	jmp	.L65	#
.L64:
	.loc 1 372 0
	movq	global_trees+152(%rip), %rdx	# global_trees, D.14317
	movq	-40(%rbp), %rax	# decl, tmp179
	movq	40(%rax), %rax	# decl_4(D)->decl.size, D.14317
	movq	%rax, %rsi	# D.14317,
	movl	$63, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.14317
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14317
	movq	%rdx, %rsi	# D.14317,
	movq	%rax, %rdi	# D.14317,
	call	convert	#
	movq	-40(%rbp), %rdx	# decl, tmp180
	movq	%rax, 64(%rdx)	# D.14317, decl_4(D)->decl.size_unit
.L65:
	.loc 1 378 0
	cmpl	$37, -28(%rbp)	#, code
	jne	.L66	#,
	.loc 1 378 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp181
	movzbl	49(%rax), %eax	# *decl_4(D), D.14316
	andl	$16, %eax	#, D.14316
	testb	%al, %al	# D.14316
	jne	.L67	#,
.L66:
	.loc 1 379 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp182
	movl	56(%rax), %eax	# *decl_4(D), D.14320
	andl	$16777215, %eax	#, D.14320
	testl	%eax, %eax	# D.14320
	je	.L68	#,
	.loc 1 380 0
	cmpl	$37, -28(%rbp)	#, code
	jne	.L69	#,
	.loc 1 380 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp183
	movzbl	49(%rax), %eax	# *decl_4(D), D.14316
	andl	$4, %eax	#, D.14316
	testb	%al, %al	# D.14316
	jne	.L67	#,
.L69:
	.loc 1 381 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp184
	movl	64(%rax), %edx	# type_1->type.align, D.14320
	movq	-40(%rbp), %rax	# decl, tmp185
	movl	56(%rax), %eax	# *decl_4(D), tmp188
	andl	$16777215, %eax	#, D.14321
	cmpl	%eax, %edx	# D.14320, D.14320
	jbe	.L67	#,
.L68:
	.loc 1 383 0
	movq	-16(%rbp), %rax	# type, tmp189
	movl	64(%rax), %eax	# type_1->type.align, D.14320
	andl	$16777215, %eax	#, D.14321
	movl	%eax, %edx	# D.14321, D.14321
	movq	-40(%rbp), %rax	# decl, tmp190
	movl	%edx, %ecx	# D.14321, tmp192
	andl	$16777215, %ecx	#, tmp192
	movl	56(%rax), %edx	#, tmp193
	andl	$-16777216, %edx	#, tmp194
	orl	%ecx, %edx	# tmp192, tmp195
	movl	%edx, 56(%rax)	# tmp195,
	.loc 1 384 0
	movq	-40(%rbp), %rax	# decl, tmp196
	movzbl	52(%rax), %edx	#, tmp199
	andl	$-9, %edx	#, tmp200
	movb	%dl, 52(%rax)	# tmp200,
.L67:
	.loc 1 388 0
	cmpl	$37, -28(%rbp)	#, code
	jne	.L70	#,
	.loc 1 390 0
	movq	-40(%rbp), %rax	# decl, tmp201
	movzbl	49(%rax), %eax	# *decl_4(D), D.14316
	andl	$16, %eax	#, D.14316
	testb	%al, %al	# D.14316
	je	.L71	#,
	.loc 1 390 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# type, iftmp.15
	jmp	.L72	#
.L71:
	.loc 1 390 0 discriminator 2
	movl	$0, %eax	#, iftmp.15
.L72:
	.loc 1 390 0 discriminator 3
	movq	-40(%rbp), %rdx	# decl, tmp202
	movq	%rax, 96(%rdx)	# iftmp.15, decl_4(D)->decl.result
	.loc 1 391 0 is_stmt 1 discriminator 3
	movl	maximum_field_alignment(%rip), %eax	# maximum_field_alignment, maximum_field_alignment.16
	testl	%eax, %eax	# maximum_field_alignment.16
	je	.L73	#,
	.loc 1 392 0
	movq	-40(%rbp), %rax	# decl, tmp203
	movl	56(%rax), %eax	# *decl_4(D), tmp206
	andl	$16777215, %eax	#, D.14321
	movl	%eax, %edx	# D.14321, D.14320
	movl	maximum_field_alignment(%rip), %eax	# maximum_field_alignment, maximum_field_alignment.17
	cmpl	%eax, %edx	# maximum_field_alignment.17, D.14320
	cmovbe	%edx, %eax	# D.14320,, D.14320
	andl	$16777215, %eax	#, D.14321
	movl	%eax, %edx	# D.14321, D.14321
	movq	-40(%rbp), %rax	# decl, tmp207
	movl	%edx, %ecx	# D.14321, tmp209
	andl	$16777215, %ecx	#, tmp209
	movl	56(%rax), %edx	#, tmp210
	andl	$-16777216, %edx	#, tmp211
	orl	%ecx, %edx	# tmp209, tmp212
	movl	%edx, 56(%rax)	# tmp212,
	jmp	.L70	#
.L73:
	.loc 1 398 0
	movq	-40(%rbp), %rax	# decl, tmp213
	movzbl	49(%rax), %eax	# *decl_4(D), D.14316
	andl	$4, %eax	#, D.14316
	testb	%al, %al	# D.14316
	je	.L70	#,
	.loc 1 399 0
	movq	-40(%rbp), %rax	# decl, tmp214
	movzbl	52(%rax), %eax	# *decl_4(D), D.14316
	andl	$4, %eax	#, D.14316
	testb	%al, %al	# D.14316
	jne	.L74	#,
	.loc 1 400 0
	movq	-40(%rbp), %rax	# decl, tmp215
	movq	64(%rax), %rax	# decl_4(D)->decl.size_unit, D.14317
	testq	%rax, %rax	# D.14317
	je	.L74	#,
	.loc 1 401 0
	movq	-40(%rbp), %rax	# decl, tmp216
	movq	64(%rax), %rax	# decl_4(D)->decl.size_unit, D.14317
	movzbl	16(%rax), %eax	# _48->common.code, D.14316
	cmpb	$25, %al	#, D.14316
	jne	.L70	#,
.L74:
	.loc 1 403 0
	movq	-40(%rbp), %rax	# decl, tmp217
	movl	56(%rax), %eax	# *decl_4(D), tmp220
	andl	$16777215, %eax	#, D.14321
	movl	$8, %edx	#, tmp221
	cmpl	$8, %eax	#, D.14322
	cmovg	%edx, %eax	# D.14322,, tmp221, D.14322
	andl	$16777215, %eax	#, D.14321
	movl	%eax, %edx	# D.14321, D.14321
	movq	-40(%rbp), %rax	# decl, tmp222
	movl	%edx, %ecx	# D.14321, tmp224
	andl	$16777215, %ecx	#, tmp224
	movl	56(%rax), %edx	#, tmp225
	andl	$-16777216, %edx	#, tmp226
	orl	%ecx, %edx	# tmp224, tmp227
	movl	%edx, 56(%rax)	# tmp227,
	.loc 1 404 0
	movq	-40(%rbp), %rax	# decl, tmp228
	movzbl	52(%rax), %edx	#, tmp231
	andl	$-9, %edx	#, tmp232
	movb	%dl, 52(%rax)	# tmp232,
.L70:
	.loc 1 411 0
	cmpl	$37, -28(%rbp)	#, code
	jne	.L75	#,
	.loc 1 411 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp233
	movzbl	49(%rax), %eax	# *decl_4(D), D.14316
	andl	$16, %eax	#, D.14316
	testb	%al, %al	# D.14316
	je	.L75	#,
	.loc 1 412 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp234
	movq	32(%rax), %rax	# type_1->type.size, D.14317
	testq	%rax, %rax	# D.14317
	je	.L75	#,
	.loc 1 413 0
	movq	-16(%rbp), %rax	# type, tmp235
	movq	32(%rax), %rax	# type_1->type.size, D.14317
	movzbl	16(%rax), %eax	# _58->common.code, D.14316
	cmpb	$25, %al	#, D.14316
	jne	.L75	#,
	.loc 1 414 0
	movq	-16(%rbp), %rax	# type, tmp236
	movzbl	61(%rax), %eax	# *type_1, tmp239
	shrb	%al	# D.14319
	movzbl	%al, %eax	# D.14319, D.14322
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14323
	cmpl	$1, %eax	#, D.14323
	jne	.L75	#,
.LBB2:
	.loc 1 417 0
	movq	-40(%rbp), %rax	# decl, tmp241
	movq	40(%rax), %rax	# decl_4(D)->decl.size, D.14317
	.loc 1 416 0
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14317,
	call	mode_for_size_tree	#
	movl	%eax, -24(%rbp)	# tmp242, xmode
	.loc 1 419 0
	cmpl	$51, -24(%rbp)	#, xmode
	je	.L75	#,
	.loc 1 419 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# xmode, tmp243
	movl	%eax, %edi	# tmp243,
	call	get_mode_alignment	#
	cmpl	-44(%rbp), %eax	# known_align, D.14320
	ja	.L75	#,
	.loc 1 421 0 is_stmt 1
	movl	-24(%rbp), %eax	# xmode, tmp244
	movl	%eax, %edi	# tmp244,
	call	get_mode_alignment	#
	movq	-40(%rbp), %rdx	# decl, tmp245
	movl	56(%rdx), %edx	# *decl_4(D), tmp248
	andl	$16777215, %edx	#, D.14321
	cmpl	%edx, %eax	# D.14320, D.14320
	jbe	.L76	#,
	.loc 1 421 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# xmode, tmp249
	movl	%eax, %edi	# tmp249,
	call	get_mode_alignment	#
	andl	$16777215, %eax	#, iftmp.18
	movl	%eax, %edx	# iftmp.18, iftmp.18
	jmp	.L77	#
.L76:
	.loc 1 421 0 discriminator 2
	movq	-40(%rbp), %rax	# decl, tmp250
	movl	56(%rax), %eax	# *decl_4(D), tmp253
	andl	$16777215, %eax	#, iftmp.18
	movl	%eax, %edx	# iftmp.18, iftmp.18
.L77:
	.loc 1 421 0 discriminator 3
	movq	-40(%rbp), %rax	# decl, tmp254
	movl	%edx, %ecx	# iftmp.18, tmp256
	andl	$16777215, %ecx	#, tmp256
	movl	56(%rax), %edx	#, tmp257
	andl	$-16777216, %edx	#, tmp258
	orl	%ecx, %edx	# tmp256, tmp259
	movl	%edx, 56(%rax)	# tmp259,
	.loc 1 423 0 is_stmt 1 discriminator 3
	movl	-24(%rbp), %eax	# xmode, tmp260
	movl	%eax, %edx	# tmp260, D.14316
	movq	-40(%rbp), %rax	# decl, tmp261
	movb	%dl, 48(%rax)	# D.14316, decl_4(D)->decl.mode
	.loc 1 424 0 discriminator 3
	movq	-40(%rbp), %rax	# decl, tmp262
	movzbl	49(%rax), %edx	#, tmp265
	andl	$-17, %edx	#, tmp266
	movb	%dl, 49(%rax)	# tmp266,
.L75:
.LBE2:
	.loc 1 429 0
	cmpl	$37, -28(%rbp)	#, code
	jne	.L78	#,
	.loc 1 429 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp267
	movzbl	49(%rax), %eax	# *decl_4(D), D.14316
	andl	$16, %eax	#, D.14316
	testb	%al, %al	# D.14316
	je	.L78	#,
	.loc 1 430 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp268
	movzbl	61(%rax), %eax	# *type_1, D.14316
	andl	$-2, %eax	#, D.14316
	cmpb	$102, %al	#, D.14316
	jne	.L78	#,
	.loc 1 430 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp269
	movzbl	48(%rax), %eax	# decl_4(D)->decl.mode, D.14316
	cmpb	$51, %al	#, D.14316
	jne	.L78	#,
	.loc 1 431 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp270
	movl	64(%rax), %eax	# type_1->type.align, D.14320
	cmpl	-44(%rbp), %eax	# known_align, D.14320
	ja	.L78	#,
	.loc 1 432 0
	movq	-40(%rbp), %rax	# decl, tmp271
	movl	56(%rax), %eax	# *decl_4(D), tmp274
	andl	$16777215, %eax	#, D.14321
	movl	%eax, %edx	# D.14321, D.14320
	movq	-16(%rbp), %rax	# type, tmp275
	movl	64(%rax), %eax	# type_1->type.align, D.14320
	cmpl	%eax, %edx	# D.14320, D.14320
	jb	.L78	#,
	.loc 1 433 0
	movq	-40(%rbp), %rax	# decl, tmp276
	movq	64(%rax), %rax	# decl_4(D)->decl.size_unit, D.14317
	testq	%rax, %rax	# D.14317
	je	.L78	#,
	.loc 1 434 0
	movq	-40(%rbp), %rax	# decl, tmp277
	movzbl	49(%rax), %edx	#, tmp280
	andl	$-17, %edx	#, tmp281
	movb	%dl, 49(%rax)	# tmp281,
.L78:
	.loc 1 437 0
	movq	-40(%rbp), %rax	# decl, tmp282
	movq	40(%rax), %rax	# decl_4(D)->decl.size, D.14317
	testq	%rax, %rax	# D.14317
	je	.L79	#,
	.loc 1 437 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp283
	movq	40(%rax), %rax	# decl_4(D)->decl.size, D.14317
	movzbl	16(%rax), %eax	# _85->common.code, D.14316
	cmpb	$25, %al	#, D.14316
	je	.L79	#,
	.loc 1 438 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp284
	movq	40(%rax), %rax	# decl_4(D)->decl.size, D.14317
	movq	%rax, %rdi	# D.14317,
	call	variable_size	#
	movq	-40(%rbp), %rdx	# decl, tmp285
	movq	%rax, 40(%rdx)	# D.14317, decl_4(D)->decl.size
.L79:
	.loc 1 439 0
	movq	-40(%rbp), %rax	# decl, tmp286
	movq	64(%rax), %rax	# decl_4(D)->decl.size_unit, D.14317
	testq	%rax, %rax	# D.14317
	je	.L80	#,
	.loc 1 440 0
	movq	-40(%rbp), %rax	# decl, tmp287
	movq	64(%rax), %rax	# decl_4(D)->decl.size_unit, D.14317
	movzbl	16(%rax), %eax	# _90->common.code, D.14316
	cmpb	$25, %al	#, D.14316
	je	.L80	#,
	.loc 1 441 0
	movq	-40(%rbp), %rax	# decl, tmp288
	movq	64(%rax), %rax	# decl_4(D)->decl.size_unit, D.14317
	movq	%rax, %rdi	# D.14317,
	call	variable_size	#
	movq	-40(%rbp), %rdx	# decl, tmp289
	movq	%rax, 64(%rdx)	# D.14317, decl_4(D)->decl.size_unit
.L80:
	.loc 1 444 0
	movl	warn_larger_than(%rip), %eax	# warn_larger_than, warn_larger_than.19
	testl	%eax, %eax	# warn_larger_than.19
	je	.L58	#,
	.loc 1 445 0
	cmpl	$34, -28(%rbp)	#, code
	je	.L81	#,
	.loc 1 445 0 is_stmt 0 discriminator 1
	cmpl	$35, -28(%rbp)	#, code
	jne	.L58	#,
.L81:
	.loc 1 446 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp290
	movzbl	49(%rax), %eax	# *decl_4(D), D.14316
	andl	$1, %eax	#, D.14316
	testb	%al, %al	# D.14316
	jne	.L58	#,
.LBB3:
	.loc 1 448 0
	movq	-40(%rbp), %rax	# decl, tmp291
	movq	64(%rax), %rax	# decl_4(D)->decl.size_unit, tmp292
	movq	%rax, -8(%rbp)	# tmp292, size
	.loc 1 450 0
	cmpq	$0, -8(%rbp)	#, size
	je	.L58	#,
	.loc 1 450 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# size, tmp293
	movzbl	16(%rax), %eax	# size_97->common.code, D.14316
	cmpb	$25, %al	#, D.14316
	jne	.L58	#,
	.loc 1 451 0 is_stmt 1
	movq	larger_than_size(%rip), %rax	# larger_than_size, larger_than_size.20
	movq	%rax, %rdx	# larger_than_size.20, larger_than_size.21
	movq	-8(%rbp), %rax	# size, tmp294
	movq	%rdx, %rsi	# larger_than_size.21,
	movq	%rax, %rdi	# tmp294,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.14322
	jle	.L58	#,
.LBB4:
	.loc 1 453 0
	movq	-8(%rbp), %rax	# size, tmp295
	movq	32(%rax), %rax	# size_97->int_cst.int_cst.low, D.14324
	movl	%eax, -20(%rbp)	# D.14324, size_as_int
	.loc 1 455 0
	movl	-20(%rbp), %edx	# size_as_int, D.14324
	movq	-8(%rbp), %rax	# size, tmp296
	movq	%rdx, %rsi	# D.14324,
	movq	%rax, %rdi	# tmp296,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.14322
	jne	.L82	#,
	.loc 1 456 0
	movl	-20(%rbp), %edx	# size_as_int, tmp297
	movq	-40(%rbp), %rax	# decl, tmp298
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp298,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L58	#
.L82:
	.loc 1 458 0
	movq	larger_than_size(%rip), %rdx	# larger_than_size, larger_than_size.22
	movq	-40(%rbp), %rax	# decl, tmp299
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp299,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L58:
.LBE4:
.LBE3:
	.loc 1 462 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	layout_decl, .-layout_decl
	.globl	lang_adjust_rli
	.bss
	.align 8
	.type	lang_adjust_rli, @object
	.size	lang_adjust_rli, 8
lang_adjust_rli:
	.zero	8
	.text
	.globl	set_lang_adjust_rli
	.type	set_lang_adjust_rli, @function
set_lang_adjust_rli:
.LFB15:
	.loc 1 472 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 473 0
	movq	-8(%rbp), %rax	# f, tmp59
	movq	%rax, lang_adjust_rli(%rip)	# tmp59, lang_adjust_rli
	.loc 1 474 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	set_lang_adjust_rli, .-set_lang_adjust_rli
	.globl	start_record_layout
	.type	start_record_layout, @function
start_record_layout:
.LFB16:
	.loc 1 486 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# t, t
	.loc 1 487 0
	movl	$72, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp69, rli
	.loc 1 490 0
	movq	-8(%rbp), %rax	# rli, tmp70
	movq	-24(%rbp), %rdx	# t, tmp71
	movq	%rdx, (%rax)	# tmp71, rli_1->t
	.loc 1 495 0
	movq	-24(%rbp), %rax	# t, tmp72
	movl	64(%rax), %eax	# t_2(D)->type.align, D.14327
	movl	$8, %edx	#, tmp73
	cmpl	$8, %eax	#, D.14327
	cmovae	%eax, %edx	# D.14327,, D.14327
	movq	-8(%rbp), %rax	# rli, tmp74
	movl	%edx, 32(%rax)	# D.14327, rli_1->record_align
	.loc 1 496 0
	movq	-8(%rbp), %rax	# rli, tmp75
	movl	32(%rax), %edx	# rli_1->record_align, D.14327
	movq	-8(%rbp), %rax	# rli, tmp76
	movl	%edx, 40(%rax)	# D.14327, rli_1->unpadded_align
	movq	-8(%rbp), %rax	# rli, tmp77
	movl	40(%rax), %edx	# rli_1->unpadded_align, D.14327
	movq	-8(%rbp), %rax	# rli, tmp78
	movl	%edx, 36(%rax)	# D.14327, rli_1->unpacked_align
	.loc 1 497 0
	movq	-8(%rbp), %rax	# rli, tmp79
	movl	32(%rax), %eax	# rli_1->record_align, D.14327
	movl	$128, %edx	#, tmp80
	cmpl	$128, %eax	#, D.14327
	cmovae	%eax, %edx	# D.14327,, D.14327
	movq	-8(%rbp), %rax	# rli, tmp81
	movl	%edx, 16(%rax)	# D.14327, rli_1->offset_align
	.loc 1 505 0
	movq	global_trees+120(%rip), %rdx	# global_trees, D.14328
	movq	-8(%rbp), %rax	# rli, tmp82
	movq	%rdx, 8(%rax)	# D.14328, rli_1->offset
	.loc 1 506 0
	movq	global_trees+136(%rip), %rdx	# global_trees, D.14328
	movq	-8(%rbp), %rax	# rli, tmp83
	movq	%rdx, 24(%rax)	# D.14328, rli_1->bitpos
	.loc 1 507 0
	movq	-8(%rbp), %rax	# rli, tmp84
	movq	$0, 48(%rax)	#, rli_1->prev_field
	.loc 1 508 0
	movq	-8(%rbp), %rax	# rli, tmp85
	movq	$0, 56(%rax)	#, rli_1->pending_statics
	.loc 1 509 0
	movq	-8(%rbp), %rax	# rli, tmp86
	movl	$0, 64(%rax)	#, rli_1->packed_maybe_necessary
	.loc 1 511 0
	movq	-8(%rbp), %rax	# rli, D.14329
	.loc 1 512 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	start_record_layout, .-start_record_layout
	.globl	bit_from_pos
	.type	bit_from_pos, @function
bit_from_pos:
.LFB17:
	.loc 1 520 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# offset, offset
	movq	%rsi, -32(%rbp)	# bitpos, bitpos
	.loc 1 521 0
	movq	global_trees+152(%rip), %rbx	# global_trees, D.14330
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.14330
	movq	-24(%rbp), %rdx	# offset, tmp65
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# D.14330,
	call	convert	#
	movq	%rbx, %rdx	# D.14330,
	movq	%rax, %rsi	# D.14330,
	movl	$61, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.14330
	movq	-32(%rbp), %rax	# bitpos, tmp66
	movq	%rax, %rsi	# tmp66,
	movl	$59, %edi	#,
	call	size_binop	#
	.loc 1 524 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	bit_from_pos, .-bit_from_pos
	.globl	byte_from_pos
	.type	byte_from_pos, @function
byte_from_pos:
.LFB18:
	.loc 1 529 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# offset, offset
	movq	%rsi, -16(%rbp)	# bitpos, bitpos
	.loc 1 530 0
	movq	global_trees+152(%rip), %rdx	# global_trees, D.14332
	movq	-16(%rbp), %rax	# bitpos, tmp65
	movq	%rax, %rsi	# tmp65,
	movl	$62, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.14332
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14332
	movq	%rdx, %rsi	# D.14332,
	movq	%rax, %rdi	# D.14332,
	call	convert	#
	movq	%rax, %rdx	#, D.14332
	movq	-8(%rbp), %rax	# offset, tmp66
	movq	%rax, %rsi	# tmp66,
	movl	$59, %edi	#,
	call	size_binop	#
	.loc 1 534 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	byte_from_pos, .-byte_from_pos
	.globl	pos_from_byte
	.type	pos_from_byte, @function
pos_from_byte:
.LFB19:
	.loc 1 541 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# poffset, poffset
	movq	%rsi, -32(%rbp)	# pbitpos, pbitpos
	movl	%edx, -36(%rbp)	# off_align, off_align
	movq	%rcx, -48(%rbp)	# pos, pos
	.loc 1 548 0
	movl	-36(%rbp), %eax	# off_align, tmp75
	shrl	$3, %eax	#, D.14334
	.loc 1 543 0
	movl	%eax, %eax	# D.14334, D.14335
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14335,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.14336
	.loc 1 546 0
	movl	-36(%rbp), %eax	# off_align, tmp76
	shrl	$3, %eax	#, D.14334
	.loc 1 543 0
	movl	%eax, %eax	# D.14334, D.14335
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14335,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.14336
	movq	-48(%rbp), %rax	# pos, tmp77
	movq	%rax, %rsi	# tmp77,
	movl	$64, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.14336
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14336
	movq	%rdx, %rsi	# D.14336,
	movq	%rax, %rdi	# D.14336,
	call	convert	#
	movq	%rbx, %rdx	# D.14336,
	movq	%rax, %rsi	# D.14336,
	movl	$61, %edi	#,
	call	size_binop	#
	movq	-24(%rbp), %rdx	# poffset, tmp78
	movq	%rax, (%rdx)	# D.14336, *poffset_13(D)
	.loc 1 549 0
	movq	global_trees+152(%rip), %rbx	# global_trees, D.14336
	.loc 1 551 0
	movl	-36(%rbp), %eax	# off_align, tmp79
	shrl	$3, %eax	#, D.14334
	.loc 1 549 0
	movl	%eax, %eax	# D.14334, D.14335
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14335,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.14336
	movq	-48(%rbp), %rax	# pos, tmp80
	movq	%rax, %rsi	# tmp80,
	movl	$68, %edi	#,
	call	size_binop	#
	movq	%rbx, %rdx	# D.14336,
	movq	%rax, %rsi	# D.14336,
	movl	$61, %edi	#,
	call	size_binop	#
	movq	-32(%rbp), %rdx	# pbitpos, tmp81
	movq	%rax, (%rdx)	# D.14336, *pbitpos_20(D)
	.loc 1 553 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	pos_from_byte, .-pos_from_byte
	.globl	pos_from_bit
	.type	pos_from_bit, @function
pos_from_bit:
.LFB20:
	.loc 1 560 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# poffset, poffset
	movq	%rsi, -32(%rbp)	# pbitpos, pbitpos
	movl	%edx, -36(%rbp)	# off_align, off_align
	movq	%rcx, -48(%rbp)	# pos, pos
	.loc 1 565 0
	movl	-36(%rbp), %eax	# off_align, tmp71
	shrl	$3, %eax	#, D.14337
	.loc 1 561 0
	movl	%eax, %eax	# D.14337, D.14338
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14338,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.14339
	movl	-36(%rbp), %eax	# off_align, D.14338
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14338,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.14339
	movq	-48(%rbp), %rax	# pos, tmp72
	movq	%rax, %rsi	# tmp72,
	movl	$64, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.14339
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14339
	movq	%rdx, %rsi	# D.14339,
	movq	%rax, %rdi	# D.14339,
	call	convert	#
	movq	%rbx, %rdx	# D.14339,
	movq	%rax, %rsi	# D.14339,
	movl	$61, %edi	#,
	call	size_binop	#
	movq	-24(%rbp), %rdx	# poffset, tmp73
	movq	%rax, (%rdx)	# D.14339, *poffset_12(D)
	.loc 1 566 0
	movl	-36(%rbp), %eax	# off_align, D.14338
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14338,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.14339
	movq	-48(%rbp), %rax	# pos, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$68, %edi	#,
	call	size_binop	#
	movq	-32(%rbp), %rdx	# pbitpos, tmp75
	movq	%rax, (%rdx)	# D.14339, *pbitpos_16(D)
	.loc 1 567 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	pos_from_bit, .-pos_from_bit
	.globl	normalize_offset
	.type	normalize_offset, @function
normalize_offset:
.LFB21:
	.loc 1 576 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# poffset, poffset
	movq	%rsi, -48(%rbp)	# pbitpos, pbitpos
	movl	%edx, -52(%rbp)	# off_align, off_align
	.loc 1 579 0
	movl	-52(%rbp), %edx	# off_align, D.14340
	movq	-48(%rbp), %rax	# pbitpos, tmp77
	movq	(%rax), %rax	# *pbitpos_3(D), D.14341
	movq	%rdx, %rsi	# D.14340,
	movq	%rax, %rdi	# D.14341,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.14342
	js	.L92	#,
.LBB5:
	.loc 1 581 0
	movl	-52(%rbp), %eax	# off_align, D.14343
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14343,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.14341
	movq	-48(%rbp), %rax	# pbitpos, tmp78
	movq	(%rax), %rax	# *pbitpos_3(D), D.14341
	movq	%rax, %rsi	# D.14341,
	movl	$64, %edi	#,
	call	size_binop	#
	movq	%rax, -24(%rbp)	# tmp79, extra_aligns
	.loc 1 587 0
	movl	-52(%rbp), %eax	# off_align, tmp80
	shrl	$3, %eax	#, D.14344
	.loc 1 585 0
	movl	%eax, %eax	# D.14344, D.14343
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14343,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.14341
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14341
	movq	-24(%rbp), %rdx	# extra_aligns, tmp81
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# D.14341,
	call	convert	#
	movq	%rbx, %rdx	# D.14341,
	movq	%rax, %rsi	# D.14341,
	movl	$61, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.14341
	movq	-40(%rbp), %rax	# poffset, tmp82
	movq	(%rax), %rax	# *poffset_16(D), D.14341
	movq	%rax, %rsi	# D.14341,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	-40(%rbp), %rdx	# poffset, tmp83
	movq	%rax, (%rdx)	# D.14341, *poffset_16(D)
	.loc 1 590 0
	movl	-52(%rbp), %eax	# off_align, D.14343
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14343,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.14341
	movq	-48(%rbp), %rax	# pbitpos, tmp84
	movq	(%rax), %rax	# *pbitpos_3(D), D.14341
	movq	%rax, %rsi	# D.14341,
	movl	$68, %edi	#,
	call	size_binop	#
	movq	-48(%rbp), %rdx	# pbitpos, tmp85
	movq	%rax, (%rdx)	# D.14341, *pbitpos_3(D)
.L92:
.LBE5:
	.loc 1 592 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	normalize_offset, .-normalize_offset
	.section	.rodata
.LC5:
	.string	"type"
.LC6:
	.string	"\noffset"
.LC7:
	.string	" bitpos"
	.align 8
.LC8:
	.string	"\naligns: rec = %u, unpack = %u, unpad = %u, off = %u\n"
.LC9:
	.string	"packed may be necessary\n"
.LC10:
	.string	"pending statics:\n"
	.text
	.globl	debug_rli
	.type	debug_rli, @function
debug_rli:
.LFB22:
	.loc 1 599 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# rli, rli
	.loc 1 600 0
	movq	-8(%rbp), %rax	# rli, tmp75
	movq	(%rax), %rdx	# rli_1(D)->t, D.14345
	movq	stderr(%rip), %rax	# stderr, stderr.23
	movl	$0, %ecx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# stderr.23,
	call	print_node_brief	#
	.loc 1 601 0
	movq	-8(%rbp), %rax	# rli, tmp76
	movq	8(%rax), %rdx	# rli_1(D)->offset, D.14345
	movq	stderr(%rip), %rax	# stderr, stderr.24
	movl	$0, %ecx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# stderr.24,
	call	print_node_brief	#
	.loc 1 602 0
	movq	-8(%rbp), %rax	# rli, tmp77
	movq	24(%rax), %rdx	# rli_1(D)->bitpos, D.14345
	movq	stderr(%rip), %rax	# stderr, stderr.25
	movl	$0, %ecx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# stderr.25,
	call	print_node_brief	#
	.loc 1 604 0
	movq	-8(%rbp), %rax	# rli, tmp78
	movl	16(%rax), %edi	# rli_1(D)->offset_align, D.14346
	movq	-8(%rbp), %rax	# rli, tmp79
	movl	40(%rax), %esi	# rli_1(D)->unpadded_align, D.14346
	movq	-8(%rbp), %rax	# rli, tmp80
	movl	36(%rax), %ecx	# rli_1(D)->unpacked_align, D.14346
	movq	-8(%rbp), %rax	# rli, tmp81
	movl	32(%rax), %edx	# rli_1(D)->record_align, D.14346
	movq	stderr(%rip), %rax	# stderr, stderr.26
	movl	%edi, %r9d	# D.14346,
	movl	%esi, %r8d	# D.14346,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# stderr.26,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 607 0
	movq	-8(%rbp), %rax	# rli, tmp82
	movl	64(%rax), %eax	# rli_1(D)->packed_maybe_necessary, D.14347
	testl	%eax, %eax	# D.14347
	je	.L95	#,
	.loc 1 608 0
	movq	stderr(%rip), %rax	# stderr, stderr.27
	movq	%rax, %rcx	# stderr.27,
	movl	$24, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
.L95:
	.loc 1 610 0
	movq	-8(%rbp), %rax	# rli, tmp83
	movq	56(%rax), %rax	# rli_1(D)->pending_statics, D.14345
	testq	%rax, %rax	# D.14345
	je	.L94	#,
	.loc 1 612 0
	movq	stderr(%rip), %rax	# stderr, stderr.28
	movq	%rax, %rcx	# stderr.28,
	movl	$17, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
	.loc 1 613 0
	movq	-8(%rbp), %rax	# rli, tmp84
	movq	56(%rax), %rax	# rli_1(D)->pending_statics, D.14345
	movq	%rax, %rdi	# D.14345,
	call	debug_tree	#
.L94:
	.loc 1 615 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	debug_rli, .-debug_rli
	.globl	normalize_rli
	.type	normalize_rli, @function
normalize_rli:
.LFB23:
	.loc 1 623 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# rli, rli
	.loc 1 624 0
	movq	-8(%rbp), %rax	# rli, tmp62
	movl	16(%rax), %eax	# rli_1(D)->offset_align, D.14354
	movq	-8(%rbp), %rdx	# rli, tmp63
	leaq	24(%rdx), %rsi	#, D.14355
	movq	-8(%rbp), %rdx	# rli, tmp64
	leaq	8(%rdx), %rcx	#, D.14355
	movl	%eax, %edx	# D.14354,
	movq	%rcx, %rdi	# D.14355,
	call	normalize_offset	#
	.loc 1 625 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	normalize_rli, .-normalize_rli
	.globl	rli_size_unit_so_far
	.type	rli_size_unit_so_far, @function
rli_size_unit_so_far:
.LFB24:
	.loc 1 632 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# rli, rli
	.loc 1 633 0
	movq	-8(%rbp), %rax	# rli, tmp63
	movq	24(%rax), %rdx	# rli_1(D)->bitpos, D.14356
	movq	-8(%rbp), %rax	# rli, tmp64
	movq	8(%rax), %rax	# rli_1(D)->offset, D.14356
	movq	%rdx, %rsi	# D.14356,
	movq	%rax, %rdi	# D.14356,
	call	byte_from_pos	#
	.loc 1 634 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	rli_size_unit_so_far, .-rli_size_unit_so_far
	.globl	rli_size_so_far
	.type	rli_size_so_far, @function
rli_size_so_far:
.LFB25:
	.loc 1 641 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# rli, rli
	.loc 1 642 0
	movq	-8(%rbp), %rax	# rli, tmp63
	movq	24(%rax), %rdx	# rli_1(D)->bitpos, D.14358
	movq	-8(%rbp), %rax	# rli, tmp64
	movq	8(%rax), %rax	# rli_1(D)->offset, D.14358
	movq	%rdx, %rsi	# D.14358,
	movq	%rax, %rdi	# D.14358,
	call	bit_from_pos	#
	.loc 1 643 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	rli_size_so_far, .-rli_size_so_far
	.type	place_union_field, @function
place_union_field:
.LFB26:
	.loc 1 651 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# rli, rli
	movq	%rsi, -32(%rbp)	# field, field
	.loc 1 654 0
	movq	-32(%rbp), %rax	# field, tmp113
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	layout_decl	#
	.loc 1 656 0
	movq	global_trees+120(%rip), %rdx	# global_trees, D.14360
	movq	-32(%rbp), %rax	# field, tmp114
	movq	%rdx, 88(%rax)	# D.14360, field_3(D)->decl.arguments
	.loc 1 657 0
	movq	global_trees+136(%rip), %rdx	# global_trees, D.14360
	movq	-32(%rbp), %rax	# field, tmp115
	movq	%rdx, 160(%rax)	# D.14360, field_3(D)->decl.u2.t
	.loc 1 658 0
	movl	$128, %edi	#,
	call	exact_log2_wide	#
	movl	%eax, %edx	# D.14361, D.14362
	movq	-32(%rbp), %rax	# field, tmp116
	movb	%dl, 59(%rax)	# D.14362, field_3(D)->decl.u1.a.off_align
	.loc 1 660 0
	movq	-32(%rbp), %rax	# field, tmp117
	movl	56(%rax), %eax	# *field_3(D), tmp120
	andl	$16777215, %eax	#, D.14363
	movl	%eax, -8(%rbp)	# D.14363, desired_align
	.loc 1 672 0
	movq	-32(%rbp), %rax	# field, tmp121
	movzbl	52(%rax), %eax	# *field_3(D), D.14362
	andl	$8, %eax	#, D.14362
	testb	%al, %al	# D.14362
	jne	.L103	#,
	.loc 1 673 0
	movl	-8(%rbp), %edx	# desired_align, desired_align.29
	movq	-32(%rbp), %rax	# field, tmp122
	movl	%edx, %esi	# desired_align.29,
	movq	%rax, %rdi	# tmp122,
	call	x86_field_alignment	#
	movl	%eax, -8(%rbp)	# D.14361, desired_align
.L103:
	.loc 1 676 0
	movq	-24(%rbp), %rax	# rli, tmp123
	movq	(%rax), %rdx	# rli_15(D)->t, D.14360
	movq	-24(%rbp), %rax	# rli, tmp124
	movq	(%rax), %rax	# rli_15(D)->t, D.14360
	movzbl	63(%rax), %eax	# *_17, tmp127
	shrb	$7, %al	#, D.14364
	movl	%eax, %ecx	# D.14364, D.14362
	movq	-32(%rbp), %rax	# field, tmp128
	movzbl	52(%rax), %eax	# *field_3(D), tmp131
	shrb	$3, %al	#, D.14364
	andl	$1, %eax	#, D.14364
	orl	%ecx, %eax	# D.14362, D.14362
	andl	$1, %eax	#, D.14364
	sall	$7, %eax	#, tmp133
	movl	%eax, %ecx	# tmp133, tmp133
	movzbl	63(%rdx), %eax	#, tmp134
	andl	$127, %eax	#, tmp135
	orl	%ecx, %eax	# tmp133, tmp136
	movb	%al, 63(%rdx)	# tmp136,
	.loc 1 679 0
	movq	-24(%rbp), %rax	# rli, tmp137
	movl	32(%rax), %edx	# rli_15(D)->record_align, D.14365
	movl	-8(%rbp), %eax	# desired_align, tmp138
	cmpl	%eax, %edx	# tmp138, D.14365
	cmovb	%eax, %edx	# D.14365,, tmp138, D.14365
	movq	-24(%rbp), %rax	# rli, tmp139
	movl	%edx, 32(%rax)	# D.14365, rli_15(D)->record_align
	.loc 1 680 0
	movq	-24(%rbp), %rax	# rli, tmp140
	movl	40(%rax), %edx	# rli_15(D)->unpadded_align, D.14365
	movl	-8(%rbp), %eax	# desired_align, tmp141
	cmpl	%eax, %edx	# tmp141, D.14365
	cmovb	%eax, %edx	# D.14365,, tmp141, D.14365
	movq	-24(%rbp), %rax	# rli, tmp142
	movl	%edx, 40(%rax)	# D.14365, rli_15(D)->unpadded_align
	.loc 1 685 0
	movq	-32(%rbp), %rax	# field, tmp143
	movq	96(%rax), %rax	# field_3(D)->decl.result, D.14360
	testq	%rax, %rax	# D.14360
	je	.L104	#,
.LBB6:
	.loc 1 687 0
	movq	-32(%rbp), %rax	# field, tmp144
	movq	8(%rax), %rax	# field_3(D)->common.type, D.14360
	movl	64(%rax), %eax	# _29->type.align, tmp145
	movl	%eax, -4(%rbp)	# tmp145, type_align
	.loc 1 690 0
	movq	-32(%rbp), %rax	# field, tmp146
	movq	8(%rax), %rax	# field_3(D)->common.type, D.14360
	movzbl	63(%rax), %eax	# *_31, D.14362
	andl	$-128, %eax	#, D.14362
	testb	%al, %al	# D.14362
	jne	.L105	#,
	.loc 1 691 0
	movl	-4(%rbp), %edx	# type_align, type_align.30
	movq	-32(%rbp), %rax	# field, tmp147
	movl	%edx, %esi	# type_align.30,
	movq	%rax, %rdi	# tmp147,
	call	x86_field_alignment	#
	movl	%eax, -4(%rbp)	# D.14361, type_align
.L105:
	.loc 1 693 0
	movq	-24(%rbp), %rax	# rli, tmp148
	movl	32(%rax), %edx	# rli_15(D)->record_align, D.14365
	movl	-4(%rbp), %eax	# type_align, tmp149
	cmpl	%eax, %edx	# tmp149, D.14365
	cmovb	%eax, %edx	# D.14365,, tmp149, D.14365
	movq	-24(%rbp), %rax	# rli, tmp150
	movl	%edx, 32(%rax)	# D.14365, rli_15(D)->record_align
	.loc 1 694 0
	movq	-24(%rbp), %rax	# rli, tmp151
	movl	40(%rax), %edx	# rli_15(D)->unpadded_align, D.14365
	movl	-4(%rbp), %eax	# type_align, tmp152
	cmpl	%eax, %edx	# tmp152, D.14365
	cmovb	%eax, %edx	# D.14365,, tmp152, D.14365
	movq	-24(%rbp), %rax	# rli, tmp153
	movl	%edx, 40(%rax)	# D.14365, rli_15(D)->unpadded_align
	.loc 1 695 0
	movq	-24(%rbp), %rax	# rli, tmp154
	movq	(%rax), %rax	# rli_15(D)->t, D.14360
	movq	-24(%rbp), %rdx	# rli, tmp155
	movq	(%rdx), %rdx	# rli_15(D)->t, D.14360
	movzbl	63(%rdx), %edx	# *_42, tmp158
	shrb	$7, %dl	#, D.14364
	movl	%edx, %ecx	# D.14364, D.14362
	movq	-32(%rbp), %rdx	# field, tmp159
	movq	8(%rdx), %rdx	# field_3(D)->common.type, D.14360
	movzbl	63(%rdx), %edx	# *_45, tmp162
	shrb	$7, %dl	#, D.14364
	orl	%ecx, %edx	# D.14362, D.14362
	andl	$1, %edx	#, D.14364
	movl	%edx, %ecx	# D.14364, tmp164
	sall	$7, %ecx	#, tmp164
	movzbl	63(%rax), %edx	#, tmp165
	andl	$127, %edx	#, tmp166
	orl	%ecx, %edx	# tmp164, tmp167
	movb	%dl, 63(%rax)	# tmp167,
.L104:
.LBE6:
	.loc 1 701 0
	movq	-24(%rbp), %rax	# rli, tmp168
	movq	(%rax), %rax	# rli_15(D)->t, D.14360
	movzbl	16(%rax), %eax	# _50->common.code, D.14362
	cmpb	$21, %al	#, D.14362
	jne	.L106	#,
	.loc 1 702 0
	movq	-32(%rbp), %rax	# field, tmp169
	movq	64(%rax), %rdx	# field_3(D)->decl.size_unit, D.14360
	movq	-24(%rbp), %rax	# rli, tmp170
	movq	8(%rax), %rax	# rli_15(D)->offset, D.14360
	movq	%rax, %rsi	# D.14360,
	movl	$79, %edi	#,
	call	size_binop	#
	movq	-24(%rbp), %rdx	# rli, tmp171
	movq	%rax, 8(%rdx)	# D.14360, rli_15(D)->offset
	jmp	.L102	#
.L106:
	.loc 1 703 0
	movq	-24(%rbp), %rax	# rli, tmp172
	movq	(%rax), %rax	# rli_15(D)->t, D.14360
	movzbl	16(%rax), %eax	# _55->common.code, D.14362
	cmpb	$22, %al	#, D.14362
	jne	.L102	#,
	.loc 1 704 0
	movq	-24(%rbp), %rax	# rli, tmp173
	movq	8(%rax), %rsi	# rli_15(D)->offset, D.14360
	movq	-32(%rbp), %rax	# field, tmp174
	movq	64(%rax), %rcx	# field_3(D)->decl.size_unit, D.14360
	movq	-32(%rbp), %rax	# field, tmp175
	movq	104(%rax), %rdx	# field_3(D)->decl.initial, D.14360
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14360
	movq	%rsi, %r8	# D.14360,
	movq	%rax, %rsi	# D.14360,
	movl	$51, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.14360,
	call	fold	#
	movq	-24(%rbp), %rdx	# rli, tmp176
	movq	%rax, 8(%rdx)	# D.14360, rli_15(D)->offset
.L102:
	.loc 1 707 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	place_union_field, .-place_union_field
	.section	.rodata
	.align 8
.LC11:
	.string	"packed attribute is unnecessary for `%s'"
.LC12:
	.string	"padding struct to align `%s'"
	.text
	.globl	place_field
	.type	place_field, @function
place_field:
.LFB27:
	.loc 1 718 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# rli, rli
	movq	%rsi, -112(%rbp)	# field, field
	.loc 1 727 0
	movq	-112(%rbp), %rax	# field, tmp354
	movq	8(%rax), %rax	# field_17(D)->common.type, tmp355
	movq	%rax, -56(%rbp)	# tmp355, type
	.loc 1 729 0
	movq	-112(%rbp), %rax	# field, tmp356
	movzbl	16(%rax), %eax	# field_17(D)->common.code, D.14366
	testb	%al, %al	# D.14366
	je	.L109	#,
	.loc 1 729 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# type, tmp357
	movzbl	16(%rax), %eax	# type_18->common.code, D.14366
	testb	%al, %al	# D.14366
	jne	.L110	#,
.L109:
	.loc 1 730 0 is_stmt 1
	jmp	.L108	#
.L110:
	.loc 1 736 0
	movq	-112(%rbp), %rax	# field, tmp358
	movzbl	16(%rax), %eax	# field_17(D)->common.code, D.14366
	cmpb	$34, %al	#, D.14366
	jne	.L112	#,
	.loc 1 738 0
	movq	-104(%rbp), %rax	# rli, tmp359
	movq	56(%rax), %rdx	# rli_22(D)->pending_statics, D.14367
	movq	-112(%rbp), %rax	# field, tmp360
	movq	%rax, %rsi	# tmp360,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	-104(%rbp), %rdx	# rli, tmp361
	movq	%rax, 56(%rdx)	# D.14367, rli_22(D)->pending_statics
	.loc 1 740 0
	jmp	.L108	#
.L112:
	.loc 1 745 0
	movq	-112(%rbp), %rax	# field, tmp362
	movzbl	16(%rax), %eax	# field_17(D)->common.code, D.14366
	cmpb	$37, %al	#, D.14366
	je	.L113	#,
	.loc 1 746 0
	jmp	.L108	#
.L113:
	.loc 1 750 0
	movq	-104(%rbp), %rax	# rli, tmp363
	movq	(%rax), %rax	# rli_22(D)->t, D.14367
	movzbl	16(%rax), %eax	# _26->common.code, D.14366
	cmpb	$20, %al	#, D.14366
	je	.L114	#,
	.loc 1 752 0
	movq	-112(%rbp), %rdx	# field, tmp364
	movq	-104(%rbp), %rax	# rli, tmp365
	movq	%rdx, %rsi	# tmp364,
	movq	%rax, %rdi	# tmp365,
	call	place_union_field	#
	.loc 1 753 0
	jmp	.L108	#
.L114:
	.loc 1 758 0
	movq	-104(%rbp), %rax	# rli, tmp366
	movq	24(%rax), %rax	# rli_22(D)->bitpos, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	jne	.L115	#,
	.loc 1 759 0
	movq	-104(%rbp), %rax	# rli, tmp367
	movq	24(%rax), %rax	# rli_22(D)->bitpos, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	movl	%eax, %ebx	# D.14369, D.14370
	.loc 1 760 0
	movq	-104(%rbp), %rax	# rli, tmp368
	movq	24(%rax), %rax	# rli_22(D)->bitpos, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	.loc 1 759 0
	negl	%eax	# D.14371
	andl	%ebx, %eax	# D.14370, D.14370
	movl	%eax, -80(%rbp)	# D.14370, known_align
	jmp	.L116	#
.L115:
	.loc 1 761 0
	movq	-104(%rbp), %rax	# rli, tmp369
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	je	.L117	#,
	.loc 1 762 0
	movl	$128, -80(%rbp)	#, known_align
	jmp	.L116	#
.L117:
	.loc 1 763 0
	movq	-104(%rbp), %rax	# rli, tmp370
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	host_integerp	#
	testl	%eax, %eax	# D.14368
	je	.L118	#,
	.loc 1 765 0
	movq	-104(%rbp), %rax	# rli, tmp371
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	movq	%rax, %rbx	#, D.14369
	.loc 1 766 0
	movq	-104(%rbp), %rax	# rli, tmp372
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	negq	%rax	# D.14369
	andq	%rbx, %rax	# D.14369, D.14369
	.loc 1 764 0
	sall	$3, %eax	#, tmp373
	movl	%eax, -80(%rbp)	# tmp373, known_align
	jmp	.L116	#
.L118:
	.loc 1 768 0
	movq	-104(%rbp), %rax	# rli, tmp374
	movl	16(%rax), %eax	# rli_22(D)->offset_align, tmp375
	movl	%eax, -80(%rbp)	# tmp375, known_align
.L116:
	.loc 1 773 0
	movq	-112(%rbp), %rax	# field, tmp376
	movl	56(%rax), %eax	# *field_17(D), tmp379
	andl	$16777215, %eax	#, D.14373
	movl	%eax, -84(%rbp)	# D.14373, desired_align
	.loc 1 774 0
	movq	-112(%rbp), %rax	# field, tmp380
	movzbl	52(%rax), %eax	# *field_17(D), tmp383
	shrb	$3, %al	#, D.14374
	andl	$1, %eax	#, D.14374
	movzbl	%al, %eax	# D.14374, tmp384
	movl	%eax, -72(%rbp)	# tmp384, user_align
	.loc 1 775 0
	movl	-80(%rbp), %edx	# known_align, tmp385
	movq	-112(%rbp), %rax	# field, tmp386
	movl	%edx, %esi	# tmp385,
	movq	%rax, %rdi	# tmp386,
	call	layout_decl	#
	.loc 1 776 0
	movq	-112(%rbp), %rax	# field, tmp387
	movzbl	49(%rax), %eax	# *field_17(D), D.14366
	andl	$4, %eax	#, D.14366
	testb	%al, %al	# D.14366
	jne	.L119	#,
	.loc 1 778 0
	movq	-112(%rbp), %rax	# field, tmp388
	movl	56(%rax), %eax	# *field_17(D), tmp391
	andl	$16777215, %eax	#, D.14373
	movl	%eax, -84(%rbp)	# D.14373, desired_align
	.loc 1 779 0
	movq	-112(%rbp), %rax	# field, tmp392
	movzbl	52(%rax), %eax	# *field_17(D), tmp395
	shrb	$3, %al	#, D.14374
	andl	$1, %eax	#, D.14374
	movzbl	%al, %eax	# D.14374, tmp396
	movl	%eax, -72(%rbp)	# tmp396, user_align
.L119:
	.loc 1 792 0
	cmpl	$0, -72(%rbp)	#, user_align
	jne	.L120	#,
	.loc 1 793 0
	movl	-84(%rbp), %edx	# desired_align, desired_align.31
	movq	-112(%rbp), %rax	# field, tmp397
	movl	%edx, %esi	# desired_align.31,
	movq	%rax, %rdi	# tmp397,
	call	x86_field_alignment	#
	movl	%eax, -84(%rbp)	# D.14368, desired_align
.L120:
	.loc 1 799 0
	movq	targetm+296(%rip), %rax	# targetm.ms_bitfield_layout_p, D.14375
	movq	-104(%rbp), %rdx	# rli, tmp398
	movq	(%rdx), %rdx	# rli_22(D)->t, D.14367
	movq	%rdx, %rdi	# D.14367,
	call	*%rax	# D.14375
	testb	%al, %al	# D.14376
	je	.L121	#,
	.loc 1 800 0
	movq	global_trees(%rip), %rax	# global_trees, D.14367
	cmpq	-56(%rbp), %rax	# type, D.14367
	je	.L121	#,
	.loc 1 801 0
	movq	-112(%rbp), %rax	# field, tmp399
	movq	96(%rax), %rax	# field_17(D)->decl.result, D.14367
	testq	%rax, %rax	# D.14367
	je	.L121	#,
	.loc 1 802 0
	movq	-56(%rbp), %rax	# type, tmp400
	movq	32(%rax), %rax	# type_18->type.size, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	jne	.L121	#,
	.loc 1 803 0
	movq	-112(%rbp), %rax	# field, tmp401
	movq	40(%rax), %rax	# field_17(D)->decl.size, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	je	.L121	#,
	.loc 1 805 0
	movq	-104(%rbp), %rax	# rli, tmp402
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	testq	%rax, %rax	# D.14367
	je	.L122	#,
	.loc 1 806 0
	movq	-104(%rbp), %rax	# rli, tmp403
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	96(%rax), %rax	# _77->decl.result, D.14367
	testq	%rax, %rax	# D.14367
	je	.L122	#,
	.loc 1 807 0
	movq	-104(%rbp), %rax	# rli, tmp404
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	40(%rax), %rax	# _79->decl.size, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	jne	.L122	#,
	.loc 1 809 0
	movq	-104(%rbp), %rax	# rli, tmp405
	movl	32(%rax), %edx	# rli_22(D)->record_align, D.14372
	movl	-84(%rbp), %eax	# desired_align, tmp406
	cmpl	%eax, %edx	# tmp406, D.14372
	cmovb	%eax, %edx	# D.14372,, tmp406, D.14372
	movq	-104(%rbp), %rax	# rli, tmp407
	movl	%edx, 32(%rax)	# D.14372, rli_22(D)->record_align
	.loc 1 810 0
	movq	-56(%rbp), %rax	# type, tmp408
	movl	64(%rax), %edx	# type_18->type.align, D.14372
	movq	-104(%rbp), %rax	# rli, tmp409
	movl	36(%rax), %eax	# rli_22(D)->unpacked_align, D.14372
	cmpl	%eax, %edx	# D.14372, D.14372
	cmovb	%eax, %edx	# D.14372,, D.14372, D.14372
	movq	-104(%rbp), %rax	# rli, tmp410
	movl	%edx, 36(%rax)	# D.14372, rli_22(D)->unpacked_align
	.loc 1 805 0
	jmp	.L124	#
.L122:
	.loc 1 813 0
	movl	$1, -84(%rbp)	#, desired_align
	.loc 1 805 0
	jmp	.L124	#
.L121:
	.loc 1 817 0
	movq	global_trees(%rip), %rax	# global_trees, D.14367
	cmpq	-56(%rbp), %rax	# type, D.14367
	je	.L125	#,
	.loc 1 818 0
	movq	targetm+296(%rip), %rax	# targetm.ms_bitfield_layout_p, D.14375
	movq	-104(%rbp), %rdx	# rli, tmp411
	movq	(%rdx), %rdx	# rli_22(D)->t, D.14367
	movq	%rdx, %rdi	# D.14367,
	call	*%rax	# D.14375
	xorl	$1, %eax	#, D.14376
	testb	%al, %al	# D.14376
	je	.L125	#,
	.loc 1 819 0
	movq	-112(%rbp), %rax	# field, tmp412
	movq	96(%rax), %rax	# field_17(D)->decl.result, D.14367
	testq	%rax, %rax	# D.14367
	je	.L125	#,
	.loc 1 820 0
	movq	-56(%rbp), %rax	# type, tmp413
	movq	32(%rax), %rax	# type_18->type.size, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	jne	.L125	#,
	.loc 1 826 0
	movq	-112(%rbp), %rax	# field, tmp414
	movq	40(%rax), %rax	# field_17(D)->decl.size, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	jne	.L126	#,
	.loc 1 827 0
	movq	-104(%rbp), %rax	# rli, tmp415
	movl	32(%rax), %edx	# rli_22(D)->record_align, D.14372
	movl	-84(%rbp), %eax	# desired_align, tmp416
	cmpl	%eax, %edx	# tmp416, D.14372
	cmovb	%eax, %edx	# D.14372,, tmp416, D.14372
	movq	-104(%rbp), %rax	# rli, tmp417
	movl	%edx, 32(%rax)	# D.14372, rli_22(D)->record_align
	jmp	.L127	#
.L126:
	.loc 1 828 0
	movq	-112(%rbp), %rax	# field, tmp418
	movzbl	49(%rax), %eax	# *field_17(D), D.14366
	andl	$4, %eax	#, D.14366
	testb	%al, %al	# D.14366
	jne	.L127	#,
	.loc 1 829 0
	movq	-56(%rbp), %rax	# type, tmp419
	movl	64(%rax), %eax	# type_18->type.align, tmp420
	movl	%eax, -84(%rbp)	# tmp420, desired_align
.L127:
	.loc 1 833 0
	movq	-112(%rbp), %rax	# field, tmp421
	movq	72(%rax), %rax	# field_17(D)->decl.name, D.14367
	testq	%rax, %rax	# D.14367
	je	.L128	#,
.LBB7:
	.loc 1 835 0
	movq	-56(%rbp), %rax	# type, tmp422
	movl	64(%rax), %eax	# type_18->type.align, tmp423
	movl	%eax, -68(%rbp)	# tmp423, type_align
	.loc 1 838 0
	movq	-56(%rbp), %rax	# type, tmp424
	movzbl	63(%rax), %eax	# *type_18, D.14366
	andl	$-128, %eax	#, D.14366
	testb	%al, %al	# D.14366
	jne	.L129	#,
	.loc 1 839 0
	movl	-68(%rbp), %edx	# type_align, type_align.32
	movq	-112(%rbp), %rax	# field, tmp425
	movl	%edx, %esi	# type_align.32,
	movq	%rax, %rdi	# tmp425,
	call	x86_field_alignment	#
	movl	%eax, -68(%rbp)	# D.14368, type_align
.L129:
	.loc 1 842 0
	movl	maximum_field_alignment(%rip), %eax	# maximum_field_alignment, maximum_field_alignment.33
	testl	%eax, %eax	# maximum_field_alignment.33
	je	.L130	#,
	.loc 1 843 0
	movl	maximum_field_alignment(%rip), %edx	# maximum_field_alignment, maximum_field_alignment.34
	movl	-68(%rbp), %eax	# type_align, tmp427
	cmpl	%eax, %edx	# tmp427, maximum_field_alignment.34
	cmovbe	%edx, %eax	# maximum_field_alignment.34,, tmp426
	movl	%eax, -68(%rbp)	# tmp426, type_align
	jmp	.L131	#
.L130:
	.loc 1 844 0
	movq	-112(%rbp), %rax	# field, tmp428
	movzbl	49(%rax), %eax	# *field_17(D), D.14366
	andl	$4, %eax	#, D.14366
	testb	%al, %al	# D.14366
	je	.L131	#,
	.loc 1 845 0
	movl	$8, %eax	#, tmp430
	cmpl	$8, -68(%rbp)	#, type_align
	cmovbe	-68(%rbp), %eax	# type_align,, tmp429
	movl	%eax, -68(%rbp)	# tmp429, type_align
.L131:
	.loc 1 847 0
	movq	-104(%rbp), %rax	# rli, tmp431
	movl	32(%rax), %edx	# rli_22(D)->record_align, D.14372
	movl	-68(%rbp), %eax	# type_align, tmp432
	cmpl	%eax, %edx	# tmp432, D.14372
	cmovb	%eax, %edx	# D.14372,, tmp432, D.14372
	movq	-104(%rbp), %rax	# rli, tmp433
	movl	%edx, 32(%rax)	# D.14372, rli_22(D)->record_align
	.loc 1 848 0
	movq	-112(%rbp), %rax	# field, tmp434
	movl	56(%rax), %eax	# *field_17(D), tmp437
	andl	$16777215, %eax	#, D.14373
	movl	%eax, %edx	# D.14373, D.14372
	movq	-104(%rbp), %rax	# rli, tmp438
	movl	40(%rax), %eax	# rli_22(D)->unpadded_align, D.14372
	cmpl	%eax, %edx	# D.14372, D.14372
	cmovb	%eax, %edx	# D.14372,, D.14372, D.14372
	movq	-104(%rbp), %rax	# rli, tmp439
	movl	%edx, 40(%rax)	# D.14372, rli_22(D)->unpadded_align
	.loc 1 849 0
	movl	warn_packed(%rip), %eax	# warn_packed, warn_packed.35
	testl	%eax, %eax	# warn_packed.35
	je	.L132	#,
	.loc 1 850 0
	movq	-56(%rbp), %rax	# type, tmp440
	movl	64(%rax), %edx	# type_18->type.align, D.14372
	movq	-104(%rbp), %rax	# rli, tmp441
	movl	36(%rax), %eax	# rli_22(D)->unpacked_align, D.14372
	cmpl	%eax, %edx	# D.14372, D.14372
	cmovb	%eax, %edx	# D.14372,, D.14372, D.14372
	movq	-104(%rbp), %rax	# rli, tmp442
	movl	%edx, 36(%rax)	# D.14372, rli_22(D)->unpacked_align
.L132:
	.loc 1 851 0
	movq	-56(%rbp), %rax	# type, tmp443
	movzbl	63(%rax), %eax	# *type_18, tmp446
	shrb	$7, %al	#, D.14374
	movzbl	%al, %eax	# D.14374, D.14372
	orl	%eax, -72(%rbp)	# D.14372, user_align
.LBE7:
	.loc 1 833 0
	jmp	.L124	#
.L128:
	.loc 1 833 0 is_stmt 0 discriminator 1
	jmp	.L124	#
.L125:
	.loc 1 857 0 is_stmt 1
	movq	-104(%rbp), %rax	# rli, tmp447
	movl	32(%rax), %edx	# rli_22(D)->record_align, D.14372
	movl	-84(%rbp), %eax	# desired_align, tmp448
	cmpl	%eax, %edx	# tmp448, D.14372
	cmovb	%eax, %edx	# D.14372,, tmp448, D.14372
	movq	-104(%rbp), %rax	# rli, tmp449
	movl	%edx, 32(%rax)	# D.14372, rli_22(D)->record_align
	.loc 1 858 0
	movq	-56(%rbp), %rax	# type, tmp450
	movl	64(%rax), %edx	# type_18->type.align, D.14372
	movq	-104(%rbp), %rax	# rli, tmp451
	movl	36(%rax), %eax	# rli_22(D)->unpacked_align, D.14372
	cmpl	%eax, %edx	# D.14372, D.14372
	cmovb	%eax, %edx	# D.14372,, D.14372, D.14372
	movq	-104(%rbp), %rax	# rli, tmp452
	movl	%edx, 36(%rax)	# D.14372, rli_22(D)->unpacked_align
	.loc 1 859 0
	movq	-112(%rbp), %rax	# field, tmp453
	movl	56(%rax), %eax	# *field_17(D), tmp456
	andl	$16777215, %eax	#, D.14373
	movl	%eax, %edx	# D.14373, D.14372
	movq	-104(%rbp), %rax	# rli, tmp457
	movl	40(%rax), %eax	# rli_22(D)->unpadded_align, D.14372
	cmpl	%eax, %edx	# D.14372, D.14372
	cmovb	%eax, %edx	# D.14372,, D.14372, D.14372
	movq	-104(%rbp), %rax	# rli, tmp458
	movl	%edx, 40(%rax)	# D.14372, rli_22(D)->unpadded_align
.L124:
	.loc 1 862 0
	movl	warn_packed(%rip), %eax	# warn_packed, warn_packed.36
	testl	%eax, %eax	# warn_packed.36
	je	.L133	#,
	.loc 1 862 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# field, tmp459
	movzbl	49(%rax), %eax	# *field_17(D), D.14366
	andl	$4, %eax	#, D.14366
	testb	%al, %al	# D.14366
	je	.L133	#,
	.loc 1 864 0 is_stmt 1
	movq	-56(%rbp), %rax	# type, tmp460
	movl	64(%rax), %eax	# type_18->type.align, D.14372
	cmpl	-80(%rbp), %eax	# known_align, D.14372
	jae	.L134	#,
	.loc 1 866 0
	movq	-56(%rbp), %rax	# type, tmp461
	movl	64(%rax), %eax	# type_18->type.align, D.14372
	cmpl	-84(%rbp), %eax	# desired_align, D.14372
	jbe	.L133	#,
	.loc 1 871 0
	movq	-112(%rbp), %rax	# field, tmp462
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp462,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L133	#
.L134:
	.loc 1 875 0
	movq	-104(%rbp), %rax	# rli, tmp463
	movl	$1, 64(%rax)	#, rli_22(D)->packed_maybe_necessary
.L133:
	.loc 1 880 0
	movl	-80(%rbp), %eax	# known_align, tmp464
	cmpl	-84(%rbp), %eax	# desired_align, tmp464
	jae	.L136	#,
	.loc 1 885 0
	movl	warn_padded(%rip), %eax	# warn_padded, warn_padded.37
	testl	%eax, %eax	# warn_padded.37
	je	.L137	#,
	.loc 1 886 0
	movq	-112(%rbp), %rax	# field, tmp465
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp465,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L137:
	.loc 1 890 0
	movq	-104(%rbp), %rax	# rli, tmp466
	movl	16(%rax), %eax	# rli_22(D)->offset_align, D.14372
	cmpl	-84(%rbp), %eax	# desired_align, D.14372
	jbe	.L138	#,
	.loc 1 891 0
	movl	-84(%rbp), %edx	# desired_align, desired_align.38
	movq	-104(%rbp), %rax	# rli, tmp467
	movq	24(%rax), %rax	# rli_22(D)->bitpos, D.14367
	movl	%edx, %esi	# desired_align.38,
	movq	%rax, %rdi	# D.14367,
	call	round_up	#
	movq	-104(%rbp), %rdx	# rli, tmp468
	movq	%rax, 24(%rdx)	# D.14367, rli_22(D)->bitpos
	jmp	.L139	#
.L138:
	.loc 1 896 0
	movq	global_trees+152(%rip), %rdx	# global_trees, D.14367
	movq	-104(%rbp), %rax	# rli, tmp469
	movq	24(%rax), %rax	# rli_22(D)->bitpos, D.14367
	movq	%rax, %rsi	# D.14367,
	movl	$63, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.14367
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14367
	movq	%rdx, %rsi	# D.14367,
	movq	%rax, %rdi	# D.14367,
	call	convert	#
	movq	%rax, %rdx	#, D.14367
	movq	-104(%rbp), %rax	# rli, tmp470
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movq	%rax, %rsi	# D.14367,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	-104(%rbp), %rdx	# rli, tmp471
	movq	%rax, 8(%rdx)	# D.14367, rli_22(D)->offset
	.loc 1 900 0
	movq	global_trees+136(%rip), %rdx	# global_trees, D.14367
	movq	-104(%rbp), %rax	# rli, tmp472
	movq	%rdx, 24(%rax)	# D.14367, rli_22(D)->bitpos
	.loc 1 902 0
	movl	-84(%rbp), %eax	# desired_align, tmp473
	shrl	$3, %eax	#, D.14372
	movl	%eax, %edx	# D.14372, D.14368
	movq	-104(%rbp), %rax	# rli, tmp474
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movl	%edx, %esi	# D.14368,
	movq	%rax, %rdi	# D.14367,
	call	round_up	#
	movq	-104(%rbp), %rdx	# rli, tmp475
	movq	%rax, 8(%rdx)	# D.14367, rli_22(D)->offset
.L139:
	.loc 1 905 0
	movq	-104(%rbp), %rax	# rli, tmp476
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movzbl	17(%rax), %eax	# *_160, D.14366
	andl	$2, %eax	#, D.14366
	testb	%al, %al	# D.14366
	jne	.L136	#,
	.loc 1 906 0
	movq	-104(%rbp), %rax	# rli, tmp477
	movl	-84(%rbp), %edx	# desired_align, tmp478
	movl	%edx, 16(%rax)	# tmp478, rli_22(D)->offset_align
.L136:
	.loc 1 914 0
	movq	targetm+296(%rip), %rax	# targetm.ms_bitfield_layout_p, D.14375
	movq	-104(%rbp), %rdx	# rli, tmp479
	movq	(%rdx), %rdx	# rli_22(D)->t, D.14367
	movq	%rdx, %rdi	# D.14367,
	call	*%rax	# D.14375
	xorl	$1, %eax	#, D.14376
	.loc 1 913 0
	testb	%al, %al	# D.14376
	je	.L140	#,
	.loc 1 915 0
	movq	-112(%rbp), %rax	# field, tmp480
	movzbl	16(%rax), %eax	# field_17(D)->common.code, D.14366
	cmpb	$37, %al	#, D.14366
	jne	.L140	#,
	.loc 1 916 0
	movq	global_trees(%rip), %rax	# global_trees, D.14367
	cmpq	-56(%rbp), %rax	# type, D.14367
	je	.L140	#,
	.loc 1 917 0
	movq	-112(%rbp), %rax	# field, tmp481
	movzbl	49(%rax), %eax	# *field_17(D), D.14366
	andl	$16, %eax	#, D.14366
	testb	%al, %al	# D.14366
	je	.L140	#,
	.loc 1 918 0
	movq	-112(%rbp), %rax	# field, tmp482
	movzbl	49(%rax), %eax	# *field_17(D), D.14366
	andl	$4, %eax	#, D.14366
	testb	%al, %al	# D.14366
	jne	.L140	#,
	.loc 1 919 0
	movl	maximum_field_alignment(%rip), %eax	# maximum_field_alignment, maximum_field_alignment.39
	testl	%eax, %eax	# maximum_field_alignment.39
	jne	.L140	#,
	.loc 1 920 0
	movq	-112(%rbp), %rax	# field, tmp483
	movq	40(%rax), %rax	# field_17(D)->decl.size, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	jne	.L140	#,
	.loc 1 921 0
	movq	-112(%rbp), %rax	# field, tmp484
	movq	40(%rax), %rax	# field_17(D)->decl.size, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	host_integerp	#
	testl	%eax, %eax	# D.14368
	je	.L140	#,
	.loc 1 922 0
	movq	-104(%rbp), %rax	# rli, tmp485
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	host_integerp	#
	testl	%eax, %eax	# D.14368
	je	.L140	#,
	.loc 1 923 0
	movq	-56(%rbp), %rax	# type, tmp486
	movq	32(%rax), %rax	# type_18->type.size, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	host_integerp	#
	testl	%eax, %eax	# D.14368
	je	.L140	#,
.LBB8:
	.loc 1 925 0
	movq	-56(%rbp), %rax	# type, tmp487
	movl	64(%rax), %eax	# type_18->type.align, tmp488
	movl	%eax, -64(%rbp)	# tmp488, type_align
	.loc 1 926 0
	movq	-112(%rbp), %rax	# field, tmp489
	movq	40(%rax), %rax	# field_17(D)->decl.size, tmp490
	movq	%rax, -48(%rbp)	# tmp490, dsize
	.loc 1 927 0
	movq	-48(%rbp), %rax	# dsize, tmp491
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp491,
	call	tree_low_cst	#
	movq	%rax, -40(%rbp)	# tmp492, field_size
	.loc 1 928 0
	movq	-104(%rbp), %rax	# rli, tmp493
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	movq	%rax, -32(%rbp)	# tmp494, offset
	.loc 1 929 0
	movq	-104(%rbp), %rax	# rli, tmp495
	movq	24(%rax), %rax	# rli_22(D)->bitpos, D.14367
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	movq	%rax, -24(%rbp)	# tmp496, bit_offset
	.loc 1 932 0
	movq	-56(%rbp), %rax	# type, tmp497
	movzbl	63(%rax), %eax	# *type_18, D.14366
	andl	$-128, %eax	#, D.14366
	testb	%al, %al	# D.14366
	jne	.L141	#,
	.loc 1 933 0
	movl	-64(%rbp), %edx	# type_align, type_align.40
	movq	-112(%rbp), %rax	# field, tmp498
	movl	%edx, %esi	# type_align.40,
	movq	%rax, %rdi	# tmp498,
	call	x86_field_alignment	#
	movl	%eax, -64(%rbp)	# D.14368, type_align
.L141:
	.loc 1 938 0
	movq	-32(%rbp), %rax	# offset, tmp499
	leaq	0(,%rax,8), %rdx	#, D.14369
	movq	-24(%rbp), %rax	# bit_offset, tmp500
	addq	%rax, %rdx	# tmp500, D.14369
	movq	-40(%rbp), %rax	# field_size, tmp501
	addq	%rax, %rdx	# tmp501, D.14369
	movl	-64(%rbp), %eax	# type_align, D.14369
	addq	%rdx, %rax	# D.14369, D.14369
	.loc 1 939 0
	subq	$1, %rax	#, D.14369
	.loc 1 940 0
	movl	-64(%rbp), %ebx	# type_align, D.14369
	cqto
	idivq	%rbx	# D.14369
	movq	%rax, %rcx	# tmp502, D.14369
	.loc 1 941 0
	movq	-32(%rbp), %rax	# offset, tmp504
	leaq	0(,%rax,8), %rdx	#, D.14369
	movq	-24(%rbp), %rax	# bit_offset, tmp505
	addq	%rdx, %rax	# D.14369, D.14369
	movl	-64(%rbp), %ebx	# type_align, D.14369
	cqto
	idivq	%rbx	# D.14369
	subq	%rax, %rcx	# D.14369, D.14369
	movq	%rcx, %rbx	# D.14369, D.14369
	.loc 1 942 0
	movq	-56(%rbp), %rax	# type, tmp508
	movq	32(%rax), %rax	# type_18->type.size, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	movl	-64(%rbp), %ecx	# type_align, D.14369
	cqto
	idivq	%rcx	# D.14369
	.loc 1 938 0
	cmpq	%rax, %rbx	# D.14369, D.14369
	jle	.L142	#,
	.loc 1 943 0
	movl	-64(%rbp), %edx	# type_align, type_align.41
	movq	-104(%rbp), %rax	# rli, tmp511
	movq	24(%rax), %rax	# rli_22(D)->bitpos, D.14367
	movl	%edx, %esi	# type_align.41,
	movq	%rax, %rdi	# D.14367,
	call	round_up	#
	movq	-104(%rbp), %rdx	# rli, tmp512
	movq	%rax, 24(%rdx)	# D.14367, rli_22(D)->bitpos
.L142:
	.loc 1 945 0
	movq	-56(%rbp), %rax	# type, tmp513
	movzbl	63(%rax), %eax	# *type_18, tmp516
	shrb	$7, %al	#, D.14374
	movzbl	%al, %eax	# D.14374, D.14372
	orl	%eax, -72(%rbp)	# D.14372, user_align
.L140:
.LBE8:
	.loc 1 993 0
	movq	targetm+296(%rip), %rax	# targetm.ms_bitfield_layout_p, D.14375
	movq	-104(%rbp), %rdx	# rli, tmp517
	movq	(%rdx), %rdx	# rli_22(D)->t, D.14367
	movq	%rdx, %rdi	# D.14367,
	call	*%rax	# D.14375
	testb	%al, %al	# D.14376
	je	.L143	#,
	.loc 1 994 0
	movq	-112(%rbp), %rax	# field, tmp518
	movzbl	16(%rax), %eax	# field_17(D)->common.code, D.14366
	cmpb	$37, %al	#, D.14366
	jne	.L143	#,
	.loc 1 995 0
	movq	global_trees(%rip), %rax	# global_trees, D.14367
	cmpq	-56(%rbp), %rax	# type, D.14367
	je	.L143	#,
	.loc 1 996 0
	movq	-112(%rbp), %rax	# field, tmp519
	movzbl	49(%rax), %eax	# *field_17(D), D.14366
	andl	$4, %eax	#, D.14366
	testb	%al, %al	# D.14366
	jne	.L143	#,
	.loc 1 997 0
	movq	-104(%rbp), %rax	# rli, tmp520
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	testq	%rax, %rax	# D.14367
	je	.L143	#,
	.loc 1 998 0
	movq	-112(%rbp), %rax	# field, tmp521
	movq	40(%rax), %rax	# field_17(D)->decl.size, D.14367
	testq	%rax, %rax	# D.14367
	je	.L143	#,
	.loc 1 999 0
	movq	-112(%rbp), %rax	# field, tmp522
	movq	40(%rax), %rax	# field_17(D)->decl.size, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	host_integerp	#
	testl	%eax, %eax	# D.14368
	je	.L143	#,
	.loc 1 1000 0
	movq	-104(%rbp), %rax	# rli, tmp523
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	40(%rax), %rax	# _228->decl.size, D.14367
	testq	%rax, %rax	# D.14367
	je	.L143	#,
	.loc 1 1001 0
	movq	-104(%rbp), %rax	# rli, tmp524
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	40(%rax), %rax	# _230->decl.size, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	host_integerp	#
	testl	%eax, %eax	# D.14368
	je	.L143	#,
	.loc 1 1002 0
	movq	-104(%rbp), %rax	# rli, tmp525
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	host_integerp	#
	testl	%eax, %eax	# D.14368
	je	.L143	#,
	.loc 1 1003 0
	movq	-56(%rbp), %rax	# type, tmp526
	movq	32(%rax), %rax	# type_18->type.size, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	host_integerp	#
	testl	%eax, %eax	# D.14368
	je	.L143	#,
	.loc 1 1004 0
	movq	-104(%rbp), %rax	# rli, tmp527
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	8(%rax), %rax	# _237->common.type, D.14367
	movq	32(%rax), %rax	# _238->type.size, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	host_integerp	#
	testl	%eax, %eax	# D.14368
	je	.L143	#,
	.loc 1 1005 0
	movq	-104(%rbp), %rax	# rli, tmp528
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	96(%rax), %rax	# _241->decl.result, D.14367
	testq	%rax, %rax	# D.14367
	je	.L144	#,
	.loc 1 1006 0
	movq	-104(%rbp), %rax	# rli, tmp529
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	40(%rax), %rax	# _243->decl.size, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	je	.L145	#,
.L144:
	.loc 1 1007 0
	movq	-112(%rbp), %rax	# field, tmp530
	movq	96(%rax), %rax	# field_17(D)->decl.result, D.14367
	testq	%rax, %rax	# D.14367
	je	.L143	#,
	.loc 1 1008 0
	movq	-112(%rbp), %rax	# field, tmp531
	movq	40(%rax), %rax	# field_17(D)->decl.size, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	jne	.L143	#,
.L145:
	.loc 1 1010 0
	movq	-104(%rbp), %rax	# rli, tmp532
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	8(%rax), %rax	# _249->common.type, D.14367
	.loc 1 1009 0
	movq	32(%rax), %rdx	# _250->type.size, D.14367
	movq	-56(%rbp), %rax	# type, tmp533
	movq	32(%rax), %rax	# type_18->type.size, D.14367
	movq	%rdx, %rsi	# D.14367,
	movq	%rax, %rdi	# D.14367,
	call	simple_cst_equal	#
	testl	%eax, %eax	# D.14368
	je	.L146	#,
	.loc 1 1016 0
	movq	-104(%rbp), %rax	# rli, tmp534
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	96(%rax), %rax	# _254->decl.result, D.14367
	testq	%rax, %rax	# D.14367
	je	.L143	#,
	.loc 1 1017 0
	movq	-104(%rbp), %rax	# rli, tmp535
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	40(%rax), %rax	# _256->decl.size, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	je	.L143	#,
.L146:
.LBB9:
	.loc 1 1019 0
	movq	-56(%rbp), %rax	# type, tmp536
	movl	64(%rax), %eax	# type_18->type.align, tmp537
	movl	%eax, -60(%rbp)	# tmp537, type_align
	.loc 1 1021 0
	movq	-104(%rbp), %rax	# rli, tmp538
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	testq	%rax, %rax	# D.14367
	je	.L147	#,
	.loc 1 1022 0
	movq	-104(%rbp), %rax	# rli, tmp539
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	96(%rax), %rax	# _261->decl.result, D.14367
	testq	%rax, %rax	# D.14367
	je	.L147	#,
	.loc 1 1026 0
	movq	-104(%rbp), %rax	# rli, tmp540
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	40(%rax), %rax	# _263->decl.size, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	jne	.L147	#,
	.loc 1 1027 0
	movq	-104(%rbp), %rax	# rli, tmp541
	movq	48(%rax), %rax	# rli_22(D)->prev_field, D.14367
	movq	8(%rax), %rax	# _266->common.type, D.14367
	movl	64(%rax), %edx	# _267->type.align, D.14372
	movl	-60(%rbp), %eax	# type_align, tmp543
	cmpl	%eax, %edx	# tmp543, D.14372
	cmovae	%edx, %eax	# D.14372,, tmp542
	movl	%eax, -60(%rbp)	# tmp542, type_align
.L147:
	.loc 1 1030 0
	movl	maximum_field_alignment(%rip), %eax	# maximum_field_alignment, maximum_field_alignment.42
	testl	%eax, %eax	# maximum_field_alignment.42
	je	.L148	#,
	.loc 1 1031 0
	movl	maximum_field_alignment(%rip), %edx	# maximum_field_alignment, maximum_field_alignment.43
	movl	-60(%rbp), %eax	# type_align, tmp545
	cmpl	%eax, %edx	# tmp545, maximum_field_alignment.43
	cmovbe	%edx, %eax	# maximum_field_alignment.43,, tmp544
	movl	%eax, -60(%rbp)	# tmp544, type_align
.L148:
	.loc 1 1033 0
	movl	-60(%rbp), %edx	# type_align, type_align.44
	movq	-104(%rbp), %rax	# rli, tmp546
	movq	24(%rax), %rax	# rli_22(D)->bitpos, D.14367
	movl	%edx, %esi	# type_align.44,
	movq	%rax, %rdi	# D.14367,
	call	round_up	#
	movq	-104(%rbp), %rdx	# rli, tmp547
	movq	%rax, 24(%rdx)	# D.14367, rli_22(D)->bitpos
.L143:
.LBE9:
	.loc 1 1037 0
	movq	-104(%rbp), %rax	# rli, tmp548
	movq	%rax, %rdi	# tmp548,
	call	normalize_rli	#
	.loc 1 1038 0
	movq	-104(%rbp), %rax	# rli, tmp549
	movq	8(%rax), %rdx	# rli_22(D)->offset, D.14367
	movq	-112(%rbp), %rax	# field, tmp550
	movq	%rdx, 88(%rax)	# D.14367, field_17(D)->decl.arguments
	.loc 1 1039 0
	movq	-104(%rbp), %rax	# rli, tmp551
	movq	24(%rax), %rdx	# rli_22(D)->bitpos, D.14367
	movq	-112(%rbp), %rax	# field, tmp552
	movq	%rdx, 160(%rax)	# D.14367, field_17(D)->decl.u2.t
	.loc 1 1040 0
	movq	-104(%rbp), %rax	# rli, tmp553
	movl	16(%rax), %edx	# rli_22(D)->offset_align, D.14372
	movq	-104(%rbp), %rax	# rli, tmp554
	movl	16(%rax), %eax	# rli_22(D)->offset_align, D.14372
	negl	%eax	# D.14372
	andl	%edx, %eax	# D.14372, D.14372
	movl	%eax, %eax	# D.14372, D.14377
	movq	%rax, %rdi	# D.14377,
	call	exact_log2_wide	#
	movl	%eax, %edx	# D.14368, D.14366
	movq	-112(%rbp), %rax	# field, tmp555
	movb	%dl, 59(%rax)	# D.14366, field_17(D)->decl.u1.a.off_align
	.loc 1 1042 0
	movq	-104(%rbp), %rax	# rli, tmp556
	movq	(%rax), %rax	# rli_22(D)->t, D.14367
	movq	-104(%rbp), %rdx	# rli, tmp557
	movq	(%rdx), %rdx	# rli_22(D)->t, D.14367
	movzbl	63(%rdx), %edx	# *_286, tmp560
	shrb	$7, %dl	#, D.14374
	movl	%edx, %ecx	# D.14374, D.14366
	movl	-72(%rbp), %edx	# user_align, tmp561
	orl	%ecx, %edx	# D.14366, D.14366
	andl	$1, %edx	#, D.14374
	movl	%edx, %ecx	# D.14374, tmp563
	sall	$7, %ecx	#, tmp563
	movzbl	63(%rax), %edx	#, tmp564
	andl	$127, %edx	#, tmp565
	orl	%ecx, %edx	# tmp563, tmp566
	movb	%dl, 63(%rax)	# tmp566,
	.loc 1 1047 0
	movq	-112(%rbp), %rax	# field, tmp567
	movq	160(%rax), %rax	# field_17(D)->decl.u2.t, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	jne	.L149	#,
	.loc 1 1048 0
	movq	-112(%rbp), %rax	# field, tmp568
	movq	160(%rax), %rax	# field_17(D)->decl.u2.t, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	movl	%eax, %ebx	# D.14369, D.14370
	.loc 1 1049 0
	movq	-112(%rbp), %rax	# field, tmp569
	movq	160(%rax), %rax	# field_17(D)->decl.u2.t, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	.loc 1 1048 0
	negl	%eax	# D.14371
	andl	%ebx, %eax	# D.14370, D.14370
	movl	%eax, -76(%rbp)	# D.14370, actual_align
	jmp	.L150	#
.L149:
	.loc 1 1050 0
	movq	-112(%rbp), %rax	# field, tmp570
	movq	88(%rax), %rax	# field_17(D)->decl.arguments, D.14367
	movq	%rax, %rdi	# D.14367,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14368
	je	.L151	#,
	.loc 1 1051 0
	movl	$128, -76(%rbp)	#, actual_align
	jmp	.L150	#
.L151:
	.loc 1 1052 0
	movq	-112(%rbp), %rax	# field, tmp571
	movq	88(%rax), %rax	# field_17(D)->decl.arguments, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	host_integerp	#
	testl	%eax, %eax	# D.14368
	je	.L152	#,
	.loc 1 1054 0
	movq	-112(%rbp), %rax	# field, tmp572
	movq	88(%rax), %rax	# field_17(D)->decl.arguments, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	movq	%rax, %rbx	#, D.14369
	.loc 1 1055 0
	movq	-112(%rbp), %rax	# field, tmp573
	movq	88(%rax), %rax	# field_17(D)->decl.arguments, D.14367
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14367,
	call	tree_low_cst	#
	negq	%rax	# D.14369
	andq	%rbx, %rax	# D.14369, D.14369
	.loc 1 1053 0
	sall	$3, %eax	#, tmp574
	movl	%eax, -76(%rbp)	# tmp574, actual_align
	jmp	.L150	#
.L152:
	.loc 1 1057 0
	movq	-112(%rbp), %rax	# field, tmp575
	movzbl	59(%rax), %eax	# field_17(D)->decl.u1.a.off_align, D.14366
	movzbl	%al, %eax	# D.14366, D.14368
	movl	$1, %edx	#, tmp576
	movl	%eax, %ecx	# D.14368, tmp608
	salq	%cl, %rdx	# tmp608, D.14377
	movq	%rdx, %rax	# D.14377, D.14377
	movl	%eax, -76(%rbp)	# D.14377, actual_align
.L150:
	.loc 1 1059 0
	movl	-80(%rbp), %eax	# known_align, tmp577
	cmpl	-76(%rbp), %eax	# actual_align, tmp577
	je	.L153	#,
	.loc 1 1060 0
	movl	-76(%rbp), %edx	# actual_align, tmp578
	movq	-112(%rbp), %rax	# field, tmp579
	movl	%edx, %esi	# tmp578,
	movq	%rax, %rdi	# tmp579,
	call	layout_decl	#
.L153:
	.loc 1 1062 0
	movq	-104(%rbp), %rax	# rli, tmp580
	movq	-112(%rbp), %rdx	# field, tmp581
	movq	%rdx, 48(%rax)	# tmp581, rli_22(D)->prev_field
	.loc 1 1071 0
	movq	-112(%rbp), %rax	# field, tmp582
	movq	40(%rax), %rax	# field_17(D)->decl.size, D.14367
	testq	%rax, %rax	# D.14367
	je	.L108	#,
	.loc 1 1073 0
	movq	-112(%rbp), %rax	# field, tmp583
	movq	64(%rax), %rax	# field_17(D)->decl.size_unit, D.14367
	movzbl	16(%rax), %eax	# _322->common.code, D.14366
	cmpb	$25, %al	#, D.14366
	jne	.L154	#,
	.loc 1 1074 0
	movq	-112(%rbp), %rax	# field, tmp584
	movq	64(%rax), %rax	# field_17(D)->decl.size_unit, D.14367
	movzbl	18(%rax), %eax	# *_324, D.14366
	andl	$4, %eax	#, D.14366
	testb	%al, %al	# D.14366
	je	.L155	#,
.L154:
	.loc 1 1077 0
	movq	global_trees+152(%rip), %rdx	# global_trees, D.14367
	movq	-104(%rbp), %rax	# rli, tmp585
	movq	24(%rax), %rax	# rli_22(D)->bitpos, D.14367
	movq	%rax, %rsi	# D.14367,
	movl	$63, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.14367
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14367
	movq	%rdx, %rsi	# D.14367,
	movq	%rax, %rdi	# D.14367,
	call	convert	#
	movq	%rax, %rdx	#, D.14367
	movq	-104(%rbp), %rax	# rli, tmp586
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movq	%rax, %rsi	# D.14367,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	-104(%rbp), %rdx	# rli, tmp587
	movq	%rax, 8(%rdx)	# D.14367, rli_22(D)->offset
	.loc 1 1082 0
	movq	-112(%rbp), %rax	# field, tmp588
	movq	64(%rax), %rdx	# field_17(D)->decl.size_unit, D.14367
	movq	-104(%rbp), %rax	# rli, tmp589
	movq	8(%rax), %rax	# rli_22(D)->offset, D.14367
	movq	%rax, %rsi	# D.14367,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	-104(%rbp), %rdx	# rli, tmp590
	movq	%rax, 8(%rdx)	# D.14367, rli_22(D)->offset
	.loc 1 1083 0
	movq	global_trees+136(%rip), %rdx	# global_trees, D.14367
	movq	-104(%rbp), %rax	# rli, tmp591
	movq	%rdx, 24(%rax)	# D.14367, rli_22(D)->bitpos
	.loc 1 1084 0
	movq	-112(%rbp), %rax	# field, tmp592
	movl	56(%rax), %eax	# *field_17(D), tmp595
	andl	$16777215, %eax	#, D.14373
	movl	%eax, %edx	# D.14373, D.14372
	movq	-104(%rbp), %rax	# rli, tmp596
	movl	16(%rax), %eax	# rli_22(D)->offset_align, D.14372
	cmpl	%eax, %edx	# D.14372, D.14372
	cmova	%eax, %edx	# D.14372,, D.14372, D.14372
	movq	-104(%rbp), %rax	# rli, tmp597
	movl	%edx, 16(%rax)	# D.14372, rli_22(D)->offset_align
	jmp	.L108	#
.L155:
	.loc 1 1088 0
	movq	-112(%rbp), %rax	# field, tmp598
	movq	40(%rax), %rdx	# field_17(D)->decl.size, D.14367
	movq	-104(%rbp), %rax	# rli, tmp599
	movq	24(%rax), %rax	# rli_22(D)->bitpos, D.14367
	movq	%rax, %rsi	# D.14367,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	-104(%rbp), %rdx	# rli, tmp600
	movq	%rax, 24(%rdx)	# D.14367, rli_22(D)->bitpos
	.loc 1 1089 0
	movq	-104(%rbp), %rax	# rli, tmp601
	movq	%rax, %rdi	# tmp601,
	call	normalize_rli	#
.L108:
	.loc 1 1091 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	place_field, .-place_field
	.section	.rodata
	.align 8
.LC13:
	.string	"padding struct size to alignment boundary"
	.align 8
.LC14:
	.string	"packed attribute is unnecessary"
	.text
	.type	finalize_record_size, @function
finalize_record_size:
.LFB28:
	.loc 1 1100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# rli, rli
	.loc 1 1105 0
	movq	-56(%rbp), %rax	# rli, tmp124
	movl	$8, 16(%rax)	#, rli_3(D)->offset_align
	.loc 1 1106 0
	movq	-56(%rbp), %rax	# rli, tmp125
	movq	%rax, %rdi	# tmp125,
	call	normalize_rli	#
	.loc 1 1113 0
	movq	-56(%rbp), %rax	# rli, tmp126
	movq	(%rax), %rcx	# rli_3(D)->t, D.14381
	movq	-56(%rbp), %rax	# rli, tmp127
	movl	32(%rax), %edx	# rli_3(D)->record_align, D.14382
	movq	-56(%rbp), %rax	# rli, tmp128
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movl	64(%rax), %eax	# _6->type.align, D.14382
	cmpl	%eax, %edx	# D.14382, D.14382
	cmovae	%edx, %eax	# D.14382,, D.14382
	movl	%eax, 64(%rcx)	# D.14382, _4->type.align
	.loc 1 1119 0
	movq	-56(%rbp), %rax	# rli, tmp129
	movq	%rax, %rdi	# tmp129,
	call	rli_size_so_far	#
	movq	%rax, -32(%rbp)	# tmp130, unpadded_size
	.loc 1 1120 0
	movq	-56(%rbp), %rax	# rli, tmp131
	movq	%rax, %rdi	# tmp131,
	call	rli_size_unit_so_far	#
	movq	%rax, -48(%rbp)	# tmp132, unpadded_size_unit
	.loc 1 1121 0
	movq	-56(%rbp), %rax	# rli, tmp133
	movq	24(%rax), %rax	# rli_3(D)->bitpos, D.14381
	movq	%rax, %rdi	# D.14381,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14383
	jne	.L157	#,
	.loc 1 1123 0
	movq	global_trees+128(%rip), %rdx	# global_trees, D.14381
	movq	-48(%rbp), %rax	# unpadded_size_unit, tmp134
	movq	%rax, %rsi	# tmp134,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	%rax, -48(%rbp)	# tmp135, unpadded_size_unit
.L157:
	.loc 1 1127 0
	movq	-56(%rbp), %rax	# rli, tmp136
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	136(%rax), %rax	# _15->type.binfo, D.14381
	testq	%rax, %rax	# D.14381
	je	.L158	#,
	.loc 1 1127 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# rli, tmp137
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	136(%rax), %rax	# _17->type.binfo, D.14381
	movl	24(%rax), %eax	# _18->vec.length, D.14383
	cmpl	$6, %eax	#, D.14383
	jle	.L158	#,
	.loc 1 1129 0 is_stmt 1
	movq	-56(%rbp), %rax	# rli, tmp138
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	136(%rax), %rax	# _20->type.binfo, D.14381
	movq	-32(%rbp), %rdx	# unpadded_size, tmp139
	movq	%rdx, 80(%rax)	# tmp139, _21->vec.a
	.loc 1 1130 0
	movq	-56(%rbp), %rax	# rli, tmp140
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	136(%rax), %rax	# _22->type.binfo, D.14381
	movq	-48(%rbp), %rdx	# unpadded_size_unit, tmp141
	movq	%rdx, 88(%rax)	# tmp141, _23->vec.a
.L158:
	.loc 1 1141 0
	movq	-56(%rbp), %rax	# rli, tmp142
	movq	(%rax), %rbx	# rli_3(D)->t, D.14381
	movq	-56(%rbp), %rax	# rli, tmp143
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movl	64(%rax), %eax	# _25->type.align, D.14382
	movl	%eax, %edx	# D.14382, D.14383
	movq	-32(%rbp), %rax	# unpadded_size, tmp144
	movl	%edx, %esi	# D.14383,
	movq	%rax, %rdi	# tmp144,
	call	round_up	#
	movq	%rax, 32(%rbx)	# D.14381, _24->type.size
	.loc 1 1142 0
	movq	-56(%rbp), %rax	# rli, tmp145
	movq	(%rax), %rbx	# rli_3(D)->t, D.14381
	.loc 1 1143 0
	movq	-56(%rbp), %rax	# rli, tmp146
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movl	64(%rax), %eax	# _30->type.align, D.14382
	shrl	$3, %eax	#, D.14382
	.loc 1 1142 0
	movl	%eax, %edx	# D.14382, D.14383
	movq	-48(%rbp), %rax	# unpadded_size_unit, tmp147
	movl	%edx, %esi	# D.14383,
	movq	%rax, %rdi	# tmp147,
	call	round_up	#
	movq	%rax, 40(%rbx)	# D.14381, _29->type.size_unit
	.loc 1 1146 0
	movl	warn_padded(%rip), %eax	# warn_padded, warn_padded.45
	testl	%eax, %eax	# warn_padded.45
	je	.L159	#,
	.loc 1 1146 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# unpadded_size, tmp148
	movzbl	17(%rax), %eax	# *unpadded_size_9, D.14384
	andl	$2, %eax	#, D.14384
	testb	%al, %al	# D.14384
	je	.L159	#,
	.loc 1 1147 0 is_stmt 1
	movq	-56(%rbp), %rax	# rli, tmp149
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	32(%rax), %rdx	# _38->type.size, D.14381
	movq	-32(%rbp), %rax	# unpadded_size, tmp150
	movq	%rdx, %rsi	# D.14381,
	movq	%rax, %rdi	# tmp150,
	call	simple_cst_equal	#
	testl	%eax, %eax	# D.14383
	jne	.L159	#,
	.loc 1 1148 0
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L159:
	.loc 1 1150 0
	movl	warn_packed(%rip), %eax	# warn_packed, warn_packed.46
	testl	%eax, %eax	# warn_packed.46
	je	.L156	#,
	.loc 1 1150 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# rli, tmp151
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movzbl	16(%rax), %eax	# _42->common.code, D.14384
	cmpb	$20, %al	#, D.14384
	jne	.L156	#,
	.loc 1 1151 0 is_stmt 1
	movq	-56(%rbp), %rax	# rli, tmp152
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movzbl	62(%rax), %eax	# *_44, D.14384
	andl	$16, %eax	#, D.14384
	testb	%al, %al	# D.14384
	je	.L156	#,
	.loc 1 1151 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# rli, tmp153
	movl	64(%rax), %eax	# rli_3(D)->packed_maybe_necessary, D.14383
	testl	%eax, %eax	# D.14383
	jne	.L156	#,
	.loc 1 1152 0 is_stmt 1
	movq	-32(%rbp), %rax	# unpadded_size, tmp154
	movzbl	17(%rax), %eax	# *unpadded_size_9, D.14384
	andl	$2, %eax	#, D.14384
	testb	%al, %al	# D.14384
	je	.L156	#,
.LBB10:
	.loc 1 1160 0
	movq	-56(%rbp), %rax	# rli, tmp155
	movl	36(%rax), %edx	# rli_3(D)->unpacked_align, D.14382
	movq	-56(%rbp), %rax	# rli, tmp156
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movl	64(%rax), %eax	# _51->type.align, D.14382
	cmpl	%eax, %edx	# D.14382, D.14382
	cmovb	%eax, %edx	# D.14382,, D.14382, D.14382
	movq	-56(%rbp), %rax	# rli, tmp157
	movl	%edx, 36(%rax)	# D.14382, rli_3(D)->unpacked_align
	.loc 1 1167 0
	movq	-56(%rbp), %rax	# rli, tmp158
	movl	36(%rax), %eax	# rli_3(D)->unpacked_align, D.14382
	movl	%eax, %edx	# D.14382, D.14383
	movq	-56(%rbp), %rax	# rli, tmp159
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	32(%rax), %rax	# _56->type.size, D.14381
	movl	%edx, %esi	# D.14383,
	movq	%rax, %rdi	# D.14381,
	call	round_up	#
	movq	%rax, -24(%rbp)	# tmp160, unpacked_size
	.loc 1 1170 0
	movq	-56(%rbp), %rax	# rli, tmp161
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	32(%rax), %rdx	# _59->type.size, D.14381
	movq	-24(%rbp), %rax	# unpacked_size, tmp162
	movq	%rdx, %rsi	# D.14381,
	movq	%rax, %rdi	# tmp162,
	call	simple_cst_equal	#
	testl	%eax, %eax	# D.14383
	je	.L156	#,
	.loc 1 1172 0
	movq	-56(%rbp), %rax	# rli, tmp163
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movzbl	62(%rax), %edx	#, tmp166
	andl	$-17, %edx	#, tmp167
	movb	%dl, 62(%rax)	# tmp167,
	.loc 1 1174 0
	movq	-56(%rbp), %rax	# rli, tmp168
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	96(%rax), %rax	# _63->type.name, D.14381
	testq	%rax, %rax	# D.14381
	je	.L161	#,
.LBB11:
	.loc 1 1178 0
	movq	-56(%rbp), %rax	# rli, tmp169
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	96(%rax), %rax	# _65->type.name, D.14381
	movzbl	16(%rax), %eax	# _66->common.code, D.14384
	cmpb	$1, %al	#, D.14384
	jne	.L162	#,
	.loc 1 1179 0
	movq	-56(%rbp), %rax	# rli, tmp170
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	96(%rax), %rax	# _68->type.name, D.14381
	movq	32(%rax), %rax	# _69->identifier.id.str, tmp171
	movq	%rax, -40(%rbp)	# tmp171, name
	jmp	.L164	#
.L162:
	.loc 1 1181 0
	movq	-56(%rbp), %rax	# rli, tmp172
	movq	(%rax), %rax	# rli_3(D)->t, D.14381
	movq	96(%rax), %rax	# _71->type.name, D.14381
	movq	72(%rax), %rax	# _72->decl.name, D.14381
	movq	32(%rax), %rax	# _73->identifier.id.str, tmp173
	movq	%rax, -40(%rbp)	# tmp173, name
.L164:
	.loc 1 1186 0
	movq	-40(%rbp), %rax	# name, tmp174
	movq	%rax, %rsi	# tmp174,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.LBE11:
	jmp	.L156	#
.L161:
	.loc 1 1193 0
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L156:
.LBE10:
	.loc 1 1197 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	finalize_record_size, .-finalize_record_size
	.globl	compute_record_mode
	.type	compute_record_mode, @function
compute_record_mode:
.LFB29:
	.loc 1 1204 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# type, type
	.loc 1 1206 0
	movl	$0, -36(%rbp)	#, mode
	.loc 1 1212 0
	movq	-56(%rbp), %rax	# type, tmp106
	movzbl	61(%rax), %edx	#, tmp109
	andl	$1, %edx	#, tmp110
	orl	$102, %edx	#, tmp111
	movb	%dl, 61(%rax)	# tmp111,
	.loc 1 1214 0
	movq	-56(%rbp), %rax	# type, tmp112
	movq	32(%rax), %rax	# type_8(D)->type.size, D.14387
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14387,
	call	host_integerp	#
	testl	%eax, %eax	# D.14388
	jne	.L166	#,
	.loc 1 1215 0
	jmp	.L165	#
.L166:
	.loc 1 1220 0
	movq	-56(%rbp), %rax	# type, tmp113
	movq	24(%rax), %rax	# type_8(D)->type.values, tmp114
	movq	%rax, -32(%rbp)	# tmp114, field
	jmp	.L168	#
.L181:
.LBB12:
	.loc 1 1224 0
	movq	-32(%rbp), %rax	# field, tmp115
	movzbl	16(%rax), %eax	# field_1->common.code, D.14389
	cmpb	$37, %al	#, D.14389
	je	.L169	#,
	.loc 1 1225 0
	jmp	.L170	#
.L169:
	.loc 1 1227 0
	movq	-32(%rbp), %rax	# field, tmp116
	movq	8(%rax), %rax	# field_1->common.type, D.14387
	movzbl	16(%rax), %eax	# _13->common.code, D.14389
	testb	%al, %al	# D.14389
	je	.L171	#,
	.loc 1 1228 0
	movq	-32(%rbp), %rax	# field, tmp117
	movq	8(%rax), %rax	# field_1->common.type, D.14387
	movzbl	61(%rax), %eax	# *_15, D.14389
	andl	$-2, %eax	#, D.14389
	cmpb	$102, %al	#, D.14389
	jne	.L172	#,
	.loc 1 1229 0
	movq	-32(%rbp), %rax	# field, tmp118
	movq	8(%rax), %rax	# field_1->common.type, D.14387
	movzbl	62(%rax), %eax	# *_18, D.14389
	andl	$2, %eax	#, D.14389
	testb	%al, %al	# D.14389
	je	.L171	#,
.L172:
	.loc 1 1230 0
	movq	-32(%rbp), %rax	# field, tmp119
	movq	%rax, %rdi	# tmp119,
	call	bit_position	#
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14387,
	call	host_integerp	#
	testl	%eax, %eax	# D.14388
	je	.L171	#,
	.loc 1 1231 0
	movq	-32(%rbp), %rax	# field, tmp120
	movq	40(%rax), %rax	# field_1->decl.size, D.14387
	testq	%rax, %rax	# D.14387
	je	.L171	#,
	.loc 1 1232 0
	movq	-32(%rbp), %rax	# field, tmp121
	movq	40(%rax), %rax	# field_1->decl.size, D.14387
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14387,
	call	host_integerp	#
	testl	%eax, %eax	# D.14388
	jne	.L173	#,
.L171:
	.loc 1 1233 0
	jmp	.L165	#
.L173:
	.loc 1 1235 0
	movq	-32(%rbp), %rax	# field, tmp122
	movq	%rax, %rdi	# tmp122,
	call	int_bit_position	#
	movq	%rax, -24(%rbp)	# D.14390, bitpos
	.loc 1 1239 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.48
	andl	$33554432, %eax	#, D.14388
	testl	%eax, %eax	# D.14388
	je	.L174	#,
	.loc 1 1239 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.47
	jmp	.L175	#
.L174:
	.loc 1 1239 0 discriminator 2
	movl	$32, %ebx	#, iftmp.47
.L175:
	.loc 1 1239 0 discriminator 3
	movq	-24(%rbp), %rax	# bitpos, tmp125
	movl	$0, %edx	#, tmp124
	divq	%rbx	# iftmp.47
	movq	%rax, %rbx	# tmp123, D.14391
	.loc 1 1240 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# field, tmp126
	movq	40(%rax), %rax	# field_1->decl.size, D.14387
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14387,
	call	tree_low_cst	#
	movq	%rax, %rdx	# D.14390, D.14391
	movq	-24(%rbp), %rax	# bitpos, tmp127
	addq	%rdx, %rax	# D.14391, D.14391
	subq	$1, %rax	#, D.14391
	.loc 1 1241 0 discriminator 3
	movl	target_flags(%rip), %edx	# target_flags, target_flags.50
	andl	$33554432, %edx	#, D.14388
	testl	%edx, %edx	# D.14388
	je	.L176	#,
	.loc 1 1241 0 is_stmt 0 discriminator 1
	movl	$64, %ecx	#, iftmp.49
	jmp	.L177	#
.L176:
	.loc 1 1241 0 discriminator 2
	movl	$32, %ecx	#, iftmp.49
.L177:
	.loc 1 1241 0 discriminator 3
	movl	$0, %edx	#, tmp129
	divq	%rcx	# iftmp.49
	.loc 1 1239 0 is_stmt 1 discriminator 3
	cmpq	%rax, %rbx	# D.14391, D.14391
	je	.L178	#,
	.loc 1 1243 0
	movq	-32(%rbp), %rax	# field, tmp130
	movq	40(%rax), %rax	# field_1->decl.size, D.14387
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14387,
	call	tree_low_cst	#
	movl	target_flags(%rip), %edx	# target_flags, target_flags.52
	andl	$33554432, %edx	#, D.14388
	testl	%edx, %edx	# D.14388
	je	.L179	#,
	.loc 1 1243 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.51
	jmp	.L180	#
.L179:
	.loc 1 1243 0 discriminator 2
	movl	$32, %ebx	#, iftmp.51
.L180:
	.loc 1 1243 0 discriminator 3
	cqto
	idivq	%rbx	# iftmp.51
	movq	%rdx, %rcx	# tmp131, tmp131
	movq	%rcx, %rax	# tmp131, D.14390
	testq	%rax, %rax	# D.14390
	je	.L178	#,
	.loc 1 1244 0 is_stmt 1
	jmp	.L165	#
.L178:
	.loc 1 1249 0
	movq	-32(%rbp), %rax	# field, tmp133
	movq	40(%rax), %rdx	# field_1->decl.size, D.14387
	movq	-56(%rbp), %rax	# type, tmp134
	movq	32(%rax), %rax	# type_8(D)->type.size, D.14387
	movq	%rdx, %rsi	# D.14387,
	movq	%rax, %rdi	# D.14387,
	call	simple_cst_equal	#
	testl	%eax, %eax	# D.14388
	je	.L170	#,
	.loc 1 1250 0
	movq	-32(%rbp), %rax	# field, tmp135
	movzbl	48(%rax), %eax	# field_1->decl.mode, D.14389
	movzbl	%al, %eax	# D.14389, tmp136
	movl	%eax, -36(%rbp)	# tmp136, mode
.L170:
.LBE12:
	.loc 1 1220 0
	movq	-32(%rbp), %rax	# field, tmp137
	movq	(%rax), %rax	# field_1->common.chain, tmp138
	movq	%rax, -32(%rbp)	# tmp138, field
.L168:
	.loc 1 1220 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, field
	jne	.L181	#,
	.loc 1 1272 0 is_stmt 1
	movq	-56(%rbp), %rax	# type, tmp139
	movzbl	16(%rax), %eax	# type_8(D)->common.code, D.14389
	cmpb	$20, %al	#, D.14389
	jne	.L182	#,
	.loc 1 1272 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, mode
	je	.L182	#,
	.loc 1 1273 0 is_stmt 1
	movl	-36(%rbp), %eax	# mode, tmp140
	andl	$127, %eax	#, D.14392
	movl	%eax, %edx	# D.14392, D.14392
	movq	-56(%rbp), %rax	# type, tmp141
	leal	(%rdx,%rdx), %ecx	#, tmp143
	movzbl	61(%rax), %edx	#, tmp144
	andl	$1, %edx	#, tmp145
	orl	%ecx, %edx	# tmp143, tmp146
	movb	%dl, 61(%rax)	# tmp146,
	jmp	.L165	#
.L182:
	.loc 1 1275 0
	movq	-56(%rbp), %rax	# type, tmp147
	movq	32(%rax), %rax	# type_8(D)->type.size, D.14387
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14387,
	call	mode_for_size_tree	#
	andl	$127, %eax	#, D.14392
	movl	%eax, %edx	# D.14392, D.14392
	movq	-56(%rbp), %rax	# type, tmp148
	leal	(%rdx,%rdx), %ecx	#, tmp150
	movzbl	61(%rax), %edx	#, tmp151
	andl	$1, %edx	#, tmp152
	orl	%ecx, %edx	# tmp150, tmp153
	movb	%dl, 61(%rax)	# tmp153,
.L165:
	.loc 1 1289 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	compute_record_mode, .-compute_record_mode
	.type	finalize_type_size, @function
finalize_type_size:
.LFB30:
	.loc 1 1297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# type, type
	.loc 1 1303 0
	movq	-56(%rbp), %rax	# type, tmp105
	movzbl	61(%rax), %eax	# *type_2(D), D.14396
	andl	$-2, %eax	#, D.14396
	cmpb	$102, %al	#, D.14396
	je	.L185	#,
	.loc 1 1303 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# type, tmp106
	movzbl	61(%rax), %eax	# *type_2(D), D.14396
	andl	$-2, %eax	#, D.14396
	testb	%al, %al	# D.14396
	je	.L185	#,
	.loc 1 1305 0 is_stmt 1
	movq	-56(%rbp), %rax	# type, tmp107
	movzbl	16(%rax), %eax	# type_2(D)->common.code, D.14396
	.loc 1 1304 0
	cmpb	$20, %al	#, D.14396
	je	.L185	#,
	.loc 1 1305 0
	movq	-56(%rbp), %rax	# type, tmp108
	movzbl	16(%rax), %eax	# type_2(D)->common.code, D.14396
	cmpb	$21, %al	#, D.14396
	je	.L185	#,
	.loc 1 1306 0
	movq	-56(%rbp), %rax	# type, tmp109
	movzbl	16(%rax), %eax	# type_2(D)->common.code, D.14396
	cmpb	$22, %al	#, D.14396
	je	.L185	#,
	.loc 1 1307 0
	movq	-56(%rbp), %rax	# type, tmp110
	movzbl	16(%rax), %eax	# type_2(D)->common.code, D.14396
	.loc 1 1305 0
	cmpb	$18, %al	#, D.14396
	je	.L185	#,
	.loc 1 1309 0
	movq	-56(%rbp), %rax	# type, tmp111
	movzbl	61(%rax), %eax	# *type_2(D), tmp114
	shrb	%al	# D.14397
	movzbl	%al, %eax	# D.14397, D.14398
	movl	%eax, %edi	# D.14398,
	call	get_mode_alignment	#
	movq	-56(%rbp), %rdx	# type, tmp115
	movl	%eax, 64(%rdx)	# D.14399, type_2(D)->type.align
	.loc 1 1310 0
	movq	-56(%rbp), %rax	# type, tmp116
	movzbl	63(%rax), %edx	#, tmp119
	andl	$127, %edx	#, tmp120
	movb	%dl, 63(%rax)	# tmp120,
.L185:
	.loc 1 1321 0
	movq	-56(%rbp), %rax	# type, tmp121
	movq	40(%rax), %rax	# type_2(D)->type.size_unit, D.14400
	testq	%rax, %rax	# D.14400
	jne	.L186	#,
	.loc 1 1321 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# type, tmp122
	movq	32(%rax), %rax	# type_2(D)->type.size, D.14400
	testq	%rax, %rax	# D.14400
	je	.L186	#,
	.loc 1 1326 0 is_stmt 1
	movq	global_trees+152(%rip), %rdx	# global_trees, D.14400
	movq	-56(%rbp), %rax	# type, tmp123
	movq	32(%rax), %rax	# type_2(D)->type.size, D.14400
	movq	%rax, %rsi	# D.14400,
	movl	$64, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.14400
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14400
	movq	%rdx, %rsi	# D.14400,
	movq	%rax, %rdi	# D.14400,
	call	convert	#
	movq	-56(%rbp), %rdx	# type, tmp124
	movq	%rax, 40(%rdx)	# D.14400, type_2(D)->type.size_unit
.L186:
	.loc 1 1330 0
	movq	-56(%rbp), %rax	# type, tmp125
	movq	32(%rax), %rax	# type_2(D)->type.size, D.14400
	testq	%rax, %rax	# D.14400
	je	.L187	#,
	.loc 1 1339 0
	movq	-56(%rbp), %rax	# type, tmp126
	movl	64(%rax), %eax	# type_2(D)->type.align, D.14399
	movl	%eax, %edx	# D.14399, D.14401
	movq	-56(%rbp), %rax	# type, tmp127
	movq	32(%rax), %rax	# type_2(D)->type.size, D.14400
	movl	%edx, %esi	# D.14401,
	movq	%rax, %rdi	# D.14400,
	call	round_up	#
	movq	-56(%rbp), %rdx	# type, tmp128
	movq	%rax, 32(%rdx)	# D.14400, type_2(D)->type.size
	.loc 1 1341 0
	movq	-56(%rbp), %rax	# type, tmp129
	movl	64(%rax), %eax	# type_2(D)->type.align, D.14399
	shrl	$3, %eax	#, D.14399
	movl	%eax, %edx	# D.14399, D.14401
	movq	-56(%rbp), %rax	# type, tmp130
	movq	40(%rax), %rax	# type_2(D)->type.size_unit, D.14400
	movl	%edx, %esi	# D.14401,
	movq	%rax, %rdi	# D.14400,
	call	round_up	#
	movq	-56(%rbp), %rdx	# type, tmp131
	movq	%rax, 40(%rdx)	# D.14400, type_2(D)->type.size_unit
.L187:
	.loc 1 1346 0
	movq	-56(%rbp), %rax	# type, tmp132
	movq	32(%rax), %rax	# type_2(D)->type.size, D.14400
	testq	%rax, %rax	# D.14400
	je	.L188	#,
	.loc 1 1346 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# type, tmp133
	movq	32(%rax), %rax	# type_2(D)->type.size, D.14400
	movzbl	16(%rax), %eax	# _32->common.code, D.14396
	cmpb	$25, %al	#, D.14396
	je	.L188	#,
	.loc 1 1347 0 is_stmt 1
	movq	-56(%rbp), %rax	# type, tmp134
	movq	32(%rax), %rax	# type_2(D)->type.size, D.14400
	movq	%rax, %rdi	# D.14400,
	call	variable_size	#
	movq	-56(%rbp), %rdx	# type, tmp135
	movq	%rax, 32(%rdx)	# D.14400, type_2(D)->type.size
.L188:
	.loc 1 1348 0
	movq	-56(%rbp), %rax	# type, tmp136
	movq	40(%rax), %rax	# type_2(D)->type.size_unit, D.14400
	testq	%rax, %rax	# D.14400
	je	.L189	#,
	.loc 1 1349 0
	movq	-56(%rbp), %rax	# type, tmp137
	movq	40(%rax), %rax	# type_2(D)->type.size_unit, D.14400
	movzbl	16(%rax), %eax	# _37->common.code, D.14396
	cmpb	$25, %al	#, D.14396
	je	.L189	#,
	.loc 1 1350 0
	movq	-56(%rbp), %rax	# type, tmp138
	movq	40(%rax), %rax	# type_2(D)->type.size_unit, D.14400
	movq	%rax, %rdi	# D.14400,
	call	variable_size	#
	movq	-56(%rbp), %rdx	# type, tmp139
	movq	%rax, 40(%rdx)	# D.14400, type_2(D)->type.size_unit
.L189:
	.loc 1 1353 0
	movq	-56(%rbp), %rax	# type, tmp140
	movq	120(%rax), %rax	# type_2(D)->type.next_variant, D.14400
	testq	%rax, %rax	# D.14400
	jne	.L190	#,
	.loc 1 1354 0
	movq	-56(%rbp), %rax	# type, tmp141
	movq	128(%rax), %rax	# type_2(D)->type.main_variant, D.14400
	cmpq	-56(%rbp), %rax	# type, D.14400
	je	.L184	#,
.L190:
.LBB13:
	.loc 1 1358 0
	movq	-56(%rbp), %rax	# type, tmp142
	movq	32(%rax), %rax	# type_2(D)->type.size, tmp143
	movq	%rax, -16(%rbp)	# tmp143, size
	.loc 1 1359 0
	movq	-56(%rbp), %rax	# type, tmp144
	movq	40(%rax), %rax	# type_2(D)->type.size_unit, tmp145
	movq	%rax, -8(%rbp)	# tmp145, size_unit
	.loc 1 1360 0
	movq	-56(%rbp), %rax	# type, tmp146
	movl	64(%rax), %eax	# type_2(D)->type.align, tmp147
	movl	%eax, -36(%rbp)	# tmp147, align
	.loc 1 1361 0
	movq	-56(%rbp), %rax	# type, tmp148
	movzbl	63(%rax), %eax	# *type_2(D), tmp151
	shrb	$7, %al	#, D.14402
	movzbl	%al, %eax	# D.14402, tmp152
	movl	%eax, -32(%rbp)	# tmp152, user_align
	.loc 1 1362 0
	movq	-56(%rbp), %rax	# type, tmp153
	movzbl	61(%rax), %eax	# *type_2(D), tmp156
	shrb	%al	# D.14397
	movzbl	%al, %eax	# D.14397, tmp157
	movl	%eax, -28(%rbp)	# tmp157, mode
	.loc 1 1365 0
	movq	-56(%rbp), %rax	# type, tmp158
	movq	128(%rax), %rax	# type_2(D)->type.main_variant, tmp159
	movq	%rax, -24(%rbp)	# tmp159, variant
	jmp	.L192	#
.L193:
	.loc 1 1369 0
	movq	-24(%rbp), %rax	# variant, tmp160
	movq	-16(%rbp), %rdx	# size, tmp161
	movq	%rdx, 32(%rax)	# tmp161, variant_1->type.size
	.loc 1 1370 0
	movq	-24(%rbp), %rax	# variant, tmp162
	movq	-8(%rbp), %rdx	# size_unit, tmp163
	movq	%rdx, 40(%rax)	# tmp163, variant_1->type.size_unit
	.loc 1 1371 0
	movq	-24(%rbp), %rax	# variant, tmp164
	movl	-36(%rbp), %edx	# align, tmp165
	movl	%edx, 64(%rax)	# tmp165, variant_1->type.align
	.loc 1 1372 0
	movl	-32(%rbp), %eax	# user_align, tmp166
	andl	$1, %eax	#, D.14402
	movl	%eax, %edx	# D.14402, D.14402
	movq	-24(%rbp), %rax	# variant, tmp167
	movl	%edx, %ecx	# D.14402, tmp169
	sall	$7, %ecx	#, tmp169
	movzbl	63(%rax), %edx	#, tmp170
	andl	$127, %edx	#, tmp171
	orl	%ecx, %edx	# tmp169, tmp172
	movb	%dl, 63(%rax)	# tmp172,
	.loc 1 1373 0
	movl	-28(%rbp), %eax	# mode, tmp173
	andl	$127, %eax	#, D.14397
	movl	%eax, %edx	# D.14397, D.14397
	movq	-24(%rbp), %rax	# variant, tmp174
	leal	(%rdx,%rdx), %ecx	#, tmp176
	movzbl	61(%rax), %edx	#, tmp177
	andl	$1, %edx	#, tmp178
	orl	%ecx, %edx	# tmp176, tmp179
	movb	%dl, 61(%rax)	# tmp179,
	.loc 1 1367 0
	movq	-24(%rbp), %rax	# variant, tmp180
	movq	120(%rax), %rax	# variant_1->type.next_variant, tmp181
	movq	%rax, -24(%rbp)	# tmp181, variant
.L192:
	.loc 1 1365 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, variant
	jne	.L193	#,
.L184:
.LBE13:
	.loc 1 1376 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	finalize_type_size, .-finalize_type_size
	.globl	finish_record_layout
	.type	finish_record_layout, @function
finish_record_layout:
.LFB31:
	.loc 1 1385 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# rli, rli
	.loc 1 1387 0
	movq	-8(%rbp), %rax	# rli, tmp66
	movq	%rax, %rdi	# tmp66,
	call	finalize_record_size	#
	.loc 1 1390 0
	movq	-8(%rbp), %rax	# rli, tmp67
	movq	(%rax), %rax	# rli_1(D)->t, D.14403
	movq	%rax, %rdi	# D.14403,
	call	compute_record_mode	#
	.loc 1 1393 0
	movq	-8(%rbp), %rax	# rli, tmp68
	movq	(%rax), %rax	# rli_1(D)->t, D.14403
	movq	%rax, %rdi	# D.14403,
	call	finalize_type_size	#
	.loc 1 1397 0
	jmp	.L195	#
.L196:
	.loc 1 1399 0
	movq	-8(%rbp), %rax	# rli, tmp69
	movq	56(%rax), %rax	# rli_1(D)->pending_statics, D.14403
	movq	32(%rax), %rax	# _5->list.value, D.14403
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14403,
	call	layout_decl	#
	.loc 1 1400 0
	movq	-8(%rbp), %rax	# rli, tmp70
	movq	56(%rax), %rax	# rli_1(D)->pending_statics, D.14403
	movq	(%rax), %rdx	# _7->common.chain, D.14403
	movq	-8(%rbp), %rax	# rli, tmp71
	movq	%rdx, 56(%rax)	# D.14403, rli_1(D)->pending_statics
.L195:
	.loc 1 1397 0 discriminator 1
	movq	-8(%rbp), %rax	# rli, tmp72
	movq	56(%rax), %rax	# rli_1(D)->pending_statics, D.14403
	testq	%rax, %rax	# D.14403
	jne	.L196	#,
	.loc 1 1404 0
	movq	-8(%rbp), %rax	# rli, tmp73
	movq	%rax, %rdi	# tmp73,
	call	free	#
	.loc 1 1405 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	finish_record_layout, .-finish_record_layout
	.globl	layout_type
	.type	layout_type, @function
layout_type:
.LFB32:
	.loc 1 1420 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -120(%rbp)	# type, type
	.loc 1 1421 0
	cmpq	$0, -120(%rbp)	#, type
	jne	.L198	#,
	.loc 1 1422 0
	movl	$__FUNCTION__.12411, %edx	#,
	movl	$1422, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L198:
	.loc 1 1425 0
	movq	-120(%rbp), %rax	# type, tmp294
	movq	32(%rax), %rax	# type_18(D)->type.size, D.14404
	testq	%rax, %rax	# D.14404
	je	.L199	#,
	.loc 1 1426 0
	jmp	.L197	#
.L199:
	.loc 1 1428 0
	movq	-120(%rbp), %rax	# type, tmp295
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	movzbl	%al, %eax	# D.14405, D.14406
	subl	$5, %eax	#, tmp296
	cmpl	$19, %eax	#, tmp296
	ja	.L201	#,
	movl	%eax, %eax	# tmp296, tmp297
	movq	.L203(,%rax,8), %rax	#, tmp298
	jmp	*%rax	# tmp298
	.section	.rodata
	.align 8
	.align 4
.L203:
	.quad	.L202
	.quad	.L204
	.quad	.L205
	.quad	.L206
	.quad	.L207
	.quad	.L204
	.quad	.L208
	.quad	.L204
	.quad	.L209
	.quad	.L210
	.quad	.L209
	.quad	.L211
	.quad	.L212
	.quad	.L213
	.quad	.L214
	.quad	.L215
	.quad	.L215
	.quad	.L215
	.quad	.L211
	.quad	.L216
	.text
.L216:
	.loc 1 1433 0
	movl	$__FUNCTION__.12411, %edx	#,
	movl	$1433, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L208:
	.loc 1 1436 0
	movq	-120(%rbp), %rax	# type, tmp299
	movzwl	60(%rax), %eax	# *type_18(D), D.14407
	andw	$511, %ax	#, D.14407
	testw	%ax, %ax	# D.14407
	jne	.L204	#,
	.loc 1 1437 0
	movq	-120(%rbp), %rax	# type, tmp300
	movzwl	60(%rax), %edx	# type_18(D)->type.precision, tmp303
	andw	$-512, %dx	#, tmp304
	orl	$1, %edx	#, tmp305
	movw	%dx, 60(%rax)	# tmp305, type_18(D)->type.precision
.L204:
	.loc 1 1444 0
	movq	-120(%rbp), %rax	# type, tmp306
	movq	104(%rax), %rax	# type_18(D)->type.minval, D.14404
	movzbl	16(%rax), %eax	# _24->common.code, D.14405
	cmpb	$25, %al	#, D.14405
	jne	.L217	#,
	.loc 1 1445 0
	movq	-120(%rbp), %rax	# type, tmp307
	movq	104(%rax), %rax	# type_18(D)->type.minval, D.14404
	movq	%rax, %rdi	# D.14404,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.14408
	js	.L217	#,
	.loc 1 1446 0
	movq	-120(%rbp), %rax	# type, tmp308
	movzbl	17(%rax), %edx	#, tmp311
	orl	$32, %edx	#, tmp312
	movb	%dl, 17(%rax)	# tmp312,
.L217:
	.loc 1 1448 0
	movq	-120(%rbp), %rax	# type, tmp313
	movzwl	60(%rax), %eax	# *type_18(D), tmp316
	andw	$511, %ax	#, D.14409
	movzwl	%ax, %eax	# D.14409, D.14406
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.14406,
	call	smallest_mode_for_size	#
	andl	$127, %eax	#, D.14411
	movl	%eax, %edx	# D.14411, D.14411
	movq	-120(%rbp), %rax	# type, tmp317
	leal	(%rdx,%rdx), %ecx	#, tmp319
	movzbl	61(%rax), %edx	#, tmp320
	andl	$1, %edx	#, tmp321
	orl	%ecx, %edx	# tmp319, tmp322
	movb	%dl, 61(%rax)	# tmp322,
	.loc 1 1450 0
	movq	-120(%rbp), %rax	# type, tmp323
	movzbl	61(%rax), %eax	# *type_18(D), tmp326
	shrb	%al	# D.14411
	movzbl	%al, %eax	# D.14411, D.14408
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14407
	movzwl	%ax, %eax	# D.14407, D.14412
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp328
	movq	%rax, 32(%rdx)	# D.14404, type_18(D)->type.size
	.loc 1 1451 0
	movq	-120(%rbp), %rax	# type, tmp329
	movzbl	61(%rax), %eax	# *type_18(D), tmp332
	shrb	%al	# D.14411
	movzbl	%al, %eax	# D.14411, D.14408
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14405
	movzbl	%al, %eax	# D.14405, D.14412
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp334
	movq	%rax, 40(%rdx)	# D.14404, type_18(D)->type.size_unit
	.loc 1 1452 0
	jmp	.L218	#
.L205:
	.loc 1 1455 0
	movq	-120(%rbp), %rax	# type, tmp335
	movzwl	60(%rax), %eax	# *type_18(D), tmp338
	andw	$511, %ax	#, D.14409
	movzwl	%ax, %eax	# D.14409, D.14406
	movl	$0, %edx	#,
	movl	$2, %esi	#,
	movl	%eax, %edi	# D.14406,
	call	mode_for_size	#
	andl	$127, %eax	#, D.14411
	movl	%eax, %edx	# D.14411, D.14411
	movq	-120(%rbp), %rax	# type, tmp339
	leal	(%rdx,%rdx), %ecx	#, tmp341
	movzbl	61(%rax), %edx	#, tmp342
	andl	$1, %edx	#, tmp343
	orl	%ecx, %edx	# tmp341, tmp344
	movb	%dl, 61(%rax)	# tmp344,
	.loc 1 1456 0
	movq	-120(%rbp), %rax	# type, tmp345
	movzbl	61(%rax), %eax	# *type_18(D), tmp348
	shrb	%al	# D.14411
	movzbl	%al, %eax	# D.14411, D.14408
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14407
	movzwl	%ax, %eax	# D.14407, D.14412
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp350
	movq	%rax, 32(%rdx)	# D.14404, type_18(D)->type.size
	.loc 1 1457 0
	movq	-120(%rbp), %rax	# type, tmp351
	movzbl	61(%rax), %eax	# *type_18(D), tmp354
	shrb	%al	# D.14411
	movzbl	%al, %eax	# D.14411, D.14408
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14405
	movzbl	%al, %eax	# D.14405, D.14412
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp356
	movq	%rax, 40(%rdx)	# D.14404, type_18(D)->type.size_unit
	.loc 1 1458 0
	jmp	.L218	#
.L206:
	.loc 1 1461 0
	movq	-120(%rbp), %rax	# type, tmp357
	movq	8(%rax), %rax	# type_18(D)->common.type, D.14404
	movzbl	17(%rax), %eax	# *_58, tmp360
	shrb	$5, %al	#, D.14413
	andl	$1, %eax	#, D.14413
	movq	-120(%rbp), %rdx	# type, tmp361
	andl	$1, %eax	#, tmp363
	sall	$5, %eax	#, tmp364
	movl	%eax, %ecx	# tmp364, tmp364
	movzbl	17(%rdx), %eax	#, tmp365
	andl	$-33, %eax	#, tmp366
	orl	%ecx, %eax	# tmp364, tmp367
	movb	%al, 17(%rdx)	# tmp367,
	.loc 1 1464 0
	movq	-120(%rbp), %rax	# type, tmp368
	movq	8(%rax), %rax	# type_18(D)->common.type, D.14404
	movzbl	16(%rax), %eax	# _60->common.code, D.14405
	.loc 1 1463 0
	cmpb	$6, %al	#, D.14405
	jne	.L219	#,
	.loc 1 1463 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.53
	jmp	.L220	#
.L219:
	.loc 1 1463 0 discriminator 2
	movl	$6, %eax	#, iftmp.53
.L220:
	.loc 1 1463 0 discriminator 3
	movq	-120(%rbp), %rdx	# type, tmp369
	movq	8(%rdx), %rdx	# type_18(D)->common.type, D.14404
	movzwl	60(%rdx), %edx	# *_64, tmp372
	andw	$511, %dx	#, D.14409
	movzwl	%dx, %edx	# D.14409, D.14408
	addl	%edx, %edx	# D.14408
	movl	%edx, %ecx	# D.14408, D.14406
	movl	$0, %edx	#,
	movl	%eax, %esi	# iftmp.53,
	movl	%ecx, %edi	# D.14406,
	call	mode_for_size	#
	andl	$127, %eax	#, D.14411
	movl	%eax, %edx	# D.14411, D.14411
	movq	-120(%rbp), %rax	# type, tmp373
	leal	(%rdx,%rdx), %ecx	#, tmp375
	movzbl	61(%rax), %edx	#, tmp376
	andl	$1, %edx	#, tmp377
	orl	%ecx, %edx	# tmp375, tmp378
	movb	%dl, 61(%rax)	# tmp378,
	.loc 1 1467 0 is_stmt 1 discriminator 3
	movq	-120(%rbp), %rax	# type, tmp379
	movzbl	61(%rax), %eax	# *type_18(D), tmp382
	shrb	%al	# D.14411
	movzbl	%al, %eax	# D.14411, D.14408
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14407
	movzwl	%ax, %eax	# D.14407, D.14412
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp384
	movq	%rax, 32(%rdx)	# D.14404, type_18(D)->type.size
	.loc 1 1468 0 discriminator 3
	movq	-120(%rbp), %rax	# type, tmp385
	movzbl	61(%rax), %eax	# *type_18(D), tmp388
	shrb	%al	# D.14411
	movzbl	%al, %eax	# D.14411, D.14408
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14405
	movzbl	%al, %eax	# D.14405, D.14412
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp390
	movq	%rax, 40(%rdx)	# D.14404, type_18(D)->type.size_unit
	.loc 1 1469 0 discriminator 3
	jmp	.L218	#
.L207:
.LBB14:
	.loc 1 1475 0
	movq	-120(%rbp), %rax	# type, tmp391
	movq	8(%rax), %rax	# type_18(D)->common.type, tmp392
	movq	%rax, -72(%rbp)	# tmp392, subtype
	.loc 1 1476 0
	movq	-72(%rbp), %rax	# subtype, tmp393
	movzbl	17(%rax), %eax	# *subtype_82, tmp396
	shrb	$5, %al	#, D.14413
	andl	$1, %eax	#, D.14413
	movq	-120(%rbp), %rdx	# type, tmp397
	andl	$1, %eax	#, tmp399
	sall	$5, %eax	#, tmp400
	movl	%eax, %ecx	# tmp400, tmp400
	movzbl	17(%rdx), %eax	#, tmp401
	andl	$-33, %eax	#, tmp402
	orl	%ecx, %eax	# tmp400, tmp403
	movb	%al, 17(%rdx)	# tmp403,
	.loc 1 1477 0
	movq	-120(%rbp), %rax	# type, tmp404
	movzbl	61(%rax), %eax	# *type_18(D), tmp407
	shrb	%al	# D.14411
	movzbl	%al, %eax	# D.14411, D.14408
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14407
	movzwl	%ax, %eax	# D.14407, D.14412
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp409
	movq	%rax, 32(%rdx)	# D.14404, type_18(D)->type.size
	.loc 1 1478 0
	movq	-120(%rbp), %rax	# type, tmp410
	movzbl	61(%rax), %eax	# *type_18(D), tmp413
	shrb	%al	# D.14411
	movzbl	%al, %eax	# D.14411, D.14408
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14405
	movzbl	%al, %eax	# D.14405, D.14412
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp415
	movq	%rax, 40(%rdx)	# D.14404, type_18(D)->type.size_unit
.LBE14:
	.loc 1 1480 0
	jmp	.L218	#
.L202:
	.loc 1 1484 0
	movq	-120(%rbp), %rax	# type, tmp416
	movl	$1, 64(%rax)	#, type_18(D)->type.align
	.loc 1 1485 0
	movq	-120(%rbp), %rax	# type, tmp417
	movzbl	63(%rax), %edx	#, tmp420
	andl	$127, %edx	#, tmp421
	movb	%dl, 63(%rax)	# tmp421,
	.loc 1 1486 0
	movq	-120(%rbp), %rax	# type, tmp422
	movzbl	61(%rax), %edx	#, tmp425
	andl	$1, %edx	#, tmp426
	movb	%dl, 61(%rax)	# tmp426,
	.loc 1 1487 0
	jmp	.L218	#
.L210:
	.loc 1 1490 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.55
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L221	#,
	.loc 1 1490 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.54
	jmp	.L222	#
.L221:
	.loc 1 1490 0 discriminator 2
	movl	$32, %eax	#, iftmp.54
.L222:
	.loc 1 1490 0 discriminator 3
	movl	$3, %esi	#,
	movq	%rax, %rdi	# iftmp.54,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp427
	movq	%rax, 32(%rdx)	# D.14404, type_18(D)->type.size
	.loc 1 1491 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.57
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L223	#,
	.loc 1 1491 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.56
	jmp	.L224	#
.L223:
	.loc 1 1491 0 discriminator 2
	movl	$4, %eax	#, iftmp.56
.L224:
	.loc 1 1491 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.56,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp428
	movq	%rax, 40(%rdx)	# D.14404, type_18(D)->type.size_unit
	.loc 1 1494 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.59
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L225	#,
	.loc 1 1494 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.58
	jmp	.L226	#
.L225:
	.loc 1 1494 0 discriminator 2
	movl	$32, %eax	#, iftmp.58
.L226:
	.loc 1 1494 0 discriminator 3
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# iftmp.58,
	call	mode_for_size	#
	andl	$127, %eax	#, D.14411
	movl	%eax, %edx	# D.14411, D.14411
	movq	-120(%rbp), %rax	# type, tmp429
	leal	(%rdx,%rdx), %ecx	#, tmp431
	movzbl	61(%rax), %edx	#, tmp432
	andl	$1, %edx	#, tmp433
	orl	%ecx, %edx	# tmp431, tmp434
	movb	%dl, 61(%rax)	# tmp434,
	.loc 1 1495 0 is_stmt 1 discriminator 3
	jmp	.L218	#
.L211:
	.loc 1 1499 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.61
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L227	#,
	.loc 1 1499 0 is_stmt 0 discriminator 1
	movl	$128, %eax	#, iftmp.60
	jmp	.L228	#
.L227:
	.loc 1 1499 0 discriminator 2
	movl	$64, %eax	#, iftmp.60
.L228:
	.loc 1 1499 0 discriminator 3
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# iftmp.60,
	call	mode_for_size	#
	andl	$127, %eax	#, D.14411
	movl	%eax, %edx	# D.14411, D.14411
	movq	-120(%rbp), %rax	# type, tmp435
	leal	(%rdx,%rdx), %ecx	#, tmp437
	movzbl	61(%rax), %edx	#, tmp438
	andl	$1, %edx	#, tmp439
	orl	%ecx, %edx	# tmp437, tmp440
	movb	%dl, 61(%rax)	# tmp440,
	.loc 1 1500 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.63
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L229	#,
	.loc 1 1500 0 is_stmt 0 discriminator 1
	movl	$128, %eax	#, iftmp.62
	jmp	.L230	#
.L229:
	.loc 1 1500 0 discriminator 2
	movl	$64, %eax	#, iftmp.62
.L230:
	.loc 1 1500 0 discriminator 3
	movl	$3, %esi	#,
	movq	%rax, %rdi	# iftmp.62,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp441
	movq	%rax, 32(%rdx)	# D.14404, type_18(D)->type.size
	.loc 1 1501 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.65
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L231	#,
	.loc 1 1501 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, iftmp.64
	jmp	.L232	#
.L231:
	.loc 1 1501 0 discriminator 2
	movl	$8, %eax	#, iftmp.64
.L232:
	.loc 1 1501 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.64,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp442
	movq	%rax, 40(%rdx)	# D.14404, type_18(D)->type.size_unit
	.loc 1 1502 0 is_stmt 1 discriminator 3
	jmp	.L218	#
.L209:
.LBB15:
	.loc 1 1507 0
	movq	-120(%rbp), %rax	# type, tmp443
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	.loc 1 1509 0
	cmpb	$15, %al	#, D.14405
	jne	.L233	#,
	.loc 1 1508 0
	movl	reference_types_internal(%rip), %eax	# reference_types_internal, reference_types_internal.67
	testl	%eax, %eax	# reference_types_internal.67
	je	.L233	#,
	.loc 1 1509 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.69
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L234	#,
	.loc 1 1509 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.68
	jmp	.L235	#
.L234:
	.loc 1 1509 0 discriminator 2
	movl	$4, %eax	#, iftmp.68
.L235:
	.loc 1 1509 0 discriminator 3
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14407
	movzwl	%ax, %eax	# D.14407, iftmp.66
	jmp	.L236	#
.L233:
	.loc 1 1509 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.71
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L237	#,
	movl	$64, %eax	#, iftmp.70
	jmp	.L236	#
.L237:
	.loc 1 1509 0 discriminator 2
	movl	$32, %eax	#, iftmp.70
.L236:
	.loc 1 1507 0 is_stmt 1
	movl	%eax, -104(%rbp)	# iftmp.66, nbits
	.loc 1 1511 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.74
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L239	#,
	.loc 1 1511 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.73
	jmp	.L240	#
.L239:
	.loc 1 1511 0 discriminator 2
	movl	$32, %eax	#, iftmp.73
.L240:
	.loc 1 1511 0 discriminator 3
	cmpl	-104(%rbp), %eax	# nbits, iftmp.73
	je	.L241	#,
	.loc 1 1511 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.76
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L242	#,
	.loc 1 1511 0 discriminator 3
	movl	$5, %eax	#, iftmp.75
	jmp	.L243	#
.L242:
	.loc 1 1511 0 discriminator 4
	movl	$4, %eax	#, iftmp.75
.L243:
	.loc 1 1511 0 discriminator 1
	movl	%eax, %edx	# iftmp.75, iftmp.72
	jmp	.L244	#
.L241:
	.loc 1 1511 0 discriminator 2
	movl	ptr_mode(%rip), %eax	# ptr_mode, ptr_mode.77
	andl	$127, %eax	#, iftmp.72
	movl	%eax, %edx	# iftmp.72, iftmp.72
.L244:
	.loc 1 1511 0 discriminator 5
	movq	-120(%rbp), %rax	# type, tmp445
	leal	(%rdx,%rdx), %ecx	#, tmp447
	movzbl	61(%rax), %edx	#, tmp448
	andl	$1, %edx	#, tmp449
	orl	%ecx, %edx	# tmp447, tmp450
	movb	%dl, 61(%rax)	# tmp450,
	.loc 1 1512 0 is_stmt 1 discriminator 5
	movl	-104(%rbp), %eax	# nbits, tmp451
	cltq
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp452
	movq	%rax, 32(%rdx)	# D.14404, type_18(D)->type.size
	.loc 1 1513 0 discriminator 5
	movl	-104(%rbp), %eax	# nbits, tmp453
	leal	7(%rax), %edx	#, tmp455
	testl	%eax, %eax	# tmp454
	cmovs	%edx, %eax	# tmp455,, tmp454
	sarl	$3, %eax	#, tmp456
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp457
	movq	%rax, 40(%rdx)	# D.14404, type_18(D)->type.size_unit
	.loc 1 1514 0 discriminator 5
	movq	-120(%rbp), %rax	# type, tmp458
	movzbl	17(%rax), %edx	#, tmp461
	orl	$32, %edx	#, tmp462
	movb	%dl, 17(%rax)	# tmp462,
	.loc 1 1515 0 discriminator 5
	movl	-104(%rbp), %eax	# nbits, tmp463
	andw	$511, %ax	#, D.14409
	movl	%eax, %edx	# D.14409, D.14409
	movq	-120(%rbp), %rax	# type, tmp464
	movl	%edx, %ecx	# D.14409, tmp466
	andw	$511, %cx	#, tmp466
	movzwl	60(%rax), %edx	# type_18(D)->type.precision, tmp467
	andw	$-512, %dx	#, tmp468
	orl	%ecx, %edx	# tmp466, tmp469
	movw	%dx, 60(%rax)	# tmp469, type_18(D)->type.precision
.LBE15:
	.loc 1 1517 0 discriminator 5
	jmp	.L218	#
.L213:
.LBB16:
	.loc 1 1521 0
	movq	-120(%rbp), %rax	# type, tmp470
	movq	24(%rax), %rax	# type_18(D)->type.values, tmp471
	movq	%rax, -64(%rbp)	# tmp471, index
	.loc 1 1522 0
	movq	-120(%rbp), %rax	# type, tmp472
	movq	8(%rax), %rax	# type_18(D)->common.type, tmp473
	movq	%rax, -56(%rbp)	# tmp473, element
	.loc 1 1524 0
	movq	-56(%rbp), %rax	# element, tmp474
	movq	%rax, %rdi	# tmp474,
	call	build_pointer_type	#
	.loc 1 1527 0
	cmpq	$0, -64(%rbp)	#, index
	je	.L245	#,
	.loc 1 1527 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# index, tmp475
	movq	112(%rax), %rax	# index_161->type.maxval, D.14404
	testq	%rax, %rax	# D.14404
	je	.L245	#,
	movq	-64(%rbp), %rax	# index, tmp476
	movq	104(%rax), %rax	# index_161->type.minval, D.14404
	testq	%rax, %rax	# D.14404
	je	.L245	#,
	.loc 1 1528 0 is_stmt 1
	movq	-56(%rbp), %rax	# element, tmp477
	movq	32(%rax), %rax	# element_162->type.size, D.14404
	testq	%rax, %rax	# D.14404
	je	.L245	#,
.LBB17:
	.loc 1 1530 0
	movq	-64(%rbp), %rax	# index, tmp478
	movq	112(%rax), %rax	# index_161->type.maxval, tmp479
	movq	%rax, -48(%rbp)	# tmp479, ub
	.loc 1 1531 0
	movq	-64(%rbp), %rax	# index, tmp480
	movq	104(%rax), %rax	# index_161->type.minval, tmp481
	movq	%rax, -40(%rbp)	# tmp481, lb
	.loc 1 1537 0
	movq	-40(%rbp), %rax	# lb, tmp482
	movq	8(%rax), %rax	# lb_167->common.type, D.14404
	movq	-40(%rbp), %rcx	# lb, tmp483
	movq	-48(%rbp), %rdx	# ub, tmp484
	movq	%rax, %rsi	# D.14404,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.14404,
	call	fold	#
	movq	%rax, %rdx	#, D.14404
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14404
	movq	%rdx, %rsi	# D.14404,
	movq	%rax, %rdi	# D.14404,
	call	convert	#
	movq	%rax, %rdx	#, D.14404
	movq	global_trees+128(%rip), %rax	# global_trees, D.14404
	movq	%rax, %rsi	# D.14404,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	%rax, -32(%rbp)	# tmp485, length
	.loc 1 1544 0
	movq	-56(%rbp), %rax	# element, tmp486
	movq	32(%rax), %rax	# element_162->type.size, tmp487
	movq	%rax, -88(%rbp)	# tmp487, element_size
	.loc 1 1545 0
	movq	-120(%rbp), %rax	# type, tmp488
	movzbl	62(%rax), %eax	# *type_18(D), D.14405
	andl	$16, %eax	#, D.14405
	testb	%al, %al	# D.14405
	je	.L246	#,
	.loc 1 1545 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# element, tmp489
	movzbl	16(%rax), %eax	# element_162->common.code, D.14405
	cmpb	$6, %al	#, D.14405
	je	.L247	#,
	movq	-56(%rbp), %rax	# element, tmp490
	movzbl	16(%rax), %eax	# element_162->common.code, D.14405
	cmpb	$10, %al	#, D.14405
	je	.L247	#,
	movq	-56(%rbp), %rax	# element, tmp491
	movzbl	16(%rax), %eax	# element_162->common.code, D.14405
	cmpb	$11, %al	#, D.14405
	je	.L247	#,
	movq	-56(%rbp), %rax	# element, tmp492
	movzbl	16(%rax), %eax	# element_162->common.code, D.14405
	cmpb	$12, %al	#, D.14405
	jne	.L246	#,
.L247:
	.loc 1 1546 0 is_stmt 1
	movq	-56(%rbp), %rax	# element, tmp493
	movq	112(%rax), %rax	# element_162->type.maxval, D.14404
	movq	%rax, %rdi	# D.14404,
	call	integer_zerop	#
	testl	%eax, %eax	# D.14408
	jne	.L248	#,
	.loc 1 1547 0
	movq	-56(%rbp), %rax	# element, tmp494
	movq	112(%rax), %rax	# element_162->type.maxval, D.14404
	movq	%rax, %rdi	# D.14404,
	call	integer_onep	#
	testl	%eax, %eax	# D.14408
	je	.L246	#,
.L248:
	.loc 1 1548 0
	movq	-56(%rbp), %rax	# element, tmp495
	movq	104(%rax), %rax	# element_162->type.minval, D.14404
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14404,
	call	host_integerp	#
	testl	%eax, %eax	# D.14408
	je	.L246	#,
.LBB18:
	.loc 1 1551 0
	movq	-56(%rbp), %rax	# element, tmp496
	movq	112(%rax), %rax	# element_162->type.maxval, D.14404
	.loc 1 1550 0
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14404,
	call	tree_low_cst	#
	movq	%rax, -24(%rbp)	# tmp497, maxvalue
	.loc 1 1553 0
	movq	-56(%rbp), %rax	# element, tmp498
	movq	104(%rax), %rax	# element_162->type.minval, D.14404
	.loc 1 1552 0
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14404,
	call	tree_low_cst	#
	movq	%rax, -16(%rbp)	# tmp499, minvalue
	.loc 1 1555 0
	movq	-16(%rbp), %rax	# minvalue, tmp500
	movq	-24(%rbp), %rdx	# maxvalue, tmp501
	subq	%rax, %rdx	# tmp500, D.14412
	movq	%rdx, %rax	# D.14412, D.14412
	cmpq	$1, %rax	#, D.14412
	jne	.L246	#,
	.loc 1 1556 0
	cmpq	$1, -24(%rbp)	#, maxvalue
	je	.L249	#,
	.loc 1 1556 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, maxvalue
	jne	.L246	#,
.L249:
	.loc 1 1557 0 is_stmt 1
	movq	global_trees+96(%rip), %rax	# global_trees, tmp502
	movq	%rax, -88(%rbp)	# tmp502, element_size
.L246:
.LBE18:
	.loc 1 1560 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.14404
	movq	-32(%rbp), %rdx	# length, tmp503
	movq	%rdx, %rsi	# tmp503,
	movq	%rax, %rdi	# D.14404,
	call	convert	#
	movq	%rax, %rdx	#, D.14404
	movq	-88(%rbp), %rax	# element_size, tmp504
	movq	%rax, %rsi	# tmp504,
	movl	$61, %edi	#,
	call	size_binop	#
	movq	-120(%rbp), %rdx	# type, tmp505
	movq	%rax, 32(%rdx)	# D.14404, type_18(D)->type.size
	.loc 1 1571 0
	movq	-56(%rbp), %rax	# element, tmp506
	movq	40(%rax), %rax	# element_162->type.size_unit, D.14404
	testq	%rax, %rax	# D.14404
	je	.L245	#,
	.loc 1 1571 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# element_size, tmp507
	movq	%rax, %rdi	# tmp507,
	call	integer_onep	#
	testl	%eax, %eax	# D.14408
	jne	.L245	#,
	.loc 1 1573 0 is_stmt 1
	movq	-56(%rbp), %rax	# element, tmp508
	movq	40(%rax), %rax	# element_162->type.size_unit, D.14404
	movq	-32(%rbp), %rdx	# length, tmp509
	movq	%rax, %rsi	# D.14404,
	movl	$61, %edi	#,
	call	size_binop	#
	movq	-120(%rbp), %rdx	# type, tmp510
	movq	%rax, 40(%rdx)	# D.14404, type_18(D)->type.size_unit
.L245:
.LBE17:
	.loc 1 1583 0
	movq	-56(%rbp), %rax	# element, tmp511
	movl	64(%rax), %eax	# element_162->type.align, D.14406
	movl	$8, %edx	#, tmp512
	cmpl	$8, %eax	#, D.14406
	cmovae	%eax, %edx	# D.14406,, D.14406
	movq	-120(%rbp), %rax	# type, tmp513
	movl	%edx, 64(%rax)	# D.14406, type_18(D)->type.align
	.loc 1 1585 0
	movq	-56(%rbp), %rax	# element, tmp514
	movzbl	63(%rax), %eax	# *element_162, tmp517
	shrb	$7, %al	#, D.14413
	movl	%eax, %edx	# D.14413, D.14413
	movq	-120(%rbp), %rax	# type, tmp518
	movl	%edx, %ecx	# D.14413, tmp520
	sall	$7, %ecx	#, tmp520
	movzbl	63(%rax), %edx	#, tmp521
	andl	$127, %edx	#, tmp522
	orl	%ecx, %edx	# tmp520, tmp523
	movb	%dl, 63(%rax)	# tmp523,
	.loc 1 1602 0
	movq	-120(%rbp), %rax	# type, tmp524
	movzbl	61(%rax), %edx	#, tmp527
	andl	$1, %edx	#, tmp528
	orl	$102, %edx	#, tmp529
	movb	%dl, 61(%rax)	# tmp529,
	.loc 1 1603 0
	movq	-120(%rbp), %rax	# type, tmp530
	movq	32(%rax), %rax	# type_18(D)->type.size, D.14404
	testq	%rax, %rax	# D.14404
	je	.L250	#,
	.loc 1 1609 0
	movq	-120(%rbp), %rax	# type, tmp531
	movq	8(%rax), %rax	# type_18(D)->common.type, D.14404
	movzbl	61(%rax), %eax	# *_205, D.14405
	andl	$-2, %eax	#, D.14405
	cmpb	$102, %al	#, D.14405
	jne	.L251	#,
	.loc 1 1610 0
	movq	-120(%rbp), %rax	# type, tmp532
	movq	8(%rax), %rax	# type_18(D)->common.type, D.14404
	movzbl	62(%rax), %eax	# *_208, D.14405
	andl	$2, %eax	#, D.14405
	testb	%al, %al	# D.14405
	je	.L250	#,
.L251:
	.loc 1 1614 0
	movq	-120(%rbp), %rax	# type, tmp533
	movq	8(%rax), %rax	# type_18(D)->common.type, D.14404
	.loc 1 1613 0
	movq	32(%rax), %rdx	# _211->type.size, D.14404
	movq	-120(%rbp), %rax	# type, tmp534
	movq	32(%rax), %rax	# type_18(D)->type.size, D.14404
	movq	%rdx, %rsi	# D.14404,
	movq	%rax, %rdi	# D.14404,
	call	simple_cst_equal	#
	testl	%eax, %eax	# D.14408
	je	.L252	#,
	.loc 1 1615 0
	movq	-120(%rbp), %rax	# type, tmp535
	movq	8(%rax), %rax	# type_18(D)->common.type, D.14404
	movzbl	61(%rax), %eax	# *_215, tmp538
	shrb	%al	# D.14411
	movl	%eax, %edx	# D.14411, D.14411
	movq	-120(%rbp), %rax	# type, tmp539
	leal	(%rdx,%rdx), %ecx	#, tmp541
	movzbl	61(%rax), %edx	#, tmp542
	andl	$1, %edx	#, tmp543
	orl	%ecx, %edx	# tmp541, tmp544
	movb	%dl, 61(%rax)	# tmp544,
	jmp	.L250	#
.L252:
	.loc 1 1618 0
	movq	-120(%rbp), %rax	# type, tmp545
	movq	32(%rax), %rax	# type_18(D)->type.size, D.14404
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14404,
	call	mode_for_size_tree	#
	andl	$127, %eax	#, D.14411
	movl	%eax, %edx	# D.14411, D.14411
	movq	-120(%rbp), %rax	# type, tmp546
	leal	(%rdx,%rdx), %ecx	#, tmp548
	movzbl	61(%rax), %edx	#, tmp549
	andl	$1, %edx	#, tmp550
	orl	%ecx, %edx	# tmp548, tmp551
	movb	%dl, 61(%rax)	# tmp551,
	.loc 1 1629 0
	jmp	.L218	#
.L250:
	jmp	.L218	#
.L215:
.LBE16:
.LBB19:
	.loc 1 1640 0
	movq	-120(%rbp), %rax	# type, tmp552
	movq	%rax, %rdi	# tmp552,
	call	start_record_layout	#
	movq	%rax, -8(%rbp)	# tmp553, rli
	.loc 1 1645 0
	movq	-120(%rbp), %rax	# type, tmp554
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	cmpb	$22, %al	#, D.14405
	jne	.L254	#,
	.loc 1 1646 0
	movq	-120(%rbp), %rax	# type, tmp555
	movq	24(%rax), %rax	# type_18(D)->type.values, D.14404
	movq	%rax, %rdi	# D.14404,
	call	nreverse	#
	movq	-120(%rbp), %rdx	# type, tmp556
	movq	%rax, 24(%rdx)	# D.14404, type_18(D)->type.values
.L254:
	.loc 1 1649 0
	movq	-120(%rbp), %rax	# type, tmp557
	movq	24(%rax), %rax	# type_18(D)->type.values, tmp558
	movq	%rax, -80(%rbp)	# tmp558, field
	jmp	.L255	#
.L256:
	.loc 1 1650 0 discriminator 2
	movq	-80(%rbp), %rdx	# field, tmp559
	movq	-8(%rbp), %rax	# rli, tmp560
	movq	%rdx, %rsi	# tmp559,
	movq	%rax, %rdi	# tmp560,
	call	place_field	#
	.loc 1 1649 0 discriminator 2
	movq	-80(%rbp), %rax	# field, tmp561
	movq	(%rax), %rax	# field_2->common.chain, tmp562
	movq	%rax, -80(%rbp)	# tmp562, field
.L255:
	.loc 1 1649 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, field
	jne	.L256	#,
	.loc 1 1652 0 is_stmt 1
	movq	-120(%rbp), %rax	# type, tmp563
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	cmpb	$22, %al	#, D.14405
	jne	.L257	#,
	.loc 1 1653 0
	movq	-120(%rbp), %rax	# type, tmp564
	movq	24(%rax), %rax	# type_18(D)->type.values, D.14404
	movq	%rax, %rdi	# D.14404,
	call	nreverse	#
	movq	-120(%rbp), %rdx	# type, tmp565
	movq	%rax, 24(%rdx)	# D.14404, type_18(D)->type.values
.L257:
	.loc 1 1655 0
	movq	lang_adjust_rli(%rip), %rax	# lang_adjust_rli, lang_adjust_rli.78
	testq	%rax, %rax	# lang_adjust_rli.78
	je	.L258	#,
	.loc 1 1656 0
	movq	lang_adjust_rli(%rip), %rax	# lang_adjust_rli, lang_adjust_rli.79
	movq	-8(%rbp), %rdx	# rli, tmp566
	movq	%rdx, %rdi	# tmp566,
	call	*%rax	# lang_adjust_rli.79
.L258:
	.loc 1 1659 0
	movq	-8(%rbp), %rax	# rli, tmp567
	movq	%rax, %rdi	# tmp567,
	call	finish_record_layout	#
.LBE19:
	.loc 1 1661 0
	jmp	.L218	#
.L214:
	.loc 1 1664 0
	movq	-120(%rbp), %rax	# type, tmp568
	movq	24(%rax), %rax	# type_18(D)->type.values, D.14404
	movq	112(%rax), %rax	# _232->type.maxval, D.14404
	movzbl	16(%rax), %eax	# _233->common.code, D.14405
	cmpb	$25, %al	#, D.14405
	jne	.L259	#,
	.loc 1 1665 0
	movq	-120(%rbp), %rax	# type, tmp569
	movq	24(%rax), %rax	# type_18(D)->type.values, D.14404
	movq	104(%rax), %rax	# _235->type.minval, D.14404
	movzbl	16(%rax), %eax	# _236->common.code, D.14405
	cmpb	$25, %al	#, D.14405
	je	.L260	#,
.L259:
	.loc 1 1666 0
	movl	$__FUNCTION__.12411, %edx	#,
	movl	$1666, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L260:
.LBB20:
	.loc 1 1673 0
	movl	set_alignment(%rip), %eax	# set_alignment, set_alignment.81
	testl	%eax, %eax	# set_alignment.81
	jne	.L261	#,
	.loc 1 1673 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.83
	andl	$33554432, %eax	#, D.14408
	testl	%eax, %eax	# D.14408
	je	.L262	#,
	.loc 1 1673 0 discriminator 3
	movl	$64, %eax	#, iftmp.82
	jmp	.L264	#
.L262:
	.loc 1 1673 0 discriminator 4
	movl	$32, %eax	#, iftmp.82
	jmp	.L264	#
.L261:
	.loc 1 1673 0 discriminator 2
	movl	set_alignment(%rip), %eax	# set_alignment, iftmp.80
.L264:
	.loc 1 1672 0 is_stmt 1
	movl	%eax, -100(%rbp)	# iftmp.80, alignment
	.loc 1 1675 0
	movq	-120(%rbp), %rax	# type, tmp570
	movq	24(%rax), %rax	# type_18(D)->type.values, D.14404
	movq	112(%rax), %rax	# _246->type.maxval, D.14404
	movq	32(%rax), %rax	# _247->int_cst.int_cst.low, D.14414
	.loc 1 1674 0
	movl	%eax, %edx	# D.14414, D.14415
	.loc 1 1676 0
	movq	-120(%rbp), %rax	# type, tmp571
	movq	24(%rax), %rax	# type_18(D)->type.values, D.14404
	movq	104(%rax), %rax	# _250->type.minval, D.14404
	movq	32(%rax), %rax	# _251->int_cst.int_cst.low, D.14414
	.loc 1 1674 0
	subl	%eax, %edx	# D.14415, D.14415
	movl	%edx, %eax	# D.14415, D.14415
	addl	$1, %eax	#, D.14415
	movl	%eax, -96(%rbp)	# D.14415, size_in_bits
	.loc 1 1678 0
	movl	-96(%rbp), %edx	# size_in_bits, size_in_bits.84
	movl	-100(%rbp), %eax	# alignment, tmp572
	addl	%edx, %eax	# size_in_bits.84, D.14406
	subl	$1, %eax	#, D.14406
	movl	$0, %edx	#, tmp574
	divl	-100(%rbp)	# alignment
	imull	-100(%rbp), %eax	# alignment, D.14406
	.loc 1 1677 0
	movl	%eax, -92(%rbp)	# D.14406, rounded_size
	.loc 1 1680 0
	movl	-100(%rbp), %eax	# alignment, alignment.85
	cmpl	-92(%rbp), %eax	# rounded_size, alignment.85
	jge	.L265	#,
	.loc 1 1681 0
	movq	-120(%rbp), %rax	# type, tmp575
	movzbl	61(%rax), %edx	#, tmp578
	andl	$1, %edx	#, tmp579
	orl	$102, %edx	#, tmp580
	movb	%dl, 61(%rax)	# tmp580,
	jmp	.L266	#
.L265:
	.loc 1 1683 0
	movl	-100(%rbp), %eax	# alignment, tmp581
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp581,
	call	mode_for_size	#
	andl	$127, %eax	#, D.14411
	movl	%eax, %edx	# D.14411, D.14411
	movq	-120(%rbp), %rax	# type, tmp582
	leal	(%rdx,%rdx), %ecx	#, tmp584
	movzbl	61(%rax), %edx	#, tmp585
	andl	$1, %edx	#, tmp586
	orl	%ecx, %edx	# tmp584, tmp587
	movb	%dl, 61(%rax)	# tmp587,
.L266:
	.loc 1 1685 0
	movl	-92(%rbp), %eax	# rounded_size, tmp588
	cltq
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp589
	movq	%rax, 32(%rdx)	# D.14404, type_18(D)->type.size
	.loc 1 1686 0
	movl	-92(%rbp), %eax	# rounded_size, tmp590
	leal	7(%rax), %edx	#, tmp592
	testl	%eax, %eax	# tmp591
	cmovs	%edx, %eax	# tmp592,, tmp591
	sarl	$3, %eax	#, tmp593
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14412,
	call	size_int_wide	#
	movq	-120(%rbp), %rdx	# type, tmp594
	movq	%rax, 40(%rdx)	# D.14404, type_18(D)->type.size_unit
	.loc 1 1687 0
	movq	-120(%rbp), %rax	# type, tmp595
	movl	-100(%rbp), %edx	# alignment, tmp596
	movl	%edx, 64(%rax)	# tmp596, type_18(D)->type.align
	.loc 1 1688 0
	movq	-120(%rbp), %rax	# type, tmp597
	movzbl	63(%rax), %edx	#, tmp600
	andl	$127, %edx	#, tmp601
	movb	%dl, 63(%rax)	# tmp601,
	.loc 1 1689 0
	movl	-96(%rbp), %eax	# size_in_bits, tmp602
	andw	$511, %ax	#, D.14409
	movl	%eax, %edx	# D.14409, D.14409
	movq	-120(%rbp), %rax	# type, tmp603
	movl	%edx, %ecx	# D.14409, tmp605
	andw	$511, %cx	#, tmp605
	movzwl	60(%rax), %edx	# type_18(D)->type.precision, tmp606
	andw	$-512, %dx	#, tmp607
	orl	%ecx, %edx	# tmp605, tmp608
	movw	%dx, 60(%rax)	# tmp608, type_18(D)->type.precision
.LBE20:
	.loc 1 1691 0
	jmp	.L218	#
.L212:
	.loc 1 1696 0
	movq	-120(%rbp), %rax	# type, tmp609
	movl	$128, 64(%rax)	#, type_18(D)->type.align
	.loc 1 1697 0
	movq	-120(%rbp), %rax	# type, tmp610
	movzbl	63(%rax), %edx	#, tmp613
	andl	$127, %edx	#, tmp614
	movb	%dl, 63(%rax)	# tmp614,
	.loc 1 1698 0
	movq	-120(%rbp), %rax	# type, tmp615
	movzbl	61(%rax), %edx	#, tmp618
	andl	$1, %edx	#, tmp619
	orl	$102, %edx	#, tmp620
	movb	%dl, 61(%rax)	# tmp620,
	.loc 1 1699 0
	jmp	.L218	#
.L201:
	.loc 1 1702 0
	movl	$__FUNCTION__.12411, %edx	#,
	movl	$1702, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L218:
	.loc 1 1708 0
	movq	-120(%rbp), %rax	# type, tmp621
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	cmpb	$20, %al	#, D.14405
	je	.L267	#,
	.loc 1 1709 0
	movq	-120(%rbp), %rax	# type, tmp622
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	cmpb	$21, %al	#, D.14405
	je	.L267	#,
	.loc 1 1710 0
	movq	-120(%rbp), %rax	# type, tmp623
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	cmpb	$22, %al	#, D.14405
	je	.L267	#,
	.loc 1 1711 0
	movq	-120(%rbp), %rax	# type, tmp624
	movq	%rax, %rdi	# tmp624,
	call	finalize_type_size	#
.L267:
	.loc 1 1715 0
	movl	sizetype_set(%rip), %eax	# sizetype_set, sizetype_set.86
	testl	%eax, %eax	# sizetype_set.86
	jne	.L268	#,
	.loc 1 1716 0
	movq	early_type_list(%rip), %rdx	# early_type_list, early_type_list.87
	movq	-120(%rbp), %rax	# type, tmp625
	movq	%rax, %rsi	# tmp625,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, early_type_list(%rip)	# early_type_list.88, early_type_list
.L268:
	.loc 1 1723 0
	movq	-120(%rbp), %rax	# type, tmp626
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	cmpb	$18, %al	#, D.14405
	je	.L269	#,
	.loc 1 1723 0 is_stmt 0 discriminator 2
	movq	-120(%rbp), %rax	# type, tmp627
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	cmpb	$20, %al	#, D.14405
	je	.L269	#,
	.loc 1 1723 0 discriminator 1
	movq	-120(%rbp), %rax	# type, tmp628
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	cmpb	$21, %al	#, D.14405
	je	.L269	#,
	movq	-120(%rbp), %rax	# type, tmp629
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	cmpb	$22, %al	#, D.14405
	je	.L269	#,
	movq	-120(%rbp), %rax	# type, tmp630
	movzbl	16(%rax), %eax	# type_18(D)->common.code, D.14405
	cmpb	$19, %al	#, D.14405
	jne	.L197	#,
.L269:
	movq	-120(%rbp), %rax	# type, tmp631
	movq	152(%rax), %rax	# type_18(D)->type.alias_set, D.14412
	cmpq	$-1, %rax	#, D.14412
	je	.L197	#,
	.loc 1 1724 0 is_stmt 1
	movq	-120(%rbp), %rax	# type, tmp632
	movq	$0, 152(%rax)	#, type_18(D)->type.alias_set
.L197:
	.loc 1 1725 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	layout_type, .-layout_type
	.globl	make_signed_type
	.type	make_signed_type, @function
make_signed_type:
.LFB33:
	.loc 1 1732 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# precision, precision
	.loc 1 1733 0
	movl	$6, %edi	#,
	call	make_node	#
	movq	%rax, -8(%rbp)	# tmp63, type
	.loc 1 1735 0
	movl	-20(%rbp), %eax	# precision, tmp64
	andw	$511, %ax	#, D.14417
	movl	%eax, %edx	# D.14417, D.14417
	movq	-8(%rbp), %rax	# type, tmp65
	movl	%edx, %ecx	# D.14417, tmp67
	andw	$511, %cx	#, tmp67
	movzwl	60(%rax), %edx	# type_1->type.precision, tmp68
	andw	$-512, %dx	#, tmp69
	orl	%ecx, %edx	# tmp67, tmp70
	movw	%dx, 60(%rax)	# tmp70, type_1->type.precision
	.loc 1 1737 0
	movq	-8(%rbp), %rax	# type, tmp71
	movq	%rax, %rdi	# tmp71,
	call	fixup_signed_type	#
	.loc 1 1738 0
	movq	-8(%rbp), %rax	# type, D.14418
	.loc 1 1739 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	make_signed_type, .-make_signed_type
	.globl	make_unsigned_type
	.type	make_unsigned_type, @function
make_unsigned_type:
.LFB34:
	.loc 1 1746 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# precision, precision
	.loc 1 1747 0
	movl	$6, %edi	#,
	call	make_node	#
	movq	%rax, -8(%rbp)	# tmp63, type
	.loc 1 1749 0
	movl	-20(%rbp), %eax	# precision, tmp64
	andw	$511, %ax	#, D.14420
	movl	%eax, %edx	# D.14420, D.14420
	movq	-8(%rbp), %rax	# type, tmp65
	movl	%edx, %ecx	# D.14420, tmp67
	andw	$511, %cx	#, tmp67
	movzwl	60(%rax), %edx	# type_1->type.precision, tmp68
	andw	$-512, %dx	#, tmp69
	orl	%ecx, %edx	# tmp67, tmp70
	movw	%dx, 60(%rax)	# tmp70, type_1->type.precision
	.loc 1 1751 0
	movq	-8(%rbp), %rax	# type, tmp71
	movq	%rax, %rdi	# tmp71,
	call	fixup_unsigned_type	#
	.loc 1 1752 0
	movq	-8(%rbp), %rax	# type, D.14421
	.loc 1 1753 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	make_unsigned_type, .-make_unsigned_type
	.globl	initialize_sizetypes
	.type	initialize_sizetypes, @function
initialize_sizetypes:
.LFB35:
	.loc 1 1760 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1761 0
	movl	$6, %edi	#,
	call	make_node	#
	movq	%rax, -8(%rbp)	# tmp71, t
	.loc 1 1765 0
	movq	-8(%rbp), %rax	# t, tmp72
	movq	%rax, integer_types+40(%rip)	# tmp72, integer_types
	.loc 1 1767 0
	movq	-8(%rbp), %rax	# t, tmp73
	movzbl	61(%rax), %edx	#, tmp76
	andl	$1, %edx	#, tmp77
	orl	$8, %edx	#, tmp78
	movb	%dl, 61(%rax)	# tmp78,
	.loc 1 1768 0
	movl	$4, %edi	#,
	call	get_mode_alignment	#
	movq	-8(%rbp), %rdx	# t, tmp79
	movl	%eax, 64(%rdx)	# D.14422, t_1->type.align
	.loc 1 1769 0
	movq	-8(%rbp), %rax	# t, tmp80
	movzbl	63(%rax), %edx	#, tmp83
	andl	$127, %edx	#, tmp84
	movb	%dl, 63(%rax)	# tmp84,
	.loc 1 1770 0
	movzwl	mode_bitsize+8(%rip), %eax	# mode_bitsize, D.14423
	movzwl	%ax, %eax	# D.14423, D.14424
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14424,
	call	build_int_2_wide	#
	movq	-8(%rbp), %rdx	# t, tmp85
	movq	%rax, 32(%rdx)	# D.14425, t_1->type.size
	.loc 1 1771 0
	movzbl	mode_size+4(%rip), %eax	# mode_size, D.14426
	movzbl	%al, %eax	# D.14426, D.14424
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14424,
	call	build_int_2_wide	#
	movq	-8(%rbp), %rdx	# t, tmp86
	movq	%rax, 40(%rdx)	# D.14425, t_1->type.size_unit
	.loc 1 1772 0
	movq	-8(%rbp), %rax	# t, tmp87
	movzbl	17(%rax), %edx	#, tmp90
	orl	$32, %edx	#, tmp91
	movb	%dl, 17(%rax)	# tmp91,
	.loc 1 1773 0
	movzwl	mode_bitsize+8(%rip), %eax	# mode_bitsize, D.14423
	andw	$511, %ax	#, D.14427
	movl	%eax, %edx	# D.14427, D.14427
	movq	-8(%rbp), %rax	# t, tmp92
	movl	%edx, %ecx	# D.14427, tmp94
	andw	$511, %cx	#, tmp94
	movzwl	60(%rax), %edx	# t_1->type.precision, tmp95
	andw	$-512, %dx	#, tmp96
	orl	%ecx, %edx	# tmp94, tmp97
	movw	%dx, 60(%rax)	# tmp97, t_1->type.precision
	.loc 1 1774 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	build_int_2_wide	#
	movq	-8(%rbp), %rdx	# t, tmp98
	movq	%rax, 104(%rdx)	# D.14425, t_1->type.minval
	.loc 1 1775 0
	movq	-8(%rbp), %rax	# t, tmp99
	movzbl	62(%rax), %edx	#, tmp102
	orl	$2, %edx	#, tmp103
	movb	%dl, 62(%rax)	# tmp103,
	.loc 1 1779 0
	movl	$0, %esi	#,
	movl	$1000, %edi	#,
	call	build_int_2_wide	#
	movq	-8(%rbp), %rdx	# t, tmp104
	movq	%rax, 112(%rdx)	# D.14425, t_1->type.maxval
	.loc 1 1783 0
	movq	-8(%rbp), %rax	# t, tmp105
	movq	%rax, sizetype_tab(%rip)	# tmp105, sizetype_tab
	.loc 1 1784 0
	movq	-8(%rbp), %rax	# t, tmp106
	movq	%rax, %rdi	# tmp106,
	call	copy_node	#
	movq	%rax, sizetype_tab+24(%rip)	# D.14425, sizetype_tab
	.loc 1 1785 0
	movq	$0, integer_types+40(%rip)	#, integer_types
	.loc 1 1786 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	initialize_sizetypes, .-initialize_sizetypes
	.section	.rodata
.LC15:
	.string	"bit_size_type"
	.text
	.globl	set_sizetype
	.type	set_sizetype, @function
set_sizetype:
.LFB36:
	.loc 1 1794 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# type, type
	.loc 1 1795 0
	movq	-56(%rbp), %rax	# type, tmp107
	movzwl	60(%rax), %eax	# *type_3(D), tmp110
	andw	$511, %ax	#, D.14428
	movzwl	%ax, %eax	# D.14428, tmp111
	movl	%eax, -32(%rbp)	# tmp111, oprecision
	.loc 1 1800 0
	movl	-32(%rbp), %eax	# oprecision, tmp112
	addl	$4, %eax	#, D.14429
	movl	$128, %edx	#, tmp114
	cmpl	$128, %eax	#, D.14429
	cmovg	%edx, %eax	# D.14429,, tmp114, tmp113
	movl	%eax, -28(%rbp)	# tmp113, precision
	.loc 1 1805 0
	movl	sizetype_set(%rip), %eax	# sizetype_set, sizetype_set.89
	testl	%eax, %eax	# sizetype_set.89
	je	.L276	#,
	.loc 1 1806 0
	movl	$__FUNCTION__.12470, %edx	#,
	movl	$1806, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L276:
	.loc 1 1809 0
	movq	-56(%rbp), %rax	# type, tmp115
	movq	%rax, %rdi	# tmp115,
	call	copy_node	#
	movq	%rax, sizetype_tab(%rip)	# D.14430, sizetype_tab
	.loc 1 1810 0
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14430
	movq	-56(%rbp), %rdx	# type, tmp116
	movq	%rdx, 24(%rax)	# tmp116, _10->type.values
	.loc 1 1811 0
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14430
	movzbl	62(%rax), %edx	#, tmp119
	orl	$2, %edx	#, tmp120
	movb	%dl, 62(%rax)	# tmp120,
	.loc 1 1812 0
	movl	$6, %edi	#,
	call	make_node	#
	movq	%rax, sizetype_tab+24(%rip)	# D.14430, sizetype_tab
	.loc 1 1813 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.14430
	movq	-56(%rbp), %rdx	# type, tmp121
	movq	96(%rdx), %rdx	# type_3(D)->type.name, D.14430
	movq	%rdx, 96(%rax)	# D.14430, _13->type.name
	.loc 1 1814 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.14430
	movl	-28(%rbp), %edx	# precision, tmp122
	andw	$511, %dx	#, D.14428
	movl	%edx, %ecx	# D.14428, tmp124
	andw	$511, %cx	#, tmp124
	movzwl	60(%rax), %edx	# _15->type.precision, tmp125
	andw	$-512, %dx	#, tmp126
	orl	%ecx, %edx	# tmp124, tmp127
	movw	%dx, 60(%rax)	# tmp127, _15->type.precision
	.loc 1 1815 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.14430
	movzbl	62(%rax), %edx	#, tmp130
	orl	$2, %edx	#, tmp131
	movb	%dl, 62(%rax)	# tmp131,
	.loc 1 1817 0
	movq	-56(%rbp), %rax	# type, tmp132
	movzbl	17(%rax), %eax	# *type_3(D), D.14432
	andl	$32, %eax	#, D.14432
	testb	%al, %al	# D.14432
	je	.L277	#,
	.loc 1 1818 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.14430
	movq	%rax, %rdi	# D.14430,
	call	fixup_unsigned_type	#
	jmp	.L278	#
.L277:
	.loc 1 1820 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.14430
	movq	%rax, %rdi	# D.14430,
	call	fixup_signed_type	#
.L278:
	.loc 1 1822 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.14430
	movq	%rax, %rdi	# D.14430,
	call	layout_type	#
	.loc 1 1824 0
	movq	-56(%rbp), %rax	# type, tmp133
	movzbl	17(%rax), %eax	# *type_3(D), D.14432
	andl	$32, %eax	#, D.14432
	testb	%al, %al	# D.14432
	je	.L279	#,
	.loc 1 1826 0
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14430
	movq	%rax, sizetype_tab+16(%rip)	# D.14430, sizetype_tab
	.loc 1 1827 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.14430
	movq	%rax, sizetype_tab+40(%rip)	# D.14430, sizetype_tab
	.loc 1 1828 0
	movl	-32(%rbp), %eax	# oprecision, tmp134
	movl	%eax, %edi	# tmp134,
	call	make_signed_type	#
	movq	%rax, %rdi	# D.14430,
	call	copy_node	#
	movq	%rax, sizetype_tab+8(%rip)	# D.14430, sizetype_tab
	.loc 1 1829 0
	movl	-28(%rbp), %eax	# precision, tmp135
	movl	%eax, %edi	# tmp135,
	call	make_signed_type	#
	movq	%rax, %rdi	# D.14430,
	call	copy_node	#
	movq	%rax, sizetype_tab+32(%rip)	# D.14430, sizetype_tab
	jmp	.L280	#
.L279:
	.loc 1 1833 0
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.14430
	movq	%rax, sizetype_tab+8(%rip)	# D.14430, sizetype_tab
	.loc 1 1834 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.14430
	movq	%rax, sizetype_tab+32(%rip)	# D.14430, sizetype_tab
	.loc 1 1835 0
	movl	-32(%rbp), %eax	# oprecision, tmp136
	movl	%eax, %edi	# tmp136,
	call	make_unsigned_type	#
	movq	%rax, %rdi	# D.14430,
	call	copy_node	#
	movq	%rax, sizetype_tab+16(%rip)	# D.14430, sizetype_tab
	.loc 1 1836 0
	movl	-28(%rbp), %eax	# precision, tmp137
	movl	%eax, %edi	# tmp137,
	call	make_unsigned_type	#
	movq	%rax, %rdi	# D.14430,
	call	copy_node	#
	movq	%rax, sizetype_tab+40(%rip)	# D.14430, sizetype_tab
.L280:
	.loc 1 1839 0
	movq	sizetype_tab+24(%rip), %rbx	# sizetype_tab, D.14430
	movl	$.LC15, %edi	#,
	call	get_identifier	#
	movq	%rax, 96(%rbx)	# D.14430, _38->type.name
	.loc 1 1842 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L281	#
.L282:
	.loc 1 1844 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp138
	movq	sizetype_tab(,%rax,8), %rax	# sizetype_tab, D.14430
	movzbl	62(%rax), %edx	#, tmp141
	orl	$2, %edx	#, tmp142
	movb	%dl, 62(%rax)	# tmp142,
	.loc 1 1845 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp143
	movq	sizetype_tab(,%rax,8), %rax	# sizetype_tab, D.14430
	movl	-36(%rbp), %edx	# i, tmp144
	movq	sizetype_tab(,%rdx,8), %rdx	# sizetype_tab, D.14430
	movq	%rdx, 128(%rax)	# D.14430, _42->type.main_variant
	.loc 1 1846 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp145
	movq	sizetype_tab(,%rax,8), %rax	# sizetype_tab, D.14430
	movq	$0, 120(%rax)	#, _44->type.next_variant
	.loc 1 1847 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp146
	movq	sizetype_tab(,%rax,8), %rax	# sizetype_tab, D.14430
	movq	$0, 72(%rax)	#, _45->type.pointer_to
	.loc 1 1848 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp147
	movq	sizetype_tab(,%rax,8), %rax	# sizetype_tab, D.14430
	movq	$0, 80(%rax)	#, _46->type.reference_to
	.loc 1 1842 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L281:
	.loc 1 1842 0 is_stmt 0 discriminator 1
	cmpl	$5, -36(%rbp)	#, i
	jbe	.L282	#,
	.loc 1 1851 0 is_stmt 1
	movl	$6, %esi	#,
	movl	$sizetype_tab, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 1856 0
	movq	early_type_list(%rip), %rax	# early_type_list, tmp148
	movq	%rax, -24(%rbp)	# tmp148, t
	jmp	.L283	#
.L285:
	.loc 1 1858 0
	movq	-24(%rbp), %rax	# t, tmp149
	movq	32(%rax), %rax	# t_2->list.value, D.14430
	movzbl	16(%rax), %eax	# _49->common.code, D.14432
	cmpb	$6, %al	#, D.14432
	je	.L284	#,
	.loc 1 1859 0
	movl	$__FUNCTION__.12470, %edx	#,
	movl	$1859, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L284:
	.loc 1 1861 0
	movq	-24(%rbp), %rax	# t, tmp150
	movq	32(%rax), %rax	# t_2->list.value, D.14430
	movq	32(%rax), %rax	# _51->type.size, D.14430
	movq	sizetype_tab+24(%rip), %rdx	# sizetype_tab, D.14430
	movq	%rdx, 8(%rax)	# D.14430, _52->common.type
	.loc 1 1862 0
	movq	-24(%rbp), %rax	# t, tmp151
	movq	32(%rax), %rax	# t_2->list.value, D.14430
	movq	40(%rax), %rax	# _54->type.size_unit, D.14430
	movq	sizetype_tab(%rip), %rdx	# sizetype_tab, D.14430
	movq	%rdx, 8(%rax)	# D.14430, _55->common.type
	.loc 1 1856 0
	movq	-24(%rbp), %rax	# t, tmp152
	movq	(%rax), %rax	# t_2->common.chain, tmp153
	movq	%rax, -24(%rbp)	# tmp153, t
.L283:
	.loc 1 1856 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, t
	jne	.L285	#,
	.loc 1 1865 0 is_stmt 1
	movq	$0, early_type_list(%rip)	#, early_type_list
	.loc 1 1866 0
	movl	$1, sizetype_set(%rip)	#, sizetype_set
	.loc 1 1867 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	set_sizetype, .-set_sizetype
	.globl	fixup_signed_type
	.type	fixup_signed_type, @function
fixup_signed_type:
.LFB37:
	.loc 1 1877 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 1878 0
	movq	-24(%rbp), %rax	# type, tmp80
	movzwl	60(%rax), %eax	# *type_5(D), tmp83
	andw	$511, %ax	#, D.14434
	movzwl	%ax, %eax	# D.14434, tmp84
	movl	%eax, -4(%rbp)	# tmp84, precision
	.loc 1 1883 0
	cmpl	$128, -4(%rbp)	#, precision
	jle	.L287	#,
	.loc 1 1884 0
	movl	$128, -4(%rbp)	#, precision
.L287:
	.loc 1 1887 0
	movl	-4(%rbp), %eax	# precision, tmp85
	subl	$65, %eax	#, D.14435
	movl	$0, %edx	#, tmp86
	testl	%eax, %eax	# D.14435
	cmovs	%edx, %eax	# D.14435,, tmp86, D.14435
	movq	$-1, %rdx	#, tmp87
	movl	%eax, %ecx	# D.14435, tmp104
	salq	%cl, %rdx	# tmp104, D.14436
	movl	-4(%rbp), %eax	# precision, tmp88
	subl	$64, %eax	#, D.14435
	testl	%eax, %eax	# D.14435
	jg	.L288	#,
	.loc 1 1887 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# precision, tmp89
	subl	$1, %eax	#, D.14435
	movq	$-1, %rsi	#, tmp90
	movl	%eax, %ecx	# D.14435, tmp106
	salq	%cl, %rsi	# tmp106, D.14436
	movq	%rsi, %rax	# D.14436, D.14436
	jmp	.L289	#
.L288:
	.loc 1 1887 0 discriminator 2
	movl	$0, %eax	#, iftmp.90
.L289:
	.loc 1 1887 0 discriminator 3
	movq	%rdx, %rsi	# D.14436,
	movq	%rax, %rdi	# iftmp.90,
	call	build_int_2_wide	#
	movq	-24(%rbp), %rdx	# type, tmp91
	movq	%rax, 104(%rdx)	# D.14437, type_5(D)->type.minval
	.loc 1 1894 0 is_stmt 1 discriminator 3
	movl	-4(%rbp), %eax	# precision, tmp92
	subl	$65, %eax	#, D.14435
	testl	%eax, %eax	# D.14435
	jle	.L290	#,
	.loc 1 1894 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# precision, tmp93
	subl	$65, %eax	#, D.14435
	movl	$1, %edx	#, tmp94
	movl	%eax, %ecx	# D.14435, tmp108
	salq	%cl, %rdx	# tmp108, D.14436
	movq	%rdx, %rax	# D.14436, D.14436
	leaq	-1(%rax), %rdx	#, iftmp.91
	jmp	.L291	#
.L290:
	.loc 1 1894 0 discriminator 2
	movl	$0, %edx	#, iftmp.91
.L291:
	.loc 1 1894 0 discriminator 3
	movl	-4(%rbp), %eax	# precision, tmp95
	subl	$64, %eax	#, D.14435
	testl	%eax, %eax	# D.14435
	jg	.L292	#,
	.loc 1 1894 0 discriminator 4
	movl	-4(%rbp), %eax	# precision, tmp96
	subl	$1, %eax	#, D.14435
	movl	$1, %esi	#, tmp97
	movl	%eax, %ecx	# D.14435, tmp110
	salq	%cl, %rsi	# tmp110, D.14436
	movq	%rsi, %rax	# D.14436, D.14436
	subq	$1, %rax	#, D.14436
	jmp	.L293	#
.L292:
	.loc 1 1894 0 discriminator 5
	movq	$-1, %rax	#, iftmp.92
.L293:
	.loc 1 1894 0 discriminator 6
	movq	%rdx, %rsi	# iftmp.91,
	movq	%rax, %rdi	# iftmp.92,
	call	build_int_2_wide	#
	movq	-24(%rbp), %rdx	# type, tmp98
	movq	%rax, 112(%rdx)	# D.14437, type_5(D)->type.maxval
	.loc 1 1901 0 is_stmt 1 discriminator 6
	movq	-24(%rbp), %rax	# type, tmp99
	movq	104(%rax), %rax	# type_5(D)->type.minval, D.14437
	movq	-24(%rbp), %rdx	# type, tmp100
	movq	%rdx, 8(%rax)	# tmp100, _30->common.type
	.loc 1 1902 0 discriminator 6
	movq	-24(%rbp), %rax	# type, tmp101
	movq	112(%rax), %rax	# type_5(D)->type.maxval, D.14437
	movq	-24(%rbp), %rdx	# type, tmp102
	movq	%rdx, 8(%rax)	# tmp102, _31->common.type
	.loc 1 1905 0 discriminator 6
	movq	-24(%rbp), %rax	# type, tmp103
	movq	%rax, %rdi	# tmp103,
	call	layout_type	#
	.loc 1 1906 0 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	fixup_signed_type, .-fixup_signed_type
	.globl	fixup_unsigned_type
	.type	fixup_unsigned_type, @function
fixup_unsigned_type:
.LFB38:
	.loc 1 1915 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 1916 0
	movq	-24(%rbp), %rax	# type, tmp72
	movzwl	60(%rax), %eax	# *type_4(D), tmp75
	andw	$511, %ax	#, D.14438
	movzwl	%ax, %eax	# D.14438, tmp76
	movl	%eax, -4(%rbp)	# tmp76, precision
	.loc 1 1921 0
	cmpl	$128, -4(%rbp)	#, precision
	jle	.L295	#,
	.loc 1 1922 0
	movl	$128, -4(%rbp)	#, precision
.L295:
	.loc 1 1924 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	build_int_2_wide	#
	movq	-24(%rbp), %rdx	# type, tmp77
	movq	%rax, 104(%rdx)	# D.14439, type_4(D)->type.minval
	.loc 1 1926 0
	movl	-4(%rbp), %eax	# precision, tmp78
	subl	$64, %eax	#, D.14440
	testl	%eax, %eax	# D.14440
	jle	.L296	#,
	.loc 1 1926 0 is_stmt 0 discriminator 1
	movl	$128, %eax	#, tmp79
	subl	-4(%rbp), %eax	# precision, D.14440
	movq	$-1, %rdx	#, tmp80
	movl	%eax, %ecx	# D.14440, tmp91
	shrq	%cl, %rdx	# tmp91, D.14441
	movq	%rdx, %rax	# D.14441, D.14441
	movq	%rax, %rdx	# D.14441, iftmp.93
	jmp	.L297	#
.L296:
	.loc 1 1926 0 discriminator 2
	movl	$0, %edx	#, iftmp.93
.L297:
	.loc 1 1926 0 discriminator 3
	movl	-4(%rbp), %eax	# precision, tmp81
	subl	$64, %eax	#, D.14440
	testl	%eax, %eax	# D.14440
	jns	.L298	#,
	.loc 1 1926 0 discriminator 4
	movl	-4(%rbp), %eax	# precision, tmp82
	movl	$1, %esi	#, tmp83
	movl	%eax, %ecx	# tmp82, tmp93
	salq	%cl, %rsi	# tmp93, D.14442
	movq	%rsi, %rax	# D.14442, D.14442
	subq	$1, %rax	#, D.14442
	jmp	.L299	#
.L298:
	.loc 1 1926 0 discriminator 5
	movq	$-1, %rax	#, iftmp.94
.L299:
	.loc 1 1926 0 discriminator 6
	movq	%rdx, %rsi	# iftmp.93,
	movq	%rax, %rdi	# iftmp.94,
	call	build_int_2_wide	#
	movq	-24(%rbp), %rdx	# type, tmp84
	movq	%rax, 112(%rdx)	# D.14439, type_4(D)->type.maxval
	.loc 1 1933 0 is_stmt 1 discriminator 6
	movq	-24(%rbp), %rax	# type, tmp85
	movq	104(%rax), %rax	# type_4(D)->type.minval, D.14439
	movq	-24(%rbp), %rdx	# type, tmp86
	movq	%rdx, 8(%rax)	# tmp86, _20->common.type
	.loc 1 1934 0 discriminator 6
	movq	-24(%rbp), %rax	# type, tmp87
	movq	112(%rax), %rax	# type_4(D)->type.maxval, D.14439
	movq	-24(%rbp), %rdx	# type, tmp88
	movq	%rdx, 8(%rax)	# tmp88, _21->common.type
	.loc 1 1937 0 discriminator 6
	movq	-24(%rbp), %rax	# type, tmp89
	movq	%rax, %rdi	# tmp89,
	call	layout_type	#
	.loc 1 1938 0 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	fixup_unsigned_type, .-fixup_unsigned_type
	.globl	get_best_mode
	.type	get_best_mode, @function
get_best_mode:
.LFB39:
	.loc 1 1961 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# bitsize, bitsize
	movl	%esi, -24(%rbp)	# bitpos, bitpos
	movl	%edx, -28(%rbp)	# align, align
	movl	%ecx, -32(%rbp)	# largest_mode, largest_mode
	movl	%r8d, -36(%rbp)	# volatilep, volatilep
	.loc 1 1963 0
	movl	$0, -4(%rbp)	#, unit
	.loc 1 1966 0
	movl	class_narrowest_mode+4(%rip), %eax	# class_narrowest_mode, tmp73
	movl	%eax, -8(%rbp)	# tmp73, mode
	jmp	.L301	#
.L304:
	.loc 1 1969 0
	movl	-8(%rbp), %eax	# mode, mode.95
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14444
	movzwl	%ax, %eax	# D.14444, tmp75
	movl	%eax, -4(%rbp)	# tmp75, unit
	.loc 1 1970 0
	movl	-24(%rbp), %eax	# bitpos, bitpos.96
	movl	$0, %edx	#, tmp76
	divl	-4(%rbp)	# unit
	movl	-20(%rbp), %eax	# bitsize, bitsize.97
	addl	%edx, %eax	# D.14445, D.14445
	cmpl	-4(%rbp), %eax	# unit, D.14445
	ja	.L302	#,
	.loc 1 1971 0
	jmp	.L303	#
.L302:
	.loc 1 1967 0
	movl	-8(%rbp), %eax	# mode, mode.98
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.14446
	movzbl	%al, %eax	# D.14446, tmp79
	movl	%eax, -8(%rbp)	# tmp79, mode
.L301:
	.loc 1 1966 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, mode
	jne	.L304	#,
.L303:
	.loc 1 1974 0
	cmpl	$0, -8(%rbp)	#, mode
	je	.L305	#,
	.loc 1 1982 0
	movl	$128, %eax	#, tmp80
	cmpl	$128, -4(%rbp)	#, unit
	cmovbe	-4(%rbp), %eax	# unit,, D.14445
	cmpl	-28(%rbp), %eax	# align, D.14445
	ja	.L305	#,
	.loc 1 1983 0
	cmpl	$0, -32(%rbp)	#, largest_mode
	je	.L306	#,
	.loc 1 1983 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# largest_mode, largest_mode.99
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14444
	movzwl	%ax, %eax	# D.14444, D.14445
	cmpl	-4(%rbp), %eax	# unit, D.14445
	jae	.L306	#,
.L305:
	.loc 1 1984 0 is_stmt 1
	movl	$0, %eax	#, D.14443
	jmp	.L307	#
.L306:
	.loc 1 2006 0
	movl	-8(%rbp), %eax	# mode, D.14443
.L307:
	.loc 1 2007 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	get_best_mode, .-get_best_mode
	.globl	init_stor_layout_once
	.type	init_stor_layout_once, @function
init_stor_layout_once:
.LFB40:
	.loc 1 2013 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2014 0
	movl	$1, %esi	#,
	movl	$pending_sizes, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 2015 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	init_stor_layout_once, .-init_stor_layout_once
	.section	.rodata
	.align 16
	.type	__FUNCTION__.12241, @object
	.size	__FUNCTION__.12241, 18
__FUNCTION__.12241:
	.string	"put_pending_sizes"
	.align 16
	.type	__FUNCTION__.12267, @object
	.size	__FUNCTION__.12267, 23
__FUNCTION__.12267:
	.string	"smallest_mode_for_size"
	.align 16
	.type	__FUNCTION__.12282, @object
	.size	__FUNCTION__.12282, 18
__FUNCTION__.12282:
	.string	"int_mode_for_mode"
	.type	__FUNCTION__.12299, @object
	.size	__FUNCTION__.12299, 12
__FUNCTION__.12299:
	.string	"layout_decl"
	.type	__FUNCTION__.12411, @object
	.size	__FUNCTION__.12411, 12
__FUNCTION__.12411:
	.string	"layout_type"
	.type	__FUNCTION__.12470, @object
	.size	__FUNCTION__.12470, 13
__FUNCTION__.12470:
	.string	"set_sizetype"
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
	.file 12 "hashtable.h"
	.file 13 "function.h"
	.file 14 "target.h"
	.file 15 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3d80
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1070
	.byte	0x1
	.long	.LASF1071
	.long	.LASF1072
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
	.long	0x2536
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
	.long	0x2546
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
	.long	.LASF838
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0xce0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0xea0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0xf03
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0xfbc
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0xf38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0xf7a
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x1021
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x18da
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x11b0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x1048
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x107d
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x10c0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x10f5
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
	.long	.LASF28
	.byte	0x1c
	.byte	0x5
	.value	0x683
	.long	0x25a
	.uleb128 0x10
	.long	.LASF29
	.byte	0x5
	.value	0x684
	.long	0x1e3
	.byte	0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x5
	.value	0x685
	.long	0x1e3
	.byte	0x4
	.uleb128 0x10
	.long	.LASF31
	.byte	0x5
	.value	0x686
	.long	0x1e3
	.byte	0x8
	.uleb128 0x10
	.long	.LASF32
	.byte	0x5
	.value	0x687
	.long	0x1e3
	.byte	0xc
	.uleb128 0x10
	.long	.LASF33
	.byte	0x5
	.value	0x688
	.long	0x1e3
	.byte	0x10
	.uleb128 0x10
	.long	.LASF34
	.byte	0x5
	.value	0x689
	.long	0x1e3
	.byte	0x14
	.uleb128 0x10
	.long	.LASF35
	.byte	0x5
	.value	0x68a
	.long	0x1e3
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF36
	.byte	0x5
	.value	0x68b
	.long	0x1f1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF37
	.uleb128 0x12
	.byte	0x8
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF38
	.uleb128 0x7
	.long	.LASF39
	.byte	0x6
	.byte	0xd4
	.long	0x281
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF40
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF41
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF42
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF43
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF44
	.uleb128 0x7
	.long	.LASF45
	.byte	0x7
	.byte	0x8c
	.long	0x26f
	.uleb128 0x7
	.long	.LASF46
	.byte	0x7
	.byte	0x8d
	.long	0x26f
	.uleb128 0x3
	.byte	0x8
	.long	0x2c0
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF47
	.uleb128 0x7
	.long	.LASF48
	.byte	0x8
	.byte	0x30
	.long	0x2d2
	.uleb128 0x4
	.long	.LASF49
	.byte	0xd8
	.byte	0x9
	.byte	0xf6
	.long	0x453
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0xf7
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x9
	.byte	0xfc
	.long	0x2ba
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xfd
	.long	0x2ba
	.byte	0x10
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xfe
	.long	0x2ba
	.byte	0x18
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xff
	.long	0x2ba
	.byte	0x20
	.uleb128 0x10
	.long	.LASF55
	.byte	0x9
	.value	0x100
	.long	0x2ba
	.byte	0x28
	.uleb128 0x10
	.long	.LASF56
	.byte	0x9
	.value	0x101
	.long	0x2ba
	.byte	0x30
	.uleb128 0x10
	.long	.LASF57
	.byte	0x9
	.value	0x102
	.long	0x2ba
	.byte	0x38
	.uleb128 0x10
	.long	.LASF58
	.byte	0x9
	.value	0x103
	.long	0x2ba
	.byte	0x40
	.uleb128 0x10
	.long	.LASF59
	.byte	0x9
	.value	0x105
	.long	0x2ba
	.byte	0x48
	.uleb128 0x10
	.long	.LASF60
	.byte	0x9
	.value	0x106
	.long	0x2ba
	.byte	0x50
	.uleb128 0x10
	.long	.LASF61
	.byte	0x9
	.value	0x107
	.long	0x2ba
	.byte	0x58
	.uleb128 0x10
	.long	.LASF62
	.byte	0x9
	.value	0x109
	.long	0x48b
	.byte	0x60
	.uleb128 0x10
	.long	.LASF63
	.byte	0x9
	.value	0x10b
	.long	0x491
	.byte	0x68
	.uleb128 0x10
	.long	.LASF64
	.byte	0x9
	.value	0x10d
	.long	0x1e3
	.byte	0x70
	.uleb128 0x10
	.long	.LASF65
	.byte	0x9
	.value	0x111
	.long	0x1e3
	.byte	0x74
	.uleb128 0x10
	.long	.LASF66
	.byte	0x9
	.value	0x113
	.long	0x2a4
	.byte	0x78
	.uleb128 0x10
	.long	.LASF67
	.byte	0x9
	.value	0x117
	.long	0x28f
	.byte	0x80
	.uleb128 0x10
	.long	.LASF68
	.byte	0x9
	.value	0x118
	.long	0x296
	.byte	0x82
	.uleb128 0x10
	.long	.LASF69
	.byte	0x9
	.value	0x119
	.long	0x497
	.byte	0x83
	.uleb128 0x10
	.long	.LASF70
	.byte	0x9
	.value	0x11d
	.long	0x4a7
	.byte	0x88
	.uleb128 0x10
	.long	.LASF71
	.byte	0x9
	.value	0x126
	.long	0x2af
	.byte	0x90
	.uleb128 0x10
	.long	.LASF72
	.byte	0x9
	.value	0x12f
	.long	0x26d
	.byte	0x98
	.uleb128 0x10
	.long	.LASF73
	.byte	0x9
	.value	0x130
	.long	0x26d
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF74
	.byte	0x9
	.value	0x131
	.long	0x26d
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF75
	.byte	0x9
	.value	0x132
	.long	0x26d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF76
	.byte	0x9
	.value	0x133
	.long	0x276
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF77
	.byte	0x9
	.value	0x135
	.long	0x1e3
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x9
	.value	0x137
	.long	0x4ad
	.byte	0xc4
	.byte	0
	.uleb128 0x13
	.long	.LASF1073
	.byte	0x9
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF79
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x48b
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0xa2
	.long	0x48b
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0x9
	.byte	0xa3
	.long	0x491
	.byte	0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0x9
	.byte	0xa7
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x45a
	.uleb128 0x3
	.byte	0x8
	.long	0x2d2
	.uleb128 0x14
	.long	0x2c0
	.long	0x4a7
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x453
	.uleb128 0x14
	.long	0x2c0
	.long	0x4bd
	.uleb128 0x15
	.long	0x1ea
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4c3
	.uleb128 0xc
	.long	0x2c0
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF83
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF84
	.uleb128 0x3
	.byte	0x8
	.long	0x1e3
	.uleb128 0x16
	.long	.LASF145
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.long	0x651
	.uleb128 0x17
	.long	.LASF85
	.sleb128 0
	.uleb128 0x17
	.long	.LASF86
	.sleb128 1
	.uleb128 0x17
	.long	.LASF87
	.sleb128 2
	.uleb128 0x17
	.long	.LASF88
	.sleb128 3
	.uleb128 0x17
	.long	.LASF89
	.sleb128 4
	.uleb128 0x17
	.long	.LASF90
	.sleb128 5
	.uleb128 0x17
	.long	.LASF91
	.sleb128 6
	.uleb128 0x17
	.long	.LASF92
	.sleb128 7
	.uleb128 0x17
	.long	.LASF93
	.sleb128 8
	.uleb128 0x17
	.long	.LASF94
	.sleb128 9
	.uleb128 0x17
	.long	.LASF95
	.sleb128 10
	.uleb128 0x17
	.long	.LASF96
	.sleb128 11
	.uleb128 0x17
	.long	.LASF97
	.sleb128 12
	.uleb128 0x17
	.long	.LASF98
	.sleb128 13
	.uleb128 0x17
	.long	.LASF99
	.sleb128 14
	.uleb128 0x17
	.long	.LASF100
	.sleb128 15
	.uleb128 0x17
	.long	.LASF101
	.sleb128 16
	.uleb128 0x17
	.long	.LASF102
	.sleb128 17
	.uleb128 0x17
	.long	.LASF103
	.sleb128 18
	.uleb128 0x17
	.long	.LASF104
	.sleb128 19
	.uleb128 0x17
	.long	.LASF105
	.sleb128 20
	.uleb128 0x17
	.long	.LASF106
	.sleb128 21
	.uleb128 0x17
	.long	.LASF107
	.sleb128 22
	.uleb128 0x17
	.long	.LASF108
	.sleb128 23
	.uleb128 0x17
	.long	.LASF109
	.sleb128 24
	.uleb128 0x17
	.long	.LASF110
	.sleb128 25
	.uleb128 0x17
	.long	.LASF111
	.sleb128 26
	.uleb128 0x17
	.long	.LASF112
	.sleb128 27
	.uleb128 0x17
	.long	.LASF113
	.sleb128 28
	.uleb128 0x17
	.long	.LASF114
	.sleb128 29
	.uleb128 0x17
	.long	.LASF115
	.sleb128 30
	.uleb128 0x17
	.long	.LASF116
	.sleb128 31
	.uleb128 0x17
	.long	.LASF117
	.sleb128 32
	.uleb128 0x17
	.long	.LASF118
	.sleb128 33
	.uleb128 0x17
	.long	.LASF119
	.sleb128 34
	.uleb128 0x17
	.long	.LASF120
	.sleb128 35
	.uleb128 0x17
	.long	.LASF121
	.sleb128 36
	.uleb128 0x17
	.long	.LASF122
	.sleb128 37
	.uleb128 0x17
	.long	.LASF123
	.sleb128 38
	.uleb128 0x17
	.long	.LASF124
	.sleb128 39
	.uleb128 0x17
	.long	.LASF125
	.sleb128 40
	.uleb128 0x17
	.long	.LASF126
	.sleb128 41
	.uleb128 0x17
	.long	.LASF127
	.sleb128 42
	.uleb128 0x17
	.long	.LASF128
	.sleb128 43
	.uleb128 0x17
	.long	.LASF129
	.sleb128 44
	.uleb128 0x17
	.long	.LASF130
	.sleb128 45
	.uleb128 0x17
	.long	.LASF131
	.sleb128 46
	.uleb128 0x17
	.long	.LASF132
	.sleb128 47
	.uleb128 0x17
	.long	.LASF133
	.sleb128 48
	.uleb128 0x17
	.long	.LASF134
	.sleb128 49
	.uleb128 0x17
	.long	.LASF135
	.sleb128 50
	.uleb128 0x17
	.long	.LASF136
	.sleb128 51
	.uleb128 0x17
	.long	.LASF137
	.sleb128 52
	.uleb128 0x17
	.long	.LASF138
	.sleb128 53
	.uleb128 0x17
	.long	.LASF139
	.sleb128 54
	.uleb128 0x17
	.long	.LASF140
	.sleb128 55
	.uleb128 0x17
	.long	.LASF141
	.sleb128 56
	.uleb128 0x17
	.long	.LASF142
	.sleb128 57
	.uleb128 0x17
	.long	.LASF143
	.sleb128 58
	.uleb128 0x17
	.long	.LASF144
	.sleb128 59
	.byte	0
	.uleb128 0x16
	.long	.LASF146
	.byte	0x4
	.byte	0xa
	.byte	0x2c
	.long	0x69a
	.uleb128 0x17
	.long	.LASF147
	.sleb128 0
	.uleb128 0x17
	.long	.LASF148
	.sleb128 1
	.uleb128 0x17
	.long	.LASF149
	.sleb128 2
	.uleb128 0x17
	.long	.LASF150
	.sleb128 3
	.uleb128 0x17
	.long	.LASF151
	.sleb128 4
	.uleb128 0x17
	.long	.LASF152
	.sleb128 5
	.uleb128 0x17
	.long	.LASF153
	.sleb128 6
	.uleb128 0x17
	.long	.LASF154
	.sleb128 7
	.uleb128 0x17
	.long	.LASF155
	.sleb128 8
	.uleb128 0x17
	.long	.LASF156
	.sleb128 9
	.byte	0
	.uleb128 0x16
	.long	.LASF157
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0xa73
	.uleb128 0x17
	.long	.LASF158
	.sleb128 0
	.uleb128 0x17
	.long	.LASF159
	.sleb128 1
	.uleb128 0x17
	.long	.LASF160
	.sleb128 2
	.uleb128 0x17
	.long	.LASF161
	.sleb128 3
	.uleb128 0x17
	.long	.LASF162
	.sleb128 4
	.uleb128 0x17
	.long	.LASF163
	.sleb128 5
	.uleb128 0x17
	.long	.LASF164
	.sleb128 6
	.uleb128 0x17
	.long	.LASF165
	.sleb128 7
	.uleb128 0x17
	.long	.LASF166
	.sleb128 8
	.uleb128 0x17
	.long	.LASF167
	.sleb128 9
	.uleb128 0x17
	.long	.LASF168
	.sleb128 10
	.uleb128 0x17
	.long	.LASF169
	.sleb128 11
	.uleb128 0x17
	.long	.LASF170
	.sleb128 12
	.uleb128 0x17
	.long	.LASF171
	.sleb128 13
	.uleb128 0x17
	.long	.LASF172
	.sleb128 14
	.uleb128 0x17
	.long	.LASF173
	.sleb128 15
	.uleb128 0x17
	.long	.LASF174
	.sleb128 16
	.uleb128 0x17
	.long	.LASF175
	.sleb128 17
	.uleb128 0x17
	.long	.LASF176
	.sleb128 18
	.uleb128 0x17
	.long	.LASF177
	.sleb128 19
	.uleb128 0x17
	.long	.LASF178
	.sleb128 20
	.uleb128 0x17
	.long	.LASF179
	.sleb128 21
	.uleb128 0x17
	.long	.LASF180
	.sleb128 22
	.uleb128 0x17
	.long	.LASF181
	.sleb128 23
	.uleb128 0x17
	.long	.LASF182
	.sleb128 24
	.uleb128 0x17
	.long	.LASF183
	.sleb128 25
	.uleb128 0x17
	.long	.LASF184
	.sleb128 26
	.uleb128 0x17
	.long	.LASF185
	.sleb128 27
	.uleb128 0x17
	.long	.LASF186
	.sleb128 28
	.uleb128 0x17
	.long	.LASF187
	.sleb128 29
	.uleb128 0x17
	.long	.LASF188
	.sleb128 30
	.uleb128 0x17
	.long	.LASF189
	.sleb128 31
	.uleb128 0x17
	.long	.LASF190
	.sleb128 32
	.uleb128 0x17
	.long	.LASF191
	.sleb128 33
	.uleb128 0x17
	.long	.LASF192
	.sleb128 34
	.uleb128 0x17
	.long	.LASF193
	.sleb128 35
	.uleb128 0x17
	.long	.LASF194
	.sleb128 36
	.uleb128 0x17
	.long	.LASF195
	.sleb128 37
	.uleb128 0x17
	.long	.LASF196
	.sleb128 38
	.uleb128 0x17
	.long	.LASF197
	.sleb128 39
	.uleb128 0x17
	.long	.LASF198
	.sleb128 40
	.uleb128 0x17
	.long	.LASF199
	.sleb128 41
	.uleb128 0x17
	.long	.LASF200
	.sleb128 42
	.uleb128 0x17
	.long	.LASF201
	.sleb128 43
	.uleb128 0x17
	.long	.LASF202
	.sleb128 44
	.uleb128 0x17
	.long	.LASF203
	.sleb128 45
	.uleb128 0x17
	.long	.LASF204
	.sleb128 46
	.uleb128 0x17
	.long	.LASF205
	.sleb128 47
	.uleb128 0x17
	.long	.LASF206
	.sleb128 48
	.uleb128 0x17
	.long	.LASF207
	.sleb128 49
	.uleb128 0x17
	.long	.LASF208
	.sleb128 50
	.uleb128 0x17
	.long	.LASF209
	.sleb128 51
	.uleb128 0x17
	.long	.LASF210
	.sleb128 52
	.uleb128 0x17
	.long	.LASF211
	.sleb128 53
	.uleb128 0x17
	.long	.LASF212
	.sleb128 54
	.uleb128 0x17
	.long	.LASF213
	.sleb128 55
	.uleb128 0x17
	.long	.LASF214
	.sleb128 56
	.uleb128 0x17
	.long	.LASF215
	.sleb128 57
	.uleb128 0x17
	.long	.LASF216
	.sleb128 58
	.uleb128 0x17
	.long	.LASF217
	.sleb128 59
	.uleb128 0x17
	.long	.LASF218
	.sleb128 60
	.uleb128 0x17
	.long	.LASF219
	.sleb128 61
	.uleb128 0x17
	.long	.LASF220
	.sleb128 62
	.uleb128 0x17
	.long	.LASF221
	.sleb128 63
	.uleb128 0x17
	.long	.LASF222
	.sleb128 64
	.uleb128 0x17
	.long	.LASF223
	.sleb128 65
	.uleb128 0x17
	.long	.LASF224
	.sleb128 66
	.uleb128 0x17
	.long	.LASF225
	.sleb128 67
	.uleb128 0x17
	.long	.LASF226
	.sleb128 68
	.uleb128 0x17
	.long	.LASF227
	.sleb128 69
	.uleb128 0x17
	.long	.LASF228
	.sleb128 70
	.uleb128 0x17
	.long	.LASF229
	.sleb128 71
	.uleb128 0x17
	.long	.LASF230
	.sleb128 72
	.uleb128 0x17
	.long	.LASF231
	.sleb128 73
	.uleb128 0x17
	.long	.LASF232
	.sleb128 74
	.uleb128 0x17
	.long	.LASF233
	.sleb128 75
	.uleb128 0x17
	.long	.LASF234
	.sleb128 76
	.uleb128 0x17
	.long	.LASF235
	.sleb128 77
	.uleb128 0x17
	.long	.LASF236
	.sleb128 78
	.uleb128 0x17
	.long	.LASF237
	.sleb128 79
	.uleb128 0x17
	.long	.LASF238
	.sleb128 80
	.uleb128 0x17
	.long	.LASF239
	.sleb128 81
	.uleb128 0x17
	.long	.LASF240
	.sleb128 82
	.uleb128 0x17
	.long	.LASF241
	.sleb128 83
	.uleb128 0x17
	.long	.LASF242
	.sleb128 84
	.uleb128 0x17
	.long	.LASF243
	.sleb128 85
	.uleb128 0x17
	.long	.LASF244
	.sleb128 86
	.uleb128 0x17
	.long	.LASF245
	.sleb128 87
	.uleb128 0x17
	.long	.LASF246
	.sleb128 88
	.uleb128 0x17
	.long	.LASF247
	.sleb128 89
	.uleb128 0x17
	.long	.LASF248
	.sleb128 90
	.uleb128 0x17
	.long	.LASF249
	.sleb128 91
	.uleb128 0x17
	.long	.LASF250
	.sleb128 92
	.uleb128 0x17
	.long	.LASF251
	.sleb128 93
	.uleb128 0x17
	.long	.LASF252
	.sleb128 94
	.uleb128 0x17
	.long	.LASF253
	.sleb128 95
	.uleb128 0x17
	.long	.LASF254
	.sleb128 96
	.uleb128 0x17
	.long	.LASF255
	.sleb128 97
	.uleb128 0x17
	.long	.LASF256
	.sleb128 98
	.uleb128 0x17
	.long	.LASF257
	.sleb128 99
	.uleb128 0x17
	.long	.LASF258
	.sleb128 100
	.uleb128 0x17
	.long	.LASF259
	.sleb128 101
	.uleb128 0x17
	.long	.LASF260
	.sleb128 102
	.uleb128 0x17
	.long	.LASF261
	.sleb128 103
	.uleb128 0x17
	.long	.LASF262
	.sleb128 104
	.uleb128 0x17
	.long	.LASF263
	.sleb128 105
	.uleb128 0x17
	.long	.LASF264
	.sleb128 106
	.uleb128 0x17
	.long	.LASF265
	.sleb128 107
	.uleb128 0x17
	.long	.LASF266
	.sleb128 108
	.uleb128 0x17
	.long	.LASF267
	.sleb128 109
	.uleb128 0x17
	.long	.LASF268
	.sleb128 110
	.uleb128 0x17
	.long	.LASF269
	.sleb128 111
	.uleb128 0x17
	.long	.LASF270
	.sleb128 112
	.uleb128 0x17
	.long	.LASF271
	.sleb128 113
	.uleb128 0x17
	.long	.LASF272
	.sleb128 114
	.uleb128 0x17
	.long	.LASF273
	.sleb128 115
	.uleb128 0x17
	.long	.LASF274
	.sleb128 116
	.uleb128 0x17
	.long	.LASF275
	.sleb128 117
	.uleb128 0x17
	.long	.LASF276
	.sleb128 118
	.uleb128 0x17
	.long	.LASF277
	.sleb128 119
	.uleb128 0x17
	.long	.LASF278
	.sleb128 120
	.uleb128 0x17
	.long	.LASF279
	.sleb128 121
	.uleb128 0x17
	.long	.LASF280
	.sleb128 122
	.uleb128 0x17
	.long	.LASF281
	.sleb128 123
	.uleb128 0x17
	.long	.LASF282
	.sleb128 124
	.uleb128 0x17
	.long	.LASF283
	.sleb128 125
	.uleb128 0x17
	.long	.LASF284
	.sleb128 126
	.uleb128 0x17
	.long	.LASF285
	.sleb128 127
	.uleb128 0x17
	.long	.LASF286
	.sleb128 128
	.uleb128 0x17
	.long	.LASF287
	.sleb128 129
	.uleb128 0x17
	.long	.LASF288
	.sleb128 130
	.uleb128 0x17
	.long	.LASF289
	.sleb128 131
	.uleb128 0x17
	.long	.LASF290
	.sleb128 132
	.uleb128 0x17
	.long	.LASF291
	.sleb128 133
	.uleb128 0x17
	.long	.LASF292
	.sleb128 134
	.uleb128 0x17
	.long	.LASF293
	.sleb128 135
	.uleb128 0x17
	.long	.LASF294
	.sleb128 136
	.uleb128 0x17
	.long	.LASF295
	.sleb128 137
	.uleb128 0x17
	.long	.LASF296
	.sleb128 138
	.uleb128 0x17
	.long	.LASF297
	.sleb128 139
	.uleb128 0x17
	.long	.LASF298
	.sleb128 140
	.uleb128 0x17
	.long	.LASF299
	.sleb128 141
	.uleb128 0x17
	.long	.LASF300
	.sleb128 142
	.uleb128 0x17
	.long	.LASF301
	.sleb128 143
	.uleb128 0x17
	.long	.LASF302
	.sleb128 144
	.uleb128 0x17
	.long	.LASF303
	.sleb128 145
	.uleb128 0x17
	.long	.LASF304
	.sleb128 146
	.uleb128 0x17
	.long	.LASF305
	.sleb128 147
	.byte	0
	.uleb128 0x16
	.long	.LASF306
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0xce0
	.uleb128 0x17
	.long	.LASF307
	.sleb128 0
	.uleb128 0x17
	.long	.LASF308
	.sleb128 1
	.uleb128 0x17
	.long	.LASF309
	.sleb128 2
	.uleb128 0x17
	.long	.LASF310
	.sleb128 3
	.uleb128 0x17
	.long	.LASF311
	.sleb128 4
	.uleb128 0x17
	.long	.LASF312
	.sleb128 5
	.uleb128 0x17
	.long	.LASF313
	.sleb128 6
	.uleb128 0x17
	.long	.LASF314
	.sleb128 7
	.uleb128 0x17
	.long	.LASF315
	.sleb128 8
	.uleb128 0x17
	.long	.LASF316
	.sleb128 9
	.uleb128 0x17
	.long	.LASF317
	.sleb128 10
	.uleb128 0x17
	.long	.LASF318
	.sleb128 11
	.uleb128 0x17
	.long	.LASF319
	.sleb128 12
	.uleb128 0x17
	.long	.LASF320
	.sleb128 13
	.uleb128 0x17
	.long	.LASF321
	.sleb128 14
	.uleb128 0x17
	.long	.LASF322
	.sleb128 15
	.uleb128 0x17
	.long	.LASF323
	.sleb128 16
	.uleb128 0x17
	.long	.LASF324
	.sleb128 17
	.uleb128 0x17
	.long	.LASF325
	.sleb128 18
	.uleb128 0x17
	.long	.LASF326
	.sleb128 19
	.uleb128 0x17
	.long	.LASF327
	.sleb128 20
	.uleb128 0x17
	.long	.LASF328
	.sleb128 21
	.uleb128 0x17
	.long	.LASF329
	.sleb128 22
	.uleb128 0x17
	.long	.LASF330
	.sleb128 23
	.uleb128 0x17
	.long	.LASF331
	.sleb128 24
	.uleb128 0x17
	.long	.LASF332
	.sleb128 25
	.uleb128 0x17
	.long	.LASF333
	.sleb128 26
	.uleb128 0x17
	.long	.LASF334
	.sleb128 27
	.uleb128 0x17
	.long	.LASF335
	.sleb128 28
	.uleb128 0x17
	.long	.LASF336
	.sleb128 29
	.uleb128 0x17
	.long	.LASF337
	.sleb128 30
	.uleb128 0x17
	.long	.LASF338
	.sleb128 31
	.uleb128 0x17
	.long	.LASF339
	.sleb128 32
	.uleb128 0x17
	.long	.LASF340
	.sleb128 33
	.uleb128 0x17
	.long	.LASF341
	.sleb128 34
	.uleb128 0x17
	.long	.LASF342
	.sleb128 35
	.uleb128 0x17
	.long	.LASF343
	.sleb128 36
	.uleb128 0x17
	.long	.LASF344
	.sleb128 37
	.uleb128 0x17
	.long	.LASF345
	.sleb128 38
	.uleb128 0x17
	.long	.LASF346
	.sleb128 39
	.uleb128 0x17
	.long	.LASF347
	.sleb128 40
	.uleb128 0x17
	.long	.LASF348
	.sleb128 41
	.uleb128 0x17
	.long	.LASF349
	.sleb128 42
	.uleb128 0x17
	.long	.LASF350
	.sleb128 43
	.uleb128 0x17
	.long	.LASF351
	.sleb128 44
	.uleb128 0x17
	.long	.LASF352
	.sleb128 45
	.uleb128 0x17
	.long	.LASF353
	.sleb128 46
	.uleb128 0x17
	.long	.LASF354
	.sleb128 47
	.uleb128 0x17
	.long	.LASF355
	.sleb128 48
	.uleb128 0x17
	.long	.LASF356
	.sleb128 49
	.uleb128 0x17
	.long	.LASF357
	.sleb128 50
	.uleb128 0x17
	.long	.LASF358
	.sleb128 51
	.uleb128 0x17
	.long	.LASF359
	.sleb128 52
	.uleb128 0x17
	.long	.LASF360
	.sleb128 53
	.uleb128 0x17
	.long	.LASF361
	.sleb128 54
	.uleb128 0x17
	.long	.LASF362
	.sleb128 55
	.uleb128 0x17
	.long	.LASF363
	.sleb128 56
	.uleb128 0x17
	.long	.LASF364
	.sleb128 57
	.uleb128 0x17
	.long	.LASF365
	.sleb128 58
	.uleb128 0x17
	.long	.LASF366
	.sleb128 59
	.uleb128 0x17
	.long	.LASF367
	.sleb128 60
	.uleb128 0x17
	.long	.LASF368
	.sleb128 61
	.uleb128 0x17
	.long	.LASF369
	.sleb128 62
	.uleb128 0x17
	.long	.LASF370
	.sleb128 63
	.uleb128 0x17
	.long	.LASF371
	.sleb128 64
	.uleb128 0x17
	.long	.LASF372
	.sleb128 65
	.uleb128 0x17
	.long	.LASF373
	.sleb128 66
	.uleb128 0x17
	.long	.LASF374
	.sleb128 67
	.uleb128 0x17
	.long	.LASF375
	.sleb128 68
	.uleb128 0x17
	.long	.LASF376
	.sleb128 69
	.uleb128 0x17
	.long	.LASF377
	.sleb128 70
	.uleb128 0x17
	.long	.LASF378
	.sleb128 71
	.uleb128 0x17
	.long	.LASF379
	.sleb128 72
	.uleb128 0x17
	.long	.LASF380
	.sleb128 73
	.uleb128 0x17
	.long	.LASF381
	.sleb128 74
	.uleb128 0x17
	.long	.LASF382
	.sleb128 75
	.uleb128 0x17
	.long	.LASF383
	.sleb128 76
	.uleb128 0x17
	.long	.LASF384
	.sleb128 77
	.uleb128 0x17
	.long	.LASF385
	.sleb128 78
	.uleb128 0x17
	.long	.LASF386
	.sleb128 79
	.uleb128 0x17
	.long	.LASF387
	.sleb128 80
	.uleb128 0x17
	.long	.LASF388
	.sleb128 81
	.uleb128 0x17
	.long	.LASF389
	.sleb128 82
	.uleb128 0x17
	.long	.LASF390
	.sleb128 83
	.uleb128 0x17
	.long	.LASF391
	.sleb128 84
	.uleb128 0x17
	.long	.LASF392
	.sleb128 85
	.uleb128 0x17
	.long	.LASF393
	.sleb128 86
	.uleb128 0x17
	.long	.LASF394
	.sleb128 87
	.uleb128 0x17
	.long	.LASF395
	.sleb128 88
	.uleb128 0x17
	.long	.LASF396
	.sleb128 89
	.uleb128 0x17
	.long	.LASF397
	.sleb128 90
	.uleb128 0x17
	.long	.LASF398
	.sleb128 91
	.uleb128 0x17
	.long	.LASF399
	.sleb128 92
	.uleb128 0x17
	.long	.LASF400
	.sleb128 93
	.uleb128 0x17
	.long	.LASF401
	.sleb128 94
	.uleb128 0x17
	.long	.LASF402
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF403
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0xe7c
	.uleb128 0x8
	.long	.LASF404
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
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF405
	.byte	0x4
	.byte	0x80
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF406
	.byte	0x4
	.byte	0x81
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF407
	.byte	0x4
	.byte	0x82
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF408
	.byte	0x4
	.byte	0x83
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF409
	.byte	0x4
	.byte	0x84
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF410
	.byte	0x4
	.byte	0x85
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF411
	.byte	0x4
	.byte	0x86
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF412
	.byte	0x4
	.byte	0x87
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF413
	.byte	0x4
	.byte	0x89
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF414
	.byte	0x4
	.byte	0x8a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF415
	.byte	0x4
	.byte	0x8b
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF416
	.byte	0x4
	.byte	0x8c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF417
	.byte	0x4
	.byte	0x8d
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF418
	.byte	0x4
	.byte	0x8e
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF419
	.byte	0x4
	.byte	0x8f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF420
	.byte	0x4
	.byte	0x90
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF421
	.byte	0x4
	.byte	0x92
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF422
	.byte	0x4
	.byte	0x93
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF423
	.byte	0x4
	.byte	0x94
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF424
	.byte	0x4
	.byte	0x95
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF425
	.byte	0x4
	.byte	0x96
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF426
	.byte	0x4
	.byte	0x97
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF427
	.byte	0x4
	.byte	0x98
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF428
	.byte	0x4
	.byte	0x99
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x18
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0xea0
	.uleb128 0x19
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x281
	.byte	0
	.uleb128 0x10
	.long	.LASF429
	.byte	0x4
	.value	0x2cb
	.long	0x26f
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF430
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0xed5
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0xce0
	.byte	0
	.uleb128 0x19
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0xe7c
	.byte	0x20
	.byte	0
	.uleb128 0x1a
	.byte	0x18
	.byte	0xb
	.byte	0x6b
	.long	0xee8
	.uleb128 0x6
	.string	"r"
	.byte	0xb
	.byte	0x6c
	.long	0xee8
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x26f
	.long	0xef8
	.uleb128 0x15
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF431
	.byte	0xb
	.byte	0x6d
	.long	0xed5
	.uleb128 0xf
	.long	.LASF432
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0xf38
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0xce0
	.byte	0
	.uleb128 0x19
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0xef8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF433
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0xf7a
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0xce0
	.byte	0
	.uleb128 0x19
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF434
	.byte	0x4
	.value	0x2ed
	.long	0x1e3
	.byte	0x20
	.uleb128 0x10
	.long	.LASF435
	.byte	0x4
	.value	0x2ee
	.long	0x4bd
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	.LASF436
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0xfbc
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0xce0
	.byte	0
	.uleb128 0x19
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF437
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF438
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	.LASF439
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0xff1
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0xce0
	.byte	0
	.uleb128 0x19
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF440
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF441
	.byte	0x10
	.byte	0xc
	.byte	0x1a
	.long	0x1016
	.uleb128 0x6
	.string	"len"
	.byte	0xc
	.byte	0x1c
	.long	0x266
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xc
	.byte	0x1d
	.long	0x1016
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x101c
	.uleb128 0xc
	.long	0x288
	.uleb128 0xf
	.long	.LASF442
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x1048
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0xce0
	.byte	0
	.uleb128 0x19
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0xff1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF443
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x107d
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0xce0
	.byte	0
	.uleb128 0x10
	.long	.LASF444
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x10
	.long	.LASF445
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF446
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x10b0
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0xce0
	.byte	0
	.uleb128 0x10
	.long	.LASF434
	.byte	0x4
	.value	0x331
	.long	0x1e3
	.byte	0x18
	.uleb128 0x19
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x10b0
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.long	0x123
	.long	0x10c0
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF447
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x10f5
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0xce0
	.byte	0
	.uleb128 0x10
	.long	.LASF448
	.byte	0x4
	.value	0x372
	.long	0x1e3
	.byte	0x18
	.uleb128 0x10
	.long	.LASF449
	.byte	0x4
	.value	0x373
	.long	0x10b0
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF450
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x118e
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0xce0
	.byte	0
	.uleb128 0x1b
	.long	.LASF451
	.byte	0x4
	.value	0x3a7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x1b
	.long	.LASF452
	.byte	0x4
	.value	0x3a8
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x1b
	.long	.LASF453
	.byte	0x4
	.value	0x3a9
	.long	0x266
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x10
	.long	.LASF454
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF455
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x10
	.long	.LASF456
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x10
	.long	.LASF457
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x10
	.long	.LASF458
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x10
	.long	.LASF459
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x1c
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x11b0
	.uleb128 0xa
	.long	.LASF460
	.byte	0x4
	.value	0x4d8
	.long	0x1e3
	.uleb128 0xa
	.long	.LASF435
	.byte	0x4
	.value	0x4d8
	.long	0x2ba
	.byte	0
	.uleb128 0xf
	.long	.LASF461
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x13c5
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0xce0
	.byte	0
	.uleb128 0x10
	.long	.LASF462
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x10
	.long	.LASF463
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF464
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x10
	.long	.LASF465
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x19
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x266
	.byte	0x38
	.uleb128 0x1b
	.long	.LASF466
	.byte	0x4
	.value	0x4c1
	.long	0x266
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x266
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF467
	.byte	0x4
	.value	0x4c4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF468
	.byte	0x4
	.value	0x4c5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF469
	.byte	0x4
	.value	0x4c6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF470
	.byte	0x4
	.value	0x4c7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF471
	.byte	0x4
	.value	0x4c8
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF472
	.byte	0x4
	.value	0x4c9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF473
	.byte	0x4
	.value	0x4ca
	.long	0x266
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF421
	.byte	0x4
	.value	0x4cc
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF422
	.byte	0x4
	.value	0x4cd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF423
	.byte	0x4
	.value	0x4ce
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF424
	.byte	0x4
	.value	0x4cf
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF425
	.byte	0x4
	.value	0x4d0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF426
	.byte	0x4
	.value	0x4d1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF427
	.byte	0x4
	.value	0x4d2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1b
	.long	.LASF474
	.byte	0x4
	.value	0x4d3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x10
	.long	.LASF475
	.byte	0x4
	.value	0x4d5
	.long	0x266
	.byte	0x40
	.uleb128 0x10
	.long	.LASF476
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x10
	.long	.LASF477
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x10
	.long	.LASF478
	.byte	0x4
	.value	0x4d8
	.long	0x118e
	.byte	0x58
	.uleb128 0x10
	.long	.LASF479
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x10
	.long	.LASF480
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x10
	.long	.LASF481
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x10
	.long	.LASF482
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x10
	.long	.LASF483
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x10
	.long	.LASF484
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x10
	.long	.LASF485
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x10
	.long	.LASF486
	.byte	0x4
	.value	0x4e0
	.long	0x26f
	.byte	0x98
	.uleb128 0x10
	.long	.LASF487
	.byte	0x4
	.value	0x4e2
	.long	0x13ca
	.byte	0xa0
	.byte	0
	.uleb128 0x1d
	.long	.LASF605
	.uleb128 0x3
	.byte	0x8
	.long	0x13c5
	.uleb128 0x18
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x13fa
	.uleb128 0x1b
	.long	.LASF475
	.byte	0x4
	.value	0x717
	.long	0x266
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.long	.LASF488
	.byte	0x4
	.value	0x717
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1422
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0xa73
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x26f
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x13d0
	.byte	0
	.uleb128 0x1c
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1454
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x18d4
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
	.uleb128 0x1e
	.long	.LASF489
	.value	0x1b0
	.byte	0xd
	.byte	0xae
	.long	0x18d4
	.uleb128 0x6
	.string	"eh"
	.byte	0xd
	.byte	0xb0
	.long	0x27fc
	.byte	0
	.uleb128 0x8
	.long	.LASF490
	.byte	0xd
	.byte	0xb1
	.long	0x2807
	.byte	0x8
	.uleb128 0x8
	.long	.LASF491
	.byte	0xd
	.byte	0xb2
	.long	0x280d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF492
	.byte	0xd
	.byte	0xb3
	.long	0x2813
	.byte	0x18
	.uleb128 0x8
	.long	.LASF493
	.byte	0xd
	.byte	0xb4
	.long	0x281e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF479
	.byte	0xd
	.byte	0xb9
	.long	0x4bd
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0xd
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF494
	.byte	0xd
	.byte	0xbf
	.long	0x18d4
	.byte	0x38
	.uleb128 0x8
	.long	.LASF495
	.byte	0xd
	.byte	0xc4
	.long	0x1e3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF496
	.byte	0xd
	.byte	0xc9
	.long	0x1e3
	.byte	0x44
	.uleb128 0x8
	.long	.LASF497
	.byte	0xd
	.byte	0xce
	.long	0x1e3
	.byte	0x48
	.uleb128 0x8
	.long	.LASF498
	.byte	0xd
	.byte	0xd2
	.long	0x1e3
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF499
	.byte	0xd
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF500
	.byte	0xd
	.byte	0xda
	.long	0x25a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF501
	.byte	0xd
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF502
	.byte	0xd
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF503
	.byte	0xd
	.byte	0xe7
	.long	0x4bd
	.byte	0x88
	.uleb128 0x8
	.long	.LASF504
	.byte	0xd
	.byte	0xeb
	.long	0x2829
	.byte	0x90
	.uleb128 0x8
	.long	.LASF505
	.byte	0xd
	.byte	0xee
	.long	0x1e3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF506
	.byte	0xd
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF507
	.byte	0xd
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF508
	.byte	0xd
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF509
	.byte	0xd
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF510
	.byte	0xd
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF511
	.byte	0xd
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x10
	.long	.LASF512
	.byte	0xd
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF513
	.byte	0xd
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x10
	.long	.LASF514
	.byte	0xd
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x10
	.long	.LASF515
	.byte	0xd
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x10
	.long	.LASF516
	.byte	0xd
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x10
	.long	.LASF517
	.byte	0xd
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1f
	.long	.LASF518
	.byte	0xd
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1f
	.long	.LASF519
	.byte	0xd
	.value	0x12f
	.long	0x26f
	.value	0x108
	.uleb128 0x1f
	.long	.LASF520
	.byte	0xd
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1f
	.long	.LASF521
	.byte	0xd
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1f
	.long	.LASF522
	.byte	0xd
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1f
	.long	.LASF523
	.byte	0xd
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1f
	.long	.LASF524
	.byte	0xd
	.value	0x148
	.long	0x266
	.value	0x130
	.uleb128 0x1f
	.long	.LASF525
	.byte	0xd
	.value	0x14e
	.long	0x2605
	.value	0x138
	.uleb128 0x1f
	.long	.LASF526
	.byte	0xd
	.value	0x151
	.long	0x2834
	.value	0x140
	.uleb128 0x1f
	.long	.LASF527
	.byte	0xd
	.value	0x154
	.long	0x1e3
	.value	0x148
	.uleb128 0x1f
	.long	.LASF528
	.byte	0xd
	.value	0x157
	.long	0x1e3
	.value	0x14c
	.uleb128 0x1f
	.long	.LASF529
	.byte	0xd
	.value	0x15d
	.long	0x1e3
	.value	0x150
	.uleb128 0x1f
	.long	.LASF530
	.byte	0xd
	.value	0x161
	.long	0x269e
	.value	0x158
	.uleb128 0x1f
	.long	.LASF531
	.byte	0xd
	.value	0x164
	.long	0x1e3
	.value	0x160
	.uleb128 0x1f
	.long	.LASF532
	.byte	0xd
	.value	0x165
	.long	0x1e3
	.value	0x164
	.uleb128 0x1f
	.long	.LASF533
	.byte	0xd
	.value	0x167
	.long	0x26d
	.value	0x168
	.uleb128 0x1f
	.long	.LASF534
	.byte	0xd
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1f
	.long	.LASF535
	.byte	0xd
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1f
	.long	.LASF536
	.byte	0xd
	.value	0x16d
	.long	0x1e3
	.value	0x180
	.uleb128 0x1f
	.long	.LASF537
	.byte	0xd
	.value	0x170
	.long	0x1e3
	.value	0x184
	.uleb128 0x1f
	.long	.LASF538
	.byte	0xd
	.value	0x175
	.long	0x283f
	.value	0x188
	.uleb128 0x1f
	.long	.LASF539
	.byte	0xd
	.value	0x177
	.long	0x1e3
	.value	0x190
	.uleb128 0x1f
	.long	.LASF540
	.byte	0xd
	.value	0x179
	.long	0x1e3
	.value	0x194
	.uleb128 0x1f
	.long	.LASF541
	.byte	0xd
	.value	0x17c
	.long	0x284a
	.value	0x198
	.uleb128 0x1f
	.long	.LASF542
	.byte	0xd
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x20
	.long	.LASF543
	.byte	0xd
	.value	0x188
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF544
	.byte	0xd
	.value	0x18c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF545
	.byte	0xd
	.value	0x18f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF546
	.byte	0xd
	.value	0x192
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF547
	.byte	0xd
	.value	0x195
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF548
	.byte	0xd
	.value	0x198
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF549
	.byte	0xd
	.value	0x19c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF550
	.byte	0xd
	.value	0x19f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF551
	.byte	0xd
	.value	0x1a3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF552
	.byte	0xd
	.value	0x1a7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF553
	.byte	0xd
	.value	0x1aa
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF554
	.byte	0xd
	.value	0x1ad
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF555
	.byte	0xd
	.value	0x1b2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF556
	.byte	0xd
	.value	0x1b6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF557
	.byte	0xd
	.value	0x1b9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF558
	.byte	0xd
	.value	0x1bd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF559
	.byte	0xd
	.value	0x1c1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF560
	.byte	0xd
	.value	0x1c5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF561
	.byte	0xd
	.value	0x1cb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF562
	.byte	0xd
	.value	0x1d4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF563
	.byte	0xd
	.value	0x1d7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF564
	.byte	0xd
	.value	0x1da
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF565
	.byte	0xd
	.value	0x1dd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF566
	.byte	0xd
	.value	0x1e0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1454
	.uleb128 0xf
	.long	.LASF567
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x1c5e
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0xce0
	.byte	0
	.uleb128 0x10
	.long	.LASF568
	.byte	0x4
	.value	0x6df
	.long	0x4bd
	.byte	0x18
	.uleb128 0x10
	.long	.LASF569
	.byte	0x4
	.value	0x6e0
	.long	0x1e3
	.byte	0x20
	.uleb128 0x19
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x266
	.byte	0x24
	.uleb128 0x10
	.long	.LASF463
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF570
	.byte	0x4
	.value	0x6e5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF571
	.byte	0x4
	.value	0x6e6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF572
	.byte	0x4
	.value	0x6e7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF573
	.byte	0x4
	.value	0x6e8
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF574
	.byte	0x4
	.value	0x6e9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF575
	.byte	0x4
	.value	0x6ea
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF576
	.byte	0x4
	.value	0x6eb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF452
	.byte	0x4
	.value	0x6ec
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF577
	.byte	0x4
	.value	0x6ee
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF578
	.byte	0x4
	.value	0x6ef
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF579
	.byte	0x4
	.value	0x6f0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF580
	.byte	0x4
	.value	0x6f1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF581
	.byte	0x4
	.value	0x6f2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF582
	.byte	0x4
	.value	0x6f3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF583
	.byte	0x4
	.value	0x6f4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF584
	.byte	0x4
	.value	0x6f5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF585
	.byte	0x4
	.value	0x6f7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF586
	.byte	0x4
	.value	0x6f8
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF587
	.byte	0x4
	.value	0x6f9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF588
	.byte	0x4
	.value	0x6fa
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF589
	.byte	0x4
	.value	0x6fb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF590
	.byte	0x4
	.value	0x6fc
	.long	0x266
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF591
	.byte	0x4
	.value	0x6fd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF473
	.byte	0x4
	.value	0x6ff
	.long	0x266
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF592
	.byte	0x4
	.value	0x700
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF474
	.byte	0x4
	.value	0x701
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF593
	.byte	0x4
	.value	0x702
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF421
	.byte	0x4
	.value	0x705
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF422
	.byte	0x4
	.value	0x706
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF423
	.byte	0x4
	.value	0x707
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF424
	.byte	0x4
	.value	0x708
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF425
	.byte	0x4
	.value	0x709
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF426
	.byte	0x4
	.value	0x70a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF427
	.byte	0x4
	.value	0x70b
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF594
	.byte	0x4
	.value	0x70c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x19
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x13fa
	.byte	0x38
	.uleb128 0x10
	.long	.LASF464
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x10
	.long	.LASF479
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x10
	.long	.LASF485
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x10
	.long	.LASF595
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x10
	.long	.LASF596
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x10
	.long	.LASF597
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x10
	.long	.LASF457
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x10
	.long	.LASF598
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x10
	.long	.LASF599
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x10
	.long	.LASF465
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x19
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x10
	.long	.LASF600
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x19
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1422
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF601
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF602
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF603
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF604
	.byte	0x4
	.value	0x73b
	.long	0x26f
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF487
	.byte	0x4
	.value	0x73d
	.long	0x1c63
	.byte	0xc8
	.byte	0
	.uleb128 0x1d
	.long	.LASF606
	.uleb128 0x3
	.byte	0x8
	.long	0x1c5e
	.uleb128 0x21
	.long	.LASF607
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x1daf
	.uleb128 0x17
	.long	.LASF608
	.sleb128 0
	.uleb128 0x17
	.long	.LASF609
	.sleb128 1
	.uleb128 0x17
	.long	.LASF610
	.sleb128 2
	.uleb128 0x17
	.long	.LASF611
	.sleb128 3
	.uleb128 0x17
	.long	.LASF612
	.sleb128 4
	.uleb128 0x17
	.long	.LASF613
	.sleb128 5
	.uleb128 0x17
	.long	.LASF614
	.sleb128 6
	.uleb128 0x17
	.long	.LASF615
	.sleb128 7
	.uleb128 0x17
	.long	.LASF616
	.sleb128 8
	.uleb128 0x17
	.long	.LASF617
	.sleb128 9
	.uleb128 0x17
	.long	.LASF618
	.sleb128 10
	.uleb128 0x17
	.long	.LASF619
	.sleb128 11
	.uleb128 0x17
	.long	.LASF620
	.sleb128 12
	.uleb128 0x17
	.long	.LASF621
	.sleb128 13
	.uleb128 0x17
	.long	.LASF622
	.sleb128 14
	.uleb128 0x17
	.long	.LASF623
	.sleb128 15
	.uleb128 0x17
	.long	.LASF624
	.sleb128 16
	.uleb128 0x17
	.long	.LASF625
	.sleb128 17
	.uleb128 0x17
	.long	.LASF626
	.sleb128 18
	.uleb128 0x17
	.long	.LASF627
	.sleb128 19
	.uleb128 0x17
	.long	.LASF628
	.sleb128 20
	.uleb128 0x17
	.long	.LASF629
	.sleb128 21
	.uleb128 0x17
	.long	.LASF630
	.sleb128 22
	.uleb128 0x17
	.long	.LASF631
	.sleb128 23
	.uleb128 0x17
	.long	.LASF632
	.sleb128 24
	.uleb128 0x17
	.long	.LASF633
	.sleb128 25
	.uleb128 0x17
	.long	.LASF634
	.sleb128 26
	.uleb128 0x17
	.long	.LASF635
	.sleb128 27
	.uleb128 0x17
	.long	.LASF636
	.sleb128 28
	.uleb128 0x17
	.long	.LASF637
	.sleb128 29
	.uleb128 0x17
	.long	.LASF638
	.sleb128 30
	.uleb128 0x17
	.long	.LASF639
	.sleb128 31
	.uleb128 0x17
	.long	.LASF640
	.sleb128 32
	.uleb128 0x17
	.long	.LASF641
	.sleb128 33
	.uleb128 0x17
	.long	.LASF642
	.sleb128 34
	.uleb128 0x17
	.long	.LASF643
	.sleb128 35
	.uleb128 0x17
	.long	.LASF644
	.sleb128 36
	.uleb128 0x17
	.long	.LASF645
	.sleb128 37
	.uleb128 0x17
	.long	.LASF646
	.sleb128 38
	.uleb128 0x17
	.long	.LASF647
	.sleb128 39
	.uleb128 0x17
	.long	.LASF648
	.sleb128 40
	.uleb128 0x17
	.long	.LASF649
	.sleb128 41
	.uleb128 0x17
	.long	.LASF650
	.sleb128 42
	.uleb128 0x17
	.long	.LASF651
	.sleb128 43
	.uleb128 0x17
	.long	.LASF652
	.sleb128 44
	.uleb128 0x17
	.long	.LASF653
	.sleb128 45
	.uleb128 0x17
	.long	.LASF654
	.sleb128 46
	.uleb128 0x17
	.long	.LASF655
	.sleb128 47
	.uleb128 0x17
	.long	.LASF656
	.sleb128 48
	.uleb128 0x17
	.long	.LASF657
	.sleb128 49
	.uleb128 0x17
	.long	.LASF658
	.sleb128 50
	.uleb128 0x17
	.long	.LASF659
	.sleb128 51
	.byte	0
	.uleb128 0x21
	.long	.LASF660
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x1e05
	.uleb128 0x17
	.long	.LASF661
	.sleb128 0
	.uleb128 0x17
	.long	.LASF662
	.sleb128 1
	.uleb128 0x17
	.long	.LASF663
	.sleb128 2
	.uleb128 0x17
	.long	.LASF664
	.sleb128 3
	.uleb128 0x17
	.long	.LASF665
	.sleb128 4
	.uleb128 0x17
	.long	.LASF666
	.sleb128 5
	.uleb128 0x17
	.long	.LASF667
	.sleb128 6
	.uleb128 0x17
	.long	.LASF668
	.sleb128 7
	.uleb128 0x17
	.long	.LASF669
	.sleb128 8
	.uleb128 0x17
	.long	.LASF670
	.sleb128 9
	.uleb128 0x17
	.long	.LASF671
	.sleb128 10
	.uleb128 0x17
	.long	.LASF672
	.sleb128 11
	.byte	0
	.uleb128 0xf
	.long	.LASF673
	.byte	0x20
	.byte	0x4
	.value	0x885
	.long	0x1e6e
	.uleb128 0x10
	.long	.LASF479
	.byte	0x4
	.value	0x889
	.long	0x1e6e
	.byte	0
	.uleb128 0x10
	.long	.LASF674
	.byte	0x4
	.value	0x88b
	.long	0x1de
	.byte	0x8
	.uleb128 0x10
	.long	.LASF675
	.byte	0x4
	.value	0x88e
	.long	0x1de
	.byte	0xc
	.uleb128 0x10
	.long	.LASF676
	.byte	0x4
	.value	0x896
	.long	0x1e73
	.byte	0x10
	.uleb128 0x10
	.long	.LASF677
	.byte	0x4
	.value	0x899
	.long	0x1e73
	.byte	0x11
	.uleb128 0x10
	.long	.LASF678
	.byte	0x4
	.value	0x89e
	.long	0x1e73
	.byte	0x12
	.uleb128 0x10
	.long	.LASF679
	.byte	0x4
	.value	0x8ad
	.long	0x1eae
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x4bd
	.uleb128 0xc
	.long	0x1e78
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF680
	.uleb128 0x22
	.long	0x123
	.long	0x1ea2
	.uleb128 0x23
	.long	0x1ea2
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0x1ea8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x3
	.byte	0x8
	.long	0x1e78
	.uleb128 0xc
	.long	0x1eb3
	.uleb128 0x3
	.byte	0x8
	.long	0x1e7f
	.uleb128 0xf
	.long	.LASF681
	.byte	0x48
	.byte	0x4
	.value	0x91c
	.long	0x1f47
	.uleb128 0x19
	.string	"t"
	.byte	0x4
	.value	0x91f
	.long	0x123
	.byte	0
	.uleb128 0x10
	.long	.LASF682
	.byte	0x4
	.value	0x922
	.long	0x123
	.byte	0x8
	.uleb128 0x10
	.long	.LASF683
	.byte	0x4
	.value	0x924
	.long	0x266
	.byte	0x10
	.uleb128 0x10
	.long	.LASF684
	.byte	0x4
	.value	0x926
	.long	0x123
	.byte	0x18
	.uleb128 0x10
	.long	.LASF685
	.byte	0x4
	.value	0x928
	.long	0x266
	.byte	0x20
	.uleb128 0x10
	.long	.LASF686
	.byte	0x4
	.value	0x92a
	.long	0x266
	.byte	0x24
	.uleb128 0x10
	.long	.LASF687
	.byte	0x4
	.value	0x92d
	.long	0x266
	.byte	0x28
	.uleb128 0x10
	.long	.LASF688
	.byte	0x4
	.value	0x92f
	.long	0x123
	.byte	0x30
	.uleb128 0x10
	.long	.LASF689
	.byte	0x4
	.value	0x932
	.long	0x123
	.byte	0x38
	.uleb128 0x10
	.long	.LASF690
	.byte	0x4
	.value	0x933
	.long	0x1e3
	.byte	0x40
	.byte	0
	.uleb128 0x11
	.long	.LASF691
	.byte	0x4
	.value	0x934
	.long	0x1f53
	.uleb128 0x3
	.byte	0x8
	.long	0x1eb9
	.uleb128 0x21
	.long	.LASF692
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x1f91
	.uleb128 0x17
	.long	.LASF693
	.sleb128 0
	.uleb128 0x17
	.long	.LASF694
	.sleb128 1
	.uleb128 0x17
	.long	.LASF695
	.sleb128 2
	.uleb128 0x17
	.long	.LASF696
	.sleb128 3
	.uleb128 0x17
	.long	.LASF697
	.sleb128 4
	.uleb128 0x17
	.long	.LASF698
	.sleb128 5
	.uleb128 0x17
	.long	.LASF699
	.sleb128 6
	.byte	0
	.uleb128 0x16
	.long	.LASF700
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x238d
	.uleb128 0x17
	.long	.LASF701
	.sleb128 0
	.uleb128 0x24
	.string	"NIL"
	.sleb128 1
	.uleb128 0x17
	.long	.LASF702
	.sleb128 2
	.uleb128 0x17
	.long	.LASF703
	.sleb128 3
	.uleb128 0x17
	.long	.LASF704
	.sleb128 4
	.uleb128 0x17
	.long	.LASF705
	.sleb128 5
	.uleb128 0x17
	.long	.LASF706
	.sleb128 6
	.uleb128 0x17
	.long	.LASF707
	.sleb128 7
	.uleb128 0x17
	.long	.LASF708
	.sleb128 8
	.uleb128 0x17
	.long	.LASF709
	.sleb128 9
	.uleb128 0x17
	.long	.LASF710
	.sleb128 10
	.uleb128 0x17
	.long	.LASF711
	.sleb128 11
	.uleb128 0x17
	.long	.LASF712
	.sleb128 12
	.uleb128 0x17
	.long	.LASF713
	.sleb128 13
	.uleb128 0x17
	.long	.LASF714
	.sleb128 14
	.uleb128 0x17
	.long	.LASF715
	.sleb128 15
	.uleb128 0x17
	.long	.LASF716
	.sleb128 16
	.uleb128 0x17
	.long	.LASF717
	.sleb128 17
	.uleb128 0x17
	.long	.LASF718
	.sleb128 18
	.uleb128 0x17
	.long	.LASF719
	.sleb128 19
	.uleb128 0x17
	.long	.LASF720
	.sleb128 20
	.uleb128 0x17
	.long	.LASF721
	.sleb128 21
	.uleb128 0x17
	.long	.LASF722
	.sleb128 22
	.uleb128 0x17
	.long	.LASF723
	.sleb128 23
	.uleb128 0x17
	.long	.LASF724
	.sleb128 24
	.uleb128 0x17
	.long	.LASF725
	.sleb128 25
	.uleb128 0x17
	.long	.LASF726
	.sleb128 26
	.uleb128 0x17
	.long	.LASF727
	.sleb128 27
	.uleb128 0x17
	.long	.LASF728
	.sleb128 28
	.uleb128 0x17
	.long	.LASF729
	.sleb128 29
	.uleb128 0x17
	.long	.LASF730
	.sleb128 30
	.uleb128 0x17
	.long	.LASF731
	.sleb128 31
	.uleb128 0x17
	.long	.LASF732
	.sleb128 32
	.uleb128 0x17
	.long	.LASF733
	.sleb128 33
	.uleb128 0x17
	.long	.LASF734
	.sleb128 34
	.uleb128 0x17
	.long	.LASF735
	.sleb128 35
	.uleb128 0x17
	.long	.LASF736
	.sleb128 36
	.uleb128 0x17
	.long	.LASF737
	.sleb128 37
	.uleb128 0x17
	.long	.LASF738
	.sleb128 38
	.uleb128 0x17
	.long	.LASF739
	.sleb128 39
	.uleb128 0x17
	.long	.LASF740
	.sleb128 40
	.uleb128 0x17
	.long	.LASF741
	.sleb128 41
	.uleb128 0x17
	.long	.LASF742
	.sleb128 42
	.uleb128 0x17
	.long	.LASF743
	.sleb128 43
	.uleb128 0x17
	.long	.LASF744
	.sleb128 44
	.uleb128 0x17
	.long	.LASF745
	.sleb128 45
	.uleb128 0x17
	.long	.LASF746
	.sleb128 46
	.uleb128 0x24
	.string	"SET"
	.sleb128 47
	.uleb128 0x24
	.string	"USE"
	.sleb128 48
	.uleb128 0x17
	.long	.LASF747
	.sleb128 49
	.uleb128 0x17
	.long	.LASF748
	.sleb128 50
	.uleb128 0x17
	.long	.LASF749
	.sleb128 51
	.uleb128 0x17
	.long	.LASF750
	.sleb128 52
	.uleb128 0x17
	.long	.LASF751
	.sleb128 53
	.uleb128 0x17
	.long	.LASF752
	.sleb128 54
	.uleb128 0x17
	.long	.LASF753
	.sleb128 55
	.uleb128 0x17
	.long	.LASF754
	.sleb128 56
	.uleb128 0x17
	.long	.LASF755
	.sleb128 57
	.uleb128 0x17
	.long	.LASF756
	.sleb128 58
	.uleb128 0x24
	.string	"PC"
	.sleb128 59
	.uleb128 0x17
	.long	.LASF757
	.sleb128 60
	.uleb128 0x24
	.string	"REG"
	.sleb128 61
	.uleb128 0x17
	.long	.LASF758
	.sleb128 62
	.uleb128 0x17
	.long	.LASF759
	.sleb128 63
	.uleb128 0x17
	.long	.LASF760
	.sleb128 64
	.uleb128 0x17
	.long	.LASF761
	.sleb128 65
	.uleb128 0x24
	.string	"MEM"
	.sleb128 66
	.uleb128 0x17
	.long	.LASF762
	.sleb128 67
	.uleb128 0x17
	.long	.LASF763
	.sleb128 68
	.uleb128 0x24
	.string	"CC0"
	.sleb128 69
	.uleb128 0x17
	.long	.LASF764
	.sleb128 70
	.uleb128 0x17
	.long	.LASF765
	.sleb128 71
	.uleb128 0x17
	.long	.LASF766
	.sleb128 72
	.uleb128 0x17
	.long	.LASF767
	.sleb128 73
	.uleb128 0x17
	.long	.LASF768
	.sleb128 74
	.uleb128 0x17
	.long	.LASF769
	.sleb128 75
	.uleb128 0x17
	.long	.LASF770
	.sleb128 76
	.uleb128 0x24
	.string	"NEG"
	.sleb128 77
	.uleb128 0x17
	.long	.LASF771
	.sleb128 78
	.uleb128 0x24
	.string	"DIV"
	.sleb128 79
	.uleb128 0x24
	.string	"MOD"
	.sleb128 80
	.uleb128 0x17
	.long	.LASF772
	.sleb128 81
	.uleb128 0x17
	.long	.LASF773
	.sleb128 82
	.uleb128 0x24
	.string	"AND"
	.sleb128 83
	.uleb128 0x24
	.string	"IOR"
	.sleb128 84
	.uleb128 0x24
	.string	"XOR"
	.sleb128 85
	.uleb128 0x24
	.string	"NOT"
	.sleb128 86
	.uleb128 0x17
	.long	.LASF774
	.sleb128 87
	.uleb128 0x17
	.long	.LASF775
	.sleb128 88
	.uleb128 0x17
	.long	.LASF776
	.sleb128 89
	.uleb128 0x17
	.long	.LASF777
	.sleb128 90
	.uleb128 0x17
	.long	.LASF778
	.sleb128 91
	.uleb128 0x17
	.long	.LASF779
	.sleb128 92
	.uleb128 0x17
	.long	.LASF780
	.sleb128 93
	.uleb128 0x17
	.long	.LASF781
	.sleb128 94
	.uleb128 0x17
	.long	.LASF782
	.sleb128 95
	.uleb128 0x17
	.long	.LASF783
	.sleb128 96
	.uleb128 0x17
	.long	.LASF784
	.sleb128 97
	.uleb128 0x17
	.long	.LASF785
	.sleb128 98
	.uleb128 0x17
	.long	.LASF786
	.sleb128 99
	.uleb128 0x17
	.long	.LASF787
	.sleb128 100
	.uleb128 0x17
	.long	.LASF788
	.sleb128 101
	.uleb128 0x24
	.string	"NE"
	.sleb128 102
	.uleb128 0x24
	.string	"EQ"
	.sleb128 103
	.uleb128 0x24
	.string	"GE"
	.sleb128 104
	.uleb128 0x24
	.string	"GT"
	.sleb128 105
	.uleb128 0x24
	.string	"LE"
	.sleb128 106
	.uleb128 0x24
	.string	"LT"
	.sleb128 107
	.uleb128 0x24
	.string	"GEU"
	.sleb128 108
	.uleb128 0x24
	.string	"GTU"
	.sleb128 109
	.uleb128 0x24
	.string	"LEU"
	.sleb128 110
	.uleb128 0x24
	.string	"LTU"
	.sleb128 111
	.uleb128 0x17
	.long	.LASF789
	.sleb128 112
	.uleb128 0x17
	.long	.LASF790
	.sleb128 113
	.uleb128 0x17
	.long	.LASF791
	.sleb128 114
	.uleb128 0x17
	.long	.LASF792
	.sleb128 115
	.uleb128 0x17
	.long	.LASF793
	.sleb128 116
	.uleb128 0x17
	.long	.LASF794
	.sleb128 117
	.uleb128 0x17
	.long	.LASF795
	.sleb128 118
	.uleb128 0x17
	.long	.LASF796
	.sleb128 119
	.uleb128 0x17
	.long	.LASF797
	.sleb128 120
	.uleb128 0x17
	.long	.LASF798
	.sleb128 121
	.uleb128 0x17
	.long	.LASF799
	.sleb128 122
	.uleb128 0x17
	.long	.LASF800
	.sleb128 123
	.uleb128 0x17
	.long	.LASF801
	.sleb128 124
	.uleb128 0x17
	.long	.LASF802
	.sleb128 125
	.uleb128 0x24
	.string	"FIX"
	.sleb128 126
	.uleb128 0x17
	.long	.LASF803
	.sleb128 127
	.uleb128 0x17
	.long	.LASF804
	.sleb128 128
	.uleb128 0x24
	.string	"ABS"
	.sleb128 129
	.uleb128 0x17
	.long	.LASF805
	.sleb128 130
	.uleb128 0x24
	.string	"FFS"
	.sleb128 131
	.uleb128 0x17
	.long	.LASF806
	.sleb128 132
	.uleb128 0x17
	.long	.LASF807
	.sleb128 133
	.uleb128 0x17
	.long	.LASF808
	.sleb128 134
	.uleb128 0x17
	.long	.LASF809
	.sleb128 135
	.uleb128 0x17
	.long	.LASF810
	.sleb128 136
	.uleb128 0x17
	.long	.LASF811
	.sleb128 137
	.uleb128 0x17
	.long	.LASF812
	.sleb128 138
	.uleb128 0x17
	.long	.LASF813
	.sleb128 139
	.uleb128 0x17
	.long	.LASF814
	.sleb128 140
	.uleb128 0x17
	.long	.LASF815
	.sleb128 141
	.uleb128 0x17
	.long	.LASF816
	.sleb128 142
	.uleb128 0x17
	.long	.LASF817
	.sleb128 143
	.uleb128 0x17
	.long	.LASF818
	.sleb128 144
	.uleb128 0x17
	.long	.LASF819
	.sleb128 145
	.uleb128 0x17
	.long	.LASF820
	.sleb128 146
	.uleb128 0x17
	.long	.LASF821
	.sleb128 147
	.uleb128 0x17
	.long	.LASF822
	.sleb128 148
	.uleb128 0x17
	.long	.LASF823
	.sleb128 149
	.uleb128 0x17
	.long	.LASF824
	.sleb128 150
	.uleb128 0x17
	.long	.LASF825
	.sleb128 151
	.uleb128 0x24
	.string	"PHI"
	.sleb128 152
	.uleb128 0x17
	.long	.LASF826
	.sleb128 153
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x240e
	.uleb128 0x5
	.long	.LASF827
	.byte	0x2
	.byte	0x47
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF828
	.byte	0x2
	.byte	0x49
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF829
	.byte	0x2
	.byte	0x4a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF830
	.byte	0x2
	.byte	0x4c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF831
	.byte	0x2
	.byte	0x4e
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF832
	.byte	0x2
	.byte	0x50
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF833
	.byte	0x2
	.byte	0x53
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF834
	.byte	0x2
	.byte	0x55
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF835
	.byte	0x2
	.byte	0x56
	.long	0x238d
	.uleb128 0x1a
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x245e
	.uleb128 0x8
	.long	.LASF836
	.byte	0x2
	.byte	0x5e
	.long	0x26f
	.byte	0
	.uleb128 0x8
	.long	.LASF491
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF682
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF463
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF475
	.byte	0x2
	.byte	0x62
	.long	0x266
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF837
	.byte	0x2
	.byte	0x63
	.long	0x2419
	.uleb128 0x25
	.long	.LASF839
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x2504
	.uleb128 0x26
	.long	.LASF840
	.byte	0x2
	.byte	0x69
	.long	0x26f
	.uleb128 0x26
	.long	.LASF841
	.byte	0x2
	.byte	0x6a
	.long	0x1e3
	.uleb128 0x26
	.long	.LASF842
	.byte	0x2
	.byte	0x6b
	.long	0x266
	.uleb128 0x26
	.long	.LASF843
	.byte	0x2
	.byte	0x6c
	.long	0x4bd
	.uleb128 0x27
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x26
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x26
	.long	.LASF844
	.byte	0x2
	.byte	0x6f
	.long	0x4dc
	.uleb128 0x26
	.long	.LASF845
	.byte	0x2
	.byte	0x70
	.long	0x240e
	.uleb128 0x26
	.long	.LASF846
	.byte	0x2
	.byte	0x71
	.long	0x2509
	.uleb128 0x26
	.long	.LASF847
	.byte	0x2
	.byte	0x72
	.long	0x2514
	.uleb128 0x26
	.long	.LASF848
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x27
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x251f
	.uleb128 0x26
	.long	.LASF849
	.byte	0x2
	.byte	0x75
	.long	0x2525
	.byte	0
	.uleb128 0x1d
	.long	.LASF850
	.uleb128 0x3
	.byte	0x8
	.long	0x2504
	.uleb128 0x1d
	.long	.LASF851
	.uleb128 0x3
	.byte	0x8
	.long	0x250f
	.uleb128 0x1d
	.long	.LASF852
	.uleb128 0x3
	.byte	0x8
	.long	0x251a
	.uleb128 0x3
	.byte	0x8
	.long	0x245e
	.uleb128 0x7
	.long	.LASF853
	.byte	0x2
	.byte	0x76
	.long	0x2469
	.uleb128 0x14
	.long	0x252b
	.long	0x2546
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2d
	.long	0x2556
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF854
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0x2605
	.uleb128 0x17
	.long	.LASF855
	.sleb128 -100
	.uleb128 0x17
	.long	.LASF856
	.sleb128 -99
	.uleb128 0x17
	.long	.LASF857
	.sleb128 -98
	.uleb128 0x17
	.long	.LASF858
	.sleb128 -97
	.uleb128 0x17
	.long	.LASF859
	.sleb128 -96
	.uleb128 0x17
	.long	.LASF860
	.sleb128 -95
	.uleb128 0x17
	.long	.LASF861
	.sleb128 -94
	.uleb128 0x17
	.long	.LASF862
	.sleb128 -93
	.uleb128 0x17
	.long	.LASF863
	.sleb128 -92
	.uleb128 0x17
	.long	.LASF864
	.sleb128 -91
	.uleb128 0x17
	.long	.LASF865
	.sleb128 -90
	.uleb128 0x17
	.long	.LASF866
	.sleb128 -89
	.uleb128 0x17
	.long	.LASF867
	.sleb128 -88
	.uleb128 0x17
	.long	.LASF868
	.sleb128 -87
	.uleb128 0x17
	.long	.LASF869
	.sleb128 -86
	.uleb128 0x17
	.long	.LASF870
	.sleb128 -85
	.uleb128 0x17
	.long	.LASF871
	.sleb128 -84
	.uleb128 0x17
	.long	.LASF872
	.sleb128 -83
	.uleb128 0x17
	.long	.LASF873
	.sleb128 -82
	.uleb128 0x17
	.long	.LASF874
	.sleb128 -81
	.uleb128 0x17
	.long	.LASF875
	.sleb128 -80
	.uleb128 0x17
	.long	.LASF876
	.sleb128 -79
	.uleb128 0x17
	.long	.LASF877
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0x21
	.long	.LASF878
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0x2661
	.uleb128 0x17
	.long	.LASF879
	.sleb128 0
	.uleb128 0x17
	.long	.LASF880
	.sleb128 1
	.uleb128 0x17
	.long	.LASF881
	.sleb128 2
	.uleb128 0x17
	.long	.LASF882
	.sleb128 3
	.uleb128 0x17
	.long	.LASF883
	.sleb128 4
	.uleb128 0x17
	.long	.LASF884
	.sleb128 5
	.uleb128 0x17
	.long	.LASF885
	.sleb128 6
	.uleb128 0x17
	.long	.LASF886
	.sleb128 7
	.uleb128 0x17
	.long	.LASF887
	.sleb128 8
	.uleb128 0x17
	.long	.LASF888
	.sleb128 9
	.uleb128 0x17
	.long	.LASF889
	.sleb128 10
	.uleb128 0x17
	.long	.LASF890
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF891
	.byte	0x18
	.byte	0xd
	.byte	0x16
	.long	0x269e
	.uleb128 0x8
	.long	.LASF892
	.byte	0xd
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF893
	.byte	0xd
	.byte	0x19
	.long	0x4dc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF894
	.byte	0xd
	.byte	0x1a
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF895
	.byte	0xd
	.byte	0x1b
	.long	0x269e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2661
	.uleb128 0x4
	.long	.LASF896
	.byte	0x20
	.byte	0xd
	.byte	0x23
	.long	0x26e1
	.uleb128 0x8
	.long	.LASF897
	.byte	0xd
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF898
	.byte	0xd
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF899
	.byte	0xd
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF895
	.byte	0xd
	.byte	0x28
	.long	0x26e1
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x26a4
	.uleb128 0x4
	.long	.LASF900
	.byte	0x58
	.byte	0xd
	.byte	0x35
	.long	0x2790
	.uleb128 0x8
	.long	.LASF901
	.byte	0xd
	.byte	0x39
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF902
	.byte	0xd
	.byte	0x3c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF903
	.byte	0xd
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF904
	.byte	0xd
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF899
	.byte	0xd
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF896
	.byte	0xd
	.byte	0x4f
	.long	0x26e1
	.byte	0x20
	.uleb128 0x8
	.long	.LASF905
	.byte	0xd
	.byte	0x53
	.long	0x1e3
	.byte	0x28
	.uleb128 0x8
	.long	.LASF906
	.byte	0xd
	.byte	0x57
	.long	0x1e3
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF907
	.byte	0xd
	.byte	0x58
	.long	0x4bd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF908
	.byte	0xd
	.byte	0x5e
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF909
	.byte	0xd
	.byte	0x63
	.long	0x2790
	.byte	0x40
	.uleb128 0x8
	.long	.LASF910
	.byte	0xd
	.byte	0x67
	.long	0x1ea2
	.byte	0x48
	.uleb128 0x8
	.long	.LASF911
	.byte	0xd
	.byte	0x6b
	.long	0x2605
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x288
	.uleb128 0x4
	.long	.LASF912
	.byte	0x30
	.byte	0xd
	.byte	0x77
	.long	0x27f7
	.uleb128 0x8
	.long	.LASF913
	.byte	0xd
	.byte	0x7b
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF914
	.byte	0xd
	.byte	0x8c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF915
	.byte	0xd
	.byte	0x92
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF916
	.byte	0xd
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF917
	.byte	0xd
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF918
	.byte	0xd
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF919
	.byte	0xd
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1d
	.long	.LASF920
	.uleb128 0x3
	.byte	0x8
	.long	0x27f7
	.uleb128 0x1d
	.long	.LASF921
	.uleb128 0x3
	.byte	0x8
	.long	0x2802
	.uleb128 0x3
	.byte	0x8
	.long	0x2796
	.uleb128 0x3
	.byte	0x8
	.long	0x26e7
	.uleb128 0x1d
	.long	.LASF922
	.uleb128 0x3
	.byte	0x8
	.long	0x2819
	.uleb128 0x1d
	.long	.LASF923
	.uleb128 0x3
	.byte	0x8
	.long	0x2824
	.uleb128 0x1d
	.long	.LASF924
	.uleb128 0x3
	.byte	0x8
	.long	0x282f
	.uleb128 0x1d
	.long	.LASF925
	.uleb128 0x3
	.byte	0x8
	.long	0x283a
	.uleb128 0x1d
	.long	.LASF926
	.uleb128 0x3
	.byte	0x8
	.long	0x2845
	.uleb128 0x4
	.long	.LASF927
	.byte	0x20
	.byte	0xe
	.byte	0x39
	.long	0x2889
	.uleb128 0x6
	.string	"hi"
	.byte	0xe
	.byte	0x3b
	.long	0x4bd
	.byte	0
	.uleb128 0x6
	.string	"si"
	.byte	0xe
	.byte	0x3c
	.long	0x4bd
	.byte	0x8
	.uleb128 0x6
	.string	"di"
	.byte	0xe
	.byte	0x3d
	.long	0x4bd
	.byte	0x10
	.uleb128 0x6
	.string	"ti"
	.byte	0xe
	.byte	0x3e
	.long	0x4bd
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF928
	.byte	0xa8
	.byte	0xe
	.byte	0x32
	.long	0x294a
	.uleb128 0x8
	.long	.LASF929
	.byte	0xe
	.byte	0x35
	.long	0x4bd
	.byte	0
	.uleb128 0x8
	.long	.LASF930
	.byte	0xe
	.byte	0x35
	.long	0x4bd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF931
	.byte	0xe
	.byte	0x38
	.long	0x4bd
	.byte	0x10
	.uleb128 0x8
	.long	.LASF932
	.byte	0xe
	.byte	0x3f
	.long	0x2850
	.byte	0x18
	.uleb128 0x8
	.long	.LASF933
	.byte	0xe
	.byte	0x3f
	.long	0x2850
	.byte	0x38
	.uleb128 0x8
	.long	.LASF934
	.byte	0xe
	.byte	0x46
	.long	0x2963
	.byte	0x58
	.uleb128 0x8
	.long	.LASF935
	.byte	0xe
	.byte	0x49
	.long	0x297f
	.byte	0x60
	.uleb128 0x8
	.long	.LASF936
	.byte	0xe
	.byte	0x4c
	.long	0x2990
	.byte	0x68
	.uleb128 0x8
	.long	.LASF937
	.byte	0xe
	.byte	0x4f
	.long	0x2990
	.byte	0x70
	.uleb128 0x8
	.long	.LASF938
	.byte	0xe
	.byte	0x52
	.long	0x297f
	.byte	0x78
	.uleb128 0x8
	.long	.LASF939
	.byte	0xe
	.byte	0x56
	.long	0x29a6
	.byte	0x80
	.uleb128 0x8
	.long	.LASF940
	.byte	0xe
	.byte	0x59
	.long	0x29ad
	.byte	0x88
	.uleb128 0x8
	.long	.LASF941
	.byte	0xe
	.byte	0x5c
	.long	0x29ad
	.byte	0x90
	.uleb128 0x8
	.long	.LASF942
	.byte	0xe
	.byte	0x5f
	.long	0x29c3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF943
	.byte	0xe
	.byte	0x62
	.long	0x29c3
	.byte	0xa0
	.byte	0
	.uleb128 0x22
	.long	0x1e78
	.long	0x2963
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x266
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x294a
	.uleb128 0x28
	.long	0x2979
	.uleb128 0x23
	.long	0x2979
	.uleb128 0x23
	.long	0x26f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c7
	.uleb128 0x3
	.byte	0x8
	.long	0x2969
	.uleb128 0x28
	.long	0x2990
	.uleb128 0x23
	.long	0x2979
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2985
	.uleb128 0x28
	.long	0x29a6
	.uleb128 0x23
	.long	0x4bd
	.uleb128 0x23
	.long	0x266
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2996
	.uleb128 0x29
	.uleb128 0x3
	.byte	0x8
	.long	0x29ac
	.uleb128 0x28
	.long	0x29c3
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x29b3
	.uleb128 0x4
	.long	.LASF944
	.byte	0x48
	.byte	0xe
	.byte	0x66
	.long	0x2a42
	.uleb128 0x8
	.long	.LASF945
	.byte	0xe
	.byte	0x6b
	.long	0x2a60
	.byte	0
	.uleb128 0x8
	.long	.LASF946
	.byte	0xe
	.byte	0x6f
	.long	0x2a7a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF947
	.byte	0xe
	.byte	0x74
	.long	0x2a85
	.byte	0x10
	.uleb128 0x8
	.long	.LASF948
	.byte	0xe
	.byte	0x78
	.long	0x2aa9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF949
	.byte	0xe
	.byte	0x7b
	.long	0x2ac4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF950
	.byte	0xe
	.byte	0x7e
	.long	0x2ada
	.byte	0x28
	.uleb128 0x8
	.long	.LASF951
	.byte	0xe
	.byte	0x82
	.long	0x2b03
	.byte	0x30
	.uleb128 0x8
	.long	.LASF952
	.byte	0xe
	.byte	0x83
	.long	0x2b03
	.byte	0x38
	.uleb128 0x8
	.long	.LASF953
	.byte	0xe
	.byte	0x8a
	.long	0x2b1d
	.byte	0x40
	.byte	0
	.uleb128 0x22
	.long	0x1e3
	.long	0x2a60
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
	.long	0x2a42
	.uleb128 0x22
	.long	0x1e3
	.long	0x2a7a
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2a66
	.uleb128 0x2a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x2a80
	.uleb128 0x22
	.long	0x1e3
	.long	0x2aa9
	.uleb128 0x23
	.long	0x2979
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2a8b
	.uleb128 0x28
	.long	0x2ac4
	.uleb128 0x23
	.long	0x2979
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2aaf
	.uleb128 0x28
	.long	0x2ada
	.uleb128 0x23
	.long	0x2979
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2aca
	.uleb128 0x22
	.long	0x1e3
	.long	0x2b03
	.uleb128 0x23
	.long	0x2979
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0x2605
	.uleb128 0x23
	.long	0x4d6
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ae0
	.uleb128 0x22
	.long	0x2d
	.long	0x2b1d
	.uleb128 0x23
	.long	0x1e3
	.uleb128 0x23
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2b09
	.uleb128 0x1e
	.long	.LASF954
	.value	0x158
	.byte	0xe
	.byte	0x2f
	.long	0x2bfd
	.uleb128 0x8
	.long	.LASF928
	.byte	0xe
	.byte	0x63
	.long	0x2889
	.byte	0
	.uleb128 0x8
	.long	.LASF944
	.byte	0xe
	.byte	0x8b
	.long	0x29c9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF955
	.byte	0xe
	.byte	0x8e
	.long	0x2c11
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF956
	.byte	0xe
	.byte	0x91
	.long	0x2c11
	.byte	0xf8
	.uleb128 0x2b
	.long	.LASF957
	.byte	0xe
	.byte	0x94
	.long	0x2c17
	.value	0x100
	.uleb128 0x2b
	.long	.LASF958
	.byte	0xe
	.byte	0x99
	.long	0x2c36
	.value	0x108
	.uleb128 0x2b
	.long	.LASF959
	.byte	0xe
	.byte	0x9c
	.long	0x2c47
	.value	0x110
	.uleb128 0x2b
	.long	.LASF960
	.byte	0xe
	.byte	0x9f
	.long	0x2c5d
	.value	0x118
	.uleb128 0x2b
	.long	.LASF961
	.byte	0xe
	.byte	0xa3
	.long	0x2c72
	.value	0x120
	.uleb128 0x2b
	.long	.LASF962
	.byte	0xe
	.byte	0xa7
	.long	0x2c72
	.value	0x128
	.uleb128 0x2b
	.long	.LASF963
	.byte	0xe
	.byte	0xaa
	.long	0x29ad
	.value	0x130
	.uleb128 0x2b
	.long	.LASF964
	.byte	0xe
	.byte	0xad
	.long	0x2c9b
	.value	0x138
	.uleb128 0x2b
	.long	.LASF965
	.byte	0xe
	.byte	0xb3
	.long	0x2cba
	.value	0x140
	.uleb128 0x2b
	.long	.LASF966
	.byte	0xe
	.byte	0xb6
	.long	0x1e78
	.value	0x148
	.uleb128 0x2b
	.long	.LASF967
	.byte	0xe
	.byte	0xba
	.long	0x1e78
	.value	0x149
	.uleb128 0x2b
	.long	.LASF968
	.byte	0xe
	.byte	0xbe
	.long	0x2cc5
	.value	0x150
	.byte	0
	.uleb128 0x22
	.long	0x123
	.long	0x2c11
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2bfd
	.uleb128 0x3
	.byte	0x8
	.long	0x2c1d
	.uleb128 0xc
	.long	0x1e05
	.uleb128 0x22
	.long	0x1e3
	.long	0x2c36
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c22
	.uleb128 0x28
	.long	0x2c47
	.uleb128 0x23
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c3c
	.uleb128 0x28
	.long	0x2c5d
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x1ea2
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c4d
	.uleb128 0x22
	.long	0x1e78
	.long	0x2c72
	.uleb128 0x23
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c63
	.uleb128 0x22
	.long	0x2d
	.long	0x2c9b
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x4dc
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c78
	.uleb128 0x22
	.long	0x266
	.long	0x2cba
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x4bd
	.uleb128 0x23
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ca1
	.uleb128 0x2a
	.long	0x1e78
	.uleb128 0x3
	.byte	0x8
	.long	0x2cc0
	.uleb128 0x2c
	.long	.LASF1042
	.byte	0x1
	.byte	0x4d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF969
	.byte	0x1
	.byte	0x55
	.long	0x123
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d20
	.uleb128 0x2e
	.long	.LASF404
	.byte	0x1
	.byte	0x57
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.byte	0x58
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF970
	.byte	0x1
	.byte	0x65
	.long	0x1e3
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d5c
	.uleb128 0x30
	.long	.LASF491
	.byte	0x1
	.byte	0x66
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.byte	0x68
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF971
	.byte	0x1
	.byte	0x73
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d88
	.uleb128 0x30
	.long	.LASF491
	.byte	0x1
	.byte	0x74
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF972
	.byte	0x1
	.byte	0x85
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dc7
	.uleb128 0x30
	.long	.LASF404
	.byte	0x1
	.byte	0x86
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF979
	.long	0x2dd7
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12241
	.byte	0
	.uleb128 0x14
	.long	0x2c0
	.long	0x2dd7
	.uleb128 0x15
	.long	0x1ea
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.long	0x2dc7
	.uleb128 0x33
	.long	.LASF973
	.byte	0x1
	.byte	0x92
	.long	0x123
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e0c
	.uleb128 0x30
	.long	.LASF463
	.byte	0x1
	.byte	0x93
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF974
	.byte	0x1
	.byte	0xcd
	.long	0x4dc
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e66
	.uleb128 0x30
	.long	.LASF463
	.byte	0x1
	.byte	0xce
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LASF975
	.byte	0x1
	.byte	0xcf
	.long	0x651
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF976
	.byte	0x1
	.byte	0xd0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF1
	.byte	0x1
	.byte	0xd2
	.long	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF977
	.byte	0x1
	.byte	0xe3
	.long	0x4dc
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2eb2
	.uleb128 0x30
	.long	.LASF463
	.byte	0x1
	.byte	0xe4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF975
	.byte	0x1
	.byte	0xe5
	.long	0x651
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LASF976
	.byte	0x1
	.byte	0xe6
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.long	.LASF978
	.byte	0x1
	.byte	0xf6
	.long	0x4dc
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f11
	.uleb128 0x30
	.long	.LASF463
	.byte	0x1
	.byte	0xf7
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LASF975
	.byte	0x1
	.byte	0xf8
	.long	0x651
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1
	.byte	0x1
	.byte	0xfa
	.long	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF979
	.long	0x2f21
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12267
	.byte	0
	.uleb128 0x14
	.long	0x2c0
	.long	0x2f21
	.uleb128 0x15
	.long	0x1ea
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.long	0x2f11
	.uleb128 0x34
	.long	.LASF980
	.byte	0x1
	.value	0x109
	.long	0x4dc
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f6b
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0x10a
	.long	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF979
	.long	0x2f6b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12282
	.byte	0
	.uleb128 0xc
	.long	0x2dc7
	.uleb128 0x34
	.long	.LASF981
	.byte	0x1
	.value	0x12c
	.long	0x123
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fc0
	.uleb128 0x35
	.long	.LASF445
	.byte	0x1
	.value	0x12d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF982
	.byte	0x1
	.value	0x12e
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.string	"arg"
	.byte	0x1
	.value	0x130
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF983
	.byte	0x1
	.value	0x138
	.long	0x123
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3010
	.uleb128 0x35
	.long	.LASF445
	.byte	0x1
	.value	0x139
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF982
	.byte	0x1
	.value	0x13a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.string	"arg"
	.byte	0x1
	.value	0x13c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF984
	.byte	0x1
	.value	0x14f
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x30e5
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x150
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF985
	.byte	0x1
	.value	0x151
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0x153
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	.LASF0
	.byte	0x1
	.value	0x154
	.long	0x69a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF979
	.long	0x30f5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12299
	.uleb128 0x39
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x30a2
	.uleb128 0x38
	.long	.LASF986
	.byte	0x1
	.value	0x1a0
	.long	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x38
	.long	.LASF463
	.byte	0x1
	.value	0x1c0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x38
	.long	.LASF987
	.byte	0x1
	.value	0x1c5
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2c0
	.long	0x30f5
	.uleb128 0x15
	.long	0x1ea
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.long	0x30e5
	.uleb128 0x3b
	.long	.LASF988
	.byte	0x1
	.value	0x1d6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3126
	.uleb128 0x3c
	.string	"f"
	.byte	0x1
	.value	0x1d7
	.long	0x3131
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	0x3131
	.uleb128 0x23
	.long	0x1f47
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3126
	.uleb128 0x34
	.long	.LASF989
	.byte	0x1
	.value	0x1e4
	.long	0x1f47
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3176
	.uleb128 0x3c
	.string	"t"
	.byte	0x1
	.value	0x1e5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"rli"
	.byte	0x1
	.value	0x1e7
	.long	0x1f47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF990
	.byte	0x1
	.value	0x206
	.long	0x123
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x31b7
	.uleb128 0x35
	.long	.LASF682
	.byte	0x1
	.value	0x207
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF684
	.byte	0x1
	.value	0x207
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x34
	.long	.LASF991
	.byte	0x1
	.value	0x20f
	.long	0x123
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x31f8
	.uleb128 0x35
	.long	.LASF682
	.byte	0x1
	.value	0x210
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF684
	.byte	0x1
	.value	0x210
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF992
	.byte	0x1
	.value	0x219
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3253
	.uleb128 0x35
	.long	.LASF993
	.byte	0x1
	.value	0x21a
	.long	0x1ea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF994
	.byte	0x1
	.value	0x21a
	.long	0x1ea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF488
	.byte	0x1
	.value	0x21b
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3c
	.string	"pos"
	.byte	0x1
	.value	0x21c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.long	.LASF995
	.byte	0x1
	.value	0x22c
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x32ae
	.uleb128 0x35
	.long	.LASF993
	.byte	0x1
	.value	0x22d
	.long	0x1ea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF994
	.byte	0x1
	.value	0x22d
	.long	0x1ea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF488
	.byte	0x1
	.value	0x22e
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3c
	.string	"pos"
	.byte	0x1
	.value	0x22f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.long	.LASF996
	.byte	0x1
	.value	0x23d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x331c
	.uleb128 0x35
	.long	.LASF993
	.byte	0x1
	.value	0x23e
	.long	0x1ea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF994
	.byte	0x1
	.value	0x23e
	.long	0x1ea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF488
	.byte	0x1
	.value	0x23f
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3a
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x38
	.long	.LASF997
	.byte	0x1
	.value	0x245
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF998
	.byte	0x1
	.value	0x255
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x334a
	.uleb128 0x3c
	.string	"rli"
	.byte	0x1
	.value	0x256
	.long	0x1f47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF999
	.byte	0x1
	.value	0x26d
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3378
	.uleb128 0x3c
	.string	"rli"
	.byte	0x1
	.value	0x26e
	.long	0x1f47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1000
	.byte	0x1
	.value	0x276
	.long	0x123
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x33aa
	.uleb128 0x3c
	.string	"rli"
	.byte	0x1
	.value	0x277
	.long	0x1f47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1001
	.byte	0x1
	.value	0x27f
	.long	0x123
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x33dc
	.uleb128 0x3c
	.string	"rli"
	.byte	0x1
	.value	0x280
	.long	0x1f47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1010
	.byte	0x1
	.value	0x288
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3449
	.uleb128 0x3c
	.string	"rli"
	.byte	0x1
	.value	0x289
	.long	0x1f47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1002
	.byte	0x1
	.value	0x28a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF1003
	.byte	0x1
	.value	0x28c
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x38
	.long	.LASF1004
	.byte	0x1
	.value	0x2af
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1005
	.byte	0x1
	.value	0x2cb
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x3582
	.uleb128 0x3c
	.string	"rli"
	.byte	0x1
	.value	0x2cc
	.long	0x1f47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.long	.LASF1002
	.byte	0x1
	.value	0x2cd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x38
	.long	.LASF1003
	.byte	0x1
	.value	0x2d0
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x38
	.long	.LASF985
	.byte	0x1
	.value	0x2d3
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x38
	.long	.LASF1006
	.byte	0x1
	.value	0x2d4
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x38
	.long	.LASF474
	.byte	0x1
	.value	0x2d5
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0x2d7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x39
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x34fd
	.uleb128 0x38
	.long	.LASF1004
	.byte	0x1
	.value	0x343
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x39
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x355f
	.uleb128 0x38
	.long	.LASF1004
	.byte	0x1
	.value	0x39d
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.long	.LASF1007
	.byte	0x1
	.value	0x39e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF1008
	.byte	0x1
	.value	0x39f
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF682
	.byte	0x1
	.value	0x3a0
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF1009
	.byte	0x1
	.value	0x3a1
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3a
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x38
	.long	.LASF1004
	.byte	0x1
	.value	0x3fb
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF1011
	.byte	0x1
	.value	0x44a
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3611
	.uleb128 0x3c
	.string	"rli"
	.byte	0x1
	.value	0x44b
	.long	0x1f47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1012
	.byte	0x1
	.value	0x44d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF1013
	.byte	0x1
	.value	0x44d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3a
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x38
	.long	.LASF1014
	.byte	0x1
	.value	0x482
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x38
	.long	.LASF479
	.byte	0x1
	.value	0x498
	.long	0x4bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1015
	.byte	0x1
	.value	0x4b2
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x367f
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x4b3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1002
	.byte	0x1
	.value	0x4b5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF1
	.byte	0x1
	.value	0x4b6
	.long	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x38
	.long	.LASF684
	.byte	0x1
	.value	0x4c6
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF1016
	.byte	0x1
	.value	0x50f
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x371a
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x510
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3a
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x38
	.long	.LASF1017
	.byte	0x1
	.value	0x54c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF463
	.byte	0x1
	.value	0x54e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	.LASF464
	.byte	0x1
	.value	0x54f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF475
	.byte	0x1
	.value	0x550
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.long	.LASF474
	.byte	0x1
	.value	0x551
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF1
	.byte	0x1
	.value	0x552
	.long	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1018
	.byte	0x1
	.value	0x567
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x3748
	.uleb128 0x3c
	.string	"rli"
	.byte	0x1
	.value	0x568
	.long	0x1f47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1019
	.byte	0x1
	.value	0x58a
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x3900
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x58b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x32
	.long	.LASF979
	.long	0x3900
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12411
	.uleb128 0x39
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x37af
	.uleb128 0x38
	.long	.LASF1020
	.byte	0x1
	.value	0x5c1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x39
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x37d5
	.uleb128 0x38
	.long	.LASF1021
	.byte	0x1
	.value	0x5e3
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x39
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x3888
	.uleb128 0x38
	.long	.LASF1022
	.byte	0x1
	.value	0x5f1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.long	.LASF1023
	.byte	0x1
	.value	0x5f2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3a
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x36
	.string	"ub"
	.byte	0x1
	.value	0x5fa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.string	"lb"
	.byte	0x1
	.value	0x5fb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF434
	.byte	0x1
	.value	0x5fc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF1024
	.byte	0x1
	.value	0x5fd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3a
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x38
	.long	.LASF1025
	.byte	0x1
	.value	0x60e
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF1026
	.byte	0x1
	.value	0x610
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x38bd
	.uleb128 0x38
	.long	.LASF1002
	.byte	0x1
	.value	0x664
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.string	"rli"
	.byte	0x1
	.value	0x665
	.long	0x1f47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x38
	.long	.LASF1027
	.byte	0x1
	.value	0x688
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x38
	.long	.LASF1028
	.byte	0x1
	.value	0x68a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x38
	.long	.LASF1029
	.byte	0x1
	.value	0x68d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x30e5
	.uleb128 0x34
	.long	.LASF1030
	.byte	0x1
	.value	0x6c2
	.long	0x123
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x3946
	.uleb128 0x35
	.long	.LASF466
	.byte	0x1
	.value	0x6c3
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0x6c5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1031
	.byte	0x1
	.value	0x6d0
	.long	0x123
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x3987
	.uleb128 0x35
	.long	.LASF466
	.byte	0x1
	.value	0x6d1
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.long	.LASF24
	.byte	0x1
	.value	0x6d3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1032
	.byte	0x1
	.value	0x6df
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x39b3
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x6e1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1033
	.byte	0x1
	.value	0x700
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a2d
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x701
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1034
	.byte	0x1
	.value	0x703
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF466
	.byte	0x1
	.value	0x708
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x70a
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x70b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF979
	.long	0x3a3d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12470
	.byte	0
	.uleb128 0x14
	.long	0x2c0
	.long	0x3a3d
	.uleb128 0x15
	.long	0x1ea
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	0x3a2d
	.uleb128 0x37
	.long	.LASF1035
	.byte	0x1
	.value	0x753
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a7f
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x754
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF466
	.byte	0x1
	.value	0x756
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1036
	.byte	0x1
	.value	0x779
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3abc
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x77a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF466
	.byte	0x1
	.value	0x77c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3e
	.long	.LASF1037
	.byte	0x1
	.value	0x7a4
	.long	0x4dc
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b48
	.uleb128 0x35
	.long	.LASF1038
	.byte	0x1
	.value	0x7a5
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF684
	.byte	0x1
	.value	0x7a5
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF475
	.byte	0x1
	.value	0x7a6
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF1039
	.byte	0x1
	.value	0x7a7
	.long	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1040
	.byte	0x1
	.value	0x7a8
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.long	.LASF1
	.byte	0x1
	.value	0x7aa
	.long	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1041
	.byte	0x1
	.value	0x7ab
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3f
	.long	.LASF1043
	.byte	0x1
	.value	0x7dc
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF1044
	.byte	0x1
	.byte	0x24
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	sizetype_set
	.uleb128 0x2e
	.long	.LASF1045
	.byte	0x1
	.byte	0x28
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	early_type_list
	.uleb128 0x2e
	.long	.LASF1046
	.byte	0x1
	.byte	0x39
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	reference_types_internal
	.uleb128 0x2e
	.long	.LASF1047
	.byte	0x1
	.byte	0x42
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	pending_sizes
	.uleb128 0x40
	.long	.LASF1048
	.byte	0x5
	.byte	0x62
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1049
	.byte	0x8
	.byte	0xaa
	.long	0x491
	.uleb128 0x14
	.long	0x651
	.long	0x3bdc
	.uleb128 0x15
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x40
	.long	.LASF146
	.byte	0xa
	.byte	0x34
	.long	0x3be7
	.uleb128 0xc
	.long	0x3bcc
	.uleb128 0x14
	.long	0x288
	.long	0x3bfc
	.uleb128 0x15
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x40
	.long	.LASF1050
	.byte	0xa
	.byte	0x50
	.long	0x3c07
	.uleb128 0xc
	.long	0x3bec
	.uleb128 0x14
	.long	0x28f
	.long	0x3c1c
	.uleb128 0x15
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x40
	.long	.LASF1051
	.byte	0xa
	.byte	0x60
	.long	0x3c27
	.uleb128 0xc
	.long	0x3c0c
	.uleb128 0x40
	.long	.LASF1052
	.byte	0xa
	.byte	0x7b
	.long	0x3c37
	.uleb128 0xc
	.long	0x3bec
	.uleb128 0x14
	.long	0x4dc
	.long	0x3c4c
	.uleb128 0x15
	.long	0x1ea
	.byte	0x8
	.byte	0
	.uleb128 0x40
	.long	.LASF1053
	.byte	0xa
	.byte	0x9d
	.long	0x3c57
	.uleb128 0xc
	.long	0x3c3c
	.uleb128 0x40
	.long	.LASF1054
	.byte	0xa
	.byte	0xa5
	.long	0x4dc
	.uleb128 0x14
	.long	0x2c0
	.long	0x3c77
	.uleb128 0x15
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x40
	.long	.LASF1055
	.byte	0x4
	.byte	0x31
	.long	0x3c67
	.uleb128 0x14
	.long	0x123
	.long	0x3c92
	.uleb128 0x15
	.long	0x1ea
	.byte	0x32
	.byte	0
	.uleb128 0x41
	.long	.LASF1056
	.byte	0x4
	.value	0x79b
	.long	0x3c82
	.uleb128 0x14
	.long	0x123
	.long	0x3cae
	.uleb128 0x15
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0x41
	.long	.LASF1057
	.byte	0x4
	.value	0x7f8
	.long	0x3c9e
	.uleb128 0x14
	.long	0x123
	.long	0x3cca
	.uleb128 0x15
	.long	0x1ea
	.byte	0x5
	.byte	0
	.uleb128 0x42
	.long	.LASF1058
	.byte	0x1
	.byte	0x2c
	.long	0x3cba
	.uleb128 0x9
	.byte	0x3
	.quad	sizetype_tab
	.uleb128 0x42
	.long	.LASF1059
	.byte	0x1
	.byte	0x30
	.long	0x266
	.uleb128 0x9
	.byte	0x3
	.quad	maximum_field_alignment
	.uleb128 0x42
	.long	.LASF1060
	.byte	0x1
	.byte	0x34
	.long	0x266
	.uleb128 0x9
	.byte	0x3
	.quad	set_alignment
	.uleb128 0x42
	.long	.LASF1061
	.byte	0x1
	.byte	0x47
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	immediate_size_expand
	.uleb128 0x41
	.long	.LASF1062
	.byte	0x4
	.value	0xa98
	.long	0x123
	.uleb128 0x40
	.long	.LASF1063
	.byte	0xf
	.byte	0x98
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1064
	.byte	0xf
	.byte	0x99
	.long	0x26f
	.uleb128 0x40
	.long	.LASF1065
	.byte	0xf
	.byte	0xa2
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1066
	.byte	0xf
	.byte	0xa6
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1067
	.byte	0xd
	.value	0x1e4
	.long	0x18d4
	.uleb128 0x40
	.long	.LASF1068
	.byte	0xe
	.byte	0xc1
	.long	0x2b23
	.uleb128 0x43
	.long	.LASF1069
	.byte	0x1
	.value	0x1d3
	.long	0x3131
	.uleb128 0x9
	.byte	0x3
	.quad	lang_adjust_rli
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x1c
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF394:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF648:
	.string	"TI_UV16QI_TYPE"
.LASF315:
	.string	"BUILT_IN_CONJ"
.LASF537:
	.string	"profile_label_no"
.LASF843:
	.string	"rtstr"
.LASF663:
	.string	"itk_unsigned_char"
.LASF213:
	.string	"WITH_CLEANUP_EXPR"
.LASF203:
	.string	"VTABLE_REF"
.LASF856:
	.string	"NOTE_INSN_DELETED"
.LASF1060:
	.string	"set_alignment"
.LASF361:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF78:
	.string	"_unused2"
.LASF773:
	.string	"UMOD"
.LASF827:
	.string	"min_align"
.LASF290:
	.string	"POSTINCREMENT_EXPR"
.LASF311:
	.string	"BUILT_IN_FABSF"
.LASF226:
	.string	"FLOOR_MOD_EXPR"
.LASF64:
	.string	"_fileno"
.LASF312:
	.string	"BUILT_IN_FABSL"
.LASF1002:
	.string	"field"
.LASF983:
	.string	"round_down"
.LASF897:
	.string	"first"
.LASF655:
	.string	"TI_V2SI_TYPE"
.LASF531:
	.string	"inlinable"
.LASF1027:
	.string	"alignment"
.LASF563:
	.string	"uses_const_pool"
.LASF676:
	.string	"decl_required"
.LASF616:
	.string	"TI_UINTSI_TYPE"
.LASF185:
	.string	"COMPLEX_CST"
.LASF461:
	.string	"tree_type"
.LASF243:
	.string	"RROTATE_EXPR"
.LASF279:
	.string	"ADDR_EXPR"
.LASF895:
	.string	"next"
.LASF26:
	.string	"block"
.LASF680:
	.string	"_Bool"
.LASF957:
	.string	"attribute_table"
.LASF842:
	.string	"rtuint"
.LASF591:
	.string	"pure_flag"
.LASF846:
	.string	"rt_cselib"
.LASF717:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF536:
	.string	"inl_max_label_num"
.LASF268:
	.string	"IN_EXPR"
.LASF777:
	.string	"LSHIFTRT"
.LASF951:
	.string	"reorder"
.LASF16:
	.string	"common"
.LASF395:
	.string	"BUILT_IN_EH_RETURN"
.LASF711:
	.string	"MATCH_PAR_DUP"
.LASF69:
	.string	"_shortbuf"
.LASF1072:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF772:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF615:
	.string	"TI_UINTHI_TYPE"
.LASF251:
	.string	"TRUTH_AND_EXPR"
.LASF553:
	.string	"contains_functions"
.LASF334:
	.string	"BUILT_IN_STRCPY"
.LASF1056:
	.string	"global_trees"
.LASF705:
	.string	"MATCH_OPERAND"
.LASF635:
	.string	"TI_VOID_TYPE"
.LASF397:
	.string	"BUILT_IN_VARARGS_START"
.LASF438:
	.string	"imag"
.LASF755:
	.string	"CONST_STRING"
.LASF295:
	.string	"LABEL_EXPR"
.LASF794:
	.string	"UNLE"
.LASF832:
	.string	"max_after_base"
.LASF437:
	.string	"real"
.LASF622:
	.string	"TI_NULL_POINTER"
.LASF795:
	.string	"UNLT"
.LASF175:
	.string	"FILE_TYPE"
.LASF459:
	.string	"fragment_chain"
.LASF433:
	.string	"tree_string"
.LASF468:
	.string	"no_force_blk_flag"
.LASF928:
	.string	"asm_out"
.LASF458:
	.string	"fragment_origin"
.LASF923:
	.string	"initial_value_struct"
.LASF651:
	.string	"TI_V4SI_TYPE"
.LASF374:
	.string	"BUILT_IN_FWRITE"
.LASF114:
	.string	"CTImode"
.LASF50:
	.string	"_flags"
.LASF1033:
	.string	"set_sizetype"
.LASF253:
	.string	"TRUTH_XOR_EXPR"
.LASF582:
	.string	"static_dtor_flag"
.LASF434:
	.string	"length"
.LASF215:
	.string	"PLACEHOLDER_EXPR"
.LASF605:
	.string	"lang_type"
.LASF1006:
	.string	"actual_align"
.LASF590:
	.string	"built_in_class"
.LASF45:
	.string	"__off_t"
.LASF234:
	.string	"FLOAT_EXPR"
.LASF573:
	.string	"inline_flag"
.LASF875:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF625:
	.string	"TI_BITSIZE_ZERO"
.LASF193:
	.string	"PARM_DECL"
.LASF112:
	.string	"CSImode"
.LASF353:
	.string	"BUILT_IN_COSL"
.LASF816:
	.string	"VEC_MERGE"
.LASF869:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF534:
	.string	"original_decl_initial"
.LASF932:
	.string	"aligned_op"
.LASF284:
	.string	"CONJ_EXPR"
.LASF70:
	.string	"_lock"
.LASF749:
	.string	"RETURN"
.LASF324:
	.string	"BUILT_IN_BZERO"
.LASF1061:
	.string	"immediate_size_expand"
.LASF300:
	.string	"LABELED_BLOCK_EXPR"
.LASF357:
	.string	"BUILT_IN_ARGS_INFO"
.LASF14:
	.string	"elem"
.LASF149:
	.string	"MODE_FLOAT"
.LASF330:
	.string	"BUILT_IN_MEMCMP"
.LASF372:
	.string	"BUILT_IN_FPUTC"
.LASF364:
	.string	"BUILT_IN_RETURN"
.LASF412:
	.string	"unused_0"
.LASF428:
	.string	"unused_1"
.LASF613:
	.string	"TI_INTTI_TYPE"
.LASF373:
	.string	"BUILT_IN_FPUTS"
.LASF301:
	.string	"EXIT_BLOCK_EXPR"
.LASF836:
	.string	"alias"
.LASF833:
	.string	"offset_unsigned"
.LASF118:
	.string	"V2SImode"
.LASF379:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF560:
	.string	"stdarg"
.LASF521:
	.string	"x_trampoline_list"
.LASF1046:
	.string	"reference_types_internal"
.LASF172:
	.string	"OFFSET_TYPE"
.LASF632:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF299:
	.string	"LOOP_EXPR"
.LASF736:
	.string	"CODE_LABEL"
.LASF380:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF113:
	.string	"CDImode"
.LASF742:
	.string	"UNSPEC"
.LASF291:
	.string	"VA_ARG_EXPR"
.LASF346:
	.string	"BUILT_IN_SIN"
.LASF405:
	.string	"side_effects_flag"
.LASF638:
	.string	"TI_PTRDIFF_TYPE"
.LASF862:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF738:
	.string	"COND_EXEC"
.LASF752:
	.string	"CONST_INT"
.LASF748:
	.string	"CALL"
.LASF35:
	.string	"maybe_vaarg"
.LASF542:
	.string	"epilogue_delay_list"
.LASF593:
	.string	"uninlinable"
.LASF208:
	.string	"TARGET_EXPR"
.LASF120:
	.string	"V4QImode"
.LASF727:
	.string	"ATTR"
.LASF393:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF844:
	.string	"rttype"
.LASF942:
	.string	"constructor"
.LASF938:
	.string	"function_epilogue"
.LASF448:
	.string	"complexity"
.LASF886:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF462:
	.string	"values"
.LASF430:
	.string	"tree_int_cst"
.LASF1053:
	.string	"class_narrowest_mode"
.LASF349:
	.string	"BUILT_IN_SINF"
.LASF119:
	.string	"V2DImode"
.LASF926:
	.string	"language_function"
.LASF352:
	.string	"BUILT_IN_SINL"
.LASF409:
	.string	"readonly_flag"
.LASF229:
	.string	"EXACT_DIV_EXPR"
.LASF837:
	.string	"mem_attrs"
.LASF56:
	.string	"_IO_write_end"
.LASF1029:
	.string	"rounded_size"
.LASF720:
	.string	"DEFINE_DELAY"
.LASF770:
	.string	"MINUS"
.LASF518:
	.string	"x_clobber_return_insn"
.LASF329:
	.string	"BUILT_IN_MEMCPY"
.LASF196:
	.string	"NAMESPACE_DECL"
.LASF760:
	.string	"STRICT_LOW_PART"
.LASF911:
	.string	"x_regno_reg_rtx"
.LASF201:
	.string	"ARRAY_REF"
.LASF882:
	.string	"GR_FRAME_POINTER"
.LASF404:
	.string	"chain"
.LASF1022:
	.string	"index"
.LASF798:
	.string	"ZERO_EXTEND"
.LASF358:
	.string	"BUILT_IN_CONSTANT_P"
.LASF801:
	.string	"FLOAT_TRUNCATE"
.LASF918:
	.string	"x_forced_labels"
.LASF384:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF390:
	.string	"BUILT_IN_DWARF_CFA"
.LASF181:
	.string	"FUNCTION_TYPE"
.LASF502:
	.string	"internal_arg_pointer"
.LASF567:
	.string	"tree_decl"
.LASF936:
	.string	"function_end_prologue"
.LASF1039:
	.string	"largest_mode"
.LASF879:
	.string	"GR_PC"
.LASF129:
	.string	"V2SFmode"
.LASF925:
	.string	"machine_function"
.LASF802:
	.string	"FLOAT"
.LASF939:
	.string	"named_section"
.LASF145:
	.string	"machine_mode"
.LASF180:
	.string	"QUAL_UNION_TYPE"
.LASF967:
	.string	"have_ctors_dtors"
.LASF849:
	.string	"rtmem"
.LASF530:
	.string	"fixup_var_refs_queue"
.LASF811:
	.string	"RANGE_REG"
.LASF847:
	.string	"rtbit"
.LASF296:
	.string	"GOTO_EXPR"
.LASF3:
	.string	"call"
.LASF91:
	.string	"TImode"
.LASF787:
	.string	"PRE_MODIFY"
.LASF1063:
	.string	"warn_larger_than"
.LASF207:
	.string	"INIT_EXPR"
.LASF545:
	.string	"returns_pointer"
.LASF242:
	.string	"LROTATE_EXPR"
.LASF997:
	.string	"extra_aligns"
.LASF431:
	.string	"realvaluetype"
.LASF686:
	.string	"unpacked_align"
.LASF800:
	.string	"FLOAT_EXTEND"
.LASF327:
	.string	"BUILT_IN_INDEX"
.LASF273:
	.string	"NOP_EXPR"
.LASF490:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF857:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF89:
	.string	"SImode"
.LASF744:
	.string	"ADDR_VEC"
.LASF921:
	.string	"stmt_status"
.LASF130:
	.string	"V2DFmode"
.LASF227:
	.string	"ROUND_MOD_EXPR"
.LASF826:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF1044:
	.string	"sizetype_set"
.LASF418:
	.string	"protected_flag"
.LASF24:
	.string	"type"
.LASF34:
	.string	"sse_regno"
.LASF1018:
	.string	"finish_record_layout"
.LASF538:
	.string	"machine"
.LASF223:
	.string	"ROUND_DIV_EXPR"
.LASF763:
	.string	"SYMBOL_REF"
.LASF855:
	.string	"NOTE_INSN_BIAS"
.LASF117:
	.string	"V2HImode"
.LASF606:
	.string	"lang_decl"
.LASF238:
	.string	"ABS_EXPR"
.LASF877:
	.string	"NOTE_INSN_MAX"
.LASF916:
	.string	"x_saveregs_value"
.LASF453:
	.string	"block_num"
.LASF716:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF248:
	.string	"BIT_NOT_EXPR"
.LASF796:
	.string	"LTGT"
.LASF447:
	.string	"tree_exp"
.LASF894:
	.string	"unsignedp"
.LASF808:
	.string	"HIGH"
.LASF765:
	.string	"QUEUED"
.LASF960:
	.string	"insert_attributes"
.LASF1:
	.string	"mode"
.LASF90:
	.string	"DImode"
.LASF250:
	.string	"TRUTH_ORIF_EXPR"
.LASF307:
	.string	"BUILT_IN_ALLOCA"
.LASF1058:
	.string	"sizetype_tab"
.LASF504:
	.string	"hard_reg_initial_vals"
.LASF955:
	.string	"merge_decl_attributes"
.LASF914:
	.string	"x_inhibit_defer_pop"
.LASF669:
	.string	"itk_unsigned_long"
.LASF63:
	.string	"_chain"
.LASF970:
	.string	"is_pending_size"
.LASF677:
	.string	"type_required"
.LASF1001:
	.string	"rli_size_so_far"
.LASF949:
	.string	"md_init"
.LASF786:
	.string	"POST_INC"
.LASF212:
	.string	"METHOD_CALL_EXPR"
.LASF618:
	.string	"TI_UINTTI_TYPE"
.LASF581:
	.string	"static_ctor_flag"
.LASF103:
	.string	"TFmode"
.LASF178:
	.string	"RECORD_TYPE"
.LASF41:
	.string	"unsigned char"
.LASF924:
	.string	"temp_slot"
.LASF410:
	.string	"unsigned_flag"
.LASF595:
	.string	"arguments"
.LASF503:
	.string	"cannot_inline"
.LASF1051:
	.string	"mode_bitsize"
.LASF1073:
	.string	"_IO_lock_t"
.LASF637:
	.string	"TI_CONST_PTR_TYPE"
.LASF487:
	.string	"lang_specific"
.LASF975:
	.string	"class"
.LASF673:
	.string	"attribute_spec"
.LASF86:
	.string	"BImode"
.LASF486:
	.string	"alias_set"
.LASF100:
	.string	"SFmode"
.LASF929:
	.string	"open_paren"
.LASF612:
	.string	"TI_INTDI_TYPE"
.LASF492:
	.string	"emit"
.LASF471:
	.string	"packed_flag"
.LASF244:
	.string	"BIT_IOR_EXPR"
.LASF308:
	.string	"BUILT_IN_ABS"
.LASF190:
	.string	"CONST_DECL"
.LASF432:
	.string	"tree_real_cst"
.LASF195:
	.string	"FIELD_DECL"
.LASF733:
	.string	"JUMP_INSN"
.LASF665:
	.string	"itk_unsigned_short"
.LASF950:
	.string	"md_finish"
.LASF318:
	.string	"BUILT_IN_CREAL"
.LASF153:
	.string	"MODE_COMPLEX_FLOAT"
.LASF688:
	.string	"prev_field"
.LASF848:
	.string	"rttree"
.LASF572:
	.string	"regdecl_flag"
.LASF314:
	.string	"BUILT_IN_IMAXABS"
.LASF169:
	.string	"BOOLEAN_TYPE"
.LASF323:
	.string	"BUILT_IN_CIMAGL"
.LASF854:
	.string	"insn_note"
.LASF873:
	.string	"NOTE_INSN_RANGE_END"
.LASF715:
	.string	"DEFINE_SPLIT"
.LASF552:
	.string	"has_nonlocal_goto"
.LASF566:
	.string	"arg_pointer_save_area_init"
.LASF383:
	.string	"BUILT_IN_ISGREATER"
.LASF998:
	.string	"debug_rli"
.LASF367:
	.string	"BUILT_IN_TRAP"
.LASF754:
	.string	"CONST_VECTOR"
.LASF276:
	.string	"SAVE_EXPR"
.LASF712:
	.string	"MATCH_INSN"
.LASF429:
	.string	"high"
.LASF654:
	.string	"TI_V4HI_TYPE"
.LASF512:
	.string	"x_save_expr_regs"
.LASF101:
	.string	"DFmode"
.LASF39:
	.string	"size_t"
.LASF746:
	.string	"PREFETCH"
.LASF495:
	.string	"pops_args"
.LASF95:
	.string	"PSImode"
.LASF514:
	.string	"x_rtl_expr_chain"
.LASF333:
	.string	"BUILT_IN_STRNCAT"
.LASF541:
	.string	"language"
.LASF694:
	.string	"SSIZETYPE"
.LASF690:
	.string	"packed_maybe_necessary"
.LASF839:
	.string	"rtunion_def"
.LASF188:
	.string	"FUNCTION_DECL"
.LASF386:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF726:
	.string	"DEFINE_ATTR"
.LASF695:
	.string	"USIZETYPE"
.LASF209:
	.string	"COND_EXPR"
.LASF728:
	.string	"SET_ATTR"
.LASF109:
	.string	"TCmode"
.LASF506:
	.string	"x_nonlocal_labels"
.LASF230:
	.string	"FIX_TRUNC_EXPR"
.LASF803:
	.string	"UNSIGNED_FLOAT"
.LASF956:
	.string	"merge_type_attributes"
.LASF850:
	.string	"cselib_val_struct"
.LASF876:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF55:
	.string	"_IO_write_ptr"
.LASF1020:
	.string	"subtype"
.LASF166:
	.string	"COMPLEX_TYPE"
.LASF775:
	.string	"ROTATE"
.LASF368:
	.string	"BUILT_IN_PREFETCH"
.LASF240:
	.string	"LSHIFT_EXPR"
.LASF985:
	.string	"known_align"
.LASF799:
	.string	"TRUNCATE"
.LASF106:
	.string	"SCmode"
.LASF937:
	.string	"function_begin_epilogue"
.LASF1025:
	.string	"maxvalue"
.LASF993:
	.string	"poffset"
.LASF493:
	.string	"varasm"
.LASF660:
	.string	"integer_type_kind"
.LASF96:
	.string	"PDImode"
.LASF183:
	.string	"INTEGER_CST"
.LASF191:
	.string	"TYPE_DECL"
.LASF629:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF535:
	.string	"inl_last_parm_insn"
.LASF867:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF483:
	.string	"main_variant"
.LASF287:
	.string	"PREDECREMENT_EXPR"
.LASF621:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF634:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF407:
	.string	"addressable_flag"
.LASF730:
	.string	"EQ_ATTR"
.LASF415:
	.string	"static_flag"
.LASF631:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF139:
	.string	"CCGOCmode"
.LASF761:
	.string	"CONCAT"
.LASF344:
	.string	"BUILT_IN_STRRCHR"
.LASF463:
	.string	"size"
.LASF650:
	.string	"TI_V16SF_TYPE"
.LASF829:
	.string	"min_after_vec"
.LASF630:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF48:
	.string	"FILE"
.LASF767:
	.string	"COND"
.LASF167:
	.string	"VECTOR_TYPE"
.LASF150:
	.string	"MODE_PARTIAL_INT"
.LASF522:
	.string	"x_parm_birth_insn"
.LASF524:
	.string	"x_max_parm_reg"
.LASF325:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF107:
	.string	"DCmode"
.LASF687:
	.string	"unpadded_align"
.LASF1009:
	.string	"bit_offset"
.LASF1014:
	.string	"unpacked_size"
.LASF718:
	.string	"DEFINE_COMBINE"
.LASF1070:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF247:
	.string	"BIT_ANDTC_EXPR"
.LASF636:
	.string	"TI_PTR_TYPE"
.LASF516:
	.string	"x_tail_recursion_reentry"
.LASF22:
	.string	"identifier"
.LASF776:
	.string	"ASHIFTRT"
.LASF988:
	.string	"set_lang_adjust_rli"
.LASF137:
	.string	"CCmode"
.LASF396:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF388:
	.string	"BUILT_IN_ISUNORDERED"
.LASF1008:
	.string	"field_size"
.LASF991:
	.string	"byte_from_pos"
.LASF860:
	.string	"NOTE_INSN_LOOP_END"
.LASF135:
	.string	"V16SFmode"
.LASF820:
	.string	"SS_PLUS"
.LASF597:
	.string	"initial"
.LASF249:
	.string	"TRUTH_ANDIF_EXPR"
.LASF874:
	.string	"NOTE_INSN_LIVE"
.LASF723:
	.string	"DEFINE_COND_EXEC"
.LASF691:
	.string	"record_layout_info"
.LASF59:
	.string	"_IO_save_base"
.LASF693:
	.string	"SIZETYPE"
.LASF891:
	.string	"var_refs_queue"
.LASF915:
	.string	"x_stack_pointer_delta"
.LASF254:
	.string	"TRUTH_NOT_EXPR"
.LASF719:
	.string	"DEFINE_EXPAND"
.LASF235:
	.string	"NEGATE_EXPR"
.LASF555:
	.string	"is_thunk"
.LASF126:
	.string	"V8SImode"
.LASF508:
	.string	"x_nonlocal_goto_handler_labels"
.LASF732:
	.string	"INSN"
.LASF841:
	.string	"rtint"
.LASF398:
	.string	"BUILT_IN_STDARG_START"
.LASF587:
	.string	"comdat_flag"
.LASF762:
	.string	"LABEL_REF"
.LASF961:
	.string	"function_attribute_inlinable_p"
.LASF617:
	.string	"TI_UINTDI_TYPE"
.LASF176:
	.string	"ARRAY_TYPE"
.LASF627:
	.string	"TI_BITSIZE_UNIT"
.LASF990:
	.string	"bit_from_pos"
.LASF953:
	.string	"cycle_display"
.LASF984:
	.string	"layout_decl"
.LASF257:
	.string	"GT_EXPR"
.LASF73:
	.string	"__pad2"
.LASF270:
	.string	"CARD_EXPR"
.LASF959:
	.string	"set_default_type_attributes"
.LASF0:
	.string	"code"
.LASF17:
	.string	"int_cst"
.LASF954:
	.string	"gcc_target"
.LASF633:
	.string	"TI_DOUBLE_TYPE"
.LASF366:
	.string	"BUILT_IN_LONGJMP"
.LASF439:
	.string	"tree_vector"
.LASF174:
	.string	"METHOD_TYPE"
.LASF138:
	.string	"CCGCmode"
.LASF25:
	.string	"list"
.LASF272:
	.string	"CONVERT_EXPR"
.LASF758:
	.string	"SCRATCH"
.LASF124:
	.string	"V8QImode"
.LASF224:
	.string	"TRUNC_MOD_EXPR"
.LASF127:
	.string	"V8DImode"
.LASF156:
	.string	"MAX_MODE_CLASS"
.LASF671:
	.string	"itk_unsigned_long_long"
.LASF1067:
	.string	"cfun"
.LASF220:
	.string	"TRUNC_DIV_EXPR"
.LASF797:
	.string	"SIGN_EXTEND"
.LASF1054:
	.string	"ptr_mode"
.LASF547:
	.string	"calls_setjmp"
.LASF277:
	.string	"UNSAVE_EXPR"
.LASF219:
	.string	"MULT_EXPR"
.LASF445:
	.string	"value"
.LASF819:
	.string	"VEC_DUPLICATE"
.LASF258:
	.string	"GE_EXPR"
.LASF509:
	.string	"x_nonlocal_goto_stack_level"
.LASF158:
	.string	"ERROR_MARK"
.LASF80:
	.string	"_next"
.LASF340:
	.string	"BUILT_IN_STRPBRK"
.LASF280:
	.string	"REFERENCE_EXPR"
.LASF491:
	.string	"expr"
.LASF225:
	.string	"CEIL_MOD_EXPR"
.LASF870:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF460:
	.string	"address"
.LASF369:
	.string	"BUILT_IN_PUTCHAR"
.LASF678:
	.string	"function_type_required"
.LASF507:
	.string	"x_nonlocal_goto_handler_slots"
.LASF133:
	.string	"V8SFmode"
.LASF1028:
	.string	"size_in_bits"
.LASF221:
	.string	"CEIL_DIV_EXPR"
.LASF1038:
	.string	"bitsize"
.LASF702:
	.string	"INCLUDE"
.LASF359:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF741:
	.string	"ASM_OPERANDS"
.LASF527:
	.string	"x_temp_slot_level"
.LASF480:
	.string	"minval"
.LASF525:
	.string	"x_parm_reg_stack_loc"
.LASF141:
	.string	"CCZmode"
.LASF934:
	.string	"integer"
.LASF861:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF698:
	.string	"UBITSIZETYPE"
.LASF222:
	.string	"FLOOR_DIV_EXPR"
.LASF160:
	.string	"TREE_LIST"
.LASF1041:
	.string	"unit"
.LASF713:
	.string	"DEFINE_INSN"
.LASF609:
	.string	"TI_INTQI_TYPE"
.LASF935:
	.string	"function_prologue"
.LASF457:
	.string	"abstract_origin"
.LASF187:
	.string	"STRING_CST"
.LASF689:
	.string	"pending_statics"
.LASF255:
	.string	"LT_EXPR"
.LASF982:
	.string	"divisor"
.LASF745:
	.string	"ADDR_DIFF_VEC"
.LASF245:
	.string	"BIT_XOR_EXPR"
.LASF303:
	.string	"SWITCH_EXPR"
.LASF252:
	.string	"TRUTH_OR_EXPR"
.LASF807:
	.string	"ZERO_EXTRACT"
.LASF740:
	.string	"ASM_INPUT"
.LASF294:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF441:
	.string	"ht_identifier"
.LASF790:
	.string	"ORDERED"
.LASF134:
	.string	"V8DFmode"
.LASF893:
	.string	"promoted_mode"
.LASF598:
	.string	"assembler_name"
.LASF940:
	.string	"exception_section"
.LASF236:
	.string	"MIN_EXPR"
.LASF642:
	.string	"TI_UV4SI_TYPE"
.LASF469:
	.string	"needs_constructing_flag"
.LASF804:
	.string	"UNSIGNED_FIX"
.LASF231:
	.string	"FIX_CEIL_EXPR"
.LASF544:
	.string	"returns_pcc_struct"
.LASF337:
	.string	"BUILT_IN_STRNCMP"
.LASF1062:
	.string	"current_function_decl"
.LASF436:
	.string	"tree_complex"
.LASF735:
	.string	"BARRIER"
.LASF943:
	.string	"destructor"
.LASF32:
	.string	"sse_words"
.LASF1011:
	.string	"finalize_record_size"
.LASF142:
	.string	"CCFPmode"
.LASF256:
	.string	"LE_EXPR"
.LASF734:
	.string	"CALL_INSN"
.LASF1049:
	.string	"stderr"
.LASF589:
	.string	"no_limit_stack"
.LASF596:
	.string	"result"
.LASF729:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF479:
	.string	"name"
.LASF704:
	.string	"INSN_LIST"
.LASF81:
	.string	"_sbuf"
.LASF812:
	.string	"RANGE_VAR"
.LASF61:
	.string	"_IO_save_end"
.LASF931:
	.string	"byte_op"
.LASF952:
	.string	"reorder2"
.LASF148:
	.string	"MODE_INT"
.LASF1024:
	.string	"element_size"
.LASF1042:
	.string	"internal_reference_types"
.LASF18:
	.string	"real_cst"
.LASF237:
	.string	"MAX_EXPR"
.LASF499:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF450:
	.string	"tree_block"
.LASF31:
	.string	"regno"
.LASF623:
	.string	"TI_SIZE_ZERO"
.LASF887:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF912:
	.string	"expr_status"
.LASF948:
	.string	"variable_issue"
.LASF455:
	.string	"subblocks"
.LASF683:
	.string	"offset_align"
.LASF551:
	.string	"has_nonlocal_label"
.LASF664:
	.string	"itk_short"
.LASF992:
	.string	"pos_from_byte"
.LASF331:
	.string	"BUILT_IN_MEMSET"
.LASF813:
	.string	"RANGE_LIVE"
.LASF913:
	.string	"x_pending_stack_adjust"
.LASF228:
	.string	"RDIV_EXPR"
.LASF496:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF575:
	.string	"virtual_flag"
.LASF473:
	.string	"pointer_depth"
.LASF435:
	.string	"pointer"
.LASF189:
	.string	"LABEL_DECL"
.LASF402:
	.string	"END_BUILTINS"
.LASF703:
	.string	"EXPR_LIST"
.LASF696:
	.string	"BITSIZETYPE"
.LASF884:
	.string	"GR_ARG_POINTER"
.LASF989:
	.string	"start_record_layout"
.LASF27:
	.string	"sizetype"
.LASF822:
	.string	"SS_MINUS"
.LASF709:
	.string	"MATCH_PARALLEL"
.LASF122:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF403:
	.string	"tree_common"
.LASF484:
	.string	"binfo"
.LASF626:
	.string	"TI_BITSIZE_ONE"
.LASF42:
	.string	"short unsigned int"
.LASF43:
	.string	"signed char"
.LASF620:
	.string	"TI_INTEGER_ONE"
.LASF708:
	.string	"MATCH_OPERATOR"
.LASF1055:
	.string	"tree_code_type"
.LASF780:
	.string	"SMAX"
.LASF444:
	.string	"purpose"
.LASF1052:
	.string	"mode_wider_mode"
.LASF523:
	.string	"x_last_parm_insn"
.LASF610:
	.string	"TI_INTHI_TYPE"
.LASF476:
	.string	"pointer_to"
.LASF1047:
	.string	"pending_sizes"
.LASF971:
	.string	"put_pending_size"
.LASF584:
	.string	"weak_flag"
.LASF601:
	.string	"saved_tree"
.LASF905:
	.string	"x_cur_insn_uid"
.LASF446:
	.string	"tree_vec"
.LASF919:
	.string	"x_pending_chain"
.LASF568:
	.string	"filename"
.LASF824:
	.string	"SS_TRUNCATE"
.LASF289:
	.string	"POSTDECREMENT_EXPR"
.LASF377:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF532:
	.string	"no_debugging_symbols"
.LASF945:
	.string	"adjust_cost"
.LASF381:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF828:
	.string	"base_after_vec"
.LASF46:
	.string	"__off64_t"
.LASF659:
	.string	"TI_MAX"
.LASF123:
	.string	"V4DImode"
.LASF414:
	.string	"nothrow_flag"
.LASF1017:
	.string	"variant"
.LASF53:
	.string	"_IO_read_base"
.LASF293:
	.string	"TRY_FINALLY_EXPR"
.LASF71:
	.string	"_offset"
.LASF20:
	.string	"string"
.LASF885:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF907:
	.string	"x_last_filename"
.LASF58:
	.string	"_IO_buf_end"
.LASF478:
	.string	"symtab"
.LASF722:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF823:
	.string	"US_MINUS"
.LASF644:
	.string	"TI_UV8QI_TYPE"
.LASF501:
	.string	"return_rtx"
.LASF259:
	.string	"EQ_EXPR"
.LASF197:
	.string	"COMPONENT_REF"
.LASF806:
	.string	"SIGN_EXTRACT"
.LASF600:
	.string	"live_range_rtl"
.LASF8:
	.string	"integrated"
.LASF1066:
	.string	"warn_padded"
.LASF218:
	.string	"MINUS_EXPR"
.LASF747:
	.string	"CLOBBER"
.LASF482:
	.string	"next_variant"
.LASF77:
	.string	"_mode"
.LASF1031:
	.string	"make_unsigned_type"
.LASF154:
	.string	"MODE_VECTOR_INT"
.LASF54:
	.string	"_IO_write_base"
.LASF815:
	.string	"CALL_PLACEHOLDER"
.LASF489:
	.string	"function"
.LASF341:
	.string	"BUILT_IN_STRSPN"
.LASF131:
	.string	"V4SFmode"
.LASF205:
	.string	"COMPOUND_EXPR"
.LASF556:
	.string	"instrument_entry_exit"
.LASF1019:
	.string	"layout_type"
.LASF614:
	.string	"TI_UINTQI_TYPE"
.LASF1068:
	.string	"targetm"
.LASF519:
	.string	"x_frame_offset"
.LASF360:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF464:
	.string	"size_unit"
.LASF376:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF769:
	.string	"PLUS"
.LASF328:
	.string	"BUILT_IN_RINDEX"
.LASF785:
	.string	"POST_DEC"
.LASF88:
	.string	"HImode"
.LASF853:
	.string	"rtunion"
.LASF863:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF152:
	.string	"MODE_COMPLEX_INT"
.LASF920:
	.string	"eh_status"
.LASF1004:
	.string	"type_align"
.LASF305:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF896:
	.string	"sequence_stack"
.LASF38:
	.string	"long int"
.LASF889:
	.string	"GR_VIRTUAL_CFA"
.LASF171:
	.string	"POINTER_TYPE"
.LASF239:
	.string	"FFS_EXPR"
.LASF1064:
	.string	"larger_than_size"
.LASF163:
	.string	"VOID_TYPE"
.LASF275:
	.string	"VIEW_CONVERT_EXPR"
.LASF608:
	.string	"TI_ERROR_MARK"
.LASF79:
	.string	"_IO_marker"
.LASF102:
	.string	"XFmode"
.LASF546:
	.string	"needs_context"
.LASF964:
	.string	"expand_builtin"
.LASF976:
	.string	"limit"
.LASF132:
	.string	"V4DFmode"
.LASF4:
	.string	"unchanging"
.LASF579:
	.string	"defer_output"
.LASF656:
	.string	"TI_V2SF_TYPE"
.LASF858:
	.string	"NOTE_INSN_BLOCK_END"
.LASF994:
	.string	"pbitpos"
.LASF550:
	.string	"calls_eh_return"
.LASF969:
	.string	"get_pending_sizes"
.LASF675:
	.string	"max_length"
.LASF529:
	.string	"x_target_temp_slot_level"
.LASF968:
	.string	"cannot_modify_jumps_p"
.LASF497:
	.string	"pretend_args_size"
.LASF485:
	.string	"context"
.LASF700:
	.string	"rtx_code"
.LASF36:
	.string	"CUMULATIVE_ARGS"
.LASF216:
	.string	"WITH_RECORD_EXPR"
.LASF898:
	.string	"last"
.LASF607:
	.string	"tree_index"
.LASF559:
	.string	"varargs"
.LASF958:
	.string	"comp_type_attributes"
.LASF451:
	.string	"handler_block_flag"
.LASF592:
	.string	"non_addressable"
.LASF963:
	.string	"init_builtins"
.LASF1036:
	.string	"fixup_unsigned_type"
.LASF392:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF561:
	.string	"x_whole_function_mode_p"
.LASF941:
	.string	"eh_frame_section"
.LASF701:
	.string	"UNKNOWN"
.LASF743:
	.string	"UNSPEC_VOLATILE"
.LASF202:
	.string	"ARRAY_RANGE_REF"
.LASF987:
	.string	"size_as_int"
.LASF699:
	.string	"TYPE_KIND_LAST"
.LASF339:
	.string	"BUILT_IN_STRSTR"
.LASF578:
	.string	"common_flag"
.LASF866:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF40:
	.string	"long unsigned int"
.LASF586:
	.string	"no_instrument_function_entry_exit"
.LASF411:
	.string	"asm_written_flag"
.LASF11:
	.string	"rtx_def"
.LASF157:
	.string	"tree_code"
.LASF1021:
	.string	"nbits"
.LASF98:
	.string	"HFmode"
.LASF375:
	.string	"BUILT_IN_FPRINTF"
.LASF406:
	.string	"constant_flag"
.LASF347:
	.string	"BUILT_IN_COS"
.LASF750:
	.string	"TRAP_IF"
.LASF419:
	.string	"bounded_flag"
.LASF194:
	.string	"RESULT_DECL"
.LASF292:
	.string	"TRY_CATCH_EXPR"
.LASF649:
	.string	"TI_V4SF_TYPE"
.LASF443:
	.string	"tree_list"
.LASF110:
	.string	"CQImode"
.LASF539:
	.string	"stack_alignment_needed"
.LASF47:
	.string	"char"
.LASF543:
	.string	"returns_struct"
.LASF108:
	.string	"XCmode"
.LASF517:
	.string	"x_arg_pointer_save_area"
.LASF387:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF1037:
	.string	"get_best_mode"
.LASF306:
	.string	"built_in_function"
.LASF515:
	.string	"x_tail_recursion_label"
.LASF274:
	.string	"NON_LVALUE_EXPR"
.LASF840:
	.string	"rtwint"
.LASF588:
	.string	"malloc_flag"
.LASF980:
	.string	"int_mode_for_mode"
.LASF57:
	.string	"_IO_buf_base"
.LASF778:
	.string	"ROTATERT"
.LASF661:
	.string	"itk_char"
.LASF981:
	.string	"round_up"
.LASF466:
	.string	"precision"
.LASF764:
	.string	"ADDRESSOF"
.LASF199:
	.string	"INDIRECT_REF"
.LASF116:
	.string	"V2QImode"
.LASF297:
	.string	"RETURN_EXPR"
.LASF321:
	.string	"BUILT_IN_CIMAG"
.LASF362:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF901:
	.string	"x_reg_rtx_no"
.LASF94:
	.string	"PHImode"
.LASF52:
	.string	"_IO_read_end"
.LASF470:
	.string	"transparent_union_flag"
.LASF892:
	.string	"modified"
.LASF910:
	.string	"regno_decl"
.LASF692:
	.string	"size_type_kind"
.LASF115:
	.string	"COImode"
.LASF783:
	.string	"PRE_DEC"
.LASF49:
	.string	"_IO_FILE"
.LASF865:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF883:
	.string	"GR_HARD_FRAME_POINTER"
.LASF475:
	.string	"align"
.LASF810:
	.string	"RANGE_INFO"
.LASF389:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF996:
	.string	"normalize_offset"
.LASF549:
	.string	"calls_alloca"
.LASF1059:
	.string	"maximum_field_alignment"
.LASF628:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF528:
	.string	"x_var_temp_slot_level"
.LASF147:
	.string	"MODE_RANDOM"
.LASF821:
	.string	"US_PLUS"
.LASF1057:
	.string	"integer_types"
.LASF930:
	.string	"close_paren"
.LASF1013:
	.string	"unpadded_size_unit"
.LASF136:
	.string	"BLKmode"
.LASF105:
	.string	"HCmode"
.LASF210:
	.string	"BIND_EXPR"
.LASF282:
	.string	"FDESC_EXPR"
.LASF647:
	.string	"TI_UV2SF_TYPE"
.LASF685:
	.string	"record_align"
.LASF217:
	.string	"PLUS_EXPR"
.LASF653:
	.string	"TI_V8QI_TYPE"
.LASF974:
	.string	"mode_for_size"
.LASF1015:
	.string	"compute_record_mode"
.LASF658:
	.string	"TI_MAIN_IDENTIFIER"
.LASF338:
	.string	"BUILT_IN_STRLEN"
.LASF179:
	.string	"UNION_TYPE"
.LASF927:
	.string	"asm_int_op"
.LASF513:
	.string	"x_stack_slot_list"
.LASF818:
	.string	"VEC_CONCAT"
.LASF565:
	.string	"uses_eh_lsda"
.LASF1030:
	.string	"make_signed_type"
.LASF281:
	.string	"ENTRY_VALUE_EXPR"
.LASF356:
	.string	"BUILT_IN_NEXT_ARG"
.LASF72:
	.string	"__pad1"
.LASF74:
	.string	"__pad3"
.LASF75:
	.string	"__pad4"
.LASF76:
	.string	"__pad5"
.LASF576:
	.string	"ignored_flag"
.LASF731:
	.string	"ATTR_FLAG"
.LASF814:
	.string	"CONSTANT_P_RTX"
.LASF143:
	.string	"CCFPUmode"
.LASF1032:
	.string	"initialize_sizetypes"
.LASF721:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF583:
	.string	"artificial_flag"
.LASF520:
	.string	"x_context_display"
.LASF62:
	.string	"_markers"
.LASF82:
	.string	"_pos"
.LASF725:
	.string	"ADDRESS"
.LASF262:
	.string	"ORDERED_EXPR"
.LASF400:
	.string	"BUILT_IN_VA_COPY"
.LASF533:
	.string	"original_arg_vector"
.LASF1012:
	.string	"unpadded_size"
.LASF21:
	.string	"complex"
.LASF864:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF173:
	.string	"REFERENCE_TYPE"
.LASF511:
	.string	"x_return_label"
.LASF456:
	.string	"supercontext"
.LASF401:
	.string	"BUILT_IN_EXPECT"
.LASF481:
	.string	"maxval"
.LASF261:
	.string	"UNORDERED_EXPR"
.LASF1034:
	.string	"oprecision"
.LASF641:
	.string	"TI_UV4SF_TYPE"
.LASF825:
	.string	"US_TRUNCATE"
.LASF423:
	.string	"lang_flag_2"
.LASF1065:
	.string	"warn_packed"
.LASF342:
	.string	"BUILT_IN_STRCSPN"
.LASF1045:
	.string	"early_type_list"
.LASF269:
	.string	"SET_LE_EXPR"
.LASF657:
	.string	"TI_V16QI_TYPE"
.LASF30:
	.string	"nregs"
.LASF1023:
	.string	"element"
.LASF670:
	.string	"itk_long_long"
.LASF782:
	.string	"UMAX"
.LASF288:
	.string	"PREINCREMENT_EXPR"
.LASF966:
	.string	"have_named_sections"
.LASF834:
	.string	"scale"
.LASF569:
	.string	"linenum"
.LASF87:
	.string	"QImode"
.LASF851:
	.string	"bitmap_head_def"
.LASF1048:
	.string	"target_flags"
.LASF265:
	.string	"UNGT_EXPR"
.LASF768:
	.string	"COMPARE"
.LASF881:
	.string	"GR_STACK_POINTER"
.LASF946:
	.string	"adjust_priority"
.LASF474:
	.string	"user_align"
.LASF309:
	.string	"BUILT_IN_LABS"
.LASF1010:
	.string	"place_union_field"
.LASF99:
	.string	"TQFmode"
.LASF408:
	.string	"volatile_flag"
.LASF29:
	.string	"words"
.LASF332:
	.string	"BUILT_IN_STRCAT"
.LASF348:
	.string	"BUILT_IN_SQRTF"
.LASF831:
	.string	"min_after_base"
.LASF351:
	.string	"BUILT_IN_SQRTL"
.LASF1016:
	.string	"finalize_type_size"
.LASF1026:
	.string	"minvalue"
.LASF944:
	.string	"sched"
.LASF667:
	.string	"itk_unsigned_int"
.LASF488:
	.string	"off_align"
.LASF562:
	.string	"x_dont_save_pending_sizes_p"
.LASF28:
	.string	"ix86_args"
.LASF304:
	.string	"EXC_PTR_EXPR"
.LASF878:
	.string	"global_rtl_index"
.LASF326:
	.string	"BUILT_IN_FFS"
.LASF413:
	.string	"used_flag"
.LASF371:
	.string	"BUILT_IN_PRINTF"
.LASF170:
	.string	"CHAR_TYPE"
.LASF465:
	.string	"attributes"
.LASF652:
	.string	"TI_V8HI_TYPE"
.LASF498:
	.string	"outgoing_args_size"
.LASF232:
	.string	"FIX_FLOOR_EXPR"
.LASF92:
	.string	"OImode"
.LASF417:
	.string	"private_flag"
.LASF378:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF421:
	.string	"lang_flag_0"
.LASF422:
	.string	"lang_flag_1"
.LASF198:
	.string	"BIT_FIELD_REF"
.LASF424:
	.string	"lang_flag_3"
.LASF425:
	.string	"lang_flag_4"
.LASF426:
	.string	"lang_flag_5"
.LASF427:
	.string	"lang_flag_6"
.LASF594:
	.string	"lang_flag_7"
.LASF266:
	.string	"UNGE_EXPR"
.LASF604:
	.string	"pointer_alias_set"
.LASF817:
	.string	"VEC_SELECT"
.LASF995:
	.string	"pos_from_bit"
.LASF313:
	.string	"BUILT_IN_LLABS"
.LASF645:
	.string	"TI_UV4HI_TYPE"
.LASF192:
	.string	"VAR_DECL"
.LASF449:
	.string	"operands"
.LASF972:
	.string	"put_pending_sizes"
.LASF206:
	.string	"MODIFY_EXPR"
.LASF1007:
	.string	"dsize"
.LASF900:
	.string	"emit_status"
.LASF1003:
	.string	"desired_align"
.LASF999:
	.string	"normalize_rli"
.LASF442:
	.string	"tree_identifier"
.LASF155:
	.string	"MODE_VECTOR_FLOAT"
.LASF161:
	.string	"TREE_VEC"
.LASF788:
	.string	"POST_MODIFY"
.LASF354:
	.string	"BUILT_IN_SAVEREGS"
.LASF298:
	.string	"EXIT_EXPR"
.LASF933:
	.string	"unaligned_op"
.LASF316:
	.string	"BUILT_IN_CONJF"
.LASF241:
	.string	"RSHIFT_EXPR"
.LASF317:
	.string	"BUILT_IN_CONJL"
.LASF714:
	.string	"DEFINE_PEEPHOLE"
.LASF83:
	.string	"long long unsigned int"
.LASF872:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF682:
	.string	"offset"
.LASF835:
	.string	"addr_diff_vec_flags"
.LASF67:
	.string	"_cur_column"
.LASF710:
	.string	"MATCH_OP_DUP"
.LASF724:
	.string	"SEQUENCE"
.LASF684:
	.string	"bitpos"
.LASF159:
	.string	"IDENTIFIER_NODE"
.LASF947:
	.string	"issue_rate"
.LASF97:
	.string	"QFmode"
.LASF1043:
	.string	"init_stor_layout_once"
.LASF681:
	.string	"record_layout_info_s"
.LASF962:
	.string	"ms_bitfield_layout_p"
.LASF599:
	.string	"section_name"
.LASF500:
	.string	"args_info"
.LASF986:
	.string	"xmode"
.LASF263:
	.string	"UNLT_EXPR"
.LASF679:
	.string	"handler"
.LASF558:
	.string	"limit_stack"
.LASF182:
	.string	"LANG_TYPE"
.LASF751:
	.string	"RESX"
.LASF1050:
	.string	"mode_size"
.LASF739:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF619:
	.string	"TI_INTEGER_ZERO"
.LASF60:
	.string	"_IO_backup_base"
.LASF789:
	.string	"UNORDERED"
.LASF144:
	.string	"MAX_MACHINE_MODE"
.LASF51:
	.string	"_IO_read_ptr"
.LASF666:
	.string	"itk_int"
.LASF1071:
	.string	"stor-layout.c"
.LASF355:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF416:
	.string	"public_flag"
.LASF756:
	.string	"CONST"
.LASF909:
	.string	"regno_pointer_align"
.LASF805:
	.string	"SQRT"
.LASF467:
	.string	"string_flag"
.LASF880:
	.string	"GR_CC0"
.LASF1069:
	.string	"lang_adjust_rli"
.LASF146:
	.string	"mode_class"
.LASF771:
	.string	"MULT"
.LASF177:
	.string	"SET_TYPE"
.LASF151:
	.string	"MODE_CC"
.LASF454:
	.string	"vars"
.LASF706:
	.string	"MATCH_SCRATCH"
.LASF211:
	.string	"CALL_EXPR"
.LASF93:
	.string	"PQImode"
.LASF246:
	.string	"BIT_AND_EXPR"
.LASF285:
	.string	"REALPART_EXPR"
.LASF125:
	.string	"V8HImode"
.LASF793:
	.string	"UNGT"
.LASF526:
	.string	"x_temp_slots"
.LASF611:
	.string	"TI_INTSI_TYPE"
.LASF322:
	.string	"BUILT_IN_CIMAGF"
.LASF571:
	.string	"nonlocal_flag"
.LASF66:
	.string	"_old_offset"
.LASF420:
	.string	"deprecated_flag"
.LASF759:
	.string	"SUBREG"
.LASF472:
	.string	"restrict_flag"
.LASF548:
	.string	"calls_longjmp"
.LASF128:
	.string	"V16QImode"
.LASF310:
	.string	"BUILT_IN_FABS"
.LASF23:
	.string	"decl"
.LASF286:
	.string	"IMAGPART_EXPR"
.LASF84:
	.string	"long long int"
.LASF646:
	.string	"TI_UV2SI_TYPE"
.LASF602:
	.string	"inlined_fns"
.LASF672:
	.string	"itk_none"
.LASF65:
	.string	"_flags2"
.LASF697:
	.string	"SBITSIZETYPE"
.LASF104:
	.string	"QCmode"
.LASF757:
	.string	"VALUE"
.LASF737:
	.string	"NOTE"
.LASF214:
	.string	"CLEANUP_POINT_EXPR"
.LASF890:
	.string	"GR_MAX"
.LASF33:
	.string	"sse_nregs"
.LASF1040:
	.string	"volatilep"
.LASF781:
	.string	"UMIN"
.LASF643:
	.string	"TI_UV8HI_TYPE"
.LASF184:
	.string	"REAL_CST"
.LASF385:
	.string	"BUILT_IN_ISLESS"
.LASF343:
	.string	"BUILT_IN_STRCHR"
.LASF399:
	.string	"BUILT_IN_VA_END"
.LASF852:
	.string	"basic_block_def"
.LASF477:
	.string	"reference_to"
.LASF233:
	.string	"FIX_ROUND_EXPR"
.LASF965:
	.string	"section_type_flags"
.LASF260:
	.string	"NE_EXPR"
.LASF922:
	.string	"varasm_status"
.LASF363:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF350:
	.string	"BUILT_IN_COSF"
.LASF168:
	.string	"ENUMERAL_TYPE"
.LASF899:
	.string	"sequence_rtl_expr"
.LASF859:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF505:
	.string	"x_function_call_count"
.LASF111:
	.string	"CHImode"
.LASF319:
	.string	"BUILT_IN_CREALF"
.LASF204:
	.string	"CONSTRUCTOR"
.LASF452:
	.string	"abstract_flag"
.LASF320:
	.string	"BUILT_IN_CREALL"
.LASF585:
	.string	"non_addr_const_p"
.LASF440:
	.string	"elements"
.LASF908:
	.string	"regno_pointer_align_length"
.LASF903:
	.string	"x_first_insn"
.LASF662:
	.string	"itk_signed_char"
.LASF917:
	.string	"x_apply_args_value"
.LASF753:
	.string	"CONST_DOUBLE"
.LASF365:
	.string	"BUILT_IN_SETJMP"
.LASF382:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF668:
	.string	"itk_long"
.LASF140:
	.string	"CCNOmode"
.LASF121:
	.string	"V4HImode"
.LASF791:
	.string	"UNEQ"
.LASF162:
	.string	"BLOCK"
.LASF774:
	.string	"ASHIFT"
.LASF640:
	.string	"TI_VOID_LIST_NODE"
.LASF779:
	.string	"SMIN"
.LASF979:
	.string	"__FUNCTION__"
.LASF766:
	.string	"IF_THEN_ELSE"
.LASF574:
	.string	"bit_field_flag"
.LASF370:
	.string	"BUILT_IN_PUTS"
.LASF577:
	.string	"in_system_header_flag"
.LASF1005:
	.string	"place_field"
.LASF1000:
	.string	"rli_size_unit_so_far"
.LASF580:
	.string	"transparent_union"
.LASF871:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF977:
	.string	"mode_for_size_tree"
.LASF494:
	.string	"outer"
.LASF603:
	.string	"vindex"
.LASF707:
	.string	"MATCH_DUP"
.LASF868:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF906:
	.string	"x_last_linenum"
.LASF186:
	.string	"VECTOR_CST"
.LASF37:
	.string	"unsigned int"
.LASF278:
	.string	"RTL_EXPR"
.LASF838:
	.string	"tree_node"
.LASF510:
	.string	"x_cleanup_label"
.LASF784:
	.string	"PRE_INC"
.LASF267:
	.string	"UNEQ_EXPR"
.LASF335:
	.string	"BUILT_IN_STRNCPY"
.LASF973:
	.string	"variable_size"
.LASF830:
	.string	"max_after_vec"
.LASF164:
	.string	"INTEGER_TYPE"
.LASF792:
	.string	"UNGE"
.LASF902:
	.string	"x_first_label_num"
.LASF570:
	.string	"external_flag"
.LASF44:
	.string	"short int"
.LASF271:
	.string	"RANGE_EXPR"
.LASF564:
	.string	"uses_pic_offset_table"
.LASF554:
	.string	"has_computed_jump"
.LASF345:
	.string	"BUILT_IN_SQRT"
.LASF200:
	.string	"BUFFER_REF"
.LASF904:
	.string	"x_last_insn"
.LASF557:
	.string	"profile"
.LASF68:
	.string	"_vtable_offset"
.LASF283:
	.string	"COMPLEX_EXPR"
.LASF391:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF264:
	.string	"UNLE_EXPR"
.LASF1035:
	.string	"fixup_signed_type"
.LASF540:
	.string	"preferred_stack_boundary"
.LASF85:
	.string	"VOIDmode"
.LASF845:
	.string	"rt_addr_diff_vec_flags"
.LASF639:
	.string	"TI_VA_LIST_TYPE"
.LASF674:
	.string	"min_length"
.LASF978:
	.string	"smallest_mode_for_size"
.LASF888:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF809:
	.string	"LO_SUM"
.LASF336:
	.string	"BUILT_IN_STRCMP"
.LASF165:
	.string	"REAL_TYPE"
.LASF624:
	.string	"TI_SIZE_ONE"
.LASF302:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
