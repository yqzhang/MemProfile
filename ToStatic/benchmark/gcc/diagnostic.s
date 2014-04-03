	.file	"diagnostic.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 diagnostic.c -mtune=generic -march=x86-64 -g
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
	.local	global_diagnostic_context
	.comm	global_diagnostic_context,376,32
	.globl	global_dc
	.data
	.align 8
	.type	global_dc, @object
	.size	global_dc, 8
global_dc:
	.quad	global_diagnostic_context
	.globl	diagnostic_buffer
	.align 8
	.type	diagnostic_buffer, @object
	.size	diagnostic_buffer, 8
diagnostic_buffer:
	.quad	global_diagnostic_context
	.local	last_error_function
	.comm	last_error_function,8,8
	.local	last_error_tick
	.comm	last_error_tick,4,4
	.globl	print_error_function
	.align 8
	.type	print_error_function, @object
	.size	print_error_function, 8
print_error_function:
	.quad	default_print_error_function
	.local	diagnostic_lock
	.comm	diagnostic_lock,4,4
	.text
	.globl	error_module_changed
	.type	error_module_changed, @function
error_module_changed:
.LFB2:
	.file 1 "diagnostic.c"
	.loc 1 130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 131 0
	movl	last_error_tick(%rip), %edx	# last_error_tick, last_error_tick.0
	movl	input_file_stack_tick(%rip), %eax	# input_file_stack_tick, input_file_stack_tick.1
	cmpl	%eax, %edx	# input_file_stack_tick.1, last_error_tick.0
	setne	%al	#, D.10534
	movzbl	%al, %eax	# D.10534, D.10535
	.loc 1 132 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	error_module_changed, .-error_module_changed
	.globl	record_last_error_module
	.type	record_last_error_module, @function
record_last_error_module:
.LFB3:
	.loc 1 139 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 140 0
	movl	input_file_stack_tick(%rip), %eax	# input_file_stack_tick, input_file_stack_tick.2
	movl	%eax, last_error_tick(%rip)	# input_file_stack_tick.2, last_error_tick
	.loc 1 141 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	record_last_error_module, .-record_last_error_module
	.globl	error_function_changed
	.type	error_function_changed, @function
error_function_changed:
.LFB4:
	.loc 1 147 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 148 0
	movq	last_error_function(%rip), %rdx	# last_error_function, last_error_function.3
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.4
	cmpq	%rax, %rdx	# current_function_decl.4, last_error_function.3
	setne	%al	#, D.10536
	movzbl	%al, %eax	# D.10536, D.10537
	.loc 1 149 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	error_function_changed, .-error_function_changed
	.globl	record_last_error_function
	.type	record_last_error_function, @function
record_last_error_function:
.LFB5:
	.loc 1 155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 156 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.5
	movq	%rax, last_error_function(%rip)	# current_function_decl.5, last_error_function
	.loc 1 157 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	record_last_error_function, .-record_last_error_function
	.globl	diagnostic_initialize
	.type	diagnostic_initialize, @function
diagnostic_initialize:
.LFB6:
	.loc 1 164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# context, context
	.loc 1 165 0
	movq	-8(%rbp), %rax	# context, tmp61
	movl	$376, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	memset	#
	.loc 1 166 0
	movq	-8(%rbp), %rax	# context, tmp62
	addq	$88, %rax	#, D.10538
	movl	$free, %r8d	#,
	movl	$xmalloc, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.10538,
	call	_obstack_begin	#
	.loc 1 169 0
	movq	stderr(%rip), %rdx	# stderr, stderr.6
	movq	-8(%rbp), %rax	# context, tmp63
	movq	%rdx, 80(%rax)	# stderr.6, context_1(D)->buffer.stream
	.loc 1 172 0
	movq	-8(%rbp), %rax	# context, tmp64
	movl	$0, 24(%rax)	#, MEM[(struct output_buffer *)context_1(D)].state.prefixing_rule
	.loc 1 174 0
	movq	-8(%rbp), %rax	# context, tmp65
	movq	$default_diagnostic_starter, 352(%rax)	#, context_1(D)->begin_diagnostic
	.loc 1 175 0
	movq	-8(%rbp), %rax	# context, tmp66
	movq	$default_diagnostic_finalizer, 360(%rax)	#, context_1(D)->end_diagnostic
	.loc 1 176 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	diagnostic_initialize, .-diagnostic_initialize
	.globl	output_is_line_wrapping
	.type	output_is_line_wrapping, @function
output_is_line_wrapping:
.LFB7:
	.loc 1 183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# buffer, buffer
	.loc 1 184 0
	movq	-8(%rbp), %rax	# buffer, tmp63
	movl	12(%rax), %eax	# buffer_1(D)->state.ideal_maximum_length, D.10539
	testl	%eax, %eax	# D.10539
	setg	%al	#, D.10540
	movzbl	%al, %eax	# D.10540, D.10539
	.loc 1 185 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	output_is_line_wrapping, .-output_is_line_wrapping
	.globl	output_get_prefix
	.type	output_get_prefix, @function
output_get_prefix:
.LFB8:
	.loc 1 192 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# buffer, buffer
	.loc 1 193 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	movq	(%rax), %rax	# buffer_1(D)->state.prefix, D.10541
	.loc 1 194 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	output_get_prefix, .-output_get_prefix
	.type	set_real_maximum_length, @function
set_real_maximum_length:
.LFB9:
	.loc 1 202 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
	.loc 1 206 0
	movq	-24(%rbp), %rax	# buffer, tmp72
	movq	%rax, %rdi	# tmp72,
	call	output_is_line_wrapping	#
	testl	%eax, %eax	# D.10542
	je	.L13	#,
	.loc 1 207 0
	movq	-24(%rbp), %rax	# buffer, tmp73
	movl	24(%rax), %eax	# buffer_2(D)->state.prefixing_rule, D.10543
	testl	%eax, %eax	# D.10543
	je	.L13	#,
	.loc 1 208 0
	movq	-24(%rbp), %rax	# buffer, tmp74
	movl	24(%rax), %eax	# buffer_2(D)->state.prefixing_rule, D.10543
	cmpl	$1, %eax	#, D.10543
	jne	.L14	#,
.L13:
	.loc 1 209 0
	movq	-24(%rbp), %rax	# buffer, tmp75
	movl	12(%rax), %edx	# buffer_2(D)->state.ideal_maximum_length, D.10542
	movq	-24(%rbp), %rax	# buffer, tmp76
	movl	%edx, 8(%rax)	# D.10542, buffer_2(D)->state.maximum_length
	jmp	.L12	#
.L14:
.LBB2:
	.loc 1 213 0
	movq	-24(%rbp), %rax	# buffer, tmp77
	movq	(%rax), %rax	# buffer_2(D)->state.prefix, D.10544
	.loc 1 212 0
	testq	%rax, %rax	# D.10544
	je	.L16	#,
	.loc 1 213 0
	movq	-24(%rbp), %rax	# buffer, tmp78
	movq	(%rax), %rax	# buffer_2(D)->state.prefix, D.10544
	movq	%rax, %rdi	# D.10544,
	call	strlen	#
	jmp	.L17	#
.L16:
	.loc 1 212 0 discriminator 1
	movl	$0, %eax	#, iftmp.7
.L17:
	.loc 1 212 0 is_stmt 0 discriminator 2
	movl	%eax, -4(%rbp)	# iftmp.7, prefix_length
	.loc 1 216 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# buffer, tmp79
	movl	12(%rax), %eax	# buffer_2(D)->state.ideal_maximum_length, D.10542
	subl	-4(%rbp), %eax	# prefix_length, D.10542
	cmpl	$31, %eax	#, D.10542
	jg	.L18	#,
	.loc 1 217 0
	movq	-24(%rbp), %rax	# buffer, tmp80
	movl	12(%rax), %eax	# buffer_2(D)->state.ideal_maximum_length, D.10542
	leal	32(%rax), %edx	#, D.10542
	movq	-24(%rbp), %rax	# buffer, tmp81
	movl	%edx, 8(%rax)	# D.10542, buffer_2(D)->state.maximum_length
	jmp	.L12	#
.L18:
	.loc 1 219 0
	movq	-24(%rbp), %rax	# buffer, tmp82
	movl	12(%rax), %edx	# buffer_2(D)->state.ideal_maximum_length, D.10542
	movq	-24(%rbp), %rax	# buffer, tmp83
	movl	%edx, 8(%rax)	# D.10542, buffer_2(D)->state.maximum_length
.L12:
.LBE2:
	.loc 1 221 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	set_real_maximum_length, .-set_real_maximum_length
	.globl	output_set_maximum_length
	.type	output_set_maximum_length, @function
output_set_maximum_length:
.LFB10:
	.loc 1 230 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movl	%esi, -12(%rbp)	# length, length
	.loc 1 231 0
	movq	-8(%rbp), %rax	# buffer, tmp59
	movl	-12(%rbp), %edx	# length, tmp60
	movl	%edx, 12(%rax)	# tmp60, buffer_1(D)->state.ideal_maximum_length
	.loc 1 232 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	movq	%rax, %rdi	# tmp61,
	call	set_real_maximum_length	#
	.loc 1 233 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	output_set_maximum_length, .-output_set_maximum_length
	.globl	output_set_prefix
	.type	output_set_prefix, @function
output_set_prefix:
.LFB11:
	.loc 1 241 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# prefix, prefix
	.loc 1 242 0
	movq	-8(%rbp), %rax	# buffer, tmp59
	movq	-16(%rbp), %rdx	# prefix, tmp60
	movq	%rdx, (%rax)	# tmp60, buffer_1(D)->state.prefix
	.loc 1 243 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	movq	%rax, %rdi	# tmp61,
	call	set_real_maximum_length	#
	.loc 1 244 0
	movq	-8(%rbp), %rax	# buffer, tmp62
	movb	$0, 20(%rax)	#, buffer_1(D)->state.emitted_prefix_p
	.loc 1 245 0
	movq	-8(%rbp), %rax	# buffer, tmp63
	movl	$0, 16(%rax)	#, buffer_1(D)->state.indent_skip
	.loc 1 246 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	output_set_prefix, .-output_set_prefix
	.globl	output_last_position
	.type	output_last_position, @function
output_last_position:
.LFB12:
	.loc 1 253 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# buffer, buffer
	.loc 1 254 0
	movq	$0, -8(%rbp)	#, p
	.loc 1 256 0
	movq	-24(%rbp), %rax	# buffer, tmp64
	movq	104(%rax), %rdx	# buffer_3(D)->obstack.object_base, D.10546
	movq	-24(%rbp), %rax	# buffer, tmp65
	movq	112(%rax), %rax	# buffer_3(D)->obstack.next_free, D.10546
	cmpq	%rax, %rdx	# D.10546, D.10546
	je	.L22	#,
	.loc 1 257 0
	movq	-24(%rbp), %rax	# buffer, tmp66
	movq	112(%rax), %rax	# buffer_3(D)->obstack.next_free, D.10546
	subq	$1, %rax	#, tmp67
	movq	%rax, -8(%rbp)	# tmp67, p
.L22:
	.loc 1 258 0
	movq	-8(%rbp), %rax	# p, D.10547
	.loc 1 259 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	output_last_position, .-output_last_position
	.globl	output_destroy_prefix
	.type	output_destroy_prefix, @function
output_destroy_prefix:
.LFB13:
	.loc 1 266 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	.loc 1 267 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	movq	(%rax), %rax	# buffer_1(D)->state.prefix, D.10548
	testq	%rax, %rax	# D.10548
	je	.L24	#,
	.loc 1 269 0
	movq	-8(%rbp), %rax	# buffer, tmp62
	movq	(%rax), %rax	# buffer_1(D)->state.prefix, D.10548
	movq	%rax, %rdi	# D.10548,
	call	free	#
	.loc 1 270 0
	movq	-8(%rbp), %rax	# buffer, tmp63
	movq	$0, (%rax)	#, buffer_1(D)->state.prefix
.L24:
	.loc 1 272 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	output_destroy_prefix, .-output_destroy_prefix
	.globl	output_clear_message_text
	.type	output_clear_message_text, @function
output_clear_message_text:
.LFB14:
	.loc 1 279 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
.LBB3:
	.loc 1 280 0
	movq	-24(%rbp), %rax	# buffer, tmp65
	addq	$88, %rax	#, tmp64
	movq	%rax, -16(%rbp)	# tmp64, __o
	movq	-24(%rbp), %rax	# buffer, tmp66
	movq	104(%rax), %rax	# buffer_1(D)->obstack.object_base, tmp67
	movq	%rax, -8(%rbp)	# tmp67, __obj
	movq	-16(%rbp), %rax	# __o, tmp68
	movq	8(%rax), %rax	# __o_2->chunk, D.10549
	cmpq	-8(%rbp), %rax	# __obj, D.10549
	jae	.L27	#,
	.loc 1 280 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp69
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.10550
	cmpq	-8(%rbp), %rax	# __obj, D.10550
	jbe	.L27	#,
	movq	-16(%rbp), %rax	# __o, tmp70
	movq	-8(%rbp), %rdx	# __obj, tmp71
	movq	%rdx, 16(%rax)	# tmp71, __o_2->object_base
	movq	-16(%rbp), %rax	# __o, tmp72
	movq	16(%rax), %rdx	# __o_2->object_base, D.10550
	movq	-16(%rbp), %rax	# __o, tmp73
	movq	%rdx, 24(%rax)	# D.10550, __o_2->next_free
	jmp	.L28	#
.L27:
	.loc 1 280 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp74
	movq	-16(%rbp), %rax	# __o, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	obstack_free	#
.L28:
.LBE3:
	.loc 1 281 0 is_stmt 1
	movq	-24(%rbp), %rax	# buffer, tmp76
	movl	$0, 176(%rax)	#, buffer_1(D)->line_length
	.loc 1 282 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	output_clear_message_text, .-output_clear_message_text
	.type	clear_diagnostic_info, @function
clear_diagnostic_info:
.LFB15:
	.loc 1 289 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# buffer, buffer
	.loc 1 290 0
	movq	-8(%rbp), %rax	# buffer, tmp59
	movq	$0, 32(%rax)	#, buffer_1(D)->state.cursor
	.loc 1 291 0
	movq	-8(%rbp), %rax	# buffer, tmp60
	movq	$0, 40(%rax)	#, buffer_1(D)->state.format_args
	.loc 1 292 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	movb	$0, 20(%rax)	#, buffer_1(D)->state.emitted_prefix_p
	.loc 1 293 0
	movq	-8(%rbp), %rax	# buffer, tmp62
	movl	$0, 16(%rax)	#, buffer_1(D)->state.indent_skip
	.loc 1 294 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	clear_diagnostic_info, .-clear_diagnostic_info
	.globl	init_output_buffer
	.type	init_output_buffer, @function
init_output_buffer:
.LFB16:
	.loc 1 304 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# prefix, prefix
	movl	%edx, -20(%rbp)	# maximum_length, maximum_length
	.loc 1 305 0
	movq	-8(%rbp), %rax	# buffer, tmp63
	movl	$320, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	memset	#
	.loc 1 306 0
	movq	-8(%rbp), %rax	# buffer, tmp64
	addq	$88, %rax	#, D.10551
	movl	$free, %r8d	#,
	movl	$xmalloc, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.10551,
	call	_obstack_begin	#
	.loc 1 307 0
	movq	stderr(%rip), %rdx	# stderr, stderr.8
	movq	-8(%rbp), %rax	# buffer, tmp65
	movq	%rdx, 80(%rax)	# stderr.8, buffer_1(D)->stream
	.loc 1 308 0
	movq	-8(%rbp), %rax	# buffer, tmp66
	movl	-20(%rbp), %edx	# maximum_length, tmp67
	movl	%edx, 12(%rax)	# tmp67, buffer_1(D)->state.ideal_maximum_length
	.loc 1 309 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.9
	movl	24(%rax), %edx	# MEM[(struct output_buffer *)global_dc.9_5].state.prefixing_rule, D.10552
	movq	-8(%rbp), %rax	# buffer, tmp68
	movl	%edx, 24(%rax)	# D.10552, buffer_1(D)->state.prefixing_rule
	.loc 1 310 0
	movq	-16(%rbp), %rdx	# prefix, tmp69
	movq	-8(%rbp), %rax	# buffer, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	output_set_prefix	#
	.loc 1 311 0
	movq	-8(%rbp), %rax	# buffer, tmp71
	movl	$0, 176(%rax)	#, buffer_1(D)->line_length
	.loc 1 312 0
	movq	-8(%rbp), %rax	# buffer, tmp72
	movq	%rax, %rdi	# tmp72,
	call	clear_diagnostic_info	#
	.loc 1 313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	init_output_buffer, .-init_output_buffer
	.globl	output_clear
	.type	output_clear, @function
output_clear:
.LFB17:
	.loc 1 320 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	.loc 1 321 0
	movq	-8(%rbp), %rax	# buffer, tmp59
	movq	%rax, %rdi	# tmp59,
	call	output_clear_message_text	#
	.loc 1 322 0
	movq	-8(%rbp), %rax	# buffer, tmp60
	movq	%rax, %rdi	# tmp60,
	call	clear_diagnostic_info	#
	.loc 1 323 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	output_clear, .-output_clear
	.globl	output_finalize_message
	.type	output_finalize_message, @function
output_finalize_message:
.LFB18:
	.loc 1 331 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
.LBB4:
	.loc 1 332 0
	movq	-24(%rbp), %rax	# buffer, tmp69
	addq	$88, %rax	#, tmp68
	movq	%rax, -8(%rbp)	# tmp68, __o
	movq	-8(%rbp), %rax	# __o, tmp70
	movq	24(%rax), %rax	# __o_2->next_free, D.10553
	leaq	1(%rax), %rdx	#, D.10553
	movq	-8(%rbp), %rax	# __o, tmp71
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.10553
	cmpq	%rax, %rdx	# D.10553, D.10553
	jbe	.L33	#,
	.loc 1 332 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# __o, tmp72
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	_obstack_newchunk	#
.L33:
	.loc 1 332 0 discriminator 2
	movq	-8(%rbp), %rax	# __o, tmp73
	movq	24(%rax), %rax	# __o_2->next_free, D.10553
	leaq	1(%rax), %rcx	#, D.10553
	movq	-8(%rbp), %rdx	# __o, tmp74
	movq	%rcx, 24(%rdx)	# D.10553, __o_2->next_free
	movb	$0, (%rax)	#, *_7
.LBE4:
	.loc 1 333 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# buffer, tmp75
	movq	104(%rax), %rax	# buffer_1(D)->obstack.object_base, D.10554
	.loc 1 334 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	output_finalize_message, .-output_finalize_message
	.globl	flush_diagnostic_buffer
	.type	flush_diagnostic_buffer, @function
flush_diagnostic_buffer:
.LFB19:
	.loc 1 338 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 339 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.10
	movq	%rax, %rdi	# diagnostic_buffer.10,
	call	output_buffer_to_stream	#
	.loc 1 340 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.11
	movq	80(%rax), %rax	# diagnostic_buffer.11_2->stream, D.10555
	movq	%rax, %rdi	# D.10555,
	call	fflush	#
	.loc 1 341 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	flush_diagnostic_buffer, .-flush_diagnostic_buffer
	.globl	output_space_left
	.type	output_space_left, @function
output_space_left:
.LFB20:
	.loc 1 349 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# buffer, buffer
	.loc 1 350 0
	movq	-8(%rbp), %rax	# buffer, tmp63
	movl	8(%rax), %edx	# buffer_1(D)->state.maximum_length, D.10556
	movq	-8(%rbp), %rax	# buffer, tmp64
	movl	176(%rax), %eax	# buffer_1(D)->line_length, D.10556
	subl	%eax, %edx	# D.10556, D.10556
	movl	%edx, %eax	# D.10556, D.10556
	.loc 1 351 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	output_space_left, .-output_space_left
	.globl	output_emit_prefix
	.type	output_emit_prefix, @function
output_emit_prefix:
.LFB21:
	.loc 1 358 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
	.loc 1 359 0
	movq	-24(%rbp), %rax	# buffer, tmp67
	movq	(%rax), %rax	# buffer_1(D)->state.prefix, D.10557
	testq	%rax, %rax	# D.10557
	je	.L38	#,
	.loc 1 361 0
	movq	-24(%rbp), %rax	# buffer, tmp68
	movl	24(%rax), %eax	# buffer_1(D)->state.prefixing_rule, D.10558
	testl	%eax, %eax	# D.10558
	je	.L41	#,
	cmpl	$2, %eax	#, D.10558
	je	.L42	#,
	.loc 1 365 0
	jmp	.L38	#
.L41:
	.loc 1 368 0
	movq	-24(%rbp), %rax	# buffer, tmp69
	movzbl	20(%rax), %eax	# buffer_1(D)->state.emitted_prefix_p, D.10559
	testb	%al, %al	# D.10559
	je	.L43	#,
	.loc 1 370 0
	movq	-24(%rbp), %rax	# buffer, tmp70
	movq	%rax, %rdi	# tmp70,
	call	output_indent	#
	.loc 1 371 0
	jmp	.L38	#
.L43:
	.loc 1 373 0
	movq	-24(%rbp), %rax	# buffer, tmp71
	movl	16(%rax), %eax	# buffer_1(D)->state.indent_skip, D.10560
	leal	3(%rax), %edx	#, D.10560
	movq	-24(%rbp), %rax	# buffer, tmp72
	movl	%edx, 16(%rax)	# D.10560, buffer_1(D)->state.indent_skip
.L42:
.LBB5:
	.loc 1 378 0
	movq	-24(%rbp), %rax	# buffer, tmp73
	movq	(%rax), %rax	# buffer_1(D)->state.prefix, D.10557
	movq	%rax, %rdi	# D.10557,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.10561, prefix_length
	.loc 1 379 0
	movq	-24(%rbp), %rax	# buffer, tmp74
	movq	(%rax), %rcx	# buffer_1(D)->state.prefix, D.10557
	movl	-4(%rbp), %edx	# prefix_length, tmp75
	movq	-24(%rbp), %rax	# buffer, tmp76
	movq	%rcx, %rsi	# D.10557,
	movq	%rax, %rdi	# tmp76,
	call	output_append_r	#
	.loc 1 380 0
	movq	-24(%rbp), %rax	# buffer, tmp77
	movb	$1, 20(%rax)	#, buffer_1(D)->state.emitted_prefix_p
.LBE5:
	.loc 1 382 0
	nop
.L38:
	.loc 1 385 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	output_emit_prefix, .-output_emit_prefix
	.globl	output_add_newline
	.type	output_add_newline, @function
output_add_newline:
.LFB22:
	.loc 1 392 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
.LBB6:
	.loc 1 393 0
	movq	-24(%rbp), %rax	# buffer, tmp67
	addq	$88, %rax	#, tmp66
	movq	%rax, -8(%rbp)	# tmp66, __o
	movq	-8(%rbp), %rax	# __o, tmp68
	movq	24(%rax), %rax	# __o_2->next_free, D.10562
	leaq	1(%rax), %rdx	#, D.10562
	movq	-8(%rbp), %rax	# __o, tmp69
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.10562
	cmpq	%rax, %rdx	# D.10562, D.10562
	jbe	.L45	#,
	.loc 1 393 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# __o, tmp70
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	_obstack_newchunk	#
.L45:
	.loc 1 393 0 discriminator 2
	movq	-8(%rbp), %rax	# __o, tmp71
	movq	24(%rax), %rax	# __o_2->next_free, D.10562
	leaq	1(%rax), %rcx	#, D.10562
	movq	-8(%rbp), %rdx	# __o, tmp72
	movq	%rcx, 24(%rdx)	# D.10562, __o_2->next_free
	movb	$10, (%rax)	#, *_7
.LBE6:
	.loc 1 394 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# buffer, tmp73
	movl	$0, 176(%rax)	#, buffer_1(D)->line_length
	.loc 1 395 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	output_add_newline, .-output_add_newline
	.globl	output_add_character
	.type	output_add_character, @function
output_add_character:
.LFB23:
	.loc 1 403 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
	movl	%esi, -28(%rbp)	# c, c
	.loc 1 404 0
	movq	-24(%rbp), %rax	# buffer, tmp69
	movq	%rax, %rdi	# tmp69,
	call	output_is_line_wrapping	#
	testl	%eax, %eax	# D.10563
	je	.L47	#,
	.loc 1 404 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# buffer, tmp70
	movq	%rax, %rdi	# tmp70,
	call	output_space_left	#
	testl	%eax, %eax	# D.10563
	jg	.L47	#,
	.loc 1 405 0 is_stmt 1
	movq	-24(%rbp), %rax	# buffer, tmp71
	movq	%rax, %rdi	# tmp71,
	call	output_add_newline	#
.L47:
.LBB7:
	.loc 1 406 0
	movq	-24(%rbp), %rax	# buffer, tmp75
	addq	$88, %rax	#, tmp74
	movq	%rax, -8(%rbp)	# tmp74, __o
	movq	-8(%rbp), %rax	# __o, tmp76
	movq	24(%rax), %rax	# __o_4->next_free, D.10564
	leaq	1(%rax), %rdx	#, D.10564
	movq	-8(%rbp), %rax	# __o, tmp77
	movq	32(%rax), %rax	# __o_4->chunk_limit, D.10564
	cmpq	%rax, %rdx	# D.10564, D.10564
	jbe	.L48	#,
	.loc 1 406 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# __o, tmp78
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	_obstack_newchunk	#
.L48:
	.loc 1 406 0 discriminator 2
	movq	-8(%rbp), %rax	# __o, tmp79
	movq	24(%rax), %rax	# __o_4->next_free, D.10564
	leaq	1(%rax), %rcx	#, D.10564
	movq	-8(%rbp), %rdx	# __o, tmp80
	movq	%rcx, 24(%rdx)	# D.10564, __o_4->next_free
	movl	-28(%rbp), %edx	# c, tmp81
	movb	%dl, (%rax)	# D.10565, *_9
.LBE7:
	.loc 1 407 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# buffer, tmp82
	movl	176(%rax), %eax	# buffer_1(D)->line_length, D.10563
	leal	1(%rax), %edx	#, D.10563
	movq	-24(%rbp), %rax	# buffer, tmp83
	movl	%edx, 176(%rax)	# D.10563, buffer_1(D)->line_length
	.loc 1 408 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	output_add_character, .-output_add_character
	.globl	output_add_space
	.type	output_add_space, @function
output_add_space:
.LFB24:
	.loc 1 415 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
	.loc 1 416 0
	movq	-24(%rbp), %rax	# buffer, tmp68
	movq	%rax, %rdi	# tmp68,
	call	output_is_line_wrapping	#
	testl	%eax, %eax	# D.10566
	je	.L50	#,
	.loc 1 416 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# buffer, tmp69
	movq	%rax, %rdi	# tmp69,
	call	output_space_left	#
	testl	%eax, %eax	# D.10566
	jg	.L50	#,
	.loc 1 418 0 is_stmt 1
	movq	-24(%rbp), %rax	# buffer, tmp70
	movq	%rax, %rdi	# tmp70,
	call	output_add_newline	#
	.loc 1 419 0
	jmp	.L49	#
.L50:
.LBB8:
	.loc 1 421 0
	movq	-24(%rbp), %rax	# buffer, tmp74
	addq	$88, %rax	#, tmp73
	movq	%rax, -8(%rbp)	# tmp73, __o
	movq	-8(%rbp), %rax	# __o, tmp75
	movq	24(%rax), %rax	# __o_4->next_free, D.10567
	leaq	1(%rax), %rdx	#, D.10567
	movq	-8(%rbp), %rax	# __o, tmp76
	movq	32(%rax), %rax	# __o_4->chunk_limit, D.10567
	cmpq	%rax, %rdx	# D.10567, D.10567
	jbe	.L52	#,
	.loc 1 421 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# __o, tmp77
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	_obstack_newchunk	#
.L52:
	.loc 1 421 0 discriminator 2
	movq	-8(%rbp), %rax	# __o, tmp78
	movq	24(%rax), %rax	# __o_4->next_free, D.10567
	leaq	1(%rax), %rcx	#, D.10567
	movq	-8(%rbp), %rdx	# __o, tmp79
	movq	%rcx, 24(%rdx)	# D.10567, __o_4->next_free
	movb	$32, (%rax)	#, *_9
.LBE8:
	.loc 1 422 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# buffer, tmp80
	movl	176(%rax), %eax	# buffer_1(D)->line_length, D.10566
	leal	1(%rax), %edx	#, D.10566
	movq	-24(%rbp), %rax	# buffer, tmp81
	movl	%edx, 176(%rax)	# D.10566, buffer_1(D)->line_length
.L49:
	.loc 1 423 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	output_add_space, .-output_add_space
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	output_decimal
	.type	output_decimal, @function
output_decimal:
.LFB25:
	.loc 1 432 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movl	%esi, -12(%rbp)	# i, i
	.loc 1 433 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	leaq	180(%rax), %rcx	#, D.10568
	movl	-12(%rbp), %eax	# i, tmp62
	movl	%eax, %edx	# tmp62,
	movl	$.LC0, %esi	#,
	movq	%rcx, %rdi	# D.10568,
	movl	$0, %eax	#,
	call	sprintf	#
	movq	-8(%rbp), %rax	# buffer, tmp63
	leaq	180(%rax), %rdx	#, D.10568
	movq	-8(%rbp), %rax	# buffer, tmp64
	movq	%rdx, %rsi	# D.10568,
	movq	%rax, %rdi	# tmp64,
	call	output_add_string	#
	.loc 1 434 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	output_decimal, .-output_decimal
	.section	.rodata
.LC1:
	.string	"%ld"
	.text
	.type	output_long_decimal, @function
