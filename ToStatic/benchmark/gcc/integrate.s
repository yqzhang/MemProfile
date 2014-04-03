	.file	"integrate.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 integrate.c -mtune=generic -march=x86-64 -g
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
	.local	inlining
	.comm	inlining,8,8
	.globl	get_label_from_map
	.type	get_label_from_map, @function
get_label_from_map:
.LFB2:
	.file 1 "integrate.c"
	.loc 1 119 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# map, map
	movl	%esi, -44(%rbp)	# i, i
	.loc 1 120 0
	movq	-40(%rbp), %rax	# map, tmp70
	movq	40(%rax), %rax	# map_2(D)->label_map, D.17385
	movl	-44(%rbp), %edx	# i, tmp71
	movslq	%edx, %rdx	# tmp71, D.17386
	salq	$3, %rdx	#, D.17386
	addq	%rdx, %rax	# D.17386, D.17385
	movq	(%rax), %rax	# *_7, tmp72
	movq	%rax, -24(%rbp)	# tmp72, x
	.loc 1 122 0
	cmpq	$0, -24(%rbp)	#, x
	jne	.L2	#,
	.loc 1 123 0
	movq	-40(%rbp), %rax	# map, tmp73
	movq	40(%rax), %rax	# map_2(D)->label_map, D.17385
	movl	-44(%rbp), %edx	# i, tmp74
	movslq	%edx, %rdx	# tmp74, D.17386
	salq	$3, %rdx	#, D.17386
	leaq	(%rax,%rdx), %rbx	#, D.17385
	call	gen_label_rtx	#
	movq	%rax, (%rbx)	# D.17387, *_12
	movq	(%rbx), %rax	# *_12, tmp75
	movq	%rax, -24(%rbp)	# tmp75, x
.L2:
	.loc 1 125 0
	movq	-24(%rbp), %rax	# x, D.17388
	.loc 1 126 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	get_label_from_map, .-get_label_from_map
	.globl	function_attribute_inlinable_p
	.type	function_attribute_inlinable_p, @function
function_attribute_inlinable_p:
.LFB3:
	.loc 1 133 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# fndecl, fndecl
	.loc 1 134 0
	movb	$0, -21(%rbp)	#, has_machine_attr
	.loc 1 137 0
	movq	-40(%rbp), %rax	# fndecl, tmp73
	movq	136(%rax), %rax	# fndecl_8(D)->decl.attributes, tmp74
	movq	%rax, -16(%rbp)	# tmp74, a
	jmp	.L5	#
.L12:
.LBB2:
	.loc 1 139 0
	movq	-16(%rbp), %rax	# a, tmp75
	movq	24(%rax), %rax	# a_4->list.purpose, tmp76
	movq	%rax, -8(%rbp)	# tmp76, name
	.loc 1 142 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L6	#
.L9:
	.loc 1 144 0
	movq	targetm+256(%rip), %rax	# targetm.attribute_table, D.17390
	movl	-20(%rbp), %edx	# i, tmp77
	movslq	%edx, %rdx	# tmp77, D.17391
	salq	$5, %rdx	#, D.17391
	addq	%rdx, %rax	# D.17391, D.17390
	movq	(%rax), %rax	# _20->name, D.17392
	movq	-8(%rbp), %rdx	# name, tmp78
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# D.17392,
	call	is_attribute_p	#
	testl	%eax, %eax	# D.17393
	je	.L7	#,
	.loc 1 146 0
	movb	$1, -21(%rbp)	#, has_machine_attr
	.loc 1 147 0
	jmp	.L8	#
.L7:
	.loc 1 142 0
	addl	$1, -20(%rbp)	#, i
.L6:
	.loc 1 142 0 is_stmt 0 discriminator 1
	movq	targetm+256(%rip), %rax	# targetm.attribute_table, D.17390
	movl	-20(%rbp), %edx	# i, tmp79
	movslq	%edx, %rdx	# tmp79, D.17391
	salq	$5, %rdx	#, D.17391
	addq	%rdx, %rax	# D.17391, D.17390
	movq	(%rax), %rax	# _15->name, D.17392
	testq	%rax, %rax	# D.17392
	jne	.L9	#,
.L8:
	.loc 1 150 0 is_stmt 1
	cmpb	$0, -21(%rbp)	#, has_machine_attr
	je	.L10	#,
	.loc 1 151 0
	jmp	.L11	#
.L10:
.LBE2:
	.loc 1 137 0
	movq	-16(%rbp), %rax	# a, tmp80
	movq	(%rax), %rax	# a_4->common.chain, tmp81
	movq	%rax, -16(%rbp)	# tmp81, a
.L5:
	.loc 1 137 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, a
	jne	.L12	#,
.L11:
	.loc 1 154 0 is_stmt 1
	cmpb	$0, -21(%rbp)	#, has_machine_attr
	je	.L13	#,
	.loc 1 155 0
	movq	targetm+288(%rip), %rax	# targetm.function_attribute_inlinable_p, D.17394
	movq	-40(%rbp), %rdx	# fndecl, tmp82
	movq	%rdx, %rdi	# tmp82,
	call	*%rax	# D.17394
	jmp	.L14	#
.L13:
	.loc 1 157 0
	movl	$1, %eax	#, D.17389
.L14:
	.loc 1 158 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	function_attribute_inlinable_p, .-function_attribute_inlinable_p
	.section	.rodata
.LC0:
	.string	"function cannot be inline"
	.align 8
.LC1:
	.string	"varargs function cannot be inline"
	.align 8
.LC2:
	.string	"function using alloca cannot be inline"
	.align 8
.LC3:
	.string	"function using setjmp cannot be inline"
	.align 8
.LC4:
	.string	"function uses __builtin_eh_return"
	.align 8
.LC5:
	.string	"function with nested functions cannot be inline"
	.align 8
.LC6:
	.string	"function with label addresses used in initializers cannot inline"
	.align 8
.LC7:
	.string	"function too large to be inline"
	.align 8
.LC8:
	.string	"inline functions not supported for this return value type"
	.align 8
.LC9:
	.string	"function with varying-size return value cannot be inline"
	.align 8
.LC10:
	.string	"function with varying-size parameter cannot be inline"
	.align 8
.LC11:
	.string	"function with transparent unit parameter cannot be inline"
	.align 8
.LC12:
	.string	"function with computed jump cannot inline"
	.align 8
.LC13:
	.string	"function with nonlocal goto cannot be inline"
	.align 8
.LC14:
	.string	"function with target specific attribute(s) cannot be inlined"
	.text
	.globl	function_cannot_inline_p
	.type	function_cannot_inline_p, @function
function_cannot_inline_p:
.LFB4:
	.loc 1 168 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# fndecl, fndecl
	.loc 1 170 0
	movq	-72(%rbp), %rax	# fndecl, tmp144
	movq	8(%rax), %rax	# fndecl_9(D)->common.type, D.17396
	movq	24(%rax), %rax	# _10->type.values, D.17396
	movq	%rax, %rdi	# D.17396,
	call	tree_last	#
	movq	%rax, -32(%rbp)	# tmp145, last
	.loc 1 177 0
	movq	-72(%rbp), %rax	# fndecl, tmp146
	movzbl	49(%rax), %eax	# *fndecl_9(D), D.17397
	andl	$8, %eax	#, D.17397
	.loc 1 179 0
	testb	%al, %al	# D.17397
	je	.L16	#,
	.loc 1 177 0
	movq	compiler_params(%rip), %rax	# compiler_params, compiler_params.1
	movl	8(%rax), %ebx	# compiler_params.1_15->value, D.17398
	.loc 1 178 0
	movq	-72(%rbp), %rax	# fndecl, tmp147
	movq	88(%rax), %rax	# fndecl_9(D)->decl.arguments, D.17396
	movq	%rax, %rdi	# D.17396,
	call	list_length	#
	sall	$3, %eax	#, D.17398
	.loc 1 179 0
	addl	%ebx, %eax	# D.17398, iftmp.0
	jmp	.L17	#
.L16:
	.loc 1 179 0 is_stmt 0 discriminator 1
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.3
	testl	%eax, %eax	# optimize_size.3
	je	.L18	#,
	movq	-72(%rbp), %rax	# fndecl, tmp148
	movq	88(%rax), %rax	# fndecl_9(D)->decl.arguments, D.17396
	movq	%rax, %rdi	# D.17396,
	call	list_length	#
	movl	%eax, %edx	#, D.17398
	movl	%edx, %eax	# D.17398, tmp149
	addl	%eax, %eax	# tmp149
	addl	%edx, %eax	# D.17398, D.17398
	movl	%eax, %edx	# D.17398, tmp150
	shrl	$31, %edx	#, tmp150
	addl	%edx, %eax	# tmp150, tmp151
	sarl	%eax	# tmp152
	addl	$1, %eax	#, iftmp.2
	jmp	.L17	#
.L18:
	.loc 1 179 0 discriminator 2
	movq	-72(%rbp), %rax	# fndecl, tmp153
	movq	88(%rax), %rax	# fndecl_9(D)->decl.arguments, D.17396
	movq	%rax, %rdi	# D.17396,
	call	list_length	#
	addl	$8, %eax	#, D.17398
	sall	$3, %eax	#, iftmp.2
.L17:
	.loc 1 176 0 is_stmt 1
	movl	%eax, -52(%rbp)	# iftmp.0, max_insns
	.loc 1 181 0
	movl	$0, -56(%rbp)	#, ninsns
	.loc 1 184 0
	movq	-72(%rbp), %rax	# fndecl, tmp154
	movzbl	52(%rax), %eax	# *fndecl_9(D), D.17397
	andl	$16, %eax	#, D.17397
	testb	%al, %al	# D.17397
	je	.L20	#,
	.loc 1 185 0
	movl	$.LC0, %eax	#, D.17395
	jmp	.L21	#
.L20:
	.loc 1 188 0
	cmpq	$0, -32(%rbp)	#, last
	je	.L22	#,
	.loc 1 188 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# last, tmp155
	movq	32(%rax), %rdx	# last_12->list.value, D.17396
	movq	global_trees+216(%rip), %rax	# global_trees, D.17396
	cmpq	%rax, %rdx	# D.17396, D.17396
	jne	.L23	#,
.L22:
	.loc 1 189 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.4
	movzbl	426(%rax), %eax	# *cfun.4_39, D.17397
	andl	$1, %eax	#, D.17397
	testb	%al, %al	# D.17397
	je	.L24	#,
.L23:
	.loc 1 190 0
	movl	$.LC1, %eax	#, D.17395
	jmp	.L21	#
.L24:
	.loc 1 192 0
	movq	cfun(%rip), %rax	# cfun, cfun.5
	movzbl	424(%rax), %eax	# *cfun.5_42, D.17397
	andl	$64, %eax	#, D.17397
	testb	%al, %al	# D.17397
	je	.L25	#,
	.loc 1 193 0
	movl	$.LC2, %eax	#, D.17395
	jmp	.L21	#
.L25:
	.loc 1 195 0
	movq	cfun(%rip), %rax	# cfun, cfun.6
	movzbl	424(%rax), %eax	# *cfun.6_46, D.17397
	andl	$16, %eax	#, D.17397
	testb	%al, %al	# D.17397
	je	.L26	#,
	.loc 1 196 0
	movl	$.LC3, %eax	#, D.17395
	jmp	.L21	#
.L26:
	.loc 1 198 0
	movq	cfun(%rip), %rax	# cfun, cfun.7
	movzbl	424(%rax), %eax	# *cfun.7_50, D.17397
	andl	$-128, %eax	#, D.17397
	testb	%al, %al	# D.17397
	je	.L27	#,
	.loc 1 199 0
	movl	$.LC4, %eax	#, D.17395
	jmp	.L21	#
.L27:
	.loc 1 201 0
	movq	cfun(%rip), %rax	# cfun, cfun.8
	movzbl	425(%rax), %eax	# *cfun.8_54, D.17397
	andl	$4, %eax	#, D.17397
	testb	%al, %al	# D.17397
	je	.L28	#,
	.loc 1 202 0
	movl	$.LC5, %eax	#, D.17395
	jmp	.L21	#
.L28:
	.loc 1 204 0
	movq	cfun(%rip), %rax	# cfun, cfun.9
	movq	16(%rax), %rax	# cfun.9_58->expr, D.17399
	movq	32(%rax), %rax	# _59->x_forced_labels, D.17400
	testq	%rax, %rax	# D.17400
	je	.L29	#,
	.loc 1 205 0
	movl	$.LC6, %eax	#, D.17395
	jmp	.L21	#
.L29:
	.loc 1 208 0
	movq	cfun(%rip), %rax	# cfun, cfun.10
	movq	136(%rax), %rax	# cfun.10_62->cannot_inline, D.17395
	testq	%rax, %rax	# D.17395
	je	.L30	#,
	.loc 1 209 0
	movq	cfun(%rip), %rax	# cfun, cfun.11
	movq	136(%rax), %rax	# cfun.11_64->cannot_inline, D.17395
	jmp	.L21	#
.L30:
	.loc 1 212 0
	call	get_max_uid	#
	movl	%eax, %ecx	#, D.17398
	movl	-52(%rbp), %edx	# max_insns, tmp156
	movl	%edx, %eax	# tmp156, tmp157
	addl	%eax, %eax	# tmp157
	addl	%edx, %eax	# tmp156, D.17398
	cmpl	%eax, %ecx	# D.17398, D.17398
	jle	.L31	#,
	.loc 1 213 0
	movl	$.LC7, %eax	#, D.17395
	jmp	.L21	#
.L31:
	.loc 1 229 0
	movq	cfun(%rip), %rax	# cfun, cfun.12
	movzbl	424(%rax), %eax	# *cfun.12_69, D.17397
	andl	$2, %eax	#, D.17397
	testb	%al, %al	# D.17397
	je	.L32	#,
	.loc 1 230 0
	movl	$.LC8, %eax	#, D.17395
	jmp	.L21	#
.L32:
	.loc 1 233 0
	movq	-72(%rbp), %rax	# fndecl, tmp158
	movq	8(%rax), %rax	# fndecl_9(D)->common.type, D.17396
	movq	8(%rax), %rax	# _73->common.type, D.17396
	movzbl	16(%rax), %eax	# _74->common.code, D.17397
	cmpb	$5, %al	#, D.17397
	je	.L33	#,
	.loc 1 234 0
	movq	-72(%rbp), %rax	# fndecl, tmp159
	movq	8(%rax), %rax	# fndecl_9(D)->common.type, D.17396
	movq	8(%rax), %rax	# _76->common.type, D.17396
	movq	%rax, %rdi	# D.17396,
	call	int_size_in_bytes	#
	testq	%rax, %rax	# D.17401
	jns	.L33	#,
	.loc 1 235 0
	movl	$.LC9, %eax	#, D.17395
	jmp	.L21	#
.L33:
	.loc 1 239 0
	movq	-72(%rbp), %rax	# fndecl, tmp160
	movq	88(%rax), %rax	# fndecl_9(D)->decl.arguments, tmp161
	movq	%rax, -40(%rbp)	# tmp161, parms
	jmp	.L34	#
.L37:
	.loc 1 241 0
	movq	-40(%rbp), %rax	# parms, tmp162
	movq	8(%rax), %rax	# parms_4->common.type, D.17396
	movq	%rax, %rdi	# D.17396,
	call	int_size_in_bytes	#
	testq	%rax, %rax	# D.17401
	jns	.L35	#,
	.loc 1 242 0
	movl	$.LC10, %eax	#, D.17395
	jmp	.L21	#
.L35:
	.loc 1 243 0
	movq	-40(%rbp), %rax	# parms, tmp163
	movq	8(%rax), %rax	# parms_4->common.type, D.17396
	movzbl	16(%rax), %eax	# _84->common.code, D.17397
	cmpb	$21, %al	#, D.17397
	jne	.L36	#,
	.loc 1 244 0
	movq	-40(%rbp), %rax	# parms, tmp164
	movq	8(%rax), %rax	# parms_4->common.type, D.17396
	movzbl	62(%rax), %eax	# *_86, D.17397
	andl	$8, %eax	#, D.17397
	testb	%al, %al	# D.17397
	je	.L36	#,
	.loc 1 245 0
	movl	$.LC11, %eax	#, D.17395
	jmp	.L21	#
.L36:
	.loc 1 239 0
	movq	-40(%rbp), %rax	# parms, tmp165
	movq	(%rax), %rax	# parms_4->common.chain, tmp166
	movq	%rax, -40(%rbp)	# tmp166, parms
.L34:
	.loc 1 239 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, parms
	jne	.L37	#,
	.loc 1 248 0 is_stmt 1
	call	get_max_uid	#
	cmpl	-52(%rbp), %eax	# max_insns, D.17398
	jle	.L38	#,
	.loc 1 250 0
	movl	$0, -56(%rbp)	#, ninsns
	call	get_first_nonparm_insn	#
	movq	%rax, -48(%rbp)	# tmp167, insn
	jmp	.L39	#
.L42:
	.loc 1 253 0
	movq	-48(%rbp), %rax	# insn, tmp168
	movzwl	(%rax), %eax	# insn_1->code, D.17402
	movzwl	%ax, %eax	# D.17402, D.17398
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17403
	cmpb	$105, %al	#, D.17403
	jne	.L40	#,
	.loc 1 254 0
	addl	$1, -56(%rbp)	#, ninsns
.L40:
	.loc 1 252 0
	movq	-48(%rbp), %rax	# insn, tmp170
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp171
	movq	%rax, -48(%rbp)	# tmp171, insn
.L39:
	.loc 1 250 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, insn
	je	.L41	#,
	.loc 1 251 0
	movl	-56(%rbp), %eax	# ninsns, tmp172
	cmpl	-52(%rbp), %eax	# max_insns, tmp172
	jl	.L42	#,
.L41:
	.loc 1 256 0
	movl	-56(%rbp), %eax	# ninsns, tmp173
	cmpl	-52(%rbp), %eax	# max_insns, tmp173
	jl	.L38	#,
	.loc 1 257 0
	movl	$.LC7, %eax	#, D.17395
	jmp	.L21	#
.L38:
	.loc 1 263 0
	movq	cfun(%rip), %rax	# cfun, cfun.13
	movzbl	425(%rax), %eax	# *cfun.13_100, D.17397
	andl	$8, %eax	#, D.17397
	testb	%al, %al	# D.17397
	je	.L43	#,
	.loc 1 264 0
	movl	$.LC12, %eax	#, D.17395
	jmp	.L21	#
.L43:
	.loc 1 267 0
	movq	cfun(%rip), %rax	# cfun, cfun.14
	movzbl	425(%rax), %eax	# *cfun.14_104, D.17397
	andl	$2, %eax	#, D.17397
	testb	%al, %al	# D.17397
	je	.L44	#,
	.loc 1 268 0
	movl	$.LC13, %eax	#, D.17395
	jmp	.L21	#
.L44:
	.loc 1 271 0
	movq	-72(%rbp), %rax	# fndecl, tmp174
	movq	96(%rax), %rax	# fndecl_9(D)->decl.result, D.17396
	movq	144(%rax), %rax	# _108->decl.rtl, D.17400
	testq	%rax, %rax	# D.17400
	je	.L45	#,
.LBB3:
	.loc 1 273 0
	movq	-72(%rbp), %rax	# fndecl, tmp175
	movq	96(%rax), %rax	# fndecl_9(D)->decl.result, D.17396
	movq	144(%rax), %rax	# _110->decl.rtl, D.17400
	testq	%rax, %rax	# D.17400
	je	.L46	#,
	.loc 1 273 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# fndecl, tmp176
	movq	96(%rax), %rax	# fndecl_9(D)->decl.result, D.17396
	movq	144(%rax), %rax	# _112->decl.rtl, iftmp.15
	jmp	.L47	#
.L46:
	.loc 1 273 0 discriminator 2
	movq	-72(%rbp), %rax	# fndecl, tmp177
	movq	96(%rax), %rax	# fndecl_9(D)->decl.result, D.17396
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17396,
	call	make_decl_rtl	#
	movq	-72(%rbp), %rax	# fndecl, tmp178
	movq	96(%rax), %rax	# fndecl_9(D)->decl.result, D.17396
	movq	144(%rax), %rax	# _115->decl.rtl, iftmp.15
.L47:
	.loc 1 273 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.15, result
	.loc 1 274 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# result, tmp179
	movzwl	(%rax), %eax	# result_117->code, D.17402
	cmpw	$39, %ax	#, D.17402
	jne	.L45	#,
	.loc 1 275 0
	movl	$.LC8, %eax	#, D.17395
	jmp	.L21	#
.L45:
.LBE3:
	.loc 1 281 0
	movq	-72(%rbp), %rax	# fndecl, tmp180
	movq	%rax, %rdi	# tmp180,
	call	function_attribute_inlinable_p	#
	xorl	$1, %eax	#, D.17404
	testb	%al, %al	# D.17404
	je	.L48	#,
	.loc 1 282 0
	movl	$.LC14, %eax	#, D.17395
	jmp	.L21	#
.L48:
	.loc 1 284 0
	movl	$0, %eax	#, D.17395
.L21:
	.loc 1 285 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	function_cannot_inline_p, .-function_cannot_inline_p
	.local	parmdecl_map
	.comm	parmdecl_map,8,8
	.local	in_nonparm_insns
	.comm	in_nonparm_insns,4,4
	.type	initialize_for_inline, @function
initialize_for_inline:
.LFB5:
	.loc 1 301 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# fndecl, fndecl
	.loc 1 307 0
	movq	cfun(%rip), %rax	# cfun, cfun.16
	movl	304(%rax), %eax	# cfun.16_5->x_max_parm_reg, D.17420
	movl	%eax, %eax	# D.17420, D.17421
	leaq	0(,%rax,8), %rdx	#, D.17421
	movq	parmdecl_map(%rip), %rax	# parmdecl_map, parmdecl_map.17
	movl	$0, %esi	#,
	movq	%rax, %rdi	# parmdecl_map.17,
	call	memset	#
	.loc 1 308 0
	movq	-56(%rbp), %rax	# fndecl, tmp101
	movq	88(%rax), %rax	# fndecl_10(D)->decl.arguments, D.17422
	movq	%rax, %rdi	# D.17422,
	call	list_length	#
	movl	%eax, %edi	# D.17423,
	call	rtvec_alloc	#
	movq	%rax, -24(%rbp)	# tmp102, arg_vector
	.loc 1 310 0
	movq	-56(%rbp), %rax	# fndecl, tmp103
	movq	88(%rax), %rax	# fndecl_10(D)->decl.arguments, tmp104
	movq	%rax, -40(%rbp)	# tmp104, parms
	movl	$0, -44(%rbp)	#, i
	jmp	.L50	#
.L57:
.LBB4:
	.loc 1 314 0
	movq	-40(%rbp), %rax	# parms, tmp105
	movq	144(%rax), %rax	# parms_2->decl.rtl, D.17424
	testq	%rax, %rax	# D.17424
	je	.L51	#,
	.loc 1 314 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# parms, tmp106
	movq	144(%rax), %rax	# parms_2->decl.rtl, iftmp.18
	jmp	.L52	#
.L51:
	.loc 1 314 0 discriminator 2
	movq	-40(%rbp), %rax	# parms, tmp107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	make_decl_rtl	#
	movq	-40(%rbp), %rax	# parms, tmp108
	movq	144(%rax), %rax	# parms_2->decl.rtl, iftmp.18
.L52:
	.loc 1 314 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.18, p
	.loc 1 319 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# p, tmp109
	movzwl	(%rax), %eax	# p_19->code, D.17425
	cmpw	$66, %ax	#, D.17425
	jne	.L53	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp110
	movq	8(%rax), %rax	# p_19->fld[0].rtx, D.17424
	movzwl	(%rax), %eax	# _21->code, D.17425
	cmpw	$70, %ax	#, D.17425
	jne	.L53	#,
	.loc 1 320 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp111
	movq	8(%rax), %rax	# p_19->fld[0].rtx, D.17424
	movq	8(%rax), %rax	# _23->fld[0].rtx, D.17424
	movzwl	(%rax), %eax	# _24->code, D.17425
	cmpw	$66, %ax	#, D.17425
	jne	.L53	#,
	.loc 1 321 0
	movq	-32(%rbp), %rax	# p, tmp112
	movq	8(%rax), %rax	# p_19->fld[0].rtx, D.17424
	movq	8(%rax), %rax	# _26->fld[0].rtx, tmp113
	movq	%rax, -32(%rbp)	# tmp113, p
.L53:
	.loc 1 323 0
	movq	-24(%rbp), %rax	# arg_vector, tmp114
	movl	-44(%rbp), %edx	# i, tmp116
	movslq	%edx, %rdx	# tmp116, tmp115
	movq	-32(%rbp), %rcx	# p, tmp117
	movq	%rcx, 8(%rax,%rdx,8)	# tmp117, arg_vector_13->elem
	.loc 1 325 0
	movq	-32(%rbp), %rax	# p, tmp118
	movzwl	(%rax), %eax	# p_3->code, D.17425
	cmpw	$61, %ax	#, D.17425
	jne	.L54	#,
	.loc 1 326 0
	movq	parmdecl_map(%rip), %rdx	# parmdecl_map, parmdecl_map.19
	movq	-32(%rbp), %rax	# p, tmp119
	movl	8(%rax), %eax	# p_3->fld[0].rtuint, D.17420
	movl	%eax, %eax	# D.17420, D.17421
	salq	$3, %rax	#, D.17421
	addq	%rax, %rdx	# D.17421, D.17426
	movq	-40(%rbp), %rax	# parms, tmp120
	movq	%rax, (%rdx)	# tmp120, *_33
	jmp	.L55	#
.L54:
	.loc 1 327 0
	movq	-32(%rbp), %rax	# p, tmp121
	movzwl	(%rax), %eax	# p_3->code, D.17425
	cmpw	$65, %ax	#, D.17425
	jne	.L55	#,
.LBB5:
	.loc 1 329 0
	movq	-32(%rbp), %rax	# p, tmp122
	movq	8(%rax), %rax	# p_3->fld[0].rtx, D.17424
	movzbl	2(%rax), %eax	# _35->mode, D.17427
	movzbl	%al, %eax	# D.17427, D.17428
	movq	-32(%rbp), %rdx	# p, tmp123
	movq	%rdx, %rsi	# tmp123,
	movl	%eax, %edi	# D.17428,
	call	gen_realpart	#
	movq	%rax, -16(%rbp)	# tmp124, preal
	.loc 1 330 0
	movq	-16(%rbp), %rax	# preal, tmp125
	movzbl	2(%rax), %eax	# preal_38->mode, D.17427
	movzbl	%al, %eax	# D.17427, D.17428
	movq	-32(%rbp), %rdx	# p, tmp126
	movq	%rdx, %rsi	# tmp126,
	movl	%eax, %edi	# D.17428,
	call	gen_imagpart	#
	movq	%rax, -8(%rbp)	# tmp127, pimag
	.loc 1 332 0
	movq	-16(%rbp), %rax	# preal, tmp128
	movzwl	(%rax), %eax	# preal_38->code, D.17425
	cmpw	$61, %ax	#, D.17425
	jne	.L56	#,
	.loc 1 333 0
	movq	parmdecl_map(%rip), %rdx	# parmdecl_map, parmdecl_map.20
	movq	-16(%rbp), %rax	# preal, tmp129
	movl	8(%rax), %eax	# preal_38->fld[0].rtuint, D.17420
	movl	%eax, %eax	# D.17420, D.17421
	salq	$3, %rax	#, D.17421
	addq	%rax, %rdx	# D.17421, D.17426
	movq	-40(%rbp), %rax	# parms, tmp130
	movq	%rax, (%rdx)	# tmp130, *_47
.L56:
	.loc 1 334 0
	movq	-8(%rbp), %rax	# pimag, tmp131
	movzwl	(%rax), %eax	# pimag_41->code, D.17425
	cmpw	$61, %ax	#, D.17425
	jne	.L55	#,
	.loc 1 335 0
	movq	parmdecl_map(%rip), %rdx	# parmdecl_map, parmdecl_map.21
	movq	-8(%rbp), %rax	# pimag, tmp132
	movl	8(%rax), %eax	# pimag_41->fld[0].rtuint, D.17420
	movl	%eax, %eax	# D.17420, D.17421
	salq	$3, %rax	#, D.17421
	addq	%rax, %rdx	# D.17421, D.17426
	movq	-40(%rbp), %rax	# parms, tmp133
	movq	%rax, (%rdx)	# tmp133, *_53
.L55:
.LBE5:
	.loc 1 340 0
	movq	-40(%rbp), %rax	# parms, tmp134
	movzbl	17(%rax), %edx	#, tmp137
	orl	$16, %edx	#, tmp138
	movb	%dl, 17(%rax)	# tmp138,
.LBE4:
	.loc 1 312 0
	movq	-40(%rbp), %rax	# parms, tmp139
	movq	(%rax), %rax	# parms_2->common.chain, tmp140
	movq	%rax, -40(%rbp)	# tmp140, parms
	addl	$1, -44(%rbp)	#, i
.L50:
	.loc 1 310 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, parms
	jne	.L57	#,
	.loc 1 343 0
	movq	-24(%rbp), %rax	# arg_vector, D.17429
	.loc 1 344 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	initialize_for_inline, .-initialize_for_inline
	.globl	copy_decl_for_inlining
	.type	copy_decl_for_inlining, @function
copy_decl_for_inlining:
.LFB6:
	.loc 1 355 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	movq	%rsi, -32(%rbp)	# from_fn, from_fn
	movq	%rdx, -40(%rbp)	# to_fn, to_fn
	.loc 1 359 0
	movq	-24(%rbp), %rax	# decl, tmp76
	movzbl	16(%rax), %eax	# decl_3(D)->common.code, D.17430
	cmpb	$35, %al	#, D.17430
	je	.L60	#,
	.loc 1 359 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp77
	movzbl	16(%rax), %eax	# decl_3(D)->common.code, D.17430
	cmpb	$36, %al	#, D.17430
	jne	.L61	#,
.L60:
	.loc 1 363 0 is_stmt 1
	movq	-24(%rbp), %rax	# decl, tmp78
	movq	8(%rax), %rdx	# decl_3(D)->common.type, D.17432
	movq	-24(%rbp), %rax	# decl, tmp79
	movq	72(%rax), %rax	# decl_3(D)->decl.name, D.17432
	movq	%rax, %rsi	# D.17432,
	movl	$34, %edi	#,
	call	build_decl	#
	movq	%rax, -8(%rbp)	# tmp80, copy
	.loc 1 364 0
	movq	-24(%rbp), %rax	# decl, tmp81
	movzbl	17(%rax), %eax	# *decl_3(D), tmp84
	shrb	$2, %al	#, D.17433
	andl	$1, %eax	#, D.17433
	movq	-8(%rbp), %rdx	# copy, tmp85
	andl	$1, %eax	#, tmp87
	leal	0(,%rax,4), %ecx	#, tmp88
	movzbl	17(%rdx), %eax	#, tmp89
	andl	$-5, %eax	#, tmp90
	orl	%ecx, %eax	# tmp88, tmp91
	movb	%al, 17(%rdx)	# tmp91,
	.loc 1 365 0
	movq	-24(%rbp), %rax	# decl, tmp92
	movzbl	17(%rax), %eax	# *decl_3(D), tmp95
	shrb	$4, %al	#, D.17433
	andl	$1, %eax	#, D.17433
	movq	-8(%rbp), %rdx	# copy, tmp96
	andl	$1, %eax	#, tmp98
	sall	$4, %eax	#, tmp99
	movl	%eax, %ecx	# tmp99, tmp99
	movzbl	17(%rdx), %eax	#, tmp100
	andl	$-17, %eax	#, tmp101
	orl	%ecx, %eax	# tmp99, tmp102
	movb	%al, 17(%rdx)	# tmp102,
	.loc 1 366 0
	movq	-24(%rbp), %rax	# decl, tmp103
	movzbl	17(%rax), %eax	# *decl_3(D), tmp106
	shrb	$3, %al	#, D.17433
	andl	$1, %eax	#, D.17433
	movq	-8(%rbp), %rdx	# copy, tmp107
	andl	$1, %eax	#, tmp109
	leal	0(,%rax,8), %ecx	#, tmp110
	movzbl	17(%rdx), %eax	#, tmp111
	andl	$-9, %eax	#, tmp112
	orl	%ecx, %eax	# tmp110, tmp113
	movb	%al, 17(%rdx)	# tmp113,
	jmp	.L62	#
.L61:
	.loc 1 370 0
	movq	-24(%rbp), %rax	# decl, tmp114
	movq	%rax, %rdi	# tmp114,
	call	copy_node	#
	movq	%rax, -8(%rbp)	# tmp115, copy
	.loc 1 371 0
	movq	-8(%rbp), %rax	# copy, tmp116
	movq	200(%rax), %rax	# copy_6->decl.lang_specific, D.17431
	testq	%rax, %rax	# D.17431
	je	.L63	#,
	.loc 1 372 0
	movq	-8(%rbp), %rax	# copy, tmp117
	movq	%rax, %rdi	# tmp117,
	call	copy_lang_decl	#
.L63:
	.loc 1 377 0
	movq	-8(%rbp), %rax	# copy, tmp118
	movzbl	16(%rax), %eax	# copy_6->common.code, D.17430
	cmpb	$31, %al	#, D.17430
	jne	.L62	#,
	.loc 1 378 0
	movq	-8(%rbp), %rax	# copy, tmp119
	movzbl	17(%rax), %edx	#, tmp122
	andl	$-5, %edx	#, tmp123
	movb	%dl, 17(%rax)	# tmp123,
.L62:
	.loc 1 383 0
	movq	-24(%rbp), %rax	# decl, tmp124
	movq	112(%rax), %rax	# decl_3(D)->decl.abstract_origin, D.17432
	testq	%rax, %rax	# D.17432
	je	.L64	#,
	.loc 1 383 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp125
	movq	112(%rax), %rax	# decl_3(D)->decl.abstract_origin, iftmp.22
	jmp	.L65	#
.L64:
	.loc 1 383 0 discriminator 2
	movq	-24(%rbp), %rax	# decl, iftmp.22
.L65:
	.loc 1 383 0 discriminator 3
	movq	-8(%rbp), %rdx	# copy, tmp126
	movq	%rax, 112(%rdx)	# iftmp.22, copy_1->decl.abstract_origin
	.loc 1 386 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# copy, tmp127
	movq	$0, 144(%rax)	#, copy_1->decl.rtl
	.loc 1 389 0 discriminator 3
	movq	-8(%rbp), %rax	# copy, tmp128
	movzbl	18(%rax), %edx	#, tmp131
	orl	$1, %edx	#, tmp132
	movb	%dl, 18(%rax)	# tmp132,
	.loc 1 392 0 discriminator 3
	movq	-24(%rbp), %rax	# decl, tmp133
	movq	80(%rax), %rax	# decl_3(D)->decl.context, D.17432
	testq	%rax, %rax	# D.17432
	je	.L66	#,
	.loc 1 395 0
	movq	-24(%rbp), %rax	# decl, tmp134
	movq	80(%rax), %rax	# decl_3(D)->decl.context, D.17432
	cmpq	-32(%rbp), %rax	# from_fn, D.17432
	jne	.L66	#,
	.loc 1 399 0
	movq	-24(%rbp), %rax	# decl, tmp135
	movzbl	18(%rax), %eax	# *decl_3(D), D.17430
	andl	$4, %eax	#, D.17430
	testb	%al, %al	# D.17430
	jne	.L66	#,
	.loc 1 406 0
	movq	-8(%rbp), %rax	# copy, tmp136
	movq	-40(%rbp), %rdx	# to_fn, tmp137
	movq	%rdx, 80(%rax)	# tmp137, copy_1->decl.context
.L66:
	.loc 1 408 0
	movq	-8(%rbp), %rax	# copy, D.17432
	.loc 1 409 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	copy_decl_for_inlining, .-copy_decl_for_inlining
	.section	.rodata
.LC15:
	.string	"integrate.c"
	.text
	.globl	save_for_inline
	.type	save_for_inline, @function
save_for_inline:
.LFB7:
	.loc 1 433 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# fndecl, fndecl
	.loc 1 443 0
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.23
	testl	%eax, %eax	# flag_no_inline.23
	jne	.L69	#,
	.loc 1 444 0
	movq	cfun(%rip), %rax	# cfun, cfun.24
	movl	304(%rax), %eax	# cfun.24_4->x_max_parm_reg, D.17434
	movl	%eax, %eax	# D.17434, D.17435
	salq	$3, %rax	#, D.17435
	movq	%rax, %rdi	# D.17435,
	call	xmalloc	#
	movq	%rax, parmdecl_map(%rip)	# parmdecl_map.25, parmdecl_map
.L69:
	.loc 1 448 0
	movq	cfun(%rip), %rax	# cfun, cfun.26
	movq	200(%rax), %rax	# cfun.26_9->x_return_label, D.17436
	testq	%rax, %rax	# D.17436
	jne	.L70	#,
	.loc 1 450 0
	movq	cfun(%rip), %rbx	# cfun, cfun.27
	call	gen_label_rtx	#
	movq	%rax, 200(%rbx)	# D.17436, cfun.27_11->x_return_label
	.loc 1 451 0
	movq	cfun(%rip), %rax	# cfun, cfun.28
	movq	200(%rax), %rax	# cfun.28_13->x_return_label, D.17436
	movq	%rax, %rdi	# D.17436,
	call	emit_label	#
.L70:
	.loc 1 454 0
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.29
	testl	%eax, %eax	# flag_no_inline.29
	jne	.L71	#,
	.loc 1 455 0
	movq	-56(%rbp), %rax	# fndecl, tmp92
	movq	%rax, %rdi	# tmp92,
	call	initialize_for_inline	#
	movq	%rax, -32(%rbp)	# tmp93, argvec
	jmp	.L72	#
.L71:
	.loc 1 457 0
	movq	$0, -32(%rbp)	#, argvec
.L72:
	.loc 1 462 0
	call	get_insns	#
	movq	%rax, -40(%rbp)	# tmp94, insn
	jmp	.L73	#
.L75:
	.loc 1 463 0
	movq	-40(%rbp), %rax	# insn, tmp95
	movzwl	(%rax), %eax	# insn_1->code, D.17437
	cmpw	$37, %ax	#, D.17437
	jne	.L74	#,
	.loc 1 463 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp96
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.17438
	cmpl	$-80, %eax	#, D.17438
	jne	.L74	#,
	.loc 1 464 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp97
	movq	%rax, %rdi	# tmp97,
	call	delete_related_insns	#
.L74:
	.loc 1 462 0
	movq	-40(%rbp), %rax	# insn, tmp98
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp99
	movq	%rax, -40(%rbp)	# tmp99, insn
.L73:
	.loc 1 462 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L75	#,
	.loc 1 470 0 is_stmt 1
	call	get_insns	#
	movq	%rax, -40(%rbp)	# tmp100, insn
	.loc 1 471 0
	movq	-40(%rbp), %rax	# insn, tmp101
	movzwl	(%rax), %eax	# insn_23->code, D.17437
	cmpw	$37, %ax	#, D.17437
	je	.L76	#,
	.loc 1 472 0
	movl	$__FUNCTION__.14006, %edx	#,
	movl	$472, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L76:
	.loc 1 474 0
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.30
	testl	%eax, %eax	# flag_no_inline.30
	jne	.L77	#,
	.loc 1 477 0
	call	get_first_nonparm_insn	#
	movq	%rax, -24(%rbp)	# tmp102, first_nonparm_insn
	.loc 1 485 0
	movl	$0, in_nonparm_insns(%rip)	#, in_nonparm_insns
	.loc 1 486 0
	movq	-24(%rbp), %rdx	# first_nonparm_insn, tmp103
	movq	-40(%rbp), %rax	# insn, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	save_parm_insns	#
	.loc 1 488 0
	movq	cfun(%rip), %rbx	# cfun, cfun.31
	call	max_label_num	#
	movl	%eax, 384(%rbx)	# D.17438, cfun.31_27->inl_max_label_num
	.loc 1 489 0
	movq	cfun(%rip), %rax	# cfun, cfun.32
	movq	cfun(%rip), %rdx	# cfun, cfun.33
	movq	296(%rdx), %rdx	# cfun.33_30->x_last_parm_insn, D.17436
	movq	%rdx, 376(%rax)	# D.17436, cfun.32_29->inl_last_parm_insn
	.loc 1 490 0
	movq	cfun(%rip), %rax	# cfun, cfun.34
	movq	-32(%rbp), %rdx	# argvec, tmp105
	movq	%rdx, 360(%rax)	# tmp105, cfun.34_32->original_arg_vector
.L77:
	.loc 1 492 0
	movq	cfun(%rip), %rax	# cfun, cfun.35
	movq	-56(%rbp), %rdx	# fndecl, tmp106
	movq	104(%rdx), %rdx	# fndecl_16(D)->decl.initial, D.17439
	movq	%rdx, 368(%rax)	# D.17439, cfun.35_33->original_decl_initial
	.loc 1 493 0
	movq	cfun(%rip), %rax	# cfun, cfun.36
	movl	write_symbols(%rip), %edx	# write_symbols, write_symbols.37
	testl	%edx, %edx	# write_symbols.37
	sete	%dl	#, D.17440
	movzbl	%dl, %edx	# D.17440, D.17438
	movl	%edx, 356(%rax)	# D.17438, cfun.36_35->no_debugging_symbols
	.loc 1 494 0
	movq	cfun(%rip), %rdx	# cfun, cfun.38
	movq	-56(%rbp), %rax	# fndecl, tmp107
	movq	%rdx, 160(%rax)	# cfun.38, fndecl_16(D)->decl.u2.f
	.loc 1 497 0
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.39
	testl	%eax, %eax	# flag_no_inline.39
	jne	.L68	#,
	.loc 1 498 0
	movq	parmdecl_map(%rip), %rax	# parmdecl_map, parmdecl_map.40
	movq	%rax, %rdi	# parmdecl_map.40,
	call	free	#
.L68:
	.loc 1 499 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	save_for_inline, .-save_for_inline
	.type	save_parm_insns, @function
save_parm_insns:
.LFB8:
	.loc 1 511 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# first_nonparm_insn, first_nonparm_insn
	.loc 1 512 0
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L80	#,
	.loc 1 513 0
	jmp	.L79	#
.L80:
	.loc 1 515 0
	movq	-24(%rbp), %rax	# insn, tmp68
	movq	24(%rax), %rax	# insn_3(D)->fld[2].rtx, tmp69
	movq	%rax, -24(%rbp)	# tmp69, insn
	jmp	.L82	#
.L87:
	.loc 1 517 0
	movq	-24(%rbp), %rax	# insn, tmp70
	cmpq	-32(%rbp), %rax	# first_nonparm_insn, tmp70
	jne	.L83	#,
	.loc 1 518 0
	movl	$1, in_nonparm_insns(%rip)	#, in_nonparm_insns
.L83:
	.loc 1 520 0
	movq	-24(%rbp), %rax	# insn, tmp71
	movzwl	(%rax), %eax	# insn_1->code, D.17442
	movzwl	%ax, %eax	# D.17442, D.17443
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17444
	cmpb	$105, %al	#, D.17444
	jne	.L84	#,
	.loc 1 523 0
	movq	-24(%rbp), %rax	# insn, tmp73
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.17445
	movl	$0, %edx	#,
	movl	$note_modified_parmregs, %esi	#,
	movq	%rax, %rdi	# D.17445,
	call	note_stores	#
	.loc 1 528 0
	movq	-24(%rbp), %rax	# insn, tmp74
	movzwl	(%rax), %eax	# insn_1->code, D.17442
	cmpw	$34, %ax	#, D.17442
	jne	.L84	#,
	.loc 1 529 0
	movq	-24(%rbp), %rax	# insn, tmp75
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.17445
	movzwl	(%rax), %eax	# _11->code, D.17442
	cmpw	$141, %ax	#, D.17442
	jne	.L84	#,
.LBB6:
	.loc 1 533 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L85	#
.L86:
	.loc 1 534 0 discriminator 2
	movq	-24(%rbp), %rax	# insn, tmp76
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.17445
	movl	-4(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, tmp77
	movq	8(%rax,%rdx,8), %rax	# _14->fld[i_2].rtx, D.17445
	movq	-32(%rbp), %rdx	# first_nonparm_insn, tmp79
	movq	%rdx, %rsi	# tmp79,
	movq	%rax, %rdi	# D.17445,
	call	save_parm_insns	#
	.loc 1 533 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L85:
	.loc 1 533 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, i
	jle	.L86	#,
.L84:
.LBE6:
	.loc 1 515 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp80
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp81
	movq	%rax, -24(%rbp)	# tmp81, insn
.L82:
	.loc 1 515 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L87	#,
.L79:
	.loc 1 539 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	save_parm_insns, .-save_parm_insns
	.type	note_modified_parmregs, @function
note_modified_parmregs:
.LFB9:
	.loc 1 548 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# reg, reg
	movq	%rsi, -16(%rbp)	# x, x
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 549 0
	movq	-8(%rbp), %rax	# reg, tmp77
	movzwl	(%rax), %eax	# reg_1(D)->code, D.17446
	cmpw	$61, %ax	#, D.17446
	jne	.L88	#,
	.loc 1 549 0 is_stmt 0 discriminator 1
	movl	in_nonparm_insns(%rip), %eax	# in_nonparm_insns, in_nonparm_insns.41
	testl	%eax, %eax	# in_nonparm_insns.41
	je	.L88	#,
	.loc 1 550 0 is_stmt 1
	movq	-8(%rbp), %rax	# reg, tmp78
	movl	8(%rax), %edx	# reg_1(D)->fld[0].rtuint, D.17447
	movq	cfun(%rip), %rax	# cfun, cfun.42
	movl	304(%rax), %eax	# cfun.42_5->x_max_parm_reg, D.17447
	cmpl	%eax, %edx	# D.17447, D.17447
	jae	.L88	#,
	.loc 1 551 0
	movq	-8(%rbp), %rax	# reg, tmp79
	movl	8(%rax), %eax	# reg_1(D)->fld[0].rtuint, D.17447
	cmpl	$52, %eax	#, D.17447
	jbe	.L88	#,
	.loc 1 552 0
	movq	parmdecl_map(%rip), %rdx	# parmdecl_map, parmdecl_map.43
	movq	-8(%rbp), %rax	# reg, tmp80
	movl	8(%rax), %eax	# reg_1(D)->fld[0].rtuint, D.17447
	movl	%eax, %eax	# D.17447, D.17448
	salq	$3, %rax	#, D.17448
	addq	%rdx, %rax	# parmdecl_map.43, D.17449
	movq	(%rax), %rax	# *_12, D.17450
	testq	%rax, %rax	# D.17450
	je	.L88	#,
	.loc 1 553 0
	movq	parmdecl_map(%rip), %rdx	# parmdecl_map, parmdecl_map.44
	movq	-8(%rbp), %rax	# reg, tmp81
	movl	8(%rax), %eax	# reg_1(D)->fld[0].rtuint, D.17447
	movl	%eax, %eax	# D.17447, D.17448
	salq	$3, %rax	#, D.17448
	addq	%rdx, %rax	# parmdecl_map.44, D.17449
	movq	(%rax), %rax	# *_18, D.17450
	movzbl	17(%rax), %edx	#, tmp84
	andl	$-17, %edx	#, tmp85
	movb	%dl, 17(%rax)	# tmp85,
.L88:
	.loc 1 554 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	note_modified_parmregs, .-note_modified_parmregs
	.comm	global_const_equiv_varray,8,8
	.type	process_reg_param, @function
process_reg_param:
.LFB10:
	.loc 1 581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# map, map
	movq	%rsi, -48(%rbp)	# loc, loc
	movq	%rdx, -56(%rbp)	# copy, copy
	.loc 1 582 0
	movq	-56(%rbp), %rax	# copy, tmp108
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$61, %ax	#, D.17451
	je	.L91	#,
	.loc 1 582 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# copy, tmp109
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$63, %ax	#, D.17451
	jne	.L92	#,
.L91:
	.loc 1 583 0 is_stmt 1
	movq	-56(%rbp), %rax	# copy, tmp110
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$61, %ax	#, D.17451
	jne	.L93	#,
	.loc 1 583 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# loc, tmp111
	movzbl	3(%rax), %eax	# *loc_6(D), D.17452
	andl	$8, %eax	#, D.17452
	testb	%al, %al	# D.17452
	je	.L93	#,
	.loc 1 584 0 is_stmt 1
	movq	-56(%rbp), %rax	# copy, tmp112
	movzbl	3(%rax), %eax	# *copy_2(D), D.17452
	andl	$8, %eax	#, D.17452
	testb	%al, %al	# D.17452
	je	.L92	#,
.L93:
	.loc 1 585 0
	movq	-56(%rbp), %rax	# copy, tmp113
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$61, %ax	#, D.17451
	jne	.L94	#,
	.loc 1 586 0
	movq	-56(%rbp), %rax	# copy, tmp114
	movl	8(%rax), %eax	# copy_2(D)->fld[0].rtuint, D.17453
	cmpl	$52, %eax	#, D.17453
	ja	.L94	#,
.L92:
.LBB7:
	.loc 1 588 0
	movq	-48(%rbp), %rax	# loc, tmp115
	movzbl	2(%rax), %eax	# loc_6(D)->mode, D.17452
	movzbl	%al, %eax	# D.17452, D.17454
	movq	-56(%rbp), %rdx	# copy, tmp116
	movq	%rdx, %rsi	# tmp116,
	movl	%eax, %edi	# D.17454,
	call	copy_to_mode_reg	#
	movq	%rax, -16(%rbp)	# tmp117, temp
	.loc 1 589 0
	movq	-48(%rbp), %rax	# loc, tmp118
	movzbl	3(%rax), %eax	# *loc_6(D), tmp121
	shrb	$3, %al	#, D.17455
	andl	$1, %eax	#, D.17455
	movq	-16(%rbp), %rdx	# temp, tmp122
	andl	$1, %eax	#, tmp124
	leal	0(,%rax,8), %ecx	#, tmp125
	movzbl	3(%rdx), %eax	# temp_15->volatil, tmp126
	andl	$-9, %eax	#, tmp127
	orl	%ecx, %eax	# tmp125, tmp128
	movb	%al, 3(%rdx)	# tmp128, temp_15->volatil
	.loc 1 590 0
	movq	-56(%rbp), %rax	# copy, tmp129
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$67, %ax	#, D.17451
	je	.L95	#,
	.loc 1 590 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# copy, tmp130
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$68, %ax	#, D.17451
	je	.L95	#,
	movq	-56(%rbp), %rax	# copy, tmp131
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$54, %ax	#, D.17451
	je	.L95	#,
	movq	-56(%rbp), %rax	# copy, tmp132
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$55, %ax	#, D.17451
	je	.L95	#,
	movq	-56(%rbp), %rax	# copy, tmp133
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$58, %ax	#, D.17451
	je	.L95	#,
	movq	-56(%rbp), %rax	# copy, tmp134
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$134, %ax	#, D.17451
	je	.L95	#,
	movq	-56(%rbp), %rax	# copy, tmp135
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$56, %ax	#, D.17451
	je	.L95	#,
	movq	-56(%rbp), %rax	# copy, tmp136
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$140, %ax	#, D.17451
	je	.L95	#,
	movq	-56(%rbp), %rax	# copy, tmp137
	movzwl	(%rax), %eax	# copy_2(D)->code, D.17451
	cmpw	$75, %ax	#, D.17451
	jne	.L96	#,
	movq	-56(%rbp), %rax	# copy, tmp138
	movq	16(%rax), %rax	# copy_2(D)->fld[1].rtx, D.17456
	movzwl	(%rax), %eax	# _26->code, D.17451
	cmpw	$54, %ax	#, D.17451
	jne	.L96	#,
	movq	-56(%rbp), %rax	# copy, tmp139
	movq	8(%rax), %rax	# copy_2(D)->fld[0].rtx, D.17456
	movzwl	(%rax), %eax	# _28->code, D.17451
	cmpw	$61, %ax	#, D.17451
	jne	.L96	#,
	movq	-56(%rbp), %rax	# copy, tmp140
	movq	8(%rax), %rax	# copy_2(D)->fld[0].rtx, D.17456
	movl	8(%rax), %eax	# _30->fld[0].rtuint, D.17453
	cmpl	$52, %eax	#, D.17453
	jbe	.L96	#,
	movq	-56(%rbp), %rax	# copy, tmp141
	movq	8(%rax), %rax	# copy_2(D)->fld[0].rtx, D.17456
	movl	8(%rax), %eax	# _32->fld[0].rtuint, D.17453
	cmpl	$57, %eax	#, D.17453
	ja	.L96	#,
.L95:
.LBB8:
	.loc 1 591 0 is_stmt 1
	movq	-16(%rbp), %rax	# temp, tmp142
	movl	8(%rax), %eax	# temp_15->fld[0].rtuint, D.17453
	movl	%eax, %edx	# D.17453, D.17457
	movq	-40(%rbp), %rax	# map, tmp143
	movq	64(%rax), %rax	# map_36(D)->const_equiv_varray, D.17458
	movq	(%rax), %rax	# _37->num_elements, D.17457
	cmpq	%rax, %rdx	# D.17457, D.17457
	jb	.L97	#,
.LBB9:
	.loc 1 591 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# map, tmp144
	movq	64(%rax), %rdx	# map_36(D)->const_equiv_varray, D.17458
	movq	global_const_equiv_varray(%rip), %rax	# global_const_equiv_varray, global_const_equiv_varray.45
	cmpq	%rax, %rdx	# global_const_equiv_varray.45, D.17458
	sete	%al	#, D.17459
	movzbl	%al, %eax	# D.17459, tmp145
	movl	%eax, -20(%rbp)	# tmp145, is_global
	movq	-16(%rbp), %rax	# temp, tmp146
	movl	8(%rax), %eax	# temp_15->fld[0].rtuint, D.17453
	addl	$1, %eax	#, D.17453
	movl	%eax, %edx	# D.17453, D.17457
	movq	-40(%rbp), %rax	# map, tmp147
	movq	64(%rax), %rax	# map_36(D)->const_equiv_varray, D.17458
	movq	%rdx, %rsi	# D.17457,
	movq	%rax, %rdi	# D.17458,
	call	varray_grow	#
	movq	-40(%rbp), %rdx	# map, tmp148
	movq	%rax, 64(%rdx)	# D.17458, map_36(D)->const_equiv_varray
	cmpl	$0, -20(%rbp)	#, is_global
	je	.L97	#,
	movq	-40(%rbp), %rax	# map, tmp149
	movq	64(%rax), %rax	# map_36(D)->const_equiv_varray, global_const_equiv_varray.46
	movq	%rax, global_const_equiv_varray(%rip)	# global_const_equiv_varray.46, global_const_equiv_varray
.L97:
.LBE9:
	.loc 1 591 0 discriminator 2
	movq	-40(%rbp), %rax	# map, tmp150
	movq	64(%rax), %rdx	# map_36(D)->const_equiv_varray, D.17458
	movq	-16(%rbp), %rax	# temp, tmp151
	movl	8(%rax), %eax	# temp_15->fld[0].rtuint, D.17453
	movl	%eax, %eax	# D.17453, tmp152
	addq	$2, %rax	#, tmp153
	salq	$4, %rax	#, tmp154
	addq	%rdx, %rax	# D.17458, tmp155
	movq	%rax, -8(%rbp)	# tmp155, p
	movq	-8(%rbp), %rax	# p, tmp156
	movq	-56(%rbp), %rdx	# copy, tmp157
	movq	%rdx, (%rax)	# tmp157, p_51->rtx
	movq	-8(%rbp), %rax	# p, tmp158
	movl	$-1, 8(%rax)	#, p_51->age
.L96:
.LBE8:
	.loc 1 592 0 is_stmt 1
	movq	-16(%rbp), %rax	# temp, tmp159
	movq	%rax, -56(%rbp)	# tmp159, copy
.L94:
.LBE7:
	.loc 1 594 0
	movq	-40(%rbp), %rax	# map, tmp160
	movq	32(%rax), %rdx	# map_36(D)->reg_map, D.17460
	movq	-48(%rbp), %rax	# loc, tmp161
	movl	8(%rax), %eax	# loc_6(D)->fld[0].rtuint, D.17453
	movl	%eax, %eax	# D.17453, D.17457
	salq	$3, %rax	#, D.17457
	addq	%rax, %rdx	# D.17457, D.17460
	movq	-56(%rbp), %rax	# copy, tmp162
	movq	%rax, (%rdx)	# tmp162, *_57
	.loc 1 595 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	process_reg_param, .-process_reg_param
	.type	compare_blocks, @function
compare_blocks:
.LFB11:
	.loc 1 605 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# v1, v1
	movq	%rsi, -48(%rbp)	# v2, v2
	.loc 1 606 0
	movq	-40(%rbp), %rax	# v1, tmp62
	movq	(%rax), %rax	# MEM[(union tree_node * const *)v1_3(D)], tmp63
	movq	%rax, -32(%rbp)	# tmp63, b1
	.loc 1 607 0
	movq	-48(%rbp), %rax	# v2, tmp64
	movq	(%rax), %rax	# MEM[(union tree_node * const *)v2_5(D)], tmp65
	movq	%rax, -24(%rbp)	# tmp65, b2
	.loc 1 608 0
	movq	-32(%rbp), %rax	# b1, tmp66
	movq	56(%rax), %rax	# b1_4->block.abstract_origin, tmp67
	movq	%rax, -16(%rbp)	# tmp67, p1
	.loc 1 609 0
	movq	-24(%rbp), %rax	# b2, tmp68
	movq	56(%rax), %rax	# b2_6->block.abstract_origin, tmp69
	movq	%rax, -8(%rbp)	# tmp69, p2
	.loc 1 611 0
	movq	-16(%rbp), %rax	# p1, tmp70
	cmpq	-8(%rbp), %rax	# p2, tmp70
	jne	.L99	#,
	.loc 1 612 0
	movl	$0, %eax	#, D.17461
	jmp	.L100	#
.L99:
	.loc 1 613 0
	movq	-16(%rbp), %rax	# p1, tmp71
	cmpq	-8(%rbp), %rax	# p2, tmp71
	jae	.L101	#,
	.loc 1 613 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.47
	jmp	.L102	#
.L101:
	.loc 1 613 0 discriminator 2
	movl	$1, %eax	#, iftmp.47
.L102:
.L100:
	.loc 1 614 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	compare_blocks, .-compare_blocks
	.type	find_block, @function
find_block:
.LFB12:
	.loc 1 623 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# v1, v1
	movq	%rsi, -48(%rbp)	# v2, v2
	.loc 1 624 0
	movq	-40(%rbp), %rax	# v1, tmp62
	movq	%rax, -32(%rbp)	# tmp62, b1
	.loc 1 625 0
	movq	-48(%rbp), %rax	# v2, tmp63
	movq	(%rax), %rax	# MEM[(union tree_node * const *)v2_5(D)], tmp64
	movq	%rax, -24(%rbp)	# tmp64, b2
	.loc 1 626 0
	movq	-32(%rbp), %rax	# b1, tmp65
	movq	%rax, -16(%rbp)	# tmp65, p1
	.loc 1 627 0
	movq	-24(%rbp), %rax	# b2, tmp66
	movq	56(%rax), %rax	# b2_6->block.abstract_origin, tmp67
	movq	%rax, -8(%rbp)	# tmp67, p2
	.loc 1 629 0
	movq	-16(%rbp), %rax	# p1, tmp68
	cmpq	-8(%rbp), %rax	# p2, tmp68
	jne	.L104	#,
	.loc 1 630 0
	movl	$0, %eax	#, D.17462
	jmp	.L105	#
.L104:
	.loc 1 631 0
	movq	-16(%rbp), %rax	# p1, tmp69
	cmpq	-8(%rbp), %rax	# p2, tmp69
	jae	.L106	#,
	.loc 1 631 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.48
	jmp	.L107	#
.L106:
	.loc 1 631 0 discriminator 2
	movl	$1, %eax	#, iftmp.48
.L107:
.L105:
	.loc 1 632 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	find_block, .-find_block
	.section	.rodata
.LC16:
	.string	"block_map"
.LC17:
	.string	"expand_inline_function"
	.text
	.globl	expand_inline_function
	.type	expand_inline_function, @function
expand_inline_function:
.LFB13:
	.loc 1 655 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$352, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -328(%rbp)	# fndecl, fndecl
	movq	%rsi, -336(%rbp)	# parms, parms
	movq	%rdx, -344(%rbp)	# target, target
	movl	%ecx, -348(%rbp)	# ignore, ignore
	movq	%r8, -360(%rbp)	# type, type
	movq	%r9, -368(%rbp)	# structure_value_addr, structure_value_addr
	.loc 1 657 0
	movq	-328(%rbp), %rax	# fndecl, tmp540
	movq	160(%rax), %rax	# fndecl_39(D)->decl.u2.f, tmp541
	movq	%rax, -192(%rbp)	# tmp541, inl_f
	.loc 1 659 0
	movq	-192(%rbp), %rax	# inl_f, tmp542
	movq	24(%rax), %rax	# inl_f_40->emit, D.17464
	movq	8(%rax), %rax	# _41->x_first_insn, tmp543
	movq	%rax, -184(%rbp)	# tmp543, parm_insns
	.loc 1 660 0
	movq	-192(%rbp), %rax	# inl_f, tmp544
	movq	376(%rax), %rax	# inl_f_40->inl_last_parm_insn, D.17465
	.loc 1 662 0
	testq	%rax, %rax	# D.17465
	je	.L109	#,
	.loc 1 661 0
	movq	-192(%rbp), %rax	# inl_f, tmp545
	movq	376(%rax), %rax	# inl_f_40->inl_last_parm_insn, D.17465
	.loc 1 662 0
	movq	24(%rax), %rax	# _44->fld[2].rtx, iftmp.49
	jmp	.L110	#
.L109:
	.loc 1 662 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# parm_insns, iftmp.49
.L110:
	.loc 1 660 0 is_stmt 1
	movq	%rax, -176(%rbp)	# iftmp.49, insns
	.loc 1 667 0
	movq	-192(%rbp), %rax	# inl_f, tmp546
	movq	24(%rax), %rax	# inl_f_40->emit, D.17464
	movl	4(%rax), %eax	# _48->x_first_label_num, tmp547
	movl	%eax, -300(%rbp)	# tmp547, min_labelno
	.loc 1 668 0
	movq	-192(%rbp), %rax	# inl_f, tmp548
	movl	384(%rax), %eax	# inl_f_40->inl_max_label_num, tmp549
	movl	%eax, -296(%rbp)	# tmp549, max_labelno
	.loc 1 671 0
	movq	$0, -248(%rbp)	#, stack_save
	.loc 1 673 0
	movq	$0, -168(%rbp)	#, map
	.loc 1 674 0
	movq	-192(%rbp), %rax	# inl_f, tmp550
	movq	360(%rax), %rax	# inl_f_40->original_arg_vector, tmp551
	movq	%rax, -160(%rbp)	# tmp551, arg_vector
	.loc 1 675 0
	movq	$0, -216(%rbp)	#, static_chain_value
	.loc 1 681 0
	movq	$0, -152(%rbp)	#, real_label_map
	.loc 1 684 0
	movq	-192(%rbp), %rax	# inl_f, tmp552
	movq	24(%rax), %rax	# inl_f_40->emit, D.17464
	movl	(%rax), %eax	# _55->x_reg_rtx_no, D.17466
	addl	$3, %eax	#, tmp553
	movl	%eax, -292(%rbp)	# tmp553, max_regno
	.loc 1 685 0
	cmpl	$52, -292(%rbp)	#, max_regno
	jg	.L111	#,
	.loc 1 686 0
	movl	$__FUNCTION__.14079, %edx	#,
	movl	$686, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L111:
	.loc 1 690 0
	movq	-192(%rbp), %rax	# inl_f, tmp554
	movq	48(%rax), %rax	# inl_f_40->decl, tmp555
	movq	%rax, -328(%rbp)	# tmp555, fndecl
	.loc 1 692 0
	movq	-328(%rbp), %rax	# fndecl, tmp556
	movq	88(%rax), %rax	# fndecl_58->decl.arguments, D.17467
	movq	%rax, %rdi	# D.17467,
	call	list_length	#
	movl	%eax, -288(%rbp)	# tmp557, nargs
	.loc 1 694 0
	movq	cfun(%rip), %rax	# cfun, cfun.50
	movl	404(%rax), %edx	# cfun.50_61->preferred_stack_boundary, D.17466
	movq	-192(%rbp), %rax	# inl_f, tmp558
	movl	404(%rax), %eax	# inl_f_40->preferred_stack_boundary, D.17466
	cmpl	%eax, %edx	# D.17466, D.17466
	jge	.L112	#,
	.loc 1 695 0
	movq	cfun(%rip), %rax	# cfun, cfun.51
	movq	-192(%rbp), %rdx	# inl_f, tmp559
	movl	404(%rdx), %edx	# inl_f_40->preferred_stack_boundary, D.17466
	movl	%edx, 404(%rax)	# D.17466, cfun.51_64->preferred_stack_boundary
.L112:
	.loc 1 701 0
	movq	-328(%rbp), %rax	# fndecl, tmp560
	movq	88(%rax), %rax	# fndecl_58->decl.arguments, tmp561
	movq	%rax, -232(%rbp)	# tmp561, formal
	movq	-336(%rbp), %rax	# parms, tmp562
	movq	%rax, -224(%rbp)	# tmp562, actual
	jmp	.L113	#
.L118:
.LBB10:
	.loc 1 708 0
	cmpq	$0, -224(%rbp)	#, actual
	jne	.L114	#,
	.loc 1 709 0
	movq	$-1, %rax	#, D.17463
	jmp	.L219	#
.L114:
	.loc 1 711 0
	movq	-224(%rbp), %rax	# actual, tmp563
	movq	32(%rax), %rax	# actual_12->list.value, tmp564
	movq	%rax, -144(%rbp)	# tmp564, arg
	.loc 1 712 0
	movq	-232(%rbp), %rax	# formal, tmp565
	movq	104(%rax), %rax	# formal_9->decl.initial, D.17467
	movzbl	61(%rax), %eax	# *_71, tmp568
	shrb	%al	# D.17468
	movzbl	%al, %eax	# D.17468, tmp569
	movl	%eax, -284(%rbp)	# tmp569, mode
	.loc 1 714 0
	movq	global_trees(%rip), %rax	# global_trees, D.17467
	cmpq	-144(%rbp), %rax	# arg, D.17467
	je	.L116	#,
	.loc 1 715 0
	movq	-144(%rbp), %rax	# arg, tmp570
	movq	8(%rax), %rax	# arg_70->common.type, D.17467
	movzbl	61(%rax), %eax	# *_75, tmp573
	shrb	%al	# D.17468
	movzbl	%al, %eax	# D.17468, D.17469
	cmpl	-284(%rbp), %eax	# mode, D.17469
	jne	.L116	#,
	.loc 1 719 0
	cmpl	$51, -284(%rbp)	#, mode
	jne	.L117	#,
	.loc 1 720 0
	movq	-144(%rbp), %rax	# arg, tmp574
	movq	8(%rax), %rax	# arg_70->common.type, D.17467
	movq	128(%rax), %rdx	# _78->type.main_variant, D.17467
	.loc 1 721 0
	movq	-232(%rbp), %rax	# formal, tmp575
	movq	8(%rax), %rax	# formal_9->common.type, D.17467
	movq	128(%rax), %rax	# _80->type.main_variant, D.17467
	.loc 1 720 0
	cmpq	%rax, %rdx	# D.17467, D.17467
	je	.L117	#,
.L116:
	.loc 1 722 0
	movq	$-1, %rax	#, D.17463
	jmp	.L219	#
.L117:
.LBE10:
	.loc 1 703 0
	movq	-232(%rbp), %rax	# formal, tmp576
	movq	(%rax), %rax	# formal_9->common.chain, tmp577
	movq	%rax, -232(%rbp)	# tmp577, formal
	movq	-224(%rbp), %rax	# actual, tmp578
	movq	(%rax), %rax	# actual_12->common.chain, tmp579
	movq	%rax, -224(%rbp)	# tmp579, actual
.L113:
	.loc 1 701 0 discriminator 1
	cmpq	$0, -232(%rbp)	#, formal
	jne	.L118	#,
	.loc 1 727 0
	jmp	.L119	#
.L120:
	.loc 1 729 0 discriminator 2
	movq	-224(%rbp), %rax	# actual, tmp580
	movq	32(%rax), %rax	# actual_13->list.value, D.17467
	movq	8(%rax), %rax	# _85->common.type, D.17467
	movzbl	61(%rax), %eax	# *_86, tmp583
	shrb	%al	# D.17468
	.loc 1 728 0 discriminator 2
	movzbl	%al, %edx	# D.17468, D.17470
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17465
	movq	-224(%rbp), %rax	# actual, tmp584
	movq	32(%rax), %rax	# actual_13->list.value, D.17467
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.17467,
	call	expand_expr	#
	.loc 1 727 0 discriminator 2
	movq	-224(%rbp), %rax	# actual, tmp585
	movq	(%rax), %rax	# actual_13->common.chain, tmp586
	movq	%rax, -224(%rbp)	# tmp586, actual
.L119:
	.loc 1 727 0 is_stmt 0 discriminator 1
	cmpq	$0, -224(%rbp)	#, actual
	jne	.L120	#,
	.loc 1 734 0 is_stmt 1
	movl	-288(%rbp), %eax	# nargs, tmp587
	cltq
	salq	$3, %rax	#, D.17471
	movq	%rax, %rdi	# D.17471,
	call	xmalloc	#
	movq	%rax, -136(%rbp)	# tmp588, arg_vals
	.loc 1 735 0
	movl	-288(%rbp), %eax	# nargs, tmp589
	cltq
	salq	$3, %rax	#, D.17471
	movq	%rax, %rdi	# D.17471,
	call	xmalloc	#
	movq	%rax, -128(%rbp)	# tmp590, arg_trees
	.loc 1 737 0
	movq	-328(%rbp), %rax	# fndecl, tmp591
	movq	88(%rax), %rax	# fndecl_58->decl.arguments, tmp592
	movq	%rax, -232(%rbp)	# tmp592, formal
	movq	-336(%rbp), %rax	# parms, tmp593
	movq	%rax, -224(%rbp)	# tmp593, actual
	movl	$0, -316(%rbp)	#, i
	jmp	.L121	#
.L134:
.LBB11:
	.loc 1 743 0
	movq	-224(%rbp), %rax	# actual, tmp594
	movq	32(%rax), %rdx	# actual_14->list.value, D.17467
	movq	-232(%rbp), %rax	# formal, tmp595
	movq	8(%rax), %rax	# formal_10->common.type, D.17467
	movq	%rdx, %rsi	# D.17467,
	movq	%rax, %rdi	# D.17467,
	call	convert	#
	movq	%rax, -120(%rbp)	# tmp596, arg
	.loc 1 745 0
	movq	-232(%rbp), %rax	# formal, tmp597
	movq	8(%rax), %rax	# formal_10->common.type, D.17467
	movzbl	61(%rax), %eax	# *_104, tmp600
	shrb	%al	# D.17468
	movzbl	%al, %eax	# D.17468, tmp601
	movl	%eax, -280(%rbp)	# tmp601, mode
	.loc 1 746 0
	movl	$0, -312(%rbp)	#, invisiref
	.loc 1 748 0
	movl	-316(%rbp), %eax	# i, tmp602
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-128(%rbp), %rax	# arg_trees, tmp603
	addq	%rax, %rdx	# tmp603, D.17472
	movq	-120(%rbp), %rax	# arg, tmp604
	movq	%rax, (%rdx)	# tmp604, *_110
	.loc 1 749 0
	movq	-160(%rbp), %rax	# arg_vector, tmp605
	movl	-316(%rbp), %edx	# i, tmp607
	movslq	%edx, %rdx	# tmp607, tmp606
	movq	8(%rax,%rdx,8), %rax	# arg_vector_52->elem, tmp608
	movq	%rax, -112(%rbp)	# tmp608, loc
	.loc 1 755 0
	movq	-112(%rbp), %rax	# loc, tmp609
	movzwl	(%rax), %eax	# loc_111->code, D.17473
	cmpw	$66, %ax	#, D.17473
	jne	.L122	#,
	.loc 1 755 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# loc, tmp610
	movq	8(%rax), %rax	# loc_111->fld[0].rtx, D.17465
	movzwl	(%rax), %eax	# _113->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L122	#,
	.loc 1 756 0 is_stmt 1
	movq	-112(%rbp), %rax	# loc, tmp611
	movq	8(%rax), %rax	# loc_111->fld[0].rtx, D.17465
	movl	8(%rax), %eax	# _115->fld[0].rtuint, D.17469
	cmpl	$57, %eax	#, D.17469
	jbe	.L122	#,
.LBB12:
	.loc 1 758 0
	movq	-120(%rbp), %rax	# arg, tmp612
	movq	8(%rax), %rax	# arg_103->common.type, D.17467
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.17467,
	call	assign_temp	#
	movq	%rax, -104(%rbp)	# tmp613, stack_slot
	.loc 1 760 0
	movq	-104(%rbp), %rcx	# stack_slot, tmp614
	movq	-120(%rbp), %rax	# arg, tmp615
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp614,
	movq	%rax, %rdi	# tmp615,
	call	store_expr	#
	.loc 1 761 0
	movl	-316(%rbp), %eax	# i, tmp616
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp617
	addq	%rax, %rdx	# tmp617, D.17474
	movq	-104(%rbp), %rax	# stack_slot, tmp618
	movq	8(%rax), %rax	# stack_slot_118->fld[0].rtx, D.17465
	movq	%rax, (%rdx)	# D.17465, *_121
	.loc 1 762 0
	movl	$1, -312(%rbp)	#, invisiref
.LBE12:
	.loc 1 757 0
	jmp	.L123	#
.L122:
	.loc 1 764 0
	movq	-112(%rbp), %rax	# loc, tmp619
	movzwl	(%rax), %eax	# loc_111->code, D.17473
	cmpw	$66, %ax	#, D.17473
	je	.L124	#,
	.loc 1 766 0
	movq	-112(%rbp), %rax	# loc, tmp620
	movzbl	2(%rax), %edx	# loc_111->mode, D.17475
	movq	-120(%rbp), %rax	# arg, tmp621
	movq	8(%rax), %rax	# arg_103->common.type, D.17467
	movzbl	61(%rax), %eax	# *_126, tmp624
	shrb	%al	# D.17468
	cmpb	%al, %dl	# D.17475, D.17475
	je	.L125	#,
.LBB13:
	.loc 1 768 0
	movq	-232(%rbp), %rax	# formal, tmp625
	movq	8(%rax), %rax	# formal_10->common.type, D.17467
	movzbl	17(%rax), %eax	# *_129, tmp628
	shrb	$5, %al	#, D.17476
	andl	$1, %eax	#, D.17476
	movzbl	%al, %eax	# D.17476, unsignedp.52
	movl	%eax, -240(%rbp)	# unsignedp.52, unsignedp
	.loc 1 769 0
	movq	-232(%rbp), %rax	# formal, tmp629
	movq	8(%rax), %rax	# formal_10->common.type, D.17467
	movzbl	61(%rax), %eax	# *_132, tmp632
	shrb	%al	# D.17468
	movzbl	%al, %eax	# D.17468, tmp633
	movl	%eax, -276(%rbp)	# tmp633, pmode
	.loc 1 771 0
	movq	-232(%rbp), %rax	# formal, tmp634
	movq	8(%rax), %rax	# formal_10->common.type, D.17467
	leaq	-240(%rbp), %rdx	#, tmp635
	movl	-276(%rbp), %esi	# pmode, tmp636
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.17467,
	call	promote_mode	#
	movl	%eax, -276(%rbp)	# tmp637, pmode
	.loc 1 774 0
	movq	-112(%rbp), %rax	# loc, tmp638
	movzbl	2(%rax), %eax	# loc_111->mode, D.17475
	movzbl	%al, %eax	# D.17475, D.17469
	cmpl	-276(%rbp), %eax	# pmode, D.17469
	je	.L126	#,
	.loc 1 775 0
	movl	$__FUNCTION__.14079, %edx	#,
	movl	$775, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L126:
	.loc 1 779 0
	movl	-316(%rbp), %eax	# i, tmp639
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp640
	leaq	(%rdx,%rax), %r12	#, D.17474
	movl	-240(%rbp), %ebx	# unsignedp, unsignedp.53
	movl	-280(%rbp), %edx	# mode, tmp641
	movq	-120(%rbp), %rax	# arg, tmp642
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp642,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.17465
	.loc 1 780 0
	movq	-120(%rbp), %rax	# arg, tmp643
	movq	8(%rax), %rax	# arg_103->common.type, D.17467
	movzbl	61(%rax), %eax	# *_144, tmp646
	shrb	%al	# D.17468
	.loc 1 779 0
	movzbl	%al, %esi	# D.17468, D.17470
	movl	-276(%rbp), %eax	# pmode, tmp647
	movl	%ebx, %ecx	# unsignedp.53,
	movl	%eax, %edi	# tmp647,
	call	convert_modes	#
	movq	%rax, (%r12)	# D.17465, *_141
.LBE13:
	jmp	.L123	#
.L125:
	.loc 1 786 0
	movl	-316(%rbp), %eax	# i, tmp648
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp649
	leaq	(%rdx,%rax), %rbx	#, D.17474
	movl	-280(%rbp), %edx	# mode, tmp650
	movq	-120(%rbp), %rax	# arg, tmp651
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp651,
	call	expand_expr	#
	movq	%rax, (%rbx)	# D.17465, *_150
	jmp	.L123	#
.L124:
	.loc 1 789 0
	movl	-316(%rbp), %eax	# i, tmp652
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp653
	addq	%rdx, %rax	# D.17471, D.17474
	movq	$0, (%rax)	#, *_154
.L123:
	.loc 1 791 0
	movl	-316(%rbp), %eax	# i, tmp654
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp655
	addq	%rdx, %rax	# D.17471, D.17474
	movq	(%rax), %rax	# *_157, D.17465
	testq	%rax, %rax	# D.17465
	je	.L128	#,
	.loc 1 792 0
	movq	-232(%rbp), %rax	# formal, tmp656
	movzbl	17(%rax), %eax	# *formal_10, D.17475
	andl	$16, %eax	#, D.17475
	testb	%al, %al	# D.17475
	je	.L129	#,
	.loc 1 802 0
	cmpq	$0, -344(%rbp)	#, target
	je	.L130	#,
	.loc 1 803 0
	cmpl	$0, -312(%rbp)	#, invisiref
	jne	.L130	#,
	.loc 1 804 0
	movl	-316(%rbp), %eax	# i, tmp657
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp658
	addq	%rdx, %rax	# D.17471, D.17474
	movq	(%rax), %rax	# *_164, D.17465
	movzwl	(%rax), %eax	# _165->code, D.17473
	cmpw	$61, %ax	#, D.17473
	je	.L131	#,
	.loc 1 805 0
	movl	-316(%rbp), %eax	# i, tmp659
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp660
	addq	%rdx, %rax	# D.17471, D.17474
	movq	(%rax), %rax	# *_169, D.17465
	movzwl	(%rax), %eax	# _170->code, D.17473
	cmpw	$63, %ax	#, D.17473
	je	.L131	#,
	.loc 1 806 0
	movl	-316(%rbp), %eax	# i, tmp661
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp662
	addq	%rdx, %rax	# D.17471, D.17474
	movq	(%rax), %rax	# *_174, D.17465
	movzwl	(%rax), %eax	# _175->code, D.17473
	cmpw	$66, %ax	#, D.17473
	jne	.L130	#,
.L131:
	.loc 1 807 0
	movl	-316(%rbp), %eax	# i, tmp663
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp664
	addq	%rdx, %rax	# D.17471, D.17474
	movq	(%rax), %rax	# *_179, D.17465
	movq	-344(%rbp), %rdx	# target, tmp665
	movq	%rdx, %rsi	# tmp665,
	movq	%rax, %rdi	# D.17465,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.17466
	jne	.L129	#,
.L130:
	.loc 1 811 0
	movl	-316(%rbp), %eax	# i, tmp666
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp667
	addq	%rdx, %rax	# D.17471, D.17474
	movq	(%rax), %rax	# *_184, D.17465
	movzwl	(%rax), %eax	# _185->code, D.17473
	cmpw	$63, %ax	#, D.17473
	jne	.L128	#,
.L129:
	.loc 1 812 0
	movl	-316(%rbp), %eax	# i, tmp668
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp669
	leaq	(%rdx,%rax), %rbx	#, D.17474
	movl	-316(%rbp), %eax	# i, tmp670
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp671
	addq	%rdx, %rax	# D.17471, D.17474
	movq	(%rax), %rdx	# *_192, D.17465
	movq	-112(%rbp), %rax	# loc, tmp672
	movzbl	2(%rax), %eax	# loc_111->mode, D.17475
	movzbl	%al, %eax	# D.17475, D.17470
	movq	%rdx, %rsi	# D.17465,
	movl	%eax, %edi	# D.17470,
	call	copy_to_mode_reg	#
	movq	%rax, (%rbx)	# D.17465, *_189
.L128:
	.loc 1 814 0
	movl	-316(%rbp), %eax	# i, tmp673
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp674
	addq	%rdx, %rax	# D.17471, D.17474
	movq	(%rax), %rax	# *_199, D.17465
	testq	%rax, %rax	# D.17465
	je	.L132	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	movl	-316(%rbp), %eax	# i, tmp675
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp676
	addq	%rdx, %rax	# D.17471, D.17474
	movq	(%rax), %rax	# *_203, D.17465
	movzwl	(%rax), %eax	# _204->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L132	#,
	.loc 1 815 0 is_stmt 1
	movq	-232(%rbp), %rax	# formal, tmp677
	movq	8(%rax), %rax	# formal_10->common.type, D.17467
	movzbl	16(%rax), %eax	# _206->common.code, D.17475
	cmpb	$13, %al	#, D.17475
	je	.L133	#,
	.loc 1 815 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# formal, tmp678
	movq	8(%rax), %rax	# formal_10->common.type, D.17467
	movzbl	16(%rax), %eax	# _208->common.code, D.17475
	cmpb	$15, %al	#, D.17475
	jne	.L132	#,
.L133:
	.loc 1 817 0 is_stmt 1
	movq	-232(%rbp), %rax	# formal, tmp679
	movq	8(%rax), %rax	# formal_10->common.type, D.17467
	movq	8(%rax), %rax	# _210->common.type, D.17467
	movl	64(%rax), %eax	# _211->type.align, D.17469
	.loc 1 816 0
	movl	%eax, %edx	# D.17469, D.17466
	movl	-316(%rbp), %eax	# i, tmp680
	cltq
	leaq	0(,%rax,8), %rcx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp681
	addq	%rcx, %rax	# D.17471, D.17474
	movq	(%rax), %rax	# *_216, D.17465
	movl	%edx, %esi	# D.17466,
	movq	%rax, %rdi	# D.17465,
	call	mark_reg_pointer	#
.L132:
.LBE11:
	.loc 1 739 0
	movq	-232(%rbp), %rax	# formal, tmp682
	movq	(%rax), %rax	# formal_10->common.chain, tmp683
	movq	%rax, -232(%rbp)	# tmp683, formal
	movq	-224(%rbp), %rax	# actual, tmp684
	movq	(%rax), %rax	# actual_14->common.chain, tmp685
	movq	%rax, -224(%rbp)	# tmp685, actual
	addl	$1, -316(%rbp)	#, i
.L121:
	.loc 1 737 0 discriminator 1
	cmpq	$0, -232(%rbp)	#, formal
	jne	.L134	#,
	.loc 1 822 0
	movl	$648, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -168(%rbp)	# tmp686, map
	.loc 1 823 0
	movq	-168(%rbp), %rax	# map, tmp687
	movq	-328(%rbp), %rdx	# fndecl, tmp688
	movq	%rdx, 8(%rax)	# tmp688, map_221->fndecl
	.loc 1 825 0
	movl	$.LC16, %edx	#,
	movl	$8, %esi	#,
	movl	$10, %edi	#,
	call	varray_init	#
	movq	-168(%rbp), %rdx	# map, tmp689
	movq	%rax, 24(%rdx)	# D.17477, map_221->block_map
	.loc 1 826 0
	movl	-292(%rbp), %eax	# max_regno, tmp690
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.17471,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp691, D.17478
	movq	-168(%rbp), %rax	# map, tmp692
	movq	%rdx, 32(%rax)	# D.17478, map_221->reg_map
	.loc 1 832 0
	movl	-296(%rbp), %eax	# max_labelno, tmp693
	cltq
	salq	$3, %rax	#, D.17471
	movq	%rax, %rdi	# D.17471,
	call	xmalloc	#
	movq	%rax, -152(%rbp)	# tmp694, real_label_map
	.loc 1 833 0
	movq	-168(%rbp), %rax	# map, tmp695
	movq	-152(%rbp), %rdx	# real_label_map, tmp696
	movq	%rdx, 40(%rax)	# tmp696, map_221->label_map
	.loc 1 834 0
	movq	-168(%rbp), %rax	# map, tmp697
	movq	$0, 112(%rax)	#, map_221->local_return_label
	.loc 1 836 0
	movq	-192(%rbp), %rax	# inl_f, tmp698
	movq	24(%rax), %rax	# inl_f_40->emit, D.17464
	movl	40(%rax), %eax	# _228->x_cur_insn_uid, D.17466
	addl	$1, %eax	#, tmp699
	movl	%eax, -272(%rbp)	# tmp699, inl_max_uid
	.loc 1 837 0
	movl	-272(%rbp), %eax	# inl_max_uid, tmp700
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.17471,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp701, D.17478
	movq	-168(%rbp), %rax	# map, tmp702
	movq	%rdx, 48(%rax)	# D.17478, map_221->insn_map
	.loc 1 838 0
	movq	-168(%rbp), %rax	# map, tmp703
	movl	$0, 56(%rax)	#, map_221->min_insnno
	.loc 1 839 0
	movq	-168(%rbp), %rax	# map, tmp704
	movl	-272(%rbp), %edx	# inl_max_uid, tmp705
	movl	%edx, 60(%rax)	# tmp705, map_221->max_insnno
	.loc 1 841 0
	movq	-168(%rbp), %rax	# map, tmp706
	movl	$1, (%rax)	#, map_221->integrating
	.loc 1 842 0
	movq	-168(%rbp), %rax	# map, tmp707
	movq	$0, 632(%rax)	#, map_221->compare_src
	.loc 1 843 0
	movq	-168(%rbp), %rax	# map, tmp708
	movl	$0, 640(%rax)	#, map_221->compare_mode
	.loc 1 858 0
	call	max_reg_num	#
	movl	-292(%rbp), %edx	# max_regno, tmp709
	subl	$53, %edx	#, D.17466
	leal	(%rax,%rdx), %ecx	#, D.17466
	movl	-288(%rbp), %edx	# nargs, tmp710
	movl	%edx, %eax	# tmp710, tmp711
	sall	$4, %eax	#, tmp712
	subl	%edx, %eax	# tmp710, D.17466
	addl	%ecx, %eax	# D.17466, D.17466
	addl	$10, %eax	#, D.17466
	cltq
	movl	$.LC17, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.17471,
	call	varray_init	#
	movq	-168(%rbp), %rdx	# map, tmp713
	movq	%rax, 64(%rdx)	# D.17477, map_221->const_equiv_varray
	.loc 1 864 0
	movq	-168(%rbp), %rax	# map, tmp714
	movl	$0, 72(%rax)	#, map_221->const_age
	.loc 1 869 0
	call	get_last_insn	#
	movq	-168(%rbp), %rdx	# map, tmp715
	movq	%rax, 16(%rdx)	# D.17465, map_221->insns_at_start
	.loc 1 870 0
	movq	-168(%rbp), %rax	# map, tmp716
	movq	16(%rax), %rax	# map_221->insns_at_start, D.17465
	testq	%rax, %rax	# D.17465
	jne	.L135	#,
	.loc 1 871 0
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	-168(%rbp), %rdx	# map, tmp717
	movq	%rax, 16(%rdx)	# D.17465, map_221->insns_at_start
.L135:
	.loc 1 873 0
	movq	-192(%rbp), %rax	# inl_f, tmp718
	movq	24(%rax), %rax	# inl_f_40->emit, D.17464
	movq	64(%rax), %rdx	# _244->regno_pointer_align, D.17479
	movq	-168(%rbp), %rax	# map, tmp719
	movq	%rdx, 120(%rax)	# D.17479, map_221->regno_pointer_align
	.loc 1 874 0
	movq	-192(%rbp), %rax	# inl_f, tmp720
	movq	24(%rax), %rax	# inl_f_40->emit, D.17464
	movq	80(%rax), %rdx	# _246->x_regno_reg_rtx, D.17474
	movq	-168(%rbp), %rax	# map, tmp721
	movq	%rdx, 128(%rax)	# D.17474, map_221->x_regno_reg_rtx
	.loc 1 878 0
	movq	-192(%rbp), %rax	# inl_f, tmp722
	movl	76(%rax), %edx	# inl_f_40->outgoing_args_size, D.17466
	movq	cfun(%rip), %rax	# cfun, cfun.54
	movl	76(%rax), %eax	# cfun.54_249->outgoing_args_size, D.17466
	cmpl	%eax, %edx	# D.17466, D.17466
	jle	.L136	#,
	.loc 1 879 0
	movq	cfun(%rip), %rax	# cfun, cfun.55
	movq	-192(%rbp), %rdx	# inl_f, tmp723
	movl	76(%rdx), %edx	# inl_f_40->outgoing_args_size, D.17466
	movl	%edx, 76(%rax)	# D.17466, cfun.55_251->outgoing_args_size
.L136:
	.loc 1 883 0
	movq	-192(%rbp), %rax	# inl_f, tmp724
	movzbl	426(%rax), %eax	# *inl_f_40, D.17475
	andl	$32, %eax	#, D.17475
	testb	%al, %al	# D.17475
	je	.L137	#,
	.loc 1 884 0
	movq	cfun(%rip), %rax	# cfun, cfun.56
	movzbl	426(%rax), %edx	#, tmp727
	orl	$32, %edx	#, tmp728
	movb	%dl, 426(%rax)	# tmp728,
.L137:
	.loc 1 887 0
	movq	-192(%rbp), %rax	# inl_f, tmp729
	movzbl	424(%rax), %eax	# *inl_f_40, D.17475
	andl	$8, %eax	#, D.17475
	testb	%al, %al	# D.17475
	je	.L138	#,
	.loc 1 888 0
	movq	-328(%rbp), %rax	# fndecl, tmp730
	movq	%rax, %rdi	# tmp730,
	call	lookup_static_chain	#
	movq	%rax, -216(%rbp)	# tmp731, static_chain_value
.L138:
	.loc 1 890 0
	movq	-184(%rbp), %rax	# parm_insns, tmp732
	movzwl	(%rax), %eax	# parm_insns_42->code, D.17473
	cmpw	$37, %ax	#, D.17473
	jne	.L139	#,
	.loc 1 891 0
	movq	-184(%rbp), %rax	# parm_insns, tmp733
	movl	40(%rax), %eax	# parm_insns_42->fld[4].rtint, D.17466
	testl	%eax, %eax	# D.17466
	jle	.L139	#,
.LBB14:
	.loc 1 893 0
	movq	-184(%rbp), %rax	# parm_insns, tmp734
	movl	40(%rax), %edx	# parm_insns_42->fld[4].rtint, D.17466
	movq	-184(%rbp), %rax	# parm_insns, tmp735
	movq	32(%rax), %rax	# parm_insns_42->fld[3].rtstr, D.17480
	movl	%edx, %esi	# D.17466,
	movq	%rax, %rdi	# D.17480,
	call	emit_note	#
	movq	%rax, -96(%rbp)	# tmp736, note
	.loc 1 895 0
	cmpq	$0, -96(%rbp)	#, note
	je	.L139	#,
	.loc 1 896 0
	movq	-96(%rbp), %rax	# note, tmp737
	movzbl	3(%rax), %edx	# note_263->integrated, tmp740
	orl	$64, %edx	#, tmp741
	movb	%dl, 3(%rax)	# tmp741, note_263->integrated
.L139:
.LBE14:
	.loc 1 912 0
	movl	$0, -316(%rbp)	#, i
	jmp	.L140	#
.L151:
.LBB15:
	.loc 1 914 0
	movl	-316(%rbp), %eax	# i, tmp742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-136(%rbp), %rax	# arg_vals, tmp743
	addq	%rdx, %rax	# D.17471, D.17474
	movq	(%rax), %rax	# *_267, tmp744
	movq	%rax, -208(%rbp)	# tmp744, copy
	.loc 1 916 0
	movq	-160(%rbp), %rax	# arg_vector, tmp745
	movl	-316(%rbp), %edx	# i, tmp747
	movslq	%edx, %rdx	# tmp747, tmp746
	movq	8(%rax,%rdx,8), %rax	# arg_vector_52->elem, tmp748
	movq	%rax, -112(%rbp)	# tmp748, loc
	.loc 1 919 0
	movq	-112(%rbp), %rax	# loc, tmp749
	movzwl	(%rax), %eax	# loc_269->code, D.17473
	cmpw	$66, %ax	#, D.17473
	jne	.L141	#,
	.loc 1 919 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# loc, tmp750
	movq	8(%rax), %rax	# loc_269->fld[0].rtx, D.17465
	movzwl	(%rax), %eax	# _271->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L141	#,
	.loc 1 920 0 is_stmt 1
	movq	-112(%rbp), %rax	# loc, tmp751
	movq	8(%rax), %rax	# loc_269->fld[0].rtx, D.17465
	movl	8(%rax), %eax	# _273->fld[0].rtuint, D.17469
	cmpl	$57, %eax	#, D.17469
	jbe	.L141	#,
	.loc 1 929 0
	movq	-208(%rbp), %rax	# copy, tmp752
	movzwl	(%rax), %eax	# copy_268->code, D.17473
	cmpw	$61, %ax	#, D.17473
	je	.L142	#,
	.loc 1 931 0
	movq	-208(%rbp), %rax	# copy, tmp753
	movq	%rax, %rdi	# tmp753,
	call	copy_addr_to_reg	#
	movq	%rax, -240(%rbp)	# temp.57, temp
	.loc 1 932 0
	movq	-208(%rbp), %rax	# copy, tmp754
	movzwl	(%rax), %eax	# copy_268->code, D.17473
	cmpw	$67, %ax	#, D.17473
	je	.L143	#,
	.loc 1 932 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# copy, tmp755
	movzwl	(%rax), %eax	# copy_268->code, D.17473
	cmpw	$68, %ax	#, D.17473
	je	.L143	#,
	movq	-208(%rbp), %rax	# copy, tmp756
	movzwl	(%rax), %eax	# copy_268->code, D.17473
	cmpw	$54, %ax	#, D.17473
	je	.L143	#,
	movq	-208(%rbp), %rax	# copy, tmp757
	movzwl	(%rax), %eax	# copy_268->code, D.17473
	cmpw	$55, %ax	#, D.17473
	je	.L143	#,
	movq	-208(%rbp), %rax	# copy, tmp758
	movzwl	(%rax), %eax	# copy_268->code, D.17473
	cmpw	$58, %ax	#, D.17473
	je	.L143	#,
	movq	-208(%rbp), %rax	# copy, tmp759
	movzwl	(%rax), %eax	# copy_268->code, D.17473
	cmpw	$134, %ax	#, D.17473
	je	.L143	#,
	movq	-208(%rbp), %rax	# copy, tmp760
	movzwl	(%rax), %eax	# copy_268->code, D.17473
	cmpw	$56, %ax	#, D.17473
	je	.L143	#,
	movq	-208(%rbp), %rax	# copy, tmp761
	movzwl	(%rax), %eax	# copy_268->code, D.17473
	cmpw	$140, %ax	#, D.17473
	je	.L143	#,
	movq	-208(%rbp), %rax	# copy, tmp762
	movzwl	(%rax), %eax	# copy_268->code, D.17473
	cmpw	$75, %ax	#, D.17473
	jne	.L144	#,
	movq	-208(%rbp), %rax	# copy, tmp763
	movq	16(%rax), %rax	# copy_268->fld[1].rtx, D.17465
	movzwl	(%rax), %eax	# _286->code, D.17473
	cmpw	$54, %ax	#, D.17473
	jne	.L144	#,
	movq	-208(%rbp), %rax	# copy, tmp764
	movq	8(%rax), %rax	# copy_268->fld[0].rtx, D.17465
	movzwl	(%rax), %eax	# _288->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L144	#,
	movq	-208(%rbp), %rax	# copy, tmp765
	movq	8(%rax), %rax	# copy_268->fld[0].rtx, D.17465
	movl	8(%rax), %eax	# _290->fld[0].rtuint, D.17469
	cmpl	$52, %eax	#, D.17469
	jbe	.L144	#,
	movq	-208(%rbp), %rax	# copy, tmp766
	movq	8(%rax), %rax	# copy_268->fld[0].rtx, D.17465
	movl	8(%rax), %eax	# _292->fld[0].rtuint, D.17469
	cmpl	$57, %eax	#, D.17469
	ja	.L144	#,
.L143:
.LBB16:
	.loc 1 933 0 is_stmt 1
	movq	-240(%rbp), %rax	# temp, temp.58
	movl	8(%rax), %eax	# temp.58_294->fld[0].rtuint, D.17469
	movl	%eax, %edx	# D.17469, D.17471
	movq	-168(%rbp), %rax	# map, tmp767
	movq	64(%rax), %rax	# map_221->const_equiv_varray, D.17477
	movq	(%rax), %rax	# _297->num_elements, D.17471
	cmpq	%rax, %rdx	# D.17471, D.17471
	jb	.L145	#,
.LBB17:
	.loc 1 933 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# map, tmp768
	movq	64(%rax), %rdx	# map_221->const_equiv_varray, D.17477
	movq	global_const_equiv_varray(%rip), %rax	# global_const_equiv_varray, global_const_equiv_varray.59
	cmpq	%rax, %rdx	# global_const_equiv_varray.59, D.17477
	sete	%al	#, D.17481
	movzbl	%al, %eax	# D.17481, tmp769
	movl	%eax, -268(%rbp)	# tmp769, is_global
	movq	-240(%rbp), %rax	# temp, temp.60
	movl	8(%rax), %eax	# temp.60_303->fld[0].rtuint, D.17469
	addl	$1, %eax	#, D.17469
	movl	%eax, %edx	# D.17469, D.17471
	movq	-168(%rbp), %rax	# map, tmp770
	movq	64(%rax), %rax	# map_221->const_equiv_varray, D.17477
	movq	%rdx, %rsi	# D.17471,
	movq	%rax, %rdi	# D.17477,
	call	varray_grow	#
	movq	-168(%rbp), %rdx	# map, tmp771
	movq	%rax, 64(%rdx)	# D.17477, map_221->const_equiv_varray
	cmpl	$0, -268(%rbp)	#, is_global
	je	.L145	#,
	movq	-168(%rbp), %rax	# map, tmp772
	movq	64(%rax), %rax	# map_221->const_equiv_varray, global_const_equiv_varray.61
	movq	%rax, global_const_equiv_varray(%rip)	# global_const_equiv_varray.61, global_const_equiv_varray
.L145:
.LBE17:
	.loc 1 933 0 discriminator 2
	movq	-168(%rbp), %rax	# map, tmp773
	movq	64(%rax), %rdx	# map_221->const_equiv_varray, D.17477
	movq	-240(%rbp), %rax	# temp, temp.62
	movl	8(%rax), %eax	# temp.62_311->fld[0].rtuint, D.17469
	movl	%eax, %eax	# D.17469, tmp774
	addq	$2, %rax	#, tmp775
	salq	$4, %rax	#, tmp776
	addq	%rdx, %rax	# D.17477, tmp777
	movq	%rax, -88(%rbp)	# tmp777, p
	movq	-88(%rbp), %rax	# p, tmp778
	movq	-208(%rbp), %rdx	# copy, tmp779
	movq	%rdx, (%rax)	# tmp779, p_313->rtx
	movq	-88(%rbp), %rax	# p, tmp780
	movl	$-1, 8(%rax)	#, p_313->age
.L144:
.LBE16:
	.loc 1 934 0 is_stmt 1
	movq	-240(%rbp), %rax	# temp, tmp781
	movq	%rax, -208(%rbp)	# tmp781, copy
.L142:
	.loc 1 936 0
	movq	-168(%rbp), %rax	# map, tmp782
	movq	32(%rax), %rdx	# map_221->reg_map, D.17474
	movq	-112(%rbp), %rax	# loc, tmp783
	movq	8(%rax), %rax	# loc_269->fld[0].rtx, D.17465
	movl	8(%rax), %eax	# _316->fld[0].rtuint, D.17469
	movl	%eax, %eax	# D.17469, D.17471
	salq	$3, %rax	#, D.17471
	addq	%rax, %rdx	# D.17471, D.17474
	movq	-208(%rbp), %rax	# copy, tmp784
	movq	%rax, (%rdx)	# tmp784, *_320
	jmp	.L146	#
.L141:
	.loc 1 938 0
	movq	-112(%rbp), %rax	# loc, tmp785
	movzwl	(%rax), %eax	# loc_269->code, D.17473
	cmpw	$66, %ax	#, D.17473
	jne	.L147	#,
	.loc 1 948 0
	movq	-328(%rbp), %rax	# fndecl, tmp786
	movq	160(%rax), %rax	# fndecl_58->decl.u2.f, D.17482
	movl	68(%rax), %eax	# _322->args_size, D.17466
	testl	%eax, %eax	# D.17466
	je	.L146	#,
	.loc 1 949 0
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.17465
	movq	-168(%rbp), %rcx	# map, tmp787
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp787,
	movq	%rax, %rdi	# D.17465,
	call	copy_rtx_and_substitute	#
	jmp	.L146	#
.L147:
	.loc 1 951 0
	movq	-112(%rbp), %rax	# loc, tmp788
	movzwl	(%rax), %eax	# loc_269->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L149	#,
	.loc 1 952 0
	movq	-208(%rbp), %rdx	# copy, tmp789
	movq	-112(%rbp), %rcx	# loc, tmp790
	movq	-168(%rbp), %rax	# map, tmp791
	movq	%rcx, %rsi	# tmp790,
	movq	%rax, %rdi	# tmp791,
	call	process_reg_param	#
	jmp	.L146	#
.L149:
	.loc 1 953 0
	movq	-112(%rbp), %rax	# loc, tmp792
	movzwl	(%rax), %eax	# loc_269->code, D.17473
	cmpw	$65, %ax	#, D.17473
	jne	.L150	#,
.LBB18:
	.loc 1 955 0
	movq	-112(%rbp), %rax	# loc, tmp793
	movq	8(%rax), %rax	# loc_269->fld[0].rtx, D.17465
	movzbl	2(%rax), %eax	# _327->mode, D.17475
	movzbl	%al, %eax	# D.17475, D.17470
	movq	-112(%rbp), %rdx	# loc, tmp794
	movq	%rdx, %rsi	# tmp794,
	movl	%eax, %edi	# D.17470,
	call	gen_realpart	#
	movq	%rax, -80(%rbp)	# tmp795, locreal
	.loc 1 956 0
	movq	-112(%rbp), %rax	# loc, tmp796
	movq	8(%rax), %rax	# loc_269->fld[0].rtx, D.17465
	movzbl	2(%rax), %eax	# _331->mode, D.17475
	movzbl	%al, %eax	# D.17475, D.17470
	movq	-112(%rbp), %rdx	# loc, tmp797
	movq	%rdx, %rsi	# tmp797,
	movl	%eax, %edi	# D.17470,
	call	gen_imagpart	#
	movq	%rax, -72(%rbp)	# tmp798, locimag
	.loc 1 957 0
	movq	-80(%rbp), %rax	# locreal, tmp799
	movzbl	2(%rax), %eax	# locreal_330->mode, D.17475
	movzbl	%al, %eax	# D.17475, D.17470
	movq	-208(%rbp), %rdx	# copy, tmp800
	movq	%rdx, %rsi	# tmp800,
	movl	%eax, %edi	# D.17470,
	call	gen_realpart	#
	movq	%rax, -64(%rbp)	# tmp801, copyreal
	.loc 1 958 0
	movq	-72(%rbp), %rax	# locimag, tmp802
	movzbl	2(%rax), %eax	# locimag_334->mode, D.17475
	movzbl	%al, %eax	# D.17475, D.17470
	movq	-208(%rbp), %rdx	# copy, tmp803
	movq	%rdx, %rsi	# tmp803,
	movl	%eax, %edi	# D.17470,
	call	gen_imagpart	#
	movq	%rax, -56(%rbp)	# tmp804, copyimag
	.loc 1 960 0
	movq	-64(%rbp), %rdx	# copyreal, tmp805
	movq	-80(%rbp), %rcx	# locreal, tmp806
	movq	-168(%rbp), %rax	# map, tmp807
	movq	%rcx, %rsi	# tmp806,
	movq	%rax, %rdi	# tmp807,
	call	process_reg_param	#
	.loc 1 961 0
	movq	-56(%rbp), %rdx	# copyimag, tmp808
	movq	-72(%rbp), %rcx	# locimag, tmp809
	movq	-168(%rbp), %rax	# map, tmp810
	movq	%rcx, %rsi	# tmp809,
	movq	%rax, %rdi	# tmp810,
	call	process_reg_param	#
.LBE18:
	jmp	.L146	#
.L150:
	.loc 1 964 0
	movl	$__FUNCTION__.14079, %edx	#,
	movl	$964, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L146:
.LBE15:
	.loc 1 912 0
	addl	$1, -316(%rbp)	#, i
.L140:
	.loc 1 912 0 is_stmt 0 discriminator 1
	movl	-316(%rbp), %eax	# i, tmp811
	cmpl	-288(%rbp), %eax	# nargs, tmp811
	jl	.L151	#,
	.loc 1 970 0 is_stmt 1
	movq	inlining(%rip), %rax	# inlining, tmp812
	movq	%rax, -48(%rbp)	# tmp812, inlining_previous
	.loc 1 971 0
	movq	-192(%rbp), %rax	# inl_f, tmp813
	movq	%rax, inlining(%rip)	# tmp813, inlining
	.loc 1 975 0
	movq	-328(%rbp), %rax	# fndecl, tmp814
	movq	88(%rax), %rax	# fndecl_58->decl.arguments, tmp815
	movq	%rax, -232(%rbp)	# tmp815, formal
	movl	$0, -316(%rbp)	#, i
	jmp	.L152	#
.L157:
	.loc 1 978 0
	movq	-160(%rbp), %rax	# arg_vector, tmp816
	movl	-316(%rbp), %edx	# i, tmp818
	movslq	%edx, %rdx	# tmp818, tmp817
	movq	8(%rax,%rdx,8), %rax	# arg_vector_52->elem, tmp819
	movq	%rax, -112(%rbp)	# tmp819, loc
	.loc 1 980 0
	movq	-112(%rbp), %rax	# loc, tmp820
	movzwl	(%rax), %eax	# loc_345->code, D.17473
	cmpw	$66, %ax	#, D.17473
	jne	.L153	#,
	.loc 1 982 0
	movq	-112(%rbp), %rax	# loc, tmp821
	movq	8(%rax), %rax	# loc_345->fld[0].rtx, D.17465
	movzwl	(%rax), %eax	# _347->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L154	#,
	.loc 1 983 0 discriminator 1
	movq	-112(%rbp), %rax	# loc, tmp822
	movq	8(%rax), %rax	# loc_345->fld[0].rtx, D.17465
	movl	8(%rax), %eax	# _349->fld[0].rtuint, D.17469
	.loc 1 982 0 discriminator 1
	cmpl	$57, %eax	#, D.17469
	ja	.L153	#,
.L154:
.LBB19:
	.loc 1 985 0
	movq	-232(%rbp), %rax	# formal, tmp823
	movl	32(%rax), %edx	# formal_11->decl.linenum, D.17466
	movq	-232(%rbp), %rax	# formal, tmp824
	movq	24(%rax), %rax	# formal_11->decl.filename, D.17480
	movl	%edx, %esi	# D.17466,
	movq	%rax, %rdi	# D.17480,
	call	emit_note	#
	movq	%rax, -40(%rbp)	# tmp825, note
	.loc 1 987 0
	cmpq	$0, -40(%rbp)	#, note
	je	.L155	#,
	.loc 1 988 0
	movq	-40(%rbp), %rax	# note, tmp826
	movzbl	3(%rax), %edx	# note_353->integrated, tmp829
	orl	$64, %edx	#, tmp830
	movb	%dl, 3(%rax)	# tmp830, note_353->integrated
.L155:
	.loc 1 992 0
	movq	-168(%rbp), %rcx	# map, tmp831
	movq	-112(%rbp), %rax	# loc, tmp832
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp831,
	movq	%rax, %rdi	# tmp832,
	call	copy_rtx_and_substitute	#
	movq	%rax, -240(%rbp)	# temp.63, temp
	.loc 1 993 0
	movq	-168(%rbp), %rdx	# map, tmp833
	leaq	-240(%rbp), %rax	#, tmp834
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp834,
	call	subst_constants	#
	.loc 1 994 0
	call	apply_change_group	#
	.loc 1 995 0
	movq	-240(%rbp), %rax	# temp, temp.64
	movq	8(%rax), %rdx	# temp.64_355->fld[0].rtx, D.17465
	movq	-240(%rbp), %rax	# temp, temp.65
	movzbl	2(%rax), %eax	# temp.65_357->mode, D.17475
	movzbl	%al, %eax	# D.17475, D.17470
	movq	%rdx, %rsi	# D.17465,
	movl	%eax, %edi	# D.17470,
	call	memory_address_p	#
	testl	%eax, %eax	# D.17466
	jne	.L156	#,
	.loc 1 996 0
	movq	-240(%rbp), %rax	# temp, temp.66
	movq	8(%rax), %rdx	# temp.66_361->fld[0].rtx, D.17465
	movq	-240(%rbp), %rax	# temp, temp.67
	movl	$0, %esi	#,
	movq	%rax, %rdi	# temp.67,
	call	change_address	#
	movq	%rax, -240(%rbp)	# temp.68, temp
.L156:
	.loc 1 997 0
	movq	-240(%rbp), %rcx	# temp, temp.69
	movl	-316(%rbp), %eax	# i, tmp835
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-128(%rbp), %rax	# arg_trees, tmp836
	addq	%rdx, %rax	# D.17471, D.17472
	movq	(%rax), %rax	# *_368, D.17467
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# temp.69,
	movq	%rax, %rdi	# D.17467,
	call	store_expr	#
.L153:
.LBE19:
	.loc 1 976 0
	movq	-232(%rbp), %rax	# formal, tmp837
	movq	(%rax), %rax	# formal_11->common.chain, tmp838
	movq	%rax, -232(%rbp)	# tmp838, formal
	addl	$1, -316(%rbp)	#, i
.L152:
	.loc 1 975 0 discriminator 1
	cmpq	$0, -232(%rbp)	#, formal
	jne	.L157	#,
	.loc 1 1007 0
	movq	-168(%rbp), %rax	# map, tmp839
	movq	$0, 80(%rax)	#, map_221->inline_target
	.loc 1 1008 0
	movq	-328(%rbp), %rax	# fndecl, tmp840
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _372->decl.rtl, D.17465
	.loc 1 1009 0
	testq	%rax, %rax	# D.17465
	je	.L158	#,
	.loc 1 1009 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# fndecl, tmp841
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _374->decl.rtl, D.17465
	testq	%rax, %rax	# D.17465
	je	.L159	#,
	movq	-328(%rbp), %rax	# fndecl, tmp842
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _376->decl.rtl, iftmp.71
	jmp	.L161	#
.L159:
	.loc 1 1009 0 discriminator 2
	movq	-328(%rbp), %rax	# fndecl, tmp843
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17467,
	call	make_decl_rtl	#
	movq	-328(%rbp), %rax	# fndecl, tmp844
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _379->decl.rtl, iftmp.71
	jmp	.L161	#
.L158:
	movl	$0, %eax	#, iftmp.70
.L161:
	.loc 1 1008 0 is_stmt 1
	movq	%rax, -112(%rbp)	# iftmp.70, loc
	.loc 1 1011 0
	movq	-360(%rbp), %rax	# type, tmp845
	movzbl	61(%rax), %eax	# *type_384(D), D.17475
	andl	$-2, %eax	#, D.17475
	testb	%al, %al	# D.17475
	je	.L162	#,
	.loc 1 1014 0
	movq	-112(%rbp), %rax	# loc, tmp846
	movzwl	(%rax), %eax	# loc_383->code, D.17473
	cmpw	$66, %ax	#, D.17473
	jne	.L163	#,
	.loc 1 1016 0
	movq	-112(%rbp), %rax	# loc, tmp847
	movq	8(%rax), %rax	# loc_383->fld[0].rtx, D.17465
	movzwl	(%rax), %eax	# _388->code, D.17473
	cmpw	$70, %ax	#, D.17473
	jne	.L164	#,
	.loc 1 1018 0
	movq	-168(%rbp), %rcx	# map, tmp848
	movq	-112(%rbp), %rax	# loc, tmp849
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp848,
	movq	%rax, %rdi	# tmp849,
	call	copy_rtx_and_substitute	#
	movq	%rax, -240(%rbp)	# temp.72, temp
	.loc 1 1019 0
	movq	-168(%rbp), %rdx	# map, tmp850
	leaq	-240(%rbp), %rax	#, tmp851
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp851,
	call	subst_constants	#
	.loc 1 1020 0
	call	apply_change_group	#
	.loc 1 1021 0
	movq	-240(%rbp), %rax	# temp, tmp852
	movq	%rax, -344(%rbp)	# tmp852, target
	jmp	.L162	#
.L164:
	.loc 1 1025 0
	cmpq	$0, -368(%rbp)	#, structure_value_addr
	je	.L166	#,
	.loc 1 1026 0
	movq	-328(%rbp), %rax	# fndecl, tmp853
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	%rax, %rdi	# D.17467,
	call	aggregate_value_p	#
	testl	%eax, %eax	# D.17466
	jne	.L167	#,
.L166:
	.loc 1 1027 0
	movl	$__FUNCTION__.14079, %edx	#,
	movl	$1027, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L167:
	.loc 1 1039 0
	movq	-112(%rbp), %rax	# loc, tmp854
	movq	8(%rax), %rax	# loc_383->fld[0].rtx, D.17465
	movzwl	(%rax), %eax	# _395->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L168	#,
	.loc 1 1041 0
	movq	-368(%rbp), %rax	# structure_value_addr, tmp855
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp855,
	call	force_operand	#
	movq	%rax, -240(%rbp)	# temp.73, temp
	.loc 1 1042 0
	movq	-240(%rbp), %rdx	# temp, temp.74
	movl	target_flags(%rip), %eax	# target_flags, target_flags.76
	andl	$33554432, %eax	#, D.17466
	testl	%eax, %eax	# D.17466
	je	.L169	#,
	.loc 1 1042 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.75
	jmp	.L170	#
.L169:
	.loc 1 1042 0 discriminator 2
	movl	$4, %eax	#, iftmp.75
.L170:
	.loc 1 1042 0 discriminator 3
	movq	%rdx, %rsi	# temp.74,
	movl	%eax, %edi	# iftmp.75,
	call	force_reg	#
	movq	%rax, -240(%rbp)	# temp.77, temp
	.loc 1 1049 0 is_stmt 1 discriminator 3
	movq	-240(%rbp), %rax	# temp, temp.78
	movl	8(%rax), %eax	# temp.78_404->fld[0].rtuint, D.17469
	cmpl	$52, %eax	#, D.17469
	jbe	.L171	#,
	.loc 1 1050 0
	movq	-240(%rbp), %rax	# temp, temp.79
	movl	8(%rax), %eax	# temp.79_406->fld[0].rtuint, D.17469
	cmpl	$57, %eax	#, D.17469
	ja	.L171	#,
	.loc 1 1051 0
	movq	-240(%rbp), %rdx	# temp, temp.80
	movl	target_flags(%rip), %eax	# target_flags, target_flags.82
	andl	$33554432, %eax	#, D.17466
	testl	%eax, %eax	# D.17466
	je	.L172	#,
	.loc 1 1051 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.81
	jmp	.L173	#
.L172:
	.loc 1 1051 0 discriminator 2
	movl	$4, %eax	#, iftmp.81
.L173:
	.loc 1 1051 0 discriminator 3
	movq	%rdx, %rsi	# temp.80,
	movl	%eax, %edi	# iftmp.81,
	call	copy_to_mode_reg	#
	movq	%rax, -240(%rbp)	# temp.83, temp
.L171:
	.loc 1 1052 0 is_stmt 1
	movq	-168(%rbp), %rax	# map, tmp856
	movq	32(%rax), %rdx	# map_221->reg_map, D.17474
	movq	-112(%rbp), %rax	# loc, tmp857
	movq	8(%rax), %rax	# loc_383->fld[0].rtx, D.17465
	movl	8(%rax), %eax	# _415->fld[0].rtuint, D.17469
	movl	%eax, %eax	# D.17469, D.17471
	salq	$3, %rax	#, D.17471
	addq	%rax, %rdx	# D.17471, D.17474
	movq	-240(%rbp), %rax	# temp, temp.84
	movq	%rax, (%rdx)	# temp.84, *_419
	.loc 1 1054 0
	movq	-368(%rbp), %rax	# structure_value_addr, tmp858
	movzwl	(%rax), %eax	# structure_value_addr_392(D)->code, D.17473
	cmpw	$67, %ax	#, D.17473
	je	.L174	#,
	.loc 1 1054 0 is_stmt 0 discriminator 1
	movq	-368(%rbp), %rax	# structure_value_addr, tmp859
	movzwl	(%rax), %eax	# structure_value_addr_392(D)->code, D.17473
	cmpw	$68, %ax	#, D.17473
	je	.L174	#,
	movq	-368(%rbp), %rax	# structure_value_addr, tmp860
	movzwl	(%rax), %eax	# structure_value_addr_392(D)->code, D.17473
	cmpw	$54, %ax	#, D.17473
	je	.L174	#,
	movq	-368(%rbp), %rax	# structure_value_addr, tmp861
	movzwl	(%rax), %eax	# structure_value_addr_392(D)->code, D.17473
	cmpw	$55, %ax	#, D.17473
	je	.L174	#,
	movq	-368(%rbp), %rax	# structure_value_addr, tmp862
	movzwl	(%rax), %eax	# structure_value_addr_392(D)->code, D.17473
	cmpw	$58, %ax	#, D.17473
	je	.L174	#,
	movq	-368(%rbp), %rax	# structure_value_addr, tmp863
	movzwl	(%rax), %eax	# structure_value_addr_392(D)->code, D.17473
	cmpw	$134, %ax	#, D.17473
	je	.L174	#,
	movq	-368(%rbp), %rax	# structure_value_addr, tmp864
	movzwl	(%rax), %eax	# structure_value_addr_392(D)->code, D.17473
	cmpw	$56, %ax	#, D.17473
	je	.L174	#,
	movq	-368(%rbp), %rax	# structure_value_addr, tmp865
	movzwl	(%rax), %eax	# structure_value_addr_392(D)->code, D.17473
	cmpw	$140, %ax	#, D.17473
	je	.L174	#,
	.loc 1 1055 0 is_stmt 1
	movq	-368(%rbp), %rax	# structure_value_addr, tmp866
	movzwl	(%rax), %eax	# structure_value_addr_392(D)->code, D.17473
	cmpw	$70, %ax	#, D.17473
	je	.L174	#,
	.loc 1 1056 0
	movq	-368(%rbp), %rax	# structure_value_addr, tmp867
	movzwl	(%rax), %eax	# structure_value_addr_392(D)->code, D.17473
	cmpw	$75, %ax	#, D.17473
	jne	.L162	#,
	.loc 1 1057 0
	movq	-368(%rbp), %rax	# structure_value_addr, tmp868
	movq	8(%rax), %rdx	# structure_value_addr_392(D)->fld[0].rtx, D.17465
	.loc 1 1058 0
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.17465
	.loc 1 1057 0
	cmpq	%rax, %rdx	# D.17465, D.17465
	jne	.L162	#,
	.loc 1 1059 0
	movq	-368(%rbp), %rax	# structure_value_addr, tmp869
	movq	16(%rax), %rax	# structure_value_addr_392(D)->fld[1].rtx, D.17465
	movzwl	(%rax), %eax	# _433->code, D.17473
	cmpw	$54, %ax	#, D.17473
	jne	.L162	#,
.L174:
.LBB20:
	.loc 1 1062 0
	movq	-240(%rbp), %rax	# temp, temp.85
	movl	8(%rax), %eax	# temp.85_435->fld[0].rtuint, D.17469
	movl	%eax, %edx	# D.17469, D.17471
	movq	-168(%rbp), %rax	# map, tmp870
	movq	64(%rax), %rax	# map_221->const_equiv_varray, D.17477
	movq	(%rax), %rax	# _438->num_elements, D.17471
	cmpq	%rax, %rdx	# D.17471, D.17471
	jb	.L176	#,
.LBB21:
	.loc 1 1062 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# map, tmp871
	movq	64(%rax), %rdx	# map_221->const_equiv_varray, D.17477
	movq	global_const_equiv_varray(%rip), %rax	# global_const_equiv_varray, global_const_equiv_varray.86
	cmpq	%rax, %rdx	# global_const_equiv_varray.86, D.17477
	sete	%al	#, D.17481
	movzbl	%al, %eax	# D.17481, tmp872
	movl	%eax, -264(%rbp)	# tmp872, is_global
	movq	-240(%rbp), %rax	# temp, temp.87
	movl	8(%rax), %eax	# temp.87_444->fld[0].rtuint, D.17469
	addl	$1, %eax	#, D.17469
	movl	%eax, %edx	# D.17469, D.17471
	movq	-168(%rbp), %rax	# map, tmp873
	movq	64(%rax), %rax	# map_221->const_equiv_varray, D.17477
	movq	%rdx, %rsi	# D.17471,
	movq	%rax, %rdi	# D.17477,
	call	varray_grow	#
	movq	-168(%rbp), %rdx	# map, tmp874
	movq	%rax, 64(%rdx)	# D.17477, map_221->const_equiv_varray
	cmpl	$0, -264(%rbp)	#, is_global
	je	.L176	#,
	movq	-168(%rbp), %rax	# map, tmp875
	movq	64(%rax), %rax	# map_221->const_equiv_varray, global_const_equiv_varray.88
	movq	%rax, global_const_equiv_varray(%rip)	# global_const_equiv_varray.88, global_const_equiv_varray
.L176:
.LBE21:
	.loc 1 1062 0 discriminator 2
	movq	-168(%rbp), %rax	# map, tmp876
	movq	64(%rax), %rdx	# map_221->const_equiv_varray, D.17477
	movq	-240(%rbp), %rax	# temp, temp.89
	movl	8(%rax), %eax	# temp.89_452->fld[0].rtuint, D.17469
	movl	%eax, %eax	# D.17469, tmp877
	addq	$2, %rax	#, tmp878
	salq	$4, %rax	#, tmp879
	addq	%rdx, %rax	# D.17477, tmp880
	movq	%rax, -32(%rbp)	# tmp880, p
	movq	-32(%rbp), %rax	# p, tmp881
	movq	-368(%rbp), %rdx	# structure_value_addr, tmp882
	movq	%rdx, (%rax)	# tmp882, p_454->rtx
	movq	-32(%rbp), %rax	# p, tmp883
	movl	$-1, 8(%rax)	#, p_454->age
.LBE20:
	jmp	.L162	#
.L168:
	.loc 1 1068 0 is_stmt 1
	movq	-168(%rbp), %rcx	# map, tmp884
	movq	-112(%rbp), %rax	# loc, tmp885
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp884,
	movq	%rax, %rdi	# tmp885,
	call	copy_rtx_and_substitute	#
	movq	%rax, -240(%rbp)	# temp.90, temp
	.loc 1 1069 0
	movq	-168(%rbp), %rdx	# map, tmp886
	leaq	-240(%rbp), %rax	#, tmp887
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp887,
	call	subst_constants	#
	.loc 1 1070 0
	call	apply_change_group	#
	.loc 1 1071 0
	movq	-240(%rbp), %rax	# temp, temp.91
	movq	-368(%rbp), %rdx	# structure_value_addr, tmp888
	movq	%rdx, %rsi	# tmp888,
	movq	%rax, %rdi	# temp.91,
	call	emit_move_insn	#
	jmp	.L162	#
.L163:
	.loc 1 1075 0
	cmpl	$0, -348(%rbp)	#, ignore
	jne	.L162	#,
	.loc 1 1080 0
	movq	-112(%rbp), %rax	# loc, tmp889
	movzwl	(%rax), %eax	# loc_383->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L177	#,
.LBB22:
	.loc 1 1086 0
	movq	-360(%rbp), %rax	# type, tmp890
	movzbl	61(%rax), %eax	# *type_384(D), tmp893
	shrb	%al	# D.17468
	movzbl	%al, %eax	# D.17468, tmp894
	movl	%eax, -308(%rbp)	# tmp894, departing_mode
	.loc 1 1092 0
	movq	-328(%rbp), %rax	# fndecl, tmp895
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _461->decl.rtl, D.17465
	testq	%rax, %rax	# D.17465
	je	.L178	#,
	.loc 1 1092 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# fndecl, tmp896
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _463->decl.rtl, iftmp.92
	jmp	.L179	#
.L178:
	.loc 1 1092 0 discriminator 2
	movq	-328(%rbp), %rax	# fndecl, tmp897
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17467,
	call	make_decl_rtl	#
	movq	-328(%rbp), %rax	# fndecl, tmp898
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _466->decl.rtl, iftmp.92
.L179:
	.loc 1 1092 0 discriminator 3
	movzbl	2(%rax), %eax	# iftmp.92_33->mode, D.17475
	.loc 1 1091 0 is_stmt 1 discriminator 3
	movzbl	%al, %eax	# D.17475, tmp899
	movl	%eax, -304(%rbp)	# tmp899, arriving_mode
	.loc 1 1098 0 discriminator 3
	cmpq	$0, -344(%rbp)	#, target
	je	.L180	#,
	.loc 1 1098 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# target, tmp900
	movzwl	(%rax), %eax	# target_161(D)->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L180	#,
	.loc 1 1099 0 is_stmt 1
	movq	-344(%rbp), %rax	# target, tmp901
	movzbl	2(%rax), %eax	# target_161(D)->mode, D.17475
	movzbl	%al, %eax	# D.17475, D.17469
	cmpl	-308(%rbp), %eax	# departing_mode, D.17469
	je	.L181	#,
.L180:
	.loc 1 1104 0
	cmpl	$51, -308(%rbp)	#, departing_mode
	jne	.L182	#,
	.loc 1 1106 0
	movq	-328(%rbp), %rax	# fndecl, tmp902
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _473->decl.rtl, D.17465
	testq	%rax, %rax	# D.17465
	je	.L183	#,
	.loc 1 1106 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# fndecl, tmp903
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _475->decl.rtl, iftmp.93
	jmp	.L184	#
.L183:
	.loc 1 1106 0 discriminator 2
	movq	-328(%rbp), %rax	# fndecl, tmp904
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17467,
	call	make_decl_rtl	#
	movq	-328(%rbp), %rax	# fndecl, tmp905
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _478->decl.rtl, iftmp.93
.L184:
	.loc 1 1106 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.93_34->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L185	#,
	.loc 1 1108 0 is_stmt 1
	movq	-328(%rbp), %rax	# fndecl, tmp906
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _481->decl.rtl, D.17465
	testq	%rax, %rax	# D.17465
	je	.L186	#,
	.loc 1 1108 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# fndecl, tmp907
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _483->decl.rtl, iftmp.94
	jmp	.L187	#
.L186:
	.loc 1 1108 0 discriminator 2
	movq	-328(%rbp), %rax	# fndecl, tmp908
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17467,
	call	make_decl_rtl	#
	movq	-328(%rbp), %rax	# fndecl, tmp909
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _486->decl.rtl, iftmp.94
.L187:
	.loc 1 1108 0 discriminator 1
	movzbl	2(%rax), %eax	# iftmp.94_35->mode, D.17475
	movzbl	%al, %eax	# D.17475, tmp910
	movl	%eax, -308(%rbp)	# tmp910, departing_mode
	.loc 1 1109 0 is_stmt 1 discriminator 1
	movl	-308(%rbp), %eax	# departing_mode, tmp911
	movl	%eax, -304(%rbp)	# tmp911, arriving_mode
	jmp	.L182	#
.L185:
	.loc 1 1112 0
	movl	$__FUNCTION__.14079, %edx	#,
	movl	$1112, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L182:
	.loc 1 1115 0
	movl	-308(%rbp), %eax	# departing_mode, tmp912
	movl	%eax, %edi	# tmp912,
	call	gen_reg_rtx	#
	movq	%rax, -344(%rbp)	# tmp913, target
.L181:
	.loc 1 1121 0
	movl	-304(%rbp), %eax	# arriving_mode, tmp914
	cmpl	-308(%rbp), %eax	# departing_mode, tmp914
	je	.L188	#,
	.loc 1 1125 0
	movl	-304(%rbp), %eax	# arriving_mode, arriving_mode.95
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17473
	movzwl	%ax, %edx	# D.17473, D.17466
	movl	target_flags(%rip), %eax	# target_flags, target_flags.97
	andl	$33554432, %eax	#, D.17466
	testl	%eax, %eax	# D.17466
	je	.L189	#,
	.loc 1 1125 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.96
	jmp	.L190	#
.L189:
	.loc 1 1125 0 discriminator 2
	movl	$32, %eax	#, iftmp.96
.L190:
	.loc 1 1125 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.96, D.17466
	jle	.L191	#,
	.loc 1 1131 0 is_stmt 1
	movl	-304(%rbp), %eax	# arriving_mode, tmp916
	movl	%eax, %edi	# tmp916,
	call	gen_reg_rtx	#
	movq	%rax, -200(%rbp)	# tmp917, reg_to_map
	.loc 1 1132 0
	movq	-200(%rbp), %rdx	# reg_to_map, tmp918
	movl	-308(%rbp), %eax	# departing_mode, tmp919
	movq	%rdx, %rsi	# tmp918,
	movl	%eax, %edi	# tmp919,
	call	gen_lowpart	#
	movq	%rax, -344(%rbp)	# tmp920, target
	jmp	.L193	#
.L191:
	.loc 1 1135 0
	movq	-344(%rbp), %rcx	# target, tmp921
	movl	-304(%rbp), %eax	# arriving_mode, tmp922
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp921,
	movl	%eax, %edi	# tmp922,
	call	gen_rtx_SUBREG	#
	movq	%rax, -200(%rbp)	# tmp923, reg_to_map
	jmp	.L193	#
.L188:
	.loc 1 1138 0
	movq	-344(%rbp), %rax	# target, tmp924
	movq	%rax, -200(%rbp)	# tmp924, reg_to_map
.L193:
	.loc 1 1142 0
	movq	-112(%rbp), %rax	# loc, tmp925
	movzbl	3(%rax), %eax	# *loc_383, D.17475
	andl	$64, %eax	#, D.17475
	testb	%al, %al	# D.17475
	je	.L194	#,
	.loc 1 1143 0
	movq	-168(%rbp), %rax	# map, tmp926
	movq	-200(%rbp), %rdx	# reg_to_map, tmp927
	movq	%rdx, 80(%rax)	# tmp927, map_221->inline_target
	jmp	.L162	#
.L194:
	.loc 1 1145 0
	movq	-168(%rbp), %rax	# map, tmp928
	movq	32(%rax), %rdx	# map_221->reg_map, D.17474
	movq	-112(%rbp), %rax	# loc, tmp929
	movl	8(%rax), %eax	# loc_383->fld[0].rtuint, D.17469
	movl	%eax, %eax	# D.17469, D.17471
	salq	$3, %rax	#, D.17471
	addq	%rax, %rdx	# D.17471, D.17474
	movq	-200(%rbp), %rax	# reg_to_map, tmp930
	movq	%rax, (%rdx)	# tmp930, *_509
.LBE22:
	jmp	.L162	#
.L177:
	.loc 1 1147 0
	movq	-112(%rbp), %rax	# loc, tmp931
	movzwl	(%rax), %eax	# loc_383->code, D.17473
	cmpw	$65, %ax	#, D.17473
	jne	.L196	#,
.LBB23:
	.loc 1 1149 0
	movq	-360(%rbp), %rax	# type, tmp932
	movzbl	61(%rax), %eax	# *type_384(D), tmp935
	shrb	%al	# D.17468
	movzbl	%al, %eax	# D.17468, tmp936
	movl	%eax, -260(%rbp)	# tmp936, departing_mode
	.loc 1 1151 0
	movq	-328(%rbp), %rax	# fndecl, tmp937
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _513->decl.rtl, D.17465
	testq	%rax, %rax	# D.17465
	je	.L197	#,
	.loc 1 1151 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# fndecl, tmp938
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _515->decl.rtl, iftmp.98
	jmp	.L198	#
.L197:
	.loc 1 1151 0 discriminator 2
	movq	-328(%rbp), %rax	# fndecl, tmp939
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17467,
	call	make_decl_rtl	#
	movq	-328(%rbp), %rax	# fndecl, tmp940
	movq	96(%rax), %rax	# fndecl_58->decl.result, D.17467
	movq	144(%rax), %rax	# _518->decl.rtl, iftmp.98
.L198:
	.loc 1 1151 0 discriminator 3
	movzbl	2(%rax), %eax	# iftmp.98_37->mode, D.17475
	.loc 1 1150 0 is_stmt 1 discriminator 3
	movzbl	%al, %eax	# D.17475, tmp941
	movl	%eax, -256(%rbp)	# tmp941, arriving_mode
	.loc 1 1153 0 discriminator 3
	movl	-260(%rbp), %eax	# departing_mode, tmp942
	cmpl	-256(%rbp), %eax	# arriving_mode, tmp942
	je	.L199	#,
	.loc 1 1154 0
	movl	$__FUNCTION__.14079, %edx	#,
	movl	$1154, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L199:
	.loc 1 1155 0
	movq	-112(%rbp), %rax	# loc, tmp943
	movq	8(%rax), %rax	# loc_383->fld[0].rtx, D.17465
	movzwl	(%rax), %eax	# _522->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L200	#,
	.loc 1 1156 0
	movq	-112(%rbp), %rax	# loc, tmp944
	movq	16(%rax), %rax	# loc_383->fld[1].rtx, D.17465
	movzwl	(%rax), %eax	# _524->code, D.17473
	cmpw	$61, %ax	#, D.17473
	je	.L201	#,
.L200:
	.loc 1 1157 0
	movl	$__FUNCTION__.14079, %edx	#,
	movl	$1157, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L201:
	.loc 1 1162 0
	cmpq	$0, -344(%rbp)	#, target
	je	.L202	#,
	.loc 1 1162 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# target, tmp945
	movzwl	(%rax), %eax	# target_161(D)->code, D.17473
	cmpw	$61, %ax	#, D.17473
	jne	.L202	#,
	.loc 1 1163 0 is_stmt 1
	movq	-344(%rbp), %rax	# target, tmp946
	movzbl	2(%rax), %eax	# target_161(D)->mode, D.17475
	movzbl	%al, %eax	# D.17475, D.17469
	cmpl	-260(%rbp), %eax	# departing_mode, D.17469
	je	.L203	#,
.L202:
	.loc 1 1164 0
	movl	-260(%rbp), %eax	# departing_mode, tmp947
	movl	%eax, %edi	# tmp947,
	call	gen_reg_rtx	#
	movq	%rax, -344(%rbp)	# tmp948, target
.L203:
	.loc 1 1166 0
	movq	-344(%rbp), %rax	# target, tmp949
	movzwl	(%rax), %eax	# target_5->code, D.17473
	cmpw	$65, %ax	#, D.17473
	je	.L204	#,
	.loc 1 1167 0
	movl	$__FUNCTION__.14079, %edx	#,
	movl	$1167, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L204:
	.loc 1 1169 0
	movq	-168(%rbp), %rax	# map, tmp950
	movq	32(%rax), %rdx	# map_221->reg_map, D.17474
	movq	-112(%rbp), %rax	# loc, tmp951
	movq	8(%rax), %rax	# loc_383->fld[0].rtx, D.17465
	movl	8(%rax), %eax	# _532->fld[0].rtuint, D.17469
	movl	%eax, %eax	# D.17469, D.17471
	salq	$3, %rax	#, D.17471
	addq	%rax, %rdx	# D.17471, D.17474
	movq	-344(%rbp), %rax	# target, tmp952
	movq	8(%rax), %rax	# target_5->fld[0].rtx, D.17465
	movq	%rax, (%rdx)	# D.17465, *_536
	.loc 1 1170 0
	movq	-168(%rbp), %rax	# map, tmp953
	movq	32(%rax), %rdx	# map_221->reg_map, D.17474
	movq	-112(%rbp), %rax	# loc, tmp954
	movq	16(%rax), %rax	# loc_383->fld[1].rtx, D.17465
	movl	8(%rax), %eax	# _539->fld[0].rtuint, D.17469
	movl	%eax, %eax	# D.17469, D.17471
	salq	$3, %rax	#, D.17471
	addq	%rax, %rdx	# D.17471, D.17474
	movq	-344(%rbp), %rax	# target, tmp955
	movq	16(%rax), %rax	# target_5->fld[1].rtx, D.17465
	movq	%rax, (%rdx)	# D.17465, *_543
.LBE23:
	jmp	.L162	#
.L196:
	.loc 1 1173 0
	movl	$__FUNCTION__.14079, %edx	#,
	movl	$1173, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L162:
	.loc 1 1176 0
	movq	-192(%rbp), %rax	# inl_f, tmp956
	movq	%rax, %rdi	# tmp956,
	call	get_exception_pointer	#
	movq	%rax, -240(%rbp)	# temp.99, temp
	.loc 1 1177 0
	movq	-240(%rbp), %rax	# temp, temp.100
	testq	%rax, %rax	# temp.100
	je	.L205	#,
	.loc 1 1178 0
	movq	-168(%rbp), %rax	# map, tmp957
	movq	32(%rax), %rdx	# map_221->reg_map, D.17474
	movq	-240(%rbp), %rax	# temp, temp.101
	movl	8(%rax), %eax	# temp.101_548->fld[0].rtuint, D.17469
	movl	%eax, %eax	# D.17469, D.17471
	salq	$3, %rax	#, D.17471
	leaq	(%rdx,%rax), %rbx	#, D.17474
	movq	cfun(%rip), %rax	# cfun, cfun.102
	movq	%rax, %rdi	# cfun.102,
	call	get_exception_pointer	#
	movq	%rax, (%rbx)	# D.17465, *_552
.L205:
	.loc 1 1183 0
	movl	-300(%rbp), %eax	# min_labelno, tmp958
	movl	-296(%rbp), %edx	# max_labelno, tmp959
	subl	%eax, %edx	# tmp958, D.17466
	movl	%edx, %eax	# D.17466, D.17466
	.loc 1 1182 0
	cltq
	leaq	0(,%rax,8), %rdx	#, D.17471
	movq	-168(%rbp), %rax	# map, tmp960
	movq	40(%rax), %rax	# map_221->label_map, D.17474
	movl	-300(%rbp), %ecx	# min_labelno, tmp961
	movslq	%ecx, %rcx	# tmp961, D.17471
	salq	$3, %rcx	#, D.17471
	addq	%rcx, %rax	# D.17471, D.17478
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17478,
	call	memset	#
	.loc 1 1189 0
	movq	-328(%rbp), %rax	# fndecl, tmp962
	movq	%rax, inline_function_decl(%rip)	# tmp962, inline_function_decl
	.loc 1 1190 0
	movq	-328(%rbp), %rax	# fndecl, tmp963
	movq	88(%rax), %rax	# fndecl_58->decl.arguments, D.17467
	movq	-160(%rbp), %rdx	# arg_vector, tmp964
	movq	-168(%rbp), %rcx	# map, tmp965
	movq	%rcx, %rsi	# tmp965,
	movq	%rax, %rdi	# D.17467,
	call	integrate_parm_decls	#
	.loc 1 1191 0
	movq	-192(%rbp), %rax	# inl_f, tmp966
	movq	368(%rax), %rax	# inl_f_40->original_decl_initial, D.17467
	movq	-168(%rbp), %rdx	# map, tmp967
	movq	%rdx, %rsi	# tmp967,
	movq	%rax, %rdi	# D.17467,
	call	integrate_decl_tree	#
	movq	%rax, -24(%rbp)	# tmp968, block
	.loc 1 1192 0
	movq	-328(%rbp), %rax	# fndecl, tmp969
	movq	112(%rax), %rax	# fndecl_58->decl.abstract_origin, D.17467
	testq	%rax, %rax	# D.17467
	je	.L206	#,
	.loc 1 1192 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# fndecl, tmp970
	movq	112(%rax), %rax	# fndecl_58->decl.abstract_origin, iftmp.103
	jmp	.L207	#
.L206:
	.loc 1 1192 0 discriminator 2
	movq	-328(%rbp), %rax	# fndecl, iftmp.103
.L207:
	.loc 1 1192 0 discriminator 3
	movq	-24(%rbp), %rdx	# block, tmp971
	movq	%rax, 56(%rdx)	# iftmp.103, block_564->block.abstract_origin
	.loc 1 1193 0 is_stmt 1 discriminator 3
	movq	$0, inline_function_decl(%rip)	#, inline_function_decl
	.loc 1 1197 0 discriminator 3
	movq	-24(%rbp), %rax	# block, tmp972
	movq	%rax, %rsi	# tmp972,
	movl	$0, %edi	#,
	call	expand_start_bindings_and_block	#
	.loc 1 1202 0 discriminator 3
	movq	-168(%rbp), %rax	# map, tmp973
	movq	24(%rax), %rax	# map_221->block_map, D.17477
	movq	8(%rax), %rax	# _568->elements_used, D.17471
	.loc 1 1201 0 discriminator 3
	movq	-168(%rbp), %rdx	# map, tmp974
	movq	24(%rdx), %rdx	# map_221->block_map, D.17477
	leaq	32(%rdx), %rdi	#, D.17483
	movl	$compare_blocks, %ecx	#,
	movl	$8, %edx	#,
	movl	%eax, %esi	# D.17466,
	call	specqsort	#
	.loc 1 1208 0 discriminator 3
	call	emit_queue	#
	.loc 1 1211 0 discriminator 3
	call	do_pending_stack_adjust	#
	.loc 1 1215 0 discriminator 3
	movq	-168(%rbp), %rax	# map, tmp975
	movq	64(%rax), %rax	# map_221->const_equiv_varray, global_const_equiv_varray.104
	movq	%rax, global_const_equiv_varray(%rip)	# global_const_equiv_varray.104, global_const_equiv_varray
	.loc 1 1221 0 discriminator 3
	movq	-192(%rbp), %rax	# inl_f, tmp976
	movzbl	424(%rax), %eax	# *inl_f_40, D.17475
	andl	$64, %eax	#, D.17475
	testb	%al, %al	# D.17475
	je	.L208	#,
	.loc 1 1222 0
	leaq	-248(%rbp), %rax	#, tmp977
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp977,
	movl	$0, %edi	#,
	call	emit_stack_save	#
.L208:
	.loc 1 1225 0
	movq	-168(%rbp), %rdx	# map, tmp978
	movq	-192(%rbp), %rax	# inl_f, tmp979
	movq	%rdx, %rsi	# tmp978,
	movq	%rax, %rdi	# tmp979,
	call	setup_initial_hard_reg_value_integration	#
	.loc 1 1228 0
	movq	-216(%rbp), %rdx	# static_chain_value, tmp980
	movq	-168(%rbp), %rcx	# map, tmp981
	movq	-176(%rbp), %rax	# insns, tmp982
	movq	%rcx, %rsi	# tmp981,
	movq	%rax, %rdi	# tmp982,
	call	copy_insn_list	#
	.loc 1 1234 0
	movq	-168(%rbp), %rdx	# map, tmp983
	movq	-192(%rbp), %rax	# inl_f, tmp984
	movq	%rdx, %rsi	# tmp983,
	movq	%rax, %rdi	# tmp984,
	call	duplicate_eh_regions	#
	movl	%eax, -252(%rbp)	# tmp985, eh_region_offset
	.loc 1 1237 0
	movl	-252(%rbp), %edx	# eh_region_offset, tmp986
	movq	-168(%rbp), %rcx	# map, tmp987
	movq	-176(%rbp), %rax	# insns, tmp988
	movq	%rcx, %rsi	# tmp987,
	movq	%rax, %rdi	# tmp988,
	call	copy_insn_notes	#
	.loc 1 1240 0
	movq	-168(%rbp), %rax	# map, tmp989
	movq	112(%rax), %rax	# map_221->local_return_label, D.17465
	testq	%rax, %rax	# D.17465
	je	.L209	#,
	.loc 1 1241 0
	movq	-168(%rbp), %rax	# map, tmp990
	movq	112(%rax), %rax	# map_221->local_return_label, D.17465
	movq	%rax, %rdi	# D.17465,
	call	emit_label	#
.L209:
	.loc 1 1244 0
	movq	-192(%rbp), %rax	# inl_f, tmp991
	movzbl	424(%rax), %eax	# *inl_f_40, D.17475
	andl	$64, %eax	#, D.17475
	testb	%al, %al	# D.17475
	je	.L210	#,
	.loc 1 1245 0
	movq	-248(%rbp), %rax	# stack_save, stack_save.105
	movl	$0, %edx	#,
	movq	%rax, %rsi	# stack_save.105,
	movl	$0, %edi	#,
	call	emit_stack_restore	#
.L210:
	.loc 1 1247 0
	movq	cfun(%rip), %rax	# cfun, cfun.106
	movzbl	426(%rax), %eax	# *cfun.106_582, D.17475
	andl	$4, %eax	#, D.17475
	testb	%al, %al	# D.17475
	jne	.L211	#,
	.loc 1 1252 0
	movq	-24(%rbp), %rax	# block, tmp992
	movq	%rax, %rdi	# tmp992,
	call	insert_block	#
	jmp	.L212	#
.L211:
	.loc 1 1256 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.107
	movq	104(%rax), %rax	# current_function_decl.107_585->decl.initial, D.17467
	movq	(%rax), %rdx	# _586->common.chain, D.17467
	movq	-24(%rbp), %rax	# block, tmp993
	movq	%rdx, (%rax)	# D.17467, block_564->common.chain
	.loc 1 1257 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.108
	movq	104(%rax), %rax	# current_function_decl.108_588->decl.initial, D.17467
	movq	-24(%rbp), %rdx	# block, tmp994
	movq	%rdx, (%rax)	# tmp994, _589->common.chain
.L212:
	.loc 1 1265 0
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	expand_end_bindings	#
	.loc 1 1273 0
	movl	flag_test_coverage(%rip), %eax	# flag_test_coverage, flag_test_coverage.109
	testl	%eax, %eax	# flag_test_coverage.109
	je	.L213	#,
	.loc 1 1274 0
	movl	$-84, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
.L213:
	.loc 1 1276 0
	movl	lineno(%rip), %edx	# lineno, lineno.110
	movq	input_filename(%rip), %rax	# input_filename, input_filename.111
	movl	%edx, %esi	# lineno.110,
	movq	%rax, %rdi	# input_filename.111,
	call	emit_line_note	#
	.loc 1 1280 0
	cmpq	$0, -344(%rbp)	#, target
	je	.L214	#,
	.loc 1 1281 0
	movq	-328(%rbp), %rax	# fndecl, tmp995
	movq	8(%rax), %rax	# fndecl_58->common.type, D.17467
	movq	8(%rax), %rax	# _593->common.type, D.17467
	movzbl	61(%rax), %eax	# *_594, D.17475
	andl	$-2, %eax	#, D.17475
	cmpb	$102, %al	#, D.17475
	jne	.L214	#,
	.loc 1 1282 0
	movq	-328(%rbp), %rax	# fndecl, tmp996
	movq	8(%rax), %rax	# fndecl_58->common.type, D.17467
	movq	8(%rax), %rax	# _597->common.type, D.17467
	movq	%rax, %rdi	# D.17467,
	call	aggregate_value_p	#
	testl	%eax, %eax	# D.17466
	jne	.L214	#,
	.loc 1 1283 0
	movq	-328(%rbp), %rax	# fndecl, tmp997
	movq	8(%rax), %rax	# fndecl_58->common.type, D.17467
	movq	8(%rax), %rdx	# _600->common.type, D.17467
	movq	-344(%rbp), %rax	# target, tmp998
	movq	%rax, %rsi	# tmp998,
	movl	$0, %edi	#,
	call	copy_blkmode_from_reg	#
	movq	%rax, -344(%rbp)	# tmp999, target
.L214:
	.loc 1 1285 0
	cmpq	$0, -368(%rbp)	#, structure_value_addr
	je	.L215	#,
	.loc 1 1288 0
	movq	-360(%rbp), %rax	# type, tmp1000
	movzbl	61(%rax), %eax	# *type_384(D), tmp1003
	shrb	%al	# D.17468
	.loc 1 1287 0
	movzbl	%al, %eax	# D.17468, D.17470
	movq	-368(%rbp), %rdx	# structure_value_addr, tmp1004
	movq	%rdx, %rsi	# tmp1004,
	movl	%eax, %edi	# D.17470,
	call	memory_address	#
	movq	%rax, %rdx	#, D.17465
	movq	-360(%rbp), %rax	# type, tmp1005
	movzbl	61(%rax), %eax	# *type_384(D), tmp1008
	shrb	%al	# D.17468
	movzbl	%al, %eax	# D.17468, D.17470
	movq	%rdx, %rsi	# D.17465,
	movl	%eax, %edi	# D.17470,
	call	gen_rtx_MEM	#
	movq	%rax, -344(%rbp)	# tmp1009, target
	.loc 1 1290 0
	movq	-360(%rbp), %rcx	# type, tmp1010
	movq	-344(%rbp), %rax	# target, tmp1011
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp1010,
	movq	%rax, %rdi	# tmp1011,
	call	set_mem_attributes	#
.L215:
	.loc 1 1294 0
	cmpq	$0, -152(%rbp)	#, real_label_map
	je	.L216	#,
	.loc 1 1295 0
	movq	-152(%rbp), %rax	# real_label_map, tmp1012
	movq	%rax, %rdi	# tmp1012,
	call	free	#
.L216:
	.loc 1 1296 0
	movq	-168(%rbp), %rax	# map, tmp1013
	movq	64(%rax), %rax	# map_221->const_equiv_varray, D.17477
	testq	%rax, %rax	# D.17477
	je	.L217	#,
	.loc 1 1296 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# map, tmp1014
	movq	64(%rax), %rax	# map_221->const_equiv_varray, D.17477
	movq	%rax, %rdi	# D.17477,
	call	free	#
	movq	-168(%rbp), %rax	# map, tmp1015
	movq	$0, 64(%rax)	#, map_221->const_equiv_varray
.L217:
	.loc 1 1297 0 is_stmt 1
	movq	-168(%rbp), %rax	# map, tmp1016
	movq	32(%rax), %rax	# map_221->reg_map, D.17474
	movq	%rax, %rdi	# D.17474,
	call	free	#
	.loc 1 1298 0
	movq	-168(%rbp), %rax	# map, tmp1017
	movq	24(%rax), %rax	# map_221->block_map, D.17477
	testq	%rax, %rax	# D.17477
	je	.L218	#,
	.loc 1 1298 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# map, tmp1018
	movq	24(%rax), %rax	# map_221->block_map, D.17477
	movq	%rax, %rdi	# D.17477,
	call	free	#
	movq	-168(%rbp), %rax	# map, tmp1019
	movq	$0, 24(%rax)	#, map_221->block_map
.L218:
	.loc 1 1299 0 is_stmt 1
	movq	-168(%rbp), %rax	# map, tmp1020
	movq	48(%rax), %rax	# map_221->insn_map, D.17474
	movq	%rax, %rdi	# D.17474,
	call	free	#
	.loc 1 1300 0
	movq	-168(%rbp), %rax	# map, tmp1021
	movq	%rax, %rdi	# tmp1021,
	call	free	#
	.loc 1 1301 0
	movq	-136(%rbp), %rax	# arg_vals, tmp1022
	movq	%rax, %rdi	# tmp1022,
	call	free	#
	.loc 1 1302 0
	movq	-128(%rbp), %rax	# arg_trees, tmp1023
	movq	%rax, %rdi	# tmp1023,
	call	free	#
	.loc 1 1304 0
	movq	-48(%rbp), %rax	# inlining_previous, tmp1024
	movq	%rax, inlining(%rip)	# tmp1024, inlining
	.loc 1 1306 0
	movq	-344(%rbp), %rax	# target, D.17463
.L219:
	.loc 1 1307 0
	addq	$352, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	expand_inline_function, .-expand_inline_function
	.type	copy_insn_list, @function
copy_insn_list:
.LFB14:
	.loc 1 1323 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -152(%rbp)	# insns, insns
	movq	%rsi, -160(%rbp)	# map, map
	movq	%rdx, -168(%rbp)	# static_chain_value, static_chain_value
	.loc 1 1330 0
	movq	$0, -112(%rbp)	#, static_chain_mem
	.loc 1 1337 0
	movq	-152(%rbp), %rax	# insns, tmp222
	movq	%rax, -128(%rbp)	# tmp222, insn
	jmp	.L221	#
.L276:
.LBB24:
	.loc 1 1341 0
	movq	-160(%rbp), %rax	# map, tmp223
	movq	$0, 88(%rax)	#, map_27(D)->orig_asm_operands_vector
	.loc 1 1343 0
	movq	-128(%rbp), %rax	# insn, tmp224
	movzwl	(%rax), %eax	# insn_7->code, D.17487
	movzwl	%ax, %eax	# D.17487, D.17488
	subl	$32, %eax	#, tmp225
	cmpl	$5, %eax	#, tmp225
	ja	.L222	#,
	movl	%eax, %eax	# tmp225, tmp226
	movq	.L224(,%rax,8), %rax	#, tmp227
	jmp	*%rax	# tmp227
	.section	.rodata
	.align 8
	.align 4
.L224:
	.quad	.L223
	.quad	.L225
	.quad	.L226
	.quad	.L227
	.quad	.L228
	.quad	.L229
	.text
.L223:
	.loc 1 1346 0
	movq	-128(%rbp), %rax	# insn, tmp228
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, tmp229
	movq	%rax, -96(%rbp)	# tmp229, pattern
	.loc 1 1347 0
	movq	-128(%rbp), %rax	# insn, tmp230
	movzwl	(%rax), %eax	# insn_7->code, D.17487
	movzwl	%ax, %eax	# D.17487, D.17489
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17490
	cmpb	$105, %al	#, D.17490
	jne	.L230	#,
	.loc 1 1347 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# insn, tmp232
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.17491
	movzwl	(%rax), %eax	# _34->code, D.17487
	cmpw	$47, %ax	#, D.17487
	jne	.L231	#,
	.loc 1 1347 0 discriminator 3
	movq	-128(%rbp), %rax	# insn, tmp233
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, iftmp.113
	jmp	.L233	#
.L231:
	.loc 1 1347 0 discriminator 4
	movq	-128(%rbp), %rax	# insn, tmp234
	movq	32(%rax), %rdx	# insn_7->fld[3].rtx, D.17491
	movq	-128(%rbp), %rax	# insn, tmp235
	movq	%rdx, %rsi	# D.17491,
	movq	%rax, %rdi	# tmp235,
	call	single_set_2	#
	jmp	.L233	#
.L230:
	.loc 1 1347 0 discriminator 2
	movl	$0, %eax	#, iftmp.112
.L233:
	.loc 1 1347 0 discriminator 5
	movq	%rax, -80(%rbp)	# iftmp.112, set
	.loc 1 1348 0 is_stmt 1 discriminator 5
	movq	$0, -104(%rbp)	#, copy
	.loc 1 1349 0 discriminator 5
	movq	-96(%rbp), %rax	# pattern, tmp236
	movzwl	(%rax), %eax	# pattern_30->code, D.17487
	cmpw	$48, %ax	#, D.17487
	jne	.L234	#,
	.loc 1 1350 0
	movq	-96(%rbp), %rax	# pattern, tmp237
	movq	8(%rax), %rax	# pattern_30->fld[0].rtx, D.17491
	movzwl	(%rax), %eax	# _44->code, D.17487
	cmpw	$61, %ax	#, D.17487
	jne	.L234	#,
	.loc 1 1351 0
	movq	-96(%rbp), %rax	# pattern, tmp238
	movq	8(%rax), %rax	# pattern_30->fld[0].rtx, D.17491
	movzbl	3(%rax), %eax	# *_46, D.17492
	andl	$64, %eax	#, D.17492
	testb	%al, %al	# D.17492
	je	.L234	#,
	.loc 1 1355 0
	jmp	.L235	#
.L234:
	.loc 1 1358 0
	movq	-160(%rbp), %rax	# map, tmp239
	movq	80(%rax), %rax	# map_27(D)->inline_target, D.17491
	testq	%rax, %rax	# D.17491
	jne	.L236	#,
	.loc 1 1359 0
	cmpq	$0, -80(%rbp)	#, set
	je	.L236	#,
	.loc 1 1360 0
	movq	-80(%rbp), %rax	# set, tmp240
	movq	8(%rax), %rax	# set_41->fld[0].rtx, D.17491
	movzwl	(%rax), %eax	# _50->code, D.17487
	cmpw	$61, %ax	#, D.17487
	jne	.L236	#,
	.loc 1 1361 0
	movq	-80(%rbp), %rax	# set, tmp241
	movq	8(%rax), %rax	# set_41->fld[0].rtx, D.17491
	movzbl	3(%rax), %eax	# *_52, D.17492
	andl	$64, %eax	#, D.17492
	testb	%al, %al	# D.17492
	je	.L236	#,
	.loc 1 1363 0
	movq	-80(%rbp), %rax	# set, tmp242
	movq	16(%rax), %rax	# set_41->fld[1].rtx, D.17491
	movq	%rax, %rdi	# D.17491,
	call	volatile_refs_p	#
	testl	%eax, %eax	# D.17489
	je	.L237	#,
.LBB25:
	.loc 1 1369 0
	movq	-160(%rbp), %rcx	# map, tmp243
	movq	-96(%rbp), %rax	# pattern, tmp244
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp243,
	movq	%rax, %rdi	# tmp244,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rdi	# D.17491,
	call	emit_insn	#
	movq	%rax, -104(%rbp)	# tmp245, copy
	.loc 1 1371 0
	movq	-104(%rbp), %rax	# copy, tmp246
	movzwl	(%rax), %eax	# copy_58->code, D.17487
	movzwl	%ax, %eax	# D.17487, D.17489
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17490
	cmpb	$105, %al	#, D.17490
	jne	.L238	#,
	.loc 1 1371 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# copy, tmp248
	movq	32(%rax), %rax	# copy_58->fld[3].rtx, D.17491
	movzwl	(%rax), %eax	# _62->code, D.17487
	cmpw	$47, %ax	#, D.17487
	jne	.L239	#,
	.loc 1 1371 0 discriminator 3
	movq	-104(%rbp), %rax	# copy, tmp249
	movq	32(%rax), %rax	# copy_58->fld[3].rtx, iftmp.115
	jmp	.L241	#
.L239:
	.loc 1 1371 0 discriminator 4
	movq	-104(%rbp), %rax	# copy, tmp250
	movq	32(%rax), %rdx	# copy_58->fld[3].rtx, D.17491
	movq	-104(%rbp), %rax	# copy, tmp251
	movq	%rdx, %rsi	# D.17491,
	movq	%rax, %rdi	# tmp251,
	call	single_set_2	#
	jmp	.L241	#
.L238:
	.loc 1 1371 0 discriminator 2
	movl	$0, %eax	#, iftmp.114
.L241:
	.loc 1 1371 0 discriminator 5
	movq	%rax, -72(%rbp)	# iftmp.114, new_set
	.loc 1 1372 0 is_stmt 1 discriminator 5
	cmpq	$0, -72(%rbp)	#, new_set
	jne	.L242	#,
	.loc 1 1373 0
	movl	$__FUNCTION__.14134, %edx	#,
	movl	$1373, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L242:
	.loc 1 1376 0
	movq	-72(%rbp), %rax	# new_set, tmp252
	movq	8(%rax), %rax	# new_set_69->fld[0].rtx, D.17491
	movzbl	2(%rax), %eax	# _70->mode, D.17492
	movzbl	%al, %eax	# D.17492, D.17493
	movl	%eax, %edi	# D.17493,
	call	gen_reg_rtx	#
	movq	-72(%rbp), %rdx	# new_set, tmp253
	movq	%rax, 8(%rdx)	# D.17491, new_set_69->fld[0].rtx
.LBE25:
	.loc 1 1363 0
	jmp	.L244	#
.L237:
	.loc 1 1380 0
	movq	-80(%rbp), %rax	# set, tmp254
	movq	16(%rax), %rdx	# set_41->fld[1].rtx, D.17491
	movq	-80(%rbp), %rax	# set, tmp255
	movq	8(%rax), %rax	# set_41->fld[0].rtx, D.17491
	movq	%rdx, %rsi	# D.17491,
	movq	%rax, %rdi	# D.17491,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17489
	je	.L235	#,
	.loc 1 1381 0
	movq	-128(%rbp), %rax	# insn, tmp256
	movq	56(%rax), %rax	# insn_7->fld[6].rtx, D.17491
	testq	%rax, %rax	# D.17491
	je	.L235	#,
	.loc 1 1382 0
	movq	-160(%rbp), %rcx	# map, tmp257
	movq	-96(%rbp), %rax	# pattern, tmp258
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp257,
	movq	%rax, %rdi	# tmp258,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rdi	# D.17491,
	call	emit_insn	#
	movq	%rax, -104(%rbp)	# tmp259, copy
	.loc 1 1363 0
	jmp	.L244	#
.L236:
	.loc 1 1388 0
	movq	-160(%rbp), %rax	# map, tmp260
	movq	80(%rax), %rax	# map_27(D)->inline_target, D.17491
	testq	%rax, %rax	# D.17491
	jne	.L245	#,
	.loc 1 1389 0
	movq	-96(%rbp), %rax	# pattern, tmp261
	movzwl	(%rax), %eax	# pattern_30->code, D.17487
	cmpw	$49, %ax	#, D.17487
	jne	.L245	#,
	.loc 1 1390 0
	movq	-96(%rbp), %rax	# pattern, tmp262
	movq	8(%rax), %rax	# pattern_30->fld[0].rtx, D.17491
	movzwl	(%rax), %eax	# _82->code, D.17487
	cmpw	$61, %ax	#, D.17487
	jne	.L245	#,
	.loc 1 1391 0
	movq	-96(%rbp), %rax	# pattern, tmp263
	movq	8(%rax), %rax	# pattern_30->fld[0].rtx, D.17491
	movzbl	3(%rax), %eax	# *_84, D.17492
	andl	$64, %eax	#, D.17492
	testb	%al, %al	# D.17492
	jne	.L235	#,
.L245:
	.loc 1 1410 0
	cmpq	$0, -168(%rbp)	#, static_chain_value
	je	.L246	#,
	.loc 1 1411 0
	cmpq	$0, -80(%rbp)	#, set
	je	.L246	#,
	.loc 1 1412 0
	movq	static_chain_incoming_rtx(%rip), %rax	# static_chain_incoming_rtx, static_chain_incoming_rtx.116
	movzwl	(%rax), %eax	# static_chain_incoming_rtx.116_87->code, D.17487
	cmpw	$66, %ax	#, D.17487
	jne	.L246	#,
	.loc 1 1413 0
	movq	-80(%rbp), %rax	# set, tmp264
	movq	8(%rax), %rax	# set_41->fld[0].rtx, D.17491
	movzwl	(%rax), %eax	# _89->code, D.17487
	cmpw	$61, %ax	#, D.17487
	jne	.L246	#,
	.loc 1 1415 0
	movq	static_chain_incoming_rtx(%rip), %rax	# static_chain_incoming_rtx, static_chain_incoming_rtx.117
	.loc 1 1414 0
	movq	8(%rax), %rdx	# static_chain_incoming_rtx.117_91->fld[0].rtx, D.17491
	movq	-80(%rbp), %rax	# set, tmp265
	movq	16(%rax), %rax	# set_41->fld[1].rtx, D.17491
	movq	%rdx, %rsi	# D.17491,
	movq	%rax, %rdi	# D.17491,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17489
	je	.L246	#,
	.loc 1 1418 0
	movq	-80(%rbp), %rax	# set, tmp266
	movq	8(%rax), %rdx	# set_41->fld[0].rtx, D.17491
	movq	static_chain_incoming_rtx(%rip), %rax	# static_chain_incoming_rtx, static_chain_incoming_rtx.118
	movzbl	2(%rax), %eax	# static_chain_incoming_rtx.118_96->mode, D.17492
	movzbl	%al, %eax	# D.17492, D.17493
	.loc 1 1417 0
	movq	%rdx, %rsi	# D.17491,
	movl	%eax, %edi	# D.17493,
	call	gen_rtx_MEM	#
	movq	%rax, -112(%rbp)	# tmp267, static_chain_mem
	.loc 1 1424 0
	movq	-160(%rbp), %rcx	# map, tmp268
	movq	-96(%rbp), %rax	# pattern, tmp269
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp268,
	movq	%rax, %rdi	# tmp269,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rdi	# D.17491,
	call	emit_insn	#
	movq	%rax, -104(%rbp)	# tmp270, copy
	jmp	.L244	#
.L246:
	.loc 1 1428 0
	cmpq	$0, -168(%rbp)	#, static_chain_value
	je	.L247	#,
	.loc 1 1429 0
	cmpq	$0, -80(%rbp)	#, set
	je	.L247	#,
	.loc 1 1430 0
	movq	static_chain_incoming_rtx(%rip), %rdx	# static_chain_incoming_rtx, static_chain_incoming_rtx.119
	movq	-80(%rbp), %rax	# set, tmp271
	movq	8(%rax), %rax	# set_41->fld[0].rtx, D.17491
	movq	%rdx, %rsi	# static_chain_incoming_rtx.119,
	movq	%rax, %rdi	# D.17491,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17489
	jne	.L235	#,
	.loc 1 1432 0
	cmpq	$0, -112(%rbp)	#, static_chain_mem
	je	.L247	#,
	.loc 1 1433 0
	movq	-80(%rbp), %rax	# set, tmp272
	movq	8(%rax), %rax	# set_41->fld[0].rtx, D.17491
	movq	-112(%rbp), %rdx	# static_chain_mem, tmp273
	movq	%rdx, %rsi	# tmp273,
	movq	%rax, %rdi	# D.17491,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17489
	jne	.L235	#,
.L247:
	.loc 1 1438 0
	cmpq	$0, -168(%rbp)	#, static_chain_value
	je	.L248	#,
	.loc 1 1439 0
	cmpq	$0, -80(%rbp)	#, set
	je	.L248	#,
	.loc 1 1440 0
	movq	static_chain_incoming_rtx(%rip), %rdx	# static_chain_incoming_rtx, static_chain_incoming_rtx.120
	movq	-80(%rbp), %rax	# set, tmp274
	movq	16(%rax), %rax	# set_41->fld[1].rtx, D.17491
	movq	%rdx, %rsi	# static_chain_incoming_rtx.120,
	movq	%rax, %rdi	# D.17491,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17489
	jne	.L249	#,
	.loc 1 1442 0
	cmpq	$0, -112(%rbp)	#, static_chain_mem
	je	.L248	#,
	.loc 1 1443 0
	movq	-80(%rbp), %rax	# set, tmp275
	movq	16(%rax), %rax	# set_41->fld[1].rtx, D.17491
	movq	-112(%rbp), %rdx	# static_chain_mem, tmp276
	movq	%rdx, %rsi	# tmp276,
	movq	%rax, %rdi	# D.17491,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17489
	je	.L248	#,
.L249:
.LBB26:
	.loc 1 1445 0
	movq	-80(%rbp), %rax	# set, tmp277
	movq	8(%rax), %rax	# set_41->fld[0].rtx, D.17491
	movq	-160(%rbp), %rcx	# map, tmp278
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp278,
	movq	%rax, %rdi	# D.17491,
	call	copy_rtx_and_substitute	#
	movq	%rax, -64(%rbp)	# tmp279, newdest
	.loc 1 1447 0
	movq	-168(%rbp), %rdx	# static_chain_value, tmp280
	movq	-64(%rbp), %rax	# newdest, tmp281
	movq	%rdx, %rsi	# tmp280,
	movq	%rax, %rdi	# tmp281,
	call	emit_move_insn	#
	movq	%rax, -104(%rbp)	# tmp282, copy
	.loc 1 1448 0
	movq	static_chain_incoming_rtx(%rip), %rax	# static_chain_incoming_rtx, static_chain_incoming_rtx.121
	movzwl	(%rax), %eax	# static_chain_incoming_rtx.121_115->code, D.17487
	cmpw	$66, %ax	#, D.17487
	je	.L250	#,
	.loc 1 1449 0
	movq	$0, -168(%rbp)	#, static_chain_value
.LBE26:
	.loc 1 1444 0
	jmp	.L244	#
.L250:
	jmp	.L244	#
.L248:
	.loc 1 1459 0
	cmpq	$0, -80(%rbp)	#, set
	je	.L251	#,
	.loc 1 1460 0
	movq	global_rtl+56(%rip), %rdx	# global_rtl, D.17491
	movq	-80(%rbp), %rax	# set, tmp283
	movq	8(%rax), %rax	# set_41->fld[0].rtx, D.17491
	movq	%rdx, %rsi	# D.17491,
	movq	%rax, %rdi	# D.17491,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17489
	je	.L251	#,
.LBB27:
	.loc 1 1463 0
	movq	-160(%rbp), %rax	# map, tmp284
	movq	32(%rax), %rdx	# map_27(D)->reg_map, D.17494
	movq	-80(%rbp), %rax	# set, tmp285
	movq	8(%rax), %rax	# set_41->fld[0].rtx, D.17491
	movl	8(%rax), %eax	# _122->fld[0].rtuint, D.17488
	movl	%eax, %eax	# D.17488, D.17495
	salq	$3, %rax	#, D.17495
	addq	%rdx, %rax	# D.17494, D.17494
	movq	(%rax), %rax	# *_126, tmp286
	movq	%rax, -120(%rbp)	# tmp286, temp
	.loc 1 1464 0
	movq	-160(%rbp), %rax	# map, tmp287
	movq	64(%rax), %rdx	# map_27(D)->const_equiv_varray, D.17496
	movq	-120(%rbp), %rax	# temp, tmp288
	movl	8(%rax), %eax	# temp_127->fld[0].rtuint, D.17488
	movl	%eax, %eax	# D.17488, tmp289
	addq	$2, %rax	#, tmp290
	salq	$4, %rax	#, tmp291
	addq	%rdx, %rax	# D.17496, tmp292
	movq	(%rax), %rax	# _128->data.const_equiv[_129].rtx, tmp293
	movq	%rax, -120(%rbp)	# tmp293, temp
	.loc 1 1467 0
	movq	global_rtl+56(%rip), %rdx	# global_rtl, D.17491
	movq	-120(%rbp), %rax	# temp, tmp294
	movq	%rdx, %rsi	# D.17491,
	movq	%rax, %rdi	# tmp294,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17489
	je	.L252	#,
	.loc 1 1468 0
	movq	$0, -88(%rbp)	#, offset
	jmp	.L253	#
.L252:
	.loc 1 1469 0
	movq	-120(%rbp), %rax	# temp, tmp295
	movzwl	(%rax), %eax	# temp_130->code, D.17487
	cmpw	$75, %ax	#, D.17487
	jne	.L254	#,
	.loc 1 1470 0
	movq	global_rtl+56(%rip), %rdx	# global_rtl, D.17491
	movq	-120(%rbp), %rax	# temp, tmp296
	movq	8(%rax), %rax	# temp_130->fld[0].rtx, D.17491
	movq	%rdx, %rsi	# D.17491,
	movq	%rax, %rdi	# D.17491,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17489
	je	.L254	#,
	.loc 1 1471 0
	movq	-120(%rbp), %rax	# temp, tmp297
	movq	16(%rax), %rax	# temp_130->fld[1].rtx, D.17491
	movzwl	(%rax), %eax	# _138->code, D.17487
	cmpw	$54, %ax	#, D.17487
	jne	.L254	#,
	.loc 1 1472 0
	movq	-120(%rbp), %rax	# temp, tmp298
	movq	16(%rax), %rax	# temp_130->fld[1].rtx, D.17491
	movq	8(%rax), %rax	# _140->fld[0].rtwint, tmp299
	movq	%rax, -88(%rbp)	# tmp299, offset
	jmp	.L253	#
.L254:
	.loc 1 1474 0
	movl	$__FUNCTION__.14134, %edx	#,
	movl	$1474, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L253:
	.loc 1 1476 0
	movq	global_rtl+16(%rip), %rdx	# global_rtl, D.17491
	movq	-80(%rbp), %rax	# set, tmp300
	movq	16(%rax), %rax	# set_41->fld[1].rtx, D.17491
	movq	%rdx, %rsi	# D.17491,
	movq	%rax, %rdi	# D.17491,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17489
	je	.L255	#,
	.loc 1 1477 0
	movq	-80(%rbp), %rax	# set, tmp301
	movq	16(%rax), %rax	# set_41->fld[1].rtx, tmp302
	movq	%rax, -120(%rbp)	# tmp302, temp
	jmp	.L256	#
.L255:
	.loc 1 1479 0
	movq	-88(%rbp), %rax	# offset, tmp303
	negq	%rax	# D.17497
	movq	%rax, %rdx	# D.17497, D.17497
	movq	-80(%rbp), %rax	# set, tmp304
	movq	16(%rax), %rax	# set_41->fld[1].rtx, D.17491
	movq	%rdx, %rsi	# D.17497,
	movq	%rax, %rdi	# D.17491,
	call	plus_constant_wide	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17491,
	call	force_operand	#
	movq	%rax, -120(%rbp)	# tmp305, temp
.L256:
	.loc 1 1483 0
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.17491
	movq	-120(%rbp), %rdx	# temp, tmp306
	movq	%rdx, %rsi	# tmp306,
	movq	%rax, %rdi	# D.17491,
	call	emit_move_insn	#
	movq	%rax, -104(%rbp)	# tmp307, copy
.LBE27:
	.loc 1 1461 0
	jmp	.L244	#
.L251:
	.loc 1 1487 0
	movq	-160(%rbp), %rcx	# map, tmp308
	movq	-96(%rbp), %rax	# pattern, tmp309
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp308,
	movq	%rax, %rdi	# tmp309,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rdi	# D.17491,
	call	emit_insn	#
	movq	%rax, -104(%rbp)	# tmp310, copy
.L244:
	.loc 1 1514 0
	movq	-160(%rbp), %rdx	# map, tmp311
	movq	-104(%rbp), %rax	# copy, tmp312
	movq	%rdx, %rsi	# tmp311,
	movq	%rax, %rdi	# tmp312,
	call	try_constants	#
	.loc 1 1516 0
	jmp	.L235	#
.L225:
	.loc 1 1519 0
	movq	-160(%rbp), %rax	# map, tmp313
	movl	(%rax), %eax	# map_27(D)->integrating, D.17489
	testl	%eax, %eax	# D.17489
	je	.L257	#,
	.loc 1 1519 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# insn, tmp314
	movq	%rax, %rdi	# tmp314,
	call	returnjump_p	#
	testl	%eax, %eax	# D.17489
	je	.L257	#,
	.loc 1 1521 0 is_stmt 1
	movq	-160(%rbp), %rax	# map, tmp315
	movq	112(%rax), %rax	# map_27(D)->local_return_label, D.17491
	testq	%rax, %rax	# D.17491
	jne	.L258	#,
	.loc 1 1522 0
	call	gen_label_rtx	#
	movq	-160(%rbp), %rdx	# map, tmp316
	movq	%rax, 112(%rdx)	# D.17491, map_27(D)->local_return_label
.L258:
	.loc 1 1523 0
	movq	-160(%rbp), %rax	# map, tmp317
	movq	112(%rax), %rax	# map_27(D)->local_return_label, D.17491
	movq	%rax, %rdi	# D.17491,
	call	gen_jump	#
	movq	%rax, -96(%rbp)	# tmp318, pattern
	jmp	.L259	#
.L257:
	.loc 1 1526 0
	movq	-128(%rbp), %rax	# insn, tmp319
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.17491
	movq	-160(%rbp), %rcx	# map, tmp320
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp320,
	movq	%rax, %rdi	# D.17491,
	call	copy_rtx_and_substitute	#
	movq	%rax, -96(%rbp)	# tmp321, pattern
.L259:
	.loc 1 1528 0
	movq	-96(%rbp), %rax	# pattern, tmp322
	movq	%rax, %rdi	# tmp322,
	call	emit_jump_insn	#
	movq	%rax, -104(%rbp)	# tmp323, copy
	.loc 1 1535 0
	movq	-160(%rbp), %rdx	# map, tmp324
	movq	-104(%rbp), %rax	# copy, tmp325
	movq	%rdx, %rsi	# tmp324,
	movq	%rax, %rdi	# tmp325,
	call	try_constants	#
	.loc 1 1539 0
	movq	-128(%rbp), %rax	# insn, tmp326
	movq	%rax, %rdi	# tmp326,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.17489
	je	.L260	#,
	.loc 1 1539 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# insn, tmp327
	movq	%rax, %rdi	# tmp327,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.17489
	je	.L260	#,
	movq	-160(%rbp), %rax	# map, tmp328
	movq	624(%rax), %rax	# map_27(D)->last_pc_value, D.17491
	testq	%rax, %rax	# D.17491
	je	.L260	#,
	.loc 1 1548 0 is_stmt 1
	movq	-160(%rbp), %rax	# map, tmp329
	movq	624(%rax), %rdx	# map_27(D)->last_pc_value, D.17491
	movq	global_rtl(%rip), %rax	# global_rtl, D.17491
	cmpq	%rax, %rdx	# D.17491, D.17491
	jne	.L261	#,
	.loc 1 1550 0
	movq	-104(%rbp), %rax	# copy, tmp330
	movq	%rax, %rdi	# tmp330,
	call	delete_related_insns	#
	.loc 1 1551 0
	movq	$0, -104(%rbp)	#, copy
	jmp	.L260	#
.L261:
	.loc 1 1557 0
	call	emit_barrier	#
	.loc 1 1559 0
	jmp	.L235	#
.L260:
	jmp	.L235	#
.L226:
	.loc 1 1565 0
	movq	-128(%rbp), %rax	# insn, tmp331
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.17491
	movzwl	(%rax), %eax	# _169->code, D.17487
	cmpw	$141, %ax	#, D.17487
	jne	.L262	#,
.LBB28:
	.loc 1 1570 0
	movl	$0, -132(%rbp)	#, i
	jmp	.L263	#
.L265:
.LBB29:
	.loc 1 1574 0
	movl	-132(%rbp), %eax	# i, tmp333
	cltq
	movq	$0, -32(%rbp,%rax,8)	#, sequence
	.loc 1 1575 0
	movq	-128(%rbp), %rax	# insn, tmp334
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.17491
	movl	-132(%rbp), %edx	# i, tmp336
	movslq	%edx, %rdx	# tmp336, tmp335
	movq	8(%rax,%rdx,8), %rax	# _172->fld[i_5].rtx, tmp337
	movq	%rax, -56(%rbp)	# tmp337, seq
	.loc 1 1576 0
	cmpq	$0, -56(%rbp)	#, seq
	je	.L264	#,
	.loc 1 1578 0
	call	start_sequence	#
	.loc 1 1579 0
	movq	-168(%rbp), %rdx	# static_chain_value, tmp338
	movq	-160(%rbp), %rcx	# map, tmp339
	movq	-56(%rbp), %rax	# seq, tmp340
	movq	%rcx, %rsi	# tmp339,
	movq	%rax, %rdi	# tmp340,
	call	copy_insn_list	#
	.loc 1 1580 0
	call	get_insns	#
	movl	-132(%rbp), %edx	# i, tmp342
	movslq	%edx, %rdx	# tmp342, tmp341
	movq	%rax, -32(%rbp,%rdx,8)	# D.17491, sequence
	.loc 1 1581 0
	call	end_sequence	#
.L264:
.LBE29:
	.loc 1 1570 0
	addl	$1, -132(%rbp)	#, i
.L263:
	.loc 1 1570 0 is_stmt 0 discriminator 1
	cmpl	$2, -132(%rbp)	#, i
	jle	.L265	#,
	.loc 1 1587 0 is_stmt 1
	movq	-128(%rbp), %rax	# insn, tmp343
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.17491
	movq	32(%rax), %rax	# _176->fld[3].rtx, D.17491
	movq	-160(%rbp), %rcx	# map, tmp344
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp344,
	movq	%rax, %rdi	# D.17491,
	call	copy_rtx_and_substitute	#
	movq	%rax, -48(%rbp)	# tmp345, tail_label
	.loc 1 1590 0
	movq	-16(%rbp), %rcx	# sequence, D.17491
	movq	-24(%rbp), %rdx	# sequence, D.17491
	movq	-32(%rbp), %rax	# sequence, D.17491
	movq	-48(%rbp), %rsi	# tail_label, tmp346
	movq	%rsi, %r9	# tmp346,
	movq	%rcx, %r8	# D.17491,
	movq	%rdx, %rcx	# D.17491,
	movq	%rax, %rdx	# D.17491,
	movl	$0, %esi	#,
	movl	$141, %edi	#,
	call	gen_rtx_fmt_uuuu	#
	movq	%rax, %rdi	# D.17491,
	call	emit_call_insn	#
	movq	%rax, -104(%rbp)	# tmp347, copy
	.loc 1 1595 0
	nop
	jmp	.L235	#
.L262:
.LBE28:
	.loc 1 1598 0
	movq	-128(%rbp), %rax	# insn, tmp348
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.17491
	movq	-160(%rbp), %rcx	# map, tmp349
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp349,
	movq	%rax, %rdi	# D.17491,
	call	copy_rtx_and_substitute	#
	movq	%rax, -96(%rbp)	# tmp350, pattern
	.loc 1 1599 0
	movq	-96(%rbp), %rax	# pattern, tmp351
	movq	%rax, %rdi	# tmp351,
	call	emit_call_insn	#
	movq	%rax, -104(%rbp)	# tmp352, copy
	.loc 1 1601 0
	movq	-128(%rbp), %rax	# insn, tmp353
	movzbl	3(%rax), %eax	# *insn_7, tmp356
	andl	$1, %eax	#, D.17498
	movl	%eax, %edx	# D.17498, D.17498
	movq	-104(%rbp), %rax	# copy, tmp357
	movl	%edx, %ecx	# D.17498, tmp359
	andl	$1, %ecx	#, tmp359
	movzbl	3(%rax), %edx	# copy_186->jump, tmp360
	andl	$-2, %edx	#, tmp361
	orl	%ecx, %edx	# tmp359, tmp362
	movb	%dl, 3(%rax)	# tmp362, copy_186->jump
	.loc 1 1602 0
	movq	-128(%rbp), %rax	# insn, tmp363
	movzbl	3(%rax), %eax	# *insn_7, tmp366
	shrb	$2, %al	#, D.17498
	andl	$1, %eax	#, D.17498
	movq	-104(%rbp), %rdx	# copy, tmp367
	andl	$1, %eax	#, tmp369
	leal	0(,%rax,4), %ecx	#, tmp370
	movzbl	3(%rdx), %eax	# copy_186->unchanging, tmp371
	andl	$-5, %eax	#, tmp372
	orl	%ecx, %eax	# tmp370, tmp373
	movb	%al, 3(%rdx)	# tmp373, copy_186->unchanging
	.loc 1 1608 0
	movq	-128(%rbp), %rax	# insn, tmp374
	movq	64(%rax), %rax	# insn_7->fld[7].rtx, D.17491
	movq	-160(%rbp), %rcx	# map, tmp375
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp375,
	movq	%rax, %rdi	# D.17491,
	call	copy_rtx_and_substitute	#
	movq	-104(%rbp), %rdx	# copy, tmp376
	movq	%rax, 64(%rdx)	# D.17491, copy_186->fld[7].rtx
	.loc 1 1616 0
	movq	-160(%rbp), %rdx	# map, tmp377
	movq	-104(%rbp), %rax	# copy, tmp378
	movq	%rdx, %rsi	# tmp377,
	movq	%rax, %rdi	# tmp378,
	call	try_constants	#
	.loc 1 1619 0
	movl	$0, -132(%rbp)	#, i
	jmp	.L266	#
.L267:
	.loc 1 1620 0 discriminator 2
	movq	-160(%rbp), %rax	# map, tmp379
	movq	64(%rax), %rax	# map_27(D)->const_equiv_varray, D.17496
	movl	-132(%rbp), %edx	# i, tmp381
	movslq	%edx, %rdx	# tmp381, tmp380
	addq	$2, %rdx	#, tmp382
	salq	$4, %rdx	#, tmp383
	addq	%rdx, %rax	# tmp383, tmp384
	movq	$0, (%rax)	#, _192->data.const_equiv[i_6].rtx
	.loc 1 1619 0 discriminator 2
	addl	$1, -132(%rbp)	#, i
.L266:
	.loc 1 1619 0 is_stmt 0 discriminator 1
	cmpl	$52, -132(%rbp)	#, i
	jle	.L267	#,
	.loc 1 1621 0 is_stmt 1
	jmp	.L235	#
.L228:
	.loc 1 1624 0
	movq	-128(%rbp), %rax	# insn, tmp385
	movl	48(%rax), %edx	# insn_7->fld[5].rtint, D.17489
	movq	-160(%rbp), %rax	# map, tmp386
	movl	%edx, %esi	# D.17489,
	movq	%rax, %rdi	# tmp386,
	call	get_label_from_map	#
	movq	%rax, %rdi	# D.17491,
	call	emit_label	#
	movq	%rax, -104(%rbp)	# tmp387, copy
	.loc 1 1626 0
	movq	-128(%rbp), %rax	# insn, tmp388
	movq	56(%rax), %rdx	# insn_7->fld[6].rtstr, D.17499
	movq	-104(%rbp), %rax	# copy, tmp389
	movq	%rdx, 56(%rax)	# D.17499, copy_196->fld[6].rtstr
	.loc 1 1627 0
	movq	-160(%rbp), %rax	# map, tmp390
	movl	72(%rax), %eax	# map_27(D)->const_age, D.17488
	leal	1(%rax), %edx	#, D.17488
	movq	-160(%rbp), %rax	# map, tmp391
	movl	%edx, 72(%rax)	# D.17488, map_27(D)->const_age
	.loc 1 1628 0
	jmp	.L235	#
.L227:
	.loc 1 1631 0
	call	emit_barrier	#
	movq	%rax, -104(%rbp)	# tmp392, copy
	.loc 1 1632 0
	jmp	.L235	#
.L229:
	.loc 1 1635 0
	movq	-128(%rbp), %rax	# insn, tmp393
	movl	40(%rax), %eax	# insn_7->fld[4].rtint, D.17489
	cmpl	$-88, %eax	#, D.17489
	jne	.L268	#,
	.loc 1 1637 0
	movq	-128(%rbp), %rax	# insn, tmp394
	movl	48(%rax), %edx	# insn_7->fld[5].rtint, D.17489
	movq	-160(%rbp), %rax	# map, tmp395
	movl	%edx, %esi	# D.17489,
	movq	%rax, %rdi	# tmp395,
	call	get_label_from_map	#
	movq	%rax, %rdi	# D.17491,
	call	emit_label	#
	movq	%rax, -104(%rbp)	# tmp396, copy
	.loc 1 1639 0
	movq	-128(%rbp), %rax	# insn, tmp397
	movq	32(%rax), %rdx	# insn_7->fld[3].rtstr, D.17499
	movq	-104(%rbp), %rax	# copy, tmp398
	movq	%rdx, 56(%rax)	# D.17499, copy_204->fld[6].rtstr
	.loc 1 1640 0
	movq	-160(%rbp), %rax	# map, tmp399
	movl	72(%rax), %eax	# map_27(D)->const_age, D.17488
	leal	1(%rax), %edx	#, D.17488
	movq	-160(%rbp), %rax	# map, tmp400
	movl	%edx, 72(%rax)	# D.17488, map_27(D)->const_age
	.loc 1 1641 0
	jmp	.L235	#
.L268:
	.loc 1 1650 0
	movq	-128(%rbp), %rax	# insn, tmp401
	movl	40(%rax), %eax	# insn_7->fld[4].rtint, D.17489
	cmpl	$-91, %eax	#, D.17489
	je	.L269	#,
	.loc 1 1651 0
	movq	-128(%rbp), %rax	# insn, tmp402
	movl	40(%rax), %eax	# insn_7->fld[4].rtint, D.17489
	cmpl	$-87, %eax	#, D.17489
	je	.L269	#,
	.loc 1 1652 0
	movq	-128(%rbp), %rax	# insn, tmp403
	movl	40(%rax), %eax	# insn_7->fld[4].rtint, D.17489
	cmpl	$-99, %eax	#, D.17489
	je	.L269	#,
	.loc 1 1654 0
	movq	-128(%rbp), %rax	# insn, tmp404
	movl	40(%rax), %edx	# insn_7->fld[4].rtint, D.17489
	movq	-128(%rbp), %rax	# insn, tmp405
	movq	32(%rax), %rax	# insn_7->fld[3].rtstr, D.17499
	movl	%edx, %esi	# D.17489,
	movq	%rax, %rdi	# D.17499,
	call	emit_note	#
	movq	%rax, -104(%rbp)	# tmp406, copy
	.loc 1 1656 0
	cmpq	$0, -104(%rbp)	#, copy
	je	.L270	#,
	.loc 1 1657 0
	movq	-104(%rbp), %rax	# copy, tmp407
	movl	40(%rax), %eax	# copy_213->fld[4].rtint, D.17489
	cmpl	$-98, %eax	#, D.17489
	je	.L271	#,
	.loc 1 1658 0
	movq	-104(%rbp), %rax	# copy, tmp408
	movl	40(%rax), %eax	# copy_213->fld[4].rtint, D.17489
	cmpl	$-97, %eax	#, D.17489
	jne	.L270	#,
.L271:
	.loc 1 1659 0
	movq	-128(%rbp), %rax	# insn, tmp409
	movq	32(%rax), %rax	# insn_7->fld[3].rttree, D.17500
	testq	%rax, %rax	# D.17500
	je	.L270	#,
.LBB30:
	.loc 1 1666 0
	movq	-160(%rbp), %rax	# map, tmp410
	movq	24(%rax), %rax	# map_27(D)->block_map, D.17496
	.loc 1 1664 0
	movq	8(%rax), %rdx	# _217->elements_used, D.17495
	.loc 1 1665 0
	movq	-160(%rbp), %rax	# map, tmp411
	movq	24(%rax), %rax	# map_27(D)->block_map, D.17496
	leaq	32(%rax), %rsi	#, D.17501
	.loc 1 1664 0
	movq	-128(%rbp), %rax	# insn, tmp412
	movq	32(%rax), %rax	# insn_7->fld[3].rttree, D.17500
	movl	$find_block, %r8d	#,
	movl	$8, %ecx	#,
	movq	%rax, %rdi	# D.17500,
	call	bsearch	#
	movq	%rax, -40(%rbp)	# tmp413, mapped_block_p
	.loc 1 1670 0
	cmpq	$0, -40(%rbp)	#, mapped_block_p
	jne	.L272	#,
	.loc 1 1671 0
	movl	$__FUNCTION__.14134, %edx	#,
	movl	$1671, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L272:
	.loc 1 1673 0
	movq	-40(%rbp), %rax	# mapped_block_p, tmp414
	movq	(%rax), %rdx	# *mapped_block_p_222, D.17500
	movq	-104(%rbp), %rax	# copy, tmp415
	movq	%rdx, 32(%rax)	# D.17500, copy_213->fld[3].rttree
.LBE30:
	.loc 1 1660 0
	jmp	.L273	#
.L270:
	.loc 1 1675 0
	cmpq	$0, -104(%rbp)	#, copy
	je	.L273	#,
	.loc 1 1676 0
	movq	-104(%rbp), %rax	# copy, tmp416
	movl	40(%rax), %eax	# copy_213->fld[4].rtint, D.17489
	cmpl	$-79, %eax	#, D.17489
	jne	.L273	#,
	.loc 1 1678 0
	movq	-128(%rbp), %rax	# insn, tmp417
	movq	32(%rax), %rax	# insn_7->fld[3].rtx, D.17491
	movq	-160(%rbp), %rcx	# map, tmp418
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp418,
	movq	%rax, %rdi	# D.17491,
	call	copy_rtx_and_substitute	#
	movq	-104(%rbp), %rdx	# copy, tmp419
	movq	%rax, 32(%rdx)	# D.17491, copy_213->fld[3].rtx
	.loc 1 1656 0
	jmp	.L274	#
.L273:
	jmp	.L274	#
.L269:
	.loc 1 1682 0
	movq	$0, -104(%rbp)	#, copy
	.loc 1 1683 0
	jmp	.L235	#
.L274:
	jmp	.L235	#
.L222:
	.loc 1 1686 0
	movl	$__FUNCTION__.14134, %edx	#,
	movl	$1686, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L235:
	.loc 1 1689 0
	cmpq	$0, -104(%rbp)	#, copy
	je	.L275	#,
	.loc 1 1690 0
	movq	-104(%rbp), %rax	# copy, tmp420
	movzbl	3(%rax), %edx	# copy_16->integrated, tmp423
	orl	$64, %edx	#, tmp424
	movb	%dl, 3(%rax)	# tmp424, copy_16->integrated
.L275:
	.loc 1 1692 0
	movq	-160(%rbp), %rax	# map, tmp425
	movq	48(%rax), %rdx	# map_27(D)->insn_map, D.17494
	movq	-128(%rbp), %rax	# insn, tmp426
	movl	8(%rax), %eax	# insn_7->fld[0].rtint, D.17489
	cltq
	salq	$3, %rax	#, D.17495
	addq	%rax, %rdx	# D.17495, D.17494
	movq	-104(%rbp), %rax	# copy, tmp427
	movq	%rax, (%rdx)	# tmp427, *_232
.LBE24:
	.loc 1 1337 0
	movq	-128(%rbp), %rax	# insn, tmp428
	movq	24(%rax), %rax	# insn_7->fld[2].rtx, tmp429
	movq	%rax, -128(%rbp)	# tmp429, insn
.L221:
	.loc 1 1337 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, insn
	jne	.L276	#,
	.loc 1 1694 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	copy_insn_list, .-copy_insn_list
	.type	copy_insn_notes, @function
copy_insn_notes:
.LFB15:
	.loc 1 1705 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# insns, insns
	movq	%rsi, -80(%rbp)	# map, map
	movl	%edx, -84(%rbp)	# eh_region_offset, eh_region_offset
	.loc 1 1708 0
	movq	-80(%rbp), %rax	# map, tmp102
	movl	72(%rax), %eax	# map_3(D)->const_age, D.17502
	leal	1(%rax), %edx	#, D.17502
	movq	-80(%rbp), %rax	# map, tmp103
	movl	%edx, 72(%rax)	# D.17502, map_3(D)->const_age
	.loc 1 1709 0
	movq	-72(%rbp), %rax	# insns, tmp104
	movq	%rax, -40(%rbp)	# tmp104, insn
	jmp	.L278	#
.L290:
	.loc 1 1711 0
	movq	-40(%rbp), %rax	# insn, tmp105
	movzwl	(%rax), %eax	# insn_1->code, D.17503
	movzwl	%ax, %eax	# D.17503, D.17504
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17505
	cmpb	$105, %al	#, D.17505
	je	.L279	#,
	.loc 1 1712 0
	jmp	.L280	#
.L279:
	.loc 1 1714 0
	movq	-80(%rbp), %rax	# map, tmp107
	movq	48(%rax), %rdx	# map_3(D)->insn_map, D.17506
	movq	-40(%rbp), %rax	# insn, tmp108
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.17504
	cltq
	salq	$3, %rax	#, D.17507
	addq	%rdx, %rax	# D.17506, D.17506
	movq	(%rax), %rax	# *_15, tmp109
	movq	%rax, -32(%rbp)	# tmp109, new_insn
	.loc 1 1715 0
	cmpq	$0, -32(%rbp)	#, new_insn
	jne	.L281	#,
	.loc 1 1716 0
	jmp	.L280	#
.L281:
	.loc 1 1718 0
	movq	-40(%rbp), %rax	# insn, tmp110
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, D.17508
	testq	%rax, %rax	# D.17508
	je	.L282	#,
.LBB31:
	.loc 1 1720 0
	movq	-40(%rbp), %rax	# insn, tmp111
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, D.17508
	movq	-80(%rbp), %rcx	# map, tmp112
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# D.17508,
	call	copy_rtx_and_substitute	#
	movq	%rax, -48(%rbp)	# note.122, note
	.loc 1 1724 0
	movq	-80(%rbp), %rdx	# map, tmp113
	leaq	-48(%rbp), %rax	#, tmp114
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	subst_constants	#
	.loc 1 1725 0
	call	apply_change_group	#
	.loc 1 1726 0
	movq	-48(%rbp), %rdx	# note, note.123
	movq	-32(%rbp), %rax	# new_insn, tmp115
	movq	%rdx, 56(%rax)	# note.123, new_insn_16->fld[6].rtx
	.loc 1 1730 0
	jmp	.L283	#
.L286:
	.loc 1 1732 0
	movq	-48(%rbp), %rax	# note, note.124
	movq	16(%rax), %rax	# note.124_22->fld[1].rtx, tmp116
	movq	%rax, -24(%rbp)	# tmp116, next
	.loc 1 1733 0
	movq	-48(%rbp), %rax	# note, note.125
	movzbl	2(%rax), %eax	# note.125_24->mode, D.17509
	cmpb	$13, %al	#, D.17509
	jne	.L284	#,
	.loc 1 1734 0
	movq	-48(%rbp), %rdx	# note, note.126
	movq	-32(%rbp), %rax	# new_insn, tmp117
	movq	%rdx, %rsi	# note.126,
	movq	%rax, %rdi	# tmp117,
	call	remove_note	#
	jmp	.L285	#
.L284:
	.loc 1 1735 0
	movq	-48(%rbp), %rax	# note, note.127
	movzbl	2(%rax), %eax	# note.127_27->mode, D.17509
	cmpb	$23, %al	#, D.17509
	jne	.L285	#,
	.loc 1 1736 0
	movq	-48(%rbp), %rax	# note, note.128
	movq	8(%rax), %rax	# note.128_29->fld[0].rtx, D.17508
	movq	8(%rax), %rax	# _30->fld[0].rtwint, D.17510
	testq	%rax, %rax	# D.17510
	jle	.L285	#,
	.loc 1 1737 0
	movq	-48(%rbp), %rbx	# note, note.129
	movq	-48(%rbp), %rax	# note, note.130
	movq	8(%rax), %rax	# note.130_33->fld[0].rtx, D.17508
	movq	8(%rax), %rdx	# _34->fld[0].rtwint, D.17510
	movl	-84(%rbp), %eax	# eh_region_offset, tmp118
	cltq
	addq	%rdx, %rax	# D.17510, D.17510
	movq	%rax, %rsi	# D.17510,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, 8(%rbx)	# D.17508, note.129_32->fld[0].rtx
.L285:
	.loc 1 1730 0
	movq	-24(%rbp), %rax	# next, tmp119
	movq	%rax, -48(%rbp)	# tmp119, note
.L283:
	.loc 1 1730 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# note, note.131
	testq	%rax, %rax	# note.131
	jne	.L286	#,
.L282:
.LBE31:
	.loc 1 1742 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp120
	movzwl	(%rax), %eax	# insn_1->code, D.17503
	cmpw	$34, %ax	#, D.17503
	jne	.L287	#,
	.loc 1 1743 0
	movq	-40(%rbp), %rax	# insn, tmp121
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.17508
	movzwl	(%rax), %eax	# _41->code, D.17503
	cmpw	$141, %ax	#, D.17503
	jne	.L287	#,
.LBB32:
	.loc 1 1746 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L288	#
.L289:
	.loc 1 1747 0 discriminator 2
	movq	-40(%rbp), %rax	# insn, tmp122
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.17508
	movl	-52(%rbp), %edx	# i, tmp124
	movslq	%edx, %rdx	# tmp124, tmp123
	movq	8(%rax,%rdx,8), %rax	# _44->fld[i_2].rtx, D.17508
	movl	-84(%rbp), %edx	# eh_region_offset, tmp125
	movq	-80(%rbp), %rcx	# map, tmp126
	movq	%rcx, %rsi	# tmp126,
	movq	%rax, %rdi	# D.17508,
	call	copy_insn_notes	#
	.loc 1 1746 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L288:
	.loc 1 1746 0 is_stmt 0 discriminator 1
	cmpl	$2, -52(%rbp)	#, i
	jle	.L289	#,
.L287:
.LBE32:
	.loc 1 1750 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp127
	movzwl	(%rax), %eax	# insn_1->code, D.17503
	cmpw	$33, %ax	#, D.17503
	jne	.L280	#,
	.loc 1 1751 0
	movq	-40(%rbp), %rax	# insn, tmp128
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.17508
	movzwl	(%rax), %eax	# _48->code, D.17503
	cmpw	$53, %ax	#, D.17503
	jne	.L280	#,
	.loc 1 1752 0
	movq	-32(%rbp), %rax	# new_insn, tmp129
	movq	32(%rax), %rax	# new_insn_16->fld[3].rtx, D.17508
	movq	-32(%rbp), %rdx	# new_insn, tmp130
	movq	32(%rdx), %rdx	# new_insn_16->fld[3].rtx, D.17508
	movl	8(%rdx), %ecx	# _51->fld[0].rtint, D.17504
	movl	-84(%rbp), %edx	# eh_region_offset, tmp131
	addl	%ecx, %edx	# D.17504, D.17504
	movl	%edx, 8(%rax)	# D.17504, _50->fld[0].rtint
.L280:
	.loc 1 1709 0
	movq	-40(%rbp), %rax	# insn, tmp132
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp133
	movq	%rax, -40(%rbp)	# tmp133, insn
.L278:
	.loc 1 1709 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L290	#,
	.loc 1 1754 0 is_stmt 1
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	copy_insn_notes, .-copy_insn_notes
	.type	integrate_parm_decls, @function
integrate_parm_decls:
.LFB16:
	.loc 1 1764 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# args, args
	movq	%rsi, -48(%rbp)	# map, map
	movq	%rdx, -56(%rbp)	# arg_vector, arg_vector
	.loc 1 1768 0
	movq	-40(%rbp), %rax	# args, tmp64
	movq	%rax, -16(%rbp)	# tmp64, tail
	movl	$0, -28(%rbp)	#, i
	jmp	.L292	#
.L293:
.LBB33:
	.loc 1 1770 0 discriminator 2
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.132
	movq	-48(%rbp), %rax	# map, tmp65
	movq	8(%rax), %rcx	# map_7(D)->fndecl, D.17511
	movq	-16(%rbp), %rax	# tail, tmp66
	movq	%rcx, %rsi	# D.17511,
	movq	%rax, %rdi	# tmp66,
	call	copy_decl_for_inlining	#
	movq	%rax, -8(%rbp)	# tmp67, decl
	.loc 1 1773 0 discriminator 2
	movq	-56(%rbp), %rax	# arg_vector, tmp68
	movl	-28(%rbp), %edx	# i, tmp70
	movslq	%edx, %rdx	# tmp70, tmp69
	movq	8(%rax,%rdx,8), %rax	# arg_vector_10(D)->elem, D.17512
	movq	-48(%rbp), %rcx	# map, tmp71
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp71,
	movq	%rax, %rdi	# D.17512,
	call	copy_rtx_and_substitute	#
	.loc 1 1772 0 discriminator 2
	movq	%rax, -24(%rbp)	# new_decl_rtl.133, new_decl_rtl
	.loc 1 1782 0 discriminator 2
	movq	-48(%rbp), %rdx	# map, tmp72
	leaq	-24(%rbp), %rax	#, tmp73
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	subst_constants	#
	.loc 1 1783 0 discriminator 2
	call	apply_change_group	#
	.loc 1 1784 0 discriminator 2
	movq	-24(%rbp), %rdx	# new_decl_rtl, new_decl_rtl.134
	movq	-8(%rbp), %rax	# decl, tmp74
	movq	%rdx, 144(%rax)	# new_decl_rtl.134, decl_9->decl.rtl
.LBE33:
	.loc 1 1768 0 discriminator 2
	movq	-16(%rbp), %rax	# tail, tmp75
	movq	(%rax), %rax	# tail_1->common.chain, tmp76
	movq	%rax, -16(%rbp)	# tmp76, tail
	addl	$1, -28(%rbp)	#, i
.L292:
	.loc 1 1768 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, tail
	jne	.L293	#,
	.loc 1 1786 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	integrate_parm_decls, .-integrate_parm_decls
	.type	integrate_decl_tree, @function
integrate_decl_tree:
.LFB17:
	.loc 1 1799 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# let, let
	movq	%rsi, -64(%rbp)	# map, map
	.loc 1 1804 0
	movl	$4, %edi	#,
	call	make_node	#
	movq	%rax, -16(%rbp)	# tmp117, new_block
	.loc 1 1805 0
	movq	-64(%rbp), %rax	# map, tmp118
	movq	24(%rax), %rax	# map_8(D)->block_map, D.17513
	movq	8(%rax), %rdx	# _9->elements_used, D.17514
	movq	-64(%rbp), %rax	# map, tmp119
	movq	24(%rax), %rax	# map_8(D)->block_map, D.17513
	movq	(%rax), %rax	# _11->num_elements, D.17514
	cmpq	%rax, %rdx	# D.17514, D.17514
	jb	.L295	#,
	.loc 1 1805 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# map, tmp120
	movq	24(%rax), %rax	# map_8(D)->block_map, D.17513
	movq	(%rax), %rax	# _13->num_elements, D.17514
	leaq	(%rax,%rax), %rdx	#, D.17514
	movq	-64(%rbp), %rax	# map, tmp121
	movq	24(%rax), %rax	# map_8(D)->block_map, D.17513
	movq	%rdx, %rsi	# D.17514,
	movq	%rax, %rdi	# D.17513,
	call	varray_grow	#
	movq	-64(%rbp), %rdx	# map, tmp122
	movq	%rax, 24(%rdx)	# D.17513, map_8(D)->block_map
.L295:
	.loc 1 1805 0 discriminator 2
	movq	-64(%rbp), %rax	# map, tmp123
	movq	24(%rax), %rcx	# map_8(D)->block_map, D.17513
	movq	-64(%rbp), %rax	# map, tmp124
	movq	24(%rax), %rax	# map_8(D)->block_map, D.17513
	movq	8(%rax), %rdx	# _19->elements_used, D.17514
	leaq	1(%rdx), %rsi	#, D.17514
	movq	%rsi, 8(%rax)	# D.17514, _19->elements_used
	addq	$4, %rdx	#, tmp125
	movq	-16(%rbp), %rax	# new_block, tmp126
	movq	%rax, (%rcx,%rdx,8)	# tmp126, _18->data.tree
	.loc 1 1806 0 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax	# new_block, tmp130
	addq	$32, %rax	#, tmp129
	movq	%rax, -24(%rbp)	# tmp129, next
	.loc 1 1808 0 discriminator 2
	movq	-56(%rbp), %rax	# let, tmp131
	movq	32(%rax), %rax	# let_24(D)->block.vars, tmp132
	movq	%rax, -32(%rbp)	# tmp132, t
	jmp	.L296	#
.L304:
.LBB34:
	.loc 1 1812 0
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.135
	movq	-64(%rbp), %rax	# map, tmp133
	movq	8(%rax), %rcx	# map_8(D)->fndecl, D.17515
	movq	-32(%rbp), %rax	# t, tmp134
	movq	%rcx, %rsi	# D.17515,
	movq	%rax, %rdi	# tmp134,
	call	copy_decl_for_inlining	#
	movq	%rax, -8(%rbp)	# tmp135, d
	.loc 1 1814 0
	movq	-32(%rbp), %rax	# t, tmp136
	movq	144(%rax), %rax	# t_1->decl.rtl, D.17516
	testq	%rax, %rax	# D.17516
	je	.L297	#,
.LBB35:
	.loc 1 1818 0
	movq	-32(%rbp), %rax	# t, tmp137
	movq	144(%rax), %rax	# t_1->decl.rtl, D.17516
	testq	%rax, %rax	# D.17516
	je	.L298	#,
	.loc 1 1818 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t, tmp138
	movq	144(%rax), %rax	# t_1->decl.rtl, iftmp.136
	jmp	.L299	#
.L298:
	.loc 1 1818 0 discriminator 2
	movq	-32(%rbp), %rax	# t, tmp139
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	make_decl_rtl	#
	movq	-32(%rbp), %rax	# t, tmp140
	movq	144(%rax), %rax	# t_1->decl.rtl, iftmp.136
.L299:
	.loc 1 1818 0 discriminator 3
	movq	-64(%rbp), %rcx	# map, tmp141
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp141,
	movq	%rax, %rdi	# iftmp.136,
	call	copy_rtx_and_substitute	#
	movq	-8(%rbp), %rdx	# d, tmp142
	movq	%rax, 144(%rdx)	# D.17516, d_28->decl.rtl
	.loc 1 1824 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# d, tmp143
	movq	144(%rax), %rax	# d_28->decl.rtl, D.17516
	testq	%rax, %rax	# D.17516
	je	.L300	#,
	.loc 1 1824 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# d, tmp144
	movq	144(%rax), %rax	# d_28->decl.rtl, iftmp.137
	jmp	.L301	#
.L300:
	.loc 1 1824 0 discriminator 2
	movq	-8(%rbp), %rax	# d, tmp145
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# d, tmp146
	movq	144(%rax), %rax	# d_28->decl.rtl, iftmp.137
.L301:
	.loc 1 1824 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.137, r
	.loc 1 1825 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rdx	# map, tmp147
	leaq	-40(%rbp), %rax	#, tmp148
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	subst_constants	#
	.loc 1 1826 0 discriminator 3
	movq	-40(%rbp), %rdx	# r, r.138
	movq	-8(%rbp), %rax	# d, tmp149
	movq	%rdx, 144(%rax)	# r.138, d_28->decl.rtl
	.loc 1 1828 0 discriminator 3
	movq	-40(%rbp), %rax	# r, r.139
	movzwl	(%rax), %eax	# r.139_38->code, D.17517
	cmpw	$61, %ax	#, D.17517
	jne	.L302	#,
	.loc 1 1829 0
	movq	cfun(%rip), %rax	# cfun, cfun.140
	movq	24(%rax), %rax	# cfun.140_40->emit, D.17518
	movq	72(%rax), %rdx	# _41->regno_decl, D.17519
	movq	-40(%rbp), %rax	# r, r.141
	movl	8(%rax), %eax	# r.141_43->fld[0].rtuint, D.17520
	movl	%eax, %eax	# D.17520, D.17514
	salq	$3, %rax	#, D.17514
	addq	%rax, %rdx	# D.17514, D.17519
	movq	-8(%rbp), %rax	# d, tmp150
	movq	%rax, (%rdx)	# tmp150, *_47
	jmp	.L303	#
.L302:
	.loc 1 1830 0
	movq	-40(%rbp), %rax	# r, r.142
	movzwl	(%rax), %eax	# r.142_48->code, D.17517
	cmpw	$65, %ax	#, D.17517
	jne	.L303	#,
	.loc 1 1832 0
	movq	cfun(%rip), %rax	# cfun, cfun.143
	movq	24(%rax), %rax	# cfun.143_50->emit, D.17518
	movq	72(%rax), %rdx	# _51->regno_decl, D.17519
	movq	-40(%rbp), %rax	# r, r.144
	movq	8(%rax), %rax	# r.144_53->fld[0].rtx, D.17516
	movl	8(%rax), %eax	# _54->fld[0].rtuint, D.17520
	movl	%eax, %eax	# D.17520, D.17514
	salq	$3, %rax	#, D.17514
	addq	%rax, %rdx	# D.17514, D.17519
	movq	-8(%rbp), %rax	# d, tmp151
	movq	%rax, (%rdx)	# tmp151, *_58
	.loc 1 1833 0
	movq	cfun(%rip), %rax	# cfun, cfun.145
	movq	24(%rax), %rax	# cfun.145_59->emit, D.17518
	movq	72(%rax), %rdx	# _60->regno_decl, D.17519
	movq	-40(%rbp), %rax	# r, r.146
	movq	16(%rax), %rax	# r.146_62->fld[1].rtx, D.17516
	movl	8(%rax), %eax	# _63->fld[0].rtuint, D.17520
	movl	%eax, %eax	# D.17520, D.17514
	salq	$3, %rax	#, D.17514
	addq	%rax, %rdx	# D.17514, D.17519
	movq	-8(%rbp), %rax	# d, tmp152
	movq	%rax, (%rdx)	# tmp152, *_67
.L303:
	.loc 1 1836 0 discriminator 1
	call	apply_change_group	#
.L297:
.LBE35:
	.loc 1 1841 0
	movq	-24(%rbp), %rax	# next, tmp153
	movq	-8(%rbp), %rdx	# d, tmp154
	movq	%rdx, (%rax)	# tmp154, *next_3
	.loc 1 1842 0
	movq	-8(%rbp), %rax	# d, tmp155
	movq	%rax, -24(%rbp)	# tmp155, next
.LBE34:
	.loc 1 1808 0
	movq	-32(%rbp), %rax	# t, tmp156
	movq	(%rax), %rax	# t_1->common.chain, tmp157
	movq	%rax, -32(%rbp)	# tmp157, t
.L296:
	.loc 1 1808 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, t
	jne	.L304	#,
	.loc 1 1845 0 is_stmt 1
	movq	-16(%rbp), %rax	# new_block, tmp161
	addq	$40, %rax	#, tmp160
	movq	%rax, -24(%rbp)	# tmp160, next
	.loc 1 1846 0
	movq	-56(%rbp), %rax	# let, tmp162
	movq	40(%rax), %rax	# let_24(D)->block.subblocks, tmp163
	movq	%rax, -32(%rbp)	# tmp163, t
	jmp	.L305	#
.L306:
	.loc 1 1848 0 discriminator 2
	movq	-64(%rbp), %rdx	# map, tmp164
	movq	-32(%rbp), %rax	# t, tmp165
	movq	%rdx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp165,
	call	integrate_decl_tree	#
	movq	-24(%rbp), %rdx	# next, tmp166
	movq	%rax, (%rdx)	# D.17515, *next_4
	.loc 1 1849 0 discriminator 2
	movq	-24(%rbp), %rax	# next, tmp167
	movq	(%rax), %rax	# *next_4, D.17515
	movq	-16(%rbp), %rdx	# new_block, tmp168
	movq	%rdx, 48(%rax)	# tmp168, _73->block.supercontext
	.loc 1 1850 0 discriminator 2
	movq	-24(%rbp), %rax	# next, tmp169
	movq	(%rax), %rax	# *next_4, D.17515
	movq	%rax, -24(%rbp)	# D.17515, next
	.loc 1 1846 0 discriminator 2
	movq	-32(%rbp), %rax	# t, tmp170
	movq	(%rax), %rax	# t_2->common.chain, tmp171
	movq	%rax, -32(%rbp)	# tmp171, t
.L305:
	.loc 1 1846 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, t
	jne	.L306	#,
	.loc 1 1853 0 is_stmt 1
	movq	-56(%rbp), %rax	# let, tmp172
	movzbl	18(%rax), %eax	# *let_24(D), tmp175
	andl	$1, %eax	#, D.17521
	movl	%eax, %edx	# D.17521, D.17521
	movq	-16(%rbp), %rax	# new_block, tmp176
	movl	%edx, %ecx	# D.17521, tmp178
	andl	$1, %ecx	#, tmp178
	movzbl	18(%rax), %edx	#, tmp179
	andl	$-2, %edx	#, tmp180
	orl	%ecx, %edx	# tmp178, tmp181
	movb	%dl, 18(%rax)	# tmp181,
	.loc 1 1854 0
	movq	-16(%rbp), %rax	# new_block, tmp182
	movq	-56(%rbp), %rdx	# let, tmp183
	movq	%rdx, 56(%rax)	# tmp183, new_block_7->block.abstract_origin
	.loc 1 1856 0
	movq	-16(%rbp), %rax	# new_block, D.17522
	.loc 1 1857 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	integrate_decl_tree, .-integrate_decl_tree
	.globl	copy_rtx_and_substitute
	.type	copy_rtx_and_substitute, @function
copy_rtx_and_substitute:
.LFB18:
	.loc 1 1879 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$312, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -280(%rbp)	# orig, orig
	movq	%rsi, -288(%rbp)	# map, map
	movl	%edx, -292(%rbp)	# for_lhs, for_lhs
	.loc 1 1887 0
	cmpq	$0, -280(%rbp)	#, orig
	jne	.L309	#,
	.loc 1 1888 0
	movl	$0, %eax	#, D.17523
	jmp	.L310	#
.L309:
	.loc 1 1890 0
	movq	-280(%rbp), %rax	# orig, tmp478
	movzwl	(%rax), %eax	# orig_16(D)->code, D.17524
	movzwl	%ax, %eax	# D.17524, tmp479
	movl	%eax, -248(%rbp)	# tmp479, code
	.loc 1 1891 0
	movq	-280(%rbp), %rax	# orig, tmp480
	movzbl	2(%rax), %eax	# orig_16(D)->mode, D.17525
	movzbl	%al, %eax	# D.17525, tmp481
	movl	%eax, -244(%rbp)	# tmp481, mode
	.loc 1 1893 0
	movl	-248(%rbp), %eax	# code, tmp483
	subl	$36, %eax	#, tmp482
	cmpl	$34, %eax	#, tmp482
	ja	.L392	#,
	movl	%eax, %eax	# tmp482, tmp484
	movq	.L313(,%rax,8), %rax	#, tmp485
	jmp	*%rax	# tmp485
	.section	.rodata
	.align 8
	.align 4
.L313:
	.quad	.L312
	.quad	.L314
	.quad	.L392
	.quad	.L392
	.quad	.L392
	.quad	.L315
	.quad	.L392
	.quad	.L392
	.quad	.L392
	.quad	.L392
	.quad	.L392
	.quad	.L316
	.quad	.L317
	.quad	.L317
	.quad	.L318
	.quad	.L392
	.quad	.L392
	.quad	.L392
	.quad	.L319
	.quad	.L320
	.quad	.L319
	.quad	.L392
	.quad	.L321
	.quad	.L319
	.quad	.L392
	.quad	.L322
	.quad	.L392
	.quad	.L323
	.quad	.L392
	.quad	.L392
	.quad	.L324
	.quad	.L325
	.quad	.L326
	.quad	.L319
	.quad	.L327
	.text
.L322:
	.loc 1 1900 0
	movq	-280(%rbp), %rax	# orig, tmp486
	movl	8(%rax), %eax	# orig_16(D)->fld[0].rtuint, D.17526
	movl	%eax, -256(%rbp)	# D.17526, regno
	.loc 1 1901 0
	cmpl	$57, -256(%rbp)	#, regno
	jle	.L328	#,
	.loc 1 1902 0
	movq	-288(%rbp), %rax	# map, tmp487
	movl	(%rax), %eax	# map_24(D)->integrating, D.17527
	testl	%eax, %eax	# D.17527
	je	.L329	#,
	.loc 1 1903 0
	movq	-288(%rbp), %rax	# map, tmp488
	movq	8(%rax), %rax	# map_24(D)->fndecl, D.17528
	movq	160(%rax), %rax	# _26->decl.u2.f, D.17529
	movq	128(%rax), %rax	# _27->internal_arg_pointer, D.17530
	cmpq	-280(%rbp), %rax	# orig, D.17530
	jne	.L329	#,
.L328:
	.loc 1 1907 0
	movq	-288(%rbp), %rax	# map, tmp489
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp490
	movslq	%edx, %rdx	# tmp490, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_82, D.17530
	testq	%rax, %rax	# D.17530
	je	.L330	#,
	.loc 1 1908 0
	movq	-288(%rbp), %rax	# map, tmp491
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp492
	movslq	%edx, %rdx	# tmp492, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_87, D.17523
	jmp	.L310	#
.L330:
	.loc 1 1918 0
	cmpl	$54, -256(%rbp)	#, regno
	jne	.L331	#,
.LBB36:
	.loc 1 1921 0
	movq	-288(%rbp), %rax	# map, tmp493
	movq	8(%rax), %rax	# map_24(D)->fndecl, D.17528
	movq	160(%rax), %rax	# _89->decl.u2.f, D.17529
	movq	%rax, %rdi	# D.17529,
	call	get_func_frame_size	#
	movl	%eax, -252(%rbp)	# D.17536, size
	.loc 1 1924 0
	movq	-288(%rbp), %rax	# map, tmp494
	movq	8(%rax), %rax	# map_24(D)->fndecl, D.17528
	movq	160(%rax), %rax	# _93->decl.u2.f, D.17529
	movl	400(%rax), %eax	# _94->stack_alignment_needed, D.17527
	.loc 1 1923 0
	leal	7(%rax), %edx	#, tmp496
	testl	%eax, %eax	# tmp495
	cmovs	%edx, %eax	# tmp496,, tmp495
	sarl	$3, %eax	#, tmp497
	movl	%eax, -240(%rbp)	# tmp497, alignment
	.loc 1 1931 0
	cmpl	$0, -240(%rbp)	#, alignment
	je	.L332	#,
	.loc 1 1932 0
	movl	-240(%rbp), %eax	# alignment, tmp498
	movl	-252(%rbp), %edx	# size, tmp499
	addl	%edx, %eax	# tmp499, D.17527
	leal	-1(%rax), %edx	#, D.17527
	movl	-240(%rbp), %eax	# alignment, tmp500
	negl	%eax	# D.17527
	andl	%edx, %eax	# D.17527, tmp501
	movl	%eax, -252(%rbp)	# tmp501, size
.L332:
	.loc 1 1934 0
	call	start_sequence	#
	.loc 1 1935 0
	movl	-252(%rbp), %eax	# size, tmp502
	cltq
	movl	$1, %edx	#,
	movq	%rax, %rsi	# D.17536,
	movl	$51, %edi	#,
	call	assign_stack_temp	#
	movq	%rax, -200(%rbp)	# tmp503, loc
	.loc 1 1936 0
	movq	-200(%rbp), %rax	# loc, tmp504
	movq	8(%rax), %rax	# loc_102->fld[0].rtx, tmp505
	movq	%rax, -200(%rbp)	# tmp505, loc
	.loc 1 1941 0
	movl	-252(%rbp), %eax	# size, tmp506
	movslq	%eax, %rdx	# tmp506, D.17536
	movq	-200(%rbp), %rax	# loc, tmp507
	movq	%rdx, %rsi	# D.17536,
	movq	%rax, %rdi	# tmp507,
	call	plus_constant_wide	#
	movq	%rax, -200(%rbp)	# tmp508, loc
	.loc 1 1943 0
	movq	-288(%rbp), %rax	# map, tmp509
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp510
	movslq	%edx, %rdx	# tmp510, D.17532
	salq	$3, %rdx	#, D.17532
	leaq	(%rax,%rdx), %rbx	#, D.17531
	.loc 1 1944 0
	movq	-200(%rbp), %rax	# loc, tmp511
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp511,
	call	force_operand	#
	movq	%rax, %rdx	#, D.17530
	movl	target_flags(%rip), %eax	# target_flags, target_flags.148
	andl	$33554432, %eax	#, D.17527
	testl	%eax, %eax	# D.17527
	je	.L333	#,
	.loc 1 1944 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.147
	jmp	.L334	#
.L333:
	.loc 1 1944 0 discriminator 2
	movl	$4, %eax	#, iftmp.147
.L334:
	.loc 1 1943 0 is_stmt 1
	movq	%rdx, %rsi	# D.17530,
	movl	%eax, %edi	# iftmp.147,
	call	force_reg	#
	movq	%rax, -192(%rbp)	# tmp512, temp
	movq	-192(%rbp), %rax	# temp, tmp513
	movq	%rax, (%rbx)	# tmp513, *_109
	.loc 1 1947 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.150
	andl	$33554432, %eax	#, D.17527
	testl	%eax, %eax	# D.17527
	je	.L335	#,
	.loc 1 1947 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.149
	jmp	.L336	#
.L335:
	.loc 1 1947 0 discriminator 2
	movl	$32, %eax	#, iftmp.149
.L336:
	.loc 1 1947 0 discriminator 3
	movq	-288(%rbp), %rdx	# map, tmp514
	movq	32(%rdx), %rdx	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %ecx	# regno, tmp515
	movslq	%ecx, %rcx	# tmp515, D.17532
	salq	$3, %rcx	#, D.17532
	addq	%rcx, %rdx	# D.17532, D.17531
	movq	(%rdx), %rdx	# *_123, D.17530
	movl	%eax, %esi	# iftmp.149,
	movq	%rdx, %rdi	# D.17530,
	call	mark_reg_pointer	#
.LBB37:
	.loc 1 1950 0 is_stmt 1 discriminator 3
	movq	-192(%rbp), %rax	# temp, tmp516
	movl	8(%rax), %eax	# temp_115->fld[0].rtuint, D.17526
	movl	%eax, %edx	# D.17526, D.17532
	movq	-288(%rbp), %rax	# map, tmp517
	movq	64(%rax), %rax	# map_24(D)->const_equiv_varray, D.17537
	movq	(%rax), %rax	# _127->num_elements, D.17532
	cmpq	%rax, %rdx	# D.17532, D.17532
	jb	.L337	#,
.LBB38:
	.loc 1 1950 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# map, tmp518
	movq	64(%rax), %rdx	# map_24(D)->const_equiv_varray, D.17537
	movq	global_const_equiv_varray(%rip), %rax	# global_const_equiv_varray, global_const_equiv_varray.151
	cmpq	%rax, %rdx	# global_const_equiv_varray.151, D.17537
	sete	%al	#, D.17538
	movzbl	%al, %eax	# D.17538, tmp519
	movl	%eax, -236(%rbp)	# tmp519, is_global
	movq	-192(%rbp), %rax	# temp, tmp520
	movl	8(%rax), %eax	# temp_115->fld[0].rtuint, D.17526
	addl	$1, %eax	#, D.17526
	movl	%eax, %edx	# D.17526, D.17532
	movq	-288(%rbp), %rax	# map, tmp521
	movq	64(%rax), %rax	# map_24(D)->const_equiv_varray, D.17537
	movq	%rdx, %rsi	# D.17532,
	movq	%rax, %rdi	# D.17537,
	call	varray_grow	#
	movq	-288(%rbp), %rdx	# map, tmp522
	movq	%rax, 64(%rdx)	# D.17537, map_24(D)->const_equiv_varray
	cmpl	$0, -236(%rbp)	#, is_global
	je	.L337	#,
	movq	-288(%rbp), %rax	# map, tmp523
	movq	64(%rax), %rax	# map_24(D)->const_equiv_varray, global_const_equiv_varray.152
	movq	%rax, global_const_equiv_varray(%rip)	# global_const_equiv_varray.152, global_const_equiv_varray
.L337:
.LBE38:
	.loc 1 1950 0 discriminator 2
	movq	-288(%rbp), %rax	# map, tmp524
	movq	64(%rax), %rdx	# map_24(D)->const_equiv_varray, D.17537
	movq	-192(%rbp), %rax	# temp, tmp525
	movl	8(%rax), %eax	# temp_115->fld[0].rtuint, D.17526
	movl	%eax, %eax	# D.17526, tmp526
	addq	$2, %rax	#, tmp527
	salq	$4, %rax	#, tmp528
	addq	%rdx, %rax	# D.17537, tmp529
	movq	%rax, -184(%rbp)	# tmp529, p
	movq	-184(%rbp), %rax	# p, tmp530
	movq	-200(%rbp), %rdx	# loc, tmp531
	movq	%rdx, (%rax)	# tmp531, p_141->rtx
	movq	-184(%rbp), %rax	# p, tmp532
	movl	$-1, 8(%rax)	#, p_141->age
.LBE37:
	.loc 1 1952 0 is_stmt 1 discriminator 2
	call	gen_sequence	#
	movq	%rax, -176(%rbp)	# tmp533, seq
	.loc 1 1953 0 discriminator 2
	call	end_sequence	#
	.loc 1 1954 0 discriminator 2
	movq	-288(%rbp), %rax	# map, tmp534
	movq	16(%rax), %rdx	# map_24(D)->insns_at_start, D.17530
	movq	-176(%rbp), %rax	# seq, tmp535
	movq	%rdx, %rsi	# D.17530,
	movq	%rax, %rdi	# tmp535,
	call	emit_insn_after	#
	.loc 1 1955 0 discriminator 2
	movq	-192(%rbp), %rax	# temp, D.17523
	jmp	.L310	#
.L331:
.LBE36:
	.loc 1 1957 0
	cmpl	$53, -256(%rbp)	#, regno
	je	.L338	#,
	.loc 1 1958 0
	movq	-288(%rbp), %rax	# map, tmp536
	movl	(%rax), %eax	# map_24(D)->integrating, D.17527
	testl	%eax, %eax	# D.17527
	je	.L339	#,
	.loc 1 1959 0
	movq	-288(%rbp), %rax	# map, tmp537
	movq	8(%rax), %rax	# map_24(D)->fndecl, D.17528
	movq	160(%rax), %rax	# _146->decl.u2.f, D.17529
	movq	128(%rax), %rax	# _147->internal_arg_pointer, D.17530
	cmpq	-280(%rbp), %rax	# orig, D.17530
	jne	.L339	#,
.L338:
.LBB39:
	.loc 1 1965 0
	movq	-288(%rbp), %rax	# map, tmp538
	movq	8(%rax), %rax	# map_24(D)->fndecl, D.17528
	movq	160(%rax), %rax	# _166->decl.u2.f, D.17529
	movl	68(%rax), %eax	# _167->args_size, tmp539
	movl	%eax, -232(%rbp)	# tmp539, size
	.loc 1 1967 0
	call	start_sequence	#
	.loc 1 1968 0
	movl	-232(%rbp), %eax	# size, tmp540
	cltq
	movl	$1, %edx	#,
	movq	%rax, %rsi	# D.17536,
	movl	$51, %edi	#,
	call	assign_stack_temp	#
	movq	%rax, -168(%rbp)	# tmp541, loc
	.loc 1 1969 0
	movq	-168(%rbp), %rax	# loc, tmp542
	movq	8(%rax), %rax	# loc_170->fld[0].rtx, tmp543
	movq	%rax, -168(%rbp)	# tmp543, loc
	.loc 1 1976 0
	movq	-288(%rbp), %rax	# map, tmp544
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp545
	movslq	%edx, %rdx	# tmp545, D.17532
	salq	$3, %rdx	#, D.17532
	leaq	(%rax,%rdx), %rbx	#, D.17531
	.loc 1 1977 0
	movq	-168(%rbp), %rax	# loc, tmp546
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp546,
	call	force_operand	#
	movq	%rax, %rdx	#, D.17530
	movl	target_flags(%rip), %eax	# target_flags, target_flags.154
	andl	$33554432, %eax	#, D.17527
	testl	%eax, %eax	# D.17527
	je	.L340	#,
	.loc 1 1977 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.153
	jmp	.L341	#
.L340:
	.loc 1 1977 0 discriminator 2
	movl	$4, %eax	#, iftmp.153
.L341:
	.loc 1 1976 0 is_stmt 1
	movq	%rdx, %rsi	# D.17530,
	movl	%eax, %edi	# iftmp.153,
	call	force_reg	#
	movq	%rax, -192(%rbp)	# tmp547, temp
	movq	-192(%rbp), %rax	# temp, tmp548
	movq	%rax, (%rbx)	# tmp548, *_175
	.loc 1 1980 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.156
	andl	$33554432, %eax	#, D.17527
	testl	%eax, %eax	# D.17527
	je	.L342	#,
	.loc 1 1980 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.155
	jmp	.L343	#
.L342:
	.loc 1 1980 0 discriminator 2
	movl	$32, %eax	#, iftmp.155
.L343:
	.loc 1 1980 0 discriminator 3
	movq	-288(%rbp), %rdx	# map, tmp549
	movq	32(%rdx), %rdx	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %ecx	# regno, tmp550
	movslq	%ecx, %rcx	# tmp550, D.17532
	salq	$3, %rcx	#, D.17532
	addq	%rcx, %rdx	# D.17532, D.17531
	movq	(%rdx), %rdx	# *_189, D.17530
	movl	%eax, %esi	# iftmp.155,
	movq	%rdx, %rdi	# D.17530,
	call	mark_reg_pointer	#
.LBB40:
	.loc 1 1983 0 is_stmt 1 discriminator 3
	movq	-192(%rbp), %rax	# temp, tmp551
	movl	8(%rax), %eax	# temp_181->fld[0].rtuint, D.17526
	movl	%eax, %edx	# D.17526, D.17532
	movq	-288(%rbp), %rax	# map, tmp552
	movq	64(%rax), %rax	# map_24(D)->const_equiv_varray, D.17537
	movq	(%rax), %rax	# _193->num_elements, D.17532
	cmpq	%rax, %rdx	# D.17532, D.17532
	jb	.L344	#,
.LBB41:
	.loc 1 1983 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# map, tmp553
	movq	64(%rax), %rdx	# map_24(D)->const_equiv_varray, D.17537
	movq	global_const_equiv_varray(%rip), %rax	# global_const_equiv_varray, global_const_equiv_varray.157
	cmpq	%rax, %rdx	# global_const_equiv_varray.157, D.17537
	sete	%al	#, D.17538
	movzbl	%al, %eax	# D.17538, tmp554
	movl	%eax, -228(%rbp)	# tmp554, is_global
	movq	-192(%rbp), %rax	# temp, tmp555
	movl	8(%rax), %eax	# temp_181->fld[0].rtuint, D.17526
	addl	$1, %eax	#, D.17526
	movl	%eax, %edx	# D.17526, D.17532
	movq	-288(%rbp), %rax	# map, tmp556
	movq	64(%rax), %rax	# map_24(D)->const_equiv_varray, D.17537
	movq	%rdx, %rsi	# D.17532,
	movq	%rax, %rdi	# D.17537,
	call	varray_grow	#
	movq	-288(%rbp), %rdx	# map, tmp557
	movq	%rax, 64(%rdx)	# D.17537, map_24(D)->const_equiv_varray
	cmpl	$0, -228(%rbp)	#, is_global
	je	.L344	#,
	movq	-288(%rbp), %rax	# map, tmp558
	movq	64(%rax), %rax	# map_24(D)->const_equiv_varray, global_const_equiv_varray.158
	movq	%rax, global_const_equiv_varray(%rip)	# global_const_equiv_varray.158, global_const_equiv_varray
.L344:
.LBE41:
	.loc 1 1983 0 discriminator 2
	movq	-288(%rbp), %rax	# map, tmp559
	movq	64(%rax), %rdx	# map_24(D)->const_equiv_varray, D.17537
	movq	-192(%rbp), %rax	# temp, tmp560
	movl	8(%rax), %eax	# temp_181->fld[0].rtuint, D.17526
	movl	%eax, %eax	# D.17526, tmp561
	addq	$2, %rax	#, tmp562
	salq	$4, %rax	#, tmp563
	addq	%rdx, %rax	# D.17537, tmp564
	movq	%rax, -160(%rbp)	# tmp564, p
	movq	-160(%rbp), %rax	# p, tmp565
	movq	-168(%rbp), %rdx	# loc, tmp566
	movq	%rdx, (%rax)	# tmp566, p_207->rtx
	movq	-160(%rbp), %rax	# p, tmp567
	movl	$-1, 8(%rax)	#, p_207->age
.LBE40:
	.loc 1 1985 0 is_stmt 1 discriminator 2
	call	gen_sequence	#
	movq	%rax, -152(%rbp)	# tmp568, seq
	.loc 1 1986 0 discriminator 2
	call	end_sequence	#
	.loc 1 1987 0 discriminator 2
	movq	-288(%rbp), %rax	# map, tmp569
	movq	16(%rax), %rdx	# map_24(D)->insns_at_start, D.17530
	movq	-152(%rbp), %rax	# seq, tmp570
	movq	%rdx, %rsi	# D.17530,
	movq	%rax, %rdi	# tmp570,
	call	emit_insn_after	#
	.loc 1 1988 0 discriminator 2
	movq	-192(%rbp), %rax	# temp, D.17523
	jmp	.L310	#
.L339:
.LBE39:
	.loc 1 1990 0
	movq	-280(%rbp), %rax	# orig, tmp571
	movzbl	3(%rax), %eax	# *orig_16(D), D.17525
	andl	$64, %eax	#, D.17525
	testb	%al, %al	# D.17525
	je	.L345	#,
	.loc 1 1995 0
	movq	-288(%rbp), %rax	# map, tmp572
	movq	80(%rax), %rax	# map_24(D)->inline_target, D.17530
	testq	%rax, %rax	# D.17530
	jne	.L346	#,
	.loc 1 1997 0
	movl	rtx_equal_function_value_matters(%rip), %eax	# rtx_equal_function_value_matters, rtx_equal_function_value_matters.159
	testl	%eax, %eax	# rtx_equal_function_value_matters.159
	je	.L347	#,
	.loc 1 2002 0
	movq	-280(%rbp), %rax	# orig, tmp573
	movzbl	2(%rax), %eax	# orig_16(D)->mode, D.17525
	movzbl	%al, %eax	# D.17525, D.17539
	movl	-256(%rbp), %edx	# regno, tmp574
	movl	%edx, %esi	# tmp574,
	movl	%eax, %edi	# D.17539,
	call	gen_rtx_REG	#
	jmp	.L310	#
.L347:
	.loc 1 2006 0
	movq	-280(%rbp), %rax	# orig, D.17523
	jmp	.L310	#
.L346:
	.loc 1 2008 0
	movq	-288(%rbp), %rax	# map, tmp575
	movq	80(%rax), %rax	# map_24(D)->inline_target, D.17530
	movzbl	2(%rax), %eax	# _157->mode, D.17525
	cmpb	$51, %al	#, D.17525
	je	.L348	#,
	.loc 1 2009 0
	movq	-288(%rbp), %rax	# map, tmp576
	movq	80(%rax), %rax	# map_24(D)->inline_target, D.17530
	movzbl	2(%rax), %eax	# _159->mode, D.17525
	movzbl	%al, %eax	# D.17525, D.17526
	cmpl	-244(%rbp), %eax	# mode, D.17526
	je	.L348	#,
	.loc 1 2010 0
	movq	-288(%rbp), %rax	# map, tmp577
	movq	80(%rax), %rdx	# map_24(D)->inline_target, D.17530
	movl	-244(%rbp), %eax	# mode, tmp578
	movq	%rdx, %rsi	# D.17530,
	movl	%eax, %edi	# tmp578,
	call	gen_lowpart	#
	jmp	.L310	#
.L348:
	.loc 1 2012 0
	movq	-288(%rbp), %rax	# map, tmp579
	movq	80(%rax), %rax	# map_24(D)->inline_target, D.17523
	jmp	.L310	#
.L345:
	.loc 1 2031 0
	movq	-280(%rbp), %rax	# orig, D.17523
	jmp	.L310	#
.L329:
	.loc 1 2035 0
	movq	-288(%rbp), %rax	# map, tmp580
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp581
	movslq	%edx, %rdx	# tmp581, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_32, D.17530
	testq	%rax, %rax	# D.17530
	jne	.L349	#,
	.loc 1 2037 0
	movq	-288(%rbp), %rax	# map, tmp582
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp583
	movslq	%edx, %rdx	# tmp583, D.17532
	salq	$3, %rdx	#, D.17532
	leaq	(%rax,%rdx), %rbx	#, D.17531
	movl	-244(%rbp), %eax	# mode, tmp584
	movl	%eax, %edi	# tmp584,
	call	gen_reg_rtx	#
	movq	%rax, (%rbx)	# D.17530, *_37
	.loc 1 2038 0
	movq	-288(%rbp), %rax	# map, tmp585
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp586
	movslq	%edx, %rdx	# tmp586, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rdx	# *_42, D.17530
	movq	-280(%rbp), %rax	# orig, tmp587
	movzbl	3(%rax), %eax	# *orig_16(D), tmp590
	shrb	$3, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	andl	$1, %eax	#, tmp592
	leal	0(,%rax,8), %ecx	#, tmp593
	movzbl	3(%rdx), %eax	# _43->volatil, tmp594
	andl	$-9, %eax	#, tmp595
	orl	%ecx, %eax	# tmp593, tmp596
	movb	%al, 3(%rdx)	# tmp596, _43->volatil
	.loc 1 2039 0
	movq	-288(%rbp), %rax	# map, tmp597
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp598
	movslq	%edx, %rdx	# tmp598, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rdx	# *_48, D.17530
	movq	-280(%rbp), %rax	# orig, tmp599
	movzbl	3(%rax), %eax	# *orig_16(D), tmp602
	shrb	$4, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	andl	$1, %eax	#, tmp604
	sall	$4, %eax	#, tmp605
	movl	%eax, %ecx	# tmp605, tmp605
	movzbl	3(%rdx), %eax	# _49->in_struct, tmp606
	andl	$-17, %eax	#, tmp607
	orl	%ecx, %eax	# tmp605, tmp608
	movb	%al, 3(%rdx)	# tmp608, _49->in_struct
	.loc 1 2040 0
	movq	-288(%rbp), %rax	# map, tmp609
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp610
	movslq	%edx, %rdx	# tmp610, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rdx	# *_54, D.17530
	movq	-280(%rbp), %rax	# orig, tmp611
	movzbl	3(%rax), %eax	# *orig_16(D), tmp614
	shrb	$2, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	andl	$1, %eax	#, tmp616
	leal	0(,%rax,4), %ecx	#, tmp617
	movzbl	3(%rdx), %eax	# _55->unchanging, tmp618
	andl	$-5, %eax	#, tmp619
	orl	%ecx, %eax	# tmp617, tmp620
	movb	%al, 3(%rdx)	# tmp620, _55->unchanging
	.loc 1 2043 0
	movq	-288(%rbp), %rax	# map, tmp621
	movq	128(%rax), %rax	# map_24(D)->x_regno_reg_rtx, D.17531
	movl	-256(%rbp), %edx	# regno, tmp622
	movslq	%edx, %rdx	# tmp622, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_60, D.17530
	movzbl	3(%rax), %eax	# *_61, D.17525
	andl	$-128, %eax	#, D.17525
	testb	%al, %al	# D.17525
	je	.L349	#,
	.loc 1 2045 0
	movq	-288(%rbp), %rax	# map, tmp623
	movq	120(%rax), %rdx	# map_24(D)->regno_pointer_align, D.17534
	movl	-256(%rbp), %eax	# regno, tmp624
	cltq
	addq	%rdx, %rax	# D.17534, D.17534
	movzbl	(%rax), %eax	# *_66, D.17525
	.loc 1 2044 0
	movzbl	%al, %edx	# D.17525, D.17527
	movq	-288(%rbp), %rax	# map, tmp625
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %ecx	# regno, tmp626
	movslq	%ecx, %rcx	# tmp626, D.17532
	salq	$3, %rcx	#, D.17532
	addq	%rcx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_72, D.17530
	movl	%edx, %esi	# D.17527,
	movq	%rax, %rdi	# D.17530,
	call	mark_reg_pointer	#
.L349:
	.loc 1 2047 0
	movq	-288(%rbp), %rax	# map, tmp627
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp628
	movslq	%edx, %rdx	# tmp628, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_77, D.17523
	jmp	.L310	#
.L323:
	.loc 1 2050 0
	movq	-280(%rbp), %rax	# orig, tmp629
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movl	-292(%rbp), %edx	# for_lhs, tmp630
	movq	-288(%rbp), %rcx	# map, tmp631
	movq	%rcx, %rsi	# tmp631,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movq	%rax, -216(%rbp)	# tmp632, copy
	.loc 1 2051 0
	movq	-280(%rbp), %rax	# orig, tmp633
	movl	16(%rax), %ecx	# orig_16(D)->fld[1].rtuint, D.17526
	.loc 1 2052 0
	movq	-280(%rbp), %rax	# orig, tmp634
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movzbl	2(%rax), %eax	# _215->mode, D.17525
	.loc 1 2051 0
	movzbl	%al, %edx	# D.17525, D.17539
	movq	-280(%rbp), %rax	# orig, tmp635
	movzbl	2(%rax), %eax	# orig_16(D)->mode, D.17525
	movzbl	%al, %eax	# D.17525, D.17539
	movq	-216(%rbp), %rsi	# copy, tmp636
	movl	%eax, %edi	# D.17539,
	call	simplify_gen_subreg	#
	jmp	.L310	#
.L327:
	.loc 1 2056 0
	movq	-280(%rbp), %rax	# orig, tmp637
	movq	24(%rax), %rbx	# orig_16(D)->fld[2].rttree, D.17528
	movq	-280(%rbp), %rax	# orig, tmp638
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movl	-292(%rbp), %edx	# for_lhs, tmp639
	movq	-288(%rbp), %rcx	# map, tmp640
	movq	%rcx, %rsi	# tmp640,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rdx	#, D.17530
	movl	-244(%rbp), %eax	# mode, tmp641
	movq	%rbx, %r8	# D.17528,
	movl	$0, %ecx	#,
	movl	%eax, %esi	# tmp641,
	movl	$70, %edi	#,
	call	gen_rtx_fmt_eit	#
	movq	%rax, -216(%rbp)	# tmp642, copy
	.loc 1 2060 0
	movq	-280(%rbp), %rax	# orig, tmp643
	movl	16(%rax), %eax	# orig_16(D)->fld[1].rtuint, D.17526
	movl	%eax, -256(%rbp)	# D.17526, regno
	.loc 1 2061 0
	movq	-288(%rbp), %rax	# map, tmp644
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp645
	movslq	%edx, %rdx	# tmp645, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_230, D.17530
	testq	%rax, %rax	# D.17530
	je	.L350	#,
	.loc 1 2062 0
	movq	-288(%rbp), %rax	# map, tmp646
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp647
	movslq	%edx, %rdx	# tmp647, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_235, D.17530
	movl	8(%rax), %eax	# _236->fld[0].rtuint, D.17526
	movl	%eax, -256(%rbp)	# D.17526, regno
	jmp	.L351	#
.L350:
	.loc 1 2063 0
	cmpl	$57, -256(%rbp)	#, regno
	jle	.L351	#,
	.loc 1 2065 0
	movq	-280(%rbp), %rax	# orig, tmp648
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, tmp649
	movq	%rax, -192(%rbp)	# tmp649, temp
	.loc 1 2066 0
	movq	-288(%rbp), %rax	# map, tmp650
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp651
	movslq	%edx, %rdx	# tmp651, D.17532
	salq	$3, %rdx	#, D.17532
	leaq	(%rax,%rdx), %rbx	#, D.17531
	movq	-192(%rbp), %rax	# temp, tmp652
	movzbl	2(%rax), %eax	# temp_239->mode, D.17525
	movzbl	%al, %eax	# D.17525, D.17539
	movl	%eax, %edi	# D.17539,
	call	gen_reg_rtx	#
	movq	%rax, (%rbx)	# D.17530, *_243
	.loc 1 2067 0
	movq	-288(%rbp), %rax	# map, tmp653
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp654
	movslq	%edx, %rdx	# tmp654, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rdx	# *_250, D.17530
	movq	-192(%rbp), %rax	# temp, tmp655
	movzbl	3(%rax), %eax	# *temp_239, tmp658
	shrb	$3, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	andl	$1, %eax	#, tmp660
	leal	0(,%rax,8), %ecx	#, tmp661
	movzbl	3(%rdx), %eax	# _251->volatil, tmp662
	andl	$-9, %eax	#, tmp663
	orl	%ecx, %eax	# tmp661, tmp664
	movb	%al, 3(%rdx)	# tmp664, _251->volatil
	.loc 1 2068 0
	movq	-288(%rbp), %rax	# map, tmp665
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp666
	movslq	%edx, %rdx	# tmp666, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rdx	# *_256, D.17530
	movq	-192(%rbp), %rax	# temp, tmp667
	movzbl	3(%rax), %eax	# *temp_239, tmp670
	shrb	$4, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	andl	$1, %eax	#, tmp672
	sall	$4, %eax	#, tmp673
	movl	%eax, %ecx	# tmp673, tmp673
	movzbl	3(%rdx), %eax	# _257->in_struct, tmp674
	andl	$-17, %eax	#, tmp675
	orl	%ecx, %eax	# tmp673, tmp676
	movb	%al, 3(%rdx)	# tmp676, _257->in_struct
	.loc 1 2069 0
	movq	-288(%rbp), %rax	# map, tmp677
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp678
	movslq	%edx, %rdx	# tmp678, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rdx	# *_262, D.17530
	movq	-192(%rbp), %rax	# temp, tmp679
	movzbl	3(%rax), %eax	# *temp_239, tmp682
	shrb	$2, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	andl	$1, %eax	#, tmp684
	leal	0(,%rax,4), %ecx	#, tmp685
	movzbl	3(%rdx), %eax	# _263->unchanging, tmp686
	andl	$-5, %eax	#, tmp687
	orl	%ecx, %eax	# tmp685, tmp688
	movb	%al, 3(%rdx)	# tmp688, _263->unchanging
	.loc 1 2072 0
	movq	-288(%rbp), %rax	# map, tmp689
	movq	128(%rax), %rax	# map_24(D)->x_regno_reg_rtx, D.17531
	movl	-256(%rbp), %edx	# regno, tmp690
	movslq	%edx, %rdx	# tmp690, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_268, D.17530
	movzbl	3(%rax), %eax	# *_269, D.17525
	andl	$-128, %eax	#, D.17525
	testb	%al, %al	# D.17525
	je	.L352	#,
	.loc 1 2074 0
	movq	-288(%rbp), %rax	# map, tmp691
	movq	120(%rax), %rdx	# map_24(D)->regno_pointer_align, D.17534
	movl	-256(%rbp), %eax	# regno, tmp692
	cltq
	addq	%rdx, %rax	# D.17534, D.17534
	movzbl	(%rax), %eax	# *_274, D.17525
	.loc 1 2073 0
	movzbl	%al, %edx	# D.17525, D.17527
	movq	-288(%rbp), %rax	# map, tmp693
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %ecx	# regno, tmp694
	movslq	%ecx, %rcx	# tmp694, D.17532
	salq	$3, %rcx	#, D.17532
	addq	%rcx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_280, D.17530
	movl	%edx, %esi	# D.17527,
	movq	%rax, %rdi	# D.17530,
	call	mark_reg_pointer	#
.L352:
	.loc 1 2075 0
	movq	-288(%rbp), %rax	# map, tmp695
	movq	32(%rax), %rax	# map_24(D)->reg_map, D.17531
	movl	-256(%rbp), %edx	# regno, tmp696
	movslq	%edx, %rdx	# tmp696, D.17532
	salq	$3, %rdx	#, D.17532
	addq	%rdx, %rax	# D.17532, D.17531
	movq	(%rax), %rax	# *_285, D.17530
	movl	8(%rax), %eax	# _286->fld[0].rtuint, D.17526
	movl	%eax, -256(%rbp)	# D.17526, regno
.L351:
	.loc 1 2077 0
	movl	-256(%rbp), %edx	# regno, regno.160
	movq	-216(%rbp), %rax	# copy, tmp697
	movl	%edx, 16(%rax)	# regno.160, copy_224->fld[1].rtuint
	.loc 1 2078 0
	movq	-216(%rbp), %rax	# copy, D.17523
	jmp	.L310	#
.L317:
	.loc 1 2086 0
	cmpl	$49, -248(%rbp)	#, code
	sete	%al	#, D.17538
	movzbl	%al, %edx	# D.17538, D.17527
	movq	-280(%rbp), %rax	# orig, tmp698
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movq	-288(%rbp), %rcx	# map, tmp699
	movq	%rcx, %rsi	# tmp699,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movq	%rax, -216(%rbp)	# tmp700, copy
	.loc 1 2087 0
	movq	-216(%rbp), %rax	# copy, tmp701
	movzwl	(%rax), %eax	# copy_294->code, D.17524
	cmpw	$63, %ax	#, D.17524
	jne	.L353	#,
	.loc 1 2087 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# orig, tmp702
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movzwl	(%rax), %eax	# _296->code, D.17524
	cmpw	$63, %ax	#, D.17524
	je	.L353	#,
	.loc 1 2088 0 is_stmt 1
	movq	-216(%rbp), %rax	# copy, tmp703
	movq	8(%rax), %rax	# copy_294->fld[0].rtx, tmp704
	movq	%rax, -216(%rbp)	# tmp704, copy
.L353:
	.loc 1 2089 0
	movq	-216(%rbp), %rdx	# copy, tmp705
	movl	-248(%rbp), %eax	# code, tmp706
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp706,
	call	gen_rtx_fmt_e	#
	jmp	.L310	#
.L314:
	.loc 1 2094 0
	movq	-280(%rbp), %rax	# orig, tmp707
	movl	40(%rax), %eax	# orig_16(D)->fld[4].rtint, D.17527
	cmpl	$-88, %eax	#, D.17527
	je	.L312	#,
	.loc 1 2095 0
	jmp	.L354	#
.L312:
	.loc 1 2099 0
	movq	-280(%rbp), %rax	# orig, tmp708
	movl	48(%rax), %edx	# orig_16(D)->fld[5].rtint, D.17527
	movq	-288(%rbp), %rax	# map, tmp709
	movl	%edx, %esi	# D.17527,
	movq	%rax, %rdi	# tmp709,
	call	get_label_from_map	#
	movq	%rax, %rdx	#, D.17530
	.loc 1 2100 0
	movq	-280(%rbp), %rax	# orig, tmp710
	movzbl	3(%rax), %eax	# *orig_16(D), tmp713
	shrb	$4, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	andl	$1, %eax	#, tmp715
	sall	$4, %eax	#, tmp716
	movl	%eax, %ecx	# tmp716, tmp716
	movzbl	3(%rdx), %eax	# _302->in_struct, tmp717
	andl	$-17, %eax	#, tmp718
	orl	%ecx, %eax	# tmp716, tmp719
	movb	%al, 3(%rdx)	# tmp719, _302->in_struct
	.loc 1 2101 0
	movq	-280(%rbp), %rax	# orig, tmp720
	movl	48(%rax), %edx	# orig_16(D)->fld[5].rtint, D.17527
	movq	-288(%rbp), %rax	# map, tmp721
	movl	%edx, %esi	# D.17527,
	movq	%rax, %rdi	# tmp721,
	call	get_label_from_map	#
	jmp	.L310	#
.L325:
	.loc 1 2105 0
	movq	-280(%rbp), %rax	# orig, tmp722
	movzbl	3(%rax), %eax	# *orig_16(D), D.17525
	andl	$8, %eax	#, D.17525
	testb	%al, %al	# D.17525
	je	.L355	#,
	.loc 1 2105 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# orig, tmp723
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, iftmp.161
	jmp	.L356	#
.L355:
	.loc 1 2105 0 discriminator 2
	movq	-280(%rbp), %rax	# orig, tmp724
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movl	48(%rax), %edx	# _309->fld[5].rtint, D.17527
	movq	-288(%rbp), %rax	# map, tmp725
	movl	%edx, %esi	# D.17527,
	movq	%rax, %rdi	# tmp725,
	call	get_label_from_map	#
.L356:
	.loc 1 2105 0 discriminator 3
	movl	-244(%rbp), %ecx	# mode, tmp726
	movq	%rax, %rdx	# iftmp.161,
	movl	%ecx, %esi	# tmp726,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, -216(%rbp)	# tmp727, copy
	.loc 1 2110 0 is_stmt 1 discriminator 3
	movq	-280(%rbp), %rax	# orig, tmp728
	movzbl	3(%rax), %eax	# *orig_16(D), tmp731
	shrb	$4, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-216(%rbp), %rdx	# copy, tmp732
	andl	$1, %eax	#, tmp734
	sall	$4, %eax	#, tmp735
	movl	%eax, %ecx	# tmp735, tmp735
	movzbl	3(%rdx), %eax	# copy_312->in_struct, tmp736
	andl	$-17, %eax	#, tmp737
	orl	%ecx, %eax	# tmp735, tmp738
	movb	%al, 3(%rdx)	# tmp738, copy_312->in_struct
	.loc 1 2116 0 discriminator 3
	movq	-280(%rbp), %rax	# orig, tmp739
	movzbl	3(%rax), %eax	# *orig_16(D), D.17525
	andl	$8, %eax	#, D.17525
	.loc 1 2117 0 discriminator 3
	testb	%al, %al	# D.17525
	je	.L357	#,
	.loc 1 2117 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# copy, tmp740
	movq	8(%rax), %rax	# copy_312->fld[0].rtx, D.17530
	movl	48(%rax), %ebx	# _316->fld[5].rtint, D.17527
	call	get_first_label_num	#
	cmpl	%eax, %ebx	# D.17527, D.17527
	jl	.L358	#,
	.loc 1 2118 0 is_stmt 1 discriminator 4
	movq	-216(%rbp), %rax	# copy, tmp741
	movq	8(%rax), %rax	# copy_312->fld[0].rtx, D.17530
	movl	48(%rax), %ebx	# _319->fld[5].rtint, D.17527
	call	max_label_num	#
	.loc 1 2117 0 discriminator 4
	cmpl	%eax, %ebx	# D.17527, D.17527
	jl	.L357	#,
.L358:
	.loc 1 2117 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.162
	jmp	.L359	#
.L357:
	.loc 1 2117 0 discriminator 2
	movl	$0, %eax	#, iftmp.162
.L359:
	.loc 1 2116 0 is_stmt 1
	andl	$1, %eax	#, D.17533
	movl	%eax, %edx	# D.17533, D.17533
	movq	-216(%rbp), %rax	# copy, tmp742
	andl	$1, %edx	#, tmp744
	leal	0(,%rdx,8), %ecx	#, tmp745
	movzbl	3(%rax), %edx	# copy_312->volatil, tmp746
	andl	$-9, %edx	#, tmp747
	orl	%ecx, %edx	# tmp745, tmp748
	movb	%dl, 3(%rax)	# tmp748, copy_312->volatil
	.loc 1 2124 0
	movq	-280(%rbp), %rax	# orig, tmp749
	movzbl	3(%rax), %eax	# *orig_16(D), D.17525
	andl	$8, %eax	#, D.17525
	testb	%al, %al	# D.17525
	je	.L360	#,
	.loc 1 2124 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# copy, tmp750
	movzbl	3(%rax), %eax	# *copy_312, D.17525
	andl	$8, %eax	#, D.17525
	testb	%al, %al	# D.17525
	jne	.L360	#,
	.loc 1 2125 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.163
	movl	152(%rax), %edx	# cfun.163_330->x_function_call_count, D.17527
	addl	$1, %edx	#, D.17527
	movl	%edx, 152(%rax)	# D.17527, cfun.163_330->x_function_call_count
.L360:
	.loc 1 2127 0
	movq	-216(%rbp), %rax	# copy, D.17523
	jmp	.L310	#
.L319:
	.loc 1 2133 0
	movq	-280(%rbp), %rax	# orig, D.17523
	jmp	.L310	#
.L326:
	.loc 1 2139 0
	movq	-280(%rbp), %rax	# orig, tmp751
	movzbl	3(%rax), %eax	# *orig_16(D), D.17525
	andl	$4, %eax	#, D.17525
	testb	%al, %al	# D.17525
	je	.L361	#,
.LBB42:
	.loc 1 2141 0
	movq	inlining(%rip), %rax	# inlining, inlining.165
	testq	%rax, %rax	# inlining.165
	je	.L362	#,
	.loc 1 2141 0 is_stmt 0 discriminator 1
	movq	inlining(%rip), %rax	# inlining, iftmp.164
	jmp	.L363	#
.L362:
	.loc 1 2141 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, iftmp.164
.L363:
	.loc 1 2141 0 discriminator 3
	movq	%rax, -144(%rbp)	# iftmp.164, f
	.loc 1 2142 0 is_stmt 1 discriminator 3
	movq	-280(%rbp), %rdx	# orig, tmp752
	movq	-144(%rbp), %rax	# f, tmp753
	movq	%rdx, %rsi	# tmp752,
	movq	%rax, %rdi	# tmp753,
	call	get_pool_constant_for_function	#
	movq	%rax, -136(%rbp)	# tmp754, constant
	.loc 1 2143 0 discriminator 3
	movq	-280(%rbp), %rdx	# orig, tmp755
	movq	-144(%rbp), %rax	# f, tmp756
	movq	%rdx, %rsi	# tmp755,
	movq	%rax, %rdi	# tmp756,
	call	get_pool_mode_for_function	#
	movl	%eax, -224(%rbp)	# tmp757, const_mode
	.loc 1 2144 0 discriminator 3
	movq	inlining(%rip), %rax	# inlining, inlining.166
	testq	%rax, %rax	# inlining.166
	je	.L364	#,
.LBB43:
	.loc 1 2146 0
	movq	-288(%rbp), %rcx	# map, tmp758
	movq	-136(%rbp), %rax	# constant, tmp759
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp758,
	movq	%rax, %rdi	# tmp759,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rdx	#, D.17530
	movl	-224(%rbp), %eax	# const_mode, tmp760
	movq	%rdx, %rsi	# D.17530,
	movl	%eax, %edi	# tmp760,
	call	force_const_mem	#
	movq	%rax, -128(%rbp)	# tmp761, temp
	.loc 1 2166 0
	movq	-128(%rbp), %rax	# temp, tmp762
	movq	8(%rax), %rax	# temp_345->fld[0].rtx, tmp763
	movq	%rax, -128(%rbp)	# tmp763, temp
	.loc 1 2172 0
	movq	-128(%rbp), %rax	# temp, D.17523
	jmp	.L310	#
.L364:
.LBE43:
	.loc 1 2174 0
	movq	-136(%rbp), %rax	# constant, tmp764
	movzwl	(%rax), %eax	# constant_341->code, D.17524
	cmpw	$67, %ax	#, D.17524
	jne	.L361	#,
	.loc 1 2175 0
	movl	-292(%rbp), %edx	# for_lhs, tmp765
	movq	-288(%rbp), %rcx	# map, tmp766
	movq	-136(%rbp), %rax	# constant, tmp767
	movq	%rcx, %rsi	# tmp766,
	movq	%rax, %rdi	# tmp767,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rdx	#, D.17530
	movq	-280(%rbp), %rax	# orig, tmp768
	movzbl	2(%rax), %eax	# orig_16(D)->mode, D.17525
	movzbl	%al, %eax	# D.17525, D.17539
	movq	%rdx, %rsi	# D.17530,
	movl	%eax, %edi	# D.17539,
	call	force_const_mem	#
	movq	8(%rax), %rax	# _352->fld[0].rtx, D.17523
	jmp	.L310	#
.L361:
.LBE42:
	.loc 1 2181 0
	movq	-280(%rbp), %rax	# orig, D.17523
	jmp	.L310	#
.L320:
	.loc 1 2187 0
	movq	-280(%rbp), %rax	# orig, tmp769
	movzbl	2(%rax), %eax	# orig_16(D)->mode, D.17525
	movzbl	%al, %eax	# D.17525, D.17527
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17540
	cmpl	$2, %eax	#, D.17540
	jne	.L365	#,
.LBB44:
.LBB45:
	.loc 1 2191 0
	movq	-280(%rbp), %rax	# orig, tmp771
	leaq	16(%rax), %rcx	#, D.17541
	leaq	-48(%rbp), %rax	#, tmp772
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.17541,
	movq	%rax, %rdi	# tmp772,
	call	memcpy	#
	movq	-48(%rbp), %rax	# u.d, tmp773
	movq	%rax, -80(%rbp)	# tmp773, d
	movq	-40(%rbp), %rax	# u.d, tmp774
	movq	%rax, -72(%rbp)	# tmp774, d
	movq	-32(%rbp), %rax	# u.d, tmp775
	movq	%rax, -64(%rbp)	# tmp775, d
.LBE45:
	.loc 1 2192 0
	movq	-280(%rbp), %rax	# orig, tmp776
	movzbl	2(%rax), %eax	# orig_16(D)->mode, D.17525
	movzbl	%al, %eax	# D.17525, D.17539
	movq	-80(%rbp), %rdx	# d, tmp777
	movq	%rdx, (%rsp)	# tmp777,
	movq	-72(%rbp), %rdx	# d, tmp778
	movq	%rdx, 8(%rsp)	# tmp778,
	movq	-64(%rbp), %rdx	# d, tmp779
	movq	%rdx, 16(%rsp)	# tmp779,
	movl	%eax, %edi	# D.17539,
	call	immed_real_const_1	#
	jmp	.L310	#
.L365:
.LBE44:
	.loc 1 2195 0
	movq	-280(%rbp), %rax	# orig, tmp780
	movq	24(%rax), %rcx	# orig_16(D)->fld[2].rtwint, D.17536
	movq	-280(%rbp), %rax	# orig, tmp781
	movq	16(%rax), %rax	# orig_16(D)->fld[1].rtwint, D.17536
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.17536,
	movq	%rax, %rdi	# D.17536,
	call	immed_double_const	#
	jmp	.L310	#
.L321:
	.loc 1 2201 0
	movq	-280(%rbp), %rax	# orig, tmp782
	movzbl	3(%rax), %eax	# *orig_16(D), D.17525
	andl	$64, %eax	#, D.17525
	testb	%al, %al	# D.17525
	je	.L366	#,
	.loc 1 2202 0
	movl	$__FUNCTION__.14228, %edx	#,
	movl	$2202, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L366:
	.loc 1 2203 0
	jmp	.L354	#
.L315:
	.loc 1 2210 0
	movq	-288(%rbp), %rax	# map, tmp783
	movq	88(%rax), %rdx	# map_24(D)->orig_asm_operands_vector, D.17542
	movq	-280(%rbp), %rax	# orig, tmp784
	movq	32(%rax), %rax	# orig_16(D)->fld[3].rtvec, D.17542
	cmpq	%rax, %rdx	# D.17542, D.17542
	jne	.L367	#,
	.loc 1 2212 0
	movl	$41, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -216(%rbp)	# tmp785, copy
	.loc 1 2213 0
	movq	-280(%rbp), %rax	# orig, tmp786
	movzbl	3(%rax), %eax	# *orig_16(D), tmp789
	shrb	$3, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-216(%rbp), %rdx	# copy, tmp790
	andl	$1, %eax	#, tmp792
	leal	0(,%rax,8), %ecx	#, tmp793
	movzbl	3(%rdx), %eax	# copy_369->volatil, tmp794
	andl	$-9, %eax	#, tmp795
	orl	%ecx, %eax	# tmp793, tmp796
	movb	%al, 3(%rdx)	# tmp796, copy_369->volatil
	.loc 1 2214 0
	movq	-280(%rbp), %rax	# orig, tmp797
	movzbl	2(%rax), %edx	# orig_16(D)->mode, D.17525
	movq	-216(%rbp), %rax	# copy, tmp798
	movb	%dl, 2(%rax)	# D.17525, copy_369->mode
	.loc 1 2215 0
	movq	-280(%rbp), %rax	# orig, tmp799
	movq	8(%rax), %rdx	# orig_16(D)->fld[0].rtstr, D.17543
	movq	-216(%rbp), %rax	# copy, tmp800
	movq	%rdx, 8(%rax)	# D.17543, copy_369->fld[0].rtstr
	.loc 1 2217 0
	movq	-280(%rbp), %rax	# orig, tmp801
	movq	16(%rax), %rdx	# orig_16(D)->fld[1].rtstr, D.17543
	movq	-216(%rbp), %rax	# copy, tmp802
	movq	%rdx, 16(%rax)	# D.17543, copy_369->fld[1].rtstr
	.loc 1 2218 0
	movq	-280(%rbp), %rax	# orig, tmp803
	movl	24(%rax), %edx	# orig_16(D)->fld[2].rtint, D.17527
	movq	-216(%rbp), %rax	# copy, tmp804
	movl	%edx, 24(%rax)	# D.17527, copy_369->fld[2].rtint
	.loc 1 2219 0
	movq	-288(%rbp), %rax	# map, tmp805
	movq	96(%rax), %rdx	# map_24(D)->copy_asm_operands_vector, D.17542
	movq	-216(%rbp), %rax	# copy, tmp806
	movq	%rdx, 32(%rax)	# D.17542, copy_369->fld[3].rtvec
	.loc 1 2221 0
	movq	-288(%rbp), %rax	# map, tmp807
	movq	104(%rax), %rdx	# map_24(D)->copy_asm_constraints_vector, D.17542
	movq	-216(%rbp), %rax	# copy, tmp808
	movq	%rdx, 40(%rax)	# D.17542, copy_369->fld[4].rtvec
	.loc 1 2222 0
	movq	-280(%rbp), %rax	# orig, tmp809
	movq	48(%rax), %rdx	# orig_16(D)->fld[5].rtstr, D.17543
	movq	-216(%rbp), %rax	# copy, tmp810
	movq	%rdx, 48(%rax)	# D.17543, copy_369->fld[5].rtstr
	.loc 1 2223 0
	movq	-280(%rbp), %rax	# orig, tmp811
	movl	56(%rax), %edx	# orig_16(D)->fld[6].rtint, D.17527
	movq	-216(%rbp), %rax	# copy, tmp812
	movl	%edx, 56(%rax)	# D.17527, copy_369->fld[6].rtint
	.loc 1 2224 0
	movq	-216(%rbp), %rax	# copy, D.17523
	jmp	.L310	#
.L367:
	.loc 1 2226 0
	jmp	.L354	#
.L318:
.LBB46:
	.loc 1 2239 0
	movq	-280(%rbp), %rax	# orig, tmp813
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	.loc 1 2238 0
	movq	8(%rax), %rax	# _380->fld[0].rtx, D.17530
	movq	-288(%rbp), %rcx	# map, tmp814
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp814,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rdx	#, D.17530
	movq	-280(%rbp), %rax	# orig, tmp815
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movzbl	2(%rax), %eax	# _383->mode, D.17525
	movzbl	%al, %eax	# D.17525, D.17539
	.loc 1 2237 0
	movq	%rdx, %rsi	# D.17530,
	movl	%eax, %edi	# D.17539,
	call	gen_rtx_MEM	#
	movq	%rax, -120(%rbp)	# tmp816, copy
	.loc 1 2242 0
	movq	-280(%rbp), %rax	# orig, tmp817
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movzbl	3(%rax), %eax	# *_387, tmp820
	shrb	$3, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-120(%rbp), %rdx	# copy, tmp821
	andl	$1, %eax	#, tmp823
	leal	0(,%rax,8), %ecx	#, tmp824
	movzbl	3(%rdx), %eax	# copy_386->volatil, tmp825
	andl	$-9, %eax	#, tmp826
	orl	%ecx, %eax	# tmp824, tmp827
	movb	%al, 3(%rdx)	# tmp827, copy_386->volatil
	movq	-280(%rbp), %rax	# orig, tmp828
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movzbl	3(%rax), %eax	# *_389, tmp831
	shrb	$4, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-120(%rbp), %rdx	# copy, tmp832
	andl	$1, %eax	#, tmp834
	sall	$4, %eax	#, tmp835
	movl	%eax, %ecx	# tmp835, tmp835
	movzbl	3(%rdx), %eax	# copy_386->in_struct, tmp836
	andl	$-17, %eax	#, tmp837
	orl	%ecx, %eax	# tmp835, tmp838
	movb	%al, 3(%rdx)	# tmp838, copy_386->in_struct
	movq	-280(%rbp), %rax	# orig, tmp839
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movzbl	3(%rax), %eax	# *_391, tmp842
	shrb	$7, %al	#, D.17533
	movl	%eax, %edx	# D.17533, D.17533
	movq	-120(%rbp), %rax	# copy, tmp843
	movl	%edx, %ecx	# D.17533, tmp845
	sall	$7, %ecx	#, tmp845
	movzbl	3(%rax), %edx	# copy_386->frame_related, tmp846
	andl	$127, %edx	#, tmp847
	orl	%ecx, %edx	# tmp845, tmp848
	movb	%dl, 3(%rax)	# tmp848, copy_386->frame_related
	movq	-280(%rbp), %rax	# orig, tmp849
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movzbl	3(%rax), %eax	# *_393, tmp852
	shrb	$2, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-120(%rbp), %rdx	# copy, tmp853
	andl	$1, %eax	#, tmp855
	leal	0(,%rax,4), %ecx	#, tmp856
	movzbl	3(%rdx), %eax	# copy_386->unchanging, tmp857
	andl	$-5, %eax	#, tmp858
	orl	%ecx, %eax	# tmp856, tmp859
	movb	%al, 3(%rdx)	# tmp859, copy_386->unchanging
	movq	-280(%rbp), %rax	# orig, tmp860
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movzbl	3(%rax), %eax	# *_395, tmp863
	andl	$1, %eax	#, D.17533
	movl	%eax, %edx	# D.17533, D.17533
	movq	-120(%rbp), %rax	# copy, tmp864
	movl	%edx, %ecx	# D.17533, tmp866
	andl	$1, %ecx	#, tmp866
	movzbl	3(%rax), %edx	# copy_386->jump, tmp867
	andl	$-2, %edx	#, tmp868
	orl	%ecx, %edx	# tmp866, tmp869
	movb	%dl, 3(%rax)	# tmp869, copy_386->jump
	movq	-280(%rbp), %rax	# orig, tmp870
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movq	16(%rax), %rdx	# _397->fld[1].rtmem, D.17544
	movq	-120(%rbp), %rax	# copy, tmp871
	movq	%rdx, 16(%rax)	# D.17544, copy_386->fld[1].rtmem
	.loc 1 2245 0
	movq	-280(%rbp), %rax	# orig, tmp872
	movq	16(%rax), %rax	# orig_16(D)->fld[1].rtx, D.17530
	movq	-288(%rbp), %rcx	# map, tmp873
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp873,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rcx	#, D.17530
	movq	-280(%rbp), %rax	# orig, tmp874
	movzbl	2(%rax), %eax	# orig_16(D)->mode, D.17525
	movzbl	%al, %eax	# D.17525, D.17539
	.loc 1 2244 0
	movq	-120(%rbp), %rdx	# copy, tmp875
	movl	%eax, %esi	# D.17539,
	movl	$50, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L310	#
.L316:
.LBE46:
	.loc 1 2261 0
	movq	-280(%rbp), %rax	# orig, tmp876
	movq	8(%rax), %rdx	# orig_16(D)->fld[0].rtx, D.17530
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.17530
	cmpq	%rax, %rdx	# D.17530, D.17530
	je	.L368	#,
	.loc 1 2262 0
	movq	-280(%rbp), %rax	# orig, tmp877
	movq	8(%rax), %rdx	# orig_16(D)->fld[0].rtx, D.17530
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.17530
	cmpq	%rax, %rdx	# D.17530, D.17530
	jne	.L369	#,
.L368:
.LBB47:
	.loc 1 2269 0
	movq	-280(%rbp), %rax	# orig, tmp878
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movl	-292(%rbp), %edx	# for_lhs, tmp879
	movq	-288(%rbp), %rcx	# map, tmp880
	movq	%rcx, %rsi	# tmp880,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	.loc 1 2270 0
	movq	-288(%rbp), %rax	# map, tmp881
	movq	32(%rax), %rdx	# map_24(D)->reg_map, D.17531
	movq	-280(%rbp), %rax	# orig, tmp882
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movl	8(%rax), %eax	# _415->fld[0].rtuint, D.17526
	movl	%eax, %eax	# D.17526, D.17532
	salq	$3, %rax	#, D.17532
	addq	%rdx, %rax	# D.17531, D.17531
	movq	(%rax), %rax	# *_419, tmp883
	movq	%rax, -112(%rbp)	# tmp883, equiv_reg
	.loc 1 2271 0
	movq	-288(%rbp), %rax	# map, tmp884
	movq	64(%rax), %rdx	# map_24(D)->const_equiv_varray, D.17537
	movq	-112(%rbp), %rax	# equiv_reg, tmp885
	movl	8(%rax), %eax	# equiv_reg_420->fld[0].rtuint, D.17526
	movl	%eax, %eax	# D.17526, tmp886
	addq	$2, %rax	#, tmp887
	salq	$4, %rax	#, tmp888
	addq	%rdx, %rax	# D.17537, tmp889
	movq	(%rax), %rax	# _421->data.const_equiv[_422].rtx, tmp890
	movq	%rax, -104(%rbp)	# tmp890, equiv_loc
	.loc 1 2274 0
	movq	-104(%rbp), %rax	# equiv_loc, tmp891
	movzwl	(%rax), %eax	# equiv_loc_423->code, D.17524
	cmpw	$61, %ax	#, D.17524
	je	.L370	#,
	.loc 1 2274 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# equiv_loc, tmp892
	movq	16(%rax), %rax	# equiv_loc_423->fld[1].rtx, D.17530
	movq	8(%rax), %rax	# _425->fld[0].rtwint, iftmp.167
	jmp	.L371	#
.L370:
	.loc 1 2274 0 discriminator 2
	movl	$0, %eax	#, iftmp.167
.L371:
	.loc 1 2274 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.167, loc_offset
	.loc 1 2276 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# loc_offset, tmp893
	negq	%rax	# D.17536
	movq	%rax, %rbx	# D.17536, D.17536
	movq	-280(%rbp), %rax	# orig, tmp894
	movq	16(%rax), %rax	# orig_16(D)->fld[1].rtx, D.17530
	movq	-288(%rbp), %rcx	# map, tmp895
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp895,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movq	%rbx, %rsi	# D.17536,
	movq	%rax, %rdi	# D.17530,
	call	plus_constant_wide	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17530,
	call	force_operand	#
	movq	%rax, %rdx	#, D.17530
	movq	-280(%rbp), %rax	# orig, tmp896
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movq	%rdx, %rcx	# D.17530,
	movq	%rax, %rdx	# D.17530,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L310	#
.L369:
.LBE47:
	.loc 1 2285 0
	movq	-280(%rbp), %rax	# orig, tmp897
	movq	16(%rax), %rax	# orig_16(D)->fld[1].rtx, D.17530
	movq	-288(%rbp), %rcx	# map, tmp898
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp898,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rbx	#, D.17530
	movq	-280(%rbp), %rax	# orig, tmp899
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movq	-288(%rbp), %rcx	# map, tmp900
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp900,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movq	%rbx, %rcx	# D.17530,
	movq	%rax, %rdx	# D.17530,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L310	#
.L324:
	.loc 1 2291 0
	movq	inlining(%rip), %rax	# inlining, inlining.168
	testq	%rax, %rax	# inlining.168
	je	.L372	#,
	.loc 1 2292 0
	movq	-280(%rbp), %rax	# orig, tmp901
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movzwl	(%rax), %eax	# _437->code, D.17524
	cmpw	$68, %ax	#, D.17524
	jne	.L372	#,
	.loc 1 2293 0
	movq	-280(%rbp), %rax	# orig, tmp902
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movzbl	3(%rax), %eax	# *_439, D.17525
	andl	$4, %eax	#, D.17525
	testb	%al, %al	# D.17525
	je	.L372	#,
.LBB48:
	.loc 1 2296 0
	movq	-280(%rbp), %rax	# orig, tmp903
	movq	8(%rax), %rdx	# orig_16(D)->fld[0].rtx, D.17530
	movq	inlining(%rip), %rax	# inlining, inlining.169
	.loc 1 2295 0
	movq	%rdx, %rsi	# D.17530,
	movq	%rax, %rdi	# inlining.169,
	call	get_pool_mode_for_function	#
	movl	%eax, -220(%rbp)	# tmp904, const_mode
	.loc 1 2298 0
	movq	-280(%rbp), %rax	# orig, tmp905
	movq	8(%rax), %rdx	# orig_16(D)->fld[0].rtx, D.17530
	movq	inlining(%rip), %rax	# inlining, inlining.170
	.loc 1 2297 0
	movq	%rdx, %rsi	# D.17530,
	movq	%rax, %rdi	# inlining.170,
	call	get_pool_constant_for_function	#
	movq	%rax, -88(%rbp)	# tmp906, constant
	.loc 1 2300 0
	movq	-288(%rbp), %rcx	# map, tmp907
	movq	-88(%rbp), %rax	# constant, tmp908
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp907,
	movq	%rax, %rdi	# tmp908,
	call	copy_rtx_and_substitute	#
	movq	%rax, -88(%rbp)	# tmp909, constant
	.loc 1 2308 0
	movq	-88(%rbp), %rax	# constant, tmp910
	movzwl	(%rax), %eax	# constant_448->code, D.17524
	cmpw	$67, %ax	#, D.17524
	je	.L373	#,
	.loc 1 2308 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# constant, tmp911
	movzwl	(%rax), %eax	# constant_448->code, D.17524
	cmpw	$68, %ax	#, D.17524
	je	.L373	#,
	movq	-88(%rbp), %rax	# constant, tmp912
	movzwl	(%rax), %eax	# constant_448->code, D.17524
	cmpw	$54, %ax	#, D.17524
	je	.L373	#,
	movq	-88(%rbp), %rax	# constant, tmp913
	movzwl	(%rax), %eax	# constant_448->code, D.17524
	cmpw	$55, %ax	#, D.17524
	je	.L373	#,
	movq	-88(%rbp), %rax	# constant, tmp914
	movzwl	(%rax), %eax	# constant_448->code, D.17524
	cmpw	$58, %ax	#, D.17524
	je	.L373	#,
	movq	-88(%rbp), %rax	# constant, tmp915
	movzwl	(%rax), %eax	# constant_448->code, D.17524
	cmpw	$134, %ax	#, D.17524
	je	.L373	#,
	movq	-88(%rbp), %rax	# constant, tmp916
	movzwl	(%rax), %eax	# constant_448->code, D.17524
	cmpw	$56, %ax	#, D.17524
	je	.L373	#,
	movq	-88(%rbp), %rax	# constant, tmp917
	movzwl	(%rax), %eax	# constant_448->code, D.17524
	cmpw	$140, %ax	#, D.17524
	je	.L373	#,
	.loc 1 2309 0 is_stmt 1
	movq	-88(%rbp), %rax	# constant, D.17523
	jmp	.L310	#
.L373:
	.loc 1 2311 0
	movq	-88(%rbp), %rdx	# constant, tmp918
	movl	-220(%rbp), %eax	# const_mode, tmp919
	movq	%rdx, %rsi	# tmp918,
	movl	%eax, %edi	# tmp919,
	call	force_const_mem	#
	movq	%rax, %rdi	# D.17530,
	call	validize_mem	#
	jmp	.L310	#
.L372:
.LBE48:
	.loc 1 2314 0
	movq	-280(%rbp), %rax	# orig, tmp920
	movq	8(%rax), %rax	# orig_16(D)->fld[0].rtx, D.17530
	movq	-288(%rbp), %rcx	# map, tmp921
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp921,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movq	%rax, %rdx	#, D.17530
	movl	-244(%rbp), %eax	# mode, tmp922
	movq	%rdx, %rsi	# D.17530,
	movl	%eax, %edi	# tmp922,
	call	gen_rtx_MEM	#
	movq	%rax, -216(%rbp)	# tmp923, copy
	.loc 1 2316 0
	movq	-280(%rbp), %rax	# orig, tmp924
	movzbl	3(%rax), %eax	# *orig_16(D), tmp927
	shrb	$3, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-216(%rbp), %rdx	# copy, tmp928
	andl	$1, %eax	#, tmp930
	leal	0(,%rax,8), %ecx	#, tmp931
	movzbl	3(%rdx), %eax	# copy_462->volatil, tmp932
	andl	$-9, %eax	#, tmp933
	orl	%ecx, %eax	# tmp931, tmp934
	movb	%al, 3(%rdx)	# tmp934, copy_462->volatil
	movq	-280(%rbp), %rax	# orig, tmp935
	movzbl	3(%rax), %eax	# *orig_16(D), tmp938
	shrb	$4, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-216(%rbp), %rdx	# copy, tmp939
	andl	$1, %eax	#, tmp941
	sall	$4, %eax	#, tmp942
	movl	%eax, %ecx	# tmp942, tmp942
	movzbl	3(%rdx), %eax	# copy_462->in_struct, tmp943
	andl	$-17, %eax	#, tmp944
	orl	%ecx, %eax	# tmp942, tmp945
	movb	%al, 3(%rdx)	# tmp945, copy_462->in_struct
	movq	-280(%rbp), %rax	# orig, tmp946
	movzbl	3(%rax), %eax	# *orig_16(D), tmp949
	shrb	$7, %al	#, D.17533
	movl	%eax, %edx	# D.17533, D.17533
	movq	-216(%rbp), %rax	# copy, tmp950
	movl	%edx, %ecx	# D.17533, tmp952
	sall	$7, %ecx	#, tmp952
	movzbl	3(%rax), %edx	# copy_462->frame_related, tmp953
	andl	$127, %edx	#, tmp954
	orl	%ecx, %edx	# tmp952, tmp955
	movb	%dl, 3(%rax)	# tmp955, copy_462->frame_related
	movq	-280(%rbp), %rax	# orig, tmp956
	movzbl	3(%rax), %eax	# *orig_16(D), tmp959
	shrb	$2, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-216(%rbp), %rdx	# copy, tmp960
	andl	$1, %eax	#, tmp962
	leal	0(,%rax,4), %ecx	#, tmp963
	movzbl	3(%rdx), %eax	# copy_462->unchanging, tmp964
	andl	$-5, %eax	#, tmp965
	orl	%ecx, %eax	# tmp963, tmp966
	movb	%al, 3(%rdx)	# tmp966, copy_462->unchanging
	movq	-280(%rbp), %rax	# orig, tmp967
	movzbl	3(%rax), %eax	# *orig_16(D), tmp970
	andl	$1, %eax	#, D.17533
	movl	%eax, %edx	# D.17533, D.17533
	movq	-216(%rbp), %rax	# copy, tmp971
	movl	%edx, %ecx	# D.17533, tmp973
	andl	$1, %ecx	#, tmp973
	movzbl	3(%rax), %edx	# copy_462->jump, tmp974
	andl	$-2, %edx	#, tmp975
	orl	%ecx, %edx	# tmp973, tmp976
	movb	%dl, 3(%rax)	# tmp976, copy_462->jump
	movq	-280(%rbp), %rax	# orig, tmp977
	movq	16(%rax), %rdx	# orig_16(D)->fld[1].rtmem, D.17544
	movq	-216(%rbp), %rax	# copy, tmp978
	movq	%rdx, 16(%rax)	# D.17544, copy_462->fld[1].rtmem
	.loc 1 2321 0
	movq	inlining(%rip), %rax	# inlining, inlining.171
	testq	%rax, %rax	# inlining.171
	je	.L374	#,
	.loc 1 2321 0 is_stmt 0 discriminator 1
	cmpl	$0, -292(%rbp)	#, for_lhs
	jne	.L374	#,
	.loc 1 2322 0 is_stmt 1
	movq	-216(%rbp), %rax	# copy, tmp979
	movzbl	3(%rax), %edx	# copy_462->unchanging, tmp982
	andl	$-5, %edx	#, tmp983
	movb	%dl, 3(%rax)	# tmp983, copy_462->unchanging
.L374:
	.loc 1 2324 0
	movq	-216(%rbp), %rax	# copy, D.17523
	jmp	.L310	#
.L392:
	.loc 1 2327 0
	nop
.L354:
	.loc 1 2330 0
	movl	-248(%rbp), %eax	# code, tmp984
	movl	%eax, %edi	# tmp984,
	call	rtx_alloc	#
	movq	%rax, -216(%rbp)	# tmp985, copy
	.loc 1 2331 0
	movl	-244(%rbp), %eax	# mode, tmp986
	movl	%eax, %edx	# tmp986, D.17525
	movq	-216(%rbp), %rax	# copy, tmp987
	movb	%dl, 2(%rax)	# D.17525, copy_471->mode
	.loc 1 2332 0
	movq	-280(%rbp), %rax	# orig, tmp988
	movzbl	3(%rax), %eax	# *orig_16(D), tmp991
	shrb	$4, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-216(%rbp), %rdx	# copy, tmp992
	andl	$1, %eax	#, tmp994
	sall	$4, %eax	#, tmp995
	movl	%eax, %ecx	# tmp995, tmp995
	movzbl	3(%rdx), %eax	# copy_471->in_struct, tmp996
	andl	$-17, %eax	#, tmp997
	orl	%ecx, %eax	# tmp995, tmp998
	movb	%al, 3(%rdx)	# tmp998, copy_471->in_struct
	.loc 1 2333 0
	movq	-280(%rbp), %rax	# orig, tmp999
	movzbl	3(%rax), %eax	# *orig_16(D), tmp1002
	shrb	$3, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-216(%rbp), %rdx	# copy, tmp1003
	andl	$1, %eax	#, tmp1005
	leal	0(,%rax,8), %ecx	#, tmp1006
	movzbl	3(%rdx), %eax	# copy_471->volatil, tmp1007
	andl	$-9, %eax	#, tmp1008
	orl	%ecx, %eax	# tmp1006, tmp1009
	movb	%al, 3(%rdx)	# tmp1009, copy_471->volatil
	.loc 1 2334 0
	movq	-280(%rbp), %rax	# orig, tmp1010
	movzbl	3(%rax), %eax	# *orig_16(D), tmp1013
	shrb	$2, %al	#, D.17533
	andl	$1, %eax	#, D.17533
	movq	-216(%rbp), %rdx	# copy, tmp1014
	andl	$1, %eax	#, tmp1016
	leal	0(,%rax,4), %ecx	#, tmp1017
	movzbl	3(%rdx), %eax	# copy_471->unchanging, tmp1018
	andl	$-5, %eax	#, tmp1019
	orl	%ecx, %eax	# tmp1017, tmp1020
	movb	%al, 3(%rdx)	# tmp1020, copy_471->unchanging
	.loc 1 2336 0
	movq	-216(%rbp), %rax	# copy, tmp1021
	movzwl	(%rax), %eax	# copy_471->code, D.17524
	movzwl	%ax, %eax	# D.17524, D.17527
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp1023
	movq	%rax, -208(%rbp)	# tmp1023, format_ptr
	.loc 1 2338 0
	movl	$0, -264(%rbp)	#, i
	jmp	.L375	#
.L390:
	.loc 1 2340 0
	movq	-208(%rbp), %rax	# format_ptr, format_ptr.172
	leaq	1(%rax), %rdx	#, tmp1024
	movq	%rdx, -208(%rbp)	# tmp1024, format_ptr
	movzbl	(%rax), %eax	# *format_ptr.172_484, D.17545
	movsbl	%al, %eax	# D.17545, D.17527
	subl	$48, %eax	#, tmp1025
	cmpl	$71, %eax	#, tmp1025
	ja	.L376	#,
	movl	%eax, %eax	# tmp1025, tmp1026
	movq	.L378(,%rax,8), %rax	#, tmp1027
	jmp	*%rax	# tmp1027
	.section	.rodata
	.align 8
	.align 4
.L378:
	.quad	.L377
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L379
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L380
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L381
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L376
	.quad	.L382
	.quad	.L383
	.quad	.L384
	.quad	.L376
	.quad	.L385
	.text
.L377:
	.loc 1 2344 0
	movq	-280(%rbp), %rax	# orig, tmp1028
	movl	-264(%rbp), %edx	# i, tmp1030
	movslq	%edx, %rdx	# tmp1030, tmp1029
	movq	8(%rax,%rdx,8), %rcx	# orig_16(D)->fld[i_2].rtwint, D.17536
	movq	-216(%rbp), %rax	# copy, tmp1031
	movl	-264(%rbp), %edx	# i, tmp1033
	movslq	%edx, %rdx	# tmp1033, tmp1032
	movq	%rcx, 8(%rax,%rdx,8)	# D.17536, copy_471->fld[i_2].rtwint
	.loc 1 2345 0
	jmp	.L386	#
.L380:
	.loc 1 2349 0
	movq	-280(%rbp), %rax	# orig, tmp1034
	movl	-264(%rbp), %edx	# i, tmp1036
	movslq	%edx, %rdx	# tmp1036, tmp1035
	movq	8(%rax,%rdx,8), %rax	# orig_16(D)->fld[i_2].rtx, D.17530
	movl	-292(%rbp), %edx	# for_lhs, tmp1037
	movq	-288(%rbp), %rcx	# map, tmp1038
	movq	%rcx, %rsi	# tmp1038,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movq	-216(%rbp), %rdx	# copy, tmp1039
	movl	-264(%rbp), %ecx	# i, tmp1041
	movslq	%ecx, %rcx	# tmp1041, tmp1040
	movq	%rax, 8(%rdx,%rcx,8)	# D.17530, copy_471->fld[i_2].rtx
	.loc 1 2350 0
	jmp	.L386	#
.L384:
	.loc 1 2355 0
	movq	-288(%rbp), %rax	# map, tmp1042
	movq	48(%rax), %rcx	# map_24(D)->insn_map, D.17531
	movq	-280(%rbp), %rax	# orig, tmp1043
	movl	-264(%rbp), %edx	# i, tmp1045
	movslq	%edx, %rdx	# tmp1045, tmp1044
	movq	8(%rax,%rdx,8), %rax	# orig_16(D)->fld[i_2].rtx, D.17530
	movl	8(%rax), %eax	# _492->fld[0].rtint, D.17527
	cltq
	salq	$3, %rax	#, D.17532
	addq	%rcx, %rax	# D.17531, D.17531
	movq	(%rax), %rcx	# *_496, D.17530
	movq	-216(%rbp), %rax	# copy, tmp1046
	movl	-264(%rbp), %edx	# i, tmp1048
	movslq	%edx, %rdx	# tmp1048, tmp1047
	movq	%rcx, 8(%rax,%rdx,8)	# D.17530, copy_471->fld[i_2].rtx
	.loc 1 2356 0
	jmp	.L386	#
.L379:
	.loc 1 2359 0
	movq	-280(%rbp), %rax	# orig, tmp1049
	movl	-264(%rbp), %edx	# i, tmp1051
	movslq	%edx, %rdx	# tmp1051, tmp1050
	movq	8(%rax,%rdx,8), %rcx	# orig_16(D)->fld[i_2].rtvec, D.17542
	movq	-216(%rbp), %rax	# copy, tmp1052
	movl	-264(%rbp), %edx	# i, tmp1054
	movslq	%edx, %rdx	# tmp1054, tmp1053
	movq	%rcx, 8(%rax,%rdx,8)	# D.17542, copy_471->fld[i_2].rtvec
	.loc 1 2360 0
	movq	-280(%rbp), %rax	# orig, tmp1055
	movl	-264(%rbp), %edx	# i, tmp1057
	movslq	%edx, %rdx	# tmp1057, tmp1056
	movq	8(%rax,%rdx,8), %rax	# orig_16(D)->fld[i_2].rtvec, D.17542
	testq	%rax, %rax	# D.17542
	je	.L387	#,
	.loc 1 2360 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# orig, tmp1058
	movl	-264(%rbp), %edx	# i, tmp1060
	movslq	%edx, %rdx	# tmp1060, tmp1059
	movq	8(%rax,%rdx,8), %rax	# orig_16(D)->fld[i_2].rtvec, D.17542
	movl	(%rax), %eax	# _500->num_elem, D.17527
	testl	%eax, %eax	# D.17527
	je	.L387	#,
	.loc 1 2362 0 is_stmt 1
	movq	-280(%rbp), %rax	# orig, tmp1061
	movl	-264(%rbp), %edx	# i, tmp1063
	movslq	%edx, %rdx	# tmp1063, tmp1062
	movq	8(%rax,%rdx,8), %rax	# orig_16(D)->fld[i_2].rtvec, D.17542
	movl	(%rax), %eax	# _502->num_elem, D.17527
	movl	%eax, %edi	# D.17527,
	call	rtvec_alloc	#
	movq	-216(%rbp), %rdx	# copy, tmp1064
	movl	-264(%rbp), %ecx	# i, tmp1066
	movslq	%ecx, %rcx	# tmp1066, tmp1065
	movq	%rax, 8(%rdx,%rcx,8)	# D.17542, copy_471->fld[i_2].rtvec
	.loc 1 2363 0
	movl	$0, -260(%rbp)	#, j
	jmp	.L388	#
.L389:
	.loc 1 2364 0 discriminator 2
	movq	-216(%rbp), %rax	# copy, tmp1067
	movl	-264(%rbp), %edx	# i, tmp1069
	movslq	%edx, %rdx	# tmp1069, tmp1068
	movq	8(%rax,%rdx,8), %rbx	# copy_471->fld[i_2].rtvec, D.17542
	.loc 1 2365 0 discriminator 2
	movq	-280(%rbp), %rax	# orig, tmp1070
	movl	-264(%rbp), %edx	# i, tmp1072
	movslq	%edx, %rdx	# tmp1072, tmp1071
	movq	8(%rax,%rdx,8), %rax	# orig_16(D)->fld[i_2].rtvec, D.17542
	movl	-260(%rbp), %edx	# j, tmp1074
	movslq	%edx, %rdx	# tmp1074, tmp1073
	movq	8(%rax,%rdx,8), %rax	# _509->elem, D.17530
	movl	-292(%rbp), %edx	# for_lhs, tmp1075
	movq	-288(%rbp), %rcx	# map, tmp1076
	movq	%rcx, %rsi	# tmp1076,
	movq	%rax, %rdi	# D.17530,
	call	copy_rtx_and_substitute	#
	movl	-260(%rbp), %edx	# j, tmp1078
	movslq	%edx, %rdx	# tmp1078, tmp1077
	movq	%rax, 8(%rbx,%rdx,8)	# D.17530, _508->elem
	.loc 1 2363 0 discriminator 2
	addl	$1, -260(%rbp)	#, j
.L388:
	.loc 1 2363 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# copy, tmp1079
	movl	-264(%rbp), %edx	# i, tmp1081
	movslq	%edx, %rdx	# tmp1081, tmp1080
	movq	8(%rax,%rdx,8), %rax	# copy_471->fld[i_2].rtvec, D.17542
	movl	(%rax), %eax	# _506->num_elem, D.17527
	cmpl	-260(%rbp), %eax	# j, D.17527
	jg	.L389	#,
.L387:
	.loc 1 2368 0 is_stmt 1
	jmp	.L386	#
.L385:
	.loc 1 2371 0
	movq	-280(%rbp), %rax	# orig, tmp1082
	movl	-264(%rbp), %edx	# i, tmp1084
	movslq	%edx, %rdx	# tmp1084, tmp1083
	movq	8(%rax,%rdx,8), %rcx	# orig_16(D)->fld[i_2].rtwint, D.17536
	movq	-216(%rbp), %rax	# copy, tmp1085
	movl	-264(%rbp), %edx	# i, tmp1087
	movslq	%edx, %rdx	# tmp1087, tmp1086
	movq	%rcx, 8(%rax,%rdx,8)	# D.17536, copy_471->fld[i_2].rtwint
	.loc 1 2372 0
	jmp	.L386	#
.L381:
	.loc 1 2375 0
	movq	-280(%rbp), %rax	# orig, tmp1088
	movl	-264(%rbp), %edx	# i, tmp1090
	movslq	%edx, %rdx	# tmp1090, tmp1089
	movl	8(%rax,%rdx,8), %ecx	# orig_16(D)->fld[i_2].rtint, D.17527
	movq	-216(%rbp), %rax	# copy, tmp1091
	movl	-264(%rbp), %edx	# i, tmp1093
	movslq	%edx, %rdx	# tmp1093, tmp1092
	movl	%ecx, 8(%rax,%rdx,8)	# D.17527, copy_471->fld[i_2].rtint
	.loc 1 2376 0
	jmp	.L386	#
.L382:
	.loc 1 2379 0
	movq	-280(%rbp), %rax	# orig, tmp1094
	movl	-264(%rbp), %edx	# i, tmp1096
	movslq	%edx, %rdx	# tmp1096, tmp1095
	movq	8(%rax,%rdx,8), %rcx	# orig_16(D)->fld[i_2].rtstr, D.17543
	movq	-216(%rbp), %rax	# copy, tmp1097
	movl	-264(%rbp), %edx	# i, tmp1099
	movslq	%edx, %rdx	# tmp1099, tmp1098
	movq	%rcx, 8(%rax,%rdx,8)	# D.17543, copy_471->fld[i_2].rtstr
	.loc 1 2380 0
	jmp	.L386	#
.L383:
	.loc 1 2383 0
	movq	-280(%rbp), %rax	# orig, tmp1100
	movl	-264(%rbp), %edx	# i, tmp1102
	movslq	%edx, %rdx	# tmp1102, tmp1101
	movq	8(%rax,%rdx,8), %rcx	# orig_16(D)->fld[i_2].rttree, D.17528
	movq	-216(%rbp), %rax	# copy, tmp1103
	movl	-264(%rbp), %edx	# i, tmp1105
	movslq	%edx, %rdx	# tmp1105, tmp1104
	movq	%rcx, 8(%rax,%rdx,8)	# D.17528, copy_471->fld[i_2].rttree
	.loc 1 2384 0
	jmp	.L386	#
.L376:
	.loc 1 2387 0
	movl	$__FUNCTION__.14228, %edx	#,
	movl	$2387, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L386:
	.loc 1 2338 0
	addl	$1, -264(%rbp)	#, i
.L375:
	.loc 1 2338 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# copy, tmp1106
	movzwl	(%rax), %eax	# copy_471->code, D.17524
	movzwl	%ax, %eax	# D.17524, D.17527
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.17525
	movzbl	%al, %eax	# D.17525, D.17527
	cmpl	-264(%rbp), %eax	# i, D.17527
	jg	.L390	#,
	.loc 1 2391 0 is_stmt 1
	cmpl	$41, -248(%rbp)	#, code
	jne	.L391	#,
	.loc 1 2391 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# map, tmp1108
	movq	88(%rax), %rax	# map_24(D)->orig_asm_operands_vector, D.17542
	testq	%rax, %rax	# D.17542
	jne	.L391	#,
	.loc 1 2393 0 is_stmt 1
	movq	-280(%rbp), %rax	# orig, tmp1109
	movq	32(%rax), %rdx	# orig_16(D)->fld[3].rtvec, D.17542
	movq	-288(%rbp), %rax	# map, tmp1110
	movq	%rdx, 88(%rax)	# D.17542, map_24(D)->orig_asm_operands_vector
	.loc 1 2394 0
	movq	-216(%rbp), %rax	# copy, tmp1111
	movq	32(%rax), %rdx	# copy_471->fld[3].rtvec, D.17542
	movq	-288(%rbp), %rax	# map, tmp1112
	movq	%rdx, 96(%rax)	# D.17542, map_24(D)->copy_asm_operands_vector
	.loc 1 2396 0
	movq	-216(%rbp), %rax	# copy, tmp1113
	movq	40(%rax), %rdx	# copy_471->fld[4].rtvec, D.17542
	movq	-288(%rbp), %rax	# map, tmp1114
	movq	%rdx, 104(%rax)	# D.17542, map_24(D)->copy_asm_constraints_vector
.L391:
	.loc 1 2399 0
	movq	-216(%rbp), %rax	# copy, D.17523
.L310:
	.loc 1 2400 0
	addq	$312, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	copy_rtx_and_substitute, .-copy_rtx_and_substitute
	.globl	try_constants
	.type	try_constants, @function
try_constants:
.LFB19:
	.loc 1 2408 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# map, map
	.loc 1 2411 0
	movq	-48(%rbp), %rax	# map, tmp107
	movl	$0, 136(%rax)	#, map_2(D)->num_sets
	.loc 1 2417 0
	movq	-40(%rbp), %rax	# insn, tmp108
	leaq	32(%rax), %rdi	#, D.17547
	movq	-48(%rbp), %rdx	# map, tmp109
	movq	-40(%rbp), %rax	# insn, tmp110
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# tmp110,
	call	subst_constants	#
	.loc 1 2418 0
	call	apply_change_group	#
	.loc 1 2419 0
	movq	-40(%rbp), %rax	# insn, tmp111
	leaq	32(%rax), %rdi	#, D.17547
	movq	-48(%rbp), %rdx	# map, tmp112
	movq	-40(%rbp), %rax	# insn, tmp113
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp113,
	call	subst_constants	#
	.loc 1 2420 0
	call	apply_change_group	#
	.loc 1 2423 0
	movq	-40(%rbp), %rax	# insn, tmp114
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.17548
	movl	$0, %edx	#,
	movl	$mark_stores, %esi	#,
	movq	%rax, %rdi	# D.17548,
	call	note_stores	#
	.loc 1 2424 0
	movq	-48(%rbp), %rax	# map, tmp115
	movq	$0, 624(%rax)	#, map_2(D)->last_pc_value
	.loc 1 2430 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L394	#
.L401:
	.loc 1 2432 0
	movq	-48(%rbp), %rax	# map, tmp116
	movl	-24(%rbp), %edx	# i, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	addq	$9, %rdx	#, tmp119
	salq	$4, %rdx	#, tmp120
	addq	%rdx, %rax	# tmp120, tmp121
	movq	(%rax), %rax	# map_2(D)->equiv_sets[i_1].dest, D.17548
	movzwl	(%rax), %eax	# _9->code, D.17550
	cmpw	$61, %ax	#, D.17550
	jne	.L395	#,
.LBB49:
	.loc 1 2434 0
	movq	-48(%rbp), %rax	# map, tmp122
	movl	-24(%rbp), %edx	# i, tmp124
	movslq	%edx, %rdx	# tmp124, tmp123
	addq	$9, %rdx	#, tmp125
	salq	$4, %rdx	#, tmp126
	addq	%rdx, %rax	# tmp126, tmp127
	movq	(%rax), %rax	# map_2(D)->equiv_sets[i_1].dest, D.17548
	movl	8(%rax), %eax	# _11->fld[0].rtuint, D.17551
	movl	%eax, -20(%rbp)	# D.17551, regno
	.loc 1 2436 0
	movl	-20(%rbp), %eax	# regno, tmp128
	movslq	%eax, %rdx	# tmp128, D.17552
	movq	-48(%rbp), %rax	# map, tmp129
	movq	64(%rax), %rax	# map_2(D)->const_equiv_varray, D.17553
	movq	(%rax), %rax	# _15->num_elements, D.17552
	cmpq	%rax, %rdx	# D.17552, D.17552
	jb	.L396	#,
.LBB50:
	.loc 1 2436 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# map, tmp130
	movq	64(%rax), %rdx	# map_2(D)->const_equiv_varray, D.17553
	movq	global_const_equiv_varray(%rip), %rax	# global_const_equiv_varray, global_const_equiv_varray.173
	cmpq	%rax, %rdx	# global_const_equiv_varray.173, D.17553
	sete	%al	#, D.17554
	movzbl	%al, %eax	# D.17554, tmp131
	movl	%eax, -16(%rbp)	# tmp131, is_global
	movl	-20(%rbp), %eax	# regno, tmp132
	addl	$1, %eax	#, D.17549
	movslq	%eax, %rdx	# D.17549, D.17552
	movq	-48(%rbp), %rax	# map, tmp133
	movq	64(%rax), %rax	# map_2(D)->const_equiv_varray, D.17553
	movq	%rdx, %rsi	# D.17552,
	movq	%rax, %rdi	# D.17553,
	call	varray_grow	#
	movq	-48(%rbp), %rdx	# map, tmp134
	movq	%rax, 64(%rdx)	# D.17553, map_2(D)->const_equiv_varray
	cmpl	$0, -16(%rbp)	#, is_global
	je	.L396	#,
	movq	-48(%rbp), %rax	# map, tmp135
	movq	64(%rax), %rax	# map_2(D)->const_equiv_varray, global_const_equiv_varray.174
	movq	%rax, global_const_equiv_varray(%rip)	# global_const_equiv_varray.174, global_const_equiv_varray
.L396:
.LBE50:
	.loc 1 2437 0 is_stmt 1
	movq	-48(%rbp), %rax	# map, tmp136
	movq	64(%rax), %rax	# map_2(D)->const_equiv_varray, D.17553
	movl	-20(%rbp), %edx	# regno, tmp138
	movslq	%edx, %rdx	# tmp138, tmp137
	addq	$2, %rdx	#, tmp139
	salq	$4, %rdx	#, tmp140
	addq	%rdx, %rax	# tmp140, tmp141
	movq	(%rax), %rax	# _26->data.const_equiv[regno_13].rtx, D.17548
	testq	%rax, %rax	# D.17548
	je	.L397	#,
	.loc 1 2440 0
	movq	-48(%rbp), %rax	# map, tmp142
	movl	-24(%rbp), %edx	# i, tmp144
	movslq	%edx, %rdx	# tmp144, tmp143
	addq	$9, %rdx	#, tmp145
	salq	$4, %rdx	#, tmp146
	addq	%rdx, %rax	# tmp146, tmp147
	addq	$8, %rax	#, tmp148
	movq	(%rax), %rdx	# map_2(D)->equiv_sets[i_1].equiv, D.17548
	movq	-48(%rbp), %rax	# map, tmp149
	movq	64(%rax), %rax	# map_2(D)->const_equiv_varray, D.17553
	movl	-20(%rbp), %ecx	# regno, tmp151
	movslq	%ecx, %rcx	# tmp151, tmp150
	addq	$2, %rcx	#, tmp152
	salq	$4, %rcx	#, tmp153
	addq	%rcx, %rax	# tmp153, tmp154
	movq	(%rax), %rax	# _29->data.const_equiv[regno_13].rtx, D.17548
	movq	%rdx, %rsi	# D.17548,
	movq	%rax, %rdi	# D.17548,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17549
	jne	.L398	#,
.L397:
.LBB51:
	.loc 1 2443 0
	movq	-48(%rbp), %rax	# map, tmp155
	movl	-24(%rbp), %edx	# i, tmp157
	movslq	%edx, %rdx	# tmp157, tmp156
	addq	$9, %rdx	#, tmp158
	salq	$4, %rdx	#, tmp159
	addq	%rdx, %rax	# tmp159, tmp160
	movq	(%rax), %rax	# map_2(D)->equiv_sets[i_1].dest, D.17548
	movl	8(%rax), %eax	# _32->fld[0].rtuint, D.17551
	movl	%eax, %edx	# D.17551, D.17552
	movq	-48(%rbp), %rax	# map, tmp161
	movq	64(%rax), %rax	# map_2(D)->const_equiv_varray, D.17553
	movq	(%rax), %rax	# _35->num_elements, D.17552
	cmpq	%rax, %rdx	# D.17552, D.17552
	jb	.L399	#,
.LBB52:
	.loc 1 2443 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# map, tmp162
	movq	64(%rax), %rdx	# map_2(D)->const_equiv_varray, D.17553
	movq	global_const_equiv_varray(%rip), %rax	# global_const_equiv_varray, global_const_equiv_varray.175
	cmpq	%rax, %rdx	# global_const_equiv_varray.175, D.17553
	sete	%al	#, D.17554
	movzbl	%al, %eax	# D.17554, tmp163
	movl	%eax, -12(%rbp)	# tmp163, is_global
	movq	-48(%rbp), %rax	# map, tmp164
	movl	-24(%rbp), %edx	# i, tmp166
	movslq	%edx, %rdx	# tmp166, tmp165
	addq	$9, %rdx	#, tmp167
	salq	$4, %rdx	#, tmp168
	addq	%rdx, %rax	# tmp168, tmp169
	movq	(%rax), %rax	# map_2(D)->equiv_sets[i_1].dest, D.17548
	movl	8(%rax), %eax	# _41->fld[0].rtuint, D.17551
	addl	$1, %eax	#, D.17551
	movl	%eax, %edx	# D.17551, D.17552
	movq	-48(%rbp), %rax	# map, tmp170
	movq	64(%rax), %rax	# map_2(D)->const_equiv_varray, D.17553
	movq	%rdx, %rsi	# D.17552,
	movq	%rax, %rdi	# D.17553,
	call	varray_grow	#
	movq	-48(%rbp), %rdx	# map, tmp171
	movq	%rax, 64(%rdx)	# D.17553, map_2(D)->const_equiv_varray
	cmpl	$0, -12(%rbp)	#, is_global
	je	.L399	#,
	movq	-48(%rbp), %rax	# map, tmp172
	movq	64(%rax), %rax	# map_2(D)->const_equiv_varray, global_const_equiv_varray.176
	movq	%rax, global_const_equiv_varray(%rip)	# global_const_equiv_varray.176, global_const_equiv_varray
.L399:
.LBE52:
	.loc 1 2443 0 discriminator 2
	movq	-48(%rbp), %rax	# map, tmp173
	movq	64(%rax), %rdx	# map_2(D)->const_equiv_varray, D.17553
	movq	-48(%rbp), %rax	# map, tmp174
	movl	-24(%rbp), %ecx	# i, tmp176
	movslq	%ecx, %rcx	# tmp176, tmp175
	addq	$9, %rcx	#, tmp177
	salq	$4, %rcx	#, tmp178
	addq	%rcx, %rax	# tmp178, tmp179
	movq	(%rax), %rax	# map_2(D)->equiv_sets[i_1].dest, D.17548
	movl	8(%rax), %eax	# _49->fld[0].rtuint, D.17551
	movl	%eax, %eax	# D.17551, tmp180
	addq	$2, %rax	#, tmp181
	salq	$4, %rax	#, tmp182
	addq	%rdx, %rax	# D.17553, tmp183
	movq	%rax, -8(%rbp)	# tmp183, p
	movq	-48(%rbp), %rax	# map, tmp184
	movl	-24(%rbp), %edx	# i, tmp186
	movslq	%edx, %rdx	# tmp186, tmp185
	addq	$9, %rdx	#, tmp187
	salq	$4, %rdx	#, tmp188
	addq	%rdx, %rax	# tmp188, tmp189
	addq	$8, %rax	#, tmp190
	movq	(%rax), %rdx	# map_2(D)->equiv_sets[i_1].equiv, D.17548
	movq	-8(%rbp), %rax	# p, tmp191
	movq	%rdx, (%rax)	# D.17548, p_51->rtx
	movq	-48(%rbp), %rax	# map, tmp192
	movl	72(%rax), %edx	# map_2(D)->const_age, D.17551
	movq	-8(%rbp), %rax	# p, tmp193
	movl	%edx, 8(%rax)	# D.17551, p_51->age
.LBE51:
.LBE49:
	jmp	.L400	#
.L398:
	jmp	.L400	#
.L395:
	.loc 1 2446 0 is_stmt 1
	movq	-48(%rbp), %rax	# map, tmp194
	movl	-24(%rbp), %edx	# i, tmp196
	movslq	%edx, %rdx	# tmp196, tmp195
	addq	$9, %rdx	#, tmp197
	salq	$4, %rdx	#, tmp198
	addq	%rdx, %rax	# tmp198, tmp199
	movq	(%rax), %rdx	# map_2(D)->equiv_sets[i_1].dest, D.17548
	movq	global_rtl(%rip), %rax	# global_rtl, D.17548
	cmpq	%rax, %rdx	# D.17548, D.17548
	jne	.L400	#,
	.loc 1 2447 0
	movq	-48(%rbp), %rax	# map, tmp200
	movl	-24(%rbp), %edx	# i, tmp202
	movslq	%edx, %rdx	# tmp202, tmp201
	addq	$9, %rdx	#, tmp203
	salq	$4, %rdx	#, tmp204
	addq	%rdx, %rax	# tmp204, tmp205
	addq	$8, %rax	#, tmp206
	movq	(%rax), %rdx	# map_2(D)->equiv_sets[i_1].equiv, D.17548
	movq	-48(%rbp), %rax	# map, tmp207
	movq	%rdx, 624(%rax)	# D.17548, map_2(D)->last_pc_value
.L400:
	.loc 1 2430 0
	addl	$1, -24(%rbp)	#, i
.L394:
	.loc 1 2430 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# map, tmp208
	movl	136(%rax), %eax	# map_2(D)->num_sets, D.17549
	cmpl	-24(%rbp), %eax	# i, D.17549
	jg	.L401	#,
	.loc 1 2453 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	try_constants, .-try_constants
	.type	subst_constants, @function
subst_constants:
.LFB20:
	.loc 1 2476 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -152(%rbp)	# loc, loc
	movq	%rsi, -160(%rbp)	# insn, insn
	movq	%rdx, -168(%rbp)	# map, map
	movl	%ecx, -172(%rbp)	# memonly, memonly
	.loc 1 2477 0
	movq	-152(%rbp), %rax	# loc, tmp274
	movq	(%rax), %rax	# *loc_15(D), tmp275
	movq	%rax, -64(%rbp)	# tmp275, x
	.loc 1 2481 0
	call	num_validated_changes	#
	movl	%eax, -124(%rbp)	# tmp276, num_changes
	.loc 1 2482 0
	movq	$0, -96(%rbp)	#, new
	.loc 1 2483 0
	movl	$59, -136(%rbp)	#, op0_mode
	.loc 1 2485 0
	movq	-64(%rbp), %rax	# x, tmp277
	movzwl	(%rax), %eax	# x_16->code, D.17555
	movzwl	%ax, %eax	# D.17555, tmp278
	movl	%eax, -120(%rbp)	# tmp278, code
	.loc 1 2487 0
	movl	-120(%rbp), %eax	# code, tmp280
	subl	$25, %eax	#, tmp279
	cmpl	$43, %eax	#, tmp279
	ja	.L464	#,
	movl	%eax, %eax	# tmp279, tmp281
	movq	.L405(,%rax,8), %rax	#, tmp282
	jmp	*%rax	# tmp282
	.section	.rodata
	.align 8
	.align 4
.L405:
	.quad	.L465
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L406
	.quad	.L407
	.quad	.L407
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L465
	.quad	.L465
	.quad	.L465
	.quad	.L464
	.quad	.L465
	.quad	.L465
	.quad	.L464
	.quad	.L408
	.quad	.L464
	.quad	.L409
	.quad	.L464
	.quad	.L464
	.quad	.L410
	.quad	.L465
	.quad	.L465
	.text
.L407:
	.loc 1 2510 0
	movq	-64(%rbp), %rax	# x, tmp283
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _22->code, D.17555
	cmpw	$66, %ax	#, D.17555
	jne	.L412	#,
	.loc 1 2511 0
	movq	-64(%rbp), %rax	# x, tmp284
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	leaq	8(%rax), %rdi	#, D.17557
	movq	-168(%rbp), %rdx	# map, tmp285
	movq	-160(%rbp), %rax	# insn, tmp286
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp286,
	call	subst_constants	#
	.loc 1 2512 0
	jmp	.L402	#
.L412:
	jmp	.L402	#
.L408:
	.loc 1 2517 0
	cmpl	$0, -172(%rbp)	#, memonly
	jne	.L413	#,
.LBB53:
	.loc 1 2519 0
	movq	-64(%rbp), %rax	# x, tmp287
	movl	8(%rax), %eax	# x_16->fld[0].rtuint, D.17558
	movl	%eax, -116(%rbp)	# D.17558, regno
	.loc 1 2522 0
	cmpl	$52, -116(%rbp)	#, regno
	jg	.L414	#,
	.loc 1 2522 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# x, tmp288
	movzbl	3(%rax), %eax	# *x_16, D.17559
	andl	$8, %eax	#, D.17559
	testb	%al, %al	# D.17559
	jne	.L413	#,
.L414:
	.loc 1 2523 0 is_stmt 1
	movl	-116(%rbp), %eax	# regno, tmp289
	movslq	%eax, %rdx	# tmp289, D.17560
	movq	-168(%rbp), %rax	# map, tmp290
	movq	64(%rax), %rax	# map_27(D)->const_equiv_varray, D.17561
	movq	(%rax), %rax	# _34->num_elements, D.17560
	cmpq	%rax, %rdx	# D.17560, D.17560
	jae	.L413	#,
	.loc 1 2524 0
	movq	-168(%rbp), %rax	# map, tmp291
	movq	64(%rax), %rax	# map_27(D)->const_equiv_varray, D.17561
	movl	-116(%rbp), %edx	# regno, tmp293
	movslq	%edx, %rdx	# tmp293, tmp292
	addq	$2, %rdx	#, tmp294
	salq	$4, %rdx	#, tmp295
	addq	%rdx, %rax	# tmp295, tmp296
	movq	%rax, -56(%rbp)	# tmp296, p
	.loc 1 2525 0
	movq	-56(%rbp), %rax	# p, tmp297
	movq	(%rax), %rax	# p_37->rtx, D.17556
	.loc 1 2524 0
	testq	%rax, %rax	# D.17556
	je	.L413	#,
	.loc 1 2526 0
	movq	-56(%rbp), %rax	# p, tmp298
	movl	8(%rax), %edx	# p_37->age, D.17558
	movq	-168(%rbp), %rax	# map, tmp299
	movl	72(%rax), %eax	# map_27(D)->const_age, D.17558
	cmpl	%eax, %edx	# D.17558, D.17558
	jb	.L413	#,
	.loc 1 2527 0
	movq	-56(%rbp), %rax	# p, tmp300
	movq	(%rax), %rdx	# p_37->rtx, D.17556
	movq	-152(%rbp), %rsi	# loc, tmp301
	movq	-160(%rbp), %rax	# insn, tmp302
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp302,
	call	validate_change	#
.LBE53:
	.loc 1 2529 0
	jmp	.L402	#
.L413:
	jmp	.L402	#
.L409:
	.loc 1 2537 0
	cmpl	$0, -172(%rbp)	#, memonly
	jne	.L415	#,
	.loc 1 2537 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# x, tmp303
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _42->code, D.17555
	cmpw	$61, %ax	#, D.17555
	jne	.L415	#,
.LBB54:
	.loc 1 2539 0 is_stmt 1
	movq	-64(%rbp), %rax	# x, tmp304
	movq	8(%rax), %rax	# x_16->fld[0].rtx, inner.177
	movq	%rax, -112(%rbp)	# inner.177, inner
	.loc 1 2540 0
	movq	$0, -48(%rbp)	#, new
	.loc 1 2547 0
	movq	-168(%rbp), %rdx	# map, tmp305
	leaq	-112(%rbp), %rax	#, tmp306
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp306,
	call	subst_constants	#
	.loc 1 2548 0
	movq	-64(%rbp), %rax	# x, tmp307
	movl	16(%rax), %ecx	# x_16->fld[1].rtuint, D.17558
	.loc 1 2549 0
	movq	-64(%rbp), %rax	# x, tmp308
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzbl	2(%rax), %eax	# _47->mode, D.17559
	.loc 1 2548 0
	movzbl	%al, %edx	# D.17559, D.17562
	movq	-112(%rbp), %rsi	# inner, inner.178
	movq	-64(%rbp), %rax	# x, tmp309
	movzbl	2(%rax), %eax	# x_16->mode, D.17559
	movzbl	%al, %eax	# D.17559, D.17562
	movl	%eax, %edi	# D.17562,
	call	simplify_gen_subreg	#
	movq	%rax, -48(%rbp)	# tmp310, new
	.loc 1 2552 0
	cmpq	$0, -48(%rbp)	#, new
	je	.L416	#,
	.loc 1 2553 0
	movq	-48(%rbp), %rdx	# new, tmp311
	movq	-152(%rbp), %rsi	# loc, tmp312
	movq	-160(%rbp), %rax	# insn, tmp313
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp313,
	call	validate_change	#
	jmp	.L417	#
.L416:
	.loc 1 2555 0
	movl	-124(%rbp), %eax	# num_changes, tmp314
	movl	%eax, %edi	# tmp314,
	call	cancel_changes	#
.L417:
	.loc 1 2557 0
	nop
	jmp	.L402	#
.L415:
.LBE54:
	.loc 1 2559 0
	jmp	.L418	#
.L410:
	.loc 1 2562 0
	movq	-64(%rbp), %rax	# x, tmp315
	leaq	8(%rax), %rdi	#, D.17557
	movq	-168(%rbp), %rdx	# map, tmp316
	movq	-160(%rbp), %rax	# insn, tmp317
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp317,
	call	subst_constants	#
	.loc 1 2565 0
	cmpl	$0, -172(%rbp)	#, memonly
	jne	.L419	#,
	.loc 1 2565 0 is_stmt 0 discriminator 1
	cmpq	$0, -160(%rbp)	#, insn
	je	.L419	#,
	call	num_validated_changes	#
	cmpl	-124(%rbp), %eax	# num_changes, D.17563
	je	.L419	#,
	.loc 1 2566 0 is_stmt 1
	movq	-64(%rbp), %rax	# x, tmp318
	movq	8(%rax), %rdx	# x_16->fld[0].rtx, D.17556
	movq	-64(%rbp), %rax	# x, tmp319
	movzbl	2(%rax), %eax	# x_16->mode, D.17559
	movzbl	%al, %eax	# D.17559, D.17562
	movq	%rdx, %rsi	# D.17556,
	movl	%eax, %edi	# D.17562,
	call	memory_address_p	#
	testl	%eax, %eax	# D.17563
	jne	.L419	#,
	.loc 1 2567 0
	movl	-124(%rbp), %eax	# num_changes, tmp320
	movl	%eax, %edi	# tmp320,
	call	cancel_changes	#
	.loc 1 2568 0
	jmp	.L402	#
.L419:
	jmp	.L402	#
.L406:
.LBB55:
	.loc 1 2575 0
	movq	-64(%rbp), %rax	# x, tmp324
	addq	$8, %rax	#, tmp323
	movq	%rax, -88(%rbp)	# tmp323, dest_loc
	.loc 1 2576 0
	movq	-88(%rbp), %rax	# dest_loc, tmp325
	movq	(%rax), %rax	# *dest_loc_60, tmp326
	movq	%rax, -80(%rbp)	# tmp326, dest
	.loc 1 2578 0
	movl	$0, -132(%rbp)	#, compare_mode
	.loc 1 2583 0
	movq	-64(%rbp), %rax	# x, tmp327
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.17556
	movzwl	(%rax), %eax	# _63->code, D.17555
	cmpw	$74, %ax	#, D.17555
	jne	.L420	#,
	.loc 1 2585 0
	movq	-64(%rbp), %rax	# x, tmp328
	movq	16(%rax), %rax	# x_16->fld[1].rtx, tmp329
	movq	%rax, -72(%rbp)	# tmp329, src
	.loc 1 2586 0
	movq	-72(%rbp), %rax	# src, tmp330
	movzbl	2(%rax), %eax	# src_65->mode, D.17559
	movzbl	%al, %eax	# D.17559, D.17563
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17564
	cmpl	$4, %eax	#, D.17564
	jne	.L420	#,
	.loc 1 2592 0
	movq	-72(%rbp), %rax	# src, tmp332
	movq	8(%rax), %rax	# src_65->fld[0].rtx, D.17556
	movzbl	2(%rax), %eax	# _69->mode, D.17559
	movzbl	%al, %eax	# D.17559, tmp333
	movl	%eax, -132(%rbp)	# tmp333, compare_mode
	.loc 1 2593 0
	cmpl	$0, -132(%rbp)	#, compare_mode
	jne	.L420	#,
	.loc 1 2594 0
	movq	-72(%rbp), %rax	# src, tmp334
	movq	16(%rax), %rax	# src_65->fld[1].rtx, D.17556
	movzbl	2(%rax), %eax	# _72->mode, D.17559
	movzbl	%al, %eax	# D.17559, tmp335
	movl	%eax, -132(%rbp)	# tmp335, compare_mode
.L420:
	.loc 1 2598 0
	movq	-64(%rbp), %rax	# x, tmp336
	leaq	16(%rax), %rdi	#, D.17557
	movl	-172(%rbp), %ecx	# memonly, tmp337
	movq	-168(%rbp), %rdx	# map, tmp338
	movq	-160(%rbp), %rax	# insn, tmp339
	movq	%rax, %rsi	# tmp339,
	call	subst_constants	#
	.loc 1 2599 0
	movq	-64(%rbp), %rax	# x, tmp340
	movq	16(%rax), %rax	# x_16->fld[1].rtx, tmp341
	movq	%rax, -72(%rbp)	# tmp341, src
	.loc 1 2601 0
	jmp	.L421	#
.L423:
	.loc 1 2605 0
	movq	-88(%rbp), %rax	# dest_loc, tmp342
	movq	(%rax), %rax	# *dest_loc_8, D.17556
	movzwl	(%rax), %eax	# _171->code, D.17555
	cmpw	$133, %ax	#, D.17555
	jne	.L422	#,
	.loc 1 2607 0
	movq	-88(%rbp), %rax	# dest_loc, tmp343
	movq	(%rax), %rax	# *dest_loc_8, D.17556
	leaq	16(%rax), %rdi	#, D.17557
	movl	-172(%rbp), %ecx	# memonly, tmp344
	movq	-168(%rbp), %rdx	# map, tmp345
	movq	-160(%rbp), %rax	# insn, tmp346
	movq	%rax, %rsi	# tmp346,
	call	subst_constants	#
	.loc 1 2608 0
	movq	-88(%rbp), %rax	# dest_loc, tmp347
	movq	(%rax), %rax	# *dest_loc_8, D.17556
	leaq	24(%rax), %rdi	#, D.17557
	movl	-172(%rbp), %ecx	# memonly, tmp348
	movq	-168(%rbp), %rdx	# map, tmp349
	movq	-160(%rbp), %rax	# insn, tmp350
	movq	%rax, %rsi	# tmp350,
	call	subst_constants	#
.L422:
	.loc 1 2610 0
	movq	-88(%rbp), %rax	# dest_loc, tmp351
	movq	(%rax), %rax	# *dest_loc_8, D.17556
	addq	$8, %rax	#, tmp352
	movq	%rax, -88(%rbp)	# tmp352, dest_loc
.L421:
	.loc 1 2601 0 discriminator 1
	movq	-88(%rbp), %rax	# dest_loc, tmp353
	movq	(%rax), %rax	# *dest_loc_8, D.17556
	movzwl	(%rax), %eax	# _77->code, D.17555
	cmpw	$133, %ax	#, D.17555
	je	.L423	#,
	.loc 1 2602 0
	movq	-88(%rbp), %rax	# dest_loc, tmp354
	movq	(%rax), %rax	# *dest_loc_8, D.17556
	movzwl	(%rax), %eax	# _79->code, D.17555
	cmpw	$63, %ax	#, D.17555
	je	.L423	#,
	.loc 1 2603 0
	movq	-88(%rbp), %rax	# dest_loc, tmp355
	movq	(%rax), %rax	# *dest_loc_8, D.17556
	movzwl	(%rax), %eax	# _81->code, D.17555
	cmpw	$64, %ax	#, D.17555
	je	.L423	#,
	.loc 1 2614 0
	movq	-88(%rbp), %rax	# dest_loc, tmp356
	movq	(%rax), %rax	# *dest_loc_8, D.17556
	movzwl	(%rax), %eax	# _83->code, D.17555
	cmpw	$66, %ax	#, D.17555
	jne	.L424	#,
	.loc 1 2615 0
	movq	-88(%rbp), %rax	# dest_loc, tmp357
	movq	(%rax), %rax	# *dest_loc_8, D.17556
	leaq	8(%rax), %rdi	#, D.17557
	movq	-168(%rbp), %rdx	# map, tmp358
	movq	-160(%rbp), %rax	# insn, tmp359
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp359,
	call	subst_constants	#
.L424:
	.loc 1 2621 0
	movq	-80(%rbp), %rax	# dest, tmp360
	movzwl	(%rax), %eax	# dest_61->code, D.17555
	cmpw	$63, %ax	#, D.17555
	jne	.L425	#,
	.loc 1 2622 0
	movq	-80(%rbp), %rax	# dest, tmp361
	movzbl	2(%rax), %eax	# dest_61->mode, D.17559
	movzbl	%al, %eax	# D.17559, D.17563
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17559
	movzbl	%al, %edx	# D.17559, D.17563
	movl	target_flags(%rip), %eax	# target_flags, target_flags.180
	andl	$33554432, %eax	#, D.17563
	testl	%eax, %eax	# D.17563
	je	.L426	#,
	.loc 1 2622 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.179
	jmp	.L427	#
.L426:
	.loc 1 2622 0 discriminator 2
	movl	$4, %eax	#, iftmp.179
.L427:
	.loc 1 2622 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.179, D.17563
	jg	.L425	#,
	.loc 1 2623 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp363
	movq	8(%rax), %rax	# dest_61->fld[0].rtx, D.17556
	movzbl	2(%rax), %eax	# _96->mode, D.17559
	movzbl	%al, %eax	# D.17559, D.17563
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17559
	movzbl	%al, %edx	# D.17559, D.17563
	movl	target_flags(%rip), %eax	# target_flags, target_flags.182
	andl	$33554432, %eax	#, D.17563
	testl	%eax, %eax	# D.17563
	je	.L428	#,
	.loc 1 2623 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.181
	jmp	.L429	#
.L428:
	.loc 1 2623 0 discriminator 2
	movl	$4, %eax	#, iftmp.181
.L429:
	.loc 1 2623 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.181, D.17563
	jg	.L425	#,
	.loc 1 2624 0 is_stmt 1
	movq	-80(%rbp), %rax	# dest, tmp365
	movq	8(%rax), %rax	# dest_61->fld[0].rtx, D.17556
	movzbl	2(%rax), %eax	# _105->mode, D.17559
	movzbl	%al, %eax	# D.17559, D.17563
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17559
	.loc 1 2625 0
	movq	-80(%rbp), %rax	# dest, tmp367
	movzbl	2(%rax), %eax	# dest_61->mode, D.17559
	movzbl	%al, %eax	# D.17559, D.17563
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17559
	.loc 1 2624 0
	cmpb	%al, %dl	# D.17559, D.17559
	ja	.L425	#,
	.loc 1 2626 0
	movq	-80(%rbp), %rax	# dest, tmp369
	movq	8(%rax), %rax	# dest_61->fld[0].rtx, D.17556
	movzbl	2(%rax), %eax	# _112->mode, D.17559
	movzbl	%al, %eax	# D.17559, D.17562
	movq	-72(%rbp), %rdx	# src, tmp370
	movq	%rdx, %rsi	# tmp370,
	movl	%eax, %edi	# D.17562,
	call	gen_lowpart_if_possible	#
	movq	%rax, -40(%rbp)	# tmp371, tem
	cmpq	$0, -40(%rbp)	#, tem
	je	.L425	#,
	.loc 1 2628 0
	movq	-40(%rbp), %rax	# tem, tmp372
	movq	%rax, -72(%rbp)	# tmp372, src
	movq	-80(%rbp), %rax	# dest, tmp373
	movq	8(%rax), %rax	# dest_61->fld[0].rtx, tmp374
	movq	%rax, -80(%rbp)	# tmp374, dest
.L425:
	.loc 1 2631 0
	movq	-168(%rbp), %rax	# map, tmp375
	movl	136(%rax), %eax	# map_27(D)->num_sets, D.17563
	cmpl	$29, %eax	#, D.17563
	jg	.L430	#,
	.loc 1 2632 0
	movq	-72(%rbp), %rax	# src, tmp376
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$67, %ax	#, D.17555
	je	.L431	#,
	.loc 1 2632 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# src, tmp377
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$68, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp378
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$54, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp379
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$55, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp380
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$58, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp381
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$134, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp382
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$56, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp383
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$140, %ax	#, D.17555
	je	.L431	#,
	.loc 1 2633 0 is_stmt 1
	movq	-72(%rbp), %rax	# src, tmp384
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$61, %ax	#, D.17555
	jne	.L432	#,
	.loc 1 2634 0
	movq	-72(%rbp), %rax	# src, tmp385
	movl	8(%rax), %eax	# src_10->fld[0].rtuint, D.17558
	cmpl	$53, %eax	#, D.17558
	je	.L431	#,
	.loc 1 2635 0
	movq	-72(%rbp), %rax	# src, tmp386
	movl	8(%rax), %eax	# src_10->fld[0].rtuint, D.17558
	cmpl	$54, %eax	#, D.17558
	je	.L431	#,
.L432:
	.loc 1 2636 0
	movq	-72(%rbp), %rax	# src, tmp387
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$75, %ax	#, D.17555
	jne	.L433	#,
	.loc 1 2637 0
	movq	-72(%rbp), %rax	# src, tmp388
	movq	8(%rax), %rax	# src_10->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _131->code, D.17555
	cmpw	$61, %ax	#, D.17555
	jne	.L433	#,
	.loc 1 2638 0
	movq	-72(%rbp), %rax	# src, tmp389
	movq	8(%rax), %rax	# src_10->fld[0].rtx, D.17556
	movl	8(%rax), %eax	# _133->fld[0].rtuint, D.17558
	cmpl	$53, %eax	#, D.17558
	je	.L434	#,
	.loc 1 2639 0
	movq	-72(%rbp), %rax	# src, tmp390
	movq	8(%rax), %rax	# src_10->fld[0].rtx, D.17556
	movl	8(%rax), %eax	# _135->fld[0].rtuint, D.17558
	cmpl	$54, %eax	#, D.17558
	jne	.L433	#,
.L434:
	.loc 1 2640 0
	movq	-72(%rbp), %rax	# src, tmp391
	movq	16(%rax), %rax	# src_10->fld[1].rtx, D.17556
	movzwl	(%rax), %eax	# _137->code, D.17555
	cmpw	$67, %ax	#, D.17555
	je	.L431	#,
	.loc 1 2640 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# src, tmp392
	movq	16(%rax), %rax	# src_10->fld[1].rtx, D.17556
	movzwl	(%rax), %eax	# _139->code, D.17555
	cmpw	$68, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp393
	movq	16(%rax), %rax	# src_10->fld[1].rtx, D.17556
	movzwl	(%rax), %eax	# _141->code, D.17555
	cmpw	$54, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp394
	movq	16(%rax), %rax	# src_10->fld[1].rtx, D.17556
	movzwl	(%rax), %eax	# _143->code, D.17555
	cmpw	$55, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp395
	movq	16(%rax), %rax	# src_10->fld[1].rtx, D.17556
	movzwl	(%rax), %eax	# _145->code, D.17555
	cmpw	$58, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp396
	movq	16(%rax), %rax	# src_10->fld[1].rtx, D.17556
	movzwl	(%rax), %eax	# _147->code, D.17555
	cmpw	$134, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp397
	movq	16(%rax), %rax	# src_10->fld[1].rtx, D.17556
	movzwl	(%rax), %eax	# _149->code, D.17555
	cmpw	$56, %ax	#, D.17555
	je	.L431	#,
	movq	-72(%rbp), %rax	# src, tmp398
	movq	16(%rax), %rax	# src_10->fld[1].rtx, D.17556
	movzwl	(%rax), %eax	# _151->code, D.17555
	cmpw	$140, %ax	#, D.17555
	je	.L431	#,
.L433:
	.loc 1 2641 0 is_stmt 1
	movq	-72(%rbp), %rax	# src, tmp399
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$74, %ax	#, D.17555
	je	.L431	#,
	.loc 1 2645 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.17556
	cmpq	-80(%rbp), %rax	# dest, D.17556
	jne	.L430	#,
	.loc 1 2646 0
	movq	global_rtl(%rip), %rax	# global_rtl, D.17556
	cmpq	-72(%rbp), %rax	# src, D.17556
	je	.L431	#,
	.loc 1 2646 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# src, tmp400
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$51, %ax	#, D.17555
	je	.L431	#,
	.loc 1 2647 0 is_stmt 1
	movq	-72(%rbp), %rax	# src, tmp401
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$67, %ax	#, D.17555
	jne	.L430	#,
.L431:
.LBB56:
	.loc 1 2652 0
	movq	-72(%rbp), %rax	# src, tmp402
	movq	%rax, %rdi	# tmp402,
	call	copy_rtx	#
	movq	%rax, -32(%rbp)	# tmp403, src_copy
	.loc 1 2653 0
	movq	-168(%rbp), %rax	# map, tmp404
	movl	136(%rax), %edx	# map_27(D)->num_sets, D.17563
	movq	-168(%rbp), %rax	# map, tmp405
	movslq	%edx, %rdx	# D.17563, tmp406
	addq	$9, %rdx	#, tmp407
	salq	$4, %rdx	#, tmp408
	addq	%rdx, %rax	# tmp408, tmp409
	leaq	8(%rax), %rdx	#, tmp410
	movq	-32(%rbp), %rax	# src_copy, tmp411
	movq	%rax, (%rdx)	# tmp411, map_27(D)->equiv_sets[_159].equiv
	.loc 1 2654 0
	movq	-168(%rbp), %rax	# map, tmp412
	movl	136(%rax), %eax	# map_27(D)->num_sets, D.17563
	leal	1(%rax), %ecx	#, D.17563
	movq	-168(%rbp), %rdx	# map, tmp413
	movl	%ecx, 136(%rdx)	# D.17563, map_27(D)->num_sets
	movq	-168(%rbp), %rdx	# map, tmp414
	cltq
	addq	$9, %rax	#, tmp416
	salq	$4, %rax	#, tmp417
	addq	%rax, %rdx	# tmp417, tmp418
	movq	-80(%rbp), %rax	# dest, tmp419
	movq	%rax, (%rdx)	# tmp419, map_27(D)->equiv_sets[_161].dest
	.loc 1 2655 0
	cmpl	$0, -132(%rbp)	#, compare_mode
	je	.L430	#,
	.loc 1 2656 0
	movq	-72(%rbp), %rax	# src, tmp420
	movzwl	(%rax), %eax	# src_10->code, D.17555
	cmpw	$74, %ax	#, D.17555
	jne	.L430	#,
	.loc 1 2657 0
	movq	-72(%rbp), %rax	# src, tmp421
	movzbl	2(%rax), %eax	# src_10->mode, D.17559
	movzbl	%al, %eax	# D.17559, D.17563
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17564
	cmpl	$4, %eax	#, D.17564
	jne	.L430	#,
	.loc 1 2662 0
	movq	-72(%rbp), %rax	# src, tmp423
	movq	8(%rax), %rax	# src_10->fld[0].rtx, D.17556
	movzbl	2(%rax), %eax	# _167->mode, D.17559
	testb	%al, %al	# D.17559
	jne	.L430	#,
	.loc 1 2663 0
	movq	-72(%rbp), %rax	# src, tmp424
	movq	16(%rax), %rax	# src_10->fld[1].rtx, D.17556
	movzbl	2(%rax), %eax	# _169->mode, D.17559
	testb	%al, %al	# D.17559
	jne	.L430	#,
	.loc 1 2665 0
	movq	-168(%rbp), %rax	# map, tmp425
	movq	-32(%rbp), %rdx	# src_copy, tmp426
	movq	%rdx, 632(%rax)	# tmp426, map_27(D)->compare_src
	.loc 1 2666 0
	movq	-168(%rbp), %rax	# map, tmp427
	movl	-132(%rbp), %edx	# compare_mode, tmp428
	movl	%edx, 640(%rax)	# tmp428, map_27(D)->compare_mode
.LBE56:
.LBE55:
	.loc 1 2670 0
	jmp	.L402	#
.L430:
	jmp	.L402	#
.L464:
	.loc 1 2673 0
	nop
.L418:
	.loc 1 2676 0
	movl	-120(%rbp), %eax	# code, code.183
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp430
	movq	%rax, -104(%rbp)	# tmp430, format_ptr
	.loc 1 2679 0
	movq	-104(%rbp), %rax	# format_ptr, tmp431
	movzbl	(%rax), %eax	# *format_ptr_180, D.17565
	cmpb	$101, %al	#, D.17565
	jne	.L435	#,
	.loc 1 2680 0
	movq	-64(%rbp), %rax	# x, tmp432
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzbl	2(%rax), %eax	# _182->mode, D.17559
	movzbl	%al, %eax	# D.17559, tmp433
	movl	%eax, -136(%rbp)	# tmp433, op0_mode
.L435:
	.loc 1 2682 0
	movl	$0, -144(%rbp)	#, i
	jmp	.L436	#
.L448:
	.loc 1 2684 0
	movq	-104(%rbp), %rax	# format_ptr, format_ptr.184
	leaq	1(%rax), %rdx	#, tmp434
	movq	%rdx, -104(%rbp)	# tmp434, format_ptr
	movzbl	(%rax), %eax	# *format_ptr.184_189, D.17565
	movsbl	%al, %eax	# D.17565, D.17563
	subl	$48, %eax	#, tmp435
	cmpl	$71, %eax	#, tmp435
	ja	.L437	#,
	movl	%eax, %eax	# tmp435, tmp436
	movq	.L439(,%rax,8), %rax	#, tmp437
	jmp	*%rax	# tmp437
	.section	.rodata
	.align 8
	.align 4
.L439:
	.quad	.L466
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L440
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L441
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L466
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L466
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L437
	.quad	.L466
	.quad	.L466
	.quad	.L466
	.quad	.L437
	.quad	.L466
	.text
.L441:
	.loc 1 2690 0
	movq	-64(%rbp), %rax	# x, tmp438
	movl	-144(%rbp), %edx	# i, tmp440
	movslq	%edx, %rdx	# tmp440, tmp439
	movq	8(%rax,%rdx,8), %rax	# x_16->fld[i_1].rtx, D.17556
	testq	%rax, %rax	# D.17556
	je	.L444	#,
	.loc 1 2691 0
	movl	-144(%rbp), %eax	# i, tmp442
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp443
	movq	-64(%rbp), %rax	# x, tmp445
	addq	%rdx, %rax	# tmp443, tmp444
	leaq	8(%rax), %rdi	#, D.17557
	movl	-172(%rbp), %ecx	# memonly, tmp446
	movq	-168(%rbp), %rdx	# map, tmp447
	movq	-160(%rbp), %rax	# insn, tmp448
	movq	%rax, %rsi	# tmp448,
	call	subst_constants	#
	.loc 1 2692 0
	jmp	.L443	#
.L444:
	jmp	.L443	#
.L440:
	.loc 1 2703 0
	movq	-64(%rbp), %rax	# x, tmp449
	movl	-144(%rbp), %edx	# i, tmp451
	movslq	%edx, %rdx	# tmp451, tmp450
	movq	8(%rax,%rdx,8), %rax	# x_16->fld[i_1].rtvec, D.17566
	testq	%rax, %rax	# D.17566
	je	.L445	#,
	.loc 1 2703 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# x, tmp452
	movl	-144(%rbp), %edx	# i, tmp454
	movslq	%edx, %rdx	# tmp454, tmp453
	movq	8(%rax,%rdx,8), %rax	# x_16->fld[i_1].rtvec, D.17566
	movl	(%rax), %eax	# _196->num_elem, D.17563
	testl	%eax, %eax	# D.17563
	je	.L445	#,
	.loc 1 2704 0 is_stmt 1
	movl	$0, -140(%rbp)	#, j
	jmp	.L446	#
.L447:
	.loc 1 2705 0 discriminator 2
	movq	-64(%rbp), %rax	# x, tmp455
	movl	-144(%rbp), %edx	# i, tmp457
	movslq	%edx, %rdx	# tmp457, tmp456
	movq	8(%rax,%rdx,8), %rax	# x_16->fld[i_1].rtvec, D.17566
	movl	-140(%rbp), %edx	# j, tmp459
	movslq	%edx, %rdx	# tmp459, tmp458
	salq	$3, %rdx	#, tmp460
	addq	%rdx, %rax	# tmp460, tmp461
	leaq	8(%rax), %rdi	#, D.17557
	movl	-172(%rbp), %ecx	# memonly, tmp462
	movq	-168(%rbp), %rdx	# map, tmp463
	movq	-160(%rbp), %rax	# insn, tmp464
	movq	%rax, %rsi	# tmp464,
	call	subst_constants	#
	.loc 1 2704 0 discriminator 2
	addl	$1, -140(%rbp)	#, j
.L446:
	.loc 1 2704 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# x, tmp465
	movl	-144(%rbp), %edx	# i, tmp467
	movslq	%edx, %rdx	# tmp467, tmp466
	movq	8(%rax,%rdx,8), %rax	# x_16->fld[i_1].rtvec, D.17566
	movl	(%rax), %eax	# _199->num_elem, D.17563
	cmpl	-140(%rbp), %eax	# j, D.17563
	jg	.L447	#,
.L445:
	.loc 1 2707 0 is_stmt 1
	jmp	.L443	#
.L437:
	.loc 1 2710 0
	movl	$__FUNCTION__.14346, %edx	#,
	movl	$2710, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L466:
	.loc 1 2687 0
	nop
.L443:
	.loc 1 2682 0
	addl	$1, -144(%rbp)	#, i
.L436:
	.loc 1 2682 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax	# code, code.185
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.17559
	movzbl	%al, %eax	# D.17559, D.17563
	cmpl	-144(%rbp), %eax	# i, D.17563
	jg	.L448	#,
	.loc 1 2716 0 is_stmt 1
	cmpl	$0, -172(%rbp)	#, memonly
	jne	.L449	#,
	.loc 1 2717 0
	movl	-120(%rbp), %eax	# code, code.186
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17565
	cmpb	$99, %al	#, D.17565
	je	.L450	#,
	.loc 1 2717 0 is_stmt 0 discriminator 1
	cmpl	$102, -120(%rbp)	#, code
	je	.L450	#,
	cmpl	$103, -120(%rbp)	#, code
	jne	.L449	#,
.L450:
	.loc 1 2718 0 is_stmt 1
	movq	-64(%rbp), %rax	# x, tmp470
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _207->code, D.17555
	cmpw	$67, %ax	#, D.17555
	je	.L451	#,
	.loc 1 2718 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# x, tmp471
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _209->code, D.17555
	cmpw	$68, %ax	#, D.17555
	je	.L451	#,
	.loc 1 2718 0 discriminator 1
	movq	-64(%rbp), %rax	# x, tmp472
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _211->code, D.17555
	cmpw	$54, %ax	#, D.17555
	je	.L451	#,
	movq	-64(%rbp), %rax	# x, tmp473
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _213->code, D.17555
	cmpw	$55, %ax	#, D.17555
	je	.L451	#,
	movq	-64(%rbp), %rax	# x, tmp474
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _215->code, D.17555
	cmpw	$58, %ax	#, D.17555
	je	.L451	#,
	movq	-64(%rbp), %rax	# x, tmp475
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _217->code, D.17555
	cmpw	$134, %ax	#, D.17555
	je	.L451	#,
	movq	-64(%rbp), %rax	# x, tmp476
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _219->code, D.17555
	cmpw	$56, %ax	#, D.17555
	je	.L451	#,
	movq	-64(%rbp), %rax	# x, tmp477
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzwl	(%rax), %eax	# _221->code, D.17555
	cmpw	$140, %ax	#, D.17555
	jne	.L449	#,
.L451:
	movq	-64(%rbp), %rax	# x, tmp478
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.17556
	movzwl	(%rax), %eax	# _223->code, D.17555
	cmpw	$54, %ax	#, D.17555
	je	.L449	#,
.LBB57:
	.loc 1 2720 0 is_stmt 1
	movq	-64(%rbp), %rax	# x, tmp479
	movq	8(%rax), %rax	# x_16->fld[0].rtx, tmp480
	movq	%rax, -24(%rbp)	# tmp480, tem
	.loc 1 2721 0
	movq	-64(%rbp), %rax	# x, tmp481
	movq	16(%rax), %rdx	# x_16->fld[1].rtx, D.17556
	movq	-64(%rbp), %rax	# x, tmp482
	leaq	8(%rax), %rsi	#, D.17557
	movq	-160(%rbp), %rax	# insn, tmp483
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp483,
	call	validate_change	#
	.loc 1 2722 0
	movq	-64(%rbp), %rax	# x, tmp484
	leaq	16(%rax), %rsi	#, D.17557
	movq	-24(%rbp), %rdx	# tem, tmp485
	movq	-160(%rbp), %rax	# insn, tmp486
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp486,
	call	validate_change	#
.L449:
.LBE57:
	.loc 1 2726 0
	cmpl	$0, -172(%rbp)	#, memonly
	jne	.L452	#,
	.loc 1 2727 0
	movl	-120(%rbp), %eax	# code, code.187
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17565
	movsbl	%al, %eax	# D.17565, D.17563
	subl	$49, %eax	#, tmp488
	cmpl	$50, %eax	#, tmp488
	ja	.L452	#,
	movl	%eax, %eax	# tmp488, tmp489
	movq	.L454(,%rax,8), %rax	#, tmp490
	jmp	*%rax	# tmp490
	.section	.rodata
	.align 8
	.align 4
.L454:
	.quad	.L453
	.quad	.L455
	.quad	.L456
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L457
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L452
	.quad	.L456
	.quad	.L455
	.text
.L453:
	.loc 1 2730 0
	cmpl	$59, -136(%rbp)	#, op0_mode
	jne	.L458	#,
	.loc 1 2731 0
	movl	$__FUNCTION__.14346, %edx	#,
	movl	$2731, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L458:
	.loc 1 2732 0
	movq	-64(%rbp), %rax	# x, tmp491
	movq	8(%rax), %rdx	# x_16->fld[0].rtx, D.17556
	movq	-64(%rbp), %rax	# x, tmp492
	movzbl	2(%rax), %eax	# x_16->mode, D.17559
	movzbl	%al, %esi	# D.17559, D.17562
	movl	-136(%rbp), %ecx	# op0_mode, tmp493
	movl	-120(%rbp), %eax	# code, tmp494
	movl	%eax, %edi	# tmp494,
	call	simplify_unary_operation	#
	movq	%rax, -96(%rbp)	# tmp495, new
	.loc 1 2734 0
	jmp	.L452	#
.L457:
.LBB58:
	.loc 1 2738 0
	movq	-64(%rbp), %rax	# x, tmp496
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.17556
	movzbl	2(%rax), %eax	# _236->mode, D.17559
	movzbl	%al, %eax	# D.17559, tmp497
	movl	%eax, -128(%rbp)	# tmp497, op_mode
	.loc 1 2740 0
	cmpl	$0, -128(%rbp)	#, op_mode
	jne	.L459	#,
	.loc 1 2741 0
	movq	-64(%rbp), %rax	# x, tmp498
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.17556
	movzbl	2(%rax), %eax	# _239->mode, D.17559
	movzbl	%al, %eax	# D.17559, tmp499
	movl	%eax, -128(%rbp)	# tmp499, op_mode
.L459:
	.loc 1 2742 0
	movq	-64(%rbp), %rax	# x, tmp500
	movq	16(%rax), %rcx	# x_16->fld[1].rtx, D.17556
	movq	-64(%rbp), %rax	# x, tmp501
	movq	8(%rax), %rdx	# x_16->fld[0].rtx, D.17556
	movl	-128(%rbp), %esi	# op_mode, tmp502
	movl	-120(%rbp), %eax	# code, tmp503
	movl	%eax, %edi	# tmp503,
	call	simplify_relational_operation	#
	movq	%rax, -96(%rbp)	# tmp504, new
	.loc 1 2760 0
	jmp	.L452	#
.L455:
.LBE58:
	.loc 1 2765 0
	movq	-64(%rbp), %rax	# x, tmp505
	movq	16(%rax), %rcx	# x_16->fld[1].rtx, D.17556
	movq	-64(%rbp), %rax	# x, tmp506
	movq	8(%rax), %rdx	# x_16->fld[0].rtx, D.17556
	movq	-64(%rbp), %rax	# x, tmp507
	movzbl	2(%rax), %eax	# x_16->mode, D.17559
	movzbl	%al, %esi	# D.17559, D.17562
	movl	-120(%rbp), %eax	# code, tmp508
	movl	%eax, %edi	# tmp508,
	call	simplify_binary_operation	#
	movq	%rax, -96(%rbp)	# tmp509, new
	.loc 1 2767 0
	jmp	.L452	#
.L456:
	.loc 1 2771 0
	cmpl	$59, -136(%rbp)	#, op0_mode
	jne	.L460	#,
	.loc 1 2772 0
	movl	$__FUNCTION__.14346, %edx	#,
	movl	$2772, %esi	#,
	movl	$.LC15, %edi	#,
	call	fancy_abort	#
.L460:
	.loc 1 2774 0
	cmpl	$72, -120(%rbp)	#, code
	jne	.L461	#,
.LBB59:
	.loc 1 2776 0
	movq	-64(%rbp), %rax	# x, tmp510
	movq	8(%rax), %rax	# x_16->fld[0].rtx, tmp511
	movq	%rax, -16(%rbp)	# tmp511, op0
	.loc 1 2778 0
	movq	-16(%rbp), %rax	# op0, tmp512
	movzwl	(%rax), %eax	# op0_250->code, D.17555
	movzwl	%ax, %eax	# D.17555, D.17563
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17565
	cmpb	$60, %al	#, D.17565
	jne	.L461	#,
	.loc 1 2779 0
	movq	-16(%rbp), %rax	# op0, tmp514
	movzbl	2(%rax), %eax	# op0_250->mode, D.17559
	testb	%al, %al	# D.17559
	jne	.L461	#,
	.loc 1 2780 0
	movq	-16(%rbp), %rax	# op0, tmp515
	movq	%rax, %rdi	# tmp515,
	call	side_effects_p	#
	testl	%eax, %eax	# D.17563
	jne	.L461	#,
	.loc 1 2781 0
	movq	-16(%rbp), %rax	# op0, tmp516
	movq	8(%rax), %rdx	# op0_250->fld[0].rtx, D.17556
	movq	-168(%rbp), %rax	# map, tmp517
	movq	632(%rax), %rax	# map_27(D)->compare_src, D.17556
	cmpq	%rax, %rdx	# D.17556, D.17556
	jne	.L461	#,
	.loc 1 2782 0
	movq	-16(%rbp), %rax	# op0, tmp518
	movq	16(%rax), %rax	# op0_250->fld[1].rtx, D.17556
	movzbl	2(%rax), %eax	# _258->mode, D.17559
	testb	%al, %al	# D.17559
	jne	.L461	#,
.LBB60:
	.loc 1 2787 0
	movq	-16(%rbp), %rax	# op0, tmp519
	movq	16(%rax), %rcx	# op0_250->fld[1].rtx, D.17556
	movq	-16(%rbp), %rax	# op0, tmp520
	movq	8(%rax), %rdx	# op0_250->fld[0].rtx, D.17556
	movq	-168(%rbp), %rax	# map, tmp521
	movl	640(%rax), %esi	# map_27(D)->compare_mode, D.17562
	movq	-16(%rbp), %rax	# op0, tmp522
	movzwl	(%rax), %eax	# op0_250->code, D.17555
	movzwl	%ax, %eax	# D.17555, D.17567
	.loc 1 2786 0
	movl	%eax, %edi	# D.17567,
	call	simplify_relational_operation	#
	movq	%rax, -8(%rbp)	# tmp523, temp
	.loc 1 2792 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17556
	cmpq	-8(%rbp), %rax	# temp, D.17556
	jne	.L462	#,
	.loc 1 2793 0
	movq	-64(%rbp), %rax	# x, tmp524
	movq	24(%rax), %rax	# x_16->fld[2].rtx, tmp525
	movq	%rax, -96(%rbp)	# tmp525, new
	jmp	.L461	#
.L462:
	.loc 1 2794 0
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.17556
	cmpq	-8(%rbp), %rax	# temp, D.17556
	jne	.L461	#,
	.loc 1 2795 0
	movq	-64(%rbp), %rax	# x, tmp526
	movq	16(%rax), %rax	# x_16->fld[1].rtx, tmp527
	movq	%rax, -96(%rbp)	# tmp527, new
.L461:
.LBE60:
.LBE59:
	.loc 1 2798 0
	cmpq	$0, -96(%rbp)	#, new
	jne	.L463	#,
	.loc 1 2799 0
	movq	-64(%rbp), %rax	# x, tmp528
	movq	24(%rax), %r8	# x_16->fld[2].rtx, D.17556
	movq	-64(%rbp), %rax	# x, tmp529
	movq	16(%rax), %rdi	# x_16->fld[1].rtx, D.17556
	movq	-64(%rbp), %rax	# x, tmp530
	movq	8(%rax), %rcx	# x_16->fld[0].rtx, D.17556
	movq	-64(%rbp), %rax	# x, tmp531
	movzbl	2(%rax), %eax	# x_16->mode, D.17559
	movzbl	%al, %esi	# D.17559, D.17562
	movl	-136(%rbp), %edx	# op0_mode, tmp532
	movl	-120(%rbp), %eax	# code, tmp533
	movq	%r8, %r9	# D.17556,
	movq	%rdi, %r8	# D.17556,
	movl	%eax, %edi	# tmp533,
	call	simplify_ternary_operation	#
	movq	%rax, -96(%rbp)	# tmp534, new
	.loc 1 2802 0
	jmp	.L467	#
.L463:
.L467:
	nop
.L452:
	.loc 1 2805 0
	cmpq	$0, -96(%rbp)	#, new
	je	.L402	#,
	.loc 1 2806 0
	movq	-96(%rbp), %rdx	# new, tmp535
	movq	-152(%rbp), %rsi	# loc, tmp536
	movq	-160(%rbp), %rax	# insn, tmp537
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp537,
	call	validate_change	#
	jmp	.L402	#
.L465:
	.loc 1 2497 0
	nop
.L402:
	.loc 1 2807 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	subst_constants, .-subst_constants
	.type	mark_stores, @function
mark_stores:
.LFB21:
	.loc 1 2817 0
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
	movq	%rsi, -64(%rbp)	# x, x
	movq	%rdx, -72(%rbp)	# data, data
	.loc 1 2818 0
	movl	$-1, -36(%rbp)	#, regno
	.loc 1 2819 0
	movl	$0, -32(%rbp)	#, mode
	.loc 1 2824 0
	movq	-56(%rbp), %rax	# dest, tmp112
	movzwl	(%rax), %eax	# dest_16(D)->code, D.17568
	cmpw	$61, %ax	#, D.17568
	jne	.L469	#,
	.loc 1 2825 0
	movq	-56(%rbp), %rax	# dest, tmp113
	movl	8(%rax), %eax	# dest_16(D)->fld[0].rtuint, D.17569
	movl	%eax, -36(%rbp)	# D.17569, regno
	movq	-56(%rbp), %rax	# dest, tmp114
	movzbl	2(%rax), %eax	# dest_16(D)->mode, D.17570
	movzbl	%al, %eax	# D.17570, tmp115
	movl	%eax, -32(%rbp)	# tmp115, mode
	jmp	.L470	#
.L469:
	.loc 1 2826 0
	movq	-56(%rbp), %rax	# dest, tmp116
	movzwl	(%rax), %eax	# dest_16(D)->code, D.17568
	cmpw	$63, %ax	#, D.17568
	jne	.L470	#,
	.loc 1 2826 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp117
	movq	8(%rax), %rax	# dest_16(D)->fld[0].rtx, D.17571
	movzwl	(%rax), %eax	# _23->code, D.17568
	cmpw	$61, %ax	#, D.17568
	jne	.L470	#,
	.loc 1 2828 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp118
	movq	8(%rax), %rax	# dest_16(D)->fld[0].rtx, D.17571
	movl	8(%rax), %eax	# _25->fld[0].rtuint, D.17569
	movl	%eax, -36(%rbp)	# D.17569, regno
	.loc 1 2829 0
	cmpl	$52, -36(%rbp)	#, regno
	jg	.L471	#,
	.loc 1 2833 0
	movq	-56(%rbp), %rax	# dest, tmp119
	movzbl	2(%rax), %eax	# dest_16(D)->mode, D.17570
	.loc 1 2830 0
	movzbl	%al, %ecx	# D.17570, D.17572
	movq	-56(%rbp), %rax	# dest, tmp120
	movl	16(%rax), %edx	# dest_16(D)->fld[1].rtuint, D.17569
	.loc 1 2831 0
	movq	-56(%rbp), %rax	# dest, tmp121
	movq	8(%rax), %rax	# dest_16(D)->fld[0].rtx, D.17571
	movzbl	2(%rax), %eax	# _31->mode, D.17570
	.loc 1 2830 0
	movzbl	%al, %esi	# D.17570, D.17572
	movq	-56(%rbp), %rax	# dest, tmp122
	movq	8(%rax), %rax	# dest_16(D)->fld[0].rtx, D.17571
	movl	8(%rax), %eax	# _34->fld[0].rtuint, D.17569
	movl	%eax, %edi	# D.17569,
	call	subreg_regno_offset	#
	movl	-36(%rbp), %edx	# regno, regno.188
	addl	%edx, %eax	# regno.188, D.17569
	movl	%eax, -36(%rbp)	# D.17569, regno
.L471:
	.loc 1 2834 0
	movq	-56(%rbp), %rax	# dest, tmp123
	movq	8(%rax), %rax	# dest_16(D)->fld[0].rtx, D.17571
	movzbl	2(%rax), %eax	# _40->mode, D.17570
	movzbl	%al, %eax	# D.17570, tmp124
	movl	%eax, -32(%rbp)	# tmp124, mode
.L470:
	.loc 1 2837 0
	cmpl	$0, -36(%rbp)	#, regno
	js	.L468	#,
.LBB61:
	.loc 1 2839 0
	movl	-36(%rbp), %eax	# regno, tmp125
	movl	%eax, -24(%rbp)	# tmp125, uregno
	.loc 1 2841 0
	cmpl	$52, -24(%rbp)	#, uregno
	ja	.L473	#,
	.loc 1 2841 0 is_stmt 0 discriminator 1
	cmpl	$7, -24(%rbp)	#, uregno
	jbe	.L474	#,
	cmpl	$15, -24(%rbp)	#, uregno
	jbe	.L475	#,
.L474:
	.loc 1 2841 0 discriminator 2
	cmpl	$20, -24(%rbp)	#, uregno
	jbe	.L476	#,
	.loc 1 2841 0 discriminator 1
	cmpl	$28, -24(%rbp)	#, uregno
	jbe	.L475	#,
.L476:
	.loc 1 2841 0 discriminator 2
	cmpl	$44, -24(%rbp)	#, uregno
	jbe	.L477	#,
	.loc 1 2841 0 discriminator 1
	cmpl	$52, -24(%rbp)	#, uregno
	jbe	.L475	#,
.L477:
	.loc 1 2841 0 discriminator 2
	cmpl	$28, -24(%rbp)	#, uregno
	jbe	.L478	#,
	.loc 1 2841 0 discriminator 1
	cmpl	$36, -24(%rbp)	#, uregno
	ja	.L478	#,
.L475:
	movl	-32(%rbp), %eax	# mode, mode.192
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17574
	cmpl	$5, %eax	#, D.17574
	je	.L479	#,
	.loc 1 2841 0 discriminator 4
	movl	-32(%rbp), %eax	# mode, mode.193
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17574
	cmpl	$6, %eax	#, D.17574
	jne	.L480	#,
.L479:
	.loc 1 2841 0 discriminator 3
	movl	$2, %eax	#, iftmp.191
	jmp	.L482	#
.L480:
	.loc 1 2841 0 discriminator 1
	movl	$1, %eax	#, iftmp.191
	jmp	.L482	#
.L478:
	.loc 1 2841 0 discriminator 2
	cmpl	$18, -32(%rbp)	#, mode
	jne	.L483	#,
	.loc 1 2841 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.196
	andl	$33554432, %eax	#, D.17573
	testl	%eax, %eax	# D.17573
	je	.L484	#,
	.loc 1 2841 0 discriminator 9
	movl	$2, %eax	#, iftmp.195
	jmp	.L482	#
.L484:
	.loc 1 2841 0 discriminator 10
	movl	$3, %eax	#, iftmp.195
	jmp	.L482	#
.L483:
	.loc 1 2841 0 discriminator 8
	cmpl	$24, -32(%rbp)	#, mode
	jne	.L487	#,
	.loc 1 2841 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.199
	andl	$33554432, %eax	#, D.17573
	testl	%eax, %eax	# D.17573
	je	.L488	#,
	.loc 1 2841 0 discriminator 13
	movl	$4, %eax	#, iftmp.198
	jmp	.L482	#
.L488:
	.loc 1 2841 0 discriminator 14
	movl	$6, %eax	#, iftmp.198
	jmp	.L482	#
.L487:
	.loc 1 2841 0 discriminator 12
	movl	-32(%rbp), %eax	# mode, mode.200
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17570
	movzbl	%al, %edx	# D.17570, D.17573
	movl	target_flags(%rip), %eax	# target_flags, target_flags.202
	andl	$33554432, %eax	#, D.17573
	testl	%eax, %eax	# D.17573
	je	.L491	#,
	.loc 1 2841 0 discriminator 1
	movl	$8, %eax	#, iftmp.201
	jmp	.L492	#
.L491:
	.loc 1 2841 0 discriminator 2
	movl	$4, %eax	#, iftmp.201
.L492:
	.loc 1 2841 0 discriminator 3
	addl	%edx, %eax	# D.17573, D.17573
	subl	$1, %eax	#, D.17573
	movl	target_flags(%rip), %edx	# target_flags, target_flags.204
	andl	$33554432, %edx	#, D.17573
	testl	%edx, %edx	# D.17573
	je	.L493	#,
	.loc 1 2841 0 discriminator 1
	movl	$8, %ebx	#, iftmp.203
	jmp	.L494	#
.L493:
	.loc 1 2841 0 discriminator 2
	movl	$4, %ebx	#, iftmp.203
.L494:
	.loc 1 2841 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.203
.L482:
	.loc 1 2841 0 discriminator 6
	movl	-24(%rbp), %edx	# uregno, tmp131
	addl	%edx, %eax	# tmp131, D.17569
	subl	$1, %eax	#, iftmp.189
	jmp	.L495	#
.L473:
	.loc 1 2841 0 discriminator 2
	movl	-24(%rbp), %eax	# uregno, iftmp.189
.L495:
	.loc 1 2840 0 is_stmt 1
	movl	%eax, -20(%rbp)	# iftmp.189, last_reg
	.loc 1 2846 0
	cmpl	$53, -24(%rbp)	#, uregno
	je	.L468	#,
	.loc 1 2847 0
	cmpl	$54, -24(%rbp)	#, uregno
	je	.L468	#,
	.loc 1 2848 0
	movl	-24(%rbp), %eax	# uregno, tmp132
	movl	%eax, -28(%rbp)	# tmp132, i
	jmp	.L496	#
.L498:
	.loc 1 2849 0
	movl	-28(%rbp), %edx	# i, D.17575
	movq	global_const_equiv_varray(%rip), %rax	# global_const_equiv_varray, global_const_equiv_varray.205
	movq	(%rax), %rax	# global_const_equiv_varray.205_84->num_elements, D.17575
	cmpq	%rax, %rdx	# D.17575, D.17575
	jae	.L497	#,
	.loc 1 2850 0
	movq	global_const_equiv_varray(%rip), %rax	# global_const_equiv_varray, global_const_equiv_varray.206
	movl	-28(%rbp), %edx	# i, tmp133
	addq	$2, %rdx	#, tmp134
	salq	$4, %rdx	#, tmp135
	addq	%rdx, %rax	# tmp135, tmp136
	movq	$0, (%rax)	#, global_const_equiv_varray.206_86->data.const_equiv[i_4].rtx
.L497:
	.loc 1 2848 0
	addl	$1, -28(%rbp)	#, i
.L496:
	.loc 1 2848 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp137
	cmpl	-20(%rbp), %eax	# last_reg, tmp137
	jbe	.L498	#,
.L468:
.LBE61:
	.loc 1 2852 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	mark_stores, .-mark_stores
	.type	set_block_origin_self, @function
set_block_origin_self:
.LFB22:
	.loc 1 2867 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# stmt, stmt
	.loc 1 2868 0
	movq	-24(%rbp), %rax	# stmt, tmp60
	movq	56(%rax), %rax	# stmt_3(D)->block.abstract_origin, D.17576
	testq	%rax, %rax	# D.17576
	jne	.L499	#,
	.loc 1 2870 0
	movq	-24(%rbp), %rax	# stmt, tmp61
	movq	-24(%rbp), %rdx	# stmt, tmp62
	movq	%rdx, 56(%rax)	# tmp62, stmt_3(D)->block.abstract_origin
.LBB62:
	.loc 1 2875 0
	movq	-24(%rbp), %rax	# stmt, tmp63
	movq	32(%rax), %rax	# stmt_3(D)->block.vars, tmp64
	movq	%rax, -16(%rbp)	# tmp64, local_decl
	jmp	.L501	#
.L502:
	.loc 1 2878 0
	movq	-16(%rbp), %rax	# local_decl, tmp65
	movq	%rax, %rdi	# tmp65,
	call	set_decl_origin_self	#
	.loc 1 2877 0
	movq	-16(%rbp), %rax	# local_decl, tmp66
	movq	(%rax), %rax	# local_decl_1->common.chain, tmp67
	movq	%rax, -16(%rbp)	# tmp67, local_decl
.L501:
	.loc 1 2875 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, local_decl
	jne	.L502	#,
.LBE62:
.LBB63:
	.loc 1 2884 0
	movq	-24(%rbp), %rax	# stmt, tmp68
	movq	40(%rax), %rax	# stmt_3(D)->block.subblocks, tmp69
	movq	%rax, -8(%rbp)	# tmp69, subblock
	jmp	.L503	#
.L504:
	.loc 1 2887 0
	movq	-8(%rbp), %rax	# subblock, tmp70
	movq	%rax, %rdi	# tmp70,
	call	set_block_origin_self	#
	.loc 1 2886 0
	movq	-8(%rbp), %rax	# subblock, tmp71
	movq	(%rax), %rax	# subblock_2->common.chain, tmp72
	movq	%rax, -8(%rbp)	# tmp72, subblock
.L503:
	.loc 1 2884 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, subblock
	jne	.L504	#,
.L499:
.LBE63:
	.loc 1 2890 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	set_block_origin_self, .-set_block_origin_self
	.globl	set_decl_origin_self
	.type	set_decl_origin_self, @function
set_decl_origin_self:
.LFB23:
	.loc 1 2906 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	.loc 1 2907 0
	movq	-24(%rbp), %rax	# decl, tmp65
	movq	112(%rax), %rax	# decl_2(D)->decl.abstract_origin, D.17577
	testq	%rax, %rax	# D.17577
	jne	.L505	#,
	.loc 1 2909 0
	movq	-24(%rbp), %rax	# decl, tmp66
	movq	-24(%rbp), %rdx	# decl, tmp67
	movq	%rdx, 112(%rax)	# tmp67, decl_2(D)->decl.abstract_origin
	.loc 1 2910 0
	movq	-24(%rbp), %rax	# decl, tmp68
	movzbl	16(%rax), %eax	# decl_2(D)->common.code, D.17578
	cmpb	$30, %al	#, D.17578
	jne	.L505	#,
.LBB64:
	.loc 1 2914 0
	movq	-24(%rbp), %rax	# decl, tmp69
	movq	88(%rax), %rax	# decl_2(D)->decl.arguments, tmp70
	movq	%rax, -8(%rbp)	# tmp70, arg
	jmp	.L507	#
.L508:
	.loc 1 2915 0 discriminator 2
	movq	-8(%rbp), %rax	# arg, tmp71
	movq	-8(%rbp), %rdx	# arg, tmp72
	movq	%rdx, 112(%rax)	# tmp72, arg_1->decl.abstract_origin
	.loc 1 2914 0 discriminator 2
	movq	-8(%rbp), %rax	# arg, tmp73
	movq	(%rax), %rax	# arg_1->common.chain, tmp74
	movq	%rax, -8(%rbp)	# tmp74, arg
.L507:
	.loc 1 2914 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, arg
	jne	.L508	#,
	.loc 1 2916 0 is_stmt 1
	movq	-24(%rbp), %rax	# decl, tmp75
	movq	104(%rax), %rax	# decl_2(D)->decl.initial, D.17577
	testq	%rax, %rax	# D.17577
	je	.L505	#,
	.loc 1 2917 0
	movq	-24(%rbp), %rax	# decl, tmp76
	movq	104(%rax), %rdx	# decl_2(D)->decl.initial, D.17577
	movq	global_trees(%rip), %rax	# global_trees, D.17577
	cmpq	%rax, %rdx	# D.17577, D.17577
	je	.L505	#,
	.loc 1 2918 0
	movq	-24(%rbp), %rax	# decl, tmp77
	movq	104(%rax), %rax	# decl_2(D)->decl.initial, D.17577
	movq	%rax, %rdi	# D.17577,
	call	set_block_origin_self	#
.L505:
.LBE64:
	.loc 1 2921 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	set_decl_origin_self, .-set_decl_origin_self
	.type	set_block_abstract_flags, @function
set_block_abstract_flags:
.LFB24:
	.loc 1 2932 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# stmt, stmt
	movl	%esi, -28(%rbp)	# setting, setting
	.loc 1 2936 0
	movl	-28(%rbp), %eax	# setting, tmp61
	andl	$1, %eax	#, D.17580
	movl	%eax, %edx	# D.17580, D.17580
	movq	-24(%rbp), %rax	# stmt, tmp62
	andl	$1, %edx	#, tmp64
	leal	(%rdx,%rdx), %ecx	#, tmp65
	movzbl	24(%rax), %edx	# stmt_6(D)->block.abstract_flag, tmp66
	andl	$-3, %edx	#, tmp67
	orl	%ecx, %edx	# tmp65, tmp68
	movb	%dl, 24(%rax)	# tmp68, stmt_6(D)->block.abstract_flag
	.loc 1 2938 0
	movq	-24(%rbp), %rax	# stmt, tmp69
	movq	32(%rax), %rax	# stmt_6(D)->block.vars, tmp70
	movq	%rax, -16(%rbp)	# tmp70, local_decl
	jmp	.L510	#
.L511:
	.loc 1 2941 0
	movl	-28(%rbp), %edx	# setting, tmp71
	movq	-16(%rbp), %rax	# local_decl, tmp72
	movl	%edx, %esi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	set_decl_abstract_flags	#
	.loc 1 2940 0
	movq	-16(%rbp), %rax	# local_decl, tmp73
	movq	(%rax), %rax	# local_decl_1->common.chain, tmp74
	movq	%rax, -16(%rbp)	# tmp74, local_decl
.L510:
	.loc 1 2938 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, local_decl
	jne	.L511	#,
	.loc 1 2943 0
	movq	-24(%rbp), %rax	# stmt, tmp75
	movq	40(%rax), %rax	# stmt_6(D)->block.subblocks, tmp76
	movq	%rax, -8(%rbp)	# tmp76, subblock
	jmp	.L512	#
.L513:
	.loc 1 2946 0
	movl	-28(%rbp), %edx	# setting, tmp77
	movq	-8(%rbp), %rax	# subblock, tmp78
	movl	%edx, %esi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	set_block_abstract_flags	#
	.loc 1 2945 0
	movq	-8(%rbp), %rax	# subblock, tmp79
	movq	(%rax), %rax	# subblock_2->common.chain, tmp80
	movq	%rax, -8(%rbp)	# tmp80, subblock
.L512:
	.loc 1 2943 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, subblock
	jne	.L513	#,
	.loc 1 2947 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	set_block_abstract_flags, .-set_block_abstract_flags
	.globl	set_decl_abstract_flags
	.type	set_decl_abstract_flags, @function
set_decl_abstract_flags:
.LFB25:
	.loc 1 2959 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	movl	%esi, -28(%rbp)	# setting, setting
	.loc 1 2960 0
	movl	-28(%rbp), %eax	# setting, tmp68
	andl	$1, %eax	#, D.17582
	movl	%eax, %edx	# D.17582, D.17582
	movq	-24(%rbp), %rax	# decl, tmp69
	movl	%edx, %ecx	# D.17582, tmp71
	sall	$7, %ecx	#, tmp71
	movzbl	49(%rax), %edx	#, tmp72
	andl	$127, %edx	#, tmp73
	orl	%ecx, %edx	# tmp71, tmp74
	movb	%dl, 49(%rax)	# tmp74,
	.loc 1 2961 0
	movq	-24(%rbp), %rax	# decl, tmp75
	movzbl	16(%rax), %eax	# decl_5(D)->common.code, D.17581
	cmpb	$30, %al	#, D.17581
	jne	.L514	#,
.LBB65:
	.loc 1 2965 0
	movq	-24(%rbp), %rax	# decl, tmp76
	movq	88(%rax), %rax	# decl_5(D)->decl.arguments, tmp77
	movq	%rax, -8(%rbp)	# tmp77, arg
	jmp	.L516	#
.L517:
	.loc 1 2966 0 discriminator 2
	movl	-28(%rbp), %eax	# setting, tmp78
	andl	$1, %eax	#, D.17582
	movl	%eax, %edx	# D.17582, D.17582
	movq	-8(%rbp), %rax	# arg, tmp79
	movl	%edx, %ecx	# D.17582, tmp81
	sall	$7, %ecx	#, tmp81
	movzbl	49(%rax), %edx	#, tmp82
	andl	$127, %edx	#, tmp83
	orl	%ecx, %edx	# tmp81, tmp84
	movb	%dl, 49(%rax)	# tmp84,
	.loc 1 2965 0 discriminator 2
	movq	-8(%rbp), %rax	# arg, tmp85
	movq	(%rax), %rax	# arg_1->common.chain, tmp86
	movq	%rax, -8(%rbp)	# tmp86, arg
.L516:
	.loc 1 2965 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, arg
	jne	.L517	#,
	.loc 1 2967 0 is_stmt 1
	movq	-24(%rbp), %rax	# decl, tmp87
	movq	104(%rax), %rax	# decl_5(D)->decl.initial, D.17583
	testq	%rax, %rax	# D.17583
	je	.L514	#,
	.loc 1 2968 0
	movq	-24(%rbp), %rax	# decl, tmp88
	movq	104(%rax), %rdx	# decl_5(D)->decl.initial, D.17583
	movq	global_trees(%rip), %rax	# global_trees, D.17583
	cmpq	%rax, %rdx	# D.17583, D.17583
	je	.L514	#,
	.loc 1 2969 0
	movq	-24(%rbp), %rax	# decl, tmp89
	movq	104(%rax), %rax	# decl_5(D)->decl.initial, D.17583
	movl	-28(%rbp), %edx	# setting, tmp90
	movl	%edx, %esi	# tmp90,
	movq	%rax, %rdi	# D.17583,
	call	set_block_abstract_flags	#
.L514:
.LBE65:
	.loc 1 2971 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	set_decl_abstract_flags, .-set_decl_abstract_flags
	.globl	output_inline_function
	.type	output_inline_function, @function
output_inline_function:
.LFB26:
	.loc 1 2980 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# fndecl, fndecl
	.loc 1 2981 0
	movq	cfun(%rip), %rax	# cfun, tmp62
	movq	%rax, -24(%rbp)	# tmp62, old_cfun
	.loc 1 2982 0
	movl	write_symbols(%rip), %eax	# write_symbols, tmp63
	movl	%eax, -28(%rbp)	# tmp63, old_write_symbols
	.loc 1 2983 0
	movq	debug_hooks(%rip), %rax	# debug_hooks, tmp64
	movq	%rax, -16(%rbp)	# tmp64, old_debug_hooks
	.loc 1 2984 0
	movq	-40(%rbp), %rax	# fndecl, tmp65
	movq	160(%rax), %rax	# fndecl_5(D)->decl.u2.f, tmp66
	movq	%rax, -8(%rbp)	# tmp66, f
	.loc 1 2986 0
	movq	-8(%rbp), %rax	# f, tmp67
	movq	%rax, cfun(%rip)	# tmp67, cfun
	.loc 1 2987 0
	movq	-40(%rbp), %rax	# fndecl, tmp68
	movq	%rax, current_function_decl(%rip)	# tmp68, current_function_decl
	.loc 1 2988 0
	call	clear_emit_caches	#
	.loc 1 2990 0
	movq	-8(%rbp), %rax	# f, tmp69
	movl	384(%rax), %eax	# f_6->inl_max_label_num, D.17584
	movl	%eax, %edi	# D.17584,
	call	set_new_last_label_num	#
	.loc 1 2993 0
	movq	-40(%rbp), %rax	# fndecl, tmp70
	movzbl	50(%rax), %edx	#, tmp73
	andl	$-5, %edx	#, tmp74
	movb	%dl, 50(%rax)	# tmp74,
	.loc 1 2996 0
	movq	-8(%rbp), %rax	# f, tmp75
	movl	356(%rax), %eax	# f_6->no_debugging_symbols, D.17584
	testl	%eax, %eax	# D.17584
	je	.L519	#,
	.loc 1 2998 0
	movl	$0, write_symbols(%rip)	#, write_symbols
	.loc 1 2999 0
	movq	$do_nothing_debug_hooks, debug_hooks(%rip)	#, debug_hooks
.L519:
	.loc 1 3005 0
	movq	-40(%rbp), %rax	# fndecl, tmp76
	movq	%rax, %rdi	# tmp76,
	call	rest_of_compilation	#
	.loc 1 3006 0
	movq	-40(%rbp), %rax	# fndecl, tmp77
	movzbl	49(%rax), %edx	#, tmp80
	andl	$-9, %edx	#, tmp81
	movb	%dl, 49(%rax)	# tmp81,
	.loc 1 3008 0
	movq	-24(%rbp), %rax	# old_cfun, tmp82
	movq	%rax, cfun(%rip)	# tmp82, cfun
	.loc 1 3009 0
	cmpq	$0, -24(%rbp)	#, old_cfun
	je	.L520	#,
	.loc 1 3009 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# old_cfun, tmp83
	movq	48(%rax), %rax	# old_cfun_2->decl, iftmp.207
	jmp	.L521	#
.L520:
	.loc 1 3009 0 discriminator 2
	movl	$0, %eax	#, iftmp.207
.L521:
	.loc 1 3009 0 discriminator 3
	movq	%rax, current_function_decl(%rip)	# iftmp.207, current_function_decl
	.loc 1 3010 0 is_stmt 1 discriminator 3
	movl	-28(%rbp), %eax	# old_write_symbols, tmp84
	movl	%eax, write_symbols(%rip)	# tmp84, write_symbols
	.loc 1 3011 0 discriminator 3
	movq	-16(%rbp), %rax	# old_debug_hooks, tmp85
	movq	%rax, debug_hooks(%rip)	# tmp85, debug_hooks
	.loc 1 3012 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	output_inline_function, .-output_inline_function
	.globl	get_hard_reg_initial_reg
	.type	get_hard_reg_initial_reg, @function
get_hard_reg_initial_reg:
.LFB27:
	.loc 1 3022 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fun, fun
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 1 3023 0
	movq	-24(%rbp), %rax	# fun, tmp72
	movq	144(%rax), %rax	# fun_3(D)->hard_reg_initial_vals, tmp73
	movq	%rax, -8(%rbp)	# tmp73, ivs
	.loc 1 3026 0
	cmpq	$0, -8(%rbp)	#, ivs
	jne	.L523	#,
	.loc 1 3027 0
	movl	$0, %eax	#, D.17585
	jmp	.L524	#
.L523:
	.loc 1 3029 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L525	#
.L527:
	.loc 1 3030 0
	movq	-8(%rbp), %rax	# ivs, tmp74
	movq	8(%rax), %rax	# ivs_4->entries, D.17587
	movl	-12(%rbp), %edx	# i, tmp75
	movslq	%edx, %rdx	# tmp75, D.17588
	salq	$4, %rdx	#, D.17588
	addq	%rdx, %rax	# D.17588, D.17587
	movq	8(%rax), %rax	# _11->pseudo, D.17589
	movq	-32(%rbp), %rdx	# reg, tmp76
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# D.17589,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17586
	je	.L526	#,
	.loc 1 3031 0
	movq	-8(%rbp), %rax	# ivs, tmp77
	movq	8(%rax), %rax	# ivs_4->entries, D.17587
	movl	-12(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, D.17588
	salq	$4, %rdx	#, D.17588
	addq	%rdx, %rax	# D.17588, D.17587
	movq	(%rax), %rax	# _18->hard_reg, D.17585
	jmp	.L524	#
.L526:
	.loc 1 3029 0
	addl	$1, -12(%rbp)	#, i
.L525:
	.loc 1 3029 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ivs, tmp79
	movl	(%rax), %eax	# ivs_4->num_entries, D.17586
	cmpl	-12(%rbp), %eax	# i, D.17586
	jg	.L527	#,
	.loc 1 3033 0 is_stmt 1
	movl	$0, %eax	#, D.17585
.L524:
	.loc 1 3034 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	get_hard_reg_initial_reg, .-get_hard_reg_initial_reg
	.globl	has_func_hard_reg_initial_val
	.type	has_func_hard_reg_initial_val, @function
has_func_hard_reg_initial_val:
.LFB28:
	.loc 1 3040 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fun, fun
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 1 3041 0
	movq	-24(%rbp), %rax	# fun, tmp72
	movq	144(%rax), %rax	# fun_3(D)->hard_reg_initial_vals, tmp73
	movq	%rax, -8(%rbp)	# tmp73, ivs
	.loc 1 3044 0
	cmpq	$0, -8(%rbp)	#, ivs
	jne	.L529	#,
	.loc 1 3045 0
	movl	$0, %eax	#, D.17590
	jmp	.L530	#
.L529:
	.loc 1 3047 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L531	#
.L533:
	.loc 1 3048 0
	movq	-8(%rbp), %rax	# ivs, tmp74
	movq	8(%rax), %rax	# ivs_4->entries, D.17592
	movl	-12(%rbp), %edx	# i, tmp75
	movslq	%edx, %rdx	# tmp75, D.17593
	salq	$4, %rdx	#, D.17593
	addq	%rdx, %rax	# D.17593, D.17592
	movq	(%rax), %rax	# _11->hard_reg, D.17594
	movq	-32(%rbp), %rdx	# reg, tmp76
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# D.17594,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17591
	je	.L532	#,
	.loc 1 3049 0
	movq	-8(%rbp), %rax	# ivs, tmp77
	movq	8(%rax), %rax	# ivs_4->entries, D.17592
	movl	-12(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, D.17593
	salq	$4, %rdx	#, D.17593
	addq	%rdx, %rax	# D.17593, D.17592
	movq	8(%rax), %rax	# _18->pseudo, D.17590
	jmp	.L530	#
.L532:
	.loc 1 3047 0
	addl	$1, -12(%rbp)	#, i
.L531:
	.loc 1 3047 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ivs, tmp79
	movl	(%rax), %eax	# ivs_4->num_entries, D.17591
	cmpl	-12(%rbp), %eax	# i, D.17591
	jg	.L533	#,
	.loc 1 3051 0 is_stmt 1
	movl	$0, %eax	#, D.17590
.L530:
	.loc 1 3052 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	has_func_hard_reg_initial_val, .-has_func_hard_reg_initial_val
	.globl	get_func_hard_reg_initial_val
	.type	get_func_hard_reg_initial_val, @function
get_func_hard_reg_initial_val:
.LFB29:
	.loc 1 3058 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# fun, fun
	movq	%rsi, -48(%rbp)	# reg, reg
	.loc 1 3059 0
	movq	-40(%rbp), %rax	# fun, tmp91
	movq	144(%rax), %rax	# fun_3(D)->hard_reg_initial_vals, tmp92
	movq	%rax, -32(%rbp)	# tmp92, ivs
	.loc 1 3060 0
	movq	-48(%rbp), %rdx	# reg, tmp93
	movq	-40(%rbp), %rax	# fun, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	has_func_hard_reg_initial_val	#
	movq	%rax, -24(%rbp)	# tmp95, rv
	.loc 1 3062 0
	cmpq	$0, -24(%rbp)	#, rv
	je	.L535	#,
	.loc 1 3063 0
	movq	-24(%rbp), %rax	# rv, D.17595
	jmp	.L536	#
.L535:
	.loc 1 3065 0
	cmpq	$0, -32(%rbp)	#, ivs
	jne	.L537	#,
	.loc 1 3067 0
	movl	$16, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp96, D.17596
	movq	-40(%rbp), %rax	# fun, tmp97
	movq	%rdx, 144(%rax)	# D.17596, fun_3(D)->hard_reg_initial_vals
	.loc 1 3068 0
	movq	-40(%rbp), %rax	# fun, tmp98
	movq	144(%rax), %rax	# fun_3(D)->hard_reg_initial_vals, tmp99
	movq	%rax, -32(%rbp)	# tmp99, ivs
	.loc 1 3069 0
	movq	-32(%rbp), %rax	# ivs, tmp100
	movl	$0, (%rax)	#, ivs_9->num_entries
	.loc 1 3070 0
	movq	-32(%rbp), %rax	# ivs, tmp101
	movl	$5, 4(%rax)	#, ivs_9->max_entries
	.loc 1 3071 0
	movl	$80, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp102, D.17596
	movq	-32(%rbp), %rax	# ivs, tmp103
	movq	%rdx, 8(%rax)	# D.17596, ivs_9->entries
.L537:
	.loc 1 3074 0
	movq	-32(%rbp), %rax	# ivs, tmp104
	movl	(%rax), %edx	# ivs_1->num_entries, D.17597
	movq	-32(%rbp), %rax	# ivs, tmp105
	movl	4(%rax), %eax	# ivs_1->max_entries, D.17597
	cmpl	%eax, %edx	# D.17597, D.17597
	jl	.L538	#,
	.loc 1 3076 0
	movq	-32(%rbp), %rax	# ivs, tmp106
	movl	4(%rax), %eax	# ivs_1->max_entries, D.17597
	leal	5(%rax), %edx	#, D.17597
	movq	-32(%rbp), %rax	# ivs, tmp107
	movl	%edx, 4(%rax)	# D.17597, ivs_1->max_entries
	.loc 1 3079 0
	movq	-32(%rbp), %rax	# ivs, tmp108
	movl	4(%rax), %eax	# ivs_1->max_entries, D.17597
	.loc 1 3078 0
	cltq
	salq	$4, %rax	#, D.17598
	movq	%rax, %rdx	# D.17598, D.17598
	movq	-32(%rbp), %rax	# ivs, tmp109
	movq	8(%rax), %rax	# ivs_1->entries, D.17599
	movq	%rdx, %rsi	# D.17598,
	movq	%rax, %rdi	# D.17599,
	call	xrealloc	#
	.loc 1 3077 0
	movq	-32(%rbp), %rdx	# ivs, tmp110
	movq	%rax, 8(%rdx)	# D.17596, ivs_1->entries
.L538:
	.loc 1 3083 0
	movq	-32(%rbp), %rax	# ivs, tmp111
	movq	8(%rax), %rdx	# ivs_1->entries, D.17599
	movq	-32(%rbp), %rax	# ivs, tmp112
	movl	(%rax), %eax	# ivs_1->num_entries, D.17597
	cltq
	salq	$4, %rax	#, D.17598
	addq	%rax, %rdx	# D.17598, D.17599
	movq	-48(%rbp), %rax	# reg, tmp113
	movq	%rax, (%rdx)	# tmp113, _24->hard_reg
	.loc 1 3084 0
	movq	-32(%rbp), %rax	# ivs, tmp114
	movq	8(%rax), %rdx	# ivs_1->entries, D.17599
	movq	-32(%rbp), %rax	# ivs, tmp115
	movl	(%rax), %eax	# ivs_1->num_entries, D.17597
	cltq
	salq	$4, %rax	#, D.17598
	leaq	(%rdx,%rax), %rbx	#, D.17599
	movq	-48(%rbp), %rax	# reg, tmp116
	movzbl	2(%rax), %eax	# reg_5(D)->mode, D.17600
	movzbl	%al, %eax	# D.17600, D.17601
	movl	%eax, %edi	# D.17601,
	call	gen_reg_rtx	#
	movq	%rax, 8(%rbx)	# D.17602, _29->pseudo
	.loc 1 3086 0
	movq	-32(%rbp), %rax	# ivs, tmp117
	movq	8(%rax), %rsi	# ivs_1->entries, D.17599
	movq	-32(%rbp), %rax	# ivs, tmp118
	movl	(%rax), %eax	# ivs_1->num_entries, D.17597
	leal	1(%rax), %ecx	#, D.17597
	movq	-32(%rbp), %rdx	# ivs, tmp119
	movl	%ecx, (%rdx)	# D.17597, ivs_1->num_entries
	cltq
	salq	$4, %rax	#, D.17598
	addq	%rsi, %rax	# D.17599, D.17599
	movq	8(%rax), %rax	# _39->pseudo, D.17595
.L536:
	.loc 1 3087 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	get_func_hard_reg_initial_val, .-get_func_hard_reg_initial_val
	.globl	get_hard_reg_initial_val
	.type	get_hard_reg_initial_val, @function
get_hard_reg_initial_val:
.LFB30:
	.loc 1 3093 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movl	%esi, -8(%rbp)	# regno, regno
	.loc 1 3094 0
	movl	-8(%rbp), %edx	# regno, tmp63
	movl	-4(%rbp), %eax	# mode, tmp64
	movl	%edx, %esi	# tmp63,
	movl	%eax, %edi	# tmp64,
	call	gen_rtx_REG	#
	movq	%rax, %rdx	#, D.17603
	movq	cfun(%rip), %rax	# cfun, cfun.208
	movq	%rdx, %rsi	# D.17603,
	movq	%rax, %rdi	# cfun.208,
	call	get_func_hard_reg_initial_val	#
	.loc 1 3095 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	get_hard_reg_initial_val, .-get_hard_reg_initial_val
	.globl	has_hard_reg_initial_val
	.type	has_hard_reg_initial_val, @function
has_hard_reg_initial_val:
.LFB31:
	.loc 1 3101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movl	%esi, -8(%rbp)	# regno, regno
	.loc 1 3102 0
	movl	-8(%rbp), %edx	# regno, tmp63
	movl	-4(%rbp), %eax	# mode, tmp64
	movl	%edx, %esi	# tmp63,
	movl	%eax, %edi	# tmp64,
	call	gen_rtx_REG	#
	movq	%rax, %rdx	#, D.17605
	movq	cfun(%rip), %rax	# cfun, cfun.209
	movq	%rdx, %rsi	# D.17605,
	movq	%rax, %rdi	# cfun.209,
	call	has_func_hard_reg_initial_val	#
	.loc 1 3103 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	has_hard_reg_initial_val, .-has_hard_reg_initial_val
	.globl	mark_hard_reg_initial_vals
	.type	mark_hard_reg_initial_vals, @function
mark_hard_reg_initial_vals:
.LFB32:
	.loc 1 3108 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# fun, fun
	.loc 1 3109 0
	movq	-40(%rbp), %rax	# fun, tmp70
	movq	144(%rax), %rax	# fun_2(D)->hard_reg_initial_vals, tmp71
	movq	%rax, -24(%rbp)	# tmp71, ivs
	.loc 1 3112 0
	cmpq	$0, -24(%rbp)	#, ivs
	jne	.L544	#,
	.loc 1 3113 0
	jmp	.L543	#
.L544:
	.loc 1 3115 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L546	#
.L549:
.LBB66:
	.loc 1 3117 0
	movq	-24(%rbp), %rax	# ivs, tmp72
	movq	8(%rax), %rax	# ivs_3->entries, D.17608
	movl	-28(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, D.17609
	salq	$4, %rdx	#, D.17609
	addq	%rdx, %rax	# D.17609, D.17608
	movq	(%rax), %rax	# _9->hard_reg, tmp74
	movq	%rax, -16(%rbp)	# tmp74, r__
	cmpq	$0, -16(%rbp)	#, r__
	je	.L547	#,
	.loc 1 3117 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# r__, tmp75
	movq	%rax, %rdi	# tmp75,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.17607
	jne	.L547	#,
	movq	-16(%rbp), %rax	# r__, tmp76
	movq	%rax, %rdi	# tmp76,
	call	ggc_mark_rtx_children	#
.L547:
.LBE66:
.LBB67:
	.loc 1 3118 0 is_stmt 1
	movq	-24(%rbp), %rax	# ivs, tmp77
	movq	8(%rax), %rax	# ivs_3->entries, D.17608
	movl	-28(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, D.17609
	salq	$4, %rdx	#, D.17609
	addq	%rdx, %rax	# D.17609, D.17608
	movq	8(%rax), %rax	# _15->pseudo, tmp79
	movq	%rax, -8(%rbp)	# tmp79, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L548	#,
	.loc 1 3118 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp80
	movq	%rax, %rdi	# tmp80,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.17607
	jne	.L548	#,
	movq	-8(%rbp), %rax	# r__, tmp81
	movq	%rax, %rdi	# tmp81,
	call	ggc_mark_rtx_children	#
.L548:
.LBE67:
	.loc 1 3115 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L546:
	.loc 1 3115 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ivs, tmp82
	movl	(%rax), %eax	# ivs_3->num_entries, D.17607
	cmpl	-28(%rbp), %eax	# i, D.17607
	jg	.L549	#,
.L543:
	.loc 1 3120 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	mark_hard_reg_initial_vals, .-mark_hard_reg_initial_vals
	.type	setup_initial_hard_reg_value_integration, @function
setup_initial_hard_reg_value_integration:
.LFB33:
	.loc 1 3126 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# inl_f, inl_f
	movq	%rsi, -48(%rbp)	# remap, remap
	.loc 1 3127 0
	movq	-40(%rbp), %rax	# inl_f, tmp77
	movq	144(%rax), %rax	# inl_f_2(D)->hard_reg_initial_vals, tmp78
	movq	%rax, -24(%rbp)	# tmp78, ivs
	.loc 1 3130 0
	cmpq	$0, -24(%rbp)	#, ivs
	jne	.L551	#,
	.loc 1 3131 0
	jmp	.L550	#
.L551:
	.loc 1 3133 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L553	#
.L554:
	.loc 1 3134 0 discriminator 2
	movq	-48(%rbp), %rax	# remap, tmp79
	movq	32(%rax), %rdx	# remap_6(D)->reg_map, D.17611
	movq	-24(%rbp), %rax	# ivs, tmp80
	movq	8(%rax), %rax	# ivs_3->entries, D.17612
	movl	-28(%rbp), %ecx	# i, tmp81
	movslq	%ecx, %rcx	# tmp81, D.17613
	salq	$4, %rcx	#, D.17613
	addq	%rcx, %rax	# D.17613, D.17612
	movq	8(%rax), %rax	# _11->pseudo, D.17614
	movl	8(%rax), %eax	# _12->fld[0].rtuint, D.17615
	movl	%eax, %eax	# D.17615, D.17613
	salq	$3, %rax	#, D.17613
	leaq	(%rdx,%rax), %rbx	#, D.17611
	.loc 1 3135 0 discriminator 2
	movq	-24(%rbp), %rax	# ivs, tmp82
	movq	8(%rax), %rax	# ivs_3->entries, D.17612
	movl	-28(%rbp), %edx	# i, tmp83
	movslq	%edx, %rdx	# tmp83, D.17613
	salq	$4, %rdx	#, D.17613
	addq	%rdx, %rax	# D.17613, D.17612
	movq	(%rax), %rdx	# _20->hard_reg, D.17614
	movq	cfun(%rip), %rax	# cfun, cfun.210
	movq	%rdx, %rsi	# D.17614,
	movq	%rax, %rdi	# cfun.210,
	call	get_func_hard_reg_initial_val	#
	movq	%rax, (%rbx)	# D.17614, *_16
	.loc 1 3133 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L553:
	.loc 1 3133 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ivs, tmp84
	movl	(%rax), %eax	# ivs_3->num_entries, D.17610
	cmpl	-28(%rbp), %eax	# i, D.17610
	jg	.L554	#,
.L550:
	.loc 1 3136 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	setup_initial_hard_reg_value_integration, .-setup_initial_hard_reg_value_integration
	.globl	emit_initial_value_sets
	.type	emit_initial_value_sets, @function
emit_initial_value_sets:
.LFB34:
	.loc 1 3141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 3142 0
	movq	cfun(%rip), %rax	# cfun, cfun.211
	movq	144(%rax), %rax	# cfun.211_2->hard_reg_initial_vals, tmp72
	movq	%rax, -16(%rbp)	# tmp72, ivs
	.loc 1 3146 0
	cmpq	$0, -16(%rbp)	#, ivs
	jne	.L556	#,
	.loc 1 3147 0
	jmp	.L555	#
.L556:
	.loc 1 3149 0
	call	start_sequence	#
	.loc 1 3150 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L558	#
.L559:
	.loc 1 3151 0 discriminator 2
	movq	-16(%rbp), %rax	# ivs, tmp73
	movq	8(%rax), %rax	# ivs_3->entries, D.17617
	movl	-20(%rbp), %edx	# i, tmp74
	movslq	%edx, %rdx	# tmp74, D.17618
	salq	$4, %rdx	#, D.17618
	addq	%rdx, %rax	# D.17618, D.17617
	movq	(%rax), %rdx	# _9->hard_reg, D.17619
	movq	-16(%rbp), %rax	# ivs, tmp75
	movq	8(%rax), %rax	# ivs_3->entries, D.17617
	movl	-20(%rbp), %ecx	# i, tmp76
	movslq	%ecx, %rcx	# tmp76, D.17618
	salq	$4, %rcx	#, D.17618
	addq	%rcx, %rax	# D.17618, D.17617
	movq	8(%rax), %rax	# _14->pseudo, D.17619
	movq	%rdx, %rsi	# D.17619,
	movq	%rax, %rdi	# D.17619,
	call	emit_move_insn	#
	.loc 1 3150 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L558:
	.loc 1 3150 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ivs, tmp77
	movl	(%rax), %eax	# ivs_3->num_entries, D.17616
	cmpl	-20(%rbp), %eax	# i, D.17616
	jg	.L559	#,
	.loc 1 3152 0 is_stmt 1
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp78, seq
	.loc 1 3153 0
	call	end_sequence	#
	.loc 1 3155 0
	call	get_insns	#
	movq	%rax, %rdx	#, D.17619
	movq	-8(%rbp), %rax	# seq, tmp79
	movq	%rdx, %rsi	# D.17619,
	movq	%rax, %rdi	# tmp79,
	call	emit_insns_after	#
.L555:
	.loc 1 3156 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	emit_initial_value_sets, .-emit_initial_value_sets
	.globl	allocate_initial_values
	.type	allocate_initial_values, @function
allocate_initial_values:
.LFB35:
	.loc 1 3163 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# reg_equiv_memory_loc, reg_equiv_memory_loc
	.loc 1 3190 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	allocate_initial_values, .-allocate_initial_values
	.section	.rodata
	.align 16
	.type	__FUNCTION__.14006, @object
	.size	__FUNCTION__.14006, 16
__FUNCTION__.14006:
	.string	"save_for_inline"
	.align 16
	.type	__FUNCTION__.14079, @object
	.size	__FUNCTION__.14079, 23
__FUNCTION__.14079:
	.string	"expand_inline_function"
	.type	__FUNCTION__.14134, @object
	.size	__FUNCTION__.14134, 15
__FUNCTION__.14134:
	.string	"copy_insn_list"
	.align 16
	.type	__FUNCTION__.14228, @object
	.size	__FUNCTION__.14228, 24
__FUNCTION__.14228:
	.string	"copy_rtx_and_substitute"
	.align 16
	.type	__FUNCTION__.14346, @object
	.size	__FUNCTION__.14346, 16
__FUNCTION__.14346:
	.string	"subst_constants"
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
	.file 11 "bitmap.h"
	.file 12 "basic-block.h"
	.file 13 "real.h"
	.file 14 "hashtable.h"
	.file 15 "function.h"
	.file 16 "varray.h"
	.file 17 "regs.h"
	.file 18 "flags.h"
	.file 19 "debug.h"
	.file 20 "expr.h"
	.file 21 "integrate.h"
	.file 22 "params.h"
	.file 23 "target.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5348
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1302
	.byte	0x1
	.long	.LASF1303
	.long	.LASF1304
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
	.long	0xde4
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
	.long	0xdf4
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
	.long	.LASF326
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x1617
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0x17d7
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0x185c
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x1915
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0x1891
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x18d3
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x197a
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x2233
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x1b09
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x19a1
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x19d6
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x1a19
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x1a4e
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
	.long	0x535
	.byte	0x60
	.uleb128 0x12
	.long	.LASF89
	.byte	0x9
	.value	0x10b
	.long	0x53b
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
	.long	0x541
	.byte	0x83
	.uleb128 0x12
	.long	.LASF96
	.byte	0x9
	.value	0x11d
	.long	0x551
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
	.long	0x557
	.byte	0xc4
	.byte	0
	.uleb128 0x15
	.long	.LASF1305
	.byte	0x9
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF105
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x535
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0xa2
	.long	0x535
	.byte	0
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0xa3
	.long	0x53b
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
	.long	0x504
	.uleb128 0x3
	.byte	0x8
	.long	0x37c
	.uleb128 0x16
	.long	0x36a
	.long	0x551
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4fd
	.uleb128 0x16
	.long	0x36a
	.long	0x567
	.uleb128 0x17
	.long	0x1ea
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x56d
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
	.uleb128 0x3
	.byte	0x8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x58c
	.uleb128 0x18
	.uleb128 0x19
	.long	.LASF112
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.long	0x702
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
	.uleb128 0x19
	.long	.LASF173
	.byte	0x4
	.byte	0xa
	.byte	0x2c
	.long	0x74b
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
	.uleb128 0x19
	.long	.LASF184
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xb47
	.uleb128 0x10
	.long	.LASF185
	.sleb128 0
	.uleb128 0x1a
	.string	"NIL"
	.sleb128 1
	.uleb128 0x10
	.long	.LASF186
	.sleb128 2
	.uleb128 0x10
	.long	.LASF187
	.sleb128 3
	.uleb128 0x10
	.long	.LASF188
	.sleb128 4
	.uleb128 0x10
	.long	.LASF189
	.sleb128 5
	.uleb128 0x10
	.long	.LASF190
	.sleb128 6
	.uleb128 0x10
	.long	.LASF191
	.sleb128 7
	.uleb128 0x10
	.long	.LASF192
	.sleb128 8
	.uleb128 0x10
	.long	.LASF193
	.sleb128 9
	.uleb128 0x10
	.long	.LASF194
	.sleb128 10
	.uleb128 0x10
	.long	.LASF195
	.sleb128 11
	.uleb128 0x10
	.long	.LASF196
	.sleb128 12
	.uleb128 0x10
	.long	.LASF197
	.sleb128 13
	.uleb128 0x10
	.long	.LASF198
	.sleb128 14
	.uleb128 0x10
	.long	.LASF199
	.sleb128 15
	.uleb128 0x10
	.long	.LASF200
	.sleb128 16
	.uleb128 0x10
	.long	.LASF201
	.sleb128 17
	.uleb128 0x10
	.long	.LASF202
	.sleb128 18
	.uleb128 0x10
	.long	.LASF203
	.sleb128 19
	.uleb128 0x10
	.long	.LASF204
	.sleb128 20
	.uleb128 0x10
	.long	.LASF205
	.sleb128 21
	.uleb128 0x10
	.long	.LASF206
	.sleb128 22
	.uleb128 0x10
	.long	.LASF207
	.sleb128 23
	.uleb128 0x10
	.long	.LASF208
	.sleb128 24
	.uleb128 0x10
	.long	.LASF209
	.sleb128 25
	.uleb128 0x10
	.long	.LASF210
	.sleb128 26
	.uleb128 0x10
	.long	.LASF211
	.sleb128 27
	.uleb128 0x10
	.long	.LASF212
	.sleb128 28
	.uleb128 0x10
	.long	.LASF213
	.sleb128 29
	.uleb128 0x10
	.long	.LASF214
	.sleb128 30
	.uleb128 0x10
	.long	.LASF215
	.sleb128 31
	.uleb128 0x10
	.long	.LASF216
	.sleb128 32
	.uleb128 0x10
	.long	.LASF217
	.sleb128 33
	.uleb128 0x10
	.long	.LASF218
	.sleb128 34
	.uleb128 0x10
	.long	.LASF219
	.sleb128 35
	.uleb128 0x10
	.long	.LASF220
	.sleb128 36
	.uleb128 0x10
	.long	.LASF221
	.sleb128 37
	.uleb128 0x10
	.long	.LASF222
	.sleb128 38
	.uleb128 0x10
	.long	.LASF223
	.sleb128 39
	.uleb128 0x10
	.long	.LASF224
	.sleb128 40
	.uleb128 0x10
	.long	.LASF225
	.sleb128 41
	.uleb128 0x10
	.long	.LASF226
	.sleb128 42
	.uleb128 0x10
	.long	.LASF227
	.sleb128 43
	.uleb128 0x10
	.long	.LASF228
	.sleb128 44
	.uleb128 0x10
	.long	.LASF229
	.sleb128 45
	.uleb128 0x10
	.long	.LASF230
	.sleb128 46
	.uleb128 0x1a
	.string	"SET"
	.sleb128 47
	.uleb128 0x1a
	.string	"USE"
	.sleb128 48
	.uleb128 0x10
	.long	.LASF231
	.sleb128 49
	.uleb128 0x10
	.long	.LASF232
	.sleb128 50
	.uleb128 0x10
	.long	.LASF233
	.sleb128 51
	.uleb128 0x10
	.long	.LASF234
	.sleb128 52
	.uleb128 0x10
	.long	.LASF235
	.sleb128 53
	.uleb128 0x10
	.long	.LASF236
	.sleb128 54
	.uleb128 0x10
	.long	.LASF237
	.sleb128 55
	.uleb128 0x10
	.long	.LASF238
	.sleb128 56
	.uleb128 0x10
	.long	.LASF239
	.sleb128 57
	.uleb128 0x10
	.long	.LASF240
	.sleb128 58
	.uleb128 0x1a
	.string	"PC"
	.sleb128 59
	.uleb128 0x10
	.long	.LASF241
	.sleb128 60
	.uleb128 0x1a
	.string	"REG"
	.sleb128 61
	.uleb128 0x10
	.long	.LASF242
	.sleb128 62
	.uleb128 0x10
	.long	.LASF243
	.sleb128 63
	.uleb128 0x10
	.long	.LASF244
	.sleb128 64
	.uleb128 0x10
	.long	.LASF245
	.sleb128 65
	.uleb128 0x1a
	.string	"MEM"
	.sleb128 66
	.uleb128 0x10
	.long	.LASF246
	.sleb128 67
	.uleb128 0x10
	.long	.LASF247
	.sleb128 68
	.uleb128 0x1a
	.string	"CC0"
	.sleb128 69
	.uleb128 0x10
	.long	.LASF248
	.sleb128 70
	.uleb128 0x10
	.long	.LASF249
	.sleb128 71
	.uleb128 0x10
	.long	.LASF250
	.sleb128 72
	.uleb128 0x10
	.long	.LASF251
	.sleb128 73
	.uleb128 0x10
	.long	.LASF252
	.sleb128 74
	.uleb128 0x10
	.long	.LASF253
	.sleb128 75
	.uleb128 0x10
	.long	.LASF254
	.sleb128 76
	.uleb128 0x1a
	.string	"NEG"
	.sleb128 77
	.uleb128 0x10
	.long	.LASF255
	.sleb128 78
	.uleb128 0x1a
	.string	"DIV"
	.sleb128 79
	.uleb128 0x1a
	.string	"MOD"
	.sleb128 80
	.uleb128 0x10
	.long	.LASF256
	.sleb128 81
	.uleb128 0x10
	.long	.LASF257
	.sleb128 82
	.uleb128 0x1a
	.string	"AND"
	.sleb128 83
	.uleb128 0x1a
	.string	"IOR"
	.sleb128 84
	.uleb128 0x1a
	.string	"XOR"
	.sleb128 85
	.uleb128 0x1a
	.string	"NOT"
	.sleb128 86
	.uleb128 0x10
	.long	.LASF258
	.sleb128 87
	.uleb128 0x10
	.long	.LASF259
	.sleb128 88
	.uleb128 0x10
	.long	.LASF260
	.sleb128 89
	.uleb128 0x10
	.long	.LASF261
	.sleb128 90
	.uleb128 0x10
	.long	.LASF262
	.sleb128 91
	.uleb128 0x10
	.long	.LASF263
	.sleb128 92
	.uleb128 0x10
	.long	.LASF264
	.sleb128 93
	.uleb128 0x10
	.long	.LASF265
	.sleb128 94
	.uleb128 0x10
	.long	.LASF266
	.sleb128 95
	.uleb128 0x10
	.long	.LASF267
	.sleb128 96
	.uleb128 0x10
	.long	.LASF268
	.sleb128 97
	.uleb128 0x10
	.long	.LASF269
	.sleb128 98
	.uleb128 0x10
	.long	.LASF270
	.sleb128 99
	.uleb128 0x10
	.long	.LASF271
	.sleb128 100
	.uleb128 0x10
	.long	.LASF272
	.sleb128 101
	.uleb128 0x1a
	.string	"NE"
	.sleb128 102
	.uleb128 0x1a
	.string	"EQ"
	.sleb128 103
	.uleb128 0x1a
	.string	"GE"
	.sleb128 104
	.uleb128 0x1a
	.string	"GT"
	.sleb128 105
	.uleb128 0x1a
	.string	"LE"
	.sleb128 106
	.uleb128 0x1a
	.string	"LT"
	.sleb128 107
	.uleb128 0x1a
	.string	"GEU"
	.sleb128 108
	.uleb128 0x1a
	.string	"GTU"
	.sleb128 109
	.uleb128 0x1a
	.string	"LEU"
	.sleb128 110
	.uleb128 0x1a
	.string	"LTU"
	.sleb128 111
	.uleb128 0x10
	.long	.LASF273
	.sleb128 112
	.uleb128 0x10
	.long	.LASF274
	.sleb128 113
	.uleb128 0x10
	.long	.LASF275
	.sleb128 114
	.uleb128 0x10
	.long	.LASF276
	.sleb128 115
	.uleb128 0x10
	.long	.LASF277
	.sleb128 116
	.uleb128 0x10
	.long	.LASF278
	.sleb128 117
	.uleb128 0x10
	.long	.LASF279
	.sleb128 118
	.uleb128 0x10
	.long	.LASF280
	.sleb128 119
	.uleb128 0x10
	.long	.LASF281
	.sleb128 120
	.uleb128 0x10
	.long	.LASF282
	.sleb128 121
	.uleb128 0x10
	.long	.LASF283
	.sleb128 122
	.uleb128 0x10
	.long	.LASF284
	.sleb128 123
	.uleb128 0x10
	.long	.LASF285
	.sleb128 124
	.uleb128 0x10
	.long	.LASF286
	.sleb128 125
	.uleb128 0x1a
	.string	"FIX"
	.sleb128 126
	.uleb128 0x10
	.long	.LASF287
	.sleb128 127
	.uleb128 0x10
	.long	.LASF288
	.sleb128 128
	.uleb128 0x1a
	.string	"ABS"
	.sleb128 129
	.uleb128 0x10
	.long	.LASF289
	.sleb128 130
	.uleb128 0x1a
	.string	"FFS"
	.sleb128 131
	.uleb128 0x10
	.long	.LASF290
	.sleb128 132
	.uleb128 0x10
	.long	.LASF291
	.sleb128 133
	.uleb128 0x10
	.long	.LASF292
	.sleb128 134
	.uleb128 0x10
	.long	.LASF293
	.sleb128 135
	.uleb128 0x10
	.long	.LASF294
	.sleb128 136
	.uleb128 0x10
	.long	.LASF295
	.sleb128 137
	.uleb128 0x10
	.long	.LASF296
	.sleb128 138
	.uleb128 0x10
	.long	.LASF297
	.sleb128 139
	.uleb128 0x10
	.long	.LASF298
	.sleb128 140
	.uleb128 0x10
	.long	.LASF299
	.sleb128 141
	.uleb128 0x10
	.long	.LASF300
	.sleb128 142
	.uleb128 0x10
	.long	.LASF301
	.sleb128 143
	.uleb128 0x10
	.long	.LASF302
	.sleb128 144
	.uleb128 0x10
	.long	.LASF303
	.sleb128 145
	.uleb128 0x10
	.long	.LASF304
	.sleb128 146
	.uleb128 0x10
	.long	.LASF305
	.sleb128 147
	.uleb128 0x10
	.long	.LASF306
	.sleb128 148
	.uleb128 0x10
	.long	.LASF307
	.sleb128 149
	.uleb128 0x10
	.long	.LASF308
	.sleb128 150
	.uleb128 0x10
	.long	.LASF309
	.sleb128 151
	.uleb128 0x1a
	.string	"PHI"
	.sleb128 152
	.uleb128 0x10
	.long	.LASF310
	.sleb128 153
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xbc8
	.uleb128 0x5
	.long	.LASF311
	.byte	0x2
	.byte	0x47
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF312
	.byte	0x2
	.byte	0x49
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF313
	.byte	0x2
	.byte	0x4a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF314
	.byte	0x2
	.byte	0x4c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF315
	.byte	0x2
	.byte	0x4e
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF316
	.byte	0x2
	.byte	0x50
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF317
	.byte	0x2
	.byte	0x53
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF318
	.byte	0x2
	.byte	0x55
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF319
	.byte	0x2
	.byte	0x56
	.long	0xb47
	.uleb128 0x1b
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xc18
	.uleb128 0x8
	.long	.LASF320
	.byte	0x2
	.byte	0x5e
	.long	0x319
	.byte	0
	.uleb128 0x8
	.long	.LASF321
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF322
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF323
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF324
	.byte	0x2
	.byte	0x62
	.long	0x310
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF325
	.byte	0x2
	.byte	0x63
	.long	0xbd3
	.uleb128 0x1c
	.long	.LASF327
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xcbe
	.uleb128 0x1d
	.long	.LASF328
	.byte	0x2
	.byte	0x69
	.long	0x319
	.uleb128 0x1d
	.long	.LASF329
	.byte	0x2
	.byte	0x6a
	.long	0x1e3
	.uleb128 0x1d
	.long	.LASF330
	.byte	0x2
	.byte	0x6b
	.long	0x310
	.uleb128 0x1d
	.long	.LASF331
	.byte	0x2
	.byte	0x6c
	.long	0x567
	.uleb128 0x1e
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1d
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1d
	.long	.LASF332
	.byte	0x2
	.byte	0x6f
	.long	0x58d
	.uleb128 0x1d
	.long	.LASF333
	.byte	0x2
	.byte	0x70
	.long	0xbc8
	.uleb128 0x1d
	.long	.LASF334
	.byte	0x2
	.byte	0x71
	.long	0xcc3
	.uleb128 0x1d
	.long	.LASF335
	.byte	0x2
	.byte	0x72
	.long	0xcfa
	.uleb128 0x1d
	.long	.LASF336
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1e
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xdcd
	.uleb128 0x1d
	.long	.LASF337
	.byte	0x2
	.byte	0x75
	.long	0xdd3
	.byte	0
	.uleb128 0x1f
	.long	.LASF756
	.uleb128 0x3
	.byte	0x8
	.long	0xcbe
	.uleb128 0x4
	.long	.LASF338
	.byte	0x18
	.byte	0xb
	.byte	0x34
	.long	0xcfa
	.uleb128 0x8
	.long	.LASF339
	.byte	0xb
	.byte	0x35
	.long	0x316a
	.byte	0
	.uleb128 0x8
	.long	.LASF340
	.byte	0xb
	.byte	0x36
	.long	0x316a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0x37
	.long	0x310
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xcc9
	.uleb128 0x4
	.long	.LASF342
	.byte	0x70
	.byte	0xc
	.byte	0xae
	.long	0xdcd
	.uleb128 0x8
	.long	.LASF343
	.byte	0xc
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0xc
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF344
	.byte	0xc
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF345
	.byte	0xc
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF346
	.byte	0xc
	.byte	0xb7
	.long	0x3210
	.byte	0x20
	.uleb128 0x8
	.long	.LASF347
	.byte	0xc
	.byte	0xb7
	.long	0x3210
	.byte	0x28
	.uleb128 0x8
	.long	.LASF348
	.byte	0xc
	.byte	0xbc
	.long	0x317b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF349
	.byte	0xc
	.byte	0xc0
	.long	0x317b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF350
	.byte	0xc
	.byte	0xc6
	.long	0x317b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF351
	.byte	0xc
	.byte	0xc8
	.long	0x317b
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0xcb
	.long	0x317
	.byte	0x50
	.uleb128 0x8
	.long	.LASF352
	.byte	0xc
	.byte	0xce
	.long	0x1e3
	.byte	0x58
	.uleb128 0x8
	.long	.LASF353
	.byte	0xc
	.byte	0xd1
	.long	0x1e3
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF354
	.byte	0xc
	.byte	0xd4
	.long	0x3186
	.byte	0x60
	.uleb128 0x8
	.long	.LASF355
	.byte	0xc
	.byte	0xd7
	.long	0x1e3
	.byte	0x68
	.uleb128 0x8
	.long	.LASF356
	.byte	0xc
	.byte	0xda
	.long	0x1e3
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd00
	.uleb128 0x3
	.byte	0x8
	.long	0xc18
	.uleb128 0x7
	.long	.LASF357
	.byte	0x2
	.byte	0x76
	.long	0xc23
	.uleb128 0x16
	.long	0xdd9
	.long	0xdf4
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x2d
	.long	0xe04
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF358
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xec6
	.uleb128 0x10
	.long	.LASF359
	.sleb128 1
	.uleb128 0x10
	.long	.LASF360
	.sleb128 2
	.uleb128 0x10
	.long	.LASF361
	.sleb128 3
	.uleb128 0x10
	.long	.LASF362
	.sleb128 4
	.uleb128 0x10
	.long	.LASF363
	.sleb128 5
	.uleb128 0x10
	.long	.LASF364
	.sleb128 6
	.uleb128 0x10
	.long	.LASF365
	.sleb128 7
	.uleb128 0x10
	.long	.LASF366
	.sleb128 8
	.uleb128 0x10
	.long	.LASF367
	.sleb128 9
	.uleb128 0x10
	.long	.LASF368
	.sleb128 10
	.uleb128 0x10
	.long	.LASF369
	.sleb128 11
	.uleb128 0x10
	.long	.LASF370
	.sleb128 12
	.uleb128 0x10
	.long	.LASF371
	.sleb128 13
	.uleb128 0x10
	.long	.LASF372
	.sleb128 14
	.uleb128 0x10
	.long	.LASF373
	.sleb128 15
	.uleb128 0x10
	.long	.LASF374
	.sleb128 16
	.uleb128 0x10
	.long	.LASF375
	.sleb128 17
	.uleb128 0x10
	.long	.LASF376
	.sleb128 18
	.uleb128 0x10
	.long	.LASF377
	.sleb128 19
	.uleb128 0x10
	.long	.LASF378
	.sleb128 20
	.uleb128 0x10
	.long	.LASF379
	.sleb128 21
	.uleb128 0x10
	.long	.LASF380
	.sleb128 22
	.uleb128 0x10
	.long	.LASF381
	.sleb128 23
	.uleb128 0x10
	.long	.LASF382
	.sleb128 24
	.uleb128 0x10
	.long	.LASF383
	.sleb128 25
	.uleb128 0x10
	.long	.LASF384
	.sleb128 26
	.uleb128 0x10
	.long	.LASF385
	.sleb128 27
	.uleb128 0x10
	.long	.LASF386
	.sleb128 28
	.uleb128 0x10
	.long	.LASF387
	.sleb128 29
	.uleb128 0x10
	.long	.LASF388
	.sleb128 30
	.byte	0
	.uleb128 0xf
	.long	.LASF389
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xf75
	.uleb128 0x10
	.long	.LASF390
	.sleb128 -100
	.uleb128 0x10
	.long	.LASF391
	.sleb128 -99
	.uleb128 0x10
	.long	.LASF392
	.sleb128 -98
	.uleb128 0x10
	.long	.LASF393
	.sleb128 -97
	.uleb128 0x10
	.long	.LASF394
	.sleb128 -96
	.uleb128 0x10
	.long	.LASF395
	.sleb128 -95
	.uleb128 0x10
	.long	.LASF396
	.sleb128 -94
	.uleb128 0x10
	.long	.LASF397
	.sleb128 -93
	.uleb128 0x10
	.long	.LASF398
	.sleb128 -92
	.uleb128 0x10
	.long	.LASF399
	.sleb128 -91
	.uleb128 0x10
	.long	.LASF400
	.sleb128 -90
	.uleb128 0x10
	.long	.LASF401
	.sleb128 -89
	.uleb128 0x10
	.long	.LASF402
	.sleb128 -88
	.uleb128 0x10
	.long	.LASF403
	.sleb128 -87
	.uleb128 0x10
	.long	.LASF404
	.sleb128 -86
	.uleb128 0x10
	.long	.LASF405
	.sleb128 -85
	.uleb128 0x10
	.long	.LASF406
	.sleb128 -84
	.uleb128 0x10
	.long	.LASF407
	.sleb128 -83
	.uleb128 0x10
	.long	.LASF408
	.sleb128 -82
	.uleb128 0x10
	.long	.LASF409
	.sleb128 -81
	.uleb128 0x10
	.long	.LASF410
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF411
	.sleb128 -79
	.uleb128 0x10
	.long	.LASF412
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xf
	.long	.LASF413
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xfd1
	.uleb128 0x10
	.long	.LASF414
	.sleb128 0
	.uleb128 0x10
	.long	.LASF415
	.sleb128 1
	.uleb128 0x10
	.long	.LASF416
	.sleb128 2
	.uleb128 0x10
	.long	.LASF417
	.sleb128 3
	.uleb128 0x10
	.long	.LASF418
	.sleb128 4
	.uleb128 0x10
	.long	.LASF419
	.sleb128 5
	.uleb128 0x10
	.long	.LASF420
	.sleb128 6
	.uleb128 0x10
	.long	.LASF421
	.sleb128 7
	.uleb128 0x10
	.long	.LASF422
	.sleb128 8
	.uleb128 0x10
	.long	.LASF423
	.sleb128 9
	.uleb128 0x10
	.long	.LASF424
	.sleb128 10
	.uleb128 0x10
	.long	.LASF425
	.sleb128 11
	.byte	0
	.uleb128 0x19
	.long	.LASF426
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0x13aa
	.uleb128 0x10
	.long	.LASF427
	.sleb128 0
	.uleb128 0x10
	.long	.LASF428
	.sleb128 1
	.uleb128 0x10
	.long	.LASF429
	.sleb128 2
	.uleb128 0x10
	.long	.LASF430
	.sleb128 3
	.uleb128 0x10
	.long	.LASF431
	.sleb128 4
	.uleb128 0x10
	.long	.LASF432
	.sleb128 5
	.uleb128 0x10
	.long	.LASF433
	.sleb128 6
	.uleb128 0x10
	.long	.LASF434
	.sleb128 7
	.uleb128 0x10
	.long	.LASF435
	.sleb128 8
	.uleb128 0x10
	.long	.LASF436
	.sleb128 9
	.uleb128 0x10
	.long	.LASF437
	.sleb128 10
	.uleb128 0x10
	.long	.LASF438
	.sleb128 11
	.uleb128 0x10
	.long	.LASF439
	.sleb128 12
	.uleb128 0x10
	.long	.LASF440
	.sleb128 13
	.uleb128 0x10
	.long	.LASF441
	.sleb128 14
	.uleb128 0x10
	.long	.LASF442
	.sleb128 15
	.uleb128 0x10
	.long	.LASF443
	.sleb128 16
	.uleb128 0x10
	.long	.LASF444
	.sleb128 17
	.uleb128 0x10
	.long	.LASF445
	.sleb128 18
	.uleb128 0x10
	.long	.LASF446
	.sleb128 19
	.uleb128 0x10
	.long	.LASF447
	.sleb128 20
	.uleb128 0x10
	.long	.LASF448
	.sleb128 21
	.uleb128 0x10
	.long	.LASF449
	.sleb128 22
	.uleb128 0x10
	.long	.LASF450
	.sleb128 23
	.uleb128 0x10
	.long	.LASF451
	.sleb128 24
	.uleb128 0x10
	.long	.LASF452
	.sleb128 25
	.uleb128 0x10
	.long	.LASF453
	.sleb128 26
	.uleb128 0x10
	.long	.LASF454
	.sleb128 27
	.uleb128 0x10
	.long	.LASF455
	.sleb128 28
	.uleb128 0x10
	.long	.LASF456
	.sleb128 29
	.uleb128 0x10
	.long	.LASF457
	.sleb128 30
	.uleb128 0x10
	.long	.LASF458
	.sleb128 31
	.uleb128 0x10
	.long	.LASF459
	.sleb128 32
	.uleb128 0x10
	.long	.LASF460
	.sleb128 33
	.uleb128 0x10
	.long	.LASF461
	.sleb128 34
	.uleb128 0x10
	.long	.LASF462
	.sleb128 35
	.uleb128 0x10
	.long	.LASF463
	.sleb128 36
	.uleb128 0x10
	.long	.LASF464
	.sleb128 37
	.uleb128 0x10
	.long	.LASF465
	.sleb128 38
	.uleb128 0x10
	.long	.LASF466
	.sleb128 39
	.uleb128 0x10
	.long	.LASF467
	.sleb128 40
	.uleb128 0x10
	.long	.LASF468
	.sleb128 41
	.uleb128 0x10
	.long	.LASF469
	.sleb128 42
	.uleb128 0x10
	.long	.LASF470
	.sleb128 43
	.uleb128 0x10
	.long	.LASF471
	.sleb128 44
	.uleb128 0x10
	.long	.LASF472
	.sleb128 45
	.uleb128 0x10
	.long	.LASF473
	.sleb128 46
	.uleb128 0x10
	.long	.LASF474
	.sleb128 47
	.uleb128 0x10
	.long	.LASF475
	.sleb128 48
	.uleb128 0x10
	.long	.LASF476
	.sleb128 49
	.uleb128 0x10
	.long	.LASF477
	.sleb128 50
	.uleb128 0x10
	.long	.LASF478
	.sleb128 51
	.uleb128 0x10
	.long	.LASF479
	.sleb128 52
	.uleb128 0x10
	.long	.LASF480
	.sleb128 53
	.uleb128 0x10
	.long	.LASF481
	.sleb128 54
	.uleb128 0x10
	.long	.LASF482
	.sleb128 55
	.uleb128 0x10
	.long	.LASF483
	.sleb128 56
	.uleb128 0x10
	.long	.LASF484
	.sleb128 57
	.uleb128 0x10
	.long	.LASF485
	.sleb128 58
	.uleb128 0x10
	.long	.LASF486
	.sleb128 59
	.uleb128 0x10
	.long	.LASF487
	.sleb128 60
	.uleb128 0x10
	.long	.LASF488
	.sleb128 61
	.uleb128 0x10
	.long	.LASF489
	.sleb128 62
	.uleb128 0x10
	.long	.LASF490
	.sleb128 63
	.uleb128 0x10
	.long	.LASF491
	.sleb128 64
	.uleb128 0x10
	.long	.LASF492
	.sleb128 65
	.uleb128 0x10
	.long	.LASF493
	.sleb128 66
	.uleb128 0x10
	.long	.LASF494
	.sleb128 67
	.uleb128 0x10
	.long	.LASF495
	.sleb128 68
	.uleb128 0x10
	.long	.LASF496
	.sleb128 69
	.uleb128 0x10
	.long	.LASF497
	.sleb128 70
	.uleb128 0x10
	.long	.LASF498
	.sleb128 71
	.uleb128 0x10
	.long	.LASF499
	.sleb128 72
	.uleb128 0x10
	.long	.LASF500
	.sleb128 73
	.uleb128 0x10
	.long	.LASF501
	.sleb128 74
	.uleb128 0x10
	.long	.LASF502
	.sleb128 75
	.uleb128 0x10
	.long	.LASF503
	.sleb128 76
	.uleb128 0x10
	.long	.LASF504
	.sleb128 77
	.uleb128 0x10
	.long	.LASF505
	.sleb128 78
	.uleb128 0x10
	.long	.LASF506
	.sleb128 79
	.uleb128 0x10
	.long	.LASF507
	.sleb128 80
	.uleb128 0x10
	.long	.LASF508
	.sleb128 81
	.uleb128 0x10
	.long	.LASF509
	.sleb128 82
	.uleb128 0x10
	.long	.LASF510
	.sleb128 83
	.uleb128 0x10
	.long	.LASF511
	.sleb128 84
	.uleb128 0x10
	.long	.LASF512
	.sleb128 85
	.uleb128 0x10
	.long	.LASF513
	.sleb128 86
	.uleb128 0x10
	.long	.LASF514
	.sleb128 87
	.uleb128 0x10
	.long	.LASF515
	.sleb128 88
	.uleb128 0x10
	.long	.LASF516
	.sleb128 89
	.uleb128 0x10
	.long	.LASF517
	.sleb128 90
	.uleb128 0x10
	.long	.LASF518
	.sleb128 91
	.uleb128 0x10
	.long	.LASF519
	.sleb128 92
	.uleb128 0x10
	.long	.LASF520
	.sleb128 93
	.uleb128 0x10
	.long	.LASF521
	.sleb128 94
	.uleb128 0x10
	.long	.LASF522
	.sleb128 95
	.uleb128 0x10
	.long	.LASF523
	.sleb128 96
	.uleb128 0x10
	.long	.LASF524
	.sleb128 97
	.uleb128 0x10
	.long	.LASF525
	.sleb128 98
	.uleb128 0x10
	.long	.LASF526
	.sleb128 99
	.uleb128 0x10
	.long	.LASF527
	.sleb128 100
	.uleb128 0x10
	.long	.LASF528
	.sleb128 101
	.uleb128 0x10
	.long	.LASF529
	.sleb128 102
	.uleb128 0x10
	.long	.LASF530
	.sleb128 103
	.uleb128 0x10
	.long	.LASF531
	.sleb128 104
	.uleb128 0x10
	.long	.LASF532
	.sleb128 105
	.uleb128 0x10
	.long	.LASF533
	.sleb128 106
	.uleb128 0x10
	.long	.LASF534
	.sleb128 107
	.uleb128 0x10
	.long	.LASF535
	.sleb128 108
	.uleb128 0x10
	.long	.LASF536
	.sleb128 109
	.uleb128 0x10
	.long	.LASF537
	.sleb128 110
	.uleb128 0x10
	.long	.LASF538
	.sleb128 111
	.uleb128 0x10
	.long	.LASF539
	.sleb128 112
	.uleb128 0x10
	.long	.LASF540
	.sleb128 113
	.uleb128 0x10
	.long	.LASF541
	.sleb128 114
	.uleb128 0x10
	.long	.LASF542
	.sleb128 115
	.uleb128 0x10
	.long	.LASF543
	.sleb128 116
	.uleb128 0x10
	.long	.LASF544
	.sleb128 117
	.uleb128 0x10
	.long	.LASF545
	.sleb128 118
	.uleb128 0x10
	.long	.LASF546
	.sleb128 119
	.uleb128 0x10
	.long	.LASF547
	.sleb128 120
	.uleb128 0x10
	.long	.LASF548
	.sleb128 121
	.uleb128 0x10
	.long	.LASF549
	.sleb128 122
	.uleb128 0x10
	.long	.LASF550
	.sleb128 123
	.uleb128 0x10
	.long	.LASF551
	.sleb128 124
	.uleb128 0x10
	.long	.LASF552
	.sleb128 125
	.uleb128 0x10
	.long	.LASF553
	.sleb128 126
	.uleb128 0x10
	.long	.LASF554
	.sleb128 127
	.uleb128 0x10
	.long	.LASF555
	.sleb128 128
	.uleb128 0x10
	.long	.LASF556
	.sleb128 129
	.uleb128 0x10
	.long	.LASF557
	.sleb128 130
	.uleb128 0x10
	.long	.LASF558
	.sleb128 131
	.uleb128 0x10
	.long	.LASF559
	.sleb128 132
	.uleb128 0x10
	.long	.LASF560
	.sleb128 133
	.uleb128 0x10
	.long	.LASF561
	.sleb128 134
	.uleb128 0x10
	.long	.LASF562
	.sleb128 135
	.uleb128 0x10
	.long	.LASF563
	.sleb128 136
	.uleb128 0x10
	.long	.LASF564
	.sleb128 137
	.uleb128 0x10
	.long	.LASF565
	.sleb128 138
	.uleb128 0x10
	.long	.LASF566
	.sleb128 139
	.uleb128 0x10
	.long	.LASF567
	.sleb128 140
	.uleb128 0x10
	.long	.LASF568
	.sleb128 141
	.uleb128 0x10
	.long	.LASF569
	.sleb128 142
	.uleb128 0x10
	.long	.LASF570
	.sleb128 143
	.uleb128 0x10
	.long	.LASF571
	.sleb128 144
	.uleb128 0x10
	.long	.LASF572
	.sleb128 145
	.uleb128 0x10
	.long	.LASF573
	.sleb128 146
	.uleb128 0x10
	.long	.LASF574
	.sleb128 147
	.byte	0
	.uleb128 0x19
	.long	.LASF575
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x1617
	.uleb128 0x10
	.long	.LASF576
	.sleb128 0
	.uleb128 0x10
	.long	.LASF577
	.sleb128 1
	.uleb128 0x10
	.long	.LASF578
	.sleb128 2
	.uleb128 0x10
	.long	.LASF579
	.sleb128 3
	.uleb128 0x10
	.long	.LASF580
	.sleb128 4
	.uleb128 0x10
	.long	.LASF581
	.sleb128 5
	.uleb128 0x10
	.long	.LASF582
	.sleb128 6
	.uleb128 0x10
	.long	.LASF583
	.sleb128 7
	.uleb128 0x10
	.long	.LASF584
	.sleb128 8
	.uleb128 0x10
	.long	.LASF585
	.sleb128 9
	.uleb128 0x10
	.long	.LASF586
	.sleb128 10
	.uleb128 0x10
	.long	.LASF587
	.sleb128 11
	.uleb128 0x10
	.long	.LASF588
	.sleb128 12
	.uleb128 0x10
	.long	.LASF589
	.sleb128 13
	.uleb128 0x10
	.long	.LASF590
	.sleb128 14
	.uleb128 0x10
	.long	.LASF591
	.sleb128 15
	.uleb128 0x10
	.long	.LASF592
	.sleb128 16
	.uleb128 0x10
	.long	.LASF593
	.sleb128 17
	.uleb128 0x10
	.long	.LASF594
	.sleb128 18
	.uleb128 0x10
	.long	.LASF595
	.sleb128 19
	.uleb128 0x10
	.long	.LASF596
	.sleb128 20
	.uleb128 0x10
	.long	.LASF597
	.sleb128 21
	.uleb128 0x10
	.long	.LASF598
	.sleb128 22
	.uleb128 0x10
	.long	.LASF599
	.sleb128 23
	.uleb128 0x10
	.long	.LASF600
	.sleb128 24
	.uleb128 0x10
	.long	.LASF601
	.sleb128 25
	.uleb128 0x10
	.long	.LASF602
	.sleb128 26
	.uleb128 0x10
	.long	.LASF603
	.sleb128 27
	.uleb128 0x10
	.long	.LASF604
	.sleb128 28
	.uleb128 0x10
	.long	.LASF605
	.sleb128 29
	.uleb128 0x10
	.long	.LASF606
	.sleb128 30
	.uleb128 0x10
	.long	.LASF607
	.sleb128 31
	.uleb128 0x10
	.long	.LASF608
	.sleb128 32
	.uleb128 0x10
	.long	.LASF609
	.sleb128 33
	.uleb128 0x10
	.long	.LASF610
	.sleb128 34
	.uleb128 0x10
	.long	.LASF611
	.sleb128 35
	.uleb128 0x10
	.long	.LASF612
	.sleb128 36
	.uleb128 0x10
	.long	.LASF613
	.sleb128 37
	.uleb128 0x10
	.long	.LASF614
	.sleb128 38
	.uleb128 0x10
	.long	.LASF615
	.sleb128 39
	.uleb128 0x10
	.long	.LASF616
	.sleb128 40
	.uleb128 0x10
	.long	.LASF617
	.sleb128 41
	.uleb128 0x10
	.long	.LASF618
	.sleb128 42
	.uleb128 0x10
	.long	.LASF619
	.sleb128 43
	.uleb128 0x10
	.long	.LASF620
	.sleb128 44
	.uleb128 0x10
	.long	.LASF621
	.sleb128 45
	.uleb128 0x10
	.long	.LASF622
	.sleb128 46
	.uleb128 0x10
	.long	.LASF623
	.sleb128 47
	.uleb128 0x10
	.long	.LASF624
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
	.uleb128 0x10
	.long	.LASF635
	.sleb128 59
	.uleb128 0x10
	.long	.LASF636
	.sleb128 60
	.uleb128 0x10
	.long	.LASF637
	.sleb128 61
	.uleb128 0x10
	.long	.LASF638
	.sleb128 62
	.uleb128 0x10
	.long	.LASF639
	.sleb128 63
	.uleb128 0x10
	.long	.LASF640
	.sleb128 64
	.uleb128 0x10
	.long	.LASF641
	.sleb128 65
	.uleb128 0x10
	.long	.LASF642
	.sleb128 66
	.uleb128 0x10
	.long	.LASF643
	.sleb128 67
	.uleb128 0x10
	.long	.LASF644
	.sleb128 68
	.uleb128 0x10
	.long	.LASF645
	.sleb128 69
	.uleb128 0x10
	.long	.LASF646
	.sleb128 70
	.uleb128 0x10
	.long	.LASF647
	.sleb128 71
	.uleb128 0x10
	.long	.LASF648
	.sleb128 72
	.uleb128 0x10
	.long	.LASF649
	.sleb128 73
	.uleb128 0x10
	.long	.LASF650
	.sleb128 74
	.uleb128 0x10
	.long	.LASF651
	.sleb128 75
	.uleb128 0x10
	.long	.LASF652
	.sleb128 76
	.uleb128 0x10
	.long	.LASF653
	.sleb128 77
	.uleb128 0x10
	.long	.LASF654
	.sleb128 78
	.uleb128 0x10
	.long	.LASF655
	.sleb128 79
	.uleb128 0x10
	.long	.LASF656
	.sleb128 80
	.uleb128 0x10
	.long	.LASF657
	.sleb128 81
	.uleb128 0x10
	.long	.LASF658
	.sleb128 82
	.uleb128 0x10
	.long	.LASF659
	.sleb128 83
	.uleb128 0x10
	.long	.LASF660
	.sleb128 84
	.uleb128 0x10
	.long	.LASF661
	.sleb128 85
	.uleb128 0x10
	.long	.LASF662
	.sleb128 86
	.uleb128 0x10
	.long	.LASF663
	.sleb128 87
	.uleb128 0x10
	.long	.LASF664
	.sleb128 88
	.uleb128 0x10
	.long	.LASF665
	.sleb128 89
	.uleb128 0x10
	.long	.LASF666
	.sleb128 90
	.uleb128 0x10
	.long	.LASF667
	.sleb128 91
	.uleb128 0x10
	.long	.LASF668
	.sleb128 92
	.uleb128 0x10
	.long	.LASF669
	.sleb128 93
	.uleb128 0x10
	.long	.LASF670
	.sleb128 94
	.uleb128 0x10
	.long	.LASF671
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF672
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0x17b3
	.uleb128 0x8
	.long	.LASF673
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
	.long	.LASF674
	.byte	0x4
	.byte	0x80
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF675
	.byte	0x4
	.byte	0x81
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF676
	.byte	0x4
	.byte	0x82
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF677
	.byte	0x4
	.byte	0x83
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF678
	.byte	0x4
	.byte	0x84
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF679
	.byte	0x4
	.byte	0x85
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF680
	.byte	0x4
	.byte	0x86
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF681
	.byte	0x4
	.byte	0x87
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF682
	.byte	0x4
	.byte	0x89
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF683
	.byte	0x4
	.byte	0x8a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF684
	.byte	0x4
	.byte	0x8b
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF685
	.byte	0x4
	.byte	0x8c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF686
	.byte	0x4
	.byte	0x8d
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF687
	.byte	0x4
	.byte	0x8e
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF688
	.byte	0x4
	.byte	0x8f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF689
	.byte	0x4
	.byte	0x90
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF690
	.byte	0x4
	.byte	0x92
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF691
	.byte	0x4
	.byte	0x93
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF692
	.byte	0x4
	.byte	0x94
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF693
	.byte	0x4
	.byte	0x95
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF694
	.byte	0x4
	.byte	0x96
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF695
	.byte	0x4
	.byte	0x97
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF696
	.byte	0x4
	.byte	0x98
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF697
	.byte	0x4
	.byte	0x99
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x20
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0x17d7
	.uleb128 0x21
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x32b
	.byte	0
	.uleb128 0x12
	.long	.LASF698
	.byte	0x4
	.value	0x2cb
	.long	0x319
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF699
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0x180c
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x1617
	.byte	0
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0x17b3
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.byte	0x18
	.byte	0xd
	.byte	0x6b
	.long	0x181f
	.uleb128 0x6
	.string	"r"
	.byte	0xd
	.byte	0x6c
	.long	0x181f
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x319
	.long	0x182f
	.uleb128 0x17
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF700
	.byte	0xd
	.byte	0x6d
	.long	0x180c
	.uleb128 0x9
	.long	.LASF701
	.byte	0x18
	.byte	0xd
	.value	0x1bd
	.long	0x185c
	.uleb128 0xb
	.string	"d"
	.byte	0xd
	.value	0x1bf
	.long	0x182f
	.uleb128 0xb
	.string	"i"
	.byte	0xd
	.value	0x1c0
	.long	0x181f
	.byte	0
	.uleb128 0x11
	.long	.LASF702
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0x1891
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x1617
	.byte	0
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0x182f
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF703
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x18d3
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x1617
	.byte	0
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF704
	.byte	0x4
	.value	0x2ed
	.long	0x1e3
	.byte	0x20
	.uleb128 0x12
	.long	.LASF705
	.byte	0x4
	.value	0x2ee
	.long	0x567
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF706
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x1915
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x1617
	.byte	0
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF707
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF708
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF709
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x194a
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x1617
	.byte	0
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF710
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF711
	.byte	0x10
	.byte	0xe
	.byte	0x1a
	.long	0x196f
	.uleb128 0x6
	.string	"len"
	.byte	0xe
	.byte	0x1c
	.long	0x310
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xe
	.byte	0x1d
	.long	0x196f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1975
	.uleb128 0xc
	.long	0x332
	.uleb128 0x11
	.long	.LASF712
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x19a1
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x1617
	.byte	0
	.uleb128 0x21
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x194a
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF713
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x19d6
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x1617
	.byte	0
	.uleb128 0x12
	.long	.LASF714
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF715
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF716
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x1a09
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x1617
	.byte	0
	.uleb128 0x12
	.long	.LASF704
	.byte	0x4
	.value	0x331
	.long	0x1e3
	.byte	0x18
	.uleb128 0x21
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x1a09
	.byte	0x20
	.byte	0
	.uleb128 0x16
	.long	0x123
	.long	0x1a19
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF717
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x1a4e
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x1617
	.byte	0
	.uleb128 0x12
	.long	.LASF718
	.byte	0x4
	.value	0x372
	.long	0x1e3
	.byte	0x18
	.uleb128 0x12
	.long	.LASF719
	.byte	0x4
	.value	0x373
	.long	0x1a09
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF720
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x1ae7
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x1617
	.byte	0
	.uleb128 0x22
	.long	.LASF721
	.byte	0x4
	.value	0x3a7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x22
	.long	.LASF722
	.byte	0x4
	.value	0x3a8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x22
	.long	.LASF723
	.byte	0x4
	.value	0x3a9
	.long	0x310
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x12
	.long	.LASF724
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF725
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF726
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x12
	.long	.LASF727
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x12
	.long	.LASF728
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF729
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x23
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x1b09
	.uleb128 0xa
	.long	.LASF730
	.byte	0x4
	.value	0x4d8
	.long	0x1e3
	.uleb128 0xa
	.long	.LASF705
	.byte	0x4
	.value	0x4d8
	.long	0x364
	.byte	0
	.uleb128 0x11
	.long	.LASF731
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1d1e
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x1617
	.byte	0
	.uleb128 0x12
	.long	.LASF732
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF323
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF733
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF734
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x21
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x310
	.byte	0x38
	.uleb128 0x22
	.long	.LASF735
	.byte	0x4
	.value	0x4c1
	.long	0x310
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x310
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF736
	.byte	0x4
	.value	0x4c4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF737
	.byte	0x4
	.value	0x4c5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF738
	.byte	0x4
	.value	0x4c6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF739
	.byte	0x4
	.value	0x4c7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF740
	.byte	0x4
	.value	0x4c8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF741
	.byte	0x4
	.value	0x4c9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF742
	.byte	0x4
	.value	0x4ca
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF690
	.byte	0x4
	.value	0x4cc
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF691
	.byte	0x4
	.value	0x4cd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF692
	.byte	0x4
	.value	0x4ce
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF693
	.byte	0x4
	.value	0x4cf
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF694
	.byte	0x4
	.value	0x4d0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF695
	.byte	0x4
	.value	0x4d1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF696
	.byte	0x4
	.value	0x4d2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF743
	.byte	0x4
	.value	0x4d3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF324
	.byte	0x4
	.value	0x4d5
	.long	0x310
	.byte	0x40
	.uleb128 0x12
	.long	.LASF744
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF745
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF746
	.byte	0x4
	.value	0x4d8
	.long	0x1ae7
	.byte	0x58
	.uleb128 0x12
	.long	.LASF747
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF748
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF749
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF750
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF751
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF752
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x12
	.long	.LASF753
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x12
	.long	.LASF754
	.byte	0x4
	.value	0x4e0
	.long	0x319
	.byte	0x98
	.uleb128 0x12
	.long	.LASF755
	.byte	0x4
	.value	0x4e2
	.long	0x1d23
	.byte	0xa0
	.byte	0
	.uleb128 0x1f
	.long	.LASF757
	.uleb128 0x3
	.byte	0x8
	.long	0x1d1e
	.uleb128 0x20
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x1d53
	.uleb128 0x22
	.long	.LASF324
	.byte	0x4
	.value	0x717
	.long	0x310
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.long	.LASF758
	.byte	0x4
	.value	0x717
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1d7b
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x13aa
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x319
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1d29
	.byte	0
	.uleb128 0x23
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1dad
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x222d
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
	.uleb128 0x24
	.long	.LASF759
	.value	0x1b0
	.byte	0xf
	.byte	0xae
	.long	0x222d
	.uleb128 0x6
	.string	"eh"
	.byte	0xf
	.byte	0xb0
	.long	0x308c
	.byte	0
	.uleb128 0x8
	.long	.LASF760
	.byte	0xf
	.byte	0xb1
	.long	0x3097
	.byte	0x8
	.uleb128 0x8
	.long	.LASF321
	.byte	0xf
	.byte	0xb2
	.long	0x309d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF761
	.byte	0xf
	.byte	0xb3
	.long	0x30a3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF762
	.byte	0xf
	.byte	0xb4
	.long	0x30ae
	.byte	0x20
	.uleb128 0x8
	.long	.LASF747
	.byte	0xf
	.byte	0xb9
	.long	0x567
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0xf
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF763
	.byte	0xf
	.byte	0xbf
	.long	0x222d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF764
	.byte	0xf
	.byte	0xc4
	.long	0x1e3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF765
	.byte	0xf
	.byte	0xc9
	.long	0x1e3
	.byte	0x44
	.uleb128 0x8
	.long	.LASF766
	.byte	0xf
	.byte	0xce
	.long	0x1e3
	.byte	0x48
	.uleb128 0x8
	.long	.LASF767
	.byte	0xf
	.byte	0xd2
	.long	0x1e3
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF768
	.byte	0xf
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF769
	.byte	0xf
	.byte	0xda
	.long	0x304
	.byte	0x58
	.uleb128 0x8
	.long	.LASF770
	.byte	0xf
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF771
	.byte	0xf
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF772
	.byte	0xf
	.byte	0xe7
	.long	0x567
	.byte	0x88
	.uleb128 0x8
	.long	.LASF773
	.byte	0xf
	.byte	0xeb
	.long	0x30e5
	.byte	0x90
	.uleb128 0x8
	.long	.LASF774
	.byte	0xf
	.byte	0xee
	.long	0x1e3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF775
	.byte	0xf
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF776
	.byte	0xf
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF777
	.byte	0xf
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF778
	.byte	0xf
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF779
	.byte	0xf
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF780
	.byte	0xf
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x12
	.long	.LASF781
	.byte	0xf
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF782
	.byte	0xf
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x12
	.long	.LASF783
	.byte	0xf
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF784
	.byte	0xf
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x12
	.long	.LASF785
	.byte	0xf
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x12
	.long	.LASF786
	.byte	0xf
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x25
	.long	.LASF787
	.byte	0xf
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x25
	.long	.LASF788
	.byte	0xf
	.value	0x12f
	.long	0x319
	.value	0x108
	.uleb128 0x25
	.long	.LASF789
	.byte	0xf
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x25
	.long	.LASF790
	.byte	0xf
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x25
	.long	.LASF791
	.byte	0xf
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x25
	.long	.LASF792
	.byte	0xf
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x25
	.long	.LASF793
	.byte	0xf
	.value	0x148
	.long	0x310
	.value	0x130
	.uleb128 0x25
	.long	.LASF794
	.byte	0xf
	.value	0x14e
	.long	0xf75
	.value	0x138
	.uleb128 0x25
	.long	.LASF795
	.byte	0xf
	.value	0x151
	.long	0x30f0
	.value	0x140
	.uleb128 0x25
	.long	.LASF796
	.byte	0xf
	.value	0x154
	.long	0x1e3
	.value	0x148
	.uleb128 0x25
	.long	.LASF797
	.byte	0xf
	.value	0x157
	.long	0x1e3
	.value	0x14c
	.uleb128 0x25
	.long	.LASF798
	.byte	0xf
	.value	0x15d
	.long	0x1e3
	.value	0x150
	.uleb128 0x25
	.long	.LASF799
	.byte	0xf
	.value	0x161
	.long	0x2f34
	.value	0x158
	.uleb128 0x25
	.long	.LASF800
	.byte	0xf
	.value	0x164
	.long	0x1e3
	.value	0x160
	.uleb128 0x25
	.long	.LASF801
	.byte	0xf
	.value	0x165
	.long	0x1e3
	.value	0x164
	.uleb128 0x25
	.long	.LASF802
	.byte	0xf
	.value	0x167
	.long	0x317
	.value	0x168
	.uleb128 0x25
	.long	.LASF803
	.byte	0xf
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x25
	.long	.LASF804
	.byte	0xf
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x25
	.long	.LASF805
	.byte	0xf
	.value	0x16d
	.long	0x1e3
	.value	0x180
	.uleb128 0x25
	.long	.LASF806
	.byte	0xf
	.value	0x170
	.long	0x1e3
	.value	0x184
	.uleb128 0x25
	.long	.LASF807
	.byte	0xf
	.value	0x175
	.long	0x30fb
	.value	0x188
	.uleb128 0x25
	.long	.LASF808
	.byte	0xf
	.value	0x177
	.long	0x1e3
	.value	0x190
	.uleb128 0x25
	.long	.LASF809
	.byte	0xf
	.value	0x179
	.long	0x1e3
	.value	0x194
	.uleb128 0x25
	.long	.LASF810
	.byte	0xf
	.value	0x17c
	.long	0x3106
	.value	0x198
	.uleb128 0x25
	.long	.LASF811
	.byte	0xf
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x26
	.long	.LASF812
	.byte	0xf
	.value	0x188
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF813
	.byte	0xf
	.value	0x18c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF814
	.byte	0xf
	.value	0x18f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF815
	.byte	0xf
	.value	0x192
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF816
	.byte	0xf
	.value	0x195
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF817
	.byte	0xf
	.value	0x198
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF818
	.byte	0xf
	.value	0x19c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF819
	.byte	0xf
	.value	0x19f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF820
	.byte	0xf
	.value	0x1a3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF821
	.byte	0xf
	.value	0x1a7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF822
	.byte	0xf
	.value	0x1aa
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF823
	.byte	0xf
	.value	0x1ad
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF824
	.byte	0xf
	.value	0x1b2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF825
	.byte	0xf
	.value	0x1b6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF826
	.byte	0xf
	.value	0x1b9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF827
	.byte	0xf
	.value	0x1bd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF828
	.byte	0xf
	.value	0x1c1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF829
	.byte	0xf
	.value	0x1c5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF830
	.byte	0xf
	.value	0x1cb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF831
	.byte	0xf
	.value	0x1d4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF832
	.byte	0xf
	.value	0x1d7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF833
	.byte	0xf
	.value	0x1da
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF834
	.byte	0xf
	.value	0x1dd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF835
	.byte	0xf
	.value	0x1e0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1dad
	.uleb128 0x11
	.long	.LASF836
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x25b7
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x1617
	.byte	0
	.uleb128 0x12
	.long	.LASF837
	.byte	0x4
	.value	0x6df
	.long	0x567
	.byte	0x18
	.uleb128 0x12
	.long	.LASF838
	.byte	0x4
	.value	0x6e0
	.long	0x1e3
	.byte	0x20
	.uleb128 0x21
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x310
	.byte	0x24
	.uleb128 0x12
	.long	.LASF323
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x22
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x22
	.long	.LASF839
	.byte	0x4
	.value	0x6e5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x22
	.long	.LASF840
	.byte	0x4
	.value	0x6e6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x22
	.long	.LASF841
	.byte	0x4
	.value	0x6e7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x22
	.long	.LASF842
	.byte	0x4
	.value	0x6e8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x22
	.long	.LASF843
	.byte	0x4
	.value	0x6e9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x22
	.long	.LASF844
	.byte	0x4
	.value	0x6ea
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x22
	.long	.LASF845
	.byte	0x4
	.value	0x6eb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x22
	.long	.LASF722
	.byte	0x4
	.value	0x6ec
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x22
	.long	.LASF846
	.byte	0x4
	.value	0x6ee
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x22
	.long	.LASF847
	.byte	0x4
	.value	0x6ef
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x22
	.long	.LASF848
	.byte	0x4
	.value	0x6f0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x22
	.long	.LASF849
	.byte	0x4
	.value	0x6f1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x22
	.long	.LASF850
	.byte	0x4
	.value	0x6f2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x22
	.long	.LASF851
	.byte	0x4
	.value	0x6f3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x22
	.long	.LASF852
	.byte	0x4
	.value	0x6f4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x22
	.long	.LASF853
	.byte	0x4
	.value	0x6f5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x22
	.long	.LASF854
	.byte	0x4
	.value	0x6f7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x22
	.long	.LASF855
	.byte	0x4
	.value	0x6f8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x22
	.long	.LASF856
	.byte	0x4
	.value	0x6f9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x22
	.long	.LASF857
	.byte	0x4
	.value	0x6fa
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x22
	.long	.LASF858
	.byte	0x4
	.value	0x6fb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x22
	.long	.LASF859
	.byte	0x4
	.value	0x6fc
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x22
	.long	.LASF860
	.byte	0x4
	.value	0x6fd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x22
	.long	.LASF742
	.byte	0x4
	.value	0x6ff
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x22
	.long	.LASF861
	.byte	0x4
	.value	0x700
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x22
	.long	.LASF743
	.byte	0x4
	.value	0x701
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x22
	.long	.LASF862
	.byte	0x4
	.value	0x702
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x22
	.long	.LASF690
	.byte	0x4
	.value	0x705
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x22
	.long	.LASF691
	.byte	0x4
	.value	0x706
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x22
	.long	.LASF692
	.byte	0x4
	.value	0x707
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x22
	.long	.LASF693
	.byte	0x4
	.value	0x708
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x22
	.long	.LASF694
	.byte	0x4
	.value	0x709
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x22
	.long	.LASF695
	.byte	0x4
	.value	0x70a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x22
	.long	.LASF696
	.byte	0x4
	.value	0x70b
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x22
	.long	.LASF863
	.byte	0x4
	.value	0x70c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x21
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x1d53
	.byte	0x38
	.uleb128 0x12
	.long	.LASF733
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF747
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF753
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF864
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x12
	.long	.LASF865
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF866
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF727
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF867
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF868
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF734
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x12
	.long	.LASF869
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x21
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1d7b
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF870
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF871
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF872
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF873
	.byte	0x4
	.value	0x73b
	.long	0x319
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF755
	.byte	0x4
	.value	0x73d
	.long	0x25bc
	.byte	0xc8
	.byte	0
	.uleb128 0x1f
	.long	.LASF874
	.uleb128 0x3
	.byte	0x8
	.long	0x25b7
	.uleb128 0xf
	.long	.LASF875
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x2708
	.uleb128 0x10
	.long	.LASF876
	.sleb128 0
	.uleb128 0x10
	.long	.LASF877
	.sleb128 1
	.uleb128 0x10
	.long	.LASF878
	.sleb128 2
	.uleb128 0x10
	.long	.LASF879
	.sleb128 3
	.uleb128 0x10
	.long	.LASF880
	.sleb128 4
	.uleb128 0x10
	.long	.LASF881
	.sleb128 5
	.uleb128 0x10
	.long	.LASF882
	.sleb128 6
	.uleb128 0x10
	.long	.LASF883
	.sleb128 7
	.uleb128 0x10
	.long	.LASF884
	.sleb128 8
	.uleb128 0x10
	.long	.LASF885
	.sleb128 9
	.uleb128 0x10
	.long	.LASF886
	.sleb128 10
	.uleb128 0x10
	.long	.LASF887
	.sleb128 11
	.uleb128 0x10
	.long	.LASF888
	.sleb128 12
	.uleb128 0x10
	.long	.LASF889
	.sleb128 13
	.uleb128 0x10
	.long	.LASF890
	.sleb128 14
	.uleb128 0x10
	.long	.LASF891
	.sleb128 15
	.uleb128 0x10
	.long	.LASF892
	.sleb128 16
	.uleb128 0x10
	.long	.LASF893
	.sleb128 17
	.uleb128 0x10
	.long	.LASF894
	.sleb128 18
	.uleb128 0x10
	.long	.LASF895
	.sleb128 19
	.uleb128 0x10
	.long	.LASF896
	.sleb128 20
	.uleb128 0x10
	.long	.LASF897
	.sleb128 21
	.uleb128 0x10
	.long	.LASF898
	.sleb128 22
	.uleb128 0x10
	.long	.LASF899
	.sleb128 23
	.uleb128 0x10
	.long	.LASF900
	.sleb128 24
	.uleb128 0x10
	.long	.LASF901
	.sleb128 25
	.uleb128 0x10
	.long	.LASF902
	.sleb128 26
	.uleb128 0x10
	.long	.LASF903
	.sleb128 27
	.uleb128 0x10
	.long	.LASF904
	.sleb128 28
	.uleb128 0x10
	.long	.LASF905
	.sleb128 29
	.uleb128 0x10
	.long	.LASF906
	.sleb128 30
	.uleb128 0x10
	.long	.LASF907
	.sleb128 31
	.uleb128 0x10
	.long	.LASF908
	.sleb128 32
	.uleb128 0x10
	.long	.LASF909
	.sleb128 33
	.uleb128 0x10
	.long	.LASF910
	.sleb128 34
	.uleb128 0x10
	.long	.LASF911
	.sleb128 35
	.uleb128 0x10
	.long	.LASF912
	.sleb128 36
	.uleb128 0x10
	.long	.LASF913
	.sleb128 37
	.uleb128 0x10
	.long	.LASF914
	.sleb128 38
	.uleb128 0x10
	.long	.LASF915
	.sleb128 39
	.uleb128 0x10
	.long	.LASF916
	.sleb128 40
	.uleb128 0x10
	.long	.LASF917
	.sleb128 41
	.uleb128 0x10
	.long	.LASF918
	.sleb128 42
	.uleb128 0x10
	.long	.LASF919
	.sleb128 43
	.uleb128 0x10
	.long	.LASF920
	.sleb128 44
	.uleb128 0x10
	.long	.LASF921
	.sleb128 45
	.uleb128 0x10
	.long	.LASF922
	.sleb128 46
	.uleb128 0x10
	.long	.LASF923
	.sleb128 47
	.uleb128 0x10
	.long	.LASF924
	.sleb128 48
	.uleb128 0x10
	.long	.LASF925
	.sleb128 49
	.uleb128 0x10
	.long	.LASF926
	.sleb128 50
	.uleb128 0x10
	.long	.LASF927
	.sleb128 51
	.byte	0
	.uleb128 0xf
	.long	.LASF928
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x275e
	.uleb128 0x10
	.long	.LASF929
	.sleb128 0
	.uleb128 0x10
	.long	.LASF930
	.sleb128 1
	.uleb128 0x10
	.long	.LASF931
	.sleb128 2
	.uleb128 0x10
	.long	.LASF932
	.sleb128 3
	.uleb128 0x10
	.long	.LASF933
	.sleb128 4
	.uleb128 0x10
	.long	.LASF934
	.sleb128 5
	.uleb128 0x10
	.long	.LASF935
	.sleb128 6
	.uleb128 0x10
	.long	.LASF936
	.sleb128 7
	.uleb128 0x10
	.long	.LASF937
	.sleb128 8
	.uleb128 0x10
	.long	.LASF938
	.sleb128 9
	.uleb128 0x10
	.long	.LASF939
	.sleb128 10
	.uleb128 0x10
	.long	.LASF940
	.sleb128 11
	.byte	0
	.uleb128 0x11
	.long	.LASF941
	.byte	0x20
	.byte	0x4
	.value	0x885
	.long	0x27c7
	.uleb128 0x12
	.long	.LASF747
	.byte	0x4
	.value	0x889
	.long	0x27c7
	.byte	0
	.uleb128 0x12
	.long	.LASF942
	.byte	0x4
	.value	0x88b
	.long	0x1de
	.byte	0x8
	.uleb128 0x12
	.long	.LASF943
	.byte	0x4
	.value	0x88e
	.long	0x1de
	.byte	0xc
	.uleb128 0x12
	.long	.LASF944
	.byte	0x4
	.value	0x896
	.long	0x27cc
	.byte	0x10
	.uleb128 0x12
	.long	.LASF945
	.byte	0x4
	.value	0x899
	.long	0x27cc
	.byte	0x11
	.uleb128 0x12
	.long	.LASF946
	.byte	0x4
	.value	0x89e
	.long	0x27cc
	.byte	0x12
	.uleb128 0x12
	.long	.LASF947
	.byte	0x4
	.value	0x8ad
	.long	0x2807
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x567
	.uleb128 0xc
	.long	0x27d1
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF948
	.uleb128 0x27
	.long	0x123
	.long	0x27fb
	.uleb128 0x28
	.long	0x27fb
	.uleb128 0x28
	.long	0x123
	.uleb128 0x28
	.long	0x123
	.uleb128 0x28
	.long	0x1e3
	.uleb128 0x28
	.long	0x2801
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x3
	.byte	0x8
	.long	0x27d1
	.uleb128 0xc
	.long	0x280c
	.uleb128 0x3
	.byte	0x8
	.long	0x27d8
	.uleb128 0xf
	.long	.LASF949
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x284a
	.uleb128 0x10
	.long	.LASF950
	.sleb128 0
	.uleb128 0x10
	.long	.LASF951
	.sleb128 1
	.uleb128 0x10
	.long	.LASF952
	.sleb128 2
	.uleb128 0x10
	.long	.LASF953
	.sleb128 3
	.uleb128 0x10
	.long	.LASF954
	.sleb128 4
	.uleb128 0x10
	.long	.LASF955
	.sleb128 5
	.uleb128 0x10
	.long	.LASF956
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.long	.LASF957
	.byte	0x10
	.byte	0x10
	.byte	0x24
	.long	0x286f
	.uleb128 0x6
	.string	"rtx"
	.byte	0x10
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x10
	.byte	0x36
	.long	0x310
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	.LASF958
	.byte	0x10
	.byte	0x10
	.byte	0x3a
	.long	0x2954
	.uleb128 0x1e
	.string	"c"
	.byte	0x10
	.byte	0x3b
	.long	0x541
	.uleb128 0x1e
	.string	"uc"
	.byte	0x10
	.byte	0x3c
	.long	0x2954
	.uleb128 0x1e
	.string	"s"
	.byte	0x10
	.byte	0x3d
	.long	0x2964
	.uleb128 0x1e
	.string	"us"
	.byte	0x10
	.byte	0x3e
	.long	0x2974
	.uleb128 0x1e
	.string	"i"
	.byte	0x10
	.byte	0x3f
	.long	0x2984
	.uleb128 0x1e
	.string	"u"
	.byte	0x10
	.byte	0x40
	.long	0x2994
	.uleb128 0x1e
	.string	"l"
	.byte	0x10
	.byte	0x41
	.long	0x29a4
	.uleb128 0x1e
	.string	"ul"
	.byte	0x10
	.byte	0x42
	.long	0x29b4
	.uleb128 0x1d
	.long	.LASF959
	.byte	0x10
	.byte	0x43
	.long	0x29a4
	.uleb128 0x1d
	.long	.LASF960
	.byte	0x10
	.byte	0x44
	.long	0x29b4
	.uleb128 0x1d
	.long	.LASF961
	.byte	0x10
	.byte	0x45
	.long	0x29c4
	.uleb128 0x1d
	.long	.LASF962
	.byte	0x10
	.byte	0x46
	.long	0x29d4
	.uleb128 0x1e
	.string	"rtx"
	.byte	0x10
	.byte	0x47
	.long	0x29e4
	.uleb128 0x1d
	.long	.LASF10
	.byte	0x10
	.byte	0x48
	.long	0x29f4
	.uleb128 0x1d
	.long	.LASF15
	.byte	0x10
	.byte	0x49
	.long	0x2a04
	.uleb128 0x1d
	.long	.LASF963
	.byte	0x10
	.byte	0x4a
	.long	0x2a14
	.uleb128 0x1d
	.long	.LASF964
	.byte	0x10
	.byte	0x4b
	.long	0x2a24
	.uleb128 0x1e
	.string	"reg"
	.byte	0x10
	.byte	0x4c
	.long	0x2a3f
	.uleb128 0x1d
	.long	.LASF965
	.byte	0x10
	.byte	0x4d
	.long	0x2ae6
	.uleb128 0x1e
	.string	"bb"
	.byte	0x10
	.byte	0x4e
	.long	0x2af6
	.uleb128 0x1e
	.string	"te"
	.byte	0x10
	.byte	0x4f
	.long	0x2b06
	.byte	0
	.uleb128 0x16
	.long	0x332
	.long	0x2964
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x347
	.long	0x2974
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x339
	.long	0x2984
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x1e3
	.long	0x2994
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x310
	.long	0x29a4
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x319
	.long	0x29b4
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x32b
	.long	0x29c4
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x317
	.long	0x29d4
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x364
	.long	0x29e4
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x38
	.long	0x29f4
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0xf8
	.long	0x2a04
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x12e
	.long	0x2a14
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0xcfa
	.long	0x2a24
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x2a34
	.long	0x2a34
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2a3a
	.uleb128 0x1f
	.long	.LASF966
	.uleb128 0x16
	.long	0x2a4f
	.long	0x2a4f
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2a55
	.uleb128 0x4
	.long	.LASF967
	.byte	0x2c
	.byte	0x11
	.byte	0x2d
	.long	0x2ae6
	.uleb128 0x8
	.long	.LASF968
	.byte	0x11
	.byte	0x2f
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF969
	.byte	0x11
	.byte	0x30
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF970
	.byte	0x11
	.byte	0x31
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF971
	.byte	0x11
	.byte	0x34
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF972
	.byte	0x11
	.byte	0x37
	.long	0x1e3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF973
	.byte	0x11
	.byte	0x38
	.long	0x1e3
	.byte	0x14
	.uleb128 0x8
	.long	.LASF974
	.byte	0x11
	.byte	0x39
	.long	0x1e3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF975
	.byte	0x11
	.byte	0x3a
	.long	0x1e3
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF976
	.byte	0x11
	.byte	0x3b
	.long	0x1e3
	.byte	0x20
	.uleb128 0x8
	.long	.LASF977
	.byte	0x11
	.byte	0x3c
	.long	0x1e3
	.byte	0x24
	.uleb128 0x8
	.long	.LASF978
	.byte	0x11
	.byte	0x3d
	.long	0x36a
	.byte	0x28
	.byte	0
	.uleb128 0x16
	.long	0x284a
	.long	0x2af6
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0xdcd
	.long	0x2b06
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x2b16
	.long	0x2b16
	.uleb128 0x17
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2b1c
	.uleb128 0x1f
	.long	.LASF979
	.uleb128 0x7
	.long	.LASF980
	.byte	0x10
	.byte	0x50
	.long	0x286f
	.uleb128 0x4
	.long	.LASF981
	.byte	0x30
	.byte	0x10
	.byte	0x53
	.long	0x2b75
	.uleb128 0x8
	.long	.LASF982
	.byte	0x10
	.byte	0x54
	.long	0x320
	.byte	0
	.uleb128 0x8
	.long	.LASF983
	.byte	0x10
	.byte	0x55
	.long	0x320
	.byte	0x8
	.uleb128 0x8
	.long	.LASF984
	.byte	0x10
	.byte	0x57
	.long	0x320
	.byte	0x10
	.uleb128 0x8
	.long	.LASF747
	.byte	0x10
	.byte	0x58
	.long	0x567
	.byte	0x18
	.uleb128 0x8
	.long	.LASF985
	.byte	0x10
	.byte	0x59
	.long	0x2b21
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF986
	.byte	0x10
	.byte	0x5a
	.long	0x2b80
	.uleb128 0x3
	.byte	0x8
	.long	0x2b2c
	.uleb128 0x19
	.long	.LASF987
	.byte	0x4
	.byte	0x12
	.byte	0x1c
	.long	0x2bc3
	.uleb128 0x10
	.long	.LASF988
	.sleb128 0
	.uleb128 0x10
	.long	.LASF989
	.sleb128 1
	.uleb128 0x10
	.long	.LASF990
	.sleb128 2
	.uleb128 0x10
	.long	.LASF991
	.sleb128 3
	.uleb128 0x10
	.long	.LASF992
	.sleb128 4
	.uleb128 0x10
	.long	.LASF993
	.sleb128 5
	.uleb128 0x10
	.long	.LASF994
	.sleb128 6
	.uleb128 0x10
	.long	.LASF995
	.sleb128 7
	.byte	0
	.uleb128 0x4
	.long	.LASF996
	.byte	0xa0
	.byte	0x13
	.byte	0x18
	.long	0x2cc0
	.uleb128 0x8
	.long	.LASF997
	.byte	0x13
	.byte	0x1c
	.long	0x2ccb
	.byte	0
	.uleb128 0x8
	.long	.LASF998
	.byte	0x13
	.byte	0x1f
	.long	0x2ccb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF999
	.byte	0x13
	.byte	0x22
	.long	0x2ce1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1000
	.byte	0x13
	.byte	0x25
	.long	0x2ce1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1001
	.byte	0x13
	.byte	0x29
	.long	0x2ce1
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1002
	.byte	0x13
	.byte	0x2d
	.long	0x2cf2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1003
	.byte	0x13
	.byte	0x31
	.long	0x2d08
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1004
	.byte	0x13
	.byte	0x34
	.long	0x2d08
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1005
	.byte	0x13
	.byte	0x3b
	.long	0x2d1d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1006
	.byte	0x13
	.byte	0x3e
	.long	0x2ce1
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1007
	.byte	0x13
	.byte	0x43
	.long	0x2ce1
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1008
	.byte	0x13
	.byte	0x47
	.long	0x2cf2
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1009
	.byte	0x13
	.byte	0x4a
	.long	0x2d24
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1010
	.byte	0x13
	.byte	0x4d
	.long	0x2d35
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1011
	.byte	0x13
	.byte	0x50
	.long	0x2cf2
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1012
	.byte	0x13
	.byte	0x56
	.long	0x2d35
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1013
	.byte	0x13
	.byte	0x5a
	.long	0x2d35
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1014
	.byte	0x13
	.byte	0x5e
	.long	0x2d35
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1015
	.byte	0x13
	.byte	0x63
	.long	0x2d35
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1016
	.byte	0x13
	.byte	0x67
	.long	0x2d46
	.byte	0x98
	.byte	0
	.uleb128 0x29
	.long	0x2ccb
	.uleb128 0x28
	.long	0x567
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cc0
	.uleb128 0x29
	.long	0x2ce1
	.uleb128 0x28
	.long	0x310
	.uleb128 0x28
	.long	0x567
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cd1
	.uleb128 0x29
	.long	0x2cf2
	.uleb128 0x28
	.long	0x310
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ce7
	.uleb128 0x29
	.long	0x2d08
	.uleb128 0x28
	.long	0x310
	.uleb128 0x28
	.long	0x310
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cf8
	.uleb128 0x27
	.long	0x27d1
	.long	0x2d1d
	.uleb128 0x28
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d0e
	.uleb128 0x2a
	.uleb128 0x3
	.byte	0x8
	.long	0x2d23
	.uleb128 0x29
	.long	0x2d35
	.uleb128 0x28
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d2a
	.uleb128 0x29
	.long	0x2d46
	.uleb128 0x28
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d3b
	.uleb128 0x19
	.long	.LASF1017
	.byte	0x4
	.byte	0x14
	.byte	0x34
	.long	0x2d77
	.uleb128 0x10
	.long	.LASF1018
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1019
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1020
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1021
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1022
	.sleb128 4
	.byte	0
	.uleb128 0xf
	.long	.LASF1023
	.byte	0x4
	.byte	0x14
	.value	0x2ce
	.long	0x2d97
	.uleb128 0x10
	.long	.LASF1024
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1025
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1026
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF1027
	.byte	0x10
	.byte	0x15
	.byte	0x6e
	.long	0x2dbc
	.uleb128 0x8
	.long	.LASF1028
	.byte	0x15
	.byte	0x70
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1029
	.byte	0x15
	.byte	0x71
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.long	.LASF1030
	.value	0x288
	.byte	0x15
	.byte	0x23
	.long	0x2ee1
	.uleb128 0x8
	.long	.LASF1031
	.byte	0x15
	.byte	0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF1032
	.byte	0x15
	.byte	0x2a
	.long	0x12e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1033
	.byte	0x15
	.byte	0x2c
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1034
	.byte	0x15
	.byte	0x2e
	.long	0x2b75
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1035
	.byte	0x15
	.byte	0x31
	.long	0xf75
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1036
	.byte	0x15
	.byte	0x38
	.long	0xf75
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1037
	.byte	0x15
	.byte	0x3e
	.long	0xf75
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1038
	.byte	0x15
	.byte	0x3f
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1039
	.byte	0x15
	.byte	0x3f
	.long	0x1e3
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF1040
	.byte	0x15
	.byte	0x4e
	.long	0x2b75
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1041
	.byte	0x15
	.byte	0x55
	.long	0x310
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1042
	.byte	0x15
	.byte	0x58
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1043
	.byte	0x15
	.byte	0x5c
	.long	0xed
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1044
	.byte	0x15
	.byte	0x60
	.long	0xed
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1045
	.byte	0x15
	.byte	0x62
	.long	0xed
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1046
	.byte	0x15
	.byte	0x65
	.long	0x2d
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1047
	.byte	0x15
	.byte	0x68
	.long	0x2ee1
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1048
	.byte	0x15
	.byte	0x69
	.long	0xf75
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1049
	.byte	0x15
	.byte	0x6d
	.long	0x1e3
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1050
	.byte	0x15
	.byte	0x72
	.long	0x2ee7
	.byte	0x90
	.uleb128 0x2b
	.long	.LASF1051
	.byte	0x15
	.byte	0x75
	.long	0x2d
	.value	0x270
	.uleb128 0x2b
	.long	.LASF1052
	.byte	0x15
	.byte	0x7c
	.long	0x2d
	.value	0x278
	.uleb128 0x2b
	.long	.LASF1053
	.byte	0x15
	.byte	0x7d
	.long	0x58d
	.value	0x280
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x332
	.uleb128 0x16
	.long	0x2d97
	.long	0x2ef7
	.uleb128 0x17
	.long	0x1ea
	.byte	0x1d
	.byte	0
	.uleb128 0x4
	.long	.LASF1054
	.byte	0x18
	.byte	0xf
	.byte	0x16
	.long	0x2f34
	.uleb128 0x8
	.long	.LASF1055
	.byte	0xf
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1056
	.byte	0xf
	.byte	0x19
	.long	0x58d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1057
	.byte	0xf
	.byte	0x1a
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1058
	.byte	0xf
	.byte	0x1b
	.long	0x2f34
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ef7
	.uleb128 0x4
	.long	.LASF1059
	.byte	0x20
	.byte	0xf
	.byte	0x23
	.long	0x2f77
	.uleb128 0x8
	.long	.LASF339
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1060
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1061
	.byte	0xf
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1058
	.byte	0xf
	.byte	0x28
	.long	0x2f77
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2f3a
	.uleb128 0x4
	.long	.LASF1062
	.byte	0x58
	.byte	0xf
	.byte	0x35
	.long	0x3026
	.uleb128 0x8
	.long	.LASF1063
	.byte	0xf
	.byte	0x39
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF1064
	.byte	0xf
	.byte	0x3c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1065
	.byte	0xf
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1066
	.byte	0xf
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1061
	.byte	0xf
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1059
	.byte	0xf
	.byte	0x4f
	.long	0x2f77
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1067
	.byte	0xf
	.byte	0x53
	.long	0x1e3
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1068
	.byte	0xf
	.byte	0x57
	.long	0x1e3
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF1069
	.byte	0xf
	.byte	0x58
	.long	0x567
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1070
	.byte	0xf
	.byte	0x5e
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1047
	.byte	0xf
	.byte	0x63
	.long	0x2ee1
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1071
	.byte	0xf
	.byte	0x67
	.long	0x27fb
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1048
	.byte	0xf
	.byte	0x6b
	.long	0xf75
	.byte	0x50
	.byte	0
	.uleb128 0x4
	.long	.LASF1072
	.byte	0x30
	.byte	0xf
	.byte	0x77
	.long	0x3087
	.uleb128 0x8
	.long	.LASF1073
	.byte	0xf
	.byte	0x7b
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF1074
	.byte	0xf
	.byte	0x8c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1075
	.byte	0xf
	.byte	0x92
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1076
	.byte	0xf
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1077
	.byte	0xf
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1078
	.byte	0xf
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1079
	.byte	0xf
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1f
	.long	.LASF1080
	.uleb128 0x3
	.byte	0x8
	.long	0x3087
	.uleb128 0x1f
	.long	.LASF1081
	.uleb128 0x3
	.byte	0x8
	.long	0x3092
	.uleb128 0x3
	.byte	0x8
	.long	0x3026
	.uleb128 0x3
	.byte	0x8
	.long	0x2f7d
	.uleb128 0x1f
	.long	.LASF1082
	.uleb128 0x3
	.byte	0x8
	.long	0x30a9
	.uleb128 0x4
	.long	.LASF1083
	.byte	0x10
	.byte	0x1
	.byte	0x4a
	.long	0x30e5
	.uleb128 0x8
	.long	.LASF1084
	.byte	0x1
	.byte	0x4b
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF1085
	.byte	0x1
	.byte	0x4c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1086
	.byte	0x1
	.byte	0x4d
	.long	0x370c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30b4
	.uleb128 0x1f
	.long	.LASF1087
	.uleb128 0x3
	.byte	0x8
	.long	0x30eb
	.uleb128 0x1f
	.long	.LASF1088
	.uleb128 0x3
	.byte	0x8
	.long	0x30f6
	.uleb128 0x1f
	.long	.LASF1089
	.uleb128 0x3
	.byte	0x8
	.long	0x3101
	.uleb128 0x4
	.long	.LASF1090
	.byte	0x28
	.byte	0xb
	.byte	0x2b
	.long	0x3149
	.uleb128 0x8
	.long	.LASF1058
	.byte	0xb
	.byte	0x2d
	.long	0x3149
	.byte	0
	.uleb128 0x8
	.long	.LASF1091
	.byte	0xb
	.byte	0x2e
	.long	0x3149
	.byte	0x8
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0x2f
	.long	0x310
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1092
	.byte	0xb
	.byte	0x30
	.long	0x314f
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x310c
	.uleb128 0x16
	.long	0x32b
	.long	0x315f
	.uleb128 0x17
	.long	0x1ea
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF1093
	.byte	0xb
	.byte	0x31
	.long	0x310c
	.uleb128 0x3
	.byte	0x8
	.long	0x315f
	.uleb128 0x7
	.long	.LASF963
	.byte	0xb
	.byte	0x39
	.long	0xcfa
	.uleb128 0x7
	.long	.LASF1094
	.byte	0xc
	.byte	0x21
	.long	0x3170
	.uleb128 0x7
	.long	.LASF1095
	.byte	0xc
	.byte	0x74
	.long	0x319
	.uleb128 0x4
	.long	.LASF1096
	.byte	0x40
	.byte	0xc
	.byte	0x77
	.long	0x320a
	.uleb128 0x8
	.long	.LASF1097
	.byte	0xc
	.byte	0x79
	.long	0x320a
	.byte	0
	.uleb128 0x8
	.long	.LASF1098
	.byte	0xc
	.byte	0x79
	.long	0x320a
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xc
	.byte	0x7c
	.long	0xdcd
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1028
	.byte	0xc
	.byte	0x7c
	.long	0xdcd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1099
	.byte	0xc
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0x82
	.long	0x317
	.byte	0x28
	.uleb128 0x8
	.long	.LASF356
	.byte	0xc
	.byte	0x84
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1100
	.byte	0xc
	.byte	0x85
	.long	0x1e3
	.byte	0x34
	.uleb128 0x8
	.long	.LASF354
	.byte	0xc
	.byte	0x86
	.long	0x3186
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3191
	.uleb128 0x7
	.long	.LASF1101
	.byte	0xc
	.byte	0x88
	.long	0x320a
	.uleb128 0x4
	.long	.LASF1102
	.byte	0x18
	.byte	0x16
	.byte	0x2c
	.long	0x324c
	.uleb128 0x8
	.long	.LASF1103
	.byte	0x16
	.byte	0x30
	.long	0x27c7
	.byte	0
	.uleb128 0x8
	.long	.LASF715
	.byte	0x16
	.byte	0x32
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1104
	.byte	0x16
	.byte	0x34
	.long	0x27c7
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF1102
	.byte	0x16
	.byte	0x35
	.long	0x321b
	.uleb128 0x19
	.long	.LASF1105
	.byte	0x4
	.byte	0x16
	.byte	0x49
	.long	0x328e
	.uleb128 0x10
	.long	.LASF1106
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1107
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1108
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1109
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1110
	.sleb128 4
	.uleb128 0x10
	.long	.LASF1111
	.sleb128 5
	.uleb128 0x10
	.long	.LASF1112
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.long	.LASF1113
	.byte	0x20
	.byte	0x17
	.byte	0x39
	.long	0x32c7
	.uleb128 0x6
	.string	"hi"
	.byte	0x17
	.byte	0x3b
	.long	0x567
	.byte	0
	.uleb128 0x6
	.string	"si"
	.byte	0x17
	.byte	0x3c
	.long	0x567
	.byte	0x8
	.uleb128 0x6
	.string	"di"
	.byte	0x17
	.byte	0x3d
	.long	0x567
	.byte	0x10
	.uleb128 0x6
	.string	"ti"
	.byte	0x17
	.byte	0x3e
	.long	0x567
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF1114
	.byte	0xa8
	.byte	0x17
	.byte	0x32
	.long	0x3388
	.uleb128 0x8
	.long	.LASF1115
	.byte	0x17
	.byte	0x35
	.long	0x567
	.byte	0
	.uleb128 0x8
	.long	.LASF1116
	.byte	0x17
	.byte	0x35
	.long	0x567
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1117
	.byte	0x17
	.byte	0x38
	.long	0x567
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1118
	.byte	0x17
	.byte	0x3f
	.long	0x328e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1119
	.byte	0x17
	.byte	0x3f
	.long	0x328e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1120
	.byte	0x17
	.byte	0x46
	.long	0x33a1
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1121
	.byte	0x17
	.byte	0x49
	.long	0x33bd
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1122
	.byte	0x17
	.byte	0x4c
	.long	0x33ce
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1123
	.byte	0x17
	.byte	0x4f
	.long	0x33ce
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1124
	.byte	0x17
	.byte	0x52
	.long	0x33bd
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1125
	.byte	0x17
	.byte	0x56
	.long	0x33e4
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1126
	.byte	0x17
	.byte	0x59
	.long	0x2d24
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1127
	.byte	0x17
	.byte	0x5c
	.long	0x2d24
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1128
	.byte	0x17
	.byte	0x5f
	.long	0x33fa
	.byte	0x98
	.uleb128 0x8
	.long	.LASF1129
	.byte	0x17
	.byte	0x62
	.long	0x33fa
	.byte	0xa0
	.byte	0
	.uleb128 0x27
	.long	0x27d1
	.long	0x33a1
	.uleb128 0x28
	.long	0x2d
	.uleb128 0x28
	.long	0x310
	.uleb128 0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3388
	.uleb128 0x29
	.long	0x33b7
	.uleb128 0x28
	.long	0x33b7
	.uleb128 0x28
	.long	0x319
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x371
	.uleb128 0x3
	.byte	0x8
	.long	0x33a7
	.uleb128 0x29
	.long	0x33ce
	.uleb128 0x28
	.long	0x33b7
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x33c3
	.uleb128 0x29
	.long	0x33e4
	.uleb128 0x28
	.long	0x567
	.uleb128 0x28
	.long	0x310
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x33d4
	.uleb128 0x29
	.long	0x33fa
	.uleb128 0x28
	.long	0x2d
	.uleb128 0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x33ea
	.uleb128 0x4
	.long	.LASF964
	.byte	0x48
	.byte	0x17
	.byte	0x66
	.long	0x3479
	.uleb128 0x8
	.long	.LASF1130
	.byte	0x17
	.byte	0x6b
	.long	0x3497
	.byte	0
	.uleb128 0x8
	.long	.LASF1131
	.byte	0x17
	.byte	0x6f
	.long	0x34b1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1132
	.byte	0x17
	.byte	0x74
	.long	0x34bc
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1133
	.byte	0x17
	.byte	0x78
	.long	0x34e0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1134
	.byte	0x17
	.byte	0x7b
	.long	0x34fb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1135
	.byte	0x17
	.byte	0x7e
	.long	0x3511
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1136
	.byte	0x17
	.byte	0x82
	.long	0x353a
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1137
	.byte	0x17
	.byte	0x83
	.long	0x353a
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1138
	.byte	0x17
	.byte	0x8a
	.long	0x3554
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.long	0x1e3
	.long	0x3497
	.uleb128 0x28
	.long	0x2d
	.uleb128 0x28
	.long	0x2d
	.uleb128 0x28
	.long	0x2d
	.uleb128 0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3479
	.uleb128 0x27
	.long	0x1e3
	.long	0x34b1
	.uleb128 0x28
	.long	0x2d
	.uleb128 0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x349d
	.uleb128 0x2c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x34b7
	.uleb128 0x27
	.long	0x1e3
	.long	0x34e0
	.uleb128 0x28
	.long	0x33b7
	.uleb128 0x28
	.long	0x1e3
	.uleb128 0x28
	.long	0x2d
	.uleb128 0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x34c2
	.uleb128 0x29
	.long	0x34fb
	.uleb128 0x28
	.long	0x33b7
	.uleb128 0x28
	.long	0x1e3
	.uleb128 0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x34e6
	.uleb128 0x29
	.long	0x3511
	.uleb128 0x28
	.long	0x33b7
	.uleb128 0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3501
	.uleb128 0x27
	.long	0x1e3
	.long	0x353a
	.uleb128 0x28
	.long	0x33b7
	.uleb128 0x28
	.long	0x1e3
	.uleb128 0x28
	.long	0xf75
	.uleb128 0x28
	.long	0x580
	.uleb128 0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3517
	.uleb128 0x27
	.long	0x2d
	.long	0x3554
	.uleb128 0x28
	.long	0x1e3
	.uleb128 0x28
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3540
	.uleb128 0x24
	.long	.LASF1139
	.value	0x158
	.byte	0x17
	.byte	0x2f
	.long	0x3634
	.uleb128 0x8
	.long	.LASF1114
	.byte	0x17
	.byte	0x63
	.long	0x32c7
	.byte	0
	.uleb128 0x8
	.long	.LASF964
	.byte	0x17
	.byte	0x8b
	.long	0x3400
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF1140
	.byte	0x17
	.byte	0x8e
	.long	0x3648
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF1141
	.byte	0x17
	.byte	0x91
	.long	0x3648
	.byte	0xf8
	.uleb128 0x2b
	.long	.LASF1142
	.byte	0x17
	.byte	0x94
	.long	0x364e
	.value	0x100
	.uleb128 0x2b
	.long	.LASF1143
	.byte	0x17
	.byte	0x99
	.long	0x366d
	.value	0x108
	.uleb128 0x2b
	.long	.LASF1144
	.byte	0x17
	.byte	0x9c
	.long	0x2d35
	.value	0x110
	.uleb128 0x2b
	.long	.LASF1145
	.byte	0x17
	.byte	0x9f
	.long	0x3683
	.value	0x118
	.uleb128 0x2b
	.long	.LASF1146
	.byte	0x17
	.byte	0xa3
	.long	0x2d1d
	.value	0x120
	.uleb128 0x2b
	.long	.LASF1147
	.byte	0x17
	.byte	0xa7
	.long	0x2d1d
	.value	0x128
	.uleb128 0x2b
	.long	.LASF1148
	.byte	0x17
	.byte	0xaa
	.long	0x2d24
	.value	0x130
	.uleb128 0x2b
	.long	.LASF1149
	.byte	0x17
	.byte	0xad
	.long	0x36ac
	.value	0x138
	.uleb128 0x2b
	.long	.LASF1150
	.byte	0x17
	.byte	0xb3
	.long	0x36cb
	.value	0x140
	.uleb128 0x2b
	.long	.LASF1151
	.byte	0x17
	.byte	0xb6
	.long	0x27d1
	.value	0x148
	.uleb128 0x2b
	.long	.LASF1152
	.byte	0x17
	.byte	0xba
	.long	0x27d1
	.value	0x149
	.uleb128 0x2b
	.long	.LASF1153
	.byte	0x17
	.byte	0xbe
	.long	0x36d6
	.value	0x150
	.byte	0
	.uleb128 0x27
	.long	0x123
	.long	0x3648
	.uleb128 0x28
	.long	0x123
	.uleb128 0x28
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3634
	.uleb128 0x3
	.byte	0x8
	.long	0x3654
	.uleb128 0xc
	.long	0x275e
	.uleb128 0x27
	.long	0x1e3
	.long	0x366d
	.uleb128 0x28
	.long	0x123
	.uleb128 0x28
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3659
	.uleb128 0x29
	.long	0x3683
	.uleb128 0x28
	.long	0x123
	.uleb128 0x28
	.long	0x27fb
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3673
	.uleb128 0x27
	.long	0x2d
	.long	0x36ac
	.uleb128 0x28
	.long	0x123
	.uleb128 0x28
	.long	0x2d
	.uleb128 0x28
	.long	0x2d
	.uleb128 0x28
	.long	0x58d
	.uleb128 0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3689
	.uleb128 0x27
	.long	0x310
	.long	0x36cb
	.uleb128 0x28
	.long	0x123
	.uleb128 0x28
	.long	0x567
	.uleb128 0x28
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x36b2
	.uleb128 0x2c
	.long	0x27d1
	.uleb128 0x3
	.byte	0x8
	.long	0x36d1
	.uleb128 0x4
	.long	.LASF1154
	.byte	0x10
	.byte	0x1
	.byte	0x46
	.long	0x3701
	.uleb128 0x8
	.long	.LASF1155
	.byte	0x1
	.byte	0x47
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1156
	.byte	0x1
	.byte	0x48
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF1154
	.byte	0x1
	.byte	0x49
	.long	0x36dc
	.uleb128 0x3
	.byte	0x8
	.long	0x3701
	.uleb128 0x2d
	.long	.LASF1157
	.byte	0x1
	.byte	0x74
	.long	0x2d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x375a
	.uleb128 0x2e
	.string	"map"
	.byte	0x1
	.byte	0x75
	.long	0x375a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x76
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.byte	0x78
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2dbc
	.uleb128 0x2d
	.long	.LASF1146
	.byte	0x1
	.byte	0x83
	.long	0x27d1
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x37d6
	.uleb128 0x30
	.long	.LASF1032
	.byte	0x1
	.byte	0x84
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF1158
	.byte	0x1
	.byte	0x86
	.long	0x27d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2f
	.string	"a"
	.byte	0x1
	.byte	0x87
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x31
	.long	.LASF747
	.byte	0x1
	.byte	0x8b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF1159
	.byte	0x1
	.byte	0xa6
	.long	0x567
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3870
	.uleb128 0x30
	.long	.LASF1032
	.byte	0x1
	.byte	0xa7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF1160
	.byte	0x1
	.byte	0xa9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF1060
	.byte	0x1
	.byte	0xaa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF1161
	.byte	0x1
	.byte	0xb0
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.long	.LASF1162
	.byte	0x1
	.byte	0xb5
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF1163
	.byte	0x1
	.byte	0xb6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x33
	.long	.LASF865
	.byte	0x1
	.value	0x111
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF1178
	.byte	0x1
	.value	0x12b
	.long	0xed
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x391d
	.uleb128 0x35
	.long	.LASF1032
	.byte	0x1
	.value	0x12c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x12e
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LASF1164
	.byte	0x1
	.value	0x12f
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF1163
	.byte	0x1
	.value	0x130
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.value	0x13a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x33
	.long	.LASF1165
	.byte	0x1
	.value	0x149
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF1166
	.byte	0x1
	.value	0x14a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1167
	.byte	0x1
	.value	0x15f
	.long	0x12e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x397c
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x160
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1168
	.byte	0x1
	.value	0x161
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1169
	.byte	0x1
	.value	0x162
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF1170
	.byte	0x1
	.value	0x164
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1239
	.byte	0x1
	.value	0x1af
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x39eb
	.uleb128 0x35
	.long	.LASF1032
	.byte	0x1
	.value	0x1b0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF1160
	.byte	0x1
	.value	0x1b2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF1171
	.byte	0x1
	.value	0x1b3
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF1172
	.byte	0x1
	.value	0x1b4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.long	.LASF1201
	.long	0x39fb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14006
	.byte	0
	.uleb128 0x16
	.long	0x36a
	.long	0x39fb
	.uleb128 0x17
	.long	0x1ea
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	0x39eb
	.uleb128 0x3a
	.long	.LASF1173
	.byte	0x1
	.value	0x1fc
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a5c
	.uleb128 0x35
	.long	.LASF1160
	.byte	0x1
	.value	0x1fd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x1fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x213
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LASF1174
	.byte	0x1
	.value	0x220
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3aa6
	.uleb128 0x3c
	.string	"reg"
	.byte	0x1
	.value	0x221
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.string	"x"
	.byte	0x1
	.value	0x222
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF985
	.byte	0x1
	.value	0x223
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3a
	.long	.LASF1175
	.byte	0x1
	.value	0x242
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b54
	.uleb128 0x3c
	.string	"map"
	.byte	0x1
	.value	0x243
	.long	0x375a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.string	"loc"
	.byte	0x1
	.value	0x244
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1170
	.byte	0x1
	.value	0x244
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x33
	.long	.LASF1176
	.byte	0x1
	.value	0x24c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.value	0x24f
	.long	0x3b54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x33
	.long	.LASF1177
	.byte	0x1
	.value	0x24f
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x284a
	.uleb128 0x3d
	.long	.LASF1179
	.byte	0x1
	.value	0x25a
	.long	0x1e3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bd1
	.uleb128 0x3c
	.string	"v1"
	.byte	0x1
	.value	0x25b
	.long	0x586
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.string	"v2"
	.byte	0x1
	.value	0x25c
	.long	0x586
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.string	"b1"
	.byte	0x1
	.value	0x25e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"b2"
	.byte	0x1
	.value	0x25f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"p1"
	.byte	0x1
	.value	0x260
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"p2"
	.byte	0x1
	.value	0x261
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1180
	.byte	0x1
	.value	0x26c
	.long	0x1e3
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c48
	.uleb128 0x3c
	.string	"v1"
	.byte	0x1
	.value	0x26d
	.long	0x586
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.string	"v2"
	.byte	0x1
	.value	0x26e
	.long	0x586
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.string	"b1"
	.byte	0x1
	.value	0x270
	.long	0x3c48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"b2"
	.byte	0x1
	.value	0x271
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"p1"
	.byte	0x1
	.value	0x272
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"p2"
	.byte	0x1
	.value	0x273
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3c4e
	.uleb128 0xc
	.long	0x134
	.uleb128 0x37
	.long	.LASF1181
	.byte	0x1
	.value	0x288
	.long	0x2d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x40ef
	.uleb128 0x35
	.long	.LASF1032
	.byte	0x1
	.value	0x28a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x35
	.long	.LASF1163
	.byte	0x1
	.value	0x28a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x35
	.long	.LASF1182
	.byte	0x1
	.value	0x28b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x35
	.long	.LASF1183
	.byte	0x1
	.value	0x28c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x28d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x35
	.long	.LASF1184
	.byte	0x1
	.value	0x28e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x33
	.long	.LASF1185
	.byte	0x1
	.value	0x290
	.long	0x222d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF1186
	.byte	0x1
	.value	0x291
	.long	0x222d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x33
	.long	.LASF1187
	.byte	0x1
	.value	0x292
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x33
	.long	.LASF1188
	.byte	0x1
	.value	0x292
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x33
	.long	.LASF26
	.byte	0x1
	.value	0x292
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF1189
	.byte	0x1
	.value	0x293
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x33
	.long	.LASF1099
	.byte	0x1
	.value	0x294
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.long	.LASF1190
	.byte	0x1
	.value	0x297
	.long	0x27fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.long	.LASF1191
	.byte	0x1
	.value	0x298
	.long	0xf75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.long	.LASF1192
	.byte	0x1
	.value	0x299
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x29a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x33
	.long	.LASF1193
	.byte	0x1
	.value	0x29b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x33
	.long	.LASF1194
	.byte	0x1
	.value	0x29c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x33
	.long	.LASF1195
	.byte	0x1
	.value	0x29d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x36
	.string	"loc"
	.byte	0x1
	.value	0x29e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.long	.LASF1196
	.byte	0x1
	.value	0x29f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x33
	.long	.LASF1176
	.byte	0x1
	.value	0x2a0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x36
	.string	"map"
	.byte	0x1
	.value	0x2a1
	.long	0x375a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x33
	.long	.LASF1164
	.byte	0x1
	.value	0x2a2
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x33
	.long	.LASF1197
	.byte	0x1
	.value	0x2a3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x33
	.long	.LASF1198
	.byte	0x1
	.value	0x2a4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x33
	.long	.LASF1199
	.byte	0x1
	.value	0x2a5
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x33
	.long	.LASF1200
	.byte	0x1
	.value	0x2a9
	.long	0xf75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x39
	.long	.LASF1201
	.long	0x40ff
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14079
	.uleb128 0x3e
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x3e8a
	.uleb128 0x36
	.string	"arg"
	.byte	0x1
	.value	0x2c1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.long	.LASF1
	.byte	0x1
	.value	0x2c2
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.byte	0
	.uleb128 0x3e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x3f28
	.uleb128 0x36
	.string	"arg"
	.byte	0x1
	.value	0x2e7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.long	.LASF1
	.byte	0x1
	.value	0x2e9
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x33
	.long	.LASF1202
	.byte	0x1
	.value	0x2ea
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x3e
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x3ef5
	.uleb128 0x33
	.long	.LASF1203
	.byte	0x1
	.value	0x2f6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x32
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x33
	.long	.LASF1057
	.byte	0x1
	.value	0x300
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x33
	.long	.LASF1204
	.byte	0x1
	.value	0x301
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x3f4e
	.uleb128 0x33
	.long	.LASF1205
	.byte	0x1
	.value	0x37d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x3e
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x400c
	.uleb128 0x33
	.long	.LASF1170
	.byte	0x1
	.value	0x392
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x3e
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x3fb9
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.value	0x3a5
	.long	0x3b54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x33
	.long	.LASF1177
	.byte	0x1
	.value	0x3a5
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x33
	.long	.LASF1206
	.byte	0x1
	.value	0x3bb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.long	.LASF1207
	.byte	0x1
	.value	0x3bc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.long	.LASF1208
	.byte	0x1
	.value	0x3bd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.long	.LASF1209
	.byte	0x1
	.value	0x3be
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x4031
	.uleb128 0x33
	.long	.LASF1205
	.byte	0x1
	.value	0x3d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3e
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x4076
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.value	0x426
	.long	0x3b54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x33
	.long	.LASF1177
	.byte	0x1
	.value	0x426
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x40bc
	.uleb128 0x33
	.long	.LASF1210
	.byte	0x1
	.value	0x43e
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x33
	.long	.LASF1211
	.byte	0x1
	.value	0x443
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x33
	.long	.LASF1212
	.byte	0x1
	.value	0x445
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x32
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x33
	.long	.LASF1210
	.byte	0x1
	.value	0x47d
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x33
	.long	.LASF1211
	.byte	0x1
	.value	0x47e
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x36a
	.long	0x40ff
	.uleb128 0x17
	.long	0x1ea
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.long	0x40ef
	.uleb128 0x3a
	.long	.LASF1213
	.byte	0x1
	.value	0x527
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x42cf
	.uleb128 0x35
	.long	.LASF1099
	.byte	0x1
	.value	0x528
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x3c
	.string	"map"
	.byte	0x1
	.value	0x529
	.long	0x375a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x35
	.long	.LASF1197
	.byte	0x1
	.value	0x52a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x52c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x33
	.long	.LASF1160
	.byte	0x1
	.value	0x52d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.long	.LASF1176
	.byte	0x1
	.value	0x52e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.long	.LASF1214
	.byte	0x1
	.value	0x532
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x39
	.long	.LASF1201
	.long	0x42df
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14134
	.uleb128 0x32
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x33
	.long	.LASF1170
	.byte	0x1
	.value	0x53b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.long	.LASF1215
	.byte	0x1
	.value	0x53b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.string	"set"
	.byte	0x1
	.value	0x53b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3e
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x420a
	.uleb128 0x33
	.long	.LASF1216
	.byte	0x1
	.value	0x555
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x3e
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x4230
	.uleb128 0x33
	.long	.LASF1217
	.byte	0x1
	.value	0x5a5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x3e
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x4256
	.uleb128 0x33
	.long	.LASF322
	.byte	0x1
	.value	0x5b6
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x3e
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x42ac
	.uleb128 0x33
	.long	.LASF1218
	.byte	0x1
	.value	0x61f
	.long	0x42e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF1219
	.byte	0x1
	.value	0x620
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x36
	.string	"seq"
	.byte	0x1
	.value	0x624
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x33
	.long	.LASF1220
	.byte	0x1
	.value	0x67d
	.long	0x27fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x36a
	.long	0x42df
	.uleb128 0x17
	.long	0x1ea
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.long	0x42cf
	.uleb128 0x16
	.long	0x2d
	.long	0x42f4
	.uleb128 0x17
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x3a
	.long	.LASF1221
	.byte	0x1
	.value	0x6a5
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x43b5
	.uleb128 0x35
	.long	.LASF1099
	.byte	0x1
	.value	0x6a6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3c
	.string	"map"
	.byte	0x1
	.value	0x6a7
	.long	0x375a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF1199
	.byte	0x1
	.value	0x6a8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.long	.LASF1160
	.byte	0x1
	.value	0x6aa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF1222
	.byte	0x1
	.value	0x6aa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3e
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x4394
	.uleb128 0x33
	.long	.LASF1058
	.byte	0x1
	.value	0x6b8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF1205
	.byte	0x1
	.value	0x6b8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x32
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x6d1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1223
	.byte	0x1
	.value	0x6e0
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x444e
	.uleb128 0x35
	.long	.LASF1224
	.byte	0x1
	.value	0x6e1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.string	"map"
	.byte	0x1
	.value	0x6e2
	.long	0x375a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1164
	.byte	0x1
	.value	0x6e3
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF1225
	.byte	0x1
	.value	0x6e5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x6e6
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x6ea
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF1226
	.byte	0x1
	.value	0x6ec
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF1227
	.byte	0x1
	.value	0x704
	.long	0x123
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x44fa
	.uleb128 0x3c
	.string	"let"
	.byte	0x1
	.value	0x705
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3c
	.string	"map"
	.byte	0x1
	.value	0x706
	.long	0x375a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x708
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF1228
	.byte	0x1
	.value	0x709
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF1058
	.byte	0x1
	.value	0x70a
	.long	0x27fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x36
	.string	"d"
	.byte	0x1
	.value	0x712
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x36
	.string	"r"
	.byte	0x1
	.value	0x718
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1229
	.byte	0x1
	.value	0x753
	.long	0x2d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x4843
	.uleb128 0x35
	.long	.LASF1230
	.byte	0x1
	.value	0x754
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x3c
	.string	"map"
	.byte	0x1
	.value	0x755
	.long	0x375a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x35
	.long	.LASF1231
	.byte	0x1
	.value	0x756
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x33
	.long	.LASF1170
	.byte	0x1
	.value	0x758
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x33
	.long	.LASF1176
	.byte	0x1
	.value	0x758
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x759
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x36
	.string	"j"
	.byte	0x1
	.value	0x759
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x75a
	.long	0x74b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x33
	.long	.LASF1
	.byte	0x1
	.value	0x75b
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x33
	.long	.LASF1232
	.byte	0x1
	.value	0x75c
	.long	0x567
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x75d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x39
	.long	.LASF1201
	.long	0x4853
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14228
	.uleb128 0x3e
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x4673
	.uleb128 0x36
	.string	"loc"
	.byte	0x1
	.value	0x780
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x36
	.string	"seq"
	.byte	0x1
	.value	0x780
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.long	.LASF323
	.byte	0x1
	.value	0x781
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x33
	.long	.LASF1233
	.byte	0x1
	.value	0x783
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x32
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.value	0x79e
	.long	0x3b54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x32
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x33
	.long	.LASF1177
	.byte	0x1
	.value	0x79e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x46fb
	.uleb128 0x36
	.string	"loc"
	.byte	0x1
	.value	0x7ac
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x36
	.string	"seq"
	.byte	0x1
	.value	0x7ac
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x33
	.long	.LASF323
	.byte	0x1
	.value	0x7ad
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x32
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.value	0x7bf
	.long	0x3b54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x32
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x33
	.long	.LASF1177
	.byte	0x1
	.value	0x7bf
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x4761
	.uleb128 0x36
	.string	"f"
	.byte	0x1
	.value	0x85d
	.long	0x222d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.long	.LASF1234
	.byte	0x1
	.value	0x85e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.long	.LASF1235
	.byte	0x1
	.value	0x85f
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x32
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x33
	.long	.LASF1176
	.byte	0x1
	.value	0x862
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x47a4
	.uleb128 0x36
	.string	"d"
	.byte	0x1
	.value	0x88d
	.long	0x182f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x36
	.string	"u"
	.byte	0x1
	.value	0x88f
	.long	0x183a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x47ca
	.uleb128 0x33
	.long	.LASF1170
	.byte	0x1
	.value	0x8bd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x3e
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x4810
	.uleb128 0x33
	.long	.LASF1236
	.byte	0x1
	.value	0x8d9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.long	.LASF1237
	.byte	0x1
	.value	0x8da
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.long	.LASF1238
	.byte	0x1
	.value	0x8db
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x32
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x33
	.long	.LASF1235
	.byte	0x1
	.value	0x8f7
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x33
	.long	.LASF1234
	.byte	0x1
	.value	0x8f9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x36a
	.long	0x4853
	.uleb128 0x17
	.long	0x1ea
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.long	0x4843
	.uleb128 0x38
	.long	.LASF1240
	.byte	0x1
	.value	0x965
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x4928
	.uleb128 0x35
	.long	.LASF1160
	.byte	0x1
	.value	0x966
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.string	"map"
	.byte	0x1
	.value	0x967
	.long	0x375a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x969
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x982
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3e
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x48e6
	.uleb128 0x33
	.long	.LASF1177
	.byte	0x1
	.value	0x984
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.value	0x98b
	.long	0x3b54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x33
	.long	.LASF1177
	.byte	0x1
	.value	0x98b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1241
	.byte	0x1
	.value	0x9a7
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b90
	.uleb128 0x3c
	.string	"loc"
	.byte	0x1
	.value	0x9a8
	.long	0xf75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x35
	.long	.LASF1160
	.byte	0x1
	.value	0x9a9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3c
	.string	"map"
	.byte	0x1
	.value	0x9aa
	.long	0x375a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x35
	.long	.LASF1242
	.byte	0x1
	.value	0x9ab
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x36
	.string	"x"
	.byte	0x1
	.value	0x9ad
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x9ae
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.string	"j"
	.byte	0x1
	.value	0x9ae
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x9af
	.long	0x74b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.long	.LASF1232
	.byte	0x1
	.value	0x9b0
	.long	0x567
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.long	.LASF1243
	.byte	0x1
	.value	0x9b1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x36
	.string	"new"
	.byte	0x1
	.value	0x9b2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.long	.LASF1244
	.byte	0x1
	.value	0x9b3
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x39
	.long	.LASF1201
	.long	0x4b90
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14346
	.uleb128 0x3e
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0x4a47
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x9d7
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.value	0x9d8
	.long	0x3b54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x3e
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x4a7c
	.uleb128 0x33
	.long	.LASF1245
	.byte	0x1
	.value	0x9eb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.string	"new"
	.byte	0x1
	.value	0x9ec
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3e
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x4b02
	.uleb128 0x33
	.long	.LASF1246
	.byte	0x1
	.value	0xa0f
	.long	0xf75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.long	.LASF1028
	.byte	0x1
	.value	0xa10
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.string	"src"
	.byte	0x1
	.value	0xa11
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.string	"tem"
	.byte	0x1
	.value	0xa11
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF1053
	.byte	0x1
	.value	0xa12
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x32
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x33
	.long	.LASF1247
	.byte	0x1
	.value	0xa5c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x4b27
	.uleb128 0x36
	.string	"tem"
	.byte	0x1
	.value	0xaa0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3e
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.long	0x4b4d
	.uleb128 0x33
	.long	.LASF1248
	.byte	0x1
	.value	0xab2
	.long	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x32
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0xad8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x33
	.long	.LASF1176
	.byte	0x1
	.value	0xae2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x39eb
	.uleb128 0x3a
	.long	.LASF1249
	.byte	0x1
	.value	0xafd
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c3d
	.uleb128 0x35
	.long	.LASF1028
	.byte	0x1
	.value	0xafe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3c
	.string	"x"
	.byte	0x1
	.value	0xaff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF985
	.byte	0x1
	.value	0xb00
	.long	0x317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0xb02
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF1
	.byte	0x1
	.value	0xb03
	.long	0x58d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x33
	.long	.LASF1250
	.byte	0x1
	.value	0xb17
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF1251
	.byte	0x1
	.value	0xb18
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0xb1a
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1252
	.byte	0x1
	.value	0xb31
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cb1
	.uleb128 0x35
	.long	.LASF760
	.byte	0x1
	.value	0xb32
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3e
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.long	0x4c8f
	.uleb128 0x33
	.long	.LASF1253
	.byte	0x1
	.value	0xb39
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x33
	.long	.LASF1254
	.byte	0x1
	.value	0xb42
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1255
	.byte	0x1
	.value	0xb58
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d00
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0xb59
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x36
	.string	"arg"
	.byte	0x1
	.value	0xb60
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1256
	.byte	0x1
	.value	0xb71
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d5b
	.uleb128 0x35
	.long	.LASF760
	.byte	0x1
	.value	0xb72
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1257
	.byte	0x1
	.value	0xb73
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF1253
	.byte	0x1
	.value	0xb75
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF1254
	.byte	0x1
	.value	0xb76
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1258
	.byte	0x1
	.value	0xb8c
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x4db9
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0xb8d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1257
	.byte	0x1
	.value	0xb8e
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x36
	.string	"arg"
	.byte	0x1
	.value	0xb93
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1259
	.byte	0x1
	.value	0xba2
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e21
	.uleb128 0x35
	.long	.LASF1032
	.byte	0x1
	.value	0xba3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF1260
	.byte	0x1
	.value	0xba5
	.long	0x222d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF1261
	.byte	0x1
	.value	0xba6
	.long	0x2b86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF1262
	.byte	0x1
	.value	0xba7
	.long	0x4e21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"f"
	.byte	0x1
	.value	0xba8
	.long	0x222d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2bc3
	.uleb128 0x37
	.long	.LASF1263
	.byte	0x1
	.value	0xbcb
	.long	0x2d
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e84
	.uleb128 0x3c
	.string	"fun"
	.byte	0x1
	.value	0xbcc
	.long	0x222d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3c
	.string	"reg"
	.byte	0x1
	.value	0xbcd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"ivs"
	.byte	0x1
	.value	0xbcf
	.long	0x30e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0xbd0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x37
	.long	.LASF1264
	.byte	0x1
	.value	0xbdd
	.long	0x2d
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ee1
	.uleb128 0x3c
	.string	"fun"
	.byte	0x1
	.value	0xbde
	.long	0x222d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3c
	.string	"reg"
	.byte	0x1
	.value	0xbdf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"ivs"
	.byte	0x1
	.value	0xbe1
	.long	0x30e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0xbe2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x37
	.long	.LASF1265
	.byte	0x1
	.value	0xbef
	.long	0x2d
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f3f
	.uleb128 0x3c
	.string	"fun"
	.byte	0x1
	.value	0xbf0
	.long	0x222d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.string	"reg"
	.byte	0x1
	.value	0xbf1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.string	"ivs"
	.byte	0x1
	.value	0xbf3
	.long	0x30e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"rv"
	.byte	0x1
	.value	0xbf4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x37
	.long	.LASF1266
	.byte	0x1
	.value	0xc12
	.long	0x2d
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f80
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0xc13
	.long	0x58d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF57
	.byte	0x1
	.value	0xc14
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1267
	.byte	0x1
	.value	0xc1a
	.long	0x2d
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fc1
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0xc1b
	.long	0x58d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF57
	.byte	0x1
	.value	0xc1c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1268
	.byte	0x1
	.value	0xc22
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x5051
	.uleb128 0x3c
	.string	"fun"
	.byte	0x1
	.value	0xc23
	.long	0x222d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.string	"ivs"
	.byte	0x1
	.value	0xc25
	.long	0x30e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0xc26
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3e
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.long	0x502f
	.uleb128 0x36
	.string	"r__"
	.byte	0x1
	.value	0xc2d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.uleb128 0x36
	.string	"r__"
	.byte	0x1
	.value	0xc2e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1269
	.byte	0x1
	.value	0xc33
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x50aa
	.uleb128 0x35
	.long	.LASF1186
	.byte	0x1
	.value	0xc34
	.long	0x222d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1270
	.byte	0x1
	.value	0xc35
	.long	0x375a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.string	"ivs"
	.byte	0x1
	.value	0xc37
	.long	0x30e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0xc38
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x38
	.long	.LASF1271
	.byte	0x1
	.value	0xc44
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x50f4
	.uleb128 0x36
	.string	"ivs"
	.byte	0x1
	.value	0xc46
	.long	0x30e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0xc47
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"seq"
	.byte	0x1
	.value	0xc48
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3f
	.long	.LASF1272
	.byte	0x1
	.value	0xc59
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x5122
	.uleb128 0x35
	.long	.LASF1273
	.byte	0x1
	.value	0xc5a
	.long	0xf75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1274
	.byte	0x1
	.byte	0x6c
	.long	0x222d
	.uleb128 0x9
	.byte	0x3
	.quad	inlining
	.uleb128 0x33
	.long	.LASF1275
	.byte	0x1
	.value	0x122
	.long	0x27fb
	.uleb128 0x9
	.byte	0x3
	.quad	parmdecl_map
	.uleb128 0x33
	.long	.LASF1276
	.byte	0x1
	.value	0x125
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	in_nonparm_insns
	.uleb128 0x40
	.long	.LASF1277
	.byte	0x5
	.byte	0x62
	.long	0x1e3
	.uleb128 0x16
	.long	0x702
	.long	0x517e
	.uleb128 0x17
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x40
	.long	.LASF173
	.byte	0xa
	.byte	0x34
	.long	0x5189
	.uleb128 0xc
	.long	0x516e
	.uleb128 0x16
	.long	0x332
	.long	0x519e
	.uleb128 0x17
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x40
	.long	.LASF1278
	.byte	0xa
	.byte	0x50
	.long	0x51a9
	.uleb128 0xc
	.long	0x518e
	.uleb128 0x16
	.long	0x339
	.long	0x51be
	.uleb128 0x17
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x40
	.long	.LASF1279
	.byte	0xa
	.byte	0x60
	.long	0x51c9
	.uleb128 0xc
	.long	0x51ae
	.uleb128 0x16
	.long	0x332
	.long	0x51de
	.uleb128 0x17
	.long	0x1ea
	.byte	0x98
	.byte	0
	.uleb128 0x40
	.long	.LASF1280
	.byte	0x2
	.byte	0x36
	.long	0x51e9
	.uleb128 0xc
	.long	0x51ce
	.uleb128 0x16
	.long	0x567
	.long	0x51fe
	.uleb128 0x17
	.long	0x1ea
	.byte	0x98
	.byte	0
	.uleb128 0x40
	.long	.LASF1281
	.byte	0x2
	.byte	0x3c
	.long	0x5209
	.uleb128 0xc
	.long	0x51ee
	.uleb128 0x16
	.long	0x36a
	.long	0x521e
	.uleb128 0x17
	.long	0x1ea
	.byte	0x98
	.byte	0
	.uleb128 0x40
	.long	.LASF1282
	.byte	0x2
	.byte	0x3f
	.long	0x5229
	.uleb128 0xc
	.long	0x520e
	.uleb128 0x41
	.long	.LASF1283
	.byte	0x2
	.value	0x4bb
	.long	0x1e3
	.uleb128 0x16
	.long	0x2d
	.long	0x524a
	.uleb128 0x17
	.long	0x1ea
	.byte	0x80
	.byte	0
	.uleb128 0x41
	.long	.LASF1284
	.byte	0x2
	.value	0x611
	.long	0x523a
	.uleb128 0x16
	.long	0x2d
	.long	0x5266
	.uleb128 0x17
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0x41
	.long	.LASF1285
	.byte	0x2
	.value	0x652
	.long	0x5256
	.uleb128 0x41
	.long	.LASF1286
	.byte	0x2
	.value	0x664
	.long	0x2d
	.uleb128 0x16
	.long	0x123
	.long	0x528e
	.uleb128 0x17
	.long	0x1ea
	.byte	0x32
	.byte	0
	.uleb128 0x41
	.long	.LASF1287
	.byte	0x4
	.value	0x79b
	.long	0x527e
	.uleb128 0x41
	.long	.LASF1288
	.byte	0x4
	.value	0xa87
	.long	0x567
	.uleb128 0x41
	.long	.LASF1289
	.byte	0x4
	.value	0xa8a
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1290
	.byte	0x4
	.value	0xa98
	.long	0x123
	.uleb128 0x40
	.long	.LASF1291
	.byte	0x12
	.byte	0x2a
	.long	0x2b86
	.uleb128 0x40
	.long	.LASF1292
	.byte	0x12
	.byte	0x41
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1293
	.byte	0x12
	.byte	0xbb
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1294
	.byte	0x12
	.value	0x17d
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1295
	.byte	0x13
	.byte	0x6a
	.long	0x4e21
	.uleb128 0x40
	.long	.LASF1296
	.byte	0x13
	.byte	0x7f
	.long	0x2bc3
	.uleb128 0x42
	.long	.LASF1297
	.byte	0x1
	.value	0x230
	.long	0x2b75
	.uleb128 0x9
	.byte	0x3
	.quad	global_const_equiv_varray
	.uleb128 0x41
	.long	.LASF1298
	.byte	0xf
	.value	0x1e4
	.long	0x222d
	.uleb128 0x41
	.long	.LASF1299
	.byte	0xf
	.value	0x225
	.long	0x123
	.uleb128 0x40
	.long	.LASF1300
	.byte	0x16
	.byte	0x3a
	.long	0x533a
	.uleb128 0x3
	.byte	0x8
	.long	0x324c
	.uleb128 0x40
	.long	.LASF1301
	.byte	0x17
	.byte	0xc1
	.long	0x355a
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2116
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3f
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
.LASF911:
	.string	"TI_UV8HI_TYPE"
.LASF374:
	.string	"REG_BR_PROB"
.LASF916:
	.string	"TI_UV16QI_TYPE"
.LASF404:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF806:
	.string	"profile_label_no"
.LASF331:
	.string	"rtstr"
.LASF931:
	.string	"itk_unsigned_char"
.LASF482:
	.string	"WITH_CLEANUP_EXPR"
.LASF472:
	.string	"VTABLE_REF"
.LASF391:
	.string	"NOTE_INSN_DELETED"
.LASF630:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF104:
	.string	"_unused2"
.LASF257:
	.string	"UMOD"
.LASF311:
	.string	"min_align"
.LASF559:
	.string	"POSTINCREMENT_EXPR"
.LASF580:
	.string	"BUILT_IN_FABSF"
.LASF495:
	.string	"FLOOR_MOD_EXPR"
.LASF90:
	.string	"_fileno"
.LASF958:
	.string	"varray_data_tag"
.LASF1252:
	.string	"set_block_origin_self"
.LASF35:
	.string	"AD_REGS"
.LASF339:
	.string	"first"
.LASF923:
	.string	"TI_V2SI_TYPE"
.LASF800:
	.string	"inlinable"
.LASF1233:
	.string	"alignment"
.LASF832:
	.string	"uses_const_pool"
.LASF944:
	.string	"decl_required"
.LASF884:
	.string	"TI_UINTSI_TYPE"
.LASF298:
	.string	"CONSTANT_P_RTX"
.LASF731:
	.string	"tree_type"
.LASF512:
	.string	"RROTATE_EXPR"
.LASF996:
	.string	"gcc_debug_hooks"
.LASF548:
	.string	"ADDR_EXPR"
.LASF1261:
	.string	"old_write_symbols"
.LASF1058:
	.string	"next"
.LASF26:
	.string	"block"
.LASF948:
	.string	"_Bool"
.LASF1142:
	.string	"attribute_table"
.LASF330:
	.string	"rtuint"
.LASF860:
	.string	"pure_flag"
.LASF1289:
	.string	"lineno"
.LASF334:
	.string	"rt_cselib"
.LASF1197:
	.string	"static_chain_value"
.LASF201:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF805:
	.string	"inl_max_label_num"
.LASF537:
	.string	"IN_EXPR"
.LASF1264:
	.string	"has_func_hard_reg_initial_val"
.LASF261:
	.string	"LSHIFTRT"
.LASF1136:
	.string	"reorder"
.LASF16:
	.string	"common"
.LASF664:
	.string	"BUILT_IN_EH_RETURN"
.LASF195:
	.string	"MATCH_PAR_DUP"
.LASF95:
	.string	"_shortbuf"
.LASF1304:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF256:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF883:
	.string	"TI_UINTHI_TYPE"
.LASF1183:
	.string	"ignore"
.LASF520:
	.string	"TRUTH_AND_EXPR"
.LASF1032:
	.string	"fndecl"
.LASF822:
	.string	"contains_functions"
.LASF603:
	.string	"BUILT_IN_STRCPY"
.LASF1287:
	.string	"global_trees"
.LASF674:
	.string	"side_effects_flag"
.LASF1030:
	.string	"inline_remap"
.LASF189:
	.string	"MATCH_OPERAND"
.LASF903:
	.string	"TI_VOID_TYPE"
.LASF170:
	.string	"CCFPmode"
.LASF666:
	.string	"BUILT_IN_VARARGS_START"
.LASF1169:
	.string	"to_fn"
.LASF708:
	.string	"imag"
.LASF1230:
	.string	"orig"
.LASF111:
	.string	"reg_class"
.LASF564:
	.string	"LABEL_EXPR"
.LASF278:
	.string	"UNLE"
.LASF39:
	.string	"LEGACY_REGS"
.LASF316:
	.string	"max_after_base"
.LASF707:
	.string	"real"
.LASF890:
	.string	"TI_NULL_POINTER"
.LASF279:
	.string	"UNLT"
.LASF444:
	.string	"FILE_TYPE"
.LASF729:
	.string	"fragment_chain"
.LASF1029:
	.string	"equiv"
.LASF703:
	.string	"tree_string"
.LASF528:
	.string	"EQ_EXPR"
.LASF737:
	.string	"no_force_blk_flag"
.LASF833:
	.string	"uses_pic_offset_table"
.LASF1114:
	.string	"asm_out"
.LASF728:
	.string	"fragment_origin"
.LASF1083:
	.string	"initial_value_struct"
.LASF919:
	.string	"TI_V4SI_TYPE"
.LASF439:
	.string	"CHAR_TYPE"
.LASF643:
	.string	"BUILT_IN_FWRITE"
.LASF1100:
	.string	"probability"
.LASF142:
	.string	"CTImode"
.LASF76:
	.string	"_flags"
.LASF1220:
	.string	"mapped_block_p"
.LASF522:
	.string	"TRUTH_XOR_EXPR"
.LASF851:
	.string	"static_dtor_flag"
.LASF704:
	.string	"length"
.LASF484:
	.string	"PLACEHOLDER_EXPR"
.LASF1043:
	.string	"orig_asm_operands_vector"
.LASF757:
	.string	"lang_type"
.LASF517:
	.string	"BIT_NOT_EXPR"
.LASF1236:
	.string	"equiv_reg"
.LASF859:
	.string	"built_in_class"
.LASF71:
	.string	"__off_t"
.LASF1161:
	.string	"max_insns"
.LASF685:
	.string	"public_flag"
.LASF503:
	.string	"FLOAT_EXPR"
.LASF842:
	.string	"inline_flag"
.LASF893:
	.string	"TI_BITSIZE_ZERO"
.LASF462:
	.string	"PARM_DECL"
.LASF140:
	.string	"CSImode"
.LASF1219:
	.string	"tail_label"
.LASF41:
	.string	"FP_TOP_REG"
.LASF622:
	.string	"BUILT_IN_COSL"
.LASF1087:
	.string	"temp_slot"
.LASF300:
	.string	"VEC_MERGE"
.LASF803:
	.string	"original_decl_initial"
.LASF1118:
	.string	"aligned_op"
.LASF553:
	.string	"CONJ_EXPR"
.LASF1257:
	.string	"setting"
.LASF96:
	.string	"_lock"
.LASF960:
	.string	"uhint"
.LASF233:
	.string	"RETURN"
.LASF593:
	.string	"BUILT_IN_BZERO"
.LASF569:
	.string	"LABELED_BLOCK_EXPR"
.LASF961:
	.string	"generic"
.LASF626:
	.string	"BUILT_IN_ARGS_INFO"
.LASF14:
	.string	"elem"
.LASF176:
	.string	"MODE_FLOAT"
.LASF599:
	.string	"BUILT_IN_MEMCMP"
.LASF641:
	.string	"BUILT_IN_FPUTC"
.LASF633:
	.string	"BUILT_IN_RETURN"
.LASF1175:
	.string	"process_reg_param"
.LASF1299:
	.string	"inline_function_decl"
.LASF681:
	.string	"unused_0"
.LASF697:
	.string	"unused_1"
.LASF881:
	.string	"TI_INTTI_TYPE"
.LASF642:
	.string	"BUILT_IN_FPUTS"
.LASF570:
	.string	"EXIT_BLOCK_EXPR"
.LASF320:
	.string	"alias"
.LASF1086:
	.string	"entries"
.LASF317:
	.string	"offset_unsigned"
.LASF1014:
	.string	"deferred_inline_function"
.LASF146:
	.string	"V2SImode"
.LASF648:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF829:
	.string	"stdarg"
.LASF790:
	.string	"x_trampoline_list"
.LASF441:
	.string	"OFFSET_TYPE"
.LASF900:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF36:
	.string	"Q_REGS"
.LASF568:
	.string	"LOOP_EXPR"
.LASF220:
	.string	"CODE_LABEL"
.LASF649:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF141:
	.string	"CDImode"
.LASF226:
	.string	"UNSPEC"
.LASF560:
	.string	"VA_ARG_EXPR"
.LASF615:
	.string	"BUILT_IN_SIN"
.LASF219:
	.string	"BARRIER"
.LASF906:
	.string	"TI_PTRDIFF_TYPE"
.LASF397:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF222:
	.string	"COND_EXEC"
.LASF236:
	.string	"CONST_INT"
.LASF232:
	.string	"CALL"
.LASF1018:
	.string	"EXPAND_NORMAL"
.LASF61:
	.string	"maybe_vaarg"
.LASF811:
	.string	"epilogue_delay_list"
.LASF862:
	.string	"uninlinable"
.LASF477:
	.string	"TARGET_EXPR"
.LASF1006:
	.string	"source_line"
.LASF148:
	.string	"V4QImode"
.LASF211:
	.string	"ATTR"
.LASF662:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF354:
	.string	"count"
.LASF332:
	.string	"rttype"
.LASF1128:
	.string	"constructor"
.LASF1124:
	.string	"function_epilogue"
.LASF1281:
	.string	"rtx_format"
.LASF30:
	.string	"DREG"
.LASF718:
	.string	"complexity"
.LASF344:
	.string	"head_tree"
.LASF48:
	.string	"FLOAT_SSE_REGS"
.LASF421:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF732:
	.string	"values"
.LASF699:
	.string	"tree_int_cst"
.LASF618:
	.string	"BUILT_IN_SINF"
.LASF147:
	.string	"V2DImode"
.LASF780:
	.string	"x_return_label"
.LASF1300:
	.string	"compiler_params"
.LASF621:
	.string	"BUILT_IN_SINL"
.LASF678:
	.string	"readonly_flag"
.LASF498:
	.string	"EXACT_DIV_EXPR"
.LASF986:
	.string	"varray_type"
.LASF325:
	.string	"mem_attrs"
.LASF82:
	.string	"_IO_write_end"
.LASF368:
	.string	"REG_UNUSED"
.LASF204:
	.string	"DEFINE_DELAY"
.LASF1052:
	.string	"compare_src"
.LASF254:
	.string	"MINUS"
.LASF787:
	.string	"x_clobber_return_insn"
.LASF33:
	.string	"SIREG"
.LASF1178:
	.string	"initialize_for_inline"
.LASF535:
	.string	"UNGE_EXPR"
.LASF966:
	.string	"sched_info_tag"
.LASF598:
	.string	"BUILT_IN_MEMCPY"
.LASF465:
	.string	"NAMESPACE_DECL"
.LASF1099:
	.string	"insns"
.LASF244:
	.string	"STRICT_LOW_PART"
.LASF1048:
	.string	"x_regno_reg_rtx"
.LASF186:
	.string	"INCLUDE"
.LASF1241:
	.string	"subst_constants"
.LASF1085:
	.string	"max_entries"
.LASF417:
	.string	"GR_FRAME_POINTER"
.LASF673:
	.string	"chain"
.LASF352:
	.string	"index"
.LASF973:
	.string	"freq"
.LASF282:
	.string	"ZERO_EXTEND"
.LASF627:
	.string	"BUILT_IN_CONSTANT_P"
.LASF285:
	.string	"FLOAT_TRUNCATE"
.LASF1078:
	.string	"x_forced_labels"
.LASF653:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF659:
	.string	"BUILT_IN_DWARF_CFA"
.LASF450:
	.string	"FUNCTION_TYPE"
.LASF1288:
	.string	"input_filename"
.LASF771:
	.string	"internal_arg_pointer"
.LASF836:
	.string	"tree_decl"
.LASF1122:
	.string	"function_end_prologue"
.LASF1274:
	.string	"inlining"
.LASF414:
	.string	"GR_PC"
.LASF32:
	.string	"BREG"
.LASF157:
	.string	"V2SFmode"
.LASF980:
	.string	"varray_data"
.LASF1088:
	.string	"machine_function"
.LASF286:
	.string	"FLOAT"
.LASF1125:
	.string	"named_section"
.LASF1180:
	.string	"find_block"
.LASF380:
	.string	"REG_EH_CONTEXT"
.LASF112:
	.string	"machine_mode"
.LASF1102:
	.string	"param_info"
.LASF449:
	.string	"QUAL_UNION_TYPE"
.LASF1152:
	.string	"have_ctors_dtors"
.LASF1248:
	.string	"op_mode"
.LASF1035:
	.string	"reg_map"
.LASF337:
	.string	"rtmem"
.LASF799:
	.string	"fixup_var_refs_queue"
.LASF295:
	.string	"RANGE_REG"
.LASF1159:
	.string	"function_cannot_inline_p"
.LASF335:
	.string	"rtbit"
.LASF565:
	.string	"GOTO_EXPR"
.LASF1090:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF119:
	.string	"TImode"
.LASF271:
	.string	"PRE_MODIFY"
.LASF1196:
	.string	"stack_save"
.LASF476:
	.string	"INIT_EXPR"
.LASF814:
	.string	"returns_pointer"
.LASF1291:
	.string	"write_symbols"
.LASF511:
	.string	"LROTATE_EXPR"
.LASF700:
	.string	"realvaluetype"
.LASF284:
	.string	"FLOAT_EXTEND"
.LASF596:
	.string	"BUILT_IN_INDEX"
.LASF470:
	.string	"ARRAY_REF"
.LASF542:
	.string	"NOP_EXPR"
.LASF760:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF392:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF117:
	.string	"SImode"
.LASF1207:
	.string	"locimag"
.LASF228:
	.string	"ADDR_VEC"
.LASF1081:
	.string	"stmt_status"
.LASF1227:
	.string	"integrate_decl_tree"
.LASF158:
	.string	"V2DFmode"
.LASF496:
	.string	"ROUND_MOD_EXPR"
.LASF1283:
	.string	"rtx_equal_function_value_matters"
.LASF310:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF687:
	.string	"protected_flag"
.LASF24:
	.string	"type"
.LASF60:
	.string	"sse_regno"
.LASF341:
	.string	"indx"
.LASF807:
	.string	"machine"
.LASF1200:
	.string	"real_label_map"
.LASF492:
	.string	"ROUND_DIV_EXPR"
.LASF1044:
	.string	"copy_asm_operands_vector"
.LASF1013:
	.string	"global_decl"
.LASF247:
	.string	"SYMBOL_REF"
.LASF390:
	.string	"NOTE_INSN_BIAS"
.LASF1008:
	.string	"end_prologue"
.LASF145:
	.string	"V2HImode"
.LASF874:
	.string	"lang_decl"
.LASF507:
	.string	"ABS_EXPR"
.LASF412:
	.string	"NOTE_INSN_MAX"
.LASF1076:
	.string	"x_saveregs_value"
.LASF1212:
	.string	"reg_to_map"
.LASF723:
	.string	"block_num"
.LASF1179:
	.string	"compare_blocks"
.LASF988:
	.string	"NO_DEBUG"
.LASF200:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF252:
	.string	"COMPARE"
.LASF280:
	.string	"LTGT"
.LASF717:
	.string	"tree_exp"
.LASF1176:
	.string	"temp"
.LASF1057:
	.string	"unsignedp"
.LASF292:
	.string	"HIGH"
.LASF249:
	.string	"QUEUED"
.LASF37:
	.string	"NON_Q_REGS"
.LASF1145:
	.string	"insert_attributes"
.LASF1:
	.string	"mode"
.LASF118:
	.string	"DImode"
.LASF519:
	.string	"TRUTH_ORIF_EXPR"
.LASF576:
	.string	"BUILT_IN_ALLOCA"
.LASF1174:
	.string	"note_modified_parmregs"
.LASF977:
	.string	"basic_block"
.LASF957:
	.string	"const_equiv_data"
.LASF773:
	.string	"hard_reg_initial_vals"
.LASF1140:
	.string	"merge_decl_attributes"
.LASF1074:
	.string	"x_inhibit_defer_pop"
.LASF937:
	.string	"itk_unsigned_long"
.LASF89:
	.string	"_chain"
.LASF945:
	.string	"type_required"
.LASF1134:
	.string	"md_init"
.LASF1045:
	.string	"copy_asm_constraints_vector"
.LASF749:
	.string	"maxval"
.LASF270:
	.string	"POST_INC"
.LASF481:
	.string	"METHOD_CALL_EXPR"
.LASF886:
	.string	"TI_UINTTI_TYPE"
.LASF1262:
	.string	"old_debug_hooks"
.LASF850:
	.string	"static_ctor_flag"
.LASF131:
	.string	"TFmode"
.LASF447:
	.string	"RECORD_TYPE"
.LASF67:
	.string	"unsigned char"
.LASF1050:
	.string	"equiv_sets"
.LASF42:
	.string	"FP_SECOND_REG"
.LASF679:
	.string	"unsigned_flag"
.LASF864:
	.string	"arguments"
.LASF1214:
	.string	"static_chain_mem"
.LASF772:
	.string	"cannot_inline"
.LASF1173:
	.string	"save_parm_insns"
.LASF1279:
	.string	"mode_bitsize"
.LASF1305:
	.string	"_IO_lock_t"
.LASF905:
	.string	"TI_CONST_PTR_TYPE"
.LASF755:
	.string	"lang_specific"
.LASF1235:
	.string	"const_mode"
.LASF938:
	.string	"itk_long_long"
.LASF1265:
	.string	"get_func_hard_reg_initial_val"
.LASF941:
	.string	"attribute_spec"
.LASF114:
	.string	"BImode"
.LASF268:
	.string	"PRE_INC"
.LASF367:
	.string	"REG_NO_CONFLICT"
.LASF128:
	.string	"SFmode"
.LASF1115:
	.string	"open_paren"
.LASF761:
	.string	"emit"
.LASF740:
	.string	"packed_flag"
.LASF513:
	.string	"BIT_IOR_EXPR"
.LASF577:
	.string	"BUILT_IN_ABS"
.LASF459:
	.string	"CONST_DECL"
.LASF702:
	.string	"tree_real_cst"
.LASF1113:
	.string	"asm_int_op"
.LASF464:
	.string	"FIELD_DECL"
.LASF217:
	.string	"JUMP_INSN"
.LASF349:
	.string	"cond_local_set"
.LASF1182:
	.string	"target"
.LASF933:
	.string	"itk_unsigned_short"
.LASF1135:
	.string	"md_finish"
.LASF1101:
	.string	"edge"
.LASF587:
	.string	"BUILT_IN_CREAL"
.LASF990:
	.string	"SDB_DEBUG"
.LASF1295:
	.string	"debug_hooks"
.LASF180:
	.string	"MODE_COMPLEX_FLOAT"
.LASF1217:
	.string	"newdest"
.LASF336:
	.string	"rttree"
.LASF1266:
	.string	"get_hard_reg_initial_val"
.LASF841:
	.string	"regdecl_flag"
.LASF583:
	.string	"BUILT_IN_IMAXABS"
.LASF438:
	.string	"BOOLEAN_TYPE"
.LASF592:
	.string	"BUILT_IN_CIMAGL"
.LASF969:
	.string	"last_uid"
.LASF389:
	.string	"insn_note"
.LASF408:
	.string	"NOTE_INSN_RANGE_END"
.LASF199:
	.string	"DEFINE_SPLIT"
.LASF821:
	.string	"has_nonlocal_goto"
.LASF835:
	.string	"arg_pointer_save_area_init"
.LASF652:
	.string	"BUILT_IN_ISGREATER"
.LASF636:
	.string	"BUILT_IN_TRAP"
.LASF1198:
	.string	"inl_max_uid"
.LASF1296:
	.string	"do_nothing_debug_hooks"
.LASF1104:
	.string	"help"
.LASF238:
	.string	"CONST_VECTOR"
.LASF545:
	.string	"SAVE_EXPR"
.LASF196:
	.string	"MATCH_INSN"
.LASF698:
	.string	"high"
.LASF997:
	.string	"init"
.LASF922:
	.string	"TI_V4HI_TYPE"
.LASF781:
	.string	"x_save_expr_regs"
.LASF1003:
	.string	"begin_block"
.LASF129:
	.string	"DFmode"
.LASF44:
	.string	"SSE_REGS"
.LASF1095:
	.string	"gcov_type"
.LASF65:
	.string	"size_t"
.LASF230:
	.string	"PREFETCH"
.LASF53:
	.string	"LIM_REG_CLASSES"
.LASF52:
	.string	"ALL_REGS"
.LASF764:
	.string	"pops_args"
.LASF123:
	.string	"PSImode"
.LASF783:
	.string	"x_rtl_expr_chain"
.LASF602:
	.string	"BUILT_IN_STRNCAT"
.LASF294:
	.string	"RANGE_INFO"
.LASF1186:
	.string	"inl_f"
.LASF951:
	.string	"SSIZETYPE"
.LASF1084:
	.string	"num_entries"
.LASF327:
	.string	"rtunion_def"
.LASF457:
	.string	"FUNCTION_DECL"
.LASF1022:
	.string	"EXPAND_WRITE"
.LASF655:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF210:
	.string	"DEFINE_ATTR"
.LASF952:
	.string	"USIZETYPE"
.LASF478:
	.string	"COND_EXPR"
.LASF212:
	.string	"SET_ATTR"
.LASF137:
	.string	"TCmode"
.LASF775:
	.string	"x_nonlocal_labels"
.LASF499:
	.string	"FIX_TRUNC_EXPR"
.LASF287:
	.string	"UNSIGNED_FLOAT"
.LASF379:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF756:
	.string	"cselib_val_struct"
.LASF411:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF81:
	.string	"_IO_write_ptr"
.LASF1165:
	.string	"preal"
.LASF435:
	.string	"COMPLEX_TYPE"
.LASF259:
	.string	"ROTATE"
.LASF637:
	.string	"BUILT_IN_PREFETCH"
.LASF1009:
	.string	"end_epilogue"
.LASF347:
	.string	"succ"
.LASF509:
	.string	"LSHIFT_EXPR"
.LASF972:
	.string	"refs"
.LASF283:
	.string	"TRUNCATE"
.LASF372:
	.string	"REG_DEP_ANTI"
.LASF134:
	.string	"SCmode"
.LASF1123:
	.string	"function_begin_epilogue"
.LASF1280:
	.string	"rtx_length"
.LASF1273:
	.string	"reg_equiv_memory_loc"
.LASF1285:
	.string	"global_rtl"
.LASF422:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF1210:
	.string	"departing_mode"
.LASF928:
	.string	"integer_type_kind"
.LASF124:
	.string	"PDImode"
.LASF393:
	.string	"NOTE_INSN_BLOCK_END"
.LASF452:
	.string	"INTEGER_CST"
.LASF460:
	.string	"TYPE_DECL"
.LASF897:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF963:
	.string	"bitmap"
.LASF804:
	.string	"inl_last_parm_insn"
.LASF402:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1282:
	.string	"rtx_class"
.LASF605:
	.string	"BUILT_IN_STRCMP"
.LASF751:
	.string	"main_variant"
.LASF356:
	.string	"flags"
.LASF556:
	.string	"PREDECREMENT_EXPR"
.LASF889:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF902:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF187:
	.string	"EXPR_LIST"
.LASF214:
	.string	"EQ_ATTR"
.LASF1223:
	.string	"integrate_parm_decls"
.LASF684:
	.string	"static_flag"
.LASF899:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF167:
	.string	"CCGOCmode"
.LASF245:
	.string	"CONCAT"
.LASF613:
	.string	"BUILT_IN_STRRCHR"
.LASF1097:
	.string	"pred_next"
.LASF918:
	.string	"TI_V16SF_TYPE"
.LASF313:
	.string	"min_after_vec"
.LASF898:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF74:
	.string	"FILE"
.LASF1211:
	.string	"arriving_mode"
.LASF251:
	.string	"COND"
.LASF436:
	.string	"VECTOR_TYPE"
.LASF177:
	.string	"MODE_PARTIAL_INT"
.LASF791:
	.string	"x_parm_birth_insn"
.LASF793:
	.string	"x_max_parm_reg"
.LASF594:
	.string	"BUILT_IN_BCMP"
.LASF1276:
	.string	"in_nonparm_insns"
.LASF15:
	.string	"tree"
.LASF754:
	.string	"alias_set"
.LASF135:
	.string	"DCmode"
.LASF1039:
	.string	"max_insnno"
.LASF1000:
	.string	"undef"
.LASF202:
	.string	"DEFINE_COMBINE"
.LASF1302:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF516:
	.string	"BIT_ANDTC_EXPR"
.LASF904:
	.string	"TI_PTR_TYPE"
.LASF785:
	.string	"x_tail_recursion_reentry"
.LASF22:
	.string	"identifier"
.LASF260:
	.string	"ASHIFTRT"
.LASF1249:
	.string	"mark_stores"
.LASF1010:
	.string	"begin_function"
.LASF165:
	.string	"CCmode"
.LASF665:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF657:
	.string	"BUILT_IN_ISUNORDERED"
.LASF722:
	.string	"abstract_flag"
.LASF345:
	.string	"end_tree"
.LASF43:
	.string	"FLOAT_REGS"
.LASF395:
	.string	"NOTE_INSN_LOOP_END"
.LASF163:
	.string	"V16SFmode"
.LASF866:
	.string	"initial"
.LASF518:
	.string	"TRUTH_ANDIF_EXPR"
.LASF409:
	.string	"NOTE_INSN_LIVE"
.LASF207:
	.string	"DEFINE_COND_EXEC"
.LASF85:
	.string	"_IO_save_base"
.LASF950:
	.string	"SIZETYPE"
.LASF1054:
	.string	"var_refs_queue"
.LASF1075:
	.string	"x_stack_pointer_delta"
.LASF523:
	.string	"TRUTH_NOT_EXPR"
.LASF203:
	.string	"DEFINE_EXPAND"
.LASF504:
	.string	"NEGATE_EXPR"
.LASF824:
	.string	"is_thunk"
.LASF1292:
	.string	"optimize_size"
.LASF1171:
	.string	"argvec"
.LASF983:
	.string	"elements_used"
.LASF154:
	.string	"V8SImode"
.LASF777:
	.string	"x_nonlocal_goto_handler_labels"
.LASF216:
	.string	"INSN"
.LASF329:
	.string	"rtint"
.LASF667:
	.string	"BUILT_IN_STDARG_START"
.LASF624:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF880:
	.string	"TI_INTDI_TYPE"
.LASF246:
	.string	"LABEL_REF"
.LASF1146:
	.string	"function_attribute_inlinable_p"
.LASF885:
	.string	"TI_UINTDI_TYPE"
.LASF1271:
	.string	"emit_initial_value_sets"
.LASF371:
	.string	"REG_LABEL"
.LASF1192:
	.string	"max_regno"
.LASF895:
	.string	"TI_BITSIZE_UNIT"
.LASF369:
	.string	"REG_CC_SETTER"
.LASF1254:
	.string	"subblock"
.LASF979:
	.string	"elt_list"
.LASF1253:
	.string	"local_decl"
.LASF359:
	.string	"REG_DEAD"
.LASF399:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF99:
	.string	"__pad2"
.LASF539:
	.string	"CARD_EXPR"
.LASF1278:
	.string	"mode_size"
.LASF362:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF1094:
	.string	"regset"
.LASF17:
	.string	"int_cst"
.LASF1139:
	.string	"gcc_target"
.LASF901:
	.string	"TI_DOUBLE_TYPE"
.LASF635:
	.string	"BUILT_IN_LONGJMP"
.LASF709:
	.string	"tree_vector"
.LASF443:
	.string	"METHOD_TYPE"
.LASF1038:
	.string	"min_insnno"
.LASF166:
	.string	"CCGCmode"
.LASF351:
	.string	"global_live_at_end"
.LASF25:
	.string	"list"
.LASF541:
	.string	"CONVERT_EXPR"
.LASF1154:
	.string	"initial_value_pair"
.LASF242:
	.string	"SCRATCH"
.LASF152:
	.string	"V8QImode"
.LASF493:
	.string	"TRUNC_MOD_EXPR"
.LASF155:
	.string	"V8DImode"
.LASF183:
	.string	"MAX_MODE_CLASS"
.LASF939:
	.string	"itk_unsigned_long_long"
.LASF1298:
	.string	"cfun"
.LASF489:
	.string	"TRUNC_DIV_EXPR"
.LASF281:
	.string	"SIGN_EXTEND"
.LASF816:
	.string	"calls_setjmp"
.LASF546:
	.string	"UNSAVE_EXPR"
.LASF1046:
	.string	"local_return_label"
.LASF488:
	.string	"MULT_EXPR"
.LASF715:
	.string	"value"
.LASF1284:
	.string	"const_int_rtx"
.LASF303:
	.string	"VEC_DUPLICATE"
.LASF527:
	.string	"GE_EXPR"
.LASF778:
	.string	"x_nonlocal_goto_stack_level"
.LASF427:
	.string	"ERROR_MARK"
.LASF106:
	.string	"_next"
.LASF609:
	.string	"BUILT_IN_STRPBRK"
.LASF549:
	.string	"REFERENCE_EXPR"
.LASF321:
	.string	"expr"
.LASF494:
	.string	"CEIL_MOD_EXPR"
.LASF405:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF730:
	.string	"address"
.LASF982:
	.string	"num_elements"
.LASF1232:
	.string	"format_ptr"
.LASF689:
	.string	"deprecated_flag"
.LASF638:
	.string	"BUILT_IN_PUTCHAR"
.LASF946:
	.string	"function_type_required"
.LASF776:
	.string	"x_nonlocal_goto_handler_slots"
.LASF161:
	.string	"V8SFmode"
.LASF1037:
	.string	"insn_map"
.LASF490:
	.string	"CEIL_DIV_EXPR"
.LASF1160:
	.string	"insn"
.LASF628:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF34:
	.string	"DIREG"
.LASF370:
	.string	"REG_CC_USER"
.LASF225:
	.string	"ASM_OPERANDS"
.LASF869:
	.string	"live_range_rtl"
.LASF796:
	.string	"x_temp_slot_level"
.LASF748:
	.string	"minval"
.LASF686:
	.string	"private_flag"
.LASF794:
	.string	"x_parm_reg_stack_loc"
.LASF169:
	.string	"CCZmode"
.LASF1120:
	.string	"integer"
.LASF396:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF38:
	.string	"INDEX_REGS"
.LASF491:
	.string	"FLOOR_DIV_EXPR"
.LASF429:
	.string	"TREE_LIST"
.LASF1026:
	.string	"SAVE_NONLOCAL"
.LASF540:
	.string	"RANGE_EXPR"
.LASF877:
	.string	"TI_INTQI_TYPE"
.LASF1121:
	.string	"function_prologue"
.LASF727:
	.string	"abstract_origin"
.LASF1106:
	.string	"PARAM_MAX_INLINE_INSNS"
.LASF456:
	.string	"STRING_CST"
.LASF524:
	.string	"LT_EXPR"
.LASF762:
	.string	"varasm"
.LASF385:
	.string	"REG_NON_LOCAL_GOTO"
.LASF1002:
	.string	"end_source_file"
.LASF229:
	.string	"ADDR_DIFF_VEC"
.LASF514:
	.string	"BIT_XOR_EXPR"
.LASF572:
	.string	"SWITCH_EXPR"
.LASF521:
	.string	"TRUTH_OR_EXPR"
.LASF1238:
	.string	"loc_offset"
.LASF291:
	.string	"ZERO_EXTRACT"
.LASF959:
	.string	"hint"
.LASF224:
	.string	"ASM_INPUT"
.LASF563:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF711:
	.string	"ht_identifier"
.LASF274:
	.string	"ORDERED"
.LASF162:
	.string	"V8DFmode"
.LASF1056:
	.string	"promoted_mode"
.LASF867:
	.string	"assembler_name"
.LASF1126:
	.string	"exception_section"
.LASF505:
	.string	"MIN_EXPR"
.LASF910:
	.string	"TI_UV4SI_TYPE"
.LASF974:
	.string	"deaths"
.LASF738:
	.string	"needs_constructing_flag"
.LASF288:
	.string	"UNSIGNED_FIX"
.LASF500:
	.string	"FIX_CEIL_EXPR"
.LASF813:
	.string	"returns_pcc_struct"
.LASF606:
	.string	"BUILT_IN_STRNCMP"
.LASF1290:
	.string	"current_function_decl"
.LASF706:
	.string	"tree_complex"
.LASF1129:
	.string	"destructor"
.LASF58:
	.string	"sse_words"
.LASF1049:
	.string	"num_sets"
.LASF856:
	.string	"comdat_flag"
.LASF40:
	.string	"GENERAL_REGS"
.LASF525:
	.string	"LE_EXPR"
.LASF858:
	.string	"no_limit_stack"
.LASF865:
	.string	"result"
.LASF1119:
	.string	"unaligned_op"
.LASF747:
	.string	"name"
.LASF1202:
	.string	"invisiref"
.LASF188:
	.string	"INSN_LIST"
.LASF107:
	.string	"_sbuf"
.LASF296:
	.string	"RANGE_VAR"
.LASF978:
	.string	"changes_mode"
.LASF87:
	.string	"_IO_save_end"
.LASF1117:
	.string	"byte_op"
.LASF1137:
	.string	"reorder2"
.LASF175:
	.string	"MODE_INT"
.LASF984:
	.string	"element_size"
.LASF18:
	.string	"real_cst"
.LASF506:
	.string	"MAX_EXPR"
.LASF768:
	.string	"arg_offset_rtx"
.LASF1303:
	.string	"integrate.c"
.LASF720:
	.string	"tree_block"
.LASF57:
	.string	"regno"
.LASF891:
	.string	"TI_SIZE_ZERO"
.LASF1072:
	.string	"expr_status"
.LASF1133:
	.string	"variable_issue"
.LASF725:
	.string	"subblocks"
.LASF1141:
	.string	"merge_type_attributes"
.LASF1107:
	.string	"PARAM_MAX_DELAY_SLOT_INSN_SEARCH"
.LASF820:
	.string	"has_nonlocal_label"
.LASF932:
	.string	"itk_short"
.LASF600:
	.string	"BUILT_IN_MEMSET"
.LASF297:
	.string	"RANGE_LIVE"
.LASF1073:
	.string	"x_pending_stack_adjust"
.LASF497:
	.string	"RDIV_EXPR"
.LASF765:
	.string	"args_size"
.LASF1051:
	.string	"last_pc_value"
.LASF9:
	.string	"frame_related"
.LASF1105:
	.string	"compiler_param"
.LASF844:
	.string	"virtual_flag"
.LASF965:
	.string	"const_equiv"
.LASF742:
	.string	"pointer_depth"
.LASF705:
	.string	"pointer"
.LASF458:
	.string	"LABEL_DECL"
.LASF1025:
	.string	"SAVE_FUNCTION"
.LASF1244:
	.string	"op0_mode"
.LASF671:
	.string	"END_BUILTINS"
.LASF333:
	.string	"rt_addr_diff_vec_flags"
.LASF953:
	.string	"BITSIZETYPE"
.LASF419:
	.string	"GR_ARG_POINTER"
.LASF1208:
	.string	"copyreal"
.LASF510:
	.string	"RSHIFT_EXPR"
.LASF27:
	.string	"sizetype"
.LASF47:
	.string	"FP_SECOND_SSE_REGS"
.LASF1144:
	.string	"set_default_type_attributes"
.LASF992:
	.string	"DWARF2_DEBUG"
.LASF306:
	.string	"SS_MINUS"
.LASF454:
	.string	"COMPLEX_CST"
.LASF193:
	.string	"MATCH_PARALLEL"
.LASF150:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF1005:
	.string	"ignore_block"
.LASF672:
	.string	"tree_common"
.LASF361:
	.string	"REG_EQUIV"
.LASF1222:
	.string	"new_insn"
.LASF752:
	.string	"binfo"
.LASF894:
	.string	"TI_BITSIZE_ONE"
.LASF68:
	.string	"short unsigned int"
.LASF1275:
	.string	"parmdecl_map"
.LASF69:
	.string	"signed char"
.LASF888:
	.string	"TI_INTEGER_ONE"
.LASF192:
	.string	"MATCH_OPERATOR"
.LASF1158:
	.string	"has_machine_attr"
.LASF1228:
	.string	"new_block"
.LASF714:
	.string	"purpose"
.LASF792:
	.string	"x_last_parm_insn"
.LASF878:
	.string	"TI_INTHI_TYPE"
.LASF981:
	.string	"varray_head_tag"
.LASF340:
	.string	"current"
.LASF744:
	.string	"pointer_to"
.LASF853:
	.string	"weak_flag"
.LASF1213:
	.string	"copy_insn_list"
.LASF870:
	.string	"saved_tree"
.LASF1067:
	.string	"x_cur_insn_uid"
.LASF716:
	.string	"tree_vec"
.LASF1079:
	.string	"x_pending_chain"
.LASF837:
	.string	"filename"
.LASF308:
	.string	"SS_TRUNCATE"
.LASF558:
	.string	"POSTDECREMENT_EXPR"
.LASF375:
	.string	"REG_EXEC_COUNT"
.LASF646:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF801:
	.string	"no_debugging_symbols"
.LASF1130:
	.string	"adjust_cost"
.LASF650:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF312:
	.string	"base_after_vec"
.LASF197:
	.string	"DEFINE_INSN"
.LASF72:
	.string	"__off64_t"
.LASF1251:
	.string	"last_reg"
.LASF927:
	.string	"TI_MAX"
.LASF151:
	.string	"V4DImode"
.LASF353:
	.string	"loop_depth"
.LASF1163:
	.string	"parms"
.LASF79:
	.string	"_IO_read_base"
.LASF50:
	.string	"INT_SSE_REGS"
.LASF1234:
	.string	"constant"
.LASF562:
	.string	"TRY_FINALLY_EXPR"
.LASF97:
	.string	"_offset"
.LASF20:
	.string	"string"
.LASF420:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF1017:
	.string	"expand_modifier"
.LASF526:
	.string	"GT_EXPR"
.LASF1069:
	.string	"x_last_filename"
.LASF373:
	.string	"REG_DEP_OUTPUT"
.LASF84:
	.string	"_IO_buf_end"
.LASF746:
	.string	"symtab"
.LASF206:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF307:
	.string	"US_MINUS"
.LASF1260:
	.string	"old_cfun"
.LASF912:
	.string	"TI_UV8QI_TYPE"
.LASF770:
	.string	"return_rtx"
.LASF46:
	.string	"FP_TOP_SSE_REGS"
.LASF466:
	.string	"COMPONENT_REF"
.LASF290:
	.string	"SIGN_EXTRACT"
.LASF845:
	.string	"ignored_flag"
.LASF8:
	.string	"integrated"
.LASF975:
	.string	"live_length"
.LASF487:
	.string	"MINUS_EXPR"
.LASF231:
	.string	"CLOBBER"
.LASF750:
	.string	"next_variant"
.LASF1096:
	.string	"edge_def"
.LASF103:
	.string	"_mode"
.LASF181:
	.string	"MODE_VECTOR_INT"
.LASF80:
	.string	"_IO_write_base"
.LASF377:
	.string	"REG_SAVE_AREA"
.LASF1156:
	.string	"pseudo"
.LASF299:
	.string	"CALL_PLACEHOLDER"
.LASF759:
	.string	"function"
.LASF610:
	.string	"BUILT_IN_STRSPN"
.LASF159:
	.string	"V4SFmode"
.LASF1111:
	.string	"PARAM_MAX_GCSE_PASSES"
.LASF474:
	.string	"COMPOUND_EXPR"
.LASF825:
	.string	"instrument_entry_exit"
.LASF882:
	.string	"TI_UINTQI_TYPE"
.LASF1301:
	.string	"targetm"
.LASF788:
	.string	"x_frame_offset"
.LASF629:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF733:
	.string	"size_unit"
.LASF645:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF253:
	.string	"PLUS"
.LASF597:
	.string	"BUILT_IN_RINDEX"
.LASF1170:
	.string	"copy"
.LASF1185:
	.string	"inlining_previous"
.LASF269:
	.string	"POST_DEC"
.LASF1092:
	.string	"bits"
.LASF1199:
	.string	"eh_region_offset"
.LASF116:
	.string	"HImode"
.LASF357:
	.string	"rtunion"
.LASF398:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF179:
	.string	"MODE_COMPLEX_INT"
.LASF1080:
	.string	"eh_status"
.LASF574:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF1059:
	.string	"sequence_stack"
.LASF64:
	.string	"long int"
.LASF424:
	.string	"GR_VIRTUAL_CFA"
.LASF440:
	.string	"POINTER_TYPE"
.LASF508:
	.string	"FFS_EXPR"
.LASF363:
	.string	"REG_WAS_0"
.LASF432:
	.string	"VOID_TYPE"
.LASF1187:
	.string	"formal"
.LASF1089:
	.string	"language_function"
.LASF544:
	.string	"VIEW_CONVERT_EXPR"
.LASF876:
	.string	"TI_ERROR_MARK"
.LASF384:
	.string	"REG_NORETURN"
.LASF105:
	.string	"_IO_marker"
.LASF1194:
	.string	"max_labelno"
.LASF130:
	.string	"XFmode"
.LASF815:
	.string	"needs_context"
.LASF383:
	.string	"REG_MAYBE_DEAD"
.LASF1149:
	.string	"expand_builtin"
.LASF160:
	.string	"V4DFmode"
.LASF1020:
	.string	"EXPAND_CONST_ADDRESS"
.LASF4:
	.string	"unchanging"
.LASF848:
	.string	"defer_output"
.LASF924:
	.string	"TI_V2SF_TYPE"
.LASF358:
	.string	"reg_note"
.LASF819:
	.string	"calls_eh_return"
.LASF943:
	.string	"max_length"
.LASF1016:
	.string	"label"
.LASF798:
	.string	"x_target_temp_slot_level"
.LASF1153:
	.string	"cannot_modify_jumps_p"
.LASF766:
	.string	"pretend_args_size"
.LASF753:
	.string	"context"
.LASF184:
	.string	"rtx_code"
.LASF62:
	.string	"CUMULATIVE_ARGS"
.LASF1215:
	.string	"pattern"
.LASF485:
	.string	"WITH_RECORD_EXPR"
.LASF1060:
	.string	"last"
.LASF875:
	.string	"tree_index"
.LASF828:
	.string	"varargs"
.LASF1143:
	.string	"comp_type_attributes"
.LASF721:
	.string	"handler_block_flag"
.LASF1155:
	.string	"hard_reg"
.LASF861:
	.string	"non_addressable"
.LASF581:
	.string	"BUILT_IN_FABSL"
.LASF1148:
	.string	"init_builtins"
.LASF1040:
	.string	"const_equiv_varray"
.LASF31:
	.string	"CREG"
.LASF1036:
	.string	"label_map"
.LASF661:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF830:
	.string	"x_whole_function_mode_p"
.LASF1127:
	.string	"eh_frame_section"
.LASF1226:
	.string	"new_decl_rtl"
.LASF185:
	.string	"UNKNOWN"
.LASF227:
	.string	"UNSPEC_VOLATILE"
.LASF471:
	.string	"ARRAY_RANGE_REF"
.LASF956:
	.string	"TYPE_KIND_LAST"
.LASF608:
	.string	"BUILT_IN_STRSTR"
.LASF847:
	.string	"common_flag"
.LASF401:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF66:
	.string	"long unsigned int"
.LASF855:
	.string	"no_instrument_function_entry_exit"
.LASF680:
	.string	"asm_written_flag"
.LASF11:
	.string	"rtx_def"
.LASF426:
	.string	"tree_code"
.LASF126:
	.string	"HFmode"
.LASF644:
	.string	"BUILT_IN_FPRINTF"
.LASF987:
	.string	"debug_info_type"
.LASF675:
	.string	"constant_flag"
.LASF616:
	.string	"BUILT_IN_COS"
.LASF234:
	.string	"TRAP_IF"
.LASF1041:
	.string	"const_age"
.LASF701:
	.string	"real_extract"
.LASF688:
	.string	"bounded_flag"
.LASF463:
	.string	"RESULT_DECL"
.LASF1258:
	.string	"set_decl_abstract_flags"
.LASF561:
	.string	"TRY_CATCH_EXPR"
.LASF381:
	.string	"REG_EH_REGION"
.LASF917:
	.string	"TI_V4SF_TYPE"
.LASF713:
	.string	"tree_list"
.LASF364:
	.string	"REG_RETVAL"
.LASF138:
	.string	"CQImode"
.LASF1247:
	.string	"src_copy"
.LASF808:
	.string	"stack_alignment_needed"
.LASF1007:
	.string	"begin_prologue"
.LASF1157:
	.string	"get_label_from_map"
.LASF73:
	.string	"char"
.LASF812:
	.string	"returns_struct"
.LASF136:
	.string	"XCmode"
.LASF786:
	.string	"x_arg_pointer_save_area"
.LASF656:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF29:
	.string	"AREG"
.LASF575:
	.string	"built_in_function"
.LASF784:
	.string	"x_tail_recursion_label"
.LASF543:
	.string	"NON_LVALUE_EXPR"
.LASF1042:
	.string	"inline_target"
.LASF1272:
	.string	"allocate_initial_values"
.LASF857:
	.string	"malloc_flag"
.LASF971:
	.string	"sets"
.LASF83:
	.string	"_IO_buf_base"
.LASF810:
	.string	"language"
.LASF262:
	.string	"ROTATERT"
.LASF929:
	.string	"itk_char"
.LASF735:
	.string	"precision"
.LASF248:
	.string	"ADDRESSOF"
.LASF925:
	.string	"TI_V16QI_TYPE"
.LASF386:
	.string	"REG_SETJMP"
.LASF144:
	.string	"V2QImode"
.LASF566:
	.string	"RETURN_EXPR"
.LASF590:
	.string	"BUILT_IN_CIMAG"
.LASF631:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF1063:
	.string	"x_reg_rtx_no"
.LASF122:
	.string	"PHImode"
.LASF78:
	.string	"_IO_read_end"
.LASF739:
	.string	"transparent_union_flag"
.LASF1055:
	.string	"modified"
.LASF1071:
	.string	"regno_decl"
.LASF949:
	.string	"size_type_kind"
.LASF967:
	.string	"reg_info_def"
.LASF143:
	.string	"COImode"
.LASF267:
	.string	"PRE_DEC"
.LASF75:
	.string	"_IO_FILE"
.LASF400:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF418:
	.string	"GR_HARD_FRAME_POINTER"
.LASF324:
	.string	"align"
.LASF1221:
	.string	"copy_insn_notes"
.LASF658:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF818:
	.string	"calls_alloca"
.LASF1138:
	.string	"cycle_display"
.LASF998:
	.string	"finish"
.LASF896:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF797:
	.string	"x_var_temp_slot_level"
.LASF174:
	.string	"MODE_RANDOM"
.LASF305:
	.string	"US_PLUS"
.LASF1242:
	.string	"memonly"
.LASF1116:
	.string	"close_paren"
.LASF1243:
	.string	"num_changes"
.LASF164:
	.string	"BLKmode"
.LASF133:
	.string	"HCmode"
.LASF479:
	.string	"BIND_EXPR"
.LASF551:
	.string	"FDESC_EXPR"
.LASF1168:
	.string	"from_fn"
.LASF915:
	.string	"TI_UV2SF_TYPE"
.LASF486:
	.string	"PLUS_EXPR"
.LASF921:
	.string	"TI_V8QI_TYPE"
.LASF589:
	.string	"BUILT_IN_CREALL"
.LASF994:
	.string	"VMS_DEBUG"
.LASF926:
	.string	"TI_MAIN_IDENTIFIER"
.LASF1027:
	.string	"equiv_table"
.LASF607:
	.string	"BUILT_IN_STRLEN"
.LASF448:
	.string	"UNION_TYPE"
.LASF696:
	.string	"lang_flag_6"
.LASF239:
	.string	"CONST_STRING"
.LASF302:
	.string	"VEC_CONCAT"
.LASF1164:
	.string	"arg_vector"
.LASF323:
	.string	"size"
.LASF1203:
	.string	"stack_slot"
.LASF550:
	.string	"ENTRY_VALUE_EXPR"
.LASF625:
	.string	"BUILT_IN_NEXT_ARG"
.LASF1166:
	.string	"pimag"
.LASF98:
	.string	"__pad1"
.LASF100:
	.string	"__pad3"
.LASF101:
	.string	"__pad4"
.LASF102:
	.string	"__pad5"
.LASF376:
	.string	"REG_NOALIAS"
.LASF215:
	.string	"ATTR_FLAG"
.LASF989:
	.string	"DBX_DEBUG"
.LASF1021:
	.string	"EXPAND_INITIALIZER"
.LASF171:
	.string	"CCFPUmode"
.LASF360:
	.string	"REG_INC"
.LASF205:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF1267:
	.string	"has_hard_reg_initial_val"
.LASF852:
	.string	"artificial_flag"
.LASF789:
	.string	"x_context_display"
.LASF88:
	.string	"_markers"
.LASF108:
	.string	"_pos"
.LASF209:
	.string	"ADDRESS"
.LASF531:
	.string	"ORDERED_EXPR"
.LASF669:
	.string	"BUILT_IN_VA_COPY"
.LASF802:
	.string	"original_arg_vector"
.LASF21:
	.string	"complex"
.LASF1024:
	.string	"SAVE_BLOCK"
.LASF834:
	.string	"uses_eh_lsda"
.LASF1206:
	.string	"locreal"
.LASF584:
	.string	"BUILT_IN_CONJ"
.LASF468:
	.string	"INDIRECT_REF"
.LASF962:
	.string	"cptr"
.LASF442:
	.string	"REFERENCE_TYPE"
.LASF338:
	.string	"bitmap_head_def"
.LASF1225:
	.string	"tail"
.LASF726:
	.string	"supercontext"
.LASF670:
	.string	"BUILT_IN_EXPECT"
.LASF2:
	.string	"jump"
.LASF530:
	.string	"UNORDERED_EXPR"
.LASF955:
	.string	"UBITSIZETYPE"
.LASF909:
	.string	"TI_UV4SF_TYPE"
.LASF976:
	.string	"calls_crossed"
.LASF309:
	.string	"US_TRUNCATE"
.LASF692:
	.string	"lang_flag_2"
.LASF1189:
	.string	"parm_insns"
.LASF611:
	.string	"BUILT_IN_STRCSPN"
.LASF538:
	.string	"SET_LE_EXPR"
.LASF1224:
	.string	"args"
.LASF1181:
	.string	"expand_inline_function"
.LASF413:
	.string	"global_rtl_index"
.LASF1256:
	.string	"set_block_abstract_flags"
.LASF56:
	.string	"nregs"
.LASF1012:
	.string	"function_decl"
.LASF304:
	.string	"SS_PLUS"
.LASF266:
	.string	"UMAX"
.LASF557:
	.string	"PREINCREMENT_EXPR"
.LASF45:
	.string	"MMX_REGS"
.LASF1151:
	.string	"have_named_sections"
.LASF318:
	.string	"scale"
.LASF838:
	.string	"linenum"
.LASF115:
	.string	"QImode"
.LASF1277:
	.string	"target_flags"
.LASF534:
	.string	"UNGT_EXPR"
.LASF985:
	.string	"data"
.LASF416:
	.string	"GR_STACK_POINTER"
.LASF1034:
	.string	"block_map"
.LASF1131:
	.string	"adjust_priority"
.LASF743:
	.string	"user_align"
.LASF578:
	.string	"BUILT_IN_LABS"
.LASF1188:
	.string	"actual"
.LASF127:
	.string	"TQFmode"
.LASF343:
	.string	"head"
.LASF1004:
	.string	"end_block"
.LASF1184:
	.string	"structure_value_addr"
.LASF677:
	.string	"volatile_flag"
.LASF1162:
	.string	"ninsns"
.LASF55:
	.string	"words"
.LASF601:
	.string	"BUILT_IN_STRCAT"
.LASF617:
	.string	"BUILT_IN_SQRTF"
.LASF315:
	.string	"min_after_base"
.LASF620:
	.string	"BUILT_IN_SQRTL"
.LASF1001:
	.string	"start_source_file"
.LASF964:
	.string	"sched"
.LASF935:
	.string	"itk_unsigned_int"
.LASF445:
	.string	"ARRAY_TYPE"
.LASF831:
	.string	"x_dont_save_pending_sizes_p"
.LASF54:
	.string	"ix86_args"
.LASF573:
	.string	"EXC_PTR_EXPR"
.LASF1293:
	.string	"flag_test_coverage"
.LASF595:
	.string	"BUILT_IN_FFS"
.LASF682:
	.string	"used_flag"
.LASF640:
	.string	"BUILT_IN_PRINTF"
.LASF28:
	.string	"NO_REGS"
.LASF734:
	.string	"attributes"
.LASF920:
	.string	"TI_V8HI_TYPE"
.LASF1231:
	.string	"for_lhs"
.LASF767:
	.string	"outgoing_args_size"
.LASF501:
	.string	"FIX_FLOOR_EXPR"
.LASF120:
	.string	"OImode"
.LASF382:
	.string	"REG_SAVE_NOTE"
.LASF647:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF690:
	.string	"lang_flag_0"
.LASF691:
	.string	"lang_flag_1"
.LASF467:
	.string	"BIT_FIELD_REF"
.LASF693:
	.string	"lang_flag_3"
.LASF694:
	.string	"lang_flag_4"
.LASF695:
	.string	"lang_flag_5"
.LASF264:
	.string	"SMAX"
.LASF863:
	.string	"lang_flag_7"
.LASF425:
	.string	"GR_MAX"
.LASF873:
	.string	"pointer_alias_set"
.LASF301:
	.string	"VEC_SELECT"
.LASF1109:
	.string	"PARAM_MAX_PENDING_LIST_LENGTH"
.LASF582:
	.string	"BUILT_IN_LLABS"
.LASF366:
	.string	"REG_NONNEG"
.LASF461:
	.string	"VAR_DECL"
.LASF719:
	.string	"operands"
.LASF475:
	.string	"MODIFY_EXPR"
.LASF1297:
	.string	"global_const_equiv_varray"
.LASF1062:
	.string	"emit_status"
.LASF712:
	.string	"tree_identifier"
.LASF182:
	.string	"MODE_VECTOR_FLOAT"
.LASF430:
	.string	"TREE_VEC"
.LASF272:
	.string	"POST_MODIFY"
.LASF968:
	.string	"first_uid"
.LASF623:
	.string	"BUILT_IN_SAVEREGS"
.LASF567:
	.string	"EXIT_EXPR"
.LASF585:
	.string	"BUILT_IN_CONJF"
.LASF378:
	.string	"REG_BR_PRED"
.LASF586:
	.string	"BUILT_IN_CONJL"
.LASF198:
	.string	"DEFINE_PEEPHOLE"
.LASF109:
	.string	"long long unsigned int"
.LASF407:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF322:
	.string	"offset"
.LASF319:
	.string	"addr_diff_vec_flags"
.LASF93:
	.string	"_cur_column"
.LASF194:
	.string	"MATCH_OP_DUP"
.LASF208:
	.string	"SEQUENCE"
.LASF428:
	.string	"IDENTIFIER_NODE"
.LASF913:
	.string	"TI_UV4HI_TYPE"
.LASF1229:
	.string	"copy_rtx_and_substitute"
.LASF1019:
	.string	"EXPAND_SUM"
.LASF1132:
	.string	"issue_rate"
.LASF125:
	.string	"QFmode"
.LASF1053:
	.string	"compare_mode"
.LASF1240:
	.string	"try_constants"
.LASF868:
	.string	"section_name"
.LASF970:
	.string	"last_note_uid"
.LASF1108:
	.string	"PARAM_MAX_DELAY_SLOT_LIVE_SEARCH"
.LASF995:
	.string	"VMS_AND_DWARF2_DEBUG"
.LASF769:
	.string	"args_info"
.LASF532:
	.string	"UNLT_EXPR"
.LASF1112:
	.string	"LAST_PARAM"
.LASF947:
	.string	"handler"
.LASF827:
	.string	"limit_stack"
.LASF451:
	.string	"LANG_TYPE"
.LASF235:
	.string	"RESX"
.LASF1028:
	.string	"dest"
.LASF223:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF887:
	.string	"TI_INTEGER_ZERO"
.LASF1269:
	.string	"setup_initial_hard_reg_value_integration"
.LASF86:
	.string	"_IO_backup_base"
.LASF273:
	.string	"UNORDERED"
.LASF172:
	.string	"MAX_MACHINE_MODE"
.LASF77:
	.string	"_IO_read_ptr"
.LASF934:
	.string	"itk_int"
.LASF758:
	.string	"off_align"
.LASF350:
	.string	"global_live_at_start"
.LASF51:
	.string	"FLOAT_INT_SSE_REGS"
.LASF190:
	.string	"MATCH_SCRATCH"
.LASF240:
	.string	"CONST"
.LASF1047:
	.string	"regno_pointer_align"
.LASF1110:
	.string	"PARAM_MAX_GCSE_MEMORY"
.LASF289:
	.string	"SQRT"
.LASF736:
	.string	"string_flag"
.LASF415:
	.string	"GR_CC0"
.LASF1270:
	.string	"remap"
.LASF173:
	.string	"mode_class"
.LASF255:
	.string	"MULT"
.LASF446:
	.string	"SET_TYPE"
.LASF178:
	.string	"MODE_CC"
.LASF724:
	.string	"vars"
.LASF348:
	.string	"local_set"
.LASF480:
	.string	"CALL_EXPR"
.LASF121:
	.string	"PQImode"
.LASF515:
	.string	"BIT_AND_EXPR"
.LASF554:
	.string	"REALPART_EXPR"
.LASF1245:
	.string	"inner"
.LASF153:
	.string	"V8HImode"
.LASF1195:
	.string	"nargs"
.LASF1250:
	.string	"uregno"
.LASF795:
	.string	"x_temp_slots"
.LASF879:
	.string	"TI_INTSI_TYPE"
.LASF591:
	.string	"BUILT_IN_CIMAGF"
.LASF840:
	.string	"nonlocal_flag"
.LASF782:
	.string	"x_stack_slot_list"
.LASF92:
	.string	"_old_offset"
.LASF218:
	.string	"CALL_INSN"
.LASF1011:
	.string	"end_function"
.LASF991:
	.string	"DWARF_DEBUG"
.LASF993:
	.string	"XCOFF_DEBUG"
.LASF243:
	.string	"SUBREG"
.LASF1190:
	.string	"arg_trees"
.LASF741:
	.string	"restrict_flag"
.LASF1172:
	.string	"first_nonparm_insn"
.LASF1193:
	.string	"min_labelno"
.LASF817:
	.string	"calls_longjmp"
.LASF156:
	.string	"V16QImode"
.LASF387:
	.string	"REG_ALWAYS_RETURN"
.LASF579:
	.string	"BUILT_IN_FABS"
.LASF1259:
	.string	"output_inline_function"
.LASF23:
	.string	"decl"
.LASF1177:
	.string	"is_global"
.LASF555:
	.string	"IMAGPART_EXPR"
.LASF110:
	.string	"long long int"
.LASF914:
	.string	"TI_UV2SI_TYPE"
.LASF871:
	.string	"inlined_fns"
.LASF940:
	.string	"itk_none"
.LASF365:
	.string	"REG_LIBCALL"
.LASF1294:
	.string	"flag_no_inline"
.LASF1191:
	.string	"arg_vals"
.LASF91:
	.string	"_flags2"
.LASF954:
	.string	"SBITSIZETYPE"
.LASF132:
	.string	"QCmode"
.LASF241:
	.string	"VALUE"
.LASF221:
	.string	"NOTE"
.LASF483:
	.string	"CLEANUP_POINT_EXPR"
.LASF1239:
	.string	"save_for_inline"
.LASF1204:
	.string	"pmode"
.LASF59:
	.string	"sse_nregs"
.LASF265:
	.string	"UMIN"
.LASF191:
	.string	"MATCH_DUP"
.LASF453:
	.string	"REAL_CST"
.LASF654:
	.string	"BUILT_IN_ISLESS"
.LASF612:
	.string	"BUILT_IN_STRCHR"
.LASF668:
	.string	"BUILT_IN_VA_END"
.LASF342:
	.string	"basic_block_def"
.LASF663:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF1103:
	.string	"option"
.LASF745:
	.string	"reference_to"
.LASF502:
	.string	"FIX_ROUND_EXPR"
.LASF1150:
	.string	"section_type_flags"
.LASF529:
	.string	"NE_EXPR"
.LASF1082:
	.string	"varasm_status"
.LASF632:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF619:
	.string	"BUILT_IN_COSF"
.LASF437:
	.string	"ENUMERAL_TYPE"
.LASF1061:
	.string	"sequence_rtl_expr"
.LASF394:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF1093:
	.string	"bitmap_element"
.LASF774:
	.string	"x_function_call_count"
.LASF1091:
	.string	"prev"
.LASF139:
	.string	"CHImode"
.LASF588:
	.string	"BUILT_IN_CREALF"
.LASF410:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF213:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF854:
	.string	"non_addr_const_p"
.LASF710:
	.string	"elements"
.LASF1070:
	.string	"regno_pointer_align_length"
.LASF1065:
	.string	"x_first_insn"
.LASF930:
	.string	"itk_signed_char"
.LASF1077:
	.string	"x_apply_args_value"
.LASF1033:
	.string	"insns_at_start"
.LASF49:
	.string	"FLOAT_INT_REGS"
.LASF237:
	.string	"CONST_DOUBLE"
.LASF634:
	.string	"BUILT_IN_SETJMP"
.LASF892:
	.string	"TI_SIZE_ONE"
.LASF651:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF936:
	.string	"itk_long"
.LASF168:
	.string	"CCNOmode"
.LASF149:
	.string	"V4HImode"
.LASF473:
	.string	"CONSTRUCTOR"
.LASF1031:
	.string	"integrating"
.LASF1286:
	.string	"static_chain_incoming_rtx"
.LASF275:
	.string	"UNEQ"
.LASF431:
	.string	"BLOCK"
.LASF1263:
	.string	"get_hard_reg_initial_reg"
.LASF258:
	.string	"ASHIFT"
.LASF908:
	.string	"TI_VOID_LIST_NODE"
.LASF263:
	.string	"SMIN"
.LASF1201:
	.string	"__FUNCTION__"
.LASF250:
	.string	"IF_THEN_ELSE"
.LASF843:
	.string	"bit_field_flag"
.LASF639:
	.string	"BUILT_IN_PUTS"
.LASF1015:
	.string	"outlining_inline_function"
.LASF846:
	.string	"in_system_header_flag"
.LASF1167:
	.string	"copy_decl_for_inlining"
.LASF683:
	.string	"nothrow_flag"
.LASF849:
	.string	"transparent_union"
.LASF1209:
	.string	"copyimag"
.LASF406:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF763:
	.string	"outer"
.LASF872:
	.string	"vindex"
.LASF1255:
	.string	"set_decl_origin_self"
.LASF403:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1068:
	.string	"x_last_linenum"
.LASF455:
	.string	"VECTOR_CST"
.LASF63:
	.string	"unsigned int"
.LASF547:
	.string	"RTL_EXPR"
.LASF326:
	.string	"tree_node"
.LASF999:
	.string	"define"
.LASF1205:
	.string	"note"
.LASF779:
	.string	"x_cleanup_label"
.LASF536:
	.string	"UNEQ_EXPR"
.LASF604:
	.string	"BUILT_IN_STRNCPY"
.LASF314:
	.string	"max_after_vec"
.LASF433:
	.string	"INTEGER_TYPE"
.LASF276:
	.string	"UNGE"
.LASF1064:
	.string	"x_first_label_num"
.LASF839:
	.string	"external_flag"
.LASF70:
	.string	"short int"
.LASF346:
	.string	"pred"
.LASF277:
	.string	"UNGT"
.LASF823:
	.string	"has_computed_jump"
.LASF614:
	.string	"BUILT_IN_SQRT"
.LASF469:
	.string	"BUFFER_REF"
.LASF1066:
	.string	"x_last_insn"
.LASF1216:
	.string	"new_set"
.LASF826:
	.string	"profile"
.LASF94:
	.string	"_vtable_offset"
.LASF552:
	.string	"COMPLEX_EXPR"
.LASF660:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF533:
	.string	"UNLE_EXPR"
.LASF1268:
	.string	"mark_hard_reg_initial_vals"
.LASF1023:
	.string	"save_level"
.LASF809:
	.string	"preferred_stack_boundary"
.LASF1246:
	.string	"dest_loc"
.LASF113:
	.string	"VOIDmode"
.LASF388:
	.string	"REG_VTABLE_REF"
.LASF1237:
	.string	"equiv_loc"
.LASF907:
	.string	"TI_VA_LIST_TYPE"
.LASF942:
	.string	"min_length"
.LASF423:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF293:
	.string	"LO_SUM"
.LASF676:
	.string	"addressable_flag"
.LASF1147:
	.string	"ms_bitfield_layout_p"
.LASF1218:
	.string	"sequence"
.LASF355:
	.string	"frequency"
.LASF434:
	.string	"REAL_TYPE"
.LASF328:
	.string	"rtwint"
.LASF1098:
	.string	"succ_next"
.LASF571:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