output_long_decimal:
.LFB26:
	.loc 1 440 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# i, i
	.loc 1 441 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	leaq	180(%rax), %rcx	#, D.10570
	movq	-16(%rbp), %rax	# i, tmp62
	movq	%rax, %rdx	# tmp62,
	movl	$.LC1, %esi	#,
	movq	%rcx, %rdi	# D.10570,
	movl	$0, %eax	#,
	call	sprintf	#
	movq	-8(%rbp), %rax	# buffer, tmp63
	leaq	180(%rax), %rdx	#, D.10570
	movq	-8(%rbp), %rax	# buffer, tmp64
	movq	%rdx, %rsi	# D.10570,
	movq	%rax, %rdi	# tmp64,
	call	output_add_string	#
	.loc 1 442 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	output_long_decimal, .-output_long_decimal
	.section	.rodata
.LC2:
	.string	"%u"
	.text
	.type	output_unsigned_decimal, @function
output_unsigned_decimal:
.LFB27:
	.loc 1 448 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movl	%esi, -12(%rbp)	# i, i
	.loc 1 449 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	leaq	180(%rax), %rcx	#, D.10572
	movl	-12(%rbp), %eax	# i, tmp62
	movl	%eax, %edx	# tmp62,
	movl	$.LC2, %esi	#,
	movq	%rcx, %rdi	# D.10572,
	movl	$0, %eax	#,
	call	sprintf	#
	movq	-8(%rbp), %rax	# buffer, tmp63
	leaq	180(%rax), %rdx	#, D.10572
	movq	-8(%rbp), %rax	# buffer, tmp64
	movq	%rdx, %rsi	# D.10572,
	movq	%rax, %rdi	# tmp64,
	call	output_add_string	#
	.loc 1 450 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	output_unsigned_decimal, .-output_unsigned_decimal
	.section	.rodata
.LC3:
	.string	"%lu"
	.text
	.type	output_long_unsigned_decimal, @function
output_long_unsigned_decimal:
.LFB28:
	.loc 1 456 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# i, i
	.loc 1 457 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	leaq	180(%rax), %rcx	#, D.10574
	movq	-16(%rbp), %rax	# i, tmp62
	movq	%rax, %rdx	# tmp62,
	movl	$.LC3, %esi	#,
	movq	%rcx, %rdi	# D.10574,
	movl	$0, %eax	#,
	call	sprintf	#
	movq	-8(%rbp), %rax	# buffer, tmp63
	leaq	180(%rax), %rdx	#, D.10574
	movq	-8(%rbp), %rax	# buffer, tmp64
	movq	%rdx, %rsi	# D.10574,
	movq	%rax, %rdi	# tmp64,
	call	output_add_string	#
	.loc 1 458 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	output_long_unsigned_decimal, .-output_long_unsigned_decimal
	.section	.rodata
.LC4:
	.string	"%o"
	.text
	.type	output_octal, @function
output_octal:
.LFB29:
	.loc 1 464 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movl	%esi, -12(%rbp)	# i, i
	.loc 1 465 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	leaq	180(%rax), %rcx	#, D.10576
	movl	-12(%rbp), %eax	# i, tmp62
	movl	%eax, %edx	# tmp62,
	movl	$.LC4, %esi	#,
	movq	%rcx, %rdi	# D.10576,
	movl	$0, %eax	#,
	call	sprintf	#
	movq	-8(%rbp), %rax	# buffer, tmp63
	leaq	180(%rax), %rdx	#, D.10576
	movq	-8(%rbp), %rax	# buffer, tmp64
	movq	%rdx, %rsi	# D.10576,
	movq	%rax, %rdi	# tmp64,
	call	output_add_string	#
	.loc 1 466 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	output_octal, .-output_octal
	.section	.rodata
.LC5:
	.string	"%lo"
	.text
	.type	output_long_octal, @function
output_long_octal:
.LFB30:
	.loc 1 472 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# i, i
	.loc 1 473 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	leaq	180(%rax), %rcx	#, D.10578
	movq	-16(%rbp), %rax	# i, tmp62
	movq	%rax, %rdx	# tmp62,
	movl	$.LC5, %esi	#,
	movq	%rcx, %rdi	# D.10578,
	movl	$0, %eax	#,
	call	sprintf	#
	movq	-8(%rbp), %rax	# buffer, tmp63
	leaq	180(%rax), %rdx	#, D.10578
	movq	-8(%rbp), %rax	# buffer, tmp64
	movq	%rdx, %rsi	# D.10578,
	movq	%rax, %rdi	# tmp64,
	call	output_add_string	#
	.loc 1 474 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	output_long_octal, .-output_long_octal
	.section	.rodata
.LC6:
	.string	"%x"
	.text
	.type	output_hexadecimal, @function
output_hexadecimal:
.LFB31:
	.loc 1 480 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movl	%esi, -12(%rbp)	# i, i
	.loc 1 481 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	leaq	180(%rax), %rcx	#, D.10580
	movl	-12(%rbp), %eax	# i, tmp62
	movl	%eax, %edx	# tmp62,
	movl	$.LC6, %esi	#,
	movq	%rcx, %rdi	# D.10580,
	movl	$0, %eax	#,
	call	sprintf	#
	movq	-8(%rbp), %rax	# buffer, tmp63
	leaq	180(%rax), %rdx	#, D.10580
	movq	-8(%rbp), %rax	# buffer, tmp64
	movq	%rdx, %rsi	# D.10580,
	movq	%rax, %rdi	# tmp64,
	call	output_add_string	#
	.loc 1 482 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	output_hexadecimal, .-output_hexadecimal
	.section	.rodata
.LC7:
	.string	"%lx"
	.text
	.type	output_long_hexadecimal, @function
output_long_hexadecimal:
.LFB32:
	.loc 1 488 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# i, i
	.loc 1 489 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	leaq	180(%rax), %rcx	#, D.10582
	movq	-16(%rbp), %rax	# i, tmp62
	movq	%rax, %rdx	# tmp62,
	movl	$.LC7, %esi	#,
	movq	%rcx, %rdi	# D.10582,
	movl	$0, %eax	#,
	call	sprintf	#
	movq	-8(%rbp), %rax	# buffer, tmp63
	leaq	180(%rax), %rdx	#, D.10582
	movq	-8(%rbp), %rax	# buffer, tmp64
	movq	%rdx, %rsi	# D.10582,
	movq	%rax, %rdi	# tmp64,
	call	output_add_string	#
	.loc 1 490 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	output_long_hexadecimal, .-output_long_hexadecimal
	.type	output_append_r, @function
output_append_r:
.LFB33:
	.loc 1 500 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
	movq	%rsi, -32(%rbp)	# start, start
	movl	%edx, -36(%rbp)	# length, length
.LBB9:
	.loc 1 501 0
	movq	-24(%rbp), %rax	# buffer, tmp73
	addq	$88, %rax	#, tmp72
	movq	%rax, -8(%rbp)	# tmp72, __o
	movl	-36(%rbp), %eax	# length, tmp74
	movl	%eax, -12(%rbp)	# tmp74, __len
	movq	-8(%rbp), %rax	# __o, tmp75
	movq	24(%rax), %rdx	# __o_2->next_free, D.10584
	movl	-12(%rbp), %eax	# __len, tmp76
	cltq
	addq	%rax, %rdx	# D.10585, D.10584
	movq	-8(%rbp), %rax	# __o, tmp77
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.10584
	cmpq	%rax, %rdx	# D.10584, D.10584
	jbe	.L62	#,
	.loc 1 501 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %edx	# __len, tmp78
	movq	-8(%rbp), %rax	# __o, tmp79
	movl	%edx, %esi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	_obstack_newchunk	#
.L62:
	.loc 1 501 0 discriminator 2
	movl	-12(%rbp), %eax	# __len, tmp80
	movslq	%eax, %rdx	# tmp80, D.10586
	movq	-8(%rbp), %rax	# __o, tmp81
	movq	24(%rax), %rax	# __o_2->next_free, D.10584
	movq	-32(%rbp), %rcx	# start, tmp82
	movq	%rcx, %rsi	# tmp82,
	movq	%rax, %rdi	# D.10584,
	call	memcpy	#
	movq	-8(%rbp), %rax	# __o, tmp83
	movq	24(%rax), %rdx	# __o_2->next_free, D.10584
	movl	-12(%rbp), %eax	# __len, tmp84
	cltq
	addq	%rax, %rdx	# D.10585, D.10584
	movq	-8(%rbp), %rax	# __o, tmp85
	movq	%rdx, 24(%rax)	# D.10584, __o_2->next_free
.LBE9:
	.loc 1 502 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# buffer, tmp86
	movl	176(%rax), %edx	# buffer_1(D)->line_length, D.10587
	movl	-36(%rbp), %eax	# length, tmp87
	addl	%eax, %edx	# tmp87, D.10587
	movq	-24(%rbp), %rax	# buffer, tmp88
	movl	%edx, 176(%rax)	# D.10587, buffer_1(D)->line_length
	.loc 1 503 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	output_append_r, .-output_append_r
	.globl	output_append
	.type	output_append, @function
output_append:
.LFB34:
	.loc 1 515 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# start, start
	movq	%rdx, -24(%rbp)	# end, end
	.loc 1 517 0
	movq	-8(%rbp), %rax	# buffer, tmp66
	movl	176(%rax), %eax	# buffer_3(D)->line_length, D.10588
	testl	%eax, %eax	# D.10588
	jne	.L64	#,
	.loc 1 519 0
	movq	-8(%rbp), %rax	# buffer, tmp67
	movq	%rax, %rdi	# tmp67,
	call	output_emit_prefix	#
	.loc 1 520 0
	movq	-8(%rbp), %rax	# buffer, tmp68
	movq	%rax, %rdi	# tmp68,
	call	output_is_line_wrapping	#
	testl	%eax, %eax	# D.10588
	je	.L64	#,
	.loc 1 521 0
	jmp	.L65	#
.L66:
	.loc 1 522 0
	addq	$1, -16(%rbp)	#, start
.L65:
	.loc 1 521 0 discriminator 1
	movq	-16(%rbp), %rax	# start, tmp69
	cmpq	-24(%rbp), %rax	# end, tmp69
	je	.L64	#,
	.loc 1 521 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# start, tmp70
	movzbl	(%rax), %eax	# *start_1, D.10589
	cmpb	$32, %al	#, D.10589
	je	.L66	#,
.L64:
	.loc 1 524 0 is_stmt 1
	movq	-24(%rbp), %rdx	# end, end.12
	movq	-16(%rbp), %rax	# start, start.13
	subq	%rax, %rdx	# start.13, D.10590
	movq	%rdx, %rax	# D.10590, D.10590
	movl	%eax, %edx	# D.10590, D.10588
	movq	-16(%rbp), %rcx	# start, tmp71
	movq	-8(%rbp), %rax	# buffer, tmp72
	movq	%rcx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	output_append_r	#
	.loc 1 525 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	output_append, .-output_append
	.type	output_indent, @function
output_indent:
.LFB35:
	.loc 1 530 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
	.loc 1 531 0
	movq	-24(%rbp), %rax	# buffer, tmp59
	movl	16(%rax), %eax	# buffer_2(D)->state.indent_skip, tmp60
	movl	%eax, -4(%rbp)	# tmp60, n
	.loc 1 534 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L68	#
.L69:
	.loc 1 535 0 discriminator 2
	movq	-24(%rbp), %rax	# buffer, tmp61
	movl	$32, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	output_add_character	#
	.loc 1 534 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L68:
	.loc 1 534 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp62
	cmpl	-4(%rbp), %eax	# n, tmp62
	jl	.L69	#,
	.loc 1 536 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	output_indent, .-output_indent
	.type	wrap_text, @function
wrap_text:
.LFB36:
	.loc 1 545 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# buffer, buffer
	movq	%rsi, -48(%rbp)	# start, start
	movq	%rdx, -56(%rbp)	# end, end
	.loc 1 546 0
	movq	-40(%rbp), %rax	# buffer, tmp68
	movq	%rax, %rdi	# tmp68,
	call	output_is_line_wrapping	#
	movl	%eax, -28(%rbp)	# tmp69, is_wrapping
	.loc 1 548 0
	jmp	.L71	#
.L77:
.LBB10:
	.loc 1 552 0
	movq	-48(%rbp), %rax	# start, tmp70
	movq	%rax, -24(%rbp)	# tmp70, p
	.loc 1 553 0
	jmp	.L72	#
.L74:
	.loc 1 554 0
	addq	$1, -24(%rbp)	#, p
.L72:
	.loc 1 553 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp71
	cmpq	-56(%rbp), %rax	# end, tmp71
	je	.L73	#,
	.loc 1 553 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# p, tmp72
	movzbl	(%rax), %eax	# *p_3, D.10591
	cmpb	$32, %al	#, D.10591
	je	.L73	#,
	.loc 1 553 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp73
	movzbl	(%rax), %eax	# *p_3, D.10591
	cmpb	$10, %al	#, D.10591
	jne	.L74	#,
.L73:
	.loc 1 555 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, is_wrapping
	je	.L75	#,
	.loc 1 555 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rdx	# p, p.14
	movq	-48(%rbp), %rax	# start, start.15
	movq	%rdx, %rbx	# p.14, D.10592
	subq	%rax, %rbx	# start.15, D.10592
	movq	-40(%rbp), %rax	# buffer, tmp74
	movq	%rax, %rdi	# tmp74,
	call	output_space_left	#
	cltq
	cmpq	%rax, %rbx	# D.10592, D.10592
	jl	.L75	#,
	.loc 1 556 0 is_stmt 1
	movq	-40(%rbp), %rax	# buffer, tmp75
	movq	%rax, %rdi	# tmp75,
	call	output_add_newline	#
.L75:
	.loc 1 557 0
	movq	-24(%rbp), %rdx	# p, tmp76
	movq	-48(%rbp), %rcx	# start, tmp77
	movq	-40(%rbp), %rax	# buffer, tmp78
	movq	%rcx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	output_append	#
	.loc 1 558 0
	movq	-24(%rbp), %rax	# p, tmp79
	movq	%rax, -48(%rbp)	# tmp79, start
.LBE10:
	.loc 1 561 0
	movq	-48(%rbp), %rax	# start, tmp80
	cmpq	-56(%rbp), %rax	# end, tmp80
	je	.L76	#,
	.loc 1 561 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# start, tmp81
	movzbl	(%rax), %eax	# *start_17, D.10591
	cmpb	$32, %al	#, D.10591
	jne	.L76	#,
	.loc 1 563 0 is_stmt 1
	movq	-40(%rbp), %rax	# buffer, tmp82
	movq	%rax, %rdi	# tmp82,
	call	output_add_space	#
	.loc 1 564 0
	addq	$1, -48(%rbp)	#, start
.L76:
	.loc 1 566 0
	movq	-48(%rbp), %rax	# start, tmp83
	cmpq	-56(%rbp), %rax	# end, tmp83
	je	.L71	#,
	.loc 1 566 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# start, tmp84
	movzbl	(%rax), %eax	# *start_1, D.10591
	cmpb	$10, %al	#, D.10591
	jne	.L71	#,
	.loc 1 568 0 is_stmt 1
	movq	-40(%rbp), %rax	# buffer, tmp85
	movq	%rax, %rdi	# tmp85,
	call	output_add_newline	#
	.loc 1 569 0
	addq	$1, -48(%rbp)	#, start
.L71:
	.loc 1 548 0 discriminator 1
	movq	-48(%rbp), %rax	# start, tmp86
	cmpq	-56(%rbp), %rax	# end, tmp86
	jne	.L77	#,
	.loc 1 572 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	wrap_text, .-wrap_text
	.type	maybe_wrap_text, @function
maybe_wrap_text:
.LFB37:
	.loc 1 581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# start, start
	movq	%rdx, -24(%rbp)	# end, end
	.loc 1 582 0
	movq	-8(%rbp), %rax	# buffer, tmp60
	movq	%rax, %rdi	# tmp60,
	call	output_is_line_wrapping	#
	testl	%eax, %eax	# D.10594
	je	.L79	#,
	.loc 1 583 0
	movq	-24(%rbp), %rdx	# end, tmp61
	movq	-16(%rbp), %rcx	# start, tmp62
	movq	-8(%rbp), %rax	# buffer, tmp63
	movq	%rcx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	wrap_text	#
	jmp	.L78	#
.L79:
	.loc 1 585 0
	movq	-24(%rbp), %rdx	# end, tmp64
	movq	-16(%rbp), %rcx	# start, tmp65
	movq	-8(%rbp), %rax	# buffer, tmp66
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	output_append	#
.L78:
	.loc 1 586 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	maybe_wrap_text, .-maybe_wrap_text
	.globl	output_add_string
	.type	output_add_string, @function
output_add_string:
.LFB38:
	.loc 1 596 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# str, str
	.loc 1 597 0
	cmpq	$0, -16(%rbp)	#, str
	je	.L82	#,
	.loc 1 597 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# str, tmp61
	movq	%rax, %rdi	# tmp61,
	call	strlen	#
	jmp	.L83	#
.L82:
	.loc 1 597 0 discriminator 2
	movl	$0, %eax	#, iftmp.16
.L83:
	.loc 1 597 0 discriminator 3
	movq	-16(%rbp), %rdx	# str, tmp62
	addq	%rax, %rdx	# iftmp.16, D.10595
	movq	-16(%rbp), %rcx	# str, tmp63
	movq	-8(%rbp), %rax	# buffer, tmp64
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	maybe_wrap_text	#
	.loc 1 598 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	output_add_string, .-output_add_string
	.type	output_buffer_to_stream, @function
output_buffer_to_stream:
.LFB39:
	.loc 1 606 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
	.loc 1 607 0
	movq	-24(%rbp), %rax	# buffer, tmp60
	movq	%rax, %rdi	# tmp60,
	call	output_finalize_message	#
	movq	%rax, -8(%rbp)	# tmp61, text
	.loc 1 608 0
	movq	-24(%rbp), %rax	# buffer, tmp62
	movq	80(%rax), %rdx	# buffer_1(D)->stream, D.10596
	movq	-8(%rbp), %rax	# text, tmp63
	movq	%rdx, %rsi	# D.10596,
	movq	%rax, %rdi	# tmp63,
	call	fputs	#
	.loc 1 609 0
	movq	-24(%rbp), %rax	# buffer, tmp64
	movq	%rax, %rdi	# tmp64,
	call	output_clear_message_text	#
	.loc 1 610 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	output_buffer_to_stream, .-output_buffer_to_stream
	.section	.rodata
.LC8:
	.string	"diagnostic.c"
	.text
	.type	output_format, @function
output_format:
.LFB40:
	.loc 1 628 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# buffer, buffer
	.loc 1 629 0
	jmp	.L86	#
.L139:
.LBB11:
	.loc 1 632 0
	movl	$0, -24(%rbp)	#, long_integer
.LBB12:
	.loc 1 636 0
	movq	-40(%rbp), %rax	# buffer, tmp220
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, tmp221
	movq	%rax, -16(%rbp)	# tmp221, p
	.loc 1 637 0
	jmp	.L87	#
.L89:
	.loc 1 638 0
	addq	$1, -16(%rbp)	#, p
.L87:
	.loc 1 637 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp222
	movzbl	(%rax), %eax	# *p_2, D.10598
	testb	%al, %al	# D.10598
	je	.L88	#,
	.loc 1 637 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# p, tmp223
	movzbl	(%rax), %eax	# *p_2, D.10598
	cmpb	$37, %al	#, D.10598
	jne	.L89	#,
.L88:
	.loc 1 639 0 is_stmt 1
	movq	-40(%rbp), %rax	# buffer, tmp224
	movq	32(%rax), %rcx	# buffer_15(D)->state.cursor, D.10597
	movq	-16(%rbp), %rdx	# p, tmp225
	movq	-40(%rbp), %rax	# buffer, tmp226
	movq	%rcx, %rsi	# D.10597,
	movq	%rax, %rdi	# tmp226,
	call	wrap_text	#
	.loc 1 640 0
	movq	-40(%rbp), %rax	# buffer, tmp227
	movq	-16(%rbp), %rdx	# p, tmp228
	movq	%rdx, 32(%rax)	# tmp228, buffer_15(D)->state.cursor
.LBE12:
	.loc 1 643 0
	movq	-40(%rbp), %rax	# buffer, tmp229
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	movzbl	(%rax), %eax	# *_24, D.10598
	testb	%al, %al	# D.10598
	jne	.L90	#,
	.loc 1 644 0
	jmp	.L85	#
.L90:
	.loc 1 648 0
	movq	-40(%rbp), %rax	# buffer, tmp230
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	leaq	1(%rax), %rdx	#, D.10597
	movq	-40(%rbp), %rax	# buffer, tmp231
	movq	%rdx, 32(%rax)	# D.10597, buffer_15(D)->state.cursor
	movq	-40(%rbp), %rax	# buffer, tmp232
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	movzbl	(%rax), %eax	# *_28, D.10598
	cmpb	$108, %al	#, D.10598
	jne	.L92	#,
	.loc 1 650 0
	movl	$1, -24(%rbp)	#, long_integer
	.loc 1 651 0
	movq	-40(%rbp), %rax	# buffer, tmp233
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	leaq	1(%rax), %rdx	#, D.10597
	movq	-40(%rbp), %rax	# buffer, tmp234
	movq	%rdx, 32(%rax)	# D.10597, buffer_15(D)->state.cursor
.L92:
	.loc 1 657 0
	movq	-40(%rbp), %rax	# buffer, tmp235
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	movzbl	(%rax), %eax	# *_33, D.10598
	movsbl	%al, %eax	# D.10598, D.10599
	subl	$37, %eax	#, tmp236
	cmpl	$83, %eax	#, tmp236
	ja	.L93	#,
	movl	%eax, %eax	# tmp236, tmp237
	movq	.L95(,%rax,8), %rax	#, tmp238
	jmp	*%rax	# tmp238
	.section	.rodata
	.align 8
	.align 4
.L95:
	.quad	.L94
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L96
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L97
	.quad	.L98
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L98
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L99
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L100
	.quad	.L93
	.quad	.L101
	.quad	.L93
	.quad	.L93
	.quad	.L102
	.text
.L97:
	.loc 1 661 0
	movq	-40(%rbp), %rax	# buffer, tmp239
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	movl	(%rax), %edx	# _36->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L103	#,
	.loc 1 661 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _36->reg_save_area, D.10602
	movl	(%rax), %edx	# _36->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.17
	movl	(%rax), %ecx	# _36->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _36->gp_offset
	jmp	.L104	#
.L103:
	.loc 1 661 0 discriminator 1
	movq	8(%rax), %rcx	# _36->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.17
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _36->overflow_arg_area
.L104:
	.loc 1 661 0 discriminator 3
	movl	(%rdx), %edx	# MEM[(int * {ref-all})addr.17_3], D.10599
	movq	-40(%rbp), %rax	# buffer, tmp240
	movl	%edx, %esi	# D.10599,
	movq	%rax, %rdi	# tmp240,
	call	output_add_character	#
	.loc 1 662 0 is_stmt 1 discriminator 3
	jmp	.L105	#
.L98:
	.loc 1 666 0
	cmpl	$0, -24(%rbp)	#, long_integer
	je	.L106	#,
	.loc 1 668 0
	movq	-40(%rbp), %rax	# buffer, tmp241
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	movl	(%rax), %edx	# _48->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L107	#,
	.loc 1 668 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _48->reg_save_area, D.10602
	movl	(%rax), %edx	# _48->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.18
	movl	(%rax), %ecx	# _48->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _48->gp_offset
	jmp	.L108	#
.L107:
	.loc 1 668 0 discriminator 1
	movq	8(%rax), %rcx	# _48->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.18
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _48->overflow_arg_area
.L108:
	.loc 1 668 0 discriminator 3
	movq	(%rdx), %rdx	# MEM[(long int * {ref-all})addr.18_4], D.10604
	movq	-40(%rbp), %rax	# buffer, tmp242
	movq	%rdx, %rsi	# D.10604,
	movq	%rax, %rdi	# tmp242,
	call	output_long_decimal	#
	.loc 1 672 0 is_stmt 1 discriminator 3
	jmp	.L105	#
.L106:
	.loc 1 671 0
	movq	-40(%rbp), %rax	# buffer, tmp243
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	movl	(%rax), %edx	# _60->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L110	#,
	.loc 1 671 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _60->reg_save_area, D.10602
	movl	(%rax), %edx	# _60->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.19
	movl	(%rax), %ecx	# _60->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _60->gp_offset
	jmp	.L111	#
.L110:
	.loc 1 671 0 discriminator 1
	movq	8(%rax), %rcx	# _60->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.19
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _60->overflow_arg_area
.L111:
	.loc 1 671 0 discriminator 3
	movl	(%rdx), %edx	# MEM[(int * {ref-all})addr.19_5], D.10599
	movq	-40(%rbp), %rax	# buffer, tmp244
	movl	%edx, %esi	# D.10599,
	movq	%rax, %rdi	# tmp244,
	call	output_decimal	#
	.loc 1 672 0 is_stmt 1 discriminator 3
	jmp	.L105	#
.L99:
	.loc 1 675 0
	cmpl	$0, -24(%rbp)	#, long_integer
	je	.L112	#,
	.loc 1 677 0
	movq	-40(%rbp), %rax	# buffer, tmp245
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	.loc 1 676 0
	movl	(%rax), %edx	# _72->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L113	#,
	.loc 1 676 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _72->reg_save_area, D.10602
	movl	(%rax), %edx	# _72->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.20
	movl	(%rax), %ecx	# _72->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _72->gp_offset
	jmp	.L114	#
.L113:
	.loc 1 676 0 discriminator 1
	movq	8(%rax), %rcx	# _72->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.20
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _72->overflow_arg_area
.L114:
	.loc 1 676 0 discriminator 3
	movq	(%rdx), %rdx	# MEM[(long unsigned int * {ref-all})addr.20_6], D.10605
	movq	-40(%rbp), %rax	# buffer, tmp246
	movq	%rdx, %rsi	# D.10605,
	movq	%rax, %rdi	# tmp246,
	call	output_long_octal	#
	.loc 1 683 0 is_stmt 1 discriminator 3
	jmp	.L105	#
.L112:
	.loc 1 681 0
	movq	-40(%rbp), %rax	# buffer, tmp247
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	.loc 1 680 0
	movl	(%rax), %edx	# _84->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L116	#,
	.loc 1 680 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _84->reg_save_area, D.10602
	movl	(%rax), %edx	# _84->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.21
	movl	(%rax), %ecx	# _84->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _84->gp_offset
	jmp	.L117	#
.L116:
	.loc 1 680 0 discriminator 1
	movq	8(%rax), %rcx	# _84->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.21
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _84->overflow_arg_area
.L117:
	.loc 1 680 0 discriminator 3
	movl	(%rdx), %edx	# MEM[(unsigned int * {ref-all})addr.21_7], D.10601
	movq	-40(%rbp), %rax	# buffer, tmp248
	movl	%edx, %esi	# D.10601,
	movq	%rax, %rdi	# tmp248,
	call	output_octal	#
	.loc 1 683 0 is_stmt 1 discriminator 3
	jmp	.L105	#
.L100:
	.loc 1 687 0
	movq	-40(%rbp), %rax	# buffer, tmp249
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	.loc 1 686 0
	movl	(%rax), %edx	# _96->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L118	#,
	.loc 1 686 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _96->reg_save_area, D.10602
	movl	(%rax), %edx	# _96->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.22
	movl	(%rax), %ecx	# _96->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _96->gp_offset
	jmp	.L119	#
.L118:
	.loc 1 686 0 discriminator 1
	movq	8(%rax), %rcx	# _96->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.22
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _96->overflow_arg_area
.L119:
	.loc 1 686 0 discriminator 3
	movq	(%rdx), %rdx	# MEM[(const char * * {ref-all})addr.22_8], D.10597
	movq	-40(%rbp), %rax	# buffer, tmp250
	movq	%rdx, %rsi	# D.10597,
	movq	%rax, %rdi	# tmp250,
	call	output_add_string	#
	.loc 1 689 0 is_stmt 1 discriminator 3
	jmp	.L105	#
.L101:
	.loc 1 692 0
	cmpl	$0, -24(%rbp)	#, long_integer
	je	.L120	#,
	.loc 1 694 0
	movq	-40(%rbp), %rax	# buffer, tmp251
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	movl	(%rax), %edx	# _108->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L121	#,
	.loc 1 694 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _108->reg_save_area, D.10602
	movl	(%rax), %edx	# _108->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.23
	movl	(%rax), %ecx	# _108->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _108->gp_offset
	jmp	.L122	#
.L121:
	.loc 1 694 0 discriminator 1
	movq	8(%rax), %rcx	# _108->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.23
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _108->overflow_arg_area
.L122:
	.loc 1 694 0 discriminator 3
	movq	(%rdx), %rdx	# MEM[(long unsigned int * {ref-all})addr.23_9], D.10605
	movq	-40(%rbp), %rax	# buffer, tmp252
	movq	%rdx, %rsi	# D.10605,
	movq	%rax, %rdi	# tmp252,
	call	output_long_unsigned_decimal	#
	.loc 1 700 0 is_stmt 1 discriminator 3
	jmp	.L105	#
.L120:
	.loc 1 698 0
	movq	-40(%rbp), %rax	# buffer, tmp253
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	movl	(%rax), %edx	# _120->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L124	#,
	.loc 1 698 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _120->reg_save_area, D.10602
	movl	(%rax), %edx	# _120->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.24
	movl	(%rax), %ecx	# _120->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _120->gp_offset
	jmp	.L125	#
.L124:
	.loc 1 698 0 discriminator 1
	movq	8(%rax), %rcx	# _120->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.24
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _120->overflow_arg_area
.L125:
	.loc 1 698 0 discriminator 3
	movl	(%rdx), %edx	# MEM[(unsigned int * {ref-all})addr.24_10], D.10601
	movq	-40(%rbp), %rax	# buffer, tmp254
	movl	%edx, %esi	# D.10601,
	movq	%rax, %rdi	# tmp254,
	call	output_unsigned_decimal	#
	.loc 1 700 0 is_stmt 1 discriminator 3
	jmp	.L105	#
.L102:
	.loc 1 703 0
	cmpl	$0, -24(%rbp)	#, long_integer
	je	.L126	#,
	.loc 1 705 0
	movq	-40(%rbp), %rax	# buffer, tmp255
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	movl	(%rax), %edx	# _132->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L127	#,
	.loc 1 705 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _132->reg_save_area, D.10602
	movl	(%rax), %edx	# _132->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.25
	movl	(%rax), %ecx	# _132->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _132->gp_offset
	jmp	.L128	#
.L127:
	.loc 1 705 0 discriminator 1
	movq	8(%rax), %rcx	# _132->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.25
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _132->overflow_arg_area
.L128:
	.loc 1 705 0 discriminator 3
	movq	(%rdx), %rdx	# MEM[(long unsigned int * {ref-all})addr.25_11], D.10605
	movq	-40(%rbp), %rax	# buffer, tmp256
	movq	%rdx, %rsi	# D.10605,
	movq	%rax, %rdi	# tmp256,
	call	output_long_hexadecimal	#
	.loc 1 711 0 is_stmt 1 discriminator 3
	jmp	.L105	#
.L126:
	.loc 1 709 0
	movq	-40(%rbp), %rax	# buffer, tmp257
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	movl	(%rax), %edx	# _144->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L130	#,
	.loc 1 709 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _144->reg_save_area, D.10602
	movl	(%rax), %edx	# _144->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.26
	movl	(%rax), %ecx	# _144->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _144->gp_offset
	jmp	.L131	#
.L130:
	.loc 1 709 0 discriminator 1
	movq	8(%rax), %rcx	# _144->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.26
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _144->overflow_arg_area
.L131:
	.loc 1 709 0 discriminator 3
	movl	(%rdx), %edx	# MEM[(unsigned int * {ref-all})addr.26_12], D.10601
	movq	-40(%rbp), %rax	# buffer, tmp258
	movl	%edx, %esi	# D.10601,
	movq	%rax, %rdi	# tmp258,
	call	output_hexadecimal	#
	.loc 1 711 0 is_stmt 1 discriminator 3
	jmp	.L105	#
.L94:
	.loc 1 714 0
	movq	-40(%rbp), %rax	# buffer, tmp259
	movl	$37, %esi	#,
	movq	%rax, %rdi	# tmp259,
	call	output_add_character	#
	.loc 1 715 0
	jmp	.L105	#
.L96:
.LBB13:
	.loc 1 722 0
	movq	-40(%rbp), %rax	# buffer, tmp260
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	leaq	1(%rax), %rdx	#, D.10597
	movq	-40(%rbp), %rax	# buffer, tmp261
	movq	%rdx, 32(%rax)	# D.10597, buffer_15(D)->state.cursor
	movq	-40(%rbp), %rax	# buffer, tmp262
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	movzbl	(%rax), %eax	# *_158, D.10598
	cmpb	$42, %al	#, D.10598
	je	.L132	#,
	.loc 1 723 0
	movl	$__FUNCTION__.9431, %edx	#,
	movl	$723, %esi	#,
	movl	$.LC8, %edi	#,
	call	fancy_abort	#
.L132:
	.loc 1 724 0
	movq	-40(%rbp), %rax	# buffer, tmp263
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	leaq	1(%rax), %rdx	#, D.10597
	movq	-40(%rbp), %rax	# buffer, tmp264
	movq	%rdx, 32(%rax)	# D.10597, buffer_15(D)->state.cursor
	movq	-40(%rbp), %rax	# buffer, tmp265
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	movzbl	(%rax), %eax	# *_162, D.10598
	cmpb	$115, %al	#, D.10598
	je	.L133	#,
	.loc 1 725 0
	movl	$__FUNCTION__.9431, %edx	#,
	movl	$725, %esi	#,
	movl	$.LC8, %edi	#,
	call	fancy_abort	#
.L133:
	.loc 1 726 0
	movq	-40(%rbp), %rax	# buffer, tmp266
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	movl	(%rax), %edx	# _164->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L134	#,
	.loc 1 726 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _164->reg_save_area, D.10602
	movl	(%rax), %edx	# _164->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.27
	movl	(%rax), %ecx	# _164->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _164->gp_offset
	jmp	.L135	#
.L134:
	.loc 1 726 0 discriminator 1
	movq	8(%rax), %rcx	# _164->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.27
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _164->overflow_arg_area
.L135:
	movl	(%rdx), %eax	# MEM[(int * {ref-all})addr.27_13], tmp267
	movl	%eax, -20(%rbp)	# tmp267, n
	.loc 1 727 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rax	# buffer, tmp268
	movq	40(%rax), %rax	# MEM[(struct output_state *)buffer_15(D)].format_args, D.10600
	movl	(%rax), %edx	# _176->gp_offset, D.10601
	cmpl	$48, %edx	#, D.10601
	jae	.L136	#,
	.loc 1 727 0 is_stmt 0 discriminator 2
	movq	16(%rax), %rcx	# _176->reg_save_area, D.10602
	movl	(%rax), %edx	# _176->gp_offset, D.10601
	movl	%edx, %edx	# D.10601, D.10603
	addq	%rcx, %rdx	# D.10602, addr.28
	movl	(%rax), %ecx	# _176->gp_offset, D.10601
	addl	$8, %ecx	#, D.10601
	movl	%ecx, (%rax)	# D.10601, _176->gp_offset
	jmp	.L137	#
.L136:
	.loc 1 727 0 discriminator 1
	movq	8(%rax), %rcx	# _176->overflow_arg_area, D.10602
	movq	%rcx, %rdx	# D.10602, addr.28
	addq	$8, %rcx	#, D.10602
	movq	%rcx, 8(%rax)	# D.10602, _176->overflow_arg_area
.L137:
	movq	(%rdx), %rax	# MEM[(const char * * {ref-all})addr.28_14], tmp269
	movq	%rax, -8(%rbp)	# tmp269, s
	.loc 1 728 0 is_stmt 1 discriminator 1
	movl	-20(%rbp), %eax	# n, tmp270
	movslq	%eax, %rdx	# tmp270, D.10603
	movq	-8(%rbp), %rax	# s, tmp271
	addq	%rax, %rdx	# tmp271, D.10597
	movq	-8(%rbp), %rcx	# s, tmp272
	movq	-40(%rbp), %rax	# buffer, tmp273
	movq	%rcx, %rsi	# tmp272,
	movq	%rax, %rdi	# tmp273,
	call	output_append	#
.LBE13:
	.loc 1 730 0 discriminator 1
	jmp	.L105	#
.L93:
	.loc 1 733 0
	movq	-40(%rbp), %rax	# buffer, tmp274
	movq	312(%rax), %rax	# buffer_15(D)->format_decoder, D.10606
	testq	%rax, %rax	# D.10606
	je	.L138	#,
	.loc 1 733 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# buffer, tmp275
	movq	312(%rax), %rax	# buffer_15(D)->format_decoder, D.10606
	movq	-40(%rbp), %rdx	# buffer, tmp276
	movq	%rdx, %rdi	# tmp276,
	call	*%rax	# D.10606
	testl	%eax, %eax	# D.10599
	jne	.L105	#,
.L138:
	.loc 1 737 0 is_stmt 1
	movl	$__FUNCTION__.9431, %edx	#,
	movl	$737, %esi	#,
	movl	$.LC8, %edi	#,
	call	fancy_abort	#
.L105:
.LBE11:
	.loc 1 630 0
	movq	-40(%rbp), %rax	# buffer, tmp277
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	leaq	1(%rax), %rdx	#, D.10597
	movq	-40(%rbp), %rax	# buffer, tmp278
	movq	%rdx, 32(%rax)	# D.10597, buffer_15(D)->state.cursor
.L86:
	.loc 1 629 0 discriminator 1
	movq	-40(%rbp), %rax	# buffer, tmp279
	movq	32(%rax), %rax	# buffer_15(D)->state.cursor, D.10597
	movzbl	(%rax), %eax	# *_16, D.10598
	testb	%al, %al	# D.10598
	jne	.L139	#,
.L85:
	.loc 1 741 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	output_format, .-output_format
	.type	vbuild_message_string, @function
vbuild_message_string:
.LFB41:
	.loc 1 747 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msg, msg
	movq	%rsi, -32(%rbp)	# ap, ap
	.loc 1 750 0
	movq	-32(%rbp), %rdx	# ap, tmp61
	movq	-24(%rbp), %rcx	# msg, tmp62
	leaq	-8(%rbp), %rax	#, tmp63
	movq	%rcx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	vasprintf	#
	.loc 1 751 0
	movq	-8(%rbp), %rax	# str, D.10608
	.loc 1 752 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	vbuild_message_string, .-vbuild_message_string
	.type	build_message_string, @function
build_message_string:
.LFB42:
	.loc 1 759 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L143	#,
	.loc 1 759 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L143:
	movq	%rdi, -216(%rbp)	# msg, msg
.LBB14:
	.loc 1 762 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp66
	movq	%rax, -192(%rbp)	# tmp66, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, MEM[(struct [1] *)&ap].reg_save_area
.LBB15:
	.loc 1 765 0
	leaq	-200(%rbp), %rdx	#, tmp62
	movq	-216(%rbp), %rax	# msg, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	vbuild_message_string	#
	movq	%rax, -208(%rbp)	# tmp64, str
.LBE15:
.LBE14:
	.loc 1 769 0
	movq	-208(%rbp), %rax	# str, D.10609
	.loc 1 770 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	build_message_string, .-build_message_string
	.section	.rodata
.LC9:
	.string	"%s:%d: warning: "
.LC10:
	.string	"%s:%d: "
.LC11:
	.string	"%s: warning: "
.LC12:
	.string	"%s: "
	.text
	.globl	context_as_prefix
	.type	context_as_prefix, @function
context_as_prefix:
.LFB43:
	.loc 1 780 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# file, file
	movl	%esi, -12(%rbp)	# line, line
	movl	%edx, -16(%rbp)	# warn, warn
	.loc 1 781 0
	cmpq	$0, -8(%rbp)	#, file
	je	.L146	#,
	.loc 1 783 0
	cmpl	$0, -16(%rbp)	#, warn
	je	.L147	#,
	.loc 1 784 0
	movl	-12(%rbp), %edx	# line, tmp63
	movq	-8(%rbp), %rax	# file, tmp64
	movq	%rax, %rsi	# tmp64,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	build_message_string	#
	jmp	.L148	#
.L147:
	.loc 1 786 0
	movl	-12(%rbp), %edx	# line, tmp65
	movq	-8(%rbp), %rax	# file, tmp66
	movq	%rax, %rsi	# tmp66,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	build_message_string	#
	jmp	.L148	#
.L146:
	.loc 1 790 0
	cmpl	$0, -16(%rbp)	#, warn
	je	.L149	#,
	.loc 1 791 0
	movq	progname(%rip), %rax	# progname, progname.29
	movq	%rax, %rsi	# progname.29,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	build_message_string	#
	jmp	.L148	#
.L149:
	.loc 1 793 0
	movq	progname(%rip), %rax	# progname, progname.30
	movq	%rax, %rsi	# progname.30,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	build_message_string	#
.L148:
	.loc 1 795 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	context_as_prefix, .-context_as_prefix
	.globl	file_name_as_prefix
	.type	file_name_as_prefix, @function
file_name_as_prefix:
.LFB44:
	.loc 1 802 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 803 0
	movq	-8(%rbp), %rax	# f, tmp61
	movq	%rax, %rsi	# tmp61,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	build_message_string	#
	.loc 1 804 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	file_name_as_prefix, .-file_name_as_prefix
	.type	output_do_printf, @function
output_do_printf:
.LFB45:
	.loc 1 812 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
	movq	%rsi, -32(%rbp)	# msg, msg
	.loc 1 814 0
	movq	-24(%rbp), %rax	# buffer, tmp62
	movq	40(%rax), %rdx	# MEM[(struct output_state *)buffer_1(D)].format_args, D.10618
	.loc 1 813 0
	movq	-32(%rbp), %rax	# msg, tmp63
	movq	%rdx, %rsi	# D.10618,
	movq	%rax, %rdi	# tmp63,
	call	vbuild_message_string	#
	movq	%rax, -8(%rbp)	# tmp64, message
	.loc 1 816 0
	movq	-8(%rbp), %rax	# message, tmp65
	movq	%rax, %rdi	# tmp65,
	call	strlen	#
	movq	-8(%rbp), %rdx	# message, tmp66
	addq	%rax, %rdx	# D.10619, D.10620
	movq	-8(%rbp), %rcx	# message, tmp67
	movq	-24(%rbp), %rax	# buffer, tmp68
	movq	%rcx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	wrap_text	#
	.loc 1 817 0
	movq	-8(%rbp), %rax	# message, tmp69
	movq	%rax, %rdi	# tmp69,
	call	free	#
	.loc 1 818 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	output_do_printf, .-output_do_printf
	.globl	output_printf
	.type	output_printf, @function
output_printf:
.LFB46:
	.loc 1 825 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# buffer, buffer
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L154	#,
	.loc 1 825 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L154:
	movq	%rsi, -224(%rbp)	# msgid, msgid
.LBB16:
	.loc 1 828 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp68
	movq	%rax, -192(%rbp)	# tmp68, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp69
	movq	%rax, -184(%rbp)	# tmp69, MEM[(struct [1] *)&ap].reg_save_area
.LBB17:
	.loc 1 832 0
	movq	-216(%rbp), %rax	# buffer, tmp60
	movq	40(%rax), %rax	# buffer_1(D)->state.format_args, tmp61
	movq	%rax, -208(%rbp)	# tmp61, old_args
	.loc 1 833 0
	movq	-216(%rbp), %rax	# buffer, tmp62
	leaq	-200(%rbp), %rdx	#, tmp63
	movq	%rdx, 40(%rax)	# tmp63, buffer_1(D)->state.format_args
	.loc 1 834 0
	movq	-224(%rbp), %rdx	# msgid, tmp64
	movq	-216(%rbp), %rax	# buffer, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	output_do_printf	#
	.loc 1 835 0
	movq	-216(%rbp), %rax	# buffer, tmp66
	movq	-208(%rbp), %rdx	# old_args, tmp67
	movq	%rdx, 40(%rax)	# tmp67, buffer_1(D)->state.format_args
.LBE17:
.LBE16:
	.loc 1 837 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	output_printf, .-output_printf
	.section	.rodata
.LC13:
	.string	"((anonymous))"
	.text
	.type	format_with_decl, @function
format_with_decl:
.LFB47:
	.loc 1 845 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buffer, buffer
	movq	%rsi, -32(%rbp)	# decl, decl
	.loc 1 851 0
	movq	-24(%rbp), %rax	# buffer, tmp79
	movq	32(%rax), %rax	# buffer_6(D)->state.cursor, tmp80
	movq	%rax, -16(%rbp)	# tmp80, p
	jmp	.L156	#
.L161:
	.loc 1 853 0
	movq	-16(%rbp), %rax	# p, tmp81
	movzbl	(%rax), %eax	# *p_2, D.10623
	cmpb	$37, %al	#, D.10623
	jne	.L157	#,
	.loc 1 855 0
	movq	-16(%rbp), %rax	# p, tmp82
	addq	$1, %rax	#, D.10624
	movzbl	(%rax), %eax	# *_10, D.10623
	cmpb	$37, %al	#, D.10623
	jne	.L158	#,
	.loc 1 856 0
	addq	$1, -16(%rbp)	#, p
	jmp	.L157	#
.L158:
	.loc 1 857 0
	movq	-16(%rbp), %rax	# p, tmp83
	addq	$1, %rax	#, D.10624
	movzbl	(%rax), %eax	# *_13, D.10623
	cmpb	$115, %al	#, D.10623
	je	.L159	#,
	.loc 1 858 0
	movl	$__FUNCTION__.9471, %edx	#,
	movl	$858, %esi	#,
	movl	$.LC8, %edi	#,
	call	fancy_abort	#
.L159:
	.loc 1 860 0
	jmp	.L160	#
.L157:
	.loc 1 851 0
	addq	$1, -16(%rbp)	#, p
.L156:
	.loc 1 851 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp84
	movzbl	(%rax), %eax	# *p_2, D.10623
	testb	%al, %al	# D.10623
	jne	.L161	#,
.L160:
	.loc 1 865 0 is_stmt 1
	movq	-24(%rbp), %rax	# buffer, tmp85
	movq	32(%rax), %rcx	# buffer_6(D)->state.cursor, D.10624
	movq	-16(%rbp), %rdx	# p, tmp86
	movq	-24(%rbp), %rax	# buffer, tmp87
	movq	%rcx, %rsi	# D.10624,
	movq	%rax, %rdi	# tmp87,
	call	maybe_wrap_text	#
	.loc 1 867 0
	movq	-16(%rbp), %rax	# p, tmp88
	movzbl	(%rax), %eax	# *p_2, D.10623
	cmpb	$37, %al	#, D.10623
	jne	.L162	#,
.LBB18:
	.loc 1 869 0
	movq	-32(%rbp), %rax	# decl, tmp89
	movq	72(%rax), %rax	# decl_18(D)->decl.name, D.10625
	.loc 1 871 0
	testq	%rax, %rax	# D.10625
	je	.L163	#,
	.loc 1 870 0
	movq	decl_printable_name(%rip), %rax	# decl_printable_name, decl_printable_name.32
	.loc 1 871 0
	movq	-32(%rbp), %rdx	# decl, tmp90
	movl	$2, %esi	#,
	movq	%rdx, %rdi	# tmp90,
	call	*%rax	# decl_printable_name.32
	jmp	.L164	#
.L163:
	.loc 1 871 0 is_stmt 0 discriminator 1
	movl	$.LC13, %eax	#, iftmp.31
.L164:
	.loc 1 869 0 is_stmt 1
	movq	%rax, -8(%rbp)	# iftmp.31, n
	.loc 1 872 0
	movq	-8(%rbp), %rdx	# n, tmp91
	movq	-24(%rbp), %rax	# buffer, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	output_add_string	#
	.loc 1 873 0
	jmp	.L165	#
.L166:
	.loc 1 875 0
	addq	$1, -16(%rbp)	#, p
	.loc 1 876 0
	movq	-16(%rbp), %rax	# p, tmp93
	subq	$1, %rax	#, D.10624
	movzbl	(%rax), %eax	# *_26, D.10623
	movsbl	%al, %eax	# D.10623, D.10626
	movzbl	%al, %eax	# D.10626, D.10626
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10627
	movzwl	%ax, %eax	# D.10627, D.10626
	andl	$136, %eax	#, D.10626
	testl	%eax, %eax	# D.10626
	je	.L165	#,
	.loc 1 877 0
	jmp	.L162	#
.L165:
	.loc 1 873 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp95
	movzbl	(%rax), %eax	# *p_3, D.10623
	testb	%al, %al	# D.10623
	jne	.L166	#,
.L162:
.LBE18:
	.loc 1 881 0
	movq	-16(%rbp), %rax	# p, tmp96
	movzbl	(%rax), %eax	# *p_4, D.10623
	testb	%al, %al	# D.10623
	je	.L155	#,
	.loc 1 883 0
	movq	-24(%rbp), %rax	# buffer, tmp97
	movq	-16(%rbp), %rdx	# p, tmp98
	movq	%rdx, 32(%rax)	# tmp98, buffer_6(D)->state.cursor
	.loc 1 884 0
	movq	-24(%rbp), %rax	# buffer, tmp99
	movq	%rax, %rdi	# tmp99,
	call	output_format	#
.L155:
	.loc 1 886 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	format_with_decl, .-format_with_decl
	.type	diagnostic_for_decl, @function
diagnostic_for_decl:
.LFB48:
	.loc 1 899 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# decl, decl
	movq	%rsi, -96(%rbp)	# msgid, msgid
	movq	%rdx, -104(%rbp)	# args_ptr, args_ptr
	movl	%ecx, -108(%rbp)	# warn, warn
	.loc 1 902 0
	movl	diagnostic_lock(%rip), %eax	# diagnostic_lock, diagnostic_lock.33
	leal	1(%rax), %edx	#, diagnostic_lock.35
	movl	%edx, diagnostic_lock(%rip)	# diagnostic_lock.35, diagnostic_lock
	testl	%eax, %eax	# diagnostic_lock.34
	je	.L169	#,
	.loc 1 903 0
	call	error_recursion	#
.L169:
	.loc 1 905 0
	movl	-108(%rbp), %eax	# warn, tmp77
	movl	%eax, %edi	# tmp77,
	call	count_error	#
	testl	%eax, %eax	# D.10629
	je	.L170	#,
	.loc 1 907 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.36
	movq	(%rax), %rdx	# diagnostic_buffer.36_6->state, tmp78
	movq	%rdx, -80(%rbp)	# tmp78, os
	movq	8(%rax), %rdx	# diagnostic_buffer.36_6->state, tmp79
	movq	%rdx, -72(%rbp)	# tmp79, os
	movq	16(%rax), %rdx	# diagnostic_buffer.36_6->state, tmp80
	movq	%rdx, -64(%rbp)	# tmp80, os
	movq	24(%rax), %rdx	# diagnostic_buffer.36_6->state, tmp81
	movq	%rdx, -56(%rbp)	# tmp81, os
	movq	32(%rax), %rdx	# diagnostic_buffer.36_6->state, tmp82
	movq	%rdx, -48(%rbp)	# tmp82, os
	movq	40(%rax), %rdx	# diagnostic_buffer.36_6->state, tmp83
	movq	%rdx, -40(%rbp)	# tmp83, os
	movq	48(%rax), %rdx	# diagnostic_buffer.36_6->state, tmp84
	movq	%rdx, -32(%rbp)	# tmp84, os
	movq	56(%rax), %rdx	# diagnostic_buffer.36_6->state, tmp85
	movq	%rdx, -24(%rbp)	# tmp85, os
	movq	64(%rax), %rdx	# diagnostic_buffer.36_6->state, tmp86
	movq	%rdx, -16(%rbp)	# tmp86, os
	movq	72(%rax), %rax	# diagnostic_buffer.36_6->state, tmp87
	movq	%rax, -8(%rbp)	# tmp87, os
	.loc 1 908 0
	movq	-88(%rbp), %rax	# decl, tmp88
	movq	24(%rax), %rax	# decl_7(D)->decl.filename, D.10630
	movq	%rax, %rdi	# D.10630,
	call	report_error_function	#
	.loc 1 911 0
	movq	-88(%rbp), %rax	# decl, tmp89
	movl	32(%rax), %ecx	# decl_7(D)->decl.linenum, D.10629
	movq	-88(%rbp), %rax	# decl, tmp90
	movq	24(%rax), %rax	# decl_7(D)->decl.filename, D.10630
	movl	-108(%rbp), %edx	# warn, tmp91
	movl	%ecx, %esi	# D.10629,
	movq	%rax, %rdi	# D.10630,
	call	context_as_prefix	#
	movq	%rax, %rdx	#, D.10631
	.loc 1 910 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.37
	movq	%rdx, %rsi	# D.10631,
	movq	%rax, %rdi	# diagnostic_buffer.37,
	call	output_set_prefix	#
	.loc 1 912 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.38
	movq	-104(%rbp), %rdx	# args_ptr, tmp92
	movq	%rdx, 40(%rax)	# tmp92, diagnostic_buffer.38_13->state.format_args
	.loc 1 913 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.39
	movq	-96(%rbp), %rdx	# msgid, tmp93
	movq	%rdx, 32(%rax)	# tmp93, diagnostic_buffer.39_15->state.cursor
	.loc 1 914 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.40
	movq	-88(%rbp), %rdx	# decl, tmp94
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# diagnostic_buffer.40,
	call	format_with_decl	#
	.loc 1 915 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.41
	movq	%rax, %rdi	# global_dc.41,
	call	diagnostic_finish	#
	.loc 1 916 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.42
	movq	%rax, %rdi	# diagnostic_buffer.42,
	call	output_destroy_prefix	#
	.loc 1 918 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.43
	movq	-80(%rbp), %rdx	# os, tmp95
	movq	%rdx, (%rax)	# tmp95, diagnostic_buffer.43_20->state
	movq	-72(%rbp), %rdx	# os, tmp96
	movq	%rdx, 8(%rax)	# tmp96, diagnostic_buffer.43_20->state
	movq	-64(%rbp), %rdx	# os, tmp97
	movq	%rdx, 16(%rax)	# tmp97, diagnostic_buffer.43_20->state
	movq	-56(%rbp), %rdx	# os, tmp98
	movq	%rdx, 24(%rax)	# tmp98, diagnostic_buffer.43_20->state
	movq	-48(%rbp), %rdx	# os, tmp99
	movq	%rdx, 32(%rax)	# tmp99, diagnostic_buffer.43_20->state
	movq	-40(%rbp), %rdx	# os, tmp100
	movq	%rdx, 40(%rax)	# tmp100, diagnostic_buffer.43_20->state
	movq	-32(%rbp), %rdx	# os, tmp101
	movq	%rdx, 48(%rax)	# tmp101, diagnostic_buffer.43_20->state
	movq	-24(%rbp), %rdx	# os, tmp102
	movq	%rdx, 56(%rax)	# tmp102, diagnostic_buffer.43_20->state
	movq	-16(%rbp), %rdx	# os, tmp103
	movq	%rdx, 64(%rax)	# tmp103, diagnostic_buffer.43_20->state
	movq	-8(%rbp), %rdx	# os, tmp104
	movq	%rdx, 72(%rax)	# tmp104, diagnostic_buffer.43_20->state
.L170:
	.loc 1 920 0
	movl	diagnostic_lock(%rip), %eax	# diagnostic_lock, diagnostic_lock.44
	subl	$1, %eax	#, diagnostic_lock.45
	movl	%eax, diagnostic_lock(%rip)	# diagnostic_lock.45, diagnostic_lock
	.loc 1 921 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	diagnostic_for_decl, .-diagnostic_for_decl
	.section	.rodata
	.align 8
.LC14:
	.string	"%s: warnings being treated as errors\n"
	.text
	.globl	count_error
	.type	count_error, @function
count_error:
.LFB49:
	.loc 1 929 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# warningp, warningp
	.loc 1 930 0
	cmpl	$0, -4(%rbp)	#, warningp
	je	.L172	#,
	.loc 1 930 0 is_stmt 0 discriminator 1
	movl	inhibit_warnings(%rip), %eax	# inhibit_warnings, inhibit_warnings.46
	testl	%eax, %eax	# inhibit_warnings.46
	jne	.L173	#,
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.47
	testl	%eax, %eax	# in_system_header.47
	je	.L172	#,
	movl	warn_system_headers(%rip), %eax	# warn_system_headers, warn_system_headers.48
	testl	%eax, %eax	# warn_system_headers.48
	jne	.L172	#,
.L173:
	.loc 1 931 0 is_stmt 1
	movl	$0, %eax	#, D.10632
	jmp	.L174	#
.L172:
	.loc 1 933 0
	cmpl	$0, -4(%rbp)	#, warningp
	je	.L175	#,
	.loc 1 933 0 is_stmt 0 discriminator 1
	movl	warnings_are_errors(%rip), %eax	# warnings_are_errors, warnings_are_errors.49
	testl	%eax, %eax	# warnings_are_errors.49
	jne	.L175	#,
	.loc 1 934 0 is_stmt 1
	movq	global_dc(%rip), %rax	# global_dc, global_dc.50
	movl	64(%rax), %edx	# MEM[(struct output_buffer *)global_dc.50_8].state.diagnostic_count, D.10632
	addl	$1, %edx	#, D.10632
	movl	%edx, 64(%rax)	# D.10632, MEM[(struct output_buffer *)global_dc.50_8].state.diagnostic_count
	jmp	.L176	#
.L175:
.LBB19:
	.loc 1 939 0
	cmpl	$0, -4(%rbp)	#, warningp
	je	.L177	#,
	.loc 1 939 0 is_stmt 0 discriminator 1
	movl	warning_message.9489(%rip), %eax	# warning_message, warning_message.51
	testl	%eax, %eax	# warning_message.51
	jne	.L177	#,
	.loc 1 941 0 is_stmt 1
	movq	progname(%rip), %rax	# progname, progname.52
	movq	%rax, %rsi	# progname.52,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	verbatim	#
	.loc 1 942 0
	movl	$1, warning_message.9489(%rip)	#, warning_message
.L177:
	.loc 1 944 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.53
	movl	60(%rax), %edx	# MEM[(struct output_buffer *)global_dc.53_13].state.diagnostic_count, D.10632
	addl	$1, %edx	#, D.10632
	movl	%edx, 60(%rax)	# D.10632, MEM[(struct output_buffer *)global_dc.53_13].state.diagnostic_count
.L176:
.LBE19:
	.loc 1 947 0
	movl	$1, %eax	#, D.10632
.L174:
	.loc 1 948 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	count_error, .-count_error
	.globl	fnotice
	.type	fnotice, @function
fnotice:
.LFB50:
	.loc 1 955 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# file, file
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L179	#,
	.loc 1 955 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L179:
	movq	%rsi, -224(%rbp)	# msgid, msgid
.LBB20:
	.loc 1 956 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp63
	movq	%rax, -192(%rbp)	# tmp63, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp64
	movq	%rax, -184(%rbp)	# tmp64, MEM[(struct [1] *)&ap].reg_save_area
.LBB21:
	.loc 1 960 0
	leaq	-200(%rbp), %rdx	#, tmp60
	movq	-224(%rbp), %rcx	# msgid, tmp61
	movq	-216(%rbp), %rax	# file, tmp62
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	vfprintf	#
.LBE21:
.LBE20:
	.loc 1 962 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	fnotice, .-fnotice
	.section	.rodata
.LC15:
	.string	"%s: %s: "
	.text
	.globl	fatal_io_error
	.type	fatal_io_error, @function
fatal_io_error:
.LFB51:
	.loc 1 970 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$304, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L181	#,
	.loc 1 970 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L181:
	movq	%rdi, -296(%rbp)	# msgid, msgid
.LBB22:
	.loc 1 973 0
	movl	$8, -280(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -276(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp93
	movq	%rax, -272(%rbp)	# tmp93, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp94
	movq	%rax, -264(%rbp)	# tmp94, MEM[(struct [1] *)&ap].reg_save_area
.LBB23:
	.loc 1 976 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.54
	movq	(%rax), %rdx	# diagnostic_buffer.54_1->state, tmp71
	movq	%rdx, -256(%rbp)	# tmp71, os
	movq	8(%rax), %rdx	# diagnostic_buffer.54_1->state, tmp72
	movq	%rdx, -248(%rbp)	# tmp72, os
	movq	16(%rax), %rdx	# diagnostic_buffer.54_1->state, tmp73
	movq	%rdx, -240(%rbp)	# tmp73, os
	movq	24(%rax), %rdx	# diagnostic_buffer.54_1->state, tmp74
	movq	%rdx, -232(%rbp)	# tmp74, os
	movq	32(%rax), %rdx	# diagnostic_buffer.54_1->state, tmp75
	movq	%rdx, -224(%rbp)	# tmp75, os
	movq	40(%rax), %rdx	# diagnostic_buffer.54_1->state, tmp76
	movq	%rdx, -216(%rbp)	# tmp76, os
	movq	48(%rax), %rdx	# diagnostic_buffer.54_1->state, tmp77
	movq	%rdx, -208(%rbp)	# tmp77, os
	movq	56(%rax), %rdx	# diagnostic_buffer.54_1->state, tmp78
	movq	%rdx, -200(%rbp)	# tmp78, os
	movq	64(%rax), %rdx	# diagnostic_buffer.54_1->state, tmp79
	movq	%rdx, -192(%rbp)	# tmp79, os
	movq	72(%rax), %rax	# diagnostic_buffer.54_1->state, tmp80
	movq	%rax, -184(%rbp)	# tmp80, os
	.loc 1 978 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_2, D.10637
	movl	%eax, %edi	# D.10637,
	call	xstrerror	#
	movq	%rax, %rcx	#, D.10638
	movq	progname(%rip), %rdx	# progname, progname.55
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.56
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# diagnostic_buffer.56,
	movl	$0, %eax	#,
	call	output_printf	#
	.loc 1 979 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.57
	leaq	-280(%rbp), %rdx	#, tmp81
	movq	%rdx, 40(%rax)	# tmp81, diagnostic_buffer.57_7->state.format_args
	.loc 1 980 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.58
	movq	-296(%rbp), %rdx	# msgid, tmp82
	movq	%rdx, 32(%rax)	# tmp82, diagnostic_buffer.58_8->state.cursor
	.loc 1 981 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.59
	movq	%rax, %rdi	# diagnostic_buffer.59,
	call	output_format	#
	.loc 1 982 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.60
	movq	%rax, %rdi	# global_dc.60,
	call	diagnostic_finish	#
	.loc 1 983 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.61
	movq	-256(%rbp), %rdx	# os, tmp83
	movq	%rdx, (%rax)	# tmp83, diagnostic_buffer.61_12->state
	movq	-248(%rbp), %rdx	# os, tmp84
	movq	%rdx, 8(%rax)	# tmp84, diagnostic_buffer.61_12->state
	movq	-240(%rbp), %rdx	# os, tmp85
	movq	%rdx, 16(%rax)	# tmp85, diagnostic_buffer.61_12->state
	movq	-232(%rbp), %rdx	# os, tmp86
	movq	%rdx, 24(%rax)	# tmp86, diagnostic_buffer.61_12->state
	movq	-224(%rbp), %rdx	# os, tmp87
	movq	%rdx, 32(%rax)	# tmp87, diagnostic_buffer.61_12->state
	movq	-216(%rbp), %rdx	# os, tmp88
	movq	%rdx, 40(%rax)	# tmp88, diagnostic_buffer.61_12->state
	movq	-208(%rbp), %rdx	# os, tmp89
	movq	%rdx, 48(%rax)	# tmp89, diagnostic_buffer.61_12->state
	movq	-200(%rbp), %rdx	# os, tmp90
	movq	%rdx, 56(%rax)	# tmp90, diagnostic_buffer.61_12->state
	movq	-192(%rbp), %rdx	# os, tmp91
	movq	%rdx, 64(%rax)	# tmp91, diagnostic_buffer.61_12->state
	movq	-184(%rbp), %rdx	# os, tmp92
	movq	%rdx, 72(%rax)	# tmp92, diagnostic_buffer.61_12->state
.LBE23:
.LBE22:
	.loc 1 985 0
	movl	$1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE51:
	.size	fatal_io_error, .-fatal_io_error
	.globl	pedwarn
	.type	pedwarn, @function
pedwarn:
.LFB52:
	.loc 1 992 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$608, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L183	#,
	.loc 1 992 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L183:
	movq	%rdi, -600(%rbp)	# msgid, msgid
	movq	%fs:40, %rax	#, tmp69
	movq	%rax, -184(%rbp)	# tmp69, D.10644
	xorl	%eax, %eax	# tmp69
.LBB24:
	.loc 1 995 0
	movl	$8, -584(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -580(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp71
	movq	%rax, -576(%rbp)	# tmp71, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp72
	movq	%rax, -568(%rbp)	# tmp72, MEM[(struct [1] *)&ap].reg_save_area
.LBB25:
	.loc 1 999 0
	movl	flag_pedantic_errors(%rip), %eax	# flag_pedantic_errors, flag_pedantic_errors.62
	testl	%eax, %eax	# flag_pedantic_errors.62
	sete	%al	#, D.10642
	movzbl	%al, %r8d	# D.10642, D.10643
	movl	lineno(%rip), %edi	# lineno, lineno.63
	movq	input_filename(%rip), %rcx	# input_filename, input_filename.64
	leaq	-584(%rbp), %rdx	#, tmp65
	movq	-600(%rbp), %rsi	# msgid, tmp66
	leaq	-560(%rbp), %rax	#, tmp67
	movl	%r8d, %r9d	# D.10643,
	movl	%edi, %r8d	# lineno.63,
	movq	%rax, %rdi	# tmp67,
	call	set_diagnostic_context	#
	.loc 1 1000 0
	leaq	-560(%rbp), %rax	#, tmp68
	movq	%rax, %rdi	# tmp68,
	call	report_diagnostic	#
.LBE25:
.LBE24:
	.loc 1 1002 0
	movq	-184(%rbp), %rax	# D.10644, tmp70
	xorq	%fs:40, %rax	#, tmp70
	je	.L184	#,
	call	__stack_chk_fail	#
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	pedwarn, .-pedwarn
	.globl	pedwarn_with_decl
	.type	pedwarn_with_decl, @function
pedwarn_with_decl:
.LFB53:
	.loc 1 1008 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# decl, decl
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L186	#,
	.loc 1 1008 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L186:
	movq	%rsi, -224(%rbp)	# msgid, msgid
.LBB26:
	.loc 1 1009 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp69
	movq	%rax, -192(%rbp)	# tmp69, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp70
	movq	%rax, -184(%rbp)	# tmp70, MEM[(struct [1] *)&ap].reg_save_area
.LBB27:
	.loc 1 1019 0
	movq	-216(%rbp), %rax	# decl, tmp65
	movzbl	50(%rax), %eax	# *decl_1(D), D.10649
	andl	$1, %eax	#, D.10649
	testb	%al, %al	# D.10649
	jne	.L185	#,
	.loc 1 1020 0
	movl	flag_pedantic_errors(%rip), %eax	# flag_pedantic_errors, flag_pedantic_errors.65
	testl	%eax, %eax	# flag_pedantic_errors.65
	sete	%al	#, D.10650
	movzbl	%al, %ecx	# D.10650, D.10651
	leaq	-200(%rbp), %rdx	#, tmp66
	movq	-224(%rbp), %rsi	# msgid, tmp67
	movq	-216(%rbp), %rax	# decl, tmp68
	movq	%rax, %rdi	# tmp68,
	call	diagnostic_for_decl	#
.L185:
.LBE27:
.LBE26:
	.loc 1 1022 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	pedwarn_with_decl, .-pedwarn_with_decl
	.globl	pedwarn_with_file_and_line
	.type	pedwarn_with_file_and_line, @function
pedwarn_with_file_and_line:
.LFB54:
	.loc 1 1029 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$624, %rsp	#,
	movq	%rdi, -600(%rbp)	# file, file
	movl	%esi, -604(%rbp)	# line, line
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L189	#,
	.loc 1 1029 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L189:
	movq	%rdx, -616(%rbp)	# msgid, msgid
	movq	%fs:40, %rax	#, tmp69
	movq	%rax, -184(%rbp)	# tmp69, D.10656
	xorl	%eax, %eax	# tmp69
.LBB28:
	.loc 1 1032 0
	movl	$24, -584(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -580(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp71
	movq	%rax, -576(%rbp)	# tmp71, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp72
	movq	%rax, -568(%rbp)	# tmp72, MEM[(struct [1] *)&ap].reg_save_area
.LBB29:
	.loc 1 1037 0
	movl	flag_pedantic_errors(%rip), %eax	# flag_pedantic_errors, flag_pedantic_errors.66
	testl	%eax, %eax	# flag_pedantic_errors.66
	sete	%al	#, D.10654
	movzbl	%al, %r8d	# D.10654, D.10655
	movl	-604(%rbp), %edi	# line, tmp63
	movq	-600(%rbp), %rcx	# file, tmp64
	leaq	-584(%rbp), %rdx	#, tmp65
	movq	-616(%rbp), %rsi	# msgid, tmp66
	leaq	-560(%rbp), %rax	#, tmp67
	movl	%r8d, %r9d	# D.10655,
	movl	%edi, %r8d	# tmp63,
	movq	%rax, %rdi	# tmp67,
	call	set_diagnostic_context	#
	.loc 1 1038 0
	leaq	-560(%rbp), %rax	#, tmp68
	movq	%rax, %rdi	# tmp68,
	call	report_diagnostic	#
.LBE29:
.LBE28:
	.loc 1 1040 0
	movq	-184(%rbp), %rax	# D.10656, tmp70
	xorq	%fs:40, %rax	#, tmp70
	je	.L190	#,
	call	__stack_chk_fail	#
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	pedwarn_with_file_and_line, .-pedwarn_with_file_and_line
	.section	.rodata
.LC16:
	.string	"sorry, not implemented: "
	.text
	.globl	sorry
	.type	sorry, @function
sorry:
.LFB55:
	.loc 1 1046 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$304, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L192	#,
	.loc 1 1046 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L192:
	movq	%rdi, -296(%rbp)	# msgid, msgid
.LBB30:
	.loc 1 1049 0
	movl	$8, -280(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -276(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp96
	movq	%rax, -272(%rbp)	# tmp96, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp97
	movq	%rax, -264(%rbp)	# tmp97, MEM[(struct [1] *)&ap].reg_save_area
.LBB31:
	.loc 1 1052 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.67
	movl	56(%rax), %edx	# MEM[(struct output_buffer *)global_dc.67_1].state.diagnostic_count, D.10659
	addl	$1, %edx	#, D.10659
	movl	%edx, 56(%rax)	# D.10659, MEM[(struct output_buffer *)global_dc.67_1].state.diagnostic_count
	.loc 1 1053 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.68
	movq	(%rax), %rdx	# diagnostic_buffer.68_4->state, tmp74
	movq	%rdx, -256(%rbp)	# tmp74, os
	movq	8(%rax), %rdx	# diagnostic_buffer.68_4->state, tmp75
	movq	%rdx, -248(%rbp)	# tmp75, os
	movq	16(%rax), %rdx	# diagnostic_buffer.68_4->state, tmp76
	movq	%rdx, -240(%rbp)	# tmp76, os
	movq	24(%rax), %rdx	# diagnostic_buffer.68_4->state, tmp77
	movq	%rdx, -232(%rbp)	# tmp77, os
	movq	32(%rax), %rdx	# diagnostic_buffer.68_4->state, tmp78
	movq	%rdx, -224(%rbp)	# tmp78, os
	movq	40(%rax), %rdx	# diagnostic_buffer.68_4->state, tmp79
	movq	%rdx, -216(%rbp)	# tmp79, os
	movq	48(%rax), %rdx	# diagnostic_buffer.68_4->state, tmp80
	movq	%rdx, -208(%rbp)	# tmp80, os
	movq	56(%rax), %rdx	# diagnostic_buffer.68_4->state, tmp81
	movq	%rdx, -200(%rbp)	# tmp81, os
	movq	64(%rax), %rdx	# diagnostic_buffer.68_4->state, tmp82
	movq	%rdx, -192(%rbp)	# tmp82, os
	movq	72(%rax), %rax	# diagnostic_buffer.68_4->state, tmp83
	movq	%rax, -184(%rbp)	# tmp83, os
	.loc 1 1056 0
	movl	lineno(%rip), %ecx	# lineno, lineno.69
	movq	input_filename(%rip), %rax	# input_filename, input_filename.70
	movl	$0, %edx	#,
	movl	%ecx, %esi	# lineno.69,
	movq	%rax, %rdi	# input_filename.70,
	call	context_as_prefix	#
	movq	%rax, %rdx	#, D.10660
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.71
	movq	%rdx, %rsi	# D.10660,
	movq	%rax, %rdi	# diagnostic_buffer.71,
	call	output_set_prefix	#
	.loc 1 1057 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.72
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# diagnostic_buffer.72,
	movl	$0, %eax	#,
	call	output_printf	#
	.loc 1 1058 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.73
	leaq	-280(%rbp), %rdx	#, tmp84
	movq	%rdx, 40(%rax)	# tmp84, diagnostic_buffer.73_10->state.format_args
	.loc 1 1059 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.74
	movq	-296(%rbp), %rdx	# msgid, tmp85
	movq	%rdx, 32(%rax)	# tmp85, diagnostic_buffer.74_11->state.cursor
	.loc 1 1060 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.75
	movq	%rax, %rdi	# diagnostic_buffer.75,
	call	output_format	#
	.loc 1 1061 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.76
	movq	%rax, %rdi	# global_dc.76,
	call	diagnostic_finish	#
	.loc 1 1062 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.77
	movq	-256(%rbp), %rdx	# os, tmp86
	movq	%rdx, (%rax)	# tmp86, diagnostic_buffer.77_15->state
	movq	-248(%rbp), %rdx	# os, tmp87
	movq	%rdx, 8(%rax)	# tmp87, diagnostic_buffer.77_15->state
	movq	-240(%rbp), %rdx	# os, tmp88
	movq	%rdx, 16(%rax)	# tmp88, diagnostic_buffer.77_15->state
	movq	-232(%rbp), %rdx	# os, tmp89
	movq	%rdx, 24(%rax)	# tmp89, diagnostic_buffer.77_15->state
	movq	-224(%rbp), %rdx	# os, tmp90
	movq	%rdx, 32(%rax)	# tmp90, diagnostic_buffer.77_15->state
	movq	-216(%rbp), %rdx	# os, tmp91
	movq	%rdx, 40(%rax)	# tmp91, diagnostic_buffer.77_15->state
	movq	-208(%rbp), %rdx	# os, tmp92
	movq	%rdx, 48(%rax)	# tmp92, diagnostic_buffer.77_15->state
	movq	-200(%rbp), %rdx	# os, tmp93
	movq	%rdx, 56(%rax)	# tmp93, diagnostic_buffer.77_15->state
	movq	-192(%rbp), %rdx	# os, tmp94
	movq	%rdx, 64(%rax)	# tmp94, diagnostic_buffer.77_15->state
	movq	-184(%rbp), %rdx	# os, tmp95
	movq	%rdx, 72(%rax)	# tmp95, diagnostic_buffer.77_15->state
.LBE31:
.LBE30:
	.loc 1 1064 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	sorry, .-sorry
	.section	.rodata
.LC17:
	.string	"%s "
.LC18:
	.string	" %s"
	.text
	.globl	announce_function
	.type	announce_function, @function
announce_function:
.LFB56:
	.loc 1 1072 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 1073 0
	movl	quiet_flag(%rip), %eax	# quiet_flag, quiet_flag.78
	testl	%eax, %eax	# quiet_flag.78
	jne	.L193	#,
	.loc 1 1075 0
	movl	rtl_dump_and_exit(%rip), %eax	# rtl_dump_and_exit, rtl_dump_and_exit.79
	testl	%eax, %eax	# rtl_dump_and_exit.79
	je	.L195	#,
	.loc 1 1076 0
	movq	-8(%rbp), %rax	# decl, tmp67
	movq	72(%rax), %rax	# decl_3(D)->decl.name, D.10664
	movq	32(%rax), %rax	# _4->identifier.id.str, D.10665
	movq	%rax, %rsi	# D.10665,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	verbatim	#
	jmp	.L196	#
.L195:
	.loc 1 1078 0
	movq	decl_printable_name(%rip), %rax	# decl_printable_name, decl_printable_name.80
	movq	-8(%rbp), %rdx	# decl, tmp68
	movl	$2, %esi	#,
	movq	%rdx, %rdi	# tmp68,
	call	*%rax	# decl_printable_name.80
	movq	%rax, %rsi	# D.10666,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	verbatim	#
.L196:
	.loc 1 1079 0
	movq	stderr(%rip), %rax	# stderr, stderr.81
	movq	%rax, %rdi	# stderr.81,
	call	fflush	#
	.loc 1 1080 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.82
	movb	$1, 21(%rax)	#, diagnostic_buffer.82_9->state.need_newline_p
	.loc 1 1081 0
	call	record_last_error_function	#
.L193:
	.loc 1 1083 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	announce_function, .-announce_function
	.globl	default_print_error_function
	.type	default_print_error_function, @function
default_print_error_function:
.LFB57:
	.loc 1 1092 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -88(%rbp)	# context, context
	movq	%rsi, -96(%rbp)	# file, file
	.loc 1 1094 0
	nop
	.loc 1 1124 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	default_print_error_function, .-default_print_error_function
	.globl	report_error_function
	.type	report_error_function, @function
report_error_function:
.LFB58:
	.loc 1 1133 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# file, file
	.loc 1 1134 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.90
	movq	%rax, %rdi	# global_dc.90,
	call	report_problematic_module	#
	.loc 1 1135 0
	movq	print_error_function(%rip), %rax	# print_error_function, print_error_function.91
	movq	input_filename(%rip), %rcx	# input_filename, input_filename.92
	movq	global_dc(%rip), %rdx	# global_dc, global_dc.93
	movq	%rcx, %rsi	# input_filename.92,
	movq	%rdx, %rdi	# global_dc.93,
	call	*%rax	# print_error_function.91
	.loc 1 1136 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	report_error_function, .-report_error_function
	.globl	error_with_file_and_line
	.type	error_with_file_and_line, @function
error_with_file_and_line:
.LFB59:
	.loc 1 1141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$624, %rsp	#,
	movq	%rdi, -600(%rbp)	# file, file
	movl	%esi, -604(%rbp)	# line, line
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L201	#,
	.loc 1 1141 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L201:
	movq	%rdx, -616(%rbp)	# msgid, msgid
	movq	%fs:40, %rax	#, tmp66
	movq	%rax, -184(%rbp)	# tmp66, D.10669
	xorl	%eax, %eax	# tmp66
.LBB32:
	.loc 1 1144 0
	movl	$24, -584(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -580(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp68
	movq	%rax, -576(%rbp)	# tmp68, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp69
	movq	%rax, -568(%rbp)	# tmp69, MEM[(struct [1] *)&ap].reg_save_area
.LBB33:
	.loc 1 1149 0
	movl	-604(%rbp), %edi	# line, tmp60
	movq	-600(%rbp), %rcx	# file, tmp61
	leaq	-584(%rbp), %rdx	#, tmp62
	movq	-616(%rbp), %rsi	# msgid, tmp63
	leaq	-560(%rbp), %rax	#, tmp64
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp60,
	movq	%rax, %rdi	# tmp64,
	call	set_diagnostic_context	#
	.loc 1 1150 0
	leaq	-560(%rbp), %rax	#, tmp65
	movq	%rax, %rdi	# tmp65,
	call	report_diagnostic	#
.LBE33:
.LBE32:
	.loc 1 1152 0
	movq	-184(%rbp), %rax	# D.10669, tmp67
	xorq	%fs:40, %rax	#, tmp67
	je	.L202	#,
	call	__stack_chk_fail	#
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	error_with_file_and_line, .-error_with_file_and_line
	.globl	error_with_decl
	.type	error_with_decl, @function
error_with_decl:
.LFB60:
	.loc 1 1156 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# decl, decl
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L204	#,
	.loc 1 1156 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L204:
	movq	%rsi, -224(%rbp)	# msgid, msgid
.LBB34:
	.loc 1 1157 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp63
	movq	%rax, -192(%rbp)	# tmp63, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp64
	movq	%rax, -184(%rbp)	# tmp64, MEM[(struct [1] *)&ap].reg_save_area
.LBB35:
	.loc 1 1161 0
	leaq	-200(%rbp), %rdx	#, tmp60
	movq	-224(%rbp), %rsi	# msgid, tmp61
	movq	-216(%rbp), %rax	# decl, tmp62
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp62,
	call	diagnostic_for_decl	#
.LBE35:
.LBE34:
	.loc 1 1163 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	error_with_decl, .-error_with_decl
	.globl	error
	.type	error, @function
error:
.LFB61:
	.loc 1 1170 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$608, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L206	#,
	.loc 1 1170 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L206:
	movq	%rdi, -600(%rbp)	# msgid, msgid
	movq	%fs:40, %rax	#, tmp66
	movq	%rax, -184(%rbp)	# tmp66, D.10674
	xorl	%eax, %eax	# tmp66
.LBB36:
	.loc 1 1173 0
	movl	$8, -584(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -580(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp68
	movq	%rax, -576(%rbp)	# tmp68, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp69
	movq	%rax, -568(%rbp)	# tmp69, MEM[(struct [1] *)&ap].reg_save_area
.LBB37:
	.loc 1 1177 0
	movl	lineno(%rip), %edi	# lineno, lineno.94
	movq	input_filename(%rip), %rcx	# input_filename, input_filename.95
	leaq	-584(%rbp), %rdx	#, tmp62
	movq	-600(%rbp), %rsi	# msgid, tmp63
	leaq	-560(%rbp), %rax	#, tmp64
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# lineno.94,
	movq	%rax, %rdi	# tmp64,
	call	set_diagnostic_context	#
	.loc 1 1178 0
	leaq	-560(%rbp), %rax	#, tmp65
	movq	%rax, %rdi	# tmp65,
	call	report_diagnostic	#
.LBE37:
.LBE36:
	.loc 1 1180 0
	movq	-184(%rbp), %rax	# D.10674, tmp67
	xorq	%fs:40, %rax	#, tmp67
	je	.L207	#,
	call	__stack_chk_fail	#
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	error, .-error
	.section	.rodata
.LC19:
	.string	"compilation terminated.\n"
	.text
	.globl	fatal_error
	.type	fatal_error, @function
fatal_error:
.LFB62:
	.loc 1 1187 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$608, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L209	#,
	.loc 1 1187 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L209:
	movq	%rdi, -600(%rbp)	# msgid, msgid
	movq	%fs:40, %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, D.10677
	xorl	%eax, %eax	# tmp67
.LBB38:
	.loc 1 1190 0
	movl	$8, -584(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -580(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp68
	movq	%rax, -576(%rbp)	# tmp68, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp69
	movq	%rax, -568(%rbp)	# tmp69, MEM[(struct [1] *)&ap].reg_save_area
.LBB39:
	.loc 1 1194 0
	movl	lineno(%rip), %edi	# lineno, lineno.96
	movq	input_filename(%rip), %rcx	# input_filename, input_filename.97
	leaq	-584(%rbp), %rdx	#, tmp63
	movq	-600(%rbp), %rsi	# msgid, tmp64
	leaq	-560(%rbp), %rax	#, tmp65
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# lineno.96,
	movq	%rax, %rdi	# tmp65,
	call	set_diagnostic_context	#
	.loc 1 1195 0
	leaq	-560(%rbp), %rax	#, tmp66
	movq	%rax, %rdi	# tmp66,
	call	report_diagnostic	#
.LBE39:
.LBE38:
	.loc 1 1198 0
	movq	stderr(%rip), %rax	# stderr, stderr.98
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# stderr.98,
	movl	$0, %eax	#,
	call	fnotice	#
	.loc 1 1199 0
	movl	$1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE62:
	.size	fatal_error, .-fatal_error
	.local	internal_error_function
	.comm	internal_error_function,8,8
	.globl	set_internal_error_function
	.type	set_internal_error_function, @function
set_internal_error_function:
.LFB63:
	.loc 1 1212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 1213 0
	movq	-8(%rbp), %rax	# f, tmp59
	movq	%rax, internal_error_function(%rip)	# tmp59, internal_error_function
	.loc 1 1214 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	set_internal_error_function, .-set_internal_error_function
	.section	.rodata
	.align 8
.LC20:
	.string	"%s:%d: confused by earlier errors, bailing out\n"
.LC21:
	.string	"<URL:http://www.spec.org/>"
	.align 8
.LC22:
	.ascii	"It is possible that you may be trying to use SPEC's version "
	.ascii	"of gcc \nwithout first defining the appropriate flags.  Plea"
	.ascii	"se check the flags \nthat are in the config fi"
	.string	"les from recently-published results on your \nplatform, and check that you are using an up-to-date compiler.  If\nyou still need help, please contact SPEC, reporting your hw/os \nplatform, your compiler version, and your compilation flags.\nContact SPEC at %s\n"
	.text
	.globl	internal_error
	.type	internal_error, @function
internal_error:
.LFB64:
	.loc 1 1218 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$608, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L213	#,
	.loc 1 1218 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L213:
	movq	%rdi, -600(%rbp)	# msgid, msgid
	movq	%fs:40, %rax	#, tmp79
	movq	%rax, -184(%rbp)	# tmp79, D.10682
	xorl	%eax, %eax	# tmp79
.LBB40:
	.loc 1 1221 0
	movl	$8, -584(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -580(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp80
	movq	%rax, -576(%rbp)	# tmp80, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp81
	movq	%rax, -568(%rbp)	# tmp81, MEM[(struct [1] *)&ap].reg_save_area
.LBB41:
	.loc 1 1224 0
	movl	diagnostic_lock(%rip), %eax	# diagnostic_lock, diagnostic_lock.99
	testl	%eax, %eax	# diagnostic_lock.99
	je	.L214	#,
	.loc 1 1225 0
	call	error_recursion	#
.L214:
	.loc 1 1228 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.100
	movl	60(%rax), %eax	# MEM[(struct output_buffer *)global_dc.100_2].state.diagnostic_count, D.10681
	testl	%eax, %eax	# D.10681
	jg	.L215	#,
	.loc 1 1228 0 is_stmt 0 discriminator 1
	movq	global_dc(%rip), %rax	# global_dc, global_dc.101
	movl	56(%rax), %eax	# MEM[(struct output_buffer *)global_dc.101_4].state.diagnostic_count, D.10681
	testl	%eax, %eax	# D.10681
	jle	.L216	#,
.L215:
	.loc 1 1230 0 is_stmt 1
	movl	lineno(%rip), %ecx	# lineno, lineno.102
	movq	input_filename(%rip), %rdx	# input_filename, input_filename.103
	movq	stderr(%rip), %rax	# stderr, stderr.104
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# stderr.104,
	movl	$0, %eax	#,
	call	fnotice	#
	.loc 1 1232 0
	movl	$1, %edi	#,
	call	exit	#
.L216:
	.loc 1 1236 0
	movq	internal_error_function(%rip), %rax	# internal_error_function, internal_error_function.105
	testq	%rax, %rax	# internal_error_function.105
	je	.L217	#,
	.loc 1 1237 0
	movq	internal_error_function(%rip), %rax	# internal_error_function, internal_error_function.106
	leaq	-584(%rbp), %rcx	#, tmp73
	movq	-600(%rbp), %rdx	# msgid, tmp74
	movq	%rcx, %rsi	# tmp73,
	movq	%rdx, %rdi	# tmp74,
	call	*%rax	# internal_error_function.106
.L217:
	.loc 1 1240 0
	movl	lineno(%rip), %edi	# lineno, lineno.107
	movq	input_filename(%rip), %rcx	# input_filename, input_filename.108
	leaq	-584(%rbp), %rdx	#, tmp75
	movq	-600(%rbp), %rsi	# msgid, tmp76
	leaq	-560(%rbp), %rax	#, tmp77
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# lineno.107,
	movq	%rax, %rdi	# tmp77,
	call	set_diagnostic_context	#
	.loc 1 1241 0
	leaq	-560(%rbp), %rax	#, tmp78
	movq	%rax, %rdi	# tmp78,
	call	report_diagnostic	#
.LBE41:
.LBE40:
	.loc 1 1244 0
	movq	stderr(%rip), %rax	# stderr, stderr.109
	movl	$.LC21, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# stderr.109,
	movl	$0, %eax	#,
	call	fnotice	#
	.loc 1 1253 0
	movl	$1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE64:
	.size	internal_error, .-internal_error
	.globl	warning_with_file_and_line
	.type	warning_with_file_and_line, @function
warning_with_file_and_line:
.LFB65:
	.loc 1 1259 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -184(%rbp)	# file, file
	movl	%esi, -188(%rbp)	# line, line
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L220	#,
	.loc 1 1259 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L220:
	movq	%rdx, -200(%rbp)	# msgid, msgid
	.loc 1 1272 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	warning_with_file_and_line, .-warning_with_file_and_line
	.globl	warning_with_decl
	.type	warning_with_decl, @function
warning_with_decl:
.LFB66:
	.loc 1 1276 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$72, %rsp	#,
	movq	%rdi, -184(%rbp)	# decl, decl
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L222	#,
	.loc 1 1276 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L222:
	movq	%rsi, -192(%rbp)	# msgid, msgid
	.loc 1 1285 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	warning_with_decl, .-warning_with_decl
	.globl	warning
	.type	warning, @function
warning:
.LFB67:
	.loc 1 1289 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L224	#,
	.loc 1 1289 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L224:
	movq	%rdi, -184(%rbp)	# msgid, msgid
	.loc 1 1301 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	warning, .-warning
	.type	diagnostic_finish, @function
diagnostic_finish:
.LFB68:
	.loc 1 1308 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	.loc 1 1309 0
	movq	-8(%rbp), %rax	# buffer, tmp61
	movq	%rax, %rdi	# tmp61,
	call	output_buffer_to_stream	#
	.loc 1 1310 0
	movq	-8(%rbp), %rax	# buffer, tmp62
	movq	%rax, %rdi	# tmp62,
	call	clear_diagnostic_info	#
	.loc 1 1311 0
	movq	-8(%rbp), %rax	# buffer, tmp63
	movq	80(%rax), %rax	# buffer_1(D)->stream, D.10688
	movq	%rax, %rsi	# D.10688,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1312 0
	movq	-8(%rbp), %rax	# buffer, tmp64
	movq	80(%rax), %rax	# buffer_1(D)->stream, D.10688
	movq	%rax, %rdi	# D.10688,
	call	fflush	#
	.loc 1 1313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	diagnostic_finish, .-diagnostic_finish
	.type	output_do_verbatim, @function
output_do_verbatim:
.LFB69:
	.loc 1 1323 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# buffer, buffer
	movq	%rsi, -96(%rbp)	# msgid, msgid
	movq	%rdx, -104(%rbp)	# args_ptr, args_ptr
	.loc 1 1326 0
	movq	-88(%rbp), %rax	# buffer, tmp59
	movq	(%rax), %rdx	# buffer_1(D)->state, tmp60
	movq	%rdx, -80(%rbp)	# tmp60, os
	movq	8(%rax), %rdx	# buffer_1(D)->state, tmp61
	movq	%rdx, -72(%rbp)	# tmp61, os
	movq	16(%rax), %rdx	# buffer_1(D)->state, tmp62
	movq	%rdx, -64(%rbp)	# tmp62, os
	movq	24(%rax), %rdx	# buffer_1(D)->state, tmp63
	movq	%rdx, -56(%rbp)	# tmp63, os
	movq	32(%rax), %rdx	# buffer_1(D)->state, tmp64
	movq	%rdx, -48(%rbp)	# tmp64, os
	movq	40(%rax), %rdx	# buffer_1(D)->state, tmp65
	movq	%rdx, -40(%rbp)	# tmp65, os
	movq	48(%rax), %rdx	# buffer_1(D)->state, tmp66
	movq	%rdx, -32(%rbp)	# tmp66, os
	movq	56(%rax), %rdx	# buffer_1(D)->state, tmp67
	movq	%rdx, -24(%rbp)	# tmp67, os
	movq	64(%rax), %rdx	# buffer_1(D)->state, tmp68
	movq	%rdx, -16(%rbp)	# tmp68, os
	movq	72(%rax), %rax	# buffer_1(D)->state, tmp69
	movq	%rax, -8(%rbp)	# tmp69, os
	.loc 1 1327 0
	movq	-88(%rbp), %rax	# buffer, tmp70
	movq	$0, (%rax)	#, buffer_1(D)->state.prefix
	.loc 1 1328 0
	movq	-88(%rbp), %rax	# buffer, tmp71
	movl	$1, 24(%rax)	#, buffer_1(D)->state.prefixing_rule
	.loc 1 1329 0
	movq	-88(%rbp), %rax	# buffer, tmp72
	movq	-96(%rbp), %rdx	# msgid, tmp73
	movq	%rdx, 32(%rax)	# tmp73, buffer_1(D)->state.cursor
	.loc 1 1330 0
	movq	-88(%rbp), %rax	# buffer, tmp74
	movq	-104(%rbp), %rdx	# args_ptr, tmp75
	movq	%rdx, 40(%rax)	# tmp75, buffer_1(D)->state.format_args
	.loc 1 1331 0
	movq	-88(%rbp), %rax	# buffer, tmp76
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	output_set_maximum_length	#
	.loc 1 1332 0
	movq	-88(%rbp), %rax	# buffer, tmp77
	movq	%rax, %rdi	# tmp77,
	call	output_format	#
	.loc 1 1333 0
	movq	-88(%rbp), %rax	# buffer, tmp78
	movq	-80(%rbp), %rdx	# os, tmp79
	movq	%rdx, (%rax)	# tmp79, buffer_1(D)->state
	movq	-72(%rbp), %rdx	# os, tmp80
	movq	%rdx, 8(%rax)	# tmp80, buffer_1(D)->state
	movq	-64(%rbp), %rdx	# os, tmp81
	movq	%rdx, 16(%rax)	# tmp81, buffer_1(D)->state
	movq	-56(%rbp), %rdx	# os, tmp82
	movq	%rdx, 24(%rax)	# tmp82, buffer_1(D)->state
	movq	-48(%rbp), %rdx	# os, tmp83
	movq	%rdx, 32(%rax)	# tmp83, buffer_1(D)->state
	movq	-40(%rbp), %rdx	# os, tmp84
	movq	%rdx, 40(%rax)	# tmp84, buffer_1(D)->state
	movq	-32(%rbp), %rdx	# os, tmp85
	movq	%rdx, 48(%rax)	# tmp85, buffer_1(D)->state
	movq	-24(%rbp), %rdx	# os, tmp86
	movq	%rdx, 56(%rax)	# tmp86, buffer_1(D)->state
	movq	-16(%rbp), %rdx	# os, tmp87
	movq	%rdx, 64(%rax)	# tmp87, buffer_1(D)->state
	movq	-8(%rbp), %rdx	# os, tmp88
	movq	%rdx, 72(%rax)	# tmp88, buffer_1(D)->state
	.loc 1 1334 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	output_do_verbatim, .-output_do_verbatim
	.globl	output_verbatim
	.type	output_verbatim, @function
output_verbatim:
.LFB70:
	.loc 1 1340 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# buffer, buffer
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L228	#,
	.loc 1 1340 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L228:
	movq	%rsi, -224(%rbp)	# msgid, msgid
.LBB42:
	.loc 1 1341 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp63
	movq	%rax, -192(%rbp)	# tmp63, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp64
	movq	%rax, -184(%rbp)	# tmp64, MEM[(struct [1] *)&ap].reg_save_area
.LBB43:
	.loc 1 1345 0
	leaq	-200(%rbp), %rdx	#, tmp60
	movq	-224(%rbp), %rcx	# msgid, tmp61
	movq	-216(%rbp), %rax	# buffer, tmp62
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	output_do_verbatim	#
.LBE43:
.LBE42:
	.loc 1 1347 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	output_verbatim, .-output_verbatim
	.globl	verbatim
	.type	verbatim, @function
verbatim:
.LFB71:
	.loc 1 1353 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L230	#,
	.loc 1 1353 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L230:
	movq	%rdi, -216(%rbp)	# msgid, msgid
.LBB44:
	.loc 1 1354 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp64
	movq	%rax, -192(%rbp)	# tmp64, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp65
	movq	%rax, -184(%rbp)	# tmp65, MEM[(struct [1] *)&ap].reg_save_area
.LBB45:
	.loc 1 1357 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.110
	leaq	-200(%rbp), %rdx	#, tmp62
	movq	-216(%rbp), %rcx	# msgid, tmp63
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# diagnostic_buffer.110,
	call	output_do_verbatim	#
	.loc 1 1358 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.111
	movq	%rax, %rdi	# diagnostic_buffer.111,
	call	output_buffer_to_stream	#
.LBE45:
.LBE44:
	.loc 1 1360 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	verbatim, .-verbatim
	.globl	report_diagnostic
	.type	report_diagnostic, @function
report_diagnostic:
.LFB72:
	.loc 1 1371 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# dc, dc
	.loc 1 1374 0
	movl	diagnostic_lock(%rip), %eax	# diagnostic_lock, diagnostic_lock.112
	leal	1(%rax), %edx	#, diagnostic_lock.114
	movl	%edx, diagnostic_lock(%rip)	# diagnostic_lock.114, diagnostic_lock
	testl	%eax, %eax	# diagnostic_lock.113
	je	.L232	#,
	.loc 1 1375 0
	call	error_recursion	#
.L232:
	.loc 1 1377 0
	movq	-88(%rbp), %rax	# dc, tmp78
	movl	348(%rax), %eax	# dc_4(D)->warn, D.10693
	movl	%eax, %edi	# D.10693,
	call	count_error	#
	testl	%eax, %eax	# D.10693
	je	.L233	#,
	.loc 1 1379 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.115
	movq	(%rax), %rdx	# diagnostic_buffer.115_7->state, tmp79
	movq	%rdx, -80(%rbp)	# tmp79, os
	movq	8(%rax), %rdx	# diagnostic_buffer.115_7->state, tmp80
	movq	%rdx, -72(%rbp)	# tmp80, os
	movq	16(%rax), %rdx	# diagnostic_buffer.115_7->state, tmp81
	movq	%rdx, -64(%rbp)	# tmp81, os
	movq	24(%rax), %rdx	# diagnostic_buffer.115_7->state, tmp82
	movq	%rdx, -56(%rbp)	# tmp82, os
	movq	32(%rax), %rdx	# diagnostic_buffer.115_7->state, tmp83
	movq	%rdx, -48(%rbp)	# tmp83, os
	movq	40(%rax), %rdx	# diagnostic_buffer.115_7->state, tmp84
	movq	%rdx, -40(%rbp)	# tmp84, os
	movq	48(%rax), %rdx	# diagnostic_buffer.115_7->state, tmp85
	movq	%rdx, -32(%rbp)	# tmp85, os
	movq	56(%rax), %rdx	# diagnostic_buffer.115_7->state, tmp86
	movq	%rdx, -24(%rbp)	# tmp86, os
	movq	64(%rax), %rdx	# diagnostic_buffer.115_7->state, tmp87
	movq	%rdx, -16(%rbp)	# tmp87, os
	movq	72(%rax), %rax	# diagnostic_buffer.115_7->state, tmp88
	movq	%rax, -8(%rbp)	# tmp88, os
	.loc 1 1380 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.116
	movq	-88(%rbp), %rdx	# dc, tmp89
	movq	320(%rdx), %rdx	# dc_4(D)->message, D.10694
	movq	%rdx, 32(%rax)	# D.10694, diagnostic_buffer.116_8->state.cursor
	.loc 1 1381 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.117
	movq	-88(%rbp), %rdx	# dc, tmp90
	movq	328(%rdx), %rdx	# dc_4(D)->args_ptr, D.10695
	movq	%rdx, 40(%rax)	# D.10695, diagnostic_buffer.117_10->state.format_args
	.loc 1 1382 0
	movq	-88(%rbp), %rax	# dc, tmp91
	movq	352(%rax), %rax	# dc_4(D)->begin_diagnostic, D.10696
	movq	diagnostic_buffer(%rip), %rdx	# diagnostic_buffer, diagnostic_buffer.118
	movq	-88(%rbp), %rcx	# dc, tmp92
	movq	%rcx, %rsi	# tmp92,
	movq	%rdx, %rdi	# diagnostic_buffer.118,
	call	*%rax	# D.10696
	.loc 1 1383 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.119
	movq	%rax, %rdi	# diagnostic_buffer.119,
	call	output_format	#
	.loc 1 1384 0
	movq	-88(%rbp), %rax	# dc, tmp93
	movq	360(%rax), %rax	# dc_4(D)->end_diagnostic, D.10696
	movq	diagnostic_buffer(%rip), %rdx	# diagnostic_buffer, diagnostic_buffer.120
	movq	-88(%rbp), %rcx	# dc, tmp94
	movq	%rcx, %rsi	# tmp94,
	movq	%rdx, %rdi	# diagnostic_buffer.120,
	call	*%rax	# D.10696
	.loc 1 1385 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.121
	movq	%rax, %rdi	# global_dc.121,
	call	diagnostic_finish	#
	.loc 1 1386 0
	movq	diagnostic_buffer(%rip), %rax	# diagnostic_buffer, diagnostic_buffer.122
	movq	-80(%rbp), %rdx	# os, tmp95
	movq	%rdx, (%rax)	# tmp95, diagnostic_buffer.122_18->state
	movq	-72(%rbp), %rdx	# os, tmp96
	movq	%rdx, 8(%rax)	# tmp96, diagnostic_buffer.122_18->state
	movq	-64(%rbp), %rdx	# os, tmp97
	movq	%rdx, 16(%rax)	# tmp97, diagnostic_buffer.122_18->state
	movq	-56(%rbp), %rdx	# os, tmp98
	movq	%rdx, 24(%rax)	# tmp98, diagnostic_buffer.122_18->state
	movq	-48(%rbp), %rdx	# os, tmp99
	movq	%rdx, 32(%rax)	# tmp99, diagnostic_buffer.122_18->state
	movq	-40(%rbp), %rdx	# os, tmp100
	movq	%rdx, 40(%rax)	# tmp100, diagnostic_buffer.122_18->state
	movq	-32(%rbp), %rdx	# os, tmp101
	movq	%rdx, 48(%rax)	# tmp101, diagnostic_buffer.122_18->state
	movq	-24(%rbp), %rdx	# os, tmp102
	movq	%rdx, 56(%rax)	# tmp102, diagnostic_buffer.122_18->state
	movq	-16(%rbp), %rdx	# os, tmp103
	movq	%rdx, 64(%rax)	# tmp103, diagnostic_buffer.122_18->state
	movq	-8(%rbp), %rdx	# os, tmp104
	movq	%rdx, 72(%rax)	# tmp104, diagnostic_buffer.122_18->state
.L233:
	.loc 1 1389 0
	movl	diagnostic_lock(%rip), %eax	# diagnostic_lock, diagnostic_lock.123
	subl	$1, %eax	#, diagnostic_lock.124
	movl	%eax, diagnostic_lock(%rip)	# diagnostic_lock.124, diagnostic_lock
	.loc 1 1390 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	report_diagnostic, .-report_diagnostic
	.section	.rodata
	.align 8
.LC23:
	.string	"Internal compiler error: Error reporting routines re-entered.\n"
	.text
	.type	error_recursion, @function
error_recursion:
.LFB73:
	.loc 1 1399 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1400 0
	movl	diagnostic_lock(%rip), %eax	# diagnostic_lock, diagnostic_lock.125
	cmpl	$2, %eax	#, diagnostic_lock.125
	jg	.L235	#,
	.loc 1 1401 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.126
	movq	%rax, %rdi	# global_dc.126,
	call	diagnostic_finish	#
.L235:
	.loc 1 1403 0
	movq	stderr(%rip), %rax	# stderr, stderr.127
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# stderr.127,
	movl	$0, %eax	#,
	call	fnotice	#
	.loc 1 1405 0
	movq	stderr(%rip), %rax	# stderr, stderr.128
	movl	$.LC21, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# stderr.128,
	movl	$0, %eax	#,
	call	fnotice	#
	.loc 1 1414 0
	movl	$1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE73:
	.size	error_recursion, .-error_recursion
	.globl	trim_filename
	.type	trim_filename, @function
trim_filename:
.LFB74:
	.loc 1 1425 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 1427 0
	movq	-24(%rbp), %rax	# name, tmp77
	movq	%rax, -16(%rbp)	# tmp77, p
	movq	$this_file.9621, -8(%rbp)	#, q
	.loc 1 1431 0
	jmp	.L237	#
.L239:
	.loc 1 1437 0
	addq	$3, -16(%rbp)	#, p
.L237:
	.loc 1 1431 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp78
	movzbl	(%rax), %eax	# *p_1, D.10698
	cmpb	$46, %al	#, D.10698
	jne	.L238	#,
	.loc 1 1431 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# p, tmp79
	addq	$1, %rax	#, D.10699
	movzbl	(%rax), %eax	# *_10, D.10698
	cmpb	$46, %al	#, D.10698
	jne	.L238	#,
	.loc 1 1432 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp80
	addq	$2, %rax	#, D.10699
	movzbl	(%rax), %eax	# *_12, D.10698
	cmpb	$47, %al	#, D.10698
	je	.L239	#,
.L238:
	.loc 1 1439 0
	jmp	.L240	#
.L242:
	.loc 1 1445 0
	addq	$3, -8(%rbp)	#, q
.L240:
	.loc 1 1439 0 discriminator 1
	movq	-8(%rbp), %rax	# q, tmp81
	movzbl	(%rax), %eax	# *q_4, D.10698
	cmpb	$46, %al	#, D.10698
	jne	.L241	#,
	.loc 1 1439 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# q, tmp82
	addq	$1, %rax	#, D.10699
	movzbl	(%rax), %eax	# *_16, D.10698
	cmpb	$46, %al	#, D.10698
	jne	.L241	#,
	.loc 1 1440 0 is_stmt 1
	movq	-8(%rbp), %rax	# q, tmp83
	addq	$2, %rax	#, D.10699
	movzbl	(%rax), %eax	# *_18, D.10698
	cmpb	$47, %al	#, D.10698
	je	.L242	#,
.L241:
	.loc 1 1448 0
	jmp	.L243	#
.L245:
	.loc 1 1449 0
	addq	$1, -16(%rbp)	#, p
	addq	$1, -8(%rbp)	#, q
.L243:
	.loc 1 1448 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp84
	movzbl	(%rax), %edx	# *p_2, D.10698
	movq	-8(%rbp), %rax	# q, tmp85
	movzbl	(%rax), %eax	# *q_5, D.10698
	cmpb	%al, %dl	# D.10698, D.10698
	jne	.L244	#,
	.loc 1 1448 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# p, tmp86
	movzbl	(%rax), %eax	# *p_2, D.10698
	testb	%al, %al	# D.10698
	je	.L244	#,
	.loc 1 1448 0 discriminator 1
	movq	-8(%rbp), %rax	# q, tmp87
	movzbl	(%rax), %eax	# *q_5, D.10698
	testb	%al, %al	# D.10698
	jne	.L245	#,
.L244:
	.loc 1 1452 0 is_stmt 1
	jmp	.L246	#
.L248:
	.loc 1 1457 0
	subq	$1, -16(%rbp)	#, p
.L246:
	.loc 1 1452 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp88
	cmpq	-24(%rbp), %rax	# name, tmp88
	jbe	.L247	#,
	.loc 1 1452 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# p, tmp89
	subq	$1, %rax	#, D.10699
	movzbl	(%rax), %eax	# *_27, D.10698
	cmpb	$47, %al	#, D.10698
	jne	.L248	#,
.L247:
	.loc 1 1459 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, D.10699
	.loc 1 1460 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	trim_filename, .-trim_filename
	.section	.rodata
	.align 8
.LC24:
	.string	"Internal compiler error in %s, at %s:%d"
	.text
	.globl	fancy_abort
	.type	fancy_abort, @function
fancy_abort:
.LFB75:
	.loc 1 1470 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# file, file
	movl	%esi, -12(%rbp)	# line, line
	movq	%rdx, -24(%rbp)	# function, function
	.loc 1 1471 0
	movq	-8(%rbp), %rax	# file, tmp60
	movq	%rax, %rdi	# tmp60,
	call	trim_filename	#
	movq	%rax, %rdx	#, D.10700
	movl	-12(%rbp), %ecx	# line, tmp61
	movq	-24(%rbp), %rax	# function, tmp62
	movq	%rax, %rsi	# tmp62,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	internal_error	#
	.cfi_endproc
.LFE75:
	.size	fancy_abort, .-fancy_abort
	.globl	set_diagnostic_context
	.type	set_diagnostic_context, @function
set_diagnostic_context:
.LFB76:
	.loc 1 1487 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# dc, dc
	movq	%rsi, -16(%rbp)	# msgid, msgid
	movq	%rdx, -24(%rbp)	# args_ptr, args_ptr
	movq	%rcx, -32(%rbp)	# file, file
	movl	%r8d, -36(%rbp)	# line, line
	movl	%r9d, -40(%rbp)	# warn, warn
	.loc 1 1488 0
	movq	-8(%rbp), %rax	# dc, tmp63
	movl	$376, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	memset	#
	.loc 1 1489 0
	movq	-8(%rbp), %rax	# dc, tmp64
	movq	-16(%rbp), %rdx	# msgid, tmp65
	movq	%rdx, 320(%rax)	# tmp65, dc_1(D)->message
	.loc 1 1490 0
	movq	-8(%rbp), %rax	# dc, tmp66
	movq	-24(%rbp), %rdx	# args_ptr, tmp67
	movq	%rdx, 328(%rax)	# tmp67, dc_1(D)->args_ptr
	.loc 1 1491 0
	movq	-8(%rbp), %rax	# dc, tmp68
	movq	-32(%rbp), %rdx	# file, tmp69
	movq	%rdx, 336(%rax)	# tmp69, dc_1(D)->file
	.loc 1 1492 0
	movq	-8(%rbp), %rax	# dc, tmp70
	movl	-36(%rbp), %edx	# line, tmp71
	movl	%edx, 344(%rax)	# tmp71, dc_1(D)->line
	.loc 1 1493 0
	movq	-8(%rbp), %rax	# dc, tmp72
	movl	-40(%rbp), %edx	# warn, tmp73
	movl	%edx, 348(%rax)	# tmp73, dc_1(D)->warn
	.loc 1 1494 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.129
	movq	352(%rax), %rdx	# global_dc.129_7->begin_diagnostic, D.10702
	movq	-8(%rbp), %rax	# dc, tmp74
	movq	%rdx, 352(%rax)	# D.10702, dc_1(D)->begin_diagnostic
	.loc 1 1495 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.130
	movq	360(%rax), %rdx	# global_dc.130_9->end_diagnostic, D.10702
	movq	-8(%rbp), %rax	# dc, tmp75
	movq	%rdx, 360(%rax)	# D.10702, dc_1(D)->end_diagnostic
	.loc 1 1496 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	set_diagnostic_context, .-set_diagnostic_context
	.globl	report_problematic_module
	.type	report_problematic_module, @function
report_problematic_module:
.LFB77:
	.loc 1 1501 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# buffer, buffer
	.loc 1 1504 0
	nop
	.loc 1 1526 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	report_problematic_module, .-report_problematic_module
	.type	default_diagnostic_starter, @function
default_diagnostic_starter:
.LFB78:
	.loc 1 1532 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# dc, dc
	.loc 1 1533 0
	movq	-16(%rbp), %rax	# dc, tmp64
	movq	336(%rax), %rax	# dc_1(D)->file, D.10703
	movq	%rax, %rdi	# D.10703,
	call	report_error_function	#
	.loc 1 1535 0
	movq	-16(%rbp), %rax	# dc, tmp65
	movl	348(%rax), %edx	# dc_1(D)->warn, D.10704
	movq	-16(%rbp), %rax	# dc, tmp66
	movl	344(%rax), %ecx	# dc_1(D)->line, D.10704
	movq	-16(%rbp), %rax	# dc, tmp67
	movq	336(%rax), %rax	# dc_1(D)->file, D.10703
	movl	%ecx, %esi	# D.10704,
	movq	%rax, %rdi	# D.10703,
	call	context_as_prefix	#
	movq	%rax, %rdx	#, D.10705
	.loc 1 1534 0
	movq	-8(%rbp), %rax	# buffer, tmp68
	movq	%rdx, %rsi	# D.10705,
	movq	%rax, %rdi	# tmp68,
	call	output_set_prefix	#
	.loc 1 1538 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	default_diagnostic_starter, .-default_diagnostic_starter
	.type	default_diagnostic_finalizer, @function
default_diagnostic_finalizer:
.LFB79:
	.loc 1 1544 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# buffer, buffer
	movq	%rsi, -16(%rbp)	# dc, dc
	.loc 1 1545 0
	movq	-8(%rbp), %rax	# buffer, tmp59
	movq	%rax, %rdi	# tmp59,
	call	output_destroy_prefix	#
	.loc 1 1546 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	default_diagnostic_finalizer, .-default_diagnostic_finalizer
	.section	.rodata
	.align 8
.LC25:
	.string	"`%s' is deprecated (declared at %s:%d)"
.LC26:
	.string	"`%s' is deprecated"
	.align 8
.LC27:
	.string	"type is deprecated (declared at %s:%d)"
.LC28:
	.string	"type is deprecated"
	.text
	.globl	warn_deprecated_use
	.type	warn_deprecated_use, @function
warn_deprecated_use:
.LFB80:
	.loc 1 1551 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# node, node
	.loc 1 1552 0
	cmpq	$0, -24(%rbp)	#, node
	je	.L257	#,
	.loc 1 1552 0 is_stmt 0 discriminator 1
	movl	warn_deprecated_decl(%rip), %eax	# warn_deprecated_decl, warn_deprecated_decl.135
	testl	%eax, %eax	# warn_deprecated_decl.135
	jne	.L258	#,
.L257:
	.loc 1 1553 0 is_stmt 1
	jmp	.L256	#
.L258:
	.loc 1 1555 0
	movq	-24(%rbp), %rax	# node, tmp83
	movzbl	16(%rax), %eax	# node_2(D)->common.code, D.10706
	movzbl	%al, %eax	# D.10706, D.10707
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.10708
	cmpb	$100, %al	#, D.10708
	jne	.L260	#,
	.loc 1 1556 0
	movq	-24(%rbp), %rax	# node, tmp85
	movl	32(%rax), %ecx	# node_2(D)->decl.linenum, D.10707
	movq	-24(%rbp), %rax	# node, tmp86
	movq	24(%rax), %rdx	# node_2(D)->decl.filename, D.10709
	.loc 1 1557 0
	movq	-24(%rbp), %rax	# node, tmp87
	movq	72(%rax), %rax	# node_2(D)->decl.name, D.10710
	movq	32(%rax), %rax	# _9->identifier.id.str, D.10711
	.loc 1 1556 0
	movq	%rax, %rsi	# D.10711,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L256	#
.L260:
	.loc 1 1559 0
	movq	-24(%rbp), %rax	# node, tmp88
	movzbl	16(%rax), %eax	# node_2(D)->common.code, D.10706
	movzbl	%al, %eax	# D.10706, D.10707
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.10708
	cmpb	$116, %al	#, D.10708
	jne	.L256	#,
.LBB46:
	.loc 1 1561 0
	movq	$0, -16(%rbp)	#, what
	.loc 1 1562 0
	movq	-24(%rbp), %rax	# node, tmp90
	movq	(%rax), %rax	# node_2(D)->common.chain, tmp91
	movq	%rax, -8(%rbp)	# tmp91, decl
	.loc 1 1564 0
	movq	-24(%rbp), %rax	# node, tmp92
	movq	96(%rax), %rax	# node_2(D)->type.name, D.10710
	movzbl	16(%rax), %eax	# _16->common.code, D.10706
	cmpb	$1, %al	#, D.10706
	jne	.L261	#,
	.loc 1 1565 0
	movq	-24(%rbp), %rax	# node, tmp93
	movq	96(%rax), %rax	# node_2(D)->type.name, D.10710
	movq	32(%rax), %rax	# _18->identifier.id.str, tmp94
	movq	%rax, -16(%rbp)	# tmp94, what
	jmp	.L262	#
.L261:
	.loc 1 1566 0
	movq	-24(%rbp), %rax	# node, tmp95
	movq	96(%rax), %rax	# node_2(D)->type.name, D.10710
	movzbl	16(%rax), %eax	# _20->common.code, D.10706
	cmpb	$33, %al	#, D.10706
	jne	.L262	#,
	.loc 1 1567 0
	movq	-24(%rbp), %rax	# node, tmp96
	movq	96(%rax), %rax	# node_2(D)->type.name, D.10710
	movq	72(%rax), %rax	# _22->decl.name, D.10710
	testq	%rax, %rax	# D.10710
	je	.L262	#,
	.loc 1 1568 0
	movq	-24(%rbp), %rax	# node, tmp97
	movq	96(%rax), %rax	# node_2(D)->type.name, D.10710
	movq	72(%rax), %rax	# _24->decl.name, D.10710
	movq	32(%rax), %rax	# _25->identifier.id.str, tmp98
	movq	%rax, -16(%rbp)	# tmp98, what
.L262:
	.loc 1 1570 0
	cmpq	$0, -16(%rbp)	#, what
	je	.L263	#,
	.loc 1 1572 0
	cmpq	$0, -8(%rbp)	#, decl
	je	.L264	#,
	.loc 1 1573 0
	movq	-8(%rbp), %rax	# decl, tmp99
	movl	32(%rax), %ecx	# decl_15->decl.linenum, D.10707
	movq	-8(%rbp), %rax	# decl, tmp100
	movq	24(%rax), %rdx	# decl_15->decl.filename, D.10709
	movq	-16(%rbp), %rax	# what, tmp101
	movq	%rax, %rsi	# tmp101,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L256	#
.L264:
	.loc 1 1576 0
	movq	-16(%rbp), %rax	# what, tmp102
	movq	%rax, %rsi	# tmp102,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L256	#
.L263:
	.loc 1 1578 0
	cmpq	$0, -8(%rbp)	#, decl
	je	.L266	#,
	.loc 1 1579 0
	movq	-8(%rbp), %rax	# decl, tmp103
	movl	32(%rax), %edx	# decl_15->decl.linenum, D.10707
	movq	-8(%rbp), %rax	# decl, tmp104
	movq	24(%rax), %rax	# decl_15->decl.filename, D.10709
	movq	%rax, %rsi	# D.10709,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L256	#
.L266:
	.loc 1 1582 0
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L256:
.LBE46:
	.loc 1 1584 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	warn_deprecated_use, .-warn_deprecated_use
	.section	.rodata
	.type	__FUNCTION__.9431, @object
	.size	__FUNCTION__.9431, 14
__FUNCTION__.9431:
	.string	"output_format"
	.align 16
	.type	__FUNCTION__.9471, @object
	.size	__FUNCTION__.9471, 17
__FUNCTION__.9471:
	.string	"format_with_decl"
	.local	warning_message.9489
	.comm	warning_message.9489,4,4
	.type	this_file.9621, @object
	.size	this_file.9621, 13
this_file.9621:
	.string	"diagnostic.c"
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
	.file 14 "input.h"
	.file 15 "diagnostic.h"
	.file 16 "./safe-ctype.h"
	.file 17 "flags.h"
	.file 18 "toplev.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x370d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF789
	.byte	0x1
	.long	.LASF790
	.long	.LASF791
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
	.long	.LASF792
	.byte	0xd0
	.byte	0x2
	.value	0x744
	.long	0xfe
	.uleb128 0x7
	.long	.LASF1
	.byte	0x2
	.value	0x746
	.long	0xc74
	.uleb128 0x7
	.long	.LASF2
	.byte	0x2
	.value	0x747
	.long	0xe34
	.uleb128 0x7
	.long	.LASF3
	.byte	0x2
	.value	0x748
	.long	0xe97
	.uleb128 0x7
	.long	.LASF4
	.byte	0x2
	.value	0x749
	.long	0xf50
	.uleb128 0x7
	.long	.LASF5
	.byte	0x2
	.value	0x74a
	.long	0xecc
	.uleb128 0x7
	.long	.LASF6
	.byte	0x2
	.value	0x74b
	.long	0xf0e
	.uleb128 0x7
	.long	.LASF7
	.byte	0x2
	.value	0x74c
	.long	0x10ce
	.uleb128 0x7
	.long	.LASF8
	.byte	0x2
	.value	0x74d
	.long	0x150c
	.uleb128 0x7
	.long	.LASF9
	.byte	0x2
	.value	0x74e
	.long	0x125d
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.value	0x74f
	.long	0x10f5
	.uleb128 0x8
	.string	"vec"
	.byte	0x2
	.value	0x750
	.long	0x112a
	.uleb128 0x8
	.string	"exp"
	.byte	0x2
	.value	0x751
	.long	0x116d
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.value	0x752
	.long	0x11a2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF13
	.byte	0x4
	.byte	0x28
	.long	0x117
	.uleb128 0xb
	.long	0x127
	.long	0x127
	.uleb128 0xc
	.long	0x105
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF31
	.byte	0x18
	.byte	0x5
	.byte	0
	.long	0x164
	.uleb128 0xe
	.long	.LASF14
	.byte	0x5
	.byte	0
	.long	0x164
	.byte	0
	.uleb128 0xe
	.long	.LASF15
	.byte	0x5
	.byte	0
	.long	0x164
	.byte	0x4
	.uleb128 0xe
	.long	.LASF16
	.byte	0x5
	.byte	0
	.long	0x16b
	.byte	0x8
	.uleb128 0xe
	.long	.LASF17
	.byte	0x5
	.byte	0
	.long	0x16b
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF18
	.uleb128 0xf
	.byte	0x8
	.uleb128 0x5
	.long	.LASF19
	.byte	0x4
	.byte	0x62
	.long	0x10c
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF20
	.uleb128 0x5
	.long	.LASF21
	.byte	0x6
	.byte	0xd4
	.long	0x18a
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF22
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF23
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF24
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF25
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF26
	.uleb128 0x5
	.long	.LASF27
	.byte	0x7
	.byte	0x8c
	.long	0x178
	.uleb128 0x5
	.long	.LASF28
	.byte	0x7
	.byte	0x8d
	.long	0x178
	.uleb128 0x3
	.byte	0x8
	.long	0x1c9
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF29
	.uleb128 0x5
	.long	.LASF30
	.byte	0x8
	.byte	0x30
	.long	0x1db
	.uleb128 0xd
	.long	.LASF32
	.byte	0xd8
	.byte	0x9
	.byte	0xf6
	.long	0x35c
	.uleb128 0xe
	.long	.LASF33
	.byte	0x9
	.byte	0xf7
	.long	0xfe
	.byte	0
	.uleb128 0xe
	.long	.LASF34
	.byte	0x9
	.byte	0xfc
	.long	0x1c3
	.byte	0x8
	.uleb128 0xe
	.long	.LASF35
	.byte	0x9
	.byte	0xfd
	.long	0x1c3
	.byte	0x10
	.uleb128 0xe
	.long	.LASF36
	.byte	0x9
	.byte	0xfe
	.long	0x1c3
	.byte	0x18
	.uleb128 0xe
	.long	.LASF37
	.byte	0x9
	.byte	0xff
	.long	0x1c3
	.byte	0x20
	.uleb128 0x10
	.long	.LASF38
	.byte	0x9
	.value	0x100
	.long	0x1c3
	.byte	0x28
	.uleb128 0x10
	.long	.LASF39
	.byte	0x9
	.value	0x101
	.long	0x1c3
	.byte	0x30
	.uleb128 0x10
	.long	.LASF40
	.byte	0x9
	.value	0x102
	.long	0x1c3
	.byte	0x38
	.uleb128 0x10
	.long	.LASF41
	.byte	0x9
	.value	0x103
	.long	0x1c3
	.byte	0x40
	.uleb128 0x10
	.long	.LASF42
	.byte	0x9
	.value	0x105
	.long	0x1c3
	.byte	0x48
	.uleb128 0x10
	.long	.LASF43
	.byte	0x9
	.value	0x106
	.long	0x1c3
	.byte	0x50
	.uleb128 0x10
	.long	.LASF44
	.byte	0x9
	.value	0x107
	.long	0x1c3
	.byte	0x58
	.uleb128 0x10
	.long	.LASF45
	.byte	0x9
	.value	0x109
	.long	0x3a4
	.byte	0x60
	.uleb128 0x10
	.long	.LASF46
	.byte	0x9
	.value	0x10b
	.long	0x3aa
	.byte	0x68
	.uleb128 0x10
	.long	.LASF47
	.byte	0x9
	.value	0x10d
	.long	0xfe
	.byte	0x70
	.uleb128 0x10
	.long	.LASF48
	.byte	0x9
	.value	0x111
	.long	0xfe
	.byte	0x74
	.uleb128 0x10
	.long	.LASF49
	.byte	0x9
	.value	0x113
	.long	0x1ad
	.byte	0x78
	.uleb128 0x10
	.long	.LASF50
	.byte	0x9
	.value	0x117
	.long	0x198
	.byte	0x80
	.uleb128 0x10
	.long	.LASF51
	.byte	0x9
	.value	0x118
	.long	0x19f
	.byte	0x82
	.uleb128 0x10
	.long	.LASF52
	.byte	0x9
	.value	0x119
	.long	0x3b0
	.byte	0x83
	.uleb128 0x10
	.long	.LASF53
	.byte	0x9
	.value	0x11d
	.long	0x3c0
	.byte	0x88
	.uleb128 0x10
	.long	.LASF54
	.byte	0x9
	.value	0x126
	.long	0x1b8
	.byte	0x90
	.uleb128 0x10
	.long	.LASF55
	.byte	0x9
	.value	0x12f
	.long	0x16b
	.byte	0x98
	.uleb128 0x10
	.long	.LASF56
	.byte	0x9
	.value	0x130
	.long	0x16b
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF57
	.byte	0x9
	.value	0x131
	.long	0x16b
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF58
	.byte	0x9
	.value	0x132
	.long	0x16b
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF59
	.byte	0x9
	.value	0x133
	.long	0x17f
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF60
	.byte	0x9
	.value	0x135
	.long	0xfe
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF61
	.byte	0x9
	.value	0x137
	.long	0x3c6
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	0x1c9
	.long	0x36c
	.uleb128 0xc
	.long	0x105
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.long	.LASF793
	.byte	0x9
	.byte	0x9b
	.uleb128 0xd
	.long	.LASF62
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x3a4
	.uleb128 0xe
	.long	.LASF63
	.byte	0x9
	.byte	0xa2
	.long	0x3a4
	.byte	0
	.uleb128 0xe
	.long	.LASF64
	.byte	0x9
	.byte	0xa3
	.long	0x3aa
	.byte	0x8
	.uleb128 0xe
	.long	.LASF65
	.byte	0x9
	.byte	0xa7
	.long	0xfe
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x373
	.uleb128 0x3
	.byte	0x8
	.long	0x1db
	.uleb128 0xb
	.long	0x1c9
	.long	0x3c0
	.uleb128 0xc
	.long	0x105
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x36c
	.uleb128 0xb
	.long	0x1c9
	.long	0x3d6
	.uleb128 0xc
	.long	0x105
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3dc
	.uleb128 0x12
	.long	0x1c9
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x2c
	.long	0x462
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
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF84
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF85
	.uleb128 0x15
	.long	.LASF146
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.long	0x5e5
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
	.long	0x62e
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
	.long	0xa07
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
	.long	0xc74
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
	.uleb128 0xd
	.long	.LASF404
	.byte	0x18
	.byte	0x2
	.byte	0x79
	.long	0xe10
	.uleb128 0xe
	.long	.LASF405
	.byte	0x2
	.byte	0x7b
	.long	0x43
	.byte	0
	.uleb128 0xe
	.long	.LASF9
	.byte	0x2
	.byte	0x7c
	.long	0x43
	.byte	0x8
	.uleb128 0x16
	.long	.LASF406
	.byte	0x2
	.byte	0x7e
	.long	0x164
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x16
	.long	.LASF407
	.byte	0x2
	.byte	0x80
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x16
	.long	.LASF408
	.byte	0x2
	.byte	0x81
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x16
	.long	.LASF409
	.byte	0x2
	.byte	0x82
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x16
	.long	.LASF410
	.byte	0x2
	.byte	0x83
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x16
	.long	.LASF411
	.byte	0x2
	.byte	0x84
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x16
	.long	.LASF412
	.byte	0x2
	.byte	0x85
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x16
	.long	.LASF413
	.byte	0x2
	.byte	0x86
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x16
	.long	.LASF414
	.byte	0x2
	.byte	0x87
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x16
	.long	.LASF415
	.byte	0x2
	.byte	0x89
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x16
	.long	.LASF416
	.byte	0x2
	.byte	0x8a
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x16
	.long	.LASF417
	.byte	0x2
	.byte	0x8b
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x16
	.long	.LASF418
	.byte	0x2
	.byte	0x8c
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x16
	.long	.LASF419
	.byte	0x2
	.byte	0x8d
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x16
	.long	.LASF420
	.byte	0x2
	.byte	0x8e
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x16
	.long	.LASF421
	.byte	0x2
	.byte	0x8f
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x16
	.long	.LASF422
	.byte	0x2
	.byte	0x90
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x16
	.long	.LASF423
	.byte	0x2
	.byte	0x92
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x16
	.long	.LASF424
	.byte	0x2
	.byte	0x93
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x16
	.long	.LASF425
	.byte	0x2
	.byte	0x94
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x16
	.long	.LASF426
	.byte	0x2
	.byte	0x95
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x16
	.long	.LASF427
	.byte	0x2
	.byte	0x96
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x16
	.long	.LASF428
	.byte	0x2
	.byte	0x97
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.long	.LASF429
	.byte	0x2
	.byte	0x98
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x16
	.long	.LASF430
	.byte	0x2
	.byte	0x99
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.byte	0x10
	.byte	0x2
	.value	0x2c9
	.long	0xe34
	.uleb128 0x18
	.string	"low"
	.byte	0x2
	.value	0x2ca
	.long	0x18a
	.byte	0
	.uleb128 0x10
	.long	.LASF431
	.byte	0x2
	.value	0x2cb
	.long	0x178
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF432
	.byte	0x30
	.byte	0x2
	.value	0x2c1
	.long	0xe69
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x2c3
	.long	0xc74
	.byte	0
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF2
	.byte	0x2
	.value	0x2cc
	.long	0xe10
	.byte	0x20
	.byte	0
	.uleb128 0x1a
	.byte	0x18
	.byte	0xb
	.byte	0x6b
	.long	0xe7c
	.uleb128 0x1b
	.string	"r"
	.byte	0xb
	.byte	0x6c
	.long	0xe7c
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x178
	.long	0xe8c
	.uleb128 0xc
	.long	0x105
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF433
	.byte	0xb
	.byte	0x6d
	.long	0xe69
	.uleb128 0x19
	.long	.LASF434
	.byte	0x38
	.byte	0x2
	.value	0x2de
	.long	0xecc
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x2e0
	.long	0xc74
	.byte	0
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF3
	.byte	0x2
	.value	0x2e2
	.long	0xe8c
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.long	.LASF435
	.byte	0x30
	.byte	0x2
	.value	0x2e9
	.long	0xf0e
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x2eb
	.long	0xc74
	.byte	0
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF436
	.byte	0x2
	.value	0x2ed
	.long	0xfe
	.byte	0x20
	.uleb128 0x10
	.long	.LASF437
	.byte	0x2
	.value	0x2ee
	.long	0x3d6
	.byte	0x28
	.byte	0
	.uleb128 0x19
	.long	.LASF438
	.byte	0x30
	.byte	0x2
	.value	0x2f5
	.long	0xf50
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x2f7
	.long	0xc74
	.byte	0
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF439
	.byte	0x2
	.value	0x2f9
	.long	0x43
	.byte	0x20
	.uleb128 0x10
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
	.long	0xf85
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x302
	.long	0xc74
	.byte	0
	.uleb128 0x18
	.string	"rtl"
	.byte	0x2
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF442
	.byte	0x2
	.value	0x304
	.long	0x43
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.long	.LASF443
	.byte	0x18
	.byte	0xc
	.byte	0xa1
	.long	0xfb6
	.uleb128 0xe
	.long	.LASF444
	.byte	0xc
	.byte	0xa3
	.long	0x1c3
	.byte	0
	.uleb128 0xe
	.long	.LASF445
	.byte	0xc
	.byte	0xa4
	.long	0xfb6
	.byte	0x8
	.uleb128 0xe
	.long	.LASF446
	.byte	0xc
	.byte	0xa5
	.long	0x35c
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf85
	.uleb128 0xd
	.long	.LASF447
	.byte	0x58
	.byte	0xc
	.byte	0xa8
	.long	0x106e
	.uleb128 0xe
	.long	.LASF448
	.byte	0xc
	.byte	0xaa
	.long	0x178
	.byte	0
	.uleb128 0xe
	.long	.LASF449
	.byte	0xc
	.byte	0xab
	.long	0xfb6
	.byte	0x8
	.uleb128 0xe
	.long	.LASF450
	.byte	0xc
	.byte	0xac
	.long	0x1c3
	.byte	0x10
	.uleb128 0xe
	.long	.LASF451
	.byte	0xc
	.byte	0xad
	.long	0x1c3
	.byte	0x18
	.uleb128 0xe
	.long	.LASF452
	.byte	0xc
	.byte	0xae
	.long	0x1c3
	.byte	0x20
	.uleb128 0xe
	.long	.LASF453
	.byte	0xc
	.byte	0xaf
	.long	0x178
	.byte	0x28
	.uleb128 0xe
	.long	.LASF454
	.byte	0xc
	.byte	0xb0
	.long	0xfe
	.byte	0x30
	.uleb128 0xe
	.long	.LASF455
	.byte	0xc
	.byte	0xb5
	.long	0x1082
	.byte	0x38
	.uleb128 0xe
	.long	.LASF456
	.byte	0xc
	.byte	0xb6
	.long	0x1098
	.byte	0x40
	.uleb128 0xe
	.long	.LASF457
	.byte	0xc
	.byte	0xb7
	.long	0x16b
	.byte	0x48
	.uleb128 0x16
	.long	.LASF458
	.byte	0xc
	.byte	0xbd
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x16
	.long	.LASF459
	.byte	0xc
	.byte	0xbe
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x16
	.long	.LASF460
	.byte	0xc
	.byte	0xc2
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x1c
	.long	0xfb6
	.long	0x1082
	.uleb128 0x1d
	.long	0x16b
	.uleb128 0x1d
	.long	0x178
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x106e
	.uleb128 0x1e
	.long	0x1098
	.uleb128 0x1d
	.long	0x16b
	.uleb128 0x1d
	.long	0xfb6
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1088
	.uleb128 0xd
	.long	.LASF461
	.byte	0x10
	.byte	0xd
	.byte	0x1a
	.long	0x10c3
	.uleb128 0x1b
	.string	"len"
	.byte	0xd
	.byte	0x1c
	.long	0x164
	.byte	0
	.uleb128 0x1b
	.string	"str"
	.byte	0xd
	.byte	0x1d
	.long	0x10c3
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10c9
	.uleb128 0x12
	.long	0x191
	.uleb128 0x19
	.long	.LASF462
	.byte	0x28
	.byte	0x2
	.value	0x317
	.long	0x10f5
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x319
	.long	0xc74
	.byte	0
	.uleb128 0x18
	.string	"id"
	.byte	0x2
	.value	0x31a
	.long	0x109e
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.long	.LASF463
	.byte	0x28
	.byte	0x2
	.value	0x321
	.long	0x112a
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x323
	.long	0xc74
	.byte	0
	.uleb128 0x10
	.long	.LASF464
	.byte	0x2
	.value	0x324
	.long	0x43
	.byte	0x18
	.uleb128 0x10
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
	.long	0x115d
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x330
	.long	0xc74
	.byte	0
	.uleb128 0x10
	.long	.LASF436
	.byte	0x2
	.value	0x331
	.long	0xfe
	.byte	0x18
	.uleb128 0x18
	.string	"a"
	.byte	0x2
	.value	0x332
	.long	0x115d
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	0x43
	.long	0x116d
	.uleb128 0xc
	.long	0x105
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF467
	.byte	0x28
	.byte	0x2
	.value	0x36f
	.long	0x11a2
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x371
	.long	0xc74
	.byte	0
	.uleb128 0x10
	.long	.LASF468
	.byte	0x2
	.value	0x372
	.long	0xfe
	.byte	0x18
	.uleb128 0x10
	.long	.LASF469
	.byte	0x2
	.value	0x373
	.long	0x115d
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.long	.LASF470
	.byte	0x50
	.byte	0x2
	.value	0x3a3
	.long	0x123b
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x3a5
	.long	0xc74
	.byte	0
	.uleb128 0x1f
	.long	.LASF471
	.byte	0x2
	.value	0x3a7
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF472
	.byte	0x2
	.value	0x3a8
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF473
	.byte	0x2
	.value	0x3a9
	.long	0x164
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x10
	.long	.LASF474
	.byte	0x2
	.value	0x3ab
	.long	0x43
	.byte	0x20
	.uleb128 0x10
	.long	.LASF475
	.byte	0x2
	.value	0x3ac
	.long	0x43
	.byte	0x28
	.uleb128 0x10
	.long	.LASF476
	.byte	0x2
	.value	0x3ad
	.long	0x43
	.byte	0x30
	.uleb128 0x10
	.long	.LASF477
	.byte	0x2
	.value	0x3ae
	.long	0x43
	.byte	0x38
	.uleb128 0x10
	.long	.LASF478
	.byte	0x2
	.value	0x3af
	.long	0x43
	.byte	0x40
	.uleb128 0x10
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
	.long	0x125d
	.uleb128 0x7
	.long	.LASF480
	.byte	0x2
	.value	0x4d8
	.long	0xfe
	.uleb128 0x7
	.long	.LASF437
	.byte	0x2
	.value	0x4d8
	.long	0x1c3
	.byte	0
	.uleb128 0x19
	.long	.LASF481
	.byte	0xa8
	.byte	0x2
	.value	0x4b8
	.long	0x1472
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x4ba
	.long	0xc74
	.byte	0
	.uleb128 0x10
	.long	.LASF482
	.byte	0x2
	.value	0x4bb
	.long	0x43
	.byte	0x18
	.uleb128 0x10
	.long	.LASF483
	.byte	0x2
	.value	0x4bc
	.long	0x43
	.byte	0x20
	.uleb128 0x10
	.long	.LASF484
	.byte	0x2
	.value	0x4bd
	.long	0x43
	.byte	0x28
	.uleb128 0x10
	.long	.LASF485
	.byte	0x2
	.value	0x4be
	.long	0x43
	.byte	0x30
	.uleb128 0x18
	.string	"uid"
	.byte	0x2
	.value	0x4bf
	.long	0x164
	.byte	0x38
	.uleb128 0x1f
	.long	.LASF486
	.byte	0x2
	.value	0x4c1
	.long	0x164
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF487
	.byte	0x2
	.value	0x4c2
	.long	0x164
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF488
	.byte	0x2
	.value	0x4c4
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF489
	.byte	0x2
	.value	0x4c5
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF490
	.byte	0x2
	.value	0x4c6
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF491
	.byte	0x2
	.value	0x4c7
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF492
	.byte	0x2
	.value	0x4c8
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF493
	.byte	0x2
	.value	0x4c9
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF494
	.byte	0x2
	.value	0x4ca
	.long	0x164
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF423
	.byte	0x2
	.value	0x4cc
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF424
	.byte	0x2
	.value	0x4cd
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF425
	.byte	0x2
	.value	0x4ce
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF426
	.byte	0x2
	.value	0x4cf
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF427
	.byte	0x2
	.value	0x4d0
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF428
	.byte	0x2
	.value	0x4d1
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF429
	.byte	0x2
	.value	0x4d2
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF495
	.byte	0x2
	.value	0x4d3
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x10
	.long	.LASF496
	.byte	0x2
	.value	0x4d5
	.long	0x164
	.byte	0x40
	.uleb128 0x10
	.long	.LASF497
	.byte	0x2
	.value	0x4d6
	.long	0x43
	.byte	0x48
	.uleb128 0x10
	.long	.LASF498
	.byte	0x2
	.value	0x4d7
	.long	0x43
	.byte	0x50
	.uleb128 0x10
	.long	.LASF499
	.byte	0x2
	.value	0x4d8
	.long	0x123b
	.byte	0x58
	.uleb128 0x10
	.long	.LASF500
	.byte	0x2
	.value	0x4d9
	.long	0x43
	.byte	0x60
	.uleb128 0x10
	.long	.LASF501
	.byte	0x2
	.value	0x4da
	.long	0x43
	.byte	0x68
	.uleb128 0x10
	.long	.LASF502
	.byte	0x2
	.value	0x4db
	.long	0x43
	.byte	0x70
	.uleb128 0x10
	.long	.LASF503
	.byte	0x2
	.value	0x4dc
	.long	0x43
	.byte	0x78
	.uleb128 0x10
	.long	.LASF504
	.byte	0x2
	.value	0x4dd
	.long	0x43
	.byte	0x80
	.uleb128 0x10
	.long	.LASF505
	.byte	0x2
	.value	0x4de
	.long	0x43
	.byte	0x88
	.uleb128 0x10
	.long	.LASF506
	.byte	0x2
	.value	0x4df
	.long	0x43
	.byte	0x90
	.uleb128 0x10
	.long	.LASF507
	.byte	0x2
	.value	0x4e0
	.long	0x178
	.byte	0x98
	.uleb128 0x10
	.long	.LASF508
	.byte	0x2
	.value	0x4e2
	.long	0x1477
	.byte	0xa0
	.byte	0
	.uleb128 0x4
	.long	.LASF510
	.uleb128 0x3
	.byte	0x8
	.long	0x1472
	.uleb128 0x17
	.byte	0x4
	.byte	0x2
	.value	0x717
	.long	0x14a7
	.uleb128 0x1f
	.long	.LASF496
	.byte	0x2
	.value	0x717
	.long	0x164
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF511
	.byte	0x2
	.value	0x717
	.long	0x164
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x2
	.value	0x70e
	.long	0x14cf
	.uleb128 0x8
	.string	"f"
	.byte	0x2
	.value	0x711
	.long	0xa07
	.uleb128 0x8
	.string	"i"
	.byte	0x2
	.value	0x714
	.long	0x178
	.uleb128 0x8
	.string	"a"
	.byte	0x2
	.value	0x717
	.long	0x147d
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x2
	.value	0x72c
	.long	0x1501
	.uleb128 0x8
	.string	"f"
	.byte	0x2
	.value	0x72d
	.long	0x1506
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
	.long	0xfe
	.byte	0
	.uleb128 0x4
	.long	.LASF512
	.uleb128 0x3
	.byte	0x8
	.long	0x1501
	.uleb128 0x19
	.long	.LASF513
	.byte	0xd0
	.byte	0x2
	.value	0x6dc
	.long	0x1890
	.uleb128 0x10
	.long	.LASF1
	.byte	0x2
	.value	0x6de
	.long	0xc74
	.byte	0
	.uleb128 0x10
	.long	.LASF514
	.byte	0x2
	.value	0x6df
	.long	0x3d6
	.byte	0x18
	.uleb128 0x10
	.long	.LASF515
	.byte	0x2
	.value	0x6e0
	.long	0xfe
	.byte	0x20
	.uleb128 0x18
	.string	"uid"
	.byte	0x2
	.value	0x6e1
	.long	0x164
	.byte	0x24
	.uleb128 0x10
	.long	.LASF483
	.byte	0x2
	.value	0x6e2
	.long	0x43
	.byte	0x28
	.uleb128 0x1f
	.long	.LASF487
	.byte	0x2
	.value	0x6e3
	.long	0x164
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF516
	.byte	0x2
	.value	0x6e5
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF517
	.byte	0x2
	.value	0x6e6
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF518
	.byte	0x2
	.value	0x6e7
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF519
	.byte	0x2
	.value	0x6e8
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF520
	.byte	0x2
	.value	0x6e9
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF521
	.byte	0x2
	.value	0x6ea
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF522
	.byte	0x2
	.value	0x6eb
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF472
	.byte	0x2
	.value	0x6ec
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF523
	.byte	0x2
	.value	0x6ee
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF524
	.byte	0x2
	.value	0x6ef
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF525
	.byte	0x2
	.value	0x6f0
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF526
	.byte	0x2
	.value	0x6f1
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF527
	.byte	0x2
	.value	0x6f2
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF528
	.byte	0x2
	.value	0x6f3
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF529
	.byte	0x2
	.value	0x6f4
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF530
	.byte	0x2
	.value	0x6f5
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF531
	.byte	0x2
	.value	0x6f7
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF532
	.byte	0x2
	.value	0x6f8
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF533
	.byte	0x2
	.value	0x6f9
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF534
	.byte	0x2
	.value	0x6fa
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF535
	.byte	0x2
	.value	0x6fb
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF536
	.byte	0x2
	.value	0x6fc
	.long	0x164
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF537
	.byte	0x2
	.value	0x6fd
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF494
	.byte	0x2
	.value	0x6ff
	.long	0x164
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF538
	.byte	0x2
	.value	0x700
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF495
	.byte	0x2
	.value	0x701
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF539
	.byte	0x2
	.value	0x702
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF423
	.byte	0x2
	.value	0x705
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF424
	.byte	0x2
	.value	0x706
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF425
	.byte	0x2
	.value	0x707
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF426
	.byte	0x2
	.value	0x708
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF427
	.byte	0x2
	.value	0x709
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF428
	.byte	0x2
	.value	0x70a
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF429
	.byte	0x2
	.value	0x70b
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF540
	.byte	0x2
	.value	0x70c
	.long	0x164
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x18
	.string	"u1"
	.byte	0x2
	.value	0x718
	.long	0x14a7
	.byte	0x38
	.uleb128 0x10
	.long	.LASF484
	.byte	0x2
	.value	0x71a
	.long	0x43
	.byte	0x40
	.uleb128 0x10
	.long	.LASF500
	.byte	0x2
	.value	0x71b
	.long	0x43
	.byte	0x48
	.uleb128 0x10
	.long	.LASF506
	.byte	0x2
	.value	0x71c
	.long	0x43
	.byte	0x50
	.uleb128 0x10
	.long	.LASF541
	.byte	0x2
	.value	0x71d
	.long	0x43
	.byte	0x58
	.uleb128 0x10
	.long	.LASF542
	.byte	0x2
	.value	0x71e
	.long	0x43
	.byte	0x60
	.uleb128 0x10
	.long	.LASF543
	.byte	0x2
	.value	0x71f
	.long	0x43
	.byte	0x68
	.uleb128 0x10
	.long	.LASF477
	.byte	0x2
	.value	0x720
	.long	0x43
	.byte	0x70
	.uleb128 0x10
	.long	.LASF544
	.byte	0x2
	.value	0x721
	.long	0x43
	.byte	0x78
	.uleb128 0x10
	.long	.LASF545
	.byte	0x2
	.value	0x722
	.long	0x43
	.byte	0x80
	.uleb128 0x10
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
	.uleb128 0x10
	.long	.LASF546
	.byte	0x2
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x18
	.string	"u2"
	.byte	0x2
	.value	0x731
	.long	0x14cf
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF547
	.byte	0x2
	.value	0x734
	.long	0x43
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF548
	.byte	0x2
	.value	0x738
	.long	0x43
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF549
	.byte	0x2
	.value	0x73a
	.long	0x43
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF550
	.byte	0x2
	.value	0x73b
	.long	0x178
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF508
	.byte	0x2
	.value	0x73d
	.long	0x1895
	.byte	0xc8
	.byte	0
	.uleb128 0x4
	.long	.LASF551
	.uleb128 0x3
	.byte	0x8
	.long	0x1890
	.uleb128 0x21
	.long	.LASF552
	.byte	0x4
	.byte	0x2
	.value	0x757
	.long	0x19e1
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
	.long	0x1a37
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
	.uleb128 0x12
	.long	0x3d6
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.long	.LASF618
	.uleb128 0x21
	.long	.LASF619
	.byte	0x4
	.byte	0x2
	.value	0x972
	.long	0x1a7b
	.uleb128 0x14
	.long	.LASF620
	.sleb128 0
	.uleb128 0x14
	.long	.LASF621
	.sleb128 1
	.uleb128 0x14
	.long	.LASF622
	.sleb128 2
	.uleb128 0x14
	.long	.LASF623
	.sleb128 3
	.uleb128 0x14
	.long	.LASF624
	.sleb128 4
	.uleb128 0x14
	.long	.LASF625
	.sleb128 5
	.uleb128 0x14
	.long	.LASF626
	.sleb128 6
	.byte	0
	.uleb128 0xd
	.long	.LASF627
	.byte	0x18
	.byte	0xe
	.byte	0x22
	.long	0x1ab8
	.uleb128 0xe
	.long	.LASF500
	.byte	0xe
	.byte	0x24
	.long	0x3d6
	.byte	0
	.uleb128 0xe
	.long	.LASF628
	.byte	0xe
	.byte	0x25
	.long	0x1ab8
	.byte	0x8
	.uleb128 0xe
	.long	.LASF629
	.byte	0xe
	.byte	0x26
	.long	0xfe
	.byte	0x10
	.uleb128 0xe
	.long	.LASF630
	.byte	0xe
	.byte	0x27
	.long	0xfe
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a7b
	.uleb128 0x5
	.long	.LASF631
	.byte	0xf
	.byte	0x1c
	.long	0x1ac9
	.uleb128 0x22
	.long	.LASF631
	.value	0x140
	.byte	0xf
	.byte	0x63
	.long	0x1b20
	.uleb128 0xe
	.long	.LASF632
	.byte	0xf
	.byte	0x69
	.long	0x1ce5
	.byte	0
	.uleb128 0xe
	.long	.LASF633
	.byte	0xf
	.byte	0x6c
	.long	0x1cf0
	.byte	0x50
	.uleb128 0xe
	.long	.LASF447
	.byte	0xf
	.byte	0x6f
	.long	0xfbc
	.byte	0x58
	.uleb128 0xe
	.long	.LASF634
	.byte	0xf
	.byte	0x72
	.long	0xfe
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF635
	.byte	0xf
	.byte	0x76
	.long	0x1cf6
	.byte	0xb4
	.uleb128 0x23
	.long	.LASF636
	.byte	0xf
	.byte	0x82
	.long	0x1c2e
	.value	0x138
	.byte	0
	.uleb128 0x5
	.long	.LASF637
	.byte	0xf
	.byte	0x1d
	.long	0x1b2b
	.uleb128 0x22
	.long	.LASF637
	.value	0x178
	.byte	0xf
	.byte	0xa2
	.long	0x1bad
	.uleb128 0xe
	.long	.LASF638
	.byte	0xf
	.byte	0xa7
	.long	0x1abe
	.byte	0
	.uleb128 0x23
	.long	.LASF639
	.byte	0xf
	.byte	0xaa
	.long	0x3d6
	.value	0x140
	.uleb128 0x23
	.long	.LASF640
	.byte	0xf
	.byte	0xae
	.long	0x1ccf
	.value	0x148
	.uleb128 0x23
	.long	.LASF641
	.byte	0xf
	.byte	0xb1
	.long	0x3d6
	.value	0x150
	.uleb128 0x23
	.long	.LASF629
	.byte	0xf
	.byte	0xb4
	.long	0xfe
	.value	0x158
	.uleb128 0x23
	.long	.LASF642
	.byte	0xf
	.byte	0xb7
	.long	0xfe
	.value	0x15c
	.uleb128 0x23
	.long	.LASF643
	.byte	0xf
	.byte	0xc0
	.long	0x1bad
	.value	0x160
	.uleb128 0x23
	.long	.LASF644
	.byte	0xf
	.byte	0xc3
	.long	0x1bad
	.value	0x168
	.uleb128 0x23
	.long	.LASF645
	.byte	0xf
	.byte	0xc6
	.long	0x16b
	.value	0x170
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1bb3
	.uleb128 0x1e
	.long	0x1bc3
	.uleb128 0x1d
	.long	0x1bc3
	.uleb128 0x1d
	.long	0x1bc9
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1abe
	.uleb128 0x3
	.byte	0x8
	.long	0x1b20
	.uleb128 0x13
	.byte	0x4
	.byte	0xf
	.byte	0x23
	.long	0x1c08
	.uleb128 0x14
	.long	.LASF646
	.sleb128 0
	.uleb128 0x14
	.long	.LASF647
	.sleb128 1
	.uleb128 0x14
	.long	.LASF648
	.sleb128 2
	.uleb128 0x14
	.long	.LASF649
	.sleb128 3
	.uleb128 0x14
	.long	.LASF650
	.sleb128 4
	.uleb128 0x14
	.long	.LASF651
	.sleb128 5
	.uleb128 0x14
	.long	.LASF652
	.sleb128 6
	.uleb128 0x14
	.long	.LASF653
	.sleb128 7
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xf
	.byte	0x32
	.long	0x1c23
	.uleb128 0x14
	.long	.LASF654
	.sleb128 0
	.uleb128 0x14
	.long	.LASF655
	.sleb128 1
	.uleb128 0x14
	.long	.LASF656
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.long	.LASF657
	.byte	0xf
	.byte	0x36
	.long	0x1c08
	.uleb128 0x5
	.long	.LASF658
	.byte	0xf
	.byte	0x3b
	.long	0x1c39
	.uleb128 0x3
	.byte	0x8
	.long	0x1c3f
	.uleb128 0x1c
	.long	0xfe
	.long	0x1c4e
	.uleb128 0x1d
	.long	0x1bc3
	.byte	0
	.uleb128 0x1a
	.byte	0x50
	.byte	0xf
	.byte	0x3e
	.long	0x1ccf
	.uleb128 0xe
	.long	.LASF659
	.byte	0xf
	.byte	0x41
	.long	0x3d6
	.byte	0
	.uleb128 0xe
	.long	.LASF660
	.byte	0xf
	.byte	0x45
	.long	0xfe
	.byte	0x8
	.uleb128 0xe
	.long	.LASF661
	.byte	0xf
	.byte	0x49
	.long	0xfe
	.byte	0xc
	.uleb128 0xe
	.long	.LASF662
	.byte	0xf
	.byte	0x4c
	.long	0xfe
	.byte	0x10
	.uleb128 0xe
	.long	.LASF663
	.byte	0xf
	.byte	0x4f
	.long	0x1a3c
	.byte	0x14
	.uleb128 0xe
	.long	.LASF664
	.byte	0xf
	.byte	0x52
	.long	0x1a3c
	.byte	0x15
	.uleb128 0xe
	.long	.LASF665
	.byte	0xf
	.byte	0x55
	.long	0x1c23
	.byte	0x18
	.uleb128 0xe
	.long	.LASF666
	.byte	0xf
	.byte	0x59
	.long	0x3d6
	.byte	0x20
	.uleb128 0xe
	.long	.LASF667
	.byte	0xf
	.byte	0x5c
	.long	0x1ccf
	.byte	0x28
	.uleb128 0xe
	.long	.LASF668
	.byte	0xf
	.byte	0x5f
	.long	0x1cd5
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x16d
	.uleb128 0xb
	.long	0xfe
	.long	0x1ce5
	.uleb128 0xc
	.long	0x105
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF669
	.byte	0xf
	.byte	0x60
	.long	0x1c4e
	.uleb128 0x3
	.byte	0x8
	.long	0x1d0
	.uleb128 0xb
	.long	0x1c9
	.long	0x1d06
	.uleb128 0xc
	.long	0x105
	.byte	0x7f
	.byte	0
	.uleb128 0x24
	.long	.LASF670
	.byte	0x1
	.byte	0x81
	.long	0xfe
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF672
	.byte	0x1
	.byte	0x8a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.long	.LASF671
	.byte	0x1
	.byte	0x92
	.long	0xfe
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF673
	.byte	0x1
	.byte	0x9a
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF676
	.byte	0x1
	.byte	0xa2
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d9e
	.uleb128 0x27
	.long	.LASF506
	.byte	0x1
	.byte	0xa3
	.long	0x1bc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF674
	.byte	0x1
	.byte	0xb5
	.long	0xfe
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dce
	.uleb128 0x27
	.long	.LASF638
	.byte	0x1
	.byte	0xb6
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF675
	.byte	0x1
	.byte	0xbe
	.long	0x3d6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dfe
	.uleb128 0x27
	.long	.LASF638
	.byte	0x1
	.byte	0xbf
	.long	0x1dfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e04
	.uleb128 0x12
	.long	0x1abe
	.uleb128 0x29
	.long	.LASF684
	.byte	0x1
	.byte	0xc8
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e55
	.uleb128 0x27
	.long	.LASF638
	.byte	0x1
	.byte	0xc9
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2b
	.long	.LASF680
	.byte	0x1
	.byte	0xd4
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF677
	.byte	0x1
	.byte	0xe3
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e8f
	.uleb128 0x27
	.long	.LASF638
	.byte	0x1
	.byte	0xe4
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF436
	.byte	0x1
	.byte	0xe5
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF678
	.byte	0x1
	.byte	0xee
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ec9
	.uleb128 0x27
	.long	.LASF638
	.byte	0x1
	.byte	0xef
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF659
	.byte	0x1
	.byte	0xf0
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF679
	.byte	0x1
	.byte	0xfb
	.long	0x3d6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f05
	.uleb128 0x27
	.long	.LASF638
	.byte	0x1
	.byte	0xfc
	.long	0x1dfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.byte	0xfe
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF681
	.byte	0x1
	.value	0x108
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f33
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x109
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF682
	.byte	0x1
	.value	0x115
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f91
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x116
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x118
	.long	0x1f91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF683
	.byte	0x1
	.value	0x118
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xfbc
	.uleb128 0x31
	.long	.LASF685
	.byte	0x1
	.value	0x11f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fc5
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x120
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF686
	.byte	0x1
	.value	0x12c
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2011
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x12d
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF659
	.byte	0x1
	.value	0x12e
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF660
	.byte	0x1
	.value	0x12f
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2d
	.long	.LASF687
	.byte	0x1
	.value	0x13e
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x203f
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x13f
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF688
	.byte	0x1
	.value	0x149
	.long	0x3d6
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2092
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x14a
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x14c
	.long	0x1f91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF689
	.byte	0x1
	.value	0x151
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF690
	.byte	0x1
	.value	0x15b
	.long	0xfe
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x20de
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x15c
	.long	0x1dfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF691
	.byte	0x1
	.value	0x164
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x212d
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x165
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x30
	.long	.LASF680
	.byte	0x1
	.value	0x17a
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF692
	.byte	0x1
	.value	0x186
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x217c
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x187
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x189
	.long	0x1f91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF693
	.byte	0x1
	.value	0x190
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d8
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x191
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"c"
	.byte	0x1
	.value	0x192
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x196
	.long	0x1f91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF694
	.byte	0x1
	.value	0x19d
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2227
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x19e
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x1a5
	.long	0x1f91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF695
	.byte	0x1
	.value	0x1ad
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2262
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x1ae
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1af
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x36
	.long	.LASF696
	.byte	0x1
	.value	0x1b5
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x229d
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x1b6
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1b7
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF697
	.byte	0x1
	.value	0x1bd
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x22d8
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x1be
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1bf
	.long	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x36
	.long	.LASF698
	.byte	0x1
	.value	0x1c5
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2313
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x1c6
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1c7
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF699
	.byte	0x1
	.value	0x1cd
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x234e
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x1ce
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1cf
	.long	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x36
	.long	.LASF700
	.byte	0x1
	.value	0x1d5
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2389
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x1d6
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1d7
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF701
	.byte	0x1
	.value	0x1dd
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x23c4
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x1de
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1df
	.long	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x36
	.long	.LASF702
	.byte	0x1
	.value	0x1e5
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x23ff
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x1e6
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1e7
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF703
	.byte	0x1
	.value	0x1f0
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x247b
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x1f1
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF704
	.byte	0x1
	.value	0x1f2
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF436
	.byte	0x1
	.value	0x1f3
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x1f5
	.long	0x1f91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF705
	.byte	0x1
	.value	0x1f5
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF706
	.byte	0x1
	.value	0x1ff
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x24c7
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x200
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF704
	.byte	0x1
	.value	0x201
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"end"
	.byte	0x1
	.value	0x202
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x36
	.long	.LASF707
	.byte	0x1
	.value	0x210
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x250f
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x211
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x213
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x214
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF708
	.byte	0x1
	.value	0x21d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x258a
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x21e
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF704
	.byte	0x1
	.value	0x21f
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"end"
	.byte	0x1
	.value	0x220
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF709
	.byte	0x1
	.value	0x222
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x228
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF710
	.byte	0x1
	.value	0x241
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d6
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x242
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF704
	.byte	0x1
	.value	0x243
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"end"
	.byte	0x1
	.value	0x244
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF711
	.byte	0x1
	.value	0x251
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x2613
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x252
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"str"
	.byte	0x1
	.value	0x253
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF712
	.byte	0x1
	.value	0x25c
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x2650
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x25d
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF713
	.byte	0x1
	.value	0x25f
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF714
	.byte	0x1
	.value	0x272
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2701
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x273
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.long	.LASF725
	.long	0x2711
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9431
	.uleb128 0x2a
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x30
	.long	.LASF715
	.byte	0x1
	.value	0x278
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x26d3
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x27c
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x2cf
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.value	0x2d0
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x1c9
	.long	0x2711
	.uleb128 0xc
	.long	0x105
	.byte	0xd
	.byte	0
	.uleb128 0x12
	.long	0x2701
	.uleb128 0x39
	.long	.LASF716
	.byte	0x1
	.value	0x2e8
	.long	0x1c3
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x2765
	.uleb128 0x35
	.string	"msg"
	.byte	0x1
	.value	0x2e9
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"ap"
	.byte	0x1
	.value	0x2ea
	.long	0x2765
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"str"
	.byte	0x1
	.value	0x2ec
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x127
	.uleb128 0x39
	.long	.LASF717
	.byte	0x1
	.value	0x2f6
	.long	0x1c3
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x27e1
	.uleb128 0x35
	.string	"msg"
	.byte	0x1
	.value	0x2f6
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x3a
	.uleb128 0x2f
	.string	"str"
	.byte	0x1
	.value	0x2f8
	.long	0x1c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2a
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x2fa
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3b
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF718
	.byte	0x1
	.value	0x308
	.long	0x1c3
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2831
	.uleb128 0x2e
	.long	.LASF641
	.byte	0x1
	.value	0x309
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF629
	.byte	0x1
	.value	0x30a
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF642
	.byte	0x1
	.value	0x30b
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.long	.LASF719
	.byte	0x1
	.value	0x320
	.long	0x1c3
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x2861
	.uleb128 0x35
	.string	"f"
	.byte	0x1
	.value	0x321
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF720
	.byte	0x1
	.value	0x329
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x28ad
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x32a
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"msg"
	.byte	0x1
	.value	0x32b
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF639
	.byte	0x1
	.value	0x32d
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF721
	.byte	0x1
	.value	0x338
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x292f
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x338
	.long	0x292f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x338
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x3a
	.uleb128 0x30
	.long	.LASF723
	.byte	0x1
	.value	0x33a
	.long	0x1ccf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2a
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x33c
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1ac9
	.uleb128 0x36
	.long	.LASF724
	.byte	0x1
	.value	0x34a
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x29b1
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x34b
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF8
	.byte	0x1
	.value	0x34c
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x34e
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF725
	.long	0x29c1
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9471
	.uleb128 0x2a
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x365
	.long	0x1a37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x1c9
	.long	0x29c1
	.uleb128 0xc
	.long	0x105
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.long	0x29b1
	.uleb128 0x36
	.long	.LASF726
	.byte	0x1
	.value	0x37e
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a34
	.uleb128 0x2e
	.long	.LASF8
	.byte	0x1
	.value	0x37f
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x380
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF640
	.byte	0x1
	.value	0x381
	.long	0x1ccf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.long	.LASF642
	.byte	0x1
	.value	0x382
	.long	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2f
	.string	"os"
	.byte	0x1
	.value	0x384
	.long	0x1ce5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x32
	.long	.LASF727
	.byte	0x1
	.value	0x39f
	.long	0xfe
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a8e
	.uleb128 0x2e
	.long	.LASF728
	.byte	0x1
	.value	0x3a0
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x30
	.long	.LASF729
	.byte	0x1
	.value	0x3a9
	.long	0xfe
	.uleb128 0x9
	.byte	0x3
	.quad	warning_message.9489
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF730
	.byte	0x1
	.value	0x3ba
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b00
	.uleb128 0x2e
	.long	.LASF641
	.byte	0x1
	.value	0x3ba
	.long	0x1cf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x3ba
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x3a
	.uleb128 0x2a
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x3bc
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3b
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF731
	.byte	0x1
	.value	0x3c9
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b71
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x3c9
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x3a
	.uleb128 0x2f
	.string	"os"
	.byte	0x1
	.value	0x3cb
	.long	0x1ce5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2a
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x3cd
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x3b
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF732
	.byte	0x1
	.value	0x3df
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x2be2
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x3df
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x3a
	.uleb128 0x2f
	.string	"dc"
	.byte	0x1
	.value	0x3e1
	.long	0x1b20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2a
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x3e3
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x3b
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF733
	.byte	0x1
	.value	0x3ef
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c54
	.uleb128 0x2e
	.long	.LASF8
	.byte	0x1
	.value	0x3ef
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x3ef
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x3a
	.uleb128 0x2a
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x3f1
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3b
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF734
	.byte	0x1
	.value	0x403
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ce5
	.uleb128 0x2e
	.long	.LASF641
	.byte	0x1
	.value	0x403
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x2e
	.long	.LASF629
	.byte	0x1
	.value	0x403
	.long	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -620
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x403
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x3a
	.uleb128 0x2f
	.string	"dc"
	.byte	0x1
	.value	0x406
	.long	0x1b20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2a
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x408
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x3b
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF735
	.byte	0x1
	.value	0x415
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d56
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x415
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x3a
	.uleb128 0x2f
	.string	"os"
	.byte	0x1
	.value	0x417
	.long	0x1ce5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2a
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x419
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x3b
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF736
	.byte	0x1
	.value	0x42e
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d84
	.uleb128 0x2e
	.long	.LASF8
	.byte	0x1
	.value	0x42f
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	.LASF737
	.byte	0x1
	.value	0x441
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dc3
	.uleb128 0x2e
	.long	.LASF506
	.byte	0x1
	.value	0x442
	.long	0x1bc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF641
	.byte	0x1
	.value	0x443
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2d
	.long	.LASF738
	.byte	0x1
	.value	0x46b
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x2df1
	.uleb128 0x2e
	.long	.LASF641
	.byte	0x1
	.value	0x46c
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF739
	.byte	0x1
	.value	0x473
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e82
	.uleb128 0x2e
	.long	.LASF641
	.byte	0x1
	.value	0x473
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x2e
	.long	.LASF629
	.byte	0x1
	.value	0x473
	.long	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -620
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x473
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x3a
	.uleb128 0x2f
	.string	"dc"
	.byte	0x1
	.value	0x476
	.long	0x1b20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2a
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x478
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x3b
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF740
	.byte	0x1
	.value	0x483
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ef4
	.uleb128 0x2e
	.long	.LASF8
	.byte	0x1
	.value	0x483
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x483
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x3a
	.uleb128 0x2a
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x485
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3b
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF741
	.byte	0x1
	.value	0x491
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f65
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x491
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x3a
	.uleb128 0x2f
	.string	"dc"
	.byte	0x1
	.value	0x493
	.long	0x1b20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2a
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x495
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x3b
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF742
	.byte	0x1
	.value	0x4a2
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fd6
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x4a2
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x3a
	.uleb128 0x2f
	.string	"dc"
	.byte	0x1
	.value	0x4a4
	.long	0x1b20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2a
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x4a6
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x3b
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF743
	.byte	0x1
	.value	0x4ba
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x3002
	.uleb128 0x35
	.string	"f"
	.byte	0x1
	.value	0x4bb
	.long	0x3012
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	0x3012
	.uleb128 0x1d
	.long	0x3d6
	.uleb128 0x1d
	.long	0x1ccf
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3002
	.uleb128 0x2d
	.long	.LASF744
	.byte	0x1
	.value	0x4c1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x3089
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x4c1
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x3a
	.uleb128 0x2f
	.string	"dc"
	.byte	0x1
	.value	0x4c3
	.long	0x1b20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2a
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x4c5
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x3b
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF745
	.byte	0x1
	.value	0x4e9
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x30d9
	.uleb128 0x2e
	.long	.LASF641
	.byte	0x1
	.value	0x4e9
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.long	.LASF629
	.byte	0x1
	.value	0x4e9
	.long	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x4e9
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3c
	.long	.LASF746
	.byte	0x1
	.value	0x4fb
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x3119
	.uleb128 0x2e
	.long	.LASF8
	.byte	0x1
	.value	0x4fb
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x4fb
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3c
	.long	.LASF747
	.byte	0x1
	.value	0x508
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x3149
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x508
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF748
	.byte	0x1
	.value	0x51a
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x3177
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x51b
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF749
	.byte	0x1
	.value	0x527
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x31d5
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x528
	.long	0x1bc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x529
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF640
	.byte	0x1
	.value	0x52a
	.long	0x1ccf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.string	"os"
	.byte	0x1
	.value	0x52c
	.long	0x1ce5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2d
	.long	.LASF750
	.byte	0x1
	.value	0x53b
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x3247
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x53b
	.long	0x1bc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x53b
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x3a
	.uleb128 0x2a
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x53d
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3b
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF751
	.byte	0x1
	.value	0x548
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x32a9
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x548
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x3a
	.uleb128 0x2a
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x54a
	.long	0x16d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3b
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF752
	.byte	0x1
	.value	0x559
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x32e6
	.uleb128 0x35
	.string	"dc"
	.byte	0x1
	.value	0x55a
	.long	0x1bc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.string	"os"
	.byte	0x1
	.value	0x55c
	.long	0x1ce5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x3d
	.long	.LASF794
	.byte	0x1
	.value	0x576
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF753
	.byte	0x1
	.value	0x58f
	.long	0x3d6
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x3362
	.uleb128 0x2e
	.long	.LASF500
	.byte	0x1
	.value	0x590
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF754
	.byte	0x1
	.value	0x592
	.long	0x3372
	.uleb128 0x9
	.byte	0x3
	.quad	this_file.9621
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x593
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.string	"q"
	.byte	0x1
	.value	0x593
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x1c9
	.long	0x3372
	.uleb128 0xc
	.long	0x105
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.long	0x3362
	.uleb128 0x2d
	.long	.LASF755
	.byte	0x1
	.value	0x5ba
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x33c3
	.uleb128 0x2e
	.long	.LASF641
	.byte	0x1
	.value	0x5bb
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF629
	.byte	0x1
	.value	0x5bc
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF512
	.byte	0x1
	.value	0x5bd
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF756
	.byte	0x1
	.value	0x5c8
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x343b
	.uleb128 0x35
	.string	"dc"
	.byte	0x1
	.value	0x5c9
	.long	0x1bc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF722
	.byte	0x1
	.value	0x5ca
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF640
	.byte	0x1
	.value	0x5cb
	.long	0x1ccf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF641
	.byte	0x1
	.value	0x5cc
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF629
	.byte	0x1
	.value	0x5cd
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.long	.LASF642
	.byte	0x1
	.value	0x5ce
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3c
	.long	.LASF757
	.byte	0x1
	.value	0x5db
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x3473
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x5dc
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3e
	.string	"p"
	.byte	0x1
	.value	0x5de
	.long	0x1ab8
	.byte	0
	.uleb128 0x36
	.long	.LASF758
	.byte	0x1
	.value	0x5f9
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x34af
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x5fa
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"dc"
	.byte	0x1
	.value	0x5fb
	.long	0x1bc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF759
	.byte	0x1
	.value	0x605
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x34eb
	.uleb128 0x2e
	.long	.LASF638
	.byte	0x1
	.value	0x606
	.long	0x1bc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"dc"
	.byte	0x1
	.value	0x607
	.long	0x1bc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF760
	.byte	0x1
	.value	0x60d
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x3549
	.uleb128 0x2e
	.long	.LASF761
	.byte	0x1
	.value	0x60e
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x30
	.long	.LASF762
	.byte	0x1
	.value	0x619
	.long	0x3d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0x61a
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF763
	.byte	0x1
	.byte	0x65
	.long	0x1b20
	.uleb128 0x9
	.byte	0x3
	.quad	global_diagnostic_context
	.uleb128 0x2b
	.long	.LASF764
	.byte	0x1
	.byte	0x6e
	.long	0x43
	.uleb128 0x9
	.byte	0x3
	.quad	last_error_function
	.uleb128 0x2b
	.long	.LASF765
	.byte	0x1
	.byte	0x71
	.long	0xfe
	.uleb128 0x9
	.byte	0x3
	.quad	last_error_tick
	.uleb128 0x2b
	.long	.LASF766
	.byte	0x1
	.byte	0x7a
	.long	0xfe
	.uleb128 0x9
	.byte	0x3
	.quad	diagnostic_lock
	.uleb128 0x30
	.long	.LASF767
	.byte	0x1
	.value	0x4b5
	.long	0x3012
	.uleb128 0x9
	.byte	0x3
	.quad	internal_error_function
	.uleb128 0x3f
	.long	.LASF768
	.byte	0x8
	.byte	0xaa
	.long	0x3aa
	.uleb128 0xb
	.long	0x198
	.long	0x35ce
	.uleb128 0xc
	.long	0x105
	.byte	0xff
	.byte	0
	.uleb128 0x3f
	.long	.LASF769
	.byte	0x10
	.byte	0x48
	.long	0x35d9
	.uleb128 0x12
	.long	0x35be
	.uleb128 0xb
	.long	0x1c9
	.long	0x35ee
	.uleb128 0xc
	.long	0x105
	.byte	0xff
	.byte	0
	.uleb128 0x3f
	.long	.LASF770
	.byte	0x2
	.byte	0x31
	.long	0x35de
	.uleb128 0x3f
	.long	.LASF771
	.byte	0xe
	.byte	0x17
	.long	0x3d6
	.uleb128 0x3f
	.long	.LASF772
	.byte	0xe
	.byte	0x1d
	.long	0xfe
	.uleb128 0x40
	.long	.LASF773
	.byte	0x2
	.value	0xa98
	.long	0x43
	.uleb128 0x1c
	.long	0x3d6
	.long	0x362f
	.uleb128 0x1d
	.long	0x43
	.uleb128 0x1d
	.long	0xfe
	.byte	0
	.uleb128 0x40
	.long	.LASF774
	.byte	0x2
	.value	0xaa9
	.long	0x363b
	.uleb128 0x3
	.byte	0x8
	.long	0x361b
	.uleb128 0x3f
	.long	.LASF775
	.byte	0x11
	.byte	0x46
	.long	0xfe
	.uleb128 0x3f
	.long	.LASF776
	.byte	0x11
	.byte	0x53
	.long	0xfe
	.uleb128 0x3f
	.long	.LASF777
	.byte	0x11
	.byte	0x57
	.long	0xfe
	.uleb128 0x3f
	.long	.LASF778
	.byte	0x11
	.byte	0xaf
	.long	0xfe
	.uleb128 0x3f
	.long	.LASF779
	.byte	0x11
	.byte	0xd1
	.long	0xfe
	.uleb128 0x40
	.long	.LASF780
	.byte	0x11
	.value	0x1c3
	.long	0xfe
	.uleb128 0x3f
	.long	.LASF781
	.byte	0xe
	.byte	0x2c
	.long	0x1ab8
	.uleb128 0x3f
	.long	.LASF782
	.byte	0xe
	.byte	0x2f
	.long	0xfe
	.uleb128 0x3f
	.long	.LASF783
	.byte	0x12
	.byte	0x6f
	.long	0x3d6
	.uleb128 0x41
	.long	.LASF784
	.byte	0x1
	.byte	0x66
	.long	0x1bc9
	.uleb128 0x9
	.byte	0x3
	.quad	global_dc
	.uleb128 0x41
	.long	.LASF785
	.byte	0x1
	.byte	0x69
	.long	0x1bc3
	.uleb128 0x9
	.byte	0x3
	.quad	diagnostic_buffer
	.uleb128 0x1e
	.long	0x36df
	.uleb128 0x1d
	.long	0x1bc9
	.uleb128 0x1d
	.long	0x3d6
	.byte	0
	.uleb128 0x41
	.long	.LASF786
	.byte	0x1
	.byte	0x76
	.long	0x36f4
	.uleb128 0x9
	.byte	0x3
	.quad	print_error_function
	.uleb128 0x3
	.byte	0x8
	.long	0x36cf
	.uleb128 0x3f
	.long	.LASF787
	.byte	0x1
	.byte	0x61
	.long	0xfe
	.uleb128 0x3f
	.long	.LASF788
	.byte	0x1
	.byte	0x62
	.long	0xfe
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3e
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF395:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF593:
	.string	"TI_UV16QI_TYPE"
.LASF316:
	.string	"BUILT_IN_CONJ"
.LASF608:
	.string	"itk_unsigned_char"
.LASF214:
	.string	"WITH_CLEANUP_EXPR"
.LASF204:
	.string	"VTABLE_REF"
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
.LASF639:
	.string	"message"
.LASF787:
	.string	"rtl_dump_and_exit"
.LASF696:
	.string	"output_long_decimal"
.LASF600:
	.string	"TI_V2SI_TYPE"
.LASF561:
	.string	"TI_UINTSI_TYPE"
.LASF186:
	.string	"COMPLEX_CST"
.LASF736:
	.string	"announce_function"
.LASF481:
	.string	"tree_type"
.LASF244:
	.string	"RROTATE_EXPR"
.LASF280:
	.string	"ADDR_EXPR"
.LASF628:
	.string	"next"
.LASF790:
	.string	"diagnostic.c"
.LASF11:
	.string	"block"
.LASF618:
	.string	"_Bool"
.LASF537:
	.string	"pure_flag"
.LASF772:
	.string	"lineno"
.LASF269:
	.string	"IN_EXPR"
.LASF67:
	.string	"_sch_iscntrl"
.LASF1:
	.string	"common"
.LASF396:
	.string	"BUILT_IN_EH_RETURN"
.LASF52:
	.string	"_shortbuf"
.LASF791:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF73:
	.string	"_sch_isupper"
.LASF252:
	.string	"TRUTH_AND_EXPR"
.LASF335:
	.string	"BUILT_IN_STRCPY"
.LASF580:
	.string	"TI_VOID_TYPE"
.LASF398:
	.string	"BUILT_IN_VARARGS_START"
.LASF440:
	.string	"imag"
.LASF296:
	.string	"LABEL_EXPR"
.LASF677:
	.string	"output_set_maximum_length"
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
.LASF692:
	.string	"output_add_newline"
.LASF528:
	.string	"static_dtor_flag"
.LASF436:
	.string	"length"
.LASF216:
	.string	"PLACEHOLDER_EXPR"
.LASF667:
	.string	"format_args"
.LASF510:
	.string	"lang_type"
.LASF17:
	.string	"reg_save_area"
.LASF536:
	.string	"built_in_class"
.LASF27:
	.string	"__off_t"
.LASF235:
	.string	"FLOAT_EXPR"
.LASF519:
	.string	"inline_flag"
.LASF570:
	.string	"TI_BITSIZE_ZERO"
.LASF194:
	.string	"PARM_DECL"
.LASF643:
	.string	"begin_diagnostic"
.LASF113:
	.string	"CSImode"
.LASF354:
	.string	"BUILT_IN_COSL"
.LASF285:
	.string	"CONJ_EXPR"
.LASF53:
	.string	"_lock"
.LASF325:
	.string	"BUILT_IN_BZERO"
.LASF757:
	.string	"report_problematic_module"
.LASF301:
	.string	"LABELED_BLOCK_EXPR"
.LASF714:
	.string	"output_format"
.LASF358:
	.string	"BUILT_IN_ARGS_INFO"
.LASF159:
	.string	"ERROR_MARK"
.LASF150:
	.string	"MODE_FLOAT"
.LASF331:
	.string	"BUILT_IN_MEMCMP"
.LASF373:
	.string	"BUILT_IN_FPUTC"
.LASF365:
	.string	"BUILT_IN_RETURN"
.LASF676:
	.string	"diagnostic_initialize"
.LASF414:
	.string	"unused_0"
.LASF430:
	.string	"unused_1"
.LASF558:
	.string	"TI_INTTI_TYPE"
.LASF374:
	.string	"BUILT_IN_FPUTS"
.LASF775:
	.string	"quiet_flag"
.LASF302:
	.string	"EXIT_BLOCK_EXPR"
.LASF746:
	.string	"warning_with_decl"
.LASF119:
	.string	"V2SImode"
.LASF380:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF173:
	.string	"OFFSET_TYPE"
.LASF652:
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
.LASF637:
	.string	"diagnostic_context"
.LASF209:
	.string	"TARGET_EXPR"
.LASF121:
	.string	"V4QImode"
.LASF394:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF689:
	.string	"flush_diagnostic_buffer"
.LASF794:
	.string	"error_recursion"
.LASF700:
	.string	"output_long_octal"
.LASF468:
	.string	"complexity"
.LASF766:
	.string	"diagnostic_lock"
.LASF482:
	.string	"values"
.LASF432:
	.string	"tree_int_cst"
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
.LASF31:
	.string	"__va_list_tag"
.LASF330:
	.string	"BUILT_IN_MEMCPY"
.LASF197:
	.string	"NAMESPACE_DECL"
.LASF774:
	.string	"decl_printable_name"
.LASF705:
	.string	"__len"
.LASF660:
	.string	"maximum_length"
.LASF202:
	.string	"ARRAY_REF"
.LASF719:
	.string	"file_name_as_prefix"
.LASF405:
	.string	"chain"
.LASF359:
	.string	"BUILT_IN_CONSTANT_P"
.LASF385:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF391:
	.string	"BUILT_IN_DWARF_CFA"
.LASF182:
	.string	"FUNCTION_TYPE"
.LASF771:
	.string	"input_filename"
.LASF726:
	.string	"diagnostic_for_decl"
.LASF513:
	.string	"tree_decl"
.LASF130:
	.string	"V2SFmode"
.LASF673:
	.string	"record_last_error_function"
.LASF146:
	.string	"machine_mode"
.LASF181:
	.string	"QUAL_UNION_TYPE"
.LASF722:
	.string	"msgid"
.LASF690:
	.string	"output_space_left"
.LASF449:
	.string	"chunk"
.LASF297:
	.string	"GOTO_EXPR"
.LASF703:
	.string	"output_append_r"
.LASF92:
	.string	"TImode"
.LASF675:
	.string	"output_get_prefix"
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
.LASF631:
	.string	"output_buffer"
.LASF710:
	.string	"maybe_wrap_text"
.LASF90:
	.string	"SImode"
.LASF131:
	.string	"V2DFmode"
.LASF228:
	.string	"ROUND_MOD_EXPR"
.LASF665:
	.string	"prefixing_rule"
.LASF420:
	.string	"protected_flag"
.LASF9:
	.string	"type"
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
.LASF695:
	.string	"output_decimal"
.LASF473:
	.string	"block_num"
.LASF782:
	.string	"input_file_stack_tick"
.LASF249:
	.string	"BIT_NOT_EXPR"
.LASF467:
	.string	"tree_exp"
.LASF453:
	.string	"temp"
.LASF758:
	.string	"default_diagnostic_starter"
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
.LASF13:
	.string	"__gnuc_va_list"
.LASF614:
	.string	"itk_unsigned_long"
.LASF46:
	.string	"_chain"
.LASF213:
	.string	"METHOD_CALL_EXPR"
.LASF563:
	.string	"TI_UINTTI_TYPE"
.LASF732:
	.string	"pedwarn"
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
.LASF743:
	.string	"set_internal_error_function"
.LASF541:
	.string	"arguments"
.LASF793:
	.string	"_IO_lock_t"
.LASF582:
	.string	"TI_CONST_PTR_TYPE"
.LASF508:
	.string	"lang_specific"
.LASF448:
	.string	"chunk_size"
.LASF769:
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
.LASF721:
	.string	"output_printf"
.LASF610:
	.string	"itk_unsigned_short"
.LASF319:
	.string	"BUILT_IN_CREAL"
.LASF154:
	.string	"MODE_COMPLEX_FLOAT"
.LASF780:
	.string	"flag_pedantic_errors"
.LASF518:
	.string	"regdecl_flag"
.LASF315:
	.string	"BUILT_IN_IMAXABS"
.LASF170:
	.string	"BOOLEAN_TYPE"
.LASF324:
	.string	"BUILT_IN_CIMAGL"
.LASF450:
	.string	"object_base"
.LASF655:
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
.LASF788:
	.string	"warnings_are_errors"
.LASF727:
	.string	"count_error"
.LASF384:
	.string	"BUILT_IN_ISGREATER"
.LASF368:
	.string	"BUILT_IN_TRAP"
.LASF277:
	.string	"SAVE_EXPR"
.LASF431:
	.string	"high"
.LASF599:
	.string	"TI_V4HI_TYPE"
.LASF751:
	.string	"verbatim"
.LASF102:
	.string	"DFmode"
.LASF715:
	.string	"long_integer"
.LASF21:
	.string	"size_t"
.LASF96:
	.string	"PSImode"
.LASF334:
	.string	"BUILT_IN_STRNCAT"
.LASF621:
	.string	"SSIZETYPE"
.LASF651:
	.string	"DK_ANACHRONISM"
.LASF189:
	.string	"FUNCTION_DECL"
.LASF387:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF622:
	.string	"USIZETYPE"
.LASF210:
	.string	"COND_EXPR"
.LASF110:
	.string	"TCmode"
.LASF231:
	.string	"FIX_TRUNC_EXPR"
.LASF38:
	.string	"_IO_write_ptr"
.LASF674:
	.string	"output_is_line_wrapping"
.LASF446:
	.string	"contents"
.LASF167:
	.string	"COMPLEX_TYPE"
.LASF369:
	.string	"BUILT_IN_PREFETCH"
.LASF241:
	.string	"LSHIFT_EXPR"
.LASF107:
	.string	"SCmode"
.LASF605:
	.string	"integer_type_kind"
.LASF19:
	.string	"va_list"
.LASF184:
	.string	"INTEGER_CST"
.LASF192:
	.string	"TYPE_DECL"
.LASF574:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF658:
	.string	"printer_fn"
.LASF629:
	.string	"line"
.LASF504:
	.string	"main_variant"
.LASF288:
	.string	"PREDECREMENT_EXPR"
.LASF566:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF579:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF409:
	.string	"addressable_flag"
.LASF680:
	.string	"prefix_length"
.LASF417:
	.string	"static_flag"
.LASF576:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF767:
	.string	"internal_error_function"
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
.LASF77:
	.string	"_sch_isnvsp"
.LASF30:
	.string	"FILE"
.LASF168:
	.string	"VECTOR_TYPE"
.LASF151:
	.string	"MODE_PARTIAL_INT"
.LASF326:
	.string	"BUILT_IN_BCMP"
.LASF0:
	.string	"tree"
.LASF108:
	.string	"DCmode"
.LASF81:
	.string	"_sch_isgraph"
.LASF741:
	.string	"error"
.LASF789:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF248:
	.string	"BIT_ANDTC_EXPR"
.LASF581:
	.string	"TI_PTR_TYPE"
.LASF7:
	.string	"identifier"
.LASF734:
	.string	"pedwarn_with_file_and_line"
.LASF138:
	.string	"CCmode"
.LASF397:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF389:
	.string	"BUILT_IN_ISUNORDERED"
.LASF642:
	.string	"warn"
.LASF645:
	.string	"x_data"
.LASF747:
	.string	"warning"
.LASF136:
	.string	"V16SFmode"
.LASF786:
	.string	"print_error_function"
.LASF543:
	.string	"initial"
.LASF250:
	.string	"TRUTH_ANDIF_EXPR"
.LASF701:
	.string	"output_hexadecimal"
.LASF42:
	.string	"_IO_save_base"
.LASF620:
	.string	"SIZETYPE"
.LASF756:
	.string	"set_diagnostic_context"
.LASF688:
	.string	"output_finalize_message"
.LASF255:
	.string	"TRUTH_NOT_EXPR"
.LASF236:
	.string	"NEGATE_EXPR"
.LASF127:
	.string	"V8SImode"
.LASF399:
	.string	"BUILT_IN_STDARG_START"
.LASF533:
	.string	"comdat_flag"
.LASF562:
	.string	"TI_UINTDI_TYPE"
.LASF687:
	.string	"output_clear"
.LASF177:
	.string	"ARRAY_TYPE"
.LASF572:
	.string	"TI_BITSIZE_UNIT"
.LASF754:
	.string	"this_file"
.LASF641:
	.string	"file"
.LASF717:
	.string	"build_message_string"
.LASF258:
	.string	"GT_EXPR"
.LASF56:
	.string	"__pad2"
.LASF271:
	.string	"CARD_EXPR"
.LASF713:
	.string	"text"
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
.LASF139:
	.string	"CCGCmode"
.LASF779:
	.string	"in_system_header"
.LASF10:
	.string	"list"
.LASF273:
	.string	"CONVERT_EXPR"
.LASF125:
	.string	"V8QImode"
.LASF225:
	.string	"TRUNC_MOD_EXPR"
.LASF128:
	.string	"V8DImode"
.LASF157:
	.string	"MAX_MODE_CLASS"
.LASF716:
	.string	"vbuild_message_string"
.LASF616:
	.string	"itk_unsigned_long_long"
.LASF69:
	.string	"_sch_islower"
.LASF221:
	.string	"TRUNC_DIV_EXPR"
.LASF278:
	.string	"UNSAVE_EXPR"
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
.LASF134:
	.string	"V8SFmode"
.LASF222:
	.string	"CEIL_DIV_EXPR"
.LASF360:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF723:
	.string	"old_args"
.LASF663:
	.string	"emitted_prefix_p"
.LASF661:
	.string	"ideal_maximum_length"
.LASF501:
	.string	"minval"
.LASF142:
	.string	"CCZmode"
.LASF625:
	.string	"UBITSIZETYPE"
.LASF223:
	.string	"FLOOR_DIV_EXPR"
.LASF161:
	.string	"TREE_LIST"
.LASF728:
	.string	"warningp"
.LASF554:
	.string	"TI_INTQI_TYPE"
.LASF477:
	.string	"abstract_origin"
.LASF188:
	.string	"STRING_CST"
.LASF256:
	.string	"LT_EXPR"
.LASF691:
	.string	"output_emit_prefix"
.LASF246:
	.string	"BIT_XOR_EXPR"
.LASF304:
	.string	"SWITCH_EXPR"
.LASF253:
	.string	"TRUTH_OR_EXPR"
.LASF295:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF461:
	.string	"ht_identifier"
.LASF135:
	.string	"V8DFmode"
.LASF544:
	.string	"assembler_name"
.LASF237:
	.string	"MIN_EXPR"
.LASF587:
	.string	"TI_UV4SI_TYPE"
.LASF490:
	.string	"needs_constructing_flag"
.LASF232:
	.string	"FIX_CEIL_EXPR"
.LASF718:
	.string	"context_as_prefix"
.LASF338:
	.string	"BUILT_IN_STRNCMP"
.LASF773:
	.string	"current_function_decl"
.LASF765:
	.string	"last_error_tick"
.LASF438:
	.string	"tree_complex"
.LASF143:
	.string	"CCFPmode"
.LASF257:
	.string	"LE_EXPR"
.LASF768:
	.string	"stderr"
.LASF542:
	.string	"result"
.LASF500:
	.string	"name"
.LASF749:
	.string	"output_do_verbatim"
.LASF64:
	.string	"_sbuf"
.LASF44:
	.string	"_IO_save_end"
.LASF149:
	.string	"MODE_INT"
.LASF3:
	.string	"real_cst"
.LASF657:
	.string	"diagnostic_prefixing_rule_t"
.LASF238:
	.string	"MAX_EXPR"
.LASF650:
	.string	"DK_WARNING"
.LASF470:
	.string	"tree_block"
.LASF568:
	.string	"TI_SIZE_ZERO"
.LASF475:
	.string	"subblocks"
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
.LASF494:
	.string	"pointer_depth"
.LASF742:
	.string	"fatal_error"
.LASF437:
	.string	"pointer"
.LASF190:
	.string	"LABEL_DECL"
.LASF711:
	.string	"output_add_string"
.LASF635:
	.string	"digit_buffer"
.LASF760:
	.string	"warn_deprecated_use"
.LASF403:
	.string	"END_BUILTINS"
.LASF623:
	.string	"BITSIZETYPE"
.LASF729:
	.string	"warning_message"
.LASF682:
	.string	"output_clear_message_text"
.LASF12:
	.string	"sizetype"
.LASF123:
	.string	"V4SImode"
.LASF708:
	.string	"wrap_text"
.LASF404:
	.string	"tree_common"
.LASF505:
	.string	"binfo"
.LASF571:
	.string	"TI_BITSIZE_ONE"
.LASF24:
	.string	"short unsigned int"
.LASF68:
	.string	"_sch_isdigit"
.LASF25:
	.string	"signed char"
.LASF627:
	.string	"file_stack"
.LASF565:
	.string	"TI_INTEGER_ONE"
.LASF759:
	.string	"default_diagnostic_finalizer"
.LASF770:
	.string	"tree_code_type"
.LASF704:
	.string	"start"
.LASF654:
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
.LASF464:
	.string	"purpose"
.LASF755:
	.string	"fancy_abort"
.LASF555:
	.string	"TI_INTHI_TYPE"
.LASF497:
	.string	"pointer_to"
.LASF681:
	.string	"output_destroy_prefix"
.LASF530:
	.string	"weak_flag"
.LASF547:
	.string	"saved_tree"
.LASF466:
	.string	"tree_vec"
.LASF514:
	.string	"filename"
.LASF290:
	.string	"POSTDECREMENT_EXPR"
.LASF702:
	.string	"output_long_hexadecimal"
.LASF378:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF382:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF28:
	.string	"__off64_t"
.LASF634:
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
.LASF632:
	.string	"state"
.LASF41:
	.string	"_IO_buf_end"
.LASF499:
	.string	"symtab"
.LASF724:
	.string	"format_with_decl"
.LASF589:
	.string	"TI_UV8QI_TYPE"
.LASF764:
	.string	"last_error_function"
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
.LASF694:
	.string	"output_add_space"
.LASF503:
	.string	"next_variant"
.LASF60:
	.string	"_mode"
.LASF783:
	.string	"progname"
.LASF155:
	.string	"MODE_VECTOR_INT"
.LASF37:
	.string	"_IO_write_base"
.LASF97:
	.string	"PDImode"
.LASF512:
	.string	"function"
.LASF342:
	.string	"BUILT_IN_STRSPN"
.LASF132:
	.string	"V4SFmode"
.LASF206:
	.string	"COMPOUND_EXPR"
.LASF781:
	.string	"input_file_stack"
.LASF559:
	.string	"TI_UINTQI_TYPE"
.LASF653:
	.string	"DK_LAST_DIAGNOSTIC_KIND"
.LASF668:
	.string	"diagnostic_count"
.LASF361:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF484:
	.string	"size_unit"
.LASF377:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF329:
	.string	"BUILT_IN_RINDEX"
.LASF89:
	.string	"HImode"
.LASF153:
	.string	"MODE_COMPLEX_INT"
.LASF306:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF777:
	.string	"warn_system_headers"
.LASF20:
	.string	"long int"
.LASF172:
	.string	"POINTER_TYPE"
.LASF240:
	.string	"FFS_EXPR"
.LASF697:
	.string	"output_unsigned_decimal"
.LASF164:
	.string	"VOID_TYPE"
.LASF276:
	.string	"VIEW_CONVERT_EXPR"
.LASF553:
	.string	"TI_ERROR_MARK"
.LASF62:
	.string	"_IO_marker"
.LASF103:
	.string	"XFmode"
.LASF444:
	.string	"limit"
.LASF706:
	.string	"output_append"
.LASF133:
	.string	"V4DFmode"
.LASF525:
	.string	"defer_output"
.LASF601:
	.string	"TI_V2SF_TYPE"
.LASF672:
	.string	"record_last_error_module"
.LASF506:
	.string	"context"
.LASF82:
	.string	"_sch_iscppsp"
.LASF217:
	.string	"WITH_RECORD_EXPR"
.LASF552:
	.string	"tree_index"
.LASF778:
	.string	"warn_deprecated_decl"
.LASF730:
	.string	"fnotice"
.LASF699:
	.string	"output_octal"
.LASF471:
	.string	"handler_block_flag"
.LASF538:
	.string	"non_addressable"
.LASF784:
	.string	"global_dc"
.LASF393:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF750:
	.string	"output_verbatim"
.LASF454:
	.string	"alignment_mask"
.LASF745:
	.string	"warning_with_file_and_line"
.LASF203:
	.string	"ARRAY_RANGE_REF"
.LASF626:
	.string	"TYPE_KIND_LAST"
.LASF340:
	.string	"BUILT_IN_STRSTR"
.LASF524:
	.string	"common_flag"
.LASF456:
	.string	"freefun"
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
.LASF776:
	.string	"inhibit_warnings"
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
.LASF670:
	.string	"error_module_changed"
.LASF709:
	.string	"is_wrapping"
.LASF29:
	.string	"char"
.LASF109:
	.string	"XCmode"
.LASF388:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF630:
	.string	"indent_level"
.LASF458:
	.string	"use_extra_arg"
.LASF307:
	.string	"built_in_function"
.LASF275:
	.string	"NON_LVALUE_EXPR"
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
.LASF733:
	.string	"pedwarn_with_decl"
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
.LASF491:
	.string	"transparent_union_flag"
.LASF619:
	.string	"size_type_kind"
.LASF116:
	.string	"COImode"
.LASF761:
	.string	"node"
.LASF76:
	.string	"_sch_isvsp"
.LASF32:
	.string	"_IO_FILE"
.LASF640:
	.string	"args_ptr"
.LASF496:
	.string	"align"
.LASF390:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF606:
	.string	"itk_char"
.LASF686:
	.string	"init_output_buffer"
.LASF573:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF148:
	.string	"MODE_RANDOM"
.LASF638:
	.string	"buffer"
.LASF137:
	.string	"BLKmode"
.LASF106:
	.string	"HCmode"
.LASF211:
	.string	"BIND_EXPR"
.LASF648:
	.string	"DK_SORRY"
.LASF283:
	.string	"FDESC_EXPR"
.LASF739:
	.string	"error_with_file_and_line"
.LASF592:
	.string	"TI_UV2SF_TYPE"
.LASF218:
	.string	"PLUS_EXPR"
.LASF598:
	.string	"TI_V8QI_TYPE"
.LASF693:
	.string	"output_add_character"
.LASF603:
	.string	"TI_MAIN_IDENTIFIER"
.LASF339:
	.string	"BUILT_IN_STRLEN"
.LASF180:
	.string	"UNION_TYPE"
.LASF649:
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
.LASF684:
	.string	"set_real_maximum_length"
.LASF144:
	.string	"CCFPUmode"
.LASF529:
	.string	"artificial_flag"
.LASF45:
	.string	"_markers"
.LASF65:
	.string	"_pos"
.LASF662:
	.string	"indent_skip"
.LASF263:
	.string	"ORDERED_EXPR"
.LASF401:
	.string	"BUILT_IN_VA_COPY"
.LASF6:
	.string	"complex"
.LASF763:
	.string	"global_diagnostic_context"
.LASF460:
	.string	"alloc_failed"
.LASF762:
	.string	"what"
.LASF174:
	.string	"REFERENCE_TYPE"
.LASF476:
	.string	"supercontext"
.LASF402:
	.string	"BUILT_IN_EXPECT"
.LASF669:
	.string	"output_state"
.LASF502:
	.string	"maxval"
.LASF752:
	.string	"report_diagnostic"
.LASF262:
	.string	"UNORDERED_EXPR"
.LASF586:
	.string	"TI_UV4SF_TYPE"
.LASF425:
	.string	"lang_flag_2"
.LASF735:
	.string	"sorry"
.LASF343:
	.string	"BUILT_IN_STRCSPN"
.LASF270:
	.string	"SET_LE_EXPR"
.LASF602:
	.string	"TI_V16QI_TYPE"
.LASF615:
	.string	"itk_long_long"
.LASF289:
	.string	"PREINCREMENT_EXPR"
.LASF515:
	.string	"linenum"
.LASF88:
	.string	"QImode"
.LASF266:
	.string	"UNGT_EXPR"
.LASF495:
	.string	"user_align"
.LASF310:
	.string	"BUILT_IN_LABS"
.LASF100:
	.string	"TQFmode"
.LASF679:
	.string	"output_last_position"
.LASF410:
	.string	"volatile_flag"
.LASF333:
	.string	"BUILT_IN_STRCAT"
.LASF349:
	.string	"BUILT_IN_SQRTF"
.LASF352:
	.string	"BUILT_IN_SQRTL"
.LASF683:
	.string	"__obj"
.LASF612:
	.string	"itk_unsigned_int"
.LASF511:
	.string	"off_align"
.LASF305:
	.string	"EXC_PTR_EXPR"
.LASF452:
	.string	"chunk_limit"
.LASF327:
	.string	"BUILT_IN_FFS"
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
.LASF233:
	.string	"FIX_FLOOR_EXPR"
.LASF646:
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
.LASF656:
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
.LASF207:
	.string	"MODIFY_EXPR"
.LASF744:
	.string	"internal_error"
.LASF462:
	.string	"tree_identifier"
.LASF156:
	.string	"MODE_VECTOR_FLOAT"
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
.LASF84:
	.string	"long long unsigned int"
.LASF50:
	.string	"_cur_column"
.LASF160:
	.string	"IDENTIFIER_NODE"
.LASF560:
	.string	"TI_UINTHI_TYPE"
.LASF712:
	.string	"output_buffer_to_stream"
.LASF98:
	.string	"QFmode"
.LASF671:
	.string	"error_function_changed"
.LASF545:
	.string	"section_name"
.LASF698:
	.string	"output_long_unsigned_decimal"
.LASF264:
	.string	"UNLT_EXPR"
.LASF636:
	.string	"format_decoder"
.LASF183:
	.string	"LANG_TYPE"
.LASF66:
	.string	"_sch_isblank"
.LASF707:
	.string	"output_indent"
.LASF564:
	.string	"TI_INTEGER_ZERO"
.LASF43:
	.string	"_IO_backup_base"
.LASF738:
	.string	"report_error_function"
.LASF145:
	.string	"MAX_MACHINE_MODE"
.LASF34:
	.string	"_IO_read_ptr"
.LASF731:
	.string	"fatal_io_error"
.LASF611:
	.string	"itk_int"
.LASF356:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF418:
	.string	"public_flag"
.LASF488:
	.string	"string_flag"
.LASF647:
	.string	"DK_ICE"
.LASF147:
	.string	"mode_class"
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
.LASF685:
	.string	"clear_diagnostic_info"
.LASF247:
	.string	"BIT_AND_EXPR"
.LASF286:
	.string	"REALPART_EXPR"
.LASF126:
	.string	"V8HImode"
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
.LASF548:
	.string	"inlined_fns"
.LASF617:
	.string	"itk_none"
.LASF678:
	.string	"output_set_prefix"
.LASF48:
	.string	"_flags2"
.LASF624:
	.string	"SBITSIZETYPE"
.LASF105:
	.string	"QCmode"
.LASF215:
	.string	"CLEANUP_POINT_EXPR"
.LASF659:
	.string	"prefix"
.LASF666:
	.string	"cursor"
.LASF588:
	.string	"TI_UV8HI_TYPE"
.LASF185:
	.string	"REAL_CST"
.LASF70:
	.string	"_sch_isprint"
.LASF344:
	.string	"BUILT_IN_STRCHR"
.LASF400:
	.string	"BUILT_IN_VA_END"
.LASF79:
	.string	"_sch_isalnum"
.LASF498:
	.string	"reference_to"
.LASF737:
	.string	"default_print_error_function"
.LASF234:
	.string	"FIX_ROUND_EXPR"
.LASF261:
	.string	"NE_EXPR"
.LASF748:
	.string	"diagnostic_finish"
.LASF364:
	.string	"BUILT_IN_APPLY"
.LASF386:
	.string	"BUILT_IN_ISLESS"
.LASF351:
	.string	"BUILT_IN_COSF"
.LASF169:
	.string	"ENUMERAL_TYPE"
.LASF785:
	.string	"diagnostic_buffer"
.LASF112:
	.string	"CHImode"
.LASF72:
	.string	"_sch_isspace"
.LASF320:
	.string	"BUILT_IN_CREALF"
.LASF205:
	.string	"CONSTRUCTOR"
.LASF472:
	.string	"abstract_flag"
.LASF321:
	.string	"BUILT_IN_CREALL"
.LASF531:
	.string	"non_addr_const_p"
.LASF442:
	.string	"elements"
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
.LASF163:
	.string	"BLOCK"
.LASF585:
	.string	"TI_VOID_LIST_NODE"
.LASF725:
	.string	"__FUNCTION__"
.LASF753:
	.string	"trim_filename"
.LASF520:
	.string	"bit_field_flag"
.LASF371:
	.string	"BUILT_IN_PUTS"
.LASF523:
	.string	"in_system_header_flag"
.LASF80:
	.string	"_sch_isidnum"
.LASF549:
	.string	"vindex"
.LASF457:
	.string	"extra_arg"
.LASF740:
	.string	"error_with_decl"
.LASF187:
	.string	"VECTOR_CST"
.LASF18:
	.string	"unsigned int"
.LASF279:
	.string	"RTL_EXPR"
.LASF792:
	.string	"tree_node"
.LASF633:
	.string	"stream"
.LASF268:
	.string	"UNEQ_EXPR"
.LASF336:
	.string	"BUILT_IN_STRNCPY"
.LASF664:
	.string	"need_newline_p"
.LASF165:
	.string	"INTEGER_TYPE"
.LASF644:
	.string	"end_diagnostic"
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
.LASF86:
	.string	"VOIDmode"
.LASF584:
	.string	"TI_VA_LIST_TYPE"
.LASF337:
	.string	"BUILT_IN_STRCMP"
.LASF166:
	.string	"REAL_TYPE"
.LASF569:
	.string	"TI_SIZE_ONE"
.LASF720:
	.string	"output_do_printf"
.LASF303:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
